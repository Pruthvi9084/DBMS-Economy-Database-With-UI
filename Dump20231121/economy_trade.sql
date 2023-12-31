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
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade` (
  `Country_Id` varchar(10) NOT NULL,
  `Year` int NOT NULL,
  `Volume_Of_Import_Goods_And_Services` decimal(15,4) DEFAULT NULL,
  `Volume_Of_Export_Goods_And_Services` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`Year`,`Country_Id`),
  KEY `trade_ibfk_1` (`Country_Id`),
  CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`Country_Id`) REFERENCES `country` (`Country_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
INSERT INTO `trade` VALUES ('AR',2018,-6.1070,-0.3990),('BD',2018,19.5040,6.3220),('BG',2018,5.7630,1.7370),('BR',2018,7.3320,3.4170),('BS',2018,-2.7890,23.7990),('BT',2018,5.1020,7.5550),('BY',2018,5.2840,5.9170),('CD',2018,30.5170,30.0260),('CL',2018,8.6030,4.9060),('CN',2018,7.2630,3.9910),('CO',2018,5.8050,0.6420),('CR',2018,2.8560,4.8910),('GH',2018,8.0430,1.7330),('HU',2018,6.9640,4.9850),('ID',2018,14.9770,3.5060),('IN',2018,4.0480,4.8850),('KE',2018,-3.4870,5.9640),('LK',2018,-0.3630,5.8670),('LR',2018,-5.6050,31.6230),('MD',2018,8.9000,6.2000),('MG',2018,-0.5430,-5.9450),('MU',2018,3.7740,3.5080),('MX',2018,6.4300,6.0040),('MY',2018,2.3290,2.1250),('NA',2018,2.9070,10.4490),('NG',2018,28.0840,0.0520),('NP',2018,NULL,NULL),('PE',2018,1.3590,1.6310),('PL',2018,7.5230,6.7590),('PY',2018,4.4620,-1.9560),('RO',2018,8.6130,5.4110),('RS',2018,10.1750,7.8760),('SV',2018,4.2850,1.1810),('TH',2018,8.2740,3.3510),('TY',2018,-8.1190,10.1030),('UA',2018,8.4940,1.9070),('VN',2018,9.3350,12.0610),('XK',2018,10.8970,9.0900),('ZM',2018,6.4030,5.3610),('ZW',2018,NULL,NULL),('AR',2019,-21.0000,12.2550),('BD',2019,4.7670,13.9820),('BG',2019,5.2200,3.9740),('BR',2019,4.5310,-1.6740),('BS',2019,-3.0270,6.4120),('BT',2019,-7.6400,1.2450),('BY',2019,5.2790,0.1510),('CD',2019,-13.2830,-8.1680),('CL',2019,-1.7250,-2.5320),('CN',2019,-3.6620,0.4450),('CO',2019,7.3430,3.0850),('CR',2019,-2.2970,4.2610),('GH',2019,7.0940,5.7260),('HU',2019,8.2060,5.4220),('ID',2019,-9.7210,-3.7830),('IN',2019,-3.9410,-2.2300),('KE',2019,4.2090,0.0160),('LK',2019,-8.1510,-2.1930),('LR',2019,-4.4840,-7.2890),('MD',2019,4.8000,6.7000),('MG',2019,1.8370,14.7540),('MU',2019,1.3870,-4.6810),('MX',2019,-0.7280,1.4690),('MY',2019,-1.9440,-0.8120),('NA',2019,-8.5190,-7.4860),('NG',2019,44.8320,17.7750),('NP',2019,NULL,NULL),('PE',2019,-0.1570,1.2230),('PL',2019,3.1920,5.3370),('PY',2019,-4.5110,-4.1390),('RO',2019,8.6980,4.9580),('RS',2019,11.3720,10.0900),('SV',2019,0.9230,7.8240),('TH',2019,-5.1670,-2.9540),('TY',2019,-4.0190,9.2500),('UA',2019,7.1960,6.4140),('VN',2019,4.2930,6.2250),('XK',2019,4.5020,7.5120),('ZM',2019,-20.3370,-11.7420),('ZW',2019,NULL,NULL),('AR',2020,-10.5490,-12.8980),('BD',2020,-2.7240,-14.2340),('BG',2020,-4.9330,-10.2850),('BR',2020,-8.1730,-1.3340),('BS',2020,-22.3320,-67.0290),('BT',2020,-11.6260,-6.6410),('BY',2020,-8.9530,0.8150),('CD',2020,0.9310,6.4520),('CL',2020,-12.3310,-1.0260),('CN',2020,-0.4040,2.6100),('CO',2020,-19.9000,-22.6570),('CR',2020,-12.9290,-10.6330),('GH',2020,-5.2630,-6.5920),('HU',2020,-3.8550,-6.1480),('ID',2020,-15.2800,-8.0350),('IN',2020,-13.8950,-6.5900),('KE',2020,-2.4200,-7.2590),('LK',2020,-20.9290,-29.7480),('LR',2020,5.4370,-13.3220),('MD',2020,-0.5030,-21.2320),('MG',2020,-20.7430,-30.6280),('MU',2020,-11.5560,-39.0780),('MX',2020,-13.7290,-7.2980),('MY',2020,-8.8750,0.4000),('NA',2020,-15.8830,-16.2300),('NG',2020,-19.7060,-16.6580),('NP',2020,NULL,NULL),('PE',2020,-11.0790,-13.7340),('PL',2020,-2.4120,-1.0880),('PY',2020,-15.2110,-5.2040),('RO',2020,-5.5820,-9.6660),('RS',2020,-2.0640,-5.3730),('SV',2020,-7.9630,-20.7430),('TH',2020,-13.9110,-19.6810),('TY',2020,6.7780,-15.1640),('UA',2020,-3.2860,11.1440),('VN',2020,1.8550,2.7920),('XK',2020,-5.9910,-29.1470),('ZM',2020,-17.5790,9.2180),('ZW',2020,NULL,NULL),('AR',2021,29.7900,12.6000),('BD',2021,4.8700,6.9590),('BG',2021,9.2920,7.8110),('BR',2021,17.3670,2.2830),('BS',2021,15.6580,84.5790),('BT',2021,-0.9490,-8.8540),('BY',2021,6.6560,9.6410),('CD',2021,26.7010,10.0180),('CL',2021,31.7900,-1.2650),('CN',2021,8.9100,17.3750),('CO',2021,26.7020,15.8860),('CR',2021,16.9050,15.8790),('GH',2021,13.9870,-11.4320),('HU',2021,9.0950,10.2510),('ID',2021,16.1380,22.1020),('IN',2021,20.3910,20.0870),('KE',2021,13.7650,10.8140),('LK',2021,-4.2000,2.3300),('LR',2021,-0.4020,12.3520),('MD',2021,9.6870,16.9620),('MG',2021,10.7930,30.1520),('MU',2021,10.6970,-7.3330),('MX',2021,15.6350,7.0920),('MY',2021,21.6520,14.8130),('NA',2021,29.9850,10.1010),('NG',2021,-25.5940,-21.5090),('NP',2021,NULL,NULL),('PE',2021,19.1610,12.9390),('PL',2021,16.1260,12.4520),('PY',2021,19.1140,16.0960),('RO',2021,15.2980,12.9720),('RS',2021,14.1420,13.8810),('SV',2021,25.8490,25.9070),('TH',2021,17.7520,11.0950),('TY',2021,3.8120,32.4080),('UA',2021,17.2060,34.3090),('VN',2021,15.8310,13.2900),('XK',2021,31.4280,76.6550),('ZM',2021,13.2430,-1.7730),('ZW',2021,NULL,NULL),('AR',2022,12.2720,-5.3990),('BD',2022,19.5930,21.2360),('BG',2022,9.4240,6.9200),('BR',2022,6.6150,11.1580),('BS',2022,-3.2440,32.9910),('BT',2022,34.0770,7.1270),('BY',2022,-12.8300,-13.0550),('CD',2022,9.0760,12.9720),('CL',2022,0.8840,1.3750),('CN',2022,-4.1270,-1.2650),('CO',2022,23.8780,14.8540),('CR',2022,4.6270,8.8910),('GH',2022,10.6120,5.4240),('HU',2022,6.5560,7.0120),('ID',2022,9.6500,1.0670),('IN',2022,9.6100,9.3880),('KE',2022,-1.2640,7.4930),('LK',2022,-18.3290,-2.6380),('LR',2022,-9.3690,24.4190),('MD',2022,6.1710,4.5690),('MG',2022,3.8140,15.1840),('MU',2022,8.1700,37.1990),('MX',2022,10.1680,9.5790),('MY',2022,15.5990,7.7400),('NA',2022,15.7020,18.8620),('NG',2022,2.1420,-4.4580),('NP',2022,NULL,NULL),('PE',2022,2.6660,2.3740),('PL',2022,5.4580,4.5090),('PY',2022,-3.6970,-22.4960),('RO',2022,9.6590,8.4470),('RS',2022,19.6380,21.0790),('SV',2022,3.9910,8.4710),('TH',2022,4.1000,6.8010),('TY',2022,11.8500,21.0140),('UA',2022,-27.8150,-43.0780),('VN',2022,4.1610,6.7160),('XK',2022,3.8790,13.4670),('ZM',2022,15.0700,-3.2490),('ZW',2022,NULL,NULL);
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 15:13:27
