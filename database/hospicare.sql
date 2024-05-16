-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 06:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospicare`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_number` int(11) NOT NULL,
  `daerah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital_name`, `reg_number`, `daerah`, `created_at`) VALUES
(1, 'RS MUHAMMADIYAH PALEMBANG', 123, 'Palembang', '2020-07-14'),
(2, 'RS CHARITAS', 124, 'Palembang', '2020-07-16'),
(3, 'RSU HERMINA', 125, 'Palembang', '2020-09-12'),
(4, 'RS BHAYANGKARA PALEMBANG', 126, 'Palembang', '2020-09-13'),
(5, 'RS BUNDA PALEMBANG', 127, 'Palembang', '2020-09-16'),
(6, 'RS DR. AK. GANI', 128, 'Palembang', '2020-09-11'),
(7, 'RS ERNALDI BAHAR', 129, 'Palembang', '2020-09-20'),
(8, 'RS GRAHA MANDIRI', 132, 'Palembang', '2024-05-15'),
(9, 'RS MUSI MEDIKA CENDIKIA', 133, 'Palembang', '2024-05-11'),
(10, 'RS MYRIA PALEMBANG', 135, 'Palembang', '2024-05-10'),
(11, 'RS PARU PALEMBANG', 145, 'Palembang', '2024-05-02'),
(12, 'RS PERTAMINA PALEMBANG', 165, 'Palembang', '2024-05-01'),
(13, 'RS PUSRI PALEMBANG', 144, 'Palembang', '2024-05-15'),
(14, 'RS SILOAM SRIWIJAYA', 111, 'Palembang', '2024'),
(15, 'RSIA KADER BANGSA', 543, 'Palembang', '2024-05-15'),
(16, 'RSIA RIKA AMELIA', 122, 'Palembang', '2024-05-04'),
(17, 'RS YK MADIRA', 172, 'Palembang', '2024-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` int(11) NOT NULL,
  `blood` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residence` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rhythms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `hospital_id` int(11) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_name`, `identification`, `blood`, `gender`, `phone`, `residence`, `Rhythms`, `status`, `hospital_id`, `age`) VALUES
