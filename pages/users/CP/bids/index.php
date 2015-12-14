<?php

Class usersCPbids extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $result = $this->db->buildQuery("SELECT * FROM objects WHERE id IN (SELECT objectid FROM bids WHERE username =%s GROUP BY objectid)",$this->user->getName());

            $objects = parseObjects($result, $this->user->getName());


            foreach ($objects as &$object) {
                $categoryTree = Array();
                $categories= Array();
                $catIdResult = $this->db->buildQuery("SELECT category_id FROM object_in_category WHERE object_id =%s ", $object['id']);
                $catId = $this->db->fetchAssoc($catIdResult)['category_id'];
                getCategoryFromBottom($categories, $catId);
                foreach($categories as $cat){
                    $temp = Array("name"=> $cat['name'], "link"=> baseurl("Rubriek/" . $cat['id']));
                    $categoryTree[] = $temp;
                }
                $object['categoryTree'] = $categoryTree;
            }

            echo "<pre>" ;
            var_dump($objects);
            echo "</pre>";

            $this->website->assign("objects", $objects);
            $this->render("Bids", "users/bids.tpl");
        } else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u uw biedingen kunt bekijken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>