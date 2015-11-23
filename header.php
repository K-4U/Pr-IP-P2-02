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
include("libs/functions.php");

ini_set('display_errors', 1);
error_reporting(E_ALL & ~E_NOTICE);

global $start;

$time = microtime();
$time = explode(' ', $time);
$time = $time[1] + $time[0];
$start = $time;

require("libs/Smarty.class.php");
require("libs/classes/user.class.php");
require("libs/classes/cmsPage.class.php");
require("libs/classes/db.class.php");

$website = new Smarty;
$db = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], $config['SQL']['db']);
$db->setType($config['SQL']['type']);

$db->connect();

$user = new user($db);

if($user->isLoggedIn()) {
    $website->assign("user", $user->getInfo());
    //Locale info:
    $monthNames = Array();
    $monthNames["01"] = "Januari";
    $monthNames["02"] = "Februari";
    $monthNames["03"] = "Maart";
    $monthMames["04"] = "April";
    $monthNames["05"] = "Mei";
    $monthNames["06"] = "Juni";
    $monthNames["07"] = "Juli";
    $monthNames["08"] = "Augustus";
    $monthNames["09"] = "September";
    $monthNames["10"] = "Oktober";
    $monthNames["11"] = "November";
    $monthNames["12"] = "December";

    $website->assign("monthNames", $monthNames);
}
?>
