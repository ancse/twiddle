<?php

/**
 * Set the Database credentials to Connect to Database
 */
/** The name of the database */
define('DB_NAME', 'twiddle_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');


/** Absolute path to the Twiddle directory. */
if ( !defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );