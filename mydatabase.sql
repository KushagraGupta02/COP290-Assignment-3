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
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `chat_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `sentBy` varchar(100) DEFAULT NULL,
  `sentTo` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (7,'h','mathevil','Hello','2023-04-24 12:24:40'),(10,'Harsh','mathevil','Hello Parth','2023-04-24 12:40:22'),(12,'Harsh','mathevil','Hello','2023-04-24 12:46:47'),(13,'mathevil','Harsh','Hi','2023-04-24 12:47:30'),(14,'mathevil','Harsh','hello','2023-04-24 12:47:43'),(15,'Harsh','mathevil','wassup','2023-04-24 12:48:25'),(16,'Harsh','mathevil','Hellp','2023-04-24 12:59:58'),(17,'Harsh','mathevil','hello','2023-04-24 13:04:05'),(18,'mathevil','h','Hi','2023-04-24 13:07:37'),(19,'mathevil','Harsh','Hi','2023-04-24 13:07:42'),(28,'h','Khush','hi','2023-04-25 07:52:51'),(29,'Khush','h','hi','2023-04-25 07:53:39'),(30,'Khush','h','Hello','2023-04-25 07:55:53'),(31,'h','Khush','How are you?','2023-04-25 07:56:18'),(32,'h','Khush','qwertyuiolkjhgfdsxcuytrdvbutredfghjkuytrewscvbnkiuytrecvbnmkuytresdcvbnmkiuytredvbnmkuytredcvbnmkuytrecvbnjytredvbnjuytredjkiuy5edvbnjuytredcvbnjuytredvbnkiuytrewsdfjkloiuy654wdfghjk','2023-04-25 07:56:36'),(33,'Khush','h','Hi','2023-04-27 16:04:54'),(34,'h','Khush','Hello','2023-04-27 16:05:03'),(35,'h','Khush','Wassup!!','2023-04-27 16:05:12'),(36,'h','Khush','Interesting','2023-04-27 17:19:13'),(37,'khush','harshvora64','Hi','2023-04-27 17:36:32'),(38,'khush','h','Hi','2023-04-27 21:47:22'),(39,'khush','h','Wassup','2023-04-27 21:47:28'),(40,'khush','h','Hello','2023-04-27 21:47:31'),(41,'khush','h','Blah','2023-04-27 21:58:09'),(42,'khush','h','Befoienfione','2023-04-27 21:58:33'),(43,'khush','h','cool','2023-04-27 22:01:23'),(44,'khush','harshvora64','Hello','2023-04-27 22:08:13'),(45,'khush','harshvora64','Hello Parth','2023-04-27 22:10:33'),(46,'khush','rajat','Hi Rajat','2023-04-27 22:14:52'),(47,'khush','rajat','Hello','2023-04-27 23:00:41'),(48,'khush','h','Hi','2023-04-28 15:41:24');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `sentBy` varchar(100) DEFAULT NULL,
  `postID` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'h','43','Hi there!','2023-04-25 08:31:45'),(2,'h','43','What\'s up?','2023-04-25 08:31:54'),(3,'Khush','39','Wow','2023-04-25 10:05:16'),(4,'h','39','This is goof','2023-04-25 10:06:21'),(5,'h','39','I dont like it','2023-04-25 10:06:29'),(6,'h','39','khfukerofoijpdfoidshvdsoivsdbvnsdvbkdnsvnbdsnvpsdnv;lkshdivnsknvdnvhdiivndvhdnvosdhvobdvhdjvbdbvk;jdvndsnvpdnvidhvnsd;kvhidsnvkjdhvdn vkjdhvnvhidxvndohvad','2023-04-25 10:06:59'),(7,'h','39','hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ','2023-04-25 10:14:24'),(8,'h','51','found','2023-04-25 10:23:32'),(9,'h','22','hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ','2023-04-25 10:32:55'),(10,'h','52','Nice post man','2023-04-25 14:07:50'),(11,'h','54','Arigato','2023-04-25 14:28:35'),(12,'h','55','Nice','2023-04-25 16:08:38'),(13,'khush','43','Hello','2023-04-27 17:35:01'),(14,'khush','55','http://127.0.0.1:5000/static/uploads/drive-your-career-in-finance.webp','2023-04-27 17:37:20'),(15,'khush','32','Hello','2023-04-28 15:41:12'),(16,'khush','43','hello','2023-04-28 22:13:54');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `friends` VALUES ('khush','h'),('rajat','h'),('twinkle','h'),('KushagraGupta','harshvora64'),('rajat','harshvora64'),('Suren','harshvora64'),('twinkle','harshvora64'),('h','khush'),('harshvora64','KushagraGupta'),('h','rajat'),('harshvora64','rajat'),('twinkle','rajat'),('harshvora64','Suren'),('h','twinkle'),('harshvora64','twinkle'),('rajat','twinkle');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `likeID` int unsigned NOT NULL AUTO_INCREMENT,
  `likedBy` varchar(100) DEFAULT NULL,
  `postID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`likeID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (4,'khush','56'),(5,'khush','39'),(6,'khush','21'),(7,'khush','38'),(11,'harshvora64','38'),(26,'harshvora64','39');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
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
  `imageData` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`post_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (18,'twinkle',0,'Dubai Trip','memorable trip','Travel',NULL),(19,'Suren',0,'Astronomy','Astronomy is the study of everything in the universe beyond Earth’s atmosphere. That includes objects we can see with our naked eyes, like the Sun , the Moon , the planets, and the stars . It also includes objects we can only see with telescopes or other instruments, like faraway galaxies and tiny particles. And it even includes questions about things we can\'t see at all, like dark matter and dark energy .','STEM',NULL),(20,'Suren',0,'Macbook Air M2','The MacBook Air is a line of Macintosh notebook computers developed and manufactured by Apple. Since 2020, the Air has employed custom-designed systems-on-a-chip, called the Apple M series. In the current product line, the MacBook Air is Apple\'s entry-level notebook, situated below the performance range MacBook Pro, and is currently sold with 13-inch screens (13.3-inch for the M1 model and 13.6-inch for the M2 model).\r\n\r\nApple released the MacBook Air with the Apple M1 system on a chip in November 2020. A redesigned model based on the Apple M2 chip was released in July 2022.\r\n\r\n','STEM',NULL),(21,'Suren',1,'Economics','Economics (/ˌɛkəˈnɒmɪks, ˌiːkə-/)[1] is the social science that studies the production, distribution, and consumption of goods and services.[2][3]\r\n\r\nEconomics focuses on the behaviour and interactions of economic agents and how economies work. Microeconomics analyzes what\'s viewed as basic elements in the economy, including individual agents and markets, their interactions, and the outcomes of interactions. Individual agents may include, for example, households, firms, buyers, and sellers. Macroeconomics analyzes the economy as a system where production, consumption, saving, and investment interact, and factors affecting it: employment of the resources of labour, capital, and land, currency inflation, economic growth, and public policies that have impact on these elements.','Finance',NULL),(22,'Suren',0,'Dehradun Trip','Day 1: Drive to Nainital, the town of lakes. Spend the evening at Mall Road.\r\nDay 2: Spend the day sightseeing in and around Nainital. There are many places of interest like the Naina Devi temple, Lands’ End, Tiffin Top and the Zoo.\r\nDay 3: Drive from Nainital to Corbett today. A safari in Jim Corbett National Park is highly recommended.\r\nDay 4: Today drive from Corbett to Mussoorie, passing Meerut, Muzaffarnagar and Dehradun.\r\nDay 5: Visit the main attractions around Mussoorie. There are many places of interest like the Kempty Falls, Camel Back Road, Lal Tibba, Gun Hill etc.\r\nDay 6: Check-out from your hotel and depart for home.','Travel',NULL),(23,'harshvora64',0,'Badminton Orleans Masters\' Final','Orleans [France], April 8 (ANI): Indian men’s shuttler Priyanshu Rajawat entered his first-ever final at a Badminton World Federation (BWF) World Tour Super 300 event at the ongoing Orleans Masters 2023 on Saturday.','Sports',NULL),(24,'harshvora64',0,'IPL','MI vs CSK, IPL 2023 Live Updates: After Ravindra Jadeja, Mitchell Santner has taken his second wicket of the night and removed Arshad Khan for 2. Mumbai Indians are in deep trouble as they have lost five wickets and now completely rely on Tilak Varma and Tim David for a stable innings.','Sports',NULL),(25,'harshvora64',0,'Himalayas Tour: Rishikesh','For the more leisurely traveler Rishikesh is ideal. It is known as the gateway to the Himalayas and also carries the sobriquet of yoga capital of the world. There is an abundance of yoga ashrams and centers in the little town which has also been home to many famous Hindu sages and gurus.','Travel',NULL),(26,'harshvora64',0,'Runaway black hole rockets through space, leaving behind trail of newborn stars','A supermassive black hole is on the run, and it is going fast. If it were in our solar system, it would cover the distance between the Earth and the Moon in 14 minutes.\r\n\r\nThe black hole weighs as much as 20 million Suns and is also leaving behind a 200,000-light-year-long trail of newborn stars in its wake. To put that into context, the diameter of the Milky Way is about 100,000 light years.','STEM',NULL),(27,'mathevil',0,'12 Country Trip','I’m in the beginning stages (2025 travel) of my backpacking trip through Western Europe. I’m going to fly into London and travel through France, Spain, Italy, Austria, Hungary, Slovakia, Poland, Czechia, Germany, Netherlands and Belgium then flying home out of London.\r\n\r\nPlanning on hostel living and walking as much of this as possible. I understand there’ll be legs I’ll have to use ground transportation for, but I’ll hitchhike for the most part.\r\n\r\nI’ve got a dozen apps for train, bus, rideshare, etc.\r\n\r\nAny advice from others that have done similar trips?\r\n\r\nHopefully the unrest in France will have settled by then.','Travel',NULL),(28,'KushagraGupta',0,'Flight Tickets to France for VISA appointment','Hello All,\r\n\r\nI am an Indian applying for a short-stay France VISA. One required document is a \" Reservation of a return ticket or travel itinerary.\" Even though it explicitly says for the Return ticket I have heard it is better to get both ways flight tickets confirmed.\r\nIn my case, I have an appointment scheduled soon and am planning to visit France just 20 days after the appointment. I\'m afraid in case my VISA gets rejected/delayed, I\'ll lose my flight tickets.\r\nWhat should I do in this case, should I buy both way tickets or just return tickets?\r\nAlso, I am not getting any fully refundable tickets anywhere online.\r\n\r\nThanks.','Travel',NULL),(29,'KushagraGupta',0,'12th Match - Mumbai Indians vs Chennai Super Kings','Innings	Score\r\nMumbai Indians	131/8 (Ov 17/20)\r\nScore/Win Prediction : 161 runs - 40.4%','Sports',NULL),(30,'KushagraGupta',0,' Office of Career Services, IIT Delhi','Greetings from Pravritti!\r\n\r\nInviting you all to a talk on \"The Future of Memory Chip technology and the role of innovation\" by our esteemed Alum Dr. Gurtej S Sandhu, Senior Fellow and VP, Micron Technologies.\r\n\r\nCurrently, recognized as one of the top inventors in the world, Dr. Sandhu received a degree in electrical engineering at the Indian Institute of Technology, before going on to achieve a Ph.D. in physics at the University of North Carolina.\r\n\r\nThis event will be followed by an AI Workshop and Speed-A-Thon.\r\n\r\nEvent Schedule-\r\nDate: 29th March\r\nTalk: 6:30 PM\r\nAI Workshop: 7:30 PM\r\nSpeed-A-Thon: 8:15 PM\r\nVenue: Seminar Hall\r\n','Miscellaneous',NULL),(31,'KushagraGupta',0,'Animall','Founded in 2019, Animall is a Bengaluru-based digitized online platform that enables the online buying and selling of cattle in India. It also offers animal healthcare services.','STEM',NULL),(32,'Rajat',0,'Quanta Magazine','This equation is often described as the most beautiful in all of mathematics. Each of its numbers symbolize an entire branch of math, and in that way the equation can be seen as a glorious confluence, a testament to the unity of math.','STEM',NULL),(33,'Rajat',0,'Construction','Union minister  #NitinGadkari said that the construction of 212-kilometre-long, six-lane #Delhi-#Dehradun Greenfield access-controlled expressway would be completed by the end of December this year\r\n\r\nRead more https://lnkd.in/dPb74TFi','Miscellaneous',NULL),(34,'Rajat',0,'COWRKS','At COWRKS, our Managed Office Solutions are designed to cater to the unique needs of each business. Effortlessly streamline your workplace with our holistic customised office solutions.\r\n\r\nBenefit from enterprise-grade IT infrastructure, premium amenities, seamless operations and more that lets you focus on achieving your business objectives easily.\r\n\r\nMove into your new office faster, and enjoy an elevated workspace experience, all while saving up to 25% on your traditional lease.\r\n\r\nCOWRKS is a Brookfield Properties Company.','Miscellaneous',NULL),(35,'twinkle',0,'Folk Dance','A folk dance is a dance that reflects the life of the people of a certain country or region. Not all ethnic dances are folk dances. For example, ritual dances or dances of ritual origin are not considered to be folk dances. Ritual dances are usually called \"Religious dances\" because of their purpose. The terms \"ethnic\" and \"traditional\" are used when it is required to emphasize the cultural roots of the dance. In this sense, nearly all folk dances are ethnic ones. If some dances, such as polka, cross ethnic boundaries and even cross the boundary between \"folk\" and \"ballroom dance\", ethnic differences are often considerable enough to mention.','Entertainment',NULL),(36,'twinkle',0,'Tom and Jerry','The classic cat-and-mouse duo creates chaos at a swanky NYC hotel when alley cat Tom is hired to get rid of scheming mouse Jerry before a VIP wedding.','Entertainment',NULL),(37,'twinkle',0,'Spider-Man: No Way Home','When his loved ones are put at risk, Peter Parker asks Doctor Strange to restore his secret — and accidentally sets off a disaster of epic proportions.','Entertainment',NULL),(38,'twinkle',2,'Finance','Finance is the study and discipline of money, currency and capital assets. It is related to, but not synonymous with economics, which is the study of production, distribution, and consumption of money, assets, goods and services (the discipline of financial economics bridges the two). Finance activities take place in financial systems at various scopes, thus the field can be roughly divided into personal, corporate, and public finance. ','Finance',NULL),(39,'twinkle',2,'NSE','NSE (National Stock Exchange) is an institution of national importance with international stature. We are a trusted market infrastructure institution with high standards of corporate governance.\r\n\r\nA homegrown brand with a global vision, NSE is counted as one of the world’s largest exchanges and a catalyst for driving India’s economic growth. NSE was the first exchange in India to implement electronic or screen-based trading which began its operations in 1994; a pioneer in technology which ensures the reliability and performance of its systems through a culture of innovation and investment in technology. NSE operates a market ecosystem to bring in transparency & efficiency.\r\n\r\nOur robust state-of-the-art technology platform offers high levels of robustness, safety and resilience for trading and investment opportunities across all asset classes and for all categories of investors. NSE is focused on investor protection and disciplined development of the Indian capital market landscape.','Finance',NULL),(40,'Harsh',0,'New Post','This is my first post. Hello World, Hello Mauve!!!','Miscellaneous',NULL),(41,'HarshV',0,'New Postr','This is my first post!! Hello World!','Miscellaneous',NULL),(42,'HarshV',0,'My First Post','This is my first post @MAUVE!!! Hello World!!','Entertainment',NULL),(43,'h',0,'My first post','This is my first post.','Sports',NULL),(44,'h',0,'Title','Hello','Miscellaneous',NULL),(45,'h',0,'SomePost','Something','Miscellaneous',NULL),(46,'Harsh',0,'mathevil','Hello Parth','Miscellaneous','ScreeM.png'),(47,'h',0,'Hello','Hi','Miscellaneous','ScreeM.png'),(48,'h',0,'WANTED - PARTH PATEL','IIT Delhi student Parth Patel is wanted for excessive OPiness. Anyone who finds him will be rewarded.','Miscellaneous','WhatsApp_Image_2023-04-24_at_10.26.29_PM.jpeg'),(49,'h',0,'Newww','Newww','Miscellaneous','WhatsApp_Image_2023-04-24_at_10.26.29_PM.jpeg'),(50,'h',0,'Newwwwww','Nioewfoiwef','Miscellaneous','Screenshot_2023-04-25_at_12.11.17_AM.png'),(51,'h',0,'WANTED','PARTH PATEL','Miscellaneous','WhatsApp_Image_2023-04-24_at_10.26.29_PM.jpeg'),(52,'h',0,' The Impact of Streaming Services on the Entertainment Industry','The entertainment industry has undergone a massive transformation in recent years, thanks to the rise of streaming services. Platforms like Netflix, Amazon Prime, Disney+, and Hulu have completely changed the way we consume entertainment. In this post, we\'ll take a closer look at the impact of streaming services on the entertainment industry.\r\n\r\nOne of the most significant ways that streaming services have disrupted the entertainment industry is by changing the distribution model. In the past, TV shows and movies were released in theaters or on TV, and audiences had to watch them at specific times. With streaming services, however, viewers can watch their favorite shows and movies on demand, whenever and wherever they want.','Entertainment','ent.jpeg'),(53,'h',0,'Image','This image is very nice. Good Morning!','Miscellaneous','newbg5.png'),(54,'h',0,'Apple banana Cucumber','Merry Christmas !\r\nGood Morning User, This is mauve, a blog posting website.\r\nThank You.','Miscellaneous','ScreeM.png'),(55,'h',0,'qwerty','qwertyuiop','Miscellaneous','drive-your-career-in-finance.webp'),(56,'khush',1,'NSE','Greeting bookkeepers of Reddit Small business owner here I used to sell solar and have since hired a couple contractors and are looking to make this a legit business instead of a soloprenuer\r\n\r\nCan someone tell me what common mistakes they see from small businesses? What are the dos and donts of bookkeeping? ( thinking of getting a contractor to do this for me ) What are the 80/20 leverage points that are most important?\r\n\r\nAlso open to books/ebooks/YouTube guidance and where to learn more\r\n\r\nAny and all help is appreciated (Please pretend I have the bookkeeping knowledge of a golden retriever)','Finance','newbg4.png'),(57,'khush',0,'New Title','new post','Finance',NULL);
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
INSERT INTO `users` VALUES ('H','1','h','1','harshvora.iitdelhi@gmail.com','560588','1'),('harshvora64','apple1','Harsh Vora','9967492737','harshvora64@gmail.com','386605','1'),('Khush','123456','Khush','9876543234','harshvora.iitd@gmail.com','156098','1'),('KushagraGupta','qwertyuiop','Kushagra Gupta','9876565431','guptakushagra343@gmail.com','114559','1'),('Rajat','qwerty','Rajat Golechha','9876765431','rajatgolechha13@gmail.com','449647','1'),('sheetal','apple5','Sheetal','9892962466','sheetalvora46@gmail.com','202167','1'),('Suren','123456','Suren Suren','9876543210','suren1234245@gmail.com','960563','1'),('twinkle','babli','twinkle','9820869402','tjdedhia@gmail.com','718643','1');
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

-- Dump completed on 2023-04-28 23:42:14
