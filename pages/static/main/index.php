<?php


//Naming convention:
//<cat><page>
class staticMain extends cmsPage {

    function parse() {

        $displayName = "Hoofdpagina";

        //Fetch all from SQL.
        $sql = "SELECT TOP 3 id,title,end_moment,start_bid FROM objects ORDER BY end_moment DESC";
        $result = $this->db->query($sql);
        $soonEndingObjects = Array();
        while($row = $this->db->fetchAssoc($result)){
            //Fetch latest bid
            $bidResult = $this->db->buildQuery("SELECT TOP 1 * FROM bids WHERE objectid=%d ORDER BY bidvalue DESC", $row['id']);
            if($this->db->getHasRows($bidResult)) {
                $row['currentBid'] = $this->db->fetchAssoc($bidResult);
            }else{
                $row['currentBid'] = $row['start_bid'];
            }

            $row['timeRemaining'] = $row['end_moment']->getTimeStamp() - time();
            $soonEndingObjects[] = $row;
        }

        $this->website->assign("soonEndingObjects", $soonEndingObjects);
        $this->render($displayName, 'index.tpl');
    }
}

?>
