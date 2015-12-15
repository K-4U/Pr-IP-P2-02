<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.csstag.php
 * Type:     function
 * Name:     csstag
 * Purpose:  Returns a css tag
 * -------------------------------------------------------------
 */


function smarty_function_csstag($params, &$smarty) {
    return "<link rel='stylesheet' type='text/css' href='" . baseurl("css/" . $params['url']) . "' />";

}

?>
