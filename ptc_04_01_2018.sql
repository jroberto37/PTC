CREATE DATABASE  IF NOT EXISTS `ptc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ptc`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ptc
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add profesor',7,'add_profesor'),(20,'Can change profesor',7,'change_profesor'),(21,'Can delete profesor',7,'delete_profesor'),(22,'Can add plaza',8,'add_plaza'),(23,'Can change plaza',8,'change_plaza'),(24,'Can delete plaza',8,'delete_plaza'),(25,'Can add materias',9,'add_materias'),(26,'Can change materias',9,'change_materias'),(27,'Can delete materias',9,'delete_materias'),(28,'Can add eval_ materia',10,'add_eval_materia'),(29,'Can change eval_ materia',10,'change_eval_materia'),(30,'Can delete eval_ materia',10,'delete_eval_materia'),(31,'Can add acedemia',11,'add_acedemia'),(32,'Can change acedemia',11,'change_acedemia'),(33,'Can delete acedemia',11,'delete_acedemia'),(34,'Can add departamento',12,'add_departamento'),(35,'Can change departamento',12,'change_departamento'),(36,'Can delete departamento',12,'delete_departamento'),(37,'Can add academia',11,'add_academia'),(38,'Can change academia',11,'change_academia'),(39,'Can delete academia',11,'delete_academia'),(40,'Can add curso',13,'add_curso'),(41,'Can change curso',13,'change_curso'),(42,'Can delete curso',13,'delete_curso'),(43,'Can add talleres',14,'add_talleres'),(44,'Can change talleres',14,'change_talleres'),(45,'Can delete talleres',14,'delete_talleres');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'ptc','academia'),(13,'ptc','curso'),(12,'ptc','departamento'),(10,'ptc','eval_materia'),(9,'ptc','materias'),(8,'ptc','plaza'),(7,'ptc','profesor'),(14,'ptc','talleres'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-11-27 00:51:03.724753'),(2,'auth','0001_initial','2017-11-27 00:51:15.276920'),(3,'admin','0001_initial','2017-11-27 00:51:17.658137'),(4,'admin','0002_logentry_remove_auto_add','2017-11-27 00:51:17.815713'),(5,'contenttypes','0002_remove_content_type_name','2017-11-27 00:51:19.134110'),(6,'auth','0002_alter_permission_name_max_length','2017-11-27 00:51:19.279360'),(7,'auth','0003_alter_user_email_max_length','2017-11-27 00:51:19.436105'),(8,'auth','0004_alter_user_username_opts','2017-11-27 00:51:19.497099'),(9,'auth','0005_alter_user_last_login_null','2017-11-27 00:51:20.253900'),(10,'auth','0006_require_contenttypes_0002','2017-11-27 00:51:20.356279'),(11,'auth','0007_alter_validators_add_error_messages','2017-11-27 00:51:20.470865'),(12,'auth','0008_alter_user_username_max_length','2017-11-27 00:51:21.083721'),(13,'sessions','0001_initial','2017-11-27 00:51:22.634479'),(14,'ptc','0001_initial','2017-11-28 05:02:01.968194'),(15,'ptc','0002_profesor_passw','2017-11-28 05:04:49.583706'),(16,'ptc','0003_plaza','2017-11-29 04:24:12.364493'),(17,'ptc','0004_materias','2017-12-01 02:33:11.870176'),(18,'ptc','0005_eval_materia','2017-12-01 04:35:46.648017'),(19,'ptc','0006_acedemia_departamento','2017-12-03 17:03:40.838586'),(20,'ptc','0007_auto_20171203_1723','2017-12-03 17:23:56.357259'),(21,'ptc','0008_curso','2017-12-03 18:54:58.395869'),(22,'ptc','0009_auto_20171203_1859','2017-12-03 18:59:55.553643'),(23,'ptc','0010_auto_20171203_2103','2017-12-03 21:03:58.511678'),(24,'ptc','0011_talleres','2017-12-04 05:03:13.689348');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('06wkp03fwbjw45b95m2vk31la3se35hk','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 04:24:42.882822'),('0mq0i6wmvg4c5i72q64ifldkjlibfkx7','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 22:23:30.630572'),('0oa2m4jmg9duolsp3wbn9nj826cfw8qx','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 16:26:29.698519'),('0rvo6unmuciu1g5dl30f1zld04y8zpif','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 04:07:01.019848'),('0tsalwp3dypshudmag9nbig8k8k3rdf5','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 04:06:14.121583'),('1pj41mqncsuosij4ff1u2w8qbbdtxqya','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:24:22.368392'),('1yc9u2qaoqnrrza074at7w8ukdy5df6x','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 05:21:07.579930'),('2mbpcdvp62n13urt3o5awtkk6c5t1m5j','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:23:43.646131'),('2mjvd8pp1b2rdb42bx6zdty5tpzoxuio','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 21:04:37.805459'),('4enmpqulod9eq3pbpg1nud5ybmdgm801','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 04:19:41.350498'),('4t4vw4g1kdyyuq2tmmq68pbgstvv2ir9','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 05:59:33.878258'),('5f348neqtiqnd4hqtdbyvdmzaky62jj2','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 16:38:45.011569'),('6l3m1t8v1e5yo51zl76e29lwvsvazf71','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 19:51:24.813236'),('6q18tu29svd7mxtm7vjwlnt0fw6r5054','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 03:52:26.206052'),('7ui3oyroqy3w4djbgb0b2nghshpu0tjm','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-28 05:19:47.613327'),('7xhosu9tqvtg8ccd4ztpj67bmph9p8f6','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 22:56:04.361312'),('865fzefknvwsptn1sic1xaxa7oppuul1','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:01:02.616185'),('8sccjwhlj7733zgvh032xfgfhzktgyxd','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 16:40:05.371096'),('8t2cp963w7jgwdl81y97valolsa63vep','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 00:07:38.492590'),('9sv4kuhle1yy60s4akr4ja7vf2teoqfq','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 01:32:01.783060'),('9zexekmjpzum0v4a4qvlh0um85e5g89b','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 03:27:24.365552'),('aadt9zzlphd6ob1fkr6yfigmlqfugju7','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 00:52:20.105675'),('atjla1l2q5ol03tol3k1grwiklqncs92','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 20:38:05.770151'),('b4bbol34u4l95y46lk5s789m53sgcyqi','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:22:40.231567'),('bj73hrxxleb5ix48tbkte5qgv4z23k9r','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 06:02:56.429344'),('bofephbsagwg96swan3462h2nfijhxlg','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:43:02.347799'),('cdrlk9vskw5e1du2exev9rv34zxlifsp','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 23:19:43.170134'),('cir24tlbfwqtd1wh0auy6qq9nke784jq','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 19:29:54.626083'),('cj8ij4pwhnfn6t2ggn5819n07tezda2r','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 05:16:29.042992'),('crfean7gbsdi2o2h525de78ie4l5oig6','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:32:51.301367'),('d5m34wuxa868jwgoizasnvnhke8znvof','MzNlOThkNDJmYjBmZGFmMGVhZmRmMDhmYjJmMjE3NzFkZmVjNzk3MDp7ImNvZGlnbyI6IjIwMzM0OTYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 23:24:20.286087'),('d933bzjz7shykuptn56hqsefr4gncgyt','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-29 03:17:10.871924'),('duy4lxvkqvbfmsfxsivyygjw9h0j325z','MzNlOThkNDJmYjBmZGFmMGVhZmRmMDhmYjJmMjE3NzFkZmVjNzk3MDp7ImNvZGlnbyI6IjIwMzM0OTYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:24:40.861860'),('e3twzi4vc4j9cah86fgtxrpi9c68ozli','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:17:11.726308'),('e657vq88wx3tfo1uynby6ui2q33wupdg','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-29 03:15:15.900195'),('e7l3ifu6vrmzufy5fmr62zqn0crm5hu4','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 01:42:29.470746'),('eqm3g94vl2je5tjtnj3f1n3t6100pkma','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 19:48:34.303039'),('ey0oixokmg8uv6fm9kvoe5r88jgu0gg8','MzNlOThkNDJmYjBmZGFmMGVhZmRmMDhmYjJmMjE3NzFkZmVjNzk3MDp7ImNvZGlnbyI6IjIwMzM0OTYiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 16:02:10.254908'),('f8m508qcwxfvaezqmlmyvv7nrra5wvpv','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 22:59:50.245603'),('f9ebwp981pntq94sccj8egbisz3v3rp9','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 23:03:12.562177'),('fqeoytkxahw5wh00frl6b249j9nnpwyq','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:25:20.817008'),('g5dd2jeeqroq3kdch80hf7nwnulxqwq3','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 23:27:07.663329'),('gfo153kc9l2le1852c9plqww3dxvalsj','MmRmZGZiZDQyMTczZmM4MTYwMTk0MjI5YWE1YzU2NjczMTc4MDM1Yzp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwMH0=','2017-11-27 04:32:19.364802'),('gk4hp7q4s78q4n367etaezuxyhk05pxx','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-27 04:33:28.124180'),('glu3auxy1yfpsutdi2xt4q133pd3dps3','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 15:38:02.505964'),('h6ukhd8evygzc6y44unfldzkxn9j8arq','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 20:25:19.651829'),('hyr7pskwripcahcqvak8pgorz5kmkxyp','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 01:10:11.184683'),('i4wx5ulfritnhrzwihokfyv401v5kcko','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:13:14.172894'),('ifaapc1hwqc9dd5ji728we180xr0y0yw','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 05:53:54.890639'),('iqfttxx4m92stk48b1m5kh2ekfrmlhje','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 23:55:01.421228'),('iud7xjiwa7w1lrq3agtkicnxiuyv04c2','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 02:26:24.496609'),('j8hr2h52in0goo3h4er3tfxxz6b436oe','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-28 05:20:32.902648'),('j9ww8tg7oxve253ykr93e4jdksjof8vu','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 03:41:14.811807'),('k7luwmk09qz2hicntzoezans7gixwaao','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 03:17:00.496719'),('k7yvs79su6tt1777676okf29gxiqk11y','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-28 05:17:46.265973'),('k9fqoscoro7fv2kg0oloco090sw4gmhr','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:14:55.465907'),('krz0kdyby6ooeioq6p9y09b4mtioi50f','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-28 05:19:12.713060'),('kvwhmil4y357fw1g7z5f5hqihhqhe8tv','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 22:44:11.121047'),('l5n93w0p4w3f1rm1dzuxv6d6pi0180tz','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 20:01:30.818338'),('lr0axga88ltk7wzcv35eiyo9nsrwedg0','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 05:03:46.752733'),('m77a2ni942gmeojsuimx00ag8qve37de','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 03:48:26.767184'),('m7ajz9i8wz8u4u8u4o591mnl22yod1t6','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:26:20.674738'),('mcf9tgui3h53enjzqsg58wff40vu86cd','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 17:49:44.262606'),('mu4vp5859zg986oytoetgh96mgkah83k','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 23:56:44.277826'),('nk8vmdfoi09svad2sdyga3skux2vfj8i','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 03:29:51.870195'),('nwb3iuug2jma4mfmnprk3fh3pkyohxsq','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:20:53.607526'),('nxxjf5t9tfviact88qx6vz3rgkwn9i1c','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 04:50:19.498737'),('o4ceelhatmv9ybylgvdzuuzgn3rx4sam','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 05:28:38.221034'),('ode82rby0ah8rxq3g65wuzjvv71flogo','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 20:15:09.635805'),('olt8sngttjiohze6qopccdwjhba3emys','NzM1ZmFlNjY2MjY5NWVjYjYwOGM5NTQ2ZGEyZjBlZWY5MDUzNTEzMjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2017-11-27 04:16:25.760065'),('otqlq3m7cai45kp3gpf7jcn9ppguurgm','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 05:10:41.387359'),('ou0enj2e8mq3pc1mqqhqisxjlppxhi1o','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 03:37:35.215030'),('ownysi07qo6znfeiq088uw4x6xgdunet','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 23:16:14.426995'),('pru9aa799v9evcrsvwvqkc0yrrjo97p7','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-28 04:45:29.602625'),('q0gnecp3mavr6f8mc56n3p7szn30fxl5','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 01:21:53.647824'),('q688y92d6huebjc36fvrqbvgq8vqc72g','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:14:03.739967'),('q9tc3h1es995cdsudn0pttsbflznzqrc','NDY4NjI4ODgzYjFhNTk2YTJhZGUyNmFkYjUzOWRmMjNmMTRjNDdhZTp7ImNvZGlnbyI6IjI3MzA2NDIifQ==','2017-12-11 03:54:30.246321'),('qszbrs635ptqyb0n1bk7dai5aotrl9so','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 17:35:37.434833'),('qt613drtpj306nsspkofdfeg31ok1i6u','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 15:49:48.975144'),('rdryq90tr4wv9ljvlboz586j4xczp86x','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 00:08:18.524686'),('sf7o8cf65zmwfsz8x9kznzxqel5bgw6o','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-29 03:14:34.227177'),('sfvxbj9bh1m83s9onxkasxy20eyam1mf','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 11:44:09.244276'),('sl88547mtasp55bh9p1lp2mr0zzvqqna','MmRmZGZiZDQyMTczZmM4MTYwMTk0MjI5YWE1YzU2NjczMTc4MDM1Yzp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwMH0=','2017-11-27 03:55:06.538473'),('szjqhbbifm5t63is44gljhocjyxqc7ra','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 03:06:38.879747'),('t37hmmxh3q6vbchh9a2swae4z0w8tt15','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 22:33:36.420061'),('tgokd4zn90kbgoqeoly110z563c7ow0n','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-29 05:00:25.429596'),('tigd1maub3ci1i6k4jerioknulynjgp4','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 16:15:22.316632'),('to946artx76zn8fcg24yrmx30eara73t','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 21:11:11.385315'),('u0rk7m7cduazyf5j0o6jytfj9jh8tq8v','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 00:59:29.779950'),('u18xdlro0z1fpf9h1o5oeq8l4s8zf5fj','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 05:40:37.857334'),('ut4cfcmjol5jwjwgr5ajgkxz6z2jylpr','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 05:37:16.321477'),('wa1xkzd14z5ri9wk5mhungoddq2kmdho','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 16:50:32.955553'),('wiw27328kjnn5wwr9rsmoxvreexj3lad','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-11-30 23:39:53.870855'),('wv7ntw8ui0gyznyjz5chxzgrkh2tfi51','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 23:30:50.016850'),('x5n86avcq3da181x3vs9fsrndgnzv5hh','NThmZTAyZWEzOGQ4YzA2YmY2MzBkMmIxOWVjNTc4M2RjZTBiOTI3Mjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ==','2017-11-29 03:13:17.906324'),('x61niq3c5x6lqjrv8vjx60kzx3ly7x3r','MmRmZGZiZDQyMTczZmM4MTYwMTk0MjI5YWE1YzU2NjczMTc4MDM1Yzp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwMH0=','2017-11-27 03:56:30.858194'),('x8okq4tavae6wj55cwae7o3prlqio3ns','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 18:57:32.380482'),('yeazt16bo5vx4jl54hs1lleklyj8nqed','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-01 22:57:36.353560'),('zsc97gb23e8snl4w33ypi0co685i9wzk','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-03 20:54:34.582504'),('zxkq4gwa4s5veyvdlk7sdbjjoz77b7z8','ZDE3NjE3NWMyNDNlNDEwZGE5MTBjMTJiYzkzZWIzYjgwZmUxNTBkZjp7ImNvZGlnbyI6IjI3MzA2NDIiLCJfc2Vzc2lvbl9leHBpcnkiOjYwMH0=','2017-12-04 00:17:45.133831');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_academia`
--

DROP TABLE IF EXISTS `ptc_academia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_academia` (
  `id_aca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_aca` varchar(255) NOT NULL,
  PRIMARY KEY (`id_aca`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_academia`
