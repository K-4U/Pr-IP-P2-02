<?php

Class usersCP extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $this->website->assign("userGravatar", get_gravatar($this->user->getEmail(), 200));

            $sql = "SELECT username, firstname, lastname, city, country, adress_street1, adress_street2, adress_number, postalcode, birthdate FROM users WHERE username=%s";

            $userResult = $this->db->buildQuery($sql, $this->user->getName());

            $CP = Array();
            $CP = $this->db->fetchAssoc($userResult);
            $this->website->assign("CP", $CP);


            $sqlPhonenumber = "SELECT phonenumber FROM phonenumbers WHERE username=%s";

            $phonenumberResult = $this->db->buildQuery($sqlPhonenumber, $this->user->getName());

            $phonenumber = Array();
            $phonenumber = $this->db->fetchAssoc($phonenumberResult);
            $this->website->assign("phonenumber", $phonenumber);

            $this->render("UCP", "UCP.tpl");
        }
    }
}

?>