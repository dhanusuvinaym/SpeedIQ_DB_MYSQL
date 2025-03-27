-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: speediq-db.cjimq6ygeip1.ap-southeast-2.rds.amazonaws.com    Database: speediq
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'dhanusum','March@2025','2025-03-24 20:31:02','2025-03-24 20:31:02'),(2,'dhanusuvinaymindala','Vinay','2025-03-24 22:47:32','2025-03-24 22:55:34'),(6,'htsnaresh','March@2026','2025-03-27 14:33:03','2025-03-27 14:33:03');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analysis`
--

DROP TABLE IF EXISTS `analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `option_selected` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_analysis` (`user_id`),
  KEY `fk_question_id` (`question_id`),
  CONSTRAINT `fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `fk_user_id_analysis` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis`
--

LOCK TABLES `analysis` WRITE;
/*!40000 ALTER TABLE `analysis` DISABLE KEYS */;
INSERT INTO `analysis` VALUES (497,358,37,'C'),(498,359,37,'D'),(499,363,37,'A'),(500,366,37,'B'),(501,368,37,'A'),(502,370,37,'B'),(503,371,37,'C'),(504,373,37,'A'),(505,374,37,'A'),(506,380,37,'B'),(507,354,38,'B'),(508,356,38,'D'),(509,363,38,'B'),(510,368,38,'D'),(511,371,38,'D'),(512,372,38,'B'),(513,374,38,'B'),(514,375,38,'B'),(515,378,38,'B'),(516,379,38,'D'),(517,356,43,'B'),(518,357,43,'B'),(519,358,43,'B'),(520,359,43,'D'),(521,367,43,'B'),(522,370,43,'D'),(523,355,39,'A'),(524,356,39,'C'),(525,364,39,'D'),(526,365,39,'A'),(527,367,39,'D'),(528,368,39,'C'),(529,371,39,'C'),(530,376,39,'A'),(531,379,39,'A'),(532,381,39,'A'),(533,354,55,'D'),(534,358,55,'B'),(535,365,55,'D'),(536,366,55,'A'),(537,372,55,'C'),(538,374,55,'B'),(539,377,55,'C'),(540,379,55,'B'),(541,380,55,'D'),(542,382,55,'D');
/*!40000 ALTER TABLE `analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `mobilenumber` char(10) DEFAULT NULL,
  `tokenid` char(6) NOT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokenid` (`tokenid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (37,NULL,'9912298918','US57DU',0,'2025-03-27 15:29:42'),(38,NULL,'9912298919','SHUAXQ',0,'2025-03-27 15:30:47'),(39,NULL,'9912258518','V3CB2U',0,'2025-03-27 15:40:32'),(40,'Naresh bojanapu','9999911111','BT6NW2',1,NULL),(41,NULL,NULL,'C2GR2P',1,NULL),(42,NULL,NULL,'X08HRD',1,NULL),(43,NULL,'9912298918','F8NKS9',0,'2025-03-27 15:38:47'),(44,NULL,NULL,'K4I7MD',1,NULL),(45,NULL,NULL,'36ROY9',1,NULL),(46,NULL,NULL,'S7QPYC',1,NULL),(47,NULL,NULL,'DGVEEG',1,NULL),(48,NULL,NULL,'PQD986',1,NULL),(49,NULL,NULL,'QP57UX',1,NULL),(50,NULL,NULL,'C5RFZ1',1,NULL),(51,NULL,NULL,'DQ4GFO',1,NULL),(52,NULL,NULL,'LC2N2O',1,NULL),(53,NULL,NULL,'DC99RI',1,NULL),(54,NULL,NULL,'ZGTQ6R',1,NULL),(55,NULL,'8499880715','M4512B',0,'2025-03-27 15:47:04'),(56,NULL,NULL,'K3O781',1,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) DEFAULT NULL,
  `optionA` varchar(1000) DEFAULT NULL,
  `optionB` varchar(1000) DEFAULT NULL,
  `optionC` varchar(1000) DEFAULT NULL,
  `optionD` varchar(1000) DEFAULT NULL,
  `correctoption` char(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (354,'If in a certain code \'SUN\' is written as \'TVP\', how is \'MOON\' written?','NPPM','NPQQ','NPPQ','NPPR','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(355,'A train 200 m long is moving at 72 km/h. How much time will it take to cross a pole?','5 sec','10 sec','15 sec','20 sec','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(356,'Which word does not belong in the group? Dog, Cat, Cow, Rose','Dog','Cat','Cow','Rose','D','2025-03-27 15:23:47','2025-03-27 15:23:47'),(357,'Find the missing number in the sequence: 4, 9, 16, 25, ?','30','35','36','40','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(358,'What is the next prime number after 23?','25','27','29','31','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(359,'Find the odd one out: Square, Circle, Triangle, Cube','Square','Circle','Triangle','Cube','D','2025-03-27 15:23:47','2025-03-27 15:23:47'),(360,'Solve: 45 ÷ 5 + 3 × 2','15','18','21','24','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(361,'If ‘PENCIL’ is coded as ‘QFODJM’, how is ‘ERASER’ coded?','FSBTFS','FUBTFS','FTBSFS','FSBTSF','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(362,'Rearrange the letters \'LRAEEN\' to form a meaningful word.','LEANER','LEAREN','NEARLE','RANELE','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(363,'A man is twice as old as his son. 20 years ago, the man was 12 times the age of his son. What is the current age of the son?','22','24','26','28','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(364,'If a clock is rotated 90 degrees clockwise, what will be the new position of 3?','6','9','12','3','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(365,'If the perimeter of a rectangle is 24 cm and its length is 8 cm, what is the width?','2 cm','4 cm','6 cm','8 cm','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(366,'Find the missing term: 2, 6, 12, 20, ?','28','30','32','34','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(367,'A man walks 5 km south, then 3 km west. How far is he from the starting point?','4 km','5 km','6 km','7 km','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(368,'Which country won the FIFA World Cup in 2018?','Germany','Brazil','France','Argentina','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(369,'How many players are there in a standard soccer team?','9','10','11','12','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(370,'Who holds the record for the most Grand Slam titles in men\'s tennis?','Roger Federer','Rafael Nadal','Novak Djokovic','Pete Sampras','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(371,'Which sport is known as the \'King of Sports\'?','Basketball','Cricket','Football','Tennis','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(372,'In which year were the first modern Olympic Games held?','1896','1900','1924','1936','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(373,'Which country has won the most Cricket World Cups?','Australia','India','West Indies','England','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(374,'What is the national sport of Canada?','Ice Hockey','Lacrosse','Baseball','Basketball','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(375,'Which player has won the most NBA championships?','LeBron James','Michael Jordan','Bill Russell','Kobe Bryant','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(376,'Who was the first Formula 1 World Champion?','Ayrton Senna','Juan Manuel Fangio','Giuseppe Farina','Michael Schumacher','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(377,'What is the distance of a full marathon?','26.2 miles','24.5 miles','22.7 miles','30 miles','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(378,'Which country is famous for the sport of sumo wrestling?','China','Japan','Korea','Mongolia','B','2025-03-27 15:23:47','2025-03-27 15:23:47'),(379,'Which city hosted the 2016 Summer Olympics?','London','Beijing','Rio de Janeiro','Tokyo','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(380,'What is the maximum score in a single frame of bowling?','200','250','300','350','C','2025-03-27 15:23:47','2025-03-27 15:23:47'),(381,'Who is the fastest man in the world, holding the 100m sprint record?','Usain Bolt','Carl Lewis','Tyson Gay','Justin Gatlin','A','2025-03-27 15:23:47','2025-03-27 15:23:47'),(382,'Which country won the first ever FIFA World Cup?','Brazil','Uruguay','Italy','Germany','B','2025-03-27 15:23:47','2025-03-27 15:23:47');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userperformance`
--

DROP TABLE IF EXISTS `userperformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userperformance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `exam_duration_time` time(3) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userperformance`
--

LOCK TABLES `userperformance` WRITE;
/*!40000 ALTER TABLE `userperformance` DISABLE KEYS */;
INSERT INTO `userperformance` VALUES (54,37,5,'00:01:29.000','2025-03-27 15:29:32'),(55,38,4,'00:00:17.000','2025-03-27 15:30:21'),(56,43,1,'00:00:30.000','2025-03-27 15:38:43'),(57,39,3,'00:01:10.000','2025-03-27 15:40:28'),(58,55,1,'00:02:21.000','2025-03-27 15:47:03');
/*!40000 ALTER TABLE `userperformance` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 22:05:41
