<?php


//Naming convention:
//<cat><page>
class staticAbout extends cmsPage {

    function parse() {

        $displayName = "Vacatures";


        $this->render($displayName, 'vacancies.tpl');
    }
}

?>
