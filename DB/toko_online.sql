-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 03:52 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nm_admin` varchar(70) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nm_admin`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(2, 'Sepatu Adidas', 'Sepatu Adidas Running Sport', 'Peralatan Olahraga', 7000000, 16, 'olahraga.jpg'),
(5, 'Samsung Galaxy S10', 'Samsung Galaxy S10', 'Elektronik', 11500000, 16, 'samsung.jpg'),
(6, 'Sweeter Pria', 'Sweeter Pull Bear', 'Pakaian Pria', 350000, 8, 'sweeter.jpg'),
(7, 'Sweeter Wanita', 'Sweeter Wanita', 'Pakaian Wanita', 240000, 2, 'sweetcewe.jpg'),
(10, 'Jam Tangan Pria', 'Jam Tangan Tali Kulit', 'Pakaian Pria', 8700000, 10, 'jam1.jpg'),
(11, 'leptop', 'leptop', 'Elektronik', 8700000, 18, 'leptop11.jpg'),
(12, 'Sepatu Futsal Adidas', 'Sepatu Futsal Adidas', 'Peralatan Olahraga', 350000, 10, 'Sepatu_Futsal_Adidas1.jpg'),
(13, 'Sepatu Bola Adidas', 'Sepatu Bola Adidas Messi', 'Peralatan Olahraga', 1500000, 5, 'Sepatu_Bola_Adidas1.jpg'),
(14, 'TV OLED Samsung', 'TV OLED Samsung', 'Elektronik', 10500000, 20, 'tvsamsung1.jpg'),
(16, 'TV Tabung', 'TV Tabung 26 Inc', 'Elektronik', 750000, 100, 'tvtabung1.jpg'),
(17, 'Mesin Cuci Sharp', 'Mesin Cuci Sharp', 'Elektronik', 1500000, 20, 'cucisharp1.jpg'),
(18, 'HP Nokia 105', 'HP Nokia 105', 'Elektronik', 350000, 50, 'hpnokia1051.jpg'),
(19, 'Sepatu Running Adidas', 'Sepatu Running Adidas', 'Peralatan Olahraga', 7500000, 10, 'sepatu1.jpg'),
(20, 'T-Shirt Eiger', 'T-Shirt Eiger', 'Pakaian Pria', 125000, 5, 'kaose1.jpg'),
(21, 'T-shirt Eiger Hitam', 'T-shirt Eiger Hitam', 'Pakaian Pria', 120000, 5, 'kaoseiger1.jpg'),
(22, 'Consina Outdoor T-Shirt', 'Consina Outdoor T-Shirt', 'Pakaian Pria', 150000, 5, 'consina1.jpg'),
(23, 'Celana Jeans', 'Jeans Levis', 'Pakaian Pria', 276000, 10, 'jeans1.jpg'),
(24, 'Jeans Biru', 'Jeans Levis', 'Pakaian Pria', 750000, 10, 'jeansbiru1.jpg'),
(25, 'Celana Chino', 'celana Panjang', 'Pakaian Pria', 276000, 50, 'celana1.jpg'),
(26, 'Bola Adidas Fifa World Cup 2018', 'Bola', 'Peralatan Olahraga', 1500000, 50, 'adidasbola1.jpg'),
(27, 'Baju Muslim Wanita', 'Baju Muslim Wanita', 'Pakaian Wanita', 350000, 10, 'muslim1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(3, 'Junaedi', 'Tempuran', '2019-06-17 07:36:57', '2019-06-18 07:36:57'),
(4, 'Ahmad Maulid Ridwan b', 'Tempuran', '2019-06-17 07:38:39', '2019-06-18 07:38:39'),
(5, 'Junaedi', 'Tempuran', '2019-06-17 09:38:00', '2019-06-18 09:38:00'),
(29, 'Junaedi', 'Tempuran', '2019-06-20 20:34:24', '2019-06-21 20:34:24'),
(30, 'Junaedi', 'Tempuran', '2019-06-20 20:47:05', '2019-06-21 20:47:05'),
(31, 'Junaedi', 'Tempuran', '2019-06-20 20:51:16', '2019-06-21 20:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(17, 29, 7, 'Sweeter Wanita', 2, 240000, ''),
(18, 30, 2, 'Sepatu Adidas', 1, 7000000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123456', 1),
(2, 'user', 'user', '654321', 2),
(3, 'Ahmad Maulid Ridwan', 'amaulid65', '123456789', 2),
(4, 'Aldi M', 'aldi', '12345', 2),
(5, 'steady', 'steady', '12345678', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
