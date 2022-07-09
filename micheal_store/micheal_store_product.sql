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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int unsigned NOT NULL,
  `product_name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cookware'),(2,'Photo Frames'),(3,'Table Lamps'),(4,'Serveware'),(5,'Bathroom Furniture'),(6,'Computers'),(7,'Dinnerware'),(8,'Cocktail Glasses'),(9,'Baseball'),(10,'Blankets'),(11,'Ornaments'),(12,'Dining Furniture'),(13,'Bakeware'),(14,'Mirrors'),(15,'Outdoor Furniture'),(16,'Stemware'),(17,'Furniture Cushions'),(18,'Basketball'),(19,'Vanities'),(20,'Bar Tools'),(21,'Floral'),(22,'Wine Storage'),(23,'Accessories'),(24,'Wall Frames'),(25,'TV and video'),(26,'Candles'),(27,'Wreaths'),(28,'Phones'),(29,'Pendants'),(30,'Wall Coverings'),(31,'Candleholders'),(32,'Vases'),(33,'Outdoor Decor'),(34,'Bedroom Furniture'),(35,'Table Linens'),(36,'Clocks'),(37,'Platters'),(38,'Wardrobes'),(39,'Floor Lamps'),(40,'Rugs'),(41,'Collectibles'),(42,'Bean Bags'),(43,'Festive'),(44,'Pillows'),(45,'Home Fragrances'),(46,'Sculptures'),(47,'Audio');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09  8:29:48
