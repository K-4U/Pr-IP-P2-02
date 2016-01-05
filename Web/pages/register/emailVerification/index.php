<?php

Class registerEmailVerification extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            header("location: " . baseurl(""));
        } else {
            $_POST = removeHTMLFromPOST($_POST);
            $emailCode = md5($_POST['email'] . date("U"));
            $_POST['emailCode'] = $emailCode;
            if(isset($_POST['saveEmail'])) {
                if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === true) {
                    $_POST['email'] = null;
                    $this->website->assign("emailError", "Ingevulde email was niet valide, ga naar de hoofdpagina en probeer opnieuw te registreren.");
                } else {
                    $emailUsed = $this->db->buildQuery("SELECT email FROM users WHERE email = %s", $_POST['email']);
                    If($this->db->getHasRows($emailUsed) == 0) {
                        $this->website->assign("email", $_POST['email']);
                    $_SESSION['emailCode'] = $_POST['emailCode'];
                    $this->website->assign("emailVerificationCode", $_POST['emailVerificationCode']);
                        sendMail($_POST['email'], "Uw verificatie code is: " . $emailCode, "Eenmaal andermaal verificatie");
                    } else {
                        $this->website->assign("emailError", "Uw email is al in gebruik genomen.");
                        $emailIsAlreadyUsed = true;
                    }
                }
            }
            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("Registratie");
            $this->addToBreadcrumbs("Email Verificatie");

            if($emailIsAlreadyUsed == false){
                $this->render("emailVerification", "emailVerification.tpl");
            }else{
                header("location: " . baseurl(""));
            }
        }
    }
}

?>