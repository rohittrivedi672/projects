-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 09:34 AM
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
-- Database: `project4`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE `store_categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(50) DEFAULT NULL,
  `cat_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_desc`) VALUES
(1, 'Hats', 'funky hats in all shapes and sizes!'),
(2, 'Shirts', 'From t-shirts to\r\nsweatshirts to polo shirts and beyond.'),
(3, 'Books', 'Paperback, hardback,\r\nbooks for school or play.');

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_title` varchar(75) DEFAULT NULL,
  `item_price` float(8,2) DEFAULT NULL,
  `item_desc` text,
  `item_image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `cat_id`, `item_title`, `item_price`, `item_desc`, `item_image`) VALUES
(1, 1, 'Baseball Hat', 12.00, 'Fancy, low-profile baseball hat.', 0x6261736562616c6c2e6a7067),
(2, 1, 'Cowboy Hat', 52.00, '10 gallon variety', 0x636f77626f792e6a7067),
(3, 1, 'Top Hat', 102.00, 'Good for costumes.', 0x546f704861742e6a7067),
(4, 2, 'Short-Sleeved T-Shirt', 12.00, '100% cotton, pre-shrunk.', 0x53686f7274736c6576652e6a7067),
(5, 2, 'Long-Sleeved T-Shirt', 15.00, 'Just like the short-sleeved shirt, with longer sleeves.', 0x4c6f6e67736c6576652e6a7067),
(6, 2, 'Sweatshirt', 22.00, 'Heavy and warm.', 0x537765617473686972742e6a7067),
(7, 3, 'Jane\'s Self-Help Book', 12.00, 'Jane gives advice.', 0x4a616e652e6a7067),
(8, 3, 'Generic Academic Book', 35.00, 'Some required reading for school, will put you to sleep.', 0x61636164656d69632e6a7067),
(9, 3, 'Chicago Manual of Style', 9.99, 'Good for copywriters.', 0x4368696361676f2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_color`
--

CREATE TABLE `store_item_color` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_color` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_color`
--

INSERT INTO `store_item_color` (`id`, `item_id`, `item_color`) VALUES
(1, 1, 'red'),
(2, 1, 'black'),
(3, 1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_size`
--

CREATE TABLE `store_item_size` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_size`
--

INSERT INTO `store_item_size` (`id`, `item_id`, `item_size`) VALUES
(1, 1, 'One Size Fits All'),
(2, 2, 'One Size Fits All'),
(3, 3, 'One Size Fits All'),
(4, 4, 'S'),
(5, 4, 'M'),
(6, 4, 'L'),
(7, 4, 'XL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cat_title` (`cat_title`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_color`
--
ALTER TABLE `store_item_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_size`
--
ALTER TABLE `store_item_size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_item_color`
--
ALTER TABLE `store_item_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_item_size`
--
ALTER TABLE `store_item_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
