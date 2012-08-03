-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2012 at 06:10 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ibpls`
--

-- --------------------------------------------------------

--
-- Table structure for table `biz_fee`
--

CREATE TABLE IF NOT EXISTS `biz_fee` (
  `biz_id` int(3) NOT NULL AUTO_INCREMENT,
  `biz_desc` varchar(255) DEFAULT NULL,
  `biz_type` int(1) DEFAULT NULL,
  `biz_form` varchar(20) DEFAULT NULL,
  `biz_cons` decimal(12,2) DEFAULT NULL,
  `biz_trans` varchar(10) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `input_by` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`biz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `biz_fee`
--


-- --------------------------------------------------------

--
-- Table structure for table `biz_range`
--

CREATE TABLE IF NOT EXISTS `biz_range` (
  `range_id` int(3) NOT NULL AUTO_INCREMENT,
  `biz_id` int(3) DEFAULT NULL,
  `range_low` varchar(20) DEFAULT NULL,
  `range_high` varchar(20) DEFAULT NULL,
  `range_amt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`range_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `biz_range`
--


-- --------------------------------------------------------

--
-- Table structure for table `boat_fee`
--

CREATE TABLE IF NOT EXISTS `boat_fee` (
  `fee_id` int(10) NOT NULL AUTO_INCREMENT,
  `boat_type` int(11) DEFAULT NULL,
  `range_lower` int(10) DEFAULT NULL,
  `range_higher` int(10) DEFAULT NULL,
  `unit_measure` varchar(50) DEFAULT NULL,
  `amt` decimal(12,2) DEFAULT NULL,
  `transaction` varchar(10) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT '0',
  `fee_type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `boat_fee`
--

INSERT INTO `boat_fee` (`fee_id`, `boat_type`, `range_lower`, `range_higher`, `unit_measure`, `amt`, `transaction`, `active`, `fee_type`) VALUES
(4, 6, 1, 0, 'm', 100.00, 'New', 1, 3),
(3, 6, 0, 1, 'm', 1100.00, 'New', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bus_fees_paid`
--

CREATE TABLE IF NOT EXISTS `bus_fees_paid` (
  `fee_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) NOT NULL DEFAULT '0',
  `business_id` int(10) NOT NULL DEFAULT '0',
  `tfoid` int(10) DEFAULT NULL,
  `amt_paid` decimal(12,2) DEFAULT NULL,
  `date_paid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bus_fees_paid`
--


-- --------------------------------------------------------

--
-- Table structure for table `bus_grandamt`
--

CREATE TABLE IF NOT EXISTS `bus_grandamt` (
  `gid` int(71) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) DEFAULT NULL,
  `business_id` int(10) DEFAULT NULL,
  `grandamt` decimal(12,2) DEFAULT NULL,
  `totpenamt` decimal(12,2) DEFAULT NULL,
  `si` decimal(12,2) DEFAULT NULL,
  `penamt` decimal(12,2) DEFAULT NULL,
  `origtax` decimal(12,2) DEFAULT NULL,
  `penalty_acntcode` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `transaction` varchar(20) DEFAULT 'New',
  `waive` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ts` varchar(4) NOT NULL DEFAULT '',
  `paymode` varchar(50) NOT NULL DEFAULT '',
  `paypart` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=485 ;

--
-- Dumping data for table `bus_grandamt`
--

INSERT INTO `bus_grandamt` (`gid`, `owner_id`, `business_id`, `grandamt`, `totpenamt`, `si`, `penamt`, `origtax`, `penalty_acntcode`, `active`, `transaction`, `waive`, `ts`, `paymode`, `paypart`) VALUES
(253, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0, 'New', 0.00, '2010', 'QUARTERLY', 1),
(254, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0, 'New', 0.00, '2010', 'QUARTERLY', 2),
(255, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0, 'New', 0.00, '2010', 'QUARTERLY', 3),
(256, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 0, 'New', 0.00, '2010', 'QUARTERLY', 4),
(477, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'ReNew', 0.00, '2010', 'QUARTERLY', 1),
(478, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'ReNew', 0.00, '2010', 'QUARTERLY', 2),
(479, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'ReNew', 0.00, '2010', 'QUARTERLY', 3),
(480, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'ReNew', 0.00, '2010', 'QUARTERLY', 4),
(481, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 1),
(482, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 2),
(483, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 3),
(484, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 4),
(423, 4, 3, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'SEMI-ANNUAL', 1),
(424, 4, 3, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'SEMI-ANNUAL', 2),
(453, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 1),
(454, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 2),
(455, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 3),
(456, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, 'New', 0.00, '2010', 'QUARTERLY', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cancel_or`
--

CREATE TABLE IF NOT EXISTS `cancel_or` (
  `cancel_id` int(11) NOT NULL AUTO_INCREMENT,
  `old_or` varchar(20) NOT NULL DEFAULT '',
  `new_or` varchar(20) NOT NULL DEFAULT '',
  `reasoncan` varchar(250) NOT NULL DEFAULT '',
  `date_input` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `input_by` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`cancel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cancel_or`
--


-- --------------------------------------------------------

--
-- Table structure for table `chart_accounts`
--

CREATE TABLE IF NOT EXISTS `chart_accounts` (
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  `tfoid` varchar(50) DEFAULT NULL,
  `tfodesc` varchar(60) NOT NULL DEFAULT '',
  `accnt_code` varchar(50) DEFAULT NULL,
  `accnt_type` enum('DEBIT','CREDIT') DEFAULT NULL,
  `input_by` varchar(20) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`caid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `chart_accounts`
--

INSERT INTO `chart_accounts` (`caid`, `tfoid`, `tfodesc`, `accnt_code`, `accnt_type`, `input_by`, `date_modified`) VALUES
(2, 'CASH', 'CASH', '123', 'CREDIT', 'EBPLS', '2010-08-23 13:06:22'),
(3, '4', 'Mayors Permit', 'MP', 'DEBIT', 'EBPLS', '2010-10-29 23:09:31'),
(6, '3', 'Fire Safety', '12', 'DEBIT', 'EBPLS', '2010-10-30 12:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `comparative_statement`
--

CREATE TABLE IF NOT EXISTS `comparative_statement` (
  `cs_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) DEFAULT NULL,
  `business_id` int(10) DEFAULT NULL,
  `bus_code` varchar(10) DEFAULT NULL,
  `bus_nature` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `payment_number` varchar(255) DEFAULT NULL,
  `taxes` decimal(10,2) DEFAULT '0.00',
  `fees` decimal(10,2) DEFAULT '0.00',
  `penalty` decimal(10,2) DEFAULT '0.00',
  `surcharge` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `exemption` decimal(10,2) DEFAULT '0.00',
  `paid` int(1) NOT NULL DEFAULT '0',
  `backtax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `for_year` varchar(4) NOT NULL DEFAULT '',
  `or_no` varchar(50) NOT NULL DEFAULT '',
  `ts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `month` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`cs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comparative_statement`
--

INSERT INTO `comparative_statement` (`cs_id`, `owner_id`, `business_id`, `bus_code`, `bus_nature`, `payment_mode`, `payment_number`, `taxes`, `fees`, `penalty`, `surcharge`, `total`, `exemption`, `paid`, `backtax`, `for_year`, `or_no`, `ts`, `month`) VALUES
(1, 1, 1, '', '', 'QUARTERLY', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2010', '12345', '2010-07-28 09:38:47', '07'),
(2, 1, 1, '', '', 'QUARTERLY', '1', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, '2010', '123456', '2010-07-28 09:44:43', '07');

-- --------------------------------------------------------

--
-- Table structure for table `culture_fee`
--

CREATE TABLE IF NOT EXISTS `culture_fee` (
  `culture_id` int(10) NOT NULL AUTO_INCREMENT,
  `culture_type` int(11) DEFAULT NULL,
  `fee_type` int(1) DEFAULT NULL,
  `formula_amt` varchar(250) DEFAULT NULL,
  `const_amt` decimal(12,2) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `unit_measure` varchar(50) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`culture_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `culture_fee`
--

INSERT INTO `culture_fee` (`culture_id`, `culture_type`, `fee_type`, `formula_amt`, `const_amt`, `date_create`, `unit_measure`, `transaction`, `active`) VALUES
(1, 2, 1, '', 100.00, '2010-10-30 12:42:16', 'm', 'New', 1),
(2, 2, 1, '', 12.00, '2010-10-30 12:43:36', '1', 'New', 1);

-- --------------------------------------------------------

--
-- Table structure for table `culture_range`
--

CREATE TABLE IF NOT EXISTS `culture_range` (
  `fee_id` int(10) NOT NULL AUTO_INCREMENT,
  `culture_id` int(10) DEFAULT NULL,
  `range_lower` int(10) DEFAULT NULL,
  `range_higher` int(10) DEFAULT NULL,
  `amt` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `culture_range`
--


-- --------------------------------------------------------

--
-- Table structure for table `drop_vehicle`
--

CREATE TABLE IF NOT EXISTS `drop_vehicle` (
  `drop_id` int(21) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `motorized_motor_id` int(11) NOT NULL DEFAULT '0',
  `updated_by` varchar(50) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`drop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `drop_vehicle`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_activity_log`
--

CREATE TABLE IF NOT EXISTS `ebpls_activity_log` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_log` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `logged` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date_input` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`act_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1184 ;

--
-- Dumping data for table `ebpls_activity_log`
--

INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(1, 'EBPLS', 'part=4\nMenu: CTC: Module: : Subcommand: 0: id: 0: Data: owner_first_name=:  owner_middle_name=:  owner_last_name=:  owner_gender=M: :', '2010-10-27 16:08:32'),
(2, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: CTC: Module: : Subcommand: 0: id: 0: Data: owner_first_name=:  owner_middle_name=:  owner_last_name=:  owner_gender=M: :', '2010-10-27 16:08:34'),
(3, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:08:35'),
(4, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-27 16:08:35'),
(5, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:36'),
(6, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:37'),
(7, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:37'),
(8, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:38'),
(9, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:41'),
(10, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:43'),
(11, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 16:08:45'),
(12, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:46'),
(13, 'EBPLS', 'part=4&itemID_=23&busItem=Settings&permit_type=Settings&settings_type=ColorScheme&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:48'),
(14, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:49'),
(15, 'EBPLS', 'part=4&itemID_=23&busItem=Settings&permit_type=Settings&settings_type=ColorScheme&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:51'),
(16, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:51'),
(17, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:54'),
(18, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:55'),
(19, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:56'),
(20, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:57'),
(21, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:58'),
(22, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:08:59'),
(23, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:01'),
(24, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:02'),
(25, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:04'),
(26, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:06'),
(27, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:08'),
(28, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:10'),
(29, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:11'),
(30, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:09:12'),
(31, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-27 16:09:15'),
(32, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-27 16:09:16'),
(33, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-27 16:09:17'),
(34, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-27 16:09:18'),
(35, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-27 16:09:18'),
(36, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-27 16:09:18'),
(37, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-27 16:09:19'),
(38, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-27 16:09:20'),
(39, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-27 16:09:21'),
(40, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-27 16:09:22'),
(41, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-27 16:09:23'),
(42, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-27 16:09:24'),
(43, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 16:09:26'),
(44, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 16:09:27'),
(45, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 16:09:28'),
(46, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 16:09:31'),
(47, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&owner_id=5&com=New&permit_type=Franchise&stat=New&busItem=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 16:09:35'),
(48, 'EBPLS', 'vekatt=0&part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&stat=New&addpay=Compute&owner_id=5&busItem=Franchise\nMenu: 0: Module: : Subcommand: New: id: 0: Data: mmodel= :  mnum= :  cnum= :  pnum= :  bnum= :  bcolor= :  route= :  ltype= :  ltoreg= :  cro= : :', '2010-10-27 16:09:42'),
(49, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: New: id: 0: Data: mmodel= :  mnum= :  cnum= :  pnum= :  bnum= :  bcolor= :  route= :  ltype= :  ltoreg= :  cro= : :', '2010-10-27 16:09:47'),
(50, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:48'),
(51, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:49'),
(52, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:51'),
(53, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:52'),
(54, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:54'),
(55, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:55'),
(56, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:57'),
(57, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&owner_id=5&com=New&permit_type=Franchise&stat=New&busItem=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:09:59'),
(58, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: New: id: 0: Data: mmodel= :  mnum= :  cnum= :  pnum= :  bnum= :  bcolor= :  route= :  ltype= :  ltoreg= :  cro= : :', '2010-10-27 16:10:04'),
(59, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: New: id: 0: Data: mmodel= :  mnum= :  cnum= :  pnum= :  bnum= :  bcolor= :  route= :  ltype= :  ltoreg= :  cro= : :', '2010-10-27 16:10:05'),
(60, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: New: id: 0: Data: mmodel= :  mnum= :  cnum= :  pnum= :  bnum= :  bcolor= :  route= :  ltype= :  ltoreg= :  cro= : :', '2010-10-27 16:10:06'),
(61, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:07'),
(62, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:08'),
(63, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:08'),
(64, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:09'),
(65, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:10'),
(66, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:12'),
(67, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:13'),
(68, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:14'),
(69, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:15'),
(70, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:15'),
(71, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:16'),
(72, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:17'),
(73, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:18'),
(74, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:23'),
(75, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:24'),
(76, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:25'),
(77, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:26'),
(78, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:26'),
(79, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:27'),
(80, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 16:10:29'),
(81, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-27 16:10:29'),
(82, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-27 16:10:30'),
(83, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_link&orderbyasdes=1&page=1\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-27 16:10:31'),
(84, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_link: Subcommand: 0: id: : Data: link=:  desc=: :', '2010-10-27 16:10:33'),
(85, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_link: Subcommand: 0: id: : Data: link=:  desc=: :', '2010-10-27 16:10:33'),
(86, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-27 16:10:34'),
(87, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-27 16:10:36'),
(88, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-27 16:10:38'),
(89, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:10:39'),
(90, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:10:40'),
(91, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:10:42'),
(92, 'EBPLS', 'part=4&itemID_=23&busItem=Settings&permit_type=Settings&settings_type=ColorScheme&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:10:45'),
(93, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:10:47'),
(94, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:19:02'),
(95, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 16:30:12'),
(96, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 17:49:51'),
(97, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-27 17:49:53'),
(98, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:33'),
(99, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:35'),
(100, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:44'),
(101, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:46'),
(102, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:47'),
(103, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=1&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:50:51'),
(104, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 1: Data: iProvince=Laguna:  iBLGFCode=LA: :', '2010-10-27 17:50:52'),
(105, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=1&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=Quezon:  iBLGFCode=QZ: :', '2010-10-27 17:50:53'),
(106, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 1: Data: iProvince=Laguna:  iBLGFCode=LA: :', '2010-10-27 17:50:54'),
(107, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=1&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=Quezon:  iBLGFCode=QZ: :', '2010-10-27 17:50:55'),
(108, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 1: Data: iProvince=Laguna:  iBLGFCode=LA: :', '2010-10-27 17:50:55'),
(109, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=Quezon:  iBLGFCode=QZ: :', '2010-10-27 17:51:27'),
(110, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=Quezon:  iBLGFCode=QZ: :', '2010-10-27 17:51:30'),
(111, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:51:40'),
(112, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:51:46'),
(113, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:56:52'),
(114, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:56:57'),
(115, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:56:58'),
(116, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-27 17:57:00'),
(117, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-27 17:57:01'),
(118, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-27 17:57:03'),
(119, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-27 17:57:04'),
(120, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:57:14'),
(121, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:57:46'),
(122, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:57:48'),
(123, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 17:57:50'),
(124, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:51'),
(125, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:52'),
(126, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:53'),
(127, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:55'),
(128, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:56'),
(129, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:57'),
(130, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 17:57:57'),
(131, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 17:57:58'),
(132, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 17:57:59'),
(133, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 17:58:01'),
(134, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 17:58:02'),
(135, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Motorized\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-27 17:58:03'),
(136, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 17:58:04'),
(137, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 17:58:05'),
(138, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 17:58:06'),
(139, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 17:58:07'),
(140, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 17:58:08'),
(141, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-27 17:58:09'),
(142, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-27 17:58:09'),
(143, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-27 19:07:26'),
(144, 'EBPLS', 'part=4\n', '2010-10-27 22:26:44'),
(145, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\n', '2010-10-27 22:26:53'),
(146, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 22:26:55'),
(147, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 22:26:56'),
(148, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 22:26:57'),
(149, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-27 22:26:58'),
(150, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Motorized\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-27 22:26:59'),
(151, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 22:27:00'),
(152, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 22:27:02'),
(153, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-27 22:27:03'),
(154, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:05'),
(155, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:06'),
(156, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:19'),
(157, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:20'),
(158, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:22'),
(159, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:38'),
(160, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:40'),
(161, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:41'),
(162, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:27:58'),
(163, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-27 22:28:01'),
(164, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 22:28:02'),
(165, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 22:28:03'),
(166, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 22:28:04'),
(167, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 22:33:49'),
(168, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-27 22:33:51'),
(169, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 22:47:17'),
(170, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-27 22:56:23'),
(171, 'EBPLS', 'part=4\n', '2010-10-29 12:32:29'),
(172, 'EBPLS', 'part=4\n', '2010-10-29 12:32:34'),
(173, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\n', '2010-10-29 12:32:46'),
(174, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\n', '2010-10-29 12:32:47'),
(175, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\n', '2010-10-29 12:32:53'),
(176, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&genpin=&busItem=Business&search_type=Enterprise\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:32:58'),
(177, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:33:04'),
(178, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:33:06'),
(179, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:33:55'),
(180, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&busItem=Business&search_type=Owner\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:33:57'),
(181, 'EBPLS', 'part=4&itemID_=1223&class_type=Permits&tag=Business&permit_type=Business&busItem=Business&owner_id=0&stat=\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:34:02'),
(182, 'EBPLS', 'part=4&itemID_=1221&addbiz=Select&owner_id=3&permit_type=Business&busItem=Business&mainfrm=Main&stat=New\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:34:25'),
(183, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:29'),
(184, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:33'),
(185, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:42'),
(186, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:47'),
(187, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:48'),
(188, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 12:34:52'),
(189, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:34:54'),
(190, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:34:57'),
(191, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:35:08'),
(192, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:35:12'),
(193, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:35:14'),
(194, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&busItem=Business&search_type=Owner\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:35:18'),
(195, 'EBPLS', 'part=4&itemID_=1223&class_type=Permits&tag=Business&permit_type=Business&busItem=Business&owner_id=0&stat=\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:35:19'),
(196, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&busItem=Business&search_type=Owner\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:35:22'),
(197, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:35:24'),
(198, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&genpin=&busItem=Business&search_type=Enterprise\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_last=:  search_first=: :', '2010-10-29 12:35:26'),
(199, 'EBPLS', 'part=4&itemID_=1223&class_type=Permits&permit_type=Business&busItem=Business&genpin=&owner_id=0\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:35:27'),
(200, 'EBPLS', 'part=4&itemID_=1223&class_type=Permits&permit_type=Business&busItem=Business&genpin=&owner_id=0\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:35:33'),
(201, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&addbus=addbus&owner_id=0&permit_type=Business&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:35:34'),
(202, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_bus=:  search_branch=:  srch_frm=1: :', '2010-10-29 12:35:38'),
(203, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:43'),
(204, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:44'),
(205, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:46'),
(206, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:48'),
(207, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:50'),
(208, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:51'),
(209, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:52'),
(210, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:53'),
(211, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:55'),
(212, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:35:56'),
(213, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:00'),
(214, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:02'),
(215, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:04'),
(216, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:05'),
(217, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:10'),
(218, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:11'),
(219, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:12'),
(220, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:36:58'),
(221, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:01');
INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(222, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:04'),
(223, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:05'),
(224, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:06'),
(225, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:19'),
(226, 'EBPLS', 'part=4&class_type=Permits&itemID_=1224&business_id=1&owner_id=1&permit_type=Business&stat=ReNew&addbiz=update&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 12:37:23'),
(227, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: fupload=:  blacklist=false:  black_list_reason=:  business_name=mannysoft:  business_branch=None:  business_scale=MICRO:  business_payment_mode=QUARTERLY:  comment=:  business_building_name=:  business_street=alcantara:  business_pro_desc=QUEZON:  business_city_desc=LOPEZ:  business_district_code=1:  business_barangay_code=1:  business_zone_code=1:  business_zip_code=4316:  business_contact_no=:  business_fax_no= :  business_date_established=2010-07-28:  business_no_del_vehicles=0:  business_start_date=2010-07-28:  business_location_desc=:  business_occupancy_code=gfg:  business_remarks=:  business_category_code=SIN:  employees_M=0:  employees_F=0:  business_email_address=:  business_dot_acr_no=:  business_dti_reg_no=:  business_sec_reg_no=:  business_dti_reg_date=2010-07-28:  business_tin_reg_no=:  business_nso_assigned_no=:  business_industry_sector_code=001:  business_nso_estab_id=:  business_main_offc_name=:  business_main_offc_lot_no=:  business_main_offc_street_no=:  business_main_offc_tin_no=:  business_phone_no=:  main_office_prov=:  business_main_offc_city_code=:  business_main_offc_district_code=:  business_main_offc_barangay_code=:  business_main_offc_zone_code=:  business_main_offc_zip_code=:  regname=:  paidemp=:  ecoorg=1:  ecoarea=1:  biztype=Franchise:  pcname=:  pcaddress=: :', '2010-10-29 12:37:33'),
(228, 'EBPLS', 'part=4&class_type=Permits&itemID_=1222&owner_id=1&com=Edit&permit_type=Business&stat=ReNew&business_id=1&busItem=Business&addbiz=update\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: fupload=:  blacklist=false:  black_list_reason=:  business_name=mannysoft:  business_branch=None:  business_scale=MICRO:  business_payment_mode=QUARTERLY:  comment=:  business_building_name=:  business_street=alcantara:  business_pro_desc=QUEZON:  business_city_desc=LOPEZ:  business_district_code=1:  business_barangay_code=1:  business_zone_code=1:  business_zip_code=4316:  business_contact_no=:  business_fax_no= :  business_date_established=2010-07-28:  business_no_del_vehicles=0:  business_start_date=2010-07-28:  business_location_desc=:  business_occupancy_code=gfg:  business_remarks=:  business_category_code=SIN:  employees_M=0:  employees_F=0:  business_email_address=:  business_dot_acr_no=:  business_dti_reg_no=:  business_sec_reg_no=:  business_dti_reg_date=2010-07-28:  business_tin_reg_no=:  business_nso_assigned_no=:  business_industry_sector_code=001:  business_nso_estab_id=:  business_main_offc_name=:  business_main_offc_lot_no=:  business_main_offc_street_no=:  business_main_offc_tin_no=:  business_phone_no=:  main_office_prov=:  business_main_offc_city_code=:  business_main_offc_district_code=:  business_main_offc_barangay_code=:  business_main_offc_zone_code=:  business_main_offc_zip_code=:  regname=:  paidemp=:  ecoorg=1:  ecoarea=1:  biztype=Franchise:  pcname=:  pcaddress=: :', '2010-10-29 12:37:37'),
(229, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Edit: id: 0: Data: owner_first_name=Manny:  owner_civil_status=Single:  owner_middle_name=H:  owner_gender=M:  owner_last_name=Isles:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=0000-00-00:  owner_tin_no=:  owner_street=Lopez:  owner_province_code=2:  owner_city_code=LP:  owner_district_code=1:  owner_phone_no=:  owner_barangay_code=1:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:37:42'),
(230, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&owner_id=1&com=Drop&permit_type=Business&stat=Retire&business_id=1&busItem=Business\nMenu: 0: Module: : Subcommand: Edit: id: 0: Data: owner_first_name=Manny:  owner_civil_status=Single:  owner_middle_name=H:  owner_gender=M:  owner_last_name=Isles:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=0000-00-00:  owner_tin_no=:  owner_street=Lopez:  owner_province_code=2:  owner_city_code=LP:  owner_district_code=1:  owner_phone_no=:  owner_barangay_code=1:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 12:37:44'),
(231, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:37:52'),
(232, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:53:20'),
(233, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:53:22'),
(234, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:53:24'),
(235, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:53:29'),
(236, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:54:03'),
(237, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:54:17'),
(238, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:56:00'),
(239, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:56:29'),
(240, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 12:56:58'),
(241, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:26'),
(242, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:37'),
(243, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:42'),
(244, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:43'),
(245, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:45'),
(246, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:50'),
(247, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:54'),
(248, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:19:55'),
(249, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:20:00'),
(250, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:20:05'),
(251, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:20:08'),
(252, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:20:12'),
(253, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:20:14'),
(254, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:21:50'),
(255, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:21:51'),
(256, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: : Subcommand: Drop: id: 0: Data::', '2010-10-29 13:21:52'),
(257, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 13:21:53'),
(258, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-29 13:21:54'),
(259, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-29 13:21:55'),
(260, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-29 13:21:55'),
(261, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-29 13:21:56'),
(262, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-29 13:21:59'),
(263, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-29 13:22:00'),
(264, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:01'),
(265, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:02'),
(266, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:03'),
(267, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:07'),
(268, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:10'),
(269, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:12'),
(270, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:12'),
(271, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:13'),
(272, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 13:22:14'),
(273, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 13:22:15'),
(274, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 13:22:15'),
(275, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 15:00:33'),
(276, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:00:58'),
(277, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:00'),
(278, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:02'),
(279, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:04'),
(280, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:05'),
(281, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:06'),
(282, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:10'),
(283, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:13'),
(284, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:15'),
(285, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:17'),
(286, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:18'),
(287, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:27'),
(288, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:29'),
(289, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:34'),
(290, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:37'),
(291, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:39'),
(292, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:39'),
(293, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:01:42'),
(294, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:01'),
(295, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:02'),
(296, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:04'),
(297, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:18'),
(298, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:20'),
(299, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:21'),
(300, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:22'),
(301, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:23'),
(302, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:24'),
(303, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:02:25'),
(304, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:00'),
(305, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:03'),
(306, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:05'),
(307, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:07'),
(308, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:10'),
(309, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:12'),
(310, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:15'),
(311, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:32'),
(312, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:34'),
(313, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:46'),
(314, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:03:47'),
(315, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:09'),
(316, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:10'),
(317, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:14'),
(318, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:16'),
(319, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:22'),
(320, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:25'),
(321, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:04:27'),
(322, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:01'),
(323, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:02'),
(324, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:05'),
(325, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:09'),
(326, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:14'),
(327, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:34'),
(328, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:35'),
(329, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:39'),
(330, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:40'),
(331, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:41'),
(332, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:42'),
(333, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:47'),
(334, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:05:55'),
(335, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:06:51'),
(336, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:06:57'),
(337, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:06:59'),
(338, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:02'),
(339, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:04'),
(340, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:05'),
(341, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:10'),
(342, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:18'),
(343, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:24'),
(344, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:07:59'),
(345, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:08:00'),
(346, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:08:02'),
(347, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:08:53'),
(348, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:19:09'),
(349, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:19:11'),
(350, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:19:12'),
(351, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:19:12'),
(352, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:19:12'),
(353, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:20:40'),
(354, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:21:05'),
(355, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:12'),
(356, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:15'),
(357, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:17'),
(358, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:18'),
(359, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:20'),
(360, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:21'),
(361, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:22'),
(362, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:23'),
(363, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:24'),
(364, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:26'),
(365, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:27'),
(366, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:28'),
(367, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:29'),
(368, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:38'),
(369, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:25:39'),
(370, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:27:04'),
(371, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:27:04'),
(372, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:27:05'),
(373, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:29:56'),
(374, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:29:57'),
(375, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:30:00'),
(376, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=1221&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:30:00'),
(377, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:46:58'),
(378, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:00'),
(379, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:03'),
(380, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:05'),
(381, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:06'),
(382, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:07'),
(383, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:09'),
(384, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:16'),
(385, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:19'),
(386, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:19'),
(387, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:20'),
(388, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:47:22'),
(389, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:49:45'),
(390, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:49:46'),
(391, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:52:09'),
(392, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:52:14'),
(393, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:52:42'),
(394, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:52:53'),
(395, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 15:52:55'),
(396, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 15:54:39'),
(397, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 15:54:58'),
(398, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 15:56:22'),
(399, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 15:56:46'),
(400, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 16:03:17'),
(401, 'EBPLS', 'part=4\n', '2010-10-29 22:31:30'),
(402, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\n', '2010-10-29 22:31:33'),
(403, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\n', '2010-10-29 22:31:37'),
(404, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: 0: id: 0: Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:31:45'),
(405, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:31:52'),
(406, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:32:02'),
(407, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:32:07'),
(408, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:32:19'),
(409, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:32:23'),
(410, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 22:32:27'),
(411, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:  iPosition=:  iOffice=: :', '2010-10-29 22:38:56'),
(412, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:40:27'),
(413, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:40:34'),
(414, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:40:42'),
(415, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:40:44'),
(416, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=ReNew:  MFees=: :', '2010-10-29 22:44:47'),
(417, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:44:52'),
(418, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:44:53'),
(419, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:44:55'),
(420, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:45:00'),
(421, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:45:05'),
(422, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:45:07'),
(423, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:45:10'),
(424, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:45:15'),
(425, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:45:17'),
(426, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:45:22'),
(427, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:46:10'),
(428, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-29 22:54:10'),
(429, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:54:12'),
(430, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:54:35'),
(431, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:54:59'),
(432, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:55:04'),
(433, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:55:09'),
(434, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:56:07'),
(435, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:56:11'),
(436, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:56:19'),
(437, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:56:55'),
(438, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:56:58'),
(439, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:57:02'),
(440, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:57:05'),
(441, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:57:06'),
(442, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:57:09'),
(443, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:57:12'),
(444, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:57:16'),
(445, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: : Data: nCode=: :', '2010-10-29 22:57:19'),
(446, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:57:20'),
(447, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:57:21'),
(448, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:31'),
(449, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:35'),
(450, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:37'),
(451, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:38'),
(452, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:43'),
(453, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 22:57:47'),
(454, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 22:58:58'),
(455, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:59:10'),
(456, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:59:14'),
(457, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 22:59:15'),
(458, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:00:16'),
(459, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:00:17'),
(460, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:00:23'),
(461, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 23:00:23'),
(462, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 23:00:24'),
(463, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:00:25'),
(464, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:00:28'),
(465, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-29 23:00:30'),
(466, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-29 23:00:39'),
(467, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-29 23:00:40'),
(468, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:00:42'),
(469, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:00:44'),
(470, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:00:48'),
(471, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:00:52'),
(472, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-29 23:01:00'),
(473, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nindustry&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:01:00'),
(474, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&is_desc=ASC\nMenu: 0: Module: ebpls_nindustry: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:01:02'),
(475, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-29 23:01:03'),
(476, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-29 23:01:05'),
(477, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-29 23:01:06');
INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(478, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-29 23:01:07'),
(479, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-29 23:01:08'),
(480, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-29 23:01:09'),
(481, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-29 23:01:11'),
(482, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-29 23:01:11'),
(483, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-29 23:01:12'),
(484, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-29 23:01:12'),
(485, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 23:01:26'),
(486, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nctc\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-29 23:01:27'),
(487, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: ebpls_nctc: Subcommand: 0: id: 0: Data: individual_interest_rate=2:  individual_ceiling_rate=500.00:  individual_penalty_date=1:  corporate_interest_rate=5:  corporate_ceiling_rate=10000.00:  corporate_penalty_date=1: :', '2010-10-29 23:01:28'),
(488, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nindustry&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:01:29'),
(489, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&is_desc=ASC\nMenu: 0: Module: ebpls_nindustry: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:01:30'),
(490, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_area&is_desc=ASC\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-29 23:01:32'),
(491, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_org&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_area: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-29 23:01:34'),
(492, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_org: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-29 23:01:37'),
(493, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_npermitform: Subcommand: 0: id: 0: Data: permit_type=Business:  permit_header=:  permit_date=false:  permit_sequence=: :', '2010-10-29 23:01:40'),
(494, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-29 23:01:44'),
(495, 'EBPLS', 'part=4&class_type=Preference&busItem=ebpls_ninterestsur&action_=7&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nannouncement: Subcommand: 0: id: 0: Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-29 23:01:50'),
(496, 'EBPLS', 'part=4&class_type=Preference&busItem=ebpls_ninterestsur&selMode=ebpls_nmotorpenalty&action_=7&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_npenalty: Subcommand: : id: 0: Data: iRenewalDate=:  iLGUPenalty=:  iIndicator=1:  iIndicator=2:  SurType=1:  SurType=2:  iLGUInterest=:  iActivate=false:  IntType=1:  IntType=2:  FeeOnly=1:  FeeOnly=2:  FeeOnly=3:  iSurchargePay=:  iRemarks=: :', '2010-10-29 23:03:54'),
(497, 'EBPLS', 'part=4&class_type=Preference&busItem=ebpls_ninterestsur&selMode=ebpls_nfishpenalty&action_=7&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nmotorpenalty: Subcommand: 0: id: 0: Data: iRenewalType=1:  iRenewalType=2:  iRenewalDate1=:  iSurcharge=:  iIndicator=1:  iIndicator=2:  iInterest=:  iActivate=false:  IntType=1:  IntType=2:  FeeOnly=1:  FeeOnly=2:  iLate=:  iLActivate=false:  iBackTax=false: :', '2010-10-29 23:03:58'),
(498, 'EBPLS', 'part=4&class_type=Preference&busItem=ebpls_ninterestsur&selMode=ebpls_noccpenalty&action_=7&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishpenalty: Subcommand: 0: id: 0: Data: iRenewalDate=:  iSurcharge=:  iIndicator=1:  iIndicator=2:  iInterest=:  iActivate=false:  IntType=1:  IntType=2:  FeeOnly=1:  FeeOnly=2:  iLate=:  iLActivate=false:  iBackTax=false: :', '2010-10-29 23:04:00'),
(499, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_noccpenalty: Subcommand: 0: id: 0: Data: iRenewalDate=:  iSurcharge=:  iIndicator=1:  iIndicator=2:  iInterest=:  iActivate=false:  IntType=1:  IntType=2:  FeeOnly=1:  FeeOnly=2:  iLate=:  iLActivate=false:  iBackTax=false: :', '2010-10-29 23:04:02'),
(500, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: 0: id: 0: Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 23:04:16'),
(501, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nreportsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: 0: id: 0: Data: iName=:  iPosition=:  iOffice=: :', '2010-10-29 23:04:18'),
(502, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_faq&orderbyasdes=1&page=1\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-29 23:04:31'),
(503, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_faq&is_desc=ASC\nMenu: 0: Module: ebpls_faq: Subcommand: 0: id: 0: Data: faq_question=:  faq_answer=: :', '2010-10-29 23:04:37'),
(504, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_faq&is_desc=ASC\nMenu: 0: Module: ebpls_faq: Subcommand: 0: id: 0: Data: faq_question=:  faq_answer=: :', '2010-10-29 23:04:40'),
(505, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_link&orderbyasdes=1&page=1\nMenu: 0: Module: ebpls_faq: Subcommand: 0: id: 1: Data: faq_question=:  faq_answer=: :', '2010-10-29 23:04:43'),
(506, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-10-29 23:04:47'),
(507, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-10-29 23:04:49'),
(508, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-10-29 23:04:51'),
(509, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:03'),
(510, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:07'),
(511, 'EBPLS', 'part=4&itemID_=23&busItem=Settings&permit_type=Settings&settings_type=ColorScheme&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:13'),
(512, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:14'),
(513, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:15'),
(514, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:16'),
(515, 'EBPLS', 'part=4&itemID_=&busItem=Settings&permit_type=Settings&settings_type=SysReference&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:17'),
(516, 'EBPLS', 'part=4\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:18'),
(517, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-29 23:05:20'),
(518, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:05:21'),
(519, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:05:22'),
(520, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:05:32'),
(521, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:05:32'),
(522, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:05:35'),
(523, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&owner_id=6&stat=New&addOwner=ADD&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:05:54'),
(524, 'EBPLS', 'part=4&class_type=Permits&genpin=Bff2312&itemID_=1223&addbus=addbus&owner_id=6&permit_type=Business&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 23:06:02'),
(525, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&addbus=addbus&owner_id=6&permit_type=Business&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: fupload=:  stat=New:  business_name=business ko to:  business_branch=None:  business_scale=MICRO:  business_payment_mode=QUARTERLY:  comment=:  business_building_name=:  business_street=manambit:  business_pro_desc=QUEZON:  business_city_desc=LOPEZ:  business_district_code=:  business_barangay_code=:  business_zone_code=:  business_zip_code=4316:  business_contact_no=:  business_fax_no=:  business_date_established=2010/10/29:  business_no_del_vehicles=0:  business_start_date=2010/10/29:  business_location_desc=:  business_occupancy_code=gfg:  business_remarks=:  business_category_code=SIN:  employees_M=0:  employees_F=0:  business_email_address=:  business_dot_acr_no=:  business_dti_reg_no=:  business_sec_reg_no=:  business_dti_reg_date=2010/10/29:  business_tin_reg_no=:  business_nso_assigned_no=:  business_industry_sector_code=001:  business_nso_estab_id=:  business_main_offc_name=:  business_main_offc_lot_no=:  business_main_offc_street_no=:  business_main_offc_tin_no=:  business_phone_no=:  main_office_prov=:  business_main_offc_city_code=:  business_main_offc_district_code=:  business_main_offc_barangay_code=:  business_main_offc_zone_code=:  business_main_offc_zip_code=:  regname=:  paidemp=:  ecoorg=1:  ecoarea=1:  biztype=Franchise:  pcname=:  pcaddress=: :', '2010-10-29 23:06:51'),
(526, 'EBPLS', 'part=4&itemID_1221&upit=1224&permit_type=Business&owner_id=6&addbiz=Save&1stat=New&business_id=4&fr=bs&stat=New&genpin=Bff2312\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: fupload=:  stat=New:  business_name=business ko to:  business_branch=None:  business_scale=MICRO:  business_payment_mode=QUARTERLY:  comment=:  business_building_name=:  business_street=manambit:  business_pro_desc=QUEZON:  business_city_desc=LOPEZ:  business_district_code=:  business_barangay_code=:  business_zone_code=:  business_zip_code=4316:  business_contact_no=:  business_fax_no=:  business_date_established=2010/10/29:  business_no_del_vehicles=0:  business_start_date=2010/10/29:  business_location_desc=:  business_occupancy_code=gfg:  business_remarks=:  business_category_code=SIN:  employees_M=0:  employees_F=0:  business_email_address=:  business_dot_acr_no=:  business_dti_reg_no=:  business_sec_reg_no=:  business_dti_reg_date=2010/10/29:  business_tin_reg_no=:  business_nso_assigned_no=:  business_industry_sector_code=001:  business_nso_estab_id=:  business_main_offc_name=:  business_main_offc_lot_no=:  business_main_offc_street_no=:  business_main_offc_tin_no=:  business_phone_no=:  main_office_prov=:  business_main_offc_city_code=:  business_main_offc_district_code=:  business_main_offc_barangay_code=:  business_main_offc_zone_code=:  business_main_offc_zip_code=:  regname=:  paidemp=:  ecoorg=1:  ecoarea=1:  biztype=Franchise:  pcname=:  pcaddress=: :', '2010-10-29 23:06:51'),
(527, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&PROCESS=&mtopsearch=SEARCH&genpin=Bff2312\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-29 23:07:16'),
(528, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&PROCESS=&mtopsearch=SEARCH&genpin=Bff2312\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=:  business_capital_investment=0.00: :', '2010-10-29 23:07:27'),
(529, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=:  business_capital_investment=0.00: :', '2010-10-29 23:07:34'),
(530, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:07:38'),
(531, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:07:52'),
(532, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:01'),
(533, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:07'),
(534, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:09'),
(535, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:10'),
(536, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:12'),
(537, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=4212&owner_id=6&com=assess&permit_type=Business&stat=New&business_id=4&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:16'),
(538, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=6&business_id=4&istat=New&busItem=Business&stat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:08:16'),
(539, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:08:42'),
(540, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:08:44'),
(541, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:08:45'),
(542, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-29 23:08:50'),
(543, 'EBPLS', 'natureid=1&action_=1&actionID=1&part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&natureaction=Edit&orderbyasde=1&reftype=bus\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-10-29 23:08:52'),
(544, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: idescription=SOFTWARE:  iPsicCode=10: :', '2010-10-29 23:09:03'),
(545, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-29 23:09:06'),
(546, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-29 23:09:07'),
(547, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:09:08'),
(548, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-29 23:09:10'),
(549, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=4:  acode=:  atype=DEBIT: :', '2010-10-29 23:09:31'),
(550, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nctc\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: : Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-29 23:09:36'),
(551, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nctc: Subcommand: 0: id: 0: Data: individual_interest_rate=2:  individual_ceiling_rate=500.00:  individual_penalty_date=1:  corporate_interest_rate=5:  corporate_ceiling_rate=10000.00:  corporate_penalty_date=1: :', '2010-10-29 23:09:40'),
(552, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-29 23:09:43'),
(553, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-29 23:09:53'),
(554, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nctc\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-29 23:09:56'),
(555, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: ebpls_nctc: Subcommand: 0: id: 0: Data: individual_interest_rate=2:  individual_ceiling_rate=500.00:  individual_penalty_date=1:  corporate_interest_rate=5:  corporate_ceiling_rate=10000.00:  corporate_penalty_date=1: :', '2010-10-29 23:10:00'),
(556, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nindustry&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:10:01'),
(557, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&is_desc=ASC\nMenu: 0: Module: ebpls_nindustry: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-29 23:10:02'),
(558, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_area&is_desc=ASC\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-29 23:10:03'),
(559, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_org&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_area: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-29 23:10:05'),
(560, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_org: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-29 23:10:07'),
(561, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_npermitform: Subcommand: 0: id: 0: Data: permit_type=Business:  permit_header=:  permit_date=false:  permit_sequence=: :', '2010-10-29 23:10:14'),
(562, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-29 23:10:16'),
(563, 'EBPLS', 'part=4&class_type=Preference&busItem=ebpls_ninterestsur&action_=7&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nannouncement: Subcommand: 0: id: 0: Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-29 23:10:19'),
(564, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: ebpls_npenalty: Subcommand: : id: 0: Data: iRenewalDate=:  iLGUPenalty=:  iIndicator=1:  iIndicator=2:  SurType=1:  SurType=2:  iLGUInterest=:  iActivate=false:  IntType=1:  IntType=2:  FeeOnly=1:  FeeOnly=2:  FeeOnly=3:  iSurchargePay=:  iRemarks=: :', '2010-10-29 23:10:36'),
(565, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:10:37'),
(566, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Motorized\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-29 23:10:38'),
(567, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-29 23:10:41'),
(568, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-29 23:10:42'),
(569, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-29 23:10:42'),
(570, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-29 23:10:43'),
(571, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=CTC\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-29 23:10:44'),
(572, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Tax/Fee\nMenu: 0: Module: : Subcommand: : id: 0: Data: ctc_select=: :', '2010-10-29 23:10:44'),
(573, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=System\nMenu: 0: Module: : Subcommand: : id: 0: Data: checkid1=2010/10/29:  checkid2=2010/10/29:  col_sel=: :', '2010-10-29 23:10:48'),
(574, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data: date_from=2010/10/29:  date_to=2010/10/29:  users=:  buss_select=: :', '2010-10-29 23:10:52'),
(575, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:10:53'),
(576, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:10:54'),
(577, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:10:55'),
(578, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:10:56'),
(579, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=4212&owner_id=6&com=assess&permit_type=Business&stat=New&business_id=4&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:11:01'),
(580, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=6&business_id=4&istat=New&busItem=Business&stat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:11:01'),
(581, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:11:43'),
(582, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:11:44'),
(583, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:11:45'),
(584, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:11:45'),
(585, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:11:48'),
(586, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:11:49'),
(587, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:11:49'),
(588, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=5212&permitid=&owner_id=6&com=approve&permit_type=Business&stat=New&business_id=4&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:11:51'),
(589, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=: :', '2010-10-29 23:11:59'),
(590, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:12:03'),
(591, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=4212&owner_id=6&com=edit&permit_type=Business&stat=New&business_id=4&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:12:05'),
(592, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=6&business_id=4&istat=New&busItem=Business&stat=New\nMenu: 0: Module: : Subcommand: edit: id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:12:05'),
(593, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:15:27'),
(594, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:15:30'),
(595, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:32'),
(596, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:33'),
(597, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:34'),
(598, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:34'),
(599, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:37'),
(600, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:58'),
(601, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:15:59'),
(602, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:16:00'),
(603, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:16:23'),
(604, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:16:25'),
(605, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:16:36'),
(606, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:15'),
(607, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:22'),
(608, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:24'),
(609, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:30'),
(610, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:33'),
(611, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:37'),
(612, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:41'),
(613, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:43'),
(614, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:17:49'),
(615, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:04'),
(616, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:06'),
(617, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:08'),
(618, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:18'),
(619, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:22'),
(620, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&mtopadd=ADD&stat=New&busItem=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:38'),
(621, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:18:46'),
(622, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:48'),
(623, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:49'),
(624, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&mtopadd=ADD&stat=New&busItem=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:18:52'),
(625, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:18:58'),
(626, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:19:05'),
(627, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:19:14'),
(628, 'EBPLS', 'part=4&class_type=Permits&permit_type=Motorized&busItem=Motorized&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:19:15'),
(629, 'EBPLS', 'part=4&class_type=Permits&permit_type=Motorized&busItem=Motorized&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-29 23:19:15'),
(630, 'EBPLS', 'part=4&class_type=Permits&permit_type=Motorized&busItem=Motorized&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:24'),
(631, 'EBPLS', 'part=4&class_type=Permits&permit_type=Motorized&busItem=Motorized&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:29'),
(632, 'EBPLS', 'part=4&class_type=Permits&permit_type=Motorized&busItem=Motorized&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:34'),
(633, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:35'),
(634, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:37'),
(635, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:41'),
(636, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:44'),
(637, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:48'),
(638, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:50'),
(639, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:52'),
(640, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:19:54'),
(641, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:20:04'),
(642, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:20:06'),
(643, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:20:56'),
(644, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:25:16'),
(645, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:25:19'),
(646, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:27:40'),
(647, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:27:43'),
(648, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:27:45'),
(649, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:28:04'),
(650, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=5212&permitid=&owner_id=2&com=approve&permit_type=Business&stat=New&business_id=2&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:28:09'),
(651, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-29 23:28:38'),
(652, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-29 23:28:51'),
(653, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-29 23:29:27'),
(654, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:29:29'),
(655, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=4212&owner_id=1&com=assess&permit_type=Business&stat=ReNew&business_id=1&busItem=Business&istat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:29:35'),
(656, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=1&business_id=1&istat=ReNew&busItem=Business&stat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-29 23:29:36'),
(657, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=1&business_id=1&istat=ReNew&busItem=Business&stat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:29:43'),
(658, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=4212&owner_id=1&com=assess&permit_type=Business&stat=ReNew&business_id=1&busItem=Business&istat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:29:47'),
(659, 'EBPLS', 'part=4&class_type=Permits&itemID_=4212&owner_id=1&business_id=1&istat=ReNew&busItem=Business&stat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:29:47'),
(660, 'EBPLS', 'part=4&class_type=Permits&newpred=0&noregfee=0&itemID_=5212&owner_id=1&com=approve&permit_type=Business&stat=ReNew&business_id=1&busItem=Business&istat=ReNew\nMenu: 0: Module: : Subcommand: : id: 0: Data: new_cap1=500000.00: :', '2010-10-29 23:29:52'),
(661, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-29 23:55:48'),
(662, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-29 23:55:59'),
(663, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:56:11'),
(664, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:57:09'),
(665, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:57:32'),
(666, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:58:39'),
(667, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:59:31'),
(668, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-29 23:59:33'),
(669, 'EBPLS', 'part=4\n', '2010-10-30 11:37:44'),
(670, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\n', '2010-10-30 11:37:51'),
(671, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\n', '2010-10-30 11:37:54'),
(672, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 11:37:55');
INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(673, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:37:56'),
(674, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:37:58'),
(675, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:38:03'),
(676, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:38:08'),
(677, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:38:16'),
(678, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:38:30'),
(679, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:38:34'),
(680, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-30 11:38:37'),
(681, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-30 11:38:38'),
(682, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:38:47'),
(683, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:39:16'),
(684, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:39:20'),
(685, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:39:23'),
(686, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=1:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:40:09'),
(687, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nTFO: Subcommand: : id: : Data: iDesc=1:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 11:40:12'),
(688, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:40:13'),
(689, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 11:40:28'),
(690, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:40:39'),
(691, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:40:50'),
(692, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:40:52'),
(693, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:40:57'),
(694, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:41:06'),
(695, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 11:41:07'),
(696, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:41:10'),
(697, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:41:11'),
(698, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:41:33'),
(699, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=dd:  feeamount=dd:  ptype=New:  MFees=: :', '2010-10-30 11:43:30'),
(700, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:49:26'),
(701, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:49:28'),
(702, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:49:34'),
(703, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 11:49:48'),
(704, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:49:51'),
(705, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:49:54'),
(706, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:49:56'),
(707, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 11:49:59'),
(708, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:50:00'),
(709, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:50:14'),
(710, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:50:15'),
(711, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 11:50:17'),
(712, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 11:50:19'),
(713, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 11:52:38'),
(714, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:52:42'),
(715, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0&owner_id=4&com=Edit&feet=Motorized\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=12:  feeamount=12:  ptype=New:  MFees=: :', '2010-10-30 11:52:59'),
(716, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0&owner_id=4&com=Edit&feet=Motorized\nMenu: 0: Module: ebpls_notherfees: Subcommand: Edit: id: 0: Data: feet=Motorized:  feedesc=ff:  feeamount=12:  ptype=New:  MFees=0: :', '2010-10-30 11:54:41'),
(717, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: Edit: id: 0: Data: feet=Motorized:  feedesc=ff:  feeamount=12:  ptype=New:  MFees=0: :', '2010-10-30 11:55:32'),
(718, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:55:36'),
(719, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:55:40'),
(720, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=ff:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 11:55:44'),
(721, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: : id: : Data: feet=Motorized:  feedesc=f:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:03:57'),
(722, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:04:04'),
(723, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:07:46'),
(724, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: : Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:08:30'),
(725, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: : Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:08:42'),
(726, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:08:45'),
(727, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:09:08'),
(728, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: : Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:09:57'),
(729, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: : Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:15:34'),
(730, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:15:35'),
(731, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:15:40'),
(732, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:15:42'),
(733, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:16:17'),
(734, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:16:24'),
(735, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:16:30'),
(736, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 12:16:33'),
(737, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:16:35'),
(738, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:16:36'),
(739, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:16:38'),
(740, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:16:40'),
(741, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:16:42'),
(742, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:18:05'),
(743, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=mm:  ptype=New:  userenew=false: :', '2010-10-30 12:18:29'),
(744, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=mm:  ptype=New:  userenew=false: :', '2010-10-30 12:18:29'),
(745, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:18:31'),
(746, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:18:32'),
(747, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:18:33'),
(748, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:18:38'),
(749, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:18:44'),
(750, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=1:  amt[0]=:  rangelow[1]=1:  rangehigh[1]=0:  amt[1]=:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:18:51'),
(751, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=1:  amt[0]=:  rangelow[1]=1:  rangehigh[1]=0:  amt[1]=:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:18:53'),
(752, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:20:27'),
(753, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nboatfees&action_=8&permit_type=Fishery&com=Edit&boat_type=6&trans=New&updateit=1&addrange=addr\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:20:57'),
(754, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nboatfees&action_=8&permit_type=Fishery&com=Edit&boat_type=6&trans=New&updateit=1&addrange=addr\nMenu: 0: Module: ebpls_nboatfees: Subcommand: Edit: id: 0: Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=1:  amt[0]=10.00:  rangelow[1]=1:  rangehigh[1]=0:  amt[1]=10.00:  uom=m:  ptype=New: :', '2010-10-30 12:20:59'),
(755, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: Edit: id: : Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:21:03'),
(756, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:21:09'),
(757, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:21:21'),
(758, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=5:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:21:28'),
(759, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=5:  uom=mm:  ptype=New:  userenew=false: :', '2010-10-30 12:21:31'),
(760, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=5:  uom=mm:  ptype=New:  userenew=false: :', '2010-10-30 12:21:33'),
(761, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:21:39'),
(762, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:21:47'),
(763, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:21:52'),
(764, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:29:57'),
(765, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nboatfees&action_=8&permit_type=Fishery&com=Edit&boat_type=6&trans=New&updateit=1&addrange=addr\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:30:31'),
(766, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: Edit: id: 0: Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=1:  amt[0]=1100.00:  rangelow[1]=1:  rangehigh[1]=0:  amt[1]=100.00:  uom=m:  ptype=New: :', '2010-10-30 12:31:42'),
(767, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:32:29'),
(768, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 12:41:01'),
(769, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:41:03'),
(770, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:41:05'),
(771, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:41:08'),
(772, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:42:05'),
(773, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&itemEvent=1&data_item=0&permit_type=Fishery&boat_type=\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:42:16'),
(774, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&permit_type=Fishery&com=Edit&boat_type=1&trans=New&updateit=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: : Data: culture_type=2:  fee_type=1:  constamt=:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:42:39'),
(775, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&itemEvent=1&data_item=0&permit_type=Fishery&boat_type=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: Edit: id: 0: Data: culture_type=2:  constamt=100.00:  uom=m: :', '2010-10-30 12:42:42'),
(776, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: : Data: culture_type=2:  constamt=100.00:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:42:43'),
(777, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&itemEvent=1&data_item=0&permit_type=Fishery&boat_type=\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:43:36'),
(778, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: : Data: culture_type=2:  fee_type=1:  constamt=:  uom=1:  ptype=New:  userenew=false: :', '2010-10-30 12:43:50'),
(779, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:43:51'),
(780, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:43:53'),
(781, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:43:56'),
(782, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:43:59'),
(783, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:44:01'),
(784, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:44:02'),
(785, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:44:05'),
(786, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:44:08'),
(787, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:44:12'),
(788, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:44:16'),
(789, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:44:59'),
(790, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&permit_type=Fishery&com=Edit&boat_type=2&trans=New&updateit=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:45:07'),
(791, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&itemEvent=1&data_item=0&permit_type=Fishery&boat_type=2\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: Edit: id: 0: Data: culture_type=2:  constamt=12.00:  uom=1: :', '2010-10-30 12:45:11'),
(792, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: : Data: culture_type=2:  constamt=12.00:  uom=1:  ptype=New:  userenew=false: :', '2010-10-30 12:45:14'),
(793, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:47:59'),
(794, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:47:59'),
(795, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:48:00'),
(796, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:48:03'),
(797, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:48:03'),
(798, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 12:48:06'),
(799, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:48:07'),
(800, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 12:48:09'),
(801, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:48:15'),
(802, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=2:  rangelow[0]=0:  rangehigh[0]=:  amt[0]=:  rangelow[1]=:  rangehigh[1]=0:  amt[1]=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:48:53'),
(803, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: : id: : Data: boat_type=6:  no_range=5:  uom=m:  ptype=New:  userenew=false: :', '2010-10-30 12:49:10'),
(804, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:49:11'),
(805, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&permit_type=Fishery&com=Edit&boat_type=2&trans=New&updateit=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:49:15'),
(806, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&action_=8&itemEvent=1&data_item=0&permit_type=Fishery&boat_type=2\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: Edit: id: 0: Data: culture_type=2:  constamt=12.00:  uom=1: :', '2010-10-30 12:49:16'),
(807, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: Edit: id: 0: Data: culture_type=2:  constamt=12.00:  uom=1: :', '2010-10-30 12:49:18'),
(808, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 12:53:44'),
(809, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:53:48'),
(810, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=3:  acode=:  atype=DEBIT: :', '2010-10-30 12:53:52'),
(811, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nctc\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 12:54:10'),
(812, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&is_desc=ASC\nMenu: 0: Module: ebpls_nctc: Subcommand: 0: id: 0: Data: individual_interest_rate=2:  individual_ceiling_rate=500.00:  individual_penalty_date=1:  corporate_interest_rate=5:  corporate_ceiling_rate=10000.00:  corporate_penalty_date=1: :', '2010-10-30 12:57:35'),
(813, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&action_=8&itemEvent=1&data_item=0&com=edit&bbo=2\nMenu: 0: Module: ebpls_npermitform: Subcommand: 0: id: 0: Data: permit_type=Business:  permit_header=:  permit_date=false:  permit_sequence=: :', '2010-10-30 13:00:07'),
(814, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&action_=8&itemEvent=1&data_item=0&com=edit&bbo=3\nMenu: 0: Module: ebpls_npermitform: Subcommand: edit: id: 2: Data: permit_type=Peddlers:  permit_header=PED:  permit_date=false:  permit_sequence=00000000001: :', '2010-10-30 13:00:08'),
(815, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_npermitform&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_npermitform: Subcommand: edit: id: 3: Data: permit_type=:  permit_header=:  permit_date=false:  permit_sequence=: :', '2010-10-30 13:00:11'),
(816, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_npermitform: Subcommand: 0: id: : Data: permit_type=Business:  permit_header=:  permit_date=false:  permit_sequence=: :', '2010-10-30 13:29:09'),
(817, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:29:14'),
(818, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:29:17'),
(819, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:29:54'),
(820, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:30:18'),
(821, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:30:33'),
(822, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:30:39'),
(823, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:31:47'),
(824, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:35:55'),
(825, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:35:58'),
(826, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:36:00'),
(827, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:44:37'),
(828, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=1:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:44:43'),
(829, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 13:44:47'),
(830, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&is_desc=ASC\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-10-30 13:46:53'),
(831, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&com=edit&bbo=1\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-30 13:47:00'),
(832, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&com=edit&bbo=2\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: edit: id: 1: Data: nCode=Filipino: :', '2010-10-30 13:47:01'),
(833, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nctc\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: edit: id: 2: Data: nCode=Chinese: :', '2010-10-30 13:54:03'),
(834, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nctc: Subcommand: 0: id: 0: Data: individual_interest_rate=2:  individual_ceiling_rate=500.00:  individual_penalty_date=1:  corporate_interest_rate=5:  corporate_ceiling_rate=10000.00:  corporate_penalty_date=1: :', '2010-10-30 13:54:06'),
(835, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 13:54:11'),
(836, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 13:59:02'),
(837, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 13:59:07'),
(838, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 13:59:11'),
(839, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 14:00:39'),
(840, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-10-30 14:03:39'),
(841, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 14:04:29'),
(842, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=:  business_barangay_code=:  biz_id=:  parcel=:  lotpin=QZ-QZ---: :', '2010-10-30 14:04:35'),
(843, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:04:37'),
(844, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:09:54'),
(845, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:09:57'),
(846, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:09:58'),
(847, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nlotpin&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:10:05'),
(848, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nlotpin: Subcommand: 0: id: 0: Data: business_district_code=1:  business_barangay_code=1:  biz_id=1:  parcel=:  lotpin=QZ-QZ-QZ--: :', '2010-10-30 14:11:14'),
(849, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: 0: id: 0: Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-30 14:11:33'),
(850, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&com=edit&bbo=2&orderkey=eaid&is_asc=DESC&page=1\nMenu: 0: Module: ebpls_nannouncement: Subcommand: : id: : Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-30 14:16:15'),
(851, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: edit: id: 2: Data: announcements=this is a sample annoucement hehehe:  announced_by=manok:  sms_send=false: :', '2010-10-30 14:16:17'),
(852, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: : id: : Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-30 14:19:15'),
(853, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_ncitizenship: Subcommand: 0: id: : Data: nCode=Filipino: :', '2010-10-30 14:21:44'),
(854, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 14:21:45'),
(855, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 14:21:47'),
(856, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 14:21:48'),
(857, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-10-30 14:21:49'),
(858, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 14:21:52'),
(859, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ncitizenship&action_=8&itemEvent=1&data_item=0&orderbyasde=1\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:21:57'),
(860, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 14:25:58');
INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(861, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: : Data: nCode=: :', '2010-10-30 14:26:00'),
(862, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-10-30 14:26:01'),
(863, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:26:03'),
(864, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nboatfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:26:06'),
(865, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nboatfees: Subcommand: 0: id: 0: Data: boat_type=6:  no_range=2:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 14:26:08'),
(866, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=100:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 14:27:12'),
(867, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:27:13'),
(868, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nfishcfees&permit=others&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:27:15'),
(869, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nenginetype&is_desc=ASC\nMenu: 0: Module: ebpls_nfishcfees: Subcommand: 0: id: 0: Data: culture_type=2:  fee_type=1:  constamt=:  uom=:  ptype=New:  userenew=false: :', '2010-10-30 14:27:16'),
(870, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nenginetype: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:27:17'),
(871, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:27:53'),
(872, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_nfishact&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:28:03'),
(873, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_area&is_desc=ASC\nMenu: 0: Module: ebpls_nfishact: Subcommand: 0: id: 0: Data: nCode=: :', '2010-10-30 14:31:08'),
(874, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_org&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_area: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-30 14:34:04'),
(875, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_neconomic_org: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-30 14:35:39'),
(876, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=1:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-30 14:36:45'),
(877, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=1:  iZone=: :', '2010-10-30 14:40:15'),
(878, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=LP:  iDistrict=:  iBLGFCode=: :', '2010-10-30 14:41:59'),
(879, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 14:42:17'),
(880, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 14:42:45'),
(881, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&com=edit&bbo=LUC11&orderkey=city_municipality_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 14:42:54'),
(882, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: edit: id: LUC11: Data: iProvince=2:  iLGUCode=LUC11:  iLGUDescription=LUCENA:  iBLGFCode=LUC: :', '2010-10-30 14:42:57'),
(883, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 14:44:00'),
(884, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:44:51'),
(885, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:45:12'),
(886, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&action_=8&itemEvent=1&data_item=0&com=edit&bcode=SIN\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:48:13'),
(887, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&action_=8&itemEvent=1&data_item=0&com=edit&bcode=SIN\nMenu: 0: Module: ebpls_nownership: Subcommand: edit: id: 0: Data: ownership_code=SIN:  ownership_type=Single Proprietorship:  exemption=0:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:48:16'),
(888, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&action_=8&itemEvent=1&data_item=0&com=edit&bcode=SIN\nMenu: 0: Module: ebpls_nownership: Subcommand: edit: id: 0: Data: ownership_code=SIN:  ownership_type=Single Proprietorship:  exemption=0:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:48:22'),
(889, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&action_=8&itemEvent=1&data_item=0&com=edit&bcode=SIN\nMenu: 0: Module: ebpls_nownership: Subcommand: edit: id: 0: Data: ownership_code=SIN:  ownership_type=Single Proprietorship:  exemption=0:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:48:25'),
(890, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: edit: id: 0: Data: ownership_code=SIN:  ownership_type=Single Proprietorship:  exemption=0:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:48:35'),
(891, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false:  x[3]=false: :', '2010-10-30 14:50:14'),
(892, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_noccupancy&is_desc=ASC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-10-30 15:02:45'),
(893, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nindustry&is_desc=ASC\nMenu: 0: Module: ebpls_noccupancy: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-30 15:05:48'),
(894, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nindustry: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-30 15:11:01'),
(895, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nreportsign&is_desc=ASC\nMenu: 0: Module: ebpls_nindustry: Subcommand: : id: : Data: nCode=:  nType=: :', '2010-10-30 15:11:04'),
(896, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:11:28'),
(897, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:11:30'),
(898, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:11:33'),
(899, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:11:34'),
(900, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:14:18'),
(901, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: ebpls_nreportsign: Subcommand: 0: id: 0: Data: iReportFile=Blacklisted Business Establishment:  iSign=1:  iType=1: :', '2010-10-30 15:14:22'),
(902, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:30'),
(903, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:37'),
(904, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:40'),
(905, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:41'),
(906, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:45'),
(907, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:46'),
(908, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:14:47'),
(909, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:48'),
(910, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:50'),
(911, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:51'),
(912, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:56'),
(913, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:57'),
(914, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:14:58'),
(915, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:15:00'),
(916, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:15:02'),
(917, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=&mtopsearch=SEARCH&disapp=1\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:15:03'),
(918, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Business&busItem=Business&search_businesstype=&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:15:04'),
(919, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:12'),
(920, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:14'),
(921, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:16'),
(922, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:17'),
(923, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:19'),
(924, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:24'),
(925, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:25'),
(926, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:28'),
(927, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:30'),
(928, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:32'),
(929, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:43:34'),
(930, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:43:35'),
(931, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&mtopadd=ADD&stat=New&busItem=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 15:43:39'),
(932, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 15:43:49'),
(933, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 15:43:50'),
(934, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:51'),
(935, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 15:43:51'),
(936, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 16:01:29'),
(937, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 16:01:29'),
(938, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 16:01:32'),
(939, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 16:01:41'),
(940, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&mtopadd=ADD&stat=New&busItem=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:01:47'),
(941, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:04'),
(942, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&mtopadd=ADD&stat=New&busItem=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:06'),
(943, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:09'),
(944, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:10'),
(945, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:12'),
(946, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:13'),
(947, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:14'),
(948, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:15'),
(949, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&mtopadd=ADD&stat=New&busItem=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:17'),
(950, 'EBPLS', 'part=4&class_type=Permits&permit_type=Fishery&busItem=Fishery&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:19'),
(951, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:19'),
(952, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:20'),
(953, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:21'),
(954, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:22'),
(955, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&mtopadd=ADD&stat=New&busItem=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:23'),
(956, 'EBPLS', 'part=4&class_type=Permits&busItem=Peddlers&itemID_=1221&permit_type=Peddlers&mtopadd=ADD&stat=New&busItem=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:27'),
(957, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:08:28'),
(958, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:29'),
(959, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:08:30'),
(960, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:06'),
(961, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:07'),
(962, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:08'),
(963, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:10'),
(964, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:12'),
(965, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&mtopadd=ADD&stat=New&busItem=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:16'),
(966, 'EBPLS', 'part=4&selMode=FAQS\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 16:56:26'),
(967, 'EBPLS', 'part=4&selMode=ebpls_nadmin&action_=2\nMenu: 0: Module: FAQS: Subcommand: 0: id: 0: Data::', '2010-10-30 16:56:28'),
(968, 'EBPLS', 'part=4&selMode=links\nMenu: 0: Module: ebpls_nadmin: Subcommand: 0: id: 0: Data: iAdminPassword=: :', '2010-10-30 16:56:30'),
(969, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: links: Subcommand: 0: id: 0: Data::', '2010-10-30 16:56:32'),
(970, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: links: Subcommand: 0: id: 0: Data::', '2010-10-30 16:56:32'),
(971, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 16:56:33'),
(972, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 16:56:35'),
(973, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 16:56:36'),
(974, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 16:56:37'),
(975, 'EBPLS', 'part=4&class_type=Permits&itemID_=1223&business_id=&owner_id=0&com=search&permit_type=Business&stat=&busItem=Business&search_type=Owner\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 16:56:39'),
(976, 'EBPLS', 'part=4&itemID_=1223&class_type=Permits&tag=Business&permit_type=Business&busItem=Business&owner_id=0&stat=\nMenu: 0: Module: : Subcommand: search: id: 0: Data: search_last=:  search_first=: :', '2010-10-30 16:56:43'),
(977, 'EBPLS', 'part=4&itemID_=1221&addbiz=Select&owner_id=1&permit_type=Business&busItem=Business&mainfrm=Main&stat=New\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_last=isles:  search_first=: :', '2010-10-30 16:56:46'),
(978, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 16:56:58'),
(979, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 16:56:58'),
(980, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:16'),
(981, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:18'),
(982, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:19'),
(983, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:21'),
(984, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:21'),
(985, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Motorized&busItem=Motorized&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:22'),
(986, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:23'),
(987, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Fishery&busItem=Fishery&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:24'),
(988, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00: :', '2010-10-30 17:34:26'),
(989, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:34:28'),
(990, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:34:30'),
(991, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC&page=1\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:34:32'),
(992, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: 0: id: 0: Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-30 17:34:46'),
(993, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_neconomic_org&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: : id: : Data: announcements=:  announced_by=:  sms_send=false: :', '2010-10-30 17:34:53'),
(994, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_neconomic_org: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-30 17:34:56'),
(995, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_neconomic_org: Subcommand: 0: id: 0: Data: nCode=:  nType=: :', '2010-10-30 17:34:57'),
(996, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nchart&action_=8&itemEvent=1&data_item=0&orderbyasdes=1\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-10-30 17:34:57'),
(997, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_nchart: Subcommand: 0: id: 0: Data: nAcctDesc=2:  acode=:  atype=DEBIT: :', '2010-10-30 17:34:58'),
(998, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-30 17:34:59'),
(999, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:00'),
(1000, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:00'),
(1001, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:01'),
(1002, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:06'),
(1003, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:07'),
(1004, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:07'),
(1005, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-10-30 17:35:08'),
(1006, 'EBPLS', 'part=4&class_type=Permits&genpin=&itemID_=1223&addbus=addbus&owner_id=0&permit_type=Business&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:10'),
(1007, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:13'),
(1008, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:35:14'),
(1009, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:35:15'),
(1010, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:17'),
(1011, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:35:19'),
(1012, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=4212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:20'),
(1013, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:22'),
(1014, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:22'),
(1015, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:24'),
(1016, 'EBPLS', 'part=4&class_type=Permits&genpin=&itemID_=1223&addbus=addbus&owner_id=0&permit_type=Business&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:28'),
(1017, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:35:32'),
(1018, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:38:11'),
(1019, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&busItem=Franchise&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:38:12'),
(1020, 'EBPLS', 'part=4&class_type=Permits&permit_type=Franchise&busItem=Franchise&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:38:15'),
(1021, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Franchise&mtopadd=ADD&stat=New&busItem=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:38:17'),
(1022, 'EBPLS', 'part=4\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=1:  owner_city_code=:  owner_district_code=1:  owner_phone_no=:  owner_barangay_code=1:  owner_gsm_no=:  owner_zone_code=1:  owner_email_address=:  owner_others=: :', '2010-10-30 17:46:58'),
(1023, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=1:  owner_city_code=:  owner_district_code=1:  owner_phone_no=:  owner_barangay_code=1:  owner_gsm_no=:  owner_zone_code=1:  owner_email_address=:  owner_others=: :', '2010-10-30 17:47:00'),
(1024, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Motorized\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:47:01'),
(1025, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Occupational\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:02'),
(1026, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:02'),
(1027, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:03'),
(1028, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:06'),
(1029, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:06'),
(1030, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:07'),
(1031, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:47:08'),
(1032, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:47:10'),
(1033, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:47:10'),
(1034, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:47:11'),
(1035, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&mtopadd=ADD&stat=New&busItem=Peddlers\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:47:12'),
(1036, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:47:52'),
(1037, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-10-30 17:47:53'),
(1038, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&com=edit&bbo=4316&orderkey=zip_code&is_asc=DESC&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-30 17:47:57'),
(1039, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nZip&is_desc=ASC\nMenu: 0: Module: ebpls_nzip: Subcommand: edit: id: 4316: Data: iLGU=:  iZIP=: :', '2010-10-30 17:48:02'),
(1040, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: : id: : Data: iLGU=:  iZIP=: :', '2010-10-30 17:48:03'),
(1041, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:48:03'),
(1042, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Occupational&busItem=Occupational&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:48:04'),
(1043, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:48:06'),
(1044, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:07'),
(1045, 'EBPLS', 'part=4&class_type=Permits&permit_type=Occupational&busItem=Occupational&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:07'),
(1046, 'EBPLS', 'part=4&class_type=Permits&itemID_=1221&permit_type=Peddlers&busItem=Peddlers&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:08'),
(1047, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=3212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:09'),
(1048, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:10'),
(1049, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:11'),
(1050, 'EBPLS', 'part=4&class_type=Permits&permit_type=Peddlers&busItem=Peddlers&itemID_=2212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:12'),
(1051, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:18'),
(1052, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:20');
INSERT INTO `ebpls_activity_log` (`act_id`, `user_log`, `logged`, `date_input`) VALUES
(1053, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=5212&mtopsearch=SEARCH\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:48:23'),
(1054, 'EBPLS', 'part=4&newpred=0&noregfee=0&class_type=Permits&itemID_=5212&permitid=&owner_id=2&com=approve&permit_type=Business&stat=New&business_id=2&busItem=Business&istat=New\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-10-30 17:48:26'),
(1055, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports\nMenu: 0: Module: : Subcommand: approve: id: 0: Data: decide=1:  dec_comment=approved: :', '2010-10-30 17:48:49'),
(1056, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data::', '2010-10-30 17:48:50'),
(1057, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Motorized\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-30 17:48:52'),
(1058, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:48:53'),
(1059, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=: :', '2010-10-30 17:48:55'),
(1060, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=5:  permit_num=:  owner_last=:  bus_name=:  pin=: :', '2010-10-30 17:49:01'),
(1061, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=32:  owner_last=:  bus_name=:  pin=: :', '2010-10-30 17:49:02'),
(1062, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=14:  date_from=2010/10/30:  date_to=2010/10/30:  brgy_name=1: :', '2010-10-30 17:49:35'),
(1063, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Franchise\nMenu: 0: Module: : Subcommand: : id: 0: Data: bus_selecty=20:  date_from=2010/10/30:  date_to=2010/10/30:  brgy_name=:  list_option=Capital Investment:  range1=0:  range2=0:  list_limit=5: :', '2010-10-30 17:49:48'),
(1064, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:49:48'),
(1065, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:49:50'),
(1066, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=ebpls_fish_permit.php:  owner_last=:  permit_num=: :', '2010-10-30 17:49:55'),
(1067, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=: :', '2010-10-30 17:49:57'),
(1068, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=Fishery\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=ebpls_fish_permit.php:  owner_last=:  permit_num=: :', '2010-10-30 17:49:59'),
(1069, 'EBPLS', 'part=4&class_type=Reports&itemID_=921&busItem=Reports&permit_type=Reports&rpt=System\nMenu: 0: Module: : Subcommand: : id: 0: Data: buss_select=ebpls_fishery_list.php:  date_from=2010/10/30:  date_to=2010/10/30:  brgy_name=1: :', '2010-10-30 17:50:19'),
(1070, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: date_from=2010/10/30:  date_to=2010/10/30:  users=:  buss_select=: :', '2010-10-30 17:51:09'),
(1071, 'EBPLS', 'part=4&itemID_=6&busItem=Settings&permit_type=Settings&settings_type=Syssettings&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: date_from=2010/10/30:  date_to=2010/10/30:  users=:  buss_select=: :', '2010-10-30 17:51:11'),
(1072, 'EBPLS', 'part=4&itemID_=7&busItem=Settings&permit_type=Settings&settings_type=UserManager&item_id=Settings\nMenu: 0: Module: : Subcommand: : id: 0: Data: date_from=2010/10/30:  date_to=2010/10/30:  users=:  buss_select=: :', '2010-10-30 17:51:16'),
(1073, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:19'),
(1074, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings&page=2&orderkey=user_log&is_asc=\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:25'),
(1075, 'EBPLS', 'part=4&itemID_=11&busItem=Settings&permit_type=Settings&settings_type=ActivityLog&item_id=Settings&page=11&orderkey=user_log&is_asc=\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:27'),
(1076, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:49'),
(1077, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:53'),
(1078, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: Settings: Module: : Subcommand: 0: id: 0: Data: dhtkey_1=:  dhtfield_1=username:  frmId=1:  frmId=2: :', '2010-10-30 17:51:53'),
(1079, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:51:54'),
(1080, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:53:33'),
(1081, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-30 17:53:33'),
(1082, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 17:53:34'),
(1083, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-30 17:53:35'),
(1084, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-10-30 17:53:35'),
(1085, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-10-30 17:53:36'),
(1086, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-30 17:53:36'),
(1087, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-10-30 17:53:37'),
(1088, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:53:39'),
(1089, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-10-30 17:53:44'),
(1090, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-10-30 17:53:45'),
(1091, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-10-30 17:53:46'),
(1092, 'EBPLS', 'part=4\n', '2010-11-01 09:37:26'),
(1093, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\n', '2010-11-01 09:37:28'),
(1094, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\n', '2010-11-01 09:37:30'),
(1095, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-01 09:53:46'),
(1096, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-01 09:53:52'),
(1097, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-01 09:54:43'),
(1098, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 10:08:13'),
(1099, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 10:08:14'),
(1100, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 10:08:15'),
(1101, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 10:08:16'),
(1102, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 10:14:39'),
(1103, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-01 10:14:41'),
(1104, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-11-01 10:14:42'),
(1105, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-11-01 10:14:44'),
(1106, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 13:13:09'),
(1107, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=1&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 13:20:37'),
(1108, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 1: Data: iProvince=:  iBLGFCode=: :', '2010-11-01 13:28:21'),
(1109, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-11-01 14:53:47'),
(1110, 'EBPLS', 'part=4&itemID_=1221&class_type=Permits&permit_type=Business&busItem=Business&mtopsearch=SEARCH\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-11-01 14:53:51'),
(1111, 'EBPLS', 'part=4&class_type=Permits&permit_type=Business&busItem=Business&itemID_=1221&mainfrm=Main\nMenu: 0: Module: ebpls_npreferences: Subcommand: 0: id: 0: Data: niLGUProvince=2:  niLGUName=LP:  lgu_add=:  lgu_tel=:  fupload=:  iSinglePermit=false:  iSingleAssessment=false:  iSingleOR=false:  iBackTaxes=false:  ipredcomp=false:  iPayment=false:  iSeparateTaxesFees=false:  iRequire=false:  iUnggoy=false:  iPaywoApprov=false:  iWaivetax=false:  iReset=false: :', '2010-11-01 14:53:52'),
(1112, 'EBPLS', 'part=4&class_type=Permits&busItem=Business&itemID_=1221&permit_type=Business&mtopadd=ADD&stat=New&busItem=Business\nMenu: 0: Module: : Subcommand: : id: 0: Data: business_nature_code=1:  business_capital_investment=0.00:  addrenew=false: :', '2010-11-01 14:53:53'),
(1113, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-11-01 14:56:48'),
(1114, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: : Subcommand: : id: 0: Data: owner_first_name=:  owner_civil_status=Single:  owner_middle_name=:  owner_gender=M:  owner_last_name=:  owner_citizenship=Filipino:  owner_legal_entity=:  owner_birth_date=:  owner_tin_no=:  owner_street=:  owner_province_code=:  owner_city_code=:  owner_district_code=:  owner_phone_no=:  owner_barangay_code=:  owner_gsm_no=:  owner_zone_code=:  owner_email_address=:  owner_others=: :', '2010-11-01 14:56:49'),
(1115, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 14:57:08'),
(1116, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 14:57:21'),
(1117, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:50'),
(1118, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:52'),
(1119, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:53'),
(1120, 'EBPLS', 'part=4&permit_type=Settings&busItem=Settings&item_id=Settings\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:55'),
(1121, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:57'),
(1122, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 16:44:58'),
(1123, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 23:19:45'),
(1124, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 23:20:11'),
(1125, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-01 23:20:13'),
(1126, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-01 23:20:14'),
(1127, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_ndistrict&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-11-01 23:20:15'),
(1128, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-11-02 00:22:57'),
(1129, 'EBPLS', 'part=4&itemID_=1001&busItem=CTC&permit_type=CTC&ctc_type=INDIVIDUAL&item_id=CTC\nMenu: 0: Module: ebpls_ndistrict: Subcommand: 0: id: 0: Data: iLGU=:  iDistrict=:  iBLGFCode=: :', '2010-11-02 00:22:59'),
(1130, 'EBPLS', 'part=4&itemID_=1001&permit_type=CTC&owner_id=0&busItem=CTC&ctc_type=INDIVIDUAL&search=Search\nMenu: CTC: Module: : Subcommand: 0: id: 0: Data: owner_first_name=:  owner_middle_name=:  owner_last_name=:  owner_gender=M: :', '2010-11-02 00:23:05'),
(1131, 'EBPLS', 'part=4&itemID_=1001&permit_type=CTC&owner_id=0&busItem=CTC&ctc_type=INDIVIDUAL&search=Search\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_lastname=: :', '2010-11-02 00:23:08'),
(1132, 'EBPLS', 'part=4&itemID_=1001&owner_id=1&permit_type=CTC&busItem=CTC&ctc_type=INDIVIDUAL&comm=Attach\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: search_lastname=isles: :', '2010-11-02 00:23:12'),
(1133, 'EBPLS', 'part=4&itemID_=1001&owner_id=1&permit_type=CTC&busItem=CTC&ctc_type=INDIVIDUAL&comm=Attach\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: owner_first_name=Manny:  owner_middle_name=H:  owner_last_name=Isles:  owner_gender=M: :', '2010-11-02 00:23:15'),
(1134, 'EBPLS', 'part=4&itemID_=1001&owner_id=1&permit_type=CTC&busItem=CTC&ctc_type=INDIVIDUAL&comm=Attach\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: ctc_code=:  ctc_last_name=Isles:  ctc_first_name=Manny:  ctc_middle_name=H:  ctc_tin_no=:  ctc_address=Lopez   Burgos (Poblacion) First Distirct Lopez:  ctc_gender=M:  ctc_citizenship=Filipino:  ctc_icr_no=:  ctc_place_of_birth=:  ctc_height=:  ctc_civil_status=Single:  ctc_weight=:  ctc_occupation=:  exempted=false:  ctc_basic_tax=0.00:  ctc_additional_tax1=:  ctc_additional_tax1_due=0.00:  ctc_additional_tax2=:  ctc_additional_tax2_due=0.00:  ctc_additional_tax3=:  ctc_additional_tax3_due=0.00:  ctc_total_amount_due=0.00:  ctc_total_interest_due=0.00:  ctc_total_paid=0.00: :', '2010-11-02 08:52:40'),
(1135, 'EBPLS', 'part=4&itemID_=1001&owner_id=1&permit_type=CTC&busItem=CTC&ctc_type=INDIVIDUAL&comm=Attach\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: owner_first_name=Manny:  owner_middle_name=H:  owner_last_name=Isles:  owner_gender=M: :', '2010-11-02 11:15:10'),
(1136, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: ctc_code=:  ctc_last_name=Isles:  ctc_first_name=Manny:  ctc_middle_name=H:  ctc_tin_no=:  ctc_address=Lopez   Burgos (Poblacion) First Distirct Lopez:  ctc_gender=M:  ctc_citizenship=Filipino:  ctc_icr_no=:  ctc_place_of_birth=:  ctc_height=:  ctc_civil_status=Single:  ctc_weight=:  ctc_occupation=:  exempted=false:  ctc_basic_tax=0.00:  ctc_additional_tax1=:  ctc_additional_tax1_due=0.00:  ctc_additional_tax2=:  ctc_additional_tax2_due=0.00:  ctc_additional_tax3=:  ctc_additional_tax3_due=0.00:  ctc_total_amount_due=0.00:  ctc_total_interest_due=0.00:  ctc_total_paid=0.00: :', '2010-11-02 11:42:40'),
(1137, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: : Subcommand: 0: id: 0: Data: ctc_code=:  ctc_last_name=Isles:  ctc_first_name=Manny:  ctc_middle_name=H:  ctc_tin_no=:  ctc_address=Lopez   Burgos (Poblacion) First Distirct Lopez:  ctc_gender=M:  ctc_citizenship=Filipino:  ctc_icr_no=:  ctc_place_of_birth=:  ctc_height=:  ctc_civil_status=Single:  ctc_weight=:  ctc_occupation=:  exempted=false:  ctc_basic_tax=0.00:  ctc_additional_tax1=:  ctc_additional_tax1_due=0.00:  ctc_additional_tax2=:  ctc_additional_tax2_due=0.00:  ctc_additional_tax3=:  ctc_additional_tax3_due=0.00:  ctc_total_amount_due=0.00:  ctc_total_interest_due=0.00:  ctc_total_paid=0.00: :', '2010-11-02 11:42:41'),
(1138, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-02 11:42:43'),
(1139, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-02 11:42:44'),
(1140, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-02 11:42:45'),
(1141, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-11-02 11:42:46'),
(1142, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=Permits\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-02 11:42:51'),
(1143, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nTFO&is_desc=ASC\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-02 11:42:52'),
(1144, 'EBPLS', 'part=4&class_type=Preference&pref_type=Business&selMode=ebpls_nbusiness&action_=0&orderbyasdes=1&reftype=bus&permit_type=Business\nMenu: 0: Module: ebpls_nTFO: Subcommand: 0: id: 0: Data: iDesc=:  iTFOType=1:  itfoindicator=false:  iDefAmount=0.00:  iNoYear=0: :', '2010-11-02 11:42:52'),
(1145, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nannouncement&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nbusiness: Subcommand: 0: id: 0: Data: searcheenat=: :', '2010-11-02 11:42:54'),
(1146, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nannouncement: Subcommand: 0: id: 0: Data: announcements=:  announced_by=:  sms_send=false: :', '2010-11-02 11:42:56'),
(1147, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&com=edit&bbo=2&orderkey=sign_id&is_asc=DESC&page=1\nMenu: 0: Module: ebpls_nsign: Subcommand: 0: id: 0: Data: iName=:  iPosition=:  iOffice=: :', '2010-11-02 11:43:00'),
(1148, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nsign&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: edit: id: 2: Data: iName=:  iPosition=:  iOffice=: :', '2010-11-02 11:43:06'),
(1149, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nsign: Subcommand: : id: : Data: iName=:  iPosition=:  iOffice=: :', '2010-11-02 11:43:10'),
(1150, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nRequirements&is_desc=ASC\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-11-02 11:43:13'),
(1151, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nownership&is_desc=ASC\nMenu: 0: Module: ebpls_nRequirements: Subcommand: 0: id: 0: Data: iDesc=:  ireqindicator=false:  iPermitType=Business: :', '2010-11-02 11:43:15'),
(1152, 'EBPLS', 'part=4\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-02 15:32:13'),
(1153, 'EBPLS', 'part=4&class_type=CTC&permit_type=CTC&busItem=CTC&itemID_=&item_id=CTC\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-02 15:32:15'),
(1154, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-02 15:32:16'),
(1155, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-02 22:08:35'),
(1156, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 08:57:05'),
(1157, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 13:52:11'),
(1158, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 15:11:28'),
(1159, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 20:24:29'),
(1160, 'EBPLS', 'part=4&class_type=Permits&selMode=Permits\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 21:10:38'),
(1161, 'EBPLS', 'part=4&class_type=Preference&selMode=Reference\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 21:33:21'),
(1162, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_nownership: Subcommand: 0: id: 0: Data: ownership_code=:  ownership_type=:  exemption=:  x[1]=false:  x[2]=false: :', '2010-11-03 21:33:23'),
(1163, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=1&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: : id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:33:25'),
(1164, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 1: Data: iProvince=Laguna:  iBLGFCode=LA: :', '2010-11-03 21:33:27'),
(1165, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:33:29'),
(1166, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&com=edit&bbo=2&orderkey=province_code&is_asc=DESC&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:34:04'),
(1167, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: 2: Data: iProvince=Quezon:  iBLGFCode=QZ: :', '2010-11-03 21:34:05'),
(1168, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:34:22'),
(1169, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:34:24'),
(1170, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 21:34:33'),
(1171, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=ASC\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 22:50:00'),
(1172, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=&page=1\nMenu: 0: Module: ebpls_nProvince: Subcommand: edit: id: : Data: iProvince=:  iBLGFCode=: :', '2010-11-03 22:53:12'),
(1173, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&com=edit&bbo=LP&orderkey=city_municipality_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-03 23:01:15'),
(1174, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&com=edit&bbo=LP&orderkey=city_municipality_code&is_asc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: edit: id: LP: Data: iProvince=2:  iLGUCode=LP:  iLGUDescription=Lopez:  iBLGFCode=QZ: :', '2010-11-04 09:08:36'),
(1175, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: edit: id: LP: Data: iProvince=2:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-04 10:27:02'),
(1176, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=2:  iLGUCode=12:  iLGUDescription=:  iBLGFCode=: :', '2010-11-04 10:27:11'),
(1177, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nLGU&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-04 10:27:15'),
(1178, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzip&is_desc=ASC&page=1\nMenu: 0: Module: ebpls_nLGU: Subcommand: : id: : Data: iProvince=1:  iLGUCode=:  iLGUDescription=:  iBLGFCode=: :', '2010-11-04 10:47:25'),
(1179, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nZip&is_desc=ASC\nMenu: 0: Module: ebpls_nzip: Subcommand: 0: id: 0: Data: iLGU=:  iZIP=: :', '2010-11-04 10:47:49'),
(1180, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nzone&is_desc=&page=1\nMenu: 0: Module: ebpls_nzip: Subcommand: : id: : Data: iLGU=:  iZIP=: :', '2010-11-04 10:47:52'),
(1181, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nbarangay&is_desc=&page=1\nMenu: 0: Module: ebpls_nzone: Subcommand: 0: id: 0: Data: iBarangay=:  iZone=: :', '2010-11-04 10:47:53'),
(1182, 'EBPLS', 'part=4&class_type=Preference&permit=others&selMode=ebpls_notherfees&action_=8&itemEvent=1&data_item=0\nMenu: 0: Module: ebpls_nbarangay: Subcommand: 0: id: 0: Data: iDistrict=:  iBarangay=:  iBLGFCode=:  iGZone=false: :', '2010-11-04 10:47:59'),
(1183, 'EBPLS', 'part=4&class_type=Preference&selMode=ebpls_nProvince&is_desc=&page=1\nMenu: 0: Module: ebpls_notherfees: Subcommand: 0: id: 0: Data: feet=Motorized:  feedesc=:  feeamount=:  ptype=New:  MFees=: :', '2010-11-04 10:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_announcement`
--

CREATE TABLE IF NOT EXISTS `ebpls_announcement` (
  `eaid` int(10) NOT NULL AUTO_INCREMENT,
  `announcements` text,
  `announced_by` varchar(255) NOT NULL DEFAULT '',
  `date_modified` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `sms_send` int(1) DEFAULT NULL,
  PRIMARY KEY (`eaid`),
  UNIQUE KEY `eaid` (`eaid`),
  UNIQUE KEY `eaid_2` (`eaid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_announcement`
--

INSERT INTO `ebpls_announcement` (`eaid`, `announcements`, `announced_by`, `date_modified`, `modified_by`, `sms_send`) VALUES
(1, 'About Business Permit renewal!', 'Office of Business Licensing', '2010-08-22', 'EBPLS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_category`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_category` (
  `business_category_code` varchar(20) NOT NULL DEFAULT '',
  `business_category_desc` varchar(255) NOT NULL DEFAULT '',
  `business_category_date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_category_date_updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `tax_exemption` int(12) DEFAULT '0',
  PRIMARY KEY (`business_category_code`),
  UNIQUE KEY `id` (`business_category_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='actually OWNERSHIP TYPE';

--
-- Dumping data for table `ebpls_business_category`
--

INSERT INTO `ebpls_business_category` (`business_category_code`, `business_category_desc`, `business_category_date_registered`, `business_category_date_updated`, `updated_by`, `tax_exemption`) VALUES
('SIN', 'Single Proprietorship', '2010-08-22 11:48:29', '2010-08-22 11:48:29', 'EBPLS', 0),
('REL', 'Religious', '2010-08-22 11:48:46', '2010-08-22 11:50:12', 'EBPLS', 100),
('PAR', 'Partnership', '2010-08-22 11:48:57', '2010-08-22 11:49:26', 'EBPLS', 0),
('COR', 'Corporation', '2010-08-22 11:49:17', '2010-08-22 11:49:17', 'EBPLS', 10),
('COO', 'Cooperative', '2010-08-22 11:49:39', '2010-08-22 11:49:39', 'EBPLS', 100);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_enterprise`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_enterprise` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `business_name` varchar(255) NOT NULL DEFAULT '',
  `business_branch` varchar(255) NOT NULL DEFAULT '''',
  `business_permit_trans_type` varchar(255) NOT NULL DEFAULT '',
  `business_lot_no` varchar(255) NOT NULL DEFAULT '',
  `business_street` varchar(255) NOT NULL DEFAULT '',
  `business_barangay_code` varchar(255) NOT NULL DEFAULT '',
  `business_zone_code` varchar(255) NOT NULL DEFAULT '',
  `business_barangay_name` varchar(255) NOT NULL DEFAULT '',
  `business_district_code` varchar(255) NOT NULL DEFAULT '',
  `business_city_code` varchar(255) NOT NULL DEFAULT '',
  `business_province_code` varchar(255) NOT NULL DEFAULT '',
  `business_zip_code` varchar(255) NOT NULL DEFAULT '',
  `business_contact_no` varchar(255) DEFAULT NULL,
  `business_fax_no` varchar(255) DEFAULT NULL,
  `business_email_address` varchar(255) DEFAULT NULL,
  `business_url` varchar(255) DEFAULT NULL,
  `business_location_desc` varchar(255) DEFAULT NULL,
  `business_building_name` varchar(255) DEFAULT NULL,
  `business_phone_no` varchar(255) DEFAULT NULL,
  `business_category_code` varchar(20) NOT NULL DEFAULT '',
  `business_dot_acr_no` varchar(255) NOT NULL DEFAULT '',
  `business_sec_reg_no` varchar(255) NOT NULL DEFAULT '',
  `business_tin_reg_no` varchar(255) NOT NULL DEFAULT '',
  `business_dti_reg_no` varchar(255) NOT NULL DEFAULT '',
  `business_dti_reg_date` datetime DEFAULT NULL,
  `business_date_established` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_occupancy_code` varchar(20) NOT NULL DEFAULT '',
  `business_offc_code` varchar(20) NOT NULL DEFAULT '',
  `business_capital_investment` decimal(12,2) NOT NULL DEFAULT '0.00',
  `employee_male` int(7) DEFAULT NULL,
  `business_no_del_vehicles` int(5) NOT NULL DEFAULT '0',
  `business_payment_mode` varchar(255) NOT NULL DEFAULT '',
  `business_exemption_code` varchar(20) DEFAULT NULL,
  `business_type_code` varchar(20) NOT NULL DEFAULT '',
  `business_nso_assigned_no` varchar(255) NOT NULL DEFAULT '',
  `business_nso_estab_id` varchar(255) NOT NULL DEFAULT '',
  `business_industry_sector_code` varchar(20) NOT NULL DEFAULT '',
  `business_remarks` varchar(255) DEFAULT NULL,
  `business_status_code` varchar(20) NOT NULL DEFAULT '',
  `business_status_remarks` varchar(255) DEFAULT NULL,
  `business_application_status` varchar(255) NOT NULL DEFAULT '',
  `business_application_status_rem` varchar(255) DEFAULT NULL,
  `business_last_yrs_cap_invest` decimal(12,2) DEFAULT '0.00',
  `business_last_yrs_no_employees` int(7) NOT NULL DEFAULT '1',
  `business_last_yrs_no_employees_male` int(11) NOT NULL DEFAULT '0',
  `business_last_yrs_no_employees_female` int(11) NOT NULL DEFAULT '0',
  `business_last_yrs_dec_gross_sales` decimal(12,2) NOT NULL DEFAULT '0.00',
  `business_retirement_date` datetime DEFAULT NULL,
  `business_retirement_reason` varchar(255) DEFAULT NULL,
  `business_application_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_validity_period` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_req_code` varchar(20) NOT NULL DEFAULT '',
  `business_nature_code` varchar(20) NOT NULL DEFAULT '',
  `business_create_ts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `business_update_by` varchar(25) NOT NULL DEFAULT '',
  `business_update_ts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` longtext NOT NULL,
  `business_scale` enum('MICRO','COTTAGE','SMALL','MEDIUM','LARGE') DEFAULT 'MICRO',
  `retire` int(1) DEFAULT '0',
  `employee_female` int(7) DEFAULT NULL,
  `blacklist` int(1) NOT NULL DEFAULT '0',
  `biztype` varchar(15) NOT NULL DEFAULT '',
  `subsi` int(1) NOT NULL DEFAULT '0',
  `pcname` varchar(50) NOT NULL DEFAULT '',
  `pcaddress` varchar(250) NOT NULL DEFAULT '',
  `regname` varchar(100) NOT NULL DEFAULT '',
  `paidemp` int(10) NOT NULL DEFAULT '0',
  `ecoorg` int(10) NOT NULL DEFAULT '0',
  `ecoarea` int(10) NOT NULL DEFAULT '0',
  `business_plate` int(4) NOT NULL DEFAULT '0',
  `branch_id` int(10) NOT NULL DEFAULT '0',
  `edit_by` varchar(50) NOT NULL DEFAULT '',
  `edit_locked` tinyint(1) NOT NULL DEFAULT '0',
  `black_list_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `black_list_reason` text NOT NULL,
  PRIMARY KEY (`business_id`,`business_name`),
  UNIQUE KEY `id` (`business_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ebpls_business_enterprise`
--

INSERT INTO `ebpls_business_enterprise` (`business_id`, `owner_id`, `business_name`, `business_branch`, `business_permit_trans_type`, `business_lot_no`, `business_street`, `business_barangay_code`, `business_zone_code`, `business_barangay_name`, `business_district_code`, `business_city_code`, `business_province_code`, `business_zip_code`, `business_contact_no`, `business_fax_no`, `business_email_address`, `business_url`, `business_location_desc`, `business_building_name`, `business_phone_no`, `business_category_code`, `business_dot_acr_no`, `business_sec_reg_no`, `business_tin_reg_no`, `business_dti_reg_no`, `business_dti_reg_date`, `business_date_established`, `business_start_date`, `business_occupancy_code`, `business_offc_code`, `business_capital_investment`, `employee_male`, `business_no_del_vehicles`, `business_payment_mode`, `business_exemption_code`, `business_type_code`, `business_nso_assigned_no`, `business_nso_estab_id`, `business_industry_sector_code`, `business_remarks`, `business_status_code`, `business_status_remarks`, `business_application_status`, `business_application_status_rem`, `business_last_yrs_cap_invest`, `business_last_yrs_no_employees`, `business_last_yrs_no_employees_male`, `business_last_yrs_no_employees_female`, `business_last_yrs_dec_gross_sales`, `business_retirement_date`, `business_retirement_reason`, `business_application_date`, `business_validity_period`, `business_req_code`, `business_nature_code`, `business_create_ts`, `business_update_by`, `business_update_ts`, `comment`, `business_scale`, `retire`, `employee_female`, `blacklist`, `biztype`, `subsi`, `pcname`, `pcaddress`, `regname`, `paidemp`, `ecoorg`, `ecoarea`, `business_plate`, `branch_id`, `edit_by`, `edit_locked`, `black_list_date`, `black_list_reason`) VALUES
(1, 1, 'mannysoft', 'None', '', '', 'alcantara', '1', '1', '', '1', 'LP', '2', '4316', '', ' ', '', NULL, '', 'sample', '', 'fdfd', '', '', '', '', '2010-07-28 00:00:00', '2010-07-28 00:00:00', '2010-07-28 00:00:00', 'gfg', '', 0.00, 0, 0, 'QUARTERLY', NULL, '', '', '', '', '', '', NULL, '', NULL, 0.00, 1, 0, 0, 0.00, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '2010-07-28 09:10:38', 'EBPLS', '2010-07-28 09:10:38', '', 'MICRO', 0, 0, 0, 'Franchise', 0, '', '', '', 0, 0, 0, 0, 0, '', 0, '0000-00-00 00:00:00', ''),
(2, 2, 'trtrtrtrt', 'None', '', '', 'trtrtrtrtr', '1', '1', '', '1', 'LP', '2', '4316', '', ' ', '', NULL, '', '', '', 'SIN', '', '', '', '', '2010-08-22 00:00:00', '2010-08-22 00:00:00', '2010-08-22 00:00:00', 'gfg', '', 0.00, 0, 0, 'QUARTERLY', NULL, '', '', '', '001', '', '', NULL, '', NULL, 0.00, 1, 0, 0, 0.00, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '2010-08-22 12:05:29', 'EBPLS', '2010-08-22 12:05:29', '', 'MICRO', 0, 0, 0, 'Franchise', 0, '', '', '', 0, 1, 1, 0, 0, '', 0, '0000-00-00 00:00:00', ''),
(3, 4, 'charliesoft IT solutions and services', 'None', '', '', 'burgos', '1', '1', '', '1', 'LP', '2', '4316', '', ' ', '', NULL, '', '', '', 'SIN', '', '', '', '', '2010-08-23 00:00:00', '2010-08-23 00:00:00', '2010-08-23 00:00:00', 'OWN', '', 0.00, 0, 0, 'SEMI-ANNUAL', NULL, '', '', '', '001', '', '', NULL, '', NULL, 0.00, 1, 0, 0, 0.00, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '2010-08-23 12:45:44', 'EBPLS', '2010-08-23 12:45:44', '', 'LARGE', 0, 0, 0, 'Main', 0, '', '', '', 0, 1, 1, 0, 0, '', 0, '0000-00-00 00:00:00', ''),
(4, 6, 'business ko to', 'None', '', '', 'manambit', '1', '', '', '1', 'LP', '2', '4316', '', ' ', '', NULL, '', '', '', 'SIN', '', '', '', '', '2010-10-29 00:00:00', '2010-10-29 00:00:00', '2010-10-29 00:00:00', 'gfg', '', 0.00, 0, 0, 'QUARTERLY', NULL, '', '', '', '001', '', '', NULL, '', NULL, 0.00, 1, 0, 0, 0.00, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '2010-10-29 23:06:51', 'EBPLS', '2010-10-29 23:06:51', '', 'MICRO', 0, 0, 0, 'Franchise', 0, '', '', '', 0, 1, 1, 0, 0, '', 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_enterprise_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_enterprise_permit` (
  `business_permit_id` int(15) NOT NULL AUTO_INCREMENT,
  `business_permit_code` varchar(25) DEFAULT NULL,
  `business_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `retirement_code` varchar(20) DEFAULT NULL,
  `retirement_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `retirement_date_processed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `application_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paid` int(1) DEFAULT '0',
  `released` tinyint(1) DEFAULT NULL,
  `input_by` varchar(50) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT 'New',
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `pmode` enum('QUARTERLY','SEMI_ANNUAL','ANNUAL') NOT NULL DEFAULT 'QUARTERLY',
  `released_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`business_permit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ebpls_business_enterprise_permit`
--

INSERT INTO `ebpls_business_enterprise_permit` (`business_permit_id`, `business_permit_code`, `business_id`, `owner_id`, `retirement_code`, `retirement_date`, `retirement_date_processed`, `for_year`, `application_date`, `paid`, `released`, `input_by`, `transaction`, `steps`, `pin`, `active`, `pmode`, `released_date`) VALUES
(1, NULL, 0, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-07-28 09:10:38', 0, NULL, 'EBPLS', 'New', 'For Assessment', 'BMHI1706', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(2, '-00000000001', 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-07-28 09:10:38', 1, 1, 'EBPLS', 'New', 'For Payment', 'BMHI1706', 0, 'QUARTERLY', '2010-07-28 09:39:12'),
(4, '-00000000002', 1, 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-07-28 09:43:51', 1, 1, 'EBPLS', 'ReNew', 'For Approval', 'BMHI1706', 1, 'QUARTERLY', '2010-07-28 09:44:58'),
(6, NULL, 0, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-08-22 12:05:29', 0, NULL, 'EBPLS', 'New', 'For Assessment', 'Br3108', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(7, NULL, 2, 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-08-22 12:05:30', 0, NULL, 'EBPLS', 'New', 'For Payment', 'Br3108', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(8, NULL, 0, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-08-23 12:45:36', 0, NULL, 'EBPLS', 'New', 'For Assessment', 'Bclp5715', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(9, NULL, 3, 4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-08-23 12:45:44', 0, NULL, 'EBPLS', 'New', 'For Payment', 'Bclp5715', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(10, NULL, 0, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-10-29 23:06:51', 0, NULL, 'EBPLS', 'New', 'For Assessment', 'Bff2312', 1, 'QUARTERLY', '0000-00-00 00:00:00'),
(11, NULL, 4, 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010', '2010-10-29 23:06:51', 0, NULL, 'EBPLS', 'New', 'For Assessment', 'Bff2312', 1, 'QUARTERLY', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_nature`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_nature` (
  `nature_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `option` tinyint(1) DEFAULT NULL,
  `psic_code` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`nature_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ebpls_business_nature`
--

INSERT INTO `ebpls_business_nature` (`nature_id`, `name`, `status`, `option`, `psic_code`) VALUES
(1, 'SOFTWARE1', 1, NULL, '101'),
(18, 'New permit', NULL, NULL, '12345'),
(19, 'New permit', NULL, NULL, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_tax_fee_type`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_tax_fee_type` (
  `tax_fee_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`tax_fee_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ebpls_business_tax_fee_type`
--

INSERT INTO `ebpls_business_tax_fee_type` (`tax_fee_type_id`, `name`, `date_created`) VALUES
(1, 'TAX', '2005-05-12 01:20:52'),
(2, 'REGULATORY FEE', '2005-05-12 01:21:01'),
(3, 'OTHER CHARGES', '2005-05-12 01:21:05'),
(4, 'SPECIAL FEE', '2005-07-11 14:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_tax_requirements`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_tax_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nature_id` int(11) DEFAULT NULL,
  `tfo_id` int(11) DEFAULT NULL,
  `basis` tinyint(1) DEFAULT NULL,
  `indicator` tinyint(1) DEFAULT NULL,
  `mode` tinyint(1) DEFAULT NULL,
  `amount_formula` varchar(64) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `transaction` varchar(8) DEFAULT NULL COMMENT 'new renew retire',
  `unit_measure` varchar(100) NOT NULL,
  `min_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Tax Requirements in Business Nature' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ebpls_business_tax_requirements`
--

INSERT INTO `ebpls_business_tax_requirements` (`id`, `nature_id`, `tfo_id`, `basis`, `indicator`, `mode`, `amount_formula`, `date_created`, `transaction`, `unit_measure`, `min_amount`) VALUES
(2, 16, 9, 1, 1, 0, '99', NULL, 'renew', '', 98.32),
(3, 16, 4, 1, 1, 0, '250', NULL, 'new', '', 0.00),
(4, 1, 4, 1, 1, 0, '250', NULL, 'new', '', 0.00),
(5, 1, 4, 1, 1, 0, '250', NULL, 'new', '', 0.00),
(6, 1, 4, 1, 1, 0, '250', NULL, 'new', '', 0.00),
(7, 1, 4, 1, 1, 0, '9-98', NULL, 'new', '', 0.00),
(8, 1, 2, 1, 1, 0, '500', NULL, 'new', '', 0.00),
(9, 1, 2, 1, 1, 0, '500', NULL, 'new', '', 0.00),
(10, 1, 2, 1, 1, 0, '500', NULL, 'new', '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_business_tfo`
--

CREATE TABLE IF NOT EXISTS `ebpls_business_tfo` (
  `tfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `tax_fee_type` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `or_print` char(3) DEFAULT NULL,
  `number_years` int(11) NOT NULL,
  PRIMARY KEY (`tfo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ebpls_business_tfo`
--

INSERT INTO `ebpls_business_tfo` (`tfo_id`, `name`, `status`, `default`, `tax_fee_type`, `date_created`, `amount`, `or_print`, `number_years`) VALUES
(2, 'Sanitary Fee', 1, 1, 3, '2010-08-22 11:17:34', 100.00, '0', 0),
(4, 'Mayors Permit', 1, 1, 2, '2010-08-22 11:18:33', 100.00, '0', 0),
(9, 'New permit', NULL, 0, 1, NULL, 2001.00, NULL, 12),
(10, 'New permit', NULL, 0, 1, NULL, 1.00, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_approve`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_approve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `decision` int(1) DEFAULT NULL COMMENT '0 if disapporved, 1 apporved',
  `dec_comment` text,
  `transaction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ebpls_buss_approve`
--

INSERT INTO `ebpls_buss_approve` (`id`, `owner_id`, `business_id`, `decision`, `dec_comment`, `transaction`) VALUES
(1, 1, 1, 1, 'approved', 'ReNew'),
(2, 2, 2, 1, 'approved', 'New'),
(3, 4, 3, 1, 'ok', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_assessment`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_assessment` (
  `assid` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `natureid` int(11) DEFAULT NULL,
  `taxfeeid` int(11) DEFAULT NULL,
  `multi` int(10) DEFAULT NULL,
  `amt` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`assid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_assessment`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_complex`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_complex` (
  `compid` int(11) NOT NULL AUTO_INCREMENT,
  `complex_taxfeeid` int(11) DEFAULT NULL,
  `complex_tfoid` int(11) DEFAULT NULL,
  `var_complex` char(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`compid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_complex`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_monthlyref`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_monthlyref` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `moid` char(2) DEFAULT NULL,
  `modesc` varchar(15) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_monthlyref`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_penalty`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_penalty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renewaldate` varchar(5) DEFAULT NULL,
  `rateofpenalty` varchar(10) DEFAULT NULL,
  `rateofinterest` varchar(10) DEFAULT NULL,
  `indicator` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  `surchargeoption` char(1) DEFAULT NULL,
  `optsurcharge` char(3) DEFAULT NULL,
  `surtype` int(1) NOT NULL DEFAULT '0',
  `inttype` int(1) NOT NULL DEFAULT '0',
  `feeonly` int(1) NOT NULL DEFAULT '0',
  `optduedates` char(3) DEFAULT NULL,
  `mdue` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_penalty`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_penalty1`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_penalty1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mdue` date DEFAULT NULL,
  `semdue1` varchar(5) DEFAULT NULL,
  `semdue2` varchar(5) DEFAULT NULL,
  `qtrdue1` varchar(5) DEFAULT NULL,
  `qtrdue2` varchar(5) DEFAULT NULL,
  `qtrdue3` varchar(5) DEFAULT NULL,
  `qtrdue4` varchar(5) DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ebpls_buss_penalty1`
--

INSERT INTO `ebpls_buss_penalty1` (`id`, `mdue`, `semdue1`, `semdue2`, `qtrdue1`, `qtrdue2`, `qtrdue3`, `qtrdue4`, `revdate`) VALUES
(1, '0000-00-00', '', '', '', '', '', '', '2002-01-01 18:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_preference`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_preference` (
  `lgucode` varchar(255) NOT NULL DEFAULT '',
  `lguname` varchar(255) DEFAULT NULL,
  `lguprovince` varchar(120) DEFAULT NULL,
  `lgumunicipality` varchar(120) DEFAULT NULL,
  `lguoffice` varchar(120) DEFAULT NULL,
  `lguimage` varchar(255) DEFAULT NULL,
  `spermit` char(1) DEFAULT NULL,
  `sassess` char(1) DEFAULT NULL,
  `sor` char(1) DEFAULT NULL,
  `sbacktaxes` char(1) DEFAULT NULL,
  `srequire` char(1) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  `renewaldate` date DEFAULT NULL,
  `rateofpenalty` varchar(5) DEFAULT NULL,
  `rateofinterest` varchar(5) DEFAULT NULL,
  `staxesfees` char(1) DEFAULT NULL,
  `spayment` char(1) DEFAULT NULL,
  `bodycolor` varchar(10) DEFAULT NULL,
  `sdecimal` char(1) DEFAULT NULL,
  `mp` int(12) DEFAULT '0',
  `bt` int(12) DEFAULT '0',
  `minhigh` char(1) DEFAULT NULL,
  `or_print` char(1) DEFAULT NULL,
  `spaywoapprov` char(1) NOT NULL DEFAULT '',
  `swaivetax` char(1) NOT NULL DEFAULT '',
  `swaivefee` char(1) NOT NULL DEFAULT '',
  `lgu_add` varchar(100) NOT NULL DEFAULT '',
  `lgu_tel` varchar(20) NOT NULL DEFAULT '',
  `predcomp` int(1) NOT NULL DEFAULT '0',
  `iReset` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`lgucode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_buss_preference`
--

INSERT INTO `ebpls_buss_preference` (`lgucode`, `lguname`, `lguprovince`, `lgumunicipality`, `lguoffice`, `lguimage`, `spermit`, `sassess`, `sor`, `sbacktaxes`, `srequire`, `createdate`, `revdate`, `renewaldate`, `rateofpenalty`, `rateofinterest`, `staxesfees`, `spayment`, `bodycolor`, `sdecimal`, `mp`, `bt`, `minhigh`, `or_print`, `spaywoapprov`, `swaivetax`, `swaivefee`, `lgu_add`, `lgu_tel`, `predcomp`, `iReset`) VALUES
('', 'LP', '2', '', '', NULL, '', '', '', '', '', NULL, '2010-07-28 09:06:34', NULL, NULL, NULL, '', '', NULL, '', 0, 0, NULL, '', '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_requirements`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_requirements` (
  `reqid` int(11) NOT NULL AUTO_INCREMENT,
  `reqdesc` varchar(100) DEFAULT NULL,
  `recstatus` char(1) DEFAULT NULL,
  `reqindicator` char(1) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  `permit_type` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`reqid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ebpls_buss_requirements`
--

INSERT INTO `ebpls_buss_requirements` (`reqid`, `reqdesc`, `recstatus`, `reqindicator`, `datecreated`, `revdate`, `permit_type`) VALUES
(5, 'police clearance', 'A', '', '2010-08-22 12:25:13', '2010-08-22 12:25:13', 'Motorized'),
(2, 'Fire department', 'A', '', '2010-08-22 11:47:18', '2010-08-22 11:47:18', 'Business'),
(3, 'health clearance', 'A', '', '2010-08-22 11:47:28', '2010-08-22 11:47:28', 'Business'),
(4, 'police clearance', 'A', '', '2010-08-22 11:47:37', '2010-08-22 11:47:37', 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_taxfee`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_taxfee` (
  `natureid` int(11) DEFAULT NULL,
  `taxfeeid` int(11) NOT NULL AUTO_INCREMENT,
  `taxfeedesc` varchar(255) DEFAULT NULL,
  `taxfeestatus` char(1) DEFAULT NULL,
  `taxfeeoption` char(1) DEFAULT NULL,
  `taxfeeind` char(1) DEFAULT NULL,
  `taxfeetype` char(1) DEFAULT NULL,
  `taxfeemode` char(1) DEFAULT NULL,
  `taxfeeamtfor` varchar(12) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`taxfeeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_taxfee`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_taxfeeother`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_taxfeeother` (
  `taxfeeid` int(11) NOT NULL AUTO_INCREMENT,
  `natureid` int(11) DEFAULT NULL,
  `tfo_id` int(11) DEFAULT NULL,
  `basis` tinyint(1) DEFAULT NULL,
  `indicator` tinyint(1) DEFAULT NULL,
  `mode` tinyint(1) DEFAULT NULL,
  `amtformula` varchar(60) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `taxtype` tinyint(1) DEFAULT NULL,
  `uom` varchar(100) NOT NULL DEFAULT '',
  `min_amt` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`taxfeeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Required taxes, fees and other charges in bus. nature' AUTO_INCREMENT=3627 ;

--
-- Dumping data for table `ebpls_buss_taxfeeother`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_taxfee_option`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_taxfee_option` (
  `optionid` int(4) NOT NULL AUTO_INCREMENT,
  `optiondesc` varchar(30) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_taxfee_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_buss_taxrange`
--

CREATE TABLE IF NOT EXISTS `ebpls_buss_taxrange` (
  `rangeid` int(11) NOT NULL AUTO_INCREMENT,
  `taxfeeid` int(11) DEFAULT NULL,
  `rangelow` decimal(12,2) DEFAULT NULL,
  `rangehigh` decimal(12,2) DEFAULT NULL,
  `rangeamount` varchar(40) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`rangeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_buss_taxrange`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_citizenship`
--

CREATE TABLE IF NOT EXISTS `ebpls_citizenship` (
  `cit_id` int(11) NOT NULL AUTO_INCREMENT,
  `cit_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_citizenship`
--

INSERT INTO `ebpls_citizenship` (`cit_id`, `cit_desc`) VALUES
(1, 'Filipino'),
(2, 'Chinese');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_comm_tax_cert`
--

CREATE TABLE IF NOT EXISTS `ebpls_comm_tax_cert` (
  `comm_tax_cert_code` varchar(20) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_birth_date` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_address` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_owner_gender` enum('MALE','FEMALE','UNSPECIFIED') NOT NULL DEFAULT 'UNSPECIFIED',
  `comm_tax_cert_owner_civil_status` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_last_gross` decimal(12,2) NOT NULL DEFAULT '0.00',
  `comm_tax_cert_amount_due` decimal(12,2) NOT NULL DEFAULT '0.00',
  `comm_tax_cert_amount_paid` decimal(12,2) NOT NULL DEFAULT '0.00',
  `comm_tax_cert_acct_code` varchar(20) NOT NULL DEFAULT '',
  `comm_tax_cert_place_issued` varchar(255) NOT NULL DEFAULT '',
  `comm_tax_cert_date_issued` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `comm_tax_cert_type` enum('INDIVIDUAL','BUSINESS') NOT NULL DEFAULT 'INDIVIDUAL',
  PRIMARY KEY (`comm_tax_cert_code`),
  UNIQUE KEY `id` (`comm_tax_cert_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_comm_tax_cert`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_ctc_business`
--

CREATE TABLE IF NOT EXISTS `ebpls_ctc_business` (
  `ctc_code` varchar(25) NOT NULL DEFAULT '',
  `ctc_place_issued` varchar(64) DEFAULT NULL,
  `ctc_date_issued` date NOT NULL DEFAULT '0000-00-00',
  `ctc_for_year` int(11) DEFAULT NULL,
  `ctc_company` varchar(255) NOT NULL DEFAULT '',
  `ctc_business_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctc_tin_no` varchar(25) NOT NULL DEFAULT '',
  `ctc_organization_type` enum('CORPORATION','ASSOCIATION','PARTNERSHIP') NOT NULL DEFAULT 'CORPORATION',
  `ctc_place_of_incorporation` varchar(64) NOT NULL DEFAULT '',
  `ctc_business_nature` varchar(64) NOT NULL DEFAULT '',
  `ctc_basic_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_additional_tax1` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_additional_tax2` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_tax_interest` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_company_address` varchar(255) NOT NULL DEFAULT '',
  `ctc_incorporation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ctc_tax_due` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_acct_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ctc_code`),
  UNIQUE KEY `id` (`ctc_code`),
  KEY `dt_issued` (`ctc_date_issued`),
  KEY `ctc_business_id` (`ctc_business_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_ctc_business`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_ctc_individual`
--

CREATE TABLE IF NOT EXISTS `ebpls_ctc_individual` (
  `ctc_code` varchar(20) NOT NULL DEFAULT '',
  `ctc_first_name` varchar(60) NOT NULL DEFAULT '',
  `ctc_owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctc_middle_name` varchar(60) NOT NULL DEFAULT '',
  `ctc_last_name` varchar(60) NOT NULL DEFAULT '',
  `ctc_birth_date` varchar(60) NOT NULL DEFAULT '',
  `ctc_address` varchar(255) NOT NULL DEFAULT '',
  `ctc_gender` enum('M','F') NOT NULL DEFAULT 'M',
  `ctc_civil_status` varchar(60) NOT NULL DEFAULT '',
  `ctc_acct_code` varchar(20) NOT NULL DEFAULT '',
  `ctc_place_issued` varchar(255) NOT NULL DEFAULT '',
  `ctc_date_issued` date NOT NULL DEFAULT '0000-00-00',
  `ctc_for_year` int(60) NOT NULL DEFAULT '0',
  `ctc_tin_no` varchar(25) NOT NULL DEFAULT '',
  `ctc_occupation` varchar(25) NOT NULL DEFAULT '',
  `ctc_height` varchar(25) NOT NULL DEFAULT '',
  `ctc_weight` varchar(25) NOT NULL DEFAULT '',
  `ctc_icr_no` varchar(25) NOT NULL DEFAULT '',
  `ctc_citizenship` varchar(25) NOT NULL DEFAULT '',
  `ctc_application_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_place_of_birth` varchar(255) NOT NULL DEFAULT '',
  `ctc_basic_tax` decimal(3,2) NOT NULL DEFAULT '0.00',
  `ctc_additional_tax1` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_additional_tax2` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_additional_tax3` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_tax_interest` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ctc_tax_exempted` tinyint(1) NOT NULL DEFAULT '0',
  `ctc_tax_due` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ctc_code`),
  UNIQUE KEY `id` (`ctc_code`),
  KEY `dt_issued` (`ctc_date_issued`),
  KEY `ctc_owner_id` (`ctc_owner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_ctc_individual`
--

INSERT INTO `ebpls_ctc_individual` (`ctc_code`, `ctc_first_name`, `ctc_owner_id`, `ctc_middle_name`, `ctc_last_name`, `ctc_birth_date`, `ctc_address`, `ctc_gender`, `ctc_civil_status`, `ctc_acct_code`, `ctc_place_issued`, `ctc_date_issued`, `ctc_for_year`, `ctc_tin_no`, `ctc_occupation`, `ctc_height`, `ctc_weight`, `ctc_icr_no`, `ctc_citizenship`, `ctc_application_fee`, `ctc_place_of_birth`, `ctc_basic_tax`, `ctc_additional_tax1`, `ctc_additional_tax2`, `ctc_additional_tax3`, `ctc_tax_interest`, `ctc_tax_exempted`, `ctc_tax_due`) VALUES
('rrrr', '', 1, '', 'rtrtr', '11-30-1999', 'trtrtr  Zone 1 Burgos (Poblacion) First Distirct Lopez', 'M', 'Single', '', 'Lopez, Quezon', '2010-08-22', 2010, '', '', '25', '69', '', 'Filipino', 0.00, 'f', 5.00, 0.00, 0.00, 0.00, 0.80, 0, 5.00),
('12345', '', 2, '', 'rtrtr', '11-30-1999', 'trtrtr  Zone 1 Burgos (Poblacion) First Distirct Lopez', 'M', 'Single', '', 'Lopez, Quezon', '2010-08-22', 2010, '', '', '', '', '', 'Filipino', 0.00, '', 5.00, 0.00, 0.00, 0.00, 0.80, 0, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_ctc_interest`
--

CREATE TABLE IF NOT EXISTS `ebpls_ctc_interest` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `ctc_type` varchar(255) DEFAULT NULL,
  `interest_rate` int(3) DEFAULT NULL,
  `ceiling_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `penalty_date` int(2) NOT NULL DEFAULT '0',
  `modified_date` date DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_ctc_interest`
--

INSERT INTO `ebpls_ctc_interest` (`id`, `ctc_type`, `interest_rate`, `ceiling_rate`, `penalty_date`, `modified_date`, `updated_by`) VALUES
(1, 'Individual', 2, 500.00, 1, '2010-08-22', 'EBPLS'),
(2, 'Corporate', 5, 10000.00, 1, '2010-08-22', 'EBPLS');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_economic_area`
--

CREATE TABLE IF NOT EXISTS `ebpls_economic_area` (
  `economic_area_id` int(10) NOT NULL AUTO_INCREMENT,
  `economic_area_code` varchar(10) NOT NULL DEFAULT '',
  `economic_area_desc` varchar(50) NOT NULL DEFAULT '',
  `updated_by` varchar(10) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`economic_area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_economic_area`
--

INSERT INTO `ebpls_economic_area` (`economic_area_id`, `economic_area_code`, `economic_area_desc`, `updated_by`, `date_updated`) VALUES
(1, 'E002', 'Eco Two', 'ebpls', '0000-00-00 00:00:00'),
(2, 'E001', 'Eco One', 'ebpls', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_economic_org`
--

CREATE TABLE IF NOT EXISTS `ebpls_economic_org` (
  `economic_org_id` int(10) NOT NULL AUTO_INCREMENT,
  `economic_org_code` varchar(10) NOT NULL DEFAULT '',
  `economic_org_desc` varchar(50) NOT NULL DEFAULT '',
  `updated_by` varchar(10) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`economic_org_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_economic_org`
--

INSERT INTO `ebpls_economic_org` (`economic_org_id`, `economic_org_code`, `economic_org_desc`, `updated_by`, `date_updated`) VALUES
(1, 'EO002', 'Eco Org Two', 'ebpls', '0000-00-00 00:00:00'),
(2, 'EO001', 'Eco Org One', 'ebpls', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_engine_type`
--

CREATE TABLE IF NOT EXISTS `ebpls_engine_type` (
  `engine_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `engine_type_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`engine_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ebpls_engine_type`
--

INSERT INTO `ebpls_engine_type` (`engine_type_id`, `engine_type_desc`) VALUES
(6, 'sample engine'),
(7, '25');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fees_paid`
--

CREATE TABLE IF NOT EXISTS `ebpls_fees_paid` (
  `fee_paid_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) DEFAULT NULL,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(10) DEFAULT NULL,
  `multi_by` int(51) DEFAULT NULL,
  `permit_type` varchar(255) DEFAULT NULL,
  `permit_status` varchar(100) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `input_by` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  PRIMARY KEY (`fee_paid_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_fees_paid`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fee_exemption`
--

CREATE TABLE IF NOT EXISTS `ebpls_fee_exemption` (
  `business_category_code` varchar(20) DEFAULT NULL,
  `tfoid` int(11) DEFAULT NULL,
  `taxfeetype` int(11) DEFAULT NULL,
  `exempted` int(1) NOT NULL DEFAULT '0',
  `date_modfied` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_fee_exemption`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fishery_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_fishery_fees` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(10) DEFAULT NULL,
  `permit_type` varchar(20) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `lastupdatedby` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_fishery_fees`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fishery_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_fishery_permit` (
  `ebpls_fishery_id` int(15) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ebpls_fishery_permit_code` varchar(25) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `ebpls_fishery_businessname` varchar(255) NOT NULL DEFAULT '''''',
  `ebpls_fishery_permit_application_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ebpls_fishery_local_name_fishing_gear` varchar(255) NOT NULL DEFAULT '',
  `ebpls_fishery_in_english` varchar(255) NOT NULL DEFAULT '',
  `ebpls_fishery_no_of_units` int(5) NOT NULL DEFAULT '1',
  `ebpls_fishery_assess_value_fishing_gear` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ebpls_fishery_fishing_gear_size` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ebpls_fishery_area_size` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ebpls_fishery_no_of_crew` int(5) NOT NULL DEFAULT '0',
  `ebpls_fishery_motorized` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `ebpls_fishery_registered` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `ebpls_fishery_boat_name` varchar(255) NOT NULL DEFAULT '',
  `ebpls_fishery_registration_no` varchar(255) NOT NULL DEFAULT '',
  `ebpls_fishery_ave_fish_catch_present` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ebpls_fishery_ave_fish_catch_2yrs_ago` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ebpls_fishery_location` varchar(255) DEFAULT NULL,
  `ebpls_fishery_rc_no` varchar(255) DEFAULT NULL,
  `ebpls_fishery_rc_issued_at` varchar(255) DEFAULT NULL,
  `ebpls_fishery_rc_issued_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transaction` varchar(20) DEFAULT NULL,
  `for_year` varchar(20) DEFAULT NULL,
  `paid` int(1) DEFAULT NULL,
  `released` int(1) DEFAULT NULL,
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`ebpls_fishery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_fishery_permit`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fish_description`
--

CREATE TABLE IF NOT EXISTS `ebpls_fish_description` (
  `fish_id` int(11) NOT NULL AUTO_INCREMENT,
  `fish_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fish_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_fish_description`
--

INSERT INTO `ebpls_fish_description` (`fish_id`, `fish_desc`) VALUES
(2, 'as');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_fish_owner`
--

CREATE TABLE IF NOT EXISTS `ebpls_fish_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `owner_house_no` varchar(255) NOT NULL DEFAULT '',
  `owner_street` varchar(255) NOT NULL DEFAULT '',
  `owner_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zone_code` varchar(20) NOT NULL DEFAULT '',
  `owner_district_code` varchar(20) NOT NULL DEFAULT '',
  `owner_city_code` varchar(20) NOT NULL DEFAULT '',
  `owner_province_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zip_code` varchar(20) DEFAULT NULL,
  `owner_citizenship` varchar(255) NOT NULL DEFAULT '',
  `owner_civil_status` varchar(255) NOT NULL DEFAULT '',
  `owner_gender` enum('M','F','X') DEFAULT 'X',
  `owner_tin_no` varchar(255) NOT NULL DEFAULT '',
  `owner_icr_no` varchar(20) DEFAULT NULL,
  `owner_phone_no` varchar(255) DEFAULT NULL,
  `owner_gsm_no` varchar(255) DEFAULT NULL,
  `owner_email_address` varchar(255) DEFAULT NULL,
  `owner_others` varchar(255) DEFAULT NULL,
  `owner_birth_date` datetime DEFAULT NULL,
  `owner_reg_date` datetime DEFAULT NULL,
  `owner_lastupdated` datetime DEFAULT NULL,
  `owner_lastupdated_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_fish_owner`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_franchise_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_franchise_fees` (
  `fee_id` int(10) NOT NULL AUTO_INCREMENT,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(11) DEFAULT NULL,
  `permit_type` varchar(100) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `lastupdatedby` varchar(20) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_franchise_fees`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_franchise_owner`
--

CREATE TABLE IF NOT EXISTS `ebpls_franchise_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `owner_house_no` varchar(255) NOT NULL DEFAULT '',
  `owner_street` varchar(255) NOT NULL DEFAULT '',
  `owner_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zone_code` varchar(20) NOT NULL DEFAULT '',
  `owner_district_code` varchar(20) NOT NULL DEFAULT '',
  `owner_city_code` varchar(20) NOT NULL DEFAULT '',
  `owner_province_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zip_code` varchar(20) DEFAULT NULL,
  `owner_citizenship` varchar(255) NOT NULL DEFAULT '',
  `owner_civil_status` varchar(255) NOT NULL DEFAULT '',
  `owner_gender` enum('M','F','X') DEFAULT 'X',
  `owner_tin_no` varchar(255) NOT NULL DEFAULT '',
  `owner_icr_no` varchar(20) DEFAULT NULL,
  `owner_phone_no` varchar(255) DEFAULT NULL,
  `owner_gsm_no` varchar(255) DEFAULT NULL,
  `owner_email_address` varchar(255) DEFAULT NULL,
  `owner_others` varchar(255) DEFAULT NULL,
  `owner_birth_date` datetime DEFAULT NULL,
  `owner_reg_date` datetime DEFAULT NULL,
  `owner_lastupdated` datetime DEFAULT NULL,
  `owner_lastupdated_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_franchise_owner`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_franchise_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_franchise_permit` (
  `franchise_permit_id` int(15) NOT NULL AUTO_INCREMENT,
  `franchise_permit_code` varchar(25) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `retirement_code` varchar(20) DEFAULT NULL,
  `retirement_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `retirement_date_processed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `requirement_code` varchar(20) NOT NULL DEFAULT '',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `application_date` date NOT NULL DEFAULT '0000-00-00',
  `paid` int(1) DEFAULT NULL,
  `released` int(1) DEFAULT '0',
  `transaction` varchar(20) DEFAULT NULL,
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`franchise_permit_id`),
  UNIQUE KEY `id` (`franchise_permit_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ebpls_franchise_permit`
--

INSERT INTO `ebpls_franchise_permit` (`franchise_permit_id`, `franchise_permit_code`, `owner_id`, `retirement_code`, `retirement_date`, `retirement_date_processed`, `requirement_code`, `for_year`, `application_date`, `paid`, `released`, `transaction`, `steps`, `pin`, `active`) VALUES
(1, '', 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2010', '2010-10-25', 0, 0, 'New', 'For Payment', 'Fmhi8606', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_industry_sector`
--

CREATE TABLE IF NOT EXISTS `ebpls_industry_sector` (
  `industry_sector_code` varchar(20) NOT NULL DEFAULT '',
  `industry_sector_desc` varchar(255) NOT NULL DEFAULT '',
  `industry_sector_date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `industry_sector_date_updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`industry_sector_code`),
  UNIQUE KEY `id` (`industry_sector_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_industry_sector`
--

INSERT INTO `ebpls_industry_sector` (`industry_sector_code`, `industry_sector_desc`, `industry_sector_date_registered`, `industry_sector_date_updated`, `updated_by`) VALUES
('001', 'Highly Industrialized', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls'),
('002', 'Semi Industrialized', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls'),
('003', 'Industrialized', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_motorized_operators`
--

CREATE TABLE IF NOT EXISTS `ebpls_motorized_operators` (
  `motorized_operator_id` int(15) NOT NULL AUTO_INCREMENT,
  `owner_id` int(12) DEFAULT '0',
  `affiliations` varchar(255) DEFAULT '''',
  `last_updated_ts` datetime DEFAULT NULL,
  `created_ts` datetime DEFAULT NULL,
  `admin` varchar(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`motorized_operator_id`),
  UNIQUE KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_motorized_operators`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_motorized_operator_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_motorized_operator_permit` (
  `motorized_operator_permit_id` int(15) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `motorized_permit_code` varchar(25) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `motorized_operator_permit_application_date` datetime DEFAULT NULL,
  `motorized_no_of_units` int(7) NOT NULL DEFAULT '1',
  `motorized_motor_model` varchar(255) NOT NULL DEFAULT '',
  `motorized_motor_no` varchar(255) NOT NULL DEFAULT '',
  `motorized_chassis_no` varchar(255) NOT NULL DEFAULT '',
  `motorized_plate_no` varchar(255) NOT NULL DEFAULT '',
  `motorized_retirement_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `motorized_retirement_date_processed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `requirement_code` varchar(20) NOT NULL DEFAULT '',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `paid` int(1) DEFAULT NULL,
  `released` int(1) DEFAULT '0',
  `transaction` varchar(20) DEFAULT NULL,
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`motorized_operator_permit_id`),
  UNIQUE KEY `id` (`motorized_operator_permit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_motorized_operator_permit`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_motorized_penalty`
--

CREATE TABLE IF NOT EXISTS `ebpls_motorized_penalty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renewaltype` int(1) NOT NULL DEFAULT '0',
  `renewaldate1` varchar(5) DEFAULT NULL,
  `renewaldate2` varchar(5) NOT NULL DEFAULT '',
  `renewaldate3` varchar(5) NOT NULL DEFAULT '',
  `renewaldate4` varchar(5) NOT NULL DEFAULT '',
  `renewaldate5` varchar(5) NOT NULL DEFAULT '',
  `renewaldate6` varchar(5) NOT NULL DEFAULT '',
  `renewaldate7` varchar(5) NOT NULL DEFAULT '',
  `renewaldate8` varchar(5) NOT NULL DEFAULT '',
  `renewaldate9` varchar(5) NOT NULL DEFAULT '',
  `renewaldate0` varchar(5) NOT NULL DEFAULT '',
  `rateofpenalty` varchar(10) DEFAULT NULL,
  `rateofinterest` varchar(10) DEFAULT NULL,
  `indicator` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `intype` int(1) NOT NULL DEFAULT '0',
  `feeonly` int(1) NOT NULL DEFAULT '0',
  `late_filing_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `f_status` int(1) NOT NULL DEFAULT '0',
  `backtax` int(1) NOT NULL DEFAULT '0',
  `permit_type` varchar(20) NOT NULL DEFAULT '',
  `updated_by` varchar(50) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_motorized_penalty`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_motorized_vehicles`
--

CREATE TABLE IF NOT EXISTS `ebpls_motorized_vehicles` (
  `motorized_motor_id` int(11) NOT NULL AUTO_INCREMENT,
  `motorized_operator_id` int(11) DEFAULT NULL,
  `motorized_motor_model` varchar(255) NOT NULL DEFAULT '''',
  `motorized_motor_no` varchar(25) DEFAULT NULL,
  `motorized_chassis_no` varchar(25) DEFAULT NULL,
  `motorized_plate_no` varchar(25) DEFAULT NULL,
  `motorized_body_no` varchar(25) DEFAULT NULL,
  `admin` varchar(32) NOT NULL DEFAULT '''',
  `status` int(1) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `linetype` varchar(255) DEFAULT NULL,
  `updated_ts` datetime DEFAULT NULL,
  `create_ts` datetime DEFAULT NULL,
  `permit_type` varchar(20) DEFAULT NULL,
  `body_color` varchar(255) DEFAULT NULL,
  `lto_number` varchar(255) DEFAULT NULL,
  `cr_number` varchar(255) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT NULL,
  `retire` int(1) DEFAULT '0',
  `paid` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`motorized_motor_id`),
  UNIQUE KEY `motorized_chassis_no` (`motorized_chassis_no`),
  UNIQUE KEY `motorized_motor_no` (`motorized_motor_no`),
  UNIQUE KEY `motorized_plate_no` (`motorized_plate_no`),
  UNIQUE KEY `motorized_body_no` (`motorized_body_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_motorized_vehicles`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_mot_penalty`
--

CREATE TABLE IF NOT EXISTS `ebpls_mot_penalty` (
  `ebpls_mot_penalty_id` int(51) NOT NULL AUTO_INCREMENT,
  `motorized_permit_id` int(21) NOT NULL DEFAULT '0',
  `surcharge` decimal(12,2) NOT NULL DEFAULT '0.00',
  `interest` decimal(12,2) NOT NULL DEFAULT '0.00',
  `late` decimal(12,2) NOT NULL DEFAULT '0.00',
  `backtax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid` int(1) NOT NULL DEFAULT '0',
  `date_input` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `input_by` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ebpls_mot_penalty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_mot_penalty`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_mtop_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_mtop_fees` (
  `fee_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `fee_desc` varchar(255) NOT NULL DEFAULT '',
  `fee_amount` int(11) DEFAULT NULL,
  `lastupdatedby` varchar(255) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `permit_type` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `nyears` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ebpls_mtop_fees`
--

INSERT INTO `ebpls_mtop_fees` (`fee_id`, `fee_desc`, `fee_amount`, `lastupdatedby`, `lastupdated`, `permit_type`, `active`, `nyears`) VALUES
(3, '12', 12, 'EBPLS', '2010-10-30 11:40:57', 'New', 1, 0),
(4, 'ff', 12, 'EBPLS', '2010-10-30 11:41:33', 'New', 1, 0),
(5, 'dd', 500, 'EBPLS', '2010-10-30 11:43:30', 'New', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_mtop_owner`
--

CREATE TABLE IF NOT EXISTS `ebpls_mtop_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `owner_house_no` varchar(255) NOT NULL DEFAULT '',
  `owner_street` varchar(255) NOT NULL DEFAULT '',
  `owner_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zone_code` varchar(20) NOT NULL DEFAULT '',
  `owner_district_code` varchar(20) NOT NULL DEFAULT '',
  `owner_city_code` varchar(20) NOT NULL DEFAULT '',
  `owner_province_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zip_code` varchar(20) DEFAULT NULL,
  `owner_citizenship` varchar(255) NOT NULL DEFAULT '',
  `owner_civil_status` varchar(255) NOT NULL DEFAULT '',
  `owner_gender` enum('M','F','X') DEFAULT 'X',
  `owner_tin_no` varchar(255) NOT NULL DEFAULT '',
  `owner_icr_no` varchar(20) DEFAULT NULL,
  `owner_phone_no` varchar(255) DEFAULT NULL,
  `owner_gsm_no` varchar(255) DEFAULT NULL,
  `owner_email_address` varchar(255) DEFAULT NULL,
  `owner_others` varchar(255) DEFAULT NULL,
  `owner_birth_date` datetime DEFAULT NULL,
  `owner_lastupdated_by` varchar(255) NOT NULL DEFAULT '',
  `owner_reg_date` datetime DEFAULT NULL,
  `owner_lastupdated` datetime DEFAULT NULL,
  PRIMARY KEY (`owner_id`,`owner_first_name`,`owner_middle_name`,`owner_last_name`),
  UNIQUE KEY `id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_mtop_owner`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_mtop_temp_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_mtop_temp_fees` (
  `temp_fee_id` int(31) NOT NULL AUTO_INCREMENT,
  `fee_id` int(15) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) DEFAULT NULL,
  `vno` char(2) NOT NULL DEFAULT '',
  `lastupdatedby` varchar(255) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `year` varchar(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`temp_fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_mtop_temp_fees`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_occupancy_type`
--

CREATE TABLE IF NOT EXISTS `ebpls_occupancy_type` (
  `occupancy_type_code` varchar(20) NOT NULL DEFAULT '',
  `occupancy_type_desc` varchar(255) NOT NULL DEFAULT '',
  `occupancy_type_date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occupancy_type_date_updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`occupancy_type_code`),
  UNIQUE KEY `id` (`occupancy_type_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_occupancy_type`
--

INSERT INTO `ebpls_occupancy_type` (`occupancy_type_code`, `occupancy_type_desc`, `occupancy_type_date_registered`, `occupancy_type_date_updated`, `updated_by`) VALUES
('gfg', 'fgf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls'),
('OWN', 'Owned', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls'),
('REN', 'Rented', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ebpls');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_occupational_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_occupational_permit` (
  `occ_permit_id` int(15) NOT NULL AUTO_INCREMENT,
  `occ_permit_code` varchar(25) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `occ_permit_application_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occ_position_applied` varchar(255) NOT NULL DEFAULT '',
  `occ_employer` varchar(255) NOT NULL DEFAULT '',
  `occ_employer_trade_name` varchar(255) NOT NULL DEFAULT '',
  `occ_employer_lot_no` varchar(255) NOT NULL DEFAULT '',
  `occ_employer_street` varchar(255) NOT NULL DEFAULT '',
  `occ_employer_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `occ_employer_zone_code` varchar(20) NOT NULL DEFAULT '',
  `occ_employer_barangay_name` varchar(255) NOT NULL DEFAULT '',
  `occ_employer_district_code` varchar(20) NOT NULL DEFAULT '',
  `occ_employer_city_code` varchar(20) NOT NULL DEFAULT '',
  `occ_employer_province_code` varchar(20) NOT NULL DEFAULT '',
  `occ_employer_zip_code` varchar(20) NOT NULL DEFAULT '',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `paid` int(1) DEFAULT NULL,
  `released` int(1) DEFAULT '0',
  `transaction` varchar(20) DEFAULT NULL,
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `business_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_permit_id`),
  UNIQUE KEY `id` (`occ_permit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_occupational_permit`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_occu_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_occu_fees` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(10) DEFAULT NULL,
  `permit_type` varchar(20) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `lastupdatedby` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_occu_fees`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_occu_owner`
--

CREATE TABLE IF NOT EXISTS `ebpls_occu_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `owner_house_no` varchar(255) NOT NULL DEFAULT '',
  `owner_street` varchar(255) NOT NULL DEFAULT '',
  `owner_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zone_code` varchar(20) NOT NULL DEFAULT '',
  `owner_district_code` varchar(20) NOT NULL DEFAULT '',
  `owner_city_code` varchar(20) NOT NULL DEFAULT '',
  `owner_province_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zip_code` varchar(20) DEFAULT NULL,
  `owner_citizenship` varchar(255) NOT NULL DEFAULT '',
  `owner_civil_status` varchar(255) NOT NULL DEFAULT '',
  `owner_gender` enum('M','F','X') DEFAULT 'X',
  `owner_tin_no` varchar(255) NOT NULL DEFAULT '',
  `owner_icr_no` varchar(20) DEFAULT NULL,
  `owner_phone_no` varchar(255) DEFAULT NULL,
  `owner_gsm_no` varchar(255) DEFAULT NULL,
  `owner_email_address` varchar(255) DEFAULT NULL,
  `owner_others` varchar(255) DEFAULT NULL,
  `owner_birth_date` datetime DEFAULT NULL,
  `owner_reg_date` datetime DEFAULT NULL,
  `owner_lastupdated` datetime DEFAULT NULL,
  `owner_lastupdated_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_occu_owner`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_other_penalty`
--

CREATE TABLE IF NOT EXISTS `ebpls_other_penalty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renewaldate` varchar(5) DEFAULT NULL,
  `rateofpenalty` varchar(10) DEFAULT NULL,
  `rateofinterest` varchar(10) DEFAULT NULL,
  `indicator` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `intype` int(1) NOT NULL DEFAULT '0',
  `feeonly` int(1) NOT NULL DEFAULT '0',
  `late_filing_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `f_status` int(1) NOT NULL DEFAULT '0',
  `backtax` int(1) NOT NULL DEFAULT '0',
  `permit_type` varchar(20) NOT NULL DEFAULT '',
  `updated_by` varchar(50) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_other_penalty`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_other_penalty_amount`
--

CREATE TABLE IF NOT EXISTS `ebpls_other_penalty_amount` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `permit_type` varchar(50) NOT NULL DEFAULT '',
  `permit_id` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `bt` decimal(12,2) NOT NULL DEFAULT '0.00',
  `year` varchar(4) NOT NULL DEFAULT '',
  `updated_by` varchar(255) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_other_penalty_amount`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_owner`
--

CREATE TABLE IF NOT EXISTS `ebpls_owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_first_name` varchar(60) NOT NULL DEFAULT '',
  `owner_middle_name` varchar(60) NOT NULL DEFAULT '',
  `owner_last_name` varchar(60) NOT NULL DEFAULT '',
  `owner_legal_entity` varchar(250) NOT NULL DEFAULT '',
  `owner_house_no` varchar(255) NOT NULL DEFAULT '',
  `owner_street` varchar(255) NOT NULL DEFAULT '',
  `owner_barangay_code` varchar(20) NOT NULL DEFAULT '',
  `owner_zone_code` varchar(20) NOT NULL DEFAULT '',
  `owner_district_code` varchar(20) NOT NULL DEFAULT '',
  `owner_city_code` varchar(20) NOT NULL DEFAULT '',
  `owner_province_code` varchar(100) NOT NULL DEFAULT '',
  `owner_zip_code` varchar(20) DEFAULT NULL,
  `owner_citizenship` varchar(255) NOT NULL DEFAULT '',
  `owner_civil_status` varchar(255) NOT NULL DEFAULT '',
  `owner_gender` enum('M','F','X') DEFAULT 'X',
  `owner_tin_no` varchar(255) NOT NULL DEFAULT '',
  `owner_icr_no` varchar(20) DEFAULT NULL,
  `owner_phone_no` varchar(255) DEFAULT NULL,
  `owner_gsm_no` varchar(255) DEFAULT NULL,
  `owner_email_address` varchar(255) DEFAULT NULL,
  `owner_others` varchar(255) DEFAULT NULL,
  `owner_birth_date` datetime DEFAULT NULL,
  `owner_reg_date` datetime DEFAULT NULL,
  `owner_lastupdated` datetime DEFAULT NULL,
  `owner_lastupdated_by` varchar(255) NOT NULL DEFAULT '',
  `edit_by` varchar(50) NOT NULL DEFAULT '',
  `edit_locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`owner_id`,`owner_first_name`,`owner_middle_name`,`owner_last_name`),
  UNIQUE KEY `id` (`owner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ebpls_owner`
--

INSERT INTO `ebpls_owner` (`owner_id`, `owner_first_name`, `owner_middle_name`, `owner_last_name`, `owner_legal_entity`, `owner_house_no`, `owner_street`, `owner_barangay_code`, `owner_zone_code`, `owner_district_code`, `owner_city_code`, `owner_province_code`, `owner_zip_code`, `owner_citizenship`, `owner_civil_status`, `owner_gender`, `owner_tin_no`, `owner_icr_no`, `owner_phone_no`, `owner_gsm_no`, `owner_email_address`, `owner_others`, `owner_birth_date`, `owner_reg_date`, `owner_lastupdated`, `owner_lastupdated_by`, `edit_by`, `edit_locked`) VALUES
(1, 'Manny', 'H', 'Isles', '', '', 'Lopez', '1', '', '1', 'LP', '2', '', 'Filipino', 'Single', 'M', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-07-28 08:39:29', '2010-07-28 08:39:29', 'EBPLS', '', 0),
(2, '', '', 'rtrtr', '', '', 'trtrtr', '1', '1', '1', 'LP', '2', '', 'Filipino', 'Single', 'M', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-08-22 12:04:19', '2010-08-22 12:04:19', 'EBPLS', '', 0),
(3, '', '', 'fgdfd', '', '', 'fdf', '1', '1', '1', 'LP', '2', '', 'Filipino', 'Single', 'M', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-08-22 12:25:44', '2010-08-22 12:25:44', 'EBPLS', '', 0),
(4, 'chatty', 'llamas', 'perez', '', '', 'teodoro st', '1', '1', '1', 'LP', '2', '', 'Filipino', 'Married', 'F', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-08-23 12:42:52', '2010-08-23 12:42:52', 'EBPLS', '', 0),
(5, 'manny', 'h', 'isles', '', '', 'maytalang2', '1', '1', '1', 'LP', '2', '4316', 'Filipino', 'Single', 'M', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-10-25 11:54:01', '2010-10-25 11:56:04', 'EBPLS', 'EBPLS', 1),
(6, '', 'fgfgfgfg', 'fg', '', '', 'gfg', '1', '1', '1', 'LP', '2', '', 'Filipino', 'Single', 'M', '', '', '', '', '', '', '0000-00-00 00:00:00', '2010-10-29 23:05:53', '2010-10-29 23:05:53', 'EBPLS', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_payment_details`
--

CREATE TABLE IF NOT EXISTS `ebpls_payment_details` (
  `payment_details_id` int(21) NOT NULL AUTO_INCREMENT,
  `payment_details` varchar(255) NOT NULL DEFAULT '',
  `or_no` varchar(255) NOT NULL DEFAULT '',
  `owner_id` int(21) NOT NULL DEFAULT '0',
  `business_id` int(21) NOT NULL DEFAULT '0',
  `natureid` int(21) NOT NULL DEFAULT '0',
  `tfoid` int(21) NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment_part` int(1) NOT NULL DEFAULT '0',
  `date_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_payment_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_peddlers_fees`
--

CREATE TABLE IF NOT EXISTS `ebpls_peddlers_fees` (
  `fee_id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(10) DEFAULT NULL,
  `permit_type` varchar(20) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `lastupdatedby` varchar(20) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_peddlers_fees`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_peddlers_permit`
--

CREATE TABLE IF NOT EXISTS `ebpls_peddlers_permit` (
  `peddlers_permit_id` int(15) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `merchandise_sold` varchar(255) NOT NULL DEFAULT '',
  `peddlers_business_name` varchar(255) NOT NULL DEFAULT '',
  `retirement_code` varchar(20) DEFAULT NULL,
  `retirement_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `retirement_date_processed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `for_year` varchar(60) NOT NULL DEFAULT '',
  `peddlers_permit_code` varchar(25) NOT NULL DEFAULT '',
  `application_date` date NOT NULL DEFAULT '0000-00-00',
  `paid` int(1) DEFAULT '0',
  `transaction` varchar(100) DEFAULT NULL,
  `released` int(1) DEFAULT NULL,
  `steps` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`peddlers_permit_id`),
  UNIQUE KEY `id` (`peddlers_permit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_peddlers_permit`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_psic_table`
--

CREATE TABLE IF NOT EXISTS `ebpls_psic_table` (
  `psic_code` varchar(20) NOT NULL DEFAULT '',
  `psic_desc` varchar(255) NOT NULL DEFAULT '',
  `psic_account_code` varchar(20) NOT NULL DEFAULT '',
  `psic_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `psic_percentage_factor` decimal(12,2) NOT NULL DEFAULT '0.00',
  `psic_date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `psic_date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`psic_code`,`psic_account_code`),
  UNIQUE KEY `id` (`psic_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_psic_table`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_reports`
--

CREATE TABLE IF NOT EXISTS `ebpls_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_desc` varchar(200) NOT NULL DEFAULT '',
  `report_file` varchar(200) NOT NULL DEFAULT '',
  `report_type` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `ebpls_reports`
--

INSERT INTO `ebpls_reports` (`report_id`, `report_desc`, `report_file`, `report_type`) VALUES
(1, 'Blacklisted Business Establishment', 'ebpls_buslist_blacklist.php', 'Business'),
(2, 'Activity Log List', 'ebpls_activity_log.php', 'System'),
(3, 'Abstract of Collection', 'ebpls_abstractcoll.php', 'Collection'),
(4, 'Business Masterlist', 'ebpls_bus_masterlist.php', 'Business'),
(5, 'Business Permit', 'ebpls_buss_permit.php', 'Business'),
(6, 'Comparative Annual Report', 'ebpls_comparative_annual.php', 'Collection'),
(7, 'Comparative Quarterly Report', 'ebpls_comparative_rpts_quart.php', 'Collection'),
(8, 'CTC Business Application Masterlist', 'ebpls_ctc_apply_masterlistbus.php', 'CTC'),
(9, 'CTC Individual Application Masterlist', 'ebpls_ctc_apply_masterlist.php', 'CTC'),
(10, 'Exempted Business Establishment', 'ebpls_bus_exemptedlist_full.php', 'Business'),
(11, 'Fishery Permit', 'ebpls_fish_permit.php', 'Fishery'),
(12, 'Franchise Registry', 'ebpls_franchise_list.php', 'Franchise'),
(13, 'Individual Tax Delinquent List', 'ebpls_bus_indtaxdelinquent.php', 'Collection'),
(14, 'List of Business Requirement Delinquent', 'ebpls_summary_busreq_delinquent.php', 'Business'),
(15, 'Masterlist of Motorized Vehicles', 'ebpls_masterlist_motor.php', 'Motorized'),
(16, 'Motorized Permit', 'ebpls_motor_permit.php', 'Motorized'),
(17, 'Notice of Business Tax Collection', 'ebpls_notice_bustax_coll.php', 'Collection'),
(18, 'Occupational Permit', 'ebpls_occ_permit.php', 'Occupational'),
(19, 'Order of Payment', 'ebpls_orderpayment.php', 'Collection'),
(20, 'Top Business Establishment', 'ebpls_bus_topestablishment.php', 'Business'),
(21, 'List of Establishment Without Permit', 'ebpls_bus_woutpermit.php', 'Business'),
(22, 'Peddler Masterlist', 'ebpls_peddler_list.php', 'Peddler'),
(23, 'Occupational Registry', 'ebpls_occupational_list.php', 'Occupational'),
(24, 'Peddlers Permit', 'ebpls_peddler_permit.php', 'Peddler'),
(25, 'List of Establishment', 'ebpls_bus_wpermit.php', 'Business'),
(26, 'Collections Summary', 'ebpls_collection_summary.php', 'Collection'),
(27, 'Comparative Annual Graph', 'ebpls_comparative_annual_chart.php', 'Collection'),
(28, 'Fishery Registry', 'ebpls_fishery_list.php', 'Fishery'),
(29, 'Franchise Permit', 'ebpls_motor_permit.php', 'Franchise'),
(30, 'Audit Trail', 'ebpls_audit_trail.php', 'Collection'),
(31, 'Business Establishment Comparative', 'ebpls_comparative_business.php', 'Business'),
(32, 'Business Profile', 'ebpls_business_profile.php', 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_tax_exemption`
--

CREATE TABLE IF NOT EXISTS `ebpls_tax_exemption` (
  `tax_exemption_code` varchar(20) NOT NULL DEFAULT '',
  `tax_exemption_desc` varchar(255) NOT NULL DEFAULT '',
  `tax_exempt_account_code` varchar(20) NOT NULL DEFAULT '',
  `tax_exemption_date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax_exemption_date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`tax_exemption_code`),
  UNIQUE KEY `id` (`tax_exemption_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_tax_exemption`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_transaction_payment_check`
--

CREATE TABLE IF NOT EXISTS `ebpls_transaction_payment_check` (
  `check_id` int(15) NOT NULL AUTO_INCREMENT,
  `check_no` varchar(25) NOT NULL DEFAULT '',
  `check_status` enum('PENDING','CLEARED','BOUNCED') DEFAULT NULL,
  `ts_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ts_clear` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` varchar(25) NOT NULL DEFAULT '',
  `ts_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_name` varchar(25) NOT NULL DEFAULT '',
  `check_issue_date` date DEFAULT '0000-00-00',
  `check_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `trans_id` int(15) NOT NULL DEFAULT '0',
  `or_no` varchar(25) NOT NULL DEFAULT '',
  `remark` text,
  PRIMARY KEY (`check_id`),
  UNIQUE KEY `check_no` (`check_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_transaction_payment_check`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_transaction_payment_or`
--

CREATE TABLE IF NOT EXISTS `ebpls_transaction_payment_or` (
  `or_no` int(20) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(20) DEFAULT NULL,
  `trans_id` int(15) DEFAULT '0',
  `or_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_amount_due` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_amount_less` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_amount_paid` decimal(12,2) NOT NULL DEFAULT '0.00',
  `ts_create` datetime DEFAULT NULL,
  `payment_officer` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`or_no`),
  UNIQUE KEY `payment_code` (`payment_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_transaction_payment_or`
--

INSERT INTO `ebpls_transaction_payment_or` (`or_no`, `payment_code`, `trans_id`, `or_date`, `total_amount_due`, `total_amount_less`, `total_amount_paid`, `ts_create`, `payment_officer`) VALUES
(1, '12345', 1, '2010-07-28 09:38:47', 0.00, 20.00, 20.00, '2010-07-28 09:38:47', 'EBPLS'),
(2, '123456', 1, '2010-07-28 09:44:43', 0.00, 20.00, 20.00, '2010-07-28 09:44:43', 'EBPLS');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_transaction_payment_or_details`
--

CREATE TABLE IF NOT EXISTS `ebpls_transaction_payment_or_details` (
  `or_detail_id` int(15) NOT NULL AUTO_INCREMENT,
  `or_no` varchar(20) NOT NULL DEFAULT '',
  `trans_id` int(15) NOT NULL DEFAULT '0',
  `payment_id` int(15) NOT NULL DEFAULT '0',
  `fee_id` int(15) NOT NULL DEFAULT '0',
  `tax_fee_code` varchar(64) NOT NULL DEFAULT '''',
  `account_code` varchar(25) NOT NULL DEFAULT '',
  `account_nature` enum('DEBIT','CREDIT') NOT NULL DEFAULT 'CREDIT',
  `account_desc` varchar(255) NOT NULL DEFAULT '',
  `amount_due` decimal(12,2) NOT NULL DEFAULT '0.00',
  `or_entry_type` varchar(6) DEFAULT NULL,
  `ts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_part` int(1) DEFAULT '1',
  `linepaid` int(1) DEFAULT NULL,
  `nat_id` int(10) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT NULL,
  `permit_type` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`or_detail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_transaction_payment_or_details`
--

INSERT INTO `ebpls_transaction_payment_or_details` (`or_detail_id`, `or_no`, `trans_id`, `payment_id`, `fee_id`, `tax_fee_code`, `account_code`, `account_nature`, `account_desc`, `amount_due`, `or_entry_type`, `ts`, `payment_part`, `linepaid`, `nat_id`, `transaction`, `permit_type`) VALUES
(1, '1', 1, 1, 0, 'taxcode', 'acntcode', 'CREDIT', 'acnt desc', 0.00, 'CASH', '2010-07-28 09:38:47', 1, 0, 0, 'New', 'Business'),
(2, '2', 1, 1, 0, 'taxcode', 'acntcode', 'CREDIT', 'acnt desc', 0.00, 'CASH', '2010-07-28 09:44:43', 1, 0, 0, 'ReNew', 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_transaction_requirements`
--

CREATE TABLE IF NOT EXISTS `ebpls_transaction_requirements` (
  `req_id` int(15) NOT NULL AUTO_INCREMENT,
  `trans_id` int(15) NOT NULL DEFAULT '0',
  `permit_id` int(15) unsigned zerofill NOT NULL DEFAULT '000000000000000',
  `permit_type` enum('BUS','OCC','PED','FRA','MOT','FIS') NOT NULL DEFAULT 'BUS',
  `requirement_code` varchar(20) NOT NULL DEFAULT '',
  `requirement_desc` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) NOT NULL DEFAULT '''',
  `status` enum('PENDING','SUBMITTED') NOT NULL DEFAULT 'PENDING',
  `ts_submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ts_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `last_updated_by` varchar(25) NOT NULL DEFAULT '',
  `ts_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`req_id`),
  UNIQUE KEY `trans_permit_req` (`trans_id`,`permit_id`,`requirement_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ebpls_transaction_requirements`
--


-- --------------------------------------------------------

--
-- Table structure for table `ebpls_user`
--

CREATE TABLE IF NOT EXISTS `ebpls_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `csgroup` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gsmnum` varchar(255) DEFAULT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `lockout` datetime DEFAULT NULL,
  `currthreads` int(11) DEFAULT NULL,
  `roundrobinflag` datetime DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ebpls_user`
--

INSERT INTO `ebpls_user` (`id`, `level`, `csgroup`, `username`, `password`, `lastname`, `firstname`, `designation`, `email`, `gsmnum`, `login`, `logout`, `lockout`, `currthreads`, `roundrobinflag`, `dateadded`, `lastupdated`) VALUES
(1, 'ã', NULL, 'ebpls', '°eæw', 'EBPLS', 'EBPLS', '', '', '', '2010-11-02 15:32:13', '2010-11-02 11:43:18', NULL, NULL, NULL, '2006-07-06 09:56:38', '2010-11-02 15:32:13'),
(2, 'ã', NULL, 'NCCFOO', '»]vìkL', 'FOO', 'NCC', '', '', '', '2010-10-29 23:05:03', '2010-10-29 23:05:03', NULL, NULL, NULL, '2006-07-06 09:57:11', '2010-10-24 23:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_user_sublevel`
--

CREATE TABLE IF NOT EXISTS `ebpls_user_sublevel` (
  `title` varchar(255) NOT NULL DEFAULT '',
  `menu` varchar(255) DEFAULT NULL,
  `submenu` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rptvars` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_duh` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `ebpls_user_sublevel`
--

INSERT INTO `ebpls_user_sublevel` (`title`, `menu`, `submenu`, `id`, `rptvars`) VALUES
('CTC', 'Individual', '', 1, ''),
('CTC', 'Business', '', 2, ''),
('CTC', 'CTC Report', '', 3, ''),
('Business Permit', 'Application', 'New', 4, ''),
('Business Permit', 'Application', 'Renew', 5, ''),
('Business Permit', 'Application', 'Retire', 6, ''),
('Business Permit', 'Application', 'Search', 7, ''),
('Business Permit', 'Assessment', 'New', 8, ''),
('Business Permit', 'Assessment', 'Renew', 9, ''),
('Business Permit', 'Assessment', 'Retire', 10, ''),
('Business Permit', 'Assessment', 'Search', 11, ''),
('Business Permit', 'Payment', 'New', 12, ''),
('Business Permit', 'Payment', 'Renew', 13, ''),
('Business Permit', 'Payment', 'Retire', 14, ''),
('Business Permit', 'Payment', 'Search', 15, ''),
('Business Permit', 'Approval', 'New', 16, ''),
('Business Permit', 'Approval', 'Renew', 17, ''),
('Business Permit', 'Approval', 'Retire', 18, ''),
('Business Permit', 'Approval', 'Search', 19, ''),
('Business Permit', 'Releasing', 'New', 20, ''),
('Business Permit', 'Releasing', 'Renew', 21, ''),
('Business Permit', 'Releasing', 'Retire', 22, ''),
('Business Permit', 'Releasing', 'Search', 23, ''),
('Motorized Operator Permit', ' Application', 'New', 24, ''),
('Motorized Operator Permit', ' Application', 'Renew', 25, ''),
('Motorized Operator Permit', ' Application', 'Retire', 26, ''),
('Motorized Operator Permit', ' Application', 'Search', 27, ''),
('Motorized Operator Permit', ' Payment', 'New', 28, ''),
('Motorized Operator Permit', ' Payment', 'Renew', 29, ''),
('Motorized Operator Permit', ' Payment', 'Retire', 30, ''),
('Motorized Operator Permit', ' Payment', 'Search', 31, ''),
('Motorized Operator Permit', ' Releasing', 'New', 32, ''),
('Motorized Operator Permit', ' Releasing', 'Renew', 33, ''),
('Motorized Operator Permit', ' Releasing', 'Retire', 34, ''),
('Motorized Operator Permit', ' Releasing', 'Search', 114, ''),
('Occupational Permit', ' Application', 'New', 35, ''),
('Occupational Permit', ' Application', 'Renew', 36, ''),
('Occupational Permit', ' Application', 'Retire', 37, ''),
('Occupational Permit', ' Application', 'Search', 38, ''),
('Occupational Permit', ' Payment', 'New', 39, ''),
('Occupational Permit', ' Payment', 'Renew', 40, ''),
('Occupational Permit', ' Payment', 'Retire', 41, ''),
('Occupational Permit', ' Payment', 'Search', 42, ''),
('Occupational Permit', ' Releasing', 'New', 43, ''),
('Occupational Permit', ' Releasing', 'Renew', 44, ''),
('Occupational Permit', ' Releasing', 'Retire', 45, ''),
('Occupational Permit', ' Releasing', 'Search', 46, ''),
('Peddlers Permit', 'Application', 'New', 47, ''),
('Peddlers Permit', 'Application', 'Renew', 48, ''),
('Peddlers Permit', 'Application', 'Retire', 49, ''),
('Peddlers Permit', 'Application', 'Search', 50, ''),
('Peddlers Permit', 'Payment', 'New', 51, ''),
('Peddlers Permit', 'Payment', 'Renew', 52, ''),
('Peddlers Permit', 'Payment', 'Retire', 53, ''),
('Peddlers Permit', 'Payment', 'Search', 54, ''),
('Peddlers Permit', 'Releasing', 'New', 55, ''),
('Peddlers Permit', 'Releasing', 'Renew', 56, ''),
('Peddlers Permit', 'Releasing', 'Retire', 57, ''),
('Peddlers Permit', 'Releasing', 'Search', 58, ''),
('Franchise Permit', ' Application', 'New', 59, ''),
('Franchise Permit', ' Application', 'Renew', 60, ''),
('Franchise Permit', ' Application', 'Retire', 61, ''),
('Franchise Permit', ' Application', 'Search', 62, ''),
('Franchise Permit', ' Payment', 'New', 63, ''),
('Franchise Permit', ' Payment', 'Renew', 64, ''),
('Franchise Permit', ' Payment', 'Retire', 65, ''),
('Franchise Permit', ' Payment', 'Search', 66, ''),
('Franchise Permit', ' Releasing', 'New', 67, ''),
('Franchise Permit', ' Releasing', 'Renew', 68, ''),
('Franchise Permit', ' Releasing', 'Retire', 69, ''),
('Franchise Permit', ' Releasing', 'Search', 70, ''),
('Fishery Permit', 'Application', 'New', 71, ''),
('Fishery Permit', 'Application', 'Renew', 72, ''),
('Fishery Permit', 'Application', 'Retire', 73, ''),
('Fishery Permit', 'Application', 'Search', 74, ''),
('Fishery Permit', 'Payment', 'New', 75, ''),
('Fishery Permit', 'Payment', 'Renew', 76, ''),
('Fishery Permit', 'Payment', 'Retire', 77, ''),
('Fishery Permit', 'Payment', 'Search', 78, ''),
('Fishery Permit', 'Releasing', 'New', 79, ''),
('Fishery Permit', 'Releasing', 'Renew', 80, ''),
('Fishery Permit', 'Releasing', 'Retire', 81, ''),
('Fishery Permit', 'Releasing', 'Search', 82, ''),
('References', 'Business Permit', 'Tax/Fee/Other Charges', 83, ''),
('References', 'Business Permit', 'Business Nature', 84, ''),
('References', 'Business Permit', 'Business Requirements', 85, ''),
('References', 'General Settings', '', 86, ''),
('References', 'Other Permit Fees', '', 87, ''),
('References', 'LGU Listings', '', 88, ''),
('References', 'Zip Codes', '', 89, ''),
('References', 'Province Codes', '', 90, ''),
('References', 'District Codes', '', 91, ''),
('References', 'Barangay Listings', '', 92, ''),
('References', 'Zone Listings', '', 93, ''),
('References', 'Ownership Types', '', 94, ''),
('References', 'Penalty Settings', '', 95, ''),
('References', 'Report Signatories', '', 96, ''),
('Settings', 'User Manager', '', 97, ''),
('Settings', 'Activity Logs', '', 98, ''),
('Settings', 'Color Scheme Preferences', '', 99, ''),
('Settings', 'System Settings', '', 100, ''),
('Reports Manager', 'Collection', 'Order of Payment', 195, 'col7'),
('References', 'Occupancy Type', NULL, 102, ''),
('References', 'Industry Sector', NULL, 103, ''),
('References', 'Fishery Permit Fees', 'Boat Fee', 104, ''),
('References', 'Fishery Permit Fees', 'Fish Activities Fee', 105, ''),
('References', 'CTC Settings', '', 106, ''),
('References', 'Pemit Number Format', '', 107, ''),
('References', 'Announcement', '', 108, ''),
('References', 'Chart of Accounts', '', 109, ''),
('References', 'Citizenship', NULL, 110, ''),
('References', 'Lot Pin', '', 111, ''),
('References', 'FAQ', '', 112, ''),
('References', 'Links', '', 113, ''),
('Reports Manager', 'Collection', 'Notice of Business Tax Collection', 194, 'col6'),
('Reports Manager', 'Collection', 'Individual Tax Delinquent List', 193, 'col5'),
('Reports Manager', 'Collection', 'Comparative Quarterly Report', 192, 'col4'),
('Reports Manager', 'Collection', 'Comparative Annual Report', 191, 'col3'),
('Reports Manager', 'Collection', 'Abstract of Collection', 190, 'col2'),
('Reports Manager', 'System', 'Activity Log List', 189, 'sys2'),
('Reports Manager', 'CTC', 'CTC Individual Application Masterlist', 188, 'ctl3'),
('Reports Manager', 'Peddler', 'Peddlers Permit', 186, 'ppl3'),
('Reports Manager', 'CTC', 'CTC Business Application Masterlist', 187, 'ctl2'),
('Reports Manager', 'Peddler', 'Peddler Masterlist', 185, 'ppl2'),
('Reports Manager', 'Fishery', 'Fishery Registry', 184, 'fil3'),
('Reports Manager', 'Occupational', 'Occupational Registry', 182, 'ocl3'),
('Reports Manager', 'Fishery', 'Fishery Permit', 183, 'fil2'),
('Reports Manager', 'Occupational', 'Occupational Permit', 181, 'ocl2'),
('Reports Manager', 'Franchise', 'Franchise Permit', 179, 'fpl2'),
('Reports Manager', 'Franchise', 'Franchise Registry', 180, 'fpl3'),
('Reports Manager', 'Motorized', 'Motorized Permit', 178, 'mpl3'),
('Reports Manager', 'Motorized', 'Masterlist of Motorized Vehicles', 177, 'mpl2'),
('Reports Manager', 'Business', 'Business Establishment Comparative', 176, 'brm11'),
('Reports Manager', 'Business', 'Business Profile', 175, 'brm10'),
('Reports Manager', 'Business', 'List of Establishment', 174, 'brm9'),
('Reports Manager', 'Business', 'List of Establishment Without Permit', 173, 'brm8'),
('Reports Manager', 'Business', 'Top Business Establishment', 172, 'brm7'),
('Reports Manager', 'Business', 'List of Business Requirement Delinquent', 171, 'brm6'),
('Reports Manager', 'Business', 'Exempted Business Establishment', 170, 'brm5'),
('Reports Manager', 'Business', 'Business Permit', 169, 'brm4'),
('Reports Manager', 'Business', 'Business Masterlist', 168, 'brm3'),
('Reports Manager', 'Business', 'Blacklisted Business Establishment', 167, 'brm2'),
('Reports Manager', 'Collection', 'Collections Summary', 196, 'col8'),
('Reports Manager', 'Collection', 'Comparative Annual Graph', 197, ''),
('Reports Manager', 'Collection', 'Audit Trail', 198, ''),
('Reports Manager', 'Collection', 'Abstract of CTC Issued', 199, ''),
('References', 'Engine Type', NULL, 200, ''),
('References', 'Fishery Activity Description', NULL, 201, '');

-- --------------------------------------------------------

--
-- Table structure for table `ebpls_user_sublevel_listings`
--

CREATE TABLE IF NOT EXISTS `ebpls_user_sublevel_listings` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sublevel_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `user_id` (`user_id`,`sublevel_id`),
  KEY `idx_duh` (`user_id`,`sublevel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebpls_user_sublevel_listings`
--

INSERT INTO `ebpls_user_sublevel_listings` (`user_id`, `sublevel_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(1, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 167),
(2, 168),
(2, 169),
(2, 170),
(2, 171),
(2, 172),
(2, 173),
(2, 174),
(2, 175),
(2, 176),
(2, 177),
(2, 178),
(2, 179),
(2, 180),
(2, 181),
(2, 182),
(2, 183),
(2, 184),
(2, 185),
(2, 186),
(2, 187),
(2, 188),
(2, 189),
(2, 190),
(2, 191),
(2, 192),
(2, 193),
(2, 194),
(2, 195),
(2, 196),
(2, 197),
(2, 198),
(2, 199),
(2, 200),
(2, 201);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `faqid` int(10) NOT NULL AUTO_INCREMENT,
  `faq_question` text NOT NULL,
  `faq_answer` text NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`faqid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `faq`
--


-- --------------------------------------------------------

--
-- Table structure for table `fee_exempt`
--

CREATE TABLE IF NOT EXISTS `fee_exempt` (
  `ex_id` int(10) NOT NULL AUTO_INCREMENT,
  `business_category_code` varchar(20) DEFAULT NULL,
  `tfoid` int(10) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`ex_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `fee_exempt`
--

INSERT INTO `fee_exempt` (`ex_id`, `business_category_code`, `tfoid`, `active`) VALUES
(1, 'SIN', 3, 0),
(2, 'SIN', 2, 0),
(3, 'SIN', 4, 0),
(4, 'REL', 3, 0),
(5, 'REL', 2, 0),
(6, 'REL', 4, 0),
(7, 'PAR', 3, 0),
(8, 'PAR', 2, 0),
(9, 'PAR', 4, 0),
(10, 'COR', 3, 0),
(11, 'COR', 2, 0),
(12, 'COR', 4, 0),
(13, 'COO', 3, 0),
(14, 'COO', 2, 0),
(15, 'COO', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fish_activity`
--

CREATE TABLE IF NOT EXISTS `fish_activity` (
  `fish_id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) DEFAULT NULL,
  `act_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `transaction` varchar(20) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fish_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fish_activity`
--


-- --------------------------------------------------------

--
-- Table structure for table `fish_assess`
--

CREATE TABLE IF NOT EXISTS `fish_assess` (
  `ass_id` int(10) NOT NULL AUTO_INCREMENT,
  `culture_id` int(10) DEFAULT NULL,
  `owner_id` int(10) NOT NULL DEFAULT '0',
  `amt` decimal(12,2) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT NULL,
  `active` int(10) DEFAULT NULL,
  PRIMARY KEY (`ass_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fish_assess`
--


-- --------------------------------------------------------

--
-- Table structure for table `fish_boat`
--

CREATE TABLE IF NOT EXISTS `fish_boat` (
  `boat_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `boat_name` varchar(250) DEFAULT NULL,
  `crew` int(10) DEFAULT NULL,
  `engine_type` varchar(250) DEFAULT NULL,
  `engine_cap` decimal(12,2) DEFAULT NULL,
  `reg_no` varchar(250) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `up_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `up_by` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`boat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fish_boat`
--


-- --------------------------------------------------------

--
-- Table structure for table `franchise_application`
--

CREATE TABLE IF NOT EXISTS `franchise_application` (
  `rowid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `toda` varchar(255) DEFAULT NULL,
  `plate` varchar(20) DEFAULT NULL,
  `body` varchar(30) DEFAULT NULL,
  `app_date` datetime DEFAULT NULL,
  `app_status_code` varchar(5) DEFAULT NULL,
  `stat_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `franchise_application`
--


-- --------------------------------------------------------

--
-- Table structure for table `global_sign`
--

CREATE TABLE IF NOT EXISTS `global_sign` (
  `sign_id` int(10) NOT NULL AUTO_INCREMENT,
  `gs_name` varchar(255) DEFAULT NULL,
  `gs_pos` varchar(255) DEFAULT NULL,
  `gs_office` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `global_sign`
--

INSERT INTO `global_sign` (`sign_id`, `gs_name`, `gs_pos`, `gs_office`) VALUES
(1, 'Mayor', 'Mayor', 'Office of the mayor'),
(2, 'Mrs.  Treasurera Romero', 'Municipal Treasuresr II', 'Treasurers Office');

-- --------------------------------------------------------

--
-- Table structure for table `havereq`
--

CREATE TABLE IF NOT EXISTS `havereq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reqid` int(10) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `business_id` int(10) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `havereq`
--


-- --------------------------------------------------------

--
-- Table structure for table `ibpls_application`
--

CREATE TABLE IF NOT EXISTS `ibpls_application` (
  `rowid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `bizname` varchar(100) DEFAULT NULL,
  `biztype` varchar(50) DEFAULT NULL,
  `bizstreet` varchar(60) DEFAULT NULL,
  `bizbarangay` varchar(60) DEFAULT NULL,
  `bizzone` varchar(20) DEFAULT NULL,
  `bizdistrict` varchar(20) DEFAULT NULL,
  `bizcity` varchar(30) DEFAULT NULL,
  `bizprovince` varchar(30) DEFAULT NULL,
  `biztel` varchar(30) DEFAULT NULL,
  `app_date` datetime DEFAULT NULL,
  `app_status_code` varchar(5) DEFAULT NULL,
  `stat_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ibpls_application`
--


-- --------------------------------------------------------

--
-- Table structure for table `ibpls_barangay`
--

CREATE TABLE IF NOT EXISTS `ibpls_barangay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `blgf_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ibpls_barangay`
--

INSERT INTO `ibpls_barangay` (`id`, `name`, `district_id`, `blgf_code`) VALUES
(2, 'barangay dos1', 9, '12354=='),
(4, 'barangay 6', 6, 'blgf 6');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_districts`
--

CREATE TABLE IF NOT EXISTS `ibpls_districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `g_zone` int(1) NOT NULL DEFAULT '0',
  `lgu_id` int(11) NOT NULL,
  `blgf_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ibpls_districts`
--

INSERT INTO `ibpls_districts` (`id`, `name`, `g_zone`, `lgu_id`, `blgf_code`) VALUES
(9, 'district 6', 0, 5, 'blgf123'),
(6, '22266', 0, 1, '333377'),
(8, 'fdfdf', 0, 5, 'ri');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_groups`
--

CREATE TABLE IF NOT EXISTS `ibpls_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ibpls_groups`
--

INSERT INTO `ibpls_groups` (`id`, `name`, `description`) VALUES
(1, 'Super System Administrator', ''),
(2, 'System Administrator', ''),
(3, 'Timekeeper', ''),
(4, 'Official Business Encoder', ''),
(5, 'Leave Manager', ''),
(6, 'Leave Administrator', ''),
(7, 'Records Administrator', ''),
(8, 'View Attendance 10 Times Tardy', '');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_lgu`
--

CREATE TABLE IF NOT EXISTS `ibpls_lgu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `province_id` int(255) NOT NULL,
  `blgf_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ibpls_lgu`
--

INSERT INTO `ibpls_lgu` (`id`, `name`, `province_id`, `blgf_code`) VALUES
(1, 'Lopez', 1, 'QZ'),
(5, 'lumban', 1, '123');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_migrations`
--

CREATE TABLE IF NOT EXISTS `ibpls_migrations` (
  `version` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ibpls_migrations`
--

INSERT INTO `ibpls_migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_permissions`
--

CREATE TABLE IF NOT EXISTS `ibpls_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `module` varchar(50) NOT NULL,
  `roles` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `ibpls_permissions`
--

INSERT INTO `ibpls_permissions` (`id`, `group_id`, `module`, `roles`) VALUES
(1, 1, 'users', '["index","save","delete","my_account"]'),
(2, 1, 'groups', '["save","delete"]'),
(3, 1, 'permissions', '["save","delete","group"]'),
(4, 1, 'employees', '["index","add_employee","edit_employee","delete_employee","add_cart","remove_cart","id_request"]'),
(5, 1, 'pds', '["personal_info","employee_profile","family","education","examination","work","voluntary_work","trainings","other_info","position_details","service_record","scanned_docs","reports","pds_print_preview","sr_print_preview","training_preview"]'),
(6, 1, 'personnel', '["assets","assets_spouse","assets_unmarried","assets_real_properties","assets_personals","assets_liabilities","assets_business_interests","assets_relatives","assets_other_info","personnel_schedule"]'),
(7, 1, 'training_manage', '["type","type_save","type_delete","course","course_save","course_delete","event","event_save","evenr_delete","attendance","attendance_save","attendance_delete","contact_type","contact_type_save","contact_type_delete","contact_info","contact_info_save","contact_info_delete"]'),
(8, 1, 'attendance', '["view_attendance","dtr","jo","double_entries","view_absences","view_late","view_ob","view_tardiness","view_ten_tardiness"]'),
(9, 1, 'manual_manage', '["login","cto","cto_apps","cto_forward_balance","office_pass"]'),
(10, 1, 'office_manage', '["view_offices","add_office","edit_office","divisions"]'),
(11, 1, 'leave_manage', '["records","leave_card","cancel_leave","file_leave","encode_leave_card","leave_apps","forwarded","undertime","cancel_undertime","wop","stop_earnings","perform_leave_earnings","settings"]'),
(12, 1, 'settings_manage', '["salary_grade","holiday","schedules","employee_schedule","audit_trail","general_settings","backup","offline_update"]'),
(23, 6, 'leave_manage', '["records","leave_card","cancel_leave","file_leave","encode_leave_card","leave_apps","forwarded","undertime","cancel_undertime","wop","stop_earnings","perform_leave_earnings","settings"]'),
(32, 3, 'attendance', '["view_attendance","dtr","jo","double_entries","view_absences","view_late","view_ob","view_tardiness","view_ten_tardiness"]'),
(40, 7, 'employees', '["index","add_employee","edit_employee","delete_employee","add_cart","remove_cart","id_request"]'),
(41, 7, 'pds', '["personal_info","employee_profile","family","education","examination","work","voluntary_work","trainings","other_info","position_details","service_record","scanned_docs","reports","pds_print_preview","sr_print_preview","training_preview"]'),
(42, 7, 'personnel', '["assets","assets_spouse","assets_unmarried","assets_real_properties","assets_personals","assets_liabilities","assets_business_interests","assets_relatives","assets_other_info","personnel_schedule"]'),
(43, 7, 'training_manage', '["type","type_save","type_delete","course","course_save","course_delete","event","event_save","evenr_delete","attendance","attendance_save","attendance_delete","contact_type","contact_type_save","contact_type_delete","contact_info","contact_info_save","contact_info_delete"]'),
(52, 2, 'employees', '["index","add_employee","edit_employee","delete_employee","add_cart","remove_cart","id_request"]'),
(53, 2, 'pds', '["personal_info","employee_profile","family","education","examination","work","voluntary_work","trainings","other_info","position_details","service_record","scanned_docs","reports","pds_print_preview","sr_print_preview","training_preview"]'),
(54, 2, 'personnel', '["assets","assets_spouse","assets_unmarried","assets_real_properties","assets_personals","assets_liabilities","assets_business_interests","assets_relatives","assets_other_info","personnel_schedule"]'),
(55, 2, 'training_manage', '["type","type_save","type_delete","course","course_save","course_delete","event","event_save","evenr_delete","attendance","attendance_save","attendance_delete","contact_type","contact_type_save","contact_type_delete","contact_info","contact_info_save","contact_info_delete"]'),
(56, 2, 'attendance', '["dtr"]'),
(57, 2, 'manual_manage', '["office_pass"]'),
(58, 2, 'office_manage', '["view_offices","add_office","edit_office","divisions"]'),
(65, 7, 'manual_manage', '["login"]'),
(72, 6, 'employees', '["index","add_employee","edit_employee","delete_employee","add_cart","remove_cart","id_request"]'),
(73, 6, 'pds', '["personal_info","employee_profile","family","education","examination","work","voluntary_work","trainings","other_info","position_details","service_record","scanned_docs","reports","pds_print_preview","sr_print_preview","training_preview"]'),
(74, 6, 'personnel', '["assets","assets_spouse","assets_unmarried","assets_real_properties","assets_personals","assets_liabilities","assets_business_interests","assets_relatives","assets_other_info","personnel_schedule"]'),
(75, 6, 'training_manage', '["type","type_save","type_delete","course","course_save","course_delete","event","event_save","evenr_delete","attendance","attendance_save","attendance_delete","contact_type","contact_type_save","contact_type_delete","contact_info","contact_info_save","contact_info_delete"]'),
(76, 6, 'attendance', '["view_attendance","dtr","jo","double_entries","view_absences","view_late","view_ob","view_tardiness","view_ten_tardiness"]'),
(79, 6, 'settings_manage', '["salary_grade","holiday","schedules","employee_schedule","audit_trail","general_settings","backup","offline_update"]'),
(90, 5, 'leave_manage', '["records","leave_card","cancel_leave","file_leave","leave_apps","reports"]');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_provinces`
--

CREATE TABLE IF NOT EXISTS `ibpls_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `blgf_code` varchar(10) NOT NULL COMMENT 'bureau of local govt finance',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ibpls_provinces`
--

INSERT INTO `ibpls_provinces` (`id`, `name`, `blgf_code`) VALUES
(1, 'Laguna', 'LA'),
(11, 'ri', 'dsds');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_sessions`
--

CREATE TABLE IF NOT EXISTS `ibpls_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibpls_sessions`
--

INSERT INTO `ibpls_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('aa476ab61f3717fbc9e9c59bc4166d04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11', 1343921053, 'a:7:{s:9:"user_data";s:0:"";s:8:"username";s:9:"mannysoft";s:5:"lname";s:5:"isles";s:9:"office_id";s:2:"21";s:8:"group_id";s:4:"1000";s:9:"user_type";s:1:"1";s:13:"flash:old:msg";s:13:"Zone Deleted!";}'),
('be1a22d2c7be659494513cea606dcd1a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11', 1343961515, '');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_settings`
--

CREATE TABLE IF NOT EXISTS `ibpls_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `setting_value` text,
  `settings_group_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `ibpls_settings`
--

INSERT INTO `ibpls_settings` (`id`, `name`, `setting_value`, `settings_group_id`, `description`) VALUES
(1, 'system_name', 'Province of Marinduque', 0, ''),
(2, 'version', '1.0', 0, ''),
(8, 'agency', 'quezon', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_users`
--

CREATE TABLE IF NOT EXISTS `ibpls_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `office_id` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `stat` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `ibpls_users`
--

INSERT INTO `ibpls_users` (`id`, `group_id`, `username`, `fname`, `mname`, `lname`, `office_id`, `user_type`, `password`, `stat`) VALUES
(49, 1000, 'mannysoft', 'manny', 'h', 'isles', 21, '1', 'e75d3a4d61d3f05cd1bf15068a01aacd', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_zip`
--

CREATE TABLE IF NOT EXISTS `ibpls_zip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lgu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ibpls_zip`
--

INSERT INTO `ibpls_zip` (`id`, `name`, `lgu_id`) VALUES
(1, '4444', 1),
(2, '4014', 5),
(3, '4140', 5),
(4, '5555', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ibpls_zone`
--

CREATE TABLE IF NOT EXISTS `ibpls_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `g_zone` int(1) NOT NULL DEFAULT '0',
  `barangay_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ibpls_zone`
--

INSERT INTO `ibpls_zone` (`id`, `name`, `g_zone`, `barangay_id`) VALUES
(1, 'Zone 12222', 0, 2),
(4, 'zone dos1', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lot_pin`
--

CREATE TABLE IF NOT EXISTS `lot_pin` (
  `pin_id` int(11) NOT NULL AUTO_INCREMENT,
  `lotpin` varchar(60) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `user_add` varchar(20) DEFAULT NULL,
  `parcel` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`pin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lot_pin`
--

INSERT INTO `lot_pin` (`pin_id`, `lotpin`, `business_id`, `date_add`, `user_add`, `parcel`) VALUES
(1, 'QZ-QZ-QZ--', 0, '2010-08-22 11:57:34', 'EBPLS', ''),
(2, 'QZ-QZ-QZ--125', 1, '2010-10-30 14:10:05', 'EBPLS', '125');

-- --------------------------------------------------------

--
-- Table structure for table `main_branch`
--

CREATE TABLE IF NOT EXISTS `main_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_main_offc_name` varchar(255) DEFAULT NULL,
  `business_main_offc_lot_no` varchar(255) DEFAULT NULL,
  `business_main_offc_street` varchar(255) DEFAULT NULL,
  `business_main_offc_barangay_name` varchar(255) DEFAULT NULL,
  `business_main_offc_barangay_code` varchar(20) DEFAULT NULL,
  `business_main_offc_zone_code` varchar(20) DEFAULT NULL,
  `business_main_offc_district_code` varchar(20) DEFAULT NULL,
  `business_main_offc_city_code` varchar(20) DEFAULT NULL,
  `business_main_offc_zip_code` varchar(20) DEFAULT NULL,
  `business_main_offc_tin_no` varchar(255) DEFAULT NULL,
  `main_offc_phone` varchar(20) NOT NULL DEFAULT '',
  `main_office_prov` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`branch_id`),
  UNIQUE KEY `id` (`branch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `main_branch`
--


-- --------------------------------------------------------

--
-- Table structure for table `motor_application`
--

CREATE TABLE IF NOT EXISTS `motor_application` (
  `rowid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `toda` varchar(255) DEFAULT NULL,
  `plate` varchar(20) DEFAULT NULL,
  `body` varchar(30) DEFAULT NULL,
  `app_date` datetime DEFAULT NULL,
  `app_status_code` varchar(5) DEFAULT NULL,
  `stat_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `motor_application`
--


-- --------------------------------------------------------

--
-- Table structure for table `msg_board`
--

CREATE TABLE IF NOT EXISTS `msg_board` (
  `rowid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `msg_date` datetime DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `msg_board`
--


-- --------------------------------------------------------

--
-- Table structure for table `permit_templates`
--

CREATE TABLE IF NOT EXISTS `permit_templates` (
  `tempid` int(3) NOT NULL AUTO_INCREMENT,
  `permit_type` varchar(20) DEFAULT NULL,
  `user` varchar(10) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `permit_header` varchar(10) DEFAULT NULL,
  `permit_date` int(1) DEFAULT NULL,
  `permit_sequence` int(11) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permit_templates`
--

INSERT INTO `permit_templates` (`tempid`, `permit_type`, `user`, `date_entered`, `permit_header`, `permit_date`, `permit_sequence`) VALUES
(1, 'Business', 'EBPLS', '0000-00-00 00:00:00', 'BUS', 2, 00000000001),
(2, 'Peddlers', 'EBPLS', '0000-00-00 00:00:00', 'PED', 2, 00000000001),
(3, 'Occupational', 'EBPLS', '0000-00-00 00:00:00', 'OCC', 2, 00000000001),
(4, 'Motorized', 'EBPLS', '0000-00-00 00:00:00', 'MOT', 2, 00000000001),
(5, 'Fishery', 'EBPLS', '0000-00-00 00:00:00', 'FIS', 2, 00000000001);

-- --------------------------------------------------------

--
-- Table structure for table `renew_vehicle`
--

CREATE TABLE IF NOT EXISTS `renew_vehicle` (
  `renew_id` int(21) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `motorized_motor_id` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) NOT NULL DEFAULT '0',
  `updated_by` varchar(50) NOT NULL DEFAULT '',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`renew_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `renew_vehicle`
--


-- --------------------------------------------------------

--
-- Table structure for table `report_signatories`
--

CREATE TABLE IF NOT EXISTS `report_signatories` (
  `rs_id` int(10) NOT NULL AUTO_INCREMENT,
  `report_file` varchar(100) DEFAULT NULL,
  `sign_id` int(10) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `sign_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`rs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `report_signatories`
--

INSERT INTO `report_signatories` (`rs_id`, `report_file`, `sign_id`, `date_updated`, `updated_by`, `sign_type`) VALUES
(1, 'Business Permit', 1, '2010-08-22 12:01:21', 'EBPLS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `restore`
--

CREATE TABLE IF NOT EXISTS `restore` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `restoretime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `restore`
--


-- --------------------------------------------------------

--
-- Table structure for table `rpt_temp_abs`
--

CREATE TABLE IF NOT EXISTS `rpt_temp_abs` (
  `rpt_id` int(10) NOT NULL AUTO_INCREMENT,
  `tfoid` int(10) DEFAULT NULL,
  PRIMARY KEY (`rpt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rpt_temp_abs`
--

INSERT INTO `rpt_temp_abs` (`rpt_id`, `tfoid`) VALUES
(1, 1),
(4, 4),
(3, 3),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE IF NOT EXISTS `sms` (
  `smsid` int(10) NOT NULL AUTO_INCREMENT,
  `telnum` varchar(30) DEFAULT NULL,
  `msg` text,
  `daterec` datetime DEFAULT NULL,
  PRIMARY KEY (`smsid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sms`
--


-- --------------------------------------------------------

--
-- Table structure for table `sms_archive`
--

CREATE TABLE IF NOT EXISTS `sms_archive` (
  `archive_id` int(10) NOT NULL AUTO_INCREMENT,
  `telnum` varchar(20) DEFAULT NULL,
  `msg` text,
  `datesend` datetime DEFAULT NULL,
  PRIMARY KEY (`archive_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sms_archive`
--


-- --------------------------------------------------------

--
-- Table structure for table `sms_message`
--

CREATE TABLE IF NOT EXISTS `sms_message` (
  `msgid` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) DEFAULT NULL,
  `full_message` text,
  `dateupdated` datetime DEFAULT NULL,
  `updateby` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sms_message`
--

INSERT INTO `sms_message` (`msgid`, `keyword`, `full_message`, `dateupdated`, `updateby`) VALUES
(1, 'help', 'Available keywords: status <pin>, amountdue <pin>, duedate <pin> ', NULL, NULL),
(2, 'status', NULL, NULL, NULL),
(3, 'amountdue', NULL, NULL, NULL),
(4, 'duedate', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_send`
--

CREATE TABLE IF NOT EXISTS `sms_send` (
  `smsid` int(10) NOT NULL AUTO_INCREMENT,
  `telnum` varchar(15) DEFAULT NULL,
  `message` text,
  `new_sms` int(1) DEFAULT NULL,
  `datesent` datetime DEFAULT NULL,
  PRIMARY KEY (`smsid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sms_send`
--


-- --------------------------------------------------------

--
-- Table structure for table `tempassess`
--

CREATE TABLE IF NOT EXISTS `tempassess` (
  `assid` varchar(10) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `business_id` int(10) DEFAULT NULL,
  `natureid` int(10) DEFAULT NULL,
  `taxfeeid` int(10) DEFAULT NULL,
  `multi` decimal(10,2) DEFAULT NULL,
  `amt` decimal(12,2) DEFAULT NULL,
  `formula` varchar(50) DEFAULT NULL,
  `isfee` int(1) DEFAULT NULL,
  `compval` decimal(12,2) DEFAULT NULL,
  `tfoid` int(10) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `transaction` varchar(20) NOT NULL DEFAULT '',
  `date_create` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempassess`
--


-- --------------------------------------------------------

--
-- Table structure for table `tempbusnature`
--

CREATE TABLE IF NOT EXISTS `tempbusnature` (
  `tempid` int(4) NOT NULL AUTO_INCREMENT,
  `bus_code` varchar(10) DEFAULT NULL,
  `bus_nature` varchar(255) DEFAULT NULL,
  `cap_inv` decimal(10,2) DEFAULT NULL,
  `last_yr` decimal(10,2) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `business_id` int(10) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `linepaid` int(1) DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `retire` int(1) DEFAULT NULL,
  `transaction` varchar(20) DEFAULT NULL,
  `recpaid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tempbusnature`
--

INSERT INTO `tempbusnature` (`tempid`, `bus_code`, `bus_nature`, `cap_inv`, `last_yr`, `owner_id`, `business_id`, `date_create`, `linepaid`, `active`, `retire`, `transaction`, `recpaid`) VALUES
(1, '1', 'SOFTWARE', 500000.00, 0.00, 1, 1, '2010-07-28 09:10:57', 5, 1, NULL, 'New', 1),
(2, '', '', 25000.00, 0.00, 1, 1, '2010-07-28 09:27:56', 5, 1, NULL, 'New', 1),
(3, '1', 'SOFTWARE', 100000.00, 0.00, 2, 2, '2010-08-22 12:05:47', 0, 1, NULL, 'New', 0),
(4, '1', 'SOFTWARE', 200.00, 0.00, 4, 3, '2010-08-23 12:46:50', 0, 1, NULL, 'New', 0),
(5, '1', 'SOFTWARE', 500000.00, 0.00, 6, 4, '2010-10-29 23:07:16', 0, 1, NULL, 'New', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tempfees`
--

CREATE TABLE IF NOT EXISTS `tempfees` (
  `fee_id` int(11) DEFAULT NULL,
  `fee_desc` varchar(255) DEFAULT NULL,
  `fee_amount` int(10) DEFAULT NULL,
  `permit_type` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempfees`
--


-- --------------------------------------------------------

--
-- Table structure for table `temppayment`
--

CREATE TABLE IF NOT EXISTS `temppayment` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `payamt` decimal(12,2) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `permit_type` varchar(255) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `pay_type` varchar(20) DEFAULT NULL,
  `permit_status` varchar(20) DEFAULT NULL,
  `or_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `temppayment`
--


-- --------------------------------------------------------

--
-- Table structure for table `trans_his`
--

CREATE TABLE IF NOT EXISTS `trans_his` (
  `his_id` int(10) NOT NULL AUTO_INCREMENT,
  `orig_owner` int(10) DEFAULT NULL,
  `trans_to` int(10) NOT NULL DEFAULT '0',
  `business_id` int(10) DEFAULT NULL,
  `date_trans` datetime DEFAULT NULL,
  PRIMARY KEY (`his_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trans_his`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `rowid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `cstatus` varchar(8) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `citizenship` varchar(30) DEFAULT NULL,
  `tin` varchar(30) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ebpls_owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `vehicle_transfer`
--

CREATE TABLE IF NOT EXISTS `vehicle_transfer` (
  `trans_id` int(10) NOT NULL AUTO_INCREMENT,
  `motor_id` int(11) NOT NULL DEFAULT '0',
  `old_owner` int(11) NOT NULL DEFAULT '0',
  `new_owner` int(11) NOT NULL DEFAULT '0',
  `date_transfer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `input_by` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`trans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `vehicle_transfer`
--

