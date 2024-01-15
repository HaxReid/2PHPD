<?php
class MySQL {

    static private $oPDO = NULL;
    static private $oInstance = NULL;
    
    private function __construct() {    
        self::$oPDO = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASS);
        self::$oPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        self::$oPDO->query("SET NAMES 'utf8'");
    }


    public function __destruct() {
        self::$oPDO = null ;
    }


    public function __clone() {
        throw new Exception('Impossible de cloner une connexion SQL protégée par un singleton');
    }

    public function __call($method, $params) {
        if(self::$oPDO == NULL){
            self::__construct();
        }
        
        return call_user_func_array(array(self::$oPDO, $method), $params);
    }
    

    static public function getInstance(){
        if(!(self::$oInstance instanceof self)){
            self::$oInstance = new self();
        }
        return self::$oInstance;
    } 

    static public function valid_donnees($donnees){
        $donnees = trim($donnees);
        $donnees = stripslashes($donnees);
        $donnees = htmlspecialchars($donnees);
        return $donnees;
    }
}