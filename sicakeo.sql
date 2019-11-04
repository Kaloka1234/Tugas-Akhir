-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 06:12 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sicakeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(5) NOT NULL,
  `nim` varchar(12) DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `hari` enum('1','2','3','4','5') DEFAULT NULL,
  `tgl` date NOT NULL,
  `1` enum('1','2','3','4','5','6','7','8','9','10','11','12','0') NOT NULL DEFAULT '0',
  `2` enum('1','2','3','4','5','6','7','8','9','10','11','12','0') NOT NULL DEFAULT '0',
  `3` enum('1','2','3','4','5','6','7','8','9','10','11','12','0') NOT NULL DEFAULT '0',
  `4` enum('1','2','3','4','5','6','7','8','9','10','11','12','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `nim`, `kode`, `hari`, `tgl`, `1`, `2`, `3`, `4`) VALUES
(1, '180535632559', 'h5202', '1', '2019-11-04', '7', '8', '0', '0'),
(2, '180535632559', 'h5216', '2', '2019-11-05', '7', '8', '0', '0'),
(3, '180535632552', 'h5210', '1', '2019-11-04', '7', '8', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kode` varchar(5) NOT NULL,
  `hari` enum('0','1','2','3','4','5','6') NOT NULL,
  `1` enum('0','1') NOT NULL,
  `2` enum('0','1') DEFAULT NULL,
  `3` enum('0','1') DEFAULT NULL,
  `4` enum('0','1') DEFAULT NULL,
  `5` enum('0','1') DEFAULT NULL,
  `6` enum('0','1') DEFAULT NULL,
  `7` enum('0','1') DEFAULT NULL,
  `8` enum('0','1') DEFAULT NULL,
  `9` enum('0','1') DEFAULT NULL,
  `10` enum('0','1') DEFAULT NULL,
  `11` enum('0','1') DEFAULT NULL,
  `12` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode`, `hari`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`) VALUES
('h5215', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5215', '2', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5215', '3', '1', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5215', '4', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0'),
('h5215', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5216', '1', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0'),
('h5216', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5216', '3', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0'),
('h5216', '4', '1', '1', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0'),
('h5216', '5', '1', '1', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5201', '1', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5201', '2', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0'),
('h5201', '3', '0', '0', '1', '1', '0', '0', '1', '1', '1', '0', '0', '0'),
('h5201', '4', '1', '1', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0'),
('h5201', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5202', '1', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0'),
('h5202', '2', '1', '1', '1', '1', '0', '0', '1', '1', '1', '1', '0', '0'),
('h5202', '3', '1', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5202', '4', '0', '0', '0', '0', '1', '1', '1', '1', '0', '0', '0', '0'),
('h5202', '5', '1', '1', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0'),
('h5207', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5207', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5207', '3', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0'),
('h5207', '4', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0'),
('h5207', '5', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5208', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5208', '2', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5208', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5208', '4', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0'),
('h5208', '5', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0'),
('h5210', '1', '1', '1', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0'),
('h5210', '2', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5210', '3', '1', '1', '1', '1', '0', '1', '1', '1', '1', '0', '0', '0'),
('h5210', '4', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5210', '5', '1', '1', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5211', '1', '1', '1', '0', '0', '1', '1', '1', '1', '0', '0', '0', '0'),
('h5211', '2', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5211', '3', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5211', '4', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0'),
('h5211', '5', '1', '1', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0'),
('h5214', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5214', '2', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '0'),
('h5214', '3', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0'),
('h5214', '4', '1', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '0'),
('h5214', '5', '1', '1', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`, `password`) VALUES
('180535632552', 'Kartika Wahyuningsih', '123'),
('180535632559', 'Khafit Badrus Zaman', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`) VALUES
('h5201', 'Laboratorium Sistem Informasi'),
('h5202', 'Ruang Kuliah'),
('h5207', 'Laboratorium Computer dan Vision'),
('h5208', 'Laboratorium Pemrograman'),
('h5210', 'Laboratorium Web dan Mobile'),
('h5211', 'Laboratorium Multimedia'),
('h5214', 'Laboratorium Komunikasi Data dan Jaringan Komputer'),
('h5215', 'Ruang Kuliah'),
('h5216', 'Ruang Kuliah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
