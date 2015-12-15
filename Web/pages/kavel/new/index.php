<?php


//Naming convention:
//<cat><page>
class kavelNew extends cmsPage {

    function parse() {

        if(isset($_POST['submit'])) {

            if(isset($_POST['title']) && isset($_POST['description']) && isset($_POST['start_bid']) && isset($_POST['location']) && isset($_POST['duration']) && isset($_POST['payment_method'])) {
                $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                if($check !== false) {
                    echo "File is an image - " . $check["mime"] . ".";
                    $uploadOk = 1;

                    $errors = Array();
                    if(strlen($_POST['title']) > 4 && strlen($_POST['title']) < 60) {
                    } else {
                        $errors['titleErr'] = "Lengte van titel bestaat niet uit 4 tot 60 tekens.";
                        //HIER WAS IK!!!!!!!!!!!!!!!!!!
                    }

                    //var_dump($_POST);
                    $insertArray = array(
                        "title"                 => $_POST['title'],
                        "description"           => $_POST['description'],
                        "start_bid"             => intval($_POST['start_bid']),
                        "city"                  => $_POST['location'],
                        "country"               => 'Nederland',
                        "duration"              => intval($_POST['duration']),
                        "payment_method"        => $_POST['payment_method'],
                        "payment_instructions"  => $_POST['payment_instructions'],
                        "shipment_instructions" => $_POST['shipment_instructions'],
                        "shipment_costs"        => intval($_POST['shipment_costs']),
                        "seller"                => $this->user->getName());

                    $this->db->insert("objects", $insertArray);
                    $error = $this->db->getLastError();
                    if($error) {
                        //var_dump($error);
                    } else {
                        var_dump($_FILES);
                        $target_dir = getcwd() . "/images/uploads/";
                        $imageFileType = pathinfo($_FILES['fileToUpload']['name'], PATHINFO_EXTENSION);
                        $target_file = md5_file(date(U) . $this->user->getName()) . '.' . $imageFileType; //md5
                        $uploadOk = 1;

                        var_dump(rename($_FILES['fileToUpload']['tmp_name'], $target_dir . $target_file));
                        $objectId = $this->db->getLastInsertedId();
                        $insertFileNameArray = array(
                            "filename" => $target_file,
                            "objectid" => $objectId
                        );
                        $this->db->insert("files", $insertFileNameArray);

                        header("Location: " . baseurl("Kavel/Item/" . $objectId));
                    }


                } else {
                    echo "File is not an image.";
                    $uploadOk = 0;
                }


            }

        }

        $displayName = "Kavel aanbieden";
        if(!$this->user->isLoggedIn()) {

            $this->website->assign("loginError", "U moet ingelogd zijn voordat u een kavel kan aanbieden.");
            $this->render('Login', 'users/login.tpl');
        } else {


            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("Kavel aanbieden");
            $this->render($displayName, 'lot/newlot.tpl');
        }
    }
}


?>

