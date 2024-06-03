-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2024 pada 20.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
  `pesan` text NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pesan`
--

INSERT INTO `data_pesan` (`id`, `token`, `pengirim`, `penerima`, `pesan`, `jam`, `tanggal`) VALUES
(1, 1001, 1, 2, 'p', '20:08:52', '2024-06-03'),
(2, 1001, 1, 2, 'oi', '00:36:38', '2024-06-04'),
(3, 1007, 6, 2, 'oi', '01:45:26', '2024-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `token` int(11) NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `update_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`token`, `id_user1`, `id_user2`, `update_id`) VALUES
(1001, 1, 2, 1),
(1002, 1, 3, 0),
(1006, 2, 3, 3),
(1007, 6, 2, 0);

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
(1, 'jkp', 'Joko Purnomo', '$2y$10$7ZTHWIRQeAhRsoNN0korZen7xrDXbRRVnP3RzagKWc8n1lMpM/0L2', '01.png\r\n'),
(2, 'tes', 'Beta Tester', '$2y$10$op5kgOqpBhhRp/uD9HIKRu0e1soZDpi2xS.hcMKTZBo5NAOG9uqV.', '02.jpg'),
(3, 'jonmek', 'Jhonatan Mecanik', '$2y$10$op5kgOqpBhhRp/uD9HIKRu0e1soZDpi2xS.hcMKTZBo5NAOG9uqV.', '03.png'),
(6, 'asma', 'Asep Maulana', '$2y$10$AmUcemFQgYTY9a3EpON5AOErZcz8ziu0Y1vdO0n0uos7YG0EcgafW', 'STK-20230512-WA0014.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
