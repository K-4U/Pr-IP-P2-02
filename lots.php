<?php
include("header.php");

//Register the variables needed from GET
$varsToRegister = Array("ac"=>"string", "args"=>"string");
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
//Parse args:
$argsRaw = explode('/', $args);

if(file_exists('pages/kavel/' . strtolower($ac) . '/index.php')){
    include('pages/kavel/' . strtolower($ac) . '/index.php');
    $className = "kavel" . ucfirst($ac);

    $tClass = new $className($website, $user, $argsRaw, $db);
    $tClass->parse();
}else{
    //Return 404;
    echo "404 not found.";
}

?>
