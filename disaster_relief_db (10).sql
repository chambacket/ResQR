-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2026 at 02:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disaster_relief_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `family_member_id` int(11) DEFAULT NULL,
  `attendance_date` date NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_time` time DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `scanned_by` int(11) DEFAULT NULL,
  `qr_token_used` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `event_id`, `resident_id`, `family_member_id`, `attendance_date`, `check_in_time`, `check_out_time`, `purpose`, `scanned_by`, `qr_token_used`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(118, 2, 19, 73, '2026-03-20', '21:30:31', NULL, 'Intramurals', 13, '49f6353b9926a1ad1662fcda0b19cf209d8cfb4985896d130f280b942a619c29', 'active', NULL, '2026-03-20 21:30:31', '2026-03-20 21:30:31'),
(119, 2, 59, NULL, '2026-03-24', '10:20:54', NULL, 'Intramurals', 13, '14bbd3c6fd774354a2270ea10b823685', 'active', NULL, '2026-03-24 10:20:54', '2026-03-24 10:20:54'),
(120, 2, 64, NULL, '2026-03-24', '13:49:08', NULL, 'Intramurals', 13, '5552ba0203fd63b6631314d3ae521ed7', 'active', NULL, '2026-03-24 13:49:08', '2026-03-24 13:49:08'),
(121, 2, 65, NULL, '2026-03-24', '14:05:30', NULL, 'Intramurals', 13, '2555cb7ebb5a55731266c4b306f29657', 'active', NULL, '2026-03-24 14:05:30', '2026-03-24 14:05:30'),
(122, 2, 69, NULL, '2026-03-24', '14:21:32', NULL, 'Intramurals', 13, 'afaa996a3e28b5faa2897ae4840c81e4', 'active', NULL, '2026-03-24 14:21:32', '2026-03-24 14:21:32'),
(123, 2, 70, NULL, '2026-03-24', '14:22:26', NULL, 'Intramurals', 13, 'a8010809c63f526775951ebbbd4b77fa', 'active', NULL, '2026-03-24 14:22:26', '2026-03-24 14:22:26'),
(124, 5, 191, NULL, '2026-04-06', '17:15:09', NULL, 'Testing', 13, '1a1ae1559c2aa8af0718edd6896c192f', 'active', NULL, '2026-04-06 17:15:10', '2026-04-06 17:15:10'),
(132, 7, 1798, NULL, '2026-04-16', '20:19:20', NULL, 'SIMULATION', 13, 'f87a07a2dfd585c24921f755f931e36d', 'active', NULL, '2026-04-16 20:19:21', '2026-04-16 20:19:21'),
(133, 7, 1799, NULL, '2026-04-16', '20:49:21', NULL, 'SIMULATION', 13, '173437d65cc271a65a15ca8acc3fe535', 'active', NULL, '2026-04-16 20:49:21', '2026-04-16 20:49:21'),
(134, 7, 1799, 5861, '2026-04-16', '20:49:55', NULL, 'SIMULATION', 13, '33c183d026809fa0b3e6fce50bd97d49d185b88439dbb0762db2d7350f36122e', 'active', NULL, '2026-04-16 20:49:55', '2026-04-16 20:49:55'),
(135, 7, 1799, 5862, '2026-04-16', '20:50:13', NULL, 'SIMULATION', 13, '8257924b2349f11e09ed5b97be408cf2b15b9ccaf53193121486abce67344646', 'active', NULL, '2026-04-16 20:50:13', '2026-04-16 20:50:13'),
(136, 7, 1799, 5863, '2026-04-16', '20:50:22', NULL, 'SIMULATION', 13, '05b89f1684947e4af264fdc735f2a907503f3236b011467587bc74cee6d99bc4', 'active', NULL, '2026-04-16 20:50:22', '2026-04-16 20:50:22'),
(137, 7, 1800, NULL, '2026-04-16', '20:52:44', NULL, 'SIMULATION', 13, '0f4fbc07880e4d94cf3351e943f90f6e', 'active', NULL, '2026-04-16 20:52:44', '2026-04-16 20:52:44'),
(138, 7, 1800, 5865, '2026-04-16', '20:52:57', NULL, 'SIMULATION', 13, '22d73d9901d79c2290d0a2828151c09bddeaee4b3bd9d04558b544e3ef300f85', 'active', NULL, '2026-04-16 20:52:57', '2026-04-16 20:52:57'),
(139, 7, 1800, 5866, '2026-04-16', '20:53:09', NULL, 'SIMULATION', 13, 'c349179be11009b4203f18b2df6e3300b3c4bce68111ba629bdf9e44337fd2a2', 'active', NULL, '2026-04-16 20:53:09', '2026-04-16 20:53:09'),
(140, 7, 1800, 5867, '2026-04-16', '20:53:21', NULL, 'SIMULATION', 13, '3fd2fab01f058331b37d85a3b1199f586b67df2b412f909498d697716ce66c1c', 'active', NULL, '2026-04-16 20:53:21', '2026-04-16 20:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `batch_distributions`
--

CREATE TABLE `batch_distributions` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `batch_id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `family_member_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) NOT NULL,
  `quantity_distributed` int(11) NOT NULL,
  `distribution_date` datetime NOT NULL,
  `qr_code_scanned` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'completed',
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch_distributions`
--

