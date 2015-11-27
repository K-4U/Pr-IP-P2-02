<?php

class user {

    public $lastError = 0;
    private $loggedIn = false;
    private $userName = "";
    private $userInfo = Array("GEBRUIKERSNAAM" => "", "EMAIL" => "", "VOORNAAM" => "", "TUSSENVOEGSEL" => "", "ACHTERNAAM" => "");
    private $db;

    /**
     * @param $db
     */
    public function __construct($db) {

        session_start();
        $this->db = $db;
        //Search for cookies

        //If the person is logged in already, just get his info from the session.
        if(isset($_SESSION['loggedIn']) && $_SESSION['loggedIn'] == true) {
            $this->loggedIn = true;
            $this->userName = $_SESSION['userName'];
            $this->updateInfo();
        }
    }

    /**
     * Fetches the info for this user from the database
     */
    private function updateInfo() {

        $infoResult = $this->db->buildQuery("SELECT * FROM GEBRUIKER WHERE GEBRUIKERSNAAM LIKE '%s'", $this->userName);
        if($this->db->getNumRows($infoResult) > 0) {
            $this->userInfo = $this->db->fetchAssoc($infoResult);
        } else {
            //We didn't find him!
            $this->loggedIn = false;
            $_SESSION['loggedIn'] = false;
        }
    }

    //doLogin
    //Args: email, password
    //Returns, error code or 0 on succes
    //Error code:
    //1 = User does not exist
    //2 = Password wrong
    //See.. it isn't that hard to do?
    /**
     * @param            $username
     * @param            $password
     * @param bool|false $remember
     * @return int
     */
    public function doLogin($username, $password, $remember = false) {
        
        $password = hash('sha512', substr($username, 0, 2) . $password . substr($username, 2));

        $loginResult = $this->db->buildQuery("SELECT GEBRUIKERSNAAM FROM GEBRUIKER WHERE WACHTWOORD='%s' AND GEBRUIKERSNAAM LIKE '%s'", $password, $username);

        if($this->db->getNumRows($loginResult) == 0) {
            return 1;
        } else {
            $user = $this->db->fetchAssoc($loginResult);
            //Logged in!
            $_SESSION['loggedIn'] = true;
            $_SESSION['user'] = $this;
            $_SESSION['userName'] = $user['GEBRUIKERSNAAM'];

            $this->loggedIn = true;
            $this->userName = $user['GEBRUIKERSNAAM'];
            $this->updateInfo();//This looks stupid to do..
            if($remember !== false) {
                setcookie("username", $username, time() + (60 * 60 * 24 * 365), "/");
            }

            return 0;
        }
    }

    public function doLogout() {

        $_SESSION['loggedIn'] = false;
        setcookie("email", "", time() - 3600, "/");
        unset($_SESSION['loggedIn']);
        unset($_SESSION['user']);
        $this->loggedIn = false;
        $this->userInfo = Array("GEBRUIKERSNAAM" => "", "EMAIL" => "", "VOORNAAM" => "", "TUSSENVOEGSEL" => "", "ACHTERNAAM" => "");
    }

    /**
     * @return array
     */
    public function getInfo() {

        return array_merge($this->userInfo, array("loggedIn" => $this->loggedIn));
    }

    /**
     * @return mixed
     */
    public function getName() {

        return $this->userInfo['GEBRUIKERSNAAM'];
    }

    /**
     * @return boolean
     */
    public function isLoggedIn() {

        return $this->loggedIn;
    }

    public function getEmail() {
        return "koen@k-4u.nl";
    }


}


?>
