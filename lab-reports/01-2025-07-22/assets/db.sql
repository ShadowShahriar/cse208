-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 09:10 AM
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
-- Database: `shahriar_408`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Title` varchar(32) DEFAULT NULL,
  `Offered_Semester` varchar(32) DEFAULT NULL,
  `Course_Code` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Title`, `Offered_Semester`, `Course_Code`) VALUES
('Database Systems', NULL, 'CSE 207'),
('Computer Networks', NULL, 'CSE 319'),
('Data Communication', NULL, 'CSE 209'),
('System Analysis Design', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` varchar(32) DEFAULT NULL,
  `Short_Code` char(4) DEFAULT NULL,
  `Course_Code` char(8) DEFAULT NULL,
  `Conduct_Semester` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Short_Code`, `Course_Code`, `Conduct_Semester`) VALUES
('Farha Akhter Munmun', 'FAM', 'CSE 319', 'Summer 2019'),
('Sweety Lima', 'SWL', 'CSE 209', 'Fall 2019-20'),
('Shumi Khatun', 'SKL', 'CSE 212', 'Summer 2019'),
('Nadia Afrin Ritu', 'NAR', 'CSE 351', 'Spring 2026');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(32) DEFAULT NULL,
  `ID` int(8) DEFAULT NULL,
  `NID` int(9) DEFAULT NULL,
  `Intake` int(2) DEFAULT NULL,
  `Section` int(2) DEFAULT NULL,
  `CGPA` float DEFAULT NULL,
  `Age` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `ID`, `NID`, `Intake`, `Section`, `CGPA`, `Age`) VALUES
('Ashraful', 1, 102, 44, 1, 3.3, 21),
('Zakir', 33, 103, 35, 2, 3.98, 19),
('Urmi', 6, 104, 35, 1, 3.96, 21),
('Minu', 23, 105, 44, 1, 3.5, 19),
('Tonny', 2, 101, 44, 1, 3.5, 22);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
