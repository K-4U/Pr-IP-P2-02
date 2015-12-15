<?php
/*
* Smarty plugin
* -------------------------------------------------------------
* File:     function.nl2br.php
* Type:     function
* Name:     nl2br
* Purpose:  Returns 'formatted' text
* -------------------------------------------------------------
*/

function smarty_function_nl2br($params, &$smarty) {
    return nl2br($params['text']);
}

?>