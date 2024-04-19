-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2024 pada 09.27
-- Versi server: 11.1.2-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_messenger`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pesan`
--

CREATE TABLE `data_pesan` (
  `id` int(11) NOT NULL,
  `token` int(11) NOT NULL,
  `pengirim` int(11) NOT NULL,
  `penerima` int(11) NOT NULL,
  `pesan` varchar(500) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pesan`
--

INSERT INTO `data_pesan` (`id`, `token`, `pengirim`, `penerima`, `pesan`, `jam`, `tanggal`) VALUES
(1, 1001, 1, 2, 'Pesan Ujicoba 1', '20:41:00', '2024-04-06'),
(2, 1001, 2, 1, 'Pesan Ujicoba 2', '00:05:00', '2024-04-07'),
(3, 1001, 1, 2, 'Halo', '01:28:24', '2024-04-07'),
(4, 1001, 2, 1, 'Yaa?', '00:00:00', '0000-00-00'),
(5, 1001, 1, 2, 'Gabut', '00:00:00', '0000-00-00'),
(6, 1001, 2, 1, 'Ooh Okee', '00:00:00', '0000-00-00'),
(8, 1001, 2, 1, 'Hmm', '04:23:12', '2024-04-07'),
(9, 1001, 1, 2, 'Iy', '00:00:00', '0000-00-00'),
(10, 1001, 1, 2, 'laah', '00:00:00', '0000-00-00'),
(12, 1001, 1, 2, 'Aning ngebug', '00:00:00', '0000-00-00'),
(13, 1001, 2, 1, 'tes', '00:00:00', '0000-00-00'),
(14, 1001, 2, 1, 'aaa', '04:32:26', '2024-04-07'),
(15, 1001, 2, 1, 'laah', '04:32:35', '2024-04-07'),
(16, 1001, 2, 1, 'hmm', '04:32:43', '2024-04-07'),
(17, 1001, 1, 2, 'ghdg', '04:32:59', '2024-04-07'),
(18, 1001, 1, 2, 'horok', '00:00:00', '0000-00-00'),
(19, 1001, 1, 2, 'naah ngebug', '00:00:00', '0000-00-00'),
(20, 1001, 1, 2, 'aaa', '04:33:45', '2024-04-07'),
(21, 1001, 1, 2, 'aaa WTF', '00:00:00', '0000-00-00'),
(22, 1001, 1, 2, 'qdqdq', '04:33:59', '2024-04-07'),
(23, 1001, 1, 2, 'tolol anjg', '00:00:00', '0000-00-00'),
(24, 1001, 1, 2, 'looh', '00:00:00', '0000-00-00'),
(25, 1001, 2, 1, 'aneh anjg', '04:35:05', '2024-04-07'),
(26, 1001, 2, 1, 'what???', '00:00:00', '0000-00-00'),
(27, 1001, 2, 1, 'loh', '00:00:00', '0000-00-00'),
(28, 1001, 2, 1, 'hmm', '04:36:30', '2024-04-07'),
(29, 1001, 2, 1, 'okee', '00:00:00', '0000-00-00'),
(30, 1001, 2, 1, 'ngebug neh kon', '00:00:00', '0000-00-00'),
(31, 1001, 1, 2, 'gerghrsg', '00:00:00', '0000-00-00'),
(32, 1001, 2, 1, 'aloo', '00:00:00', '0000-00-00'),
(33, 1001, 2, 1, 'tes', '19:22:01', '2024-04-07'),
(34, 1001, 2, 1, 'anjay', '19:22:07', '2024-04-07'),
(35, 1001, 2, 1, 'Sukses', '19:22:14', '2024-04-07'),
(36, 1001, 1, 2, 'apaan?', '19:22:36', '2024-04-07'),
(37, 1001, 2, 1, 'gpp', '20:10:37', '2024-04-07'),
(38, 1002, 3, 1, 'oi', '20:38:23', '2024-04-07'),
(39, 1002, 1, 3, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n\r\n', '20:45:51', '2024-04-07'),
(40, 1002, 1, 3, 'tes', '20:54:12', '2024-04-07'),
(41, 1001, 1, 2, 'abc 12345 kjhdahda ksd', '20:57:00', '2024-04-07'),
(42, 1001, 2, 1, 'oi', '20:58:11', '2024-04-07'),
(43, 1001, 1, 2, 'Naon?', '20:58:20', '2024-04-07'),
(44, 1001, 1, 2, 'Gpp', '21:05:56', '2024-04-07'),
(45, 1001, 1, 2, 'P', '18:34:04', '2024-04-12'),
(46, 1001, 1, 2, 'Hhh', '18:36:44', '2024-04-12'),
(47, 1001, 2, 1, 'P', '12:19:09', '2024-04-18'),
(48, 1001, 1, 2, 'Halo', '12:19:17', '2024-04-18'),
(49, 1001, 2, 1, 'Oii', '12:19:33', '2024-04-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `token` int(11) NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`token`, `id_user1`, `id_user2`) VALUES
(1001, 1, 2),
(1002, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `password`, `profil`) VALUES
(1, 'jkp', 'Joko Purnomo', 'password', '01.png\r\n'),
(2, 'tes', 'Beta Tester', 'password', '02.jpg'),
(3, 'jonmek', 'Jhonatan Mecanik', 'password', '03.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user11` (`pengirim`),
  ADD KEY `id_user12` (`penerima`),
  ADD KEY `token` (`token`);

--
-- Indeks untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`token`),
  ADD KEY `id_user21` (`id_user1`),
  ADD KEY `id_user22` (`id_user2`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  ADD CONSTRAINT `id_user11` FOREIGN KEY (`pengirim`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `id_user12` FOREIGN KEY (`penerima`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `token` FOREIGN KEY (`token`) REFERENCES `relasi` (`token`);

--
-- Ketidakleluasaan untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `id_user21` FOREIGN KEY (`id_user1`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `id_user22` FOREIGN KEY (`id_user2`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
