-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2023 pada 12.25
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `toko` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inv`
--

CREATE TABLE `inv` (
  `invid` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `tgl_inv` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `toko` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `inv`
--

INSERT INTO `inv` (`invid`, `invoice`, `tgl_inv`, `pembayaran`, `kembalian`, `status`, `toko`) VALUES
(56, 'AD2412391101', '2023-01-24 02:12:03', 100000, 95000, 'selesai', 'Apotek Hamada Farma'),
(57, 'AD2412391312', '2023-01-24 02:14:05', 75000, 25000, 'selesai', 'Apotek Hamada Farma'),
(58, 'AD2412391714', '2023-01-24 02:17:59', 75000, 60000, 'selesai', 'amanda_pancing'),
(59, 'AD2412392718', '2023-01-24 02:27:53', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(60, 'AD2412392828', '2023-01-24 02:29:32', 75000, 65000, 'selesai', 'Apotek Hamada Farma'),
(61, 'AD2412393329', '2023-01-24 02:33:22', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(62, 'AD2412393534', '2023-01-24 02:35:07', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(63, 'AD2412393736', '2023-01-24 02:37:23', 10000, 0, 'selesai', 'Apotek Hamada Farma'),
(64, 'AD2412394338', '2023-01-24 02:43:14', 75000, 50000, 'selesai', 'Apotek Hamada Farma'),
(65, 'AD2412394444', '2023-01-24 02:44:55', 75000, 70000, 'selesai', 'Apotek Hamada Farma'),
(66, 'AD2412395045', '2023-01-24 02:50:10', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(67, 'AD2412395051', '2023-01-24 02:50:50', 100000, 45000, 'selesai', 'Apotek Hamada Farma'),
(68, 'AD2412395151', '2023-01-24 02:51:40', 20000, 0, 'selesai', 'Apotek Hamada Farma'),
(69, 'AD2412395852', '2023-01-24 02:58:35', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(70, 'AD2412395959', '2023-01-24 02:59:55', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(71, 'AD24123101560', '2023-01-24 03:15:24', 75000, 40000, 'selesai', 'Apotek Hamada Farma'),
(72, 'AD24123104360', '2023-01-24 03:43:28', 10000, 0, 'selesai', 'Apotek Hamada Farma'),
(73, 'AD24123104460', '2023-01-24 03:44:19', 10000, 5000, 'selesai', 'Apotek Hamada Farma'),
(74, 'AD24123162360', '2023-01-24 09:23:28', 10000, 5000, 'selesai', 'Apotek Hamada Farma'),
(75, 'AD24123163660', '2023-01-24 09:36:36', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(76, 'AD25123105060', '2023-01-25 03:50:32', 10000, 5000, 'selesai', 'Apotek Hamada Farma'),
(77, 'AD25123105106', '2023-01-25 03:52:18', 20000, 5000, 'selesai', 'Apotek Hamada Farma'),
(78, 'AD25123110806', '2023-01-25 04:08:42', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(79, 'AD25123110911', '2023-01-25 04:09:28', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(80, 'AD25123111411', '2023-01-25 04:14:48', 20000, 5000, 'selesai', 'Apotek Hamada Farma'),
(81, 'AD25123111512', '2023-01-25 04:15:17', 20000, 15000, 'selesai', 'Apotek Hamada Farma'),
(82, 'AD25123111612', '2023-01-25 04:16:51', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(83, 'AD25123111912', '2023-01-25 04:19:15', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(84, 'AD25123112012', '2023-01-25 04:20:40', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(85, 'AD25123113913', '2023-01-25 04:39:06', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(86, 'AD25123114114', '2023-01-25 04:41:12', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(87, 'AD25123114215', '2023-01-25 04:42:53', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(88, 'AD25123114715', '2023-01-25 04:47:41', 0, 0, 'proses', 'Apotek Hamada Farma'),
(89, 'AD25123114815', '2023-01-25 04:48:08', 0, 0, 'proses', 'Apotek Hamada Farma'),
(90, 'AD25123121915', '2023-01-25 05:19:06', 10000, 5000, 'selesai', 'Apotek Hamada Farma'),
(91, 'AD25123122522', '2023-01-25 05:25:49', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(92, 'AD25123122723', '2023-01-25 05:27:24', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(93, 'AD25123122723', '2023-01-25 05:27:40', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(94, 'AD25123122823', '2023-01-25 05:28:57', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(95, 'AD25123122823', '2023-01-25 05:28:57', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(96, 'AD25123123123', '2023-01-25 05:31:13', 50000, 0, 'selesai', 'Apotek Hamada Farma'),
(97, 'AD25123123124', '2023-01-25 05:31:52', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(98, 'AD25123123224', '2023-01-25 05:32:28', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(99, 'AD25123123424', '2023-01-25 05:34:11', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(100, 'AD25123123524', '2023-01-25 05:35:17', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(101, 'AD25123123724', '2023-01-25 05:38:01', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(102, 'AD25123123724', '2023-01-25 05:38:01', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(103, 'AD25123123724', '2023-01-25 05:38:01', 50000, 45000, 'selesai', 'Apotek Hamada Farma'),
(104, 'AD25123123824', '2023-01-25 05:38:43', 5000, 0, 'selesai', 'Apotek Hamada Farma'),
(105, 'AD25123123924', '2023-01-25 05:39:39', 50000, 30000, 'selesai', 'Apotek Hamada Farma'),
(106, 'AD25123123924', '2023-01-25 05:39:39', 50000, 30000, 'selesai', 'Apotek Hamada Farma'),
(107, 'AD25123124024', '2023-01-25 05:40:35', 0, 0, 'proses', 'Apotek Hamada Farma'),
(108, 'AD25123124125', '2023-01-25 05:41:14', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(110, 'AD25123124225', '2023-01-25 05:42:38', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(111, 'AD25123125225', '2023-01-25 05:52:01', 0, 0, 'proses', 'Apotek Hamada Farma'),
(112, 'AD25123125426', '2023-01-25 05:54:22', 0, 0, 'proses', 'Apotek Hamada Farma'),
(113, 'AD25123131826', '2023-01-25 06:18:55', 20000, 15000, 'selesai', 'Apotek Hamada Farma'),
(114, 'AD25123131932', '2023-01-25 06:19:19', 50000, 25000, 'selesai', 'Apotek Hamada Farma'),
(115, 'AD25123132032', '2023-01-25 06:20:44', 50000, 35000, 'selesai', 'Apotek Hamada Farma'),
(116, 'AD25123132133', '2023-01-25 06:21:17', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(117, 'AD25123133233', '2023-01-25 06:35:12', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(118, 'AD25123133734', '2023-01-25 06:37:14', 50000, 25000, 'selesai', 'Apotek Hamada Farma'),
(119, 'AD25123133734', '2023-01-25 06:37:24', 0, 0, 'proses', 'Apotek Hamada Farma'),
(120, 'AD25123134034', '2023-01-25 06:40:35', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(121, 'AD25123134135', '2023-01-25 06:41:43', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(122, 'AD25123134135', '2023-01-25 06:41:43', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(123, 'AD25123134235', '2023-01-25 06:42:09', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(124, 'AD25123134335', '2023-01-25 06:43:25', 50000, 25000, 'selesai', 'Apotek Hamada Farma'),
(125, 'AD25123134335', '2023-01-25 06:43:35', 0, 0, 'proses', 'Apotek Hamada Farma'),
(126, 'AD25123134435', '2023-01-25 06:44:42', 0, 0, 'proses', 'Apotek Hamada Farma'),
(127, 'AD25123134635', '2023-01-25 06:46:02', 0, 0, 'proses', 'Apotek Hamada Farma'),
(128, 'AD25123134835', '2023-01-25 06:48:52', 0, 0, 'proses', 'Apotek Hamada Farma'),
(129, 'AD25123135035', '2023-01-25 06:50:00', 0, 0, 'proses', 'Apotek Hamada Farma'),
(130, 'AD25123135036', '2023-01-25 06:50:26', 200000, 0, 'selesai', 'Apotek Hamada Farma'),
(131, 'AD25123135136', '2023-01-25 06:51:31', 50000, 15000, 'selesai', 'Apotek Hamada Farma'),
(132, 'AD25123135436', '2023-01-25 06:54:07', 0, 0, 'proses', 'Apotek Hamada Farma'),
(133, 'AD25123140836', '2023-01-25 07:08:52', 50000, 30000, 'selesai', 'Apotek Hamada Farma'),
(134, 'AD25123140941', '2023-01-25 07:09:49', 50000, 25000, 'selesai', 'Apotek Hamada Farma'),
(135, 'AD25123141141', '2023-01-25 07:11:34', 0, 0, 'proses', 'Apotek Hamada Farma'),
(136, 'AD25123141242', '2023-01-25 07:12:35', 0, 0, 'proses', 'Apotek Hamada Farma'),
(137, 'AD25123141342', '2023-01-25 07:14:07', 20000, 10000, 'selesai', 'Apotek Hamada Farma'),
(138, 'AD25123141442', '2023-01-25 07:14:21', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(139, 'AD25123141542', '2023-01-25 07:15:43', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(140, 'AD25123141642', '2023-01-25 07:17:04', 50000, 20000, 'selesai', 'Apotek Hamada Farma'),
(141, 'AD25123141642', '2023-01-25 07:17:04', 50000, 20000, 'selesai', 'Apotek Hamada Farma'),
(142, 'AD25123141742', '2023-01-25 07:17:40', 50000, 40000, 'selesai', 'Apotek Hamada Farma'),
(143, 'AD25123141842', '2023-01-25 07:18:31', 50000, 30000, 'selesai', 'Apotek Hamada Farma'),
(144, 'AD25123141942', '2023-01-25 07:19:58', 50000, 0, 'selesai', 'Apotek Hamada Farma'),
(145, 'AD25123142042', '2023-01-25 07:20:46', 50000, 0, 'selesai', 'Apotek Hamada Farma'),
(147, 'AD25123143043', '2023-01-25 07:30:58', 50000, 20000, 'selesai', 'Apotek Hamada Farma');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `toko` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`idlaporan`, `invoice`, `kode_produk`, `nama_produk`, `harga`, `harga_modal`, `qty`, `subtotal`, `toko`) VALUES
(8, 'AD2412391312', '123', 'paracetamol', 5000, 2000, 10, 50000, 'Apotek Hamada Farma'),
(9, 'AD2412391714', '11', 'sa', 15000, 5000, 1, 15000, 'amanda_pancing'),
(10, 'AD2412393329', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(11, 'AD2412393534', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(12, 'AD2412393736', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(13, 'AD2412394338', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(14, 'AD2412394444', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(15, 'AD2412395045', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(16, 'AD2412395051', '123', 'paracetamol', 5000, 2000, 11, 55000, 'Apotek Hamada Farma'),
(17, 'AD2412395151', '123', 'paracetamol', 5000, 2000, 4, 20000, 'Apotek Hamada Farma'),
(18, 'AD2412395852', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(19, 'AD2412395959', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(20, 'AD24123101560', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(21, 'AD24123101560', '121', 'dsa', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(23, 'AD24123104360', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(24, 'AD24123104460', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(25, 'AD24123162360', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(26, 'AD24123163660', '121', 'dsa', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(27, 'AD25123105060', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(28, 'AD25123105106', '123', 'paracetamol', 5000, 2000, 3, 15000, 'Apotek Hamada Farma'),
(29, 'AD25123110806', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(30, 'AD25123110911', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(31, 'AD25123111411', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(32, 'AD25123111411', '123', 'paracetamol', 5000, 2000, 3, 15000, 'Apotek Hamada Farma'),
(33, 'AD25123111512', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(34, 'AD25123111612', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(35, 'AD25123111912', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(36, 'AD25123112012', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(37, 'AD25123113913', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(38, 'AD25123114114', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(39, 'AD25123114215', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(40, 'AD25123121915', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(41, 'AD25123122522', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(42, 'AD25123122723', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(43, 'AD25123122723', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(44, 'AD25123122723', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(45, 'AD25123122823', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(46, 'AD25123122823', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(47, 'AD25123122823', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(48, 'AD25123123123', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(49, 'AD25123123123', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(50, 'AD25123123123', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(51, 'AD25123123124', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(52, 'AD25123123224', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(53, 'AD25123123424', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(54, 'AD25123123524', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(55, 'AD25123123724', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(56, 'AD25123123724', '123', 'paracetamol', 5000, 2000, 8, 40000, 'Apotek Hamada Farma'),
(57, 'AD25123123724', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(58, 'AD25123123824', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(59, 'AD25123123924', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(60, 'AD25123123924', '123', 'paracetamol', 5000, 2000, 4, 20000, 'Apotek Hamada Farma'),
(61, 'AD25123124125', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(62, 'AD25123124225', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(63, 'AD25123131826', '123', 'paracetamol', 5000, 2000, 1, 5000, 'Apotek Hamada Farma'),
(64, 'AD25123131932', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(65, 'AD25123132032', '123', 'paracetamol', 5000, 2000, 3, 15000, 'Apotek Hamada Farma'),
(66, 'AD25123132133', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(67, 'AD25123133233', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(68, 'AD25123133734', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(69, 'AD25123134235', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(70, 'AD25123134335', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(71, 'AD25123135036', '123', 'paracetamol', 5000, 2000, 40, 200000, 'Apotek Hamada Farma'),
(72, 'AD25123135136', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(73, 'AD25123135136', '112', 'bodrex', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(75, 'AD25123140836', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(76, 'AD25123140836', '112', 'bodrex', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(78, 'AD25123140941', '123', 'paracetamol', 5000, 2000, 3, 15000, 'Apotek Hamada Farma'),
(79, 'AD25123140941', '112', 'bodrex', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(81, 'AD25123141342', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(82, 'AD25123141442', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(83, 'AD25123141542', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(84, 'AD25123141642', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(85, 'AD25123141642', '123', 'paracetamol', 5000, 2000, 4, 20000, 'Apotek Hamada Farma'),
(86, 'AD25123141642', '112', 'bodrex', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(88, 'AD25123141742', '112', 'bodrex', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(89, 'AD25123141842', '112', 'bodrex', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(90, 'AD25123141842', '123', 'paracetamol', 5000, 2000, 2, 10000, 'Apotek Hamada Farma'),
(92, 'AD25123141942', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(93, 'AD25123141942', '112', 'bodrex', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(95, 'AD25123142042', '123', 'paracetamol', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(96, 'AD25123142042', '112', 'bodrex', 5000, 2000, 5, 25000, 'Apotek Hamada Farma'),
(98, 'AD25123143043', '123', 'paracetamol', 5000, 2000, 6, 30000, 'Apotek Hamada Farma');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `toko`, `alamat`, `telepon`, `logo`, `level`, `role`) VALUES
(1, 'kasir', '$2y$10$WaF091Ie8vpEudi5alKe3e/vjl90dlIaBw/fZphnbxIkUASszG4nu', 'Apotek Hamada Farma', ' Jl. Mistar Cokrokusumo Komp PU RT 015/Rw 003 Kel. Sungai Besar', '082159189645', 'user.png', '3', 'Kasir'),
(5, 'admin_toko', '$2y$10$WaF091Ie8vpEudi5alKe3e/vjl90dlIaBw/fZphnbxIkUASszG4nu', 'Apotek Hamada Farma', ' Jl. Mistar Cokrokusumo Komp PU RT 015/Rw 003 Kel. Sungai Besar', '082159189645', 'user.png', '2', 'Admin Toko'),
(6, 'su', '$2y$10$WaF091Ie8vpEudi5alKe3e/vjl90dlIaBw/fZphnbxIkUASszG4nu', 'Meditec', '', '', 'user.png', '1', 'Super User'),
(7, 'dana', '$2y$10$t//qfE1s3W.sWC4i555pMeSmSPHkxwWpR5OVD.Xd8GLPbOJVXrlEK', 'amanda_pancing', 'Jl. Karamunting No.40', '081252170696', '', '2', 'Admin Toko'),
(8, 'dana1', '$2y$10$LWgTnnmDwHbifqYg9ywsg.Iu6734ZKbK.ofd/9m3QYXpOMc1zID3u', 'amanda_pancing', 'Jl. Karamunting No.40', '081252170696', '', '3', 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `stok` varchar(255) NOT NULL,
  `toko` varchar(255) NOT NULL,
  `id_suplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `kode_produk`, `nama_produk`, `harga_modal`, `harga_jual`, `tgl_input`, `tgl_kadaluarsa`, `stok`, `toko`, `id_suplier`) VALUES
(1, '123', 'paracetamol', 2000, 5000, '2023-01-24', '2023-06-09', '5', 'Apotek Hamada Farma', 0),
(2, '1234', 'Bodrex', 2100, 5000, '2023-01-26', '2023-01-31', '5', '12', 0),
(3, '121', 'dsa', 2000, 5000, '2023-01-24', '2023-02-11', '2', 'Apotek Hamada Farma', 0),
(4, '11', 'sa', 5000, 15000, '2023-01-24', '2023-01-24', '2', 'amanda_pancing', 0),
(5, '112', 'bodrex', 2000, 5000, '2023-01-24', '2023-02-10', '5', 'Apotek Hamada Farma', 0),
(7, '123', 'saads', 23000, 50000, '2023-01-24', '2023-02-11', '9', 'amanda_pancing', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`);

--
-- Indeks untuk tabel `inv`
--
ALTER TABLE `inv`
  ADD PRIMARY KEY (`invid`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `id_suplier` (`id_suplier`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `inv`
--
ALTER TABLE `inv`
  MODIFY `invid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
