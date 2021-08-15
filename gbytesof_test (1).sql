-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2021 at 03:20 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gbytesof_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `desig_id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`desig_id`, `designation`) VALUES
(1, 'Junier Engineer'),
(5, 'Sernier Software Engineer'),
(4, 'Human Resource'),
(6, 'Product Manger'),
(7, 'Sernier Product Manager');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `joining_date` date NOT NULL,
  `reference_by` varchar(50) NOT NULL,
  `desig_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `email`, `password`, `joining_date`, `reference_by`, `desig_id`, `status`) VALUES
(9, 'Deepak chaudhary', 'deepakchaudhary@gmail.com', '3f18b35486f1c84cf05deefdfac3249d', '2021-08-04', 'Deepak chaudhary', 4, '1'),
(10, 'Shiva Verma', 'shivaverma@gmail.com', '475a874db17801e2325120c3b790a3eb', '2021-08-04', 'Deepak chaudhary', 6, '1'),
(11, 'Kush Kumar Soni', 'kush@gmail.com', '3f18b35486f1c84cf05deefdfac3249d', '2021-08-04', 'Kush Kumar Soni', 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `nodays` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `holiday_category` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `from_date`, `to_date`, `nodays`, `reason`, `holiday_category`) VALUES
(1, '2021-08-04', '2021-08-06', 1, '<p>Shiva nhi aayega kal se</p>\r\n', NULL),
(2, '2021-08-05', '2021-08-08', 3, '<p>hey may main reason is not only for this</p>\r\n', NULL),
(6, '2021-08-05', '2021-08-05', 10, '<p>this is fourth leave</p>\r\n', NULL),
(5, '2021-08-05', '2021-08-05', 2, '<p>this is third leave.</p>\r\n', NULL),
(7, '2021-08-06', '2021-08-06', 5, '<p>this is 6th leave</p>\r\n', NULL),
(8, '2021-08-06', '2021-08-06', 6, '<p>this is 6th second leave</p>\r\n', NULL),
(9, '2021-08-15', '2021-08-15', 12, '<p>aaaaaaaa</p>\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `admin_comment` varchar(300) DEFAULT NULL,
  `leaves_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `leaves_to_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `l_id`, `description`, `admin_comment`, `leaves_date`, `status`, `emp_id`, `leaves_to_date`) VALUES
