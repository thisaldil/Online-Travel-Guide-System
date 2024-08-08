CREATE DATABASE  IF NOT EXISTS `company` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `company`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: company
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
-- Table structure for table `financial manager`
--

DROP TABLE IF EXISTS `financial manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial manager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial manager`
--

LOCK TABLES `financial manager` WRITE;
/*!40000 ALTER TABLE `financial manager` DISABLE KEYS */;
INSERT INTO `financial manager` VALUES (18,'Brad Pitt Jr1','bradpit@gmail.com','FM003','fmanager003'),(25,'Dilmith','dilmith@gmail.com','FM005','fmanager005'),(26,'Tom Hardy Jr','tomhardy@yahoo.com','FM004','fmanager004'),(37,'Jason Joe','joe123@gmail.com','FM006','fmanager006'),(40,'Chris Tukerr','Chris123@gmail.com','FM002','fmanager002'),(42,'Thisal Dilmith','thisal22@gmail.com','FM001','fmanager001');
/*!40000 ALTER TABLE `financial manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recieved_tours`
--

DROP TABLE IF EXISTS `recieved_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recieved_tours` (
  `id` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `details` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recieved_tours`
--

LOCK TABLES `recieved_tours` WRITE;
/*!40000 ALTER TABLE `recieved_tours` DISABLE KEYS */;
INSERT INTO `recieved_tours` VALUES ('1','local','kandy','2023-10-23','Kandy family trip ','pending'),('2','local','Anuradhapura','2023-10-22','Pilgrimage','pending'),('3','local','Hikkaduwa','2023-10-12','Family picnic','completed'),('4','local','Yala','2023-09-20','Wild Safary','completed'),('5','local','Nuwara Eliya','2023-09-12','Family Vacation','completed'),('6','local','Jaffna','2023-09-02','Mancation','completed');
/*!40000 ALTER TABLE `recieved_tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 12:37:25
