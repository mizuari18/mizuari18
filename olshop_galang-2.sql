-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2024 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop_galang`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tanggal lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `email`, `password`, `tanggal lahir`, `alamat`, `kodepos`) VALUES
(1, 'Andi', 'andi@email.com', 'andi', '1971-02-19', 'jakarta', 1919),
(2, 'Asih', 'asih@email.com', 'asih', '1973-05-02', 'padang', 1111),
(3, 'Budi', 'budi@email.com', 'budi', '1975-06-29', 'padang', 1111),
(4, 'Ari', 'ari@email.com', 'ari', '1977-10-04', 'pekanbaru', 1432),
(6, 'Hesdey', 'hesdey@email.com', 'hesdey', '1988-12-16', 'depok', 1567);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `img url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `sku`, `stok`, `harga_satuan`, `img url`) VALUES
(1, 'Produk satu', 'PRD023', 10, 1000, '../assets/image/product/prd023'),
(2, 'Produk dua', 'PRD024', 15, 3000, '../assets/image/product/prd024'),
(3, 'Produk tiga', 'PRD025', 100, 11000, '../assets/image/product/prd025'),
(4, 'Produk empat', 'PRD026', 5, 45000, '../assets/image/product/prd026'),
(5, 'Produk lima', 'PRD027', 50, 7000, '../assets/image/product/prd027');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
