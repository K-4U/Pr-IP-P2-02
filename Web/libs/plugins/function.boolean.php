<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.boolean.php
 * Type:     function
 * Name:     boolean
 * Purpose:  Just makes nice ticks
 * -------------------------------------------------------------
 */

function smarty_function_boolean($params, &$smarty) {
    if($params['b']) {
        return "<img src='/icons/tick.png' /><span class='hiddenSpan'>Ja</span>";
    } else {
        return "<img src='/icons/cross.png' /><span class='hiddenSpan'>Nee</span>";
    }
}

?>
