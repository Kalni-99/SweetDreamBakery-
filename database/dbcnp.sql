-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2021 at 02:43 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE IF NOT EXISTS `admininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `name`, `contact`, `email`, `username`, `password`) VALUES
(1, 'Sweet Dream', '0712345678', 'SDB@email.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblcnp`
--

DROP TABLE IF EXISTS `tblcnp`;
CREATE TABLE IF NOT EXISTS `tblcnp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `prize` float DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcnp`
--

INSERT INTO `tblcnp` (`id`, `name`, `prize`, `description`, `image`, `status`) VALUES
(8, 'Red Velvet Cake', 2200, 'Red Velvet 1Kg', 'upload/maxresdefault.jpg', 'Available'),
(9, 'Red Velvet Cup Cake', 1000, 'Red Velvet Cup Cake 12pcs', 'upload/images (1).jfif', 'Un-Available'),
(10, 'Cheese Cake', 3000, 'Cheese Cake 1kg', 'upload/60B07F46-E017-4FDD-A6A9-BDA7A09C6240.jpg', 'Available'),
(11, 'Chocolate Cake ', 500, 'Chocolate Cake 1kg', 'upload/download.jfif', 'Select'),
(12, 'Vanilla Cake', 250, 'Vanilla Cake 1kg', 'upload/easy-vanilla-butter-cake_1980x1320-118393-1.jpg', 'Available'),
(13, 'Strawberry Cake ', 750, 'Strawberry Cake 1kg', 'upload/images (3).jfif', 'Un-Available'),
(14, 'Vanilla Cup Cake', 550, 'Vanilla Cup Cake 6Pcs', 'upload/Vanilla-Cupcakes-3.jpg', 'Available'),
(15, 'Chocolate Cup Cake', 1000, 'Chocolate Cup Cake', 'upload/maxresdefault (1).jpg', 'Available'),
(16, 'Oreo Cup Cake', 1500, 'Oreo Cup Cake', 'upload/download (1).jfif', 'Un-Available'),
(17, 'Unicom Cup Cake', 1000, 'Unicom Cup Cake', 'upload/images (2).jfif', 'Un-Available'),
(18, 'PiÃ±ata Cake', 2500, 'PiÃ±ata Cake', 'upload/images.jfif', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
CREATE TABLE IF NOT EXISTS `tblorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `cnpoid` int(11) DEFAULT NULL,
  `oqty` int(11) DEFAULT NULL,
  `ostatus` varchar(50) DEFAULT NULL,
  `otype` varchar(50) DEFAULT NULL,
  `datepickup` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `cname`, `address`, `contact`, `cnpoid`, `oqty`, `ostatus`, `otype`, `datepickup`, `timestamp`) VALUES
(13, 'Kalani ', 'Matara', '0711779591', 18, 1, 'new', 'Pick-up', '2021-08-17', '2021-08-17 14:40:24'),
(14, 'Kalani ', 'Galle', '07112345678', 8, 12, 'new', 'Deliver', '2021-08-25', '2021-08-17 14:41:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
