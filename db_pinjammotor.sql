-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2017 pada 09.12
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_pinjammotor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `nama` text NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `no_telp` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_struk` int(20) NOT NULL,
  `no_pol` varchar(20) NOT NULL,
  `tanggal_pinjam` varchar(20) NOT NULL,
  `tanggal_kembali` varchar(20) NOT NULL,
  `harga` int(50) DEFAULT NULL,
  PRIMARY KEY (`no_struk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`nama`, `no_ktp`, `no_telp`, `alamat`, `no_struk`, `no_pol`, `tanggal_pinjam`, `tanggal_kembali`, `harga`) VALUES
('Bejo', '12134', 983091, 'Tegal', 64, 'N 810 F', '05-03-2017', '16-03-2017', 220000),
('Adam', '78763', 98293892, 'Jakarta', 80, 'L 100 S', '13-03-2017', '14-03-2017', 20000),
('Chika', '17687', 97089787, 'Malang', 100, 'B 777 AE', '02-03-2017', '09-03-2017', 140000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
