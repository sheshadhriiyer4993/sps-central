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
-- Table structure for table `sbm_t_job_packet`
--

DROP TABLE IF EXISTS `sbm_t_job_packet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_t_job_packet` (
  `t_job_packet_id` bigint NOT NULL AUTO_INCREMENT,
  `t_job_id` bigint DEFAULT NULL,
  `m_packet_id` bigint DEFAULT NULL,
  `no_of_packets` int DEFAULT NULL,
  `job_packet_active` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`t_job_packet_id`),
  KEY `parentTJob_idx` (`t_job_id`),
  KEY `parentPacketJob_idx` (`m_packet_id`),
  KEY `jobPacketCreatedBy_idx` (`created_by`),
  KEY `jobPacketUpdatedBy_idx` (`updated_by`),
  CONSTRAINT `jobPacketCreatedBy` FOREIGN KEY (`created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `jobPacketUpdatedBy` FOREIGN KEY (`updated_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `parentPacketJob` FOREIGN KEY (`m_packet_id`) REFERENCES `sbm_m_packet` (`m_packet_id`),
  CONSTRAINT `parentTJob` FOREIGN KEY (`t_job_id`) REFERENCES `sbm_t_job` (`t_job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_t_job_packet`
--

LOCK TABLES `sbm_t_job_packet` WRITE;
/*!40000 ALTER TABLE `sbm_t_job_packet` DISABLE KEYS */;
INSERT INTO `sbm_t_job_packet` VALUES (1,5,31,5,1,1,'2022-10-08 12:09:35',NULL,NULL),(2,5,32,4,1,1,'2022-10-08 12:09:35',NULL,NULL),(3,5,33,4,1,1,'2022-10-08 12:09:35',NULL,NULL),(4,5,34,7,1,1,'2022-10-08 12:09:35',NULL,NULL),(5,3,31,10,1,1,'2022-10-31 14:25:08',NULL,NULL),(6,3,32,10,1,1,'2022-10-31 14:25:08',NULL,NULL),(7,3,33,4,1,1,'2022-10-31 14:25:08',NULL,NULL),(8,3,34,5,1,1,'2022-10-31 14:25:08',NULL,NULL),(9,3,31,16,1,1,'2022-10-31 14:40:36',NULL,NULL),(10,3,32,1,1,1,'2022-10-31 14:40:36',NULL,NULL),(11,3,34,165,1,1,'2022-10-31 14:41:23',NULL,NULL);
/*!40000 ALTER TABLE `sbm_t_job_packet` ENABLE KEYS */;
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
