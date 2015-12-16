<?php

class usersCPsellerRequest extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $sql = "SELECT username FROM sellers WHERE username=%s";
            $userResult = $this->db->buildQuery($sql, $this->user->getName());
            if($this->db->getHasRows($userResult)) {
                $errorMsg = "U bent al een verkoper of er is al een verzoek verstuurd";
                $pageToShow = -1;

            } else {
                $pageToShow = 0;
                //Page 0 is default.
//            && isset($_POST['verificationType']) && isset($_POST['banknumber']
                if(isset($_POST ['submit_1'])) {
                    if(strlen($_POST['banknumber']) > 0) {
                        $_SESSION['bank_number'] = $_POST['banknumber'];
                    } else {
                        $errorMsg = 'Uw banknummer klopt niet';
                        $pageToShow = 0;
                    }
                    $_SESSION['security_type'] = $_POST['verificationType'];
                    if(isset($_SESSION['bank_number']) AND isset($_SESSION['security_type'])) {
                        if(($_POST['verificationType']) == 0)
                            $pageToShow = 1;
                        else {
                            $pageToShow = 2;
                        }
                    } else {
                        $errorMsg = "U bent vergeten een verificatie optie te kiezen.";
                    }
                } else {
                    $userInfoArray = array();
                    $userLetterInfo = array();
                    if(isset($_SESSION['bank_number']) AND isset($_SESSION['security_type'])) {
                        if(!preg_match('/[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}/', $_SESSION['bank_number'])) {
                            $errorMsg = "Uw IBAN klopt niet. Controleer of uw IBAN de correcte tekens bevat en of alle spaties verwijderd zijn.";
                        }

                    }
                    if(isset($_POST['submit_2'])) {
                        if(preg_match('/^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$/', $_POST['creditcard'])) {
                            $userInfoArray['username'] = $this->user->getName();
                            $userInfoArray['bank_number'] = str_replace(" ", "", $_SESSION['bank_number']);
                            $userInfoArray['security_type'] = (boolean)$_SESSION['security_type'];
                            $userInfoArray['creditcard_number'] = $_POST['creditcard'];
                            $pageToShow = 3;

                            unset($_SESSION['security_type']);
                            unset($_SESSION['bank_number']);

                            $this->db->insert("sellers", $userInfoArray);
                        } else {
                            $errorMsg = "Uw creditcard nummer klopt niet.";
                            $pageToShow = 1;
                        }
                    }
                    if(isset($_POST['submit_3'])) {
                        $userInfoArray['username'] = $this->user->getName();
                        $userInfoArray['bank_number'] = str_replace(" ", "", $_SESSION['bank_number']);
                        $userInfoArray['security_type'] = (boolean)$_SESSION['security_type'];
                        $userLetterInfo['username'] = $this->user->getName();
                        $userLetterInfo['verification_key'] = substr(md5($this->user->getName() . date('U')), 1, 10);
                        $pageToShow = 3;

                        unset($_SESSION['security_type']);
                        unset($_SESSION['bank_number']);

                        $this->db->insert("sellers", $userInfoArray);
                        $this->db->insert("verifications", $userLetterInfo);
                        var_dump($this->db->getLastError());
                    }
                }
            }

            $this->website->assign("page", $pageToShow);
            $this->website->assign("errorMsg", $errorMsg);
            $this->render("sellerRequest", "users/sellerRequest.tpl");
        } else {

            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een verkopersaccount kunt aanmaken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>