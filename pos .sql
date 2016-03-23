-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2016 at 05:55 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `current_stock`
--

CREATE TABLE IF NOT EXISTS `current_stock` (
  `pos_id` int(3) DEFAULT NULL,
  `batch_no` varchar(10) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(4) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `nid` decimal(10,0) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `pos_id` int(3) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_in`
--

CREATE TABLE IF NOT EXISTS `inventory_in` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_out`
--

CREATE TABLE IF NOT EXISTS `inventory_out` (
  `inv_out_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_id` int(3) DEFAULT NULL,
  `trans_date` datetime DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`inv_out_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_serial`
--

CREATE TABLE IF NOT EXISTS `inventory_serial` (
  `inv_sl_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  KEY `inv_sl_id` (`inv_sl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pos_location`
--

CREATE TABLE IF NOT EXISTS `pos_location` (
  `pos_id` int(3) NOT NULL AUTO_INCREMENT,
  `pos_location` varchar(100) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `self_level` tinyint(1) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `brand_name` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_offer`
--

CREATE TABLE IF NOT EXISTS `product_offer` (
  `prod_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `offer_nature` varchar(30) DEFAULT NULL,
  `discount` varchar(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE IF NOT EXISTS `product_price` (
  `prod_id` int(11) NOT NULL,
  `entry_date` date DEFAULT NULL,
  `mrp` decimal(10,0) DEFAULT NULL,
  `mpp` decimal(10,0) DEFAULT NULL,
  `vat_rate` decimal(10,0) DEFAULT NULL,
  `total_gross` decimal(10,0) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_dtl`
--

CREATE TABLE IF NOT EXISTS `transaction_dtl` (
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

-- --------------------------------------------------------

--
-- Table structure for table `transaction_mst`
--

CREATE TABLE IF NOT EXISTS `transaction_mst` (
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

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `emp_id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `emp_id`, `username`, `password`) VALUES
(1, 1, 'juel', '123'),
(2, 2, 'rana', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
