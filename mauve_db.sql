-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: mauve
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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `user1_id` varchar(100) NOT NULL,
  `user2_id` varchar(100) NOT NULL,
  PRIMARY KEY (`user1_id`,`user2_id`),
  KEY `user2_id` (`user2_id`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`username`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('mathevil','12345678'),('mathevil','harshvora64'),('12345678','mathevil'),('harshvora64','mathevil');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `postedBy` varchar(100) DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'12345678',0,'Parth\'s Survey','Do you?',NULL),(2,'12345678',0,'Parth\'s Survey','Do you?',NULL),(3,'12345678',0,'Parth\'s Survey','Do you?',NULL),(4,'23456789',0,'Parth\'s Survey','Do you?',NULL),(5,'pramsu',0,'hello','i want to sleep',NULL),(6,'dbdsibv',0,'hello','hello',NULL),(7,'dbdsibv',0,'dwnfisdnf','ousdnuicsuioadv',NULL),(8,'dbdsibv',0,'wiudbfiusbduicui','iuwdscuishaduch',NULL),(9,'dbdsibv',0,'ueifhiuceuicbuiebdu','iudsbciusadiuciueducieu',NULL),(10,'dbdsibv',0,'idbnfibaiuscbued','iuedbfiuewhriufhehfuheufhwuihifheruf',NULL),(11,'dbdsibv',0,'sdkjbcibsdifbs','iuasdbiuuisadhfuahsd',NULL),(12,'dbdsibv',0,'iusdfuihasudfhuas','iuqerhuh3eiurbjbcviuewhdv',NULL),(13,'12345678',0,'Again asking Parth\'s survey','Do you?','Entertainment'),(14,'12345678',0,'Again asking Parth\'s survey','Do you?','Entertainment'),(15,'12345678',0,'','','Miscellaneous'),(16,'mathevil',0,'','','Miscellaneous');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `verified` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('12345678','apple','2345678','234567','harshvora64@gmail.com','141427','1'),('1234567890','1234567890','1234567890','12345890','harshvora64@gmail.com','160123','0'),('23456789','dfghjkl','cghjkl','345678','harshvora64@gmail.com','324771','1'),('dbdsibv','isudhf','sduihfa','sdiufh','isdufa','734422','1'),('dfgh','sdfg','dfg','sdfg','harshvora64@gmail.com','671700','0'),('dfvgbnm','dfghnjm','sdfghj','ertyuk','harshvora64@gmail.com','892106','1'),('harshvora64','apple','Harsh Vora','9967492737','harshvora64@gmail.com','985183','1'),('mathevil','apple','Parth Patel','1234567890','parthpatto@gmail.com','341508','1'),('pramsu','abcd@1234','pramsu','9717416193','ee1210140@iitd.ac.in','296302','1'),('qwertyuiop','qwertyuio','qwertyuiop','1234567890','harshvora64@gmail.com','605524','1'),('wfgtrh','wqevrbty','ewrteyu','ewrty','harshvora64@gmail.com','248763','1'),('wwqewe','fdgngh','dfvdgnh','werhh','harshvora64@gmail.com','965943','1');
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

-- Dump completed on 2023-04-08 13:34:10
