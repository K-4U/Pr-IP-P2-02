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

$dbVeiling = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], "veiling");
$dbVeiling->setType($config['SQL']['type']);

$dbVeiling->connect();

$result = $dbIn->query("SELECT ID, Name, Parent FROM Categorieen");

echo "<pre>";
echo "Fetching categories\r\n";
function getCategory($parentId = null) {

    global $dbIn;
    if($parentId == null) {
        $result = $dbIn->query("SELECT * FROM Categorieen WHERE Parent = -1 ORDER BY ID ASC");
    } else {
        $result = $dbIn->buildQuery("SELECT * FROM Categorieen WHERE Parent=%d", $parentId);
    }

    $categories = Array();
    while ($row = $dbIn->fetchAssoc($result)) {
        $row['sub'] = getCategory($row['ID']);
        $categories[] = $row;
    }

    return $categories;
}

echo "Done fetching.\r\n";

function setCategory($category) {

    global $dbOut, $categoryIds;
    $priorityNumber = 1;

    $newFormat = Array(
        "name"     => $category['Name'],
        "parent"   => $category['Parent'],
        "priority" => $category['priority']
    );
    $dbOut->insert("categories", $newFormat);

    $lastInsert = $dbOut->getLastInsertedId();
    $categoryIds[$category['ID']] = $lastInsert;
    foreach($category['sub'] as $subCategory) {
        $subCategory['priority'] = $priorityNumber;
        $priorityNumber++;
        $subCategory['Parent'] = $lastInsert;
        setCategory($subCategory);
    }
}

echo "Inserting categories\r\n";
$priorityNumber = 1;
$getCategories = getCategory();
foreach($getCategories as $category) {// root categories
    $category['priority'] = $priorityNumber;
    $priorityNumber++;
    $category['Parent'] = null;
    setCategory($category);
}

$categoryInsertTime = (date('U') - $beginTime);
echo "Done inserting. (took " . $categoryInsertTime . " seconds)\r\n\r\n";

echo "Fetching security questions.\r\n";
function getSecQuestions() {
    $secQuestionsArray = array();
    $secQuestionsArray ['question'] = 'In welke stad bent u opgegroeid?';
    $secQuestionsArray ['question'] = 'Wat is uw favoriete film?';
    $secQuestionsArray ['question'] = 'Wat is de meisjesnaam van uw moeder?';
    $secQuestionsArray ['question'] = 'Wat is de jongensnaam van uw vader?';
    $secQuestionsArray ['question'] = 'Wat is de meisjesnaam van uw moeder?';
    $secQuestionsArray ['question'] = 'Wat is de geboortestad van uw vader?';
    $secQuestionsArray ['question'] = 'Wat is de geboortestad van uw moeder?';

    return $secQuestionsArray;
}
$secQuestionsVar = getSecQuestions();
echo "Done fetching questions. \r\n";
function setSecQuestions($secQuestionsArr){
    global $dbOut;

    $secArr = Array(
//        "id" => $secQuestionsArr['id'],
        "question" => $secQuestionsArr['question']
    );
    $dbOut->insert("security_questions", $secArr);

}
echo "Inserting security questions. \r\n";
foreach($secQuestionsVar as $question){
    setSecQuestions($question);
}
$secQuestionsInsertTime = (date('U')- ($beginTime + $categoryInsertTime));
echo "Done inserting security questions. (took ". $secQuestionsInsertTime . " seconds) \r\n\r\n";

echo "Fetching users.\r\n";

function getUsers() {

    global $dbIn;
    $result = $dbIn->query("SELECT Username, Postalcode, Country FROM Users ");
    $users = $dbIn->fetchAllAssoc($result);

    return $users;
}

$usersVar = getUsers();
echo "Done fetching.\r\n";

