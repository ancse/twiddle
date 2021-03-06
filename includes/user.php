<?php

/**
 * Defines the user functions
 */
session_start();
require_once 'db.php';
if( !function_exists ( 'get_current_user' ) ) {
    function get_current_user () {
        
        if( !isset( $_SESSION ) ) {
            return false;
        }
        return $_SESSION['id'];
    }
}

/**
 * Retrieves the Current or loggedin user's information
 * @param $user_id
 */
if( !function_exists ( 'get_user_data' ) ) {
	function get_user_data( $user_id ) {
	    global $db;
	    $data 		= $db->query( "SELECT * FROM users WHERE user_id = '{$user_id}'" );
	    $user_data 	= $data->fetch_assoc();
	    
	    if( !empty( $user_data ) ) {
	    	return $user_data;
	    }
	    return false;
	}
}


/**
 * Retrieves the Data from usermeta for a perticular user
 * @param user_id		integer
 * @param $meta_key 	string
 */
if( !function_exists( 'get_user_meta' ) ) {
	function get_user_meta ( $user_id, $meta_key = '' ) {
		if( $meta_key == '') {
			$meta_query = "SELECT * FROM usermeta WHERE user_id = '{$user_id}'";
			echo $meta_query;
		} else {
			$meta_query = "SELECT meta_value FROM usermeta WHERE user_id = '{$user_id}' AND meta_key = '{$meta_key}' ";
			echo $meta_query;
		}
	}
}

