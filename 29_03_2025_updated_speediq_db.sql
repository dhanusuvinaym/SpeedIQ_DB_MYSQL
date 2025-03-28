-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: speediq
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'dhanusum','March@2025','2025-03-24 20:31:02','2025-03-24 20:31:02'),(2,'dhanusuvinaymindala','Vinay','2025-03-24 22:47:32','2025-03-24 22:55:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis`
--

LOCK TABLES `analysis` WRITE;
/*!40000 ALTER TABLE `analysis` DISABLE KEYS */;
INSERT INTO `analysis` VALUES (449,212,31,'B'),(450,213,31,'A'),(451,214,31,'B'),(452,216,31,'D'),(453,219,31,'D'),(454,224,31,'C'),(455,225,31,'C'),(456,231,31,'B'),(457,232,31,'A'),(458,234,31,'A'),(459,212,31,'B'),(460,213,31,'A'),(461,214,31,'B'),(462,216,31,'D'),(463,219,31,'D'),(464,224,31,'C'),(465,225,31,'C'),(466,231,31,'B'),(467,232,31,'A'),(468,234,31,'A'),(469,212,31,'B'),(470,213,31,'A'),(471,214,31,'B'),(472,216,31,'D'),(473,219,31,'D'),(474,224,31,'C'),(475,225,31,'C'),(476,231,31,'B'),(477,232,31,'A'),(478,234,31,'A'),(479,212,31,'B'),(480,213,31,'A'),(481,214,31,'B'),(482,216,31,'D'),(483,219,31,'D'),(484,224,31,'C'),(485,225,31,'C'),(486,231,31,'B'),(487,232,31,'A'),(488,234,31,'A'),(489,212,31,'B'),(490,213,31,'A'),(491,214,31,'B'),(492,216,31,'D'),(493,219,31,'D'),(494,224,31,'C'),(495,225,31,'C'),(496,231,31,'B'),(497,232,31,'A'),(498,234,31,'A'),(499,212,31,'B'),(500,213,31,'A'),(501,214,31,'B'),(502,216,31,'D'),(503,219,31,'D'),(504,224,31,'C'),(505,225,31,'C'),(506,231,31,'B'),(507,232,31,'A'),(508,234,31,'A'),(509,212,31,'B'),(510,213,31,'A'),(511,214,31,'B'),(512,216,31,'D'),(513,219,31,'D'),(514,224,31,'C'),(515,225,31,'C'),(516,231,31,'B'),(517,232,31,'A'),(518,234,31,'A'),(519,212,31,'B'),(520,213,31,'A'),(521,214,31,'B'),(522,216,31,'D'),(523,219,31,'D'),(524,224,31,'C'),(525,225,31,'C'),(526,231,31,'B'),(527,232,31,'A'),(528,234,31,'A'),(529,212,31,'B'),(530,213,31,'A'),(531,214,31,'B'),(532,216,31,'D'),(533,219,31,'D'),(534,224,31,'C'),(535,225,31,'C'),(536,231,31,'B'),(537,232,31,'A'),(538,234,31,'A'),(539,212,31,'B'),(540,213,31,'A'),(541,214,31,'B'),(542,216,31,'D'),(543,219,31,'D'),(544,224,31,'C'),(545,225,31,'C'),(546,231,31,'B'),(547,232,31,'A'),(548,234,31,'A'),(549,212,32,'B'),(550,213,32,'A'),(551,214,32,'B'),(552,216,32,'D'),(553,219,32,'D'),(554,224,32,'C'),(555,225,32,'C'),(556,231,32,'B'),(557,232,32,'A'),(558,234,32,'A'),(559,212,32,'B'),(560,213,32,'A'),(561,214,32,'B'),(562,216,32,'D'),(563,219,32,'D'),(564,224,32,'C'),(565,225,32,'C'),(566,231,32,'B'),(567,232,32,'A'),(568,234,32,'A'),(569,212,32,'B'),(570,213,32,'A'),(571,214,32,'B'),(572,216,32,'D'),(573,219,32,'D'),(574,224,32,'C'),(575,225,32,'C'),(576,231,32,'B'),(577,232,32,'A'),(578,234,32,'A'),(579,211,33,'A'),(580,214,33,'B'),(581,215,33,'D'),(582,217,33,'B'),(583,219,33,'A'),(584,220,33,'D'),(585,221,33,'B'),(586,222,33,'D'),(587,228,33,'A'),(588,234,33,'B'),(589,211,31,'A'),(590,215,31,'A'),(591,217,31,'B'),(592,218,31,'B'),(593,219,31,'A'),(594,222,31,'B'),(595,225,31,'B'),(596,227,31,'C'),(597,232,31,'B'),(598,233,31,'A'),(599,213,31,'B'),(600,214,31,'B'),(601,215,31,'A'),(602,216,31,'A'),(603,217,31,'A'),(604,219,31,'B'),(605,220,31,'B'),(606,224,31,'B'),(607,226,31,'A'),(608,235,31,'A');
/*!40000 ALTER TABLE `analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guidelines`
--

DROP TABLE IF EXISTS `guidelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guidelines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guidelines`
--

LOCK TABLES `guidelines` WRITE;
/*!40000 ALTER TABLE `guidelines` DISABLE KEYS */;
INSERT INTO `guidelines` VALUES (1,'I. Eligibility and Registration:\n• Age: 18. \n• Location: India  \n• Registration: User Need to provide valid Mobile number, name . For one registration quiz can be take only once \n• Multiple Registrations: Multiple registrations from the same participant are allowed as every time it show different question paper. \n• Disqualification: Test Can be submitted within 30mins after starting the quiz. If time expires quiz can be submitted automatically.\n                                       \nII. Quiz Format and Rules:\n• Quiz Type: multiple choice, open-ended. \n• Number of Questions: 10 questions for 30mins. \n• Question Topics: questions can be covered from General aptitude , logic reasoning , general awareness, sports and games which are helpful for interview exams/competitive exams. \n• Scoring: each correct answer will get 1 mark and NO penalties for incorrect answers , for Un answered questions will get 0 marks after timer expires[30mins]. \n• Allowed Devices: computers, mobile phones. \n• Communication: Participants are allowed to communicate with each other or use external resources during the quiz. \n• Disqualification: List reasons for potential disqualification, such as cheating or violating the rules. \nIII. Prizes and Awards:\n• Prizes: Winner will get certificate from the SpeedIQ (soft copy) and monetary value as RS:-5000. \n• Winner Selection: Winner will be selected based the top score with less time. \n• Prize Distribution: certificate will be shared to winner’s mobile number through what’s up and prize money will be paid through UPI. \nIV. Disclaimers and Legal:\n• Organizers\' Responsibility: organizers are available to resolve any technical issues during the quiz . \n• Data Privacy: participant data will be collected, used, and stored, till the quiz context period. Once winners announced data will be erased after a week. \n• Organizer\'s Right to Change: organizers reserve the right to change the terms and conditions at any time, with reasonable notice. \n• Contact Information: Mobile Number : 8790026298 Mail ID: vinay@gmail.com\n','2025-03-28 19:05:21'),(2,'https://www.google.com','2025-03-28 18:29:08');
/*!40000 ALTER TABLE `guidelines` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (31,'Mindala','Mindala','efghij',0,'2025-03-27 19:16:44'),(32,NULL,'8790026298','fghijk',1,'2025-03-27 17:02:45'),(33,NULL,'1234567890','ghijkl',1,'2025-03-27 17:04:33'),(34,NULL,'1234567890','hijklm',1,'2025-03-27 17:31:25'),(35,NULL,'1234567890','ijklmn',1,'2025-03-27 18:15:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (211,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(212,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(213,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(214,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(215,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(216,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(217,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(218,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(219,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(220,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(221,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(222,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(223,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(224,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(225,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(226,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(227,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(228,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(229,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(230,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(231,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(232,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(233,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(234,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(235,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(236,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(237,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(238,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(239,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(240,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(241,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(242,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(243,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(244,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(245,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(246,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(247,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(248,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(249,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(250,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(251,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(252,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(253,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(254,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(255,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(256,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(257,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(258,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(259,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(260,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(261,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(262,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(263,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(264,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(265,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(266,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(267,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(268,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(269,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(270,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(271,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(272,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(273,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(274,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(275,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(276,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(277,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(278,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(279,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(280,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(281,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(282,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(283,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(284,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(285,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(286,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(287,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(288,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(289,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(290,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(291,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(292,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(293,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(294,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(295,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(296,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(297,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(298,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(299,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(300,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(301,'What comes next in the series: 2, 4, 8, 16, ...?','24','32','30','36','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(302,'If all roses are flowers and some flowers fade quickly, which of the following is true?','All roses fade quickly','Some roses fade quickly','All flowers are roses','Some flowers do not fade quickly','D','2025-03-25 21:28:28','2025-03-25 21:28:28'),(303,'Find the odd one out: 5, 9, 15, 25, 40','9','15','25','40','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(304,'What is 15% of 200?','25','30','35','40','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(305,'A train travels 60 km in 1.5 hours. What is its speed in km/h?','40','50','60','80','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(306,'If x + 2 = 7, what is x?','2','3','5','7','C','2025-03-25 21:28:28','2025-03-25 21:28:28'),(307,'Choose the word that is most similar to \'benevolent\'','Kind','Greedy','Hostile','Proud','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(308,'Complete the analogy: Pen is to Write as Knife is to ...?','Cut','Eat','Sharp','Hold','A','2025-03-25 21:28:28','2025-03-25 21:28:28'),(309,'Identify the correctly spelled word','Occurance','Occurrence','Ocurrence','Occurrance','B','2025-03-25 21:28:28','2025-03-25 21:28:28'),(310,'If 5 workers can build a wall in 20 days, how many days will it take 10 workers to build the same wall?','10','5','15','20','A','2025-03-25 21:28:28','2025-03-25 21:28:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userperformance`
--

LOCK TABLES `userperformance` WRITE;
/*!40000 ALTER TABLE `userperformance` DISABLE KEYS */;
INSERT INTO `userperformance` VALUES (49,31,3,'00:39:51.000','2025-03-27 16:59:13'),(50,31,3,'00:40:55.000','2025-03-27 17:00:17'),(51,31,3,'00:40:55.000','2025-03-27 17:00:17'),(52,31,3,'00:40:55.000','2025-03-27 17:00:17'),(53,31,3,'00:41:31.000','2025-03-27 17:00:53'),(54,31,3,'00:41:31.000','2025-03-27 17:00:53'),(55,31,3,'00:41:31.000','2025-03-27 17:00:53'),(56,31,3,'00:41:58.000','2025-03-27 17:01:20'),(57,31,3,'00:41:58.000','2025-03-27 17:01:20'),(58,31,3,'00:41:58.000','2025-03-27 17:01:20'),(59,32,3,'00:43:19.000','2025-03-27 17:02:41'),(60,32,3,'00:43:19.000','2025-03-27 17:02:41'),(61,32,3,'00:43:19.000','2025-03-27 17:02:41'),(62,33,5,'00:00:39.000','2025-03-27 17:04:24'),(63,31,2,'00:00:12.000','2025-03-27 18:33:31'),(64,31,6,'00:00:19.000','2025-03-27 19:16:37');
/*!40000 ALTER TABLE `userperformance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-29  2:03:18
