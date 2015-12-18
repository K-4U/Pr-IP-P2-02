<?php

class categories extends cmsPage {

    function parse($id, $p) {
        $categoryResult = $this->db->buildQuery("SELECT * FROM categories WHERE id=%i", $id);
        $category = $this->db->fetchAssoc($categoryResult);

        //Fetch number of objects in this category:
        $countResult = $this->db->buildQuery("SELECT COUNT(object_id) AS c FROM object_in_category WHERE category_id=%i",$id);
        $c = $this->db->fetchAssoc($countResult)['c'];

        $sql = "SELECT id,title,end_moment,start_bid FROM objects WHERE id IN (SELECT object_id FROM object_in_category WHERE category_id=%i) ORDER BY start_moment DESC";
        $result = null;
        $maxPerPage = 18;
        if($c > $maxPerPage){
            if($p > 0){
                $fo = $p * $maxPerPage;
            }else{
                $fo = 0;
            }
            $fe = $fo + $maxPerPage;
            $sql .= " OFFSET %i ROWS FETCH NEXT %i ROWS ONLY;";
            $result = $this->db->buildQuery($sql, $id, $fo, $fe);
            $this->website->assign("paginationNeeded", true);
            $this->website->assign("maxPages", ($c / $maxPerPage)-1);
        }else{
            $result = $this->db->buildQuery($sql, $id);
        }

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