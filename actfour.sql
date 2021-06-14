-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 09:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actfour`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `code` varchar(100) NOT NULL,
  `create_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `create_at`, `expiration`) VALUES
(1, 0, '671252', '2021-06-14 14:46:32', '2021-06-14 14:51:32'),
(2, 0, '899468', '2021-06-14 14:46:59', '2021-06-14 14:51:59'),
(3, 0, '527948', '2021-06-14 14:47:13', '2021-06-14 14:52:13'),
(4, 0, '495497', '2021-06-14 14:56:39', '2021-06-14 15:01:39'),
(5, 0, '654685', '2021-06-14 14:56:52', '2021-06-14 15:01:52'),
(6, 0, '331527', '2021-06-14 14:59:08', '2021-06-14 15:04:08'),
(7, 0, '311368', '2021-06-14 14:59:16', '2021-06-14 15:04:16'),
(8, 0, '431842', '2021-06-14 15:10:21', '2021-06-14 15:15:21'),
(9, 0, '036295', '2021-06-14 15:10:29', '2021-06-14 15:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `logid` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`logid`, `user_id`, `username`, `activity`, `dateandtime`) VALUES
(1, 0, 'kyla', 'Logged In', '2021-06-14 14:46:32'),
(2, 0, 'kyla', 'Entered Successsful Code', '2021-06-14 14:47:13'),
(3, 0, 'kyla', 'Logged Out', '2021-06-14 14:55:42'),
(4, 0, 'kyla', 'Logged In', '2021-06-14 14:56:39'),
(5, 0, 'kyla', 'Entered Successsful Code', '2021-06-14 14:56:52'),
(6, 0, 'kyla', 'Logged Out', '2021-06-14 14:58:00'),
(7, 0, 'anj', 'Logged In', '2021-06-14 14:59:08'),
(8, 0, 'anj', 'Entered Successsful Code', '2021-06-14 14:59:16'),
(9, 0, 'anj', 'Logged Out', '2021-06-14 15:07:15'),
(10, 1, 'kyla', 'Changed Password', '2021-06-14 15:09:37'),
(11, 0, 'kyla', 'Logged In', '2021-06-14 15:10:21'),
(12, 0, 'kyla', 'Entered Successsful Code', '2021-06-14 15:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'Kyla Mariel Kukao', 'kylamarielkukao@gmail.com', 'kyla', 'Kyla@1234', '2021-06-14 14:46:22'),
(2, 'Angela Gesim', 'anjgesim@gmail.com', 'anj', 'Trial1234@', '2021-06-14 14:58:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `logid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
