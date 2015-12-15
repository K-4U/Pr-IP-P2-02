<?php
/*******************
 * Main index file
 * Copyright 2005 - 2013 K-4U
 * 13-10-2013
 *******************/

include("header.php");


//Register the variables needed from GET
$varsToRegister = Array("ac" => "string", "args" => "string");
foreach($varsToRegister as $var => $type) {
    if(array_key_exists($var, $_GET)) {
        $$var = $_GET[$var];
    } else {
        if($type == "string") {
            $$var = "";
        } elseif($type == "integer") {
            $$var = 0;
        }
    }
}

if($user->isLoggedIn()) {

}

//Parse args:
$argsRaw = explode('/', $args);

if(empty(strtolower($ac))) {
    $ac = "main";
}

if(file_exists('pages/static/' . strtolower($ac) . '/index.php')) {
    include('pages/static/' . strtolower($ac) . '/index.php');
    $className = "static" . ucfirst($ac);

    $tClass = new $className($website, $user, $argsRaw, $db);
    $tClass->parse();
} else {
    //Return 404;
    echo "404 not found ($ac).";
}

?>

