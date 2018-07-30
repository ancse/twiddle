<?php

/**
 *Checks if user is logged in or not
 *
 */
if( !function_exists( 'is_user_logged_in' ) ) {
	function is_user_logged_in () {
		$user = get_current_user();
		if($user) {
			return true;
		}
		else {
			return false;
		}
	}
}

get_user_meta( $user_id );
get_user_id(); 
get_user_data( $user_id );