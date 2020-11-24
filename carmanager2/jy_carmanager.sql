-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jy_carmanager
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `admins`
--
Use jy_carmanager;
DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'张正','123'),(2,'刘显','123');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(20) NOT NULL,
  `car_type_id` int(11) NOT NULL,
  `car_user_id` int(11) NOT NULL,
  `car_begintime` date NOT NULL,
  `car_ns_state` varchar(20) NOT NULL,
  `car_run_no` varchar(20) DEFAULT NULL,
  `car_photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `car_type_id` (`car_type_id`),
  KEY `car_user_id` (`car_user_id`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`car_type_id`) REFERENCES `cartypes` (`ct_id`),
  CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`car_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'粤A-20845',1,1,'2019-11-10','正常','R002','car1.jpg'),(2,'粤A-33305',2,1,'2019-11-09','正常','R003','car2.jpg'),(3,'粤B-88006',1,2,'2020-11-03','正常','R004','car3.jpg'),(4,'布迪加威龙',2,2,'2020-11-14','正常','r0011','ea7e8be3-42c5-43cf-848c-48a47b79c054.PNG'),(5,'布迪加威龙',2,1,'2020-11-14','正常','r0011','2e173b9f-0534-489a-b7b0-275c0ac0c1b1.PNG');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartypes`
--

DROP TABLE IF EXISTS `cartypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartypes` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(20) DEFAULT NULL,
  `ct_man` int(11) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartypes`
--

LOCK TABLES `cartypes` WRITE;
/*!40000 ALTER TABLE `cartypes` DISABLE KEYS */;
INSERT INTO `cartypes` VALUES (1,'大众帕沙特',5),(2,'宝马Q5',5),(3,'丰田SUV',6);
/*!40000 ALTER TABLE `cartypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_code` int(11) NOT NULL,
  `rule_name` varchar(255) NOT NULL,
  `rule_score` int(11) NOT NULL,
  `rule_pay` int(11) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,1000,'不按规定线路行驶',2,200),(2,1001,'闯红灯',6,200),(3,1002,'违章停车',2,200),(4,1003,'占用应急车道',6,200),(5,1004,'高速公路掉头',6,200),(6,1005,'不避让行人',2,100);
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_no` varchar(20) NOT NULL,
  `user_sex` tinyint(1) DEFAULT NULL,
  `user_photo` varchar(40) DEFAULT NULL,
  `user_pwd` varchar(20) NOT NULL,
  `user_driverno` varchar(20) DEFAULT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_address` varchar(20) NOT NULL,
  `user_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'张三丰','440100002',1,'1.jpg','123456','A00001','1330012249','zhangsanfeng@163.com','广东省广州市东山区A街道',-10),(2,'王五','440100001',1,'2.jpg','123456','A00002','1366666666','wangxiang@163.com','广西省桂林市....',10),(3,'香蕉','2312321',1,'5571fb04-d1f2-4512-a315-22166becc754.PNG','111','3213213','18813215324','1004681771@qq.com','地球',12),(4,'小明','2312321',1,'','111','3213213','18813215324','1004681771@qq.com','地球',12),(5,'1','2312321',1,'22fe778e-c7d3-4964-a379-b12a5cb27fa7.PNG','111','3213213','18813215324','1004681771@qq.com','地球',12),(6,'1','2312321',1,'5ce824ec-04db-4273-901e-94fade72f727.PNG','111','3213213','18813215324','1004681771@qq.com','地球',12),(7,'香蕉','2312321',1,'921164c7-3b6c-4b89-8a6e-1d97409b92a0.PNG','123','3213213','18813215324','1004681771@qq.com','地球',12);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wzs`
--

DROP TABLE IF EXISTS `wzs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wzs` (
  `wz_id` int(11) NOT NULL AUTO_INCREMENT,
  `wz_car_id` int(11) NOT NULL,
  `wz_rule_id` int(11) NOT NULL,
  `wz_address` varchar(100) DEFAULT NULL,
  `wz_time` datetime NOT NULL,
  `wz_driver_id` int(11) DEFAULT NULL,
  `wz_state` varchar(255) DEFAULT NULL,
  `wz_pay` int(11) DEFAULT NULL,
  `wz_score` int(11) DEFAULT NULL,
  `wz_photo` varchar(60) DEFAULT NULL,
  `wz_remark` varchar(500) DEFAULT NULL,
  `wz_admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`wz_id`),
  KEY `fk_wz_car` (`wz_car_id`),
  KEY `fk_wz_rule` (`wz_rule_id`),
  KEY `wz_driver_id` (`wz_driver_id`),
  KEY `wz_admin_id` (`wz_admin_id`),
  CONSTRAINT `fk_wz_car` FOREIGN KEY (`wz_car_id`) REFERENCES `cars` (`car_id`),
  CONSTRAINT `fk_wz_rule` FOREIGN KEY (`wz_rule_id`) REFERENCES `rules` (`rule_id`),
  CONSTRAINT `wzs_ibfk_1` FOREIGN KEY (`wz_driver_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `wzs_ibfk_2` FOREIGN KEY (`wz_admin_id`) REFERENCES `admins` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wzs`
--

LOCK TABLES `wzs` WRITE;
/*!40000 ALTER TABLE `wzs` DISABLE KEYS */;
INSERT INTO `wzs` VALUES (2,3,2,'123','2020-11-11 01:35:00',NULL,'待确认',200,6,NULL,'dsfasf',1),(3,3,2,'123','2020-11-12 09:27:00',NULL,'待确认',200,6,'2342','',1),(4,1,5,NULL,'2020-11-12 09:27:00',1,'续费完成',200,6,'23423','',1),(5,1,3,NULL,'2020-11-12 09:55:00',1,'续费完成',200,2,'4234','',1);
/*!40000 ALTER TABLE `wzs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 11:33:35
