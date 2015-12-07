<?php

Class usersCP extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {

            if(isset($_POST ['submit'])){
//                var_dump($_POST);
                $userInfoArray = Array(
                    'firstname' => $_POST['firstname'],
                    'lastname' => $_POST['lastname'],
//                    'city' => $_POST['city'],
//                    'country' => $_POST['country'],
                    'adress_street1' => $_POST['adress_street1'],
                    'adress_street2' => $_POST['adress_street2'],
                    'adress_number' => $_POST['adress_number'],
                    'postalcode' => $_POST['postalcode']);
                $phonenumberArray= array(
                    'phonenumber' => $_POST['phonenumber']);

                if(isset($_POST ['securityQuestions'])){
                    if($_POST ['securityQuestions'] >=0){
                        $userInfoArray['security_question'] = $_POST['securityQuestions'];
                        $userInfoArray['security_awnser'] = $_POST['securityAwnser'];
                    }

                }
                if(isset($_POST ['newPassword2'])){
                    $newPassword = hash('sha512',$_POST['newPassword']);
                    $userInfoArray['password'] = $newPassword;
                }
                $updatePhonenumber = $this->db->update('phonenumbers', $phonenumberArray ,'username', $this->user->getName());
                $update = $this->db->update('users', $userInfoArray, 'username', $this->user->getName());
                $lastError = $this->db->getLastError();
                if($lastError!= null){
                    $updateInfoError = "De ingevulde data geeft een fout terug, vul de velden goed in en probeer het opnieuw.";
                    $this->website->assign("updateInfoError", $updateInfoError);
//                    var_dump($lastError);
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