<?php

Class register extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn() == false) {
            $showRegister = true;
            if($showRegister) {
                $this->website->display("register.tpl");

            }
        } else {
            header("location: " . baseurl(""));
        }
    }
}