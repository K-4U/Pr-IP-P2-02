<?php
include("header.php");

//Register the variables needed from GET
$varsToRegister = Array("id"=>"integer","page"=>"integer");
foreach($varsToRegister as $var=>$type){
    if(array_key_exists($var,$_GET)){
        $$var = $_GET[$var];
    }else{
        if($type == "string"){
            $$var = "";
        }elseif($type == "integer"){
            $$var = 0;
        }
    }
}

$argsRaw = Array();
include("pages/category/index.php");
$tClass = new categories($website, $user, $argsRaw, $db);
$tClass->parse($id, $page);

?>