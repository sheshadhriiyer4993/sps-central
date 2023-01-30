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
-- Table structure for table `sbm_t_raw_material_inventory`
--

DROP TABLE IF EXISTS `sbm_t_raw_material_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sbm_t_raw_material_inventory` (
  `t_raw_material_inventory_id` bigint NOT NULL AUTO_INCREMENT,
  `m_raw_material_id` bigint DEFAULT NULL,
  `m_entity_id` bigint DEFAULT NULL,
  `raw_material_quantity` decimal(10,2) DEFAULT NULL,
  `raw_material_inventory_active` int DEFAULT NULL,
  PRIMARY KEY (`t_raw_material_inventory_id`),
  KEY `rawMaterialInventory` (`m_raw_material_id`),
  KEY `rawMaterialInventoryCompany` (`m_entity_id`),
  CONSTRAINT `rawMaterialInventory` FOREIGN KEY (`m_raw_material_id`) REFERENCES `sbm_m_raw_material` (`m_raw_material_id`),
  CONSTRAINT `rawMaterialInventoryCompany` FOREIGN KEY (`m_entity_id`) REFERENCES `m_entity` (`m_entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbm_t_raw_material_inventory`
--

LOCK TABLES `sbm_t_raw_material_inventory` WRITE;
/*!40000 ALTER TABLE `sbm_t_raw_material_inventory` DISABLE KEYS */;
INSERT INTO `sbm_t_raw_material_inventory` VALUES (1,10,2,0.00,1),(2,22,2,0.00,1),(8,10,11,0.00,1),(9,22,11,0.00,1),(10,10,4,0.00,1),(11,22,4,0.00,1);
/*!40000 ALTER TABLE `sbm_t_raw_material_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 15:04:01
