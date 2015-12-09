<?php


//Naming convention:
//<cat><page>
class kavelNew extends cmsPage {

    function parse() {

        if(isset($_POST['submit']{               );
                if(isset($_POST['title']) && isset($_POST['description']) && isset($_POST['start_bid']) && isset($_POST['location']) && isset($_POST['']) isset($_POST))
            $insertArray = array(
                "title"       => $_POST['title'],
                "description" => $_POST['description'],
                "start_bid"   => $_POST['start_bid'],
                "city"        => $_POST['location'],
                "country"     => 'Nederland',
                "duration"" => $_POST['duration'],
            "payment_method"" => $_POST[['payment_method'],
            "payment_instructions" => $_POST['payment_instructions']
    }
    );






        $displayName = "Kavel aanbieden";
        if(!$this->user->isLoggedIn()) {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een kavel kan aanbieden.");
            $this->render('Login', 'users/login.tpl');
        } else {


            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("Kavel aanbieden");
            $this->render($displayName, 'static/newlot.tpl');
        }
    }
}


?>

