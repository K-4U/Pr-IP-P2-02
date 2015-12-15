<?php

class ajaxPage {

    protected $sqlConn;
    protected $template; //Smarty object
    protected $user;
    protected $argsNamed = Array();
    protected $argsIndexed = Array();
    protected $retArray = Array();
    protected $doParse = false;

    function __construct($sqlConn, $template, $user, $argsRaw, $ac, $pg) {

        //Just save the variables in there for now.
        $this->sqlConn = $sqlConn;
        $this->template = $template;
        $this->user = $user;
        global $config;
        $this->config = $config;

        $this->retArray['pg'] = $pg;
        $this->retArray['ac'] = $ac;

        //Then, split every line on a :
        foreach($argsRaw as $key => $var) {
            //list($key, $var) = explode(":", $arg);
            if(!empty($var)) {
                $this->argsNamed[$key] = $var;
            }
        }

        if(array_key_exists("action", $this->argsNamed)) {
            $this->ajaxAc = $this->argsNamed['action'];
            $this->doParse = true;
            $this->retArray['action'] = $this->ajaxAc;
            //$this->retArray['args'] = $this->argsNamed;
            $this->template->assign('get', $this->argsNamed);
        } else {
            //In error!
            $this->retArray['Error'] = "No action given!";
        }
    }

    function render() {

        echo json_encode($this->retArray);
    }

    function showError($msg) {

        die(json_encode(Array('Error' => $msg)));
    }
}


?>
