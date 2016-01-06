<?php
include("config.php");
require("libs/classes/db.class.php");
global $dbIn, $dbOut, $categoryIds;
$beginTime = date('U');
$categoryIds = Array();

$dbIn = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], "veiling_other");
$dbIn->setType($config['SQL']['type']);

$dbIn->connect();

$dbOut = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], "veiling_batch");
$dbOut->setType($config['SQL']['type']);

$dbOut->connect();

$result = $dbIn->query("SELECT ID, Name, Parent FROM Categorieen");

echo "<pre>";
echo "Fetching categories\r\n";
function getCategory($parentId = null){
    global $dbIn;
    if($parentId == null){
        $result = $dbIn->query("SELECT * FROM Categorieen WHERE Parent = -1 ORDER BY ID ASC");
    }else{
        $result = $dbIn->buildQuery("SELECT * FROM Categorieen WHERE Parent=%d", $parentId);
    }

    $categories = Array();
    while($row = $dbIn->fetchAssoc($result)){
        $row['sub'] = getCategory($row['ID']);
        $categories[] = $row;
    }
    return $categories;
}

echo "Done fetching.\r\n";

function setCategory($category){
    global $dbOut, $categoryIds;
    $priorityNumber = 1;

    $newFormat = Array(
        "name" => $category['Name'],
        "parent" => $category['Parent'],
        "priority" => $category['priority']
    );
    $dbOut->insert("categories", $newFormat); //uncomment this to get the categories insert running again!

    $lastInsert = $dbOut->getLastInsertedId();
    $categoryIds[$category['ID']] = $lastInsert;
    foreach($category['sub'] as $subCategory){
        $subCategory['priority'] = $priorityNumber;
        $priorityNumber ++;
        $subCategory['Parent'] = $lastInsert;
        setCategory($subCategory);
    }
}

echo "Inserting categories\r\n";
$priorityNumber = 1;
$getCategories = getCategory();
foreach($getCategories as $category){// root categories
    $category['priority'] = $priorityNumber;
    $priorityNumber ++;
    $category['Parent'] = null;
    setCategory($category);
}

$categoryInsertTime = (date('U')- $beginTime);
echo "Done inserting. (took ". $categoryInsertTime ." seconds)\r\n\r\n";

echo "Fetching users.\r\n";

function getUsers(){
    global $dbIn;
    $result = $dbIn->query("SELECT Username, Postalcode, Country FROM Users ");
    $users = $dbIn->fetchAllAssoc($result);
    return $users;
}

$usersVar = getUsers();
echo "Done fetching.\r\n";

echo "Inserting users.\r\n";
function setUsers($usersArr){
    global $dbOut;

    $newFormat = Array(
        "firstname" => "unknown",
        "lastname" => "person",
        "adress_street1" => "unknown address",
        "adress_street2" => null,
        "adress_number" => "123",
        "city" => "unknown city",
        "email" => "batch@batch.batch",
        "password" => "batch",
        "security_question" => "1",
        "security_answer" => "batch",
        "isseller" => "1",
        "username" => substr(strlen($usersArr['Username']) < 4 ? "FILL" . $usersArr['Username'] : $usersArr['Username'], 0, 12),
        "postalcode" => substr($usersArr['Postalcode'] == null ? "0000AB": $usersArr['Postalcode'], 0, 6),
        "country" => $usersArr['Country'],
        "birthdate" => "01-01-1990"
    );
    $resultUsername = $dbOut->buildQuery("SELECT Username FROM Users WHERE Username=%s", $newFormat['username']);
    $usernameExist = $dbOut->getHasRows($resultUsername);
    if(!$usernameExist) {
        $dbOut->insert("users", $newFormat); //uncomment this to get the users insert running again!
    }
}

foreach($usersVar as $user){
    setUsers($user);
}
$usersInsertTime = ((date('U') - $beginTime) - $categoryInsertTime);
echo "Done inserting users. (took " . $usersInsertTime . " seconds )\r\n\r\n";

echo "Fetching objects\r\n";
function getObjects(){
    global $dbIn;
    $result = $dbIn->query("SELECT * FROM Items");
    $objects = $dbIn->fetchAllAssoc($result);
    return $objects;
}
$getObjects = getObjects();
echo "Done fetching objects\r\n";

function setObjects($objectArr){
    global $dbOut, $dbIn, $categoryIds;

    $newFormat = Array(
        "title" => substr(strip_tags($objectArr['Titel']), 0, 60),
        "description" => substr(strip_tags($objectArr['Beschrijving']), 0, 4000),
        "start_bid" => $objectArr['Prijs'],
        "payment_method" => "Contant",
        "city" => "batch",
        "country" => $objectArr['Land'],
        "seller" => substr(strlen($objectArr['Verkoper']) < 4 ? "FILL" . $objectArr['Verkoper'] : $objectArr['Verkoper'], 0, 12),
        "duration" => "3"
    );
    $dbOut->insert("objects", $newFormat);
    $lastInsertedObject = $dbOut->getLastInsertedId();

    $newFormatCatObj = Array(
        "object_id" => $lastInsertedObject,
        "category_id" => $categoryIds[$objectArr['Categorie']]

    );
    $dbOut->insert("object_in_category", $newFormatCatObj);

    $result = $dbIn->buildQuery("SELECT * FROM Illustraties WHERE ItemID = %s", $objectArr['ID']);
    $getFiles = $dbIn->fetchAssoc($result);
    $newFormatPic = Array(
        "filename" => substr($getFiles['IllustratieFile'], 0, 37),
        "objectid" => $lastInsertedObject
    );
    $dbOut->insert("files", $newFormatPic);
}
$objectVar = getObjects();
echo "Inserting objects\r\n";
foreach($objectVar as $object){
    setObjects($object);
}
$objectsInsertTime = ((date('U') - $beginTime) - $usersInsertTime);
echo "Done inserting objects. (took ". $objectsInsertTime . " seconds)\r\n\r\n";

$endTime = date('U');

echo "Took " . ($endTime - $beginTime) . " seconds.";
echo "</pre>";
?>