<?php

Class registerInfo extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            header("location: " . baseurl(""));
        } else {
            if(isset($_POST['validateCode'])) {
                if($_POST['emailCode'] == $_POST['emailVerificationCode']) {

//                    $errors = Array();
                    if(isset($_POST['registerInfo'])) { //lets check if every required field is actually filled in correctly

                        if(strlen($_POST['username']) >= 4 && strlen($_POST['username']) <= 12) {
                        } else {
                            $errors['usernameErr'] = "De lengte van uw username voldoet niet aan onze waarden.";
                        }

                        if(!isset($_POST['firstname']) && !isset($_POST['lastname'])) {
                            $errors['nameErr'] = "Vul uw voornaam en achternaam in.";
                        }

                        if(ctype_digit(substr($_POST['postalcode'], 0, 4)) && ctype_alpha(substr($_POST['postalcode'], -2))) {
                        } else {
                            $errors['postalcodeErr'] = "De postcode moet als volgt gegeven zijn, 4 cijfers gevolgd door 2 letters. Bijvoorbeeld: 1234AB.";
                        }

                        if(ctype_digit(substr($_POST['adress_number'], 0, 1))) {

                        } else {
                            $errors['adress_numberErr'] = "De eerste character van uw adress moet een nummer zijn.";
                        }

                        if($_POST['password'] == $_POST['password2']) {
                            $hashedPassword = hash("sha512", $_POST['password']);
                            $_POST['password'] = $hashedPassword;
                        } else {
                            $errors['passwordErr'] = "De opgegeven wachtwoorden komen niet overeen.";
                        }

                        if($_POST ['securityQuestions'] >= 0) {
                        } else {
                            $errors['securityQuestionsErr'] = "U heeft geen geheime vraag gekozen.";
                        }

                        if(isset($_POST['questionAnswer'])) {
                        } else {
                            $errors['questionAnswerErr'] = "U heeft geen antwoord voor uw geheime vraag opgegeven.";
                        }

                        if(!isset($_POST['birthdate'])) {
                            $errors['birthdate'] = "U heeft geen geboortedatum aangegeven.";
                        }

                        if(!isset($_POST['city'])) {
                            $errors['city'] = "U heeft geen plaatsnaam opgegeven.";
                        }

                        if(!isset($_POST['country'])) {
                            $errors['country'] = "U heeft geen land opgegeven.";
                        }

                        if(isset($_POST['g-recaptcha-response']) && $_POST['g-recaptcha-response']) {
                            $sCaptcha = "6LcL4xITAAAAAHuArX4fZ4eMjr25H2TfLiKq8mNR";
                            $ip = $_SERVER['REMOTE_ADDR'];
                            $captcha = $_POST['g-recaptcha-response'];
                            $resp = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$sCaptcha&response=$captcha&remoteip=$ip");;
                            $arr = json_decode($resp, true);
                            if($arr['success']) {
                                if(!isset($errors)) {
                                    $noErrs = true;
                                }
                            } else {
                                $errors['captchaErr'] = "De reCaptcha is niet door de validatie gekomen.";
                            }
                        }
                    }

                    $birthdate = strtotime($_POST['birthdate']);
                    $_POST['birthdate'] = date("Y-m-d", $birthdate);

                    $infoInsert = Array(
                        'username'          => $_POST['username'],
                        'firstname'         => $_POST['firstname'],
                        'lastname'          => $_POST['lastname'],
                        'adress_street1'    => $_POST['adress_street1'],
                        'adress_number'     => $_POST['adress_number'],
                        'postalcode'        => $_POST['postalcode'],
                        'birthdate'         => $_POST['birthdate'],
                        'password'          => $_POST['password'],
                        'security_question' => $_POST['securityQuestions'],
                        'security_answer'   => $_POST['questionAnswer'],
                        'city'              => $_POST['city'],
                        'country'           => $_POST['country'],
                        'email'             => $_POST['email']);

                    if(strlen($_POST['adress_street2'])>=1){
                        $infoInsert['adress_street2'] = $_POST['adress_street2'];
                    }else{
                        $_POST['adress_street2'] = NULL;
                    }

                    if(isset($_POST['phonenumber'])) {
                        $phonenumberArray = array(
                            'phonenumber' => $_POST['phonenumber'],
                            'username'    => $_POST['username']);
                    }

                    if($noErrs) {
                        $this->db->insert("users", $infoInsert);
                        $dbErr = $this->db->getLastError();
                        $this->db->insert("phonenumbers", $phonenumberArray);
                        $dbErr1 = $this->db->getLastError();
                        if(!isset($dbErr) && !isset($dbErr1)) {
                            $this->user->doLogin($_POST['username'], $_POST['password2']);
                            header("location: " . baseurl(""));
                        }
                    }

                    $sqlQuestion = "SELECT id, question FROM security_questions";

                    $questionResult = $this->db->query($sqlQuestion);

                    $questions = Array();
                    $questions = $this->db->fetchAllAssoc($questionResult);
                    $this->website->assign("questions", $questions);
                    $this->website->assign("emailVerificationCode", $_POST['emailVerificationCode']);
                    $this->website->assign("previousInfo", $_POST);
                    $this->website->assign("email", $_POST['email']);
                    $this->website->assign("emailCode", $_POST['emailCode']);
                    $this->website->assign("validateCode", $_POST['validateCode']);
                    if(isset($errors)) {
                        $this->website->assign("errors", $errors);
                    }

                    $this->addToBreadcrumbs("Home", baseurl("/"));
                    $this->addToBreadcrumbs("Register");
                    $this->addToBreadcrumbs(Info);
                    $this->render("info", "info.tpl");
                } else {
                    $wrongCode = "De validatie code komt niet overeen met de gestuurde code, probeer opnieuw te registreren.";
                    $this->website->assign("wrongCode", $wrongCode);
                    $this->addToBreadcrumbs("Home", baseurl("/"));
                    $this->addToBreadcrumbs("Register");
                    $this->addToBreadcrumbs(Info);
                    $this->render("info", "info.tpl");

                }

            } else {
                header("location: " . baseurl(""));
            }
        }
    }
}

?>