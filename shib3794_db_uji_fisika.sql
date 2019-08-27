-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2019 at 07:30 AM
-- Server version: 10.2.26-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shib3794_db_uji_fisika`
--
CREATE DATABASE IF NOT EXISTS `shib3794_db_uji_fisika` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shib3794_db_uji_fisika`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_type_test`
--

CREATE TABLE `tb_m_type_test` (
  `id` int(11) NOT NULL,
  `code_test` char(3) NOT NULL,
  `name_test` varchar(45) NOT NULL,
  `alias_test` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_m_type_test`
--

TRUNCATE TABLE `tb_m_type_test`;
--
-- Dumping data for table `tb_m_type_test`
--

INSERT INTO `tb_m_type_test` (`id`, `code_test`, `name_test`, `alias_test`) VALUES
(1, 'DMN', 'Pengujian Pemeriksaaan dan Dimensi Sudut Kusu', 'Uji Dimensi'),
(2, 'TTL', 'Pengujian Tetal Benang dan Anyaman Kain', 'Uji Tetal'),
(3, 'BNG', 'Pengujian Nomor Benang', 'Uji Nomor Benang'),
(4, 'TRK', 'Pengujian Kekuatan Tarik', 'Uji Kuat Tarik'),
(5, 'SBK', 'Pengujian Kekuatan Sobek (Elmendorf)', 'Uji Kuat Sobek'),
(6, 'TBS', 'Pengujian Daya Tembus Udara', 'Uji Daya Tembus'),
(7, 'TWS', 'Pengujian Kain Twist', 'Uji Twist');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservasi`
--

CREATE TABLE `tb_reservasi` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `check_in_date` date NOT NULL,
  `sample_type` varchar(45) NOT NULL,
  `sample_qty` varchar(45) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `img_url` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_reservasi`
--

TRUNCATE TABLE `tb_reservasi`;
--
-- Dumping data for table `tb_reservasi`
--

