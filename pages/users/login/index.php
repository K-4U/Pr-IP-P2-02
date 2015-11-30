<?php

class usersLogin extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn() == false) {
            $showLogin = true;
            if(isset($_POST['username'])) {
                $login = $this->user->doLogin($_POST['username'], $_POST['password']);
                if($login == 0) {
                    $showLogin = false;
                } elseif($login == 1) {
                    $this->website->assign("loginError", "Gebruiker of wachtwoord verkeerd");
                }
            }
            if($showLogin) {
                $this->website->display("login.tpl");
            } else {
                $this->website->assign("user", $this->user->getInfo());
                header("location: " . baseurl(""));
            }
        } else {
            //How did they GET here?
            header("location: " . baseurl(""));
        }
    }


}

?>
