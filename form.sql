-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2023 at 12:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `regs`
--

CREATE TABLE `regs` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phoneNumber` bigint(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regs`
--

INSERT INTO `regs` (`id`, `fullName`, `phoneNumber`, `email`, `password`, `confirm_password`, `file_path`) VALUES
(0, 'Mohd Daaim Khan', 9568400743, 'daaimkhan86@gmail.com', 'DaaimKhan@786', 'DaaimKhan@786', '0'),
(0, 'Mohd Daaim Khan', 9568400743, 'daaimkhan86@gmail.com', 'DaaimKhan@786', 'DaaimKhan@786', '0'),
(0, 'Mohd Daaim Khan', 9568400743, 'daaimkhan86@gmail.com', 'DaaimKhan@786', 'DaaimKhan@786', 'uploads/Photo.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
