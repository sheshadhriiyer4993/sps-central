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
-- Table structure for table `m_user_role_map_history`
--

DROP TABLE IF EXISTS `m_user_role_map_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_user_role_map_history` (
  `m_user_role_map_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_user_role_map_id` bigint NOT NULL,
  `m_user_history_id` bigint DEFAULT NULL,
  `m_role_id` bigint DEFAULT NULL,
  `user_role_active` int DEFAULT NULL,
  `user_role_created_on` datetime DEFAULT NULL,
  `user_role_created_by` bigint DEFAULT NULL,
  PRIMARY KEY (`m_user_role_map_history_id`),
  KEY `parentUserRoleMap` (`m_user_role_map_id`),
  KEY `mRoleHistoryId` (`m_role_id`),
  KEY `userRoleHistoryCreatedby` (`user_role_created_by`),
  KEY `mUserHistoryId_idx` (`m_user_history_id`),
  CONSTRAINT `mRoleHistoryId` FOREIGN KEY (`m_role_id`) REFERENCES `m_role` (`m_role_id`),
  CONSTRAINT `mUserHistoryId` FOREIGN KEY (`m_user_history_id`) REFERENCES `m_user_history` (`m_user_history_id`),
  CONSTRAINT `parentUserRoleMap` FOREIGN KEY (`m_user_role_map_id`) REFERENCES `m_user_role_map` (`m_user_role_map_id`),
  CONSTRAINT `userRoleHistoryCreatedby` FOREIGN KEY (`user_role_created_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user_role_map_history`
--

LOCK TABLES `m_user_role_map_history` WRITE;
/*!40000 ALTER TABLE `m_user_role_map_history` DISABLE KEYS */;
INSERT INTO `m_user_role_map_history` VALUES (1,1,1,1,1,'2022-11-01 14:24:57',1),(2,6,1,2,0,'2022-11-01 14:24:57',1),(3,1,2,1,1,'2022-11-01 14:29:15',1),(4,6,2,2,0,'2022-11-01 14:29:15',1),(5,1,3,1,1,'2022-11-01 14:30:04',1),(6,6,3,2,0,'2022-11-01 14:30:04',1),(7,6,4,2,0,'2022-11-05 12:51:31',1),(8,1,4,1,1,'2022-11-05 12:51:31',1),(9,1,5,1,1,'2022-11-05 12:52:21',1),(10,6,5,2,0,'2022-11-05 12:52:21',1),(11,1,6,1,1,'2022-11-16 15:24:50',1),(12,6,6,2,0,'2022-11-16 15:24:50',1),(17,1,9,1,1,'2022-11-16 15:30:53',1),(18,6,9,2,0,'2022-11-16 15:30:53',1),(19,1,10,1,1,'2022-11-16 15:33:13',1),(20,6,10,2,0,'2022-11-16 15:33:13',1),(21,6,11,2,0,'2022-11-16 15:34:35',1),(22,1,11,1,1,'2022-11-16 15:34:35',1),(23,6,12,2,0,'2022-11-16 15:35:43',1),(24,1,12,1,1,'2022-11-16 15:35:43',1),(25,6,13,2,0,'2022-11-16 15:37:11',1),(26,1,13,1,1,'2022-11-16 15:37:11',1),(27,6,14,2,0,'2022-11-16 16:17:17',1),(28,1,14,1,1,'2022-11-16 16:17:17',1),(29,1,15,1,1,'2022-11-16 16:18:44',1),(30,6,15,2,0,'2022-11-16 16:18:44',1),(31,6,16,2,0,'2022-11-16 16:21:23',1),(32,1,16,1,1,'2022-11-16 16:21:23',1),(33,1,17,1,1,'2022-11-16 16:23:01',1),(34,6,17,2,0,'2022-11-16 16:23:01',1),(35,1,18,1,1,'2022-11-16 16:23:25',1),(36,6,18,2,0,'2022-11-16 16:23:25',1),(37,6,19,2,0,'2023-01-21 12:36:59',1),(38,1,19,1,1,'2023-01-21 12:36:59',1),(39,1,20,1,1,'2023-01-21 12:41:07',1),(40,6,20,2,1,'2023-01-21 12:41:07',1);
/*!40000 ALTER TABLE `m_user_role_map_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:04:02
