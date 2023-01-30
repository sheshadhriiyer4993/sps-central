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
-- Table structure for table `sbm_m_vendor_history`
--

DROP TABLE IF EXISTS `sbm_m_vendor_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_vendor_history` (
  `m_vendor_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_vendor_id` bigint NOT NULL,
  `vendor_name` varchar(350) DEFAULT NULL,
  `vendor_address_line_one` varchar(200) DEFAULT NULL,
  `vendor_address_line_two` varchar(200) DEFAULT NULL,
  `vendor_address_line_three` varchar(200) DEFAULT NULL,
  `vendor_address_city` varchar(100) DEFAULT NULL,
  `vendor_address_state` varchar(100) DEFAULT NULL,
  `vendor_address_pincode` int DEFAULT NULL,
  `vendor_phone_no` varchar(10) DEFAULT NULL,
  `vendor_code` varchar(45) DEFAULT NULL,
  `vendor_created_by` bigint DEFAULT NULL,
  `vendor_created_on` datetime DEFAULT NULL,
  `vendor_active` int DEFAULT NULL,
  PRIMARY KEY (`m_vendor_history_id`),
  KEY `vendorHistoryCreatedBy` (`vendor_created_by`),
  KEY `parentVendor` (`m_vendor_id`),
  CONSTRAINT `parentVendor` FOREIGN KEY (`m_vendor_id`) REFERENCES `sbm_m_vendor` (`m_vendor_id`),
  CONSTRAINT `vendorHistoryCreatedBy` FOREIGN KEY (`vendor_created_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_vendor_history`
--

LOCK TABLES `sbm_m_vendor_history` WRITE;
/*!40000 ALTER TABLE `sbm_m_vendor_history` DISABLE KEYS */;
INSERT INTO `sbm_m_vendor_history` VALUES (1,1,'Vendor 1','Test','Test Line 2',NULL,'New Delhi','Delhi',110058,'9090909090','V0001',1,'2022-08-27 19:11:06',1),(2,1,'Vendor 1','Test','Test Line 2',NULL,'New Delhi','Delhi',110058,'9090909090','V0001',1,'2022-08-27 19:28:18',0),(3,2,'Vendor 2','Test',NULL,NULL,'New Delhi','Delhi',110058,'9999900000','V002',1,'2022-08-27 19:28:31',1),(4,3,'Vendor 2','Test',NULL,NULL,'Edited','Edited',110058,'9999900000','V003',1,'2022-08-27 20:42:28',1);
/*!40000 ALTER TABLE `sbm_m_vendor_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:03:54
