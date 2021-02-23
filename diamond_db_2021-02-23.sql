# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.32)
# Database: diamond_db
# Generation Time: 2021-02-23 03:13:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table album_media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `album_media`;

CREATE TABLE `album_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci,
  `album_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `album_media` WRITE;
/*!40000 ALTER TABLE `album_media` DISABLE KEYS */;

INSERT INTO `album_media` (`id`, `image`, `album_id`, `created_at`, `updated_at`, `published_at`, `order`)
VALUES
	(9,'[\"album-media\\/February2021\\/xururVVuJqlFlEjhjeaO.jpg\",\"album-media\\/February2021\\/0soMXPLEUnB7aPwpPysf.jpg\",\"album-media\\/February2021\\/97oBS37Ifo3v0EQ4pYfI.jpg\",\"album-media\\/February2021\\/jlIdCj8eJhy8DmV54oxB.jpg\"]',12,'2021-01-16 12:23:00','2021-02-22 09:16:11','2021-01-16 19:22:00',4),
	(10,'[\"album-media\\/February2021\\/n1ExTsCoLymY39CxEMWY.jpg\",\"album-media\\/February2021\\/sD6LxA182SDuS55Wv4WH.jpg\",\"album-media\\/February2021\\/Rtyygx9oQc8w2SgDu7Aq.jpg\",\"album-media\\/February2021\\/5BHHGbKB79jDNjTzDW1O.jpg\",\"album-media\\/February2021\\/4aP6kjuuSYEYd0oJrM43.jpg\",\"album-media\\/February2021\\/0mJomKWrvw5bEYGbsLoo.jpg\"]',12,'2021-01-16 12:23:00','2021-02-22 09:33:29','2021-01-16 19:23:00',NULL),
	(11,'[\"album-media\\/February2021\\/1PKKyoR69uVJ8oeAGeJm.jpg\",\"album-media\\/February2021\\/Ac2K7EcMUkCL21xFoNlg.jpg\",\"album-media\\/February2021\\/0G0Jx2iqrf0QRTgwtF1w.jpg\",\"album-media\\/February2021\\/oBxzZOoguEIEmKFSO8oc.jpg\"]',13,'2021-01-16 12:23:00','2021-02-23 03:11:24','2021-01-16 19:23:00',NULL),
	(12,'[\"album-media\\/February2021\\/lzxlq4oiBKsapgpfoCUe.jpg\",\"album-media\\/February2021\\/dBCjJHk1UrBYoTrEMtmg.jpg\",\"album-media\\/February2021\\/IDTvkGMCZds3JlPR00yI.jpg\",\"album-media\\/February2021\\/LvpRu6faOE9aqI7FWLw1.jpg\",\"album-media\\/February2021\\/q8PhRUWLGpqIvWsYu2pC.jpg\"]',14,'2021-01-16 12:23:00','2021-02-23 03:11:32','2021-01-16 19:23:00',NULL),
	(13,'[\"album-media\\/February2021\\/Du5YBZ2RMU49vPsceR3v.jpg\",\"album-media\\/February2021\\/z7wo0GaWgjLfmw0TEmp3.jpg\",\"album-media\\/February2021\\/SpXHDFOFBDR74bSBTaQh.jpg\",\"album-media\\/February2021\\/Z2KS3gtZ1S1Oh9kQDQES.jpg\",\"album-media\\/February2021\\/nFd9zlzuoBADAzC73dRc.jpg\",\"album-media\\/February2021\\/FFLskdOM0BnPfgYXMYXe.jpg\",\"album-media\\/February2021\\/JdJ8mdZzlWB5uxM512Kv.jpg\",\"album-media\\/February2021\\/8hseJh1OtiR7WxC8ptai.jpg\",\"album-media\\/February2021\\/9iUrxmdG5UuiHQFvH9OO.jpg\",\"album-media\\/February2021\\/y1Us9SOB4Dken4l7xEtn.jpg\"]',15,'2021-01-16 12:24:00','2021-02-22 10:13:59','2021-01-16 19:23:00',1);

