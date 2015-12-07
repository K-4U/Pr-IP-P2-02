<?php


//Naming convention:
//<cat><page>
class kavelNew extends cmsPage {

    function parse() {

        $displayName = "Kavel aanbieden";


        $this->render($displayName, 'newlot.tpl');
    }
}


?>

