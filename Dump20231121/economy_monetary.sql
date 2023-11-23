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
-- Table structure for table `monetary`
--

DROP TABLE IF EXISTS `monetary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monetary` (
  `Country_Id` varchar(10) NOT NULL,
  `Year` int NOT NULL,
  `Inflation_Average_Consumer_Price` decimal(20,4) DEFAULT NULL,
  `Inflation_End_Of_Period_Of_Consumer` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`Country_Id`,`Year`),
  CONSTRAINT `FK_Country_Id` FOREIGN KEY (`Country_Id`) REFERENCES `country` (`Country_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monetary`
--

LOCK TABLES `monetary` WRITE;
/*!40000 ALTER TABLE `monetary` DISABLE KEYS */;
INSERT INTO `monetary` VALUES ('AR',2018,283.9590,345.1670),('AR',2019,436.0150,530.9790),('AR',2020,619.2070,722.8780),('AR',2021,918.9610,1091.1200),('AR',2022,1584.5700,2125.4300),('BD',2018,230.2430,224.7500),('BD',2019,242.8480,237.1520),('BD',2020,256.5630,251.4300),('BD',2021,270.8220,265.6160),('BD',2022,287.4770,285.7040),('BG',2018,102.4760,103.2100),('BG',2019,104.9940,106.4100),('BG',2020,106.2740,106.4300),('BG',2021,109.2950,113.4400),('BG',2022,123.5240,129.6900),('BR',2018,3317565218738.1000,3360922881617.7000),('BR',2019,3435385726643.3500,3505645584887.9000),('BR',2020,3545716262662.9000,3664007550650.6000),('BR',2021,3840066510472.0000,4032645361517.5000),('BR',2022,4196422299270.1000,4265927525340.0000),('BS',2018,105.4020,105.9800),('BS',2019,108.0280,107.5000),('BS',2020,108.0700,108.7500),('BS',2021,111.2090,113.2400),('BS',2022,117.4430,119.4400),('BT',2018,233.1510,232.7680),('BT',2019,239.7290,239.0530),('BT',2020,247.0140,249.9060),('BT',2021,267.3070,268.4600),('BT',2022,283.1790,286.0050),('BY',2018,780.0690,799.3980),('BY',2019,823.7510,837.2070),('BY',2020,869.3540,898.6280),('BY',2021,951.5310,988.2660),('BY',2022,1092.8000,1112.8100),('CD',2018,4944.1700,2226.1400),('CD',2019,5176.7900,2328.2800),('CD',2020,5764.7700,2695.1300),('CD',2021,6282.9800,2837.4500),('CD',2022,6848.1600,3185.9900),('CL',2018,100.0040,100.8470),('CL',2019,102.2530,103.8220),('CL',2020,105.3650,106.8620),('CL',2021,110.1320,114.4880),('CL',2022,122.9570,129.1110),('CN',2018,105.6730,106.4550),('CN',2019,108.7390,111.2020),('CN',2020,111.4470,111.3810),('CN',2021,112.3970,112.9300),('CN',2022,114.5050,114.9690),('CO',2018,99.0680,100.5500),('CO',2019,102.5570,104.3300),('CO',2020,105.1460,105.9900),('CO',2021,108.8280,111.9400),('CO',2022,119.9110,126.6200),('CR',2018,96.5630,97.6290),('CR',2019,98.5870,99.1150),('CR',2020,99.3010,100.0000),('CR',2021,101.0160,103.2990),('CR',2022,109.3750,111.4360),('GH',2018,218.9310,226.6760),('GH',2019,234.5710,244.2640),('GH',2020,257.7580,269.8450),('GH',2021,283.4710,303.9020),('GH',2022,373.8790,468.3130),('HU',2018,117.7990,118.6700),('HU',2019,121.7710,123.4550),('HU',2020,125.8120,126.7880),('HU',2021,132.2620,136.2290),('HU',2022,151.4760,169.5410),('ID',2018,99.9990,101.3100),('ID',2019,102.8190,103.9300),('ID',2020,104.9090,105.6800),('ID',2021,106.5460,107.6600),('ID',2022,111.0310,113.5900),('IN',2018,148.1710,139.9670),('IN',2019,155.2270,149.3000),('IN',2020,164.8120,156.5670),('IN',2021,173.8880,166.5000),('IN',2022,185.4910,176.9090),('KE',2018,384.4890,368.4170),('KE',2019,404.6350,394.7850),('KE',2020,426.0400,416.9620),('KE',2021,452.0680,440.8320),('KE',2022,486.6430,480.7740),('LK',2018,124.1250,126.3000),('LK',2019,129.4670,132.4000),('LK',2020,135.3670,138.0000),('LK',2021,143.4330,154.7000),('LK',2022,209.9330,243.2000),('LR',2018,576.6180,645.8330),('LR',2019,732.1290,776.6190),('LR',2020,856.2470,878.5300),('LR',2021,923.1700,926.4860),('LR',2022,993.2670,1011.5900),('MD',2018,53328.6100,23960.4900),('MD',2019,55912.6900,25757.5300),('MD',2020,58021.2300,25857.9800),('MD',2021,60979.7900,29462.5800),('MD',2022,78400.1300,38372.0700),('MG',2018,117.9270,121.8560),('MG',2019,124.5580,126.7000),('MG',2020,129.7750,132.4880),('MG',2021,137.3270,140.6470),('MG',2022,148.5880,156.3990),('MU',2018,103.2310,102.4000),('MU',2019,103.7000,103.3000),('MU',2020,106.3140,106.1000),('MU',2021,110.6070,113.2780),('MU',2022,122.5360,127.0900),('MX',2018,100.2520,103.0200),('MX',2019,103.8960,105.9340),('MX',2020,107.4260,109.2710),('MX',2021,113.5420,117.3080),('MX',2022,122.5100,126.4780),('MY',2018,120.6830,121.1000),('MY',2019,121.4830,122.3000),('MY',2020,120.1000,120.6000),('MY',2021,123.0750,124.5000),('MY',2022,127.2330,129.2000),('NA',2018,132.6500,135.0400),('NA',2019,137.5860,138.5350),('NA',2020,140.6260,141.8060),('NA',2021,145.7170,148.1790),('NA',2022,154.5710,158.4100),('NG',2018,261.5740,274.5700),('NG',2019,291.3860,307.4700),('NG',2020,329.9850,355.9100),('NG',2021,385.9270,411.5200),('NG',2022,458.6620,499.3600),('NP',2018,119.5970,121.2500),('NP',2019,125.1450,128.5500),('NP',2020,132.8410,134.6900),('NP',2021,137.6220,140.3300),('NP',2022,146.2290,151.6700),('PE',2018,129.0120,130.2250),('PE',2019,131.7680,132.6990),('PE',2020,134.1750,135.3180),('PE',2021,139.5140,144.0150),('PE',2022,150.4940,156.1930),('PL',2018,174.2980,170.9370),('PL',2019,178.2080,176.7490),('PL',2020,184.2260,180.9910),('PL',2021,193.6660,196.5560),('PL',2022,221.4720,229.1840),('PY',2018,101.8580,103.2000),('PY',2019,104.6670,106.1000),('PY',2020,106.5170,108.4000),('PY',2021,111.6170,115.8000),('PY',2022,122.5170,125.2000),('RO',2018,119.2540,120.4910),('RO',2019,123.8160,125.3670),('RO',2020,127.0920,127.9590),('RO',2021,133.5060,138.4360),('RO',2022,151.9300,161.0990),('RS',2018,193.3330,191.5920),('RS',2019,196.9090,195.1370),('RS',2020,200.0100,197.5850),('RS',2021,208.1810,213.1090),('RS',2022,233.1240,245.3350),('SV',2018,112.3590,112.3000),('SV',2019,112.4430,112.2900),('SV',2020,112.0270,112.2000),('SV',2021,115.9120,119.0600),('SV',2022,124.2530,127.7700),('TH',2018,99.2970,99.1000),('TH',2019,99.9980,99.9700),('TH',2020,99.1510,99.7000),('TH',2021,100.3720,101.8600),('TH',2022,106.4720,107.8600),('TY',2018,363.1250,393.8800),('TY',2019,418.2360,440.5000),('TY',2020,469.5910,504.8100),('TY',2021,561.6140,686.9500),('TY',2022,967.7110,1128.4500),('UA',2018,81436069.3200,85173122.1200),('UA',2019,87857948.1100,88625805.7500),('UA',2020,90264859.7800,93050297.9900),('UA',2021,98714214.8400,102369595.7900),('UA',2022,118637447.3500,129603229.2100),('VN',2018,265.8750,268.1550),('VN',2019,273.3110,282.1980),('VN',2020,282.1180,282.7260),('VN',2021,287.2880,287.8390),('VN',2022,296.4550,301.1010),('XK',2018,102.6090,103.4130),('XK',2019,105.3960,104.7020),('XK',2020,105.6260,104.7610),('XK',2021,109.1180,111.7450),('XK',2022,121.8570,125.3940),('ZM',2018,210.4120,216.9900),('ZM',2019,229.6660,242.4200),('ZM',2020,265.7980,289.0400),('ZM',2021,324.3290,336.3100),('ZM',2022,359.9830,369.6000),('ZW',2018,65.5260,86.0480),('ZW',2019,232.8070,534.4890),('ZW',2020,1530.0300,2397.6400),('ZW',2021,3037.8200,3853.9000),('ZW',2022,8912.9300,13248.1500);
/*!40000 ALTER TABLE `monetary` ENABLE KEYS */;
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