<?php


//Naming convention:
//<cat><page>
class kavelNew extends cmsPage {

    function parse() {

        $displayName = "Kavel aanbieden";
        if(!$this->user->isLoggedIn()) {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een kavel kan aanbieden.");
            $this->render('Login', 'login.tpl');
        } else {


            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("Kavel aanbieden");
            $this->render($displayName, 'newlot.tpl');
        }
    }
}


?>

