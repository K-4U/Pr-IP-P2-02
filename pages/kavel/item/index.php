<?php


//Naming convention:
//<cat><page>
class kavelItem extends cmsPage {

    function parse() {

        $displayName = "Kavel";

        $objectResult = $this->db->buildQuery("SELECT * FROM objects WHERE id=%i", $this->argsIndexed[0]);
        $object = $this->db->fetchAssoc($objectResult);

        //Fetch images:
        $imageResult = $this->db->buildQuery("SELECT filename FROM files WHERE objectid=%i", $this->argsIndexed[0]);
        if($this->db->getHasRows($imageResult)){
            $object['image'] = $this->db->fetchAssoc($imageResult);
        }else{
            $object['image'] = "https://placehold.it/465x465";
        }

        $object['timeRemaining'] = $object['end_moment']->getTimeStamp() - time();

        //Fetch bids
        $bidsResult = $this->db->buildQuery("SELECT * FROM bids WHERE objectid=%i", $this->argsIndexed[0]);
        $object['bids'] = $this->db->fetchAllAssoc($bidsResult);

/*        for($i = 0; $i <= 200; $i++){
            $object['bids'][] = Array("bidvalue"=>450.0 - $i, "username"=>"Gebruiker".$i);
        }*/
        $object['bids'][] = Array("bidvalue"=>$object['start_bid'], "username"=>"Startbod");

        //Get minimal new bid:
        $object['nextBid'] = $this->db->fetchIndex($this->db->executeFunction('dbo.fnMinimalNewBid', $object['id']))[0];

        //Fetch user
        $userResult = $this->db->buildQuery("SELECT * FROM users WHERE username=%s", $object['seller']);
        $object['user'] = $this->db->fetchAssoc($userResult);
        $object['user']['gravatarUrl'] = get_gravatar($object['user']['email'], 72);
        //Fetch the rating:
        //TODO: Insert query written by Nico here
        //$ratingResult = $this->db->buildQuery("SELECT AVG(rating) FROM feedback WHERE isseller=TRUE AND ")
        $object['user']['rating'] = 0;

        //Get related here.
        //TODO: Insert query here
        //$relatedObjectsResult = $this->db->buildQuery("SELECT TOP 3 * FROM objects");
        //$object['related'] = $this->db->fetchAllAssoc($relatedObjectsResult);

        $this->website->assign("object", $object);

        $this->render($displayName, 'lot.tpl');
    }
}


?>

