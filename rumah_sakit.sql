-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 01:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
('11', 'kl@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_dokter`
--

CREATE TABLE `data_dokter` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `umur` int(11) NOT NULL,
  `jns_kel` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `spesialisasi` varchar(50) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_dokter`
--

INSERT INTO `data_dokter` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `umur`, `jns_kel`, `alamat`, `spesialisasi`, `notelp`, `email`, `pass`, `foto`) VALUES
('24321', 'prana', 'kediri', '1994-06-16', 23, 'perempuan', 'dsafgdsavs', 'Jantung', '0891234567890', 'mlg@gmail.com', '123', '64681fc321157.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_pasien`
--

CREATE TABLE `data_pasien` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jns_kel` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nama_pngjwb` varchar(50) NOT NULL,
  `hubungan` varchar(50) NOT NULL,
  `notelp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pasien`
--

INSERT INTO `data_pasien` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jns_kel`, `alamat`, `nama_pngjwb`, `hubungan`, `notelp`, `email`, `pass`, `foto`) VALUES
('123213', 'afafaf', 'JGDSAJ', '2023-05-04', 'laki-laki', 'sadasdsad', 'afafs', 'afascac', '899676', 'pranawijaya43@gmail.com', '13123', '646db7aeebc46.png'),
('24321', 'adasd', 'asdassa', '2023-05-13', 'perempuan', 'afasfa', 'asdasd', 'asac', '1431414', 'jkl@gmail.com', '123', '646db70db651e.png'),
('cac', 'qdwq', 'CQWC', '2023-05-19', 'perempuan', 'ASCSAC', 'ASCASC', 'ASCASC', '214124124', 'cascadsa@gmail.com', 'SD', '6471e34c5d18c.jpg'),
('j86', 'ugou', 'igbik', '2023-05-12', 'laki-laki', 'jvvjjvv', 'gcjgh', 'teman', '098765432', 'cascadsa@gmail.com', '123', '6471e1bc624e7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jwl` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jwl`, `id`, `nama`, `hari`, `jam`) VALUES
('555', '24321', 'ABAKCIADSC', 'jumat', '09.00-08.00'),
('9898', '24321', 'prana', 'selasa', '10.00-11.00'),
('asdsad', 'asdas', 'asdsad', 'rabu', 'dcac'),
('sadsad', '24321', 'prana', '', 'sdasdsad');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `harga`, `foto`) VALUES
('24321', 'Paramex', '1wqs', '646c93f4c3f9c.jpg'),
('890', 'Bodrex', '90.000', '646cd52ed59ba.png'),
('sdad', 'asdasd', '121323', '64733ee01b0dc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_dokter`
--
ALTER TABLE `data_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jwl`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
