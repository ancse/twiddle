<?php
require_once 'functions.php'
if( !class_exists( 'users' ) ) {
	class users {
		
		/**
		 * user ID 
		 */
		protected $id
		
		/**
		 * Username
		 */
		protected $user_login

		/**
		 * user's Nick Name
		 */
		protected $user_nicename
		
		/**
		 * USer's Registered email
		 */
		protected $user_email

		/**
		 * About User
		 */
		protected $user_bio
		
		/**
		 * User's Profile picture
		 */
		protected $dp;

		/**
		 * User's full Name
		 */
		protected $display_name;

		/**
		 * Website
		 */
		protected $website;
		
		/**
		 * @param $id				integer		User ID
		 * @param $user_login		string		Username
		 * @param $user_nicename	string		Nickname
		 * @param $user_email		string		Email
		 * @param $user_url			string		profile Url
		 * @param $user_bio			string 		User bio
		 * @param $display_name		string 		User's Full Name
		 * @param $dp 				string		User's Profile Dp
		 * @param $website 			string 		User's Website 
		 */

		public function __construct( $id, $user_login = '', $user_nicename = '', $user_email = '', $website = '', $user_bio = '', $display_name = '', $dp = '', $website ) {
			$this->id 				= $id;
			$this->user_login 		= $user_login;
			$this->user_nicename	= $user_nicename;
			$this->user_email 		= $user_email;
			$this->website	 		= $website;
			$this->display_name 	= $display_name;
			$this->user_bio 		= $user_bio;
			$this->dp 				= $dp;
		}

		public function get_user( $id = '' ) {
			global $db;

			if( $id ) {
				$this->id 	= $id;
			}
			elseif( !$this->id ){
				$uid = get_current_user();
				
				if(!uid) {
					return NULL;
				}
			}

			if( $this->id ) {
				$info 		= get_user_data( $this->id );
			}
			else {
				return NULL;
			}
			
			if( isset ( $info['user_login'] ) ) {
				$this->user_login = $info['user_login'];
			}

			if( isset ( $info['user_nicename'] ) ) {
				$this->user_nicename = $info['user_nicename'];
			}

			if( isset ( $info['user_email'] ) ) {
				$this->user_email = $info['user_email'];
			}

			if( isset ( $info['user_url'] ) ) {
				$this->website = $info['user_url'];
			}

			if( isset ( $info['display_name'] ) ) {
				$this->display_name = $info['display_name'];
			}
			
			$bio = get_user_meta( $this->id, 'user_bio' );
			if( $bio ) {
				$this->user_bio = $bio;
			}

			$dp = get_user_meta( $this->id, 'dp' );
			if( $dp ) {
				$this->dp = $dp;
			}
			return $this;
		}

		public function save_data( ) {
			update_user_meta()
		}
	}
}
