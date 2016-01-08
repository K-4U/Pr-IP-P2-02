<?php


//Naming convention:
//<cat><page>
class staticMain extends cmsPage {

    function parse() {

        $displayName = "Hoofdpagina";

        //Fetch all from SQL.
        $sql = "SELECT TOP 3 id,title,end_moment,start_bid,city FROM objects WHERE end_moment > GETDATE() ORDER BY end_moment ASC";
        $result = $this->db->query($sql);
        $soonEndingObjects = parseObjects($result);

        $sql = "SELECT TOP 3 id,title,end_moment,start_bid,city FROM objects ORDER BY start_moment DESC";
        $result = $this->db->query($sql);
        $newObjects = parseObjects($result);

        $categories = getCategory(Array());

        //$this->addToBreadcrumbs("Home");
        $this->website->assign("categories", $categories);
        $this->website->assign("newObjects", $newObjects);
        $this->website->assign("soonEndingObjects", $soonEndingObjects);
        $this->render($displayName, 'index.tpl');
    }
}

?>
