<?php

/**
 * Set the Database cerdentials to Connect to Database
 */
/** The name of the database */
define('DB_NAME', 'ancs');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');


/** Absolute path to the Twiddle directory. */
if ( !defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );