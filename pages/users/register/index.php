<?php

class usersRegister extends cmsPage {

    function parse() {

        if(isset($_POST['save'])) {
            //Checking has already been done by html5! :D
            //Only check if the username doesn't already exist. or the email.
            $checkResult = $this->db->buildQuery("SELECT GEBRUIKERSNAAM,EMAIL FROM GEBRUIKER WHERE GEBRUIKERSNAAM LIKE '%s' OR EMAIL='%s'", $_POST['username'], $_POST['registerEmail']);

            if($this->db->getNumRows($checkResult) >= 1) {
                //ERROR
                $this->website->assign("error", "Gebruikersnaam of emailadres bestaat al!");
            } else {
                if($_POST['password'] != $_POST['confirmpass']) {
                    $this->website->assign("error", "Wachtwoorden komen niet overeen");
                } else {
                    $form = array(
                        "GEBRUIKERSNAAM" => $_POST['username'],
                        "WACHTWOORD"     => hash('sha512', substr($_POST['username'], 0, 2) . $_POST['password']. substr($_POST['username'], 2)),
                        "EMAIL"          => $_POST['registerEmail'],
                        "VOORNAAM"       => $_POST['firstname'],
                        "TUSSENVOEGSEL"  => $_POST['middlename'],
                        "ACHTERNAAM"     => $_POST['lastname'],
                        "STRAATNAAM"     => $_POST['streetname'],
                        "HUISNUMMER"     => $_POST['number'],
                        "POSTCODE"       => $_POST['postalcode'],
                        "WOONPLAATS"     => $_POST['city'],
                        "SEXE"           => $_POST['gender'],
                        "TELEFOONNUMMER" => $_POST['phonenumber']
                    );
                    $result = $this->db->insert("GEBRUIKER", $form);

                    if($result !== false) {
                        //Log the user in:
                        $this->user->doLogin($_POST['username'], $_POST['password'], false);
                        $this->website->assign("success", true);

                        //Send them a mail:
                        //Also, this should be fetched from SQL or a file, but this is for now, seeing as we won't be changing it anymore after this ;)
                        $message = nl2br("Welkom bij Headsetshop %s %s,

Hierbij bevestigen wij het aanmaken van uw account met gebruikersnaam %s.
Uw wachtwoord is gecodeerd opgeslagen en kan dus niet naar u verzonden worden. Als u het bent vergeten kunnen wij u een nieuw wachtwoord toesturen.

Met uw account kunt u inloggen op onze website en bestellingen plaatsen.

Mocht u verder nog vragen en/of opmerkingen hebben, dan verneem ik deze graag!

Met vriendelijke groet,
Koen Beckers
Headsetshop.k-4u.nl
K-4U.nl");
                        $message = sprintf($message, ($_POST['gender'] == "m" ? "Dhr." : "Mvr."), $_POST['lastname'], $_POST['username']);

                        sendMail($_POST['registerEmail'], $message, "Uw account bij Headsetshop.k-4u.nl");
                    } else {
                        $this->website->assign("error", $this->db->getLastError());
                    }
                }
            }

        }
        $displayName = "Registreren";

        $this->website->assign("displayname", $displayName);
        $this->website->display("register.tpl");
    }
}

?>
