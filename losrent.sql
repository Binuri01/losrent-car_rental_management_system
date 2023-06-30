-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 19, 2022 at 09:45 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `losrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_reg`
--

CREATE TABLE IF NOT EXISTS `app_reg` (
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contactnumber` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Reenteredpassword` varchar(30) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_reg`
--

INSERT INTO `app_reg` (`Firstname`, `Lastname`, `Address`, `Email`, `Contactnumber`, `Username`, `Password`, `Reenteredpassword`) VALUES
('Thilini', 'De Mel', 'Nuwara Eliya', 'thilini@gmail.com', 712665984, 'thili_99', '120899', '120899');

-- --------------------------------------------------------

--
-- Table structure for table `carregistration`
--

CREATE TABLE IF NOT EXISTS `carregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `carregistration`
--

INSERT INTO `carregistration` (`id`, `car_no`, `make`, `model`, `available`) VALUES
(3, 'C0002', 'Honda', 'Swift', 'No'),
(5, 'C0004', 'Toyota', 'Corolla', 'No'),
(8, 'C0005', 'Honda', 'guyfugjh', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `name`, `address`, `mobile`) VALUES
(1, 'A0001', 'Binuri', 'Mount Lavinia', 7012654),
(2, 'A0002', 'Nipuni', 'Nugegoda', 716594798),
(3, 'A0003', 'Masha', 'Athurugiriya', 14792654),
(4, 'A0004', 'Adithya', 'Anuradhapura', 768126352);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE IF NOT EXISTS `rental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `car_id`, `cust_id`, `fee`, `date`, `due`) VALUES
(1, 'C0002', 'A0001', 500, '2022-09-16', '2022-09-23'),
(2, 'C0002', 'A0002', 400, '2022-09-12', '2022-09-29'),
(3, 'C0002', 'A0002', 400, '2022-09-12', '2022-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

CREATE TABLE IF NOT EXISTS `returncar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elap` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `carid`, `custid`, `return_date`, `elap`, `fine`) VALUES
(1, 'C0002', 'A0001', '2022-09-16', 5, 500),
(2, 'C0002', 'A0001', '2022-09-16', 2, 200),
(3, 'C0002', 'A0001', '2022-09-16', 2, 200),
(4, 'C0002', 'A0001', '2022-09-16', 2, 200),
(5, 'C0002', 'A0001', '2022-09-16', 2, 200);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
