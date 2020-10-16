-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2014 at 07:07 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_webakademis`
--
CREATE DATABASE `db_webakademis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_webakademis`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `ID_DOSEN` varchar(10) NOT NULL,
  `NAMA_DOSEN` varchar(30) NOT NULL,
  `NIP` char(15) NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `AGAMA` char(10) NOT NULL,
  `JK` char(1) NOT NULL,
  `NO_TELEPON` char(12) NOT NULL,
  `ALAMAT` char(50) NOT NULL,
  `FOTO` char(50) NOT NULL,
  PRIMARY KEY (`ID_DOSEN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D001', 'ANDRI MUBARAK', '101524001', '1960-03-01', 'islam', 'L', '082309876453', 'KH. Ahmad Dahlan I No4 Rt 01/06 Kukusan Beji Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D002', 'ARY FIRMANA', '101524002', '1959-06-21', 'islam', 'L', '082309876453', 'ANGGREK VIII, Harja Mukti Cimanggis Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D003', 'DESI HERAWATI', '101524003', '1962-08-16', 'islam', 'P', '082309876453', 'Pesona Khayangan Blok FB/7 Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D004', 'FHARDIAN PUTRA', '101524004', '1965-06-30', 'islam', 'L', '082309876453', 'Perum Cimanggis IndahBlok H/11 Rt 03/11 Sukmajaya', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D005', 'HAURA INTAN SAFITRI', '101524005', '1950-02-26', 'islam', 'P', '082309876453', 'AKSES U.I, Tugu  Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D006', 'MAISARAH RIZKY', '101524006', '1962-08-04', 'islam', 'P', '082309876453', 'Jl. Taman Duta Barat Cisalak Sukmajaya Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D007', 'MIFTAHUL JANNAH', '101524007', '1963-09-15', 'islam', 'P', '082309876453', 'VANDA III GTA Tuigu Cimanggis Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D008', 'MUHAMMAD IQBAL', '101524008', '1959-03-25', 'islam', 'L', '082309876453', 'Komp. Timah Blok DD2 Tugu Cimanggis Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D009', 'RAHMAT RIFKI SM', '101524009', '1965-08-17', 'islam', 'L', '082309876453', 'Jl. Kelapadua raya Tugu Cimanggis Depok', 'NULL');
