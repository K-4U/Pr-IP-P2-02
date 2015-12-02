<?php

Class usersCP extends cmsPage {

    function parse() {
        if($this->user->isLoggedIn()) {
            $this->website->assign("userGravatar", get_gravatar($this->user->getEmail(), 200));
            $this->render("UCP","UCP.tpl");
        }
    }
}

?>