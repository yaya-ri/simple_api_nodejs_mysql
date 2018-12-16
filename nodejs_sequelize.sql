-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2018 at 10:19 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs_sequelize`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE `Classes` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `class_time` datetime DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`id`, `class_name`, `class_time`, `room`, `createdAt`, `updatedAt`) VALUES
('0ea72549-f902-4b6a-94a5-583cf5d70fa0', 'angular', '2018-12-15 17:00:00', '1f', '2018-12-16 08:55:17', '2018-12-16 08:55:17'),
('15343f43-5f80-44de-8726-3a7568c4d08b', 'node', '2018-12-15 17:00:00', '1c', '2018-12-16 03:35:17', '2018-12-16 03:35:17'),
('49932122-0069-42ca-be58-e32b09543689', 'react', '2018-12-15 17:00:00', '1f', '2018-12-16 04:21:43', '2018-12-16 04:21:43'),
('5f585370-8390-404f-87bd-28cd7e7c7632', 'golang', '2018-12-15 17:00:00', '1b', '2018-12-16 03:02:04', '2018-12-16 03:02:04'),
('654a66f3-cd34-4438-bfa6-e594c19182a1', 'ruby', '2018-12-15 17:00:00', '1c', '2018-12-16 03:47:35', '2018-12-16 03:47:35'),
('7cc8a763-6f33-408a-bec0-80ff7fc4e24a', 'html', '2018-12-15 17:00:00', '1f', '2018-12-16 04:16:55', '2018-12-16 04:16:55'),
('d69e54b8-f670-48b6-971f-f9438e36f7d3', 'angular', '2018-12-15 17:00:00', '1f', '2018-12-16 08:35:23', '2018-12-16 08:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20181216004259-create-class-model.js'),
('20181216004438-create-student-model.js'),
('20181216061418-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `class_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`id`, `name`, `phone`, `class_id`, `createdAt`, `updatedAt`) VALUES
('01387307-7761-4674-9ff3-9b021bd8e3e5', 'doni', '087976879654', '5f585370-8390-404f-87bd-28cd7e7c7632', '2018-12-16 03:47:48', '2018-12-16 03:47:48'),
('1370e332-a9b7-44f0-9028-1a07e737999e', 'yaya', '087976879654', '5f585370-8390-404f-87bd-28cd7e7c7632', '2018-12-16 03:11:58', '2018-12-16 03:11:58'),
('2e5ce110-7c0a-42c8-8235-2a3b423c792f', 'tonii', '087976879654', '15343f43-5f80-44de-8726-3a7568c4d08b', '2018-12-16 04:21:33', '2018-12-16 04:21:33'),
('42f7f7bd-8e00-4ab4-b662-b2ae44ace38b', 'joni', '087976879654', '15343f43-5f80-44de-8726-3a7568c4d08b', '2018-12-16 08:35:47', '2018-12-16 08:35:47'),
('b834b1f3-4d99-4a11-aa1b-9cadf5481c92', 'doni', '087976879654', '15343f43-5f80-44de-8726-3a7568c4d08b', '2018-12-16 04:17:25', '2018-12-16 04:17:25'),
('e1803074-e025-4462-a0f1-5d3584ebc0c2', 'rizqi', '087976879654', '5f585370-8390-404f-87bd-28cd7e7c7632', '2018-12-16 03:13:21', '2018-12-16 03:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `first_name`, `last_name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'yaya', 'rizqi', 'yaya@gmail.com', '12345', '2018-12-16 00:00:00', '2018-12-16 00:00:00'),
(17, 'andre', 'andra', 'andre@gmail.com', '12345', '2018-12-16 09:02:57', '2018-12-16 09:02:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Students`
--
ALTER TABLE `Students`
  ADD CONSTRAINT `Students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
