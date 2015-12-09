<?php
/*****************
 * Functions.php
 * Holds some handy functions.
 * Author: Koen Beckers
 * Copyright 2005 - 2015 K-4U
 * Date: 21-9-2015
 *****************/
require_once("config.php");


/**
 * @param $dir
 * @return string
 */
function baseurl($dir) {

    global $config;

    if($config['misc']['htaccess']) {
        return $config['misc']['baseurl'] . $dir;
    } else {
        //Let's see..
        //Explode the /:
        $dirParts = explode("/", $dir);

        if($dirParts[0] == "Static") {
            $dir = "index.php?ac=" . $dirParts[1];
        }
        if($dirParts[0] == "Kavel") {
            $dir = "lots.php?ac=" . $dirParts[1];
            if(count($dirParts) == 3) {
                $dir .= "&amp;args=" . $dirParts[2];
            }
        }
        if($dirParts[0] == "Users") {
            $dir = "users.php?ac=" . $dirParts[1];
            if(count($dirParts) == 3) {
                $dir .= "&amp;args=" . $dirParts[2];
            }
        }
        if($dirParts[0] == "Image") {
            $dir = "image.php?size=" . $dirParts[1];
            if(count($dirParts) == 3){
                $dir .= "&amp;id=" . $dirParts[2];
            }
        }

        return $config['misc']['baseurl'] . $dir;
    }

}


/**
 * @param $text
 * @param $word
 * @return mixed
 */
function highlightWord($text, $word) {

    //if($word != "&"){
    $text = str_replace("&amp;", "&&", $text);
    //}
    $pos1 = 0;
    $max = 2;
    $i = 0;
    while ($pos1 !== false && $pos1 >= 0 && $i <= $max) {
        $pos1 = stripos($text, $word, $pos1 + $i);
        if($i == 0) $i++;
        if($pos1 !== false) {
            $prefix = substr($text, 0, $pos1);
            $subfix = substr($text, $pos1 + strlen($word));
            $result = substr($text, $pos1, strlen($word));
            $text = $prefix . "<b>" . $result . "</b>" . $subfix;
            $pos1 = stripos($text, $subfix);
        }
    }

    return str_replace("<b>&</b>&", "<b>&amp;</b>", $text);
}


/**
 * @param $to
 * @param $body
 * @param $subject
 */
function sendMail($to, $body, $subject) {

    global $config;
    $headers = 'From: ' . $config['email']['fromName'] . ' <' . $config['email']['fromMail'] . ">\r\n";
    $headers .= "Reply-to: " . $config['email']['fromMail'] . "\r\n";
    $headers .= "X-Mailer: PHP/" . phpversion() . "\r\n";
    $headers .= "MIME-Version: 1.0 \r\n";
    $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";

    mail($to, $subject, $body, $headers);
}

/**
 * @param $msg
 * @return string
 */
function bb2html($msg) {

    // Patterns
    $pat = array();
    $pat[] = '/\[url\](.*?)\[\/url\]/';         // URL Type 1
    $pat[] = '/\[url=(.*?)\](.*?)\[\/url\]/';   // URL Type 2
    $pat[] = '/\[b\](.*?)\[\/b\]/';
    $pat[] = '/\[i\](.*?)\[\/i\]/';
    // ... more search patterns here

    // Replacements
    $rep = array();
    $rep[] = '<a href="$1">$1</a>';             // URL Type 1
    $rep[] = '<a href="$1">$2</a>';             // URL Type 2
    $rep[] = '<b>$1</b>';
    $rep[] = '<i>$1</i>';


    $msg = preg_replace($pat, $rep, $msg);

    return stripslashes(utf8_encode($msg));
}


/**
 * @param        $str
 * @param        $vars
 * @param string $char
 * @return mixed
 */
function sprintf3($str, $vars, $char = '%') {

    $tmp = array();
    foreach($vars as $k => $v) {
        $tmp[$char . $k . $char] = $v;
    }

    return str_replace(array_keys($tmp), array_values($tmp), $str);
}

/**
 * Get either a Gravatar URL or complete image tag for a specified email address.
 *
 * @param string $email The email address
 * @param string $s Size in pixels, defaults to 80px [ 1 - 2048 ]
 * @param string $d Default imageset to use [ 404 | mm | identicon | monsterid | wavatar ]
 * @param string $r Maximum rating (inclusive) [ g | pg | r | x ]
 * @param bool $img True to return a complete IMG tag False for just the URL
 * @param array $atts Optional, additional key/value attributes to include in the IMG tag
 * @return String containing either just a URL or a complete image tag
 * @source http://gravatar.com/site/implement/images/php/
 */
function get_gravatar( $email, $s = 80, $d = 'mm', $r = 'g', $img = false, $atts = array() ) {
    $url = 'https://www.gravatar.com/avatar/';
    $url .= md5( strtolower( trim( $email ) ) );
    $url .= "?s=$s&amp;d=$d&amp;r=$r";
    if ( $img ) {
        $url = '<img src="' . $url . '"';
        foreach ( $atts as $key => $val )
            $url .= ' ' . $key . '="' . $val . '"';
        $url .= ' />';
    }
    return $url;
}


/**
 * Fetches the objects given in $result
 * @param $result
 * @return array
 */
function parseObjects($result) {
    global $db;

    $objects = Array();
    while ($row = $db->fetchAssoc($result)) {
        //Fetch latest bid
        $bidResult = $db->buildQuery("SELECT TOP 1 * FROM bids WHERE objectid=%d ORDER BY bidvalue DESC", $row['id']);
        if($db->getHasRows($bidResult)) {
            $row['currentBid'] = $db->fetchAssoc($bidResult)['bidvalue'];
        } else {
            $row['currentBid'] = $row['start_bid'];
        }

        $imageResult = $db->buildQuery("SELECT TOP 1 filename FROM files WHERE objectid=%d", $row['id']);
        if($db->getHasRows($imageResult)) {
            $row['image'] = baseurl("images/uploads/" . $db->fetchAssoc($imageResult)['filename']);
        } else {
            $row['image'] = "https://placehold.it/150x110";
        }

        $row['timeRemaining'] = $row['end_moment']->getTimeStamp() - time();
        $objects[] = $row;
    }

    return $objects;
}

/**
 * Fetches the category given by $parentId and its subs
 * @param null $parentId
 * @return array
 */
function getCategory($parentId = null){
    global $db;

    if($parentId == null){
        $result = $db->query("SELECT * FROM categories WHERE parent is NULL");
    }else{
        $result = $db->buildQuery("SELECT * FROM categories WHERE parent=%d", $parentId);
    }

    $categories = Array();
    while($row = $db->fetchAssoc($result)){

        $row['sub'] = getCategory($row['id']);
        $categories[] = $row;
    }
    return $categories;
}

function getCategoryFromBottom(&$array, $childId){
    global $db;

    $category = $db->fetchAssoc($db->buildQuery("SELECT id,name, parent FROM categories WHERE id=%i", $childId));

    if($category['parent'] != null){
        getCategoryFromBottom($array, $category['parent']);
    }
    if($category['name'] == null){
        return;
    }
    $array[] = $category;
}

?>
