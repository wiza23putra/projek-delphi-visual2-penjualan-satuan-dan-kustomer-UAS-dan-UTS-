-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 04:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID` int(8) NOT NULL,
  `BARCODE` int(20) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `HARGA_JUAL` bigint(20) DEFAULT NULL,
  `HARGA_BELI` bigint(20) DEFAULT NULL,
  `STOK` int(10) DEFAULT NULL,
  `kategori_id` int(8) DEFAULT NULL,
  `satuan_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID`, `BARCODE`, `NAME`, `HARGA_JUAL`, `HARGA_BELI`, `STOK`, `kategori_id`, `satuan_id`, `user_id`, `supplier_id`) VALUES
(1, 2147483647, 'Product A', 50000, 30000, 100, 1, 1, 1, 1),
(2, 2147483647, 'Product B', 75000, 45000, 80, 2, 2, 2, 2),
(3, 2147483647, 'Product C', 100000, 60000, 120, 3, 3, 3, 3),
(4, 2147483647, 'Product D', 25000, 15000, 150, 4, 4, 4, 4),
(5, 2147483647, 'Product E', 30000, 18000, 200, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_beli`
--

CREATE TABLE `detail_beli` (
  `id` int(8) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `pembelian_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `harga`, `qty`, `subtotal`, `pembelian_id`, `barang_id`) VALUES
(1, 30000, 5, 150000, 1, 1),
(2, 45000, 3, 135000, 2, 2),
(3, 60000, 2, 120000, 3, 3),
(4, 15000, 6, 90000, 4, 4),
(5, 18000, 4, 72000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(8) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `penjualan_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `harga`, `qty`, `subtotal`, `penjualan_id`, `barang_id`) VALUES
(1, 50000, 2, 100000, 1, 1),
(2, 75000, 1, 75000, 2, 2),
(3, 100000, 3, 300000, 3, 3),
(4, 25000, 4, 100000, 4, 4),
(5, 30000, 2, 60000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(8) NOT NULL,
  `name` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Furniture'),
(4, 'Groceries'),
(5, 'Books'),
(6, 'Meja'),
(8, 'kuda'),
(9, 'tst');

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `ID` int(8) NOT NULL,
  `NIK` int(16) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ALAMAT` varchar(155) DEFAULT NULL,
  `TELP` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `member` enum('yes, no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`ID`, `NIK`, `NAME`, `ALAMAT`, `TELP`, `EMAIL`, `member`) VALUES
(1, 2147483647, 'Customer A', '123 Customer Street, Customer City', '123-456-7890', 'customerA@example.com', 'yes, no'),
(2, 2147483647, 'Customer B', '456 Customer Road, Customer Town', '987-654-3210', 'customerB@example.com', 'yes, no'),
(3, 2147483647, 'Customer C', '789 Customer Avenue, Customer Village', '567-890-1234', 'customerC@example.com', 'yes, no'),
(4, 2147483647, 'Customer D', '987 Customer Lane, Customer Hamlet', '432-109-8765', 'customerD@example.com', 'yes, no'),
(5, 2147483647, 'Customer E', '654 Customer Drive, Customer Borough', '901-234-5678', 'customerE@example.com', 'yes, no'),
(6, 12234558, 'wiza', 'hksn', '087875642', 'wiza@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(8) NOT NULL,
  `invoice` int(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(11) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `invoice`, `total`, `bayar`, `deskripsi`, `tanggal`, `supplier_id`, `user_id`) VALUES
(1, 123456789, 250000, 300000, 'Purchase of goods', '2024-04-27', 1, 1),
(2, 987654321, 150000, 200000, 'Purchase of supplies', '2024-04-27', 2, 2),
(3, 567890123, 300000, 350000, 'Purchase of equipment', '2024-04-27', 3, 3),
(4, 432109876, 200000, 250000, 'Purchase of materials', '2024-04-27', 4, 4),
(5, 901234567, 180000, 200000, 'Purchase of inventory', '2024-04-27', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(8) NOT NULL,
  `invoice` int(20) DEFAULT NULL,
  `total` bigint(200) DEFAULT NULL,
  `bayar` bigint(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kustomer_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `invoice`, `total`, `bayar`, `kembali`, `tanggal`, `kustomer_id`, `user_id`) VALUES
(1, 123456789, 250000, 300000, 50000, '2024-04-27', 1, 1),
(2, 987654321, 150000, 200000, 50000, '2024-04-27', 2, 2),
(3, 567890123, 300000, 350000, 50000, '2024-04-27', 3, 3),
(4, 432109876, 200000, 250000, 50000, '2024-04-27', 4, 4),
(5, 901234567, 180000, 200000, 20000, '2024-04-27', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(8) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `name`, `deskripsi`) VALUES
(1, 'Piece', 'Single unit'),
(2, 'Box', 'Container for multiple units'),
(3, 'Kilogram', 'Measurement of weight'),
(4, 'Liter', 'Measurement of volume'),
(5, 'Meter', 'Measurement of length'),
(6, 'tst', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID` int(8) NOT NULL,
  `NIK` int(16) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `TELP` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(155) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PERUSAHAAN` varchar(100) DEFAULT NULL,
  `NAMA_BANK` varchar(100) DEFAULT NULL,
  `AKUN_BANK` varchar(100) DEFAULT NULL,
  `NO_AKUN_BANK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID`, `NIK`, `NAME`, `TELP`, `ALAMAT`, `EMAIL`, `PERUSAHAAN`, `NAMA_BANK`, `AKUN_BANK`, `NO_AKUN_BANK`) VALUES
(1, 2147483647, 'Supplier A', '123-456-7890', '123 Supplier Street, Supplier City', 'supplierA@example.com', 'Supplier A Company', 'Bank A', '12345678', '1234567890'),
(2, 2147483647, 'Supplier B', '987-654-3210', '456 Supplier Road, Supplier Town', 'supplierB@example.com', 'Supplier B Company', 'Bank B', '98765432', '9876543210'),
(3, 2147483647, 'Supplier C', '567-890-1234', '789 Supplier Avenue, Supplier Village', 'supplierC@example.com', 'Supplier C Company', 'Bank C', '56789012', '5678901234'),
(4, 2147483647, 'Supplier D', '432-109-8765', '987 Supplier Lane, Supplier Hamlet', 'supplierD@example.com', 'Supplier D Company', 'Bank D', '43210987', '4321098765'),
(5, 2147483647, 'Supplier E', '901-234-5678', '654 Supplier Drive, Supplier Borough', 'supplierE@example.com', 'Supplier E Company', 'Bank E', '90123456', '9012345678');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(8) NOT NULL,
  `NIK` int(16) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `FULL_NAME` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ROLE` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(155) DEFAULT NULL,
  `IS_ACTIVE` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NIK`, `USERNAME`, `FULL_NAME`, `PASSWORD`, `ROLE`, `EMAIL`, `ADDRESS`, `IS_ACTIVE`) VALUES
(1, 2120010495, 'Wiza', 'Wiza Pramana Putra', 'wiza1234', 'Admin', 'wiza.pramana.putra@gmail.com', 'Jalan HKSN', 'Active'),
(2, 2147483647, 'john_doe', 'John Doe', 'password123', 'Admin', 'john.doe@example.com', '123 Main Street, Cityville', 'Active'),
(3, 2147483647, 'jane_smith', 'Jane Smith', 'password456', 'User', 'jane.smith@example.com', '456 Elm Street, Townsville', 'Active'),
(4, 2147483647, 'bob_jones', 'Bob Jones', 'password789', 'User', 'bob.jones@example.com', '789 Oak Street, Villageton', 'Active'),
(5, 2147483647, 'sara_williams', 'Sara Williams', 'passwordabc', 'User', 'sara.williams@example.com', '987 Maple Street, Hamletville', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_kategori` (`kategori_id`),
  ADD KEY `fk_satuan` (`satuan_id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_supplier` (`supplier_id`);

--
-- Indexes for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian` (`pembelian_id`),
  ADD KEY `fk_barang_pembelian` (`barang_id`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penjualan` (`penjualan_id`),
  ADD KEY `fk_barang` (`barang_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_pembelian` (`supplier_id`),
  ADD KEY `fk_user_pembelian` (`user_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kustomer` (`kustomer_id`),
  ADD KEY `fk_user_penjualan` (`user_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_beli`
--
ALTER TABLE `detail_beli`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_satuan` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`ID`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);

--
-- Constraints for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `fk_barang_pembelian` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`ID`),
  ADD CONSTRAINT `fk_pembelian` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelian` (`id`);

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `fk_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`ID`),
  ADD CONSTRAINT `fk_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_supplier_pembelian` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`ID`),
  ADD CONSTRAINT `fk_user_pembelian` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_kustomer` FOREIGN KEY (`kustomer_id`) REFERENCES `kustomer` (`ID`),
  ADD CONSTRAINT `fk_user_penjualan` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
