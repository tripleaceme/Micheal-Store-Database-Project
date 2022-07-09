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
-- Table structure for table `sales_team`
--

DROP TABLE IF EXISTS `sales_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_team` (
  `sales_team_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `regions_id` int unsigned NOT NULL,
  PRIMARY KEY (`sales_team_id`),
  KEY `sales_region_idx` (`regions_id`),
  CONSTRAINT `sales_region` FOREIGN KEY (`regions_id`) REFERENCES `regions` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_team`
--

LOCK TABLES `sales_team` WRITE;
/*!40000 ALTER TABLE `sales_team` DISABLE KEYS */;
INSERT INTO `sales_team` VALUES (1,'Adam','Hernandez',4),(2,'Keith','Griffin',4),(3,'Jerry','Green',2),(4,'Chris','Armstrong',4),(5,'Stephen','Payne',1),(6,'Joshua','Bennett',4),(7,'Shawn','Cook',3),(8,'George','Lewis',2),(9,'Joshua','Ryan',3),(10,'Jonathan','Hawkins',2),(11,'Joshua','Little',1),(12,'Carl','Nguyen',3),(13,'Todd','Roberts',2),(14,'Paul','Holmes',3),(15,'Roger','Alexander',3),(16,'Anthony','Berry',2),(17,'Frank','Brown',4),(18,'Shawn','Wallace',1),(19,'Nicholas','Cunningham',1),(20,'Anthony','Torres',2),(21,'Samuel','Fowler',3),(22,'Joe','Price',4),(23,'Douglas','Tucker',3),(24,'Roy','Rice',3),(25,'Patrick','Graham',1),(26,'Donald','Reynolds',1),(27,'Shawn','Torres',4),(28,'Carlos','Miller',2);
/*!40000 ALTER TABLE `sales_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09  8:29:41
