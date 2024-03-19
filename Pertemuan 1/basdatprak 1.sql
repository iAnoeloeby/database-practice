/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - basdatprak_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`basdatprak_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `basdatprak_1`;

/*Table structure for table `kabupaten` */

DROP TABLE IF EXISTS `kabupaten`;

CREATE TABLE `kabupaten` (
  `kode_kab` varchar(5) NOT NULL,
  `nama_kab` varchar(50) DEFAULT NULL,
  `kode_prov` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kode_kab`),
  KEY `kabupaten_ibfk_1` (`kode_prov`),
  CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`kode_prov`) REFERENCES `provinsi` (`kode_prov`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kabupaten` */

insert  into `kabupaten`(`kode_kab`,`nama_kab`,`kode_prov`) values 
('0','Jakarta Pusat','1'),
('1','Jakarta Barat','1'),
('2','Jakarta Selatan','1'),
('3','Jakarta Timur','1'),
('4','Jakarta Utara','1');

/*Table structure for table `kecamatan` */

DROP TABLE IF EXISTS `kecamatan`;

CREATE TABLE `kecamatan` (
  `kec` varchar(5) NOT NULL,
  `nama_kec` varchar(50) DEFAULT NULL,
  `kode_kab` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kec`),
  KEY `kode_kab` (`kode_kab`),
  CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`kode_kab`) REFERENCES `kabupaten` (`kode_kab`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kecamatan` */

insert  into `kecamatan`(`kec`,`nama_kec`,`kode_kab`) values 
('',NULL,'0'),
('1','Gambir','0'),
('2','Tanah Abang','0'),
('4','Senen','0'),
('5','Cempaka Putih','0'),
('6','Johar Baru','0'),
('7','Kemayoran','0'),
('8','Sawah Baru',NULL);

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `NPM` varchar(10) NOT NULL COMMENT 'ini NPM Mahasiswa',
  `nama_mahasiswa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kec` varchar(5) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mahasiswa` */

/*Table structure for table `provinsi` */

DROP TABLE IF EXISTS `provinsi`;

CREATE TABLE `provinsi` (
  `kode_prov` varchar(5) NOT NULL,
  `nama_prov` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `provinsi` */

insert  into `provinsi`(`kode_prov`,`nama_prov`) values 
('1','	Jakarta, sebagian Banten dan Jawa Barat'),
('2','	Aceh, Sumatera Utara, Sumatera Barat, Riau, Kepul'),
('3','	Bengkulu, Jambi, Bangka Belitung, Sumatera Selata'),
('4','	Banten, Jawa Barat'),
('5','Jawa Tengah, Yogyakarta'),
('6','Jawa Timur'),
('7','Kalimantan'),
('8','	Bali, Nusa Tenggara'),
('9',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
