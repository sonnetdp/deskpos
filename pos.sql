/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.33-community : Database - pos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pos`;

/*Table structure for table `current_stock` */

DROP TABLE IF EXISTS `current_stock`;

CREATE TABLE `current_stock` (
  `pos_id` int(3) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `current_stock` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(4) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `nid` decimal(10,0) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `pos_id` int(3) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `inventory_in` */

DROP TABLE IF EXISTS `inventory_in`;

CREATE TABLE `inventory_in` (
  `inv_in_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(3) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `goods_type` varchar(20) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `unit` varchar(3) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`inv_in_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `inventory_in` */

/*Table structure for table `inventory_out` */

DROP TABLE IF EXISTS `inventory_out`;

CREATE TABLE `inventory_out` (
  `inv_out_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(3) DEFAULT NULL,
  `trans_date` datetime DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`inv_out_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `inventory_out` */

/*Table structure for table `inventory_serial` */

DROP TABLE IF EXISTS `inventory_serial`;

CREATE TABLE `inventory_serial` (
  `inv_sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  KEY `inv_sl_id` (`inv_sl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `inventory_serial` */

/*Table structure for table `pos_location` */

DROP TABLE IF EXISTS `pos_location`;

CREATE TABLE `pos_location` (
  `pos_id` int(3) NOT NULL AUTO_INCREMENT,
  `pos_location` varchar(100) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `pos_location` */

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `self_level` tinyint(1) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `brand_name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `product_category` */

/*Table structure for table `product_offer` */

DROP TABLE IF EXISTS `product_offer`;

CREATE TABLE `product_offer` (
  `prod_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `offer_nature` varchar(30) DEFAULT NULL,
  `discount` varchar(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `product_offer` */

/*Table structure for table `product_price` */

DROP TABLE IF EXISTS `product_price`;

CREATE TABLE `product_price` (
  `prod_id` int(11) NOT NULL,
  `entry_date` date DEFAULT NULL,
  `mrp` decimal(10,0) DEFAULT NULL,
  `mpp` decimal(10,0) DEFAULT NULL,
  `vat_rate` decimal(10,0) DEFAULT NULL,
  `total_gross` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `product_price` */

/*Table structure for table `transaction_dtl` */

DROP TABLE IF EXISTS `transaction_dtl`;

CREATE TABLE `transaction_dtl` (
  `trans_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `unit` varchar(3) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `mrp` decimal(10,0) DEFAULT NULL,
  `vat` decimal(10,0) DEFAULT NULL,
  `gross_amount` decimal(10,0) DEFAULT NULL,
  `discount_amount` decimal(10,0) DEFAULT NULL,
  `net_payable` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `transaction_dtl` */

/*Table structure for table `transaction_mst` */

DROP TABLE IF EXISTS `transaction_mst`;

CREATE TABLE `transaction_mst` (
  `trans_id` int(11) NOT NULL,
  `pos_id` int(3) DEFAULT NULL,
  `emp_id` int(4) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `total_vat` decimal(10,0) DEFAULT NULL,
  `total_gross` decimal(10,0) DEFAULT NULL,
  `total_discount` decimal(10,0) DEFAULT NULL,
  `total_net_payable` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `transaction_mst` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
