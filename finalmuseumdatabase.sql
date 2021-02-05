-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: museuminventory
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibition` (
  `exid` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`exid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (1,'jkdwgaVD','2020-09-06','2020-09-06'),(2,'evening','2020-12-03','2020-12-03'),(3,'paintings','2020-03-02','2020-03-02'),(4,'scultures','2020-03-04','2020-03-04'),(5,'paintings','2020-03-04','2020-03-04'),(6,'paintings','2020-03-04','2020-03-04'),(7,'paintings','2020-03-04','2020-03-04'),(8,'paintings','2020-03-04','2020-03-04');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newartist`
--

DROP TABLE IF EXISTS `newartist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newartist` (
  `id` int NOT NULL,
  `mainstyle` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `contact` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newartist`
--

LOCK TABLES `newartist` WRITE;
/*!40000 ALTER TABLE `newartist` DISABLE KEYS */;
INSERT INTO `newartist` VALUES (1,'Bohemian','John Stellar','Germany',145499),(2,'Indian','Anuj Shah','India ',945347),(3,'Modernism','Grant Wood','Russia',123453),(4,'Abstract Art','Willem de Kooning ','Autralia',544321),(5,'Korean','Elliot ','South Korea',654235),(6,'Cubism','Frida Kahlo','Mexico',123451),(7,'Japanese','Akemi Takahashi','Japan',687687),(8,'Philipino','Fernando Amorsolo ','Philippines',123414),(9,'Surrealism','David Bell','United Kigdom',123456),(10,'Indian','Mohan Kumar','India',908765),(11,'Abstract Art','Jackson Pollock','United States of America',321456),(12,'Modernism','Ram Verma','India',123455),(13,'Chinese','Gu Kaizhi ','China',625142),(14,'Equestrian Sculpture','Deborah Butterfield','United States of America',625142),(15,'Neoclassical Sculpture','Jean Auguste Dominique Ingres','Unknown',625142),(16,'Cubism','Pablo Picasso','Spanish',534132),(17,'Egyptian','Ghada Amer','Egypt',142325),(19,'Abstract Art','Mark Rothko','Unknown',87652),(20,'Mannerist Sculpture','Bronzino','Unknown',12345),(21,'Cubsim','Srarah John','Autria',123456),(23,'Mannerist','Jane','Japan',876524),(47,'Surrealism ','Raj Verma ','India',12345),(48,'Egyptian','John','Egypt',876543);
/*!40000 ALTER TABLE `newartist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newobject`
--

DROP TABLE IF EXISTS `newobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newobject` (
  `objid` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `id` int DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `id_idx` (`id`),
  CONSTRAINT `artistid` FOREIGN KEY (`id`) REFERENCES `newartist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newobject`
--

LOCK TABLES `newobject` WRITE;
/*!40000 ALTER TABLE `newobject` DISABLE KEYS */;
INSERT INTO `newobject` VALUES (1,'Title 1','2016','vgDVG','Lane 4',1),(2,'Title 2','2000','JKEBfu','Lane 4',2),(3,'Title 3','2010','null','Lane 5',10),(4,'Title 4','1887','HEBFV','Lane 1',3),(5,'Title 5','1942','qeyifvi','Lane 3',4),(6,'Title 6','1997','hvedyv','Lane 4',5),(7,'Title 7','1995','qvfquvw','Lane 2',6),(8,'Title 8','1852','vevfiye','Lane 4',7),(9,'Title 9','1642','hqfvyqi','Lane 1',8),(10,'Title 10','1779','hvefi','Lane 3',9),(12,'Title 12','2020','Lorem Ipsum','Lane 3',12),(13,'Title 13','2020','Lorem Ipsum','Lane 4',13);
/*!40000 ALTER TABLE `newobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obj_exhibition`
--

DROP TABLE IF EXISTS `obj_exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obj_exhibition` (
  `obj_id` int NOT NULL,
  `exb_id` int NOT NULL,
  PRIMARY KEY (`obj_id`,`exb_id`),
  KEY `exb_id_idx` (`exb_id`),
  CONSTRAINT `exb_id` FOREIGN KEY (`exb_id`) REFERENCES `exhibition` (`exid`),
  CONSTRAINT `obj_id` FOREIGN KEY (`obj_id`) REFERENCES `newobject` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obj_exhibition`
--

LOCK TABLES `obj_exhibition` WRITE;
/*!40000 ALTER TABLE `obj_exhibition` DISABLE KEYS */;
INSERT INTO `obj_exhibition` VALUES (1,1),(2,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(1,2),(5,2),(6,2),(9,2),(1,3),(1,4),(2,4);
/*!40000 ALTER TABLE `obj_exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paintings`
--

DROP TABLE IF EXISTS `paintings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paintings` (
  `painttype` varchar(45) DEFAULT NULL,
  `paintname` varchar(45) DEFAULT NULL,
  `paintstyle` varchar(45) DEFAULT NULL,
  `paintobj` int NOT NULL,
  PRIMARY KEY (`paintobj`),
  KEY `objid_idx` (`paintobj`),
  CONSTRAINT `objid` FOREIGN KEY (`paintobj`) REFERENCES `newobject` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paintings`
--

LOCK TABLES `paintings` WRITE;
/*!40000 ALTER TABLE `paintings` DISABLE KEYS */;
INSERT INTO `paintings` VALUES ('type 1','Mona Lisa','Contemporary',2),('type 2','Null','Contemporary',3),('type 3','Null','Contemporary',7),('type 4','Null','Contemporary',9),('type 5','Null','Contemporary',10),('Type 2','Mona Lisa','Modernism ',12);
/*!40000 ALTER TABLE `paintings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `username` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `security` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('ali','Ali','123456','What is your mother tongue?','Urdu'),('jeanie','Jeannie','123456','What is your mother tongue?','Korean'),('john','John Doe','123456','What is your mother tongue?','English'),('lub','lubna','1234','What is your nick name?','lubsy'),('nfbkh','bdhdhdsa','bjgdu','What is your school name?','sshs'),('raj','Raj Verma ','12345','What is your school name?','St John'),('rhea','Rhea ','12345','What is your school name?','St john ');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sculpture`
--

DROP TABLE IF EXISTS `sculpture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sculpture` (
  `name` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `material` varchar(45) NOT NULL,
  `typestyle` varchar(45) DEFAULT NULL,
  `sculpobjl` int NOT NULL,
  PRIMARY KEY (`sculpobjl`),
  KEY `objid_idx` (`sculpobjl`),
  CONSTRAINT `sculpobject` FOREIGN KEY (`sculpobjl`) REFERENCES `newobject` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sculpture`
--

LOCK TABLES `sculpture` WRITE;
/*!40000 ALTER TABLE `sculpture` DISABLE KEYS */;
INSERT INTO `sculpture` VALUES ('AI1','12.5','45','Granite','Paleolithic',1),('AI2','13','50','Glass','Roman',5),('AI3','13','55','Mortar','Hellenistic',6),('AI4','14','60','Bone China','Equestrian',7),('AI5','9','12','Porcelain','Mannerist',8);
/*!40000 ALTER TABLE `sculpture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'museuminventory'
--

--
-- Dumping routines for database 'museuminventory'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 20:59:30
