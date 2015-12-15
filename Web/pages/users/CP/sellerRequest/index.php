<?php

class usersCPsellerRequest extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $pageToShow = 0;
            //Page 0 is default.
            if(isset($_POST ['submit_1']) && isset($_POST['verificationType']) && isset($_POST['banknumber'])) {
                if((int)$_POST['banknumber'] > 0) {
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
                }
            } else {
                $userInfoArray = array();
                $userLetterInfo = array();
                if(isset($_SESSION['bank_number']) AND isset($_SESSION['security_type'])) {
                    $userInfoArray['username'] = $this->user->getName();
                    $userInfoArray['bank_number'] = (int)$_SESSION['bank_number'] ;
                    $userInfoArray['security_type'] = (boolean)$_SESSION['security_type'];
                }
                if(isset($_POST['submit_2'])) {
                    $userInfoArray['creditcard_number'] = (int)$_POST['creditcard'];
                    $pageToShow = 3;
                }
                if(isset($_POST['submit_3'])) {
                    $userLetterInfo['username'] = $this->user->getName();
                    $userLetterInfo['key'] = substr(md5($this->user->getName() . date('U')), 10);
                    $pageToShow = 3;
                }
                var_dump($userInfoArray);
                var_dump($userLetterInfo);
                unset($_SESSION['security_type']);
                unset($_SESSION['bank_number']);
            }

            $this->website->assign("page", $pageToShow);
            $this->render("sellerRequest", "users/sellerRequest.tpl");
        } else {

            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een verkopersaccount kunt aanmaken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>