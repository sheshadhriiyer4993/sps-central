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
-- Table structure for table `sbm_m_product_category`
--

DROP TABLE IF EXISTS `sbm_m_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_product_category` (
  `m_product_category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) DEFAULT NULL,
  `category_description` varchar(250) DEFAULT NULL,
  `category_created_by` bigint DEFAULT NULL,
  `category_created_on` datetime DEFAULT NULL,
  `category_updated_by` bigint DEFAULT NULL,
  `category_updated_on` datetime DEFAULT NULL,
  `category_active` int DEFAULT NULL,
  PRIMARY KEY (`m_product_category_id`),
  KEY `categoryCreatedBy` (`category_created_by`),
  KEY `categoryUpdatedBy` (`category_updated_by`),
  CONSTRAINT `categoryCreatedBy` FOREIGN KEY (`category_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `categoryUpdatedBy` FOREIGN KEY (`category_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_product_category`
--

LOCK TABLES `sbm_m_product_category` WRITE;
/*!40000 ALTER TABLE `sbm_m_product_category` DISABLE KEYS */;
INSERT INTO `sbm_m_product_category` VALUES (1,'Category 1','Category 1 Description',1,'2022-08-26 11:10:07',1,'2022-08-26 11:32:13',1),(2,'Category 2','Category 2 Description',1,'2022-08-26 11:32:26',1,'2022-08-26 11:34:03',0),(3,'Category 3','Category 3 Description',1,'2022-08-26 11:32:39',1,'2022-08-26 11:47:47',1),(4,'Category 4','Category 4 Description',1,'2022-08-26 11:32:55',1,'2022-08-26 11:33:56',0),(5,'Category 5','Category 5 Description',1,'2022-08-26 11:33:10',NULL,NULL,1),(6,'Category 6','Category 6 Description',1,'2022-08-26 11:34:22',NULL,NULL,1),(7,'Category 7','Category 7 Description',1,'2022-08-26 11:34:32',NULL,NULL,1),(8,'Category 8','Category 8 Description',1,'2022-08-26 11:36:38',NULL,NULL,0),(9,'Category 9','Category 9 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(10,'Category 10','Category 10 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(11,'Category 11','Category 11 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(12,'Category 12','Category 12 Description',1,'2022-08-26 11:36:38',NULL,NULL,0),(13,'Category 13','Category 13 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(14,'Category 14','Category 14 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(15,'Category 15','Category 15 Description',1,'2022-08-26 11:36:38',NULL,NULL,0),(16,'Category 16','Category 16 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(17,'Category 17','Category 17 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(18,'Category 18','Category 18 Description',1,'2022-08-26 11:36:38',NULL,NULL,0),(19,'Category 19','Category 19 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(20,'Category 20','Category 20 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(21,'Category 21','Category 21 Description',1,'2022-08-26 11:36:38',NULL,NULL,0),(22,'Category 22','Category 22 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(23,'Category 23','Category 23 Description',1,'2022-08-26 11:36:38',NULL,NULL,1),(24,'Category 24','Category 24 Description',1,'2022-08-26 11:36:38',NULL,NULL,1);
/*!40000 ALTER TABLE `sbm_m_product_category` ENABLE KEYS */;
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
