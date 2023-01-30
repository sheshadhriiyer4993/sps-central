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
-- Table structure for table `sbm_m_raw_material_history`
--

DROP TABLE IF EXISTS `sbm_m_raw_material_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_raw_material_history` (
  `m_raw_material_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_raw_material_id` bigint NOT NULL,
  `raw_material_name` varchar(100) DEFAULT NULL,
  `raw_material_description` varchar(250) DEFAULT NULL,
  `raw_material_created_on` datetime DEFAULT NULL,
  `raw_material_created_by` bigint DEFAULT NULL,
  `raw_material_active` int DEFAULT NULL,
  PRIMARY KEY (`m_raw_material_history_id`),
  KEY `rawMaterialHistoryCreatedBy` (`raw_material_created_by`),
  KEY `parentRawMaterial` (`m_raw_material_id`),
  CONSTRAINT `parentRawMaterial` FOREIGN KEY (`m_raw_material_id`) REFERENCES `sbm_m_raw_material` (`m_raw_material_id`),
  CONSTRAINT `rawMaterialHistoryCreatedBy` FOREIGN KEY (`raw_material_created_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_raw_material_history`
--

LOCK TABLES `sbm_m_raw_material_history` WRITE;
/*!40000 ALTER TABLE `sbm_m_raw_material_history` DISABLE KEYS */;
INSERT INTO `sbm_m_raw_material_history` VALUES (1,7,'Raw Material 7','Raw Material 7','2022-08-25 15:23:22',1,NULL),(2,11,'Raw Material 11','Raw Material 11','2022-08-25 15:30:13',1,1),(3,9,'Raw Material 9','Raw Material 9','2022-08-25 15:35:18',1,1),(4,5,'Raw Material 5','Raw Material 5','2022-08-25 15:35:23',1,1),(5,2,'Raw Material 2','Raw Material 2','2022-08-25 15:35:28',1,1),(6,14,'Raw Material 14','Raw Material 14','2022-08-25 15:35:37',1,1),(7,4,'Raw Material 4','Raw Material 4','2022-08-25 16:08:06',1,1);
/*!40000 ALTER TABLE `sbm_m_raw_material_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:47
