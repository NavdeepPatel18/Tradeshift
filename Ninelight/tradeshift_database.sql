-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 09:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradeshift`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(6) NOT NULL,
  `category_name` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
('CAT183', 'Namkeen'),
('CAT228', 'Wafers'),
('CAT727', 'Western Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `user_id` varchar(10) NOT NULL,
  `prduct_id` varchar(6) NOT NULL,
  `quantity` int(5) NOT NULL,
  `total_price` int(8) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `order_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(6) NOT NULL,
  `category_id` varchar(6) NOT NULL,
  `product_name` char(15) NOT NULL,
  `product_weight` int(2) NOT NULL,
  `product_price_distributor` float NOT NULL,
  `product_price_shopkeeper` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `user_id` varchar(10) NOT NULL,
  `adder_id` varchar(10) NOT NULL,
  `user_type` int(1) NOT NULL,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `area_street` varchar(50) NOT NULL,
  `village` char(20) NOT NULL,
  `city` char(15) NOT NULL,
  `district` char(15) NOT NULL,
  `state` char(10) NOT NULL DEFAULT 'GUJARAT',
  `country` char(6) NOT NULL DEFAULT 'INDIA',
  `pincode` int(6) NOT NULL,
  `shop_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `adder_id`, `user_type`, `first_name`, `last_name`, `user_name`, `email_id`, `password`, `phone_no`, `area_street`, `village`, `city`, `district`, `state`, `country`, `pincode`, `shop_name`) VALUES
('DIS50892', 'MAN00001', 2, 'Navdeep', 'Dadhania', 'Nawab', '18ce014@charusat.edu.in', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9408935141, 'Maruti chowk ', 'Nanamova', 'Rajkot', 'Rajkot', 'Gujarat', 'India', 360005, 'Ninelight'),
('MAN00001', 'NINELIGHT', 3, 'Balaji', 'Pvt Ltd', 'Balaji001', 'balajiwafer@gmail.co.in', 'MTIzNDU2NzhubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9409014581, 'GIDC , Metoda', 'Metoda', 'Rajkot', 'Rajkot', 'GUJARAT', 'INDIA', 360021, 'Balaji'),
('SHO54726', 'DIS50892', 2, 'Nihal', 'Sheikh', 'Nihal120', '18ce0120@charusat.edu.in', 'TmloYWwxMjBubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7016832962, 'Ramvadi', 'Motibag', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 360540, 'Nihu_shop'),
('SHO61595', 'DIS50892', 2, 'Navdeep', 'Dadhania', 'Navdeep185', 'Navdeep@gmail.com', 'TmF2ZGVlcDlubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9408935121, 'Maruti chowk ', 'Nanamova', 'Rajkot', 'Rajkot', 'Gujarat', 'India', 360005, 'Nawab');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `type_id` int(1) NOT NULL,
  `type_name` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`type_id`, `type_name`) VALUES
(2, 'distributor'),
(3, 'manufacturer'),
(1, 'shopkeeper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`category_name`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `prduct_id` (`prduct_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_name_weight` (`product_name`,`product_weight`) USING BTREE,
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `user_type` (`user_type`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_list` (`user_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`prduct_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `user_list`
--
ALTER TABLE `user_list`
  ADD CONSTRAINT `user_list_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
