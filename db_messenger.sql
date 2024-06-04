-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.infinityfree.com
-- Waktu pembuatan: 04 Jun 2024 pada 06.57
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_36664654_db_messenger`
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
  `pesan` text NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pesan`
--

INSERT INTO `data_pesan` (`id`, `token`, `pengirim`, `penerima`, `pesan`, `jam`, `tanggal`) VALUES
(1, 1001, 1, 2, 'p', '20:08:52', '2024-06-03'),
(2, 1001, 1, 2, 'oi', '00:36:38', '2024-06-04'),
(7, 1001, 2, 1, 'hi', '10:18:54', '2024-06-04'),
(8, 1009, 3, 6, 'oi', '12:55:46', '2024-06-04'),
(9, 1010, 8, 6, 'Cek', '13:07:49', '2024-06-04'),
(10, 1010, 8, 6, '', '00:00:00', '0000-00-00'),
(11, 1010, 6, 8, 'naon?', '13:37:43', '2024-06-04'),
(12, 1001, 1, 2, 'okee', '13:38:30', '2024-06-04'),
(13, 1011, 9, 3, 'Test bang', '00:00:00', '0000-00-00'),
(14, 1011, 9, 3, 'Gapapa\r\nHosting gratis \r\nYang penting full akses, lemot dikit ga ngaruh :v', '14:04:54', '2024-06-04'),
(15, 1011, 3, 9, 'Yoi', '14:07:33', '2024-06-04'),
(16, 1011, 3, 9, 'Ada yang error gak bang?', '14:07:50', '2024-06-04'),
(17, 1001, 2, 1, '6363', '13:57:34', '2024-06-04'),
(18, 1001, 2, 1, '', '00:00:00', '0000-00-00'),
(19, 1001, 2, 1, '+954984984', '13:57:40', '2024-06-04'),
(20, 1001, 2, 1, 'jjjj', '13:57:48', '2024-06-04'),
(21, 1013, 10, 1, 'Halo bang', '17:47:07', '2024-06-04'),
(22, 1013, 1, 10, 'bacot', '17:47:23', '2024-06-04'),
(23, 1013, 10, 1, 'Halah kintilðŸ˜‚', '17:47:35', '2024-06-04'),
(24, 1013, 10, 1, 'Mana fitur stikernya', '17:47:46', '2024-06-04'),
(25, 1013, 1, 10, 'gak ada wak', '17:48:02', '2024-06-04'),
(26, 1013, 1, 10, 'susah', '17:48:14', '2024-06-04'),
(27, 1013, 10, 1, 'Tapi keren cuk,cuman keganggu sama loading', '17:48:39', '2024-06-04'),
(28, 1013, 1, 10, 'ooh', '17:49:00', '2024-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `token` int(11) NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `update_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`token`, `id_user1`, `id_user2`, `update_id`) VALUES
(1001, 1, 2, 0),
(1002, 1, 3, 0),
(1009, 3, 6, 3),
(1010, 8, 6, 6),
(1011, 9, 3, 3),
(1013, 10, 1, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `password`, `profil`) VALUES
(1, 'jkp', 'Joko Purnomo', '$2y$10$7ZTHWIRQeAhRsoNN0korZen7xrDXbRRVnP3RzagKWc8n1lMpM/0L2', '01.png\r\n'),
(2, 'tes', 'Beta Tester', '$2y$10$op5kgOqpBhhRp/uD9HIKRu0e1soZDpi2xS.hcMKTZBo5NAOG9uqV.', '02.jpg'),
(3, 'jonmek', 'Jhonatan Mecanik', '$2y$10$op5kgOqpBhhRp/uD9HIKRu0e1soZDpi2xS.hcMKTZBo5NAOG9uqV.', '03.png'),
(6, 'asma', 'Asep Maulana', '$2y$10$AmUcemFQgYTY9a3EpON5AOErZcz8ziu0Y1vdO0n0uos7YG0EcgafW', 'STK-20230512-WA0014.png'),
(7, 'kamal_jir', 'kamal bg', '$2y$10$7RCbouXKhhI.70xwflNRHeXtbLrfUx23hebgdKZeI/5D/RyqxqJKO', 'sadadfasfas.jpeg'),
(8, 'bambang', 'bambang', '$2y$10$8gSZFF5wUXuVYGv3babRYe1zN/zjT3OHZ2quj9AlYXaHOgETt7xX2', 'jhkgafwif.jpeg'),
(9, 'raakun', 'Raakun', '$2y$10$yQAg6IKL9AxlXElOkH0RceeggwiEtA.2NUz9sLFG9fpghyMZEQLCW', 'kjehwrowjo.jpeg'),
(10, 'anak_teladan', 'atsman', '$2y$10$b7Upxs2nq880R0w7GbGSy.aZTJ7Gdq9yyspGHRnoQTP.cxZd.uUdS', 'kwegaiuf.jpeg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  ADD CONSTRAINT `id_user11` FOREIGN KEY (`pengirim`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_user12` FOREIGN KEY (`penerima`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `token` FOREIGN KEY (`token`) REFERENCES `relasi` (`token`) ON DELETE CASCADE ON UPDATE CASCADE;

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
