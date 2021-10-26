-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2021 pada 15.40
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warung2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(115) NOT NULL,
  `nama_barang` varchar(115) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `harga_beli` varchar(115) NOT NULL,
  `harga_jual` varchar(1115) NOT NULL,
  `harga_jual_satuan` varchar(115) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_jenis`, `harga_beli`, `harga_jual`, `harga_jual_satuan`) VALUES
(9, 'Tropical 1lt', 1, '300.000', '', ''),
(10, 'Bimoli 1lt', 1, '', '', ''),
(12, 'Resto 1lt', 1, '300.000', '', ''),
(13, 'Sania 1lt', 1, '', '', ''),
(14, 'Teh Pucuk', 5, '', '', ''),
(15, 'Le Minerale 600ml', 5, '45.000', '', ''),
(16, 'Golda Coffe', 5, '28.500', '34.000', '3.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` int(11) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `jenis_barang`) VALUES
(1, 'minyak'),
(2, 'sabun'),
(3, 'kopi'),
(4, 'permen'),
(5, 'minuman'),
(6, 'indomie'),
(7, 'jajanan'),
(8, 'plastik'),
(9, 'terigu'),
(10, 'rokok'),
(11, 'Obat'),
(12, 'campuran'),
(13, 'krupuk'),
(14, 'chiki'),
(15, 'pembalut&pamper'),
(16, 'Pembersih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`) VALUES
(1, 'bagas', 'blok G'),
(2, 'dora', 'blok G'),
(3, 'yoyo', 'blok G'),
(4, 'wayan', 'blok F'),
(5, 'nana', 'bawah'),
(23, 'yoyo', 'g'),
(25, 'wayan', 'F');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_pelanggan` int(11) NOT NULL,
  `id_hutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `hutang` varchar(50) NOT NULL,
  `bayar` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_pelanggan`, `id_hutang`, `tanggal`, `keterangan`, `hutang`, `bayar`, `total`) VALUES
(1, 14, '2021-09-15', 'KURANGAN', '50000', '', '50000'),
(2, 15, '2021-09-15', 'ROKOK SAMSU', '20000', '', '20000'),
(2, 16, '2021-09-15', 'kurang banyak', '1000', '', '21000'),
(2, 17, '2021-09-15', 'kurang lagi', '2000', '', '23000'),
(2, 25, '2021-09-15', 'kurang', '10000', '', '33000'),
(1, 26, '2021-09-15', 'belanja banyak HUTANG BANYAK', '500000', '', '550000'),
(1, 28, '2021-09-16', 'bayar setengah', '', '225000', '325000'),
(2, 29, '2021-09-16', 'kurangan rokok', '5000', '', '38000'),
(1, 30, '2021-09-20', 'kurangan', '10000', '', '335000'),
(1, 31, '2021-09-20', '', '', '33500', '301500'),
(1, 32, '2021-09-21', 'kurangan', '10000', '', '311500'),
(1, 33, '2021-09-21', '', '', '311500', '0'),
(23, 34, '2021-10-17', 'susu', '12000', '', '12000'),
(1, 35, '2021-10-17', 'rokok', '25000', '', '25000'),
(1, 36, '2021-10-17', 'setangah', '', '12500', '12500'),
(1, 38, '2021-10-25', '12500', '', '', '12500'),
(1, 39, '2021-10-25', 'bayar', '', '12500', '0');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_hutang`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(115) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_hutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_barang` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
