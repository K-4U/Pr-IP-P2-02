<?php

abstract class SQLTYPES {
    const MSSQL = "mssql";
    const SQLSRV = "sqlsrv";
}

class db {

    /**
     * The SQL connector you use
     * @var SQLTYPES
     */
    private $type = SQLTYPES::MSSQL;
    /**
     * The host of the database
     * @var string
     */
    private $host = "localhost";
    /**
     * The database user
     * @var string
     */
    private $username = "";
    /**
     * The database user password
     * @var string
     */
    private $password = "";
    /**
     * The database to select
     * @var string
     */
    private $db = "";

    /**
     * Object used internally to store connections
     * @var null
     */
    private $dbo = null;

    /**
     * db constructor.
     *
     * @param        $host
     * @param string $username
     * @param string $password
     * @param string $db
     */
    public function __construct($host, $username, $password, $db) {

        $this->host = $host;
        $this->username = $username;
        $this->password = $password;
        $this->db = $db;
    }

    /**
     * @param string $type
     */
    public function setType($type) {

        $this->type = $type;
    }

    /**
     * Connects to the server
     */
    public function connect() {

        switch ($this->type) {
            case SQLTYPES::MSSQL:
                mssql_connect($this->host, $this->username, $this->password) or die(mssql_get_last_message());
                mssql_select_db($this->db) or die(mssql_get_last_message());
                break;
            case SQLTYPES::SQLSRV:
                $connInfo = Array(
                    "Database" => $this->db,
                    "UID"      => $this->username,
                    "PWD"      => $this->password
                );
                $this->dbo = sqlsrv_connect($this->host, $connInfo);
                if ($this->dbo === false) {
                    die($this->getLastError());
                }
                break;
        }
    }

    /**
     * @return string
     */
    public function getLastError() {

        $return = "";
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_get_last_message();
                break;
            case SQLTYPES::SQLSRV:
                $return = $this->formatSqlSrvError(sqlsrv_errors());
                break;
        }

