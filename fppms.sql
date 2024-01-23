-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: FPPMS.mysql.pythonanywhere-services.com    Database: FPPMS$fanshaw1_fpp
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `PasswordReset`
--

DROP TABLE IF EXISTS `PasswordReset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PasswordReset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(250) NOT NULL,
  `isvalid` int(11) NOT NULL,
  `validtill` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordReset`
--

LOCK TABLES `PasswordReset` WRITE;
/*!40000 ALTER TABLE `PasswordReset` DISABLE KEYS */;
INSERT INTO `PasswordReset` VALUES (3,3,'2dd331d653c911ecbd4c0cc47a34acfc',1,'2021-12-02 23:40:06.399184'),(4,1,'7f9d6c6453cb11ec828e0cc47a34acfc',1,'2021-12-02 23:56:42.613372'),(5,2,'26b6b974a3c711ecac560cc47a34acfc',1,'2022-03-14 18:47:08.497298');
/*!40000 ALTER TABLE `PasswordReset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add passwordreset',1,'add_passwordreset'),(2,'Can change passwordreset',1,'change_passwordreset'),(3,'Can delete passwordreset',1,'delete_passwordreset'),(4,'Can view passwordreset',1,'view_passwordreset'),(5,'Can add proposalmodel',2,'add_proposalmodel'),(6,'Can change proposalmodel',2,'change_proposalmodel'),(7,'Can delete proposalmodel',2,'delete_proposalmodel'),(8,'Can view proposalmodel',2,'view_proposalmodel'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$NxYJ91rL4h7c$fg/B8HLXRbzf0xgW1n3Fg5GkHs6iyXhkFD6MfCD6pV8=','2024-01-10 19:19:28.011420',1,'admin','','','mbueno@fanshawec.ca',1,1,'2021-08-18 05:53:09.865070'),(2,'pbkdf2_sha256$216000$9bbYAIoJqpVG$lKZSw1Hq2E+KCRB4E9oei/dvJksy9qvNt3kVee1Sef8=','2022-04-23 03:16:39.674656',1,'Mona','','','maboutaka@fanshawec.ca',0,1,'2021-11-15 19:32:18.454190');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'FPPMS','passwordreset'),(2,'FPPMS','proposalmodel'),(3,'admin','logentry'),(4,'auth','permission'),(5,'auth','group'),(6,'auth','user'),(7,'contenttypes','contenttype'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'FPPMS','0001_initial','2021-08-18 05:19:14.840137'),(2,'FPPMS','0002_alter_passwordreset_validtill','2021-08-18 05:19:14.851227'),(3,'contenttypes','0001_initial','2021-08-18 05:19:15.984848'),(4,'auth','0001_initial','2021-08-18 05:19:23.466564'),(5,'admin','0001_initial','2021-08-18 05:19:25.729297'),(6,'admin','0002_logentry_remove_auto_add','2021-08-18 05:19:25.743978'),(7,'admin','0003_logentry_add_action_flag_choices','2021-08-18 05:19:25.753981'),(8,'contenttypes','0002_remove_content_type_name','2021-08-18 05:19:25.800744'),(9,'auth','0002_alter_permission_name_max_length','2021-08-18 05:19:25.823779'),(10,'auth','0003_alter_user_email_max_length','2021-08-18 05:19:25.839782'),(11,'auth','0004_alter_user_username_opts','2021-08-18 05:19:25.848717'),(12,'auth','0005_alter_user_last_login_null','2021-08-18 05:19:25.864883'),(13,'auth','0006_require_contenttypes_0002','2021-08-18 05:19:25.866302'),(14,'auth','0007_alter_validators_add_error_messages','2021-08-18 05:19:25.877055'),(15,'auth','0008_alter_user_username_max_length','2021-08-18 05:19:25.893947'),(16,'auth','0009_alter_user_last_name_max_length','2021-08-18 05:19:25.908397'),(17,'auth','0010_alter_group_name_max_length','2021-08-18 05:19:25.923231'),(18,'auth','0011_update_proxy_permissions','2021-08-18 05:19:25.933790'),(19,'auth','0012_alter_user_first_name_max_length','2021-08-18 05:19:25.955805'),(20,'sessions','0001_initial','2021-08-18 05:19:26.852068');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ovtca6hzrmmwvojynlkwcjfzm08cynuh','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mGG3z:onFEu-yqdGWVGxUaK9yAiwSyCVav9oOPbeKuZCl1_To','2021-09-01 07:32:39.584784'),('ys38w06vlfj2bgpj5dpuoxw5x80vm0zd','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mGP1p:ED_Y5_-VX3zrIv6ssKJaTXNsZnldtThE1Ouak6urcdQ','2021-09-01 17:07:01.661784'),('krki8jk4ml671x90fgrxqcbzjhocvjd8','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mGvrl:4fxQmLfzWWagGLn8NEe-3lTI4hkOg1vtjpty5ujp8Ck','2021-09-03 04:10:49.763549'),('zpozm0q1whdojruedg4aaq854yssya3p','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mMRrg:MtmQ7H3CeS9M-5wVOq9YtWhYpQtw8cVn5bOGhwcbQVM','2021-09-18 09:21:32.012333'),('qiwb0tsmdlt4uc7igz45da3wkos5dzy8','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mJOT8:ANhzIiVu9O7SRDT5-gGkLOCxPmxDOHeQnNtlKqdr3ys','2021-09-09 23:07:34.961140'),('sku73jfpi54u0th5efi1okeyw2wwm029','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mTqZx:fvbpNrmHLpLria1HV0g0eSuOD2Q9_LfYVKVIAbbK8Kc','2021-10-08 19:09:49.295475'),('coonsk9bl4dqmbsrnw0c2cm3rtw2wf5s','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mPjw6:B9HjacFLWQU6hSMiEMxmLz9aHXcmDmiOy974X4IpZNo','2021-09-27 11:15:42.948191'),('xwjkuxeipat4xclhxj96aahwr9p2p0ds','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mPeMS:VSB1_Ujhmwp8Z5BIv1GtXZb2imbOCyNqK55alGlP6bM','2021-09-27 05:18:32.292677'),('78h8mpcwmt0gyb41xfxdw66tyfa3s43y','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mPeEq:Kh8xrWGC1EJQy23vmLGyfMYMJLKDBXNWdc8-mQyaEeU','2021-09-27 05:10:40.585716'),('br1u4hmrmba4k467k83hkrnrsdmiuez7','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mSJjp:jNv_CuQYv8tLMgVxVn5smVl22nzNVOaVuWJSwwgr7CI','2021-10-04 13:53:41.458552'),('ljewydkz8kvzeu0isj4yz5pebmzjygdl','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mTqeb:gXA0BW6Ef9uN-p-IhQCob1aqSgH_6lOU0JHtNKJzU18','2021-10-08 19:14:37.126125'),('s34l0soreytwrcbjt52jl03vgqqc81mw','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mTqfM:XJEAkzMe47U3tbRuvZX00RexIIQcq53WH9lZtT6OEcI','2021-10-08 19:15:24.867704'),('zt8mj91n4izd4i161p33peb0saxf1vv5','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mVNYD:vxaVwGKXYzHoCBv6Ut9R0f5gzuMYaZbh8XzrfzTsHKk','2021-10-13 00:34:21.176207'),('iyvobormyso805ihvihpk605gvg1xw2b','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mXONf:jjqSBHeNs9LpA2qCfo1IB7blKGAPafNEhsDWYvTArG8','2021-10-18 13:51:47.408101'),('j8lfl27ou2u3ugv7uvnrfgho6vq6qhoj','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mhZRI:eigFusxq6Rw6N1TBMePF0gcoGGh53M_GajS4Bgfkkp8','2021-11-15 15:41:36.554370'),('tvmveao5xk29jtxqazhto3wjbg68j6o4','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mcU4O:gmeH6X6nz0o4CHGs9G5XtQ75LM8JbnmSDpvDu1VjR5E','2021-11-01 14:56:56.313335'),('ablq2ij0v2wxlpddx5krnf72b7bsobpl','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mmkEP:V3OdZktuMaIxvfa7WlF2jbJZ29FfZqNaFuOJAEoh_7k','2021-11-29 22:13:41.659293'),('3fqjj7ncqdewepwawb1jzaxof3fcfzbv','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mmodx:h34o_9EfrcWUmxCWmKqM5N0CFaN0-pUF9ZvGyKSD-3I','2021-11-30 02:56:21.230807'),('6mdhh6cca5xdiyuqrm3j3og0zxuwfv2o','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mhXzx:7qokAHH6PzQdFffTqLe9m-UlSUDS6q7VvthAJMXZD0s','2021-11-15 14:09:17.183167'),('4eyq5pbq1wq8h0w5oh4r9xkfeoozgw14','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1moqlV:geDVRrqZ6JKDv8IWvgOL2szxzm4-JqTo-ZdzbpnYO6o','2021-12-05 17:36:33.163754'),('dwzbbxrq65irhwdq3lpphimlydyqqqi0','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mijG4:XB_yaW9qynQqjwGQyK1Yi-jQq7DVLZY2a9SU23PEie4','2021-11-18 20:22:48.416376'),('31btdb7jnk1yz3u1jpy772xy7tb6l8ph','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mijGs:Lkv60R9HzKPV-gfaMUxGJveWaELDFQS7m10hHL87gCY','2021-11-18 20:23:38.140362'),('aexeorizkxzhi3b5hz4na5lntnlvkj8y','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mijI3:XlQ3sqFoVTQFvGQQq5kuyPmjbNZd2O9S7IUwGX47tSw','2021-11-18 20:24:51.223969'),('254rady6mhpm6103hvxj5ss7mpbz771i','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mijR1:tPKUlssTIE-YOg4QJudpsE-Yj4_14bQYEePAg89DSR0','2021-11-18 20:34:07.851625'),('ojwrswqn4t26v4ryb8vjq57bbfl5apac','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1miyRW:MJpZWOKamOHTdVG1bHwxbuQmzgSmnVADo8gRckjdXd4','2021-11-19 12:35:38.568860'),('ftremebhbh3it5b9mnp1q694mf2yyng2','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mmdre:4GLTkYmTNA7rLWxagUHqWZFdUKJozhOZpKBjWVmej8g','2021-11-29 15:25:46.475268'),('cm6ey1cg3bxk927ji6i865lms2uisdxv','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mkcvG:jSn7QNMvnsfD24t5xKYQdbRfdOEA6KhVk0QUwnKg8Gc','2021-11-24 02:01:10.595950'),('1t501nocoorie22tj5q98pj3kn2erkal','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlDl2:1tfBFuo8vrLj_HyYxAbSH99RvlcYT10n9W77O1DMddc','2021-11-25 17:21:04.298105'),('wf2mcylmvt7fbn1go2rq9eovrij9vvzg','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlDly:SHkm4-PKCATkn7s6b9V61eBU8KuwIsB0l87Nq6JUOZI','2021-11-25 17:22:02.857306'),('iw7e6yprw2mbf997ayes574sy6gzp54i','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHTn:Bgh4urs_gMUtSCvAFavQOUo68wOZ-wxDjZti1fVwhNo','2021-11-25 21:19:31.355900'),('ih2uo22pe6yu5z1wc3gg8y14mjef8qud','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHnQ:6H2dW_1P-eUKpI7IsmulnXjsvu8M_Q_GSFBTKd49qUk','2021-11-25 21:39:48.442423'),('8hgb83zxa6euk4njkwz7gwjhn9jbbs7p','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHpw:Z3Hk512-oh3tgQ_Fv5IpL1Uxs649eXrN1CZcnldGRts','2021-11-25 21:42:24.514655'),('2dfk0cyfuf8wx2hmjcfvas75i6bu7q6d','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHuK:AYtWRknQxrDBLzq9xi3B_u1Rj0HLO1w7s4d6ga8oIuI','2021-11-25 21:46:56.944187'),('aefe5hs3ab1d6mnx4ea0te8bj1rga4ym','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHwR:QsBWLR6CCDzt-qmUmTG2Oh0PawqibUQue_cpM7D2ixE','2021-11-25 21:49:07.011882'),('t86wr5sot6wj0jwdwlj1l2ownk7si85x','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlHxG:9-7N3MR9gJbykbqiKQx9DJWnjenItNPoNFTnm8cHFD8','2021-11-25 21:49:58.191032'),('su2uhc06a8frclyjgkn9uif7hnuk2asr','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlI7D:HhmOvuPjnOszr6lAbQ7XQjWSOthPaqrLMdRP1e4p_Fk','2021-11-25 22:00:15.479163'),('9gsd21oq161oggpqxp4oww6nis2iz9v6','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlI91:GZ0vDEpWGRCsDS9HpLvz5JyVLVPoisERYqW8LsMxMfk','2021-11-25 22:02:07.088704'),('8u0pju5xvh0s6o4cgb7s64wyqxgl74js','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlICD:a3CTgFdgIuGq7vt683-XxGV29gQPgeoJ_55sQx4vr9I','2021-11-25 22:05:25.838521'),('z3yvzsssy6pr9w1d7aqhwkoojz5mz4i1','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlIGN:PKrm7ZHDFAIPpnH7hIwZDG9pK1PqdIn9LVDDXroVk-8','2021-11-25 22:09:43.282883'),('wy4j6rv44kdl6bkhl0huksmqtltee0af','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlIHG:xnMqpMPxxCPXFDbI93DEmVeTMKcNs83kC_HrHKeQtKU','2021-11-25 22:10:38.143801'),('knjtyqgva2fbewqbi0m9tx2hz2tkzkfo','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlII5:TN3SJrE449PYJxsGjO1yfeC2EMHNRtp058U6MTxr5tw','2021-11-25 22:11:29.276260'),('fmwmjy6bnzr7kiqdbzdmmr3y8jlj377e','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlIKW:NzIZMfoe6asNCJl5VvLwbp8NJ0wE-loAGuEclwp2flg','2021-11-25 22:14:00.383820'),('tixxv55bjlmcgfzx0temk59gnpa0zm0i','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlcgG:eON81064exSQ6w79IQRbP4gnfvIGBJ5Lznx9V6odkTs','2021-11-26 19:57:48.511905'),('vnea0yovada74e3gfu4srwud7oxwkw0m','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mlcgV:vWcghea_Afiq-Go6DIKMI2g35HqrGRKNioKhlfjnW0w','2021-11-26 19:58:03.535813'),('ylqwvx04fpgzinx7vedftppek5y5ngqn','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1mmhpv:lzLJIHheX7lB_XBPxX04ZVggzsTvUGJWqcEtWtrw3N0','2021-11-29 19:40:15.663604'),('6mmdfglyd8cn9mc16uvj609diqmsgnxj','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1mmhji:P9g-o6-WyxIJ1_-vK7tQ1KCJlDt8zh2VHyiV_fzzTq0','2021-11-29 19:33:50.911376'),('a6t6wabqzq79b9pke80fupmltcb2l3ob','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mqSQm:m35RNtPg6D4z5qXqVXS0fb5-lsIhMN6WQ0i97vbfpwc','2021-12-10 04:01:48.712771'),('0yty2t1kt6s7pq5e7vozfrca03rkiptl','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mqSVN:GAqkZf7Uwl3t1kAVhehQ_vf7568z5I1XCUm6ESYFhO0','2021-12-10 04:06:33.732136'),('itswyczcj44hzubposeq31w8gz9bn1ml','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxxh3:iKCrEvKegcyZaKSvOiglsY0QLULN9jmfufGykD5dBjI','2021-12-30 20:49:37.985181'),('9qrpp6y3cfjgesqwuycchmgr4z818ssg','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msW8V:_WJXjDDMSTtdX0hEh8_VpoCENKSuXnRSLj8mvw60_k0','2021-12-15 20:23:27.452003'),('tlavkoa55et2pe5nd7mkklqsfaghjnhu','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msWKD:e7-AU0cUJgk_Un8ty6kfctUDEcb5pMewy8Bfis1tib4','2021-12-15 20:35:33.035339'),('mckwcf2gnb5x3h6tzled33yiud75t1v5','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msWN4:B2gJKsYFoyd427ZwHpBs34OEpv9ebnq-5d9s_vj-Sk0','2021-12-15 20:38:30.806215'),('svtiwrufwlr0b8i3k5ymfi38imxorrjq','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msWNO:fQCEmiX-vOheSgaYr4mv4qfwIoKP5k1vTM_FQ9N7miE','2021-12-15 20:38:50.974802'),('jxno2ynd8qhm20vo03mf3ywctcm8723w','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msWNw:L9ryeDuDvdNzR6Y63JQa1hXbiTcnq1joxOwASenw50Y','2021-12-15 20:39:24.610850'),('3y2uolxvwgtsty9d6441aucsvjvshawm','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1msrsO:dB2y1jojW4yIGHdhv8Ts4_VJSuBiSqxwCX5QNitZlPc','2021-12-16 19:36:16.826032'),('b6gy0808iotxd3altouvdpg0nx9bu55v','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxJKk:ftbHZRkhK9r8LCqaJV-lBzw9OrGoecmk0n5B_Yv2Qxk','2021-12-29 01:43:54.387256'),('g8wy7mua3dboh7emwrgaq41dolofb00g','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mstZE:HP4ESOq1ZCdGTQ0msqW08-Chm4U3MfTT7shNjzuibGo','2021-12-16 21:24:36.278522'),('jkcb26mc993fsrb933p5spxwiai6030h','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1my0ZW:i_KO9wth_g03yiJgfqnqkcjBpBUJyjZoSDCretaB4-I','2021-12-30 23:54:02.272661'),('005cw31psof3zqdvdjck5t118qmy93n9','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxvEF:9NFZ-k8w4A1wWmRCbYbMWOCM0dHj5RfwaHOFx_8GUa0','2021-12-30 18:11:43.853281'),('mst25n9wmg97gjzxua840u54syshwrdv','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxwbY:0hI0jfbnyWWQa-GSELlU4obOAeprpEmU_Q7W4UvvkNY','2021-12-30 19:39:52.085241'),('qafzfrrw4uqztog9luiwehswqoy5rg0x','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxxrz:bP0m-3O5g-wBeKQaYUkHVeDJVmaGafoaDNnBK6zBnAQ','2021-12-30 21:00:55.731654'),('s7uxocl4quco7r1bvpeub1gs4rx3aapv','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1mxxi2:zyCSR_ok7m1eTIbkVWgRmOEQpFbttgw_nFkNcKaFo4M','2021-12-30 20:50:38.940129'),('fj7vjabuhsywtct3n169z1lgoll4jizz','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1nDV9s:ya3HTI_EBzvsXL3Afq8YD7PU36M-G1I9iGcdfkZUfec','2022-02-11 17:35:36.713030'),('58avy1g9ixknf4gce7a8jk3cvz23dvm4','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1nHBDB:r3-ntP5ApvjDcsutdOxSegt28GhOMAhEjVAOuLNkkjg','2022-02-21 21:06:13.664989'),('trres1gck9u8p9hljzrl5gieox5frxny','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1n7kFH:jxWzyiEIhd-a6yUaOaXGBRP1PkOCCn3qzwgFBv6qjB8','2022-01-26 20:29:23.067954'),('5022rw9bovyw8ttihhejodhq6iba5ahj','.eJxVjMsOwiAQRf-FtSEFRoZx6b7fQBgeUjU0Ke3K-O_apAvd3nPOfQkftrX6refFT0lchBan341DfOS2g3QP7TbLOLd1mVjuijxol-Oc8vN6uH8HNfT6rWEgHYnLORXQkUETQCpWZXTockEFZqBiTDHBKHSWEzq2gcihshmUeH8A12k3OA:1n9fy7:lKqPjwo983smmp28CEXsYbHGY3MRFMAJzPTahGfomSw','2022-02-01 04:19:39.367148'),('rzqs56q9oczfz4xc681s291n8nr4wuvs','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1nZGWP:Z36IPCMCcFI28W6Sn7xbeRFigjI7wZF1qRJJYBNO_70','2022-04-12 18:24:49.946112'),('rd18br5jgy51afkvfwuv2dv0uz0sgpnh','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1ndIN2:vhKI9GiRL2bXu2PeCs-Z9hqjY3pD-rsj7Wp1uvDEX3A','2022-04-23 21:11:48.258879'),('i6suf8arlow09eanib5jsf2nflv14qga','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1ndIaB:hLCLS536IgPIEAdhCEOFdD_rib8ZDerEZFoAv1vJjq4','2022-04-23 21:25:23.697585'),('vhfufnwbuuen1qnj0hbgql0rkbadz30o','.eJxVjEEOwiAQRe_C2pBBykBduu8ZCAODVA1NSrsy3l1JutDtf-_9l_Bh34rfG69-TuIilDj9bhTig2sH6R7qbZFxqds6k-yKPGiT05L4eT3cv4MSWvnWeQRWZwwAQ44aDCIryFqRc6DAOGsoWMvaOaaBo0VHVgEhox47Fu8PvZU2tg:1ndIPh:mY0Kh6C1q26Tm1kTujC4qqCEI7OjM_7DP3ymdhIOyFs','2022-04-23 21:14:33.301309'),('z9qafrrvjuyo78zybtfocxdzugtbn5ep','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1nmLhb:dpoNA07FtxWj9dBOzGgaEFcI5de6m6CDVPAAgTZL3Yo','2022-05-18 20:34:27.772954'),('e62hoeiz3bpxt4xgboni23z77clt21ts','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1nj7ij:p1CWWj6bSnkAOtJmTtOyjX540vhf2hatSRATSQMnvJo','2022-05-09 23:02:17.650746'),('n6ekr5oye44oss6qz6itxkulji7q0f3e','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1nmEad:4zho2p_zTeSVmeYtZJz-MGQbTVXdUl6buA8OwG2B7RM','2022-05-18 12:58:47.358623'),('vms462ujx56zpct3fu80te98uzjnrtps','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1nmPYi:gsPV5x5HhAB9R7GqP2lv5wtTyAltw37ndAVp8yLujn8','2022-05-19 00:41:32.541320'),('28a8tl6sn6oy6dvnmvwmpgbt0inl8z4o','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1nygzW:T2rkQp_tUuSHTPd1jCsB4gLeKK6VU-kRXOaVDQgR6ps','2022-06-21 21:43:58.268585'),('g0sebxmmjm4ocovv8kzo8yio8p76699e','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1oW1ii:EkaiiWTQNTa1wKIYXbusc_xxJUMqEcrPpwFkeA_YYXM','2022-09-21 20:32:24.342101'),('kgtn8phdtmi3vh7d1cgpt6ffelvbqez7','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1oWj03:EqaOV2mIeNJ4ldsqTO6icta1c3kaL3ioyg66FnqwKzk','2022-09-23 18:45:11.886866'),('np62xj1m4acfp8zzuup4haxjv9l0k5b3','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1odBMm:U_xHqk6Stm92mNhU-RsXAoCuqPa-z4udwb5SCsbX9RQ','2022-10-11 14:15:20.451748'),('tz5n6d95maxeubbr1qglz2qg40tsutjc','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1opY79:60X2pHAwwOwOTkEPH7GdRpGr2VM7vb_78XLbgkeU5GE','2022-11-14 16:58:19.182030'),('5lqbiylkhziy77f3skmlpgorypf1u43b','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1oxUmM:h3nCQZdjwznNLtjKrpSVq3BHCm9nUR5uv5pC2yOi3PQ','2022-12-06 15:01:42.282865'),('xs4tvpe77xpb2w6i9c6spnpvvt2em1ou','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1p1DEt:BsEBn081i2gbIMCW7ucJV1Y2dUR-xS-RCnbFRj_egN4','2022-12-16 21:06:31.052258'),('jfi3yddl0ilf2ax5qywvupe7lqpujxjf','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1p4uPc:o4UQRIMLl17u9X0syHhRLBQ87gPyBgRWGMnky724HPw','2022-12-27 01:48:52.450360'),('dyhrv8b5s4zu7u7kbhy0gsbm1pgjuhl8','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1p4Xb1:dnPrCterPUJeAVfjE3PqaknhywWnRnnbBfunRRVBpK4','2022-12-26 01:27:07.031068'),('rrmoyr52l5uj40277tukgdufp3eb1rx0','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pEUMV:-ar6nKH1zoaTJFMCuw_8r6B4GgIcF__QKiO42WninXk','2023-01-22 12:01:15.742623'),('9ho29d126j6v5xyuslsots5ereovz6dd','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pD9vJ:PK5BGLci3qKUvZ-zqYdx1orW7Mrq8UwGhWnIezQw0JA','2023-01-18 19:59:41.337858'),('qsx4l78vhpwam1rwhkc3t423prv62hxj','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pDAw3:oWa72rD9jcs-Ml5Gz05EOygHPa9XXn7RXycHekBWy6Y','2023-01-18 21:04:31.889011'),('qezw3aengmzxry0umjgns583s1ure3h0','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pDEOT:27F4esjq_cLcvQnQ6l6n5ZLEdMiWn_vKMU7fl_UU9vU','2023-01-19 00:46:05.899288'),('897jvdcqdcd3vdqxolypvc1nf88zyaev','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pDEqK:0HEKxPv-Wx9UhCAp2-rA9dlJwSmmN1d-dK6lGp4F-K0','2023-01-19 01:14:52.872035'),('80oav5iuj4hf5vwue1x7qrv8wqqw6sn6','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pDEt8:enxViEshZSbNWEDJAyGLzlFrrb4ihzeJFtE82UgNKBk','2023-01-19 01:17:46.238914'),('yx61sb5onq79voi93pfixh17bi2yofky','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pDrjo:3rC-zi9v_0LW3RihPDtkOvsMJAdC3tRFqlucaGcIu4o','2023-01-20 18:46:44.372413'),('w4uv80aw0e1lz4e2wxvb38ykd5pgsj01','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pudWB:FCzF5YsqZQD6UoVZ6ZJCpDTv-3N34dNFIjElsR45gv4','2023-05-18 18:17:27.286622'),('jhng9rxc4leqvsc4w9k9v92qrvw692ny','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pw4Jt:cc6qPJyfAKTFmjX2DfFxK4l_hI4ljKnsJOiGgNhwxyI','2023-05-22 17:06:41.102584'),('v1ca5kjngw4x2osym6ms822i7v4drtbz','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1pxsyl:jntla5A7n-aE-WNqgAuWRJ-EhE8Wygpi6exSgaGsVbk','2023-05-27 17:24:23.036200'),('trlhqf8op4ww4zl35q8pjoxem9jc9ywf','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1qecws:OfhjFgUgbYmQFsogx6Oo2yUUOZxLqPXQ7zCEICJomsc','2023-09-22 14:59:06.552891'),('rscke4uqrk2xxxracvz42lcofxs5jgvd','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1qelux:HQxdL4if5RClKietLZJTY_wf5GspjSGVoYy8NRvIIR4','2023-09-23 00:33:43.412637'),('v1gqs6qi4f2uxoa7sh9i4oqlh6lj02c5','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1rL4TW:BgI_oCjKD1gPqqDuEVGOTJsfXNkBuo2XTadHf-DqGvM','2024-01-17 16:52:14.498025'),('5apddznh1jhhkcdhs8ee50qaa4ackrjp','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1rLV5Q:05vp89n9GLzAjJobjas7A3rVzUkMtKKkUiHxbi9Eyhs','2024-01-18 21:17:08.801217'),('y1yexlh36crjbdjdm8yvcv0x6zyrkk75','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1rLvlc:Ky8p3N7xo4kfm-Ci8nHCuuLvSZVZwJOhCFeVYJvhDwg','2024-01-20 01:46:28.850688'),('ofzgiw80f95iuo5a3d7yl1rr01i09rjl','.eJxVjDsOwjAUBO_iGln-JTaU9DmDtfZ7xgGUSHFSIe4OkVJAuzOzLxGxrTVujZc4krgILU6_W0J-8LQDumO6zTLP07qMSe6KPGiTw0z8vB7u30FFq98aCJkNktPOQZF1IPbOUq9sp4IxYKiU0NPZZxuMVr6Uwqx0drApd-L9AfnmOJM:1rNe6q:zi0DCyTkTQ9JAuRgyCWH2SXf27kJCEpx9DrRq6d-0cg','2024-01-24 19:19:28.025176');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `userType` varchar(250) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ptitle` varchar(250) NOT NULL,
  `pdesc` text NOT NULL,
  `pwebsite` varchar(250) NOT NULL,
  `comment` text NOT NULL,
  `reference` varchar(250) NOT NULL,
  `document` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals`
--

LOCK TABLES `proposals` WRITE;
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` VALUES (30,'Legal Case Management System','George','Ivanov','5194954518','givanov@fanshawec.ca','Sponsor','Approved','Legal Case Management System','A program aimed at facilitating the business of law companies','NA','NA','NA','Legal Case Management System.docx'),(28,'Mr.','Vinnie','Moraes','6046121055','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Approved','Electric Vehicle Charging Stations: a City Simulator','To design and develop a simulator software for a city\'s E.V. fleet','www.google.ca','The website is not up yet. I have conceived the mains ideas, experimented with data a bit, and am looking for hard-working students to take on that challenge.','Professor Marc','TBD'),(87,'Professor','Ahmed','Mukhlis','2265820475','a_mukhlis@fanshaweonline.ca','Sponsor','Approved','My Neighbours','Everyone has a neighborhood they can rely on, Connect, exchange helpful information, and provide services. The idea of this project is to design & implement a software to achieve building these connections between neighbors.The essential functionality of the software is to allow any one to register and create a profile stating the address, names, and other basic information. Every neighbor then can start posting (messages, text, images, short videos and more to all neighbors and share with other neighbors important messages .. a good control and configuration for each neighbor can be setup to restrict, filter and sort things.The software also enables the neighbors to create groups and communities and invite other neighbors to join and start conversation and posting withing the specific groupMany features can be added to this application.The software can be implemented as a web application or Mobile devices application or both','n/a','no comments','n/a',''),(81,'Dr.','Saad','Aldin','5198517023','saldin@fanshawec.ca','Sponsor','Approved','Expanse Management','The high volume of expanse and purchasing receipts, organizing, assigning to the proper general legend codes, and reconciling to the banks\' statement continues to be one of the big issues that account payable departments face within the organization.The project is to build a web and mobile app to simplify the process – this will include a few interfaces that communicate with each other in addition to a backend database and admin portal .','NA','student need to have web and mobile programing and database skills','Marc Bueno',''),(88,'Middlesex London Food Policy Council Website','Marc','Bueno','4162091515','mcbueno2k@hotmail.com','Other','Approved','MiddlesexFood Website','They are interested in developing their current website to include more tools to help the public access information.','none','Project sponsor: ellen.lakusiak@mlhu.on.ca','Sandra Winson',''),(79,'Design a Funds Development Campaign for a charity','Paul','Joudrey','2042939693','pjoudrey@fanshawec.ca','Sponsor','Approved','Design A Fund Development Campaign for a Registered Charity','Saint John Ambulance South Western Ontario (SJA SWO) is a regional Branch which includes Chatham, Sarnia, Windsor, and London. All of SJA\'s funding comes from donations - there is no government funding. This Regional Branch needs to develop a fund development with the following characteristics:- developed based on a comprehensive environmental scan across all socio-demographic domains in the four regional areas;- conform to major legislation (CRA, Ontario Lotteries Act, etc)- be sequenced across competitors\' fund development campaigns (hospital lotteries for example)- engage major networks across the four regional areas- sustainable for future years yet adaptable to the changing charitable fund development landscape','Not yet developed','The motto for SJA is \"saving lives at work, home, and play\". This charitable organization has over 500 volunteers in the region, which only scratches the surface of addressing the need in the community. SJA has a proven history (110 years in South West Ontario) of supporting the community through enhancing life saving capabilities, developing leadership across demographic bands (including major diversity groups and First Nations), and supporting Canadians. Funds developed through this project will go directly into supporting first aid/CPR training, leadership development of women and in First Nations communities in the region.This project has potential to provide an excellent learning opportunity for students in programs focused on Business, Finance, Urban Planning, and Communications. It has outstanding potential to expand networks for both Fanshawe College and SJA SWO.','I am a professor at Fanshawe and a Board Member at SJA SWO. I saw this opportunity on an ITS email.',''),(45,'QR Code System for Food-Scaping','Sandra','Wilson','5194524430','s_wilson4@fanshawec.ca','Sponsor','Approved','QR Code System for Food-Scaping','Build a QR Code System that will allow the public to scan the code to answer a short survey on the food they ate from the planter, and choose to obtain information on the produce (such as nutrition information, recipes, etc.)','Not sure','Students/faculty from the AGM program will access the survey data, and provide nutrition/recipe information','Marc Bueno','none'),(100,'Mona Testing on PythonAnywhere.com','Mona','Abou Taka','5196940305','mona.aboutaka@gmail.com','Other','Approved','Moved Project Proposal site to PythonAnywhere.com','I got the site working for free on PythonAnywhere.com. I am still in the process of forwarding the domain to the new site. I think it takes a while. In the meantime, I created an HTML refresh forward. Once it does domain forwarding by godaddy, it will automatically go here.','https://FPPMS.pythonanywhere.com','Will have to login to the pythonanywhere.com every three months to stay active.','The almighty',''),(95,'Community Help Line','Said','Baadel','2265031641','sbaadel@fanshawec.ca','Sponsor','Approved','Ontario Community Help Line','I would like to have an app where community members can search for any help at a reasonable price. Bringing back the yellow pages in a more dynamic setting.','None','This issue has been highlighted when I moved to London a few months ago and struggled to find the required help for a reasonable cost.','myself',''),(98,'LSC students and alumni hub','Marc','Bueno','4162091515','mbueno@fanshawec.ca','other','Approved','LSC students and alumni hub','This projects aims at building a community of current students and alumni students in order to help junior students to settle in London area, share jobs opportunities, tips, thus increasing the odds of student success.','TBD','this project could be split into a few modules and tackled on a per semester basis.','myself.',''),(97,'E-Mazao Application','Said','Baadel','2265031641','sbaadel@fanshawec.ca','Organisation','Approved','E-Mazao Application','Need a supply-chain app for poor farmers in rural areas in East  Africa. Through a USSD Menu, farmers are able to do the following;1. Track their crops upon submission for auction2. Check sales records3. Apply for loans4. Pay for storage, insurance or any other value added services5. Receive their sales payments through mobile money.','None','This project can take longer than the Capstone for 1 section, so I suggest it be planned for 2.','Colleague','eMazao_Concept_Note2.pptx'),(101,'Middlesex London Food Policy Council (MLFPC) Website Enhancement','Ellen','Lakusiak','5196635317','ellen.lakusiak@mlhu.on.ca','Organisation','Approved','MLFPC Website Development and Enhancement','To develop further the MLFPC website and enhance its capacity to allow for reliable,  interactive communication with our community and provide food system information in a user friendly, mobile, interactive, creative, visual way.','https://mlfpc.ca/','Attached in document below are the ideas that we discussed in our original meeting with Marc in Feb, 2022.','Ellen, Jessica, Marc, Mona','MLFPC_Website_Enhancement_Capstone_Project.docx'),(102,'Dr.','Saad','Aldin','5198517023','saldin@fanshawec.ca','Sponsor','Approved','AP Automation','Managing the high volume of expanse and purchasing receipts continues to be one of the issues mid-size organization face. Assigning to the proper General Leger account, reconciling to the bank statement and passing through the approval process are additional AP complex stapes that can be improved with some automation.The project is to build a web and mobile app to simplify the process – this will include a few interfaces that communicate with each other and a backend database and admin portal.','NA','looking for student with solid development abilities','Marc Bueno',''),(103,'SavePPal','Marc','Bueno','4162091515','mcbueno2k@hotmail.com','Sponsor','Approved','EconoBuddy','The idea of SavePal is to allow people to use their cell phones to enter grocery prices from different grocery stores so users know where the best savings are in a giving location (city, town, ..). It\'s similar to GasPal but more general.','take a look at gaspal.ca','N/A','Myself',''),(104,'Rent Easy(Application for international students to rent houses)','Keyur','Mori','5488813307','k_mori@fanshaweonline.ca','Other','Approved','Rent Easy(Application for international students to rent houses)','The application that we are working on is called Rent Easy, the main purpose of this application is for international students to have a reliable source through which they can find a place to live. Almost 2 Lakh students only from India travel for their studies and they have very very very hard time finding a good place to rent as we personally are facing problems.Problems like:1 - The application or website not being reliable. Lots of fake listings.2 - Credit checks are done which are suspicious at times and new students they not have any credit history.3 - Not able to find a place where people of their choice or community are staying.4 - At times get involved in illegal renting contracts that they cannot come out of and don\'t know any policies as new to Canada.5 - The few reliable apps that are available are having listings that are expensive and not in students\' budget.What will the application do?It will show students the houses or rooms available for rent in a particular city. A listing will only be posted after proper verification and certain criteria are matched that we have created. Students will be able to book appointments to view that listing. We are also planning to add payment gateways to the app where the payments can go through. Additionally, the way we are trying to show listings will be geographic with google maps so that, all stores that are near that particular house or how far is it from a particular campus can be seen. Integration of live chat support will also be done so that students can build trust in the application and get the required help.Implementation:Technologies used for application:FRONT END1 - Flutter2 - Dart3 - Javascript4 - React5 - AngularDevelopment Platform1 - FirebaseBACK END:1- Firebase Realtime DatabasePAYMENT GATEWAY1 - Strip 2 - Razor Pay3- Cash FreeAnyone gateway from the above.','NA','If any more explanation is required please let us know.','The idea was generated by us when many of our friends and us discussing about how difficult it is to find a place at times with almost no reliable source.',''),(108,'Mr.','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshawec.ca','Sponsor','Approved','Falcon (Autonomous Robot)','The idea is to continue a past BIA Capstone project: develop software for an Autonomous Robot. This project has been worked on for one semester only, so there is plenty of exciting work to be done by the group who chooses this project.The programming is very similar to what we do in INFO-6101 (Integrated Systems and Microcontrollers).The robot was already selected, bought, and assembled. It already has some self-driving capabilities. The idea is to improve and expand those. Not all of that will necessarily be accomplished in on semester only i.e., just like you would be continuing the previous group’s work, you could make some of the scope above be part of “Future Work.”','N/A','.','Marc Bueno',''),(107,'Student','Henry','Caparas','6473217958','hpcaparas@gmail.com','Other','Pending','Project Monitoring Tool','- Handles project management of a company from the Initiation phase up to the Project Closure.\r\n- Provide dashboards to be used by executives for strategic planning/decisions. Shows the performance of each project in terms of timeliness, manpower availability, milestones, etc.\r\n- Provides workflow approval for the transition of each phase\r\n- Technologies to be used would probably be:\r\n> React (front-end)\r\n> Java (back-end)\r\n> SQL Server (database)\r\n> Tomcat (Webserver)','N.A','Above description is just the high-level detail','I\'m currently a student of Fanshawe',''),(106,'Fanshawe BIA Student','Henry','Caparas','6473217958','hpcaparas@gmail.com','Other','Approved','Employee Scheduler Tool','This is a dynamic scheduler that can be used by any kind of company that requires a scheduler for their employees. This can be beneficial to companies that require their employees to pick and reserve their own schedule. The idea is to make a dynamic design that would cater to any industry type (hospital, corporate, manufacturing, etc.)','N.A','The above description is just the high-level detail of the proposed project. This was initially suggested by professor Saad.','I\'m currently a student of Fanshawe',''),(109,'Mr.','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshawec.ca','Sponsor','Approved','EV Carsharing Service for the City of London, Ontario','The idea is to continue a past BIA Capstone project: develop a system for an EV (Electric Vehicle) Carsharing Service for the City of London, Ontario. This project has been worked on for one semester only, so there is plenty of exciting work to be done by the group who chooses this project.The programming and data analysis should not be rocket science, based on what you have already learned in the BIA.The system has been partially developed: the group found an official government data set with all EV charging stations in Canada. The group also created a map which reads from that data set. The idea is to continue by developing the carsharing system per se as well as the admin view (e.g. the admin can be the City of London) and the driver view (the driver can be any of us with a valid driver’s license).One of the most exciting parts of the project is the optimization problem: how many new EV charging stations should be built? Where? What types? (There are several types of EV charging stations.)Not all of that will necessarily be accomplished in on semester only i.e., just like you would be continuing the previous group’s work, you could make some of the scope above be part of “Future Work.”','N/A','.','Marc Bueno',''),(110,'Mr.','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshawec.ca','Sponsor','Approved','Smart Greenhouse','The idea is to continue a past BIA Capstone project: use hardware and develop software for a Smart Greenhouse (and related website and mobile app). This project has been worked on for one semester only, so there is plenty of exciting work to be done by the group who chooses this project.The programming and data analysis should not be rocket science, based on what you have already learned in the BIA.The microcontroller and sensors were already selected, bought, and assembled. The microcontroller already reads from temperature, moist, and humidity sensors. The website already lists the user’s garden i.e. their plant inventory. The idea is to improve and expand the present features and to develop the mobile app. Not all of that will necessarily be accomplished in on semester only i.e., just like you would be continuing the previous group’s work, you could make some of the scope above be part of “Future Work.”','N/A','.','Marc Bueno',''),(111,'Mona Testing','Mona','A','5196940305','mona.aboutaka@gmail.com','Sponsor','Pending','Test','Test','test','test','Me',''),(112,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','Sentiment Analysis of Social Media Posts','Overview\r\nThis project proposes the development of a machine learning model to perform sentiment analysis on social media posts. The goal is to accurately classify these posts into categories such as positive, negative, or neutral. This project will provide students with hands-on experience in machine learning, data analysis, and integration with social media platforms.\r\n \r\nObjectives\r\n- Develop a machine learning model to analyze sentiment in social media posts.\r\n- Gain practical experience in Python and relevant libraries.\r\n- Utilize social media (e.g. Twitter, Reddit) APIs for data collection.\r\n- Implement project management using agile methodologies.','None','This is not a continuation of a previous Capstone project.','Marc Bueno',''),(113,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','Gizmo (Autonomous Robot)','The idea is to continue a past BIA Capstone project (it started on 23S, and it was continued on 23F): develop software for an Autonomous Robot. This project has been worked on for two semesters only, so there is plenty of exciting work to be done by the group who chooses this project.\r\nThe programming is very similar to what we do in INFO-6101 (Integrated Systems and Microcontrollers).\r\nThe robot was already selected, bought, and assembled. It already has some good self-driving capabilities. The idea is to improve and expand those. Not all of that will necessarily be accomplished in on semester only i.e., just like you would be continuing the previous group’s work, you could make some of the scope above be part of “Future Work.”','None','.','Marc Bueno',''),(114,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','EV Carsharing Service for the City of London, Ontario','The idea is to continue a past BIA Capstone project: develop a system for an EV (Electric Vehicle) Carsharing Service for the City of London, Ontario. This project has been worked on for one semester only, so there is plenty of exciting work to be done by the group who chooses this project.\r\nThe programming and data analysis should not be rocket science, based on what you have already learned in the BIA.\r\nThe system has been partially developed: the group found an official government data set with all EV charging stations in Canada. The group also created a map which reads from that data set. The idea is to continue by developing the carsharing system per se as well as the admin view (e.g. the admin can be the City of London) and the driver view (the driver can be any of us with a valid driver’s license).\r\nOne of the most exciting parts of the project is the optimization problem: how many new EV charging stations should be built? Where? What types? (There are several types of EV charging stations.)\r\nNot all of that will necessarily be accomplished in on semester only.','None','.','Marc Bueno',''),(115,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','Smart Greenhouse','The idea is to continue a past BIA Capstone project: use hardware and develop software for a Smart Greenhouse (and related website and mobile app). This project has been worked on for one semester only, so there is plenty of exciting work to be done by the group who chooses this project.\r\nThe programming and data analysis should not be rocket science, based on what you have already learned in the BIA.\r\nThe microcontroller and sensors were already selected, bought, and assembled. The microcontroller already reads from temperature, moist, and humidity sensors. The website already lists the user’s garden i.e. their plant inventory. The idea is to improve and expand the present features and to develop the mobile app. Not all of that will necessarily be accomplished in on semester only i.e., just like you would be continuing the previous group’s work, you could make some of the scope above be part of “Future Work.”','There is one. I\'ll add that info later.','.','Marc Bueno',''),(116,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','Website to Submit Capstone project proposals','The project is to continue and improve the former Capstone project “Website to Submit Capstone proposals.”\r\nThe website is where I (Vinnie) and other sponsors and mentors go to suggest (submit) Capstone project proposals.\r\nThe website is live and waiting for a hard-working team to revamp the experience.','Fanshaweprojectproposals.ca','.','Marc Bueno',''),(117,'Professor','Vinnie','Moraes','1111111111','vrodriguesdemoraes@fanshaweC.ca','Sponsor','Pending','ITSM Tool for the London South Campus','The project involves designing and building an ITSM tool (think JIRA, ServiceNow or ZenDesk) for the LSC (London South Campus).\r\nBy working with tickets and using a user-friendly tool, logging who worked on which ticket, what the problem was, what the solution was, what the SLA (service-level agreement) was, among others, the LabSquad will be able to be more efficient and effective i.e. they will be able to assist students better and faster.','None','......','Marc Bueno','');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 23:19:25
