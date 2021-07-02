-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 10:05 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin_1', '202cb962ac59075b964b07152d234b70'),
(4, 'admin_2', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(128, 1, 0, 'Bev Littlewood'),
(129, 1, 1, 'Berry Bohem'),
(130, 1, 0, 'Roger Pressman'),
(131, 1, 0, 'Victor Bisili'),
(132, 2, 1, 'Waterfall Model '),
(133, 2, 0, 'Spiral Model'),
(134, 2, 0, 'Quick and Fix model'),
(135, 2, 0, 'Prototyping Model'),
(136, 3, 0, '3 Phases '),
(137, 3, 0, '1 Phases'),
(138, 3, 1, '2 Phases'),
(139, 3, 0, '4 Phases'),
(140, 4, 1, 'Software requirement specification '),
(141, 4, 0, 'Software requirement solution '),
(142, 4, 0, 'System requirement specification'),
(143, 4, 0, 'None of Above'),
(144, 5, 0, 'Small Projects'),
(145, 5, 0, 'Complex Projects '),
(146, 5, 1, 'Accommodating change '),
(147, 5, 0, 'None of Above'),
(148, 6, 1, 'Rapid Application Development '),
(149, 6, 0, 'Relative Application Development'),
(150, 6, 0, 'Ready Application Development'),
(151, 6, 0, 'Repeated Application Development'),
(152, 7, 1, 'IBM '),
(153, 7, 0, 'Motorola '),
(154, 7, 0, 'Microsoft '),
(155, 7, 0, 'Lucent Technologies'),
(156, 8, 0, 'Reliable Software'),
(157, 8, 0, 'Cost Effective Software '),
(158, 8, 1, 'Reliable and cost effective Software '),
(159, 8, 0, 'None Of Above'),
(160, 9, 0, '13 programmers '),
(161, 9, 0, '10 programmers '),
(162, 9, 1, '8 programmers '),
(163, 9, 0, '100/13 programmers'),
(164, 10, 0, 'Basic path '),
(165, 10, 0, 'Graph Testing '),
(166, 10, 0, 'Dataflow'),
(167, 10, 1, 'Glass box testing'),
(176, 11, 0, 'Waterfall & RAD'),
(177, 11, 1, 'Prototyping & Spiral'),
(178, 11, 0, 'Prototyping & RAD'),
(179, 11, 0, 'Waterfall & Spiral'),
(180, 12, 0, 'Productivity'),
(181, 12, 1, 'Portability'),
(182, 12, 0, 'Timeliness'),
(183, 12, 0, 'Visibility'),
(184, 13, 0, 'CAD, CAM'),
(185, 13, 0, 'Firmware, Embedded'),
(186, 13, 1, 'Generic, Customised'),
(187, 13, 0, 'None of the mentioned'),
(188, 14, 0, 'in time'),
(189, 14, 0, 'with acceptable quality'),
(190, 14, 0, 'that is cost efficient'),
(191, 14, 1, 'both in time & with acceptable quality'),
(192, 15, 0, 'Reusability management'),
(193, 15, 0, 'Risk managemen'),
(194, 15, 0, 'Measurement'),
(195, 15, 1, 'User Reviews');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(40, 1, 'Spiral Model was developed by? '),
(41, 2, 'Which model is popular for students small projects ? '),
(42, 3, ' Build and Fix model has?  '),
(43, 4, 'SRS stands for ?'),
(44, 5, 'Waterfall model is not suitable for ?'),
(45, 6, 'RAD stands for ?'),
(46, 7, 'RAD Model was purposed by ? '),
(47, 8, 'Software engineering aims at developing ? '),
(48, 9, 'To completely write the program in FORTRAN and rewrite the 1% code in assembly language, if the project needs 13 days, the team consists of ? '),
(49, 10, 'White box testing, a software testing  technique is sometimes called ? '),
(52, 11, 'Which two models doesnâ€™t allow defining requirements early in the cycle?'),
(53, 12, 'Which one of the following is not a software process quality?'),
(54, 13, '_____________&_____________ are two kinds of software products.'),
(55, 14, ' Purpose of process is to deliver software'),
(56, 15, 'Which one of the following is not an Umbrella Activity that complements the five process framework activities and help team manage and control progress, quality, change, and risk.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `name`, `score`, `date`) VALUES
(13, 'Student -1', 7, '2021-06-04 12:59:27'),
(14, 'Student -2', 8, '2021-06-04 13:00:40'),
(15, 'Student -3', 9, '2021-06-04 13:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(10, 'Student -1', 'stud-1', '81dc9bdb52d04dc20036dbd8313ed055', 'student_1@gmail.com', 0),
(11, 'Student -2', 'stud-2', '81dc9bdb52d04dc20036dbd8313ed055', 'student_2@gmail.com', 0),
(12, 'Student -3', 'stud-3', '81dc9bdb52d04dc20036dbd8313ed055', 'student_3@gmail.com', 0),
(13, 'Student -4', 'stud-4', '81dc9bdb52d04dc20036dbd8313ed055', 'student_4@gmail.com\r\n', 0),
(14, 'Student-5', 'stud-5', '81dc9bdb52d04dc20036dbd8313ed055', 'sudent_5@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
