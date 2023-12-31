-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: economy
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `Country_Id` varchar(10) NOT NULL,
  `Year` int NOT NULL,
  `Unemployment_rate` decimal(15,4) DEFAULT NULL,
  `Population_rate` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`Year`,`Country_Id`),
  KEY `people_ibfk_1` (`Country_Id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`Country_Id`) REFERENCES `country` (`Country_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES ('AR',2018,9.2000,44.4950),('BD',2018,NULL,161.3560),('BG',2018,5.2730,7.0000),('BR',2018,11.7000,208.4950),('BS',2018,10.3500,0.3770),('BT',2018,3.4000,0.7350),('BY',2018,4.8250,9.4480),('CD',2018,NULL,85.1200),('CL',2018,7.3770,18.7510),('CN',2018,3.8000,1405.4100),('CO',2018,9.9580,48.2580),('CR',2018,11.9510,5.0220),('GH',2018,NULL,29.5550),('HU',2018,3.6320,9.7780),('ID',2018,5.2400,264.1620),('IN',2018,NULL,1369.0000),('KE',2018,NULL,46.5000),('LK',2018,4.4000,21.6700),('LR',2018,NULL,4.8190),('MD',2018,3.0500,2.7300),('MG',2018,NULL,25.6740),('MU',2018,6.9000,1.2660),('MX',2018,3.3230,125.3280),('MY',2018,3.3250,32.3820),('NA',2018,NULL,2.4140),('NG',2018,22.5620,195.8750),('NP',2018,NULL,28.5070),('PE',2018,6.7000,32.1620),('PL',2018,3.8460,37.9770),('PY',2018,6.2360,7.0530),('RO',2018,5.2500,19.5330),('RS',2018,13.6730,6.9830),('SV',2018,6.3500,6.2760),('TH',2018,1.1000,69.4280),('TY',2018,10.9070,82.0040),('UA',2018,9.0000,41.9840),('VN',2018,2.1900,94.6660),('XK',2018,29.5000,1.7960),('ZM',2018,NULL,17.8360),('ZW',2018,NULL,14.6420),('AR',2019,9.8250,44.9390),('BD',2019,NULL,163.0460),('BG',2019,4.2750,6.9510),('BR',2019,11.1000,210.1470),('BS',2019,10.1000,0.3810),('BT',2019,2.7200,0.7380),('BY',2019,4.1910,9.4290),('CD',2019,NULL,87.9110),('CL',2019,7.2230,19.1070),('CN',2019,3.6200,1410.0800),('CO',2019,10.8920,49.3960),('CR',2019,12.4170,5.0750),('GH',2019,NULL,30.1680),('HU',2019,3.3390,9.7730),('ID',2019,5.1800,266.9120),('IN',2019,NULL,1383.1100),('KE',2019,NULL,47.6000),('LK',2019,4.8000,21.8030),('LR',2019,NULL,4.9370),('MD',2019,5.1250,2.6820),('MG',2019,NULL,26.5250),('MU',2019,6.7000,1.2650),('MX',2019,3.4900,126.5780),('MY',2019,3.2750,32.5230),('NA',2019,NULL,2.4590),('NG',2019,NULL,200.9640),('NP',2019,NULL,28.8320),('PE',2019,6.5790,33.1620),('PL',2019,3.2790,37.9730),('PY',2019,6.5690,7.1530),('RO',2019,4.8920,19.4140),('RS',2019,11.1930,6.9450),('SV',2019,6.3400,6.2800),('TH',2019,1.0000,69.6260),('TY',2019,13.7310,83.1550),('UA',2019,8.5000,41.7330),('VN',2019,2.1700,96.4840),('XK',2019,25.6500,1.7820),('ZM',2019,NULL,18.3800),('ZW',2019,NULL,14.9050),('AR',2020,11.5500,45.3880),('BD',2020,NULL,164.6890),('BG',2020,5.2070,6.9170),('BR',2020,14.2000,211.7560),('BS',2020,25.5500,0.3850),('BT',2020,5.0300,0.7450),('BY',2020,4.0820,9.4100),('CD',2020,NULL,90.7940),('CL',2020,10.7700,19.4580),('CN',2020,4.2400,1412.1200),('CO',2020,16.6670,50.3720),('CR',2020,19.9800,5.1280),('GH',2020,NULL,30.7790),('HU',2020,4.1590,9.7700),('ID',2020,7.0700,270.2040),('IN',2020,NULL,1396.3900),('KE',2020,NULL,48.6930),('LK',2020,5.5000,21.9190),('LR',2020,NULL,5.0580),('MD',2020,3.8250,2.6340),('MG',2020,NULL,27.3400),('MU',2020,9.2000,1.2660),('MX',2020,4.4120,127.7920),('MY',2020,4.5250,32.5840),('NA',2020,NULL,2.5040),('NG',2020,NULL,206.1400),('NP',2020,NULL,29.3490),('PE',2020,13.0000,33.4940),('PL',2020,3.1630,37.9580),('PY',2020,7.7080,7.2530),('RO',2020,6.0750,19.3290),('RS',2020,9.7280,6.8990),('SV',2020,6.9000,6.2930),('TH',2020,2.0000,69.8000),('TY',2020,13.1470,83.6140),('UA',2020,9.1500,41.4190),('VN',2020,2.4800,97.5830),('XK',2020,25.9500,1.7980),('ZM',2020,NULL,18.9280),('ZW',2020,NULL,15.1890),('AR',2021,8.7500,45.8420),('BD',2021,NULL,166.6570),('BG',2021,5.3460,6.8390),('BR',2021,11.1000,212.6090),('BS',2021,18.1450,0.3890),('BT',2021,4.8000,0.7530),('BY',2021,3.9250,9.3500),('CD',2021,NULL,93.7510),('CL',2021,8.8620,19.7180),('CN',2021,3.9600,1412.6000),('CO',2021,13.8000,51.0490),('CR',2021,13.6800,5.1800),('GH',2021,NULL,31.3940),('HU',2021,4.0740,9.7310),('ID',2021,6.4900,272.2490),('IN',2021,NULL,1409.9500),('KE',2021,NULL,49.8010),('LK',2021,5.1000,22.1560),('LR',2021,NULL,5.1800),('MD',2021,3.2500,2.5870),('MG',2021,NULL,28.1780),('MU',2021,9.1000,1.2640),('MX',2021,4.1420,128.9720),('MY',2021,4.6500,32.5800),('NA',2021,NULL,2.5500),('NG',2021,NULL,211.4010),('NP',2021,NULL,29.7480),('PE',2021,10.7000,33.8290),('PL',2021,3.3620,37.8400),('PY',2021,7.5100,7.3530),('RO',2021,5.6080,19.2020),('RS',2021,11.0080,6.8720),('SV',2021,6.3000,6.3140),('TH',2021,1.5000,69.9510),('TY',2021,11.9600,84.6800),('UA',2021,9.8350,40.9980),('VN',2021,3.2000,98.5060),('XK',2021,20.7500,1.7690),('ZM',2021,NULL,19.4730),('ZW',2021,NULL,15.4920),('AR',2022,7.0000,46.3000),('BD',2022,NULL,168.5200),('BG',2022,4.3200,6.7980),('BR',2022,7.9000,213.9110),('BS',2022,12.3120,0.3940),('BT',2022,5.9000,0.7600),('BY',2022,4.5000,9.3030),('CD',2022,NULL,96.8010),('CL',2022,7.8780,19.9230),('CN',2022,4.2000,1412.5500),('CO',2022,11.2170,51.6090),('CR',2022,11.6690,5.2290),('GH',2022,NULL,32.0820),('HU',2022,3.6010,9.7270),('ID',2022,5.8600,274.8590),('IN',2022,NULL,1423.3300),('KE',2022,NULL,50.9240),('LK',2022,5.2500,22.3960),('LR',2022,NULL,5.3050),('MD',2022,2.5860,2.5410),('MG',2022,NULL,28.9610),('MU',2022,7.6600,1.2620),('MX',2022,3.2720,130.1180),('MY',2022,3.8250,32.9930),('NA',2022,NULL,2.5970),('NG',2022,NULL,216.7470),('NP',2022,NULL,30.1520),('PE',2022,7.8000,34.1670),('PL',2022,2.8870,37.6540),('PY',2022,7.1850,7.4540),('RO',2022,5.6250,19.0420),('RS',2022,9.3960,6.8440),('SV',2022,5.8000,6.3360),('TH',2022,1.0000,70.0780),('TY',2022,10.4660,85.2800),('UA',2022,24.5280,34.8400),('VN',2022,2.3200,99.4620),('XK',2022,NULL,1.7700),('ZM',2022,NULL,20.0180),('ZW',2022,NULL,15.8170);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 15:13:28
