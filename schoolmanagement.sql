-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2019 at 07:46 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--


-- --------------------------------------------------------

--
-- Table structure for table `countries`
--



-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `mname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `ocp` varchar(50) NOT NULL,
  `income` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `pchal` varchar(250) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `mobno` varchar(50) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `padd` text NOT NULL,
  `cadd` text NOT NULL,
  `board` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `pyear` varchar(50) NOT NULL,
  `sub` varchar(250) NOT NULL,
  `marks` bigint(100) NOT NULL,
  `fmarks` bigint(100) NOT NULL,
  `board1` varchar(250) NOT NULL,
  `roll1` varchar(250) NOT NULL,
  `yop1` varchar(250) NOT NULL,
  `sub1` varchar(250) NOT NULL,
  `session` varchar(250) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `marks1` varchar(50) NOT NULL,
  `fmarks1` varchar(50) NOT NULL,
  `regno` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`course`, `subject`, `fname`, `mname`, `lname`, `gender`, `gname`, `ocp`, `income`, `category`, `pchal`, `nationality`, `mobno`, `emailid`, `country`, `state`, `dist`, `padd`, `cadd`, `board`, `roll`, `pyear`, `sub`, `marks`, `fmarks`, `board1`, `roll1`, `yop1`, `sub1`, `session`, `regdate`, `marks1`, `fmarks1`, `regno`, `id`) VALUES
('13', 'OPERATING SYSTEM+DATA STRUCTURE+ NETWOKING', 'Anuj', 'Kumar', 'Singh', 'Male', 'IT Service', 'Male', '500000', 'general', 'general', 'Indian', '1234567890', 'phpgurukulofficial@gmail.com', '101', '4', '', 'Mayur Vihar', 'Mayur Vihar', '10 UP Board', '12 UP Board', '123456', '654332', 2010, 2012, 'Hindi', 'English', '80', '60', '2010-2011', '2019-05-27 17:11:59', '100', '100', '1307692170', 3);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `postingdate` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `postingdate`, `status`) VALUES
(1, '2010-2011', '2010-04-14', 0),
(2, '2011-2012', '2012-04-14', 0),
(3, '2012-2013', '2012-04-13', 0),
(4, '2013-2014', '2013-04-05', 0),
(5, '2013-2014', '2014-04-12', 0),
(6, '2014-2015', '2015-04-12', 0),
(7, '2015-2016', '2016-04-12', 1),
(8, '2017-2018', '0000-00-00', 0),
(9, '2018-2019', '2019-05-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `cshort` varchar(50) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `sub1` varchar(250) DEFAULT NULL,
  `sub2` varchar(250) DEFAULT NULL,
  `sub3` varchar(250) DEFAULT NULL,
  `dt_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `cshort`, `cfull`, `sub1`, `sub2`, `sub3`, `dt_created`, `update_date`) VALUES
(3, '8', 'MASTER OF SCIENCE', 'Mathematics', 'Physics', 'Chemistry', '2016-04-16 18:08:27', NULL),
(6, '10', 'BACHELOR OF TECHNOLOGY', 'Engineering Drawing', 'Computer Programming', 'Computer Science Essentials', '2016-04-16 19:51:43', NULL),
(7, '12', 'Bachelor of Arts ', 'Economics', 'History', 'Geography', '2019-05-27 22:34:40', NULL),
(8, '9', 'BACHELOR OF COMMERCE', 'test1', 'test2', 'test3', '2019-05-27 22:36:36', NULL),
(9, '13', 'Master of Technology', 'Operating System', 'Data Structure', 'Netwoking', '2019-05-27 22:39:41', '27-05-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `cid` int(11) NOT NULL,
  `cshort` varchar(250) DEFAULT NULL,
  `cfull` varchar(250) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `update_date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`cid`, `cshort`, `cfull`, `cdate`, `update_date`) VALUES
(7, 'M.C.A.', 'MASTER OF COMPUTER APPLICATION', '11-04-2016', '27-05-2019'),
(8, 'M.S.C', 'MASTER OF SCIENCE', '11-04-2016', NULL),
(9, 'B.Com', 'BACHELOR OF COMMERCE', '12-04-2016', NULL),
(10, 'B.TECH', 'BACHELOR OF TECHNOLOGY', '12-04-2016', NULL),
(11, 'M.B.A', 'MASTER OF BUSINESS ADMINISTRATION', '17-04-2016', NULL),
(12, 'B.A.', 'Bachelor of Arts ', '27-05-2019', '27-05-2019'),
(13, 'M.Tech', 'Master of Technology', '27-05-2019', '27-05-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `loginid` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `loginid`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47577;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
