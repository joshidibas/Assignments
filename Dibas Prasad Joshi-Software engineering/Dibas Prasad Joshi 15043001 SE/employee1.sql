-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 07:48 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee1`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_contact`
--

CREATE TABLE `emp_contact` (
  `empID` varchar(100) NOT NULL,
  `empName` varchar(100) NOT NULL,
  `mobileNo` varchar(100) NOT NULL,
  `officeNo` varchar(100) NOT NULL,
  `homeNo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `office_code` varchar(100) NOT NULL,
  `post_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_contact`
--

INSERT INTO `emp_contact` (`empID`, `empName`, `mobileNo`, `officeNo`, `homeNo`, `email`, `office_code`, `post_code`) VALUES
('E001', 'dibas bahadur', '9841414141', '43312456', '43322556', 'dibasbahadur@gmail.com', 'O01', 'P01'),
('E002', 'Ram bahadur', '984141434', '4331243', '43322553', 'ramsbahadur@gmail.com', 'O01', 'P01');

-- --------------------------------------------------------

--
-- Table structure for table `org_info`
--

CREATE TABLE `org_info` (
  `org_code` varchar(100) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `org_type_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_info`
--

INSERT INTO `org_info` (`org_code`, `org_name`, `org_type_code`) VALUES
('M01', 'Transportation', '1'),
('M02', 'Education', '1'),
('O01', 'HR', '4'),
('O02', 'Business', '4');

-- --------------------------------------------------------

--
-- Table structure for table `org_rel_info`
--

CREATE TABLE `org_rel_info` (
  `parent_org` varchar(100) NOT NULL,
  `child_org` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_rel_info`
--

INSERT INTO `org_rel_info` (`parent_org`, `child_org`) VALUES
('M01', 'D01'),
('M01', 'M01'),
('M01', 'O01'),
('M02', 'D02'),
('M02', 'D03'),
('M02', 'M02'),
('M02', 'O02'),
('M1', 'M1'),
('M2', 'M2');

-- --------------------------------------------------------

--
-- Table structure for table `org_type_info`
--

CREATE TABLE `org_type_info` (
  `org_type_code` varchar(100) NOT NULL,
  `org_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_type_info`
--

INSERT INTO `org_type_info` (`org_type_code`, `org_type`) VALUES
('10', 'Educatiom'),
('11', 'Transportation');

-- --------------------------------------------------------

--
-- Table structure for table `post_desc`
--

CREATE TABLE `post_desc` (
  `post_id` varchar(100) NOT NULL,
  `post_name` varchar(100) NOT NULL,
  `level_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_desc`
--

INSERT INTO `post_desc` (`post_id`, `post_name`, `level_id`) VALUES
('P01', 'Position A', 'L01'),
('P02', 'Position B', 'L02');

-- --------------------------------------------------------

--
-- Table structure for table `post_level_desc`
--

CREATE TABLE `post_level_desc` (
  `level_id` varchar(100) NOT NULL,
  `level_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_level_desc`
--

INSERT INTO `post_level_desc` (`level_id`, `level_desc`) VALUES
('L01', 'Level A'),
('L02', 'Level B');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_code` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_code`, `user_name`, `password`, `user_type`) VALUES
('1', 'dibas', 'dibas', '2'),
('U01', 'ashish', 'ashish', '1'),
('UO1', 'gloria', 'gloria', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_previliges`
--

CREATE TABLE `user_previliges` (
  `user_code` varchar(100) NOT NULL,
  `org_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_previliges`
--

INSERT INTO `user_previliges` (`user_code`, `org_code`) VALUES
('U01', 'O01'),
('UO1', 'O01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_contact`
--
ALTER TABLE `emp_contact`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `org_info`
--
ALTER TABLE `org_info`
  ADD PRIMARY KEY (`org_code`),
  ADD KEY `org_code` (`org_code`,`org_type_code`);

--
-- Indexes for table `org_rel_info`
--
ALTER TABLE `org_rel_info`
  ADD PRIMARY KEY (`parent_org`,`child_org`);

--
-- Indexes for table `org_type_info`
--
ALTER TABLE `org_type_info`
  ADD PRIMARY KEY (`org_type_code`);

--
-- Indexes for table `post_desc`
--
ALTER TABLE `post_desc`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_level_desc`
--
ALTER TABLE `post_level_desc`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_code`);

--
-- Indexes for table `user_previliges`
--
ALTER TABLE `user_previliges`
  ADD KEY `user_code` (`user_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_previliges`
--
ALTER TABLE `user_previliges`
  ADD CONSTRAINT `user_previliges_ibfk_1` FOREIGN KEY (`user_code`) REFERENCES `user_info` (`user_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
