CREATE DATABASE  IF NOT EXISTS `giphy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `giphy`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: giphy
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `username` varchar(255) NOT NULL,
  `imageid` varchar(255) NOT NULL,
  PRIMARY KEY (`username`,`imageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('alice','11EnpDAuuLc5vq'),('alice','26n6yogsCu0VZciqs'),('alice','3o7bue8fe4osqqSY5G'),('alice','3o7qDSOvfaCO9b3MlO'),('alice','3o85xpqgSEA5GNmY2Q'),('alice','3o85xpTdNSwazIr23S'),('alice','3otPoUkg3hBxQKRJ7y'),('alice','4r98T7oBFiqQw'),('alice','8Li4dRq7UuHDO'),('alice','C02IVLBtctk76'),('alice','cEYFeDKVPTmRgIG9fmo'),('alice','CTfg7SZKO10Pe'),('alice','E9oadOOmD27jG'),('alice','l378cvlC9K7cYGNDq'),('alice','mpfMDb6MB6EWQ'),('alice','psnG8iKvm5lo4'),('alice','qjj4xrA1STjfa'),('alice','QWAs5EDa9C58s'),('alice','YJBNjrvG5Ctmo'),('alice','Yv66XRlbWCuQw'),('bill','CXijLuAwu955u'),('bill','iq6OAVD0ocBFu'),('bill','xT9IgH6tFP7dNVrQAw'),('naing','26BRBupa6nRXMGBP2'),('naing','3o7qDSOvfaCO9b3MlO'),('naing','cEYFeDKVPTmRgIG9fmo'),('naing','h8WAdB9nUdraM'),('steve','12bkMjatTEfoWI'),('steve','26xBPapqZgN5M1KrC'),('steve','Yjb1jDhMWswRG'),('tomy','image1'),('tony','cEYFeDKVPTmRgIG9fmo'),('tony','Ci9giBKfL0B1u'),('tony','h8WAdB9nUdraM'),('user1','image1');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16 20:12:29