echo "Inserting users.\r\n";
function setUsers($usersArr) {

    global $dbOut;

    $newFormat = Array(
        "firstname"         => "unknown",
        "lastname"          => "person",
        "adress_street1"    => "unknown address",
        "adress_street2"    => null,
        "adress_number"     => "123",
        "city"              => "unknown city",
        "email"             => "batch@batch.batch",
        "password"          => "batch",
        "security_question" => "1",
        "security_answer"   => "batch",
        "isseller"          => "0",
        "username"          => substr(strlen($usersArr['Username']) < 4 ? "FILL" . $usersArr['Username'] : $usersArr['Username'], 0, 12),
        "postalcode"        => substr($usersArr['Postalcode'] == null ? "0000AB" : $usersArr['Postalcode'], 0, 6),
        "country"           => $usersArr['Country'] == null ? "NL" : $usersArr['Country'],
        "birthdate"         => "01-01-1990"
    );
    $resultUsername = $dbOut->buildQuery("SELECT Username FROM Users WHERE Username=%s", $newFormat['username']);
    $usernameExist = $dbOut->getHasRows($resultUsername);
    if(!$usernameExist) {
        $dbOut->insert("users", $newFormat);
    }
}

$adminUserArr = Array(
    "firstname"         => "Ad",
    "lastname"          => "Ministrator",
    "adress_street1"    => "unknown address",
    "adress_street2"    => null,
    "adress_number"     => "123",
    "city"              => "unknown city",
    "email"             => "admin@admin.admin",
    "password"          => "ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff" /*test is admin password (deze is ssh512 gehashed en kan veranderd worden)*/,
    "security_question" => "1",
    "security_answer"   => "batch",
    "isseller"          => "1",
    "username"          => "Admin",
    "postalcode"        => "0000AB",
    "country"           => "NL",
    "birthdate"         => "01-01-1990"
);

$dbOut->insert("users", $adminUserArr);

foreach($usersVar as $user) {
    setUsers($user);
}
$usersInsertTime = ((date('U') - ($beginTime + $categoryInsertTime + $secQuestionsInsertTime)));
echo "Done inserting users. (took " . $usersInsertTime . " seconds )\r\n\r\n";

echo "Fetching objects\r\n";
function getObjects() {

    global $dbIn;
    $result = $dbIn->query("SELECT * FROM Items");
    $objects = $dbIn->fetchAllAssoc($result);

    return $objects;
}

$getObjects = getObjects();
echo "Done fetching objects\r\n";


function setObjects($objectArr) {

    global $dbOut, $dbIn, $categoryIds;

    $durationDays = Array(1, 3, 5, 7, 10);

    $description = mb_convert_encoding(htmlentities(str_replace('&', chr(1), str_replace('&nbsp', chr(2), str_replace('\'', "\'", str_replace("\"", '\"', strip_tags($objectArr['Beschrijving'])))))), "UTF-8");
    $description = str_replace(chr(1), '&amp;', $description);
    $description = str_replace(chr(2), '&nbsp', $description);
    $description = substr($description, 0, 4000);
    $newFormat = Array(
        "title"          => substr(mb_convert_encoding(htmlentities(str_replace('\'', "\'", str_replace("\"", '\"', strip_tags($objectArr['Titel'])))), "UTF-8"), 0, 60),
        "description"    => empty($description) ? "Geen" : $description,
        "start_bid"      => substr($objectArr['Prijs'] < 1 ? 1 : $objectArr['Prijs'], 0, 9),
        "payment_method" => "Contant",
        "city"           => "batch",
        "country"        => substr($objectArr['Land'], 0, 48),
        "seller"         => substr(strlen($objectArr['Verkoper']) < 4 ? "FILL" . $objectArr['Verkoper'] : $objectArr['Verkoper'], 0, 12),
        "duration"       => $durationDays[rand(0, 4)]
    );

    $userIsSeller = Array(
        "isseller" => "1"
    );

    $userSeller = Array(
      "username" => substr(strlen($objectArr['Verkoper']) < 4 ? "FILL" . $objectArr['Verkoper'] : $objectArr['Verkoper'], 0, 12),
      "bank_number" => "NL67RABO0186654979",
      "security_type" => "0",
      "creditcard_number" => "5529420350615465"
    );

    $dbOut->update("users",$userIsSeller, "username", $newFormat['seller']);
    $dbOut->insert("objects", $newFormat);
    $lastInsertedObject = $dbOut->getLastInsertedId();

    $resultUsername = $dbOut->buildQuery("SELECT Username FROM sellers WHERE Username=%s", $userSeller['username']);
    $usernameExist = $dbOut->getHasRows($resultUsername);
    if(!$usernameExist) {
        $dbOut->insert("sellers", $userSeller);
    }
    $newFormatCatObj = Array(
        "object_id"   => $lastInsertedObject,
        "category_id" => $categoryIds[$objectArr['Categorie']]

    );
    $dbOut->insert("object_in_category", $newFormatCatObj);

    $result = $dbIn->buildQuery("SELECT * FROM Illustraties WHERE ItemID = %s", $objectArr['ID']);
    $getFiles = $dbIn->fetchAssoc($result);
    $newFormatPic = Array(
        "filename" => substr($getFiles['IllustratieFile'], 0, 37),
        "objectid" => $lastInsertedObject
    );

    if(!empty($newFormatPic['filename'])) {
        $dbOut->insert("files", $newFormatPic);
    }
}

