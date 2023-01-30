-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: overall
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `sbm_m_raw_material`
--

DROP TABLE IF EXISTS `sbm_m_raw_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_raw_material` (
  `m_raw_material_id` bigint NOT NULL AUTO_INCREMENT,
  `raw_material_name` varchar(100) DEFAULT NULL,
  `raw_material_description` varchar(250) DEFAULT NULL,
  `raw_material_created_on` datetime DEFAULT NULL,
  `raw_material_created_by` bigint DEFAULT NULL,
  `raw_material_updated_on` datetime DEFAULT NULL,
  `raw_material_updated_by` bigint DEFAULT NULL,
  `raw_material_active` int DEFAULT NULL,
  PRIMARY KEY (`m_raw_material_id`),
  KEY `rawMaterialCreatedBy` (`raw_material_created_by`),
  KEY `rawMaterialUpdateBy` (`raw_material_updated_by`),
  CONSTRAINT `rawMaterialCreatedBy` FOREIGN KEY (`raw_material_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `rawMaterialUpdateBy` FOREIGN KEY (`raw_material_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_raw_material`
--

LOCK TABLES `sbm_m_raw_material` WRITE;
/*!40000 ALTER TABLE `sbm_m_raw_material` DISABLE KEYS */;
INSERT INTO `sbm_m_raw_material` VALUES (1,'Raw Material 1','Raw Material 1','2022-08-25 15:15:33',1,NULL,NULL,1),(2,'Raw Material 2','Raw Material 2','2022-08-25 15:18:36',1,'2022-08-25 15:35:28',1,0),(3,'Raw Material 3','Raw Material 3','2022-08-25 15:18:42',1,NULL,NULL,1),(4,'Raw Material 4','Raw Material 4','2022-08-25 15:18:51',1,'2022-08-25 16:08:06',1,0),(5,'Raw Material 5','Raw Material 5','2022-08-25 15:19:04',1,'2022-08-25 15:35:23',1,0),(6,'Raw Material 6','Raw Material 6','2022-08-25 15:19:13',1,NULL,NULL,1),(7,'Raw Material 7','Raw Material 7','2022-08-25 15:19:23',1,'2022-08-25 15:23:22',1,1),(8,'Raw Material 8','Raw Material 8','2022-08-25 15:23:39',1,NULL,NULL,1),(9,'Raw Material 9','Raw Material 9','2022-08-25 15:23:51',1,'2022-08-25 15:35:18',1,0),(10,'Raw Material 10','Raw Material 10','2022-08-25 15:24:12',1,NULL,NULL,1),(11,'Raw Material 11','Raw Material 11','2022-08-25 15:28:34',1,'2022-08-25 15:30:13',1,0),(12,'Raw Material 12','Raw Material 12','2022-08-25 15:28:40',1,NULL,NULL,1),(13,'Raw Material 13','Raw Material 13','2022-08-25 15:28:55',1,NULL,NULL,1),(14,'Raw Material 14','Raw Material 14','2022-08-25 15:29:02',1,'2022-08-25 15:35:37',1,0),(15,'Raw Material 15','Raw Material 15','2022-08-25 15:29:07',1,NULL,NULL,1),(16,'Raw Material 16','Raw Material 16','2022-08-25 15:29:57',1,NULL,NULL,1),(17,'Raw Material 17','Raw Material 17','2022-08-25 15:30:08',1,NULL,NULL,0),(18,'Raw Material 18','Raw Material 18','2022-08-25 15:32:17',1,NULL,NULL,0),(19,'Raw Material 19','Raw Material 19','2022-08-25 15:32:25',1,NULL,NULL,0),(20,'Raw Material 20','Raw Material 20','2022-08-25 15:32:33',1,NULL,NULL,1),(21,'Raw Material 21','Raw Material 21','2022-08-25 16:06:17',1,NULL,NULL,1),(22,'Raw Material 22','Raw Material 22','2022-08-25 16:06:25',1,NULL,NULL,1),(23,'Raw Material 23','Raw Material 23','2022-08-25 16:07:26',1,NULL,NULL,1),(24,'Raw Material 24','Raw Material 24','2022-08-25 16:07:35',1,NULL,NULL,0);
/*!40000 ALTER TABLE `sbm_m_raw_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:58
