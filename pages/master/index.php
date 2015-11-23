<?php

//Naming convention:
//<cat><page>
class page extends cmsPage {

    function parse() {

        $displayName = "";
        $this->render($displayName, '');
    }
}

?>
