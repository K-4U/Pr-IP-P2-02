<?php
/*****************
 * header.php
 * Has most of the standard functions and includes.
 * This file will be included for every PHP page.
 * Author: Koen Beckers
 * Copyright 2005 - 2013 K-4U
 * Date: 13-10-2013
 *****************/
include("config.php");
require("libs/classes/db.class.php");
global $dbIn, $dbOut;

$dbIn = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], "veiling_other");
$dbIn->setType($config['SQL']['type']);

$dbIn->connect();

$dbOut = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], "veiling_batch");
$dbOut->setType($config['SQL']['type']);

$dbOut->connect();

$result = $dbIn->query("SELECT ID, Name, Parent FROM Categorieen");
$hoi = $dbIn->fetchAssoc($result);
//var_dump($hoi);

//ORDER BY priority

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

$hoihoi = getCategory();
echo "<pre>";
var_dump($hoihoi);
echo "</pre>";
//foreach(){
//
//    $idGiven;
//    $priorityGiven;
//    $idOld;
//
//
//}

//$countResult = $this->db->buildQuery("SELECT COUNT(id) AS c FROM objects WHERE title LIKE '%%s%' OR description LIKE '%%s%'",$query, $query);
//$c = $this->db->fetchAssoc($countResult)['c'];
//
//$sql = "SELECT id,title,end_moment,start_bid FROM objects WHERE title LIKE '%%s%' OR description LIKE '%%s%'";
//$result = null;
//$maxPerPage = 18;
//if($c > $maxPerPage){
//    if($p > 0){
//        $fo = $p * $maxPerPage;
//    }else{
//        $fo = 0;
//    }
//    $fe = $fo + $maxPerPage;
//    $sql .= " OFFSET %i ROWS FETCH NEXT %i ROWS ONLY;";
//    $result = $this->db->buildQuery($sql, $query, $query, $fo, $fe);
//    $this->website->assign("paginationNeeded", true);
//    $this->website->assign("maxPages", ($c / $maxPerPage)-1);
//}else{
//    $result = $this->db->buildQuery($sql, $query, $query);
//}

?>