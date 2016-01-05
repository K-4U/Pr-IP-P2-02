<?php

class searchPage extends cmsPage {

    function parse($query) {
        //Fetch number of objects in this category:
        $countResult = $this->db->buildQuery("SELECT COUNT(id) AS c FROM objects WHERE title LIKE '%%s%' OR description LIKE '%%s%'",$query, $query);
        $c = $this->db->fetchAssoc($countResult)['c'];

        $sql = "SELECT id,title,end_moment,start_bid FROM objects WHERE title LIKE '%%s%' OR description LIKE '%%s%'";
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
            $result = $this->db->buildQuery($sql, $query, $query, $fo, $fe);
            $this->website->assign("paginationNeeded", true);
            $this->website->assign("maxPages", ($c / $maxPerPage)-1);
        }else{
            $result = $this->db->buildQuery($sql, $query, $query);
        }

        $objects = parseObjects($result);

        $this->addToBreadcrumbs("Home", baseurl(""));
        $this->addToBreadcrumbs("Zoeken");

        $this->website->assign("category", $category);
        $this->website->assign("categories", $categories);
        $this->website->assign("objects", $objects);
        $this->render("Categorie", 'lot/objects.tpl');
    }
}

?>