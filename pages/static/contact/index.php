<?php


//Naming convention:
//<cat><page>
class staticContact extends cmsPage {

    function parse() {

        $displayName = "contact";

        $this->addToBreadcrumbs("Home", baseurl(""));
        $this->addToBreadcrumbs("Contact");


        $this->render($displayName, 'contact.tpl');
    }
}

?>
