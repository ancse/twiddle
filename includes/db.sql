CREATE TABLE `users` (
    `id` bigint(20) unsigned NOT NULL auto_increment,
    `user_login` varchar(60) NOT NULL default '',
    `user_pass` varchar(255) NOT NULL default '',
    `user_nicename` varchar(50) NOT NULL default '',
    `user_email` varchar(100) NOT NULL default '',
    `user_url` varchar(100) NOT NULL default '',
    `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
    `user_activation_key` varchar(255) NOT NULL default '',
    `user_status` int(11) NOT NULL default '0',
    `display_name` varchar(250) NOT NULL default '',
    PRIMARY KEY  (ID),
    KEY user_login_key (user_login),
    KEY user_nicename (user_nicename),
    KEY user_email (user_email)
);
CREATE TABLE `usermeta` (
    `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
    `user_id` bigint(20) unsigned NOT NULL default '0',
    `meta_key` varchar(255) default NULL,
    `meta_value` longtext,
    PRIMARY KEY  (umeta_id),
    KEY user_id (user_id),
    KEY meta_key (meta_key(191))
);

CREATE TABLE `invitations` (
    `invitation_id` bigint(20) unsigned NOT NULL auto_increment,
    `sender_id` bigint(20) NOT NULL,
    `receiver_id` bigint(20) NOT NULL,
    `status` varchar(6) NOT NULL DEFAULT 'unseen',
    `message` varchar(160),
    PRIMARY KEY (invitation_id)
);

CREATE TABLE `messages` (
    `message_id` bigint(20) unsigned NOT NULL auto_increment,
    `message` longtext NOT NULL,
    `sender_id` bigint(20) unsigned  NOT NULL,
    `receiver_id` bigint(20) NOT NULL,
    `dateline` datetime NOT NULL,
    PRIMARY KEY (message_id)
);

CREATE TABLE `options` (
    `option_id` bigint(20) unsigned NOT NULL auto_increment,
    `option_name` varchar(191) NOT NULL UNIQUE default '',
    `option_value` longtext NOT NULL,
    `autoload` varchar(20) NOT NULL default 'yes',
    PRIMARY KEY  (option_id)
);

CREATE TABLE `posts` (
    `post_id` bigint(20) unsigned NOT NULL auto_increment,
    `post_author` bigint(20) unsigned NOT NULL default '0',
    `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
    `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
    `post_content` longtext NOT NULL,
    `post_title` text NOT NULL,
    `post_excerpt` text NOT NULL,
    `post_status` varchar(20) NOT NULL default 'publish',
    `comment_status` varchar(20) NOT NULL default 'open',
    `ping_status` varchar(20) NOT NULL default 'open',
    `post_password` varchar(255) NOT NULL default '',
    `post_name` varchar(200) NOT NULL default '',
    `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
    `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
    `post_content_filtered` longtext NOT NULL,
    `guid` varchar(255) NOT NULL default '',
    `post_type` varchar(20) NOT NULL default 'post',
    `post_mime_type` varchar(100) NOT NULL default '',
    `comment_count` bigint(20) NOT NULL default '0',
    PRIMARY KEY  (ID),
    KEY post_name (post_name($max_index_length)),
    KEY type_status_date (post_type,post_status,post_date,ID),
    KEY post_author (post_author)
) ;

CREATE TABLE `postmeta` (
    `pmeta_id` bigint(20) unsigned NOT NULL auto_increment,
    `post_id` bigint(20) unsigned NOT NULL default '0',
    `meta_key` varchar(255) default NULL,
    `meta_value` longtext,
    PRIMARY KEY  (pmeta_id),
    KEY post_id (post_id),
    KEY meta_key (meta_key(191))
);

CREATE TABLE `comments` (
    `comment_id` bigint(20) UNSIGNED UNSIGNED NOT NULL AUTO_INCREMENT,
    `comment_post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
    `comment_author` tinytext NOT NULL,
    `comment_author_email` varchar(100) NOT NULL DEFAULT '',
    `comment_author_url` varchar(200) NOT NULL DEFAULT '',
    `comment_author_ip` varchar(100) NOT NULL DEFAULT '',
    `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
    `comment_date_gmt` datetime  NULL DEFAULT '0000-00-00 00:00:00',
    `comment_content` text COLLATENOT utf8mb4_unicode_ci NOT NULL,
    `comment_approved` varchar(20) NOT NULL DEFAULT '1',
    `comment_agent` varchar(255) NOT NULL DEFAULT '',
    `comment_type` varchar(20) NOT NULL DEFAULT '',
    `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
    `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`comment_id`),
    KEY `comment_post_id` (`comment_post_id`),
    KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
    KEY `comment_date_gmt` (`comment_date_gmt`),
    KEY `comment_parent` (`comment_parent`),
    KEY `comment_author_email` (`comment_author_email`(10))
);

CREATE TABLE `commentmeta` (
    `meta_id` bigint(20) unsigned NOT NULL auto_increment,
    `comment_id` bigint(20) unsigned NOT NULL default '0',
    `meta_key` varchar(255) default NULL,
    `meta_value` text NOT NULL,
    PRIMARY KEY  (meta_id),
    KEY comment_id (comment_id),
    KEY meta_key (meta_key(191))
);