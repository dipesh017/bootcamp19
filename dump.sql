-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: bootcamp
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` varchar(5) NOT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `caddress` varchar(60) DEFAULT NULL,
  `ccity` varchar(15) DEFAULT NULL,
  `cpostalcode` varchar(10) DEFAULT NULL,
  `cphone` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  KEY `ccity` (`ccity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('101','dipesh','home address','bathinda','151001','7055554256'),('102','rahul','test address','kalanwali','125201','9874563210'),('103','pranjal','tothenew','noida','125410','8745698520');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) DEFAULT NULL,
  `customerID` varchar(5) DEFAULT NULL,
  `saleID` varchar(5) DEFAULT NULL,
  `shipAddress` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `productID` (`productID`),
  KEY `customerID` (`customerID`),
  KEY `saleID` (`saleID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`saleID`) REFERENCES `salepersons` (`saleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,301,'102','201','kalanwali'),(2,301,'103','202','noida'),(3,302,'101','202','noida'),(4,303,'101','202','noida'),(5,302,'101','203','bathinda');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productName` varchar(40) DEFAULT NULL,
  `UnitPrice` int(11) DEFAULT '0',
  `UnitsInStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `productName` (`productName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (301,'product_1',500,30),(302,'product_2',250,75),(303,'product_3',750,60);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salepersons`
--

DROP TABLE IF EXISTS `salepersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salepersons` (
  `saleID` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `semail` varchar(45) DEFAULT NULL,
  `scity` varchar(15) DEFAULT NULL,
  `sphone` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`saleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salepersons`
--

LOCK TABLES `salepersons` WRITE;
/*!40000 ALTER TABLE `salepersons` DISABLE KEYS */;
INSERT INTO `salepersons` VALUES ('201','sale_1','sale.1@gmail.com','noida','8745698520'),('202','sale_2','sale.2@gmail.com','bangalore','7896541230'),('203','sale_3','sale.3@gmail.com','mumbai','7458963210');
/*!40000 ALTER TABLE `salepersons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 17:17:18