INSERT INTO `dosen` (`ID_DOSEN`, `NAMA_DOSEN`, `NIP`, `TGL_LAHIR`, `AGAMA`, `JK`, `NO_TELEPON`, `ALAMAT`, `FOTO`) VALUES('D010', 'RULLIANSYAH', '101524010', '1970-08-10', 'islam', 'L', '082309876453', 'KOMP. HBTB BLOK V 23 RT.07/11 Harjamukti Cimanggis', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `ID_MATKUL` varchar(10) NOT NULL,
  `ID_RUANGAN` varchar(10) NOT NULL,
  `HARI` varchar(7) NOT NULL,
  `JAM` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_MATKUL`,`ID_RUANGAN`),
  KEY `FK_BERADA` (`ID_RUANGAN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID_MATKUL`, `ID_RUANGAN`, `HARI`, `JAM`) VALUES('MK4005', 'R001', 'senin', '09:50-11:30');
INSERT INTO `jadwal` (`ID_MATKUL`, `ID_RUANGAN`, `HARI`, `JAM`) VALUES('MK4001', 'R001', 'senin', '07:50-09:30');
INSERT INTO `jadwal` (`ID_MATKUL`, `ID_RUANGAN`, `HARI`, `JAM`) VALUES('MK4009', 'R002', 'selasa', '09:50-11:30');
INSERT INTO `jadwal` (`ID_MATKUL`, `ID_RUANGAN`, `HARI`, `JAM`) VALUES('MK4002', 'R005', 'kamis', '07:50-09:30');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NIM_MHS` varchar(9) NOT NULL,
  `NAMA_MHS` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `AGAMA_MHS` char(10) NOT NULL,
  `NO_TLP` char(12) NOT NULL,
  `ALAMAT_MHS` char(50) NOT NULL,
  `NAMA_AYAH` char(20) NOT NULL,
  `PEKERJAAN_AYAH` char(20) NOT NULL,
  `NAMA_IBU` char(20) NOT NULL,
  `PEKERJAAN_IBU` char(20) NOT NULL,
  `ALAMAT_ORTU` char(50) NOT NULL,
  `JENIS_KELAMIN` char(1) NOT NULL,
  `FOTO_MHS` char(50) NOT NULL,
  PRIMARY KEY (`NIM_MHS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101524001', 'JAUHARI KHAIRUL KAWISTARA', '1991-08-15', 'Islam', '085720383062', 'Puri Cipageran Indah 1 Blok A no.164', 'NANAN MUHTASJIER', 'PNS', 'IDA ROSITA', 'Kar.Swasta', 'Puri Cipageran Indah 1 Blok A no.164', 'L', 'null');
INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101542002', 'KAGRIKA AULIA', '1992-05-30', 'Islam', '081220330531', 'Jl. Mujair 7 No. 72 Depok Jaya Panmas Depok', 'ABDUL KARIM, ST', 'PNS', 'MARTINA HELENA', 'IRT', 'Jl. Mujair 7 No. 72 Depok Jaya Panmas Depok', 'P', 'null');
INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101542003', 'KALWAN AZHARY', '1990-06-24', 'Islam', '08122033053', 'Perum Griya Depok Asri Blok G4 No. 6 Sukmajaya Dep', 'AZHARUDDIN', 'Kary. Swasta', 'INDIRA MIRANTI', 'IRT', 'Perum Griya Depok Asri Blok G4 No. 6 Sukmajaya Dep', 'L', 'null');
INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101542004', 'KANGGA WIGUNA', '1992-06-09', 'Islam', '08122033053', 'Perum Jatijajar Blok C8/2 Rt 004/11Cimanggis Depok', 'HARIS MARZUKI', 'PNS', 'ASNAWI SAMAN', 'Kar. Swasta', 'Perum Jatijajar Blok C8/2 Rt 004/11Cimanggis Depok', 'L', 'null');
INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101542005', 'KARIEF FADHILAH', '1991-10-16', 'Islam', '08122033053', 'KH. Ahmad Dahlan I No4 Rt 01/06 Kukusan Beji Depok', 'FACHRIZAL', 'Kary. Swasta', 'RURI WULANDARI', 'Kar. Swasta', 'KH. Ahmad Dahlan I No4 Rt 01/06 Kukusan Beji Depok', 'L', 'null');
INSERT INTO `mahasiswa` (`NIM_MHS`, `NAMA_MHS`, `TGL_LHR`, `AGAMA_MHS`, `NO_TLP`, `ALAMAT_MHS`, `NAMA_AYAH`, `PEKERJAAN_AYAH`, `NAMA_IBU`, `PEKERJAAN_IBU`, `ALAMAT_ORTU`, `JENIS_KELAMIN`, `FOTO_MHS`) VALUES('101542006', 'LAMAR ARYA BAGASKARA', '1992-01-16', 'Kristen', '08122033053', 'ANGGREK VIII, Harja Mukti Cimanggis Depok', 'FAHMI AHMADI', 'Kar.Swasta', 'CHADIJAH MASTURA SIR', 'IRT', 'ANGGREK VIII, Harja Mukti Cimanggis Depok', 'L', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `ID_MATKUL` varchar(10) NOT NULL,
  `NAMA_MATAKULIAH` varchar(30) NOT NULL,
  `SKS_MATKUL` decimal(1,0) NOT NULL,
  `SEMESTER` decimal(1,0) NOT NULL,
  PRIMARY KEY (`ID_MATKUL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4004', 'Ilmu Komputer', 3, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4003', 'B.Inggris I', 2, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4002', 'B.Indonesia', 3, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4001', 'DDP', 3, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4005', 'Kognitif Komputasi', 2, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4006', 'Konsep Teknologi', 2, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4007', 'Matematika Diskrit I', 3, 1);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4008', 'Agama', 3, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4009', 'Aljabar Linear', 3, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4010', 'B.Inggris 2', 2, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4011', 'Komtekbis', 2, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4013', 'Pemrograman Lanjut', 3, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK4014', 'Struktur Data Algoritma', 4, 2);
INSERT INTO `mata_kuliah` (`ID_MATKUL`, `NAMA_MATAKULIAH`, `SKS_MATKUL`, `SEMESTER`) VALUES('MK40015', 'Database', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE IF NOT EXISTS `mengajar` (
  `ID_MATKUL` varchar(10) NOT NULL,
  `ID_DOSEN` varchar(10) NOT NULL,
  `ID_MENGAJAR` char(3) NOT NULL,
  PRIMARY KEY (`ID_MATKUL`,`ID_DOSEN`),
  KEY `FK_MENGAJAR2` (`ID_DOSEN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK40011', 'D001', '1');
INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK4003', 'D0013', '5');
INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK4003', 'D004', '13');
INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK4004', 'D003', '11');
INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK4004', 'D009', '3');
INSERT INTO `mengajar` (`ID_MATKUL`, `ID_DOSEN`, `ID_MENGAJAR`) VALUES('MK4007', 'D006', '4');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `NIM_MHS` varchar(9) NOT NULL,
  `ID_MATKUL` varchar(10) NOT NULL,
  `NILAI` char(1) NOT NULL,
  PRIMARY KEY (`NIM_MHS`,`ID_MATKUL`),
  KEY `FK_NILAI2` (`ID_MATKUL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4001', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4003', 'B');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4004', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4005', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4006', 'B');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4007', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524028', 'MK001', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524006', 'MK4001', 'A');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4012', 'E');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4008', 'B');
INSERT INTO `nilai` (`NIM_MHS`, `ID_MATKUL`, `NILAI`) VALUES('101524001', 'MK4015', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `ID_RUANGAN` varchar(10) NOT NULL,
  `NAMA_RUANGAN` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_RUANGAN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R006', 'L101');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R005', 'LA OS');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R004', 'LAB JARINGAN');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R003', 'MULTIMEDIA');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R002', 'LAB APPL');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R001', 'LAB DATA BASE');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R007', 'L102');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R008', 'L103');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R009', 'A201');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R010', 'A202');
