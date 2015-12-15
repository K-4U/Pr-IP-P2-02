<?php


class cmsPage {

    /** @var Smarty */
    protected $website; //Smarty object
    /** @var user.class */
    protected $user;    //User object
    /** @var db.class */
    protected $db;      //Database object
    protected $argsNamed = Array();
    protected $argsIndexed = Array();
    protected $menu = Array();
    protected $rendered = false;
    protected $breadcrumbs = Array();

    function __construct($website, $user, $argsRaw, $db) {

        //Just save the variables in there for now.
        $this->website = $website;
        $this->user = $user;
        $this->db = $db;
        global $config;
        $this->config = $config;

        //Then, split every argument on a :
        foreach ($argsRaw as $arg) {
            list($key, $var) = explode(":", $arg);
            if (!empty($var)) {
                $this->argsNamed[$key] = $var;
            }
            $this->argsIndexed[] = $arg;
        }
    }

    function addToBreadcrumbs($title, $link=""){
        $this->breadcrumbs[] = Array("name"=>$title, "link"=>$link);
    }

    /**
     * Renders a page of $template
     * @param $displayName
     * @param $template
     */
    function render($displayName, $template) {
        //If we've already rendered this page, don't render it again
        if (!$this->rendered) {
            $this->website->assign("self", $_SERVER['REQUEST_URI']);
            $this->website->assign("displayName", $displayName);
            $this->website->assign("menu", $this->menu);
            $this->website->assign("breadcrumbs", $this->breadcrumbs);
            $this->website->display($template);
            $this->db->close();
            $this->rendered = true;
        }
    }
}

?>
