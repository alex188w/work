-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: work2_db
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `aero_line_works`
--

DROP TABLE IF EXISTS `aero_line_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aero_line_works` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aero_line_works`
--

LOCK TABLES `aero_line_works` WRITE;
/*!40000 ALTER TABLE `aero_line_works` DISABLE KEYS */;
/*!40000 ALTER TABLE `aero_line_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aero_lines`
--

DROP TABLE IF EXISTS `aero_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aero_lines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gazoprovod_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aero_lines_gazoprovod_id_foreign` (`gazoprovod_id`),
  CONSTRAINT `aero_lines_gazoprovod_id_foreign` FOREIGN KEY (`gazoprovod_id`) REFERENCES `gazoprovods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aero_lines`
--

LOCK TABLES `aero_lines` WRITE;
/*!40000 ALTER TABLE `aero_lines` DISABLE KEYS */;
INSERT INTO `aero_lines` VALUES (138,'ВЛ-10 кВ № 1 п/ст \"Шитовская\", фидер “Уралтрансгаз” –  РРС 9/19','10.2',1,'2025-03-20 08:22:00','2025-03-24 13:42:18'),(139,'ВЛ-10 кв № 2 п/ст \"Школьная\" -  п. Таватуй отпайка на РРС 9/19','8.1',1,'2025-03-20 08:27:27','2025-03-20 08:27:27'),(140,'ВЛ-10 кВ № 3 п/ст. \"Школьная\" – о/л “Таватуй\" - отпайка на УКЗ № 106, 105Б','3.5',1,'2025-03-20 08:28:00','2025-03-20 08:30:52'),(141,'ВЛ-6 кВ № 4 ТП № 53 п. В-Нейвинск – отпайка на УКЗ','25.9',1,'2025-03-20 08:30:06','2025-03-20 08:30:06'),(142,'ВЛ-6 кВ № 5 ТП-16 – ТП-39 «Склад кислот» – ф.  СКЗ № 98','1.56',1,'2025-03-20 08:32:00','2025-03-27 06:34:35'),(143,'ВЛ-6 кВ № 6 Цем. завод – «Профилакторий» отпайка на УКЗ № 97А, 97Б РЛНД-10','4.36',1,'2025-03-20 08:39:00','2025-03-27 06:34:51'),(144,'ВЛ-6 кВ № 7 п/ст «Быньговский» – «Телевышка» отпайка на УКЗ № 3-1','0.04',1,'2025-03-20 08:40:18','2025-03-20 08:40:18'),(145,'ВЛ-10 кВ № 8 п/ст. «Анатольская» – «Телевышка», ф. \"Никель\" отпайка на УКЗ № 94, 94А','5.0',1,'2025-03-20 08:41:00','2025-03-27 06:37:20'),(146,'ВЛ 10 кВ № 9 п/ст. «Анатольская» – «Телевышка», ф. «Шайтанка» отпайка на УКЗ № 4','0.12',1,'2025-03-20 08:42:13','2025-03-20 08:42:13'),(147,'ВЛ 10 кВ № 10 п/ст  «Старатель» - д/о «Руш», отпайка на УКЗ № 4-1','0.03',1,'2025-03-20 08:43:05','2025-03-20 08:43:05'),(148,'ВЛ-0,4 кВ № 11 Блок очистных сооружений завода \"Уралхимпласт\" – УКЗ № 5А','0.73',1,'2025-03-20 08:43:53','2025-03-20 08:43:53'),(149,'ВЛ-10 кВ № 12 д. Ленёвка - д/о \"Ленёвский\", отпайка на УКЗ № 91','1.0',1,'2025-03-20 08:45:23','2025-03-20 08:45:23'),(150,'ВЛ-10 кВ № 13 д. Ленёвка - д/о \"Ленёвский\", отпайка на УКЗ № 91','0.03',1,'2025-03-20 08:47:06','2025-03-20 08:47:06'),(151,'ВЛ-6 кВ № 14 Коллективный сад № 15 отпайка на УКЗ № 88, 88А, 87, 1 КРН - 10','12.8',1,'2025-03-20 08:49:39','2025-03-20 08:49:39'),(152,'ВЛ-6 кВ № 15 п/ст Евстюниха – п. Дальний, отпайка на УКЗ № 85','0.03',1,'2025-03-20 08:50:41','2025-03-20 08:50:41'),(153,'ВЛ-0.4 кВ № 16 Арт. Скважина – ГРС  п. Н-Рудянка, отпайка на УКЗ № 3, ГО на ВТГРЭС','1.5',1,'2025-03-21 06:46:58','2025-03-21 06:46:58'),(154,'ВЛ-6 кВ № 17 КМК – «Шигирская насосная – 2», Отпайка на УКЗ №4 ГО на ВТГРЭС','2.0',1,'2025-03-21 06:47:50','2025-03-21 06:47:50'),(155,'ВЛ-0,4 кВ № 18 Гаражи» –  «Свалка» отпайка на УКЗ № 3А ГО к г.г. В. Н. Салда','0.01',1,'2025-03-21 06:48:52','2025-03-21 06:48:52'),(156,'ВЛ-10кв № 19 п/ст. \"Хвойная\" – ф. \"Газопровод\" -  УКЗ 2,3 ГО к ГРС г. Алапаевск','2.7',1,'2025-03-21 06:49:36','2025-03-21 06:49:36'),(157,'ВЛ-0.4 кВ № 20 \"КС - Очистные» - отпайка на УКЗ № 102','1.5',1,'2025-03-21 06:51:23','2025-03-21 06:51:23'),(158,'ВЛ 6кВ № 21 ТП-79 УВЗ - . к/с \"Меркурий\" АООТ \"Дина\" – отпайка на УКЗ № 4-2','0.03',1,'2025-03-21 06:52:11','2025-03-21 06:52:11'),(159,'ВЛ-10 кВ № 22 РП 26 УВЗ, ф.  \"Птицефабрика\"– отпайка на УКЗ № 4-3','0.03',1,'2025-03-21 06:52:56','2025-03-21 06:52:56'),(160,'ВЛ-10 кВ № 23 п/ст. \"Ясашная\"  ф. \"Газопровод\" – УКЗ № 4, 4-1, 5, 6, 7, 8 ГО к ГРС г. Алапаевск','24.7',1,'2025-03-21 06:53:45','2025-03-21 06:53:45'),(161,'ВЛ-6 кВ № 24 продольного эл. снабжения ж/д  - отпайка на УКЗ № 103','0.02',1,'2025-03-21 06:55:02','2025-03-21 06:55:02'),(162,'ВЛ-6 кВ № 25 продольного эл. снабжения ж/д  - отпайка на УКЗ № 97, РЛНД-10','0.02',1,'2025-03-21 06:56:06','2025-03-21 06:56:06'),(163,'ВЛ-0,4 кВ № 26 ст. Ива – отпайка на УКЗ № 2 ГО на г.г В.Н. Салда','0.03',1,'2025-03-21 06:56:57','2025-03-21 06:56:57'),(164,'ВЛ-6 кВ № 27 п. Молодежный – отпайка на УКЗ № 2А ГО к гг. В.Н. Салда','0.03',1,'2025-03-21 06:58:37','2025-03-21 06:58:37'),(165,'ВЛ-10 кВ № 28 ГРС Алапаевск – отп. на УКЗ 10, 11','12.7',1,'2025-03-21 06:59:38','2025-03-21 06:59:38'),(166,'ВЛ-0,23 кВ № 29 продольного электроснабжения э/с Ж/Д - отп. на УКЗ № 4, 5, 6 ГО к г.г. Первоуральск, Ревда','2.4',1,'2025-03-21 07:00:23','2025-03-21 07:00:23'),(167,'ВЛ-10 кВ № 30 РРС 9/19 Селен, отп. на УКЗ № 1, 2 ГО к г.г. Первоуральск, Ревда','5.1',1,'2025-03-21 07:01:12','2025-03-21 07:01:12'),(168,'ВЛ-0,23 кВ № 31 к/с п. Таватуй, отп. на УКЗ № 3 ГО к г.г. Первоуральск, Ревда','0.55',1,'2025-03-21 07:02:32','2025-03-21 07:02:32'),(169,'ВЛ-0,23 кВ № 32 ф.УКЗ № 1 ГО к ГРС Калиново','0.096',1,'2025-03-21 07:05:14','2025-03-21 07:05:14'),(170,'КЛ – 10 кВ № 33 п/ст Шитовская – РРС 9/19','0.085',1,'2025-03-21 07:05:00','2025-03-21 07:07:11'),(171,'КЛ – 6 кВ № 34 КМК – Шигирская насосная-2, Отпайка на УКЗ № 4 ГО на ВТГРЭС','0.057',1,'2025-03-21 07:06:00','2025-03-21 08:39:01');
/*!40000 ALTER TABLE `aero_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('voyager_menu_admin','O:23:\"TCG\\Voyager\\Models\\Menu\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"menus\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";}s:11:\"\0*\0original\";a:4:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"admin\";s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"parent_items\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:16:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:1;s:7:\"menu_id\";i:1;s:5:\"title\";s:9:\"Dashboard\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-boat\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:1;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:17:\"voyager.dashboard\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:2;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Media\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-images\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:5;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.media.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Users\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Users\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:14:\"voyager-person\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:3;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.users.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:4;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-lock\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:2;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:4;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";N;s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:5;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Tools\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-tools\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:9;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";N;s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:6;s:7:\"menu_id\";i:1;s:5:\"title\";s:12:\"Menu Builder\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-list\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:10;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.menus.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:1;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:7;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Database\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-data\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:11;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:22:\"voyager.database.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:2;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:8;s:7:\"menu_id\";i:1;s:5:\"title\";s:7:\"Compass\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:15:\"voyager-compass\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:12;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:21:\"voyager.compass.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:3;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:9;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"BREAD\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:13:\"voyager-bread\";s:5:\"color\";N;s:9:\"parent_id\";i:5;s:5:\"order\";i:13;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:19:\"voyager.bread.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:5;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:10;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Settings\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:16:\"voyager-settings\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:14;s:10:\"created_at\";s:19:\"2025-02-09 14:23:17\";s:10:\"updated_at\";s:19:\"2025-02-09 14:23:17\";s:5:\"route\";s:22:\"voyager.settings.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:6;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Gazoprovods\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:19;s:10:\"created_at\";s:19:\"2025-02-09 17:06:24\";s:10:\"updated_at\";s:19:\"2025-02-09 17:06:24\";s:5:\"route\";s:25:\"voyager.gazoprovods.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:17;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Gazoprovods\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:19;s:10:\"created_at\";s:19:\"2025-02-09 17:06:24\";s:10:\"updated_at\";s:19:\"2025-02-09 17:06:24\";s:5:\"route\";s:25:\"voyager.gazoprovods.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:7;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Ustanovkas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:20;s:10:\"created_at\";s:19:\"2025-02-09 17:07:58\";s:10:\"updated_at\";s:19:\"2025-02-09 17:07:58\";s:5:\"route\";s:24:\"voyager.ustanovkas.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:18;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Ustanovkas\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:20;s:10:\"created_at\";s:19:\"2025-02-09 17:07:58\";s:10:\"updated_at\";s:19:\"2025-02-09 17:07:58\";s:5:\"route\";s:24:\"voyager.ustanovkas.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:8;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:19;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Categories\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:18:\"voyager-categories\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:8;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:24:\"voyager.categories.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:9;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:20;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Posts\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:12:\"voyager-news\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:6;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:19:\"voyager.posts.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:10;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:21;s:7:\"menu_id\";i:1;s:5:\"title\";s:5:\"Pages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";s:17:\"voyager-file-text\";s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:7;s:10:\"created_at\";s:19:\"2025-02-14 17:22:53\";s:10:\"updated_at\";s:19:\"2025-02-14 17:22:53\";s:5:\"route\";s:19:\"voyager.pages.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:11;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"User Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:21;s:10:\"created_at\";s:19:\"2025-02-25 19:21:52\";s:10:\"updated_at\";s:19:\"2025-02-25 19:21:52\";s:5:\"route\";s:24:\"voyager.user-roles.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:22;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"User Roles\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:21;s:10:\"created_at\";s:19:\"2025-02-25 19:21:52\";s:10:\"updated_at\";s:19:\"2025-02-25 19:21:52\";s:5:\"route\";s:24:\"voyager.user-roles.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:12;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Permissions\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:22;s:10:\"created_at\";s:19:\"2025-02-26 20:23:38\";s:10:\"updated_at\";s:19:\"2025-02-26 20:23:38\";s:5:\"route\";s:25:\"voyager.permissions.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:23;s:7:\"menu_id\";i:1;s:5:\"title\";s:11:\"Permissions\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:22;s:10:\"created_at\";s:19:\"2025-02-26 20:23:38\";s:10:\"updated_at\";s:19:\"2025-02-26 20:23:38\";s:5:\"route\";s:25:\"voyager.permissions.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:13;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:24;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Drenages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:23;s:10:\"created_at\";s:19:\"2025-03-13 15:40:19\";s:10:\"updated_at\";s:19:\"2025-03-13 15:40:19\";s:5:\"route\";s:22:\"voyager.drenages.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:24;s:7:\"menu_id\";i:1;s:5:\"title\";s:8:\"Drenages\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:23;s:10:\"created_at\";s:19:\"2025-03-13 15:40:19\";s:10:\"updated_at\";s:19:\"2025-03-13 15:40:19\";s:5:\"route\";s:22:\"voyager.drenages.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:14;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Protectors\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:24;s:10:\"created_at\";s:19:\"2025-03-19 10:10:04\";s:10:\"updated_at\";s:19:\"2025-03-19 10:10:04\";s:5:\"route\";s:24:\"voyager.protectors.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:26;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Protectors\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:24;s:10:\"created_at\";s:19:\"2025-03-19 10:10:04\";s:10:\"updated_at\";s:19:\"2025-03-19 10:10:04\";s:5:\"route\";s:24:\"voyager.protectors.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}i:15;O:27:\"TCG\\Voyager\\Models\\MenuItem\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:10:\"menu_items\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:27;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Aero Lines\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:25;s:10:\"created_at\";s:19:\"2025-03-20 11:14:18\";s:10:\"updated_at\";s:19:\"2025-03-20 11:14:18\";s:5:\"route\";s:24:\"voyager.aero-lines.index\";s:10:\"parameters\";N;}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:27;s:7:\"menu_id\";i:1;s:5:\"title\";s:10:\"Aero Lines\";s:3:\"url\";s:0:\"\";s:6:\"target\";s:5:\"_self\";s:10:\"icon_class\";N;s:5:\"color\";N;s:9:\"parent_id\";N;s:5:\"order\";i:25;s:10:\"created_at\";s:19:\"2025-03-20 11:14:18\";s:10:\"updated_at\";s:19:\"2025-03-20 11:14:18\";s:5:\"route\";s:24:\"voyager.aero-lines.index\";s:10:\"parameters\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"children\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:20:\"\0*\0translatorMethods\";a:1:{s:4:\"link\";s:14:\"translatorLink\";}s:15:\"\0*\0translatable\";a:1:{i:0;s:5:\"title\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}',1745061258);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2025-02-14 14:22:53','2025-02-14 14:22:53'),(2,NULL,1,'Category 2','category-2','2025-02-14 14:22:53','2025-02-14 14:22:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Name',1,1,1,1,1,1,'{}',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'{}',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(47,10,'id','text','Id',1,1,1,1,1,1,'{}',1),(48,10,'name','text','Name',1,1,1,1,1,1,'{}',2),(49,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(50,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(51,11,'id','text','Id',1,1,1,1,1,1,'{}',1),(52,11,'name','text','Name',1,1,1,1,1,1,'{}',2),(53,11,'km','text','Km',1,1,1,1,1,1,'{}',3),(54,11,'gazoprovod_id','text','Gazoprovod Id',1,1,1,1,1,1,'{}',4),(55,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(56,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(57,10,'km','text','Km',1,1,1,1,1,1,'{}',5),(58,10,'inv_№','text','Inv №',1,1,1,1,1,1,'{}',6),(59,12,'id','number','ID',1,0,0,0,0,0,NULL,1),(60,12,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(61,12,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(62,12,'name','text','Name',1,1,1,1,1,1,NULL,4),(63,12,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(64,12,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(65,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(66,13,'id','number','ID',1,0,0,0,0,0,NULL,1),(67,13,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(68,13,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(69,13,'title','text','Title',1,1,1,1,1,1,NULL,4),(70,13,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(71,13,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(72,13,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(73,13,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(74,13,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(75,13,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(76,13,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(77,13,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(78,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(79,13,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(80,13,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(81,14,'id','number','ID',1,0,0,0,0,0,NULL,1),(82,14,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(83,14,'title','text','Title',1,1,1,1,1,1,NULL,3),(84,14,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(85,14,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(86,14,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(87,14,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(88,14,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(89,14,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(90,14,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(91,14,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(92,14,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(93,19,'user_id','text','User Id',1,1,1,1,1,1,'{}',1),(94,19,'role_id','text','Role Id',1,1,1,1,1,1,'{}',2),(95,23,'id','text','Id',1,1,1,1,1,1,'{}',1),(96,23,'key','text','Key',1,1,1,1,1,1,'{}',2),(97,23,'table_name','text','Table Name',0,1,1,1,1,1,'{}',3),(98,23,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(99,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(100,24,'id','text','Id',1,1,1,1,1,1,'{}',1),(101,24,'name','text','Name',1,1,1,1,1,1,'{}',2),(102,24,'km','text','Km',1,1,1,1,1,1,'{}',3),(103,24,'gazoprovod_id','text','Gazoprovod Id',1,1,1,1,1,1,'{}',4),(104,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(105,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(106,26,'id','text','Id',1,1,1,1,1,1,'{}',1),(107,26,'name','text','Name',1,1,1,1,1,1,'{}',2),(108,26,'km','text','Km',1,1,1,1,1,1,'{}',3),(109,26,'gazoprovod_id','text','Gazoprovod Id',1,1,1,1,1,1,'{}',4),(110,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(111,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(112,27,'id','text','Id',1,1,1,1,1,1,'{}',1),(113,27,'name','text','Name',1,1,1,1,1,1,'{}',2),(114,27,'km','text','Km',1,1,1,1,1,1,'{}',3),(115,27,'gazoprovod_id','text','Gazoprovod Id',1,1,1,1,1,1,'{}',4),(116,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(117,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2025-02-09 11:23:17','2025-02-25 16:14:12'),(10,'gazoprovods','gazoprovods','Gazoprovod','Gazoprovods',NULL,'App\\Models\\Gazoprovod',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}','2025-02-09 14:06:24','2025-02-12 14:41:17'),(11,'ustanovkas','ustanovkas','Ustanovka','Ustanovkas',NULL,'App\\Models\\Ustanovka',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}','2025-02-09 14:07:58','2025-02-09 14:09:02'),(12,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2025-02-14 14:22:52','2025-02-14 14:22:52'),(13,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2025-02-14 14:22:53','2025-02-14 14:22:53'),(14,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2025-02-14 14:22:53','2025-02-14 14:22:53'),(19,'user_roles','user-roles','User Role','User Roles',NULL,'App\\Models\\UserRole',NULL,'UserRole',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2025-02-25 16:21:52','2025-02-26 17:27:48'),(23,'permissions','permissions','Permission','Permissions',NULL,'TCG\\Voyager\\Models\\Permission',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2025-02-26 17:23:38','2025-02-26 17:23:38'),(24,'drenages','drenages','Drenage','Drenages',NULL,'App\\Models\\Drenage',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2025-03-13 12:40:19','2025-03-13 12:40:19'),(26,'protectors','protectors','Protector','Protectors',NULL,'App\\Models\\Protector',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2025-03-19 07:10:04','2025-03-19 07:38:43'),(27,'aero_lines','aero-lines','Aero Line','Aero Lines',NULL,'App\\Models\\AeroLine',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2025-03-20 08:14:18','2025-03-20 08:14:18');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drenage_works`
--

DROP TABLE IF EXISTS `drenage_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drenage_works` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drenage_works`
--

