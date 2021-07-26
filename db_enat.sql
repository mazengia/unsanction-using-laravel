-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 03:28 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_enat`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(109, '2014_10_12_000000_create_users_table', 1),
(110, '2014_10_12_100000_create_password_resets_table', 1),
(111, '2019_08_19_000000_create_failed_jobs_table', 1),
(112, '2021_07_12_205034_tbl_customer', 1),
(113, '2021_07_16_111554_create_employees_table', 1),
(114, '2021_07_16_115739_create_unsanctions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `Institution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Full_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Relationship` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Date_of_Birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Place_of_Birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Passport_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `National_ID_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Driving_License` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Account_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `TN_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `City` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Sub_City` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Wereda` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `House_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_P_O_Box` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_Phone_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_Email_Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_Phone_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_P_O_Box` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_Email_Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Year_of_Appointee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Other_Infn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `Institution`, `Full_Name`, `Sex`, `Title`, `Position`, `Occupation`, `Relationship`, `Date_of_Birth`, `Place_of_Birth`, `Nationality`, `Passport_No`, `National_ID_No`, `Driving_License`, `Account_No`, `TN_No`, `City`, `Sub_City`, `Wereda`, `House_No`, `RA_P_O_Box`, `RA_Phone_No`, `RA_Email_Address`, `Place`, `A_Phone_No`, `A_P_O_Box`, `A_Email_Address`, `Year_of_Appointee`, `Other_Infn`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, ' Prime Minister Office and Responsible Institutions', 'Abiy Ahimed (DR.)', 'M', 'H.E', 'Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(2, ' Prime Minister Office and Responsible Institutions', 'Demeke Mekonin', 'M', 'H.E', 'Deputy Prime Minister ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(3, ' Prime Minister Office and Responsible Institutions', 'Demetu Hambisa', 'M', 'H.E', 'Head of the Prime Minister\'s Office and Minister of Cabinet Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(4, ' Prime Minister Office and Responsible Institutions', 'Esayas Kasa', NULL, 'H.E', 'State Minister for Cabinet Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(5, ' Prime Minister Office and Responsible Institutions', 'Worku Guwangul', 'M', 'H.E', 'State Minister for Office Services and Good Governance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(6, ' Prime Minister Office and Responsible Institutions', 'Bellene Seyoum', 'F', 'H.E', 'Head of the English Secretariat of the Prime Minister\'s Office Press Secretary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(7, ' Prime Minister Office and Responsible Institutions', 'Nigusu Tilahun', 'M', 'H.E', 'Press Secretary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(8, ' Prime Minister Office and Responsible Institutions', 'Mamo Asimelailem  Mihiretu', 'M', 'H.E', 'Senior Adviser to the Prime Minister on Policy Reform with the title of State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(9, ' Prime Minister Office and Responsible Institutions', 'Arkebe Ikubay (Dr.)', 'M', 'H.E', 'Head of Economic Planning Effectiveness Monitoring and Support Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(10, ' Prime Minister Office and Responsible Institutions', 'Hailay Birhane Tesema ', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(11, ' Prime Minister Office and Responsible Institutions', 'Feseha Yitagesu', 'M', 'H.E', 'Coordinator of Current Affairs Research and Analysis with State Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(12, ' Prime Minister Office and Responsible Institutions', 'Getachew Ambaye', 'M', 'H.E', 'Coordinator of Current Affairs Research and Analysis with State Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(13, ' Prime Minister Office and Responsible Institutions', 'Tekeleweld Atinafu', 'M', 'H.E', 'The Prime Minister\'s Finance Adviser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(14, ' Prime Minister Office and Responsible Institutions', 'Teyiba Hasen', 'F', 'H.E', 'Adviser to the Prime Minister on Social Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(15, ' Prime Minister Office and Responsible Institutions', 'Dese Dalge', 'M', 'H.E', 'Adviser to the Prime Minister on Agriculture and Irrigation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(16, ' Prime Minister Office and Responsible Institutions', 'Shumete Gizaw(DR.)', 'M', 'H.E', 'Head of the Prime Minister\'s Special Office with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(17, ' Prime Minister Office and Responsible Institutions', 'Motuma Mekasa', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(18, ' Prime Minister Office and Responsible Institutions', 'Gantirar  Abay Yigzaw', 'M', 'H.E', 'The Prime Minister\'s Adviser on Infrastructure and Urban Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(19, ' Prime Minister Office and Responsible Institutions', 'Tesfahun Gobezay', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(20, ' Prime Minister Office and Responsible Institutions', 'Binalf Andualem', 'M', 'H.E', 'Chief Coordinator of the Center for Coordination of Democracy Building with Ministerial Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(21, ' Prime Minister Office and Responsible Institutions', 'Meles Alemu', 'M', 'H.E', 'Deputy Coordinator of the Center for Democracy Building Coordination Center with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(22, ' Prime Minister Office and Responsible Institutions', 'Asmelash Weldesilasie', 'M', 'H.E', 'Sector Coordinator of the Center for Coordination of Democracy Building with Ministerial Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(23, ' Prime Minister Office and Responsible Institutions', 'Fekadu Tesema', 'M', 'H.E', 'Coordinator of the Center for Coordination of Democracy Building with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(24, ' Prime Minister Office and Responsible Institutions', 'Tefera Deribew', 'M', 'H.E', 'Rural Sector Coordinator at the Center for Democracy Building Coordination Center with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(25, ' Prime Minister Office and Responsible Institutions', 'Abebe Abebayew', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(26, ' Prime Minister Office and Responsible Institutions', 'Hana  Ariya Silassies ', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(27, ' Prime Minister Office and Responsible Institutions', 'Temesgen Tilahun', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(28, ' Prime Minister Office and Responsible Institutions', 'Antene Alemu', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(29, ' Prime Minister Office and Responsible Institutions', 'Lelise Neme', 'F', 'H.E', 'Chief  Excutive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(30, ' Prime Minister Office and Responsible Institutions', 'Shiferaw Solomon', 'M', 'H.E', 'Deputy Executive of Operations and Industry Parks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(31, ' Prime Minister Office and Responsible Institutions', 'Amare Asgedom', 'M', 'H.E', 'Deputy Chief Executive of the Development Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(32, ' Prime Minister Office and Responsible Institutions', 'Birhanu Feyisa', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Civil Service Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(33, ' Prime Minister Office and Responsible Institutions', 'Bezabi Gebreyes', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Civil Service Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(34, ' Prime Minister Office and Responsible Institutions', 'Adisalem Balema (DR./AMB.)', 'M', 'H.E', 'President', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(35, ' Prime Minister Office and Responsible Institutions', 'Tsegaye Mamo', 'M', 'H.E', 'Vice President of the Academic Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(36, ' Prime Minister Office and Responsible Institutions', 'Demis Shito', 'M', 'H.E', 'Vice President of Research Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(37, ' Prime Minister Office and Responsible Institutions', 'Atsbeha Aregawi', 'M', 'H.E', 'Vice President of Planning and Administrative Development Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(38, ' Prime Minister Office and Responsible Institutions', 'Seyoum Mekonin', 'M', 'H.E', 'Meles\' Academy of Modern Leadership Training Sector / President', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(39, ' Prime Minister Office and Responsible Institutions', 'Mekonin Yahe', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kaizen Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(40, ' Prime Minister Office and Responsible Institutions', 'Gebremeskel Chela', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kaizen Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(41, ' Prime Minister Office and Responsible Institutions', 'Daba Ariya', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Employees Social Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(42, ' Prime Minister Office and Responsible Institutions', 'Tilahun Bekele', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Employees Social Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(43, ' Prime Minister Office and Responsible Institutions', 'Fikadu Beyene(Proffesor)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(44, ' Prime Minister Office and Responsible Institutions', 'Firenesh Mekuriya', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(45, ' Prime Minister Office and Responsible Institutions', 'Kebede Yimam', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(46, ' Prime Minister Office and Responsible Institutions', 'Werdi Ashim', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(47, ' Prime Minister Office and Responsible Institutions', 'Nigusu Lema', 'M', 'H.E', 'Director General of Climate Change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(48, ' Prime Minister Office and Responsible Institutions', 'Melese Mariyo(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Biodiversity', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(49, ' Prime Minister Office and Responsible Institutions', 'Feleke Weldeyes (DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Biodiversity', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(50, ' Prime Minister Office and Responsible Institutions', 'Abiyot Birhanu(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment and Forest Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(51, ' Prime Minister Office and Responsible Institutions', 'Agena Angelo(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment and Forest Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(52, ' Prime Minister Office and Responsible Institutions', 'Kumera Wakgira', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wildlife Development Conservation Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(53, ' Prime Minister Office and Responsible Institutions', 'Solomon Mekonin', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wildlife Development Conservation Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(54, ' Prime Minister Office and Responsible Institutions', 'Efrem Tekle(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Job Creation Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(55, ' Prime Minister Office and Responsible Institutions', 'Yinager Dese(DR.)', 'M', 'H.E', 'Ruler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(56, ' Prime Minister Office and Responsible Institutions', 'Yemane Yesuf Tesfaye', 'M', 'H.E', 'Deputy Governor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(57, ' Prime Minister Office and Responsible Institutions', 'Tirune Mintaf', 'M', 'H.E', 'Deputy Governor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(58, ' Prime Minister Office and Responsible Institutions', 'Sileshi Girma', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(59, ' Prime Minister Office and Responsible Institutions', 'Sertse Firesibihat', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(60, ' Prime Minister Office and Responsible Institutions', 'Hagos Abreha(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(61, ' Prime Minister Office and Responsible Institutions', 'Tefera Fikire', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palace Administration', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(62, ' Prime Minister Office and Responsible Institutions', 'Lensa Mekonin', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Land Bank and Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(63, ' Prime Minister Office and Responsible Institutions', 'Tesfaye Werede', 'M', 'H.E', 'Office Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reconciliation Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(64, 'House of People Representative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(65, 'House of People Representative', 'Gebere Egizaber Ariya', 'M', 'Honorable', 'Deputy Assistant to the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(66, 'House of People Representative', 'Chela Lemi', 'M', 'Honorable', 'Deputy Assistant to the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(67, 'House of People Representative', 'Chene Shimeka', 'M', 'Honorable', 'Assistant Representative of the Government in the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of People\'s Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(68, 'House of People Representative', 'Mesfin Cherinet(AMB.)', 'M', 'Honorable', 'Deputy Assistant to the House of Peoples\' Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of People\'s Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(69, 'House of People Representative', 'Getachew Dinku', 'M', 'Honorable', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Broadcasting Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(70, 'House of People Representative', 'Ayelign Mulualem', 'M', 'Honorable', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(71, 'House of People Representative', 'Wedo Atewo', 'M', 'Honorable', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(72, 'House of People Representative', 'Atikiliti Gidey', NULL, 'Honorable', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(73, 'House of People Representative', 'Getinet Tadese', 'M', 'Honorable', 'General Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Press Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(74, 'House of People Representative', 'Niguse Mitiku', 'M', 'Dr.', 'CEO of the corporation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Broadcasting Corporation ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(75, 'House of People Representative', 'Eliyas Awato', 'M', 'Honorable', 'Deputy Chief Executive Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Broadcasting Corporation ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(76, 'House of People Representative', 'Ministry of Urban Development and Construction and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(77, 'House of People Representative', 'Ayisha Mohammed Musa(Engineer)', 'F', 'H.E', 'Minister of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(78, 'House of People Representative', 'Tazer Gebre Egizaber', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(79, 'House of People Representative', 'Kalid Abdurahiman', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(80, 'House of People Representative', 'Mesfin Asefa Kasaye', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(81, 'House of People Representative', 'Wondimu Seta', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(82, 'House of People Representative', 'Dawit Haile Abriha', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(83, 'House of People Representative', 'Rahel Hailu', 'F', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(84, 'House of People Representative', 'Asmelash Bezabi', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(85, 'House of People Representative', 'Solomon Asefa', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(86, 'House of People Representative', 'Zenebe Kuma', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(87, 'House of People Representative', 'Almaw Mengiste', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Integrated Infrastructure Coordination Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(88, 'House of People Representative', 'Sehada Kedir', 'F', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Integrated Infrastructure Coordination Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(89, 'House of People Representative', 'Asmirom Tadese', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Project Management Institute ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(90, 'House of People Representative', 'Argaw Asha(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Project Management Institute ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(91, 'House of People Representative', 'Mesfin Negewo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Works Supervisory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(92, 'House of People Representative', 'Bahiru Ashine', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Related Property Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(93, 'House of People Representative', 'Matebe Adis', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Works Supervisory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(94, 'House of People Representative', 'Reshad Kemal', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(95, 'House of People Representative', 'Yirgalem Kumelt', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(96, 'House of People Representative', 'Hayilebrhian Zena', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(97, 'House of People Representative', 'Fantahun hagos', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(98, 'Ministry of water Irrigation & Energy &Responsible Institution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(99, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Sileshi Bekele(DR./Engineer)', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(100, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Negash Wagesho(DR.)', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(101, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Abreha  Adugna(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(102, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Firehiwot Welde Hana(DR.)', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(103, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Mekahael Mehari(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irrigation Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(104, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Samuhel Usen', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irrigation Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(105, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Besha Mogese(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(106, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Shewanesh Demeke', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(107, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Wana wake', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Fund', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(108, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Adanech Yared(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(109, NULL, 'Getachew Gizaw', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(110, NULL, 'Hirut Beresa', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(111, NULL, 'Roman Gebressilasie', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(112, NULL, 'Tagel Kenubi', 'M', 'H.E', 'Deputy Director of Resource and Project Management Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(113, NULL, 'Fikirte Tamir', 'F', 'H.E', 'Deputy General of Public Diplomacy Communication and Director of the Civil Society Participation and Event Inovation Dirotorate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(114, NULL, 'Tamene Hailu', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(115, NULL, 'Tamiru Fikadu', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(116, NULL, 'Ajanaw Fentaw', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(117, NULL, 'Fetene Teshome', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Meteorological Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(118, NULL, 'Kinfe Hailemariam', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Meteorological Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(119, NULL, 'Abreham Belay', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Electric Power', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(120, NULL, 'Shiferaw Telila', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Electric Power', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(121, 'Ministry of Mines and Petroleum and Refineries and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(122, NULL, 'Samuel urkato(DR.)', 'M', 'H.E', 'Ministry of Minister of Mines and Petroleum and Refineries ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(123, NULL, 'Asefa Kumsa', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(124, NULL, 'Kongitut Sam(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(125, NULL, 'Gethaun Moges', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Energy Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(126, NULL, 'Enatfanta Melaku Gebre', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Geological Survey', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(127, NULL, 'Tadese Hailemariam', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Oil and Gas Production and Supply Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(128, 'Ministry Of Education and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(129, NULL, 'Tilaye Gete Ambaye(DR.)', 'M', 'H.E', 'Minister of Ministry of Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(130, NULL, 'Geremew Huleqa Amenu(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(131, NULL, 'Ussen Yusuf', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(132, NULL, 'Mohammed Ahimedin', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(133, NULL, 'Tsion Teklu', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(134, NULL, 'Ariya Gebre Egizaber', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(135, NULL, 'Zerihun Duresa(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(136, NULL, 'Mesay Demise', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(137, NULL, 'Worku Gethaun', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Educational Equipment Manufacturing and Distribution Organization', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(138, NULL, 'Temesgen Tilahun ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Educational Equipment Manufacturing and Distribution Organization', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(139, 'Ministry of Science and Higher Education and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(140, NULL, 'Hirut Wolde Mariham (DR.)', 'F', 'H.E', 'Minister of Ministry of Sceince and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(141, NULL, 'Abdiwas Abdulahi (DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(142, NULL, 'Samuel Kifile (DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(143, NULL, 'Afwork Kasu(Professor)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(144, NULL, 'Teshome Lema', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(145, NULL, 'Sileshi Gethaun', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(146, NULL, 'Kefelech Denboba', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(147, NULL, 'Tesfaye Muhiye(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(148, NULL, 'Anduhalem Admase(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Relevance and Quality Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(149, NULL, 'Tamirat Mota ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Relevance and Quality Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(150, NULL, 'Habtamu Kibret', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(151, NULL, 'Alemshet Birihane meskel', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(152, NULL, 'Getachew Negash', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17');
INSERT INTO `tbl_customer` (`id`, `Institution`, `Full_Name`, `Sex`, `Title`, `Position`, `Occupation`, `Relationship`, `Date_of_Birth`, `Place_of_Birth`, `Nationality`, `Passport_No`, `National_ID_No`, `Driving_License`, `Account_No`, `TN_No`, `City`, `Sub_City`, `Wereda`, `House_No`, `RA_P_O_Box`, `RA_Phone_No`, `RA_Email_Address`, `Place`, `A_Phone_No`, `A_P_O_Box`, `A_Email_Address`, `Year_of_Appointee`, `Other_Infn`, `remember_token`, `created_at`, `updated_at`) VALUES
(153, NULL, 'Eliyas Awato', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(154, NULL, 'Teshale Berecha', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(155, NULL, 'Habtom Gebere Egizaber', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(156, NULL, 'Seifu Tadese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(157, NULL, 'Eniyew Getnet', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(158, 'Ministery of Revenue and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(159, NULL, 'Adanech Abebe Desa', 'F', 'H.E', 'Minister of Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(160, NULL, 'Zemede Tefera', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(161, NULL, 'Mohammed Abdu Hahimed', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(162, NULL, 'Mirhet Minasib', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(163, NULL, 'Debele Kabeta ', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(164, NULL, 'Azezew Chane', 'M', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(165, NULL, 'Mulgeta Beyene', 'M', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(166, NULL, 'Misiraq  Mamo', 'F', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(167, NULL, 'Geremew Garge Gedeba', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Lottery Administration', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(168, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(169, NULL, 'Yalemtsegaye Asfaw', 'F', 'H.E', 'Minister of Ministry of Women,Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(170, NULL, 'Hiwot Hailu', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(171, NULL, 'Alemitu umed', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(172, NULL, 'Simegn Wube', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(173, 'Planning Development Commission and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(174, NULL, 'Fitsum Asefa Adesa', 'M', 'H.E', 'Planning and Development Commission Commissioner ( Under the title of Minister)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(175, NULL, 'Meseret Meskele', 'F', 'H.E', 'Deputy Commissioner(Under State Minister)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(176, NULL, 'Getachew Adem', 'M', 'H.E', 'Deputy Commissioner of Planning and Development Commission ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(177, NULL, 'Beratu Yigezu', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(178, NULL, 'Amare legese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(179, NULL, 'Asalifew Abera ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(180, NULL, 'Aberash Tariku', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(181, NULL, 'Ahmmed Abitew', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(182, NULL, 'Teferi Teyaro', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(183, NULL, 'Alebel Dese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(184, NULL, 'Aminew Mekonin', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(185, NULL, 'Yohanis Ayalew(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(186, 'Ministry of Health and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(187, NULL, 'Hamir Aman(DR.)', 'M', 'H.E', 'Minister ofMinistry of Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(188, NULL, 'Sarsa Abdulahi', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(189, NULL, 'Leya Tadese(DR.)', NULL, 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(190, NULL, 'Yaqob Seman', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Peter\'s TB Specialized Hospital', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(191, NULL, 'Wondimagegn  Gezagn(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Paul\'s Hospital and Millennium Medical College', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(192, NULL, 'Birhane Redhi(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Paul\'s Hospital and Millennium Medical College', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(193, NULL, 'Hedho Fajo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Emmanuel Mind Specialized Hospital', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(194, NULL, 'Dagnaw Agezo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'All Africa leprosy prevention and education center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(195, NULL, 'Heran Gerba', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(196, NULL, 'Hiredin Redi Aman(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(197, NULL, 'Heba Abate(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(198, NULL, 'Getachew Tolera(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(199, NULL, 'Beyene Moges(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(200, NULL, 'Mehari Tekeste', 'M', 'H.E', 'Deputy CEO of Finance Administration Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(201, NULL, 'Loko Abreham(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(202, NULL, 'Tesfalem Adiraro', 'M', 'H.E', 'Deputy CEO of Finance Administration Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(203, NULL, 'Goyitom Gegar', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(204, NULL, 'Kalkidan Lakew(DR.)', NULL, 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(205, NULL, 'Mezan Kiros(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(206, NULL, 'Alemu Ano', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Health Insurance Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(207, NULL, 'Hilina Hailu(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Blood Bank Service', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(208, NULL, 'Yamrot Andualem', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(209, NULL, 'Abebe Genetu(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(210, NULL, 'Alemseged Admasu(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(211, NULL, 'Tsigereda Kifile(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of HIV / AIDS Control and Prevention', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(212, NULL, 'Abreham Geberemedin ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(213, 'Public Enterprice and Responsible Institutions ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(214, NULL, 'Twelede Gebere Mariyam', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Airlines', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(215, NULL, 'Firehiwot Tamiru', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethio Telecom', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(216, NULL, 'Bache Gena', 'M', 'H.E', 'In charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Commercial Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(217, NULL, 'Ayileyesus Bekele', 'M', 'H.E', 'In charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(218, NULL, 'Teshome Alemayew', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(219, NULL, 'Ahadu Gebregizaber', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(220, NULL, 'Getachew Wake', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(221, NULL, 'Tsige Genet', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(222, NULL, 'Haimmed Amza(B/General)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(223, NULL, 'Awel Abdi', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(224, NULL, 'Alemu Sime(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(225, NULL, 'Beyene Gebremeskel', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Public Enterprises Ownership and Management Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(226, NULL, 'Habtamu Haile Mikael', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Public Enterprises Ownership and Management Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(227, NULL, 'Kefyalew Birhanu', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(228, NULL, 'Mulugeta Seid', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Minerals and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(229, NULL, 'Weyu Roba', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(230, NULL, 'Roba Megersa', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maritime Transport and Logistics Service', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(231, NULL, 'Tebabal Wudine Gelaye', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(232, NULL, 'Hailemeskel Tefera', 'M', 'H.E', 'As a result of the appointment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(233, NULL, 'Negede Abate(Dr./Engineer)', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(234, NULL, 'Tariku Berasu', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Business Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(235, NULL, 'Gidey Gebreyohanis', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Postal Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(236, NULL, 'Hailemariyam Gidey', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(237, NULL, 'Shitawun Wale(Representative)', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brihan and Selam Printing Enterprise ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(238, NULL, 'Geberetsadikan Abay', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gion Hotels Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(239, NULL, 'Abriham Teshome', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Pulp and Paper Stock Association', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(240, NULL, 'Asefa Guya', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Tourist Business Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(241, NULL, 'Mulugeta Mengiste', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shebele Transport S.c', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:17', '2021-07-26 09:46:17'),
(242, NULL, 'Mulugeta Eshetu', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hotel Development Stock Company (Addis Ababa Hilton', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(243, NULL, 'Netsanet Lemesa', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Insurance Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(244, 'Public Enterprise and Responsible Institutions 2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(245, NULL, 'Hailemeskel Tefera', 'M', 'H.E', 'Chief  Excutive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(246, NULL, 'Wondimu Seta', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(247, NULL, 'Yesera Beshaw', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(248, NULL, 'Muluken Lakachew', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(249, NULL, 'Kasahun Lewulseged', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(250, NULL, 'Alemayew Asfaw', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(251, NULL, 'Tariku Berasu Deyaso', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(252, NULL, 'Negede Abate(Dr.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(253, NULL, 'Tesfaye Kidane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(254, NULL, 'Kasa Tadese(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(255, NULL, 'Tesfaye Kebede', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(256, NULL, 'Elena Belachew', 'F', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(257, NULL, 'Dawit Nuriye', 'M', 'H.E', 'Public Sector  Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(258, NULL, 'Mulugeta Seid', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Mining: Petroleum and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(259, NULL, 'Nadew Tadese', 'M', 'H.E', 'Deputy Chief Executive', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Mining: Petroleum and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(260, NULL, 'Fantahun Hagos', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Building Materials Supply Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(261, NULL, 'Gebretsadikan Abay', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hot Water Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(262, NULL, 'Genet Imiru', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hot Water Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(263, NULL, 'Mulugeta Wesene', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gion Hotels Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(264, NULL, 'Roba Megersa ', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(265, NULL, 'Emebet Mekasha', 'F', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(266, NULL, 'Tefera Bedaso(Capitain)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(267, NULL, 'Desalegn Gutu', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(268, NULL, 'Wondimu Denbo', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(269, NULL, 'Birhanu Besha(DR.)', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(270, NULL, 'Mulualem  Getane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(271, NULL, 'Yewalashet  Gemere', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(272, NULL, 'Belete Kebede(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(273, NULL, 'Teka Abadi', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(274, NULL, 'Shitawun Wale', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(275, NULL, 'Gethaun  Negash', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(276, NULL, 'Belay Kidane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(277, NULL, 'Asefa Guya', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(278, NULL, 'Daniel Melese', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shebele Tranasport Share Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(279, NULL, 'Kefiyalew Birhanu', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(280, NULL, 'Tafese Gebru(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(281, NULL, 'Tefere Belay(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(282, NULL, 'Kifile Woldemariyam(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(283, NULL, 'Hailemariam Gidey', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(284, NULL, 'Mesfin Abate', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(285, NULL, 'Fikadu Deme Minda', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(286, NULL, 'Sinishaw Alamirew Tirife', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(287, NULL, 'Tebabal Wudine Gelaye', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(288, NULL, 'Ebrahim Teshome', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Pulp and Paper Stock Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(289, NULL, 'Endaweq  Abte', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(290, NULL, 'Abreham Demise Chare', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(291, NULL, 'Rameto Aneto', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(292, NULL, 'Abera Mamo', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(293, NULL, 'Endalkachew Damte ', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(294, NULL, 'Abayine Bazezew Chekol', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(295, NULL, 'Bezabi Gebereyes', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18'),
(296, NULL, 'Weyo Roba', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 09:46:18', '2021-07-26 09:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `unsanctions`
--

CREATE TABLE `unsanctions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Full_Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Relationship` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Date_of_Birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Place_of_Birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Passport_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `National_ID_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Driving_License` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Account_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `TN_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `City` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Sub_City` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Wereda` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `House_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_P_O_Box` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_Phone_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `RA_Email_Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_Phone_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_P_O_Box` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `A_Email_Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Year_of_Appointee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `Other_Infn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mazengiya', 'mz.tesfa@gmail.com', NULL, '$2y$10$J26g86JPklF9xG1.76QdgeiuSg.9kDev1xVYZlYn9o6bPrW0o0I8u', NULL, '2021-07-26 09:46:00', '2021-07-26 09:46:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_customer_passport_no_unique` (`Passport_No`),
  ADD UNIQUE KEY `tbl_customer_national_id_no_unique` (`National_ID_No`),
  ADD UNIQUE KEY `tbl_customer_driving_license_unique` (`Driving_License`),
  ADD UNIQUE KEY `tbl_customer_account_no_unique` (`Account_No`),
  ADD UNIQUE KEY `tbl_customer_tn_no_unique` (`TN_No`),
  ADD UNIQUE KEY `tbl_customer_house_no_unique` (`House_No`),
  ADD UNIQUE KEY `tbl_customer_ra_p_o_box_unique` (`RA_P_O_Box`),
  ADD UNIQUE KEY `tbl_customer_ra_phone_no_unique` (`RA_Phone_No`),
  ADD UNIQUE KEY `tbl_customer_ra_email_address_unique` (`RA_Email_Address`),
  ADD UNIQUE KEY `tbl_customer_a_p_o_box_unique` (`A_P_O_Box`),
  ADD UNIQUE KEY `tbl_customer_a_email_address_unique` (`A_Email_Address`);

--
-- Indexes for table `unsanctions`
--
ALTER TABLE `unsanctions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unsanctions_passport_no_unique` (`Passport_No`),
  ADD UNIQUE KEY `unsanctions_national_id_no_unique` (`National_ID_No`),
  ADD UNIQUE KEY `unsanctions_driving_license_unique` (`Driving_License`),
  ADD UNIQUE KEY `unsanctions_account_no_unique` (`Account_No`),
  ADD UNIQUE KEY `unsanctions_tn_no_unique` (`TN_No`),
  ADD UNIQUE KEY `unsanctions_house_no_unique` (`House_No`),
  ADD UNIQUE KEY `unsanctions_ra_p_o_box_unique` (`RA_P_O_Box`),
  ADD UNIQUE KEY `unsanctions_ra_phone_no_unique` (`RA_Phone_No`),
  ADD UNIQUE KEY `unsanctions_ra_email_address_unique` (`RA_Email_Address`),
  ADD UNIQUE KEY `unsanctions_a_p_o_box_unique` (`A_P_O_Box`),
  ADD UNIQUE KEY `unsanctions_a_email_address_unique` (`A_Email_Address`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `unsanctions`
--
ALTER TABLE `unsanctions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
