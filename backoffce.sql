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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `merchants` */

insert  into `merchants`(`id`,`name`,`shortname`,`created_date`,`created_by`,`email`,`charges_fee`) values 
(1,'mch1','merchant','2020-05-29 08:55:20',NULL,'merchant1@example.com',5);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  `usertype` enum('admin','user','merchant') DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `change_password_time` datetime DEFAULT NULL,
  `merchantid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000003 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`userpassword`,`usertype`,`created_date`,`last_login_time`,`change_password_time`,`merchantid`) values 
(1000000,'jupiter','0192023a7bbd73250516f069df18b500','admin','2020-05-29 07:42:54','2020-05-29 07:42:57','2020-05-29 07:43:00',NULL),
(1000002,'jupiter2','0192023a7bbd73250516f069df18b500','user',NULL,NULL,NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
