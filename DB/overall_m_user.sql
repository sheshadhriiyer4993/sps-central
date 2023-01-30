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
-- Table structure for table `m_user`
--

DROP TABLE IF EXISTS `m_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_user` (
  `m_user_id` bigint NOT NULL AUTO_INCREMENT,
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
  `user_email_verify_token` varchar(550) DEFAULT NULL,
  `user_forgot_password_token` varchar(550) DEFAULT NULL,
  `m_entity_id` bigint DEFAULT NULL,
  `m_designation_id` bigint DEFAULT NULL,
  `m_department_id` bigint DEFAULT NULL,
  `user_created_on` datetime DEFAULT NULL,
  `user_created_by` bigint DEFAULT NULL,
  `user_approved` int DEFAULT NULL,
  `user_approved_on` datetime DEFAULT NULL,
  `user_approved_by` bigint DEFAULT NULL,
  PRIMARY KEY (`m_user_id`),
  KEY `userCreatedBy_idx` (`user_created_by`),
  KEY `userApproved_by_idx` (`user_approved_by`),
  KEY `userEntity_idx` (`m_entity_id`),
  KEY `userDesignation_idx` (`m_designation_id`),
  KEY `userDepartment_idx` (`m_department_id`),
  CONSTRAINT `userApproved_by` FOREIGN KEY (`user_approved_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `userCreatedBy` FOREIGN KEY (`user_created_by`) REFERENCES `m_user` (`m_user_id`),
  CONSTRAINT `userDepartment` FOREIGN KEY (`m_department_id`) REFERENCES `m_department` (`m_department_id`),
  CONSTRAINT `userDesignation` FOREIGN KEY (`m_designation_id`) REFERENCES `m_designation` (`m_designation_id`),
  CONSTRAINT `userEntity` FOREIGN KEY (`m_entity_id`) REFERENCES `m_entity` (`m_entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user`
--

LOCK TABLES `m_user` WRITE;
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` VALUES (1,'sheshadhri.iyer@sbm.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm',NULL,1,'Sheshadhri','Ranganathan','Iyer','9090909099','s.iyer@sbm.com','Samar Gupta',NULL,NULL,1,10,1,'2022-08-09 13:31:31',1,1,'2022-08-09 13:31:31',NULL),(2,'admin.aapl@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm','b1f32692a84cf0ab3d37f22bf2cf05c5fd2d93c566b4c3d610193e0a6cd736d0242d1ee4272f1e079152972a9a57a2f88e6e70c3604139adf6c3640130913d72',1,'Admin','','AAPL','9999999999','s.iyer@anandgroupindia.com','S Iyer',NULL,NULL,1,1,1,'2022-08-13 09:19:30',2,1,'2022-08-13 10:40:34',2),(3,'corporate.hr@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm','bb0f4481a44b782565e117c3365fb67dd4972c8c87a31cac0b2e842615a80574ffa250795075395a6c6ab220c25a4d63e99f2bf251c2388ae839933ee76fc083',0,'Corporate HR','','AAPL','9999999999','rekha.sandhu@anandgroupindia.com','Rekha Sandhu','3403c030ebcf4954d06f3b82ec167f1dc6b17be8fcdf48e7a646e40aab55c5e7704b01b070b13db5b9841246e647887d',NULL,1,NULL,NULL,'2022-08-13 09:22:05',3,0,NULL,NULL),(4,'company.hr@aipl.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm','389ff1b3a191a58b8277213395622d5fd73c67e49082f6de42959b2a7e097a02bd85d34e8a6a47e9c63add22b71685af4dbdffcc3084ffc284b28742d25e59a7',0,'Company HR','','AiPL','9999999999','hr.head@aipl.com','HR Head AiPL','899820296c851af9fc9ab66a1c52d962f3d4d3049a88642f50341f65d62fe715',NULL,1,2,2,'2022-08-13 09:25:02',4,0,NULL,NULL),(5,'company.hr@anandgroupindia.com','$2a$10$h8PWSWQPDwC1T7jFUFn6neJcSt2gvnd5L3OXo/VmA5Z2.QqhgMqcm','5e17dab47bbbf0e16408fa40502fdad48ad1604c790557fd8008f9cacb4e9f649f2ddfa03b75dd8a1317bdce14dae5b572c48ee826d020f0589853be9bf3fde6',0,'Company HR','','AAPL','9999999999','corporate.hr@anandgroupindia.com','Corporate HR AAPL','602d2aa3ea242de15843d69bf92585b77f596f3a82a3b5d5352ddfb971b571a6',NULL,1,5,2,'2022-08-13 09:26:33',5,0,NULL,NULL);
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;
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
