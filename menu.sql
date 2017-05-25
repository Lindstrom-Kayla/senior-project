-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2017 at 06:55 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` int(11) NOT NULL,
  `letters_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 NOT NULL,
  `people_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `letters_name`, `href`, `people_id`) VALUES
(1, 'Alice to Eleanor', '', 1),
(2, 'Alice to Evelyn', '', 1),
(3, 'Alice to Inga', '', 1),
(4, 'Alice to Joyce', '', 1),
(5, 'Alice to Marjorie', '', 1),
(6, 'Alice to Virgil', '', 1),
(7, 'Eleanor to Alice', '', 2),
(8, 'Eleanor to Evelyn', '', 2),
(9, 'Eleanor to Inga', '', 2),
(10, 'Eleanor to Joyce', '', 2),
(11, 'Eleanor to Marjorie', '', 2),
(12, 'Eleanor to Virgil', '', 2),
(13, 'Evelyn to Alice', '', 3),
(14, 'Evelyn to Eleanor', '', 3),
(15, 'Evelyn to Inga', '', 3),
(16, 'Evelyn to Joyce', '', 3),
(17, 'Evelyn to Marjorie', '', 3),
(18, 'Evelyn to Virgil', '', 3),
(19, 'Inga to Alice', '', 4),
(20, 'Inga to Eleanor', '', 4),
(21, 'Inga to Evelyn', '', 4),
(22, 'Inga to Joyce', '', 4),
(23, 'Inga to Marjorie', '', 4),
(24, 'Inga to Virgil', '', 4),
(25, 'Joyce to Alice', '', 5),
(26, 'Joyce to Eleanor', '', 5),
(27, 'Joyce to Evelyn', '', 5),
(28, 'Joyce to Inga', '', 5),
(29, 'Joyce to Marjorie', '', 5),
(30, 'Joyce to Virgil', '', 5),
(31, 'Marjorie to Alice', '', 6),
(32, 'Marjorie to Eleanor', '', 6),
(33, 'Marjorie to Evelyn', '', 6),
(34, 'Marjorie to Inga', '', 6),
(35, 'Marjorie to Joyce', '', 6),
(36, 'Marjorie to Virgil', '', 6),
(37, 'Virgil to Alice', '', 7),
(38, 'Virgil to Eleanor', '', 7),
(39, 'Virgil to Evelyn', '', 7),
(40, 'Virgil to Inga', '', 7),
(41, 'Virgil to Marjorie', '', 7),
(42, 'Virgil to Joyce', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(1, 'Home'),
(2, 'Letters'),
(3, 'More Info');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `people_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `people_name`, `href`, `menu_id`) VALUES
(1, 'Alice', '', 2),
(2, 'Eleanor', '', 2),
(3, 'Evelyn', '', 2),
(4, 'Inga', '', 2),
(5, 'Joyce', '', 2),
(6, 'Marjorie', '', 2),
(7, 'Virgil', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_id` (`people_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`);

--
-- Constraints for table `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
