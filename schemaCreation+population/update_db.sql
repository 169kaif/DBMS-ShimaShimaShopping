-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: localhost    Database: ShimaShima
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Bill`
--

DROP TABLE IF EXISTS `Bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bill` (
  `bill_number` varchar(100) NOT NULL,
  `bill_generated` int NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  PRIMARY KEY (`bill_number`),
  KEY `bill_generated` (`bill_generated`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`bill_generated`) REFERENCES `Checkout` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bill`
--

LOCK TABLES `Bill` WRITE;
/*!40000 ALTER TABLE `Bill` DISABLE KEYS */;
INSERT INTO `Bill` VALUES ('0022601546',25,'Callie Dougal',9429838.00,'36716 Sundown Drive','CREDIT CARD'),('0124660320',58,'Anthe Harman',1814862.79,'22458 Prairie Rose Parkway','UPI'),('0173616518',18,'Granny Shaplin',9452110.00,'50 Bonner Way','NET BANKING'),('0279113765',16,'Palm Yurmanovev',8193527.00,'25 Chinook Center','DEBIT CARD'),('0280791410',82,'Baxter Ead',1815481.00,'7 Calypso Avenue','DEBIT CARD'),('0287329666',22,'Ikey Challiss',9822112.00,'73 Redwing Plaza','NET BANKING'),('0408072105',51,'Goldarina Naptin',6512595.53,'7527 Prairie Rose Avenue','CREDIT CARD'),('0457616369',3,'Cammy Baser',3087541.30,'0 7th Plaza','DEBIT CARD'),('0602746051',16,'Alaster Quincey',7937470.95,'8 7th Circle','NET BANKING'),('0670285463',66,'Lawry Andriessen',8520931.00,'38 Briar Crest Park','DEBIT CARD'),('0926217267',60,'Alfredo Priestnall',4372472.00,'178 Park Meadow Terrace','COD'),('0941809617',44,'Palm Yurmanovev',182360.88,'25 Chinook Center','CREDIT CARD'),('0970978715',2,'Hubert Domanski',3315651.00,'446 Lunder Hill','UPI'),('0973621737',95,'Roxine Sellars',3260620.75,'6 Tennessee Drive','CREDIT CARD'),('0974710792',9,'Karen St. Aubyn',5518086.14,'62337 Amoth Center','NET BANKING'),('0982212119',92,'Richard Boult',7922260.66,'359 Melody Hill','DEBIT CARD'),('1063651271',11,'Cheslie Trumpeter',7860745.18,'9 Manitowish Crossing','DEBIT CARD'),('1171920903',72,'Leann Bennen',4519759.53,'3573 Melby Pass','CREDIT CARD'),('1364693941',90,'Emelina Ledes',9791845.00,'51018 Lyons Hill','CREDIT CARD'),('1480674435',76,'Noam Brendeke',7970597.58,'5 Ryan Road','COD'),('1536470430',56,'Charla Glassford',4550610.00,'4 Mockingbird Center','CREDIT CARD'),('1601933339',61,'Emelina Ledes',8623901.00,'51018 Lyons Hill','COD'),('1634829883',60,'Eleni Wiggam',3649663.89,'07 Union Alley','NET BANKING'),('1755873441',23,'Rozele Harvie',144928.75,'3414 Longview Point','UPI'),('1821219694',90,'Baxter Ead',3203754.69,'7 Calypso Avenue','DEBIT CARD'),('1931013357',30,'Adamo Lemasney',9331582.00,'56 Fairview Terrace','UPI'),('2014252068',78,'Judith Grigore',9882229.00,'8 Prairieview Circle','CREDIT CARD'),('2018280198',38,'Adelheid Delucia',1959794.41,'1309 Gina Center','DEBIT CARD'),('2064534431',36,'Anthe Harman',542715.00,'22458 Prairie Rose Parkway','COD'),('2125539403',72,'Adamo Lemasney',2520460.00,'56 Fairview Terrace','NET BANKING'),('2188534085',26,'Regan Oughton',7244625.00,'6 Miller Way','DEBIT CARD'),('2263187952',54,'Maryellen Gallamore',7403820.57,'70332 Haas Pass','CREDIT CARD'),('2334673706',77,'Early Saxon',5247265.63,'057 Elgar Plaza','UPI'),('2429539667',13,'Alaster Quincey',7745777.41,'8 7th Circle','CREDIT CARD'),('2455103374',25,'Cammy Baser',7272806.70,'0 7th Plaza','UPI'),('2532209348',99,'Nonnah Snelgrove',3848843.54,'152 Canary Road','CREDIT CARD'),('2557875910',38,'Dev Berrington',6308223.00,'08 Bluejay Alley','DEBIT CARD'),('2632834171',8,'Palm Yurmanovev',3523305.98,'25 Chinook Center','DEBIT CARD'),('2714378900',35,'Robyn Cordeix',2896150.17,'288 Talmadge Way','DEBIT CARD'),('2714945015',95,'Callie Dougal',9213316.00,'36716 Sundown Drive','UPI'),('2770955241',25,'Kasper Nelle',4021104.96,'744 Evergreen Place','NET BANKING'),('2894031076',56,'Maryellen Gallamore',8167401.28,'70332 Haas Pass','DEBIT CARD'),('3292422175',77,'Eleni Wiggam',7550074.67,'07 Union Alley','NET BANKING'),('3382416271',97,'Kasper Nelle',5266790.60,'744 Evergreen Place','CREDIT CARD'),('3499789337',98,'Samara Synnot',2864291.53,'296 Forest Dale Trail','DEBIT CARD'),('3503443444',34,'Karen St. Aubyn',2402500.19,'62337 Amoth Center','UPI'),('3569513203',42,'Samara Synnot',4223818.00,'296 Forest Dale Trail','DEBIT CARD'),('3730691023',78,'Ermin Tison',7736180.11,'7694 Doe Crossing Place','COD'),('3747862497',53,'Alta Petrishchev',2740027.26,'1 Sunnyside Court','COD'),('3998718036',13,'Bondon Lewinton',5353995.92,'90664 Coleman Drive','DEBIT CARD'),('4137994161',58,'Fabe Chapiro',2860259.00,'13922 Eastwood Terrace','COD'),('4201798623',21,'Rozele Harvie',6925903.00,'3414 Longview Point','CREDIT CARD'),('4472933640',52,'Irwinn Shackle',6256759.63,'3846 Upham Trail','DEBIT CARD'),('4506127536',52,'Yvonne Getley',4002353.22,'831 Duke Court','COD'),('4681717258',1,'Lorie Bellenger',6615912.00,'61260 Shasta Circle','CREDIT CARD'),('4843939064',40,'Leland Halegarth',3164683.89,'9950 Ramsey Circle','UPI'),('4846078272',36,'Anneliese Rosenzveig',3213915.57,'1 Ronald Regan Way','DEBIT CARD'),('5078028846',75,'Caspar Walliker',8300638.67,'9 Grim Road','CREDIT CARD'),('5115402203',11,'Cleve Chipping',5637045.00,'5 Cambridge Center','CREDIT CARD'),('5217050217',18,'Callie Dougal',9550091.00,'36716 Sundown Drive','UPI'),('5227854475',48,'Pietro Possek',9525367.00,'51182 Buell Plaza','UPI'),('5233359308',85,'Bondon Lewinton',4039605.05,'90664 Coleman Drive','DEBIT CARD'),('5353848853',39,'Yvonne Getley',1721485.92,'831 Duke Court','DEBIT CARD'),('5408012921',31,'Caroline Banishevitz',1744631.86,'11 Elmside Drive','NET BANKING'),('5494875784',100,'Irwinn Shackle',2543216.97,'3846 Upham Trail','DEBIT CARD'),('5538201937',73,'Kasper Nelle',2559718.59,'744 Evergreen Place','CREDIT CARD'),('5715557593',14,'Morten Ammer',9307521.00,'483 Kropf Drive','UPI'),('5845827078',64,'Donnajean Dominelli',1675185.81,'3219 Hudson Place','COD'),('5942134553',58,'Cheslie Trumpeter',9717322.00,'9 Manitowish Crossing','NET BANKING'),('5970223166',50,'Judith Grigore',3421157.00,'8 Prairieview Circle','NET BANKING'),('5989801939',89,'Rhys Marshal',3424703.00,'87 Blue Bill Park Alley','COD'),('6255225046',90,'Bondon Lewinton',8756015.00,'90664 Coleman Drive','COD'),('6488181939',63,'Cleve Chipping',1055293.38,'5 Cambridge Center','CREDIT CARD'),('6580440406',35,'Ermin Tison',7440080.00,'7694 Doe Crossing Place','CREDIT CARD'),('6619957501',54,'Jobyna Ferre',6758155.00,'7 Briar Crest Alley','NET BANKING'),('6804388402',21,'Charla Glassford',3173731.55,'4 Mockingbird Center','NET BANKING'),('7104308865',37,'Pietro Possek',742995.84,'51182 Buell Plaza','NET BANKING'),('7146962644',72,'Piper Pilgrim',9949334.00,'828 Jay Way','UPI'),('7347962218',99,'Charla Glassford',972617.00,'4 Mockingbird Center','NET BANKING'),('7530409174',65,'Roxine Sellars',7967157.66,'6 Tennessee Drive','COD'),('7554410636',51,'Mauricio Lillee',594617.78,'98020 Warner Parkway','NET BANKING'),('7631878242',40,'Ferdy O\'Crotty',306670.47,'90 Nevada Avenue','COD'),('7661283409',16,'Donnajean Dominelli',8926663.00,'3219 Hudson Place','DEBIT CARD'),('7723529600',71,'Yvonne Getley',954984.04,'831 Duke Court','COD'),('7747199945',81,'Clevey Pirdue',3766389.00,'41 Longview Drive','NET BANKING'),('8144663551',35,'Gretchen Wiggall',3657946.74,'57 Coleman Pass','UPI'),('8192261484',89,'Barbabas Moller',7562740.00,'5232 Vernon Point','UPI'),('8277126530',25,'Goldarina Naptin',8033631.58,'7527 Prairie Rose Avenue','NET BANKING'),('8529863615',2,'Ruben Brunicke',3233031.01,'201 Mifflin Road','COD'),('8999508080',55,'Goldarina Naptin',298452.80,'7527 Prairie Rose Avenue','UPI'),('9179534813',35,'Katharine Pirolini',3795646.00,'21 Everett Pass','UPI'),('9314526917',12,'Callie Dougal',8776066.00,'36716 Sundown Drive','UPI'),('9321445188',23,'Chrysler Doerling',6626372.27,'45568 Barnett Pass','NET BANKING'),('9332053456',100,'Hubert Domanski',5286857.00,'446 Lunder Hill','UPI'),('9450358710',84,'Alley Prop',3596961.00,'7031 Troy Alley','DEBIT CARD'),('9640652547',16,'Roy Zarb',3222678.68,'830 Golf Parkway','CREDIT CARD'),('9652517232',63,'Courtnay Vernay',7758382.00,'9707 Leroy Parkway','UPI'),('9884542783',57,'Maryellen Gallamore',5578607.91,'70332 Haas Pass','CREDIT CARD'),('9889016354',69,'Callie Dougal',146044.24,'36716 Sundown Drive','COD'),('9989439486',72,'Nonnah Snelgrove',9696891.00,'152 Canary Road','NET BANKING');
/*!40000 ALTER TABLE `Bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart` (
  `cart_customer_id` int NOT NULL,
  `cost` int NOT NULL,
  PRIMARY KEY (`cart_customer_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_customer_id`) REFERENCES `Customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (1,2),(2,192),(3,169),(4,163),(5,147),(6,107),(7,177),(8,43),(9,83),(10,65),(11,77),(12,180),(13,54),(14,104),(15,182),(16,57),(17,39),(18,43),(19,200),(20,11),(21,177),(22,38),(23,34),(24,61),(25,89),(26,80),(27,172),(28,148),(29,104),(30,1),(31,31),(32,35),(33,75),(34,80),(35,118),(36,158),(37,35),(38,91),(39,34),(40,99),(41,22),(42,22),(43,20),(44,89),(45,189),(46,188),(47,108),(48,123),(49,27),(50,92),(51,53),(52,73),(53,127),(54,9),(55,15),(56,78),(57,138),(58,100),(59,192),(60,4),(61,78),(62,183),(63,85),(64,181),(65,7),(66,7),(67,130),(68,124),(69,186),(70,95),(71,107),(72,96),(73,179),(74,44),(75,21),(76,118),(77,32),(78,124),(79,176),(80,58),(81,194),(82,32),(83,89),(84,106),(85,45),(86,97),(87,98),(88,174),(89,87),(90,52),(91,139),(92,122),(93,1),(94,141),(95,182),(96,33),(97,60),(98,76),(99,123),(100,158);
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Catalogue`
--

DROP TABLE IF EXISTS `Catalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Catalogue` (
  `cproduct_id` int NOT NULL,
  `eproduct_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cproduct_id`),
  KEY `eproduct_id` (`eproduct_id`),
  KEY `quantity` (`quantity`),
  CONSTRAINT `catalogue_ibfk_1` FOREIGN KEY (`eproduct_id`) REFERENCES `Product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catalogue`
--

LOCK TABLES `Catalogue` WRITE;
/*!40000 ALTER TABLE `Catalogue` DISABLE KEYS */;
INSERT INTO `Catalogue` VALUES (1,56,40),(2,45,100),(3,31,100),(4,64,100),(5,71,100),(6,3,100),(7,12,100),(8,62,100),(9,42,100),(10,58,100),(11,60,100),(12,78,100),(13,2,100),(14,61,100),(15,19,100),(16,22,100),(17,68,100),(18,57,100),(19,51,100),(20,35,100),(21,18,100),(22,70,100),(23,54,100),(24,49,100),(25,32,100),(26,1,100),(27,62,100),(28,37,100),(29,50,100),(30,47,100),(31,90,100),(32,13,100),(33,72,100),(34,45,100),(35,54,100),(36,45,100),(37,54,100),(38,10,40),(39,78,100),(40,92,100),(41,85,100),(42,88,100),(43,58,100),(44,66,100),(45,73,100),(46,47,100),(47,23,100),(48,64,100),(49,32,100),(50,98,100),(51,35,100),(52,59,100),(53,46,100),(54,3,100),(55,6,100),(56,84,100),(57,89,100),(58,5,100),(59,2,100),(60,20,100),(61,91,100),(62,69,100),(63,71,100),(64,84,100),(65,79,100),(66,54,100),(67,16,100),(68,75,100),(69,95,100),(70,5,100),(71,26,100),(72,5,100),(73,76,100),(74,54,100),(75,31,100),(76,78,100),(77,95,100),(78,77,100),(79,89,100),(80,38,100),(81,63,100),(82,5,100),(83,9,100),(84,91,100),(85,66,100),(86,65,100),(87,68,100),(88,57,100),(89,61,100),(90,67,100),(91,72,100),(92,100,100),(93,12,100),(94,3,100),(95,32,100),(96,1,100),(97,66,100),(98,54,100),(99,9,100),(100,68,100);
/*!40000 ALTER TABLE `Catalogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Fruits','Fresh Fruits'),(2,'Vegetables','Fresh Vegetables'),(3,'Snacks','Bhujiyas,Chips,Papad etc'),(4,'Dairy','Milk,Ice Cream,Cream ,Ghee etc');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Checkout`
--

DROP TABLE IF EXISTS `Checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Checkout` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_orderinfo` int NOT NULL,
  `total_price` int NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `customer_orderinfo` (`customer_orderinfo`),
  CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`customer_orderinfo`) REFERENCES `Customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Checkout`
--

LOCK TABLES `Checkout` WRITE;
/*!40000 ALTER TABLE `Checkout` DISABLE KEYS */;
INSERT INTO `Checkout` VALUES (1,54,33695134,'959 Mcbride Pass'),(2,42,39866662,'15 Hovde Parkway'),(3,37,50490567,'3039 Ohio Plaza'),(4,82,69481871,'2782 Delaware Trail'),(5,2,4612721,'8 Surrey Point'),(6,98,70774,'5241 Surrey Place'),(7,30,39745244,'1485 Carioca Road'),(8,90,98914722,'003 Comanche Plaza'),(9,13,71112954,'6963 Schlimgen Drive'),(10,2,6287375,'8874 Elka Parkway'),(11,95,47495385,'05 Browning Point'),(12,56,95192057,'1541 Becker Circle'),(13,64,75413278,'4384 Randy Hill'),(14,74,89938153,'39420 Bobwhite Hill'),(15,85,1825808,'6 South Avenue'),(16,47,35928103,'751 Truax Road'),(17,62,57265842,'58226 Judy Avenue'),(18,53,99462792,'98 Burrows Point'),(19,29,95502648,'932 Hauk Parkway'),(20,84,75123547,'56363 Bonner Circle'),(21,47,80067830,'22 Carpenter Pass'),(22,28,70792877,'73 Forest Avenue'),(23,94,867608,'058 Schiller Point'),(24,89,61568700,'2 Talmadge Drive'),(25,92,66440693,'366 4th Hill'),(26,14,66558743,'5 Merchant Point'),(27,25,36914034,'54805 Sheridan Park'),(28,36,11360241,'75 Darwin Trail'),(29,39,90180590,'54 Pankratz Junction'),(30,88,27279174,'1100 Thierer Way'),(31,70,92633005,'8441 Towne Plaza'),(32,7,67803058,'36958 Northfield Trail'),(33,31,72373811,'5224 Waubesa Hill'),(34,19,44853049,'6300 Ramsey Street'),(35,48,37464853,'09329 Old Gate Trail'),(36,36,42730670,'7 Bowman Plaza'),(37,70,69621753,'79 3rd Crossing'),(38,60,22410266,'9645 Hoffman Court'),(39,65,79231963,'3732 Eagle Crest Way'),(40,14,63831163,'72925 Coleman Point'),(41,44,27703756,'6358 Stephen Hill'),(42,92,83306968,'2 Service Place'),(43,29,27623249,'97881 Jenna Street'),(44,15,39577023,'31044 Mandrake Avenue'),(45,5,39352132,'56928 Division Pass'),(46,89,76907774,'69133 Thompson Parkway'),(47,66,17041089,'6659 Lunder Crossing'),(48,4,13295440,'27 Comanche Junction'),(49,20,49929709,'9187 Morningstar Park'),(50,54,10411676,'67 Manley Crossing'),(51,69,70319284,'5 Atwood Trail'),(52,6,68752623,'19 Beilfuss Plaza'),(53,85,95029922,'6 Carpenter Circle'),(54,66,46552682,'273 Calypso Avenue'),(55,1,65888827,'3539 Thackeray Park'),(56,87,80739825,'1 Hallows Circle'),(57,46,18044499,'4 Vermont Point'),(58,97,3141075,'88 Dayton Park'),(59,17,48482022,'3880 Erie Crossing'),(60,40,18879858,'4652 Melvin Way'),(61,5,81294102,'2 Bunting Pass'),(62,92,77347427,'1 Gulseth Center'),(63,70,17789471,'6418 Prairie Rose Park'),(64,21,32354007,'980 Charing Cross Avenue'),(65,44,42896232,'6 Monica Terrace'),(66,21,92134065,'1 Eagan Road'),(67,79,41499237,'138 Holmberg Plaza'),(68,67,35843720,'9106 Bultman Plaza'),(69,73,12956661,'20 Nevada Terrace'),(70,35,65638856,'78470 Melrose Hill'),(71,36,84909252,'8480 Buena Vista Street'),(72,73,71477111,'380 Pawling Street'),(73,12,41860477,'5434 Ridgeway Circle'),(74,60,6352600,'06266 Artisan Road'),(75,96,18421782,'74005 Nelson Point'),(76,44,66521209,'884 1st Drive'),(77,56,99490187,'8027 Lakeland Way'),(78,99,3741899,'32519 Charing Cross Parkway'),(79,87,77512188,'13128 1st Way'),(80,10,60312555,'55 Vahlen Plaza'),(81,3,93958258,'7 Lillian Point'),(82,47,62480983,'9953 Fuller Avenue'),(83,97,40566627,'48813 Rieder Junction'),(84,38,54422324,'3075 Randy Way'),(85,7,25511806,'21 Kim Avenue'),(86,86,13797423,'0 Swallow Point'),(87,35,67139929,'2108 Crownhardt Terrace'),(88,22,53784520,'97 Becker Street'),(89,31,3303647,'137 North Place'),(90,74,51205247,'06336 Haas Crossing'),(91,84,88800570,'509 High Crossing Lane'),(92,3,60753702,'394 Debs Terrace'),(93,18,86924081,'44055 Harper Lane'),(94,51,65921626,'27032 Cottonwood Avenue'),(95,67,58605179,'607 Pierstorff Road'),(96,35,62576519,'2715 Badeau Drive'),(97,29,67398795,'159 Hagan Court'),(98,92,58636930,'2 Hauk Street'),(99,7,99752265,'74 Monica Court'),(100,61,77810762,'27 High Crossing Junction');
/*!40000 ALTER TABLE `Checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Darlene Bourthouloume','dbourthouloume0','hKkG53','2222403134','58913 Pine View Avenue'),(2,'Ephrayim MacCrann','emaccrann1','TyFrlJha','4591620644','01 Union Alley'),(3,'Lincoln Staley','lstaley2','vAFCwQtXbx','8263303939','5589 Pine View Point'),(4,'Early Saxon','esaxon3','lND41dIq','2699643448','057 Elgar Plaza'),(5,'Freeland Chalkly','fchalkly4','KXe1HMpo','9554156704','00 Autumn Leaf Hill'),(6,'Granny Shaplin','gshaplin5','i1GHUgP','7572396599','50 Bonner Way'),(7,'Morten Ammer','mammer6','3spAVBco','5797789569','483 Kropf Drive'),(8,'Cleve Chipping','cchipping7','RcmAcou','6144697592','5 Cambridge Center'),(9,'Robbyn Rigler','rrigler8','qGEOmv','5273298922','04770 Riverside Court'),(10,'Karen St. Aubyn','kst9','d97XVDNx','5559818804','62337 Amoth Center'),(11,'Dasha Frisdick','dfrisdicka','FXER8btVF','2924199548','37 2nd Lane'),(12,'Baxter Ead','beadb','13eUtxmm0u','4714398100','7 Calypso Avenue'),(13,'Gretchen Wiggall','gwiggallc','R1ogzGi','4728484093','57 Coleman Pass'),(14,'Cheslie Trumpeter','ctrumpeterd','C5oo1ur','6136618468','9 Manitowish Crossing'),(15,'Samara Synnot','ssynnote','L50vOMJvVem4','5228420961','296 Forest Dale Trail'),(16,'Mauricio Lillee','mlilleef','IY4PZLkBFss','2067864371','98020 Warner Parkway'),(17,'Benedikta Chilcotte','bchilcotteg','JtltudtR','9116093672','23559 Autumn Leaf Park'),(18,'Yvonne Getley','ygetleyh','eWhTeHXXSKDJ','6505215774','831 Duke Court'),(19,'Alaster Quincey','aquinceyi','vpgKhk','9281039629','8 7th Circle'),(20,'Murry Alves','malvesj','iFCLa5','6641755930','86 Pearson Parkway'),(21,'Gearalt Perel','gperelk','9NNPZf3','6314670894','0 Colorado Way'),(22,'Judith Grigore','jgrigorel','vZ1iHOTJKej','3923283432','8 Prairieview Circle'),(23,'Mathe Bartley','mbartleym','WgQFdME6juX','1085045129','2085 Manufacturers Pass'),(24,'Callie Dougal','cdougaln','haint9ENntc','2666166088','36716 Sundown Drive'),(25,'Jobyna Ferre','jferreo','TnU9ME9','2864040693','7 Briar Crest Alley'),(26,'Emelina Ledes','eledesp','RYtS45FY','8011719626','51018 Lyons Hill'),(27,'Piper Pilgrim','ppilgrimq','BeuNpmq9R','9066390331','828 Jay Way'),(28,'Jan MacQuaker','jmacquakerr','JxncpFgV5','9571826134','044 Corscot Lane'),(29,'Adamo Lemasney','alemasneys','Y9w2aBgyWeUC','2898375071','56 Fairview Terrace'),(30,'Eleni Wiggam','ewiggamt','hIQrXavCf','5356495017','07 Union Alley'),(31,'Derby Selwin','dselwinu','LaVKylo529SE','5812577216','1 Dovetail Road'),(32,'Rennie Baxter','rbaxterv','1SCzIvyj1avO','9201426813','8412 Eggendart Hill'),(33,'Rozele Harvie','rharview','Plwbx2AFT4e0','2343795766','3414 Longview Point'),(34,'Alley Prop','apropx','jLYE0Z','8095160298','7031 Troy Alley'),(35,'Ferdy O\'Crotty','focrottyy','U11H4FvY4','4866631240','90 Nevada Avenue'),(36,'Richard Boult','rboultz','0j3fI9y','6455400047','359 Melody Hill'),(37,'Barbabas Moller','bmoller10','TKK3S3DbYN','5476485885','5232 Vernon Point'),(38,'Roxine Sellars','rsellars11','uhk9Enlu','8581329783','6 Tennessee Drive'),(39,'Charla Glassford','cglassford12','pPQKnvztfobH','1396980833','4 Mockingbird Center'),(40,'Ruben Brunicke','rbrunicke13','GOxUEoM1Bpbz','1257835164','201 Mifflin Road'),(41,'Fabe Chapiro','fchapiro14','MTqLjcW2pU','9092533218','13922 Eastwood Terrace'),(42,'Leland Halegarth','lhalegarth15','eUCUZ7','1738999976','9950 Ramsey Circle'),(43,'Alix Dohms','adohms16','dVckxAtq1b','3825787825','73030 Elgar Parkway'),(44,'Leann Bennen','lbennen17','aa41BQk','8482531301','3573 Melby Pass'),(45,'Johnna Alty','jalty18','IAROfnpIGYsW','4976993414','571 Tomscot Lane'),(46,'Pietro Possek','ppossek19','GTq5f88u','2926572723','51182 Buell Plaza'),(47,'Arliene Baltzar','abaltzar1a','k3KBz13','2028525122','9728 Bobwhite Park'),(48,'Maryellen Gallamore','mgallamore1b','M29EvY1J2','1565695130','70332 Haas Pass'),(49,'Kasper Nelle','knelle1c','yylwrGq','3654073060','744 Evergreen Place'),(50,'Glennis Fidian','gfidian1d','jnyqYE8U0','7786102054','1 Valley Edge Hill'),(51,'Vonni MacFadyen','vmacfadyen1e','pjRtC7t4','1875090799','8461 Cambridge Trail'),(52,'Caroline Banishevitz','cbanishevitz1f','vNBZxtldF','6836373585','11 Elmside Drive'),(53,'Fania Bembrigg','fbembrigg1g','riO9ngPY','3982315622','6 Tony Terrace'),(54,'Caspar Walliker','cwalliker1h','OmPx4rwNjbzd','2738086406','9 Grim Road'),(55,'Ermin Tison','etison1i','fmgeSA','7851649008','7694 Doe Crossing Place'),(56,'Irwinn Shackle','ishackle1j','h7YijY','3339832766','3846 Upham Trail'),(57,'Cordelie Giottoi','cgiottoi1k','cXXBnJl0ZhkO','1164710819','06585 Kropf Circle'),(58,'Lawry Andriessen','landriessen1l','e1DIXS4LVNHt','7482897955','38 Briar Crest Park'),(59,'Lorie Bellenger','lbellenger1m','6d2Y8l','2406569114','61260 Shasta Circle'),(60,'Alfredo Priestnall','apriestnall1n','ojaH0I4r0wt','3117516196','178 Park Meadow Terrace'),(61,'Haleigh O\'Dwyer','hodwyer1o','WlqVljxq0','8679041281','18528 Columbus Place'),(62,'Adore Guinn','aguinn1p','Kduk0OFfDi','7806796353','6 Dovetail Center'),(63,'Nicko Lumm','nlumm1q','8pelDlZ','7143466369','76392 Burrows Avenue'),(64,'Donella Febre','dfebre1r','aa1qe9MEl','1026986813','61470 Vernon Crossing'),(65,'Ikey Challiss','ichalliss1s','DakZdCB','9511149187','73 Redwing Plaza'),(66,'Dev Berrington','dberrington1t','0u8IJzTX','4133930752','08 Bluejay Alley'),(67,'Nonnah Snelgrove','nsnelgrove1u','cFpt6QOz','5268630529','152 Canary Road'),(68,'Bondon Lewinton','blewinton1v','2xYVLeSXBln','2363782013','90664 Coleman Drive'),(69,'Courtnay Vernay','cvernay1w','JdyOMoEfDl9p','8972093900','9707 Leroy Parkway'),(70,'Robyn Cordeix','rcordeix1x','IU30tjtSQEoW','5819571758','288 Talmadge Way'),(71,'Anneliese Rosenzveig','arosenzveig1y','yuyS3LQJ','7924701830','1 Ronald Regan Way'),(72,'Aloin Malthus','amalthus1z','2Jp62Ft','4352748410','6 Sherman Terrace'),(73,'Gayle O\'Donnell','godonnell20','Rfl7JqNFbrWC','2955476328','87 Fieldstone Lane'),(74,'Donnajean Dominelli','ddominelli21','sxaKjAbf','4394072769','3219 Hudson Place'),(75,'Regan Oughton','roughton22','00yj5vnRF','5111263948','6 Miller Way'),(76,'Currey Bowkley','cbowkley23','TAE59zCfNTIV','7229606950','3 Elgar Court'),(77,'Gannie Gobbett','ggobbett24','uPdxA59lXCs','8394441665','67 Washington Crossing'),(78,'Rhys Marshal','rmarshal25','ikF4cCaCb','4041059598','87 Blue Bill Park Alley'),(79,'Noam Brendeke','nbrendeke26','oQE8l9xbQ','1145642927','5 Ryan Road'),(80,'Anette Dulake','adulake27','7XW9T92uW','5214685160','30 Texas Plaza'),(81,'Chrysler Doerling','cdoerling28','SPpB6ojB','7401312325','45568 Barnett Pass'),(82,'Clevey Pirdue','cpirdue29','LjzEnCvJaL','8294879602','41 Longview Drive'),(83,'Karyl Burborough','kburborough2a','lYzmnLc','4745860020','0120 Macpherson Street'),(84,'Berkley Such','bsuch2b','WO5lTHh','8634931750','72684 Arrowood Drive'),(85,'Adelheid Delucia','adelucia2c','PqKlrUG','2655137279','1309 Gina Center'),(86,'Cammy Baser','cbaser2d','6LuRmSRKooY','9092307440','0 7th Plaza'),(87,'Paolina Hazeley','phazeley2e','pMH5csO8F1i','8739176802','75 David Way'),(88,'Hubert Domanski','hdomanski2f','cLrNsg70LCy','8016492389','446 Lunder Hill'),(89,'Palm Yurmanovev','pyurmanovev2g','oDGCwbi','3994309785','25 Chinook Center'),(90,'Eden Traher','etraher2h','rkx0LcUeSoFV','2384432899','33 Ruskin Crossing'),(91,'Emalee Pleuman','epleuman2i','6WNudBm','4565557228','1 Meadow Vale Center'),(92,'Anthe Harman','aharman2j','nv6uQb','1229350183','22458 Prairie Rose Parkway'),(93,'Kaylil Bullene','kbullene2k','jJizlw0d','1448133015','404 Walton Circle'),(94,'Roy Zarb','rzarb2l','CoIU6FevY8','5779242861','830 Golf Parkway'),(95,'Marc Gascard','mgascard2m','GcyJqhVt','6226462701','88294 Loeprich Junction'),(96,'Katharine Pirolini','kpirolini2n','p1vegQ','7862786484','21 Everett Pass'),(97,'Alta Petrishchev','apetrishchev2o','qNLhhpJ','5805099132','1 Sunnyside Court'),(98,'Goldarina Naptin','gnaptin2p','umAZMgBFYWp','7575178642','7527 Prairie Rose Avenue'),(99,'Antonina Jedraszek','ajedraszek2q','bxrnc6','9012718623','3456 Northport Circle'),(100,'Roi Stegell','rstegell2r','rCzFhHFN2AU','4219440198','46998 Morrow Trail');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `superemployee_id` int DEFAULT NULL,
  `manage_cproduct_id` int NOT NULL,
  `employee_username` varchar(50) NOT NULL,
  `employee_password` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_username` (`employee_username`),
  KEY `superemployee_id` (`superemployee_id`),
  KEY `manage_cproduct_id` (`manage_cproduct_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`superemployee_id`) REFERENCES `Employee` (`employee_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`manage_cproduct_id`) REFERENCES `Catalogue` (`cproduct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,NULL,46,'bromanetti0','UIy6Wa'),(2,NULL,61,'nbootherstone1','S7yZ8ZbAA6i'),(3,NULL,24,'ethirtle2','GbMSUVRfTt9'),(4,NULL,13,'dpetschel3','0kxM15'),(5,NULL,52,'wmclanachan4','9OLptx8M'),(6,NULL,68,'cperrins5','NniUZA6i'),(7,NULL,97,'adumbare6','BzUwafQ'),(8,NULL,82,'mgavahan7','K3JesKpku1Vm'),(9,NULL,63,'jdotterill8','5BgCiu0jTU'),(10,NULL,88,'dchezelle9','WwYJpLPVg'),(11,NULL,20,'lluffa','ZYrfT5F5QG9n'),(12,NULL,58,'nskedb','GCDEJJBF'),(13,NULL,25,'skondratowiczc','76R4hgOc'),(14,NULL,30,'tdoerrlingd','tiK99GOpK'),(15,NULL,9,'mpothecarye','pppNHB6g'),(16,NULL,35,'slumlyf','I9T1kEgH'),(17,NULL,61,'fbowbrickg','X1XwTiCHCiI'),(18,NULL,95,'pvalanceh','mGBeyUV9RF'),(19,NULL,67,'jsmaridgei','Nu86rQ'),(20,NULL,9,'ddumelowj','F4cArClAOcvT'),(21,NULL,87,'hnoonek','uQFoPTnFbFLA'),(22,NULL,67,'dperriel','OY8tTY2'),(23,NULL,100,'bniavem','FTlKrIqo2'),(24,NULL,81,'wpesikn','Y2ZMV2UgK0'),(25,NULL,86,'vlongcastero','lR3Fx8n1gr'),(26,NULL,95,'lblanshardp','Mqq2ZC'),(27,NULL,62,'jwankaq','DKgYbZh7ec'),(28,NULL,19,'edmitrichenkor','t1Em3Z'),(29,NULL,28,'elippitts','bOiZ5YQp'),(30,NULL,29,'trothamt','7gulc1T'),(31,NULL,59,'gheynenu','phsKS2zP'),(32,NULL,51,'amollerv','nCSsiMaTz'),(33,NULL,82,'csivillw','fj0B1RNvS'),(34,NULL,35,'ihackworthyx','0Zg6EdNfN'),(35,NULL,87,'rcrometty','03OqIfDCHn'),(36,NULL,69,'mspellwardz','Enrmvq'),(37,NULL,80,'ggrzegorzewicz10','99xCAIWs'),(38,NULL,48,'ndyers11','U5aHF1GrJDJ'),(39,NULL,37,'qogara12','OT82UZsqZ7'),(40,NULL,85,'ebamblett13','cFVIQWd'),(41,NULL,79,'seisikowitch14','n4iWfi'),(42,NULL,97,'lfurman15','vPot993'),(43,NULL,56,'drablin16','9ZZmtm5GTWDo'),(44,NULL,65,'sjays17','eWn1603UZki'),(45,NULL,88,'gmcgrath18','6dpTDDjK'),(46,NULL,94,'hvigrass19','q3aeT3C1mqB'),(47,NULL,53,'thercules1a','Mbogdfw'),(48,NULL,73,'tstreatley1b','Efd2Qcx9'),(49,NULL,73,'kfazzioli1c','KD0oqUeXaF'),(50,NULL,26,'qsawfoot1d','V1TVxx'),(51,NULL,26,'mgillson1e','qdjiSHbOr0tE'),(52,NULL,92,'sbote1f','CfO7FHFHoA'),(53,NULL,48,'mstillert1g','DDQ7yU'),(54,NULL,3,'xhovie1h','xkDgpUuaCfN'),(55,NULL,57,'aattewell1i','Vcd4xVqgs'),(56,NULL,73,'sscallan1j','jMQEzhrfLeJ'),(57,NULL,19,'rpeddie1k','KN6mGLLV'),(58,NULL,77,'dinnis1l','on8axXY3'),(59,NULL,64,'tbradwell1m','KFy6VOc'),(60,NULL,18,'fmussilli1n','zqlEat3'),(61,NULL,31,'pskelding1o','hbFkL9IUGs'),(62,NULL,42,'plago1p','x5fmqFo'),(63,NULL,71,'kdeblasio1q','dEs7LG'),(64,NULL,21,'atull1r','NX1dYYL37'),(65,NULL,77,'mwatt1s','b0uhog'),(66,NULL,53,'ajarred1t','m9mXUXjbRz'),(67,NULL,87,'tpont1u','ydIjvj9Lui'),(68,NULL,56,'celan1v','uDJu8m61I'),(69,NULL,96,'bjovasevic1w','XAJzN74Wz0g'),(70,NULL,35,'kbernardelli1x','5B4UWXoVmtX'),(71,NULL,22,'hbalk1y','aGdVXj'),(72,NULL,34,'ohardwicke1z','6VeYC4tb'),(73,NULL,70,'wishaki20','5TEGIiErK2'),(74,NULL,9,'toverstone21','YCZ6XuOK'),(75,NULL,39,'dpessold22','NENtaAR'),(76,NULL,54,'tcolleran23','EvbOWRth8w'),(77,NULL,53,'zhassur24','BRKF9cF'),(78,NULL,66,'gwroth25','bKL7VE38O'),(79,NULL,79,'kshrimpling26','7xBmfNIHSzX'),(80,NULL,32,'hmcswan27','Dr4NJjSA'),(81,NULL,27,'ozammett28','Ko1VHd'),(82,NULL,22,'mfriel29','MzzDfgot5'),(83,NULL,91,'ghullbrook2a','KUe7zY'),(84,NULL,14,'ccorby2b','pIkcuMX'),(85,NULL,97,'sleupold2c','PmB6Qlal'),(86,NULL,62,'mstobbes2d','GMj249y7VGL'),(87,NULL,98,'aguyon2e','plFxdVRh7fRZ'),(88,NULL,83,'hgatchell2f','6v8VUuTXN'),(89,NULL,19,'esussans2g','DWAbEmfANa'),(90,NULL,45,'wgeddis2h','fEzjcg'),(91,NULL,7,'nwilkie2i','NU71TnNtM0Y'),(92,NULL,33,'cwildbore2j','plOuSbX'),(93,NULL,77,'ldanielian2k','oPpOR0lSdh0'),(94,NULL,92,'lserraillier2l','ys2WlTB1UDV'),(95,NULL,34,'mabercrombie2m','XueHgr4FZR'),(96,NULL,14,'cbrimm2n','yENFdnp'),(97,NULL,60,'kgalliard2o','qTvVpf1vqy'),(98,NULL,87,'egreenig2p','UpIMQH2AE'),(99,NULL,44,'cjarrad2q','63V27JDR6eSU'),(100,NULL,20,'sgrayshan2r','gRX6T4G');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_contained`
--

DROP TABLE IF EXISTS `items_contained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_contained` (
  `ic_product_id` int NOT NULL,
  `ic_name` varchar(50) NOT NULL,
  `ic_cost` int NOT NULL,
  `ic_quantity` int DEFAULT NULL,
  PRIMARY KEY (`ic_product_id`),
  CONSTRAINT `items_contained_ibfk_1` FOREIGN KEY (`ic_product_id`) REFERENCES `Checkout` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_contained`
--

LOCK TABLES `items_contained` WRITE;
/*!40000 ALTER TABLE `items_contained` DISABLE KEYS */;
INSERT INTO `items_contained` VALUES (1,'MOTHER DAIRY MILK',47,1),(2,'ALOO BHUJIYA',49,1),(3,'ICE CREAM',84,1),(4,'UNCLE CHIPS',41,1),(5,'UNCLE CHIPS',85,1),(6,'ORANGE',62,1),(7,'ORANGE',1,1),(8,'STRAWBERRY',51,1),(9,'ALOO BHUJIYA',3,1),(10,'KURKURE',60,1),(11,'STRAWBERRY',75,1),(12,'ORANGE',4,1),(13,'ALOO BHUJIYA',12,1),(14,'CARROT',20,1),(15,'ONION',90,1),(16,'AMUL MILK',92,1),(17,'ALOO BHUJIYA',97,1),(18,'MOTHER DAIRY MILK',34,1),(19,'UNCLE CHIPS',75,1),(20,'STRAWBERRY',42,1),(21,'ICE CREAM',91,1),(22,'ORANGE',75,1),(23,'KURKURE',82,1),(24,'CARROT',65,1),(25,'ICE CREAM',96,1),(26,'UNCLE CHIPS',42,1),(27,'ICE CREAM',61,1),(28,'AMUL MILK',60,1),(29,'ALOO BHUJIYA',12,1),(30,'ICE CREAM',4,1),(31,'STRAWBERRY',9,1),(32,'UNCLE CHIPS',37,1),(33,'MOTHER DAIRY MILK',60,1),(34,'AMUL MILK',66,1),(35,'ONION',37,1),(36,'ORANGE',97,1),(37,'KURKURE',93,1),(38,'UNCLE CHIPS',37,1),(39,'ICE CREAM',22,1),(40,'KURKURE',42,1),(41,'KURKURE',67,1),(42,'MOTHER DAIRY MILK',14,1),(43,'ORANGE',14,1),(44,'ORANGE',69,1),(45,'ICE CREAM',48,1),(46,'UNCLE CHIPS',26,1),(47,'ORANGE',91,1),(48,'ALOO BHUJIYA',47,1),(49,'ORANGE',56,1),(50,'ORANGE',47,1),(51,'MOTHER DAIRY MILK',37,1),(52,'KURKURE',37,1),(53,'ONION',56,1),(54,'KURKURE',12,1),(55,'ICE CREAM',4,1),(56,'UNCLE CHIPS',19,1),(57,'ICE CREAM',92,1),(58,'AMUL MILK',80,1),(59,'UNCLE CHIPS',11,1),(60,'UNCLE CHIPS',55,1),(61,'ICE CREAM',14,1),(62,'MOTHER DAIRY MILK',86,1),(63,'ALOO BHUJIYA',24,1),(64,'ICE CREAM',9,1),(65,'STRAWBERRY',32,1),(66,'ONION',56,1),(67,'ORANGE',39,1),(68,'ORANGE',79,1),(69,'STRAWBERRY',59,1),(70,'UNCLE CHIPS',60,1),(71,'ORANGE',3,1),(72,'ALOO BHUJIYA',93,1),(73,'CARROT',75,1),(74,'ICE CREAM',93,1),(75,'ALOO BHUJIYA',62,1),(76,'STRAWBERRY',85,1),(77,'ONION',69,1),(78,'ICE CREAM',77,1),(79,'ORANGE',37,1),(80,'ICE CREAM',56,1),(81,'ORANGE',26,1),(82,'MOTHER DAIRY MILK',75,1),(83,'MOTHER DAIRY MILK',92,1),(84,'AMUL MILK',54,1),(85,'ORANGE',30,1),(86,'ALOO BHUJIYA',6,1),(87,'MOTHER DAIRY MILK',34,1),(88,'AMUL MILK',54,1),(89,'ALOO BHUJIYA',22,1),(90,'ICE CREAM',54,1),(91,'AMUL MILK',12,1),(92,'ALOO BHUJIYA',70,1),(93,'STRAWBERRY',77,1),(94,'ORANGE',55,1),(95,'AMUL MILK',47,1),(96,'KURKURE',26,1),(97,'AMUL MILK',62,1),(98,'STRAWBERRY',77,1),(99,'AMUL MILK',95,1),(100,'ORANGE',38,1);
/*!40000 ALTER TABLE `items_contained` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `cquantity` int DEFAULT NULL,
  `composed_of` int DEFAULT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `cost` int NOT NULL,
  `restock_trigger` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `composed_of` (`composed_of`),
  KEY `cquantity` (`cquantity`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`composed_of`) REFERENCES `products_contained` (`pc_product_id`),
  CONSTRAINT `quantity_from_catalogue` FOREIGN KEY (`cquantity`) REFERENCES `catalogue` (`quantity`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,40,1,'ORANGE','Fruits',56,6),(2,40,2,'UNCLE CHIPS','Snacks',6,6),(3,40,3,'ALOO BHUJIYA','Snacks',34,8),(4,NULL,4,'ICE CREAM','Dairy',14,8),(5,40,5,'KURKURE','Snacks',3,10),(6,40,6,'AMUL MILK','Dairy',77,6),(7,NULL,7,'ICE CREAM','Dairy',83,10),(8,NULL,8,'ORANGE','Fruits',3,10),(9,40,9,'ICE CREAM','Dairy',47,10),(10,40,10,'ICE CREAM','Dairy',14,5),(11,NULL,11,'STRAWBERRY','Fruits',30,5),(12,40,12,'ICE CREAM','Dairy',66,9),(13,40,13,'CARROT','Vegetables',18,5),(14,NULL,14,'UNCLE CHIPS','Snacks',49,8),(15,NULL,15,'KURKURE','Snacks',37,5),(16,40,16,'ICE CREAM','Dairy',82,10),(17,NULL,17,'ALOO BHUJIYA','Snacks',59,5),(18,40,18,'ONION','Vegetables',96,8),(19,40,19,'CARROT','Vegetables',82,6),(20,40,20,'UNCLE CHIPS','Snacks',9,7),(21,NULL,21,'ICE CREAM','Dairy',41,10),(22,40,22,'ONION','Vegetables',14,9),(23,40,23,'MOTHER DAIRY MILK','Dairy',42,6),(24,NULL,24,'ORANGE','Fruits',45,6),(25,NULL,25,'STRAWBERRY','Fruits',30,9),(26,40,26,'ALOO BHUJIYA','Snacks',30,5),(27,NULL,27,'ONION','Vegetables',47,5),(28,NULL,28,'UNCLE CHIPS','Snacks',24,7),(29,NULL,29,'MOTHER DAIRY MILK','Dairy',54,6),(30,NULL,30,'ICE CREAM','Dairy',19,7),(31,40,31,'KURKURE','Snacks',51,9),(32,40,32,'STRAWBERRY','Fruits',4,7),(33,NULL,33,'AMUL MILK','Dairy',80,8),(34,NULL,34,'AMUL MILK','Dairy',67,8),(35,40,35,'ALOO BHUJIYA','Snacks',15,10),(36,NULL,36,'UNCLE CHIPS','Snacks',75,9),(37,40,37,'MOTHER DAIRY MILK','Dairy',91,5),(38,40,38,'ALOO BHUJIYA','Snacks',32,7),(39,NULL,39,'ICE CREAM','Dairy',3,10),(40,NULL,40,'CARROT','Vegetables',37,9),(41,NULL,41,'UNCLE CHIPS','Snacks',85,9),(42,40,42,'ICE CREAM','Dairy',37,7),(43,NULL,43,'ONION','Vegetables',94,10),(44,NULL,44,'ONION','Vegetables',51,5),(45,40,45,'ALOO BHUJIYA','Snacks',86,5),(46,40,46,'ICE CREAM','Dairy',79,9),(47,40,47,'AMUL MILK','Dairy',70,5),(48,NULL,48,'ICE CREAM','Dairy',84,10),(49,40,49,'UNCLE CHIPS','Snacks',100,5),(50,40,50,'ORANGE','Fruits',4,8),(51,40,51,'UNCLE CHIPS','Snacks',66,5),(52,NULL,52,'ALOO BHUJIYA','Snacks',1,10),(53,NULL,53,'CARROT','Vegetables',5,10),(54,40,54,'AMUL MILK','Dairy',61,8),(55,NULL,55,'CARROT','Vegetables',75,5),(56,40,56,'ORANGE','Fruits',95,6),(57,40,57,'KURKURE','Snacks',55,8),(58,40,58,'KURKURE','Snacks',80,7),(59,40,59,'UNCLE CHIPS','Snacks',75,8),(60,40,60,'ONION','Vegetables',39,10),(61,40,61,'KURKURE','Snacks',9,8),(62,40,62,'ONION','Vegetables',36,5),(63,40,63,'ONION','Vegetables',62,10),(64,40,64,'MOTHER DAIRY MILK','Dairy',92,6),(65,40,65,'ICE CREAM','Dairy',26,10),(66,40,66,'STRAWBERRY','Fruits',65,7),(67,40,67,'ICE CREAM','Dairy',72,7),(68,40,68,'ALOO BHUJIYA','Snacks',60,6),(69,40,69,'MOTHER DAIRY MILK','Dairy',3,5),(70,40,70,'MOTHER DAIRY MILK','Dairy',77,6),(71,40,71,'ORANGE','Fruits',91,10),(72,40,72,'KURKURE','Snacks',51,8),(73,40,73,'KURKURE','Snacks',20,6),(74,NULL,74,'STRAWBERRY','Fruits',56,10),(75,40,75,'ALOO BHUJIYA','Snacks',15,10),(76,40,76,'AMUL MILK','Dairy',90,5),(77,40,77,'KURKURE','Snacks',41,9),(78,40,78,'ICE CREAM','Dairy',95,9),(79,40,79,'AMUL MILK','Dairy',59,7),(80,NULL,80,'AMUL MILK','Dairy',79,10),(81,NULL,81,'CARROT','Vegetables',37,10),(82,NULL,82,'KURKURE','Snacks',16,10),(83,NULL,83,'MOTHER DAIRY MILK','Dairy',48,5),(84,40,84,'MOTHER DAIRY MILK','Dairy',22,7),(85,40,85,'KURKURE','Snacks',11,10),(86,NULL,86,'ICE CREAM','Dairy',38,5),(87,NULL,87,'ORANGE','Fruits',6,7),(88,40,88,'STRAWBERRY','Fruits',97,6),(89,40,89,'ICE CREAM','Dairy',12,7),(90,40,90,'UNCLE CHIPS','Snacks',27,8),(91,40,91,'CARROT','Vegetables',4,5),(92,40,92,'ICE CREAM','Dairy',76,5),(93,NULL,93,'ORANGE','Fruits',54,5),(94,NULL,94,'AMUL MILK','Dairy',70,9),(95,40,95,'UNCLE CHIPS','Snacks',87,5),(96,NULL,96,'ONION','Vegetables',93,6),(97,NULL,97,'ALOO BHUJIYA','Snacks',69,8),(98,40,98,'ORANGE','Fruits',9,5),(99,NULL,99,'ORANGE','Fruits',47,9),(100,40,100,'ICE CREAM','Dairy',42,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `autorestock` AFTER UPDATE ON `product` FOR EACH ROW begin
                    update Catalogue c set c.quantity=100;
                end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `products_contained`
--

DROP TABLE IF EXISTS `products_contained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_contained` (
  `pc_product_id` int NOT NULL,
  `pc_quantity` int NOT NULL,
  `pc_cost_of_product` int NOT NULL,
  PRIMARY KEY (`pc_product_id`),
  CONSTRAINT `products_contained_ibfk_1` FOREIGN KEY (`pc_product_id`) REFERENCES `Cart` (`cart_customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_contained`
--

LOCK TABLES `products_contained` WRITE;
/*!40000 ALTER TABLE `products_contained` DISABLE KEYS */;
INSERT INTO `products_contained` VALUES (1,100,56),(2,10,6),(3,10,34),(4,10,14),(5,10,3),(6,10,77),(7,10,83),(8,10,3),(9,10,47),(10,30,14),(11,10,30),(12,10,66),(13,10,18),(14,10,49),(15,10,37),(16,10,82),(17,10,59),(18,10,96),(19,10,82),(20,10,9),(21,10,41),(22,10,14),(23,10,42),(24,10,45),(25,10,30),(26,10,30),(27,10,47),(28,10,24),(29,10,54),(30,10,19),(31,10,51),(32,10,4),(33,10,80),(34,10,67),(35,10,15),(36,10,75),(37,10,91),(38,10,32),(39,10,3),(40,10,37),(41,10,85),(42,10,37),(43,10,94),(44,10,51),(45,10,86),(46,10,79),(47,10,70),(48,10,84),(49,10,100),(50,10,4),(51,10,66),(52,10,1),(53,10,5),(54,10,61),(55,10,75),(56,10,95),(57,10,55),(58,10,80),(59,10,75),(60,10,39),(61,10,9),(62,10,36),(63,10,62),(64,10,92),(65,10,26),(66,10,65),(67,10,72),(68,10,60),(69,10,3),(70,10,77),(71,10,91),(72,10,51),(73,10,20),(74,10,56),(75,10,15),(76,10,90),(77,10,41),(78,10,95),(79,10,59),(80,10,79),(81,10,37),(82,10,16),(83,10,48),(84,10,22),(85,10,11),(86,10,38),(87,10,6),(88,10,97),(89,10,12),(90,10,27),(91,10,4),(92,10,76),(93,10,54),(94,10,70),(95,10,87),(96,10,93),(97,10,69),(98,10,9),(99,10,47),(100,10,42);
/*!40000 ALTER TABLE `products_contained` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adding_item` AFTER INSERT ON `products_contained` FOR EACH ROW update product set product.cquantity=product.cquantity-products_contained.pc_quantity where new.pc_product_id=product.composed_of */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `change_quant` AFTER UPDATE ON `products_contained` FOR EACH ROW begin
        update Catalogue c set c.quantity=c.quantity-NEW.pc_quantity where c.eproduct_id=NEW.pc_product_id;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `autorestock_1` AFTER UPDATE ON `products_contained` FOR EACH ROW begin
                    update Catalogue c set c.quantity=100 where c.quantity<=0;
                end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 17:27:39
