CREATE TABLE `accounts` (
  `id` int(11) NOT NULL auto_increment,
  `enabled` tinyint(1) default '1',
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `crypted_password` varchar(40) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `remember_token` varchar(255) default NULL,
  `password_reset_code` varchar(40) default NULL,
  `activation_code` varchar(40) default NULL,
  `remember_token_expires_at` datetime default NULL,
  `activated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `yubico_identity` varchar(12) default NULL,
  `last_authenticated_at` datetime default NULL,
  `last_authenticated_with_yubikey` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_accounts_on_login` (`login`),
  UNIQUE KEY `index_accounts_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_countries_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

CREATE TABLE `db_files` (
  `id` int(11) NOT NULL auto_increment,
  `data` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `feed_urls` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `feed_url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `star` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

CREATE TABLE `feeds` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `feed_url_id` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  `link` varchar(255) default NULL,
  `site_link` varchar(255) default NULL,
  `site_title` varchar(255) default NULL,
  `content` text,
  `published` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

CREATE TABLE `open_id_associations` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` blob,
  `secret` blob,
  `handle` varchar(255) default NULL,
  `assoc_type` varchar(255) default NULL,
  `issued` int(11) default NULL,
  `lifetime` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

CREATE TABLE `open_id_nonces` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `open_id_requests` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(40) default NULL,
  `parameters` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_open_id_requests_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `opml_metadatas` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `size` int(11) default NULL,
  `db_file_id` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `personas` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `nickname` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fullname` varchar(255) default NULL,
  `postcode` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `language` varchar(255) default NULL,
  `timezone` varchar(255) default NULL,
  `gender` varchar(1) default NULL,
  `deletable` tinyint(1) NOT NULL default '1',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `address` varchar(255) default NULL,
  `address_additional` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `company_name` varchar(255) default NULL,
  `job_title` varchar(255) default NULL,
  `address_business` varchar(255) default NULL,
  `address_additional_business` varchar(255) default NULL,
  `postcode_business` varchar(255) default NULL,
  `city_business` varchar(255) default NULL,
  `state_business` varchar(255) default NULL,
  `country_business` varchar(255) default NULL,
  `phone_home` varchar(255) default NULL,
  `phone_mobile` varchar(255) default NULL,
  `phone_work` varchar(255) default NULL,
  `phone_fax` varchar(255) default NULL,
  `im_aim` varchar(255) default NULL,
  `im_icq` varchar(255) default NULL,
  `im_msn` varchar(255) default NULL,
  `im_yahoo` varchar(255) default NULL,
  `im_jabber` varchar(255) default NULL,
  `im_skype` varchar(255) default NULL,
  `image_default` varchar(255) default NULL,
  `biography` varchar(255) default NULL,
  `web_default` varchar(255) default NULL,
  `web_blog` varchar(255) default NULL,
  `dob_day` smallint(6) default NULL,
  `dob_month` smallint(6) default NULL,
  `dob_year` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_personas_on_account_id_and_title` (`account_id`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `release_policies` (
  `id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL,
  `type_identifier` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_property` (`site_id`,`property`,`type_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

CREATE TABLE `scaffolds` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `services` (
  `id` int(11) NOT NULL auto_increment,
  `servicename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_services_on_servicename` (`servicename`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `sites` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_sites_on_account_id_and_url` (`account_id`,`url`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `str2md5s` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_timezones_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;

CREATE TABLE `usernames` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_usernames_on_service_id_and_login_name` (`service_id`,`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO schema_migrations (version) VALUES ('1');

INSERT INTO schema_migrations (version) VALUES ('2');

INSERT INTO schema_migrations (version) VALUES ('20080707162005');

INSERT INTO schema_migrations (version) VALUES ('20080908155341');

INSERT INTO schema_migrations (version) VALUES ('20081006203954');

INSERT INTO schema_migrations (version) VALUES ('20081006204010');

INSERT INTO schema_migrations (version) VALUES ('20081013062452');

INSERT INTO schema_migrations (version) VALUES ('20081021172548');

INSERT INTO schema_migrations (version) VALUES ('20081029205505');

INSERT INTO schema_migrations (version) VALUES ('20090103191537');

INSERT INTO schema_migrations (version) VALUES ('20090214100926');

INSERT INTO schema_migrations (version) VALUES ('3');

INSERT INTO schema_migrations (version) VALUES ('4');