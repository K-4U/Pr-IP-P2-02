<?php

class searchPage extends cmsPage {

    function parse($query, $p) {
        //Fetch number of objects in this category:

        $query = "%" . $query . "%";
        //THANK YOU SILVAN FOR FIXING THIS BUG FOR ME!
        $countResult = $this->db->buildQuery("SELECT COUNT(id) AS c FROM objects WHERE title LIKE ? OR description LIKE ?",$query, $query);
        $c = $this->db->fetchAssoc($countResult)['c'];

        $sql = "SELECT id,title,end_moment,start_bid,city FROM objects WHERE title LIKE ? OR description LIKE ? ORDER BY start_bid ASC";
        $maxPerPage = 18;
        if($c > $maxPerPage){
            if($p > 0){
                $fo = $p * $maxPerPage;
            }else{
                $fo = 0;
            }
            $fe = $fo + $maxPerPage;
            $sql .= " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY;";
            $result = $this->db->buildQuery($sql, $query, $query, $fo, $fe);
            $this->website->assign("paginationNeeded", true);
            $this->website->assign("page", $p+1);
            $this->website->assign("maxPages", ($c / $maxPerPage)-1);
        }else{
            $result = $this->db->buildQuery($sql, $query, $query);
        }

        $objects = parseObjects($result);

        $this->addToBreadcrumbs("Home", baseurl(""));
        $this->addToBreadcrumbs("Zoeken");

        $this->website->assign("objects", $objects);
        $this->render("Categorie", 'lot/objects.tpl');
    }
}

?>