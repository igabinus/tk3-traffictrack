-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2024 pada 00.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffictrack`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `airpollution`
--

CREATE TABLE `airpollution` (
  `idArea` varchar(255) NOT NULL,
  `areaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `airpollution`
--

INSERT INTO `airpollution` (`idArea`, `areaname`) VALUES
('66258eef08ac61.72148041', 'Jakarta'),
('66258ef0947f79.17063244', 'Bandung'),
('66258eff36ced3.85625784', 'Surabaya'),
('66258f00708ae8.61865116', 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `airpollution_history`
--

CREATE TABLE `airpollution_history` (
  `idHistory` varchar(255) NOT NULL,
  `idArea` varchar(255) NOT NULL,
  `value` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `airpollution_history`
--

INSERT INTO `airpollution_history` (`idHistory`, `idArea`, `value`, `created_at`) VALUES
('66258f74d6a089.51707003', '66258eef08ac61.72148041', 80, '2024-04-22 01:13:08'),
('66258fa2c67ca4.78569577', '66258ef0947f79.17063244', 37, '2024-04-22 05:13:54'),
('66258fbfc22b86.10291399', '66258eff36ced3.85625784', 50, '2024-04-22 05:14:23'),
('66258fe4123fd4.41534587', '66258f00708ae8.61865116', 37, '2024-04-22 05:15:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cctv`
--

CREATE TABLE `cctv` (
  `idCctv` varchar(255) NOT NULL,
  `areaname` varchar(255) NOT NULL,
  `name_cam` varchar(255) NOT NULL,
  `ip_cam` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cctv`
--

INSERT INTO `cctv` (`idCctv`, `areaname`, `name_cam`, `ip_cam`, `status`) VALUES
('662593de68c404.54966483', 'Cawang', 'Jalan Abc', 'http://202.98.163.12/stream123', 'Online'),
('662593eb7eb910.76455265', 'Kemayoran', 'Jalan xyz', 'http://103.59.11.80/stream456', 'Online'),
('662593ec6f31e7.03413755', 'Sunter', 'Jalan hji', 'http://119.19.248.9/stream142', 'Online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` varchar(225) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `fullname`, `username`, `email`, `phone`, `password`) VALUES
('user_6624ecfe8aa268.80161952', 'iga', 'igasd', 'iga@das.sdsd', '08988925617', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'),
('user_66253f2691dbc9.26170142', 'Wahyu Agung Maulana', 'wahyu.a', 'wahyu.maulana@binus.ac.id', '6281384351846', '8fe4bf14aa1c752e08d8c2ba276cc143d2b42a6c58d7a4bac5ff56411e69c706');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `airpollution`
--
ALTER TABLE `airpollution`
  ADD PRIMARY KEY (`idArea`);

--
-- Indeks untuk tabel `airpollution_history`
--
ALTER TABLE `airpollution_history`
  ADD PRIMARY KEY (`idHistory`);

--
-- Indeks untuk tabel `cctv`
--
ALTER TABLE `cctv`
  ADD PRIMARY KEY (`idCctv`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
