<?php


if($_SERVER['HTTP_USER_AGENT'] == "eenmaalAndermaal-database") {
    include("config.php");
    include("libs/classes/db.class.php");
    include("libs/classes/user.class.php");
    global $config;

    $db = new db($config['SQL']['host'], $config['SQL']['user'], $config['SQL']['pass'], $config['SQL']['db']);
    $db->setType($config['SQL']['type']);

    $db->connect();

    $user = new user($db);

    echo $user->doLogin($_POST['username'], $_POST['password']);
} else {
    echo "NOP";
}

?>
