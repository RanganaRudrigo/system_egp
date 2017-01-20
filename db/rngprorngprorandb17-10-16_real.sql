-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 166.62.8.8
-- Generation Time: Oct 16, 2016 at 11:44 PM
-- Server version: 5.5.43
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rngprorandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tab`
--

CREATE TABLE `admin_tab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_` datetime DEFAULT NULL,
  `user` int(11) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_model` int(11) NOT NULL,
  `product_item` int(11) NOT NULL,
  `purchase_item` int(11) NOT NULL,
  `invoice_item` int(11) NOT NULL,
  `return_item` int(11) NOT NULL,
  `customer_list` int(11) NOT NULL,
  `supplier_list` int(11) NOT NULL,
  `item_list` int(11) NOT NULL,
  `purchasing_report_d` int(11) NOT NULL,
  `purchasing_report_s` int(11) NOT NULL,
  `supplier_wise_d` int(11) NOT NULL,
  `supplier_wise_s` int(11) NOT NULL,
  `balance_stock` int(11) NOT NULL,
  `damage_serial_d` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_tab`
--

INSERT INTO `admin_tab` VALUES(1, 'admin', '123', 'Yes', '2015-08-28 09:34:21', '2015-05-07 09:30:58', 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `i_code` varchar(50) NOT NULL DEFAULT '0',
  `i_date` varchar(50) NOT NULL DEFAULT '0',
  `cus_id` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=11 ;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` VALUES(1, 'INVC001', '1211', '2016-04-04', '19', '27-Sep-2016', 'No', '2016-09-27 21:04:06');
