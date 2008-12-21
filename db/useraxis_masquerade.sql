-- MySQL dump 10.11
--
-- Host: localhost    Database: useraxis_masquerade
-- ------------------------------------------------------
-- Server version	5.0.67-community-log

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'lgs','luca.soave@gmail.com','1c3e5e053dd8ee3a1f9aaf5cecfb828120e3a5d5','45eb40d6220ecf5f051f80f39038c9afb8671d14',NULL,NULL,NULL,NULL,'2008-12-20 10:04:01','2008-12-20 10:03:40','2008-12-21 11:30:25',NULL,'2008-12-21 11:30:25',0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_countries_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `db_files` (
  `id` int(11) NOT NULL auto_increment,
  `data` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `db_files`
--

LOCK TABLES `db_files` WRITE;
/*!40000 ALTER TABLE `db_files` DISABLE KEYS */;
INSERT INTO `db_files` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<opml version=\"1.0\">\n    <head>\n        <title>lgs subscriptions in Google Reader</title>\n    </head>\n    <body>\n        <outline text=\"Antenore Gatta Blog\" title=\"Antenore Gatta Blog\"\n            type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/AntenoreBlog\" htmlUrl=\"http://antenore.blogspot.com/\"/>\n        <outline text=\"Bogle\'s Blog\" title=\"Bogle\'s Blog\" type=\"rss\"\n            xmlUrl=\"http://thebogles.com/blog/feed/\" htmlUrl=\"http://thebogles.com/blog\"/>\n        <outline text=\"Building Feedly\" title=\"Building Feedly\"\n            type=\"rss\" xmlUrl=\"http://edwink.devhd.com/feed/\" htmlUrl=\"http://edwink.devhd.com\"/>\n        <outline text=\"CohesiveFT Elastic Server\"\n            title=\"CohesiveFT Elastic Server\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/elastic-server\" htmlUrl=\"http://blog.elasticserver.com/\"/>\n        <outline text=\"Creating Passionate Users\"\n            title=\"Creating Passionate Users\" type=\"rss\"\n            xmlUrl=\"http://headrush.typepad.com/creating_passionate_users/atom.xml\" htmlUrl=\"http://headrush.typepad.com/creating_passionate_users/\"/>\n        <outline text=\"DataBlog (tm) .net / Data Blog Analysis\"\n            title=\"DataBlog (tm) .net / Data Blog Analysis\" type=\"rss\"\n            xmlUrl=\"http://www.datablog.net/atom.xml\" htmlUrl=\"http://www.datablog.net/\"/>\n        <outline text=\"DataPortability.org Format Updates\"\n            title=\"DataPortability.org Format Updates\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/DataPortability\" htmlUrl=\"http://192.168.254.26/myfeed/blog/default/ChrisSaad_DataPortability\"/>\n        <outline text=\"DBpedia\" title=\"DBpedia\" type=\"rss\"\n            xmlUrl=\"http://blog.dbpedia.org/feed/\" htmlUrl=\"http://blog.dbpedia.org\"/>\n        <outline text=\"Here Comes Everybody\"\n            title=\"Here Comes Everybody\" type=\"rss\"\n            xmlUrl=\"http://shirky.com/writings/rss.cgi\" htmlUrl=\"http://www.shirky.com/herecomeseverybody/\"/>\n        <outline text=\"louisgray.com\" title=\"louisgray.com\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/LouisgraycomLive\" htmlUrl=\"http://www.louisgray.com/live/\"/>\n        <outline text=\"Many Eyes blog\" title=\"Many Eyes blog\" type=\"rss\"\n            xmlUrl=\"http://manyeyes.alphaworks.ibm.com/blog/feed/\" htmlUrl=\"http://manyeyes.alphaworks.ibm.com/blog\"/>\n        <outline text=\"Microblogging.it\" title=\"Microblogging.it\"\n            type=\"rss\" xmlUrl=\"http://www.microblogging.it/feed/\" htmlUrl=\"http://www.microblogging.it\"/>\n        <outline text=\"Mister Bleigh - Blog\"\n            title=\"Mister Bleigh - Blog\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/mbleigh/\" htmlUrl=\"http://www.mbleigh.com\"/>\n        <outline text=\"OpenData Feeds - PostRank (PostRank: Best)\"\n            title=\"OpenData Feeds - PostRank (PostRank: Best)\"\n            type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/OpendataFeeds-Aiderssbest\" htmlUrl=\"http://www.google.com/reader/view/feed%2Fhttp%3A%2F%2Ffeeds.feedburner.com%2FOpendataFeeds-Aiderssbest\"/>\n        <outline text=\"opml@feedhub\" title=\"opml@feedhub\" type=\"rss\"\n            xmlUrl=\"http://www.feedhub.com/iris/feeds/23277?c=688a61fc8fb08c4370d927de5b0234fca0c20780b42ac05193540a52f1984086\" htmlUrl=\"http://www.feedhub.com/iris/feeds/23277/memes\"/>\n        <outline text=\"OUseful Info\" title=\"OUseful Info\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/ouseful\" htmlUrl=\"http://ouseful.wordpress.com\"/>\n        <outline\n            text=\"Punto Informatico, il quotidiano di internet dal 1996\"\n            title=\"Punto Informatico, il quotidiano di internet dal 1996\"\n            type=\"rss\"\n            xmlUrl=\"http://punto-informatico.it/xml/atomc.aspx?i=2481209\" htmlUrl=\"http://punto-informatico.it/index.aspx\"/>\n        <outline text=\"ReadWriteWeb\" title=\"ReadWriteWeb\" type=\"rss\"\n            xmlUrl=\"http://www.readwriteweb.com/rss.xml\" htmlUrl=\"http://www.readwriteweb.com/\"/>\n        <outline text=\"Recent Wordles\" title=\"Recent Wordles\" type=\"rss\"\n            xmlUrl=\"http://wordle.net/gallery/atom\" htmlUrl=\"http://www.wordle.net/gallery\"/>\n        <outline text=\"Recently Added Repositories\"\n            title=\"Recently Added Repositories\" type=\"rss\"\n            xmlUrl=\"http://github.com/repositories.atom\" htmlUrl=\"http://github.com/repositories\"/>\n        <outline text=\"Robin Good\'s Latest News\"\n            title=\"Robin Good\'s Latest News\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/Robin-Good-Latest-News\" htmlUrl=\"http://www.masternewmedia.org/index.html\"/>\n        <outline text=\"Ruby, Rails, Web2.0\" title=\"Ruby, Rails, Web2.0\"\n            type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/RubyRailsWeb20\" htmlUrl=\"http://www.rubyrailways.com\"/>\n        <outline text=\"scRUBYt!\" title=\"scRUBYt!\" type=\"rss\"\n            xmlUrl=\"http://scrubyt.org/blog/feed/\" htmlUrl=\"http://scrubyt.org/blog\"/>\n        <outline text=\"Universal Recommendations\"\n            title=\"Universal Recommendations\" type=\"rss\"\n            xmlUrl=\"http://unirec.blogspot.com/feeds/posts/default\" htmlUrl=\"http://unirec.blogspot.com/\"/>\n        <outline text=\"UserVoice Blog\" title=\"UserVoice Blog\" type=\"rss\"\n            xmlUrl=\"http://blog.uservoice.com/feed/\" htmlUrl=\"http://blog.uservoice.com\"/>\n        <outline text=\"What\'s Up In Ruby\" title=\"What\'s Up In Ruby\"\n            type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/whatsupinruby\" htmlUrl=\"http://www.whatsupinruby.com/\"/>\n        <outline text=\"Zen and the Art of Programming\"\n            title=\"Zen and the Art of Programming\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/ZenAndTheArtOfRubyProgramming\" htmlUrl=\"http://antoniocangiano.com/\"/>\n        <outline title=\"API and Mashups\" text=\"API and Mashups\">\n            <outline text=\"Gnip Blog\" title=\"Gnip Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/gnip\" htmlUrl=\"http://blog.gnipcentral.com\"/>\n            <outline text=\"ProgrammableWeb\" title=\"ProgrammableWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/programmableweb\" htmlUrl=\"http://blog.programmableweb.com\"/>\n        </outline>\n        <outline title=\"Domaineers\" text=\"Domaineers\">\n            <outline\n                text=\"Domain Name News, The Domain Industry News, ICANN News, Registry News, Domainer News\"\n                title=\"Domain Name News, The Domain Industry News, ICANN News, Registry News, Domainer News\"\n                type=\"rss\" xmlUrl=\"http://www.domainnews.com/feed/rss\" htmlUrl=\"http://www.domainnews.com\"/>\n            <outline\n                text=\"The Rick Schwartz Domain and Traffic Blog  RicksBlog.com...Home of the &quot;Domain King&quot;\"\n                title=\"The Rick Schwartz Domain and Traffic Blog  RicksBlog.com...Home of the &quot;Domain King&quot;\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ricksblog.com/my_weblog/atom.xml\" htmlUrl=\"http://www.ricksblog.com/my_weblog/\"/>\n            <outline text=\"Whizzbangsblog.com\"\n                title=\"Whizzbangsblog.com\" type=\"rss\"\n                xmlUrl=\"http://www.whizzbangsblog.com/index2.php?option=com_rss&amp;feed=RSS2.0&amp;no_html=1\" htmlUrl=\"http://www.whizzbangsblog.com\"/>\n        </outline>\n        <outline title=\"News\" text=\"News\">\n            <outline text=\"BBC News | News Front Page | World Edition\"\n                title=\"BBC News | News Front Page | World Edition\"\n                type=\"rss\"\n                xmlUrl=\"http://newsrss.bbc.co.uk/rss/newsonline_world_edition/front_page/rss.xml\" htmlUrl=\"http://news.bbc.co.uk/go/rss/-/2/hi/default.stm\"/>\n            <outline text=\"Christian Science Monitor | Top Stories\"\n                title=\"Christian Science Monitor | Top Stories\"\n                type=\"rss\" xmlUrl=\"http://www.csmonitor.com/rss/top.rss\" htmlUrl=\"http://csmonitor.com\"/>\n            <outline text=\"ESPN.com\" title=\"ESPN.com\" type=\"rss\"\n                xmlUrl=\"http://sports.espn.go.com/espn/rss/news\" htmlUrl=\"http://espn.go.com/\"/>\n            <outline text=\"Google News\" title=\"Google News\" type=\"rss\"\n                xmlUrl=\"http://news.google.com/?output=rss\" htmlUrl=\"http://news.google.com/\"/>\n            <outline text=\"MarketWatch.com - Top Stories\"\n                title=\"MarketWatch.com - Top Stories\" type=\"rss\"\n                xmlUrl=\"http://www.marketwatch.com/rss/topstories\" htmlUrl=\"http://www.marketwatch.com/news/default.asp?siteid=rss\"/>\n            <outline text=\"NPR: 7AM ET News Summary Podcast\"\n                title=\"NPR: 7AM ET News Summary Podcast\" type=\"rss\"\n                xmlUrl=\"http://www.npr.org/rss/podcast.php?id=500001\" htmlUrl=\"http://www.npr.org/templates/topics/topic.php?topicId=1001&amp;ft=2&amp;f=500001\"/>\n        </outline>\n        <outline title=\"Thinkers\" text=\"Thinkers\">\n            <outline text=\"gladwell.com\" title=\"gladwell.com\" type=\"rss\"\n                xmlUrl=\"http://gladwell.typepad.com/gladwellcom/atom.xml\" htmlUrl=\"http://gladwell.typepad.com/gladwellcom/\"/>\n            <outline text=\"kottke.org\" title=\"kottke.org\" type=\"rss\"\n                xmlUrl=\"http://www.kottke.org/remainder/index.rdf\" htmlUrl=\"http://www.kottke.org/\"/>\n            <outline text=\"Language Log\" title=\"Language Log\" type=\"rss\"\n                xmlUrl=\"http://itre.cis.upenn.edu/~myl/languagelog/index.rdf\" htmlUrl=\"http://itre.cis.upenn.edu/~myl/languagelog/\"/>\n            <outline text=\"languagehat.com\" title=\"languagehat.com\"\n                type=\"rss\" xmlUrl=\"http://www.languagehat.com/index.rdf\" htmlUrl=\"http://www.languagehat.com/\"/>\n            <outline text=\"Marginal Revolution\"\n                title=\"Marginal Revolution\" type=\"rss\"\n                xmlUrl=\"http://www.marginalrevolution.com/marginalrevolution/index.rdf\" htmlUrl=\"http://www.marginalrevolution.com/marginalrevolution/\"/>\n            <outline text=\"NPR: This I Believe Podcast\"\n                title=\"NPR: This I Believe Podcast\" type=\"rss\"\n                xmlUrl=\"http://www.npr.org/rss/podcast.php?id=4538138\" htmlUrl=\"http://www.npr.org/templates/story/story.php?storyId=4538138&amp;ft=2&amp;f=4538138\"/>\n            <outline text=\"Salon\" title=\"Salon\" type=\"rss\"\n                xmlUrl=\"http://feeds.salon.com/salon/index\" htmlUrl=\"http://www.salon.com/?source=rss&amp;aim=/\"/>\n            <outline text=\"TED | TEDBlog\" title=\"TED | TEDBlog\"\n                type=\"rss\"\n                xmlUrl=\"http://tedblog.typepad.com/tedblog/atom.xml\" htmlUrl=\"http://blog.ted.com/\"/>\n        </outline>\n        <outline title=\"Social media\" text=\"Social media\">\n            <outline text=\"Lifestream Blog\" title=\"Lifestream Blog\"\n                type=\"rss\" xmlUrl=\"http://lifestreamblog.com/feed/\" htmlUrl=\"http://lifestreamblog.com\"/>\n            <outline text=\"Media 2.0 Workgroup\"\n                title=\"Media 2.0 Workgroup\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Media20Workgroup\" htmlUrl=\"http://media2.0workgroup.org\"/>\n            <outline\n                text=\"Social Media - best news, blogs, videos, photos and more - Boxxet\"\n                title=\"Social Media - best news, blogs, videos, photos and more - Boxxet\"\n                type=\"rss\"\n                xmlUrl=\"http://www.boxxet.com/Social_media/rss.xml\" htmlUrl=\"http://www.boxxet.com/Social_media/\"/>\n        </outline>\n        <outline title=\"github blog\" text=\"github blog\">\n            <outline text=\"The GitHub Blog\" title=\"The GitHub Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/github\" htmlUrl=\"http://github.com/blog\"/>\n        </outline>\n        <outline title=\"Blogging\" text=\"Blogging\">\n            <outline text=\"EatonWeb Blog\" title=\"EatonWeb Blog\"\n                type=\"rss\"\n                xmlUrl=\"http://portal.eatonweb.com/ewblog/feed/\" htmlUrl=\"http://portal.eatonweb.com/ewblog\"/>\n        </outline>\n        <outline title=\"Rails screencasts\" text=\"Rails screencasts\">\n            <outline text=\"Episode Suggestions on UserVoice\"\n                title=\"Episode Suggestions on UserVoice\" type=\"rss\"\n                xmlUrl=\"http://railscasts.uservoice.com/pages/general/activity.atom\" htmlUrl=\"http://railscasts.uservoice.com/pages/general\"/>\n            <outline text=\"Free Ruby and Rails Screencasts\"\n                title=\"Free Ruby and Rails Screencasts\" type=\"rss\"\n                xmlUrl=\"http://www.rubyplus.org/episodes.rss\" htmlUrl=\"http://www.rubyplus.org/episodes.rss\"/>\n            <outline text=\"GitCasts Screencasts\"\n                title=\"GitCasts Screencasts\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Gitcasts\" htmlUrl=\"http://www.gitcasts.com/posts.html\"/>\n            <outline text=\"matthew carriere - home\"\n                title=\"matthew carriere - home\" type=\"rss\"\n                xmlUrl=\"http://matthewcarriere.com/feed/atom.xml\" htmlUrl=\"http://matthewcarriere.com/\"/>\n            <outline text=\"Railscasts\" title=\"Railscasts\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/railscasts\" htmlUrl=\"http://railscasts.com\"/>\n            <outline text=\"sd.rb podcast\" title=\"sd.rb podcast\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/sdrbpodcast\" htmlUrl=\"http://podcast.sdruby.com/\"/>\n        </outline>\n        <outline title=\"Webmasters\" text=\"Webmasters\">\n            <outline text=\"AdSense Blog-Italiano\"\n                title=\"AdSense Blog-Italiano\" type=\"rss\"\n                xmlUrl=\"http://it-adsense.blogspot.com/feeds/posts/default\" htmlUrl=\"http://it-adsense.blogspot.com/\"/>\n            <outline text=\"Google Webmaster Central Blog\"\n                title=\"Google Webmaster Central Blog\" type=\"rss\"\n                xmlUrl=\"http://googlewebmastercentral.blogspot.com/feeds/posts/default\" htmlUrl=\"http://googlewebmastercentral.blogspot.com/\"/>\n            <outline text=\"Inside AdSense\" title=\"Inside AdSense\"\n                type=\"rss\"\n                xmlUrl=\"http://adsense.blogspot.com/feeds/posts/default\" htmlUrl=\"http://adsense.blogspot.com/\"/>\n        </outline>\n        <outline title=\"Small-business\" text=\"Small-business\">\n            <outline text=\"Business Pundit\" title=\"Business Pundit\"\n                type=\"rss\"\n                xmlUrl=\"http://www.businesspundit.com/index.rdf\" htmlUrl=\"http://www.businesspundit.com\"/>\n            <outline\n                text=\"Chris Baggott\'s Email Marketing Best Practices\"\n                title=\"Chris Baggott\'s Email Marketing Best Practices\"\n                type=\"rss\"\n                xmlUrl=\"http://exacttarget.typepad.com/chrisbaggott/atom.xml\" htmlUrl=\"http://exacttarget.typepad.com/chrisbaggott/\"/>\n            <outline text=\"Church of the Customer Blog\"\n                title=\"Church of the Customer Blog\" type=\"rss\"\n                xmlUrl=\"http://www.churchofthecustomer.com/blog/index.rdf\" htmlUrl=\"http://www.churchofcustomer.com/\"/>\n            <outline text=\"Seth\'s Blog\" title=\"Seth\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://sethgodin.typepad.com/seths_blog/atom.xml\" htmlUrl=\"http://sethgodin.typepad.com/seths_blog/\"/>\n            <outline\n                text=\"Small Business Marketing Blog from Duct Tape Marketing\"\n                title=\"Small Business Marketing Blog from Duct Tape Marketing\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ducttapemarketing/nRUD\" htmlUrl=\"http://www.ducttapemarketing.com/blog\"/>\n            <outline text=\"Small Business Trends\"\n                title=\"Small Business Trends\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SmallBusinessTrends\" htmlUrl=\"http://www.smallbiztrends.com\"/>\n            <outline text=\"The Entrepreneurial Mind\"\n                title=\"The Entrepreneurial Mind\" type=\"rss\"\n                xmlUrl=\"http://forum.belmont.edu/cornwall/atom.xml\" htmlUrl=\"http://forum.belmont.edu/cornwall/\"/>\n        </outline>\n        <outline title=\"web design\" text=\"web design\">\n            <outline text=\"del.icio.us/popular/web2.0\"\n                title=\"del.icio.us/popular/web2.0\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/popular/web2.0\" htmlUrl=\"http://delicious.com/popular\"/>\n            <outline text=\"Modern Life\" title=\"Modern Life\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ModernLifeIsRubbish\" htmlUrl=\"http://www.modernlifeisrubbish.co.uk\"/>\n            <outline text=\"Six Revisions\" title=\"Six Revisions\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SixRevisions\" htmlUrl=\"http://sixrevisions.com\"/>\n            <outline text=\"Smashing Magazine\" title=\"Smashing Magazine\"\n                type=\"rss\"\n                xmlUrl=\"http://www.smashingmagazine.com/feed/\" htmlUrl=\"http://www.smashingmagazine.com\"/>\n        </outline>\n        <outline title=\"CSS\" text=\"CSS\">\n            <outline text=\"Tumblr Themes\" title=\"Tumblr Themes\"\n                type=\"rss\" xmlUrl=\"http://customthemes.tumblr.com/rss\" htmlUrl=\"http://customthemes.tumblr.com/\"/>\n        </outline>\n        <outline title=\"Ruby\" text=\"Ruby\">\n            <outline text=\"Search Results for ruby\"\n                title=\"Search Results for ruby\" type=\"rss\"\n                xmlUrl=\"http://www.simonecarletti.com/mt4/mt-search.cgi?search=ruby&amp;Template=feed&amp;IncludeBlogs=1&amp;limit=20\" htmlUrl=\"http://www.simonecarletti.com/mt4/mt-search.cgi?IncludeBlogs=1&amp;search=ruby\"/>\n            <outline text=\"software by daniel choi\"\n                title=\"software by daniel choi\" type=\"rss\"\n                xmlUrl=\"http://danielchoi.com/software/index.atom\" htmlUrl=\"http://danielchoi.com/software\"/>\n        </outline>\n        <outline title=\"Daily Reading\" text=\"Daily Reading\">\n            <outline text=\"Bokardo - Social Design by Joshua Porter\"\n                title=\"Bokardo - Social Design by Joshua Porter\"\n                type=\"rss\" xmlUrl=\"http://bokardo.com/feed/\" htmlUrl=\"http://bokardo.com\"/>\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.intridea.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n        </outline>\n        <outline title=\"Mephisto\" text=\"Mephisto\">\n            <outline text=\"James Crisp\" title=\"James Crisp\" type=\"rss\"\n                xmlUrl=\"http://jamescrisp.org/feed/\" htmlUrl=\"http://jamescrisp.org\"/>\n            <outline text=\"Mephisto - Home\" title=\"Mephisto - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/mephisto\" htmlUrl=\"http://mephistoblog.com/\"/>\n        </outline>\n        <outline title=\"SEO\" text=\"SEO\">\n            <outline text=\"EatonWeb Blog\" title=\"EatonWeb Blog\"\n                type=\"rss\"\n                xmlUrl=\"http://portal.eatonweb.com/ewblog/feed/\" htmlUrl=\"http://portal.eatonweb.com/ewblog\"/>\n            <outline text=\"Google Webmaster Central Blog\"\n                title=\"Google Webmaster Central Blog\" type=\"rss\"\n                xmlUrl=\"http://googlewebmastercentral.blogspot.com/feeds/posts/default\" htmlUrl=\"http://googlewebmastercentral.blogspot.com/\"/>\n            <outline text=\"SEO Book.com -\" title=\"SEO Book.com -\"\n                type=\"rss\" xmlUrl=\"http://www.seobook.com/rss.xml\" htmlUrl=\"http://www.seobook.com\"/>\n            <outline text=\"SEO Design Solutions\"\n                title=\"SEO Design Solutions\" type=\"rss\"\n                xmlUrl=\"http://feeds.seodesignsolutions.com/SeoDesignSolutionsBlog\" htmlUrl=\"http://www.seodesignsolutions.com/blog\"/>\n            <outline text=\"SEO on Rails - Home\"\n                title=\"SEO on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seo-rails\" htmlUrl=\"http://www.seoonrails.com/\"/>\n            <outline text=\"Seven Mile\" title=\"Seven Mile\" type=\"rss\"\n                xmlUrl=\"http://feed.sevenmile.com/7mile\" htmlUrl=\"http://www.sevenmile.com\"/>\n            <outline text=\"Webmaster Questions\"\n                title=\"Webmaster Questions\" type=\"rss\"\n                xmlUrl=\"http://www.google.com/support/forum/p/Webmasters/rss_v2_0_msgs.xml?lid=4ab44c4e66c8c695&amp;hl=en\" htmlUrl=\"http://www.google.com/support/forum/p/Webmasters/label?lid=4ab44c4e66c8c695&amp;hl=en\"/>\n        </outline>\n        <outline title=\"Mind Maps\" text=\"Mind Maps\">\n            <outline text=\"MindMeister Blog\" title=\"MindMeister Blog\"\n                type=\"rss\" xmlUrl=\"http://blog.mindmeister.com/feed/\" htmlUrl=\"http://blog.mindmeister.com\"/>\n        </outline>\n        <outline title=\"friendfeed\" text=\"friendfeed\">\n            <outline text=\"FriendFeed\" title=\"FriendFeed\" type=\"rss\"\n                xmlUrl=\"http://friendfeed.com/?format=atom&amp;auth=9T59JFwM6cI1dwfD\" htmlUrl=\"http://friendfeed.com/\"/>\n        </outline>\n        <outline title=\"Books\" text=\"Books\">\n            <outline text=\"ebookshare\" title=\"ebookshare\" type=\"rss\"\n                xmlUrl=\"http://ebookshare.net/feed/\" htmlUrl=\"http://www.ebookshare.net\"/>\n        </outline>\n        <outline title=\"Mack Framework\" text=\"Mack Framework\">\n            <outline text=\"Mack Framework\" title=\"Mack Framework\"\n                type=\"rss\" xmlUrl=\"http://www.mackframework.com/feed/\" htmlUrl=\"http://www.mackframework.com\"/>\n        </outline>\n        <outline title=\"Technology\" text=\"Technology\">\n            <outline text=\"Digg\" title=\"Digg\" type=\"rss\"\n                xmlUrl=\"http://digg.com/rss/index.xml\" htmlUrl=\"http://digg.com/\"/>\n            <outline text=\"Engadget\" title=\"Engadget\" type=\"rss\"\n                xmlUrl=\"http://www.engadget.com/rss.xml\" htmlUrl=\"http://www.engadget.com\"/>\n            <outline text=\"Gizmodo\" title=\"Gizmodo\" type=\"rss\"\n                xmlUrl=\"http://feeds.gawker.com/gizmodo/full\" htmlUrl=\"http://gizmodo.com\"/>\n            <outline text=\"Slashdot\" title=\"Slashdot\" type=\"rss\"\n                xmlUrl=\"http://slashdot.org/index.rss\" htmlUrl=\"http://slashdot.org/\"/>\n            <outline text=\"TechCrunch\" title=\"TechCrunch\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Techcrunch\" htmlUrl=\"http://www.techcrunch.com\"/>\n            <outline text=\"Wired Top Stories\" title=\"Wired Top Stories\"\n                type=\"rss\"\n                xmlUrl=\"http://www.wired.com/news/feeds/rss2/0,2610,,00.xml\" htmlUrl=\"http://www.wired.com/rss/index.xml\"/>\n        </outline>\n        <outline title=\"Web Marketing\" text=\"Web Marketing\">\n            <outline text=\"acidlabs\" title=\"acidlabs\" type=\"rss\"\n                xmlUrl=\"http://www.acidlabs.org/feed/\" htmlUrl=\"http://www.acidlabs.org\"/>\n            <outline text=\"Go Big Always\" title=\"Go Big Always\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/feedburner/gobigalways\" htmlUrl=\"http://gobigalways.com\"/>\n            <outline text=\"Google Website Optimizer Blog\"\n                title=\"Google Website Optimizer Blog\" type=\"rss\"\n                xmlUrl=\"http://websiteoptimizer.blogspot.com/feeds/posts/default\" htmlUrl=\"http://websiteoptimizer.blogspot.com/\"/>\n            <outline text=\"Occam\'s Razor by Avinash Kaushik\"\n                title=\"Occam\'s Razor by Avinash Kaushik\" type=\"rss\"\n                xmlUrl=\"http://www.kaushik.net/avinash/feed\" htmlUrl=\"http://www.kaushik.net/avinash\"/>\n            <outline text=\"SEO Book.com -\" title=\"SEO Book.com -\"\n                type=\"rss\" xmlUrl=\"http://www.seobook.com/rss.xml\" htmlUrl=\"http://www.seobook.com\"/>\n            <outline text=\"SEOmoz Daily SEO Blog\"\n                title=\"SEOmoz Daily SEO Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seomoz\" htmlUrl=\"http://www.seomoz.org/blog\"/>\n            <outline text=\"Techpaulogy\" title=\"Techpaulogy\" type=\"rss\"\n                xmlUrl=\"http://www.techpaulogy.com/atom.xml\" htmlUrl=\"http://www.techpaulogy.com/\"/>\n            <outline\n                text=\"The Forrester Blog For Interactive Marketing Professionals\"\n                title=\"The Forrester Blog For Interactive Marketing Professionals\"\n                type=\"rss\"\n                xmlUrl=\"http://blogs.forrester.com/marketing/atom.xml\" htmlUrl=\"http://blogs.forrester.com/marketing/\"/>\n        </outline>\n        <outline title=\"P I P I N G M E D I A\" text=\"P I P I N G M E D I A\">\n            <outline text=\"Clipotech Union\" title=\"Clipotech Union\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Microcontent\" htmlUrl=\"http://pipes.yahoo.com/pipes/pipe.info?_id=_Bwik7Sx3RGBSLF6BB50VA\"/>\n        </outline>\n        <outline title=\"Rails aggregators\" text=\"Rails aggregators\">\n            <outline text=\"del.icio.us/popular/rails\"\n                title=\"del.icio.us/popular/rails\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/popular/rails\" htmlUrl=\"http://delicious.com/popular\"/>\n            <outline text=\"Planet Ruby on Rails Feed\"\n                title=\"Planet Ruby on Rails Feed\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/PlanetRails\" htmlUrl=\"http://feeds.feedburner.com/PlanetRails\"/>\n            <outline text=\"Planet RubyOnRails\"\n                title=\"Planet RubyOnRails\" type=\"rss\"\n                xmlUrl=\"http://www.planetrubyonrails.org/xml/atom\" htmlUrl=\"http://www.planetrubyonrails.org/\"/>\n            <outline text=\"Rails Inside\" title=\"Rails Inside\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RailsInside\" htmlUrl=\"http://www.railsinside.com\"/>\n            <outline text=\"Ruby Inside\" title=\"Ruby Inside\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyInside\" htmlUrl=\"http://www.rubyinside.com\"/>\n            <outline text=\"Ruby on Rails Podcast - transcript\"\n                title=\"Ruby on Rails Podcast - transcript\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rubyonrails_transcript\" htmlUrl=\"http://podcast.rubyonrails.org\"/>\n            <outline text=\"self.works_with_ruby? - Home\"\n                title=\"self.works_with_ruby? - Home\" type=\"rss\"\n                xmlUrl=\"http://workswithruby.com/feed\" htmlUrl=\"http://workswithruby.com/\"/>\n        </outline>\n        <outline title=\"Tumblr\" text=\"Tumblr\">\n            <outline text=\"Tumblr Staff\" title=\"Tumblr Staff\" type=\"rss\"\n                xmlUrl=\"http://staff.tumblr.com/rss\" htmlUrl=\"http://staff.tumblr.com/\"/>\n        </outline>\n        <outline title=\"Others\" text=\"Others\">\n            <outline text=\"DataPortability.org Format Updates\"\n                title=\"DataPortability.org Format Updates\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/dataportability\" htmlUrl=\"http://192.168.254.26/myfeed/blog/default/ChrisSaad_DataPortability\"/>\n            <outline text=\"Digg / Tech Industry News\"\n                title=\"Digg / Tech Industry News\" type=\"rss\"\n                xmlUrl=\"http://digg.com/rss/indextech_news.xml\" htmlUrl=\"http://digg.com/\"/>\n            <outline\n                text=\"Future Feeder and Journal of Architecture &amp; Computation Culture\"\n                title=\"Future Feeder and Journal of Architecture &amp; Computation Culture\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/FutureFeeder\" htmlUrl=\"http://futurefeeder.com\"/>\n            <outline text=\"Identity 2.0\" title=\"Identity 2.0\" type=\"rss\"\n                xmlUrl=\"http://identity20.com/?feed=rss2\" htmlUrl=\"http://identity20.com\"/>\n            <outline text=\"Lifehacker\" title=\"Lifehacker\" type=\"rss\"\n                xmlUrl=\"http://feeds.gawker.com/lifehacker/full\" htmlUrl=\"http://lifehacker.com\"/>\n            <outline text=\"Open\" title=\"Open\" type=\"rss\"\n                xmlUrl=\"http://open.blogs.nytimes.com/rss2.xml\" htmlUrl=\"http://open.blogs.nytimes.com\"/>\n            <outline text=\"Open Web Design\" title=\"Open Web Design\"\n                type=\"rss\" xmlUrl=\"http://www.openwebdesign.org/rss\" htmlUrl=\"http://www.openwebdesign.org/\"/>\n            <outline text=\"O\'Reilly Radar\" title=\"O\'Reilly Radar\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/oreilly/radar/atom\" htmlUrl=\"http://radar.oreilly.com/\"/>\n            <outline text=\"Own Your Identity\" title=\"Own Your Identity\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ownyouridentity.com/feed/rss/\" htmlUrl=\"http://www.ownyouridentity.com\"/>\n            <outline text=\"Read/WriteWeb\" title=\"Read/WriteWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/readwriteweb\" htmlUrl=\"http://www.readwriteweb.com/\"/>\n            <outline text=\"Robin Good\'s MasterNewMedia - Italia\"\n                title=\"Robin Good\'s MasterNewMedia - Italia\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Robin-Goods-Master-New-Media-Italia\" htmlUrl=\"http://www.masternewmedia.it/\"/>\n            <outline text=\"Slashdot\" title=\"Slashdot\" type=\"rss\"\n                xmlUrl=\"http://rss.slashdot.org/Slashdot/slashdot\" htmlUrl=\"http://slashdot.org/\"/>\n            <outline text=\"TechCrunch\" title=\"TechCrunch\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/TechCrunch\" htmlUrl=\"http://www.techcrunch.com\"/>\n            <outline text=\"The Next Web\" title=\"The Next Web\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/thenextweb\" htmlUrl=\"http://thenextweb.com\"/>\n            <outline text=\"the popurls blog\" title=\"the popurls blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/popurls\" htmlUrl=\"http://pophub.com\"/>\n            <outline text=\"trawlr blog - Home\"\n                title=\"trawlr blog - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/trawlr\" htmlUrl=\"http://blog.trawlr.com/\"/>\n            <outline text=\"WebbAlert\" title=\"WebbAlert\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/webbalert\" htmlUrl=\"http://webbalert.com/\"/>\n            <outline text=\"Work.com Guide of the Day\"\n                title=\"Work.com Guide of the Day\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/WorkcomGuideOfTheDay\" htmlUrl=\"http://www.work.com/\"/>\n        </outline>\n        <outline title=\"Yahoo Pipes\" text=\"Yahoo Pipes\">\n            <outline text=\"del.icio.us hotlist\"\n                title=\"del.icio.us hotlist\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/\" htmlUrl=\"http://delicious.com/\"/>\n            <outline text=\"del.icio.us/recent?min=2\"\n                title=\"del.icio.us/recent?min=2\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/recent?min=2\" htmlUrl=\"http://delicious.com/recent\"/>\n            <outline text=\"Feed Relay: del.icious recent\"\n                title=\"Feed Relay: del.icious recent\" type=\"rss\"\n                xmlUrl=\"http://pipes.yahoo.com/pipes/pipe.run?_id=DgUtNGxL3BGpkIRdjknRlg&amp;_render=rss&amp;relayedUrl=http%3A%2F%2Fdel.icio.us%2Frss%2Frecent%3Fmin%3D2\" htmlUrl=\"http://pipes.yahoo.com/pipes/pipe.info?_id=DgUtNGxL3BGpkIRdjknRlg\"/>\n            <outline text=\"Pipes Blog\" title=\"Pipes Blog\" type=\"rss\"\n                xmlUrl=\"http://blog.pipes.yahoo.net/feed/\" htmlUrl=\"http://blog.pipes.yahoo.net\"/>\n        </outline>\n        <outline title=\"Adhearsion\" text=\"Adhearsion\">\n            <outline text=\"Adhearsion Blog by Jay Phillips\"\n                title=\"Adhearsion Blog by Jay Phillips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/jicksta\" htmlUrl=\"http://jicksta.com\"/>\n        </outline>\n        <outline title=\"Google analytics\" text=\"Google analytics\">\n            <outline text=\"Google Analytics Blog\"\n                title=\"Google Analytics Blog\" type=\"rss\"\n                xmlUrl=\"http://analytics.blogspot.com/feeds/posts/default\" htmlUrl=\"http://analytics.blogspot.com/\"/>\n        </outline>\n        <outline title=\"Expansion\" text=\"Expansion\">\n            <outline text=\"Freedom to Tinker\" title=\"Freedom to Tinker\"\n                type=\"rss\"\n                xmlUrl=\"http://www.freedom-to-tinker.com/?feed=rss2\" htmlUrl=\"http://www.freedom-to-tinker.com\"/>\n            <outline text=\"MyOwnDB Blog\" title=\"MyOwnDB Blog\" type=\"rss\"\n                xmlUrl=\"http://www.myowndb.com/blog/?feed=rss2\" htmlUrl=\"http://www.myowndb.com/blog\"/>\n        </outline>\n        <outline title=\"Radiant\" text=\"Radiant\">\n            <outline text=\"Pathfinder Development\"\n                title=\"Pathfinder Development\" type=\"rss\"\n                xmlUrl=\"http://www.pathf.com/blogs/feed/\" htmlUrl=\"http://www.pathf.com/blogs\"/>\n            <outline text=\"radiant\'s Activity\"\n                title=\"radiant\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/radiant.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline\n                text=\"Recent Commits to radiant:20d8f44d45f11a0e28231fdf86ded522ed927f6d\"\n                title=\"Recent Commits to radiant:20d8f44d45f11a0e28231fdf86ded522ed927f6d\"\n                type=\"rss\"\n                xmlUrl=\"http://github.com/feeds/radiant/commits/radiant/20d8f44d45f11a0e28231fdf86ded522ed927f6d\" htmlUrl=\"http://github.com/radiant/radiant/commits/20d8f44d45f11a0e28231fdf86ded522ed927f6d/\"/>\n            <outline text=\"saturnflyer\'s Activity\"\n                title=\"saturnflyer\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/saturnflyer.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"Sean Cribbs\" title=\"Sean Cribbs\" type=\"rss\"\n                xmlUrl=\"http://seancribbs.com/atom.xml\" htmlUrl=\"http://seancribbs.com/\"/>\n            <outline text=\"seancribbs\'s Activity\"\n                title=\"seancribbs\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/seancribbs.atom\" htmlUrl=\"http://github.com/\"/>\n        </outline>\n        <outline title=\"Personalized Information\" text=\"Personalized Information\">\n            <outline text=\"Geeking with Greg\" title=\"Geeking with Greg\"\n                type=\"rss\"\n                xmlUrl=\"http://glinden.blogspot.com/feeds/posts/default\" htmlUrl=\"http://glinden.blogspot.com/\"/>\n        </outline>\n        <outline title=\"github Watched\" text=\"github Watched\">\n            <outline text=\"github\'s Activity\" title=\"github\'s Activity\"\n                type=\"rss\" xmlUrl=\"http://github.com/github.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"lgs\'s Private Feed\"\n                title=\"lgs\'s Private Feed\" type=\"rss\"\n                xmlUrl=\"https://github.com/lgs.private.atom?token=9502326e5ce527332592ab490aedeec3\" htmlUrl=\"https://github.com/\"/>\n        </outline>\n        <outline title=\"Erlang\" text=\"Erlang\">\n            <outline text=\"Erlang Inside\" title=\"Erlang Inside\"\n                type=\"rss\" xmlUrl=\"http://erlanginside.com/feed\" htmlUrl=\"http://erlanginside.com\"/>\n            <outline text=\"spawn_link\" title=\"spawn_link\" type=\"rss\"\n                xmlUrl=\"http://spawnlink.com/feed/\" htmlUrl=\"http://spawnlink.com\"/>\n            <outline text=\"The (Unofficial) Erlang Blog\"\n                title=\"The (Unofficial) Erlang Blog\" type=\"rss\"\n                xmlUrl=\"http://www.erlangblog.com/feed/\" htmlUrl=\"http://www.erlangblog.com\"/>\n            <outline text=\"Yariv\'s Blog\" title=\"Yariv\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://yarivsblog.com/feed/\" htmlUrl=\"http://yarivsblog.com\"/>\n        </outline>\n        <outline title=\"Startup\" text=\"Startup\">\n            <outline text=\"Fast Company\" title=\"Fast Company\" type=\"rss\"\n                xmlUrl=\"http://www.fastcompany.com/rss.xml\" htmlUrl=\"http://www.fastcompany.com\"/>\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n            <outline text=\"KillerStartups.com - all\"\n                title=\"KillerStartups.com - all\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/killerstartups/BkQv\" htmlUrl=\"http://www.killerstartups.com\"/>\n            <outline text=\"ProgrammableWeb\" title=\"ProgrammableWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ProgrammableWeb\" htmlUrl=\"http://blog.programmableweb.com\"/>\n            <outline text=\"TechCrunchIT\" title=\"TechCrunchIT\" type=\"rss\"\n                xmlUrl=\"http://feedproxy.google.com/TechCrunchIT\" htmlUrl=\"http://www.techcrunchit.com\"/>\n        </outline>\n        <outline title=\"APML\" text=\"APML\">\n            <outline text=\"APML Updates\" title=\"APML Updates\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/apmlspec\" htmlUrl=\"http://www.apml.org\"/>\n            <outline text=\"Benjamin Michael Novakovic\"\n                title=\"Benjamin Michael Novakovic\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/BenjaminMichaelNovakovic\" htmlUrl=\"http://blog.bmn.name\"/>\n        </outline>\n        <outline title=\"Rails Flex\" text=\"Rails Flex\">\n            <outline text=\"Clockwork Objects\" title=\"Clockwork Objects\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/miletbaker\" htmlUrl=\"http://clockobj.co.uk\"/>\n        </outline>\n        <outline title=\"Webby\" text=\"Webby\">\n            <outline text=\"Locomotivation\" title=\"Locomotivation\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/locomotivation\" htmlUrl=\"http://locomotivation.com/\"/>\n        </outline>\n        <outline title=\"Rails\" text=\"Rails\">\n            <outline text=\"A Fresh Cup\" title=\"A Fresh Cup\" type=\"rss\"\n                xmlUrl=\"http://afreshcup.com/feed/\" htmlUrl=\"http://afreshcup.com\"/>\n            <outline text=\"Addicted To New\" title=\"Addicted To New\"\n                type=\"rss\" xmlUrl=\"http://addictedtonew.com/feed/\" htmlUrl=\"http://addictedtonew.com\"/>\n            <outline text=\"Adhearsion Blog by Jay Phillips\"\n                title=\"Adhearsion Blog by Jay Phillips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/jicksta\" htmlUrl=\"http://jicksta.com\"/>\n            <outline text=\"aidanf.net - rails\"\n                title=\"aidanf.net - rails\" type=\"rss\"\n                xmlUrl=\"http://www.aidanf.net/taxonomy/term/18/0/feed\" htmlUrl=\"http://www.aidanf.net/taxonomy/term/18/0\"/>\n            <outline text=\"Al Hoang\" title=\"Al Hoang\" type=\"rss\"\n                xmlUrl=\"http://blogs.law.harvard.edu/hoanga/feed/\" htmlUrl=\"http://blogs.law.harvard.edu/hoanga\"/>\n            <outline text=\"Alex Young\'s weblog\"\n                title=\"Alex Young\'s weblog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/webdevelopernotes\" htmlUrl=\"http://alexyoung.org\"/>\n            <outline text=\"almost effortless\" title=\"almost effortless\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/almosteffortless\" htmlUrl=\"http://almosteffortless.com\"/>\n            <outline text=\"Andy Delcambre - Home\"\n                title=\"Andy Delcambre - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/andydelcambre\" htmlUrl=\"http://andy.delcambre.com/\"/>\n            <outline text=\"artweb design - Blog\"\n                title=\"artweb design - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/artweb-design\" htmlUrl=\"http://www.artweb-design.de/\"/>\n            <outline text=\"Blog\" title=\"Blog\" type=\"rss\"\n                xmlUrl=\"http://www.elctech.com/blog/atom.xml\" htmlUrl=\"http://elctech.com/\"/>\n            <outline text=\"caboose - blog.caboo.se Home\"\n                title=\"caboose - blog.caboo.se Home\" type=\"rss\"\n                xmlUrl=\"http://blog.caboo.se/feed/atom.xml\" htmlUrl=\"http://blog.caboo.se/\"/>\n            <outline text=\"caboose - blog.caboo.se Home\"\n                title=\"caboose - blog.caboo.se Home\" type=\"rss\"\n                xmlUrl=\"http://caboose.org/feed/atom.xml\" htmlUrl=\"http://caboose.org/\"/>\n            <outline text=\"cfis\" title=\"cfis\" type=\"rss\"\n                xmlUrl=\"http://cfis.savagexi.com/articles.atom\" htmlUrl=\"http://cfis.savagexi.com\"/>\n            <outline text=\"codablog\" title=\"codablog\" type=\"rss\"\n                xmlUrl=\"http://blog.codahale.com/feed/\" htmlUrl=\"http://blog.codahale.com\"/>\n            <outline text=\"code_fu - Home\" title=\"code_fu - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://khamsouk.souvanlasy.com/feed/atom.xml\" htmlUrl=\"http://khamsouk.souvanlasy.com/\"/>\n            <outline text=\"Darwinweb\" title=\"Darwinweb\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/darwinweb\" htmlUrl=\"http://darwinweb.net/\"/>\n            <outline text=\"Daytime Running Lights : All Posts\"\n                title=\"Daytime Running Lights : All Posts\" type=\"rss\"\n                xmlUrl=\"http://jchris.mfdz.com/posts.rss\" htmlUrl=\"http://jchris.mfdz.com/posts\"/>\n            <outline text=\"delynn - Home\" title=\"delynn - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/delynnberry\" htmlUrl=\"http://delynnberry.com/\"/>\n            <outline text=\"Dr Nic\" title=\"Dr Nic\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/DrNic\" htmlUrl=\"http://drnicwilliams.com\"/>\n            <outline text=\"Dynamite: The Err Free Blog\"\n                title=\"Dynamite: The Err Free Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/errfree\" htmlUrl=\"http://dynamite.errfree.com/\"/>\n            <outline text=\"entp hoth blog - Home\"\n                title=\"entp hoth blog - Home\" type=\"rss\"\n                xmlUrl=\"http://hoth.entp.com/feed/atom.xml\" htmlUrl=\"http://hoth.entp.com/\"/>\n            <outline text=\"Eribium\" title=\"Eribium\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Eribium\" htmlUrl=\"http://www.eribium.org/blog\"/>\n            <outline text=\"Eribium\" title=\"Eribium\" type=\"rss\"\n                xmlUrl=\"http://www.eribium.org/blog/?feed=rss2\" htmlUrl=\"http://www.eribium.org/blog\"/>\n            <outline text=\"Err the Blog - Home\"\n                title=\"Err the Blog - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/errtheblog\" htmlUrl=\"http://errtheblog.com/\"/>\n            <outline text=\"ExpressionLab - Home\"\n                title=\"ExpressionLab - Home\" type=\"rss\"\n                xmlUrl=\"http://www.expressionlab.com/feed/atom.xml\" htmlUrl=\"http://www.expressionlab.com/\"/>\n            <outline text=\"Freelancing Gods\" title=\"Freelancing Gods\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/freelancing_gods\" htmlUrl=\"http://freelancing-gods.com\"/>\n            <outline\n                text=\"GIANT ROBOTS SMASHING INTO OTHER GIANT ROBOTS - Home\"\n                title=\"GIANT ROBOTS SMASHING INTO OTHER GIANT ROBOTS - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/GiantRobotsSmashingIntoOtherGiantRobots\" htmlUrl=\"http://giantrobots.thoughtbot.com/\"/>\n            <outline text=\"GravityBlast\" title=\"GravityBlast\" type=\"rss\"\n                xmlUrl=\"http://gravityblast.com/feed/\" htmlUrl=\"http://gravityblast.com\"/>\n            <outline text=\"has_many :bugs, :through => :rails - Home\"\n                title=\"has_many :bugs, :through => :rails - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/monkeyonrails\" htmlUrl=\"http://m.onkey.org/\"/>\n            <outline text=\"has_many :through\" title=\"has_many :through\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/hasmanythrough\" htmlUrl=\"http://blog.hasmanythrough.com\"/>\n            <outline text=\"igvita.com\" title=\"igvita.com\" type=\"rss\"\n                xmlUrl=\"http://www.igvita.com/feed/\" htmlUrl=\"http://www.igvita.com\"/>\n            <outline text=\"Inform-Addicts\" title=\"Inform-Addicts\"\n                type=\"rss\"\n                xmlUrl=\"http://informaddicts.blogspot.com/feeds/posts/default\" htmlUrl=\"http://informaddicts.blogspot.com/\"/>\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n            <outline text=\"jake howerton may blog\"\n                title=\"jake howerton may blog\" type=\"rss\"\n                xmlUrl=\"http://jake.howmeta.com/feed/\" htmlUrl=\"http://jake.howmeta.com/\"/>\n            <outline text=\"James on Software - Home\"\n                title=\"James on Software - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/JamesOnSoftware\" htmlUrl=\"http://jamesgolick.com/\"/>\n            <outline text=\"Jim Neath\" title=\"Jim Neath\" type=\"rss\"\n                xmlUrl=\"http://jimneath.org/feed/\" htmlUrl=\"http://jimneath.org\"/>\n            <outline text=\"Jim Neath\" title=\"Jim Neath\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/JimNeath\" htmlUrl=\"http://jimneath.org\"/>\n            <outline text=\"Koz Speaks - Home\" title=\"Koz Speaks - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/Koz\" htmlUrl=\"http://www.koziarski.net/\"/>\n            <outline text=\"lindsaar.net - Home\"\n                title=\"lindsaar.net - Home\" type=\"rss\"\n                xmlUrl=\"http://lindsaar.net/feed/atom.xml\" htmlUrl=\"http://lindsaar.net/\"/>\n            <outline text=\"Midnight Oil\" title=\"Midnight Oil\" type=\"rss\"\n                xmlUrl=\"http://blog.aisleten.com/feed/\" htmlUrl=\"http://blog.aisleten.com\"/>\n            <outline text=\"Mike Clark\" title=\"Mike Clark\" type=\"rss\"\n                xmlUrl=\"http://www.clarkware.com/cgi/blosxom/index.rss\" htmlUrl=\"http://www.clarkware.com/cgi/blosxom\"/>\n            <outline text=\"Nick Sieger: RailsConf Europe: Hydra\"\n                title=\"Nick Sieger: RailsConf Europe: Hydra\" type=\"rss\"\n                xmlUrl=\"http://blog.nicksieger.com/xml/rss20/article/301/feed.xml\" htmlUrl=\"http://blog.nicksieger.com/articles/2007/10/06/railsconf-europe-hydra\"/>\n            <outline text=\"No Strings Attached ~ Developer\"\n                title=\"No Strings Attached ~ Developer\" type=\"rss\"\n                xmlUrl=\"http://mislav.caboo.se/feeds/dev\" htmlUrl=\"http://mislav.uniqpath.com/\"/>\n            <outline text=\"Nodeta\" title=\"Nodeta\" type=\"rss\"\n                xmlUrl=\"http://blog.nodeta.fi/feed/\" htmlUrl=\"http://blog.nodeta.fi\"/>\n            <outline text=\"Nuby on Rails\" title=\"Nuby on Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/nubyonrails\" htmlUrl=\"http://nubyonrails.com\"/>\n            <outline text=\"omg blog!! lol!!\" title=\"omg blog!! lol!!\"\n                type=\"rss\" xmlUrl=\"http://omgbloglol.com/rss.xml\" htmlUrl=\"http://omgbloglol.com\"/>\n            <outline text=\"Open Source Rails\" title=\"Open Source Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/OpenSourceRails\" htmlUrl=\"http://www.opensourcerails.com\"/>\n            <outline text=\"opensoul.org - Home\"\n                title=\"opensoul.org - Home\" type=\"rss\"\n                xmlUrl=\"http://opensoul.org/feed/atom.xml\" htmlUrl=\"http://opensoul.org/\"/>\n            <outline text=\"PeepCode Products\" title=\"PeepCode Products\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/peepcode/UCzt\" htmlUrl=\"http://peepcode.com/products\"/>\n            <outline text=\"Pluit Solutions\" title=\"Pluit Solutions\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/PluitSolutions\" htmlUrl=\"http://www.pluitsolutions.com\"/>\n            <outline text=\"QuarkRuby - Home\" title=\"QuarkRuby - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Quarkruby\" htmlUrl=\"http://www.quarkruby.com/\"/>\n            <outline text=\"Quoted-Printable - Home\"\n                title=\"Quoted-Printable - Home\" type=\"rss\"\n                xmlUrl=\"http://quotedprintable.com/feed/atom.xml\" htmlUrl=\"http://www.quotedprintable.com/\"/>\n            <outline text=\"Rail Spikes - Home\"\n                title=\"Rail Spikes - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RailSpikes\" htmlUrl=\"http://railspikes.com/\"/>\n            <outline text=\"Rails Engines News\"\n                title=\"Rails Engines News\" type=\"rss\"\n                xmlUrl=\"http://rails-engines.org/rss/news\" htmlUrl=\"http://rails-engines.org/rss/news/\"/>\n            <outline text=\"Rails Envy\" title=\"Rails Envy\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rails-envy\" htmlUrl=\"http://www.railsenvy.com/\"/>\n            <outline text=\"Rails on the road\" title=\"Rails on the road\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rails-on-the-road\" htmlUrl=\"http://www.extendi.it/ruby-on-rails\"/>\n            <outline text=\"Rails on the Run - Home\"\n                title=\"Rails on the Run - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/railsontherun\" htmlUrl=\"http://www.railsontherun.com/\"/>\n            <outline\n                text=\"RailsOnWave Ruby on Rails web 2.0 Ajax - Home\"\n                title=\"RailsOnWave Ruby on Rails web 2.0 Ajax - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Railsonwave-Home\" htmlUrl=\"http://www.railsonwave.com/railsonwave/\"/>\n            <outline text=\"RailsTips.org - Home\"\n                title=\"RailsTips.org - Home\" type=\"rss\"\n                xmlUrl=\"http://railstips.org/feed/atom.xml\" htmlUrl=\"http://railstips.org/\"/>\n            <outline text=\"RedHanded\" title=\"RedHanded\" type=\"rss\"\n                xmlUrl=\"http://redhanded.hobix.com/index.xml\" htmlUrl=\"http://redhanded.hobix.com\"/>\n            <outline text=\"require \'brain\'\" title=\"require \'brain\'\"\n                type=\"rss\" xmlUrl=\"http://szeryf.wordpress.com/feed/\" htmlUrl=\"http://szeryf.wordpress.com\"/>\n            <outline text=\"Revolution On Rails\"\n                title=\"Revolution On Rails\" type=\"rss\"\n                xmlUrl=\"http://revolutiononrails.blogspot.com/feeds/posts/default\" htmlUrl=\"http://revolutiononrails.blogspot.com/\"/>\n            <outline text=\"Riding Rails - home\"\n                title=\"Riding Rails - home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RidingRails\" htmlUrl=\"http://weblog.rubyonrails.org/\"/>\n            <outline text=\"Robby on Rails\" title=\"Robby on Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://www.robbyonrails.com/xml/atom/feed.xml\" htmlUrl=\"http://www.robbyonrails.com\"/>\n            <outline text=\"Ruby stole my o`o - Home\"\n                title=\"Ruby stole my o`o - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyStoleMyBike\" htmlUrl=\"http://www.ralree.info/\"/>\n            <outline text=\"Ruby, Rails, Web2.0\"\n                title=\"Ruby, Rails, Web2.0\" type=\"rss\"\n                xmlUrl=\"http://www.rubyrailways.com/feed/\" htmlUrl=\"http://www.rubyrailways.com\"/>\n            <outline text=\"Rubynaut\" title=\"Rubynaut\" type=\"rss\"\n                xmlUrl=\"http://www.rubynaut.net/xml/atom/feed.xml\" htmlUrl=\"http://www.rubynaut.net\"/>\n            <outline text=\"Ryan\'s Scraps - Blog\"\n                title=\"Ryan\'s Scraps - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RyansScraps\" htmlUrl=\"http://ryandaigle.com/\"/>\n            <outline text=\"scRUBYt!\" title=\"scRUBYt!\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Scrubyt\" htmlUrl=\"http://scrubyt.org/blog\"/>\n            <outline text=\"Sean Cribbs\" title=\"Sean Cribbs\" type=\"rss\"\n                xmlUrl=\"http://seancribbs.com/atom.xml\" htmlUrl=\"http://seancribbs.com/\"/>\n            <outline text=\"SEO on Rails - Home\"\n                title=\"SEO on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seo-rails\" htmlUrl=\"http://www.seoonrails.com/\"/>\n            <outline text=\"Simone Carletti\'s Blog\"\n                title=\"Simone Carletti\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://www.simonecarletti.com/blog/index.xml\" htmlUrl=\"http://www.simonecarletti.com/blog/\"/>\n            <outline text=\"Slash7 with Amy Hoy - Home\"\n                title=\"Slash7 with Amy Hoy - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/slash7/rss\" htmlUrl=\"http://www.slash7.com/\"/>\n            <outline text=\"Snax\" title=\"Snax\" type=\"rss\"\n                xmlUrl=\"http://blog.evanweaver.com/xml/atom.xml\" htmlUrl=\"http://blog.evanweaver.com/\"/>\n            <outline text=\"Softies on Rails - Home\"\n                title=\"Softies on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SoftiesOnRails\" htmlUrl=\"http://www.softiesonrails.com/\"/>\n            <outline text=\"software by daniel choi\"\n                title=\"software by daniel choi\" type=\"rss\"\n                xmlUrl=\"http://danielchoi.com/software/index.atom\" htmlUrl=\"http://danielchoi.com/software\"/>\n            <outline text=\"Sporkmonger\" title=\"Sporkmonger\" type=\"rss\"\n                xmlUrl=\"http://sporkmonger.com/entries/feed/\" htmlUrl=\"http://sporkmonger.com/\"/>\n            <outline text=\"STEPHEN CHU . com\" title=\"STEPHEN CHU . com\"\n                type=\"rss\"\n                xmlUrl=\"http://www.stephenchu.com/feeds/posts/default\" htmlUrl=\"http://www.stephenchu.com/\"/>\n            <outline text=\"Technology for Humans - Home\"\n                title=\"Technology for Humans - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/mslater\" htmlUrl=\"http://www.mslater.com/\"/>\n            <outline text=\"The Idea Forge\" title=\"The Idea Forge\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ideaforge.org/blog/?feed=rss2\" htmlUrl=\"http://www.ideaforge.org/blog\"/>\n            <outline text=\"The Rails Way - all\"\n                title=\"The Rails Way - all\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/TheRailsWay\" htmlUrl=\"http://www.therailsway.com/\"/>\n            <outline text=\"the { buckblogs :here } - Home\"\n                title=\"the { buckblogs :here } - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/buckblog\" htmlUrl=\"http://weblog.jamisbuck.org/\"/>\n            <outline text=\"the { buckblogs :here } - Home\"\n                title=\"the { buckblogs :here } - Home\" type=\"rss\"\n                xmlUrl=\"http://weblog.jamisbuck.org/feed/atom.xml\" htmlUrl=\"http://weblog.jamisbuck.org/\"/>\n            <outline text=\"the.railsi.st - Home\"\n                title=\"the.railsi.st - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/therailsist\" htmlUrl=\"http://the.railsi.st/\"/>\n            <outline text=\"tog development\" title=\"tog development\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/toghq\" htmlUrl=\"http://www.toghq.com\"/>\n            <outline text=\"vaporbase :: Postings\"\n                title=\"vaporbase :: Postings\" type=\"rss\"\n                xmlUrl=\"http://www.vaporbase.com/postings?theme=rss\" htmlUrl=\"http://www.vaporbase.com/\"/>\n            <outline text=\"Viget Extend : The Development Lab\"\n                title=\"Viget Extend : The Development Lab\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/VigetExtend\" htmlUrl=\"http://www.viget.com/extend/\"/>\n            <outline text=\"Wiseheart Design - Home\"\n                title=\"Wiseheart Design - Home\" type=\"rss\"\n                xmlUrl=\"http://wiseheartdesign.com/feed/atom.xml\" htmlUrl=\"http://wiseheartdesign.com/\"/>\n            <outline text=\"Zilkey - Home\" title=\"Zilkey - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/zilkey\" htmlUrl=\"http://zilkey.com/\"/>\n        </outline>\n        <outline title=\"Heroku\" text=\"Heroku\">\n            <outline text=\"Adam @ Heroku\" title=\"Adam @ Heroku\"\n                type=\"rss\" xmlUrl=\"http://adam.blog.heroku.com/rss\" htmlUrl=\"http://www.google.com/reader/view/feed%2Fhttp%3A%2F%2Fadam.blog.heroku.com%2Frss\"/>\n            <outline text=\"Heroku News\" title=\"Heroku News\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/heroku\" htmlUrl=\"http://blog.heroku.com\"/>\n        </outline>\n        <outline title=\"Rails plugins\" text=\"Rails plugins\">\n            <outline text=\"ActiveScaffold - Blog\"\n                title=\"ActiveScaffold - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/activescaffold\" htmlUrl=\"http://activescaffold.com/blog\"/>\n            <outline text=\"PluginAWeek\" title=\"PluginAWeek\" type=\"rss\"\n                xmlUrl=\"http://www.pluginaweek.org/feed/\" htmlUrl=\"http://www.pluginaweek.org\"/>\n            <outline text=\"Ruby on Rails Plugins\"\n                title=\"Ruby on Rails Plugins\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyOnRailsPlugins\" htmlUrl=\"http://agilewebdevelopment.com/plugins\"/>\n            <outline text=\"The Hobo Blog\" title=\"The Hobo Blog\"\n                type=\"rss\" xmlUrl=\"http://hobocentral.net/blog/feed/\" htmlUrl=\"http://hobocentral.net/blog\"/>\n        </outline>\n        <outline title=\"Cloud computing\" text=\"Cloud computing\">\n            <outline text=\"IT Management and Cloud Blog\"\n                title=\"IT Management and Cloud Blog\" type=\"rss\"\n                xmlUrl=\"http://www.johnmwillis.com/feed/\" htmlUrl=\"http://www.johnmwillis.com\"/>\n        </outline>\n        <outline title=\"PCI4R collective intelligence\" text=\"PCI4R collective intelligence\">\n            <outline text=\"this is totally gonna work...\"\n                title=\"this is totally gonna work...\" type=\"rss\"\n                xmlUrl=\"http://blog.livollmers.net/index.php/feed/\" htmlUrl=\"http://livollmers.net\"/>\n        </outline>\n        <outline title=\"Blog for money\" text=\"Blog for money\">\n            <outline text=\"103bees Blog\" title=\"103bees Blog\" type=\"rss\"\n                xmlUrl=\"http://103bees.com/blog/feed/\" htmlUrl=\"http://103bees.com/blog\"/>\n            <outline text=\"Daily Blog Tips\" title=\"Daily Blog Tips\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/DailyBlogTips\" htmlUrl=\"http://www.dailyblogtips.com\"/>\n            <outline text=\"Dosh Dosh\" title=\"Dosh Dosh\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/doshdosh\" htmlUrl=\"http://www.doshdosh.com\"/>\n            <outline text=\"feed/http://weblog.sitemeter.com/feed/\"\n                title=\"feed/http://weblog.sitemeter.com/feed/\"\n                type=\"rss\" xmlUrl=\"http://weblog.sitemeter.com/feed/\" htmlUrl=\"http://weblog.sitemeter.com\"/>\n            <outline text=\"NetBusinessBlog\" title=\"NetBusinessBlog\"\n                type=\"rss\" xmlUrl=\"http://www.netbusinessblog.com/feed/\" htmlUrl=\"http://www.netbusinessblog.com\"/>\n            <outline text=\"ProBlogger Blog Tips\"\n                title=\"ProBlogger Blog Tips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ProbloggerHelpingBloggersEarnMoney\" htmlUrl=\"http://www.problogger.net\"/>\n        </outline>\n        <outline title=\"Semantic web\" text=\"Semantic web\">\n            <outline text=\"More News\" title=\"More News\" type=\"rss\"\n                xmlUrl=\"http://morenews.blogspot.com/feeds/posts/default\" htmlUrl=\"http://morenews.blogspot.com/\"/>\n            <outline text=\"Stefano\'s Linotype\"\n                title=\"Stefano\'s Linotype\" type=\"rss\"\n                xmlUrl=\"http://www.betaversion.org/~stefano/linotype/index.php?feed=rss2\" htmlUrl=\"http://www.betaversion.org/~stefano/linotype\"/>\n        </outline>\n        <outline title=\"Socials\" text=\"Socials\">\n            <outline text=\"Bokardo - Social Design by Joshua Porter\"\n                title=\"Bokardo - Social Design by Joshua Porter\"\n                type=\"rss\" xmlUrl=\"http://bokardo.com/feed/\" htmlUrl=\"http://bokardo.com\"/>\n            <outline text=\"Creating Passionate Users\"\n                title=\"Creating Passionate Users\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/typepad/KathySierra/creating_passionate_users\" htmlUrl=\"http://headrush.typepad.com/creating_passionate_users/\"/>\n            <outline text=\"The Bumble Bee\" title=\"The Bumble Bee\"\n                type=\"rss\" xmlUrl=\"http://www.bioteams.com/atom.xml\" htmlUrl=\"http://www.bioteams.com/\"/>\n        </outline>\n        <outline title=\"Lifestream\" text=\"Lifestream\">\n            <outline text=\"Lifestream Blog\" title=\"Lifestream Blog\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Lifestreamblogcom\" htmlUrl=\"http://lifestreamblog.com\"/>\n            <outline text=\"tail -f carlo.log » escaloop\"\n                title=\"tail -f carlo.log » escaloop\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/escaloop\" htmlUrl=\"http://carlo.zottmann.org/\"/>\n        </outline>\n        <outline title=\"Geeky\" text=\"Geeky\">\n            <outline text=\"Cool Tools\" title=\"Cool Tools\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/CoolTools\" htmlUrl=\"http://www.kk.org/cooltools/\"/>\n            <outline text=\"Lifehacker\" title=\"Lifehacker\" type=\"rss\"\n                xmlUrl=\"http://lifehacker.com/index.xml\" htmlUrl=\"http://lifehacker.com\"/>\n            <outline text=\"MAKE Magazine\" title=\"MAKE Magazine\"\n                type=\"rss\"\n                xmlUrl=\"http://www.makezine.com/blog/index.xml\" htmlUrl=\"http://blog.makezine.com/\"/>\n            <outline text=\"Penny Arcade\" title=\"Penny Arcade\" type=\"rss\"\n                xmlUrl=\"http://www.penny-arcade.com/rss.xml\" htmlUrl=\"http://www.penny-arcade.com/\"/>\n            <outline text=\"PVRblog\" title=\"PVRblog\" type=\"rss\"\n                xmlUrl=\"http://www.pvrblog.com/pvr/index.rdf\" htmlUrl=\"http://www.pvrblog.com/pvr/\"/>\n        </outline>\n        <outline title=\"RDF\" text=\"RDF\">\n            <outline text=\"kemistry desktop environment\"\n                title=\"kemistry desktop environment\" type=\"rss\"\n                xmlUrl=\"http://kemistry-desktop.blogspot.com/feeds/posts/default\" htmlUrl=\"http://kemistry-desktop.blogspot.com/\"/>\n        </outline>\n        <outline title=\"Amazon\" text=\"Amazon\">\n            <outline text=\"Amazon Web Services Blog\"\n                title=\"Amazon Web Services Blog\" type=\"rss\"\n                xmlUrl=\"http://aws.typepad.com/aws/atom.xml\" htmlUrl=\"http://aws.typepad.com/aws/\"/>\n            <outline text=\"RightScale Blog\" title=\"RightScale Blog\"\n                type=\"rss\" xmlUrl=\"http://blog.rightscale.com/feed/\" htmlUrl=\"http://blog.rightscale.com\"/>\n        </outline>\n        <outline title=\"People\" text=\"People\">\n            <outline text=\"adamwiggins\'s Activity\"\n                title=\"adamwiggins\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/adamwiggins.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"alexvollmer\'s Activity\"\n                title=\"alexvollmer\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/alexvollmer.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"drnic\'s Activity\" title=\"drnic\'s Activity\"\n                type=\"rss\" xmlUrl=\"http://github.com/drnic.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"gbuesing\'s Activity\"\n                title=\"gbuesing\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/gbuesing.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"halorgium\'s Activity\"\n                title=\"halorgium\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/halorgium.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"lgs\'s Private Feed\"\n                title=\"lgs\'s Private Feed\" type=\"rss\"\n                xmlUrl=\"https://github.com/lgs.private.atom?token=9502326e5ce527332592ab490aedeec3\" htmlUrl=\"https://github.com/\"/>\n            <outline text=\"maccman\'s Activity\"\n                title=\"maccman\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/maccman.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"ryanb\'s Activity\" title=\"ryanb\'s Activity\"\n                type=\"rss\" xmlUrl=\"http://github.com/ryanb.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"segfault\'s Activity\"\n                title=\"segfault\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/segfault.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"tablatom\'s Activity\"\n                title=\"tablatom\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/tablatom.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"technoweenie\'s Activity\"\n                title=\"technoweenie\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/technoweenie.atom\" htmlUrl=\"http://github.com/\"/>\n        </outline>\n        <outline title=\"Ruby aggregator\" text=\"Ruby aggregator\">\n            <outline text=\"Artima Ruby Buzz\" title=\"Artima Ruby Buzz\"\n                type=\"rss\"\n                xmlUrl=\"http://www.artima.com/buzz/feeds/ruby.rss\" htmlUrl=\"http://www.artima.com/buzz/community.jsp?forum=123\"/>\n            <outline text=\"reddit.com/r/ruby/\"\n                title=\"reddit.com/r/ruby/\" type=\"rss\"\n                xmlUrl=\"http://reddit.com/r/ruby/.rss\" htmlUrl=\"http://www.reddit.com/r/ruby/\"/>\n            <outline text=\"Ruby Inside\" title=\"Ruby Inside\" type=\"rss\"\n                xmlUrl=\"http://www.rubyinside.com/feed\" htmlUrl=\"http://www.rubyinside.com\"/>\n            <outline text=\"RubyFlow\" title=\"RubyFlow\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Rubyflow\" htmlUrl=\"http://www.rubyflow.com/\"/>\n        </outline>\n    </body>\n</opml>\n');
/*!40000 ALTER TABLE `db_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_urls`
--

DROP TABLE IF EXISTS `feed_urls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `feed_urls` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `feed_url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `star` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `feed_urls`
--

LOCK TABLES `feed_urls` WRITE;
/*!40000 ALTER TABLE `feed_urls` DISABLE KEYS */;
INSERT INTO `feed_urls` VALUES (1,1,'http://www.google.com/reader/shared/user/09520960353889459368/state/com.google/starred?hl=en&hl=en','Google reader: lgs\' starred items ',NULL,'2008-12-20 10:21:23','2008-12-20 10:21:23');
/*!40000 ALTER TABLE `feed_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Abkhazian','AB'),(2,'Afar','AA'),(3,'Afrikaans','AF'),(4,'Albanian','SQ'),(5,'Amharic','AM'),(6,'Arabic','AR'),(7,'Armenian','HY'),(8,'Assamese','AS'),(9,'Aymara','AY'),(10,'Azerbaijani','AZ'),(11,'Bashkir','BA'),(12,'Basque','EU'),(13,'Bengali','BN'),(14,'Bhutani','DZ'),(15,'Bihari','BH'),(16,'Bislama','BI'),(17,'Breton','BR'),(18,'Bulgarian','BG'),(19,'Burmese','MY'),(20,'Byelorussian','BE'),(21,'Cambodian','KM'),(22,'Catalan','CA'),(23,'Chinese (traditional)','ZH_TW'),(24,'Chinese (simplified)','ZH_CN'),(25,'Corsican','CO'),(26,'Croatian','HR'),(27,'Czech','CS'),(28,'Danish','DA'),(29,'Dutch','NL'),(30,'English','EN'),(31,'Esperanto','EO'),(32,'Estonian','ET'),(33,'Faeroese','FO'),(34,'Fiji','FJ'),(35,'Finnish','FI'),(36,'French','FR'),(37,'Frisian','FY'),(38,'Gaelic','GD'),(39,'Galician','GL'),(40,'Georgian','KA'),(41,'German','DE'),(42,'Greek','EL'),(43,'Greenlandic','KL'),(44,'Guarani','GN'),(45,'Gujarati','GU'),(46,'Hausa','HA'),(47,'Hebrew','IW'),(48,'Hindi','HI'),(49,'Hungarian','HU'),(50,'Icelandic','IS'),(51,'Indonesian','IN'),(52,'Interlingua','IA'),(53,'Interlingue','IE'),(54,'Inupiak','IK'),(55,'Irish','GA'),(56,'Italian','IT'),(57,'Japanese','JA'),(58,'Javanese','JW'),(59,'Kannada','KN'),(60,'Kashmiri','KS'),(61,'Kazakh','KK'),(62,'Kinyarwanda','RW'),(63,'Kirghiz','KY'),(64,'Kirundi','RN'),(65,'Korean','KO'),(66,'Kurdish','KU'),(67,'Laothian','LO'),(68,'Latin','LA'),(69,'Latvian','LV'),(70,'Lingala','LN'),(71,'Lithuanian','LT'),(72,'Macedonian','MK'),(73,'Malagasy','MG'),(74,'Malay','MS'),(75,'Malayalam','ML'),(76,'Maltese','MT'),(77,'Maori','MI'),(78,'Marathi','MR'),(79,'Moldavian','MO'),(80,'Mongolian','MN'),(81,'Nauru','NA'),(82,'Nepali','NE'),(83,'Norwegian','NO'),(84,'Occitan','OC'),(85,'Oriya','OR'),(86,'Oromo','OM'),(87,'Pashto','PS'),(88,'Persian','FA'),(89,'Polish','PL'),(90,'Portuguese','PT'),(91,'Português (Brasil)','PT_BR'),(92,'Punjabi','PA'),(93,'Quechua','QU'),(94,'Rhaeto-Romance','RM'),(95,'Romanian','RO'),(96,'Russian','RU'),(97,'Samoan','SM'),(98,'Sangro','SG'),(99,'Sanskrit','SA'),(100,'Serbian','SR'),(101,'Serbo-Croatian','SH'),(102,'Sesotho','ST'),(103,'Setswana','TN'),(104,'Shona','SN'),(105,'Sindhi','SD'),(106,'Singhalese','SI'),(107,'Siswati','SS'),(108,'Slovak','SK'),(109,'Slovenian','SL'),(110,'Somali','SO'),(111,'Spanish','ES'),(112,'Sudanese','SU'),(113,'Swahili','SW'),(114,'Swedish','SV'),(115,'Tagalog','TL'),(116,'Tajik','TG'),(117,'Tamil','TA'),(118,'Tatar','TT'),(119,'Telugu','TE'),(120,'Thai','TH'),(121,'Tibetan','BO'),(122,'Tigrinya','TI'),(123,'Tonga','TO'),(124,'Tsonga','TS'),(125,'Turkish','TR'),(126,'Turkmen','TK'),(127,'Twi','TW'),(128,'Ukrainian','UK'),(129,'Urdu','UR'),(130,'Uzbek','UZ'),(131,'Vietnamese','VI'),(132,'Volapuk','VO'),(133,'Welsh','CY'),(134,'Wolof','WO'),(135,'Xhosa','XH'),(136,'Yiddish','JI'),(137,'Yoruba','YO'),(138,'Zulu','ZU');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_associations`
--

DROP TABLE IF EXISTS `open_id_associations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `open_id_associations` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` blob,
  `secret` blob,
  `handle` varchar(255) default NULL,
  `assoc_type` varchar(255) default NULL,
  `issued` int(11) default NULL,
  `lifetime` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `open_id_associations`
--

LOCK TABLES `open_id_associations` WRITE;
/*!40000 ALTER TABLE `open_id_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_nonces`
--

DROP TABLE IF EXISTS `open_id_nonces`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `open_id_nonces` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `open_id_requests` (
  `id` int(11) NOT NULL auto_increment,
  `token` varchar(40) default NULL,
  `parameters` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_open_id_requests_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

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
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `opml_metadatas`
--

LOCK TABLES `opml_metadatas` WRITE;
/*!40000 ALTER TABLE `opml_metadatas` DISABLE KEYS */;
INSERT INTO `opml_metadatas` VALUES (1,1,64592,1,'text/xml','google-reader-subscriptions.xml','2008-12-20 10:04:53','2008-12-20 10:04:53');
/*!40000 ALTER TABLE `opml_metadatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,1,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-12-20 10:04:01','2008-12-20 10:04:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_policies`
--

DROP TABLE IF EXISTS `release_policies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `release_policies` (
  `id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL,
  `type_identifier` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_property` (`site_id`,`property`,`type_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `release_policies`
--

LOCK TABLES `release_policies` WRITE;
/*!40000 ALTER TABLE `release_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `release_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('2'),('20080707162005'),('20080908155341'),('20081006203954'),('20081006204010'),('20081013062452'),('20081021172548'),('20081029205505'),('3'),('4');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `services` (
  `id` int(11) NOT NULL auto_increment,
  `servicename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_services_on_servicename` (`servicename`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'delicious','http://delicious.com/'),(2,'lastfm','http://www.lastfm.it/user/'),(3,'linkedin','http://www.linkedin.com/in/'),(4,'flickr','http://flickr.com/'),(5,'friendfeed','http://friendfeed.com/'),(6,'librarything','http://www.librarything.com/'),(7,'twitter','http://twitter.com/');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_sites_on_account_id_and_url` (`account_id`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `timezones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_timezones_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmera'),(6,'Africa/Bamako'),(7,'Africa/Bangui'),(8,'Africa/Banjul'),(9,'Africa/Bissau'),(10,'Africa/Blantyre'),(11,'Africa/Brazzaville'),(12,'Africa/Bujumbura'),(13,'Africa/Cairo'),(14,'Africa/Casablanca'),(15,'Africa/Ceuta'),(16,'Africa/Conakry'),(17,'Africa/Dakar'),(18,'Africa/Dar_es_Salaam'),(19,'Africa/Djibouti'),(20,'Africa/Douala'),(21,'Africa/El_Aaiun'),(22,'Africa/Freetown'),(23,'Africa/Gaborone'),(24,'Africa/Harare'),(25,'Africa/Johannesburg'),(26,'Africa/Kampala'),(27,'Africa/Khartoum'),(28,'Africa/Kigali'),(29,'Africa/Kinshasa'),(30,'Africa/Lagos'),(31,'Africa/Libreville'),(32,'Africa/Lome'),(33,'Africa/Luanda'),(34,'Africa/Lubumbashi'),(35,'Africa/Lusaka'),(36,'Africa/Malabo'),(37,'Africa/Maputo'),(38,'Africa/Maseru'),(39,'Africa/Mbabane'),(40,'Africa/Mogadishu'),(41,'Africa/Monrovia'),(42,'Africa/Nairobi'),(43,'Africa/Ndjamena'),(44,'Africa/Niamey'),(45,'Africa/Nouakchott'),(46,'Africa/Ouagadougou'),(47,'Africa/Porto'),(48,'Africa/Sao_Tome'),(49,'Africa/Tripoli'),(50,'Africa/Tunis'),(51,'Africa/Windhoek'),(52,'America/Adak'),(53,'America/Anchorage'),(54,'America/Anguilla'),(55,'America/Antigua'),(56,'America/Araguaina'),(57,'America/Argentina/Buenos_Aires'),(58,'America/Argentina/Catamarca'),(59,'America/Argentina/Cordoba'),(60,'America/Argentina/Jujuy'),(61,'America/Argentina/La_Rioja'),(62,'America/Argentina/Mendoza'),(63,'America/Argentina/Rio_Gallegos'),(64,'America/Argentina/San_Juan'),(65,'America/Argentina/Tucuman'),(66,'America/Argentina/Ushuaia'),(67,'America/Aruba'),(68,'America/Asuncion'),(69,'America/Bahia'),(70,'America/Barbados'),(71,'America/Belem'),(72,'America/Belize'),(73,'America/Boa_Vista'),(74,'America/Bogota'),(75,'America/Boise'),(76,'America/Cambridge_Bay'),(77,'America/Campo_Grande'),(78,'America/Cancun'),(79,'America/Caracas'),(80,'America/Cayenne'),(81,'America/Cayman'),(82,'America/Chicago'),(83,'America/Chihuahua'),(84,'America/Coral_Harbour'),(85,'America/Costa_Rica'),(86,'America/Cuiaba'),(87,'America/Curacao'),(88,'America/Danmarkshavn'),(89,'America/Dawson'),(90,'America/Dawson_Creek'),(91,'America/Denver'),(92,'America/Detroit'),(93,'America/Dominica'),(94,'America/Edmonton'),(95,'America/Eirunepe'),(96,'America/El_Salvador'),(97,'America/Fortaleza'),(98,'America/Glace_Bay'),(99,'America/Godthab'),(100,'America/Goose_Bay'),(101,'America/Grand_Turk'),(102,'America/Grenada'),(103,'America/Guadeloupe'),(104,'America/Guatemala'),(105,'America/Guayaquil'),(106,'America/Guyana'),(107,'America/Halifax'),(108,'America/Havana'),(109,'America/Hermosillo'),(110,'America/Indiana/Indianapolis'),(111,'America/Indiana/Knox'),(112,'America/Indiana/Marengo'),(113,'America/Indiana/Petersburg'),(114,'America/Indiana/Vevay'),(115,'America/Indiana/Vincennes'),(116,'America/Inuvik'),(117,'America/Iqaluit'),(118,'America/Jamaica'),(119,'America/Juneau'),(120,'America/Kentucky/Louisville'),(121,'America/Kentucky/Monticello'),(122,'America/La_Paz'),(123,'America/Lima'),(124,'America/Los_Angeles'),(125,'America/Maceio'),(126,'America/Managua'),(127,'America/Manaus'),(128,'America/Martinique'),(129,'America/Mazatlan'),(130,'America/Menominee'),(131,'America/Merida'),(132,'America/Mexico_City'),(133,'America/Miquelon'),(134,'America/Moncton'),(135,'America/Monterrey'),(136,'America/Montevideo'),(137,'America/Montreal'),(138,'America/Montserrat'),(139,'America/Nassau'),(140,'America/New_York'),(141,'America/Nipigon'),(142,'America/Nome'),(143,'America/Noronha'),(144,'America/North_Dakota/Center'),(145,'America/Panama'),(146,'America/Pangnirtung'),(147,'America/Paramaribo'),(148,'America/Phoenix'),(149,'America/Port'),(151,'America/Porto_Velho'),(150,'America/Port_of_Spain'),(152,'America/Puerto_Rico'),(153,'America/Rainy_River'),(154,'America/Rankin_Inlet'),(155,'America/Recife'),(156,'America/Regina'),(157,'America/Rio_Branco'),(158,'America/Santiago'),(159,'America/Santo_Domingo'),(160,'America/Sao_Paulo'),(161,'America/Scoresbysund'),(162,'America/Shiprock'),(163,'America/St_Johns'),(164,'America/St_Kitts'),(165,'America/St_Lucia'),(166,'America/St_Thomas'),(167,'America/St_Vincent'),(168,'America/Swift_Current'),(169,'America/Tegucigalpa'),(170,'America/Thule'),(171,'America/Thunder_Bay'),(172,'America/Tijuana'),(173,'America/Toronto'),(174,'America/Tortola'),(175,'America/Vancouver'),(176,'America/Whitehorse'),(177,'America/Winnipeg'),(178,'America/Yakutat'),(179,'America/Yellowknife'),(180,'Antarctica/Casey'),(181,'Antarctica/Davis'),(182,'Antarctica/DumontDUrville'),(183,'Antarctica/Mawson'),(184,'Antarctica/McMurdo'),(185,'Antarctica/Palmer'),(186,'Antarctica/Rothera'),(187,'Antarctica/South_Pole'),(188,'Antarctica/Syowa'),(189,'Antarctica/Vostok'),(190,'Arctic/Longyearbyen'),(191,'Asia/Aden'),(192,'Asia/Almaty'),(193,'Asia/Amman'),(194,'Asia/Anadyr'),(195,'Asia/Aqtau'),(196,'Asia/Aqtobe'),(197,'Asia/Ashgabat'),(198,'Asia/Baghdad'),(199,'Asia/Bahrain'),(200,'Asia/Baku'),(201,'Asia/Bangkok'),(202,'Asia/Beirut'),(203,'Asia/Bishkek'),(204,'Asia/Brunei'),(205,'Asia/Calcutta'),(206,'Asia/Choibalsan'),(207,'Asia/Chongqing'),(208,'Asia/Colombo'),(209,'Asia/Damascus'),(210,'Asia/Dhaka'),(211,'Asia/Dili'),(212,'Asia/Dubai'),(213,'Asia/Dushanbe'),(214,'Asia/Gaza'),(215,'Asia/Harbin'),(216,'Asia/Hong_Kong'),(217,'Asia/Hovd'),(218,'Asia/Irkutsk'),(219,'Asia/Jakarta'),(220,'Asia/Jayapura'),(221,'Asia/Jerusalem'),(222,'Asia/Kabul'),(223,'Asia/Kamchatka'),(224,'Asia/Karachi'),(225,'Asia/Kashgar'),(226,'Asia/Katmandu'),(227,'Asia/Krasnoyarsk'),(228,'Asia/Kuala_Lumpur'),(229,'Asia/Kuching'),(230,'Asia/Kuwait'),(231,'Asia/Macau'),(232,'Asia/Magadan'),(233,'Asia/Makassar'),(234,'Asia/Manila'),(235,'Asia/Muscat'),(236,'Asia/Nicosia'),(237,'Asia/Novosibirsk'),(238,'Asia/Omsk'),(239,'Asia/Oral'),(240,'Asia/Phnom_Penh'),(241,'Asia/Pontianak'),(242,'Asia/Pyongyang'),(243,'Asia/Qatar'),(244,'Asia/Qyzylorda'),(245,'Asia/Rangoon'),(246,'Asia/Riyadh'),(247,'Asia/Saigon'),(248,'Asia/Sakhalin'),(249,'Asia/Samarkand'),(250,'Asia/Seoul'),(251,'Asia/Shanghai'),(252,'Asia/Singapore'),(253,'Asia/Taipei'),(254,'Asia/Tashkent'),(255,'Asia/Tbilisi'),(256,'Asia/Tehran'),(257,'Asia/Thimphu'),(258,'Asia/Tokyo'),(259,'Asia/Ulaanbaatar'),(260,'Asia/Urumqi'),(261,'Asia/Vientiane'),(262,'Asia/Vladivostok'),(263,'Asia/Yakutsk'),(264,'Asia/Yekaterinburg'),(265,'Asia/Yerevan'),(266,'Atlantic/Azores'),(267,'Atlantic/Bermuda'),(268,'Atlantic/Canary'),(269,'Atlantic/Cape_Verde'),(270,'Atlantic/Faeroe'),(271,'Atlantic/Jan_Mayen'),(272,'Atlantic/Madeira'),(273,'Atlantic/Reykjavik'),(274,'Atlantic/South_Georgia'),(276,'Atlantic/Stanley'),(275,'Atlantic/St_Helena'),(277,'Australia/Adelaide'),(278,'Australia/Brisbane'),(279,'Australia/Broken_Hill'),(280,'Australia/Currie'),(281,'Australia/Darwin'),(282,'Australia/Hobart'),(283,'Australia/Lindeman'),(284,'Australia/Lord_Howe'),(285,'Australia/Melbourne'),(286,'Australia/Perth'),(287,'Australia/Sydney'),(288,'Europe/Amsterdam'),(289,'Europe/Andorra'),(290,'Europe/Athens'),(291,'Europe/Belgrade'),(292,'Europe/Berlin'),(293,'Europe/Bratislava'),(294,'Europe/Brussels'),(295,'Europe/Bucharest'),(296,'Europe/Budapest'),(297,'Europe/Chisinau'),(298,'Europe/Copenhagen'),(299,'Europe/Dublin'),(300,'Europe/Gibraltar'),(301,'Europe/Helsinki'),(302,'Europe/Istanbul'),(303,'Europe/Kaliningrad'),(304,'Europe/Kiev'),(305,'Europe/Lisbon'),(306,'Europe/Ljubljana'),(307,'Europe/London'),(308,'Europe/Luxembourg'),(309,'Europe/Madrid'),(310,'Europe/Malta'),(311,'Europe/Mariehamn'),(312,'Europe/Minsk'),(313,'Europe/Monaco'),(314,'Europe/Moscow'),(315,'Europe/Oslo'),(316,'Europe/Paris'),(317,'Europe/Prague'),(318,'Europe/Riga'),(319,'Europe/Rome'),(320,'Europe/Samara'),(321,'Europe/San_Marino'),(322,'Europe/Sarajevo'),(323,'Europe/Simferopol'),(324,'Europe/Skopje'),(325,'Europe/Sofia'),(326,'Europe/Stockholm'),(327,'Europe/Tallinn'),(328,'Europe/Tirane'),(329,'Europe/Uzhgorod'),(330,'Europe/Vaduz'),(331,'Europe/Vatican'),(332,'Europe/Vienna'),(333,'Europe/Vilnius'),(334,'Europe/Warsaw'),(335,'Europe/Zagreb'),(336,'Europe/Zaporozhye'),(337,'Europe/Zurich'),(338,'Indian/Antananarivo'),(339,'Indian/Chagos'),(340,'Indian/Christmas'),(341,'Indian/Cocos'),(342,'Indian/Comoro'),(343,'Indian/Kerguelen'),(344,'Indian/Mahe'),(345,'Indian/Maldives'),(346,'Indian/Mauritius'),(347,'Indian/Mayotte'),(348,'Indian/Reunion'),(349,'Pacific/Apia'),(350,'Pacific/Auckland'),(351,'Pacific/Chatham'),(352,'Pacific/Easter'),(353,'Pacific/Efate'),(354,'Pacific/Enderbury'),(355,'Pacific/Fakaofo'),(356,'Pacific/Fiji'),(357,'Pacific/Funafuti'),(358,'Pacific/Galapagos'),(359,'Pacific/Gambier'),(360,'Pacific/Guadalcanal'),(361,'Pacific/Guam'),(362,'Pacific/Honolulu'),(363,'Pacific/Johnston'),(364,'Pacific/Kiritimati'),(365,'Pacific/Kosrae'),(366,'Pacific/Kwajalein'),(367,'Pacific/Majuro'),(368,'Pacific/Marquesas'),(369,'Pacific/Midway'),(370,'Pacific/Nauru'),(371,'Pacific/Niue'),(372,'Pacific/Norfolk'),(373,'Pacific/Noumea'),(374,'Pacific/Pago_Pago'),(375,'Pacific/Palau'),(376,'Pacific/Pitcairn'),(377,'Pacific/Ponape'),(378,'Pacific/Port_Moresby'),(379,'Pacific/Rarotonga'),(380,'Pacific/Saipan'),(381,'Pacific/Tahiti'),(382,'Pacific/Tarawa'),(383,'Pacific/Tongatapu'),(384,'Pacific/Truk'),(385,'Pacific/Wake'),(386,'Pacific/Wallis');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernames`
--

DROP TABLE IF EXISTS `usernames`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `usernames` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_usernames_on_service_id_and_login_name` (`service_id`,`login_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `usernames`
--

LOCK TABLES `usernames` WRITE;
/*!40000 ALTER TABLE `usernames` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernames` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-12-21 14:03:24