(1, 'anita', 12345, 'A', 'FEMALE', '08999546', 'MELATI', 'Sinus bradycardia', 0, 5, 51),
(2, 'Malih', 35352352, 'AB', 'MALE', '121356878', 'MELATI', 'Sinus rhythm', 0, 5, 64),
(3, 'BOLANG', 4636346, 'O', 'MALE', '0899997', 'KAMBOJA', 'Sinus rhythm', 1, 1, 53),
(4, 'MALIKUS', 352353464, 'A', 'MALE', '0877765', 'KAMBOJA', 'Sinus rhythm', 1, 6, 56),
(5, 'EGRA', 1231244, 'AB', 'MALE', '0888992', 'MELATI', 'Sinus rhythm', 1, 8, 61),
(6, 'EJAK', 821265, 'O', 'MALE', '08999353', 'MAWAR', 'Sinus bradycardia', 0, 2, 76),
(7, 'ELDO', 87678, 'B', 'MALE', '088844', 'KAMBOJA', 'Sinus rhythm', 1, 9, 50),
(8, 'AFIFAH', 95698, 'A', 'FEMALE', '0554388', 'MATAHARI', 'Sinus rhythm', 0, 8, 57),
(9, 'ECHA', 42222, 'A', 'FEMALE', '0898765', 'KAMBOJA', 'Sinus rhythm', 1, 1, 57),
(10, 'SALIHA', 7584574, 'AB', 'FEMALE', '0897765', 'MAWAR', 'Sinus rhythm', 0, 7, 79),
(11, 'BENO', 8986986, 'O', 'MALE', '088875', 'TULIP', 'Sinus rhythm', 0, 6, 54),
(12, 'EDO', 78987, 'A', 'MALE', '088876', 'MAWAR', 'Sinus rhythm', 0, 8, 61),
(13, 'SANUSI', 1123, 'A', 'MALE', '08886', 'MAWAR', 'Sinus rhythm', 0, 9, 50),
(14, 'ELBRA', 6786786, 'O', 'MALE', '00885', 'MELATI', 'Sinus rhythm', 1, 3, 50),
(15, 'SUNARTO', 8886, 'AB', 'MALE', '0333', 'MELATI', 'Sinus rhythm', 1, 6, 71),
(16, 'SALI', 555, 'A', 'FEMALE', '05556', 'KAMBOJA', 'Sinus rhythm', 0, 5, 71),
(17, 'BENITA', 7745, 'AB', 'FEMALE', '0886', 'MAWAR', 'Sinus rhythm', 0, 5, 71),
(18, 'ANANG', 889896, 'AB', 'MALE', '07777', 'TULIP', 'Sinus rhythm', 0, 3, 48),
(19, 'HENDY', 768786, 'AB', 'A', '04443', 'MAWAR', 'Sinus rhythm', 0, 4, 66),
(20, 'EFRIYANTO', 9898989, 'AB', 'MALE', '08884', 'MATAHARI', 'Sinus rhythm', 1, 2, 53),
(21, 'DANANG', 38988296, 'AB', 'MALE', '44343', 'KAMBOJA', 'Sinus rhythm', 10, 1, 55),
(22, 'SEO', 31368767, 'AB', 'MALE', '121121', 'KAMBOJA', 'Sinus arrhythmia', 70, 1, 66),
(23, 'CONY', 34567898, 'O', 'MALE', '11111', 'KAMBOJA', 'Sinus rhythm', 60, 1, 64),
(24, 'MERO', 213456, 'AB', 'MALE', '66444', 'KAMBOJA', 'Sinus bradycardia', 1, 1, 64),
(25, 'LEO', 4545454, 'A', 'MALE', '678', 'KAMBOJA', 'Sinus rhythm', 0, 1, 51),
(26, 'TONI', 12122, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 54),
(27, 'TONO', 4200, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus bradycardia', 1, 2, 66),
(28, 'ADRIAN', 80009, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 77),
(29, 'SANES', 65579, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 41),
(30, 'FERO', 343, 'O', 'MALE', '254716748724', 'MAWAR', 'Sinus bradycardia', 1, 2, 30),
(31, 'JOHN', 5757, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 10, 1, 71),
(32, 'BENNERD', 4363, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 70, 1, 64),
(33, 'JIHAD', 8787887, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 64),
(34, 'AVO', 998, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 69),
(35, 'STRAY', 6006, 'A', 'FEMALE', '254716748724', 'MELATI', 'Atrial flutter, typical', 0, 1, 70),
(36, 'HANDI', 54454, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 49),
(37, 'SISKA', 4444, 'AB', 'Female', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 47),
(38, 'ANGELA', 2322, 'AB', 'Female', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 2, 59),
(39, 'FIONA', 333, 'AB', 'Female', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 2, 74),
(40, 'RANI', 333, 'O', 'Female', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 57),
(41, 'TONI', 763746, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus bradycardia', 1, 2, 34),
(42, 'TONO', 787, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 74),
(43, 'ADRIAN', 677364, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 8, 69),
(44, 'SANES', 343, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 3, 76),
(45, 'FERO', 3434, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 84),
(46, 'REXUS', 8787, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 63),
(47, 'ELBERT', 434333, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 66),
(48, 'DANES', 122222, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 68),
(49, 'EKO', 233243, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 68),
(50, 'SUTRIS', 45567, 'A', 'FEMALE', '254716748724', 'MELATI', 'Atrial flutter, typical', 0, 1, 66),
(51, 'SETO', 7877, 'AB', 'MALE', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 2, 49),
(52, 'HILDA', 66666, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 47),
(53, 'FATIHA', 3221, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 59),
(54, 'YANA', 9090, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus bradycardian', 1, 2, 74),
(55, 'AISA', 12129, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 57),
(56, 'AMRON', 3354, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus bradycardia', 1, 2, 45),
(57, 'SANIA', 35358, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 54),
(58, 'CACA', 8633, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 8, 55),
(59, 'FARA', 44445, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 3, 76),
(60, 'QUIN', 88685, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 23),
(61, 'RAMA', 253535, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 12),
(62, 'DANAR', 6866, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 4),
(63, 'MIO', 808086, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 23),
(64, 'ABU DAUD', 90223, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 23),
(65, 'MIA TANIA', 1213909, 'A', 'FEMALE', '254716748724', 'MELATI', 'Atrial flutter, typical', 0, 1, 67),
(66, 'JANAKA', 8667, 'AB', 'MALE', '254716748724', 'MAWAR', 'Atrial fibrillation', 1, 2, 65),
(67, 'HESTIANA', 32222, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 75),
(68, 'LANIA', 890008, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 59),
(69, 'KANIA', 23211, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus bradycardian', 1, 2, 74),
(70, 'VANIA', 876, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 57),
(71, 'AMRON', 434344, 'AB', 'MALE', '254716748724', 'MAWAR', 'Sinus bradycardia', 1, 2, 32),
(72, 'AMRINA', 556677, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 2, 75),
(73, 'SARAS', 42111, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 8, 57),
(74, 'SARAH', 1100, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 3, 69),
(75, 'SAKILA', 2311, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 68),
(76, 'BONNY', 1311, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 10, 1, 71),
(77, 'DARMAWAN', 132, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 71),
(78, 'MULAWARMAN', 1322, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 81),
(79, 'AKSAL', 12323, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 76),
(80, 'DINTA', 1219002, 'A', 'FEMALE', '254716748724', 'MELATI', 'Atrial flutter, typical', 0, 1, 60),
(81, 'RAMADAN', 80076, 'AB', 'MALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 2, 68),
(82, 'CACA AKILA', 459086, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 45),
(83, 'BINA', 32222, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 62),
(84, 'FANIA', 1100776, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus bradycardian', 1, 2, 79),
(85, 'ELMA', 6221, 'O', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 51),
(86, 'MELINO', 9885, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus bradycardia', 1, 2, 50),
(87, 'ADISKA', 5433, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 1, 2, 19),
(88, 'DIVA AMALIA', 2554, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 8, 59),
(89, 'HENDITA', 237668, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 3, 41),
(90, 'RANIAH', 89901, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 69),
(91, 'ALGONY', 12765, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 38),
(92, 'AKMAL', 9955, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 70),
(93, 'IQBAL', 9442, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 74),
(94, 'IKHSAN', 234509, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 41),
(95, 'FANDIRA', 1125, 'A', 'FEMALE', '254716748724', 'KAMBOJA', 'Atrial flutter, typical', 0, 1, 67),
(96, 'CANIA', 90075, 'AB', 'MALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 2, 60),
(97, 'KHOLISAH', 127890, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 58),
(98, 'ALIMAH', 24410, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 53),
(99, 'ARSANIA', 80043, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus bradycardian', 1, 2, 28),
(100, 'VIRGINIA', 90045456, 'O', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 76),
(101, 'FELIX', 45346, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus bradycardia', 1, 2, 55),
(102, 'AMINAH', 212166, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 1, 2, 19),
(103, 'DNIYAH', 2554, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 8, 59),
(104, 'RASIA', 237668, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 3, 41),
(105, 'AISANUR', 89901, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 69),
(106, 'KALINA', 12765, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 76),
(107, 'FAN', 9955, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 70),
(108, 'RUM', 9442, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 88),
(109, 'MELO', 234509, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 54),
(110, 'ALMIA', 1125, 'A', 'FEMALE', '254716748724', 'KAMBOJA', 'Atrial flutter, typical', 0, 1, 67),
(111, 'AKIL', 90075, 'AB', 'MALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 2, 65),
(112, 'KHALIFIAH', 127890, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 58),
(113, 'SUTRINA', 24410, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 78),
(114, 'SUTRISNA', 80043, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus bradycardian', 1, 2, 28),
(115, 'VIRGINIA', 90045456, 'O', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 76),
(116, 'FELIX', 45346, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus bradycardia', 1, 2, 55),
(117, 'AMINAH', 212166, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 1, 9, 19),
(118, 'DNIYAH', 2554, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 8, 59),
(119, 'RASIA', 237668, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 3, 41),
(120, 'AISANUR', 89901, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 70),
(121, 'KALINA', 12765, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 76),
(122, 'FAN', 9955, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 70),
(123, 'RUM', 9442, 'AB', 'MALE', '254741080067', 'MELATI', 'Sinus rhythm', 0, 2, 54),
(124, 'MELO', 234509, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 35),
(125, 'ALMIA', 1125, 'A', 'FEMALE', '254716748724', 'KAMBOJA', 'Atrial flutter, typical', 0, 8, 70),
(126, 'AKIL', 90075, 'AB', 'MALE', '254716748724', 'MELATI', 'Atrial fibrillation', 1, 2, 65),
(127, 'KHALIFIAH', 127890, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 58),
(128, 'SUTRINA', 24410, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 55),
(129, 'SUTRISNA', 80043, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus bradycardian', 1, 2, 57),
(130, 'VIRGINIA', 90045456, 'O', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 89),
(131, 'HERMAWAN', 1212667, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus bradycardia', 1, 2, 55),
(132, 'SATITI', 7777886, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 1, 9, 45),
(133, 'ALMA', 2211, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 8, 59),
(134, 'HASIAN', 989797, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Atrial fibrillation', 1, 3, 41),
(135, 'RONA', 87750, 'O', 'FEMALE', '254716748724', 'MAWAR', 'Sinus rhythm', 1, 1, 40),
(136, 'AMRINA', 90004, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 10, 1, 89),
(137, 'ALINA', 90034, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus bradycardia', 70, 1, 70),
(138, 'JESSIE', 5006, 'AB', 'MALE', '254741080067', 'KAMBOJA', 'Sinus rhythm', 0, 2, 76),
(139, 'AHMADUN', 8372087, 'AB', 'MALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 1, 83),
(140, 'AFISAH', 909023, 'A', 'FEMALE', '254716748724', 'KAMBOJA', 'Atrial flutter, typical', 0, 8, 70),
(141, 'ALBONI', 1090944, 'AB', 'MALE', '254716748724', 'KAMBOJA', 'Atrial fibrillation', 1, 2, 65),
(142, 'KEKE', 109092, 'AB', 'FEMALE', '254716748724', 'MAWAR', 'Atrial flutter, typical', 1, 2, 34),
(143, 'YAYA', 209037, 'AB', 'FEMALE', '254716748724', 'KAMBOJA', 'Sinus rhythm', 1, 2, 55),
(144, 'ARIA', 230209, 'AB', 'FEMALE', '254716748724', 'MELATI', 'Sinus bradycardian', 1, 2, 57),
(145, 'DANIA', 3509595, 'O', 'FEMALE', '254716748724', 'MELATI', 'Sinus rhythm', 1, 2, 89);
(149, 'HENDRAYANTO', 353355, 'AB', 'Male', '254716748724', 'KAMBOJA', 'Sinus Rhythm', 0, 5, '25'),
(150, 'WULANDARI', 563421, 'B-', 'Female', '8345692150', 'SINGAPURA', 'Sinus Arrhythmia', 1, 5, '35'),
(151, 'FAISAL', 455533, 'O', 'Male', '265546378950', 'MALAYSIA', 'Sinus Rhythm', 1, 4, '54'),
(152, 'SETIAWAN', 553322, 'B', 'Male', '122698456246', 'MALAYSIA', 'Sinus Rhythm', 2, 3, '30'),
(153, 'ABDULLAH', 455673, 'B+', 'Male', '256683917621', 'INDONESIA', 'Sinus Rhythm', 4, 6, '27'),
(154, 'HIDAYAT', 467231, 'A-', 'Male', '876453763528', 'INDONESIA', 'Sinus Rhythm', 3, 5, '23'),
(155, 'HANDAYANI', 213476, 'O', 'Female', '876543219925', 'KAMBOJA', 'Sinus Rhythm', 2, 7, '47'),
(156, 'SAPUTRI', 345674, 'B', 'Female', '893567652111', 'INDONESIA', 'Sinus Arrhythmia', 1, 4, '22'),
(157, 'KURNIAWAN', 346665, 'AB', 'Male', '865543822120', 'KAMBOJA', 'Sinus Rhythm', 2, 4, '28'),
(158, 'AGUSTIAN', 567334, 'O', 'Male', '877654332145', 'INDONESIA', 'Sinus Arrhythmia', 1, 3, '23'),
(159, 'SAPUTRA',  356541, 'B+', 'Male', '765433221504', 'INDONESIA', 'Sinus Rhythm', 1, 2, '23'),
(160, 'KUSUMA', 345672, 'AB', 'Male', '821654778334', 'MALAYSIA', 'Sinus Bradycardia', 1, 5, '20'),
(161, 'FADHIL', 456222, 'B', 'Male', '821272447671', 'MALAYSIA', 'Sinus Rhythm', 1, 6, '19'),
(162, 'ALFARABI', 455623, 'AB', 'Male', '812792154754', 'SINGAPURA', 'Sinus Rhythm', 1, 4, '30'),
(163, 'PURWANTI', 245943, 'A', 'Female', '342759862122', 'KAMBOJA', 'Sinus Rhythm', 2, 5, '56'),
(164, 'KHOIRIYAH', 678544, 'B', 'Female', '812795538144', 'INDONESIA', 'Sinus Rhythm', 1, 6, '41'),
(165, 'INDAH',  356783, 'B+', 'Female', '765345688114', 'INDONESIA', 'Sinus Rhythm', 1, 2, '57'),
(166, 'ANDRIANSAH',  375541, 'B+', 'Male', '894566113404', 'INDONESIA', 'Sinus Rhythm', 1, 2, '20'),
(167, 'FAUZI',  365315, 'O', 'Male', '679321775404', 'INDONESIA', 'Sinus Rhythm', 1, 5, '19')
(168, 'IKHSAN',  46821, 'AB', 'Male', '673211209274', 'INDONESIA', 'Sinus Rhythm', 1, 6, '20'),
(169, 'ALIFAH',  45681, 'A+', 'Female', '81348762314', 'INDONESIA', 'Sinus Bradycardia', 1, 5, '44'),
(170, 'ALFINA',  213571, 'AB', 'Female', '85679215911', 'SINGAPURA', 'Sinus Bradycardia', 1, 3, '35'),
(171, 'ZAKY',  11991, 'A+', 'Male', '897645231499', 'INDONESIA', 'Sinus Rhythm', 1, 2, '24'),
(172, 'YUYUN',  10091, 'A+', 'Female', '897645451467', 'INDONESIA', 'Sinus Bradycardia', 1, 7, '60'),
(173, 'MUBAROK',  124501, 'A+', 'Male', '897645451467', 'INDONESIA', 'Atrial Fibrillation', 4, 1, '79'),
(174, 'HESTI',  109451, 'A', 'Female', '897645451467', 'INDONESIA', 'Sinus Rhythm', 1, 4, '39'),
(175, 'YESSY',  234101, 'O', 'Female', '85413378027', 'SINGAPURA', 'Sinus Rhythm', 2, 4, '24'),
(176, 'SUSANTO',  231181, 'A', 'Male', '80944381190', 'KAMBOJA', 'Sinus Rhythm', 3, 4, '60'),
(177, 'SUSANTI',  342109, 'O','Female', '88765321002', 'KAMBOJA', 'Sinus Rhythm', 3, 7, '18'),
(178, 'ISMAIL',  347951, 'A', 'Male', '8785468229', 'MALAYSIA', 'Sinus arrhythmia', 5, 6, '44'),
(179, 'IBRAHIM',  268711, 'A', 'Male', '80983221876', 'KAMBOJA', 'Sinus Rhythm', 3, 4, '66'),
(180, 'RATU',  243177, 'A', 'Female', '80944381190', 'KAMBOJA', 'Sinus Rhythm', 1, 3, '34'),
(181, 'BAKRIE',  21111, 'A', 'Male', '90854772190', 'KAMBOJA', 'Sinus Rhythm', 1, 5, '54'),
(182, 'LIA',  321111, 'O', 'Female', '801167924218', 'SINGAPURA', 'Sinus Rhythm', 1, 3, '38'),
(183, 'HENDRY',  12761, 'O', 'Male', '809382146859', 'SINGAPURA', 'Sinus Rhythm', 3, 2, '63'),
(184, 'ALVIAN',  26511, 'AB', 'Male', '86492016630', 'KAMBOJA', 'Sinus arrhythmia Wandering atrial pacemaker', 3, 1, '11'),
(185, 'SOMAD',  126731, 'O', 'Male', '7926643298264', 'KAMBOJA', 'Sinus Rhythm', 3, 4, '19'),
(186, 'HUMAIRA',  157090, 'O-', 'Female', '9821167388221', 'KAMBOJA', 'Sinus Rhythm', 1, 5, '42'),
(187, 'ANGEL',  11511, 'O+', 'Female', '090227635121', 'KAMBOJA', 'Sinus Rhythm', 1, 1, '22'),
(188, 'SARASWATI',  11190, 'O', 'Female', '789167463721', 'KAMBOJA', 'Sinus Tachycardia', 1, 1, '17'),
(189, 'SEPTIANI',  129820, 'AB', 'Female', '789238735252', 'KAMBOJA', 'Sinus Bradycardia', 3, 1, '17'),
(190, 'RIANTO',  12002, 'B', 'Male', '89245712209', 'SINGAPURA', 'Sinus Rhythm', 3, 2, '19'),
(191, 'ARIFUDDIN',  11001, 'O', 'Male', '79T3537732', 'KAMBOJA', 'Sinus Rhythm', 2, 4, '24'),
(192, 'KHADIJAH',  119801, 'O', 'Female', '36276345262', 'KAMBOJA', 'Sinus Rhythm', 1, 6, '51'),
(193, 'KURNIA', 196463, 'O', 'Female', '3228109294', 'KAMBOJA', 'Sinus Rhythm', 1, 2, '42'),
(194, 'AHMAD',  12321, 'O', 'Male', '764637323', 'KAMBOJA', 'Sinus Rhythm', 2, 4, '28'),
(195, 'CANTIKA',  45672, 'O', 'Female', '683637732', 'KAMBOJA', 'Sinus Rhythm', 2, 5, '28'),
(196, 'MEISYA',  648731, 'O-', 'Female', '7974874372', 'KAMBOJA', 'Sinus Rhythm', 2, 4, '63'),
(197, 'YANTI',  73641, 'O', 'Female', '79266432982', 'KAMBOJA', 'Sinus Arrhythmia', 2 , 6, '34'),
(198, 'DITA',  66471, 'AB', 'Female', '763332', 'INDONESIA', 'Sinus Rhythm', 1, 1, '38'),
(199, 'WINDA',  74621, 'A', 'Female', '7674630322', 'INDONESIA', 'Sinus Rhythm', 1, 2, '34'),
(200, 'MERRY',  102231, 'B', 'Female', '74872848', 'KAMBOJA', 'Sinus Rhythm', 3, 3, '56');














		     

-- --------------------------------------------------------

--
-- Table structure for table `tblcodes`
--

CREATE TABLE `tblcodes` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `patient_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcodes`
--

INSERT INTO `tblcodes` (`id`, `code`, `patient_id`) VALUES
(1, 815741, 51),
(2, 366688, 50),
(3, 480223, 47),
(4, 773864, 45),
(5, 877277, 2),
(6, 350617, 1),
(7, 855509, 4),
(8, 454057, 3),
(9, 729734, 7),
(10, 994006, 6),
(11, 142205, 8),
(12, 466034, 13),
(13, 370464, 14),
(14, 494156, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `hospital_id` int(11) NOT NULL,
  `ID_Number` int(30) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `role` int(10) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`, `hospital_id`, `ID_Number`, `Username`, `role`) VALUES
(16, 'Supper Admin', 'admin@gmail.com', 716748724, 'e3afed0047b08059d0fada10f400c1e5', '2020-04-24 17:32:13', 1, 38988296, 'Admin', 1),
(17, 'Jerim Kaura', 'jerry@gmail.com', 712345676, '25d55ad283aa400af464c76d713c07ad', '2020-07-16 07:11:26', 2, 87654467, 'Jerry', 1),
(46, 'Ramadhania Humaira', 'hmrmdhn.rh@gmail.com', 89620475910, '202cb962ac59075b964b07152d234b70', '2024-05-15 13:26:10', 2, 11111, 'irak', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblvisits`
--

CREATE TABLE `tblvisits` (
  `visit_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `admision_date` date NOT NULL,
  `Electric_axis_of_the_heart` varchar(50) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `Hypertrophies` varchar(50) NOT NULL,
  `date_discharged` varchar(50) DEFAULT 'Not Discharged'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvisits`
--

INSERT INTO `tblvisits` (`visit_id`, `patient_id`, `admision_date`, `Electric_axis_of_the_heart`, `hospital_id`, `Hypertrophies`, `date_discharged`) VALUES
(1, 1, '2024-03-09', 'left axis deviation', 7, 'Left ventricular overload- Left ventricular hypert', '2020-03-09'),
(2, 1, '2024-04-11', 'normal', 8, 'Left atrial hypertrophy-Left ventricular hypertrop', '2020-03-09'),
(3, 1, '2024-05-11', 'vertical', 9, 'Left atrial hypertrophy-Left ventricular hypertrop', '2020-03-09'),
(4, 1, '2024-05-11', 'left axis deviation', 2, 'Left atrial hypertrophy-Left ventricular hypertrop', '2020-03-09'),
(5, 1, '2024-05-11', 'horizontal', 1, 'Left atrial hypertrophy', '2020-03-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcodes`
--
ALTER TABLE `tblcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisits`
--
ALTER TABLE `tblvisits`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tblcodes`
--
ALTER TABLE `tblcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblvisits`
--
ALTER TABLE `tblvisits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
