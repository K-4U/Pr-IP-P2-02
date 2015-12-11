<?php
/*******************
 * Project: Digital Portfolio
 * Users.php
 * Handles all the actions for the users
 *
 * Copyright 2005 - 2013 K-4U
 * 9-11-2013
 ******************/
include("header.php");



//Register the variables needed from GET
$varsToRegister = Array("ac"=>"string", "args"=>"string","cp"=>"boolean");
foreach($varsToRegister as $var=>$type){
    if(array_key_exists($var,$_GET)){
        $$var = $_GET[$var];
    }else{
        if($type == "string"){
            $$var = "";
        }elseif($type == "integer"){
            $$var = 0;
        }elseif($type == "boolean"){
            $$var = false;
        }
    }
}

//Parse args:
$argsRaw = explode('/', $args);
if($cp){
    $ac = "cp/" . $ac;
}

if(file_exists('pages/users/' . strtolower($ac) . '/index.php')){
    include('pages/users/' . strtolower($ac) . '/index.php');
    $className = "users" . ucfirst($ac);

    $tClass = new $className($website, $user, $argsRaw, $db);
    $tClass->parse();
}else{
    //Return 404;
    echo "404 not found.(" . $ac . ")";
}

?>
