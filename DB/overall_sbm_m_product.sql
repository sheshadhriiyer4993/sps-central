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
-- Table structure for table `sbm_m_product`
--

DROP TABLE IF EXISTS `sbm_m_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_m_product` (
  `m_product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) DEFAULT NULL,
  `product_description` varchar(250) DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_brand` int DEFAULT NULL,
  `product_sub_category` bigint DEFAULT NULL COMMENT '1-Flours, 2-Spices, 3-Ready-To-Eat, 4-Cosmetics, 5-Others',
  `product_wastage` decimal(10,2) DEFAULT NULL,
  `product_hsn` varchar(75) DEFAULT NULL,
  `product_tax_rate_gst` decimal(10,2) DEFAULT NULL,
  `product_gst_type` int DEFAULT NULL COMMENT '1-CGST+SGST, 2-CGST+UGST/UTGST, 3-IGST',
  `product_reorder_limit` int DEFAULT NULL,
  `proudct_reorder_quantity` decimal(10,2) DEFAULT NULL,
  `product_created_on` datetime DEFAULT NULL,
  `product_created_by` bigint DEFAULT NULL,
  `product_updated_on` datetime DEFAULT NULL,
  `product_updated_by` bigint DEFAULT NULL,
  `product_active` int DEFAULT NULL,
  PRIMARY KEY (`m_product_id`),
  UNIQUE KEY `m_product_id_UNIQUE` (`m_product_id`),
  KEY `productCreatedBy` (`product_created_by`),
  KEY `productUpdatedBy` (`product_updated_by`),
  KEY `productSubCategory_idx` (`product_sub_category`),
  CONSTRAINT `productCreatedBy` FOREIGN KEY (`product_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `productSubCategory` FOREIGN KEY (`product_sub_category`) REFERENCES `sbm_m_product_sub_category` (`m_product_sub_category_id`),
  CONSTRAINT `productUpdatedBy` FOREIGN KEY (`product_updated_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_m_product`
--

LOCK TABLES `sbm_m_product` WRITE;
/*!40000 ALTER TABLE `sbm_m_product` DISABLE KEYS */;
INSERT INTO `sbm_m_product` VALUES (1,'Product 1','Description 1','SBM-P-001',NULL,1,10.00,'123',123.00,1,5,5.00,'2022-08-25 17:06:08',1,NULL,NULL,1),(2,'Product 2','Product 2 Description','SBM-P-002',NULL,1,10.00,'123',123.00,2,10,10.00,'2022-08-25 20:40:15',1,'2022-08-27 21:50:31',1,0),(3,'Product 3','Description 3','SBM-P-003',NULL,2,10.00,'123',123.00,3,5,5.00,'2022-08-25 21:03:28',1,NULL,NULL,1),(4,'Product 4','Description 4','SBM-P-004',NULL,3,10.00,'123',123.00,2,5,15.20,'2022-08-25 21:09:38',1,NULL,NULL,1),(5,'Product 5','Description 5','SBM-P-005',NULL,3,10.00,'123',123.00,2,5,5.00,'2022-08-25 21:19:54',1,NULL,NULL,1),(6,'Product 6','Product 6','SBM-P-006',NULL,6,10.00,'123',123.00,1,5,5.00,'2022-08-27 14:48:01',1,'2022-09-03 19:48:07',1,1);
/*!40000 ALTER TABLE `sbm_m_product` ENABLE KEYS */;
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
