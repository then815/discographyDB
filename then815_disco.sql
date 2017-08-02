-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2016 at 08:47 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `then815_disco`
--

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE IF NOT EXISTS `Items` (
  `ID` int(10) unsigned NOT NULL,
  `item` varchar(100) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(150) NOT NULL,
  `price` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`ID`, `item`, `type`, `description`, `image`, `price`) VALUES
(1, 'In Between Dreams T-Shirt', 1, 'Check out this In Between Dreams logo t-shirt.  You''ll stand out without being gaudy', 'betweenshirt', 20),
(2, 'Columbia Meadows Poster', 3, 'Copy of a poster from the August 20 Columbia Meadows concert', 'birdsposter', 10),
(3, 'Dreams T-Shirt', 1, 'Don''t let your dreams be dreams graphic tee on yellow', 'dreamsshirt', 20),
(4, 'En Concert DVD', 2, 'Jack Johnson live in concert from the En Concert tour', 'enconcertdvd', 25),
(5, 'Festival Poster', 3, 'Jack Johnson feat. G-Love poster from Philadelphia Festival Pier', 'festivalposter', 10),
(6, 'Live at the Greek DVD', 2, 'Watch Jack perform live at the Greek.', 'greekdvd', 25),
(7, 'Palm Tree Poster', 3, 'Guitar silhouette on yellow background  with upside down palm tree', 'guitarposter', 10),
(8, 'Here to Now to You T-shirt', 1, 'Jack Johnson From Here to Now to You T-shirt in black', 'hertonowshirt', 20),
(9, 'Plaza of Nations Poster', 3, 'Copy of Plaza of Nations concert poster', 'ponposter', 10),
(10, 'Red Rocks Poster', 3, 'Copy of Red Rocks concert poster', 'redrockposter', 10),
(11, 'San Francisco Bridge', 3, 'Copy of poster from 2005 concert at the Greek', 'sanfranposter', 10),
(12, 'September Sessions DVD', 2, 'The Tomorrow Land story brought to live on 16mm film', 'septsessionsdvd', 25),
(13, 'Sleep Through The Static Poster', 3, 'Poster on white of Jack holding a guitar in black and white', 'sttsposter', 10),
(14, 'Thicker Water DVD', 2, 'A film by Jack Johnson and The Malloys', 'thickerwaterdvd', 25),
(15, 'To The Sea Poster', 3, 'Poster for To The Sea album', 'ttsposter', 10);

-- --------------------------------------------------------

--
-- Table structure for table `itemType`
--

CREATE TABLE IF NOT EXISTS `itemType` (
  `itemID` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemType`
--

INSERT INTO `itemType` (`itemID`, `type`) VALUES
(1, 'T-Shirts'),
(2, 'DVD''s'),
(3, 'Posters');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`ID`), ADD KEY `type` (`type`), ADD KEY `price` (`price`);

--
-- Indexes for table `itemType`
--
ALTER TABLE `itemType`
  ADD PRIMARY KEY (`itemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `itemType`
--
ALTER TABLE `itemType`
  MODIFY `itemID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