INSERT INTO `invoice_item` VALUES(2, 'INVC002', 'PR16-00719', '2016-09-27', '17', '27-Sep-2016', 'No', '2016-09-27 21:08:16');
INSERT INTO `invoice_item` VALUES(3, 'INVC003', 'PR16-00721', '2016-04-11', '17', '27-Sep-2016', 'No', '2016-09-27 21:55:26');
INSERT INTO `invoice_item` VALUES(4, 'INVC004', 'PO-595(AOD-1214)', '2016-04-18', '19', '27-Sep-2016', 'No', '2016-09-27 22:59:42');
INSERT INTO `invoice_item` VALUES(5, 'INVC005', 'PR16-00724', '2016-04-16', '17', '27-Sep-2016', 'No', '2016-09-27 23:01:57');
INSERT INTO `invoice_item` VALUES(6, 'INVC006', 'PR16-00726', '2016-04-16', '17', '27-Sep-2016', 'No', '2016-09-27 23:29:48');
INSERT INTO `invoice_item` VALUES(7, 'INVC007', 'PR16-00727', '2016-04-16', '17', '27-Sep-2016', 'No', '2016-09-27 23:40:47');
INSERT INTO `invoice_item` VALUES(8, 'INVC008', 'PR16-00728', '2016-04-16', '17', '27-Sep-2016', 'No', '2016-09-27 23:44:26');
INSERT INTO `invoice_item` VALUES(9, 'INVC009', 'PR16-00731', '2016-04-16', '17', '27-Sep-2016', 'No', '2016-09-27 23:46:00');
INSERT INTO `invoice_item` VALUES(10, 'INVC0010', '45621', '2016-09-29', '21', '29-Sep-2016', 'No', '2016-09-29 00:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_details`
--

CREATE TABLE `invoice_item_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(50) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `has_serial` varchar(50) NOT NULL DEFAULT '0',
  `qty` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=14 ;

--
-- Dumping data for table `invoice_item_details`
--

INSERT INTO `invoice_item_details` VALUES(1, 'INVC001', 94, 'No', '18', '2016-09-27 21:04:06');
INSERT INTO `invoice_item_details` VALUES(2, 'INVC002', 173, 'No', '2', '2016-09-27 21:08:16');
INSERT INTO `invoice_item_details` VALUES(3, 'INVC003', 173, 'No', '4', '2016-09-27 21:55:26');
INSERT INTO `invoice_item_details` VALUES(4, 'INVC004', 94, 'No', '18', '2016-09-27 22:59:42');
INSERT INTO `invoice_item_details` VALUES(5, 'INVC005', 94, 'No', '01', '2016-09-27 23:01:57');
INSERT INTO `invoice_item_details` VALUES(6, 'INVC006', 176, 'No', '02', '2016-09-27 23:29:48');
INSERT INTO `invoice_item_details` VALUES(7, 'INVC007', 173, 'No', '01', '2016-09-27 23:40:47');
INSERT INTO `invoice_item_details` VALUES(8, 'INVC008', 173, 'No', '02', '2016-09-27 23:44:26');
INSERT INTO `invoice_item_details` VALUES(9, 'INVC009', 173, 'No', '02', '2016-09-27 23:46:00');
INSERT INTO `invoice_item_details` VALUES(10, 'INVC0010', 17, 'No', '8', '2016-09-29 00:06:15');
INSERT INTO `invoice_item_details` VALUES(11, 'INVC0010', 25, 'No', '3', '2016-09-29 00:06:15');
INSERT INTO `invoice_item_details` VALUES(12, 'INVC0010', 67, 'No', '4', '2016-09-29 00:06:15');
INSERT INTO `invoice_item_details` VALUES(13, 'INVC0010', 284, 'No', '2', '2016-09-29 00:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_serial`
--

CREATE TABLE `invoice_item_serial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(50) NOT NULL DEFAULT '0',
  `p_item_id` varchar(50) NOT NULL DEFAULT '0',
  `key` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

--
-- Dumping data for table `invoice_item_serial`
--


-- --------------------------------------------------------

--
-- Table structure for table `pro_brand`
--

CREATE TABLE `pro_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(255) NOT NULL DEFAULT '0',
  `pro_brand` varchar(255) NOT NULL DEFAULT '0',
  `pro_brand_des` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `update` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `pro_brand`
--

INSERT INTO `pro_brand` VALUES(11, 'BRND002', 'PHILIPS', '', '24-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(12, 'BRND003', 'FULLMARK', '', '24-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(13, 'BRND004', 'R&G', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(14, 'BRND005', 'PRGM', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(15, 'BRND0015', 'RIBBON', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(16, 'BRND0016', 'REFILL KIT', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(17, 'BRND0017', 'HP', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(18, 'BRND0018', 'CANON', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(19, 'BRND0019', 'LEXMARK', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(20, 'BRND0020', 'BROTHER', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(21, 'BRND0021', 'EPSON', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(22, 'BRND0022', 'SAMSUNG', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(23, 'BRND0023', 'SAM 101 R&G', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(24, 'BRND0024', 'END FELT', '', '14-Oct-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(25, 'BRND0025', 'R&G BOX IMPORT', '', '06-Nov-2015', 'No', '0');
INSERT INTO `pro_brand` VALUES(28, 'BRND0028', 'SHARP', '', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(29, 'BRND0029', 'XEROX', 'XEROX', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(32, 'BRND0032', 'HP LASERJET', '', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(33, 'BRND0033', 'XEROV', '', '05-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(35, 'BRND0034', 'SAMSUMG', '', '06-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(36, 'BRND0036', 'R & G', '', '07-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(38, 'BRND0037', 'POPULAR', '', '09-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(39, 'BRND0039', 'NOKIA', '', '20-Jun-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(40, 'BRND0040', 'HAND WASH', '', '12-Jul-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(41, 'BRND0041', 'A PLUS', '', '12-Jul-2016', 'No', '0');
INSERT INTO `pro_brand` VALUES(42, 'BRND0042', 'NESTLE', '', '12-Jul-2016', 'No', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pro_item`
--

CREATE TABLE `pro_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `pro_type_id` int(11) NOT NULL DEFAULT '0',
  `pro_brand_id` int(11) NOT NULL DEFAULT '0',
  `pro_model_id` int(11) NOT NULL DEFAULT '0',
  `item_name` varchar(255) NOT NULL DEFAULT '0',
  `item_desc` varchar(255) NOT NULL DEFAULT '0',
  `has_sireal` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `abl_qty` int(20) DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`),
  KEY `FK_pro_item_pro_type` (`pro_type_id`),
  KEY `FK_pro_item_pro_brand` (`pro_brand_id`),
  KEY `FK_pro_item_pro_model` (`pro_model_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=554 ;

--
-- Dumping data for table `pro_item`
--

INSERT INTO `pro_item` VALUES(17, 'ITEM002', 5, 12, 48, 'BIO40BK01L INK', '', '0', '24-Aug-2015', 'No', 51, '2016-09-29 00:06:15');
INSERT INTO `pro_item` VALUES(18, 'ITEM003', 5, 12, 49, 'BIO40BK100 INK', '', '0', '24-Aug-2015', 'No', 4, '2016-06-02 03:47:34');
INSERT INTO `pro_item` VALUES(19, 'ITEM004', 5, 12, 50, 'BIO40CN01L', '', '0', '24-Aug-2015', 'No', 0, '2015-08-24 23:41:13');
INSERT INTO `pro_item` VALUES(20, 'ITEM005', 5, 12, 51, 'BIO40CN100', '', '0', '24-Aug-2015', 'No', 51, '2016-09-29 00:04:02');
INSERT INTO `pro_item` VALUES(21, 'ITEM006', 5, 12, 52, 'BIO40MA01L  INK', '', '0', '24-Aug-2015', 'No', 8, '2016-09-29 00:04:02');
INSERT INTO `pro_item` VALUES(22, 'ITEM007', 5, 12, 53, 'BIO40MA100 INK', '', '0', '24-Aug-2015', 'No', 58, '2016-09-29 00:04:02');
INSERT INTO `pro_item` VALUES(23, 'ITEM008', 5, 12, 54, 'BIO40YW01L INK', '', '0', '24-Aug-2015', 'No', 11, '2016-09-29 00:04:02');
INSERT INTO `pro_item` VALUES(24, 'ITEM009', 5, 12, 55, 'BIO40YW100 INK', '', '0', '24-Aug-2015', 'No', 44, '2015-11-13 00:07:17');
INSERT INTO `pro_item` VALUES(25, 'ITEM0010', 5, 12, 56, 'BIO42BK01LFM INK', '', '0', '24-Aug-2015', 'No', 9, '2016-09-29 00:06:15');
INSERT INTO `pro_item` VALUES(26, 'ITEM0011', 5, 12, 57, 'BIO42BK100FM INK', '', '0', '24-Aug-2015', 'No', 169, '2016-06-23 00:57:23');
INSERT INTO `pro_item` VALUES(27, 'ITEM0012', 5, 12, 58, 'BIO42CN01LFM INK', '', '0', '24-Aug-2015', 'No', 36, '2015-09-03 01:39:37');
INSERT INTO `pro_item` VALUES(28, 'ITEM0013', 5, 12, 59, 'BIO42CN100FM INK', '', '0', '24-Aug-2015', 'No', 100, '2016-09-29 00:04:51');
INSERT INTO `pro_item` VALUES(29, 'ITEM0014', 5, 12, 60, 'BIOMA01LFM INK', '', '0', '24-Aug-2015', 'No', 3, '2016-09-29 00:04:51');
INSERT INTO `pro_item` VALUES(30, 'ITEM0015', 5, 12, 61, 'BIO42MA100FM INK', '', '0', '24-Aug-2015', 'No', 95, '2016-09-29 00:04:51');
INSERT INTO `pro_item` VALUES(31, 'ITEM0016', 5, 12, 62, 'BIO42YW01LFM INK', '', '0', '24-Aug-2015', 'No', 41, '2016-09-29 00:04:51');
INSERT INTO `pro_item` VALUES(32, 'ITEM0017', 5, 12, 63, 'BIO42YW100FM INK', '', '0', '25-Aug-2015', 'No', 71, '2016-09-29 00:04:51');
INSERT INTO `pro_item` VALUES(33, 'ITEM0018', 5, 12, 64, 'BIO99BK01LFM INK', '', '0', '25-Aug-2015', 'No', 47, '2016-06-23 00:57:23');
INSERT INTO `pro_item` VALUES(34, 'ITEM0019', 5, 12, 65, 'BIO99BK100FM INK', '', '0', '25-Aug-2015', 'No', 177, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(35, 'ITEM0020', 5, 12, 66, 'BIO99CN01LFM INK', '', '0', '25-Aug-2015', 'No', 15, '2016-06-23 00:57:23');
INSERT INTO `pro_item` VALUES(36, 'ITEM0021', 5, 12, 67, 'BIO99CN100FM INK', '', '0', '25-Aug-2015', 'No', 75, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(37, 'ITEM0022', 5, 12, 68, 'BIO99MA01LFM INK', '', '0', '25-Aug-2015', 'No', 21, '2016-06-23 00:57:23');
INSERT INTO `pro_item` VALUES(38, 'ITEM0023', 5, 12, 69, 'BIO99MA100FM INK', '', '0', '25-Aug-2015', 'No', 78, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(39, 'ITEM0024', 5, 12, 70, 'BIO99YW01LFM INK', '', '0', '25-Aug-2015', 'No', 19, '2016-06-23 00:57:23');
INSERT INTO `pro_item` VALUES(40, 'ITEM0025', 5, 12, 71, 'BIO99YW100FM INK', '', '0', '25-Aug-2015', 'No', 85, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(41, 'ITEM0026', 5, 12, 72, 'E073NTBK INK', '', '0', '25-Aug-2015', 'No', 313, '2015-09-29 21:09:49');
INSERT INTO `pro_item` VALUES(42, 'ITEM0027', 5, 12, 73, 'E073NTCN INK', '', '0', '25-Aug-2015', 'No', 105, '2015-09-29 21:09:49');
INSERT INTO `pro_item` VALUES(43, 'ITEM0028', 5, 12, 74, 'E073NTMA INK', '', '0', '25-Aug-2015', 'No', 97, '2015-09-29 21:09:49');
INSERT INTO `pro_item` VALUES(44, 'ITEM0029', 5, 12, 75, 'E073NTYW INK', '', '0', '25-Aug-2015', 'No', 102, '2015-09-29 21:09:49');
INSERT INTO `pro_item` VALUES(45, 'ITEM0030', 6, 13, 76, '27 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 23, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(46, 'ITEM0031', 6, 13, 77, '28 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 25, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(47, 'ITEM0032', 6, 13, 78, '40 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 47, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(48, 'ITEM0033', 6, 13, 79, '41 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 24, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(49, 'ITEM0034', 6, 13, 80, '45 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 01:46:26');
INSERT INTO `pro_item` VALUES(50, 'ITEM0035', 6, 13, 81, '56 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 12, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(51, 'ITEM0036', 6, 13, 82, '57 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 16, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(52, 'ITEM0037', 6, 13, 83, '60 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 68, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(53, 'ITEM0038', 6, 13, 84, '60 CL INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 70, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(54, 'ITEM0039', 6, 13, 85, '61 BLK INK CARTRIDHGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 01:54:46');
INSERT INTO `pro_item` VALUES(55, 'ITEM0040', 6, 13, 86, '61 CL INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 71, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(56, 'ITEM0041', 6, 13, 87, '212 BLK INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 01:56:55');
INSERT INTO `pro_item` VALUES(57, 'ITEM0042', 6, 13, 88, '121 CL CARTRIDGE', '', '0', '25-Aug-2015', 'No', 22, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(58, 'ITEM0043', 6, 13, 89, '122 BLK INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 33, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(59, 'ITEM0044', 6, 13, 90, '122 CL INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 31, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(60, 'ITEM0045', 6, 13, 91, '810 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 94, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(61, 'ITEM0046', 6, 13, 92, '811 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:02:03');
INSERT INTO `pro_item` VALUES(62, 'ITEM0047', 6, 13, 93, '21 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 103, '2015-11-08 21:33:28');
INSERT INTO `pro_item` VALUES(63, 'ITEM0048', 6, 13, 94, '22 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 91, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(64, 'ITEM0049', 6, 13, 95, '830 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 30, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(65, 'ITEM0050', 6, 13, 96, '831 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 11, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(66, 'ITEM0051', 6, 13, 97, '15 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:07:07');
INSERT INTO `pro_item` VALUES(67, 'ITEM0052', 6, 13, 98, '38 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 76, '2016-09-29 00:06:15');
INSERT INTO `pro_item` VALUES(68, 'ITEM0053', 6, 13, 99, '39 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 28, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(69, 'ITEM0054', 6, 13, 100, '78 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 2, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(70, 'ITEM0055', 6, 13, 101, '702 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 37, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(71, 'ITEM0056', 6, 13, 102, '901 BLK INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 18, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(72, 'ITEM0057', 6, 13, 103, '901 CL INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 17, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(73, 'ITEM0058', 6, 13, 104, '510 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:22:49');
INSERT INTO `pro_item` VALUES(74, 'ITEM0059', 6, 13, 105, '511 INK CARTRIDGE', '', '0', '25-Aug-2015', 'No', 2, '2015-09-29 20:55:43');
INSERT INTO `pro_item` VALUES(75, 'ITEM0060', 7, 14, 106, 'PRGM 15A TONER', '', '0', '25-Aug-2015', 'No', 183, '2016-06-02 03:46:24');
INSERT INTO `pro_item` VALUES(76, 'ITEM0061', 7, 14, 107, 'PRGM 53A TONER', '', '0', '25-Aug-2015', 'No', 360, '2016-06-03 00:08:08');
INSERT INTO `pro_item` VALUES(77, 'ITEM0062', 7, 14, 108, 'PRGM 15X TONER', '', '0', '25-Aug-2015', 'No', 24, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(78, 'ITEM0063', 7, 14, 109, 'PRGM 13X TONER', '', '0', '25-Aug-2015', 'No', 12, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(79, 'ITEM0064', 7, 14, 110, 'PRGM 53X TONER', '', '0', '25-Aug-2015', 'No', 175, '2016-06-03 00:04:49');
INSERT INTO `pro_item` VALUES(80, 'ITEM0065', 7, 14, 111, 'PRGM 49X TONER', '', '0', '25-Aug-2015', 'No', 248, '2016-06-03 00:04:18');
INSERT INTO `pro_item` VALUES(81, 'ITEM0066', 7, 14, 112, 'PRGM 38X/20K TONER', '', '0', '25-Aug-2015', 'No', 18, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(82, 'ITEM0067', 7, 14, 113, 'PRGM 12X TONER', '', '0', '25-Aug-2015', 'No', 378, '2016-06-03 00:05:26');
INSERT INTO `pro_item` VALUES(83, 'ITEM0068', 7, 14, 114, 'PRGM 43X/9000 NORMAL TONER', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:47:37');
INSERT INTO `pro_item` VALUES(84, 'ITEM0069', 7, 14, 115, 'PRGM TONER', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:49:33');
INSERT INTO `pro_item` VALUES(85, 'ITEM0070', 7, 14, 116, 'PRGM 104 TONER', '', '0', '25-Aug-2015', 'No', 268, '2016-06-03 00:11:23');
INSERT INTO `pro_item` VALUES(86, 'ITEM0071', 7, 14, 117, 'PRGM 101 TONER', '', '0', '25-Aug-2015', 'No', 140, '2016-06-03 00:10:47');
INSERT INTO `pro_item` VALUES(87, 'ITEM0072', 7, 14, 119, 'PRGM 450 TONER', '', '0', '25-Aug-2015', 'No', 20, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(88, 'ITEM0073', 7, 14, 120, 'PRGM CE 310 BLACK', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:56:54');
INSERT INTO `pro_item` VALUES(89, 'ITEM0074', 7, 14, 118, 'PRGM 260 TONER', '', '0', '25-Aug-2015', 'No', 0, '2015-10-25 22:22:27');
INSERT INTO `pro_item` VALUES(90, 'ITEM0075', 7, 14, 121, 'PRGAM CE 311 CYAN', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:58:45');
INSERT INTO `pro_item` VALUES(91, 'ITEM0076', 7, 14, 122, 'PRGM CE 312 YELLOW', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 02:59:50');
INSERT INTO `pro_item` VALUES(92, 'ITEM0077', 7, 14, 124, 'PRGM 51X TONER', '', '0', '25-Aug-2015', 'No', 20, '2015-09-29 01:57:04');
INSERT INTO `pro_item` VALUES(93, 'ITEM0078', 7, 14, 125, 'PRGM CE 313 MAGANTA', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 03:17:34');
INSERT INTO `pro_item` VALUES(94, 'ITEM0094', 7, 14, 141, 'PRGM 85A TONER', '', '0', '25-Aug-2015', 'No', 1212, '2016-09-28 01:58:21');
INSERT INTO `pro_item` VALUES(95, 'ITEM0095', 7, 14, 142, 'PRGM 38A TONER', '', '0', '25-Aug-2015', 'No', 42, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(96, 'ITEM0096', 7, 14, 143, 'PRGM 42A TONER', '', '0', '25-Aug-2015', 'No', 132, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(97, 'ITEM0097', 7, 14, 144, 'PRGM 11A TONER', '', '0', '25-Aug-2015', 'No', 20, '2015-11-30 22:21:22');
INSERT INTO `pro_item` VALUES(98, 'ITEM0098', 7, 14, 145, 'PRGM 51A TONER', '', '0', '25-Aug-2015', 'No', 19, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(99, 'ITEM0099', 7, 14, 146, 'PRGM E230 TONER', '', '0', '25-Aug-2015', 'No', 156, '2016-06-03 00:46:35');
INSERT INTO `pro_item` VALUES(100, 'ITEM00100', 7, 14, 147, 'PRGM E250 TONER', '', '0', '25-Aug-2015', 'No', 120, '2016-06-03 00:23:31');
INSERT INTO `pro_item` VALUES(101, 'ITEM00101', 7, 14, 148, 'PRGM E120 TONER', '', '0', '25-Aug-2015', 'No', 30, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(102, 'ITEM00102', 7, 14, 149, 'PRGM 96A TONER', '', '0', '25-Aug-2015', 'No', 30, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(103, 'ITEM00103', 7, 14, 150, 'PRGM E250 P/C TONER', '', '0', '25-Aug-2015', 'No', 90, '2016-06-03 00:16:51');
INSERT INTO `pro_item` VALUES(104, 'ITEM00104', 7, 14, 151, 'PRGM E230 P/C', '', '0', '25-Aug-2015', 'No', 132, '2016-06-03 00:15:38');
INSERT INTO `pro_item` VALUES(105, 'ITEM00105', 7, 14, 152, 'PRGM 49A TONER', '', '0', '25-Aug-2015', 'No', 555, '2016-06-03 00:01:12');
INSERT INTO `pro_item` VALUES(106, 'ITEM00106', 7, 14, 153, 'PRGM 80A TONER', '', '0', '25-Aug-2015', 'No', 309, '2016-06-03 00:02:20');
INSERT INTO `pro_item` VALUES(107, 'ITEM00107', 7, 14, 154, 'PRGM SAM 4521 TONER', '', '0', '25-Aug-2015', 'No', 105, '2016-06-05 21:24:34');
INSERT INTO `pro_item` VALUES(108, 'ITEM00108', 7, 14, 155, 'PRGM E120 P/C', '', '0', '25-Aug-2015', 'No', 16, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(109, 'ITEM00109', 7, 14, 156, 'PRGM SAM2850 TONER', '', '0', '25-Aug-2015', 'No', 210, '2016-06-03 00:11:53');
INSERT INTO `pro_item` VALUES(110, 'ITEM00110', 7, 14, 157, 'PRGM 64A TONER', '', '0', '25-Aug-2015', 'No', 32, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(111, 'ITEM00111', 7, 14, 158, 'PRGM 24A TONER', '', '0', '25-Aug-2015', 'No', 14, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(112, 'ITEM00112', 7, 14, 159, 'PRGM 29X TONER', '', '0', '25-Aug-2015', 'No', 19, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(113, 'ITEM00113', 7, 14, 160, 'PRGM 92A TONER', '', '0', '25-Aug-2015', 'No', 0, '2015-11-30 22:19:50');
INSERT INTO `pro_item` VALUES(114, 'ITEM00114', 7, 14, 161, 'PRGM 78A TONER', '', '0', '25-Aug-2015', 'No', 419, '2016-06-03 00:01:45');
INSERT INTO `pro_item` VALUES(115, 'ITEM00115', 10, 15, 163, 'F696BKSC RIBBON', '', '0', '25-Aug-2015', 'No', 510, '2015-10-21 21:30:01');
INSERT INTO `pro_item` VALUES(116, 'ITEM00116', 10, 15, 164, 'F 719BKSC RIBBON', '', '0', '25-Aug-2015', 'No', 97, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(117, 'ITEM00117', 10, 15, 165, 'F 730 BKSC RIBBON', '', '0', '25-Aug-2015', 'No', 413, '2015-09-03 02:06:01');
INSERT INTO `pro_item` VALUES(118, 'ITEM00118', 10, 15, 166, 'F 737BKSC RIBBON', '', '0', '25-Aug-2015', 'No', 49, '2015-11-17 03:28:33');
INSERT INTO `pro_item` VALUES(119, 'ITEM00119', 10, 15, 167, 'F746BKSC RIBBON', '', '0', '25-Aug-2015', 'No', 1481, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(120, 'ITEM00120', 10, 15, 168, 'FL 583 RIBBON', '', '0', '25-Aug-2015', 'No', 833, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(121, 'ITEM00121', 10, 15, 169, 'N 160BK RIBBON', '', '0', '25-Aug-2015', 'No', 464, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(122, 'ITEM00122', 10, 15, 170, 'N162BK RIBBON', '', '0', '25-Aug-2015', 'No', 499, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(123, 'ITEM00123', 10, 15, 172, 'N177BKGR RIBBON', '', '0', '25-Aug-2015', 'No', 114, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(124, 'ITEM00124', 10, 15, 173, 'N 181BKHD RIBBON \\', '', '0', '25-Aug-2015', 'No', 77, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(125, 'ITEM00125', 10, 15, 174, 'N 186BK RIBBON', '', '0', '25-Aug-2015', 'No', 528, '2015-09-09 01:41:32');
INSERT INTO `pro_item` VALUES(126, 'ITEM00126', 10, 15, 175, 'N 188BK RIBBON', '', '0', '25-Aug-2015', 'No', 120, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(127, 'ITEM00127', 10, 15, 181, 'N 514BK RIBBON', '', '0', '25-Aug-2015', 'No', 288, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(128, 'ITEM00128', 10, 15, 182, 'N549BK RIBBON', '', '0', '25-Aug-2015', 'No', 30, '2015-09-03 01:19:07');
INSERT INTO `pro_item` VALUES(129, 'ITEM00129', 10, 15, 183, 'N 585BK RIBBON', '', '0', '25-Aug-2015', 'No', 420, '2015-09-03 01:10:40');
INSERT INTO `pro_item` VALUES(130, 'ITEM00130', 10, 15, 184, 'N 617BK RIBBON', '', '0', '25-Aug-2015', 'No', 53, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(131, 'ITEM00131', 10, 15, 185, 'N 618BK RIBBON', '', '0', '25-Aug-2015', 'No', 392, '2015-11-30 21:04:10');
INSERT INTO `pro_item` VALUES(132, 'ITEM00132', 10, 15, 186, 'N639BK RIBBON', '', '0', '25-Aug-2015', 'No', 12, '2016-06-05 21:10:11');
INSERT INTO `pro_item` VALUES(133, 'ITEM00133', 10, 15, 187, 'N 741BK  RIBBON', '', '0', '25-Aug-2015', 'No', 115, '2015-10-05 22:23:27');
INSERT INTO `pro_item` VALUES(134, 'ITEM00134', 10, 15, 188, 'N 833BKSR RIBBON', '', '0', '25-Aug-2015', 'No', 49, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(135, 'ITEM00135', 10, 15, 189, 'N 385BK RIBBON', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 23:37:15');
INSERT INTO `pro_item` VALUES(136, 'ITEM00136', 10, 15, 190, 'N 868BK RIBON', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 23:37:49');
INSERT INTO `pro_item` VALUES(137, 'ITEM00137', 10, 15, 191, 'N 904BK RIBBON', '', '0', '25-Aug-2015', 'No', 150, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(138, 'ITEM00138', 10, 15, 192, 'N 908BK RIBBON', '', '0', '25-Aug-2015', 'No', 200, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(139, 'ITEM00139', 10, 15, 193, 'N 992BK RIBBON', '', '0', '25-Aug-2015', 'No', 504, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(140, 'ITEM00140', 10, 15, 194, 'N 653BK RIBBON', '', '0', '25-Aug-2015', 'No', 6000, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(141, 'ITEM00141', 10, 15, 195, 'N 635BK RIBBON', '', '0', '25-Aug-2015', 'No', 25, '2015-09-03 01:10:40');
INSERT INTO `pro_item` VALUES(142, 'ITEM00142', 10, 15, 196, 'NS 024BR2SO5 RIBBON', '', '0', '25-Aug-2015', 'No', 450, '2015-10-19 20:40:29');
INSERT INTO `pro_item` VALUES(143, 'ITEM00143', 11, 12, 197, 'IJC003BK3 REFILL KIT', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 23:47:36');
INSERT INTO `pro_item` VALUES(144, 'ITEM00144', 11, 12, 198, 'IJC005FC3 REFILL KIT', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 23:50:38');
INSERT INTO `pro_item` VALUES(145, 'ITEM00145', 11, 12, 199, 'IJSC020BK2 REFILL KIT', '', '0', '25-Aug-2015', 'No', 0, '2015-08-25 23:52:50');
INSERT INTO `pro_item` VALUES(146, 'ITEM00146', 11, 12, 200, 'IJSC021BK REFILL KIT', '', '0', '25-Aug-2015', 'No', 0, '2015-08-26 00:00:41');
INSERT INTO `pro_item` VALUES(147, 'ITEM00147', 11, 12, 201, 'IJSC021FC REFILL KIT', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 00:03:38');
INSERT INTO `pro_item` VALUES(148, 'ITEM00148', 11, 12, 202, 'IJSC024BK REFILL KIT', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 00:04:26');
INSERT INTO `pro_item` VALUES(149, 'ITEM00149', 11, 12, 203, 'IJSC024FC REFILL KIT', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 00:05:33');
INSERT INTO `pro_item` VALUES(150, 'ITEM00150', 11, 12, 204, 'IJSC040BK REFILL KIT', '', '0', '26-Aug-2015', 'No', 96, '2015-09-03 01:19:07');
INSERT INTO `pro_item` VALUES(151, 'ITEM00151', 11, 12, 205, 'IJSC040FC3 REFILL KIT', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 00:07:35');
INSERT INTO `pro_item` VALUES(152, 'ITEM00152', 11, 12, 206, 'IJSH351BK  REFILL KIT', '', '0', '26-Aug-2015', 'No', 106, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(153, 'ITEM00153', 11, 12, 207, 'IJSH645BK2 REFILL KIT', '', '0', '26-Aug-2015', 'No', 33, '2015-09-03 02:30:52');
INSERT INTO `pro_item` VALUES(154, 'ITEM00154', 11, 12, 208, 'IJSH657FC3 REFILL KIT', '', '0', '26-Aug-2015', 'No', 143, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(155, 'ITEM00155', 11, 12, 209, 'IJSL016BK  REFILL KIT', '', '0', '26-Aug-2015', 'No', 132, '2015-09-03 02:06:01');
INSERT INTO `pro_item` VALUES(156, 'ITEM00156', 12, 17, 210, 'R&G 51A TONER', '', '0', '26-Aug-2015', 'No', 30, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(157, 'ITEM00157', 12, 17, 211, 'R&G 05XL  TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 00:21:16');
INSERT INTO `pro_item` VALUES(158, 'ITEM00158', 12, 17, 212, 'R&G 64A TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 01:22:16');
INSERT INTO `pro_item` VALUES(159, 'ITEM00159', 12, 17, 213, 'R&G 61X/61A TONER', '', '0', '26-Aug-2015', 'No', 4, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(160, 'ITEM00160', 12, 17, 214, 'R&G  38A TONER', '', '0', '26-Aug-2015', 'No', 35, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(161, 'ITEM00161', 12, 17, 215, 'R&G 80X TONER', '', '0', '26-Aug-2015', 'No', 570, '2016-06-03 00:03:19');
INSERT INTO `pro_item` VALUES(162, 'ITEM00162', 12, 17, 216, 'R&G 55A  TONER', '', '0', '26-Aug-2015', 'No', 25, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(163, 'ITEM00163', 12, 17, 217, 'R&G 11A TONER', '', '0', '26-Aug-2015', 'No', 25, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(164, 'ITEM00164', 12, 17, 218, 'R&G 42A TONER', '', '0', '26-Aug-2015', 'No', 20, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(165, 'ITEM00165', 12, 17, 219, 'R&G 92A TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 02:02:01');
INSERT INTO `pro_item` VALUES(166, 'ITEM00166', 12, 17, 220, 'R&G 29X TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 02:02:40');
INSERT INTO `pro_item` VALUES(167, 'ITEM00167', 12, 17, 221, 'R&G 96A TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 02:03:22');
INSERT INTO `pro_item` VALUES(168, 'ITEM00168', 12, 17, 222, 'R&G 49X TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 02:08:32');
INSERT INTO `pro_item` VALUES(169, 'ITEM00169', 12, 17, 223, 'R&G 11X TONER', '', '0', '26-Aug-2015', 'No', 10, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(170, 'ITEM00170', 12, 17, 224, 'R&G 12A TONER', '', '0', '26-Aug-2015', 'No', 362, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(171, 'ITEM00171', 12, 17, 225, 'R&G 35A TONER', '', '0', '26-Aug-2015', 'No', 2, '2015-11-30 22:43:07');
INSERT INTO `pro_item` VALUES(172, 'ITEM00172', 12, 17, 226, 'R&G 78A TONER', '', '0', '26-Aug-2015', 'No', 10, '2015-11-30 22:43:43');
INSERT INTO `pro_item` VALUES(173, 'ITEM00173', 12, 17, 227, 'R&G 85A TONER', '', '0', '26-Aug-2015', 'No', 681, '2016-09-27 23:48:57');
INSERT INTO `pro_item` VALUES(174, 'ITEM00174', 12, 17, 228, 'R&G 36A TONER', '', '0', '26-Aug-2015', 'No', 309, '2016-06-20 23:14:27');
INSERT INTO `pro_item` VALUES(175, 'ITEM00175', 12, 17, 229, 'R&G 13A TONER', '', '0', '26-Aug-2015', 'No', 32, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(176, 'ITEM00176', 12, 17, 230, 'R&G 49A TONER', '', '0', '26-Aug-2015', 'No', 48, '2016-09-27 23:29:48');
INSERT INTO `pro_item` VALUES(177, 'ITEM00177', 12, 17, 231, 'R&G 53A  TONER', '', '0', '26-Aug-2015', 'No', 5, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(178, 'ITEM00178', 12, 17, 232, 'R&G 05A TONER', '', '0', '26-Aug-2015', 'No', 314, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(179, 'ITEM00179', 12, 17, 233, 'R&G 80A TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-11-30 22:53:07');
INSERT INTO `pro_item` VALUES(180, 'ITEM00180', 12, 17, 234, 'R&G 15A TONER', '', '0', '26-Aug-2015', 'No', 75, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(181, 'ITEM00181', 7, 14, 235, 'PRGM 12A TONER', '', '0', '26-Aug-2015', 'No', 1102, '2016-06-20 22:59:42');
INSERT INTO `pro_item` VALUES(182, 'ITEM00182', 7, 14, 236, 'PRGM 35A  TONER', '', '0', '26-Aug-2015', 'No', 461, '2016-06-03 00:00:02');
INSERT INTO `pro_item` VALUES(183, 'ITEM00183', 7, 14, 237, 'PRGM 05A TONER', '', '0', '26-Aug-2015', 'No', 682, '2016-06-02 23:56:39');
INSERT INTO `pro_item` VALUES(184, 'ITEM00184', 7, 14, 238, 'PRGM 80X', '', '0', '26-Aug-2015', 'No', 418, '2015-11-30 22:07:58');
INSERT INTO `pro_item` VALUES(185, 'ITEM00185', 10, 12, 239, 'N 562BK RIBBON', '', '0', '26-Aug-2015', 'No', 284, '2015-09-30 20:55:55');
INSERT INTO `pro_item` VALUES(186, 'ITEM00186', 10, 12, 242, 'N 559BK  RIBBON', '', '0', '26-Aug-2015', 'No', 75, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(187, 'ITEM00187', 10, 12, 243, 'N 604BK RIBBON', '', '0', '26-Aug-2015', 'No', 375, '2015-09-03 01:10:40');
INSERT INTO `pro_item` VALUES(188, 'ITEM00188', 10, 12, 244, 'N 884 BK RIBBON', '', '0', '26-Aug-2015', 'No', 270, '2015-09-03 01:10:40');
INSERT INTO `pro_item` VALUES(189, 'ITEM00189', 10, 12, 245, 'N 901BK RIBBON', '', '0', '26-Aug-2015', 'No', 50, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(190, 'ITEM00190', 10, 12, 246, 'N 649BK RIBBON', '', '0', '26-Aug-2015', 'No', 50, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(191, 'ITEM00191', 10, 12, 247, 'N 906BK RIBBON', '', '0', '26-Aug-2015', 'No', 78, '2015-09-03 01:10:40');
INSERT INTO `pro_item` VALUES(192, 'ITEM00192', 12, 22, 250, 'R&G 103 TONER', '', '0', '26-Aug-2015', 'No', 3, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(193, 'ITEM00193', 12, 22, 251, 'R&G 1043 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 23:53:59');
INSERT INTO `pro_item` VALUES(194, 'ITEM00194', 12, 22, 252, 'R&G 105 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 23:54:36');
INSERT INTO `pro_item` VALUES(195, 'ITEM00195', 12, 22, 253, 'R&G 108 TONER', '', '0', '26-Aug-2015', 'No', 3, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(196, 'ITEM00196', 12, 22, 254, 'R&G 109 TONER', '', '0', '26-Aug-2015', 'No', 9, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(197, 'ITEM00197', 12, 22, 255, 'R&G ML 205 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 23:56:44');
INSERT INTO `pro_item` VALUES(198, 'ITEM00198', 12, 22, 256, 'R&G 4521 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-11-30 22:40:06');
INSERT INTO `pro_item` VALUES(199, 'ITEM00199', 12, 22, 257, 'R&G 4216 TONER', '', '0', '26-Aug-2015', 'No', 30, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(200, 'ITEM00200', 12, 22, 258, 'R&G 2850 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-26 23:59:16');
INSERT INTO `pro_item` VALUES(201, 'ITEM00201', 12, 22, 259, 'R&G 101 TONER', '', '0', '26-Aug-2015', 'No', 0, '2015-08-27 00:01:15');
INSERT INTO `pro_item` VALUES(202, 'ITEM00202', 12, 20, 260, 'BORTHER 360 P/C', '', '0', '27-Aug-2015', 'No', 5, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(203, 'ITEM00203', 12, 20, 261, 'BORTHER 520 P/C', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:49:12');
INSERT INTO `pro_item` VALUES(204, 'ITEM00204', 12, 20, 262, 'BORTHER580 P/C', '', '0', '27-Aug-2015', 'No', 25, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(205, 'ITEM00205', 12, 20, 263, 'BORTHER 620 P/C', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:50:49');
INSERT INTO `pro_item` VALUES(206, 'ITEM00206', 12, 20, 264, 'BORTHER TN 650', '', '0', '27-Aug-2015', 'No', 15, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(207, 'ITEM00207', 12, 20, 265, 'BORTHER TN 580', '', '0', '27-Aug-2015', 'No', 35, '2015-10-01 02:13:57');
INSERT INTO `pro_item` VALUES(208, 'ITEM00208', 12, 20, 266, 'BORTHER TN 360', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:53:00');
INSERT INTO `pro_item` VALUES(209, 'ITEM00209', 12, 17, 267, 'R&G 70A TONER', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:54:17');
INSERT INTO `pro_item` VALUES(210, 'ITEM00210', 12, 21, 268, 'EPSON 6200 TONER', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:55:03');
INSERT INTO `pro_item` VALUES(211, 'ITEM00211', 12, 19, 269, 'R&G 120P/C', '', '0', '27-Aug-2015', 'No', 10, '2015-10-01 00:56:48');
INSERT INTO `pro_item` VALUES(212, 'ITEM00212', 12, 19, 270, 'R&G 120 TONER', '', '0', '27-Aug-2015', 'No', 7, '2015-10-01 00:54:48');
INSERT INTO `pro_item` VALUES(213, 'ITEM00213', 12, 19, 271, 'R&G E230/330 TONER', '', '0', '27-Aug-2015', 'No', 50, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(214, 'ITEM00214', 12, 19, 272, 'R&G  E250PC TONER', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 21:59:26');
INSERT INTO `pro_item` VALUES(215, 'ITEM00215', 12, 19, 273, 'R&G E 250 TONER', '', '0', '27-Aug-2015', 'No', 50, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(216, 'ITEM00216', 12, 19, 274, 'R&G E 260 P/C', '', '0', '27-Aug-2015', 'No', 89, '2015-10-01 01:48:26');
INSERT INTO `pro_item` VALUES(217, 'ITEM00217', 12, 19, 275, 'R&G E 260 TONER ]', '', '0', '27-Aug-2015', 'No', 41, '2016-06-03 00:18:02');
INSERT INTO `pro_item` VALUES(218, 'ITEM00218', 12, 19, 276, 'R&G 264 P/C', '', '0', '27-Aug-2015', 'No', 0, '2015-08-27 22:04:08');
INSERT INTO `pro_item` VALUES(219, 'ITEM00219', 12, 19, 278, 'R&G E 264 TONER', '', '0', '27-Aug-2015', 'No', 155, '2015-11-06 21:27:41');
INSERT INTO `pro_item` VALUES(220, 'ITEM00220', 12, 18, 279, 'R&G 05L/06L TONER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:09:43');
INSERT INTO `pro_item` VALUES(221, 'ITEM00221', 12, 18, 280, 'R&G FX 09 TONER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:10:36');
INSERT INTO `pro_item` VALUES(222, 'ITEM00222', 12, 18, 282, 'R&G EP 26 TONER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:12:26');
INSERT INTO `pro_item` VALUES(223, 'ITEM00223', 13, 12, 283, 'PPIGL20 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 18, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(224, 'ITEM00224', 13, 12, 284, 'PPIM20 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 59, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(225, 'ITEM00225', 13, 12, 286, 'PPIMTM03  PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 13, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(226, 'ITEM00226', 13, 12, 287, 'PPIPA100 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 17, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(227, 'ITEM00227', 13, 12, 288, 'PPIPH10 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 42, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(228, 'ITEM00228', 13, 12, 289, 'PPIPH204R PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 168, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(229, 'ITEM00229', 13, 12, 290, 'PPISG20 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 61, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(230, 'ITEM00230', 13, 12, 291, 'PPISK20 PHOTOCOPY PAPER', '', '0', '28-Aug-2015', 'No', 35, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(231, 'ITEM00231', 14, 17, 292, 'TON- 01-02 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:48:59');
INSERT INTO `pro_item` VALUES(232, 'ITEM00232', 14, 17, 293, 'TON-01-03 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:49:49');
INSERT INTO `pro_item` VALUES(233, 'ITEM00233', 14, 17, 294, 'TON-01-19 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:51:00');
INSERT INTO `pro_item` VALUES(234, 'ITEM00234', 14, 17, 295, 'TON-01-12  HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:51:59');
INSERT INTO `pro_item` VALUES(235, 'ITEM00235', 14, 17, 296, 'TON-01-14 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:54:14');
INSERT INTO `pro_item` VALUES(236, 'ITEM00236', 14, 17, 297, 'TON-01-18 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:54:54');
INSERT INTO `pro_item` VALUES(237, 'ITEM00237', 14, 17, 298, 'TON-01-24 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:55:49');
INSERT INTO `pro_item` VALUES(238, 'ITEM00238', 14, 17, 299, 'TON-01-25 HP POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 01:56:43');
INSERT INTO `pro_item` VALUES(240, 'ITEM00239', 14, 19, 298, 'LEX TON-01-14 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:05:41');
INSERT INTO `pro_item` VALUES(241, 'ITEM00241', 14, 19, 301, 'LEX TON-04-11 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:08:17');
INSERT INTO `pro_item` VALUES(242, 'ITEM00242', 14, 19, 302, 'LEX TON-04-10 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:08:54');
INSERT INTO `pro_item` VALUES(243, 'ITEM00243', 14, 19, 303, 'LEX TON-04-08 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:09:32');
INSERT INTO `pro_item` VALUES(244, 'ITEM00244', 14, 19, 304, 'LEX TON-04-02 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:10:13');
INSERT INTO `pro_item` VALUES(245, 'ITEM00245', 14, 19, 305, 'LEX TON-04-03 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:10:52');
INSERT INTO `pro_item` VALUES(246, 'ITEM00246', 14, 19, 306, 'LEX TON-04-01 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:11:30');
INSERT INTO `pro_item` VALUES(247, 'ITEM00247', 14, 19, 307, 'LEX TON-01-16 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:13:20');
INSERT INTO `pro_item` VALUES(248, 'ITEM00248', 14, 22, 308, 'JLT-19(140G) POWDER', '', '0', '28-Aug-2015', 'No', 25, '2015-10-27 23:08:22');
INSERT INTO `pro_item` VALUES(249, 'ITEM00249', 14, 22, 309, 'JLT-28 POWDER', '', '0', '28-Aug-2015', 'No', 0, '2015-08-28 02:15:49');
INSERT INTO `pro_item` VALUES(250, 'ITEM00250', 14, 22, 310, 'JLT-001 (140G) POWDER', '', '0', '28-Aug-2015', 'No', 15, '2015-10-27 23:08:22');
INSERT INTO `pro_item` VALUES(251, 'ITEM00251', 14, 22, 311, 'JLT-036SG (10KG)', '', '0', '28-Aug-2015', 'No', 110, '2015-10-27 23:08:22');
INSERT INTO `pro_item` VALUES(252, 'ITEM00252', 14, 22, 312, 'JLT-019 (HD) (10KG)  POWDER', '', '0', '28-Aug-2015', 'No', 20, '2015-10-27 23:08:22');
INSERT INTO `pro_item` VALUES(253, 'ITEM00253', 7, 14, 313, 'PRGM 16A TONER', '', '0', '02-Sep-2015', 'No', 28, '2015-09-29 02:04:51');
INSERT INTO `pro_item` VALUES(254, 'ITEM00254', 7, 14, 314, 'PRGM 10A', '', '0', '02-Sep-2015', 'No', 16, '2016-06-03 00:07:37');
INSERT INTO `pro_item` VALUES(255, 'ITEM00255', 7, 14, 315, 'PRGM 55A  TONER', '', '0', '02-Sep-2015', 'No', 40, '2015-11-09 21:29:44');
INSERT INTO `pro_item` VALUES(256, 'ITEM00256', 7, 14, 316, 'PRGM 05X  TONER', '', '0', '02-Sep-2015', 'No', 200, '2015-09-02 22:57:40');
INSERT INTO `pro_item` VALUES(257, 'ITEM00257', 7, 14, 317, 'PRGM 83X TONER', '', '0', '02-Sep-2015', 'No', 108, '2016-06-03 00:09:27');
INSERT INTO `pro_item` VALUES(258, 'ITEM00258', 12, 13, 318, 'R&G 83X TONER', '', '0', '02-Sep-2015', 'No', 0, '2015-11-06 21:38:20');
INSERT INTO `pro_item` VALUES(259, 'ITEM00259', 12, 13, 319, 'R&G 230 PC', '', '0', '02-Sep-2015', 'No', 0, '2015-10-20 01:07:57');
INSERT INTO `pro_item` VALUES(260, 'ITEM00260', 10, 12, 320, 'N 477 BK RIBBON', '', '0', '03-Sep-2015', 'No', 4878, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(261, 'ITEM00261', 10, 12, 321, 'N 638 BK RIBBON', '', '0', '03-Sep-2015', 'No', 243, '2015-09-03 01:26:02');
INSERT INTO `pro_item` VALUES(262, 'ITEM00262', 10, 12, 322, 'N 478 BK RIBBON', '', '0', '03-Sep-2015', 'No', 187, '2015-11-30 20:48:24');
INSERT INTO `pro_item` VALUES(263, 'ITEM00263', 10, 12, 323, 'N 655 BK  RIBBON', '', '0', '03-Sep-2015', 'No', 139, '2015-10-12 21:09:27');
INSERT INTO `pro_item` VALUES(264, 'ITEM00264', 10, 12, 324, 'N 654 BK  RIBBON', '', '0', '03-Sep-2015', 'No', 150, '2015-09-03 01:19:07');
INSERT INTO `pro_item` VALUES(265, 'ITEM00265', 10, 12, 325, 'N 274 PE RIBBON', '', '0', '03-Sep-2015', 'No', 75, '2015-10-14 22:39:41');
INSERT INTO `pro_item` VALUES(266, 'ITEM00266', 11, 12, 326, 'IJSH 656 BK', '', '0', '03-Sep-2015', 'No', 100, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(267, 'ITEM00267', 10, 12, 327, 'N 636 PE RIBBON', '', '0', '03-Sep-2015', 'No', 4002, '2016-06-23 00:57:25');
INSERT INTO `pro_item` VALUES(268, 'ITEM00268', 10, 12, 328, 'F 715 BK RIBBON', '', '0', '03-Sep-2015', 'No', 90, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(269, 'ITEM00269', 10, 12, 329, 'N 194 BK  RIBBON', '', '0', '03-Sep-2015', 'No', 121, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(270, 'ITEM00270', 11, 12, 330, 'IJSCO41FC3 REFILL KIT', '', '0', '03-Sep-2015', 'No', 97, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(271, 'ITEM00271', 10, 12, 331, 'N 171 BK  RIBBON', '', '0', '03-Sep-2015', 'No', 34, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(272, 'ITEM00272', 11, 12, 332, 'UJSC003BK3 REFILL KIT', '', '0', '03-Sep-2015', 'No', 382, '2015-09-03 02:06:02');
INSERT INTO `pro_item` VALUES(273, 'ITEM00273', 11, 12, 333, 'UJSC005FC3 REFILL KIT', '', '0', '03-Sep-2015', 'No', 231, '2015-09-03 02:06:01');
INSERT INTO `pro_item` VALUES(274, 'ITEM00274', 10, 12, 334, 'N 443 BK  RIBBON', '', '0', '03-Sep-2015', 'No', 51, '2015-09-03 02:06:01');
INSERT INTO `pro_item` VALUES(275, 'ITEM00275', 10, 12, 335, 'N 835 BK RIBBON', '', '0', '03-Sep-2015', 'No', 30, '2015-09-03 02:06:01');
INSERT INTO `pro_item` VALUES(276, 'ITEM00276', 5, 12, 336, 'BIO99 LM 100ML  INK', '', '0', '03-Sep-2015', 'No', 0, '2015-09-03 02:10:07');
INSERT INTO `pro_item` VALUES(277, 'ITEM00277', 5, 12, 337, 'BIO99 LC 100ML  INK', '', '0', '03-Sep-2015', 'No', 0, '2015-09-03 02:10:55');
INSERT INTO `pro_item` VALUES(278, 'ITEM00278', 5, 12, 338, 'BIO99 LC 1LTR INK', '', '0', '03-Sep-2015', 'No', 14, '2015-10-05 01:17:07');
INSERT INTO `pro_item` VALUES(279, 'ITEM00279', 5, 12, 339, 'BIO99 LM 1LTR INK', '', '0', '03-Sep-2015', 'No', 14, '2015-10-05 01:17:07');
INSERT INTO `pro_item` VALUES(280, 'ITEM00280', 5, 12, 340, 'BIO 42 YW 01LTR INK', '', '0', '03-Sep-2015', 'No', 35, '2015-09-03 02:27:05');
INSERT INTO `pro_item` VALUES(281, 'ITEM00281', 15, 12, 341, 'TTRSO 9S FAX ROLL', '', '0', '03-Sep-2015', 'No', 24, '2015-09-03 02:41:23');
INSERT INTO `pro_item` VALUES(282, 'ITEM00282', 7, 14, 342, 'PRGM 83A TONER', '', '0', '28-Sep-2015', 'No', 72, '2016-06-03 00:08:55');
INSERT INTO `pro_item` VALUES(283, 'ITEM00283', 7, 14, 343, 'PRGM 310 LEX TONER', '', '0', '28-Sep-2015', 'No', 120, '2015-09-28 22:22:19');
INSERT INTO `pro_item` VALUES(284, 'ITEM00284', 7, 14, 344, 'PRGM 105 TONER', '', '0', '28-Sep-2015', 'No', 115, '2016-09-29 00:06:15');
INSERT INTO `pro_item` VALUES(286, 'ITEM00286', 6, 13, 346, '15 INK CARTRIGE', '', '0', '29-Sep-2015', 'No', 10, '2015-09-29 21:03:29');
INSERT INTO `pro_item` VALUES(287, 'ITEM00287', 6, 13, 347, '121 INK CARTRIGE', '', '0', '29-Sep-2015', 'No', 31, '2015-09-29 21:03:29');
INSERT INTO `pro_item` VALUES(288, 'ITEM00288', 16, 13, 348, 'LOCAL AX BOX', '', '0', '29-Sep-2015', 'No', 925, '2015-11-06 23:58:32');
INSERT INTO `pro_item` VALUES(289, 'ITEM00289', 17, 13, 349, 'R&G LARDE BOX', '', '0', '29-Sep-2015', 'No', 0, '2015-09-29 21:24:53');
INSERT INTO `pro_item` VALUES(290, 'ITEM00290', 18, 13, 350, 'R&G MEDIUM BOX', '', '0', '29-Sep-2015', 'No', 0, '2015-09-29 21:28:08');
INSERT INTO `pro_item` VALUES(291, 'ITEM00291', 12, 13, 351, 'R&G 83A TONER', '', '0', '29-Sep-2015', 'No', 20, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(292, 'ITEM00292', 12, 13, 352, 'M 355 DF TONER', '', '0', '29-Sep-2015', 'No', 20, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(293, 'ITEM00293', 12, 13, 353, 'R&G 93A TONER', '', '0', '29-Sep-2015', 'No', 5, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(294, 'ITEM00294', 12, 13, 354, 'R&G 90A TONER', '', '0', '29-Sep-2015', 'No', 5, '2015-09-29 21:41:25');
INSERT INTO `pro_item` VALUES(295, 'ITEM00295', 11, 16, 355, 'IJSCO41FC REFILKIT', '', '0', '30-Sep-2015', 'No', 69, '2015-10-12 21:09:27');
INSERT INTO `pro_item` VALUES(296, 'ITEM00296', 11, 16, 356, 'IJSCO40BK REFILKIT', '', '0', '30-Sep-2015', 'No', 89, '2016-06-23 00:57:24');
INSERT INTO `pro_item` VALUES(297, 'ITEM00297', 5, 12, 357, 'BIO42MA01LTR  INK', '', '0', '05-Oct-2015', 'No', 36, '2015-10-05 01:36:39');
INSERT INTO `pro_item` VALUES(298, 'ITEM00298', 19, 17, 358, 'HP 12-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 20:49:29');
INSERT INTO `pro_item` VALUES(299, 'ITEM00299', 19, 17, 359, 'HP 10A-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 20:50:49');
INSERT INTO `pro_item` VALUES(300, 'ITEM00300', 19, 17, 360, 'HP 11A-001 DRU,', '', '0', '05-Oct-2015', 'No', 19, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(301, 'ITEM00301', 19, 17, 362, 'HP 15A-001 DRUM', '', '0', '05-Oct-2015', 'No', 22, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(302, 'ITEM00302', 19, 17, 363, 'HP 9K-001 DRUM', '', '0', '05-Oct-2015', 'No', 11, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(303, 'ITEM00303', 19, 17, 364, 'HP AX-001 DRUM', '', '0', '05-Oct-2015', 'No', 57, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(304, 'ITEM00304', 19, 17, 365, 'HP 49A-001 DRUM', '', '0', '05-Oct-2015', 'No', 56, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(305, 'ITEM00305', 19, 17, 366, 'HP 29X-001DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:00:22');
INSERT INTO `pro_item` VALUES(306, 'ITEM00306', 19, 17, 367, 'HP 35A-001 DRUM', '', '0', '05-Oct-2015', 'No', 209, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(307, 'ITEM00307', 19, 19, 368, 'LEXMARK 650-001 DRUM', '', '0', '05-Oct-2015', 'No', 21, '2015-10-29 00:08:57');
INSERT INTO `pro_item` VALUES(308, 'ITEM00308', 19, 19, 369, 'LEXMARK 120-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:06:05');
INSERT INTO `pro_item` VALUES(309, 'ITEM00309', 19, 19, 373, 'LEXMARK 321-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:11:06');
INSERT INTO `pro_item` VALUES(310, 'ITEM00310', 19, 19, 374, 'LEXMARK 332-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:12:51');
INSERT INTO `pro_item` VALUES(311, 'ITEM00311', 19, 17, 375, 'HP PX-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:13:45');
INSERT INTO `pro_item` VALUES(312, 'ITEM00312', 19, 17, 376, 'HP EX -001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:14:36');
INSERT INTO `pro_item` VALUES(313, 'ITEM00313', 19, 17, 377, 'HP 27A-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:15:39');
INSERT INTO `pro_item` VALUES(314, 'ITEM00314', 19, 17, 378, 'HP 05A-001DRUM', '', '0', '05-Oct-2015', 'No', 31, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(315, 'ITEM00315', 19, 22, 379, 'SAM 4521-001 DRUM', '', '0', '05-Oct-2015', 'No', 6, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(316, 'ITEM00316', 19, 22, 380, 'SAM 108-001 DRUM', '', '0', '05-Oct-2015', 'No', 20, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(317, 'ITEM00317', 19, 17, 381, 'HP VX-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:19:01');
INSERT INTO `pro_item` VALUES(318, 'ITEM00318', 19, 17, 382, 'HP WX -001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:19:50');
INSERT INTO `pro_item` VALUES(319, 'ITEM00319', 19, 17, 383, 'HP 4000-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:21:46');
INSERT INTO `pro_item` VALUES(320, 'ITEM00320', 19, 17, 384, 'HP 96A-001 DRUM', '', '0', '05-Oct-2015', 'No', 7, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(321, 'ITEM00321', 19, 22, 385, 'SAM 2850-001 DRUM', '', '0', '05-Oct-2015', 'No', 36, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(322, 'ITEM00322', 19, 22, 386, 'SAM 104-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:24:27');
INSERT INTO `pro_item` VALUES(323, 'ITEM00323', 19, 19, 387, 'LEXMARK 4059-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:25:19');
INSERT INTO `pro_item` VALUES(324, 'ITEM00324', 19, 19, 388, 'LEXMARK 420-001 DRUM', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:27:45');
INSERT INTO `pro_item` VALUES(325, 'ITEM00325', 20, 17, 389, 'HP 10-002 DOCTOR BLADE', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:32:56');
INSERT INTO `pro_item` VALUES(326, 'ITEM00326', 25, 17, 390, 'HP 11A-005 SEAL', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:33:49');
INSERT INTO `pro_item` VALUES(327, 'ITEM00327', 20, 17, 391, 'HP 12A-002 DOCTOR BLADE', '', '0', '05-Oct-2015', 'No', 43, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(328, 'ITEM00328', 21, 17, 392, 'HP 12A-003 WIPER BLADE', '', '0', '05-Oct-2015', 'No', 0, '2015-10-27 22:43:23');
INSERT INTO `pro_item` VALUES(329, 'ITEM00329', 22, 17, 393, 'HA 12A-004 MAG ROLLER', '', '0', '05-Oct-2015', 'No', 52, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(330, 'ITEM00330', 23, 17, 394, 'HP 12A-014 MAG CONTACT', '', '0', '05-Oct-2015', 'No', 5, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(331, 'ITEM00331', 20, 17, 395, 'HP 15A-003 DOCTOR BLADE', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:39:15');
INSERT INTO `pro_item` VALUES(332, 'ITEM00332', 26, 17, 396, 'HP 11A-010 M/ROL SEALING BLADE', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:41:21');
INSERT INTO `pro_item` VALUES(334, 'ITEM00333', 24, 17, 397, 'DP 16A-001 CHIP', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 21:44:15');
INSERT INTO `pro_item` VALUES(335, 'ITEM00335', 20, 17, 398, 'HP 9K-002 DOCTOR BLADE', '', '0', '05-Oct-2015', 'No', 24, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(336, 'ITEM00336', 21, 17, 399, 'HP 9K-003 WIPER BLADE', '', '0', '05-Oct-2015', 'No', 46, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(337, 'ITEM00337', 25, 17, 401, 'HP 9K-005 SEAL', '', '0', '05-Oct-2015', 'No', 26, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(338, 'ITEM00338', 27, 17, 402, 'HP 9K-006 PCR', '', '0', '05-Oct-2015', 'No', 30, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(339, 'ITEM00339', 24, 17, 403, 'HP 9K-007 CHIP', '', '0', '05-Oct-2015', 'No', 38, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(340, 'ITEM00340', 29, 17, 404, 'HP 9K-009 RECOVER BLADE', '', '0', '05-Oct-2015', 'No', 51, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(341, 'ITEM00341', 26, 17, 405, 'HP 9K-011 M/ ROL SEALING BLADE \\', '', '0', '05-Oct-2015', 'No', 54, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(342, 'ITEM00342', 12, 23, 406, 'SAM 101 R&G TONER', '', '0', '05-Oct-2015', 'No', 0, '2015-10-05 22:17:59');
INSERT INTO `pro_item` VALUES(343, 'ITEM00343', 32, 17, 408, 'HP 9K-012 END FELT', '', '0', '14-Oct-2015', 'No', 100, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(344, 'ITEM00344', 33, 17, 409, 'HP9K-024 MAGNENT TAB', '', '0', '14-Oct-2015', 'No', 47, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(345, 'ITEM00345', 34, 17, 410, 'HP 9K -025 CARTRIDGE CLIP', '', '0', '14-Oct-2015', 'No', 400, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(346, 'ITEM00346', 36, 17, 411, 'HP 9K-026 SEAL CLIP', '', '0', '14-Oct-2015', 'No', 0, '2015-10-14 23:43:44');
INSERT INTO `pro_item` VALUES(347, 'ITEM00347', 37, 17, 412, 'HP 9K-027 WIPER TAB', '', '0', '14-Oct-2015', 'No', 0, '2015-10-14 23:44:58');
INSERT INTO `pro_item` VALUES(348, 'ITEM00348', 20, 17, 413, 'HP AX-002 DOCTOR BLADE', '', '0', '14-Oct-2015', 'No', 107, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(349, 'ITEM00349', 21, 17, 414, 'HP AX-003', '', '0', '14-Oct-2015', 'No', 48, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(350, 'ITEM00350', 30, 17, 415, 'HP AX-004 MAG SLEAVE', '', '0', '14-Oct-2015', 'No', 51, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(351, 'ITEM00351', 25, 17, 416, 'HP AX-005 SEAL', '', '0', '14-Oct-2015', 'No', 83, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(352, 'ITEM00352', 27, 17, 417, 'HP AX-006 PCR', '', '0', '14-Oct-2015', 'No', 215, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(353, 'ITEM00353', 38, 17, 418, 'HP AX-008 MAG ROLLER BUSH', '', '0', '14-Oct-2015', 'No', 150, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(354, 'ITEM00354', 40, 17, 419, 'HP AX-012 END FOAM', '', '0', '14-Oct-2015', 'No', 200, '2015-10-28 21:28:25');
INSERT INTO `pro_item` VALUES(355, 'ITEM00355', 23, 17, 420, 'HP AX -013', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:15:32');
INSERT INTO `pro_item` VALUES(356, 'ITEM00356', 19, 17, 421, 'HP 42A-001C DRUM', '', '0', '15-Oct-2015', 'No', 16, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(357, 'ITEM00357', 20, 17, 422, 'HP 42A-002 DOCTOR BLADE', '', '0', '15-Oct-2015', 'No', 20, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(358, 'ITEM00358', 21, 17, 423, 'HP 42A-003 WIPER BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:19:52');
INSERT INTO `pro_item` VALUES(359, 'ITEM00359', 30, 17, 424, 'HP 42A-004 MAG SLEAVE', '', '0', '15-Oct-2015', 'No', 20, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(360, 'ITEM00360', 25, 17, 425, 'HP 42A-005 SEAL', '', '0', '15-Oct-2015', 'No', 25, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(361, 'ITEM00361', 24, 17, 426, 'HP 42A-007 CHIP', '', '0', '15-Oct-2015', 'No', 94, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(362, 'ITEM00362', 29, 17, 427, 'HP 42A-008 RECOVERY BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:23:08');
INSERT INTO `pro_item` VALUES(363, 'ITEM00363', 41, 17, 428, 'HP 42A-011 SEAL FOAM', '', '0', '15-Oct-2015', 'No', 23, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(364, 'ITEM00364', 20, 17, 429, 'HP 49A-002 DOCTOR BLADE', '', '0', '15-Oct-2015', 'No', 19, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(365, 'ITEM00365', 21, 17, 430, 'HP 49A-003 WIPER BLADE', '', '0', '15-Oct-2015', 'No', 30, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(366, 'ITEM00366', 30, 17, 431, '49A-004 MAG SLEAVE', '', '0', '15-Oct-2015', 'No', 236, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(367, 'ITEM00367', 25, 17, 432, 'HP 49A-005 SEAL', '', '0', '15-Oct-2015', 'No', 163, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(368, 'ITEM00368', 42, 17, 434, 'HP 49A-009 LONG BUSH', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:34:48');
INSERT INTO `pro_item` VALUES(369, 'ITEM00369', 43, 17, 433, 'HP 49A-008 SHORT BUSH', '', '0', '15-Oct-2015', 'No', 76, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(370, 'ITEM00370', 32, 17, 436, 'HP 49A-013 END FELT', '', '0', '15-Oct-2015', 'No', 350, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(371, 'ITEM00371', 44, 17, 437, 'HP 49A-016 HOPPER', '', '0', '15-Oct-2015', 'No', 1699, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(372, 'ITEM00372', 46, 17, 439, 'HP MIX-01', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:54:55');
INSERT INTO `pro_item` VALUES(373, 'ITEM00373', 45, 17, 440, 'HP MIX-03', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:55:38');
INSERT INTO `pro_item` VALUES(374, 'ITEM00374', 47, 17, 441, 'HP MIX -04', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:56:09');
INSERT INTO `pro_item` VALUES(375, 'ITEM00375', 48, 17, 442, 'HP MIX-05', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:56:41');
INSERT INTO `pro_item` VALUES(376, 'ITEM00376', 49, 17, 443, 'HP MIX-06', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:58:45');
INSERT INTO `pro_item` VALUES(377, 'ITEM00377', 50, 17, 444, 'HP MIX-07', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 00:59:07');
INSERT INTO `pro_item` VALUES(378, 'ITEM00378', 51, 17, 445, 'HP MIX-08', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 01:09:21');
INSERT INTO `pro_item` VALUES(379, 'ITEM00379', 52, 17, 446, 'HP MIX-10', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 01:10:37');
INSERT INTO `pro_item` VALUES(380, 'ITEM00380', 53, 19, 448, 'LEXMARK MIX-002 DEVELOPER S/ BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:23:47');
INSERT INTO `pro_item` VALUES(381, 'ITEM00381', 54, 19, 449, 'LEXMARK MIX-05 DRUM RETIN RIN', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:25:33');
INSERT INTO `pro_item` VALUES(382, 'ITEM00382', 55, 19, 450, 'LEXMARK MIX-07 D/BAR PUT', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:26:38');
INSERT INTO `pro_item` VALUES(383, 'ITEM00383', 56, 19, 451, 'LEXMARK MIX -08', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:27:31');
INSERT INTO `pro_item` VALUES(384, 'ITEM00384', 57, 19, 452, 'LEXMARK MIX -010 SHIPPING LOCK', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:28:30');
INSERT INTO `pro_item` VALUES(385, 'ITEM00385', 58, 19, 453, 'LEXMARK MIX-011 DEVELOPER WASHER', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:29:52');
INSERT INTO `pro_item` VALUES(386, 'ITEM00386', 59, 19, 454, 'LEXMARK MIX -012 S/ LOCK', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:30:49');
INSERT INTO `pro_item` VALUES(387, 'ITEM00387', 60, 19, 455, 'LEXMARK MIX-013', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:31:42');
INSERT INTO `pro_item` VALUES(388, 'ITEM00388', 19, 19, 456, 'LEX 420-001 DRUM', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:32:50');
INSERT INTO `pro_item` VALUES(389, 'ITEM00389', 21, 19, 457, 'LEX 420-003 WIPER BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:34:25');
INSERT INTO `pro_item` VALUES(390, 'ITEM00390', 24, 19, 458, 'LEX 420-007 CHIP', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:35:13');
INSERT INTO `pro_item` VALUES(391, 'ITEM00391', 19, 19, 459, 'LEX 64-001 DRUM', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:36:13');
INSERT INTO `pro_item` VALUES(392, 'ITEM00392', 20, 19, 460, 'LEX 640-002  DOCTOR BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:37:36');
INSERT INTO `pro_item` VALUES(393, 'ITEM00393', 24, 19, 461, 'LEX 640-007 CHIP', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:38:21');
INSERT INTO `pro_item` VALUES(394, 'ITEM00394', 19, 17, 462, 'HP 4515-001 DRUM \\', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:39:28');
INSERT INTO `pro_item` VALUES(395, 'ITEM00395', 20, 17, 463, 'HP 4515-002 DOCTOR BLADE', '', '0', '15-Oct-2015', 'No', 5, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(396, 'ITEM00396', 30, 17, 464, 'HP 4515-004 MAG SLEAVE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:42:08');
INSERT INTO `pro_item` VALUES(397, 'ITEM00397', 24, 17, 465, 'HP 4515-007 CHIP', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:42:58');
INSERT INTO `pro_item` VALUES(398, 'ITEM00398', 29, 17, 466, 'HP 4515-009 RECOVERY BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:45:16');
INSERT INTO `pro_item` VALUES(399, 'ITEM00399', 19, 17, 467, 'HP 4100-001 DRUM', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:52:17');
INSERT INTO `pro_item` VALUES(400, 'ITEM00400', 21, 17, 468, 'HP 4100-003 WIPER BLADE', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:54:08');
INSERT INTO `pro_item` VALUES(401, 'ITEM00401', 24, 19, 469, 'LEX 650-007 CHIP', '', '0', '15-Oct-2015', 'No', 24, '2015-10-29 00:08:57');
INSERT INTO `pro_item` VALUES(402, 'ITEM00402', 24, 22, 470, 'SAM 1991-007 CHIP', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 22:56:38');
INSERT INTO `pro_item` VALUES(403, 'ITEM00403', 24, 17, 471, 'HP 55A-007 CHIP', '', '0', '15-Oct-2015', 'No', 0, '2015-10-15 23:02:36');
INSERT INTO `pro_item` VALUES(404, 'ITEM00404', 24, 19, 472, 'LEX 450-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:44:04');
INSERT INTO `pro_item` VALUES(405, 'ITEM00405', 24, 19, 473, 'LEX 430-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:45:38');
INSERT INTO `pro_item` VALUES(406, 'ITEM00406', 21, 19, 474, 'LEX 120-003', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:48:12');
INSERT INTO `pro_item` VALUES(407, 'ITEM00407', 27, 19, 475, 'LEX 120-006 PCR', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:49:19');
INSERT INTO `pro_item` VALUES(408, 'ITEM00408', 24, 19, 476, 'LEX 120-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:50:16');
INSERT INTO `pro_item` VALUES(409, 'ITEM00409', 21, 19, 477, 'LEX 210-003 WIPER BLADE', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:52:44');
INSERT INTO `pro_item` VALUES(410, 'ITEM00410', 24, 19, 478, 'LEX 220-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 00:55:58');
INSERT INTO `pro_item` VALUES(411, 'ITEM00411', 24, 19, 479, 'LEX 250-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:00:40');
INSERT INTO `pro_item` VALUES(412, 'ITEM00412', 19, 19, 480, 'LEX 260-001 DRUM', '', '0', '16-Oct-2015', 'No', 7, '2015-10-29 00:29:19');
INSERT INTO `pro_item` VALUES(413, 'ITEM00413', 24, 19, 481, 'LEX 260-007 CHIP', '', '0', '16-Oct-2015', 'No', 314, '2015-10-29 00:29:19');
INSERT INTO `pro_item` VALUES(414, 'ITEM00414', 25, 19, 482, 'LEX 312-005 SEAL', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:05:57');
INSERT INTO `pro_item` VALUES(415, 'ITEM00415', 24, 19, 483, 'LEX 312-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:06:47');
INSERT INTO `pro_item` VALUES(416, 'ITEM00416', 21, 19, 484, 'LEX 321-003 WIPER BLADE', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:08:27');
INSERT INTO `pro_item` VALUES(417, 'ITEM00417', 24, 19, 485, 'LEX 321-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:09:10');
INSERT INTO `pro_item` VALUES(418, 'ITEM00418', 21, 19, 486, 'LEX 332-003 WIPER BLADE', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:11:22');
INSERT INTO `pro_item` VALUES(419, 'ITEM00419', 24, 19, 487, 'LEX 332-007 CHIP', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:13:18');
INSERT INTO `pro_item` VALUES(420, 'ITEM00420', 29, 19, 488, 'LEX 332-009 RECOVERY BLADE', '', '0', '16-Oct-2015', 'No', 0, '2015-10-16 01:14:06');
INSERT INTO `pro_item` VALUES(421, 'ITEM00421', 29, 19, 488, 'LEX 332-009 RECOVER BLADE', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 21:53:48');
INSERT INTO `pro_item` VALUES(422, 'ITEM00422', 22, 17, 489, 'HP PX-004 MAG ROLL', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 21:59:42');
INSERT INTO `pro_item` VALUES(423, 'ITEM00423', 20, 17, 490, 'HP EX-002 DOCTOR BLADE', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:01:02');
INSERT INTO `pro_item` VALUES(424, 'ITEM00424', 22, 17, 491, 'HP EX-004', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:53:57');
INSERT INTO `pro_item` VALUES(425, 'ITEM00425', 29, 17, 492, 'HP EX-009 RECOVERY BLADE', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:54:57');
INSERT INTO `pro_item` VALUES(426, 'ITEM00426', 61, 17, 493, 'HP EX-011 LOCK RAIL', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:57:25');
INSERT INTO `pro_item` VALUES(427, 'ITEM00427', 24, 19, 494, 'LEX 264-007 CHIP', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:58:37');
INSERT INTO `pro_item` VALUES(428, 'ITEM00428', 24, 22, 495, 'SAM 205-007 CHIP', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 22:59:24');
INSERT INTO `pro_item` VALUES(429, 'ITEM00429', 25, 17, 496, 'HP 15A -005 SEAL', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:01:09');
INSERT INTO `pro_item` VALUES(430, 'ITEM00430', 38, 17, 497, 'HP 15A-008', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:02:43');
INSERT INTO `pro_item` VALUES(431, 'ITEM00431', 43, 17, 498, 'HP 15A-008-01 MAG BUSH SHORT', '', '0', '19-Oct-2015', 'No', 12, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(432, 'ITEM00432', 42, 17, 499, 'HP 15A-008-02 MAG BUSH LONG', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:04:33');
INSERT INTO `pro_item` VALUES(433, 'ITEM00433', 29, 17, 500, 'HP 15A-009 RECOVERY BLADE', '', '0', '19-Oct-2015', 'No', 119, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(434, 'ITEM00434', 62, 17, 501, 'HP 15A-010 MAG ROLL BLADE', '', '0', '19-Oct-2015', 'No', 217, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(435, 'ITEM00435', 63, 17, 502, 'HP 15A-012 MAG ROLL FOAM', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:09:53');
INSERT INTO `pro_item` VALUES(436, 'ITEM00436', 32, 17, 503, 'HP 15A-013 END FELT', '', '0', '19-Oct-2015', 'No', 600, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(437, 'ITEM00437', 44, 17, 504, 'HP 15A-016 HOPPER', '', '0', '19-Oct-2015', 'No', 500, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(438, 'ITEM00438', 19, 17, 505, 'HP 2035-001 DRUM', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:13:24');
INSERT INTO `pro_item` VALUES(439, 'ITEM00439', 24, 17, 506, 'HP 2035-007 CHIP', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:14:02');
INSERT INTO `pro_item` VALUES(440, 'ITEM00440', 20, 17, 508, 'HP 2035-002', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:14:48');
INSERT INTO `pro_item` VALUES(441, 'ITEM00441', 19, 17, 510, 'HP 2600-001 DRUM', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:17:35');
INSERT INTO `pro_item` VALUES(442, 'ITEM00442', 20, 17, 511, 'HP 2600-002 DOCTOR BLADE', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:18:25');
INSERT INTO `pro_item` VALUES(443, 'ITEM00443', 21, 17, 512, 'HP 2600-003', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:18:56');
INSERT INTO `pro_item` VALUES(444, 'ITEM00444', 25, 17, 513, 'HP 2600-005 SEAL', '', '0', '19-Oct-2015', 'No', 0, '2015-10-19 23:19:37');
INSERT INTO `pro_item` VALUES(445, 'ITEM00445', 24, 17, 514, 'HP 2600-007 CHIP', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:37:12');
INSERT INTO `pro_item` VALUES(446, 'ITEM00446', 65, 17, 515, 'HP 2600-022 TONE CL', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:41:18');
INSERT INTO `pro_item` VALUES(447, 'ITEM00447', 64, 17, 516, 'HP 2600-023 FREE CLEAN', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:42:32');
INSERT INTO `pro_item` VALUES(448, 'ITEM00448', 44, 17, 517, 'HP 2600-013 HOPPER', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:43:39');
INSERT INTO `pro_item` VALUES(449, 'ITEM00449', 20, 17, 518, 'HP 29X-002 DOCTOR BLADE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:48:11');
INSERT INTO `pro_item` VALUES(450, 'ITEM00450', 21, 17, 519, 'HP 29X-003 WIPER BLADE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:48:53');
INSERT INTO `pro_item` VALUES(451, 'ITEM00451', 30, 17, 520, 'HP 29X-004 MAG SLEAVE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:49:54');
INSERT INTO `pro_item` VALUES(452, 'ITEM00452', 25, 17, 521, 'HP 29X-005 SEAL', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:50:25');
INSERT INTO `pro_item` VALUES(453, 'ITEM00453', 27, 17, 522, 'HP 29X-006 PCR', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:50:59');
INSERT INTO `pro_item` VALUES(454, 'ITEM00454', 26, 17, 523, 'HP 29X-009 MAG ROL SEALING', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:52:28');
INSERT INTO `pro_item` VALUES(455, 'ITEM00455', 66, 17, 524, 'HP 29X-010 POLY REC BLADE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 01:53:20');
INSERT INTO `pro_item` VALUES(456, 'ITEM00456', 20, 17, 525, 'HP 35A-002 DOCTOR BLADE', '', '0', '22-Oct-2015', 'No', 247, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(457, 'ITEM00457', 21, 17, 526, 'HP 35A-003 WIPER BLADE', '', '0', '22-Oct-2015', 'No', 31, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(458, 'ITEM00458', 30, 17, 527, 'HP 35A-004 MAG SLEAVE', '', '0', '22-Oct-2015', 'No', 78, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(459, 'ITEM00459', 25, 17, 528, 'HP 35A-005 SEAL', '', '0', '22-Oct-2015', 'No', 32, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(460, 'ITEM00460', 27, 17, 529, 'HP 35A-006 PCR', '', '0', '22-Oct-2015', 'No', 3, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(461, 'ITEM00461', 24, 17, 530, 'HP 35A-007 CHIP', '', '0', '22-Oct-2015', 'No', 93, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(462, 'ITEM00462', 24, 17, 531, 'HP 16A-007 CHIP', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 02:00:10');
INSERT INTO `pro_item` VALUES(463, 'ITEM00463', 21, 17, 532, 'HP 16A-003 WIPER BLADE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 02:00:53');
INSERT INTO `pro_item` VALUES(464, 'ITEM00464', 27, 17, 534, 'HP 16A-006 PCR', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 02:01:22');
INSERT INTO `pro_item` VALUES(465, 'ITEM00465', 30, 17, 533, 'HP 16A-004 MAG SLEAVE', '', '0', '22-Oct-2015', 'No', 0, '2015-10-22 02:02:04');
INSERT INTO `pro_item` VALUES(466, 'ITEM00466', 67, 17, 535, 'HP 49A-017 EXIT PORT FUSER', '', '0', '25-Oct-2015', 'No', 200, '2015-10-28 22:01:09');
INSERT INTO `pro_item` VALUES(467, 'ITEM00467', 20, 17, 537, 'HP VX-002 DOCTOR BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 22:56:58');
INSERT INTO `pro_item` VALUES(468, 'ITEM00468', 21, 17, 538, 'HP VX-003', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 22:58:13');
INSERT INTO `pro_item` VALUES(469, 'ITEM00469', 25, 17, 540, 'HP VX-0052 SEAL', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 22:59:55');
INSERT INTO `pro_item` VALUES(470, 'ITEM00470', 20, 17, 541, 'HP WX-002 DOCTOR BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:04:19');
INSERT INTO `pro_item` VALUES(471, 'ITEM00471', 21, 17, 542, 'HP WX-003 WIPER BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:04:56');
INSERT INTO `pro_item` VALUES(472, 'ITEM00472', 20, 17, 545, 'HP 4000-002 DOCTOR BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:08:12');
INSERT INTO `pro_item` VALUES(473, 'ITEM00473', 21, 17, 546, 'HP 4000-003', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:08:44');
INSERT INTO `pro_item` VALUES(474, 'ITEM00474', 40, 17, 548, 'HP 4000-012', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:09:10');
INSERT INTO `pro_item` VALUES(475, 'ITEM00475', 20, 17, 549, 'HP 96A-002 DOCTOER BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:11:09');
INSERT INTO `pro_item` VALUES(476, 'ITEM00476', 21, 17, 550, 'HP 96A-003 WIPER BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:11:49');
INSERT INTO `pro_item` VALUES(477, 'ITEM00477', 30, 17, 551, 'HP 96A-004 MAG SLEAVE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:13:14');
INSERT INTO `pro_item` VALUES(478, 'ITEM00478', 27, 17, 552, 'HP 96A-006 PCR \\', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:14:06');
INSERT INTO `pro_item` VALUES(479, 'ITEM00479', 24, 17, 553, 'ML 2850-007 CHIP', '', '0', '25-Oct-2015', 'No', 35, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(480, 'ITEM00480', 21, 22, 554, 'ML 2850-003 WIPER BLADE', '', '0', '25-Oct-2015', 'No', 20, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(481, 'ITEM00481', 27, 22, 555, 'ML 2850-006 PCR', '', '0', '25-Oct-2015', 'No', 10, '2015-10-28 23:01:34');
INSERT INTO `pro_item` VALUES(482, 'ITEM00482', 24, 22, 556, 'ML 1666-007 (104) CHIP', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:21:00');
INSERT INTO `pro_item` VALUES(483, 'ITEM00483', 21, 19, 558, 'LEX 4059-003 WIPER BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:23:03');
INSERT INTO `pro_item` VALUES(484, 'ITEM00484', 19, 19, 557, 'LEX 4059-001 DRUM', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:23:32');
INSERT INTO `pro_item` VALUES(485, 'ITEM00485', 40, 19, 559, 'LEX 4059-.012 END FOAM', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:24:21');
INSERT INTO `pro_item` VALUES(486, 'ITEM00486', 29, 19, 560, 'LEX 4059-008 RECOVERY BLADE', '', '0', '25-Oct-2015', 'No', 0, '2015-10-25 23:24:56');
INSERT INTO `pro_item` VALUES(487, 'ITEM00487', 19, 17, 561, 'HP 12A-001 DRUM', '', '0', '27-Oct-2015', 'No', 98, '2015-10-27 22:49:15');
INSERT INTO `pro_item` VALUES(488, 'ITEM00488', 19, 17, 562, 'HP 27X-001 DRUM', '', '0', '27-Oct-2015', 'No', 20, '2015-10-27 22:52:48');
INSERT INTO `pro_item` VALUES(489, 'ITEM00489', 19, 22, 563, 'SAM 205-001 DRUM', '', '0', '27-Oct-2015', 'No', 5, '2015-10-27 22:52:48');
INSERT INTO `pro_item` VALUES(490, 'ITEM00490', 20, 17, 564, 'HP 15A-002 DOCTOR BLADE', '', '0', '28-Oct-2015', 'No', 0, '2015-10-28 21:31:38');
INSERT INTO `pro_item` VALUES(491, 'ITEM00491', 25, 17, 565, 'HP 15A-005 SEAL', '', '0', '28-Oct-2015', 'No', 58, '2015-10-28 21:39:09');
INSERT INTO `pro_item` VALUES(492, 'ITEM00492', 19, 19, 566, 'LEX230/250/330-001 DRUM', '', '0', '29-Oct-2015', 'No', 32, '2015-10-29 00:27:07');
INSERT INTO `pro_item` VALUES(493, 'ITEM00493', 21, 19, 567, 'LEX 230-003 WIPER BLADE', '', '0', '29-Oct-2015', 'No', 11, '2015-10-29 00:27:07');
INSERT INTO `pro_item` VALUES(494, 'ITEM00494', 24, 19, 568, 'LEX230-007 CHIP', '', '0', '29-Oct-2015', 'No', 350, '2015-10-29 00:27:07');
INSERT INTO `pro_item` VALUES(495, 'ITEM00495', 29, 19, 569, 'LEX 230-009 RECOVERY BLADE', '', '0', '29-Oct-2015', 'No', 11, '2015-10-29 00:27:07');
INSERT INTO `pro_item` VALUES(496, 'ITEM00496', 69, 25, 570, 'R& BOX INPORT', '', '0', '07-Nov-2015', 'No', 0, '2015-11-07 00:02:02');
INSERT INTO `pro_item` VALUES(497, 'ITEM00497', 64, 13, 85, 'abc', '', 'Yes', '02-Jun-2016', 'No', 0, '2016-06-02 03:34:03');
INSERT INTO `pro_item` VALUES(498, 'ITEM00498', 12, 17, 224, 'R&G 12A TRACHING TONER', '', '0', '02-Jun-2016', 'No', 0, '2016-06-02 04:04:33');
INSERT INTO `pro_item` VALUES(499, 'ITEM00499', 12, 17, 572, 'HP 26 A', '', '0', '02-Jun-2016', 'No', 140, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(500, 'ITEM00500', 12, 17, 573, 'HP 93 A', '', '0', '02-Jun-2016', 'No', 50, '2016-06-02 23:27:11');
INSERT INTO `pro_item` VALUES(501, 'ITEM00501', 12, 17, 574, 'HP 90 A', '', '0', '02-Jun-2016', 'No', 75, '2016-06-05 20:49:46');
INSERT INTO `pro_item` VALUES(502, 'ITEM00502', 70, 28, 575, 'E-STUDIO 166', '', '0', '03-Jun-2016', 'No', 6, '2016-06-03 01:49:53');
INSERT INTO `pro_item` VALUES(503, 'ITEM00503', 71, 29, 576, 'M 355 DF', '', '0', '03-Jun-2016', 'No', 45, '2016-06-03 02:18:15');
INSERT INTO `pro_item` VALUES(504, 'ITEM00504', 72, 17, 577, 'HP P1005', '', '0', '03-Jun-2016', 'No', 200, '2016-06-03 03:41:06');
INSERT INTO `pro_item` VALUES(506, 'ITEM00505', 72, 32, 579, 'HP', '', '0', '03-Jun-2016', 'No', 180, '2016-06-03 03:34:45');
INSERT INTO `pro_item` VALUES(507, 'ITEM00507', 75, 17, 580, '35 A PRINTER', '', '0', '03-Jun-2016', 'No', 0, '2016-06-03 03:38:42');
INSERT INTO `pro_item` VALUES(508, 'ITEM00508', 76, 19, 581, 'LEXMARK TONER POWDER', '', '0', '05-Jun-2016', 'No', 150, '2016-06-05 20:40:12');
INSERT INTO `pro_item` VALUES(509, 'ITEM00509', 12, 14, 584, 'PRGM 26 A', 'COMPATIBLE 26 A ', '0', '06-Jun-2016', 'No', 12, '2016-06-06 00:57:17');
INSERT INTO `pro_item` VALUES(510, 'ITEM00510', 78, 35, 585, '104 DRUM', '', '0', '06-Jun-2016', 'No', 5, '2016-06-06 01:17:41');
INSERT INTO `pro_item` VALUES(511, 'ITEM00511', 78, 17, 572, 'HP 26 A DRUM', '', '0', '06-Jun-2016', 'No', 200, '2016-06-06 01:26:55');
INSERT INTO `pro_item` VALUES(512, 'ITEM00512', 78, 17, 586, 'HP 90 A TONER CHIP', '', '0', '06-Jun-2016', 'No', 25, '2016-06-06 01:39:05');
INSERT INTO `pro_item` VALUES(513, 'ITEM00513', 12, 17, 587, 'TONER', '', '0', '06-Jun-2016', 'No', 0, '2016-06-06 20:42:32');
INSERT INTO `pro_item` VALUES(514, 'ITEM00514', 12, 17, 587, 'HP 7570', '', '0', '06-Jun-2016', 'No', 0, '2016-06-06 20:50:58');
INSERT INTO `pro_item` VALUES(515, 'ITEM00515', 78, 17, 587, '7570 DRUM', '', '0', '06-Jun-2016', 'No', 0, '2016-06-06 20:56:33');
INSERT INTO `pro_item` VALUES(516, 'ITEM00516', 78, 17, 588, 'X264 DRUM', '', '0', '06-Jun-2016', 'No', 150, '2016-06-06 21:21:17');
INSERT INTO `pro_item` VALUES(517, 'ITEM00517', 79, 17, 589, '2850 CHIP', '', '0', '06-Jun-2016', 'No', 150, '2016-06-06 21:24:54');
INSERT INTO `pro_item` VALUES(518, 'ITEM00518', 78, 17, 590, '36 A DRUM', '', '0', '06-Jun-2016', 'No', 10, '2016-06-06 21:30:36');
INSERT INTO `pro_item` VALUES(519, 'ITEM00519', 12, 17, 590, 'TONER 36 A', '', '0', '06-Jun-2016', 'No', 0, '2016-06-06 21:33:52');
INSERT INTO `pro_item` VALUES(520, 'ITEM00520', 12, 17, 590, 'PRGM 36 A', '', '0', '06-Jun-2016', 'No', 20, '2016-06-07 01:36:36');
INSERT INTO `pro_item` VALUES(521, 'ITEM00521', 12, 17, 591, 'PRGM 13A', '', '0', '06-Jun-2016', 'No', 0, '2016-06-06 22:55:21');
INSERT INTO `pro_item` VALUES(523, 'ITEM00522', 12, 14, 592, 'PRGM 90 A', '', '0', '07-Jun-2016', 'No', 40, '2016-06-07 01:36:36');
INSERT INTO `pro_item` VALUES(524, 'ITEM00524', 12, 14, 593, 'PRGM 93 A', '', '0', '07-Jun-2016', 'No', 30, '2016-06-07 01:36:36');
INSERT INTO `pro_item` VALUES(525, 'ITEM00525', 12, 14, 594, 'PRGM E-260 DRUM UNIT', '', '0', '07-Jun-2016', 'No', 50, '2016-06-07 01:36:36');
INSERT INTO `pro_item` VALUES(526, 'ITEM00526', 12, 14, 595, 'PRGM EP-26', '', '0', '07-Jun-2016', 'No', 0, '2016-06-07 01:26:28');
INSERT INTO `pro_item` VALUES(527, 'ITEM00527', 12, 14, 596, 'PRGM M-355 DF', '', '0', '07-Jun-2016', 'No', 60, '2016-06-07 01:36:36');
INSERT INTO `pro_item` VALUES(529, 'ITEM00528', 12, 17, 598, 'R &G505XL', '', '0', '07-Jun-2016', 'No', 0, '2016-06-07 02:12:37');
INSERT INTO `pro_item` VALUES(530, 'ITEM00530', 12, 17, 599, 'R&G 505XL', '', '0', '07-Jun-2016', 'No', 240, '2016-06-07 02:20:07');
INSERT INTO `pro_item` VALUES(531, 'ITEM00531', 12, 17, 598, 'HP 505  XL', '', '0', '07-Jun-2016', 'No', 0, '2016-06-07 02:30:49');
INSERT INTO `pro_item` VALUES(532, 'ITEM00532', 80, 36, 600, 'R & G AX-BOX', '', '0', '07-Jun-2016', 'No', 1025, '2016-06-07 02:46:56');
INSERT INTO `pro_item` VALUES(533, 'ITEM00533', 80, 36, 600, 'R & G MEDIUM BOXES', '', '0', '07-Jun-2016', 'No', 50, '2016-06-07 02:46:56');
INSERT INTO `pro_item` VALUES(534, 'ITEM00534', 80, 36, 600, 'R & G LARGE BOXES', '', '0', '07-Jun-2016', 'No', 50, '2016-06-07 02:46:56');
INSERT INTO `pro_item` VALUES(535, 'ITEM00535', 78, 17, 601, 'HP 12 A DRUM', 'HP 12 A DRUM ', '0', '08-Jun-2016', 'No', 0, '2016-06-08 01:13:23');
INSERT INTO `pro_item` VALUES(536, 'ITEM00536', 78, 17, 219, 'HP 92 A DRUM', 'HP 92 A DRUM', '0', '08-Jun-2016', 'No', 0, '2016-06-08 01:15:01');
INSERT INTO `pro_item` VALUES(537, 'ITEM00537', 81, 38, 603, 'PENCIL', '', '0', '09-Jun-2016', 'No', 5, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(538, 'ITEM00538', 81, 38, 603, 'BOX FILES', '', '0', '09-Jun-2016', 'No', 25, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(539, 'ITEM00539', 81, 38, 603, 'NOTE BOOK SMALL', '', '0', '09-Jun-2016', 'No', 10, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(540, 'ITEM00540', 81, 38, 603, 'EX-BOOK 80 P', '', '0', '09-Jun-2016', 'No', 6, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(541, 'ITEM00541', 81, 38, 603, 'C.R BOOK NO-3', '', '0', '09-Jun-2016', 'No', 4, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(542, 'ITEM00542', 81, 38, 603, 'C.R BOOK NO-4', '', '0', '09-Jun-2016', 'No', 2, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(543, 'ITEM00543', 81, 38, 603, 'PENS', '', '0', '09-Jun-2016', 'No', 50, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(544, 'ITEM00544', 81, 38, 603, 'CELLO TAPE 2 "', '', '0', '09-Jun-2016', 'No', 6, '2016-06-09 01:51:40');
INSERT INTO `pro_item` VALUES(545, 'ITEM00545', 82, 39, 604, '102', '', '0', '20-Jun-2016', 'No', 50, '2016-06-20 22:13:32');
INSERT INTO `pro_item` VALUES(547, 'ITEM00546', 78, 17, 605, '12 A DRUM', '', '0', '20-Jun-2016', 'No', 0, '2016-06-20 22:35:50');
INSERT INTO `pro_item` VALUES(548, 'ITEM00548', 12, 17, 601, 'R & G 12A TONER -NEW', '', '0', '20-Jun-2016', 'No', 0, '2016-06-20 23:03:00');
INSERT INTO `pro_item` VALUES(549, 'ITEM00549', 78, 17, 601, '12A DRUM NEW', '', '0', '20-Jun-2016', 'No', 0, '2016-06-20 23:05:55');
INSERT INTO `pro_item` VALUES(550, 'ITEM00550', 12, 17, 590, 'R & G 12A TONER', '', '0', '20-Jun-2016', 'No', 0, '2016-06-20 23:13:34');
INSERT INTO `pro_item` VALUES(551, 'ITEM00551', 84, 17, 607, 'HP COMBO 61', '', '0', '12-Jul-2016', 'No', 0, '2016-07-12 22:10:16');
INSERT INTO `pro_item` VALUES(552, 'ITEM00552', 85, 40, 608, 'HAND WASH CANE', '', '0', '12-Jul-2016', 'No', 0, '2016-07-12 22:17:10');
INSERT INTO `pro_item` VALUES(553, 'ITEM00553', 87, 42, 611, 'NEST TEA 1KG', '', '0', '12-Jul-2016', 'No', 0, '2016-07-12 23:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `pro_model`
--

CREATE TABLE `pro_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `pro_brand` int(11) NOT NULL DEFAULT '0',
  `pro_model` varchar(255) NOT NULL DEFAULT '0',
  `pro_model_des` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`),
  KEY `FK__pro_brand` (`pro_brand`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=612 ;

--
-- Dumping data for table `pro_model`
--

INSERT INTO `pro_model` VALUES(47, 'PRMD002', 11, 'P1120', '', '24-Aug-2015', 'No', '2015-08-24 22:29:28');
INSERT INTO `pro_model` VALUES(48, 'PRMD003', 12, 'BIO40BK01L INK', '', '24-Aug-2015', 'No', '2015-08-24 23:36:24');
INSERT INTO `pro_model` VALUES(49, 'PRMD004', 12, 'BIO40BK100 INK', '', '24-Aug-2015', 'No', '2015-08-24 23:38:00');
INSERT INTO `pro_model` VALUES(50, 'PRMD005', 12, 'BIO40CN01L', '', '24-Aug-2015', 'No', '2015-08-24 23:40:43');
INSERT INTO `pro_model` VALUES(51, 'PRMD006', 12, 'BIO40CN100', '', '24-Aug-2015', 'No', '2015-08-24 23:43:20');
INSERT INTO `pro_model` VALUES(52, 'PRMD007', 12, 'BIO40MA01L', '', '24-Aug-2015', 'No', '2015-08-24 23:44:32');
INSERT INTO `pro_model` VALUES(53, 'PRMD008', 12, 'BIO40MA100', '', '24-Aug-2015', 'No', '2015-08-24 23:45:47');
INSERT INTO `pro_model` VALUES(54, 'PRMD009', 12, 'BIO40YW01L', '', '24-Aug-2015', 'No', '2015-08-24 23:46:42');
INSERT INTO `pro_model` VALUES(55, 'PRMD0010', 12, 'BIO40YW100', '', '24-Aug-2015', 'No', '2015-08-24 23:48:02');
INSERT INTO `pro_model` VALUES(56, 'PRMD0011', 12, 'BIO42BK01LFM', '', '24-Aug-2015', 'No', '2015-08-24 23:49:34');
INSERT INTO `pro_model` VALUES(57, 'PRMD0012', 12, 'BIO42BK100FM', '', '24-Aug-2015', 'No', '2015-08-24 23:50:53');
INSERT INTO `pro_model` VALUES(58, 'PRMD0013', 12, 'BIO42CN01LFM', '', '24-Aug-2015', 'No', '2015-08-24 23:52:05');
INSERT INTO `pro_model` VALUES(59, 'PRMD0014', 12, 'BIO42CN100FM', '', '24-Aug-2015', 'No', '2015-08-24 23:56:24');
INSERT INTO `pro_model` VALUES(60, 'PRMD0015', 12, 'BIOMA01LFM', '', '24-Aug-2015', 'No', '2015-08-24 23:57:55');
INSERT INTO `pro_model` VALUES(61, 'PRMD0016', 12, 'BIO42MA100FM', '', '24-Aug-2015', 'No', '2015-08-24 23:59:04');
INSERT INTO `pro_model` VALUES(62, 'PRMD0017', 12, 'BIO42YW01LFM', '', '24-Aug-2015', 'No', '2015-08-25 00:01:33');
INSERT INTO `pro_model` VALUES(63, 'PRMD0018', 12, 'BIO42YW100FM', '', '25-Aug-2015', 'No', '2015-08-25 00:02:51');
INSERT INTO `pro_model` VALUES(64, 'PRMD0019', 12, 'BIO99BK01LFM', '', '25-Aug-2015', 'No', '2015-08-25 00:03:49');
INSERT INTO `pro_model` VALUES(65, 'PRMD0020', 12, 'BIO99BK100FM', '', '25-Aug-2015', 'No', '2015-08-25 00:04:59');
INSERT INTO `pro_model` VALUES(66, 'PRMD0021', 12, 'BIO99CN01LFM', '', '25-Aug-2015', 'No', '2015-08-25 00:05:58');
INSERT INTO `pro_model` VALUES(67, 'PRMD0022', 12, 'BIO99CN100FM', '', '25-Aug-2015', 'No', '2015-08-25 00:07:45');
INSERT INTO `pro_model` VALUES(68, 'PRMD0023', 12, 'BIO99MA01LFM', '', '25-Aug-2015', 'No', '2015-08-25 00:09:46');
INSERT INTO `pro_model` VALUES(69, 'PRMD0024', 12, 'BIO99MA100FM', '', '25-Aug-2015', 'No', '2015-08-25 00:11:28');
INSERT INTO `pro_model` VALUES(70, 'PRMD0025', 12, 'BIO99YW01LFM', '', '25-Aug-2015', 'No', '2015-08-25 00:12:41');
INSERT INTO `pro_model` VALUES(71, 'PRMD0026', 12, 'BIO99YW100FM', '', '25-Aug-2015', 'No', '2015-08-25 00:13:48');
INSERT INTO `pro_model` VALUES(72, 'PRMD0027', 12, 'E073NTBK', '', '25-Aug-2015', 'No', '2015-08-25 00:15:06');
INSERT INTO `pro_model` VALUES(73, 'PRMD0028', 12, 'E073NTCN', '', '25-Aug-2015', 'No', '2015-08-25 00:16:08');
INSERT INTO `pro_model` VALUES(74, 'PRMD0029', 12, 'E073NTMA', '', '25-Aug-2015', 'No', '2015-08-25 00:17:10');
INSERT INTO `pro_model` VALUES(75, 'PRMD0030', 12, 'E073NTYW', '', '25-Aug-2015', 'No', '2015-08-25 00:17:59');
INSERT INTO `pro_model` VALUES(76, 'PRMD0031', 13, '27INK  CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 00:24:28');
INSERT INTO `pro_model` VALUES(77, 'PRMD0032', 13, '28 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:41:59');
INSERT INTO `pro_model` VALUES(78, 'PRMD0033', 13, '40 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:43:05');
INSERT INTO `pro_model` VALUES(79, 'PRMD0034', 13, '41 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:44:13');
INSERT INTO `pro_model` VALUES(80, 'PRMD0035', 13, '45 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:45:41');
INSERT INTO `pro_model` VALUES(81, 'PRMD0036', 13, '56 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:47:15');
INSERT INTO `pro_model` VALUES(82, 'PRMD0037', 13, '57 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:48:35');
INSERT INTO `pro_model` VALUES(83, 'PRMD0038', 13, '60 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:49:32');
INSERT INTO `pro_model` VALUES(84, 'PRMD0039', 13, '60 CL INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:51:26');
INSERT INTO `pro_model` VALUES(85, 'PRMD0040', 13, '61 BLK INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:54:18');
INSERT INTO `pro_model` VALUES(86, 'PRMD0041', 13, '61 CL INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:55:12');
INSERT INTO `pro_model` VALUES(87, 'PRMD0042', 13, '121 BLK INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:56:22');
INSERT INTO `pro_model` VALUES(88, 'PRMD0043', 13, '121CL INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:57:35');
INSERT INTO `pro_model` VALUES(89, 'PRMD0044', 13, '122 BLK INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:58:27');
INSERT INTO `pro_model` VALUES(90, 'PRMD0045', 13, '122 CL INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 01:59:33');
INSERT INTO `pro_model` VALUES(91, 'PRMD0046', 13, '810 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:00:55');
INSERT INTO `pro_model` VALUES(92, 'PRMD0047', 13, '811 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:01:38');
INSERT INTO `pro_model` VALUES(93, 'PRMD0048', 13, '21 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:03:03');
INSERT INTO `pro_model` VALUES(94, 'PRMD0049', 13, '22 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:03:41');
INSERT INTO `pro_model` VALUES(95, 'PRMD0050', 13, '830 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:05:03');
INSERT INTO `pro_model` VALUES(96, 'PRMD0051', 13, '831 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:05:48');
INSERT INTO `pro_model` VALUES(97, 'PRMD0052', 13, '15 INK CARTRDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:06:42');
INSERT INTO `pro_model` VALUES(98, 'PRMD0053', 13, '38 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:07:27');
INSERT INTO `pro_model` VALUES(99, 'PRMD0054', 13, '39 INK  CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:08:25');
INSERT INTO `pro_model` VALUES(100, 'PRMD0055', 13, '78 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:09:21');
INSERT INTO `pro_model` VALUES(101, 'PRMD0056', 13, '702 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:10:08');
INSERT INTO `pro_model` VALUES(102, 'PRMD0057', 13, '901 BLK INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:11:05');
INSERT INTO `pro_model` VALUES(103, 'PRMD0058', 13, '901 CL INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:11:44');
INSERT INTO `pro_model` VALUES(104, 'PRMD0059', 13, '510 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:22:22');
INSERT INTO `pro_model` VALUES(105, 'PRMD0060', 13, '511 INK CARTRIDGE', '', '25-Aug-2015', 'No', '2015-08-25 02:23:19');
INSERT INTO `pro_model` VALUES(106, 'PRMD0061', 14, 'PRGM 15A TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:31:18');
INSERT INTO `pro_model` VALUES(107, 'PRMD0062', 14, 'PRGM 53A TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:33:14');
INSERT INTO `pro_model` VALUES(108, 'PRMD0063', 14, 'PRGM 15X TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:34:03');
INSERT INTO `pro_model` VALUES(109, 'PRMD0064', 14, 'PRGM 13X TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:35:02');
INSERT INTO `pro_model` VALUES(110, 'PRMD0065', 14, 'PRGM 53X TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:41:36');
INSERT INTO `pro_model` VALUES(111, 'PRMD0066', 14, 'PRGM 49X TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:42:24');
INSERT INTO `pro_model` VALUES(112, 'PRMD0067', 14, 'PRGM 38X/20K', '', '25-Aug-2015', 'No', '2015-08-25 02:43:48');
INSERT INTO `pro_model` VALUES(113, 'PRMD0068', 14, 'PRGM 12X TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:45:09');
INSERT INTO `pro_model` VALUES(114, 'PRMD0069', 14, 'PRGM 43X/9000 NORMAL TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:46:55');
INSERT INTO `pro_model` VALUES(115, 'PRMD0070', 14, 'PRGM 16A TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:48:58');
INSERT INTO `pro_model` VALUES(116, 'PRMD0071', 14, 'PRGM 104 SAMSUNG TONER', '', '25-Aug-2015', 'No', '2016-06-06 23:06:33');
INSERT INTO `pro_model` VALUES(117, 'PRMD0072', 14, 'PRGM 101 TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:51:05');
INSERT INTO `pro_model` VALUES(118, 'PRMD0073', 14, 'PRGM 260 TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:53:55');
INSERT INTO `pro_model` VALUES(119, 'PRMD0074', 14, 'PRGM 450 TONER', '', '25-Aug-2015', 'No', '2015-08-25 02:54:15');
INSERT INTO `pro_model` VALUES(120, 'PRMD0075', 14, 'PRGM  CE 310 BLACK', '', '25-Aug-2015', 'No', '2015-08-25 02:56:11');
INSERT INTO `pro_model` VALUES(121, 'PRMD0076', 14, 'PRGM CE 311 CYAN', '', '25-Aug-2015', 'No', '2015-08-25 02:58:22');
INSERT INTO `pro_model` VALUES(122, 'PRMD0077', 14, 'PRGM CE 312 YELLOW', '', '25-Aug-2015', 'No', '2015-08-25 02:59:23');
INSERT INTO `pro_model` VALUES(124, 'PRMD0079', 14, 'PRGM 51X TONER', '', '25-Aug-2015', 'No', '2015-08-25 03:13:03');
INSERT INTO `pro_model` VALUES(125, 'PRMD0080', 14, 'PRGM CE 313 MAGANTA', '', '25-Aug-2015', 'No', '2015-08-25 03:16:58');
INSERT INTO `pro_model` VALUES(141, 'PRMD00126', 14, 'PRGM 85A', '', '25-Aug-2015', 'No', '2015-08-25 22:04:27');
INSERT INTO `pro_model` VALUES(142, 'PRMD00142', 14, 'PRGM 38A', '', '25-Aug-2015', 'No', '2015-08-25 22:07:37');
INSERT INTO `pro_model` VALUES(143, 'PRMD00143', 14, 'PRGM 42A', '', '25-Aug-2015', 'No', '2015-08-25 22:08:30');
INSERT INTO `pro_model` VALUES(144, 'PRMD00144', 14, 'PRGM 11A', '', '25-Aug-2015', 'No', '2015-08-25 22:09:11');
INSERT INTO `pro_model` VALUES(145, 'PRMD00145', 14, 'PRGM 51A', '', '25-Aug-2015', 'No', '2015-08-25 22:10:24');
INSERT INTO `pro_model` VALUES(146, 'PRMD00146', 14, 'PRGM E230', '', '25-Aug-2015', 'No', '2015-08-25 22:12:29');
INSERT INTO `pro_model` VALUES(147, 'PRMD00147', 14, 'PRGM E250', '', '25-Aug-2015', 'No', '2015-08-25 22:13:33');
INSERT INTO `pro_model` VALUES(148, 'PRMD00148', 14, 'PRGM E120', '', '25-Aug-2015', 'No', '2015-08-25 22:14:34');
INSERT INTO `pro_model` VALUES(149, 'PRMD00149', 14, 'PRGM 96A', '', '25-Aug-2015', 'No', '2015-08-25 22:15:41');
INSERT INTO `pro_model` VALUES(150, 'PRMD00150', 14, 'PRGM E250 P/C', '', '25-Aug-2015', 'No', '2015-08-25 22:17:12');
INSERT INTO `pro_model` VALUES(151, 'PRMD00151', 14, 'PRGM E230 P/C', '', '25-Aug-2015', 'No', '2015-08-25 22:17:59');
INSERT INTO `pro_model` VALUES(152, 'PRMD00152', 14, 'PRGM 49A', '', '25-Aug-2015', 'No', '2015-08-25 22:19:27');
INSERT INTO `pro_model` VALUES(153, 'PRMD00153', 14, 'PRGM 80A', '', '25-Aug-2015', 'No', '2015-08-25 22:20:07');
INSERT INTO `pro_model` VALUES(154, 'PRMD00154', 14, 'PRGM SAM 4521', '', '25-Aug-2015', 'No', '2015-08-25 22:22:11');
INSERT INTO `pro_model` VALUES(155, 'PRMD00155', 14, 'PRGM E120 P/C', '', '25-Aug-2015', 'No', '2015-08-25 22:23:01');
INSERT INTO `pro_model` VALUES(156, 'PRMD00156', 14, 'PRGM SAM 2850', '', '25-Aug-2015', 'No', '2015-08-25 22:23:48');
INSERT INTO `pro_model` VALUES(157, 'PRMD00157', 14, 'PRGM 64A', '', '25-Aug-2015', 'No', '2015-08-25 22:26:10');
INSERT INTO `pro_model` VALUES(158, 'PRMD00158', 14, 'PRGM 24A', '', '25-Aug-2015', 'No', '2015-08-25 22:26:58');
INSERT INTO `pro_model` VALUES(159, 'PRMD00159', 14, 'PRGM 29X', '', '25-Aug-2015', 'No', '2015-08-25 22:27:42');
INSERT INTO `pro_model` VALUES(160, 'PRMD00160', 14, 'PRGM 92A', '', '25-Aug-2015', 'No', '2015-08-25 22:28:21');
INSERT INTO `pro_model` VALUES(161, 'PRMD00161', 14, 'PRGM 78A', '', '25-Aug-2015', 'No', '2015-08-25 22:28:58');
INSERT INTO `pro_model` VALUES(163, 'PRMD00162', 15, 'F 696BKSC', '', '25-Aug-2015', 'No', '2015-08-25 22:37:41');
INSERT INTO `pro_model` VALUES(164, 'PRMD00164', 15, 'F 719BKSC', '', '25-Aug-2015', 'No', '2015-08-25 22:39:53');
INSERT INTO `pro_model` VALUES(165, 'PRMD00165', 15, 'F 730BKSC', '', '25-Aug-2015', 'No', '2015-08-25 22:40:41');
INSERT INTO `pro_model` VALUES(166, 'PRMD00166', 15, 'F 737BKSC', '', '25-Aug-2015', 'No', '2015-08-25 22:41:28');
INSERT INTO `pro_model` VALUES(167, 'PRMD00167', 15, 'F 746BKSC', '', '25-Aug-2015', 'No', '2015-08-25 22:42:18');
INSERT INTO `pro_model` VALUES(168, 'PRMD00168', 15, 'FL 583', '', '25-Aug-2015', 'No', '2015-08-25 22:43:24');
INSERT INTO `pro_model` VALUES(169, 'PRMD00169', 15, 'N160BK', '', '25-Aug-2015', 'No', '2015-08-25 22:46:12');
INSERT INTO `pro_model` VALUES(170, 'PRMD00170', 15, 'N162BK', '', '25-Aug-2015', 'No', '2015-08-25 22:46:53');
INSERT INTO `pro_model` VALUES(171, 'PRMD00171', 15, 'N171BK', '', '25-Aug-2015', 'No', '2015-08-25 22:47:35');
INSERT INTO `pro_model` VALUES(172, 'PRMD00172', 15, 'N 177BKGR', '', '25-Aug-2015', 'No', '2015-08-25 22:49:11');
INSERT INTO `pro_model` VALUES(173, 'PRMD00173', 15, 'N 181BKHD', '', '25-Aug-2015', 'No', '2015-08-25 22:50:38');
INSERT INTO `pro_model` VALUES(174, 'PRMD00174', 15, 'N 186BK', '', '25-Aug-2015', 'No', '2015-08-25 22:51:55');
INSERT INTO `pro_model` VALUES(175, 'PRMD00175', 15, 'N 188BK', '', '25-Aug-2015', 'No', '2015-08-25 22:52:46');
INSERT INTO `pro_model` VALUES(176, 'PRMD00176', 15, 'N 194BK', '', '25-Aug-2015', 'No', '2015-08-25 22:53:31');
INSERT INTO `pro_model` VALUES(177, 'PRMD00177', 15, 'N 274PE', '', '25-Aug-2015', 'No', '2015-08-25 22:54:58');
INSERT INTO `pro_model` VALUES(178, 'PRMD00178', 15, 'N363PE', '', '25-Aug-2015', 'No', '2015-08-25 23:25:16');
INSERT INTO `pro_model` VALUES(179, 'PRMD00179', 15, 'N 443BK', '', '25-Aug-2015', 'No', '2015-08-25 23:26:30');
INSERT INTO `pro_model` VALUES(180, 'PRMD00180', 15, 'N478BK', '', '25-Aug-2015', 'No', '2015-08-25 23:27:28');
INSERT INTO `pro_model` VALUES(181, 'PRMD00181', 15, 'N 514BK', '', '25-Aug-2015', 'No', '2015-08-25 23:29:38');
INSERT INTO `pro_model` VALUES(182, 'PRMD00182', 15, 'N 549BK', '', '25-Aug-2015', 'No', '2015-08-25 23:30:33');
INSERT INTO `pro_model` VALUES(183, 'PRMD00183', 15, 'N 585BK', '', '25-Aug-2015', 'No', '2015-08-25 23:32:19');
INSERT INTO `pro_model` VALUES(184, 'PRMD00184', 15, 'N 617BK', '', '25-Aug-2015', 'No', '2015-08-25 23:32:57');
INSERT INTO `pro_model` VALUES(185, 'PRMD00185', 15, 'N 618BK', '', '25-Aug-2015', 'No', '2015-08-25 23:33:30');
INSERT INTO `pro_model` VALUES(186, 'PRMD00186', 15, 'N 639BK', '', '25-Aug-2015', 'No', '2015-08-25 23:34:12');
INSERT INTO `pro_model` VALUES(187, 'PRMD00187', 15, 'N 741BK', '', '25-Aug-2015', 'No', '2015-08-25 23:34:56');
INSERT INTO `pro_model` VALUES(188, 'PRMD00188', 15, 'N 833BKSR', '', '25-Aug-2015', 'No', '2015-08-25 23:36:09');
INSERT INTO `pro_model` VALUES(189, 'PRMD00189', 15, 'N 835BK', '', '25-Aug-2015', 'No', '2015-08-25 23:36:56');
INSERT INTO `pro_model` VALUES(190, 'PRMD00190', 15, 'N 868BK', '', '25-Aug-2015', 'No', '2015-08-25 23:37:33');
INSERT INTO `pro_model` VALUES(191, 'PRMD00191', 15, 'N 904BK', '', '25-Aug-2015', 'No', '2015-08-25 23:38:06');
INSERT INTO `pro_model` VALUES(192, 'PRMD00192', 15, 'N 908BK', '', '25-Aug-2015', 'No', '2015-08-25 23:38:43');
INSERT INTO `pro_model` VALUES(193, 'PRMD00193', 15, 'N 992BK', '', '25-Aug-2015', 'No', '2015-08-25 23:39:27');
INSERT INTO `pro_model` VALUES(194, 'PRMD00194', 15, 'N 653BK', '', '25-Aug-2015', 'No', '2015-08-25 23:40:08');
INSERT INTO `pro_model` VALUES(195, 'PRMD00195', 15, 'N 635BK', '', '25-Aug-2015', 'No', '2015-08-25 23:41:21');
INSERT INTO `pro_model` VALUES(196, 'PRMD00196', 15, 'NS 024BR2SO5', '', '25-Aug-2015', 'No', '2015-08-25 23:42:15');
INSERT INTO `pro_model` VALUES(197, 'PRMD00197', 12, 'IJC003BK3', '', '25-Aug-2015', 'No', '2015-08-25 23:45:06');
INSERT INTO `pro_model` VALUES(198, 'PRMD00198', 12, 'IJC005FC3', '', '25-Aug-2015', 'No', '2015-08-25 23:50:03');
INSERT INTO `pro_model` VALUES(199, 'PRMD00199', 12, 'IJSC020BK2', '', '25-Aug-2015', 'No', '2015-08-25 23:52:02');
INSERT INTO `pro_model` VALUES(200, 'PRMD00200', 12, 'IJSC021BK', '', '25-Aug-2015', 'No', '2015-08-26 00:00:08');
INSERT INTO `pro_model` VALUES(201, 'PRMD00201', 12, 'IJSC021FC', '', '26-Aug-2015', 'No', '2015-08-26 00:02:25');
INSERT INTO `pro_model` VALUES(202, 'PRMD00202', 12, 'IJSC024BK', '', '26-Aug-2015', 'No', '2015-08-26 00:03:57');
INSERT INTO `pro_model` VALUES(203, 'PRMD00203', 12, 'IJSC024FC', '', '26-Aug-2015', 'No', '2015-08-26 00:05:06');
INSERT INTO `pro_model` VALUES(204, 'PRMD00204', 12, 'IJSC040BK', '', '26-Aug-2015', 'No', '2015-08-26 00:06:08');
INSERT INTO `pro_model` VALUES(205, 'PRMD00205', 12, 'IJSC040FC3', '', '26-Aug-2015', 'No', '2015-08-26 00:07:15');
INSERT INTO `pro_model` VALUES(206, 'PRMD00206', 12, 'IJSH351BK', '', '26-Aug-2015', 'No', '2015-08-26 00:08:03');
INSERT INTO `pro_model` VALUES(207, 'PRMD00207', 12, 'IJSH645BK2', '', '26-Aug-2015', 'No', '2015-08-26 00:09:15');
INSERT INTO `pro_model` VALUES(208, 'PRMD00208', 12, 'IJSH657FC3', '', '26-Aug-2015', 'No', '2015-08-26 00:10:11');
INSERT INTO `pro_model` VALUES(209, 'PRMD00209', 12, 'IJSL016BK', '', '26-Aug-2015', 'No', '2015-08-26 00:11:37');
INSERT INTO `pro_model` VALUES(210, 'PRMD00210', 17, 'R&G 51A', '', '26-Aug-2015', 'No', '2015-08-26 00:17:11');
INSERT INTO `pro_model` VALUES(211, 'PRMD00211', 17, 'R&G 05XL', '', '26-Aug-2015', 'No', '2015-08-26 00:21:00');
INSERT INTO `pro_model` VALUES(212, 'PRMD00212', 17, 'R&G 64A', '', '26-Aug-2015', 'No', '2015-08-26 01:21:33');
INSERT INTO `pro_model` VALUES(213, 'PRMD00213', 17, 'R&G 61X/61A', '', '26-Aug-2015', 'No', '2015-08-26 01:22:47');
INSERT INTO `pro_model` VALUES(214, 'PRMD00214', 17, 'R&G 38A', '', '26-Aug-2015', 'No', '2015-08-26 01:24:32');
INSERT INTO `pro_model` VALUES(215, 'PRMD00215', 17, 'R&G 80X', '', '26-Aug-2015', 'No', '2015-08-26 01:25:12');
INSERT INTO `pro_model` VALUES(216, 'PRMD00216', 17, 'R&G 55A', '', '26-Aug-2015', 'No', '2015-08-26 01:26:13');
INSERT INTO `pro_model` VALUES(217, 'PRMD00217', 17, 'R&G 11A', '', '26-Aug-2015', 'No', '2015-08-26 01:26:50');
INSERT INTO `pro_model` VALUES(218, 'PRMD00218', 17, 'R&G 42A', '', '26-Aug-2015', 'No', '2015-08-26 02:00:41');
INSERT INTO `pro_model` VALUES(219, 'PRMD00219', 17, 'R&G 92A', '', '26-Aug-2015', 'No', '2015-08-26 02:01:47');
INSERT INTO `pro_model` VALUES(220, 'PRMD00220', 17, 'R&G 29X', '', '26-Aug-2015', 'No', '2015-08-26 02:02:18');
INSERT INTO `pro_model` VALUES(221, 'PRMD00221', 17, 'R&G 96A', '', '26-Aug-2015', 'No', '2015-08-26 02:02:57');
INSERT INTO `pro_model` VALUES(222, 'PRMD00222', 17, 'R&G 49X', '', '26-Aug-2015', 'No', '2015-08-26 02:08:02');
INSERT INTO `pro_model` VALUES(223, 'PRMD00223', 17, 'R&G 11X', '', '26-Aug-2015', 'No', '2015-08-26 02:09:01');
INSERT INTO `pro_model` VALUES(224, 'PRMD00224', 17, 'R&G 12A', '', '26-Aug-2015', 'No', '2015-08-26 02:10:51');
INSERT INTO `pro_model` VALUES(225, 'PRMD00225', 17, 'R&G 35A', '', '26-Aug-2015', 'No', '2015-08-26 02:11:25');
INSERT INTO `pro_model` VALUES(226, 'PRMD00226', 17, 'R&G 78A', '', '26-Aug-2015', 'No', '2015-08-26 02:13:20');
INSERT INTO `pro_model` VALUES(227, 'PRMD00227', 17, 'R&G 85A', '', '26-Aug-2015', 'No', '2015-08-26 02:13:59');
INSERT INTO `pro_model` VALUES(228, 'PRMD00228', 17, 'R&G 36A', '', '26-Aug-2015', 'No', '2015-08-26 02:16:14');
INSERT INTO `pro_model` VALUES(229, 'PRMD00229', 17, 'R&G 13A', '', '26-Aug-2015', 'No', '2015-08-26 02:17:18');
INSERT INTO `pro_model` VALUES(230, 'PRMD00230', 17, 'R&G 49A', '', '26-Aug-2015', 'No', '2015-08-26 02:18:02');
INSERT INTO `pro_model` VALUES(231, 'PRMD00231', 17, 'R&G 53A', '', '26-Aug-2015', 'No', '2015-08-26 02:18:37');
INSERT INTO `pro_model` VALUES(232, 'PRMD00232', 17, 'R&G 05A', '', '26-Aug-2015', 'No', '2015-08-26 02:19:39');
INSERT INTO `pro_model` VALUES(233, 'PRMD00233', 17, 'R&G 80A', '', '26-Aug-2015', 'No', '2015-08-26 02:20:18');
INSERT INTO `pro_model` VALUES(234, 'PRMD00234', 17, 'R&G 15A', '', '26-Aug-2015', 'No', '2015-08-26 02:21:04');
INSERT INTO `pro_model` VALUES(235, 'PRMD00235', 14, 'PRGM 12A', '', '26-Aug-2015', 'No', '2015-08-26 02:22:48');
INSERT INTO `pro_model` VALUES(236, 'PRMD00236', 14, 'PRGM 35A', '', '26-Aug-2015', 'No', '2015-08-26 02:23:50');
INSERT INTO `pro_model` VALUES(237, 'PRMD00237', 14, 'PRGM 05A', '', '26-Aug-2015', 'No', '2015-08-26 02:24:26');
INSERT INTO `pro_model` VALUES(238, 'PRMD00238', 14, 'PRGM 80X', '', '26-Aug-2015', 'No', '2015-08-26 02:25:13');
INSERT INTO `pro_model` VALUES(239, 'PRMD00239', 12, 'N 562BK', '', '26-Aug-2015', 'No', '2015-08-26 23:28:50');
INSERT INTO `pro_model` VALUES(240, 'PRMD00240', 12, 'N 638BK', '', '26-Aug-2015', 'No', '2015-08-26 23:30:28');
INSERT INTO `pro_model` VALUES(241, 'PRMD00241', 12, 'F 715BKSC', '', '26-Aug-2015', 'No', '2015-08-26 23:32:49');
INSERT INTO `pro_model` VALUES(242, 'PRMD00242', 12, 'N 559BK RIBBON', '', '26-Aug-2015', 'No', '2015-08-26 23:35:26');
INSERT INTO `pro_model` VALUES(243, 'PRMD00243', 12, 'N 604BK', '', '26-Aug-2015', 'No', '2015-08-26 23:44:19');
INSERT INTO `pro_model` VALUES(244, 'PRMD00244', 12, 'N884BK', '', '26-Aug-2015', 'No', '2015-08-26 23:45:30');
INSERT INTO `pro_model` VALUES(245, 'PRMD00245', 12, 'N 901BK', '', '26-Aug-2015', 'No', '2015-08-26 23:46:22');
INSERT INTO `pro_model` VALUES(246, 'PRMD00246', 12, 'N 649BK', '', '26-Aug-2015', 'No', '2015-08-26 23:47:10');
INSERT INTO `pro_model` VALUES(247, 'PRMD00247', 12, 'N 906BK', '', '26-Aug-2015', 'No', '2015-08-26 23:47:56');
INSERT INTO `pro_model` VALUES(250, 'PRMD00248', 22, 'R&G 103', '', '26-Aug-2015', 'No', '2015-08-26 23:51:32');
INSERT INTO `pro_model` VALUES(251, 'PRMD00251', 22, 'R&G 1043', '', '26-Aug-2015', 'No', '2015-08-26 23:53:26');
INSERT INTO `pro_model` VALUES(252, 'PRMD00252', 22, 'R&G 105', '', '26-Aug-2015', 'No', '2015-08-26 23:54:19');
INSERT INTO `pro_model` VALUES(253, 'PRMD00253', 22, 'R&G 108', '', '26-Aug-2015', 'No', '2015-08-26 23:54:54');
INSERT INTO `pro_model` VALUES(254, 'PRMD00254', 22, 'R&G 109', '', '26-Aug-2015', 'No', '2015-08-26 23:55:24');
INSERT INTO `pro_model` VALUES(255, 'PRMD00255', 22, 'R&G ML 205', '', '26-Aug-2015', 'No', '2015-08-26 23:56:27');
INSERT INTO `pro_model` VALUES(256, 'PRMD00256', 22, 'R&G 4521', '', '26-Aug-2015', 'No', '2015-08-26 23:57:11');
INSERT INTO `pro_model` VALUES(257, 'PRMD00257', 22, 'R&G 4216', '', '26-Aug-2015', 'No', '2015-08-26 23:57:49');
INSERT INTO `pro_model` VALUES(258, 'PRMD00258', 22, 'R&G 2850', '', '26-Aug-2015', 'No', '2015-08-26 23:59:02');
INSERT INTO `pro_model` VALUES(259, 'PRMD00259', 22, 'R&G 101', '', '26-Aug-2015', 'No', '2015-08-27 00:01:01');
INSERT INTO `pro_model` VALUES(260, 'PRMD00260', 20, 'DR 360 P/C', '', '27-Aug-2015', 'No', '2015-08-27 21:47:24');
INSERT INTO `pro_model` VALUES(261, 'PRMD00261', 20, '520 P/C', '', '27-Aug-2015', 'No', '2015-08-27 21:48:42');
INSERT INTO `pro_model` VALUES(262, 'PRMD00262', 20, '580 P/C', '', '27-Aug-2015', 'No', '2015-08-27 21:49:38');
INSERT INTO `pro_model` VALUES(263, 'PRMD00263', 20, '620 P/C', '', '27-Aug-2015', 'No', '2015-08-27 21:50:21');
INSERT INTO `pro_model` VALUES(264, 'PRMD00264', 20, 'TN 650', '', '27-Aug-2015', 'No', '2015-08-27 21:51:22');
INSERT INTO `pro_model` VALUES(265, 'PRMD00265', 20, 'TN 580', '', '27-Aug-2015', 'No', '2015-08-27 21:51:55');
INSERT INTO `pro_model` VALUES(266, 'PRMD00266', 20, 'TN 360', '', '27-Aug-2015', 'No', '2015-08-27 21:52:43');
INSERT INTO `pro_model` VALUES(267, 'PRMD00267', 17, 'R&G 70A', '', '27-Aug-2015', 'No', '2015-08-27 21:53:44');
INSERT INTO `pro_model` VALUES(268, 'PRMD00268', 21, '6200', '', '27-Aug-2015', 'No', '2015-08-27 21:54:39');
INSERT INTO `pro_model` VALUES(269, 'PRMD00269', 19, 'R&G 120P/C', '', '27-Aug-2015', 'No', '2015-08-27 21:56:19');
INSERT INTO `pro_model` VALUES(270, 'PRMD00270', 19, 'R&G 120', '', '27-Aug-2015', 'No', '2015-08-27 21:57:19');
INSERT INTO `pro_model` VALUES(271, 'PRMD00271', 19, 'R&G E 230/330', '', '27-Aug-2015', 'No', '2015-08-27 21:57:59');
INSERT INTO `pro_model` VALUES(272, 'PRMD00272', 19, 'R&G E 250PC', '', '27-Aug-2015', 'No', '2015-08-27 21:58:59');
INSERT INTO `pro_model` VALUES(273, 'PRMD00273', 19, 'R&G E 250', '', '27-Aug-2015', 'No', '2015-08-27 22:00:08');
INSERT INTO `pro_model` VALUES(274, 'PRMD00274', 19, 'R&G E 260 PC', '', '27-Aug-2015', 'No', '2015-08-27 22:01:20');
INSERT INTO `pro_model` VALUES(275, 'PRMD00275', 19, 'R&G E 260', '', '27-Aug-2015', 'No', '2015-08-27 22:02:24');
INSERT INTO `pro_model` VALUES(276, 'PRMD00276', 19, 'R&G 264 P/C', '', '27-Aug-2015', 'No', '2015-08-27 22:03:45');
INSERT INTO `pro_model` VALUES(278, 'PRMD00277', 19, 'R&G E 264', '', '27-Aug-2015', 'No', '2015-08-27 22:09:12');
INSERT INTO `pro_model` VALUES(279, 'PRMD00279', 18, 'R&G 05L/06L', '', '28-Aug-2015', 'No', '2015-08-28 01:09:24');
INSERT INTO `pro_model` VALUES(280, 'PRMD00280', 18, 'R&G FX 09', '', '28-Aug-2015', 'No', '2015-08-28 01:10:16');
INSERT INTO `pro_model` VALUES(281, 'PRMD00281', 18, 'R&G E P', '', '28-Aug-2015', 'No', '2015-08-28 01:11:03');
INSERT INTO `pro_model` VALUES(282, 'PRMD00282', 18, 'R&G EP 26', '', '28-Aug-2015', 'No', '2015-08-28 01:12:01');
INSERT INTO `pro_model` VALUES(283, 'PRMD00283', 12, 'PPIGL20', '', '28-Aug-2015', 'No', '2015-08-28 01:16:50');
INSERT INTO `pro_model` VALUES(284, 'PRMD00284', 12, 'PPIM20', '', '28-Aug-2015', 'No', '2015-08-28 01:18:30');
INSERT INTO `pro_model` VALUES(285, 'PRMD00285', 12, 'PPIMTG03', '', '28-Aug-2015', 'No', '2015-08-28 01:19:44');
INSERT INTO `pro_model` VALUES(286, 'PRMD00286', 12, 'PPIMTM03', '', '28-Aug-2015', 'No', '2015-08-28 01:21:36');
INSERT INTO `pro_model` VALUES(287, 'PRMD00287', 12, 'PPIPA100', '', '28-Aug-2015', 'No', '2015-08-28 01:23:29');
INSERT INTO `pro_model` VALUES(288, 'PRMD00288', 12, 'PPIPH10', '', '28-Aug-2015', 'No', '2015-08-28 01:25:13');
INSERT INTO `pro_model` VALUES(289, 'PRMD00289', 12, 'PPIPH204R', '', '28-Aug-2015', 'No', '2015-08-28 01:26:20');
INSERT INTO `pro_model` VALUES(290, 'PRMD00290', 12, 'PPISG20', '', '28-Aug-2015', 'No', '2015-08-28 01:27:32');
INSERT INTO `pro_model` VALUES(291, 'PRMD00291', 12, 'PPISK20', '', '28-Aug-2015', 'No', '2015-08-28 01:28:44');
INSERT INTO `pro_model` VALUES(292, 'PRMD00292', 17, 'TON-01-02', '', '28-Aug-2015', 'No', '2015-08-28 01:48:06');
INSERT INTO `pro_model` VALUES(293, 'PRMD00293', 17, 'TON-01-03', '', '28-Aug-2015', 'No', '2015-08-28 01:49:22');
INSERT INTO `pro_model` VALUES(294, 'PRMD00294', 17, 'TON-01-19', '', '28-Aug-2015', 'No', '2015-08-28 01:50:18');
INSERT INTO `pro_model` VALUES(295, 'PRMD00295', 17, 'TON-01-12', '', '28-Aug-2015', 'No', '2015-08-28 01:51:22');
INSERT INTO `pro_model` VALUES(296, 'PRMD00296', 17, 'TON-01-14', '', '28-Aug-2015', 'No', '2015-08-28 01:53:53');
INSERT INTO `pro_model` VALUES(297, 'PRMD00297', 17, 'TON-01-18', '', '28-Aug-2015', 'No', '2015-08-28 01:54:33');
INSERT INTO `pro_model` VALUES(298, 'PRMD00298', 19, 'LEX TON-01-14', '', '28-Aug-2015', 'No', '2015-08-28 02:05:07');
INSERT INTO `pro_model` VALUES(299, 'PRMD00299', 17, 'TON-01-25', '', '28-Aug-2015', 'No', '2015-08-28 01:56:10');
INSERT INTO `pro_model` VALUES(301, 'PRMD00300', 19, 'LEX TON-04-11', '', '28-Aug-2015', 'No', '2015-08-28 02:08:01');
INSERT INTO `pro_model` VALUES(302, 'PRMD00302', 19, 'LEX TON-04-10', '', '28-Aug-2015', 'No', '2015-08-28 02:08:37');
INSERT INTO `pro_model` VALUES(303, 'PRMD00303', 19, 'LEX TON-04-08', '', '28-Aug-2015', 'No', '2015-08-28 02:09:14');
INSERT INTO `pro_model` VALUES(304, 'PRMD00304', 19, 'LEX TON-04-02', '', '28-Aug-2015', 'No', '2015-08-28 02:09:58');
INSERT INTO `pro_model` VALUES(305, 'PRMD00305', 19, 'LEX TON-04-03', '', '28-Aug-2015', 'No', '2015-08-28 02:10:35');
INSERT INTO `pro_model` VALUES(306, 'PRMD00306', 19, 'LEX TON-04-01', '', '28-Aug-2015', 'No', '2015-08-28 02:11:15');
INSERT INTO `pro_model` VALUES(307, 'PRMD00307', 19, 'LEX TON-01-16', '', '28-Aug-2015', 'No', '2015-08-28 02:12:37');
INSERT INTO `pro_model` VALUES(308, 'PRMD00308', 22, 'JLT-19(140G)', '', '28-Aug-2015', 'No', '2015-08-28 02:14:44');
INSERT INTO `pro_model` VALUES(309, 'PRMD00309', 22, 'JLT-28', '', '28-Aug-2015', 'No', '2015-08-28 02:15:27');
INSERT INTO `pro_model` VALUES(310, 'PRMD00310', 22, 'JLT-001 (140G)', '', '28-Aug-2015', 'No', '2015-08-28 02:16:33');
INSERT INTO `pro_model` VALUES(311, 'PRMD00311', 22, 'JLT-036SG (10KG)', '', '28-Aug-2015', 'No', '2015-08-28 02:20:48');
INSERT INTO `pro_model` VALUES(312, 'PRMD00312', 22, 'JLT-019 (HD) (10KG)', '', '28-Aug-2015', 'No', '2015-08-28 02:21:59');
INSERT INTO `pro_model` VALUES(313, 'PRMD00313', 14, 'PRGM 16A', '', '02-Sep-2015', 'No', '2015-09-02 22:37:27');
INSERT INTO `pro_model` VALUES(314, 'PRMD00314', 14, 'PRGM 10A', '', '02-Sep-2015', 'No', '2015-09-02 22:38:32');
INSERT INTO `pro_model` VALUES(315, 'PRMD00315', 14, 'PRGM 55A', '', '02-Sep-2015', 'No', '2015-09-02 22:39:26');
INSERT INTO `pro_model` VALUES(316, 'PRMD00316', 14, 'PRGM 05X', '', '02-Sep-2015', 'No', '2015-09-02 22:41:38');
INSERT INTO `pro_model` VALUES(317, 'PRMD00317', 14, 'PRGM 83X', '', '02-Sep-2015', 'No', '2015-09-02 22:43:14');
INSERT INTO `pro_model` VALUES(318, 'PRMD00318', 13, 'R&G 83X', '', '02-Sep-2015', 'No', '2015-09-02 23:53:19');
INSERT INTO `pro_model` VALUES(319, 'PRMD00319', 13, 'R&G 230 PC', '', '02-Sep-2015', 'No', '2015-09-02 23:55:17');
INSERT INTO `pro_model` VALUES(320, 'PRMD00320', 12, 'N 477 BK', '', '02-Sep-2015', 'No', '2015-09-03 00:04:11');
INSERT INTO `pro_model` VALUES(321, 'PRMD00321', 12, 'N 638 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:23:10');
INSERT INTO `pro_model` VALUES(322, 'PRMD00322', 12, 'N 478 BK', '', '03-Sep-2015', 'No', '2015-09-03 00:38:11');
INSERT INTO `pro_model` VALUES(323, 'PRMD00323', 12, 'N 655 BK', '', '03-Sep-2015', 'No', '2015-09-03 00:38:55');
INSERT INTO `pro_model` VALUES(324, 'PRMD00324', 12, 'N 654 BK', '', '03-Sep-2015', 'No', '2015-09-03 00:39:34');
INSERT INTO `pro_model` VALUES(325, 'PRMD00325', 12, 'N 274 PE', '', '03-Sep-2015', 'No', '2015-09-03 00:40:18');
INSERT INTO `pro_model` VALUES(326, 'PRMD00326', 12, 'IJSH 656 BK', '', '03-Sep-2015', 'No', '2015-09-03 00:41:14');
INSERT INTO `pro_model` VALUES(327, 'PRMD00327', 12, 'N 636 PE', '', '03-Sep-2015', 'No', '2015-09-03 01:49:43');
INSERT INTO `pro_model` VALUES(328, 'PRMD00328', 12, 'F 715 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:50:57');
INSERT INTO `pro_model` VALUES(329, 'PRMD00329', 12, 'N 194 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:51:52');
INSERT INTO `pro_model` VALUES(330, 'PRMD00330', 12, 'IJSCO41FC3', '', '03-Sep-2015', 'No', '2015-09-03 01:52:35');
INSERT INTO `pro_model` VALUES(331, 'PRMD00331', 12, 'N 171 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:53:29');
INSERT INTO `pro_model` VALUES(332, 'PRMD00332', 12, 'UJSC003BK3', '', '03-Sep-2015', 'No', '2015-09-03 01:54:20');
INSERT INTO `pro_model` VALUES(333, 'PRMD00333', 12, 'UJSC005FC3', '', '03-Sep-2015', 'No', '2015-09-03 01:55:34');
INSERT INTO `pro_model` VALUES(334, 'PRMD00334', 12, 'N 443 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:56:27');
INSERT INTO `pro_model` VALUES(335, 'PRMD00335', 12, 'N 835 BK', '', '03-Sep-2015', 'No', '2015-09-03 01:57:23');
INSERT INTO `pro_model` VALUES(336, 'PRMD00336', 12, 'BIO99 LM 100ML', '', '03-Sep-2015', 'No', '2015-09-03 02:09:45');
INSERT INTO `pro_model` VALUES(337, 'PRMD00337', 12, 'BIO99 LC 100ML', '', '03-Sep-2015', 'No', '2015-09-03 02:10:36');
INSERT INTO `pro_model` VALUES(338, 'PRMD00338', 12, 'BIO99 LC 1LTR', '', '03-Sep-2015', 'No', '2015-09-03 02:12:13');
INSERT INTO `pro_model` VALUES(339, 'PRMD00339', 12, 'BIO99 LM 1LTR', '', '03-Sep-2015', 'No', '2015-09-03 02:12:56');
INSERT INTO `pro_model` VALUES(340, 'PRMD00340', 12, 'BIO 42 YW 01LTR', '', '03-Sep-2015', 'No', '2015-09-03 02:14:10');
INSERT INTO `pro_model` VALUES(341, 'PRMD00341', 12, 'TTRSO 9S', '', '03-Sep-2015', 'No', '2015-09-03 02:38:42');
INSERT INTO `pro_model` VALUES(342, 'PRMD00342', 14, 'PRGM 83A', '', '28-Sep-2015', 'No', '2015-09-28 22:16:05');
INSERT INTO `pro_model` VALUES(343, 'PRMD00343', 14, 'PRGM MS-310', '', '28-Sep-2015', 'No', '2016-06-06 23:08:42');
INSERT INTO `pro_model` VALUES(344, 'PRMD00344', 14, 'PRGM 105', '', '28-Sep-2015', 'No', '2015-09-28 22:19:55');
INSERT INTO `pro_model` VALUES(345, 'PRMD00345', 16, 'IJSC041FC', '', '29-Sep-2015', 'No', '2015-09-29 20:57:42');
INSERT INTO `pro_model` VALUES(346, 'PRMD00346', 13, '15 INK CARTRIGE', '', '29-Sep-2015', 'No', '2015-09-29 21:00:10');
INSERT INTO `pro_model` VALUES(347, 'PRMD00347', 13, '121INK CARTRIGE', '', '29-Sep-2015', 'No', '2015-09-29 21:01:07');
INSERT INTO `pro_model` VALUES(348, 'PRMD00348', 13, 'LOCAL AX BOX', '', '29-Sep-2015', 'No', '2015-09-29 21:23:15');
INSERT INTO `pro_model` VALUES(349, 'PRMD00349', 13, 'R&G LARDE BOX', '', '29-Sep-2015', 'No', '2015-09-29 21:24:22');
INSERT INTO `pro_model` VALUES(350, 'PRMD00350', 13, 'R&G MEDIUM BOX', '', '29-Sep-2015', 'No', '2015-09-29 21:25:28');
INSERT INTO `pro_model` VALUES(351, 'PRMD00351', 13, '83A TONER', '', '29-Sep-2015', 'No', '2015-09-29 21:30:06');
INSERT INTO `pro_model` VALUES(352, 'PRMD00352', 13, 'M 355 DF TONER', '', '29-Sep-2015', 'No', '2015-09-29 21:30:30');
INSERT INTO `pro_model` VALUES(353, 'PRMD00353', 13, '93A TONER', '', '29-Sep-2015', 'No', '2015-09-29 21:30:46');
INSERT INTO `pro_model` VALUES(354, 'PRMD00354', 13, '90A TONER', '', '29-Sep-2015', 'No', '2015-09-29 21:31:44');
INSERT INTO `pro_model` VALUES(355, 'PRMD00355', 16, 'IJSCO41FC', '', '30-Sep-2015', 'No', '2015-09-30 21:05:30');
INSERT INTO `pro_model` VALUES(356, 'PRMD00356', 16, 'IJSCO40BK', '', '30-Sep-2015', 'No', '2015-09-30 21:16:21');
INSERT INTO `pro_model` VALUES(357, 'PRMD00357', 12, 'BIO42MA 01LTR', '', '05-Oct-2015', 'No', '2015-10-05 01:34:35');
INSERT INTO `pro_model` VALUES(358, 'PRMD00358', 17, '12A -001', '', '05-Oct-2015', 'No', '2015-10-05 20:48:20');
INSERT INTO `pro_model` VALUES(359, 'PRMD00359', 17, '10A-001', '', '05-Oct-2015', 'No', '2015-10-05 20:50:13');
INSERT INTO `pro_model` VALUES(360, 'PRMD00360', 17, '11A-001', '', '05-Oct-2015', 'No', '2015-10-05 20:51:18');
INSERT INTO `pro_model` VALUES(362, 'PRMD00361', 17, '15A-001', '', '05-Oct-2015', 'No', '2015-10-05 20:54:47');
INSERT INTO `pro_model` VALUES(363, 'PRMD00363', 17, '9K-001', '', '05-Oct-2015', 'No', '2015-10-05 20:55:57');
INSERT INTO `pro_model` VALUES(364, 'PRMD00364', 17, 'AX-001', '', '05-Oct-2015', 'No', '2015-10-05 20:57:21');
INSERT INTO `pro_model` VALUES(365, 'PRMD00365', 17, '49A-001', '', '05-Oct-2015', 'No', '2015-10-05 20:58:10');
INSERT INTO `pro_model` VALUES(366, 'PRMD00366', 17, '29X-001', '', '05-Oct-2015', 'No', '2015-10-05 20:59:39');
INSERT INTO `pro_model` VALUES(367, 'PRMD00367', 17, '35A-001', '', '05-Oct-2015', 'No', '2015-10-05 21:00:45');
INSERT INTO `pro_model` VALUES(368, 'PRMD00368', 19, '650-001', '', '05-Oct-2015', 'No', '2015-10-05 21:02:17');
INSERT INTO `pro_model` VALUES(369, 'PRMD00369', 19, '120-001', '', '05-Oct-2015', 'No', '2015-10-05 21:03:16');
INSERT INTO `pro_model` VALUES(371, 'PRMD00370', 19, '210-001', '', '05-Oct-2015', 'No', '2015-10-05 21:06:36');
INSERT INTO `pro_model` VALUES(372, 'PRMD00372', 19, '312-001', '', '05-Oct-2015', 'No', '2015-10-05 21:08:02');
INSERT INTO `pro_model` VALUES(373, 'PRMD00373', 19, '321-001', '', '05-Oct-2015', 'No', '2015-10-05 21:10:40');
INSERT INTO `pro_model` VALUES(374, 'PRMD00374', 19, '332-001', '', '05-Oct-2015', 'No', '2015-10-05 21:11:38');
INSERT INTO `pro_model` VALUES(375, 'PRMD00375', 17, 'PX-001', '', '05-Oct-2015', 'No', '2015-10-05 21:13:15');
INSERT INTO `pro_model` VALUES(376, 'PRMD00376', 17, 'EX-001', '', '05-Oct-2015', 'No', '2015-10-05 21:14:10');
INSERT INTO `pro_model` VALUES(377, 'PRMD00377', 17, '27A-001', '', '05-Oct-2015', 'No', '2015-10-05 21:15:16');
INSERT INTO `pro_model` VALUES(378, 'PRMD00378', 17, '05A-001', '', '05-Oct-2015', 'No', '2015-10-05 21:16:03');
INSERT INTO `pro_model` VALUES(379, 'PRMD00379', 22, '4521-001', '', '05-Oct-2015', 'No', '2015-10-05 21:16:52');
INSERT INTO `pro_model` VALUES(380, 'PRMD00380', 22, '108-001', '', '05-Oct-2015', 'No', '2015-10-05 21:17:31');
INSERT INTO `pro_model` VALUES(381, 'PRMD00381', 17, 'VX-001', '', '05-Oct-2015', 'No', '2015-10-05 21:18:41');
INSERT INTO `pro_model` VALUES(382, 'PRMD00382', 17, 'WX-001', '', '05-Oct-2015', 'No', '2015-10-05 21:19:26');
INSERT INTO `pro_model` VALUES(383, 'PRMD00383', 17, '4000-001', '', '05-Oct-2015', 'No', '2015-10-05 21:20:14');
INSERT INTO `pro_model` VALUES(384, 'PRMD00384', 17, '96A-001', '', '05-Oct-2015', 'No', '2015-10-05 21:22:18');
INSERT INTO `pro_model` VALUES(385, 'PRMD00385', 22, '2850-001', '', '05-Oct-2015', 'No', '2015-10-05 21:23:06');
INSERT INTO `pro_model` VALUES(386, 'PRMD00386', 22, '104 -001', '', '05-Oct-2015', 'No', '2015-10-05 21:24:01');
INSERT INTO `pro_model` VALUES(387, 'PRMD00387', 19, '4059-001', '', '05-Oct-2015', 'No', '2015-10-05 21:24:53');
INSERT INTO `pro_model` VALUES(388, 'PRMD00388', 19, '420-001', '', '05-Oct-2015', 'No', '2015-10-05 21:27:18');
INSERT INTO `pro_model` VALUES(389, 'PRMD00389', 17, '10-002', '', '05-Oct-2015', 'No', '2015-10-05 21:32:04');
INSERT INTO `pro_model` VALUES(390, 'PRMD00390', 17, '11A-005', '', '05-Oct-2015', 'No', '2015-10-05 21:33:25');
INSERT INTO `pro_model` VALUES(391, 'PRMD00391', 17, '12A-002', '', '05-Oct-2015', 'No', '2015-10-05 21:34:17');
INSERT INTO `pro_model` VALUES(392, 'PRMD00392', 17, '12A-003', '', '05-Oct-2015', 'No', '2015-10-05 21:35:16');
INSERT INTO `pro_model` VALUES(393, 'PRMD00393', 17, '12A-004', '', '05-Oct-2015', 'No', '2015-10-05 21:36:20');
INSERT INTO `pro_model` VALUES(394, 'PRMD00394', 17, '12A-014', '', '05-Oct-2015', 'No', '2015-10-05 21:37:31');
INSERT INTO `pro_model` VALUES(395, 'PRMD00395', 17, '15A-003', '', '05-Oct-2015', 'No', '2015-10-05 21:38:38');
INSERT INTO `pro_model` VALUES(396, 'PRMD00396', 17, '11A-010', '', '05-Oct-2015', 'No', '2015-10-05 21:40:29');
INSERT INTO `pro_model` VALUES(397, 'PRMD00397', 17, '16-001', '', '05-Oct-2015', 'No', '2015-10-05 21:43:50');
INSERT INTO `pro_model` VALUES(398, 'PRMD00398', 17, '9K-002', '', '05-Oct-2015', 'No', '2015-10-05 21:44:40');
INSERT INTO `pro_model` VALUES(399, 'PRMD00399', 17, '9K-003', '', '05-Oct-2015', 'No', '2015-10-05 21:45:35');
INSERT INTO `pro_model` VALUES(400, 'PRMD00400', 17, '9K-004', '', '05-Oct-2015', 'No', '2015-10-05 21:45:47');
INSERT INTO `pro_model` VALUES(401, 'PRMD00401', 17, '9K-005', '', '05-Oct-2015', 'No', '2015-10-05 21:46:08');
INSERT INTO `pro_model` VALUES(402, 'PRMD00402', 17, '9K -006', '', '05-Oct-2015', 'No', '2015-10-05 21:48:53');
INSERT INTO `pro_model` VALUES(403, 'PRMD00403', 17, '9K-007', '', '05-Oct-2015', 'No', '2015-10-05 21:49:54');
INSERT INTO `pro_model` VALUES(404, 'PRMD00404', 17, '9K-009', '', '05-Oct-2015', 'No', '2015-10-05 21:53:24');
INSERT INTO `pro_model` VALUES(405, 'PRMD00405', 17, '9K-011', '', '05-Oct-2015', 'No', '2015-10-05 21:55:57');
INSERT INTO `pro_model` VALUES(406, 'PRMD00406', 23, 'SAM 101 R&G TONER', '', '05-Oct-2015', 'No', '2015-10-05 22:17:18');
INSERT INTO `pro_model` VALUES(408, 'PRMD00407', 17, 'HP 9K-012', '', '14-Oct-2015', 'No', '2015-10-14 23:32:18');
INSERT INTO `pro_model` VALUES(409, 'PRMD00409', 17, '9K-024', '', '14-Oct-2015', 'No', '2015-10-14 23:36:20');
INSERT INTO `pro_model` VALUES(410, 'PRMD00410', 17, '9K -025', '', '14-Oct-2015', 'No', '2015-10-14 23:42:04');
INSERT INTO `pro_model` VALUES(411, 'PRMD00411', 17, '9K-026', '', '14-Oct-2015', 'No', '2015-10-14 23:43:14');
INSERT INTO `pro_model` VALUES(412, 'PRMD00412', 17, '9K-027', '', '14-Oct-2015', 'No', '2015-10-14 23:44:33');
INSERT INTO `pro_model` VALUES(413, 'PRMD00413', 17, 'AX-002', '', '14-Oct-2015', 'No', '2015-10-14 23:45:22');
INSERT INTO `pro_model` VALUES(414, 'PRMD00414', 17, 'AX-003', '', '14-Oct-2015', 'No', '2015-10-14 23:46:11');
INSERT INTO `pro_model` VALUES(415, 'PRMD00415', 17, 'AX-004', '', '14-Oct-2015', 'No', '2015-10-14 23:47:24');
INSERT INTO `pro_model` VALUES(416, 'PRMD00416', 17, 'AX-005', '', '14-Oct-2015', 'No', '2015-10-14 23:48:23');
INSERT INTO `pro_model` VALUES(417, 'PRMD00417', 17, 'AX-006', '', '14-Oct-2015', 'No', '2015-10-14 23:49:06');
INSERT INTO `pro_model` VALUES(418, 'PRMD00418', 17, 'AX-008', '', '14-Oct-2015', 'No', '2015-10-14 23:50:28');
INSERT INTO `pro_model` VALUES(419, 'PRMD00419', 17, 'AX-012', '', '14-Oct-2015', 'No', '2015-10-15 00:13:22');
INSERT INTO `pro_model` VALUES(420, 'PRMD00420', 17, 'AX-013', '', '15-Oct-2015', 'No', '2015-10-15 00:14:33');
INSERT INTO `pro_model` VALUES(421, 'PRMD00421', 17, '42A-001C', '', '15-Oct-2015', 'No', '2015-10-15 00:16:15');
INSERT INTO `pro_model` VALUES(422, 'PRMD00422', 17, '42A-002', '', '15-Oct-2015', 'No', '2015-10-15 00:17:27');
INSERT INTO `pro_model` VALUES(423, 'PRMD00423', 17, '42A-003', '', '15-Oct-2015', 'No', '2015-10-15 00:18:31');
INSERT INTO `pro_model` VALUES(424, 'PRMD00424', 17, '42A-004', '', '15-Oct-2015', 'No', '2015-10-15 00:18:40');
INSERT INTO `pro_model` VALUES(425, 'PRMD00425', 17, '42A-005', '', '15-Oct-2015', 'No', '2015-10-15 00:18:50');
INSERT INTO `pro_model` VALUES(426, 'PRMD00426', 17, '42A-007', '', '15-Oct-2015', 'No', '2015-10-15 00:21:34');
INSERT INTO `pro_model` VALUES(427, 'PRMD00427', 17, '42A-008', '', '15-Oct-2015', 'No', '2015-10-15 00:21:42');
INSERT INTO `pro_model` VALUES(428, 'PRMD00428', 17, '42A-011', '', '15-Oct-2015', 'No', '2015-10-15 00:21:56');
INSERT INTO `pro_model` VALUES(429, 'PRMD00429', 17, '49A-002', '', '15-Oct-2015', 'No', '2015-10-15 00:24:12');
INSERT INTO `pro_model` VALUES(430, 'PRMD00430', 17, '49A-003', '', '15-Oct-2015', 'No', '2015-10-15 00:24:21');
INSERT INTO `pro_model` VALUES(431, 'PRMD00431', 17, '49A-004', '', '15-Oct-2015', 'No', '2015-10-15 00:24:31');
INSERT INTO `pro_model` VALUES(432, 'PRMD00432', 17, '49A-005', '', '15-Oct-2015', 'No', '2015-10-15 00:24:43');
INSERT INTO `pro_model` VALUES(433, 'PRMD00433', 17, '49A-008', '', '15-Oct-2015', 'No', '2015-10-15 00:32:50');
INSERT INTO `pro_model` VALUES(434, 'PRMD00434', 17, '49A-009', '', '15-Oct-2015', 'No', '2015-10-15 00:33:00');
INSERT INTO `pro_model` VALUES(435, 'PRMD00435', 17, '49A-011', '', '15-Oct-2015', 'No', '2015-10-15 00:33:16');
INSERT INTO `pro_model` VALUES(436, 'PRMD00436', 17, '49A-013', '', '15-Oct-2015', 'No', '2015-10-15 00:33:32');
INSERT INTO `pro_model` VALUES(437, 'PRMD00437', 17, '49A-016', '', '15-Oct-2015', 'No', '2015-10-15 00:33:42');
INSERT INTO `pro_model` VALUES(438, 'PRMD00438', 17, 'MIX-01', '', '15-Oct-2015', 'No', '2015-10-15 00:50:37');
INSERT INTO `pro_model` VALUES(439, 'PRMD00439', 17, 'MIX-02', '', '15-Oct-2015', 'No', '2015-10-15 00:50:48');
INSERT INTO `pro_model` VALUES(440, 'PRMD00440', 17, 'MIX-03', '', '15-Oct-2015', 'No', '2015-10-15 00:50:55');
INSERT INTO `pro_model` VALUES(441, 'PRMD00441', 17, 'MIX-04', '', '15-Oct-2015', 'No', '2015-10-15 00:51:11');
INSERT INTO `pro_model` VALUES(442, 'PRMD00442', 17, 'MIX-05', '', '15-Oct-2015', 'No', '2015-10-15 00:51:19');
INSERT INTO `pro_model` VALUES(443, 'PRMD00443', 17, 'MIX-06', '', '15-Oct-2015', 'No', '2015-10-15 00:57:25');
INSERT INTO `pro_model` VALUES(444, 'PRMD00444', 17, 'MIX-07', '', '15-Oct-2015', 'No', '2015-10-15 00:57:39');
INSERT INTO `pro_model` VALUES(445, 'PRMD00445', 17, 'MIX-08', '', '15-Oct-2015', 'No', '2015-10-15 00:57:50');
INSERT INTO `pro_model` VALUES(446, 'PRMD00446', 17, 'MIX-10', '', '15-Oct-2015', 'No', '2015-10-15 00:58:04');
INSERT INTO `pro_model` VALUES(447, 'PRMD00447', 19, 'LEX MIX-01', '', '15-Oct-2015', 'No', '2015-10-15 01:16:12');
INSERT INTO `pro_model` VALUES(448, 'PRMD00448', 19, 'LEX MIX-02', '', '15-Oct-2015', 'No', '2015-10-15 22:22:56');
INSERT INTO `pro_model` VALUES(449, 'PRMD00449', 19, 'LEX-04', '', '15-Oct-2015', 'No', '2015-10-15 22:24:54');
INSERT INTO `pro_model` VALUES(450, 'PRMD00450', 19, 'LEX MIX-07', '', '15-Oct-2015', 'No', '2015-10-15 22:26:05');
INSERT INTO `pro_model` VALUES(451, 'PRMD00451', 19, 'LEX MIX-08', '', '15-Oct-2015', 'No', '2015-10-15 22:26:59');
INSERT INTO `pro_model` VALUES(452, 'PRMD00452', 19, 'LEX MIX-010', '', '15-Oct-2015', 'No', '2015-10-15 22:27:51');
INSERT INTO `pro_model` VALUES(453, 'PRMD00453', 19, 'LEX MIX-011', '', '15-Oct-2015', 'No', '2015-10-15 22:28:54');
INSERT INTO `pro_model` VALUES(454, 'PRMD00454', 19, 'LEX MIX-012', '', '15-Oct-2015', 'No', '2015-10-15 22:30:20');
INSERT INTO `pro_model` VALUES(455, 'PRMD00455', 19, 'LEX MIX-013', '', '15-Oct-2015', 'No', '2015-10-15 22:31:10');
INSERT INTO `pro_model` VALUES(456, 'PRMD00456', 19, 'LEX 420-001', '', '15-Oct-2015', 'No', '2015-10-15 22:32:08');
INSERT INTO `pro_model` VALUES(457, 'PRMD00457', 19, 'LEX 420-003', '', '15-Oct-2015', 'No', '2015-10-15 22:33:10');
INSERT INTO `pro_model` VALUES(458, 'PRMD00458', 19, 'LEX 420-007', '', '15-Oct-2015', 'No', '2015-10-15 22:34:45');
INSERT INTO `pro_model` VALUES(459, 'PRMD00459', 19, 'LEX 640-001', '', '15-Oct-2015', 'No', '2015-10-15 22:35:48');
INSERT INTO `pro_model` VALUES(460, 'PRMD00460', 19, 'LEX 640-002', '', '15-Oct-2015', 'No', '2015-10-15 22:36:44');
INSERT INTO `pro_model` VALUES(461, 'PRMD00461', 19, 'LEX 640-007', '', '15-Oct-2015', 'No', '2015-10-15 22:37:51');
INSERT INTO `pro_model` VALUES(462, 'PRMD00462', 17, 'HP 4515-001', '', '15-Oct-2015', 'No', '2015-10-15 22:38:47');
INSERT INTO `pro_model` VALUES(463, 'PRMD00463', 17, 'HP 4515-002', '', '15-Oct-2015', 'No', '2015-10-15 22:39:44');
INSERT INTO `pro_model` VALUES(464, 'PRMD00464', 17, 'HP 4515-004', '', '15-Oct-2015', 'No', '2015-10-15 22:40:57');
INSERT INTO `pro_model` VALUES(465, 'PRMD00465', 17, 'HP 4515-007', '', '15-Oct-2015', 'No', '2015-10-15 22:42:24');
INSERT INTO `pro_model` VALUES(466, 'PRMD00466', 17, 'HP 4515-009', '', '15-Oct-2015', 'No', '2015-10-15 22:44:39');
INSERT INTO `pro_model` VALUES(467, 'PRMD00467', 17, 'HP 4100-001', '', '15-Oct-2015', 'No', '2015-10-15 22:51:12');
INSERT INTO `pro_model` VALUES(468, 'PRMD00468', 17, 'HP 4100-003', '', '15-Oct-2015', 'No', '2015-10-15 22:53:22');
INSERT INTO `pro_model` VALUES(469, 'PRMD00469', 19, 'LEX 650-007', '', '15-Oct-2015', 'No', '2015-10-15 22:54:41');
INSERT INTO `pro_model` VALUES(470, 'PRMD00470', 22, 'SAM 1911-007', '', '15-Oct-2015', 'No', '2015-10-15 22:55:54');
INSERT INTO `pro_model` VALUES(471, 'PRMD00471', 17, 'HP 55A-007', '', '15-Oct-2015', 'No', '2015-10-15 22:56:59');
INSERT INTO `pro_model` VALUES(472, 'PRMD00472', 19, 'LEX 450-007', '', '16-Oct-2015', 'No', '2015-10-16 00:43:42');
INSERT INTO `pro_model` VALUES(473, 'PRMD00473', 19, 'LEX 430-007', '', '16-Oct-2015', 'No', '2015-10-16 00:45:07');
INSERT INTO `pro_model` VALUES(474, 'PRMD00474', 19, 'LEX 120-003', '', '16-Oct-2015', 'No', '2015-10-16 00:47:09');
INSERT INTO `pro_model` VALUES(475, 'PRMD00475', 19, 'LEX 120-006', '', '16-Oct-2015', 'No', '2015-10-16 00:48:43');
INSERT INTO `pro_model` VALUES(476, 'PRMD00476', 19, 'LEX 120-007', '', '16-Oct-2015', 'No', '2015-10-16 00:49:50');
INSERT INTO `pro_model` VALUES(477, 'PRMD00477', 19, 'LEX 210-003', '', '16-Oct-2015', 'No', '2015-10-16 00:51:22');
INSERT INTO `pro_model` VALUES(478, 'PRMD00478', 19, 'LEX 220-007', '', '16-Oct-2015', 'No', '2015-10-16 00:55:02');
INSERT INTO `pro_model` VALUES(479, 'PRMD00479', 19, 'LEX 250-007', '', '16-Oct-2015', 'No', '2015-10-16 01:00:14');
INSERT INTO `pro_model` VALUES(480, 'PRMD00480', 19, 'LEX 260-001', '', '16-Oct-2015', 'No', '2015-10-16 01:01:56');
INSERT INTO `pro_model` VALUES(481, 'PRMD00481', 19, 'LEX 260-007', '', '16-Oct-2015', 'No', '2015-10-16 01:03:34');
INSERT INTO `pro_model` VALUES(482, 'PRMD00482', 19, 'LEX 312-005', '', '16-Oct-2015', 'No', '2015-10-16 01:05:22');
INSERT INTO `pro_model` VALUES(483, 'PRMD00483', 19, 'LEX 312-007', '', '16-Oct-2015', 'No', '2015-10-16 01:06:23');
INSERT INTO `pro_model` VALUES(484, 'PRMD00484', 19, 'LEX 321-003', '', '16-Oct-2015', 'No', '2015-10-16 01:07:52');
INSERT INTO `pro_model` VALUES(485, 'PRMD00485', 19, 'LEX 321-007', '', '16-Oct-2015', 'No', '2015-10-16 01:08:45');
INSERT INTO `pro_model` VALUES(486, 'PRMD00486', 19, 'LEX 332-003', '', '16-Oct-2015', 'No', '2015-10-16 01:10:47');
INSERT INTO `pro_model` VALUES(487, 'PRMD00487', 19, 'LEX 332-007', '', '16-Oct-2015', 'No', '2015-10-16 01:12:52');
INSERT INTO `pro_model` VALUES(488, 'PRMD00488', 19, 'LEX 332-009', '', '16-Oct-2015', 'No', '2015-10-16 01:13:34');
INSERT INTO `pro_model` VALUES(489, 'PRMD00489', 17, 'HP PX-004', '', '19-Oct-2015', 'No', '2015-10-19 21:58:57');
INSERT INTO `pro_model` VALUES(490, 'PRMD00490', 17, 'HP EX-002', '', '19-Oct-2015', 'No', '2015-10-19 22:00:05');
INSERT INTO `pro_model` VALUES(491, 'PRMD00491', 17, 'HP EX-004', '', '19-Oct-2015', 'No', '2015-10-19 22:53:22');
INSERT INTO `pro_model` VALUES(492, 'PRMD00492', 17, 'HP EX-009', '', '19-Oct-2015', 'No', '2015-10-19 22:54:17');
INSERT INTO `pro_model` VALUES(493, 'PRMD00493', 17, 'HP EX-011', '', '19-Oct-2015', 'No', '2015-10-19 22:55:29');
INSERT INTO `pro_model` VALUES(494, 'PRMD00494', 19, 'LEX 264-007', '', '19-Oct-2015', 'No', '2015-10-19 22:58:08');
INSERT INTO `pro_model` VALUES(495, 'PRMD00495', 22, 'SAM 205-007', '', '19-Oct-2015', 'No', '2015-10-19 22:58:58');
INSERT INTO `pro_model` VALUES(496, 'PRMD00496', 17, 'HP 15A-005', '', '19-Oct-2015', 'No', '2015-10-19 23:00:31');
INSERT INTO `pro_model` VALUES(497, 'PRMD00497', 17, 'HP 15A-008', '', '19-Oct-2015', 'No', '2015-10-19 23:01:29');
INSERT INTO `pro_model` VALUES(498, 'PRMD00498', 17, 'HP 15A-008-1', '', '19-Oct-2015', 'No', '2015-10-19 23:01:42');
INSERT INTO `pro_model` VALUES(499, 'PRMD00499', 17, 'HP 15A-008-02', '', '19-Oct-2015', 'No', '2015-10-19 23:01:55');
INSERT INTO `pro_model` VALUES(500, 'PRMD00500', 17, 'HP 15A-009', '', '19-Oct-2015', 'No', '2015-10-19 23:05:01');
INSERT INTO `pro_model` VALUES(501, 'PRMD00501', 17, 'HP 15A-010', '', '19-Oct-2015', 'No', '2015-10-19 23:05:19');
INSERT INTO `pro_model` VALUES(502, 'PRMD00502', 17, 'HP 15A-012', '', '19-Oct-2015', 'No', '2015-10-19 23:05:37');
INSERT INTO `pro_model` VALUES(503, 'PRMD00503', 17, 'HP 15A-013', '', '19-Oct-2015', 'No', '2015-10-19 23:05:48');
INSERT INTO `pro_model` VALUES(504, 'PRMD00504', 17, 'HP 15A-016', '', '19-Oct-2015', 'No', '2015-10-19 23:10:56');
INSERT INTO `pro_model` VALUES(505, 'PRMD00505', 17, 'HP 2035-001', '', '19-Oct-2015', 'No', '2015-10-19 23:11:52');
INSERT INTO `pro_model` VALUES(506, 'PRMD00506', 17, 'HP 2035-007', '', '19-Oct-2015', 'No', '2015-10-19 23:12:06');
INSERT INTO `pro_model` VALUES(507, 'PRMD00507', 17, 'HP 3', '', '19-Oct-2015', 'No', '2015-10-19 23:12:14');
INSERT INTO `pro_model` VALUES(508, 'PRMD00508', 17, 'HP 2035-002', '', '19-Oct-2015', 'No', '2015-10-19 23:12:40');
INSERT INTO `pro_model` VALUES(509, 'PRMD00509', 17, 'HP 2035-003', '', '19-Oct-2015', 'No', '2015-10-19 23:12:50');
INSERT INTO `pro_model` VALUES(510, 'PRMD00510', 17, 'HP 2600-001', '', '19-Oct-2015', 'No', '2015-10-19 23:16:00');
INSERT INTO `pro_model` VALUES(511, 'PRMD00511', 17, 'HP 2600-02', '', '19-Oct-2015', 'No', '2015-10-19 23:16:13');
INSERT INTO `pro_model` VALUES(512, 'PRMD00512', 17, 'HP 2600-03', '', '19-Oct-2015', 'No', '2015-10-19 23:16:25');
INSERT INTO `pro_model` VALUES(513, 'PRMD00513', 17, 'HP 2600-05', '', '19-Oct-2015', 'No', '2015-10-19 23:16:46');
INSERT INTO `pro_model` VALUES(514, 'PRMD00514', 17, 'HP 2600-007', '', '22-Oct-2015', 'No', '2015-10-22 01:36:29');
INSERT INTO `pro_model` VALUES(515, 'PRMD00515', 17, 'HP 2600-022', '', '22-Oct-2015', 'No', '2015-10-22 01:40:46');
INSERT INTO `pro_model` VALUES(516, 'PRMD00516', 17, 'HP 2600-023', '', '22-Oct-2015', 'No', '2015-10-22 01:42:01');
INSERT INTO `pro_model` VALUES(517, 'PRMD00517', 17, 'HP 2600-013', '', '22-Oct-2015', 'No', '2015-10-22 01:42:47');
INSERT INTO `pro_model` VALUES(518, 'PRMD00518', 17, 'HP 29X-002', '', '22-Oct-2015', 'No', '2015-10-22 01:44:54');
INSERT INTO `pro_model` VALUES(519, 'PRMD00519', 17, 'HP 29X-003', '', '22-Oct-2015', 'No', '2015-10-22 01:45:07');
INSERT INTO `pro_model` VALUES(520, 'PRMD00520', 17, 'HP 29X-004', '', '22-Oct-2015', 'No', '2015-10-22 01:45:22');
INSERT INTO `pro_model` VALUES(521, 'PRMD00521', 17, 'HP 29X-005', '', '22-Oct-2015', 'No', '2015-10-22 01:46:41');
INSERT INTO `pro_model` VALUES(522, 'PRMD00522', 17, 'HP 29X-006', '', '22-Oct-2015', 'No', '2015-10-22 01:46:55');
INSERT INTO `pro_model` VALUES(523, 'PRMD00523', 17, 'HP 29X-009', '', '22-Oct-2015', 'No', '2015-10-22 01:47:08');
INSERT INTO `pro_model` VALUES(524, 'PRMD00524', 17, 'HP 29X-010', '', '22-Oct-2015', 'No', '2015-10-22 01:47:21');
INSERT INTO `pro_model` VALUES(525, 'PRMD00525', 17, 'HP 35A-002', '', '22-Oct-2015', 'No', '2015-10-22 01:53:41');
INSERT INTO `pro_model` VALUES(526, 'PRMD00526', 17, 'HP 35A-003', '', '22-Oct-2015', 'No', '2015-10-22 01:53:51');
INSERT INTO `pro_model` VALUES(527, 'PRMD00527', 17, 'HP 35A-004', '', '22-Oct-2015', 'No', '2015-10-22 01:53:59');
INSERT INTO `pro_model` VALUES(528, 'PRMD00528', 17, 'HP 35A-005', '', '22-Oct-2015', 'No', '2015-10-22 01:54:22');
INSERT INTO `pro_model` VALUES(529, 'PRMD00529', 17, 'HP 35A-006', '', '22-Oct-2015', 'No', '2015-10-22 01:54:34');
INSERT INTO `pro_model` VALUES(530, 'PRMD00530', 17, 'HP 35A-007', '', '22-Oct-2015', 'No', '2015-10-22 01:54:47');
INSERT INTO `pro_model` VALUES(531, 'PRMD00531', 17, 'HP 16A-007', '', '22-Oct-2015', 'No', '2015-10-22 01:59:04');
INSERT INTO `pro_model` VALUES(532, 'PRMD00532', 17, 'HP 16A-003', '', '22-Oct-2015', 'No', '2015-10-22 01:59:17');
INSERT INTO `pro_model` VALUES(533, 'PRMD00533', 17, 'HP 16A-004', '', '22-Oct-2015', 'No', '2015-10-22 01:59:27');
INSERT INTO `pro_model` VALUES(534, 'PRMD00534', 17, 'HP 16A-006', '', '22-Oct-2015', 'No', '2015-10-22 01:59:39');
INSERT INTO `pro_model` VALUES(535, 'PRMD00535', 17, '49A-017', '', '25-Oct-2015', 'No', '2015-10-25 22:54:01');
INSERT INTO `pro_model` VALUES(536, 'PRMD00536', 24, '49A-019', '', '25-Oct-2015', 'No', '2015-10-25 22:55:02');
INSERT INTO `pro_model` VALUES(537, 'PRMD00537', 17, 'VX-002', '', '25-Oct-2015', 'No', '2015-10-25 22:56:15');
INSERT INTO `pro_model` VALUES(538, 'PRMD00538', 17, 'VX-003', '', '25-Oct-2015', 'No', '2015-10-25 22:57:16');
INSERT INTO `pro_model` VALUES(539, 'PRMD00539', 17, 'VX-004', '', '25-Oct-2015', 'No', '2015-10-25 22:57:25');
INSERT INTO `pro_model` VALUES(540, 'PRMD00540', 17, 'VX-005', '', '25-Oct-2015', 'No', '2015-10-25 22:57:34');
INSERT INTO `pro_model` VALUES(541, 'PRMD00541', 17, 'WX-002', '', '25-Oct-2015', 'No', '2015-10-25 23:02:00');
INSERT INTO `pro_model` VALUES(542, 'PRMD00542', 17, 'WX-003', '', '25-Oct-2015', 'No', '2015-10-25 23:02:34');
INSERT INTO `pro_model` VALUES(543, 'PRMD00543', 17, 'WX-005', '', '25-Oct-2015', 'No', '2015-10-25 23:02:43');
INSERT INTO `pro_model` VALUES(544, 'PRMD00544', 17, 'WX-008', '', '25-Oct-2015', 'No', '2015-10-25 23:02:55');
INSERT INTO `pro_model` VALUES(545, 'PRMD00545', 17, '400-002', '', '25-Oct-2015', 'No', '2015-10-25 23:06:35');
INSERT INTO `pro_model` VALUES(546, 'PRMD00546', 17, '4000-003', '', '25-Oct-2015', 'No', '2015-10-25 23:06:47');
INSERT INTO `pro_model` VALUES(547, 'PRMD00547', 17, '4000-04', '', '25-Oct-2015', 'No', '2015-10-25 23:07:09');
INSERT INTO `pro_model` VALUES(548, 'PRMD00548', 17, '4000-012', '', '25-Oct-2015', 'No', '2015-10-25 23:07:25');
INSERT INTO `pro_model` VALUES(549, 'PRMD00549', 17, 'HP 96A-002', '', '25-Oct-2015', 'No', '2015-10-25 23:09:34');
INSERT INTO `pro_model` VALUES(550, 'PRMD00550', 17, 'HP 96A-003', '', '25-Oct-2015', 'No', '2015-10-25 23:09:48');
INSERT INTO `pro_model` VALUES(551, 'PRMD00551', 17, 'HP 96A-004', '', '25-Oct-2015', 'No', '2015-10-25 23:10:16');
INSERT INTO `pro_model` VALUES(552, 'PRMD00552', 17, '96A-006', '', '25-Oct-2015', 'No', '2015-10-25 23:10:30');
INSERT INTO `pro_model` VALUES(553, 'PRMD00553', 17, 'ML 2850-007', '', '25-Oct-2015', 'No', '2015-10-25 23:15:52');
INSERT INTO `pro_model` VALUES(554, 'PRMD00554', 22, 'ML 2850-003', '', '25-Oct-2015', 'No', '2015-10-25 23:16:55');
INSERT INTO `pro_model` VALUES(555, 'PRMD00555', 22, 'ML 2850-006', '', '25-Oct-2015', 'No', '2015-10-25 23:18:05');
INSERT INTO `pro_model` VALUES(556, 'PRMD00556', 22, 'ML 1666-007 (104)', '', '25-Oct-2015', 'No', '2015-10-25 23:20:35');
INSERT INTO `pro_model` VALUES(557, 'PRMD00557', 19, 'LEX 4059-001', '', '25-Oct-2015', 'No', '2015-10-25 23:21:27');
INSERT INTO `pro_model` VALUES(558, 'PRMD00558', 19, 'LEX 4059-003', '', '25-Oct-2015', 'No', '2015-10-25 23:21:41');
INSERT INTO `pro_model` VALUES(559, 'PRMD00559', 19, 'LEX 4059-012', '', '25-Oct-2015', 'No', '2015-10-25 23:22:06');
INSERT INTO `pro_model` VALUES(560, 'PRMD00560', 19, 'LEX 4059-008', '', '25-Oct-2015', 'No', '2015-10-25 23:22:17');
INSERT INTO `pro_model` VALUES(561, 'PRMD00561', 17, '12A-001', '', '27-Oct-2015', 'No', '2015-10-27 22:44:11');
INSERT INTO `pro_model` VALUES(562, 'PRMD00562', 17, '27X-001', '', '27-Oct-2015', 'No', '2015-10-27 22:49:54');
INSERT INTO `pro_model` VALUES(563, 'PRMD00563', 22, 'SAM 205-001', '', '27-Oct-2015', 'No', '2015-10-27 22:50:09');
INSERT INTO `pro_model` VALUES(564, 'PRMD00564', 17, '15A-002', '', '28-Oct-2015', 'No', '2015-10-28 21:28:55');
INSERT INTO `pro_model` VALUES(565, 'PRMD00565', 17, '15A-005', '', '28-Oct-2015', 'No', '2015-10-28 21:29:10');
INSERT INTO `pro_model` VALUES(566, 'PRMD00566', 19, 'LEX 230/250/330-001', '', '29-Oct-2015', 'No', '2015-10-29 00:21:23');
INSERT INTO `pro_model` VALUES(567, 'PRMD00567', 19, 'LEX230-003', '', '29-Oct-2015', 'No', '2015-10-29 00:21:41');
INSERT INTO `pro_model` VALUES(568, 'PRMD00568', 19, 'LEX230-007', '', '29-Oct-2015', 'No', '2015-10-29 00:22:01');
INSERT INTO `pro_model` VALUES(569, 'PRMD00569', 19, 'LEX230-009', '', '29-Oct-2015', 'No', '2015-10-29 00:22:13');
INSERT INTO `pro_model` VALUES(570, 'PRMD00570', 25, 'R& BOX INPORT', '', '07-Nov-2015', 'No', '2015-11-07 00:00:46');
INSERT INTO `pro_model` VALUES(571, 'PRMD00571', 17, '26 A TONER', '', '02-Jun-2016', 'No', '2016-06-02 22:49:32');
INSERT INTO `pro_model` VALUES(572, 'PRMD00572', 17, 'HP 26 A', '', '02-Jun-2016', 'No', '2016-06-02 23:04:19');
INSERT INTO `pro_model` VALUES(573, 'PRMD00573', 17, 'HP 93 A', '', '02-Jun-2016', 'No', '2016-06-02 23:20:16');
INSERT INTO `pro_model` VALUES(574, 'PRMD00574', 17, 'HP 90 A', '', '02-Jun-2016', 'No', '2016-06-02 23:38:26');
INSERT INTO `pro_model` VALUES(575, 'PRMD00575', 28, 'E-STUDIO 166', '', '03-Jun-2016', 'No', '2016-06-03 01:32:03');
INSERT INTO `pro_model` VALUES(576, 'PRMD00576', 29, '355 DF', '', '03-Jun-2016', 'No', '2016-06-03 02:14:21');
INSERT INTO `pro_model` VALUES(577, 'PRMD00577', 17, 'HP P1005', 'HP P1005', '03-Jun-2016', 'No', '2016-06-03 02:22:08');
INSERT INTO `pro_model` VALUES(579, 'PRMD00578', 32, 'HP LASER P1005', '', '03-Jun-2016', 'No', '2016-06-03 03:23:18');
INSERT INTO `pro_model` VALUES(580, 'PRMD00580', 17, 'HP 1005', '', '03-Jun-2016', 'No', '2016-06-03 03:37:52');
INSERT INTO `pro_model` VALUES(581, 'PRMD00581', 19, '230/330/650', '', '05-Jun-2016', 'No', '2016-06-05 20:31:14');
INSERT INTO `pro_model` VALUES(582, 'PRMD00582', 19, '230 330 650', '', '05-Jun-2016', 'No', '2016-06-05 20:34:09');
INSERT INTO `pro_model` VALUES(583, 'PRMD00583', 12, 'N 653 BK', 'LQ 310', '05-Jun-2016', 'No', '2016-06-05 21:15:00');
INSERT INTO `pro_model` VALUES(584, 'PRMD00584', 14, 'PRGM 26 A', '', '06-Jun-2016', 'No', '2016-06-06 00:53:13');
INSERT INTO `pro_model` VALUES(585, 'PRMD00585', 35, 'IO4 SAMSUNG', '', '06-Jun-2016', 'No', '2016-06-06 01:14:48');
INSERT INTO `pro_model` VALUES(586, 'PRMD00586', 17, 'HP 90 A TONER CHIP', '', '06-Jun-2016', 'No', '2016-06-06 01:36:01');
INSERT INTO `pro_model` VALUES(587, 'PRMD00587', 17, '7570', '', '06-Jun-2016', 'No', '2016-06-06 20:40:53');
INSERT INTO `pro_model` VALUES(588, 'PRMD00588', 17, 'X264', '', '06-Jun-2016', 'No', '2016-06-06 21:17:35');
INSERT INTO `pro_model` VALUES(589, 'PRMD00589', 17, '2850', '', '06-Jun-2016', 'No', '2016-06-06 21:22:59');
INSERT INTO `pro_model` VALUES(590, 'PRMD00590', 17, '36 A', '', '06-Jun-2016', 'No', '2016-06-06 21:26:42');
INSERT INTO `pro_model` VALUES(591, 'PRMD00591', 14, 'PRGM 13A', '', '06-Jun-2016', 'No', '2016-06-06 22:56:55');
INSERT INTO `pro_model` VALUES(592, 'PRMD00592', 14, 'PRGM 90 A', '', '07-Jun-2016', 'No', '2016-06-07 01:13:47');
INSERT INTO `pro_model` VALUES(593, 'PRMD00593', 14, 'PRGM 93 A', '', '07-Jun-2016', 'No', '2016-06-07 01:14:09');
INSERT INTO `pro_model` VALUES(594, 'PRMD00594', 14, 'PRGM E-260 DRUM UNIT', '', '07-Jun-2016', 'No', '2016-06-07 01:14:47');
INSERT INTO `pro_model` VALUES(595, 'PRMD00595', 14, 'PRGM EP-26', '', '07-Jun-2016', 'No', '2016-06-07 01:15:31');
INSERT INTO `pro_model` VALUES(596, 'PRMD00596', 14, 'PRGM M-355 DF', '', '07-Jun-2016', 'No', '2016-06-07 01:15:50');
INSERT INTO `pro_model` VALUES(597, 'PRMD00597', 14, 'PRGM 36 A', '', '07-Jun-2016', 'No', '2016-06-07 01:16:10');
INSERT INTO `pro_model` VALUES(598, 'PRMD00598', 17, 'HP 505 XL', '', '07-Jun-2016', 'No', '2016-06-07 02:28:14');
INSERT INTO `pro_model` VALUES(599, 'PRMD00599', 17, 'HP 505XL', '', '07-Jun-2016', 'No', '2016-06-07 02:16:25');
INSERT INTO `pro_model` VALUES(600, 'PRMD00600', 36, 'R & G BOXES', '', '07-Jun-2016', 'No', '2016-06-07 02:38:34');
INSERT INTO `pro_model` VALUES(601, 'PRMD00601', 17, '12 A', '', '08-Jun-2016', 'No', '2016-06-08 01:12:30');
INSERT INTO `pro_model` VALUES(602, 'PRMD00602', 18, 'CANON 5L/6L', '', '08-Jun-2016', 'No', '2016-06-08 01:42:48');
INSERT INTO `pro_model` VALUES(603, 'PRMD00603', 38, 'POPULAR', '', '09-Jun-2016', 'No', '2016-06-09 01:37:25');
INSERT INTO `pro_model` VALUES(604, 'PRMD00604', 39, '102', '', '20-Jun-2016', 'No', '2016-06-20 22:07:40');
INSERT INTO `pro_model` VALUES(605, 'PRMD00605', 17, '12 A DRUM', '', '20-Jun-2016', 'No', '2016-06-20 22:33:17');
INSERT INTO `pro_model` VALUES(606, 'PRMD00606', 17, '12 TONER', '', '20-Jun-2016', 'No', '2016-06-20 23:00:33');
INSERT INTO `pro_model` VALUES(607, 'PRMD00607', 17, 'COMBO 61', '', '12-Jul-2016', 'No', '2016-07-12 22:05:36');
INSERT INTO `pro_model` VALUES(608, 'PRMD00608', 40, 'HAND WASH 4 LTR CANE', '', '12-Jul-2016', 'No', '2016-07-12 22:14:41');
INSERT INTO `pro_model` VALUES(610, 'PRMD00609', 41, 'A4 80 GSM', '', '12-Jul-2016', 'No', '2016-07-12 22:29:11');
INSERT INTO `pro_model` VALUES(611, 'PRMD00611', 42, '1KG', '', '12-Jul-2016', 'No', '2016-07-12 23:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `pro_type`
--

CREATE TABLE `pro_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(255) NOT NULL DEFAULT '0',
  `pro_type` varchar(255) NOT NULL DEFAULT '0',
  `pro_type_des` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `update` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=88 ;

--
-- Dumping data for table `pro_type`
--

INSERT INTO `pro_type` VALUES(5, 'PRTY002', 'INK', '', '24-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(6, 'PRTY003', 'INK CARTRIDGE', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(7, 'PRTY004', 'PRGM', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(10, 'PRTY008', 'RIBBON', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(11, 'PRTY0011', 'REFILL KIT', '', '25-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(12, 'PRTY0012', 'TONER', '', '26-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(13, 'PRTY0013', 'PHOTOCOPY PAPER', '', '28-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(14, 'PRTY0014', 'POWDER', '', '28-Aug-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(15, 'PRTY0015', 'FAX ROLL', '', '03-Sep-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(16, 'PRTY0016', 'LOCAL AX BOX', '', '29-Sep-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(17, 'PRTY0017', 'R&G LARGE BOX', '', '29-Sep-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(18, 'PRTY0018', 'R&G MEDIUM BOX', '', '29-Sep-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(19, 'PRTY0019', 'DRUM', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(20, 'PRTY0020', 'DOCTOR BLADE', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(21, 'PRTY0021', 'WIPER BLADE', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(22, 'PRTY0022', 'MAG ROLLER', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(23, 'PRTY0023', 'MAG CONTACT', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(24, 'PRTY0024', 'CHIP', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(25, 'PRTY0025', 'SEAL', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(26, 'PRTY0026', 'M/ ROL SEALING BLADE', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(27, 'PRTY0027', 'PCR', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(29, 'PRTY0028', 'RECOVER BLADE', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(30, 'PRTY0030', 'MAG SLEAVE', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(31, 'PRTY0031', 'AIR CAP ROLLER', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(32, 'PRTY0032', 'END FELT', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(33, 'PRTY0033', 'MAGNENT TAB', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(34, 'PRTY0034', 'CARTRIDGE CLIP', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(36, 'PRTY0035', 'SEAL CLIP', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(37, 'PRTY0037', 'WIPER TAB', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(38, 'PRTY0038', 'MAG ROLLER BUSH', '', '05-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(39, 'PRTY0039', 'MAGNET TAB', '', '14-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(40, 'PRTY0040', 'END FOAM', '', '14-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(41, 'PRTY0041', 'SEAL FOAM', '', '14-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(42, 'PRTY0042', 'LONG BUSH', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(43, 'PRTY0043', 'SHORT BUSH', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(44, 'PRTY0044', 'HOPPER', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(45, 'PRTY0045', 'MAG ROLLER CLEANER', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(46, 'PRTY0046', 'WIPER BLAD LUBRICANT', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(47, 'PRTY0047', 'MAG CONTACT GREAS', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(48, 'PRTY0048', 'DRUM SHUTTER FELT', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(49, 'PRTY0049', 'DRUM POWDER', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(50, 'PRTY0050', 'COTING COTTON', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(51, 'PRTY0051', 'FOAM SWAB', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(52, 'PRTY0052', 'TES TONER POUR SPOUT', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(53, 'PRTY0053', 'DEVELOPER S/BLADE', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(54, 'PRTY0054', 'DRUM RETIN RIN', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(55, 'PRTY0055', 'D/BAR PUT', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(56, 'PRTY0056', 'DOCTOR BAR', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(57, 'PRTY0057', 'SHIPPING LOCK', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(58, 'PRTY0058', 'DEVELOPER WASHER', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(59, 'PRTY0059', 'S/ LOCK', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(60, 'PRTY0060', 'YIELD WHEEL', '', '15-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(61, 'PRTY0061', 'LOCK RAIL', '', '19-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(62, 'PRTY0062', 'MAG ROLL BLADE', '', '19-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(63, 'PRTY0063', 'MAG ROLL FOAM', '', '19-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(64, 'PRTY0064', 'FREE CLEAN', '', '22-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(65, 'PRTY0065', 'TONE CL', '', '22-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(66, 'PRTY0066', 'POLY REC BLADE', '', '22-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(67, 'PRTY0067', 'EXIT PORT FUSER', '', '25-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(68, 'PRTY0068', 'HET TOOL', '', '25-Oct-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(69, 'PRTY0069', 'R&G BOX INPORT', '', '07-Nov-2015', 'No', '0');
INSERT INTO `pro_type` VALUES(70, 'PRTY0070', 'PHOTO COPY', '', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(71, 'PRTY0071', 'PHOTO COPY TONER', 'PHOTO COPY TONER', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(72, 'PRTY0072', 'HP', 'HP', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(74, 'PRTY0073', 'HP LASERJET', 'HP ', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(75, 'PRTY0075', 'PRITER', '', '03-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(76, 'PRTY0076', 'TONER POWDER', 'TONER POWDER ', '05-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(77, 'PRTY0077', 'TONER P/C', '', '05-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(78, 'PRTY0078', 'TONER PARTS', '', '06-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(79, 'PRTY0079', 'TONER CHIP', '', '06-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(80, 'PRTY0080', 'BOXES', '', '07-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(81, 'PRTY0081', 'STATIONERIES', 'POPULAR STATIONERY', '09-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(82, 'PRTY0082', 'PHONE', '', '20-Jun-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(84, 'PRTY0083', 'INK CARTRIGE', '', '12-Jul-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(85, 'PRTY0085', 'HAND WASH', '', '12-Jul-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(86, 'PRTY0086', 'A4 PEPAR', '', '12-Jul-2016', 'No', '0');
INSERT INTO `pro_type` VALUES(87, 'PRTY0087', 'NEST TEA', '', '12-Jul-2016', 'No', '0');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_order_id` varchar(50) NOT NULL DEFAULT '0',
  `has_serial` varchar(50) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `qty` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `purchase_item`
--

INSERT INTO `purchase_item` VALUES(1, 'PRCH0001', 'No', 94, '53', '2016-09-27 20:55:48');
INSERT INTO `purchase_item` VALUES(2, 'PRCH0002', 'No', 173, '301', '2016-09-27 23:48:57');
INSERT INTO `purchase_item` VALUES(3, 'PRCH0003', 'No', 23, '10', '2016-09-29 00:04:02');
INSERT INTO `purchase_item` VALUES(4, 'PRCH0003', 'No', 22, '05', '2016-09-29 00:04:02');
INSERT INTO `purchase_item` VALUES(5, 'PRCH0003', 'No', 21, '03', '2016-09-29 00:04:02');
INSERT INTO `purchase_item` VALUES(6, 'PRCH0003', 'No', 20, '06', '2016-09-29 00:04:02');
INSERT INTO `purchase_item` VALUES(7, 'PRCH0004', 'No', 28, '05', '2016-09-29 00:04:51');
INSERT INTO `purchase_item` VALUES(8, 'PRCH0004', 'No', 29, '03', '2016-09-29 00:04:51');
INSERT INTO `purchase_item` VALUES(9, 'PRCH0004', 'No', 30, '01', '2016-09-29 00:04:51');
INSERT INTO `purchase_item` VALUES(10, 'PRCH0004', 'No', 31, '06', '2016-09-29 00:04:51');
INSERT INTO `purchase_item` VALUES(11, 'PRCH0004', 'No', 32, '07', '2016-09-29 00:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_serial`
--

CREATE TABLE `purchase_item_serial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(50) NOT NULL DEFAULT '0',
  `p_item_id` varchar(50) NOT NULL DEFAULT '0',
  `key` varchar(255) NOT NULL DEFAULT '0',
  `damage` varchar(50) DEFAULT '0',
  `return` varchar(50) DEFAULT '0',
  `sold` varchar(50) DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `purchase_item_serial`
--


-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `p_code` varchar(50) NOT NULL DEFAULT '0',
  `p_date` varchar(50) NOT NULL DEFAULT '0',
  `supp_id` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` VALUES(1, 'PRCH0001', '001', '2016-04-16', '65', '27-Sep-2016', 'No', '2016-09-27 20:55:48');
INSERT INTO `purchase_order` VALUES(2, 'PRCH0002', '4521', '2016-04-29', '65', '27-Sep-2016', 'No', '2016-09-27 23:48:57');
INSERT INTO `purchase_order` VALUES(3, 'PRCH0003', '01254', '2016-09-29', '67', '29-Sep-2016', 'No', '2016-09-29 00:04:02');
INSERT INTO `purchase_order` VALUES(4, 'PRCH0004', '45687', '2016-09-29', '8', '29-Sep-2016', 'No', '2016-09-29 00:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `return_item`
--

CREATE TABLE `return_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `re_code` varchar(50) NOT NULL DEFAULT '0',
  `re_date` varchar(50) NOT NULL DEFAULT '0',
  `re_per_name` varchar(50) NOT NULL DEFAULT '0',
  `return_note` text NOT NULL,
  `date` varchar(50) NOT NULL DEFAULT '0',
  `in_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `return_item`
--

INSERT INTO `return_item` VALUES(1, 'ITRT0001', '45698', '2016-09-28', 'kkkk', 'FOR DAMAGE FUSER FILM', '28-Sep-2016', 'INVC004', 'No', '2016-09-28 01:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `return_item_details`
--

CREATE TABLE `return_item_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_sysid` varchar(50) NOT NULL DEFAULT '0',
  `invoice_id` varchar(50) NOT NULL DEFAULT '0',
  `item_id` varchar(50) NOT NULL DEFAULT '0',
  `rtn_qty` int(11) NOT NULL DEFAULT '0',
  `dmg_qty` int(11) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `return_item_details`
--

INSERT INTO `return_item_details` VALUES(1, 'ITRT0001', 'INVC004', '94', 1, 1, '2016-09-28 01:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` varchar(50) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `cus_code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `company` varchar(50) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '0',
  `tele` varchar(50) NOT NULL DEFAULT '0',
  `mobile` varchar(50) NOT NULL DEFAULT '0',
  `fax` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sysid` (`sysid`),
  UNIQUE KEY `cus_code` (`cus_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES(8, 'CUS0001', 'Supplier', 'SUP001', 'FULLMARK', 'FULLMARK', '', '', '', '', '', '24-Aug-2015', 'No', '2015-08-24 23:33:44');
INSERT INTO `user` VALUES(9, 'CUS0002', 'Supplier', 'SUP002', 'R&G', 'R&G', '', '', '', '', '', '25-Aug-2015', 'No', '2015-08-25 02:28:53');
INSERT INTO `user` VALUES(11, 'CUS00010', 'Customer', 'CUS -001', 'ASITHA UMAYANGA', 'UNIITEC COMPUTER SERVICES', 'NO 17,NEW SHOPPING COMPLEX AVISSAWELLA ', '', '0777600210', '', '', '03-Sep-2015', 'No', '2015-09-03 03:23:17');
INSERT INTO `user` VALUES(12, 'CUS00012', 'Customer', 'CUS 002', 'MR. ROBIN', 'CEYLON BUSINESS APPLLANCES', 'NO.112 REID AVENUE COLOMBO-04', '0112589909', '', '', '', '03-Sep-2015', 'No', '2015-09-03 03:41:14');
INSERT INTO `user` VALUES(13, 'CUS00013', 'Customer', 'CUS00013', 'ATHULA', 'ATHULA GRAPHICS', 'NO.51/2 KATHUWANA RODA \r\nHOMAGAMA ', '', '0714911917', '', '', '06-Sep-2015', 'No', '2015-09-06 21:13:45');
INSERT INTO `user` VALUES(14, 'CUS00014', 'Customer', 'CUS00014', 'ASHAN', 'OFFICEPIUS', 'NO.115C DUTUGEMUNU STREET KOHUWALA ', '', '0772642836', '', '', '06-Sep-2015', 'No', '2015-09-06 21:19:30');
INSERT INTO `user` VALUES(15, 'CUS00015', 'Customer', 'CUS00015', 'MR.S.RAVI', 'ONARA LANKA SYSTEM', 'NO.160 K.B CRISTY PERERA MAWATHHA COLOMBO 03', '', '0771632539', '', '', '06-Sep-2015', 'No', '2015-09-06 22:54:26');
INSERT INTO `user` VALUES(16, 'CUS00016', 'Customer', 'CUS00017', 'CHANAKA', 'CD MARKETING SYSTEM', 'NO.49A BALAPOKAUNA ROAD\r\n COLOMBO-06', '0112810348', '', '', '', '09-Sep-2015', 'No', '2015-09-09 01:37:05');
INSERT INTO `user` VALUES(17, 'CUS00017', 'Customer', 'CUS00019', 'R&G CAPITAL', 'R&G CAPITAL', 'NO 10/02 FIRST LINE PALIYAWATTA WATTALA ', '0114717101', '', '', '', '28-Sep-2015', 'No', '2015-09-28 21:36:32');
INSERT INTO `user` VALUES(18, 'CUS00018', 'Customer', 'CUS 00020', 'MUDITHA', 'R&G CAPITAL', '', '', '', '', '', '28-Sep-2015', 'No', '2015-09-28 21:42:06');
INSERT INTO `user` VALUES(19, 'CUS00019', 'Customer', 'CUS00021', 'KANDY C/SHOPPE', 'KANDY C/SHOPPE', '', '', '', '', '', '28-Sep-2015', 'No', '2015-09-28 21:57:18');
INSERT INTO `user` VALUES(20, 'CUS00020', 'Customer', 'CUS00022', 'JAYANTHI FERNANDO', 'RADHAN&COMBINE', 'NO-190/4 HILL STREET DEHIWELLA ', '', '0772037871', '', '', '28-Sep-2015', 'No', '2015-09-28 22:03:46');
INSERT INTO `user` VALUES(21, 'CUS00021', 'Customer', 'CUS00023', 'MR.MENAKA', 'QUICK SOFT SYSTEM', 'NO.135/3 BANBARANDEGEWATTA \r\nKITHULAMPITIYA ULUWET', '', '0755028272', '', '', '28-Sep-2015', 'No', '2015-09-28 22:09:23');
INSERT INTO `user` VALUES(22, 'CUS00022', 'Customer', 'CUS00024', 'MR.SAMAN', 'GALLE BOOK SHOP', 'NO.91 ANURUWATOTA HORANA ', '', '077212025', '', '', '28-Sep-2015', 'No', '2015-09-28 23:01:38');
INSERT INTO `user` VALUES(23, 'CUS00023', 'Customer', 'CUS0024', 'MR.NUWAN', 'KIDS LAND', 'NO.159 CASITIS STREET  CO-01 ', '', '0773178813', '', '', '28-Sep-2015', 'No', '2015-09-28 23:52:04');
INSERT INTO `user` VALUES(24, 'CUS00024', 'Customer', 'CUS0025', 'MR.S.SATHIS', 'FALCON DIGITAL', 'NO.B28 COMMERCIAL CENTER \r\nBANDARAWELLA ', '', '0773854920', '', '', '29-Sep-2015', 'No', '2015-09-29 01:27:57');
INSERT INTO `user` VALUES(25, 'CUS00025', 'Customer', 'CUS0028', 'MAHIMA', 'NATIONAL BOOK SHOP', 'NO.111 STANLY THILAKARATHNE MAWATHA \r\nNUGEGODA ', '0112856307', '', '', '', '29-Sep-2015', 'No', '2015-09-29 02:13:29');
INSERT INTO `user` VALUES(26, 'CUS00026', 'Customer', 'CUS0029', 'RAHAM', 'PC SYSTEM', 'NO,319C RATHNAPURA ROAD \r\nBALANGODA ', '', '', '', '', '29-Sep-2015', 'No', '2015-09-29 02:20:00');
INSERT INTO `user` VALUES(28, 'CUS00027', 'Customer', 'CUS0032', 'ROHITHA', 'SEBIRO TECHNOLOGIES', 'NO.60/1 COLOMBO ROAD RATHTHAPURA ', '', '0773440090', '', '', '29-Sep-2015', 'No', '2015-09-29 02:31:33');
INSERT INTO `user` VALUES(29, 'CUS00029', 'Customer', 'cus0030', 'MR.MAHESWERAN', 'UNIK CREATIONS (PVT)LTD', 'NO.402D 4TH FLOOR MC ', '0114512063', '', '', '', '29-Sep-2015', 'No', '2015-09-29 20:30:31');
INSERT INTO `user` VALUES(30, 'CUS00030', 'Customer', 'CUS0031', 'MR. LEROSHON', 'MCCOY PROCESSING SYSTEM', 'NO.40 ST THOMAS ROAD MATARA ', '0412227743', '', '', '', '29-Sep-2015', 'No', '2015-09-29 20:39:29');
INSERT INTO `user` VALUES(31, 'CUS00031', 'Customer', 'CUS0034', 'PRASNNA', 'HI Q TRADING', 'NO. 353 COLOMBO ROAD \r\nNEGOMBO ', '', '', '', '', '30-Sep-2015', 'No', '2015-09-30 02:03:09');
INSERT INTO `user` VALUES(32, 'CUS00032', 'Customer', 'CUS0036', 'MAHESHWERAN', 'UNIK CREATION', 'UNIT 402D 4TH FLOOR MC ', '0114512063', '', '', '', '30-Sep-2015', 'No', '2015-09-30 21:18:38');
INSERT INTO `user` VALUES(33, 'CUS00033', 'Customer', 'CUS0038', 'MR.HEGODA', 'MR.HEGODA', 'NO.44/11 SOLOMAN AVENUE PAMANKADA ROAD \r\nCOLOMBO-0', '', '0773022811', '', '', '01-Oct-2015', 'No', '2015-10-01 20:59:28');
INSERT INTO `user` VALUES(34, 'CUS00034', 'Customer', 'CUS0045', 'MR.CHALES', 'CHANS COMPUTER SYSTEM', 'NO.185/1 AGALA WATTA ROAD MATHUGAMA ', '0342247402', '', '', '', '04-Oct-2015', 'No', '2015-10-04 21:22:49');
INSERT INTO `user` VALUES(35, 'CUS00035', 'Customer', 'CUS0046', 'ASIRI', 'ASIRI PRINT SERVICE', 'NO.65 NEW BUS STAND \r\nRATHNAPURRA ', '', '0715593522', '', '', '04-Oct-2015', 'No', '2015-10-04 21:24:49');
INSERT INTO `user` VALUES(36, 'CUS00036', 'Customer', 'CUS 0045', 'MR.ISHAN DILANKA', 'EDGEWARE TRADING', 'NO.542/11 MADA PARA WELEGODA MATARA ', '', '0725993300', '', '', '05-Oct-2015', 'No', '2015-10-05 01:28:43');
INSERT INTO `user` VALUES(37, 'CUS00037', 'Customer', 'CUS0050', 'MR. VEERABAHU', 'SUNRO MARKETING', 'NO.7-2/1 1ST CROSS STREET SUNSHIN PLAZA \r\nCOLOMBO ', '0112432257', '', '', '', '05-Oct-2015', 'No', '2015-10-05 22:11:42');
INSERT INTO `user` VALUES(38, 'CUS00038', 'Customer', 'CUS0051', 'MR.PRIYANTHA DILSHAN', 'V-TEC COMPUTER', 'NO.367A KACHCHERI JUNCTION WELLA WAYA ROAD\r\nMONARA', '', '0719177261', '', '', '05-Oct-2015', 'No', '2015-10-05 22:14:05');
INSERT INTO `user` VALUES(39, 'CUS00039', 'Customer', 'CUS 0051', 'FARZAN', 'MAGA COMPUTER', 'NO.12. METHAIPAIL COMPLEX MAIN ST KATHTHANKUDY ', '', '0776095987', '', '', '07-Oct-2015', 'No', '2015-10-07 23:36:55');
INSERT INTO `user` VALUES(40, 'CUS00040', 'Customer', 'CUS 0052', 'MR.LASANTHA', 'HONZON COMPUTER', 'NO.09 RUHUNU PLAZA BULIDING HAMBANTOTA ', '', '0715328505', '', '', '07-Oct-2015', 'No', '2015-10-07 23:38:26');
INSERT INTO `user` VALUES(41, 'CUS00041', 'Customer', 'CUS0053', 'WATTUHEWE', 'PC WORLD', 'NO.108/B STANLY THILAKARATHNE MW NUGEGODA ', '0112812430', '', '', '', '07-Oct-2015', 'No', '2015-10-07 23:40:11');
INSERT INTO `user` VALUES(42, 'CUS00042', 'Customer', 'CUS0060', 'MR.KEERTHI', 'DATA SOLUTION (PVT)LTD', 'NO.70/8 GROUND FLOOR D.S SENNANAYAKA MAWATHA \r\nYMB', '0112670779', '', '', '', '12-Oct-2015', 'No', '2015-10-12 21:05:44');
INSERT INTO `user` VALUES(43, 'CUS00043', 'Customer', 'CUS 0067', 'MAHARAGAMA C/SHOPPE', 'MAHARAGAMA C/SHOPPE', '', '', '', '', '', '14-Oct-2015', 'No', '2015-10-14 22:31:39');
INSERT INTO `user` VALUES(44, 'CUS00044', 'Customer', 'cus-0080', 'MR.DINESH SUSAANTHA', 'MY PLUS COMPUTER', '1ST FLOOR LAKMINI BUILDING \r\nEMBILIPITIYA ', '', '0776561229', '', '', '20-Oct-2015', 'No', '2015-10-20 20:38:40');
INSERT INTO `user` VALUES(45, 'CUS00045', 'Customer', 'CUS-0082', 'MR.PRIYASHANTHA', 'SARASI COMPUTER HOUSE', 'NO.489/A BAGHAWATTA ELPITIYA ROAD \r\nAMBALANGODA ', '', '0773998356', '', '', '21-Oct-2015', 'No', '2015-10-21 21:25:20');
INSERT INTO `user` VALUES(46, 'CUS00046', 'Customer', 'CUS-0083', 'MR.MANJULA', 'M.M TRADE STATIONERS', 'NO.112A STANLEY THILAKAERATHNE MAWATTA \r\nNUGEGODA ', '0114967777', '', '', '', '21-Oct-2015', 'No', '2015-10-21 21:27:42');
INSERT INTO `user` VALUES(47, 'CUS00047', 'Customer', 'CUS0100', 'MR,SUSIL PREMAKUMAR', 'SUSIL COMPUTER SYSTEMS', 'NO. 774/3F VINILL GEM COMPLEX KAHAWATTA \r\n', '', '0779209386', '', '', '30-Oct-2015', 'No', '2015-10-30 22:19:00');
INSERT INTO `user` VALUES(48, 'CUS00048', 'Customer', 'CUS0103', 'MR.CHARLES WIJESINGHE', 'CHANAS COMPUTER SYSTEM', 'NO.885/1 AGALAWATTA ROAD \r\nMATHUGAMA ', '0772360631', '', '', '', '02-Nov-2015', 'No', '2015-11-02 22:04:25');
INSERT INTO `user` VALUES(49, 'CUS00049', 'Customer', 'CUS0105', 'VICTORY', 'VICTORY BOOK SHPE', 'NO.21 YATIYANTHOTA ROAD  AVISAWELLA ', '0363863666', '', '', '', '04-Nov-2015', 'No', '2015-11-04 21:18:37');
INSERT INTO `user` VALUES(50, 'CUS00050', 'Customer', 'CUS106', 'MR.RAVEE', 'ONARO LANKA (PVT) LTD', 'KOTAHENA ', '', '', '', '', '04-Nov-2015', 'No', '2015-11-04 21:37:51');
INSERT INTO `user` VALUES(51, 'CUS00051', 'Customer', 'CUS0106', 'MR.MADHAWA', 'M&S COMPUTER', 'NO.249.MAIN STREET GODAKAWELLA ', '0452240889', '', '', '', '05-Nov-2015', 'No', '2015-11-05 23:46:18');
INSERT INTO `user` VALUES(52, 'CUS00052', 'Customer', 'CUS 1040', 'MS.KANTHI', 'UNION CHEMIST (PVT) LTD', 'NO.460 UNION PLACE COLOMBO-02', '0112692532', '', '', '', '05-Nov-2015', 'No', '2015-11-05 23:58:27');
INSERT INTO `user` VALUES(53, 'CUS00053', 'Customer', 'CUS0107', 'MR.Jeewantha', 'Chanet Lanka Computer', 'No.195/A Kotuwatta Main Street ruwanwella \r\n', '362266588', '', '', '', '05-Nov-2015', 'No', '2015-11-06 00:51:23');
INSERT INTO `user` VALUES(54, 'CUS00054', 'Customer', 'CUS0108', 'Mr.Sanjeewa', 'Natonal Book Shop', 'No.111 Stanly Thilakerathne Mawatta \r\nNugegoda ', '0112856307', '', '', '', '06-Nov-2015', 'No', '2015-11-06 00:54:39');
INSERT INTO `user` VALUES(55, 'CUS00055', 'Customer', 'CUS0112', 'C/SHOPPE MAHARAGAMA', 'C/SHOPPE MAHARAGAMA', '', '', '', '', '', '06-Nov-2015', 'No', '2015-11-06 21:49:08');
INSERT INTO `user` VALUES(56, 'CUS00056', 'Customer', 'CUS0120', 'MR.M.N. AHSEN', 'OFICE PLUS', '115 C DUTUDEMUNU STREET \r\nKHUWELLA ', '0772642836', '', '', '', '11-Nov-2015', 'No', '2015-11-11 01:39:41');
INSERT INTO `user` VALUES(57, 'CUS00057', 'Customer', 'CUS 0120', 'PC STAIONERRIES', 'MR.NALIN KODALLAGE', 'NO.24 SIRIMALWATTA PANNIPITIYA \r\nKOTTAWA ', '0773706301', '', '', '', '18-Nov-2015', 'No', '2015-11-18 22:05:05');
INSERT INTO `user` VALUES(58, 'CUS00058', 'Customer', 'CUS 0125', 'MR.NALAKA NISHANTHA', 'BEETA COMPUTER SYSTEMS', 'NO.21/25/27 NEW SHOPPING COMPLEX NITTAMBUWA ', '0714906178', '', '', '', '30-Nov-2015', 'No', '2015-11-30 20:51:08');
INSERT INTO `user` VALUES(59, 'CUS00059', 'Customer', 'CUS 0126', 'MR.M.N ASHAN', 'OFFICE PLUS', 'NO. 115C DUTUGEMUNU STREET \r\nKOHUWELA ', '0772642836', '', '', '', '30-Nov-2015', 'No', '2015-11-30 21:09:54');
INSERT INTO `user` VALUES(60, 'CUS00060', 'Customer', '012010', 'Brian joseph', 'Energy saving lanka international', 'No.73/1-1 ward place col-07', '', '0777376466', '', '', '28-Jan-2016', 'No', '2016-01-28 23:50:17');
INSERT INTO `user` VALUES(62, 'CUS00062', 'Customer', '2016001', 'R & G CAPITAL', 'R & G CAPITAL', '', '', '', '', '', '02-Jun-2016', 'No', '2016-06-02 22:48:14');
INSERT INTO `user` VALUES(63, 'CUS00063', 'Supplier', '1978', 'PRGM CHINA', 'PRGM CHINA', 'CHINA\r\n', '', '', '', '', '02-Jun-2016', 'No', '2016-06-03 02:10:29');
INSERT INTO `user` VALUES(64, 'CUS00064', 'Customer', '1200', 'CARTRIDGE SHOPPE', 'CARTRIDGE SHOPPE', 'WATTALA', '0112676294', '0771234567', '', '', '02-Jun-2016', 'No', '2016-06-02 23:17:09');
INSERT INTO `user` VALUES(65, 'CUS00065', 'Supplier', '2002', 'CHINA', 'CHINA', 'CHINA', '', '', '', '', '02-Jun-2016', 'No', '2016-06-03 02:11:06');
INSERT INTO `user` VALUES(67, 'CUS00067', 'Supplier', '2016', 'FULL MARK', 'FULL MARK', 'MALAYSIA', '', '', '', '', '03-Jun-2016', 'No', '2016-06-03 02:04:22');
INSERT INTO `user` VALUES(68, 'CUS00068', 'Supplier', '19778', 'STATIC CONTROL', 'STATIC CONTROL TONER PARTS', 'U.K', '', '', '', '', '03-Jun-2016', 'No', '2016-06-03 02:09:04');
INSERT INTO `user` VALUES(70, 'CUS00069', 'Supplier', '030616', 'HP', 'HP COMPANY', 'CHINA', '', '', '', '', '03-Jun-2016', 'No', '2016-06-03 03:20:31');
INSERT INTO `user` VALUES(71, 'CUS00071', 'Customer', '0007', 'PREMADASA', 'DASA & CO', '', '', '', '', '', '05-Jun-2016', 'No', '2016-06-05 20:27:15');
INSERT INTO `user` VALUES(73, 'CUS00072', 'Supplier', '0004', 'CHINA', 'CHINA', '', '', '', '', '', '05-Jun-2016', 'No', '2016-06-05 23:09:48');
INSERT INTO `user` VALUES(74, 'CUS00074', 'Customer', '3000', 'kabali', 'KABALI & CO', 'INDIA', '', '', '', '', '06-Jun-2016', 'No', '2016-06-06 01:13:02');
INSERT INTO `user` VALUES(75, 'CUS00075', 'Supplier', '1982', 'VISION PACKING', 'VISION PACKING', 'RATHMALANA', '', '', '', '', '07-Jun-2016', 'No', '2016-06-07 02:49:49');
INSERT INTO `user` VALUES(76, 'CUS00076', 'Customer', '0773034772', 'TECHNICAL UNIT', 'TECHNICAL UNIT', 'TECHNICAL UNIT', '', '', '', '', '08-Jun-2016', 'No', '2016-06-08 00:59:36');
INSERT INTO `user` VALUES(78, 'CUS00078', 'Supplier', '5514', 'POPULAR STATIONERY', 'POPULAR STATIONERY', 'COLOMBO-11', '', '', '', '', '09-Jun-2016', 'No', '2016-06-09 01:35:53');
INSERT INTO `user` VALUES(79, 'CUS00079', 'Customer', '2013', 'KOKULA HARANI', 'KOKULA HARANI', 'COLOMBO-09\r\n', '', '', '', '', '12-Jul-2016', 'No', '2016-07-12 03:08:04');
INSERT INTO `user` VALUES(80, 'CUS00080', 'Supplier', '0009', 'A TECH', 'A TECH', 'WATTALA ', '', '', '', '', '12-Jul-2016', 'No', '2016-07-12 22:04:12');
INSERT INTO `user` VALUES(81, 'CUS00081', 'Supplier', '130716', 'FOOD CITY', 'FOOD CITY', 'WATTALA ', '', '', '', '', '12-Jul-2016', 'No', '2016-07-12 22:13:01');
INSERT INTO `user` VALUES(82, 'CUS00082', 'Supplier', '0008', 'DHAMMIKA DISTRIBUTORS', 'DHAMMIKA DISTRIBUTORS', '', '', '', '', '', '12-Jul-2016', 'No', '2016-07-12 23:06:02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pro_item`
--
ALTER TABLE `pro_item`
  ADD CONSTRAINT `FK_pro_item_pro_brand` FOREIGN KEY (`pro_brand_id`) REFERENCES `pro_brand` (`id`),
  ADD CONSTRAINT `FK_pro_item_pro_model` FOREIGN KEY (`pro_model_id`) REFERENCES `pro_model` (`id`),
  ADD CONSTRAINT `FK_pro_item_pro_type` FOREIGN KEY (`pro_type_id`) REFERENCES `pro_type` (`id`);

--
-- Constraints for table `pro_model`
--
ALTER TABLE `pro_model`
  ADD CONSTRAINT `FK__pro_brand` FOREIGN KEY (`pro_brand`) REFERENCES `pro_brand` (`id`);
