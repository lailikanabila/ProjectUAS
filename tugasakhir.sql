-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2020 pada 22.01
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `jenis` int(11) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal` date NOT NULL,
  `pengarang` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `kode`, `jenis`, `judul`, `tanggal`, `pengarang`) VALUES
(2, 'KQKM6UJ5', 1, 'Ensiklopedia Komunikasi', '2015-04-03', 'Alex Sobur'),
(3, '0OCQBBQX', 4, 'Mari Bung Rebut Kembali', '2012-10-29', 'Willy Aditya'),
(4, 'ZR1PC9UI', 2, 'Rentang Kasih', '2017-09-03', 'Gita Savitri'),
(6, 'LIH3324C', 5, 'Dunia 5SOS', '2020-11-30', 'Risya'),
(8, 'VS7G1MFP', 4, 'Mari Bertaubat', '2016-12-12', 'Kitashin'),
(9, 'BAOI99NW', 6, 'Cara Sukses Budidaya Lele', '2012-01-13', 'Joko'),
(10, 'U4LUOQSA', 2, 'The Fault In Our Star', '2010-01-10', 'John Green'),
(11, '2F5K5DU5', 2, 'Looking or Alaska', '2005-01-01', 'John Green'),
(12, 'ELEPN67K', 2, 'Paper Towns', '2008-10-16', 'John Green'),
(13, 'ZYG1DIN1', 2, 'Let It Snow', '2008-12-12', 'John Green'),
(14, '467JYMR5', 2, 'An Abundace of Katerines', '2006-11-11', 'John Green'),
(15, 'R54QYIM9', 6, 'Belajar PHP', '2020-12-13', 'Hendrie'),
(16, 'QW7MWFDF', 1, 'Belajar Merajut untuk Pemula', '2020-11-01', 'Mutia Salsabila'),
(17, 'V1RTUEV4', 4, 'New Chapter', '2018-10-16', 'Milo'),
(18, 'QAAYX016', 1, 'Ensiklopedia 5SOS', '2014-05-13', 'Risya'),
(19, '5YJJKRZG', 6, 'Belajar Bahasa Pemrograman Java', '2017-12-13', 'Yuni Sugiarti'),
(20, 'U30P488I', 6, 'Merawat Kucing dengan Baik dan Benar', '2018-08-18', 'Muhammad Aqil Pratama'),
(21, 'D90CKQE8', 4, 'Masa Muda Produktif', '2018-11-22', 'Salsa'),
(24, '65VIGE6I', 4, 'Berselancar Menuju Samudra', '2005-05-20', 'Larry Lawrence'),
(25, 'QM9BCV2R', 6, 'Resep Varian Surabi Enak', '2015-12-12', 'Nabila'),
(26, 'Q255O1B2', 5, 'Dinosaurus Temanku', '2016-12-31', 'Trecia'),
(27, 'EA5UH2MJ', 1, 'Belajar Digital Art', '2020-04-13', 'Mutia Hani'),
(28, 'HGZR9V3Y', 2, 'Best Day Ever', '2020-05-13', 'Michael Gordon'),
(29, '0O1JOY4Z', 1, 'Resep Olahan Pasta', '2019-12-25', 'Putri Andini'),
(30, 'D4II6EQA', 3, 'Serangan Raksasa', '2009-09-09', 'Iskandar Hayasa'),
(31, '05SKQV07', 3, 'Aku Suka Makan Daging', '2014-10-16', 'Isahada Saima'),
(32, 'PKL0CH4E', 3, 'Mau Jadi Superhero', '2014-07-07', 'Horishi Koi'),
(33, 'THGMQ9Z6', 3, 'Memburu Iblis Jahat', '2016-02-15', 'Gogo Kotaro'),
(34, 'GACO4SYP', 3, 'Hayuk', '2012-02-20', 'Fara Harada'),
(35, 'P47AL8LJ', 3, 'Aku Seorang Bajak Laut', '1997-07-22', 'Oda Chiro'),
(36, 'SCNTH2EI', 4, 'Belajar Ikhlas', '2011-12-13', 'Hakate Kaoshi'),
(37, '7DD5W2DI', 6, 'Tips dan Trick Jitu Menambah Tinggi Badan', '2012-10-13', 'Laiva Baiha'),
(38, '569CH0V3', 1, 'Belajar Gitar untuk Pemula', '2014-07-07', 'Jemi Aita'),
(39, 'NFOD0PTD', 2, 'Langit Biru', '2014-07-11', 'Tanaka Hose'),
(40, 'ROO11OD3', 5, 'Matahari dan Bulan', '2018-06-25', 'Uta Yota'),
(41, 'AW6U5X5O', 4, 'Pantang Menyerah', '2014-04-13', 'Zuki Nerota'),
(42, 'TIEAUD0J', 5, 'Naga Baik Hati', '2020-10-11', 'Suci Deosa'),
(43, 'LW5EJISS', 5, 'Banteng vs Badak', '2020-10-10', 'Hazizah Baito'),
(44, 'AUC2NA48', 5, 'Selamat Tinggal', '2017-12-22', 'Kaose Haru'),
(45, 'JPU59ER0', 6, 'Berbagi Pahala', '2020-12-15', 'Muhammad Aqil Pratama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nis` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(41) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `murid`
--

