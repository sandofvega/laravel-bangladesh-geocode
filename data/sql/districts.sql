-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2018 at 09:27 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.11-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larapack`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 1, 'Narsingdi', 'নরসিংদী', NULL, NULL, NULL),
(2, 1, 'Gazipur', 'গাজীপুর', NULL, NULL, NULL),
(3, 1, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, NULL),
(4, 1, 'Narayanganj', 'নারায়ণগঞ্জ', NULL, NULL, NULL),
(5, 1, 'Tangail', 'টাঙ্গাইল', NULL, NULL, NULL),
(6, 1, 'Kishoreganj', 'কিশোরগঞ্জ', NULL, NULL, NULL),
(7, 1, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, NULL),
(8, 1, 'Dhaka', 'ঢাকা', NULL, NULL, NULL),
(9, 1, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, NULL),
(10, 1, 'Rajbari', 'রাজবাড়ী', NULL, NULL, NULL),
(11, 1, 'Madaripur', 'মাদারীপুর', NULL, NULL, NULL),
(12, 1, 'Gopalganj', 'গোপালগঞ্জ', NULL, NULL, NULL),
(13, 1, 'Faridpur', 'ফরিদপুর', NULL, NULL, NULL),
(14, 2, 'Comilla', 'কুমিল্লা', NULL, NULL, NULL),
(15, 2, 'Feni', 'ফেনী', NULL, NULL, NULL),
(16, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', NULL, NULL, NULL),
(17, 2, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL, NULL),
(18, 2, 'Noakhali', 'নোয়াখালী', NULL, NULL, NULL),
(19, 2, 'Chandpur', 'চাঁদপুর', NULL, NULL, NULL),
(20, 2, 'Lakshmipur', 'লক্ষ্মীপুর', NULL, NULL, NULL),
(21, 2, 'Chittagong', 'চট্টগ্রাম', NULL, NULL, NULL),
(22, 2, 'Coxsbazar', 'কক্সবাজার', NULL, NULL, NULL),
(23, 2, 'Khagrachhari', 'খাগড়াছড়ি', NULL, NULL, NULL),
(24, 2, 'Bandarban', 'বান্দরবান', NULL, NULL, NULL),
(25, 3, 'Sirajganj', 'সিরাজগঞ্জ', NULL, NULL, NULL),
(26, 3, 'Pabna', 'পাবনা', NULL, NULL, NULL),
(27, 3, 'Bogra', 'বগুড়া', NULL, NULL, NULL),
(28, 3, 'Rajshahi', 'রাজশাহী', NULL, NULL, NULL),
(29, 3, 'Natore', 'নাটোর', NULL, NULL, NULL),
(30, 3, 'Joypurhat', 'জয়পুরহাট', NULL, NULL, NULL),
(31, 3, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', NULL, NULL, NULL),
(32, 3, 'Naogaon', 'নওগাঁ', NULL, NULL, NULL),
(33, 4, 'Jessore', 'যশোর', NULL, NULL, NULL),
(34, 4, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, NULL),
(35, 4, 'Meherpur', 'মেহেরপুর', NULL, NULL, NULL),
(36, 4, 'Narail', 'নড়াইল', NULL, NULL, NULL),
(37, 4, 'Chuadanga', 'চুয়াডাঙ্গা', NULL, NULL, NULL),
(38, 4, 'Kushtia', 'কুষ্টিয়া', NULL, NULL, NULL),
(39, 4, 'Magura', 'মাগুরা', NULL, NULL, NULL),
(40, 4, 'Khulna', 'খুলনা', NULL, NULL, NULL),
(41, 4, 'Bagerhat', 'বাগেরহাট', NULL, NULL, NULL),
(42, 4, 'Jhenaidah', 'ঝিনাইদহ', NULL, NULL, NULL),
(43, 5, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, NULL),
(44, 5, 'Patuakhali', 'পটুয়াখালী', NULL, NULL, NULL),
(45, 5, 'Pirojpur', 'পিরোজপুর', NULL, NULL, NULL),
(46, 5, 'Barisal', 'বরিশাল', NULL, NULL, NULL),
(47, 5, 'Bhola', 'ভোলা', NULL, NULL, NULL),
(48, 5, 'Barguna', 'বরগুনা', NULL, NULL, NULL),
(49, 6, 'Panchagarh', 'পঞ্চগড়', NULL, NULL, NULL),
(50, 6, 'Dinajpur', 'দিনাজপুর', NULL, NULL, NULL),
(51, 6, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, NULL),
(52, 6, 'Nilphamari', 'নীলফামারী', NULL, NULL, NULL),
(53, 6, 'Gaibandha', 'গাইবান্ধা', NULL, NULL, NULL),
(54, 6, 'Thakurgaon', 'ঠাকুরগাঁও', NULL, NULL, NULL),
(55, 6, 'Rangpur', 'রংপুর', NULL, NULL, NULL),
(56, 6, 'Kurigram', 'কুড়িগ্রাম', NULL, NULL, NULL),
(57, 7, 'Sylhet', 'সিলেট', NULL, NULL, NULL),
(58, 7, 'Moulvibazar', 'মৌলভীবাজার', NULL, NULL, NULL),
(59, 7, 'Habiganj', 'হবিগঞ্জ', NULL, NULL, NULL),
(60, 7, 'Sunamganj', 'সুনামগঞ্জ', NULL, NULL, NULL),
(61, 8, 'Sherpur', 'শেরপুর', NULL, NULL, NULL),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', NULL, NULL, NULL),
(63, 8, 'Jamalpur', 'জামালপুর', NULL, NULL, NULL),
(64, 8, 'Netrokona', 'নেত্রকোণা', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_unique` (`name`),
  ADD UNIQUE KEY `districts_bn_name_unique` (`bn_name`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
