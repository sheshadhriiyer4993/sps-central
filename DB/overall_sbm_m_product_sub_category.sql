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
-- Table structure for table `sbm_m_product_sub_category`
--

DROP TABLE IF EXISTS `sbm_m_product_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_product_sub_category` (
  `m_product_sub_category_id` bigint NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(150) DEFAULT NULL,
  `m_product_category_id` bigint DEFAULT NULL,
  `sub_category_created_by` bigint DEFAULT NULL,
  `sub_category_created_on` datetime DEFAULT NULL,
  `sub_category_updated_by` bigint DEFAULT NULL,
  `sub_category_updated_on` datetime DEFAULT NULL,
  `sub_category_active` int DEFAULT NULL,
  PRIMARY KEY (`m_product_sub_category_id`),
  KEY `parentCategory` (`m_product_category_id`),
  KEY `subCategoryCreatedBy` (`sub_category_created_by`),
  KEY `subCategoryUpdatedBy` (`sub_category_updated_by`),
  CONSTRAINT `parentCategory` FOREIGN KEY (`m_product_category_id`) REFERENCES `sbm_m_product_category` (`m_product_category_id`),
  CONSTRAINT `subCategoryCreatedBy` FOREIGN KEY (`sub_category_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `subCategoryUpdatedBy` FOREIGN KEY (`sub_category_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_product_sub_category`
--

LOCK TABLES `sbm_m_product_sub_category` WRITE;
/*!40000 ALTER TABLE `sbm_m_product_sub_category` DISABLE KEYS */;
INSERT INTO `sbm_m_product_sub_category` VALUES (1,'Sub Category 1',1,1,'2022-08-26 13:50:10',NULL,NULL,1),(2,'Sub Category 2',2,1,'2022-08-26 13:50:10',NULL,NULL,1),(3,'Sub Category 3',3,1,'2022-08-26 13:50:10',1,'2022-08-27 21:15:58',0),(4,'Sub Category 4',4,1,'2022-08-26 13:50:10',NULL,NULL,1),(5,'Sub Category 5',5,1,'2022-08-26 13:50:10',NULL,NULL,1),(6,'Sub Category 6',6,1,'2022-08-26 13:50:10',NULL,NULL,1),(7,'Sub Category 7',7,1,'2022-08-26 13:50:10',NULL,NULL,1),(8,'Sub Category 8',8,1,'2022-08-26 13:50:10',NULL,NULL,1),(9,'Sub Category 9',9,1,'2022-08-26 13:50:10',NULL,NULL,1),(10,'Sub Category 10',10,1,'2022-08-26 13:50:10',NULL,NULL,1),(11,'Sub Category 11',11,1,'2022-08-26 13:50:10',NULL,NULL,1),(12,'Sub Category 12',12,1,'2022-08-26 13:50:10',NULL,NULL,1),(13,'Sub Category 13',13,1,'2022-08-26 13:50:10',NULL,NULL,1),(14,'Sub Category 14',14,1,'2022-08-26 13:50:10',NULL,NULL,1),(15,'Sub Category 15',15,1,'2022-08-26 13:50:10',NULL,NULL,1),(16,'Sub Category 16',16,1,'2022-08-26 13:50:10',NULL,NULL,1),(17,'Sub Category 17',17,1,'2022-08-26 13:50:10',NULL,NULL,1),(18,'Sub Category 18',18,1,'2022-08-26 13:50:10',NULL,NULL,1),(19,'Sub Category 19',19,1,'2022-08-26 13:50:10',NULL,NULL,1),(20,'Sub Category 20',20,1,'2022-08-26 13:50:10',NULL,NULL,1),(21,'Sub Category 21',21,1,'2022-08-26 13:50:10',NULL,NULL,1),(22,'Sub Category 22',22,1,'2022-08-26 13:50:10',NULL,NULL,1),(23,'Sub Category 23',23,1,'2022-08-26 13:50:10',NULL,NULL,1),(24,'Sub Category 24',24,1,'2022-08-26 13:50:10',1,'2022-08-26 13:54:15',0);
/*!40000 ALTER TABLE `sbm_m_product_sub_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:52
