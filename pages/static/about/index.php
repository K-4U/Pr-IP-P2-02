<?php


//Naming convention:
//<cat><page>
class staticAbout extends cmsPage {

    function parse() {

        $displayName = "about";
        $this->addToBreadcrumbs("Home", baseurl(""));
        $this->addToBreadcrumbs("Over ons");

        $this->render($displayName, 'about.tpl');
    }
}

?>
