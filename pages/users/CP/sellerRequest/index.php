<?php

class usersCPsellerRequest extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $userInfoArray = array();
            if(isset($_POST ['submit_1'])) {
                if(isset($_POST['banknumber'])) {
                    if((int)$_POST['banknumber'] > 0) {
                        $userInfoArray['bank_number'] = (int)$_POST['banknumber'];
                    } else {
                        $errorMsg = 'Uw banknummer klopt niet';
                    }
                }
                if(isset($_POST['verificationType'])) {
                    $userInfoArray['security_type'] = (boolean)$_POST['verificationType'];
                }
            }
            if(isset($_Post['submit_1'])) {

            }
            var_dump($userInfoArray);

            else {
                $this->render("sellerRequest", "users/sellerRequest.tpl");
            }
        } else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een verkopersaccount kunt aanmaken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>