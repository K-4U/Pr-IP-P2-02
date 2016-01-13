<?php

Class usersCP extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $Errors = false;
            $updateComplete = false;
            if(isset($_POST ['submit'])) {
//                var_dump($_POST);
                $userInfoArray = Array(
                    'firstname'      => $_POST['firstname'],
                    'lastname'       => $_POST['lastname'],
//                    'city' => $_POST['city'],
//                    'country' => $_POST['country'],
                    'adress_street1' => $_POST['adress_street1'],
                    'adress_street2' => $_POST['adress_street2'],
                    'adress_number'  => $_POST['adress_number'],
                    'postalcode'     => $_POST['postalcode']);
                $phonenumberArray = array(
                    'phonenumber' => $_POST['phonenumber']);

                if(isset($_POST ['securityQuestions'])) {
                    if($_POST ['securityQuestions'] >= 0) {

                        $userInfoArray['security_question'] = $_POST['securityQuestions'];
                        $userInfoArray['security_answer'] = $_POST['questionAnswer'];
                    }

                }
                if(!empty($_POST['currentPassword'])|| !empty($_POST['newPassword']) || !empty($_POST['newPassword2'])) {

                    $password = hash('sha512', $_POST ['currentPassword']);

                    $currentPassword = $this->db->buildQuery("SELECT username, password FROM users WHERE username=%s AND password=%s", $this->user->getName(), $password);
                    if(!$this->db->getHasRows($currentPassword)) {
                        $errors = true;
                        $errorMsg = "Het ingevulde huidige wachtwoord komt niet overeen met het huidige wachtwoord, wachtwoord is niet veranderd.";
                    } else {
                        if($_POST ['newPassword'] == $_POST ['newPassword2']) {
                            $newPassword = hash('sha512', $_POST['newPassword']);
                            $userInfoArray['password'] = $newPassword;
                        } else {
                            $errors = true;
                            $errorMsg = "De opgegeven nieuwe wachtwoorden komen niet overeen met elkaar, wachtwoord is niet veranderd.";
                        }
                    }
                } else if(!empty($_POST['currentPassword']) && !empty($_POST['newPassword']) && !empty($_POST['newPassword2'])) {
                    $errorMsg = "Een of meer benodigde variabelen zijn niet ingevuld.";
                }
                $x = 0;
                $y = 0;
                foreach($userInfoArray as $key => $value) {
                    if($key != 'adress_street2') {
                        if($value != null) {
                            $x += 1; //adds 1 if the value is not null
                        }
                        $y += 1; //adds 1 for each key in the array
                    }
                }
                if($x == $y) {
                    $insertPhonenumber = $this->db->buildQuery("SELECT username FROM phonenumbers WHERE username=%s", $this->user->getName());
                    if(!$this->db->getHasRows($insertPhonenumber)) {
                        $phonenumberArray['username'] = $this->user->getName();
                        $this->db->insert("phonenumbers", $phonenumberArray);
                    }else {
                        $this->db->update('phonenumbers', $phonenumberArray, 'username', $this->user->getName());
                    }
                    $this->db->update('users', $userInfoArray, 'username', $this->user->getName());
                    $lastError = $this->db->getLastError();
                    $updateComplete = true;
                    if($lastError != null) {
                        $updateInfoError = "De ingevulde data geeft een fout terug, vul de velden goed in en probeer het opnieuw.";
                        $this->website->assign("updateInfoError", $updateInfoError);
//                    var_dump($lastError);
                    }
                } else {
                    $updateInfoError = "De ingevulde data geeft een fout terug, vul de velden goed in en probeer het opnieuw.";
                    $this->website->assign("updateInfoError", $updateInfoError);
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

            $this->website->assign("updateComplete", $updateComplete);
            $this->website->assign("errorMsg", $errorMsg);
            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("UCP");
            $this->render("UCP", "users/UCP.tpl");
        } else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat uw controle paneel bekeken kan worden.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>