$objectVar = getObjects();
echo "Inserting objects\r\n";
foreach($objectVar as $object) {
    setObjects($object);
}

$objectsInsertTime = (date('U') - ($beginTime + $categoryInsertTime + $secQuestionsInsertTime + $usersInsertTime));
echo "Done inserting objects. (took " . $objectsInsertTime . " seconds)\r\n\r\n";

echo "Fetching minimal bids.\r\n";
function getMinimalBids(){
    //Create array with minimal bids
    $minimalBids = array();
    $minimalBids['upper_limit'] = 50;
    $minimalBids['upper_limit'] = 500;
    $minimalBids['upper_limit'] = 1000;
    $minimalBids['upper_limit'] = 5000;
    $minimalBids['upper_limit'] = 1000000;


    $minimalBids['raise'] = 0.50;
    $minimalBids['raise'] = 1;
    $minimalBids['raise'] = 5;
    $minimalBids['raise'] = 10;
    $minimalBids['raise'] = 50;

    return $minimalBids;
}
$minBidVar = getMinimalBids();
echo "Done fetching minimal bids.\r\n";

function setMinimalBids($minBidArr){
    global $dbOut;

    $bidArr = Array(
        "upper_limit" => $minBidArr['upper_limit'],
        "raise" => $minBidArr['raise']
    );

    $dbOut->insert("minimal_bids", $bidArr);
}
echo "Inserting minimal bids.\r\n";
foreach($minBidVar as $bid){
    setMinimalBids($bid);
}
$minBidInsertTime = (date('U')- ($beginTime + $categoryInsertTime + $secQuestionsInsertTime + $usersInsertTime + $objectsInsertTime));
echo "Done inserting minimal bids. (took " . $minBidInsertTime . " seconds)\r\n\r\n";

echo "Fetching ranks.\r\n";
function getRanks(){

    $ranks = array();
    $ranks['username'] = 'admin';
    $ranks['customer_service'] = 1;
    $ranks['administrator'] = 1;
    $ranks['administrator'] = 1;

    return $ranks;
}
$ranksVar = getRanks();
echo "Done fetching ranks.\r\n";
function setRanks($ranksArr){
    global $dbOut;

    $ranksArr = Array(
        "username" => $ranksArr['username'],
        "customer_service" => $ranksArr['customer_service'],
        "administrator" => $ranksArr['administrator'],
        "manager" => $ranksArr['manager']
    );

    $dbOut->insert("ranks", $ranksArr);
}
echo "Inserting ranks.\r\n";
foreach($ranksVar as $rank){
    setRanks($rank);
}
$ranksInsertTime = (date('U')- ($beginTime + $categoryInsertTime + $secQuestionsInsertTime + $usersInsertTime + $objectsInsertTime + $minBidInsertTime));
echo "Done inserting ranks. (took " . $ranksInsertTime . " seconds )\r\n\r\n";
$endTime = date('U');

echo "Took " . ($endTime - $beginTime) . " seconds.";
echo "</pre>";
?>