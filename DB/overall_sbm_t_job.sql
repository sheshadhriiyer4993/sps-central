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
-- Table structure for table `sbm_t_job`
--

DROP TABLE IF EXISTS `sbm_t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_t_job` (
  `t_job_id` bigint NOT NULL AUTO_INCREMENT,
  `m_product_id` bigint DEFAULT NULL,
  `m_entity_id` bigint DEFAULT NULL,
  `job_code` varchar(100) DEFAULT NULL,
  `expected_quantity` decimal(10,2) DEFAULT NULL,
  `actual_quantity` decimal(10,2) DEFAULT NULL,
  `packet_flag` int DEFAULT NULL COMMENT '0/Null - Not Packeted yet, 1-Packeted',
  `m_user_id` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `m_user_id_update` bigint DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `job_active` int DEFAULT NULL,
  PRIMARY KEY (`t_job_id`),
  KEY `parentProductForJob_idx` (`m_product_id`),
  KEY `parentEntityForJob_idx` (`m_entity_id`),
  KEY `jobCreatedBy_idx` (`m_user_id`),
  KEY `jobUpdatedBy_idx` (`m_user_id_update`),
  CONSTRAINT `jobCreatedBy` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `jobUpdatedBy` FOREIGN KEY (`m_user_id_update`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `parentEntityForJob` FOREIGN KEY (`m_entity_id`) REFERENCES `m_entity` (`m_entity_id`),
  CONSTRAINT `parentProductForJob` FOREIGN KEY (`m_product_id`) REFERENCES `sbm_m_product` (`m_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_t_job`
--

LOCK TABLES `sbm_t_job` WRITE;
/*!40000 ALTER TABLE `sbm_t_job` DISABLE KEYS */;
INSERT INTO `sbm_t_job` VALUES (1,6,11,'SBM-J-TRICHY-P006-0001',13.50,NULL,NULL,1,'2022-09-20 12:27:20',NULL,NULL,1),(2,6,11,'SBM-J-TRICHY-P006-0002',13.50,13.20,NULL,1,'2022-09-20 12:42:09',1,'2022-11-19 20:16:31',1),(3,6,4,'SBM-J-BANGALORE-P006-0001',17.10,16.50,1,1,'2022-09-20 13:01:55',1,'2022-10-04 17:07:13',1),(4,6,4,'SBM-J-BANGALORE-P006-0002',6.30,NULL,NULL,1,'2022-09-20 13:02:32',NULL,NULL,1),(5,6,2,'SBM-J-NEW DELHI-P006-0001',9.00,8.70,1,1,'2022-09-20 14:19:31',1,'2022-10-04 17:02:35',1),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,6,4,'SBM-J-BANGALORE-P006-0003',3.60,NULL,NULL,1,'2022-11-19 19:46:27',NULL,NULL,1);
/*!40000 ALTER TABLE `sbm_t_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:04:03
