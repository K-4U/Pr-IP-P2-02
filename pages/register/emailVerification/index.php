<?php

Class registerEmailVerification extends cmsPage {

    function parse(){

        $emailCode= md5($_POST['email'].date("U"));
        $_SESSION['emailCode'] = $emailCode;
        sendMail($_POST['email'], "Uw verificatie code is: ".$emailCode, "Eenmaal andermaal verificatie");
        $this->addToBreadcrumbs("Home", baseurl("/"));
        $this->addToBreadcrumbs("Register");
        $this->addToBreadcrumbs("EmailVerification");
        $this->render("emailVerification","emailVerification.tpl");

    }

}

?>