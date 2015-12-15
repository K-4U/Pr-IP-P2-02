<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.image.php
 * Type:     function
 * Name:     image
 * Purpose:  Returns an image tag
 * -------------------------------------------------------------
 */

function smarty_function_image($params, &$smarty) {
    return "<img " . (array_key_exists("id", $params) ? "id=\"" . $params['id'] . "\" " : "") . "src='" . baseurl("images/" . $params['url']) . "' alt='" . (array_key_exists("alt", $params) ? $params['alt'] : "#######") . "'/>";

}

?>
