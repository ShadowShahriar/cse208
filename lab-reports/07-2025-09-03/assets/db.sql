-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2025 at 01:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dep_id` int(4) DEFAULT NULL,
  `dep_name` varchar(16) DEFAULT NULL,
  `dep_location` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `dep_name`, `dep_location`) VALUES
(1001, 'FINANCE', 'SYDNEY'),
(2001, 'AUDIT', 'MELBOURNE'),
(3001, 'MARKETING', 'PERTH'),
(4001, 'PRODUCTION', 'BRISBANE');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(6) DEFAULT NULL,
  `emp_name` varchar(12) DEFAULT NULL,
  `job_name` varchar(16) DEFAULT NULL,
  `manager_id` int(6) DEFAULT NULL,
  `hire_date` varchar(12) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `commission` int(8) DEFAULT NULL,
  `dep_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `job_name`, `manager_id`, `hire_date`, `salary`, `commission`, `dep_id`) VALUES
(68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 600000, NULL, 1001),
(66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 275000, NULL, 3001),
(67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 255000, NULL, 1001),
(65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 295700, NULL, 2001),
(67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 310000, NULL, 2001),
(69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 310000, NULL, 2001),
(63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 90000, NULL, 2001),
(64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 170000, 40000, 3001),
(65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 135000, 60000, 3001);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
