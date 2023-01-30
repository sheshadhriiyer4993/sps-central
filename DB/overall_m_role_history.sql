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
-- Table structure for table `m_role_history`
--

DROP TABLE IF EXISTS `m_role_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_role_history` (
  `m_role_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_role_id` bigint NOT NULL,
  `role_name` varchar(150) DEFAULT NULL,
  `role_description` varchar(150) DEFAULT NULL,
  `role_active` int DEFAULT NULL,
  `m_user_id` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`m_role_history_id`),
  KEY `roleHistoryCreatedOn` (`m_user_id`),
  KEY `parentRoleDetail` (`m_role_id`),
  CONSTRAINT `parentRoleDetail` FOREIGN KEY (`m_role_id`) REFERENCES `m_role` (`m_role_id`),
  CONSTRAINT `roleHistoryCreatedOn` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_role_history`
--

LOCK TABLES `m_role_history` WRITE;
/*!40000 ALTER TABLE `m_role_history` DISABLE KEYS */;
INSERT INTO `m_role_history` VALUES (1,4,'Admin','Admin Access for all business transactions',1,1,'2022-11-01 17:59:11'),(2,6,'Test','Test',1,1,'2022-11-01 17:59:34'),(3,15,'SBM Admin','SBM Admin',1,1,'2023-01-21 16:42:26');
/*!40000 ALTER TABLE `m_role_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:57
