-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Mei 2019 pada 09.06
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembeli`
--

CREATE TABLE IF NOT EXISTS `data_pembeli` (
  `id_customer` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `bayar` int(255) NOT NULL,
  `kembalian` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembeli`
--

INSERT INTO `data_pembeli` (`id_customer`, `nama`, `kontak`, `tanggal`, `total`, `bayar`, `kembalian`) VALUES
('001', 'pembeli1', '0888888', '12/12/2018', '300000', 350000, 50000),
('002', 'pembeli2', '021554', '12/1/2019', '400000', 500000, -100000),
('003', 'siapaaja2', '0515454', '12/12/2018', '350000', 400000, 50000),
('004', 'cust3', '0514545', '12/12/2018', '300000', 400000, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penjualan`
--

CREATE TABLE IF NOT EXISTS `data_penjualan` (
  `id_barang` int(11) NOT NULL,
  `id_customer` varchar(20) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `jumlah` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penjualan`
--

INSERT INTO `data_penjualan` (`id_barang`, `id_customer`, `nama_barang`, `harga`, `qty`, `jumlah`) VALUES
(1, '001', 'handuk', 20000, 2, 40000),
(3, '001', 'sarung', 20000, 2, 40000),
(4, '001', 'bantal', 10000, 3, 30000),
(7, '002', 'sepatu', 100000, 1, 100000),
(8, '002', 'tas', 150000, 2, 300000),
(9, '003', 'sepatu', 50000, 3, 150000),
(10, '003', 'tas', 100000, 2, 200000),
(11, '004', 'kursi', 50000, 3, 150000),
(12, '004', 'meja', 50000, 3, 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
