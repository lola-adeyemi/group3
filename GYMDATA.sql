-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: gymdata
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `CLASSID` int(11) NOT NULL,
  `GYM_ID` int(11) NOT NULL,
  `CLASSTYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DURATION` int(11) NOT NULL,
  `TIME` varchar(50) NOT NULL,
  `FITNESSLEVEL` int(11) NOT NULL,
  PRIMARY KEY (`CLASSID`),
  KEY `GYM_ID` (`GYM_ID`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`GYM_ID`) REFERENCES `gymlocation` (`GYMLOCATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `DISCOUNTID` int(11) NOT NULL,
  `GYM_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PERCENTAGE` int(11) NOT NULL,
  `EXPIRATION` decimal(3,3) NOT NULL,
  PRIMARY KEY (`DISCOUNTID`),
  KEY `GYM_ID` (`GYM_ID`),
  CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`GYM_ID`) REFERENCES `gymlocation` (`GYMLOCATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drinksandfood`
--

DROP TABLE IF EXISTS `drinksandfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinksandfood` (
  `DRINKSANDFOODID` int(11) NOT NULL,
  `FACILITY_ID` int(11) NOT NULL,
  `VENDINGMACHINESNACKS` varchar(50) NOT NULL,
  `VENDINGMACHINEDRINKS` varchar(50) NOT NULL,
  `ONSITECAFE` varchar(50) NOT NULL,
  `ONSITECLOTHING` varchar(50) NOT NULL,
  PRIMARY KEY (`DRINKSANDFOODID`),
  KEY `FACILITY_ID` (`FACILITY_ID`),
  CONSTRAINT `drinksandfood_ibfk_1` FOREIGN KEY (`FACILITY_ID`) REFERENCES `facility` (`FACILITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinksandfood`
--

LOCK TABLES `drinksandfood` WRITE;
/*!40000 ALTER TABLE `drinksandfood` DISABLE KEYS */;
/*!40000 ALTER TABLE `drinksandfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `FACILITYID` int(11) NOT NULL,
  `GYM_ID` int(11) NOT NULL,
  `WEIGHTROOM` tinyint(1) NOT NULL,
  `CARDIOROOM` tinyint(1) NOT NULL,
  `SWIMMINGPOOL` tinyint(1) NOT NULL,
  `SAUNA` tinyint(1) NOT NULL,
  `STEAMROOM` tinyint(1) NOT NULL,
  `ONSITECRECHE` tinyint(1) NOT NULL,
  `DRINKSANDFO0OD` tinyint(1) NOT NULL,
  PRIMARY KEY (`FACILITYID`),
  KEY `GYM_ID` (`GYM_ID`),
  CONSTRAINT `facility_ibfk_1` FOREIGN KEY (`GYM_ID`) REFERENCES `gymlocation` (`GYMLOCATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gymlocation`
--

DROP TABLE IF EXISTS `gymlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gymlocation` (
  `USERNAME` int(11) DEFAULT NULL,
  `GYMLOCATIONID` int(11) NOT NULL,
  `GYMNAME` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostCode` varchar(50) NOT NULL,
  `Address` varchar(300) NOT NULL,
  PRIMARY KEY (`GYMLOCATIONID`),
  KEY `USERNAME` (`USERNAME`),
  CONSTRAINT `gymlocation_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `users` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gymlocation`
--

LOCK TABLES `gymlocation` WRITE;
/*!40000 ALTER TABLE `gymlocation` DISABLE KEYS */;
INSERT INTO `gymlocation` VALUES (0,1,'Pauls','Oxford','OX1 1PT','LittleGate House, 16-17 St Ebbes St, Oxford'),(0,2,'Best','London Piccadilly','SW14 4PE','4-12, Rex House Regent Street London'),(0,3,'Strong','Leeds','LS1 2HD','4 Cloth Hall, Leeds'),(0,4,'Climb','Manchester','M1 1PD','90-100 Market St, Manchester'),(0,5,'Top','Liverpool','L1 1QE','Lewiss,40 Ranelagh St, Liverpool'),(0,6,'All together','Edinburgh','EH3 8RA','1-7 W Approach Rd, Conference Square, Edinburgh'),(0,7,'Best','Cambridge','CB1 1PS','2nd Floor, Grafton Centre, Cambridge'),(0,8,'Yip','Plymouth','PL4 7EF','Endeavour House, Alexandra Rd, Mutley, Plymouth'),(0,9,'Exo','York','YO30 4TU','Stirling Rd, York'),(0,10,'Step','Newcastle','NE1 7RA','Eldon Garden Shopping Centre, Percy St, Newcastle upon Tyne');
/*!40000 ALTER TABLE `gymlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `USERID` int(11) DEFAULT NULL,
  `SUBSCRIPTIONID` int(11) NOT NULL,
  `SUBSCRIPTIONTYPE` varchar(50) NOT NULL,
  `Access` varchar(50) NOT NULL,
  `MultiGym` varchar(50) NOT NULL,
  `AccessToClass` varchar(50) NOT NULL,
  `PriceMonth` decimal(4,4) NOT NULL,
  `PriceYear` decimal(4,4) NOT NULL,
  `SubscriptionLength` varchar(50) NOT NULL,
  PRIMARY KEY (`SUBSCRIPTIONID`),
  KEY `USERID` (`USERID`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`USERID`) REFERENCES `users` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (0,1,'Off Peak','Off Peak hours','No','8 classes a week',0.9999,0.9999,'6months, 1 year, 3 years'),(0,2,'Core','Unlimited Access','Yes for added fee','8 classes a week',0.9999,0.9999,'6 months, 1 year'),(0,3,'Plus','Unlimited Access','Yes','12 classes a week',0.9999,0.9999,'6 months, 1 year');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `USERID` int(11) NOT NULL,
  `GYMID` int(11) NOT NULL,
  `FORENAME` varchar(50) DEFAULT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `AGE` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,1,'EDWARD','SHEERAN',31,'esheeran@hotmail.com',2147483647);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-10 22:24:59
