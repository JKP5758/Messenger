-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2024 pada 13.20
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
(1001, 1, 2, 0),
(1002, 1, 3, 0),
(1006, 2, 3, 3);

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
(1, 'jkp', 'Joko Purnomo', 'admin_192.168.43.1', '01.png\r\n'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

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