--

LOCK TABLES `ptc_academia` WRITE;
/*!40000 ALTER TABLE `ptc_academia` DISABLE KEYS */;
INSERT INTO `ptc_academia` VALUES (1,'Academia de Auditoría e Impuestos'),(2,'Academia de Administración'),(3,'Academia de Contabilidad'),(4,'Academia de Desarrollo de Negocios'),(5,'Academia de Economía'),(6,'Academia de Finanzas'),(7,'Academia de Mercadotecnia'),(8,'Academia de Turismo'),(9,'Academia de Educación'),(10,'Academia de Derecho Civil'),(11,'Academia de Metodología'),(12,'Academia de Trabajo Social'),(13,'Academia de Derecho Mercantil'),(14,'Academia de Derecho Administrativo'),(15,'Academia de Comunicación'),(16,'Academia de Idiomas Academia de Sociologia, Historia y Filosofia'),(17,'Academia de Derecho Penal'),(18,'Academia Ambiental'),(19,'Academia de Álgebra'),(20,'Academia de Estadística y Aplicaciones'),(21,'Academia de  Matemáticas Avanzadas'),(22,'Academia de Física'),(23,'Academia de Ciencias Computacionales'),(24,'Academia de Mecánica'),(25,'Academia de Electrónica'),(26,'Academia de Instrumentación y Control'),(27,'Academia Informática Aplicada'),(28,'Academia de Comportamiento social y humano'),(29,'Academia de Salud mental'),(30,'Academia de Fundamentos básicos del comportamiento'),(31,'Academia de Psicología y procesos psicoeducativos'),(32,'Academia Salud y Bienestar'),(33,'Academia Neurociencias');
/*!40000 ALTER TABLE `ptc_academia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_curso`
--

DROP TABLE IF EXISTS `ptc_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_curso` (
  `id_cur` int(11) NOT NULL AUTO_INCREMENT,
  `actividad_cur` varchar(255) NOT NULL,
  `avance_cur` varchar(255) NOT NULL,
  `evidencia_cur` varchar(500) NOT NULL,
  `materia_cur_id` int(11) NOT NULL,
  PRIMARY KEY (`id_cur`),
  KEY `ptc_curso_materia_cur_id_e17e2f6f_fk_ptc_materias_id_mat` (`materia_cur_id`),
  CONSTRAINT `ptc_curso_materia_cur_id_e17e2f6f_fk_ptc_materias_id_mat` FOREIGN KEY (`materia_cur_id`) REFERENCES `ptc_materias` (`id_mat`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_curso`
--

LOCK TABLES `ptc_curso` WRITE;
/*!40000 ALTER TABLE `ptc_curso` DISABLE KEYS */;
INSERT INTO `ptc_curso` VALUES (13,'Diseño de programas de cursos','Terminado','cursos/2017-12-0400:50:35.698613+00:00_381_mat_2017.csv',381),(14,'Evaluación de plan de estudios','Terminado','cursos/2017-12-0401:18:40.091090+00:00_510_academias_2017.csv',510);
/*!40000 ALTER TABLE `ptc_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_departamento`
--

DROP TABLE IF EXISTS `ptc_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_departamento` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_dep` varchar(255) NOT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_departamento`
--

LOCK TABLES `ptc_departamento` WRITE;
/*!40000 ALTER TABLE `ptc_departamento` DISABLE KEYS */;
INSERT INTO `ptc_departamento` VALUES (1,'Departamento de Ciencias Computacionales e Ingenierías'),(2,'Departamento de Ciencias Naturales y Exactas'),(3,'Departamento de Ciencias Económicas y Administrativas'),(4,'Departamento de Ciencias Sociales y Humanidades'),(5,'Departamento de Ciencias de la Salud'),(6,'Departamento de Ciencias del Comportamiento');
/*!40000 ALTER TABLE `ptc_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_eval_materia`
--

DROP TABLE IF EXISTS `ptc_eval_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_eval_materia` (
  `id_evm` int(11) NOT NULL AUTO_INCREMENT,
  `curso_evm` tinyint(1) NOT NULL,
  `planeacion_evm` tinyint(1) NOT NULL,
  `programa_evm` tinyint(1) NOT NULL,
  `retroal_evm` tinyint(1) NOT NULL,
  `ingreso_est_evm` int(11) NOT NULL,
  `ingreso_prof_evm` int(11) NOT NULL,
  `est_insc_evm` int(11) NOT NULL,
  `est_apro_evm` int(11) NOT NULL,
  `promedio_evm` double NOT NULL,
  `materia_evm_id` int(11) NOT NULL,
  PRIMARY KEY (`id_evm`),
  KEY `ptc_eval_materia_materia_evm_id_056444e7_fk_ptc_materias_id_mat` (`materia_evm_id`),
  CONSTRAINT `ptc_eval_materia_materia_evm_id_056444e7_fk_ptc_materias_id_mat` FOREIGN KEY (`materia_evm_id`) REFERENCES `ptc_materias` (`id_mat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_eval_materia`
--

LOCK TABLES `ptc_eval_materia` WRITE;
/*!40000 ALTER TABLE `ptc_eval_materia` DISABLE KEYS */;
INSERT INTO `ptc_eval_materia` VALUES (1,1,0,0,1,31,38,40,10,88.44,76),(2,0,1,0,1,1,20,38,16,66.7,400),(3,1,0,0,1,-1,-1,-1,-1,0,381),(4,0,1,0,1,1,4,8,11,98,390);
/*!40000 ALTER TABLE `ptc_eval_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_materias`
--

DROP TABLE IF EXISTS `ptc_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_materias` (
  `id_mat` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_mat` int(11) NOT NULL,
  `materia_mat` varchar(255) NOT NULL,
  `year_mat` int(11) NOT NULL,
  PRIMARY KEY (`id_mat`)
) ENGINE=InnoDB AUTO_INCREMENT=1162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_materias`
--

LOCK TABLES `ptc_materias` WRITE;
/*!40000 ALTER TABLE `ptc_materias` DISABLE KEYS */;
INSERT INTO `ptc_materias` VALUES (1,2611643,'ACTIVIDADES SOCIOCULTURALES Y DEPORTIVAS',2017),(2,2611643,'ACTIVIDADES SOCIOCULTURALES Y DEPORTIVAS',2017),(3,2950292,'ACTUALIDADES EN SALUD',2017),(4,2958875,'ACTUALIDADES EN SALUD',2017),(5,8307326,'ADMINISTRACION DE LA MICRO Y PEQUE~A EMPRESA',2017),(6,2944288,'ADMINISTRACION DE LA PRODUCCION Y LA TECNOLOGIA',2017),(7,2955846,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(8,2955511,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(9,2955846,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(10,2955518,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(11,2604426,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(12,2955511,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(13,2955519,'ADMINISTRACION DE LOS RECURSOS PARA LA SALUD',2017),(14,2947575,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(15,2954642,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(16,2954642,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(17,2959564,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(18,2955518,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(19,2959564,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(20,2604426,'ADMINISTRACION DE LOS SERVICIOS DE SALUD',2017),(21,2131285,'ADMINISTRACION DE PROYECTOS DE TECNOLOGIAS DE LA INFORMACION',2017),(22,2949760,'ADMINISTRACION DE PYMES',2017),(23,2106469,'ADMINISTRACION DE RECURSOS HUMANOS',2017),(24,2102137,'ADMINISTRACION DE RECURSOS HUMANOS',2017),(25,2102137,'ADMINISTRACION DE RECURSOS HUMANOS',2017),(26,2619512,'ADMINISTRACION DE TECNOLOGIAS DE EMPRESAS TURISTICAS',2017),(27,2027925,'ADMINISTRACION ESTRATEGICA',2017),(28,8307326,'ADMINISTRACION ESTRATEGICA',2017),(29,8307326,'ADMINISTRACION ESTRATEGICA',2017),(30,2949880,'ADMINISTRACION ESTRATEGICA',2017),(31,2726793,'ADMINISTRACION FINANCIERA',2017),(32,2601672,'ADMINISTRACION FINANCIERA',2017),(33,2106469,'ADMINISTRACION I',2017),(34,9518568,'ADMINISTRACION I',2017),(35,2134748,'ADMINISTRACION I',2017),(36,2106469,'ADMINISTRACION I',2017),(37,9518568,'ADMINISTRACION II',2017),(38,2604426,'ADMINISTRACION II',2017),(39,2134748,'ADMINISTRACION II',2017),(40,2952169,'ADMINISTRACION PARA LA TOMA DE DECISIONES',2017),(41,2027917,'ADMINISTRACION PUBLICA',2017),(42,2415984,'ADMINISTRACION PUBLICA',2017),(43,2951151,'ALGEBRA LINEAL',2017),(44,2946729,'ALGEBRA LINEAL',2017),(45,2944085,'ALGEBRA LINEAL I',2017),(46,2724154,'ALGORITMO Y ESTRUCTURAS DE DATOS',2017),(47,2724154,'ALGORITMO Y ESTRUCTURAS DE DATOS',2017),(48,2948219,'ALIMENTACION Y SALUD PUBLICA',2017),(49,2948219,'ALIMENTACION Y SALUD PUBLICA',2017),(50,2235455,'ALTERACIONES NEURALES Y ACTIVIDAD PSIQUICA',2017),(51,2205483,'AMPARO EN MATERIA CIVIL',2017),(52,2205483,'AMPARO I',2017),(53,2952814,'AMPLIFICADORES DE ALTA POTENCIA',2017),(54,2027925,'ANALISIS CONTABLE DE CONCEPTOS ESPECIFICOS',2017),(55,2833735,'ANALISIS CONTABLE DE CONCEPTOS ESPECIFICOS',2017),(56,2313871,'ANALISIS CONTABLE Y FINANCIERO',2017),(57,2709139,'ANALISIS DE ALGORITMOS Y COMPUTABILIDAD',2017),(58,2952399,'ANALISIS DE ALGORITMOS Y COMPUTABILIDAD',2017),(59,2958249,'ANALISIS DE CIRCUITOS Y REDES',2017),(60,2607638,'ANALISIS DE CIRCUITOS ELECTRICOS CON CA',2017),(61,2958249,'ANALISIS DE CIRCUITOS Y REDES',2017),(62,2948090,'ANALISIS DE FOURIER',2017),(63,2959637,'ANALISIS DE FOURIER',2017),(64,2959380,'ANALISIS DE FOURIER',2017),(65,2707888,'ANALISIS DE FUENTES DE FINANCIAMIENTO',2017),(66,2604809,'ANALISIS DE SISTEMAS Y SE~ALES',2017),(67,2724154,'ANALISIS DE SISTEMAS Y SE~ALES',2017),(68,2622408,'ANALISIS DE VALORES Y RIESGOS DE LOS RECURSOS DEL GRUPO DE INTERES',2017),(69,2313871,'ANALISIS DEL CAPITAL CONTABLE',2017),(70,2960018,'ANALISIS DEL CAPITAL CONTABLE',2017),(71,2944080,'ANALISIS E INTERPRETACION DE ESTADOS FINANCIEROS',2017),(72,2944288,'ANALISIS E INTERPRETACION DE ESTADOS FINANCIEROS',2017),(73,2313871,'ANALISIS INTEGRAL DE LOS ELEMENTOS DEL COSTO',2017),(74,2951151,'ANALISIS NUMERICO',2017),(75,2709031,'ANALISIS Y DISE?O DE SISTEMAS DE INFORMACION',2017),(76,2730642,'ANALISIS Y DISE~O DE SOFTWARE',2017),(77,2954900,'ANIMACION SOCIOCULTURAL',2017),(78,9221425,'ANTENAS Y PROPAGACION',2017),(79,2956953,'APLICACIONES DE LA ENTREVISTA PSICOLOGICA',2017),(80,2138158,'APLICACIONES DE LA PSICOLOGIA SOCIAL',2017),(81,2956953,'APRENDIZAJE Y DIVERSIDAD',2017),(82,2952814,'ARQUITECTURA AVANZADA DE COMPUTADORAS',2017),(83,2509539,'ARQUITECTURA AVANZADA DE COMPUTADORAS',2017),(84,2132737,'ARQUITECTURA DE COMPUTADORAS',2017),(85,2224887,'AUDIO Y VIDEOCONFERENCIA INTERACTIVA',2017),(86,2634236,'AUDITORIA ADMINISTRATIVA',2017),(87,2634236,'AUDITORIA ADMINISTRATIVA',2017),(88,9718397,'AUDITORIA ADMINISTRATIVA DE EMPRESAS TURISTICAS',2017),(89,9718397,'AUDITORIA ADMINISTRATIVA DE EMPRESAS TURISTICAS',2017),(90,2509458,'AUDITORIA DE SISTEMAS',2017),(91,2903695,'AUDITORIA FINANCIERA',2017),(92,2903695,'AUDITORIA FISCAL',2017),(93,2132737,'AUTOMATAS PROGRAMABLES',2017),(94,2957540,'AUTOMATISMOS',2017),(95,2946678,'AUTOMATIZACION DE SISTEMAS DE MANUFACTURA',2017),(96,2902168,'BASES DE DATOS DISTRIBUIDAS',2017),(97,2709031,'BASES DE DATOS RELACIONADOS',2017),(98,2709031,'BASES DE DATOS RELACIONADOS',2017),(99,2709031,'BASES DE DATOS RELACIONADOS',2017),(100,2709031,'BASES DE DATOS RELACIONADOS',2017),(101,2130491,'BASES PSICOBIOLOGICAS DEL COMPORTAMIENTO',2017),(102,2702223,'BASES PSICOBIOLOGICAS DEL COMPORTAMIENTO',2017),(103,2945971,'BASES TEORICAS DE LA DINAMICA DE GRUPOS',2017),(104,2956953,'BASES TEORICAS DE LA DINAMICA DE GRUPOS',2017),(105,2952183,'BASES-TEORICO-PRACTICAS DE LA ENTREVISTA',2017),(106,2706288,'BASES-TEORICO-PRACTICAS DE LA ENTREVISTA',2017),(107,9806156,'BIOETICA Y UNIVERSIDAD',2017),(108,2823101,'BIOETICA Y UNIVERSIDAD',2017),(109,2823101,'BIOETICA Y UNIVERSIDAD',2017),(110,2939363,'BIOINFORMATICA',2017),(111,2958875,'BIOLOGIA',2017),(112,2944284,'BIOLOGIA CELULAR',2017),(113,2702223,'BIOLOGIA MOLECULAR',2017),(114,2702223,'BIOLOGIA MOLECULAR',2017),(115,2415526,'BIOPROGRAMACION',2017),(116,2959967,'BIOQUIMICA',2017),(117,2959967,'BIOQUIMICA DE LOS ALIMENTOS',2017),(118,2958875,'BIOQUIMICA HUMANA',2017),(119,2958875,'BIOQUIMICA HUMANA',2017),(120,2724154,'CALCULO COMPUTACIONAL',2017),(121,2959714,'CALCULO DE VARIAS VARIABLES',2017),(122,2959637,'CALCULO DE VARIAS VARIABLES',2017),(123,2959380,'CALCULO DE VARIAS VARIABLES',2017),(124,9502041,'CALCULO DE VARIAS VARIABLES',2017),(125,2950292,'CALCULO DIETETICO Y PLANEACION DE MENUS',2017),(126,2959380,'CAMPO ELECTROMANETICO Y ONDAS',2017),(127,9621768,'CAPACITACION Y DESARROLLO DE PERSONAL',2017),(128,2601672,'CAPACITACION Y DESARROLLO DE PERSONAL',2017),(129,2325357,'CARACTERIZACION DE GRUPOS DE PRODUCTORES',2017),(130,8103259,'CIENCIA AMBIENTAL',2017),(131,8103259,'CIENCIA AMBIENTAL',2017),(132,8803145,'CIENCIA, TECNOLOGIA Y SOCIEDAD',2017),(133,8803145,'CIENCIA, TECNOLOGIA Y SOCIEDAD',2017),(134,2918013,'CIENCIAS DE LA EDUCACION',2017),(135,2620294,'CIENCIAS DE LA EDUCACION',2017),(136,2626195,'CIENCIAS DE LA EDUCACION',2017),(137,2918013,'CIENCIAS DE LA EDUCACION',2017),(138,2620294,'CIENCIAS DE LA EDUCACION',2017),(139,2626195,'CIENCIAS DE LA EDUCACION',2017),(140,2626195,'CIENCIAS DE LA EDUCACION',2017),(141,2316803,'CIENCIAS FORENSES',2017),(142,2939363,'CIRCUITOS ELECTRICOS',2017),(143,2705222,'CIUDADES Y CIUDADANOS',2017),(144,2902168,'COMPILADORES',2017),(145,2321181,'COMPUTACION',2017),(146,2509415,'COMPUTACION',2017),(147,2619512,'COMPUTACION BASICA',2017),(148,2956953,'COMUNICACION EDUCATIVA Y DESARROLLO COMUNITARIO',2017),(149,2931974,'COMUNICACION HUMANA',2017),(150,2956953,'COMUNICACION HUMANA',2017),(151,2958107,'COMUNICACION Y TECNOLOGIAS DE LA INFORMACION',2017),(152,2024454,'COMUNICACION Y TECNOLOGIAS DE LA INFORMACION',2017),(153,2949925,'COMUNICACION Y TECNOLOGIAS DE LA INFORMACION',2017),(154,2941767,'CONCEPTOS DE CALCULO DIFERENCIAL E INTEGRAL',2017),(155,9322507,'CONCEPTOS DE CALCULO DIFERENCIAL E INTEGRAL',2017),(156,2941767,'CONCEPTOS DE CALCULO DIFERENCIAL E INTEGRAL',2017),(157,2733064,'CONCEPTOS DE CALCULO DIFERENCIAL E INTEGRAL',2017),(158,2952812,'CONCEPTOS DE CALCULO DIFERENCIAL E INTEGRAL',2017),(159,2949774,'CONCEPTOS FISCALES FUNDAMENTALES',2017),(160,2949774,'CONCEPTOS FISCALES FUNDAMENTALES',2017),(161,9426493,'CONCEPTOS JURIDICOS FUNDAMENTALES',2017),(162,2316846,'CONCEPTOS JURIDICOS FUNDAMENTALES',2017),(163,2024586,'CONCEPTOS JURIDICOS FUNDAMENTALES',2017),(164,2106477,'CONCEPTOS JURIDICOS FUNDAMENTALES',2017),(165,2512335,'CONCEPTOS JURIDICOS FUNDAMENTALES',2017),(166,9001506,'CONTABILIDAD ADMINISTRATIVA',2017),(167,2957178,'CONTABILIDAD ADMINISTRATIVA',2017),(168,2313871,'CONTABILIDAD DE COSTOS',2017),(169,2957088,'CONTABILIDAD GENERAL',2017),(170,2957088,'CONTABILIDAD GENERAL',2017),(171,2306069,'CONTABILIDAD GENERAL',2017),(172,2306069,'CONTABILIDAD GENERAL',2017),(173,9718397,'CONTABILIDAD GENERAL',2017),(174,9718397,'CONTABILIDAD GENERAL',2017),(175,9001506,'CONTABILIDAD GENERAL',2017),(176,9001506,'CONTABILIDAD GENERAL',2017),(177,9621768,'CONTABILIDAD INTERNACIONAL Y MONEDA EXTRANJERA',2017),(178,2634236,'CONTABILIDAD INTERNACIONAL Y MONEDA EXTRANJERA',2017),(179,2232022,'CONTEXTO SOCIOHISTORICO DEL TRABAJO SOCIAL',2017),(180,2946018,'CONTEXTO SOCIOHISTORICO DEL TRABAJO SOCIAL',2017),(181,2957088,'CONTRIBUCIONES AL COMERCIO EXTERIOR',2017),(182,2955474,'CONTRIBUCIONES ESTATALES Y MUNICIPALES',2017),(183,2950151,'CONTROL DE MOTORES Y PROCESOS',2017),(184,2950151,'CONTROL DIFUSO',2017),(185,2952031,'CONTROL DIGITAL',2017),(186,2959396,'CONTROL DIGITAL',2017),(187,2958906,'CONTROL INTERNO DE LAS ORGANIZACIONES',2017),(188,2634236,'CONTROL INTERNO DE LAS ORGANIZACIONES',2017),(189,2626195,'COORDINACION DE INTERVENCION EDUCATIVA',2017),(190,2916126,'COSTOS BASICOS',2017),(191,2916126,'COSTOS BASICOS',2017),(192,2635968,'CRIMINOLOGIA',2017),(193,2635968,'CRIMINOLOGIA',2017),(194,2946729,'CRIPTOGRAFIA',2017),(195,9322507,'CRIPTOGRAFIA',2017),(196,2313863,'DERECHO AGRARIO',2017),(197,2129183,'DERECHO AMBIENTAL I',2017),(198,9510605,'DERECHO AMBIENTAL I',2017),(199,2027895,'DERECHO CIVIL I',2017),(200,2129329,'DERECHO CIVIL I',2017),(201,9426493,'DERECHO CIVIL II',2017),(202,2106477,'DERECHO CIVIL II',2017),(203,9417583,'DERECHO CIVIL III',2017),(204,2027895,'DERECHO CIVIL III',2017),(205,2027895,'DERECHO CIVIL IV',2017),(206,2527839,'DERECHO CIVIL V',2017),(207,2027895,'DERECHO CIVIL V',2017),(208,2027917,'DERECHO COLECTIVO DEL TRABAJO',2017),(209,2228734,'DERECHO COLECTIVO DEL TRABAJO',2017),(210,2024772,'DERECHO CONSTITUCIONAL',2017),(211,2024772,'DERECHO CONSTITUCIONAL',2017),(212,9417583,'DERECHO CONSTITUCIONAL MEXICANO',2017),(213,2106477,'DERECHO CONSTITUCIONAL MEXICANO',2017),(214,9510605,'DERECHO CONTENCIOSO ADMINISTRATIVO',2017),(215,2705303,'DERECHO DE LA SEGURIDAD SOCIAL',2017),(216,2316846,'DERECHO DE LA SEGURIDAD SOCIAL',2017),(217,2129329,'DERECHO ECONOMICO I',2017),(218,2205491,'DERECHO FAMILIAR',2017),(219,9510605,'DERECHO FISCAL',2017),(220,2957178,'DERECHO FISCAL',2017),(221,2705222,'DERECHO FISCAL',2017),(222,2705303,'DERECHO FISCAL',2017),(223,2957088,'DERECHO FISCAL',2017),(224,2957088,'DERECHO FISCAL',2017),(225,2512335,'DERECHO FISCAL I',2017),(226,2228734,'DERECHO INDIVIDUAL DEL TRABAJO I',2017),(227,2635968,'DERECHO INTERNACIONAL PRIVADO',2017),(228,2527839,'DERECHO INTERNACIONAL PRIVADO',2017),(229,2024772,'DERECHO INTERNACIONAL PUBLICO',2017),(230,2705303,'DERECHO LABORAL',2017),(231,2107031,'DERECHO LABORAL',2017),(232,2027917,'DERECHO LABORAL',2017),(233,2024772,'DERECHO MERCANTIL',2017),(234,2316846,'DERECHO MERCANTIL',2017),(235,2129329,'DERECHO MERCANTIL I. TEORIA DEL ACTO DE COMERCIO Y COMERCIANTE',2017),(236,2129329,'DERECHO MERCANTIL II. TITULOS Y OPERACIONES DE CREDITO',2017),(237,2205491,'DERECHO MERCANTIL II. TITULOS Y OPERACIONES DE CREDITO',2017),(238,2512335,'DERECHO MERCANTIL III. SISTEMAS DE INTERMEDIACION FINANCIERA',2017),(239,2313863,'DERECHO NOTARIAL Y CORREDURIA PUBLICA',2017),(240,2635968,'DERECHO PENAL I. TEORIA GENERAL DEL DERECHO PENAL',2017),(241,9709746,'DERECHO PENAL II. DELITOS',2017),(242,2129167,'DERECHO PROCESAL CIVIL',2017),(243,2129167,'DERECHO PROCESAL CIVIL',2017),(244,2205491,'DERECHO PROCESAL FAMILIAR',2017),(245,2228734,'DERECHO PROCESAL MERCANTIL',2017),(246,2205491,'DERECHO PROCESAL MERCANTIL',2017),(247,2129167,'DERECHO PROCESAL PENAL I',2017),(248,7502036,'DERECHO PROCESAL PENAL I',2017),(249,2129167,'DERECHO PROCESAL PENAL II',2017),(250,2027895,'DERECHO REGISTRAL',2017),(251,2129329,'DERECHO ROMANO',2017),(252,2527693,'DERECHO ROMANO',2017),(253,2527839,'DERECHO SUCESORIO',2017),(254,2024586,'DERECHOS HUMANOS Y SUS GARANTIAS',2017),(255,2024586,'DERECHOS HUMANOS Y SUS GARANTIAS',2017),(256,2916126,'DESARROLLO CONTABLE DE PARTIDAS ESPECIFICAS',2017),(257,2916126,'DESARROLLO CONTABLE DE PARTIDAS ESPECIFICAS',2017),(258,2958906,'DESARROLLO CONTABLE DE PARTIDAS ESPECIFICAS',2017),(259,2958906,'DESARROLLO CONTABLE DE PARTIDAS ESPECIFICAS',2017),(260,2709139,'DESARROLLO DE BASES DE DATOS PARA WEB',2017),(261,2604426,'DESARROLLO DE EMPRENDEDORES',2017),(262,2024918,'DESARROLLO DE EMPRENDEDORES',2017),(263,8922853,'DESARROLLO DE EMPRENDEDORES',2017),(264,2321181,'DESARROLLO DE EMPRENDEDORES',2017),(265,2530058,'DESARROLLO DE EMPRENDEDORES',2017),(266,2403781,'DESARROLLO DE EMPRENDEDORES',2017),(267,2726793,'DESARROLLO DE PRODUCTOS',2017),(268,2604809,'DESARROLLO DE SOFTWARE I',2017),(269,2957964,'DESARROLLO DE SOFTWARE II',2017),(270,7816898,'DESARROLLO DEL CAPITAL HUMANO',2017),(271,2958880,'DESARROLLO DEL CAPITAL HUMANO',2017),(272,2321181,'DESARROLLO E INNOVACION TECNOLOGICA',2017),(273,9408207,'DESARROLLO E INNOVACION TECNOLOGICA',2017),(274,2902176,'DESARROLLO MULTIMEDIA',2017),(275,8307326,'DESARROLLO ORGANIZACIONAL',2017),(276,2024918,'DESARROLLO SUSTENTABLE',2017),(277,2960020,'DESARROLLO SUSTENTABLE',2017),(278,2024918,'DESARROLLO TURISTICO SUSTENTABLE',2017),(279,2952183,'DESARROLLO, APRENDIZAJE Y EDUCACION',2017),(280,2802112,'DESARROLLO,APRENDIZAJE Y EDUCACION',2017),(281,2945715,'DESARROLLO,APRENDIZAJE Y EDUCACION',2017),(282,2955650,'DESARROLLO DE PROYECTOS DE INVESTIGACION',2017),(283,2952024,'DESARROLLO DE PROYECTOS DE INVESTIGACION',2017),(284,2507951,'DESCENTRALIZACION EDUCATIVA',2017),(285,2722143,'DIAGNOSTICO DE NECESIDADES EDUCATIVAS NIVEL MACRO',2017),(286,2722143,'DIAGNOSTICO DE NECESIDADES EDUCATIVAS NIVEL MICRO',2017),(287,2949880,'DIAGNOSTICO EDUCATIVO',2017),(288,2960018,'DIAGNOSTICO FINANCIERO',2017),(289,2634244,'DIAGNOSTICO FINANCIERO',2017),(290,9029192,'DIAGNOSTICO Y FUNDAMENTACION DE LA GESTION Y ADMINISTRACION EDUCATIVA',2017),(291,2918013,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(292,2823101,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(293,2823101,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(294,2823101,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(295,2918013,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(296,2918013,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(297,2952023,'DIALECTICA DE LA NATURALEZA DE LA SOCIEDAD',2017),(298,9621768,'DICTAMEN, OPINIONES Y OTROS INFORMES DEL AUDITOR',2017),(299,2956953,'DINAMICA DE GRUPOS',2017),(300,2704021,'DINAMICA DE GRUPOS',2017),(301,2960020,'DIRECCION DE EMPRESAS TURISTICAS',2017),(302,2306069,'DIRECCION FINANCIERA',2017),(303,2951388,'DISE~O  INTERACTIVO II',2017),(304,9502041,'DISE~O DE CIRCUITOS DIGITALES',2017),(305,9322507,'DISE~O DE ELEMENTOS DE MAQUINAS',2017),(306,2952031,'DISE~O DE MAQUINAS',2017),(307,2132737,'DISE~O ELECTRONICO ANALOGICO',2017),(308,2132737,'DISE~O ELECTRONICO ANALOGICO',2017),(309,2957540,'DISE~O ELECTRONICO ANALOGICO',2017),(310,8712425,'DISE~O ELECTRONICO ASISTIDO POR COMPUTADORA',2017),(311,2415526,'DISE~O ELECTRONICO ASISTIDO POR COMPUTADORA',2017),(312,2607638,'DISE~O ELECTRONICO ASISTIDO POR COMPUTADORA',2017),(313,2132737,'DISE~O ELECTRONICO DIGITAL',2017),(314,2415526,'DISE~O ELECTRONICO DIGITAL',2017),(315,2132737,'DISE~O ELECTRONICO DIGITAL',2017),(316,2951388,'DISE~O INTERACTIVO I',2017),(317,2946679,'DISE~O MECATRONICO',2017),(318,2601672,'DISE~O ORGANIZACIONAL',2017),(319,2525275,'DISE~O ORGANIZACIONAL',2017),(320,2223791,'DISE~O WEB DINAMICO',2017),(321,2946895,'DISE~O Y EVALUACION CURRICULAR',2017),(322,2951017,'DISE~O Y OPERACION DE PROYECTOS Y ESTRATEGIAS DE INTERVENCION EDUCATIVA II',2017),(323,2626195,'DISE~O Y OPERACION DE PROYECTOS Y ESTRATEGIAS DE INTERVENCION EDUCATIVA I',2017),(324,2902168,'DISE~O Y PROGRAMACION DE SISTEMAS OPERATIVOS',2017),(325,9811745,'DISE~O Y PROGRAMACION ORIENTADA A OBJETOS',2017),(326,2948021,'DISE~OS BIOEXPERIMENTALES',2017),(327,2024918,'DOTACION E INDUCCION DE RECURSOS HUMANOS',2017),(328,9118462,'DOTACION E INDUCCION DE RECURSOS HUMANOS',2017),(329,2216752,'ECONOMIA I',2017),(330,2138743,'ECONOMIA I',2017),(331,2952169,'ECONOMIA I',2017),(332,2131293,'ECONOMIA I',2017),(333,2106523,'ECONOMIA II',2017),(334,2138743,'ECONOMIA II',2017),(335,2952169,'ECONOMIA II',2017),(336,2216752,'ECONOMIA II',2017),(337,2952169,'ECONOMIA II',2017),(338,8718288,'ECONOMIA Y POLITICA ALIMENTARIA',2017),(339,2960020,'ECOTURISMO',2017),(340,2941767,'ECUACIONES DIFERENCIALES',2017),(341,2946729,'ECUACIONES DIFERENCIALES',2017),(342,2956085,'ECUACIONES DIFERENCIALES',2017),(343,2951151,'ECUACIONES DIFERENCIALES',2017),(344,2714086,'EDUCACION ALTERNATIVA',2017),(345,2714086,'EDUCACION ALTERNATIVA',2017),(346,2610191,'EDUCACION COMPARADA',2017),(347,2107031,'EFECTOS FISCALES Y FINANCIEROS DE LAS PLANEACION FISCAL',2017),(348,2953875,'EL FENOMENO EDUCATIVO',2017),(349,2952023,'EL TRABAJO SOCIAL EN EL AMBITO ESCOLAR',2017),(350,2203308,'ELABORACION DE PERFILES DE INVERSION',2017),(351,2919834,'ELABORACION DE PLAN DE NEGOCIOS',2017),(352,2705222,'ELABORACION Y REGISTRO DE CONTRATOS',2017),(353,2952812,'ELECTROMAGNETISMO',2017),(354,2952812,'ELECTROMAGNETISMO',2017),(355,2939363,'ELECTRONEUMATICA',2017),(356,2959296,'ENFERMERIA Y EDUCACION PARA LA SALUD',2017),(357,2955846,'ENFERMERIA Y REGULACION PROFESIONAL',2017),(358,2714086,'EPISTEMOLOGIA',2017),(359,2946018,'EPISTEMOLOGIA',2017),(360,2507951,'ESPECIALIZANTE DISCIPLINAR I',2017),(361,2232022,'ESPECIALIZANTE DISCIPLINAR II',2017),(362,7806507,'ESPECIALIZANTE DISCIPLINAR III',2017),(363,2722143,'ESPECIALIZANTE DISCIPLINAR IV',2017),(364,2223155,'ESPECIALIZANTE DISCIPLINAR V',2017),(365,2800683,'ESPECIALIZANTE DISCIPLINAR VI',2017),(366,2639602,'ESPECIALIZANTE DISCIPLINAR VII',2017),(367,8711488,'ESPECIALIZANTE DISCIPLINAR VIII',2017),(368,2106442,'ESTADISTICA',2017),(369,2939363,'ESTADISTICA',2017),(370,2951388,'ESTADISTICA',2017),(371,2951388,'ESTADISTICA',2017),(372,2106442,'ESTADISTICA',2017),(373,2415526,'ESTADISTICA',2017),(374,2509504,'ESTADISTICA',2017),(375,2415526,'ESTADISTICA',2017),(376,2636131,'ESTADISTICA AVANZADA',2017),(377,9200711,'ESTADISTICA AVANZADA',2017),(378,2958882,'ESTADISTICA DESCRIPTIVA Y PROBABILIDAD',2017),(379,2958905,'ESTADISTICA DESCRIPTIVA Y PROBABILIDAD',2017),(380,2106442,'ESTADISTICA I',2017),(381,2730642,'ESTADISTICA I',2017),(382,9200711,'ESTADISTICA I',2017),(383,2636131,'ESTADISTICA I',2017),(384,2958767,'ESTADISTICA I',2017),(385,9200711,'ESTADISTICA II',2017),(386,2951151,'ESTADISTICA II',2017),(387,2951151,'ESTADISTICA II',2017),(388,2959714,'ESTADISTICA II',2017),(389,2951151,'ESTADISTICA Y PROCESOS ESTOCASTICOS',2017),(390,2730642,'ESTADISTICA Y PROCESOS ESTOCASTICOS',2017),(391,2106442,'ESTADISTICA Y PROCESOS ESTOCASTICOS',2017),(392,2106442,'ESTADISTICA Y PROCESOS ESTOCASTICOS',2017),(393,2919834,'ESTRATEGIAS DE COMERCIALIZACION',2017),(394,2957178,'ESTRATEGIAS FISCALES APLICADAS A LAS PERSONAS FISICAS Y PERSONAS MORALES',2017),(395,2137534,'ESTRATEGIAS FISCALES APLICADAS A LAS PERSONAS FISICAS Y PERSONAS MORALES',2017),(396,2939363,'ESTRUCTURA DE ARCHIVOS',2017),(397,2939363,'ESTRUCTURA DE ARCHIVOS',2017),(398,9118462,'ESTRUCTURA FINANCIERA DE LA CONTABILIDAD GUBERNAMENTAL',2017),(399,9811745,'ESTRUCTURAS DE DATOS',2017),(400,2033496,'ESTUDIO DE MERCADO DEL AGRONEGOCIO',2017),(401,8103259,'ESTUDIO DEL ENTORNO DEL MEDIO AMBIENTE',2017),(402,2203308,'ESTUDIO DEL ENTORNO ECONOMICO Y PRODUCTIVO',2017),(403,2612704,'ESTUDIO DEL ENTORNO SOCIAL-CULTURAL-POLITICO',2017),(404,2707888,'ESTUDIO DEL PRODUCTO EN EL MERCADO',2017),(405,2951386,'ESTUDIO ECONOMICO DEL AGRONEGOCIO',2017),(406,2944080,'ESTUDIO FINANCIERO',2017),(407,2957178,'ESTUDIO FISCAL DE LOS SALARIOS Y LA SEGURIDAD SOCIAL',2017),(408,2306069,'ESTUDIO FISCAL DE LOS SALARIOS Y LA SEGURIDAD SOCIAL',2017),(409,2525275,'ESTUDIO ORGANIZACIONAL DEL AGRONEGOCIO',2017),(410,2725959,'ESTUDIO TECNICO ADMINISTRATIVO',2017),(411,2325357,'ESTUDIO TECNICO DEL AGRONEGOCIO',2017),(412,2947533,'ETICA',2017),(413,2527693,'ETICA JURIDICA',2017),(414,9417583,'ETICA JURIDICA',2017),(415,8823081,'ETICA PROFESIONAL',2017),(416,2521296,'ETICA PROFESIONAL',2017),(417,2603918,'ETICA PROFESIONAL',2017),(418,2521296,'ETICA PROFESIONAL EN LA CONTADURIA',2017),(419,2521296,'ETICA PROFESIONAL EN LA CONTADURIA',2017),(420,2952023,'ETICA Y GESTION DE LA PRACTICA PROFESIONAL',2017),(421,2952023,'ETICA Y GESTION DE LA PRACTICA PROFESIONAL',2017),(422,2316803,'EVALUACION DE INTERVENCION EDUCATIVA',2017),(423,2945115,'EVALUACION DE LA GESTION Y ADMINISTRACION EDUCATIVA',2017),(424,2948219,'EVALUACION DEL ESTADO NUTRICIO',2017),(425,2626195,'EVALUACION EDUCATIVA',2017),(426,2956953,'EVALUACION EDUCATIVA',2017),(427,2956953,'EVALUACION EDUCATIVA',2017),(428,2235455,'EVALUACION NEUROPSICOLOGICA Y REHABILITACION',2017),(429,2952024,'EVALUACION PSICOLOGICA DEL ADULTO Y DEL ADULTO MAYOR',2017),(430,2958880,'EVALUACION PSICOLOGICA DEL ADULTO Y DEL ADULTO MAYOR',2017),(431,2952024,'EVALUACION PSICOLOGICA DEL ADULTO Y DEL ADULTO MAYOR',2017),(432,2949696,'EVALUACION PSICOLOGICA INFANTIL Y DE ADOLESCENTES',2017),(433,2634244,'EVALUACION Y ANALISIS DE RIESGO',2017),(434,2813912,'EVALUACION Y PERSPECTIVA DEL GRUPO DE INTERES',2017),(435,8901236,'EVALUACION Y SEGUIMIENTO DEL PROYECTO',2017),(436,9613609,'EVALUACION, DIAGNOSTICO Y SELECCION EN LA PSICOLOGIA DEL TRABAJO',2017),(437,2958880,'EVALUACION, DIAGNOSTICO Y SELECCION EN LA PSICOLOGIA DEL TRABAJO',2017),(438,2102781,'EXPRESION ORAL Y ESCRITA',2017),(439,2957752,'EXPRESION ORAL Y ESCRITA',2017),(440,8823081,'EXPRESION ORAL Y ESCRITA',2017),(441,2943770,'EXPRESION ORAL Y ESCRITA',2017),(442,8823081,'EXPRESION ORAL Y ESCRITA',2017),(443,2400065,'EXPRESION ORAL Y ESCRITA',2017),(444,2943770,'EXPRESION ORAL Y ESCRITA',2017),(445,2521296,'EXPRESION ORAL Y ESCRITA',2017),(446,2923009,'EXPRESION ORAL Y ESCRITA',2017),(447,2946018,'EXPRESION ORAL Y ESCRITA',2017),(448,2232022,'EXPRESION ORAL Y ESCRITA',2017),(449,8823081,'EXPRESION ORAL Y ESCRITA',2017),(450,2626195,'FILOSOFIA DE LA EDUCACION',2017),(451,2626195,'FILOSOFIA DE LA EDUCACION',2017),(452,2904357,'FILOSOFIA DE LA EDUCACION',2017),(453,2904357,'FILOSOFIA DE LA EDUCACION',2017),(454,2950774,'FILOSOFIA DE LA EDUCACION',2017),(455,2626195,'FILOSOFIA DE LA EDUCACION',2017),(456,2956081,'FILOSOFIA DE LA EDUCACION',2017),(457,2635968,'FILOSOFIA DEL DERECHO I',2017),(458,2137054,'FILOSOFIA DEL DERECHO I',2017),(459,2306069,'FINANZAS CORPORATIVAS',2017),(460,2951386,'FINANZAS I',2017),(461,2306069,'FINANZAS INTERNACIONALES Y LA GLOBALIZACION EMPRESARIAL',2017),(462,2957583,'FISICA',2017),(463,2958905,'FISICOQUIMICA',2017),(464,2958882,'FISICOQUIMICA I',2017),(465,2917971,'FISIOLOGIA HUMANA',2017),(466,2917971,'FISIOLOGIA HUMANA',2017),(467,2917971,'FISIOLOGIA HUMANA',2017),(468,2952815,'FLUIDOS Y ELASTICIDAD',2017),(469,2952169,'FORMULACION Y EVALUACION DE PROYECTOS',2017),(470,2944288,'FORMULACION Y EVALUACION DE PROYECTOS',2017),(471,2948021,'FUNCIONES CEREBRALES BASICAS',2017),(472,2960035,'FUNCIONES CEREBRALES SUPERIORES',2017),(473,2960035,'FUNCIONES CEREBRALES SUPERIORES',2017),(474,8314233,'FUNDAMENTOS DE ANATOMIA',2017),(475,8314233,'FUNDAMENTOS DE ANATOMIA',2017),(476,8314233,'FUNDAMENTOS DE ANATOMIA',2017),(477,8314233,'FUNDAMENTOS DE ANATOMIA',2017),(478,2946744,'FUNDAMENTOS DE CONTABILIDAD GUBERNAMENTAL',2017),(479,2946744,'FUNDAMENTOS DE CONTABILIDAD GUBERNAMENTAL',2017),(480,2957178,'FUNDAMENTOS DE LA PLANEACION FISCAL',2017),(481,2957088,'FUNDAMENTOS DE LA PLANEACION FISCAL',2017),(482,2946679,'FUNDAMENTOS DE MICRO Y NANOTECNOLOGIA',2017),(483,2944008,'FUNDAMENTOS DE OPTICA',2017),(484,9811745,'FUNDAMENTOS DE PROGRAMACION',2017),(485,9806156,'FUNDAMENTOS DE PSICOTERAPIA DE ADULTOS',2017),(486,2954801,'FUNDAMENTOS DE PSICOTERAPIA DE ADULTOS',2017),(487,2134578,'FUNDAMENTOS DE REDES',2017),(488,9304878,'FUNDAMENTOS DEL TURISMO',2017),(489,2823101,'FUNDAMENTOS FILOSOFICOS DE LA PSICOLOGIA',2017),(490,9806156,'FUNDAMENTOS PARA LA INTERVENCION CLINICA PSICOLOGICA',2017),(491,2704021,'FUNDAMENTOS PARA LA INTERVENCION CLINICA PSICOLOGICA',2017),(492,8922853,'GEOGRAFIA TURISTICA',2017),(493,2138743,'GEOGRAFIA Y TEORIA DEL ESPACIO',2017),(494,2709139,'GEOMETRIA COMPUTACIONAL',2017),(495,2923009,'GERENCIA Y RELACIONES PUBLICAS',2017),(496,2945971,'GERIATRIA',2017),(497,2945971,'GERIATRIA',2017),(498,2211661,'GESTION DE AMBIENTES VIRTUALES DE APRENDIZAJE',2017),(499,9304878,'GESTION DE EMPRESAS DE ALIMENTOS Y  BEBIDAS',2017),(500,9304878,'GESTION DE EMPRESAS DE ALIMENTOS Y  BEBIDAS',2017),(501,2949448,'GESTION DE EMPRESAS DE HOSPEDAJE',2017),(502,2200252,'GESTION DE LA CALIDAD',2017),(503,2134748,'GESTION DE LA CALIDAD',2017),(504,2321181,'GESTION DE LA CALIDAD',2017),(505,2509504,'GESTION DE LA INFORMACION EN BASES DE DATOS CORPORATIVAS',2017),(506,2137054,'GESTION DE LICENCIA Y PROPIEDAD INDUSTRIAL',2017),(507,2236079,'GESTION DE PROYECTOS DE SOFTWARE',2017),(508,2622408,'GESTION DE RECURSOS HUMANOS',2017),(509,2707888,'GESTION DE RECURSOS MATERIALES Y TECNICOS',2017),(510,2730642,'GESTION DE SERVICIOS Y PROCESOS DE TECNOLOGIAS DE LA INFORMACION I',2017),(511,2415526,'GESTION DE SERVICIOS Y PROCESOS DE TECNOLOGIAS DE LA INFORMACION II',2017),(512,2417448,'GESTION Y OPERACION DE VIAJES',2017),(513,8307326,'GESTION Y ORGANIZACION DEL SECTOR PUBLICO',2017),(514,2957752,'GESTION Y VINCULACION EDUCATIVA',2017),(515,2027925,'HERRAMIENTAS DE COSTOS PARA LA TOMA DE DECISIONES',2017),(516,2106477,'HISTORIA DE DERECHO UNIVERSAL Y MEXICANO',2017),(517,2027917,'HISTORIA DE DERECHO UNIVERSAL Y MEXICANO',2017),(518,2933896,'HISTORIA DE LA CIENCIA',2017),(519,2933896,'HISTORIA DE LA TECNOLOGIA',2017),(520,2948219,'HISTORIA Y EPISTEMOLOGIA DE LA NUTRIOLOGIA',2017),(521,2223589,'IDIOMA EXTRANJERO',2017),(522,2401177,'IMPACTO AMBIENTAL DE LAS OBRAS DE INGENIERIA',2017),(523,2403781,'IMPLEMENTACION Y DESARROLLO DE NEGOCIOS',2017),(524,2622408,'IMPLEMENTACION Y DESARROLLO DE NEGOCIOS',2017),(525,2622408,'INCUBACION DE NEGOCIOS',2017),(526,2957752,'INDUCCION A LAS AREAS DE INTERVENCION DEL TRABAJOS SOCIAL',2017),(527,2232022,'INDUCCION A LAS AREAS DE INTERVENCION DEL TRABAJOS SOCIAL',2017),(528,2957816,'INDUCCION A LAS AREAS DE INTERVENCION DEL TRABAJOS SOCIAL',2017),(529,2027631,'INDUCCION A LAS AREAS DE INTERVENCION DEL TRABAJOS SOCIAL',2017),(530,2957752,'INDUCCION A LAS AREAS DE INTERVENCION DEL TRABAJOS SOCIAL',2017),(531,2709139,'INGENIERIA DE SOFTWARE',2017),(532,2236079,'INGENIERIA DE SOFTWARE',2017),(533,2604809,'INGENIERIA DE SOFTWARE AVANZADO',2017),(534,2951374,'INGLES I',2017),(535,8501564,'INGLES I',2017),(536,2830035,'INGLES I',2017),(537,8501564,'INGLES I',2017),(538,2223589,'INGLES II',2017),(539,2951374,'INGLES II',2017),(540,2221454,'INGLES II',2017),(541,2951374,'INGLES II',2017),(542,2949774,'INGLES III',2017),(543,2223589,'INGLES III',2017),(544,2951017,'INGLES III',2017),(545,2951017,'INGLES III',2017),(546,2956956,'INGLES IV',2017),(547,2956956,'INGLES IV',2017),(548,2945115,'INGLES IV',2017),(549,2956956,'INGLES IV',2017),(550,2100207,'INNOVACION DE LA PRACTICA EDUCATIVA',2017),(551,2959396,'INSTRUMENTACION I',2017),(552,9412492,'INSTRUMENTACION INDUSTRIAL',2017),(553,2957964,'INTELIGENCIA ARTIFICIAL CLASICA',2017),(554,2509504,'INTELIGENCIA DE NEGOCIOS',2017),(555,2958249,'INTERFASES HOMBRE-MAQUINA',2017),(556,2129183,'INTERPRETACION Y ARGUMENTACION JURIDICA',2017),(557,2129183,'INTERPRETACION Y ARGUMENTACION JURIDICA',2017),(558,2626195,'INTERVENCION EDUCATIVA',2017),(559,2027631,'INTERVENCION EN CRISIS',2017),(560,2954801,'INTERVENCION EN CRISIS',2017),(561,9613609,'INTERVENCION ORGANIZACIONAL DE LA PSICOLOGIA DEL TRABAJO',2017),(562,9307419,'INTERVENCION ORGANIZACIONAL DE LA PSICOLOGIA DEL TRABAJO',2017),(563,2704021,'INTERVENCION PSICOEDUCATIVA EN SUJETOS ESPECIALES',2017),(564,2321181,'INTRODUCCION A LA COMPUTACION',2017),(565,2509539,'INTRODUCCION A LA COMPUTACION',2017),(566,2509539,'INTRODUCCION A LA COMPUTACION',2017),(567,2832305,'INTRODUCCION A LA INVESTIGACION',2017),(568,2952023,'INTRODUCCION A LA INVESTIGACION SOCIAL',2017),(569,9621768,'INTRODUCCION A LA INVESTIGACION',2017),(570,2953875,'INTRODUCCION A LA INVESTIGACION SOCIAL',2017),(571,8921202,'INTRODUCCION A LA INVESTIGACION',2017),(572,8921202,'INTRODUCCION A LA INVESTIGACION',2017),(573,2822857,'INTRODUCCION A LA INVESTIGACION',2017),(574,2930676,'INTRODUCCION A LA INVESTIGACION',2017),(575,2832305,'INTRODUCCION A LA INVESTIGACION',2017),(576,9709746,'INTRODUCCION A LA JUSTICIA PENAL EN MEXICO',2017),(577,2631849,'INTRODUCCION A LA PSICOLOGIA',2017),(578,2952023,'INTRODUCCION A LA PSICOLOGIA',2017),(579,2706288,'INTRODUCCION A LA PSICOTERAPIA',2017),(580,8613923,'INTRODUCCION AL DISE~O INSTRUCCIONAL (N)',2017),(581,2952023,'INTRODUCCION AL ESTUDIO DE LA FAMILIA',2017),(582,2911205,'INTRODUCCION AL ESTUDIO DE LA FAMILIA',2017),(583,2024772,'INTRODUCCION AL ESTUDIO DEL DERECHO',2017),(584,2917971,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(585,2919699,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(586,2124521,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(587,2919699,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(588,9602372,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(589,2604426,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(590,2832305,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(591,2604426,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(592,2917971,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(593,2919699,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(594,2124521,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(595,2955519,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(596,2310074,'INVESTIGACION APLICADA A METODOS EPIDEMIOLOGICOS',2017),(597,2955519,'INVESTIGACION APLICADA A PROBLEMAS ADMINISTRATIVOS',2017),(598,2949760,'INVESTIGACION DE MERCADOS',2017),(599,2530058,'INVESTIGACION DE MERCADOS',2017),(600,2956085,'INVESTIGACION DE OPERACIONES I',2017),(601,9200711,'INVESTIGACION DE OPERACIONES I',2017),(602,9200711,'INVESTIGACION DE OPERACIONES I',2017),(603,2956642,'INVESTIGACION DE OPERACIONES I',2017),(604,2235455,'INVESTIGACION EPIDEMIOLOGICA APLICADA',2017),(605,2235455,'INVESTIGACION EPIDEMIOLOGICA APLICADA',2017),(606,2639602,'INVESTIGACION PARTICIPATIVA',2017),(607,2950485,'INVESTIGACION Y DESARROLLO I (N)',2017),(608,2414279,'INVESTIGACION Y DESARROLLO II (N)',2017),(609,9510605,'JURISPRUDENCIA',2017),(610,2527839,'JUSTICIA PARA ADOLESCENTES',2017),(611,2027895,'LA FAMILIA EN EL DERECHO',2017),(612,2322277,'LA FAMILIA EN EL DERECHO',2017),(613,2953875,'LA SALUD EN MEXICO',2017),(614,2939363,'LABORATORIO BIOINFORMATICA',2017),(615,2939363,'LABORATORIO BIOINFORMATICA',2017),(616,2619512,'LABORATORIO DE COMPUTO I',2017),(617,2024454,'LABORATORIO DE COMPUTO I',2017),(618,2024454,'LABORATORIO DE COMPUTO I',2017),(619,2024454,'LABORATORIO DE COMPUTO II',2017),(620,2509539,'LABORATORIO DE COMPUTO II',2017),(621,2902095,'LABORATORIO DE COMPUTO III',2017),(622,2949925,'LABORATORIO DE COMPUTO III',2017),(623,9412492,'LABORATORIO DE TEORIA DE CONTROL',2017),(624,9426493,'LEGISLACION APLICADA AL TURISMO',2017),(625,2537516,'LEGISLACION EN ENFERMERIA',2017),(626,2537516,'LEGISLACION EN ENFERMERIA',2017),(627,2024586,'LEGISLACION EN ENFERMERIA',2017),(628,2322277,'LEGISLACION EN ENFERMERIA',2017),(629,2935546,'LEGISLACION EN ENFERMERIA',2017),(630,2322277,'LEGISLACION EN ENFERMERIA',2017),(631,4444444,'LEGISLACION EN ENFERMERIA',2017),(632,2833301,'LENGUA ADICIONAL AL ESPA~OL I',2017),(633,8901236,'LENGUA ADICIONAL AL ESPA~OL II',2017),(634,2833301,'LENGUA ADICIONAL AL ESPA~OL III',2017),(635,2833301,'LENGUA ADICIONAL AL ESPA~OL IV',2017),(636,2949774,'LENGUA EXTRANJERA (NIVEL I)',2017),(637,2949774,'LENGUA EXTRANJERA (NIVEL I)',2017),(638,2949693,'LENGUA EXTRANJERA (NIVEL II)',2017),(639,2949693,'LENGUA EXTRANJERA (NIVEL II)',2017),(640,2951374,'LENGUA EXTRANJERA (NIVEL III)',2017),(641,2951374,'LENGUA EXTRANJERA (NIVEL III)',2017),(642,2949693,'LENGUA EXTRANJERA (NIVEL IV)',2017),(643,2949693,'LENGUA EXTRANJERA (NIVEL IV)',2017),(644,2951374,'LENGUA EXTRANJERA (NIVEL V)',2017),(645,2951374,'LENGUA EXTRANJERA (NIVEL V)',2017),(646,2951374,'LENGUA EXTRANJERA (NIVEL VI)',2017),(647,2951374,'LENGUA EXTRANJERA (NIVEL VI)',2017),(648,2949693,'LENGUA EXTRANJERA (NIVEL VII)',2017),(649,2949693,'LENGUA EXTRANJERA (NIVEL VII)',2017),(650,2949693,'LENGUA EXTRANJERA I',2017),(651,2949693,'LENGUA EXTRANJERA I',2017),(652,2951374,'LENGUA EXTRANJERA I',2017),(653,2956956,'LENGUA EXTRANJERA I',2017),(654,2830035,'LENGUA EXTRANJERA I',2017),(655,2949693,'LENGUA EXTRANJERA II',2017),(656,2956956,'LENGUA EXTRANJERA II',2017),(657,2830035,'LENGUA EXTRANJERA II',2017),(658,2949774,'LENGUA EXTRANJERA II',2017),(659,2949774,'LENGUA EXTRANJERA II',2017),(660,2956956,'LENGUA EXTRANJERA III',2017),(661,2223589,'LENGUA EXTRANJERA III',2017),(662,2415984,'LENGUA EXTRANJERA III',2017),(663,2956956,'LENGUA EXTRANJERA III',2017),(664,2951374,'LENGUA EXTRANJERA IV',2017),(665,2221454,'LENGUA EXTRANJERA IV',2017),(666,2949693,'LENGUA EXTRANJERA IV',2017),(667,2221454,'LENGUA EXTRANJERA IV',2017),(668,8501564,'LENGUA EXTRANJERA V',2017),(669,2949774,'LENGUA EXTRANJERA V',2017),(670,2823101,'LENGUA EXTRANJERA V',2017),(671,2945115,'LENGUA EXTRANJERA V',2017),(672,2235455,'LENGUAJE Y COGNICION',2017),(673,2509504,'LENGUAJES DE SIMULACION',2017),(674,2737922,'LIDERAZGO',2017),(675,2719495,'LIDERAZGO',2017),(676,2321181,'LIDERAZGO Y HABILIDADES DIRECTIVAS',2017),(677,8718288,'LIDERAZGO Y HABILIDADES DIRECTIVAS',2017),(678,2005743,'LIDERAZGO Y HABILIDADES DIRECTIVAS',2017),(679,2737922,'LIDERAZGO Y HABILIDADES DIRECTIVAS',2017),(680,2719495,'LIDERAZGO Y HABILIDADES DIRECTIVAS',2017),(681,2228734,'LINEAMIENTOS GENERALES DE DERECHO PENAL',2017),(682,2228734,'LINEAMIENTOS GENERALES DE DERECHO PENAL',2017),(683,2316838,'LITIGACION ORAL',2017),(684,2316838,'LITIGACION ORAL',2017),(685,2952814,'LOGICA BOOLEANA Y DIFUSA',2017),(686,2948219,'MANEJO DE GRUPO',2017),(687,2813912,'MANEJO DE MINISTRACIONES',2017),(688,2946678,'MANUFACTURA COMPUTARIZADA',2017),(689,2603918,'MARCO JURIDICO EN MATERIA INFORMATICA',2017),(690,9502041,'MATEMATICA DISCRETA',2017),(691,2944085,'MATEMATICAS',2017),(692,9718397,'MATEMATICAS ADMINISTRATIVAS',2017),(693,2952812,'MATEMATICAS DISCRETAS',2017),(694,2957583,'MATEMATICAS DISCRETAS',2017),(695,2106523,'MATEMATICAS FINANCIERAS',2017),(696,2106523,'MATEMATICAS FINANCIERAS',2017),(697,2944085,'MATEMATICAS I',2017),(698,2106442,'MATEMATICAS I',2017),(699,2944085,'MATEMATICAS I',2017),(700,2952812,'MATEMATICAS I',2017),(701,2946729,'MATEMATICAS II',2017),(702,2419424,'MATEMATICAS II',2017),(703,2958767,'MATEMATICAS II',2017),(704,9412492,'MATERIALES Y DISPOSITIVOS ELECTRONICOS',2017),(705,2944085,'MECANICA TEORICA',2017),(706,2944008,'MECANICA TEORICA',2017),(707,2945802,'MECANICA Y TERMODINAMICA',2017),(708,9322507,'MECANICA Y TERMODINAMICA',2017),(709,2705303,'MECANISMOS ALTERNATIVOS DE SOLUCION DE CONTROVERSIAS',2017),(710,2953875,'MEDIACION EN TRABAJO SOCIAL',2017),(711,2953875,'MEDIACION EN TRABAJO SOCIAL',2017),(712,8103259,'MEDIO AMBIENTE Y DESARROLLO SUSTENTABLE',2017),(713,8103259,'MEDIO AMBIENTE Y DESARROLLO SUSTENTABLE',2017),(714,2955474,'MERCADOS FINANCIEROS',2017),(715,2955474,'MERCADOS FINANCIEROS',2017),(716,2033496,'MERCADOTECNIA',2017),(717,2321467,'MERCADOTECNIA',2017),(718,9304878,'MERCADOTECNIA TURISTICA',2017),(719,9304878,'MERCADOTECNIA TURISTICA',2017),(720,9304878,'MERCADOTECNIA TURISTICA',2017),(721,2801647,'METODOLOGIA DE LA INVESTIGACION',2017),(722,2800683,'METODOLOGIA DE LA INVESTIGACION I',2017),(723,2131285,'METODOLOGIA DE LA INVESTIGACION III',2017),(724,2949759,'METODOLOGIA DE LA INVESTIGACION',2017),(725,2612704,'METODOLOGIA DE LA INVESTIGACION',2017),(726,2801647,'METODOLOGIA DE LA INVESTIGACION',2017),(727,2705303,'METODOLOGIA JURIDICA I',2017),(728,2705303,'METODOLOGIA JURIDICA I',2017),(729,2820102,'METODOLOGIA Y PRACTICA DE LA INVESTIGACION',2017),(730,2612704,'METODOLOGIA Y PRACTICA DE LA INVESTIGACION',2017),(731,2213338,'METODOLOGIA Y PRACTICA DE LA INVESTIGACION',2017),(732,8803145,'METODOLOGIA Y PRACTICA DE LA INVESTIGACION',2017),(733,2952024,'METODOS DE INVESTIGACION CUANTITATIVA',2017),(734,2952024,'METODOS DE INVESTIGACION CUANTITATIVA',2017),(735,8803145,'METODOS DE INVESTIGACION CUALITATIVA',2017),(736,9502041,'METODOS DE OPTIMIZACION',2017),(737,2305607,'METODOS Y TECNICAS DEL TRABAJO SOCIAL',2017),(738,2709082,'METROLOGIA',2017),(739,2958249,'MICROELECTRONICA I',2017),(740,2210584,'MICROPROCESADORES',2017),(741,2221373,'MINERIA DE DATOS',2017),(742,2951388,'MODELADO Y ANIMACION 3D',2017),(743,2620294,'MODELOS DE EVALUACION',2017),(744,2200252,'MODELOS DE NEGOCIOS',2017),(745,2953875,'MODELOS Y NIVELES DE INTERVENCION I',2017),(746,2953875,'MODELOS Y NIVELES DE INTERVENCION I',2017),(747,2957752,'MODELOS Y NIVELES DE INTERVENCION II',2017),(748,9718079,'MODELOS Y NIVELES DE INTERVENCION II',2017),(749,2959930,'MODULO INTEGRACION',2017),(750,2946363,'MULTIMEDIA',2017),(751,2026392,'MULTIMEDIA EDUCATIVA I',2017),(752,2943770,'NARRATIVA Y GUION',2017),(753,2952183,'NECESIDADES PSICOEDUCATIVAS ESPECIALES',2017),(754,2704021,'NECESIDADES PSICOEDUCATIVAS ESPECIALES',2017),(755,2952183,'NECESIDADES PSICOEDUCATIVAS ESPECIALES',2017),(756,2952183,'NECESIDADES PSICOEDUCATIVAS EN SUJETOS ESPECIALES',2017),(757,2530058,'NEGOCIOS INTERNACIONALES Y DIFERENCIAS CULTURALES',2017),(758,2235455,'NEUROPSICOLOGIA',2017),(759,2960035,'NEUROPSICOLOGIA',2017),(760,2235455,'NEUROPSICOLOGIA',2017),(761,2946744,'NORMAS INTERNACIONALES DE AUDITORIA',2017),(762,2958906,'NORMAS INTERNACIONALES DE AUDITORIA',2017),(763,2919699,'NORMATIVIDAD SOCIAL Y TRABAJO SOCIAL',2017),(764,2131285,'OPERACION DE PROYECTOS I',2017),(765,2407965,'OPERACION DE PROYECTOS II',2017),(766,2134748,'OPERACION Y PARTICIPACION DE COMITES DE CREDITO',2017),(767,2954900,'ORGANIZACION DE CONGRESOS, CONVENCIONES FERIAS Y EXPOSICIONES',2017),(768,2813912,'ORGANIZACION DE GRUPOS DE INTERES',2017),(769,2960019,'ORIENTACION PARA LA AUTOGESTION DE UN AGRONEGOCIO (SELECCION DE MEJOR ALTERNATIVA)',2017),(770,9806156,'ORIENTACION Y ASESORIA EDUCATIVA',2017),(771,2235455,'ORIENTACION Y ASESORIA EDUCATIVA',2017),(772,2956953,'ORIENTACION,ASESORIA Y TUTORIA',2017),(773,2956953,'ORIENTACION,ASESORIA Y TUTORIA',2017),(774,9806156,'ORIENTACIONES EN INTERVENCIONES CLINICAS PSICOLOGICAS',2017),(775,2957846,'ORIENTACIONES EN INTERVENCIONES CLINICAS PSICOLOGICAS',2017),(776,2960036,'ORIENTACIONES EN PSICOLOGIA SOCIAL',2017),(777,2950486,'ORIENTACIONES EN PSICOLOGIA SOCIAL',2017),(778,2419424,'OSCILACIONES Y ONDAS',2017),(779,2946018,'PARADIGMA DEL TRABAJO SOCIAL',2017),(780,2946018,'PARADIGMA DEL TRABAJO SOCIAL',2017),(781,2216663,'PATRIMONIO CULTURAL',2017),(782,9720731,'PATRIMONIO HISTORICO DE MEXICO',2017),(783,2200252,'PATRIMONIO NATURAL',2017),(784,2705222,'PERSONAS JURIDICAS CIVILES',2017),(785,2950486,'PERSPECTIVAS DE INVESTIGACION PSICOSOCIAL',2017),(786,7813406,'PERSPECTIVAS DE INVESTIGACION PSICOSOCIAL',2017),(787,2631849,'PERSPECTIVAS EN LA INVESTIGACION PSICOSOCIAL',2017),(788,2213338,'PLAN DE MERCADOTECNIA',2017),(789,9029192,'PLANEACION DE LA GESTION Y ADMINISTRACION EDUCATIVA',2017),(790,2945061,'PLANEACION ESTRATEGICA',2017),(791,2521296,'PLANEACION ESTRATEGICA',2017),(792,2948326,'PLANEACION ESTRATEGICA',2017),(793,2737922,'PLANEACION ESTRATEGICA',2017),(794,2955518,'PLANEACION ESTRATEGICA',2017),(795,2948326,'PLANEACION ESTRATEGICA',2017),(796,2947575,'PLANEACION ESTRATEGICA',2017),(797,2634236,'PLANEACION FINANCIERA ESTRATEGICA',2017),(798,2911205,'PLANEACION SOCIAL',2017),(799,2945029,'PLANEACION SOCIAL',2017),(800,2945115,'PLANEACION Y FORMULACION DE PROYECTOS EDUCATIVOS (N)',2017),(801,2024918,'PLANIFICACION TURISTICA',2017),(802,2509458,'PLATAFORMAS OPERATIVAS',2017),(803,2232022,'POLITICAS SOCIALES EN MEXICO',2017),(804,2232022,'POLITICAS SOCIALES EN MEXICO',2017),(805,2213338,'PRACTICA EN LA COORDINACION DE TECNOLOGIAS PARA EL APRENDIZAJE',2017),(806,2129167,'PRACTICA PROFESIONAL FAMILIAR',2017),(807,7502036,'PRACTICA PROFESIONAL PENAL',2017),(808,2102781,'PRACTICAS DE INTERVENCION EDUCATIVA',2017),(809,2911205,'PRACTICAS DE LA GESTION Y ADMINISTRACION EDUCATIVA',2017),(810,2949696,'PRACTICAS DE PSICODIAGNOSTICO DE ADULTOS',2017),(811,2950292,'PRACTICAS EN ACTIVIDADES FISICAS',2017),(812,2138158,'PRACTICAS PROFESIONALES EN PSICOLOGIA SOCIAL',2017),(813,9613609,'PRACTICAS PROFESIONALES SUPERVISADAS DE LA PSICOLOGIA DEL TRABAJO',2017),(814,2954801,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOLOGIA EDUCATIVA',2017),(815,2704021,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOLOGIA EN EDUCACION ESPECIAL',2017),(816,2952032,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOTERAPIA DE ADULTOS',2017),(817,2950484,'PRACTICAS PROFESIONALES SUPERVISADAS DE EVALUACION DE LAS FUNCIONES CEREBRALES DEL ADULTO',2017),(818,2952024,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOTERAPIA DE ADULTOS',2017),(819,9307419,'PRACTICAS PROFESIONALES SUPERVISADAS DE LA PSICOLOGIA DEL TRABAJO',2017),(820,2802112,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOLOGIA EDUCATIVA',2017),(821,2957846,'PRACTICAS PROFESIONALES SUPERVISADAS DE PSICOTERAPIA DE ADULTOS',2017),(822,8803145,'PROBLEMAS SOCIALES CONTEMPORANEOS',2017),(823,2911205,'PROBLEMAS SOCIALES CONTEMPORANEOS',2017),(824,2300087,'PROCESOS DE CAMBIO SOCIOCULTURAL',2017),(825,2931974,'PROCESOS PSICOLOGICOS',2017),(826,2931974,'PROCESOS PSICOLOGICOS',2017),(827,9502041,'PRODUCCION DE IMAGENES',2017),(828,2724154,'PROGRAMACION DE COMPUTADORAS',2017),(829,2724154,'PROGRAMACION DE COMPUTADORAS',2017),(830,2939363,'PROGRAMACION DE COMPUTADORAS',2017),(831,2939363,'PROGRAMACION DE COMPUTADORAS',2017),(832,9811745,'PROGRAMACION DE COMPUTADORAS',2017),(833,9811745,'PROGRAMACION DE COMPUTADORAS',2017),(834,2509539,'PROGRAMACION DE COMPUTADORAS',2017),(835,2509539,'PROGRAMACION DE COMPUTADORAS',2017),(836,2958249,'PROGRAMACION DE MICROSISTEMAS',2017),(837,9811745,'PROGRAMACION ORIENTADA A OBJETOS',2017),(838,9811745,'PROGRAMACION ORIENTADA A OBJETOS',2017),(839,9811745,'PROGRAMACION ORIENTADA A OBJETOS',2017),(840,2223791,'PROGRAMACION WEB',2017),(841,2325357,'PROMOCION Y EVALUACION DE LA PRODUCTIVIDAD',2017),(842,2033496,'PROMOCION Y PUBLICIDAD',2017),(843,2530058,'PROMOCION Y PUBLICIDAD',2017),(844,2960018,'PRONOSTICOS Y PRESUPUESTOS',2017),(845,2960018,'PRONOSTICOS Y PRESUPUESTOS',2017),(846,2948510,'PROPIEDAD INTELECTUAL I: PROTECCION DEL CONOCIMIENTO Y LAS INNOVACIONES',2017),(847,2948510,'PROPIEDAD INTELECTUAL I: PROTECCION DEL CONOCIMIENTO Y LAS INNOVACIONES',2017),(848,2948510,'PROPIEDAD INTELECTUAL II: INSTITUCIONES, COMPETENCIAS Y PROCEDIMIENTOS PARA LA PROTECCION DE LA PROPIEDAD INTELECTUAL',2017),(849,2948510,'PROPIEDAD INTELECTUAL II: INSTITUCIONES, COMPETENCIAS Y PROCEDIMIENTOS PARA LA PROTECCION DE LA PROPIEDAD INTELECTUAL',2017),(850,2401177,'PROTOCOLO',2017),(851,2931974,'PROYECTO DE VIDA',2017),(852,2931974,'PROYECTO DE VIDA',2017),(853,2954798,'PROYECTO I',2017),(854,2954798,'PROYECTO II',2017),(855,2950151,'PROYECTO III',2017),(856,2210584,'PROYECTO IV',2017),(857,2958249,'PROYECTO V',2017),(858,2951386,'PROYECTOS ACUICOLAS',2017),(859,2725959,'PROYECTOS AGRICOLAS',2017),(860,2106523,'PROYECTOS ALTERNATIVOS RURALES',2017),(861,2955267,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO ESCOLAR I',2017),(862,2953875,'PROYECTOS DE INTERVENCION SOCIAL EN  EL AMBITO DE LA SALUD II',2017),(863,2957816,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO EMPRESARIAL I',2017),(864,2955267,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO ESCOLAR II',2017),(865,2953875,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO JURIDICO I',2017),(866,2305607,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO EMPRESARIAL II',2017),(867,2322277,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO JURIDICO II',2017),(868,2027631,'PROYECTOS DE INTERVENCION SOCIAL EN EL AMBITO DE LA SALUD I',2017),(869,2132737,'PROYECTOS DE MICROCONTROLADORES',2017),(870,2944288,'PROYECTOS DE SERVICIOS AMBIENTALES',2017),(871,2944288,'PROYECTOS FORESTALES',2017),(872,9011749,'PROYECTOS PECUARIOS',2017),(873,2236079,'PRUEBA Y MANTENIMIENTO DE SOFTWARE',2017),(874,2604426,'PRUEBAS PREOPERATORIOS DEL AGRONEGOCIO',2017),(875,2956953,'PSICODIAGNOSTICO EN ADULTOS Y ADULTOS MAYORES',2017),(876,2952024,'PSICODIAGNOSTICO EN ADULTOS Y ADULTOS MAYORES',2017),(877,2949696,'PSICODIAGNOSTICO EN LA INFANCIA Y ADOLESCENCIA',2017),(878,2949696,'PSICODIAGNOSTICO EN LA INFANCIA Y ADOLESCENCIA',2017),(879,2952183,'PSICODIAGNOSTICO Y EVALUACION EN EDUCACION ESPECIAL',2017),(880,2952183,'PSICODIAGNOSTICO Y EVALUACION EN EDUCACION ESPECIAL',2017),(881,2417448,'PSICOLOGIA APLICADA AL TURISMO',2017),(882,7813406,'PSICOLOGIA DE LA INTERCULTURALIDAD',2017),(883,2716607,'PSICOLOGIA DE LA SALUD',2017),(884,2952024,'PSICOLOGIA DE LA SALUD',2017),(885,2949696,'PSICOLOGIA DEL DESARROLLO DE LA INFANCIA Y ADOLESCENCIA',2017),(886,2235455,'PSICOLOGIA DEL DESARROLLO,ADULTEZ Y SENECTUD',2017),(887,2952183,'PSICOLOGIA DEL DESARROLLO,ADULTEZ Y SENECTUD',2017),(888,2235455,'PSICOLOGIA DEL DESARROLLO,ADULTEZ Y SENECTUD',2017),(889,2822644,'PSICOLOGIA EDUCATIVA',2017),(890,2931974,'PSICOLOGIA EDUCATIVA',2017),(891,2802112,'PSICOLOGIA EDUCATIVA',2017),(892,2822644,'PSICOLOGIA EDUCATIVA',2017),(893,2822644,'PSICOLOGIA EDUCATIVA',2017),(894,2956953,'PSICOLOGIA EDUCATIVA',2017),(895,2931974,'PSICOLOGIA EDUCATIVA',2017),(896,2954801,'PSICOLOGIA EDUCATIVA APLICADA',2017),(897,2802112,'PSICOLOGIA EDUCATIVA APLICADA',2017),(898,2955650,'PSICOLOGIA EXPERIMENTAL',2017),(899,2952024,'PSICOLOGIA EXPERIMENTAL',2017),(900,2960036,'PSICOLOGIA EXPERIMENTAL II',2017),(901,9613609,'PSICOLOGIA ORGANIZACIONAL',2017),(902,2958880,'PSICOLOGIA ORGANIZACIONAL',2017),(903,2945029,'PSICOLOGIA SOCIAL',2017),(904,2945029,'PSICOLOGIA SOCIAL',2017),(905,2631849,'PSICOLOGIA SOCIAL DE LAS ORGANIZACIONES',2017),(906,2631849,'PSICOLOGIA Y CONTEXTO SOCIO-HISTORICO:VINCULO GLOBAL-LOCAL',2017),(907,2631849,'PSICOLOGIA Y CONTEXTO SOCIO-HISTORICO:VINCULO GLOBAL-LOCAL',2017),(908,2631849,'PSICOLOGIA Y CONTEXTO SOCIO-HISTORICO:PROBLEMATICA NACIONAL',2017),(909,2945715,'PSICOLOGIA Y PEDAGOGIA',2017),(910,2952183,'PSICOLOGIA,PEDAGOGIA Y DIDACTICA',2017),(911,2956953,'PSICOLOGIA,PEDAGOGIA Y DIDACTICA',2017),(912,2706288,'PSICOPATOLOGIA DE ADULTOS NO PSICOTICA',2017),(913,9108033,'PSICOPATOLOGIA DE ADULTOS PSICOTICA',2017),(914,2954801,'PSICOPATOLOGIA INFANTIL',2017),(915,2954801,'PSICOPATOLOGIA INFANTIL',2017),(916,2957846,'PSICOTERAPIA DE ADULTOS',2017),(917,9806156,'PSICOTERAPIA DE ADULTOS',2017),(918,2949696,'PSICOTERAPIA INFANTIL',2017),(919,2949696,'PSICOTERAPIA INFANTIL',2017),(920,2732483,'QUIMICA',2017),(921,2732483,'QUIMICA',2017),(922,2948021,'QUIMICA',2017),(923,2727951,'QUIMICA',2017),(924,2948090,'QUIMICA II',2017),(925,2414279,'RACIONALIDADES PARA LA CONSTRUCCION DEL CONOCIMIENTO',2017),(926,2830035,'REDACCION',2017),(927,2415526,'REDES DE APRENDIZAJE',2017),(928,2902095,'REDES DE BANDA ANCHA',2017),(929,2134578,'REDES DE COMPUTO',2017),(930,2619512,'REDES INALAMBRICAS Y MOVILES',2017),(931,2137534,'REGIMEN FISCAL DE LAS PERSONAS FISICAS',2017),(932,9118462,'REGIMEN FISCAL DE LAS PERSONAS MORALES',2017),(933,2137534,'REGIMEN FISCAL DE LAS PERSONAS FISICAS',2017),(934,2137534,'REGIMEN FISCAL DE LAS PERSONAS MORALES',2017),(935,2833735,'REGISTRO CONTABLE DE LAS ENTIDADES GUBERNAMENTALES',2017),(936,2325357,'REINGENIERIA',2017),(937,2106469,'RESPONSABILIDAD SOCIAL CORPORATIVA',2017),(938,2820102,'RESPONSABILIDAD SOCIAL CORPORATIVA',2017),(939,2949448,'REVENUE MANAGEMENT',2017),(940,2216663,'RUTAS GASTRONOMICAS',2017),(941,2952024,'SALUD MENTAL',2017),(942,2952024,'SALUD MENTAL',2017),(943,2952024,'SALUD MENTAL',2017),(944,2631849,'SALUD MENTAL',2017),(945,2631849,'SALUD MENTAL',2017),(946,2631849,'SALUD MENTAL',2017),(947,2316803,'SALUD PUBLICA',2017),(948,8314233,'SALUD PUBLICA',2017),(949,8314233,'SALUD PUBLICA',2017),(950,2102137,'SALUD Y SUTENTABILIDAD AMBIENTAL',2017),(951,2221373,'SEGURIDAD EN TECNOLOGIAS DE LA INFORMACION',2017),(952,2939363,'SEMINARIO DE ACTUALIZACION TECNOLOGICA II',2017),(953,2954798,'SEMINARIO DE ACTUALIZACION TECNOLOGICA II',2017),(954,2957583,'SEMINARIO DE ACTUALIZACION TECNOLOGICA I',2017),(955,9221425,'SEMINARIO DE ACTUALIZACION TECNOLOGICA I',2017),(956,2906511,'SEMINARIO DE ALGEBRA I',2017),(957,2733064,'SEMINARIO DE FISICA DEL ESTADO SOLIDO',2017),(958,2947728,'SEMINARIO DE FISICA MATEMATICA II',2017),(959,2947728,'SEMINARIO DE FISICA MATEMATICA II',2017),(960,2957583,'SEMINARIO DE FISICA MATEMATICA III',2017),(961,2957583,'SEMINARIO DE FISICA MATEMATICA III',2017),(962,2947728,'SEMINARIO DE FISICA MATEMATICA III',2017),(963,2947728,'SEMINARIO DE FISICA MATEMATICA III',2017),(964,2948090,'SEMINARIO DE FISICOQUIMICA',2017),(965,2906511,'SEMINARIO DE GEOMETRIA II',2017),(966,2906511,'SEMINARIO DE GEOMETRIA II',2017),(967,2955511,'SEMINARIO DE INTEGRACION II',2017),(968,2124521,'SEMINARIO DE INTEGRACION II',2017),(969,2956080,'SEMINARIO DE INTEGRACION II',2017),(970,2930676,'SEMINARIO DE INTEGRACION II',2017),(971,2955518,'SEMINARIO DE INTEGRACION II',2017),(972,2124521,'SEMINARIO DE INTEGRACION II',2017),(973,2953755,'SEMINARIO DE INTEGRACION II',2017),(974,2738309,'SEMINARIO DE INTEGRACION III',2017),(975,2822857,'SEMINARIO DE INTEGRACION III',2017),(976,9602372,'SEMINARIO DE INTEGRACION III',2017),(977,2822857,'SEMINARIO DE INTEGRACION III',2017),(978,2738309,'SEMINARIO DE INTEGRACION III',2017),(979,2946967,'SEMINARIO DE INTEGRACION III',2017),(980,2945061,'SEMINARIO DE INTEGRACION III',2017),(981,2612704,'SEMINARIO DE INVESTIGACION I',2017),(982,2316838,'SEMINARIO DE INVESTIGACION I',2017),(983,2223155,'SEMINARIO DE INVESTIGACION I',2017),(984,2947533,'SEMINARIO DE INVESTIGACION II',2017),(985,2316838,'SEMINARIO DE INVESTIGACION II',2017),(986,2952023,'SEMINARIO DE INVESTIGACION II',2017),(987,2947728,'SEMINARIO DE INVESTIGACION IV',2017),(988,2612704,'SEMINARIO DE INVESTIGACION TURISTICA',2017),(989,2952815,'SEMINARIO DE MECANICA CUANTICA I',2017),(990,2952815,'SEMINARIO DE MECANICA CUANTICA I',2017),(991,2307081,'SEMINARIO DE METODOS MATEMATICOS II',2017),(992,2307081,'SEMINARIO DE METODOS MATEMATICOS II',2017),(993,2419424,'SEMINARIO DE METODOS MATEMATICOS III',2017),(994,2419424,'SEMINARIO DE METODOS MATEMATICOS III',2017),(995,9616675,'SEMINARIO DE METODOS NUMERICOS I',2017),(996,2408511,'SEMINARIO DE METODOS NUMERICOS II',2017),(997,2408511,'SEMINARIO DE METODOS NUMERICOS II',2017),(998,8615527,'SEMINARIO DE METODOS NUMERICOS III',2017),(999,8615527,'SEMINARIO DE METODOS NUMERICOS III',2017),(1000,2727951,'SEMINARIO DE PROYECTO DE INVESTIGACION I',2017),(1001,2946679,'SEMINARIO DE PROYECTO DE INVESTIGACION I',2017),(1002,2948090,'SEMINARIO DE PROYECTO DE INVESTIGACION I',2017),(1003,2724499,'SEMINARIO DE PROYECTO DE INVESTIGACION I',2017),(1004,9616675,'SEMINARIO DE PROYECTO DE INVESTIGACION I',2017),(1005,2941767,'SEMINARIO DE QUIMICA ANALITICA',2017),(1006,2941767,'SEMINARIO DE QUIMICA ANALITICA',2017),(1007,2727951,'SEMINARIO DE TECNICAS DE CARACTERIZACION I',2017),(1008,2727951,'SEMINARIO DE TECNICAS DE CARACTERIZACION I',2017),(1009,7816898,'SEMINARIO DE TESIS',2017),(1010,2210584,'SEMINARIO DE TESIS I',2017),(1011,2106469,'SEMINARIO DE TITULACION',2017),(1012,2027925,'SEMINARIO DE TITULACION EN CONTADURIA PUBLICA',2017),(1013,2902176,'SEMINARIO DE TITULACION EN TECNOLOGIAS DE LA INFORMACION',2017),(1014,2403781,'SEMINARIO DE TITULACION EN TURISMO',2017),(1015,2127229,'SEMINARIO DE TOPOLOGIA I',2017),(1016,2403781,'SEMINARIO SOBRE REGION CENTRO-OCCIDENTE',2017),(1017,2960019,'SENSIBILIZACION DE PRODUCTORES',2017),(1018,2952814,'SENSORES E INSTRUMENTACION',2017),(1019,2952031,'SENSORES E INSTRUMENTACION',2017),(1020,2952031,'SERVOACTUADORES',2017),(1021,8314233,'SEXUALIDAD HUMANA',2017),(1022,2316803,'SEXUALIDAD HUMANA',2017),(1023,2950486,'SEXUALIDAD HUMANA',2017),(1024,2950486,'SEXUALIDAD HUMANA',2017),(1025,2607638,'SIMULACION DE SISTEMAS DIGITALES',2017),(1026,2919834,'SIMULACION Y TECNICAS DE NEGOCIOS',2017),(1027,2726793,'SIMULACION Y TECNICAS DE NEGOCIOS',2017),(1028,2916126,'SISTEMA CONTABLE',2017),(1029,2635968,'SISTEMA DE EJECUCION DE PENAS',2017),(1030,2415526,'SISTEMA DE BASES DE DATOS DISTRIBUIDAS',2017),(1031,2236079,'SISTEMAS DE BASES DE DATOS I',2017),(1032,2236079,'SISTEMAS DE BASES DE DATOS I',2017),(1033,2223791,'SISTEMAS DE BASES DE DATOS II',2017),(1034,2716607,'SISTEMAS DE CLASIFICACION DE SINDROMES Y TRASTORNOS MENTALES',2017),(1035,2960019,'SISTEMAS DE CONTROL DE PROCESOS PRODUCTIVOS',2017),(1036,2709031,'SISTEMAS DE INFORMACION EMPRESARIAL',2017),(1037,2958249,'SISTEMAS DE RADIOFRECUENCIA',2017),(1038,2958249,'SISTEMAS DE RADIOFRECUENCIA',2017),(1039,2509466,'SISTEMAS DE TELECOMUNICACION',2017),(1040,2709031,'SISTEMAS DE TELECOMUNICACION',2017),(1041,2709031,'SISTEMAS DE TIEMPO REAL',2017),(1042,2954798,'SISTEMAS DINAMICOS',2017),(1043,2950151,'SISTEMAS EMBEBIDOS',2017),(1044,2709031,'SISTEMAS EXPERTOS',2017),(1045,2130491,'SISTEMAS FUNCIONALES Y COMPORTAMIENTO',2017),(1046,2948021,'SISTEMAS FUNCIONALES Y COMPORTAMIENTO',2017),(1047,2948021,'SISTEMAS FUNCIONALES Y COMPORTAMIENTO',2017),(1048,9426493,'SISTEMAS JURIDICOS CONTEMPORANEOS Y DE CONVIVENCIA',2017),(1049,7502036,'SISTEMAS JURIDICOS CONTEMPORANEOS Y DE CONVIVENCIA',2017),(1050,2959395,'SISTEMAS LINEALES DE CONTROL',2017),(1051,2945802,'SISTEMAS OPERATIVOS DISTRIBUIDOS',2017),(1052,2952031,'SISTEMAS ROBOTICAS',2017),(1053,2945802,'SISTEMAS ROBOTICAS',2017),(1054,2313871,'SISTEMAS Y PROCEDIMIENTOS PARA COSTOS',2017),(1055,9718079,'SISTEMATIZACION DE LA PRACTICA',2017),(1056,2957816,'SISTEMATIZACION DE LA PRACTICA',2017),(1057,2950292,'SOCIEDAD Y SALUD',2017),(1058,2950292,'SOCIEDAD Y SALUD',2017),(1059,8803145,'SOCIOLOGIA DE LAS ORGANIZACIONES',2017),(1060,2322277,'SOCIOLOGIA JURIDICA',2017),(1061,9417583,'SOCIOLOGIA JURIDICA',2017),(1062,2639602,'SOCIOLOGIA RURAL',2017),(1063,9408207,'SOFTWARE APLICADO I',2017),(1064,9408207,'SOFTWARE APLICADO I',2017),(1065,2223791,'SOFTWARE ESPECIALIZADO',2017),(1066,4444444,'SUPERVISION EN SISTEMAS ELECTRONEUMATICOS',2017),(1067,2952023,'TECNICA DE LA ENTREVISTA',2017),(1068,2952023,'TECNICA DE LA ENTREVISTA',2017),(1069,2957583,'TECNICAS DE CALCULO INTEGRAL',2017),(1070,2401177,'TECNICAS DE INVESTIGACION',2017),(1071,2946729,'TECNICAS DEL CALCULO INTEGRAL',2017),(1072,2951151,'TECNICAS DEL CALCULO INTEGRAL',2017),(1073,2946729,'TECNICAS DEL CALCULO INTEGRAL',2017),(1074,2726793,'TECNOLOGIA FINANCIERA',2017),(1075,2213338,'TECNOLOGIAS DE LA INFORMACION Y LA COMUNICACION APLICADAS A LA EDUCACION (N)',2017),(1076,2946363,'TECNOLOGIAS DE LA INFORMACION',2017),(1077,2619512,'TECNOLOGIAS DE LA INFORMACION',2017),(1078,9408207,'TECNOLOGIAS DE LA INFORMACION',2017),(1079,2619512,'TECNOLOGIAS DE LA INFORMACION',2017),(1080,2952815,'TECNOLOGIAS DE MATERIALES',2017),(1081,2727951,'TECNOLOGIAS DE MATERIALES',2017),(1082,2709082,'TECNOLOGIAS PARA LA GESTION',2017),(1083,2902095,'TELEFONIA',2017),(1084,7806507,'TENDENCIAS Y POLITICAS EDUCATIVAS',2017),(1085,2946679,'TEORIA DE CONTROL',2017),(1086,2959396,'TEORIA DE CONTROL',2017),(1087,2952031,'TEORIA DE CONTROL',2017),(1088,2959396,'TEORIA DE CONTROL',2017),(1089,2946679,'TEORIA DE CONTROL AVANZADO',2017),(1090,2923009,'TEORIA DE LA COMUNICACION',2017),(1091,2931974,'TEORIA DE LA COMUNICACION',2017),(1092,2024772,'TEORIA DE LOS DERECHOS HUMANOS',2017),(1093,9510605,'TEORIA DE LOS DERECHOS HUMANOS',2017),(1094,9709746,'TEORIA DEL CASO I',2017),(1095,7502036,'TEORIA DEL CASO II',2017),(1096,9426493,'TEORIA DEL DERECHO ADMINISTRATIVO',2017),(1097,9426493,'TEORIA DEL DERECHO ADMINISTRATIVO',2017),(1098,2106477,'TEORIA DEL DERECHO CIVIL',2017),(1099,2027917,'TEORIA DEL DERECHO CIVIL',2017),(1100,2203308,'TEORIA DEL DESARROLLO',2017),(1101,2027917,'TEORIA DEL ESTADO',2017),(1102,2322277,'TEORIA DEL ESTADO',2017),(1103,2131293,'TEORIA ECONOMICA',2017),(1104,2949760,'TEORIA ECONOMICA',2017),(1105,9510605,'TEORIA GENERAL DEL PROCESO',2017),(1106,2955267,'TEORIA SOCIAL',2017),(1107,2823101,'TEORIA SOCIOLOGICA I',2017),(1108,2823101,'TEORIA SOCIOLOGICA I',2017),(1109,2800683,'TEORIA SOCIOLOGICA II',2017),(1110,2823101,'TEORIA Y EPISTEMOLOGIA EDUCATIVA',2017),(1111,2956953,'TEORIA Y MANEJO DE GRUPOS',2017),(1112,2956953,'TEORIA Y MANEJO DE GRUPOS',2017),(1113,2958880,'TEORIA Y TECNICA DE LA PSICOLOGIA DEL TRABAJO',2017),(1114,2716607,'TEORIAS DE LA PERSONALIDAD',2017),(1115,2931974,'TEORIAS DE LA PERSONALIDAD',2017),(1116,2507951,'TEORIAS DEL APRENDIZAJE (N)',2017),(1117,2714086,'TEORIAS DEL APRENDIZAJE Y LA EVALUACION',2017),(1118,2138158,'TEORIAS PSICOSOCIALES Y SUBJETIVIDAD',2017),(1119,2138158,'TEORIAS PSICOSOCIALES Y SUBJETIVIDAD',2017),(1120,2956953,'TEORIAS Y DINAMICAS DE LOS GRUPOS',2017),(1121,2945715,'TEORIAS Y DINAMICAS DE LOS GRUPOS',2017),(1122,2954801,'TEORIAS Y FUNDAMENTOS DE LA SALUD ENFERMEDAD MENTAL Y SU PROCESO EN LA INFANCIA Y ADOLESCENCIA',2017),(1123,2945971,'TEORIAS Y FUNDAMENTOS DE LA SALUD-ENFERMEDAD MENTAL Y SU PROCESOS EN EL ADULTO Y ADULTO MAYOR',2017),(1124,2706288,'TEORIAS Y FUNDAMENTOS DE LA SALUD ENFERMEDAD MENTAL Y SU PROCESO EN LA INFANCIA Y ADOLESCENCIA',2017),(1125,2951386,'TEORIAS Y PRINCIPIOS FINANCIEROS',2017),(1126,2955474,'TEORIAS Y PRINCIPIOS FINANCIEROS',2017),(1127,2955846,'TEORIAS Y PROCESO DE ENFERMERIA',2017),(1128,2802112,'TEORIAS Y SISTEMAS CLASICOS EN PSICOLOGIA',2017),(1129,2704021,'TEORIAS Y SISTEMAS CLASICOS EN PSICOLOGIA',2017),(1130,2950485,'TEORIAS Y SISTEMAS CONTEMPORANEOS EN PSICOLOGIA',2017),(1131,2411261,'TERRITORIO,PODER Y GOBERNANZA',2017),(1132,2953606,'TOPICOS DE INGENIERIA BIOMEDICA',2017),(1133,2952399,'TOPICOS SELECTOS DE TECNOLOGIAS I',2017),(1134,2236079,'TOPICOS SELECTOS DE TECNOLOGIAS III',2017),(1135,2725959,'TOPICOS SELECTOS EN AGRONEGOCIOS',2017),(1136,2415526,'TOPICOS SELECTOS DE TECNOLOGIAS II',2017),(1137,2960019,'TOPICOS SELECTOS SERVICIOS AMBIENTALES',2017),(1138,2300087,'TRABAJO DE INVESTIGACION',2017),(1139,2916126,'TRANSFORMACION CONTABLE DE LAS SOCIEDADES',2017),(1140,2235455,'TRANSTORNOS NEUROPSICOLOGICOS BASICOS:ADULTEZ Y SENECTUD',2017),(1141,2950484,'TRANSTORNOS NEUROPSICOLOGICOS BASICOS:NI~EZ Y ADOLESCENCIA',2017),(1142,2235455,'TRANSTORNOS NEUROPSICOLOGICOS BASICOS:ADULTEZ Y SENECTUD',2017),(1143,2950484,'TRANSTORNOS NEUROPSICOLOGICOS BASICOS:NI~EZ Y ADOLESCENCIA',2017),(1144,2235455,'TRANSTORNOS NEUROPSICOLOGICOS BASICOS:ADULTEZ Y SENECTUD',2017),(1145,2950484,'TRASTORNOS DEL LENGUAJE',2017),(1146,9720731,'TURISMO DE NATURALEZA',2017),(1147,2417448,'TURISMO RURAL',2017),(1148,2400065,'UNIVERSIDAD Y SIGLO XXI',2017),(1149,2509415,'UNIVERSIDAD Y SIGLO XXI',2017),(1150,2509415,'UNIVERSIDAD Y SIGLO XXI',2017),(1151,2509415,'UNIVERSIDAD Y SIGLO XXI',2017),(1152,2527693,'UNIVERSIDAD Y SIGLO XXI',2017),(1153,2709082,'USO DE TECNOLOGIAS EN EDUCACION III',2017),(1154,2509415,'USO DE TECNOLOGIAS EN EDUCACION IV',2017),(1155,2902176,'USO DE TECNOLOGIAS EN EDUCACION I',2017),(1156,2509466,'USO DE TECNOLOGIAS EN EDUCACION II',2017),(1157,2957583,'VARIABLE COMPLEJA',2017),(1158,2419424,'VARIABLE COMPLEJA',2017),(1159,2951151,'VARIABLE COMPLEJA',2017),(1160,2959762,'VARIABLE COMPLEJA',2017),(1161,2509466,'VIDEO EDUCATIVO',2017);
/*!40000 ALTER TABLE `ptc_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_plaza`
--

DROP TABLE IF EXISTS `ptc_plaza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_plaza` (
  `id_pla` int(11) NOT NULL AUTO_INCREMENT,
  `plaza_pla` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pla`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_plaza`
--

LOCK TABLES `ptc_plaza` WRITE;
/*!40000 ALTER TABLE `ptc_plaza` DISABLE KEYS */;
INSERT INTO `ptc_plaza` VALUES (1,'Profesor de Asignatura \"A\"'),(2,'Profesor de Asignatura \"B\"'),(3,'Profesor Asistente en el nivel \"A\"'),(4,'Profesor Asistente en el nivel \"B\"'),(5,'Profesor Asistente en el nivel \"C\"'),(6,'Profesor Asociado en el nivel \"A\"'),(7,'Profesor Asociado en el nivel \"B\"'),(8,'Profesor Asociado en el nivel \"C\"'),(9,'Profesor Titular en el nivel \"A\"'),(10,'Profesor Titular en el nivel \"B\"'),(11,'Profesor Titular en el nivel \"C\"'),(12,'Técnico Académico Asistente de nivel \"A\"'),(13,'Técnico Académico Asistente de nivel \"B\"'),(14,'Técnico Académico Asistente de nivel \"C\"'),(15,'Técnico Académico Asociado de nivel \"A\"'),(16,'Técnico Académico Asociado de nivel \"B\"'),(17,'Técnico Académico Asociado de nivel \"C\"'),(18,'Técnico Académico Titular nivel \"A\"'),(19,'Técnico Académico Titular nivel \"B\"'),(20,'Técnico Académico Titular nivel \"C\"');
/*!40000 ALTER TABLE `ptc_plaza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_profesor`
--

DROP TABLE IF EXISTS `ptc_profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_profesor` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `appat` varchar(255) NOT NULL,
  `apmat` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `depto` varchar(255) NOT NULL,
  `academia` varchar(255) NOT NULL,
  `passw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_profesor`
--

LOCK TABLES `ptc_profesor` WRITE;
/*!40000 ALTER TABLE `ptc_profesor` DISABLE KEYS */;
INSERT INTO `ptc_profesor` VALUES (2033496,'FRANCISCO JAVIER','MALDONADO','VIERGEN','fcomv@valles.udg.mx','Profesor Titular en el nivel \"A\"','Departamento de Ciencias Económicas y Administrativas','Academia de Desarrollo de Negocios','2033496'),(2730642,'JOSÉ ROBERTO','LOMELÍ','HUERTA','roberto.lomeli@valles.udg.mxs','Técnico Académico Asociado de nivel \"B\"','Departamento de Ciencias Computacionales e Ingenierías','Academia de Economía','Roberto2500');
/*!40000 ALTER TABLE `ptc_profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc_talleres`
--

DROP TABLE IF EXISTS `ptc_talleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ptc_talleres` (
  `id_tal` int(11) NOT NULL AUTO_INCREMENT,
  `taller_tal` varchar(255) NOT NULL,
  `horas_tal` double NOT NULL,
  `profesores_tal` longtext NOT NULL,
  `evidencia_tal` varchar(500) NOT NULL,
  `year_tal` int(11) NOT NULL,
  `profesor_tal_id` int(11) NOT NULL,
  PRIMARY KEY (`id_tal`),
  KEY `ptc_talleres_profesor_tal_id_7e45b395_fk_ptc_profesor_codigo` (`profesor_tal_id`),
  CONSTRAINT `ptc_talleres_profesor_tal_id_7e45b395_fk_ptc_profesor_codigo` FOREIGN KEY (`profesor_tal_id`) REFERENCES `ptc_profesor` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc_talleres`
--

LOCK TABLES `ptc_talleres` WRITE;
/*!40000 ALTER TABLE `ptc_talleres` DISABLE KEYS */;
INSERT INTO `ptc_talleres` VALUES (1,'Python GUI',22,'LOMELÍ HUERTA JOSÉ ROBERTO','talleres/2017-12-0405:53:19.459716+00:00_2017__2730642_pythoncrashcourse.pdf',2017,2730642),(2,'Mercadotecnía',48,'MALDONADO VIERGEN FRANCISCO JAVIER','talleres/2017-12-0405:55:28.020583+00:00_2017__2730642_progit-scottchacon.pdf',2017,2730642),(3,'Emprendedores',120,'MALDONADO VIERGEN FRANCISCO JAVIER','talleres/2017-12-0405:56:18.268203+00:00_2017__2730642_pythoncrashcourse.pdf',2017,2730642);
/*!40000 ALTER TABLE `ptc_talleres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-04 14:02:01
