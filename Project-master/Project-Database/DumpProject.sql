-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tbldht11`
--

DROP TABLE IF EXISTS `tbldht11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldht11` (
  `DHT11ID` int(11) NOT NULL AUTO_INCREMENT,
  `Beschrijving_DHT11` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DHT11ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldht11`
--

LOCK TABLES `tbldht11` WRITE;
/*!40000 ALTER TABLE `tbldht11` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldht11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblldr`
--

DROP TABLE IF EXISTS `tblldr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblldr` (
  `LDRID` int(11) NOT NULL AUTO_INCREMENT,
  `Beschrijving_LDR` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LDRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblldr`
--

LOCK TABLES `tblldr` WRITE;
/*!40000 ALTER TABLE `tblldr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblldr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmetingdht11`
--

DROP TABLE IF EXISTS `tblmetingdht11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmetingdht11` (
  `Meting_DHT11ID` int(11) NOT NULL AUTO_INCREMENT,
  `Meting_DHT11` float DEFAULT NULL,
  `TimeStamp_Meting_DHT11` datetime DEFAULT NULL,
  `tblDHT11_DHT11ID` int(11) NOT NULL,
  `tblSysteem_SysteemID` int(11) NOT NULL,
  PRIMARY KEY (`Meting_DHT11ID`,`tblDHT11_DHT11ID`,`tblSysteem_SysteemID`),
  KEY `fk_tblMetingDHT11_tblDHT111_idx` (`tblDHT11_DHT11ID`),
  KEY `fk_tblMetingDHT11_tblSysteem1_idx` (`tblSysteem_SysteemID`),
  CONSTRAINT `fk_tblMetingDHT11_tblDHT111` FOREIGN KEY (`tblDHT11_DHT11ID`) REFERENCES `tbldht11` (`DHT11ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblMetingDHT11_tblSysteem1` FOREIGN KEY (`tblSysteem_SysteemID`) REFERENCES `tblsysteem` (`SysteemID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmetingdht11`
--

LOCK TABLES `tblmetingdht11` WRITE;
/*!40000 ALTER TABLE `tblmetingdht11` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmetingdht11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmetingldr`
--

DROP TABLE IF EXISTS `tblmetingldr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmetingldr` (
  `Meting_LDRID` int(11) NOT NULL,
  `Meting_LDR` float DEFAULT NULL,
  `TimeStamp_Meting_LDR` datetime DEFAULT NULL,
  `tblLDR_LDRID` int(11) NOT NULL,
  `tblSysteem_SysteemID` int(11) NOT NULL,
  PRIMARY KEY (`Meting_LDRID`,`tblLDR_LDRID`,`tblSysteem_SysteemID`),
  KEY `fk_tblMetingLDR_tblLDR1_idx` (`tblLDR_LDRID`),
  KEY `fk_tblMetingLDR_tblSysteem1_idx` (`tblSysteem_SysteemID`),
  CONSTRAINT `fk_tblMetingLDR_tblLDR1` FOREIGN KEY (`tblLDR_LDRID`) REFERENCES `tblldr` (`LDRID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblMetingLDR_tblSysteem1` FOREIGN KEY (`tblSysteem_SysteemID`) REFERENCES `tblsysteem` (`SysteemID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmetingldr`
--

LOCK TABLES `tblmetingldr` WRITE;
/*!40000 ALTER TABLE `tblmetingldr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmetingldr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmetingyl69`
--

DROP TABLE IF EXISTS `tblmetingyl69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmetingyl69` (
  `MetingYL-69ID` int(11) NOT NULL AUTO_INCREMENT,
  `Meting_YL-69` float DEFAULT NULL,
  `TimeStamp_Meting_YL69` datetime DEFAULT NULL,
  `tblYL-69_YL-69ID` int(11) NOT NULL,
  `tblSysteem_SysteemID` int(11) NOT NULL,
  PRIMARY KEY (`MetingYL-69ID`,`tblYL-69_YL-69ID`,`tblSysteem_SysteemID`),
  KEY `fk_tblMetingYL69_tblYL-69_idx` (`tblYL-69_YL-69ID`),
  KEY `fk_tblMetingYL69_tblSysteem1_idx` (`tblSysteem_SysteemID`),
  CONSTRAINT `fk_tblMetingYL69_tblSysteem1` FOREIGN KEY (`tblSysteem_SysteemID`) REFERENCES `tblsysteem` (`SysteemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblMetingYL69_tblYL-69` FOREIGN KEY (`tblYL-69_YL-69ID`) REFERENCES `tblyl-69` (`YL-69ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmetingyl69`
--

LOCK TABLES `tblmetingyl69` WRITE;
/*!40000 ALTER TABLE `tblmetingyl69` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmetingyl69` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsysteem`
--

DROP TABLE IF EXISTS `tblsysteem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsysteem` (
  `SysteemID` int(11) NOT NULL AUTO_INCREMENT,
  `Beschrijving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SysteemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsysteem`
--

LOCK TABLES `tblsysteem` WRITE;
/*!40000 ALTER TABLE `tblsysteem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsysteem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblyl-69`
--

DROP TABLE IF EXISTS `tblyl-69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblyl-69` (
  `YL-69ID` int(11) NOT NULL AUTO_INCREMENT,
  `Beschrijving_YL69` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`YL-69ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblyl-69`
--

LOCK TABLES `tblyl-69` WRITE;
/*!40000 ALTER TABLE `tblyl-69` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblyl-69` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-16 18:01:03
