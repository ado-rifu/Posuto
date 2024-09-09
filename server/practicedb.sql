-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 04:28 PM
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
-- Database: `practicedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `commentBody` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PostId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentBody`, `createdAt`, `updatedAt`, `PostId`) VALUES
(1, 'I agree!', '2024-09-08 13:26:12', '2024-09-08 13:26:12', 6),
(2, 'Yeah!', '2024-09-08 13:28:05', '2024-09-08 13:28:05', 6),
(3, '', '2024-09-08 14:16:07', '2024-09-08 14:16:07', 4),
(4, '', '2024-09-08 14:16:07', '2024-09-08 14:16:07', 4),
(5, '', '2024-09-08 14:16:07', '2024-09-08 14:16:07', 4),
(6, '', '2024-09-08 14:16:07', '2024-09-08 14:16:07', 4),
(7, 'asdsadsd', '2024-09-08 14:16:12', '2024-09-08 14:16:12', 1),
(8, 'asdsadsd', '2024-09-08 14:16:12', '2024-09-08 14:16:12', 1),
(9, 'asdsadsd', '2024-09-08 14:16:12', '2024-09-08 14:16:12', 1),
(10, 'asdsadsd', '2024-09-08 14:16:13', '2024-09-08 14:16:13', 1),
(11, 'test', '2024-09-08 14:19:09', '2024-09-08 14:19:09', 1),
(12, 'okay', '2024-09-08 14:19:30', '2024-09-08 14:19:30', 1),
(13, 'testtest', '2024-09-08 14:25:24', '2024-09-08 14:25:24', 1),
(14, 'sadsa', '2024-09-08 14:25:28', '2024-09-08 14:25:28', 1),
(15, 'a', '2024-09-08 14:26:10', '2024-09-08 14:26:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `postText` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `postText`, `username`, `createdAt`, `updatedAt`) VALUES
(1, 'Test 1', 'Example Text 1', 'kiki', '2024-09-05 14:35:28', '2024-09-05 14:35:28'),
(2, 'Test 2', 'Example Text 2', 'kiki', '2024-09-05 15:52:57', '2024-09-05 15:52:57'),
(3, 'Test 3', 'Example Text 3', 'kiki', '2024-09-05 15:53:03', '2024-09-05 15:53:03'),
(4, 'Hello', 'Good Morning! What a great day to start doing our activities!', 'kiki', '2024-09-08 08:51:02', '2024-09-08 08:51:02'),
(5, 'Good Afternoon!', 'It is time for a cup of tea!', 'kiki', '2024-09-08 09:16:19', '2024-09-08 09:16:19'),
(6, 'Hello', 'Good Morning! What a great day to start doing our activities!', 'kiki', '2024-09-08 09:55:53', '2024-09-08 09:55:53'),
(7, 'tesuto tesuto', 'teassadsa', 'kiki', '2024-09-08 10:11:05', '2024-09-08 10:11:05'),
(8, 'tesuto tesuto', 'teassadsa', 'kiki', '2024-09-08 10:12:32', '2024-09-08 10:12:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PostId` (`PostId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`PostId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