        return $return;
    }

    /**
     * Function only for sqlSrv connector to make these errors look nice
     * @param $errors
     * @return string
     */
    private function formatSqlSrvError($errors) {

        return "<pre>" . var_export($errors, true) . "</pre>";
    }

    /**
     * Fetches one entry into an associative array
     * @param $sql
     * @return array|false|null
     */
    public function fetchOneAssoc($sql) {

        $result = $this->query($sql);

        return $this->fetchAssoc($result);
    }

    /**
     * Does a query of given $sql. if $die is set it'll stop here when an error occurs
     * $args is only required when you use the sqlsrv driver
     * @param           $sql
     * @param bool|true $die
     * @param array     $args
     * @return bool|mixed|resource
     */
    public function query($sql, $die = true, $args = Array()) {

        $return = false;
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_query($sql) or ($die ? die($this->getLastError()) : false);
                break;
            case SQLTYPES::SQLSRV:
                $return = sqlsrv_query($this->dbo, $sql, $args) or ($die ? die($this->getLastError()) : "");;
                break;
        }

        return $return;
    }

    /**
     * Fetches an associative array of the given query $result
     * @param $result
     * @return array|false|null
     */
    public function fetchAssoc($result) {

        $return = Array();
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_fetch_assoc($result);
                break;
            case SQLTYPES::SQLSRV:
                $return = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC);
                break;
        }

        return $return;
    }

    /**
     * Fetches an associative array of the given query $result
     * @param $result
     * @return array|false|null
     */
    public function fetchAllAssoc($result) {

        $return = Array();
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_fetch_assoc($result);
                break;
            case SQLTYPES::SQLSRV:

                $return = array();
                while($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
                    $return[] = $row;
                }
                break;
        }

        return $return;
    }

    /**
     * Fetches one entry into an index array of the given query $result
     * @param $sql
     * @return array|false|null
     */
    public function fetchOneIndex($sql) {

        $result = $this->query($sql);

        return $this->fetchIndex($result);
    }

    /**
     * Fetches an indexed array of the given query $result
     * @param $result
     * @return array|false|null
     */
    public function fetchIndex($result) {

        $return = Array();
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_fetch_array($result, MSSQL_NUM);
                break;
            case SQLTYPES::SQLSRV:
                $return = sqlsrv_fetch_array($result, SQLSRV_FETCH_NUMERIC);
                break;
        }

        return $return;
    }

    /**
     * @param $result
     * @return bool|int
     */
    function getNumRows($result) {

        $return = 0;
        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $return = mssql_num_rows($result);
                break;
            case SQLTYPES::SQLSRV:
                $return = sqlsrv_num_rows($result);
                break;
        }

        return $return;
    }

    /**
     * Builds an SQL query. Can use %i and %s in the query like sprintf
     * @param $sql
     * @param ...$args
     * @return bool|mixed|resource
     */
    function buildQuery($sql, ...$args) {

        switch ($this->type) {
            case SQLTYPES::MSSQL:
                $nArgs = Array();
                foreach ($args as $arg) {
                    $nArgs[] = $this->sqlEscape($arg);
                }

                return $this->query(sprintf($sql, ...$nArgs));
            case SQLTYPES::SQLSRV:
                $sql = preg_replace("/\\%[dis]/", "?", $sql);

                return $this->query($sql, false, $args);
        }
    }

    /**
     * @param $sql
     * @return mixed|string
     */
    private function sqlEscape($sql) {

        /* De MagicQuotes */
        $fix_str = stripslashes($sql);
        $fix_str = str_replace("'", "''", $fix_str);
        $fix_str = str_replace("\0", "[NULL]", $fix_str);

        return $fix_str;

    }

    /**
     * Given an $table, will create and execute an insert statement.
     * array has to be an associative array, with the key being the column name
     * @param $table
     * @param $array
     * @return bool|mixed|resource
     */
    function insert($table, $array) {

        $columns = array();
        $data = array();
        $values = array();

        foreach ($array as $key => $value) {
            $key = $this->sqlEscape($key);
            $value = $this->sqlEscape($value);
            $columns[] = $key;

            if ($value != "") {
                if ($this->type == SQLTYPES::SQLSRV) {
                    $data[] = "?";
                    $values[] = $value;
                } else {
                    $data[] = "'" . $value . "'";
                }
            } else {
                $data[] = "''";
            }

        }
        $cols = implode(",", $columns);
        $vals = implode(",", $data);

        $sql = sprintf("INSERT INTO %s (%s) VALUES (%s)", $table, $cols, $vals);
        //echo $sql . "<br />";
        if ($this->type == SQLTYPES::MSSQL) {
            return $this->query($sql);
        }
        if ($this->type == SQLTYPES::SQLSRV) {
            return $this->query($sql, true, $values);
        }
    }


    /**
     * Updates a $table with the given $array where $whereKey equals $whereValue
     * @param $table
     * @param $array
     * @param $whereKey
     * @param $whereValue
     * @return bool|mixed|resource
     */
    public function update($table, $array, $whereKey, $whereValue){
        $data = array();
        $values = array();

        foreach ($array as $key => $value) {
            $key = $this->sqlEscape($key);
            $value = $this->sqlEscape($value);

            //Because empty() may not yield the proper results.
            if ($value != "") {
                if ($this->type == SQLTYPES::SQLSRV) {
                    $data[] = $key . "=?";
                    $values[] = $value;
                } else {
                    $data[] = $key . "='" . $value . "'";
                }
            }
        }
        $vals = implode(",", $data);


        //Add the where value to the values array
        $values[] = $whereValue;

        $sql = sprintf("UPDATE %s SET %s WHERE %s=?", $table, $vals, $whereKey);

        if ($this->type == SQLTYPES::MSSQL) {
            return $this->query($sql);
        }
        if ($this->type == SQLTYPES::SQLSRV) {
            return $this->query($sql, true, $values);
        }
    }


    /**
     * Function to call a function on the SQL server.
     * @param $functionName
     * @param ...$args
     * @return bool|mixed|resource
     */
    public function executeFunction($functionName, ...$args){
        $data = array();
        $values = array();

        foreach ($args as $value) {
            $value = $this->sqlEscape($value);

            if ($value != "") {
                if ($this->type == SQLTYPES::SQLSRV) {
                    $data[] = "?";
                    $values[] = $value;
                } else {
                    $data[] = "'" . $value . "'";
                }
            } else {
                $data[] = "''";
            }

        }
        $vals = implode(",", $data);

        $sql = sprintf("SELECT %s (%s)", $functionName, $vals);
        //echo $sql . "<br />";
        if ($this->type == SQLTYPES::MSSQL) {
            return $this->query($sql);
        }
        if ($this->type == SQLTYPES::SQLSRV) {
            return $this->query($sql, true, $values);
        }
    }



    /**
     * Closes the database object
     */
    public function close() {

        if ($this->type == SQLTYPES::SQLSRV) {
            sqlsrv_close($this->dbo);
        }
    }
}


?>