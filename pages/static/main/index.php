<?php


//Naming convention:
//<cat><page>
class staticMain extends cmsPage {

    function parse() {

        $displayName = "Hoofdpagina";


        $this->render($displayName, 'index.tpl');
    }
}

?>
