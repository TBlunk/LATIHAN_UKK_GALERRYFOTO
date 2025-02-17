-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 07:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(1, 'Bunga', 'Kumpulan foto bunga', '2025-01-20', 7),
(5, 'Ultraman', 'Gambar Ultraman tiding tiding\r\n', '2025-02-10', 7);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(3, 'Bunga Teratai (Edited)', 'Foto Bunga Teratai', '2025-02-10', '1639732100-Bungateratai.jpeg', 1, 7),
(5, 'Bunga Mawar', 'Foto Bunga Mawar', '2025-02-10', '1247098594-Mawar.jpg', 1, 7),
(6, 'Ultraman Zero', 'Foto Ultraman Tiding Tiding', '2025-02-10', '1177632158-UltramanZeroProfile.jpg', 5, 7),
(7, 'Ultraman Ginga', 'Foto Ultraman Tiding Tiding', '2025-02-10', '1393940845-UltGInga.jpg', 5, 7),
(8, 'Bunga Lavender ', 'Foto Bunga Lavender', '2025-02-10', '1594270172-Lavender.jpg', 1, 7),
(9, 'Bunga Matahari', 'Foto Bunga Matahari', '2025-02-10', '1164272786-SunFLow.jpeg', 1, 7),
(10, 'Ultraman Nexus', 'Foto Ultraman Tiding Tiding', '2025-02-10', '2106496511-UltNexus.jpg', 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(1, 3, 7, '2025-02-05'),
(5, 3, 7, '2025-02-05'),
(6, 3, 7, '2025-02-05'),
(7, 3, 7, '2025-02-05'),
(8, 3, 7, '2025-02-05'),
(10, 3, 7, '2025-02-05'),
(11, 3, 7, '2025-02-05'),
(12, 3, 7, '2025-02-05'),
(13, 3, 7, '2025-02-05'),
(14, 3, 7, '2025-02-05'),
(15, 3, 7, '2025-02-05'),
(16, 3, 7, '2025-02-05'),
(17, 3, 7, '2025-02-05'),
(18, 3, 7, '2025-02-05'),
(20, 3, 7, '2025-02-05'),
(24, 3, 7, '2025-02-10'),
(25, 3, 7, '2025-02-10'),
(27, 3, 7, '2025-02-10'),
(30, 5, 7, '2025-02-10'),
(31, 5, 7, '2025-02-10'),
(32, 5, 7, '2025-02-10'),
(33, 6, 7, '2025-02-10'),
(34, 6, 7, '2025-02-10'),
(35, 6, 7, '2025-02-10'),
(36, 7, 7, '2025-02-10'),
(37, 7, 7, '2025-02-10'),
(38, 7, 7, '2025-02-10'),
(39, 7, 7, '2025-02-10'),
(40, 7, 7, '2025-02-10'),
(41, 7, 7, '2025-02-10'),
(42, 7, 7, '2025-02-10'),
(43, 7, 7, '2025-02-10'),
(44, 6, 7, '2025-02-10'),
(45, 6, 7, '2025-02-10'),
(46, 6, 7, '2025-02-10'),
(47, 8, 7, '2025-02-10'),
(48, 8, 7, '2025-02-10'),
(49, 8, 7, '2025-02-10'),
(50, 8, 7, '2025-02-10'),
(51, 10, 7, '2025-02-10'),
(52, 9, 7, '2025-02-10'),
(53, 9, 7, '2025-02-10'),
(54, 9, 7, '2025-02-10'),
(55, 8, 7, '2025-02-10'),
(56, 8, 7, '2025-02-10'),
(57, 8, 7, '2025-02-10'),
(58, 8, 7, '2025-02-10'),
(59, 9, 7, '2025-02-10'),
(60, 10, 7, '2025-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'Admin1', '81dc9bdb52d04dc20036dbd8313ed055', 'maman@gmail.com', 'maman spakbor', 'JL sirottol mustakim'),
(2, 'Admin1', '81dc9bdb52d04dc20036dbd8313ed055', 'maman@gmail.com', 'maman spakbor', 'JL sirottol mustakim'),
(3, 'Admin3', '827ccb0eea8a706c4c34a16891f84e7b', 'mama1n@gmail.com', 'maman spakbor2', 'JL sirottol mustakim3'),
(4, 'testing', '123123', 'aa@gmail.com', 'aaa', 'aaaa'),
(5, 'Test1', '202cb962ac59075b964b07152d234b70', 'racing@gmail.com', 'babang', 'JL sirottol mustakim3'),
(6, 'Check', '25d55ad283aa400af464c76d713c07ad', 'aa@gmail.com', 'maman spakbor2', 'JL sirottol mustakim3'),
(7, 'Jinpachi1', '827ccb0eea8a706c4c34a16891f84e7b', 'jinpachi@gmail.com', 'jinpachi saepoeloh', 'jl.benteng takeshi 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
