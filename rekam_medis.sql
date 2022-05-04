-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2022 pada 20.19
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekam_medis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `nip` char(18) NOT NULL,
  `namaDokter` varchar(128) NOT NULL,
  `spesialis` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `noTelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`nip`, `namaDokter`, `spesialis`, `email`, `noTelp`, `alamat`) VALUES
('196401181990102001', 'Sudarti, Sp.M.', 'Umum', 'sudarti.d@gmail.com', '081293719812', 'Bojong Parung'),
('197108282006041016', 'Iman Nugroho, M.Kes, Sp.P', 'Kesehatan', 'imannugroho@gmail.com', '082218890911', 'Bogor Barat'),
('197828179876883421', 'Kirisu Mafuyu', 'Kecantikan', 'mafuyu.kirisu@gmail.com', '082298190919', 'Laladon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `idObat` int(11) NOT NULL,
  `namaObat` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`idObat`, `namaObat`, `harga`, `keterangan`) VALUES
(5, 'Enervon C', 7000, 'Suplemen untuk membantu menjaga daya tahan tubuh.'),
(6, 'Betadine', 5000, 'Mencegah dan mengobati infeksi'),
(7, 'Benzalkonium Chloride', 15000, 'Menghambat dan membunuh pertumbuhan mikroorganisme'),
(8, 'Counterpain', 3000, 'Meredakan nyeri otot dan nyeri sendi'),
(9, 'Paracetamol', 4000, 'Meredakan rasa sakit dan demam'),
(10, 'Promag', 8000, 'Obat untuk sakit maag'),
(11, 'Kalpanax', 5000, 'Mengatasi jamur kulit, seperti panu, kutu air, dan kurap.'),
(12, 'Voltaren', 9000, 'Meredakan nyeri dan peradangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` int(11) NOT NULL,
  `namaPasien` varchar(128) NOT NULL,
  `jenisKelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(128) NOT NULL,
  `noTelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`idPasien`, `namaPasien`, `jenisKelamin`, `email`, `noTelp`, `alamat`) VALUES
(5, 'Oreki Houtarou', 'Laki-laki', 'houtarou.oreki@yahoo.co.jp', '085678987652', 'Pancasan Timur'),
(6, 'Chitanda Eru', 'Perempuan', 'eru.chitanda@gmail.com', '085678987652', 'Ciapus Encount'),
(7, 'Shinomiya Kaguya', 'Perempuan', 'kaguya.shinomiya@gmail.com', '082288772269', 'Jakarta Barat'),
(8, 'Midoriya Izuku', 'Laki-laki', 'deku@gmail.com', '089817297121', 'Ciomas'),
(11, 'Saitama', 'Laki-laki', 'saitama@gmail.com', '087162716716', 'Pancasan Barat'),
(12, 'Catrine', 'Perempuan', 'cat@gma.co', '0', 'Konoha'),
(13, 'nurdin', 'Laki-laki', 'Nurdi@gmail.co', '0', 'sunagakure'),
(14, 'Sasuke', 'Laki-laki', 'sad@assad.asdas', '0', 'konoha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliklinik`
--

CREATE TABLE `poliklinik` (
  `idPoliklinik` int(11) NOT NULL,
  `namaPoliklinik` varchar(128) NOT NULL,
  `gedung` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `poliklinik`
--

INSERT INTO `poliklinik` (`idPoliklinik`, `namaPoliklinik`, `gedung`) VALUES
(9, 'Poli Kebidanan dan Penyakit Kandungan', 'Lt. 2'),
(10, 'Poli Anak', 'Lt. 2'),
(11, 'Poli Penyakit Dalam', 'Lt. 2'),
(12, 'Poli Mata', 'Lt. 3'),
(13, 'Poli Psikologi', 'Lt. 3'),
(14, 'Poli Lansia', 'Lt. 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `idRekamMedis` char(15) NOT NULL,
  `pasienId` int(11) NOT NULL,
  `dokterNip` char(18) NOT NULL,
  `poliklinikId` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `diagnosa` text NOT NULL,
  `tglPeriksa` date NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rm_obat`
--

CREATE TABLE `rm_obat` (
  `idRekamMedis` char(15) NOT NULL,
  `idObat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `fullName` varchar(128) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `fullName`, `username`, `password`, `role_id`, `is_active`) VALUES
(1, 'Super Admin', 'admin', '$2y$10$KkmUDHPN0UsOpANFCTMUsOO0s8s1.xUUJtJhO9lnK.mcMrCYIQz.q', 1, 1),
(13, 'Joko', 'joko', '$2y$10$MjHgy0J/Ca8fBMxdOjF0SexCXahd1DNJ1fJCZBwR7znbD6HeJNWYi', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(6, 1, 6),
(7, 2, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(6, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'nav-icon fas fa-tachometer-alt', 0),
(2, 6, 'Pasien', 'user', 'fas fa-user-injured nav-icon', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`idObat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indeks untuk tabel `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`idPoliklinik`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`idRekamMedis`),
  ADD KEY `userId` (`userId`),
  ADD KEY `pasienId` (`pasienId`,`dokterNip`,`poliklinikId`),
  ADD KEY `rekam_medis_ibfk_3` (`poliklinikId`),
  ADD KEY `rekam_medis_ibfk_2` (`dokterNip`);

--
-- Indeks untuk tabel `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD KEY `idRekamMedis` (`idRekamMedis`),
  ADD KEY `rm_obat_ibfk_2` (`idObat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `idPoliklinik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_1` FOREIGN KEY (`pasienId`) REFERENCES `pasien` (`idPasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`dokterNip`) REFERENCES `dokter` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_3` FOREIGN KEY (`poliklinikId`) REFERENCES `poliklinik` (`idPoliklinik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medis_ibfk_4` FOREIGN KEY (`userId`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rm_obat`
--
ALTER TABLE `rm_obat`
  ADD CONSTRAINT `rm_obat_ibfk_1` FOREIGN KEY (`idRekamMedis`) REFERENCES `rekam_medis` (`idRekamMedis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm_obat_ibfk_2` FOREIGN KEY (`idObat`) REFERENCES `obat` (`idObat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
