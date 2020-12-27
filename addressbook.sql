-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 06:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `type` enum('home','work','others') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `master_id`, `date_added`, `date_modified`, `address`, `city`, `state`, `zipcode`, `type`) VALUES
(1, 1, '2020-12-26 13:35:14', '2020-12-26 13:35:14', 'qweer', 'asqd', 'up', '209725', 'home'),
(3, 3, '2020-12-26 18:00:41', '2020-12-26 18:00:41', 'sdfgvbhjk', 'cfvgbn', 'u', '209727', 'work'),
(5, 5, '2020-12-26 18:06:14', '2020-12-26 18:06:14', 'hbhh', 'hfuy', 'up', '209727', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `master_id`, `date_added`, `date_modified`, `email`, `type`) VALUES
(1, 1, '2020-12-26 13:35:14', '2020-12-26 13:35:14', 'xyz@xyz.com', 'home'),
(3, 3, '2020-12-26 18:00:42', '2020-12-26 18:00:42', 'rt@xc.com', 'work'),
(5, 5, '2020-12-26 18:06:14', '2020-12-26 18:06:14', 'fis@ddh.com', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `fax`
--

CREATE TABLE `fax` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fax`
--

INSERT INTO `fax` (`id`, `master_id`, `date_added`, `date_modified`, `fax_number`, `type`) VALUES
(1, 1, '2020-12-26 13:35:14', '2020-12-26 13:35:14', '9090909091', 'home'),
(3, 3, '2020-12-26 18:00:42', '2020-12-26 18:00:42', '1111111112', 'other'),
(5, 5, '2020-12-26 18:06:14', '2020-12-26 18:06:14', '1234567890', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `master_name`
--

CREATE TABLE `master_name` (
  `id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_name`
--

INSERT INTO `master_name` (`id`, `date_added`, `date_modified`, `f_name`, `l_name`) VALUES
(1, '2020-12-26 13:35:13', '2020-12-26 13:35:13', 'Rohit', 'Trivedi'),
(3, '2020-12-26 18:00:41', '2020-12-26 18:00:41', 'sdfgh', 'xcvbnm'),
(5, '2020-12-26 18:06:13', '2020-12-26 18:06:13', 'mmmmmm', 'nnnnn');

-- --------------------------------------------------------

--
-- Table structure for table `personal_notes`
--

CREATE TABLE `personal_notes` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `tel_number` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`id`, `master_id`, `date_added`, `date_modified`, `tel_number`, `type`) VALUES
(1, 1, '2020-12-26 13:35:14', '2020-12-26 13:35:14', '9090909090', 'home'),
(3, 3, '2020-12-26 18:00:42', '2020-12-26 18:00:42', '1111111111', 'home'),
(5, 5, '2020-12-26 18:06:14', '2020-12-26 18:06:14', '9999999999', 'home');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_name`
--
ALTER TABLE `master_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_notes`
--
ALTER TABLE `personal_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_id` (`master_id`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_name`
--
ALTER TABLE `master_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_notes`
--
ALTER TABLE `personal_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
