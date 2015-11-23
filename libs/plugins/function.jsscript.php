<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.jsscript.php
 * Type:     function
 * Name:     jsscript
 * Purpose:  Returns a script tag
 * -------------------------------------------------------------
 */

function smarty_function_jsscript($params, &$smarty) {
    return "<script type='text/javascript' src='" . baseurl("js/" . $params['url']) . "'></script>";

}

?>
