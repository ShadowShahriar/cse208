-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2025 at 02:10 PM
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
  `dept_id` int(3) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dept_stats`
-- (See below for the actual view)
--
CREATE TABLE `dept_stats` (
`Dept_Name` varchar(20)
,`Total_Employees` bigint(21)
,`Avg_Salary` decimal(14,6)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(5) DEFAULT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `dept_id` int(3) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `dept_id`, `salary`) VALUES
(101, 'Alice Johnson', 1, 45000.00),
(102, 'Bob Smith', 2, 52000.00),
(103, 'Charlie Brown', 3, 60000.00),
(104, 'Diana Prince', 4, 48000.00),
(105, 'Ethan Clark', 3, 65000.00),
(106, 'Fiona Davis', 2, 53000.00),
(107, 'George Miller', 1, 47000.00),
(108, 'Hannah Wilson', 4, 49000.00);

-- --------------------------------------------------------

--
-- Structure for view `dept_stats`
--
DROP TABLE IF EXISTS `dept_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dept_stats`  AS SELECT `d`.`dept_name` AS `Dept_Name`, count(`e`.`emp_id`) AS `Total_Employees`, avg(`e`.`salary`) AS `Avg_Salary` FROM (`department` `d` join `employee` `e` on(`d`.`dept_id` = `e`.`dept_id`)) GROUP BY `d`.`dept_name` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