LOCK TABLES `drenage_works` WRITE;
/*!40000 ALTER TABLE `drenage_works` DISABLE KEYS */;
/*!40000 ALTER TABLE `drenage_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drenages`
--

DROP TABLE IF EXISTS `drenages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drenages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gazoprovod_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drenages_gazoprovod_id_foreign` (`gazoprovod_id`),
  CONSTRAINT `drenages_gazoprovod_id_foreign` FOREIGN KEY (`gazoprovod_id`) REFERENCES `gazoprovods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drenages`
--

LOCK TABLES `drenages` WRITE;
/*!40000 ALTER TABLE `drenages` DISABLE KEYS */;
INSERT INTO `drenages` VALUES (96,'УДЗ № 103 СРТО','796,5',2,'2025-03-13 12:42:00','2025-03-14 07:05:35'),(97,'УДЗ № 103 Св-к-Н.Тагил','2269,5',1,'2025-03-13 12:43:00','2025-03-14 07:05:46'),(98,'УДЗ № 97 СРТО','779,3',2,'2025-03-13 12:43:00','2025-03-14 07:05:53'),(99,'УДЗ № 97 Св-ск-Н.Тагил','2288,8',1,'2025-03-13 12:44:00','2025-03-14 07:05:59'),(100,'УДЗ № 4-1 СРТО','773',2,'2025-03-13 12:44:00','2025-03-14 07:06:06'),(101,'УДЗ № 4-1 Св-ск-Н.Тагил','2296,9',1,'2025-03-13 12:45:00','2025-03-14 07:06:12'),(102,'УДЗ № 5 СРТО','742',2,'2025-03-13 12:46:00','2025-03-14 07:06:20'),(103,'УДЗ № 5 Св-ск-Н.Тагил','2307,8',1,'2025-03-13 12:48:00','2025-03-14 07:06:28'),(104,'УДЗ № 6 Св-ск-Н.Тагил','2339',1,'2025-03-13 12:49:00','2025-03-14 07:06:36'),(105,'УДЗ № 6А Св-ск-Н.Тагил','2335',1,'2025-03-13 12:50:00','2025-03-14 07:06:43'),(106,'УДЗ № 92','739,7',2,'2025-03-13 12:52:00','2025-03-14 07:06:52'),(107,'УДЗ № 90','735',2,'2025-03-13 12:52:00','2025-03-14 07:07:00'),(108,'УДЗ № 1 В.Тагил','1,9',9,'2025-03-13 12:53:00','2025-03-14 07:07:08'),(109,'УДЗ № 2 В.Тагил','4,6',9,'2025-03-13 12:53:00','2025-03-14 07:07:17'),(110,'УДЗ № 1 В.Н. Салда','2,4',15,'2025-03-13 12:54:00','2025-03-14 07:07:25'),(111,'УДЗ № 2 В.Н. Салда','8,5',15,'2025-03-13 12:54:00','2025-03-14 07:07:31'),(112,'УДЗ № 3 В.Н. Салда','10,9',15,'2025-03-13 12:55:00','2025-03-14 07:07:38'),(113,'УДЗ № 4 В.Н. Салда','32,9',15,'2025-03-13 12:55:00','2025-03-14 07:07:45'),(114,'УДЗ № 5 В.Н. Салда','39',15,'2025-03-13 12:56:00','2025-03-14 07:07:53'),(115,'УДЗ № 1 ГРС-1 Н.Тагил','0,8',14,'2025-03-13 12:56:00','2025-03-14 07:08:02'),(116,'УДЗ № 1 Алапаевск','1,8',21,'2025-03-13 12:57:00','2025-03-14 07:08:11'),(117,'УДЗ № 2 Алапаевск','7,5',21,'2025-03-13 12:57:00','2025-03-14 07:08:19'),(118,'УДЗ № 3 Алапаевск','20.3',21,'2025-03-13 12:58:00','2025-03-14 07:08:27'),(119,'УДЗ № 4 Алапаевск','32.3',21,'2025-03-13 12:58:00','2025-03-14 07:08:37'),(120,'УДЗ № 5 Алапаевск','45.7',21,'2025-03-13 12:59:00','2025-03-14 07:08:48'),(121,'УДЗ № 6 Алапаевск','57.1',21,'2025-03-13 12:59:00','2025-03-14 07:09:04'),(122,'УДЗ № 7 Алапаевск','62.7',21,'2025-03-13 13:00:00','2025-03-14 07:09:14'),(123,'УДЗ № 1 Ревда, Первоуральск','12',23,'2025-03-13 13:01:00','2025-03-14 07:09:22'),(124,'УДЗ № 2 Ревда, Первоуральск','13',23,'2025-03-13 13:01:00','2025-03-14 07:09:30'),(125,'УДЗ № 2А Ревда, Первоуральск','13',24,'2025-03-13 13:01:00','2025-03-14 07:09:38');
/*!40000 ALTER TABLE `drenages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gazoprovods`
--

DROP TABLE IF EXISTS `gazoprovods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gazoprovods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inv_№` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gazoprovods`
--

LOCK TABLES `gazoprovods` WRITE;
/*!40000 ALTER TABLE `gazoprovods` DISABLE KEYS */;
INSERT INTO `gazoprovods` VALUES (1,'МАГИСТРАЛЬНЫЙ ГАЗОПРОВОД ЕКАТЕРИНБУРГ – НИЖНИЙ ТАГИЛ','2025-02-12 14:39:00','2025-02-13 17:18:05','145,7','000032'),(2,'МАГИСТРАЛЬНЫЙ ГАЗОПРОВОД СРТО – УРАЛ 2 НИТКА','2025-02-12 14:42:00','2025-02-13 17:18:16','159','000033'),(3,'МАГИСТРАЛЬНЫЙ ГАЗОПРОВОД ИГРИМ-СЕРОВ','2025-02-12 14:43:00','2025-02-13 17:18:26','14.7','000035'),(4,'ГAЗОПРОВОД ПOДBOДЯЩИИ K PPC 8/18','2025-02-12 14:43:36','2025-02-12 14:43:36','0.6','140568'),(5,'ГАЗОПРОВОД ПОДВОДЯЩИЙ К РРС 9/19','2025-02-12 14:44:10','2025-02-12 14:44:10','1.2','140567'),(6,'ГAЗOПPOBOД-OTBOД K ГPC ОЗДОРОВИТЕЛЬНОГО ЛАГЕРЯ TABATУЙ','2025-02-12 14:44:46','2025-02-12 14:44:46','2.1','027900'),(7,'ГAЗOПPOBOД-OTBOД K ГPC П. BЕРХ-HEЙBИHCK - 1 HИTKA','2025-02-12 14:45:35','2025-02-12 14:45:35','8.2','027888'),(8,'ГAЗOПPOBOД-OTBOД K ГРС П. BЕРХ-HEЙBИHCK - 2 HИTKA','2025-02-12 14:46:07','2025-02-12 14:46:07','8.7','027887'),(9,'ГAЗOПPOBOД-OTBOД K ГРС Г. BEPXHИЙ TAГИЛ (ВТГРЭС)','2025-02-12 14:46:00','2025-02-13 14:59:23','15.2','027891'),(10,'ГАЗОПРОВОД-ОТВОД К ГРС Г.КИРОВГРАД','2025-03-06 08:26:04','2025-03-06 08:26:04','3.0','027894'),(11,'ГАЗОПРОВОД-ОТВОД К ГРС Г.НЕВЬЯНСКА','2025-03-06 08:26:52','2025-03-06 08:26:52','4.9','027899'),(12,'ГАЗОПРОВОД-ОТВОД К ГРС П. НОВОАСБЕСТ','2025-03-06 08:27:42','2025-03-06 08:27:42','9.8','027903'),(13,'ГАЗОПРОВОД-ОТВОД К ГРС С. НИКОЛО-ПАВЛОВСКОЕ','2025-03-06 08:41:25','2025-03-06 08:41:25','0.8','027904'),(14,'ГАЗОПРОВОД-ОТВОД К ГРС-1 Н. ТАГИЛ','2025-03-06 08:42:44','2025-03-06 08:42:44','3.2','027909'),(15,'ГАЗОПРОВОД К Г.Г. В.САЛДА Н.САЛДА (0-41 КМ)','2025-03-06 08:44:00','2025-03-06 08:44:00','41','027910'),(16,'ГАЗОПРОВОД-ОТВОД К ГРС П. САЛКА','2025-03-06 08:44:42','2025-03-06 08:44:42','0.2','027911'),(17,'ГАЗОПРОВОД-ОТВОД К ГРС П.СВОБОДНЫЙ','2025-03-06 08:45:32','2025-03-06 08:45:32','0.2','027913'),(18,'ГАЗОПРОВОД-ОТВОД К ГРС Г. ВЕРХНЯЯ САЛДА','2025-03-06 08:46:19','2025-03-06 08:46:19','0.4','027916'),(19,'ГАЗОПРОВОД-ОТВОД К ГРС Г. НИЖНЯЯ САЛДА','2025-03-06 08:46:59','2025-03-06 08:46:59','0.3','027919'),(20,'ГАЗОПРОВОД-ОТВОД К ГРС-2 Г. НИЖНИЙ ТАГИЛ','2025-03-06 08:47:55','2025-03-06 08:47:55','7.4','027921'),(21,'ГАЗОПРОВОД-ОТВОД К Г. АЛАПАЕВСК','2025-03-06 08:48:39','2025-03-06 08:48:39','65.2','231905'),(22,'ГАЗОПРОВОД К ГРС ПРОМПЛОЩАДКИ НЕВЬЯНСКОГО ЛПУМГ','2025-03-06 08:49:32','2025-03-06 08:49:32','0.32','140569'),(23,'ГАЗОПРОВОД К Г.Г. РЕВДА, ПЕРВОУРАЛЬСК 1 НИТКА','2025-03-06 08:50:26','2025-03-06 08:50:26','30.2','027871'),(24,'ГАЗОПРОВОД К Г.Г. РЕВДА, ПЕРВОУРАЛЬСК 2 НИТКА','2025-03-06 08:51:03','2025-03-06 08:51:03','30.2','027872'),(25,'ГАЗОПРОВОД-ОТВОД КАЛИНОВСКОГО ХИМ. ЗАВОДА П/Я-87','2025-03-06 08:52:12','2025-03-06 08:52:12','5.4','027873');
/*!40000 ALTER TABLE `gazoprovods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2025-02-09 11:23:17','2025-02-09 11:23:17',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2025-02-09 11:23:17','2025-02-09 11:23:17','voyager.settings.index',NULL),(17,1,'Gazoprovods','','_self',NULL,NULL,NULL,19,'2025-02-09 14:06:24','2025-02-09 14:06:24','voyager.gazoprovods.index',NULL),(18,1,'Ustanovkas','','_self',NULL,NULL,NULL,20,'2025-02-09 14:07:58','2025-02-09 14:07:58','voyager.ustanovkas.index',NULL),(19,1,'Categories','','_self','voyager-categories',NULL,NULL,8,'2025-02-14 14:22:53','2025-02-14 14:22:53','voyager.categories.index',NULL),(20,1,'Posts','','_self','voyager-news',NULL,NULL,6,'2025-02-14 14:22:53','2025-02-14 14:22:53','voyager.posts.index',NULL),(21,1,'Pages','','_self','voyager-file-text',NULL,NULL,7,'2025-02-14 14:22:53','2025-02-14 14:22:53','voyager.pages.index',NULL),(22,1,'User Roles','','_self',NULL,NULL,NULL,21,'2025-02-25 16:21:52','2025-02-25 16:21:52','voyager.user-roles.index',NULL),(23,1,'Permissions','','_self',NULL,NULL,NULL,22,'2025-02-26 17:23:38','2025-02-26 17:23:38','voyager.permissions.index',NULL),(24,1,'Drenages','','_self',NULL,NULL,NULL,23,'2025-03-13 12:40:19','2025-03-13 12:40:19','voyager.drenages.index',NULL),(26,1,'Protectors','','_self',NULL,NULL,NULL,24,'2025-03-19 07:10:04','2025-03-19 07:10:04','voyager.protectors.index',NULL),(27,1,'Aero Lines','','_self',NULL,NULL,NULL,25,'2025-03-20 08:14:18','2025-03-20 08:14:18','voyager.aero-lines.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2025-02-09 11:23:17','2025-02-09 11:23:17');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_02_09_111554_create_gazoprovods_table',1),(6,'2016_01_01_000000_add_voyager_user_fields',2),(7,'2016_01_01_000000_create_data_types_table',2),(8,'2016_05_19_173453_create_menu_table',2),(9,'2016_10_21_190000_create_roles_table',2),(10,'2016_10_21_190000_create_settings_table',2),(11,'2016_11_30_135954_create_permission_table',2),(12,'2016_11_30_141208_create_permission_role_table',2),(13,'2016_12_26_201236_data_types__add__server_side',2),(14,'2017_01_13_000000_add_route_to_menu_items_table',2),(15,'2017_01_14_005015_create_translations_table',2),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(17,'2017_03_06_000000_add_controller_to_data_types_table',2),(18,'2017_04_21_000000_add_order_to_data_rows_table',2),(19,'2017_07_05_210000_add_policyname_to_data_types_table',2),(20,'2017_08_05_000000_add_group_to_settings_table',2),(21,'2017_11_26_013050_add_user_role_relationship',2),(22,'2017_11_26_015000_create_user_roles_table',2),(23,'2018_03_11_000000_add_user_settings',2),(24,'2018_03_14_000000_add_details_to_data_types_table',2),(25,'2018_03_16_000000_make_settings_value_nullable',2),(26,'2025_02_09_132438_create_products_table',3),(27,'2025_02_09_133602_create_people_table',4),(28,'2025_02_09_134719_create_gazoprovods_table',5),(29,'2025_02_09_135242_create_ustanovkas_table',6),(30,'2025_02_10_164823_create_ukz_1_table',7),(31,'2025_02_10_165259_create_ukz_2_table',7),(32,'2025_02_10_165308_create_ukz_3_table',7),(33,'2025_02_11_140636_create_ukz_4_table',8),(34,'2025_02_11_140647_create_ukz_5_table',8),(35,'2025_02_11_140704_create_ukz_6_table',8),(36,'2025_02_11_140717_create_ukz_7_table',8),(37,'2025_02_11_153621_create_ukz_3_table',9),(38,'2025_02_12_143537_add_column_gazoprovod_table',10),(39,'2025_02_12_143940_add_column_gazoprovod2_table',11),(40,'2025_02_13_174204_create_ukz_2_table',12),(41,'2016_01_01_000000_create_pages_table',13),(42,'2016_01_01_000000_create_posts_table',13),(43,'2016_02_15_204651_create_categories_table',13),(44,'2017_04_11_000000_alter_post_nullable_fields_table',13),(45,'2025_02_24_160442_add_field_auto',14),(46,'2025_03_01_173406__create_ukz_1_table',15),(47,'2025_03_04_092149_create_ukz_3_table',16),(48,'2025_03_04_092239_create_ukz_4_table',16),(49,'2025_03_04_092240_create_ukz_5_table',16),(50,'2025_03_04_092240_create_ukz_6_table',16),(51,'2025_03_04_092305_create_ukz_7_table',16),(52,'2025_03_04_092305_create_ukz_8_table',16),(53,'2025_03_04_092306_create_ukz_9_table',16),(54,'2025_03_04_095830_create_ukz_10_table',17),(55,'2025_03_04_095830_create_ukz_11_table',17),(56,'2025_03_04_095830_create_ukz_12_table',17),(57,'2025_03_04_095855_create_ukz_13_table',17),(58,'2025_03_04_095855_create_ukz_14_table',17),(59,'2025_03_04_095855_create_ukz_15_table',17),(60,'2025_03_04_095916_create_ukz_16_table',17),(61,'2025_03_04_095916_create_ukz_17_table',17),(62,'2025_03_04_095916_create_ukz_18_table',17),(63,'2025_03_04_095938_create_ukz_19_table',17),(64,'2025_03_04_095938_create_ukz_20_table',17),(65,'2025_03_04_095938_create_ukz_21_table',17),(66,'2025_03_04_100156_create_ukz_22_table',18),(67,'2025_03_04_100156_create_ukz_23_table',18),(68,'2025_03_04_100156_create_ukz_24_table',18),(69,'2025_03_04_100218_create_ukz_25_table',18),(70,'2025_03_04_100218_create_ukz_26_table',18),(71,'2025_03_04_100218_create_ukz_27_table',18),(72,'2025_03_04_100241_create_ukz_28_table',18),(73,'2025_03_04_100241_create_ukz_29_table',18),(74,'2025_03_04_100242_create_ukz_30_table',18),(75,'2025_03_04_100303_create_ukz_31_table',18),(76,'2025_03_04_100303_create_ukz_32_table',18),(77,'2025_03_04_100303_create_ukz_33_table',18),(78,'2025_03_07_131406__create_ukz_34_table',19),(79,'2025_03_07_131406__create_ukz_35_table',19),(80,'2025_03_07_131406__create_ukz_36_table',19),(81,'2025_03_07_131407__create_ukz_37_table',19),(82,'2025_03_07_131407__create_ukz_38_table',19),(83,'2025_03_07_131443__create_ukz_39_table',19),(84,'2025_03_07_131443__create_ukz_40_table',19),(85,'2025_03_07_131443__create_ukz_41_table',19),(86,'2025_03_07_131443__create_ukz_42_table',19),(87,'2025_03_07_131443__create_ukz_43_table',19),(88,'2025_03_07_132119__create_ukz_44_table',20),(89,'2025_03_07_132119__create_ukz_45_table',20),(90,'2025_03_07_132119__create_ukz_46_table',20),(91,'2025_03_07_132119__create_ukz_47_table',20),(92,'2025_03_07_132120__create_ukz_48_table',20),(93,'2025_03_07_132150__create_ukz_49_table',20),(94,'2025_03_07_132151__create_ukz_50_table',20),(95,'2025_03_07_132151__create_ukz_51_table',20),(96,'2025_03_07_132151__create_ukz_52_table',20),(97,'2025_03_07_132151__create_ukz_53_table',20),(98,'2025_03_07_132224__create_ukz_54_table',20),(99,'2025_03_07_132225__create_ukz_55_table',20),(100,'2025_03_07_132225__create_ukz_56_table',20),(101,'2025_03_07_132225__create_ukz_57_table',20),(102,'2025_03_07_132225__create_ukz_58_table',20),(103,'2025_03_07_144757__create_ukz_59_table',21),(104,'2025_03_07_144757__create_ukz_60_table',21),(105,'2025_03_07_144757__create_ukz_61_table',21),(106,'2025_03_07_144757__create_ukz_62_table',21),(107,'2025_03_07_144757__create_ukz_63_table',21),(108,'2025_03_07_144825__create_ukz_64_table',21),(109,'2025_03_07_144825__create_ukz_65_table',21),(110,'2025_03_07_144825__create_ukz_66_table',21),(111,'2025_03_07_144825__create_ukz_67_table',21),(112,'2025_03_07_144826__create_ukz_68_table',21),(113,'2025_03_07_144854__create_ukz_69_table',21),(114,'2025_03_07_144855__create_ukz_70_table',21),(115,'2025_03_07_144855__create_ukz_71_table',21),(116,'2025_03_07_144855__create_ukz_72_table',21),(117,'2025_03_07_144855__create_ukz_73_table',21),(118,'2025_03_07_145341__create_ukz_74_table',22),(119,'2025_03_07_145341__create_ukz_75_table',22),(120,'2025_03_07_145341__create_ukz_76_table',22),(121,'2025_03_07_145341__create_ukz_77_table',22),(122,'2025_03_07_145341__create_ukz_78_table',22),(123,'2025_03_07_145415__create_ukz_79_table',22),(124,'2025_03_07_145415__create_ukz_80_table',22),(125,'2025_03_07_145415__create_ukz_81_table',22),(126,'2025_03_07_145415__create_ukz_82_table',22),(127,'2025_03_07_145415__create_ukz_83_table',22),(128,'2025_03_07_145441__create_ukz_84_table',22),(129,'2025_03_07_145441__create_ukz_85_table',22),(130,'2025_03_07_145441__create_ukz_86_table',22),(131,'2025_03_07_145441__create_ukz_87_table',22),(132,'2025_03_07_145441__create_ukz_88_table',22),(133,'2025_03_07_145511__create_ukz_89_table',22),(134,'2025_03_07_145511__create_ukz_90_table',22),(135,'2025_03_07_145511__create_ukz_91_table',22),(136,'2025_03_07_145511__create_ukz_92_table',22),(137,'2025_03_07_145511__create_ukz_93_table',22),(138,'2025_03_07_145527__create_ukz_94_table',22),(139,'2025_03_07_145527__create_ukz_95_table',22),(140,'2025_03_13_152803_create_drenages_table',23),(141,'2025_03_13_153707_create_drenage_works_table',23),(142,'2025_03_13_171102_create_udz_1_table',24),(143,'2025_03_14_101714_create_udz_96_table',25),(144,'2025_03_18_173129_create_protectors_table',26),(145,'2025_03_18_173147_create_protector_works_table',26),(146,'2025_03_18_174321_create_upz_126_table',26),(147,'2025_03_18_175411_create_protectors_table',27),(148,'2025_03_18_180958__create_upz_126_table',28),(149,'2025_03_19_105401__create_upz_127_table',29),(150,'2025_03_19_105401__create_upz_128_table',29),(151,'2025_03_19_105401__create_upz_129_table',29),(152,'2025_03_19_105401__create_upz_130_table',29),(153,'2025_03_19_105401__create_upz_131_table',29),(154,'2025_03_19_105402__create_upz_132_table',29),(155,'2025_03_19_105402__create_upz_133_table',29),(156,'2025_03_19_105402__create_upz_134_table',29),(157,'2025_03_19_105402__create_upz_135_table',29),(158,'2025_03_19_105402__create_upz_136_table',29),(159,'2025_03_19_105403__create_upz_137_table',29),(160,'2025_03_20_110651_create_aero_lines_table',30),(161,'2025_03_20_110749_create_aero_line_works_table',30),(162,'2025_03_23_133812__create_wl_138_table',31),(163,'2025_03_25_110550__create_wl_139_table',32),(164,'2025_03_25_110550__create_wl_140_table',32),(165,'2025_03_25_110551__create_wl_141_table',32),(166,'2025_03_25_110551__create_wl_142_table',32),(167,'2025_03_25_110551__create_wl_143_table',32),(168,'2025_03_25_110551__create_wl_144_table',32),(169,'2025_03_25_110551__create_wl_145_table',32),(170,'2025_03_25_110552__create_wl_146_table',32),(171,'2025_03_25_110552__create_wl_147_table',32),(172,'2025_03_25_110552__create_wl_148_table',32),(173,'2025_03_25_110552__create_wl_149_table',32),(174,'2025_03_25_110552__create_wl_151_table',32),(175,'2025_03_25_111237__create_wl_150_table',33),(176,'2025_03_25_111237__create_wl_152_table',33),(177,'2025_03_25_111237__create_wl_153_table',33),(178,'2025_03_25_111238__create_wl_154_table',33),(179,'2025_03_25_111238__create_wl_155_table',33),(180,'2025_03_25_111238__create_wl_156_table',33),(181,'2025_03_25_111238__create_wl_157_table',33),(182,'2025_03_25_111238__create_wl_158_table',33),(183,'2025_03_25_111239__create_wl_159_table',33),(184,'2025_03_25_111239__create_wl_160_table',33),(185,'2025_03_25_111239__create_wl_161_table',33),(186,'2025_03_25_111239__create_wl_162_table',33),(187,'2025_03_25_111632__create_wl_163_table',33),(188,'2025_03_25_111632__create_wl_164_table',33),(189,'2025_03_25_111633__create_wl_165_table',33),(190,'2025_03_25_111633__create_wl_167_table',33),(191,'2025_03_25_111633__create_wl_168_table',33),(192,'2025_03_25_111633__create_wl_169_table',33),(193,'2025_03_25_111633__create_wl_170_table',33),(194,'2025_03_25_111634__create_wl_171_table',33),(195,'2025_03_25_111834__create_wl_166_table',33),(196,'2025_03_25_113515__create_udz_97_table',34),(197,'2025_03_25_113515__create_udz_98_table',34),(198,'2025_03_25_113515__create_udz_99_table',34),(199,'2025_03_25_113516__create_udz_100_table',34),(200,'2025_03_25_113516__create_udz_101_table',34),(201,'2025_03_25_113516__create_udz_102_table',34),(202,'2025_03_25_113516__create_udz_103_table',34),(203,'2025_03_25_113517__create_udz_104_table',34),(204,'2025_03_25_113517__create_udz_105_table',34),(205,'2025_03_25_113517__create_udz_106_table',34),(206,'2025_03_25_113517__create_udz_107_table',34),(207,'2025_03_25_113518__create_udz_108_table',34),(208,'2025_03_25_114018__create_udz_109_table',35),(209,'2025_03_25_114019__create_udz_110_table',35),(210,'2025_03_25_114019__create_udz_111_table',35),(211,'2025_03_25_114019__create_udz_112_table',35),(212,'2025_03_25_114019__create_udz_113_table',35),(213,'2025_03_25_114019__create_udz_114_table',35),(214,'2025_03_25_114020__create_udz_115_table',35),(215,'2025_03_25_114020__create_udz_116_table',35),(216,'2025_03_25_114020__create_udz_117_table',35),(217,'2025_03_25_114020__create_udz_118_table',35),(218,'2025_03_25_114021__create_udz_119_table',35),(219,'2025_03_25_114021__create_udz_120_table',35),(220,'2025_03_25_114021__create_udz_121_table',35),(221,'2025_03_25_114021__create_udz_122_table',35),(222,'2025_03_25_114021__create_udz_123_table',35),(223,'2025_03_25_114022__create_udz_124_table',35),(224,'2025_03_25_114022__create_udz_125_table',35);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2025-02-14 14:22:53','2025-02-14 14:22:53');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,3),(5,1),(5,3),(6,1),(6,3),(7,1),(7,3),(8,1),(8,3),(9,1),(9,3),(10,1),(10,3),(11,1),(11,3),(12,1),(12,3),(13,1),(13,3),(14,1),(14,3),(15,1),(15,3),(16,1),(16,3),(17,1),(17,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(25,3),(41,1),(41,3),(42,1),(42,3),(43,1),(43,3),(44,1),(44,3),(45,1),(45,3),(56,1),(56,3),(57,1),(57,3),(58,1),(58,3),(59,1),(59,3),(60,1),(60,3),(61,1),(61,3),(62,1),(62,3),(63,1),(63,3),(64,1),(64,3),(65,1),(65,3),(66,1),(66,3),(67,1),(67,3),(68,1),(68,3),(69,1),(69,3),(70,1),(70,3),(71,1),(71,3),(72,1),(72,3),(73,1),(73,3),(74,1),(74,3),(75,1),(75,3),(76,1),(76,3),(77,1),(77,3),(78,1),(78,3),(79,1),(79,3),(80,1),(80,3),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(2,'browse_bread',NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(3,'browse_database',NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(4,'browse_media',NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(5,'browse_compass',NULL,'2025-02-09 11:23:17','2025-02-09 11:23:17'),(6,'browse_menus','menus','2025-02-09 11:23:17','2025-02-09 11:23:17'),(7,'read_menus','menus','2025-02-09 11:23:17','2025-02-09 11:23:17'),(8,'edit_menus','menus','2025-02-09 11:23:17','2025-02-09 11:23:17'),(9,'add_menus','menus','2025-02-09 11:23:17','2025-02-09 11:23:17'),(10,'delete_menus','menus','2025-02-09 11:23:17','2025-02-09 11:23:17'),(11,'browse_roles','roles','2025-02-09 11:23:17','2025-02-09 11:23:17'),(12,'read_roles','roles','2025-02-09 11:23:17','2025-02-09 11:23:17'),(13,'edit_roles','roles','2025-02-09 11:23:17','2025-02-09 11:23:17'),(14,'add_roles','roles','2025-02-09 11:23:17','2025-02-09 11:23:17'),(15,'delete_roles','roles','2025-02-09 11:23:17','2025-02-09 11:23:17'),(16,'browse_users','users','2025-02-09 11:23:17','2025-02-09 11:23:17'),(17,'read_users','users','2025-02-09 11:23:17','2025-02-09 11:23:17'),(18,'edit_users','users','2025-02-09 11:23:17','2025-02-09 11:23:17'),(19,'add_users','users','2025-02-09 11:23:17','2025-02-09 11:23:17'),(20,'delete_users','users','2025-02-09 11:23:17','2025-02-09 11:23:17'),(21,'browse_settings','settings','2025-02-09 11:23:17','2025-02-09 11:23:17'),(22,'read_settings','settings','2025-02-09 11:23:17','2025-02-09 11:23:17'),(23,'edit_settings','settings','2025-02-09 11:23:17','2025-02-09 11:23:17'),(24,'add_settings','settings','2025-02-09 11:23:17','2025-02-09 11:23:17'),(25,'delete_settings','settings','2025-02-09 11:23:17','2025-02-09 11:23:17'),(41,'browse_gazoprovod2s','gazoprovod2s','2025-02-09 12:11:38','2025-02-09 12:11:38'),(42,'read_gazoprovod2s','gazoprovod2s','2025-02-09 12:11:38','2025-02-09 12:11:38'),(43,'edit_gazoprovod2s','gazoprovod2s','2025-02-09 12:11:38','2025-02-09 12:11:38'),(44,'add_gazoprovod2s','gazoprovod2s','2025-02-09 12:11:38','2025-02-09 12:11:38'),(45,'delete_gazoprovod2s','gazoprovod2s','2025-02-09 12:11:38','2025-02-09 12:11:38'),(56,'browse_gazoprovods','gazoprovods','2025-02-09 14:06:24','2025-02-09 14:06:24'),(57,'read_gazoprovods','gazoprovods','2025-02-09 14:06:24','2025-02-09 14:06:24'),(58,'edit_gazoprovods','gazoprovods','2025-02-09 14:06:24','2025-02-09 14:06:24'),(59,'add_gazoprovods','gazoprovods','2025-02-09 14:06:24','2025-02-09 14:06:24'),(60,'delete_gazoprovods','gazoprovods','2025-02-09 14:06:24','2025-02-09 14:06:24'),(61,'browse_ustanovkas','ustanovkas','2025-02-09 14:07:58','2025-02-09 14:07:58'),(62,'read_ustanovkas','ustanovkas','2025-02-09 14:07:58','2025-02-09 14:07:58'),(63,'edit_ustanovkas','ustanovkas','2025-02-09 14:07:58','2025-02-09 14:07:58'),(64,'add_ustanovkas','ustanovkas','2025-02-09 14:07:58','2025-02-09 14:07:58'),(65,'delete_ustanovkas','ustanovkas','2025-02-09 14:07:58','2025-02-09 14:07:58'),(66,'browse_categories','categories','2025-02-14 14:22:53','2025-02-14 14:22:53'),(67,'read_categories','categories','2025-02-14 14:22:53','2025-02-14 14:22:53'),(68,'edit_categories','categories','2025-02-14 14:22:53','2025-02-14 14:22:53'),(69,'add_categories','categories','2025-02-14 14:22:53','2025-02-14 14:22:53'),(70,'delete_categories','categories','2025-02-14 14:22:53','2025-02-14 14:22:53'),(71,'browse_posts','posts','2025-02-14 14:22:53','2025-02-14 14:22:53'),(72,'read_posts','posts','2025-02-14 14:22:53','2025-02-14 14:22:53'),(73,'edit_posts','posts','2025-02-14 14:22:53','2025-02-14 14:22:53'),(74,'add_posts','posts','2025-02-14 14:22:53','2025-02-14 14:22:53'),(75,'delete_posts','posts','2025-02-14 14:22:53','2025-02-14 14:22:53'),(76,'browse_pages','pages','2025-02-14 14:22:53','2025-02-14 14:22:53'),(77,'read_pages','pages','2025-02-14 14:22:53','2025-02-14 14:22:53'),(78,'edit_pages','pages','2025-02-14 14:22:53','2025-02-14 14:22:53'),(79,'add_pages','pages','2025-02-14 14:22:53','2025-02-14 14:22:53'),(80,'delete_pages','pages','2025-02-14 14:22:53','2025-02-14 14:22:53'),(81,'browse_user_roles','user_roles','2025-02-25 16:21:52','2025-02-25 16:21:52'),(82,'read_user_roles','user_roles','2025-02-25 16:21:52','2025-02-25 16:21:52'),(83,'edit_user_roles','user_roles','2025-02-25 16:21:52','2025-02-25 16:21:52'),(84,'add_user_roles','user_roles','2025-02-25 16:21:52','2025-02-25 16:21:52'),(85,'delete_user_roles','user_roles','2025-02-25 16:21:52','2025-02-25 16:21:52'),(86,'browse_permissions','permissions','2025-02-26 17:23:38','2025-02-26 17:23:38'),(87,'read_permissions','permissions','2025-02-26 17:23:38','2025-02-26 17:23:38'),(88,'edit_permissions','permissions','2025-02-26 17:23:38','2025-02-26 17:23:38'),(89,'add_permissions','permissions','2025-02-26 17:23:38','2025-02-26 17:23:38'),(90,'delete_permissions','permissions','2025-02-26 17:23:38','2025-02-26 17:23:38'),(91,'browse_drenages','drenages','2025-03-13 12:40:19','2025-03-13 12:40:19'),(92,'read_drenages','drenages','2025-03-13 12:40:19','2025-03-13 12:40:19'),(93,'edit_drenages','drenages','2025-03-13 12:40:19','2025-03-13 12:40:19'),(94,'add_drenages','drenages','2025-03-13 12:40:19','2025-03-13 12:40:19'),(95,'delete_drenages','drenages','2025-03-13 12:40:19','2025-03-13 12:40:19'),(101,'browse_protectors','protectors','2025-03-19 07:10:04','2025-03-19 07:10:04'),(102,'read_protectors','protectors','2025-03-19 07:10:04','2025-03-19 07:10:04'),(103,'edit_protectors','protectors','2025-03-19 07:10:04','2025-03-19 07:10:04'),(104,'add_protectors','protectors','2025-03-19 07:10:04','2025-03-19 07:10:04'),(105,'delete_protectors','protectors','2025-03-19 07:10:04','2025-03-19 07:10:04'),(106,'browse_aero_lines','aero_lines','2025-03-20 08:14:18','2025-03-20 08:14:18'),(107,'read_aero_lines','aero_lines','2025-03-20 08:14:18','2025-03-20 08:14:18'),(108,'edit_aero_lines','aero_lines','2025-03-20 08:14:18','2025-03-20 08:14:18'),(109,'add_aero_lines','aero_lines','2025-03-20 08:14:18','2025-03-20 08:14:18'),(110,'delete_aero_lines','aero_lines','2025-03-20 08:14:18','2025-03-20 08:14:18');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2025-02-14 14:22:53','2025-02-14 14:22:53'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2025-02-14 14:22:53','2025-02-14 14:22:53'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2025-02-14 14:22:53','2025-02-14 14:22:53'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2025-02-14 14:22:53','2025-02-14 14:22:53');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protectors`
--

DROP TABLE IF EXISTS `protectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protectors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gazoprovod_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `protectors_gazoprovod_id_foreign` (`gazoprovod_id`),
  CONSTRAINT `protectors_gazoprovod_id_foreign` FOREIGN KEY (`gazoprovod_id`) REFERENCES `gazoprovods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protectors`
--

LOCK TABLES `protectors` WRITE;
/*!40000 ALTER TABLE `protectors` DISABLE KEYS */;
INSERT INTO `protectors` VALUES (13,'УПЗ № 2 МГ СРТО-Урао 2 нитка','2235',2,'2025-04-01 08:42:17','2025-04-01 08:42:17'),(126,'УПЗ № 1 В.Н, Салда','0.007',15,'2025-03-19 07:45:27','2025-03-19 07:45:27'),(127,'УПЗ № 2 В.Н. Салда','0.128',15,'2025-03-19 07:46:06','2025-03-19 07:46:06'),(128,'УПЗ № 3 В.Н. Салда','6.324',15,'2025-03-19 07:46:28','2025-03-19 07:46:28'),(129,'УПЗ № 4 В.Н. Салда','6.384',15,'2025-03-19 07:46:00','2025-03-19 07:48:48'),(130,'УПЗ № 5 В.Н. Салда','8.307',15,'2025-03-19 07:47:00','2025-03-19 07:49:01'),(131,'УПЗ № 6 В.Н. Салда','8.369',15,'2025-03-19 07:48:17','2025-03-19 07:48:17'),(132,'УПЗ № 7 В.Н. Салда','17.39',15,'2025-03-19 07:49:23','2025-03-19 07:49:23'),(133,'УПЗ № 8 В.Н. Салда','17.527',15,'2025-03-19 07:49:44','2025-03-19 07:49:44'),(134,'УПЗ № 9 В.Н. Салда','28.384',15,'2025-03-19 07:50:09','2025-03-19 07:50:09'),(135,'УПЗ № 10 В.Н. Салда','28.45',15,'2025-03-19 07:50:49','2025-03-19 07:50:49'),(136,'УПЗ № 11 В.Н. Салда','30.086',15,'2025-03-19 07:51:15','2025-03-19 07:51:15'),(137,'УПЗ № 12 В.Н. Салда','30.163',15,'2025-03-19 07:51:38','2025-03-19 07:51:38');
/*!40000 ALTER TABLE `protectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2025-02-09 11:23:17','2025-02-09 11:23:17'),(3,'engineer','engineer','2025-02-25 11:08:29','2025-02-25 11:08:29'),(4,'monter','monter','2025-02-25 11:11:02','2025-02-25 11:11:02'),(7,'user','Normal User','2025-03-19 07:36:52','2025-03-19 07:36:52');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('gtDDeyY234GSm2mtGkb1pDDCy04ZzL2HMk3pUJqU',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXV6VzQwOTEwOXpLZHhjaUtucjhQNFNqS3VvU1ljdWZLT2JYOTE0aSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdXN0YW5vdmthcy8xL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1743508157),('HPZIgPGReDfurTPsIVdtlzpi1i9SaW0qvxVv1KKL',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTThIanlwZHRiRzhmb2s2TlZYM25JRzV2ZGhRaDhXQzRvSFJSeTlnVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWltYWdlcyUyRmJnLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1743506325),('MJQshr1lkta9reP686CI8vApxZsBWHOjK8sWRL9R',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXVjc2VvT0RkSkl0QjNOaHc3ZG1KcTNSZlRRTVh6SFpNSnBHaUZnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGFydC1kYXRhLzk2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1743672052),('o9IzsL9WCEhlKoYCrLQRDmDUaJoDfQvoe3DNqmZQ',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTFXTHJMV0Y5ZXRMMHg1b2Q2OTVVbzVHT1AyM2dtZVA4dzJ4UmxTVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3lhZ2VyLWFzc2V0cz9wYXRoPWZvbnRzJTJGdm95YWdlci53b2ZmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1743506325),('TDJoa3VZ2WXHFTbfEIDRZklnanMsDIZDL4zyIxzT',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:135.0) Gecko/20100101 Firefox/135.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmI4Sm9kbElwc2pNMzhCaWZLN2xHVFk2NWMyYzlydnB1d0xTS3BBaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1743506321);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',13,'pt','Post','2025-02-14 14:22:53','2025-02-14 14:22:53'),(2,'data_types','display_name_singular',14,'pt','Página','2025-02-14 14:22:53','2025-02-14 14:22:53'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2025-02-14 14:22:53','2025-02-14 14:22:53'),(4,'data_types','display_name_singular',12,'pt','Categoria','2025-02-14 14:22:53','2025-02-14 14:22:53'),(5,'data_types','display_name_singular',2,'pt','Menu','2025-02-14 14:22:53','2025-02-14 14:22:53'),(6,'data_types','display_name_singular',3,'pt','Função','2025-02-14 14:22:53','2025-02-14 14:22:53'),(7,'data_types','display_name_plural',13,'pt','Posts','2025-02-14 14:22:54','2025-02-14 14:22:54'),(8,'data_types','display_name_plural',14,'pt','Páginas','2025-02-14 14:22:54','2025-02-14 14:22:54'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2025-02-14 14:22:54','2025-02-14 14:22:54'),(10,'data_types','display_name_plural',12,'pt','Categorias','2025-02-14 14:22:54','2025-02-14 14:22:54'),(11,'data_types','display_name_plural',2,'pt','Menus','2025-02-14 14:22:54','2025-02-14 14:22:54'),(12,'data_types','display_name_plural',3,'pt','Funções','2025-02-14 14:22:54','2025-02-14 14:22:54'),(13,'categories','slug',1,'pt','categoria-1','2025-02-14 14:22:54','2025-02-14 14:22:54'),(14,'categories','name',1,'pt','Categoria 1','2025-02-14 14:22:54','2025-02-14 14:22:54'),(15,'categories','slug',2,'pt','categoria-2','2025-02-14 14:22:54','2025-02-14 14:22:54'),(16,'categories','name',2,'pt','Categoria 2','2025-02-14 14:22:54','2025-02-14 14:22:54'),(17,'pages','title',1,'pt','Olá Mundo','2025-02-14 14:22:54','2025-02-14 14:22:54'),(18,'pages','slug',1,'pt','ola-mundo','2025-02-14 14:22:54','2025-02-14 14:22:54'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2025-02-14 14:22:54','2025-02-14 14:22:54'),(20,'menu_items','title',1,'pt','Painel de Controle','2025-02-14 14:22:54','2025-02-14 14:22:54'),(21,'menu_items','title',2,'pt','Media','2025-02-14 14:22:54','2025-02-14 14:22:54'),(22,'menu_items','title',20,'pt','Publicações','2025-02-14 14:22:54','2025-02-14 14:22:54'),(23,'menu_items','title',3,'pt','Utilizadores','2025-02-14 14:22:54','2025-02-14 14:22:54'),(24,'menu_items','title',19,'pt','Categorias','2025-02-14 14:22:54','2025-02-14 14:22:54'),(25,'menu_items','title',21,'pt','Páginas','2025-02-14 14:22:54','2025-02-14 14:22:54'),(26,'menu_items','title',4,'pt','Funções','2025-02-14 14:22:54','2025-02-14 14:22:54'),(27,'menu_items','title',5,'pt','Ferramentas','2025-02-14 14:22:54','2025-02-14 14:22:54'),(28,'menu_items','title',6,'pt','Menus','2025-02-14 14:22:54','2025-02-14 14:22:54'),(29,'menu_items','title',7,'pt','Base de dados','2025-02-14 14:22:54','2025-02-14 14:22:54'),(30,'menu_items','title',10,'pt','Configurações','2025-02-14 14:22:54','2025-02-14 14:22:54');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_1`
--

DROP TABLE IF EXISTS `udz_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Iср` double DEFAULT NULL,
  `Uтр-з` double DEFAULT NULL,
  `Uтр-р` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_1`
--

LOCK TABLES `udz_1` WRITE;
/*!40000 ALTER TABLE `udz_1` DISABLE KEYS */;
INSERT INTO `udz_1` VALUES (1,1,'ТО','2025-03-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(2,1,'ТР','2025-03-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `udz_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_100`
--

DROP TABLE IF EXISTS `udz_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_100` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_100`
--

LOCK TABLES `udz_100` WRITE;
/*!40000 ALTER TABLE `udz_100` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_101`
--

DROP TABLE IF EXISTS `udz_101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_101` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_101`
--

LOCK TABLES `udz_101` WRITE;
/*!40000 ALTER TABLE `udz_101` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_102`
--

DROP TABLE IF EXISTS `udz_102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_102` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_102`
--

LOCK TABLES `udz_102` WRITE;
/*!40000 ALTER TABLE `udz_102` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_103`
--

DROP TABLE IF EXISTS `udz_103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_103` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_103`
--

LOCK TABLES `udz_103` WRITE;
/*!40000 ALTER TABLE `udz_103` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_104`
--

DROP TABLE IF EXISTS `udz_104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_104` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_104`
--

LOCK TABLES `udz_104` WRITE;
/*!40000 ALTER TABLE `udz_104` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_105`
--

DROP TABLE IF EXISTS `udz_105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_105` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_105`
--

LOCK TABLES `udz_105` WRITE;
/*!40000 ALTER TABLE `udz_105` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_106`
--

DROP TABLE IF EXISTS `udz_106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_106` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_106`
--

LOCK TABLES `udz_106` WRITE;
/*!40000 ALTER TABLE `udz_106` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_106` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_107`
--

DROP TABLE IF EXISTS `udz_107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_107` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_107`
--

LOCK TABLES `udz_107` WRITE;
/*!40000 ALTER TABLE `udz_107` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_107` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_108`
--

DROP TABLE IF EXISTS `udz_108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_108` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_108`
--

LOCK TABLES `udz_108` WRITE;
/*!40000 ALTER TABLE `udz_108` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_108` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_109`
--

DROP TABLE IF EXISTS `udz_109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_109` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_109`
--

LOCK TABLES `udz_109` WRITE;
/*!40000 ALTER TABLE `udz_109` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_109` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_110`
--

DROP TABLE IF EXISTS `udz_110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_110` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_110`
--

LOCK TABLES `udz_110` WRITE;
/*!40000 ALTER TABLE `udz_110` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_110` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_111`
--

DROP TABLE IF EXISTS `udz_111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_111` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_111`
--

LOCK TABLES `udz_111` WRITE;
/*!40000 ALTER TABLE `udz_111` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_112`
--

DROP TABLE IF EXISTS `udz_112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_112` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_112`
--

LOCK TABLES `udz_112` WRITE;
/*!40000 ALTER TABLE `udz_112` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_113`
--

DROP TABLE IF EXISTS `udz_113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_113` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_113`
--

LOCK TABLES `udz_113` WRITE;
/*!40000 ALTER TABLE `udz_113` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_114`
--

DROP TABLE IF EXISTS `udz_114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_114` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_114`
--

LOCK TABLES `udz_114` WRITE;
/*!40000 ALTER TABLE `udz_114` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_114` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_115`
--

DROP TABLE IF EXISTS `udz_115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_115` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_115`
--

LOCK TABLES `udz_115` WRITE;
/*!40000 ALTER TABLE `udz_115` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_115` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_116`
--

DROP TABLE IF EXISTS `udz_116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_116` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_116`
--

LOCK TABLES `udz_116` WRITE;
/*!40000 ALTER TABLE `udz_116` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_116` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_117`
--

DROP TABLE IF EXISTS `udz_117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_117` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_117`
--

LOCK TABLES `udz_117` WRITE;
/*!40000 ALTER TABLE `udz_117` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_117` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_118`
--

DROP TABLE IF EXISTS `udz_118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_118` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_118`
--

LOCK TABLES `udz_118` WRITE;
/*!40000 ALTER TABLE `udz_118` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_118` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_119`
--

DROP TABLE IF EXISTS `udz_119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_119` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_119`
--

LOCK TABLES `udz_119` WRITE;
/*!40000 ALTER TABLE `udz_119` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_119` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_120`
--

DROP TABLE IF EXISTS `udz_120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_120` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_120`
--

LOCK TABLES `udz_120` WRITE;
/*!40000 ALTER TABLE `udz_120` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_121`
--

DROP TABLE IF EXISTS `udz_121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_121` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_121`
--

LOCK TABLES `udz_121` WRITE;
/*!40000 ALTER TABLE `udz_121` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_121` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_122`
--

DROP TABLE IF EXISTS `udz_122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_122` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_122`
--

LOCK TABLES `udz_122` WRITE;
/*!40000 ALTER TABLE `udz_122` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_122` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_123`
--

DROP TABLE IF EXISTS `udz_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_123` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_123`
--

LOCK TABLES `udz_123` WRITE;
/*!40000 ALTER TABLE `udz_123` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_124`
--

DROP TABLE IF EXISTS `udz_124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_124` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_124`
--

LOCK TABLES `udz_124` WRITE;
/*!40000 ALTER TABLE `udz_124` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_125`
--

DROP TABLE IF EXISTS `udz_125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_125` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_125`
--

LOCK TABLES `udz_125` WRITE;
/*!40000 ALTER TABLE `udz_125` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_96`
--

DROP TABLE IF EXISTS `udz_96`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_96` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_96`
--

LOCK TABLES `udz_96` WRITE;
/*!40000 ALTER TABLE `udz_96` DISABLE KEYS */;
INSERT INTO `udz_96` VALUES (1,96,'ТО','2025-03-21',10,5,7,-3,-5,-1.5,'Настройка УДЗ','Халиков\r\nКирилов','Проверить кабель',1,'Урал КУНГ','works/96/ECqHiSSy4oKp6sXFtXR0QNYkXshfrPKWU4gRKKXD.png',NULL,NULL),(2,96,'ТО','2025-03-25',5,1.5,1.75,-2,-3,-1.3,'Настройка УДЗ','Халтков\r\nКириллов','Поураска укрытия',1,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(3,96,'ТО','2025-04-02',7,5,6,-2.8,-5.5,-1.3,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,96,'ТО','2025-03-27',4,2,3,-3.3,-5.5,-1.5,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(5,96,'ВНЕПЛАНОВЫЕ','2025-03-28',-6,-8,-7,-3.4,-5.7,-1.5,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `udz_96` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_97`
--

DROP TABLE IF EXISTS `udz_97`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_97` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_97`
--

LOCK TABLES `udz_97` WRITE;
/*!40000 ALTER TABLE `udz_97` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_97` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_98`
--

DROP TABLE IF EXISTS `udz_98`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_98` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_98`
--

LOCK TABLES `udz_98` WRITE;
/*!40000 ALTER TABLE `udz_98` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_98` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udz_99`
--

DROP TABLE IF EXISTS `udz_99`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `udz_99` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `drenage_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Imax` double DEFAULT NULL,
  `Imin` double DEFAULT NULL,
  `Icp` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_r` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udz_99`
--

LOCK TABLES `udz_99` WRITE;
/*!40000 ALTER TABLE `udz_99` DISABLE KEYS */;
/*!40000 ALTER TABLE `udz_99` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_1`
--

DROP TABLE IF EXISTS `ukz_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_1`
--

LOCK TABLES `ukz_1` WRITE;
/*!40000 ALTER TABLE `ukz_1` DISABLE KEYS */;
INSERT INTO `ukz_1` VALUES (3,1,'ТО','2025-01-14',5,27,NULL,NULL,-2.8,-1.3,'Натройка УКЗ','Акулов А.В.\r\nКостин Д.Н','Нанести маркировку ВЛ',1,'Урал КУНГ',NULL,NULL,NULL),(4,1,'ТО','2025-04-15',6,26,NULL,NULL,-3,-1.3,'Настройка УКЗ','Хионин С.В.\r\nХаликов С.Ю.','Замечаний нет',0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(5,1,'ТР','2025-07-01',7,27,NULL,NULL,-3,-1.3,'Ремонт анода','Акулов А.В.\r\nХионин С.В.','Замечаний нет',0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(6,1,'ТО','2025-10-06',6,27.5,NULL,NULL,-2,-1.2,'Техническое обслуживание','Костин Д.Н.\r\nЛогинов А.А.','Требуется маркировка опор',0,'УАЗ',NULL,NULL,NULL),(7,1,'ВНЕПЛАНОВЫЕ','2025-05-15',5.5,26,NULL,NULL,-1.9,-1.2,'Настройка УКЗ','Хионин С.В.','Нет',0,'Урал КУНГ',NULL,NULL,NULL),(8,1,'ТО','2024-11-12',5.5,27.5,NULL,NULL,-3,-1.3,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(9,1,'ТО','2024-08-20',5.7,28,NULL,NULL,-2.8,-1.3,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(10,1,'ТО','2025-03-12',4.7,25.5,12345,56789,-2.1,-1.1,'Ремонт УКЗ','Хионин,\r\nХаликов','Заменить журнал УКЗ',1,'УАЗ','works/1/PSiHQsOowtR7zz0HQc0KYwQOviy4P8adrHtOP0GR.jpg',NULL,NULL),(11,1,'ВНЕПЛАНОВЫЕ','2025-03-25',5,26,NULL,NULL,-3,-1.3,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(12,1,'ТО','2025-03-20',5.2,26.2,233276,34253,3.3,-1.3,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_10`
--

DROP TABLE IF EXISTS `ukz_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_10` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_10`
--

LOCK TABLES `ukz_10` WRITE;
/*!40000 ALTER TABLE `ukz_10` DISABLE KEYS */;
INSERT INTO `ukz_10` VALUES (1,10,'ТО','2025-01-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,10,'ТО','2025-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,10,'ТР','2025-07-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,10,'ТО','2025-10-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_11`
--

DROP TABLE IF EXISTS `ukz_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_11` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_11`
--

LOCK TABLES `ukz_11` WRITE;
/*!40000 ALTER TABLE `ukz_11` DISABLE KEYS */;
INSERT INTO `ukz_11` VALUES (1,11,'ТО','2025-01-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,11,'ТО','2025-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,11,'ТР','2025-07-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,11,'ТО','2025-10-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_12`
--

DROP TABLE IF EXISTS `ukz_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_12` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_12`
--

LOCK TABLES `ukz_12` WRITE;
/*!40000 ALTER TABLE `ukz_12` DISABLE KEYS */;
INSERT INTO `ukz_12` VALUES (1,12,'ТО','2025-01-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,12,'ТО','2025-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,12,'ТР','2025-07-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,12,'ТО','2025-10-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_13`
--

DROP TABLE IF EXISTS `ukz_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_13` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_13`
--

LOCK TABLES `ukz_13` WRITE;
/*!40000 ALTER TABLE `ukz_13` DISABLE KEYS */;
INSERT INTO `ukz_13` VALUES (1,13,'ТО','2025-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,13,'ТО','2025-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,13,'ТР','2025-07-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,13,'ТО','2025-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_14`
--

DROP TABLE IF EXISTS `ukz_14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_14` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_14`
--

LOCK TABLES `ukz_14` WRITE;
/*!40000 ALTER TABLE `ukz_14` DISABLE KEYS */;
INSERT INTO `ukz_14` VALUES (1,14,'ТО','2025-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,14,'ТО','2025-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,14,'ТР','2025-07-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,14,'ТО','2025-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_15`
--

DROP TABLE IF EXISTS `ukz_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_15` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_15`
--

LOCK TABLES `ukz_15` WRITE;
/*!40000 ALTER TABLE `ukz_15` DISABLE KEYS */;
INSERT INTO `ukz_15` VALUES (1,15,'ТО','2025-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,15,'ТО','2025-04-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,15,'ТР','2025-07-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,15,'ТО','2025-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_16`
--

DROP TABLE IF EXISTS `ukz_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_16` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_16`
--

LOCK TABLES `ukz_16` WRITE;
/*!40000 ALTER TABLE `ukz_16` DISABLE KEYS */;
INSERT INTO `ukz_16` VALUES (1,16,'ТО','2025-01-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,16,'ТО','2025-04-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,16,'ТР','2025-07-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,16,'ТО','2025-10-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_17`
--

DROP TABLE IF EXISTS `ukz_17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_17` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_17`
--

LOCK TABLES `ukz_17` WRITE;
/*!40000 ALTER TABLE `ukz_17` DISABLE KEYS */;
INSERT INTO `ukz_17` VALUES (1,17,'ТО','2025-02-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,17,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,17,'ТР','2025-08-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,17,'ТО','2025-11-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_18`
--

DROP TABLE IF EXISTS `ukz_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_18` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_18`
--

LOCK TABLES `ukz_18` WRITE;
/*!40000 ALTER TABLE `ukz_18` DISABLE KEYS */;
INSERT INTO `ukz_18` VALUES (1,18,'ТО','2025-02-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,18,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,18,'ТР','2025-08-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,18,'ТО','2025-11-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_19`
--

DROP TABLE IF EXISTS `ukz_19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_19` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_19`
--

LOCK TABLES `ukz_19` WRITE;
/*!40000 ALTER TABLE `ukz_19` DISABLE KEYS */;
INSERT INTO `ukz_19` VALUES (1,19,'ТО','2025-02-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,19,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,19,'ТР','2025-08-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Урал КУНГ',NULL,NULL,NULL),(4,19,'ТО','2025-11-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_2`
--

DROP TABLE IF EXISTS `ukz_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_2` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int DEFAULT NULL,
  `type_of_work` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_2`
--

LOCK TABLES `ukz_2` WRITE;
/*!40000 ALTER TABLE `ukz_2` DISABLE KEYS */;
INSERT INTO `ukz_2` VALUES (26,2,'ТО','2025-01-14',1,23,NULL,NULL,-2.5,-1.2,NULL,NULL,NULL,1,NULL,NULL,NULL,'Урал КУНГ'),(27,2,'ТО','2025-04-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Урал КУНГ, УАЗ'),(28,2,'ТР','2025-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'Урал КУНГ, Автовышка'),(29,2,'ТО','2025-10-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'УАЗ');
/*!40000 ALTER TABLE `ukz_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_20`
--

DROP TABLE IF EXISTS `ukz_20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_20` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_20`
--

LOCK TABLES `ukz_20` WRITE;
/*!40000 ALTER TABLE `ukz_20` DISABLE KEYS */;
INSERT INTO `ukz_20` VALUES (1,20,'ТО','2025-02-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,20,'ТО','2025-05-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,20,'ТР','2025-08-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,20,'ТО','2025-11-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_21`
--

DROP TABLE IF EXISTS `ukz_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_21` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_21`
--

LOCK TABLES `ukz_21` WRITE;
/*!40000 ALTER TABLE `ukz_21` DISABLE KEYS */;
INSERT INTO `ukz_21` VALUES (1,21,'ТО','2025-02-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,21,'ТО','2025-05-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,21,'ТР','2025-08-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Урал КУНГ',NULL,NULL,NULL),(4,21,'ТО','2025-11-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_22`
--

DROP TABLE IF EXISTS `ukz_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_22` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_22`
--

LOCK TABLES `ukz_22` WRITE;
/*!40000 ALTER TABLE `ukz_22` DISABLE KEYS */;
INSERT INTO `ukz_22` VALUES (1,22,'ТО','2025-02-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,22,'ТО','2025-05-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,22,'ТР','2025-08-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,22,'ТО','2025-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_23`
--

DROP TABLE IF EXISTS `ukz_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_23` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_23`
--

LOCK TABLES `ukz_23` WRITE;
/*!40000 ALTER TABLE `ukz_23` DISABLE KEYS */;
INSERT INTO `ukz_23` VALUES (1,23,'ТО','2025-02-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,23,'ТО','2025-05-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,23,'ТР','2025-08-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,23,'ТО','2025-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_24`
--

DROP TABLE IF EXISTS `ukz_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_24` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_24`
--

LOCK TABLES `ukz_24` WRITE;
/*!40000 ALTER TABLE `ukz_24` DISABLE KEYS */;
INSERT INTO `ukz_24` VALUES (1,24,'ТО','2025-02-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,24,'ТО','2025-05-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,24,'ТР','2025-08-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(4,24,'ТО','2025-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_25`
--

DROP TABLE IF EXISTS `ukz_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_25` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_25`
--

LOCK TABLES `ukz_25` WRITE;
/*!40000 ALTER TABLE `ukz_25` DISABLE KEYS */;
INSERT INTO `ukz_25` VALUES (1,25,'ТО','2025-02-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,25,'ТО','2025-05-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,25,'ТР','2025-08-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,25,'ТО','2025-11-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_26`
--

DROP TABLE IF EXISTS `ukz_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_26` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_26`
--

LOCK TABLES `ukz_26` WRITE;
/*!40000 ALTER TABLE `ukz_26` DISABLE KEYS */;
INSERT INTO `ukz_26` VALUES (1,26,'ТО','2025-02-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ','works/26/sFFpD4E2sBoJ6ONe5iqj5FGMZifIiDE2AtoY45gm.png',NULL,NULL),(2,26,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,26,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,26,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_27`
--

DROP TABLE IF EXISTS `ukz_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_27` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_27`
--

LOCK TABLES `ukz_27` WRITE;
/*!40000 ALTER TABLE `ukz_27` DISABLE KEYS */;
INSERT INTO `ukz_27` VALUES (1,27,'ТО','2025-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ','works/27/Gh3FySv9b3XSl2dXImfOFvNvrSTs7FgbmuXgqW8w.jpg',NULL,NULL),(2,27,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,27,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,27,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_28`
--

DROP TABLE IF EXISTS `ukz_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_28` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_28`
--

LOCK TABLES `ukz_28` WRITE;
/*!40000 ALTER TABLE `ukz_28` DISABLE KEYS */;
INSERT INTO `ukz_28` VALUES (1,28,'ТО','2025-02-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,28,'ТО','2025-05-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,28,'ТР','2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,28,'ТО','2025-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_29`
--

DROP TABLE IF EXISTS `ukz_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_29` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_29`
--

LOCK TABLES `ukz_29` WRITE;
/*!40000 ALTER TABLE `ukz_29` DISABLE KEYS */;
INSERT INTO `ukz_29` VALUES (1,29,'ТО','2025-02-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ','works/29/g3Tk18WPHP8PzESyXbcGoKJYBDJMreg7h5Q3EJN2.jpg',NULL,NULL),(2,29,'ТО','2025-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,29,'ТР','2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,29,'ТО','2025-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_3`
--

DROP TABLE IF EXISTS `ukz_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_3` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_3`
--

LOCK TABLES `ukz_3` WRITE;
/*!40000 ALTER TABLE `ukz_3` DISABLE KEYS */;
INSERT INTO `ukz_3` VALUES (1,3,'ТО','2025-01-14',2,37,NULL,NULL,-3.3,-1.3,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,3,'ТО','2025-04-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,3,'ТР','2025-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,3,'ТО','2025-10-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(5,3,'ВНЕПЛАНОВЫЕ','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_30`
--

DROP TABLE IF EXISTS `ukz_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_30` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_30`
--

LOCK TABLES `ukz_30` WRITE;
/*!40000 ALTER TABLE `ukz_30` DISABLE KEYS */;
INSERT INTO `ukz_30` VALUES (1,30,'ТО','2025-02-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,30,'ТО','2025-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,30,'ТР','2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,30,'ТО','2025-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_31`
--

DROP TABLE IF EXISTS `ukz_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_31` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_31`
--

LOCK TABLES `ukz_31` WRITE;
/*!40000 ALTER TABLE `ukz_31` DISABLE KEYS */;
INSERT INTO `ukz_31` VALUES (1,31,'ТО','2025-02-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,31,'ТО','2025-05-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,31,'ТР','2025-08-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,31,'ТО','2025-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_32`
--

DROP TABLE IF EXISTS `ukz_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_32` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_32`
--

LOCK TABLES `ukz_32` WRITE;
/*!40000 ALTER TABLE `ukz_32` DISABLE KEYS */;
INSERT INTO `ukz_32` VALUES (1,32,'ТО','2025-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,32,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,32,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,32,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_33`
--

DROP TABLE IF EXISTS `ukz_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_33` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_33`
--

LOCK TABLES `ukz_33` WRITE;
/*!40000 ALTER TABLE `ukz_33` DISABLE KEYS */;
INSERT INTO `ukz_33` VALUES (1,33,'ТО','2025-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,33,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,33,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,33,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_34`
--

DROP TABLE IF EXISTS `ukz_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_34` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_34`
--

LOCK TABLES `ukz_34` WRITE;
/*!40000 ALTER TABLE `ukz_34` DISABLE KEYS */;
INSERT INTO `ukz_34` VALUES (1,34,'ТО','2025-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,34,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,34,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,34,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_35`
--

DROP TABLE IF EXISTS `ukz_35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_35` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_35`
--

LOCK TABLES `ukz_35` WRITE;
/*!40000 ALTER TABLE `ukz_35` DISABLE KEYS */;
INSERT INTO `ukz_35` VALUES (1,35,'ТО','2025-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,35,'ТО','2025-05-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,35,'ТР','2025-08-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, КАМАЗ бортовой',NULL,NULL,NULL),(4,35,'ТО','2025-11-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_36`
--

DROP TABLE IF EXISTS `ukz_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_36` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_36`
--

LOCK TABLES `ukz_36` WRITE;
/*!40000 ALTER TABLE `ukz_36` DISABLE KEYS */;
INSERT INTO `ukz_36` VALUES (1,36,'ТО','2025-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,36,'ТО','2025-06-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,36,'ТР','2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Урал КУНГ',NULL,NULL,NULL),(4,36,'ТО','2025-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_37`
--

DROP TABLE IF EXISTS `ukz_37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_37` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_37`
--

LOCK TABLES `ukz_37` WRITE;
/*!40000 ALTER TABLE `ukz_37` DISABLE KEYS */;
INSERT INTO `ukz_37` VALUES (1,37,'ТО','2025-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,37,'ТО','2025-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,37,'ТР','2025-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,37,'ТО','2025-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_38`
--

DROP TABLE IF EXISTS `ukz_38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_38` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_38`
--

LOCK TABLES `ukz_38` WRITE;
/*!40000 ALTER TABLE `ukz_38` DISABLE KEYS */;
INSERT INTO `ukz_38` VALUES (1,38,'ТО','2025-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,38,'ТО','2025-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,38,'ТР','2025-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,38,'ТО','2025-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_39`
--

DROP TABLE IF EXISTS `ukz_39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_39` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_39`
--

LOCK TABLES `ukz_39` WRITE;
/*!40000 ALTER TABLE `ukz_39` DISABLE KEYS */;
INSERT INTO `ukz_39` VALUES (1,39,'ТО','2025-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,39,'ТО','2025-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,39,'ТР','2025-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,39,'ТО','2025-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_39` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_4`
--

DROP TABLE IF EXISTS `ukz_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_4` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_4`
--

LOCK TABLES `ukz_4` WRITE;
/*!40000 ALTER TABLE `ukz_4` DISABLE KEYS */;
INSERT INTO `ukz_4` VALUES (2,4,'ТО','2025-01-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(3,4,'ТО','2025-04-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(4,4,'ТР','2025-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(5,4,'ТО','2025-10-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_40`
--

DROP TABLE IF EXISTS `ukz_40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_40` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_40`
--

LOCK TABLES `ukz_40` WRITE;
/*!40000 ALTER TABLE `ukz_40` DISABLE KEYS */;
INSERT INTO `ukz_40` VALUES (1,40,'ТО','2025-01-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,40,'ТО','2025-04-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,40,'ТР','2025-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,40,'ТО','2025-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_41`
--

DROP TABLE IF EXISTS `ukz_41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_41` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_41`
--

LOCK TABLES `ukz_41` WRITE;
/*!40000 ALTER TABLE `ukz_41` DISABLE KEYS */;
INSERT INTO `ukz_41` VALUES (1,41,'ТО','2025-01-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,41,'ТО','2025-04-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,41,'ТР','2025-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,41,'ТО','2025-10-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_42`
--

DROP TABLE IF EXISTS `ukz_42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_42` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_42`
--

LOCK TABLES `ukz_42` WRITE;
/*!40000 ALTER TABLE `ukz_42` DISABLE KEYS */;
INSERT INTO `ukz_42` VALUES (1,42,'ТО','2025-01-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,42,'ТО','2025-04-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,42,'ТР','2025-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,42,'ТО','2025-10-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_43`
--

DROP TABLE IF EXISTS `ukz_43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_43` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_43`
--

LOCK TABLES `ukz_43` WRITE;
/*!40000 ALTER TABLE `ukz_43` DISABLE KEYS */;
INSERT INTO `ukz_43` VALUES (1,43,'ТО','2025-01-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,43,'ТО','2025-04-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,43,'ТО','2025-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,43,'ТР','2025-10-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_44`
--

DROP TABLE IF EXISTS `ukz_44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_44` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_44`
--

LOCK TABLES `ukz_44` WRITE;
/*!40000 ALTER TABLE `ukz_44` DISABLE KEYS */;
INSERT INTO `ukz_44` VALUES (1,44,'ТО','2025-01-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,44,'ТО','2025-04-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,44,'ТР','2025-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,44,'ТО','2025-10-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_45`
--

DROP TABLE IF EXISTS `ukz_45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_45` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_45`
--

LOCK TABLES `ukz_45` WRITE;
/*!40000 ALTER TABLE `ukz_45` DISABLE KEYS */;
INSERT INTO `ukz_45` VALUES (1,45,'ТО','2025-01-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,45,'ТО','2025-04-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,45,'ТР','2025-07-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,45,'ТО','2025-10-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_46`
--

DROP TABLE IF EXISTS `ukz_46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_46` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_46`
--

LOCK TABLES `ukz_46` WRITE;
/*!40000 ALTER TABLE `ukz_46` DISABLE KEYS */;
INSERT INTO `ukz_46` VALUES (1,46,'ТО','2025-01-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,46,'ТО','2025-04-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,46,'ТР','2025-07-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,46,'ТО','2025-10-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_47`
--

DROP TABLE IF EXISTS `ukz_47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_47` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_47`
--

LOCK TABLES `ukz_47` WRITE;
/*!40000 ALTER TABLE `ukz_47` DISABLE KEYS */;
INSERT INTO `ukz_47` VALUES (1,47,'ТО','2025-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,47,'ТО','2025-06-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,47,'ТР','2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,47,'ТО','2025-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_47` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_48`
--

DROP TABLE IF EXISTS `ukz_48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_48` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_48`
--

LOCK TABLES `ukz_48` WRITE;
/*!40000 ALTER TABLE `ukz_48` DISABLE KEYS */;
INSERT INTO `ukz_48` VALUES (1,48,'ТО','2025-03-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,48,'ТО','2025-06-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,48,'ТР','2025-09-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, КАМАЗ бортовой',NULL,NULL,NULL),(4,48,'ТО','2025-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_48` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_49`
--

DROP TABLE IF EXISTS `ukz_49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_49` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_49`
--

LOCK TABLES `ukz_49` WRITE;
/*!40000 ALTER TABLE `ukz_49` DISABLE KEYS */;
INSERT INTO `ukz_49` VALUES (1,49,'ТО','2025-03-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,49,'ТО','2025-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,49,'ТР','2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, КАМАЗ бортовой',NULL,NULL,NULL),(4,49,'ТО','2025-12-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_49` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_5`
--

DROP TABLE IF EXISTS `ukz_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_5` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_5`
--

LOCK TABLES `ukz_5` WRITE;
/*!40000 ALTER TABLE `ukz_5` DISABLE KEYS */;
INSERT INTO `ukz_5` VALUES (3,5,'ТО','2025-01-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(4,5,'ТО','2025-04-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(5,5,'ТР','2025-07-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(6,5,'ТО','2025-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_50`
--

DROP TABLE IF EXISTS `ukz_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_50` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_50`
--

LOCK TABLES `ukz_50` WRITE;
/*!40000 ALTER TABLE `ukz_50` DISABLE KEYS */;
INSERT INTO `ukz_50` VALUES (1,50,'ТО','2025-03-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,50,'ТО','2025-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,50,'ТР','2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,50,'ТО','2025-12-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_51`
--

DROP TABLE IF EXISTS `ukz_51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_51` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_51`
--

LOCK TABLES `ukz_51` WRITE;
/*!40000 ALTER TABLE `ukz_51` DISABLE KEYS */;
INSERT INTO `ukz_51` VALUES (1,51,'ТО','2025-03-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,51,'ТО','2025-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,51,'ТР','2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,51,'ТО','2025-12-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_51` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_52`
--

DROP TABLE IF EXISTS `ukz_52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_52` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_52`
--

LOCK TABLES `ukz_52` WRITE;
/*!40000 ALTER TABLE `ukz_52` DISABLE KEYS */;
INSERT INTO `ukz_52` VALUES (1,52,'ТО','2025-03-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,52,'ТО','2025-06-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,52,'ТР','2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,52,'ТО','2025-12-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_52` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_53`
--

DROP TABLE IF EXISTS `ukz_53`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_53` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_53`
--

LOCK TABLES `ukz_53` WRITE;
/*!40000 ALTER TABLE `ukz_53` DISABLE KEYS */;
INSERT INTO `ukz_53` VALUES (1,53,'ТО','2025-02-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,53,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,53,'ТР','2025-08-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,53,'ТО','2025-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_53` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_54`
--

DROP TABLE IF EXISTS `ukz_54`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_54` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_54`
--

LOCK TABLES `ukz_54` WRITE;
/*!40000 ALTER TABLE `ukz_54` DISABLE KEYS */;
INSERT INTO `ukz_54` VALUES (1,54,'ТР','2025-02-10',-2.5,55,NULL,NULL,-2.2,-1.2,'Настройка УКЗ','Халиков С.Ю.\r\nХионин С.В.','Замечаний нет',1,'УАЗ',NULL,NULL,NULL),(2,54,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,54,'ТО','2025-08-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,54,'ТО','2025-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_54` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_55`
--

DROP TABLE IF EXISTS `ukz_55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_55` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_55`
--

LOCK TABLES `ukz_55` WRITE;
/*!40000 ALTER TABLE `ukz_55` DISABLE KEYS */;
INSERT INTO `ukz_55` VALUES (1,55,'ТО','2025-02-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,55,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,55,'ТР','2025-08-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,55,'ТО','2025-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_55` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_56`
--

DROP TABLE IF EXISTS `ukz_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_56` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_56`
--

LOCK TABLES `ukz_56` WRITE;
/*!40000 ALTER TABLE `ukz_56` DISABLE KEYS */;
INSERT INTO `ukz_56` VALUES (1,56,'ТО','2025-02-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,56,'ТО','2025-05-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,56,'ТР','2025-07-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,56,'ТО','2025-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_57`
--

DROP TABLE IF EXISTS `ukz_57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_57` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_57`
--

LOCK TABLES `ukz_57` WRITE;
/*!40000 ALTER TABLE `ukz_57` DISABLE KEYS */;
INSERT INTO `ukz_57` VALUES (1,57,'ТО','2025-03-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,57,'ТО','2025-06-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,57,'ТР','2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,57,'ТО','2025-12-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_57` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_58`
--

DROP TABLE IF EXISTS `ukz_58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_58` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_58`
--

LOCK TABLES `ukz_58` WRITE;
/*!40000 ALTER TABLE `ukz_58` DISABLE KEYS */;
INSERT INTO `ukz_58` VALUES (1,58,'ТО','2025-03-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,58,'ТО','2025-06-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,58,'ТР','2025-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,58,'ТО','2025-12-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_58` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_59`
--

DROP TABLE IF EXISTS `ukz_59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_59` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_59`
--

LOCK TABLES `ukz_59` WRITE;
/*!40000 ALTER TABLE `ukz_59` DISABLE KEYS */;
INSERT INTO `ukz_59` VALUES (1,59,'ТО','2025-03-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,59,'ТО','2025-06-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,59,'ТР','2025-09-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,59,'ТО','2025-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_59` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_6`
--

DROP TABLE IF EXISTS `ukz_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_6` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_6`
--

LOCK TABLES `ukz_6` WRITE;
/*!40000 ALTER TABLE `ukz_6` DISABLE KEYS */;
INSERT INTO `ukz_6` VALUES (22,6,'ТО','2025-01-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(23,6,'ТО','2025-04-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(24,6,'ТР','2025-07-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(25,6,'ТО','2025-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_60`
--

DROP TABLE IF EXISTS `ukz_60`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_60` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_60`
--

LOCK TABLES `ukz_60` WRITE;
/*!40000 ALTER TABLE `ukz_60` DISABLE KEYS */;
INSERT INTO `ukz_60` VALUES (1,60,'ТО','2025-03-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,60,'ТО','2025-06-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,60,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,60,'ТО','2025-12-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_60` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_61`
--

DROP TABLE IF EXISTS `ukz_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_61` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_61`
--

LOCK TABLES `ukz_61` WRITE;
/*!40000 ALTER TABLE `ukz_61` DISABLE KEYS */;
INSERT INTO `ukz_61` VALUES (1,61,'ТО','2025-03-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,61,'ТО','2025-06-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,61,'ТР','2025-09-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,61,'ТО','2025-12-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_61` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_62`
--

DROP TABLE IF EXISTS `ukz_62`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_62` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_62`
--

LOCK TABLES `ukz_62` WRITE;
/*!40000 ALTER TABLE `ukz_62` DISABLE KEYS */;
INSERT INTO `ukz_62` VALUES (1,62,'ТО','2025-03-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,62,'ТО','2025-06-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,62,'ТР','2025-09-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,62,'ТО','2025-12-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_62` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_63`
--

DROP TABLE IF EXISTS `ukz_63`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_63` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_63`
--

LOCK TABLES `ukz_63` WRITE;
/*!40000 ALTER TABLE `ukz_63` DISABLE KEYS */;
INSERT INTO `ukz_63` VALUES (1,63,'ТО','2025-03-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,63,'ТО','2025-06-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,63,'ТР','2025-09-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, КАМАЗ бортовой',NULL,NULL,NULL),(4,63,'ТО','2025-12-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_63` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_64`
--

DROP TABLE IF EXISTS `ukz_64`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_64` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_64`
--

LOCK TABLES `ukz_64` WRITE;
/*!40000 ALTER TABLE `ukz_64` DISABLE KEYS */;
INSERT INTO `ukz_64` VALUES (1,64,'ТО','2025-03-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,64,'ТО','2025-06-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,64,'ТР','2025-09-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,64,'ТО','2025-12-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_64` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_65`
--

DROP TABLE IF EXISTS `ukz_65`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_65` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_65`
--

LOCK TABLES `ukz_65` WRITE;
/*!40000 ALTER TABLE `ukz_65` DISABLE KEYS */;
INSERT INTO `ukz_65` VALUES (1,65,'ТО','2025-03-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,65,'ТО','2025-06-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,65,'ТР','2025-09-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, КАМАЗ бортовой',NULL,NULL,NULL),(4,65,'ТО','2025-12-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_65` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_66`
--

DROP TABLE IF EXISTS `ukz_66`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_66` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_66`
--

LOCK TABLES `ukz_66` WRITE;
/*!40000 ALTER TABLE `ukz_66` DISABLE KEYS */;
INSERT INTO `ukz_66` VALUES (1,66,'ТО','2025-03-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,66,'ТО','2025-06-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,66,'ТР','2025-09-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, КАМАЗ бортовой',NULL,NULL,NULL),(4,66,'ТО','2025-12-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_66` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_67`
--

DROP TABLE IF EXISTS `ukz_67`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_67` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_67`
--

LOCK TABLES `ukz_67` WRITE;
/*!40000 ALTER TABLE `ukz_67` DISABLE KEYS */;
INSERT INTO `ukz_67` VALUES (1,67,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,67,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,67,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,67,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_67` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_68`
--

DROP TABLE IF EXISTS `ukz_68`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_68` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_68`
--

LOCK TABLES `ukz_68` WRITE;
/*!40000 ALTER TABLE `ukz_68` DISABLE KEYS */;
INSERT INTO `ukz_68` VALUES (1,68,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,68,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,68,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,68,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_68` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_69`
--

DROP TABLE IF EXISTS `ukz_69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_69` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_69`
--

LOCK TABLES `ukz_69` WRITE;
/*!40000 ALTER TABLE `ukz_69` DISABLE KEYS */;
INSERT INTO `ukz_69` VALUES (1,69,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,69,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,69,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,69,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_69` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_7`
--

DROP TABLE IF EXISTS `ukz_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_7` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_7`
--

LOCK TABLES `ukz_7` WRITE;
/*!40000 ALTER TABLE `ukz_7` DISABLE KEYS */;
INSERT INTO `ukz_7` VALUES (1,7,'ТО','2025-01-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,7,'ТО','2025-04-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,7,'ТР','2025-07-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL),(4,7,'ТО','2025-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_70`
--

DROP TABLE IF EXISTS `ukz_70`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_70` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_70`
--

LOCK TABLES `ukz_70` WRITE;
/*!40000 ALTER TABLE `ukz_70` DISABLE KEYS */;
INSERT INTO `ukz_70` VALUES (1,70,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,70,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,70,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,70,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_70` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_71`
--

DROP TABLE IF EXISTS `ukz_71`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_71` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_71`
--

LOCK TABLES `ukz_71` WRITE;
/*!40000 ALTER TABLE `ukz_71` DISABLE KEYS */;
INSERT INTO `ukz_71` VALUES (1,71,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,71,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,71,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,71,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_71` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_72`
--

DROP TABLE IF EXISTS `ukz_72`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_72` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_72`
--

LOCK TABLES `ukz_72` WRITE;
/*!40000 ALTER TABLE `ukz_72` DISABLE KEYS */;
INSERT INTO `ukz_72` VALUES (1,72,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,72,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,72,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,72,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_72` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_73`
--

DROP TABLE IF EXISTS `ukz_73`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_73` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_73`
--

LOCK TABLES `ukz_73` WRITE;
/*!40000 ALTER TABLE `ukz_73` DISABLE KEYS */;
INSERT INTO `ukz_73` VALUES (1,73,'ТО','2025-02-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,73,'ТО','2025-05-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,73,'ТР','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,73,'ТО','2025-11-17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_73` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_74`
--

DROP TABLE IF EXISTS `ukz_74`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_74` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_74`
--

LOCK TABLES `ukz_74` WRITE;
/*!40000 ALTER TABLE `ukz_74` DISABLE KEYS */;
INSERT INTO `ukz_74` VALUES (1,74,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,74,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,74,'ТО','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,74,'ТО','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_74` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_75`
--

DROP TABLE IF EXISTS `ukz_75`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_75` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_75`
--

LOCK TABLES `ukz_75` WRITE;
/*!40000 ALTER TABLE `ukz_75` DISABLE KEYS */;
INSERT INTO `ukz_75` VALUES (1,75,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,75,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,75,'ТО','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,75,'ТР','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_75` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_76`
--

DROP TABLE IF EXISTS `ukz_76`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_76` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_76`
--

LOCK TABLES `ukz_76` WRITE;
/*!40000 ALTER TABLE `ukz_76` DISABLE KEYS */;
INSERT INTO `ukz_76` VALUES (1,76,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,76,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,76,'ТР','2025-07-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,76,'ТО','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_76` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_77`
--

DROP TABLE IF EXISTS `ukz_77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_77` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_77`
--

LOCK TABLES `ukz_77` WRITE;
/*!40000 ALTER TABLE `ukz_77` DISABLE KEYS */;
INSERT INTO `ukz_77` VALUES (1,77,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,77,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,77,'ТР','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,77,'ТО','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_77` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_78`
--

DROP TABLE IF EXISTS `ukz_78`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_78` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_78`
--

LOCK TABLES `ukz_78` WRITE;
/*!40000 ALTER TABLE `ukz_78` DISABLE KEYS */;
INSERT INTO `ukz_78` VALUES (1,78,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,78,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,78,'ТР','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,78,'ТО','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_78` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_79`
--

DROP TABLE IF EXISTS `ukz_79`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_79` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_79`
--

LOCK TABLES `ukz_79` WRITE;
/*!40000 ALTER TABLE `ukz_79` DISABLE KEYS */;
INSERT INTO `ukz_79` VALUES (1,79,'ТО','2025-02-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,79,'ТО','2025-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,79,'ТР','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,79,'ТО','2025-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_79` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_8`
--

DROP TABLE IF EXISTS `ukz_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_8` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_8`
--

LOCK TABLES `ukz_8` WRITE;
/*!40000 ALTER TABLE `ukz_8` DISABLE KEYS */;
INSERT INTO `ukz_8` VALUES (1,8,'ТО','2025-01-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,8,'ТО','2025-04-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,8,'ТР','2025-07-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, КАМАЗ бортовой',NULL,NULL,NULL),(4,8,'ТО','2025-10-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_80`
--

DROP TABLE IF EXISTS `ukz_80`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_80` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_80`
--

LOCK TABLES `ukz_80` WRITE;
/*!40000 ALTER TABLE `ukz_80` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_80` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_81`
--

DROP TABLE IF EXISTS `ukz_81`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_81` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_81`
--

LOCK TABLES `ukz_81` WRITE;
/*!40000 ALTER TABLE `ukz_81` DISABLE KEYS */;
INSERT INTO `ukz_81` VALUES (1,81,'ТО','2025-01-23',5,27.7,62736,1898,-3.3,-1.3,'Настройка УКЗ','Халиков С.Ю.\r\nХионин С.В.','Настройка антенны',1,'Урал КУНГ',NULL,NULL,NULL),(2,81,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,81,'ТР','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,81,'ТО','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_81` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_82`
--

DROP TABLE IF EXISTS `ukz_82`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_82` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_82`
--

LOCK TABLES `ukz_82` WRITE;
/*!40000 ALTER TABLE `ukz_82` DISABLE KEYS */;
INSERT INTO `ukz_82` VALUES (1,82,'ТО','2025-01-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(2,82,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,82,'ТР','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,82,'ТО','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_82` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_83`
--

DROP TABLE IF EXISTS `ukz_83`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_83` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_83`
--

LOCK TABLES `ukz_83` WRITE;
/*!40000 ALTER TABLE `ukz_83` DISABLE KEYS */;
INSERT INTO `ukz_83` VALUES (1,83,'ТО','2025-01-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(2,83,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,83,'ТО','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Экскаватор JCB',NULL,NULL,NULL),(4,83,'ТО','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_83` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_84`
--

DROP TABLE IF EXISTS `ukz_84`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_84` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_84`
--

LOCK TABLES `ukz_84` WRITE;
/*!40000 ALTER TABLE `ukz_84` DISABLE KEYS */;
INSERT INTO `ukz_84` VALUES (1,84,'ТО','2025-01-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,84,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(3,84,'ТР','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, Автовышка',NULL,NULL,NULL),(4,84,'ТО','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_84` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_85`
--

DROP TABLE IF EXISTS `ukz_85`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_85` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_85`
--

LOCK TABLES `ukz_85` WRITE;
/*!40000 ALTER TABLE `ukz_85` DISABLE KEYS */;
INSERT INTO `ukz_85` VALUES (1,85,'ТО','2025-01-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,85,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,85,'ТО','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,85,'ТР','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_85` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_86`
--

DROP TABLE IF EXISTS `ukz_86`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_86` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_86`
--

LOCK TABLES `ukz_86` WRITE;
/*!40000 ALTER TABLE `ukz_86` DISABLE KEYS */;
INSERT INTO `ukz_86` VALUES (1,86,'ТО','2025-01-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,86,'ТО','2025-04-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,86,'ТО','2025-07-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,86,'ТР','2025-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_86` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_87`
--

DROP TABLE IF EXISTS `ukz_87`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_87` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_87`
--

LOCK TABLES `ukz_87` WRITE;
/*!40000 ALTER TABLE `ukz_87` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_87` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_88`
--

DROP TABLE IF EXISTS `ukz_88`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_88` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_88`
--

LOCK TABLES `ukz_88` WRITE;
/*!40000 ALTER TABLE `ukz_88` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_88` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_89`
--

DROP TABLE IF EXISTS `ukz_89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_89` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_89`
--

LOCK TABLES `ukz_89` WRITE;
/*!40000 ALTER TABLE `ukz_89` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_89` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_9`
--

DROP TABLE IF EXISTS `ukz_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_9` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_9`
--

LOCK TABLES `ukz_9` WRITE;
/*!40000 ALTER TABLE `ukz_9` DISABLE KEYS */;
INSERT INTO `ukz_9` VALUES (1,9,'ТО','2025-01-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Урал КУНГ',NULL,NULL,NULL),(2,9,'ТО','2025-04-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL),(3,9,'ТР','2025-07-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(4,9,'ТО','2025-10-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_90`
--

DROP TABLE IF EXISTS `ukz_90`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_90` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_90`
--

LOCK TABLES `ukz_90` WRITE;
/*!40000 ALTER TABLE `ukz_90` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_90` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_91`
--

DROP TABLE IF EXISTS `ukz_91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_91` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_91`
--

LOCK TABLES `ukz_91` WRITE;
/*!40000 ALTER TABLE `ukz_91` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_91` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_92`
--

DROP TABLE IF EXISTS `ukz_92`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_92` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_92`
--

LOCK TABLES `ukz_92` WRITE;
/*!40000 ALTER TABLE `ukz_92` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_92` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_93`
--

DROP TABLE IF EXISTS `ukz_93`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_93` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_93`
--

LOCK TABLES `ukz_93` WRITE;
/*!40000 ALTER TABLE `ukz_93` DISABLE KEYS */;
INSERT INTO `ukz_93` VALUES (1,93,'ТО','2025-01-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,93,'ТО','2025-04-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,93,'ТР','2025-07-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,93,'ТО','2025-10-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_93` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_94`
--

DROP TABLE IF EXISTS `ukz_94`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_94` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_94`
--

LOCK TABLES `ukz_94` WRITE;
/*!40000 ALTER TABLE `ukz_94` DISABLE KEYS */;
/*!40000 ALTER TABLE `ukz_94` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ukz_95`
--

DROP TABLE IF EXISTS `ukz_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukz_95` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ustanovka_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `I` double DEFAULT NULL,
  `U` double DEFAULT NULL,
  `snv` int DEFAULT NULL,
  `EE` int DEFAULT NULL,
  `Usum` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukz_95`
--

LOCK TABLES `ukz_95` WRITE;
/*!40000 ALTER TABLE `ukz_95` DISABLE KEYS */;
INSERT INTO `ukz_95` VALUES (1,95,'ТО','2025-01-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'УАЗ',NULL,NULL,NULL),(2,95,'ТО','2025-04-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,95,'ТО','2025-07-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(4,95,'ТО','2025-10-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukz_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_126`
--

DROP TABLE IF EXISTS `upz_126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_126` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_126`
--

LOCK TABLES `upz_126` WRITE;
/*!40000 ALTER TABLE `upz_126` DISABLE KEYS */;
INSERT INTO `upz_126` VALUES (1,126,'ТО','2025-03-25',4,-3,-1.2,1.2,5.5,15,'Ремонт протектора','Кириллов\r\nХионин 2','Нет',1,'Урал КУНГ, УАЗ','works/126/r8NTRmk9h44OQmaNi5xAiTv6vuOVRdeaxIpVCDDg.jpg',NULL,NULL),(2,126,'ТР','2025-03-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,126,'ТР','2025-04-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `upz_126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_127`
--

DROP TABLE IF EXISTS `upz_127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_127` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_127`
--

LOCK TABLES `upz_127` WRITE;
/*!40000 ALTER TABLE `upz_127` DISABLE KEYS */;
INSERT INTO `upz_127` VALUES (1,127,'ТР','2025-03-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Урал КУНГ, УАЗ',NULL,NULL,NULL),(2,127,'ТР','2025-08-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `upz_127` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_128`
--

DROP TABLE IF EXISTS `upz_128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_128` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_128`
--

LOCK TABLES `upz_128` WRITE;
/*!40000 ALTER TABLE `upz_128` DISABLE KEYS */;
INSERT INTO `upz_128` VALUES (1,128,'ТО','2025-04-30',3.3,-2.2,-1.1,1.1,5.8,15.7,'Настройка УПЗ','Халиков\r\nАкулов','Замечаний нет',1,'УАЗ, Автовышка',NULL,NULL,NULL),(2,128,'ТО','2025-03-28',3.5,-2.5,-1.3,1.2,5.8,16.9,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(3,128,'ТО','2025-04-11',4.4,-3.3,-1.5,0.9,7.7,17.7,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(4,128,'ТО','2025-04-25',5.5,-4.4,-1.3,-1.3,5.7,15.9,NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `upz_128` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_129`
--

DROP TABLE IF EXISTS `upz_129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_129` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_129`
--

LOCK TABLES `upz_129` WRITE;
/*!40000 ALTER TABLE `upz_129` DISABLE KEYS */;
INSERT INTO `upz_129` VALUES (1,129,'ТР','2025-06-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `upz_129` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_130`
--

DROP TABLE IF EXISTS `upz_130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_130` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_130`
--

LOCK TABLES `upz_130` WRITE;
/*!40000 ALTER TABLE `upz_130` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_130` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_131`
--

DROP TABLE IF EXISTS `upz_131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_131` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_131`
--

LOCK TABLES `upz_131` WRITE;
/*!40000 ALTER TABLE `upz_131` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_132`
--

DROP TABLE IF EXISTS `upz_132`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_132` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Utr_z_posle` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_132`
--

LOCK TABLES `upz_132` WRITE;
/*!40000 ALTER TABLE `upz_132` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_132` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_133`
--

DROP TABLE IF EXISTS `upz_133`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_133` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_133`
--

LOCK TABLES `upz_133` WRITE;
/*!40000 ALTER TABLE `upz_133` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_133` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_134`
--

DROP TABLE IF EXISTS `upz_134`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_134` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_134`
--

LOCK TABLES `upz_134` WRITE;
/*!40000 ALTER TABLE `upz_134` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_134` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_135`
--

DROP TABLE IF EXISTS `upz_135`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_135` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_135`
--

LOCK TABLES `upz_135` WRITE;
/*!40000 ALTER TABLE `upz_135` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_135` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_136`
--

DROP TABLE IF EXISTS `upz_136`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_136` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_136`
--

LOCK TABLES `upz_136` WRITE;
/*!40000 ALTER TABLE `upz_136` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_136` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upz_137`
--

DROP TABLE IF EXISTS `upz_137`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upz_137` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `protector_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `Upr_z` double DEFAULT NULL,
  `Utr_z` double DEFAULT NULL,
  `Upol` double DEFAULT NULL,
  `Ipr` double DEFAULT NULL,
  `Rpr_tr` double DEFAULT NULL,
  `Ro_grunt` double DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upz_137`
--

LOCK TABLES `upz_137` WRITE;
/*!40000 ALTER TABLE `upz_137` DISABLE KEYS */;
/*!40000 ALTER TABLE `upz_137` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,1),(2,3),(3,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'alex','alex18w@mail.ru','users/default.png',NULL,'$2y$12$jdwEvUe6YpsdbKluE2133OtvliggB7Tmzi0qjLdlBr8Uh8dBF7eCC',NULL,'{\"locale\":\"en\"}','2025-02-09 11:24:14','2025-02-25 11:24:06'),(2,3,'engineer','engineer@mail.ru','users/default.png',NULL,'$2y$12$brtVhhYRFfiJU.BDIGvVw.Hm1onmjvzGxM80/u8jm/OBJVUWfR.8O',NULL,'{\"locale\":\"en\"}','2025-02-25 11:27:09','2025-02-25 11:28:04'),(3,4,'monter','monter@mail.ru','users/default.png',NULL,'$2y$12$431tq8434xoSPsm9hKWD8.LJdovhifAj81n1VcH.qvsqB.7VlZ03i',NULL,'{\"locale\":\"en\"}','2025-02-25 11:28:46','2025-02-25 11:28:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ustanovkas`
--

DROP TABLE IF EXISTS `ustanovkas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ustanovkas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gazoprovod_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ustanovkas_gazoprovod_id_foreign` (`gazoprovod_id`),
  CONSTRAINT `ustanovkas_gazoprovod_id_foreign` FOREIGN KEY (`gazoprovod_id`) REFERENCES `gazoprovods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ustanovkas`
--

LOCK TABLES `ustanovkas` WRITE;
/*!40000 ALTER TABLE `ustanovkas` DISABLE KEYS */;
INSERT INTO `ustanovkas` VALUES (1,'УКЗ № 107','2234,5',1,'2025-02-12 15:00:44','2025-02-12 15:00:44'),(2,'УКЗ № 106А','2239',1,'2025-02-12 15:01:00','2025-02-12 15:01:59'),(3,'УКЗ № 106','2242',1,'2025-02-12 15:02:00','2025-02-12 15:17:12'),(4,'УКЗ № 105Б','2245',1,'2025-02-12 15:02:51','2025-02-12 15:02:51'),(5,'УКЗ № 105А','2252',1,'2025-02-12 15:03:14','2025-02-12 15:03:14'),(6,'УКЗ № 105','2257',1,'2025-02-12 15:03:35','2025-02-12 15:03:35'),(7,'УКЗ № 104Б','2259',1,'2025-03-07 05:48:50','2025-03-07 05:48:50'),(8,'УКЗ № 104А','2262',1,'2025-03-07 05:49:23','2025-03-07 05:49:23'),(9,'УКЗ № 104-1','2265',1,'2025-03-07 05:49:47','2025-03-07 05:49:47'),(10,'УКЗ 3 104','2267',1,'2025-03-07 05:50:33','2025-03-07 05:50:33'),(11,'УКЗ № 103','795,5',2,'2025-02-12 15:04:00','2025-02-12 15:17:53'),(12,'УКЗ № 102','792,5',2,'2025-02-12 15:05:20','2025-02-12 15:05:20'),(13,'УКЗ № 98','790',2,'2025-02-12 15:05:43','2025-02-12 15:05:43'),(14,'УКЗ № 97Б','785,6',2,'2025-02-12 15:06:10','2025-02-12 15:06:10'),(15,'УКЗ № 97А','784',2,'2025-02-12 15:06:33','2025-02-12 15:06:33'),(16,'УКЗ № 97-1','780',2,'2025-02-12 15:07:00','2025-02-12 15:07:00'),(17,'УКЗ № 97','779,3',2,'2025-02-12 15:07:20','2025-02-12 15:07:20'),(18,'УКЗ № 3-1','2290',1,'2025-03-07 05:51:27','2025-03-07 05:51:27'),(19,'УКЗ № 94А','2297',1,'2025-03-07 05:52:29','2025-03-07 05:52:29'),(20,'УКЗ 3 94','2301.5',1,'2025-03-07 05:52:55','2025-03-07 05:52:55'),(21,'УКЗ № 4','2307',1,'2025-03-07 05:53:21','2025-03-07 05:53:21'),(22,'УКЗ № 4-1','2324',1,'2025-03-07 08:47:44','2025-03-07 08:47:44'),(23,'УКЗ № 4-2','137 ПК',1,'2025-03-07 08:48:26','2025-03-07 08:48:26'),(24,'УКЗ № 4-3','175 ПК',1,'2025-03-07 08:48:54','2025-03-07 08:48:54'),(25,'УКЗ № 5А','2339,5',1,'2025-03-07 08:49:39','2025-03-07 08:49:39'),(26,'УКЗ № 5Б','2348',3,'2025-02-12 15:07:44','2025-02-12 15:07:44'),(27,'УКЗ № 5-1','2351,5',3,'2025-02-12 15:08:16','2025-02-12 15:08:16'),(28,'УКЗ № 91','736',2,'2025-03-07 08:50:24','2025-03-07 08:50:24'),(29,'УКЗ № 89','727',2,'2025-03-07 08:51:32','2025-03-07 08:51:32'),(30,'УКЗ № 88А','720',2,'2025-03-07 08:51:59','2025-03-07 08:51:59'),(31,'УКЗ № 88','715,6',2,'2025-03-07 08:52:22','2025-03-07 08:52:22'),(32,'УКЗ 3 87','709',2,'2025-03-07 08:52:46','2025-03-07 08:52:46'),(33,'УКЗ № 86','703',2,'2025-03-07 09:08:07','2025-03-07 09:08:07'),(34,'УКЗ № 85','697',2,'2025-03-07 09:08:30','2025-03-07 09:08:30'),(35,'УКЗ № 84','692',2,'2025-03-07 09:09:01','2025-03-07 09:09:01'),(36,'УКЗ № 1 Н.Павловск','0,8',13,'2025-03-07 09:10:07','2025-03-07 09:10:07'),(37,'УКЗ № 1 В.Нейвинск','1,4',7,'2025-02-12 15:09:00','2025-03-07 09:10:56'),(38,'УКЗ № 2 В.Нейвинск','3,6',7,'2025-02-12 15:09:00','2025-03-07 09:11:16'),(39,'УКЗ № 3 В.Нейвинск','6,5',7,'2025-02-12 15:10:00','2025-03-07 09:11:31'),(40,'УКЗ № 4 В.Нейвинск','8,6',7,'2025-02-12 15:10:00','2025-03-07 09:11:46'),(41,'УКЗ № 1 В.Тагил','0,6',9,'2025-02-12 15:11:00','2025-03-07 09:12:09'),(42,'УКЗ № 2 В.Тагил','1,9',9,'2025-02-12 15:11:00','2025-03-07 09:12:22'),(43,'УКЗ № 3 В.Тагил','4,6',9,'2025-02-12 15:12:00','2025-03-07 09:12:34'),(44,'УКЗ № 4 В.Тагил','7,6',9,'2025-02-12 15:12:00','2025-03-07 09:12:45'),(45,'УКЗ № 5 В.Тагил','12,3',9,'2025-02-12 15:13:00','2025-03-07 09:12:56'),(46,'УКЗ № 6 В.Тагил','15,2',9,'2025-02-12 15:13:00','2025-03-07 09:13:10'),(47,'УКЗ № 1 Кировград','3.0',10,'2025-03-07 09:14:00','2025-03-07 09:14:00'),(48,'УКЗ № 1 Невьянск','4,9',11,'2025-03-07 09:14:31','2025-03-07 09:14:31'),(49,'УКЗ № 1 Ново-Асбест','9,8',12,'2025-03-07 09:15:15','2025-03-07 09:15:15'),(50,'УКЗ № 1 ГРС-1 Н.Тагил','3,2',14,'2025-03-07 09:16:14','2025-03-07 09:16:14'),(51,'УКЗ № 1 ГРС-2 Н.Тагил','1,4',20,'2025-03-07 09:17:07','2025-03-07 09:17:07'),(52,'УКЗ № 2 ГРС-2 Н.Тагил','7,4',20,'2025-03-07 09:17:44','2025-03-07 09:17:44'),(53,'УКЗ № 1 Пр/пл НЛПУМГ','791,2',22,'2025-03-07 09:18:38','2025-03-07 09:18:38'),(54,'УКЗ № 2 Пр/пл НЛПУМГ','791,2',22,'2025-03-07 09:19:06','2025-03-07 09:19:06'),(55,'УКЗ № 3 Пр/пл НЛПУМГ','791,2',22,'2025-03-07 09:19:45','2025-03-07 09:19:45'),(56,'УКЗ № 4 Пр/пл НЛПУМГ','791,2',22,'2025-03-07 09:20:12','2025-03-07 09:20:12'),(57,'УКЗ № 1 РРС 9/19','0,8',5,'2025-03-07 09:20:48','2025-03-07 09:20:48'),(58,'УКЗ № 1 о/л Таватуй','0',6,'2025-03-07 09:21:29','2025-03-07 09:21:29'),(59,'УКЗ № 2 о/л Таватуй','2,1',6,'2025-03-07 09:22:05','2025-03-07 09:22:05'),(60,'УКЗ № 1 ГРС Салка','6,3',15,'2025-03-07 09:22:34','2025-03-07 09:22:34'),(61,'УКЗ № 2А В.Н. Салда','8,5',15,'2025-03-07 09:23:24','2025-03-07 09:23:24'),(62,'УКЗ № 2 В.Н. Салда','17',15,'2025-03-07 09:25:04','2025-03-07 09:25:04'),(63,'УКЗ № 1 ГРС Свободный','0,2',17,'2025-03-07 09:25:57','2025-03-07 09:25:57'),(64,'УКЗ № 3А','30',15,'2025-03-07 09:26:27','2025-03-07 09:26:27'),(65,'УКЗ № 4 ГРС В.Салда','32',15,'2025-03-07 09:27:07','2025-03-07 09:27:07'),(66,'УКЗ № 5 ГРС Н.Салда','41,5',15,'2025-03-07 09:27:41','2025-03-07 09:27:41'),(67,'УКЗ № 1 Алапаевск','3,8',21,'2025-03-07 09:28:12','2025-03-07 09:28:12'),(68,'УКЗ № 2 Алапаевск','8,1',21,'2025-03-07 09:28:39','2025-03-07 09:28:39'),(69,'УКЗ № 3 Алапаевск','10,5',21,'2025-03-07 09:29:08','2025-03-07 09:29:08'),(70,'УКЗ № 3-1 Алапаевск','14',21,'2025-03-07 09:29:35','2025-03-07 09:29:35'),(71,'УКЗ № 4 Алапаевск','19,2',21,'2025-03-07 09:30:02','2025-03-07 09:30:02'),(72,'УКЗ № 4-1 Алапаевск','20,3',21,'2025-03-07 09:30:30','2025-03-07 09:30:30'),(73,'УКЗ № 5 Алапаевск','22,9',21,'2025-03-07 09:30:59','2025-03-07 09:30:59'),(74,'УКЗ № 6 Алапаевск','29,2',21,'2025-03-07 09:52:06','2025-03-07 09:52:06'),(75,'УКЗ № 7 Алапаевск','33,7',21,'2025-03-07 09:52:36','2025-03-07 09:52:36'),(76,'УКЗ № 8 Алапаевск','41,8',21,'2025-03-07 09:53:08','2025-03-07 09:53:08'),(77,'УКЗ № 9 Алапаевск','47',21,'2025-03-07 09:53:35','2025-03-07 09:53:35'),(78,'УКЗ № 10 Алапаевск','52',21,'2025-03-07 09:54:02','2025-03-07 09:54:02'),(79,'УКЗ № 11 Алапаевск','59,7',21,'2025-03-07 09:54:44','2025-03-07 09:54:44'),(80,'УКЗ № 12 ГРС Алапаевск','65.2',21,'2025-03-07 09:55:21','2025-03-07 09:55:21'),(81,'УКЗ № 1 Первоуральск','0,4',23,'2025-03-07 09:56:18','2025-03-07 09:56:18'),(82,'УКЗ № 2 Первоуральск','5.1',23,'2025-03-07 09:56:47','2025-03-07 09:56:47'),(83,'УКЗ № 3 Первоуральск','10.6',23,'2025-03-07 09:57:17','2025-03-07 09:57:17'),(84,'УКЗ № 4 Первоуральск','12.5',23,'2025-03-07 09:57:50','2025-03-07 09:57:50'),(85,'УКЗ № 5 Первоуральск','13.0',23,'2025-03-07 09:58:16','2025-03-07 09:58:16'),(86,'УКЗ № 6 Первоуральск','15.4',23,'2025-03-07 09:58:54','2025-03-07 09:58:54'),(87,'УКЗ № 1А Первоуральск','0.4',24,'2025-03-07 10:04:02','2025-03-07 10:04:02'),(88,'УКЗ № 2А Первоуральск','5.4',24,'2025-03-07 10:04:24','2025-03-07 10:04:24'),(89,'УКЗ № 3А Первоуральск','10.5',24,'2025-03-07 10:04:00','2025-03-07 10:09:43'),(90,'УКЗ № 4А Первоуральск','12.5',24,'2025-03-07 10:05:00','2025-03-07 10:08:35'),(91,'УКЗ № 5А Первоуральск','13.0',24,'2025-03-07 10:06:17','2025-03-07 10:06:17'),(92,'УКЗ № 6А Первоуральск','15.4',24,'2025-03-07 10:06:46','2025-03-07 10:06:46'),(93,'УКЗ № 1 Калиново','2.0',25,'2025-03-07 10:07:27','2025-03-07 10:07:27'),(94,'УКЗ № 2 Калиново','5.0',25,'2025-03-07 10:07:50','2025-03-07 10:07:50'),(95,'УКЗ № 2А Калиново','5.4',25,'2025-03-07 10:08:12','2025-03-07 10:08:12');
/*!40000 ALTER TABLE `ustanovkas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_138`
--

DROP TABLE IF EXISTS `wl_138`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_138` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_138`
--

LOCK TABLES `wl_138` WRITE;
/*!40000 ALTER TABLE `wl_138` DISABLE KEYS */;
INSERT INTO `wl_138` VALUES (1,138,'ТО','2025-03-26','Осмотр ВЛ','Акулов','Замечаний нет',1,'Урал КУНГ',NULL,NULL,NULL),(2,138,'ТО','2025-04-30','Осмотр ВЛ','Костин\r\nЛогинов','Замечаний нет',1,'Урал КУНГ, УАЗ','works/138/PaaIhlWxzAn47pbPpwBvsc66XxfeHojcMcqsaS9M.jpg',NULL,NULL),(3,138,'AO','2025-04-30',NULL,NULL,NULL,0,'Автовышка',NULL,NULL,NULL),(4,138,'ВНЕПЛАНОВЫЕ','2025-06-25',NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL),(5,138,'AO','2025-07-30',NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(6,138,'ВНЕПЛАНОВЫЕ','2025-08-25',NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL),(7,138,'AO','2025-09-05',NULL,NULL,NULL,0,'УАЗ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wl_138` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_139`
--

DROP TABLE IF EXISTS `wl_139`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_139` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_139`
--

LOCK TABLES `wl_139` WRITE;
/*!40000 ALTER TABLE `wl_139` DISABLE KEYS */;
INSERT INTO `wl_139` VALUES (1,139,'AO','2025-03-28',NULL,NULL,NULL,0,'УАЗ, Автовышка','works/139/GUuScsBZEGTzwdKBwMMdJrTmo7PRUOcXYzN2Pibb.jpg',NULL,NULL);
/*!40000 ALTER TABLE `wl_139` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_140`
--

DROP TABLE IF EXISTS `wl_140`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_140` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_140`
--

LOCK TABLES `wl_140` WRITE;
/*!40000 ALTER TABLE `wl_140` DISABLE KEYS */;
INSERT INTO `wl_140` VALUES (1,140,'ТО','2025-07-30','Осмотр ВЛ','Акулов\r\nКостин','Править опору № 21',1,'УАЗ','works/140/uZwIEVrM5CI4ZG9OxlvslZiYdxjMDBWAlKwnhbr7.jpg',NULL,NULL),(2,140,'ТО','2025-04-28',NULL,NULL,NULL,0,'УАЗ, Автовышка',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wl_140` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_141`
--

DROP TABLE IF EXISTS `wl_141`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_141` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_141`
--

LOCK TABLES `wl_141` WRITE;
/*!40000 ALTER TABLE `wl_141` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_141` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_142`
--

DROP TABLE IF EXISTS `wl_142`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_142` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_142`
--

LOCK TABLES `wl_142` WRITE;
/*!40000 ALTER TABLE `wl_142` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_142` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_143`
--

DROP TABLE IF EXISTS `wl_143`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_143` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_143`
--

LOCK TABLES `wl_143` WRITE;
/*!40000 ALTER TABLE `wl_143` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_143` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_144`
--

DROP TABLE IF EXISTS `wl_144`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_144` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_144`
--

LOCK TABLES `wl_144` WRITE;
/*!40000 ALTER TABLE `wl_144` DISABLE KEYS */;
INSERT INTO `wl_144` VALUES (1,144,'AO','2025-07-30',NULL,NULL,NULL,0,'УАЗ, Экскаватор JCB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `wl_144` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_145`
--

DROP TABLE IF EXISTS `wl_145`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_145` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_145`
--

LOCK TABLES `wl_145` WRITE;
/*!40000 ALTER TABLE `wl_145` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_145` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_146`
--

DROP TABLE IF EXISTS `wl_146`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_146` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_146`
--

LOCK TABLES `wl_146` WRITE;
/*!40000 ALTER TABLE `wl_146` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_146` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_147`
--

DROP TABLE IF EXISTS `wl_147`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_147` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_147`
--

LOCK TABLES `wl_147` WRITE;
/*!40000 ALTER TABLE `wl_147` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_147` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_148`
--

DROP TABLE IF EXISTS `wl_148`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_148` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_148`
--

LOCK TABLES `wl_148` WRITE;
/*!40000 ALTER TABLE `wl_148` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_148` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_149`
--

DROP TABLE IF EXISTS `wl_149`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_149` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_149`
--

LOCK TABLES `wl_149` WRITE;
/*!40000 ALTER TABLE `wl_149` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_149` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_150`
--

DROP TABLE IF EXISTS `wl_150`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_150` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_150`
--

LOCK TABLES `wl_150` WRITE;
/*!40000 ALTER TABLE `wl_150` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_150` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_151`
--

DROP TABLE IF EXISTS `wl_151`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_151` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_151`
--

LOCK TABLES `wl_151` WRITE;
/*!40000 ALTER TABLE `wl_151` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_151` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_152`
--

DROP TABLE IF EXISTS `wl_152`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_152` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_152`
--

LOCK TABLES `wl_152` WRITE;
/*!40000 ALTER TABLE `wl_152` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_152` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_153`
--

DROP TABLE IF EXISTS `wl_153`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_153` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_153`
--

LOCK TABLES `wl_153` WRITE;
/*!40000 ALTER TABLE `wl_153` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_153` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_154`
--

DROP TABLE IF EXISTS `wl_154`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_154` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_154`
--

LOCK TABLES `wl_154` WRITE;
/*!40000 ALTER TABLE `wl_154` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_154` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_155`
--

DROP TABLE IF EXISTS `wl_155`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_155` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_155`
--

LOCK TABLES `wl_155` WRITE;
/*!40000 ALTER TABLE `wl_155` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_155` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_156`
--

DROP TABLE IF EXISTS `wl_156`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_156` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_156`
--

LOCK TABLES `wl_156` WRITE;
/*!40000 ALTER TABLE `wl_156` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_156` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_157`
--

DROP TABLE IF EXISTS `wl_157`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_157` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_157`
--

LOCK TABLES `wl_157` WRITE;
/*!40000 ALTER TABLE `wl_157` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_157` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_158`
--

DROP TABLE IF EXISTS `wl_158`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_158` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_158`
--

LOCK TABLES `wl_158` WRITE;
/*!40000 ALTER TABLE `wl_158` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_158` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_159`
--

DROP TABLE IF EXISTS `wl_159`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_159` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_159`
--

LOCK TABLES `wl_159` WRITE;
/*!40000 ALTER TABLE `wl_159` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_159` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_160`
--

DROP TABLE IF EXISTS `wl_160`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_160` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_160`
--

LOCK TABLES `wl_160` WRITE;
/*!40000 ALTER TABLE `wl_160` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_160` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_161`
--

DROP TABLE IF EXISTS `wl_161`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_161` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_161`
--

LOCK TABLES `wl_161` WRITE;
/*!40000 ALTER TABLE `wl_161` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_161` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_162`
--

DROP TABLE IF EXISTS `wl_162`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_162` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_162`
--

LOCK TABLES `wl_162` WRITE;
/*!40000 ALTER TABLE `wl_162` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_162` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_163`
--

DROP TABLE IF EXISTS `wl_163`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_163` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_163`
--

LOCK TABLES `wl_163` WRITE;
/*!40000 ALTER TABLE `wl_163` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_163` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_164`
--

DROP TABLE IF EXISTS `wl_164`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_164` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_164`
--

LOCK TABLES `wl_164` WRITE;
/*!40000 ALTER TABLE `wl_164` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_164` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_165`
--

DROP TABLE IF EXISTS `wl_165`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_165` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_165`
--

LOCK TABLES `wl_165` WRITE;
/*!40000 ALTER TABLE `wl_165` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_165` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_166`
--

DROP TABLE IF EXISTS `wl_166`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_166` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_166`
--

LOCK TABLES `wl_166` WRITE;
/*!40000 ALTER TABLE `wl_166` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_166` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_167`
--

DROP TABLE IF EXISTS `wl_167`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_167` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_167`
--

LOCK TABLES `wl_167` WRITE;
/*!40000 ALTER TABLE `wl_167` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_167` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_168`
--

DROP TABLE IF EXISTS `wl_168`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_168` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_168`
--

LOCK TABLES `wl_168` WRITE;
/*!40000 ALTER TABLE `wl_168` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_168` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_169`
--

DROP TABLE IF EXISTS `wl_169`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_169` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_169`
--

LOCK TABLES `wl_169` WRITE;
/*!40000 ALTER TABLE `wl_169` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_169` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_170`
--

DROP TABLE IF EXISTS `wl_170`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_170` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_170`
--

LOCK TABLES `wl_170` WRITE;
/*!40000 ALTER TABLE `wl_170` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_170` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wl_171`
--

DROP TABLE IF EXISTS `wl_171`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wl_171` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeroLine_id` int NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date` date NOT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_performers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wl_171`
--

LOCK TABLES `wl_171` WRITE;
/*!40000 ALTER TABLE `wl_171` DISABLE KEYS */;
/*!40000 ALTER TABLE `wl_171` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 18:54:21
