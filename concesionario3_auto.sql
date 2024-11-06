CREATE DATABASE  IF NOT EXISTS `concesionario3` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concesionario3`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: concesionario3
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto` (
  `idauto` int NOT NULL AUTO_INCREMENT,
  `idmarca` int NOT NULL,
  `idmodelo` int NOT NULL,
  `idversion` int NOT NULL,
  `anio` int NOT NULL,
  `precio` float NOT NULL,
  `kilometros` int NOT NULL,
  `combustible` varchar(10) NOT NULL,
  `puertas` int NOT NULL,
  `condicion` varchar(7) NOT NULL,
  PRIMARY KEY (`idauto`),
  KEY `idmarca_idx` (`idmarca`),
  KEY `idmodelo_idx` (`idmodelo`),
  KEY `idversion_idx` (`idversion`),
  CONSTRAINT `idmarca` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`),
  CONSTRAINT `idmodelo` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`),
  CONSTRAINT `idversion` FOREIGN KEY (`idversion`) REFERENCES `version` (`idversion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES (1,1,1,1,2022,1000,100,'diesel',4,'usado'),(2,2,2,2,2013,1000,100,'nafta',4,'usado'),(3,3,3,3,2024,1000,100,'gnc',4,'nuevo'),(4,4,4,4,2018,1000,100,'hibrido',4,'usado'),(5,5,5,5,2019,1000,100,'diesel',4,'nuevo'),(6,6,6,6,2017,1000,100,'nafta',4,'usado'),(7,7,7,7,2019,1000,100,'hibrido',4,'nuevo'),(8,8,8,8,2017,1000,100,'nafta',4,'usado'),(9,9,9,9,2013,1000,100,'diesel',4,'usado'),(10,10,10,10,2011,1000,100,'nafta',4,'usado'),(11,11,11,11,2010,1000,100,'nafta',4,'usado'),(12,12,12,12,2014,1000,100,'nafta',4,'usado'),(13,13,13,13,2013,1000,100,'nafta',4,'usado'),(14,14,14,14,2012,1000,100,'nafta',4,'usado');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 18:58:53
