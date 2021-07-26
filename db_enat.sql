-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 08:15 AM
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
(79, '2014_10_12_000000_create_users_table', 1),
(80, '2014_10_12_100000_create_password_resets_table', 1),
(81, '2019_08_19_000000_create_failed_jobs_table', 1),
(82, '2021_07_12_205034_tbl_customer', 1),
(83, '2021_07_16_111554_create_employees_table', 1),
(84, '2021_07_16_115739_create_unsanctions_table', 1);

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
(1, 'Institution', 'Full Name', 'Sex', 'Title', 'Positio', 'Occupation/ Source of Income', 'Relationship / Close Associates', 'Date of Birth', 'Place of Birth', 'Nationality', 'Passport No', 'National ID No', 'Driving License', 'Account No.', 'TN No.', 'City', 'Sub City', 'Wereda', 'House No. ', 'P.O.Box', 'Phone No. ', 'Email Address', 'Place', 'Phone No.', 'P.O.Box', 'Email Address', 'Year of Appointee', 'Other Infn. ', NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(2, ' Prime Minister Office and Responsible Institutions', 'Abiy Ahimed (DR.)', 'M', 'H.E', 'Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(3, ' Prime Minister Office and Responsible Institutions', 'Demeke Mekonin', 'M', 'H.E', 'Deputy Prime Minister ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(4, ' Prime Minister Office and Responsible Institutions', 'Demetu Hambisa', 'M', 'H.E', 'Head of the Prime Minister\'s Office and Minister of Cabinet Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(5, ' Prime Minister Office and Responsible Institutions', 'Esayas Kasa', NULL, 'H.E', 'State Minister for Cabinet Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(6, ' Prime Minister Office and Responsible Institutions', 'Worku Guwangul', 'M', 'H.E', 'State Minister for Office Services and Good Governance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(7, ' Prime Minister Office and Responsible Institutions', 'Bellene Seyoum', 'F', 'H.E', 'Head of the English Secretariat of the Prime Minister\'s Office Press Secretary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(8, ' Prime Minister Office and Responsible Institutions', 'Nigusu Tilahun', 'M', 'H.E', 'Press Secretary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(9, ' Prime Minister Office and Responsible Institutions', 'Mamo Asimelailem  Mihiretu', 'M', 'H.E', 'Senior Adviser to the Prime Minister on Policy Reform with the title of State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(10, ' Prime Minister Office and Responsible Institutions', 'Arkebe Ikubay (Dr.)', 'M', 'H.E', 'Head of Economic Planning Effectiveness Monitoring and Support Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(11, ' Prime Minister Office and Responsible Institutions', 'Hailay Birhane Tesema', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(12, ' Prime Minister Office and Responsible Institutions', 'Feseha Yitagesu', 'M', 'H.E', 'Coordinator of Current Affairs Research and Analysis with State Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(13, ' Prime Minister Office and Responsible Institutions', 'Getachew Ambaye', 'M', 'H.E', 'Coordinator of Current Affairs Research and Analysis with State Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(14, ' Prime Minister Office and Responsible Institutions', 'Tekeleweld Atinafu', 'M', 'H.E', 'The Prime Minister\'s Finance Adviser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(15, ' Prime Minister Office and Responsible Institutions', 'Teyiba Hasen', 'F', 'H.E', 'Adviser to the Prime Minister on Social Affairs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(16, ' Prime Minister Office and Responsible Institutions', 'Dese Dalge', 'M', 'H.E', 'Adviser to the Prime Minister on Agriculture and Irrigation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(17, ' Prime Minister Office and Responsible Institutions', 'Shumete Gizaw(DR.)', 'M', 'H.E', 'Head of the Prime Minister\'s Special Office with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(18, ' Prime Minister Office and Responsible Institutions', 'Motuma Mekasa', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(19, ' Prime Minister Office and Responsible Institutions', 'Gantirar  Abay Yigzaw', 'M', 'H.E', 'The Prime Minister\'s Adviser on Infrastructure and Urban Development', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(20, ' Prime Minister Office and Responsible Institutions', 'Tesfahun Gobezay', 'M', 'H.E', 'State Minister for National Security Affairs of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(21, ' Prime Minister Office and Responsible Institutions', 'Binalf Andualem', 'M', 'H.E', 'Chief Coordinator of the Center for Coordination of Democracy Building with Ministerial Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(22, ' Prime Minister Office and Responsible Institutions', 'Meles Alemu', 'M', 'H.E', 'Deputy Coordinator of the Center for Democracy Building Coordination Center with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(23, ' Prime Minister Office and Responsible Institutions', 'Asmelash Weldesilasie', 'M', 'H.E', 'Sector Coordinator of the Center for Coordination of Democracy Building with Ministerial Title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(24, ' Prime Minister Office and Responsible Institutions', 'Fekadu Tesema', 'M', 'H.E', 'Coordinator of the Center for Coordination of Democracy Building with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(25, ' Prime Minister Office and Responsible Institutions', 'Tefera Deribew', 'M', 'H.E', 'Rural Sector Coordinator at the Center for Democracy Building Coordination Center with the title of Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of the Prime Minister (EPRDF Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(26, ' Prime Minister Office and Responsible Institutions', 'Abebe Abebayew', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(27, ' Prime Minister Office and Responsible Institutions', 'Hana  Ariya Silassies ', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(28, ' Prime Minister Office and Responsible Institutions', 'Temesgen Tilahun', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(29, ' Prime Minister Office and Responsible Institutions', 'Antene Alemu', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investment Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(30, ' Prime Minister Office and Responsible Institutions', 'Lelise Neme', 'F', 'H.E', 'Chief  Excutive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(31, ' Prime Minister Office and Responsible Institutions', 'Shiferaw Solomon', 'M', 'H.E', 'Deputy Executive of Operations and Industry Parks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(32, ' Prime Minister Office and Responsible Institutions', 'Amare Asgedom', 'M', 'H.E', 'Deputy Chief Executive of the Development Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Parks Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(33, ' Prime Minister Office and Responsible Institutions', 'Birhanu Feyisa', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Civil Service Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(34, ' Prime Minister Office and Responsible Institutions', 'Bezabi Gebreyes', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Civil Service Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(35, ' Prime Minister Office and Responsible Institutions', 'Adisalem Balema (DR./AMB.)', 'M', 'H.E', 'President', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(36, ' Prime Minister Office and Responsible Institutions', 'Tsegaye Mamo', 'M', 'H.E', 'Vice President of the Academic Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(37, ' Prime Minister Office and Responsible Institutions', 'Demis Shito', 'M', 'H.E', 'Vice President of Research Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(38, ' Prime Minister Office and Responsible Institutions', 'Atsbeha Aregawi', 'M', 'H.E', 'Vice President of Planning and Administrative Development Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(39, ' Prime Minister Office and Responsible Institutions', 'Seyoum Mekonin', 'M', 'H.E', 'Meles\' Academy of Modern Leadership Training Sector / President', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meles Zenawi Leadership Academy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(40, ' Prime Minister Office and Responsible Institutions', 'Mekonin Yahe', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kaizen Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(41, ' Prime Minister Office and Responsible Institutions', 'Gebremeskel Chela', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kaizen Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(42, ' Prime Minister Office and Responsible Institutions', 'Daba Ariya', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Employees Social Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(43, ' Prime Minister Office and Responsible Institutions', 'Tilahun Bekele', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Employees Social Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(44, ' Prime Minister Office and Responsible Institutions', 'Fikadu Beyene(Proffesor)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(45, ' Prime Minister Office and Responsible Institutions', 'Firenesh Mekuriya', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(46, ' Prime Minister Office and Responsible Institutions', 'Kebede Yimam', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(47, ' Prime Minister Office and Responsible Institutions', 'Werdi Ashim', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(48, ' Prime Minister Office and Responsible Institutions', 'Nigusu Lema', 'M', 'H.E', 'Director General of Climate Change', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment, Forest and Climate Change Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(49, ' Prime Minister Office and Responsible Institutions', 'Melese Mariyo(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Biodiversity', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(50, ' Prime Minister Office and Responsible Institutions', 'Feleke Weldeyes (DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Biodiversity', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(51, ' Prime Minister Office and Responsible Institutions', 'Abiyot Birhanu(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment and Forest Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(52, ' Prime Minister Office and Responsible Institutions', 'Agena Angelo(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Environment and Forest Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(53, ' Prime Minister Office and Responsible Institutions', 'Kumera Wakgira', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wildlife Development Conservation Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(54, ' Prime Minister Office and Responsible Institutions', 'Solomon Mekonin', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wildlife Development Conservation Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(55, ' Prime Minister Office and Responsible Institutions', 'Efrem Tekle(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Job Creation Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(56, ' Prime Minister Office and Responsible Institutions', 'Yinager Dese(DR.)', 'M', 'H.E', 'Ruler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(57, ' Prime Minister Office and Responsible Institutions', 'Yemane Yesuf Tesfaye', 'M', 'H.E', 'Deputy Governor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(58, ' Prime Minister Office and Responsible Institutions', 'Tirune Mintaf', 'M', 'H.E', 'Deputy Governor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(59, ' Prime Minister Office and Responsible Institutions', 'Sileshi Girma', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(60, ' Prime Minister Office and Responsible Institutions', 'Sertse Firesibihat', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(61, ' Prime Minister Office and Responsible Institutions', 'Hagos Abreha(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tourism Ethiopia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(62, ' Prime Minister Office and Responsible Institutions', 'Tefera Fikire', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Palace Administration', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(63, ' Prime Minister Office and Responsible Institutions', 'Lensa Mekonin', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Land Bank and Development Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(64, ' Prime Minister Office and Responsible Institutions', 'Tesfaye Werede', 'M', 'H.E', 'Office Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reconciliation Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(65, 'House of People Representative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(66, 'House of People Representative', 'Gebere Egizaber Ariya', 'M', 'Honorable', 'Deputy Assistant to the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(67, 'House of People Representative', 'Chela Lemi', 'M', 'Honorable', 'Deputy Assistant to the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(68, 'House of People Representative', 'Chene Shimeka', 'M', 'Honorable', 'Assistant Representative of the Government in the House of Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of People\'s Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(69, 'House of People Representative', 'Mesfin Cherinet(AMB.)', 'M', 'Honorable', 'Deputy Assistant to the House of Peoples\' Representatives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House of People\'s Representatives', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(70, 'House of People Representative', 'Getachew Dinku', 'M', 'Honorable', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Broadcasting Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(71, 'House of People Representative', 'Ayelign Mulualem', 'M', 'Honorable', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(72, 'House of People Representative', 'Wedo Atewo', 'M', 'Honorable', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(73, 'House of People Representative', 'Atikiliti Gidey', NULL, 'Honorable', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Ethics and Anti-Corruption Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(74, 'House of People Representative', 'Getinet Tadese', 'M', 'Honorable', 'General Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Press Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(75, 'House of People Representative', 'Niguse Mitiku', 'M', 'Dr.', 'CEO of the corporation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Broadcasting Corporation ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(76, 'House of People Representative', 'Eliyas Awato', 'M', 'Honorable', 'Deputy Chief Executive Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Broadcasting Corporation ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(77, 'House of People Representative', 'Ministry of Urban Development and Construction and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(78, 'House of People Representative', 'Ayisha Mohammed Musa(Engineer)', 'F', 'H.E', 'Minister of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(79, 'House of People Representative', 'Tazer Gebre Egizaber', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(80, 'House of People Representative', 'Kalid Abdurahiman', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(81, 'House of People Representative', 'Mesfin Asefa Kasaye', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Urban Development and Construction', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(82, 'House of People Representative', 'Wondimu Seta', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(83, 'House of People Representative', 'Dawit Haile Abriha', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(84, 'House of People Representative', 'Rahel Hailu', 'F', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Real Estate Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(85, 'House of People Representative', 'Asmelash Bezabi', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(86, 'House of People Representative', 'Solomon Asefa', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(87, 'House of People Representative', 'Zenebe Kuma', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Urban Job Creation and Food Security Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(88, 'House of People Representative', 'Almaw Mengiste', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Integrated Infrastructure Coordination Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(89, 'House of People Representative', 'Sehada Kedir', 'F', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Integrated Infrastructure Coordination Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(90, 'House of People Representative', 'Asmirom Tadese', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Project Management Institute ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(91, 'House of People Representative', 'Argaw Asha(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Project Management Institute ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(92, 'House of People Representative', 'Mesfin Negewo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Works Supervisory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(93, 'House of People Representative', 'Bahiru Ashine', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal City Land and Related Property Registration and Information Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(94, 'House of People Representative', 'Matebe Adis', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Construction Works Supervisory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(95, 'House of People Representative', 'Reshad Kemal', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(96, 'House of People Representative', 'Yirgalem Kumelt', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(97, 'House of People Representative', 'Hayilebrhian Zena', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(98, 'House of People Representative', 'Fantahun hagos', 'M', 'H.E', 'Deputy Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Housing Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(99, 'Ministry of water Irrigation & Energy &Responsible Institution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(100, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Sileshi Bekele(DR./Engineer)', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(101, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Negash Wagesho(DR.)', 'M', 'H.E', 'State Minister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(102, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Abreha  Adugna(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(103, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Firehiwot Welde Hana(DR.)', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Water, Irrigation and Energy', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(104, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Mekahael Mehari(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irrigation Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(105, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Samuhel Usen', 'M', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irrigation Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(106, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Besha Mogese(DR.)', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(107, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Shewanesh Demeke', 'F', 'H.E', 'Deputy Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(108, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Wana wake', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Water Development Fund', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(109, 'Ministry of water Irrigation & Energy &Responsible Institution', 'Adanech Yared(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(110, NULL, 'Getachew Gizaw', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(111, NULL, 'Hirut Beresa', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Basin Development Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(112, NULL, 'Roman Gebressilasie', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(113, NULL, 'Tagel Kenubi', 'M', 'H.E', 'Deputy Director of Resource and Project Management Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(114, NULL, 'Fikirte Tamir', 'F', 'H.E', 'Deputy General of Public Diplomacy Communication and Director of the Civil Society Participation and Event Inovation Dirotorate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grand Renaissance Dam Coordination Project Office', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(115, NULL, 'Tamene Hailu', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(116, NULL, 'Tamiru Fikadu', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(117, NULL, 'Ajanaw Fentaw', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Water Technology', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(118, NULL, 'Fetene Teshome', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Meteorological Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(119, NULL, 'Kinfe Hailemariam', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Meteorological Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(120, NULL, 'Abreham Belay', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Electric Power', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(121, NULL, 'Shiferaw Telila', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Electric Power', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(122, 'Ministry of Mines and Petroleum and Refineries and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(123, NULL, 'Samuel urkato(DR.)', 'M', 'H.E', 'Ministry of Minister of Mines and Petroleum and Refineries ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(124, NULL, 'Asefa Kumsa', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(125, NULL, 'Kongitut Sam(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Mines and Petroleum', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(126, NULL, 'Gethaun Moges', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Energy Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(127, NULL, 'Enatfanta Melaku Gebre', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Geological Survey', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(128, NULL, 'Tadese Hailemariam', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Oil and Gas Production and Supply Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(129, 'Ministry Of Education and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(130, NULL, 'Tilaye Gete Ambaye(DR.)', 'M', 'H.E', 'Minister of Ministry of Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(131, NULL, 'Geremew Huleqa Amenu(DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(132, NULL, 'Ussen Yusuf', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(133, NULL, 'Mohammed Ahimedin', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(134, NULL, 'Tsion Teklu', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Educcation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(135, NULL, 'Ariya Gebre Egizaber', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(136, NULL, 'Zerihun Duresa(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(137, NULL, 'Mesay Demise', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Education Assessment and Examinations Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(138, NULL, 'Worku Gethaun', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Educational Equipment Manufacturing and Distribution Organization', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(139, NULL, 'Temesgen Tilahun ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Educational Equipment Manufacturing and Distribution Organization', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(140, 'Ministry of Science and Higher Education and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(141, NULL, 'Hirut Wolde Mariham (DR.)', 'F', 'H.E', 'Minister of Ministry of Sceince and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(142, NULL, 'Abdiwas Abdulahi (DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(143, NULL, 'Samuel Kifile (DR.)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(144, NULL, 'Afwork Kasu(Professor)', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Science and Higher Education', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(145, NULL, 'Teshome Lema', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(146, NULL, 'Sileshi Gethaun', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(147, NULL, 'Kefelech Denboba', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(148, NULL, 'Tesfaye Muhiye(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Strategic Center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(149, NULL, 'Anduhalem Admase(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Relevance and Quality Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(150, NULL, 'Tamirat Mota ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Education Relevance and Quality Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(151, NULL, 'Habtamu Kibret', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10');
INSERT INTO `tbl_customer` (`id`, `Institution`, `Full_Name`, `Sex`, `Title`, `Position`, `Occupation`, `Relationship`, `Date_of_Birth`, `Place_of_Birth`, `Nationality`, `Passport_No`, `National_ID_No`, `Driving_License`, `Account_No`, `TN_No`, `City`, `Sub_City`, `Wereda`, `House_No`, `RA_P_O_Box`, `RA_Phone_No`, `RA_Email_Address`, `Place`, `A_Phone_No`, `A_P_O_Box`, `A_Email_Address`, `Year_of_Appointee`, `Other_Infn`, `remember_token`, `created_at`, `updated_at`) VALUES
(152, NULL, 'Alemshet Birihane meskel', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(153, NULL, 'Getachew Negash', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(154, NULL, 'Eliyas Awato', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Vocational Education and Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(155, NULL, 'Teshale Berecha', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(156, NULL, 'Habtom Gebere Egizaber', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(157, NULL, 'Seifu Tadese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(158, NULL, 'Eniyew Getnet', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Federal Technical and Educational and Vocational Training Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(159, 'Ministery of Revenue and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(160, NULL, 'Adanech Abebe Desa', 'F', 'H.E', 'Minister of Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(161, NULL, 'Zemede Tefera', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(162, NULL, 'Mohammed Abdu Hahimed', 'M', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(163, NULL, 'Mirhet Minasib', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Revenue', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(164, NULL, 'Debele Kabeta ', 'M', 'H.E', 'Commissioner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(165, NULL, 'Azezew Chane', 'M', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(166, NULL, 'Mulgeta Beyene', 'M', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(167, NULL, 'Misiraq  Mamo', 'F', 'H.E', 'Deputy Commissioner of Revenue Commission', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customs Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(168, NULL, 'Geremew Garge Gedeba', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Lottery Administration', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(169, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(170, NULL, 'Yalemtsegaye Asfaw', 'F', 'H.E', 'Minister of Ministry of Women,Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(171, NULL, 'Hiwot Hailu', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(172, NULL, 'Alemitu umed', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(173, NULL, 'Simegn Wube', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Women, Children and Youth', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(174, 'Planning Development Commission and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(175, NULL, 'Fitsum Asefa Adesa', 'M', 'H.E', 'Planning and Development Commission Commissioner ( Under the title of Minister)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(176, NULL, 'Meseret Meskele', 'F', 'H.E', 'Deputy Commissioner(Under State Minister)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(177, NULL, 'Getachew Adem', 'M', 'H.E', 'Deputy Commissioner of Planning and Development Commission ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Planning and Development Commission', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(178, NULL, 'Beratu Yigezu', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(179, NULL, 'Amare legese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(180, NULL, 'Asalifew Abera ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(181, NULL, 'Aberash Tariku', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Central Statistics Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(182, NULL, 'Ahmmed Abitew', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(183, NULL, 'Teferi Teyaro', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(184, NULL, 'Alebel Dese', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(185, NULL, 'Aminew Mekonin', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(186, NULL, 'Yohanis Ayalew(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute for Policy Studies', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(187, 'Ministry of Health and Responsible Institutions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(188, NULL, 'Hamir Aman(DR.)', 'M', 'H.E', 'Minister ofMinistry of Health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(189, NULL, 'Sarsa Abdulahi', 'F', 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(190, NULL, 'Leya Tadese(DR.)', NULL, 'H.E', 'State Miinister', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ministry of Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(191, NULL, 'Yaqob Seman', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Peter\'s TB Specialized Hospital', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(192, NULL, 'Wondimagegn  Gezagn(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Paul\'s Hospital and Millennium Medical College', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(193, NULL, 'Birhane Redhi(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Paul\'s Hospital and Millennium Medical College', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(194, NULL, 'Hedho Fajo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'St. Emmanuel Mind Specialized Hospital', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(195, NULL, 'Dagnaw Agezo', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'All Africa leprosy prevention and education center', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(196, NULL, 'Heran Gerba', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(197, NULL, 'Hiredin Redi Aman(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(198, NULL, 'Heba Abate(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(199, NULL, 'Getachew Tolera(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(200, NULL, 'Beyene Moges(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Public Health', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(201, NULL, 'Mehari Tekeste', 'M', 'H.E', 'Deputy CEO of Finance Administration Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(202, NULL, 'Loko Abreham(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(203, NULL, 'Tesfalem Adiraro', 'M', 'H.E', 'Deputy CEO of Finance Administration Sector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(204, NULL, 'Goyitom Gegar', 'M', 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(205, NULL, 'Kalkidan Lakew(DR.)', NULL, 'H.E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(206, NULL, 'Mezan Kiros(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pharmaceutical Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(207, NULL, 'Alemu Ano', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Health Insurance Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(208, NULL, 'Hilina Hailu(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Blood Bank Service', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(209, NULL, 'Yamrot Andualem', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(210, NULL, 'Abebe Genetu(DR.)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(211, NULL, 'Alemseged Admasu(DR.)', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmawer Hasen Research Institute', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(212, NULL, 'Tsigereda Kifile(DR.)', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Office of HIV / AIDS Control and Prevention', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(213, NULL, 'Abreham Geberemedin ', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Food and Drug Regulatory Authority', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(214, 'Public Enterprice and Responsible Institutions ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(215, NULL, 'Twelede Gebere Mariyam', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Airlines', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(216, NULL, 'Firehiwot Tamiru', 'F', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethio Telecom', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(217, NULL, 'Bache Gena', 'M', 'H.E', 'In charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Commercial Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(218, NULL, 'Ayileyesus Bekele', 'M', 'H.E', 'In charge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(219, NULL, 'Teshome Alemayew', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(220, NULL, 'Ahadu Gebregizaber', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(221, NULL, 'Getachew Wake', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(222, NULL, 'Tsige Genet', 'M', 'H.E', 'Deputy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Development Bank', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(223, NULL, 'Haimmed Amza(B/General)', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(224, NULL, 'Awel Abdi', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(225, NULL, 'Alemu Sime(DR.)', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metal Engineering Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(226, NULL, 'Beyene Gebremeskel', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Public Enterprises Ownership and Management Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(227, NULL, 'Habtamu Haile Mikael', 'M', 'H.E', 'Deputy Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Public Enterprises Ownership and Management Agency', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(228, NULL, 'Kefyalew Birhanu', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(229, NULL, 'Mulugeta Seid', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Minerals and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(230, NULL, 'Weyu Roba', 'M', 'H.E', 'Director General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(231, NULL, 'Roba Megersa', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maritime Transport and Logistics Service', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(232, NULL, 'Tebabal Wudine Gelaye', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(233, NULL, 'Hailemeskel Tefera', 'M', 'H.E', 'As a result of the appointment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(234, NULL, 'Negede Abate(Dr./Engineer)', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(235, NULL, 'Tariku Berasu', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Business Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(236, NULL, 'Gidey Gebreyohanis', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Postal Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(237, NULL, 'Hailemariyam Gidey', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(238, NULL, 'Shitawun Wale(Representative)', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brihan and Selam Printing Enterprise ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(239, NULL, 'Geberetsadikan Abay', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gion Hotels Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(240, NULL, 'Abriham Teshome', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Pulp and Paper Stock Association', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(241, NULL, 'Asefa Guya', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Tourist Business Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(242, NULL, 'Mulugeta Mengiste', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shebele Transport S.c', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(243, NULL, 'Mulugeta Eshetu', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hotel Development Stock Company (Addis Ababa Hilton', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(244, NULL, 'Netsanet Lemesa', 'M', 'H.E', 'Manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Insurance Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(245, 'Public Enterprise and Responsible Institutions 2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(246, NULL, 'Hailemeskel Tefera', 'M', 'H.E', 'Chief  Excutive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(247, NULL, 'Wondimu Seta', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(248, NULL, 'Yesera Beshaw', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(249, NULL, 'Muluken Lakachew', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(250, NULL, 'Kasahun Lewulseged', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(251, NULL, 'Alemayew Asfaw', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(252, NULL, 'Tariku Berasu Deyaso', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(253, NULL, 'Negede Abate(Dr.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(254, NULL, 'Tesfaye Kidane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(255, NULL, 'Kasa Tadese(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(256, NULL, 'Tesfaye Kebede', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(257, NULL, 'Elena Belachew', 'F', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(258, NULL, 'Dawit Nuriye', 'M', 'H.E', 'Public Sector  Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Construction Design and Supervision Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(259, NULL, 'Mulugeta Seid', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Mining: Petroleum and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(260, NULL, 'Nadew Tadese', 'M', 'H.E', 'Deputy Chief Executive', NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Mining: Petroleum and Biofuel Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(261, NULL, 'Fantahun Hagos', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Building Materials Supply Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:10', '2021-07-24 03:42:10'),
(262, NULL, 'Gebretsadikan Abay', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hot Water Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(263, NULL, 'Genet Imiru', 'F', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hot Water Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(264, NULL, 'Mulugeta Wesene', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gion Hotels Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(265, NULL, 'Roba Megersa ', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(266, NULL, 'Emebet Mekasha', 'F', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(267, NULL, 'Tefera Bedaso(Capitain)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(268, NULL, 'Desalegn Gutu', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(269, NULL, 'Wondimu Denbo', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Shipping and Logistics Service Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(270, NULL, 'Birhanu Besha(DR.)', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(271, NULL, 'Mulualem  Getane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(272, NULL, 'Yewalashet  Gemere', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(273, NULL, 'Belete Kebede(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Railways Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(274, NULL, 'Teka Abadi', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(275, NULL, 'Shitawun Wale', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(276, NULL, 'Gethaun  Negash', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(277, NULL, 'Belay Kidane', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Birihan and Selam Printing Enterprise', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(278, NULL, 'Asefa Guya', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(279, NULL, 'Daniel Melese', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shebele Tranasport Share Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(280, NULL, 'Kefiyalew Birhanu', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(281, NULL, 'Tafese Gebru(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(282, NULL, 'Tefere Belay(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(283, NULL, 'Kifile Woldemariyam(DR.)', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Agricultural Works Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(284, NULL, 'Hailemariam Gidey', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(285, NULL, 'Mesfin Abate', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Alcohol and Liquor Factory', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(286, NULL, 'Fikadu Deme Minda', 'M', 'H.E', 'CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(287, NULL, 'Sinishaw Alamirew Tirife', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(288, NULL, 'Tebabal Wudine Gelaye', 'M', 'H.E', 'Deputy CEO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chemical Industry Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(289, NULL, 'Ebrahim Teshome', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ethiopian Pulp and Paper Stock Company', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(290, NULL, 'Endaweq  Abte', 'M', 'H.E', 'Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(291, NULL, 'Abreham Demise Chare', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(292, NULL, 'Rameto Aneto', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(293, NULL, 'Abera Mamo', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(294, NULL, 'Endalkachew Damte ', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(295, NULL, 'Abayine Bazezew Chekol', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(296, NULL, 'Bezabi Gebereyes', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11'),
(297, NULL, 'Weyo Roba', 'M', 'H.E', 'Deputy Chief Executive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sugar Corporation', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24 03:42:11', '2021-07-24 03:42:11');

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
(1, 'mazengiya', 'mz.tesfa@gmail.com', NULL, '$2y$10$y/1dYxZnT.z/e2lXaZX2kOIy6rRVLjEeSpbjEi4yfplXxF8vxAR0W', NULL, '2021-07-24 03:41:51', '2021-07-24 03:41:51');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

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
