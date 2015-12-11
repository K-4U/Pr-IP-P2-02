<?php

class usersProfile extends cmsPage {

    function parse() {

        $userExists = false;
        if(count($this->argsIndexed) > 0) {
            //Find the user:
            $userResult = $this->db->buildQuery("SELECT * FROM users WHERE username=%s", $this->argsIndexed[0]);
            if($this->db->getHasRows($userResult)){
                $userExists = true;
                $user = $this->db->fetchAssoc($userResult);

                $user['gravatarUrl'] = get_gravatar($user['email'], 150);

                //Fetch his objects
                $objectsResult = $this->db->buildQuery("SELECT * FROM objects WHERE seller=%s ORDER BY end_moment DESC", $user['username']);
                $user['objects'] = parseObjects($objectsResult);

                $feedbackResult = $this->db->buildQuery("SELECT isseller, rating, date, comment, buyer, seller AS username FROM feedback F LEFT OUTER JOIN objects O ON F.objectid = O.id WHERE (seller=%s AND isseller=1) OR (buyer=%s AND F.isseller=0)", $user['username'], $user['username']);
                $user['feedback'] = $this->db->fetchAllAssoc($feedbackResult);


                $this->website->assign("user", $user);
            }else{
                $error = "Deze gebruiker bestaat niet";
                $userExists = false;
            }
        }

        if($userExists) {
            $this->addToBreadcrumbs("Home",baseurl(""));
            $this->addToBreadcrumbs("Profiel");
            $this->render('Profiel', 'users/profile.tpl');
        } else {
            //Render a page here, telling the user that this user doesn't exist
        }
    }

}

?>