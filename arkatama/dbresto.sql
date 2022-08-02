-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2022 pada 04.50
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbresto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_resto`
--

CREATE TABLE `tbl_resto` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `fasilitas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_resto`
--

INSERT INTO `tbl_resto` (`id`, `nama`, `alamat`, `telp`, `harga`, `fasilitas`) VALUES
(1, 'Bakso Urat Pak Mamad ', 'Jl. Puspanjolo Timur No 37, Pendrikan Kidul, Kota Semarang ', '+628787765090 ', '12000 - 45000 ', 'WiFi '),
(2, 'Martabak Maknyus ', 'Jl. Marlboro No 90, Kota Pekalongan ', '+628009854 ', '25000 - 65000 ', 'WiFi, Toilet '),
(3, 'Ayam Geprek Lombok Ijo ', 'Jl. Pakunegara No 97 ', '+628787765090 ', '8000 - 23000 ', 'Delivery ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_resto`
--
ALTER TABLE `tbl_resto`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
