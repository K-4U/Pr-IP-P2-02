<?php

Class registerInfo extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            header("location: " . baseurl(""));
        } else {
            if(isset($_POST['validateCode'])) {
                if($_SESSION['emailCode'] == $_POST['emailVerificationCode']) {

                    $sqlQuestion = "SELECT id, question FROM security_questions";

                    $questionResult = $this->db->query($sqlQuestion);

                    $questions = Array();
                    $questions = $this->db->fetchAllAssoc($questionResult);
                    $this->website->assign("questions", $questions);

                    $this->addToBreadcrumbs("Home", baseurl("/"));
                    $this->addToBreadcrumbs("Register");
                    $this->addToBreadcrumbs(Info);
                    $this->render("info","info.tpl");
                } else {
                    $wrongCode = "De validatie code komt niet overeen met de gestuurde code, probeer opnieuw te registreren.";
                    $this->website->assign("wrongCode", $wrongCode);
                    $this->addToBreadcrumbs("Home", baseurl("/"));
                    $this->addToBreadcrumbs("Register");
                    $this->addToBreadcrumbs(Info);
                    $this->render("info","info.tpl");

                }
            }
        }
    }
}

?>