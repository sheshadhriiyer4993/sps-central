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
-- Table structure for table `sbm_t_job_raw_materials`
--

DROP TABLE IF EXISTS `sbm_t_job_raw_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_t_job_raw_materials` (
  `t_job_raw_materials_id` bigint NOT NULL AUTO_INCREMENT,
  `t_job_id` bigint DEFAULT NULL,
  `m_raw_material_id` bigint DEFAULT NULL,
  `raw_material_quantity` decimal(10,2) DEFAULT NULL,
  `m_user_id` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `m_user_id_update` bigint DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `job_raw_material_active` int DEFAULT NULL,
  PRIMARY KEY (`t_job_raw_materials_id`),
  KEY `parentJob_idx` (`t_job_id`),
  KEY `parentRawMaterialForJob_idx` (`m_raw_material_id`),
  KEY `parentJobRawMaterialCreatedBy_idx` (`m_user_id`),
  KEY `parentJobRawMaterialUpdatedBy_idx` (`m_user_id_update`),
  CONSTRAINT `parentJob` FOREIGN KEY (`t_job_id`) REFERENCES `sbm_t_job` (`t_job_id`),
  CONSTRAINT `parentJobRawMaterialCreatedBy` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `parentJobRawMaterialUpdatedBy` FOREIGN KEY (`m_user_id_update`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `parentRawMaterialForJob` FOREIGN KEY (`m_raw_material_id`) REFERENCES `sbm_m_raw_material` (`m_raw_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_t_job_raw_materials`
--

LOCK TABLES `sbm_t_job_raw_materials` WRITE;
/*!40000 ALTER TABLE `sbm_t_job_raw_materials` DISABLE KEYS */;
INSERT INTO `sbm_t_job_raw_materials` VALUES (1,1,22,5.00,1,NULL,NULL,NULL,1),(2,1,10,10.00,1,NULL,NULL,NULL,1),(3,2,22,5.00,1,NULL,NULL,NULL,1),(4,2,10,10.00,1,NULL,NULL,NULL,1),(5,3,10,12.00,1,NULL,NULL,NULL,1),(6,3,22,7.00,1,NULL,NULL,NULL,1),(7,4,10,5.00,1,NULL,NULL,NULL,1),(8,4,22,2.00,1,NULL,NULL,NULL,1),(9,5,22,5.00,1,'2022-09-20 14:19:31',NULL,NULL,1),(10,5,10,5.00,1,'2022-09-20 14:19:31',NULL,NULL,1),(11,6,10,15.00,1,'2022-09-20 19:29:55',NULL,NULL,1),(12,6,22,5.00,1,'2022-09-20 19:29:55',NULL,NULL,1),(13,7,22,1.00,1,'2022-11-19 19:46:27',NULL,NULL,1),(14,7,10,3.00,1,'2022-11-19 19:46:27',NULL,NULL,1);
/*!40000 ALTER TABLE `sbm_t_job_raw_materials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:04:00
