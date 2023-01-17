-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: programmer-yhc
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mahasiswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `nim` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `prodi_id` int unsigned NOT NULL,
  `angkatan` int NOT NULL,
  `kelas_id` int NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`,`prodi_id`,`kelas_id`),
  UNIQUE KEY `nim_UNIQUE` (`nim`),
  KEY `fk_mahasiswa_prodi1_idx` (`prodi_id`),
  KEY `fk_mahasiswa_kelas1_idx` (`kelas_id`),
  CONSTRAINT `fk_mahasiswa_kelas1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  CONSTRAINT `fk_mahasiswa_prodi1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,'Muhammad Jatmika Aryaputra','1910817210004','8',1,2019,1,'2023-01-16',NULL),(4,'Rosanty Rizkha Agustina','1910817210006','7',3,2019,4,'2023-01-16','2023-01-16'),(6,'Terence Weissnat','867365109912','8',4,2017,1,'2023-01-16','2023-01-16'),(7,'Adrian O\'Reilly','974161066286','13',5,2015,1,'2023-01-16','2023-01-16'),(8,'Roman Casper','1414532181591','4',4,2017,3,'2023-01-16','2023-01-16'),(9,'Amara Frami','758342859741','9',4,2018,1,'2023-01-16','2023-01-16'),(10,'Rashawn Bergstrom','530755207501','3',4,2021,3,'2023-01-16','2023-01-16'),(11,'Maureen Schiller','1882137629895','8',5,2017,1,'2023-01-16','2023-01-16'),(12,'Dr. Alexandria Lynch','1804432101864','11',5,2018,3,'2023-01-16','2023-01-16'),(13,'Mr. Jerrold Prohaska PhD','1782526755778','1',5,2021,2,'2023-01-16','2023-01-16'),(14,'Anna Little I','662959095222','7',5,2016,3,'2023-01-16','2023-01-16'),(15,'Burnice Russel','1587811492485','3',2,2018,1,'2023-01-16','2023-01-16'),(16,'Junius Flatley I','1667366978318','10',1,2020,4,'2023-01-16','2023-01-16'),(17,'Ethelyn Kilback','1642751602497','3',3,2019,3,'2023-01-16','2023-01-16'),(18,'Marina Parisian','836248032740','6',5,2019,3,'2023-01-16','2023-01-16'),(19,'Prof. Jorge Ruecker DVM','1243992637197','1',3,2019,2,'2023-01-16','2023-01-16'),(20,'Prof. Saul O\'Connell DDS','1221187816087','6',4,2016,3,'2023-01-16','2023-01-16'),(21,'Tiara Block','976822695911','3',3,2016,3,'2023-01-16','2023-01-16'),(22,'Prof. Gordon Bins IV','1413326931567','3',5,2019,4,'2023-01-16','2023-01-16'),(23,'Augustine O\'Hara','219642332728','13',3,2015,3,'2023-01-16','2023-01-16'),(24,'Benjamin Hand MD','568354871632','5',1,2017,2,'2023-01-16','2023-01-16'),(25,'Adelle Parker','774462194135','14',1,2016,2,'2023-01-16','2023-01-16'),(26,'Ivah Murphy','1121157045763','8',4,2020,2,'2023-01-16','2023-01-16'),(27,'Maude Hackett','713642318979','6',3,2021,1,'2023-01-16','2023-01-16'),(28,'Miss Kiana Medhurst','1621213776158','13',3,2016,4,'2023-01-16','2023-01-16'),(29,'Schuyler Gibson','1507761986946','1',5,2018,2,'2023-01-16','2023-01-16'),(30,'Name D\'Amore','230169228961','10',3,2021,2,'2023-01-16','2023-01-16'),(31,'Marty Wisozk','1597256695191','9',5,2021,3,'2023-01-16','2023-01-16'),(32,'Ms. Malvina Graham','1534381615284','12',2,2019,3,'2023-01-16','2023-01-16'),(33,'Reilly Wintheiser','611037626997','12',3,2016,4,'2023-01-16','2023-01-16'),(34,'Dr. Jordyn Hill Jr.','944466475661','12',2,2020,2,'2023-01-16','2023-01-16'),(35,'Justice Vandervort','1071114575016','6',1,2017,1,'2023-01-16','2023-01-16'),(36,'Rickie Armstrong','1538365123479','14',5,2019,4,'2023-01-16','2023-01-16'),(37,'Dulce Bahringer','1705165238931','11',4,2020,3,'2023-01-16','2023-01-16'),(38,'Brooks Stroman','1675570712321','10',1,2020,1,'2023-01-16','2023-01-16'),(39,'Willard Langosh','510609417411','6',2,2018,2,'2023-01-16','2023-01-16'),(40,'May Schoen','861079037109','12',1,2015,3,'2023-01-16','2023-01-16'),(41,'Mabelle Schaefer','370295356104','13',5,2017,4,'2023-01-16','2023-01-16'),(42,'Leland Boyle','832995040728','1',5,2019,2,'2023-01-16','2023-01-16'),(43,'Lelia Anderson','1858871780360','9',5,2017,4,'2023-01-16','2023-01-16'),(44,'Prof. Johanna Hilpert','1589272384586','6',1,2018,2,'2023-01-16','2023-01-16'),(45,'Demetris Larson','784059063554','6',5,2019,3,'2023-01-16','2023-01-16'),(46,'Prof. Skyla Ward','1763446667596','8',5,2020,3,'2023-01-16','2023-01-16'),(47,'Earline Miller','1075241388368','11',1,2020,1,'2023-01-16','2023-01-16'),(48,'Candido Emard','1236251062940','5',2,2021,1,'2023-01-16','2023-01-16'),(49,'Kristofer Zieme','1420057864625','11',5,2016,3,'2023-01-16','2023-01-16'),(50,'Clarabelle Kunde','737262617710','12',5,2015,1,'2023-01-16','2023-01-16'),(51,'Rhett Larson I','1150704462666','4',4,2018,1,'2023-01-16','2023-01-16'),(52,'Dr. Hollie Maggio','1089507923190','2',5,2016,1,'2023-01-16','2023-01-16'),(53,'Prof. Shana Hauck II','592278045855','9',5,2022,2,'2023-01-16','2023-01-16'),(54,'Lura Littel','661603550147','12',5,2016,1,'2023-01-16','2023-01-16'),(55,'Raoul Murazik','556766666800','5',2,2015,2,'2023-01-16','2023-01-16');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodi`
--

DROP TABLE IF EXISTS `prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_prodi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodi`
--

LOCK TABLES `prodi` WRITE;
/*!40000 ALTER TABLE `prodi` DISABLE KEYS */;
INSERT INTO `prodi` VALUES (1,'Teknologi Informasi'),(2,'Teknik Sipil'),(3,'Teknik Lingkungan'),(4,'Akuntansi'),(5,'Hukum');
/*!40000 ALTER TABLE `prodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Muhammad Jatmika Aryaputra','arya66151@gmail.com',NULL,'$2y$10$9LWn1Cvo5.P5XBXXQKhc..iSgNeCYFy2Q7UlihjTHqBWB43nD55mq','ATSKc34JdP2pABSt1P0ihOVBoZBHasatw0o8px5847Sts65EWa1rlalliPD0','2023-01-16 00:08:39','2023-01-16 00:08:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 10:26:36
