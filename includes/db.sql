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
CREATE TABLE usermeta (
    umeta_id bigint(20) unsigned NOT NULL auto_increment,
    user_id bigint(20) unsigned NOT NULL default '0',
    meta_key varchar(255) default NULL,
    meta_value longtext,
    PRIMARY KEY  (umeta_id),
    KEY user_id (user_id),
    KEY meta_key (meta_key(191))
);

CREATE TABLE invitations (
    invitation_id bigint(20) unsigned NOT NULL auto_increment,
    sender_id bigint(20) NOT NULL,
    receiver_id bigint(20) NOT NULL,
    status varchar(6) NOT NULL DEFAULT 'unseen',
    message varchar(160),
    PRIMARY KEY (invitation_id)
);

CREATE TABLE messages (
    message_id bigint(20) unsigned NOT NULL auto_increment,
    message longtext NOT NULL,
    sender_id bigint(20) unsigned  NOT NULL,
    receiver_id bigint(20) NOT NULL,
    dateline datetime NOT NULL,
    PRIMARY KEY (message_id)
);

CREATE TABLE options (
    option_id bigint(20) unsigned NOT NULL auto_increment,
    option_name varchar(191) NOT NULL UNIQUE default '',
    option_value longtext NOT NULL,
    autoload varchar(20) NOT NULL default 'yes',
    PRIMARY KEY  (option_id)
);