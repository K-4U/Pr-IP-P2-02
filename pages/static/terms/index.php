<?php


//Naming convention:
//<cat><page>
class staticTerms extends cmsPage {

    function parse() {

        $displayName = "terms";

        $this->addToBreadcrumbs("Home", baseurl(""));
        $this->addToBreadcrumbs("Terms");


        $this->render($displayName, 'terms.tpl');
    }
}

?>
