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
-- Table structure for table `m_entity`
--

DROP TABLE IF EXISTS `m_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_entity` (
  `m_entity_id` bigint NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(250) DEFAULT NULL,
  `entity_short_name` varchar(150) DEFAULT NULL,
  `entity_acronym` varchar(50) DEFAULT NULL,
  `entity_source` bigint DEFAULT NULL,
  `m_location_id` bigint DEFAULT NULL,
  `entity_active` int DEFAULT NULL,
  `m_user_id` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `m_user_id_updated` bigint DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`m_entity_id`),
  KEY `entityCreatedBy_idx` (`m_user_id`),
  KEY `entityLocation_idx` (`m_location_id`),
  CONSTRAINT `entityCreatedBy` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `entityLocation` FOREIGN KEY (`m_location_id`) REFERENCES `m_location` (`m_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_entity`
--

LOCK TABLES `m_entity` WRITE;
/*!40000 ALTER TABLE `m_entity` DISABLE KEYS */;
INSERT INTO `m_entity` VALUES (1,'Sri Bhuvaneshwari Mills','Bhuvaneshwari Mills','SBM',NULL,NULL,1,1,'2023-01-21 16:28:49',NULL,NULL),(2,'Sri Bhuvaneshwari Mills Trichy','Bhuvaneshwari Mills','SBM',1,1,1,1,'2023-01-21 16:37:29',NULL,NULL),(3,'Sri Bhuvaneshwari Mills Chennai','Bhuvaneshwari Mills','SBM',1,2,1,1,'2023-01-21 16:38:43',NULL,NULL),(4,'Sri Bhuvaneshwari Mills Bangalore','Bhuvaneshwari Mills','SBM',1,3,1,1,'2023-01-21 16:39:08',NULL,NULL),(5,'Sri Bhuvaneshwari Mills New Delhi','Bhuvaneshwari Mills','SBM',1,4,1,1,'2023-01-21 16:39:23',NULL,NULL);
/*!40000 ALTER TABLE `m_entity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:43
