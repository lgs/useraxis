-- MySQL dump 10.11
--
-- Host: localhost    Database: useraxis_masquerade
-- ------------------------------------------------------
-- Server version	5.0.45-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'lgs','luca.soave@gmail.com','2a8e030ed4b2404395e807639921b5f8dabdcf4c','e95e9aab7002295084adee2bb034731de5520c60',NULL,NULL,NULL,NULL,'2008-10-06 21:12:55','2008-10-06 21:12:26','2008-10-14 18:06:11',NULL,'2008-10-14 18:06:11',0),(2,1,'Paty','novara.laura@gmail.com','01d91a58b96af5339a224c16d58f61b61b02c3a3','c104e74c790f561de1ee8e67af13a7116d58f93a',NULL,NULL,NULL,NULL,'2008-10-07 07:48:48','2008-10-07 07:47:53','2008-10-07 21:22:34',NULL,'2008-10-07 21:22:34',0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_countries_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF'),(2,'Albania','AL'),(3,'Algeria','DZ'),(4,'American Samoa','AS'),(5,'Andorra','AD'),(6,'Angola','AO'),(7,'Anguilla','AI'),(8,'Antarctica','AQ'),(9,'Antigua and Barbuda','AG'),(10,'Argentina','AR'),(11,'Armenia','AM'),(12,'Aruba','AW'),(13,'Australia','AU'),(14,'Austria','AT'),(15,'Azerbaijan','AZ'),(16,'Bahamas','BS'),(17,'Bahrain','BH'),(18,'Bangladesh','BD'),(19,'Barbados','BB'),(20,'Belarus','BY'),(21,'Belgium','BE'),(22,'Belize','BZ'),(23,'Benin','BJ'),(24,'Bermuda','BM'),(25,'Bhutan','BT'),(26,'Bolivia','BO'),(27,'Bosnia and Herzegovina','BA'),(28,'Botswana','BW'),(29,'Bouvet Island','BV'),(30,'Brazil','BR'),(31,'British Indian Ocean Territory','IO'),(32,'Brunei Darussalam','BN'),(33,'Bulgaria','BG'),(34,'Burkina Faso','BF'),(35,'Burundi','BI'),(36,'Cambodia','KH'),(37,'Cameroon','CM'),(38,'Canada','CA'),(39,'Cape Verde','CV'),(40,'Cayman Islands','KY'),(41,'Central African Republic','CF'),(42,'Chad','TD'),(43,'Chile','CL'),(44,'China','CN'),(45,'Christmas Island','CX'),(46,'Cocos (Keeling) Islands','CC'),(47,'Colombia','CO'),(48,'Comoros','KM'),(49,'Congo','CG'),(50,'Congo, the Democratic Republic of the','CD'),(51,'Cook Islands','CK'),(52,'Costa Rica','CR'),(53,'Cote D\'Ivoire','CI'),(54,'Croatia','HR'),(55,'Cuba','CU'),(56,'Cyprus','CY'),(57,'Czech Republic','CZ'),(58,'Denmark','DK'),(59,'Djibouti','DJ'),(60,'Dominica','DM'),(61,'Dominican Republic','DO'),(62,'Ecuador','EC'),(63,'Egypt','EG'),(64,'El Salvador','SV'),(65,'Equatorial Guinea','GQ'),(66,'Eritrea','ER'),(67,'Estonia','EE'),(68,'Ethiopia','ET'),(69,'Falkland Islands (Malvinas)','FK'),(70,'Faroe Islands','FO'),(71,'Fiji','FJ'),(72,'Finland','FI'),(73,'France','FR'),(74,'French Guiana','GF'),(75,'French Polynesia','PF'),(76,'French Southern Territories','TF'),(77,'Gabon','GA'),(78,'Gambia','GM'),(79,'Georgia','GE'),(80,'Germany','DE'),(81,'Ghana','GH'),(82,'Gibraltar','GI'),(83,'Greece','GR'),(84,'Greenland','GL'),(85,'Grenada','GD'),(86,'Guadeloupe','GP'),(87,'Guam','GU'),(88,'Guatemala','GT'),(89,'Guinea','GN'),(90,'Guinea-Bissau','GW'),(91,'Guyana','GY'),(92,'Haiti','HT'),(93,'Heard Island and Mcdonald Islands','HM'),(94,'Holy See (Vatican City State)','VA'),(95,'Honduras','HN'),(96,'Hong Kong','HK'),(97,'Hungary','HU'),(98,'Iceland','IS'),(99,'India','IN'),(100,'Indonesia','ID'),(101,'Iran, Islamic Republic of','IR'),(102,'Iraq','IQ'),(103,'Ireland','IE'),(104,'Israel','IL'),(105,'Italy','IT'),(106,'Jamaica','JM'),(107,'Japan','JP'),(108,'Jordan','JO'),(109,'Kazakhstan','KZ'),(110,'Kenya','KE'),(111,'Kiribati','KI'),(112,'Korea, Democratic People\'s Republic of','KP'),(113,'Korea, Republic of','KR'),(114,'Kuwait','KW'),(115,'Kyrgyzstan','KG'),(116,'Lao People\'s Democratic Republic','LA'),(117,'Latvia','LV'),(118,'Lebanon','LB'),(119,'Lesotho','LS'),(120,'Liberia','LR'),(121,'Libyan Arab Jamahiriya','LY'),(122,'Liechtenstein','LI'),(123,'Lithuania','LT'),(124,'Luxembourg','LU'),(125,'Macao','MO'),(126,'Macedonia, the Former Yugoslav Republic of','MK'),(127,'Madagascar','MG'),(128,'Malawi','MW'),(129,'Malaysia','MY'),(130,'Maldives','MV'),(131,'Mali','ML'),(132,'Malta','MT'),(133,'Marshall Islands','MH'),(134,'Martinique','MQ'),(135,'Mauritania','MR'),(136,'Mauritius','MU'),(137,'Mayotte','YT'),(138,'Mexico','MX'),(139,'Micronesia, Federated States of','FM'),(140,'Moldova, Republic of','MD'),(141,'Monaco','MC'),(142,'Mongolia','MN'),(143,'Montserrat','MS'),(144,'Morocco','MA'),(145,'Mozambique','MZ'),(146,'Myanmar','MM'),(147,'Namibia','NA'),(148,'Nauru','NR'),(149,'Nepal','NP'),(150,'Netherlands','NL'),(151,'Netherlands Antilles','AN'),(152,'New Caledonia','NC'),(153,'New Zealand','NZ'),(154,'Nicaragua','NI'),(155,'Niger','NE'),(156,'Nigeria','NG'),(157,'Niue','NU'),(158,'Norfolk Island','NF'),(159,'Northern Mariana Islands','MP'),(160,'Norway','NO'),(161,'Oman','OM'),(162,'Pakistan','PK'),(163,'Palau','PW'),(164,'Palestinian Territory, Occupied','PS'),(165,'Panama','PA'),(166,'Papua New Guinea','PG'),(167,'Paraguay','PY'),(168,'Peru','PE'),(169,'Philippines','PH'),(170,'Pitcairn','PN'),(171,'Poland','PL'),(172,'Portugal','PT'),(173,'Puerto Rico','PR'),(174,'Qatar','QA'),(175,'Reunion','RE'),(176,'Romania','RO'),(177,'Russian Federation','RU'),(178,'Rwanda','RW'),(179,'Saint Helena','SH'),(180,'Saint Kitts and Nevis','KN'),(181,'Saint Lucia','LC'),(182,'Saint Pierre and Miquelon','PM'),(183,'Saint Vincent and the Grenadines','VC'),(184,'Samoa','WS'),(185,'San Marino','SM'),(186,'Sao Tome and Principe','ST'),(187,'Saudi Arabia','SA'),(188,'Senegal','SN'),(189,'Serbia and Montenegro','CS'),(190,'Seychelles','SC'),(191,'Sierra Leone','SL'),(192,'Singapore','SG'),(193,'Slovakia','SK'),(194,'Slovenia','SI'),(195,'Solomon Islands','SB'),(196,'Somalia','SO'),(197,'South Africa','ZA'),(198,'South Georgia and the South Sandwich Islands','GS'),(199,'Spain','ES'),(200,'Sri Lanka','LK'),(201,'Sudan','SD'),(202,'Suriname','SR'),(203,'Svalbard and Jan Mayen','SJ'),(204,'Swaziland','SZ'),(205,'Sweden','SE'),(206,'Switzerland','CH'),(207,'Syrian Arab Republic','SY'),(208,'Taiwan, Province of China','TW'),(209,'Tajikistan','TJ'),(210,'Tanzania, United Republic of','TZ'),(211,'Thailand','TH'),(212,'Timor-Leste','TL'),(213,'Togo','TG'),(214,'Tokelau','TK'),(215,'Tonga','TO'),(216,'Trinidad and Tobago','TT'),(217,'Tunisia','TN'),(218,'Turkey','TR'),(219,'Turkmenistan','TM'),(220,'Turks and Caicos Islands','TC'),(221,'Tuvalu','TV'),(222,'Uganda','UG'),(223,'Ukraine','UA'),(224,'United Arab Emirates','AE'),(225,'United Kingdom','GB'),(226,'United States','US'),(227,'United States Minor Outlying Islands','UM'),(228,'Uruguay','UY'),(229,'Uzbekistan','UZ'),(230,'Vanuatu','VU'),(231,'Venezuela','VE'),(232,'Viet Nam','VN'),(233,'Virgin Islands, British','VG'),(234,'Virgin Islands, U.S.','VI'),(235,'Wallis and Futuna','WF'),(236,'Western Sahara','EH'),(237,'Yemen','YE'),(238,'Zambia','ZM'),(239,'Zimbabwe','ZW');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_files`
--

DROP TABLE IF EXISTS `db_files`;
CREATE TABLE `db_files` (
  `id` int(11) NOT NULL auto_increment,
  `data` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_files`
