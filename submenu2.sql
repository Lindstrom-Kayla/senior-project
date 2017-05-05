-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 07:14 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navigation`
--

-- --------------------------------------------------------

--
-- Table structure for table `submenu2`
--

CREATE TABLE `submenu2` (
  `id` int(11) NOT NULL,
  `sub_menu2` varchar(30) CHARACTER SET utf8 NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu2`
--

INSERT INTO `submenu2` (`id`, `sub_menu2`, `href`, `cat_id`) VALUES
(1, 'Alice to Eleanor', '', 29),
(2, 'Alice to Evelyn', '', 29),
(3, 'Alice to Inga', '', 29),
(4, 'Alice to Joyce', '', 29),
(5, 'Alice to Marjorie', '', 29),
(6, 'Alice to Virgil', '', 29),
(7, 'Eleanor to Alice', '', 30),
(8, 'Eleanor to Evelyn', '', 30),
(9, 'Eleanor to Inga', '', 30),
(10, 'Eleanor to Joyce', '', 30),
(11, 'Eleanor to Marjorie', '', 30),
(12, 'Eleanor to Virgil', '', 30),
(13, 'Evelyn to Alice', '', 31),
(14, 'Evelyn to Eleanor', '', 31),
(15, 'Evelyn to Inga', '', 31),
(16, 'Evelyn to Joyce', '', 31),
(17, 'Evelyn to Marjorie', '', 31),
(18, 'Evelyn to Virgil', '', 31),
(19, 'Inga to Alice', '', 32),
(20, 'Inga to Eleanor', '', 32),
(21, 'Inga to Evelyn', '', 32),
(22, 'Inga to Joyce', '', 32),
(23, 'Inga to Marjorie', '', 32),
(24, 'Inga to Virgil', '', 32),
(25, 'Joyce to Alice', '', 33),
(26, 'Joyce to Eleanor', '', 33),
(27, 'Joyce to Evelyn', '', 33),
(28, 'Joyce to Inga', '', 33),
(29, 'Joyce to Marjorie', '', 33),
(30, 'Joyce to Virgil', '', 33),
(31, 'Marjorie to Alice', '', 34),
(32, 'Marjorie to Eleanor', '', 34),
(33, 'Marjorie to Evelyn', '', 34),
(34, 'Marjorie to Inga', '', 34),
(35, 'Marjorie to Joyce', '', 34),
(36, 'Marjorie to Virgil', '', 34),
(37, 'Virgil to Alice', '', 35),
(38, 'Virgil to Eleanor', '', 35),
(39, 'Virgil to Evelyn', '', 35),
(40, 'Virgil to Inga', '', 35),
(41, 'Virgil to Marjorie', '', 35),
(42, 'Virgil to Joyce', '', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submenu2`
--
ALTER TABLE `submenu2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submenu2`
--
ALTER TABLE `submenu2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
