-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: travelbuddy
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `travel_plans`
--

DROP TABLE IF EXISTS `travel_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `trip_schedule_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_plans`
--

LOCK TABLES `travel_plans` WRITE;
/*!40000 ALTER TABLE `travel_plans` DISABLE KEYS */;
INSERT INTO `travel_plans` VALUES (1,1,1,'2015-05-08 11:30:27','2015-05-08 11:30:27'),(2,2,2,'2015-05-08 11:31:30','2015-05-08 11:31:30'),(3,3,3,'2015-05-08 11:32:07','2015-05-08 11:32:07'),(4,3,2,'2015-05-08 12:01:52','2015-05-08 12:01:52'),(5,3,1,'2015-05-08 12:02:00','2015-05-08 12:02:00'),(6,2,3,'2015-05-08 12:19:56','2015-05-08 12:19:56'),(7,2,4,'2015-05-08 12:20:52','2015-05-08 12:20:52'),(8,1,2,'2015-05-08 12:21:15','2015-05-08 12:21:15'),(9,1,5,'2015-05-08 12:30:20','2015-05-08 12:30:20'),(10,2,5,'2015-05-08 12:30:35','2015-05-08 12:30:35'),(11,2,6,'2015-05-08 13:17:47','2015-05-08 13:17:47'),(12,2,7,'2015-05-08 13:19:27','2015-05-08 13:19:27'),(13,1,4,'2015-05-08 13:19:48','2015-05-08 13:19:48'),(14,4,4,'2015-05-08 13:21:57','2015-05-08 13:21:57');
/*!40000 ALTER TABLE `travel_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_schedules`
--

DROP TABLE IF EXISTS `trip_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_schedules`
--

LOCK TABLES `trip_schedules` WRITE;
/*!40000 ALTER TABLE `trip_schedules` DISABLE KEYS */;
INSERT INTO `trip_schedules` VALUES (1,'Switzerland','Going to have a great time!','2015-05-14','2015-05-20',1,'2015-05-08 11:30:27','2015-05-08 11:30:27'),(2,'London','I have to visit my old friends. Any takers?','2015-05-30','2015-06-03',2,'2015-05-08 11:31:30','2015-05-08 11:31:30'),(3,'Japan','Gotta Catch \'em all!!','2015-06-10','2015-07-16',3,'2015-05-08 11:32:07','2015-05-08 11:32:07'),(4,'USA','I need to try this In N Out Animal Style Fries!','2015-05-21','2015-05-22',2,'2015-05-08 12:20:52','2015-05-08 12:20:52'),(5,'Washington','Gonna Visit the Coding dojo','2015-05-13','2015-05-30',1,'2015-05-08 12:30:20','2015-05-08 12:30:20'),(6,'Seattle','Visit the coding dojo!','2015-05-13','2015-05-29',2,'2015-05-08 13:17:47','2015-05-08 13:17:47'),(7,'New York','Gonna see the big city','2015-05-13','2015-05-28',2,'2015-05-08 13:19:27','2015-05-08 13:19:27');
/*!40000 ALTER TABLE `trip_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `salt` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jaypatrick Manalansan','jayjay','a4f1c57ee0f233f6963d3b910d5bf28e','ca34caa4cf363945a9894fec6d430386f18b9f89955a','2015-05-08 10:33:47','2015-05-08 10:33:47'),(2,'Hermione Granger','Hermoney','f3d0e18a2be35f9e4254e9b570e6dd6c','b18628116f9ede734c521e0989ff54f4f75b7caa5017','2015-05-08 11:31:04','2015-05-08 11:31:04'),(3,'Ash Ketchum','Ash','101d2e88ff3f331514b99717d893b1ba','e9792d38fc6c9edae73271eb683ca99b171e1fccf3c8','2015-05-08 11:31:45','2015-05-08 11:31:45'),(4,'Ronald Weasley','ron','ac3764700dc1c4efbf6de7dbd92ad6c3','64fcf9182dc61e7b3d70b12f39be164bab048afe06ce','2015-05-08 13:21:00','2015-05-08 13:21:00');
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

-- Dump completed on 2015-05-08 13:30:10
