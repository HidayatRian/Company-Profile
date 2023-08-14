-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2023 at 09:12 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siguis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alumni`
--

CREATE TABLE `tb_alumni` (
  `id_alumni` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `npm` bigint(20) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `no_telp` bigint(20) NOT NULL,
  `nama_usaha` varchar(150) NOT NULL,
  `alamat_usaha` varchar(200) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(12) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_alumni`
--

INSERT INTO `tb_alumni` (`id_alumni`, `nama`, `npm`, `prodi`, `no_telp`, `nama_usaha`, `alamat_usaha`, `tgl_berdiri`, `deskripsi`, `status`, `lat`, `lng`) VALUES
(7, 'Mark Zuckberg', 191622718391, 'Teknik Industri', 87261731821, 'Facebooks', 'Bekasi barat blok b3 no 11', '2023-04-12', 'Mnyediakan jasa printing', 'Alumni', 1.1850725, 104.0192136),
(8, 'Telon Mas', 199382738491, 'Teknik Informatika', 82736178312, 'Jual Beli Handphone', 'Tanjung Buntung, ak47 no 5', '2023-04-20', 'Menjual handphone baru dan bekas', 'Alumni', 1.176797, 104.0154049),
(9, 'Horacio Pagani', 192399485738, 'Teknik Informatika', 837465738212, 'Dealler Mobil', 'Muara Tikus, t11', '1964-12-08', 'Menjual mobil sport', 'Alumni', 1.1634608, 104.0244712);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lok`
--

CREATE TABLE `tb_lok` (
  `id` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mahasiswa` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `npm` bigint(20) NOT NULL,
  `prodi` varchar(200) NOT NULL,
  `no_telp` bigint(20) NOT NULL,
  `nama_usaha` varchar(200) NOT NULL,
  `alamat_usaha` varchar(300) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `semester` varchar(200) NOT NULL,
  `deskripsi` text,
  `status` varchar(12) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `nama`, `npm`, `prodi`, `no_telp`, `nama_usaha`, `alamat_usaha`, `tgl_berdiri`, `semester`, `deskripsi`, `status`, `lat`, `lng`) VALUES
(1, 'Syafiqihidayah', 221066273811, 'Teknik Informatika', 82731237123, 'Soto Padang', 'Nagoya Hill', '2017-06-06', '2', 'Menjual soto papua', 'Mahasiswa', 1.12289, 104.012057),
(2, 'Efrinaldi Saputra', 241077647283, 'Akuntansi', 81188371621, 'Warung Sembako', 'Tiban Kampung 2', '1997-04-30', '7', 'Menjual aneka sembako beras dan lain ', 'Mahasiswa', 1.134844, 103.994622),
(3, 'Rian Hidayat', 191055201063, 'Teknik Informatika', 82288838070, 'BakSOS', 'Perumahan GMP Blok K47', '2023-04-21', '5', 'Menjual Bakso Beku', 'Mahasiswa', 1.1406219796047408, 104.01258424698969),
(4, 'Teuku Raifk', 231911029374, 'Kesehatan dan Keselamatan Kerja', 81128381921, 'Nara Rent', 'Jalan Tenggiri, Citra Buana', '2007-04-03', '5', 'Menyediakan jasa rental ', 'Mahasiswa', 1.1461998634637791, 104.00975183426996);

-- --------------------------------------------------------

--
-- Table structure for table `tb_usaha`
--

CREATE TABLE `tb_usaha` (
  `id_usaha` int(11) NOT NULL,
  `deskripsi` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` enum('Admin','Staff') NOT NULL DEFAULT 'Staff',
  `profil_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`, `level`, `profil_user`) VALUES
(1, 'RIan', '$2y$10$liCAoMcXeroHz3sbeMgXwe.BdzglV04a0Lu3ZhlRNOZrKek5gV0wO', 'Admin', 'rian.jpg'),
(2, 'Staff', '$2y$10$JxW.aip4IWh.TX9chqD05ug.NayIbkIy1Zp5OS4OEyTxzNeQYDqLa', 'Staff', 'staff.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `tb_lok`
--
ALTER TABLE `tb_lok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tb_usaha`
--
ALTER TABLE `tb_usaha`
  ADD PRIMARY KEY (`id_usaha`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_lok`
--
ALTER TABLE `tb_lok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mahasiswa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_usaha`
--
ALTER TABLE `tb_usaha`
  MODIFY `id_usaha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
