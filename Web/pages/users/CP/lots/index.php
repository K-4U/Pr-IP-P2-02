<?php

Class usersCPLots extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $result = $this->db->buildQuery("SELECT * FROM objects WHERE seller=%s",$this->user->getName());

            $objects = parseObjects($result, $this->user->getName());

            foreach ($objects as &$object) {
                $categoryTree = Array();
                $categories= Array();
                $catIdResult = $this->db->buildQuery("SELECT category_id FROM object_in_category WHERE object_id =%s ", $object['id']);
                $catId = $this->db->fetchAssoc($catIdResult)['category_id'];
                getCategoryFromBottom($categories, $catId);
                foreach($categories as $cat){
                    $temp = Array("name"=> $cat['name'], "link"=> baseurl("Rubriek/" . $cat['id']), "parent"=>$cat['parent']);
                    $categoryTree[] = $temp;
                }
                $object['categoryTree'] = $categoryTree;
            }

            $this->website->assign("objects", $objects);
            $this->render("Mijn kavels", "users/myLots.tpl");
        } else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u uw biedingen kunt bekijken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>