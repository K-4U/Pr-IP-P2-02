<?php


//Naming convention:
//<cat><page>
class staticVacancies extends cmsPage {

    function parse() {

        $displayName = "Vacatures";


        $this->render($displayName, 'vacancies.tpl');
    }
}

?>
