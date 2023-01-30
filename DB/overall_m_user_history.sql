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
-- Table structure for table `m_user_history`
--

DROP TABLE IF EXISTS `m_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_user_history` (
  `m_user_history_id` bigint NOT NULL AUTO_INCREMENT,
  `m_user_id` bigint NOT NULL,
  `user_login_id` varchar(250) DEFAULT NULL,
  `user_password` varchar(550) DEFAULT NULL,
  `user_password_two` varchar(550) DEFAULT NULL,
  `user_active` int DEFAULT NULL,
  `user_first_name` varchar(150) DEFAULT NULL,
  `user_middle_name` varchar(150) DEFAULT NULL,
  `user_last_name` varchar(150) DEFAULT NULL,
  `user_phone_number` varchar(12) DEFAULT NULL,
  `user_reporting_manager_mail` varchar(250) DEFAULT NULL,
  `user_reporting_manager_name` varchar(250) DEFAULT NULL,
  `m_entity_id` bigint DEFAULT NULL,
  `m_designation_id` bigint DEFAULT NULL,
  `m_department_id` bigint DEFAULT NULL,
  `user_created_on` datetime DEFAULT NULL,
  `user_created_by` bigint DEFAULT NULL,
  PRIMARY KEY (`m_user_history_id`),
  KEY `userHistoryCreatedby` (`user_created_by`),
  KEY `userDepartmentHistory` (`m_department_id`),
  KEY `userDesignationHistory` (`m_designation_id`),
  KEY `userEntityHistory` (`m_entity_id`),
  KEY `parentUser_idx` (`m_user_id`),
  CONSTRAINT `parentUser` FOREIGN KEY (`m_user_id`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `userDepartmentHistory` FOREIGN KEY (`m_department_id`) REFERENCES `m_department` (`m_department_id`),
  CONSTRAINT `userDesignationHistory` FOREIGN KEY (`m_designation_id`) REFERENCES `m_designation` (`m_designation_id`),
  CONSTRAINT `userEntityHistory` FOREIGN KEY (`m_entity_id`) REFERENCES `m_entity` (`m_entity_id`),
  CONSTRAINT `userHistoryCreatedby` FOREIGN KEY (`user_created_by`) REFERENCES `m_user` (`m_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user_history`
--

LOCK TABLES `m_user_history` WRITE;
/*!40000 ALTER TABLE `m_user_history` DISABLE KEYS */;
INSERT INTO `m_user_history` VALUES (1,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-01 14:24:57',1),(2,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-01 14:29:15',1),(3,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-01 14:30:04',1),(4,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-05 12:51:31',1),(5,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-05 12:52:21',1),(6,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:24:50',1),(9,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:30:53',1),(10,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:33:13',1),(11,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:34:35',1),(12,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:35:43',1),(13,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 15:37:11',1),(14,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 16:17:17',1),(15,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 16:18:44',1),(16,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 16:21:23',1),(17,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 16:23:01',1),(18,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2022-11-16 16:23:25',1),(19,1,'sheshadhri.iyer@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','samar.gupta@anandgroupindia.com','Samar Gupta',2,1,1,'2023-01-21 12:36:59',1),(20,1,'sheshadhri.iyer@sbm.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','s.iyer@sbm.com','Samar Gupta',2,8,1,'2023-01-21 12:41:07',1);
/*!40000 ALTER TABLE `m_user_history` ENABLE KEYS */;
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
