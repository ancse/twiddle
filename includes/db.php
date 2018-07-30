<?php

require_once '../../config.php';
global $db;
$db = new db( DB_USER, DB_PASSWORD, DB_NAME, DB_HOST );
class db {

	// VARIABLES
	public $mysqli;
	/**
	 * Database Username
	 */
	public $dbuser;

	/**
	 * Database Password
	 */
	public $dbpassword;

	/**
	 * Database Name
	 */
	public $dbname;

	/**
	 * Database Host
	 */
	public $dbhost;

	/**
	 * Connects to the database server and selects a database.
	 *
	 * @param string $dbuser     MySQL database user
	 * @param string $dbpassword MySQL database password
	 * @param string $dbname     MySQL database name
	 * @param string $dbhost     MySQL database host
	 */
	public function __construct( $dbuser, $dbpassword, $dbname, $dbhost ) {


		$this->dbuser 		= $dbuser;
		$this->dbpassword 	= $dbpassword;
		$this->dbname 		= $dbname;
		$this->dbhost 		= $dbhost;

		$this->db_connect();
    }

	/**
	 * Connects to the db
	 */
    public function db_connect () {
    	$this->mysqli = mysqli_init();
        
		if ( !$this->mysqli ) {
		    die( 'mysqli_init failed' );
		}

		if ( !$this->mysqli->options( MYSQLI_INIT_COMMAND, 'SET AUTOCOMMIT = 0') ) {
		    die( 'Setting MYSQLI_INIT_COMMAND failed' );
		}

		if ( !$this->mysqli->options( MYSQLI_OPT_CONNECT_TIMEOUT, 5 ) ) {
		    die( 'Setting MYSQLI_OPT_CONNECT_TIMEOUT failed' );
		}

		if ( !$this->mysqli->real_connect( $this->dbhost, $this->dbuser, $this->dbpassword, $this->dbname ) ) {
		    die( 'Connect Error (' . mysqli_connect_errno() . ')' . mysqli_connect_error() );
		}
	}
}
