/*
SQLyog Community v13.1.3  (64 bit)
MySQL - 10.4.8-MariaDB : Database - backoffice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`backoffice` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `backoffice`;

/*Table structure for table `merchants` */

DROP TABLE IF EXISTS `merchants`;

CREATE TABLE `merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `charges_fee` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000004 DEFAULT CHARSET=utf8mb4;

/*Data for the table `merchants` */

insert  into `merchants`(`id`,`name`,`shortname`,`created_date`,`created_by`,`email`,`charges_fee`) values 
(1000001,'mch1','merchant','2020-05-29 08:55:20',NULL,'merchant1@example.com',5),
(1000002,'mch2',NULL,'2020-05-31 11:24:20',NULL,'merchant2@example.com',8),
(1000003,'mch3',NULL,'2020-05-31 11:24:54',NULL,'merchant3@example.com',7);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `merchantorderid` varchar(500) DEFAULT NULL,
  `merchantid` varchar(100) DEFAULT NULL,
  `orderstatus` varchar(100) DEFAULT NULL,
  `orderamount` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `bankaccount` varchar(100) DEFAULT NULL,
  `createddatetime` varchar(100) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `updateddatetime` varchar(100) DEFAULT NULL,
  `updatedby` varchar(100) DEFAULT NULL,
  `userip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1000158 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`merchantorderid`,`merchantid`,`orderstatus`,`orderamount`,`firstname`,`lastname`,`bankaccount`,`createddatetime`,`createdby`,`updateddatetime`,`updatedby`,`userip`) values 
