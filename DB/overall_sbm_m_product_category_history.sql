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
-- Table structure for table `sbm_m_product_category_history`
--

DROP TABLE IF EXISTS `sbm_m_product_category_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_product_category_history` (
  `m_product_category_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_product_category_id` bigint NOT NULL,
  `category_name` varchar(150) DEFAULT NULL,
  `category_description` varchar(250) DEFAULT NULL,
  `category_created_by` bigint DEFAULT NULL,
  `category_created_on` datetime DEFAULT NULL,
  `category_active` int DEFAULT NULL,
  PRIMARY KEY (`m_product_category_history_id`),
  KEY `categoryHistoryCreatedBy` (`category_created_by`),
  KEY `parentProductCategory` (`m_product_category_id`),
  CONSTRAINT `categoryHistoryCreatedBy` FOREIGN KEY (`category_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `parentProductCategory` FOREIGN KEY (`m_product_category_id`) REFERENCES `sbm_m_product_category` (`m_product_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_product_category_history`
--

LOCK TABLES `sbm_m_product_category_history` WRITE;
/*!40000 ALTER TABLE `sbm_m_product_category_history` DISABLE KEYS */;
INSERT INTO `sbm_m_product_category_history` VALUES (1,1,'Category 1','Category 1 Description',1,'2022-08-26 11:29:23',1),(2,1,'','Category 1 Description',1,'2022-08-26 11:32:13',1),(3,4,'Category 4','Category 4 Description',1,'2022-08-26 11:33:56',1),(4,2,'Category 2','Category 2 Description',1,'2022-08-26 11:34:03',1),(5,3,'Category 3','Category 3 Description',1,'2022-08-26 11:47:47',1);
/*!40000 ALTER TABLE `sbm_m_product_category_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:56
