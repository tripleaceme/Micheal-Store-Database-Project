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
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
  `County_id` int unsigned NOT NULL,
  `county` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`County_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Shelby County/Jefferson County'),(2,'Limestone County/Madison County'),(3,'Mobile County'),(4,'Montgomery County'),(5,'Pulaski County'),(6,'Maricopa County'),(7,'Maricopa County/Yavapai County'),(8,'Pima County'),(9,'Orange County'),(10,'Contra Costa County'),(11,'Kern County'),(12,'Alameda County'),(13,'Los Angeles County'),(14,'San Diego County'),(15,'Fresno County'),(16,'Riverside County'),(17,'San Mateo County'),(18,'Sacramento County'),(19,'Solano County'),(20,'San Bernardino County'),(21,'Stanislaus County'),(22,'Ventura County'),(23,'Placer County'),(24,'Monterey County'),(25,'San Francisco County'),(26,'Santa Clara County'),(27,'Santa Barbara County'),(28,'Sonoma County'),(29,'San Joaquin County'),(30,'Tulare County'),(31,'Jefferson County/Adams County'),(32,'Adams County/Douglas County/Arapahoe County'),(33,'Boulder County'),(34,'Arapahoe County'),(35,'El Paso County'),(36,'Denver County'),(37,'Larimer County'),(38,'Weld County'),(39,'Douglas County'),(40,'Jefferson County'),(41,'Pueblo County'),(42,'Adams County/Weld County'),(43,'Fairfield County'),(44,'Hartford County'),(45,'New Haven County'),(46,'District of Columbia'),(47,'Hillsborough County'),(48,'Lee County'),(49,'Pinellas County'),(50,'Broward County'),(51,'Alachua County'),(52,'Miami-Dade County'),(53,'Duval County'),(54,'Polk County'),(55,'Brevard County'),(56,'St. Lucie County'),(57,'Hernando County'),(58,'Leon County'),(59,'Palm Beach County'),(60,'Clarke County'),(61,'DeKalb County/Fulton County'),(62,'Richmond County'),(63,'Muscogee County'),(64,'Bibb County'),(65,'Fulton County'),(66,'Chatham County'),(67,'Honolulu County'),(68,'Linn County'),(69,'Scott County'),(70,'Warren County/Polk County'),(71,'Ada County'),(72,'Kendall County/Kane County/Will County/DuPage County'),(73,'Kane County'),(74,'DuPage County'),(75,'Cook County'),(76,'Sangamon County'),(77,'Cook County/DuPage County'),(78,'Cook County/Kane County'),(79,'Kendall County/Will County'),(80,'Will County/DuPage County'),(81,'Peoria County'),(82,'Winnebago County/Ogle County'),(83,'Winnebago County'),(84,'Lake County'),(85,'Marion County'),(86,'Vanderburgh County'),(87,'Allen County'),(88,'Marion County.'),(89,'St. Joseph County'),(90,'Wyandotte County'),(91,'Johnson County'),(92,'Shawnee County'),(93,'Sedgwick County'),(94,'Fayette County'),(95,'East Baton Rouge Parish'),(96,'Lafayette Parish'),(97,'Jefferson Parish'),(98,'Orleans Parish'),(99,'Caddo Parish/Bossier Parish'),(100,'Suffolk County'),(101,'Middlesex County'),(102,'Hampden County'),(103,'Worcester County'),(104,'Baltimore city'),(105,'Howard County'),(106,'Washtenaw County'),(107,'Wayne County'),(108,'Kent County'),(109,'Clinton County/Ingham County/Eaton County'),(110,'Macomb County'),(111,'Hennepin County'),(112,'Olmsted County'),(113,'Ramsey County'),(114,'Boone County'),(115,'Jackson County/Clay County'),(116,'Cass County/Platte County/Jackson County/Clay County'),(117,'Christian County/Greene County'),(118,'St. Louis city'),(119,'Rankin County/Hinds County/Madison County'),(120,'Yellowstone County'),(121,'Chatham County/Wake County'),(122,'Mecklenburg County'),(123,'Durham County/Orange County/Wake County'),(124,'Cumberland County'),(125,'Guilford County'),(126,'Davidson County/Randolph County/Forsyth County/Guilford County'),(127,'Durham County/Wake County'),(128,'New Hanover County'),(129,'Forsyth County'),(130,'Cass County'),(131,'Lancaster County'),(132,'Union County'),(133,'Hudson County'),(134,'Essex County'),(135,'Passaic County'),(136,'Bernalillo County'),(137,'DoÃƒÂ±a Ana County'),(138,'Clark County'),(139,'Washoe County'),(140,'Erie County'),(141,'Kings County'),(142,'Nassau County'),(143,'New York County'),(144,'Richmond County/Queens County/Kings County/New York County/Bronx County'),(145,'Queens County'),(146,'Rockland County'),(147,'Monroe County'),(148,'Onondaga County'),(149,'Bronx County'),(150,'Westchester County'),(151,'Summit County'),(152,'Hamilton County'),(153,'Cuyahoga County'),(154,'Delaware County/Franklin County/Fairfield County'),(155,'Lucas County'),(156,'Wagoner County/Tulsa County'),(157,'Cleveland County'),(158,'Canadian County/Pottawatomie County/Oklahoma County/Cleveland County'),(159,'Rogers County/Wagoner County/Osage County/Tulsa County'),(160,'Lane County'),(161,'Multnomah County'),(162,'Washington County'),(163,'Clackamas County/Multnomah County/Washington County'),(164,'Marion County/Polk County'),(165,'Lehigh County'),(166,'Philadelphia County'),(167,'Allegheny County'),(168,'Providence County'),(169,'Berkeley County/Charleston County'),(170,'Lexington County/Richland County'),(171,'Dorchester County/Berkeley County/Charleston County'),(172,'Minnehaha County/Lincoln County'),(173,'Knox County'),(174,'Shelby County'),(175,'Rutherford County'),(176,'Davidson County'),(177,'Jones County/Taylor County'),(178,'Randall County/Potter County'),(179,'Tarrant County'),(180,'Hays County/Williamson County/Travis County'),(181,'Cameron County'),(182,'Collin County/Denton County/Dallas County'),(183,'Brazos County'),(184,'Aransas County/Kleberg County/Nueces County/San Patricio County'),(185,'Rockwall County/Kaufman County/Collin County/Denton County/Dallas County'),(186,'Denton County'),(187,'Parker County/Johnson County/Tarrant County/Wise County/Denton County'),(188,'Collin County/Denton County'),(189,'Rockwall County/Collin County/Dallas County'),(190,'Tarrant County/Ellis County/Dallas County'),(191,'Fort Bend County/Harris County/Montgomery County'),(192,'Dallas County'),(193,'Bell County'),(194,'Webb County'),(195,'Denton County/Dallas County'),(196,'Lubbock County'),(197,'Hidalgo County'),(198,'Collin County'),(199,'Kaufman County/Dallas County'),(200,'Martin County/Midland County'),(201,'Midland County/Ector County'),(202,'Harris County'),(203,'Fort Bend County/Harris County/Brazoria County'),(204,'Collin County/Dallas County'),(205,'Williamson County/Travis County'),(206,'Tom Green County'),(207,'Bexar County/Comal County/Medina County'),(208,'Harris County/Montgomery County'),(209,'Smith County'),(210,'McLennan County'),(211,'Wichita County'),(212,'Utah County'),(213,'Salt Lake County'),(214,'Alexandria city'),(215,'Arlington County'),(216,'Chesapeake city'),(217,'Hampton city'),(218,'Newport News city'),(219,'Norfolk city'),(220,'Richmond city'),(221,'Virginia Beach city'),(222,'King County'),(223,'Snohomish County'),(224,'Spokane County'),(225,'Pierce County'),(226,'Brown County'),(227,'Dane County'),(228,'Milwaukee County/Washington County/Waukesha County');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09  8:30:43
