-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: hobbiton_production
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `disaplay_desc` varchar(100) NOT NULL,
  `status_code` int(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` VALUES (1,'Education Plan 2 Years Tenor','Two year tenor education plan','2 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(2,'Education Plan 3 Years Tenor','Three year tenor education plan','3 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(3,'Education Plan 5 Years Tenor','Five year tenor education plan','5 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(4,'Education Plan 8 Years Tenor','Eight year tenor education plan','8 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(5,'Education Plan 10 Years Tenor','Ten year tenor education plan','10 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(6,'Education Plan 12 Years Tenor','Twelve year tenor education plan','12 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(7,'Education Plan 15 Years Tenor','Fifteen year tenor education plan','15 yr',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(8,'General Patumba Account','The general account used by patumba for savings','Patumba Account',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(9,'Retirment Plan','Retirement Plan','Retirement Plan',1,'2018-11-23 00:00:00','2018-11-22 20:00:00',1,1),(10,'Fixed Term Deposits','Fixed Term Deposits for the Hobbiton SACCO','Fixed Term Deposit',100,'2019-02-06 00:00:00',NULL,1,1),(11,'Lending Account','SACCO Lending Account','Lending Account',100,'2019-05-21 00:00:00','2019-08-05 22:00:00',1,1),(12,'Shares Account','SACCO Shares Account','Shares Account',100,'2019-05-21 00:00:00','2019-05-20 22:00:00',1,1),(14,'Airtime Account','Airtime Float Account','Airtime Float',100,'2020-01-06 10:05:00','2020-01-06 08:05:00',1,1);
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MSISDN` bigint(12) NOT NULL,
  `account_type_id` int(3) NOT NULL,
  `status_code` int(6) DEFAULT NULL,
  `balance` double(21,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  `date_opened` datetime DEFAULT NULL,
  `date_closed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MSISDN` (`MSISDN`,`account_type_id`),
  KEY `customer_fk` (`MSISDN`),
  CONSTRAINT `customer_fk` FOREIGN KEY (`MSISDN`) REFERENCES `customers` (`MSISDN`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,260950637780,8,150,42703.931848,'2019-05-25 19:14:46','2019-05-25 17:14:46',1,1,'2019-05-25 19:14:46',NULL),(3,260950637780,1,150,1.885508,'2019-05-25 20:53:03','2019-05-25 18:53:03',1,1,'2019-05-25 20:53:03',NULL),(4,260950637780,12,150,810.364185,'2019-05-25 20:54:27','2019-05-25 18:54:27',1,1,'2019-05-25 20:54:27',NULL),(15,260950637780,10,150,-11.369614,'2019-06-14 12:51:05','2019-06-14 10:51:05',1,1,'2019-06-14 12:51:05',NULL),(16,260950637780,11,150,200000.000000,'2019-06-14 14:03:56','2019-06-14 12:03:56',1,1,'2019-06-14 14:03:56',NULL),(17,260762434965,9,150,0.000000,'2019-06-14 18:08:15','2019-06-14 16:08:15',1,1,'2019-06-14 18:08:15',NULL),(18,260774424203,8,150,0.000000,'2019-06-15 21:08:10','2019-06-15 19:08:10',1,1,'2019-06-15 21:08:10',NULL),(19,260762434969,8,150,0.000000,'2019-06-22 17:21:10','2019-06-22 15:21:10',1,1,'2019-06-22 17:21:10',NULL),(21,260762434965,12,150,20.000000,'2019-07-05 17:53:12','2019-07-05 15:53:12',1,1,'2019-07-05 17:53:12',NULL),(22,260963183932,8,150,0.000000,'2019-08-23 18:35:51','2019-08-23 16:35:51',1,1,'2019-08-23 18:35:51',NULL),(23,260974035672,8,150,0.000000,'2019-08-23 18:48:49','2019-08-23 16:48:49',1,1,'2019-08-23 18:48:49',NULL),(24,260950637780,14,150,200.000000,'2019-08-23 18:48:49','2019-08-23 16:48:49',1,1,'2019-08-23 18:48:49',NULL),(25,260974327259,8,150,0.000000,'2020-02-02 11:06:23','2020-02-02 09:06:23',1,1,'2020-02-02 11:06:23',NULL),(26,260974327245,8,150,0.000000,'2020-02-05 15:11:01','2020-02-05 13:11:01',1,1,'2020-02-05 15:11:01',NULL),(28,260950707669,14,100,126.000000,'2020-02-06 14:53:21','2020-02-06 12:53:21',1,1,'2020-02-06 14:53:21',NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `age_group`
--

DROP TABLE IF EXISTS `age_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age_group` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` bigint(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_2` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `age_group_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `duration_group` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_group`
--

LOCK TABLES `age_group` WRITE;
/*!40000 ALTER TABLE `age_group` DISABLE KEYS */;
INSERT INTO `age_group` VALUES (1,'group one(1)\r\n','5 to 40 years(duration group one)',200110102101,20011010210,0,1),(2,'group two(1)','41 to 60 years(duration group one)',200110102102,20011010210,0,1),(3,'group three(1)','61 to 70 years(duration group one)',200110102103,20011010210,0,1),(4,'group one(2)','5 to 40 years (duration group two)',200110102111,20011010211,0,1),(5,'group two(2)','41 to 60 years (duration group two)',200110102112,20011010211,0,1),(6,'group three(2)','61 to 70 years (duration group two)',200110102113,20011010211,0,1),(7,'group one(3)','5 to 40 years (duration group three)',200110102121,20011010212,0,1),(8,'group two(3)','41 to 60 years (duration group three)',200110102122,20011010212,0,1),(9,'group three(3)','61 to 70 years (duration group three)',200110102123,20011010212,0,1),(10,'group one(4)','5 to 40 years (duration group four)',200110102131,20011010213,0,1),(11,'group two(4)','41 to 60 (duration group four)',200110102132,20011010213,0,1),(12,'group three(4)','61 to 70 (duration group four)',200110102133,20011010213,0,1),(16,'group one(5)','5 to 40 years (duration group 5)',200110102141,20011010214,0,1),(17,'group two(5)','41 to 60 years (duration group 5)',200110102142,20011010214,0,1),(18,'group three(5)','61 to 70 years (duration group 5)',200110102143,20011010214,0,1),(19,'group one(6)','5 to 40 years(duration group six)',200110102151,20011010215,0,1),(20,'group two(6)','41 to 60 years(duration group six)',200110102152,20011010215,0,1),(21,'group three(6)','61 to 70 years(duration group six)',200110102153,20011010215,0,1),(22,'group one(7)','5 to 40 years(duration group seven)',200110102161,20011010216,0,1),(23,'group two(7)','41 to 60 years(duration group seven)',200110102162,20011010216,0,1),(24,'group three(7)','61 to 70 years(duration group seven)',200110102163,20011010216,0,1),(28,'group one(8)','5 to 40 years(duration group eight)',200110102171,20011010217,0,1),(29,'group two(8)','41 to 60 years(duration group eight)',200110102172,20011010217,0,1),(30,'group three(8)','61 to 70 years(duration group eight)',200110102173,20011010217,0,1),(31,'group one(9)','5 to 40 years(duration group nine)',200110102181,20011010218,0,1),(32,'group two(9)','41 to 60 years(duration group nine)',200110102182,20011010218,0,1),(33,'group three(9)','61 to 70 years(duration group nine)',200110102183,20011010218,0,1),(34,'group one(10)','5 to 40 years(duration group ten)',200110102191,20011010219,0,1),(35,'group two(10)','41 to 60 years(duration group ten)',200110102192,20011010219,0,1),(36,'group three(10)','61 to 70 years(duration group ten)',200110102193,20011010219,0,1),(37,'group one(11)','5 to 40 years(duration group eleven)',200110102201,20011010220,0,1),(38,'group two(11)','41 to 60 years(duration group eleven)',200110102202,20011010220,0,1),(39,'group three(11)','61 to 70 years(duration group eleven)',200110102203,20011010220,0,1);
/*!40000 ALTER TABLE `age_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_commission`
--

DROP TABLE IF EXISTS `agent_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_commission` (
  `agent_msisdn` varchar(12) NOT NULL,
  `total_commission` double NOT NULL,
  `deleted_flag` int(11) NOT NULL DEFAULT '1' COMMENT '1=undeleted, 0=deleted',
  PRIMARY KEY (`agent_msisdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_commission`
--

LOCK TABLES `agent_commission` WRITE;
/*!40000 ALTER TABLE `agent_commission` DISABLE KEYS */;
INSERT INTO `agent_commission` VALUES ('260762434965',10.2,1);
/*!40000 ALTER TABLE `agent_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_withdraw_request`
--

DROP TABLE IF EXISTS `agent_withdraw_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_withdraw_request` (
  `withdraw_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_msisdn` varchar(12) NOT NULL,
  `withdraw_amount` double NOT NULL,
  `balance_before` double NOT NULL,
  `balance_after` double NOT NULL,
  `withdraw_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL COMMENT 'S=success, F=failed',
  PRIMARY KEY (`withdraw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_withdraw_request`
--

LOCK TABLES `agent_withdraw_request` WRITE;
/*!40000 ALTER TABLE `agent_withdraw_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_withdraw_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `MSISDN` bigint(12) NOT NULL,
  `unitsBalance` double(21,6) NOT NULL DEFAULT '0.000000',
  `status` int(3) NOT NULL DEFAULT '150',
  `dob` date DEFAULT NULL,
  `NRC` varchar(20) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airtime_transactions`
--

DROP TABLE IF EXISTS `airtime_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airtime_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_msisdn` varchar(12) NOT NULL,
  `transaction_amount` double NOT NULL,
  `commission_amount` double NOT NULL,
  `agent_msisdn` varchar(12) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `serviceID` bigint(12) DEFAULT NULL,
  `externalID` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airtime_transactions`
--

LOCK TABLES `airtime_transactions` WRITE;
/*!40000 ALTER TABLE `airtime_transactions` DISABLE KEYS */;
INSERT INTO `airtime_transactions` VALUES (1,'260971042607',100,5.57,'260950637780','2020-01-07 11:08:20',18,NULL),(2,'260971042606',100,5.57,'260950637780','2020-01-07 11:08:42',18,NULL),(3,'260971042608',100,5.57,'260950637780','2020-01-07 11:08:49',18,NULL),(4,'260951042608',100,5.57,'260950637780','2020-01-07 11:09:00',18,NULL);
/*!40000 ALTER TABLE `airtime_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balanceEligibleForWithdraw`
--

DROP TABLE IF EXISTS `balanceEligibleForWithdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balanceEligibleForWithdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MSISDN` bigint(12) NOT NULL,
  `unitsBalance` double(21,6) NOT NULL DEFAULT '0.000000',
  `account_type_id` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MSISDN_2` (`MSISDN`,`account_type_id`),
  CONSTRAINT `balanceEligibleForWithdraw_ibfk_1` FOREIGN KEY (`MSISDN`) REFERENCES `customers` (`MSISDN`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balanceEligibleForWithdraw`
--

LOCK TABLES `balanceEligibleForWithdraw` WRITE;
/*!40000 ALTER TABLE `balanceEligibleForWithdraw` DISABLE KEYS */;
INSERT INTO `balanceEligibleForWithdraw` VALUES (1,260950637780,850.364185,9,'2019-06-03 18:01:04','2019-06-03 16:01:04'),(2,260950637780,42703.931848,8,'2019-06-11 09:46:47','2019-06-11 07:46:47'),(3,260950637780,1.885508,1,'2019-06-11 09:46:48','2019-06-11 07:46:48'),(12,260950637780,-11.369614,10,'2019-06-14 12:51:05','2019-06-14 10:51:05');
/*!40000 ALTER TABLE `balanceEligibleForWithdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiaries`
--

DROP TABLE IF EXISTS `beneficiaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principal_msisdn` bigint(12) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `status_code` int(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiaries`
--

LOCK TABLES `beneficiaries` WRITE;
/*!40000 ALTER TABLE `beneficiaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bridgeMenu`
--

DROP TABLE IF EXISTS `bridgeMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bridgeMenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayName` varchar(225) DEFAULT NULL,
  `moduleUrl` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bridgeMenu`
--

LOCK TABLES `bridgeMenu` WRITE;
/*!40000 ALTER TABLE `bridgeMenu` DISABLE KEYS */;
INSERT INTO `bridgeMenu` VALUES (1,'Patumba','/var/www/html/patumba/ussd/PatumbaMenu.php',1),(2,'Lipila','/var/www/html/patumba/ussd/PatumbaMenu.php',1),(3,'Airtime','/var/www/html/patumba/ussd/AirtimeMenu.php ',1);
/*!40000 ALTER TABLE `bridgeMenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(20) DEFAULT NULL,
  `policy_number` varchar(225) DEFAULT NULL,
  `date_of_loss` date DEFAULT NULL,
  `vehicle_registration` varchar(225) DEFAULT NULL,
  `place_of_loss` varchar(225) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `policy` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
INSERT INTO `claims` VALUES (1,260963183932,'picz201908160001','2019-01-01','',NULL,'2019-08-16','pending','Motor Thrid Party');
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_2` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `main_menu` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'PICZ','Insurance Company',200110,2001,1,1),(2,'Innovate','Insurance Company',200111,2001,2,1),(3,'NICO','Insurance Company',200112,2001,3,1),(4,'Hollard','Insurance Company',200113,2001,4,1),(5,'ZISC','Insurance Company',200114,2001,5,1),(6,'Insurance Company 6','Insurance Company',200115,2001,6,0),(9,'Patumba','Hobbiton Unit Trust fintech company',200201,2002,1,1),(10,'KwikFin','hobbiton unit trust fintech company',200301,2003,1,1),(11,'BetterWay','loan providers',200302,2003,2,1);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `currencyID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `currencyName` varchar(60) NOT NULL,
  `currencyNumber` varchar(5) DEFAULT NULL,
  `ISOCode` varchar(5) DEFAULT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `dateCreated` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `insertedBy` int(11) unsigned DEFAULT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedBy` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`currencyID`),
  UNIQUE KEY `currencyName` (`currencyName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerTransactions`
--

DROP TABLE IF EXISTS `customerTransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerTransactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionID` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `unitsOpeningBalance` double(21,6) NOT NULL,
  `unitsClosingBalance` double(21,6) NOT NULL,
  `MSISDN` bigint(12) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactionID` (`transactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerTransactions`
--

LOCK TABLES `customerTransactions` WRITE;
/*!40000 ALTER TABLE `customerTransactions` DISABLE KEYS */;
INSERT INTO `customerTransactions` VALUES (1,100001,8,0.000000,0.942754,260950637780,'2019-05-25 20:52:14'),(2,100002,1,0.000000,1.885508,260950637780,'2019-05-25 20:53:03'),(3,100003,9,0.000000,1.885508,260950637780,'2019-05-25 20:54:27'),(4,100004,10,0.000000,11.313049,260950637780,'2019-05-25 20:54:59'),(5,100005,10,11.313049,199.863866,260950637780,'2019-05-25 20:55:52'),(6,1000003,8,0.942754,8485.729531,260950637780,'2019-06-03 16:44:14'),(7,1000004,9,1.885508,944.639594,260950637780,'2019-06-03 18:00:54'),(8,1000005,9,944.639594,850.364185,260950637780,'2019-06-03 18:04:36'),(9,1000016,8,8485.729531,8482.901269,260950637780,'2019-06-11 09:50:02'),(10,1000025,10,199.863866,4913.634298,260950637780,'2019-06-11 10:57:27'),(11,1000026,8,8482.901269,14139.425787,260950637780,'2019-06-12 08:49:49'),(12,1000027,8,14139.425787,15082.179873,260950637780,'2019-06-12 09:11:16'),(13,1000028,8,15082.179873,18853.196218,260950637780,'2019-06-12 09:55:45'),(14,1000029,8,18853.196218,19795.950304,260950637780,'2019-06-12 16:13:52'),(15,1000030,8,19795.950304,28752.114124,260950637780,'2019-06-12 16:14:47'),(16,1000031,8,28752.114124,37991.104170,260950637780,'2019-06-12 16:32:12'),(17,1000032,8,37991.104170,42704.874602,260950637780,'2019-06-12 16:57:02'),(18,1000056,8,42704.874602,42703.931848,260950637780,'2019-06-14 12:50:26'),(19,1000057,10,4913.634298,4902.264684,260950637780,'2019-06-14 12:51:04');
/*!40000 ALTER TABLE `customerTransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_fixed_term_deposits`
--

DROP TABLE IF EXISTS `customer_fixed_term_deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_fixed_term_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `balance` double(21,6) NOT NULL,
  `amount` double(21,6) NOT NULL,
  `msisdn` bigint(12) NOT NULL,
  `interest_rate` double(15,3) NOT NULL,
  `maturity_date` datetime NOT NULL,
  `interest_amount` double(21,6) NOT NULL,
  `total_amount` double(21,6) NOT NULL,
  `withholding_tax_percentage` double NOT NULL,
  `withholding_tax_amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_id` (`transaction_id`,`msisdn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_fixed_term_deposits`
--

LOCK TABLES `customer_fixed_term_deposits` WRITE;
/*!40000 ALTER TABLE `customer_fixed_term_deposits` DISABLE KEYS */;
INSERT INTO `customer_fixed_term_deposits` VALUES (1,108990,1.007890,1.000000,260967833567,9.000,'2019-04-01 21:45:07',0.007890,1.007890,0,0,'2019-02-28 21:45:45','2019-02-28 19:45:45'),(2,109079,2.015781,2.000000,260964333582,9.000,'2019-04-02 03:06:12',0.015781,2.015781,0,0,'2019-03-01 03:06:47','2019-03-01 01:06:47'),(3,109286,1.007890,1.000000,260962121294,9.000,'2019-04-02 10:03:55',0.007890,1.007890,0,0,'2019-03-01 10:04:23','2019-03-01 08:04:23'),(4,109466,68.205479,65.000000,260960445807,20.000,'2019-05-30 13:12:45',3.205479,68.205479,0,0,'2019-03-01 13:13:28','2019-03-01 11:13:28'),(5,100004,0.000000,12.000000,260950637780,9.000,'2019-06-26 20:54:58',0.094685,12.094685,0,0,'2019-05-25 20:54:59','2019-05-25 18:54:59'),(6,100005,201.578082,200.000000,260950637780,9.000,'2019-06-26 20:55:52',1.578082,201.578082,0,0,'2019-05-25 20:55:52','2019-05-25 18:55:52'),(7,1000025,5039.452055,5000.000000,260950637780,9.000,'2019-07-13 10:57:27',39.452055,5039.452055,0,0,'2019-06-11 10:57:27','2019-06-11 08:57:27');
/*!40000 ALTER TABLE `customer_fixed_term_deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `MSISDN` bigint(12) NOT NULL,
  `unitsBalance` double(21,6) NOT NULL DEFAULT '0.000000',
  `status` int(3) NOT NULL DEFAULT '150',
  `dob` date DEFAULT NULL,
  `NRC` varchar(20) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `MSISDN` (`MSISDN`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'NICKY','MWERENGA',260950637780,0.000000,156,'1955-10-20','CN923752','2019-05-25 19:14:46','OYCcF7reLCs='),(2,'Nic','150',260762434965,0.000000,151,'1992-01-01','000000/00/1','2019-06-14 18:08:15','OYCcF7reLCs='),(3,'Mwerenga','Mwerenga',263774424203,0.000000,152,'1955-10-20','000000/00/2','2019-06-14 18:08:15',NULL),(5,'Mwe','mwe',260774424203,0.000000,150,NULL,'000000/00/3','2019-06-15 21:08:10',NULL),(7,'Mwer','Mwerenga',260762434905,0.000000,152,NULL,'000000/00/5','2019-06-15 21:21:41',NULL),(8,'Arafat','Ahkmed',260762434915,0.000000,152,NULL,'000000/00/6','2019-06-15 21:37:23',NULL),(9,'Kat','Abraham',260762434908,0.000000,152,NULL,'000000/00/1','2019-06-15 21:51:31',NULL),(11,'Dre','And',260762434676,0.000000,152,NULL,'098765432','2019-06-15 22:06:08',NULL),(12,'Winnie','Mashaba',260762876265,0.000000,152,NULL,'673635363','2019-06-15 22:21:56',NULL),(13,'tey','uwye',260762434938,0.000000,152,NULL,'737383738','2019-06-15 22:26:20',NULL),(14,'Male','Female',260762837363,0.000000,152,NULL,'098789098','2019-06-15 22:30:08',NULL),(15,'Marko','Sibanda',260762546454,0.000000,151,NULL,'909876565','2019-06-15 22:37:32',NULL),(16,'mJY','UEY',260762343434,0.000000,151,NULL,'838383822','2019-06-15 22:42:05',NULL),(17,'jON','SNOW',260762431111,0.000000,152,NULL,'111111111','2019-06-15 22:45:33',NULL),(18,'uio','EWIUE',260762489898,0.000000,151,NULL,'999999999','2019-06-15 22:49:39',NULL),(21,'Esau','Test',260762434969,0.000000,150,NULL,'098789876','2019-06-22 17:21:10',NULL),(22,'Chiwende','Sakala',260963183932,0.000000,150,NULL,'334240101','2019-08-23 18:35:51',NULL),(23,'Chiwende','Sakala',260974035672,0.000000,150,'1996-01-01','334233101','2019-08-23 18:48:49',NULL),(24,'NicNic','Mwer',260974327259,0.000000,150,NULL,'090909090','2020-02-02 11:06:23','OYCcF7reLCs='),(25,'alala','kakaka',260974327245,0.000000,150,NULL,'777777777','2020-02-05 15:11:01','0C9jjg1IGrM=');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(20) NOT NULL,
  `menu_code` bigint(20) NOT NULL,
  `menu_position` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `destinations_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `plans` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations`
--

LOCK TABLES `destinations` WRITE;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` VALUES (5,'USA and Canada','USA and Canada Destinations with Full package for Age group one and Duration Group one',20011010210111,2001101021011,0,67.5165,1),(6,'Other','Other Destinations with Full package for Age group one and Duration Group one',20011010210112,2001101021011,0,39.66,1),(7,'USA and Canada','USA and Canada Destinations with a medical package, age group one and duration group one',20011010210121,2001101021012,0,59.225,1),(8,'Other','Other Destinations with a medical package, age group one and duration group one',20011010210122,2001101021012,0,36.26,1),(9,'USA and Canada','USA and Canada Destinations full package duration group 2 and age group 1',20011010210211,2001101021021,0,92.391,1),(10,'Other','Other Destinations full package duration group 2 and age group 1',20011010210212,2001101021021,0,41.92,1),(11,'USA and Canada','USA and Canada Destinations, medical only, duration group 2 and age group 1',20011010210221,2001101021022,0,79.3615,1),(12,'Other','Other Destinations, medical only, duration group 2 and age group 1',20011010210222,2001101021022,0,38.52,1),(13,'USA and Canada','USA and Canada Destinations full package age group three duration group one',20011010210311,2001101021031,0,101.867,1),(14,'Other','Others full package age group three duration group one',20011010210312,2001101021031,0,60.26,1),(15,'USA and Canada','USA and Canada Destinations, Medical Only, Age Group three, Duration Group one',20011010210321,2001101021032,0,86.4685,1),(16,'Other','Other Destinations, Medical Only, Age Group three, Duration Group one',20011010210322,2001101021032,0,52.15,1),(17,'USA and Canada','USA and Canada Destinations,full package duration group 2 and age group 1',20011010211111,2001101021111,0,71.07,1),(18,'Other','Other Destinations,full package duration group 2 and age group 1',20011010211112,2001101021111,0,40.79,1),(19,'USA and Canada','USA and Canada Destinations, Medical only duration group 2 and age group 1',20011010211121,2001101021112,0,84.0995,1),(20,'Other','Other Destinations, Medical only duration group 2 and age group 1',20011010211122,2001101021112,0,39.66,1),(21,'USA and Canada','USA and Canada Destinations, Full package duration group 2 age group 2',20011010211211,2001101021121,0,107.79,1),(22,'Other','Other Destinations, Full package duration group 2 age group 2',20011010211212,2001101021121,0,62.57,1),(23,'USA and Canada','USA and Canada Destinations, Medical only duration group 2 age group 2',20011010211221,2001101021122,0,84.0995,1),(24,'Other','Other Destinations, Medical only duration group 2 age group 2',20011010211222,2001101021122,0,39.66,1),(25,'USA and Canada','USA and Canada Destinations, full package duration group two age group 3',20011010211311,2001101021131,0,107.79,1),(26,'Other','Other Destinations, full package duration group two age group 3',20011010211312,2001101021131,0,62.57,1),(27,'USA and Canada','USA and Canada Destination Medical only duration group two age group 3',20011010211321,2001101021132,0,91.2065,1),(28,'Other','Other Destination Medical only duration group two age group 3',20011010211322,2001101021132,0,54.47,1),(37,'USA and Canada','Canada and USA, Full Package duration group three and age group one',20011010212111,2001101021211,0,79.3615,1),(38,'Other','Other Destinations, Full Package duration group three and age group one',20011010212112,2001101021211,0,44.19,1),(39,'USA and Canada','USA and Canada Destinations, Medical only Package duration group three and age one',20011010212121,2001101021212,0,68.701,1),(40,'Other','Other Destinations, Medical only Package duration group three and age one',20011010212122,2001101021212,0,39.66,1),(41,'USA and Canada','USA and Canada, Full Package duration group 3 age group one',20011010212211,2001101021221,0,111.343,1),(43,'USA and Canada','USA and Canada, Medical only Package duration group 3 age group one..',20011010212221,2001101021222,0,94.76,1),(44,'Other','Other Destinations, Medical only Package duration group 3 age group one..',20011010212222,2001101021222,0,43.05,1),(45,'USA and Canada','USA and Canada Destinations, Full package duration group 3 age group 3',20011010212311,2001101021231,0,122.004,1),(46,'Other','Other Destinations, Full package duration group 3 age group 3',20011010212312,2001101021231,0,70.69,1),(47,'USA and Canada','USA and Canada Medical Only duration group 3 age group 3',20011010212321,2001101021232,0,103.052,1),(48,'Other','Other Destinations, Medical Only duration group 3 age group 3',20011010212322,2001101021232,0,61.42,1),(49,'USA and Canada','USA and Canada Full Package duration group four age group 1',20011010213111,2001101021311,0,93.5755,1),(50,'Other','Other Destinations, Full Package duration group four age group 1',20011010213112,2001101021311,0,53.25,1),(51,'USA and Canada','USA and Canada Destinations, Medical Only duration group four age group 1',20011010213121,2001101021312,0,80.546,1),(52,'Other','',20011010213122,2001101021312,0,46.45,1),(53,'USA and Canada','USA and Canada full package duration group four age group two',20011010213211,2001101021321,0,130.295,1),(54,'Other','Other destinations full package duration group four age group two',20011010213212,2001101021321,0,57.78,1),(55,'USA and Canada','USA and Canada Medical only duration group four age group two',20011010213221,2001101021322,0,107.79,1),(56,'Other','Other Destinations Medical only duration group four age group two',20011010213222,2001101021322,0,50.99,1),(57,'USA and Canada','USA and Canada Full package duration group four age group 3',20011010213311,2001101021331,0,144.509,1),(58,'Other','Other Destinations Full package duration group four age group 3',20011010213312,2001101021331,0,81.11,1),(59,'USA and Canada','USA and Canada Medical Only duration group four age group 3',20011010213321,2001101021332,0,120.819,1),(61,'USA and Canada','USA and Canada Full Package age group one duration group 5',20011010214111,2001101021411,0,108.974,1),(62,'Other','Other Destinations Full Package age group one duration group 5',20011010214112,2001101021411,0,58.92,1),(63,'USA and Canada','USA and Canada Medical Only age group one duration group 5',20011010214121,2001101021412,0,93.5755,1),(64,'Other','Other Medical Only age group one duration group 5',20011010214122,2001101021412,0,52.12,1),(65,'USA and Canada','USA and Canada Full package duration group 5 age group two',20011010214211,2001101021421,0,156.354,1),(66,'Other','Other Destinations Full package duration group 5 age group two',20011010214212,2001101021421,0,64.58,1),(67,'USA and Canada','USA and Canada Medical Only package duration group 5 age group two',20011010214221,2001101021422,0,129.111,1),(68,'Other','Other Destinations Medical Only package duration group 5 age group two',20011010214222,2001101021422,0,55.52,1),(71,'USA and Canada','USA and Canada Full package duration group five age group three',20011010214311,2001101021431,0,174.122,1),(72,'Other','Other Destinations Full package duration group five age group three',20011010214312,2001101021431,0,93.86,1),(73,'USA and Canada','USA and Canada Medical Only package duration group 5 age group 3',20011010214321,2001101021432,0,145.694,1),(74,'Other','Other Destinations Medical Only package duration group 5 age group 3',20011010214322,2001101021432,0,81.11,1),(75,'USA and Canada','USA and Canada Full Package duraton group six age one',20011010215111,2001101021511,0,153.985,1),(76,'Other','Other Destinations Full Package duraton group six age one',20011010215112,2001101021511,0,67.98,1),(77,'USA and Canada','USA and Canada Medical Only duration group 6 age group one',20011010215121,2001101021512,0,129.111,1),(78,'Other','Other Destinations Medical Only duration group 6 age group one',20011010215122,2001101021512,0,56.65,1),(79,'USA and Canada','USA and Canada Full package duration group 6 age group 2',20011010215211,2001101021521,0,225.055,1),(80,'Other','Other Destinations Full package duration group 6 age group 2',20011010215212,2001101021521,0,74.78,1),(81,'USA and Canada','USA and Canada Medical Only duration 6 age group 2',20011010215221,2001101021522,0,185.967,1),(82,'Other','Other Destinations Medical Only duration 6 age group 2',20011010215222,2001101021522,0,63.45,1),(83,'USA and Canada','USA and Canada Full Package duration group 6 age group 3',20011010215311,2001101021531,0,249.93,1),(84,'Other','Other Destinations Full Package duration group 6 age group 3',20011010215312,2001101021531,0,107.77,1),(85,'USA and Canada','USA and Canada Medical only duration group 6 age group 3',20011010215321,2001101021532,0,207.288,1),(86,'Other','Other Destinations Medical only duration group 6 age group 3',20011010215322,2001101021532,0,91.55,1),(87,'USA and Canada','USA and Canada Medical only duration group 7 age group one',20011010216121,2001101021612,0,181.229,1),(88,'Other','Other Destinations Medical only duration group 7 age group one',20011010216122,2001101021612,0,69.11,1),(89,'USA and Canada','USA and Canada Full Package duration group 7 age group one',20011010216111,2001101021611,0,217.948,1),(90,'Other','Other Destinations Full Package duration group 7 age group one',20011010216112,2001101021611,0,82.71,1),(93,'USA and Canada','USA and Canada, Full package duration group 7 age group 2',20011010216211,2001101021621,0,319.815,1),(94,'Other','Other Destinations, Full package duration group 7 age group 2',20011010216212,2001101021621,0,90.64,1),(95,'USA and Canada','USA and Canada, Medical Only duration group 7 age group 2',20011010216221,2001101021622,0,264.144,1),(96,'Other','Other Destinations Medical Only duration group 7 age group 2',20011010216222,2001101021622,0,75.91,1),(97,'USA and Canada','USA and Canada Full package duration group 7 age group 3',20011010216311,2001101021631,0,358.904,1),(98,'Other','Other Destinations Full package duration group 7 age group 3',20011010216312,2001101021631,0,130.94,1),(99,'USA and Canada','USA and Canada Medical Only package duration group 7 age group 3',20011010216321,2001101021632,0,294.941,1),(100,'Other','Other Destination, Medical Only package duration group 7 age group 3',20011010216322,2001101021632,0,113.56,1),(101,'USA and Canada','USA and Canada full package duration group 8 age group 1',20011010217111,2001101021711,0,260.59,1),(102,'Other','Other Destinations, full package duration group 8 age group 1',20011010217112,2001101021711,0,96.31,1),(103,'USA and Canada','USA and Canada, Medical only package duration group 8 age group 1',20011010217121,2001101021712,0,215.579,1),(104,'Other','Other Destinations, Medical only package duration group 8 age group 1',20011010217122,2001101021712,0,79.31,1),(105,'USA and Canada','USA and Canada Full Package duration group 8 age group 2',20011010217211,2001101021721,0,382.594,1),(106,'Other','Other Destinations, Full Package duration group 8 age group 2',20011010217212,2001101021721,0,107.64,1),(107,'USA and Canada','USA and Canada Medical Only Package duration group 8 age group 2',20011010217221,2001101021722,0,88.37,1),(108,'Other','Other Destinations, Medical Only Package duration group 8 age group 2',20011010217222,2001101021722,0,315.077,1),(109,'USA and Canada','USA and Canada Full package duration group 8 age group 3',20011010217311,2001101021731,0,429.974,1),(110,'Other','Other Destinations Full package duration group 8 age group 3',20011010217312,2001101021731,0,152.96,1),(111,'USA and Canada','USA and Canada Medical Only package duration group 8 age group 3',20011010217321,2001101021732,0,352.981,1),(112,'Other','Other Destinations Medical Only package duration group 8 age group 3',20011010217322,2001101021732,0,132.1,1),(113,'USA and Canada','USA and Canada Full Package duration group 9 age group 1',20011010218111,2001101021811,0,362.457,1),(114,'Other','Other Destinations Full Package duration group 9 age group 1',20011010218112,2001101021811,0,158.62,1),(115,'USA and Canada','USA and Canada Medical Only duration group 9 age group 1',20011010218121,2001101021812,0,298.494,1),(116,'Other','Other Destinations Medical Only duration group 9 age group 1',20011010218122,2001101021812,0,128.03,1),(117,'USA and Canada','USA and Canada Full package duration group 9 age group 2',20011010218211,2001101021821,0,537.763,1),(118,'Other','Other Destinations Full package duration group 9 age group 2',20011010218212,2001101021821,0,166.55,1),(119,'USA and Canada','USA and Canada Medical only duration group 9 age group 2',20011010218221,2001101021822,0,440.634,1),(120,'Other','Other Destinations Medical only duration group 9 age group 2',20011010218222,2001101021822,0,139.36,1),(121,'Full package','USA and Canada full package duration group one age group 3',20011010218311,2001101021831,0,604.095,1),(122,'Other','Other Destinations full package duration group one age group 3',20011010218312,2001101021831,0,253.77,1),(123,'USA and Canada','USA and Canada Medical Only duration group one age group 3',20011010218321,2001101021832,0,495.121,1),(124,'Other','Other Destinations Medical Only duration group one age group 3',20011010218322,2001101021832,0,210.89,1),(125,'USA and Canada','USA and Canada full package age group one duration group 10',20011010219111,2001101021911,0,478.538,1),(126,'Other','Other Destinations, full package age group one duration group 10',20011010219112,2001101021911,0,189.21,1),(127,'USA and Canada','USA and Canada Medical Only package age group one duration group ten',20011010219121,2001101021912,0,392.07,1),(128,'Other','Other Destinations Medical Only package age group one duration group ten',20011010219122,2001101021912,0,155.22,1),(129,'USA and Canada','USA and Canada full package age group 2 duration group 10',20011010219211,2001101021921,0,713.069,1),(130,'Other','Other Destinations full package age group 2 duration group 10',20011010219212,2001101021921,0,198.28,1),(131,'USA and Canada','USA and Canada Medical Only age group 2 duration group 10',20011010219221,2001101021922,0,582.774,1),(132,'Other','Other Destinations Medical Only age group 2 duration group 10',20011010219222,2001101021922,0,169.95,1),(133,'USA and Canada','USA and Canada Full Package duration group 10 age group 3',20011010219311,2001101021931,0,803.091,1),(134,'Other','Other Destinations Full Package duration group 10 age group 3',20011010219312,2001101021931,0,310.55,1),(135,'USA and Canada','USA and Canada Medical Only Package duration group 10 age group 3',20011010219321,2001101021932,0,656.213,1),(136,'Other','Other Medical Only Package duration group 10 age group 3',20011010219322,2001101021932,0,250.29,1),(137,'USA and Canada','USA and Canada full package age group one duration group 11',20011010220111,2001101022011,0,690.564,1),(138,'USA and Canada','Other Destinations full package age group one duration group 11',20011010220112,2001101022011,0,235.66,1),(141,'USA and Canada','USA and Canada Medical only age group one duration group 11',20011010220121,2001101022012,0,565.007,1),(142,'Other','Other Destinations Medical only age group one duration group 11',20011010220122,2001101022012,0,190.34,1),(143,'USA and Canada','USA and Canada full package age group 2 duration group 11',20011010220211,2001101022021,0,849.287,1),(144,'Other','Other Destinations full package age group 2 duration group 11',20011010220212,2001101022021,0,249.26,1),(145,'USA and Canada','USA and Canada Medical Only age group 2 duration group 11',20011010220221,2001101022022,0,670.427,1),(146,'Other','Other Destinations Medical Only age group 2 duration group 11',20011010220222,2001101022022,0,207.34,1),(147,'USA and Canada','USA and Canada Full package duration group 11 age group 3',20011010220311,2001101022031,0,953.523,1),(148,'Other','Other Destinations Full package duration group 11 age group 3',20011010220312,2001101022031,0,376.6,1),(149,'USA and Canada','USA and Canada Medical only duration group 11 age group 3',20011010220321,2001101022032,0,778.217,1),(150,'Other','Other Medical only duration group 11 age group 3',20011010220322,2001101022032,0,318.66,1),(151,'Other','Other, full package duration group 3 age group one',20011010212212,2001101021221,0,48.72,1),(152,'Other','USA and Canada Medical Only duration group four age group 3',20011010213322,2001101021332,0,71.84,1);
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinations_records`
--

DROP TABLE IF EXISTS `destinations_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destinations_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(50) NOT NULL,
  `passport_number` bigint(50) NOT NULL,
  `age` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `plan` varchar(22) NOT NULL,
  `company` varchar(225) NOT NULL,
  `sector` varchar(225) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_code` bigint(50) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations_records`
--

LOCK TABLES `destinations_records` WRITE;
/*!40000 ALTER TABLE `destinations_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinations_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration_group`
--

DROP TABLE IF EXISTS `duration_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duration_group` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `duration_group_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration_group`
--

LOCK TABLES `duration_group` WRITE;
/*!40000 ALTER TABLE `duration_group` DISABLE KEYS */;
INSERT INTO `duration_group` VALUES (1,'group one','1 to 14 days',20011010210,200110102,1,1),(2,'group two','15 to 21 days',20011010211,200110102,2,1),(3,'group three','22 to 28 days',20011010212,200110102,3,1),(4,'group four','29 to 35 days',20011010213,200110102,4,1),(5,'group five','36 to 47 days',20011010214,200110102,5,1),(6,'group six\r\n','48 to 60 days',20011010215,200110102,6,1),(7,'group seven','61 to 75 days',20011010216,200110102,7,1),(8,'group eight','76 to 90 days',20011010217,200110102,8,1),(9,'group nine','91 to 120 days',20011010218,200110102,9,1),(10,'group ten','121 to 147 days',20011010219,200110102,10,1),(11,'group eleven','148 to 180',20011010220,200110102,11,1);
/*!40000 ALTER TABLE `duration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rate`
--

DROP TABLE IF EXISTS `exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(225) NOT NULL,
  `exchange_rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rate`
--

LOCK TABLES `exchange_rate` WRITE;
/*!40000 ALTER TABLE `exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixed_term_deposits`
--

DROP TABLE IF EXISTS `fixed_term_deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixed_term_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `investment_house_id` int(11) NOT NULL,
  `amount` double(20,6) NOT NULL,
  `interest_rate` double(20,2) NOT NULL,
  `tenor` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `maturity_date` date NOT NULL,
  `interest_amount` double(20,6) NOT NULL,
  `value_at_maturity` double(20,6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `investment_house_id` (`investment_house_id`),
  CONSTRAINT `fixed_term_deposits_ibfk_1` FOREIGN KEY (`investment_house_id`) REFERENCES `investment_houses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixed_term_deposits`
--

LOCK TABLES `fixed_term_deposits` WRITE;
/*!40000 ALTER TABLE `fixed_term_deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixed_term_deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_daily_expenses`
--

DROP TABLE IF EXISTS `fund_daily_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_daily_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `amount` double(20,4) NOT NULL,
  `payment_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_daily_expenses`
--

LOCK TABLES `fund_daily_expenses` WRITE;
/*!40000 ALTER TABLE `fund_daily_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_daily_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_end_of_day`
--

DROP TABLE IF EXISTS `fund_end_of_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_end_of_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_withdraws` double(21,6) NOT NULL DEFAULT '0.000000',
  `net_asset_value` double(21,6) NOT NULL,
  `total_collections` double(21,6) NOT NULL,
  `unit_price` double(21,6) NOT NULL,
  `total_units` double(21,6) NOT NULL,
  `total_liabilites` double(21,6) NOT NULL,
  `total_expenses` double(21,6) NOT NULL,
  `total_instruments_value` double(21,6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_end_of_day`
--

LOCK TABLES `fund_end_of_day` WRITE;
/*!40000 ALTER TABLE `fund_end_of_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_end_of_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_liabilities`
--

DROP TABLE IF EXISTS `fund_liabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_liabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `rate` double(20,4) NOT NULL,
  `amount` double(20,4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_liabilities`
--

LOCK TABLES `fund_liabilities` WRITE;
/*!40000 ALTER TABLE `fund_liabilities` DISABLE KEYS */;
INSERT INTO `fund_liabilities` VALUES (2,'Management Fees',4.0000,0.0000,'2018-07-01 08:10:10','2018-07-01 06:10:10'),(3,'Custodial Fees',1.0000,0.0000,'2018-07-01 08:10:10','2018-07-01 06:10:10'),(4,'Trust Fees',1.0000,0.0000,'2018-07-01 08:10:10','2018-07-01 06:10:10'),(5,'SEC CIS Levy',1.2500,0.0000,'2018-07-01 08:10:10','2018-07-01 06:10:10');
/*!40000 ALTER TABLE `fund_liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_monthly_expences`
--

DROP TABLE IF EXISTS `fund_monthly_expences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_monthly_expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `amount` double(20,4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_monthly_expences`
--

LOCK TABLES `fund_monthly_expences` WRITE;
/*!40000 ALTER TABLE `fund_monthly_expences` DISABLE KEYS */;
INSERT INTO `fund_monthly_expences` VALUES (2,'Monthly Expenses',182.0000,'2018-07-01 08:10:10','2018-07-01 06:10:10');
/*!40000 ALTER TABLE `fund_monthly_expences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_account_types`
--

DROP TABLE IF EXISTS `gl_account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gl_account_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `status` int(3) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_account_types`
--

LOCK TABLES `gl_account_types` WRITE;
/*!40000 ALTER TABLE `gl_account_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `gl_account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_accounts`
--

DROP TABLE IF EXISTS `gl_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gl_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acount_name` varchar(200) DEFAULT NULL,
  `gl_account_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` double(20,6) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gl_accounts_1_idx` (`gl_account_type_id`),
  CONSTRAINT `fk_gl_accounts_1` FOREIGN KEY (`gl_account_type_id`) REFERENCES `gl_account_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_accounts`
--

LOCK TABLES `gl_accounts` WRITE;
/*!40000 ALTER TABLE `gl_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gl_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_transaction_types`
--

DROP TABLE IF EXISTS `gl_transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gl_transaction_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `maximum_amount` double(20,6) DEFAULT NULL,
  `minimum_amount` double(20,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_transaction_types`
--

LOCK TABLES `gl_transaction_types` WRITE;
/*!40000 ALTER TABLE `gl_transaction_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `gl_transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_transactions`
--

DROP TABLE IF EXISTS `gl_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gl_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_account_id` int(11) DEFAULT NULL,
  `gl_transaction_type_id` int(11) DEFAULT NULL,
  `amount` double(20,6) DEFAULT NULL,
  `opening_balance` double(20,6) DEFAULT NULL,
  `closing_balance` double(20,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gl_transactions_1_idx` (`gl_transaction_type_id`),
  CONSTRAINT `fk_gl_transactions_1` FOREIGN KEY (`gl_transaction_type_id`) REFERENCES `gl_transaction_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_transactions`
--

LOCK TABLES `gl_transactions` WRITE;
/*!40000 ALTER TABLE `gl_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `gl_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_owner_records`
--

DROP TABLE IF EXISTS `house_owner_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_owner_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(50) NOT NULL,
  `house_value` double NOT NULL,
  `occupant` varchar(225) NOT NULL,
  `roofing` varchar(225) NOT NULL,
  `company` varchar(225) NOT NULL,
  `sector` varchar(225) NOT NULL,
  `product_code` bigint(50) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `amount` double NOT NULL,
  `date_created` date DEFAULT NULL,
  `policy_number` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_owner_records`
--

LOCK TABLES `house_owner_records` WRITE;
/*!40000 ALTER TABLE `house_owner_records` DISABLE KEYS */;
INSERT INTO `house_owner_records` VALUES (1,260963183932,500000,'house owner','standard','Professional Insurance Zambia Plc','Insurance',20011010311,'House owners policy',643.75,NULL,NULL),(2,260963183932,900000,'house owner','standard','Professional Insurance Zambia Plc','Insurance',20011010311,'House owners policy',1158.75,NULL,NULL),(3,260963183932,500000,'Tenant','Standard roofing','Professional Insurance Zambia','Insurance',20011010321,'House Owners Policy',453.2,NULL,NULL),(4,260963183932,350000,'Owner','Standard Roofing','Professional Insurance Zambia','Insurance',20011010311,'House Owners Policy',450.625,NULL,NULL),(5,260974035672,200000,'Owner','Standard Roofing','PICZ','Insurance',20011010311,'House Owners Policy',257.5,'2019-08-26',NULL),(6,260974035672,900000,'Owner','Standard Roofing','PICZ','Insurance',20011010311,'House Owners Policy',1158.75,'2019-08-27',NULL),(7,260974035672,200000,'Owner','Standard Roofing','PICZ','Insurance',20011010311,'House Owners Policy',257.5,'2019-09-05',NULL);
/*!40000 ALTER TABLE `house_owner_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_owners`
--

DROP TABLE IF EXISTS `house_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_owners` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `house_owners_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_owners`
--

LOCK TABLES `house_owners` WRITE;
/*!40000 ALTER TABLE `house_owners` DISABLE KEYS */;
INSERT INTO `house_owners` VALUES (5,'Owner','occupants of the house to be insured',2001101031,200110103,1,1),(6,'Tenant','occupants of the house to be insured',2001101032,200110103,2,1);
/*!40000 ALTER TABLE `house_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insuranceMessages`
--

DROP TABLE IF EXISTS `insuranceMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insuranceMessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(225) DEFAULT NULL,
  `message` text,
  `product_code` bigint(20) DEFAULT NULL,
  `sector` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceMessages`
--

LOCK TABLES `insuranceMessages` WRITE;
/*!40000 ALTER TABLE `insuranceMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `insuranceMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_houses`
--

DROP TABLE IF EXISTS `investment_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investment_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_number` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_houses`
--

LOCK TABLES `investment_houses` WRITE;
/*!40000 ALTER TABLE `investment_houses` DISABLE KEYS */;
INSERT INTO `investment_houses` VALUES (1,'Stanbic Bank','alick nkata road','111111','2018-08-01 08:10:10','2018-08-01 06:10:10');
/*!40000 ALTER TABLE `investment_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MSISDN` bigint(12) DEFAULT NULL,
  `invitedBy` bigint(12) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dateRegistered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invitations_1_idx` (`invitedBy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,260762434969,260762434965,117,'2019-06-22 15:06:32',NULL);
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lipila_loan`
--

DROP TABLE IF EXISTS `lipila_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lipila_loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenor` varchar(225) DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `service_code` int(50) DEFAULT NULL,
  `tenor_length` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_code` (`service_code`),
  CONSTRAINT `lipila_loan_ibfk_1` FOREIGN KEY (`service_code`) REFERENCES `services` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lipila_loan`
--

LOCK TABLES `lipila_loan` WRITE;
/*!40000 ALTER TABLE `lipila_loan` DISABLE KEYS */;
INSERT INTO `lipila_loan` VALUES (1,'90 days',0.3,20030201,90),(2,'180 days',0.4,20030201,180),(3,'1 year',0.5,20030201,365);
/*!40000 ALTER TABLE `lipila_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lipila_loan_customers`
--

DROP TABLE IF EXISTS `lipila_loan_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lipila_loan_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(20) DEFAULT NULL,
  `loan_amount` double DEFAULT NULL,
  `tenor` varchar(225) DEFAULT NULL,
  `interest_rate` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `company` varchar(225) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lipila_loan_customers`
--

LOCK TABLES `lipila_loan_customers` WRITE;
/*!40000 ALTER TABLE `lipila_loan_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `lipila_loan_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lipila_transactions`
--

DROP TABLE IF EXISTS `lipila_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lipila_transactions` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(50) NOT NULL,
  `sector` varchar(225) NOT NULL,
  `company` varchar(225) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_code` bigint(50) NOT NULL,
  `amount` double NOT NULL,
  `date_created` date DEFAULT NULL,
  `externalTransactionsID` varchar(100) DEFAULT '0',
  `statusCode` int(3) DEFAULT '105',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lipila_transactions`
--

LOCK TABLES `lipila_transactions` WRITE;
/*!40000 ALTER TABLE `lipila_transactions` DISABLE KEYS */;
INSERT INTO `lipila_transactions` VALUES (1,260963183932,'Insurance','ZISC','Motor Thrid Party',20011010111,157,NULL,NULL,NULL),(2,260963183932,'Insurance','Innovate Insurance','Motor Thrid Party',20011010121,188,NULL,NULL,NULL),(3,260963183932,'Insurance','Professional Insurance Zambia Plc','House owners policy',20011010311,386.25,NULL,NULL,NULL),(4,260963183932,'Insurance','Professional Insurance Zambia Plc','Overseas Travel Insurance',20011010212221,68.701,NULL,NULL,NULL),(5,260963183932,'Insurance','Professional Insurance Zambia Plc','Overseas Travel Insurance',20011010214222,695.6656,NULL,NULL,NULL),(6,260963183932,'Insurance','Professional Insurance Zambia Plc','Motor Thrid Party',20011010113,343,NULL,NULL,NULL),(7,260963183932,'Insurance','Professional Insurance Zambia Plc','Motor Thrid Party',20011010123,417,NULL,NULL,NULL),(8,260963183932,'Insurance','Professional Insurance Zambia Plc','House owners policy',20011010311,1158.75,NULL,NULL,NULL),(9,260963183932,'Insurance','Professional Insurance Zambia Plc','Overseas Travel Insurance',20011010214221,129.111,NULL,NULL,NULL),(10,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010112,259,NULL,NULL,NULL),(11,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010111,157,NULL,NULL,NULL),(12,260963183932,'Insurance','Professional Insurance Zambia','House Owners Policy',200110103,453.2,NULL,NULL,NULL),(13,260963183932,'Insurance','Professional Insurance Zambia','House Owners Policy',200110103,450.625,NULL,NULL,NULL),(14,260963183932,'Insurance','Professional Insurance Zambia','Travel policy',20011010214211,156.354,NULL,NULL,NULL),(15,260963183932,'Insurance','Professional Insurance Zambia','Travel policy',20011010210111,67.5165,NULL,NULL,NULL),(16,260963183932,'Insurance','Professional Insurance Zambia','Travel policy',20011010214111,93.5755,NULL,NULL,NULL),(17,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010121,188,'2019-07-20',NULL,NULL),(18,260963183932,'Insurance','Hollard','Motor Third party',20011310112,259,'2019-07-22',NULL,NULL),(19,260963183932,'Insurance','ZISC','Motor Third party',20011410121,188,'2019-07-22',NULL,NULL),(20,260963183932,'Insurance','Professional Insurance Zambia','Travel policy',20011010215112,67.98,'2019-07-21','0',105),(21,260963183932,'Insurance','NICO','Motor Third party',20011210123,417,'2019-07-23','0',105),(22,260963183932,'Insurance','NICO','Motor Third party',20011210131,253,'2019-07-23','0',105),(23,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010113,343,'2019-07-23','0',105),(24,260963183932,'Insurance','Innovative','motor Third Party',20011110112,259,'2019-07-23','0',105),(25,260963183932,'Insurance','Professional Insurance Zambia','Travel policy',20011010210111,67.5165,'2019-07-23','0',105),(26,260963183932,'Insurance','Innovative','motor Third Party',20011110121,188,'2019-07-25','0',105),(27,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010124,518,'2019-07-25','0',105),(28,260963183932,'Insurance','Professional Insurance Zambia','Motor Third Party',20011010133,565,'2019-07-25','0',105),(29,260963183932,'Insurance','NICO','Motor Third party',20011210112,259,'2019-07-25','0',105),(30,260963183932,'Insurance','ZISC','Motor Third party',20011410132,427,'2019-07-25','0',105),(31,260963183932,'Insurance','Professional Insurance Zambia plc','Muende Bwino',2001101041,5,'2019-07-29','0',105),(32,260963183932,'Insurance','NICO','Motor Third party',20011210112,259,'2019-07-29','0',105),(33,260963183932,'Insurance','Professional Insurance Zambia plc','Motor Third Party',20011010111,157,'2019-08-03','0',105),(34,260963183932,'Savings','Hobbiton','Invest',200201011,20,'2019-08-03','0',105),(35,260963183932,'Savings','Hobbiton','Fixed Term Deposit',200201014,10,'2019-08-03','0',105),(36,260963183932,'Savings','Hobbiton','Education Plan',200201012,12,'2019-08-03','0',105),(37,260963183932,'Savings','Hobbiton','Invest',200201011,90,'2019-08-03','0',105),(38,260963183932,'Insurance','Professional Insurance Zambia plc','Motor Third Party',20011010111,157,'2019-08-08','0',105),(39,260963183932,'Insurance','Innovative','Motor Third Party',20011110111,157,'2019-08-08','0',105),(40,260963183932,'Insurance','Professional Insurance Zambia plc','Motor Third Party',20011010111,157,'2019-08-09','20190809043039',105),(41,260963183932,'Insurance','Professional Insurance Zambia plc','Motor Third Party',20011010112,259,'2019-08-13','20190813173652',105),(42,260963183932,'Loans','BetterWay','borrow',200302011,117,'2019-08-23','20190823112605',105),(43,260974035672,'Insurance','PICZ','Motor Third Party',20011010121,188,'2019-08-23','20190823185252',105),(44,260974035672,'Insurance','PICZ','Overseas Travel Insurance',20011010210111,67.5165,'2019-08-24','20190824160300',105),(45,260974035672,'Insurance','PICZ','House Owners Policy',200110103,257.5,'2019-08-26','20190826114752',105),(46,260974035672,'Insurance','PICZ','Motor Third Party',20011010124,518,'2019-08-26','20190826220030',105),(47,260974035672,'Insurance','PICZ','Motor Third Party',20011010121,188,'2019-08-27','20190827150026',105),(48,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-08-27','20190827185344',105),(49,260974035672,'Insurance','PICZ','House Owners Policy',200110103,1158.75,'2019-08-27','20190827191957',105),(50,260974035672,'Insurance','PICZ','Overseas Travel Insurance',20011010210122,454.3378,'2019-08-27','20190827192123',105),(51,260974035672,'Insurance','PICZ','Motor Third Party',20011010112,259,'2019-08-27','20190827192912',105),(52,260974035672,'Insurance','PICZ','Motor Third Party',20011010113,343,'2019-08-28','20190828040741',105),(53,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-08-29','20190829045654',105),(54,260963183932,'Insurance','PICZ','Motor Third Party',20011010111,157,'2019-08-29','20190829090748',105),(55,260963183932,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-08-29','20190829092840',105),(56,260963183932,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-08-29','20190829111455',105),(57,260963183932,'Loans','BetterWay','borrow',200302011,117,'2019-08-31','20190831114426',105),(58,260974035672,'Loans','BetterWay','',1,90,'2019-09-02','20190902161009',105),(59,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-02','20190902210931',105),(60,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-02','20190902211506',105),(61,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-02','20190902211631',105),(62,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-02','20190902212203',105),(63,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-02','20190902230806',105),(64,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-04','20190904142436',105),(65,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-04','20190904142802',105),(66,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-04','20190904143029',105),(67,260974035672,'Insurance','PICZ','Motor Third Party',20011010111,157,'2019-09-05','20190905105235',105),(68,260974035672,'Insurance','PICZ','Muende Bwino',2001101041,5,'2019-09-05','20190905105351',105),(69,260974035672,'Insurance','PICZ','Overseas Travel Insurance',20011010210211,1157.65923,'2019-09-05','20190905110144',105),(70,260974035672,'Insurance','PICZ','House Owners Policy',200110103,257.5,'2019-09-05','20190905113359',105);
/*!40000 ALTER TABLE `lipila_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_gurantee_requests`
--

DROP TABLE IF EXISTS `loan_gurantee_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_gurantee_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_loan_id` int(11) DEFAULT NULL,
  `guarantor_msisdn` bigint(12) DEFAULT NULL,
  `requestor_msisdn` bigint(12) DEFAULT NULL,
  `status_code` int(5) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=902001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_gurantee_requests`
--

LOCK TABLES `loan_gurantee_requests` WRITE;
/*!40000 ALTER TABLE `loan_gurantee_requests` DISABLE KEYS */;
INSERT INTO `loan_gurantee_requests` VALUES (2,100011,260950082713,260950637780,501,'2019-05-27 17:05:57',NULL),(902000,1000000,260950637780,260950628887,502,'2019-05-28 16:08:22','');
/*!40000 ALTER TABLE `loan_gurantee_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_menu`
--

DROP TABLE IF EXISTS `main_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_menu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(11) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_position` (`menu_position`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_menu`
--

LOCK TABLES `main_menu` WRITE;
/*!40000 ALTER TABLE `main_menu` DISABLE KEYS */;
INSERT INTO `main_menu` VALUES (1,'Insurance','Contains list of insurance companies and their services',2001,1,1),(2,'Savings','List of companies that offer savings as a service on the lipila platform',2002,2,1),(3,'Loans','Contains list of companies offering loans on the lipila platform',2003,3,1),(4,'Pay Bills','List of companies that offer savings as a service on the lipila platform',1000,4,1),(6,'School Fees','lists down schools that allow payment of school fees via the lipila platform',1001,6,1),(7,'Health','lists down health institutions that allow payment of fees using the lipila platform',2005,7,1),(8,'Betting','lists down betting companies that allow payments to be made using the lipila platform',2004,5,1);
/*!40000 ALTER TABLE `main_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuIdentitfier`
--

DROP TABLE IF EXISTS `menuIdentitfier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuIdentitfier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `msisdn` bigint(20) DEFAULT NULL,
  `menu` varchar(225) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuIdentitfier`
--

LOCK TABLES `menuIdentitfier` WRITE;
/*!40000 ALTER TABLE `menuIdentitfier` DISABLE KEYS */;
INSERT INTO `menuIdentitfier` VALUES (1,23873,260950637789,NULL,999),(2,80992,260950637789,NULL,999),(3,89420,260950637789,NULL,999),(4,83792,260950637789,NULL,999),(5,67315,260950637789,NULL,999),(6,98895,260950637789,NULL,999),(7,81227,260950637789,NULL,999);
/*!40000 ALTER TABLE `menuIdentitfier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motor_policy`
--

DROP TABLE IF EXISTS `motor_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor_policy` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motor_policy`
--

LOCK TABLES `motor_policy` WRITE;
/*!40000 ALTER TABLE `motor_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `motor_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtp_records`
--

DROP TABLE IF EXISTS `mtp_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtp_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(50) NOT NULL,
  `vehicle_reg` varchar(225) NOT NULL,
  `quarters` varchar(225) NOT NULL,
  `vehicle_type` varchar(225) NOT NULL,
  `company` varchar(225) NOT NULL,
  `sector` varchar(225) NOT NULL,
  `product_code` bigint(50) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `amount` double NOT NULL,
  `date_created` date DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `policy_number` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtp_records`
--

LOCK TABLES `mtp_records` WRITE;
/*!40000 ALTER TABLE `mtp_records` DISABLE KEYS */;
INSERT INTO `mtp_records` VALUES (1,260963183932,'AAA0000','three quarters','Commercial','Professional Insurance Zambia Plc','Insurance',20011010123,'Motor Thrid Party',417,NULL,NULL,NULL,NULL),(2,260963183932,'','','','Professional Insurance Zambia Plc','Insurance',20011010214221,'Overseas Travel Insurance',129.111,NULL,NULL,NULL,NULL),(3,260963183932,'AAA0000','two quarters','Private','Professional Insurance Zambia','Insurance',20011010112,'Motor Third Party',259,NULL,NULL,NULL,NULL),(4,260963183932,'AAA0000','','','Professional Insurance Zambia','Insurance',20011010111,'Motor Third Party',157,NULL,NULL,NULL,NULL),(5,260963183932,'','','','Professional Insurance Zambia','Insurance',20011010214211,'Travel policy',156.354,NULL,NULL,NULL,NULL),(6,260963183932,'AAA0000','','','Professional Insurance Zambia','Insurance',20011010121,'Motor Third Party',188,'2019-07-20',NULL,NULL,NULL),(7,260963183932,'AAA0000','','','Hollard','Insurance',20011310112,'Motor Third party',259,'2019-07-22',NULL,NULL,NULL),(8,260963183932,'aaa9090','','','ZISC','Insurance',20011410121,'Motor Third party',188,'2019-07-22',NULL,NULL,NULL),(9,260963183932,'AAA0000','','','NICO','Insurance',20011210123,'Motor Third party',417,'2019-07-23',NULL,'2020-04-01',NULL),(10,260963183932,'AAA0000','','','NICO','Insurance',20011210131,'Motor Third party',253,'2019-07-23',NULL,'2019-10-01',NULL),(11,260963183932,'AAA0000','Three Quarters','Private','Professional Insurance Zambia','Insurance',20011010113,'Motor Third Party',343,'2019-07-23',NULL,'2020-04-01',NULL),(12,260963183932,'AAA0000','Two Quarters','private','Innovative','Insurance',20011110112,'motor Third Party',259,'2019-07-23','2019-07-01','2020-01-01',NULL),(13,260963183932,'AAA0000','One Quarter','Commercial','Innovative','Insurance',20011110121,'motor Third Party',188,'2019-07-25','2019-07-01','2019-10-01',NULL),(14,260963183932,'AAA0000','Four Quarters','Commercial','Professional Insurance Zambia','Insurance',20011010124,'Motor Third Party',518,'2019-07-25','2019-07-01','2020-07-01',NULL),(15,260963183932,'AAA0000','Three Quarters','Bus/Taxi','Professional Insurance Zambia','Insurance',20011010133,'Motor Third Party',565,'2019-07-25','2019-07-01','2020-04-01',NULL),(16,260963183932,'AAA0000','Two Quarters','Private','NICO','Insurance',20011210112,'Motor Third party',259,'2019-07-25','2019-07-01','2020-01-01',NULL),(17,260963183932,'AAA0000','Two Quarters','Bus/taxi','ZISC','Insurance',20011410132,'Motor Third party',427,'2019-07-25','2019-07-01','2020-01-01',NULL),(18,260963183932,'AAA0000','Two Quarters','Private','NICO','Insurance',20011210112,'Motor Third party',259,'2019-07-29','2019-07-01','2020-01-01',NULL),(19,260963183932,'AAA0000','One Quarter','Private','Professional Insurance Zambia plc','Insurance',20011010111,'Motor Third Party',157,'2019-08-03','2019-07-01','2019-10-01',NULL),(20,260963183932,'AAA0000','One Quarter','Private','Professional Insurance Zambia plc','Insurance',20011010111,'Motor Third Party',157,'2019-08-08','2019-07-01','2019-10-01',NULL),(21,260963183932,'AAA0000','One Quarter','private','Innovative','Insurance',20011110111,'Motor Third Party',157,'2019-08-08','2019-07-01','2019-10-01',NULL),(22,260963183932,'AAA0000','One Quarter','Private','Professional Insurance Zambia plc','Insurance',20011010111,'Motor Third Party',157,'2019-08-09','2019-07-01','2019-10-01',NULL),(23,260963183932,'AAA0000','Two Quarters','Private','Professional Insurance Zambia plc','Insurance',20011010112,'Motor Third Party',259,'2019-08-13','2019-07-01','2020-01-01',NULL),(24,260974035672,'AAA0000','One Quarter','Commercial','PICZ','Insurance',20011010121,'Motor Third Party',188,'2019-08-23','2019-07-01','2019-10-01',NULL),(25,260974035672,'AAA0000','Four Quarters','Commercial','PICZ','Insurance',20011010124,'Motor Third Party',518,'2019-08-26','2019-07-01','2020-07-01',NULL),(26,260974035672,'AAA0000','One Quarter','Commercial','PICZ','Insurance',20011010121,'Motor Third Party',188,'2019-08-27','2019-07-01','2019-10-01',NULL),(27,260974035672,'AAA0000','Two Quarters','Private','PICZ','Insurance',20011010112,'Motor Third Party',259,'2019-08-27','2019-07-01','2020-01-01',NULL),(28,260974035672,'AAA0000','Three Quarters','Private','PICZ','Insurance',20011010113,'Motor Third Party',343,'2019-08-28','2019-07-01','2020-04-01',NULL),(29,260963183932,'AAA0000','One Quarter','Private','PICZ','Insurance',20011010111,'Motor Third Party',157,'2019-08-29','2019-07-01','2019-10-01',NULL),(30,260974035672,'AAA0000','One Quarter','Private','PICZ','Insurance',20011010111,'Motor Third Party',157,'2019-09-05','2019-10-01','2020-01-01',NULL);
/*!40000 ALTER TABLE `mtp_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muende_bwino`
--

DROP TABLE IF EXISTS `muende_bwino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muende_bwino` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `price` double NOT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `muende_bwino_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muende_bwino`
--

LOCK TABLES `muende_bwino` WRITE;
/*!40000 ALTER TABLE `muende_bwino` DISABLE KEYS */;
INSERT INTO `muende_bwino` VALUES (1,'30 days','30 day cover picz muunde bwino',2001101041,200110104,1,1,5,30),(2,'90 days','30 day cover picz muunde bwino',2001101042,200110104,2,1,15,90),(3,'180 days','30 day cover picz muunde bwino',2001101043,200110104,3,1,30,180),(4,'365 days','365 day cover picz muunde bwino',2001101044,200110104,4,1,60,365);
/*!40000 ALTER TABLE `muende_bwino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muende_bwino_records`
--

DROP TABLE IF EXISTS `muende_bwino_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muende_bwino_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(225) DEFAULT NULL,
  `product_code` bigint(50) DEFAULT NULL,
  `company` varchar(225) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `msisdn` bigint(50) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `policy_number` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muende_bwino_records`
--

LOCK TABLES `muende_bwino_records` WRITE;
/*!40000 ALTER TABLE `muende_bwino_records` DISABLE KEYS */;
INSERT INTO `muende_bwino_records` VALUES (1,'Muende Bwino',2001101041,'Professional Insurance Zambia plc',5,'2019-07-29','2019-08-28',260963183932,'30 days','2019-07-29',NULL),(2,'Muende Bwino',2001101041,'PICZ',5,'2019-08-27','2019-09-26',260974035672,'30 days','2019-08-27',NULL),(3,'Muende Bwino',2001101041,'PICZ',5,'2019-08-29','2019-09-28',260974035672,'30 days','2019-08-29',NULL),(4,'Muende Bwino',2001101041,'PICZ',5,'2019-08-29','2019-09-28',260963183932,'30 days','2019-08-29',NULL),(5,'Muende Bwino',2001101041,'PICZ',5,'2019-08-29','2019-09-28',260963183932,'30 days','2019-08-29',NULL),(6,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(7,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(8,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(9,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(10,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(11,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(12,'Muende Bwino',2001101041,'PICZ',5,'2019-09-02','2019-10-02',260974035672,'30 days','2019-09-02',NULL),(13,'Muende Bwino',2001101041,'PICZ',5,'2019-09-04','2019-10-04',260974035672,'30 days','2019-09-04',NULL),(14,'Muende Bwino',2001101041,'PICZ',5,'2019-09-04','2019-10-04',260974035672,'30 days','2019-09-04',NULL),(15,'Muende Bwino',2001101041,'PICZ',5,'2019-09-04','2019-10-04',260974035672,'30 days','2019-09-04',NULL),(16,'Muende Bwino',2001101041,'PICZ',5,'2019-09-05','2019-10-05',260974035672,'30 days','2019-09-05',NULL);
/*!40000 ALTER TABLE `muende_bwino_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nok`
--

DROP TABLE IF EXISTS `nok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principal_msisdn` bigint(12) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `status_code` int(6) DEFAULT NULL,
  `account_type_id` int(11) NOT NULL,
  `nok_msisdn` bigint(12) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nok`
--

LOCK TABLES `nok` WRITE;
/*!40000 ALTER TABLE `nok` DISABLE KEYS */;
/*!40000 ALTER TABLE `nok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('reubenchisebu@gmail.com','$2y$10$oaXP51Laxe8vRBfU.JtuKuw5hhZrWn5LUZDz65ZWD4/h6ef/4ZdoC','2018-08-17 00:44:05');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patumba_products`
--

DROP TABLE IF EXISTS `patumba_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patumba_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `patumba_products_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patumba_products`
--

LOCK TABLES `patumba_products` WRITE;
/*!40000 ALTER TABLE `patumba_products` DISABLE KEYS */;
INSERT INTO `patumba_products` VALUES (1,'Invest','patumba invest option',2002010111,200201011,1,1),(2,'Withdraw','patumba invrst withdraw option',2002010112,200201011,2,1),(3,'Maturities','patumba maturities under patumba invest',2002010113,200201011,1,1),(4,'Balance','check balance option under  patumba invrest',2002010114,200201011,4,1),(5,'Statement','get investment statement',2002010115,200201011,5,1),(6,'Get help','get help on invest option',2002010116,200201011,6,1),(7,'Invite a friend','Invest a friend to invest in patumba',2002010117,200201011,7,1),(8,'Save-education plan','Education plan save option',2002010121,200201012,1,1),(9,'Withdraw-education plan','Education plan withdraw option',2002010122,200201012,2,1),(10,'Balance-education plan','Education Plan Balance',2002010123,200201012,3,1),(11,'Maturities -education plan','maturities education plan',2002010124,200201012,4,1),(12,'Statement - education plan','get education plan statement',2002010125,200201012,5,1),(13,'Beneficiaries- education plan','education plan beneficicaries',2002010126,200201012,6,1),(19,'Save-retirement plan','patumba retirement plan save option',2002010131,200201013,1,1),(20,'Withdraw-retirement plan','patumba retirement plan withdraw',2002010132,200201013,2,1),(21,'Balance-retirement plan','patumba retirement plan balance check',2002010133,200201013,3,1),(22,'Statement-retirement plan','patumba retirement plan statement request',2002010134,200201013,4,1),(23,'Next of kin-retirement plan','retirement plan next of kin',2002010135,200201013,5,1),(24,'Deposit-fixed term deposit','patumba fixed term deposit',2002010141,200201014,1,1),(25,'maturities-fixed term deposit','fixed term deposits maturies',2002010142,200201014,2,1),(26,'Recall Investment-fixed term deposit','recall deposit fixed term deposit',2002010143,200201014,4,1),(27,'Transactions','transactions recall investment',2002010144,200201014,4,1);
/*!40000 ALTER TABLE `patumba_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patumba_services`
--

DROP TABLE IF EXISTS `patumba_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patumba_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(100) NOT NULL,
  `serviceDescription` varchar(200) NOT NULL,
  `abbreviation` varchar(10) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abbreviation` (`abbreviation`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patumba_services`
--

LOCK TABLES `patumba_services` WRITE;
/*!40000 ALTER TABLE `patumba_services` DISABLE KEYS */;
INSERT INTO `patumba_services` VALUES (1,'Patumba Deposit','Depositing','PD','2019-01-02 00:00:00'),(2,'Patumba Withdraw','withdraw','PW','2019-01-02 00:00:00'),(3,'Education Plan Deposit','Depositing','ED','2019-01-02 00:00:00'),(4,'Education Plan Withdraw','withdraw','EW','2019-01-02 00:00:00'),(5,'Retirement Plan Deposit','Depositing','RD','2019-01-02 00:00:00'),(6,'Retirement Plan Withdraw','withdraw','RW','2019-01-02 00:00:00'),(7,'Fixed Term Deposit','Fixed Term Deposits','FD','2019-02-19 00:00:00'),(8,'Fixed Term Withdraw','Fixed Term Withdraw','FW','2019-02-19 00:00:00'),(9,'Fixed Term Recall','Fixed Term Recall','FR','2019-02-19 00:00:00');
/*!40000 ALTER TABLE `patumba_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` bigint(50) NOT NULL,
  `menu_position` int(50) DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `age_group` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Full Package','full package duration group one age group one',2001101021011,200110102101,0,1),(2,'Medical Only','Medical package duration group one age group one',2001101021012,200110102101,0,1),(3,'Full Package','full package duration group 2 age 1',2001101021021,200110102102,0,1),(4,'Medical Only','medical only duration group 2 age 1',2001101021022,200110102102,0,1),(7,'Full Package','full package age group three duration group one',2001101021031,200110102103,0,1),(8,'Medical Only','Medical Only age group three duration group one',2001101021032,200110102103,0,1),(9,'Full Package','full package duration group 2 and age group 1',2001101021111,200110102111,0,1),(10,'Medical Only','Medical only duration group 2 and age group 1',2001101021112,200110102111,0,1),(13,'Full Package','Full package duration group 2 age group 2',2001101021121,200110102112,0,1),(14,'Medical Only','Medical only duration group 2 age group 2',2001101021122,200110102112,0,1),(15,'Full Package','full package duration group two age group 3',2001101021131,200110102113,0,1),(16,'Medical Only','Medical only duration group two age group 3',2001101021132,200110102113,0,1),(17,'Full Package','Full Package duration group three and age group one',2001101021211,200110102121,0,1),(18,'Medical Only','Medical only Package duration group three and age group one',2001101021212,200110102121,0,1),(19,'Full Package','Full Package duration group 3 age group one',2001101021221,200110102122,0,1),(20,'Medical Only','Medical only Package duration group 3 age group one',2001101021222,200110102122,0,1),(21,'Full Package','Full package duration group 3 age group 3',2001101021231,200110102123,0,1),(22,'Medical Only','Medical Only duration group 3 age group 3',2001101021232,200110102123,0,1),(25,'Full Package','Full Package duration group four age group 1',2001101021311,200110102131,0,1),(26,'Medical Only','Medical Only duration group four age group 1',2001101021312,200110102131,0,1),(27,'Full Package','full package duration group four age group two',2001101021321,200110102132,0,1),(28,'Medical Only','Medical only duration group four age group two',2001101021322,200110102132,0,1),(29,'Full Package','Full package duration group four age group 3',2001101021331,200110102133,0,1),(30,'Medical Only','Medical Only duration group four age group 3',2001101021332,200110102133,0,1),(31,'Full Package','Full Package age group one duration group 5',2001101021411,200110102141,0,1),(32,'Medical Only','Medical Only age group one duration group 5',2001101021412,200110102141,0,1),(33,'Full Package','Full package duration group 5 age group two',2001101021421,200110102142,0,1),(34,'Medical Only','Medical Only package duration group 5 age group two',2001101021422,200110102142,0,1),(35,'Full Package','Full package duration group five age group three',2001101021431,200110102143,0,1),(36,'Medical Only','Medical Only package duration group 5 age gruop 3',2001101021432,200110102143,0,1),(37,'Full Package','Full Package duraton group six age one',2001101021511,200110102151,0,1),(38,'Medical Only','Medical Only duration group 5 age group one',2001101021512,200110102151,0,1),(39,'Full Package','Full package duration group 6 age group 2',2001101021521,200110102152,0,1),(40,'Medical Only','Medical Only duration 6 age group 2',2001101021522,200110102152,0,1),(41,'Full Package','Full Package duration group 6 age group 3',2001101021531,200110102153,0,1),(42,'Medical Only','',2001101021532,200110102153,0,1),(43,'Medical Only','Medical only duration group 7 age group one',2001101021612,200110102161,0,1),(44,'Full Package','Full Package duration group 7 aage group one',2001101021611,200110102161,0,1),(45,'Full Package','Full package duration group 7 age group 2',2001101021621,200110102162,0,1),(46,'Medical Only','Medical Only duration group 7 age group 2',2001101021622,200110102162,0,1),(47,'Full Package','Full package duration group 7 age group 3',2001101021631,200110102163,0,1),(48,'Medical Only','Medical Only package duration group 7 age group 3',2001101021632,200110102163,0,1),(49,'Full Package','full package duration group 8 age group 1',2001101021711,200110102171,0,1),(50,'Medical Only','Medical only package duration group 8 age group 1',2001101021712,200110102171,0,1),(53,'Full Package','Full Package duration group 8 age group 2',2001101021721,200110102172,0,1),(54,'Medical Only','Medical Only Package duration group 8 age group 2',2001101021722,200110102172,0,1),(55,'Full Package','Full package duration group 8 age group 3',2001101021731,200110102173,0,1),(56,'Medical Only','Medical Only package duration group 8 age group 3',2001101021732,200110102173,0,1),(57,'Full Package','Full Package duration group 9 age group 1',2001101021811,200110102181,0,1),(58,'Medical Only','Medical Only duration group 9 age group 1',2001101021812,200110102181,0,1),(59,'Full Package','Full package duration group 9 age group 2',2001101021821,200110102182,0,1),(60,'Medical Only','Medical only duration group 9 age group 2',2001101021822,200110102182,0,1),(61,'Full Package','full package duration group one age group 3',2001101021831,200110102183,0,1),(62,'Medical Only','Medical Only duration group one age group 3',2001101021832,200110102183,0,1),(63,'Full Package','full package age group one duration group 10',2001101021911,200110102191,0,1),(64,'Medical Only','Medical Only package age group one duration group 10',2001101021912,200110102191,0,1),(69,'Full Package','full package age group 2 duration group 10',2001101021921,200110102192,0,1),(70,'Medical Only','Medical Only age group 2 duration group 10',2001101021922,200110102192,0,1),(71,'Full Package','Full Package duration group 10 age group 3',2001101021931,200110102193,0,1),(72,'Medical Only','Medical Only Package duration group 10 age group 3',2001101021932,200110102193,0,1),(73,'Full Package','full package age group one duration group 11',2001101022011,200110102201,0,1),(74,'Medical Only','full package age group one duration group 10',2001101022012,200110102201,0,1),(75,'Full Package','full package age group 2 duration group 11',2001101022021,200110102202,0,1),(76,'Medical Only','Medical Only age group 2 duration group 11',2001101022022,200110102202,0,1),(77,'Full Package','Full package duration group 11 age group 3',2001101022031,200110102203,0,1),(78,'Medical Only','Medical only duration group 11 age group 3',2001101022032,200110102203,0,1);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_counter`
--

DROP TABLE IF EXISTS `policy_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy_counter` (
  `policy_id` int(11) NOT NULL,
  `company` varchar(225) DEFAULT NULL,
  `count` int(5) unsigned zerofill NOT NULL,
  `date_updated` date DEFAULT NULL,
  `company_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `company_code` (`company_code`),
  CONSTRAINT `policy_counter_ibfk_1` FOREIGN KEY (`company_code`) REFERENCES `companies` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_counter`
--

LOCK TABLES `policy_counter` WRITE;
/*!40000 ALTER TABLE `policy_counter` DISABLE KEYS */;
INSERT INTO `policy_counter` VALUES (1,'picz',00001,'2019-08-09',200110),(2,'INN',00001,'2019-08-09',200111),(3,'NIC',00002,'2019-08-09',200112),(4,'HOL',00001,'2019-08-09',200113),(5,'ZIS',00001,'2019-08-09',200114);
/*!40000 ALTER TABLE `policy_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_level_one`
--

DROP TABLE IF EXISTS `product_level_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_level_one` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` bigint(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `product_level_one_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `sub_products` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_level_one`
--

LOCK TABLES `product_level_one` WRITE;
/*!40000 ALTER TABLE `product_level_one` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_level_one` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `i_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `services` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Motor Third Party','PICZ Motor Third Party',200110101,20011010,1,1,1),(2,'Overseas Travel Insurance','Insurance Policy',200110102,20011010,3,1,3),(3,'House Owners Policy','Insurance Policy',200110103,20011010,4,1,4),(8,'Motor Third Party','Insurance Policy',200111101,20011110,1,1,1),(9,'Travel Policy','Insurance policy',200111102,20011110,2,0,2),(10,'House Owners Policy','Insurance Policy',200111103,20011110,3,0,3),(11,'Motor Third party','NICO mtp',200112101,20011210,1,1,1),(12,'Motor Third party','Hollard  mtp',200113101,20011310,1,1,1),(13,'Motor Third party','ZISC mtp',200114101,20011410,1,1,1),(14,'Motor Third party','Insurance Company 6 mtp',200115101,20011510,1,1,1),(15,'Muende Bwino','Professional Insurance Muende bwino',200110104,20011010,2,1,2),(16,'Invest','patumba invest plan',200201011,20020101,1,1,0),(17,'Education Plan','patumba education plan',200201012,20020101,2,1,0),(18,'Retirement Plan','patumba retirement plan',200201013,20020101,3,1,0),(19,'Fixed Term Deposit','patumba fixed term deposeit',200201014,20020101,1,1,0),(20,'Borrow','patumba borrow',200201015,20020101,5,0,0),(21,'Shares','patumba shares option',200201016,20020101,5,1,0),(23,'Report Claim','Report claim PICZ',200110111,20011011,1,1,0),(24,'Track Claim','Track claim PICZ',200110112,20011011,1,1,0),(25,'Borrow','Patumba borrow product',200301011,20030101,1,1,0),(26,'Repay Loan','Patumba repay loan',200301012,20030101,2,1,0),(27,'View Statement','Patumba repay loan',200301013,20030101,3,1,0),(28,'Check Balance','Patumba check loan Balance',200301014,20030101,4,1,0),(29,'Manage Account','Patumba check loan Balance',200301015,20030101,5,1,0),(30,'borrow','betterway borrow product code',200302011,20030201,1,1,0),(31,'repay loan','betterway repay product code',200302021,20030201,1,1,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarters`
--

DROP TABLE IF EXISTS `quarters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarters` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `quarters_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `vehicle_types` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarters`
--

LOCK TABLES `quarters` WRITE;
/*!40000 ALTER TABLE `quarters` DISABLE KEYS */;
INSERT INTO `quarters` VALUES (1,'One Quarter','1 quarter of the year(3 months) PICZ',20011010111,2001101011,1,1,157),(2,'Two Quarters','2 quarter of the year(6 months) PICZ',20011010112,2001101011,2,1,259),(3,'Three Quarters','3 quarter of the year(9 months) PICZ',20011010113,2001101011,3,1,343),(4,'Four Quarters','4 quarter of the year(12 months) PICZ',20011010114,2001101011,4,1,427),(5,'One Quarter','1 quarter for bus or taxi(3 months) PICZ',20011010131,2001101013,1,1,253),(6,'Two Quarters','2 Quarters for Bus/ Taxi (6 months) PICZ',20011010132,2001101013,2,1,427),(7,'Three Quarters','3 quarters for bus or taxi(9 months) PICZ',20011010133,2001101013,3,1,565),(8,'Four Quarters','4 Quarters for Bus/ Taxi (12 months) PICZ',20011010134,2001101013,4,1,704),(9,'One Quarter','1 quarter for MTP commercial vehicles (3 months) PICZ',20011010121,2001101012,1,1,188),(10,'Two Quarters','1 quarter for MTP commercial vehicles (3 months) PICZ',20011010122,2001101012,2,1,315),(11,'Three Quarters','3 quarters for MTP commercial vehicles (9 months) PICZ',20011010123,2001101012,3,1,417),(12,'Four Quarters','4 quarters for MTP commercial vehicles (12 months) PICZ',20011010124,2001101012,4,1,518),(13,'One Quarter','1 quarter of the year(3 months) innovate',20011110111,2001111011,1,1,157),(14,'Two Quarters','2 quarter of the year(6 months) innovate',20011110112,2001111011,2,1,259),(15,'Three Quarters','3 quarter of the year(9 months) innovate',20011110113,2001111011,3,1,343),(16,'Four Quarters','4 quarter of the year(12 months) innovate',20011110114,2001111011,4,1,427),(17,'One Quarter','1 quarter for bus or taxi(3 months) innovate',20011110131,2001111013,1,1,253),(18,'Two Quarters','2 Quarters for Bus/ Taxi (6 months) innovate',20011110132,2001111013,2,1,427),(19,'Three Quarters','3 quarters for bus or taxi(9 months) innovate',20011110133,2001111013,3,1,565),(20,'Four Quarters','4 Quarters for Bus/ Taxi (12 months) innovate',20011110134,2001111013,4,1,704),(21,'One Quarter','1 quarter for MTP commercial vehicles (3 months) innovate',20011110121,2001111012,1,1,188),(22,'Two Quarters','1 quarter for MTP commercial vehicles (3 months) innovate',20011110122,2001111012,2,1,315),(23,'Three Quarters','3 quarters for MTP commercial vehicles (9 months) innovate',20011110123,2001111012,3,1,417),(24,'Four Quarters','4 quarters for MTP commercial vehicles (12 months) innovate',20011110124,2001111012,4,1,518),(25,'One Quarter','1 quarter of the year(3 months) nico',20011210111,2001121011,1,1,157),(26,'Two Quarters','2 quarter of the year(6 months) nico',20011210112,2001121011,2,1,259),(27,'Three Quarters','3 quarter of the year(9 months) nico',20011210113,2001121011,3,1,343),(28,'Four Quarters','4 quarter of the year(12 months) nico',20011210114,2001121011,4,1,427),(29,'One Quarter','1 quarter for bus or taxi(3 months) nico',20011210131,2001121013,1,1,253),(30,'Two Quarters','2 Quarters for Bus/ Taxi (6 months) nico',20011210132,2001121013,2,1,427),(31,'Three Quarters','3 quarters for bus or taxi(9 months) nico',20011210133,2001121013,3,1,565),(32,'Four Quarters','4 Quarters for Bus/ Taxi (12 months) nico',20011210134,2001121013,4,1,704),(33,'One Quarter','1 quarter for MTP commercial vehicles (3 months) nico',20011210121,2001121012,1,1,188),(34,'Two Quarters','1 quarter for MTP commercial vehicles (3 months) nico',20011210122,2001121012,2,1,315),(35,'Three Quarters','3 quarters for MTP commercial vehicles (9 months) nico',20011210123,2001121012,3,1,417),(36,'Four Quarters','4 quarters for MTP commercial vehicles (12 months) nico',20011210124,2001121012,4,1,518),(49,'One Quarter','1 quarter of the year(3 months) hollard',20011310111,2001131011,1,1,157),(50,'Two Quarters','2 quarter of the year(6 months) hollard',20011310112,2001131011,2,1,259),(51,'Three Quarters','3 quarter of the year(9 months) hollard',20011310113,2001131011,3,1,343),(52,'Four Quarters','4 quarter of the year(12 months) hollard',20011310114,2001131011,4,1,427),(53,'One Quarter','1 quarter for bus or taxi(3 months) hollard',20011310131,2001131013,1,1,253),(54,'Two Quarters','2 Quarters for Bus/ Taxi (6 months) hollard',20011310132,2001131013,2,1,427),(55,'Three Quarters','3 quarters for bus or taxi(9 months) hollard',20011310133,2001131013,3,1,565),(56,'Four Quarters','4 Quarters for Bus/ Taxi (12 months) hollard',20011310134,2001131013,4,1,704),(57,'One Quarter','1 quarter for MTP commercial vehicles (3 months) hollard',20011310121,2001131012,1,1,188),(58,'Two Quarters','1 quarter for MTP commercial vehicles (3 months) hollard',20011310122,2001131012,2,1,315),(59,'Three Quarters','3 quarters for MTP commercial vehicles (9 months) hollard',20011310123,2001131012,3,1,417),(60,'Four Quarters','4 quarters for MTP commercial vehicles (12 months) hollard',20011310124,2001131012,4,1,518),(61,'One Quarter','1 quarter of the year(3 months) zisc',20011410111,2001141011,1,1,157),(62,'Two Quarters','2 quarter of the year(6 months) zisc',20011410112,2001141011,2,1,259),(63,'Three Quarters','3 quarter of the year(9 months) zisc',20011410113,2001141011,3,1,343),(64,'Four Quarters','4 quarter of the year(12 months) zisc',20011410114,2001141011,4,1,427),(65,'One Quarter','1 quarter for bus or taxi(3 months) zisc',20011410131,2001141013,1,1,253),(66,'Two Quarters','2 Quarters for Bus/ Taxi (6 months) zisc',20011410132,2001141013,2,1,427),(67,'Three Quarters','3 quarters for bus or taxi(9 months) zisc',20011410133,2001141013,3,1,565),(68,'Four Quarters','4 Quarters for Bus/ Taxi (12 months) zisc',20011410134,2001141013,4,1,704),(69,'One Quarter','1 quarter for MTP commercial vehicles (3 months) zisc',20011410121,2001141012,1,1,188),(70,'Two Quarters','1 quarter for MTP commercial vehicles (3 months) zisc',20011410122,2001141012,2,1,315),(71,'Three Quarters','3 quarters for MTP commercial vehicles (9 months) zisc',20011410123,2001141012,3,1,417),(72,'Four Quarters','4 quarters for MTP commercial vehicles (12 months) zisc',20011410124,2001141012,4,1,518);
/*!40000 ALTER TABLE `quarters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roofing`
--

DROP TABLE IF EXISTS `roofing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roofing` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `house_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `roofing_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `house_owners` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roofing`
--

LOCK TABLES `roofing` WRITE;
/*!40000 ALTER TABLE `roofing` DISABLE KEYS */;
INSERT INTO `roofing` VALUES (5,'Standard Roofing','Standard roofing for house owners to be insured',20011010311,2001101031,1,1,0.00125),(6,'Thatched Roofing','Thatched roofing for house owners',20011010312,2001101031,2,1,0.00125),(9,'Thatched Roofing','Thatched roofing option for tenant under house owners policy',20011010322,2001101032,2,1,0.00088),(10,'Standard roofing','Standard roofing option for tenant under house owners policy',20011010321,2001101032,1,1,0.00088);
/*!40000 ALTER TABLE `roofing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `companies` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Buy Policy','purchase insurance policy PICZ',20011010,200110,1,1),(2,'Claims','make and track insurance claims PICZ',20011011,200110,2,1),(3,'Activate voucher','option to activate insurance vouchers PICZ',20011012,200110,3,0),(4,'Buy policy','Purchase insurance policy Innovate',20011110,200111,1,1),(5,'Claims','make and track insurance claims Innovate',20011111,200111,2,0),(6,'Activate voucher','option to activate insurance voucher Innovate',20011112,200111,3,0),(7,'Buy Policy','Purchase or get quote from insurance company 3',20011210,200112,1,1),(8,'Buy Policy','Purchase or get quote from insurance company 4',20011310,200113,1,1),(9,'Buy Policy','Purchase or get quote from insurance company 5',20011410,200114,1,1),(10,'Buy Policy','Purchase or get quote from insurance company 6',20011510,200115,1,1),(11,'Patumba','patumba savings services',20020101,200201,1,1),(17,'Customer Care','PiCZ customer care details',20011013,200110,4,1),(18,'Customer Care','NICO customer care details',2001123,200112,4,1),(19,'Customer Care','Holland Insurance customer care details',2001133,200113,4,1),(20,'Customer Care','Innovative insurance customer care details',2001113,200111,4,1),(21,'Customer Care','ZISC Customer Care Details',2001143,200114,4,1),(22,'Patumba','patumba lending services',20030101,200301,1,1),(23,'Borrow','BetterWay borrow option',20030201,200302,1,1),(24,'Repay Loan','BetterWay repay loan option',20030202,200302,1,1),(25,'View Statement','BetterWay View Statement',20030203,200302,1,1),(26,'Check Balance','BetterWay Check Balance',20030204,200302,1,1),(27,'Loan Limit','BetterWay Check Balance',20030205,200302,1,1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharePrices`
--

DROP TABLE IF EXISTS `sharePrices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharePrices` (
  `id` int(11) NOT NULL,
  `sharePrice` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharePrices`
--

LOCK TABLES `sharePrices` WRITE;
/*!40000 ALTER TABLE `sharePrices` DISABLE KEYS */;
INSERT INTO `sharePrices` VALUES (1,3.40,'2018-04-29',1,'2017-04-29 10:40:47');
/*!40000 ALTER TABLE `sharePrices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statusCodes`
--

DROP TABLE IF EXISTS `statusCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statusCodes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statusCode` int(3) NOT NULL,
  `description` varchar(200) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statusCodes`
--

LOCK TABLES `statusCodes` WRITE;
/*!40000 ALTER TABLE `statusCodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `statusCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_menu_one`
--

DROP TABLE IF EXISTS `sub_menu_one`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_menu_one` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `menu_position` (`menu_position`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `sub_menu_one_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `main_menu` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_menu_one`
--

LOCK TABLES `sub_menu_one` WRITE;
/*!40000 ALTER TABLE `sub_menu_one` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_menu_one` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_menu_two`
--

DROP TABLE IF EXISTS `sub_menu_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_menu_two` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `menu_position` (`menu_position`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `sub_menu_two_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `sub_menu_one` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_menu_two`
--

LOCK TABLES `sub_menu_two` WRITE;
/*!40000 ALTER TABLE `sub_menu_two` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_menu_two` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_products`
--

DROP TABLE IF EXISTS `sub_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` bigint(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `service_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_2` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `sub_products_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_products`
--

LOCK TABLES `sub_products` WRITE;
/*!40000 ALTER TABLE `sub_products` DISABLE KEYS */;
INSERT INTO `sub_products` VALUES (1,'Invest','patumba invest option',2002010111,200201011,1,1,NULL),(2,'Withdraw','patumba invrst withdraw option',2002010112,200201011,2,1,NULL),(3,'Maturities','patumba maturities under patumba invest',2002010113,200201011,1,1,NULL),(4,'Balance','check balance option under  patumba invrest',2002010114,200201011,4,1,NULL),(5,'Statement','get investment statement',2002010115,200201011,5,1,NULL),(6,'Get help','get help on invest option',2002010116,200201011,6,1,NULL),(7,'Invite a friend','Invest a friend to invest in patumba',2002010117,200201011,7,1,NULL),(8,'Save-education plan','Education plan save option',2002010121,200201012,1,1,NULL),(9,'Withdraw-education plan','Education plan withdraw option',2002010122,200201012,2,1,NULL),(10,'Balance-education plan','Education Plan Balance',2002010123,200201012,3,1,NULL),(11,'Maturities -education plan','maturities education plan',2002010124,200201012,4,1,NULL),(12,'Statement - education plan','get education plan statement',2002010125,200201012,5,1,NULL),(13,'Beneficiaries- education plan','education plan beneficicaries',2002010126,200201012,6,1,NULL),(19,'Save-retirement plan','patumba retirement plan save option',2002010131,200201013,1,1,NULL),(20,'Withdraw-retirement plan','patumba retirement plan withdraw',2002010132,200201013,2,1,NULL),(21,'Balance-retirement plan','patumba retirement plan balance check',2002010133,200201013,3,1,NULL),(22,'Statement-retirement plan','patumba retirement plan statement request',2002010134,200201013,4,1,NULL),(23,'Next of kin-retirement plan','retirement plan next of kin',2002010135,200201013,5,1,NULL),(24,'Deposit-fixed term deposit','patumba fixed term deposit',2002010141,200201014,1,1,NULL),(25,'maturities-fixed term deposit','fixed term deposits maturies',2002010142,200201014,2,1,NULL),(26,'Recall Investment-fixed term deposit','recall deposit fixed term deposit',2002010143,200201014,3,1,NULL),(27,'Transactions','transactions recall investment',2002010144,200201014,4,1,NULL),(28,'Motor Thrid Party','PIZ Motor Thrid Party claim',2001101111,200110111,1,1,'ic1'),(29,'Enter Claim number-picz claims','enter claim number for policy been been tracked for PICZ',2001101121,200110112,1,1,'ic2'),(30,'Muende Bwino','PIZ Overseas Muende Bwino claim',2001101112,200110111,2,1,'ic1'),(31,'Overseas Travel Insurance','PIZ Overseas Travel Insurance policy claim',2001101113,200110111,3,1,'ic1'),(32,'House Owners','PIZ House owneres policy claim',2001101114,200110111,3,1,'ic1');
/*!40000 ALTER TABLE `sub_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_agents`
--

DROP TABLE IF EXISTS `super_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `super_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superAgent` int(11) NOT NULL,
  `agent` bigint(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_agents`
--

LOCK TABLES `super_agents` WRITE;
/*!40000 ALTER TABLE `super_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `super_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_table`
--

DROP TABLE IF EXISTS `tax_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deescription` varchar(225) NOT NULL,
  `rate` double NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_table`
--

LOCK TABLES `tax_table` WRITE;
/*!40000 ALTER TABLE `tax_table` DISABLE KEYS */;
INSERT INTO `tax_table` VALUES (1,'3% of table premium(3/100)',0.03,'insurance levy');
/*!40000 ALTER TABLE `tax_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `MSISDN` bigint(12) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `units` double(21,6) NOT NULL DEFAULT '0.000000',
  `unitPrice` double(21,6) NOT NULL DEFAULT '0.000000',
  `charge` double(21,6) NOT NULL DEFAULT '0.000000',
  `chargeUnits` double(21,6) NOT NULL DEFAULT '0.000000',
  `chargeAmount` double(21,6) NOT NULL DEFAULT '0.000000',
  `movedToWithraws` int(1) NOT NULL DEFAULT '0',
  `statusCode` int(3) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `account_source_id` int(11) DEFAULT NULL,
  `externalTransactionID` varchar(100) DEFAULT NULL,
  `tenor` int(5) NOT NULL,
  `balance` double(21,6) NOT NULL,
  `maturity_date` timestamp NOT NULL DEFAULT '2019-01-01 14:12:00',
  `dateCreated` datetime NOT NULL,
  `interest_rate` double(5,2) NOT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `maturity_unit_price` double(21,6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerID` (`MSISDN`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,260950637780,100.00,100.050000,0.050000,0.000000,0.000000,0.000000,0,105,30,NULL,'0',0,100.050000,'2020-01-04 15:36:34','2020-01-04 17:36:34',0.00,13,NULL),(2,260950637780,10.00,10.050000,0.050000,0.000000,0.000000,0.000000,0,105,30,NULL,'0',0,10.050000,'2020-01-06 19:21:27','2020-01-06 21:21:27',0.00,14,NULL),(3,260950637780,10.00,10.050000,0.050000,0.000000,0.000000,0.000000,0,105,30,NULL,'0',0,10.050000,'2020-01-06 19:25:43','2020-01-06 21:25:43',0.00,14,NULL),(4,260950637780,12.00,12.050000,0.050000,0.000000,0.000000,0.000000,0,105,18,NULL,'0',0,12.050000,'2020-01-07 08:14:02','2020-01-07 10:14:02',0.00,14,NULL),(5,260950637780,1234.00,1234.050000,0.050000,0.000000,0.000000,0.000000,0,105,18,NULL,'0',0,1234.000000,'2020-01-07 09:05:36','2020-01-07 11:05:36',0.00,14,NULL),(6,260950637780,300.00,300.050000,0.050000,0.000000,0.000000,0.000000,0,105,18,NULL,'0',0,300.000000,'2020-01-07 09:08:17','2020-01-07 11:08:17',0.00,14,NULL),(7,260950637780,1.00,1.050000,0.050000,0.000000,0.000000,0.000000,0,105,19,NULL,'0',0,1.000000,'2020-01-28 04:21:39','2020-01-28 06:21:39',0.00,14,NULL),(8,260950637780,2.00,2.050000,0.050000,0.000000,0.000000,0.000000,0,105,19,NULL,'0',0,2.000000,'2020-01-28 04:27:05','2020-01-28 06:27:05',0.00,14,NULL),(9,260950637780,100.00,100.050000,0.050000,0.000000,0.000000,0.000000,0,105,20,NULL,'0',0,100.000000,'2020-01-28 04:38:17','2020-01-28 06:38:17',0.00,14,NULL),(10,260950637780,21.00,21.050000,0.050000,0.000000,0.000000,0.000000,0,105,19,NULL,'0',0,21.000000,'2020-01-28 07:54:20','2020-01-28 09:54:20',0.00,14,NULL),(11,260950637780,100.00,105.000000,0.050000,0.000000,0.000000,0.000000,0,105,19,NULL,'0',0,100.000000,'2020-01-28 07:58:30','2020-01-28 09:58:30',0.00,14,NULL),(12,260950637780,23.00,24.150000,0.050000,0.000000,0.000000,0.000000,0,105,19,NULL,'0',0,23.000000,'2020-01-28 07:59:26','2020-01-28 09:59:26',0.00,14,NULL),(13,260950637780,1000.00,50.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,250.000000,'2020-02-05 14:10:13','2020-02-05 16:10:13',0.00,14,NULL),(14,260950637780,10000.00,10500.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,10700.000000,'2020-02-05 14:13:59','2020-02-05 16:13:59',0.00,14,NULL),(15,260950637780,20000.00,21000.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,21200.000000,'2020-02-05 14:40:42','2020-02-05 16:40:42',0.00,14,NULL),(16,260950637780,2.00,2.100000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,202.100000,'2020-02-05 15:16:08','2020-02-05 17:16:08',0.00,14,NULL),(17,260950637780,100.00,105.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,305.000000,'2020-02-06 12:46:45','2020-02-06 14:46:45',0.00,14,NULL),(18,260950637780,100.00,105.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,305.000000,'2020-02-06 12:53:21','2020-02-06 14:53:21',0.00,14,NULL),(19,260950637780,20.00,21.000000,0.050000,0.000000,0.000000,0.000000,0,100,21,NULL,'0',0,221.000000,'2020-02-06 12:58:37','2020-02-06 14:58:37',0.00,14,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_records`
--

DROP TABLE IF EXISTS `travel_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msisdn` bigint(50) NOT NULL,
  `passport_number` bigint(50) NOT NULL,
  `age` int(11) NOT NULL,
  `plan` varchar(22) NOT NULL,
  `company` varchar(225) NOT NULL,
  `sector` varchar(225) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_code` bigint(50) NOT NULL,
  `amount` double NOT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `destination` varchar(225) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `policy_number` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_records`
--

LOCK TABLES `travel_records` WRITE;
/*!40000 ALTER TABLE `travel_records` DISABLE KEYS */;
INSERT INTO `travel_records` VALUES (1,260963183932,123,23,'full package (11)','Professional Insurance Zambia','Insurance','Travel policy',20011010210111,67.5165,'4','USA & Canada a1.d1.p.1.des.1',NULL,NULL,NULL),(2,260963183932,213,35,'Full package(d5.a1)','Professional Insurance Zambia','Insurance','Travel policy',20011010214111,93.5755,'45','USA and Canada a1.d5.p1.des2','2019-07-20',NULL,NULL),(3,260963183932,32143232,35,'Full package D6.a1','Professional Insurance Zambia','Insurance','Travel policy',20011010215112,67.98,'','Other a1.d6.p1.des2','2019-07-21',NULL,NULL),(4,260963183932,1343,35,'full package (11)','Professional Insurance Zambia','Insurance','Travel policy',20011010210111,67.5165,'5','USA & Canada a1.d1.p.1.des.1','2019-07-23','2019-07-28',NULL),(5,260974035672,3214324,25,'full package (11)','PICZ','Insurance','Overseas Travel Insurance',20011010210111,67.5165,'5','USA & Canada a1.d1.p.1.des.1','2019-08-24','2019-08-29',NULL),(6,260974035672,1231231,23,'Medical Only','PICZ','Insurance','Overseas Travel Insurance',20011010210122,454.3378,'12','Other','2019-08-27','2019-09-08',NULL),(7,260974035672,787,54,'Full Package','PICZ','Insurance','Overseas Travel Insurance',20011010210211,1157.65923,'4','USA and Canada','2019-09-05','2019-09-09',NULL);
/*!40000 ALTER TABLE `travel_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treasury_bills`
--

DROP TABLE IF EXISTS `treasury_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treasury_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_no` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `bid_type` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `investor` varchar(200) NOT NULL,
  `investment_type` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `ref_no` varchar(200) NOT NULL,
  `tender_date` date NOT NULL,
  `payment` varchar(200) NOT NULL,
  `interest_amount` double(20,4) NOT NULL,
  `face_value` double(20,4) NOT NULL,
  `tenor` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `remaining_days` int(11) NOT NULL,
  `maturity_date` date NOT NULL,
  `interest_date` date NOT NULL,
  `price` double(20,4) NOT NULL,
  `withholding_tax` double(20,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treasury_bills`
--

LOCK TABLES `treasury_bills` WRITE;
/*!40000 ALTER TABLE `treasury_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `treasury_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitPrices`
--

DROP TABLE IF EXISTS `unitPrices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unitPrices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitPrice` double(21,6) NOT NULL,
  `date` date NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unitPrices`
--

LOCK TABLES `unitPrices` WRITE;
/*!40000 ALTER TABLE `unitPrices` DISABLE KEYS */;
INSERT INTO `unitPrices` VALUES (1,1.000000,'2018-07-24',1,'2018-09-21 17:01:39'),(2,0.804194,'2018-07-25',1,'2018-09-21 17:01:48'),(3,0.719802,'2018-07-26',1,'2018-09-21 17:01:52'),(4,0.991897,'2018-07-27',1,'2018-09-21 17:01:53'),(5,0.992330,'2018-07-28',1,'2018-09-21 17:01:54'),(6,0.992052,'2018-07-29',1,'2018-09-21 17:01:54'),(7,0.990959,'2018-07-30',1,'2018-09-21 17:01:55'),(8,0.991849,'2018-07-31',1,'2018-09-21 17:01:55'),(9,0.992324,'2018-08-01',1,'2018-09-21 17:01:56'),(10,0.992586,'2018-08-02',1,'2018-09-21 17:01:56'),(11,0.992931,'2018-08-03',1,'2018-09-21 17:01:57'),(12,0.995282,'2018-08-04',1,'2018-09-21 17:02:01'),(13,0.994991,'2018-08-05',1,'2018-09-21 17:02:01'),(14,0.994741,'2018-08-06',1,'2018-09-21 17:02:02'),(15,0.994564,'2018-08-07',1,'2018-09-21 17:02:02'),(16,0.995738,'2018-08-08',1,'2018-09-21 17:02:03'),(17,0.995742,'2018-08-09',1,'2018-09-21 17:02:03'),(18,0.995597,'2018-08-10',1,'2018-09-21 17:02:04'),(19,0.995630,'2018-08-11',1,'2018-09-21 17:02:04'),(20,0.995555,'2018-08-12',1,'2018-09-21 17:02:05'),(21,0.995342,'2018-08-13',1,'2018-09-21 17:02:05'),(22,0.995150,'2018-08-14',1,'2018-09-21 17:02:06'),(23,0.995296,'2018-08-15',1,'2018-09-21 17:02:06'),(24,0.995414,'2018-08-16',1,'2018-09-21 17:02:06'),(25,0.995401,'2018-08-17',1,'2018-09-21 17:02:07'),(26,0.995348,'2018-08-18',1,'2018-09-21 17:02:11'),(27,0.995237,'2018-08-19',1,'2018-09-21 17:02:12'),(28,0.995063,'2018-08-20',1,'2018-09-21 17:02:13'),(29,0.995609,'2018-08-21',1,'2018-09-21 17:02:13'),(30,0.995620,'2018-08-22',1,'2018-09-21 17:02:14'),(31,0.995642,'2018-08-23',1,'2018-09-21 17:02:14'),(32,0.995804,'2018-08-24',1,'2018-09-21 17:02:15'),(33,0.996464,'2018-08-25',1,'2018-09-21 17:02:15'),(34,0.996925,'2018-08-26',1,'2018-09-21 17:02:16'),(35,0.997043,'2018-08-27',1,'2018-09-21 17:02:16'),(36,0.997373,'2018-08-28',1,'2018-09-21 17:02:17'),(37,0.997514,'2018-08-29',1,'2018-09-21 17:02:17'),(38,0.997564,'2018-08-30',1,'2018-09-21 17:02:18'),(39,0.997760,'2018-08-31',1,'2018-09-21 17:02:28'),(40,0.997914,'2018-09-01',1,'2018-09-21 17:02:34'),(41,0.998044,'2018-09-02',1,'2018-09-21 17:02:34'),(42,0.998165,'2018-09-03',1,'2018-09-21 17:02:35'),(43,0.998609,'2018-09-04',1,'2018-09-21 17:02:35'),(44,0.999012,'2018-09-05',1,'2018-09-21 17:02:36'),(45,0.999408,'2018-09-06',1,'2018-09-21 17:02:36'),(46,0.999751,'2018-09-07',1,'2018-09-21 17:02:37'),(47,1.000053,'2018-09-08',1,'2018-09-21 17:02:37'),(48,1.000324,'2018-09-09',1,'2018-09-21 17:02:38'),(49,1.000572,'2018-09-10',1,'2018-09-21 17:02:38'),(50,1.000835,'2018-09-11',1,'2018-09-21 17:02:39'),(51,1.001074,'2018-09-12',1,'2018-09-21 17:02:39'),(52,1.001370,'2018-09-13',1,'2018-09-21 17:02:40'),(53,1.001651,'2018-09-14',1,'2018-09-21 17:02:40'),(54,1.001930,'2018-09-15',1,'2018-09-21 17:02:41'),(55,1.002150,'2018-09-16',1,'2018-09-21 17:02:41'),(56,1.002397,'2018-09-17',1,'2018-09-21 17:02:42'),(57,1.002581,'2018-09-18',1,'2018-09-21 17:02:49'),(58,1.002744,'2018-09-19',1,'2018-09-21 17:02:50'),(59,1.002982,'2018-09-20',1,'2018-09-21 17:02:51'),(60,1.003190,'2018-09-21',1,'2018-09-21 17:02:52'),(61,1.003478,'2018-09-22',1,'2018-09-21 22:05:02'),(62,1.003781,'2018-09-23',1,'2018-09-22 22:05:01'),(63,1.004078,'2018-09-24',1,'2018-09-23 22:05:01'),(64,1.004367,'2018-09-25',1,'2018-09-24 22:05:01'),(65,1.004667,'2018-09-26',1,'2018-09-25 22:05:02'),(66,1.004960,'2018-09-27',1,'2018-09-26 22:05:01'),(67,1.005244,'2018-09-28',1,'2018-09-27 22:05:01'),(68,1.005519,'2018-09-29',1,'2018-09-28 22:05:01'),(69,1.005787,'2018-09-30',1,'2018-09-29 22:05:01'),(70,1.006050,'2018-10-01',1,'2018-09-30 22:05:01'),(71,1.006304,'2018-10-02',1,'2018-10-01 22:05:01'),(72,1.006553,'2018-10-03',1,'2018-10-02 22:05:01'),(73,1.006791,'2018-10-04',1,'2018-10-03 22:05:01'),(74,1.007023,'2018-10-05',1,'2018-10-04 22:05:01'),(75,1.007250,'2018-10-06',1,'2018-10-05 22:05:01'),(76,1.007472,'2018-10-07',1,'2018-10-06 22:05:01'),(77,1.007690,'2018-10-08',1,'2018-10-07 22:05:01'),(78,1.007903,'2018-10-09',1,'2018-10-08 22:05:01'),(79,1.008111,'2018-10-10',1,'2018-10-09 22:05:01'),(80,1.008315,'2018-10-11',1,'2018-10-10 22:05:01'),(81,1.008513,'2018-10-12',1,'2018-10-11 22:05:01'),(82,1.008707,'2018-10-13',1,'2018-10-12 22:05:01'),(83,1.008891,'2018-10-14',1,'2018-10-13 22:05:01'),(84,1.009073,'2018-10-15',1,'2018-10-14 22:05:01'),(85,1.009248,'2018-10-16',1,'2018-10-15 22:05:01'),(86,1.009421,'2018-10-17',1,'2018-10-16 22:05:01'),(87,1.009589,'2018-10-18',1,'2018-10-17 22:05:01'),(88,1.009913,'2018-10-19',1,'2018-10-18 22:05:01'),(89,1.010229,'2018-10-20',1,'2018-10-19 22:05:01'),(90,1.010542,'2018-10-21',1,'2018-10-20 22:05:02'),(91,1.010851,'2018-10-22',1,'2018-10-21 22:05:01'),(92,1.011155,'2018-10-23',1,'2018-10-22 22:05:01'),(93,1.011456,'2018-10-24',1,'2018-10-23 22:05:01'),(94,1.011753,'2018-10-25',1,'2018-10-24 22:05:02'),(95,1.012034,'2018-10-26',1,'2018-10-25 22:05:01'),(96,1.012301,'2018-10-27',1,'2018-10-26 22:05:01'),(97,1.012559,'2018-10-28',1,'2018-10-27 22:05:01'),(98,1.012814,'2018-10-29',1,'2018-10-28 22:05:01'),(99,1.013062,'2018-10-30',1,'2018-10-29 22:05:02'),(100,1.013289,'2018-10-31',1,'2018-10-30 22:05:01'),(101,1.013510,'2018-11-01',1,'2018-10-31 22:05:01'),(102,1.013720,'2018-11-02',1,'2018-11-01 22:05:01'),(103,1.013919,'2018-11-03',1,'2018-11-02 22:05:01'),(104,1.014113,'2018-11-04',1,'2018-11-03 22:05:01'),(105,1.014304,'2018-11-05',1,'2018-11-04 22:05:01'),(106,1.014549,'2018-11-06',1,'2018-11-05 22:05:01'),(107,1.014780,'2018-11-07',1,'2018-11-06 22:05:01'),(108,1.015006,'2018-11-08',1,'2018-11-07 22:05:02'),(109,1.015230,'2018-11-09',1,'2018-11-08 22:05:01'),(110,1.015450,'2018-11-10',1,'2018-11-09 22:05:01'),(111,1.015665,'2018-11-11',1,'2018-11-10 22:05:01'),(112,1.015876,'2018-11-12',1,'2018-11-11 22:05:01'),(113,1.016082,'2018-11-13',1,'2018-11-12 22:05:01'),(114,1.016284,'2018-11-14',1,'2018-11-13 22:05:01'),(115,1.016481,'2018-11-15',1,'2018-11-14 22:05:01'),(116,1.016676,'2018-11-16',1,'2018-11-15 22:05:01'),(117,1.016868,'2018-11-17',1,'2018-11-16 22:05:01'),(118,1.017056,'2018-11-18',1,'2018-11-17 22:05:01'),(119,1.017242,'2018-11-19',1,'2018-11-18 22:05:01'),(120,1.017426,'2018-11-20',1,'2018-11-19 22:05:01'),(121,1.017606,'2018-11-21',1,'2018-11-20 22:05:01'),(122,1.017784,'2018-11-22',1,'2018-11-21 22:05:02'),(123,1.017958,'2018-11-23',1,'2018-11-22 22:05:01'),(124,1.018121,'2018-11-24',1,'2018-11-23 22:05:01'),(125,1.018282,'2018-11-25',1,'2018-11-24 22:05:01'),(126,1.018442,'2018-11-26',1,'2018-11-25 22:05:02'),(127,1.018599,'2018-11-27',1,'2018-11-26 22:05:01'),(128,1.018754,'2018-11-28',1,'2018-11-27 22:05:01'),(129,1.018909,'2018-11-29',1,'2018-11-28 22:05:01'),(130,1.019064,'2018-11-30',1,'2018-11-29 22:05:01'),(131,1.019218,'2018-12-01',1,'2018-11-30 22:05:01'),(132,1.019373,'2018-12-02',1,'2018-12-01 22:05:02'),(133,1.019526,'2018-12-03',1,'2018-12-02 22:05:01'),(134,1.019678,'2018-12-04',1,'2018-12-03 22:05:02'),(135,1.019821,'2018-12-05',1,'2018-12-04 22:05:01'),(136,1.019963,'2018-12-06',1,'2018-12-05 22:05:01'),(137,1.020100,'2018-12-07',1,'2018-12-06 22:05:02'),(138,1.020237,'2018-12-08',1,'2018-12-07 22:05:01'),(139,1.020361,'2018-12-09',1,'2018-12-08 22:05:02'),(140,1.020485,'2018-12-10',1,'2018-12-09 22:05:01'),(141,1.020601,'2018-12-11',1,'2018-12-10 22:05:01'),(142,1.020706,'2018-12-12',1,'2018-12-11 22:05:02'),(143,1.020793,'2018-12-13',1,'2018-12-12 22:05:01'),(144,1.020876,'2018-12-14',1,'2018-12-13 22:05:01'),(145,1.020958,'2018-12-15',1,'2018-12-14 22:05:02'),(146,1.021038,'2018-12-16',1,'2018-12-15 22:05:01'),(147,1.021119,'2018-12-17',1,'2018-12-16 22:05:01'),(148,1.021198,'2018-12-18',1,'2018-12-17 22:05:01'),(149,1.021272,'2018-12-19',1,'2018-12-18 22:05:01'),(150,1.021334,'2018-12-20',1,'2018-12-19 22:05:01'),(151,1.021394,'2018-12-21',1,'2018-12-20 22:05:02'),(152,1.021443,'2018-12-22',1,'2018-12-21 22:05:01'),(153,1.021493,'2018-12-23',1,'2018-12-22 22:05:02'),(154,1.021540,'2018-12-24',1,'2018-12-23 22:05:01'),(155,1.021580,'2018-12-25',1,'2018-12-24 22:05:01'),(156,1.021618,'2018-12-26',1,'2018-12-25 22:05:01'),(157,1.021656,'2018-12-27',1,'2018-12-26 22:05:01'),(158,1.021687,'2018-12-28',1,'2018-12-27 22:05:01'),(159,1.021717,'2018-12-29',1,'2018-12-28 22:05:01'),(160,1.021746,'2018-12-30',1,'2018-12-29 22:05:01'),(161,1.021772,'2018-12-31',1,'2018-12-30 22:05:01'),(162,1.021798,'2019-01-01',1,'2018-12-31 22:05:02'),(163,1.021822,'2019-01-02',1,'2019-01-01 22:05:01'),(164,1.021833,'2019-01-03',1,'2019-01-02 22:05:02'),(165,1.021842,'2019-01-04',1,'2019-01-03 22:05:01'),(166,1.030241,'2019-01-05',1,'2019-01-04 22:05:01'),(167,1.030533,'2019-01-06',1,'2019-01-05 22:05:01'),(168,1.030825,'2019-01-07',1,'2019-01-06 22:05:01'),(169,1.031114,'2019-01-08',1,'2019-01-07 22:05:01'),(170,1.031403,'2019-01-09',1,'2019-01-08 22:05:01'),(171,1.031690,'2019-01-10',1,'2019-01-09 22:05:02'),(172,1.031975,'2019-01-11',1,'2019-01-10 22:05:01'),(173,1.032258,'2019-01-12',1,'2019-01-11 22:05:01'),(174,1.032540,'2019-01-13',1,'2019-01-12 22:05:02'),(175,1.032819,'2019-01-14',1,'2019-01-13 22:05:01'),(176,1.033097,'2019-01-15',1,'2019-01-14 22:05:01'),(177,1.033371,'2019-01-16',1,'2019-01-15 22:05:01'),(178,1.033818,'2019-01-17',1,'2019-01-16 22:05:01'),(179,1.034145,'2019-01-18',1,'2019-01-17 22:05:01'),(180,1.034468,'2019-01-19',1,'2019-01-18 22:05:01'),(181,1.034788,'2019-01-20',1,'2019-01-19 22:05:02'),(182,1.035111,'2019-01-21',1,'2019-01-20 22:05:01'),(183,1.035429,'2019-01-22',1,'2019-01-21 22:05:02'),(184,1.035744,'2019-01-23',1,'2019-01-22 22:05:01'),(185,1.036059,'2019-01-24',1,'2019-01-23 22:05:01'),(186,1.036375,'2019-01-25',1,'2019-01-24 22:05:01'),(187,1.036686,'2019-01-26',1,'2019-01-25 22:05:01'),(188,1.036996,'2019-01-27',1,'2019-01-26 22:05:01'),(189,1.037306,'2019-01-28',1,'2019-01-27 22:05:02'),(190,1.037614,'2019-01-29',1,'2019-01-28 22:05:02'),(191,1.037919,'2019-01-30',1,'2019-01-29 22:05:02'),(192,1.038224,'2019-01-31',1,'2019-01-30 22:05:01'),(193,1.038564,'2019-02-01',1,'2019-01-31 22:05:01'),(194,1.038875,'2019-02-02',1,'2019-02-01 22:05:01'),(195,1.039187,'2019-02-03',1,'2019-02-02 22:05:02'),(196,1.039495,'2019-02-04',1,'2019-02-03 22:05:01'),(197,1.040095,'2019-02-05',1,'2019-02-04 22:05:01'),(198,1.040448,'2019-02-06',1,'2019-02-05 22:05:01'),(199,1.040770,'2019-02-07',1,'2019-02-06 22:05:01'),(200,1.041089,'2019-02-08',1,'2019-02-07 22:05:01'),(201,1.041402,'2019-02-09',1,'2019-02-08 22:05:01'),(202,1.041709,'2019-02-10',1,'2019-02-09 22:05:01'),(203,1.042015,'2019-02-11',1,'2019-02-10 22:05:02'),(204,1.042321,'2019-02-12',1,'2019-02-11 22:05:01'),(205,1.042625,'2019-02-13',1,'2019-02-12 22:05:02'),(206,1.042874,'2019-02-14',1,'2019-02-13 22:05:01'),(207,1.043037,'2019-02-15',1,'2019-02-14 22:05:02'),(208,1.043199,'2019-02-16',1,'2019-02-15 22:05:01'),(209,1.043360,'2019-02-17',1,'2019-02-16 22:05:01'),(210,1.043517,'2019-02-18',1,'2019-02-17 22:05:02'),(211,1.043658,'2019-02-19',1,'2019-02-18 22:05:02'),(212,1.043796,'2019-02-20',1,'2019-02-19 22:05:01'),(213,1.043931,'2019-02-21',1,'2019-02-20 22:05:01'),(214,1.044067,'2019-02-22',1,'2019-02-21 22:05:02'),(215,1.044204,'2019-02-23',1,'2019-02-22 22:05:01'),(216,1.044340,'2019-02-24',1,'2019-02-23 22:05:01'),(217,1.044476,'2019-02-25',1,'2019-02-24 22:05:01'),(218,1.044612,'2019-02-26',1,'2019-02-25 22:05:01'),(219,1.044748,'2019-02-27',1,'2019-02-26 22:05:02'),(220,1.047715,'2019-02-28',1,'2019-02-27 22:05:01'),(221,1.048009,'2019-03-01',1,'2019-02-28 22:05:01'),(222,1.048297,'2019-03-02',1,'2019-03-01 22:05:01'),(223,1.048579,'2019-03-03',1,'2019-03-02 22:05:01'),(224,1.048858,'2019-03-04',1,'2019-03-03 22:05:02'),(225,1.049138,'2019-03-05',1,'2019-03-05 22:05:02'),(226,1.049415,'2019-03-06',1,'2019-03-06 22:05:01'),(227,1.049695,'2019-03-07',1,'2019-03-07 22:05:02'),(228,1.049971,'2019-03-08',1,'2019-03-08 22:05:01'),(229,1.050243,'2019-03-09',1,'2019-03-09 22:05:01'),(230,1.050516,'2019-03-10',1,'2019-03-10 22:05:01'),(231,1.050785,'2019-03-11',1,'2019-03-11 22:05:01'),(232,1.051055,'2019-03-12',1,'2019-03-12 22:05:02'),(233,1.051322,'2019-03-13',1,'2019-03-13 22:05:01'),(234,1.051588,'2019-03-14',1,'2019-03-14 22:05:01'),(235,1.051851,'2019-03-15',1,'2019-03-15 22:05:01'),(236,1.052114,'2019-03-16',1,'2019-03-16 22:05:01'),(237,1.052380,'2019-03-17',1,'2019-03-17 22:05:02'),(238,1.052644,'2019-03-18',1,'2019-03-18 22:05:01'),(239,1.052908,'2019-03-19',1,'2019-03-19 22:05:01'),(240,1.053176,'2019-03-20',1,'2019-03-20 22:05:01'),(241,1.053442,'2019-03-21',1,'2019-03-21 22:05:01'),(242,1.053704,'2019-03-22',1,'2019-03-22 22:05:01'),(243,1.053960,'2019-03-23',1,'2019-03-23 22:05:02'),(244,1.054219,'2019-03-24',1,'2019-03-24 22:05:01'),(245,1.054476,'2019-03-25',1,'2019-03-25 22:05:01'),(246,1.054712,'2019-03-26',1,'2019-03-26 22:05:01'),(247,1.054948,'2019-03-27',1,'2019-03-27 22:05:02'),(248,1.055183,'2019-03-28',1,'2019-03-28 22:05:01'),(249,1.055414,'2019-03-29',1,'2019-03-29 22:05:02'),(250,1.055642,'2019-03-30',1,'2019-03-30 22:05:01'),(251,1.055869,'2019-03-31',1,'2019-03-31 22:05:01'),(252,1.056095,'2019-04-01',1,'2019-04-01 22:05:01'),(253,1.056329,'2019-04-02',1,'2019-04-02 22:05:01'),(254,1.056561,'2019-04-03',1,'2019-04-03 22:05:02'),(255,1.056786,'2019-04-04',1,'2019-04-04 22:05:01'),(256,1.057014,'2019-04-05',1,'2019-04-05 22:05:02'),(257,1.057238,'2019-04-06',1,'2019-04-06 22:05:01'),(258,1.057463,'2019-04-07',1,'2019-04-07 22:05:01'),(259,1.057683,'2019-04-08',1,'2019-04-08 22:05:01'),(260,1.057904,'2019-04-09',1,'2019-04-09 22:05:01'),(261,1.058121,'2019-04-10',1,'2019-04-10 22:05:01'),(262,1.058337,'2019-04-11',1,'2019-04-11 22:05:01'),(263,1.058552,'2019-04-12',1,'2019-04-12 22:05:01'),(264,1.058768,'2019-04-13',1,'2019-04-13 22:05:01'),(265,1.058988,'2019-04-14',1,'2019-04-14 22:05:02'),(266,1.059207,'2019-04-15',1,'2019-04-15 22:05:01'),(267,1.059425,'2019-04-16',1,'2019-04-16 22:05:01'),(268,1.059642,'2019-04-17',1,'2019-04-17 22:05:02'),(269,1.059860,'2019-04-18',1,'2019-04-18 22:05:01'),(270,1.060077,'2019-04-19',1,'2019-04-19 22:05:02'),(271,1.060291,'2019-04-20',1,'2019-04-20 22:05:01'),(272,1.060508,'2019-04-21',1,'2019-04-21 22:05:02'),(273,1.060722,'2019-04-22',1,'2019-04-22 22:05:02');
/*!40000 ALTER TABLE `unitPrices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Reuben Chisebu','reubenchisebu@gmail.com','$2y$10$jSocrBsjxDygbIX2etkaRe5BbyZIjBb9dYumIeJgfEyUOCZTW6JOq','6j0sC0ewXJXAIrYdXIGSBx8WnvDU2WQ1abQcKdGpnBTOHLCiaCh53arv2zm9','2018-08-17 00:40:16','2018-08-16 22:40:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_types`
--

DROP TABLE IF EXISTS `vehicle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_types` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `code` int(50) NOT NULL,
  `menu_code` int(50) NOT NULL,
  `menu_position` int(50) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `menu_code` (`menu_code`),
  CONSTRAINT `vehicle_types_ibfk_1` FOREIGN KEY (`menu_code`) REFERENCES `products` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_types`
--

LOCK TABLES `vehicle_types` WRITE;
/*!40000 ALTER TABLE `vehicle_types` DISABLE KEYS */;
INSERT INTO `vehicle_types` VALUES (1,'Private','Private Vehicle Type PICZ',2001101011,200110101,1,1),(2,'Commercial','commercial vehicle type PICZ',2001101012,200110101,2,1),(3,'Bus/Taxi','Bus or Taxi type of vehicle PICZ',2001101013,200110101,3,1),(4,'private','private type of vehicle Innovate',2001111011,200111101,1,1),(5,'Commercial','commercial vehicle type Innovate',2001111012,200111101,2,1),(6,'Bus/Taxi','Bus or Taxi type of vehicle Innovate',2001111013,200111101,3,1),(7,'Private','private vehicle mtp policy nico insurance',2001121011,200112101,1,1),(8,'Commercial','Commercial vehicle mtp policy nico insurance',2001121012,200112101,2,1),(9,'Bus/taxi','bus/taxi vehicle mtp policy nico insurance',2001121013,200112101,3,1),(10,'Private','private vehicle mtp policy hollard insurance',2001131011,200113101,1,1),(11,'Commercial','Commercial vehicle mtp policy hollard insurance',2001131012,200113101,2,1),(12,'Bus/taxi','bus/taxi vehicle mtp policy hollard insurance',2001131013,200113101,3,1),(13,'Private','private vehicle mtp policy ZISC insurance',2001141011,200114101,1,1),(14,'Commercial','Commercial vehicle mtp policy ZISC insurance',2001141012,200114101,2,1),(15,'Bus/taxi','bus/taxi vehicle mtp policy ZISC insurance',2001141013,200114101,3,1);
/*!40000 ALTER TABLE `vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voka_transactions`
--

DROP TABLE IF EXISTS `voka_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voka_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MSISDN` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `transactionID` int(11) NOT NULL,
  `vokaExternalTransactionID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voka_transactions`
--

LOCK TABLES `voka_transactions` WRITE;
/*!40000 ALTER TABLE `voka_transactions` DISABLE KEYS */;
INSERT INTO `voka_transactions` VALUES (1,260950637780,260950637780,0,0),(2,260950637780,260950637780,0,0),(3,260950637780,260950000001,0,0),(4,260950637780,260950637780,10,0),(5,260950637780,260950637780,11,0),(6,260950637780,260950637780,12,0);
/*!40000 ALTER TABLE `voka_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_deposit_mapping`
--

DROP TABLE IF EXISTS `withdraw_deposit_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_deposit_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit_id` int(11) DEFAULT NULL,
  `withdraw_id` int(11) DEFAULT NULL,
  `withdraw_amount` double(21,6) DEFAULT NULL,
  `deposit_amount` double(21,6) DEFAULT NULL,
  `deposit_unit_price` double(21,6) DEFAULT NULL,
  `withdraw_unit_price` double(21,6) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_deposit_mapping`
--

LOCK TABLES `withdraw_deposit_mapping` WRITE;
/*!40000 ALTER TABLE `withdraw_deposit_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_deposit_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_deposit_mappings`
--

DROP TABLE IF EXISTS `withdraw_deposit_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_deposit_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit_id` int(11) DEFAULT NULL,
  `withdraw_id` int(11) DEFAULT NULL,
  `withdraw_amount` double(21,6) DEFAULT NULL,
  `deposit_amount` double(21,6) DEFAULT NULL,
  `deposit_unit_price` double(21,6) DEFAULT NULL,
  `withdraw_unit_price` double(21,6) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_deposit_mappings`
--

LOCK TABLES `withdraw_deposit_mappings` WRITE;
/*!40000 ALTER TABLE `withdraw_deposit_mappings` DISABLE KEYS */;
INSERT INTO `withdraw_deposit_mappings` VALUES (1,100001,1000016,0.942754,0.942754,1.060722,1.060722,'2019-06-11 07:50:03','2019-06-11 09:50:03'),(2,1000003,1000016,1.885508,8484.786777,1.060722,1.060722,'2019-06-11 07:50:03','2019-06-11 09:50:03'),(3,1000003,1000056,0.942754,8484.786777,1.060722,1.060722,'2019-06-14 10:50:26','2019-06-14 12:50:26');
/*!40000 ALTER TABLE `withdraw_deposit_mappings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-06 15:11:00
