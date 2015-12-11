<?php

Class register extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn() == false) {
            $showRegister = true;
            if($showRegister) {
                $this->website->display("register.tpl");
                if(isset($_POST ['saveEmail'])) {
                    if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === false) {

                    }else{
                        $_POST['email'] = null;
                        $this->website->assign("emailError", "Ingevulde email was niet valide, probeer het opnieuw.");
                    }
                }
            }
        } else {
            $this->website->assign("user", $this->user->getInfo());
            header("location: " . baseurl(""));
        }
    } else {

    //How did they GET here?
header("location: " . baseurl(""));

}

}