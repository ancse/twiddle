
CREATE TABLE options (
  option_id bigint(20) unsigned NOT NULL auto_increment,
  option_name varchar(191) NOT NULL UNIQUE default '',
  option_value longtext NOT NULL,
  autoload varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (option_id),
) ;

CREATE TABLE postmeta (
  meta_id bigint(20) unsigned NOT NULL auto_increment,
  post_id bigint(20) unsigned NOT NULL default '0',
  meta_key varchar(255) default NULL,
  meta_value longtext,
  PRIMARY KEY  (meta_id),
  KEY post_id (post_id),
  KEY meta_key (meta_key($max_index_length))
) ;

CREATE TABLE posts (
  ID bigint(20) unsigned NOT NULL auto_increment,
  post_author bigint(20) unsigned NOT NULL default '0',
  post_date datetime NOT NULL default '0000-00-00 00:00:00',
  post_date_gmt datetime NOT NULL default '0000-00-00 00:00:00',
  post_content longtext NOT NULL,
  post_title text NOT NULL,
  post_excerpt text NOT NULL,
  post_status varchar(20) NOT NULL default 'publish',
  comment_status varchar(20) NOT NULL default 'open',
  ping_status varchar(20) NOT NULL default 'open',
  post_password varchar(255) NOT NULL default '',
  post_name varchar(200) NOT NULL default '',
  to_ping text NOT NULL,
  pinged text NOT NULL,
  post_modified datetime NOT NULL default '0000-00-00 00:00:00',
  post_modified_gmt datetime NOT NULL default '0000-00-00 00:00:00',
  post_content_filtered longtext NOT NULL,
  post_parent bigint(20) unsigned NOT NULL default '0',
  guid varchar(255) NOT NULL default '',
  menu_order int(11) NOT NULL default '0',
  post_type varchar(20) NOT NULL default 'post',
  post_mime_type varchar(100) NOT NULL default '',
  comment_count bigint(20) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY post_name (post_name($max_index_length)),
  KEY type_status_date (post_type,post_status,post_date,ID),
  KEY post_parent (post_parent),
  KEY post_author (post_author)
) ;

CREATE TABLE users (
    ID bigint(20) unsigned NOT NULL auto_increment,
    user_login varchar(60) NOT NULL default '',
    user_pass varchar(255) NOT NULL default '',
    user_nicename varchar(50) NOT NULL default '',
    user_email varchar(100) NOT NULL default '',
    user_url varchar(100) NOT NULL default '',
    user_registered datetime NOT NULL default '0000-00-00 00:00:00',
    user_activation_key varchar(255) NOT NULL default '',
    user_status int(11) NOT NULL default '0',
    display_name varchar(250) NOT NULL default '',
    PRIMARY KEY  (ID),
    KEY user_login_key (user_login),
    KEY user_nicename (user_nicename),
    KEY user_email (user_email)
);

  CREATE TABLE users (
  ID bigint(20) unsigned NOT NULL auto_increment,
  user_login varchar(60) NOT NULL default '',
  user_pass varchar(255) NOT NULL default '',
  user_nicename varchar(50) NOT NULL default '',
  user_email varchar(100) NOT NULL default '',
  user_url varchar(100) NOT NULL default '',
  user_registered datetime NOT NULL default '0000-00-00 00:00:00',
  user_activation_key varchar(255) NOT NULL default '',
  user_status int(11) NOT NULL default '0',
  display_name varchar(250) NOT NULL default '',
  spam tinyint(2) NOT NULL default '0',
  deleted tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY user_login_key (user_login),
  KEY user_nicename (user_nicename),
  KEY user_email (user_email)
);

  CREATE TABLE usermeta (
  umeta_id bigint(20) unsigned NOT NULL auto_increment,
  user_id bigint(20) unsigned NOT NULL default '0',
  meta_key varchar(255) default NULL,
  meta_value longtext,
  PRIMARY KEY  (umeta_id),
  KEY user_id (user_id),
  KEY meta_key (meta_key($max_index_length))
);

  CREATE TABLE blogs (
  blog_id bigint(20) NOT NULL auto_increment,
  site_id bigint(20) NOT NULL default '0',
  domain varchar(200) NOT NULL default '',
  path varchar(100) NOT NULL default '',
  registered datetime NOT NULL default '0000-00-00 00:00:00',
  last_updated datetime NOT NULL default '0000-00-00 00:00:00',
  public tinyint(2) NOT NULL default '1',
  archived tinyint(2) NOT NULL default '0',
  mature tinyint(2) NOT NULL default '0',
  spam tinyint(2) NOT NULL default '0',
  deleted tinyint(2) NOT NULL default '0',
  lang_id int(11) NOT NULL default '0',
  PRIMARY KEY  (blog_id),
  KEY domain (domain(50),path(5)),
  KEY lang_id (lang_id)
);
