/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - mahasiswa_responsi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mahasiswa_responsi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `mahasiswa_responsi`;

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `ID` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `IPK` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`ID`,`nama`,`jurusan`,`jenis_kelamin`,`IPK`) values 
(1,'Ahmad','Informatika','Laki-laki',3.5),
(2,'Budi','Ekonomi','Laki-laki',3.8),
(3,'Cindy','Psikologi','Perempuan',3.2),
(4,'Dian','Informatika','Perempuan',3.9),
(5,'Eka','Ekonomi','Perempuan',3.6),
(6,'Faisal','Teknik','Laki-laki',3.7),
(7,'Gita','Psikologi','Perempuan',3.4),
(8,'Hadi','Informatika','Laki-laki',3.3),
(9,'Indah','Ekonomi','Perempuan',3.5),
(10,'Joko','Teknik','Laki-laki',3.9),
(11,'Kartika','Informatika','Perempuan',3.2),
(12,'Lia','Ekonomi','Perempuan',3.8),
(13,'Maman','Psikologi','Laki-laki',3.6),
(14,'Nina','Informatika','Perempuan',3.9),
(15,'Oscar','Teknik','Laki-laki',3.2),
(16,'Putri','Ekonomi','Perempuan',3.7),
(17,'Rudi','Informatika','Laki-laki',3.4),
(18,'Sinta','Psikologi','Perempuan',3.3),
(19,'Tono','Informatika','Laki-laki',3.5),
(20,'Vina','Ekonomi','Perempuan',3.8);

/*Table structure for table `mata_kuliah` */

DROP TABLE IF EXISTS `mata_kuliah`;

CREATE TABLE `mata_kuliah` (
  `kode` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mata_kuliah` */

insert  into `mata_kuliah`(`kode`,`nama`,`sks`) values 
(101,'Matematika Dasar',3),
(102,'Basis Data',4),
(103,'Statistika',3),
(104,'Bahasa Inggris',2),
(105,'Algoritma',4),
(106,'Pemrograman Web',3),
(107,'Fisika Dasar',3),
(108,'Kimia Dasar',3),
(109,'Manajemen',3),
(110,'Pemasaran',3),
(111,'Riset Operasi',3),
(112,'Kalkulus',4),
(113,'Teori Graf',3),
(114,'Sistem Operasi',4),
(115,'Pemrograman Lanjut',4),
(116,'Jaringan Komputer',3),
(117,'Basis Data Lanjut',4),
(118,'Desain Basis Data',3),
(119,'Analisis Data',4),
(120,'Manajemen Proyek',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
