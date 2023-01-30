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
-- Table structure for table `m_role`
--

DROP TABLE IF EXISTS `m_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_role` (
  `m_role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(150) DEFAULT NULL,
  `role_description` varchar(150) DEFAULT NULL,
  `role_active` int DEFAULT NULL,
  `m_user_id` bigint DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `m_user_id_updated` bigint DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`m_role_id`),
  KEY `roleCreatedOn_idx` (`m_user_id`),
  CONSTRAINT `roleCreatedOn` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_role`
--

LOCK TABLES `m_role` WRITE;
/*!40000 ALTER TABLE `m_role` DISABLE KEYS */;
INSERT INTO `m_role` VALUES (1,'IT Admin','IT Admin Access for all masters and read only for all business transactions',1,1,'2022-08-09 13:31:31',1,'2022-09-21 10:43:18'),(2,'Employee','Basic Read Only Employee Access',1,1,'2022-08-09 13:31:31',NULL,NULL),(3,'Company HR','Company HR',1,1,'2022-08-11 14:11:18',1,'2022-09-21 10:42:13'),(4,'IJP Admin','Admin Access for all business transactions',1,1,'2022-08-11 14:12:50',1,'2022-11-01 17:59:11'),(5,'Corporate HR','Corporate HR for managing HR activities from head quaters',1,1,'2022-09-21 10:42:58',NULL,NULL),(6,'EMC Admin','Test',1,1,'2022-10-26 12:20:05',1,'2022-11-01 17:59:34'),(7,'EMC Coach','EMC Coach',1,1,'2022-11-01 17:59:43',NULL,NULL),(8,'EMC Coachee','EMC Coachee',1,1,'2022-11-01 17:59:55',NULL,NULL),(9,'CT Coach','CT Coach',1,1,'2022-11-01 18:00:05',NULL,NULL),(10,'CT Coachee','CT Coachee',1,1,'2022-11-01 18:00:16',NULL,NULL),(11,'CT Admin','CT Admin',1,1,'2022-11-01 18:00:26',NULL,NULL),(12,'CT Supervisor','CT Supervisor',1,1,'2022-11-01 18:00:37',NULL,NULL),(13,'CT Process Owner','CT Process Owner',1,1,'2022-11-01 18:00:48',NULL,NULL),(14,'EMC Process Owner','EMC Process Owner',1,1,'2022-11-01 18:01:12',NULL,NULL),(15,'SBM Admin','Admin Access for all business transactions',1,1,'2023-01-21 16:41:35',1,'2023-01-21 16:42:26'),(16,'SBM Senior Executive','SBM Senior Executive',1,1,'2023-01-21 16:41:48',NULL,NULL),(17,'SBM Cashier','Person who will be handling the cash counter',1,1,'2023-01-21 16:42:07',NULL,NULL);
/*!40000 ALTER TABLE `m_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:44
