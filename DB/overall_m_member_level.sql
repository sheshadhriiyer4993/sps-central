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
-- Table structure for table `m_member_level`
--

DROP TABLE IF EXISTS `m_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_member_level` (
  `m_member_level_id` bigint NOT NULL AUTO_INCREMENT,
  `member_level_name` varchar(150) DEFAULT NULL,
  `member_level_description` varchar(255) DEFAULT NULL,
  `member_level_active` int DEFAULT NULL,
  `member_level_created_by` bigint DEFAULT NULL,
  `member_level_created_on` datetime DEFAULT NULL,
  `member_level_updated_by` bigint DEFAULT NULL,
  `member_level_updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`m_member_level_id`),
  KEY `memberLevelCreatedBy` (`member_level_created_by`),
  KEY `memberLevelUpdatedBy` (`member_level_updated_by`),
  CONSTRAINT `memberLevelCreatedBy` FOREIGN KEY (`member_level_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `memberLevelUpdatedBy` FOREIGN KEY (`member_level_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_member_level`
--

LOCK TABLES `m_member_level` WRITE;
/*!40000 ALTER TABLE `m_member_level` DISABLE KEYS */;
INSERT INTO `m_member_level` VALUES (2,'L1-M5','For Assistant Manager Edit',1,1,'2022-11-19 14:34:45',1,'2022-11-19 15:07:54'),(3,'L2-M6','For Manager',1,1,'2022-11-19 14:35:10',NULL,NULL),(4,'L2-M7','For Senior Manager',1,1,'2022-11-19 14:35:31',NULL,NULL),(5,'L3-M8','For Deputy General Manager',1,1,'2022-11-19 14:35:44',NULL,NULL),(6,'L3-M9','For General Manager',1,1,'2022-11-19 14:36:16',NULL,NULL),(7,'L4-M10','For Vice President',1,1,'2022-11-19 14:36:50',NULL,NULL),(8,'L4-M11','For President',1,1,'2022-11-19 14:37:01',NULL,NULL);
/*!40000 ALTER TABLE `m_member_level` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:46
