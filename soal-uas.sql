-- --------------------------------------------------------
-- https://drive.google.com/file/d/1vgmI-COpGRE8TKsvBZWWqdswgGdWFAIM/view
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for soal_uas
CREATE DATABASE IF NOT EXISTS `soal_uas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `soal_uas`;

-- Dumping structure for table soal_uas.dosen
CREATE TABLE IF NOT EXISTS `dosen` (
  `idDosen` char(3) NOT NULL,
  `namaDosen` varchar(50) NOT NULL DEFAULT '',
  `kampus` varchar(50) NOT NULL DEFAULT '',
  `alamat` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`idDosen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table soal_uas.dosen: ~5 rows (approximately)
INSERT INTO `dosen` (`idDosen`, `namaDosen`, `kampus`, `alamat`) VALUES
	('D01', 'Budi Marwah', 'Unpad', 'Dipatiukur Bandung'),
	('D02', 'Tia Nuraeni', 'Unisba', 'Tamansari Bandung'),
	('D03', 'Gagan Sumarno', 'STT Bandung', 'Soekarno Hatta Bandung'),
	('D04', 'Indah Suci', 'Universitas Indonesia', 'Margonda Raya Depok'),
	('D05', 'I Gede Wenten', 'Institut Teknologi Bandung', 'Ganesha Bandung');

-- Dumping structure for table soal_uas.mahasiswa
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `idMahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `idMatkul` int(11) NOT NULL,
  `namaMahasiswa` varchar(100) NOT NULL,
  `usia` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`idMahasiswa`),
  KEY `idMatkul` (`idMatkul`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`idMatkul`) REFERENCES `matakuliah` (`idMatkul`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table soal_uas.mahasiswa: ~0 rows (approximately)
INSERT INTO `mahasiswa` (`idMahasiswa`, `idMatkul`, `namaMahasiswa`, `usia`, `nilai`) VALUES
	(1, 1, 'Dave', 18, 85),
	(2, 6, 'kirana', 21, 90),
	(3, 9, 'Frank', 15, 80),
	(4, 8, 'Jessica', 18, 95),
	(5, 10, 'Patrick', 24, 85),
	(6, 3, 'Farah', 19, 75),
	(7, 2, 'Jacob', 25, 90),
	(8, 4, 'Sabila', 18, 75);

-- Dumping structure for table soal_uas.matakuliah
CREATE TABLE IF NOT EXISTS `matakuliah` (
  `idMatkul` int(11) NOT NULL AUTO_INCREMENT,
  `idDosen` char(3) NOT NULL,
  `namaMatkul` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`idMatkul`),
  KEY `idDosen` (`idDosen`),
  CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`idDosen`) REFERENCES `dosen` (`idDosen`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table soal_uas.matakuliah: ~10 rows (approximately)
INSERT INTO `matakuliah` (`idMatkul`, `idDosen`, `namaMatkul`, `jurusan`) VALUES
	(1, 'D01', 'Algoritma Dasar', 'Informatika'),
	(2, 'D01', 'Manajement Operasional', 'Manajemen'),
	(3, 'D01', 'Etika Profesi', 'Industri'),
	(4, 'D02', 'Pengolahan Citra', 'DKV'),
	(5, 'D02', 'UI/UX', 'Informatika'),
	(6, 'D03', 'Statistik', 'Industri'),
	(7, 'D03', 'Matematika Diskrit', 'Manajemen'),
	(8, 'D04', 'Politik Negara', 'Ilmu Politik'),
	(9, 'D04', 'Undang undang Perdata', 'Hukum'),
	(10, 'D05', 'B Inggris', 'Elektro');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;