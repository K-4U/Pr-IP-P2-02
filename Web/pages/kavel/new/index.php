<?php


//Naming convention:x
//<cat><page>
class kavelNew extends cmsPage {

    function parse() {

        if($this->user->isSeller()) {
            $_POST = removeHTMLFromPOST($_POST);

            if(isset($_POST['submit'])) {


                if(isset($_POST['title']) && isset($_POST['description']) && isset($_POST['start_bid']) && isset($_POST['location']) && isset($_POST['duration']) && isset($_POST['payment_method'])) {
                    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                    $errors = Array();
                    if($check !== false) {
                        //echo "File is an image - " . $check["mime"] . ".";
                        $uploadOk = 1;
                    } else {
                        $errors['imageErr'] = "U moet een afbeelding uploaden.";
                        //echo "File is not an image.";
                        $uploadOk = 0;
                    }


                    if(strlen($_POST['title']) > 4 && strlen($_POST['title']) < 60) {
                    } else {
                        $errors['titleErr'] = "Lengte van titel bestaat niet uit 4 tot 60 tekens.";
                    }
                    if(trim(strlen($_POST['description'])) > 1 && trim(strlen($_POST['description'])) < 4000) {
                    } else {
                        $errors['descriptionErr'] = "Lengte van de beschrijving bestaat niet uit 1 tot 4000 tekens.";
                    }
                    if(number_format($_POST['start_bid'], 2) > 0 && number_format($_POST['start_bid'], 2) < 1000000) {
                    } else {
                        $errors['start_bidErr'] = "Vul een startbod in wat minimaal 1 karakter en maximaal 999999,99 is.";
                    }
                    if(trim(strlen($_POST['location'])) > 1 && trim(strlen($_POST['location'])) < 163) {
                    } else {
                        $errors['locationErr'] = "Vul een plaatsnaam in van minimaal 1 en maximaal 163 karakters.";
                    }
                    if($_POST['duration'] > 0) {
                    } else {
                        $errors['durationErr'] = "Looptijd niet geldig.";
                    }
                    if(!empty($_POST['payment_method'])) {
                    } else {
                        $errors['payment_methodErr'] = "Kies een betaalmethode.";
                    }
                    //var_dump($_POST['start_bid']);
                    //var_dump("fwsbjkfewghkfewu");

                    //var_dump($_POST);
                    $insertArray = array(
                        "title"                 => $_POST['title'],
                        "description"           => $_POST['description'],
                        "start_bid"             => intval(number_format($_POST['start_bid'], 2)),
                        "city"                  => $_POST['location'],
                        "country"               => 'Nederland',
                        "duration"              => intval($_POST['duration']),
                        "payment_method"        => $_POST['payment_method'],
                        "payment_instructions"  => $_POST['payment_instructions'],
                        "shipment_instructions" => $_POST['shipment_instructions'],
                        "shipment_costs"        => intval($_POST['shipment_costs']),
                        "seller"                => $this->user->getName()
                    );


                    if($errors) {
                        $this->website->assign("errors", $errors);
                        $this->website->assign("values", $_POST);
                    } else {
                        //var_dump($_FILES);
                        $target_dir = getcwd() . "/upload/";
                        $imageFileType = pathinfo($_FILES['fileToUpload']['name'], PATHINFO_EXTENSION);
                        $target_file = md5(date(U) . $this->user->getName()) . '.' . $imageFileType;; //md5
                        $uploadOk = 1;

                        rename($_FILES['fileToUpload']['tmp_name'], $target_dir . $target_file);


                        $this->db->insert("objects", $insertArray);
                        $errors['databaseErr1'] = $this->db->getLastError();

                        $objectId = $this->db->getLastInsertedId();
                        $insertFileNameArray = array(
                            "filename" => $target_file,
                            "objectid" => $objectId
                        );
                        $this->db->insert("files", $insertFileNameArray);
                        $errors['databaseErr'] = $this->db->getLastError();

                        //Insert into the category that they chose:
                        $categoryInsertArray = Array(
                            "object_id"   => $objectId,
                            "category_id" => $_POST['category']
                        );
                        $this->db->insert("object_in_category", $categoryInsertArray);
                        $errors['databaseErr2'] = $this->db->getLastError();


                        if(sizeof($errors) > 0) {
                            header("Location: " . baseurl("Kavel/Item/" . $objectId));
                        }
                    }
                }

            }

            $displayName = "Kavel aanbieden";
            if(!$this->user->isLoggedIn()) {

                $this->website->assign("loginError", "U moet ingelogd zijn voordat u een kavel kan aanbieden.");
                $this->render('Login', 'users/login.tpl');
            } else {

                $categoryList = getCategory(Array());

                $endCategoryList = Array();
                foreach($categoryList as $category) {
                    $this->parseCategoryList($category, $endCategoryList);
                }

                $this->addToBreadcrumbs("Home", baseurl(""));
                $this->addToBreadcrumbs("Kavel aanbieden");
                $this->website->assign("categoryList", $endCategoryList);
                $this->render($displayName, 'lot/newlot.tpl');
            }
        } else {
            $this->website->assign("error", "U moet een verkopers account aanmaken voordat u een kavel kan aanbieden.");
            $this->render("", "error.tpl");
        }
    }

    function parseCategoryList($category, &$array, $depth = 0) {

        $str = "";
        for($i = 0; $i < $depth; $i++) {
            $str .= ".";
        }

        $str .= htmlspecialchars($category['name']);


        $array[] = Array('id' => $category['id'], 'name' => $str, 'disabled' => (sizeof($category['sub']) > 0));
        foreach($category['sub'] as $categories) {
            $this->parseCategoryList($categories, $array, $depth + 1);
        }
    }
}


?>

