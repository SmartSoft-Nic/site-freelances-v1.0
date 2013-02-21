CREATE DATABASE  IF NOT EXISTS `webpage` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webpage`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: webpage
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `menline_child`
--

DROP TABLE IF EXISTS `menline_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menline_child` (
  `code_menu` varchar(20) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `menu_parent` varchar(20) DEFAULT NULL COMMENT 'Tabla que almacena las lineas de Menu Hij@s.',
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menline_child`
--

LOCK TABLES `menline_child` WRITE;
/*!40000 ALTER TABLE `menline_child` DISABLE KEYS */;
INSERT INTO `menline_child` (`code_menu`, `order`, `url`, `menu_parent`, `label`) VALUES ('m1_mision',0,'mision','m0_A_D','Mision y Vision');
/*!40000 ALTER TABLE `menline_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menline_parent`
--

DROP TABLE IF EXISTS `menline_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menline_parent` (
  `code_menu` varchar(20) NOT NULL,
  `order_line` int(11) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`code_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena Los Menus Principales.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menline_parent`
--

LOCK TABLES `menline_parent` WRITE;
/*!40000 ALTER TABLE `menline_parent` DISABLE KEYS */;
INSERT INTO `menline_parent` (`code_menu`, `order_line`, `label`) VALUES ('m0_inicio',0,'Inicio'),('m0_servicio',1,'Servicios'),('m0_portafolio',2,'Portafolio'),('m0_A_D',3,'Acerca de'),('m0_contacto',4,'Contactanos');
/*!40000 ALTER TABLE `menline_parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-21 10:49:26
