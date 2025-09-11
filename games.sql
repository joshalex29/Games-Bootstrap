-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 11, 2025 at 12:23 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_id` int(6) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `email` varchar(320) NOT NULL,
  `country` enum('USA','Canada','Mexico','China','Japan','South Korea','Indonesia','Malaysia','Singapore','UK','Ireland','France','Spain','Germany','Italy','Russia','South Africa') NOT NULL DEFAULT 'USA',
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acc_id`, `user`, `pass`, `email`, `country`, `birthdate`) VALUES
(1, 'uib', '12345', 'uib@gmail.com', 'Indonesia', '2025-08-06'),
(2, 'joltec', '260900', 'joltec@gmail.com', 'Indonesia', '2000-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `avatar_id` int(6) UNSIGNED NOT NULL,
  `avatar_title` varchar(100) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `point_price` int(250) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`avatar_id`, `avatar_title`, `origin`, `desc`, `point_price`) VALUES
(1, 'Fragrant Flowers', 'Gaseous Water', 'A delicate, fragrant bloom, captured in soft light.', 50),
(2, 'Coral Reefs', 'Gaseous Water', 'A vibrant slice of an underwater world.', 50);

-- --------------------------------------------------------

--
-- Table structure for table `emoticon`
--

CREATE TABLE `emoticon` (
  `emotic_id` int(6) NOT NULL,
  `emotic_title` varchar(100) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `point_price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emoticon`
--

INSERT INTO `emoticon` (`emotic_id`, `emotic_title`, `origin`, `desc`, `point_price`) VALUES
(1, 'Happy', 'Gaseous Water', 'Happy happy happy!', 25),
(2, 'Sad Coffee', 'Gaseous Water', 'Espresso depresso', 25);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(6) UNSIGNED NOT NULL,
  `game_title` varchar(100) NOT NULL,
  `dev` varchar(100) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `rel_date` date NOT NULL DEFAULT current_timestamp(),
  `desc` varchar(255) NOT NULL,
  `price` int(255) UNSIGNED NOT NULL,
  `points` int(250) UNSIGNED NOT NULL,
  `control_support` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `game_title`, `dev`, `genre`, `rel_date`, `desc`, `price`, `points`, `control_support`) VALUES
(1, 'Terra Nil', 'Free Lives, Clockwork Acorn', 'Casual, Indie', '2023-03-28', 'Terra Nil is an intricate environmental strategy game about transforming a barren wasteland into a thriving, balanced ecosystem. Bring life back to a lifeless world by purifying soil, cleaning oceans, planting trees, and reintroducing wildlife, then leave', 10, 50, 'None'),
(2, 'Monster Hunter Wilds', 'CAPCOM Co., Ltd.', 'Action, Adventure, RPG', '2025-02-28', 'The unbridled force of nature runs wild and relentlessly, with environments transforming drastically from one moment to the next. This is a story of monsters and humans, and their struggles to coexist in a world of duality.', 70, 250, 'XBox Controllers, DualShock Controllers, DualSense Controllers, Steam Input API');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(6) UNSIGNED NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Casual'),
(2, 'Action'),
(3, 'Adventure'),
(4, 'RPG'),
(5, 'Strategy'),
(6, 'Indie');

-- --------------------------------------------------------

--
-- Table structure for table `playersonline`
--

CREATE TABLE `playersonline` (
  `playnumb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`avatar_id`);

--
-- Indexes for table `emoticon`
--
ALTER TABLE `emoticon`
  ADD PRIMARY KEY (`emotic_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `profile_bg`
--
ALTER TABLE `profile_bg`
  ADD PRIMARY KEY (`backgr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acc_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `avatar_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emoticon`
--
ALTER TABLE `emoticon`
  MODIFY `emotic_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
