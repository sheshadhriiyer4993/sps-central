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
-- Table structure for table `sbm_m_product_raw_material_map`
--

DROP TABLE IF EXISTS `sbm_m_product_raw_material_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_product_raw_material_map` (
  `m_product_raw_material_map_id` bigint NOT NULL AUTO_INCREMENT,
  `m_product_id` bigint DEFAULT NULL,
  `m_raw_material_id` bigint DEFAULT NULL,
  `product_raw_material_map_created_by` bigint DEFAULT NULL,
  `product_raw_material_map_created_on` datetime DEFAULT NULL,
  `product_raw_material_map_updated_by` bigint DEFAULT NULL,
  `product_raw_material_map_updated_on` datetime DEFAULT NULL,
  `product_raw_material_map_actve` int DEFAULT NULL,
  PRIMARY KEY (`m_product_raw_material_map_id`),
  KEY `pRaCreatedBy` (`product_raw_material_map_created_by`),
  KEY `pRaUpdatedBy` (`product_raw_material_map_updated_by`),
  KEY `productRawMaterialMap` (`m_product_id`),
  KEY `rawMaterialProductMap` (`m_raw_material_id`),
  CONSTRAINT `pRaCreatedBy` FOREIGN KEY (`product_raw_material_map_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `pRaUpdatedBy` FOREIGN KEY (`product_raw_material_map_updated_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `productRawMaterialMap` FOREIGN KEY (`m_product_id`) REFERENCES `sbm_m_product` (`m_product_id`),
  CONSTRAINT `rawMaterialProductMap` FOREIGN KEY (`m_raw_material_id`) REFERENCES `sbm_m_raw_material` (`m_raw_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_product_raw_material_map`
--

LOCK TABLES `sbm_m_product_raw_material_map` WRITE;
/*!40000 ALTER TABLE `sbm_m_product_raw_material_map` DISABLE KEYS */;
INSERT INTO `sbm_m_product_raw_material_map` VALUES (1,1,1,1,'2022-08-25 17:06:08',NULL,NULL,1),(2,1,7,1,'2022-08-25 17:06:08',NULL,NULL,1),(3,1,15,1,'2022-08-25 17:06:08',NULL,NULL,1),(4,2,1,1,'2022-08-25 20:40:15',1,'2022-08-27 21:50:31',1),(5,2,6,1,'2022-08-25 20:40:15',1,'2022-08-27 21:50:31',1),(6,3,8,1,'2022-08-25 21:03:28',NULL,NULL,1),(7,3,10,1,'2022-08-25 21:03:28',NULL,NULL,1),(8,3,13,1,'2022-08-25 21:03:28',NULL,NULL,1),(9,2,10,1,'2022-08-25 21:03:38',1,'2022-08-27 21:50:31',1),(10,4,12,1,'2022-08-25 21:09:38',NULL,NULL,1),(11,4,15,1,'2022-08-25 21:09:38',NULL,NULL,1),(12,4,20,1,'2022-08-25 21:09:38',NULL,NULL,1),(13,4,22,1,'2022-08-25 21:09:38',NULL,NULL,1),(14,5,3,1,'2022-08-25 21:19:54',NULL,NULL,1),(15,5,7,1,'2022-08-25 21:19:54',NULL,NULL,1),(16,6,15,1,'2022-08-27 14:48:01',NULL,NULL,0),(17,6,20,1,'2022-08-27 14:48:01',NULL,NULL,0),(18,6,10,1,'2022-09-03 19:48:07',NULL,NULL,1),(19,6,22,1,'2022-09-03 19:48:07',NULL,NULL,1);
/*!40000 ALTER TABLE `sbm_m_product_raw_material_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:53
