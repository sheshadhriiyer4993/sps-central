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
-- Table structure for table `sbm_m_packet`
--

DROP TABLE IF EXISTS `sbm_m_packet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_packet` (
  `m_packet_id` bigint NOT NULL AUTO_INCREMENT,
  `packet_name` varchar(350) DEFAULT NULL,
  `packet_qty` int DEFAULT NULL,
  `packet_created_by` bigint DEFAULT NULL,
  `packet_created_on` datetime DEFAULT NULL,
  `packet_updated_by` bigint DEFAULT NULL,
  `packet_updated_on` datetime DEFAULT NULL,
  `packet_active` int DEFAULT NULL,
  PRIMARY KEY (`m_packet_id`),
  KEY `packetCreatedBy` (`packet_created_by`),
  KEY `packetUpdatedBy` (`packet_updated_by`),
  CONSTRAINT `packetCreatedBy` FOREIGN KEY (`packet_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `packetUpdatedBy` FOREIGN KEY (`packet_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_packet`
--

LOCK TABLES `sbm_m_packet` WRITE;
/*!40000 ALTER TABLE `sbm_m_packet` DISABLE KEYS */;
INSERT INTO `sbm_m_packet` VALUES (1,'Packet 1',1000,1,'2022-10-04 13:32:40',NULL,NULL,0),(2,'Packet 2',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(3,'Packet 3',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(4,'Packet 4',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(5,'Packet 5',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(6,'Packet 6',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(7,'Packet 7',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(8,'Packet 8',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(9,'Packet 9',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(10,'Packet 10',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(11,'Packet 11',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(12,'Packet 12',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(13,'Packet 13',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(14,'Packet 14',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(15,'Packet 15',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(16,'Packet 16',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(17,'Packet 17',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(18,'Packet 18',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(19,'Packet 19',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(20,'Packet 20',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(21,'Packet 21',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(22,'Packet 22',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(23,'Packet 23',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(24,'Packet 24',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(25,'Packet 25',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(26,'Packet 26',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(27,'Packet 27',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(28,'Packet 28',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(29,'Packet 29',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(30,'Packet 30',1000,1,'2022-10-04 13:35:16',NULL,NULL,0),(31,'1 KG',1000,1,'2022-10-07 18:33:18',NULL,NULL,1),(32,'500 Grams',500,1,'2022-10-07 18:33:28',NULL,NULL,1),(33,'250 Grams',250,1,'2022-10-07 18:37:24',NULL,NULL,1),(34,'100 Grams',100,1,'2022-10-07 18:37:46',NULL,NULL,1),(35,'50 Grams',50,1,'2022-10-07 18:37:46',NULL,NULL,1);
/*!40000 ALTER TABLE `sbm_m_packet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:59
