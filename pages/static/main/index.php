<?php


//Naming convention:
//<cat><page>
class staticMain extends cmsPage {

    function parseObjects($result) {

        $objects = Array();
        while ($row = $this->db->fetchAssoc($result)) {
            //Fetch latest bid
            $bidResult = $this->db->buildQuery("SELECT TOP 1 * FROM bids WHERE objectid=%d ORDER BY bidvalue DESC", $row['id']);
            if($this->db->getHasRows($bidResult)) {
                $row['currentBid'] = $this->db->fetchAssoc($bidResult);
            } else {
                $row['currentBid'] = $row['start_bid'];
            }

            $imageResult = $this->db->buildQuery("SELECT TOP 1 filename FROM files WHERE objectid=%d", $row['id']);
            if($this->db->getHasRows($bidResult)) {
                $row['image'] = $this->db->fetchAssoc($imageResult)['filename'];
            } else {
                $row['image'] = "https://placehold.it/150x150";
            }

            $row['timeRemaining'] = $row['end_moment']->getTimeStamp() - time();
            $objects[] = $row;
        }

        return $objects;
    }

    function parse() {

        $displayName = "Hoofdpagina";

        //Fetch all from SQL.
        $sql = "SELECT TOP 3 id,title,end_moment,start_bid FROM objects ORDER BY end_moment DESC";
        $result = $this->db->query($sql);
        $soonEndingObjects = $this->parseObjects($result);

        $sql = "SELECT TOP 3 id,title,end_moment,start_bid FROM objects ORDER BY start_moment DESC";
        $result = $this->db->query($sql);
        $newObjects = $this->parseObjects($result);

        $this->website->assign("newObjects", $newObjects);
        $this->website->assign("soonEndingObjects", $soonEndingObjects);
        $this->render($displayName, 'index.tpl');
    }
}

?>
