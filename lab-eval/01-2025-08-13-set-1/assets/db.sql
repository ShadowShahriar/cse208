-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 05:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eval_408`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(3) DEFAULT NULL,
  `item` varchar(32) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `stock` int(5) DEFAULT NULL,
  `madein` varchar(16) DEFAULT NULL,
  `order_` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `item`, `description`, `price`, `stock`, `madein`, `order_`) VALUES
(1, 'Cap', 'Classic', 525, 50, 'UK', '10.8.24'),
(2, 'Pen', 'Red', 11, 1000, 'China', '13.8.24'),
(3, 'Soap', 'Keya', 42, 200, 'BD', '13.8.24'),
(4, 'Light', 'Deem', 158, 100, 'BD', '15.8.24'),
(5, 'Egg', 'Organic', 263, 1200, 'BD', '13.8.24'),
(6, 'Chocolate', 'DairyMilk', 158, 120, 'India', '15.8.24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
