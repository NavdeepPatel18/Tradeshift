-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 03:38 PM
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
  `product_name` varchar(20) NOT NULL,
  `product_weight` int(3) NOT NULL,
  `product_price_distributor` float NOT NULL,
  `product_price_shopkeeper` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_weight`, `product_price_distributor`, `product_price_shopkeeper`) VALUES
('PRO223', 'CAT228', 'WAFERS – SIMPLY SALT', 45, 5, 8),
('PRO224', 'CAT228', 'WAFERS – MASALA MAST', 45, 5, 8),
('PRO225', 'CAT228', 'WAFERS – TOMATO TWIS', 45, 5, 8),
('PRO226', 'CAT228', 'WAFERS – CHAAT CHASK', 45, 5, 8),
('PRO227', 'CAT228', 'WAFERS – CREAM & ONI', 45, 5, 8),
('PRO228', 'CAT228', 'WAFERS – PIZZY MASAL', 45, 5, 8),
('PRO229', 'CAT228', 'CRUNCHEX – SIMPLY SA', 45, 5, 8),
('PRO230', 'CAT228', 'RUMBLES – PUDINA TWI', 45, 5, 8),
('PRO231', 'CAT228', 'CRUNCHEX – CHILLI TA', 45, 5, 8),
('PRO232', 'CAT228', 'BANANA WAFERS – MASA', 45, 5, 8),
('PRO233', 'CAT228', 'BANANA WAFERS – MARI', 45, 5, 8),
('PRO234', 'CAT228', 'WAFERS – SIMPLY SALT', 150, 20, 26),
('PRO235', 'CAT228', 'WAFERS – MASALA MAST', 150, 20, 26),
('PRO236', 'CAT228', 'WAFERS – TOMATO TWIS', 150, 20, 26),
('PRO237', 'CAT228', 'WAFERS – CHAAT CHASK', 150, 20, 26),
('PRO238', 'CAT228', 'WAFERS – CREAM & ONI', 150, 20, 26),
('PRO239', 'CAT228', 'WAFERS – PIZZY MASAL', 150, 20, 26),
('PRO240', 'CAT228', 'CRUNCHEX – SIMPLY SA', 150, 20, 26),
('PRO241', 'CAT228', 'RUMBLES – PUDINA TWI', 150, 20, 26),
('PRO242', 'CAT228', 'CRUNCHEX – CHILLI TA', 150, 20, 26),
('PRO243', 'CAT228', 'BANANA WAFERS – MASA', 150, 20, 26),
('PRO244', 'CAT228', 'BANANA WAFERS – MARI', 150, 20, 26),
('PRO323', 'CAT183', 'YUMSTIX', 45, 5, 8),
('PRO324', 'CAT183', 'KHATA MITHA MIX', 45, 5, 8),
('PRO325', 'CAT183', 'TIKHA MITHA MIX', 45, 5, 8),
('PRO326', 'CAT183', 'RAJWADI CHEVDO', 45, 5, 8),
('PRO327', 'CAT183', 'FARALI CHEVDO', 45, 5, 8),
('PRO328', 'CAT183', 'CHANA JOR GARAM', 45, 5, 8),
('PRO329', 'CAT183', 'BHEL MIX', 45, 5, 8),
('PRO330', 'CAT183', 'MUNG DAL', 45, 5, 8),
('PRO331', 'CAT183', 'CHANA DAL', 45, 5, 8),
('PRO332', 'CAT183', 'MASALA PEAS', 45, 5, 8),
('PRO333', 'CAT183', 'SHING BHUJIA', 45, 5, 8),
('PRO334', 'CAT183', 'NIMBU S.B', 45, 5, 8),
('PRO335', 'CAT183', 'MASALA SHING', 45, 5, 8),
('PRO336', 'CAT183', 'ALOO SEV', 45, 5, 8),
('PRO337', 'CAT183', 'CLASSIC SEV', 45, 5, 8),
('PRO338', 'CAT183', 'GATHIYA', 45, 5, 8),
('PRO339', 'CAT183', 'RATLAMI SEV', 45, 5, 8),
('PRO340', 'CAT183', 'SEV MURMURA', 45, 5, 8),
('PRO341', 'CAT183', 'MASALA SEV MURMURA', 45, 5, 8),
('PRO423', 'CAT727', 'GIPPI NOODLES', 45, 5, 8),
('PRO424', 'CAT727', 'MOON CRUNCHIES – MAS', 45, 5, 8),
('PRO425', 'CAT727', 'FUNNE – SPICY PUNCH', 45, 5, 8),
('PRO426', 'CAT727', 'SCOOPITOS', 45, 5, 8),
('PRO427', 'CAT727', 'HOOPERS – MASALA COR', 45, 5, 8),
('PRO428', 'CAT727', 'POPRINGS – YUMMY CHE', 45, 5, 8),
('PRO429', 'CAT727', 'POPRINGS – MASALA', 45, 5, 8),
('PRO430', 'CAT727', 'WHEELOS – MASALA', 45, 5, 8),
('PRO431', 'CAT727', 'CP – FLAMIN’ HOT', 45, 5, 8),
('PRO432', 'CAT727', 'CP – CHINESE CHASKA', 45, 5, 8),
('PRO433', 'CAT727', 'CP – TANGY TOMATO', 45, 5, 8),
('PRO434', 'CAT727', 'CP – MASALA MASTI', 45, 5, 8),
('PRO523', 'CAT183', 'YUMSTIX', 150, 20, 26),
('PRO524', 'CAT183', 'KHATA MITHA MIX', 150, 20, 26),
('PRO525', 'CAT183', 'TIKHA MITHA MIX', 150, 20, 26),
('PRO526', 'CAT183', 'RAJWADI CHEVDO', 150, 20, 26),
('PRO527', 'CAT183', 'FARALI CHEVDO', 150, 20, 26),
('PRO528', 'CAT183', 'CHANA JOR GARAM', 150, 20, 26),
('PRO529', 'CAT183', 'BHEL MIX', 150, 20, 26),
('PRO530', 'CAT183', 'MUNG DAL', 150, 20, 26),
('PRO531', 'CAT183', 'CHANA DAL', 150, 20, 26),
('PRO532', 'CAT183', 'MASALA PEAS', 150, 20, 26),
('PRO533', 'CAT183', 'SHING BHUJIA', 150, 20, 26),
('PRO534', 'CAT183', 'NIMBU S.B', 150, 20, 26),
('PRO535', 'CAT183', 'MASALA SHING', 150, 20, 26),
('PRO536', 'CAT183', 'ALOO SEV', 150, 20, 26),
('PRO537', 'CAT183', 'CLASSIC SEV', 150, 20, 26),
('PRO538', 'CAT183', 'GATHIYA', 150, 20, 26),
('PRO539', 'CAT183', 'RATLAMI SEV', 150, 20, 26),
('PRO540', 'CAT183', 'SEV MURMURA', 150, 20, 26),
('PRO541', 'CAT183', 'MASALA SEV MURMURA', 150, 20, 26),
('PRO823', 'CAT727', 'GIPPI NOODLES', 150, 20, 26),
('PRO824', 'CAT727', 'MOON CRUNCHIES – MAS', 150, 20, 26),
('PRO825', 'CAT727', 'FUNNE – SPICY PUNCH', 150, 20, 26),
('PRO826', 'CAT727', 'SCOOPITOS', 150, 20, 26),
('PRO827', 'CAT727', 'HOOPERS – MASALA COR', 150, 20, 26),
('PRO828', 'CAT727', 'POPRINGS – YUMMY CHE', 150, 20, 26),
('PRO829', 'CAT727', 'POPRINGS – MASALA', 150, 20, 26),
('PRO830', 'CAT727', 'WHEELOS – MASALA', 150, 20, 26),
('PRO831', 'CAT727', 'CP – FLAMIN’ HOT', 150, 20, 26),
('PRO832', 'CAT727', 'CP – CHINESE CHASKA', 150, 20, 26),
('PRO833', 'CAT727', 'CP – TANGY TOMATO', 150, 20, 26),
('PRO834', 'CAT727', 'CP – MASALA MASTI', 150, 20, 26);

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
('DIS18052', 'MAN00001', 2, 'Malay', 'Patel', 'Malay', 'malay@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 8956452310, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS18520', 'MAN00001', 2, 'Nvdeep', 'Patel', 'Navdeeppatel', 'navdeep185@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9427485560, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Navdeep and son'),
('DIS20919', 'MAN00001', 2, 'Bhavy', 'Vyash', 'Bhavy', 'bhavy@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 8956452313, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS21020', 'MAN00001', 2, 'Nihal', 'Shaikh', 'Nihal21', 'nihal21@gmail.com', 'TmloYWwxMjFubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9427485550, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS21070', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab8', 'Nawab8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505258, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS23110', 'MAN00001', 2, 'Yatik', 'Patel', 'Yatik', 'yatik@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 8956452311, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS38497', 'MAN00001', 2, 'Wilson', 'Radadiya', 'Wison18ce94', '18ce094@charusat.edu.in', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 8988675585, 'Ramvadi', 'Village name', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 350450, 'Wilson and son'),
('DIS50601', 'MAN00001', 2, 'Kapil', 'Vaghela', 'Kapil', 'kapil@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 8956452312, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('DIS50892', 'MAN00001', 2, 'Navdeep', 'Dadhania', 'Nawab', '18ce014@charusat.edu.in', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9408935141, 'Maruti chowk ', 'Nanamova', 'Rajkot', 'Rajkot', 'Gujarat', 'India', 360005, 'Ninelight'),
('DIS65670', 'MAN00001', 2, 'Navdeep', 'Patel', 'Navdeep1852', 'Navdeep1852@gmail.com', 'TmF2ZGVlcG5ud2R5MTIwMDE0MDk0MDk5MTM1', 9489784556, 'marutichowk', 'nanamova', 'rajkot', 'rajkot', 'gujarat', 'india', 360490, 'navdeep and son'),
('MAN00001', 'NINELIGHT', 3, 'Balaji', 'Pvt Ltd', 'Balaji001', 'balajiwafer@gmail.co.in', 'MTIzNDU2NzhubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9409014581, 'GIDC , Metoda', 'Metoda', 'Rajkot', 'Rajkot', 'GUJARAT', 'INDIA', 360021, 'Balaji'),
('SHO19163', 'DIS50892', 1, 'Nihal', 'Sheikh', 'Nihal121', 'Nihal121@gmail.com', 'TmloYWwxMjFubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9423242578, 'Ramvadi ', 'Junagadh', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 364258, 'Nihal and son'),
('SHO21000', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh0', 'Rakesh0@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7978505050, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21001', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh2', 'Rakesh2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505051, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21002', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh3', 'Rakesh3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505052, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21003', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh4', 'Rakesh4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505053, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21004', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh5', 'Rakesh5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21005', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh6', 'Rakesh6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21006', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh7', 'Rakesh7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21007', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh8', 'Rakesh8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21008', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh9', 'Rakesh9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21009', 'DIS18520', 1, 'Rakesh', 'Patel', 'Rakesh10', 'Rakesh10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21010', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali1', 'Ali1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505060, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21011', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali2', 'Ali2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505061, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21012', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali3', 'Ali3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505062, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21013', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali4', 'Ali4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505063, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21014', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali5', 'Ali5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505064, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21015', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali6', 'Ali6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505065, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21016', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali7', 'Ali7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505066, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21017', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali8', 'Ali8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505067, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21018', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali9', 'Ali9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505068, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21019', 'DIS18520', 1, 'Ali', 'Shaikh', 'Ali10', 'Ali10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505069, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21021', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh1', 'Ramesh1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505070, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21022', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh2', 'Ramesh2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505071, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21023', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh3', 'Ramesh3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505072, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21024', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh4', 'Ramesh4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505073, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21025', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh5', 'Ramesh5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505074, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21026', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh6', 'Ramesh6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505075, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21027', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh7', 'Ramesh7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505076, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21028', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh8', 'Ramesh8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505077, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21029', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh9', 'Ramesh9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505078, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21030', 'DIS18520', 1, 'Ramesh', 'zala', 'Ramesh10', 'Ramesh10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505079, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21031', 'DIS18520', 1, 'prakash', 'bera', 'prakash1', 'prakash1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505080, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21032', 'DIS18520', 1, 'prakash', 'bera', 'prakash2', 'prakash2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505081, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21033', 'DIS18520', 1, 'prakash', 'bera', 'prakash3', 'prakash3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505082, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21034', 'DIS18520', 1, 'prakash', 'bera', 'prakash4', 'prakash4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505083, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21035', 'DIS18520', 1, 'prakash', 'bera', 'prakash5', 'prakash5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505084, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21036', 'DIS18520', 1, 'prakash', 'bera', 'prakash6', 'prakash6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505085, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21037', 'DIS18520', 1, 'prakash', 'bera', 'prakash7', 'prakash7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505086, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21038', 'DIS18520', 1, 'prakash', 'bera', 'prakash8', 'prakash8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505087, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21039', 'DIS18520', 1, 'prakash', 'bera', 'prakash9', 'prakash9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505088, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21040', 'DIS18520', 1, 'prakash', 'bera', 'prakash10', 'prakash10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505089, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21041', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin1', 'Bhavin1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505090, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21042', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin2', 'Bhavin2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505091, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21043', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin3', 'Bhavin3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505092, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21044', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin4', 'Bhavin4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505093, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21045', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin5', 'Bhavin5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505094, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21046', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin6', 'Bhavin6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505095, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21047', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin7', 'Bhavin7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505096, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21048', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin8', 'Bhavin8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505097, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21049', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin9', 'Bhavin9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505098, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21050', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin10', 'Bhavin10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505099, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21051', 'DIS18520', 1, 'Bhavin', 'bura', 'Bhavin11', 'Bhavin11@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505050, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and1son'),
('SHO21053', 'DIS23110', 1, 'yash', 'dadhania', 'yash1', 'yash1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505151, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21054', 'DIS23110', 1, 'yash', 'dadhania', 'yash2', 'yash2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505152, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21055', 'DIS23110', 1, 'yash', 'dadhania', 'yash3', 'yash3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505153, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21056', 'DIS23110', 1, 'yash', 'dadhania', 'yash4', 'yash4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505154, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21057', 'DIS23110', 1, 'yash', 'dadhania', 'yash5', 'yash5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505155, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21058', 'DIS23110', 1, 'yash', 'dadhania', 'yash6', 'yash6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505156, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21059', 'DIS23110', 1, 'yash', 'dadhania', 'yash7', 'yash7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505157, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21060', 'DIS23110', 1, 'yash', 'dadhania', 'yash8', 'yash8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505158, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21061', 'DIS23110', 1, 'yash', 'dadhania', 'yash9', 'yash9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505159, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21062', 'DIS23110', 1, 'yash', 'dadhania', 'yash10', 'yash10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505160, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21063', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab1', 'Nawab1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505251, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21064', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab2', 'Nawab2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505252, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21065', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab3', 'Nawab3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505253, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21066', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab4', 'Nawab4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505254, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21067', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab5', 'Nawab5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505255, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21068', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab6', 'Nawab6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505256, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21069', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab7', 'Nawab7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505257, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21071', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab9', 'Nawab9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505259, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21072', 'DIS23110', 1, 'Nawab', 'Shaikh', 'Nawab10', 'nawab10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505260, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21073', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh1', 'Dinesh1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505351, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21074', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh2', 'Dinesh2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505352, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21075', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh3', 'Dinesh3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505353, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21076', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh4', 'Dinesh4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505354, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21077', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh5', 'Dinesh5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505355, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21078', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh6', 'Dinesh6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505356, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21079', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh7', 'Dinesh7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505357, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21080', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh8', 'Dinesh8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505358, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21081', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh9', 'Dinesh9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505359, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21082', 'DIS23110', 1, 'Dinesh', 'panara', 'Dinesh10', 'dinesh10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505360, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21083', 'DIS23110', 1, 'pravin', 'gati', 'pravin1', 'pravin1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505451, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21084', 'DIS23110', 1, 'pravin', 'gati', 'pravin2', 'pravin2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505452, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21085', 'DIS23110', 1, 'pravin', 'gati', 'pravin3', 'pravin3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505453, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21086', 'DIS23110', 1, 'pravin', 'gati', 'pravin4', 'pravin4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505454, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21087', 'DIS23110', 1, 'pravin', 'gati', 'pravin5', 'pravin5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505455, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21088', 'DIS23110', 1, 'pravin', 'gati', 'pravin6', 'pravin6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505456, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21089', 'DIS23110', 1, 'pravin', 'gati', 'pravin7', 'pravin7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505457, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21090', 'DIS23110', 1, 'pravin', 'gati', 'pravin8', 'pravin8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505458, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21091', 'DIS23110', 1, 'pravin', 'gati', 'pravin9', 'pravin9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505459, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21092', 'DIS23110', 1, 'pravin', 'gati', 'pravin10', 'pravin10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505460, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21093', 'DIS23110', 1, 'karan', 'khan', 'karan1', 'karan1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505551, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21094', 'DIS23110', 1, 'karan', 'khan', 'karan2', 'karan2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505552, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21095', 'DIS23110', 1, 'karan', 'khan', 'karan3', 'karan3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505553, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21096', 'DIS23110', 1, 'karan', 'khan', 'karan4', 'karan4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505554, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21097', 'DIS23110', 1, 'karan', 'khan', 'karan5', 'karan5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505555, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21098', 'DIS23110', 1, 'karan', 'khan', 'karan6', 'karan6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505556, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21099', 'DIS23110', 1, 'karan', 'khan', 'karan7', 'karan7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505557, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21100', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren7', 'Dhiren7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505658, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21101', 'DIS23110', 1, 'karan', 'khan', 'karan9', 'karan9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505559, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21102', 'DIS23110', 1, 'karan', 'khan', 'karan10', 'karan10mail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505560, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21103', 'DIS23110', 1, 'karan', 'khan', 'karan11', 'karan11@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505561, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21104', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren1', 'Dhiren1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505652, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21105', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren2', 'Dhiren2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505653, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21106', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren3', 'Dhiren3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505654, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21107', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren4', 'Dhiren4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505655, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21108', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren5', 'Dhiren5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505656, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21109', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren6', 'Dhiren6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505657, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21111', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren8', 'Dhiren8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505659, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21112', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren9', 'Dhiren9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505660, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21113', 'DIS50601', 1, 'Dhiren', 'vachhani', 'Dhiren10', 'dhiren10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505661, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21114', 'DIS50601', 1, 'mehul', 'paramar', 'mehul1', 'mehul1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505752, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21115', 'DIS50601', 1, 'mehul', 'paramar', 'mehul2', 'mehul2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505753, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21116', 'DIS50601', 1, 'mehul', 'paramar', 'mehul3', 'mehul3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505754, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21117', 'DIS50601', 1, 'mehul', 'paramar', 'mehul4', 'mehul4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505755, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21118', 'DIS50601', 1, 'mehul', 'paramar', 'mehul5', 'mehul5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505756, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21119', 'DIS50601', 1, 'mehul', 'paramar', 'mehul6', 'mehul6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505757, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21120', 'DIS50601', 1, 'mehul', 'paramar', 'mehul7', 'mehul7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505758, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21121', 'DIS50601', 1, 'mehul', 'paramar', 'mehul8', 'mehul8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505759, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21122', 'DIS50601', 1, 'mehul', 'paramar', 'mehul9', 'mehul9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505760, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21123', 'DIS50601', 1, 'mehul', 'paramar', 'mehul10', 'mehul10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505761, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21124', 'DIS50601', 1, 'vipul', 'mevada', 'vipul1', 'vipul1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505852, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21125', 'DIS50601', 1, 'vipul', 'mevada', 'vipul2', 'vipul2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505853, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21126', 'DIS50601', 1, 'vipul', 'mevada', 'vipul3', 'vipul3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505854, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21127', 'DIS50601', 1, 'vipul', 'mevada', 'vipul4', 'vipul4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505855, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21128', 'DIS50601', 1, 'vipul', 'mevada', 'vipul5', 'vipul5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505856, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21129', 'DIS50601', 1, 'vipul', 'mevada', 'vipul6', 'vipul6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505857, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21130', 'DIS50601', 1, 'vipul', 'mevada', 'vipul7', 'vipul7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505858, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21131', 'DIS50601', 1, 'vipul', 'mevada', 'vipul8', 'vipul8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505859, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21132', 'DIS50601', 1, 'vipul', 'mevada', 'vipul9', 'vipul9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505860, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21133', 'DIS50601', 1, 'vipul', 'mevada', 'vipul10', 'vipul10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505861, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21134', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh1', 'shantosh1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505952, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21135', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh2', 'shantosh2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505953, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21136', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh3', 'shantosh3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505954, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21137', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh4', 'shantosh4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505955, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21138', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh5', 'shantosh5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505956, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21139', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh6', 'shantosh6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505957, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21140', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh7', 'shantosh7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505958, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21141', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh8', 'shantosh8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505959, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21142', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh9', 'shantosh9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505960, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21143', 'DIS50601', 1, 'shantosh', 'makhija', 'shantosh10', 'shantosh10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878505961, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21144', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish1', 'jagdish1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506052, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21145', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish2', 'jagdish2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506053, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21146', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish3', 'jagdish3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21147', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish4', 'jagdish4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21148', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish5', 'jagdish5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21149', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish6', 'jagdish6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21150', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish7', 'jagdish7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21151', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish8', 'jagdish8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21152', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish9', 'jagdish9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506060, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21153', 'DIS50601', 1, 'jagdish', 'Shakhiya', 'jagdish10', 'jagdish10mail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506061, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21154', 'DIS50601', 1, 'jagdish', 'shakhiya', 'jagdish11', 'jagdish11@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506062, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21155', 'DIS20919', 1, 'jagdish', 'shakhiya', 'jagdish12', 'jagdish12@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506063, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21156', 'DIS20919', 1, 'jagdish', 'shakhiya', 'jagdish13', 'jagdish13@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878506064, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21157', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh1', 'mahesh1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21158', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh2', 'mahesh2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21159', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh3', 'mahesh3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21160', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh4', 'mahesh4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21161', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh5', 'mahesh5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21162', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh6', 'mahesh6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21163', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh7', 'mahesh7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507060, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21164', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh8', 'mahesh8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507061, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21165', 'DIS20919', 1, 'mahesh', 'joshi', 'mahesh9', 'mahesh9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878507062, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21167', 'DIS20919', 1, 'ram', 'jagani', 'ram1', 'ram1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21168', 'DIS20919', 1, 'ram', 'jagani', 'ram2', 'ram2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21169', 'DIS20919', 1, 'ram', 'jagani', 'ram3', 'ram3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21170', 'DIS20919', 1, 'ram', 'jagani', 'ram4', 'ram4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21171', 'DIS20919', 1, 'ram', 'jagani', 'ram5', 'ram5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21172', 'DIS20919', 1, 'ram', 'jagani', 'ram6', 'ram6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21173', 'DIS20919', 1, 'ram', 'jagani', 'ram7', 'ram7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508050, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21174', 'DIS20919', 1, 'ram', 'jagani', 'ram8', 'ram8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508051, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21175', 'DIS20919', 1, 'ram', 'jagani', 'ram9', 'ram9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508052, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21176', 'DIS20919', 1, 'ram', 'jagani', 'ram10', 'ram10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878508053, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21177', 'DIS20919', 1, 'raju', 'rastogi', 'raju1', 'raju1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21178', 'DIS20919', 1, 'raju', 'rastogi', 'raju2', 'raju2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21179', 'DIS20919', 1, 'raju', 'rastogi', 'raju3', 'raju3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21180', 'DIS20919', 1, 'raju', 'rastogi', 'raju4', 'raju4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21181', 'DIS20919', 1, 'raju', 'rastogi', 'raju5', 'raju5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21182', 'DIS20919', 1, 'raju', 'rastogi', 'raju6', 'raju6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21183', 'DIS20919', 1, 'raju', 'rastogi', 'raju7', 'raju7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509050, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21184', 'DIS20919', 1, 'raju', 'rastogi', 'raju8', 'raju8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509051, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21185', 'DIS20919', 1, 'raju', 'rastogi', 'raju9', 'raju9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509052, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21186', 'DIS20919', 1, 'raju', 'rastogi', 'raju10', 'raju10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878509053, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21187', 'DIS20919', 1, 'anay', 'rathod', 'anay1', 'anay1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21188', 'DIS20919', 1, 'anay', 'rathod', 'anay2', 'anay2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21189', 'DIS20919', 1, 'anay', 'rathod', 'anay3', 'anay3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21190', 'DIS20919', 1, 'anay', 'rathod', 'anay4', 'anay4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515057, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21191', 'DIS20919', 1, 'anay', 'rathod', 'anay5', 'anay5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21192', 'DIS20919', 1, 'anay', 'rathod', 'anay6', 'anay6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21193', 'DIS20919', 1, 'anay', 'rathod', 'anay7', 'anay7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515050, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21194', 'DIS20919', 1, 'anay', 'rathod', 'anay8', 'anay8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515051, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21195', 'DIS20919', 1, 'anay', 'rathod', 'anay9', 'anay9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515052, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21196', 'DIS20919', 1, 'anay', 'rathod', 'anay10', 'anay10@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878515053, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21197', 'DIS20919', 1, 'manish', 'depani', 'manish1', 'manish1@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525054, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21198', 'DIS20919', 1, 'manish', 'depani', 'manish2', 'manish2@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525055, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21199', 'DIS20919', 1, 'manish', 'depani', 'manish3', 'manish3@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21200', 'DIS20919', 1, 'manish', 'depani', 'manish4', 'manish4@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7988525056, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21201', 'DIS20919', 1, 'manish', 'depani', 'manish5', 'manish5@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525058, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21202', 'DIS20919', 1, 'manish', 'depani', 'manish6', 'manish6@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525059, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21207', 'DIS20919', 1, 'manish', 'depani', 'manish7', 'manish7@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525060, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21208', 'DIS20919', 1, 'manish', 'depani', 'manish8', 'manish8@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525061, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihal and son'),
('SHO21209', 'DIS20919', 1, 'manish', 'depani', 'manish9', 'manish9@gmail.com', 'TmF3YWIxMjNubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878525062, 'maruti chowk', 'nanamova', 'rajkot', 'rajkot', 'GUJARAT', 'INDIA', 360490, 'Nihmanishal adepanison'),
('SHO24415', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson', 'Wilson@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524000, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Dharmesh and son '),
('SHO26814', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson09', 'Wilson09@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524421, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Wilson and son '),
('SHO34162', 'DIS50892', 1, 'Dharmesh', 'Rathod', 'Dharmesh99', 'Dharmesh@gmail.com', 'RGhhcm1lc2hubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9458235404, 'Area name ', 'Village', 'Surendranagar', 'Ahmedabad', 'Gujarat', 'India', 354432, 'Dharmesh and son '),
('SHO54726', 'DIS50892', 1, 'Nihal', 'Sheikh', 'Nihal120', '18ce0120@charusat.edu.in', 'TmloYWwxMjBubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7016832962, 'Ramvadi', 'Motibag', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 360540, 'Nihu_shop'),
('SHO61595', 'DIS50892', 1, 'Navdeep', 'Dadhania', 'Navdeep185', 'Navdeep@gmail.com', 'TmF2ZGVlcDlubndkeTEyMDAxNDA5NDA5OTEzNQ==', 9408935121, 'Maruti chowk ', 'Nanamova', 'Rajkot', 'Rajkot', 'Gujarat', 'India', 360005, 'Nawab'),
('SHO66993', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson094', 'Wilson094@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524424, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Wilson and son ');
INSERT INTO `user_list` (`user_id`, `adder_id`, `user_type`, `first_name`, `last_name`, `user_name`, `email_id`, `password`, `phone_no`, `area_street`, `village`, `city`, `district`, `state`, `country`, `pincode`, `shop_name`) VALUES
('SHO67863', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson94', 'Wilson94@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524425, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Dharmesh and son '),
('SHO68126', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson9', 'Wilson9@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524422, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Wilson and son '),
('SHO75174', 'DIS50892', 1, 'Wilson', 'Radadiya', 'Wilson0094', 'Wilson0094@gmail.com', 'V2lsc29uOTRubndkeTEyMDAxNDA5NDA5OTEzNQ==', 7878524423, 'Area name ', 'Village', 'Junagadh', 'Junagadh', 'Gujarat', 'India', 354432, 'Wilson and son ');

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
