-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: bsp
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dispatch_stock`
--

DROP TABLE IF EXISTS `dispatch_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispatch_stock` (
  `product_name` varchar(50) NOT NULL,
  `till_date` int DEFAULT NULL,
  `stock_open_jan2025` int DEFAULT NULL,
  `stock_aug1_2025` int DEFAULT NULL,
  `stock_on_date` int DEFAULT NULL,
  PRIMARY KEY (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_stock`
--

LOCK TABLES `dispatch_stock` WRITE;
/*!40000 ALTER TABLE `dispatch_stock` DISABLE KEYS */;
INSERT INTO `dispatch_stock` VALUES ('Billets',720,4891,17475,18186),('BRM Prod.',9010,19663,12660,12628),('Finished',37757,106915,110880,110959),('Merch Prod.',5666,12712,6141,6361),('Plates',9650,29206,40452,37822),('RSM Blooms',0,1676,415,415),('RSM Rails',2557,25932,38257,39546),('Sal. Steel',40208,138969,147178,146544),('Semis',2451,32054,36298,35585),('Slabs',210,18679,16192,16214),('SMS2 Blooms',581,906,1194,643),('SMS3 Blooms',940,5902,1022,127),('Structurals',0,127,168,168),('URM Rails',8023,12138,9809,10666),('Wire Rods',2851,7138,3393,3768);
/*!40000 ALTER TABLE `dispatch_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mills`
--

DROP TABLE IF EXISTS `mills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mills` (
  `mill_id` int NOT NULL,
  `mill_name` varchar(100) NOT NULL,
  PRIMARY KEY (`mill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mills`
--

LOCK TABLES `mills` WRITE;
/*!40000 ALTER TABLE `mills` DISABLE KEYS */;
INSERT INTO `mills` VALUES (1,'Iron Mine Group'),(2,'Blast Furnace'),(3,'Universal Rail Mill'),(4,'Bar & Rod Mill'),(5,'Coke Oven'),(6,'Steel Melting Shop II'),(7,'Rail Dispatches'),(8,'Plate Mill'),(9,'Sinter Plant II'),(10,'Sinter Plant III'),(11,'Steel Melting Shop III'),(12,'Rail Mill'),(13,'Merchant Mill'),(14,'Wire Rod Mill');
/*!40000 ALTER TABLE `mills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `sl_no` int DEFAULT NULL,
  `particulars` varchar(100) DEFAULT NULL,
  `abp` decimal(10,2) DEFAULT NULL,
  `plan` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'Eq. Oven Pushing (Nos/Day)',800.00,770.00,'','Coke Oven'),(2,'BF Coke (Dry)',276.00,266.00,'','Coke Oven'),(3,'SINTER SP-I',240.00,240.00,'','Sinter'),(4,'SINTER SP-II',512.00,512.00,'','Sinter'),(5,'Total Sinter',752.00,752.00,'Sinter in burden 60.7%','Sinter'),(6,'Hot Metal BF-1:7',312.00,282.00,'','Hot Metal'),(7,'Hot Metal BF-8',205.00,235.00,'(In ABP, BF-6 C/R BF-1,4,5,7 running)','Hot Metal'),(8,'Total HM',517.00,517.00,'(16700 T.C.Day)','Hot Metal'),(9,'Cold Pig Iron',0.00,0.00,'','Pig Iron'),(10,'Crude Steel SMS-II',179.00,202.00,'(54.3 Blows.C.Day)','Crude Steel'),(11,'Crude Steel SMS-III',321.00,300.00,'(56.9 Blows.C.Day)','Crude Steel'),(12,'SMS-II Cast Blooms',116.00,131.00,'','Crude Steel'),(13,'SMS-II Cast Slabs',63.00,68.00,'','Crude Steel'),(14,'SMS-III Blooms',112.00,106.00,'Conversion C/C to 105x as per mode of billet','Crude Steel'),(15,'SMS-III Billet 105x',99.00,95.00,'Conversion C/C to 105x as per mode of billet','Crude Steel'),(16,'URM Rails',139.00,123.00,'','Finished Rails'),(17,'RSM',96.00,90.00,'','Finished Rails'),(18,'Total Finished Rails',235.00,213.00,'','Finished Rails'),(19,'URM Structurals',43.00,33.00,'','Finished Rails'),(20,'RSM Structurals',156.00,137.00,'','Finished Rails'),(21,'Total Finished Steel',385.00,350.00,'','Finished Steel'),(22,'CCS Slabs',41.00,30.00,'','Semi-Finished Steel'),(23,'CCS Blooms',84.00,80.00,'','Semi-Finished Steel'),(24,'Billets 105x',9.00,9.00,'','Semi-Finished Steel'),(25,'Slabs',66.00,68.00,'','Semi-Finished Steel'),(26,'Total Semi-Finished Steel',450.00,450.00,'EFT: 5 (SMS-1 RSP:7)','Semi-Finished Steel');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `mill_id` int NOT NULL,
  `prod_date` date NOT NULL,
  `shift` enum('A','B','C') NOT NULL,
  `output_tons` int DEFAULT NULL,
  `target_tons` int DEFAULT NULL,
  `efficiency_percent` decimal(6,2) GENERATED ALWAYS AS ((case when (`target_tons` = 0) then NULL else ((`output_tons` / `target_tons`) * 100) end)) STORED,
  `downtime_minutes` int DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`prod_id`),
  KEY `mill_id` (`mill_id`),
  CONSTRAINT `production_ibfk_1` FOREIGN KEY (`mill_id`) REFERENCES `mills` (`mill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` (`prod_id`, `mill_id`, `prod_date`, `shift`, `output_tons`, `target_tons`, `downtime_minutes`, `remarks`) VALUES (1,1,'2025-08-05','A',1190,1200,10,'Minor maintenance'),(2,1,'2025-08-05','B',1185,1200,15,'High efficiency'),(3,1,'2025-08-05','C',1180,1200,20,'Gearbox check'),(4,2,'2025-08-05','A',940,950,10,'Cooling adjustment'),(5,2,'2025-08-05','B',935,950,15,'Alloy change'),(6,2,'2025-08-05','C',930,950,20,'Slag removal delay'),(7,3,'2025-08-05','A',790,800,10,'Dispatch on time'),(8,3,'2025-08-05','B',785,800,15,'Smooth operation'),(9,3,'2025-08-05','C',780,800,20,'Minor maintenance'),(10,4,'2025-08-05','A',690,700,10,'High efficiency'),(11,4,'2025-08-05','B',685,700,15,'Gearbox check'),(12,4,'2025-08-05','C',680,700,20,'Cooling adjustment'),(13,1,'2025-08-06','A',1188,1200,11,'Minor maintenance'),(14,1,'2025-08-06','B',1183,1200,16,'High efficiency'),(15,1,'2025-08-06','C',1178,1200,21,'Gearbox check'),(16,2,'2025-08-06','A',938,950,11,'Cooling adjustment'),(17,2,'2025-08-06','B',933,950,16,'Alloy change'),(18,2,'2025-08-06','C',928,950,21,'Slag removal delay'),(19,3,'2025-08-06','A',788,800,11,'Dispatch on time'),(20,3,'2025-08-06','B',783,800,16,'Smooth operation'),(21,3,'2025-08-06','C',778,800,21,'Minor maintenance'),(22,4,'2025-08-06','A',688,700,11,'High efficiency'),(23,4,'2025-08-06','B',683,700,16,'Gearbox check'),(24,4,'2025-08-06','C',678,700,21,'Cooling adjustment'),(25,1,'2025-08-07','A',1186,1200,12,'Minor maintenance'),(26,1,'2025-08-07','B',1181,1200,17,'High efficiency'),(27,1,'2025-08-07','C',1176,1200,22,'Gearbox check'),(28,2,'2025-08-07','A',936,950,12,'Cooling adjustment'),(29,2,'2025-08-07','B',931,950,17,'Alloy change'),(30,2,'2025-08-07','C',926,950,22,'Slag removal delay'),(31,3,'2025-08-07','A',786,800,12,'Dispatch on time'),(32,3,'2025-08-07','B',781,800,17,'Smooth operation'),(33,3,'2025-08-07','C',776,800,22,'Minor maintenance'),(34,4,'2025-08-07','A',686,700,12,'High efficiency'),(35,4,'2025-08-07','B',681,700,17,'Gearbox check'),(36,4,'2025-08-07','C',676,700,22,'Cooling adjustment'),(37,1,'2025-08-08','A',1184,1200,13,'Minor maintenance'),(38,1,'2025-08-08','B',1179,1200,18,'High efficiency'),(39,1,'2025-08-08','C',1174,1200,23,'Gearbox check'),(40,2,'2025-08-08','A',934,950,13,'Cooling adjustment'),(41,2,'2025-08-08','B',929,950,18,'Alloy change'),(42,2,'2025-08-08','C',924,950,23,'Slag removal delay'),(43,3,'2025-08-08','A',784,800,13,'Dispatch on time'),(44,3,'2025-08-08','B',779,800,18,'Smooth operation'),(45,3,'2025-08-08','C',774,800,23,'Minor maintenance'),(46,4,'2025-08-08','A',684,700,13,'High efficiency'),(47,4,'2025-08-08','B',679,700,18,'Gearbox check'),(48,4,'2025-08-08','C',674,700,23,'Cooling adjustment'),(49,1,'2025-08-09','A',1182,1200,14,'Minor maintenance'),(50,1,'2025-08-09','B',1177,1200,19,'High efficiency'),(51,1,'2025-08-09','C',1172,1200,24,'Gearbox check'),(52,2,'2025-08-09','A',932,950,14,'Cooling adjustment'),(53,2,'2025-08-09','B',927,950,19,'Alloy change'),(54,2,'2025-08-09','C',922,950,24,'Slag removal delay'),(55,3,'2025-08-09','A',782,800,14,'Dispatch on time'),(56,3,'2025-08-09','B',777,800,19,'Smooth operation'),(57,3,'2025-08-09','C',772,800,24,'Minor maintenance'),(58,4,'2025-08-09','A',682,700,14,'High efficiency'),(59,4,'2025-08-09','B',677,700,19,'Gearbox check'),(60,4,'2025-08-09','C',672,700,24,'Cooling adjustment'),(61,1,'2025-08-10','A',1180,1200,15,'Minor maintenance'),(62,1,'2025-08-10','B',1175,1200,20,'High efficiency'),(63,1,'2025-08-10','C',1170,1200,25,'Gearbox check'),(64,2,'2025-08-10','A',930,950,15,'Cooling adjustment'),(65,2,'2025-08-10','B',925,950,20,'Alloy change'),(66,2,'2025-08-10','C',920,950,25,'Slag removal delay'),(67,3,'2025-08-10','A',780,800,15,'Dispatch on time'),(68,3,'2025-08-10','B',775,800,20,'Smooth operation'),(69,3,'2025-08-10','C',770,800,25,'Minor maintenance'),(70,4,'2025-08-10','A',680,700,15,'High efficiency'),(71,4,'2025-08-10','B',675,700,20,'Gearbox check'),(72,4,'2025-08-10','C',670,700,25,'Cooling adjustment'),(73,1,'2025-08-11','A',1178,1200,16,'Minor maintenance'),(74,1,'2025-08-11','B',1173,1200,21,'High efficiency'),(75,1,'2025-08-11','C',1168,1200,26,'Gearbox check'),(76,2,'2025-08-11','A',928,950,16,'Cooling adjustment'),(77,2,'2025-08-11','B',923,950,21,'Alloy change'),(78,2,'2025-08-11','C',918,950,26,'Slag removal delay'),(79,3,'2025-08-11','A',778,800,16,'Dispatch on time'),(80,3,'2025-08-11','B',773,800,21,'Smooth operation'),(81,3,'2025-08-11','C',768,800,26,'Minor maintenance'),(82,4,'2025-08-11','A',678,700,16,'High efficiency'),(83,4,'2025-08-11','B',673,700,21,'Gearbox check'),(84,4,'2025-08-11','C',668,700,26,'Cooling adjustment'),(85,5,'2025-08-05','A',590,600,10,'Alloy change'),(86,5,'2025-08-05','B',585,600,15,'Slag removal delay'),(87,5,'2025-08-05','C',580,600,20,'Dispatch on time'),(88,5,'2025-08-06','A',588,600,11,'Alloy change'),(89,5,'2025-08-06','B',583,600,16,'Slag removal delay'),(90,5,'2025-08-06','C',578,600,21,'Dispatch on time'),(91,5,'2025-08-07','A',586,600,12,'Alloy change'),(92,5,'2025-08-07','B',581,600,17,'Slag removal delay'),(93,5,'2025-08-07','C',576,600,22,'Dispatch on time'),(94,5,'2025-08-08','A',584,600,13,'Alloy change'),(95,5,'2025-08-08','B',579,600,18,'Slag removal delay'),(96,5,'2025-08-08','C',574,600,23,'Dispatch on time'),(97,5,'2025-08-09','A',582,600,14,'Alloy change'),(98,5,'2025-08-09','B',577,600,19,'Slag removal delay'),(99,5,'2025-08-09','C',572,600,24,'Dispatch on time'),(100,5,'2025-08-10','A',580,600,15,'Alloy change'),(101,5,'2025-08-10','B',575,600,20,'Slag removal delay'),(102,5,'2025-08-10','C',570,600,25,'Dispatch on time'),(103,5,'2025-08-11','A',578,600,16,'Alloy change'),(104,5,'2025-08-11','B',573,600,21,'Slag removal delay'),(105,5,'2025-08-11','C',568,600,26,'Dispatch on time'),(106,6,'2025-08-05','A',1090,1100,10,'Smooth operation'),(107,6,'2025-08-05','B',1085,1100,15,'Minor maintenance'),(108,6,'2025-08-05','C',1080,1100,20,'High efficiency'),(109,6,'2025-08-06','A',1088,1100,11,'Smooth operation'),(110,6,'2025-08-06','B',1083,1100,16,'Minor maintenance'),(111,6,'2025-08-06','C',1078,1100,21,'High efficiency'),(112,6,'2025-08-07','A',1086,1100,12,'Smooth operation'),(113,6,'2025-08-07','B',1081,1100,17,'Minor maintenance'),(114,6,'2025-08-07','C',1076,1100,22,'High efficiency'),(115,6,'2025-08-08','A',1084,1100,13,'Smooth operation'),(116,6,'2025-08-08','B',1079,1100,18,'Minor maintenance'),(117,6,'2025-08-08','C',1074,1100,23,'High efficiency'),(118,6,'2025-08-09','A',1082,1100,14,'Smooth operation'),(119,6,'2025-08-09','B',1077,1100,19,'Minor maintenance'),(120,6,'2025-08-09','C',1072,1100,24,'High efficiency'),(121,6,'2025-08-10','A',1080,1100,15,'Smooth operation'),(122,6,'2025-08-10','B',1075,1100,20,'Minor maintenance'),(123,6,'2025-08-10','C',1070,1100,25,'High efficiency'),(124,6,'2025-08-11','A',1078,1100,16,'Smooth operation'),(125,6,'2025-08-11','B',1073,1100,21,'Minor maintenance'),(126,6,'2025-08-11','C',1068,1100,26,'High efficiency'),(127,7,'2025-08-05','A',490,500,10,'Gearbox check'),(128,7,'2025-08-05','B',485,500,15,'Cooling adjustment'),(129,7,'2025-08-05','C',480,500,20,'Alloy change'),(130,7,'2025-08-06','A',488,500,11,'Gearbox check'),(131,7,'2025-08-06','B',483,500,16,'Cooling adjustment'),(132,7,'2025-08-06','C',478,500,21,'Alloy change'),(133,7,'2025-08-07','A',486,500,12,'Gearbox check'),(134,7,'2025-08-07','B',481,500,17,'Cooling adjustment'),(135,7,'2025-08-07','C',476,500,22,'Alloy change'),(136,7,'2025-08-08','A',484,500,13,'Gearbox check'),(137,7,'2025-08-08','B',479,500,18,'Cooling adjustment'),(138,7,'2025-08-08','C',474,500,23,'Alloy change'),(139,7,'2025-08-09','A',482,500,14,'Gearbox check'),(140,7,'2025-08-09','B',477,500,19,'Cooling adjustment'),(141,7,'2025-08-09','C',472,500,24,'Alloy change'),(142,7,'2025-08-10','A',480,500,15,'Gearbox check'),(143,7,'2025-08-10','B',475,500,20,'Cooling adjustment'),(144,7,'2025-08-10','C',470,500,25,'Alloy change'),(145,7,'2025-08-11','A',478,500,16,'Gearbox check'),(146,7,'2025-08-11','B',473,500,21,'Cooling adjustment'),(147,7,'2025-08-11','C',468,500,26,'Alloy change'),(148,8,'2025-08-05','A',890,900,10,'Slag removal delay'),(149,8,'2025-08-05','B',885,900,15,'Dispatch on time'),(150,8,'2025-08-05','C',880,900,20,'Smooth operation'),(151,8,'2025-08-06','A',888,900,11,'Slag removal delay'),(152,8,'2025-08-06','B',883,900,16,'Dispatch on time'),(153,8,'2025-08-06','C',878,900,21,'Smooth operation'),(154,8,'2025-08-07','A',886,900,12,'Slag removal delay'),(155,8,'2025-08-07','B',881,900,17,'Dispatch on time'),(156,8,'2025-08-07','C',876,900,22,'Smooth operation'),(157,8,'2025-08-08','A',884,900,13,'Slag removal delay'),(158,8,'2025-08-08','B',879,900,18,'Dispatch on time'),(159,8,'2025-08-08','C',874,900,23,'Smooth operation'),(160,8,'2025-08-09','A',882,900,14,'Slag removal delay'),(161,8,'2025-08-09','B',877,900,19,'Dispatch on time'),(162,8,'2025-08-09','C',872,900,24,'Smooth operation'),(163,8,'2025-08-10','A',880,900,15,'Slag removal delay'),(164,8,'2025-08-10','B',875,900,20,'Dispatch on time'),(165,8,'2025-08-10','C',870,900,25,'Smooth operation'),(166,8,'2025-08-11','A',878,900,16,'Slag removal delay'),(167,8,'2025-08-11','B',873,900,21,'Dispatch on time'),(168,8,'2025-08-11','C',868,900,26,'Smooth operation'),(169,9,'2025-08-05','A',700,720,12,'Raw mix adjustment'),(170,9,'2025-08-05','B',695,720,18,'Feed delay'),(171,9,'2025-08-05','C',690,720,22,'Normal operation'),(172,9,'2025-08-06','A',698,720,13,'Raw mix adjustment'),(173,9,'2025-08-06','B',693,720,19,'Feed delay'),(174,9,'2025-08-06','C',688,720,23,'Normal operation'),(175,9,'2025-08-07','A',696,720,14,'Raw mix adjustment'),(176,9,'2025-08-07','B',691,720,20,'Feed delay'),(177,9,'2025-08-07','C',686,720,24,'Normal operation'),(178,9,'2025-08-08','A',694,720,15,'Raw mix adjustment'),(179,9,'2025-08-08','B',689,720,21,'Feed delay'),(180,9,'2025-08-08','C',684,720,25,'Normal operation'),(181,9,'2025-08-09','A',692,720,16,'Raw mix adjustment'),(182,9,'2025-08-09','B',687,720,22,'Feed delay'),(183,9,'2025-08-09','C',682,720,26,'Normal operation'),(184,9,'2025-08-10','A',690,720,17,'Raw mix adjustment'),(185,9,'2025-08-10','B',685,720,23,'Feed delay'),(186,9,'2025-08-10','C',680,720,27,'Normal operation'),(187,9,'2025-08-11','A',688,720,18,'Raw mix adjustment'),(188,9,'2025-08-11','B',683,720,24,'Feed delay'),(189,9,'2025-08-11','C',678,720,28,'Normal operation'),(190,10,'2025-08-05','A',720,740,10,'Equipment calibration'),(191,10,'2025-08-05','B',715,740,14,'Material shortage'),(192,10,'2025-08-05','C',710,740,19,'Stable run'),(193,10,'2025-08-06','A',718,740,11,'Equipment calibration'),(194,10,'2025-08-06','B',713,740,15,'Material shortage'),(195,10,'2025-08-06','C',708,740,20,'Stable run'),(196,10,'2025-08-07','A',716,740,12,'Equipment calibration'),(197,10,'2025-08-07','B',711,740,16,'Material shortage'),(198,10,'2025-08-07','C',706,740,21,'Stable run'),(199,10,'2025-08-08','A',714,740,13,'Equipment calibration'),(200,10,'2025-08-08','B',709,740,17,'Material shortage'),(201,10,'2025-08-08','C',704,740,22,'Stable run'),(202,10,'2025-08-09','A',712,740,14,'Equipment calibration'),(203,10,'2025-08-09','B',707,740,18,'Material shortage'),(204,10,'2025-08-09','C',702,740,23,'Stable run'),(205,10,'2025-08-10','A',710,740,15,'Equipment calibration'),(206,10,'2025-08-10','B',705,740,19,'Material shortage'),(207,10,'2025-08-10','C',700,740,24,'Stable run'),(208,10,'2025-08-11','A',708,740,16,'Equipment calibration'),(209,10,'2025-08-11','B',703,740,20,'Material shortage'),(210,10,'2025-08-11','C',698,740,25,'Stable run'),(211,11,'2025-08-05','A',1122,1150,14,'Stable operation'),(212,11,'2025-08-05','B',1112,1150,18,'Minor maintenance'),(213,11,'2025-08-05','C',1107,1150,20,'Demurrage resolved'),(214,11,'2025-08-06','A',1128,1150,13,'Routine check'),(215,11,'2025-08-06','B',1118,1150,15,'Good output'),(216,11,'2025-08-06','C',1110,1150,17,'Smooth operation'),(217,11,'2025-08-07','A',1130,1150,12,'Optimal run'),(218,11,'2025-08-07','B',1120,1150,10,'Stable shifts'),(219,11,'2025-08-07','C',1115,1150,15,'Minor downtime'),(220,11,'2025-08-08','A',1125,1150,15,'Calibration ongoing'),(221,11,'2025-08-08','B',1115,1150,13,'Material delay'),(222,11,'2025-08-08','C',1112,1150,16,'Normal operation'),(223,11,'2025-08-09','A',1120,1150,14,'Steady run'),(224,11,'2025-08-09','B',1110,1150,12,'Minor repair'),(225,11,'2025-08-09','C',1108,1150,18,'Dispatch delayed'),(226,11,'2025-08-10','A',1118,1150,15,'Good efficiency'),(227,11,'2025-08-10','B',1115,1150,14,'Normal operation'),(228,11,'2025-08-10','C',1110,1150,20,'Minor stoppage'),(229,12,'2025-08-05','A',855,870,12,'Normal run'),(230,12,'2025-08-05','B',850,870,15,'Minor downtime'),(231,12,'2025-08-05','C',845,870,17,'Dispatch delay'),(232,12,'2025-08-06','A',860,870,10,'Stable operation'),(233,12,'2025-08-06','B',855,870,13,'Routine maintenance'),(234,12,'2025-08-06','C',850,870,15,'Good output'),(235,12,'2025-08-07','A',858,870,14,'Smooth run'),(236,12,'2025-08-07','B',853,870,12,'Minor repair'),(237,12,'2025-08-07','C',848,870,16,'Stable shifts'),(238,12,'2025-08-08','A',856,870,13,'Material handling'),(239,12,'2025-08-08','B',851,870,15,'Dispatch on time'),(240,12,'2025-08-08','C',846,870,18,'Shift stable'),(241,12,'2025-08-09','A',854,870,14,'Good performance'),(242,12,'2025-08-09','B',849,870,16,'Routine check'),(243,12,'2025-08-09','C',845,870,20,'Minor stoppage'),(244,12,'2025-08-10','A',852,870,15,'Smooth operation'),(245,12,'2025-08-10','B',847,870,14,'Normal run'),(246,12,'2025-08-10','C',842,870,17,'Maintenance ongoing'),(247,13,'2025-08-05','A',625,640,10,'Good start'),(248,13,'2025-08-05','B',620,640,12,'Smooth shift'),(249,13,'2025-08-05','C',615,640,15,'Minor stoppage'),(250,13,'2025-08-06','A',630,640,11,'Stable operation'),(251,13,'2025-08-06','B',625,640,13,'Maintenance done'),(252,13,'2025-08-06','C',620,640,16,'Normal run'),(253,13,'2025-08-07','A',628,640,14,'Calibration ongoing'),(254,13,'2025-08-07','B',623,640,12,'Good output'),(255,13,'2025-08-07','C',618,640,15,'Smooth shift'),(256,13,'2025-08-08','A',626,640,13,'Material ready'),(257,13,'2025-08-08','B',621,640,10,'Dispatch on time'),(258,13,'2025-08-08','C',616,640,14,'Shift stable'),(259,13,'2025-08-09','A',624,640,15,'Routine maintenance'),(260,13,'2025-08-09','B',619,640,16,'Minor repairs'),(261,13,'2025-08-09','C',614,640,17,'Normal operation'),(262,13,'2025-08-10','A',622,640,11,'Good output'),(263,13,'2025-08-10','B',617,640,13,'Smooth run'),(264,13,'2025-08-10','C',613,640,15,'Shift on schedule'),(265,14,'2025-08-05','A',935,950,12,'Normal operation'),(266,14,'2025-08-05','B',930,950,14,'Minor downtime'),(267,14,'2025-08-05','C',925,950,16,'Dispatch delayed'),(268,14,'2025-08-06','A',940,950,11,'Good performance'),(269,14,'2025-08-06','B',935,950,13,'Stable shifts'),(270,14,'2025-08-06','C',930,950,15,'Minor repair'),(271,14,'2025-08-07','A',938,950,10,'Smooth run'),(272,14,'2025-08-07','B',933,950,14,'Scheduled maintenance'),(273,14,'2025-08-07','C',928,950,16,'Good output'),(274,14,'2025-08-08','A',936,950,13,'Material ready'),(275,14,'2025-08-08','B',931,950,12,'Dispatch on time'),(276,14,'2025-08-08','C',926,950,15,'Normal operation'),(277,14,'2025-08-09','A',934,950,14,'Routine check'),(278,14,'2025-08-09','B',929,950,16,'Minor stoppage'),(279,14,'2025-08-09','C',924,950,18,'Steady operation'),(280,14,'2025-08-10','A',932,950,15,'Good run'),(281,14,'2025-08-10','B',927,950,13,'Smooth operation'),(282,14,'2025-08-10','C',922,950,17,'Dispatch completed');
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-15 17:18:14
