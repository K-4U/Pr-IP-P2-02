<?php

Class registerEmailVerification extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            header("location: " . baseurl(""));
        } else {
            $emailCode = md5($_POST['email'] . date("U"));
            $_SESSION['emailCode'] = $emailCode;
            echo $_SESSION['emailCode'];
            if(isset($_POST ['saveEmail'])) {
                if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === true) {
                    $_POST['email'] = null;
                    $this->website->assign("emailError", "Ingevulde email was niet valide, ga naar de hoofdpagina en probeer opnieuw te registreren.");
                } else {

                    $this->website->assign("email",$_POST['email']);
                    sendMail($_POST['email'], "Uw verificatie code is: " . $emailCode, "Eenmaal andermaal verificatie");
                }
            }
            $this->addToBreadcrumbs("Home", baseurl("/"));
            $this->addToBreadcrumbs("Register");
            $this->addToBreadcrumbs("EmailVerification");

            $this->render("emailVerification", "emailVerification.tpl");

        }
    }
}

?>