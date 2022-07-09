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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int unsigned NOT NULL,
  `full_name` varchar(65) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Avon Corp'),(2,'WakeFern '),(3,'Elorac, Corp'),(4,'ETUDE Ltd'),(5,'Procter Corp'),(6,'PEDIFIX, Corp'),(7,'New Ltd'),(8,'Medsep Group'),(9,'Ei '),(10,'21st Ltd'),(11,'Apollo Ltd'),(12,'Medline '),(13,'Ole Group'),(14,'Linde '),(15,'Rochester Ltd'),(16,'3LAB, Ltd'),(17,'Pure Group'),(18,'Eminence Corp'),(19,'Qualitest '),(20,'Pacific Ltd'),(21,'Ohio '),(22,'Capweld '),(23,'E. Ltd'),(24,'Burt\'s Corp'),(25,'Prasco Group'),(26,'Mylan Corp'),(27,'Wuxi Group'),(28,'Dharma Ltd'),(29,'Apotheca, Ltd'),(30,'S.S.S. Group'),(31,'Uriel Group'),(32,'OHTA\'S Corp'),(33,'Trigen '),(34,'OUR Ltd'),(35,'Amylin Group'),(36,'O.E. Ltd'),(37,'AuroMedics Corp'),(38,'Ascend Ltd'),(39,'Victory Ltd'),(40,'Select '),(41,'Weimei Corp'),(42,'Llorens Ltd'),(43,'Exact-Rx, Corp'),(44,'Winthrop '),(45,'Nipro '),(46,'U.S. Ltd'),(47,'Niconovum Corp'),(48,'Fenwal, Corp'),(49,'Bare '),(50,'Sundial ');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09  8:30:22
