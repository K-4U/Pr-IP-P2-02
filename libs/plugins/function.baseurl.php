<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.baseurl.php
 * Type:     function
 * Name:     baseurl
 * Purpose:  Returns base url
 * -------------------------------------------------------------
 */

function smarty_function_baseurl($params, &$smarty) {
    return baseurl($params['url']);

}

?>
