<?php


//Naming convention:
//<cat><page>
class kavelItem extends cmsPage {

    function parse() {

        $displayName = "Vacatures";
        
        //Haal  eerst alle data op


        //Zet dat in variabele
        $temp = "string";

        //zet dat op de pagina
        $this->website->assign("description", $temp);


        //render
        $this->render($displayName, 'kavelItem.tpl');

    }



}


?>

