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
  `login` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `crypted_password` varchar(40) NOT NULL default '',
  `salt` varchar(40) NOT NULL default '',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'lgs','luca.soave@gmail.com','27b18dc3ce30bd10e49bc6206661f8c4dd616ba6','1bdcf312eefb169da1f4cfa536e4332819ead0ba',NULL,NULL,NULL,NULL,'2008-10-17 18:06:51','2008-10-17 18:06:31','2008-11-02 10:21:32',NULL,'2008-11-02 10:21:32',0),(2,1,'paty','novara.laura@gmail.com','c2c04550a9e684d716451de25728ad27a03a66fc','77188a48cbbfdc7862f7e080ff7dbc3aeefc9b84',NULL,NULL,NULL,NULL,'2008-10-18 11:12:28','2008-10-18 11:09:06','2008-11-02 09:28:34',NULL,'2008-11-02 09:28:34',0),(3,1,'admin','admin@useraxis.org','1edcff84beeb58e76f2782e84ffc2ecf8262b829','47a0f4d54a3d0c34832c5b4e2eae78517824aef4',NULL,NULL,NULL,NULL,'2008-10-18 14:31:14','2008-10-18 14:29:30','2008-11-02 10:07:07',NULL,'2008-11-02 10:07:07',0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `code` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_countries_on_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_files`
--

LOCK TABLES `db_files` WRITE;
/*!40000 ALTER TABLE `db_files` DISABLE KEYS */;
INSERT INTO `db_files` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<opml version=\"1.0\">\n    <head>\n        <title>lgs subscriptions in Google Reader</title>\n    </head>\n    <body>\n        <outline text=\"Bogle\'s Blog\" title=\"Bogle\'s Blog\" type=\"rss\"\n            xmlUrl=\"http://thebogles.com/blog/feed/\" htmlUrl=\"http://thebogles.com/blog\"/>\n        <outline text=\"CohesiveFT Elastic Server\"\n            title=\"CohesiveFT Elastic Server\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/elastic-server\" htmlUrl=\"http://elasticserver.blogspot.com/\"/>\n        <outline text=\"DataPortability.org Format Updates\"\n            title=\"DataPortability.org Format Updates\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/DataPortability\" htmlUrl=\"http://192.168.254.26/myfeed/blog/default/ChrisSaad_DataPortability\"/>\n        <outline text=\"DBpedia\" title=\"DBpedia\" type=\"rss\"\n            xmlUrl=\"http://blog.dbpedia.org/feed/\" htmlUrl=\"http://blog.dbpedia.org\"/>\n        <outline text=\"github\'s Activity\" title=\"github\'s Activity\"\n            type=\"rss\" xmlUrl=\"http://github.com/github.atom\" htmlUrl=\"http://github.com/\"/>\n        <outline text=\"Here Comes Everybody\"\n            title=\"Here Comes Everybody\" type=\"rss\"\n            xmlUrl=\"http://shirky.com/writings/rss.cgi\" htmlUrl=\"http://www.shirky.com/herecomeseverybody/\"/>\n        <outline text=\"louisgray.com\" title=\"louisgray.com\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/LouisgraycomLive\" htmlUrl=\"http://www.louisgray.com/live/\"/>\n        <outline text=\"Many Eyes blog\" title=\"Many Eyes blog\" type=\"rss\"\n            xmlUrl=\"http://manyeyes.alphaworks.ibm.com/blog/feed/\" htmlUrl=\"http://manyeyes.alphaworks.ibm.com/blog\"/>\n        <outline text=\"Microblogging.it\" title=\"Microblogging.it\"\n            type=\"rss\" xmlUrl=\"http://www.microblogging.it/feed/\" htmlUrl=\"http://www.microblogging.it\"/>\n        <outline text=\"Mister Bleigh - Blog\"\n            title=\"Mister Bleigh - Blog\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/mbleigh/\" htmlUrl=\"http://www.mbleigh.com/\"/>\n        <outline text=\"opml@feedhub\" title=\"opml@feedhub\" type=\"rss\"\n            xmlUrl=\"http://www.feedhub.com/iris/feeds/23277?c=688a61fc8fb08c4370d927de5b0234fca0c20780b42ac05193540a52f1984086\" htmlUrl=\"http://www.feedhub.com/iris/feeds/23277/memes\"/>\n        <outline text=\"OUseful Info\" title=\"OUseful Info\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/ouseful\" htmlUrl=\"http://ouseful.wordpress.com\"/>\n        <outline text=\"Recent Wordles\" title=\"Recent Wordles\" type=\"rss\"\n            xmlUrl=\"http://wordle.net/gallery/atom\" htmlUrl=\"http://wordle.net/gallery\"/>\n        <outline text=\"Recently Added Repositories\"\n            title=\"Recently Added Repositories\" type=\"rss\"\n            xmlUrl=\"http://github.com/repositories.atom\" htmlUrl=\"http://github.com/repositories\"/>\n        <outline text=\"Universal Recommendations\"\n            title=\"Universal Recommendations\" type=\"rss\"\n            xmlUrl=\"http://unirec.blogspot.com/feeds/posts/default\" htmlUrl=\"http://unirec.blogspot.com/\"/>\n        <outline text=\"UserVoice Blog\" title=\"UserVoice Blog\" type=\"rss\"\n            xmlUrl=\"http://blog.uservoice.com/feed/\" htmlUrl=\"http://blog.uservoice.com\"/>\n        <outline text=\"What\'s Up In Ruby\" title=\"What\'s Up In Ruby\"\n            type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/whatsupinruby\" htmlUrl=\"http://www.whatsupinruby.com/\"/>\n        <outline text=\"Zen and the Art of Programming\"\n            title=\"Zen and the Art of Programming\" type=\"rss\"\n            xmlUrl=\"http://feeds.feedburner.com/ZenAndTheArtOfRubyProgramming\" htmlUrl=\"http://antoniocangiano.com/\"/>\n        <outline title=\"API and Mashups\" text=\"API and Mashups\">\n            <outline text=\"Gnip Blog\" title=\"Gnip Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/gnip\" htmlUrl=\"http://blog.gnipcentral.com\"/>\n            <outline text=\"ProgrammableWeb\" title=\"ProgrammableWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/programmableweb\" htmlUrl=\"http://blog.programmableweb.com\"/>\n        </outline>\n        <outline title=\"Rails aggregators\" text=\"Rails aggregators\">\n            <outline text=\"del.icio.us/popular/rails\"\n                title=\"del.icio.us/popular/rails\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/popular/rails\" htmlUrl=\"http://delicious.com/popular\"/>\n            <outline text=\"Planet RubyOnRails\"\n                title=\"Planet RubyOnRails\" type=\"rss\"\n                xmlUrl=\"http://www.planetrubyonrails.org/xml/atom\" htmlUrl=\"http://www.planetrubyonrails.org/\"/>\n            <outline text=\"Rails Inside\" title=\"Rails Inside\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RailsInside\" htmlUrl=\"http://www.railsinside.com\"/>\n            <outline text=\"Ruby Inside\" title=\"Ruby Inside\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyInside\" htmlUrl=\"http://www.rubyinside.com\"/>\n            <outline text=\"Ruby on Rails Podcast - transcript\"\n                title=\"Ruby on Rails Podcast - transcript\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rubyonrails_transcript\" htmlUrl=\"http://podcast.rubyonrails.org\"/>\n            <outline text=\"self.works_with_ruby? - Home\"\n                title=\"self.works_with_ruby? - Home\" type=\"rss\"\n                xmlUrl=\"http://workswithruby.com/feed\" htmlUrl=\"http://workswithruby.com/\"/>\n        </outline>\n        <outline title=\"Others\" text=\"Others\">\n            <outline text=\"DataPortability.org Format Updates\"\n                title=\"DataPortability.org Format Updates\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/dataportability\" htmlUrl=\"http://192.168.254.26/myfeed/blog/default/ChrisSaad_DataPortability\"/>\n            <outline text=\"Digg / Tech Industry News\"\n                title=\"Digg / Tech Industry News\" type=\"rss\"\n                xmlUrl=\"http://digg.com/rss/indextech_news.xml\" htmlUrl=\"http://digg.com/\"/>\n            <outline\n                text=\"Future Feeder and Journal of Architecture &amp; Computation Culture\"\n                title=\"Future Feeder and Journal of Architecture &amp; Computation Culture\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/FutureFeeder\" htmlUrl=\"http://futurefeeder.com\"/>\n            <outline text=\"Identity 2.0\" title=\"Identity 2.0\" type=\"rss\"\n                xmlUrl=\"http://identity20.com/?feed=rss2\" htmlUrl=\"http://identity20.com\"/>\n            <outline text=\"Lifehacker\" title=\"Lifehacker\" type=\"rss\"\n                xmlUrl=\"http://feeds.gawker.com/lifehacker/full\" htmlUrl=\"http://lifehacker.com\"/>\n            <outline text=\"Open\" title=\"Open\" type=\"rss\"\n                xmlUrl=\"http://open.blogs.nytimes.com/rss2.xml\" htmlUrl=\"http://open.blogs.nytimes.com\"/>\n            <outline text=\"Open Web Design\" title=\"Open Web Design\"\n                type=\"rss\" xmlUrl=\"http://www.openwebdesign.org/rss\" htmlUrl=\"http://www.openwebdesign.org/\"/>\n            <outline text=\"O\'Reilly Radar\" title=\"O\'Reilly Radar\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/oreilly/radar/atom\" htmlUrl=\"http://radar.oreilly.com/\"/>\n            <outline text=\"Own Your Identity\" title=\"Own Your Identity\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ownyouridentity.com/feed/rss/\" htmlUrl=\"http://www.ownyouridentity.com\"/>\n            <outline text=\"Read/WriteWeb\" title=\"Read/WriteWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/readwriteweb\" htmlUrl=\"http://www.readwriteweb.com/\"/>\n            <outline text=\"Robin Good\'s MasterNewMedia - Italia\"\n                title=\"Robin Good\'s MasterNewMedia - Italia\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Robin-Goods-Master-New-Media-Italia\" htmlUrl=\"http://www.masternewmedia.it/\"/>\n            <outline text=\"Slashdot\" title=\"Slashdot\" type=\"rss\"\n                xmlUrl=\"http://rss.slashdot.org/Slashdot/slashdot\" htmlUrl=\"http://slashdot.org/\"/>\n            <outline text=\"TechCrunch\" title=\"TechCrunch\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/TechCrunch\" htmlUrl=\"http://www.techcrunch.com\"/>\n            <outline text=\"The Next Web\" title=\"The Next Web\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/thenextweb\" htmlUrl=\"http://thenextweb.org\"/>\n            <outline text=\"the popurls blog\" title=\"the popurls blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/popurls\" htmlUrl=\"http://pophub.com\"/>\n            <outline text=\"trawlr blog - Home\"\n                title=\"trawlr blog - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/trawlr\" htmlUrl=\"http://blog.trawlr.com/\"/>\n            <outline text=\"WebbAlert\" title=\"WebbAlert\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/webbalert\" htmlUrl=\"http://webbalert.com/\"/>\n            <outline text=\"Work.com Guide of the Day\"\n                title=\"Work.com Guide of the Day\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/WorkcomGuideOfTheDay\" htmlUrl=\"http://www.work.com/\"/>\n        </outline>\n        <outline title=\"Yahoo Pipes\" text=\"Yahoo Pipes\">\n            <outline text=\"del.icio.us hotlist\"\n                title=\"del.icio.us hotlist\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/\" htmlUrl=\"http://delicious.com/\"/>\n            <outline text=\"del.icio.us/recent?min=2\"\n                title=\"del.icio.us/recent?min=2\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/recent?min=2\" htmlUrl=\"http://delicious.com/recent\"/>\n            <outline text=\"Feed Relay: del.icious recent\"\n                title=\"Feed Relay: del.icious recent\" type=\"rss\"\n                xmlUrl=\"http://pipes.yahoo.com/pipes/pipe.run?_id=DgUtNGxL3BGpkIRdjknRlg&amp;_render=rss&amp;relayedUrl=http%3A%2F%2Fdel.icio.us%2Frss%2Frecent%3Fmin%3D2\" htmlUrl=\"http://pipes.yahoo.com/pipes/pipe.info?_id=DgUtNGxL3BGpkIRdjknRlg\"/>\n            <outline text=\"Pipes Blog\" title=\"Pipes Blog\" type=\"rss\"\n                xmlUrl=\"http://blog.pipes.yahoo.net/feed/\" htmlUrl=\"http://blog.pipes.yahoo.net\"/>\n        </outline>\n        <outline title=\"Adhearsion\" text=\"Adhearsion\">\n            <outline text=\"Adhearsion Blog by Jay Phillips\"\n                title=\"Adhearsion Blog by Jay Phillips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/jicksta\" htmlUrl=\"http://jicksta.com\"/>\n        </outline>\n        <outline title=\"Domaineers\" text=\"Domaineers\">\n            <outline\n                text=\"Domain Name News, The Domain Industry News, ICANN News, Registry News, Domainer News\"\n                title=\"Domain Name News, The Domain Industry News, ICANN News, Registry News, Domainer News\"\n                type=\"rss\" xmlUrl=\"http://www.domainnews.com/feed/rss\" htmlUrl=\"http://www.domainnews.com\"/>\n            <outline text=\"SEO Book.com -\" title=\"SEO Book.com -\"\n                type=\"rss\" xmlUrl=\"http://www.seobook.com/rss.xml\" htmlUrl=\"http://www.seobook.com\"/>\n            <outline\n                text=\"The Rick Schwartz Domain and Traffic Blog  RicksBlog.com...Home of the &quot;Domain King&quot;\"\n                title=\"The Rick Schwartz Domain and Traffic Blog  RicksBlog.com...Home of the &quot;Domain King&quot;\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ricksblog.com/my_weblog/atom.xml\" htmlUrl=\"http://www.ricksblog.com/my_weblog/\"/>\n            <outline text=\"Whizzbangsblog.com\"\n                title=\"Whizzbangsblog.com\" type=\"rss\"\n                xmlUrl=\"http://www.whizzbangsblog.com/index2.php?option=com_rss&amp;feed=RSS2.0&amp;no_html=1\" htmlUrl=\"http://www.whizzbangsblog.com\"/>\n        </outline>\n        <outline title=\"Radiant\" text=\"Radiant\">\n            <outline text=\"Pathfinder Development\"\n                title=\"Pathfinder Development\" type=\"rss\"\n                xmlUrl=\"http://www.pathf.com/blogs/feed/\" htmlUrl=\"http://www.pathf.com/blogs\"/>\n            <outline text=\"radiant\'s Activity\"\n                title=\"radiant\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/radiant.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline\n                text=\"Recent Commits to radiant:20d8f44d45f11a0e28231fdf86ded522ed927f6d\"\n                title=\"Recent Commits to radiant:20d8f44d45f11a0e28231fdf86ded522ed927f6d\"\n                type=\"rss\"\n                xmlUrl=\"http://github.com/feeds/radiant/commits/radiant/20d8f44d45f11a0e28231fdf86ded522ed927f6d\" htmlUrl=\"http://github.com/radiant/radiant/commits/20d8f44d45f11a0e28231fdf86ded522ed927f6d/\"/>\n            <outline text=\"saturnflyer\'s Activity\"\n                title=\"saturnflyer\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/saturnflyer.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"Sean Cribbs\" title=\"Sean Cribbs\" type=\"rss\"\n                xmlUrl=\"http://seancribbs.com/atom.xml\" htmlUrl=\"http://seancribbs.com/\"/>\n            <outline text=\"seancribbs\'s Activity\"\n                title=\"seancribbs\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/seancribbs.atom\" htmlUrl=\"http://github.com/\"/>\n        </outline>\n        <outline title=\"Thinkers\" text=\"Thinkers\">\n            <outline text=\"gladwell.com\" title=\"gladwell.com\" type=\"rss\"\n                xmlUrl=\"http://gladwell.typepad.com/gladwellcom/atom.xml\" htmlUrl=\"http://gladwell.typepad.com/gladwellcom/\"/>\n            <outline text=\"kottke.org\" title=\"kottke.org\" type=\"rss\"\n                xmlUrl=\"http://www.kottke.org/remainder/index.rdf\" htmlUrl=\"http://www.kottke.org/\"/>\n            <outline text=\"Language Log\" title=\"Language Log\" type=\"rss\"\n                xmlUrl=\"http://itre.cis.upenn.edu/~myl/languagelog/index.rdf\" htmlUrl=\"http://itre.cis.upenn.edu/~myl/languagelog/\"/>\n            <outline text=\"languagehat.com\" title=\"languagehat.com\"\n                type=\"rss\" xmlUrl=\"http://www.languagehat.com/index.rdf\" htmlUrl=\"http://www.languagehat.com/\"/>\n            <outline text=\"Marginal Revolution\"\n                title=\"Marginal Revolution\" type=\"rss\"\n                xmlUrl=\"http://www.marginalrevolution.com/marginalrevolution/index.rdf\" htmlUrl=\"http://www.marginalrevolution.com/marginalrevolution/\"/>\n            <outline text=\"NPR: This I Believe Podcast\"\n                title=\"NPR: This I Believe Podcast\" type=\"rss\"\n                xmlUrl=\"http://www.npr.org/rss/podcast.php?id=4538138\" htmlUrl=\"http://www.npr.org/templates/story/story.php?storyId=4538138&amp;ft=2&amp;f=4538138\"/>\n            <outline text=\"Salon\" title=\"Salon\" type=\"rss\"\n                xmlUrl=\"http://feeds.salon.com/salon/index\" htmlUrl=\"http://www.salon.com/?source=rss&amp;aim=/\"/>\n            <outline text=\"TED | TEDBlog\" title=\"TED | TEDBlog\"\n                type=\"rss\"\n                xmlUrl=\"http://tedblog.typepad.com/tedblog/atom.xml\" htmlUrl=\"http://blog.ted.com/\"/>\n        </outline>\n        <outline title=\"Expansion\" text=\"Expansion\">\n            <outline text=\"Freedom to Tinker\" title=\"Freedom to Tinker\"\n                type=\"rss\"\n                xmlUrl=\"http://www.freedom-to-tinker.com/?feed=rss2\" htmlUrl=\"http://www.freedom-to-tinker.com\"/>\n            <outline text=\"MyOwnDB Blog\" title=\"MyOwnDB Blog\" type=\"rss\"\n                xmlUrl=\"http://www.myowndb.com/blog/?feed=rss2\" htmlUrl=\"http://www.myowndb.com/blog\"/>\n        </outline>\n        <outline title=\"News\" text=\"News\">\n            <outline text=\"BBC News | News Front Page | World Edition\"\n                title=\"BBC News | News Front Page | World Edition\"\n                type=\"rss\"\n                xmlUrl=\"http://newsrss.bbc.co.uk/rss/newsonline_world_edition/front_page/rss.xml\" htmlUrl=\"http://news.bbc.co.uk/go/rss/-/2/hi/default.stm\"/>\n            <outline text=\"Christian Science Monitor | Top Stories\"\n                title=\"Christian Science Monitor | Top Stories\"\n                type=\"rss\" xmlUrl=\"http://www.csmonitor.com/rss/top.rss\" htmlUrl=\"http://csmonitor.com\"/>\n            <outline text=\"ESPN.com\" title=\"ESPN.com\" type=\"rss\"\n                xmlUrl=\"http://sports.espn.go.com/espn/rss/news\" htmlUrl=\"http://espn.go.com/\"/>\n            <outline text=\"Google News\" title=\"Google News\" type=\"rss\"\n                xmlUrl=\"http://news.google.com/?output=rss\" htmlUrl=\"http://news.google.com/\"/>\n            <outline text=\"MarketWatch.com - Top Stories\"\n                title=\"MarketWatch.com - Top Stories\" type=\"rss\"\n                xmlUrl=\"http://www.marketwatch.com/rss/topstories\" htmlUrl=\"http://www.marketwatch.com/news/default.asp?siteid=rss\"/>\n            <outline text=\"NPR: 7AM ET News Summary Podcast\"\n                title=\"NPR: 7AM ET News Summary Podcast\" type=\"rss\"\n                xmlUrl=\"http://www.npr.org/rss/podcast.php?id=500001\" htmlUrl=\"http://www.npr.org/templates/topics/topic.php?topicId=1001&amp;ft=2&amp;f=500001\"/>\n        </outline>\n        <outline title=\"Personalized Information\" text=\"Personalized Information\">\n            <outline text=\"Geeking with Greg\" title=\"Geeking with Greg\"\n                type=\"rss\"\n                xmlUrl=\"http://glinden.blogspot.com/feeds/posts/default\" htmlUrl=\"http://glinden.blogspot.com/\"/>\n        </outline>\n        <outline title=\"Social media\" text=\"Social media\">\n            <outline text=\"Lifestream Blog\" title=\"Lifestream Blog\"\n                type=\"rss\" xmlUrl=\"http://lifestreamblog.com/feed/\" htmlUrl=\"http://lifestreamblog.com\"/>\n            <outline text=\"Media 2.0 Workgroup\"\n                title=\"Media 2.0 Workgroup\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Media20Workgroup\" htmlUrl=\"http://media2.0workgroup.org\"/>\n            <outline\n                text=\"Social Media - best news, blogs, videos, photos and more - Boxxet\"\n                title=\"Social Media - best news, blogs, videos, photos and more - Boxxet\"\n                type=\"rss\"\n                xmlUrl=\"http://www.boxxet.com/Social_media/rss.xml\" htmlUrl=\"http://www.boxxet.com/Social_media/\"/>\n        </outline>\n        <outline title=\"github blog\" text=\"github blog\">\n            <outline text=\"The GitHub Blog\" title=\"The GitHub Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/github\" htmlUrl=\"http://github.com/blog\"/>\n        </outline>\n        <outline title=\"github Watched\" text=\"github Watched\">\n            <outline text=\"lgs\'s Private Feed\"\n                title=\"lgs\'s Private Feed\" type=\"rss\"\n                xmlUrl=\"https://github.com/lgs.private.atom?token=9502326e5ce527332592ab490aedeec3\" htmlUrl=\"https://github.com/\"/>\n        </outline>\n        <outline title=\"Erlang\" text=\"Erlang\">\n            <outline text=\"Erlang Inside\" title=\"Erlang Inside\"\n                type=\"rss\" xmlUrl=\"http://erlanginside.com/feed\" htmlUrl=\"http://erlanginside.com\"/>\n            <outline text=\"spawn_link\" title=\"spawn_link\" type=\"rss\"\n                xmlUrl=\"http://spawnlink.com/feed/\" htmlUrl=\"http://spawnlink.com\"/>\n            <outline text=\"The (Unofficial) Erlang Blog\"\n                title=\"The (Unofficial) Erlang Blog\" type=\"rss\"\n                xmlUrl=\"http://www.erlangblog.com/feed/\" htmlUrl=\"http://www.erlangblog.com\"/>\n            <outline text=\"Yariv\'s Blog\" title=\"Yariv\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://yarivsblog.com/feed/\" htmlUrl=\"http://yarivsblog.com\"/>\n        </outline>\n        <outline title=\"Startup\" text=\"Startup\">\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n            <outline text=\"KillerStartups.com - all\"\n                title=\"KillerStartups.com - all\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/killerstartups/BkQv\" htmlUrl=\"http://www.killerstartups.com\"/>\n            <outline text=\"ProgrammableWeb\" title=\"ProgrammableWeb\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ProgrammableWeb\" htmlUrl=\"http://blog.programmableweb.com\"/>\n            <outline text=\"TechCrunchIT\" title=\"TechCrunchIT\" type=\"rss\"\n                xmlUrl=\"http://feedproxy.google.com/TechCrunchIT\" htmlUrl=\"http://www.techcrunchit.com\"/>\n        </outline>\n        <outline title=\"Rails screencasts\" text=\"Rails screencasts\">\n            <outline text=\"Episode Suggestions on UserVoice\"\n                title=\"Episode Suggestions on UserVoice\" type=\"rss\"\n                xmlUrl=\"http://railscasts.uservoice.com/pages/general/activity.atom\" htmlUrl=\"http://feedback.railscasts.com/pages/general\"/>\n            <outline text=\"Free Ruby and Rails Screencasts\"\n                title=\"Free Ruby and Rails Screencasts\" type=\"rss\"\n                xmlUrl=\"http://www.rubyplus.org/episodes.rss\" htmlUrl=\"http://www.rubyplus.org/episodes.rss\"/>\n            <outline text=\"matthew carriere - home\"\n                title=\"matthew carriere - home\" type=\"rss\"\n                xmlUrl=\"http://matthewcarriere.com/feed/atom.xml\" htmlUrl=\"http://matthewcarriere.com/\"/>\n            <outline text=\"Railscasts\" title=\"Railscasts\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/railscasts\" htmlUrl=\"http://railscasts.com\"/>\n            <outline text=\"sd.rb podcast\" title=\"sd.rb podcast\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/sdrbpodcast\" htmlUrl=\"http://podcast.sdruby.com/\"/>\n        </outline>\n        <outline title=\"APML\" text=\"APML\">\n            <outline text=\"APML Updates\" title=\"APML Updates\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/apmlspec\" htmlUrl=\"http://www.apml.org\"/>\n            <outline text=\"Benjamin Michael Novakovic\"\n                title=\"Benjamin Michael Novakovic\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/BenjaminMichaelNovakovic\" htmlUrl=\"http://blog.bmn.name\"/>\n        </outline>\n        <outline title=\"Rails Flex\" text=\"Rails Flex\">\n            <outline text=\"Clockwork Objects\" title=\"Clockwork Objects\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/miletbaker\" htmlUrl=\"http://clockobj.co.uk\"/>\n        </outline>\n        <outline title=\"Small-business\" text=\"Small-business\">\n            <outline text=\"Business Pundit\" title=\"Business Pundit\"\n                type=\"rss\"\n                xmlUrl=\"http://www.businesspundit.com/index.rdf\" htmlUrl=\"http://www.businesspundit.com\"/>\n            <outline\n                text=\"Chris Baggott\'s Email Marketing Best Practices\"\n                title=\"Chris Baggott\'s Email Marketing Best Practices\"\n                type=\"rss\"\n                xmlUrl=\"http://exacttarget.typepad.com/chrisbaggott/atom.xml\" htmlUrl=\"http://exacttarget.typepad.com/chrisbaggott/\"/>\n            <outline text=\"Church of the Customer Blog\"\n                title=\"Church of the Customer Blog\" type=\"rss\"\n                xmlUrl=\"http://www.churchofthecustomer.com/blog/index.rdf\" htmlUrl=\"http://www.churchofthecustomer.com/blog/\"/>\n            <outline text=\"Seth\'s Blog\" title=\"Seth\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://sethgodin.typepad.com/seths_blog/atom.xml\" htmlUrl=\"http://sethgodin.typepad.com/seths_blog/\"/>\n            <outline\n                text=\"Small Business Marketing Blog from Duct Tape Marketing\"\n                title=\"Small Business Marketing Blog from Duct Tape Marketing\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ducttapemarketing/nRUD\" htmlUrl=\"http://www.ducttapemarketing.com/blog\"/>\n            <outline text=\"Small Business Trends\"\n                title=\"Small Business Trends\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SmallBusinessTrends\" htmlUrl=\"http://www.smallbiztrends.com\"/>\n            <outline text=\"The Entrepreneurial Mind\"\n                title=\"The Entrepreneurial Mind\" type=\"rss\"\n                xmlUrl=\"http://forum.belmont.edu/cornwall/atom.xml\" htmlUrl=\"http://forum.belmont.edu/cornwall/\"/>\n        </outline>\n        <outline title=\"web design\" text=\"web design\">\n            <outline text=\"del.icio.us/popular/web2.0\"\n                title=\"del.icio.us/popular/web2.0\" type=\"rss\"\n                xmlUrl=\"http://del.icio.us/rss/popular/web2.0\" htmlUrl=\"http://delicious.com/popular\"/>\n            <outline text=\"Modern Life\" title=\"Modern Life\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ModernLifeIsRubbish\" htmlUrl=\"http://www.modernlifeisrubbish.co.uk\"/>\n            <outline text=\"Six Revisions\" title=\"Six Revisions\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SixRevisions\" htmlUrl=\"http://sixrevisions.com\"/>\n            <outline text=\"Smashing Magazine\" title=\"Smashing Magazine\"\n                type=\"rss\"\n                xmlUrl=\"http://www.smashingmagazine.com/feed/\" htmlUrl=\"http://www.smashingmagazine.com\"/>\n        </outline>\n        <outline title=\"Rails\" text=\"Rails\">\n            <outline text=\"Addicted To New\" title=\"Addicted To New\"\n                type=\"rss\" xmlUrl=\"http://addictedtonew.com/feed/\" htmlUrl=\"http://addictedtonew.com\"/>\n            <outline text=\"Adhearsion Blog by Jay Phillips\"\n                title=\"Adhearsion Blog by Jay Phillips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/jicksta\" htmlUrl=\"http://jicksta.com\"/>\n            <outline text=\"aidanf.net - rails\"\n                title=\"aidanf.net - rails\" type=\"rss\"\n                xmlUrl=\"http://www.aidanf.net/taxonomy/term/18/0/feed\" htmlUrl=\"http://www.aidanf.net/taxonomy/term/18/0\"/>\n            <outline text=\"Al Hoang\" title=\"Al Hoang\" type=\"rss\"\n                xmlUrl=\"http://blogs.law.harvard.edu/hoanga/feed/\" htmlUrl=\"http://blogs.law.harvard.edu/hoanga\"/>\n            <outline text=\"Alex Young\'s weblog\"\n                title=\"Alex Young\'s weblog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/webdevelopernotes\" htmlUrl=\"http://alexyoung.org\"/>\n            <outline text=\"almost effortless\" title=\"almost effortless\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/almosteffortless\" htmlUrl=\"http://almosteffortless.com\"/>\n            <outline text=\"Andy Delcambre - Home\"\n                title=\"Andy Delcambre - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/andydelcambre\" htmlUrl=\"http://andy.delcambre.com/\"/>\n            <outline text=\"artweb design - Blog\"\n                title=\"artweb design - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/artweb-design\" htmlUrl=\"http://www.artweb-design.de/\"/>\n            <outline text=\"Blog\" title=\"Blog\" type=\"rss\"\n                xmlUrl=\"http://www.elctech.com/blog/atom.xml\" htmlUrl=\"http://www.elctech.com/blog\"/>\n            <outline text=\"caboose - blog.caboo.se Home\"\n                title=\"caboose - blog.caboo.se Home\" type=\"rss\"\n                xmlUrl=\"http://blog.caboo.se/feed/atom.xml\" htmlUrl=\"http://blog.caboo.se/\"/>\n            <outline text=\"caboose - blog.caboo.se Home\"\n                title=\"caboose - blog.caboo.se Home\" type=\"rss\"\n                xmlUrl=\"http://caboose.org/feed/atom.xml\" htmlUrl=\"http://caboose.org/\"/>\n            <outline text=\"cfis\" title=\"cfis\" type=\"rss\"\n                xmlUrl=\"http://cfis.savagexi.com/articles.atom\" htmlUrl=\"http://cfis.savagexi.com\"/>\n            <outline text=\"codablog\" title=\"codablog\" type=\"rss\"\n                xmlUrl=\"http://blog.codahale.com/feed/\" htmlUrl=\"http://blog.codahale.com\"/>\n            <outline text=\"code_fu - Home\" title=\"code_fu - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://khamsouk.souvanlasy.com/feed/atom.xml\" htmlUrl=\"http://khamsouk.souvanlasy.com/\"/>\n            <outline text=\"Darwinweb\" title=\"Darwinweb\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/darwinweb\" htmlUrl=\"http://darwinweb.net/\"/>\n            <outline text=\"delynn - Home\" title=\"delynn - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/delynnberry\" htmlUrl=\"http://delynnberry.com/\"/>\n            <outline text=\"Dr Nic\" title=\"Dr Nic\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/DrNic\" htmlUrl=\"http://drnicwilliams.com\"/>\n            <outline text=\"entp hoth blog - Home\"\n                title=\"entp hoth blog - Home\" type=\"rss\"\n                xmlUrl=\"http://hoth.entp.com/feed/atom.xml\" htmlUrl=\"http://hoth.entp.com/\"/>\n            <outline text=\"Eribium\" title=\"Eribium\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Eribium\" htmlUrl=\"http://www.eribium.org/blog\"/>\n            <outline text=\"Eribium\" title=\"Eribium\" type=\"rss\"\n                xmlUrl=\"http://www.eribium.org/blog/?feed=rss2\" htmlUrl=\"http://www.eribium.org/blog\"/>\n            <outline text=\"Err the Blog - Home\"\n                title=\"Err the Blog - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/errtheblog\" htmlUrl=\"http://errtheblog.com/\"/>\n            <outline text=\"ExpressionLab - Home\"\n                title=\"ExpressionLab - Home\" type=\"rss\"\n                xmlUrl=\"http://www.expressionlab.com/feed/atom.xml\" htmlUrl=\"http://www.expressionlab.com/\"/>\n            <outline text=\"Freelancing Gods\" title=\"Freelancing Gods\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/freelancing_gods\" htmlUrl=\"http://freelancing-gods.com\"/>\n            <outline\n                text=\"GIANT ROBOTS SMASHING INTO OTHER GIANT ROBOTS - Home\"\n                title=\"GIANT ROBOTS SMASHING INTO OTHER GIANT ROBOTS - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/GiantRobotsSmashingIntoOtherGiantRobots\" htmlUrl=\"http://giantrobots.thoughtbot.com/\"/>\n            <outline text=\"GravityBlast\" title=\"GravityBlast\" type=\"rss\"\n                xmlUrl=\"http://gravityblast.com/feed/\" htmlUrl=\"http://gravityblast.com\"/>\n            <outline text=\"has_many :bugs, :through => :rails - Home\"\n                title=\"has_many :bugs, :through => :rails - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/monkeyonrails\" htmlUrl=\"http://m.onkey.org/\"/>\n            <outline text=\"has_many :through\" title=\"has_many :through\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/hasmanythrough\" htmlUrl=\"http://blog.hasmanythrough.com\"/>\n            <outline text=\"igvita.com\" title=\"igvita.com\" type=\"rss\"\n                xmlUrl=\"http://www.igvita.com/feed/\" htmlUrl=\"http://www.igvita.com\"/>\n            <outline text=\"Inform-Addicts\" title=\"Inform-Addicts\"\n                type=\"rss\"\n                xmlUrl=\"http://informaddicts.blogspot.com/feeds/posts/default\" htmlUrl=\"http://informaddicts.blogspot.com/\"/>\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n            <outline text=\"jake howerton may blog\"\n                title=\"jake howerton may blog\" type=\"rss\"\n                xmlUrl=\"http://jake.howmeta.com/feed/\" htmlUrl=\"http://jake.howmeta.com/\"/>\n            <outline text=\"James on Software - Home\"\n                title=\"James on Software - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/JamesOnSoftware\" htmlUrl=\"http://jamesgolick.com/\"/>\n            <outline text=\"Jim Neath\" title=\"Jim Neath\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/JimNeath\" htmlUrl=\"http://jimneath.org\"/>\n            <outline text=\"Koz Speaks - Home\" title=\"Koz Speaks - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/Koz\" htmlUrl=\"http://www.koziarski.net/\"/>\n            <outline text=\"lindsaar.net - Home\"\n                title=\"lindsaar.net - Home\" type=\"rss\"\n                xmlUrl=\"http://lindsaar.net/feed/atom.xml\" htmlUrl=\"http://www.lindsaar.net/\"/>\n            <outline text=\"Midnight Oil\" title=\"Midnight Oil\" type=\"rss\"\n                xmlUrl=\"http://blog.aisleten.com/feed/\" htmlUrl=\"http://blog.aisleten.com\"/>\n            <outline text=\"Mike Clark\" title=\"Mike Clark\" type=\"rss\"\n                xmlUrl=\"http://www.clarkware.com/cgi/blosxom/index.rss\" htmlUrl=\"http://www.clarkware.com/cgi/blosxom\"/>\n            <outline text=\"Nick Sieger: RailsConf Europe: Hydra\"\n                title=\"Nick Sieger: RailsConf Europe: Hydra\" type=\"rss\"\n                xmlUrl=\"http://blog.nicksieger.com/xml/rss20/article/301/feed.xml\" htmlUrl=\"http://blog.nicksieger.com/articles/2007/10/06/railsconf-europe-hydra\"/>\n            <outline text=\"No Strings Attached ~ Developer\"\n                title=\"No Strings Attached ~ Developer\" type=\"rss\"\n                xmlUrl=\"http://mislav.caboo.se/feeds/dev\" htmlUrl=\"http://mislav.caboo.se/\"/>\n            <outline text=\"Nuby on Rails\" title=\"Nuby on Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/nubyonrails\" htmlUrl=\"http://nubyonrails.com\"/>\n            <outline text=\"Open Source Rails\" title=\"Open Source Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/OpenSourceRails\" htmlUrl=\"http://www.opensourcerails.com\"/>\n            <outline text=\"opensoul.org - Home\"\n                title=\"opensoul.org - Home\" type=\"rss\"\n                xmlUrl=\"http://opensoul.org/feed/atom.xml\" htmlUrl=\"http://opensoul.org/\"/>\n            <outline text=\"PeepCode Products\" title=\"PeepCode Products\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/peepcode/UCzt\" htmlUrl=\"http://peepcode.com/products\"/>\n            <outline text=\"Pluit Solutions\" title=\"Pluit Solutions\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/PluitSolutions\" htmlUrl=\"http://www.pluitsolutions.com\"/>\n            <outline text=\"QuarkRuby - Home\" title=\"QuarkRuby - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Quarkruby\" htmlUrl=\"http://www.quarkruby.com/\"/>\n            <outline text=\"Quoted-Printable - Home\"\n                title=\"Quoted-Printable - Home\" type=\"rss\"\n                xmlUrl=\"http://quotedprintable.com/feed/atom.xml\" htmlUrl=\"http://quotedprintable.com/\"/>\n            <outline text=\"Rail Spikes - Home\"\n                title=\"Rail Spikes - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RailSpikes\" htmlUrl=\"http://railspikes.com/\"/>\n            <outline text=\"Rails Engines News\"\n                title=\"Rails Engines News\" type=\"rss\"\n                xmlUrl=\"http://rails-engines.org/rss/news\" htmlUrl=\"http://rails-engines.org/rss/news/\"/>\n            <outline text=\"Rails Envy\" title=\"Rails Envy\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rails-envy\" htmlUrl=\"http://www.railsenvy.com/\"/>\n            <outline text=\"Rails on the road\" title=\"Rails on the road\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/rails-on-the-road\" htmlUrl=\"http://www.extendi.it/ruby-on-rails\"/>\n            <outline text=\"Rails on the Run - Home\"\n                title=\"Rails on the Run - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/railsontherun\" htmlUrl=\"http://www.railsontherun.com/\"/>\n            <outline\n                text=\"RailsOnWave Ruby on Rails web 2.0 Ajax - Home\"\n                title=\"RailsOnWave Ruby on Rails web 2.0 Ajax - Home\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Railsonwave-Home\" htmlUrl=\"http://www.railsonwave.com/railsonwave/\"/>\n            <outline text=\"RailsTips.org - Home\"\n                title=\"RailsTips.org - Home\" type=\"rss\"\n                xmlUrl=\"http://railstips.org/feed/atom.xml\" htmlUrl=\"http://railstips.org/\"/>\n            <outline text=\"RedHanded\" title=\"RedHanded\" type=\"rss\"\n                xmlUrl=\"http://redhanded.hobix.com/index.xml\" htmlUrl=\"http://redhanded.hobix.com\"/>\n            <outline text=\"require \'brain\'\" title=\"require \'brain\'\"\n                type=\"rss\" xmlUrl=\"http://szeryf.wordpress.com/feed/\" htmlUrl=\"http://szeryf.wordpress.com\"/>\n            <outline text=\"Revolution On Rails\"\n                title=\"Revolution On Rails\" type=\"rss\"\n                xmlUrl=\"http://revolutiononrails.blogspot.com/feeds/posts/default\" htmlUrl=\"http://revolutiononrails.blogspot.com/\"/>\n            <outline text=\"Riding Rails - home\"\n                title=\"Riding Rails - home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RidingRails\" htmlUrl=\"http://weblog.rubyonrails.com/\"/>\n            <outline text=\"Robby on Rails\" title=\"Robby on Rails\"\n                type=\"rss\"\n                xmlUrl=\"http://www.robbyonrails.com/xml/atom/feed.xml\" htmlUrl=\"http://www.robbyonrails.com\"/>\n            <outline text=\"Ruby stole my o`o - Home\"\n                title=\"Ruby stole my o`o - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyStoleMyBike\" htmlUrl=\"http://www.ralree.info/\"/>\n            <outline text=\"Ruby, Rails, Web2.0\"\n                title=\"Ruby, Rails, Web2.0\" type=\"rss\"\n                xmlUrl=\"http://www.rubyrailways.com/feed/\" htmlUrl=\"http://www.rubyrailways.com\"/>\n            <outline text=\"Rubynaut\" title=\"Rubynaut\" type=\"rss\"\n                xmlUrl=\"http://www.rubynaut.net/xml/atom/feed.xml\" htmlUrl=\"http://www.rubynaut.net\"/>\n            <outline text=\"Ryan\'s Scraps - Blog\"\n                title=\"Ryan\'s Scraps - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RyansScraps\" htmlUrl=\"http://ryandaigle.com/\"/>\n            <outline text=\"scRUBYt!\" title=\"scRUBYt!\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Scrubyt\" htmlUrl=\"http://scrubyt.org/blog\"/>\n            <outline text=\"Sean Cribbs\" title=\"Sean Cribbs\" type=\"rss\"\n                xmlUrl=\"http://seancribbs.com/atom.xml\" htmlUrl=\"http://seancribbs.com/\"/>\n            <outline text=\"SEO on Rails - Home\"\n                title=\"SEO on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seo-rails\" htmlUrl=\"http://www.seoonrails.com/\"/>\n            <outline text=\"Simone Carletti\'s Blog\"\n                title=\"Simone Carletti\'s Blog\" type=\"rss\"\n                xmlUrl=\"http://www.simonecarletti.com/blog/index.xml\" htmlUrl=\"http://www.simonecarletti.com/blog/\"/>\n            <outline text=\"Slash7 with Amy Hoy - Home\"\n                title=\"Slash7 with Amy Hoy - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/slash7/rss\" htmlUrl=\"http://www.slash7.com/\"/>\n            <outline text=\"Snax\" title=\"Snax\" type=\"rss\"\n                xmlUrl=\"http://blog.evanweaver.com/xml/atom.xml\" htmlUrl=\"http://blog.evanweaver.com/\"/>\n            <outline text=\"Softies on Rails - Home\"\n                title=\"Softies on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/SoftiesOnRails\" htmlUrl=\"http://www.softiesonrails.com/\"/>\n            <outline text=\"software by daniel choi\"\n                title=\"software by daniel choi\" type=\"rss\"\n                xmlUrl=\"http://danielchoi.com/software/index.atom\" htmlUrl=\"http://danielchoi.com/software\"/>\n            <outline text=\"Sporkmonger\" title=\"Sporkmonger\" type=\"rss\"\n                xmlUrl=\"http://sporkmonger.com/entries/feed/\" htmlUrl=\"http://sporkmonger.com/\"/>\n            <outline text=\"STEPHEN CHU . com\" title=\"STEPHEN CHU . com\"\n                type=\"rss\"\n                xmlUrl=\"http://www.stephenchu.com/feeds/posts/default\" htmlUrl=\"http://www.stephenchu.com/\"/>\n            <outline text=\"Technology for Humans - Home\"\n                title=\"Technology for Humans - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/mslater\" htmlUrl=\"http://www.mslater.com/\"/>\n            <outline text=\"The Idea Forge\" title=\"The Idea Forge\"\n                type=\"rss\"\n                xmlUrl=\"http://www.ideaforge.org/blog/?feed=rss2\" htmlUrl=\"http://www.ideaforge.org/blog\"/>\n            <outline text=\"The Rails Way - all\"\n                title=\"The Rails Way - all\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/TheRailsWay\" htmlUrl=\"http://www.therailsway.com/\"/>\n            <outline text=\"the { buckblogs :here } - Home\"\n                title=\"the { buckblogs :here } - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/buckblog\" htmlUrl=\"http://weblog.jamisbuck.org/\"/>\n            <outline text=\"the { buckblogs :here } - Home\"\n                title=\"the { buckblogs :here } - Home\" type=\"rss\"\n                xmlUrl=\"http://weblog.jamisbuck.org/feed/atom.xml\" htmlUrl=\"http://weblog.jamisbuck.org/\"/>\n            <outline text=\"the.railsi.st - Home\"\n                title=\"the.railsi.st - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/therailsist\" htmlUrl=\"http://the.railsi.st/\"/>\n            <outline text=\"tog development\" title=\"tog development\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/toghq\" htmlUrl=\"http://www.toghq.com\"/>\n            <outline text=\"vaporbase :: Postings\"\n                title=\"vaporbase :: Postings\" type=\"rss\"\n                xmlUrl=\"http://www.vaporbase.com/postings?theme=rss\" htmlUrl=\"http://www.vaporbase.com/\"/>\n            <outline text=\"Wiseheart Design - Home\"\n                title=\"Wiseheart Design - Home\" type=\"rss\"\n                xmlUrl=\"http://wiseheartdesign.com/feed/atom.xml\" htmlUrl=\"http://wiseheartdesign.com/\"/>\n            <outline text=\"Zilkey - Home\" title=\"Zilkey - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/zilkey\" htmlUrl=\"http://zilkey.com/\"/>\n        </outline>\n        <outline title=\"Heroku\" text=\"Heroku\">\n            <outline text=\"Adam @ Heroku\" title=\"Adam @ Heroku\"\n                type=\"rss\" xmlUrl=\"http://adam.blog.heroku.com/rss\" htmlUrl=\"http://adam.blog.heroku.com\"/>\n            <outline text=\"Heroku News\" title=\"Heroku News\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/heroku\" htmlUrl=\"http://blog.heroku.com\"/>\n        </outline>\n        <outline title=\"Ruby\" text=\"Ruby\">\n            <outline text=\"Search Results for ruby\"\n                title=\"Search Results for ruby\" type=\"rss\"\n                xmlUrl=\"http://www.simonecarletti.com/mt4/mt-search.cgi?search=ruby&amp;Template=feed&amp;IncludeBlogs=1&amp;limit=20\" htmlUrl=\"http://www.simonecarletti.com/mt4/mt-search.cgi?IncludeBlogs=1&amp;search=ruby\"/>\n            <outline text=\"software by daniel choi\"\n                title=\"software by daniel choi\" type=\"rss\"\n                xmlUrl=\"http://danielchoi.com/software/index.atom\" htmlUrl=\"http://danielchoi.com/software\"/>\n        </outline>\n        <outline title=\"Rails plugins\" text=\"Rails plugins\">\n            <outline text=\"ActiveScaffold - Blog\"\n                title=\"ActiveScaffold - Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/activescaffold\" htmlUrl=\"http://activescaffold.com/blog\"/>\n            <outline text=\"PluginAWeek\" title=\"PluginAWeek\" type=\"rss\"\n                xmlUrl=\"http://www.pluginaweek.org/feed/\" htmlUrl=\"http://www.pluginaweek.org\"/>\n            <outline text=\"Rails Engines News\"\n                title=\"Rails Engines News\" type=\"rss\"\n                xmlUrl=\"http://www.rails-engines.org/rss/news\" htmlUrl=\"http://rails-engines.org/rss/news/\"/>\n            <outline text=\"Ruby on Rails Plugins\"\n                title=\"Ruby on Rails Plugins\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/RubyOnRailsPlugins\" htmlUrl=\"http://agilewebdevelopment.com/plugins\"/>\n            <outline text=\"The Hobo Blog\" title=\"The Hobo Blog\"\n                type=\"rss\" xmlUrl=\"http://hobocentral.net/blog/feed/\" htmlUrl=\"http://hobocentral.net/blog\"/>\n        </outline>\n        <outline title=\"Mephisto\" text=\"Mephisto\">\n            <outline text=\"James Crisp\" title=\"James Crisp\" type=\"rss\"\n                xmlUrl=\"http://jamescrisp.org/feed/\" htmlUrl=\"http://jamescrisp.org\"/>\n            <outline text=\"Mephisto - Home\" title=\"Mephisto - Home\"\n                type=\"rss\" xmlUrl=\"http://feeds.feedburner.com/mephisto\" htmlUrl=\"http://demo.mephistoblog.com/\"/>\n        </outline>\n        <outline title=\"Daily Reading\" text=\"Daily Reading\">\n            <outline text=\"Bokardo - Social Design by Joshua Porter\"\n                title=\"Bokardo - Social Design by Joshua Porter\"\n                type=\"rss\" xmlUrl=\"http://bokardo.com/feed/\" htmlUrl=\"http://bokardo.com\"/>\n            <outline text=\"Intridea - Blog\" title=\"Intridea - Blog\"\n                type=\"rss\" xmlUrl=\"http://feeds.intridea.com/intridea\" htmlUrl=\"http://www.intridea.com/blog\"/>\n        </outline>\n        <outline title=\"SEO\" text=\"SEO\">\n            <outline text=\"SEO Book.com -\" title=\"SEO Book.com -\"\n                type=\"rss\" xmlUrl=\"http://www.seobook.com/rss.xml\" htmlUrl=\"http://www.seobook.com\"/>\n            <outline text=\"SEO on Rails - Home\"\n                title=\"SEO on Rails - Home\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seo-rails\" htmlUrl=\"http://www.seoonrails.com/\"/>\n            <outline text=\"Seven Mile\" title=\"Seven Mile\" type=\"rss\"\n                xmlUrl=\"http://feed.sevenmile.com/7mile\" htmlUrl=\"http://www.sevenmile.com\"/>\n        </outline>\n        <outline title=\"PCI4R collective intelligence\" text=\"PCI4R collective intelligence\">\n            <outline text=\"this is totally gonna work...\"\n                title=\"this is totally gonna work...\" type=\"rss\"\n                xmlUrl=\"http://blog.livollmers.net/index.php/feed/\" htmlUrl=\"http://livollmers.net\"/>\n        </outline>\n        <outline title=\"Semantic web\" text=\"Semantic web\">\n            <outline text=\"More News\" title=\"More News\" type=\"rss\"\n                xmlUrl=\"http://morenews.blogspot.com/feeds/posts/default\" htmlUrl=\"http://morenews.blogspot.com/\"/>\n            <outline text=\"Stefano\'s Linotype\"\n                title=\"Stefano\'s Linotype\" type=\"rss\"\n                xmlUrl=\"http://www.betaversion.org/~stefano/linotype/index.php?feed=rss2\" htmlUrl=\"http://www.betaversion.org/~stefano/linotype\"/>\n        </outline>\n        <outline title=\"Blog for money\" text=\"Blog for money\">\n            <outline text=\"103bees Blog\" title=\"103bees Blog\" type=\"rss\"\n                xmlUrl=\"http://103bees.com/blog/feed/\" htmlUrl=\"http://103bees.com/blog\"/>\n            <outline text=\"Dosh Dosh\" title=\"Dosh Dosh\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/doshdosh\" htmlUrl=\"http://www.doshdosh.com\"/>\n            <outline text=\"feed/http://weblog.sitemeter.com/feed/\"\n                title=\"feed/http://weblog.sitemeter.com/feed/\"\n                type=\"rss\" xmlUrl=\"http://weblog.sitemeter.com/feed/\" htmlUrl=\"http://weblog.sitemeter.com\"/>\n            <outline text=\"NetBusinessBlog\" title=\"NetBusinessBlog\"\n                type=\"rss\" xmlUrl=\"http://www.netbusinessblog.com/feed/\" htmlUrl=\"http://www.netbusinessblog.com\"/>\n            <outline text=\"ProBlogger Blog Tips\"\n                title=\"ProBlogger Blog Tips\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/ProbloggerHelpingBloggersEarnMoney\" htmlUrl=\"http://www.problogger.net\"/>\n        </outline>\n        <outline title=\"Socials\" text=\"Socials\">\n            <outline text=\"Bokardo - Social Design by Joshua Porter\"\n                title=\"Bokardo - Social Design by Joshua Porter\"\n                type=\"rss\" xmlUrl=\"http://bokardo.com/feed/\" htmlUrl=\"http://bokardo.com\"/>\n            <outline text=\"Creating Passionate Users\"\n                title=\"Creating Passionate Users\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/typepad/KathySierra/creating_passionate_users\" htmlUrl=\"http://headrush.typepad.com/creating_passionate_users/\"/>\n            <outline text=\"The Bumble Bee\" title=\"The Bumble Bee\"\n                type=\"rss\" xmlUrl=\"http://www.bioteams.com/atom.xml\" htmlUrl=\"http://www.bioteams.com/\"/>\n        </outline>\n        <outline title=\"friendfeed\" text=\"friendfeed\">\n            <outline text=\"FriendFeed\" title=\"FriendFeed\" type=\"rss\"\n                xmlUrl=\"http://friendfeed.com/?format=atom&amp;auth=9T59JFwM6cI1dwfD\" htmlUrl=\"http://friendfeed.com/\"/>\n        </outline>\n        <outline title=\"Lifestream\" text=\"Lifestream\">\n            <outline text=\"Lifestream Blog\" title=\"Lifestream Blog\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Lifestreamblogcom\" htmlUrl=\"http://lifestreamblog.com\"/>\n            <outline text=\"tail -f carlo.log » escaloop\"\n                title=\"tail -f carlo.log » escaloop\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/escaloop\" htmlUrl=\"http://carlo.zottmann.org/\"/>\n        </outline>\n        <outline title=\"Books\" text=\"Books\">\n            <outline text=\"ebookshare\" title=\"ebookshare\" type=\"rss\"\n                xmlUrl=\"http://ebookshare.net/feed/\" htmlUrl=\"http://www.ebookshare.net\"/>\n        </outline>\n        <outline title=\"Geeky\" text=\"Geeky\">\n            <outline text=\"Cool Tools\" title=\"Cool Tools\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/CoolTools\" htmlUrl=\"http://www.kk.org/cooltools/\"/>\n            <outline text=\"Lifehacker\" title=\"Lifehacker\" type=\"rss\"\n                xmlUrl=\"http://lifehacker.com/index.xml\" htmlUrl=\"http://lifehacker.com\"/>\n            <outline text=\"MAKE Magazine\" title=\"MAKE Magazine\"\n                type=\"rss\"\n                xmlUrl=\"http://www.makezine.com/blog/index.xml\" htmlUrl=\"http://blog.makezine.com/\"/>\n            <outline text=\"Penny Arcade\" title=\"Penny Arcade\" type=\"rss\"\n                xmlUrl=\"http://www.penny-arcade.com/rss.xml\" htmlUrl=\"http://www.penny-arcade.com/\"/>\n            <outline text=\"PVRblog\" title=\"PVRblog\" type=\"rss\"\n                xmlUrl=\"http://www.pvrblog.com/pvr/index.rdf\" htmlUrl=\"http://www.pvrblog.com/pvr/\"/>\n        </outline>\n        <outline title=\"Mack Framework\" text=\"Mack Framework\">\n            <outline text=\"Mack Framework\" title=\"Mack Framework\"\n                type=\"rss\" xmlUrl=\"http://www.mackframework.com/feed/\" htmlUrl=\"http://www.mackframework.com\"/>\n        </outline>\n        <outline title=\"RDF\" text=\"RDF\">\n            <outline text=\"kemistry desktop environment\"\n                title=\"kemistry desktop environment\" type=\"rss\"\n                xmlUrl=\"http://kemistry-desktop.blogspot.com/feeds/posts/default\" htmlUrl=\"http://kemistry-desktop.blogspot.com/\"/>\n        </outline>\n        <outline title=\"Amazon\" text=\"Amazon\">\n            <outline text=\"Amazon Web Services Blog\"\n                title=\"Amazon Web Services Blog\" type=\"rss\"\n                xmlUrl=\"http://aws.typepad.com/aws/atom.xml\" htmlUrl=\"http://aws.typepad.com/aws/\"/>\n            <outline text=\"RightScale Blog\" title=\"RightScale Blog\"\n                type=\"rss\" xmlUrl=\"http://blog.rightscale.com/feed/\" htmlUrl=\"http://blog.rightscale.com\"/>\n        </outline>\n        <outline title=\"People\" text=\"People\">\n            <outline text=\"adamwiggins\'s Activity\"\n                title=\"adamwiggins\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/adamwiggins.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"alexvollmer\'s Activity\"\n                title=\"alexvollmer\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/alexvollmer.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"drnic\'s Activity\" title=\"drnic\'s Activity\"\n                type=\"rss\" xmlUrl=\"http://github.com/drnic.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"gbuesing\'s Activity\"\n                title=\"gbuesing\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/gbuesing.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"halorgium\'s Activity\"\n                title=\"halorgium\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/halorgium.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"lgs\'s Private Feed\"\n                title=\"lgs\'s Private Feed\" type=\"rss\"\n                xmlUrl=\"https://github.com/lgs.private.atom?token=9502326e5ce527332592ab490aedeec3\" htmlUrl=\"https://github.com/\"/>\n            <outline text=\"maccman\'s Activity\"\n                title=\"maccman\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/maccman.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"ryanb\'s Activity\" title=\"ryanb\'s Activity\"\n                type=\"rss\" xmlUrl=\"http://github.com/ryanb.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"segfault\'s Activity\"\n                title=\"segfault\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/segfault.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"tablatom\'s Activity\"\n                title=\"tablatom\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/tablatom.atom\" htmlUrl=\"http://github.com/\"/>\n            <outline text=\"technoweenie\'s Activity\"\n                title=\"technoweenie\'s Activity\" type=\"rss\"\n                xmlUrl=\"http://github.com/technoweenie.atom\" htmlUrl=\"http://github.com/\"/>\n        </outline>\n        <outline title=\"Ruby aggregator\" text=\"Ruby aggregator\">\n            <outline text=\"Artima Ruby Buzz\" title=\"Artima Ruby Buzz\"\n                type=\"rss\"\n                xmlUrl=\"http://www.artima.com/buzz/feeds/ruby.rss\" htmlUrl=\"http://www.artima.com/buzz/community.jsp?forum=123\"/>\n            <outline text=\"reddit.com/r/ruby/\"\n                title=\"reddit.com/r/ruby/\" type=\"rss\"\n                xmlUrl=\"http://reddit.com/r/ruby/.rss\" htmlUrl=\"http://www.reddit.com/r/ruby/\"/>\n            <outline text=\"Ruby Inside\" title=\"Ruby Inside\" type=\"rss\"\n                xmlUrl=\"http://www.rubyinside.com/feed\" htmlUrl=\"http://www.rubyinside.com\"/>\n            <outline text=\"RubyFlow\" title=\"RubyFlow\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Rubyflow\" htmlUrl=\"http://www.rubyflow.com/\"/>\n        </outline>\n        <outline title=\"Web Marketing\" text=\"Web Marketing\">\n            <outline text=\"acidlabs\" title=\"acidlabs\" type=\"rss\"\n                xmlUrl=\"http://www.acidlabs.org/feed/\" htmlUrl=\"http://www.acidlabs.org\"/>\n            <outline text=\"Go Big Always\" title=\"Go Big Always\"\n                type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/feedburner/gobigalways\" htmlUrl=\"http://gobigalways.com\"/>\n            <outline text=\"SEOmoz Daily SEO Blog\"\n                title=\"SEOmoz Daily SEO Blog\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/seomoz\" htmlUrl=\"http://www.seomoz.org/blog\"/>\n            <outline text=\"Techpaulogy\" title=\"Techpaulogy\" type=\"rss\"\n                xmlUrl=\"http://www.techpaulogy.com/atom.xml\" htmlUrl=\"http://www.techpaulogy.com/\"/>\n            <outline\n                text=\"The Forrester Blog For Interactive Marketing Professionals\"\n                title=\"The Forrester Blog For Interactive Marketing Professionals\"\n                type=\"rss\"\n                xmlUrl=\"http://blogs.forrester.com/marketing/atom.xml\" htmlUrl=\"http://blogs.forrester.com/marketing/\"/>\n        </outline>\n        <outline title=\"Technology\" text=\"Technology\">\n            <outline text=\"Digg\" title=\"Digg\" type=\"rss\"\n                xmlUrl=\"http://digg.com/rss/index.xml\" htmlUrl=\"http://digg.com/\"/>\n            <outline text=\"Engadget\" title=\"Engadget\" type=\"rss\"\n                xmlUrl=\"http://www.engadget.com/rss.xml\" htmlUrl=\"http://www.engadget.com\"/>\n            <outline text=\"Gizmodo\" title=\"Gizmodo\" type=\"rss\"\n                xmlUrl=\"http://feeds.gawker.com/gizmodo/full\" htmlUrl=\"http://gizmodo.com\"/>\n            <outline text=\"Slashdot\" title=\"Slashdot\" type=\"rss\"\n                xmlUrl=\"http://slashdot.org/index.rss\" htmlUrl=\"http://slashdot.org/\"/>\n            <outline text=\"TechCrunch\" title=\"TechCrunch\" type=\"rss\"\n                xmlUrl=\"http://feeds.feedburner.com/Techcrunch\" htmlUrl=\"http://www.techcrunch.com\"/>\n            <outline text=\"Wired Top Stories\" title=\"Wired Top Stories\"\n                type=\"rss\"\n                xmlUrl=\"http://www.wired.com/news/feeds/rss2/0,2610,,00.xml\" htmlUrl=\"http://www.wired.com/rss/index.xml\"/>\n        </outline>\n    </body>\n</opml>\n');
/*!40000 ALTER TABLE `db_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_urls`
--

DROP TABLE IF EXISTS `feed_urls`;
CREATE TABLE `feed_urls` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `feed_url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `star` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_urls`
--

LOCK TABLES `feed_urls` WRITE;
/*!40000 ALTER TABLE `feed_urls` DISABLE KEYS */;
INSERT INTO `feed_urls` VALUES (1,1,'http://feeds.delicious.com/v2/rss/lgsicious','delicious feeds by luca',NULL,'2008-11-02 10:06:12','2008-11-02 10:06:12'),(2,3,'http://feeds.delicious.com/v2/rss/','delicious home',NULL,'2008-11-02 10:08:05','2008-11-02 10:08:05');
/*!40000 ALTER TABLE `feed_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,1,1,'wavethenavel.com Blog Archive » Bootstrapping a Dreamhost Account for Rails and Git','','http://www.wavethenavel.com/jonathanpenn/2008/09/08/bootstrapping-a-dreamhost-account-for-rails-and-git/','http://delicious.com/lgsicious','Delicious/lgsicious','Bootstrapping a Dreamhost Account for Rails and Git','2008-11-01 12:55:53','2008-11-02 10:10:33','2008-11-02 10:10:33'),(2,1,1,'YouTube - Il canale di GoogleDevelopers','','http://www.youtube.com/GoogleDevelopers','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 16:33:13','2008-11-02 10:10:33','2008-11-02 10:10:33'),(3,1,1,'Economics of Online Video 2: Unit Cost Structure','','http://www.alleyinsider.com/2007/9/economics_of_on','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 16:06:32','2008-11-02 10:10:33','2008-11-02 10:10:33'),(4,1,1,'Tailrank is Taking a Gliding Lesson','','http://tailrank.com/','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 15:12:30','2008-11-02 10:10:33','2008-11-02 10:10:33'),(5,1,1,'Google Abandons Standards, Forks OpenID at The NeoSmart Files','','http://neosmart.net/blog/2008/google-doesnt-use-openid','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 14:56:20','2008-11-02 10:10:33','2008-11-02 10:10:33'),(6,1,1,'YouTube - Video: RSS in Plain English','','http://www.youtube.com/watch?v=0klgLsSxGsU&amp;eurl=http://www.commoncraft.com/rss_plain_english','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 14:32:18','2008-11-02 10:10:33','2008-11-02 10:10:33'),(7,1,1,'2008 Startup School','','http://startupschool.org/','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-30 10:44:21','2008-11-02 10:10:33','2008-11-02 10:10:33'),(8,1,1,'55-250, confronta prezzi e offerte 55-250 su Trova Prezzi','','http://www.trovaprezzi.it/prezzo_accessori-fotografia_55-250.aspx','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-28 13:51:38','2008-11-02 10:10:33','2008-11-02 10:10:33'),(9,1,1,'Rails Envy: Ruby on Rails Rake Tutorial (aka. How rake turned me into an alcoholic)','','http://www.railsenvy.com/2007/6/11/ruby-on-rails-rake-tutorial','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 14:55:29','2008-11-02 10:10:33','2008-11-02 10:10:33'),(10,1,1,'canon 450D - Confronta i prezzi e le opinioni dei consumatori su Ciao','','http://www.ciao.it/sr/q-canon+450D','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 12:30:39','2008-11-02 10:10:33','2008-11-02 10:10:33'),(11,1,1,'Fotocamere Digitali canon 450d: confronta modelli e prezzi fotocamere digitali canon 450d. - ShoppyDoo','','http://www.shoppydoo.it/prezzi-fotocamere_digitali-canon_450d.html','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 12:30:18','2008-11-02 10:10:33','2008-11-02 10:10:33'),(12,1,1,'canon 450d | Prezzi e Offerte Fotocamere digitali - Kelkoo IT','','http://shopping.kelkoo.it/ctl/do/search?catId=124901&amp;siteSearchQuery=canon+450d','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 10:58:12','2008-11-02 10:10:33','2008-11-02 10:10:33'),(13,1,1,'Canon eos 450d, confronta prezzi e offerte canon eos 450d su Trova Prezzi','','http://www.trovaprezzi.it/categoria.aspx?libera=canon+eos+450d&amp;id=5&amp;prezzomin=&amp;prezzomax=&amp;sbox=sb&amp;page=1&amp;sort=Prezzo&amp;sortdir=0','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 10:45:21','2008-11-02 10:10:33','2008-11-02 10:10:33'),(14,1,1,':: P R O K O O ::','','http://www.prokoo.com/','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 10:34:22','2008-11-02 10:10:33','2008-11-02 10:10:33'),(15,1,1,'Fotocamere digitali, macchine fotografiche digitali, vendita macchine fotografiche su Digitalfoto','','http://www.digitalfoto.it/','http://delicious.com/lgsicious','Delicious/lgsicious','','2008-10-27 10:33:48','2008-11-02 10:10:33','2008-11-02 10:10:33'),(16,3,2,'100+ Incredible Open Courseware Resources for Science Geeks | Eduk8','','http://www.advantageedu.com/blog/2008/10/100-incredible-open-courseware-resources-for-science-geeks/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(17,3,2,'GTD: Getting Things Done With Microsoft OneNote','','http://lifehacker.com/5069230/getting-things-done-with-microsoft-onenote','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(18,3,2,'The Simple Dollar » 25 Useful Pieces Of Free (and Open) Software for Macs','','http://www.thesimpledollar.com/2008/11/01/25-useful-pieces-of-free-and-open-software-for-macs/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(19,3,2,'The Lost Years & Last Days of David Foster Wallace : Rolling Stone','','http://www.rollingstone.com/news/story/23638511/the_lost_years__last_days_of_david_foster_wallace/print','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(20,3,2,'htaccess Cheatsheet | marketing . web . design','','http://www.zachgraeve.com/2008/10/29/htaccess-cheatsheet/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(21,3,2,'70+ Cheat Sheet Resources for Web Designers | Design And Marketing Blog','','http://digitallabz.com/blogs/70-cheat-sheet-resources-for-web-designers.html','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(22,3,2,'Exclusive: The Lego Minifig Timeline','','http://gizmodo.com/5070884/exclusive-the-lego-minifig-timeline','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(23,3,2,'Ten things you don’t know about black holes | Bad Astronomy | Discover Magazine','','http://blogs.discovermagazine.com/badastronomy/2008/10/30/ten-things-you-dont-know-about-black-holes/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(24,3,2,'Web Development Toolbox: 120+ New Tools for Web Development','','http://mashable.com/2008/11/01/web-development-tools/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(25,3,2,'Encoding a Photoshop Mockup into XHTML & CSS | Blog.SpoonGraphics','','http://www.blog.spoongraphics.co.uk/tutorials/encoding-a-photoshop-mockup-into-xhtml-css','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(26,3,2,'50+ Must Read Web Design for ROI, Usability and SEO Articles | SEOptimise','','http://www.seoptimise.com/blog/2008/10/50-must-read-web-design-for-roi-usability-and-seo-articles.html','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(27,3,2,'Sarah Palin speaks on the First Amendment - Glenn Greenwald - Salon.com','','http://www.salon.com/opinion/greenwald/2008/10/31/palin/index.html','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(28,3,2,'Microdocs: Home','','http://www.stanford.edu/group/microdocs/index.html','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(29,3,2,'統合スパムフィルタ「スパムちゃんぷるー」のデータに基づくDNSBL(β)','','http://spam-champuru.livedoor.com/dnsbl/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34'),(30,3,2,'10 Principles of the Logo Design Masters - VECTORTUTS','','http://vectortuts.com/articles/web-roundups/10-principles-of-the-logo-design-masters/','http://delicious.com/','Delicious hotlist','','2008-11-02 10:10:34','2008-11-02 10:10:34','2008-11-02 10:10:34');
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  `code` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `open_id_associations`
--

LOCK TABLES `open_id_associations` WRITE;
/*!40000 ALTER TABLE `open_id_associations` DISABLE KEYS */;
INSERT INTO `open_id_associations` VALUES (1,'http://localhost/|normal','�*4!]�����{)39���`����˶��2(','{HMAC-SHA256}{48fef92b}{8F71hQ==}','HMAC-SHA256',1224669483,1209600);
/*!40000 ALTER TABLE `open_id_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_nonces`
--

DROP TABLE IF EXISTS `open_id_nonces`;
CREATE TABLE `open_id_nonces` (
  `id` int(11) NOT NULL auto_increment,
  `server_url` varchar(255) NOT NULL default '',
  `salt` varchar(255) NOT NULL default '',
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opml_metadatas`
--

LOCK TABLES `opml_metadatas` WRITE;
/*!40000 ALTER TABLE `opml_metadatas` DISABLE KEYS */;
INSERT INTO `opml_metadatas` VALUES (1,55890,'text/xml','google-reader-subscriptions_2_.xml',1,'2008-10-23 13:57:22','2008-10-23 13:57:22');
/*!40000 ALTER TABLE `opml_metadatas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL default '',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,1,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-10-17 18:06:51','2008-10-17 18:06:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-10-18 11:12:28','2008-10-18 11:12:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'Standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2008-10-18 14:31:14','2008-10-18 14:31:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_policies`
--

DROP TABLE IF EXISTS `release_policies`;
CREATE TABLE `release_policies` (
  `id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL default '',
  `type_identifier` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_property` (`site_id`,`property`,`type_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
CREATE TABLE `services` (
  `id` int(11) NOT NULL auto_increment,
  `servicename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_services_on_servicename` (`servicename`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'delicious','http://feeds.delicious.com/v2/rss/'),(2,'lastfm','http://lastfm.com/'),(3,'linkedin','http://www.linkedin.com/in/'),(4,'flickr','http://flickr.com/'),(5,'friendfeed','http://friendfeed.com/'),(6,'librarything','http://www.librarything.com/'),(7,'twitter','http://twitter.com/');
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
  `url` varchar(255) NOT NULL default '',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_sites_on_account_id_and_url` (`account_id`,`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
CREATE TABLE `timezones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_timezones_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernames`
--

DROP TABLE IF EXISTS `usernames`;
CREATE TABLE `usernames` (
  `id` int(11) NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_usernames_on_login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usernames`
--

LOCK TABLES `usernames` WRITE;
/*!40000 ALTER TABLE `usernames` DISABLE KEYS */;
INSERT INTO `usernames` VALUES (13,1,1,'lgsicious','2008-10-24 09:00:34','2008-10-24 09:00:34'),(14,1,7,'lgswitter','2008-10-24 09:27:54','2008-10-24 09:27:54'),(15,2,1,'lapaty','2008-10-24 10:03:31','2008-10-24 10:03:31'),(16,1,2,'lgsfm','2008-10-24 12:41:18','2008-10-24 12:41:18'),(17,1,5,'lgsff','2008-10-24 12:57:14','2008-10-24 12:57:14'),(18,3,1,'useraxis','2008-11-01 09:26:23','2008-11-01 09:26:23');
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

-- Dump completed on 2008-11-02 10:23:00
