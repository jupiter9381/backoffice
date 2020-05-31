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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `merchants` */

insert  into `merchants`(`id`,`name`,`shortname`,`created_date`,`created_by`,`email`,`charges_fee`) values 
(1,'mch1','merchant','2020-05-29 08:55:20',NULL,'merchant1@example.com',5),
(3,'mch2',NULL,'2020-05-31 11:24:20',NULL,'merchant2@example.com',8),
(4,'mch3',NULL,'2020-05-31 11:24:54',NULL,'merchant3@example.com',7);

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
) ENGINE=InnoDB AUTO_INCREMENT=1000002 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`merchantorderid`,`merchantid`,`orderstatus`,`orderamount`,`firstname`,`lastname`,`bankaccount`,`createddatetime`,`createdby`,`updateddatetime`,`updatedby`,`userip`) values 
(1000000,'5ed0a955f0jkhg1gkagl','1000001','Pending','10.00','Johnson','Mark','John HSBC','2020-05-22 02:44:17','apiProgram',NULL,NULL,'202.100.200.9'),
(1000001,'5ed0a92dhjk713k9x7','1000001','Success','200.00','Angel','K','John HSBC','2020-05-22 15:44:17','apiProgram','2020-05-22 15:50:17','1000001','192.100.20.9');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payouttransaction` */

insert  into `payouttransaction`(`payoutid`,`merchantpayoutid`,`payoutamount`,`payoutstatus`,`bankname`,`bankbranch`,`accountholdername`,`accountno`,`bankprovince`,`bankcode`,`createddatetime`,`createdby`,`updateddatetime`,`updatedby`) values 
(1,'202005282128005072024','1000.00','Success','工商银行','湖北省','马园丹','6228480086153042000001	 ','湖北省','ICBC','2020-05-29 08:55:20','system','2020-05-29 09:55:20','system'),
(2,'202005282128005072076','500.00','Pending','工商银行','湖北省','马园丹','6228480086153042000001','湖北省','ICBC','2020-05-29 08:55:20','system',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8mb4;

/*Data for the table `summarylist` */

insert  into `summarylist`(`summaryid`,`merchantid`,`summarydate`,`summarytotalamount`,`summarytotalsuccessamt`,`summarytotalafterfee`,`summarytrx`,`summarysuccesstrx`,`createddatettime`,`createdby`) values 
(100000,'1000001','20200529','56584.5','45384.5','44181.79','43','38','2020-05-29 00:10','system');

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
(1000001,'jupiter2','0192023a7bbd73250516f069df18b500','user',NULL,NULL,NULL,1),
(1000003,'jupiter3','0192023a7bbd73250516f069df18b500','admin','2020-06-01 12:07:00',NULL,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