/*!40000 ALTER TABLE `album_media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;

INSERT INTO `albums` (`id`, `name`, `image`, `created_at`, `updated_at`, `video`, `published_at`, `order`, `tag`)
VALUES
	(12,'Ablum 2','albums/February2021/RKLILzlHCz5CdfnyPCtL.jpg','2021-01-16 12:22:00','2021-02-22 09:13:19','Est dolores vero min','2021-01-12 00:15:00',1,'ThanhPho'),
	(13,'Ablum 1','albums/February2021/hRImiu6gwCSGApMUEK72.jpg','2021-01-16 12:22:00','2021-02-23 03:11:49','Esse consequuntur d','2021-01-12 00:15:00',2,'LangMang'),
	(14,'Ablum 3','albums/January2021/JGaHNMzV36WHGTVw0KXA.jpg','2021-01-16 12:22:00','2021-02-22 09:02:06','Sit aut commodo enim','2021-01-12 00:15:00',3,'MuaXuan'),
	(15,'Ablum 4','albums/January2021/q1cM297gGCJjRn2yePQj.jpg','2021-01-16 12:22:00','2021-02-22 09:02:12','Non deserunt archite','2021-01-12 00:15:00',4,'MùaHạ');

/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`)
VALUES
	(1,'Evangeline Langley','tien.luckyfor@gmail.com','Ad sit pariatur Con','Distinctio Eaque ad','2021-01-13 03:16:55','2021-01-13 03:16:55'),
	(28,'Buckminster Craft','zugu@mailinator.com','Quod voluptatum nihi','In quis facere repud','2021-02-04 01:49:36','2021-02-04 01:49:36'),
	(29,'Nola Mosley','jarutab@mailinator.com','Possimus quis simil','Laboris consequuntur','2021-02-04 01:51:02','2021-02-04 01:51:02'),
	(30,'Nola Mosley','jarutab@mailinator.com','Possimus quis simil','Laboris consequuntur','2021-02-04 01:53:57','2021-02-04 01:53:57'),
	(31,'Nola Mosley','jarutab@mailinator.com','Possimus quis simil','Laboris consequuntur','2021-02-04 01:55:00','2021-02-04 01:55:00'),
	(32,'Audra Henderson','hixup@mailinator.com','Vero adipisicing aut','Omnis ad ab magni vo','2021-02-04 01:55:07','2021-02-04 01:55:07'),
	(33,'Tatyana Delaney','hityhadiqu@mailinator.com','Magni similique fugi','Optio sit culpa i','2021-02-04 01:56:37','2021-02-04 01:56:37'),
	(34,'Tatyana Delaney','hityhadiqu@mailinator.com','Magni similique fugi','Optio sit culpa i','2021-02-04 01:58:11','2021-02-04 01:58:11'),
	(55,'Richard Lambert','tacojipe@mailinator.com','Molestias inventore','In et ea aperiam vol','2021-02-05 04:05:32','2021-02-05 04:05:32'),
	(56,'Ian Paul','kosogylide@mailinator.com','Velit quas fuga Est','Temporibus voluptatu','2021-02-22 08:25:19','2021-02-22 08:25:19');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
	(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),
	(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),
	(56,7,'id','text','Id',1,1,1,0,0,0,'{}',1),
	(57,7,'name','text','Name',0,1,1,1,1,1,'{}',2),
	(60,7,'image','image','Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"300\",\"height\":\"300\"}}]}',5),
	(61,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),
	(62,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
	(65,12,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(67,12,'image','multiple_images','Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"300\",\"height\":\"300\"}}]}',3),
	(68,12,'album_id','text','Album Id',0,1,1,1,1,1,'{}',4),
	(69,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
	(70,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
	(71,12,'album_media_belongsto_album_relationship','relationship','albums',0,1,1,1,1,1,'{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"album_media\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(72,7,'video','text','Video url',0,0,0,0,0,0,'{}',8),
	(73,13,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(74,13,'name','text','Name',0,1,1,1,1,1,'{}',2),
	(75,13,'videourl','text','Videourl',0,1,1,1,1,1,'{}',3),
	(76,13,'image','image','Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"300\",\"height\":\"300\"}}]}',4),
	(80,13,'description','text','Description',0,1,1,1,1,1,'{}',6),
	(81,13,'execution_time','date','Execution Time',0,1,1,1,1,1,'{\"format\":\"%d-%m-%Y\"}',7),
	(82,13,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',8),
	(83,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
	(84,14,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(85,14,'name','text','Name',0,1,1,1,1,1,'{}',2),
	(86,14,'email','text','Email',0,1,1,1,1,1,'{}',3),
	(87,14,'subject','text','Subject',0,1,1,1,1,1,'{}',4),
	(88,14,'message','text','Message',0,1,1,1,1,1,'{}',5),
	(89,14,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),
	(90,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
	(91,12,'published_at','timestamp','Published At',0,1,1,1,1,1,'{\"format\":\"%d-%m-%Y\"}',7),
	(92,7,'published_at','timestamp','Published At',0,1,1,1,1,1,'{\"format\":\"%d-%m-%Y\"}',9),
	(93,13,'order','number','Order',0,1,1,1,1,1,'{}',9),
	(94,12,'order','number','Order',0,1,1,1,1,1,'{}',7),
	(95,7,'order','number','Order',0,1,1,1,1,1,'{}',8),
	(96,7,'tag','text','Tag',0,1,1,1,1,1,'{}',9),
	(97,13,'tag','text','Tag',0,1,1,1,1,1,'{}',10);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(7,'albums','albums','Album','Albums',NULL,'App\\Album',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-06 11:34:13','2021-02-22 09:06:33'),
	(9,'album_video','album-video','Album Video','Album Videos',NULL,'App\\AlbumVideo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(10,'album_photo','album-photo','Album Photo','Album Photos',NULL,'App\\AlbumPhoto',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(12,'album_media','album-media','Album Medium','Album Media',NULL,'App\\AlbumMedia',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-08 08:54:25','2021-02-22 09:14:26'),
	(13,'films','films','Film','Films','voyager-video','App\\Film',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-09 20:13:18','2021-01-21 06:27:56'),
	(14,'contacts','contacts','Contact','Contacts',NULL,'App\\Contact',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-13 03:16:19','2021-02-05 04:02:14');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table films
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videourl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;

INSERT INTO `films` (`id`, `name`, `videourl`, `image`, `description`, `execution_time`, `created_at`, `updated_at`, `order`, `tag`)
VALUES
	(7,'Lareina Nicholson','17vYiDOIGFM','films/February2021/NzB5fBe14erW4E4spO6I.jpg','Rem atque tempor est','2003-11-12','2021-01-16 12:25:27','2021-02-04 02:35:37',2,'Tag'),
	(8,'Kristen Watkins','bkMjpEixNrg','films/February2021/URkp6K7rAmHXLa6GiEqT.jpg','Consectetur sunt und','1978-09-17','2021-01-16 12:25:42','2021-02-05 04:04:15',4,'Citys');

/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-01-06 08:57:46','2021-01-09 20:19:56','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,7,'2021-01-06 08:57:46','2021-01-14 21:28:49','voyager.media.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,8,'2021-01-06 08:57:46','2021-01-14 21:28:49','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2021-01-06 08:57:46','2021-01-14 21:28:49',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-01-06 08:57:46','2021-01-09 19:38:36','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-06 08:57:46','2021-01-09 19:38:36','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-01-06 08:57:46','2021-01-09 19:38:36','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-01-06 08:57:46','2021-01-09 19:38:36','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2021-01-06 08:57:46','2021-01-14 21:28:49','voyager.settings.index',NULL),
	(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2021-01-06 08:57:47','2021-01-09 19:38:36','voyager.hooks',NULL),
	(15,1,'Albums','','_self','voyager-camera','#000000',NULL,3,'2021-01-06 11:34:13','2021-01-14 21:28:49','voyager.albums.index','null'),
	(18,1,'Album Media','','_self','voyager-photos','#000000',NULL,4,'2021-01-08 08:54:25','2021-01-16 09:41:23','voyager.album-media.index','null'),
	(19,1,'Films','','_self','voyager-video','#000000',NULL,5,'2021-01-09 20:13:18','2021-01-14 21:28:49','voyager.films.index','null'),
	(20,1,'Contacts','','_self','voyager-mail','#000000',NULL,6,'2021-01-13 03:16:19','2021-01-14 21:28:49','voyager.contacts.index','null'),
	(21,1,'Users','/admin/users','_self','voyager-person','#000000',NULL,2,'2021-01-14 21:28:41','2021-01-14 21:36:55',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2021-01-06 08:57:46','2021-01-12 21:49:14');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_11_30_135954_create_permission_table',1),
	(12,'2016_11_30_141208_create_permission_role_table',1),
	(13,'2016_12_26_201236_data_types__add__server_side',1),
	(14,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(15,'2017_01_14_005015_create_translations_table',1),
	(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(17,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),
	(19,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(21,'2017_08_05_000000_add_group_to_settings_table',1),
	(22,'2017_11_26_013050_add_user_role_relationship',1),
	(23,'2017_11_26_015000_create_user_roles_table',1),
	(24,'2018_03_11_000000_add_user_settings',1),
	(25,'2018_03_14_000000_add_details_to_data_types_table',1),
	(26,'2018_03_16_000000_make_settings_value_nullable',1),
	(27,'2019_08_19_000000_create_failed_jobs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1),
	(68,1),
	(69,1),
	(70,1),
	(71,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(2,'browse_bread',NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(3,'browse_database',NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(4,'browse_media',NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(5,'browse_compass',NULL,'2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(6,'browse_menus','menus','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(7,'read_menus','menus','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(8,'edit_menus','menus','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(9,'add_menus','menus','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(10,'delete_menus','menus','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(11,'browse_roles','roles','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(12,'read_roles','roles','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(13,'edit_roles','roles','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(14,'add_roles','roles','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(15,'delete_roles','roles','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(16,'browse_users','users','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(17,'read_users','users','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(18,'edit_users','users','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(19,'add_users','users','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(20,'delete_users','users','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(21,'browse_settings','settings','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(22,'read_settings','settings','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(23,'edit_settings','settings','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(24,'add_settings','settings','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(25,'delete_settings','settings','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(41,'browse_hooks',NULL,'2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(42,'browse_albums','albums','2021-01-06 11:34:13','2021-01-06 11:34:13'),
	(43,'read_albums','albums','2021-01-06 11:34:13','2021-01-06 11:34:13'),
	(44,'edit_albums','albums','2021-01-06 11:34:13','2021-01-06 11:34:13'),
	(45,'add_albums','albums','2021-01-06 11:34:13','2021-01-06 11:34:13'),
	(46,'delete_albums','albums','2021-01-06 11:34:13','2021-01-06 11:34:13'),
	(47,'browse_album_video','album_video','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(48,'read_album_video','album_video','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(49,'edit_album_video','album_video','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(50,'add_album_video','album_video','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(51,'delete_album_video','album_video','2021-01-06 11:36:15','2021-01-06 11:36:15'),
	(52,'browse_album_photo','album_photo','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(53,'read_album_photo','album_photo','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(54,'edit_album_photo','album_photo','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(55,'add_album_photo','album_photo','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(56,'delete_album_photo','album_photo','2021-01-06 11:36:29','2021-01-06 11:36:29'),
	(57,'browse_album_media','album_media','2021-01-08 08:54:25','2021-01-08 08:54:25'),
	(58,'read_album_media','album_media','2021-01-08 08:54:25','2021-01-08 08:54:25'),
	(59,'edit_album_media','album_media','2021-01-08 08:54:25','2021-01-08 08:54:25'),
	(60,'add_album_media','album_media','2021-01-08 08:54:25','2021-01-08 08:54:25'),
	(61,'delete_album_media','album_media','2021-01-08 08:54:25','2021-01-08 08:54:25'),
	(62,'browse_films','films','2021-01-09 20:13:18','2021-01-09 20:13:18'),
	(63,'read_films','films','2021-01-09 20:13:18','2021-01-09 20:13:18'),
	(64,'edit_films','films','2021-01-09 20:13:18','2021-01-09 20:13:18'),
	(65,'add_films','films','2021-01-09 20:13:18','2021-01-09 20:13:18'),
	(66,'delete_films','films','2021-01-09 20:13:18','2021-01-09 20:13:18'),
	(67,'browse_contacts','contacts','2021-01-13 03:16:19','2021-01-13 03:16:19'),
	(68,'read_contacts','contacts','2021-01-13 03:16:19','2021-01-13 03:16:19'),
	(69,'edit_contacts','contacts','2021-01-13 03:16:19','2021-01-13 03:16:19'),
	(70,'add_contacts','contacts','2021-01-13 03:16:19','2021-01-13 03:16:19'),
	(71,'delete_contacts','contacts','2021-01-13 03:16:19','2021-01-13 03:16:19');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2021-01-06 08:57:46','2021-01-06 08:57:46'),
	(2,'user','Normal User','2021-01-06 08:57:46','2021-01-06 08:57:46');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title',NULL,'','text',10,'Site'),
	(3,'site.logo','Site Logo','settings/February2021/3gMkJPaqXf8Nm7NXbeXe.png','','image',12,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',39,'Site'),
	(6,'admin.title','Admin Title','Trang Sức Kim Cương','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Mô tả Trang','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),
	(21,'aboutpages.about_title','About Title','Trang Sức Của Tôi',NULL,'text',14,'AboutPages'),
	(22,'aboutpages.about_description','About Description','Làm thế nào để bạn lựa chọn được một Studio ảnh cưới với các nhiếp ảnh gia chuyên nghiệp ở tại TPHCM. Admin đã từng trải nghiệm và biết đến rất nhiều Studio ảnh cưới. Mỗi Studio đều mang đến những phong cách chụp ảnh và làm ảnh riêng biệt, không những thế nó còn khác biệt về mặt giá cả. Sau đây Admin sẽ giới thiệu cho các bạn một số Studio chụp ảnh cưới đẹp và chất lượng nhất TPHCM, mang lại những bức ảnh chất lừ ấn tượng cùng với đó là giá cả cũng phải chăng',NULL,'text_area',15,'AboutPages'),
	(23,'aboutpages.about_image','About Image','settings/January2021/OEE5iYWMOq2CPHMgJ1gg.jpg',NULL,'image',16,'AboutPages'),
	(24,'aboutpages.about_bg_image','About Background Image','settings/January2021/dL7TK4Ede8ZxD58gs9H1.jpg',NULL,'image',17,'AboutPages'),
	(25,'menu.menu_logo','Menu Logo','settings/February2021/Uqtm6ypN6kLAwVJV6bfb.png',NULL,'image',20,'Menu'),
	(27,'menu.menu_copyright','Copy Right','Bàn Quyền Thuộc Về © Black Diamond. <br> All Rights Reserved',NULL,'text',25,'Menu'),
	(30,'menu.menu_avatar_description','Avatar Description','Chào Mừng Bạn Đến Studio <br>  Của Chúng Tôi',NULL,'text',24,'Menu'),
	(32,'menu.menu_facebook_link','Menu Link Facebook','https://www.facebook.com/',NULL,'text',26,'Menu'),
	(33,'menu.menu_pinterest_link','Menu Link Pinterest','https://www.pinterest.com/',NULL,'text',27,'Menu'),
	(34,'menu.menu_instagram_link','Menu Link Instagram','https://www.instagram.com/',NULL,'text',28,'Menu'),
	(35,'menu.menu_avatar','Menu Avatar','settings/February2021/XV9AcMTfD3fd5sq4GPXL.jpg',NULL,'image',18,'Menu'),
	(37,'menu.avatar_title','Avatar Title','Xin Chào Bạn !!',NULL,'text',22,'Menu'),
	(39,'contacts.contacts_title','Contacts Title','Liên Hệ Với Chúng Tôi',NULL,'text',29,'Contacts'),
	(40,'contacts.contacts_des','Contacts Description','Đã qua rồi cái thời muốn có một bộ ảnh đẹp là phải chuẩn bị kỳ công, ra ngoại thành, tìm địa điểm chụp có mây gió cây cối xinh đẹp, vác theo lỉnh kỉnh nào đạo cụ nào quần áo… rồi nhé. Bây giờ, ngoài những sự lựa chọn thoải mái như siêu thị “sống ảo”, đường phố, quán cafe… thì giới trẻ còn có thêm 1 loạt các studio trong nhà vô cùng xinh xắn, đáng yêu, đúng kiểu “1 mét vuông chụp được 1 bộ ảnh”.',NULL,'text_area',30,'Contacts'),
	(41,'contacts.contact_phone','Contacts Phone','0707039495',NULL,'text',32,'Contacts'),
	(43,'contacts.contacts_addr','Contacts Address','228/2 Nguyễn Hồng Đào,p10,Tân Bình, TP.Hồ Chí Minh',NULL,'text',31,'Contacts'),
	(45,'contacts.contacts_youtube','Contacts Youtube Link','https://www.youtube.com/',NULL,'text',36,'Contacts'),
	(46,'contacts.contacts_insta','Contacts Instagram Link','https://www.instagram.com/?hl=en',NULL,'text',37,'Contacts'),
	(47,'contacts.contacts_mail','Contacts Mail','hainguyenhai0066@gmail.com',NULL,'text',34,'Contacts'),
	(48,'contacts.contacts_fb','Contacts Facebook Link','https://www.facebook.com/',NULL,'text',35,'Contacts'),
	(49,'contacts.contacts_map','Contacts Map','<div style=\"width: 100%\"><iframe width=\"100%\" height=\"600\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=250%20A%20nguy%E1%BB%85n%20h%E1%BB%93ng%20%C4%91%C3%A0o+(oke%20oke%20oke)&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\"></iframe><a href=\"https://www.maps.ie/route-planner.htm\">Plan A Journey</a></div>',NULL,'text_area',38,'Contacts'),
	(50,'site.favicon','Site Icon Favicon','',NULL,'image',13,'Site'),
	(51,'contacts.contacts_mail_title','Contacts Mail Title','Thông Báo Gửi Mail Thành Công',NULL,'text',40,'Contacts'),
	(53,'contacts.constacts_mail_des','Contacts Mail Description','Chúng Tôi sẽ liên hệ lại',NULL,'text',41,'Contacts');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'data_types','display_name_singular',5,'pt','Post','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(2,'data_types','display_name_singular',6,'pt','Página','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(4,'data_types','display_name_singular',4,'pt','Categoria','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(5,'data_types','display_name_singular',2,'pt','Menu','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(6,'data_types','display_name_singular',3,'pt','Função','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(7,'data_types','display_name_plural',5,'pt','Posts','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(8,'data_types','display_name_plural',6,'pt','Páginas','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(10,'data_types','display_name_plural',4,'pt','Categorias','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(11,'data_types','display_name_plural',2,'pt','Menus','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(12,'data_types','display_name_plural',3,'pt','Funções','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(13,'categories','slug',1,'pt','categoria-1','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(14,'categories','name',1,'pt','Categoria 1','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(15,'categories','slug',2,'pt','categoria-2','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(16,'categories','name',2,'pt','Categoria 2','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(17,'pages','title',1,'pt','Olá Mundo','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(18,'pages','slug',1,'pt','ola-mundo','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(20,'menu_items','title',1,'pt','Painel de Controle','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(21,'menu_items','title',2,'pt','Media','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(22,'menu_items','title',12,'pt','Publicações','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(23,'menu_items','title',3,'pt','Utilizadores','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(24,'menu_items','title',11,'pt','Categorias','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(25,'menu_items','title',13,'pt','Páginas','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(26,'menu_items','title',4,'pt','Funções','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(27,'menu_items','title',5,'pt','Ferramentas','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(28,'menu_items','title',6,'pt','Menus','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(29,'menu_items','title',7,'pt','Base de dados','2021-01-06 08:57:47','2021-01-06 08:57:47'),
	(30,'menu_items','title',10,'pt','Configurações','2021-01-06 08:57:47','2021-01-06 08:57:47');

/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Admin','hainguyenhai0066@gmail.com','users/February2021/e3jOvCfQXT8XIkC3hPNK.jpg',NULL,'$2y$10$iPUQoOm8DdSypjydi8uRguxTKNZtLSy4OEJYOkC17cY2f5kcPjbJ6','bWMhvLI1pKa30QBxOpicAgaMJ94jLsiHkhvKiRu1lbMoGMtfx2z9AWd5STr7','{\"locale\":\"en\"}','2021-01-06 08:57:46','2021-02-23 03:11:11'),
	(2,1,'hải nguyễn','hainguyen@t2gcorp.com','users/January2021/JvJsyJPBkTBXnJ6qkxYi.jpg',NULL,'$2y$10$Yj4SRnbL7JdjqQVNiukk4eXvum/LWYSnBR3k1b1Rhb27yz1xVx2zy','u33o1QJ3feQFbe1LxXmwRk3KElbkwAeRXd4XPCdayfGBCSz9EqzkIPrQQKS6','{\"locale\":\"en\"}','2021-01-17 17:50:24','2021-02-05 04:05:26'),
	(3,1,'hải nguyễn','hai12345@gmail.com','users/February2021/PWgW9BNY8N6NIvXiIXbX.jpg',NULL,'$2y$10$2PvQuM8d2K9pPDAFsMlVxuf8J7uIkWXatXYPJSRIW.NLXhjNiWTwK',NULL,'{\"locale\":\"en\"}','2021-02-23 03:10:40','2021-02-23 03:10:40');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
