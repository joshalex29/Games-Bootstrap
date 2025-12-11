-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 04, 2025 at 12:05 PM
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
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile_bg`
--

CREATE TABLE `profile_bg` (
  `backgr_id` int(6) UNSIGNED NOT NULL,
  `backgr_title` varchar(100) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `point_price` int(250) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile_bg`
--

INSERT INTO `profile_bg` (`backgr_id`, `backgr_title`, `origin`, `desc`, `point_price`) VALUES
(1, 'Green Plains', 'Gaseous Water', 'The wide-open plains and a sky full of possibility. A reminder to keep exploring.', 50),
(2, 'The Everforge', 'Monster Hunter Wilds', 'Made by the ancients, the people of Azuz kept its flame lit after eons.', 50);

--
-- Table structure for table `pointstore_items`
--

CREATE TABLE `pointstore_items` (
  `id` int(6) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `price` int(250) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pointstore_items`
--

INSERT INTO `pointstore_items` (`id`, `title`, `type`, `desc`, `price`, `image`) VALUES
(1, 'Happy Emoticon', 'emoticon', 'A cheerful smiley face emoticon', 10, 'img/emoticon1.png'),
(2, 'Warrior Avatar', 'avatar', 'A fierce warrior avatar', 20, 'img/avatar1.png'),
(3, 'Sad Emoticon', 'emoticon', 'A sad face emoticon', 10, 'img/emoticon2.png'),
(4, 'Mage Avatar', 'avatar', 'A mystical mage avatar', 25, 'img/avatar2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile_bg`
--
ALTER TABLE `profile_bg`
  ADD PRIMARY KEY (`backgr_id`);

--
-- Indexes for table `pointstore_items`
--
ALTER TABLE `pointstore_items`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
