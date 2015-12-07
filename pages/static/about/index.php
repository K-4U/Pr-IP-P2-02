<?php


//Naming convention:
//<cat><page>
class staticAbout extends cmsPage {

    function parse() {

        $displayName = "about";


        $this->render($displayName, 'about.tpl');
    }
}

?>
