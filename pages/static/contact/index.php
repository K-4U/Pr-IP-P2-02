<?php


//Naming convention:
//<cat><page>
class staticContact extends cmsPage {

    function parse() {

        $displayName = "contact";


        $this->render($displayName, 'contact.tpl');
    }
}

?>
