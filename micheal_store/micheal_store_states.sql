CREATE DATABASE  IF NOT EXISTS `micheal_store` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `micheal_store`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: micheal_store
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_code` char(2) COLLATE utf8_bin NOT NULL,
  `state` varchar(65) COLLATE utf8_bin NOT NULL,
  `region_id` int unsigned NOT NULL COMMENT 'Connect to the regions table',
  PRIMARY KEY (`state_code`),
  KEY `reg_state_idx` (`region_id`),
  CONSTRAINT `reg_state` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('AL','Alabama',1),('AR','Arkansas',1),('AZ','Arizona',2),('CA','California',2),('CO','Colorado',2),('CT','Connecticut',4),('DC','District of Columbia',1),('DE','Delaware',1),('FL','Florida',1),('GA','Georgia',1),('HI','Hawaii',2),('IA','Iowa',3),('ID','Idaho',2),('IL','Illinois',3),('IN','Indiana',3),('KS','Kansas',3),('KY','Kentucky',1),('LA','Louisiana',1),('MA','Massachusetts',4),('MD','Maryland',1),('ME','Maine',4),('MI','Michigan',3),('MN','Minnesota',3),('MO','Missouri',3),('MS','Mississippi',1),('MT','Montana',2),('NC','North Carolina',1),('ND','North Dakota',3),('NE','Nebraska',3),('NH','New Hampshire',4),('NJ','New Jersey',4),('NM','New Mexico',2),('NV','Nevada',2),('NY','New York',4),('OH','Ohio',3),('OK','Oklahoma',1),('OR','Oregon',2),('PA','Pennsylvania',4),('RI','Rhode Island',4),('SC','South Carolina',1),('SD','South Dakota',3),('TN','Tennessee',1),('TX','Texas',1),('UT','Utah',2),('VA','Virginia',1),('WA','Washington',2),('WI','Wisconsin',3),('WY','Wyoming',2);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09  8:30:36
