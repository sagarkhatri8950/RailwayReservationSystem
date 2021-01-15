-- MySQL dump 10.12
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.2.3-falcon-alpha-community-nt

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
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `username` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phoneno` varchar(100) DEFAULT NULL,
  `froms` varchar(100) DEFAULT NULL,
  `tos` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `tno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES ('mohit','Haryana','Mohit','Chennai Express',21,'8954989230','New Delhi','Chennai Junc.','AC','14005'),('sagar','Jatwara','Komal','Chennai Express',23,'8950649697','New Delhi','Chennai Junc.','AC','14005');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `tno` int(11) NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `dtime` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `stime` varchar(100) DEFAULT NULL,
  `actr` int(11) DEFAULT NULL,
  `ac_seats` int(11) DEFAULT NULL,
  `sctr` int(11) DEFAULT NULL,
  `sl_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (14005,'Chennai Express','New Delhi','9:30 AM','Chennai Junc.','10:00 AM',1500,47,800,80),(14575,'Bhatinda Express','Delhi','2:00 PM','Bhatinda Junc.','2:15 PM',2500,23,600,55),(14576,'Jammu Mail','Panipat','10:30 AM','Jammu','11:00 AM',1100,30,450,60),(16082,'Shiv Shakti Express','Pune','06:00 AM','Haridwar','05:00 AM',1000,25,350,55);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `user_p` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@123',0),(2,'sagar','123',2),(3,'Mohit','mohit',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 13:42:01
