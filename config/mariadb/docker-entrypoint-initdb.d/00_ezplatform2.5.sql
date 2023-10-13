-- MariaDB dump 10.19  Distrib 10.11.5-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ez
-- ------------------------------------------------------
-- Server version	10.11.5-MariaDB-1:10.11.5+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collaboration_id` int(11) NOT NULL DEFAULT 0,
  `workflow_process_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `productcollection_id` int(11) NOT NULL DEFAULT 0,
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `download_count` int(11) NOT NULL DEFAULT 0,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_language_id` bigint(20) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_priority` (`priority`),
  KEY `ezcobj_state_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES
(1,2,2,'not_locked',3,0),
(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_language_id` bigint(20) NOT NULL DEFAULT 0,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES
(2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT 0,
  `real_language_id` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES
(2,2,'',3,'Lock');
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES
(1,3,'','Not locked'),
(2,3,'','Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_state_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES
(1,1),
(4,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(41,1),
(42,1),
(45,1),
(49,1),
(50,1),
(51,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_open` int(11) NOT NULL DEFAULT 1,
  `modified` int(11) NOT NULL DEFAULT 0,
  `parent_group_id` int(11) NOT NULL DEFAULT 0,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_path` (`path_string`(191)),
  KEY `ezcollab_group_depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `data_float1` double NOT NULL DEFAULT 0,
  `data_float2` double NOT NULL DEFAULT 0,
  `data_float3` double NOT NULL DEFAULT 0,
  `data_int1` int(11) NOT NULL DEFAULT 0,
  `data_int2` int(11) NOT NULL DEFAULT 0,
  `data_int3` int(11) NOT NULL DEFAULT 0,
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `modified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `last_read` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collaboration_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `message_id` int(11) NOT NULL DEFAULT 0,
  `message_type` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `participant_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT 0,
  `participant_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `last_read` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `participant_role` int(11) NOT NULL DEFAULT 1,
  `participant_type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `last_read` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `data_text1` longtext NOT NULL,
  `main_group` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `data_float1` double NOT NULL DEFAULT 0,
  `data_float2` double NOT NULL DEFAULT 0,
  `data_float3` double NOT NULL DEFAULT 0,
  `data_int1` int(11) NOT NULL DEFAULT 0,
  `data_int2` int(11) NOT NULL DEFAULT 0,
  `data_int3` int(11) NOT NULL DEFAULT 0,
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `disabled` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES
(2,0,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_location` (`node_id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`),
  KEY `ezcontentbrowsebookmark_user_location` (`user_id`,`node_id`),
  CONSTRAINT `ezcontentbrowsebookmark_location_fk` FOREIGN KEY (`node_id`) REFERENCES `ezcontentobject_tree` (`node_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `ezcontentbrowsebookmark_user_fk` FOREIGN KEY (`user_id`) REFERENCES `ezuser` (`contentobject_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `always_available` int(11) NOT NULL DEFAULT 0,
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `is_container` int(11) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext DEFAULT NULL,
  `serialized_name_list` longtext DEFAULT NULL,
  `sort_field` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `url_alias_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES
(1,0,1,'<short_name|name>',1024392098,14,'folder',2,1,2,1448831672,14,'a3d405b81be900468eb153d774f4f0d2','a:0:{}','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL),
(2,0,0,'<short_title|title>',1024392098,14,'article',2,1,3,1082454989,14,'c15b600eb9198b1924063b5a68758232',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),
(3,0,1,'<name>',1024392098,14,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),
(4,0,1,'<first_name> <last_name>',1024392098,14,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),
(5,0,1,'<name>',1031484992,14,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),
(12,0,1,'<name>',1052385472,14,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `can_translate` int(11) DEFAULT 1,
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext DEFAULT NULL,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT 0,
  `is_required` int(11) NOT NULL DEFAULT 0,
  `is_searchable` int(11) NOT NULL DEFAULT 0,
  `placement` int(11) NOT NULL DEFAULT 0,
  `serialized_data_text` longtext DEFAULT NULL,
  `serialized_description_list` longtext DEFAULT NULL,
  `serialized_name_list` longtext NOT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES
(1,0,1,'',2,0,0,0,0,255,0,0,0,'New article','','','','','ezstring','title',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(4,0,1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring','name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'),
(6,0,1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(7,0,1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring','description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(8,0,1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring','first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(9,0,1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring','last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(12,0,0,'',4,0,0,0,0,7,10,0,0,'','','','','','ezuser','user_account',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(116,0,1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(117,0,1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext','caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(118,0,1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage','image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(119,0,1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext','short_description',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}'),
(120,0,1,'',2,0,0,0,0,10,0,0,0,'','','','','','ezrichtext','intro',0,1,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Intro\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(121,0,1,'',2,0,0,0,0,20,0,0,0,'','','','','','ezrichtext','body',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(123,0,0,'',2,0,0,0,0,0,0,0,0,'','','','','','ezboolean','enable_comments',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:15:\"Enable comments\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(146,0,1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(147,0,1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext','description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(148,0,1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile','file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(152,0,1,'',2,0,0,0,0,255,0,0,0,'','','','','','ezstring','short_title',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(153,0,1,'',2,0,0,0,0,1,0,0,0,'','','','','','ezauthor','author',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(154,0,1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation','image',0,0,1,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(155,0,1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring','short_name',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}'),
(156,0,1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext','description',0,0,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'),
(179,0,1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext','signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}'),
(180,0,1,'',4,0,0,0,0,10,0,0,0,'','','','','','ezimage','image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}');
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute_ml`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute_ml` (
  `contentclass_attribute_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `data_text` text DEFAULT NULL,
  `data_json` text DEFAULT NULL,
  PRIMARY KEY (`contentclass_attribute_id`,`version`,`language_id`),
  KEY `ezcontentclass_attribute_ml_lang_fk` (`language_id`),
  CONSTRAINT `ezcontentclass_attribute_ml_lang_fk` FOREIGN KEY (`language_id`) REFERENCES `ezcontent_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute_ml`
--

LOCK TABLES `ezcontentclass_attribute_ml` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentclass_attribute_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_version` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES
(1,0,1,'Content'),
(2,0,1,'Content'),
(3,0,2,'Users'),
(4,0,2,'Users'),
(5,0,3,'Media'),
(12,0,3,'Media');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_version` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES
(1,0,2,'eng-GB','Folder'),
(2,0,3,'eng-GB','Article'),
(3,0,3,'eng-GB','User group'),
(4,0,3,'eng-GB','User'),
(5,0,3,'eng-GB','Image'),
(12,0,3,'eng-GB','File');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES
(1,1031216928,14,1033922106,14,'Content'),
(2,1031216941,14,1033922113,14,'Users'),
(3,1032009743,14,1033922120,14,'Media');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) DEFAULT NULL,
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_section` (`section_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES
(1,1,9,2,3,1448889046,'eZ Platform',14,1448889046,'9459d3c29e15006e45197295722c7ade',1,1,0),
(4,3,1,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1,0),
(10,4,2,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1,0),
(11,3,1,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1,0),
(12,3,1,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1,0),
(13,3,1,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1,0),
(14,4,3,2,3,1301062024,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1,0),
(41,1,1,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1,0),
(42,3,1,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1,0),
(45,1,1,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1,0),
(49,1,1,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1,0),
(50,1,1,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1,0),
(51,1,1,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1,0);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `attribute_original_id` int(11) DEFAULT 0,
  `contentclassattribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext DEFAULT NULL,
  `data_type_string` varchar(50) DEFAULT '',
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `sort_key_int` int(11) NOT NULL DEFAULT 0,
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_string` (`sort_key_string`(191)),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES
(1,9,0,4,1,NULL,NULL,'Welcome to eZ Platform','ezstring','eng-GB',3,0,'welcome to ez platform'),
(2,9,0,119,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>This is the clean install coming with eZ Platform. It’s a barebone setup of the platform, an excellent foundation to build upon if you want to build from scratch. For more ready to go base designs or demo sites, please check the documentation.</para></section>\n','ezrichtext','eng-GB',3,0,''),
(7,1,0,7,4,NULL,NULL,'Main group','ezstring','eng-GB',3,0,''),
(8,1,0,6,4,NULL,NULL,'Users','ezstring','eng-GB',3,0,''),
(19,2,0,8,10,0,0,'Anonymous','ezstring','eng-GB',3,0,'anonymous'),
(20,2,0,9,10,0,0,'User','ezstring','eng-GB',3,0,'user'),
(21,2,0,12,10,0,0,'','ezuser','eng-GB',3,0,''),
(22,1,0,6,11,0,0,'Guest accounts','ezstring','eng-GB',3,0,''),
(23,1,0,7,11,0,0,'','ezstring','eng-GB',3,0,''),
(24,1,0,6,12,0,0,'Administrator users','ezstring','eng-GB',3,0,''),
(25,1,0,7,12,0,0,'','ezstring','eng-GB',3,0,''),
(26,1,0,6,13,0,0,'Editors','ezstring','eng-GB',3,0,''),
(27,1,0,7,13,0,0,'','ezstring','eng-GB',3,0,''),
(28,3,0,8,14,0,0,'Administrator','ezstring','eng-GB',3,0,'administrator'),
(29,3,0,9,14,0,0,'User','ezstring','eng-GB',3,0,'user'),
(30,3,30,12,14,0,0,'','ezuser','eng-GB',3,0,''),
(98,1,0,4,41,0,0,'Media','ezstring','eng-GB',3,0,''),
(99,1,0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(100,1,0,6,42,0,0,'Anonymous Users','ezstring','eng-GB',3,0,'anonymous users'),
(101,1,0,7,42,0,0,'User group for the anonymous user','ezstring','eng-GB',3,0,'user group for the anonymous user'),
(102,9,0,155,1,NULL,NULL,'eZ Platform','ezstring','eng-GB',3,0,'ez platform'),
(103,1,0,155,41,0,0,'','ezstring','eng-GB',3,0,''),
(104,9,0,156,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><title ezxhtml:level=\"2\">Welcome to eZ Platform</title><para>Congratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.</para><title ezxhtml:level=\"3\">Need some guidance?</title><para>Check out the following resources:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://23\" xlink:show=\"none\">User Manual</link> for eZ Platform (and eZ Studio)</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://24\" xlink:show=\"none\">Technical doc</link> for eZ Platform</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://25\" xlink:show=\"none\">eZ Platform</link> developer tutorial</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://26\" xlink:show=\"none\">Comparison guide</link> between eZ Platform and eZ Publish Platform</title><title ezxhtml:level=\"3\">Contribute to the project?</title><para>Join the community:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://27\" xlink:show=\"none\">Github repositories</link> open to the public</title><title ezxhtml:level=\"4\">Register to the community on <link xlink:href=\"ezurl://28\" xlink:show=\"none\">discuss.ezplatform.com</link>, the community site, to access forums, tutorials and blogs</title><title ezxhtml:level=\"4\">Join the conversation on <link xlink:href=\"ezurl://29\" xlink:show=\"none\">the eZ Community Slack</link></title><para>Good luck!</para></section>\n','ezrichtext','eng-GB',3,0,''),
(105,1,0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(123,1,0,4,45,0,0,'Setup','ezstring','eng-GB',3,0,'setup'),
(124,1,0,155,45,0,0,'','ezstring','eng-GB',3,0,''),
(125,1,0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(126,1,0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(142,1,0,4,49,0,0,'Images','ezstring','eng-GB',3,0,'images'),
(143,1,0,155,49,0,0,'','ezstring','eng-GB',3,0,''),
(144,1,0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(145,1,0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(147,1,0,4,50,0,0,'Files','ezstring','eng-GB',3,0,'files'),
(148,1,0,155,50,0,0,'','ezstring','eng-GB',3,0,''),
(149,1,0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(150,1,0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(152,1,0,4,51,0,0,'Multimedia','ezstring','eng-GB',3,0,'multimedia'),
(153,1,0,155,51,0,0,'','ezstring','eng-GB',3,0,''),
(154,1,0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(155,1,0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),
(177,2,0,179,10,0,0,'','eztext','eng-GB',3,0,''),
(178,3,0,179,14,0,0,'','eztext','eng-GB',3,0,''),
(179,2,0,180,10,0,0,'','ezimage','eng-GB',3,0,''),
(180,3,0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage','eng-GB',3,0,'');
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclassattribute_id` int(11) NOT NULL DEFAULT 0,
  `from_contentobject_id` int(11) NOT NULL DEFAULT 0,
  `from_contentobject_version` int(11) NOT NULL DEFAULT 0,
  `relation_type` int(11) NOT NULL DEFAULT 1,
  `to_contentobject_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `content_version` int(11) NOT NULL DEFAULT 0,
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES
(1,9,'eng-GB',2,'eZ Platform','eng-GB'),
(4,1,'eng-GB',3,'Users','eng-GB'),
(10,2,'eng-GB',3,'Anonymous User','eng-GB'),
(11,1,'eng-GB',3,'Guest accounts','eng-GB'),
(12,1,'eng-GB',3,'Administrator users','eng-GB'),
(13,1,'eng-GB',3,'Editors','eng-GB'),
(14,3,'eng-GB',3,'Administrator User','eng-GB'),
(41,1,'eng-GB',3,'Media','eng-GB'),
(42,1,'eng-GB',3,'Anonymous Users','eng-GB'),
(45,1,'eng-GB',3,'Setup','eng-GB'),
(49,1,'eng-GB',3,'Images','eng-GB'),
(50,1,'eng-GB',3,'Files','eng-GB'),
(51,1,'eng-GB',3,'Multimedia','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `node_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  `is_invisible` int(11) NOT NULL DEFAULT 0,
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT 0,
  `parent_node_id` int(11) NOT NULL DEFAULT 0,
  `path_identification_string` longtext DEFAULT NULL,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  `trashed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50)),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_path` (`path_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  `is_invisible` int(11) NOT NULL DEFAULT 0,
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT 0,
  `parent_node_id` int(11) NOT NULL DEFAULT 0,
  `path_identification_string` longtext DEFAULT NULL,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `ezcontentobject_tree_contentobject_id_path_string` (`path_string`(191),`contentobject_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_path` (`path_string`(191)),
  KEY `modified_subnode` (`modified_subnode`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES
(1,0,1,1,0,0,0,1,1448999778,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),
(2,1,1,9,1,0,0,2,1301073466,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),
(5,4,1,1,1,0,0,5,1301062024,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),
(12,11,1,1,2,0,0,12,1081860719,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),
(13,12,1,1,2,0,0,13,1301062024,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),
(14,13,1,1,2,0,0,14,1081860719,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),
(15,14,1,3,3,0,0,15,1301062024,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),
(43,41,1,1,1,0,0,43,1081860720,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),
(44,42,1,1,2,0,0,44,1081860719,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),
(45,10,1,2,3,0,0,45,1081860719,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),
(48,45,1,1,1,0,0,48,1448833726,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),
(51,49,1,1,2,0,0,51,1081860720,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),
(52,50,1,1,2,0,0,52,1081860720,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),
(53,51,1,1,2,0,0,53,1081860720,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `workflow_event_pos` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`),
  KEY `ezcobj_version_creator_id` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES
(4,4,0,14,2,3,0,1,0,1,1),
(439,11,1033920737,14,2,3,1033920746,1,0,1,0),
(440,12,1033920760,14,2,3,1033920775,1,0,1,0),
(441,13,1033920786,14,2,3,1033920794,1,0,1,0),
(472,41,1060695450,14,2,3,1060695457,1,0,1,0),
(473,42,1072180278,14,2,3,1072180330,1,0,1,0),
(474,10,1072180337,14,2,3,1072180405,1,0,2,0),
(477,45,1079684084,14,2,3,1079684190,1,0,1,0),
(488,49,1080220181,14,2,3,1080220197,1,0,1,0),
(489,50,1080220211,14,2,3,1080220220,1,0,1,0),
(490,51,1080220225,14,2,3,1080220233,1,0,1,0),
(499,14,1301061783,14,2,3,1301062024,1,0,3,0),
(506,1,1448889045,14,2,3,1448889046,1,0,9,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `status` int(11) NOT NULL DEFAULT 1,
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdfsfile`
--

DROP TABLE IF EXISTS `ezdfsfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdfsfile` (
  `name_hash` varchar(34) NOT NULL DEFAULT '',
  `name` text NOT NULL,
  `name_trunk` text NOT NULL,
  `datatype` varchar(255) NOT NULL DEFAULT 'application/octet-stream',
  `scope` varchar(25) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name_hash`),
  KEY `ezdfsfile_name_trunk` (`name_trunk`(191)),
  KEY `ezdfsfile_expired_name` (`expired`,`name`(191)),
  KEY `ezdfsfile_name` (`name`(191)),
  KEY `ezdfsfile_mtime` (`mtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdfsfile`
--

LOCK TABLES `ezdfsfile` WRITE;
/*!40000 ALTER TABLE `ezdfsfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdfsfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_percent` double DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT 0,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0,
  `issection` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT 0,
  `enumid` int(11) NOT NULL DEFAULT 0,
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT 0,
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `placement` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT 0,
  `receive_digest` int(11) NOT NULL DEFAULT 0,
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_version` int(11) NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `filepath` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_file` (`filepath`(191)),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) DEFAULT 0,
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext DEFAULT NULL,
  `informationcollection_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES
(1,'English language',0),
(2,'English language',1),
(3,'French language',2),
(4,'German language',3),
(5,'Japan',4),
(6,'Russian Federation and former USSR',5),
(7,'Iran',600),
(8,'Kazakhstan',601),
(9,'Indonesia',602),
(10,'Saudi Arabia',603),
(11,'Vietnam',604),
(12,'Turkey',605),
(13,'Romania',606),
(14,'Mexico',607),
(15,'Macedonia',608),
(16,'Lithuania',609),
(17,'Thailand',611),
(18,'Peru',612),
(19,'Mauritius',613),
(20,'Lebanon',614),
(21,'Hungary',615),
(22,'Thailand',616),
(23,'Ukraine',617),
(24,'China, People\'s Republic',7),
(25,'Czech Republic and Slovakia',80),
(26,'India',81),
(27,'Norway',82),
(28,'Poland',83),
(29,'Spain',84),
(30,'Brazil',85),
(31,'Serbia and Montenegro',86),
(32,'Denmark',87),
(33,'Italy',88),
(34,'Korea, Republic',89),
(35,'Netherlands',90),
(36,'Sweden',91),
(37,'International NGO Publishers and EC Organizations',92),
(38,'India',93),
(39,'Netherlands',94),
(40,'Argentina',950),
(41,'Finland',951),
(42,'Finland',952),
(43,'Croatia',953),
(44,'Bulgaria',954),
(45,'Sri Lanka',955),
(46,'Chile',956),
(47,'Taiwan',957),
(48,'Colombia',958),
(49,'Cuba',959),
(50,'Greece',960),
(51,'Slovenia',961),
(52,'Hong Kong, China',962),
(53,'Hungary',963),
(54,'Iran',964),
(55,'Israel',965),
(56,'Ukraine',966),
(57,'Malaysia',967),
(58,'Mexico',968),
(59,'Pakistan',969),
(60,'Mexico',970),
(61,'Philippines',971),
(62,'Portugal',972),
(63,'Romania',973),
(64,'Thailand',974),
(65,'Turkey',975),
(66,'Caribbean Community',976),
(67,'Egypt',977),
(68,'Nigeria',978),
(69,'Indonesia',979),
(70,'Venezuela',980),
(71,'Singapore',981),
(72,'South Pacific',982),
(73,'Malaysia',983),
(74,'Bangladesh',984),
(75,'Belarus',985),
(76,'Taiwan',986),
(77,'Argentina',987),
(78,'Hong Kong, China',988),
(79,'Portugal',989),
(80,'Qatar',9927),
(81,'Albania',9928),
(82,'Guatemala',9929),
(83,'Costa Rica',9930),
(84,'Algeria',9931),
(85,'Lao People\'s Democratic Republic',9932),
(86,'Syria',9933),
(87,'Latvia',9934),
(88,'Iceland',9935),
(89,'Afghanistan',9936),
(90,'Nepal',9937),
(91,'Tunisia',9938),
(92,'Armenia',9939),
(93,'Montenegro',9940),
(94,'Georgia',9941),
(95,'Ecuador',9942),
(96,'Uzbekistan',9943),
(97,'Turkey',9944),
(98,'Dominican Republic',9945),
(99,'Korea, P.D.R.',9946),
(100,'Algeria',9947),
(101,'United Arab Emirates',9948),
(102,'Estonia',9949),
(103,'Palestine',9950),
(104,'Kosova',9951),
(105,'Azerbaijan',9952),
(106,'Lebanon',9953),
(107,'Morocco',9954),
(108,'Lithuania',9955),
(109,'Cameroon',9956),
(110,'Jordan',9957),
(111,'Bosnia and Herzegovina',9958),
(112,'Libya',9959),
(113,'Saudi Arabia',9960),
(114,'Algeria',9961),
(115,'Panama',9962),
(116,'Cyprus',9963),
(117,'Ghana',9964),
(118,'Kazakhstan',9965),
(119,'Kenya',9966),
(120,'Kyrgyz Republic',9967),
(121,'Costa Rica',9968),
(122,'Uganda',9970),
(123,'Singapore',9971),
(124,'Peru',9972),
(125,'Tunisia',9973),
(126,'Uruguay',9974),
(127,'Moldova',9975),
(128,'Tanzania',9976),
(129,'Costa Rica',9977),
(130,'Ecuador',9978),
(131,'Iceland',9979),
(132,'Papua New Guinea',9980),
(133,'Morocco',9981),
(134,'Zambia',9982),
(135,'Gambia',9983),
(136,'Latvia',9984),
(137,'Estonia',9985),
(138,'Lithuania',9986),
(139,'Tanzania',9987),
(140,'Ghana',9988),
(141,'Macedonia',9989),
(142,'Bahrain',99901),
(143,'Gabon',99902),
(144,'Mauritius',99903),
(145,'Netherlands Antilles and Aruba',99904),
(146,'Bolivia',99905),
(147,'Kuwait',99906),
(148,'Malawi',99908),
(149,'Malta',99909),
(150,'Sierra Leone',99910),
(151,'Lesotho',99911),
(152,'Botswana',99912),
(153,'Andorra',99913),
(154,'Suriname',99914),
(155,'Maldives',99915),
(156,'Namibia',99916),
(157,'Brunei Darussalam',99917),
(158,'Faroe Islands',99918),
(159,'Benin',99919),
(160,'Andorra',99920),
(161,'Qatar',99921),
(162,'Guatemala',99922),
(163,'El Salvador',99923),
(164,'Nicaragua',99924),
(165,'Paraguay',99925),
(166,'Honduras',99926),
(167,'Albania',99927),
(168,'Georgia',99928),
(169,'Mongolia',99929),
(170,'Armenia',99930),
(171,'Seychelles',99931),
(172,'Malta',99932),
(173,'Nepal',99933),
(174,'Dominican Republic',99934),
(175,'Haiti',99935),
(176,'Bhutan',99936),
(177,'Macau',99937),
(178,'Srpska, Republic of',99938),
(179,'Guatemala',99939),
(180,'Georgia',99940),
(181,'Armenia',99941),
(182,'Sudan',99942),
(183,'Albania',99943),
(184,'Ethiopia',99944),
(185,'Namibia',99945),
(186,'Nepal',99946),
(187,'Tajikistan',99947),
(188,'Eritrea',99948),
(189,'Mauritius',99949),
(190,'Cambodia',99950),
(191,'Congo',99951),
(192,'Mali',99952),
(193,'Paraguay',99953),
(194,'Bolivia',99954),
(195,'Srpska, Republic of',99955),
(196,'Albania',99956),
(197,'Malta',99957),
(198,'Bahrain',99958),
(199,'Luxembourg',99959),
(200,'Malawi',99960),
(201,'El Salvador',99961),
(202,'Mongolia',99962),
(203,'Cambodia',99963),
(204,'Nicaragua',99964),
(205,'Macau',99965),
(206,'Kuwait',99966),
(207,'Paraguay',99967),
(208,'Botswana',99968),
(209,'France',10);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_number` int(11) NOT NULL DEFAULT 0,
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT 0,
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES
(1,0,'0',1,'5',59999),
(2,60000,'600',3,'649',64999),
(3,70000,'7',1,'7',79999),
(4,80000,'80',2,'94',94999),
(5,95000,'950',3,'989',98999),
(6,99000,'9900',4,'9989',99899),
(7,99900,'99900',5,'99999',99999),
(8,10000,'10',2,'10',10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_number` int(11) NOT NULL DEFAULT 0,
  `isbn_group_id` int(11) NOT NULL DEFAULT 0,
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT 0,
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES
(1,0,1,'00',2,'19',19999),
(2,20000,1,'200',3,'699',69999),
(3,70000,1,'7000',4,'8499',84999),
(4,85000,1,'85000',5,'89999',89999),
(5,90000,1,'900000',6,'949999',94999),
(6,95000,1,'9500000',7,'9999999',99999),
(7,0,2,'00',2,'09',9999),
(8,10000,2,'100',3,'399',39999),
(9,40000,2,'4000',4,'5499',54999),
(10,55000,2,'55000',5,'86979',86979),
(11,86980,2,'869800',6,'998999',99899),
(12,99900,2,'9990000',7,'9999999',99999),
(13,0,3,'00',2,'19',19999),
(14,20000,3,'200',3,'349',34999),
(15,35000,3,'35000',5,'39999',39999),
(16,40000,3,'400',3,'699',69999),
(17,70000,3,'7000',4,'8399',83999),
(18,84000,3,'84000',5,'89999',89999),
(19,90000,3,'900000',6,'949999',94999),
(20,95000,3,'9500000',7,'9999999',99999),
(21,0,4,'00',2,'02',2999),
(22,3000,4,'030',3,'033',3399),
(23,3400,4,'0340',4,'0369',3699),
(24,3700,4,'03700',5,'03999',3999),
(25,4000,4,'04',2,'19',19999),
(26,20000,4,'200',3,'699',69999),
(27,70000,4,'7000',4,'8499',84999),
(28,85000,4,'85000',5,'89999',89999),
(29,90000,4,'900000',6,'949999',94999),
(30,95000,4,'9500000',7,'9539999',95399),
(31,95400,4,'95400',5,'96999',96999),
(32,97000,4,'9700000',7,'9899999',98999),
(33,99000,4,'99000',5,'99499',99499),
(34,99500,4,'99500',5,'99999',99999),
(35,0,5,'00',2,'19',19999),
(36,20000,5,'200',3,'699',69999),
(37,70000,5,'7000',4,'8499',84999),
(38,85000,5,'85000',5,'89999',89999),
(39,90000,5,'900000',6,'949999',94999),
(40,95000,5,'9500000',7,'9999999',99999),
(41,0,6,'00',2,'19',19999),
(42,20000,6,'200',3,'420',42099),
(43,42100,6,'4210',4,'4299',42999),
(44,43000,6,'430',3,'430',43099),
(45,43100,6,'4310',4,'4399',43999),
(46,44000,6,'440',3,'440',44099),
(47,44100,6,'4410',4,'4499',44999),
(48,45000,6,'450',3,'699',69999),
(49,70000,6,'7000',4,'8499',84999),
(50,85000,6,'85000',5,'89999',89999),
(51,90000,6,'900000',6,'909999',90999),
(52,91000,6,'91000',5,'91999',91999),
(53,92000,6,'9200',4,'9299',92999),
(54,93000,6,'93000',5,'94999',94999),
(55,95000,6,'9500000',7,'9500999',95009),
(56,95010,6,'9501',4,'9799',97999),
(57,98000,6,'98000',5,'98999',98999),
(58,99000,6,'9900000',7,'9909999',99099),
(59,99100,6,'9910',4,'9999',99999),
(60,0,7,'00',2,'09',9999),
(61,10000,7,'100',3,'499',49999),
(62,50000,7,'5000',4,'8999',89999),
(63,90000,7,'90000',5,'99999',99999),
(64,0,8,'00',2,'19',19999),
(65,20000,8,'200',3,'699',69999),
(66,70000,8,'7000',4,'7999',79999),
(67,80000,8,'80000',5,'84999',84999),
(68,85000,8,'85',2,'99',99999),
(69,0,9,'00',2,'19',19999),
(70,20000,9,'200',3,'799',79999),
(71,80000,9,'8000',4,'9499',94999),
(72,95000,9,'95000',5,'99999',99999),
(73,0,10,'00',2,'04',4999),
(74,5000,10,'05',2,'49',49999),
(75,50000,10,'500',3,'799',79999),
(76,80000,10,'8000',4,'8999',89999),
(77,90000,10,'90000',5,'99999',99999),
(78,0,11,'0',1,'4',49999),
(79,50000,11,'50',2,'89',89999),
(80,90000,11,'900',3,'979',97999),
(81,98000,11,'9800',4,'9999',99999),
(82,1000,12,'01',2,'09',9999),
(83,10000,12,'100',3,'399',39999),
(84,40000,12,'4000',4,'5999',59999),
(85,60000,12,'60000',5,'89999',89999),
(86,90000,12,'90',2,'99',99999),
(87,0,13,'0',1,'0',9999),
(88,10000,13,'10',2,'49',49999),
(89,50000,13,'500',3,'799',79999),
(90,80000,13,'8000',4,'9199',91999),
(91,92000,13,'92000',5,'99999',99999),
(92,0,14,'00',2,'39',39999),
(93,40000,14,'400',3,'749',74999),
(94,75000,14,'7500',4,'9499',94999),
(95,95000,14,'95000',5,'99999',99999),
(96,0,15,'0',1,'0',9999),
(97,10000,15,'10',2,'19',19999),
(98,20000,15,'200',3,'449',44999),
(99,45000,15,'4500',4,'6499',64999),
(100,65000,15,'65000',5,'69999',69999),
(101,70000,15,'7',1,'9',99999),
(102,0,16,'00',2,'39',39999),
(103,40000,16,'400',3,'799',79999),
(104,80000,16,'8000',4,'9499',94999),
(105,95000,16,'95000',5,'99999',99999),
(106,0,18,'00',2,'29',29999),
(107,30000,18,'300',3,'399',39999),
(108,40000,18,'4000',4,'4499',44999),
(109,45000,18,'45000',5,'49999',49999),
(110,50000,18,'50',2,'99',99999),
(111,0,19,'0',1,'9',99999),
(112,0,20,'00',2,'39',39999),
(113,40000,20,'400',3,'799',79999),
(114,80000,20,'8000',4,'9499',94999),
(115,95000,20,'95000',5,'99999',99999),
(116,0,21,'00',2,'09',9999),
(117,10000,21,'100',3,'499',49999),
(118,50000,21,'5000',4,'7999',79999),
(119,80000,21,'80000',5,'89999',89999),
(120,0,22,'00',2,'19',19999),
(121,20000,22,'200',3,'699',69999),
(122,70000,22,'7000',4,'8999',89999),
(123,90000,22,'90000',5,'99999',99999),
(124,0,23,'00',2,'49',49999),
(125,50000,23,'500',3,'699',69999),
(126,70000,23,'7000',4,'8999',89999),
(127,90000,23,'90000',5,'99999',99999),
(128,0,24,'00',2,'09',9999),
(129,10000,24,'100',3,'499',49999),
(130,50000,24,'5000',4,'7999',79999),
(131,80000,24,'80000',5,'89999',89999),
(132,90000,24,'900000',6,'999999',99999),
(133,0,25,'00',2,'19',19999),
(134,20000,25,'200',3,'699',69999),
(135,70000,25,'7000',4,'8499',84999),
(136,85000,25,'85000',5,'89999',89999),
(137,90000,25,'900000',6,'999999',99999),
(138,0,26,'00',2,'19',19999),
(139,20000,26,'200',3,'699',69999),
(140,70000,26,'7000',4,'8499',84999),
(141,85000,26,'85000',5,'89999',89999),
(142,90000,26,'900000',6,'999999',99999),
(143,0,27,'00',2,'19',19999),
(144,20000,27,'200',3,'699',69999),
(145,70000,27,'7000',4,'8999',89999),
(146,90000,27,'90000',5,'98999',98999),
(147,99000,27,'990000',6,'999999',99999),
(148,0,28,'00',2,'19',19999),
(149,20000,28,'200',3,'599',59999),
(150,60000,28,'60000',5,'69999',69999),
(151,70000,28,'7000',4,'8499',84999),
(152,85000,28,'85000',5,'89999',89999),
(153,90000,28,'900000',6,'999999',99999),
(154,0,29,'00',2,'14',14999),
(155,15000,29,'15000',5,'19999',19999),
(156,20000,29,'200',3,'699',69999),
(157,70000,29,'7000',4,'8499',84999),
(158,85000,29,'85000',5,'89999',89999),
(159,90000,29,'9000',4,'9199',91999),
(160,92000,29,'920000',6,'923999',92399),
(161,92400,29,'92400',5,'92999',92999),
(162,93000,29,'930000',6,'949999',94999),
(163,95000,29,'95000',5,'96999',96999),
(164,97000,29,'9700',4,'9999',99999),
(165,0,30,'00',2,'19',19999),
(166,20000,30,'200',3,'599',59999),
(167,60000,30,'60000',5,'69999',69999),
(168,70000,30,'7000',4,'8499',84999),
(169,85000,30,'85000',5,'89999',89999),
(170,90000,30,'900000',6,'979999',97999),
(171,98000,30,'98000',5,'99999',99999),
(172,0,31,'00',2,'29',29999),
(173,30000,31,'300',3,'599',59999),
(174,60000,31,'6000',4,'7999',79999),
(175,80000,31,'80000',5,'89999',89999),
(176,90000,31,'900000',6,'999999',99999),
(177,0,32,'00',2,'29',29999),
(178,40000,32,'400',3,'649',64999),
(179,70000,32,'7000',4,'7999',79999),
(180,85000,32,'85000',5,'94999',94999),
(181,97000,32,'970000',6,'999999',99999),
(182,0,33,'00',2,'19',19999),
(183,20000,33,'200',3,'599',59999),
(184,60000,33,'6000',4,'8499',84999),
(185,85000,33,'85000',5,'89999',89999),
(186,90000,33,'900000',6,'949999',94999),
(187,95000,33,'95000',5,'99999',99999),
(188,0,34,'00',2,'24',24999),
(189,25000,34,'250',3,'549',54999),
(190,55000,34,'5500',4,'8499',84999),
(191,85000,34,'85000',5,'94999',94999),
(192,95000,34,'950000',6,'969999',96999),
(193,97000,34,'97000',5,'98999',98999),
(194,99000,34,'990',3,'999',99999),
(195,0,35,'00',2,'19',19999),
(196,20000,35,'200',3,'499',49999),
(197,50000,35,'5000',4,'6999',69999),
(198,70000,35,'70000',5,'79999',79999),
(199,80000,35,'800000',6,'849999',84999),
(200,85000,35,'8500',4,'8999',89999),
(201,90000,35,'90',2,'90',90999),
(202,91000,35,'910000',6,'939999',93999),
(203,94000,35,'94',2,'94',94999),
(204,95000,35,'950000',6,'999999',99999),
(205,0,36,'0',1,'1',19999),
(206,20000,36,'20',2,'49',49999),
(207,50000,36,'500',3,'649',64999),
(208,70000,36,'7000',4,'7999',79999),
(209,85000,36,'85000',5,'94999',94999),
(210,97000,36,'970000',6,'999999',99999),
(211,0,37,'0',1,'5',59999),
(212,60000,37,'60',2,'79',79999),
(213,80000,37,'800',3,'899',89999),
(214,90000,37,'9000',4,'9499',94999),
(215,95000,37,'95000',5,'98999',98999),
(216,99000,37,'990000',6,'999999',99999),
(217,0,38,'00',2,'09',9999),
(218,10000,38,'100',3,'499',49999),
(219,50000,38,'5000',4,'7999',79999),
(220,80000,38,'80000',5,'94999',94999),
(221,95000,38,'950000',6,'999999',99999),
(222,0,39,'000',3,'599',59999),
(223,60000,39,'6000',4,'8999',89999),
(224,90000,39,'90000',5,'99999',99999),
(225,0,40,'00',2,'49',49999),
(226,50000,40,'500',3,'899',89999),
(227,90000,40,'9000',4,'9899',98999),
(228,99000,40,'99000',5,'99999',99999),
(229,0,41,'0',1,'1',19999),
(230,20000,41,'20',2,'54',54999),
(231,55000,41,'550',3,'889',88999),
(232,89000,41,'8900',4,'9499',94999),
(233,95000,41,'95000',5,'99999',99999),
(234,0,42,'00',2,'19',19999),
(235,20000,42,'200',3,'499',49999),
(236,50000,42,'5000',4,'5999',59999),
(237,60000,42,'60',2,'65',65999),
(238,66000,42,'6600',4,'6699',66999),
(239,67000,42,'67000',5,'69999',69999),
(240,70000,42,'7000',4,'7999',79999),
(241,80000,42,'80',2,'94',94999),
(242,95000,42,'9500',4,'9899',98999),
(243,99000,42,'99000',5,'99999',99999),
(244,0,43,'0',1,'0',9999),
(245,10000,43,'10',2,'14',14999),
(246,15000,43,'150',3,'549',54999),
(247,55000,43,'55000',5,'59999',59999),
(248,60000,43,'6000',4,'9499',94999),
(249,95000,43,'95000',5,'99999',99999),
(250,0,44,'00',2,'28',28999),
(251,29000,44,'2900',4,'2999',29999),
(252,30000,44,'300',3,'799',79999),
(253,80000,44,'8000',4,'8999',89999),
(254,90000,44,'90000',5,'92999',92999),
(255,93000,44,'9300',4,'9999',99999),
(256,0,45,'0000',4,'1999',19999),
(257,20000,45,'20',2,'49',49999),
(258,50000,45,'50000',5,'54999',54999),
(259,55000,45,'550',3,'799',79999),
(260,80000,45,'8000',4,'9499',94999),
(261,95000,45,'95000',5,'99999',99999),
(262,0,46,'00',2,'19',19999),
(263,20000,46,'200',3,'699',69999),
(264,70000,46,'7000',4,'9999',99999),
(265,0,47,'00',2,'02',2999),
(266,3000,47,'0300',4,'0499',4999),
(267,5000,47,'05',2,'19',19999),
(268,20000,47,'2000',4,'2099',20999),
(269,21000,47,'21',2,'27',27999),
(270,28000,47,'28000',5,'30999',30999),
(271,31000,47,'31',2,'43',43999),
(272,44000,47,'440',3,'819',81999),
(273,82000,47,'8200',4,'9699',96999),
(274,97000,47,'97000',5,'99999',99999),
(275,0,48,'00',2,'56',56999),
(276,57000,48,'57000',5,'59999',59999),
(277,60000,48,'600',3,'799',79999),
(278,80000,48,'8000',4,'9499',94999),
(279,95000,48,'95000',5,'99999',99999),
(280,0,49,'00',2,'19',19999),
(281,20000,49,'200',3,'699',69999),
(282,70000,49,'7000',4,'8499',84999),
(283,85000,49,'85000',5,'99999',99999),
(284,0,50,'00',2,'19',19999),
(285,20000,50,'200',3,'659',65999),
(286,66000,50,'6600',4,'6899',68999),
(287,69000,50,'690',3,'699',69999),
(288,70000,50,'7000',4,'8499',84999),
(289,85000,50,'85000',5,'92999',92999),
(290,93000,50,'93',2,'93',93999),
(291,94000,50,'9400',4,'9799',97999),
(292,98000,50,'98000',5,'99999',99999),
(293,0,51,'00',2,'19',19999),
(294,20000,51,'200',3,'599',59999),
(295,60000,51,'6000',4,'8999',89999),
(296,90000,51,'90000',5,'94999',94999),
(297,0,52,'00',2,'19',19999),
(298,20000,52,'200',3,'699',69999),
(299,70000,52,'7000',4,'8499',84999),
(300,85000,52,'85000',5,'86999',86999),
(301,87000,52,'8700',4,'8999',89999),
(302,90000,52,'900',3,'999',99999),
(303,0,53,'00',2,'19',19999),
(304,20000,53,'200',3,'699',69999),
(305,70000,53,'7000',4,'8499',84999),
(306,85000,53,'85000',5,'89999',89999),
(307,90000,53,'9000',4,'9999',99999),
(308,0,54,'00',2,'14',14999),
(309,15000,54,'150',3,'249',24999),
(310,25000,54,'2500',4,'2999',29999),
(311,30000,54,'300',3,'549',54999),
(312,55000,54,'5500',4,'8999',89999),
(313,90000,54,'90000',5,'96999',96999),
(314,97000,54,'970',3,'989',98999),
(315,99000,54,'9900',4,'9999',99999),
(316,0,55,'00',2,'19',19999),
(317,20000,55,'200',3,'599',59999),
(318,70000,55,'7000',4,'7999',79999),
(319,90000,55,'90000',5,'99999',99999),
(320,0,56,'00',2,'14',14999),
(321,15000,56,'1500',4,'1699',16999),
(322,17000,56,'170',3,'199',19999),
(323,20000,56,'2000',4,'2999',29999),
(324,30000,56,'300',3,'699',69999),
(325,70000,56,'7000',4,'8999',89999),
(326,90000,56,'90000',5,'99999',99999),
(327,0,57,'00',2,'00',999),
(328,1000,57,'0100',4,'0999',9999),
(329,10000,57,'10000',5,'19999',19999),
(330,30000,57,'300',3,'499',49999),
(331,50000,57,'5000',4,'5999',59999),
(332,60000,57,'60',2,'89',89999),
(333,90000,57,'900',3,'989',98999),
(334,99000,57,'9900',4,'9989',99899),
(335,99900,57,'99900',5,'99999',99999),
(336,1000,58,'01',2,'39',39999),
(337,40000,58,'400',3,'499',49999),
(338,50000,58,'5000',4,'7999',79999),
(339,80000,58,'800',3,'899',89999),
(340,90000,58,'9000',4,'9999',99999),
(341,0,59,'0',1,'1',19999),
(342,20000,59,'20',2,'39',39999),
(343,40000,59,'400',3,'799',79999),
(344,80000,59,'8000',4,'9999',99999),
(345,1000,60,'01',2,'59',59999),
(346,60000,60,'600',3,'899',89999),
(347,90000,60,'9000',4,'9099',90999),
(348,91000,60,'91000',5,'96999',96999),
(349,97000,60,'9700',4,'9999',99999),
(350,0,61,'000',3,'015',1599),
(351,1600,61,'0160',4,'0199',1999),
(352,2000,61,'02',2,'02',2999),
(353,3000,61,'0300',4,'0599',5999),
(354,6000,61,'06',2,'09',9999),
(355,10000,61,'10',2,'49',49999),
(356,50000,61,'500',3,'849',84999),
(357,85000,61,'8500',4,'9099',90999),
(358,91000,61,'91000',5,'98999',98999),
(359,99000,61,'9900',4,'9999',99999),
(360,0,62,'0',1,'1',19999),
(361,20000,62,'20',2,'54',54999),
(362,55000,62,'550',3,'799',79999),
(363,80000,62,'8000',4,'9499',94999),
(364,95000,62,'95000',5,'99999',99999),
(365,0,63,'0',1,'0',9999),
(366,10000,63,'100',3,'169',16999),
(367,17000,63,'1700',4,'1999',19999),
(368,20000,63,'20',2,'54',54999),
(369,55000,63,'550',3,'759',75999),
(370,76000,63,'7600',4,'8499',84999),
(371,85000,63,'85000',5,'88999',88999),
(372,89000,63,'8900',4,'9499',94999),
(373,95000,63,'95000',5,'99999',99999),
(374,0,64,'00',2,'19',19999),
(375,20000,64,'200',3,'699',69999),
(376,70000,64,'7000',4,'8499',84999),
(377,85000,64,'85000',5,'89999',89999),
(378,90000,64,'90000',5,'94999',94999),
(379,95000,64,'9500',4,'9999',99999),
(380,0,65,'00000',5,'01999',1999),
(381,2000,65,'02',2,'24',24999),
(382,25000,65,'250',3,'599',59999),
(383,60000,65,'6000',4,'9199',91999),
(384,92000,65,'92000',5,'98999',98999),
(385,99000,65,'990',3,'999',99999),
(386,0,66,'0',1,'3',39999),
(387,40000,66,'40',2,'59',59999),
(388,60000,66,'600',3,'799',79999),
(389,80000,66,'8000',4,'9499',94999),
(390,95000,66,'95000',5,'99999',99999),
(391,0,67,'00',2,'19',19999),
(392,20000,67,'200',3,'499',49999),
(393,50000,67,'5000',4,'6999',69999),
(394,70000,67,'700',3,'999',99999),
(395,0,68,'000',3,'199',19999),
(396,20000,68,'2000',4,'2999',29999),
(397,30000,68,'30000',5,'79999',79999),
(398,80000,68,'8000',4,'8999',89999),
(399,90000,68,'900',3,'999',99999),
(400,0,69,'000',3,'099',9999),
(401,10000,69,'1000',4,'1499',14999),
(402,15000,69,'15000',5,'19999',19999),
(403,20000,69,'20',2,'29',29999),
(404,30000,69,'3000',4,'3999',39999),
(405,40000,69,'400',3,'799',79999),
(406,80000,69,'8000',4,'9499',94999),
(407,95000,69,'95000',5,'99999',99999),
(408,0,70,'00',2,'19',19999),
(409,20000,70,'200',3,'599',59999),
(410,60000,70,'6000',4,'9999',99999),
(411,0,71,'00',2,'11',11999),
(412,12000,71,'1200',4,'1999',19999),
(413,20000,71,'200',3,'289',28999),
(414,29000,71,'2900',4,'9999',99999),
(415,0,72,'00',2,'09',9999),
(416,10000,72,'100',3,'699',69999),
(417,70000,72,'70',2,'89',89999),
(418,90000,72,'9000',4,'9799',97999),
(419,98000,72,'98000',5,'99999',99999),
(420,0,73,'00',2,'01',1999),
(421,2000,73,'020',3,'199',19999),
(422,20000,73,'2000',4,'3999',39999),
(423,40000,73,'40000',5,'44999',44999),
(424,45000,73,'45',2,'49',49999),
(425,50000,73,'50',2,'79',79999),
(426,80000,73,'800',3,'899',89999),
(427,90000,73,'9000',4,'9899',98999),
(428,99000,73,'99000',5,'99999',99999),
(429,0,74,'00',2,'39',39999),
(430,40000,74,'400',3,'799',79999),
(431,80000,74,'8000',4,'8999',89999),
(432,90000,74,'90000',5,'99999',99999),
(433,0,75,'00',2,'39',39999),
(434,40000,75,'400',3,'599',59999),
(435,60000,75,'6000',4,'8999',89999),
(436,90000,75,'90000',5,'99999',99999),
(437,0,76,'00',2,'11',11999),
(438,12000,76,'120',3,'559',55999),
(439,56000,76,'5600',4,'7999',79999),
(440,80000,76,'80000',5,'99999',99999),
(441,0,77,'00',2,'09',9999),
(442,10000,77,'1000',4,'1999',19999),
(443,20000,77,'20000',5,'29999',29999),
(444,30000,77,'30',2,'49',49999),
(445,50000,77,'500',3,'899',89999),
(446,90000,77,'9000',4,'9499',94999),
(447,95000,77,'95000',5,'99999',99999),
(448,0,78,'00',2,'14',14999),
(449,15000,78,'15000',5,'16999',16999),
(450,17000,78,'17000',5,'19999',19999),
(451,20000,78,'200',3,'799',79999),
(452,80000,78,'8000',4,'9699',96999),
(453,97000,78,'97000',5,'99999',99999),
(454,0,79,'0',1,'1',19999),
(455,20000,79,'20',2,'54',54999),
(456,55000,79,'550',3,'799',79999),
(457,80000,79,'8000',4,'9499',94999),
(458,95000,79,'95000',5,'99999',99999),
(459,0,80,'00',2,'09',9999),
(460,10000,80,'100',3,'399',39999),
(461,40000,80,'4000',4,'4999',49999),
(462,0,81,'00',2,'09',9999),
(463,10000,81,'100',3,'399',39999),
(464,40000,81,'4000',4,'4999',49999),
(465,0,82,'0',1,'3',39999),
(466,40000,82,'40',2,'54',54999),
(467,55000,82,'550',3,'799',79999),
(468,80000,82,'8000',4,'9999',99999),
(469,0,83,'00',2,'49',49999),
(470,50000,83,'500',3,'939',93999),
(471,94000,83,'9400',4,'9999',99999),
(472,0,84,'00',2,'29',29999),
(473,30000,84,'300',3,'899',89999),
(474,90000,84,'9000',4,'9999',99999),
(475,0,85,'00',2,'39',39999),
(476,40000,85,'400',3,'849',84999),
(477,85000,85,'8500',4,'9999',99999),
(478,0,86,'0',1,'0',9999),
(479,10000,86,'10',2,'39',39999),
(480,40000,86,'400',3,'899',89999),
(481,90000,86,'9000',4,'9999',99999),
(482,0,87,'0',1,'0',9999),
(483,10000,87,'10',2,'49',49999),
(484,50000,87,'500',3,'799',79999),
(485,80000,87,'8000',4,'9999',99999),
(486,0,88,'0',1,'0',9999),
(487,10000,88,'10',2,'39',39999),
(488,40000,88,'400',3,'899',89999),
(489,90000,88,'9000',4,'9999',99999),
(490,0,89,'0',1,'1',19999),
(491,20000,89,'20',2,'39',39999),
(492,40000,89,'400',3,'799',79999),
(493,80000,89,'8000',4,'9999',99999),
(494,0,90,'0',1,'2',29999),
(495,30000,90,'30',2,'49',49999),
(496,50000,90,'500',3,'799',79999),
(497,80000,90,'8000',4,'9999',99999),
(498,0,91,'00',2,'79',79999),
(499,80000,91,'800',3,'949',94999),
(500,95000,91,'9500',4,'9999',99999),
(501,0,92,'0',1,'4',49999),
(502,50000,92,'50',2,'79',79999),
(503,80000,92,'800',3,'899',89999),
(504,90000,92,'9000',4,'9999',99999),
(505,0,93,'0',1,'1',19999),
(506,20000,93,'20',2,'49',49999),
(507,50000,93,'500',3,'899',89999),
(508,90000,93,'9000',4,'9999',99999),
(509,0,94,'0',1,'0',9999),
(510,10000,94,'10',2,'39',39999),
(511,40000,94,'400',3,'899',89999),
(512,90000,94,'9000',4,'9999',99999),
(513,0,95,'00',2,'89',89999),
(514,90000,95,'900',3,'984',98499),
(515,98500,95,'9850',4,'9999',99999),
(516,0,96,'00',2,'29',29999),
(517,30000,96,'300',3,'399',39999),
(518,40000,96,'4000',4,'9999',99999),
(519,0,97,'0000',4,'0999',9999),
(520,10000,97,'100',3,'499',49999),
(521,50000,97,'5000',4,'5999',59999),
(522,60000,97,'60',2,'69',69999),
(523,70000,97,'700',3,'799',79999),
(524,80000,97,'80',2,'89',89999),
(525,90000,97,'900',3,'999',99999),
(526,0,98,'00',2,'00',999),
(527,1000,98,'010',3,'079',7999),
(528,8000,98,'08',2,'39',39999),
(529,40000,98,'400',3,'569',56999),
(530,57000,98,'57',2,'57',57999),
(531,58000,98,'580',3,'849',84999),
(532,85000,98,'8500',4,'9999',99999),
(533,0,99,'0',1,'1',19999),
(534,20000,99,'20',2,'39',39999),
(535,40000,99,'400',3,'899',89999),
(536,90000,99,'9000',4,'9999',99999),
(537,0,100,'0',1,'1',19999),
(538,20000,100,'20',2,'79',79999),
(539,80000,100,'800',3,'999',99999),
(540,0,101,'00',2,'39',39999),
(541,40000,101,'400',3,'849',84999),
(542,85000,101,'8500',4,'9999',99999),
(543,0,102,'0',1,'0',9999),
(544,10000,102,'10',2,'39',39999),
(545,40000,102,'400',3,'899',89999),
(546,90000,102,'9000',4,'9999',99999),
(547,0,103,'00',2,'29',29999),
(548,30000,103,'300',3,'849',84999),
(549,85000,103,'8500',4,'9999',99999),
(550,0,104,'00',2,'39',39999),
(551,40000,104,'400',3,'849',84999),
(552,85000,104,'8500',4,'9999',99999),
(553,0,105,'0',1,'1',19999),
(554,20000,105,'20',2,'39',39999),
(555,40000,105,'400',3,'799',79999),
(556,80000,105,'8000',4,'9999',99999),
(557,0,106,'0',1,'0',9999),
(558,10000,106,'10',2,'39',39999),
(559,40000,106,'400',3,'599',59999),
(560,60000,106,'60',2,'89',89999),
(561,90000,106,'9000',4,'9999',99999),
(562,0,107,'0',1,'1',19999),
(563,20000,107,'20',2,'39',39999),
(564,40000,107,'400',3,'799',79999),
(565,80000,107,'8000',4,'9999',99999),
(566,0,108,'00',2,'39',39999),
(567,40000,108,'400',3,'929',92999),
(568,93000,108,'9300',4,'9999',99999),
(569,0,109,'0',1,'0',9999),
(570,10000,109,'10',2,'39',39999),
(571,40000,109,'400',3,'899',89999),
(572,90000,109,'9000',4,'9999',99999),
(573,0,110,'00',2,'39',39999),
(574,40000,110,'400',3,'699',69999),
(575,70000,110,'70',2,'84',84999),
(576,85000,110,'8500',4,'8799',87999),
(577,88000,110,'88',2,'99',99999),
(578,0,111,'0',1,'0',9999),
(579,10000,111,'10',2,'18',18999),
(580,19000,111,'1900',4,'1999',19999),
(581,20000,111,'20',2,'49',49999),
(582,50000,111,'500',3,'899',89999),
(583,90000,111,'9000',4,'9999',99999),
(584,0,112,'0',1,'1',19999),
(585,20000,112,'20',2,'79',79999),
(586,80000,112,'800',3,'949',94999),
(587,95000,112,'9500',4,'9999',99999),
(588,0,113,'00',2,'59',59999),
(589,60000,113,'600',3,'899',89999),
(590,90000,113,'9000',4,'9999',99999),
(591,0,114,'0',1,'2',29999),
(592,30000,114,'30',2,'69',69999),
(593,70000,114,'700',3,'949',94999),
(594,95000,114,'9500',4,'9999',99999),
(595,0,115,'00',2,'54',54999),
(596,55000,115,'5500',4,'5599',55999),
(597,56000,115,'56',2,'59',59999),
(598,60000,115,'600',3,'849',84999),
(599,85000,115,'8500',4,'9999',99999),
(600,0,116,'0',1,'2',29999),
(601,30000,116,'30',2,'54',54999),
(602,55000,116,'550',3,'734',73499),
(603,73500,116,'7350',4,'7499',74999),
(604,75000,116,'7500',4,'9999',99999),
(605,0,117,'0',1,'6',69999),
(606,70000,117,'70',2,'94',94999),
(607,95000,117,'950',3,'999',99999),
(608,0,118,'00',2,'39',39999),
(609,40000,118,'400',3,'899',89999),
(610,90000,118,'9000',4,'9999',99999),
(611,0,119,'000',3,'149',14999),
(612,15000,119,'1500',4,'1999',19999),
(613,20000,119,'20',2,'69',69999),
(614,70000,119,'7000',4,'7499',74999),
(615,75000,119,'750',3,'959',95999),
(616,96000,119,'9600',4,'9999',99999),
(617,0,120,'00',2,'39',39999),
(618,40000,120,'400',3,'899',89999),
(619,90000,120,'9000',4,'9999',99999),
(620,0,121,'00',2,'49',49999),
(621,50000,121,'500',3,'939',93999),
(622,94000,121,'9400',4,'9999',99999),
(623,0,122,'00',2,'39',39999),
(624,40000,122,'400',3,'899',89999),
(625,90000,122,'9000',4,'9999',99999),
(626,0,123,'0',1,'5',59999),
(627,60000,123,'60',2,'89',89999),
(628,90000,123,'900',3,'989',98999),
(629,99000,123,'9900',4,'9999',99999),
(630,0,124,'00',2,'09',9999),
(631,10000,124,'1',1,'1',19999),
(632,20000,124,'200',3,'249',24999),
(633,25000,124,'2500',4,'2999',29999),
(634,30000,124,'30',2,'59',59999),
(635,60000,124,'600',3,'899',89999),
(636,90000,124,'9000',4,'9999',99999),
(637,0,125,'00',2,'05',5999),
(638,6000,125,'060',3,'089',8999),
(639,9000,125,'0900',4,'0999',9999),
(640,10000,125,'10',2,'69',69999),
(641,70000,125,'700',3,'969',96999),
(642,97000,125,'9700',4,'9999',99999),
(643,0,126,'0',1,'2',29999),
(644,30000,126,'30',2,'54',54999),
(645,55000,126,'550',3,'749',74999),
(646,75000,126,'7500',4,'9499',94999),
(647,95000,126,'95',2,'99',99999),
(648,0,127,'0',1,'0',9999),
(649,10000,127,'100',3,'399',39999),
(650,40000,127,'4000',4,'4499',44999),
(651,45000,127,'45',2,'89',89999),
(652,90000,127,'900',3,'949',94999),
(653,95000,127,'9500',4,'9999',99999),
(654,0,128,'0',1,'5',59999),
(655,60000,128,'60',2,'89',89999),
(656,90000,128,'900',3,'989',98999),
(657,99000,128,'9900',4,'9999',99999),
(658,0,129,'00',2,'89',89999),
(659,90000,129,'900',3,'989',98999),
(660,99000,129,'9900',4,'9999',99999),
(661,0,130,'00',2,'29',29999),
(662,30000,130,'300',3,'399',39999),
(663,40000,130,'40',2,'94',94999),
(664,95000,130,'950',3,'989',98999),
(665,99000,130,'9900',4,'9999',99999),
(666,0,131,'0',1,'4',49999),
(667,50000,131,'50',2,'64',64999),
(668,65000,131,'650',3,'659',65999),
(669,66000,131,'66',2,'75',75999),
(670,76000,131,'760',3,'899',89999),
(671,90000,131,'9000',4,'9999',99999),
(672,0,132,'0',1,'3',39999),
(673,40000,132,'40',2,'89',89999),
(674,90000,132,'900',3,'989',98999),
(675,99000,132,'9900',4,'9999',99999),
(676,0,133,'00',2,'09',9999),
(677,10000,133,'100',3,'159',15999),
(678,16000,133,'1600',4,'1999',19999),
(679,20000,133,'20',2,'79',79999),
(680,80000,133,'800',3,'949',94999),
(681,95000,133,'9500',4,'9999',99999),
(682,0,134,'00',2,'79',79999),
(683,80000,134,'800',3,'989',98999),
(684,99000,134,'9900',4,'9999',99999),
(685,80000,135,'80',2,'94',94999),
(686,95000,135,'950',3,'989',98999),
(687,99000,135,'9900',4,'9999',99999),
(688,0,136,'00',2,'49',49999),
(689,50000,136,'500',3,'899',89999),
(690,90000,136,'9000',4,'9999',99999),
(691,0,137,'0',1,'4',49999),
(692,50000,137,'50',2,'79',79999),
(693,80000,137,'800',3,'899',89999),
(694,90000,137,'9000',4,'9999',99999),
(695,0,138,'00',2,'39',39999),
(696,40000,138,'400',3,'899',89999),
(697,90000,138,'9000',4,'9399',93999),
(698,94000,138,'940',3,'969',96999),
(699,97000,138,'97',2,'99',99999),
(700,0,139,'00',2,'39',39999),
(701,40000,139,'400',3,'879',87999),
(702,88000,139,'8800',4,'9999',99999),
(703,0,140,'0',1,'2',29999),
(704,30000,140,'30',2,'54',54999),
(705,55000,140,'550',3,'749',74999),
(706,75000,140,'7500',4,'9999',99999),
(707,0,141,'0',1,'0',9999),
(708,10000,141,'100',3,'199',19999),
(709,20000,141,'2000',4,'2999',29999),
(710,30000,141,'30',2,'59',59999),
(711,60000,141,'600',3,'949',94999),
(712,95000,141,'9500',4,'9999',99999),
(713,0,142,'00',2,'49',49999),
(714,50000,142,'500',3,'799',79999),
(715,80000,142,'80',2,'99',99999),
(716,0,144,'0',1,'1',19999),
(717,20000,144,'20',2,'89',89999),
(718,90000,144,'900',3,'999',99999),
(719,0,145,'0',1,'5',59999),
(720,60000,145,'60',2,'89',89999),
(721,90000,145,'900',3,'999',99999),
(722,0,146,'0',1,'3',39999),
(723,40000,146,'40',2,'79',79999),
(724,80000,146,'800',3,'999',99999),
(725,0,147,'0',1,'2',29999),
(726,30000,147,'30',2,'59',59999),
(727,60000,147,'600',3,'699',69999),
(728,70000,147,'70',2,'89',89999),
(729,90000,147,'90',2,'94',94999),
(730,95000,147,'950',3,'999',99999),
(731,0,148,'0',1,'0',9999),
(732,10000,148,'10',2,'89',89999),
(733,90000,148,'900',3,'999',99999),
(734,0,149,'0',1,'3',39999),
(735,40000,149,'40',2,'94',94999),
(736,95000,149,'950',3,'999',99999),
(737,0,150,'0',1,'2',29999),
(738,30000,150,'30',2,'89',89999),
(739,90000,150,'900',3,'999',99999),
(740,0,151,'00',2,'59',59999),
(741,60000,151,'600',3,'999',99999),
(742,0,152,'0',1,'3',39999),
(743,40000,152,'400',3,'599',59999),
(744,60000,152,'60',2,'89',89999),
(745,90000,152,'900',3,'999',99999),
(746,0,153,'0',1,'2',29999),
(747,30000,153,'30',2,'35',35999),
(748,60000,153,'600',3,'604',60499),
(749,0,154,'0',1,'4',49999),
(750,50000,154,'50',2,'89',89999),
(751,90000,154,'900',3,'999',99999),
(752,0,155,'0',1,'4',49999),
(753,50000,155,'50',2,'79',79999),
(754,80000,155,'800',3,'999',99999),
(755,0,156,'0',1,'2',29999),
(756,30000,156,'30',2,'69',69999),
(757,70000,156,'700',3,'999',99999),
(758,0,157,'0',1,'2',29999),
(759,30000,157,'30',2,'89',89999),
(760,90000,157,'900',3,'999',99999),
(761,0,158,'0',1,'3',39999),
(762,40000,158,'40',2,'79',79999),
(763,80000,158,'800',3,'999',99999),
(764,0,159,'0',1,'2',29999),
(765,30000,159,'300',3,'399',39999),
(766,40000,159,'40',2,'69',69999),
(767,90000,159,'900',3,'999',99999),
(768,0,160,'0',1,'4',49999),
(769,50000,160,'50',2,'89',89999),
(770,90000,160,'900',3,'999',99999),
(771,0,161,'0',1,'1',19999),
(772,20000,161,'20',2,'69',69999),
(773,70000,161,'700',3,'799',79999),
(774,80000,161,'8',1,'8',89999),
(775,90000,161,'90',2,'99',99999),
(776,0,162,'0',1,'3',39999),
(777,40000,162,'40',2,'69',69999),
(778,70000,162,'700',3,'999',99999),
(779,0,163,'0',1,'1',19999),
(780,20000,163,'20',2,'79',79999),
(781,80000,163,'800',3,'999',99999),
(782,0,164,'0',1,'1',19999),
(783,20000,164,'20',2,'79',79999),
(784,80000,164,'800',3,'999',99999),
(785,0,165,'0',1,'3',39999),
(786,40000,165,'40',2,'79',79999),
(787,80000,165,'800',3,'999',99999),
(788,0,166,'0',1,'0',9999),
(789,10000,166,'10',2,'59',59999),
(790,60000,166,'600',3,'999',99999),
(791,0,167,'0',1,'2',29999),
(792,30000,167,'30',2,'59',59999),
(793,60000,167,'600',3,'999',99999),
(794,0,168,'0',1,'0',9999),
(795,10000,168,'10',2,'79',79999),
(796,80000,168,'800',3,'999',99999),
(797,0,169,'0',1,'4',49999),
(798,50000,169,'50',2,'79',79999),
(799,80000,169,'800',3,'999',99999),
(800,0,170,'0',1,'4',49999),
(801,50000,170,'50',2,'79',79999),
(802,80000,170,'800',3,'999',99999),
(803,0,171,'0',1,'4',49999),
(804,50000,171,'50',2,'79',79999),
(805,80000,171,'800',3,'999',99999),
(806,0,172,'0',1,'0',9999),
(807,10000,172,'10',2,'59',59999),
(808,60000,172,'600',3,'699',69999),
(809,70000,172,'7',1,'7',79999),
(810,80000,172,'80',2,'99',99999),
(811,0,173,'0',1,'2',29999),
(812,30000,173,'30',2,'59',59999),
(813,60000,173,'600',3,'999',99999),
(814,0,174,'0',1,'1',19999),
(815,20000,174,'20',2,'79',79999),
(816,80000,174,'800',3,'999',99999),
(817,0,175,'0',1,'2',29999),
(818,30000,175,'30',2,'59',59999),
(819,60000,175,'600',3,'699',69999),
(820,70000,175,'7',1,'8',89999),
(821,90000,175,'90',2,'99',99999),
(822,0,176,'0',1,'0',9999),
(823,10000,176,'10',2,'59',59999),
(824,60000,176,'600',3,'999',99999),
(825,0,177,'0',1,'1',19999),
(826,20000,177,'20',2,'59',59999),
(827,60000,177,'600',3,'999',99999),
(828,0,178,'0',1,'1',19999),
(829,20000,178,'20',2,'59',59999),
(830,60000,178,'600',3,'899',89999),
(831,90000,178,'90',2,'99',99999),
(832,0,179,'0',1,'5',59999),
(833,60000,179,'60',2,'89',89999),
(834,90000,179,'900',3,'999',99999),
(835,0,180,'0',1,'0',9999),
(836,10000,180,'10',2,'69',69999),
(837,70000,180,'700',3,'999',99999),
(838,0,181,'0',1,'2',29999),
(839,30000,181,'30',2,'79',79999),
(840,80000,181,'800',3,'999',99999),
(841,0,182,'0',1,'4',49999),
(842,50000,182,'50',2,'79',79999),
(843,80000,182,'800',3,'999',99999),
(844,0,183,'0',1,'2',29999),
(845,30000,183,'30',2,'59',59999),
(846,60000,183,'600',3,'999',99999),
(847,0,184,'0',1,'4',49999),
(848,50000,184,'50',2,'79',79999),
(849,80000,184,'800',3,'999',99999),
(850,0,185,'0',1,'5',59999),
(851,60000,185,'60',2,'89',89999),
(852,90000,185,'900',3,'999',99999),
(853,0,186,'0',1,'2',29999),
(854,30000,186,'30',2,'59',59999),
(855,60000,186,'600',3,'999',99999),
(856,0,187,'0',1,'2',29999),
(857,30000,187,'30',2,'69',69999),
(858,70000,187,'700',3,'999',99999),
(859,0,188,'0',1,'4',49999),
(860,50000,188,'50',2,'79',79999),
(861,80000,188,'800',3,'999',99999),
(862,0,189,'0',1,'1',19999),
(863,20000,189,'20',2,'89',89999),
(864,90000,189,'900',3,'999',99999),
(865,0,190,'0',1,'4',49999),
(866,50000,190,'50',2,'79',79999),
(867,80000,190,'800',3,'999',99999),
(868,0,192,'0',1,'4',49999),
(869,50000,192,'50',2,'79',79999),
(870,80000,192,'800',3,'999',99999),
(871,0,193,'0',1,'2',29999),
(872,30000,193,'30',2,'79',79999),
(873,80000,193,'800',3,'939',93999),
(874,94000,193,'94',2,'99',99999),
(875,0,194,'0',1,'2',29999),
(876,30000,194,'30',2,'69',69999),
(877,70000,194,'700',3,'999',99999),
(878,0,195,'0',1,'1',19999),
(879,20000,195,'20',2,'59',59999),
(880,60000,195,'600',3,'799',79999),
(881,80000,195,'80',2,'89',89999),
(882,90000,195,'90',2,'99',99999),
(883,0,196,'00',2,'59',59999),
(884,60000,196,'600',3,'859',85999),
(885,86000,196,'86',2,'99',99999),
(886,0,197,'0',1,'1',19999),
(887,20000,197,'20',2,'79',79999),
(888,80000,197,'800',3,'999',99999),
(889,0,198,'0',1,'4',49999),
(890,50000,198,'50',2,'94',94999),
(891,95000,198,'950',3,'999',99999),
(892,0,199,'0',1,'2',29999),
(893,30000,199,'30',2,'59',59999),
(894,60000,199,'600',3,'999',99999),
(895,0,200,'0',1,'0',9999),
(896,10000,200,'10',2,'94',94999),
(897,95000,200,'950',3,'999',99999),
(898,0,201,'0',1,'3',39999),
(899,40000,201,'40',2,'89',89999),
(900,90000,201,'900',3,'999',99999),
(901,0,202,'0',1,'4',49999),
(902,50000,202,'50',2,'79',79999),
(903,80000,202,'800',3,'999',99999),
(904,0,203,'00',2,'49',49999),
(905,50000,203,'500',3,'999',99999),
(906,0,204,'0',1,'1',19999),
(907,20000,204,'20',2,'79',79999),
(908,80000,204,'800',3,'999',99999),
(909,0,205,'0',1,'3',39999),
(910,40000,205,'40',2,'79',79999),
(911,80000,205,'800',3,'999',99999),
(912,0,206,'0',1,'2',29999),
(913,30000,206,'30',2,'69',69999),
(914,70000,206,'700',3,'799',79999),
(915,0,207,'0',1,'1',19999),
(916,20000,207,'20',2,'59',59999),
(917,60000,207,'600',3,'899',89999),
(918,0,208,'0',1,'3',39999),
(919,40000,208,'400',3,'599',59999),
(920,60000,208,'60',2,'89',89999),
(921,90000,208,'900',3,'999',99999),
(922,0,209,'00',2,'19',19999),
(923,20000,209,'200',3,'699',69999),
(924,70000,209,'7000',4,'8999',89999),
(925,90000,209,'90000',5,'97599',97599),
(926,97600,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL DEFAULT 0,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT 0,
  `objectattribute_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT 0,
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext DEFAULT NULL,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezm_block__node_id` (`node_id`),
  KEY `ezm_block__is_removed` (`is_removed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT 0,
  `ts_publication` int(11) DEFAULT 0,
  `ts_visible` int(10) unsigned DEFAULT 0,
  `ts_hidden` int(10) unsigned DEFAULT 0,
  `rotation_until` int(10) unsigned DEFAULT 0,
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT 0,
  `is_loop` int(11) DEFAULT 0,
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext DEFAULT NULL,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `is_sent` int(11) NOT NULL DEFAULT 0,
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) DEFAULT NULL,
  `module_data` longtext DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_attr_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_attr_version` int(11) NOT NULL DEFAULT 0,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT 0,
  `value` decimal(15,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT 0,
  `is_main` int(11) NOT NULL DEFAULT 0,
  `op_code` int(11) NOT NULL DEFAULT 0,
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_parent_node` (`parent_node`),
  KEY `eznode_assignment_co_version` (`contentobject_version`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES
(4,8,2,0,1,2,5,'','0',1,1,0,0),
(5,42,1,0,1,2,5,'','0',9,1,0,0),
(6,10,2,-1,1,2,44,'','0',9,1,0,0),
(7,4,1,0,1,2,1,'','0',1,1,0,0),
(8,12,1,0,1,2,5,'','0',1,1,0,0),
(9,13,1,0,1,2,5,'','0',1,1,0,0),
(11,41,1,0,1,2,1,'','0',1,1,0,0),
(12,11,1,0,1,2,5,'','0',1,1,0,0),
(16,45,1,-1,1,2,1,'','0',9,1,0,0),
(27,49,1,0,1,2,43,'','0',9,1,0,0),
(28,50,1,0,1,2,43,'','0',9,1,0,0),
(29,51,1,0,1,2,43,'','0',9,1,0,0),
(30,52,1,0,1,2,48,'','0',1,1,0,0),
(34,56,1,0,1,2,1,'','0',2,0,0,0),
(38,14,3,-1,1,2,13,'','0',1,1,0,0),
(39,54,2,-1,1,2,58,'','0',1,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotification`
--

DROP TABLE IF EXISTS `eznotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `is_pending` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(128) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eznotification_owner_is_pending` (`owner_id`,`is_pending`),
  KEY `eznotification_owner` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotification`
--

LOCK TABLES `eznotification` WRITE;
/*!40000 ALTER TABLE `eznotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `handler` varchar(255) NOT NULL DEFAULT '',
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `send_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_int1` int(11) NOT NULL DEFAULT 0,
  `data_int2` int(11) NOT NULL DEFAULT 0,
  `data_int3` int(11) NOT NULL DEFAULT 0,
  `data_int4` int(11) NOT NULL DEFAULT 0,
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  `main` int(11) NOT NULL DEFAULT 0,
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT 0,
  `data_text_1` longtext DEFAULT NULL,
  `data_text_2` longtext DEFAULT NULL,
  `email` varchar(150) DEFAULT '',
  `ignore_vat` int(11) NOT NULL DEFAULT 0,
  `is_archived` int(11) NOT NULL DEFAULT 0,
  `is_temporary` int(11) NOT NULL DEFAULT 1,
  `order_nr` int(11) NOT NULL DEFAULT 0,
  `productcollection_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) DEFAULT 0,
  `status_modified` int(11) DEFAULT 0,
  `status_modifier_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezorder_is_tmp` (`is_temporary`),
  KEY `ezorder_is_archived` (`is_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `is_vat_inc` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezorder_item_type` (`type`),
  KEY `ezorder_item_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezorder_status_name` (`name`(191)),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES
(1,1,'Pending',1),
(2,1,'Processing',2),
(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`),
  KEY `ezorder_status_history_mod` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES
(1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `workflowprocess_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `intro_text` longtext DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_created` (`created`),
  KEY `ezpending_actions_action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_role_id` (`role_id`),
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES
(317,'*','content',0,3),
(319,'login','user',0,3),
(328,'read','content',0,1),
(331,'login','user',0,1),
(332,'*','*',0,2),
(333,'read','content',0,4),
(334,'view_embed','content',0,1),
(340,'*','url',0,3);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES
(251,'Section',328),
(252,'Section',329),
(253,'SiteAccess',331),
(254,'Class',333),
(255,'Owner',333),
(256,'Class',334);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`),
  KEY `ezpolicy_limitation_value_val` (`value`(191))
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES
(477,251,'1'),
(478,252,'1'),
(479,253,'1766001124'),
(480,254,'4'),
(481,255,'1'),
(482,256,'5'),
(483,256,'12');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`),
  KEY `ezpreferences_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT 0,
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) DEFAULT NULL,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `updated` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`(191),`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT 0,
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `discount` double DEFAULT NULL,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` double DEFAULT 0,
  `productcollection_id` int(11) NOT NULL DEFAULT 0,
  `vat_value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT 0,
  `created` int(11) DEFAULT NULL,
  `finished` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES
(1,0,'Anonymous','',0),
(2,0,'Administrator','0',0),
(3,0,'Editor','',0),
(4,0,'Member','',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT 1,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT 0,
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `subnodes` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) NOT NULL DEFAULT '',
  `last_report_timestamp` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT 0,
  `progress` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `frequency` double NOT NULL DEFAULT 0,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT 0,
  `next_word_id` int(11) NOT NULL DEFAULT 0,
  `placement` int(11) NOT NULL DEFAULT 0,
  `prev_word_id` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `word_id` int(11) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`(191)),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_word` (`word_id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`)
) ENGINE=InnoDB AUTO_INCREMENT=4880 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES
(4699,4,1,1,0,'name',0,970,0,0,1448889046,1,969,3),
(4700,4,1,1,0,'name',0,971,1,969,1448889046,1,970,3),
(4701,4,1,1,0,'name',0,972,2,970,1448889046,1,971,3),
(4702,4,1,1,0,'name',0,973,3,971,1448889046,1,972,3),
(4703,119,1,1,0,'short_description',0,974,4,972,1448889046,1,973,3),
(4704,119,1,1,0,'short_description',0,975,5,973,1448889046,1,974,3),
(4705,119,1,1,0,'short_description',0,976,6,974,1448889046,1,975,3),
(4706,119,1,1,0,'short_description',0,977,7,975,1448889046,1,976,3),
(4707,119,1,1,0,'short_description',0,978,8,976,1448889046,1,977,3),
(4708,119,1,1,0,'short_description',0,979,9,977,1448889046,1,978,3),
(4709,119,1,1,0,'short_description',0,971,10,978,1448889046,1,979,3),
(4710,119,1,1,0,'short_description',0,972,11,979,1448889046,1,971,3),
(4711,119,1,1,0,'short_description',0,980,12,971,1448889046,1,972,3),
(4712,119,1,1,0,'short_description',0,981,13,972,1448889046,1,980,3),
(4713,119,1,1,0,'short_description',0,982,14,980,1448889046,1,981,3),
(4714,119,1,1,0,'short_description',0,983,15,981,1448889046,1,982,3),
(4715,119,1,1,0,'short_description',0,984,16,982,1448889046,1,983,3),
(4716,119,1,1,0,'short_description',0,985,17,983,1448889046,1,984,3),
(4717,119,1,1,0,'short_description',0,975,18,984,1448889046,1,985,3),
(4718,119,1,1,0,'short_description',0,972,19,985,1448889046,1,975,3),
(4719,119,1,1,0,'short_description',0,986,20,975,1448889046,1,972,3),
(4720,119,1,1,0,'short_description',0,987,21,972,1448889046,1,986,3),
(4721,119,1,1,0,'short_description',0,988,22,986,1448889046,1,987,3),
(4722,119,1,1,0,'short_description',0,970,23,987,1448889046,1,988,3),
(4723,119,1,1,0,'short_description',0,989,24,988,1448889046,1,970,3),
(4724,119,1,1,0,'short_description',0,990,25,970,1448889046,1,989,3),
(4725,119,1,1,0,'short_description',0,991,26,989,1448889046,1,990,3),
(4726,119,1,1,0,'short_description',0,992,27,990,1448889046,1,991,3),
(4727,119,1,1,0,'short_description',0,993,28,991,1448889046,1,992,3),
(4728,119,1,1,0,'short_description',0,970,29,992,1448889046,1,993,3),
(4729,119,1,1,0,'short_description',0,989,30,993,1448889046,1,970,3),
(4730,119,1,1,0,'short_description',0,994,31,970,1448889046,1,989,3),
(4731,119,1,1,0,'short_description',0,995,32,989,1448889046,1,994,3),
(4732,119,1,1,0,'short_description',0,996,33,994,1448889046,1,995,3),
(4733,119,1,1,0,'short_description',0,997,34,995,1448889046,1,996,3),
(4734,119,1,1,0,'short_description',0,998,35,996,1448889046,1,997,3),
(4735,119,1,1,0,'short_description',0,970,36,997,1448889046,1,998,3),
(4736,119,1,1,0,'short_description',0,999,37,998,1448889046,1,970,3),
(4737,119,1,1,0,'short_description',0,1000,38,970,1448889046,1,999,3),
(4738,119,1,1,0,'short_description',0,1001,39,999,1448889046,1,1000,3),
(4739,119,1,1,0,'short_description',0,1002,40,1000,1448889046,1,1001,3),
(4740,119,1,1,0,'short_description',0,1003,41,1001,1448889046,1,1002,3),
(4741,119,1,1,0,'short_description',0,1004,42,1002,1448889046,1,1003,3),
(4742,119,1,1,0,'short_description',0,1005,43,1003,1448889046,1,1004,3),
(4743,119,1,1,0,'short_description',0,1006,44,1004,1448889046,1,1005,3),
(4744,119,1,1,0,'short_description',0,975,45,1005,1448889046,1,1006,3),
(4745,119,1,1,0,'short_description',0,1007,46,1006,1448889046,1,975,3),
(4746,119,1,1,0,'short_description',0,971,47,975,1448889046,1,1007,3),
(4747,155,1,1,0,'short_name',0,972,48,1007,1448889046,1,971,3),
(4748,155,1,1,0,'short_name',0,969,49,971,1448889046,1,972,3),
(4749,156,1,1,0,'description',0,970,50,972,1448889046,1,969,3),
(4750,156,1,1,0,'description',0,971,51,969,1448889046,1,970,3),
(4751,156,1,1,0,'description',0,972,52,970,1448889046,1,971,3),
(4752,156,1,1,0,'description',0,1008,53,971,1448889046,1,972,3),
(4753,156,1,1,0,'description',0,992,54,972,1448889046,1,1008,3),
(4754,156,1,1,0,'description',0,1009,55,1008,1448889046,1,992,3),
(4755,156,1,1,0,'description',0,1010,56,992,1448889046,1,1009,3),
(4756,156,1,1,0,'description',0,971,57,1009,1448889046,1,1010,3),
(4757,156,1,1,0,'description',0,972,58,1010,1448889046,1,971,3),
(4758,156,1,1,0,'description',0,971,59,971,1448889046,1,972,3),
(4759,156,1,1,0,'description',0,972,60,972,1448889046,1,971,3),
(4760,156,1,1,0,'description',0,974,61,971,1448889046,1,972,3),
(4761,156,1,1,0,'description',0,975,62,972,1448889046,1,974,3),
(4762,156,1,1,0,'description',0,1011,63,974,1448889046,1,975,3),
(4763,156,1,1,0,'description',0,1012,64,975,1448889046,1,1011,3),
(4764,156,1,1,0,'description',0,1013,65,1011,1448889046,1,1012,3),
(4765,156,1,1,0,'description',0,1014,66,1012,1448889046,1,1013,3),
(4766,156,1,1,0,'description',0,972,67,1013,1448889046,1,1014,3),
(4767,156,1,1,0,'description',0,994,68,1014,1448889046,1,972,3),
(4768,156,1,1,0,'description',0,971,69,972,1448889046,1,994,3),
(4769,156,1,1,0,'description',0,1015,70,994,1448889046,1,971,3),
(4770,156,1,1,0,'description',0,1016,71,971,1448889046,1,1015,3),
(4771,156,1,1,0,'description',0,975,72,1015,1448889046,1,1016,3),
(4772,156,1,1,0,'description',0,971,73,1016,1448889046,1,975,3),
(4773,156,1,1,0,'description',0,1017,74,975,1448889046,1,971,3),
(4774,156,1,1,0,'description',0,1018,75,971,1448889046,1,1017,3),
(4775,156,1,1,0,'description',0,971,76,1017,1448889046,1,1018,3),
(4776,156,1,1,0,'description',0,1019,77,1018,1448889046,1,971,3),
(4777,156,1,1,0,'description',0,1020,78,971,1448889046,1,1019,3),
(4778,156,1,1,0,'description',0,1021,79,1019,1448889046,1,1020,3),
(4779,156,1,1,0,'description',0,1022,80,1020,1448889046,1,1021,3),
(4780,156,1,1,0,'description',0,1023,81,1021,1448889046,1,1022,3),
(4781,156,1,1,0,'description',0,1024,82,1022,1448889046,1,1023,3),
(4782,156,1,1,0,'description',0,1025,83,1023,1448889046,1,1024,3),
(4783,156,1,1,0,'description',0,1006,84,1024,1448889046,1,1025,3),
(4784,156,1,1,0,'description',0,1026,85,1025,1448889046,1,1006,3),
(4785,156,1,1,0,'description',0,975,86,1006,1448889046,1,1026,3),
(4786,156,1,1,0,'description',0,1027,87,1026,1448889046,1,975,3),
(4787,156,1,1,0,'description',0,1028,88,975,1448889046,1,1027,3),
(4788,156,1,1,0,'description',0,1029,89,1027,1448889046,1,1028,3),
(4789,156,1,1,0,'description',0,1030,90,1028,1448889046,1,1029,3),
(4790,156,1,1,0,'description',0,996,91,1029,1448889046,1,1030,3),
(4791,156,1,1,0,'description',0,971,92,1030,1448889046,1,996,3),
(4792,156,1,1,0,'description',0,972,93,996,1448889046,1,971,3),
(4793,156,1,1,0,'description',0,1016,94,971,1448889046,1,972,3),
(4794,156,1,1,0,'description',0,971,95,972,1448889046,1,1016,3),
(4795,156,1,1,0,'description',0,1031,96,1016,1448889046,1,971,3),
(4796,156,1,1,0,'description',0,1032,97,971,1448889046,1,1031,3),
(4797,156,1,1,0,'description',0,1033,98,1031,1448889046,1,1032,3),
(4798,156,1,1,0,'description',0,996,99,1032,1448889046,1,1033,3),
(4799,156,1,1,0,'description',0,971,100,1033,1448889046,1,996,3),
(4800,156,1,1,0,'description',0,972,101,996,1448889046,1,971,3),
(4801,156,1,1,0,'description',0,971,102,971,1448889046,1,972,3),
(4802,156,1,1,0,'description',0,972,103,972,1448889046,1,971,3),
(4803,156,1,1,0,'description',0,1034,104,971,1448889046,1,972,3),
(4804,156,1,1,0,'description',0,1035,105,972,1448889046,1,1034,3),
(4805,156,1,1,0,'description',0,1036,106,1034,1448889046,1,1035,3),
(4806,156,1,1,0,'description',0,1037,107,1035,1448889046,1,1036,3),
(4807,156,1,1,0,'description',0,1038,108,1036,1448889046,1,1037,3),
(4808,156,1,1,0,'description',0,971,109,1037,1448889046,1,1038,3),
(4809,156,1,1,0,'description',0,972,110,1038,1448889046,1,971,3),
(4810,156,1,1,0,'description',0,1016,111,971,1448889046,1,972,3),
(4811,156,1,1,0,'description',0,971,112,972,1448889046,1,1016,3),
(4812,156,1,1,0,'description',0,1019,113,1016,1448889046,1,971,3),
(4813,156,1,1,0,'description',0,972,114,971,1448889046,1,1019,3),
(4814,156,1,1,0,'description',0,1039,115,1019,1448889046,1,972,3),
(4815,156,1,1,0,'description',0,970,116,972,1448889046,1,1039,3),
(4816,156,1,1,0,'description',0,975,117,1039,1448889046,1,970,3),
(4817,156,1,1,0,'description',0,1040,118,970,1448889046,1,975,3),
(4818,156,1,1,0,'description',0,1041,119,975,1448889046,1,1040,3),
(4819,156,1,1,0,'description',0,975,120,1040,1448889046,1,1041,3),
(4820,156,1,1,0,'description',0,1017,121,1041,1448889046,1,975,3),
(4821,156,1,1,0,'description',0,1042,122,975,1448889046,1,1017,3),
(4822,156,1,1,0,'description',0,1043,123,1017,1448889046,1,1042,3),
(4823,156,1,1,0,'description',0,1044,124,1042,1448889046,1,1043,3),
(4824,156,1,1,0,'description',0,970,125,1043,1448889046,1,1044,3),
(4825,156,1,1,0,'description',0,975,126,1044,1448889046,1,970,3),
(4826,156,1,1,0,'description',0,1045,127,970,1448889046,1,975,3),
(4827,156,1,1,0,'description',0,1046,128,975,1448889046,1,1045,3),
(4828,156,1,1,0,'description',0,970,129,1045,1448889046,1,1046,3),
(4829,156,1,1,0,'description',0,975,130,1046,1448889046,1,970,3),
(4830,156,1,1,0,'description',0,1017,131,970,1448889046,1,975,3),
(4831,156,1,1,0,'description',0,1047,132,975,1448889046,1,1017,3),
(4832,156,1,1,0,'description',0,1048,133,1017,1448889046,1,1047,3),
(4833,156,1,1,0,'description',0,1049,134,1047,1448889046,1,1048,3),
(4834,156,1,1,0,'description',0,1050,135,1048,1448889046,1,1049,3),
(4835,156,1,1,0,'description',0,975,136,1049,1448889046,1,1050,3),
(4836,156,1,1,0,'description',0,1017,137,1050,1448889046,1,975,3),
(4837,156,1,1,0,'description',0,1051,138,975,1448889046,1,1017,3),
(4838,156,1,1,0,'description',0,970,139,1017,1448889046,1,1051,3),
(4839,156,1,1,0,'description',0,1052,140,1051,1448889046,1,970,3),
(4840,156,1,1,0,'description',0,1053,141,970,1448889046,1,1052,3),
(4841,156,1,1,0,'description',0,1054,142,1052,1448889046,1,1053,3),
(4842,156,1,1,0,'description',0,1016,143,1053,1448889046,1,1054,3),
(4843,156,1,1,0,'description',0,1055,144,1054,1448889046,1,1016,3),
(4844,156,1,1,0,'description',0,1041,145,1016,1448889046,1,1055,3),
(4845,156,1,1,0,'description',0,975,146,1055,1448889046,1,1041,3),
(4846,156,1,1,0,'description',0,1056,147,1041,1448889046,1,975,3),
(4847,156,1,1,0,'description',0,1047,148,975,1448889046,1,1056,3),
(4848,156,1,1,0,'description',0,975,149,1056,1448889046,1,1047,3),
(4849,156,1,1,0,'description',0,971,150,1047,1448889046,1,975,3),
(4850,156,1,1,0,'description',0,1017,151,975,1448889046,1,971,3),
(4851,156,1,1,0,'description',0,1057,152,971,1448889046,1,1017,3),
(4852,156,1,1,0,'description',0,1058,153,1017,1448889046,1,1057,3),
(4853,156,1,1,0,'description',0,1059,154,1057,1448889046,1,1058,3),
(4854,156,1,1,0,'description',0,0,155,1058,1448889046,1,1059,3),
(4855,7,3,4,0,'description',0,1061,0,0,1033917596,2,1060,3),
(4856,7,3,4,0,'description',0,1062,1,1060,1033917596,2,1061,3),
(4857,6,3,4,0,'name',0,0,2,1061,1033917596,2,1062,3),
(4858,8,4,10,0,'first_name',0,1029,0,0,1033920665,2,1063,3),
(4859,9,4,10,0,'last_name',0,0,1,1063,1033920665,2,1029,3),
(4860,6,3,11,0,'name',0,1065,0,0,1033920746,2,1064,3),
(4861,6,3,11,0,'name',0,0,1,1064,1033920746,2,1065,3),
(4862,6,3,12,0,'name',0,1062,0,0,1033920775,2,1066,3),
(4863,6,3,12,0,'name',0,0,1,1066,1033920775,2,1062,3),
(4864,6,3,13,0,'name',0,0,0,0,1033920794,2,1067,3),
(4865,8,4,14,0,'first_name',0,1029,0,0,1033920830,2,1066,3),
(4866,9,4,14,0,'last_name',0,0,1,1066,1033920830,2,1029,3),
(4867,4,1,41,0,'name',0,0,0,0,1060695457,3,1068,3),
(4868,6,3,42,0,'name',0,1062,0,0,1072180330,2,1063,3),
(4869,6,3,42,0,'name',0,1029,1,1063,1072180330,2,1062,3),
(4870,7,3,42,0,'description',0,1061,2,1062,1072180330,2,1029,3),
(4871,7,3,42,0,'description',0,996,3,1029,1072180330,2,1061,3),
(4872,7,3,42,0,'description',0,975,4,1061,1072180330,2,996,3),
(4873,7,3,42,0,'description',0,1063,5,996,1072180330,2,975,3),
(4874,7,3,42,0,'description',0,1029,6,975,1072180330,2,1063,3),
(4875,7,3,42,0,'description',0,0,7,1063,1072180330,2,1029,3),
(4876,4,1,45,0,'name',0,0,0,0,1079684190,4,984,3),
(4877,4,1,49,0,'name',0,0,0,0,1080220197,3,1069,3),
(4878,4,1,50,0,'name',0,0,0,0,1080220220,3,1070,3),
(4879,4,1,51,0,'name',0,0,0,0,1080220233,3,1071,3);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT 0,
  `result_count` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`(191)),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT 0,
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_word_i` (`word`),
  KEY `ezsearch_word_obj_count` (`object_count`)
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES
(969,1,'welcome'),
(970,1,'to'),
(971,1,'ez'),
(972,1,'platform'),
(973,1,'this'),
(974,1,'is'),
(975,2,'the'),
(976,1,'clean'),
(977,1,'install'),
(978,1,'coming'),
(979,1,'with'),
(980,1,'it'),
(981,1,'s'),
(982,1,'a'),
(983,1,'barebone'),
(984,2,'setup'),
(985,1,'of'),
(986,1,'an'),
(987,1,'excellent'),
(988,1,'foundation'),
(989,1,'build'),
(990,1,'upon'),
(991,1,'if'),
(992,1,'you'),
(993,1,'want'),
(994,1,'from'),
(995,1,'scratch'),
(996,2,'for'),
(997,1,'more'),
(998,1,'ready'),
(999,1,'go'),
(1000,1,'base'),
(1001,1,'designs'),
(1002,1,'or'),
(1003,1,'demo'),
(1004,1,'sites'),
(1005,1,'please'),
(1006,1,'check'),
(1007,1,'documentation'),
(1008,1,'congratulations'),
(1009,1,'just'),
(1010,1,'installed'),
(1011,1,'new'),
(1012,1,'generation'),
(1013,1,'content'),
(1014,1,'management'),
(1015,1,'systems'),
(1016,1,'and'),
(1017,1,'community'),
(1018,1,'replacing'),
(1019,1,'publish'),
(1020,1,'our'),
(1021,1,'previous'),
(1022,1,'software'),
(1023,1,'need'),
(1024,1,'some'),
(1025,1,'guidance'),
(1026,1,'out'),
(1027,1,'following'),
(1028,1,'resources'),
(1029,4,'user'),
(1030,1,'manual'),
(1031,1,'studio'),
(1032,1,'technical'),
(1033,1,'doc'),
(1034,1,'developer'),
(1035,1,'tutorial'),
(1036,1,'comparison'),
(1037,1,'guide'),
(1038,1,'between'),
(1039,1,'contribute'),
(1040,1,'project'),
(1041,1,'join'),
(1042,1,'github'),
(1043,1,'repositories'),
(1044,1,'open'),
(1045,1,'public'),
(1046,1,'register'),
(1047,1,'on'),
(1048,1,'discuss'),
(1049,1,'ezplatform'),
(1050,1,'com'),
(1051,1,'site'),
(1052,1,'access'),
(1053,1,'forums'),
(1054,1,'tutorials'),
(1055,1,'blogs'),
(1056,1,'conversation'),
(1057,1,'slack'),
(1058,1,'good'),
(1059,1,'luck'),
(1060,1,'main'),
(1061,2,'group'),
(1062,3,'users'),
(1063,2,'anonymous'),
(1064,1,'guest'),
(1065,1,'accounts'),
(1066,2,'administrator'),
(1067,1,'editors'),
(1068,1,'media'),
(1069,1,'images'),
(1070,1,'files'),
(1071,1,'multimedia');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES
(1,'standard','','Standard','ezcontentnavigationpart'),
(2,'users','','Users','ezusernavigationpart'),
(3,'media','','Media','ezmedianavigationpart'),
(4,'setup','','Setup','ezsetupnavigationpart'),
(5,'design','','Design','ezvisualnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT 0,
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`session_key`),
  KEY `ezsession_user_id` (`user_id`),
  KEY `expiration_time` (`expiration_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES
('ezpublish-release','1'),
('ezpublish-version','6.4.0');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` double NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`),
  KEY `user_id_session_key` (`user_id`,`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `use_digest` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `node_id` int(11) NOT NULL DEFAULT 0,
  `requested` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT 0,
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `is_valid` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES
(23,1448832197,1,0,1448832197,'f76e41d421b2a72232264943026a6ee5','https://doc.ez.no/display/USER/'),
(24,1448832277,1,0,1505717756,'a00ab36edb35bb641cc027eb27410934','https://doc.ezplatform.com/en/latest/'),
(25,1448832412,1,0,1505717756,'03c4188f5fdcb679192e25a7dad09c2d','https://doc.ezplatform.com/en/latest/tutorials/platform_beginner/building_a_bicycle_route_tracker_in_ez_platform/'),
(26,1448832436,1,0,1505717756,'5af7e9599b5583ccd0103a400ddacfdd','https://doc.ez.no/display/MAIN/Transitioning+from+eZ+Publish+to+eZ+Platform%3A+Feature+Comparison'),
(27,1448832661,1,0,1448832661,'f9bf96304c434139d0ff5773b6eee157','https://github.com/ezsystems'),
(28,1448832661,1,0,1510739262,'265d537bfba0e5ed4e85fbcd7f30ea84','https://discuss.ezplatform.com'),
(29,1448832661,1,0,1448832661,'7441963094866aa9d1cbb8a59cca541c','http://ez-community-on-slack.herokuapp.com/');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT 0,
  `url_id` int(11) NOT NULL DEFAULT 0,
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_url_id` (`url_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES
(104,9,23),
(104,9,24),
(104,9,25),
(104,9,26),
(104,9,27),
(104,9,28),
(104,9,29),
(104,9,23),
(104,9,24),
(104,9,25),
(104,9,26),
(104,9,27),
(104,9,28),
(104,9,29);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT 0,
  `is_imported` int(11) NOT NULL DEFAULT 0,
  `is_internal` int(11) NOT NULL DEFAULT 1,
  `is_wildcard` int(11) NOT NULL DEFAULT 0,
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_url` (`source_url`(191)),
  KEY `ezurlalias_desturl` (`destination_url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES
(12,'content/view/full/2',0,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),
(13,'content/view/full/5',0,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),
(15,'content/view/full/12',0,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),
(16,'content/view/full/13',0,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),
(17,'content/view/full/14',0,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),
(18,'content/view/full/15',0,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),
(20,'content/view/full/43',0,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),
(21,'content/view/full/44',0,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),
(22,'content/view/full/45',0,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),
(25,'content/view/full/48',0,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),
(28,'content/view/full/51',0,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),
(29,'content/view/full/52',0,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),
(30,'content/view/full/53',0,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `parent` int(11) NOT NULL DEFAULT 0,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL DEFAULT 0,
  `is_alias` int(11) NOT NULL DEFAULT 0,
  `is_original` int(11) NOT NULL DEFAULT 0,
  `lang_mask` bigint(20) NOT NULL DEFAULT 0,
  `link` int(11) NOT NULL DEFAULT 0,
  `text` longtext NOT NULL,
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES
(0,'475e97c0146bfb1c490339546d9e72ee','eznode:48','eznode',1,13,0,1,3,13,'Setup2'),
(0,'50e2736330de124f6edea9b008556fe6','nop:','nop',1,17,0,0,1,17,'media2'),
(0,'62933a2951ef01f4eafd9bdf4d3cd2f0','eznode:43','eznode',1,9,0,1,3,9,'Media'),
(0,'732cefcf28bf4547540609fb1a786a30','nop:','nop',1,21,0,0,1,21,'setup3'),
(0,'86425c35a33507d479f71ade53a669aa','nop:','nop',1,3,0,0,1,3,'users2'),
(0,'9bc65c2abec141778ffaa729489f3e87','eznode:5','eznode',1,2,0,1,3,2,'Users'),
(0,'d41d8cd98f00b204e9800998ecf8427e','eznode:2','eznode',1,1,0,1,3,1,''),
(2,'a147e136bfa717592f2bd70bd4b53b17','eznode:14','eznode',1,6,0,1,3,6,'Editors'),
(2,'c2803c3fa1b0b5423237b4e018cae755','eznode:44','eznode',1,10,0,1,3,10,'Anonymous-Users'),
(2,'e57843d836e3af8ab611fde9e2139b3a','eznode:12','eznode',1,4,0,1,3,4,'Guest-accounts'),
(2,'f89fad7f8a3abc8c09e1deb46a420007','eznode:13','eznode',1,5,0,1,3,5,'Administrator-users'),
(3,'505e93077a6dde9034ad97a14ab022b1','nop:','nop',1,11,0,0,1,11,'anonymous_users2'),
(3,'70bb992820e73638731aa8de79b3329e','eznode:12','eznode',1,26,0,0,1,4,'guest_accounts'),
(3,'a147e136bfa717592f2bd70bd4b53b17','eznode:14','eznode',1,29,0,0,1,6,'editors'),
(3,'a7da338c20bf65f9f789c87296379c2a','nop:','nop',1,7,0,0,1,7,'administrator_users2'),
(3,'aeb8609aa933b0899aa012c71139c58c','eznode:13','eznode',1,27,0,0,1,5,'administrator_users'),
(3,'e9e5ad0c05ee1a43715572e5cc545926','eznode:44','eznode',1,30,0,0,1,10,'anonymous_users'),
(5,'5a9d7b0ec93173ef4fedee023209cb61','eznode:15','eznode',1,8,0,1,3,8,'Administrator-User'),
(7,'a3cca2de936df1e2f805710399989971','eznode:15','eznode',1,28,0,0,0,8,'administrator_user'),
(9,'2e5bc8831f7ae6a29530e7f1bbf2de9c','eznode:53','eznode',1,20,0,1,3,20,'Multimedia'),
(9,'45b963397aa40d4a0063e0d85e4fe7a1','eznode:52','eznode',1,19,0,1,3,19,'Files'),
(9,'59b514174bffe4ae402b3d63aad79fe0','eznode:51','eznode',1,18,0,1,3,18,'Images'),
(10,'ccb62ebca03a31272430bc414bd5cd5b','eznode:45','eznode',1,12,0,1,3,12,'Anonymous-User'),
(11,'c593ec85293ecb0e02d50d4c5c6c20eb','eznode:45','eznode',1,31,0,0,1,12,'anonymous_user'),
(17,'2e5bc8831f7ae6a29530e7f1bbf2de9c','eznode:53','eznode',1,34,0,0,1,20,'multimedia'),
(17,'45b963397aa40d4a0063e0d85e4fe7a1','eznode:52','eznode',1,33,0,0,1,19,'files'),
(17,'59b514174bffe4ae402b3d63aad79fe0','eznode:51','eznode',1,32,0,0,1,18,'images');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_url` longtext NOT NULL,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(255) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT 1,
  `password_updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`),
  UNIQUE KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES
(10,'nospam@ez.no','anonymous','$2y$10$35gOSQs6JK4u4whyERaeUuVeQBi2TUBIZIfP7HEj7sfz.MxvTuOeC',7,NULL),
(14,'nospam@ez.no','admin','$2y$10$FDn9NPwzhq85cLLxfD5Wu.L3SL3Z/LNCvhkltJUV0wcJj7ciJg2oy',7,NULL);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_role_id` (`role_id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES
(28,11,'','',1),
(31,42,'','',1),
(32,13,'Subtree','/1/2/',3),
(33,13,'Subtree','/1/43/',3),
(34,12,'','',2),
(35,13,'','',4);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `is_enabled` int(11) NOT NULL DEFAULT 0,
  `max_login` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES
(10,1,1000),
(14,1,10);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `current_visit_timestamp` int(11) NOT NULL DEFAULT 0,
  `failed_login_attempts` int(11) NOT NULL DEFAULT 0,
  `last_visit_timestamp` int(11) NOT NULL DEFAULT 0,
  `login_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES
(14,1301057720,0,1301057720,0);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `vat_type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `vatrule_id` int(11) NOT NULL DEFAULT 0,
  `product_category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES
(1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `node_id` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT 0,
  `workflow_event_version` int(11) NOT NULL DEFAULT 0,
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `is_enabled` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_type` int(11) NOT NULL DEFAULT 0,
  `as_tree` int(11) NOT NULL DEFAULT 0,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext DEFAULT NULL,
  `description` varchar(50) NOT NULL DEFAULT '',
  `placement` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL DEFAULT 0,
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES
(1,1024392098,14,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `workflow_id` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `workflow_version` int(11) NOT NULL DEFAULT 0,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT 0,
  `content_version` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `event_position` int(11) NOT NULL DEFAULT 0,
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT 0,
  `last_event_id` int(11) NOT NULL DEFAULT 0,
  `last_event_position` int(11) NOT NULL DEFAULT 0,
  `last_event_status` int(11) NOT NULL DEFAULT 0,
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT 0,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `parameters` longtext DEFAULT NULL,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 20:02:26
