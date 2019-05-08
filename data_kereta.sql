-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 03:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_kereta`
--

-- --------------------------------------------------------

--
-- Table structure for table `kereta`
--

CREATE TABLE `kereta` (
  `kode` int(11) NOT NULL,
  `asal` varchar(15) NOT NULL,
  `tujuan` varchar(15) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tanggal` datetime NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta`
--

INSERT INTO `kereta` (`kode`, `asal`, `tujuan`, `kelas`, `tanggal`, `waktu`) VALUES
(1, 'jakarta', 'yogyakarta', 'Ekonomi', '2019-03-10 00:00:00', '2019-04-18 00:00:00'),
(2, 'Solo', 'semarang', 'Eksklusif', '2019-02-11 00:00:00', '2019-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesan` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `atas_nama` varchar(10) NOT NULL,
  `usia` int(3) NOT NULL,
  `no_kk` int(13) NOT NULL,
  `no_hp` int(13) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `jml_penumpang` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesan`, `nama`, `atas_nama`, `usia`, `no_kk`, `no_hp`, `tgl_pesan`, `jml_penumpang`) VALUES
(1, 'Novian', 'ian', 19, 921038, 92381230, '2019-01-02 07:29:00', 1),
(2, 'Alif', 'AL', 17, 333200293, 85628329, '2019-05-25 11:19:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no` int(11) NOT NULL,
  `asal` varchar(15) NOT NULL,
  `tujuan` varchar(15) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `jml_pesan` int(11) NOT NULL,
  `tot_bayar` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `tot_setdiskon` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kereta`
--
ALTER TABLE `kereta`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