INSERT INTO `murid` (`id`, `nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `tanggal`) VALUES
(5, 11128, 'Nabila Lailika Amalia', 'Bekasi', '2000-03-27', 'Teknik Informatika', '2018-06-05'),
(6, 11118, 'Risya Diany Yulinska', 'Bekasi', '2000-07-11', 'Teknik Informatika', '2018-06-05'),
(7, 11135, 'Wahyu Saputra', 'Pamulang', '2000-05-05', 'Teknik Informatika', '2018-06-05'),
(8, 11111, 'Chaca Mutia', 'Pamulang', '2000-11-01', 'Teknik Informatika', '2018-06-05'),
(9, 11113, 'Salsabila Ramadhina', 'jakarta', '2001-11-22', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(10, 11101, 'Rizka ', 'bekasi', '2000-01-01', 'Teknik Informatika', '2018-06-05'),
(11, 11102, 'Dika', 'Tanggerang', '2000-01-02', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(12, 11103, 'Andiko', 'pamulang', '2000-01-03', 'Teknik Informatika', '2018-06-05'),
(13, 11104, 'Kara', 'Pondok Cabe', '2000-01-05', 'Teknik Informatika', '2018-06-05'),
(14, 11106, 'zuko', 'bekasi', '2000-01-06', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(15, 11105, 'Rafif Zaki', 'Tanggerang selatan', '2000-01-05', 'Teknik Informatika', '2018-06-05'),
(16, 11107, 'riana munawarohman', 'ciputat', '2000-01-07', 'Teknik Informatika', '2018-06-05'),
(17, 11108, 'hendri ramdhani', 'pandeglang', '2000-01-08', 'Teknik Informatika', '2018-06-05'),
(18, 11109, 'Nida putri', 'jakarta barat', '2000-01-09', 'Teknik Informatika', '2018-06-05'),
(19, 11110, 'Ahmad Malik', 'pondok cabe', '2000-01-10', 'Teknik Informatika', '2018-06-05'),
(20, 11112, 'Aldi Dwi Jatika', 'jakarta selatan', '2000-01-12', 'Teknik Informatika', '2018-06-05'),
(21, 11114, 'Adine', 'bandung', '2000-01-13', 'Teknik Informatika', '2018-06-05'),
(22, 11115, 'Ahmad Hafi', 'jakarta', '2000-12-10', 'Teknik Informatika', '2018-06-05'),
(23, 11116, 'Richard', 'bekasi', '2000-12-11', 'Teknik Informatika', '2018-06-05'),
(24, 11117, 'Banteng agung', 'bekasi', '2000-12-15', 'Teknik Informatika', '2018-06-05'),
(25, 11119, 'Ajeng', 'jakarta', '2000-12-10', 'Teknik Informatika', '2018-06-05'),
(26, 11120, 'Dianan', 'bandung', '2000-12-15', 'Teknik Informatika', '2018-06-05'),
(27, 11121, 'Ismalia', 'bekasi', '2000-03-27', 'Teknik Informatika', '2018-06-05'),
(28, 11127, 'Nakasari', 'bandung', '2000-12-18', 'Teknik Informatika', '2018-06-05'),
(29, 11122, 'Nurul', 'Banten', '2000-12-16', 'Teknik Informatika', '2018-06-05'),
(30, 11123, 'Tessa', 'bekasi', '2000-11-10', 'Teknik Informatika', '2018-06-05'),
(31, 11124, 'Cassie', 'jakarta', '2000-11-08', 'Teknik Informatika', '2018-06-05'),
(32, 11125, 'Raka Fatah', 'bekasi', '2000-11-16', 'Teknik Informatika', '2018-06-05'),
(33, 11126, 'Aksara', 'tanggerang', '2000-11-19', 'Teknik Informatika', '2018-06-05'),
(34, 11130, 'Lenovo', 'Purwokerto', '2000-09-08', 'Teknik Informatika', '2018-06-05'),
(36, 11129, 'Nikolas', 'Batam', '2000-10-06', 'Teknik Informatika', '2018-06-05'),
(38, 11133, 'Anggara', 'Bekasi', '2000-10-09', 'Teknik Informatika', '0000-00-00'),
(39, 11134, 'Amali', 'jakarta', '2000-10-04', 'Teknik Informatika', '2018-06-05'),
(40, 11136, 'Fana Asta', 'Makasar', '2019-09-01', 'Teknik Informatika', '2018-06-05'),
(41, 11137, 'Hanafi', 'Bandung', '2001-05-06', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(42, 11138, 'Nurhasna', 'Bekasi', '2001-07-06', 'Teknik Informatika', '2018-06-05'),
(43, 11139, 'Gara', 'Tanggerang selatan', '2001-05-06', 'Teknik Informatika', '2018-06-05'),
(44, 11140, 'Baruto', 'lenbang', '2001-05-06', 'Teknik Informatika', '2018-06-05'),
(45, 11141, 'Jawari', 'bekasi', '2000-05-06', 'Teknik Informatika', '2018-06-05'),
(46, 11142, 'Yuukino', 'Gunung jati', '2001-12-06', 'Teknik Informatika', '2018-06-05'),
(47, 11143, 'Shikamaru', 'pamulang', '2002-05-06', 'Teknik Informatika', '2018-06-05'),
(48, 11145, 'Nabila', 'Tanggerang', '2001-05-06', 'Teknik Informatika', '2018-06-05'),
(49, 11144, 'Uzumaki Naruto', 'Konoha', '2001-10-10', 'Teknik Informatika', '2018-06-05'),
(50, 11146, 'Yuno', 'Bandug', '2000-05-06', 'Teknik Informatika', '2018-06-05'),
(51, 11147, 'hana', 'Bekasi', '2001-05-06', 'Teknik Informatika', '2018-06-05'),
(52, 11148, 'Asta', 'Bekasi', '2001-09-25', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(53, 11149, 'Lailika', 'Bekasi', '2001-05-06', 'Teknik Informatika', '2018-06-05'),
(54, 11150, 'Hinata Shoyo', 'Bandung', '2000-05-07', 'Teknik Informatika', '2018-06-05'),
(55, 11151, 'Kageyama Tobio', 'Bandung', '2001-09-06', 'Teknik Informatika', '2018-06-05'),
(56, 11256, 'Agung', 'bekasi', '2000-05-06', 'Teknik Komputer dan Jaringan', '2018-06-05'),
(57, 11159, 'Yami', 'bekasi', '2000-05-07', 'Teknik Komputer dan Jaringan', '2018-06-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nis` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nis`, `nama`, `jurusan`, `kode`, `judul`, `tanggal`) VALUES
(9, 11104, 'Kara', 'Teknik Informatika', '2F5K5DU5', 'Looking or Alaska', '2020-11-14'),
(10, 11103, 'Andiko', 'Teknik Informatika', 'ELEPN67K', 'Paper Towns', '2020-12-14'),
(11, 11134, 'Amali', 'Teknik Informatika', 'HGZR9V3Y', 'Best Day Ever', '2020-12-14'),
(13, 11109, 'Nida putri', 'Teknik Informatika', 'U4LUOQSA', 'The Fault In Our Star', '2020-12-10'),
(14, 11140, 'Baruto', 'Teknik Informatika', 'D90CKQE8', 'Masa Muda Produktif', '2020-12-14'),
(15, 11109, 'Nida putri', 'Teknik Informatika', 'KQKM6UJ5', 'Ensiklopedia Komunikasi', '2020-12-01'),
(17, 11102, 'Dika', 'Teknik Informatika', 'KQKM6UJ5', 'Ensiklopedia Komunikasi', '2020-11-08'),
(18, 11104, 'Kara', 'Teknik Informatika', 'LIH3324C', 'Dunia 5SOS', '2020-11-04'),
(21, 11124, 'Cassie', 'Teknik Informatika', 'QM9BCV2R', 'Resep Varian Surabi Enak', '2020-12-06'),
(23, 11108, 'hendri ramdhani', 'Teknik Informatika', '2F5K5DU5', 'Looking or Alaska', '2020-12-10'),
(24, 11122, 'Nurul', 'Teknik Informatika', 'R54QYIM9', 'Belajar PHP', '2020-12-14'),
(25, 11115, 'Ahmad Hafi', 'Teknik Informatika', '2F5K5DU5', 'Looking or Alaska', '2020-12-10'),
(26, 11117, 'Banteng agung', 'Teknik Informatika', '2F5K5DU5', 'Looking or Alaska', '2020-12-14'),
(28, 11256, 'Agung', 'Teknik Komputer dan Jaringan', 'VS7G1MFP', 'Mari Bertaubat', '2020-12-10'),
(29, 11108, 'hendri ramdhani', 'Teknik Informatika', 'BAOI99NW', 'Cara Sukses Budidaya Lele', '2020-12-14'),
(30, 11142, 'Yuukino', 'Teknik Informatika', 'EA5UH2MJ', 'Belajar Digital Art', '2020-12-15'),
(31, 11109, 'Nida putri', 'Teknik Informatika', 'EA5UH2MJ', 'Belajar Digital Art', '2020-12-15'),
(32, 11118, 'Risya Diany Yulinska', 'Teknik Informatika', 'U30P488I', 'Merawat Kucing dengan Baik dan Benar', '2020-12-15'),
(33, 11106, 'zuko', 'Teknik Komputer dan Jaringan', 'VS7G1MFP', 'Mari Bertaubat', '2020-12-09'),
(34, 11128, 'Nabila Lailika Amalia', 'Teknik Informatika', 'QM9BCV2R', 'Resep Varian Surabi Enak', '2020-12-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `nim` int(14) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `pinalti` int(5) NOT NULL,
  `denda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `nim`, `nama`, `jurusan`, `kode`, `judul`, `tanggal_peminjaman`, `tanggal_pengembalian`, `pinalti`, `denda`) VALUES
