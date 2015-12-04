<?php
global $config;

$config = Array(
    "SQL"   => Array(
        "host" => "localhost",
        "user" => "",
        "pass" => "",
        "db"   => "",
        "type" => "sqlsrv" //See libs/classes/db.class.php for the possible entries here
    ),
    "email" => Array(
        "fromName" => "EenmaalAndermaal",
        "fromMail" => ""
    ),
    "misc"  => Array(
        "htaccess" => true, //If you're using the provided .htaccess file, keep this at true. Otherwise change to false.
        "baseurl"  => "/" //This is the URL that the website runs at. Change this if you run it in a subdir or things won't work!
    )
);

require('libs/FirePHPCore/fb.php');
ob_start();

?>