INSERT INTO `ruangan` (`ID_RUANGAN`, `NAMA_RUANGAN`) VALUES('R011', 'A206');

-- --------------------------------------------------------

--
-- Table structure for table `ss_menu`
--

CREATE TABLE IF NOT EXISTS `ss_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_pid` int(11) DEFAULT NULL,
  `menu` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `active` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_menu`
--

INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(1, 0, 'Sekilas STMIK', 'Sekilas STMIK', 'icon-Referensi', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(1001, 1, 'Sejarah', 'Sejarah', 'icon-sejarah', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(1002, 1, 'Program Studi', 'Program Studi', 'icon-prodi', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(1003, 1, 'Prestasi Akademis', 'Prestasi Akademis', 'icon-prestasi', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(1004, 1, 'Informasi', 'Informasi', 'icon-info', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(2, 0, 'Dashboard', 'Dashboard', 'icon-Dashboard', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(2001, 2, 'Profil', 'Profil', 'icon-mhs', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(2002, 2, 'Nilai Akademis', 'Nilai Akademis', 'icon-nilai', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3, 0, 'Akademik', 'Laporan', 'icon-Laporan', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3001, 3, 'Daftar Dosen', 'Daftar Guru', 'icon-dosen', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3002, 3, 'Daftar Mahasiswa', 'Daftar Mahasiswa', 'icon-mhs', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3003, 3, 'Daftar Nilai', 'Daftar Nilai', 'icon-nilai', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3004, 3, 'Daftar Ruangan', 'Daftar Ruangan', 'icon-ruangan', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3005, 3, 'Daftar Mata Kuliah', 'Daftar Mata Pelajaran', 'icon-matakuliah', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3006, 3, 'Daftar Jadwal Mata Kuliah', 'Daftar Jadwal Mata Kuliah', 'icon-jadwal', 1);
INSERT INTO `ss_menu` (`menu_id`, `menu_pid`, `menu`, `title`, `icon`, `active`) VALUES(3007, 3, 'Daftar Jadwal Mengajar', 'Daftar Jadwal Mengajar', 'icon-mengajar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_privilege`
--

CREATE TABLE IF NOT EXISTS `ss_privilege` (
  `user_id` varchar(32) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `flag` smallint(6) DEFAULT NULL,
  KEY `fk_privilege_menu` (`menu_id`),
  KEY `fk_user_privilege` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_privilege`
--

INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 1, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 1001, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 1002, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 1003, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 1004, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 2, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 2002, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3001, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3002, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3003, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3004, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3005, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3006, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 1, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 1001, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 1002, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 1003, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 1004, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 2, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 2001, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 2002, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3001, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3002, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3003, 0);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3004, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3005, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3006, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('Admin', 3007, 1);
INSERT INTO `ss_privilege` (`user_id`, `menu_id`, `flag`) VALUES('101524001', 3007, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user`
--

CREATE TABLE IF NOT EXISTS `ss_user` (
  `user_id` varchar(32) NOT NULL,
  `usergroup_id` varchar(16) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_is_a` (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_user`
--

INSERT INTO `ss_user` (`user_id`, `usergroup_id`, `username`, `password`, `status`) VALUES('admin', 'Administrator', 'administrator', 'demo', 1);
INSERT INTO `ss_user` (`user_id`, `usergroup_id`, `username`, `password`, `status`) VALUES('101524001', 'Mahasiswa', 'mahasiswa', 'demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_usergroup`
--

CREATE TABLE IF NOT EXISTS `ss_usergroup` (
  `usergroup_id` varchar(16) NOT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_usergroup`
--

INSERT INTO `ss_usergroup` (`usergroup_id`) VALUES('Administrator');
INSERT INTO `ss_usergroup` (`usergroup_id`) VALUES('Mahasiswa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