(39, 11105, 'Rafif Zaki', 'Teknik Informatika', 'U30P488I', 'Merawat Kucing dengan Baik dan Benar', '2020-12-01', '2020-12-14', 6, 3000),
(40, 11151, 'Kageyama Tobio', 'Teknik Informatika', 'AW6U5X5O', 'Pantang Menyerah', '2020-11-10', '2020-12-14', 0, 0),
(41, 14619, 'Suluh Sulistiawan', 'Teknik Komputer dan Jaringan', 'KQKM6UJ5', 'Ensiklopedia Komunikasi', '2019-12-03', '2020-12-14', 370, 185000),
(42, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', 'SVJZGXVJ', 'Ayat-Ayat Cinta', '2019-12-03', '2020-12-14', 4, 2000),
(43, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', 'ZR1PC9UI', 'Rentang Kasih', '2019-12-03', '2020-12-14', 370, 185000),
(44, 11105, 'Rafif Zaki', 'Teknik Informatika', 'VS7G1MFP', 'Mari Bertaubat', '2020-11-01', '2020-12-15', 37, 18500),
(45, 11107, 'riana munawarohman', 'Teknik Informatika', 'R54QYIM9', 'Belajar PHP', '2020-12-06', '2020-12-15', 2, 1000),
(46, 11109, 'Nida putri', 'Teknik Informatika', '2F5K5DU5', 'Looking or Alaska', '2020-12-03', '2020-12-15', 5, 2500);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`,`kode`) USING BTREE;

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`,`nis`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