(1000000,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000001,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000002,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000003,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000004,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000005,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000006,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000007,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000008,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000009,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000010,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000011,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000012,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000013,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000014,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000015,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000016,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000017,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000018,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000019,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000020,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000021,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000022,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000023,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000024,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000025,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000026,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000027,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000028,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000029,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000030,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000031,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000032,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000033,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000034,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000035,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000036,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000037,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000038,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000039,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000040,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000041,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000042,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000043,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000044,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000045,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000046,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000047,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000048,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000049,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000050,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000051,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000052,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000053,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000054,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000055,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000056,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000057,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000058,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000059,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000060,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000061,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000062,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000063,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000064,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000065,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000066,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000067,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000068,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000069,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000070,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000071,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000072,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000073,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000074,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000075,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000076,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000077,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000078,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000079,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000080,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000081,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000082,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000083,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000084,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000085,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000086,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000087,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000088,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000089,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000090,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000091,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000092,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000093,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000094,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000095,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000096,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000097,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000098,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000099,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000100,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000101,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000102,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000103,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000104,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000105,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000106,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000107,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000108,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000109,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000110,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000111,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000112,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000113,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000114,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000115,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000116,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000117,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000118,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000119,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000120,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000121,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000122,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000123,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000124,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000125,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000126,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000127,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000128,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000129,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000130,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000131,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000132,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000133,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000134,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000135,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000136,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000137,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000138,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000139,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000140,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000141,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000142,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000143,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000144,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000145,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000146,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000147,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000148,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000149,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000150,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000151,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000152,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000153,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000154,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9'),
(1000155,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000156,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9'),
(1000157,'5edfgjhfjfghfgh13k9x7','1000001','Pending','10.00','Johnson','K','John HSBC','2020-05-22 15:44:17','apiProgram',NULL,NULL,'192.100.20.9');

/*Table structure for table `payouttransaction` */

DROP TABLE IF EXISTS `payouttransaction`;

CREATE TABLE `payouttransaction` (
  `payoutid` int(11) NOT NULL AUTO_INCREMENT,
  `merchantpayoutid` varchar(150) DEFAULT NULL,
  `payoutamount` varchar(45) DEFAULT NULL,
  `payoutstatus` varchar(150) DEFAULT NULL,
  `bankname` varchar(150) DEFAULT NULL,
  `bankbranch` varchar(150) DEFAULT NULL,
  `accountholdername` varchar(150) DEFAULT NULL,
  `accountno` varchar(150) DEFAULT NULL,
  `bankprovince` varchar(150) DEFAULT NULL,
  `bankcode` varchar(150) DEFAULT NULL,
  `createddatetime` varchar(150) DEFAULT NULL,
  `createdby` varchar(150) DEFAULT NULL,
  `updateddatetime` varchar(150) DEFAULT NULL,
  `updatedby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`payoutid`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payouttransaction` */

insert  into `payouttransaction`(`payoutid`,`merchantpayoutid`,`payoutamount`,`payoutstatus`,`bankname`,`bankbranch`,`accountholdername`,`accountno`,`bankprovince`,`bankcode`,`createddatetime`,`createdby`,`updateddatetime`,`updatedby`) values 
(1,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001	 ','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(2,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(3,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(4,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(5,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(6,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(7,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(8,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(9,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(10,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(11,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(12,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(13,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(14,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(15,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(16,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(17,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(18,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(19,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(20,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(21,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(22,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(23,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(24,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(25,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(26,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(27,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(28,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(29,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(30,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(31,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(32,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(33,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(34,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(35,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(36,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(37,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(38,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(39,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(40,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(41,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(42,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(43,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(44,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(45,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(46,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(47,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(48,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(49,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(50,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(51,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(52,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(53,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(54,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(55,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(56,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(57,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(58,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(59,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(60,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(61,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(62,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(63,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(64,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(65,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(66,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(67,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(68,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(69,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(70,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(71,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(72,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(73,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(74,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(75,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(76,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(77,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(78,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(79,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(80,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(81,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(82,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(83,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(84,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(85,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(86,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(87,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(88,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(89,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(90,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(91,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(92,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(93,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(94,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(95,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(96,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(97,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(98,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(99,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(100,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(101,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(102,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(103,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(104,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(105,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(106,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(107,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(108,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(109,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(110,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(111,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(112,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(113,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(114,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(115,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(116,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(117,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(118,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(119,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(120,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(121,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(122,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(123,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(124,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(125,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(126,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(127,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(128,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL),
(129,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(130,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL);

/*Table structure for table `summarylist` */

DROP TABLE IF EXISTS `summarylist`;

CREATE TABLE `summarylist` (
  `summaryid` int(11) NOT NULL AUTO_INCREMENT,
  `merchantid` varchar(150) DEFAULT NULL,
  `summarydate` varchar(150) DEFAULT NULL,
  `summarytotalamount` varchar(150) DEFAULT NULL,
  `summarytotalsuccessamt` varchar(150) DEFAULT NULL,
  `summarytotalafterfee` varchar(150) DEFAULT NULL,
  `summarytrx` varchar(150) DEFAULT NULL,
  `summarysuccesstrx` varchar(150) DEFAULT NULL,
  `createddatettime` varchar(150) DEFAULT NULL,
  `createdby` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`summaryid`)
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8mb4;

/*Data for the table `summarylist` */

insert  into `summarylist`(`summaryid`,`merchantid`,`summarydate`,`summarytotalamount`,`summarytotalsuccessamt`,`summarytotalafterfee`,`summarytrx`,`summarysuccesstrx`,`createddatettime`,`createdby`) values 
(100000,'1000001','20200529','56584.5','45384.5','44181.79','43','38','2020-05-29 00:10','system'),
(100001,'1000001','20200602','56584.5','45384.5','44181.79','43','38','2020-06-02 00:10','system');

/*Table structure for table `updatepaymentstatuslogs` */

DROP TABLE IF EXISTS `updatepaymentstatuslogs`;

CREATE TABLE `updatepaymentstatuslogs` (
  `paymentslogsid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(150) DEFAULT NULL,
  `updateby` varchar(150) DEFAULT NULL,
  `updateddatetime` varchar(150) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`paymentslogsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `updatepaymentstatuslogs` */

insert  into `updatepaymentstatuslogs`(`paymentslogsid`,`orderid`,`updateby`,`updateddatetime`,`status`) values 
(1,'1000001','1000002','2020-05-29 00:10','Success');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  `usertype` enum('admin','user','superadmin') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `change_password_time` datetime DEFAULT NULL,
  `merchantid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000004 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`userpassword`,`usertype`,`created_date`,`last_login_time`,`change_password_time`,`merchantid`) values 
(1000000,'jupiter','0192023a7bbd73250516f069df18b500','superadmin','2020-05-29 07:42:54','2020-05-29 07:42:57','2020-05-29 07:43:00',NULL),
(1000001,'jupiter2','0192023a7bbd73250516f069df18b500','user',NULL,NULL,NULL,1000001),
(1000003,'jupiter3','0192023a7bbd73250516f069df18b500','admin','2020-06-01 12:07:00',NULL,NULL,1000001);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
