<?php

Class register extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn() == false) {
            $showRegister = true;
            if($showRegister) {
                $emailCode = md5($_POST['email'] . date("U"));
                $_SESSION['emailCode'] = $emailCode;
                $this->website->display("register.tpl");

            }
        } else {
            header("location: " . baseurl(""));
        }
    }
}