--

LOCK TABLES `db_files` WRITE;
/*!40000 ALTER TABLE `db_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Abkhazian','AB'),(2,'Afar','AA'),(3,'Afrikaans','AF'),(4,'Albanian','SQ'),(5,'Amharic','AM'),(6,'Arabic','AR'),(7,'Armenian','HY'),(8,'Assamese','AS'),(9,'Aymara','AY'),(10,'Azerbaijani','AZ'),(11,'Bashkir','BA'),(12,'Basque','EU'),(13,'Bengali','BN'),(14,'Bhutani','DZ'),(15,'Bihari','BH'),(16,'Bislama','BI'),(17,'Breton','BR'),(18,'Bulgarian','BG'),(19,'Burmese','MY'),(20,'Byelorussian','BE'),(21,'Cambodian','KM'),(22,'Catalan','CA'),(23,'Chinese (traditional)','ZH_TW'),(24,'Chinese (simplified)','ZH_CN'),(25,'Corsican','CO'),(26,'Croatian','HR'),(27,'Czech','CS'),(28,'Danish','DA'),(29,'Dutch','NL'),(30,'English','EN'),(31,'Esperanto','EO'),(32,'Estonian','ET'),(33,'Faeroese','FO'),(34,'Fiji','FJ'),(35,'Finnish','FI'),(36,'French','FR'),(37,'Frisian','FY'),(38,'Gaelic','GD'),(39,'Galician','GL'),(40,'Georgian','KA'),(41,'German','DE'),(42,'Greek','EL'),(43,'Greenlandic','KL'),(44,'Guarani','GN'),(45,'Gujarati','GU'),(46,'Hausa','HA'),(47,'Hebrew','IW'),(48,'Hindi','HI'),(49,'Hungarian','HU'),(50,'Icelandic','IS'),(51,'Indonesian','IN'),(52,'Interlingua','IA'),(53,'Interlingue','IE'),(54,'Inupiak','IK'),(55,'Irish','GA'),(56,'Italian','IT'),(57,'Japanese','JA'),(58,'Javanese','JW'),(59,'Kannada','KN'),(60,'Kashmiri','KS'),(61,'Kazakh','KK'),(62,'Kinyarwanda','RW'),(63,'Kirghiz','KY'),(64,'Kirundi','RN'),(65,'Korean','KO'),(66,'Kurdish','KU'),(67,'Laothian','LO'),(68,'Latin','LA'),(69,'Latvian','LV'),(70,'Lingala','LN'),(71,'Lithuanian','LT'),(72,'Macedonian','MK'),(73,'Malagasy','MG'),(74,'Malay','MS'),(75,'Malayalam','ML'),(76,'Maltese','MT'),(77,'Maori','MI'),(78,'Marathi','MR'),(79,'Moldavian','MO'),(80,'Mongolian','MN'),(81,'Nauru','NA'),(82,'Nepali','NE'),(83,'Norwegian','NO'),(84,'Occitan','OC'),(85,'Oriya','OR'),(86,'Oromo','OM'),(87,'Pashto','PS'),(88,'Persian','FA'),(89,'Polish','PL'),(90,'Portuguese','PT'),(91,'PortuguÃªs (Brasil)','PT_BR'),(92,'Punjabi','PA'),(93,'Quechua','QU'),(94,'Rhaeto-Romance','RM'),(95,'Romanian','RO'),(96,'Russian','RU'),(97,'Samoan','SM'),(98,'Sangro','SG'),(99,'Sanskrit','SA'),(100,'Serbian','SR'),(101,'Serbo-Croatian','SH'),(102,'Sesotho','ST'),(103,'Setswana','TN'),(104,'Shona','SN'),(105,'Sindhi','SD'),(106,'Singhalese','SI'),(107,'Siswati','SS'),(108,'Slovak','SK'),(109,'Slovenian','SL'),(110,'Somali','SO'),(111,'Spanish','ES'),(112,'Sudanese','SU'),(113,'Swahili','SW'),(114,'Swedish','SV'),(115,'Tagalog','TL'),(116,'Tajik','TG'),(117,'Tamil','TA'),(118,'Tatar','TT'),(119,'Telugu','TE'),(120,'Thai','TH'),(121,'Tibetan','BO'),(122,'Tigrinya','TI'),(123,'Tonga','TO'),(124,'Tsonga','TS'),(125,'Turkish','TR'),(126,'Turkmen','TK'),(127,'Twi','TW'),(128,'Ukrainian','UK'),(129,'Urdu','UR'),(130,'Uzbek','UZ'),(131,'Vietnamese','VI'),(132,'Volapuk','VO'),(133,'Welsh','CY'),(134,'Wolof','WO'),(135,'Xhosa','XH'),(136,'Yiddish','JI'),(137,'Yoruba','YO'),(138,'Zulu','ZU');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_associations`
--

DROP TABLE IF EXISTS `open_id_associations`;
CREATE TABLE `open_id_associations` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` blob,
  `secret` blob,
  `handle` varchar(255) default NULL,
  `assoc_type` varchar(255) default NULL,
  `issued` int(11) default NULL,
  `lifetime` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_id_associations`
--

LOCK TABLES `open_id_associations` WRITE;
/*!40000 ALTER TABLE `open_id_associations` DISABLE KEYS */;
INSERT INTO `open_id_associations` VALUES (1,'http://localhost/|dumb',' 7Zö‰Žî¾Ã†c>\n¥/Ûý¤','{HMAC-SHA1}{48ea8228}{XzpyjA==}','HMAC-SHA1',1223328296,1209600),(2,'http://localhost/|normal','dA³›m?lZã°l¾Õ¢>','{HMAC-SHA1}{48ed326e}{cCE/wQ==}','HMAC-SHA1',1223504494,1209600);
/*!40000 ALTER TABLE `open_id_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_nonces`
--

DROP TABLE IF EXISTS `open_id_nonces`;
CREATE TABLE `open_id_nonces` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_id_nonces`
--

LOCK TABLES `open_id_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_requests`
--

DROP TABLE IF EXISTS `open_id_requests`;
CREATE TABLE `open_id_requests` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(40) default NULL,
  `parameters` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_open_id_requests_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_id_requests`
--

LOCK TABLES `open_id_requests` WRITE;
/*!40000 ALTER TABLE `open_id_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opml_metadatas`
--

DROP TABLE IF EXISTS `opml_metadatas`;
CREATE TABLE `opml_metadatas` (
  `id` int(11) NOT NULL auto_increment,
  `size` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `db_file_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opml_metadatas`
--

LOCK TABLES `opml_metadatas` WRITE;
/*!40000 ALTER TABLE `opml_metadatas` DISABLE KEYS */;
/*!40000 ALTER TABLE `opml_metadatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,1,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-10-06 21:12:55','2008-10-06 21:12:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-10-07 07:48:48','2008-10-07 07:48:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'job','lgs','','Luca G.Soave','','','','','',1,'2008-10-12 18:12:55','2008-10-12 18:12:55','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_policies`
--

DROP TABLE IF EXISTS `release_policies`;
CREATE TABLE `release_policies` (
  `id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL,
  `type_identifier` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_property` (`site_id`,`property`,`type_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `release_policies`
--

LOCK TABLES `release_policies` WRITE;
/*!40000 ALTER TABLE `release_policies` DISABLE KEYS */;
INSERT INTO `release_policies` VALUES (2,1,'email','email'),(1,1,'nickname','nickname');
/*!40000 ALTER TABLE `release_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('2'),('20080707162005'),('20080908155341'),('20081006203954'),('20081006204010'),('20081013062452'),('3'),('4');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `servicename` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_services_on_servicename` (`servicename`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'lgsicious','delicious','http://delicious.com/','2008-10-14 06:01:49','2008-10-14 06:01:49'),(2,'lgsff','lastfm','http://www.lastfm.it/','2008-10-14 06:05:35','2008-10-14 06:05:35'),(3,'lucasoave','linkedin','http://www.linkedin.com/in/','2008-10-14 06:06:46','2008-10-14 06:06:46');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_sites_on_account_id_and_url` (`account_id`,`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,1,1,'http://www.aiderss.com/authenticate','2008-10-06 21:24:56','2008-10-06 21:24:56');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_timezones_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmera'),(6,'Africa/Bamako'),(7,'Africa/Bangui'),(8,'Africa/Banjul'),(9,'Africa/Bissau'),(10,'Africa/Blantyre'),(11,'Africa/Brazzaville'),(12,'Africa/Bujumbura'),(13,'Africa/Cairo'),(14,'Africa/Casablanca'),(15,'Africa/Ceuta'),(16,'Africa/Conakry'),(17,'Africa/Dakar'),(18,'Africa/Dar_es_Salaam'),(19,'Africa/Djibouti'),(20,'Africa/Douala'),(21,'Africa/El_Aaiun'),(22,'Africa/Freetown'),(23,'Africa/Gaborone'),(24,'Africa/Harare'),(25,'Africa/Johannesburg'),(26,'Africa/Kampala'),(27,'Africa/Khartoum'),(28,'Africa/Kigali'),(29,'Africa/Kinshasa'),(30,'Africa/Lagos'),(31,'Africa/Libreville'),(32,'Africa/Lome'),(33,'Africa/Luanda'),(34,'Africa/Lubumbashi'),(35,'Africa/Lusaka'),(36,'Africa/Malabo'),(37,'Africa/Maputo'),(38,'Africa/Maseru'),(39,'Africa/Mbabane'),(40,'Africa/Mogadishu'),(41,'Africa/Monrovia'),(42,'Africa/Nairobi'),(43,'Africa/Ndjamena'),(44,'Africa/Niamey'),(45,'Africa/Nouakchott'),(46,'Africa/Ouagadougou'),(47,'Africa/Porto'),(48,'Africa/Sao_Tome'),(49,'Africa/Tripoli'),(50,'Africa/Tunis'),(51,'Africa/Windhoek'),(52,'America/Adak'),(53,'America/Anchorage'),(54,'America/Anguilla'),(55,'America/Antigua'),(56,'America/Araguaina'),(57,'America/Argentina/Buenos_Aires'),(58,'America/Argentina/Catamarca'),(59,'America/Argentina/Cordoba'),(60,'America/Argentina/Jujuy'),(61,'America/Argentina/La_Rioja'),(62,'America/Argentina/Mendoza'),(63,'America/Argentina/Rio_Gallegos'),(64,'America/Argentina/San_Juan'),(65,'America/Argentina/Tucuman'),(66,'America/Argentina/Ushuaia'),(67,'America/Aruba'),(68,'America/Asuncion'),(69,'America/Bahia'),(70,'America/Barbados'),(71,'America/Belem'),(72,'America/Belize'),(73,'America/Boa_Vista'),(74,'America/Bogota'),(75,'America/Boise'),(76,'America/Cambridge_Bay'),(77,'America/Campo_Grande'),(78,'America/Cancun'),(79,'America/Caracas'),(80,'America/Cayenne'),(81,'America/Cayman'),(82,'America/Chicago'),(83,'America/Chihuahua'),(84,'America/Coral_Harbour'),(85,'America/Costa_Rica'),(86,'America/Cuiaba'),(87,'America/Curacao'),(88,'America/Danmarkshavn'),(89,'America/Dawson'),(90,'America/Dawson_Creek'),(91,'America/Denver'),(92,'America/Detroit'),(93,'America/Dominica'),(94,'America/Edmonton'),(95,'America/Eirunepe'),(96,'America/El_Salvador'),(97,'America/Fortaleza'),(98,'America/Glace_Bay'),(99,'America/Godthab'),(100,'America/Goose_Bay'),(101,'America/Grand_Turk'),(102,'America/Grenada'),(103,'America/Guadeloupe'),(104,'America/Guatemala'),(105,'America/Guayaquil'),(106,'America/Guyana'),(107,'America/Halifax'),(108,'America/Havana'),(109,'America/Hermosillo'),(110,'America/Indiana/Indianapolis'),(111,'America/Indiana/Knox'),(112,'America/Indiana/Marengo'),(113,'America/Indiana/Petersburg'),(114,'America/Indiana/Vevay'),(115,'America/Indiana/Vincennes'),(116,'America/Inuvik'),(117,'America/Iqaluit'),(118,'America/Jamaica'),(119,'America/Juneau'),(120,'America/Kentucky/Louisville'),(121,'America/Kentucky/Monticello'),(122,'America/La_Paz'),(123,'America/Lima'),(124,'America/Los_Angeles'),(125,'America/Maceio'),(126,'America/Managua'),(127,'America/Manaus'),(128,'America/Martinique'),(129,'America/Mazatlan'),(130,'America/Menominee'),(131,'America/Merida'),(132,'America/Mexico_City'),(133,'America/Miquelon'),(134,'America/Moncton'),(135,'America/Monterrey'),(136,'America/Montevideo'),(137,'America/Montreal'),(138,'America/Montserrat'),(139,'America/Nassau'),(140,'America/New_York'),(141,'America/Nipigon'),(142,'America/Nome'),(143,'America/Noronha'),(144,'America/North_Dakota/Center'),(145,'America/Panama'),(146,'America/Pangnirtung'),(147,'America/Paramaribo'),(148,'America/Phoenix'),(149,'America/Port'),(151,'America/Porto_Velho'),(150,'America/Port_of_Spain'),(152,'America/Puerto_Rico'),(153,'America/Rainy_River'),(154,'America/Rankin_Inlet'),(155,'America/Recife'),(156,'America/Regina'),(157,'America/Rio_Branco'),(158,'America/Santiago'),(159,'America/Santo_Domingo'),(160,'America/Sao_Paulo'),(161,'America/Scoresbysund'),(162,'America/Shiprock'),(163,'America/St_Johns'),(164,'America/St_Kitts'),(165,'America/St_Lucia'),(166,'America/St_Thomas'),(167,'America/St_Vincent'),(168,'America/Swift_Current'),(169,'America/Tegucigalpa'),(170,'America/Thule'),(171,'America/Thunder_Bay'),(172,'America/Tijuana'),(173,'America/Toronto'),(174,'America/Tortola'),(175,'America/Vancouver'),(176,'America/Whitehorse'),(177,'America/Winnipeg'),(178,'America/Yakutat'),(179,'America/Yellowknife'),(180,'Antarctica/Casey'),(181,'Antarctica/Davis'),(182,'Antarctica/DumontDUrville'),(183,'Antarctica/Mawson'),(184,'Antarctica/McMurdo'),(185,'Antarctica/Palmer'),(186,'Antarctica/Rothera'),(187,'Antarctica/South_Pole'),(188,'Antarctica/Syowa'),(189,'Antarctica/Vostok'),(190,'Arctic/Longyearbyen'),(191,'Asia/Aden'),(192,'Asia/Almaty'),(193,'Asia/Amman'),(194,'Asia/Anadyr'),(195,'Asia/Aqtau'),(196,'Asia/Aqtobe'),(197,'Asia/Ashgabat'),(198,'Asia/Baghdad'),(199,'Asia/Bahrain'),(200,'Asia/Baku'),(201,'Asia/Bangkok'),(202,'Asia/Beirut'),(203,'Asia/Bishkek'),(204,'Asia/Brunei'),(205,'Asia/Calcutta'),(206,'Asia/Choibalsan'),(207,'Asia/Chongqing'),(208,'Asia/Colombo'),(209,'Asia/Damascus'),(210,'Asia/Dhaka'),(211,'Asia/Dili'),(212,'Asia/Dubai'),(213,'Asia/Dushanbe'),(214,'Asia/Gaza'),(215,'Asia/Harbin'),(216,'Asia/Hong_Kong'),(217,'Asia/Hovd'),(218,'Asia/Irkutsk'),(219,'Asia/Jakarta'),(220,'Asia/Jayapura'),(221,'Asia/Jerusalem'),(222,'Asia/Kabul'),(223,'Asia/Kamchatka'),(224,'Asia/Karachi'),(225,'Asia/Kashgar'),(226,'Asia/Katmandu'),(227,'Asia/Krasnoyarsk'),(228,'Asia/Kuala_Lumpur'),(229,'Asia/Kuching'),(230,'Asia/Kuwait'),(231,'Asia/Macau'),(232,'Asia/Magadan'),(233,'Asia/Makassar'),(234,'Asia/Manila'),(235,'Asia/Muscat'),(236,'Asia/Nicosia'),(237,'Asia/Novosibirsk'),(238,'Asia/Omsk'),(239,'Asia/Oral'),(240,'Asia/Phnom_Penh'),(241,'Asia/Pontianak'),(242,'Asia/Pyongyang'),(243,'Asia/Qatar'),(244,'Asia/Qyzylorda'),(245,'Asia/Rangoon'),(246,'Asia/Riyadh'),(247,'Asia/Saigon'),(248,'Asia/Sakhalin'),(249,'Asia/Samarkand'),(250,'Asia/Seoul'),(251,'Asia/Shanghai'),(252,'Asia/Singapore'),(253,'Asia/Taipei'),(254,'Asia/Tashkent'),(255,'Asia/Tbilisi'),(256,'Asia/Tehran'),(257,'Asia/Thimphu'),(258,'Asia/Tokyo'),(259,'Asia/Ulaanbaatar'),(260,'Asia/Urumqi'),(261,'Asia/Vientiane'),(262,'Asia/Vladivostok'),(263,'Asia/Yakutsk'),(264,'Asia/Yekaterinburg'),(265,'Asia/Yerevan'),(266,'Atlantic/Azores'),(267,'Atlantic/Bermuda'),(268,'Atlantic/Canary'),(269,'Atlantic/Cape_Verde'),(270,'Atlantic/Faeroe'),(271,'Atlantic/Jan_Mayen'),(272,'Atlantic/Madeira'),(273,'Atlantic/Reykjavik'),(274,'Atlantic/South_Georgia'),(276,'Atlantic/Stanley'),(275,'Atlantic/St_Helena'),(277,'Australia/Adelaide'),(278,'Australia/Brisbane'),(279,'Australia/Broken_Hill'),(280,'Australia/Currie'),(281,'Australia/Darwin'),(282,'Australia/Hobart'),(283,'Australia/Lindeman'),(284,'Australia/Lord_Howe'),(285,'Australia/Melbourne'),(286,'Australia/Perth'),(287,'Australia/Sydney'),(288,'Europe/Amsterdam'),(289,'Europe/Andorra'),(290,'Europe/Athens'),(291,'Europe/Belgrade'),(292,'Europe/Berlin'),(293,'Europe/Bratislava'),(294,'Europe/Brussels'),(295,'Europe/Bucharest'),(296,'Europe/Budapest'),(297,'Europe/Chisinau'),(298,'Europe/Copenhagen'),(299,'Europe/Dublin'),(300,'Europe/Gibraltar'),(301,'Europe/Helsinki'),(302,'Europe/Istanbul'),(303,'Europe/Kaliningrad'),(304,'Europe/Kiev'),(305,'Europe/Lisbon'),(306,'Europe/Ljubljana'),(307,'Europe/London'),(308,'Europe/Luxembourg'),(309,'Europe/Madrid'),(310,'Europe/Malta'),(311,'Europe/Mariehamn'),(312,'Europe/Minsk'),(313,'Europe/Monaco'),(314,'Europe/Moscow'),(315,'Europe/Oslo'),(316,'Europe/Paris'),(317,'Europe/Prague'),(318,'Europe/Riga'),(319,'Europe/Rome'),(320,'Europe/Samara'),(321,'Europe/San_Marino'),(322,'Europe/Sarajevo'),(323,'Europe/Simferopol'),(324,'Europe/Skopje'),(325,'Europe/Sofia'),(326,'Europe/Stockholm'),(327,'Europe/Tallinn'),(328,'Europe/Tirane'),(329,'Europe/Uzhgorod'),(330,'Europe/Vaduz'),(331,'Europe/Vatican'),(332,'Europe/Vienna'),(333,'Europe/Vilnius'),(334,'Europe/Warsaw'),(335,'Europe/Zagreb'),(336,'Europe/Zaporozhye'),(337,'Europe/Zurich'),(338,'Indian/Antananarivo'),(339,'Indian/Chagos'),(340,'Indian/Christmas'),(341,'Indian/Cocos'),(342,'Indian/Comoro'),(343,'Indian/Kerguelen'),(344,'Indian/Mahe'),(345,'Indian/Maldives'),(346,'Indian/Mauritius'),(347,'Indian/Mayotte'),(348,'Indian/Reunion'),(349,'Pacific/Apia'),(350,'Pacific/Auckland'),(351,'Pacific/Chatham'),(352,'Pacific/Easter'),(353,'Pacific/Efate'),(354,'Pacific/Enderbury'),(355,'Pacific/Fakaofo'),(356,'Pacific/Fiji'),(357,'Pacific/Funafuti'),(358,'Pacific/Galapagos'),(359,'Pacific/Gambier'),(360,'Pacific/Guadalcanal'),(361,'Pacific/Guam'),(362,'Pacific/Honolulu'),(363,'Pacific/Johnston'),(364,'Pacific/Kiritimati'),(365,'Pacific/Kosrae'),(366,'Pacific/Kwajalein'),(367,'Pacific/Majuro'),(368,'Pacific/Marquesas'),(369,'Pacific/Midway'),(370,'Pacific/Nauru'),(371,'Pacific/Niue'),(372,'Pacific/Norfolk'),(373,'Pacific/Noumea'),(374,'Pacific/Pago_Pago'),(375,'Pacific/Palau'),(376,'Pacific/Pitcairn'),(377,'Pacific/Ponape'),(378,'Pacific/Port_Moresby'),(379,'Pacific/Rarotonga'),(380,'Pacific/Saipan'),(381,'Pacific/Tahiti'),(382,'Pacific/Tarawa'),(383,'Pacific/Tongatapu'),(384,'Pacific/Truk'),(385,'Pacific/Wake'),(386,'Pacific/Wallis');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-10-14 21:03:59