INSERT INTO `batch_distributions` (`id`, `event_id`, `batch_id`, `resident_id`, `family_member_id`, `distributor_id`, `quantity_distributed`, `distribution_date`, `qr_code_scanned`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(160, 2, 41, NULL, NULL, 13, 3, '2026-03-20 21:32:44', '52ee823fa08abc189a76e9bb878f8054', 'completed', 'Claimed by: Isah Belle Marie Guidaben (via Household QR)', '2026-03-20 21:32:44', '2026-03-20 21:32:44'),
(161, 2, 43, NULL, NULL, 13, 5, '2026-03-20 21:32:44', '52ee823fa08abc189a76e9bb878f8054', 'completed', 'Claimed by: Isah Belle Marie Guidaben (via Household QR)', '2026-03-20 21:32:44', '2026-03-20 21:32:44'),
(162, 2, 44, NULL, NULL, 13, 5, '2026-03-20 21:32:44', '52ee823fa08abc189a76e9bb878f8054', 'completed', 'Claimed by: Isah Belle Marie Guidaben (via Household QR)', '2026-03-20 21:32:44', '2026-03-20 21:32:44'),
(163, 5, 47, NULL, NULL, 13, 3, '2026-04-06 17:31:54', '71d6510e2dc965825a4080f7c59f94ec', 'completed', 'Claimed by: MELOGIE BABIA (via Household QR)', '2026-04-06 17:31:54', '2026-04-06 17:31:54'),
(164, 5, 49, NULL, NULL, 13, 1, '2026-04-06 17:31:54', '71d6510e2dc965825a4080f7c59f94ec', 'completed', 'Claimed by: MELOGIE BABIA (via Household QR)', '2026-04-06 17:31:54', '2026-04-06 17:31:54'),
(175, 7, 47, NULL, NULL, 13, 3, '2026-04-16 20:20:09', '64f7734f64b04d971fe3d5f0e79bde14', 'completed', 'Claimed by: JUSTIN PABILLORE (via Household QR)', '2026-04-16 20:20:09', '2026-04-16 20:20:09'),
(176, 7, 49, NULL, NULL, 13, 1, '2026-04-16 20:20:09', '64f7734f64b04d971fe3d5f0e79bde14', 'completed', 'Claimed by: JUSTIN PABILLORE (via Household QR)', '2026-04-16 20:20:09', '2026-04-16 20:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `batch_status_logs`
--

CREATE TABLE `batch_status_logs` (
  `id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch_status_logs`
--

INSERT INTO `batch_status_logs` (`id`, `batch_id`, `status`, `location`, `changed_by`, `remarks`, `created_at`) VALUES
(12, 41, 'in_transit', 'Bonbon', 13, 'Dispatched to barangay', '2026-03-02 12:15:05'),
(13, 41, 'received', 'Bonbon', 13, 'Received by barangay', '2026-03-02 12:15:11'),
(16, 43, 'in_transit', 'Bonbon', 13, 'Dispatched to barangay', '2026-03-02 23:50:57'),
(17, 43, 'received', 'Bonbon', 13, 'Received by barangay', '2026-03-02 23:51:06'),
(18, 44, 'in_transit', 'Bonbon', 13, 'Dispatched to barangay', '2026-03-02 23:51:21'),
(19, 44, 'received', 'Bonbon', 13, 'Received by barangay', '2026-03-02 23:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `distribution_logs`
--

CREATE TABLE `distribution_logs` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `family_member_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) NOT NULL,
  `claimed_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('active','closed') DEFAULT 'active',
  `is_active` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `description`, `start_date`, `end_date`, `status`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(7, 'SIMULATION', '', '2026-04-16', '2026-04-16', 'active', 1, 2, '2026-04-16 15:15:55', '2026-04-16 15:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_photo_front` varchar(255) DEFAULT NULL,
  `id_photo_back` varchar(255) DEFAULT NULL,
  `birth_certificate` varchar(255) DEFAULT NULL,
  `qr_code_token` varchar(255) DEFAULT NULL,
  `qr_code_id` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`id`, `resident_id`, `member_id`, `name`, `relation`, `birthdate`, `age`, `sex`, `education`, `occupation`, `remarks`, `photo`, `id_photo_front`, `id_photo_back`, `birth_certificate`, `qr_code_token`, `qr_code_id`, `status`, `created_at`, `updated_at`) VALUES
(22379, 8171, '0001-01', 'EDUARDO INTOD', 'Husband', '1971-08-18', 54, 'Male', 'ELEM', 'Carpenter', '', NULL, NULL, NULL, NULL, '96cee54eb51b289bc31e1f49702b451b', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22380, 8171, '0001-02', 'CASRE INTOD', 'Daughter', '2002-12-11', 23, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, '93d927521f538e3ccbfe29d6f6273de8', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22381, 8171, '0001-03', 'RICHEL MAE INTOD', 'Daughter', '2004-06-20', 21, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'cfcca8cfce19a5bf55cbda3cab605a88', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22382, 8171, '0001-04', 'RALPH KENJAY INTOD', 'Son', '2013-03-03', 13, 'Male', 'ELEM', 'Student', '', NULL, NULL, NULL, NULL, 'ad2cfe9ab293b19551e5befe7e875b26', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22383, 8172, '0002-01', 'EDUARDO LAGRADA', 'Husband', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '86d0fc529bb80d152323037a1e860f70', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22384, 8172, '0002-02', 'REYNANTE TABOMDE', 'Son', '2005-12-09', 20, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'b4e253bdf2e7dee6d4c693f6adefe16b', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22385, 8172, '0002-03', 'MICHAELA LAGRADA', 'Daughter', '2009-12-12', 16, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'd5109161e224ea86fb8eaa2f12346f1f', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22386, 8173, '0003-01', 'MATT EVAN SANOY', 'Son', '2023-04-21', 2, 'Male', 'NONE', '', '', NULL, NULL, NULL, NULL, 'd4d3c57ddf3283a0ac8b7ed006305446', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22387, 8173, '0003-02', 'VINCENT SANAY', 'Husband', '1989-01-22', 37, 'Male', 'HIGH SCHOOL GRAD', 'Driver', '', NULL, NULL, NULL, NULL, '36979e524bdf9cabc0672340351869e1', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22388, 8173, '0003-03', 'JEAN SHANE SANOY', 'Daughter', '2016-01-06', 10, 'Female', 'ELEM', 'Student', '', NULL, NULL, NULL, NULL, '81971c52fa71edfcead50cf18b7639bc', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22389, 8173, '0003-04', 'SOFIN JANE SANOY', 'Daughter', '2017-08-31', 8, 'Female', 'ELEM', 'Student', '', NULL, NULL, NULL, NULL, '122294cc9fbf6b0e5af1403d6a1eedbe', NULL, 'active', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(22390, 8174, '0004-01', 'JAYMARK LAGRADA', 'Husband', '1995-02-18', 31, 'Male', '', '', '', NULL, NULL, NULL, NULL, '338e0a9c824d86b91b15e05e4935387a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22391, 8174, '0004-02', 'DAVE HORA', 'Son', '2012-08-13', 13, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'd9d6d64981aa2535ca9b2a710cf238bc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22392, 8174, '0004-03', 'REYGE HORA FR.', 'Son', '2015-08-27', 10, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '8d1b63fa4a17a210582cb89ddc6a1dbd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22393, 8174, '0004-04', 'RJAY CAILING', 'Son', '2018-02-03', 8, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'c9d33a42343a2d1647afb68997254c2f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22394, 8174, '0004-05', 'FRANCIS DAVE CAILING', 'Son', '2022-05-12', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd3e93e17d919844f11648b1d3197d23c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22395, 8174, '0004-06', 'ELISSE NATHALIE CAILING', 'Daughter', '2023-09-23', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c0b4ccc1f8b5e9dbf74051be452951da', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22396, 8175, '0005-01', 'RIX LAGRADA', 'Husband', '1979-08-14', 46, 'Male', 'ELEM', '', '', NULL, NULL, NULL, NULL, 'f3309c516bb8111d33ce376eb49ebaeb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22397, 8175, '0005-02', 'JOSEPH LAGRADA', 'Son', '1999-12-25', 26, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, '4970b8f31ff2e790854cef1e79d5b58d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22398, 8175, '0005-03', 'JOMARK LAGRADA', 'Son', '2004-12-02', 21, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, '58549839e09726afdb2524c27b0be506', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22399, 8175, '0005-04', 'RIXEL LAGRADA', 'Son', '2006-06-28', 19, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, '4b3061ada19339ef0a7163fd5cd9f060', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22400, 8175, '0005-05', 'KRISTEL MAE LAGRADA', 'Daughter', '2016-01-06', 10, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '60adb2596c41f43f5ac7cd74e601bf17', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22401, 8175, '0005-06', 'RIX LAGRADA JR.', 'Son', '2020-10-29', 5, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, '2c2bbfa12df7d73b7c1bec34581c7787', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22402, 8176, '0006-01', 'EMMALAIN LABIAL', 'Daughter', '1986-11-03', 39, 'Female', '', '', '', NULL, NULL, NULL, NULL, '75a768a57e63abfac6de71eec277e008', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22403, 8176, '0006-02', 'MANILYN DAGONDON', 'Daughter', '1989-04-22', 36, 'Female', '', '', '', NULL, NULL, NULL, NULL, '5af78e4a2c5f4af65c22408f6bec3a83', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22404, 8176, '0006-03', 'NEXINE ARIA LABIAL', 'Grand Daughter', '2000-09-01', 25, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'fd83249d6e1ac361bb5beafb3c85c990', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22405, 8176, '0006-04', 'NICOLE ABBEGAIL DAGONDON', 'Grand Daughter', '2009-08-22', 16, 'Female', '', '', '', NULL, NULL, NULL, NULL, '905581539b5d52acdaa92d75e44d34b5', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22406, 8176, '0006-05', 'KEITH VINCENT LABIAL', 'Grandson', '2007-04-23', 18, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'b7352bb39628cae7407a3fffe54c7170', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22407, 8177, '0007-01', 'ANN LAGRADA', 'Wife', '1982-07-29', 43, 'Female', 'COLLEGE LEVEL', 'Utility', '', NULL, NULL, NULL, NULL, 'a67126ed4a39094a30278a5b65bdca1b', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22408, 8177, '0007-02', 'ANNE MARIE LAGRADA', 'Daughter', '2008-11-18', 17, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'c851d6035a7088aec11e85abc856731d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22409, 8177, '0007-03', 'LANCE LAGRADA', 'Son', '2011-02-02', 15, 'Male', 'GRADE 8', 'Student', '', NULL, NULL, NULL, NULL, '0a20041591a69d60aff8676ae64be5a1', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22410, 8179, '0009-01', 'APRIL ROSE CADORNA', 'Daughter', '1995-04-02', 30, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'ff48ea922191a586b08a2640d91b257a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22411, 8179, '0009-02', 'REZIEL ANN CADORNA', 'Daughter', '2004-02-07', 22, 'Male', '', '', '', NULL, NULL, NULL, NULL, '7ca2a307250de8d00e7c653964b764bd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22412, 8179, '0009-03', 'GRACE CADORNA', 'Daughter', '2006-12-03', 19, 'Male', '', '', '', NULL, NULL, NULL, NULL, '37c5de78ec0df20bd2aa96b8ab86e32b', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22413, 8179, '0009-04', 'ELRIC NINO CADORNA', 'Daughter', '2013-01-13', 13, 'Male', '', '', '', NULL, NULL, NULL, NULL, '1aab9a4c2885f5cc30043f182f85c61f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22414, 8179, '0009-05', 'HEZEKIAH GYLLE CADORNA', 'Grand Daughter', '2020-04-07', 5, 'Male', '', '', '', NULL, NULL, NULL, NULL, '46842d1d1531cf092fe5dbdfb48475d4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22415, 8180, '0010-01', 'JOHN BRIAN PALOMAJA', 'Grandson', '1986-07-29', 39, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c8ddadf5ea3fb684517779741090040f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22416, 8181, '0011-01', 'PERIE MAY RESUELO', 'Wife', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'cb4c9b2c256217066841a861d8f75bb4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22417, 8181, '0011-02', 'PEARL JEAN RESUELO', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'e25ff51bd8825523ec815925eb82a181', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22418, 8181, '0011-03', 'PATRICIA MAE RESUELO', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'f1edacd941c26b17ebc3ff6a22301d85', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22419, 8181, '0011-04', 'PIA KATE RESUELO', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'ed492ee15cef427ac8037f86f3b3dfe4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22420, 8181, '0011-05', 'PRINCESS JAY RESUELO', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'cb4b9b9a7778daec71d86678aa1e2d1e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22421, 8182, '0012-01', 'JIED RENIEL JABLA', 'Husband', '2003-05-04', 22, 'Male', 'HIGH SCHOOL GRAD', 'Fisherman', '', NULL, NULL, NULL, NULL, '0966163d32a699fd58e0ef652db45656', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22422, 8182, '0012-02', 'ROCLYN JABLA', 'Daughter', '2005-08-25', 20, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, 'de02a3ce336d36f36eaa01b6049c913e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22423, 8182, '0012-03', 'ROEL JABLA JR', 'Son', '2008-02-10', 18, 'Female', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'bea95169c1012934a15e25750caf5aea', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22424, 8182, '0012-04', 'JRED ROEL JABLA', 'Son', '2014-11-25', 11, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'd33ea48a24bedf0a11ac7fb561f50af4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22425, 8182, '0012-05', 'PRINCESS ANGELIE JABLA', 'Daughter', '2018-02-15', 8, 'Female', 'ELEM', '', '', NULL, NULL, NULL, NULL, '86e13d96e8f4ba959cc830c405facbed', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22426, 8183, '0013-01', 'RICHARD ABIAN', 'Son', '1979-03-02', 47, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'f221a7fa9abc85a055a5e0e93ffc8021', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22427, 8184, '0014-01', 'JOSEPH LAGRADA', 'Husband', '1997-09-05', 28, 'Male', 'HIGH SCHOOL LEVEL', 'Fisher Man', '', NULL, NULL, NULL, NULL, '83a37b025025dcd832225dc15433ff74', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22428, 8184, '0014-02', 'JOHN CARLO LABI', 'Son', '2009-05-05', 16, 'Male', 'HIGH SCHOOL LEVEL', 'Osy', '', NULL, NULL, NULL, NULL, 'cfbf53a1bd695d13be0b106890dc8b3c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22429, 8184, '0014-03', 'JOSHUA LAGRADA', 'Son', '2011-12-05', 14, 'Male', 'HIGH SCHOOL LEVEL', 'Osy', '', NULL, NULL, NULL, NULL, 'c5cee7383e4a45aea33dea13a126cf48', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22430, 8184, '0014-04', 'JUSTINE LAGRADA', 'Son', '2012-12-31', 13, 'Male', 'HIGH SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'aed99e28194590416f49140e9b3b0f93', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22431, 8184, '0014-05', 'KATHERYN MAE LAGRADA', 'Daughter', '2014-08-30', 11, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '015e298473994fb2322c56cebb1746ae', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22432, 8184, '0014-06', 'JONATHAN LAGRADA', 'Son', '2015-12-27', 10, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '3afcbdb0da8a123e35b649769e78c50d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22433, 8184, '0014-07', 'JOSEPH LAGRADA  JR.', 'Son', '2019-08-24', 6, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '74c79a320f781c208ccd6259377c5275', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22434, 8185, '0015-01', 'ARMAN LAGRADA', 'Husband', '1990-03-01', 36, 'Male', 'HIGHSCHOOL', 'Construction', '', NULL, NULL, NULL, NULL, '297d71725e46283dbb625c878555b1dc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22435, 8185, '0015-02', 'CHEYENNE LAGRADA', 'Daughter', '2019-02-14', 7, 'Female', '', '', '', NULL, NULL, NULL, NULL, '93e77960e502fcebd4fef97871661564', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22436, 8185, '0015-03', 'CHARIA LUMACANG', 'Daughter', '2020-09-23', 5, 'Female', '', '', '', NULL, NULL, NULL, NULL, '5182e8c744558f6eee39c1ae28f04e99', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22437, 8185, '0015-04', 'ARIAN LAGRADA', 'Daughter', '2024-07-15', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'f52ac361e26bacb191aaa796b048527a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22438, 8186, '0017-01', 'RIROY TABURADA', 'Son', '2003-07-03', 22, 'Male', 'ELEMENTARY', 'Construction Worker', '', NULL, NULL, NULL, NULL, 'ad1b7de9bfacfdb666e987e4510c2ffc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22439, 8187, '0018-01', 'CHARLIE PONCOL', 'Husband', '1992-01-05', 34, 'Male', 'COLLEGE GRAD', 'Laborer', '', NULL, NULL, NULL, NULL, 'c0de091f3e4352c291ba8f448d39ca0d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22440, 8187, '0018-02', 'KHETT CHARLES', 'Son', '2010-09-15', 15, 'Male', 'HIGH SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'c57ccdb917984511a98dc34bfeb0e13c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22441, 8187, '0018-03', 'KATE NATHALIE PONCOL', 'Daughter', '2012-04-08', 13, 'Female', 'HIGH SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '7458fd41b0632262da6e7881b5224cfc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22442, 8188, '0019-01', 'MARIA ROWENA YANO', 'Live-in Partner', '1973-12-22', 52, 'Female', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '826a5faf98aaee12f1dc5ce7f0058be8', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22443, 8189, '0020-01', 'FELIX M. CAILING', 'Husband', '1964-11-20', 61, 'Male', 'ELEMENTARY LEVEL', 'Fisher Man', '', NULL, NULL, NULL, NULL, '623f7363a3078d9329ef93ba7406dfb2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22444, 8189, '0020-02', 'ALEX JOHN CAILING', 'Son', '2004-07-02', 21, 'Male', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'b827bf6ef538e9930bbd26315f5f739e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22445, 8189, '0020-03', 'CLARENCE CAILING', 'Son', '2007-09-01', 18, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '39ef5c2ae93d3d6a78b2e04fed975926', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22446, 8190, '0021-01', 'PAULO PUDOL', 'Husband', '1961-04-01', 64, 'Male', 'ELEMENTARY LEVEL', 'Fisher Man', '', NULL, NULL, NULL, NULL, 'aed1b23a41d0e6586555519b6d92a993', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22447, 8190, '0021-02', 'STEFFANIE LUDOL', 'Grand Daughter', '2007-11-27', 18, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '5dd2a459f27fa2c40bac34b78a388fa0', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22448, 8190, '0021-03', 'PRINCESS PUDOL', 'Grand Daughter', '2010-06-16', 15, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '0ec21ce296d57e9e7aa1bb3e1bc9edfc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22449, 8190, '0021-04', 'TRIPP MARCO PUDOL', 'Grandson', '2013-07-06', 12, 'Male', 'HIGH SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'e4f40978828b9f93f4a96d0073077ea7', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22450, 8191, '0022-01', 'PONCOL  BERNADETH', 'Wife', '1993-04-02', 32, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'd266d78d2bf66e04df5503c352ecb282', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22451, 8191, '0022-02', 'PONCOL KATE NATHALIE', 'Daughter', '2012-04-08', 13, 'Female', '', 'Student', '', NULL, NULL, NULL, NULL, 'ab62ca863a829f20a4971b716aada8c0', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22452, 8191, '0022-03', 'PONCOL KHETT CHARLES', 'Son', '2018-09-15', 7, 'Male', '', 'Student', '', NULL, NULL, NULL, NULL, '9a02a90b48adaa51903d9cf4a4f1398f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22453, 8192, '0023-01', 'EFREN LAGRADA', 'Husband', '1964-06-18', 61, 'Male', 'ELEMENTARY', 'Fisherman', '', NULL, NULL, NULL, NULL, 'dd96aa7dc9a84f7f84b1ff273ee8dc77', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22454, 8192, '0023-02', 'ARMAN LAGRADA', 'Son', '1990-03-01', 36, 'Male', 'HIGHSCHOOL', 'Fisherman', '', NULL, NULL, NULL, NULL, 'eff6d01be2f77fb1dcae9b316bf65762', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22455, 8192, '0023-03', 'EFREN LAGRADA JR.', 'Son', '1991-12-20', 34, 'Male', 'ELEMENTARY', 'Fisherman', '', NULL, NULL, NULL, NULL, '15faae2672d71666638dd68904428050', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22456, 8192, '0023-04', 'ARNEL LAGRADA', 'Son', '1993-09-05', 32, 'Male', 'ELEMENTARY', 'Fisherman', '', NULL, NULL, NULL, NULL, 'c01975b7b094b50b3c4d1dd8db6ef142', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22457, 8192, '0023-05', 'ARIEL LAGUYAN', 'Niece', '2002-01-16', 24, 'Male', 'HIGHSCHOOL', 'Fisherman', '', NULL, NULL, NULL, NULL, '2b2682ae66b9385746304b297be8bab8', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22458, 8193, '0024-01', 'JED ADRIAN LAGARE', 'Son', '2014-10-31', 11, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '0bef0b4c6e560a205fa9721da0a22cf4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22459, 8194, '0025-01', 'PATERNO LAGRADA', 'Husband', '1973-12-06', 52, 'Male', 'ELEMENTARY', 'Fisherman', '', NULL, NULL, NULL, NULL, '0c4a046e1f6d81eb39b930302dc71fb6', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22460, 8194, '0025-02', 'CRISTOPHER LAGRADA', 'Son', '1997-12-06', 28, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '5e6e0e769ad47fb75eb48c3d0366f3fb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22461, 8194, '0025-03', 'CHERRYLEN LAGRADA', 'Daughter', '2006-04-16', 19, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, 'c8485bb43618c1f9d5d6e3dd8b0ce5cc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22462, 8194, '0025-04', 'KATALEEN LAGRADA', 'Daughter', '2013-03-27', 12, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'fd2c777afe0c003484220b82e8dada9e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22463, 8195, '0026-01', 'ROMEO LAGRADA', 'Husband', '1967-10-15', 58, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '7ce5271f12e0225526ff431edfd26ad5', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22464, 8195, '0026-02', 'DANIELLE KRISTINE', 'Niece', '1994-04-20', 31, 'Female', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, 'dc896c9340805985c1a2b2b200173448', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22465, 8195, '0026-03', 'LERIS LAGRADA', 'Son', '2001-07-16', 24, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '02d8449097e09fc94ad7d9c6bf2fd606', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22466, 8196, '0027-01', 'MARIA ELIZA PILLAROSTE', 'Mother', '1970-05-31', 55, 'Female', 'HIGHSCHOOL', 'Fish Vendor', '', NULL, NULL, NULL, NULL, '360b6069bce4410e124c432180136dd5', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22467, 8196, '0027-02', 'ANTONIO PILLAROSTE', 'Father', '1973-04-13', 52, 'Male', 'HIGHSCHOOL', 'Fisherman', '', NULL, NULL, NULL, NULL, '34423c5ca2c208d77970866f11a813fa', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22468, 8196, '0027-03', 'MARK ANTHONY PILLAROSTE', 'Brother', '2001-09-20', 24, 'Male', 'COLLEGE LEVEL', 'Promodiser', '', NULL, NULL, NULL, NULL, 'a7fbcd3db0fe3da68f517d2064befa60', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22469, 8197, '0028-01', 'SUSAN UIMIT', 'Wife', '1966-09-06', 59, 'Female', 'ELEMENTARY GRAD', 'Housewife', '', NULL, NULL, NULL, NULL, '8855997cb871e997f04c807df90d1f35', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22470, 8197, '0028-02', 'JOHN UIMIT', 'Son', '2004-06-24', 21, 'Male', 'COLLEGE LEVEL', 'Laborer', '', NULL, NULL, NULL, NULL, '995892a3553002a0bbd19729fe128ba0', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22471, 8197, '0028-03', 'GUILLERMO UIMIT JR.', 'Son', '1995-10-15', 30, 'Male', 'ELEMENTARY LEVEL', 'Fisher Man', '', NULL, NULL, NULL, NULL, 'a5928871271358c07b38fdc26dcbdfba', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22472, 8197, '0028-04', 'NIÑA MAE UIMIT', 'Daughter', '2007-07-07', 18, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '49883f58b794bfa8343fbe60f9cf7143', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22473, 8198, '0029-01', 'JOSEPH MONTENEGRO', 'Grandson', '2010-05-08', 15, 'Male', 'GRADE 8', 'Student', '', NULL, NULL, NULL, NULL, '7957a59ba65d6188f9f46b0d55916666', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22474, 8199, '0030-01', 'MARIFEL GANALI', 'Wife', '1989-03-03', 37, 'Female', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '2bba3cd6fd08b2414c903746a86721cb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22475, 8199, '0030-02', 'MARVIN LAGRADA', 'Son', '2016-09-22', 9, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '2e8fe3d2f59899dceb3c02712ff7694d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22476, 8199, '0030-03', 'NAKE LAGRADA', 'Son', NULL, 4, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '8724d6b12319b4149dc669294da69468', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22477, 8200, '0031-01', 'EVA MAE TALAMAN', 'Live-in Partner', '2006-04-11', 19, 'Female', 'HIGHSCHOOL', 'Bakery Staff', '', NULL, NULL, NULL, NULL, '832e9ace10f0fc75224a3fbeab64d36f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22478, 8201, '0032-01', 'RICO LAGUNAY JR.', 'Son', '2014-10-14', 11, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '6aa45aa4a4ce2e70c4d7983deb14306b', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22479, 8201, '0032-02', 'JERICHO LAGUNAY', 'Son', '2009-04-16', 16, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '260baf50ec27f864df4c469378915775', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22480, 8201, '0032-03', 'RICKY LAGINAY', 'Son', '2008-05-29', 17, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '25148bb251f01e688c9ffc8aefa6f8d2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22481, 8202, '0033-01', 'ANGELOU SIMENE', 'Son', '2014-12-09', 11, 'Male', 'COLLEGE GRAD', 'Student', '', NULL, NULL, NULL, NULL, '6207d1eb1b75ce93a209f14420b7c2a1', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22482, 8202, '0033-02', 'ROLANDO SIMENE', 'Husband', '1972-02-01', 54, 'Male', 'HIGH SCHOOL LEVEL', 'Fisher Man', '', NULL, NULL, NULL, NULL, '14d9b636412a4fd58eaa0e7aceec56cc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22483, 8204, '0035-01', 'BLAINE DUMALAGA', 'Husband', '1983-01-19', 43, 'Male', 'HIGH SCHOOL GRAD', 'None', '', NULL, NULL, NULL, NULL, '20caffd50116a54495179ab8840a7709', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22484, 8205, '0036-01', 'JAMES CLIENT UAYAN', 'Son', '2009-08-14', 16, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '8fbafc7ffae99aa9ae1ce2e2f51728e7', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22485, 8205, '0036-02', 'JACQUELYN UAYAN', 'Daughter', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'd7502fa948b7680f68b99589fe0b681e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22486, 8207, '0038-01', 'JOHN LAURENCE  LABI', 'Son', '2010-03-15', 16, 'Male', 'HIGHSCHOOL  GRAD', 'Osy', '', NULL, NULL, NULL, NULL, '26d622471b2ce3a6e5babf0e3bbbba7f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22487, 8207, '0038-02', 'CHRISTINE JANE LABI', 'Daughter', '2013-02-03', 13, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'b1fc14c4493c1ce623aa4d047aa35858', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22488, 8207, '0038-03', 'RICHARD  LABI JR.', 'Son', '2017-03-01', 9, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '6420bcda45f1ddf17e404ba47ba1b000', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22489, 8208, '0039-01', 'FLORA EBARLE', 'Wife', '1975-01-19', 51, 'Female', 'COLLEGE', 'Fish Vendor', '', NULL, NULL, NULL, NULL, 'b1f3271781ee9c6078e2b662d48ee761', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22490, 8208, '0039-02', 'KENJIE EBARLE', 'Daughter', '2006-12-17', 19, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'ebee428e22f57f2494d2f5915ca032f5', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22491, 8209, '0040-01', 'JHESSU MONTENEGRO', 'Son', '2014-06-30', 11, 'Male', 'GRADE 6', '', '', NULL, NULL, NULL, NULL, 'cdeb6f5c7e244ca766fc0e88f8dbdc82', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22492, 8209, '0040-02', 'EXQUIL MONTENEGRO', 'Son', '2016-01-03', 10, 'Male', 'GRADE 5', '', '', NULL, NULL, NULL, NULL, '2b47d0e27648cecae6459e2871a1e7bf', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22493, 8209, '0040-03', 'ZACH MONTENEGRO', 'Son', '2019-02-20', 7, 'Male', 'GRADE 1', '', '', NULL, NULL, NULL, NULL, '3022e4cab94a45ebca0a97a49097c765', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22494, 8209, '0040-04', 'LADY GRACE MONTENEGRO', 'Wife', '1987-05-08', 38, 'Female', 'COLLEGE', 'Housewife', '', NULL, NULL, NULL, NULL, 'de41b819b0385b36177e0ea3393fbfa1', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22495, 8209, '0040-05', 'MARY GRACE MONTENEGRO', 'Daughter', '2012-07-14', 13, 'Female', 'GRADE 8', '', '', NULL, NULL, NULL, NULL, '5c3da37a123b4c2497c07a54b8796a85', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22496, 8210, '0041-01', 'JENEYLEN LAGRADA', 'Wife', NULL, 0, 'Female', '', 'None', '', NULL, NULL, NULL, NULL, '7247587c8744c83f035ff452af01daff', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22497, 8210, '0041-02', 'REYNIEL LAGRADA', 'Son', '2018-06-01', 7, 'Male', 'GRADE 2', 'Student', '', NULL, NULL, NULL, NULL, '4071deb76c6a50ec324278fe74b662f1', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22498, 8211, '0042-01', 'ROBEN SALVANA', 'Wife', '1991-07-10', 34, 'Male', 'HIGHSCHOOL GRAD', '', '', NULL, NULL, NULL, NULL, '22be930d64f9b2754a47b1d51c37909e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22499, 8211, '0042-02', 'JESSA SALVANA', 'Daughter', '2014-08-07', 11, 'Female', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '8e7380be8ffc3ca69fabad970369e541', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22500, 8211, '0042-03', 'CLIENT JOMAR SALVANA', 'Son', '2017-05-04', 8, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'dc66df4ade2ac1d3a2ade92936699ba9', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22501, 8211, '0042-04', 'JHECHO SALVANA', 'Daughter', '2017-02-05', 9, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '435709dc6ba098aedc6be01b1e5017b2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22502, 8213, '0044-01', 'ERELITA EDGAO', '', '1962-07-01', 63, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'caf44bfc8ae30d626083c81c52c65993', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22503, 8213, '0044-02', 'JHINALYN CAPAYAN', 'Wife', '2002-06-10', 23, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'e5e3afa0debb678755dd7bb9eb96084a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22504, 8213, '0044-03', 'REYNO CAPAYAN', '', '2006-11-16', 19, 'Male', '', '', '', NULL, NULL, NULL, NULL, '11a863d3bd604f06583a27354c1a97ea', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22505, 8213, '0044-04', 'ERIC JOHN LAGRADA', '', '2024-06-06', 1, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8f96bb9ad912c1ea2705632a6e5c0804', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22506, 8214, '0045-01', 'RICARDO LAGRADA JR.', 'Grandson', '2005-05-21', 20, 'Male', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, '6c25749a460472a71b8d936022d64f0e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22507, 8215, '0046-01', 'LOURDES TORIM', 'Wife', '1968-02-11', 58, 'Female', 'HIGHSCHOOL', 'None', '', NULL, NULL, NULL, NULL, 'e17426524e2afc4e9ed13199c383e1ee', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22508, 8215, '0046-02', 'LIORRA CLAIRE TORIM', 'Daughter', '2002-06-06', 23, 'Female', 'COLLEGE', 'None', '', NULL, NULL, NULL, NULL, '265244469ff5d50c4c42d0f54bb838ba', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22509, 8216, '0047-01', 'FRANCISS GOMEZ', 'Live-in Partner', '2006-11-03', 19, 'Female', 'HIGHSCHOOL GRAD', 'None', '', NULL, NULL, NULL, NULL, 'd39c3302c432bb5897c83ea50fd617f7', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22510, 8217, '0048-01', 'EDGAR QUIDIT', 'Husband', '1985-10-04', 40, 'Male', 'HIGHSCHOOL', 'Butcher', '', NULL, NULL, NULL, NULL, '877839644c5c7c7100c6e609d4936ecc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22511, 8217, '0048-02', 'ALYESHAFAYE QUIDIT', 'Daughter', '2007-02-22', 19, 'Female', '1ST YEAR COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'b98e6d078099cbb7fe2b0c935ed7f8ee', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22512, 8217, '0048-03', 'ALLISON JEANNE QUIDIT', 'Daughter', '2011-01-05', 15, 'Female', 'GRADE 9', '', '', NULL, NULL, NULL, NULL, '4882fb195a7e40424cc1480b140153ec', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22513, 8217, '0048-04', 'ALMHEA ANGELICK QUIDIT', 'Daughter', '2014-01-23', 12, 'Female', 'GRADE 6', '', '', NULL, NULL, NULL, NULL, '9d1dc16b141058b8d324ede66847d9a7', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22514, 8217, '0048-05', 'ALRHEA PATRAISE QUIDIT', 'Daughter', '2017-08-05', 8, 'Female', 'GRADE 3', '', '', NULL, NULL, NULL, NULL, 'cae44c3699770ee72e3daccd2bf28211', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22515, 8217, '0048-06', 'ALANA AISH QUIDIT', 'Daughter', '2021-01-15', 5, 'Female', 'PRE-SCHOOL', '', '', NULL, NULL, NULL, NULL, 'b768c28b9ab3010fef35b4bb86639552', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22516, 8218, '0049-01', 'DAM VALENTE', 'Live-in Partner', '1987-10-03', 38, 'Male', 'HIGHSCHOOL GRAD', 'Tourist Guide', '', NULL, NULL, NULL, NULL, '965033df8dd0b32064708b55afbc8625', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22517, 8218, '0049-02', 'JAM VALENTE', 'Son', '2023-01-23', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'f910ef6a2d6cf88a6acbad22ee8ce5bf', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22518, 8218, '0049-03', 'JILLIAN VALENTE', 'Daughter', '2024-07-03', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, '385681ec12ccb687b7a2bc0bc8b41203', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22519, 8219, '0050-01', 'RAQUEL BUTALID', 'Wife', '1988-08-16', 37, 'Female', 'VOCATIONAL', 'Housewife', '', NULL, NULL, NULL, NULL, '215e3b9911f6918aded5cb327e8c4a80', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22520, 8219, '0050-02', 'SAMANTHA NICOLE BUTALID', 'Daughter', '2008-06-14', 17, 'Female', 'GRADE 12', 'Student', '', NULL, NULL, NULL, NULL, '2f2c41f8320352cb1f8898404eab7b30', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22521, 8219, '0050-03', 'STARVEL BUTALID', 'Daughter', '2009-07-25', 16, 'Female', 'GRADE 11', 'Student', '', NULL, NULL, NULL, NULL, 'b54983133d9b6dcda4515467a67bc96c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22522, 8219, '0050-04', 'MICHAEL BUTALID', 'Son', '2010-09-19', 15, 'Male', 'GRADE 10', 'Student', '', NULL, NULL, NULL, NULL, '0aa6147b8728216a55293fe67991f85f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22523, 8220, '0051-01', 'RODGEN MENDRES', 'Live In Partner', '1997-04-30', 28, 'Male', 'HIGH SCHOOL GRAD', '', '', NULL, NULL, NULL, NULL, '01149eba59f68cbb7fa420fe02a12b1d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22524, 8220, '0051-02', 'GENECA FAITH MENDRES', 'Daughter', '2022-01-09', 4, 'Female', '', '', '', NULL, NULL, NULL, NULL, '5cd2d6f348986b363f8638a4b660d22c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22525, 8220, '0051-03', 'SHAYNE AVERY MENDRES', 'Daughter', '2024-04-07', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'c7d8d566a33ceddc7a51df87755666e0', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22526, 8221, '0052-01', 'PAUL LABI', 'Husband', '1981-12-22', 44, 'Male', 'ELEM GRAD', 'Driver', '', NULL, NULL, NULL, NULL, '2e540855c0bbd7795a93481e0448ed18', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22527, 8221, '0052-02', 'ANGELA LABI', 'Daughter', '2005-11-11', 20, 'Female', 'COLLEGE GRAD', 'Student', '', NULL, NULL, NULL, NULL, '0b067316e0fc4cac6258273984ea49c4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22528, 8222, '0053-01', 'PERLITA TORAYNO', 'Wife', '1992-12-17', 33, 'Female', 'HIGHSCHOOL', 'Fish Vendor', '', NULL, NULL, NULL, NULL, '5b9970e76576ddc1bf37056e905d3871', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22529, 8222, '0053-02', 'ALTHEA TORAYNO', 'Daughter', '2014-11-30', 11, 'Female', 'GRADE 5', 'Student', '', NULL, NULL, NULL, NULL, '88541acb1d0eb800bc004bbf4e8348d5', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22530, 8222, '0053-03', 'TRISHA TORAYNO', 'Daughter', '2016-11-05', 9, 'Female', 'GRADE 4', 'Student', '', NULL, NULL, NULL, NULL, '4bfd14fdf37ba0bc24e03379c2c709fd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22531, 8223, '0054-01', 'PRECY MAY AMANROSE ATHENA ROLLORATA', '', '1993-05-01', 32, 'Female', 'HIGHSCHOOL GRAD', 'None', '', NULL, NULL, NULL, NULL, '175bed3d3306126a74e25d82bce82e26', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22532, 8223, '0054-02', 'ROSE ATHENA ROLLORATA', '', '2020-06-02', 5, 'Female', 'KINDER', 'Student', '', NULL, NULL, NULL, NULL, 'b62a0cc944e5de4e59f7b388bebfb80a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22533, 8225, '0056-01', 'RAYMOND OLINAN', 'Husband', '1992-02-10', 34, 'Male', 'HIGHSCHOOL LEVEL', 'Laborer', '', NULL, NULL, NULL, NULL, '7e0946328ce5b49192abba608fff5e46', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22534, 8225, '0056-02', 'JOHN RAYMOND OLINAN', 'Son', '2018-09-22', 7, 'Male', 'ELE', 'Student', '', NULL, NULL, NULL, NULL, '7922d7786cc9d70bbb1ecb4b96d5d425', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22535, 8226, '0057-01', 'GILBERTO ABANIL', 'Husband', '1970-03-25', 56, 'Male', 'HIGHSCHOOL GRAD', 'Security Guard', '', NULL, NULL, NULL, NULL, '437f68fc45a0a3fbcb550762dd680669', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22536, 8226, '0057-02', 'ERICA JANELLE LABI', 'Daughter', '2005-06-18', 20, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '3103e355ec0a14e366f1e6496a3af330', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22537, 8226, '0057-03', 'SHAINA JANE ABANIL', 'Daughter', '2007-06-08', 18, 'Female', 'HIGH SCHOOL LEVEL', 'Osy', '', NULL, NULL, NULL, NULL, 'c98d79a893b59455e672392e750d0a2d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22538, 8226, '0057-04', 'ERIC ABANIL', 'Son', '2008-04-10', 17, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '6fe69ba962799487a7500258cc92ea79', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22539, 8227, '0058-01', 'BONITA ELSA', 'Wife', '1982-10-26', 43, 'Female', '', '', '', NULL, NULL, NULL, NULL, '79b75bbc9e6b46f703a51ca4bc5cc937', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22540, 8227, '0058-02', 'BONITA JOHN CARLO', 'Son', '2018-01-26', 8, 'Male', '', '', '', NULL, NULL, NULL, NULL, '08b456c730dc0026624398a5af7247f9', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22541, 8227, '0058-03', 'BONITA JEZEL ANN', 'Daughter', '2008-07-16', 17, 'Female', '', '', '', NULL, NULL, NULL, NULL, '61042f81323b663998d12841507bedfb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22542, 8227, '0058-04', 'TAGANAS HARCHRIS', 'Daughter', '2017-03-12', 9, 'Male', '', '', '', NULL, NULL, NULL, NULL, '930d1c9c3656ffe91cd5d0c0b3dc7354', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22543, 8229, '0060-01', 'TITO ESCALERA', 'Husband', '1970-01-24', 56, 'Male', 'HIGHSCHOOL  GRAD', '', '', NULL, NULL, NULL, NULL, '7cb407acea0ab090b1b11ba17dc6a1b6', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22544, 8229, '0060-02', 'HONEY FAITH ESCALERA', 'Daughter', '2005-04-23', 20, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'be692e2e2c8728481dfb39e1d2c658d4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22545, 8230, '0061-01', 'EDWIN ABIAN', 'Husband', '1980-01-26', 46, 'Male', 'HIGHSCHOOL GRAD', 'Fisherman', '', NULL, NULL, NULL, NULL, '285626facfa970d80bb171fbc5c6fee6', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22546, 8230, '0061-02', 'TRISHA ANN ABIAN', 'Daughter', '2008-08-28', 17, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'cd41acfca22d34126ca7f332aff836a6', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22547, 8230, '0061-03', 'RYZZA MAE ABIAN', 'Daughter', '2014-12-24', 11, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'f428087093059c08f02b47588111ddac', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22548, 8231, '0062-01', 'FATIMA FAITH GIMARANGAN', 'Grand Daughter', '2017-10-13', 8, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'aa44de1080d1e34dd2ded03efc4ba05e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22549, 8232, '0063-01', 'RINS AMARI DUMANGCAS', 'Son', '2001-07-11', 24, 'Male', '', '', '', NULL, NULL, NULL, NULL, '70bb0a81a4aa650c0c0f64a379d373e9', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22550, 8232, '0063-02', 'LENE DUMANGCAS', 'Daughter', '2009-08-04', 16, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '6a966cbe5463b35dd90ce297e8c41322', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22551, 8232, '0063-03', 'RELYNA AMARAH DUMANGCAS', 'Daughter', '2018-12-08', 7, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '3863f3611bc05e09127f57990ae31bbd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22552, 8233, '0064-01', 'MARY ZOU', 'Daughter', '2014-02-08', 12, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'ca099bd2b4d275b882735b70b3f6ae33', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22553, 8233, '0064-02', 'JAY BOY', 'Son', '2016-09-11', 9, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '9fe20d76d6cc87ebabbc9377ccd1a30a', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22554, 8233, '0064-03', 'JOMAR TORAYNO', 'Husband', '1990-06-04', 35, 'Male', 'HIGHSCHOOL GRADUATE', '', '', NULL, NULL, NULL, NULL, 'e724e01f4a181598cae0e7341378142e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22555, 8233, '0064-04', 'JESSEL TORAYNO', 'Daughter', '2012-01-08', 14, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '60f92553ed5fa7cd0faff7a8485abb40', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22556, 8234, '0065-01', 'MERAFILER RANGCON', 'Wife', '1999-08-12', 26, 'Female', 'COLLEGE GRADUATE', 'None', '', NULL, NULL, NULL, NULL, '4074501f9afac2594264f984aa27c6b2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22557, 8234, '0065-02', 'LEGWETER TORION', 'Daughter', '2022-02-22', 4, 'Female', '', '', '', NULL, NULL, NULL, NULL, '36127ba4ca3e4fa458842ad783c02981', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22558, 8234, '0065-03', 'ARIEL JOY TORION', 'Son', '2025-10-11', 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '3118b7193cea517e9bc38438db8622cd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22559, 8235, '0066-01', 'MAYOR IAN BUSTAMANTE', 'Son', '2023-07-09', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '08abf9ca16999e882df54c2f1d7c615f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22560, 8235, '0066-02', 'PRINCESS RYLIE BUSTAMANTE', 'Daughter', '2025-05-05', 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '78d5c66fb7c70fd4243c329b2c596c80', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22561, 8236, '0067-01', 'MC DANIELL LLOREN', 'Husband', '1988-07-07', 37, 'Male', 'HIGHSCHOOL GRAD', 'Chef Cook', '', NULL, NULL, NULL, NULL, 'eb21185dd3ad78375495ee55463fc529', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22562, 8236, '0067-02', 'ASHLEY ANN TORION', 'Daughter', '2011-07-02', 14, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'fa90c27a372e5860b736f981df1594cf', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22563, 8236, '0067-03', 'GABRIELLA LABADAN', 'Daughter', '2020-01-12', 6, 'Female', 'PRE-SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '748de7376d91f5be22763d8f3601e0bc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22564, 8236, '0067-04', 'IRISH DANIELLE LLOREN', 'Daughter', '2022-05-21', 3, 'Female', '', '', '', NULL, NULL, NULL, NULL, '4dbfbbd9b92ef586a9a656d709292e83', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22565, 8236, '0067-05', 'ANNALEAH LLOREN', 'Daughter', '2025-05-14', 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '1a4f5cc542394fecb407ee79818a93b2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22566, 8237, '0068-01', 'KRYSTAL JANE LIMACANGAN', 'Daughter', '2009-03-23', 17, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '037d55e1bdbd0c3bbdb1c48249466441', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22567, 8237, '0068-02', 'LJ LUNGAT', 'Daughter', '2015-04-17', 10, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '706b6e1364636a870535add9247bc697', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22568, 8237, '0068-03', 'JOVELYN LUNGAT', 'Daughter', '2016-05-27', 9, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'dca562997e05ed236a2a4daa44b9ad2c', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22569, 8237, '0068-04', 'ESTELLA MARIE LUNGAT', 'Daughter', '2019-10-23', 6, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'e98461e9e6456210c803cb4ac845a2e3', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22570, 8238, '0069-01', 'RECHEL LAGRIA', 'Wife', '2001-02-08', 25, 'Female', 'HIGHSCHOOL GRAD', 'None', '', NULL, NULL, NULL, NULL, 'f89c8e107efdbc8e99d7032474acaabd', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22571, 8238, '0069-02', 'AMIRAH LAGRADA', 'Daughter', '2020-11-21', 5, 'Female', 'PRE-SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '46fabef315e19823369c123709ab44cb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22572, 8239, '0070-01', 'SHEEN JAY GAYO', 'Wife', '1991-09-06', 34, 'Female', 'COLLEGE GRADUATE', 'Saleswoman', '', NULL, NULL, NULL, NULL, 'bba74c9d82e933f1d7094b271cd99dae', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22573, 8239, '0070-02', 'ZOE NORIEN GAYO', 'Daughter', '2016-03-25', 10, 'Female', 'GRADE SCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '793c506799347442ef13432bc8ddbb74', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22574, 8239, '0070-03', 'ZOELA KEAN GAYO', 'Daughter', '2024-12-26', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, '98a6ec4910a3b9ecc3e76d97313eb6af', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22575, 8240, '0071-01', 'RALF JAY BULAN', 'Son', '1994-05-03', 31, 'Male', 'COLLEGE GRADUATE', 'Staff', '', NULL, NULL, NULL, NULL, 'd9b3520c099ddd502986213d623b2e21', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22576, 8240, '0071-02', 'REGINE JAY BULAN', 'Daughter', '2003-09-21', 22, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, '5646aaa6b258996f8a917ce0920c957d', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22577, 8240, '0071-03', 'ROMANITO BULAN', 'Husband', '1962-03-12', 64, 'Male', 'HIGHSCHOOL GRAD', 'Welder', '', NULL, NULL, NULL, NULL, 'ec8e6420dab239ddcbf81640d2c34493', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22578, 8241, '0072-01', 'LEONARDO GAYO JR.', 'Husband', '1958-11-22', 67, 'Male', 'COLLEGE GRADUATE', 'Retired', '', NULL, NULL, NULL, NULL, '366912ef483c28882528f379fb860597', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22579, 8242, '0073-01', 'JOVEL P. DAHAN', 'Wife', '1986-11-13', 39, 'Female', 'COLLEGE LEVEL', 'Housewife', '', NULL, NULL, NULL, NULL, '4d7da67d9a8f9e547f88c6c9b0b86be1', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22580, 8242, '0073-02', 'KYLE DAHAN', 'Daughter', '2011-07-21', 14, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'd007e98d82e47abc0373edc1faa14286', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22581, 8242, '0073-03', 'ALTHEA KIM DAHAN', 'Daughter', '2016-04-30', 9, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'd618f939bc496eea82f39c766c705307', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22582, 8242, '0073-04', 'JAHANA DAHAN', 'Daughter', '2022-12-22', 3, 'Female', 'DAYCARE', 'Student', '', NULL, NULL, NULL, NULL, '518eb8d373cd0be4311685e315ab9a3f', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22583, 8243, '0074-01', 'JESUS JAMON', 'Live-in Partner', '1997-12-25', 28, 'Male', 'HIGHSCHOOL LEVEL', 'Laborer', '', NULL, NULL, NULL, NULL, 'd3b828bb0446237e1f7c7983c7a9bfdb', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22584, 8243, '0074-02', 'CHARLIE TIZON', 'Cousin', '1998-04-03', 27, 'Male', 'COLLEGE LEVEL', 'Laborer', '', NULL, NULL, NULL, NULL, '4c8b32b7ecc7392bffdc0fd29f48fbcc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22585, 8243, '0074-03', 'JAYLORD JAMON', 'Son', '2019-02-10', 7, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'daac97c7a5a25846623a0b3ab1eec9ab', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22586, 8244, '0075-01', 'ALVITHS L. IBALE', 'Live-in Partner', '1983-01-28', 43, 'Male', 'COLLEGE GRADUATE', 'Laborer', '', NULL, NULL, NULL, NULL, '536c90781e7680c4f2befddd5397ec52', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22587, 8244, '0075-02', 'MARYKEE H. DUMANGCAS', 'Daughter', '2002-10-27', 23, 'Female', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'e245efa7495c8eaca7fab590082b67d6', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22588, 8244, '0075-03', 'ADRIAN JARDIN', 'Son-in-law', '2003-02-13', 23, 'Male', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, 'da087499e37b37c1f12927c97d714610', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22589, 8244, '0075-04', 'ALDY H. DUMANGCAS', 'Son', '2008-02-05', 18, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '13f31384346f6c64fb96c24ffabc0f19', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22590, 8244, '0075-05', 'ALZEKAN H. DUMANGCAS', 'Daughter', '2010-06-03', 15, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '1bb0976271ba98f5a6a009d102d2e787', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22591, 8244, '0075-06', 'CHRIST ICEL DUMANGCAS', 'Son', '2015-08-07', 10, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '2bd0bb636e5f0c8c2763d3f1d0b617e2', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22592, 8244, '0075-07', 'CHRIST LAURENCE DUMANGCAS', 'Son', NULL, 0, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'e78d4e1e9ab29ac46ad78f9deab5c1b3', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22593, 8244, '0075-08', 'BRIANNA DUMANGCAS', 'Daughter', '2023-09-20', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, '3e1793fedad129ab428b168345c443f4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22594, 8245, '0076-01', 'JANE MAREY RANOCO', '', '2018-11-14', 7, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'a03067ab680b29370a113850d4444e34', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22595, 8245, '0076-02', 'JASPER JEFF RANOCO', '', '2022-06-28', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, '628ade53704ffba9d65e00a91a24dfad', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22596, 8246, '0077-01', 'NARIA YLLAJAY JAMPIT', 'Daughter', '2023-12-30', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, '0124e2f97d52dd0bef1d7b848441f8f3', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22597, 8246, '0077-02', 'MARA YSABELLE', 'Daughter', '2025-04-11', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, '8b985137f68f8fd3f9d7c44e52212b5b', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32');
INSERT INTO `family_members` (`id`, `resident_id`, `member_id`, `name`, `relation`, `birthdate`, `age`, `sex`, `education`, `occupation`, `remarks`, `photo`, `id_photo_front`, `id_photo_back`, `birth_certificate`, `qr_code_token`, `qr_code_id`, `status`, `created_at`, `updated_at`) VALUES
(22598, 8247, '0078-01', 'MICHAEL MANGACAN', 'Live-in Partner', '1994-09-19', 31, 'Male', 'HIGHSCHOOL GRAD', 'Fisherman', '3000', NULL, NULL, NULL, NULL, 'd1b3e9dc913721cd2f7b02ea78eb3ab9', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22599, 8247, '0078-02', 'JETRO MANGACAN', 'Step-daughter', '2017-06-17', 8, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '22dc5f94c111888d07536e7ca6989afc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22600, 8247, '0078-03', 'JOSON MANGACAN', 'Son', '2023-01-28', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, '2aed11aa412adc319747f874d5e0c904', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22601, 8248, '0079-01', 'JONATHAN MANGACA', 'Husband', '1991-11-11', 34, 'Male', 'VOCATIONAL', '', '', NULL, NULL, NULL, NULL, '7a5cc7c8c2bd2f2851c726f564334ac4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22602, 8248, '0079-02', 'NATHAN MANGACA', 'Son', '2023-05-27', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8fdf7349bcfc9e7fef9ea0176de94156', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22603, 8248, '0079-03', 'KIAN MANGACA', 'Son', '2025-04-03', 1, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9dbb991041b1485b71ebba43db24987e', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22604, 8249, '0080-01', 'DEXTER PITOGO', 'Father', '1977-04-16', 48, 'Male', 'COLLEGE LEVEL', 'Driver', '5,000', NULL, NULL, NULL, NULL, 'd135ee563ce5f26dc8209cd95e211738', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22605, 8249, '0080-02', 'MERLIN PITOGO', 'Mother', '1978-03-23', 48, 'Male', 'HIGHSCHOOL GRAD', 'Tailor', '3,000', NULL, NULL, NULL, NULL, '2d023a47e8e6498c209b40f9730c7a33', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22606, 8249, '0080-03', 'JOHN LESTER PITOGO', 'Brother', '2001-04-21', 24, 'Male', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'c1d7bec2fcff9d35532ae601f3f17ddc', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22607, 8249, '0080-04', 'DEXTER PITOGO JR.', 'Brother', '2013-08-17', 12, 'Male', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '017f352cfa327d982118aa1275d0a3b4', NULL, 'active', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(22608, 8250, '0081-01', 'CRIS ROSAL', 'Father', '1960-10-27', 65, 'Male', 'COLLEGE LEVEL', '', '', NULL, NULL, NULL, NULL, '3a7afc058f760fff4861edc985203faf', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22609, 8250, '0081-02', 'ANNIE ROSAL', 'Mother', '1962-11-14', 63, 'Female', 'COLLEGE LEVEL', '', '', NULL, NULL, NULL, NULL, '409da9ec0b7cf27d63326e629aa325b5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22610, 8250, '0081-03', 'DEA SHAINE ROSAL', 'Niece', '2008-12-26', 17, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '087c44b18d836c502cf7baee9e4e1844', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22611, 8250, '0081-04', 'ENZA BEATRICE ROSAL', 'Daughter', '2025-09-25', 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'ce7502bca41adcecd341c847d9099f4f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22612, 8251, '0082-01', 'NESTOR SINO', 'Husband', '1963-01-07', 63, 'Male', 'ELEMENTARY GRADUATE', 'Fisherman', '5,000', NULL, NULL, NULL, NULL, 'e838b63094e42b1e8f72f65c2645935b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22613, 8252, '0083-01', 'OLIVER GARILLO', 'Live-in', '1999-01-11', 27, 'Male', 'COLLEGE GRADUATE', '', '', NULL, NULL, NULL, NULL, '32008a35a4e1ecd896532047ade8a621', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22614, 8253, '0084-01', 'PIOCANO', 'Son', '2018-02-24', 8, 'Male', '', '', '', NULL, NULL, NULL, NULL, '4f56be741f960778730097ca6b514c8a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22615, 8254, '0085-01', 'ERWIN ROMOROSA', 'Husband', '1995-10-18', 30, 'Male', '', '', '', NULL, NULL, NULL, NULL, '0defd14670b176b9f9fd0726a4850969', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22616, 8254, '0085-02', 'ZEREF ETHAN', 'Son', '2019-11-22', 6, 'Male', '', '', '', NULL, NULL, NULL, NULL, '57bc4bbdade9b4a3e84ad5523fd505d8', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22617, 8254, '0085-03', 'ATHENA WYNOÑA', 'Daughter', '2024-02-04', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'd8714abf195fccc08e1ccf7cf1f09142', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22618, 8255, '0086-01', 'PETER JACOB TAGAB', 'Son', '2020-11-10', 5, 'Male', 'K-2', 'Student', '', NULL, NULL, NULL, NULL, '3a7ae112a69be61dac1cc197b42a1884', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22619, 8255, '0086-02', 'PETER TAGAB', 'Live-in Partner', '1981-08-19', 44, 'Male', 'COLL', 'Sales Boy', '', NULL, NULL, NULL, NULL, 'cbad6dea293073e94815f231725739ac', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22620, 8256, '0087-01', 'FELIPE C. QUINADA', 'Husband', '1964-10-16', 61, 'Male', 'ELEMENTARY GRADUATE', '', '', NULL, NULL, NULL, NULL, '89677d4f043d96e2f9bc0995880710f9', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22621, 8256, '0087-02', 'KENTH QUINADA', 'Son', '2007-05-13', 18, 'Male', 'COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, '226268bccaded6ce2cb087a7a04e83d9', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22622, 8256, '0087-03', 'KHYLA QUINADA', 'Daughter', '2012-07-19', 13, 'Female', 'GRADE 8', 'Student', '', NULL, NULL, NULL, NULL, 'caabcec308cc9238b2b47a82f37ebdee', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22623, 8257, '0088-01', 'ROY DAHANG', 'Live-in', '1998-11-24', 27, 'Male', 'ELEM GRAD', 'Labor', '', NULL, NULL, NULL, NULL, '5c14f7999f7c69b8529817816b0cafad', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22624, 8257, '0088-02', 'ALLIYAH GRACE  ACEDES', 'Daughter', '2022-02-27', 4, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'f8019738f358f220c42610894acf6193', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22625, 8257, '0088-03', 'NATHANIEL DAHANG', 'Son', '2023-09-09', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9ed1c535e5728332937261ce024c86a2', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22626, 8257, '0088-04', 'ALEXA ACEDES', 'Daughter', '2025-01-03', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, '61bd27135f09da8ed37683ce3e166e21', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22627, 8258, '0089-01', 'SONIA PITOGO', 'Mother', '1955-11-26', 70, 'Female', 'ELEMENTARY', 'Senior', '', NULL, NULL, NULL, NULL, '3936bddfba27c1f60cf11202f3332c32', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22628, 8258, '0089-02', 'SUMMY DAGAAS', 'Husband', '1992-01-24', 34, 'Male', 'HIGHSCHOOL', 'Timekeeper', '', NULL, NULL, NULL, NULL, 'ba9263bd654c140691516ea9258a237a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22629, 8258, '0089-03', 'KELVIN JAMES DAGAAS', 'Son', '2011-07-06', 14, 'Male', 'GRADE 9', 'Student', '', NULL, NULL, NULL, NULL, '25db30f4f7190e1b390972ddb10f17fd', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22630, 8258, '0089-04', 'SAMANTHA JACE DAGAAS', 'Daughter', '2015-07-26', 10, 'Female', 'GRADE 5', 'Student', '', NULL, NULL, NULL, NULL, '713577482d3d7a8db9fd9fae18640c67', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22631, 8259, '0090-01', 'FRANCES MANGUCA', 'Husband', '1998-01-28', 28, 'Male', 'GRADE 8', 'Welder', '', NULL, NULL, NULL, NULL, 'bde7f37333aad844d90dbc6d65be9d7e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22632, 8259, '0090-02', 'JARYL GALAPATE', 'Son', '2019-10-02', 6, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8d3ad041afa2ad368f126bfb8a50f4b1', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22633, 8259, '0090-03', 'JEAH GALAPATE', 'Daughter', '2022-02-06', 4, 'Female', 'TRADER', '', '', NULL, NULL, NULL, NULL, '1393d49375cb71198cb0a6b0480a27fa', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22634, 8259, '0090-04', 'JEANAH GALAPATE', 'Daughter', '2025-06-15', 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'fbe7ea27c173fbf6cc74699be98a3733', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22635, 8260, '0091-01', 'HASANAL PAMASTORA', 'Husband', '1978-09-28', 47, 'Male', 'COLLEGE GRAD', 'Grit- Employee', '', NULL, NULL, NULL, NULL, '54e372be7d6ef5b81ace2501b4b668b5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22636, 8260, '0091-02', 'PRINCESS SAIPAHMAATORA', 'Daughter', '2008-04-18', 17, 'Female', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '72bda66fccaf499a50856163e736c2f4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22637, 8260, '0091-03', 'HASHNIAH MASTORA', 'Daughter', '2011-08-05', 14, 'Female', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '13444813345ca66fa5830edcf1467de7', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22638, 8260, '0091-04', 'HASHIM MASTORA', 'Son', '2014-05-09', 11, 'Male', 'ELEM', '', '', NULL, NULL, NULL, NULL, '8180c99708751592d34c59220203efbd', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22639, 8260, '0091-05', 'NOR AKIFAH', 'Daughter', '2016-11-07', 9, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '4195e0d9e380ec2c021e761fbebb2bb0', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22640, 8260, '0091-06', 'ZARAH ALIYAH MASTORA', 'Daughter', '2025-09-20', 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'b207bb7cc6d6c781380b53078650a7c1', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22641, 8261, '0092-01', 'RUBELYN CAILING', 'Daughter', '1990-02-12', 36, 'Female', 'HIGHSCHOOL GRADUATE', 'Private Employee', '10000', NULL, NULL, NULL, NULL, '2bdd62cece1587359c3e94927cbfc685', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22642, 8261, '0092-02', 'INA CAILING', 'Granddaughter', '2011-01-16', 15, 'Female', 'GRADE 7', 'Student', '', NULL, NULL, NULL, NULL, '82f2f4628714e51f41cfe968eee2d736', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22643, 8261, '0092-03', 'RIAN JOSE CAILING', 'Grandson', '2014-08-06', 11, 'Female', 'GRADE 5', 'Student', '', NULL, NULL, NULL, NULL, 'ca8ffaf78075e22c79e1285bc1be865e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22644, 8261, '0092-04', 'JOHN GABRIEL CANINDO', 'Grandson', '2020-06-26', 5, 'Male', 'K-1', 'Student', '', NULL, NULL, NULL, NULL, '66621823d9192dc6479b01cb1f681883', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22645, 8261, '0092-05', 'ISABEL CANINDO', 'Granddaughter', '2024-08-16', 1, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c35d519877e570dcea114f4f16361b4f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22646, 8261, '0092-06', 'ROBERTO CANINDO', 'Son', '1997-10-10', 28, 'Male', 'GRADE 10', 'Carwash', '', NULL, NULL, NULL, NULL, '6803dbe654da3b269ac68267582accc5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22647, 8261, '0092-07', 'JOELLEN LAGRADA', 'Daughter In Law', '1996-08-25', 29, 'Female', 'COLLEGE LEVEL', 'Housewife', '', NULL, NULL, NULL, NULL, '52aadf45acb92aad5f2cb0639f242877', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22648, 8261, '0092-08', 'RIANNA DENNIS CAILING', 'Granddaughter', '2010-10-10', 15, 'Female', 'GRADE 10', 'Student', '', NULL, NULL, NULL, NULL, '97023bd537fe7875e47eba0245b7ee7d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22649, 8262, '0093-01', 'JEFFREY PASQUITO', '', '1996-08-26', 29, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '0f1adb6414d04c9619e1440a0841d14f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22650, 8262, '0093-02', 'RCAH JEAN', '', '2021-09-29', 4, 'Female', 'DAYCARE', '', '', NULL, NULL, NULL, NULL, 'f66e64646ce1bf897e8ac3613900b300', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22651, 8262, '0093-03', 'HEFFORD ZAD', '', '2023-05-10', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '02d4c2f0834ea1d45ac4da91ef65d67f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22652, 8263, '0094-01', 'ROSFEL ISIN', 'Husband', '1981-04-25', 44, 'Male', 'ELEMENTARY', 'Laborer', '', NULL, NULL, NULL, NULL, 'bcd92a7c4fdd6719f63928a93ca4e25e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22653, 8263, '0094-02', 'ANGEL ROSE ISIN', 'Daughter', '2015-09-15', 10, 'Female', 'ELEM', 'Student', '', NULL, NULL, NULL, NULL, '880419d906af205692d60f6a8f273a7f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22654, 8264, '0095-01', 'RYLIE', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '3c9b9d05a002132bba3fdbd10fc5abdf', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22655, 8264, '0095-02', 'ROME', 'Father', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd52abb97e8feeb689daf52caa685660c', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22656, 8265, '0096-01', 'RAYMUND', 'Father', '1991-04-06', 34, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6fcd3e9e83af386ea6699af156c8a2b0', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22657, 8265, '0096-02', 'PRESTELIZ', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd51e4b5e7f82c80b0622c8728244d9c3', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22658, 8265, '0096-03', 'RCKANT', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'f4498c9550a5902cc91b1efbad7a60c4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22659, 8266, '0097-01', 'IRENEO ISIN', 'Commonlaw', '1964-07-03', 61, 'Male', 'HIGHSCHOOL GRADUATE', 'Fisher Man', '', NULL, NULL, NULL, NULL, '16074e9a0529d728d87fd08bcf9abdd2', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22660, 8267, '0098-01', 'LARAGEN MONTALBA', 'Daughter', '2014-06-14', 11, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '166e62150940c99125fdbd0fd3fc95b0', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22661, 8267, '0098-02', 'JAYRELLE MONTALBA', 'Son', '2014-06-24', 11, 'Male', '', '', '', NULL, NULL, NULL, NULL, '09199c8e8db2e6eb1636e3a8ab37b822', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22662, 8267, '0098-03', 'JOHNRAY MONTALBA', 'Son', '2016-11-25', 9, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd95e50cb1c572ac6e2e831291ea5664b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22663, 8268, '0099-01', 'CHARLIE EBARLE', 'Husband', '1993-01-06', 33, 'Male', 'ALS', 'Construction Worker', '', NULL, NULL, NULL, NULL, 'f0dce4b56f85cc93cc5e13bd2475401e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22664, 8268, '0099-02', 'KING CHRIST EBARLE', 'Son', '2023-12-21', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '3e5b7ce69504dcf96c93053aec29ba20', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22665, 8268, '0099-03', 'QUEENLYE KAME', 'Daughter', '2015-05-02', 10, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '5e025ad7daf2567edbd02a69efed8f89', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22666, 8268, '0099-04', 'PRINCESS ANTONETTE SUL-ARON', 'Daughter', '2011-06-21', 14, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'dbe3c79649b03833e00c2d35df1f2fba', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22667, 8269, '0100-01', 'JOHN GORGONIE EDON', 'Live In Partner', '1988-05-09', 37, 'Male', 'COLLEGE LEVEL', 'Driver', '', NULL, NULL, NULL, NULL, '21d92c7a03ebebeba56ae4bbf24c477a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22668, 8269, '0100-02', 'HONEY GRACE EDON', 'Daughter', '2013-06-14', 12, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'c75ebfbe71231aebc4ac24a179ae4a14', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22669, 8269, '0100-03', 'KID JOHN EDON', 'Son', '2021-01-01', 5, 'Male', 'K1', 'Student', '', NULL, NULL, NULL, NULL, 'e33778d6034244f126e84d524c4417e6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22670, 8269, '0100-04', 'ELJOHN EDON', 'Son', '2023-01-26', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'dda9b46cd054319b0be307887c1388a5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22671, 8270, '0101-01', 'ROWENA GRADO', 'Mother', '1979-03-14', 47, 'Female', 'HIGHSCHOOL GRADUATE', '', '', NULL, NULL, NULL, NULL, 'acdbeb8bd24878355e6e020cab82c814', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22672, 8270, '0101-02', 'JHIMWEN DONAX', 'Brother', '2005-06-17', 20, 'Male', 'GRADE 12', 'Student', '', NULL, NULL, NULL, NULL, 'a480d02e6f65a2b270bc023a348ddb49', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22673, 8270, '0101-03', 'JENELLE CRISTA SAMONTE', 'Sister', '2010-12-26', 15, 'Female', 'GRADE 9', 'Student', '', NULL, NULL, NULL, NULL, '2ab47e85263d979f7d4bdf150242b784', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22674, 8270, '0101-04', 'JIMME SAMONTE', 'Father', '1972-12-21', 53, 'Male', 'COLLEGE LEVEL', 'Business', '20000', NULL, NULL, NULL, NULL, '8c5275ffd6c2e9c9db7623859f716847', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22675, 8271, '0102-01', 'PHEA PACULANAN', 'Daughter', '2019-02-17', 7, 'Female', 'GRADE 1', 'Student', '', NULL, NULL, NULL, NULL, '249f192aa3b026898a80589bf4e7099e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22676, 8271, '0102-02', 'ALEXA PACULANAN', 'Daughter', '2022-12-24', 3, 'Female', '', '', '', NULL, NULL, NULL, NULL, '3e723a7ed7369bf6b29f0641a5df6056', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22677, 8272, '0103-01', 'SUSAN T. PACULANAN', 'Wife', '1972-10-25', 53, 'Female', 'HIGHSCHOOL LEVEL', 'On-call Lubelles', '5000', NULL, NULL, NULL, NULL, 'e6f92c56f70bb508454a42a8df715e3b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22678, 8272, '0103-02', 'OSHYN MAE T. PACULANAN', 'Daughter', '2000-05-04', 25, 'Female', 'COLLEGE GRADUATE', '', '', NULL, NULL, NULL, NULL, '4ba154f03b00e324237a87fb5573bbae', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22679, 8272, '0103-03', 'JOBERT T. PACULANAN', 'Son', '2005-05-15', 20, 'Male', 'SECOND YEAR COLLEGE', 'Student', '', NULL, NULL, NULL, NULL, '33d97af0c45aa4c5d887961be2a4860d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22680, 8272, '0103-04', 'ICONVIENUS T. PACULANAN', 'Daughter', '2010-05-16', 15, 'Female', 'GRADE 10', 'Student', '', NULL, NULL, NULL, NULL, 'eaf23a3312643266ba4e8ad84607aa9b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22681, 8272, '0103-05', 'ROSE JANE T. PACULANAN', 'Daughter', '2011-10-07', 14, 'Female', 'GRADE 8', 'Student', '', NULL, NULL, NULL, NULL, '6fd1806f52b04817593f838eee4ba320', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22682, 8273, '0104-01', 'MACAS, REYJAN', 'Son', NULL, 0, 'Male', '', 'Job Order', '', NULL, NULL, NULL, NULL, 'ccc8c9bea0d93b13c80f83dda1a979d7', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22683, 8274, '0105-01', 'TAGOD, EDILLOS JR.', 'Partner', NULL, 0, 'Male', '', 'Carpenter', '', NULL, NULL, NULL, NULL, 'c6afc2243dc11256b5220597d94a33b5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22684, 8274, '0105-02', 'TAGOD, ELI MCAIDEN', 'Son', NULL, 0, 'Male', '', 'Infant', '', NULL, NULL, NULL, NULL, 'ce4cf26c7eebd58c19c1cb19febd225b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22685, 8274, '0105-03', 'CABILIN, LOREJUN', 'Brother', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'e15bd8d64ee5a3364b3d037001dcad02', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22686, 8275, '0107-01', 'UY, MARYJANE', 'Wife', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'b755b8857bcdf86fc737ae4a5e0a4917', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22687, 8275, '0107-02', 'UY, JOVENSON', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c915cb7071352486e54540d7e52337c7', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22688, 8275, '0107-03', 'UY,KITH ANTHONY', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '4abc702f3a79365d14f13442f2ccb87b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22689, 8275, '0107-04', 'UY, ZYRA MEA', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '7e8442d09b020c455b24ccea8775ca1e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22690, 8275, '0107-05', 'UY, WRENLY', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '0df78c6a1226aa964c8913fad9cf299b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22691, 8276, '0108-01', 'TRIXIE DURIAS', 'Sister', '2005-09-04', 20, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '5ebad2c6acfe1e66826b74f5d60fce56', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22692, 8276, '0108-02', 'CHARITY DURIAS', 'Sister', '2015-01-22', 11, 'Female', 'ELEMENTARY LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '171aaf6b641049ed6713b9f242d842ee', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22693, 8276, '0108-03', 'AZALLIYAH FAYE DELOS SANTOS', 'Daughter', '2024-06-01', 1, 'Female', '', '', '', NULL, NULL, NULL, NULL, '8181131033e545fd3e9e65c9c8abed3d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22694, 8277, '0109-01', 'BULORON, PRINCESS  ALIXYVENS', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'ea538431a7634b028e99131f7bbbfd21', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22695, 8277, '0109-02', 'BULORON, PRECIOUS AMANY LEIGHS', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '609f75875dea707d428874deaf20c6f4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22696, 8277, '0109-03', 'BULORON, AURELEPE', 'Wife', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6f0da29693b8d76bb82a44e339c4839e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22697, 8278, '0110-01', 'VICTOR DOSDOS JR.', 'Father', '1949-09-22', 76, 'Male', '', 'None', '', NULL, NULL, NULL, NULL, 'a84db339167d1ea9d5e8735199153d6d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22698, 8279, '0111-01', 'LAGUMBAY, GABRIEL KRIS AUSTINO', 'Grandson', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'a60fe66efbc354953bb6de8e6de7e1ff', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22699, 8279, '0111-02', 'LAGUMBAY, CELESTINE MARY JULEN', 'Grand Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9955227e961ccafb012612a4960eb994', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22700, 8279, '0111-03', 'LAGUMBAY VINCE DARWIN', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '715707fce0b43405ad95e73fc1a308ec', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22701, 8280, '0112-01', 'LOANA CABILOGAN', 'Live-in Partner', '2003-11-13', 22, 'Male', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'b30bd8836b01490b54ff15a89dcd573f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22702, 8281, '0113-01', 'ROBERTO DALING', 'Husband', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '84a2dc835041f9db64a3020927ce5dee', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22703, 8281, '0113-02', 'EINSTEIN DALING', 'Grandson', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '0564a88801ffff44b91d7902a836fd72', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22704, 8281, '0113-03', 'MARY JOY DALING', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'df189d3761f84d4cc7c01919d6f2b368', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22705, 8282, '0114-01', 'ANDREA', 'Daughter', '2019-08-20', 6, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '71271877d1bdb95681baf800a2a63bcc', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22706, 8282, '0114-02', 'JACK', 'Son', '2022-07-06', 3, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'e0884828e67ececd550ee9da9a0005d4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22707, 8282, '0114-03', 'SHIELA', '', '2002-02-02', 24, 'Female', '', '', '', NULL, NULL, NULL, NULL, '30d3a9b8306b585534de2aeefda250f5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22708, 8282, '0114-04', 'CLEY', 'Husband', '1994-05-13', 31, 'Male', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'e01c2f03d206ce79fe118607902ccc1a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22709, 8283, '0115-01', 'ALYZZA NIÑA MAE ACEBES', 'Daughter', '2008-01-19', 18, 'Female', 'HIGHSCHOOL LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '78c2f6d077dba9123e7698972249f0aa', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22710, 8283, '0115-02', 'ALIAH JANE A. SARANILLO', 'Daughter', '2013-06-20', 12, 'Female', 'ELEMENTARY LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '02a7642ab077bec9b98c944adc1af9d1', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22711, 8284, '0116-01', 'CABILIN CARAMEL', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'e9abcda19e25c177026dead0273c2f83', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22712, 8284, '0116-02', 'CABILIN AYESHA', 'Grand Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '56f474be0f87e03eb61eaafea61f0537', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22713, 8284, '0116-03', 'CABILIN ALASHA', 'Grand Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '1e298be5266544eeb98afca1996e160b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22714, 8285, '0117-01', 'BABIA, KLINT JOHN', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'a786c77e8036f0e79405161a33a2096d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22715, 8285, '0117-02', 'BABIA, KENDRA', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '25a28d0066f4fd56d60a6890b9b6da31', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22716, 8285, '0117-03', 'BABIA, CHLOE JANE', 'Daughter', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '88caa976af7e6f7f23c9b0406f86d958', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22717, 8286, '0118-01', 'KILON ENGUITO', '', '1968-07-10', 57, 'Male', 'HIGHSCHOOL LEVEL', '', '', NULL, NULL, NULL, NULL, '7eea7f58143b4b32d654de656a12cbe5', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22718, 8286, '0118-02', 'EANA TIZON', '', '1978-10-09', 47, 'Female', 'ELEMENTARY LEVEL', '', '', NULL, NULL, NULL, NULL, '3f16248e045186b83589931320ff23ea', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22719, 8286, '0118-03', 'ARIANNE TIZON', '', '1999-11-21', 26, 'Female', 'HIGHSCHOOL LEVEL', '', '', NULL, NULL, NULL, NULL, '1ddc815ea0d9394fbb5e3680e0fbea29', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22720, 8286, '0118-04', 'HAJI ENGUITO', '', '2009-09-09', 16, 'Male', 'SENIOR HIGH', '', '', NULL, NULL, NULL, NULL, '3f4ddff3fc7cc9a7dbb96454d6128e3f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22721, 8286, '0118-05', 'JUNIOR TIZON', '', '2019-08-14', 6, 'Male', '', '', '', NULL, NULL, NULL, NULL, '405f8e7a1192b9a82a35054a99c4e77c', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22722, 8286, '0118-06', 'MARIAN TIZON', '', '2023-04-22', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, '7a7556bdea6aeb5bf7240c880f493d38', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22723, 8287, '0119-01', '...', 'Daughter', '2009-12-02', 16, 'Female', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'f51b8f6573316576efd3ac3a59726a6e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22724, 8287, '0119-02', '...', 'Daughter', '2012-10-05', 13, 'Female', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'dd0ee6012642515cc9396aa098408bcc', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22725, 8287, '0119-03', '...', 'Cousin', '2019-01-01', 7, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'ff0cc3e1498d1679cc52d50ccb405dfa', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22726, 8287, '0119-04', '...', 'Cousin', '2019-01-01', 7, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '321664bfb5ba5e6f535c462763d895b2', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22727, 8287, '0119-05', '...', 'Daughter', '2002-04-03', 24, 'Female', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '40c3314777aab1e87986ac3cb3f20575', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22728, 8287, '0119-06', '...', 'Son', '2001-01-01', 25, 'Male', 'COLLEHE', '', '', NULL, NULL, NULL, NULL, '931d9b1c0f60cee53c232903c4cfe08b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22729, 8287, '0119-07', '...', 'Son', '2004-01-01', 22, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '41f3a0eab2b5957ed2288ce40f9befac', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22730, 8287, '0119-08', '...', 'Son', '2001-01-01', 25, 'Male', 'COLLEGE', 'House Keeper', '', NULL, NULL, NULL, NULL, 'c2035d36574c9c5d96fa46ebd21c1a46', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22731, 8288, '0120-01', 'BOBELA, KATHERINE', 'Wife', NULL, 0, 'Male', '', 'Housewife', '', NULL, NULL, NULL, NULL, '72adea4a35ac3e22259c8e9919b9b169', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22732, 8288, '0120-02', 'BOBELA, NENIA CASSANDRA', 'Daughter', NULL, 0, 'Female', '', 'Student', '', NULL, NULL, NULL, NULL, 'b7a8f92ba4b62d863e9bf024960ed18a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22733, 8288, '0120-03', 'BOBELA , JAKE CARLY', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6acf201bd05d25c1cdbfb5b0221fc6b6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22734, 8290, '0122-01', 'PABLITA BABIA', 'Wife', NULL, 0, 'Female', '', 'Housewife', '', NULL, NULL, NULL, NULL, '9e13d30a142e5b2019f69245f82d47b7', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22735, 8290, '0122-02', 'KATHREN BABIA', 'Daughter', NULL, 0, 'Female', '', 'Student', '', NULL, NULL, NULL, NULL, 'e75c80a3555c9bf1bb4ff9860646526a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22736, 8291, '0123-01', 'BERLY TUNIACAO', 'Wife', '1998-11-18', 27, 'Female', 'HIGH SCHOOL', 'House Wife', '', NULL, NULL, NULL, NULL, '5bcac9ef3c07091497005098c17aa051', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22737, 8291, '0123-02', 'JOHN TUNIACAO', 'Son', '2018-07-24', 7, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, 'd3200c66b0ba5cd786ad6810d23c321b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22738, 8291, '0123-03', 'MAY TUHNIACAO', 'Daughter', '2021-05-10', 4, 'Female', 'DAY CARE', 'Student', '', NULL, NULL, NULL, NULL, 'df342ae5d42f128fba996cfc5efa347f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22739, 8292, '0124-01', 'REY DAGOOC', 'Father', '1970-07-31', 55, 'Male', 'HIGHSCHOOL LEVEL', 'Responder', '', NULL, NULL, NULL, NULL, 'b00973f881e667ae01b340166d0f37db', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22740, 8292, '0124-02', 'REJIE DAGOOC', 'Son', '1995-04-29', 30, 'Male', 'HIGHSCHOOL GRAD', 'Laborer', '', NULL, NULL, NULL, NULL, 'c0863e562545564be70d79c0e521b860', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22741, 8292, '0124-03', 'RENJIE DAGOOC', 'Son', '2005-01-18', 21, 'Male', 'COLLEGE LEVEL', 'Responder', '', NULL, NULL, NULL, NULL, '62c7a7f8122a3eeec67f43ab7a730d81', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22742, 8292, '0124-04', 'RITCHEL JOY DAGOOC', 'Daughter', '2011-10-13', 14, 'Female', 'HIGHSCHOOL LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '34b103d1aff5923da525b3f3d544852f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22743, 8292, '0124-05', 'RITCHNIEL JAY', 'Son', '2013-02-16', 13, 'Male', 'HIGHSCHOOL LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'c856aafb61dde6ceeb1e1f844227a96e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22744, 8292, '0124-06', 'KRISTY KATE', 'Daughter', '2023-04-04', 3, 'Female', '', '', '', NULL, NULL, NULL, NULL, '61eea5071fb39016a6480377093b3b05', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22745, 8293, '0125-01', 'TIZON', '', '2004-11-21', 21, 'Female', 'HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, 'd43772b08696b8ce4fedac46c0e5a2f9', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22746, 8293, '0125-02', 'TIZON', '', '1978-10-09', 47, 'Female', 'ELEMENTARY', 'Fish Vendor', '', NULL, NULL, NULL, NULL, 'cd15e5bd971fe9d4f01d3899852df19b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22747, 8293, '0125-03', 'ENGUITO', 'Step-father', '1968-07-10', 57, 'Male', 'HIGH SCHOOL', 'Sweeper', '', NULL, NULL, NULL, NULL, '4a01a2588be25266be06ab88ac15bf80', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22748, 8293, '0125-04', 'ENGUITO', 'Grandson', '2009-09-09', 16, 'Male', 'SENIOR HIGH SCHOOL', '', '', NULL, NULL, NULL, NULL, '5802e8f2f5f3ed1d921f38ff8e24f939', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22749, 8293, '0125-05', 'TIZON', 'Son', '2019-02-14', 7, 'Male', 'DAY CARE', '', '', NULL, NULL, NULL, NULL, '1011b5d08cc9a1eedd15fa9384157a6b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22750, 8293, '0125-06', 'TIZON', 'Daughter', '2023-04-12', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, '2934bae7671ac3f4ae5ba32cc69d61c2', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22751, 8294, '0126-01', 'LAGUMBAY YSRAEL ANTOINE S', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'e9f5ce88932222906b6593c29d815a0b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22752, 8294, '0126-02', 'ACENAS RAFFY', 'Partner', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '344186c8af45be47b65b336230bc6538', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22753, 8295, '0128-01', 'MARCIAL ESTRERA', 'Husband', '1968-11-10', 57, 'Male', 'HIGHSCHOOL GRAD', 'Fisherman', '', NULL, NULL, NULL, NULL, '5d68ba9863e9fbc48cecda762766ea47', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22754, 8295, '0128-02', 'MITCHAL ESTRERA', 'Daughter', '1999-04-22', 26, 'Female', 'COLLEGE LEVEL', 'Contractual', '', NULL, NULL, NULL, NULL, '40a6ec2395fefbac7ef92ff46444a3b6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22755, 8295, '0128-03', 'JESSEL MAE OBSID', 'Daughter', '2003-11-19', 22, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'ebac63088c57ac80c14f7aae54d54830', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22756, 8295, '0128-04', 'MARC LESTER ESTRERA', 'Son', '2004-06-08', 21, 'Male', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '9448b95fef61be24dd5936438301d427', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22757, 8295, '0128-05', 'MARK ZAYDEN ESTRERA', 'Grandson', '2025-06-08', 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8c6abccaa150e5393126e1ed38dec5e4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22758, 8296, '0129-01', 'GALGO DARYN', 'Wife', NULL, 0, 'Male', '', 'Housewife', '', NULL, NULL, NULL, NULL, 'c4deeec8b3d6ff2be68c0f9c960b5f4e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22759, 8296, '0129-02', 'GALGO SEAN', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '2d9a3ffcacb223517c6be6b40dc01fd3', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22760, 8296, '0129-03', 'GALGO ANTONIO', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6041456b054a817eb059677b779d2e29', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22761, 8296, '0129-04', 'GALGO SEBASTIAN', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '4775b0469c0f288427d5bb1a01239f31', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22762, 8297, '0132-01', 'JENO CORRO', 'Husband', '1989-02-19', 37, 'Male', 'GRADE 3', 'Laborer', '', NULL, NULL, NULL, NULL, 'efd72a696d8cd5358e86bcbd10952fa6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22763, 8297, '0132-02', 'PRINCESS MARY CORRO', 'Daughter', '2012-07-24', 13, 'Female', 'GRADE 8', 'Student', '', NULL, NULL, NULL, NULL, '1479fed0855276c6a9e5acbce59b6cbb', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22764, 8297, '0132-03', 'JENO JR. CORRO', 'Son', '2015-04-25', 10, 'Male', 'GRADE 5', 'Student', '', NULL, NULL, NULL, NULL, '5757903f7f27cd6ab77262acd8c9b81e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22765, 8299, '0135-01', 'JESUS', 'Husband', '1987-12-18', 38, 'Male', 'ELEMENTARY', 'Construction', '', NULL, NULL, NULL, NULL, '112b0bd053469fafc8040a7e5ac6c110', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22766, 8299, '0135-02', 'JENIE', 'Daughter', '2012-05-09', 13, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, 'd552b61f5b508a1f5812072bfa229a4b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22767, 8300, '0136-01', 'DAHANG', 'Live-in Partner', '2004-02-24', 22, 'Male', 'COLLEGE', 'Labor', '', NULL, NULL, NULL, NULL, '15335573f538eadfaa4b9f6f7d75fef7', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22768, 8301, '0137-01', 'RAMIL ESTRERA SR.', 'Husband', '1972-11-05', 53, 'Male', '', 'Fisherman', '', NULL, NULL, NULL, NULL, '2d3405aadc5d4895bf934b216da9e069', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22769, 8302, '0138-01', 'MAESTRADO', 'Husband', '1995-05-30', 30, 'Male', 'COLLEGE GRADUATE', 'Merchandiser', '', NULL, NULL, NULL, NULL, '1f9fc45651d9f212559b99bdc15687c8', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22770, 8302, '0138-02', 'ANDRIE', 'Son', '2018-11-11', 7, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '62860c2e419978b8b24e5e197f3bd44b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22771, 8302, '0138-03', 'RHEA', 'Daughter', '2023-04-19', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9df66557c0b5689a6da3a5ce0c366488', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22772, 8303, '0139-01', 'OSCAR ONCADA', 'Husband', '1978-01-27', 48, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd572585ca0a5841123dc0cc80b112555', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22773, 8303, '0139-02', 'OSCAR JAY EBORLE', 'Son', '1999-08-04', 26, 'Male', '', '', '', NULL, NULL, NULL, NULL, '3d92fd8caa73b2e5de6ac479e84c9c03', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22774, 8303, '0139-03', 'JAMES EBORLE', 'Son', '2001-10-31', 24, 'Male', '', '', '', NULL, NULL, NULL, NULL, '16ee8d46a22274b57242694e050217f4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22775, 8303, '0139-04', 'MAE FATIMA ONCADA', 'Daughter', '2012-10-13', 13, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'c1f7a4e775e90a2ff033f8a3c8409b0b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22776, 8304, '0141-01', 'ROY TIZON', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '57372f6c21e1f16da4aa543a0f4c7be2', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22777, 8305, '0142-01', 'CHARLIE ADLAON', 'Husband', '1990-03-09', 36, 'Male', '', '', '', NULL, NULL, NULL, NULL, '77a22103f305d5e7edd40ae029a5d9d1', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22778, 8305, '0142-02', 'CHARLES DYLAN', 'Son', '2023-07-18', 2, 'Male', '', '', '', NULL, NULL, NULL, NULL, '1b69fdb4a051ff4b6f2efd678db84526', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22779, 8306, '0146-01', 'NEL ATAZAN', '', '1987-07-27', 38, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c21a849060741b5c044a3e910c3176ff', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22780, 8306, '0146-02', 'ES DAYUNO', '', '2006-08-15', 19, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'a0f5bd504834d684fabc8250107abf2b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22781, 8306, '0146-03', 'ADETH DAYUNO', '', '2015-04-15', 10, 'Male', '', '', '', NULL, NULL, NULL, NULL, '059edf4e1a6a15a8d34eee25fc51d97d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22782, 8306, '0146-04', 'GARDE', '', '2019-04-07', 6, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9d495c077ebef3c1149d10bfba32ea9c', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22783, 8306, '0146-05', 'GARDE', '', '2022-07-07', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, '216e1484d2e7b0efd7bc311d614aa22a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22784, 8307, '0147-01', 'RICO GABUCAN', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '115c64a0201c9c0b154b189031911034', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22785, 8307, '0147-02', 'JOANNE GABUCAN', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'd7a9bfca93060545345901b60fae284f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22786, 8307, '0147-03', 'CAROLYN GABUCAN', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'c39107b2be3ed7b72404abdbc00dd9a1', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22787, 8307, '0147-04', 'MARGIE CARCASONA', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'efed391c9554d441698d62e71d6c373a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22788, 8307, '0147-05', 'JOSELITO GABUCAN', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8914fc78d3a425fcb5df5e94ff9ff6dd', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22789, 8307, '0147-06', 'GIBRAN SAAB', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '08a0eaff66e39b3790ab165402001fc6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22790, 8308, '0149-01', 'VENDYLYN ABANG', 'Spouse', '1989-11-28', 36, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'b524cce56fa04b708a258466851b3f09', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22791, 8308, '0149-02', 'YHURE DEONE SALEM', 'Step Daughter', '2009-12-23', 16, 'Female', '', '', '', NULL, NULL, NULL, NULL, '5de7f88b2058c8a41da6ecb56cd20b2f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22792, 8308, '0149-03', 'ARK AUGUSTUS GAYO', 'Son', '2012-08-16', 13, 'Male', '', '', '', NULL, NULL, NULL, NULL, '39297a76c3fc47969569e187490571af', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22793, 8309, '0150-01', 'DANEL DAHANG', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'b5a9c137c5e926b8e6ec68f028583ece', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22794, 8309, '0150-02', 'CHARYN DAHANG', 'Daughter', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '169a7e8cd3be28de4bce19ca06ba8d97', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22795, 8309, '0150-03', 'KEN-JAY DAHANG', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'aa181e3d88392fbae9334e2640a36861', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22796, 8310, '0151-01', 'GERALD JAY EBARLE', 'Son', '2001-03-24', 25, 'Male', 'HIGHSCHOOL LEVEL', '', '', NULL, NULL, NULL, NULL, 'e410632aa1923ddcc3b04d746a8b4503', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22797, 8310, '0151-02', 'GERALD SACAL JR.', 'Som', '2002-12-31', 23, 'Male', 'HIGHSCHOOL GRADUATE', '', '', NULL, NULL, NULL, NULL, 'f81d1c57d30622326068fc9ce42adb5f', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22798, 8310, '0151-03', 'SCARLET SNOW SACAL', 'Daughter', '2018-09-16', 7, 'Female', 'ELEMENTARY LEVEL', '', '', NULL, NULL, NULL, NULL, 'fc3933869973c7382f19245a9c9dfbd3', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22799, 8310, '0151-04', 'AJ SACAL', 'Son', '2024-04-30', 1, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c8a8689f4fd485f53ebdcf3e1c475d4a', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22800, 8311, '0154-01', 'EVANGELINE TALISAY', 'Wife', '1966-02-06', 60, 'Female', '', 'Housewife', '', NULL, NULL, NULL, NULL, 'd722d75a997025d1067cc22477bdd091', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22801, 8311, '0154-02', 'JESSECA FRANCISCO', '', '1993-10-01', 32, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'e3aeccd8b41877870aaa9bdd91804e7e', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22802, 8311, '0154-03', 'VINCENT TALISAY', '', '1997-03-30', 29, 'Male', '', '', '', NULL, NULL, NULL, NULL, '21df85b4890e1dce1818d1b842a8d7d4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22803, 8311, '0154-04', 'DIOSMAR TALISAY', '', '2000-02-15', 26, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'eabcfccb67f73422dd32d16bbf8b7d70', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22804, 8311, '0154-05', 'ANGELO TALISAY', '', '2003-05-02', 22, 'Male', '', 'Student', '', NULL, NULL, NULL, NULL, '23a95a72876933073cc7d98f1bd29dc9', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22805, 8311, '0154-06', 'SKY CAINGLET', '', '2018-01-09', 8, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'ec3453eaa4a074697a65bb3e28e4813d', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22806, 8312, '0155-01', 'GALGO ANDREW MATBO', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '75ce90cd40c7d6fa61f78fdc4779a6e4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22807, 8312, '0155-02', 'GALGO MARY ANN', 'Wife', NULL, 0, 'Female', '', 'Housewife', '', NULL, NULL, NULL, NULL, 'e3b0e41187293d46a3f5ff96a35730d4', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22808, 8313, '0156-01', 'ANTONIA', 'Live-in Partner', '1968-06-20', 57, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'b15c9877580963c839657ccef4f83723', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22809, 8313, '0156-02', 'NIÑO', 'Son', '2009-07-19', 16, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'c315d11d6867923dda91c3e2bafab2cb', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22810, 8314, '0157-01', 'JHIEN MAYLEC', '', '2002-05-01', 23, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'ecafcce042394da78a1c65f3fcef4dd6', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22811, 8314, '0157-02', 'WYINA LIN', '', '2006-08-02', 19, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'a0d79f44ae2e4c281e0396c869b446fa', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22812, 8314, '0157-03', 'WILYAH TALISAY', '', '2004-12-17', 21, 'Female', '', '', '', NULL, NULL, NULL, NULL, '3501cc9440b549af8bba469c0e7cdf07', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22813, 8314, '0157-04', 'WILSHIEN TALISAY', '', '2012-10-15', 13, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'f748de43cbaf19a948feaf202786b1a0', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22814, 8315, '0158-01', 'TIZON', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '053257e99cced358cd85c5ec1e3ada35', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22815, 8315, '0158-02', 'TYLER YAMSON', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'a5a7955f81226f88921d0c2c86d912cd', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22816, 8316, '0160-01', 'JOHN PAUL OGAJ', 'Grandson', '2010-12-30', 15, 'Male', '', '', '', NULL, NULL, NULL, NULL, '60e40a20a36a45d9a5a27a166db3ef6b', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22817, 8316, '0160-02', 'MA. ALTHEA LUNGA', 'Grand Daughter', '2014-08-21', 11, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'e917c7446f3d5c4b9079bb198a4a1ee8', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22818, 8316, '0160-03', 'JIMUEL CAHIMAT', 'Grandson', '2013-07-20', 12, 'Male', '', '', '', NULL, NULL, NULL, NULL, '0c84d6e979760c5ca84d28591589d4dc', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22819, 8316, '0160-04', 'JOHN LIMUEL  CAHIMAT', 'Grandson', '2015-02-17', 11, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'e493cfc508b13d62bdf7fdc6262c3f21', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22820, 8316, '0160-05', 'FEUT CAHIMAT', 'Grandson', '2018-02-17', 8, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9c1d5282cf2fdace92b2581ee90d19fb', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22821, 8316, '0160-06', 'INOCENCIO CAHIMAT', 'Husband', '1969-07-21', 56, 'Male', '', '', '', NULL, NULL, NULL, NULL, '7c0a8705632dc68237df28e81ba830eb', NULL, 'active', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(22822, 8317, '0163-01', 'CABONILLAS, JONAS', 'Son', '2007-02-10', 19, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'c93444f92d89a55fcbf06e1aa3235a7e', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22823, 8317, '0163-02', 'CABONILLAS, MARIAN', 'Daughter', '2006-06-09', 19, 'Female', '', '', '', NULL, NULL, NULL, NULL, '24779c2d542cfbb090628e4384b7f1d1', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22824, 8318, '0164-01', 'ANTORILA', 'Partner', '1968-06-20', 57, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, 'fe0a1cd507359ee6e09f83650f95d2b2', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22825, 8318, '0164-02', 'NIÑO', 'Son', '2009-07-19', 16, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'a4098ad0ae4d812ff017375830950548', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34');
INSERT INTO `family_members` (`id`, `resident_id`, `member_id`, `name`, `relation`, `birthdate`, `age`, `sex`, `education`, `occupation`, `remarks`, `photo`, `id_photo_front`, `id_photo_back`, `birth_certificate`, `qr_code_token`, `qr_code_id`, `status`, `created_at`, `updated_at`) VALUES
(22826, 8319, '0165-01', 'ROMMEL JR JACOT ALCANTAR', 'Grandson', NULL, 0, 'Male', 'HIGHSCHOOL  GRAD', 'Bakeshoppe', '', NULL, NULL, NULL, NULL, '5e7d083ecaf9c3749911d69941c69721', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22827, 8319, '0165-02', 'LOCKSLEY KIEFOR MARKO', 'Grandson', '2001-12-01', 24, 'Male', 'HIGHSCHOOL  GRAD', '', '', NULL, NULL, NULL, NULL, '5d25714131b53564e5ea3dad6801fd08', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22828, 8319, '0165-03', 'ROSEIL ALCANTAR', 'Son', '1979-09-19', 46, 'Male', 'HIGHSCHOOL', 'Fisherman', '', NULL, NULL, NULL, NULL, 'a35ef17fa62bce1a9335abee05db45be', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22829, 8320, '0166-01', 'JEROME', 'Husband', '1995-06-25', 30, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '768f1bdfbaa958803332f6f2dd5b0227', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22830, 8320, '0166-02', 'ATHENA MALYN', 'Daughter', '2020-01-11', 6, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '74280e124d3872c3ad66574310ca9368', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22831, 8321, '0167-01', 'JENIE', 'Daughter', '2012-05-09', 13, 'Female', 'HIGHSCHOOL', 'Student', '', NULL, NULL, NULL, NULL, '0b1c748b7871ad126b85b6a5b15821f9', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22832, 8321, '0167-02', 'JESUS', 'Husband', NULL, 0, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '6d08168d800e756e44fcb2cb032d890f', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22833, 8322, '0168-01', 'GERAME', 'Brother', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'fb31731ba20959c98af9926f71aca694', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22834, 8322, '0168-02', 'DAVE', 'Brother', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'a1baf0f994dfa09308486281b7013c98', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22835, 8322, '0168-03', 'ARCILIE', 'Mother', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'ef18d67bdd3898e8036e116447670b4d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22836, 8322, '0168-04', 'BERNARDO', 'Brotheer', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'fc3af07f4a30940da4671ff03d586197', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22837, 8323, '0169-01', 'JONALYN', 'Partner', '2001-06-03', 24, 'Male', 'K-12', '', '', NULL, NULL, NULL, NULL, '2d8e52e8067e755d03fc77cd200c2edb', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22838, 8323, '0169-02', 'LYSARDER', 'Son', '2020-03-29', 6, 'Male', 'KINDER', '', '', NULL, NULL, NULL, NULL, 'c5ca3c0d8e3a13ba39e6a08c4a1ea3f9', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22839, 8323, '0169-03', 'GRACE ASHLYN', 'Daughter', '2022-09-02', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6fb4e0271439704d5500cdf42e3503b9', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22840, 8324, '0170-01', 'NICOLAS', 'Father', '1960-09-04', 65, 'Male', 'ELEMENTARY', 'Habal-habal Driver', '', NULL, NULL, NULL, NULL, '1e0c544d7d17422ee90a64085bf1811d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22841, 8324, '0170-02', 'SONIA', 'Mother', '1963-10-15', 62, 'Female', 'HIGHSCHOOL LEVEL', 'Housewife', '', NULL, NULL, NULL, NULL, '4222b22beeebdfb9e2279de15e19a26b', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22842, 8324, '0170-03', 'MAY-ANN', 'Daughter', '2001-05-04', 24, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '184cebb2e7eab20412ecc604094fb96f', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22843, 8324, '0170-04', 'JAY-ANN', 'Granddaughter', '2007-02-08', 19, 'Female', 'COLLEGE LEVEL', 'Student', '', NULL, NULL, NULL, NULL, '5699590f8737a4c02d55ba16706aa1ac', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22844, 8324, '0170-05', 'KHINJE', 'Grandson', '2016-10-30', 9, 'Male', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '89342aa433ecfa9465303ad49b239ebb', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22845, 8325, '0171-01', 'AYA LUMBA', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '4af9b345277ff7322769d4c05168cd50', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22846, 8325, '0171-02', 'APYAT', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'a4756e1786066e64ff822dcdcb6d3403', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22847, 8325, '0171-03', 'KRISTA', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '4c3a930d22544e3cce024c2a7648796f', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22848, 8325, '0171-04', 'KYUKYU', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '271414912e903060b7dfb752562aee44', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22849, 8325, '0171-05', 'HENRYVIL', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '0d8f07787c72a2e548e3d9876b842aee', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22850, 8325, '0171-06', 'HANNAH', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'effc264a9dfb6fb8da24b6b6aac7975c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22851, 8325, '0171-07', 'MARIBEL', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '918666b523a2b983c458a8a8f07d8ab8', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22852, 8325, '0171-08', 'ERIC', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '7f1a6e1e2ac36b12a8a4bb1a9d50851c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22853, 8325, '0171-09', 'MECHEL', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'f7999024a5a465a1f366529d93dcc6ed', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22854, 8325, '0171-10', 'JULIUTO', '', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, '74139b99eb0ea9e2c9b3e552d843c994', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22855, 8326, '0175-01', 'INOSENCIO LADAO', 'Husband', NULL, 0, 'Male', '', 'Rela Driver', '', NULL, NULL, NULL, NULL, '6576bdbef907df8d8aea531e21b30c22', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22856, 8326, '0175-02', 'RECHIE MAE LADAO', 'Daughter', '2009-10-13', 16, 'Female', '', 'Student', '', NULL, NULL, NULL, NULL, 'e8fd0312cc3c52976afdc3b6283d6c2d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22857, 8326, '0175-03', 'PRETHENE JOY LADAO', 'Daughter', '2014-09-14', 11, 'Female', '', 'Student', '', NULL, NULL, NULL, NULL, 'e78d8f74ea20148a242473fa1636cdb1', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22858, 8326, '0175-04', 'FRITZ IAN LADAO', 'Son', NULL, 0, 'Male', '', 'Student', '', NULL, NULL, NULL, NULL, 'f2dfad1bf7e6eb5106371e82ff21988b', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22859, 8326, '0175-05', 'CHRISTIAN KIN  LADAO', 'Son', NULL, 0, 'Male', '', 'Student', '', NULL, NULL, NULL, NULL, '90142175bc5a3c5eca8739a571184fe2', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22860, 8327, '0176-01', 'JEROME LOPESAN', 'Live-in Partner', '1989-06-28', 36, 'Male', '', '', '', NULL, NULL, NULL, NULL, '9eb93e1f9501cf8d33ba1ccc41017148', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22861, 8327, '0176-02', 'STEPHANIE LOPESAN', 'Daughter', '2012-04-15', 13, 'Female', '', '', '', NULL, NULL, NULL, NULL, '445e4e374264a49c70f87e578f3d772e', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22862, 8327, '0176-03', 'ROMIE LOPESAN', 'Son', '2015-03-01', 11, 'Male', '', '', '', NULL, NULL, NULL, NULL, '5533d70fb1447974e0585dad0862df53', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22863, 8327, '0176-04', 'TREXIE', 'Daughter', '2023-05-29', 2, 'Female', '', '', '', NULL, NULL, NULL, NULL, '6490f734f03cf7f82687632bbf254c81', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22864, 8327, '0176-05', 'DANTE RESMINS', 'Brother', '2004-04-03', 22, 'Male', '', '', '', NULL, NULL, NULL, NULL, '853f9c6887e8dfdd486610faf0c7489c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22865, 8328, '0177-01', 'INOCENCIO VIRTUDAZO', '', '2001-01-17', 25, 'Male', '', '', '', NULL, NULL, NULL, NULL, '12bd9b2cb544720ae82d51cb9e633d1e', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22866, 8328, '0177-02', 'MIKAELA GRACE SADUESTE', 'Daughter', '2012-01-12', 14, 'Female', '', '', '', NULL, NULL, NULL, NULL, '87b492d1caaf9e11afc2b13ea61eadd9', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22867, 8329, '0178-01', 'ESTER F. DAHAN', 'Wife', '1961-11-28', 64, 'Female', 'COLLEGE LEVEL', 'Housewife', '', NULL, NULL, NULL, NULL, '0c17e38161ea015754dea0265f9b770d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22868, 8329, '0178-02', 'MAY ANN DAHAN', 'Daughter', '1995-05-11', 30, 'Male', 'COLLEGE GRADUATE', 'Teacher', '', NULL, NULL, NULL, NULL, '18c5eb4d337eeea7781b90391080e639', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22869, 8329, '0178-03', 'MARY GRACE DAHAN', 'Daughter', '1999-10-01', 26, 'Male', 'COLLEGE GRADUATE', 'Registrar Officer', '', NULL, NULL, NULL, NULL, 'da5b690cc4a9a46a8da00c0163bd1674', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22870, 8329, '0178-04', 'LESAR F. DAHAN', 'Son', '1998-04-17', 27, 'Male', 'COLLEGE GRADUATE', 'Teacher', '', NULL, NULL, NULL, NULL, '15c00157c2fce8d00f15621a53f36cff', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22871, 8329, '0178-05', 'ERVIN F. DAHAN', 'Son', '1991-12-16', 34, 'Male', 'COLLEGE GRADUATE', 'Government Employee', '', NULL, NULL, NULL, NULL, 'fcd5c372bb36f074d9b7c6e00128f1e0', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22872, 8330, '0179-01', 'DYEM', 'Daughter', '2009-12-21', 16, 'Female', 'JUNIOR', '', '', NULL, NULL, NULL, NULL, '4d932fc5a84ad08677f317ec53703589', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22873, 8330, '0179-02', 'MYRTEL', 'Daughter', '2012-10-05', 13, 'Female', 'JUNIOR', '', '', NULL, NULL, NULL, NULL, 'a6ce2220fac7125c9aa9f76adf7f53ed', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22874, 8330, '0179-03', 'SOISHEI', 'Daughter', NULL, 0, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '4118c7f8b5cb3353ea512bb62af76ed6', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22875, 8330, '0179-04', 'SHABA', 'Daughter', NULL, 0, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '40dacb2120fac54f19d55f03d3591a5f', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22876, 8330, '0179-05', 'AGIA', 'Son', NULL, 0, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd1ce1cf8dbf76815a2075fa2a81ac206', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22877, 8330, '0179-06', 'CABER', 'Son', NULL, 0, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, 'a7a290e7ae2db0ce9653322f4d0016f4', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22878, 8330, '0179-07', 'APRIL', 'Daughter', NULL, 0, 'Female', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '96a29e9f98650967edef6a0d2995e882', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22879, 8330, '0179-08', 'GUGEN', 'Son', NULL, 0, 'Male', 'COLLEGE', '', '', NULL, NULL, NULL, NULL, '058c6f1c8ae0b196e1a05811e56dd97c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22880, 8331, '0180-01', 'ELISA MONTALBA', 'Mother', NULL, 0, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '5743240f80ac6a60ad6362e10264d889', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22881, 8331, '0180-02', 'HAZEL SALADAS', 'Aunt', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'df9f137cffb93f40e94dd29171def355', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22882, 8331, '0180-03', 'KRIZZA JANE FAYE MONTALBA', 'Daughter', '2010-07-27', 15, 'Female', 'JUNIOR HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '4be425ac5c11315df9cb8708c657a446', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22883, 8331, '0180-04', 'KRIZZA ARIETTA FAYE MONTALBA', 'Daughter', '2010-07-27', 15, 'Female', 'JUNIOR HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'a09cebef3f22640eb563ae4a4db1b01a', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22884, 8331, '0180-05', 'RYZA MAE MONTALBA', 'Daughter', '2011-10-20', 14, 'Female', 'JUNIOR HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'fdef1e8fb73db64205baeb7632d7f7fb', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22885, 8331, '0180-06', 'ELIZABETH MONTALBA', 'Daughter', '2014-09-24', 11, 'Female', 'ELEMENTARY L', '', '', NULL, NULL, NULL, NULL, '6fa51bf5c40fb6241ed1bbcca7cad87d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22886, 8332, '0181-01', 'INOCENCIO VIRTUDAZO', 'Husband', '1956-11-06', 69, 'Male', '', '', '', NULL, NULL, NULL, NULL, '03b38efd5db8b044a4e9e79ff58ebe32', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22887, 8332, '0181-02', 'WARREN VIRTUDAZO', 'Grandson', '2006-02-25', 20, 'Male', '', '', '', NULL, NULL, NULL, NULL, '6f95c8bcadf1d8abe37d6d41c7409b4c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22888, 8333, '0184-01', 'KIMBERLY  TUNIACAO', 'Wife', '1998-11-18', 27, 'Female', 'HIGHSCHOOL GRADUATE', 'Housewife', '', NULL, NULL, NULL, NULL, '7cd050184ced7e0cf558116372114d3c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22889, 8333, '0184-02', 'KIM JOHN TUNIACAO', 'Son', '2018-07-24', 7, 'Male', 'ELEMENTARY LEVEL', 'Student', '', NULL, NULL, NULL, NULL, 'eec21aefc4ae626265a156dea569d0fa', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22890, 8333, '0184-03', 'KIARA MAY TUNIACAO', 'Daughter', '2021-05-10', 4, 'Female', 'DAYCARE', 'Student', '', NULL, NULL, NULL, NULL, 'ca806fdc1112e26d121b50e48d76d891', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22891, 8334, '0185-01', 'REX HERDWUARO', 'Live-in Partner', '1981-08-25', 44, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'fd4062d9543a2acb6fde74e52bc92961', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22892, 8334, '0185-02', 'FEJAN DOSDOS', 'Son', '2009-10-05', 16, 'Male', '', '', '', NULL, NULL, NULL, NULL, '68c69232e92a7f94013bdfb0c987f095', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22893, 8334, '0185-03', 'LEXXI RAMOSO', 'Daughter', '2012-03-05', 14, 'Female', '', '', '', NULL, NULL, NULL, NULL, '1a1e063a2597857ff2d3746f6441d1c0', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22894, 8335, '0186-01', 'RICKY', '', '1988-05-13', 37, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'd11b33badba122c25ab5f2ac4094586d', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22895, 8335, '0186-02', 'ANDREA', '', '2019-08-21', 6, 'Female', '', '', '', NULL, NULL, NULL, NULL, '8f09c52b1f0aa582f6ef956c52597961', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22896, 8335, '0186-03', 'RICK', '', '2022-07-06', 3, 'Male', '', '', '', NULL, NULL, NULL, NULL, '82ae25443bf33cf695b32b66d4bea688', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22897, 8336, '0187-01', 'ANTONIO', 'Father', NULL, 0, 'Male', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, '6773aec3f686a656f4f3b6e7e2fa9b28', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22898, 8336, '0187-02', 'MARICEL', 'Mother', NULL, 0, 'Female', 'HIGHSCHOOL', '', '', NULL, NULL, NULL, NULL, 'e68671ab5091d31b737570b101bf8b9c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22899, 8336, '0187-03', 'JULIUS JR', 'Brother', '2013-10-12', 12, 'Male', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '8eb44e7885f5c266d3462bc22529589e', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22900, 8336, '0187-04', 'ADELLE', 'Sister', '2019-01-07', 7, 'Female', 'ELEMENTARY', '', '', NULL, NULL, NULL, NULL, '3011fc80ce75f47719a8ac0133b05e1a', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22901, 8337, '0189-01', 'JEROME', 'Husband', NULL, 0, 'Male', 'HIGHSCHOOL', 'Construction', '', NULL, NULL, NULL, NULL, '85dc1928695c93724d7c2b5d7dc15ae4', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22902, 8337, '0189-02', 'ATHENA MALYN', 'Daughter', NULL, 0, 'Female', 'ELEMENTARY', 'Student', '', NULL, NULL, NULL, NULL, '309107d9cd5cf4acd005b2c0f79dfdef', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22903, 8338, '0190-01', 'RYAN', 'Son', '1981-12-01', 44, 'Male', '', '', '', NULL, NULL, NULL, NULL, 'b8b6cd6360b79c6f36729d857fa57e4c', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22904, 8338, '0190-02', 'JOAN', 'Daughter', '2005-06-29', 20, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'ca3fda0caf56a889c53762632eeade06', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22905, 8338, '0190-03', 'EWEW', '', '2012-10-23', 13, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'cf4db4b86f5c3f894ff74ab8678becf5', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22906, 8338, '0190-04', 'DADOY', 'Grandson', '2014-09-19', 11, 'Male', '', '', '', NULL, NULL, NULL, NULL, '8c920d3ab19c0c0e28b3f906c030ec54', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22907, 8338, '0190-05', 'ROBIE', '', NULL, 0, 'Female', '', '', '', NULL, NULL, NULL, NULL, '20f00dd134c2f1be2fd78ae5c505d9bd', NULL, 'active', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(22913, 8340, '0195-01', 'MARIANE P. CABONILLAS', 'DAUGHTER', '2006-06-09', 19, 'Female', '', '', '', NULL, NULL, NULL, NULL, 'f654a45de60cc7fcaa6e092a34099194', '', 'active', '2026-04-18 08:36:09', '2026-04-18 08:36:09'),
(22914, 8340, '0195-02', 'JOSHUA P. CABONILLAS', 'SON', '2007-02-10', 19, 'Male', '', '', '', NULL, NULL, NULL, NULL, '5cf59677a0a61e1a08f22ed9a5e64218', '', 'active', '2026-04-18 08:36:09', '2026-04-18 08:36:09'),
(22915, 8339, '0192-01', 'BUMAN DOSDOS', 'SON', '0000-00-00', 0, 'Male', 'COLLEGE LEVEL', '', '', NULL, NULL, NULL, NULL, '59591b2cbbcd385074990d046847f884', '', 'active', '2026-04-18 08:36:22', '2026-04-18 08:36:22'),
(22916, 8339, '0192-02', 'MARY DOSDOS', 'DAUGHTER', '0000-00-00', 0, 'Female', 'COLLEGE LEVEL', '', '', NULL, NULL, NULL, NULL, 'cb8ff573420a4a01675b25da0418034a', '', 'active', '2026-04-18 08:36:22', '2026-04-18 08:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit_type` varchar(20) DEFAULT 'Pack',
  `allocation` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_name`, `quantity`, `unit_type`, `allocation`, `created_at`, `updated_at`) VALUES
(39, 'Can Goods', 1206, 'Piece', 3, '2026-03-02 12:14:38', '2026-04-16 20:20:09'),
(41, 'Water', 2210, 'Piece', 5, '2026-03-02 23:49:09', '2026-04-16 19:24:41'),
(42, 'Noddles', 4610, 'Piece', 5, '2026-03-02 23:50:41', '2026-04-16 19:24:41'),
(43, 'Medicine', 500, 'Kit', 5, '2026-03-03 00:07:21', '2026-03-03 00:07:21'),
(45, 'Rice', 1, 'Sack', 1, '2026-03-03 10:11:36', '2026-03-03 10:11:36'),
(46, 'Melon', 94, 'Pack', 1, '2026-04-06 17:17:26', '2026-04-16 20:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_batches`
--

CREATE TABLE `inventory_batches` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `batch_number` varchar(50) NOT NULL,
  `source_type` enum('procured','donated','government-issued') NOT NULL,
  `source_details` text DEFAULT NULL,
  `quantity_initial` int(11) NOT NULL DEFAULT 0,
  `quantity_remaining` int(11) NOT NULL DEFAULT 0,
  `unit_type` varchar(50) NOT NULL,
  `date_received` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `storage_location` varchar(255) DEFAULT NULL,
  `storage_unit` varchar(50) DEFAULT NULL,
  `units_per_storage` int(11) DEFAULT 1,
  `storage_quantity` int(11) DEFAULT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  `assignment_type` enum('beneficiary','barangay') DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `qr_code_token` varchar(255) DEFAULT NULL,
  `qr_code_data` text DEFAULT NULL,
  `status` enum('active','partially_distributed','depleted','expired','in_warehouse','in_transit','received') DEFAULT 'in_warehouse',
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_batches`
--

INSERT INTO `inventory_batches` (`id`, `inventory_id`, `batch_number`, `source_type`, `source_details`, `quantity_initial`, `quantity_remaining`, `unit_type`, `date_received`, `expiry_date`, `storage_location`, `storage_unit`, `units_per_storage`, `storage_quantity`, `assigned_to`, `assignment_type`, `barangay`, `qr_code_token`, `qr_code_data`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(41, 39, 'BATCH-20260302-001-4878', 'government-issued', 'Capitol', 1200, 981, 'Piece', '2026-03-02', '2027-03-02', 'Warehouse 1', 'Box', 24, 50, 'Bonbon', 'barangay', 'Bonbon', 'e132992275425a2a18df3f5f1fe88b1dec0fc56e402b6a67699349d457a5ede6', 'e132992275425a2a18df3f5f1fe88b1dec0fc56e402b6a67699349d457a5ede6', 'received', '', '2026-03-02 12:14:38', '2026-04-16 19:24:41'),
(43, 41, 'BATCH-20260302-001-6549', 'government-issued', 'Capitol', 2400, 2210, 'Piece', '2026-03-02', '2027-03-02', 'Warehouse 1', 'Box', 24, 100, 'Bonbon', 'barangay', 'Bonbon', '34e45110ab41e73826ac7fb726982f671c0fffd0021bcd580c7c708ec57d027d', '34e45110ab41e73826ac7fb726982f671c0fffd0021bcd580c7c708ec57d027d', 'received', '', '2026-03-02 23:49:09', '2026-04-16 19:24:41'),
(44, 42, 'BATCH-20260302-001-6641', 'government-issued', 'Capitol', 4800, 4610, 'Piece', '2026-03-02', '2027-03-02', 'Warehouse 1', 'Box', 24, 200, 'Bonbon', 'barangay', 'Bonbon', '922c0ca5e59ba054a1d077018781a4afa9985c8e2e7f21daf7a6bb49952fc9ab', '922c0ca5e59ba054a1d077018781a4afa9985c8e2e7f21daf7a6bb49952fc9ab', 'received', '', '2026-03-02 23:50:41', '2026-04-16 19:24:41'),
(45, 43, 'BATCH-20260303-001-7641', 'government-issued', 'Capitol', 500, 500, 'Kit', '2026-03-03', '2027-03-03', 'Warehouse 1', 'Box', 10, 50, 'Bonbon', 'barangay', NULL, 'f6becdf25e03252889e5529b398cb6ddea3264d90456c0516d4c6743fb75cb9b', 'f6becdf25e03252889e5529b398cb6ddea3264d90456c0516d4c6743fb75cb9b', 'in_warehouse', '', '2026-03-03 00:07:21', '2026-03-03 00:07:21'),
(47, 39, 'BATCH-20260303-001-9507', 'government-issued', 'Capitol', 240, 225, 'Piece', '2026-03-03', '2027-03-03', 'Warehouse 1', 'Box', 24, 10, '', NULL, NULL, 'dd087938052dacf8d1191050cc6ccc377c767f8ad4b11ab22cf7c4b3f3ce98f2', 'dd087938052dacf8d1191050cc6ccc377c767f8ad4b11ab22cf7c4b3f3ce98f2', 'in_warehouse', '', '2026-03-03 08:58:27', '2026-04-16 20:20:09'),
(48, 45, 'BATCH-20260303-001-3896', 'government-issued', 'Capitol', 1, 1, 'Sack', '2026-03-03', '2027-03-03', 'Warehouse 1', 'Box', 1, 1, 'Bonbon', 'barangay', NULL, 'f6dd4e145e95aea4a4badf362c7341ccfde2d9a32c5c0196a03a02457d774158', 'f6dd4e145e95aea4a4badf362c7341ccfde2d9a32c5c0196a03a02457d774158', 'in_warehouse', '', '2026-03-03 10:11:36', '2026-03-03 10:11:36'),
(49, 46, 'BATCH-20260406-001-7046', 'procured', 'Capitol', 100, 94, 'Pack', '2026-04-06', '2027-04-06', 'Warehouse 1', 'Box', 5, 20, '', '', NULL, '9e323b3e30d21d3aa0d0d7396f78103d96e9944d405d9029a312932cedfa561d', '9e323b3e30d21d3aa0d0d7396f78103d96e9944d405d9029a312932cedfa561d', 'in_warehouse', '', '2026-04-06 17:17:26', '2026-04-16 20:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `city_municipality` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `evacuation_center` varchar(255) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `name_extension` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `civil_status` varchar(50) DEFAULT NULL,
  `mother_maiden_name` varchar(200) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `monthly_income` decimal(12,2) DEFAULT NULL,
  `id_card_presented` varchar(100) DEFAULT NULL,
  `id_card_number` varchar(100) DEFAULT NULL,
  `id_picture_front` text DEFAULT NULL,
  `id_picture_back` text DEFAULT NULL,
  `full_name` varchar(150) NOT NULL,
  `household_no` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alternate_number` varchar(50) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `subdivision` varchar(100) DEFAULT NULL,
  `permanent_barangay` varchar(100) DEFAULT NULL,
  `permanent_city` varchar(100) DEFAULT NULL,
  `permanent_province` varchar(100) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `is_4ps_beneficiary` tinyint(1) DEFAULT 0,
  `ip_ethnicity` varchar(100) DEFAULT NULL,
  `family_members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`family_members`)),
  `vulnerable_older_persons` int(11) DEFAULT 0,
  `vulnerable_pregnant` int(11) DEFAULT 0,
  `vulnerable_lactating` int(11) DEFAULT 0,
  `vulnerable_pwd` int(11) DEFAULT 0,
  `shelter_damage` enum('No Damage','Partially Damaged','Totally Damaged') DEFAULT 'No Damage',
  `ownership_status` enum('Owner','Renter','Sharer') DEFAULT 'Owner',
  `signature_thumbmark` text DEFAULT NULL,
  `right_thumbmark` text DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `barangay_captain_name` varchar(200) DEFAULT NULL,
  `barangay_captain_signature` text DEFAULT NULL,
  `lswdo_name` varchar(200) DEFAULT NULL,
  `lswdo_signature` text DEFAULT NULL,
  `data_privacy_consent` tinyint(1) DEFAULT 0,
  `data_privacy_date` datetime DEFAULT NULL,
  `family_size` int(3) DEFAULT 1,
  `qr_code_token` varchar(100) NOT NULL,
  `household_qr_token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `individual_qr_token` varchar(255) DEFAULT NULL,
  `status` enum('unclaimed','claimed') DEFAULT 'unclaimed',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `region`, `province`, `district`, `city_municipality`, `barangay`, `evacuation_center`, `last_name`, `first_name`, `middle_name`, `name_extension`, `birthdate`, `age`, `birthplace`, `sex`, `civil_status`, `mother_maiden_name`, `religion`, `occupation`, `monthly_income`, `id_card_presented`, `id_card_number`, `id_picture_front`, `id_picture_back`, `full_name`, `household_no`, `address`, `contact_number`, `alternate_number`, `house_no`, `street`, `subdivision`, `permanent_barangay`, `permanent_city`, `permanent_province`, `zip_code`, `is_4ps_beneficiary`, `ip_ethnicity`, `family_members`, `vulnerable_older_persons`, `vulnerable_pregnant`, `vulnerable_lactating`, `vulnerable_pwd`, `shelter_damage`, `ownership_status`, `signature_thumbmark`, `right_thumbmark`, `registration_date`, `barangay_captain_name`, `barangay_captain_signature`, `lswdo_name`, `lswdo_signature`, `data_privacy_consent`, `data_privacy_date`, `family_size`, `qr_code_token`, `household_qr_token`, `photo`, `individual_qr_token`, `status`, `created_at`, `updated_at`) VALUES
(8171, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'TAPON', 'EVACUATION CENTER/SITE', 'INTOD', 'RABEL', 'TIZON', 'NAME EXT.', '1973-07-18', 52, 'TAPON, MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'CARMEN', 'Catholic', 'House Keeper', 0.00, 'ID CARD PRESENTED', '08-1239853-1', NULL, NULL, '', '0001', NULL, '09558837414', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ec3d502409b9123759981765fe5231bf', '0bb4d99ca93bf63f1623c6ae52ee2a70', NULL, NULL, '', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(8172, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'VIRGENIA', 'CAINING', 'NAME EXT.', '1962-07-09', 63, 'BALBAGON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0002', NULL, '', '', '', '', '', '', '', 'Balbagon', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, 'LYKA SHAYNE B. MONTANO, RSW', NULL, 1, '2026-04-18 00:00:00', 1, '5100db6aac75f5b85e8a76e9ac2fc575', '752e0bed80c4f0733b761685bbe57474', NULL, NULL, '', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(8173, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'SAMOY', 'JEANESS', 'LABITA', 'NAME EXT.', '1991-01-04', 35, 'STA ENES TALISAYAN', 'Female', 'Married', 'HOUSEWIFE', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0003', NULL, '', '', '', 'Lower', 'Maslag', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', 'RICHARD VICTOR MICULOB', NULL, 'RICHARD VICTOR MICULOB', NULL, 1, '2026-04-18 00:00:00', 1, 'a1f90b79e2614b48111f981dab399f6d', '8791df77948c4234d440bb7425b6b854', NULL, NULL, '', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(8174, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'CAILING', 'FERNAJOY', 'LAGRADA', 'NAME EXT.', '1993-10-19', 32, 'BALBAGON', 'Female', 'Single', 'PERLA DAHAN', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0004', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '104eaa4a8bdb430ceb8aec1ec9843e0c', '24d7e28eaa21152a3b1005ab4d5881a3', NULL, NULL, '', '2026-04-18 08:32:31', '2026-04-18 08:32:31'),
(8175, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'CHRISTINE', 'LABI', 'NAME EXT.', '1982-10-02', 43, 'BALBAGON', 'Female', 'Married', 'FE CASTINO', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0005', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b301dba2f89afb517826f75e661741e7', '5612940a4414bccd8c831b013bf84911', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8176, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LABIAL', 'PRIMA', 'PABILLORE', 'NAME EXT.', '1989-11-27', 36, 'BIRTHPLACE', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0006', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ad807e9d19939655c56d93c7a1581ca2', 'dcbc80c1d3dd53eb163193eb61b95379', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8177, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGRADA', 'NILO', 'DAHAN', 'NAME EXT.', '1984-09-28', 41, 'BALBAGON, MAMBAJAO, CAMIGUIN', 'Male', 'Single', 'PERPETUA DAHAN LADESMA', 'Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0007', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4e094035171a3bf8f93a7d84e1baa8ca', 'dda3c01aed75b3783882703cde305d24', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8178, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'ABIAN', 'NARNIL', 'LAGRADA', 'NAME EXT.', '1992-06-17', 33, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0008', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e0322d44c958418d60dd3a5678803efd', 'e5b69151166232a1b755058fa9093446', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8179, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'CADORNA', 'ELIZABETH', 'CASTILLON', 'NAME EXT.', '1973-02-15', 53, 'BIRTHPLACE', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Born Again', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0009', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '163d1612b94c7e3bd12459318446c3de', 'f6d62c06fe60c7e5cebe5791be9dfc8f', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8180, 'REG', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LABIAL', 'NORMA', 'CADORNA', 'NAME EXT.', '1919-07-29', 106, 'BIRTHPLACE', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0010', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '38358a8f80fc5323cf8b41ba9fc1c0af', '1bad753bf21c9d5ec4c93de4ded4dcc5', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8181, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'RESUELO', 'JEEPY', 'ABOC', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0011', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'bc991566b1ced1230ff03742b453cbf2', 'f4c3e8f9df90724874a50ca4d599a2ef', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8182, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'BALBAGON', 'EVACUATION CENTER/SITE', 'JABLA', 'PERLA', 'LAGRADA', 'NAME EXT.', '1975-09-23', 50, 'BALBAGON', 'Female', 'Married', 'PERTURIO LAGRADA', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0012', NULL, '', '', '', '', '', '', '', 'Balbagon', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'eb6a62aa9b03d6db86c1f627598169c0', 'c45993bbe8f65227a149e483742e9aeb', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8183, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'EXPIDITO', 'ABIAN', 'CABUTASE', 'NAME EXT.', '1954-04-18', 71, 'BALBAGON', 'Male', 'Married', 'CARMEN GASIN', 'Roman Catholic', 'Barangay Council', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0013', NULL, '09067543401', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '6080c68f2bf9658c38ec0d175a7525da', '9894e48c889b44d2ea2bee9008349329', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8184, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGRADA', 'CATHERINE', 'LABI', 'NAME EXT.', '1992-04-28', 33, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'FE CASTINO LABI', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0014', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a486622b314fa6125cf51218a1a2c5a0', 'e5009dc00e676157d6bb82ec00645812', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8185, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LUMACANG', 'CATHERINE', 'DAMIT', 'NAME EXT.', '1999-05-14', 26, 'BALBAGON', 'Female', 'Single', 'ROSIE LUMACANG', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0015', NULL, '09109323031', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '49bd4ae27df7ba150c54995f207fbf8f', 'a37e2d362cbc3558edb6e928024c4d4d', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8186, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'TABURADA', 'REYNANTE', 'TORRES', 'NAME EXT.', '1982-09-06', 43, 'BALINGASAG', 'Male', 'Married', 'FATMA INIBATI', 'Roman Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0017', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '00ac6db1998e901440844f4216529549', 'aa02aa41b7216a07f104441e5f56c081', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8187, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'PONCOL', 'BERNADETH', 'CAILING', 'NAME EXT.', '1993-04-02', 32, 'CGH', 'Female', 'Married', 'ALICIA LAGRADA PUDOL', 'Roman Catholic', 'Bhw', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0018', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '343e8cd27f3999aa5847cc39c2a9adc2', '70a6dd06463d63ece8d99614cd1fa06d', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8188, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'ARIEL', 'CAILING', 'NAME EXT.', '1998-04-12', 27, 'BALBAGON', 'Male', 'Civil Status', 'DAMIANA CAILING', 'Roman Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0019', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '27d607c21c7fd3055e49642b9cc519b7', '70f877c3f40ccd68c06cbfa9af174a75', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8189, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'CAILING', 'ALICIA', 'PUDOL', 'NAME EXT.', '1972-04-04', 53, 'BALBAGON MAMBAJAO CAMIGUIN', '', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0020', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '134b9fce380740e00badc1e818250c3e', 'b495c2a22abbc224289cb2cd2d468e96', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8190, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'PUDOL', 'LUNA', 'BAJA', 'NAME EXT.', '1962-08-10', 63, 'MAPA', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0021', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd84ebf62c69fe611e4b1037e58c5e3b0', '7ecb51a9a86a0da6920e2853281745eb', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8191, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'PONCOL', 'CHARLIE', 'GAMO', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0022', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e6cd39b4474565ba94620775951c89a7', '837e2daa2b0e332fb8ace90210d94c30', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8192, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'DAMIANA', 'CAILING', 'NAME EXT.', '1967-02-08', 59, 'BUKIDNON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0023', NULL, '', '', '', '', '', '', 'Balbagon', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '91407ddbc13b607e4fef14418af3e68c', '8fc31598e0f2c783cd7a76204a6e5c14', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8193, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'UIMIT', 'GERALDINE', 'LABADAN', 'NAME EXT.', '1990-09-18', 35, 'BALBAGON', 'Female', 'Single', 'SUSAN ABAO LABADAN', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0024', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '9d77ce630c7e035bd2703e01997b210b', 'd36202fbabadf2d63962b5effd27c249', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8194, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'CHARLEN', 'LABI', 'NAME EXT.', '1979-05-25', 46, 'BALBAGON', 'Female', 'Married', 'FE CASTINO', 'Roman Catholic', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0025', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd109ece951b9788eb0e7dc94cc84c20f', '95938cee50d2f81c373e92bfee4c64ad', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8195, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGRADA', 'MELINDA', 'CABALLERO', 'NAME EXT.', '1972-08-25', 53, 'BALBAGON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0026', NULL, '', '', '', 'Upper', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4cd79920f535c44c722d56d899872ea4', 'ad380c2200fc7d98269e803585519261', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8196, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'PILLAROSTE', 'LADY DIAN', 'ORA', 'NAME EXT.', '2003-10-25', 22, 'MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0027', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ddaf5e3939ffdd4a54f6c22cc14f6dff', '44cf025dda53d292ba9fb24a86175815', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8197, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'UIMIT', 'GUILLERMO', 'BACULANTA', 'NAME EXT.', '1965-03-26', 60, 'BALBAGON', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fisher Man', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0028', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '94361fa1d282a47719bb723b688bc1d4', '936eeabb59dd1ca1cd3c7b3fcc5f5347', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8198, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'MONTENEGRO', 'LUCIA', 'ESTRIBOR', 'NAME EXT.', '1960-03-03', 66, 'CEBU', 'Female', 'Separated', 'SULPICIA ESTRIBOR', 'Catholic', 'Fish Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0029', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '92b167e3e8da953f9d2a6d7e1f7c9472', 'c4b263b4854e6cba8fa2ca1b7ebacf17', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8199, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'ALVIN', 'ABIAN', 'NAME EXT.', '1989-08-16', 36, 'BALBAGON', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0030', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd174cb999054195ecf89e78a73347bce', '6a48bc831ec59bcc620530957fbf9893', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8200, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'ABIAN', 'JERWIN', 'SIMENE', 'NAME EXT.', '2004-11-22', 21, 'BALBAGON', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Packer', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0031', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a3ac8fbc54fb2a48af713058cb526df0', 'fa820bb9f88422c7ee80973426d7b161', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8201, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGUNAY', 'JACQUIELYN', 'BAGUHIN', 'NAME EXT.', '1980-07-01', 45, 'BALITE ,SAGAY', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Waitress', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0032', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '235344ae52d57934740623af25f3d9a6', 'd648775cbcc87caef3078979ff49cad5', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8202, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'SIMENE', 'CLARITA', 'LAGRADA', 'NAME EXT.', '1971-11-17', 54, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'PERPETUA LADESMA DAHAN', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0033', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '52f0b251428f1a23fc0edd225c5f39c0', 'b0fabf316105120464c3d264cf3b4679', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8203, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'CAILING', 'ILUMINADSA', 'LABI', 'NAME EXT.', '1953-11-29', 72, 'BALBAGON MAMBAJAO CAMIGUIN', '', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0034', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'c71140cc9fa3c8686dec1c25161980de', '91acd2fb416215f3bd9801d21e72c6e2', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8204, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'DUMALAGA', 'EVONY JOY', 'GIMARANGAN', 'NAME EXT.', '1987-02-10', 39, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Manicure', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0035', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '93fb2ddad2969268ca66ff5b86c64303', 'bf289bb567671147555c5c65bcee73ff', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8205, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'UAYAN', 'ANABELLE', 'UIMIT', 'NAME EXT.', '1975-02-07', 51, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Sales Lady', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0036', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'cbc185f155ecaf01b087549bc0fd9015', 'a5444d982fff72c5e41fb45e3604801f', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8206, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LABI', 'FE', 'CASTINO', 'NAME EXT.', '1958-12-15', 67, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0037', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a06c52a879defb38865a15688d522f20', 'e8921273cbc65ebd2f1d2d9fd5b5f4b2', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8207, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LABI', 'JULIE', 'ZAMORA', 'NAME EXT.', '1992-06-05', 33, 'CGH', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0038', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd8027a41c6efa1d99a5d9da1449096d0', '250212890a94f6fefa9bb582bcb62a8d', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8208, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'EBARLE', 'MEGEULITO', 'TIZON', 'NAME EXT.', '1970-10-16', 55, 'MAMBAJAO, CAMIGUIN', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0039', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '475b0ba13020da8ca0be0b50fce84087', '2ebe2269aa2c79bda7370ead4473c271', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8209, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'MONTENEGRO', 'WILFREDO', 'ESTRIBOR', 'NAME EXT.', '1989-11-28', 36, 'SURIGAO DEL NORTE', 'Male', 'Married', 'LUICIA POYUT', 'Catholic', 'Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0040', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'c5d91707c56ad390e556793bbf636d71', '3aceee57a25a67f1ff2882bba01c216d', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8210, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGRADA', 'KEY', 'LADESMA', 'NAME EXT.', '1993-12-11', 32, 'BALBAGON, MAMBAJAO, CAMIGUIN', 'Male', 'Married', 'EUGENIA LADESMA', 'Catholic', 'Delivery Man', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0041', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b1aaadd0efce7dd4ff9631064fc42baa', 'fd9581e803fc17cea7693e9289fa0f6e', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8211, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'BALBAGON', 'EVACUATION CENTER/SITE', 'SALVANA', 'JONA', 'LOSHEN', 'NAME EXT.', '1987-07-07', 38, 'BALBAGON', 'Female', 'Married', 'MARISA DAHAN', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0042', NULL, '', '', '', '', '', '', '', 'Balbagon', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '8108b10a4f266eb77424d4cdf53af4e6', 'a4362ddd8c43833a907902cab0a3dd93', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8212, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'JAMIE', 'LAGUNAY', 'NAME EXT.', '1958-11-14', 67, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Laborer', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0043', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '2a1d805a84bbe9accef3089f9c89e2be', 'bef97fa08fe6363079ad53a3c8f2baa4', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8213, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'JAN MARK', 'LABI', 'NAME EXT.', NULL, 0, 'BALBAGON', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0044', NULL, '', '', '', '', '', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5a026a840a792b0c617853d105414423', 'fec33ca8ced163a7ecb478f0b43eec75', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8214, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'PERPETUA', 'DAHAN', 'NAME EXT.', '1951-01-22', 75, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0045', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'cdfbba5f11294b7a3d46596bb865ebc8', '4f65a0e0f4a4895c67f8be80a6a229af', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8215, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'TORIM', 'DAMIANO', 'LOGRONIO', 'NAME EXT.', '1964-02-23', 62, 'BOHOL', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0046', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b192ca71c62a6b5f6d733d7596cfa4f0', 'f6fc9fd800b551800da991142a78d5b1', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8216, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'TABORADA', 'REYNAN', 'LAGRADA', 'NAME EXT.', '2005-09-13', 20, 'BALBAGON MAMBAJAO CAMIGUIN', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0047', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd3ebc323725a7e6adefdf6316b322826', '45dbadf53963080966153e34b1627e6a', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8217, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'QUIDIT', 'ALJANE', 'ACEBES', 'NAME EXT.', '1988-03-09', 38, 'TAPON', 'Female', 'Married', 'AUMAN', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0048', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a0526066eeae799c940d40130c9641e3', 'cd5933a305932c8616ea6d431853afc7', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8218, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'AILYN', 'CAILING', 'NAME EXT.', '2002-08-12', 23, 'BIRTHPLACE', 'Female', 'Single', 'DAMIANA CAILING LAGRADA', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0049', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a2a368a1887b0bc511c0d9bb624b5f7d', 'd993893f9798bde6390cccb456c1231f', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8219, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'BUTALID', 'RICK MELVIN', 'DAIGOIGAN', 'NAME EXT.', '1985-07-16', 40, 'MAMBAJAO, CAMIGUIN', 'Male', 'Married', 'ELVIRA BUTALID', 'Catholic', 'Tricycle Driver', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0050', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'f71739a83e404d64b96ce0858bf98ff2', '6f625f1b9f33411e84b8d1eca5e77ca9', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8220, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LUSAN', 'REBECCA', 'LAGRADA', 'NAME EXT.', '1997-08-23', 28, 'BALBAGON, MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'MARISSA DAHAN LAGRADA', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0051', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '1e9a5c1bd2c210bc462046955fc7729f', '608c61693d8553fa10901e51b4b68a5a', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8221, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LABI', 'ALTERA', 'EJARA', 'NAME EXT.', '1981-12-22', 44, 'GINGOOG CITY', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0052', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '3614052163e6377e8b876be9c83c3bf7', 'ac9eacecb4425e17ccfa8fec0798fcc0', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8222, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'EVACUATION CENTER/SITE', 'TORAYNO', 'JILL', 'POPERA', 'NAME EXT.', '1998-12-08', 27, 'CATARMAN MAMBAJAO CAMIGUIN', 'Female', 'Married', 'ELVIE POPERA', 'Catholic', 'Sales Lady', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0053', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '6f006321654bf0de95dfae22f9947c76', '21ab3037cc9119af5bb127374d331159', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8223, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'ARLYN', 'CAILING', 'NAME EXT.', '1995-11-16', 30, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Single', 'DAMIANA CAILING LAGRADA', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0054', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '830dfc8914be01e030131822e0cb17a7', '49a64e593abb10bf437525e7c1bca309', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8224, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'ROSAL', 'PAUL REY', 'MIDDLE NAME', 'NAME EXT.', '1986-08-21', 39, 'MAMBAJAO CAMIGUIN', '', 'Single', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0055', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 1, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '8f051d2a0583ad4ea53a092a274ce911', '7cce39f0a76ca7aa6046d0233f964b03', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8225, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'OLINAN', 'ROLITA', 'SIMENE', 'NAME EXT.', '1994-07-17', 31, 'BALBAGON MAMBAJAO CAMIGUIN', '', 'Married', 'CLARITA DALION LAGRADA', 'Roman Catholic', 'Utility', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0056', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5220580ff495cdeb12dae75a2e6979ad', '43dc8e74a2daa3de604471afdae92155', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8226, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'ABANIL', 'CHONA', 'LABI', 'NAME EXT.', '1980-10-20', 45, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'FE CASTINO LABI', 'Roman Catholic', 'Housekeeping', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0057', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '8835b135e59959db33803d1d20bcc25e', '619fc6be798cdef8fa5ecc852aad807c', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8227, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'BONITA', 'NOEL', 'CABILLO', 'NAME EXT.', '1980-01-01', 46, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0058', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd2be9a19443b1f3b9fc3153bf9931c45', '62e61cda0a30a608e6ebb50d43e216a2', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8228, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'BONITA', 'ESTRELLITA', 'MIDDLE NAME', 'NAME EXT.', '1949-07-02', 76, 'BIRTHPLACE', '', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0059', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '0fc0e9c4af5f02785e0ece2eebdbb7ca', '1c4d05f2c7a489b27fc2f42401e17642', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8229, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'ESCALERA', 'JOVITA', 'SALAGANTIN', 'NAME EXT.', '1968-10-02', 57, 'MISAMIS OR', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', '7 Day Adventist Reformed Movement', 'Helper', 0.00, 'UMID ID', 'ID CARD NUMBER', NULL, NULL, '', '0060', NULL, '09677717810', '', '', 'Upper', 'Lakas', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '687304e746cded9b65273c92c31cb813', '9ad971b78de3ea456afc9538523a9fd9', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8230, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'ABIAN', 'ROTCHIE', 'SIMENE', 'NAME EXT.', '1981-12-07', 44, 'BALINGASAG', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Utility', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0061', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e81823a65916acea0792558ef8ed7a40', 'e3580edc3aec47fcea951ab0066e6d29', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8231, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LAGRADA', 'MARIA ROLENDA', 'GIMARANGAN', 'NAME EXT.', '1975-08-15', 50, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Sales Lady', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0062', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '92163e71ad3ed4c40809e5bf7f08dd3f', '17a2c00f5c34d6c75a73ab3ba5072d1e', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8232, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'EVACUATION CENTER/SITE', 'SALON', 'ROSALYN', 'LUCINARARA', 'NAME EXT.', '2000-10-06', 25, 'GUINSILIBAN CAMIGUIN', 'Female', 'Single', 'NILDA SUCAYRE', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0063', NULL, '', '', '', '', '', '', 'Tapon', 'Poblacion', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ad8203d5d0fff9e0d2cad2201a8f34b3', 'b68d3429286116a8e6774711b9fefe95', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8233, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'TAPON', 'EVACUATION CENTER/SITE', 'TORAYNO', 'NADIA', 'MONTENEGRO', 'NAME EXT.', '1987-08-25', 38, 'SAN ROQUE SURIGAO', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Baker', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0064', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd256004a14382ccb45659f192bbe8492', '835ef6e78482cfab36342eb343b147b6', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8234, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'TORION', 'ARIEL', 'RIVERA', 'NAME EXT.', '1997-11-04', 28, 'BALBAGON', 'Male', 'Single', 'LOWIDEN RIVERA GINERENGAN', 'Roman Catholic', 'Delivery Boy', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0065', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '17a2cccf00bccb247b0a20a694d2b917', '3a7244665496a697fed141aa12822beb', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8235, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'BUSTAMANTE', 'MAE ANGELIE', 'CAILING', 'NAME EXT.', '1996-08-09', 29, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0066', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '28b9401d4d4e2956df87cc44341f56fb', '57daf0c9430292623453061318c501fa', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8236, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LLOREN', 'MARY ANN', 'TORION', 'NAME EXT.', '1992-03-13', 34, 'BALBAGON MAMBAJAO CAMIGUIN', 'Female', 'Married', 'LOURDES RIVERA', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0067', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '7de75a53b63b6285f4fba548b82ec24d', '8b61fac3fc102b55cc2f7ee01afb493c', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8237, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'CPSC', 'LUNGAT', 'LOCHIE', 'LIMACANGAN', 'NAME EXT.', '1988-09-22', 37, 'BALBAGON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Manicure/pedicure', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0068', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ae5a2c4597248356b255ad68f61d5529', '24dc64efdb34b2a7d63dd3a06f926241', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8238, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BALBAGON', 'EVACUATION CENTER/SITE', 'LAGRADA', 'MARK JAMIAN', 'LIMACANGAN', 'NAME EXT.', '2000-04-20', 25, 'BIRTHPLACE', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0069', NULL, '', '', '', 'Lower', 'Maslog', 'Balbagon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '055822f554f10e17a07ad50bf10c3815', '5b12add3d981b62c8e9203b3543c38d9', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8239, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'GAYO', 'JOHN RAYMUND', 'LIBRES', 'NAME EXT.', '1993-01-07', 33, 'POBLACION, MAMBAJAO, CAMIGUIN', 'Male', 'Married', 'NORA T. LIBRES', 'Baptist', 'Cook', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0070', NULL, '09487473901', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '132e2b915e3e3e54797cf31d872041d4', '023cadd00dabea2351060f6b28e75626', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8240, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'BULAN', 'REINA', 'BUNGLAY', 'NAME EXT.', '1964-07-01', 61, 'MABINI ST. POBLACION', 'Female', 'Married', 'JOSEFA CUAJAO BUNGLAY', 'Roman Catholic', 'Babysitter', 0.00, 'SENIOR ID', '7618', NULL, NULL, '', '0071', NULL, '09358568410', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 2, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '8ce84bfaff9f5acdf8398d0e0a389ec7', '1a360b6072d3d95f95cb77ccd0909230', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8241, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'GAYO', 'NORA', 'LIBRES', 'NAME EXT.', '1965-03-15', 61, 'TAPON', 'Female', 'Married', 'VICENTA ROMERO TIZON', 'Roman Catholic', 'Housewife', 0.00, 'SENIOR ID', 'ID CARD NUMBER', NULL, NULL, '', '0072', NULL, '09495644889', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 2, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '9af449161f1dc2cdc9cd294abdbaf2f5', 'f34ea4df722c8e9ba8b3602f1330ebb4', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8242, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'DAHAN', 'ARNEL', 'FABE', 'NAME EXT.', '1987-04-26', 38, 'TAPON', 'Male', 'Married', 'ESTHER LABADAN FABE', 'Roman Catholic', 'Laborer', 0.00, 'VOTER\'S ID', 'ID CARD NUMBER', NULL, NULL, '', '0073', NULL, '09091111098', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '7befde80aeef9283b505359f91c1c121', '70b0a11a54066dbf2d128367b9086add', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8243, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'MAQUIDAJO', 'JUVY', 'PILLAROSTE', 'NAME EXT.', '1997-02-04', 29, 'CGH, MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0074', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e57b88d52936e5b0c335ae6edebe2b6b', 'fa015c90ba473454cdf64ce28e677564', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8244, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'DUMANGCAS', 'MELODY', 'HERRERA', 'NAME EXT.', '1982-12-29', 43, 'TAPON', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'VOTER\'S ID', 'ID CARD NUMBER', NULL, NULL, '', '0075', NULL, '09535163032', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '763713ffa505e183397384106e6fdf82', '5e6b6b93101cf84fe67d692ae58584d1', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8245, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'RANOCO', 'REY', 'SUMA', 'NAME EXT.', '1976-05-05', 49, 'CAGAYAN DE ORO CITY', 'Male', 'Single', 'LUDIA SUMA', 'Roman Catholic', 'Occupation', 0.00, 'UMID ID', 'ID CARD NUMBER', NULL, NULL, '', '0076', NULL, '09099088078', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5cd9ec7a9ba02dfd5ec5fba554625e7e', 'add344d42174e3a873e818d22c10e953', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8246, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'GARILLO', 'PRESCILLA', 'CADELIÑA', 'NAME EXT.', '2002-01-21', 24, 'TAPON', 'Female', 'Single', 'EUGENIA CADELIÑA', 'Roman Catholic', 'Laundry', 0.00, 'PHILHEALTH CARD', 'ID CARD NUMBER', NULL, NULL, '', '0077', NULL, '09066663546', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'dfd3e3b89a6a138d8fdd3caaa45e652d', 'e6c87a1d6d2a11af886f7fe67f1654e0', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32');
INSERT INTO `residents` (`id`, `region`, `province`, `district`, `city_municipality`, `barangay`, `evacuation_center`, `last_name`, `first_name`, `middle_name`, `name_extension`, `birthdate`, `age`, `birthplace`, `sex`, `civil_status`, `mother_maiden_name`, `religion`, `occupation`, `monthly_income`, `id_card_presented`, `id_card_number`, `id_picture_front`, `id_picture_back`, `full_name`, `household_no`, `address`, `contact_number`, `alternate_number`, `house_no`, `street`, `subdivision`, `permanent_barangay`, `permanent_city`, `permanent_province`, `zip_code`, `is_4ps_beneficiary`, `ip_ethnicity`, `family_members`, `vulnerable_older_persons`, `vulnerable_pregnant`, `vulnerable_lactating`, `vulnerable_pwd`, `shelter_damage`, `ownership_status`, `signature_thumbmark`, `right_thumbmark`, `registration_date`, `barangay_captain_name`, `barangay_captain_signature`, `lswdo_name`, `lswdo_signature`, `data_privacy_consent`, `data_privacy_date`, `family_size`, `qr_code_token`, `household_qr_token`, `photo`, `individual_qr_token`, `status`, `created_at`, `updated_at`) VALUES
(8247, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'LACORTE', 'CHARLOT', 'BACAUHAN', 'NAME EXT.', '1988-07-25', 37, 'DAVAO CITY', 'Female', 'Single', 'ALONA TULO', 'Roman Catholic', 'Housewife', 0.00, 'VOTER\'S ID', 'ID CARD NUMBER', NULL, NULL, '', '0078', NULL, '09515297332', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd966bd0994121d313fec752549560ad2', '829b195a5e249be64083de94d011bb7e', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8248, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'MANGACA', 'IVONNE', 'POPERA', 'NAME EXT.', '1998-02-08', 28, 'BIRTHPLACE', 'Female', 'Married', 'TEOFE GALOS', 'Roman Catholic', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0079', NULL, '09100312729', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '414e1e965dbc74ac2c10bca305076722', '2680a79cdf956a7d4c31278bf0b113c9', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8249, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'PITOGO', 'JAY MARC', 'SIBUG', 'NAME EXT.', '2003-06-30', 22, 'BOLOC-BOLOC', 'Male', 'Single', 'MERLIN SIBUG', 'Roman Catholic', 'Student', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0080', NULL, '09072800104', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'f994d215e6f3159a0107d42226f96ad6', '42768e5d4be048ab72878f395998e53d', NULL, NULL, '', '2026-04-18 08:32:32', '2026-04-18 08:32:32'),
(8250, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ROSAL', 'CHRISTINE MAE', 'BACSARSA', 'NAME EXT.', '1991-01-19', 35, 'MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'JAMIE BACSARSA', 'Roman Catholic', 'Ofw', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0081', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 2, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '148f7d5a3cd5408204c5b2128e5a152e', 'a9460cc1b034eb67a9adc5f1ea97a5d0', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8251, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'SINO', 'VICKY', 'MONTALBA', 'NAME EXT.', '1966-05-28', 59, 'CABUAN, POBLACION', 'Female', 'Married', 'LEONITA BACLAYO', 'Roman Catholic', 'Vendor', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0082', NULL, '09658665273', '', '', 'Cabuan', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 1, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '680cac58f4e4ffe1f2cf4423187df9c5', 'cd227e2eb1de49db2cb43b6f7f0c22f4', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8252, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'INSIO', 'JO-ANNE', 'MALALAY', 'NAME EXT.', '1999-04-30', 26, 'RONDA CEBU', 'Female', 'Single', 'LAGADA', 'Catholic', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0083', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4493089e6a7a8cdab21e1446fdf36c40', '521c84facd38dc5a1803d45b5f9a5c85', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8253, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'CABUA-AN POBLACION', 'CENTRAL SCHOOL', 'ISIN', 'ROSALINA', 'MONTALBA', 'NAME EXT.', '1962-01-03', 64, 'CABUA-AN', 'Female', 'Married', 'BACLATO', 'Catholic', 'Fish Vendor', 0.00, 'SENIOR', 'ID CARD NUMBER', NULL, NULL, '', '0084', NULL, '09357802870', '', '', 'Cabua-an', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e77a85651131b38bbe768d9adc314df2', 'b53a9ba0adae117fe85b1309d6960b9a', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8254, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ROMOROSA', 'MARIA KATRINA', 'DAHAN', 'NAME EXT.', '1997-03-14', 29, 'MAMBAJAO CAMIGUIN', 'Female', 'Married', 'SEGUNDINA M. DAAÑOZA', 'Roman Catholic', 'Teacher', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0085', NULL, '09292102051', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd9e63d63cc82715453f1e78fd1a487c1', '3c0e085063d246e6c1ea8bad6ec23dee', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8255, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'TAPON', 'CENTRAL SCHOOL', 'BALDELOVAR', 'JESSIEBELLE', 'CALAMBA', 'NAME EXT.', '1984-10-05', 41, 'CDO', 'Female', 'Single', 'MERAFLOR ABANERÑA', 'Born Again', 'House Wife', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0086', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e376b66dab6d3b0fce59201908a3b677', 'd1abe77a58ddf57883ce753de62b3d94', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8256, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'EVACUATION CENTER/SITE', 'QUINADA', 'VIRGIE', 'M', 'NAME EXT.', '1973-01-18', 53, 'NAASAG MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MELITUNA A. MACABODBOD', 'Catholic', 'Fish Vendor', 0.00, 'NATIONAL ID', '2816-2059-0830-9182', NULL, NULL, '', '0087', NULL, '09265586169', '', '', '', '', '', 'Boloc', 'Boloc', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b30e089382fe6ceb2666c8e90d3ffeb9', '6f137cc9015237cec31bf8f3e81c3c71', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8257, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'TAPON', 'CENTRAL SCHOOL', 'ACEDES', 'ALEXANDRA', 'CUYOS', 'NAME EXT.', '2004-11-18', 21, 'MAMBAJAO CAMIGUIN', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0088', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '7e4cff5c828e5b88f3737a44ebd1adcf', '601a620a813d70af0625a9f60e3d115a', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8258, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'EVACUATION CENTER/SITE', 'DAGAAS', 'JANICE', 'P.', 'NAME EXT.', '1990-06-12', 35, 'POBLACION', 'Female', 'Married', 'SONIA R. TUTO', 'Catholic', 'Housewife', 0.00, 'SSS', '0111-3865054-1', NULL, NULL, '', '0089', NULL, '09531670814', '', '', '', '', '', 'Boloc', 'Boloc', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '21cb9f81b1dba293ad9d4f7ceb018d0f', '6235efac81a8d66f67b3c42006bf36b7', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8259, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'TAPON', 'CENTRAL SCHOOL', 'GALAPATE', 'APPLE MAE', 'D', 'NAME EXT.', '2002-04-03', 23, 'MANILA', 'Female', 'Single', 'GUIA D. GALAPATE', 'Roman Catholic', 'House Wife', 0.00, 'PHIL HEALTH', 'ID CARD NUMBER', NULL, NULL, '', '0090', NULL, '09100312729', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '28141baaa99365a8f15165d5009302fd', '9e82095e29013f73aa2ad7734af5ec93', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8260, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'MASINRA', 'JOMAIRA', 'BASMAN', 'NAME EXT.', '1983-08-20', 42, 'MAMBAJAO CAMIGUIN', 'Female', 'Married', 'LORENA CAMASA MANGENIG', 'Islam', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0091', NULL, '', '', '', 'Boloc²', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '753831857f47cca06cb7364e5f3be878', 'b9956e1c428a51942b9cc605a8c4f55b', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8261, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'CAILING', 'ELITA', 'CANINDO', 'NAME EXT.', '1954-12-11', 71, 'MASBATI', 'Female', 'Married', 'DECEASED', 'Catholic', 'Housewife/vendor', 0.00, 'SC', 'ID CARD NUMBER', NULL, NULL, '', '0092', NULL, '09368220787', '', '', 'Cabua-an', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 1, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '60070e3fd8b1912d99240acbb61cc390', '5de4d098a07bb848af1cdad694e24be0', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8262, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'EVACUATION CENTER/SITE', 'SARANILLO', 'ALTHEA EIVON', 'ACEBES', 'NAME EXT.', '2006-11-16', 19, 'TAPON', 'Female', 'Single', 'ACEBES', 'Roman Catholic', 'Food Vending', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0093', NULL, '09971041766', '', '', '', '', '', '', 'Tapon', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '41e419bffc37d5a6eab142cfd9353a03', '7f69770b2da520f3ae6cdc1a13b19b1c', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8263, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'ISIN', 'MA. JANET', 'ODARYE', 'NAME EXT.', '1983-01-22', 43, 'JAGNA BOHOL', 'Female', 'Married', 'GALENDEZ', 'Roman Catholic', 'None', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0094', NULL, '', '', '', 'Cabuaan', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '1caac7e707761f7e9d65a10429ed6eb6', 'fd276254352fcba0c793771afa6c46e1', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8264, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'LABI', 'MARY ANN', 'MONTALBA', 'NAME EXT.', '1984-04-07', 41, 'CABUAAN', 'Female', 'Married', 'MERLITA MONTALBA', 'Roman Catholic', 'Washer', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0095', NULL, '639510548827', '', '', '', '', '', '', 'Cabuaan', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b02fb05e1210a1540e4842a9c601485f', '830b9017a3b5cf1f7e38df91701ea4e1', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8265, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'ISIP', 'CHERRY MAE', 'PUYOS', 'NAME EXT.', '1993-08-11', 32, 'KITADTAO BUKIDNON', 'Female', 'Married', 'DIONISA PUYOS', 'Roman Catholic', 'House Wife', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0096', NULL, '09357802870', '', '', '', '', '', '', 'Cabuaan', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ac7c60cf36ccd9082266a4228c963ab1', '818d3fd701125e39d352833389bba450', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8266, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'MONTALBA', 'JUANITA', 'BACLAYO', 'NAME EXT.', '1955-09-09', 70, 'CABUAAN', 'Female', 'Widowed', 'LEONITA BACLAYO', 'Roman Catholic', 'Housewife', 0.00, 'SENIOR ID', 'ID CARD NUMBER', NULL, NULL, '', '0097', NULL, '', '', '', 'Cabuaan', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b9c26127393c8bc084011fd532e9be19', '1422e3b62c50d4ddf2066ab0ff81608f', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8267, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'MONTALBA', 'VANNESA', 'AGBU', 'NAME EXT.', '1985-11-12', 40, 'CABUAAN', 'Female', 'Married', 'EDEN BINGKAWEL', 'Roman Catholic', 'Sales Lady', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0098', NULL, '', '', '', 'Cabuaan', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a59ea8ad0bc9a422b0f43daaf0a6610a', '2780d03f988a30ee10cd9fa8f2bc7046', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8268, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'EBARLE', 'CONIE', 'SUL-ARON', 'NAME EXT.', '1993-12-08', 32, 'MAMBAJAO', 'Female', 'Married', 'EVANGELINE BALOS', 'Roman Catholic', 'Housewife', 0.00, 'PHIL HEALTH', 'ID CARD NUMBER', NULL, NULL, '', '0099', NULL, '09513740018', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4bfa1335eceb8e81189506879ba81fc1', 'd0881bb971344f195fe8141d75f10534', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8269, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL SCHOOL', 'CABEGUIN', 'RECHELLE', 'TIRARIRAY', 'NAME EXT.', '1996-09-21', 29, 'CGH', 'Female', 'Single', 'RUBINA TIRARIRAY', 'Roman Catholic', 'Housewife', 0.00, 'PHIL HEALTH', 'ID CARD NUMBER', NULL, NULL, '', '0100', NULL, '09359016880', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'fe795606771c3e96a3ef22529b657d3d', '157a7304aef83451e006edb4e8eddd98', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8270, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'SAMONTE', 'SHERWEN', 'GRADO', 'NAME EXT.', '2006-11-18', 19, 'MAMBAJAO', 'Male', 'Single', 'ROWENA BOLO', 'Catholic', 'Student', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0101', NULL, '09105367114', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '80c39741a3e9d343d045064b59159827', '6b66be83ef1f8b3d7b3fdfb51626e419', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8271, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'PACULANAN', 'JYARDY', 'PANGKIHAY', 'NAME EXT.', '1992-06-19', 33, 'CLAVERIA', 'Male', 'Single', 'SUSAN ANGGA', 'Catholic', 'Occupation', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0102', NULL, '09534718663', '', '', 'Boloc', 'Boloc', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '83abbe2b410710f9346c97f9e2fc7788', '53a331f8dd93d6ba6d826d67895ff40d', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8272, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'CENTRAL SCHOOL', 'PACULANAN', 'JOSEPH', 'EBDAS', 'NAME EXT.', '1966-01-14', 60, 'SAGAY', 'Male', 'Married', 'DECEASED', 'Catholic', 'Utility Worker', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0103', NULL, '09676146057', '', '', 'Boloc', 'Boloc', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a5922ab6fb03109d9f46c00fe24dc347', 'e3cd8a06daa56f1509ea90945f3e1776', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8273, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'MACAS', 'AURELIA', 'LOPECILLO', 'NAME EXT.', NULL, 56, 'MAMBAJAO CAMIGUIN', 'Female', 'Single', 'ROSITA GAHOT LOPECILLO', 'Roman Catholic', 'Sales Lady', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0104', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '87fea896b618935f2cec22a8da6835b9', 'ea751213379f71921fc746ec3d8378ae', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8274, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'CABILIN', 'CLAUDINE', 'MACAS', 'NAME EXT.', NULL, 0, 'MAMBAJAO CAMIGUIN', 'Female', 'Single', 'ZENAIDA LOPECILLO MACAS', 'Roman Catholic', 'Housekeeper', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0105', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'f9c4918dbb7f1d2ec991738bec7743b9', 'e32a6de1611501a68b7cd5484f062982', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8275, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'UY', 'PETERSON', 'MIDDLE NAME', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0107', NULL, '', '', '', '', '', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd201f6e0e5d00a5bde67827b574d4ac6', '77258489778ff5d78892db12b148e624', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8276, 'REGION 10', 'CAMIGUIN', 'LONE', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO EVACUATION CENTER', 'DURIAS', 'PRINCESS', 'UBAS', 'NAME EXT.', '2000-10-02', 25, 'MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'ANGELES OPEÑA UBAS', 'Roman Catholic', 'Dishwasher', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0108', NULL, '09368220979', '', '', 'Upper', 'Lumad', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd0730e7711fab72de99c15b0016d8c43', '4190132fd815678ec3d9ffe07e0183b9', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8277, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'BULORON', 'JEREMIAH', 'MIDDLE NAME', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Teller', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0109', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '345fd3ca6493f84fcb18909876eb2bb9', 'dae87225b225bec23a7518efa6a8eece', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8278, 'REGION 10', 'CAMIGUIN', 'LONE', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'LASTIMOSO', 'RIO', 'DOSDOS', 'NAME EXT.', '1975-03-23', 51, 'CAMIGUIN', 'Female', 'Married', 'CORNELIA LIQUIGAN', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0110', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 1, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '720af93e4ae04b34ba69d4109f0ffc38', '5226e93a71962ae288836a3eb32a5d9e', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8279, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'LAGUMBAY', 'CAROLYN', 'LOPECILLO', 'NAME EXT.', '1964-01-01', 62, 'MALAYBALAY BUKIDNON', 'Female', 'Married', 'SALISE, CATALINE', 'Roman Catholic', 'Gov Employee', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0111', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '453918fbeef681b9bbebfb4fe084e487', '899d4ceb6fc20c9d4c0d74da8a68177a', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8280, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ALCANTAR', 'CHRISTINE', 'TIZON', 'NAME EXT.', '1998-12-21', 27, 'BIRTHPLACE', 'Female', 'Single', 'SONIA D. TIZON', 'Religion', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0112', NULL, '09676892906', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b913a1f0a57cc46eff18615484a3ab33', 'ea9cca36a0b40671e6ccb8e87dfe5f92', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8281, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', '.', 'EVACUATION CENTER/SITE', 'DALING', 'DORIS', 'EBARLE', 'NAME EXT.', '1969-12-02', 56, 'MAMBAJAO', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0113', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '88f244f617675babc4990ca18764d166', '4e6e9ead5e42b00281bf84bb1fd6d191', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8282, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'TIZON', 'ANASHEILA', 'BACOR', 'NAME EXT.', '2001-02-20', 25, 'TAPON', 'Female', 'Single', 'BUENAVENFERADA', 'Catholic', 'None', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0114', NULL, '', '', '', '', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b0916165943160ab023d767d1821148f', '58e2a7a7e76401611752ef1f3c133ac5', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8283, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO EVACUATION CENTER', 'SARANILLO', 'JOVENCIO', 'ELARDO', 'NAME EXT.', '1964-06-11', 61, 'CEBU', 'Male', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fisherman', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0115', NULL, '09534160856', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', 'PETER DANN C. ROMUALDO', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '0e13e4de19a141b20b44a7056eaa8747', '37a5231c775bde2dc934920b4fe522f9', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8284, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'CABILIN', 'ZENAIDA', 'MACAS', 'NAME EXT.', NULL, 0, 'BUG ONG', 'Female', 'Married', 'ROSITA LOPECILLO MACAS', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0116', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e2e3579950bf7e9e91ddbf282939cc2c', '6905f5f32140b4d99726cdff7479535e', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8285, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'BABIA', 'MELOGIE', 'GORRE', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'House Wife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0117', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '1e2818669fcf6a9e0c4d5fd9cfeeb178', 'a54b4057d979af091dc638742e8183d5', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8286, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL', 'TIZON', 'EONA', 'ATASAN', 'NAME EXT.', '1978-10-09', 47, 'BIRTHPLACE', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Fish Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0118', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '8498ef0c9a2418909ac14b578ebbefee', '5a710ebc0e63c9e1c74706e385c58651', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8287, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'DOLUMBAL', 'NORA', 'MANAIZ', 'NAME EXT.', '1981-10-16', 44, 'TAPON', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fish Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0119', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '2ab922beb93a03b11e5f9b0ddc73d787', '5bb21f60289208097b1dde4be16f42ef', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8288, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'BOBELA', 'DEJAY', 'MIDDLE NAME', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Construction Worker', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0120', NULL, '', '', '', 'Pur', '', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e912ccd8b97931e4f248cb8a8baf2fd8', '5090631d5c4eb31a73d926ca128d5006', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8289, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'RAZ', 'VERONICA', 'NAWAN', 'NAME EXT.', '1948-10-19', 77, 'BIRTHPLACE', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Rokman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0121', NULL, '09755229311', '', '', 'Tapon', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 1, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '3a0660bd017955654bc14b76b0ffa7e3', 'a4bff9126d92bf766c03aa8067aa8d9d', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8290, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'BABIA', 'JOSE', 'MARIQUIT', 'NAME EXT.', NULL, 0, 'BIRTHPLACE', 'Male', 'Married', 'THELMA MARIQUIT', 'Roman Catholic', 'Carpenter', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0122', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '54b2feee80ba941ce86783b45975579e', '732c44312a75d72a8a3cfd1ccc7cd1df', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8291, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'TUNICAO', 'BEIZ JOHN', 'RAZ', 'NAME EXT.', '1999-11-26', 26, 'TAPON, POBLACION, MAMABAJAO, CAMIGUIN', 'Male', 'Married', 'JUVY NAWAN RAZ', 'Roman Catholic', 'Driver', 0.00, 'ID CARD PRESENTED', 'KO5-28-000343', NULL, NULL, '', '0123', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9103', 0, '', NULL, 0, 1, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a1dbd42cd9f1c1680be2fa213ca7c939', 'a8b1a7dddc07f02b440bcaffc16af765', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8292, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'DAGOOC', 'JOSIE', 'DURIAS', 'NAME EXT.', '1976-03-15', 50, 'MALALAG, DAVAO', 'Female', 'Married', 'FILISA DIAMANTE', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0124', NULL, '09754050056', '', '', '', '', '', 'Poblacion', 'Mambajao', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '152388e04b608b64ea12e6b3d7a5888a', 'f1fde4a07bf4921213c42c1d168566c5', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8293, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMABAJAO', 'POBLACION', 'LAKAS', 'TIZON', 'EDNA', 'ATASAN', 'NAME EXT.', '1978-10-09', 47, 'TAPON MAMABAJAO', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Fish Vendor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0125', NULL, '09363248137', '', '', 'Tapon', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e4ea68591f33e5fb0b5d5f091bc290ac', '97b179b50f7f3412b115d49ecb6397df', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8294, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'LAGUMBAY', 'PAZ KATHLEEN', 'LOPECILLO', 'NAME EXT.', '1986-12-01', 39, 'MAMBAJAO CAMIGUIN', 'Female', 'Single', 'CAROLYN SALISE LOPECILLO', 'Roman Catholic', 'Gov Employee', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0126', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 1, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '64e152a941f2d034655433fdb4188e9c', '7caec07413171b63061173a557547e17', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8295, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ESTRERA', 'ESTERLITA', 'MANLIGUEZ', 'NAME EXT.', NULL, 0, 'SURIGAO DEL NORTE', 'Female', 'Married', 'SIMPLICIA PETALLO', 'Jehovah \'s Witnesses', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0128', NULL, '09358917806', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '060b4e0621f0b00886d308a1582dc598', 'f4f7211b349dd82628868657a1f02761', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8296, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'GALGO', 'CHRISTIAN', 'LOPECILLO', 'NAME EXT.', NULL, 0, 'MAMBAJAO CAMIGUIN', 'Male', 'Married', 'SUSAN SALISE LOPECILLO', 'Roman Catholic', 'Gov Employee', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0129', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '94f60e8b7802ec23c92e0af1a8c3d037', '3a3189812cff9fb3bc57e6acaeb3863e', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8297, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'CENTRAL', 'CORRO', 'PEDRITA', 'ALCANTAR', 'NAME EXT.', '1986-06-29', 39, 'POBLACION TAPON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0132', NULL, '', '', '', '', '', '', 'Poblacion', 'Mambajao', '', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e09cb04715b5892290dce66d68cbbe6b', 'f893adb03445020dcae186d544c8dd25', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8298, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'ALIM', 'MYRNA', 'DAYATA', 'NAME EXT.', '1968-04-15', 57, 'BIRTHPLACE', 'Female', 'Civil Status', 'CARMENSITA', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0133', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '272ba0e5e2e1321987f3c5dd848b41d8', '44580af2a9c57031012e8c8f845063c7', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8299, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'CABACTOCAN', 'JOVELYN', 'TAMUDMUD', 'NAME EXT.', '1978-10-30', 47, 'TAGDO', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0135', NULL, '09108612803', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '12ec494797f2361f86102e956c8a1646', '33491881facbf9c2654f7907639d0232', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8300, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMABAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ESTRERA', 'MARY JANE', 'CAINOY', 'NAME EXT.', '2003-04-19', 22, 'CGH, MAMBAJAO, CAMIGUIN', '', 'Single', 'MARIVIC C. ESTRERA', 'Religion', 'House Keeper', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0136', NULL, '09974281229', '', '', 'Tapon', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', 'EDNA ATASAN TIZON', NULL, 'EDNA ATASAN TIZON', NULL, 1, '2026-04-18 00:00:00', 1, '7c92eb4f6d9a210b4c653f55938f43b1', '45f69feb1324a2a3d4d24a0ac244f8de', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8301, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ESTRERA', 'MARIVIC', 'CAINOY', 'NAME EXT.', '1973-12-09', 52, 'BIRTHPLACE', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0137', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4b14e3592d55515569208cbc768431cb', '41186a121a6c19e338f3c40e29507cbd', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8302, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMABAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'MAESTRADO', 'CLAUDINE', 'INTOD', 'NAME EXT.', '1997-03-03', 29, 'TAPON, MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0138', NULL, '09464208783', '', '', 'Tapon', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', 'EDNA ATASAN TIZON', NULL, 'EDNA ATASAN TIZON', NULL, 1, '2026-04-18 00:00:00', 1, 'e94dd73ffbec4d3798c933e0ab26a520', 'b08b898c1a32166c285b56a36046e75a', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8303, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL', 'ONCADA', 'FATIMA', 'EBORLE', 'NAME EXT.', '1977-11-17', 48, 'MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0139', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '9e9ad7b4d93921209c16e35b50ce045e', '8dc48be02349bc066a38cb70e547725e', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8304, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'TIZON', 'CARMENSITA', 'ATASAH', 'NAME EXT.', '1948-04-16', 77, 'TAPON, MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'HONORADO', 'Roman Catholic', 'Occupation', 0.00, 'SENIOR ID', '2599', NULL, NULL, '', '0141', NULL, '0955883744', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 1, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '42f73266ded550ed165903336047d89f', '814e8207eb6ba7ed0356940422a7b59f', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8305, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'MAMBAJAO CENTRAL', 'ALIM', 'DYMPLE', 'ACTA', 'NAME EXT.', '2001-07-07', 24, 'MERCY VILLAGE', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0142', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e639183b27772e4101968eb8f24eb334', '3f90b3c9c345f4660fb5de3a5142cdb3', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8306, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'GARDE', 'OLIVE', 'VALDEHUEZA', 'NAME EXT.', '1982-10-08', 43, 'NUEVA ECIJA', 'Female', 'Single', 'KHILO HARDE', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0146', NULL, '09979921994', '', '', 'Tapon', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'bd1980ea04b370da6e8511109d0c2d94', 'e951d74ac9511fa8b710e7fa59bb0dcc', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8307, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMABAJAO', 'POBLACION', 'MCS', 'GABUCAN', 'JOSELITO', 'PALLO', 'NAME EXT.', '1964-11-14', 61, 'CGH, MAMABAJAO, CAMIGUIN', 'Male', 'Married', 'CHONA EDQUIAS', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0147', NULL, '09982017252', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5283b3c0be328f9a8c00f2e62ddb563e', 'adf0fe339ad0ca0fe4f6ab14dcb2833d', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8308, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAI CENTRAL SCHOOL', 'GAYO', 'BRYLL TIMOTHY', 'LIBRES', 'NAME EXT.', '1991-02-10', 35, 'BU-O, MATNOG', '', 'Single', 'TIZON', 'Religion', 'Merchandiser', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0149', NULL, '09366127470', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '24762e86de6b3e16f867f16322329fea', '6003bf1e8e4ecac51250ca393570abdc', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8309, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'TIZON', 'JOCELYN', 'ATASAN', 'NAME EXT.', '1982-07-23', 43, 'TAPON, POBLACION, MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'ATASAN', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0150', NULL, '', '', '', '', '', 'Tapon', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5065d12c909f4993487ca5e4fc2732b0', '660be9a4fc579c05ab9e77ecf90913c5', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8310, 'REGION', 'PROVINCE', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'MAMBAJAO CENTRAL', 'SACAL', 'LORENA', 'EBARLE', 'NAME EXT.', '1983-03-11', 43, 'MAMBAJAO', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0151', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '03f406cd69d1a440eb76c151deb62375', '27c00df311d0370f036c180ab664a865', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8311, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'TALISAY', 'DIOSCRO', 'GABAYRAN', 'NAME EXT.', '1965-04-09', 60, 'CAMIGUIN', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Janitor', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0154', NULL, '09100896788', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'f2b4d8c801dbf185a019f884acb09eda', '8dcca4d05828a4bc03651ba07c780685', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8312, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'BUG-ONG', 'BUG-ONG ELEMENTARY SCHOOL', 'GALGO', 'CLARK PYTT', 'LOPECILLO', 'NAME EXT.', NULL, 0, 'MAMBAJAO CAMIGUIN', 'Male', 'Married', 'SUSAN SALISE LOPECILLO', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0155', NULL, '', '', '', 'Purok', '2', 'Bug-ong', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '2bf2638eb3cd6b03f4d0e3c20f0c9738', 'ab5b6c2ae3aec31840c593d884886221', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8313, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'ALCANTAR', 'ROMMEL', 'OCHAVILLO', 'NAME EXT.', '1973-10-13', 52, 'BIRTHPLACE', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Fisherman', 0.00, 'NATIONAL ID', 'ID CARD NUMBER', NULL, NULL, '', '0156', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '5ee98340fa1fc21c7d4b81f2bfa2f3f2', '5e96036030b9489a1526f4fb5756f3b2', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8314, 'X', 'CAMIGUI', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'TALISAY', 'WILSON', 'GABAYRAN', 'NAME EXT.', '1967-10-13', 58, 'CAMIGUIN', '', 'Single', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0157', NULL, '09971679374', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '377003eb5a3d931003f30b4ed3fee210', 'a2db49ba85d250e535f40ed4f10d0088', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8315, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'ATASAN', 'JOVIELYN', 'TIZON', 'NAME EXT.', '2002-08-15', 23, 'TAPON', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0158', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '1d0cc81006f1899dc2fe853a2bafecd4', '30d1bca3cf771534b0af1bee23d92fc0', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8316, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'CAHIMAT', 'ELIZABETH', 'OGAJ', 'NAME EXT.', '1973-03-13', 53, 'CAMIGUIN', '', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0160', NULL, '', '', '', '', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '02c9e9a801ddee7613dc802e3067d91c', 'e705d0305ca191e9e335a8d87b759604', NULL, NULL, '', '2026-04-18 08:32:33', '2026-04-18 08:32:33'),
(8317, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'CABONILLAS', 'FODILCO', 'AMORA', 'NAME EXT.', '1984-02-02', 42, 'GINGOOG CITY', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0163', NULL, '09912257669', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mamabajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'd3f15606ce9af8c2fc8c3295109c8c7f', '0e3b0651dc28266b13bfea564795f7a8', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8318, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'ALCANTAR', 'REMMEL', 'OCHAVILLO', 'NAME EXT.', '1973-10-13', 52, 'CAMIGUIN', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Laborer', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0164', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '114f8962ae210d8d8cfecdc71e47af3c', 'e3ce0c55a8882baa28dce93f791b045f', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8319, 'REGION X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'ALCANTAR', 'RENE', 'OCHARILLO', 'NAME EXT.', '1955-11-12', 70, 'CATARMAN CAMIGUIN', 'Female', 'Widowed', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0165', NULL, '09638138713', '', '', '', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '15fbfdf1c756daf5587f1b2646998d87', 'aabf32f747b83f73e1c0a22ec0c60994', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8320, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'CABACTULAN', 'JACKILYN', 'TAMUDMUD', 'NAME EXT.', '1997-06-03', 28, 'TAGDO MAMBAJAO CAMIGUIN', 'Female', 'Single', 'JOVELYN', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0166', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4ac8f31a9dcf2eb8a8817d702ab21d9f', '990997c388147ee0378180064479369c', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8321, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'CABACTULAN', 'JOVELYN', 'TAMUDMUD', 'NAME EXT.', '1978-10-30', 47, 'TAGDO', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0167', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'cd7fa01d5972f1f2a862aadcbd52db2c', '8e689feab254abb143493eb5222ec370', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8322, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'LAMANTE', 'JUSTIN', 'SINO', 'NAME EXT.', '2007-10-03', 18, 'BIRTHPLACE', '', 'Single', 'ARCILIE', 'Catholic', 'Student', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0168', NULL, '09154550512', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 1, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'a796bbda8fe5637216b48e09d9dd2311', '8448b61c526fac38e012c1907528934b', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8323, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'BAGONGON', 'GABRIEL', 'MIJARES', 'NAME EXT.', '1998-04-10', 27, 'GINGOOG CITY', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Laborer', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0169', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '69c0c4fa0558373b264eca93c61c2c1f', '8a9597016c01031f5dd791839ab7c135', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34');
INSERT INTO `residents` (`id`, `region`, `province`, `district`, `city_municipality`, `barangay`, `evacuation_center`, `last_name`, `first_name`, `middle_name`, `name_extension`, `birthdate`, `age`, `birthplace`, `sex`, `civil_status`, `mother_maiden_name`, `religion`, `occupation`, `monthly_income`, `id_card_presented`, `id_card_number`, `id_picture_front`, `id_picture_back`, `full_name`, `household_no`, `address`, `contact_number`, `alternate_number`, `house_no`, `street`, `subdivision`, `permanent_barangay`, `permanent_city`, `permanent_province`, `zip_code`, `is_4ps_beneficiary`, `ip_ethnicity`, `family_members`, `vulnerable_older_persons`, `vulnerable_pregnant`, `vulnerable_lactating`, `vulnerable_pwd`, `shelter_damage`, `ownership_status`, `signature_thumbmark`, `right_thumbmark`, `registration_date`, `barangay_captain_name`, `barangay_captain_signature`, `lswdo_name`, `lswdo_signature`, `data_privacy_consent`, `data_privacy_date`, `family_size`, `qr_code_token`, `household_qr_token`, `photo`, `individual_qr_token`, `status`, `created_at`, `updated_at`) VALUES
(8324, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'ALCANTAR', 'SONIA', 'TIZON', 'NAME EXT.', '1963-10-15', 62, 'TAPON, POBLACION, MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0170', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '46ab6d727a0f282da419c6ac8f3992cc', '0dd1d02c5b87287d7f878e54e63584cc', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8325, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'LUMBA', 'LEUIZA', 'HENERA', 'NAME EXT.', '1966-01-16', 60, 'MAMBAJAO', 'Female', 'Single', 'HENERA', 'Roman Catholic', 'Housekeeper', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0171', NULL, '', '', '', 'Boloc-boloc', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '56f7bb5f0990c1bd3b311d7b9f9b335e', 'dbdd94c058dc1d6fd90f8073532f7f3e', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8326, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'LADAO', 'PAZ', 'VIRTUDAZO', 'NAME EXT.', '1988-01-24', 38, 'MAMBAJAO, CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0175', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'ddb4fc866a5a66eb4845bd4b2ef6c5e1', '7da045d88778579563f09602e79cca5f', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8327, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'TIZON', 'QUEENIE', 'RESMINS', 'NAME EXT.', '1996-11-13', 29, 'SALAY MISAMIS ORIENTAL', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0176', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '38edd2258c6c975e9a69795b2bbb35a6', 'f2093ff094163d14c0fce9b424cd449f', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8328, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'SADUESTE', 'JUVELYN', 'LAGRADA', 'NAME EXT.', '1989-05-22', 36, 'BIRTHPLACE', 'Female', 'Married', 'VIRGINIA LAGRADA', 'Religion', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0177', NULL, '09095751542', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '2ccce973fd4c49ef564044dd86fe5bc0', 'd4ca483521013a397bd1313c12e0398d', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8329, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'HOUSEWIFEOBLACION', 'EVACUATION CENTER/SITE', 'DAHAN', 'LUCIO', 'ALONDRES', 'NAME EXT.', '1960-02-07', 66, 'MAMBAJAO CAMIGUIN', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0178', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '9100', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '11d48c303cdeb6dc7941011b4d040351', '5f9305a93c577d3edde61a94b68bce2f', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8330, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'POLUMBAL', 'NORA', 'MANEIZ', 'NAME EXT.', '1981-10-16', 44, 'BIRTHPLACE', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0179', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '6578163381f7ae8f9b4e3abd32ea4309', '2149645292e849cde438bf283e230742', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8331, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'MONTALBA', 'ELISA', 'SALVA', 'NAME EXT.', '1971-08-16', 54, 'COMMON MAMBAJAO', 'Female', 'Civil Status', 'MOTHER\'S MAIDEN NAME', 'Religion', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0180', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '0224d3a2ba5a0a17f03ffb899d3c7cda', '74e9bac05586d1ecbca967074af6863d', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8332, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'VIRTUDAZO', 'LUCIA', 'EBHIE', 'NAME EXT.', '1961-04-27', 64, 'MAMBAJAO CAMIGUIN', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0181', NULL, '09639610529', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '4a4ee99d8c5499e16cee28a3c5731514', '895335ea890e52926149698179c56e78', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8333, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'TUNIACAO', 'BEN JOHN', 'RAZ', 'NAME EXT.', '1999-11-26', 26, 'BIRTHPLACE', 'Male', 'Married', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0184', NULL, '', '', '', '', '', '', '', 'Tapon', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '54b8cb3c2747eb22318656315f05d13c', '880a43f30ea3eda40ef89b0422889b47', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8334, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'EVACUATION CENTER/SITE', 'DOSDOS', 'JANIA', 'LEQUIGAN', 'NAME EXT.', '1989-03-05', 37, 'DIPOLOG', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Roman Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0185', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'e1532200e5cd717cb819789fe4bef264', '3aaf5b692202223b38790fc4424f93bd', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8335, '10', 'CAMIGUIN', 'DISTRICT', 'CITY/MUNICIPALITY', 'POBLACION', 'MCS', 'TIZON', 'ANASHIELA', 'BACOR', 'NAME EXT.', '2001-02-20', 25, 'BIRTHPLACE', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0186', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'dea1bb6cea7775a9aca4640776af2207', '3364d0e4777fe55ae8df387b6aad0a27', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8336, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'TAMUDMUD', 'CHRISTIAN', 'SARMIENTO', 'NAME EXT.', '2002-11-27', 23, 'CLAVERIA MISAMIS ORIENTAL', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Student', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0187', NULL, '', '', '', '', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'b573a6b1134755e6c3780dc0d2801e50', '5395cf5aa63feb0de47f8649263d796e', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8337, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'LAKAS', 'CABACTULAN', 'JACKLLYN', 'TAMUDMUD', 'NAME EXT.', '1997-06-03', 28, 'TAGDO, MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'JOVELYN TAMUDMUD', 'Roman Catholic', 'Housewife', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0189', NULL, '09100710581', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, '6c27aad5c3d24bf23052af648de680a5', 'bdb08027abc1e0f9576cf43f4a19df4d', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8338, 'X', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'OCHAVILLO', 'MARITA', 'ACOP', 'NAME EXT.', '1967-07-06', 58, 'TAPON, MAMBAJAO, CAMIGUIN', 'Female', 'Single', 'MOTHER\'S MAIDEN NAME', 'Catholic', 'Occupation', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0190', NULL, '', '', '', 'Tapon', '', 'Poblacion', 'Mambajao', 'Camiguin', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, NULL, '2026-04-18', '', NULL, '', NULL, 1, '2026-04-18 00:00:00', 1, 'fc27ecfe8a00b8605b172eeab980af4f', 'e319dc48da5a4447f72fd425f7c231d8', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:32:34'),
(8339, '10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MCS', 'DOSDOS', 'BERLY', 'LIBRIS', 'NAME EXT.', '1971-11-30', 54, 'TAPON', 'Female', 'Married', 'MOTHER\'S MAIDEN NAME', 'RELIGION', 'OCCUPATION', 0.00, 'ID CARD PRESENTED', 'ID CARD NUMBER', NULL, NULL, '', '0192', NULL, '', '', '', '', '', '', '', '', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, 'uploads/thumbmarks/BERLY_LIBRIS_DOSDOS_THUMBMARK_2026-04-18_08-24-29.jpg', '2026-04-18', '', NULL, '', NULL, 0, '2026-04-18 00:00:00', 1, '1afb60ca0e83549a014408b2c47e4b19', '7fe5becfd75073b845dce41cc6f75e41', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:36:22'),
(8340, 'REGION 10', 'CAMIGUIN', 'DISTRICT', 'MAMBAJAO', 'POBLACION', 'MAMBAJAO CENTRAL SCHOOL', 'CABONILLAS', 'RODILLO', 'AMORA', 'NAME EXT.', '1984-02-02', 42, 'GINGOOG CITY', 'Male', 'Single', 'MOTHER\'S MAIDEN NAME', 'ROMAN CATHOLIC', 'OCCUPATION', 0.00, 'DRIVER\'S LICENSE', 'ID CARD NUMBER', NULL, NULL, '', '0195', NULL, '09972257669', '', '', 'BOLOC-BOLOC', '', 'POBLACION', 'MAMBAJAO', 'CAMIGUIN', '', 0, '', NULL, 0, 0, 0, 0, 'No Damage', 'Owner', NULL, 'uploads/thumbmarks/RODILLO_AMORA_CABONILLAS_THUMBMARK_2026-04-18_08-19-44.png', '2026-04-18', '', NULL, '', NULL, 0, '2026-04-18 00:00:00', 1, '7d735bc51a3d5b713f13f80bf3cbd8e0', 'a3ba7d5d4305341803265c6a7127c1b3', NULL, NULL, '', '2026-04-18 08:32:34', '2026-04-18 08:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `subdivision` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(4) DEFAULT NULL,
  `contact_number` varchar(13) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` enum('admin','distributor','barangay') DEFAULT 'distributor',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `last_name`, `first_name`, `middle_name`, `suffix`, `birthdate`, `age`, `birthplace`, `sex`, `house_no`, `street`, `subdivision`, `barangay`, `city`, `province`, `zip_code`, `contact_number`, `position`, `password`, `full_name`, `role`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '$2a$12$OT9fgKVlfaZJm2wZJv5gp.4DDIvgT.LAfBH/3T.VMhUffBVeFcnMm', 'System Administrator', 'admin', 'active', '2026-02-24 08:54:36', '2026-02-24 08:54:36'),
(12, 'mjay', 'richlob8@gmail.com', 'Miculob', 'Richard', 'Victor', '', '1974-02-27', 52, 'Camiguin General Hospital', 'Male', '123', 'Purok 3a', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09273532291', 'Captain', '$2y$10$Wfi3xYiOWdmtyljW4FgwBeeOrmibndRHftI0bM2ZdLGgT8y.6LHGy', 'Richard Victor Miculob', 'barangay', 'active', '2026-02-28 22:03:47', '2026-02-28 22:03:47'),
(13, 'chardoxx', 'miculobrichardvictor@gmail.com', 'Miculob', 'Richard', 'Victor', '', '1972-02-01', 54, 'Camiguin General Hospital', 'Male', '123', 'Purok 3a', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09273532291', 'Staff', '$2y$10$r7OemH8Waxx5I314UntmOe9rvvBbo6vZGvsI1AFNeLo5KA13dFc5W', 'Richard Victor Miculob', 'distributor', 'active', '2026-03-01 11:14:46', '2026-03-01 11:14:46'),
(14, 'yzrah', 'admin@system.com', 'Obsid', 'Yzrah Hushneah', '', '', '2026-04-18', 0, 'sagay', 'Female', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$GecIhkLxyXqOG7hdWBkT3eezLQCiUGXVhAUBBXHwrRFLf4g.p9T76', 'Yzrah Hushneah Obsid', 'admin', 'active', '2026-04-18 08:37:54', '2026-04-18 08:37:54'),
(15, 'justin', 'admin@driverent.com', 'Miculob', 'Richard', '', '', '2026-04-18', 0, 'GINGOOG CITY', 'Male', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$b72ZcAsyp.iWpEPVGTjrbOLYX/5iyi9zdmswrPMogGGUAUfuwxo3.', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:38:48', '2026-04-18 08:38:48'),
(16, 'isah', 'admin@pwd.system', 'Miculob', 'Richard', '', '', '2026-04-11', 0, 'Camiguin General Hospital', 'Male', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$pqmt.hbKuD8alm.thlCw5OOy1kIzKDcNikNkY7fgu3mZpoWsLkdfS', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:39:29', '2026-04-18 08:39:29'),
(17, 'godwin', 'admin@gmail.com', 'Miculob', 'Richard', '', '', '2026-04-18', 0, 'Camiguin General Hospital', 'Male', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$nYqMMbegRHKObP4zeTAuDugvNOmKdzrtb61M7Ye999puZBtJsEQJW', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:40:09', '2026-04-18 08:40:09'),
(18, 'peemak', 'admin@demo.com', 'Miculob', 'Richard', '', '', '2026-04-18', 0, 'Camiguin General Hospital', 'Male', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$YTWphbvH71iiLCERS6cujODzK82OO4ShcC51LfRHzjzcCV94OPSPK', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:40:49', '2026-04-18 08:40:49'),
(19, 'mark', 'aljunmar@gmail.com', 'Miculob', 'Richard', '', '', '2026-04-18', 0, 'Camiguin General Hospital', 'Other', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$sWWvpxKmPieXTxjmfd8msuR7D78tPmxcgHe1r0t74M69fPTJh0.yS', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:41:24', '2026-04-18 08:41:24'),
(20, 'cj', 'richlob11@gmail.com', 'Miculob', 'Richard', '', '', '2026-04-18', 0, 'Camiguin General Hospital', 'Male', '', '', '', 'Bonbon', 'Catarman', 'Camiguin', '9104', '09068424110', '', '$2y$10$ElQd0UyPHIhYSmIw2ASeKuFaRYC.77uK8nWx0DaO3bdZ4QsZZZaqy', 'Richard Miculob', 'admin', 'active', '2026-04-18 08:42:19', '2026-04-18 08:42:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `family_member_id` (`family_member_id`),
  ADD KEY `attendance_date` (`attendance_date`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `batch_distributions`
--
ALTER TABLE `batch_distributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `family_member_id` (`family_member_id`),
  ADD KEY `distributor_id` (`distributor_id`),
  ADD KEY `idx_batch_tracking` (`batch_id`,`distribution_date`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `batch_status_logs`
--
ALTER TABLE `batch_status_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `changed_by` (`changed_by`);

--
-- Indexes for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `distributor_id` (`distributor_id`),
  ADD KEY `family_member_id` (`family_member_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_member_id` (`member_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `qr_code_token` (`qr_code_token`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_batches`
--
ALTER TABLE `inventory_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batch_number` (`batch_number`),
  ADD UNIQUE KEY `qr_code_token` (`qr_code_token`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `status` (`status`),
  ADD KEY `assignment` (`assignment_type`,`assigned_to`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `household_no` (`household_no`),
  ADD UNIQUE KEY `qr_code_token` (`qr_code_token`),
  ADD UNIQUE KEY `household_no_unique` (`household_no`),
  ADD KEY `qr_code_token_2` (`qr_code_token`),
  ADD KEY `idx_last_name` (`last_name`),
  ADD KEY `idx_first_name` (`first_name`),
  ADD KEY `idx_barangay` (`barangay`),
  ADD KEY `idx_city_municipality` (`city_municipality`),
  ADD KEY `idx_province` (`province`),
  ADD KEY `idx_registration_date` (`registration_date`),
  ADD KEY `idx_sex` (`sex`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_household_qr_token` (`household_qr_token`),
  ADD KEY `idx_individual_qr_token` (`individual_qr_token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `batch_distributions`
--
ALTER TABLE `batch_distributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `batch_status_logs`
--
ALTER TABLE `batch_status_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22917;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `inventory_batches`
--
ALTER TABLE `inventory_batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8342;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch_distributions`
--
ALTER TABLE `batch_distributions`
  ADD CONSTRAINT `batch_distributions_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `inventory_batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_distributions_ibfk_2` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `batch_distributions_ibfk_3` FOREIGN KEY (`family_member_id`) REFERENCES `family_members` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `batch_distributions_ibfk_4` FOREIGN KEY (`distributor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `batch_status_logs`
--
ALTER TABLE `batch_status_logs`
  ADD CONSTRAINT `batch_status_logs_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `inventory_batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `batch_status_logs_ibfk_2` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `distribution_logs`
--
ALTER TABLE `distribution_logs`
  ADD CONSTRAINT `distribution_logs_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distribution_logs_ibfk_2` FOREIGN KEY (`distributor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_batches`
--
ALTER TABLE `inventory_batches`
  ADD CONSTRAINT `inventory_batches_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