(1, 1, '<p>this&nbsp; leave only for testing purpose.</p>\r\n', 'gdfgfdgfdgf', '2021-08-05', 2, 10, '0000-00-00'),
(2, 1, '<p>I want to leave because every person are freedom on&nbsp;this day.</p>\r\n', 'Your Holioday is ', '2021-08-15', 1, 10, '0000-00-00'),
(3, 2, '<p>testing purpose</p>\r\n', 'Pahela apana sahi se reason likho. Tabhi to pata chalega ', '2021-08-05', 0, 11, '0000-00-00'),
(4, 2, '<p>testing purpose only</p>\r\n', '', '2021-08-06', 2, 11, '2021-08-08'),
(21, 1, 'fdsfdsfgdsfgdsfgdsfgdsgs', NULL, '2021-08-12', 0, 9, '2021-08-15'),
(20, 1, 'gfdgfdgfdgdfg', NULL, '2021-08-06', 0, 11, '2021-08-15'),
(19, 1, '', NULL, '2021-08-12', 0, 11, '2021-08-15'),
(18, 2, '', NULL, '2021-08-22', 0, 10, '2021-08-21'),
(17, 1, 'This is special holiday', NULL, '2021-08-11', 0, 10, '2021-08-15'),
(22, 1, 'this ', NULL, '2021-08-14', 0, 10, '2021-08-14'),
(23, 1, 'this ', NULL, '2021-08-14', 0, 10, '2021-08-14'),
(24, 1, 'oll', NULL, '2021-08-12', 0, 9, '2021-08-14'),
(25, 1, 'oll', NULL, '2021-08-12', 0, 9, '2021-08-14'),
(26, 1, 'mvfghdmhgm', NULL, '2021-08-14', 0, 10, '2021-08-15'),
(27, 1, 'thuisu ', NULL, '2021-08-13', 0, 10, '2021-08-15'),
(28, 1, '<p>aaaaaa</p>\r\n', NULL, '2021-08-18', 0, 11, '2021-08-15'),
(29, 3, '11', NULL, '2021-08-14', 0, 11, '2021-08-15'),
(30, 3, '11', NULL, '2021-08-21', 0, 11, '2021-08-22'),
(31, 2, 'aaaa', NULL, '2021-08-13', 0, 11, '2021-08-27'),
(32, 1, 'zzzzz', 'wwwww', '2021-08-15', 1, 10, '2021-08-25'),
(33, 1, '<p>zzzzzzaaaaa</p>\r\n', 'ssss', '2021-08-27', 2, 11, '2021-08-28'),
(34, 1, '<p>new</p>\r\n', '', '2021-08-14', 1, 11, '2021-08-15'),
(35, 1, '<p>zdxfcvds</p>\r\n', NULL, '2021-08-20', 0, 11, '2021-08-15'),
(36, 3, '<p>this is only testing.</p>\r\n', NULL, '2021-08-14', 0, 11, '2021-08-15'),
(37, 1, 'Today you are freedom because this day is all freedom.', NULL, '2021-08-14', 0, 11, '2021-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `leave_category`
--

CREATE TABLE `leave_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_category`
--

INSERT INTO `leave_category` (`id`, `category`) VALUES
(1, 'Independence'),
(2, 'Holi'),
(3, 'Dhanteras'),
(5, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `login_type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `date_format` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `login_type`, `status`, `timezone`, `date_format`, `title`, `footer`, `name`) VALUES
(1, 'admin@gmail.com', 'admin123', 'admin', 1, 'Africa/Casablanca', 'd-m-Y', 'Employee Management Systems', 'Webvire Solution Pvt Ltd', 'Admin123');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `notices` varchar(255) NOT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice_date`, `notices`, `emp_id`) VALUES
(1, '2021-08-05', '<p>This is notice test</p>\r\n', 9),
(2, '2021-08-06', '<p>this is second notice test.</p>\r\n', 10),
(3, '2021-08-07', '<p>this is third notice test.</p>\r\n', 9),
(4, '2021-08-08', '<p>this is fourth notices test.</p>\r\n', 10),
(6, '2021-08-15', '<p>all notic</p>\r\n', 11),
(7, '2021-08-14', '<p>this&nbsp; is for all.</p>\r\n', 0),
(8, '2021-08-14', '<p>this</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `punch`
--

CREATE TABLE `punch` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `log_time` varchar(50) NOT NULL,
  `log_date` varchar(50) NOT NULL,
  `out_time` varchar(200) DEFAULT NULL,
  `out_date` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `in_msg` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `punch`
--

INSERT INTO `punch` (`id`, `emp_id`, `log_time`, `log_date`, `out_time`, `out_date`, `status`, `in_msg`) VALUES
(1, 11, '15:00:02', '14-08-2021', '15:00:12', '14-08-2021', 0, 'bbb'),
(2, 11, '15:00:19', '14-08-2021', '15:00:24', '14-08-2021', 0, ''),
(3, 11, '15:00:30', '14-08-2021', '15:27:31', '14-08-2021', 0, ''),
(4, 10, '15:32:59', '14-08-2021', '15:33:03', '14-08-2021', 0, ''),
(5, 10, '15:33:09', '14-08-2021', '15:33:10', '14-08-2021', 0, ''),
(6, 11, '15:35:03', '14-08-2021', '15:35:04', '14-08-2021', 0, ''),
(7, 11, '15:35:09', '14-08-2021', '15:35:10', '14-08-2021', 0, ''),
(8, 11, '15:36:28', '14-08-2021', '15:37:07', '14-08-2021', 0, ''),
(9, 11, '15:37:11', '14-08-2021', '15:37:12', '14-08-2021', 0, ''),
(10, 11, '15:37:53', '14-08-2021', '15:38:01', '14-08-2021', 0, ''),
(11, 11, '15:38:08', '14-08-2021', '15:38:09', '14-08-2021', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `notification_category` varchar(255) NOT NULL,
  `noti` varchar(50) DEFAULT NULL,
  `read_msg` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `emp_id`, `notification_category`, `noti`, `read_msg`, `created_at`) VALUES
(19, 11, '<p>this</p>\r\n', 'Notice', 1, '2021-08-14 15:02:22'),
(18, 10, '<p>this</p>\r\n', 'Notice', 1, '2021-08-14 15:02:22'),
(17, 9, '<p>this</p>\r\n', 'Notice', 1, '2021-08-14 15:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `total_working_hours`
--

CREATE TABLE `total_working_hours` (
  `id` int(11) NOT NULL,
  `working_date` text,
  `working_hours` text,
  `emp_id` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_working_hours`
--

INSERT INTO `total_working_hours` (`id`, `working_date`, `working_hours`, `emp_id`) VALUES
(6, '14 Aug', '00', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`desig_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_category`
--
ALTER TABLE `leave_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punch`
--
ALTER TABLE `punch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_working_hours`
--
ALTER TABLE `total_working_hours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `desig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `leave_category`
--
ALTER TABLE `leave_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `punch`
--
ALTER TABLE `punch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `total_working_hours`
--
ALTER TABLE `total_working_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