INSERT INTO `tb_reservasi` (`id`, `wo_no`, `check_in_date`, `sample_type`, `sample_qty`, `company_name`, `img_url`, `status`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(1, '647/EV/IV/2019', '2019-04-29', 'Kain', '1 CONTOH KAIN HITAM', '', NULL, 'OPEN', 'SYS', '2019-05-04 11:50:19', NULL, NULL),
(2, '648/EV/V/2019', '2019-05-16', 'Kain', '1 Contoh Kain Putih', '', NULL, 'OPEN', 'SYS', '2019-05-16 08:52:11', NULL, NULL),
(3, '650/EV/V/2019', '2019-05-16', 'Benang', '1 Ikat', '', NULL, 'OPEN', 'SYS', '2019-05-16 08:52:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservasi_include`
--

CREATE TABLE `tb_reservasi_include` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `code_test` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_reservasi_include`
--

TRUNCATE TABLE `tb_reservasi_include`;
--
-- Dumping data for table `tb_reservasi_include`
--

INSERT INTO `tb_reservasi_include` (`id`, `wo_no`, `code_test`) VALUES
(1, '647/EV/IV/2019', 'DMN'),
(2, '647/EV/IV/2019', 'TTL'),
(3, '647/EV/IV/2019', 'BNG'),
(4, '647/EV/IV/2019', 'TRK'),
(5, '647/EV/IV/2019', 'SBK'),
(6, '647/EV/IV/2019', 'TBS'),
(7, '647/EV/IV/2019', 'TWS'),
(8, '648/EV/V/2019', 'DMN'),
(9, '648/EV/V/2019', 'TTL'),
(10, '648/EV/V/2019', 'BNG'),
(11, '648/EV/V/2019', 'TRK'),
(12, '648/EV/V/2019', 'SBK'),
(13, '648/EV/V/2019', 'TBS'),
(14, '650/EV/V/2019', 'BNG');

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_benang`
--

CREATE TABLE `tb_uji_benang` (
  `wo_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `test_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `is_staple` tinyint(1) NOT NULL,
  `stap_lusi` int(11) NOT NULL,
  `stap_pakan` int(11) NOT NULL,
  `is_fila` tinyint(1) NOT NULL,
  `fila_lusi` int(11) NOT NULL,
  `fila_pakan` int(11) NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `modified_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_benang`
--

TRUNCATE TABLE `tb_uji_benang`;
--
-- Dumping data for table `tb_uji_benang`
--

INSERT INTO `tb_uji_benang` (`wo_no`, `test_type`, `is_staple`, `stap_lusi`, `stap_pakan`, `is_fila`, `fila_lusi`, `fila_pakan`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
('647/EV/IV/2019', 'BNG', 1, 1, 1, 0, 0, 0, '', '0000-00-00 00:00:00', 'SYS', '2019-05-04 20:13:51'),
('648/EV/V/2019', 'BNG', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
('650/EV/V/2019', 'BNG', 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_benang_filamen`
--

CREATE TABLE `tb_uji_benang_filamen` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_benang_filamen`
--

TRUNCATE TABLE `tb_uji_benang_filamen`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_benang_staple`
--

CREATE TABLE `tb_uji_benang_staple` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_benang_staple`
--

TRUNCATE TABLE `tb_uji_benang_staple`;
--
-- Dumping data for table `tb_uji_benang_staple`
--

INSERT INTO `tb_uji_benang_staple` (`id`, `wo`, `col`, `val`) VALUES
(1, '647/EV/IV/2019', 'staple_lusi_col_1_row_1', 26.2),
(2, '647/EV/IV/2019', 'staple_pakan_col_1_row_1', 27.4),
(3, '647/EV/IV/2019', 'staple_lusi_col_1_row_2', 26.2),
(4, '647/EV/IV/2019', 'staple_pakan_col_1_row_2', 27.4),
(5, '647/EV/IV/2019', 'staple_lusi_col_1_row_3', 26.3),
(6, '647/EV/IV/2019', 'staple_pakan_col_1_row_3', 27.4),
(7, '647/EV/IV/2019', 'staple_lusi_col_1_row_4', 26.2),
(8, '647/EV/IV/2019', 'staple_pakan_col_1_row_4', 27.3),
(9, '647/EV/IV/2019', 'staple_lusi_col_1_row_5', 26.2),
(10, '647/EV/IV/2019', 'staple_pakan_col_1_row_5', 27.4),
(11, '647/EV/IV/2019', 'staple_lusi_col_1_row_6', 26.2),
(12, '647/EV/IV/2019', 'staple_pakan_col_1_row_6', 27.3),
(13, '647/EV/IV/2019', 'staple_lusi_col_1_row_7', 26.2),
(14, '647/EV/IV/2019', 'staple_pakan_col_1_row_7', 27.4),
(15, '647/EV/IV/2019', 'staple_lusi_col_1_row_8', 26.2),
(16, '647/EV/IV/2019', 'staple_pakan_col_1_row_8', 27.4),
(17, '647/EV/IV/2019', 'staple_lusi_col_1_row_9', 26.2),
(18, '647/EV/IV/2019', 'staple_pakan_col_1_row_9', 27.4),
(19, '647/EV/IV/2019', 'staple_lusi_col_1_row_10', 26.2),
(20, '647/EV/IV/2019', 'staple_pakan_col_1_row_10', 27.3),
(21, '647/EV/IV/2019', 'staple_lusi_col_1_row_11', 26.3),
(22, '647/EV/IV/2019', 'staple_pakan_col_1_row_11', 27.4),
(23, '647/EV/IV/2019', 'staple_lusi_col_1_row_12', 26.2),
(24, '647/EV/IV/2019', 'staple_pakan_col_1_row_12', 27.4),
(25, '647/EV/IV/2019', 'staple_lusi_col_1_row_13', 26.2),
(26, '647/EV/IV/2019', 'staple_pakan_col_1_row_13', 27.3),
(27, '647/EV/IV/2019', 'staple_lusi_col_1_row_14', 26.2),
(28, '647/EV/IV/2019', 'staple_pakan_col_1_row_14', 27.4),
(29, '647/EV/IV/2019', 'staple_lusi_col_1_row_15', 26.1),
(30, '647/EV/IV/2019', 'staple_pakan_col_1_row_15', 27.4),
(31, '647/EV/IV/2019', 'staple_lusi_col_1_row_16', 26.2),
(32, '647/EV/IV/2019', 'staple_pakan_col_1_row_16', 27.4),
(33, '647/EV/IV/2019', 'staple_lusi_col_1_row_17', 26.2),
(34, '647/EV/IV/2019', 'staple_pakan_col_1_row_17', 27.4),
(35, '647/EV/IV/2019', 'staple_lusi_col_1_row_18', 26.2),
(36, '647/EV/IV/2019', 'staple_pakan_col_1_row_18', 27.4),
(37, '647/EV/IV/2019', 'staple_lusi_col_1_row_19', 26.2),
(38, '647/EV/IV/2019', 'staple_pakan_col_1_row_19', 27.3),
(39, '647/EV/IV/2019', 'staple_lusi_col_1_row_20', 26.2),
(40, '647/EV/IV/2019', 'staple_pakan_col_1_row_20', 27.3),
(41, '647/EV/IV/2019', 'staple_pakan_col_1_row_21', 27.3),
(42, '647/EV/IV/2019', 'staple_pakan_col_1_row_22', 27.4),
(43, '647/EV/IV/2019', 'staple_pakan_col_1_row_23', 27.4),
(44, '647/EV/IV/2019', 'staple_pakan_col_1_row_24', 27.4),
(45, '647/EV/IV/2019', 'staple_pakan_col_1_row_25', 27.4),
(46, '647/EV/IV/2019', 'staple_pakan_col_1_row_26', 27.4),
(47, '647/EV/IV/2019', 'staple_pakan_col_1_row_27', 27.4),
(48, '647/EV/IV/2019', 'staple_pakan_col_1_row_28', 27.3),
(49, '647/EV/IV/2019', 'staple_pakan_col_1_row_29', 27.3),
(50, '647/EV/IV/2019', 'staple_pakan_col_1_row_30', 27.3),
(51, '647/EV/IV/2019', 'staple_lusi_weight_col_1', 0.3524),
(52, '647/EV/IV/2019', 'staple_pakan_weight_col_1', 0.2648),
(53, '647/EV/IV/2019', 'staple_lusi_cv_col_1', 0),
(54, '647/EV/IV/2019', 'staple_pakan_cv_col_1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_dimensi`
--

CREATE TABLE `tb_uji_dimensi` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `weight_per_meter_square` double NOT NULL,
  `dm_width_1` double DEFAULT 0,
  `dm_width_2` double DEFAULT 0,
  `dm_width_3` double DEFAULT 0,
  `dm_width_4` double DEFAULT 0,
  `dm_width_5` double DEFAULT 0,
  `dm_height_1` double DEFAULT 0,
  `dm_height_2` double DEFAULT 0,
  `dm_height_3` double DEFAULT 0,
  `dm_height_4` double DEFAULT 0,
  `dm_height_5` double DEFAULT 0,
  `dm_thick_1` double DEFAULT 0,
  `dm_thick_2` double DEFAULT 0,
  `dm_thick_3` double DEFAULT 0,
  `dm_thick_4` double DEFAULT 0,
  `dm_thick_5` double DEFAULT 0,
  `dm_weight_1` double DEFAULT 0,
  `dm_weight_2` double DEFAULT 0,
  `dm_weight_3` double DEFAULT 0,
  `dm_weight_4` double DEFAULT 0,
  `dm_weight_5` double DEFAULT 0,
  `dm_notes` text NOT NULL,
  `ks_l_interface_1` double DEFAULT 0,
  `ks_l_interface_2` double DEFAULT 0,
  `ks_l_interface_3` double DEFAULT 0,
  `ks_l_interface_4` double DEFAULT 0,
  `ks_l_interface_5` double DEFAULT 0,
  `ks_l_back_1` double DEFAULT 0,
  `ks_l_back_2` double DEFAULT NULL,
  `ks_l_back_3` double DEFAULT NULL,
  `ks_l_back_4` double DEFAULT NULL,
  `ks_l_back_5` double DEFAULT NULL,
  `ks_p_interface_1` double DEFAULT 0,
  `ks_p_interface_2` double DEFAULT 0,
  `ks_p_interface_3` double DEFAULT 0,
  `ks_p_interface_4` double DEFAULT 0,
  `ks_p_interface_5` double DEFAULT 0,
  `ks_p_back_1` double DEFAULT 0,
  `ks_p_back_2` double DEFAULT 0,
  `ks_p_back_3` double DEFAULT 0,
  `ks_p_back_4` double DEFAULT NULL,
  `ks_p_back_5` double DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_uji_dimensi`
--

TRUNCATE TABLE `tb_uji_dimensi`;
--
-- Dumping data for table `tb_uji_dimensi`
--

INSERT INTO `tb_uji_dimensi` (`id`, `wo_no`, `test_type`, `weight_per_meter_square`, `dm_width_1`, `dm_width_2`, `dm_width_3`, `dm_width_4`, `dm_width_5`, `dm_height_1`, `dm_height_2`, `dm_height_3`, `dm_height_4`, `dm_height_5`, `dm_thick_1`, `dm_thick_2`, `dm_thick_3`, `dm_thick_4`, `dm_thick_5`, `dm_weight_1`, `dm_weight_2`, `dm_weight_3`, `dm_weight_4`, `dm_weight_5`, `dm_notes`, `ks_l_interface_1`, `ks_l_interface_2`, `ks_l_interface_3`, `ks_l_interface_4`, `ks_l_interface_5`, `ks_l_back_1`, `ks_l_back_2`, `ks_l_back_3`, `ks_l_back_4`, `ks_l_back_5`, `ks_p_interface_1`, `ks_p_interface_2`, `ks_p_interface_3`, `ks_p_interface_4`, `ks_p_interface_5`, `ks_p_back_1`, `ks_p_back_2`, `ks_p_back_3`, `ks_p_back_4`, `ks_p_back_5`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(1, '647/EV/IV/2019', 'DMN', 99.76, 1.522, 1.521, 1.522, 1.522, 1.522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8957, 1.8897, 1.9044, 1.8928, 1.8882, '', 130, 130, 130, 135, 135, 130, 130, 130, 130, 130, 153, 153, 153, 153, 153, 155, 155, 155, 155, 155, NULL, '0000-00-00 00:00:00', 'SYS', '2019-08-02 15:46:50'),
(2, '648/EV/V/2019', 'DMN', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_sobek`
--

CREATE TABLE `tb_uji_sobek` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `weight` double NOT NULL,
  `ks_lusi_1` double DEFAULT 0,
  `ks_lusi_2` double DEFAULT 0,
  `ks_lusi_3` double DEFAULT 0,
  `ks_lusi_4` double DEFAULT 0,
  `ks_lusi_5` double DEFAULT 0,
  `ks_pakan_1` double DEFAULT 0,
  `ks_pakan_2` double DEFAULT 0,
  `ks_pakan_3` double DEFAULT 0,
  `ks_pakan_4` double DEFAULT 0,
  `ks_pakan_5` double DEFAULT 0,
  `cv_lusi` double NOT NULL,
  `cv_pakan` double NOT NULL,
  `notes` varchar(45) NOT NULL,
  `url_file_lusi` text NOT NULL,
  `url_file_pakan` text NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_uji_sobek`
--

TRUNCATE TABLE `tb_uji_sobek`;
--
-- Dumping data for table `tb_uji_sobek`
--

INSERT INTO `tb_uji_sobek` (`id`, `wo_no`, `test_type`, `weight`, `ks_lusi_1`, `ks_lusi_2`, `ks_lusi_3`, `ks_lusi_4`, `ks_lusi_5`, `ks_pakan_1`, `ks_pakan_2`, `ks_pakan_3`, `ks_pakan_4`, `ks_pakan_5`, `cv_lusi`, `cv_pakan`, `notes`, `url_file_lusi`, `url_file_pakan`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(0, '647/EV/IV/2019', 'SBK', 13600, 6540, 6810, 6780, 6710, 6560, 3190, 3230, 3250, 3240, 3060, 1.9, 2.5, '', '/files/sobek/lusi-1.jpeg', '/files/sobek/pakan-1.jpeg', NULL, '0000-00-00 00:00:00', 'SYS', '2019-05-17 03:39:38'),
(0, '648/EV/V/2019', 'SBK', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', NULL, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_tarik`
--

CREATE TABLE `tb_uji_tarik` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `ks_l_interface_1` double DEFAULT 0,
  `ks_l_interface_2` double DEFAULT 0,
  `ks_l_interface_3` double DEFAULT 0,
  `ks_l_interface_4` double DEFAULT 0,
  `ks_l_interface_5` double DEFAULT 0,
  `ks_l_back_1` double DEFAULT 0,
  `ks_l_back_2` double DEFAULT 0,
  `ks_l_back_3` double DEFAULT 0,
  `ks_l_back_4` double DEFAULT 0,
  `ks_l_back_5` double DEFAULT 0,
  `ks_p_interface_1` double DEFAULT 0,
  `ks_p_interface_2` double DEFAULT 0,
  `ks_p_interface_3` double DEFAULT 0,
  `ks_p_interface_4` double DEFAULT 0,
  `ks_p_interface_5` double DEFAULT 0,
  `ks_p_back_1` double DEFAULT 0,
  `ks_p_back_2` double DEFAULT 0,
  `ks_p_back_3` double DEFAULT 0,
  `ks_p_back_4` double DEFAULT 0,
  `ks_p_back_5` double DEFAULT 0,
  `cv_row_1` double NOT NULL,
  `cv_row_2` double NOT NULL,
  `cv_row_3` double NOT NULL,
  `cv_row_4` double NOT NULL,
  `notes` varchar(200) NOT NULL,
  `url_file` text NOT NULL,
  `url_file2` text NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_uji_tarik`
--

TRUNCATE TABLE `tb_uji_tarik`;
--
-- Dumping data for table `tb_uji_tarik`
--

INSERT INTO `tb_uji_tarik` (`id`, `wo_no`, `test_type`, `ks_l_interface_1`, `ks_l_interface_2`, `ks_l_interface_3`, `ks_l_interface_4`, `ks_l_interface_5`, `ks_l_back_1`, `ks_l_back_2`, `ks_l_back_3`, `ks_l_back_4`, `ks_l_back_5`, `ks_p_interface_1`, `ks_p_interface_2`, `ks_p_interface_3`, `ks_p_interface_4`, `ks_p_interface_5`, `ks_p_back_1`, `ks_p_back_2`, `ks_p_back_3`, `ks_p_back_4`, `ks_p_back_5`, `cv_row_1`, `cv_row_2`, `cv_row_3`, `cv_row_4`, `notes`, `url_file`, `url_file2`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(0, '647/EV/IV/2019', 'TRK', 43.362, 44.088, 45.405, 47.879, 44.874, 27.65, 27.633, 28.948, 30.118, 28.558, 22.493, 22.79, 22.025, 23.124, 23.38, 23.333, 23.529, 23.05, 24.375, 23.776, 3.824, 3.612, 2.334, 2.128, '', '/files/tarik/P1-1.jpeg', '/files/tarik/P2.jpeg', NULL, '0000-00-00 00:00:00', 'SYS', '2019-05-04 19:51:02'),
(0, '648/EV/V/2019', 'TRK', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', NULL, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_tetal`
--

CREATE TABLE `tb_uji_tetal` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `test_type` varchar(45) DEFAULT NULL,
  `tl_ls_1` double DEFAULT NULL,
  `tl_ls_2` double DEFAULT 0,
  `tl_ls_3` double DEFAULT 0,
  `tl_ls_4` double DEFAULT 0,
  `tl_ls_5` double DEFAULT 0,
  `tl_notes` varchar(200) NOT NULL,
  `tl_pk_1` double DEFAULT 0,
  `tl_pk_2` double DEFAULT 0,
  `tl_pk_3` double DEFAULT 0,
  `tl_pk_4` double DEFAULT 0,
  `tl_pk_5` double DEFAULT 0,
  `ay_mk_1` varchar(200) DEFAULT NULL,
  `ay_mk_2` varchar(200) DEFAULT NULL,
  `url_file` text NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_uji_tetal`
--

TRUNCATE TABLE `tb_uji_tetal`;
--
-- Dumping data for table `tb_uji_tetal`
--

INSERT INTO `tb_uji_tetal` (`id`, `wo_no`, `test_type`, `tl_ls_1`, `tl_ls_2`, `tl_ls_3`, `tl_ls_4`, `tl_ls_5`, `tl_notes`, `tl_pk_1`, `tl_pk_2`, `tl_pk_3`, `tl_pk_4`, `tl_pk_5`, `ay_mk_1`, `ay_mk_2`, `url_file`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(1, '647/EV/IV/2019', 'TTL', 80, 80, 80, 80, 80, '', 106, 106, 106, 106, 106, '2/2', '2/2', '', NULL, NULL, 'SYS', '2019-05-17 03:32:58'),
(2, '648/EV/V/2019', 'TTL', NULL, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist`
--

CREATE TABLE `tb_uji_twist` (
  `wo_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `test_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `twist_type` enum('Antihan','Gintiran') COLLATE utf8_unicode_ci NOT NULL,
  `is_ath_staple` tinyint(1) NOT NULL,
  `ath_stap_lusi` int(11) NOT NULL,
  `ath_stap_pakan` int(11) NOT NULL,
  `is_ath_fila` tinyint(1) NOT NULL,
  `ath_fila_lusi` int(11) NOT NULL,
  `ath_fila_pakan` int(11) NOT NULL,
  `gtr_type` enum('Non','Antihan') COLLATE utf8_unicode_ci NOT NULL,
  `gtr_non_ath_lusi` int(11) NOT NULL,
  `gtr_non_ath_pakan` int(11) NOT NULL,
  `is_gtr_with_ath` tinyint(1) NOT NULL,
  `gth_ath_gtr_lusi` int(11) NOT NULL,
  `gth_ath_gtr_pakan` int(11) NOT NULL,
  `is_gtr_ath_staple` tinyint(1) NOT NULL,
  `gth_ath_stap_lusi` int(11) NOT NULL,
  `gth_ath_stap_pakan` int(11) NOT NULL,
  `is_gtr_ath_fila` tinyint(1) NOT NULL,
  `gth_ath_fila_lusi` int(11) NOT NULL,
  `gth_ath_fila_pakan` int(11) NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `modified_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist`
--

TRUNCATE TABLE `tb_uji_twist`;
--
-- Dumping data for table `tb_uji_twist`
--

INSERT INTO `tb_uji_twist` (`wo_no`, `test_type`, `twist_type`, `is_ath_staple`, `ath_stap_lusi`, `ath_stap_pakan`, `is_ath_fila`, `ath_fila_lusi`, `ath_fila_pakan`, `gtr_type`, `gtr_non_ath_lusi`, `gtr_non_ath_pakan`, `is_gtr_with_ath`, `gth_ath_gtr_lusi`, `gth_ath_gtr_pakan`, `is_gtr_ath_staple`, `gth_ath_stap_lusi`, `gth_ath_stap_pakan`, `is_gtr_ath_fila`, `gth_ath_fila_lusi`, `gth_ath_fila_pakan`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
('647/EV/IV/2019', 'TWS', 'Gintiran', 0, 0, 0, 0, 0, 0, 'Non', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'SYS', '2019-05-04 22:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_antihan_filamen`
--

CREATE TABLE `tb_uji_twist_antihan_filamen` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_antihan_filamen`
--

TRUNCATE TABLE `tb_uji_twist_antihan_filamen`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_antihan_staple`
--

CREATE TABLE `tb_uji_twist_antihan_staple` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_antihan_staple`
--

TRUNCATE TABLE `tb_uji_twist_antihan_staple`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_gintiran_antihan_filamen`
--

CREATE TABLE `tb_uji_twist_gintiran_antihan_filamen` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_gintiran_antihan_filamen`
--

TRUNCATE TABLE `tb_uji_twist_gintiran_antihan_filamen`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_gintiran_antihan_staple`
--

CREATE TABLE `tb_uji_twist_gintiran_antihan_staple` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_gintiran_antihan_staple`
--

TRUNCATE TABLE `tb_uji_twist_gintiran_antihan_staple`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_gintiran_non_antihan`
--

CREATE TABLE `tb_uji_twist_gintiran_non_antihan` (
  `id` int(11) NOT NULL,
  `wo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_gintiran_non_antihan`
--

TRUNCATE TABLE `tb_uji_twist_gintiran_non_antihan`;
--
-- Dumping data for table `tb_uji_twist_gintiran_non_antihan`
--

INSERT INTO `tb_uji_twist_gintiran_non_antihan` (`id`, `wo`, `col`, `val`) VALUES
(43, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_1', 200),
(44, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_1', 205),
(45, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_2', 195),
(46, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_2', 205),
(47, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_3', 185),
(48, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_3', 205),
(49, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_4', 200),
(50, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_4', 205),
(51, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_5', 195),
(52, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_5', 195),
(53, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_6', 205),
(54, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_6', 200),
(55, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_7', 200),
(56, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_7', 210),
(57, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_8', 210),
(58, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_8', 195),
(59, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_9', 190),
(60, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_9', 200),
(61, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_10', 180),
(62, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_10', 210),
(63, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_11', 200),
(64, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_11', 200),
(65, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_12', 200),
(66, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_12', 205),
(67, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_13', 190),
(68, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_13', 195),
(69, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_14', 200),
(70, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_14', 190),
(71, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_15', 180),
(72, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_15', 200),
(73, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_16', 200),
(74, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_16', 210),
(75, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_17', 195),
(76, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_17', 190),
(77, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_18', 195),
(78, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_18', 205),
(79, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_19', 200),
(80, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_19', 200),
(81, '647/EV/IV/2019', 'gth_non_ath_lusi_col_1_row_20', 205),
(82, '647/EV/IV/2019', 'gth_non_ath_pakan_col_1_row_20', 195),
(83, '647/EV/IV/2019', 'gth_non_ath_lusi_cv_col_1', 4.039),
(84, '647/EV/IV/2019', 'gth_non_ath_pakan_cv_col_1', 3.084);

-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_twist_gintiran_with_antihan`
--

CREATE TABLE `tb_uji_twist_gintiran_with_antihan` (
  `id` int(11) NOT NULL,
  `wo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `col` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `val` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Truncate table before insert `tb_uji_twist_gintiran_with_antihan`
--

TRUNCATE TABLE `tb_uji_twist_gintiran_with_antihan`;
-- --------------------------------------------------------

--
-- Table structure for table `tb_uji_udara`
--

CREATE TABLE `tb_uji_udara` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(45) NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `col_press_drop` double NOT NULL,
  `col_test_area` double NOT NULL,
  `col_orifice` double NOT NULL,
  `col_vibrate_1` double DEFAULT 0,
  `col_vibrate_2` double DEFAULT 0,
  `col_vibrate_3` double DEFAULT 0,
  `col_vibrate_4` double DEFAULT 0,
  `col_vibrate_5` double DEFAULT 0,
  `col_vibrate_6` double DEFAULT 0,
  `col_vibrate_7` double DEFAULT 0,
  `col_vibrate_8` double DEFAULT 0,
  `col_vibrate_9` double DEFAULT 0,
  `col_vibrate_10` double DEFAULT 0,
  `col_sd` double NOT NULL,
  `col_cv` double NOT NULL,
  `notes` varchar(45) NOT NULL,
  `url_file` text NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tb_uji_udara`
--

TRUNCATE TABLE `tb_uji_udara`;
--
-- Dumping data for table `tb_uji_udara`
--

INSERT INTO `tb_uji_udara` (`id`, `wo_no`, `test_type`, `col_press_drop`, `col_test_area`, `col_orifice`, `col_vibrate_1`, `col_vibrate_2`, `col_vibrate_3`, `col_vibrate_4`, `col_vibrate_5`, `col_vibrate_6`, `col_vibrate_7`, `col_vibrate_8`, `col_vibrate_9`, `col_vibrate_10`, `col_sd`, `col_cv`, `notes`, `url_file`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(0, '647/EV/IV/2019', 'TBS', 125, 38, 2, 356.6, 401.2, 387.6, 376.5, 415.1, 417.7, 432.1, 408.6, 394.5, 380.3, 0, 5.7, '', '', NULL, '0000-00-00 00:00:00', 'SYS', '2019-05-04 20:33:10'),
(0, '648/EV/V/2019', 'TBS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, '0000-00-00 00:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_m_type_test`
--
ALTER TABLE `tb_m_type_test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `code_test_UNIQUE` (`code_test`),
  ADD UNIQUE KEY `name_test_UNIQUE` (`name_test`);

--
-- Indexes for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `wo_no_UNIQUE` (`wo_no`);

--
-- Indexes for table `tb_reservasi_include`
--
ALTER TABLE `tb_reservasi_include`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `tb_uji_benang`
--
ALTER TABLE `tb_uji_benang`
  ADD PRIMARY KEY (`wo_no`),
  ADD UNIQUE KEY `wo_no` (`wo_no`),
  ADD KEY `wo_no_2` (`wo_no`);

--
-- Indexes for table `tb_uji_benang_filamen`
--
ALTER TABLE `tb_uji_benang_filamen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_benang_staple`
--
ALTER TABLE `tb_uji_benang_staple`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_dimensi`
--
ALTER TABLE `tb_uji_dimensi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `wo_no_UNIQUE` (`wo_no`);

--
-- Indexes for table `tb_uji_tetal`
--
ALTER TABLE `tb_uji_tetal`
  ADD PRIMARY KEY (`id`,`wo_no`);

--
-- Indexes for table `tb_uji_twist`
--
ALTER TABLE `tb_uji_twist`
  ADD PRIMARY KEY (`wo_no`),
  ADD UNIQUE KEY `wo_no` (`wo_no`),
  ADD KEY `wo_no_2` (`wo_no`);

--
-- Indexes for table `tb_uji_twist_antihan_filamen`
--
ALTER TABLE `tb_uji_twist_antihan_filamen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_twist_antihan_staple`
--
ALTER TABLE `tb_uji_twist_antihan_staple`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_twist_gintiran_antihan_filamen`
--
ALTER TABLE `tb_uji_twist_gintiran_antihan_filamen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_twist_gintiran_antihan_staple`
--
ALTER TABLE `tb_uji_twist_gintiran_antihan_staple`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_twist_gintiran_non_antihan`
--
ALTER TABLE `tb_uji_twist_gintiran_non_antihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_uji_twist_gintiran_with_antihan`
--
ALTER TABLE `tb_uji_twist_gintiran_with_antihan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_reservasi_include`
--
ALTER TABLE `tb_reservasi_include`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_uji_benang_filamen`
--
ALTER TABLE `tb_uji_benang_filamen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_uji_benang_staple`
--
ALTER TABLE `tb_uji_benang_staple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tb_uji_dimensi`
--
ALTER TABLE `tb_uji_dimensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_uji_tetal`
--
ALTER TABLE `tb_uji_tetal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_uji_twist_antihan_filamen`
--
ALTER TABLE `tb_uji_twist_antihan_filamen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_uji_twist_antihan_staple`
--
ALTER TABLE `tb_uji_twist_antihan_staple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_uji_twist_gintiran_antihan_filamen`
--
ALTER TABLE `tb_uji_twist_gintiran_antihan_filamen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_uji_twist_gintiran_antihan_staple`
--
ALTER TABLE `tb_uji_twist_gintiran_antihan_staple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_uji_twist_gintiran_non_antihan`
--
ALTER TABLE `tb_uji_twist_gintiran_non_antihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tb_uji_twist_gintiran_with_antihan`
--
ALTER TABLE `tb_uji_twist_gintiran_with_antihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
