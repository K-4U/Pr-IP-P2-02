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

        $bidsResult = $this->db->buildQuery("SELECT * FROM bids WHERE objectid=%i", $this->argsIndexed[0]);
        $object['bids'] = $this->db->fetchAllAssoc($bidsResult);

        for($i = 0; $i <= 200; $i++){
            $object['bids'][] = Array("bidvalue"=>450.0 - $i, "username"=>"Gebruiker".$i);
        }


        $this->website->assign("object", $object);

        $this->render($displayName, 'lot.tpl');
    }
}


?>

