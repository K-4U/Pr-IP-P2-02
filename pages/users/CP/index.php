<?php

Class usersCP extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {

            if(isset($_POST ['submit'])){
//                $saveChanges = $this->db->sqlEscape("UPDATE users SET firstname, lastname, city, country, adress_street1, adress_street2, adress_number, postalcode, birthdate WHERE username=%s)"); AANPASSEN! update function

                $changesResult = $this->db->buildQuery($saveChanges, $this->user->getName());
                if(isset($_POST ['securityQuestions'])){
                    if($_POST ['securityQuestions'] >=0){
                        echo "hoi";
                    }

                }
                if(isset($_POST ['newPassword2'])){

                }
            }

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

            $sqlQuestion = "SELECT id, question FROM security_questions";

            $questionResult = $this->db->query($sqlQuestion);

            $questions = Array();
            $questions = $this->db->fetchAllAssoc($questionResult);
            $this->website->assign("questions", $questions);

            $this->render("UCP", "UCP.tpl");
        }else{
            $this->website->assign("loginError", "U moet ingelogd zijn voordat uw controle paneel bekeken kan worden.");
            $this->render("login", "login.tpl");
        }
    }
}

?>