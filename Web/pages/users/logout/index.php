<?php

class usersLogout extends cmsPage {

    function parse() {

        $this->user->doLogout();
        //And, referer to the main page:
        header('Location: ' . baseurl(""));
    }
}

?>
