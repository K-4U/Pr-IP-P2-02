<?php

Class usersCPSellerCode extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            if($this->user->isSeller()) {
                $errorMsg = "U bent al een verkoper";
                $pageToShow = -1;
            } else {
                $pageToShow = 0;
                $sql = "SELECT username FROM verifications WHERE date_sent IS NOT NULL AND username=%s";
                $userResult = $this->db->buildQuery($sql, $this->user->getName());
                if($this->db->getHasRows($userResult)) {
                    if(isset($_POST ['submit'])) {
                        if(strlen($_POST['authentication']) > 0) {
                            $auth = $_POST['authentication'];
                            $sqlAuthCheck = "SELECT verification_key FROM verifications WHERE verification_key=%s";
                            $authCheck = $this->db->buildQuery($sqlAuthCheck, $auth);
                            if($this->db->getHasRows($authCheck)) {
                                $updateArray['isseller'] = (boolean)true;
                                $this->db->update('users', $updateArray, 'username', $this->user->getName());
                                $pageToShow = 1;
                            } else {
                                $errorMsg = "Uw verificatiecode klopt niet.";
                            }
                        } else {
                            $errorMsg = 'U heeft geen verificatiecode ingevuld.';
                        }
                    }
                } else {
                    $errorMsg = "Er is nog geen verificatiecode naar u gestuurd.";
                }
            }
            $this->website->assign("page", $pageToShow);
            $this->website->assign("errorMsg", $errorMsg);

            $this->addToBreadcrumbs("Home", baseurl("/"));
            $this->addToBreadcrumbs("UCP", baseurl("Users/CP"));
            $this->addToBreadcrumbs("Authenticatiecode invoeren");

            $this->render("SellerCode", "users/sellerCode.tpl");
        }else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u uw code kunt ingeven.");
            $this->render("login", "users/login.tpl");
        }
    }
}


?>