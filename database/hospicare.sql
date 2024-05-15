-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 06:55 PM
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
  `guardian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `hospital_id` int(11) NOT NULL,
  `dob` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_name`, `identification`, `blood`, `gender`, `phone`, `residence`, `guardian`, `status`, `hospital_id`, `dob`) VALUES
(1, 'John Doe', 38988296, 'AB', 'Male', '254716748724', 'Marindi', 'John Dough', 10, 1, 20010212),
(2, 'Oketch Simon', 31368767, 'AB', 'Male', '254741080067', 'Marindi', 'Dad OO1', 70, 1, 19990211),
(3, 'Anne Mumo', 34567898, 'O', 'Male', '254716748724', 'Kuria', 'Gordon Wamae', 60, 1, 19901111),
(4, 'Patient1', 213456, 'AB', 'Male', '254716748724', 'Ragana', 'JohnDoe', 1, 1, 19900210),
(5, 'Mary Wngechi', 23456789, 'A', 'Male', '254716748724', 'Suna', 'Mwani Kioki', 0, 1, 20060210),
(6, 'Sick Person', 23456789, 'AB', 'Female', '254716748724', 'Mlimani', 'John Wanner', 1, 2, 18901111),
(7, 'Kevin Kamau', 23456788, 'O', 'Female', '254716748724', 'Banana', 'William Kyle', 1, 2, 19971212),
(8, 'niak', 55556664, 'A', 'Female', '089620475910', 'cookies', 'johnz', 0, 2, 20020420),
(9, 'Ethan', 2847391, 'AB', 'Female', '02222222', 'mawar', 'danang', 0, 2, 2003),
(10, 'Liam', 3958742, 'AB', 'Male', '2233455', 'melati', 'danang', 0, 2, 2003),
(11, 'Noah', 6729814, 'AB', 'Male', '55544422', 'melati', 'arif', 0, 2, 2004),
(12, 'Mason', 4937186, 'AB', 'Male', '33344555', 'melati', 'danang', 0, 2, 2008),
(13, 'Logan', 1934827, 'AB', 'Male', '333889000', 'melati', 'arif', 0, 2, 2003);

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
(8, 651605, 3),
(9, 729734, 7),
(10, 994006, 6),
(11, 142205, 8),
(12, 576741, 13);

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
  `diagnosed_with` varchar(50) NOT NULL,
  `Rhythms` varchar(100) NOT NULL,
  `Electric axis of the heart` varchar(100) NOT NULL,
  `Conduction abnormalities` varchar(100) NOT NULL,
  `Extrasystolies` varchar(100) NOT NULL,
  `Hypertrophies` varchar(100) NOT NULL,
  `Cardiac pacing` varchar(100) NOT NULL,
  `Ischemia` varchar(100) NOT NULL,
  `Non-specific repolarization abnormalities` varchar(100) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `drugs` varchar(50) NOT NULL,
  `date_discharged` varchar(50) DEFAULT 'Not Discharged'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvisits`
--

INSERT INTO `tblvisits` (`visit_id`, `patient_id`, `admision_date`, `diagnosed_with`, `Rhythms`, `Electric axis of the heart`, `Conduction abnormalities`, `Extrasystolies`, `Hypertrophies`, `Cardiac pacing`, `Ischemia`, `Non-specific repolarization abnormalities`, `hospital_id`, `drugs`, `date_discharged`) VALUES
(1, 20, '2020-03-09', 'Malaria', '', '', '', '', '', '', '', '', 3, 'Panadol', '2020-03-09'),
(2, 20, '2020-03-09', 'Anthrax', '', '', '', '', '', '', '', '', 3, 'Unknown', NULL),
(3, 20, '2020-03-09', 'Cholera', '', '', '', '', '', '', '', '', 3, 'Anti-Bacterial', '2020-03-09'),
(4, 19, '2020-03-09', 'Blood Cancer', '', '', '', '', '', '', '', '', 3, 'Blood Cancer Drugs', '2020-03-09'),
(5, 19, '2020-03-09', 'Lung Disease', '', '', '', '', '', '', '', '', 3, 'Lung Disease Drugs', '2020-03-09'),
(6, 18, '2020-03-09', 'Luekemia', '', '', '', '', '', '', '', '', 3, 'Iodine Tablets', 'Not Discharged'),
(7, 18, '2020-03-09', 'ew4rw', '', '', '', '', '', '', '', '', 3, 'srfs', '2020-03-09'),
(8, 14, '2020-03-09', 'Heart Attack', '', '', '', '', '', '', '', '', 3, 'Relax pills', '2020-03-09'),
(9, 29, '2020-03-12', 'Advanced Njaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '', '', '', '', '', '', '', 1, 'Spicy chicken', 'Not Discharged'),
(10, 49, '2020-03-15', 'Sleeping sickness', '', '', '', '', '', '', '', '', 3, 'Food', '2020-03-15'),
(11, 50, '2020-03-20', 'Malaria', '', '', '', '', '', '', '', '', 1, 'Panadol', '2020-03-20'),
(12, 51, '2020-03-20', 'Malaria', '', '', '', '', '', '', '', '', 1, 'Panadol', '2020-03-20'),
(13, 51, '2020-03-23', 'Flu', '', '', '', '', '', '', '', '', 1, 'Cold cup', '2020-03-23'),
(14, 25, '2020-04-06', 'kmhhub ', '', '', '', '', '', '', '', '', 1, 'iu iuhb', 'Not Discharged'),
(15, 25, '2020-04-24', 'Chronic cough', '', '', '', '', '', '', '', '', 1, 'Plmnbcv', '2020-04-24'),
(16, 25, '2020-04-24', 'jbgyu', '', '', '', '', '', '', '', '', 1, 'ubuy', 'Not Discharged'),
(17, 25, '2020-04-24', 'jbgyu', '', '', '', '', '', '', '', '', 1, 'ubuy', 'Not Discharged'),
(18, 25, '2020-04-24', 'uhbgyuf', '', '', '', '', '', '', '', '', 1, 'uybft', '2020-04-24'),
(19, 25, '2020-04-24', 'jhubgy', '', '', '', '', '', '', '', '', 1, 'yuby', 'Not Discharged'),
(20, 25, '2020-04-24', 'hyvty', '', '', '', '', '', '', '', '', 1, '5yvtyfty', 'Not Discharged'),
(21, 25, '2020-04-24', 'hyvty', '', '', '', '', '', '', '', '', 1, '5yvtyfty', 'Not Discharged'),
(22, 25, '2020-04-24', 'iugtyb', '', '', '', '', '', '', '', '', 1, 'yufvty ', 'Not Discharged'),
(23, 1, '2020-07-14', 'Malaria', '', '', '', '', '', '', '', '', 1, 'Panadol', '2020-07-14'),
(24, 4, '2020-07-16', 'Malaaria', '', '', '', '', '', '', '', '', 1, 'Panadol', 'Not Discharged'),
(25, 7, '2020-07-16', 'Luekemia', '', '', '', '', '', '', '', '', 2, 'Antibiotics', '2020-07-16'),
(26, 7, '2020-07-16', 'Sleeping Sickness', '', '', '', '', '', '', '', '', 2, 'Anti Sleeping Pills', 'Not Discharged'),
(27, 6, '2020-07-20', 'Malaria', '', '', '', '', '', '', '', '', 2, 'ATR', 'Not Discharged'),
(28, 7, '2024-05-15', 'jantung', '', '', '', '', '', '', '', '', 2, 'paracetamol', 'Not Discharged'),
(90, 14, '2024-05-15', 'cardio', 'Sinus bradycardia', 'Electric axis of the heart: left axis deviation', '-', '-', 'Left ventricular overload\r\nLeft ventricular hypertrophy', '-', '-', 'Non-specific repolarization abnormalities: posterior wall', 5, 'paracetamol', 'Not Discharged');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcodes`
--
ALTER TABLE `tblcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
