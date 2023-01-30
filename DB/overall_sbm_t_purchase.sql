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
-- Table structure for table `sbm_t_purchase`
--

DROP TABLE IF EXISTS `sbm_t_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_t_purchase` (
  `t_purchase_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_code` varchar(45) DEFAULT NULL,
  `m_entity_id` bigint DEFAULT NULL,
  `m_vendor_id` bigint DEFAULT NULL,
  `purchase_created_by` bigint DEFAULT NULL,
  `purchase_created_on` datetime DEFAULT NULL,
  `purchase_update_by` bigint DEFAULT NULL,
  `purchase_updated_on` datetime DEFAULT NULL,
  `purchase_active` int DEFAULT NULL,
  PRIMARY KEY (`t_purchase_id`),
  KEY `parentEntityPurchase` (`m_entity_id`),
  KEY `purchaseCreatedBy` (`purchase_created_by`),
  KEY `purchaseUpdatedBy` (`purchase_update_by`),
  KEY `purchaseVendor` (`m_vendor_id`),
  CONSTRAINT `parentEntityPurchase` FOREIGN KEY (`m_entity_id`) REFERENCES `m_entity` (`m_entity_id`),
  CONSTRAINT `purchaseCreatedBy` FOREIGN KEY (`purchase_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `purchaseUpdatedBy` FOREIGN KEY (`purchase_update_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `purchaseVendor` FOREIGN KEY (`m_vendor_id`) REFERENCES `sbm_m_vendor` (`m_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_t_purchase`
--

LOCK TABLES `sbm_t_purchase` WRITE;
/*!40000 ALTER TABLE `sbm_t_purchase` DISABLE KEYS */;
INSERT INTO `sbm_t_purchase` VALUES (1,'2022-07-13 00:00:00','SBM-NEW DELHI-P-2022-07-0001',4,2,1,'2022-08-28 14:44:21',1,'2022-09-03 11:04:26',1);
/*!40000 ALTER TABLE `sbm_t_purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:50
