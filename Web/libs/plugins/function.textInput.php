<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.textInput.php
 * Type:     function
 * Name:     textInput
 * Purpose:  Returns an input tag
 * -------------------------------------------------------------
 */

function smarty_function_textInput($params, &$smarty) {
    return "<input type=\"text\" id=\"" . str_replace("[", "_", str_replace("]", "", $params['id'])) . "\" name=\"" . $params['id'] . "\" />";
}

?>
