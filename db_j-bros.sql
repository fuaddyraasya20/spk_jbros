-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2021 pada 21.39
-- Versi Server: 5.6.11
-- Versi PHP: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_j-bros`
--
CREATE DATABASE IF NOT EXISTS `db_j-bros` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `db_j-bros`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bobot`
--

CREATE TABLE IF NOT EXISTS `tb_bobot` (
  `c1` decimal(2,2) NOT NULL,
  `c2` decimal(2,2) NOT NULL,
  `c3` decimal(2,2) NOT NULL,
  `c4` decimal(2,2) NOT NULL,
  `c5` decimal(2,2) NOT NULL,
  `c6` decimal(2,2) NOT NULL,
  `c7` decimal(2,2) NOT NULL,
  `c8` decimal(2,2) NOT NULL,
  `c9` decimal(2,2) NOT NULL,
  `c10` decimal(2,2) NOT NULL,
  `c11` decimal(2,2) NOT NULL,
  `c12` decimal(2,2) NOT NULL,
  `c13` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_bobot`
--

INSERT INTO `tb_bobot` (`c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`) VALUES
('0.05', '0.12', '0.12', '0.12', '0.12', '0.05', '0.05', '0.05', '0.12', '0.05', '0.05', '0.05', '0.05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_ram`
--

CREATE TABLE IF NOT EXISTS `tb_jenis_ram` (
  `id_jenis_ram` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_jenis_ram` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_jenis_ram` int(5) NOT NULL,
  PRIMARY KEY (`id_jenis_ram`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_jenis_ram`
--

INSERT INTO `tb_jenis_ram` (`id_jenis_ram`, `nm_jenis_ram`, `nilai_jenis_ram`) VALUES
('R001', 'DDR1', 25),
('R002', 'DDR2', 50),
('R003', 'DDR3', 75),
('R004', 'DDR4', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_storage`
--

CREATE TABLE IF NOT EXISTS `tb_jenis_storage` (
  `id_jenis_storage` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_jenis_storage` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_jenis_storage` int(5) NOT NULL,
  PRIMARY KEY (`id_jenis_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_jenis_storage`
--

INSERT INTO `tb_jenis_storage` (`id_jenis_storage`, `nm_jenis_storage`, `nilai_jenis_storage`) VALUES
('S0001', 'HDD', 50),
('S0002', 'SSD', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria`
--

CREATE TABLE IF NOT EXISTS `tb_kriteria` (
  `idkriteria` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nama_kriteria` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `tipe_kriteria` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`idkriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`idkriteria`, `nama_kriteria`, `tipe_kriteria`) VALUES
('K0001', 'Seri Processor', 'Benefit'),
('K0002', 'Generasi Processor', 'Benefit'),
('K0003', 'Kecepatan Processor', 'Benefit'),
('K0004', 'Jenis RAM', 'Benefit'),
('K0005', 'Kapasitas RAM', 'Benefit'),
('K0006', 'Seri Kartu Grafis', 'Benefit'),
('K0007', 'Generasi Kartu Grafis', 'Benefit'),
('K0008', 'Kapasitas VRAM', 'Benefit'),
('K0009', 'Jenis Storage', 'Benefit'),
('K0010', 'Kapasitas Storage', 'Benefit'),
('K0011', 'Ukuran Layar', 'Benefit'),
('K0012', 'Resolusi Layar', 'Benefit'),
('K0013', 'Harga', 'Cost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_laptop`
--

CREATE TABLE IF NOT EXISTS `tb_laptop` (
  `id_laptop` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `merk_laptop` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `seri_laptop` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `merk_procie` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `seri_procie` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_seri_procie` int(11) NOT NULL,
  `gen_procie` int(11) NOT NULL,
  `spd_procie` double NOT NULL,
  `jenis_ram` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_jenis_ram` int(11) NOT NULL,
  `kap_ram` int(11) NOT NULL,
  `merk_vga` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `seri_vga` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_seri_vga` int(11) NOT NULL,
  `gen_vga` int(11) NOT NULL,
  `kap_vram` int(11) NOT NULL,
  `jenis_storage` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_jenis_storage` int(11) NOT NULL,
  `kap_storage` int(11) NOT NULL,
  `scr_size` double NOT NULL,
  `scr_res` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_scr_res` int(11) NOT NULL,
  `harga` bigint(20) NOT NULL,
  PRIMARY KEY (`id_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_laptop`
--

INSERT INTO `tb_laptop` (`id_laptop`, `merk_laptop`, `seri_laptop`, `merk_procie`, `seri_procie`, `nilai_seri_procie`, `gen_procie`, `spd_procie`, `jenis_ram`, `nilai_jenis_ram`, `kap_ram`, `merk_vga`, `seri_vga`, `nilai_seri_vga`, `gen_vga`, `kap_vram`, `jenis_storage`, `nilai_jenis_storage`, `kap_storage`, `scr_size`, `scr_res`, `nilai_scr_res`, `harga`) VALUES
('L0001', 'HP', '14s-DK1005AU', 'AMD', 'Ryzen 3', 30, 3250, 2.6, 'DDR4', 100, 8, 'AMD', 'Radeon RX', 150, 325, 8, 'SSD', 100, 1280, 14, '1920X1080', 1920, 8499000),
('L0002', 'HP', '14s-CF3039TU', 'Intel', 'Core i3', 50, 10051, 1.2, 'DDR4', 100, 8, 'Intel', 'UHD Graphic', 40, 151, 8, 'HDD', 50, 1024, 14, '1366x768', 1366, 7399000),
('L0003', 'HP', '14s-CF3034TX', 'Intel', 'Core i3', 50, 10051, 1.2, 'DDR4', 100, 4, 'AMD', 'Radeon', 10, 620, 2, 'SSD', 100, 512, 14, '1366x768', 1366, 8499000),
('L0004', 'HP', '14s-CF3018TX', 'Intel', 'Core i5', 60, 10351, 1, 'DDR4', 100, 8, 'AMD', 'Radeon', 10, 520, 2, 'SSD', 100, 512, 14, '1920X1080', 1920, 10999000),
('L0005', 'HP', '430 G3', 'Intel', 'Core i7', 70, 8565, 1.8, 'DDR4', 100, 8, 'Intel', 'UHD Graphic', 40, 620, 8, 'SSD', 100, 512, 13, '1920X1080', 1920, 19999000),
('L0006', 'Acer', 'Aspire A314-22', 'AMD', 'Athlon', 20, 3050, 2.3, 'DDR4', 100, 4, 'AMD', 'Radeon RX Vega', 70, 305, 4, 'SSD', 100, 256, 14, '1920X1080', 1920, 5699000),
('L0007', 'Acer', 'Nitro 5 515-55', 'Intel', 'Core i3', 50, 10300, 3.7, 'DDR4', 100, 8, 'Nvidia', 'GeForce GTX', 90, 1650, 4, 'SSD', 100, 512, 15, '1920X1080', 1920, 13199000),
('L0008', 'Acer', '514-53', 'Intel', 'Core i3', 50, 10051, 1.2, 'DDR4', 100, 4, 'Intel', 'UHD Graphic', 40, 151, 4, 'SSD', 100, 512, 14, '1920X1080', 1920, 7799000),
('L0009', 'Acer', 'TM-TX40', 'Intel', 'Core i3', 50, 8130, 2.2, 'DDR4', 100, 4, 'Intel', 'UHD Graphic', 40, 620, 4, 'HDD', 50, 512, 14, '1920X1080', 1920, 7199000),
('L0010', 'Acer', 'Predator Helios 300', 'Intel', 'Core i7', 70, 9750, 2.6, 'DDR4', 100, 32, 'Nvidia', 'GeForce RTX', 150, 2070, 8, 'SSD', 100, 512, 17.3, '1920X1080', 1920, 34060000),
('L0011', 'MSI', '9s7 16U142-470', 'Intel', 'Core i7', 70, 9750, 2.6, 'DDR4', 100, 16, 'Nvidia', 'GeForce RTX', 150, 2070, 6, 'SSD', 100, 512, 15, '1920X1080', 1920, 20999000),
('L0012', 'MSI', '9s7 115123-446', 'Intel', 'Core i5', 60, 10210, 1.6, 'DDR4', 100, 8, 'Nvidia', 'GeForce MX', 60, 350, 2, 'SSD', 100, 512, 15.6, '1920X1080', 1920, 11999000),
('L0013', 'MSI', '9s7 16WK12-233', 'AMD', 'Ryzen 5', 40, 4600, 3, 'DDR4', 100, 8, 'AMD', 'Radeon RX Vega', 70, 5500, 4, 'SSD', 100, 512, 15.6, '1920X1080', 1920, 14999000),
('L0014', 'MSI', '9s7 16R412-667', 'Intel', 'Core i7', 70, 10750, 2.6, 'DDR4', 100, 8, 'Nvidia', 'GeForce GTX Ti', 120, 1650, 4, 'SSD', 100, 512, 15.6, '1920X1080', 1920, 15999000),
('L0015', 'MSI', '9s7 16W112-845', 'Intel', 'Core i7', 70, 10750, 2.6, 'DDR4', 100, 8, 'Nvidia', 'GeForce GTX Ti', 120, 1660, 6, 'SSD', 100, 512, 15.6, '1920X1080', 1920, 18099000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_merk_laptop`
--

CREATE TABLE IF NOT EXISTS `tb_merk_laptop` (
  `id_merk_laptop` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_merk_laptop` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id_merk_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_merk_laptop`
--

INSERT INTO `tb_merk_laptop` (`id_merk_laptop`, `nm_merk_laptop`) VALUES
('M0001', 'Toshiba'),
('M0002', 'Acer'),
('M0003', 'MSI'),
('M0004', 'MacBook'),
('M0005', 'Dell'),
('M0006', 'Avita'),
('M0007', 'Lenovo'),
('M0008', 'Asus'),
('M0009', 'HP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_proamd_seri`
--

CREATE TABLE IF NOT EXISTS `tb_proamd_seri` (
  `id_proamd_seri` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_proamd_seri` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_proamd_seri` int(3) NOT NULL,
  PRIMARY KEY (`id_proamd_seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_proamd_seri`
--

INSERT INTO `tb_proamd_seri` (`id_proamd_seri`, `nm_proamd_seri`, `nilai_proamd_seri`) VALUES
('PSA01', 'APU A6', 10),
('PSA02', 'Athlon', 20),
('PSA03', 'Ryzen 3', 30),
('PSA04', 'Ryzen 5', 40),
('PSA05', 'Ryzen 7', 50),
('PSA06', 'Ryzen 9', 60),
('PSA07', 'Threadripper', 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prointel_seri`
--

CREATE TABLE IF NOT EXISTS `tb_prointel_seri` (
  `id_prointel_seri` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_prointel_seri` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_prointel_seri` int(3) NOT NULL,
  PRIMARY KEY (`id_prointel_seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_prointel_seri`
--

INSERT INTO `tb_prointel_seri` (`id_prointel_seri`, `nm_prointel_seri`, `nilai_prointel_seri`) VALUES
('PSI01', 'Celeron', 10),
('PSI02', 'Celeron N', 20),
('PSI03', 'Celeron G', 30),
('PSI04', 'Pentium Gold', 40),
('PSI05', 'Core i3', 50),
('PSI06', 'Core i5', 60),
('PSI07', 'Core i7', 70),
('PSI08', 'Core i9', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_scr_res`
--

CREATE TABLE IF NOT EXISTS `tb_scr_res` (
  `id_scr_res` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_scr_res` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_scr_res` int(5) NOT NULL,
  PRIMARY KEY (`id_scr_res`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_scr_res`
--

INSERT INTO `tb_scr_res` (`id_scr_res`, `nm_scr_res`, `nilai_scr_res`) VALUES
('RES01', '1024x768', 1024),
('RES02', '1280x720', 1280),
('RES03', '1360x768', 1360),
('RES04', '1366x768', 1366),
('RES05', '1600X900', 1600),
('RES06', '1920X1080', 1920),
('RES07', '2560x1440', 2560);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tentang`
--

CREATE TABLE IF NOT EXISTS `tb_tentang` (
  `id_judul` varchar(7) COLLATE utf8_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `isi` longtext COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id_judul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_tentang`
--

INSERT INTO `tb_tentang` (`id_judul`, `tanggal`, `isi`) VALUES
('JBROS', '2021-01-30', 'J-Bros Computer merupakan sebuah perusahaan toko elektronik yang ada di kota Padang, yang buka menjual berbagai alat elektronik dan teknologi seperti komputer, komponen hardware dan software, laptop, smartphone, dan alat elektronik lainnya, toko ini beralamatkan di Jalan Arif Rahman Hakim, No. 3B, Kota Padang, Sumatera Barat.\r\n\r\n\r\nJ-Bros computer merupakan supplier sekaligus melayani distribusi dan retail computer, notebook, smartphone, camera, printer, projector, accessories dan sekaligus merupakan Master Dealer dan Service Center Resmi di Sumatera Barat.'),
('LAPTOP', '2021-01-06', 'ini laptop'),
('PANDUAN', '2021-01-06', 'ini panduan'),
('SISTEM', '2021-01-06', 'ini spk saw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
('1', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_vgaamd_seri`
--

CREATE TABLE IF NOT EXISTS `tb_vgaamd_seri` (
  `id_vgaamd_seri` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_vgaamd_seri` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_vgaamd_seri` int(5) NOT NULL,
  PRIMARY KEY (`id_vgaamd_seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_vgaamd_seri`
--

INSERT INTO `tb_vgaamd_seri` (`id_vgaamd_seri`, `nm_vgaamd_seri`, `nilai_vgaamd_seri`) VALUES
('VSA01', 'Radeon', 10),
('VSA02', 'Radeon HD', 20),
('VSA03', 'Radeon R3', 30),
('VSA04', 'Radeon R5', 40),
('VSA05', 'Radeon R7', 50),
('VSA06', 'Radeon R9', 60),
('VSA07', 'Radeon RX Vega', 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_vgaintel_seri`
--

CREATE TABLE IF NOT EXISTS `tb_vgaintel_seri` (
  `id_vgaintel_seri` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_vgaintel_seri` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_vgaintel_seri` int(5) NOT NULL,
  PRIMARY KEY (`id_vgaintel_seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_vgaintel_seri`
--

INSERT INTO `tb_vgaintel_seri` (`id_vgaintel_seri`, `nm_vgaintel_seri`, `nilai_vgaintel_seri`) VALUES
('VSI01', 'HD Graphic', 20),
('VSI02', 'UHD Graphic', 40),
('VSI03', 'Iris Graphic', 60),
('VSI04', 'Iris Pro Graphic', 80),
('VSI05', 'Iris Plus Graphic', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_vganvidia_seri`
--

CREATE TABLE IF NOT EXISTS `tb_vganvidia_seri` (
  `id_vganvidia_seri` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `nm_vganvidia_seri` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `nilai_vganvidia_seri` int(5) NOT NULL,
  PRIMARY KEY (`id_vganvidia_seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `tb_vganvidia_seri`
--

INSERT INTO `tb_vganvidia_seri` (`id_vganvidia_seri`, `nm_vganvidia_seri`, `nilai_vganvidia_seri`) VALUES
('VSN01', 'GeForce GT', 30),
('VSN02', 'GeForce MX', 60),
('VSN03', 'GeForce GTX', 90),
('VSN04', 'GeForce GTX Ti', 120),
('VSN05', 'GeForce RTX', 150);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
