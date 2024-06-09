-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 03:03 PM
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
-- Database: `wordnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `dicwords`
--

CREATE TABLE `dicwords` (
  `id_wordDic` int(11) NOT NULL,
  `wordDic` varchar(50) NOT NULL,
  `leng_wordDic` int(11) NOT NULL,
  `level_wordDic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dicwords`
--

INSERT INTO `dicwords` (`id_wordDic`, `wordDic`, `leng_wordDic`, `level_wordDic`) VALUES
(1, 'firstly ', 7, 2),
(2, 'i', 1, 1),
(3, 'would', 5, 2),
(4, 'like', 4, 1),
(5, 'to', 2, 1),
(6, 'say', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userwords`
--

CREATE TABLE `userwords` (
  `id_wordU` int(11) NOT NULL,
  `wordU` varchar(50) NOT NULL,
  `leng_wordU` int(11) NOT NULL,
  `level_wordU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userwords`
--

INSERT INTO `userwords` (`id_wordU`, `wordU`, `leng_wordU`, `level_wordU`) VALUES
(1, 'the', 3, 1),
(2, 'door', 4, 1),
(3, 'is', 2, 1),
(4, 'open', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dicwords`
--
ALTER TABLE `dicwords`
  ADD PRIMARY KEY (`id_wordDic`);

--
-- Indexes for table `userwords`
--
ALTER TABLE `userwords`
  ADD PRIMARY KEY (`id_wordU`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dicwords`
--
ALTER TABLE `dicwords`
  MODIFY `id_wordDic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userwords`
--
ALTER TABLE `userwords`
  MODIFY `id_wordU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
