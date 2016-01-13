<?php

Class usersCPfeedback extends cmsPage {

    function parse() {

        if($this->user->isLoggedIn()) {
            $username = $this->user->getName();
            $feedbackResultSel = $this->db->buildQuery("SELECT isseller, rating, date, comment, buyer, seller AS username FROM feedback F LEFT OUTER JOIN objects O ON F.objectid = O.id WHERE seller =%s AND isseller = 1", $username);
            $feedbackItemsSel = $this->db->fetchAllAssoc($feedbackResultSel);

            $feedbackResultBuy = $this->db->buildQuery("SELECT isseller, rating, date, comment, seller AS username FROM feedback F LEFT OUTER JOIN objects O ON F.objectid = O.id WHERE buyer =%s AND isseller = 0", $username);
            $feedbackItemsBuy = $this->db->fetchAllAssoc($feedbackResultBuy);

            $this->website->assign("feedbackItemsSel", $feedbackItemsSel);
            $this->website->assign("feedbackItemsBuy", $feedbackItemsBuy);

            $this->addToBreadcrumbs("Home", baseurl(""));
            $this->addToBreadcrumbs("UCP", baseurl("Users/CP"));
            $this->addToBreadcrumbs("Mijn feedback");

            $this->render("Feedback", "users/feedback.tpl");
        } else {
            $this->website->assign("loginError", "U moet ingelogd zijn voordat u uw feedback kunt bekijken.");
            $this->render("login", "users/login.tpl");
        }
    }
}

?>
