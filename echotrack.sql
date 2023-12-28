-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 07:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `echotrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `environmentaldata`
--

CREATE TABLE `environmentaldata` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dataType` varchar(50) NOT NULL,
  `value` varchar(126) NOT NULL,
  `timestamp` varchar(50) NOT NULL,
  `location` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `environmentaldata`
--

INSERT INTO `environmentaldata` (`id`, `userId`, `dataType`, `value`, `timestamp`, `location`) VALUES
(7, 7, 'Temp', '50', '10:00PM local Time', 'Nablus');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) NOT NULL,
  `header` varchar(100) NOT NULL,
  `data` varchar(256) NOT NULL,
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `header`, `data`, `userid`) VALUES
(2, 'NewHeader', 'newData', 7);

-- --------------------------------------------------------

--
-- Table structure for table `userratings`
--

CREATE TABLE `userratings` (
  `id` int(10) NOT NULL,
  `ratedUserId` int(10) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userratings`
--

INSERT INTO `userratings` (`id`, `ratedUserId`, `rating`) VALUES
(6, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `concerns` varchar(256) NOT NULL,
  `score` int(11) NOT NULL,
  `averageRating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `concerns`, `score`, `averageRating`) VALUES
(6, 'Mohammad', '$2a$10$Bu5O4Y0/E2A8LnTaFL0SJu2EaClpXSjQv2CRXtoc6xMlt7g0z.Kuu', 'air quality , water', 0, 0),
(7, 'testUser', '$2a$10$mybRydPG3/RTxQaF9/p1JeDfUIzDTvQHFf0F08Q1ACYJSjSYSkWwa', 'testconcern', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_alerts`
--

CREATE TABLE `user_alerts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dataType` varchar(150) NOT NULL,
  `thresholdValue` int(11) NOT NULL,
  `thresholdCondition` varchar(10) NOT NULL,
  `location` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_alerts`
--

INSERT INTO `user_alerts` (`id`, `userId`, `dataType`, `thresholdValue`, `thresholdCondition`, `location`) VALUES
(3, 7, 'Temp', 60, 'gt', 'Nbalus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `environmentaldata`
--
ALTER TABLE `environmentaldata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userratings`
--
ALTER TABLE `userratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_alerts`
--
ALTER TABLE `user_alerts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `environmentaldata`
--
ALTER TABLE `environmentaldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userratings`
--
ALTER TABLE `userratings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_alerts`
--
ALTER TABLE `user_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
