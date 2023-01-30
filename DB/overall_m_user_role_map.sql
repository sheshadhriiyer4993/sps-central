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
-- Table structure for table `m_user_role_map`
--

DROP TABLE IF EXISTS `m_user_role_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_user_role_map` (
  `m_user_role_map_id` bigint NOT NULL AUTO_INCREMENT,
  `m_user_id` bigint DEFAULT NULL,
  `m_role_id` bigint DEFAULT NULL,
  `user_role_active` int DEFAULT NULL,
  `user_role_created_on` datetime DEFAULT NULL,
  `user_role_created_by` bigint DEFAULT NULL,
  PRIMARY KEY (`m_user_role_map_id`),
  KEY `mUserIdRoleMap_idx` (`m_user_id`),
  KEY `mRoleIdUserMap_idx` (`m_role_id`),
  CONSTRAINT `mRoleIdUserMap` FOREIGN KEY (`m_role_id`) REFERENCES `m_role` (`m_role_id`),
  CONSTRAINT `mUserIdRoleMap` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user_role_map`
--

LOCK TABLES `m_user_role_map` WRITE;
/*!40000 ALTER TABLE `m_user_role_map` DISABLE KEYS */;
INSERT INTO `m_user_role_map` VALUES (1,1,1,1,'2022-08-09 13:31:31',1),(2,2,2,1,'2022-08-13 10:23:25',2),(6,1,2,1,'2022-08-18 12:29:53',1);
/*!40000 ALTER TABLE `m_user_role_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:45
