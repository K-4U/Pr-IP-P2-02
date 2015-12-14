<?php

class categories extends cmsPage {

    function parse($id) {
        $categoryResult = $this->db->buildQuery("SELECT * FROM categories WHERE id=%i", $id);
        $category = $this->db->fetchAssoc($categoryResult);

        $sql = "SELECT id,title,end_moment,start_bid FROM objects WHERE id IN (SELECT object_id FROM object_in_category WHERE category_id=%i) ORDER BY start_moment DESC";
        $result = $this->db->buildQuery($sql, $id);
        $objects = parseObjects($result);




        $categoriesCrumbs = Array();
        getCategoryFromBottom($categoriesCrumbs, $id);
        array_pop($categoriesCrumbs);

        $this->addToBreadcrumbs("Home", baseurl(""));

        foreach($categoriesCrumbs as $cat){
            $this->addToBreadcrumbs($cat['name'], baseurl("Rubriek/" . $cat['id']));
        }
        $this->addToBreadcrumbs($category['name']);

        $categories = getCategory($categoriesCrumbs);

        $this->website->assign("category", $category);
        $this->website->assign("categories", $categories);
        $this->website->assign("objects", $objects);
        $this->render("Categorie", 'lot/objects.tpl');
    }
}

?>