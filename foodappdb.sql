CREATE DATABASE  IF NOT EXISTS `foodapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodapp`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foodapp
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `food_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'tuna sushi','png.1',7.5,'japanese tuna sushi',1),(2,'Chateau wine','png.2',15,'french wine',4),(3,'pizza','png.3',5,'italian pizza',5),(4,'salmon sashimi','png.4',8,'japanese sashimi',6),(5,'bacon','png.5',18,'bacon from europe',2),(6,'lobster','png.6',29,'lobster from sea',3),(7,'lamb','png.7',9.8,'grilled lamb',2),(8,'kobe beef','png.8',105.8,'kobe beef from Japan',2),(9,'Freixenet wine','png.9',30,'Spanish wine',4),(10,'spagetti','png.10',7,'spagetti',7),(11,'mackerel sushi','png.11',6.4,'Japanese mackerel sushi',1);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_type`
--

DROP TABLE IF EXISTS `food_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_type`
--

LOCK TABLES `food_type` WRITE;
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` VALUES (1,'sushi'),(2,'meat'),(3,'seafood'),(4,'wine'),(5,'pizza'),(6,'sashimi'),(7,'spagetti');
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_res`
--

DROP TABLE IF EXISTS `like_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_res` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `date_like` datetime DEFAULT NULL,
  PRIMARY KEY (`like_id`),
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `like_res_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `like_res_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_res`
--

LOCK TABLES `like_res` WRITE;
/*!40000 ALTER TABLE `like_res` DISABLE KEYS */;
INSERT INTO `like_res` VALUES (1,2,3,'2024-10-10 13:21:40'),(2,1,4,'2024-10-04 10:21:42'),(3,1,2,'2024-10-02 10:25:50'),(4,7,8,'2024-06-07 15:50:55'),(5,6,10,'2024-05-07 15:55:58'),(6,5,4,'2024-03-07 20:53:55'),(7,4,9,'2024-09-25 08:53:49'),(8,3,6,'2024-07-07 15:50:52'),(9,8,3,'2024-06-07 17:50:55'),(10,9,1,'2024-10-07 15:30:57'),(11,10,5,'2024-01-07 15:50:52'),(12,6,7,'2024-02-20 10:45:49'),(13,5,6,'2024-09-07 10:30:00'),(14,8,7,'2024-05-07 10:31:00'),(15,3,8,'2024-06-07 10:45:22');
/*!40000 ALTER TABLE `like_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `arr_sub_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,2,3,2,'abcd','x'),(2,3,4,1,'abcd','x'),(3,1,7,6,'abcd','x'),(4,2,6,3,'abcd','x'),(5,6,5,2,'abcd','x'),(6,7,8,5,'abcd','x'),(7,8,9,1,'abcd','x'),(8,9,10,1,'abcd','x'),(9,10,11,2,'abcd','x'),(10,5,2,3,'abcd','x'),(11,4,6,5,'abcd','x'),(12,3,5,4,'abcd','x');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_res`
--

DROP TABLE IF EXISTS `rate_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_res` (
  `rate_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date_rate` datetime DEFAULT NULL,
  PRIMARY KEY (`rate_id`),
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `rate_res_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `rate_res_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_res`
--

LOCK TABLES `rate_res` WRITE;
/*!40000 ALTER TABLE `rate_res` DISABLE KEYS */;
INSERT INTO `rate_res` VALUES (1,2,3,3,'2024-10-10 13:21:40'),(2,1,4,2,'2024-10-04 10:21:42'),(3,1,2,4,'2024-10-02 10:25:50'),(4,7,8,3,'2024-06-07 15:50:55'),(5,6,10,5,'2024-05-07 15:55:58'),(6,5,4,5,'2024-03-07 20:53:55'),(7,4,9,4,'2024-09-25 08:53:49'),(8,3,6,5,'2024-07-07 15:50:52'),(9,8,3,1,'2024-06-07 17:50:55'),(10,9,1,3,'2024-10-07 15:30:57'),(11,10,5,4,'2024-01-07 15:50:52'),(12,6,7,3,'2024-02-20 10:45:49');
/*!40000 ALTER TABLE `rate_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'so 1','jpg.1','binh dan'),(2,'so 2','jpg.2','binh dan'),(3,'so 3','jpg.3','tiec cuoi'),(4,'so 4','jpg.4',' hai san'),(5,'so 5','jpg.5','nha hang nhat ban'),(6,'so 6','jpg.6','nha hang phap'),(7,'so 7','jpg.7','nha hang italy'),(8,'so 8','jpg.8','nha hang nhat ban'),(9,'so 9','jpg. 9','nha hang phap'),(10,'so 10','jpg.10','binh dan');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_food`
--

DROP TABLE IF EXISTS `sub_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_food` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_price` float DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `sub_food_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_food`
--

LOCK TABLES `sub_food` WRITE;
/*!40000 ALTER TABLE `sub_food` DISABLE KEYS */;
INSERT INTO `sub_food` VALUES (1,'iberico bacon',250,5),(2,'kobe beef 5 years',1000,8),(3,'bordeaux chateua wine',70.3,2),(4,'handmade pizza',50,3),(5,'lobster from Alaska',80,6);
/*!40000 ALTER TABLE `sub_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'A','A@gmail.com','1234'),(2,'B','B@gmail.com','1234'),(3,'C','C@gmail.com','1234'),(4,'D','D@gmail.com','1234'),(5,'E','E@gmail.com','1234'),(6,'F','F@gmail.com','1234'),(7,'G','G@gmail.com','1234'),(8,'H','H@gmail.com','1234'),(9,'I','I@gmail.com','1234'),(10,'j','J@gmail.com','1234'),(11,'K','K@gmail.com','1234');
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

-- Dump completed on 2024-10-11 17:19:11
