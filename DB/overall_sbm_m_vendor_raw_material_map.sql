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
-- Table structure for table `sbm_m_vendor_raw_material_map`
--

DROP TABLE IF EXISTS `sbm_m_vendor_raw_material_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_vendor_raw_material_map` (
  `m_vendor_raw_material_map_id` bigint NOT NULL AUTO_INCREMENT,
  `m_vendor_id` bigint DEFAULT NULL,
  `m_raw_material_id` bigint DEFAULT NULL,
  `vendor_raw_material_map_created_by` bigint DEFAULT NULL,
  `vendor_raw_material_map_created_on` datetime DEFAULT NULL,
  `vendor_raw_material_map_updated_by` bigint DEFAULT NULL,
  `vendor_raw_material_map_updated_on` datetime DEFAULT NULL,
  `vendor_raw_material_map_active` int DEFAULT NULL,
  PRIMARY KEY (`m_vendor_raw_material_map_id`),
  KEY `rawMaterialInformation` (`m_raw_material_id`),
  KEY `vendorInformation` (`m_vendor_id`),
  KEY `veRawCreatedBy` (`vendor_raw_material_map_created_by`),
  KEY `veRawUpdatedOn` (`vendor_raw_material_map_updated_by`),
  CONSTRAINT `rawMaterialInformation` FOREIGN KEY (`m_raw_material_id`) REFERENCES `sbm_m_raw_material` (`m_raw_material_id`),
  CONSTRAINT `vendorInformation` FOREIGN KEY (`m_vendor_id`) REFERENCES `sbm_m_vendor` (`m_vendor_id`),
  CONSTRAINT `veRawCreatedBy` FOREIGN KEY (`vendor_raw_material_map_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `veRawUpdatedOn` FOREIGN KEY (`vendor_raw_material_map_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_vendor_raw_material_map`
--

LOCK TABLES `sbm_m_vendor_raw_material_map` WRITE;
/*!40000 ALTER TABLE `sbm_m_vendor_raw_material_map` DISABLE KEYS */;
INSERT INTO `sbm_m_vendor_raw_material_map` VALUES (1,1,1,1,'2022-08-27 18:55:43',1,'2022-08-27 19:28:18',1),(2,1,6,1,'2022-08-27 18:55:43',1,'2022-08-27 19:11:06',0),(3,2,6,1,'2022-08-27 19:08:02',1,'2022-08-27 19:28:31',1),(4,2,8,1,'2022-08-27 19:08:02',1,'2022-08-27 19:28:31',1),(5,1,22,1,'2022-08-27 19:28:18',NULL,NULL,1),(6,3,6,1,'2022-08-27 19:52:01',1,'2022-08-27 20:42:28',1),(7,3,8,1,'2022-08-27 19:52:01',1,'2022-08-27 20:42:28',1);
/*!40000 ALTER TABLE `sbm_m_vendor_raw_material_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:51
