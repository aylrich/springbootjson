/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.6.10 : Database - hci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hci` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hci`;

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(1);

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `moduleId` bigint(20) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(75) DEFAULT NULL,
  `moduleOrder` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `module_id` bigint(20) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_order` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `module` */

insert  into `module`(`moduleId`,`moduleName`,`moduleOrder`,`userId`,`module_id`,`module_name`,`module_order`,`user_id`) values 
(1,'PromoCard',1,1,1,'PromoCard',1,1),
(2,'CategoryCard',2,1,2,'CategoryCard',2,1),
(3,'FlashSaleCard',3,1,3,'FlashSaleCard',3,1),
(4,'HistoryCard',4,1,4,'HistoryCard',4,1),
(5,'NewsCard',5,1,5,'NewsCard',5,1),
(6,'PromoCard',1,6,6,'PromoCard',1,6),
(7,'NewsCard',2,6,7,'NewsCard',2,6),
(8,'FlashSaleCard',3,6,8,'FlashSaleCard',3,6),
(9,'CategoryCard',4,6,9,'CategoryCard',4,6),
(10,'HistoryCard',5,6,10,'HistoryCard',5,6),
(11,'PromoCard',1,7,11,'PromoCard',1,7),
(12,'FlashSaleCard',2,7,12,'FlashSaleCard',2,7),
(13,'CategoryCard',3,7,13,'CategoryCard',3,7),
(14,'NewsCard',4,7,14,'NewsCard',4,7),
(15,'HistoryCard',5,7,15,'HistoryCard',5,7);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`) values 
(1,'UserA'),
(6,'UserB'),
(7,'UserC');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
