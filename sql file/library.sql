-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 07:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Kumar Pandule', 'kumarpandule@gmail.com', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2023-09-13 16:57:26'),
(2, 'lutfur', 'lutfur@gmail.com', 'lutfur', '123', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(11, 'J.K. Rowling', '2023-09-13 13:40:07', NULL),
(12, 'Paulo Coelho', '2023-09-13 13:40:22', NULL),
(13, 'Chetan Bhagat', '2023-09-13 13:42:31', NULL),
(14, 'Robert. T.Kiyosaki', '2023-09-13 13:42:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17'),
(5, 'OK', 4, 2, 123, 12, '2023-09-08 14:41:34', NULL),
(6, 'Harry Potter', 11, 11, 1, 50, '2023-09-13 13:43:55', '2023-09-13 13:49:18'),
(7, 'The Ink Black Heart', 9, 11, 1234, 50, '2023-09-13 13:44:44', '2023-09-13 16:52:40'),
(8, 'Fantastic Beasts and Where to Find Them', 16, 11, 2, 60, '2023-09-13 13:45:33', '2023-09-13 13:49:28'),
(9, 'The Ickabog', 16, 11, 3, 40, '2023-09-13 13:46:18', '2023-09-13 13:49:35'),
(10, 'Troubled Blood', 16, 11, 4, 50, '2023-09-13 13:46:39', '2023-09-13 13:49:43'),
(11, 'Rich Dad Poor Dad', 19, 14, 43, 100, '2023-09-13 13:48:56', NULL),
(12, 'The Alchemist', 16, 12, 23, 300, '2023-09-13 13:50:53', NULL),
(13, 'Troubled Blood', 13, 11, 45, 30, '2023-09-13 13:51:36', NULL),
(14, 'The Silkworm', 14, 11, 54, 40, '2023-09-13 13:52:09', NULL),
(15, 'Eleven minutes', 10, 12, 44, 20, '2023-09-13 13:53:01', NULL),
(16, 'The Pilgrimage', 15, 12, 23, 26, '2023-09-13 13:53:43', NULL),
(17, 'Aleph', 14, 12, 65, 50, '2023-09-13 13:54:15', NULL),
(18, 'The way of the Bow', 10, 12, 76, 45, '2023-09-13 13:54:41', NULL),
(19, 'Brida', 9, 12, 67, 25, '2023-09-13 13:55:08', NULL),
(20, 'Five Point someone', 16, 13, 20, 50, '2023-09-13 13:55:45', NULL),
(21, 'Half Girlfriend', 9, 13, 25, 35, '2023-09-13 13:56:31', NULL),
(22, 'The 3 Mistakes of My life', 15, 13, 87, 50, '2023-09-13 13:57:02', NULL),
(23, 'One Indian Girl', 9, 13, 90, 70, '2023-09-13 13:57:40', NULL),
(24, 'hdjdjs', 12, 11, 432, 12, '2023-09-13 16:53:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Science', 1, '2023-09-13 13:34:01', '2023-09-13 13:37:43'),
(9, 'Romance', 1, '2023-09-13 13:34:28', '2023-09-13 13:37:59'),
(10, 'Fiction', 1, '2023-09-13 13:34:55', '0000-00-00 00:00:00'),
(11, 'Non-fiction', 1, '2023-09-13 13:35:08', '0000-00-00 00:00:00'),
(12, 'Poetry', 1, '2023-09-13 13:35:23', '0000-00-00 00:00:00'),
(13, 'Thriller', 1, '2023-09-13 13:35:42', '0000-00-00 00:00:00'),
(14, 'Tragedy', 1, '2023-09-13 13:35:56', '0000-00-00 00:00:00'),
(15, 'Biography', 1, '2023-09-13 13:36:12', '0000-00-00 00:00:00'),
(16, 'Adventure', 1, '2023-09-13 13:36:29', '0000-00-00 00:00:00'),
(17, 'Crime & Mystery', 1, '2023-09-13 13:36:41', '0000-00-00 00:00:00'),
(18, 'Humor ', 1, '2023-09-13 13:36:59', '0000-00-00 00:00:00'),
(19, 'Self-improvement', 1, '2023-09-13 13:47:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID012', '2023-09-08 14:42:27', '2023-09-08 14:42:50', 1, 2),
(8, 5, 'SID012', '2023-09-08 14:43:21', '2023-09-13 16:40:48', 1, 3),
(9, 5, 'SID013', '2023-09-13 16:47:57', NULL, NULL, NULL),
(10, 6, 'SID013', '2023-09-13 16:48:41', NULL, NULL, NULL),
(11, 8, 'SID012', '2023-09-13 16:50:12', NULL, NULL, NULL),
(12, 7, 'SID013', '2023-09-13 16:53:04', NULL, NULL, NULL),
(13, 24, 'SID013', '2023-09-13 16:55:47', NULL, NULL, NULL),
(14, 24, 'SID015', '2023-09-13 17:33:52', NULL, NULL, NULL),
(15, 8, 'SID015', '2023-09-13 17:34:15', NULL, NULL, NULL),
(16, 6, 'SID015', '2023-09-13 17:34:30', '2023-09-13 17:37:17', 1, 0),
(17, 10, 'SID015', '2023-09-13 17:35:04', '2023-09-13 17:37:02', 1, 1),
(18, 9, 'SID015', '2023-09-13 17:35:34', NULL, NULL, NULL),
(19, 7, 'SID015', '2023-09-13 17:35:58', '2023-09-13 17:36:51', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'lutfur', 'admi@gmail.com', '1234', '202cb962ac59075b964b07152d234b70', 0, '2023-09-08 14:29:30', '2023-09-13 17:19:12'),
(12, 'SID013', 'lutfur', 'lutfur@gmail.com', '123', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2023-09-13 16:44:16', NULL),
(13, 'SID014', 'symon ', 'symon@gmail.com', '0181452677', '202cb962ac59075b964b07152d234b70', 1, '2023-09-13 17:14:32', NULL),
(14, 'SID015', 'Raihan', 'raihan@gmail.com', '0187923456', '202cb962ac59075b964b07152d234b70', 1, '2023-09-13 17:21:08', '2023-09-13 17:32:44'),
(15, 'SID016', 'Jihad', 'jihad@gmail.com', '0198037476', '202cb962ac59075b964b07152d234b70', 1, '2023-09-13 17:21:57', NULL),
(16, 'SID017', 'Tahsin', 'tahsin@gmail.com', '0194628382', '202cb962ac59075b964b07152d234b70', 0, '2023-09-13 17:22:49', '2023-09-13 17:28:45'),
(17, 'SID018', 'Abdullah', 'abdullah@gmail.com', '0173849378', '202cb962ac59075b964b07152d234b70', 1, '2023-09-13 17:23:28', NULL),
(18, 'SID019', 'Didar', 'didar@gmail.com', '0160298872', '202cb962ac59075b964b07152d234b70', 0, '2023-09-13 17:24:10', '2023-09-13 17:28:49'),
(19, 'SID020', 'Kaiom', 'kaiom@gmail.com', '0134848364', '202cb962ac59075b964b07152d234b70', 1, '2023-09-13 17:24:46', NULL),
(20, 'SID021', 'Sohel', 'sohel@gmail.com', '0159048383', '202cb962ac59075b964b07152d234b70', 0, '2023-09-13 17:25:20', '2023-09-13 17:28:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
