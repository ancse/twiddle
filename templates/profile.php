<?php
if( is_user_logged_in() ) {
	$user_id 	= get_user_id(); 
	$user 		= get_user_data( $user_id );
	$user_meta  = get_user_meta( $user_id );
}
else {
	// Redirect to Login Page
}