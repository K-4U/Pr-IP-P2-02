<?php


//Naming convention:
//<cat><page>
class kavelItem extends cmsPage {

    function parse() {

        $displayName = "Kavel";


        $objectResult = $this->db->buildQuery("SELECT * FROM objects WHERE id=%i", $this->argsIndexed[0]);
        $object = $this->db->fetchAssoc($objectResult);

        //See if they placed a bid, and if they're logged in
        if(isset($_POST['submit']) && isset($_POST['bid']) && $this->user->isLoggedIn()) {
            if($_POST['bid'] >= $this->db->fetchIndex($this->db->executeFunction('dbo.fnMinimalNewBid', $object['id']))[0]) {
                $insertArray = Array(
                    "objectid"  => $object['id'],
                    "bidvalue"  => $_POST['bid'],
                    "username"  => $this->user->getName(),
                    "bidmoment" => date('Y-m-d H:i:s')
                );
                $this->db->insert("bids", $insertArray);
                $error = $this->db->getLastError();
                if($error) {
                    var_dump($error);
                } else {
                    header("Location: " . $_SERVER['REQUEST_URI']);
                }
            } else {
                $this->website->assign("bidError", "Je bod is niet hoog genoeg.");
            }
        }

        //Fetch images:
        $imageResult = $this->db->buildQuery("SELECT filename FROM files WHERE objectid=%i", $this->argsIndexed[0]);
        if($this->db->getHasRows($imageResult)) {
            $object['image'] = baseurl("images/uploads/" . $this->db->fetchAssoc($imageResult)['filename']);
        } else {
            $object['image'] = "https://placehold.it/465x465";
        }

        $object['timeRemaining'] = $object['end_moment']->getTimeStamp() - time();

        $object['description'] = nl2br(htmlentities(str_replace('\n', "\n", $object['description'])));

        //Fetch bids
        $bidsResult = $this->db->buildQuery("SELECT * FROM bids WHERE objectid=%i ORDER BY bidmoment DESC", $this->argsIndexed[0]);
        $object['bids'] = $this->db->fetchAllAssoc($bidsResult);

        //Get minimal new bid:
        $object['nextBid'] = $this->db->fetchIndex($this->db->executeFunction('dbo.fnMinimalNewBid', $object['id']))[0];

        //Fetch user
        $userResult = $this->db->buildQuery("SELECT * FROM users WHERE username=%s", $object['seller']);
        $object['user'] = $this->db->fetchAssoc($userResult);
        $object['user']['gravatarUrl'] = get_gravatar($object['user']['email'], 72);

        //Fetch the rating:
        $object['user']['rating'] = $this->db->fetchIndex($this->db->executeFunction('dbo.fnCalculateRating', $object['user']['username'], false))[0];

        //Get related here.
        //TODO: Insert query here
        //$relatedObjectsResult = $this->db->buildQuery("SELECT TOP 3 * FROM objects");
        //$object['related'] = $this->db->fetchAllAssoc($relatedObjectsResult);

        //Fetch category this object is in
        $catId = $this->db->fetchAssoc($this->db->buildQuery("SELECT category_id FROM object_in_category WHERE object_id=%i", $object['id']))['category_id'];

        $categories = Array();
        getCategoryFromBottom($categories, $catId);
        $this->addToBreadcrumbs("Home", baseurl(""));
        foreach($categories as $cat){
            $this->addToBreadcrumbs($cat['name'], baseurl("Rubriek/" . $cat['id']));
        }
        $this->addToBreadcrumbs($object['title']);

        $this->website->assign("object", $object);

        $this->render($displayName, 'lot.tpl');
    }
}


?>

