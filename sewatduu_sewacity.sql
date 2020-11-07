-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2020 at 07:27 AM
-- Server version: 10.3.24-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewatduu_sewacity`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `user_id`, `posts_id`, `quantity`, `pname`, `price`, `created_at`, `updated_at`, `discount`, `category`) VALUES
(154, '49', '349', 1, 'Gas Lighter-----JKF', '175', '2020-06-12 19:45:23', '2020-06-12 19:45:23', 48.5, 'kitchen'),
(165, '119', '22', 1, 'Almirah with Drawer', '7300', '2020-06-19 07:07:02', '2020-06-19 07:07:02', 13.7, 'furniture'),
(168, '112', '429', 1, 'K-N95 Face Mask', '230', '2020-06-20 16:22:02', '2020-06-20 16:22:02', 56.96, 'Essentials'),
(176, '141', '429', 1, 'K-N95 Face Mask', '230', '2020-06-21 14:29:54', '2020-06-21 14:29:54', 56.96, 'Essentials'),
(267, '211', '506', 1, 'Amaze pudding set___UNA', '340', '2020-07-13 18:45:14', '2020-07-13 18:45:14', 39.2, 'Gift'),
(286, '195', '504', 1, 'Doll Set-charming fashion girl___UNA', '135', '2020-07-20 16:46:46', '2020-07-20 16:46:46', 33, 'Gift'),
(290, '38', '452', 1, 'Rakhi (XAE)', '36', '2020-07-23 10:24:53', '2020-07-23 10:24:53', 0, 'Festival'),
(305, '239', '485', 1, 'Amul Kool 250 ML:-JSM', '25', '2020-07-31 04:53:34', '2020-07-31 04:53:34', 8, 'Season'),
(307, '23', '700', 1, '50W helosion light', '100', '2020-07-31 16:31:04', '2020-07-31 16:31:04', 0, 'Elecpart'),
(309, '23', '425', 1, '\"Assure SHAVING CREAM \"-HUH', '120', '2020-07-31 21:47:58', '2020-07-31 21:47:58', 10, 'Cosmetic'),
(313, '23', '442', 1, 'Lumba Rakhi 1 (XAE)', '25', '2020-08-01 21:48:53', '2020-08-01 21:48:53', 0, 'Festival'),
(314, '243', '483', 1, 'Bislery 1L:-JSM', '18', '2020-08-02 11:32:39', '2020-08-02 11:32:39', 16.67, 'Season'),
(315, '243', '480', 1, 'Sprite 2.2L :-JSM', '95', '2020-08-02 11:33:05', '2020-08-02 11:33:05', 5.26, 'Season'),
(320, '23', '346', 1, '18×18 big bhatti------JKF', '2000', '2020-08-06 14:17:06', '2020-08-06 14:17:06', 2.5, 'kitchen'),
(322, '253', '208', 1, 'Pradeep\'s A Text Book of Biology for Class 11 ITH', '1300', '2020-08-09 11:55:26', '2020-08-09 11:55:26', 10, 'Books'),
(323, '91', '540', 1, 'Livon hair serum-ATK', '65', '2020-08-13 08:07:24', '2020-08-13 08:07:24', 6, 'Cosmetic'),
(324, '261', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-08-13 19:28:11', '2020-08-13 19:28:11', 0, 'Season'),
(327, '23', '666', 1, 'Ncert Chemistry Part-1 For Class 11th--------ITH', '155', '2020-08-17 02:23:50', '2020-08-17 02:23:50', 0, 'Books'),
(328, '23', '636', 1, 'Chemistry for class 12th part:-2', '115', '2020-08-17 02:24:39', '2020-08-17 02:24:39', 0, 'Books'),
(329, '274', '482', 1, 'Appy Fizze 250ML:-JSM', '15', '2020-08-18 16:01:09', '2020-08-18 16:01:09', 0, 'Season'),
(330, '278', '700', 1, '50W helosion light', '100', '2020-08-18 21:58:53', '2020-08-18 21:58:53', 0, 'Elecpart'),
(333, '293', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-08-21 19:14:51', '2020-08-21 19:14:51', 0, 'Season'),
(335, '331', '365', 1, 'SURAKSHA LPG Hose Pipe--------------JKF', '190', '2020-08-29 02:32:56', '2020-08-29 02:32:56', 21.05, 'kitchen'),
(339, '243', '701', 1, '6A JPS Extension cord', '240', '2020-08-30 16:32:57', '2020-08-30 16:32:57', 20.83, 'Elecpart'),
(343, '362', '356', 1, 'Aalishan supreme sonam rice ------------------------- KTU', '1050', '2020-09-03 18:51:59', '2020-09-03 18:51:59', 4.76, NULL),
(348, '23', '694', 1, 'NCERT Science class:-7 ITH', '50', '2020-09-14 16:26:12', '2020-09-14 16:26:12', 0, NULL),
(350, '40', '708', 1, 'ALL IN ONE MATHS, Arihant 9th (IHT)', '450', '2020-09-20 22:05:53', '2020-09-20 22:05:53', 20, NULL),
(355, '404', '425', 1, '\"Assure SHAVING CREAM \"-HUH', '120', '2020-09-24 16:29:54', '2020-09-24 16:29:54', 10, NULL),
(362, '411', '509', 1, 'Love gift-Gift for love___UNA', '120', '2020-09-26 17:25:08', '2020-09-26 17:25:08', 42, NULL),
(363, '411', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-09-26 17:41:34', '2020-09-26 17:41:34', 0, NULL),
(365, '416', '425', 1, '\"Assure SHAVING CREAM \"-HUH', '120', '2020-09-29 04:28:47', '2020-09-29 04:28:47', 10, NULL),
(366, '407', '930', 1, 'Haldiram bhelpuri (AWM )', '42', '2020-09-30 21:55:30', '2020-09-30 21:55:30', 7, NULL),
(367, '407', '288', 1, 'HairX Advanced Care Ultimate Repair  Nourishing Conditioner(XAE)', '459', '2020-09-30 21:55:48', '2020-09-30 21:55:48', 17.43, NULL),
(368, '424', '483', 1, 'Bislery 1L:-JSM', '18', '2020-10-01 00:51:39', '2020-10-01 00:51:39', 16.67, NULL),
(371, '439', '987', 1, 'Cadbury bournvita lil champs', '283', '2020-10-03 15:36:06', '2020-10-03 15:36:06', 5, NULL),
(372, '441', '970', 1, 'Aashirvad Salt', '15', '2020-10-03 15:59:33', '2020-10-03 15:59:33', 0, NULL),
(373, '440', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-10-03 16:15:30', '2020-10-03 16:15:30', 0, NULL),
(376, '436', '625', 1, 'Maxx deododant-30ml spray RTU', '165', '2020-10-03 16:39:29', '2020-10-03 16:39:29', 25, NULL),
(377, '443', '627', 1, 'Accounts for class 11 ITH', '125', '2020-10-03 16:48:49', '2020-10-03 16:48:49', 0, NULL),
(396, '460', '626', 1, 'maxx deodorant-100ml spray RTU', '575', '2020-10-04 17:41:37', '2020-10-04 17:41:37', 25, NULL),
(399, '481', '1000', 1, 'Bisk-farm half half(Awm)', '10', '2020-10-06 16:51:48', '2020-10-06 16:51:48', 5, NULL),
(402, '330', '1078', 1, 'A A A Papad (PRB)', '30', '2020-10-07 21:21:24', '2020-10-07 21:21:24', 25, NULL),
(403, '484', '1078', 1, 'A A A Papad (PRB)', '30', '2020-10-08 03:55:16', '2020-10-08 03:55:16', 25, NULL),
(404, '439', '1028', 1, 'Chini (AWM)', '38', '2020-10-08 21:44:15', '2020-10-08 21:44:15', 0, NULL),
(405, '481', '1004', 1, 'Britania cake fruit fun (Awm)', '30', '2020-10-09 04:29:40', '2020-10-09 04:29:40', 5, NULL),
(406, '481', '1039', 1, 'Bikano navratan mixture', '48', '2020-10-10 01:33:06', '2020-10-10 01:33:06', 16.67, NULL),
(412, '465', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-10-14 16:39:53', '2020-10-14 16:39:53', 0, NULL),
(413, '481', '817', 1, 'mi super bass wireless headphone (BUN)', '2199', '2020-10-14 21:35:53', '2020-10-14 21:35:53', 18.19, NULL),
(414, '481', '835', 1, 'Mi buisness backpack (BUN)', '1499', '2020-10-14 21:36:02', '2020-10-14 21:36:02', 13.34, NULL),
(417, '537', '1036', 1, 'Bikano rasgulla', '210', '2020-10-17 15:25:35', '2020-10-17 15:25:35', 9.52, NULL),
(418, '545', '1055', 1, 'Aashirvaad Atta (PRB)', '205', '2020-10-17 22:32:30', '2020-10-17 22:32:30', 17.07, NULL),
(419, '549', '1115', 1, 'Horlicks (PRB)', '242', '2020-10-19 15:18:59', '2020-10-19 15:18:59', 26.86, NULL),
(420, '462', '484', 1, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '69', '2020-10-20 20:39:52', '2020-10-20 20:39:52', 0, NULL),
(421, '87', '491', 1, 'Nivea deodorant spray____ATK', '199', '2020-10-26 21:53:57', '2020-10-26 21:53:57', 15, NULL),
(422, '586', '970', 1, 'Aashirvad Salt', '15', '2020-10-26 22:21:06', '2020-10-26 22:21:06', 0, NULL),
(434, '577', '978', 1, 'Aashirvad shudh chakki aata', '175', '2020-10-31 23:53:46', '2020-10-31 23:53:46', 0, NULL),
(435, '493', '1008', 1, 'Horlicks classic malt refill(Awm)', '428', '2020-11-01 21:03:51', '2020-11-01 21:03:51', 5, NULL),
(440, '614', '798', 1, 'CONA ORIGINAL QUICK GRIP ( TAPE ) 18mm×0.125×7m', '15', '2020-11-04 21:50:54', '2020-11-04 21:50:54', 30.05, NULL),
(441, '616', '1078', 1, 'A A A Papad (PRB)', '30', '2020-11-05 03:06:53', '2020-11-05 03:06:53', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `city_id`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Electronic Appliances', 1, '2020-08-23 13:03:26', '2020-09-21 14:40:30', 8),
(2, 'Essential Products', 1, '2020-08-23 13:03:44', '2020-09-21 14:40:57', 16),
(3, 'Footwear', 1, '2020-08-23 13:05:48', '2020-09-21 14:41:08', 17),
(4, 'Books', 1, '2020-08-23 13:05:56', '2020-09-21 20:39:18', 24),
(5, 'Furniture', 1, '2020-08-23 13:06:54', '2020-09-21 14:41:26', 21),
(8, 'Cosmetics', 1, '2020-08-23 13:07:48', '2020-09-21 14:43:18', 13),
(9, 'Gift Item', 1, '2020-08-23 13:08:13', '2020-09-21 14:43:31', 19),
(10, 'Electrical Parts', 1, '2020-08-23 13:08:24', '2020-09-21 14:43:42', 12),
(11, 'Seasonal Items', 1, '2020-08-23 13:08:45', '2020-09-21 14:46:13', 20),
(12, 'Festival Items', 1, '2020-08-23 13:08:57', '2020-09-21 14:46:24', 18),
(13, 'Others', 1, '2020-08-23 13:09:06', '2020-09-21 20:38:49', 25),
(14, 'Electrical Appliances', 2, '2020-08-23 13:03:26', '2020-08-23 13:03:26', 1),
(15, 'Essential Products', 2, '2020-08-23 13:03:44', '2020-08-23 13:03:44', 2),
(16, 'Footwear', 2, '2020-08-23 13:05:48', '2020-08-23 13:05:48', 3),
(17, 'Books', 2, '2020-08-23 13:05:56', '2020-08-23 13:05:56', 4),
(18, 'Furniture', 2, '2020-08-23 13:06:54', '2020-08-23 13:06:54', 5),
(19, 'Kitchen Needs', 2, '2020-08-23 13:07:06', '2020-08-23 13:07:06', 6),
(20, 'Grocery', 2, '2020-08-23 13:07:32', '2020-08-23 13:07:32', 7),
(21, 'Cosmetics', 2, '2020-08-23 13:07:48', '2020-08-23 13:07:48', 8),
(22, 'Gift Item', 2, '2020-08-23 13:08:13', '2020-08-23 13:08:13', 9),
(23, 'Electrical Parts', 2, '2020-08-23 13:08:24', '2020-08-23 13:08:24', 10),
(24, 'Seasonal Items', 2, '2020-08-23 13:08:45', '2020-08-23 13:08:45', 11),
(25, 'Festival Items', 2, '2020-08-23 13:08:57', '2020-08-23 13:08:57', 12),
(26, 'Others', 2, '2020-08-23 13:09:06', '2020-08-23 13:09:22', 13),
(31, 'Mobile Phones', 1, '2020-08-31 01:08:00', '2020-09-21 14:46:53', 7),
(32, 'Mobile accessories', 1, '2020-09-01 15:39:22', '2020-09-21 14:57:49', 5),
(33, 'MI  Product', 1, '2020-09-01 15:41:30', '2020-09-21 14:57:04', 1),
(34, 'NCERT', 1, '2020-09-01 15:42:17', '2020-09-21 14:47:24', 9),
(35, 'General Competition Books', 1, '2020-09-01 15:43:25', '2020-09-21 14:47:36', 11),
(36, 'Medical  And Engineering Book', 1, '2020-09-01 15:45:11', '2020-09-21 14:47:47', 10),
(37, 'Other Publications & Board Books', 1, '2020-09-01 15:58:56', '2020-09-21 14:47:59', 14),
(38, 'Spices(मसाला)', 1, '2020-09-21 14:44:22', '2020-09-21 14:44:22', 6),
(39, 'Biscuits & Snacks', 1, '2020-09-21 14:44:51', '2020-09-21 14:58:51', 3),
(40, 'Hygiene & Cleaning', 1, '2020-09-21 14:45:16', '2020-09-23 19:25:59', 5),
(41, 'Beverages & Drinks', 1, '2020-09-21 14:45:53', '2020-09-21 14:59:00', 4),
(43, 'Grocery', 1, '2020-09-21 15:54:21', '2020-09-21 15:54:21', 2),
(44, 'Rice', 1, '2020-09-21 17:54:35', '2020-09-21 17:54:35', 8),
(45, 'IMC Products', 1, '2020-09-21 20:14:14', '2020-09-21 20:39:25', 23),
(46, 'Vestige Products', 1, '2020-09-21 20:14:29', '2020-09-21 20:38:58', 22),
(47, 'Sweets & Snacks(Bikano)', 1, '2020-10-03 01:32:01', '2020-10-03 01:32:01', 9),
(48, 'Patanjali', 1, '2020-10-29 15:59:10', '2020-10-29 15:59:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `is_active`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Forbesganj', 1, 1, NULL, NULL),
(2, 'Parbelia', 1, 1, NULL, '2020-10-06 03:52:34'),
(3, 'Durgapur', 1, 1, '2020-10-06 03:52:54', '2020-10-06 03:52:54'),
(4, 'Other', 1, 2, '2020-10-09 20:22:07', '2020-10-09 20:27:25'),
(5, 'Chandigarh', 1, 1, '2020-10-09 20:25:28', '2020-10-09 20:25:28'),
(6, 'Patna', 1, 1, '2020-10-15 02:51:04', '2020-10-15 02:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `experience`, `comments`, `email`, `email_verified_at`, `is_approved`, `created_at`, `updated_at`) VALUES
(6, 'Pardeep Choubey', 'Good', '<p>Sewacity is like a blessing on this city Forbesganj. It came up to help when it was really necessary and took the risk in this pandemic to make our life easier. Thank you so much. It&#39;s time we give back to Sewacity the name and recognition it needs.&nbsp;&nbsp;</p>', 'amulyasrsvm25@gmail.com', NULL, 0, '2020-08-20 18:47:43', '2020-11-04 14:05:21'),
(9, 'Raj kumar', 'Good', '<p>Momo khaye the.... Ek number tha ❤❤👍👍</p>', 'rajunadan@gmail.com', NULL, 1, '2020-08-21 02:25:31', '2020-08-21 02:25:49'),
(10, 'Ashwini Kumar', 'Good', '<p>Good... But improvement required.&nbsp;</p>', 'ashurock205@gmail.com', NULL, 1, '2020-08-22 21:27:46', '2020-11-04 14:05:44'),
(12, 'Payal Gupta', 'Good', '<p>Today i ordered momo from sewacity...the momo was really tasty.</p>', 'pg9006369171@gmail.com', NULL, 1, '2020-08-24 01:08:33', '2020-08-24 12:52:38'),
(14, 'Harsh', 'Good', '<p>Very good service and fresh product.&nbsp;</p>\r\n\r\n<p>I am totally satisfied with sewacity.&nbsp;</p>', 'harshpankajfbg@gmail.com', NULL, 1, '2020-08-26 20:35:33', '2020-08-27 04:12:49'),
(15, 'Farzana Iqubal', 'Good', '<p>Momo chowmin manchurian sab bahut bht yummmm the thank you sewacity 👌👌😋😋😊</p>', 'farzuiqubal98@gmail.com', NULL, 1, '2020-08-26 23:30:40', '2020-08-27 04:13:13'),
(17, 'Priya', 'Good', '<p>Superb</p>', 'deopriyanidhi@gmail.com', NULL, 1, '2020-09-05 18:47:29', '2020-09-05 21:57:03'),
(18, 'Joe Meese', 'Bad', 'Hello,\r\n\r\nPPE stock we can ship today from Los Angeles, CA. You can also send someone to inspect the stock or pick it up from Beverly Hills California.\r\n\r\n* Nitrile Gloves\r\n* KN95 (CDC EUI List FDA approved)\r\n* KN95 (FDA approved)\r\n* 3Ply Disposable Masks (Level 1, 2, 3 - Medical grade)\r\n* Contactless Thermometer\r\n* Hand Sanitizers\r\n\r\nFor production run:\r\n* Isolation Gowns\r\n* Disposable Shoe Cover\r\n* Disposable Head Cover\r\n* Rapid Antibody Test Kits (FOB China)\r\n* Cotton Masks\r\n\r\nLet me know if we can get on a call, you can call us directly on 310 596 5555.\r\n\r\nWe are FDA approved company (FDA number 3016649392) and PPAI.\r\n\r\nThanks and stay safe,\r\nJoe Meese\r\n310 596 5555\r\nppekits.net\r\nPPE Kits by Dioz Group of Companies, Beverly Hills CA (PPAI/ FDA)\r\n\r\n\r\nRegards,\r\n\r\n— \r\n\r\nJoe Meese | Director of Marketing\r\nDioz Group | Oasis Apparel | Alanic | PPE KITS | Clean Health USA\r\nHQ: Beverly Hills, CA 90211, USA\r\nW: www.diozgroup.com\r\nW: https://cleanhealthusa.com', 'joemeese@diozgroup.online', NULL, 0, '2020-09-11 14:50:21', '2020-09-11 14:50:21'),
(19, 'Vijay Jain', 'Good', '<p>You can order fresh groceries directly to your door without leaving Your home . I am completely satisfied with all the services.&nbsp;</p>', 'hemanjain11559@gmail.com', NULL, 1, '2020-09-11 21:24:27', '2020-09-12 02:23:52'),
(21, 'simran singh', 'Good', '<p>This is nice ..</p>\r\n\r\n<p>They r doing their jobs in the best way&nbsp;</p>\r\n\r\n<p>thank you&nbsp;</p>', 'simransingh65409@gmail.com', NULL, 1, '2020-09-28 16:34:20', '2020-09-28 16:41:06'),
(22, 'Eric Jones', 'Bad', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at sewacity.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=sewacity.com', 'eric@talkwithwebvisitor.com', NULL, 0, '2020-09-29 14:37:45', '2020-09-29 14:37:45'),
(23, 'Bulbul keshri', 'Good', '<p>Very nice food</p>', 'bulbulfbg1@gmail.com', NULL, 1, '2020-10-02 23:15:33', '2020-10-03 01:17:27'),
(24, 'Rijusha Ranjan', 'Good', '<p>Impressive... service ❤️❤️with&nbsp; perfect punctuality ❤️❤️..</p>', 'rijusharanjan@gmail.com', NULL, 0, '2020-10-10 15:24:18', '2020-10-10 15:24:18'),
(25, 'Rijusha Ranjan', 'Good', '<p>Lovely..manner👍🏻..respectful response..with satisfied service 👍🏻👍🏻</p>', 'rijusharanjan@gmail.com', NULL, 1, '2020-10-10 15:26:23', '2020-10-10 15:55:26'),
(26, 'Eric Jones', 'Bad', 'Hey, this is Eric and I ran across sewacity.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=sewacity.com', 'eric@talkwithwebvisitor.com', NULL, 0, '2020-10-12 08:11:53', '2020-10-12 08:11:53'),
(27, 'Chance Ma', 'Bad', 'ATT: sewacity.com / Home Page  WEB SITE SOLUTIONS\r\nThis notice RUNS OUT ON: Oct 13, 2020\r\n\r\n\r\nWe have actually not obtained a settlement from you.\r\nWe\'ve attempted to contact you however were incapable to contact you.\r\n\r\n\r\nKindly Go To: https://bit.ly/34TSQol .\r\n\r\nFor info as well as to process a optional payment for services.\r\n\r\n\r\n\r\n10132020214712.', 'information@sewacity.com', NULL, 0, '2020-10-14 11:29:12', '2020-10-14 11:29:12'),
(28, 'Akash kumar', 'Good', '<p>Awesome service , i had to change my delivery time many times, but they were awesome they gave importance to my every request .&nbsp;</p>\r\n\r\n<p>Talking about the quality then i must say they are way better than there competitors,&nbsp;</p>\r\n\r\n<p>Try once and this will become your default choice...,!,</p>', 'akashk620585@gmail.com', NULL, 1, '2020-10-17 15:23:50', '2020-10-17 15:27:06'),
(29, 'Akash', 'Good', '<p>Tasty Food... Everyone must try once.. the service is awsm.&nbsp;</p>', 'akashbcroy@gmail.com', NULL, 1, '2020-10-17 22:50:39', '2020-10-19 19:19:19'),
(30, 'Eric Jones', 'Bad', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at sewacity.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Traffic is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\n==> https://www.talkwithwebtraffic.com to try out a Live Demo with Talk With Web Traffic now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\n==> https://www.talkwithwebtraffic.com to discover what Talk With Web Traffic can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Traffic offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\n==> https://www.talkwithwebtraffic.com to try Talk With Web Traffic now.\r\n\r\nIf you\'d like to unsubscribe click here https://talkwithwebtraffic.com/unsubscribe.aspx?d=sewacity.com', 'eric@talkwithwebtraffic.com', NULL, 0, '2020-10-22 20:14:40', '2020-10-22 20:14:40'),
(31, 'Ambesh Jha', 'Good', '<p>The service you have given was very good. We are very happy that such good service is available in our city too।।।Thank you so Much......</p>', 'ambeshkumar264@gmail.com', NULL, 1, '2020-10-29 20:18:19', '2020-10-29 20:54:37'),
(32, 'Eric Jones', 'Bad', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found sewacity.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=sewacity.com', 'eric@talkwithwebvisitor.com', NULL, 0, '2020-11-06 02:48:07', '2020-11-06 02:48:07'),
(33, 'Eric Jones', 'Bad', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - sewacity.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across sewacity.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=sewacity.com', 'ericjonesonline@outlook.com', NULL, 0, '2020-11-07 02:44:15', '2020-11-07 02:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `food_carts`
--

CREATE TABLE `food_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `res_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_carts`
--

INSERT INTO `food_carts` (`id`, `user_id`, `res_id`, `food_id`, `quantity`, `created_at`, `updated_at`) VALUES
(47, 416, 18, 103, 1, '2020-09-29 04:25:10', '2020-09-29 04:25:10'),
(53, 158, 16, 67, 1, '2020-09-29 18:56:30', '2020-09-29 18:56:30'),
(54, 288, 14, 26, 1, '2020-09-29 20:24:06', '2020-09-29 20:24:06'),
(55, 288, 14, 28, 1, '2020-09-29 20:24:13', '2020-09-29 20:24:13'),
(125, 450, 16, 29, 1, '2020-10-04 00:31:07', '2020-10-04 00:31:07'),
(130, 456, 20, 132, 1, '2020-10-04 13:33:18', '2020-10-04 13:33:18'),
(141, 461, 19, 102, 1, '2020-10-04 22:56:26', '2020-10-04 22:56:40'),
(160, 471, 15, 19, 1, '2020-10-05 21:05:00', '2020-10-05 21:05:00'),
(185, 476, 16, 29, 1, '2020-10-06 22:38:21', '2020-10-06 22:38:21'),
(194, 411, 14, 14, 1, '2020-10-07 18:22:12', '2020-10-07 18:22:12'),
(195, 411, 14, 14, 1, '2020-10-07 18:22:16', '2020-10-07 18:22:16'),
(196, 411, 14, 13, 1, '2020-10-07 18:22:22', '2020-10-07 18:22:22'),
(200, 490, 19, 104, 3, '2020-10-07 20:29:16', '2020-10-07 20:29:19'),
(201, 461, 19, 96, 1, '2020-10-07 21:58:27', '2020-10-07 21:58:27'),
(207, 173, 16, 29, 1, '2020-10-08 21:12:29', '2020-10-08 21:12:29'),
(224, 501, 20, 139, 1, '2020-10-10 00:18:20', '2020-10-10 00:18:20'),
(236, 504, 16, 29, 1, '2020-10-10 22:06:27', '2020-10-10 22:06:36'),
(239, 509, 16, 71, 1, '2020-10-11 20:12:58', '2020-10-11 20:12:58'),
(258, 516, 19, 95, 1, '2020-10-13 22:10:59', '2020-10-13 22:10:59'),
(266, 288, 14, 58, 1, '2020-10-14 17:24:45', '2020-10-14 17:24:45'),
(283, 148, 15, 114, 1, '2020-10-15 20:44:12', '2020-10-15 20:44:12'),
(289, 532, 16, 29, 1, '2020-10-16 18:44:03', '2020-10-16 18:44:03'),
(290, 532, 16, 32, 1, '2020-10-16 18:44:16', '2020-10-16 18:44:16'),
(292, 420, 20, 137, 1, '2020-10-16 20:59:02', '2020-10-16 20:59:02'),
(296, 534, 14, 14, 1, '2020-10-16 23:01:55', '2020-10-16 23:01:55'),
(305, 330, 23, 185, 1, '2020-10-17 14:26:22', '2020-10-17 14:26:22'),
(307, 540, 23, 189, 2, '2020-10-17 17:54:03', '2020-10-17 17:54:15'),
(317, 546, 29, 247, 1, '2020-10-17 23:24:46', '2020-10-17 23:24:46'),
(319, 481, 29, 244, 1, '2020-10-18 16:10:48', '2020-10-18 16:10:48'),
(322, 550, 18, 108, 1, '2020-10-19 00:05:30', '2020-10-19 00:05:30'),
(340, 560, 29, 243, 1, '2020-10-22 14:28:34', '2020-10-22 14:28:34'),
(341, 119, 16, 71, 1, '2020-10-22 17:25:46', '2020-10-22 17:25:46'),
(345, 564, 29, 243, 1, '2020-10-23 00:40:03', '2020-10-23 00:40:03'),
(348, 570, 23, 185, 1, '2020-10-24 01:36:12', '2020-10-24 01:36:12'),
(396, 579, 27, 219, 1, '2020-10-26 00:01:03', '2020-10-26 00:01:03'),
(398, 584, 19, 96, 1, '2020-10-26 18:23:24', '2020-10-26 18:23:24'),
(399, 578, 29, 245, 5, '2020-10-26 21:11:04', '2020-10-26 21:11:10'),
(400, 578, 29, 243, 1, '2020-10-26 21:11:23', '2020-10-26 21:11:23'),
(402, 54, 20, 126, 1, '2020-10-26 22:56:27', '2020-10-26 22:56:27'),
(404, 589, 20, 131, 1, '2020-10-27 20:48:00', '2020-10-27 20:48:00'),
(409, 590, 24, 236, 1, '2020-10-27 23:09:52', '2020-10-27 23:09:52'),
(412, 578, 29, 244, 1, '2020-10-28 20:41:07', '2020-10-28 20:41:49'),
(422, 12, 14, 13, 1, '2020-10-29 20:48:02', '2020-10-29 20:48:02'),
(432, 493, 30, 249, 1, '2020-10-30 14:08:21', '2020-10-30 14:08:21'),
(447, 601, 23, 185, 2, '2020-10-31 00:19:20', '2020-10-31 00:19:25'),
(449, 603, 30, 249, 1, '2020-10-31 22:21:26', '2020-10-31 22:21:26'),
(458, 606, 25, 203, 2, '2020-11-01 22:27:27', '2020-11-01 22:27:30'),
(483, 572, 19, 102, 1, '2020-11-03 18:03:16', '2020-11-03 18:03:16'),
(488, 559, 29, 245, 2, '2020-11-03 23:39:41', '2020-11-03 23:39:43'),
(489, 614, 20, 147, 1, '2020-11-04 21:52:18', '2020-11-04 21:52:18'),
(491, 615, 29, 245, 1, '2020-11-04 22:00:40', '2020-11-04 22:00:55'),
(492, 615, 29, 252, 1, '2020-11-04 22:01:33', '2020-11-04 22:01:33'),
(512, 440, 16, 69, 1, '2020-11-06 14:11:15', '2020-11-06 14:11:15'),
(513, 572, 19, 100, 1, '2020-11-06 18:32:06', '2020-11-06 18:32:06'),
(519, 283, 30, 249, 1, '2020-11-07 14:32:28', '2020-11-07 14:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `hotel_description` longtext NOT NULL,
  `hotel_image` varchar(255) NOT NULL,
  `hotel_reception_image` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `city_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotel_name`, `hotel_description`, `hotel_image`, `hotel_reception_image`, `is_active`, `city_id`) VALUES
(1, 'Hotel Aditya', 'Hotel Aditya International, located in a privileged area of Chhuapatti in Forbesganj city, offers ultimate comfort and luxury. This 2015 established 3-storied hotel is a beautiful combination of traditional grandeur and modern facilities. The large conference room and 22 exclusive guest rooms are furnished with a range of modern amenities such as television, AC and internet access. The hotel has it\'s own restaurant Lazeez which offers local, national and international cuisines. The hotel is inviting, modern and cozy, with great staff, comfortable beds and functional bathrooms, everything you need for a pleasant stay.', 'food-1.jpg', 'adi.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_bookings`
--

CREATE TABLE `hotel_bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `checkin_date` text DEFAULT NULL,
  `checkout_date` text DEFAULT NULL,
  `no_of_adults` text NOT NULL DEFAULT '1',
  `no_of_children` text NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Notes` varchar(255) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `booking_id` text DEFAULT NULL,
  `is_corporate` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_bookings`
--

INSERT INTO `hotel_bookings` (`id`, `name`, `phone`, `email`, `checkin_date`, `checkout_date`, `no_of_adults`, `no_of_children`, `updated_at`, `created_at`, `Notes`, `room_id`, `booking_id`, `is_corporate`) VALUES
(1, 'Gaurav Kumar', '123456789', 'gaurav.jss.027@gmail.com', '12 July, 2020', '12 July, 2020', '1', '0', '2020-07-19 10:58:53', '2020-07-19 10:58:53', 'jkladwjaljkdjlakwjkljd', 2, 'Hotel11595141933', 0),
(2, 'mayank', '8676036607', 'gupta656mayank@gmail.com', '22 July, 2020', '28 July, 2020', '2', '0', '2020-07-19 11:28:56', '2020-07-19 11:28:56', 'jgfgrhkj', 5, 'Hotel1-1595143736', 0),
(3, 'Gaurav Kumar', '1234567890', 'gaurav.jss.027@gmail.com', '15 July, 2020', '19 July, 2020', '1', '0', '2020-07-19 12:53:16', '2020-07-19 12:53:16', 'JKLJ', 4, 'Hotel1-1595148796', 1),
(4, 'Mayank', '9876543210', 'Mayankji@gmail.com', '6 August, 2020', '7 August, 2020', '2', '0', '2020-07-20 05:32:09', '2020-07-20 05:32:09', 'I Would like to reserve a room for night', 2, 'Hotel1-1595208729', 0),
(5, 'rohan', '8676036607', 'gupta656mayank@gmail.com', '22 July, 2020', '27 July, 2020', '2', '0', '2020-07-20 18:07:53', '2020-07-20 18:07:53', 'CALL ME', 4, 'Hotel1-1595254073', 1),
(6, 'nitish', '8676036607', 'gupta656mayank@gmail.com', '22 July, 2020', '23 July, 2020', '1', '0', '2020-07-20 21:09:20', '2020-07-20 21:09:20', 'call me', 1, 'Hotel1-1595264960', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_veg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `image`, `desc`, `res_id`, `created_at`, `updated_at`, `is_veg`) VALUES
(13, 'Mutton Handi', 300.00, '26-09-20_1601097418.jpeg', '3 Pieces( Mutton)', 14, '2020-09-26 14:46:58', '2020-09-30 12:12:39', 0),
(14, 'Chicken Butter Masala', 250.00, '26-09-20_1601097687.jpeg', '3 Pieces (Chicken)', 14, '2020-09-26 14:51:27', '2020-09-30 12:12:48', 0),
(15, 'Chocolate cake (A14 )', 350.00, '26-09-20_1601115338.webp', 'Quantity - 1 pound', 15, '2020-09-26 17:45:35', '2020-09-30 22:07:04', 1),
(17, 'Red valvet cake', 500.00, '26-09-20_1601115361.webp', 'Quantity - 1 pound', 15, '2020-09-26 17:47:31', '2020-09-30 22:07:10', 1),
(18, 'Chocolate cake (A93)', 350.00, '26-09-20_1601115381.webp', 'Quantity - 1 pound', 15, '2020-09-26 17:48:18', '2020-09-30 22:07:15', 1),
(19, 'Doll Cake (vanila flavour)', 1200.00, '26-09-20_1601115405.webp', 'Quantity - 4 pound', 15, '2020-09-26 17:57:21', '2020-09-30 22:07:20', 1),
(20, 'Mutton Butter Masala', 300.00, '26-09-20_1601108924.webp', '3 Pieces( Mutton)', 14, '2020-09-26 17:58:44', '2020-09-30 12:12:55', 0),
(21, 'Dorimon chocolate cake (A117)', 350.00, '26-09-20_1601115433.webp', 'Quantity - 1 pound', 15, '2020-09-26 17:58:47', '2020-09-30 22:07:26', 1),
(22, 'Mutton Masala', 300.00, '26-09-20_1601108975.webp', '3 Pieces( Mutton)', 14, '2020-09-26 17:59:35', '2020-09-30 12:13:03', 0),
(23, 'Vanila Cake (A123)', 650.00, '26-09-20_1601115463.webp', 'Quantity - 2 pound', 15, '2020-09-26 17:59:57', '2020-09-30 22:07:32', 1),
(24, 'Mutton Do Pyaza', 300.00, '26-09-20_1601109009.webp', '3 Pieces( Mutton)', 14, '2020-09-26 18:00:09', '2020-09-30 12:13:10', 0),
(25, 'Mutton Curry', 300.00, '26-09-20_1601109433.webp', '3 Pieces( Mutton)', 14, '2020-09-26 18:07:13', '2020-09-30 12:13:17', 0),
(26, 'Mutton Kadai', 300.00, '26-09-20_1601109932.webp', '3 Pieces( Mutton)', 14, '2020-09-26 18:15:32', '2020-09-30 12:13:31', 0),
(27, 'Chicken Curry', 190.00, '26-09-20_1601111220.webp', '3 Pieces (Chicken)', 14, '2020-09-26 18:37:00', '2020-09-30 12:13:39', 0),
(28, 'Chicken Masala', 200.00, '26-09-20_1601115795.webp', '3 Pieces (Chicken)', 14, '2020-09-26 19:53:15', '2020-09-30 12:13:46', 0),
(29, 'Laziz khas', 115.00, '26-09-20_1601115945.webp', 'S size (pizza with tangy twist & toppings)', 16, '2020-09-26 19:55:45', '2020-10-14 19:08:32', 1),
(30, 'Laziz khas', 179.00, '26-09-20_1601116414.webp', 'M size (pizza with tangy twist & toppings)', 16, '2020-09-26 20:03:34', '2020-10-14 19:09:18', 1),
(31, 'Laziz khas', 252.00, '26-09-20_1601116637.webp', 'L size (pizza with tangy twist & toppings)', 16, '2020-09-26 20:07:17', '2020-10-14 19:12:24', 1),
(32, 'Laziz desi', 115.00, '26-09-20_1601117152.jpg', 'S size (Tomato, Onion, Capsicum )', 16, '2020-09-26 20:15:52', '2020-10-14 19:08:45', 1),
(33, 'Laziz desi', 179.00, '26-09-20_1601117197.jpg', 'M size (Tomato, Onion, Capsicum )', 16, '2020-09-26 20:16:37', '2020-10-14 19:09:30', 1),
(34, 'Laziz desi', 252.00, '26-09-20_1601117306.jpg', 'L size (Tomato, Onion, Capsicum )', 16, '2020-09-26 20:18:26', '2020-10-14 19:12:36', 1),
(35, 'Mix Veg', 170.00, '26-09-20_1601117563.webp', 'Quantity-1', 14, '2020-09-26 20:22:43', '2020-09-30 12:13:51', 1),
(36, 'Chef\'s special', 126.00, '26-09-20_1601117664.webp', 'S size(Bell peppers & Cottage cheese)', 16, '2020-09-26 20:24:24', '2020-10-14 19:12:56', 1),
(37, 'Chef\'s special', 189.00, '26-09-20_1601117722.webp', 'M size(Bell peppers & Cottage cheese)', 16, '2020-09-26 20:25:22', '2020-10-14 19:13:15', 1),
(38, 'Chef\'s special', 285.00, '26-09-20_1601117756.webp', 'L size(Bell peppers & Cottage cheese)', 16, '2020-09-26 20:25:56', '2020-10-14 19:13:31', 1),
(39, 'Malai Kofta (Sweet Gravy)', 200.00, '26-09-20_1601118082.webp', 'Quantity-1', 14, '2020-09-26 20:31:22', '2020-09-30 12:13:57', 1),
(40, 'Shahi Paneer', 190.00, '26-09-20_1601118121.webp', 'Quantity-1', 14, '2020-09-26 20:32:01', '2020-09-30 12:14:02', 1),
(41, 'Veg Manchurian', 180.00, '26-09-20_1601119729.webp', 'Quantity- 1 Bowl', 14, '2020-09-26 20:58:49', '2020-09-30 12:14:08', 1),
(42, 'Paneer Chilli', 200.00, '26-09-20_1601119836.webp', 'Quantity- 1', 14, '2020-09-26 21:00:36', '2020-10-24 18:02:12', 1),
(43, 'Paneer Butter Masala', 220.00, '26-09-20_1601119874.webp', 'Quantity- 1', 14, '2020-09-26 21:01:14', '2020-09-30 12:14:18', 1),
(44, 'Paneer Do-Pyaza', 180.00, '26-09-20_1601121541.webp', 'Quantity-1', 14, '2020-09-26 21:29:01', '2020-09-30 12:14:23', 1),
(45, 'Kadai Paneer', 190.00, '26-09-20_1601121579.webp', 'Quantity- 1', 14, '2020-09-26 21:29:39', '2020-09-30 12:14:28', 1),
(46, 'Paneer Handi', 200.00, '26-09-20_1601131162.webp', 'Quantity-1', 14, '2020-09-27 00:09:22', '2020-09-30 12:14:33', 1),
(47, 'vanila and chocolate mixCake (A71)', 300.00, '26-09-20_1601141036.webp', 'Quantity - 1 pound', 15, '2020-09-27 02:53:56', '2020-09-30 22:07:38', 1),
(48, 'Butterscotch Cake (A106)', 300.00, '26-09-20_1601141109.webp', 'Quantity - 1 pound', 15, '2020-09-27 02:55:09', '2020-09-30 22:07:43', 1),
(49, 'Photo print cake (chocolate )', 600.00, '26-09-20_1601141194.webp', 'Quantity - 1 pound', 15, '2020-09-27 02:56:34', '2020-09-30 22:07:48', 1),
(50, 'Chocolate cake(Am)', 1400.00, '26-09-20_1601141321.webp', 'Quantity - 4 pound', 15, '2020-09-27 02:58:41', '2020-09-30 22:07:53', 1),
(51, 'Veg Hyderabadi Biryani', 190.00, '26-09-20_1601142807.webp', 'Quantity-1 Plate', 14, '2020-09-27 03:23:27', '2020-09-30 12:14:39', 1),
(52, 'Chicken Biryani', 230.00, '26-09-20_1601142920.webp', 'Egg(1Piece) and Chicken(2 Pieces)', 14, '2020-09-27 03:25:20', '2020-09-30 12:14:47', 0),
(53, 'Chicken Hyderabadi Biryani', 260.00, '26-09-20_1601142982.webp', 'Egg(1 Piece) and Chicken(2 Pieces)', 14, '2020-09-27 03:26:22', '2020-09-30 12:14:53', 0),
(54, 'Pineapple Cake (A97)', 300.00, '27-09-20_1601184845.webp', 'Quantity - 1 pound', 15, '2020-09-27 15:04:05', '2020-09-30 22:08:00', 1),
(55, 'Chocolate cake(A86)', 350.00, '27-09-20_1601184970.webp', 'Quantity - 1 pound', 15, '2020-09-27 15:06:10', '2020-09-30 22:08:06', 1),
(56, 'Mutton Dry Fry', 250.00, '27-09-20_1601192913.webp', '8 Pieces', 14, '2020-09-27 17:18:33', '2020-09-30 12:15:00', 0),
(57, 'Chicken Dry Fry', 180.00, '27-09-20_1601193444.webp', '8 Pieces', 14, '2020-09-27 17:27:24', '2020-09-30 12:15:07', 0),
(58, 'Chicken Lolipop', 200.00, '27-09-20_1601194426.webp', '8 Pieces', 14, '2020-09-27 17:43:46', '2020-09-30 12:15:19', 0),
(59, 'Chicken Chilli', 200.00, '27-09-20_1601194470.webp', '8 Pieces', 14, '2020-09-27 17:44:30', '2020-09-30 12:15:27', 0),
(60, 'Chicken Burger', 120.00, '27-09-20_1601194970.webp', 'Quantity-1', 14, '2020-09-27 17:52:50', '2020-09-30 12:15:36', 0),
(61, 'Chicken Pakora', 180.00, '27-09-20_1601195001.webp', '8 Pieces', 14, '2020-09-27 17:53:21', '2020-09-30 12:15:45', 0),
(62, 'Veg Cutlet', 100.00, '27-09-20_1601195414.webp', '2 Pieces', 14, '2020-09-27 18:00:14', '2020-09-30 12:15:52', 1),
(63, 'Carnival', 126.00, '27-09-20_1601219539.webp', 'S size(Corn,Tomato, Capsicum, Jalapeno, Mushroom)', 16, '2020-09-28 00:42:19', '2020-10-14 19:14:47', 1),
(64, 'Carnival', 189.00, '27-09-20_1601219588.webp', 'M size(Corn,Tomato, Capsicum, Jalapeno, Mushroom)', 16, '2020-09-28 00:43:08', '2020-10-14 19:15:06', 1),
(65, 'Carnival', 285.00, '27-09-20_1601219636.webp', 'L size(Corn,Tomato, Capsicum, Jalapeno, Mushroom)', 16, '2020-09-28 00:43:56', '2020-10-14 19:13:41', 1),
(66, 'Veg paprika', 126.00, '27-09-20_1601219967.webp', 'S size (paneer, corn, capsicum, paprika)', 16, '2020-09-28 00:49:27', '2020-10-14 19:15:16', 1),
(67, 'Veg paprika', 189.00, '27-09-20_1601220039.webp', 'M size (paneer, corn, capsicum, paprika)', 16, '2020-09-28 00:50:39', '2020-10-14 19:15:23', 1),
(68, 'Veg paprika', 285.00, '27-09-20_1601220095.webp', 'L size (paneer, corn, capsicum, paprika)', 16, '2020-09-28 00:51:35', '2020-10-14 19:13:51', 1),
(69, 'Paneer paprika', 126.00, '27-09-20_1601220354.webp', 'S size (Peppered paneer, Paprika)', 16, '2020-09-28 00:55:54', '2020-10-14 19:15:36', 1),
(70, 'Paneer paprika', 189.00, '27-09-20_1601220393.webp', 'M size(Peppered paneer, Paprika)', 16, '2020-09-28 00:56:33', '2020-10-14 19:15:55', 1),
(71, 'Paneer paprika', 285.00, '27-09-20_1601220448.webp', 'L size(Peppered paneer, Paprika)', 16, '2020-09-28 00:57:28', '2020-10-14 19:14:02', 1),
(72, 'Masala Dosa', 140.00, '27-09-20_1601221191.webp', 'Quantity-1', 14, '2020-09-28 01:09:51', '2020-09-30 12:16:00', 1),
(73, 'Paneer Chilli Dosa', 220.00, '27-09-20_1601221236.webp', 'Quantity-1', 14, '2020-09-28 01:10:36', '2020-09-30 12:16:08', 1),
(74, 'Veg Uttapam', 80.00, '27-09-20_1601221382.webp', 'Delicious South Indian food', 14, '2020-09-28 01:13:02', '2020-09-30 12:16:15', 1),
(75, 'Veg Steam Momo', 60.00, '27-09-20_1601223634.webp', 'Delicious', 14, '2020-09-28 01:50:34', '2020-09-30 12:16:20', 1),
(76, 'Veg Fried Momo', 80.00, '27-09-20_1601223673.webp', 'Hot and Delicious', 14, '2020-09-28 01:51:13', '2020-09-30 12:16:27', 1),
(77, 'Veg Chilli Momo', 150.00, '27-09-20_1601223718.webp', 'Spicy and tasty', 14, '2020-09-28 01:51:58', '2020-09-30 12:16:33', 1),
(80, 'Veg Chowmin', 100.00, '27-09-20_1601225459.webp', 'An important part of your evening break', 14, '2020-09-28 02:20:59', '2020-09-30 12:16:39', 1),
(82, 'Paneer Chowmin', 180.00, '27-09-20_1601225535.webp', 'The important part of your evening time', 14, '2020-09-28 02:22:15', '2020-09-30 12:16:47', 1),
(83, 'Plane dosa', 35.00, '27-09-20_1601225709.webp', 'quantity :-1', 19, '2020-09-28 02:25:09', '2020-10-09 20:17:33', 1),
(85, 'Masala dosa', 40.00, '27-09-20_1601225835.webp', 'quantity :-1', 19, '2020-09-28 02:27:15', '2020-10-09 20:17:49', 1),
(92, 'Veg Chilli Garlic Noodles', 140.00, '27-09-20_1601230998.webp', 'Quantity-1 Plate', 14, '2020-09-28 03:53:18', '2020-09-30 12:16:54', 1),
(93, 'Veg Schezwan Noodles', 150.00, '27-09-20_1601231042.webp', 'Quantity-1 Plate', 14, '2020-09-28 03:54:02', '2020-09-30 12:17:02', 1),
(95, 'Veg chilli Momo', 60.00, '28-09-20_1601267462.webp', 'Hot and spicy', 19, '2020-09-28 14:01:02', '2020-09-30 12:19:28', 1),
(96, 'Veg Steam Momo', 40.00, '28-09-20_1601267546.webp', 'Tasty and delicious', 19, '2020-09-28 14:02:26', '2020-09-30 12:19:33', 1),
(97, 'Veg Fried Momo', 60.00, '28-09-20_1601267756.webp', 'Hot and tasty', 19, '2020-09-28 14:05:56', '2020-09-30 12:19:39', 1),
(98, 'Chowmim', 40.00, '28-09-20_1601267875.webp', 'Hot and Delicious', 19, '2020-09-28 14:07:55', '2020-09-30 12:19:45', 1),
(100, 'RumPum', 30.00, '28-09-20_1601268317.webp', 'VEG NOODLES RUMPUM', 19, '2020-09-28 14:15:17', '2020-09-30 12:19:54', 1),
(101, 'Paneer Dosa', 50.00, '28-09-20_1601268629.webp', 'Quantity:-1', 19, '2020-09-28 14:20:29', '2020-10-09 20:18:08', 1),
(102, 'Burger', 35.00, '28-09-20_1601270178.webp', 'Quantity:-1', 19, '2020-09-28 14:46:18', '2020-10-09 20:18:24', 1),
(103, 'CHOCO TRUFFLE CAKE', 600.00, '28-09-20_1601270276.webp', '1 pound', 18, '2020-09-28 14:47:56', '2020-09-28 15:11:08', NULL),
(104, 'Paneer Tikka', 70.00, '28-09-20_1601270461.webp', 'Tasty and delicious', 19, '2020-09-28 14:51:01', '2020-09-30 12:20:10', 1),
(105, 'Black Forest', 490.00, '28-09-20_1601270600.webp', '1 pound', 18, '2020-09-28 14:53:20', '2020-09-28 15:11:19', NULL),
(106, 'BLACK FOREST', 490.00, '28-09-20_1601270783.webp', '1 pound', 18, '2020-09-28 14:56:23', '2020-09-28 15:11:30', NULL),
(107, 'VANILA (CUSTOMISED CAKE )', 690.00, '28-09-20_1601271269.webp', '1 pound', 18, '2020-09-28 15:04:29', '2020-09-28 15:10:56', NULL),
(108, 'DOREMON CAKE  ( Vanila )', 840.00, '28-09-20_1601271371.webp', '2 pound', 18, '2020-09-28 15:06:11', '2020-09-28 15:06:11', NULL),
(109, 'FLORAL CAKE', 690.00, '28-09-20_1601271634.webp', '1 pound', 18, '2020-09-28 15:10:34', '2020-09-28 15:10:34', NULL),
(110, 'VANILA CAKE', 440.00, '28-09-20_1601274966.webp', '1 pound', 18, '2020-09-28 16:06:06', '2020-09-28 16:06:06', NULL),
(111, 'CHOCOLATE CAKE', 540.00, '28-09-20_1601275295.webp', '1 pound', 18, '2020-09-28 16:11:35', '2020-09-28 16:11:35', NULL),
(112, 'Vanila Cake (A28)', 300.00, '28-09-20_1601281684.webp', 'Quantity - 1 pound', 15, '2020-09-28 17:58:04', '2020-09-30 22:08:11', 1),
(113, 'Choco - vanila cake(A74)', 300.00, '28-09-20_1601281871.webp', 'Quantity - 1 pound', 15, '2020-09-28 18:01:11', '2020-09-30 22:08:17', 1),
(114, 'Vanila Cake (A72)', 300.00, '28-09-20_1601281981.webp', 'Quantity - 1 pound', 15, '2020-09-28 18:03:01', '2020-09-30 22:08:22', 1),
(115, 'Vanila - strawberry cake (A88)', 600.00, '28-09-20_1601282099.webp', 'Quantity - 1 pound', 15, '2020-09-28 18:04:59', '2020-09-30 22:08:29', 1),
(116, 'Mushroom Matar', 180.00, '28-09-20_1601294003.webp', 'Healthy food with a good taste', 14, '2020-09-28 21:23:23', '2020-09-30 12:17:07', 1),
(117, 'Mushroom Butter Masala', 220.00, '28-09-20_1601294066.webp', 'Healthy and tasty', 14, '2020-09-28 21:24:26', '2020-09-30 12:17:13', 1),
(118, 'Veg Sandwich', 70.00, '28-09-20_1601294149.webp', '4 Pieces', 14, '2020-09-28 21:25:49', '2020-09-30 12:17:19', 1),
(119, 'Bread Omelette', 80.00, '28-09-20_1601294264.webp', '2 Pieces', 14, '2020-09-28 21:27:44', '2020-09-30 12:17:26', 0),
(126, 'Mutton Steam MoMos', 80.00, '30-09-20_1601472701.webp', '1 plate', 20, '2020-09-29 17:10:41', '2020-09-30 23:03:35', 0),
(127, 'Mushroom Chilli', 220.00, '30-09-20_1601433278.webp', 'Nutritious and delicious in taste', 14, '2020-09-30 12:04:38', '2020-09-30 12:04:38', 1),
(128, 'Paneer Pakora', 120.00, '30-09-20_1601433523.webp', 'Fresh Ingredients are used and are delicious.', 14, '2020-09-30 12:08:43', '2020-09-30 12:08:43', 1),
(130, 'Chicken Steam MoMo', 60.00, '30-09-20_1601482062.webp', '1 plate', 20, '2020-10-01 01:37:42', '2020-10-01 01:37:42', 0),
(131, 'Chicken Fry MoMo', 80.00, '30-09-20_1601482199.webp', '1 plate', 20, '2020-10-01 01:39:59', '2020-10-01 01:39:59', 0),
(132, 'Mutton Fry MoMo', 100.00, '30-09-20_1601482268.webp', '1 Plate', 20, '2020-10-01 01:41:08', '2020-10-01 01:55:56', 0),
(133, 'Mutton Rumpum', 80.00, '30-09-20_1601483230.webp', '1 plate', 20, '2020-10-01 01:57:10', '2020-10-01 01:57:10', 0),
(134, 'Chicken RumPum', 60.00, '30-09-20_1601483326.webp', '1 plate', 20, '2020-10-01 01:58:46', '2020-10-01 02:10:51', 0),
(135, 'Chicken Egg RumPum', 80.00, '30-09-20_1601483394.webp', '1 plate', 20, '2020-10-01 01:59:54', '2020-10-01 01:59:54', 0),
(136, 'Mutton Egg RumPum', 100.00, '30-09-20_1601484690.webp', '1 plate', 20, '2020-10-01 02:21:30', '2020-10-01 02:21:30', 0),
(137, 'Mutton Sekua', 150.00, '30-09-20_1601485709.webp', '8 pcs', 20, '2020-10-01 02:38:29', '2020-10-04 21:33:59', 0),
(138, 'Chicken Sekua', 120.00, '30-09-20_1601485953.webp', '8 pcs', 20, '2020-10-01 02:42:33', '2020-10-04 21:34:16', 0),
(139, 'Chicken Leg', 50.00, '30-09-20_1601486014.webp', '1 pcs', 20, '2020-10-01 02:43:34', '2020-10-04 21:34:28', 0),
(140, 'Chicken Chowmin', 60.00, '30-09-20_1601486705.webp', '1 plate', 20, '2020-10-01 02:55:05', '2020-10-01 02:55:05', 0),
(141, 'Chicken Egg Chowmin', 80.00, '30-09-20_1601486775.webp', '1 plate', 20, '2020-10-01 02:56:15', '2020-10-01 02:56:15', 0),
(142, 'Mutton Chowmin', 80.00, '30-09-20_1601486825.webp', '1 plate', 20, '2020-10-01 02:57:05', '2020-10-01 02:57:05', 0),
(145, 'Mutton Egg Chowmin', 100.00, '30-09-20_1601486903.webp', '1 plate', 20, '2020-10-01 02:58:23', '2020-10-01 02:58:23', 0),
(147, 'Double Egg Roll', 40.00, '01-10-20_1601525992.webp', '1 pcs', 20, '2020-10-01 13:49:52', '2020-10-04 21:34:44', 0),
(148, 'Double Egg Chicken Roll', 60.00, '01-10-20_1601526075.webp', '1 plate', 20, '2020-10-01 13:51:15', '2020-10-01 13:51:15', 0),
(149, 'Double Egg Mutton Roll', 80.00, '01-10-20_1601526133.webp', '1 plate', 20, '2020-10-01 13:52:13', '2020-10-01 13:52:13', 0),
(150, 'Chicken Dosa', 80.00, '01-10-20_1601526441.webp', '1 plate', 20, '2020-10-01 13:57:21', '2020-10-01 13:57:21', 0),
(151, 'Mutton Dosa', 100.00, '01-10-20_1601526477.webp', '1 plate', 20, '2020-10-01 13:57:57', '2020-10-01 13:57:57', 0),
(152, 'Chicken Biryani', 120.00, '01-10-20_1601526541.webp', '1 plate', 20, '2020-10-01 13:59:01', '2020-10-01 13:59:01', 0),
(153, 'Mutton Biryani', 140.00, '01-10-20_1601526586.webp', '1 plate', 20, '2020-10-01 13:59:46', '2020-10-01 13:59:46', 0),
(154, 'Chicken Dry Kabab', 120.00, '01-10-20_1601526816.webp', '6 pcs', 20, '2020-10-01 14:03:36', '2020-10-04 21:34:57', 0),
(155, 'Mutton Dry Kabab', 150.00, '01-10-20_1601526848.webp', '6 pcs', 20, '2020-10-01 14:04:08', '2020-10-04 21:35:04', 0),
(156, 'Veg Steam MoMo', 50.00, '01-10-20_1601527777.webp', '1 plate', 20, '2020-10-01 14:19:37', '2020-10-01 14:19:37', 1),
(157, 'Veg Chili MoMo', 100.00, '01-10-20_1601527827.webp', '1 plate', 20, '2020-10-01 14:20:27', '2020-10-01 14:20:27', 1),
(158, 'Veg Dry MoMo', 70.00, '01-10-20_1601527895.webp', '1 plate', 20, '2020-10-01 14:21:35', '2020-10-01 14:21:35', 1),
(159, 'Masala Dosa', 50.00, '01-10-20_1601547099.webp', '1 plate', 20, '2020-10-01 19:41:39', '2020-10-01 19:41:39', 1),
(160, 'Paneer Dosa', 70.00, '01-10-20_1601547202.webp', '1 plate', 20, '2020-10-01 19:42:23', '2020-10-01 19:43:52', 1),
(161, 'Paper Dosa', 40.00, '01-10-20_1601547275.webp', '1 plate', 20, '2020-10-01 19:44:35', '2020-10-01 19:44:35', 1),
(162, 'Butter Dosa', 70.00, '01-10-20_1601547327.webp', '1 plate', 20, '2020-10-01 19:45:27', '2020-10-01 19:45:27', 1),
(171, 'Veg Burger', 40.00, '02-10-20_1601625707.webp', '1 pcs', 20, '2020-10-02 17:31:47', '2020-10-02 17:31:47', 1),
(172, 'Paneer Burger', 50.00, '02-10-20_1601625784.webp', '1 pcs', 20, '2020-10-02 17:33:04', '2020-10-02 17:33:04', 1),
(173, 'Plain Tawa Roti', 15.00, '12-10-20_1602478657.webp', '1 Pc', 14, '2020-10-12 14:01:34', '2020-10-12 14:27:37', 1),
(174, 'Butter Tawa Roti', 20.00, '12-10-20_1602478676.webp', '1 Pc', 14, '2020-10-12 14:03:17', '2020-10-12 14:27:56', 1),
(175, 'Butter Tandoori Roti', 20.00, '12-10-20_1602478696.webp', '1 Pc', 14, '2020-10-12 14:05:15', '2020-10-12 14:28:16', 1),
(176, 'Plain Kulcha', 40.00, '12-10-20_1602478633.webp', '1 Pc', 14, '2020-10-12 14:27:13', '2020-10-12 14:27:13', 1),
(177, 'Cheese Butter Naan', 90.00, '12-10-20_1602478743.webp', '1 Pc', 14, '2020-10-12 14:29:03', '2020-10-12 14:29:03', 1),
(178, 'Butter Naan', 40.00, '12-10-20_1602479215.webp', '1 Pc', 14, '2020-10-12 14:36:55', '2020-10-12 14:36:55', 1),
(179, 'Lachha Paratha', 50.00, '12-10-20_1602480937.webp', '1 Pc', 14, '2020-10-12 15:05:37', '2020-10-12 15:05:37', 1),
(180, 'Plain Rice', 70.00, '12-10-20_1602481593.webp', '1 Plate', 14, '2020-10-12 15:16:33', '2020-10-12 15:16:33', 1),
(181, 'Plain Rice', 50.00, '12-10-20_1602481631.webp', '1/2 Plate', 14, '2020-10-12 15:17:11', '2020-10-12 15:17:11', 1),
(182, 'Jeera Rice', 90.00, '12-10-20_1602482107.webp', '1 Plate', 14, '2020-10-12 15:25:07', '2020-10-12 15:25:07', 1),
(183, 'Jeera Rice', 60.00, '12-10-20_1602482135.webp', '1/2 Plate', 14, '2020-10-12 15:25:35', '2020-10-12 15:25:35', 1),
(184, 'Veg Fried Rice', 150.00, '12-10-20_1602487105.webp', '1 Plate', 14, '2020-10-12 16:48:25', '2020-10-12 16:48:25', 1),
(185, 'Pani Puri', 10.00, '12-10-20_1602492808.webp', '6 pcs', 23, '2020-10-12 18:23:28', '2020-10-12 18:23:28', 1),
(186, 'Tikia  Chat', 20.00, '12-10-20_1602492848.webp', '1 Plate', 23, '2020-10-12 18:24:08', '2020-10-12 18:24:08', 1),
(187, 'Papri Chat', 20.00, '12-10-20_1602492878.webp', '1 Plate', 23, '2020-10-12 18:24:38', '2020-10-12 18:24:38', 1),
(188, 'Mixed Chat', 20.00, '12-10-20_1602492904.webp', '1 Plate', 23, '2020-10-12 18:25:04', '2020-10-12 18:25:04', 1),
(189, 'Fuchka Chat', 20.00, '12-10-20_1602513751.webp', '1 Plate', 23, '2020-10-13 00:12:32', '2020-10-13 00:12:32', 1),
(190, 'Dahi Bara', 30.00, '12-10-20_1602513822.webp', '1 Plate', 23, '2020-10-13 00:13:42', '2020-10-13 00:13:42', 1),
(191, 'Aalu Chop', 5.00, '12-10-20_1602519307.jpg', '1 Pc', 24, '2020-10-13 01:45:07', '2020-10-16 02:45:53', 1),
(192, 'Egg Chop', 10.00, '12-10-20_1602520113.webp', '1 Pc', 24, '2020-10-13 01:58:33', '2020-10-16 02:46:01', 1),
(193, 'Chicken Briyani', 60.00, '12-10-20_1602520251.webp', 'Full plate', 24, '2020-10-13 02:00:51', '2020-10-13 02:01:59', 0),
(194, 'Chicken Biryani', 30.00, '12-10-20_1602520307.webp', 'Half plate', 24, '2020-10-13 02:01:47', '2020-10-13 02:01:47', 0),
(195, 'Nariyal Chop', 5.00, '12-10-20_1602520409.webp', '1 Pc', 24, '2020-10-13 02:03:29', '2020-10-16 02:46:11', 1),
(196, 'Vegetables Chop', 5.00, '12-10-20_1602520547.webp', '1 Pc', 24, '2020-10-13 02:05:47', '2020-10-16 02:46:20', 1),
(197, 'Chicken Pakoda', 40.00, '12-10-20_1602520638.webp', '8 Pc', 24, '2020-10-13 02:07:18', '2020-10-16 02:46:27', 1),
(198, 'Chicken Pakoda', 20.00, '12-10-20_1602520686.webp', '4 Pc', 24, '2020-10-13 02:08:06', '2020-10-16 02:46:35', 1),
(199, 'Veg Momos', 30.00, '13-10-20_1602562941.webp', 'Full plate', 25, '2020-10-13 13:52:21', '2020-10-13 13:52:21', 1),
(200, 'Veg MoMos', 15.00, '13-10-20_1602563083.webp', 'Half plate', 25, '2020-10-13 13:54:43', '2020-10-13 13:54:43', 1),
(201, 'Chicken MoMos', 40.00, '13-10-20_1602563269.webp', 'Full plate', 25, '2020-10-13 13:57:49', '2020-10-13 13:57:49', 0),
(202, 'Chicken MoMos', 20.00, '13-10-20_1602563455.webp', 'Half plate', 25, '2020-10-13 14:00:55', '2020-10-13 14:00:55', 0),
(203, 'Veg Chilli MoMos', 50.00, '13-10-20_1602563612.webp', 'Full plate', 25, '2020-10-13 14:03:32', '2020-10-13 14:03:32', 1),
(204, 'Veg Chilli MoMos', 25.00, '13-10-20_1602563708.webp', 'Half plate', 25, '2020-10-13 14:05:08', '2020-10-13 14:05:08', 1),
(205, 'Chiken Chilli MoMos', 60.00, '13-10-20_1602564096.webp', 'Full plate', 25, '2020-10-13 14:11:36', '2020-10-13 14:16:27', 0),
(208, 'Veg Soup', 15.00, '15-10-20_1602734349.webp', 'Full', 25, '2020-10-15 13:29:09', '2020-10-15 13:29:09', 1),
(209, 'Chicken Soup', 15.00, '15-10-20_1602734441.webp', 'Full', 25, '2020-10-15 13:30:41', '2020-10-15 13:30:41', 1),
(210, 'VEG CHOWMIN', 25.00, '15-10-20_1602734872.webp', 'Quantity - Full plate', 27, '2020-10-15 13:37:52', '2020-10-15 13:37:52', 1),
(211, 'Egg chowmin', 35.00, '15-10-20_1602738676.webp', 'Quantity - Full plate', 27, '2020-10-15 14:41:16', '2020-10-15 14:41:16', 0),
(212, 'Chicken chowmin', 60.00, '15-10-20_1602739078.webp', 'Quantity - full plate', 27, '2020-10-15 14:47:58', '2020-10-15 14:47:58', 0),
(213, 'Egg chicken chowmin', 70.00, '15-10-20_1602739439.webp', 'Quantity - Full plate', 27, '2020-10-15 14:53:59', '2020-10-15 14:53:59', 0),
(214, 'Veg Pasta', 30.00, '15-10-20_1602739812.webp', 'Quantity - Full plate', 27, '2020-10-15 15:00:12', '2020-10-15 15:00:12', 1),
(215, 'Egg pasta', 40.00, '15-10-20_1602746418.webp', 'Quantity - Full plate', 27, '2020-10-15 15:04:39', '2020-10-15 16:50:18', 1),
(216, 'Chicken pasta', 60.00, '15-10-20_1602740261.webp', 'Quantity - Full plate', 27, '2020-10-15 15:07:41', '2020-10-15 15:07:41', 0),
(217, 'Egg chicken pasta', 70.00, '15-10-20_1602740660.webp', 'Quantity - Full plate', 27, '2020-10-15 15:14:20', '2020-10-15 15:14:20', 0),
(218, 'Egg roll', 25.00, '15-10-20_1602741082.webp', 'Quantity - 1 piece', 27, '2020-10-15 15:21:22', '2020-10-15 15:21:22', 0),
(219, 'Egg chicken roll', 40.00, '15-10-20_1602741528.webp', 'Quantity - 1 Piece', 27, '2020-10-15 15:28:48', '2020-10-15 15:28:48', 0),
(220, 'Customized Cake(1)', 400.00, '15-10-20_1602744046.webp', 'Tasty & delicious', 28, '2020-10-15 16:10:46', '2020-10-15 19:41:30', 1),
(221, 'Customized Cake(2)', 600.00, '15-10-20_1602744135.webp', 'Tasty & delicious', 28, '2020-10-15 16:12:15', '2020-10-15 19:41:39', 1),
(222, 'Customized Cake(3)', 600.00, '15-10-20_1602744224.webp', 'Tasty & delicious', 28, '2020-10-15 16:13:44', '2020-10-15 19:41:49', 1),
(223, 'Customized Cake(4)', 1000.00, '15-10-20_1602744259.webp', 'Tasty & delicious', 28, '2020-10-15 16:14:19', '2020-10-15 19:42:01', 1),
(224, 'Customized Cake(5)', 1100.00, '15-10-20_1602744299.webp', 'Tasty & delicious', 28, '2020-10-15 16:14:59', '2020-10-15 19:42:13', 1),
(225, 'Doll Cake', 1200.00, '15-10-20_1602744516.webp', 'Tasty & delicious', 28, '2020-10-15 16:18:36', '2020-10-15 16:18:36', 1),
(226, 'Customized Cake(6)', 1400.00, '15-10-20_1602744549.webp', 'Tasty & delicious', 28, '2020-10-15 16:19:09', '2020-10-15 19:42:28', 1),
(227, 'Vanila Cake', 220.00, '15-10-20_1602776015.webp', 'Tasty & delicious', 28, '2020-10-16 01:03:35', '2020-10-16 01:03:35', 1),
(228, 'Pineapple Cake', 250.00, '15-10-20_1602776051.webp', 'Tasty & delicious', 28, '2020-10-16 01:04:11', '2020-10-16 01:04:11', 1),
(229, 'Strawberry Cake', 250.00, '15-10-20_1602776086.webp', 'Tasty & delicious', 28, '2020-10-16 01:04:46', '2020-10-16 01:04:46', 1),
(230, 'Orange Cake', 250.00, '15-10-20_1602776128.webp', 'Tasty & delicious', 28, '2020-10-16 01:05:28', '2020-10-16 01:05:28', 1),
(231, 'Blue Berry Cake', 250.00, '15-10-20_1602776187.webp', 'Tasty & delicious', 28, '2020-10-16 01:06:27', '2020-10-16 01:06:27', 1),
(232, 'Chocolate Cake', 300.00, '15-10-20_1602776230.webp', 'Tasty & delicious', 28, '2020-10-16 01:07:10', '2020-10-16 01:07:10', 1),
(233, 'Black Forest Cake', 300.00, '15-10-20_1602776261.webp', 'Tasty & delicious', 28, '2020-10-16 01:07:41', '2020-10-16 01:07:41', 1),
(234, 'Black Carrent Cake', 250.00, '15-10-20_1602776352.webp', 'Tasty & delicious', 28, '2020-10-16 01:09:12', '2020-10-16 01:09:12', 1),
(235, 'Soyabin Chop', 6.00, '15-10-20_1602782319.webp', '1 Pc', 24, '2020-10-16 02:48:39', '2020-10-16 02:48:39', 1),
(236, 'Chicken lollipop', 28.00, '15-10-20_1602782380.webp', '1 Pc', 24, '2020-10-16 02:49:40', '2020-10-16 02:49:40', 0),
(237, 'Machli Anda Chop', 6.00, '15-10-20_1602782467.jpg', '1 Pc', 24, '2020-10-16 02:51:07', '2020-10-16 02:51:07', 0),
(238, 'Chicken Chop', 10.00, '15-10-20_1602782566.webp', '1 Pc', 24, '2020-10-16 02:52:46', '2020-10-16 02:52:46', 0),
(239, 'Mushroom chop', 6.00, '15-10-20_1602782663.jpg', '1 Pc', 24, '2020-10-16 02:54:23', '2020-10-16 02:54:23', 1),
(240, 'Bread Chop', 6.00, '15-10-20_1602782816.webp', '1 Pc', 24, '2020-10-16 02:56:56', '2020-10-16 02:56:56', 1),
(241, 'Chindi machli', 7.00, '15-10-20_1602782983.webp', '1 Pc', 24, '2020-10-16 02:59:43', '2020-10-16 02:59:43', 0),
(242, 'Chicken kosha', 10.00, '15-10-20_1602783069.webp', '1 Pc', 24, '2020-10-16 03:01:09', '2020-10-16 03:01:09', 0),
(243, 'Capsicum Onion Pizza', 100.00, '17-10-20_1602920661.webp', 'Taste is awesome 👌; Quantity-1', 29, '2020-10-17 17:14:21', '2020-10-17 17:17:26', 1),
(244, 'Paneer Pizza', 120.00, '17-10-20_1602920736.webp', 'Made with best & quality ingredients ;Quantity-1', 29, '2020-10-17 17:15:36', '2020-10-17 17:18:00', 1),
(245, 'Bread Pizza', 25.00, '17-10-20_1602920773.webp', '1 Pc', 29, '2020-10-17 17:16:13', '2020-10-31 18:38:04', 1),
(247, 'Fried Rice', 100.00, '17-10-20_1602920828.webp', '1 Plate', 29, '2020-10-17 17:17:08', '2020-10-17 17:17:08', 1),
(248, 'Jalebi', 140.00, '19-10-20_1603080353.webp', '1 Kg', 30, '2020-10-19 13:35:53', '2020-10-19 13:35:53', 1),
(249, 'Jalebi', 70.00, '19-10-20_1603080375.webp', '1/2 Kg', 30, '2020-10-19 13:36:15', '2020-10-19 13:36:15', 1),
(250, 'Panipuri', 20.00, '23-10-20_1603436477.webp', '10 pieces                                                      Delicious and yummy', 31, '2020-10-23 16:31:17', '2020-10-23 21:04:59', 1),
(251, 'Papri chat', 30.00, '23-10-20_1603436531.webp', 'Delicious and yummy', 31, '2020-10-23 16:32:11', '2020-10-23 16:32:11', 1),
(252, 'bread paneer pizza', 30.00, '31-10-20_1604138619.webp', 'Quantity :- 1', 29, '2020-10-31 19:33:39', '2020-10-31 19:33:39', 1),
(253, 'JAR CAKE', 75.00, '05-11-20_1604564800.webp', 'Pineapple , chocolate , strawberry flavour', 18, '2020-11-05 18:56:40', '2020-11-05 18:56:40', 1),
(254, 'Oreo Jar Cake', 80.00, '05-11-20_1604564899.webp', 'Pure veg', 18, '2020-11-05 18:58:19', '2020-11-05 18:58:19', 1),
(255, 'Samosa', 7.00, '05-11-20_1604588904.webp', '1 Piece', 28, '2020-11-06 01:38:24', '2020-11-06 01:38:24', 1),
(256, 'Kachori', 7.00, '05-11-20_1604588946.webp', '1 Piece', 28, '2020-11-06 01:39:06', '2020-11-06 01:39:06', 1),
(257, 'Paneer Patties', 20.00, '05-11-20_1604588988.webp', '1 Piece', 28, '2020-11-06 01:39:48', '2020-11-06 01:39:48', 1),
(258, 'Veg Patties', 15.00, '05-11-20_1604589038.webp', '1 Piece', 28, '2020-11-06 01:40:38', '2020-11-06 01:40:38', 1),
(259, 'Hot dog', 30.00, '05-11-20_1604589110.webp', '1 Piece', 28, '2020-11-06 01:41:50', '2020-11-06 01:41:50', 1),
(260, 'Pan Pizza', 30.00, '05-11-20_1604589154.webp', '1 Piece', 28, '2020-11-06 01:42:34', '2020-11-06 01:42:34', 1),
(261, 'Veg Burger', 25.00, '05-11-20_1604589204.webp', '1 Piece', 28, '2020-11-06 01:43:24', '2020-11-06 01:43:24', 1),
(262, 'Cheese Burger', 35.00, '05-11-20_1604589248.webp', '1 Piece', 28, '2020-11-06 01:44:08', '2020-11-06 01:44:08', 1),
(263, 'Paneer Kulcha', 25.00, '05-11-20_1604591779.webp', '1 Piece', 28, '2020-11-06 02:26:19', '2020-11-06 02:26:19', 1),
(264, 'Pizza Roll', 35.00, '05-11-20_1604591815.webp', '1 Piece', 28, '2020-11-06 02:26:55', '2020-11-06 02:26:55', 1),
(265, 'Veg Sandwich', 15.00, '05-11-20_1604591844.webp', '1 Piece', 28, '2020-11-06 02:27:24', '2020-11-06 02:27:24', 1),
(266, 'Veg Grilled Sandwich', 40.00, '05-11-20_1604591879.webp', '1 Plate', 28, '2020-11-06 02:27:59', '2020-11-06 02:27:59', 1),
(267, 'Baked Samosa', 15.00, '05-11-20_1604591923.webp', '1 Piece', 28, '2020-11-06 02:28:43', '2020-11-06 02:28:43', 1),
(268, 'Cheese Pizza', 120.00, '05-11-20_1604591957.webp', '1 Piece', 28, '2020-11-06 02:29:17', '2020-11-06 02:29:17', 1),
(269, 'Samosa chat', 25.00, '06-11-20_1604651301.webp', 'Full plate', 33, '2020-11-06 18:58:21', '2020-11-06 18:58:21', 1),
(270, 'Pakori chat', 25.00, '06-11-20_1604652153.webp', 'Full plate', 33, '2020-11-06 19:12:33', '2020-11-06 19:12:33', 1),
(271, 'Pakori', 20.00, '06-11-20_1604652284.webp', 'Tasty', 33, '2020-11-06 19:14:44', '2020-11-06 19:14:44', 1),
(272, 'Kachori chat', 25.00, '06-11-20_1604652412.webp', 'Full plate', 33, '2020-11-06 19:16:52', '2020-11-07 20:23:46', 1),
(273, 'Kachori', 8.00, '06-11-20_1604652652.webp', '1 piece', 33, '2020-11-06 19:20:53', '2020-11-06 19:20:53', 1),
(274, 'Rasgulla', 7.00, '06-11-20_1604670154.webp', '1 Piece', 28, '2020-11-07 00:12:34', '2020-11-07 00:12:34', 1),
(275, 'Rasmalai', 30.00, '06-11-20_1604670181.webp', '1 Plate', 28, '2020-11-07 00:13:01', '2020-11-07 00:13:01', 1),
(276, 'Gulab Jamun', 12.00, '06-11-20_1604670226.webp', '1 Piece', 28, '2020-11-07 00:13:46', '2020-11-07 00:13:46', 1),
(277, 'Rajbhog', 15.00, '06-11-20_1604670263.webp', '1 Piece', 28, '2020-11-07 00:14:23', '2020-11-07 00:14:23', 1),
(278, 'Cream Chop', 300.00, '06-11-20_1604670301.webp', '1 Kg', 28, '2020-11-07 00:15:01', '2020-11-07 00:15:01', 1),
(279, 'Balushahi', 260.00, '06-11-20_1604670336.webp', '1 Kg', 28, '2020-11-07 00:15:36', '2020-11-07 00:15:36', 1),
(280, 'Pakeeza', 300.00, '06-11-20_1604670368.webp', '1 Kg', 28, '2020-11-07 00:16:08', '2020-11-07 00:16:08', 1),
(281, 'Chamcham', 300.00, '06-11-20_1604670409.webp', '1 Kg', 28, '2020-11-07 00:16:49', '2020-11-07 00:16:49', 1),
(282, 'Motichoor Laddu', 160.00, '06-11-20_1604670441.webp', '1 Kg', 28, '2020-11-07 00:17:21', '2020-11-07 00:17:21', 1),
(283, 'Besan Laddu', 160.00, '06-11-20_1604670464.webp', '1 Kg', 28, '2020-11-07 00:17:44', '2020-11-07 00:17:44', 1),
(284, 'Milk Cake', 260.00, '06-11-20_1604670488.webp', '1 Kg', 28, '2020-11-07 00:18:08', '2020-11-07 00:18:08', 1),
(285, 'Cream Sandwich', 300.00, '06-11-20_1604670519.webp', '1 Kg', 28, '2020-11-07 00:18:39', '2020-11-07 00:18:39', 1),
(286, 'Masala Dosa', 40.00, '07-11-20_1604741182.webp', 'Tasty and spicy', 33, '2020-11-07 19:56:22', '2020-11-07 19:56:22', 1),
(287, 'Plain Dosa', 40.00, '07-11-20_1604741237.webp', 'Tasty and spicy', 33, '2020-11-07 19:57:17', '2020-11-07 19:57:17', 1),
(288, 'Paneer Dosa', 80.00, '07-11-20_1604741336.webp', 'Tasty and spicy', 33, '2020-11-07 19:58:56', '2020-11-07 19:58:56', 1),
(289, 'Paneer Masala Dosa', 60.00, '07-11-20_1604741382.webp', 'Tasty and spicy', 33, '2020-11-07 19:59:42', '2020-11-07 20:24:08', 1),
(290, 'Samosa', 8.00, '07-11-20_1604742063.webp', 'Tasty and crunchy', 33, '2020-11-07 20:11:03', '2020-11-07 20:11:03', 1),
(291, 'Paneer', 360.00, '07-11-20_1604742105.webp', '1 kg', 33, '2020-11-07 20:11:45', '2020-11-07 20:11:45', 1),
(292, 'Malai chaap', 25.00, '07-11-20_1604742254.webp', 'Tasty and spicy', 33, '2020-11-07 20:14:14', '2020-11-07 20:14:14', 1),
(293, 'Curd (Dahi)', 130.00, '07-11-20_1604742401.webp', '1 kg', 33, '2020-11-07 20:16:41', '2020-11-07 20:16:41', 1),
(294, 'Papri chat', 25.00, '07-11-20_1604742520.webp', 'Full plate', 33, '2020-11-07 20:18:40', '2020-11-07 20:18:40', 1),
(295, 'Rasgullla', 13.00, '07-11-20_1604742562.webp', '1 piece', 33, '2020-11-07 20:19:22', '2020-11-07 20:19:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_05_18_034318_add_usertype_to_users', 2),
(8, '2020_05_18_042057_create_posts_table', 3),
(9, '2020_05_18_165529_add_description_to_posts', 4),
(11, '2020_05_19_041412_create_cart_items_table', 5),
(12, '2020_05_19_083031_add_no_of_requests_to_users', 6),
(13, '2020_05_19_152002_add_category_to_posts', 7),
(14, '2020_05_20_083130_add_discount_to_posts', 8),
(15, '2020_05_20_090354_add_discount_to_cart_items', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rajgulshan573@gmail.com', '$2y$10$ITtebO8cLk.rJgWsALemV.miVNuPerXcsJxTQ3/9Pp5Rs4M.8EHr.', '2020-06-10 09:31:48'),
('gaurav.jss.027@gmail.com', '$2y$10$Q6Yi5Yc6hcqmhIL4N/wYyu/9/AbcMl3b5xxClbhFoSc0fnR1mnPrS', '2020-06-10 09:40:05'),
('rahmatkhanrk3002396@gmail.com', '$2y$10$zJqBtvKBZnOO7rfd/.yPy.kYVPdc8.IxmTTOWVk6iOeVrbNjI0A5K', '2020-06-12 13:05:17'),
('kumarpurushottam431@gmail.com', '$2y$10$O4CdFt7e/ijNjTSLzg9u5.1TWoKs5TyEB0f9..7nW0y531N7KwSO2', '2020-06-23 20:41:10'),
('as0720835@gmail.com', '$2y$10$jMFSgiKRzM3Jvdiu33RKEev9sbjMPP16PhdkX.O3b9X60/AjRW826', '2020-06-26 09:54:20'),
('devimithila70@gmail.com', '$2y$10$Wh28Sr4tdOjaOKRx7an5VumoRNrAFtunuuMAqejHPOgTyvmhIDWAK', '2020-07-02 16:31:40'),
('amanraj9123fbg@gmail.com', '$2y$10$g3ZwGuy77JiQBL6kt2DJ2.V4A2P6ljX54VheeRSDnFqEraohxnL22', '2020-07-20 11:34:04'),
('bulbulfbg1@gmail.com', '$2y$10$fRbGvGWytR1fkgusmK3TpeTjCL8zFpxVtPklUXfRceyi1P3U1g3PO', '2020-07-20 16:30:03'),
('ashishkhatri431@gmail.com', '$2y$10$RLkNUVibrLxtMkdeInJWk.GUBi1T8b8EF.1VkNSDTLesTCyBzgFkS', '2020-07-24 21:55:03'),
('rajankumarthakur40@gmail.com', '$2y$10$WdwP6LJW6BAGPzD5klLCQ.5dG6ey4xzkfO9M4aEmVaH2O6VJT21my', '2020-08-06 15:21:26'),
('kumarimamta0635@gmail.com', '$2y$10$AGL87hGiKWyoeJXojXL.euBq/ht9Zoef.MrhMfD7FupjdZXfznhve', '2020-08-10 19:49:22'),
('gupta656mayank@gmail.com', '$2y$10$m1Mw0N0irQcOp5ZJOxZr/OKHA44DxDtLrdZ2I3j5HoJ7vbBrWrq4O', '2020-08-10 21:21:39'),
('ankitmandal476@gmail.com', '$2y$10$WaSCr3pyD1565E9aVYbJNuXI2wnbAURZblkmA2t2s9UdaModjHeGi', '2020-08-10 21:27:33'),
('ayushprakashfbg@gmail.com', '$2y$10$7gPYiF0sHwy8p8cDHAwcou0l5umTFJY3g6IMzcKWf2XetSOT89pli', '2020-08-12 21:47:52'),
('Shubhamkumar294@gmail.com', '$2y$10$Mo1stcOPyySC6yyAyRtLWenNrjDtR78oIzH2vGnSpLnetKyMUNmW6', '2020-08-15 20:38:06'),
('muhammadkalimullah5@gmail.com', '$2y$10$XipvybaAxqrjeuAiS6hHIOHXytPhPwHXbR8YPxLVreU3QAXZJovyu', '2020-08-18 18:00:51'),
('pg9006369171@gmail.com', '$2y$10$.h1tFFrBr/3yaicPWC0RiepfX5yTM/1ql4MIV8tkWCEZIw0mcftY6', '2020-08-22 13:29:42'),
('rajhritik1976@gmail.com', '$2y$10$NSdAwWOPoQZHiPmmOzBal.UxNed3ArgiKN2dnSFpBmy7crPVpTA6m', '2020-08-23 14:37:25'),
('shantanusourav8083@gmail.com', '$2y$10$icwDjvGeIZLJ17NQdLH3beMVYZOu9MbRhIG4njd5uTXlhqMS8Y2My', '2020-08-25 13:09:38'),
('aadarshkamt5678@gmail.com', '$2y$10$k4FT7jEjgI1WaEJErFGCaO74sQBmqWGAD957XU.Rc9FbATc5FPyXy', '2020-08-27 18:37:32'),
('abhishekrajfbg7070@gmail.com', '$2y$10$uM1Tv4rMG7a4HaM9erLulew3iRPeGBXkgA/kR8Am2.M6vhHkPGRaK', '2020-08-28 23:36:06'),
('vineetkr9304227415@gmail.com', '$2y$10$mYduOqIKgzQsAnbIkq0aYeeypaDDFGxkHY2TKRKcbXvwBxBidb1fG', '2020-08-31 02:10:43'),
('mayank.gupta@imsnoida.com', '$2y$10$H2LDTOWsI4cCBZ9J24ox0uQhgV36.oInUqBoOj9ZK0jtjoL0tgbtK', '2020-08-31 03:11:46'),
('chutkiwalathanos@gmail.com', '$2y$10$lCOEx6pdTEJqB8mjZBz/neOBHnnCvtG68wQj9lv0K2UaCXZAeYLQe', '2020-09-13 01:32:42'),
('sannikumarmehta7878@gmail.com', '$2y$10$blzjJRIQyHEjv6o.0Vim0u2pCoX2CV/rwvDp56P8dxVA4Kqx59NAq', '2020-09-15 14:23:43'),
('rajs71154@gmail.com', '$2y$10$3ArVpKJdUVK6GNckGMDTA.yBrMFkNEHmovf/f1QDlNGS4fmo6TrOe', '2020-09-29 20:09:12'),
('sudhagupta655@gmail.com', '$2y$10$98qwKkhISu0AJ1nSgvAqD.qh8QAIqxuj.k4EBN9vT4l.N7KfPHa9K', '2020-10-06 23:07:54'),
('deepkumarmahato106@gmail.com', '$2y$10$Lz5642lbI5t84INi.nsih.YBjmyj8ke8w2XESQ.d.GoRhHFhwm4we', '2020-10-12 18:47:20'),
('sanjeev.fbg.34@gmail.com', '$2y$10$M.ikCZJCvah4e.Znkwv1nuFf7BvdL5zYozkD/q9/m65Qs0v/Yb5.O', '2020-10-14 21:52:37'),
('dk75011@gmail.com', '$2y$10$KpebeLzU7ebxJPCBTetjCeU0CQC4BsPwVosfZeoGq8plAbA4tbXqq', '2020-10-23 04:33:04'),
('jyotikumarifbg29@gmail.com', '$2y$10$fnx3aKAyoVSr8rTkvYLuhuDB.75Li7z3k6VmnDZAgTW0b9HsC06fK', '2020-10-28 22:26:25'),
('keshri95krishna@gmail.com', '$2y$10$86.ZxVGUpuSAUL9FF9JL6e70zzXhPWeqrkGErZKV5APB.ZZkLTgHu', '2020-10-30 17:10:43'),
('rspranjan123@gmail.com', '$2y$10$ZnQARiI0g/bjbbCh8lSjIeNDcXiEky3QB9njKLWP0aEWk36V7OFgS', '2020-10-30 19:44:00'),
('viratsharma12346789@gmail.com', '$2y$10$rha72W9Jh6sTE2F2Tm.WOuPlIoaUrGsMpfTjFIMjrfW8hnMcP9uWe', '2020-11-01 23:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `patna_carts`
--

CREATE TABLE `patna_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patna_carts`
--

INSERT INTO `patna_carts` (`id`, `user_id`, `item_id`, `item_type`, `created_at`, `updated_at`, `item_quantity`) VALUES
(1, 11, 1, 'food', '2020-07-26 08:54:37', '2020-07-26 08:54:37', 1),
(2, 11, 1, 'food', '2020-07-26 09:29:37', '2020-07-26 09:29:37', 1),
(3, 11, 1, 'food', '2020-07-26 09:30:27', '2020-07-26 09:30:27', 1),
(4, 11, 1, 'food', '2020-07-26 09:40:00', '2020-07-26 09:40:00', 1),
(6, 242, 17, 'food', '2020-07-26 10:10:32', '2020-07-26 10:10:32', 1),
(7, 242, 18, 'food', '2020-07-26 10:11:46', '2020-07-26 10:11:46', 1),
(30, 234, 18, 'food', '2020-07-28 21:31:40', '2020-07-28 21:31:40', 1),
(31, 234, 1, 'food', '2020-07-28 21:31:49', '2020-07-28 21:31:49', 1),
(32, 234, 3, 'food', '2020-07-28 21:31:59', '2020-07-28 21:31:59', 1),
(33, 234, 2, 'food', '2020-07-29 21:20:31', '2020-07-29 21:20:31', 1),
(34, 255, 8, 'food', '2020-08-12 17:10:04', '2020-08-12 17:10:04', 1),
(35, 255, 7, 'food', '2020-08-12 17:10:04', '2020-08-12 17:10:04', 1),
(36, 255, 6, 'food', '2020-08-12 17:10:04', '2020-08-12 17:10:04', 1),
(37, 255, 9, 'food', '2020-08-12 17:10:05', '2020-08-12 17:10:05', 1),
(38, 255, 10, 'food', '2020-08-12 17:10:05', '2020-08-12 17:10:05', 1),
(39, 255, 9, 'food', '2020-08-12 17:10:06', '2020-08-12 17:10:06', 1),
(40, 255, 10, 'food', '2020-08-12 17:10:06', '2020-08-12 17:10:06', 1),
(41, 255, 11, 'food', '2020-08-12 17:10:06', '2020-08-12 17:10:06', 1),
(42, 255, 10, 'food', '2020-08-12 17:10:07', '2020-08-12 17:10:07', 1),
(43, 255, 11, 'food', '2020-08-12 17:10:07', '2020-08-12 17:10:07', 1),
(44, 255, 10, 'food', '2020-08-12 17:10:08', '2020-08-12 17:10:08', 1),
(45, 255, 11, 'food', '2020-08-12 17:10:09', '2020-08-12 17:10:09', 1),
(46, 255, 11, 'food', '2020-08-12 17:10:09', '2020-08-12 17:10:09', 1),
(47, 255, 11, 'food', '2020-08-12 17:10:09', '2020-08-12 17:10:09', 1),
(48, 255, 11, 'food', '2020-08-12 17:10:10', '2020-08-12 17:10:10', 1),
(49, 255, 11, 'food', '2020-08-12 17:10:11', '2020-08-12 17:10:11', 1),
(52, 258, 4, 'food', '2020-08-28 16:45:43', '2020-08-28 16:45:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patna_food`
--

CREATE TABLE `patna_food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_price` int(11) NOT NULL,
  `food_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patna_food`
--

INSERT INTO `patna_food` (`id`, `food_name`, `food_price`, `food_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'PineApple Cake', 270, 'Cake', 1, '2020-07-26 11:58:31', '2020-07-26 11:58:31'),
(2, 'Vanilla Cake', 250, 'Cake', 1, '2020-07-26 11:58:56', '2020-07-26 11:58:56'),
(3, 'Chocolate Cake', 320, 'Cake', 1, '2020-07-26 11:58:56', '2020-07-26 11:58:56'),
(4, 'Black Forest Cake', 300, 'Cake', 1, '2020-07-26 11:58:56', '2020-07-26 11:58:56'),
(5, 'Choco Truffle Cake', 400, 'Cake', 1, '2020-07-26 11:52:26', '2020-07-26 11:52:26'),
(6, 'Choco Marble Cake', 500, 'Cake', 1, '2020-07-26 11:52:26', '2020-07-26 11:52:26'),
(7, 'Kitkat Cake', 550, 'Cake', 1, '2020-07-26 11:53:07', '2020-07-26 11:53:07'),
(8, 'Fondent Cake', 320, 'Cake', 1, '2020-07-26 11:53:07', '2020-07-26 11:53:07'),
(9, 'Strawberry Cake', 270, 'Cake', 1, '2020-07-26 11:54:10', '2020-07-26 11:54:10'),
(10, 'Orange Cake', 320, 'Cake', 1, '2020-07-26 11:54:10', '2020-07-26 11:54:10'),
(11, 'Blue Berry Cake', 270, 'Cake', 1, '2020-07-26 11:54:10', '2020-07-26 11:54:10'),
(12, 'Black Carrent Cake', 270, 'Cake', 1, '2020-07-26 11:54:10', '2020-07-26 11:54:10'),
(13, 'Lichi Cake', 320, 'Cake', 1, '2020-07-26 11:56:43', '2020-07-26 11:56:43'),
(14, 'Fresh Fruit Cake', 370, 'Cake', 1, '2020-07-26 11:56:43', '2020-07-26 11:56:43'),
(15, 'Fruit Nut Cake', 420, 'Cake', 1, '2020-07-26 11:56:43', '2020-07-26 11:56:43'),
(16, 'Butter Scotch Cake', 320, 'Cake', 1, '2020-07-26 11:56:43', '2020-07-26 11:56:43'),
(17, 'Rainbow Cake', 320, 'Cake', 1, '2020-07-26 11:56:43', '2020-07-26 11:56:43'),
(18, 'Vanila Pastry', 25, 'Pastry', 1, '2020-07-26 12:01:39', '2020-07-26 12:01:39'),
(19, 'Pineapple Pastry', 30, 'Pastry', 1, '2020-07-26 12:01:39', '2020-07-26 12:01:39'),
(20, 'Strawberry Pastry', 35, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(21, 'Orange Pastry', 30, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(22, 'Black Carrent Pastry', 30, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(23, 'Lichi Pastry', 30, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(24, 'Chocolate Pastry', 35, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(25, 'Black Forest Pastry', 30, 'Pastry', 1, '2020-07-26 12:03:58', '2020-07-26 12:03:58'),
(26, 'Choco Truffle Pastry', 50, 'Pastry', 1, '2020-07-26 12:03:59', '2020-07-26 12:03:59'),
(27, 'Blue Berry Pastry', 40, 'Pastry', 1, '2020-07-26 12:03:59', '2020-07-26 12:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noimage.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(22, 12, 'Almirah with Drawer', '1', 7300, 1, 'almirah_1590140863.jpeg', '2020-05-22 13:47:43', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 13.7, 1, 5),
(23, 12, 'Dressing Table', '1', 12500, 1, 'aala_1590141079.jpeg', '2020-05-22 13:51:19', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 13.6, 1, 5),
(25, 12, 'Wooden Alna', '1', 5500, 1, 'WhatsApp Image 2020-05-21 at 10.33.47 AM_1590141300.jpeg', '2020-05-22 13:55:00', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 25.45, 1, 5),
(26, 12, 'Dressing Table with drawer', '1', 14500, 1, 'WhatsApp Image 2020-05-21 at 10.32.01 AM_1590141369.jpeg', '2020-05-22 13:56:09', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 6.93, 1, 5),
(28, 12, 'Small Wooden Temple', '1', 4200, 1, 'small_1590142249.jpeg', '2020-05-22 14:10:49', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 21.43, 1, 5),
(29, 12, 'Big Wooden Temple', '1', 6000, 1, 'tem_1590142422.jpeg', '2020-05-22 14:13:42', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 15, 1, 5),
(30, 12, 'Dining Table With 6 Chairs', '1', 42000, 1, 'WhatsApp Image 2020-05-21 at 10.21.30 AM_1590142557.jpeg', '2020-05-22 14:15:57', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 5.71, 1, 5),
(31, 12, 'Sofa', '1', 22000, 1, 'WhatsApp Image 2020-05-21 at 10.17.15 AM_1590142631.jpeg', '2020-05-22 14:17:11', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 18.18, 1, 5),
(32, 12, 'Box Palag', '1', 45000, 1, 'WhatsApp Image 2020-05-21 at 10.16.28 AM (1)_1590145540.jpeg', '2020-05-22 15:05:40', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 8, 1, 5),
(33, 12, 'Rani Box Palang', '1', 48000, 1, 'WhatsApp Image 2020-05-21 at 10.15.21 AM_1590145706.jpeg', '2020-05-22 15:08:26', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 9.79, 1, 5),
(34, 12, 'Dressing Table New', '1', 11300, 1, 'WhatsApp Image 2020-05-21 at 10.13.19 AM_1590145785.jpeg', '2020-05-22 15:09:45', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 9.73, 1, 5),
(35, 12, 'Meatcase(Drawer)', '1', 6800, 1, 'WhatsApp Image 2020-05-21 at 10.11.20 AM_1590145919.jpeg', '2020-05-22 15:11:59', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 11.76, 1, 5),
(36, 12, 'Box Palag 6 by 7', '1', 41200, 1, 'WhatsApp Image 2020-05-21 at 10.09.42 AM_1590146289.jpeg', '2020-05-22 15:18:09', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 8.98, 1, 5),
(37, 12, 'Steel Alna', '1', 2000, 1, 'WhatsApp Image 2020-05-21 at 10.03.42 AM_1590146375.jpeg', '2020-05-22 15:19:35', '2020-08-30 07:23:05', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 7.2, 1, 5),
(38, 12, 'Fancy Tea Table', '1', 13800, 1, 'WhatsApp Image 2020-05-21 at 10.06.24 AM_1590146473.jpeg', '2020-05-22 15:21:13', '2020-08-30 07:23:06', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 7.25, 1, 5),
(40, 12, 'Marvel Dining Table', '1', 19500, 1, 'WhatsApp Image 2020-05-21 at 10.01.54 AM_1590146745.jpeg', '2020-05-22 15:25:45', '2020-08-30 07:23:06', 'It provides you the ease you required after getting tired and can be used in various works.It give all kind of comforts you need.It  attracts everyone in today\'s time and make your house look beautiful.', 5.13, 1, 5),
(44, 18, 'Redmi 7A', '1', 6999, 1, 'IMG_20200522_195509_1590157608.jpg', '2020-05-22 18:24:02', '2020-09-06 00:46:51', '2 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n13.84 cm (5.45 inch) HD+ Display\r\n12MP Rear Camera | 5MP Front Camera\r\n4000 mAh Li-Polymer Battery\r\nQualcomm Snapdragon 439 Processor', 4.29, 1, 33),
(57, 20, 'Sony HT-S700RF 1000 W Bluetooth Soundbar', '1', 39990, 1, 'IMG-20200523-WA0005_1590180147.jpg', '2020-05-23 00:42:27', '2020-08-30 07:23:06', 'Lose yourself in the world of enchanting music with this Sony Bluetooth Tower Speaker. With a total power output of 1000 W, you can enjoy your favourite movies and music in greater detail and depth. It also comes, Tall-boy speakers to deliver true surround sound.', 5, 1, 1),
(59, 20, 'Sony HT-S350 Wireless Subwoofer Bluetooth Soundbar (BIT)', '1', 18990, 1, 'IMG-20200523-WA0008_1590180591.jpg', '2020-05-23 00:49:51', '2020-08-30 07:23:06', 'Simple to set up and beautiful to look at, this 2.1 channel sound bar features a powerful wireless subwoofer for deeper, richer bass and S-Force PRO Front Surround for a cinematic audio experience.', 5.27, 1, 1),
(60, 20, 'Sony HT-S20R Dolby Digital 400 W Bluetooth Soundbar(BIT)', '1', 19990, 1, 'IMG-20200523-WA0006_1590180711.jpg', '2020-05-23 00:51:51', '2020-08-30 07:23:06', 'Get the best seat in the house. A sound bar, subwoofer and rear speakers create authentic surround sound, while 400W output and Dolby Digital® help put you right at the heart of all your favourite movies.', 25.01, 1, 1),
(61, 20, 'Sony RT3 Home Theater System with Dolby 600 W Bluetooth Soundbar(BIT)', '1', 18990, 1, 'IMG-20200522-WA0058_1590181199.jpg', '2020-05-23 00:54:52', '2020-08-30 07:23:06', 'Immerse yourself in every movie with 5.1 channels of real surround sound. Rear speakers and an external subwoofer work with a 3ch sound bar to deliver true cinematic surround sound, while the S-Master digital amp ensures the purest movie sound. ', 5.27, 1, 1),
(62, 20, 'Sony HT-IV300 Dolby Digital 1000 W Home Theatre(BIT)', '1', 22990, 1, 'IMG-20200522-WA0057_1590181009.jpg', '2020-05-23 00:56:49', '2020-08-30 07:23:06', 'Whether it\'s action sequences, concerts or football matches, you\'ll feel like you\'re at the heart of the action with this 1,000 W, 5.1ch system. Make a direct connection via a single HDMI cable or optical input to upgrade your viewing experience, and enjoy thrilling, immersive surround sound thanks to powerful Sony audio technology.', 4.35, 1, 1),
(63, 20, 'Sony Bravia A9G 139cm (55 inch) Ultra HD (4K) OLED Smart Android TV (BIT)', '1', 299990, 1, 'IMG-20200522-WA0059_1590181509.jpg', '2020-05-23 01:05:09', '2020-08-30 07:23:06', 'With the Sony MASTER Series KD-65A9G Smart TV in your home, the world of your favorite shows, movies, and games will come alive in your living room or bedroom. This high-end smart TV features more than 8 Million Self-illuminating Pixels, the Acoustic Surface Audio+ technology, and Sony’s 4K HDR Processor X1 Ultimate feature to offer you clean visuals along with immersive audio for an exciting entertainment experience.', 26.65, 1, 1),
(65, 20, 'Sony Bravia R352F 101.6cm (40 inch) Full HD LED TV  (BIT)', '1', 41990, 1, 'IMG-20200522-WA0056_1590182052.jpg', '2020-05-23 01:14:12', '2020-08-30 07:23:06', 'Enjoy your favorite videos and movies in Full HD clarity on this LED TV from Sony. Designed with a 1920 x 1080p resolution, this TV makes every scene sharper and more refined. With ClearPhase Technology, you can listen to music tracks in its precise and natural sound.', 16.67, 1, 1),
(68, 17, 'Garam Masala', '1', 70, 1, 'IMG_20200523_050550_1590190581.jpg', '2020-05-23 03:36:21', '2020-08-30 07:23:06', 'Upgrade your culinary skills . It is not just add taste to food but has innumerable health benefits . It hrlps to sloe down ageing process, soothes burning sesational and diarrhoea and helps to absord vital nutients like vitamins and minerals essential for growth. NET:-100G', 10, 1, 2),
(69, 17, 'Haldi Powder', '1', 50, 1, 'IMG_20200523_051021_1590190853.jpg', '2020-05-23 03:40:53', '2020-08-30 07:23:06', 'Healthy way of cooking . An effective herb, haldi powder works wonders for people with acute joints pains , bloting, intestinal gas,etc. being anti-inflammatory in nature, it heals wounds at a rapid rate,prevents from cold and makes the immune system strong. NET:-100G', 10, 1, 2),
(70, 17, 'Red Chilli Powder', '1', 55, 1, 'IMG_20200523_051300_1590191001.jpg', '2020-05-23 03:43:21', '2020-08-30 07:23:06', 'Healthy combo of spice and nutrition. Every dish is incomplete without .\'Lal mirch masala\' it lowers the of risks hearts attacks, helps to redue. Stomach ulcers, aids in digestion and weight loss. It helps to control aastham, joints pain and cleanses the blood. NET:-100G', 10, 1, 2),
(71, 17, 'Chat Masala', '1', 60, 1, 'IMG_20200523_051513_1590191134.jpg', '2020-05-23 03:45:34', '2020-08-30 07:23:06', 'Sprinkle a pinch for peppery flavour . Herbal chat masala is nutritious,tastier and tangy to taste. Asit is made of therapeutic herbs it helps to relieve constipation,aids in proper digestion and of course adds taste to the snack. NET:-100G', 10, 1, 2),
(74, 17, 'Kitchen King Powder', '1', 80, 1, 'IMG_20200523_053621_1590192461.jpg', '2020-05-23 04:07:41', '2020-08-30 07:23:06', 'Makes every dish special . The aromatic masala adds flavour,taste and retains sensations,easy to digest and regulates blood circulation. NET:-100G', 10, 1, 2),
(75, 17, 'Badam-E-Kheer', '1', 120, 1, 'IMG_20200523_053925_1590192586.jpg', '2020-05-23 04:09:46', '2020-08-30 07:23:06', 'Entice yours taste nuds. Instant dessert to cure sugar craving.it is easy to make and nutritous.NET:-125G', 10, 1, 2),
(88, 17, 'Aloe Coco Cookies', '1', 80, 1, 'IMG_20200523_074443_1590203634.jpg', '2020-05-23 07:13:54', '2020-08-30 07:23:07', 'Healthy delights to satisfy choco cravings . Perfact snack for hunger pangs in between the meals .high in fibre and taste,it is ultimate mood alleviator that can be binged upon without worrying about calories. NET:-150G', 10, 1, 2),
(89, 17, 'Aloe Cumin Cookies', '1', 80, 1, 'IMG_20200523_074504_1590203778.jpg', '2020-05-23 07:16:18', '2020-08-30 07:23:07', 'Cumin delights to satsfy hunger pangs. Perfact snack for hunger pangs in between the meals. High in fibre and taste, it is ultimate mood alleviator that can be binged upon without worring about calories. NET:-150G', 10, 1, 2),
(90, 17, 'Riceen(Rice Bran Oil)1L', '1', 180, 1, 'IMG_20200523_074807_1590203900.jpg', '2020-05-23 07:18:20', '2020-08-30 07:23:07', 'Healthy way of cooking.It is balances saturated and unsaturated fats .it contains Omega 3 and 6 that helps to control high blood pressure, joints pain and strengthens digestive system. It helps to reduce heart problems ,bulids nervous and immune system . NET:-1L', 10, 1, 2),
(97, 17, 'Shri Tulsi ( Immunity booster )', '1', 195, 1, 'IMG_20200523_121019_1590216333.jpg', '2020-05-23 10:45:33', '2020-08-30 07:23:07', 'Helps to fight more than 200 diseases like cough , cold , fever , bronchitis , lung infection and digestive problems', 10, 1, 2),
(105, 18, 'Redmi A3', '1', 14999, 1, 'IMG_20200523_193752_1590242932.jpg', '2020-05-23 18:08:52', '2020-09-06 00:36:54', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB\r\n15.44 cm (6.08 inch) HD+ Display\r\n48MP + 8MP + 2MP | 32MP Front Camera\r\n4030 mAh Battery\r\nQualcomm Snapdragon 665 Processor\r\nTCS', 13.33, 1, 33),
(116, 19, 'Mi Wi-Fi 1080P Basic Security Camera', '1', 2299, 1, 'IMG_20200525_225000_1590427379.jpg', '2020-05-25 21:22:59', '2020-09-06 00:40:15', 'For Indoor Security Camera Use\r\nNight Vision Feature\r\nNo of Channels: 0\r\n1080 P Full HD resolution\r\nUltra-wide 130 degree Angle Lens\r\nAdvanced AI Motion Detection\r\nTalkback feature ( 2-way audio )\r\nUpto 64GB micro-SD storag(IIM)', 23, 1, 33),
(118, 19, 'Deltasales mi XiaoFang 1S Night Vision WiFi IP Smart 1080P CCTV Camera Security Camera  (64 GB, 1 Channel)', '1', 3999, 1, 'IMG_20200525_224951_1590427882.jpg', '2020-05-25 21:31:22', '2020-08-30 07:23:07', 'For Indoor & Outdoor Security Camera Use\r\n64 HDD\r\nNight Vision Feature\r\nNo of Channels: 1 (IIM)', 47, 1, 1),
(119, 18, 'Nokia 105 Dual sim', '1', 1299, 1, 'IMG_20200525_230306_1590435436.jpg', '2020-05-25 21:33:44', '2020-09-06 00:40:31', '4 MB RAM | 4 MB ROM\r\n4.57 cm (1.8 inch) Display\r\n800 mAh Battery(IIM)', 0, 1, 31),
(122, 19, 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory Card', '1', 699, 1, 'IMG-20200525-WA0028_1590428265.jpg', '2020-05-25 21:37:45', '2020-09-06 00:49:29', 'For Mobile\r\nCapacity: 16 GB\r\nMicroSDHC\r\nClass 10\r\nRead Speed: 98 MB/   (IIM)', 41, 1, 32),
(123, 18, 'Samsung EVO Plus 64 GB MicroSDXC Class 10 100 MB/s Memory Card', '1', 1899, 1, 'IMG_20200525_230731_1590435386.jpg', '2020-05-25 21:38:01', '2020-09-06 00:42:25', 'For Mobile\r\nCapacity: 64 GB\r\nMicroSDXC\r\nClass 10\r\nRead Speed: 100 MB/s(IIM)', 59, 1, 32),
(124, 19, 'SanDisk CRUZER BLADE USB DRIVE 16 GB Pen Drive', '1', 426, 1, 'IMG-20200525-WA0027_1590428378.jpg', '2020-05-25 21:39:38', '2020-09-06 00:44:21', 'SanDisk CRUZER BLADE USB DRIVE 16 GB Pen Drive (IIM)', 22, 1, 32),
(130, 20, 'Bajaj Esteem 400mm Table Fan', '1', 2160, 1, 'IMG-20200526-WA0002_1590436695.jpg', '2020-05-25 23:58:15', '2020-08-30 07:23:07', 'It is do silent operation,full copper motor,durable,50w,Includes: Motor body, Stand,guard blade assy,silent operation,full copper motor ,durable .', 5.09, 1, 1),
(132, 20, 'Bajaj Elite Neo 400mm Table Fan', '1', 1925, 1, 'IMG-20200526-WA0003_1590436936.jpg', '2020-05-26 00:02:16', '2020-08-30 07:23:07', 'It is high air thrust,full copper motor,silent operation,power:55W,includes:motor body,stand,guard,blade easy,silent operation.', 4, 1, 1),
(135, 20, 'Luminious speed max 400mm wall fan(IIM)', '1', 3075, 1, 'IMG-20200526-WA0004_1590437217.jpg', '2020-05-26 00:06:57', '2020-08-30 07:23:08', 'strong motor ,hi air throw,elecrtric switch oscillation,abs blade ,thermal overload protection.', 22, 1, 1),
(137, 20, 'Luminious speed max 400mm pedestal fan(IIM)', '1', 3900, 1, 'IMG-20200526-WA0007_1590437340.jpg', '2020-05-26 00:09:00', '2020-08-30 07:23:08', 'strong motor ,hi air throw,elecrtric switch oscillation,abs blade ,thermal overload protection to blow your mind.', 27, 1, 1),
(139, 20, 'Havells accelero 400mm table fan (IIM)', '1', 3240, 1, 'IMG_20200526_014654_1590437843.jpg', '2020-05-26 00:17:23', '2020-08-30 07:23:08', 'it is high speed wall fan undoubtedly are the best bet owingto the fact that hardly engage and space and offer optimum air delivery.it is best brand for electronic appliances.', 21, 1, 1),
(140, 20, 'Bajaj Frore 1200mm celling fan (IIM)', '1', 1799, 1, 'IMG-20200526-WA0008_1590437989.jpg', '2020-05-26 00:19:49', '2020-08-30 07:23:08', 'it is high speed fan,high air delivery,low power consuption,double ball  bearing,quick start high torque motor,ribbed blades.', 26, 1, 1),
(141, 20, 'Bajaj Archean 1200mm celling fan (IIM)', '1', 1899, 1, 'IMG-20200526-WA0009_1590438085.jpg', '2020-05-26 00:21:25', '2020-09-13 22:41:44', 'it is high speed fan,high air delivery,low power consuption,double ball  bearing,quick start high torque motor,ribbed blades,side bend blade.', 41, 1, 1),
(142, 20, 'Bajaj Maxima 600 mm Ceiling Fan (IIM)', '1', 1460, 1, 'IMG-20200526-WA0010_1590438174.jpg', '2020-05-26 00:22:54', '2020-08-30 07:23:08', 'Known for speed, known for style, Bajaj Fans has something for every home, office and commercial space. Our wide offering include ceiling, pedestal, wall, table, exhaust and industrial fans. Our premium, economy and energy efficient ranges offer world class performance and looks absolutely stunning.', 3, 1, 1),
(143, 20, 'Luminous Audie 1200mm 70-Watt Ceiling Fan (IIM)', '1', 2690, 1, 'IMG-20200526-WA0011_1590438280.jpg', '2020-05-26 00:24:40', '2020-08-30 07:23:08', 'Luminous Audie is a best-in-class ceiling fan that offers a true value for your money. Aerodynamically designed wider blades for better strength and air thrust. Comes with easy to clean dust-repellent coating.. A powerful motor that produces a high-speed of rotation.Bigger motor for better heat dissipation.', 30, 1, 1),
(144, 20, 'Luminous Performance-Performance Hi Air 1200MM Ceiling Fan (IIM)', '1', 2150, 1, 'IMG-20200526-WA0012_1590438396.jpg', '2020-05-26 00:26:36', '2020-08-30 07:23:08', 'First time in India with unique one-in-one carry home pack and Ready to Install(RTI) high performance fan for those who like simple looks to last forever.', 23, 1, 1),
(145, 20, 'Luminous Utility Josh 1200mm Ceiling Fan (IIM)', '1', 1640, 1, 'IMG-20200526-WA0013_1590438496.jpg', '2020-05-26 00:28:16', '2020-08-30 07:23:08', 'It is designed to work even under low voltage conditions and maximize air circulation. It comes with high speed and aerodynamic blades. It adds life to your living and work spaces even as it freshen and cool every corner.', 14, 1, 1),
(146, 20, 'Luminous Pulse 50 1200mm 50-Watt Ceiling Fan (IIM)', '1', 2040, 1, 'IMG-20200526-WA0014_1590438611.jpg', '2020-05-26 00:30:11', '2020-08-30 07:23:08', 'Luminous Pulse 50 5 Star Ceiling Fan bring the best of style, attractive design and performance to your home and office. It is designed to work even under low voltage conditions and maximize air circulation. It comes with high speed and aerodynamic blades. It adds life to your living and work spaces even as it freshen and cool every corner.', 24, 1, 1),
(147, 20, 'Luminous Deco Premium Warrior 1200mm Ceiling fan (IIM)', '1', 2690, 1, 'IMG-20200526-WA0015_1590438739.jpg', '2020-05-26 00:32:19', '2020-08-30 07:23:08', 'Cutting edge design inspired by Japanese fighters known for their precise skills.', 23, 1, 1),
(148, 17, 'Toofan 1200 mm 80 Watt Ceiling Fan For home', '1', 2222, 1, 'IMG_20200526_070902_1590457824.jpg', '2020-05-26 05:50:24', '2020-08-30 07:23:08', 'There’s nothing more satisfying than returning home after a long sunny day and relaxing on your bed with the fan on. But what if your fan makes that weird noise? If you fan is in a bad condition then it’s time you replaced it with this Aisen Toofan Ceiling fan.', 37, 1, 1),
(149, 17, 'Luminous PetalAir 600 mm 4 Blade Ceiling Fan', '1', 2290, 1, 'IMG_20200526_073035_1590458532.jpg', '2020-05-26 06:02:12', '2020-08-30 07:23:08', 'Get this Aluminium Petalair 4 Blade Ceiling Fan . It is White in colour', 13, 1, 1),
(150, 17, 'Khaitan ECR Brown 1200 mm High Speed Electric Ceiling Fan', '1', 1620, 1, 'IMG_20200526_073547_1590458824.jpg', '2020-05-26 06:07:04', '2020-08-30 07:23:08', 'Highly reliable and durable, Khaitan ECR 1200mm air ceiling fan is a must-have for your home. Available in 2 different colors, this fan will seamlessly blend with the décor of your room. Equipped with a powerful copper motor, Khaitan ECR 1200mm air delivers high air delivery and air thrust to offer the best in comfort and coolness. The powder coating provides longer life to the fan.In today\'s day and age, electronics play a crucial way in how we go about our daily chores and work। IIM', 8, 1, 1),
(151, 17, 'Oreva Ceiling Small size Fan of 4 Blades,palash ocf-7147', '1', 1800, 1, 'IMG_20200526_074658_1590459664.jpg', '2020-05-26 06:21:04', '2020-08-30 07:23:08', 'Oreva Ceiling Small size Fan of 4 Blades,230V A.C. – 50Hz, I / Power: 70Watt / Speed: 850 RPM / Sweep: 600 MM, good for small places ,room , office, powerfull, good look।  IIM', 17, 1, 1),
(152, 17, 'Zebronics BT4440RUCF 4.1 Channel Multimedia Speaker', '1', 4299, 1, 'IMG_20200526_075501_1590460171.jpg', '2020-05-26 06:29:31', '2020-08-30 07:23:08', 'LED Display. Supports USB pen drive & SD/MMC card. Built in FM and blue LED power indicator. Fully functional remote control.   IIM', 30, 1, 1),
(153, 17, 'F&D F3800X 5.1 Channel Multimedia Bluetooth Speaker', '1', 7490, 1, 'IMG_20200526_080321_1590460468.jpg', '2020-05-26 06:34:28', '2020-08-30 07:23:08', 'Function: standby, source and bluetooth button play/pause/fm autoscan button, previous/ch-, next/ch+, volume+/-. Simplistic Wireless streaming of music।    IIM', 20, 1, 1),
(161, 30, 'R.S. Aggarwal   Mathematics for Class 7', '1', 450, 1, '91jCRFklTwL._AC_SL1500__1590588881.jpg', '2020-05-27 18:14:41', '2020-08-30 07:23:08', 'This popular book is based on the syllabus followed by CBSE schools. The text is lucid and to the point. Solved problems covering all aspects of the topic are followed by graded exercises that satisfy the requirements of CCE.', 15, 1, 4),
(162, 30, 'R.S. Aggarwal  Mathematics for Class 6 ITH', '1', 360, 1, '91AdCD0N+EL._AC_SL1500__1590589296.jpg', '2020-05-27 18:21:36', '2020-08-30 07:23:08', 'This book has been penned by R.S Aggarwal and published by Bharti Bhawan Publishers & distributors and this edition closely follows the syllabus and guidelines that have been set by the CBSE. It covers each and every aspect of Mathematics that will help the students immensely in their final examination.', 15, 1, 4),
(163, 30, 'RS Aggarwal Mathematcs Class 9 CBSE ITH', '1', 495, 1, '41PuCvZhBtL._AC_SL1500__1590589503.jpg', '2020-05-27 18:25:03', '2020-08-30 07:23:09', 'Amazing book for ncert syllabus.Only minus point is that the breadth of this book is slightly short to open and read.', 15, 1, 4),
(164, 30, 'R.S. Aggarwal  16 Secondary School Mathematics for Class 10 ITH', '1', 680, 1, 'A1OlaHHk91L._AC_SL1500__1590589676.jpg', '2020-05-27 18:27:56', '2020-08-30 07:23:09', 'This foundation Science textbook is an apt choice for the students who are willing to excel in the subject, Mathematics. The author R.S. Aggarwal has tried his best to keep the language as simple as possible so that the young minds are able to grasp the concept more easily.', 15, 1, 4),
(165, 30, 'Senior Secondary School Mathematics for Class 12 by R S Aggarwal ITH', '1', 875, 1, '71zvhpFnoML._AC_SL1500__1590589899.jpg', '2020-05-27 18:31:39', '2020-09-06 19:16:48', 'This popular textbook is based on the CBSE and Core syllabus. The text is lucid and concise. Each topic has a number of solved examples, followed by well-graded exercises. Various types of questions and test papers have been given.', 15, 1, 37),
(166, 30, 'R. S. Aggarwal   Senior Secondary School Mathematics for Class 11 ITH', '1', 725, 1, '91Cynq03aoL._AC_SL1500__1590590052.jpg', '2020-05-27 18:34:12', '2020-08-30 07:23:09', 'Penned by R.S. Aggarwal, this senior Secondary School Mathematics is a must-have for the students who are preparing for their Class 11 Examinations. The 2018 edition has been published by Bharati Bhawan Publishers & distributors and it comes in a paperback form.', 15, 1, 4),
(167, 30, 'RD Sharma   Mathematics for Class 6- ITH', '1', 350, 1, '71Tzyqh6WJL._AC_SL1500__1590590194.jpg', '2020-05-27 18:36:34', '2020-08-30 07:23:09', 'Published in a paperback form by Dhanpat Rai publication, This textbook of Mathematics will be an ideal choice for students who will appear for their Class 7 Examinations.', 10, 1, 4),
(168, 30, 'RD Sharma   Mathematics for Class 7 ITH', '1', 399, 1, '71obYq7QPYL._AC_SL1500__1590590302.jpg', '2020-05-27 18:38:22', '2020-08-30 07:23:09', 'Published in a paperback form by Dhanpat Rai publication, This textbook of Mathematics will be an ideal choice for students who will appear for their Class 7 Examinations.', 10, 1, 4),
(169, 30, 'RD Sharma  Mathematics for Class 8 ITH', '1', 499, 1, 'A1BOr30eM1L._AC_SL1500__1590590420.jpg', '2020-05-27 18:40:20', '2020-08-30 07:23:09', 'The sincere effort and constant struggle of the author (S) has made it possible for him to introduce new concepts in a simple language so that children are able to grasp them easily. Using attractive illustrations, basic concepts have been explained in a concise manner so that students find them interesting and easy to understand', 10, 1, 4),
(170, 30, 'Mathematics for Class 9 by R D Sharma ITH', '1', 445, 1, '415ROK0YqCL._AC_SY400_FMwebp__1590590581.jpg', '2020-05-27 18:43:01', '2020-08-30 07:23:09', 'Learning Mathematics would be easy with this textbook of Mathematics published by Dhanpat Rai publication. It contains all the topics that have been outlined as per the CCE guidelines by central Board of Secondary Education (CBSE).', 10, 1, 4),
(171, 30, 'Mathematics for Class 10 by R D Sharma ITH', '1', 545, 1, 'A1+5aIrAiYL._AC_SL1500__1590590711.jpg', '2020-05-27 18:45:11', '2020-08-30 07:23:09', 'This textbook of Mathematics will be of great help for those students who will be appearing for their Class 10 Examinations. Difficult sums have been explained in the simplest way so that students can grasp the same easily.', 10, 1, 4),
(172, 30, 'Mathematics for Class 11 (set of 2 volumes) ITH', '1', 645, 1, '91RuMjPJt7L._AC_SL1500__1590590817.jpg', '2020-05-27 18:46:57', '2020-08-30 07:23:09', 'This textbook is based on the latest syllabus prescribed by the CBSE. The text has been divided into two volumes. Volume 1 Consists of chapters 1-21 and Volume 2 Consists of chapters 22-23 for ease of handling', 10, 1, 4),
(173, 30, 'Mathematics for Class 12 (Set of 2 Vol.)  ITH', '1', 985, 1, '91z76KRUGeL._AC_SL1500__1590590916.jpg', '2020-05-27 18:48:36', '2020-08-30 07:23:09', 'This set of Mathematics Textbooks for Class 12 by R .D Sharma (2018-19 session) plays an important role for the students as a tool to grasp the vast and complex world of Mathematics. It comes in a set of 2 volumes that compile within itself, numerous mathematical solutions and ones, which are an integral part of the world mathematics.', 10, 1, 4),
(174, 30, 'S.Chand’s Science For Class-8  ITH', '1', 530, 1, '51fkUh4oBOL_1590591152.jpg', '2020-05-27 18:52:32', '2020-09-06 19:18:46', 'Illustrations and photographs are given to elucidate comprehension of key concepts. Extra learning material has been added under Additional Learning to teach wider aspects of the basic concepts', 15, 1, 37),
(175, 30, 'S Chand Physics Class 9: 2020 latest syllabus  ITH', '1', 499, 1, '71SoE63XUtL._AC_SL1500__1590591434.jpg', '2020-05-27 18:57:14', '2020-08-30 07:23:09', 'Class 9 Physics Chapter wise\r\nClass 9 Physics Chapter 1 – Motion.\r\nClass 9 Physics Chapter 2 – Force And Laws Of Motion.\r\nClass 9 Physics Chapter 3 – Gravitation.\r\nClass 9 Physics Chapter 4 – Work and Energy.\r\nClass 9 Physics Chapter 5 – Sound', 15, 1, 4),
(176, 30, 'S. Chand Science Book for class 6 ITH', '1', 485, 1, '81xkZH29noL._AC_SL1500__1590591559.jpg', '2020-05-27 18:59:19', '2020-09-06 19:20:18', 'Science is a series of books for Classes1 to 8 which conforms to the NCERT syllabus. Cds for these books are available on request. The main aim of writing this series is to help students understand difficult scientific concepts in a simple manner in easy language', 15, 1, 37),
(177, 30, 'S. Chand science book for class 7 ITH', '1', 510, 1, '71TpJsAuRNL._AC_SL1500__1590591663.jpg', '2020-05-27 19:01:03', '2020-09-06 19:20:02', 'Science is a series of books for Classes1 to 8 which conforms to the NCERT syllabus. Cds for these books are available on request. The main aim of writing this series is to help students understand difficult scientific concepts in a simple manner in easy language', 15, 1, 37),
(178, 30, 'Science for Class 9 Part-3 Biology ITH', '1', 499, 1, '71pGAxsJhFL._AC_SL1500__1590591810.jpg', '2020-05-27 19:03:30', '2020-09-06 19:17:08', 'This book is a part of a series of six books written to provide complete coverage of the NCERT Science syllabus for classes 9 and L0 prescribed by the Central Board of Secondary Education (CBSE).', 15, 1, 37),
(179, 30, 'Science for Class 9 Part-2 Chemistry ITH', '1', 499, 1, 'IMG_20200605_215140_1591374696.jpg', '2020-05-27 19:05:37', '2020-09-06 19:17:28', 'This book is a part of a series of six books written to provide complete coverage of the NCERT Science syllabus for classes 9 and L0 prescribed by the Central Board of Secondary Education (CBSE).', 15, 1, 37),
(180, 30, 'S. Chand Science for Class 10 Part-2 Chemistry ITH', '1', 499, 1, 'IMG_20200606_103309_1591419838.jpg', '2020-05-27 19:07:09', '2020-09-06 19:19:20', 'This book is a part of a series of six books written to provide complete coverage of the NCERT Science syllabus for classes 9 and L0 prescribed by the Central Board of Secondary Education (CBSE).', 15, 1, 37),
(181, 30, 'S. Chand Science for Class 10 Part-1 Physics ITH', '1', 499, 1, '71tCpvntkmL._AC_SL1500__1590592124.jpg', '2020-05-27 19:08:44', '2020-09-06 19:19:46', 'This book is a part of a series of six books written to provide complete coverage of the NCERT Science syllabus for classes 9 and L0 prescribed by the Central Board of Secondary Education.', 15, 1, 37),
(182, 30, 'S. Chand Science for Class 10 Part-3 Biology ITH', '1', 499, 1, '51f76ysceUL._AC_SY400_FMwebp__1590592245.jpg', '2020-05-27 19:10:45', '2020-09-06 19:19:05', 'This book is a part of a series of six books written to provide complete coverage of the NCERT Science syllabus for classes 9 and L0 prescribed by the Central Board of Secondary Education (CBSE).', 15, 1, 37),
(183, 30, 'Pearson IIT Foundation Series - Physics - Class 7 ITH', '1', 399, 1, '81rNmzkt3iL._AC_SL1500__1590592837.jpg', '2020-05-27 19:20:37', '2020-08-30 07:23:10', 'The new and updated edition of the Pearson IIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness. Conceptual clarity and gaining mastery over the art of problem-solving are the central themes of the series.', 15, 1, 4),
(184, 30, 'Pearson IIT Foundation Series - Physics - Class 8 ITH', '1', 445, 1, '81HcTU6Ii9L._AC_SL1500__1590593028.jpg', '2020-05-27 19:23:48', '2020-08-30 07:23:10', 'The new and updated edition of the Pearson tIIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness.', 15, 1, 4),
(185, 30, 'Pearson IIT Foundation Series Class 9 Physics ITH', '1', 499, 1, '41u9RBanDAL._AC_SY400_FMwebp__1590593166.jpg', '2020-05-27 19:26:06', '2020-08-30 07:23:10', 'and reliable content targeted for IIT, Olympiad and other key entrance and competitive examinations. Objective of this series is to provide authentic and class-tested content for effective preparation— to build strong foundation and better scoring.', 15, 1, 4),
(186, 30, 'Foundation Physics for IIT-JEE/NEET/Olympiad for Class 10 ITH', '1', 625, 1, '61yodfQ5zbL._AC_SY400_FMwebp__1590593282.jpg', '2020-05-27 19:28:02', '2020-08-30 07:23:10', 'Foundation Physics for IIT-JEE/NEET/Olympiad Class 10 is the thoroughly revised and updated 4th edition (2 colour) of the comprehensive book for class 10 students who aspire to become Doctors/Engineers. The book goes for a complete makeover to 2-colour (from B&W) so as to make it more reader friendly.', 15, 1, 4),
(187, 30, 'Pearson Foundation Series - Biology - Class 10 ITH', '1', 675, 1, '81qgNYqvrNL._AC_SL1500__1590593494.jpg', '2020-05-27 19:31:34', '2020-08-30 07:23:10', 'Pearson foundation Series, Biology, is particularly designed for aspirants of medical entrance examinations. Each title provides authentic and class-tested content for effective preparation and competitive readiness.', 15, 1, 4),
(188, 30, 'Biology Foundation Course  ITH', '1', 450, 1, '41RaUSq7LZL._AC_SL1500__1590593613.jpg', '2020-05-27 19:33:33', '2020-09-07 19:31:22', 'The New Updated & Revised MTG Foundation Course Series, curated by a team of competent academicians involved in the making of highly recognised books, offers you a complete study package to ace and excel in school as well as competitive exams.', 15, 1, 4),
(189, 30, 'IIT Foundation Class 8, NEET Biology ITH', '1', 370, 1, '51vuBbnCBvL._AC_SY400_FMwebp__1590593741.jpg', '2020-05-27 19:35:41', '2020-08-30 07:23:10', 'Pearson foundation Series, Biology, is particularly designed for aspirants of medical entrance examinations. Each title provides authentic and class-tested content for effective preparation and competitive readiness.', 15, 1, 4),
(190, 30, 'Pearson IIT Foundation Series Class 7 Mathematics|2020 Edition|By Pearson ITH', '1', 425, 1, '81u9jc+EKvL._AC_SL1500__1590593907.jpg', '2020-05-27 19:38:27', '2020-08-30 07:23:10', 'Iit Foundation Series is one source of comprehensive and reliable content targeted for IIT, Olympiad and other key entrance and competitive examinations. Objective of this series is to provide authentic and class-tested content for effective preparation— to build strong foundation and better knowledge.', 15, 1, 4),
(191, 30, 'Pearson IIT Foundation Series Class 8 Mathematics|2020 Edition|By Pearson', '1', 519, 1, '51K9UsHCuRL._AC_SY400_FMwebp__1590594007.jpg', '2020-05-27 19:40:07', '2020-08-30 07:23:10', 'Iit Foundation Series is one source of comprehensive and reliable content targeted for IIT, Olympiad and other key entrance and competitive examinations.', 15, 1, 4),
(192, 30, 'Pearson IIT Foundation Series - Maths - Class 9 ITH', '1', 625, 1, '81an9HjsILL._AC_SL1500__1590594159.jpg', '2020-05-27 19:42:39', '2020-08-30 07:23:10', 'The new and updated edition of the Pearson IIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness. Conceptual clarity and gaining mastery over the art of problem-solving are the central themes of the series. To ensure this, the series has lucid content along with neatly-sketched diagrams and real-life application-based examples.', 15, 1, 4),
(193, 30, 'Pearson IIT Foundation Series - Maths - Class 10 ITH', '1', 650, 1, '51N9PGkBXBL._AC_SY400_FMwebp__1590594267.jpg', '2020-05-27 19:44:27', '2020-08-30 07:23:10', 'The new and updated edition of the Pearson IIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness. Conceptual clarity and gaining mastery over the art of problem-solving are the central themes of the series. To ensure this, the series has lucid content along with neatly-sketched diagrams and real-life application-based examples.', 15, 1, 4),
(194, 30, 'Lucent\'s Samanya Gyan ITH', '1', 186, 1, '51fNGKcbiGL._AC_SY400_FMwebp__1590594462.jpg', '2020-05-27 19:47:42', '2020-09-07 19:32:03', 'Various competitive exams have general knowledge as an integral subject. Plus the extensive scope of this subject makes it difficult for students who are preparing for competitive exams.', 25, 1, 35),
(195, 30, 'Lucent General Knowledge ITH', '1', 216, 1, '41kd7Y23TZL._AC_SY400_FMwebp__1590594596.jpg', '2020-05-27 19:49:56', '2020-09-07 19:31:39', 'Lucent\'s General Knowledge Session by Dr. Binay Karna', 25, 1, 35),
(196, 30, 'Lucent\'s General Science ITH', '1', 216, 1, 'A1st6jRwCSL._AC_SL1500__1590594816.jpg', '2020-05-27 19:53:36', '2020-09-07 19:31:52', 'Lucent\'s General Science Session by Ravi Bhushan.', 25, 1, 35),
(197, 30, 'Lucent\'s Samanya Vigyan;General SciencE HINDI ITH', '1', 216, 1, '41xs4jZmhSL._AC_SL1500__1590594958.jpg', '2020-05-27 19:55:58', '2020-09-07 19:32:28', 'LUCENT SAMANYA VIGYAN, HINDI, GENERAL SCIENCE, SCIENCE BOOK, LUCENT PUBLICATIONS BOOK HINDI, VIGYAN BOOK, RASAYANIK VIGYAN, JEEV VIGYAN, U.P.S.C, RRB. POLICE, PATWARI, RAILWAY, BANKING, AND ALL COMPETITIVE EXAM BOOK', 25, 1, 35),
(198, 30, 'Pradeep\'s Science Part I (Physics) for Class 9 ITH', '1', 409, 1, '810Q12qlXXL._AC_SL1500__1590597336.jpg', '2020-05-27 20:35:36', '2020-08-30 07:23:10', 'This book of contains all types of objective type questions, viz., MCQs, Paragraph based MCQs, Fill in the blanks,short Answer questions and Long Answer Questions. The book continues to include answers and solutions of all questions of NCERT Textbook and NCERT Exemplar problems book.', 10, 1, 4),
(199, 30, 'Pradeep\'s Science Part I (Physics) for Class 10 ITH', '1', 415, 1, '81aoxkgpHPL._AC_SL1500__1590607838.jpg', '2020-05-27 20:37:21', '2020-08-30 07:23:10', 'Academically Secondary Class is the most important one for any student. It serves as a basic platform for a student to pursue his higher studies. Science always remain the main subject at this level.', 10, 1, 4),
(200, 30, 'Pardeep Fundamental Physics for Class 11 (Set of 2 Volume)ITH', '1', 1696, 1, '51KOGEwFdNL._AC_SY400_FMwebp__1590597644.jpg', '2020-05-27 20:40:44', '2020-08-30 07:23:11', 'A great way to learn Physics with, fundamental Physics textbooks for Class 11 come in a set of 2 volumes. It has been penned by Dr. K.L. Gomber and K.L. Gogia. It has been published by Pradeep publications and this 29th edition comes in a paperback form. It closely follows the syllabus and guidelines that have been prescribed by the CBSE.', 10, 1, 4),
(201, 30, 'Pardeep\'s Fundamental Physics for Class 12 ITH', '1', 1699, 1, '512MRYU2dML._AC_SL1500__1590597711.jpg', '2020-05-27 20:41:51', '2020-08-30 07:23:11', 'Pradeep fundamental Physics is designed for students of Class 12 who are to appear for their Board exams in 2020. This book comes in a set of 2 volumes which have been updated and in sync with the current syllabus.', 10, 1, 4),
(202, 30, 'Pradeep\'s Science Part II (Chemistry) for Class 9 ITH', '1', 319, 1, '81PBVlUp7sL._AC_SL1500__1590597823.jpg', '2020-05-27 20:43:43', '2020-08-30 07:23:11', 'Academically Secondary Class is the most important one for any student. It serves as a basic platform for a student to pursue his higher studies. Science always remain the main subject at this level.', 10, 1, 4),
(203, 30, 'Pradeep\'s Science Part II (Chemistry) for Class 10 ITH', '1', 490, 1, '51FgO5bZa-L._AC_SY400_FMwebp__1590597931.jpg', '2020-05-27 20:45:31', '2020-08-30 07:23:11', 'Academically Secondary Class is the most important one for any student. It serves as a basic platform for a student to pursue his higher studies. Science always remain the main subject at this level.', 10, 1, 4),
(204, 30, 'Pardeep\'s Science Chemistry for Class 11th (Set of 2 Volume) ITH', '1', 1250, 1, '41oNSIN3LPL._AC_SY400_FMwebp__1590598143.jpg', '2020-05-27 20:49:03', '2020-08-30 07:23:11', 'The 36th edition of New course Chemistry for Class 11 will be an ideal choice for students who are keen on learning Chemistry from the best. Published by Pradeep publication, it comes in a set of two volumes in a paperback form. It closely follows the syllabus that has been prescribed by many boards including the CBSE.', 10, 1, 4),
(205, 30, 'Pradeep\'s New Course Chemistry for Class 12 (Vol. 1 & 2)ITH', '1', 1370, 1, '91rSstnjgjL._AC_SL1500__1590598434.jpg', '2020-05-27 20:53:54', '2020-08-30 07:23:11', 'Senior Secondary Class is essentially a career–making Class, and Science is the most sought-after course at this level for pursuing the ambitious career of a doctor, an engineer, a scientist, a research scholar etc. For realizing his dream, a student has to perform exceptionally well in this class.', 10, 1, 4),
(206, 30, 'Pradeep\'s Science Part III (Biology) for Class 9 ITH', '1', 409, 1, '51pkk0BaadL._AC_SY400_FMwebp__1590598567.jpg', '2020-05-27 20:56:07', '2020-08-30 07:23:11', 'Academically Secondary Class is the most important one for any student. It serves as a basic platform for a student to pursue his higher studies. Science always remain the main subject at this level.', 10, 1, 4),
(208, 30, 'Pradeep\'s A Text Book of Biology for Class 11 ITH', '1', 1300, 1, '51L8buWmwbL._AC_SY400_FMwebp__1590598832.jpg', '2020-05-27 21:00:33', '2020-08-30 07:23:11', 'Senior Secondary Class is essentially a career–making Class, and Science is the most sought-after course at this level for pursuing the ambitious career of a doctor, an engineer, a scientist, a research scholar etc.', 10, 1, 4),
(210, 30, 'Pardeep\'s A Textbook of Biology for Class 12 ITH', '1', 1293, 1, '91J4mdIR55L._AC_SL1500__1590599136.jpg', '2020-05-27 21:05:36', '2020-08-30 07:23:11', 'This 2020-2021 edition of a textbook of Biology has been published by Pradeep publications. It remains a favourite amongst teachers and students alike, owing to the simple content that has been penned by S. Dhami and  Chopra.', 10, 1, 4),
(211, 30, 'Pearson IIT Foundation Series Class 7 Chemistry ITH', '1', 325, 1, '81HXga0ft3L._AC_SL1500__1590599336.jpg', '2020-05-27 21:08:56', '2020-08-30 07:23:11', 'Foundation Series is one source of comprehensive and reliable content targeted for IIT, Olympiad and other key entrance and competitive examinations. Objective of this series is to provide authentic and class-tested content for effective preparation— to build strong foundation and better scoring.', 15, 1, 4),
(212, 30, 'Pearson IIT Foundation Series - Chemistry - Class 8 ITH', '1', 375, 1, '51ooASVgBIL._AC_SY400_FMwebp__1590599480.jpg', '2020-05-27 21:11:20', '2020-08-30 07:23:11', 'The new and updated edition of the Pearson IIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness. Conceptual clarity and gaining mastery over the art of problem-solving are the central themes of the series. To ensure this, the series has lucid content along with neatly-sketched diagrams and real-life application-based examples.', 15, 1, 4),
(213, 30, 'Pearson IIT Foundation Series - Chemistry - Class 9 ITH', '1', 350, 1, '51C8Q0yFrQL._AC_SY400_FMwebp__1590599627.jpg', '2020-05-27 21:13:47', '2020-08-30 07:23:11', 'Iit Foundation Series is one source of comprehensive and reliable content targeted for IIT, Olympiad and other key entrance and competitive examinations.', 15, 1, 4),
(214, 30, 'Pearson IIT Foundation Series - Chemistry - Class 10 ITH', '1', 499, 1, '81q1s8DoHNL._AC_SL1500__1590599795.jpg', '2020-05-27 21:16:35', '2020-08-30 07:23:11', 'The new and updated edition of the Pearson IIT Foundation Series continues to be a source of comprehensive and reliable content for competitive readiness.', 15, 1, 4),
(219, 19, 'Campus men\'s BP-323-blue/wine- Running shoes', '1', 569, 1, '1590816088109_1590816407.jpg', '2020-05-30 09:26:47', '2020-08-30 07:23:11', 'SIZE : 7*10\r\n\r\nCampus sport shoes are premium quality light weight shoe optimised for running and all day usage. Unique Mesh weaving offers incredible breathability.(RCM)', 0, 1, 3),
(220, 19, 'Campus men\'s north - Burgundy- Running shoes', '1', 1499, 1, '1590816611718_1590816644.jpg', '2020-05-30 09:30:44', '2020-08-30 07:23:11', 'SIZE : 7*10\r\n\r\nCampus presents  running shoes, which will help you give your best during the workout and training session.(RCM)', 10, 1, 3),
(221, 19, 'Campus Mens\'a Royace.2- blu/org running shoes', '1', 1049, 1, '1590818763926_1590818793.jpg', '2020-05-30 10:06:33', '2020-08-30 07:23:11', 'SIZE : 6*9\r\n\r\n\r\nCAMPUS ROYCE-2 CG-248 MEN BLUE / ORANGE SPORTS SHOES. Keep Your Feet Comfortable And Safe With These Shoes. Style And Comfort Are The Main Mantras That Come Along With The Pair. (RCM)', 10, 1, 3),
(222, 19, 'Campus Men\'s Izak-navy/sky-Running shoes', '1', 1199, 1, '1590821853227_1590821897.jpg', '2020-05-30 10:58:17', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nCampus presents  running shoes, which will help you give your best during the workout and training sessions.(RCM)', 10, 1, 3),
(223, 19, 'Campus men\'s BP-322-Mhd/beig-running shoes', '1', 569, 1, '1590822396462_1590822429.jpg', '2020-05-30 11:07:09', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nCampus sport shoes are premium quality light weight shoe optimised for running and all day usage. Unique Mesh weaving offers incredible breathability.(RCM)', 0, 1, 3),
(224, 19, 'Campus Men\'s Oracle -Torq/blue/green Running shoes', '1', 1199, 1, '1590822577967_1590822609.jpg', '2020-05-30 11:10:09', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nCampus sport shoes are premium quality light weight shoe optimised for running and all day usage. Unique Mesh weaving offers incredible breathability(RCM)', 10, 1, 3),
(225, 19, 'Campus BP-324-blu/red-Running shoes', '1', 569, 1, '1590822793582_1590822809.jpg', '2020-05-30 11:13:29', '2020-08-30 07:23:12', 'SIZE :6*9\r\n\r\n\r\n\r\nCampus sport shoes are premium quality light weight shoe optimised for running and all day usage. Unique Mesh weaving offers incredible breathability.(RCM)', 0, 1, 3),
(226, 19, 'Campus Men\'s North -navy- Running shoes', '1', 1499, 1, '1590822975203_1590822992.jpg', '2020-05-30 11:16:32', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nCampus presents  running shoes, which will help you give your best during the workout and training session.(RCM)', 10, 1, 3),
(227, 19, 'Campus Men\'s Duster .2-Navy/sky- Running shoes', '1', 1049, 1, '1590823156369_1590823171.jpg', '2020-05-30 11:19:31', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\nCampus presents running shoes, which will help you give your best during the workout and training sessions.(RCM)', 10, 1, 3),
(228, 19, 'Campus Men\'s BP-324-gry/mstd- Running shoes', '1', 569, 1, '1590823325100_1590823344.jpg', '2020-05-30 11:22:24', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\nCampus sport shoes are premium quality light weight shoe optimised for running and all day usage. Unique Mesh weaving offers incredible breathability.(RCM)', 0, 1, 3),
(229, 19, 'Campus men\'s Reon.2-blk/blu- Running shoes', '1', 1299, 1, '1590823626437_1590823649.jpg', '2020-05-30 11:27:29', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\n\r\nCampus presents  running shoes, which will help you give your best during the workout and training session.(RCM)', 10, 1, 3),
(230, 19, 'Campus men\'s North-Af/blu- Running shoes', '1', 1499, 1, '1590823819420_1590823868.jpg', '2020-05-30 11:31:08', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nCampus presents  running shoes, which will help you give your best during the workout and training sessions.(RCM)', 10, 1, 3),
(231, 19, 'Red Chief Men\'s RC-1976 Leather boots', '1', 3445, 1, '1590824431031_1590824463.jpg', '2020-05-30 11:41:03', '2020-08-30 07:23:12', 'SIZE : 6*9\r\n\r\n\r\nA smart choice for your off-duty outings is this trendy pair of men\'s casual Shoess from the house of Red Chief. (RCM)', 10, 1, 3),
(232, 19, 'Flite women\'s pul.70-D.pink-slippers', '1', 159, 1, '1590824568333_1590824597.jpg', '2020-05-30 11:43:17', '2020-08-30 07:23:12', 'SIZE : 4*7\r\n\r\n\r\n\r\nSparx Presents footwear range that Will Keep Your Feet At Great Ease, While You walk, run or work out in the Gym. These Are Light In Weight, Flexible And Very Comfortable To Wear As Well.(RCM)', 0, 1, 3),
(233, 18, 'Rupani Men\'s pyramid _jordan01-blue-sports shoes', '1', 499, 1, 'IMG_20200603_194905_1591195027.jpg', '2020-06-03 18:20:06', '2020-08-30 07:23:12', 'Size:-6*9..Pyramid Shoes for regular comfort. The body of shoes is designed with colorful soft material describing to improve the overall look of the shoes.(RCM)', 0, 1, 3),
(234, 18, 'Rupani Men\'s KICK07-Maroon-sports shoes', '1', 499, 1, 'IMG_20200603_195922_1591194593.jpg', '2020-06-03 18:29:53', '2020-08-30 07:23:12', 'Size:-6*9 This pair of running shoes is designed according to latest trends & fashion.', 0, 1, 3),
(235, 18, 'Rupani Men\'s pyramid _kick02-Grey/blue-sports shoes', '1', 499, 1, 'IMG_20200603_200303_1591194969.jpg', '2020-06-03 18:34:11', '2020-08-30 07:23:12', 'Size:-6*9..Pyramid Shoes for regular comfort. The body of shoes is designed with colorful soft material describing to improve the overall look of the shoes.(RCM)', 0, 1, 3),
(236, 18, 'Rupani Men\'s-blue/red/white-sports shoes', '1', 499, 1, 'IMG_20200603_200955_1591195274.jpg', '2020-06-03 18:41:14', '2020-08-30 07:23:12', 'Size:-6*9 Rupani Shoes for regular comfort. The body of shoes is designed with colorful soft material describing to improve the overall look of the shoes.', 0, 1, 3),
(237, 12, 'Ossum Body Blossom Deodorant Spray-RTU', '120 ml', 225, 1, 'IMG_20200608_235512_1591640733.jpg', '2020-06-08 22:25:33', '2020-08-30 07:23:13', '\"Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women\"', 10, 1, 8),
(239, 12, 'Fogg  Dazzle EDP Perfume-50ml-RTU', '1', 349, 1, 'IMG_20200609_000019_1591641142.jpg', '2020-06-08 22:32:22', '2020-08-30 07:23:13', '\"Quantity: 50 ml\r\nIdeal For: Men\r\nFragrance Classification: Eau de Parfum\"', 10, 1, 8),
(240, 19, 'Fogg fresh spicy Deodorant spray-150ml--- RTU', '150 ml', 230, 1, 'IMG_20200608_235856_1591641270.jpg', '2020-06-08 22:34:30', '2020-08-30 07:23:13', 'Quantity: 150 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(241, 12, 'Fogg  Fame EDP Perfume-RTU', '50 ml', 349, 1, 'IMG_20200609_000352_1591641304.jpg', '2020-06-08 22:35:04', '2020-08-30 07:23:13', '\"Quantity: 50 ml\r\nIdeal For: Men\r\nFragrance Classification: Eau de Parfum\"', 10, 1, 8);
INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(242, 12, 'Fogg  Elite EDP Perfume-RTU', '50 ml', 349, 1, 'IMG_20200609_000854_1591641555.jpg', '2020-06-08 22:36:13', '2020-08-30 07:23:13', '\"Quantity: 50 ml\r\nIdeal For: Men\r\nFragrance Classification: Eau de Parfum\"', 10, 1, 8),
(243, 19, 'Fogg fresh Aqua Deodorant spray-150ml--RTU', '150 ml', 230, 1, 'IMG_20200608_235909_1591641373.jpg', '2020-06-08 22:36:13', '2020-08-30 07:23:13', 'Quantity: 150 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(244, 19, 'Fogg fresh Aromatic Deodorant spray-150ml--RTU', '150 ml', 230, 1, 'IMG_20200608_235920_1591641487.jpg', '2020-06-08 22:38:07', '2020-08-30 07:23:13', 'Quantity: 150 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(245, 19, 'Fogg fresh Oriental Deodorant spray-150ml--RTU', '150 ml', 230, 1, 'IMG_20200608_235930_1591641566.jpg', '2020-06-08 22:39:26', '2020-08-30 07:23:13', 'Quantity: 150 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(246, 19, 'Fogg Bleu Forest Deodorant spray---RTU', '120 ml', 255, 1, 'IMG_20200608_235940_1591641671.jpg', '2020-06-08 22:41:11', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(247, 19, 'Fogg Bleu Island Deodorant spray---RTU', '120 ml', 255, 1, 'IMG_20200608_235949_1591641745.jpg', '2020-06-08 22:42:25', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(248, 12, 'VLCC Mate looks Sun screen Gel Crème SPF 30 PA++-ATK', '1', 195, 1, 'IMG_20200609_001129_1591641760.jpg', '2020-06-08 22:42:40', '2020-08-30 07:23:13', '\"For Men & Women\r\nSuitable For All Skin Types\r\nCream Form\r\nPA+++\"', 10, 1, 8),
(249, 19, 'Fogg Bleu Skies Deodorant spray---RTU', '120 ml', 255, 1, 'IMG_20200609_000005_1591641812.jpg', '2020-06-08 22:43:32', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(250, 12, 'VLCC Fair+GlowSun Screen Lotion SPF 20PA++-ATK', '1', 175, 1, 'IMG_20200609_001459_1591641980.jpg', '2020-06-08 22:46:20', '2020-08-30 07:23:13', '\"Day Usage Cream For Fairness\r\nFor Women\r\nOrganic Type: Natural\"', 10, 1, 8),
(251, 12, 'VLCC 3D Youthboost Sunscreen gel cream SPF 40PA___ATK', '1', 275, 1, 'IMG_20200609_001801_1591642153.jpg', '2020-06-08 22:49:13', '2020-08-30 07:23:13', '\"For Men & Women\r\nSuitable For All Skin Types\r\nGel Form\r\nPA+++\"', 10, 1, 8),
(252, 19, 'Fogg Marco Deodorant spray-120ml------RTU', '120 ml', 185, 1, 'IMG_20200609_000035_1591642177.jpg', '2020-06-08 22:49:37', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(253, 19, 'Fogg Paradise Deodorant spray-------RTU', '120 ml', 185, 1, 'IMG_20200609_000046_1591642248.jpg', '2020-06-08 22:50:48', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(254, 19, 'Fogg Majestic Deodorant spray-120ml------RTU', '120 ml', 185, 1, 'IMG_20200609_000106_1591642319.jpg', '2020-06-08 22:51:59', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(256, 19, 'Fogg Napoleon Deodorant spray----RTU', '120 ml', 185, 1, 'IMG_20200609_000120_1591642429.jpg', '2020-06-08 22:53:49', '2020-08-30 07:23:13', 'Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men', 10, 1, 8),
(257, 19, 'Fogg Master Napoleon Intense Body Spray-150ml------RTU', '150 ml', 225, 1, 'IMG_20200609_000135_1591642579.jpg', '2020-06-08 22:56:19', '2020-08-30 07:23:13', 'Quantity: 240 ml\r\nFragrance: Body Spray\r\nFor Men & Women', 10, 1, 8),
(258, 19, 'Fogg Master Pine Body Spray-150ml-----RTU', '150 ml', 225, 1, 'IMG_20200609_000152_1591642672.jpg', '2020-06-08 22:57:52', '2020-08-30 07:23:13', 'Quantity: 240 ml\r\nFragrance: Body Spray\r\nFor Men & Women', 10, 1, 8),
(259, 19, 'Fogg Master Cedar Body Spray-150ml-----RTU', '150 ml', 225, 1, 'IMG_20200609_000204_1591642748.jpg', '2020-06-08 22:59:08', '2020-08-30 07:23:13', 'Quantity: 240 ml\r\nFragrance: Body Spray\r\nFor Men & Women', 10, 1, 8),
(260, 19, 'Fogg Master Marco Intence Body Spray-150ml----RTU', '150 ml', 225, 1, 'IMG_20200609_000223_1591642805.jpg', '2020-06-08 23:00:05', '2020-08-30 07:23:13', 'Quantity: 240 ml\r\nFragrance: Body Spray\r\nFor Men & Women', 10, 1, 8),
(261, 18, 'Electric sanitizer spray', '1', 999, 1, 'IMG_20200609_101306_1591677907.jpg', '2020-06-09 08:45:07', '2020-08-30 07:23:14', 'Portable pocket friendly hand sanitizer spray machine.\r\n- Instant big fog, big tank(for alchoholic/non-alchoholic liquid).\r\n- Nano fogg particles for easy to pentrate each surface.\r\n- Supports micro USB. If you are buying multi quantity you may avail quantity discount.\r\n- Multipurpose use for home, car, gym, school, college, office, daily use, daily products sanitization.', 75, 1, 2),
(262, 12, 'Ossum Body Pleasure Deodorant Spray-RTU', '1', 225, 1, 'IMG_20200609_105341_1591680422.jpg', '2020-06-09 09:27:02', '2020-08-30 07:23:14', '\"Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women\"', 10, 1, 8),
(263, 12, 'Ossum Body Romance Deodorant Spray-RTU', '1', 225, 1, 'IMG_20200609_112001_1591681822.jpg', '2020-06-09 09:50:22', '2020-08-30 07:23:14', '\"Quantity: 120 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women\"', 10, 1, 8),
(264, 12, 'Natures Essence face wash pigmentation removal perfect papaya-RTU', '65 ml', 65, 1, 'IMG_20200609_112409_1591682065.jpg', '2020-06-09 09:53:36', '2020-08-30 07:23:14', '\"Suitable For: All Skin Types\r\nNatural\r\nIdeal Usage: All Day\r\nBlemish Removal, Pigmentation Removal, Moisturization & Nourishment, Skin Lightening Facial Kit\"', 10, 1, 8),
(265, 12, 'Natures Essence anti acne pimple Prevention Neem& Alovera face wash-RTU', '65 ml', 65, 1, 'IMG_20200609_112531_1591682210.jpg', '2020-06-09 09:56:50', '2020-08-30 07:23:14', '\"Liquid Based\r\nFor All Skin Types\r\nApplied For: Nourishment & Moisturization, Radiance & Glow, Anti-acne & Pimples, Anti-ageing, Cleansing, Oil Control, Refreshing, Tan Removal, Sun Protection\"', 10, 1, 8),
(266, 12, 'Nature\'s Aloevera Moistursing Beauty gel-RTU', '150g', 95, 1, 'IMG_20200609_112803_1591682376.jpg', '2020-06-09 09:59:36', '2020-08-30 07:23:14', '\"Application Area: Face\r\nFor Men & Women\r\nAll Day Cream\r\nFor All Skin Types\r\nGel Form\"', 10, 1, 8),
(267, 20, 'Vlcc Ayurveda Skin Brightenning facewash-ATK', '100 ml', 99, 1, 'IMG_20200610_013042_1591732935.jpg', '2020-06-10 00:02:15', '2020-08-30 07:23:14', '\"For Men & Women\r\nGel Based\r\nFor All Skin Types\r\nApplied For: Refreshing\r\nComes in Tube\"', 10, 1, 8),
(268, 20, 'Vlcc Ayurveda Skin purifying Facewash--ATK', '100 ml', 99, 1, 'IMG_20200610_013403_1591733107.jpg', '2020-06-10 00:05:07', '2020-08-30 07:23:14', '\"For Men & Women\r\nGel Based\r\nFor All Skin Types\r\nApplied For: Refreshing\r\nComes in Tube\"', 10, 1, 8),
(269, 20, 'Ammy maxi sanitary pad for women&girl-XL-280mm(7 pads)-RTU', '1', 30, 1, 'IMG_20200610_013903_1591733416.jpg', '2020-06-10 00:10:16', '2020-08-30 07:23:14', '\"Pack of 1\r\nUsage Type: Disposable\r\nType: Sanitary Pad\r\nWith Wings\"', 10, 1, 8),
(270, 18, 'North For Men Fairness Face  Cream-XAE', '1', 419, 1, 'IMG_20200610_014131_1591733528.jpg', '2020-06-10 00:12:08', '2020-08-30 07:23:14', 'A non-sticky face cream with SPF 18 that \r\nis easily absorbed and moisturises your \r\nskin leaving it feeling soft and nourished. \r\nFormulated with Polar White Complex \r\nthat helps fade away dark spots and get \r\nvisibly fairer skin, while SPF 18 prevents \r\nnew spots to appear. Dermatologically \r\ntested. 50 gr.', 23.87, 1, 8),
(271, 20, 'Ammy maxi sanitary pad for women&girl-XL(20+4 pads free)-RTU', '1', 100, 1, 'IMG_20200610_014639_1591733864.jpg', '2020-06-10 00:17:44', '2020-08-30 07:23:14', '\"Pack of 1\r\nUsage Type: Disposable\r\nType: Sanitary Pad\r\nWith Wings\"', 10, 1, 2),
(272, 18, 'North For Men Fairness Face  Wash & Scrub-XAE', '1', 519, 1, 'IMG_20200610_014941_1591734087.jpg', '2020-06-10 00:21:27', '2020-08-30 07:23:14', 'An invigorating face wash and scrub, with \r\nPolar White Complex that deeply \r\ncleanses and gently removes impurities \r\nfor lighter complexion and smooth skin. \r\nPrepares your skin for the action of NFM \r\nfairness face cream. 150 ml.', 38.54, 1, 8),
(273, 20, 'Little  angel Baby extra dry Pants-M(56 packs)-up to 5-11kg-ATK', '1', 699, 1, 'IMG_20200610_015038_1591734245.jpg', '2020-06-10 00:24:05', '2020-08-30 07:23:14', 'SIZE:-M', 7.01, 1, 2),
(274, 18, 'North For Men Urban Hair, Body & Face Wash (XAE) )', '1', 479, 1, 'IMG_20200610_015702_1591734482.jpg', '2020-06-10 00:28:02', '2020-08-30 07:23:14', 'Refreshing hair, body and face wash with charcoal to help \r\nremove and clean dirt and impurities. Developed for men \r\nwith ingredients to help condition skin and hair and Arctic \r\nPro Defence, to protect your skin. Feel fresh, clean and \r\nprotected. 250 ml.', 25, 1, 8),
(275, 20, 'Little angel Baby  Pants-L(48 packs)-up to 8-14kg-ATK', '1', 599, 1, 'IMG_20200610_015706_1591734502.jpg', '2020-06-10 00:28:22', '2020-08-30 07:23:14', 'SIZE:-L', 8.18, 1, 2),
(276, 20, 'Little angel Baby extra dry Pants-XL(48 packs)-up to 12kg-ATK', '1', 699, 1, 'IMG_20200610_020119_1591734754.jpg', '2020-06-10 00:32:34', '2020-08-30 07:23:14', 'SIZE:-XL', 7.01, 1, 2),
(277, 18, 'North For Men Urban Shaving Foam-XAE', '1', 479, 1, 'IMG_20200610_020430_1591734971.jpg', '2020-06-10 00:36:11', '2020-08-30 07:23:14', 'Rich and creamy shaving foam with charcoal \r\nand Glide Technology for a clean and smooth \r\nshave. Suitable for in or out of the shower and \r\nface and body. 200 ml.', 16, 1, 8),
(278, 20, 'Little angel Baby daiper Pants-S(46 packs)-up to 7kg-ATK', '1', 399, 1, 'IMG_20200610_020522_1591735032.jpg', '2020-06-10 00:37:12', '2020-08-30 07:23:14', 'SIZE:-S', 12.28, 1, 2),
(279, 20, 'Nivea cocoa nourish Oil in lotion-ATK', '75 ml', 95, 1, 'IMG_20200610_021331_1591735517.jpg', '2020-06-10 00:45:17', '2020-08-30 07:23:14', '\"Application Area: Body\r\nFor Men & Women\r\nFor Dry Skin, All Skin Types\r\nLotion Form\"', 10, 1, 8),
(280, 20, 'Nivea Nourishing lotion Body Milk--ATk', '200 ml', 220, 1, 'IMG_20200610_021647_1591735726.jpg', '2020-06-10 00:48:46', '2020-08-30 07:23:14', '\"Application Area: Body\r\nFor Men & Women\r\nFor All Skin Types\r\nLotion Form\"', 10, 1, 8),
(281, 20, 'Nivea shea Smooth milk Body lotion-ATK', '400 ml', 375, 1, 'IMG_20200610_021957_1591735852.jpg', '2020-06-10 00:50:52', '2020-08-30 07:23:14', '\"Application Area: Body\r\nFor Men & Women\r\nFor All Skin Types\r\nLotion Form\"', 10, 1, 8),
(282, 20, 'Indulekha Bhringa Hair oil-ATK', '150 ml', 432, 1, 'IMG_20200610_022259_1591736062.jpg', '2020-06-10 00:54:22', '2020-08-30 07:23:14', '\"For Men\r\nFormulated For Damaged Hair\r\nSuitable For Damaged Hair\r\nApplied For Hair Strengthening, Split-ends, Anti-hair Fall\r\nSulfate Free\"', 2.78, 1, 8),
(283, 20, 'Killer scandalous Deodrent --RTU', '150 ml', 199, 1, 'IMG_20200610_022742_1591736334.jpg', '2020-06-10 00:58:54', '2020-08-30 07:23:15', '\"Quantity: 150ml\r\nFragrance: Deodorant Spray\r\nFor Men\"', 10, 1, 8),
(284, 20, 'integriti escape deodorant-RTU', '150 ml', 199, 1, 'IMG_20200610_023100_1591736588.jpg', '2020-06-10 01:03:08', '2020-08-30 07:23:15', '\"Quantity: 150ml\r\nFragrance: Deodorant Spray\r\nFor Men\"', 10, 1, 8),
(286, 18, 'North For Men Urban Soap Bar(XAE)', '1', 129, 1, 'IMG_20200610_101007_1591764040.jpg', '2020-06-10 08:40:40', '2020-08-30 07:23:15', 'Cleansing soap bar infused with charcoal \r\nwhich helps to lift away dirt and impurities \r\nfor a cleaner, more refreshed feeling. \r\nContains Arctic Pro Defence to protect \r\nthe skin, a masculine fragrance and lathers \r\nto a creamy and rich foam. 100 g.', 23, 1, 8),
(287, 18, 'HairX Advanced Care Ultimate Repair  Nourishing Shampoo(XAE)', '1', 459, 1, 'IMG_20200610_101258_1591764265.jpg', '2020-06-10 08:43:28', '2020-08-30 07:23:15', 'Revitalising, rejuvenating shampoo for damaged \r\nand over-processed hair. Contains a Phytonutrient \r\nComplex to help strengthen the hair from within. \r\nDaily use. Dermatologically tested. 250 ml.', 17.43, 1, 8),
(288, 18, 'HairX Advanced Care Ultimate Repair  Nourishing Conditioner(XAE)', '1', 459, 1, 'IMG_20200610_101708_1591764465.jpg', '2020-06-10 08:47:45', '2020-08-30 07:23:15', 'Nourishing, rejuvenating conditioner that helps \r\ndamaged, over-processed hair regain its softness, \r\nsuppleness and shine. Contains a Phytonutrient \r\nComplex to help strengthen hair from within. \r\nDaily use. Dermatologically tested. 200 ml.', 17.43, 1, 8),
(289, 18, 'HairX Advanced Care Ultimate  Repair Nourishing Hair Mask(XAE)', '1', 549, 1, 'IMG_20200610_102009_1591764635.jpg', '2020-06-10 08:50:35', '2020-08-30 07:23:15', 'Rich, nourishing hair mask to rejuvenate \r\ndamaged, over-processed hair and encourage \r\na healthy scalp. Contains a Phytonutrient \r\nComplex to help strengthen hair from within. \r\nWeekly use. Dermatologically tested. 200 ml.', 9.11, 1, 8),
(290, 18, 'Giordani Gold Man Eau de Toilette(XAE)', '1', 2699, 1, 'IMG_20200610_102249_1591764818.jpg', '2020-06-10 08:53:38', '2020-08-30 07:23:15', ')eaturing the same scent of refined YetiYer, this iconic \r\nfragrance embodies the sophistication and charisma of the \r\nman who Yalues the finer things in life. %rightened with Yibrant \r\nbergamot and black pepper, a sublime woody YetiYer scent for \r\nthe man who liYes his life with passion. 75 ml.', 29.64, 1, 8),
(292, 18, 'NovAge Men SET(XAE)', '1', 6400, 1, 'IMG_20200610_104213_1591765958.jpg', '2020-06-10 09:12:38', '2020-08-30 07:23:15', 'ngineered to fight signs of ageing and tiredness. \r\n6kin is left feeling energised, fresher, smoother and \r\nyounger looking. &linically proYen Anti-)atigue \r\n(ffect when used as a routine. &ontains cleanser, \r\neye cream, serum and lotion. Apply eYery morning \r\nand eYening. &ontains  standard si]e products.', 25, 1, 8),
(293, 18, 'Sharing Interchangeable Watch For Him(XAE)', '1', 2499, 1, 'IMG_20200610_104950_1591766599.jpg', '2020-06-10 09:23:19', '2020-08-30 07:23:15', 'Great-looking watch with versatile strap; black on 1 side, \r\nbrown on other. Ideal for fashionable man, switching \r\ncolour to best match occasion. Seiko movement, Gift boxed with sleeve. Metal, PU strap, glass lens, stainless steel case back & buckle. Total L28.4cm; case dia. \r\n4xH1.1cm.', 0, 1, 8),
(294, 18, 'Sharing Men\'s Wallet(XAE)', '1', 1499, 1, 'IMG_20200610_110136_1591767151.jpg', '2020-06-10 09:28:48', '2020-08-30 07:23:15', '6lim, masculine wallet fits in pocket \r\neasily, yet generous inside – 5 card slots \r\n& bill pocket. Inner navy blue. With \r\nsecuring, elasticised band. Gift-ready. \r\nPU, polyester, 11.5x10cm.', 0, 1, 8),
(295, 18, 'Love Nature Fragranced  Talc Floral Bloom -XAE', '100g', 89, 1, 'IMG_20200610_110504_1591767354.jpg', '2020-06-10 09:35:54', '2020-08-30 07:23:15', 'Keep skin feeling \r\ncomfortable and fresh \r\nanytime with new Love \r\nNature Talcs. They absorb \r\nmoisture and let you enjoy \r\nsoft, smooth skin with a \r\nwonderfully perfumed \r\nnature scent!', 11.24, 1, 8),
(310, 18, 'Love Nature Fragranced  Talc Floral Bloom -XAE', '100g', 89, 1, 'IMG_20200610_125505_1591773947.jpg', '2020-06-10 11:25:47', '2020-08-30 07:23:16', 'Keep skin feeling \r\ncomfortable and fresh \r\nanytime with new Love \r\nNature Talcs. They absorb \r\nmoisture and let you enjoy \r\nsoft, smooth skin with a \r\nwonderfully perfumed \r\nnature scent!', 11.24, 1, 8),
(311, 18, 'Love Nature Fragranced  Talc Sandal Caress -XAE', '100g', 89, 1, 'IMG_20200610_130010_1591774264.jpg', '2020-06-10 11:31:04', '2020-08-30 07:23:16', 'Keep skin feeling \r\ncomfortable and fresh \r\nanytime with new Love \r\nNature Talcs. They absorb \r\nmoisture and let you enjoy \r\nsoft, smooth skin with a \r\nwonderfully perfumed \r\nnature scent!', 11.24, 1, 8),
(312, 18, 'Silk Beauty White Glow Soap Bar(XAE)', '1', 119, 1, 'IMG_20200610_130400_1591774508.jpg', '2020-06-10 11:35:08', '2020-08-30 07:23:16', 'Silk Beauty White Glow Soap Bar enriched \r\nwith Silk Proteins, Cherry Blossom and \r\nWhite Mulberry to naturally moisturise, \r\nsoften and lighten your skin. 100 g.', 16.81, 1, 8),
(313, 18, 'Silk Beauty White Glow Antiperspirant 24h Deodorant(XAE)', '1', 249, 1, 'IMG_20200610_130818_1591774748.jpg', '2020-06-10 11:39:08', '2020-08-30 07:23:16', 'Antiperspirant Deodorant with Silk Proteins \r\nand White Mulberry extract naturally \r\nmoisturise your skin whilst Cherry Blossom \r\nprovides a sensual fragrance. Alcohol free. \r\nAlcohol free. 50 ml.', 20.08, 1, 8),
(314, 18, 'Tender Care Protecting Balm(XAE)', '1', 329, 1, 'IMG_20200610_131315_1591775058.jpg', '2020-06-10 11:44:18', '2020-08-30 07:23:16', 'Multipurpose balm with natural Beeswax \r\nand Vitamin E. Perfect for dry lips and \r\ndry, tight skin. Gently hydrates, \r\nnourishes, soothes and protects for soft, \r\nsmooth, comfortable skin. 15 ml.', 63.83, 1, 8),
(315, 18, 'Tender Care Protecting Balm with  Apricot Kernel Oil (XAE)', '1', 349, 1, 'IMG_20200610_131938_1591775449.jpg', '2020-06-10 11:50:49', '2020-08-30 07:23:16', 'Multi-purpose balm that nourishes and \r\nsoothes dry lips and skin. Contains natural \r\nApricot Kernel Oil with fatty acids known to \r\neffectively moisturise the skin. Leaves your \r\nskin with a delicate fruity scent and a silky \r\napricot-inspired softness. 15 ml.', 65.9, 1, 8),
(316, 18, 'Love Nature Purifying Gel Wash with  Organic Tea Tree & Lime(XAE)', '1', 359, 1, 'IMG_20200610_133031_1591776054.jpg', '2020-06-10 11:56:07', '2020-08-30 07:23:16', 'Gel wash with organic Tea Tree and super ingredient \r\nLime. Helps purify and instantly refresh skin, and \r\ncontains salicylic acid to help control blemish-prone \r\nskin. Dermatologically-tested, silicone- and paraben \r\nfree, non-comedogenic and biodegradable formula. \r\nOily skin. 125 ml', 36.21, 1, 8),
(317, 18, 'Love Nature Purifying Toner with  Organic Tea Tree & Lime', '1', 359, 1, 'IMG_20200610_133942_1591776610.jpg', '2020-06-10 12:10:10', '2020-08-30 07:23:16', 'Toner with organic Tea Tree essential oil and Lime \r\nextract. Helps to leave skin perfectly cleansed, \r\ntoned and purified, works to minimise appearance \r\nof pores and contains salicylic acid to help control \r\nblemish-prone skin. Dermatologically-tested, non￾comedogenic and paraben free. Oily skin. 150 ml.', 16.71, 1, 8),
(318, 18, 'Love Nature Mattifying Face Lotion with  Organic Tea Tree & Lime (XAE)', '1', 399, 1, 'IMG_20200610_134246_1591776808.jpg', '2020-06-10 12:13:28', '2020-08-30 07:23:16', 'Face lotion for day and night with natural organic Tea \r\nTree essential oil and Lime extract. Helps deliver \r\nlightweight hydration and leaYe skin mattified, purified \r\nand shine-free. With salicylic acid to target blemish￾prone skin. Dermatologically-tested, non￾comedogenic and paraben free. For oily skin. 50 ml.', 40.1, 1, 8),
(319, 18, 'Optimals Even Out Preventing Day  Cream SPF 20(XAE)', '1', 1249, 1, 'IMG_20200610_134725_1591777106.jpg', '2020-06-10 12:18:26', '2020-08-30 07:23:16', 'A hydrating cream that reveals naturally radiant, \r\neven skin. Reduces appearance of dark spots \r\nand helps reduce hyperpigmentation. Features a \r\nSwedish natural ingredient blend, LumiLight \r\nComplex, Anti-pollution Active and SPF 20. All \r\nskin types. 50 ml.', 40.03, 1, 8),
(320, 18, 'Optimals Even Out Toner(XAE)', '1', 699, 1, 'IMG_20200610_135318_1591777437.jpg', '2020-06-10 12:23:57', '2020-08-30 07:23:16', 'A toner that helps reduce dark spots and \r\npromotes an even, bright and radiant \r\ncomplexion. Removes last traces of \r\nimpurities, tones skin and tightens pores. \r\nFeatures a Swedish natural ingredient blend \r\nand LumiLight Complex. All skin types. \r\n150 ml.', 24.89, 1, 8),
(321, 18, 'Optimals Even Out Foaming Cleanser(XAE)', '1', 699, 1, 'IMG_20200610_135618_1591777612.jpg', '2020-06-10 12:26:52', '2020-08-30 07:23:16', 'A foaming cleanser with a creamy texture that \r\ndeeply and gently cleanses and helps reduce \r\ndark spots, to reveal an even, bright and radiant \r\ncomplexion. Formulated with a Swedish natural \r\ningredient blend and LumiLight Complex. \r\nDermatologically tested. All skin types. 150 ml.', 24.89, 1, 8),
(322, 18, 'Love Potion So Tempting Fragrance Mist(XAE)', '1', 699, 1, 'IMG_20200610_141110_1591778576.jpg', '2020-06-10 12:42:56', '2020-08-30 07:23:17', 'Let your imagination run a little wilder with \r\nthis delicious and sensual fragrance mist. A \r\nÁoral, oriental gourmand fragrance, with an \r\naddictive glossy honey accord that will leave \r\nyou lusting for more. 75 ml.', 31.47, 1, 8),
(323, 18, 'Oriflame golden edition hand cream (XAE)', '1', 189, 1, 'IMG_20200610_141749_1591778896.jpg', '2020-06-10 12:48:16', '2020-08-30 07:23:17', 'A daily protection cream with moisturising Glycerin, \r\nGolden Jojoba Oil and Vitamin E to keep your hands \r\nsoft, smooth and protected. Convenient compact size. \r\n30 ml.', 47.62, 1, 8),
(324, 18, 'Be Happy Shower Gel Feel Good (XAE)', '1', 399, 1, 'IMG_20200610_142223_1591779180.jpg', '2020-06-10 12:53:00', '2020-08-30 07:23:17', 'Cleansing and refreshing shower gel with \r\nthe uplifting scent of Blood Orange and \r\nTurmeric. Contains essential oils. 200 ml.', 25.06, 1, 8),
(325, 18, 'Chill Out Shower Gel Feel Good (XAE)', '1', 399, 1, 'IMG_20200610_142622_1591779500.jpg', '2020-06-10 12:58:20', '2020-08-30 07:23:17', 'Cleansing and calming shower gel with \r\nthe relaxing scent of Lavender and \r\nCedarwood. Contains essential oils. \r\n200 ml.', 25.06, 1, 8),
(326, 18, 'Styler 3D Curl Brush(XAE)', '1', 799, 1, 'IMG_20200610_143714_1591780073.jpg', '2020-06-10 13:07:53', '2020-08-30 07:23:17', 'Size: L 22 x W 10 cm. \r\nMaterials: PP and ABS', 0, 1, 8),
(366, 49, 'Swiss Beauty Brick Highlighter(02)', '1', 349, 1, 'IMG_20200613_180214_1592052664.jpg', '2020-06-13 16:51:04', '2020-08-30 07:23:18', '•for women\r\n•Quantity :7g\r\n•Micro-shimmer infused brick highlighter\r\n•Has a lightweight formula that is super long lasting\r\n•Blends effortlessly to create a natural healthy glow\r\n•Versatile, can be used a blush, bronzer or highlighter', 54, 1, 8),
(381, 49, 'Nivea body wash(Waterlily &Oil)___ATK', '1pc', 199, 1, 'IMG_20200614_184910_1592143667.jpg', '2020-06-14 18:07:47', '2020-08-30 07:23:19', '•NIVEA Shower gel \r\n170.0/pc', 14.57, 1, 8),
(389, 12, 'Quick Heal Total Security 1 User 3 Year', '1', 3799, 1, 'IMG_20200615_095105_1592194972.jpg', '2020-06-15 08:21:43', '2020-08-30 07:23:19', 'Features-\r\nTotal Ransomware Protection,\r\nWebcam Protection,\r\nAdvanced DNAScan,\r\nEmail Security,\r\nData Theft Protection,\r\nMalware Protection,\r\nWeb Security,\r\nAutomatic Backup,\r\nSafe Banking,\r\nFile Vault,', 36.84, 1, 1),
(390, 19, 'Link lock___GPH', '1', 240, 1, 'IMG_20200614_212145_1592242031.jpg', '2020-06-15 21:27:11', '2020-08-30 07:23:19', 'Link lock round bcp round 65 comes with double locking for extra safety and durability. The lock comes with 3 keys', 5, 1, 2),
(398, 18, 'Xam Idea Science class 10', '1', 504, 1, 'IMG-20200616-WA0006_1592294579.jpg', '2020-06-16 12:02:08', '2020-09-06 19:13:29', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(399, 18, 'Xam Idea Social Science class 10', '1', 504, 1, 'IMG-20200616-WA0003_1592294653.jpg', '2020-06-16 12:04:13', '2020-09-06 19:12:16', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(400, 18, 'Xam Idea English class 10', '1', 504, 1, 'IMG-20200616-WA0005_1592294750.jpg', '2020-06-16 12:05:50', '2020-09-06 19:15:02', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(401, 18, 'Xam Idea Mathematics class 10', '1', 504, 1, 'IMG-20200616-WA0004_1592294833.jpg', '2020-06-16 12:07:13', '2020-09-06 19:14:25', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(402, 18, 'Xam Idea Social Science class 9', '1', 495, 1, 'IMG-20200616-WA0007_1592295168.jpg', '2020-06-16 12:08:36', '2020-09-06 19:11:56', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(403, 18, 'Xam Idea Science class 9', '1', 495, 1, 'IMG-20200616-WA0001_1592295232.jpg', '2020-06-16 12:09:58', '2020-09-06 19:13:06', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(404, 18, 'Xam Idea English class 9', '1', 495, 1, 'IMG-20200616-WA0008_1592295373.jpg', '2020-06-16 12:16:13', '2020-09-06 19:14:48', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(405, 18, 'Xam Idea Mathematics class 9', '1', 495, 1, 'IMG-20200616-WA0002_1592295472.jpg', '2020-06-16 12:17:52', '2020-09-06 19:13:52', 'The Latest CBSE Syllabus For ( 2020-2021) Author: A Panal of teacher\r\n600 Pages\r\nLanguage: English\r\nPublisher: VK', 10, 1, 37),
(408, 18, 'Sarawati Manika Sanskrit Vyakaran Class 10', '1', 375, 1, 'IMG_20200616_141059_1592297025.jpg', '2020-06-16 12:43:45', '2020-09-06 19:18:06', 'Saraswati Sanskrit Vyakaran Class 10 book is based on latest syllabus as prescribed by CBSE.', 10, 1, 37),
(409, 49, 'KAVERI Mehendi Cone___RTU', '12pcs', 120, 1, 'IMG_20200616_163817_HDR_1592324621.jpg', '2020-06-16 20:19:49', '2020-08-30 07:23:20', '•FREE--4PCS Velnik shampoo\r\n•Khushiyo Se bhar de gehara rang\r\n•Goodness of henna\r\n•Rich Colour \r\n₹80/12pcs', 33, 1, 8),
(410, 49, 'Bajaj Almond Drops Hair Oil___RTU', '50ml', 35, 1, 'IMG_20200616_224419_1592327690.jpg', '2020-06-16 21:14:50', '2020-08-30 07:23:20', '•Non Sticky Hair Oil\r\n•₹32/50ml', 8, 1, 8),
(411, 49, 'Bajaj Almond Drops Hair Oil___RTU', '100ml', 65, 1, 'IMG_20200616_224709_1592327856.jpg', '2020-06-16 21:17:36', '2020-08-30 07:23:20', '•Non Sticky Hair Oil\r\n•₹60/100ml', 7.4, 1, 8),
(412, 49, 'Bajaj Almond Drops Hair Oil___RTU', '200ml', 120, 1, 'IMG_20200616_224946_1592328001.jpg', '2020-06-16 21:20:01', '2020-08-30 07:23:20', '•Non Sticky Hair Oil\r\n•₹113/200ml', 5.8, 1, 8),
(413, 49, 'Nihar Naturals coconut oil___RTU', '175ml', 58, 1, 'IMG_20200616_225322_1592328626.jpg', '2020-06-16 21:30:26', '2020-08-30 07:23:20', '•₹50/175ml\r\n•100%Coconut Oil\r\n•A unique combination of coconut oil and methi extracts that nourishes, strengthens and has a soothing fragrance', 13.5, 1, 8),
(414, 49, 'Nihar Naturals coconut oil___ATK', '400ml', 155, 1, 'IMG_20200616_225421_1592328892.jpg', '2020-06-16 21:34:52', '2020-08-30 07:23:20', '•₹145/400ml\r\n•100% Coconut oil\r\n•A unique combination of coconut oil and methi extracts that nourishes, strengthens and has a soothing fragrance', 6.4, 1, 8),
(415, 49, 'Dabur Anmol Coconut oil___RTU', '200ml', 58, 1, 'IMG_20200616_225356_1592329593.jpg', '2020-06-16 21:46:33', '2020-08-30 07:23:20', '•₹46/200ml\r\n•100 percent pure coconut oil\r\n•It provides nourishment and prevent overall hair damage\r\n•Has a special non-sticky formulation that makes it sensorially pleasant and gives silky, bouncy hair', 20.6, 1, 8),
(420, 20, 'Assure CLARIFYING FACE WASH -HUH', '60 gm', 170, 1, 'IMG_20200617_023928_1592341793.jpg', '2020-06-17 01:09:53', '2020-08-30 07:23:21', '(Enriched with Carrot and Neem Seed Oil Beads, releases the oils on application with water) It is a gentle yet effective face cleanser that helps to clear the skin without over-drying. It is enriched with carrot and neem seed oil beads that help to prevent breakouts. It washes away excess oil making the skin feel fresh, clean and radiant.', 15, 1, 8),
(421, 20, 'Assure Shop-HUH', '100 gm', 40, 1, 'IMG_20200617_024114_1592341929.jpg', '2020-06-17 01:12:09', '2020-08-30 07:23:21', 'This soap is a unique blend of Neem, Tulsi, and Pudina. It protects the skin without drying it out. It also disinfects and refreshes the skin leaving it fresh and rejuvenated.', 10, 1, 8),
(422, 20, 'Assure Hand Wash(250ml)-HUH', '1', 145, 1, 'IMG_20200617_024403_1592342067.jpg', '2020-06-17 01:14:27', '2020-08-30 07:23:21', 'New improved Assure Hand Wash gives the hands a gentle care with mild yet effective cleansing agents. It is enriched with Neem and Aloe Vera extracts that moisturise and provide gentle protection without drying out the skin. The refreshing fragrance keeps the hands fresh for long.', 10, 1, 2),
(423, 20, 'Assure pluse perfume spray-HUH', '100 ml', 325, 1, 'IMG_20200617_024637_1592342288.jpg', '2020-06-17 01:18:08', '2020-08-30 07:23:21', 'A no-gas perfume spray that has an intensely alluring fragrance to make you feel special throughout the day. It is your best companion for all weathers and invigorates your mind and soul when applied.', 10, 1, 8),
(424, 20, 'Assure Enchant Body Talc', '1', 60, 1, 'IMG_20200617_025029_1592342441.jpg', '2020-06-17 01:20:41', '2020-08-30 07:23:21', 'Assure Enchant Body Talc has a refreshing fragrance of exotic ﬂowers. It keeps body odour away and makes you feel fresh and vibrant all day long.', 10, 1, 8),
(425, 20, '\"Assure SHAVING CREAM \"-HUH', '100 gm', 120, 1, 'IMG_20200617_025343_1592342654.jpg', '2020-06-17 01:21:59', '2020-08-30 07:23:21', 'Experience a luxuriously rich lather, an easy glide, and a comfortable close shave with Assure Shaving Cream. Its rich creamy lather softens the tough beard for an easy and smooth shave, leaves the skin smooth and moisturised with a light masculine fragrance for all day freshness.', 10, 1, 8),
(426, 20, 'Dent Assure MOUTHWASH-HUH', '1', 205, 1, 'IMG_20200617_033149_1592344921.jpg', '2020-06-17 02:02:01', '2020-08-30 07:23:21', 'Dentassure Mouthwash helps to maintain healthy gums and protects against plaque formation. It has a refreshing mint ﬂavour which provides long-lasting fresh breath and helps to eliminate germs responsible for bad breath. It also maintains the aesthetics and health of teeth.', 10, 1, 2),
(427, 18, 'Safe hand pedal dispenser hand sanitization stand', '1', 1899, 1, 'IMG_20200618_090104_1592451081.jpg', '2020-06-18 07:30:04', '2020-08-30 07:23:21', 'Touch Free Pedal Operated Hand Sanitiser Dispenser Stand (bottle not included) - Made in INDIA. Easy to Operate, Foot Pedal Based, Safe and Hygienic. Adjustable Tray: Fits all standard hand sanitiser bottles. Ideal for Home use, Offices, Schools, Banks, Hospitals, Residential and Commercial Lobbies, Restaurants.', 7.25, 1, 2),
(428, 18, 'UV CURRENCY & DOCUMENTS SENITIZER', '1', 2400, 1, 'IMG_20200618_090527_1592451357.jpg', '2020-06-18 07:35:57', '2020-08-30 07:23:21', 'UVDetector\r\nWatermarkDetection\r\nMagnetic InkDetection', 0, 1, 2),
(429, 18, 'K-N95 Face Mask', '1', 99, 0, 'IMG_20200620_150524_1592645759.jpg', '2020-06-20 13:35:59', '2020-08-30 07:23:21', 'OUR K-N95 Face Mask with Breathable Particulate Respirator Valve is an industry-leading nose and mouth protection cover for daily wear to protect you against splash, dust, smog, ash and so on. It is comfortable and lightweight for hassle-free use by teens, adults, women and men all day long. Put the ear loop around your ears and you\'re all set. Features: 95% filtration efficiency against certain non-oil-based particles Cool Flow Valve helps reduce heat build-up inside the respirator Advanced filter media for easier breathing Stretchable, braided headbands for comfort Lightweight design comfortable for long periods of wear', 0, 1, 2),
(430, 49, 'GODREJ AC  GSC 18KTC3-WSA(1.5 TR 3 STAR)', '1.5L', 53900, 1, 'IMG_20200621_165136_1592738586.jpg', '2020-06-21 15:23:06', '2020-08-30 07:23:21', 'Our 3-star -rated R32 fixed speed air conditioners are powerful, durable and eco friendly . With 100% copper condenser and 5- year inverter  compressor warranty ,they promise long-lasting performance .', 3.71, 1, 1),
(431, 49, 'GODREJ AC GIC18RINV 3 DWQR(1.5 TR 3 STAR)', '1.5 Ton', 58900, 1, 'IMG_20200621_165615_1592738791.jpg', '2020-06-21 15:26:31', '2020-08-30 07:23:21', 'Our 3-star -rated R32 inverter Acs are powerful, durable and eco friendly . With 100% copper condenser and 10- year inverter  compressor warranty ,they promise long-lasting performance .', 5.09, 1, 1),
(432, 49, 'GODREJ AC GIC12OTC3-WSA (1TR 3 STAR)', '1Ton', 49900, 1, 'IMG_20200621_165859_1592738950.jpg', '2020-06-21 15:29:10', '2020-08-30 07:23:21', 'Our 3-star -rated R32 inverter Acs are powerful, durable and eco friendly . With 100% copper condenser and 10- year inverter  compressor warranty ,they promise long-lasting performance .', 4.01, 1, 1),
(433, 49, 'GODREJ Refrigerator FROST FREE RANGE RB NXW AURA 445 MDI 3.4 OX BLK', '0', 69400, 1, 'IMG_20200621_170105_1592739076.jpg', '2020-06-21 15:31:16', '2020-08-30 07:23:21', 'Toughened glass door , Intelligent inverter compressor , Torbo chill mode , digital control panel , Runs on home inverter,10 year Compressor warranty. Slide and serve door bins, tower led lighting flexi freeze bin , air lock technology . Dual fan ,toughened glass shevles ,special tray .  Capacity:-430L', 8.57, 1, 1),
(434, 49, 'GODREJ Refrigerator FROST FREE RANGE (EON CONERTIBLE) STEEL RUSH RT EON 331 PCI 3.4', '350L', 43500, 1, 'IMG_20200622_112525_1592805561.jpg', '2020-06-22 09:59:21', '2020-08-30 07:23:21', 'Fridge freezer convert , Pantented cool shower technology , Faster pull down time, Intelligent operations,Intelligent inverter cpmpressor , High energy efficiency , 10 year compressor warranty , 100% Environment friendly,140V Low starting voltage. Capacity:-331/350L', 4.6, 1, 1),
(435, 49, 'GODREJ Refeigerator FROST FREE RANGE (EON RAGEE) RT EON 241 PC  3.4 SILKY WINE', '241L', 30450, 1, 'IMG_20200622_113245_1592806080.jpg', '2020-06-22 10:08:00', '2020-08-30 07:23:21', '•Intelligent operations, \r\n•Pantented cool shower technology*,\r\n•movable ice maker, 100% environment friendly ,\r\n•high energy efficiency, 140V low starting voltage , \r\n•10 year compressor warranty ,\r\n•faster down time. \r\n•Capacity:-241L', 2.63, 1, 1),
(436, 49, 'GODREJ Refeigerator FROST FREE RANGE (EON RAGEE) RT EON 241 PC  3.4 SILKY PURPLE', '261L', 30900, 1, 'IMG_20200622_115613_1592807525.jpg', '2020-06-22 10:24:09', '2020-08-30 07:23:21', 'Intelligent operations, Pantented cool shower technology*,movable ice maker, 100% environment friendly , high energy efficiency, 140V low starting voltage , 10 year compressor warranty , faster down time. Capacity:-261L', 2.27, 1, 1),
(437, 17, 'Realme 80cm (32 inch) HD Ready LED Smart Android TV  (TV 32)', '1', 14999, 0, 'IMG-20200623-WA0007_1592977242.jpg', '2020-06-24 09:40:42', '2020-08-30 07:23:21', 'Supported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube\r\nOperating System: Android (Google Assistant & Chromecast in-built)\r\nResolution: HD Ready 1366 x 768 Pixels\r\nSound Output: 24 W\r\nRefresh Rate: 60 Hz', 13.3342, 1, 1),
(438, 49, 'Cctv_Stylish Men belt', '1pc', 200, 1, 's2bjvnvlqcvavz5kf6nd_1593621132.jpg', '2020-07-01 20:32:12', '2020-08-30 07:23:21', '•Belt width   40mm \r\n•Colour        Black,brown,Ten\r\n•Occasion   Party,formal,Casual\r\n•Material     Italian leather/Fancy belt\r\n•MRP          120/pcs', 40, 1, 8),
(440, 49, 'ROMANNI Artificial Leather Men wallet', '1pc', 449, 1, '20200615_113525_1593622559.jpg', '2020-07-01 20:55:59', '2020-09-02 02:44:17', '✓Number of card slot 5\r\n✓Material  Genuine leather\r\n✓Width  11.4cm\r\n✓Height  9.4cm\r\n✓It is very soft.This stylish men\'s wallet is crafted from genuine leather.you can\r\neither carry it in your pocket while you go out to work\r\n249/pc', 37.6, 1, 8),
(441, 49, 'KAVERI Mehendi Cone____RTU', '12pcs', 120, 1, 'IMG_20200616_163817_HDR_1593695587.jpg', '2020-07-02 17:13:07', '2020-08-30 07:23:22', '•Khushiyo se bhar de gehra rang\r\n•Goodness of Heena\r\n•Rich Colour ₹80/12pcs', 33, 1, 8),
(442, 18, 'Lumba Rakhi 1 (XAE)', '1', 25, 1, 'PicsArt_07-05-10.58.00_1593971011.jpg', '2020-07-05 21:39:50', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(443, 18, 'Lumba Rakhi 2 (XAE)', '1', 20, 1, 'PicsArt_07-05-11.26.06_1593971805.jpg', '2020-07-05 21:56:45', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(444, 18, 'Lumba Rakhi 3 (XAE)', '1', 55, 1, 'PicsArt_07-05-11.29.56_1593978540.jpg', '2020-07-05 23:49:00', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(446, 18, 'Rakhi 4 (XAE)', '1', 32, 1, 'PicsArt_07-05-11.40.05_1593978794.jpg', '2020-07-05 23:53:14', '2020-08-30 07:23:22', 'Makes the bond of brother and sister stronger with good quality', 0, 1, 12),
(448, 18, 'Rakhi 6 (XAE)', '1', 40, 1, 'PicsArt_07-05-11.34.00_1593979037.jpg', '2020-07-05 23:57:17', '2020-08-30 07:23:22', 'Makes the bond of brother and sister stronger with good quality', 0, 1, 12),
(449, 18, 'Rakhi 7 (XAE)', '1', 30, 1, 'PicsArt_07-05-11.43.40_1593979145.jpg', '2020-07-05 23:59:05', '2020-08-30 07:23:22', 'Makes the bond of brother and sister stronger with good quality', 0, 1, 12),
(452, 18, 'Rakhi 2 (XAE)', '1', 36, 1, 'PicsArt_07-06-11.11.03_1594065874.jpg', '2020-07-07 00:04:34', '2020-08-30 07:23:22', 'Makes the bond of brother and sister stronger with good quality', 0, 1, 12),
(453, 18, 'Rakhi 1 (XAE)', '1', 35, 1, 'PicsArt_07-06-11.05.31_1594065998.jpg', '2020-07-07 00:06:38', '2020-08-30 07:23:22', 'Makes the bond of brother and sister stronger with good quality', 0, 1, 12),
(454, 18, 'Lumba Rakhi 5 (XAE)', '1', 28, 1, 'PicsArt_07-06-11.01.43_1594066220.jpg', '2020-07-07 00:10:20', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(455, 18, 'Lumba Rakhi 6 (XAE)', '1', 35, 1, 'PicsArt_07-06-10.59.44_1594066535.jpg', '2020-07-07 00:15:35', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(456, 18, 'Lumba Rakhi 7 (XAE)', '1', 35, 1, 'PicsArt_07-06-10.58.12_1594066559.jpg', '2020-07-07 00:15:59', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(457, 18, 'Lumba Rakhi 8 (XAE)', '1', 35, 1, 'PicsArt_07-06-12.26.19_1594066585.jpg', '2020-07-07 00:16:25', '2020-08-30 07:23:22', 'A designer wear lumba for your loved one on the occasion of rakshabandhan. It makes you look more beautiful', 0, 1, 12),
(458, 18, 'CONA NYSE slim switch (AXE)', '1', 78, 0, 'IMG_20200707_103331_1594098415.jpg', '2020-07-07 09:06:55', '2020-08-30 07:23:22', '6A.\r\n1Way switch.\r\nColour:- metallic', 35, 1, 10),
(459, 18, 'CONA NYSE slim switch (AXE)', '1', 68, 1, 'IMG_20200707_135758_1594110755.jpg', '2020-07-07 12:32:35', '2020-08-30 07:23:22', '6A. \r\n1Way switch.\r\n Colour:- White', 35, 1, 10),
(460, 18, 'CONA NYSE slim switch (AXE)', '1', 68, 1, 'IMG_20200707_135758_1594110875.jpg', '2020-07-07 12:34:35', '2020-08-30 07:23:23', '6A.\r\n 1Way switch. \r\nColour:- white', 35, 1, 10),
(461, 20, 'Huggies Diapers pants large size- ATK', '1', 699, 1, 'IMG_20200707_192408_1594130484.jpg', '2020-07-07 18:01:24', '2020-08-30 07:23:23', '44 counts\r\nSize:- L', 15, 1, 2),
(462, 20, 'Huggies Diapers pants small size -ATK', '1', 699, 1, 'IMG_20200707_192408_1594130596.jpg', '2020-07-07 18:03:16', '2020-08-30 07:23:23', '58 count\r\nSize:- S', 15, 1, 2),
(463, 20, 'Huggies Diapers pants medium size- ATK', '1', 699, 1, 'IMG_20200707_192408_1594130685.jpg', '2020-07-07 18:04:45', '2020-08-30 07:23:23', '52 count\r\nSize:- M', 15, 1, 2),
(464, 20, 'Huggies Diapers pants extra large size :-ATK', '1', 699, 1, 'IMG_20200707_192408_1594130790.jpg', '2020-07-07 18:06:30', '2020-08-30 07:23:23', '38 count\r\nSize:- XL', 15, 1, 2),
(465, 20, 'Wishper XL Size pads for women-ATK', '1', 420, 1, 'IMG_20200707_193812_1594131028.jpg', '2020-07-07 18:10:28', '2020-08-30 07:23:23', '44 Pads\r\nSize:- XL', 10, 1, 2),
(466, 20, 'Wishper XL Size pads for women-ATK', '1', 165, 1, 'IMG_20200707_194625_1594131466.jpg', '2020-07-07 18:17:46', '2020-08-30 07:23:23', '15 pads \r\nSize: XL', 10, 1, 2),
(467, 20, 'Stayfree XL Size for women-ATK', '1', 115, 1, 'images_1594131820.jpeg', '2020-07-07 18:23:40', '2020-08-30 07:23:23', '20 Pads\r\nSize:XL', 10, 1, 2),
(468, 20, 'Mamypoko Diapers pants small size-ATK', '1', 699, 1, 'IMG_20200707_200145_1594132424.jpg', '2020-07-07 18:33:44', '2020-08-30 07:23:23', '58 count\r\nSize:- S', 15, 1, 2),
(469, 20, 'Mamypoko Diapers pants medium size-ATK', '1', 699, 1, 'IMG_20200707_200145_1594133223.jpg', '2020-07-07 18:47:03', '2020-08-30 07:23:23', '52 count\r\nSize: M', 15, 1, 2),
(470, 20, 'Mamypoko Diapers pants large size- ATK', '1', 699, 1, 'IMG_20200707_200145_1594133314.jpg', '2020-07-07 18:48:34', '2020-08-30 07:23:23', '44 count\r\nSize: L', 15, 1, 2),
(471, 20, 'Mamypoko Diapers pants extra large size-ATK', '1', 699, 1, 'IMG_20200707_200145_1594133377.jpg', '2020-07-07 18:49:37', '2020-08-30 07:23:23', '38 Count\r\nSize:XL', 15, 1, 2),
(472, 20, 'Mamypoko diapers yellow pants medium size-ATK', '1', 399, 1, '09-07-20_1594306330.jpg', '2020-07-09 18:52:10', '2020-08-30 07:23:23', '36 Count\r\nSize : M', 15, 1, 2),
(473, 20, 'Mamypoko diapers yellow pants small size-ATK', '1', 399, 1, '09-07-20_1594306468.jpg', '2020-07-09 18:54:28', '2020-08-30 07:23:23', '46 count\r\nSize: S', 15, 1, 2),
(474, 20, 'Mamypoko diapers yellow pants large size-ATK', '1', 399, 1, '09-07-20_1594306541.jpg', '2020-07-09 18:55:41', '2020-08-30 07:23:23', '34 count\r\nSize: L', 15, 1, 2),
(475, 20, 'Pampers diapers pants small size-ATK', '1', 699, 1, '09-07-20_1594306942.jpg', '2020-07-09 19:02:22', '2020-08-30 07:23:23', '58 Count\r\nSize:S', 15, 1, 2),
(476, 20, 'Pampers diapers pants medium size-ATK', '1', 699, 1, '09-07-20_1594307131.jpg', '2020-07-09 19:05:31', '2020-08-30 07:23:23', '54 count\r\nSize:- M', 15, 1, 2),
(477, 20, 'Pampers diapers pants large size- ATK', '1', 699, 1, '09-07-20_1594307238.jpg', '2020-07-09 19:07:18', '2020-08-30 07:23:23', '44 count\r\nSize: L', 15, 1, 2),
(478, 19, 'Tresemme  Shampoo ----------------ATK', '1L', 580, 1, '09-07-20_1594307324.jpg', '2020-07-09 19:08:44', '2020-08-30 07:23:23', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(479, 19, 'Ayur Shampoo -----------ATK', '200ml', 90, 1, '09-07-20_1594311406.jpg', '2020-07-09 20:16:46', '2020-08-30 07:23:24', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(480, 18, 'Sprite 2.2L :-JSM', '1', 95, 0, '10-07-20_1594366460.jpg', '2020-07-10 11:34:20', '2020-08-30 07:23:24', 'Drink that usually contains carbonated water (although some vitamin waters and lemonades are not carbonated), a sweetener, and a natural or artificial flavoring. ...', 5.26, 1, 11),
(481, 18, 'Mango punch 750ml:-JSM', '1', 40, 1, '10-07-20_1594366633.jpg', '2020-07-10 11:37:13', '2020-08-30 07:23:24', 'Drink that usually contains carbonated water (although some vitamin waters and lemonades are not carbonated), a sweetener, and a natural or artificial flavoring. ...', 25, 1, 11),
(482, 18, 'Appy Fizze 250ML:-JSM', '1', 15, 1, '10-07-20_1594366762.jpg', '2020-07-10 11:39:22', '2020-08-30 07:23:24', 'Drink that usually contains carbonated water (although some vitamin waters and lemonades are not carbonated), a sweetener, and a natural or artificial flavoring. ...', 0, 1, 11),
(483, 18, 'Bislery 1L:-JSM', '1', 18, 1, '10-07-20_1594366897.jpg', '2020-07-10 11:41:37', '2020-08-30 07:23:24', 'Quality Tests are carried out at every stage to give you pure, safe & healthy drinking water.', 16.67, 1, 11),
(484, 18, 'Coolberg Beer (Non Alcoholic) 330ML, Buy 6 get 1 free :-JSM', '1', 69, 1, '10-07-20_1594367125.jpg', '2020-07-10 11:45:25', '2020-08-30 07:23:24', 'Coolberg\'s malt beer is significantly low on calories than any other regular soft drink beverage and is an healthier option and it\'s non alcoholic. .All flavours available here', 0, 1, 11),
(485, 18, 'Amul Kool 250 ML:-JSM', '1', 25, 0, '10-07-20_1594367469.jpg', '2020-07-10 11:51:09', '2020-08-30 07:23:24', 'Amul Kool is a Badam flavoured milk product from Amul.As beverages like these are drunk in large quantities in India.All flavours available here.', 8, 1, 11),
(486, 49, 'Kesh king 200ml shampoo ____ATK', '200ml', 200, 1, '10-07-20_1594381675.jpg', '2020-07-10 15:47:55', '2020-08-30 07:23:24', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(487, 49, 'Fogg deodorant-150ml spray____ATK', '150ml', 230, 1, '10-07-20_1594381818.jpg', '2020-07-10 15:50:18', '2020-08-30 07:23:24', 'Quantity: 150 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 15, 1, 8),
(488, 49, 'Denver deodorant-200ml spray____ATK', '200ml', 249, 1, '10-07-20_1594381932.jpg', '2020-07-10 15:52:12', '2020-08-30 07:23:24', 'Quantity: 200 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 15, 1, 8),
(489, 49, 'park avenue deodorant spray____ATK', '150ml', 199, 1, '10-07-20_1594382183.jpg', '2020-07-10 15:56:23', '2020-08-30 07:23:24', 'Quantity:150ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 15, 1, 8),
(490, 49, 'Axe Signature body perfume____ATK', '122ml', 190, 1, '10-07-20_1594382307.jpg', '2020-07-10 15:58:27', '2020-08-30 07:23:24', 'Quantity:122ml	\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 10, 1, 8),
(491, 49, 'Nivea deodorant spray____ATK', '150ml', 199, 1, '10-07-20_1594382408.jpg', '2020-07-10 16:00:08', '2020-08-30 07:23:24', 'Quantity:150ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 15, 1, 8),
(492, 49, 'ENVY Deodorant spray____ATK', '120ml', 199, 1, '10-07-20_1594382529.jpg', '2020-07-10 16:02:09', '2020-08-30 07:23:24', 'Quantity:120ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 15, 1, 8),
(493, 49, 'Envy Perfume_60ML____ATK', '60ml', 249, 1, '10-07-20_1594382619.jpg', '2020-07-10 16:03:39', '2020-08-30 07:23:24', 'Quantity: 60 ml\r\nIdeal For: Men&women\r\nFragrance Classification: envy', 15, 1, 8),
(494, 49, 'Envy Perfume-30ml___ATK', '30ml', 145, 1, 'IMG_20200710_175453_1594384875.jpg', '2020-07-10 16:24:19', '2020-08-30 07:23:24', 'Quantity: 30ml\r\nIdeal For: Men&women\r\nFragrance Classification: envy', 10, 1, 8),
(495, 49, 'Fogg Scent perfume___ATK', '0', 500, 1, '10-07-20_1594384093.jpg', '2020-07-10 16:28:13', '2020-08-30 07:23:24', 'Best quality \r\nIdeal For: Men&women\r\nFragrance Classification: perfume', 20, 1, 8),
(496, 49, 'Fogg combo pack of exclusive collection___ATK', '0', 1000, 1, '10-07-20_1594384162.jpg', '2020-07-10 16:29:22', '2020-08-30 07:23:24', 'Quantity: combo\r\nIdeal For: Men\r\nFragrance Classification: perfume', 20, 1, 8),
(497, 49, 'Fair&lovely Cream-25gm ATK', '25gm', 54, 1, '10-07-20_1594384234.jpg', '2020-07-10 16:30:34', '2020-08-30 07:23:24', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 6, 1, 8),
(498, 49, 'Fair&lovely Cream-50gm___ATK', '50gm', 102, 1, '10-07-20_1594384308.jpg', '2020-07-10 16:31:48', '2020-08-30 07:23:24', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 6, 1, 8),
(499, 49, 'Fair&lovely Cream-80gm___ATK', '80gm', 155, 1, '10-07-20_1594384380.jpg', '2020-07-10 16:33:00', '2020-08-30 07:23:25', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 10, 1, 8),
(500, 49, 'Garnier Cream-45gm___ATK', '45gm', 129, 1, '10-07-20_1594384469.jpg', '2020-07-10 16:34:29', '2020-08-30 07:23:25', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 6, 1, 8),
(501, 49, 'Ponds (white beauty) cream-23g___ATK', '23g', 75, 1, '10-07-20_1594384642.jpg', '2020-07-10 16:37:22', '2020-08-30 07:23:25', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 6, 1, 8),
(502, 49, 'Ponds (white beauty) cream-35g___ATK', '35g', 125, 1, '10-07-20_1594384722.jpg', '2020-07-10 16:38:42', '2020-08-30 07:23:25', 'For Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 7, 1, 8),
(503, 49, 'Amrican Doll set___UNA', '1 unit', 280, 1, '10-07-20_1594386866.jpg', '2020-07-10 17:14:26', '2020-08-30 07:23:25', '•A gift for Some one you love\r\n•Export Quality\r\n•Special Doll set for beautiful kids', 36, 1, 9),
(504, 49, 'Doll Set-charming fashion girl___UNA', '1unit', 135, 1, '10-07-20_1594387042.jpg', '2020-07-10 17:17:22', '2020-08-30 07:23:25', '•A gift for some one you love\r\n•Export Quality\r\n•Special Doll set for beautiful kids', 33, 1, 9),
(505, 49, 'Paradise-wooden couple gift___UNA', '1unit', 549, 0, '10-07-20_1594387225.jpg', '2020-07-10 17:20:25', '2020-08-30 07:23:25', '•Handicraft gift\r\n•A special time to enjoy celebrate and rejoice your feelings\r\nContains:1 Unit', 36.6, 1, 9),
(506, 49, 'Amaze pudding set___UNA', '14pcs', 340, 1, '10-07-20_1594387389.jpg', '2020-07-10 17:23:09', '2020-08-30 07:23:25', '•Microwave Cooking\r\n•Refrigerator storage\r\n•Dishwasher Safe\r\nQuantity:14pcs', 39.2, 1, 9),
(507, 49, 'Smart pudding set___UNA', '13pcs', 340, 1, '10-07-20_1594387515.jpg', '2020-07-10 17:25:15', '2020-08-30 07:23:25', '•Microwave cooking\r\n•Refrigerator Storage\r\n•Dishwasher Safe\r\n•Quantity:6+6+1=13pcs', 39.2, 1, 9),
(508, 49, 'OZZO Houseware-lunch box(pack of2)___UNA', '2pcs', 180, 1, '10-07-20_1594387646.jpg', '2020-07-10 17:27:26', '2020-08-30 07:23:25', '•For kids\r\n•Happy meal(Pack of 2)', 29.2, 1, 9),
(509, 49, 'Love gift-Gift for love___UNA', '1pcs', 120, 1, '10-07-20_1594387809.jpg', '2020-07-10 17:30:09', '2020-08-30 07:23:25', '•glass material\r\n•A special time to enjoy, celebrate and rejoice your feelings', 42, 1, 9),
(510, 19, 'Ayur Shampoo--------------ATK', '1L', 230, 1, '11-07-20_1594445494.jpg', '2020-07-11 09:31:34', '2020-08-30 07:23:25', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8);
INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(511, 19, 'Head and shoulders Shampoo------------ATK', '180 ml', 145, 1, '11-07-20_1594490665.webp', '2020-07-11 22:04:25', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(512, 19, 'Head and shoulders--------------ATK', '340 ml', 275, 1, '11-07-20_1594490960.webp', '2020-07-11 22:09:20', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(513, 19, 'Head and shoulders Shampoo------------ATK', '650 ml', 500, 1, 'IMG_20200711_234041_1594546578.webp', '2020-07-11 22:12:24', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(514, 19, 'Head and shoulders --------------ATK', '1L', 700, 1, '12-07-20_1594533436.webp', '2020-07-12 09:57:16', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(515, 19, 'Clinic Plus Shampoo------------ATK', '175 ml', 75, 1, '12-07-20_1594533877.jpg', '2020-07-12 10:04:37', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(516, 19, 'Clinic Plus Shampoo------------ATK', '340 ml', 155, 1, '12-07-20_1594534127.webp', '2020-07-12 10:08:47', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(517, 19, 'Clinic Plus Shampoo------------ATK', '650 ml', 385, 1, '12-07-20_1594534397.webp', '2020-07-12 10:13:17', '2020-08-30 07:23:25', 'Anti-dandruff Shampoo\r\nIdeal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(518, 19, 'Himalaya Shampoo -------------ATK', '200 ml', 130, 1, '12-07-20_1594541148.webp', '2020-07-12 12:05:48', '2020-08-30 07:23:25', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(519, 19, 'Himalaya Shampoo -------------ATK', '400 ml', 230, 1, '12-07-20_1594541411.webp', '2020-07-12 12:10:11', '2020-08-30 07:23:25', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(520, 19, 'Himalaya Shampoo -------------ATK', '700 ml', 450, 1, '12-07-20_1594541562.webp', '2020-07-12 12:12:42', '2020-08-30 07:23:25', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(526, 19, 'Tresemme  Shampoo ----------------ATK', '580 ml', 445, 1, '12-07-20_1594545701.webp', '2020-07-12 13:21:41', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(527, 19, 'Ayur Shampoo -----------ATK', '500 ml', 150, 1, '12-07-20_1594546069.webp', '2020-07-12 13:27:49', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(528, 20, 'Tresemme Shampoo  -ATK', '200 ml', 125, 1, '12-07-20_1594564208.jpg', '2020-07-12 18:30:08', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(529, 20, 'Nivea Shampoo -ATK', '200 ml', 199, 1, '12-07-20_1594564431.jpg', '2020-07-12 18:33:51', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(530, 20, 'Sunsilk Shampoo -ATK', '400 ml', 175, 1, '12-07-20_1594564956.jpg', '2020-07-12 18:42:36', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(531, 20, 'Sunsilk Shampoo -ATK', '200 ml', 85, 1, '12-07-20_1594565145.jpg', '2020-07-12 18:45:45', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(532, 20, 'Pantene Shampoo -ATK', '200 ml', 85, 1, '12-07-20_1594565383.jpg', '2020-07-12 18:49:43', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(533, 20, 'Pantene Shampoo -ATK', '400 ml', 220, 1, '12-07-20_1594565871.jpg', '2020-07-12 18:57:51', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 6, 1, 8),
(534, 20, 'Pantene Shampoo -ATK', '650 ml', 625, 1, '12-07-20_1594566029.jpg', '2020-07-12 19:00:29', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 10, 1, 8),
(535, 20, 'Pantene Shampoo -ATK', '1 L', 700, 1, '12-07-20_1594566161.jpg', '2020-07-12 19:02:41', '2020-08-30 07:23:26', 'Ideal For: Men & Women\r\nSuitable For: All Hair Types\r\nComposition: Fresh Scent', 15, 1, 8),
(537, 18, 'Lakme Cream(ATK)', '1', 390, 1, '15-07-20_1594824144.webp', '2020-07-15 18:42:24', '2020-08-30 07:23:26', 'Lakme Cream	\r\nFor Women\r\nFor Normal Skin, Dry Skin\r\nCream Form', 6, 1, 8),
(538, 18, 'Loreal Serum-ATK', '40 ml', 150, 1, '15-07-20_1594824846.webp', '2020-07-15 18:54:06', '2020-08-30 07:23:26', 'Loreal Serum-40ml	Crème formula                                                                                                                                                        nourishes hair and calms Frizz                                                                                                                  transformers unruly and dru hair to smooth manageable hair', 6, 1, 8),
(539, 18, 'Loreal Serum-ATK', '80 ml', 230, 1, '15-07-20_1594824995.webp', '2020-07-15 18:56:35', '2020-08-30 07:23:26', 'Loreal Serum-80ml	Crème formula                                                                                                                                                        nourishes hair and calms Frizz                                                                                                                  transformers unruly and dru hair to smooth manageable hair', 10, 1, 8),
(540, 18, 'Livon hair serum-ATK', '20 ml', 65, 1, '15-07-20_1594825346.webp', '2020-07-15 19:02:26', '2020-08-30 07:23:26', 'Livon hair serum-20ml	Crème formula                                                                                                                                                        nourishes hair and calms Frizz                                                                                                                  transformers unruly and dru hair to smooth manageable hair', 6, 1, 8),
(541, 18, 'Livon hair serum-ATK', '50 ml', 150, 1, '15-07-20_1594825610.webp', '2020-07-15 19:06:50', '2020-08-30 07:23:26', 'Livon hair serum-50ml	Crème formula                                                                                                                                                        nourishes hair and calms Frizz                                                                                                                  transformers unruly and dru hair to smooth manageable hair', 6, 1, 8),
(542, 18, 'Livon hair serum-ATK', '100 ml', 250, 1, '15-07-20_1594825719.webp', '2020-07-15 19:08:39', '2020-08-30 07:23:26', 'Livon hair serum-100ml	Crème formula                                                                                                                                                        nourishes hair and calms Frizz                                                                                                                  transformers unruly and dru hair to smooth manageable hair', 10, 1, 8),
(543, 18, 'Gatsby Hair Wax-ATK', '25 g', 75, 1, '15-07-20_1594826054.webp', '2020-07-15 19:14:14', '2020-08-30 07:23:26', 'Quantity;-25g                                                                                                                                                                     long lasting effect                                                                                                                                              Hair type-suitable all hair type', 10, 1, 8),
(544, 18, 'Gatsby Hair Wax-ATK', '75 g', 180, 1, '15-07-20_1594826260.webp', '2020-07-15 19:17:40', '2020-08-30 07:23:26', 'Quantity;-75g                                                                                                                                                                     long lasting effect                                                                                                                                              Hair type-suitable all hair type', 10, 1, 8),
(545, 18, 'Gatsby Hair Wax spray-ATK', '250 ml', 200, 1, '15-07-20_1594826612.webp', '2020-07-15 19:23:32', '2020-08-30 07:23:26', 'Quantity;-250ML                                                                                                                                                                  long lasting effect                                                                                                                                              Hair type-suitable all hair type', 10, 1, 8),
(546, 18, 'Colourmate hair colour (ATK)', '1', 90, 1, '15-07-20_1594827130.webp', '2020-07-15 19:32:10', '2020-08-30 07:23:26', 'colourmate   no amonia    hair colour', 10, 1, 8),
(547, 18, 'Garnier hair colour-ATK', '35 ml', 80, 1, '15-07-20_1594827457.webp', '2020-07-15 19:37:37', '2020-08-30 07:23:27', 'no amonia formula                                                                                                                                                     long lasting colour                                                                                                                                                                               colour lock technology', 10, 1, 8),
(549, 30, 'Dermi cool menthol regular Telcum powder- ATK', '150 gm', 110, 1, '17-07-20_1594962738.jpg', '2020-07-17 09:12:18', '2020-08-30 07:23:27', 'Quantity:-150g\r\nPrickly heat powder\r\nMenthol regular powder', 6, 1, 8),
(550, 18, 'N96 Mask', '1', 220, 1, 'IMG-20200716-WA0009_1594974891.webp', '2020-07-17 12:29:32', '2020-08-30 07:23:27', 'Impulse Washable Reusable Outdoor Protection Face Mask for germ protection I 6 layer face mask with respirator I Anti virus, Anti Pollution, Anti Dust ,Washable.', 0, 1, 2),
(551, 17, 'parachute advansed body lotion- ATK', '400 ml', 325, 1, '17-07-20_1594980261.jpg', '2020-07-17 14:04:21', '2020-08-30 07:23:27', 'Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(554, 17, 'Garnier body lotion- RTU', '125 ml', 155, 1, '17-07-20_1594981468.jpg', '2020-07-17 14:24:28', '2020-08-30 07:23:27', 'Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(557, 17, 'Garnier body lotion- RTU', '250 ml', 255, 1, '17-07-20_1594981784.jpg', '2020-07-17 14:29:44', '2020-08-30 07:23:27', 'Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(558, 17, 'Vasline body lotion- ATK', '100 ml', 80, 1, '17-07-20_1594983217.jpg', '2020-07-17 14:53:37', '2020-08-30 07:23:27', 'Infused with Vaseline jelly, this Deep restore lotion triples skin\'s moisture level and keeps it moisturised day long\r\nVaseline deep restore body lotion is fast absorbing for a non-greasy feel ; Absorbs fast for a non-greasy feel leaving your skin healthy, glowing and smooth.', 0, 1, 8),
(559, 17, 'Vasline body lotion-ATK', '400 ml', 325, 1, '17-07-20_1594983466.jpg', '2020-07-17 14:57:46', '2020-08-30 07:23:27', 'Infused with Vaseline jelly, this Deep restore lotion triples skin\'s moisture level and keeps it moisturised day long\r\nVaseline deep restore body lotion is fast absorbing for a non-greasy feel ; Absorbs fast for a non-greasy feel leaving your skin healthy, glowing and smooth.', 0, 1, 8),
(560, 17, 'Himalya body lotion- ATK', '400 ml', 249, 1, '17-07-20_1594983677.jpg', '2020-07-17 15:01:17', '2020-08-30 07:23:27', 'In this Deep restore lotion triples skin\'s moisture level and keeps it moisturised day long\r\n deep restore body lotion is fast absorbing for a non-greasy feel ; Absorbs fast for a non-greasy feel leaving your skin healthy, glowing and smooth', 0, 1, 8),
(561, 17, 'VLCC body lotion ATK', '1', 299, 1, 'IMG_20200717_222305_1595005037.jpg', '2020-07-17 15:06:47', '2020-08-30 07:23:27', 'Moisturizing body lotion, clinically proven to restore dry skin\r\nDaily body lotion best for: dry skin, rough skin', 0, 1, 8),
(562, 19, 'Bajaj almond drops hair oil----------ATK', '100 ml', 65, 1, '17-07-20_1594996857.webp', '2020-07-17 18:40:57', '2020-08-30 07:23:27', 'Soothing mild almond fragrance\r\nLight non sticky Hair Oil; Does not freeze in winters\r\nHair Type: Suitable for any hair style\r\nUsage: Apply the oil all over your head, Gently massage the oil onto your scalp using your fingertips, Leave the oil on for an hour, Rinse it off', 5, 1, 8),
(563, 19, 'Bajaj almond drops hair oil----------ATK', '200ml', 125, 1, '17-07-20_1594996991.webp', '2020-07-17 18:43:11', '2020-08-30 07:23:27', 'Soothing mild almond fragrance\r\nLight non sticky Hair Oil; Does not freeze in winters\r\nHair Type: Suitable for any hair style\r\nUsage: Apply the oil all over your head, Gently massage the oil onto your scalp using your fingertips, Leave the oil on for an hour, Rinse it off', 5, 1, 8),
(564, 19, 'Bajaj almond drops hair oil----------ATK', '300 ml', 155, 1, '17-07-20_1594997118.webp', '2020-07-17 18:45:18', '2020-08-30 07:23:28', 'Soothing mild almond fragrance\r\nLight non sticky Hair Oil; Does not freeze in winters\r\nHair Type: Suitable for any hair style\r\nUsage: Apply the oil all over your head, Gently massage the oil onto your scalp using your fingertips, Leave the oil on for an hour, Rinse it off', 5, 1, 8),
(565, 19, 'Nihar hair oil ---------------ATK', '200 ml', 85, 1, '17-07-20_1594999062.webp', '2020-07-17 19:17:42', '2020-08-30 07:23:28', 'Nihar Naturals comes with the goodness of Coconut and Methi to give you thick and beautiful hair (based on technical study, compared to untreated hair)\r\nCoconut oil goes layers deep into your scalp - it nourishes and enriches your hair, infusing each strand with the goodness of nature (based on technical study)', 5, 1, 8),
(567, 19, 'Hair&care hair oil-------------ATK', '200ml', 115, 1, '17-07-20_1594999745.webp', '2020-07-17 19:29:05', '2020-08-30 07:23:28', 'Dry fruit hair oil contains goodness of walnut and almond\r\nNon-sticky formula for better styling\r\nPowered by vitamin-e\r\nCan be used after-wash for style and manageability\r\nFor strong and silky hair', 5, 1, 8),
(568, 19, 'Parachute jasmine hair oil----------ATK', '500 ml', 185, 1, '17-07-20_1594999892.webp', '2020-07-17 19:31:32', '2020-08-30 07:23:28', 'coconut oil that strengthen your hair and jasmine extracts add a silky shine; Non- sticky coconut Hair Oil leaves hair strong and beautiful\r\nSofter, shiner long hair with parachute advanced jasmine coconut Hair Oil\r\nAdvanced jasmine Hair Oil nourishes and protects hair till root', 10, 1, 8),
(571, 20, 'Ponds body lotion--ATK', '300 ml', 250, 1, '17-07-20_1595004639.webp', '2020-07-17 20:50:39', '2020-08-30 07:23:28', 'Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(573, 20, 'Ponds body lotion--ATK', '100 ml', 87, 1, '17-07-20_1595006909.webp', '2020-07-17 21:28:29', '2020-08-30 07:23:28', 'Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(574, 20, 'Dermi cool Menthol regular talcum powder-ATK', '150 gm', 110, 1, '17-07-20_1595008474.jpg', '2020-07-17 21:54:34', '2020-08-30 07:23:28', 'Quantity;-150g                                                                                                                                                                     prickly heat powder                                                                                                                                                    Menthol regular powder', 6, 1, 8),
(575, 19, 'Parachute jasmine hair oil----------ATK', '300 ml', 125, 1, '17-07-20_1595008649.webp', '2020-07-17 21:57:29', '2020-08-30 07:23:28', 'coconut oil that strengthen your hair and jasmine extracts add a silky shine; Non- sticky coconut Hair Oil leaves hair strong and beautiful\r\nSofter, shiner long hair with parachute advanced jasmine coconut Hair Oil\r\nAdvanced jasmine Hair Oil nourishes and protects hair till root', 5, 1, 8),
(576, 19, 'Parachute jasmine hair oil----------ATK', '100 ml', 42, 1, '17-07-20_1595008941.webp', '2020-07-17 22:02:21', '2020-08-30 07:23:28', 'coconut oil that strengthen your hair and jasmine extracts add a silky shine; Non- sticky coconut Hair Oil leaves hair strong and beautiful\r\nSofter, shiner long hair with parachute advanced jasmine coconut Hair Oil\r\nAdvanced jasmine Hair Oil nourishes and protects hair till root', 5, 1, 8),
(578, 19, 'Hair&care hair oil-------------ATK', '300 ml', 155, 1, '18-07-20_1595051445.webp', '2020-07-18 09:50:45', '2020-08-30 07:23:28', 'Dry fruit hair oil contains goodness of walnut and almond\r\nNon-sticky formula for better styling\r\nPowered by vitamin-e\r\nCan be used after-wash for style and manageability\r\nFor strong and silky hair', 5, 1, 8),
(579, 19, 'Parachute hair oil---------------ATK', '200ml', 73, 1, '18-07-20_1595051658.webp', '2020-07-18 09:54:18', '2020-08-30 07:23:28', 'Scientifically proven to give you long & strong hair\r\nMade with the finest hand-picked coconuts\r\nExtracted from naturally sun-dried coconuts\r\nLong lasting fresh aroma', 5, 1, 8),
(580, 19, 'Parachute jasmine hair oil----------ATK', '200 ml', 83, 1, '18-07-20_1595057218.webp', '2020-07-18 11:26:58', '2020-08-30 07:23:28', 'coconut oil that strengthen your hair and jasmine extracts add a silky shine; Non- sticky coconut Hair Oil leaves hair strong and beautiful\r\nSofter, shiner long hair with parachute advanced jasmine coconut Hair Oil\r\nAdvanced jasmine Hair Oil nourishes and protects hair till root', 5, 1, 8),
(581, 18, 'Colourmate hair colour (ATK)', '1', 50, 1, '18-07-20_1595057797.jpg', '2020-07-18 11:36:37', '2020-08-30 07:23:29', 'Colourmate hair colour	 colourmate   no amonia    hair colour', 10, 1, 8),
(582, 18, 'Garnier hair colour--ATK', '60 ml', 180, 1, '18-07-20_1595058012.webp', '2020-07-18 11:40:12', '2020-08-30 07:23:29', 'Garnier hair colour-60ml	no amonia formula                                                                                                                                                     long lasting colour                                                                                                                                                                               colour lock technology', 10, 1, 8),
(583, 18, 'Loreal hair colour-ATK', '10', 199, 1, '18-07-20_1595058210.webp', '2020-07-18 11:43:30', '2020-08-30 07:23:29', 'Loreal hair colour	no amonia formula                                                                                                                                                     long lasting colour                                                                                                                                                                               colour lock technology', 10, 1, 8),
(584, 18, 'Loreal hair colour-ATK', '1', 590, 1, '18-07-20_1595058941.webp', '2020-07-18 11:55:41', '2020-08-30 07:23:29', 'Loreal hair colour	no amonia formula                                                                                                                                                     long lasting colour                                                                                                                                                                               colour lock technology', 10, 1, 8),
(586, 12, 'Beardo hair wax__ATK', '75g', 250, 1, '18-07-20_1595060641.jpeg', '2020-07-18 12:24:01', '2020-08-30 07:23:29', 'long lasting effect                                                                                                                                              Hair type-suitable all hair type', 0, 1, 8),
(587, 18, 'Jonshon\'baby cream-30g-ATK', '1', 52, 1, '18-07-20_1595067753.webp', '2020-07-18 14:22:33', '2020-08-30 07:23:29', 'Jonshon\'baby cream-30g	Clinically mildness proven                                                                                                                                                           baby soft skin up to 24hour                                                                                                                            100% gentle care. from day 1                                                                                                                             No parabens.No sulfates.no dyes', 5, 1, 8),
(588, 18, 'Jonshon\'baby cream-50g-ATK', '1', 75, 1, '18-07-20_1595067925.webp', '2020-07-18 14:25:25', '2020-08-30 07:23:29', 'Jonshon\'baby Cream50g	Clinically mildness proven                                                                                                                                                           baby soft skin up to 24hour                                                                                                                            100% gentle care. from day 1                                                                                                                             No parabens.No sulfates.no dyes', 5, 1, 8),
(589, 18, 'Jonshon\'baby cream-100g-ATK', '1', 135, 1, '18-07-20_1595068230.webp', '2020-07-18 14:30:30', '2020-08-30 07:23:29', 'Jonshon\'baby cream-100g	Clinically mildness proven                                                                                                                                                           baby soft skin up to 24hour                                                                                                                            100% gentle care. from day 1                                                                                                                             No parabens.No sulfates.no dyes', 10, 1, 8),
(590, 18, 'jhonshon,s baby lotion -ATK', '50ml', 50, 1, '18-07-20_1595069964.webp', '2020-07-18 14:59:24', '2020-08-30 07:23:29', 'Baby Soft skin  all day                                                                                                                                              Made with natural plant oil                                                                                                                              Recommended by doctors                                                                                                                                        No added parabens,phthalates or dyes', 5, 1, 8),
(591, 18, 'jhonshon,s baby lotion -ATK', '100ml', 85, 1, '18-07-20_1595070293.webp', '2020-07-18 15:04:53', '2020-08-30 07:23:29', 'Baby Soft skin  all day                                                                                                                                              Made with natural plant oil                                                                                                                              Recommended by doctors                                                                                                                                        No added parabens,phthalates or dyes', 5, 1, 8),
(592, 18, 'jhonshon,s baby lotion -ATK', '200ml', 155, 1, 'IMG_20200718_163715_1595070519.webp', '2020-07-18 15:08:00', '2020-08-30 07:23:29', 'Baby Soft skin  all day                                                                                                                                              Made with natural plant oil                                                                                                                              Recommended by doctors                                                                                                                                        No added parabens,phthalates or dyes', 10, 1, 8),
(593, 18, 'Jhonshon baby hair oil', '50ml', 45, 1, '18-07-20_1595070852.webp', '2020-07-18 15:14:12', '2020-08-30 07:23:29', 'Jhonshon baby hair oil-50ml	Enriched with avocado and pro-vitamin B5 to keep your baby’s hair and scalp healthy\r\n100% Clinically proven mild and gentle\r\nDermatologist tested, allergy tested', 5, 1, 8),
(594, 18, 'Joy Body lotion- ATK', '100ml', 155, 1, '18-07-20_1595071138.webp', '2020-07-18 15:18:58', '2020-08-30 07:23:29', 'Joy Body lotion	Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(595, 18, 'Joy Body lotion- ATK', '500ml', 240, 1, '18-07-20_1595071269.webp', '2020-07-18 15:21:09', '2020-08-30 07:23:29', 'Joy Body lotion	Body lotion for silky soft, smooth, radiant skin\r\nTriple Vitamin moisturizing lotion. Ideal For Men & Women\r\nGives skin nourishment revealing an amazingly soft skin\r\nProvides 3X moisturization\r\nSolution to bid adieu to dry and rough skin in winter\r\nRecommended to be applied daily for the best results', 0, 1, 8),
(596, 18, 'Orkus led 0.5W', '1', 65, 1, '20-07-20_1595258259.webp', '2020-07-20 19:17:39', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 38.46, 1, 10),
(597, 18, 'Orkus led 5W', '1', 125, 1, '20-07-20_1595258627.webp', '2020-07-20 19:23:47', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 36, 1, 10),
(598, 18, 'Orkus led 7W', '1', 145, 1, '20-07-20_1595259151.webp', '2020-07-20 19:32:31', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 37.93, 1, 10),
(599, 18, 'Orkus led 9W', '1', 135, 1, '20-07-20_1595259264.webp', '2020-07-20 19:34:24', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 25.93, 1, 10),
(600, 18, 'Orkus led 12W', '1', 190, 1, '20-07-20_1595259392.webp', '2020-07-20 19:36:32', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 21.05, 1, 10),
(601, 18, 'Orkus led 15W', '1', 275, 1, '20-07-20_1595259553.webp', '2020-07-20 19:39:13', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 16.36, 1, 10),
(602, 18, 'Orient Led Bulb 9W', '1', 180, 1, '20-07-20_1595259728.webp', '2020-07-20 19:42:08', '2020-08-30 07:23:29', '1 YEAR GUARANTEE', 44.44, 1, 10),
(603, 18, 'Orient Led Bulb 18W', '1', 425, 1, '20-07-20_1595259843.webp', '2020-07-20 19:44:03', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 36.47, 1, 10),
(604, 18, 'Orient Led Bulb  23W', '1', 600, 1, '20-07-20_1595260017.webp', '2020-07-20 19:46:57', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 41.67, 1, 10),
(605, 18, 'Orient Led Bulb 26W', '1', 650, 1, '20-07-20_1595260161.webp', '2020-07-20 19:49:21', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 36.97, 1, 10),
(606, 18, 'Orient Led Bulb 30W', '1', 700, 1, '20-07-20_1595260356.webp', '2020-07-20 19:52:36', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 25.71, 1, 10),
(607, 18, 'Orient Led Bulb 40W', '1', 800, 1, '20-07-20_1595260556.webp', '2020-07-20 19:55:56', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 12.5, 1, 10),
(608, 18, 'Orient Led Bulb 50W', '1', 1200, 1, '20-07-20_1595260683.webp', '2020-07-20 19:58:03', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 33.33, 1, 10),
(609, 18, 'Orient led 20W Eternal Delite Square tubelight', '1', 600, 1, '20-07-20_1595260886.webp', '2020-07-20 20:01:26', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 60, 1, 10),
(610, 18, 'Orkus led 20W T-5tubelight', '1', 585, 1, '20-07-20_1595261189.webp', '2020-07-20 20:06:29', '2020-08-30 07:23:30', '1 YEAR GUARANTEE', 58.97, 1, 10),
(611, 18, 'Philips led 9W', '1', 155, 1, '20-07-20_1595264746.webp', '2020-07-20 21:05:46', '2020-08-30 07:23:31', '1 YEAR GUARANTEE', 22.58, 1, 10),
(612, 18, 'Philips T-blub 18W', '1', 280, 1, '20-07-20_1595265103.webp', '2020-07-20 21:11:43', '2020-08-30 07:23:31', '1 YEAR GUARANTEE', 14.29, 1, 10),
(613, 18, 'Philps Inverter bulb 9 W', '1', 549, 1, '20-07-20_1595265420.webp', '2020-07-20 21:17:00', '2020-08-30 07:23:31', '1 YEAR GUARANTEE It gets charged while using on electricity.\r\nIt takes about 10 hours to get charged and can be used for 3 hours after electric cut.', 18.03, 1, 10),
(614, 18, 'K-N95 Face Mask', '1', 160, 1, '21-07-20_1595326041.webp', '2020-07-21 14:07:21', '2020-09-01 22:46:32', 'OUR K-N95 Face Mask with Breathable Particulate Respirator Valve is an industry-leading nose and mouth protection cover for daily wear to protect you against splash, dust, smog, ash and so on. It is comfortable and lightweight for hassle-free use by teens, adults, women and men all day long. Put the ear loop around your ears and you\'re all set. Features: 95% filtration efficiency against certain non-oil-based particles Cool Flow Valve helps reduce heat build-up inside the respirator Advanced filter media for easier breathing Stretchable, braided headbands for comfort Lightweight design comfortable for long periods of wear', 69, 1, 2),
(619, 49, 'Huggies dry pants small size GPH', '2 pants in packet', 18, 1, '22-07-20_1595431540.jpg', '2020-07-22 19:25:40', '2020-09-10 23:43:47', '2 pants in packet', 16.67, 1, 2),
(620, 49, 'Little angel popular pants small size GPH', '1pcs', 9, 1, '22-07-20_1595431620.jpg', '2020-07-22 19:27:00', '2020-09-10 23:46:04', 'size up to 7KG                                                                                                                                                      1 pcs in pack', 11.11, 1, 2),
(624, 49, 'Maxx deodorant-50ml spray RTU', '50ml', 225, 1, 'IMG_20200722_222355_1595437421.jpg', '2020-07-22 20:50:57', '2020-08-30 07:23:31', 'Quantity: 50 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 25, 1, 8),
(625, 49, 'Maxx deododant-30ml spray RTU', '30ml', 165, 1, '22-07-20_1595437533.jpg', '2020-07-22 21:05:33', '2020-08-30 07:23:32', 'Quantity: 30ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 25, 1, 8),
(626, 49, 'maxx deodorant-100ml spray RTU', '100ml', 575, 1, '22-07-20_1595437701.jpg', '2020-07-22 21:08:21', '2020-08-30 07:23:32', 'Quantity: 100 ml\r\nFragrance: Deodorant Spray\r\nFor Men & Women', 25, 1, 8),
(627, 30, 'Accounts for class 11 ITH', '1', 125, 1, '23-07-20_1595489621.jpg', '2020-07-23 11:33:41', '2020-09-07 19:27:24', 'Medium:- english\r\nNCERT', 0, 1, 37),
(628, 30, 'Accounts for class 11 ITH', '1', 125, 1, '23-07-20_1595489809.jpg', '2020-07-23 11:36:49', '2020-09-07 19:27:39', 'Medium:-hindi\r\nNCERT', 0, 1, 37),
(629, 30, 'Business studies for class 11 ITH', '1', 115, 1, '23-07-20_1595490162.jpg', '2020-07-23 11:42:42', '2020-09-06 19:42:01', 'Medium:- English\r\nNCERT', 0, 1, 34),
(630, 30, 'Business studies for class 11', '1', 70, 1, '23-07-20_1595490244.jpg', '2020-07-23 11:44:04', '2020-09-06 19:41:50', 'Medium:-HINDI\r\nNCERT', 0, 1, 34),
(631, 30, 'Maths for class 12 part-1 ITH', '1', 115, 1, '23-07-20_1595490464.jpg', '2020-07-23 11:47:44', '2020-09-06 19:38:16', 'Medium:-English\r\nNCERT', 0, 1, 34),
(632, 30, 'Maths for class 12 part-2', '1', 130, 1, '23-07-20_1595490554.jpg', '2020-07-23 11:49:14', '2020-09-06 19:38:31', 'Medium:-English\r\nNCERT', 0, 1, 34),
(633, 30, 'Physics for class 12 party ITH', '1', 170, 1, '23-07-20_1595490748.jpg', '2020-07-23 11:52:28', '2020-09-06 19:43:36', 'Medium:-English\r\nNCERT', 0, 1, 34),
(634, 30, 'Physics for class 12th part-2', '1', 140, 1, '23-07-20_1595490870.jpg', '2020-07-23 11:54:30', '2020-09-06 19:43:52', 'Medium:- English\r\nNCERT', 0, 1, 34),
(635, 30, 'Chemistry for class 12th part:-1', '1', 170, 1, '23-07-20_1595504073.jpg', '2020-07-23 15:34:33', '2020-09-06 19:40:46', 'Medium:-English\r\nNCERT', 0, 1, 34),
(636, 30, 'Chemistry for class 12th part:-2', '1', 115, 1, '23-07-20_1595504139.jpg', '2020-07-23 15:35:39', '2020-09-06 19:40:29', 'Medium:-English\r\nNCERT', 0, 1, 34),
(637, 30, 'Biology for class 12th', '1', 170, 1, '23-07-20_1595504237.jpg', '2020-07-23 15:37:17', '2020-09-06 19:41:35', 'Medium:-ENGLISH\r\nNCERT', 0, 1, 34),
(638, 30, 'Business Studies Part - I Business Finance and Marketing for Class - 12 ITH', '1', 95, 1, '23-07-20_1595504476.jpg', '2020-07-23 15:41:16', '2020-09-06 19:42:15', 'Medium:-English\r\nNCERT', 0, 1, 34),
(639, 30, 'Business Studies Part - II Business Finance and Marketing for Class - 12 ITH', '1', 75, 1, '23-07-20_1595504623.jpg', '2020-07-23 15:43:43', '2020-09-06 19:40:59', 'Medium:-English\r\nNCERT', 0, 1, 34),
(640, 30, 'Microeconomics for class 12th ITH', '1', 65, 1, '23-07-20_1595504928.jpg', '2020-07-23 15:48:48', '2020-09-06 19:39:03', 'Medium:-English\r\nNCERT', 0, 1, 34),
(641, 30, 'Microeconomics for class 12th ITH', '1', 65, 1, '23-07-20_1595504933.jpg', '2020-07-23 15:48:53', '2020-09-06 19:36:37', 'Medium:-English\r\nNCERT', 0, 1, 34),
(642, 30, 'Maths for class 12th part:-1 ITH', '1', 115, 1, '23-07-20_1595505260.jpg', '2020-07-23 15:54:20', '2020-08-30 07:23:32', 'Medium:- hindi \r\nNCERT', 0, 1, 4),
(643, 30, 'Maths for class 12th part:-2 ITH', '1', 130, 1, '23-07-20_1595505399.jpg', '2020-07-23 15:56:39', '2020-08-30 07:23:32', 'Medium:-hindi\r\nNCERT', 0, 1, 4),
(644, 30, 'Physics for class 12th part:-1 ITH', '1', 170, 1, '23-07-20_1595505799.jpg', '2020-07-23 16:03:19', '2020-09-06 19:44:12', 'Medium:-Hindi\r\nNCERT', 0, 1, 34),
(645, 30, 'Physics for class 12th part:-2 ITH', '1', 140, 1, '23-07-20_1595505902.jpg', '2020-07-23 16:05:02', '2020-09-06 19:44:22', 'Medium:-Hindi\r\nNCERT', 0, 1, 34),
(646, 19, 'Ncert Geography  For Class 10th----------ITH', '1', 65, 1, 'IMG_20200723_172120_1595519309.webp', '2020-07-23 19:29:08', '2020-09-06 19:31:13', 'English Medium', 0, 1, 34),
(647, 19, 'Ncert Civics For Class 10th-----------ITH', '1', 80, 1, 'IMG_20200723_172048_1595519347.webp', '2020-07-23 19:43:51', '2020-09-06 19:34:57', 'English Medium', 0, 1, 34),
(648, 19, 'Ncert Economics For Class 10th-------ITH', '1', 65, 1, 'IMG_20200723_172145_1595519395.webp', '2020-07-23 19:45:41', '2020-09-06 19:33:02', 'English Medium', 0, 1, 34),
(649, 19, 'Ncert History For Class 10th----------ITH', '1', 125, 1, '23-07-20_1595519486.webp', '2020-07-23 19:51:26', '2020-09-06 19:24:39', 'Hindi Medium', 0, 1, 34),
(650, 19, 'Ncert Geography  For Class 10th----------ITH', '1', 65, 1, '23-07-20_1595519560.webp', '2020-07-23 19:52:40', '2020-09-06 19:31:36', 'Hindi Medium', 0, 1, 34),
(651, 19, 'Ncert Civics For Class 10th-----------ITH', '1', 80, 1, '23-07-20_1595521001.webp', '2020-07-23 20:16:41', '2020-09-06 19:35:38', 'Hindi Medium', 0, 1, 34),
(652, 19, 'Ncert Economics For Class 10th-------ITH', '1', 65, 1, '23-07-20_1595521138.webp', '2020-07-23 20:18:58', '2020-09-06 19:33:19', 'Hindi Medium', 0, 1, 34),
(653, 19, 'Ncert Hindi For Class 10th(Kshitij)----------ITH', '1', 60, 1, '23-07-20_1595521307.webp', '2020-07-23 20:21:47', '2020-09-06 19:29:40', 'Hindi', 0, 1, 34),
(654, 19, 'Ncert Hindi For Class 10th(Kritika)----------ITH', '1', 30, 1, '23-07-20_1595521393.webp', '2020-07-23 20:23:13', '2020-09-06 19:29:30', 'Hindi', 0, 1, 34),
(655, 19, 'Ncert English For Class 9th(Beehive)-------ITH', '1', 65, 1, '23-07-20_1595521533.webp', '2020-07-23 20:25:33', '2020-09-06 19:33:54', 'English', 0, 1, 34),
(656, 19, 'Ncert English For Class 9th(Moments)-------ITH', '1', 35, 1, '23-07-20_1595521607.webp', '2020-07-23 20:26:47', '2020-09-06 19:30:58', 'English', 0, 1, 34),
(657, 19, 'Ncert English For Class 10th(First Flight)---------ITH', '1', 70, 1, '23-07-20_1595521729.webp', '2020-07-23 20:28:49', '2020-09-06 19:33:31', 'English', 0, 1, 34),
(658, 19, 'Ncert English For Class 10th(Footprints without feet)---------ITH', '1', 35, 1, '23-07-20_1595521834.webp', '2020-07-23 20:30:34', '2020-09-06 19:33:43', 'English', 0, 1, 34),
(659, 19, 'Ncert Maths For Class 11th----------ITH', '1', 180, 1, '23-07-20_1595521919.webp', '2020-07-23 20:31:59', '2020-09-06 19:26:01', 'Hindi Medium', 0, 1, 34),
(660, 19, 'Ncert Maths For Class 11th----------ITH', '1', 180, 1, '23-07-20_1595521956.webp', '2020-07-23 20:32:36', '2020-09-06 19:26:20', 'English Medium', 0, 1, 34),
(661, 19, 'Ncert Physics Part-1 For Class 11th------------ITH', '1', 130, 1, '23-07-20_1595524310.webp', '2020-07-23 21:11:50', '2020-09-06 19:26:33', 'English Medium', 0, 1, 34),
(662, 19, 'Ncert Physics Part-1 For Class 11th------------ITH', '1', 130, 1, '23-07-20_1595524370.webp', '2020-07-23 21:12:50', '2020-09-06 19:26:47', 'Hindi Medium', 0, 1, 34),
(663, 19, 'Ncert Physics Part-2 For Class 11th------------ITH', '1', 105, 1, '23-07-20_1595524424.webp', '2020-07-23 21:13:44', '2020-09-06 19:26:58', 'English Medium', 0, 1, 34),
(664, 19, 'Ncert Physics Part-2 For Class 11th------------ITH', '1', 105, 1, '23-07-20_1595524458.webp', '2020-07-23 21:14:18', '2020-09-06 19:27:24', 'Hindi Medium', 0, 1, 34),
(665, 19, 'Ncert Chemistry Part-1 For Class 11th--------ITH', '1', 155, 1, '23-07-20_1595524573.webp', '2020-07-23 21:16:13', '2020-09-06 19:37:16', 'English Medium', 0, 1, 34),
(666, 19, 'Ncert Chemistry Part-1 For Class 11th--------ITH', '1', 155, 1, '23-07-20_1595524623.webp', '2020-07-23 21:17:03', '2020-09-06 19:37:27', 'Hindi Medium', 0, 1, 34),
(667, 19, 'Ncert Chemistry Part-2 For Class 11th--------ITH', '1', 105, 1, '23-07-20_1595524672.webp', '2020-07-23 21:17:53', '2020-09-06 19:37:39', 'English Medium', 0, 1, 34),
(668, 19, 'Ncert Chemistry Part-2 For Class 11th--------ITH', '1', 105, 1, '23-07-20_1595524708.webp', '2020-07-23 21:18:28', '2020-09-06 19:34:25', 'Hindi Medium', 0, 1, 34),
(669, 19, 'Ncert Biology For Class 11th---------ITH', '1', 200, 1, '23-07-20_1595525251.webp', '2020-07-23 21:27:31', '2020-09-06 19:36:52', 'English Medium', 0, 1, 34),
(670, 19, 'Ncert Biology For Class 11th---------ITH', '1', 200, 1, '23-07-20_1595525298.webp', '2020-07-23 21:28:18', '2020-09-06 19:37:06', 'Hindi Medium', 0, 1, 34),
(671, 30, 'Havells wire 1.50mm', '1', 2080, 1, '24-07-20_1595614479.jpeg', '2020-07-24 22:14:39', '2020-08-30 07:23:34', 'Flame Retardent\r\nPVC Insulated Cable', 43.27, 1, 10),
(672, 30, 'Havells wire 2.50mm', '1', 3013, 1, '24-07-20_1595614724.jpeg', '2020-07-24 22:18:44', '2020-08-30 07:23:34', 'Flame Retardent\r\nPVC Insulated Cable', 37.6, 1, 10),
(673, 30, 'Havells wire 4.00mm', '1', 4275, 1, '24-07-20_1595614819.jpeg', '2020-07-24 22:20:19', '2020-08-30 07:23:34', 'Flame Retardent\r\nPVC Insulated Cable', 35.6, 1, 10),
(674, 30, 'Anchor wire 1.00mm', '1', 1150, 1, 'IMG-20200905-WA0079215917_5920_1599323661.jpeg', '2020-07-25 08:06:30', '2020-09-06 02:04:21', 'This 1.00 mm cable wire is India\'s first advance FR PVC wire which is insulated with an advance formulation of special ingredients with extra firefighting properties', 35.65, 1, 10),
(675, 30, 'Anchor wire 1.50mm', '1', 1650, 1, 'IMG-20200905-WA0081215935_5920_1599323699.jpeg', '2020-07-25 08:08:33', '2020-09-06 02:04:59', 'This 1.50 Sq mm cable wire is India\'s first advance FR PVC wire which is insulated with an advance formulation of special ingredients with extra firefighting properties.', 36.97, 1, 10),
(676, 30, 'Anchor wire 0.75 mm', '1', 925, 1, 'IMG-20200905-WA0082220001_5920_1599323579.jpeg', '2020-07-25 08:13:28', '2020-09-06 02:02:59', 'This  0.75 Sq mm cable wire is India\'s first advance FR PVC wire which is insulated with an advance formulation of special ingredients with extra firefighting properties.', 37.3, 1, 10),
(678, 30, 'Orkus down light 3W', '1', 425, 1, '25-07-20_1595652662.jpg', '2020-07-25 08:51:02', '2020-08-30 07:23:34', 'High Bright & Energy Saving\r\nInstant Start\r\nReliable & Long Life Span\r\nLow Power Consumption\r\nMinimal heat Output', 62.35, 1, 10),
(679, 30, 'Orkus down light 5W', '1', 490, 1, '25-07-20_1595652733.jpg', '2020-07-25 08:52:13', '2020-08-30 07:23:34', 'High Bright & Energy Saving\r\nInstant Start\r\nReliable & Long Life Span\r\nLow Power Consumption\r\nMinimal heat Output', 61.22, 1, 10),
(680, 30, 'Orkus square Surface pannel 6W', '1', 1590, 1, '25-07-20_1595653001.jpg', '2020-07-25 08:56:41', '2020-08-30 07:23:34', 'High Bright & Energy Saving\r\nInstant Start\r\nReliable & Long Life Span\r\nLow Power Consumption\r\nMinimal heat Output', 69.18, 1, 10),
(681, 30, 'Perfect Reasoning by deepak kumar ITH', '1', 275, 1, '25-07-20_1595653408.jpg', '2020-07-25 09:03:28', '2020-08-30 07:23:34', 'For all Competitive Exams-PO, Clerk, Banking, SSC , Railway, Insurance, Management, Technical, Bank, CSAT', 20, 1, 4),
(682, 30, 'Verbal Reasoning (Hindi) ITH', '1', 500, 1, '25-07-20_1595653546.jpg', '2020-07-25 09:05:46', '2020-09-06 19:16:04', 'Ajay chouhan', 20, 1, 35),
(683, 30, 'Arihant NDA solved paper ITH', '1', 390, 1, '25-07-20_1595653767.jpg', '2020-07-25 09:09:27', '2020-09-07 19:29:49', 'Arihant & Hindi', 20, 1, 35),
(684, 30, 'Arihant NDA solved paper ITH', '1', 395, 1, '25-07-20_1595653895.jpg', '2020-07-25 09:11:35', '2020-09-07 19:30:00', 'Arihant & English', 20, 1, 35),
(685, 30, 'Arihant GK ITH', '1', 30, 1, '25-07-20_1595654082.jpg', '2020-07-25 09:14:42', '2020-09-07 19:29:25', 'Arihant & Hindi', 20, 1, 35),
(686, 30, 'Arihant GK ITH', '1', 30, 1, '25-07-20_1595654201.jpg', '2020-07-25 09:16:41', '2020-09-07 19:29:38', 'Arihant & English', 20, 1, 35),
(687, 30, 'Bihar Secondary 10th all subject (BBD) ITH', '1', 620, 1, '25-07-20_1595654678.jpg', '2020-07-25 09:24:38', '2020-09-07 19:30:16', 'BBD', 19.35, 1, 35),
(688, 30, 'All in one Maths for class 9 ITH', '1', 450, 1, '25-07-20_1595654884.jpg', '2020-07-25 09:28:04', '2020-09-07 19:28:20', 'Arihant & English', 20, 1, 37),
(689, 30, 'All in one English for class 9 ITH', '1', 415, 1, '25-07-20_1595655079.jpg', '2020-07-25 09:31:19', '2020-09-07 19:27:53', 'Arihant  & English', 20, 1, 37),
(690, 18, 'NCERT Maths class:-6 ITH', '1', 50, 1, '26-07-20_1595749330.webp', '2020-07-26 11:42:10', '2020-09-06 19:25:26', 'Ncert. English', 0, 1, 34),
(692, 18, 'NCERT Science class:-6 ITH', '1', 50, 1, '26-07-20_1595750166.webp', '2020-07-26 11:56:06', '2020-09-06 19:28:30', 'English. English', 0, 1, 34),
(693, 18, 'NCERT Maths class:-7 ITH', '1', 50, 1, '26-07-20_1595750419.webp', '2020-07-26 12:00:19', '2020-09-06 19:25:48', 'NCERT. English', 0, 1, 34),
(694, 18, 'NCERT Science class:-7 ITH', '1', 50, 1, '26-07-20_1595750645.webp', '2020-07-26 12:04:05', '2020-09-06 19:28:47', 'NCERT. English', 0, 1, 34),
(695, 19, 'CONA Glouwbe angle holder 1P', '1', 50, 1, '26-07-20_1595780600.webp', '2020-07-26 20:23:20', '2020-08-30 07:23:35', 'Good quality holder and are made up of good material', 40, 1, 10),
(696, 19, 'CONA Glouwbe better holder 1P', '1', 50, 1, '26-07-20_1595780747.webp', '2020-07-26 20:25:47', '2020-08-30 07:23:35', 'Good quality product and made up of good material', 40, 1, 10),
(697, 19, 'CONA fashion angle holder 1P', '1', 33, 1, 'IMG_20200904_150902_1599212622.jpg', '2020-07-26 20:29:59', '2020-09-04 19:13:42', 'Good quality product and made up of best material . Safe for any required purpose.', 24.24, 1, 10),
(698, 19, 'CONA fashion batten holder 1P', '1', 33, 1, 'IMG_20200904_150616_1599212758.jpg', '2020-07-26 20:33:27', '2020-09-04 19:15:58', 'Good quality product and made up of best material . Safe for any required purpose.', 24.24, 1, 10),
(699, 19, 'CONA beetel electronic bell with RF Remote', '1', 750, 1, '26-07-20_1595781687.webp', '2020-07-26 20:41:27', '2020-08-30 07:23:35', 'Good quality bell', 26.67, 1, 10),
(700, 19, '50W helosion light', '1', 110, 1, '26-07-20_1595782428.webp', '2020-07-26 20:53:48', '2020-08-30 07:23:35', 'A wide light giving electric equipments.', 0, 1, 10),
(701, 19, '6A JPS Extension cord', '1', 240, 1, '26-07-20_1595785358.webp', '2020-07-26 21:42:38', '2020-08-30 07:23:35', '7 meter wire made up of best material.It is not used for heavy load products like iron,inverter etc.', 20.83, 1, 10),
(702, 19, 'ANCHOR S.S combine without box', '1', 133, 1, '26-07-20_1595785506.jpg', '2020-07-26 21:45:06', '2020-08-30 07:23:35', 'Best to use as household thing and can be used wherever required.', 24.81, 1, 10),
(703, 19, 'ANCHOR S.S combine with box', '1', 170, 1, '26-07-20_1595785725.webp', '2020-07-26 21:48:45', '2020-08-30 07:23:35', 'Best quality and can be used wherever you want.', 23.53, 1, 10),
(704, 19, 'ANCHOR 6A.3 PIN TOP', '1', 59, 1, '26-07-20_1595785881.webp', '2020-07-26 21:51:21', '2020-08-30 07:23:35', 'Best quality pin.', 15.25, 1, 10),
(705, 19, 'ANCHOR 16A.3 PIN TOP', '1', 76, 1, '26-07-20_1595785950.webp', '2020-07-26 21:52:30', '2020-08-30 07:23:35', 'Best quality pin used up to a current input of 16A', 7.89, 1, 10),
(706, 19, 'CONA WIRE 0.75 MM', '1', 895, 1, 'IMG-20200905-WA0074215845_5920_1599323958.jpeg', '2020-07-26 21:57:31', '2020-09-06 02:09:18', 'Wire of thickness 0.75mm and can be used in connecting electronic equipments.', 38.55, 1, 10),
(707, 19, 'CONA WIRE 1.00 MM', '1', 1145, 1, 'IMG-20200905-WA0075215854_5920_1599324001.jpeg', '2020-07-26 22:02:07', '2020-09-06 02:10:01', 'Wire of thickness 1 mm.', 35.37, 1, 10),
(708, 20, 'ALL IN ONE MATHS, Arihant 9th (IHT)', '1', 450, 1, '26-07-20_1595792717.webp', '2020-07-26 23:45:17', '2020-09-07 19:28:31', 'ARIHANT, ENGLISH medium', 20, 1, 37),
(709, 20, 'ALL IN ONE ENGLISH, Arihant 9th(ITH)', '1', 415, 1, '26-07-20_1595793026.webp', '2020-07-26 23:50:26', '2020-09-07 19:28:07', 'Arihant, English', 20, 1, 37),
(710, 20, 'ALL IN ONE SCIENCE, Arihant,9th (ITH)', '1', 450, 1, '26-07-20_1595793267.webp', '2020-07-26 23:54:27', '2020-09-07 19:28:52', 'Arihant, English medium', 20, 1, 37),
(711, 20, 'ALL IN ONE SOCIAL SCIENCE, Arihant, 9th (ITH)', '1', 440, 1, '26-07-20_1595793561.webp', '2020-07-26 23:59:21', '2020-09-07 19:29:06', 'Arihant, English medium', 20, 1, 37),
(713, 18, 'Dairy Milk and Keri on the top of barbie', '1', 510, 1, '27-07-20_1595846099.webp', '2020-07-27 14:34:59', '2020-08-30 07:23:36', 'Dairy Milk and Keri on the top of barbie', 0, 1, 12),
(714, 19, 'CONA WIRE 1.50 MM', '1', 1845, 1, 'IMG-20200905-WA0085220018_5920_1599324054.jpeg', '2020-07-27 15:53:27', '2020-09-06 02:10:54', 'Best  wire uses in different purposes.', 43.63, 1, 10),
(715, 19, 'CONA WIRE 2.50 MM', '1', 2780, 1, 'IMG-20200905-WA0084215355_5920_1599324291.jpeg', '2020-07-27 16:18:06', '2020-09-06 02:14:51', 'Best wire for use in electric appliances.', 44.24, 1, 10),
(716, 19, 'CONA WIRE 4.00 MM', '1', 3990, 1, '27-07-20_1595860610.webp', '2020-07-27 18:36:50', '2020-08-30 07:23:36', 'Good quality wires.', 42.36, 1, 10),
(717, 19, 'HAWELLS WIRE 0.75 MM', '1', 840, 1, '27-07-20_1595861809.webp', '2020-07-27 18:56:49', '2020-08-30 07:23:36', 'Wire of good quality and of length 90 m', 28.57, 1, 10),
(718, 19, 'HAWELLS WIRE 1.00 MM', '1', 1215, 1, '27-07-20_1595861868.webp', '2020-07-27 18:57:48', '2020-08-30 07:23:36', 'Good quality wire and of length 90 m', 35.8, 1, 10),
(719, 18, 'Bowl of homemade chocolates', '1', 110, 0, '27-07-20_1595867716.webp', '2020-07-27 20:35:16', '2020-08-30 07:23:36', 'A set of 15 chocolates in ₹110', 0, 1, 12),
(720, 18, 'Ncert maths class :- 8 ITH', '1', 50, 1, '28-07-20_1595923954.webp', '2020-07-28 12:12:34', '2020-09-06 19:24:50', 'NCERT, English', 0, 1, 34),
(722, 32, 'NCERT Science class :- 8 ITH', '1', 50, 1, '28-07-20_1595927374.webp', '2020-07-28 13:09:34', '2020-09-06 19:27:38', 'NCERT, ENGLISH', 0, 1, 34),
(723, 19, 'Rakhi + Lumba(1)', '1', 60, 1, '28-07-20_1595927788.webp', '2020-07-28 13:16:28', '2020-08-30 07:23:36', 'A binding thread and a symbol of love between brother and sister.', 0, 1, 12),
(724, 32, 'NCERT Mathematics class :- 9 ITH', '1', 135, 1, '28-07-20_1595927895.webp', '2020-07-28 13:18:15', '2020-09-06 19:24:14', 'NCERT, ENGLISH', 0, 1, 34),
(725, 19, 'CONA WIRE 6.00 MM', '1', 4200, 1, '28-07-20_1595929061.webp', '2020-07-28 13:37:41', '2020-08-30 07:23:36', 'Quality wire to use .', 0, 1, 10),
(726, 32, 'NCERT SCIENCE Class :- 9 ITH', '1', 135, 1, '28-07-20_1595929089.jpg', '2020-07-28 13:38:09', '2020-09-06 19:28:04', 'NCERT, ENGLISH', 0, 1, 34),
(727, 32, 'NCERT HISTORY Class :- 9 ITH', '1', 115, 1, '28-07-20_1595929153.jpg', '2020-07-28 13:39:13', '2020-09-06 19:29:52', 'NCERT, ENGLISH', 0, 1, 34),
(728, 32, 'NCERT ECONOMICS Class :- 9 ITH', '1', 45, 1, '28-07-20_1595929220.jpg', '2020-07-28 13:40:20', '2020-09-06 19:35:49', 'NCERT, ENGLISH', 0, 1, 34),
(729, 32, 'NCERT GEOGRAPHY Class :- 9 ITH', '1', 50, 1, '28-07-20_1595929278.jpg', '2020-07-28 13:41:18', '2020-09-06 19:31:51', 'NCERT, ENGLISH', 0, 1, 34),
(730, 19, 'CONA WIRE 10.00 MM', '1', 6200, 1, '28-07-20_1595929402.webp', '2020-07-28 13:43:22', '2020-08-30 07:23:36', 'Used in many ways including heavy loads electrical appliances.', 0, 1, 10),
(731, 32, 'NCERT CIVICS class :- 9 ITH', '1', 80, 1, '28-07-20_1595950773.webp', '2020-07-28 19:39:33', '2020-09-06 19:34:42', 'NCERT,ENGLISH', 0, 1, 34);
INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(732, 32, 'NCERT HISTORY Class :- 9 ITH', '1', 115, 1, '28-07-20_1595950864.webp', '2020-07-28 19:41:04', '2020-09-06 19:30:09', 'NCERT, HINDI', 0, 1, 34),
(733, 32, 'NCERT ECONOMICS Class :- 9 ITH', '1', 45, 1, '28-07-20_1595952179.webp', '2020-07-28 20:02:59', '2020-09-06 19:32:47', 'NCERT,HINDI', 0, 1, 34),
(734, 32, 'NCERT CIVICS Class :- 9 ITH', '1', 80, 1, '28-07-20_1595952286.webp', '2020-07-28 20:04:46', '2020-09-06 19:35:19', 'NCERT, HINDI', 0, 1, 34),
(735, 32, 'NCERT GEOGRAPHY Class :- 9 ITH', '1', 50, 1, '28-07-20_1595952379.webp', '2020-07-28 20:06:19', '2020-09-06 19:32:11', 'NCERT, HINDI', 0, 1, 34),
(736, 32, 'NCERT HINDI (क्षितिज)  Class :- 9 ITH', '1', 55, 1, '29-07-20_1596007697.webp', '2020-07-29 11:28:17', '2020-09-06 19:29:18', 'NCERT, HINDI', 0, 1, 34),
(737, 32, 'NCERT HINDI (कृतिका) class :- 9 ITH', '1', 25, 1, '29-07-20_1596007792.webp', '2020-07-29 11:29:52', '2020-09-06 19:32:23', 'NCERT, HINDI', 0, 1, 34),
(738, 32, 'NCERT MATHS Class :- 9 ITH', '1', 140, 1, '29-07-20_1596008917.webp', '2020-07-29 11:48:37', '2020-09-06 19:25:05', 'NCERT, ENGLISH', 0, 1, 34),
(739, 32, 'NCERT SCIENCE Class :- 9 ITH', '1', 165, 1, '29-07-20_1596008981.webp', '2020-07-29 11:49:41', '2020-09-06 19:28:18', 'NCERT, ENGLISH', 0, 1, 34),
(740, 32, 'NCERT HISTORY Class :- 9 ITH', '1', 125, 1, '29-07-20_1596009047.webp', '2020-07-29 11:50:47', '2020-09-06 19:30:22', 'NCERT, ENGLISH', 0, 1, 34),
(741, 18, 'Together with sanskrit class 10 ITH', '1', 399, 1, '29-07-20_1596028933.webp', '2020-07-29 17:22:13', '2020-09-06 19:16:27', 'Rachana sagar- Sanskrit', 10, 1, 37),
(743, 18, 'Rakhi 8(XAE)', '1', 100, 1, '29-07-20_1596029551.webp', '2020-07-29 17:32:31', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(744, 18, 'Rakhi 9(XAE)', '1', 100, 1, '29-07-20_1596031183.webp', '2020-07-29 17:59:43', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(745, 18, 'Rakhi 10(XAE)', '1', 100, 1, '29-07-20_1596031248.webp', '2020-07-29 18:00:48', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(746, 18, 'Rakhi 11(XAE)', '1', 100, 1, '29-07-20_1596031282.webp', '2020-07-29 18:01:22', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(747, 18, 'Rakhi 12(XAE)', '1', 100, 1, '29-07-20_1596031311.webp', '2020-07-29 18:01:51', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(748, 18, 'Rakhi 13(XAE)', '1', 100, 1, '29-07-20_1596031355.webp', '2020-07-29 18:02:35', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(749, 18, 'Rakhi 15(XAE)', '1', 100, 1, '29-07-20_1596031593.webp', '2020-07-29 18:06:33', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(750, 18, 'Rakhi 14(XAE)', '1', 100, 1, '29-07-20_1596031627.webp', '2020-07-29 18:07:07', '2020-08-30 07:23:37', 'Makes the bond of brother and sister stronger with good quality', 20, 1, 12),
(752, 18, 'Diya', '101', 121, 1, '01-08-20_1596288582.webp', '2020-08-01 17:29:42', '2020-08-30 07:23:37', '101Pcs@₹121', 0, 1, 12),
(753, 18, 'Men\'s Flip-Flop :-TLB', '1', 399, 1, '07-08-20_1596808602.webp', '2020-08-07 17:56:42', '2020-08-30 07:23:37', 'Elevate your style with this comfortable pair of Flip-Flops from the house of Lee Cooper brand. Featuring a contemporary refined design with exceptional comfort, this pair is perfect to give your quintessential dressing an upgrade.', 39.88, 1, 3),
(754, 18, 'Men\'s Flip-Flop :-TLB', '1', 499, 1, '07-08-20_1596808710.webp', '2020-08-07 17:58:30', '2020-08-30 07:23:38', 'Elevate your style with this comfortable pair of Flip-Flops from the house of Lee Cooper brand. Featuring a contemporary refined design with exceptional comfort, this pair is perfect to give your quintessential dressing an upgrade.', 39.88, 1, 3),
(755, 18, 'Men\'s Flip-Flop :-TLB', '1', 499, 1, '07-08-20_1596808773.webp', '2020-08-07 17:59:33', '2020-08-30 07:23:38', 'Elevate your style with this comfortable pair of Flip-Flops from the house of Lee Cooper brand. Featuring a contemporary refined design with exceptional comfort, this pair is perfect to give your quintessential dressing an upgrade.', 39.88, 1, 3),
(757, 32, 'OPPO A11K(2GB RAM,32 GB STORAGE (TCS)', '1', 10990, 1, '15-08-20_1597505059.webp', '2020-08-15 19:24:19', '2020-09-06 00:40:45', '\"13MP+2MP AI Rear Dual Camera| 5MP Front Camera. 15.79 centimeters (6.22-inch) HD+ Waterdrop Screen display with 1520 x 720 pixel resolution. 4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.\"', 18.198, 1, 31),
(758, 32, 'OPPO A12 ( 3GB RAM, 32GB Storage) (TCS)', '1', 10990, 1, '15-08-20_1597505970.webp', '2020-08-15 19:39:30', '2020-09-06 00:34:01', '\"13MP+2MP AI Rear Dual Camera| 5MP Front Camera. 15.79 centimeters (6.22-inch) HD+ Waterdrop Screen display with 1520 x 720 pixel resolution. 4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.\"', 9.099, 1, 31),
(759, 32, 'OPPO A31 (  4GB RAM, 64GB Storage) (TCS)', '1', 12990, 1, '16-08-20_1597593842.webp', '2020-08-17 01:34:03', '2020-09-06 00:34:27', 'Triple camera with portrait and macro mode. 6.5-inch eye-protection display.Ultimate audio and video experience. 4230mAh bigger battery capacity frees you from the concern of battery drain during your day.', 3.85, 1, 31),
(762, 19, 'Samsung Galaxy M01 Core ( 1GB RAM, 16GB Storage)-------TCS', '1', 6499, 1, '18-08-20_1597689324.webp', '2020-08-18 04:05:24', '2020-09-06 00:48:15', '8MP (F2.2) rare camera | 5MP (F2.4) front camera\r\n5.3-inch (13.41 centimeters) PLS TFT LCD, HD+ capacitive multi-touch touchscreen with 1480 x 720 pixels resolution, 310 ppi pixel density and 16 M color support\r\nMemory, Storage & SIM: 1GB RAM | 16GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid GO | v10.0 operating system with 1.5GHz+2GHz MediaTek | MT6739WW quad core processor\r\n3000mAH lithium-ion battery', 15.39, 1, 31),
(763, 19, 'Samsung Galaxy M11 (Black, 3GB RAM, 32GB Storage)----------TCS', '1', 12999, 1, '18-08-20_1597689573.webp', '2020-08-18 04:09:33', '2020-09-06 00:48:29', '13MP (F1.8) main camera + 5MP (F2.2) ultra wide camera + 2MP (F2.4) depth rear camera | 8MP (F2.0) front facing punch hole camera\r\n6.4-inch (16.24 centimeters) infinity-O display, HD+ capacitive multi-touch touchscreen with 720 x 1520 pixels resolution, 270 ppi | 16M color support\r\nMemory, Storage & SIM: 3GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\n5000mAH lithium-ion battery', 15.39, 1, 31),
(764, 19, 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage)---------TCS', '1', 12999, 1, '18-08-20_1597689654.webp', '2020-08-18 04:10:54', '2020-09-06 00:48:54', '13MP (F1.8) main camera + 5MP (F2.2) ultra wide camera + 2MP (F2.4) depth rear camera | 8MP (F2.0) front facing punch hole camera\r\n6.4-inch (16.24 centimeters) infinity-O display, HD+ capacitive multi-touch touchscreen with 720 x 1520 pixels resolution, 270 ppi | 16M color support\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\n5000mAH lithium-ion batter', 0, 1, 31),
(765, 19, 'Samsung Galaxy A31 ( 6GB RAM, 128GB Storage)---------TCS', '1', 23999, 1, '18-08-20_1597689751.webp', '2020-08-18 04:12:31', '2020-09-06 00:42:43', '48MP (F2.0) quad rear camera + 8MP (F2.2) ultra wide camera + 5MP (F2.4) depth camera +5MP (F2.4) macro camera | 20MP front camera\r\n16.21 centimeters (6.4-inch) Super AMOLED - Infinity U cut display, FHD+ multi-touch capacitive touchscreen with 1080 x 2400 pixels HD+ resolution, 412 ppi | 16M color support\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\n5000mAH lithium-ion battery', 12.5, 1, 31),
(766, 19, 'Samsung Galaxy A51 ( 6GB RAM, 128GB Storage)---------TCS', '1', 27999, 1, '18-08-20_1597689985.webp', '2020-08-18 04:16:25', '2020-09-06 00:47:38', '48MP (F1.8)+12MP (F2.2)+5MP(F2.2)+5MP(F2.4) rear camera | 32MP front facing camera\r\n16.40 centimeters (6.5-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)\r\n4000mAH lithium-ion battery', 14.29, 1, 31),
(767, 19, 'Samsung Galaxy M31 ( 6GB RAM, 128GB Storage)----------TCS', '1', 18499, 1, '18-08-20_1597690099.webp', '2020-08-18 04:18:19', '2020-09-06 00:43:05', 'Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera\r\n6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support\r\nAndroid v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 128GB internal memory expandable up to 512GB and dual SIM\r\n6000 mAh Battery', 0, 1, 31),
(768, 19, 'Samsung Galaxy M21 (6GB RAM, 128GB Storage)-----------TCS', '1', 17999, 1, '18-08-20_1597690194.webp', '2020-08-18 04:19:54', '2020-09-06 00:49:10', 'Triple Camera Setup - 48MP (F2.0) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera and 20MP (F2.2) front facing Punch Hole Camera\r\n6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support\r\n6000 mAh Battery', 11.11, 1, 31),
(769, 19, 'Samsung Galaxy S10 Lite ( 128 GB)  (8 GB RAM)-------------TCS', '1', 43999, 1, 'IMG_20200818_002752_1597691115.webp', '2020-08-18 04:29:28', '2020-09-06 00:43:54', 'Capture stutter-free videos for your vlogs, gorgeous pictures for your social media, and much more with the Samsung Galaxy S10 Lite smartphone which features steady OIS and pro-grade cameras (48 MP main + 12 MP ultra-wide+ 5 MP macro lens and a 32 MP front camera). Packed with more features such as the 16.95 cm (6.7) Full HD+ Super AMOLED Plus screen and the HDR10+, you can catch-up on your favourite shows, in fine clarity, and make your commute to work more fun.', 2.27, 1, 31),
(770, 19, 'Samsung Galaxy Note10 Lite (8GB RAM, 128GB Storage)-----------TCS', '1', 37999, 1, '18-08-20_1597691163.webp', '2020-08-18 04:36:03', '2020-09-06 00:43:41', '12MP Ultra wide (123°) FF + F2.2 \" Wide (77°) 12MP AF F1.7 Dual Pixel + Tele (45°) 12MP AF F2.4 OIS, 2x Zoom camera | 32MP front facing camera\r\n17.04 centimeters (6.7-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support\r\nMemory, Storage & SIM: 8GB RAM | 128GB internal memory expandable up to 1TB | Dual SIM dual-standby (4G+4G)\r\nAndroid v10.0 operating system with 2.7GHz+1.8GHz Exynos 9810 octa core processor\r\n4500mAH lithium-ion battery', 0, 1, 31),
(771, 19, 'Samsung Galaxy Note 20 Ultra 5G ( 12GB RAM, 256GB Storage)----------TCS', '1', 116000, 1, '18-08-20_1597691585.webp', '2020-08-18 04:43:05', '2020-09-06 00:43:25', '108+12+12MP triple rear camera | 10MP front camera\r\n17.45 centimeters (6.9-inch) WQHD+ dynamic Amoled display with 3088 x 1440 pixels resolution\r\nMemory, Storage & SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10.0 operating system with Exynos 990 octa core processor\r\n4500mAH lithium-ion battery (Non-removable)', 9.48, 1, 31),
(772, 19, 'Fast Charger Compatible for All Xia_omi Mi MDY-08 2A Fast Charger for All Redmi Micro USB Phones-------------TCS', '1', 999, 1, '18-08-20_1597692264.webp', '2020-08-18 04:54:24', '2020-09-06 00:31:02', 'Compatibility : Designed to charge Most Handheld devices and Smatphones, Most Powerfull : Charge any USB powered devices at top speed continously.\r\nSmall & Lightweight : Slightly heavier than egg,simply slip it into bag when you are out and about.', 55.06, 1, 31),
(773, 19, 'Mi 2-in-1 USB Cable (Micro USB to Type-C)-----------TCS', '1', 249, 1, '18-08-20_1597692420.webp', '2020-08-18 04:57:00', '2020-09-06 00:32:28', 'Supports Quick Charge\r\nFast Charging upto 2.4A\r\nMicro USB to Type-C\r\n250D Nylon to withstand wear and tear', 0, 1, 33),
(775, 32, 'Oppo A52 ( 6GB RAM, 128GB Storage)(TCS)', '1', 19990, 1, '19-08-20_1597821314.webp', '2020-08-19 16:45:14', '2020-09-06 00:34:47', '\"12MP+8MP+2MP+2MP AI quad rear camera, 4K video, AI beautification | 16MP front camera\r\n16.51 centimeters (6.5-inch) FHD+ punch-hole display with 2400 x 1080 pixels resolution, 405 ppi pixel density | 90.5% screen to body ratio| Eye care\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nColor OS 7.1 based on Android v10.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU\r\n5000mAH lithium-polymer battery providing talk-time of 34 hours and standby time of 500 hours with 18W fast charge\r\n1 year manufacturer warranty for device and 6 months manufacturer\"', 15.01, 1, 31),
(776, 32, 'OPPO F15 ( 4GB RAM, 128GB Storage, with offer) (TCS)', '1', 20990, 1, '19-08-20_1597821502.webp', '2020-08-19 16:48:22', '2020-09-06 00:35:33', '\"48MP (F1.7) Main, 8MP (F2.2) Ultra Wide-Angle Macro Lens, 2MP (F2.4) Mono Lens, 2MP (F2.4) Portrait Lens. VOOC 3.0: Faster: 10% in 5 minutes | 35% in 20 minutes | 50% in 30 minutes | 100% in 76 minutes — 26% Faster than VOOC 2.0 .\r\n\r\n\"', 19.06, 1, 31),
(779, 19, 'Mi Micro USB Cable ( USB Type A, Black)----------TCS', '1', 199, 1, 'IMG_20200819_001725_1597849355.webp', '2020-08-20 00:28:29', '2020-09-06 00:33:13', 'Connector One: USB Type-A\r\nCable Speed: 480 Mbps\r\n6 months warranty\r\nCountry of Origin: India', 0, 1, 33),
(780, 32, 'OPPO ENCO W31 True Wireless Earphone with Dual-Mic (TCS)', '1', 5999, 1, '19-08-20_1597849194.webp', '2020-08-20 00:29:54', '2020-09-06 00:35:12', 'The OPPO Enco W31 earphones achieve latency among the lowest in the industry thanks to its simultaneous transmission to both earphones via Bluetooth 5.0 and system-level latency reduction', 33.24, 1, 31),
(781, 19, 'Mi 18W Qualcomm Quick Charge 3.0 Car Charger------------TCS', '1', 599, 1, '19-08-20_1597849235.webp', '2020-08-20 00:30:35', '2020-09-06 00:39:47', 'Qualcomm Quick charge3.0 to give you lightning fast charge upto 18W\r\nDual USB Port\r\nStylish Blue LED Ring\r\n4 layers of protection\r\nCompact and Lightweight', 25.04, 1, 33),
(782, 32, 'Vivo Y91i ( 2GB RAM, 32GB Storage)(TCS)', '1', 9990, 1, '19-08-20_1597849335.webp', '2020-08-20 00:32:15', '2020-09-06 00:50:34', '\"13MP rear camera | 5MP front camera\r\n15.80 centimeters (6.22-inch) multi-touch capacitive touchscreen with 1520 x 720 pixels resolution\r\nMemory, Storage & SIM: 2GB RAM | 32GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with Helio P22 octa core processor\r\n4030mAH lithium-ion battery\"', 20.02, 1, 31),
(783, 19, 'Mi True Wireless Earphones----------TCS', '1', 5499, 1, '19-08-20_1597849453.webp', '2020-08-20 00:34:13', '2020-09-06 00:40:03', 'Discover the limits of sound with powerful 14.2 mm dynamic driver\r\nStrong battery life that lasts up to 14 hrs-  4 hrs on a single charge and 14 hrs with charging case .\r\nImmersive High definition audio quality with LHDC hi-res codec for an exceptional real audio experience.', 27.28, 1, 33),
(784, 32, 'Vivo Y91i ( 3GB RAM, 32GB Storage) (TCS)', '1', 9990, 1, '19-08-20_1597849501.webp', '2020-08-20 00:35:01', '2020-09-06 00:45:49', '\"13MP rear camera | 5MP front camera\r\n15.80 centimeters (6.22-inch) multi-touch capacitive touchscreen with 1520 x 720 pixels resolution\r\nMemory, Storage & SIM: 3GB RAM | 32GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid Oreo v8.1 operating system with Helio P22 octa core processor\r\n4030mAH lithium-ion battery\"', 10, 1, 31),
(785, 19, 'Redmi Earbuds ----------TCS', '1', 1799, 1, '19-08-20_1597849573.webp', '2020-08-20 00:36:13', '2020-09-06 00:37:34', 'This Certified Refurbished product is tested to work and look like new with minimal to no signs of wear & tear; the product comes with relevant accessories and is backed by a minimum six month supplier backed warranty; box may be generic\r\nPairing Procedure: Remove both earbuds from the charging case simultaneously, and wait for 2–3 seconds for the earbuds to automatically connect with each other.', 0, 1, 33),
(786, 19, 'Mi Neckband Bluetooth Earphones-------------TCS', '1', 1799, 1, '19-08-20_1597849625.webp', '2020-08-20 00:37:05', '2020-09-06 00:33:30', 'Mi Earphones are here to ensure that good music never has to stop as they offer up to 8 hours of music playback. This way, you can power through tough workout sessions and long days at work', 0, 1, 33),
(787, 32, 'Vivo Y11 (  3GB RAM, 32GB Storage) (TCS)', '1', 9990, 1, '19-08-20_1597849627.webp', '2020-08-20 00:37:07', '2020-09-06 00:45:19', 'The Vivo Y11 smartphone is equipped with 8MP Front Camera, 13PM+2MP Rear Camera , 5,000mAh battery, 16.12cm (6.35) HD+ Display, 3GB RAM, 32GB internal memory and much more.', 0, 1, 31),
(788, 32, 'Vivo Y15 (, 4GB RAM, 64GB Storage)(TCS)', '1', 15990, 1, '19-08-20_1597849772.webp', '2020-08-20 00:39:32', '2020-09-06 00:50:09', '\"The Vivo Y15 smartphone comes with 13MP+8MP+2MP AI triple rear camera, 16MP Selfie Camera, MediaTek Helio P22 processor, 4GB RAM, 64GB internal memory expandable up to 256 GB, 16.15 cm (6.35\"\") Halo Full View Display, a massive 5000mAh battery.\"', 18.76, 1, 31),
(789, 32, 'Vivo Y50 ( 8GB RAM, 128GB Storage)(TCS)', '1', 18990, 1, '19-08-20_1597849928.webp', '2020-08-20 00:42:08', '2020-09-06 00:50:22', 'The Vivo Y50 smartphone comes with 13MP+8MP+2MP+2 MP rear camera, 16 MP front camera, Qualcomm Snapdragon 665 octa core processor, 8 GB RAM, 128 GB internal memory expandable up to 256 GB, 16.59 cm (6.53) FHD+ iView display, a massive 5000mAh battery and much more.', 5.27, 1, 31),
(790, 32, 'Vivo S1 Pro ( 8GB RAM, 128GB Storage)(TCS)', '1', 20990, 1, '19-08-20_1597850063.jpg', '2020-08-20 00:44:23', '2020-09-06 00:44:50', 'The Vivo S1Pro smartphone is equipped with 48MP AI Quad Rear Camera, 32MP Selfie Camera , a 4, 500mAh battery with 18W Dual-Engine Fast Charging technology (Type-C), Flash In-Display Fingerprint, 16.20cm (6.38) FHD+ Super AMOLED Display, 8GB RAM, 128GB internal memory expandable up to 256GB and much more.', 4.76, 1, 31),
(791, 32, 'Vivo V19 ( 8GB RAM, 128GB Storage)(TCS)', '1', 30990, 1, '19-08-20_1597850205.webp', '2020-08-20 00:46:45', '2020-09-06 00:45:01', 'The vivo V19 is equipped with 32MP Dual Front Camera, Super Night Selfie, Super Wide Selfie,  Aura Screen Light, 48MP AI Rear Camera, 33W vivo Flash Charge 2.0 with 4500mAh Big Battery, Qualcomm Snapdragon 712AIE, 16.36cm (6.44-inch) LIV Super AMOLED FHD+ Dual iView Display,8GB RAM with up to 256GB Internal Memory Storage expandable up to 512GB and much more.', 19.36, 1, 31),
(792, 32, 'Samsung EHS64 earphone(TCS)', '1', 449, 1, '19-08-20_1597850385.webp', '2020-08-20 00:49:45', '2020-09-06 00:42:07', '\"In Ear Volume Control\r\nDesign: Canal phone\r\nHeadphone Jack: 3.5mm\r\n6 months warranty\r\nCountry of Origin: Vietnam\"', 22.27, 1, 32),
(793, 32, 'Samsung Original Level U in-ear Bluetooth Headphones (TCS)', '1', 3990, 1, '19-08-20_1597850560.webp', '2020-08-20 00:52:40', '2020-09-06 00:44:07', '\"Samsung Level U Bluetooth Stereo Headset Flexible Joint With Neckband ( Gold )\r\nBest-In-Class : Two Mics for clearer voice calls , 12mm Dynamic Speaker Unit for deep and powerful sound\r\nBuilt-in Battery,Ergonomic Design : Sophisticated Design , Flexible Neckband , Comfortable Eartips\r\nMulti-Purpose : TTS available through the Samsung , Level App ㆍLong battery life\"', 30.08, 1, 32),
(794, 32, 'Samsung Galaxy M01 ( 3GB RAM, 32GB Storage) (TCS)', '1', 9999, 1, '19-08-20_1597850957.webp', '2020-08-20 00:59:17', '2020-09-06 00:47:53', '\"13MP (F2.2) main camera + 2MP (F2.4) depth rear camera | 5MP (F2.2) front camera\r\n5.7-inch (14.51 centimeters) infinity V cut display, HD+ capacitive multi-touch touchscreen with 720 x 1520 pixels resolution, 294 ppi | 16M color support\r\nMemory, Storage & SIM: 3GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10.0 operating system with 2GHz+1.45GHz Qualcomm | SDM439 octa core processor\r\n4000mAH lithium-ion battery\"', 10.01, 1, 31),
(795, 19, 'Mi 360° 1080p Full HD WiFi Smart Security Camera| 360° Viewing Area |Intruder Alert | Night Vision | ---------TCS', '1', 2899, 1, '19-08-20_1597851069.webp', '2020-08-20 01:01:09', '2020-09-06 00:32:51', 'AI motion detection alert. The camera angle is 110 degree and the connectivity is Wi-Fi IEEE 802.11 b/g/n 2.4 GHz\r\nInput Power: 5V ; Working temperature: -10℃ ~ 50℃; Support Devices : Android 4.4 above or IOS 9.0 above\r\nInfrared Night Vision\r\nTalkback Feature', 0, 1, 33),
(796, 37, 'CONA EXTENSION CORD ( HMT )', '1', 318, 1, '41-GVftKnLL_1599155315.jpg', '2020-09-04 03:16:11', '2020-09-04 03:18:35', '4.5 meters wire functional design for everyday use best quality plastic body heavy gauge copper wire easy winding\r\n NOTE : NOT FOR HEAVY LOAD  ( IRON , FREEZE , WASHING MACHINE, ETC. )', 27, 1, 10),
(797, 37, 'CONA TRIP RITE B 32  MCB  ( Miniature Circuit Breakers \"B Type \" ) SP  ( HMT)', '1', 130, 1, '04-09-20_1599209487.jpg', '2020-09-04 18:21:27', '2020-09-04 18:55:17', 'Features : \r\n1: Short Circuit & Overload Protection \r\n2 : High Heat Resistant Body \r\n3 : Silver Cadmium For High Conductivity \r\n4 : High Grade Thermoplastic \r\n5 : Used For Home , Office , Hospital , Hotels etc. \r\n6 : High Making & Breaking Capacity', 15.05, 1, 10),
(798, 37, 'CONA ORIGINAL QUICK GRIP ( TAPE ) 18mm×0.125×7m', '1', 15, 1, 'IMG_20200904_144324_1599211297.jpg', '2020-09-04 18:49:31', '2020-09-04 18:54:03', 'Colour : GREEN , BLUE , RED , BLACK , YELLOW .', 30.05, 1, 10),
(799, 37, 'ANCHOR Wire 2.50mm', '1', 2780, 1, 'IMG-20200905-WA0077215725_5920_1599323796.jpeg', '2020-09-04 20:09:48', '2020-09-06 02:06:36', 'This is India’s first advance FR PVC wire which is insulated with an advance formulation of special ingredients along with additional firefighting properties and higher oxygen and temperature index than those of normal PVC cable. This is a wire which comes with 100% conductivity that helps in reducing heat generating and also saves considerable amount of power resulting in reduced electricity bills.', 40, 1, 10),
(800, 37, 'ANCHOR WIRE 6.00mm', '1', 6030, 1, 'IMG-20200905-WA0076215907_5920_1599323875.jpeg', '2020-09-04 20:25:57', '2020-09-06 02:07:55', 'This is India’s first advance FR PVC wire which is insulated with an advance formulation of special ingredients along with additional firefighting properties and higher oxygen and temperature index than those of normal PVC cable. This is a wire which comes with 100% conductivity that helps in reducing heat generating and also saves considerable amount of power resulting in reduced electricity bills.', 37.05, 1, 10),
(801, 37, 'ANCHOR WIRE 4.00mm', '1', 4440, 1, 'IMG-20200905-WA0083215953_5920_1599323837.jpeg', '2020-09-04 20:31:26', '2020-09-06 02:07:17', 'This is India’s first advance FR PVC wire which is insulated with an advance formulation of special ingredients along with additional firefighting properties and higher oxygen and temperature index than those of normal PVC cable. This is a wire which comes with 100% conductivity that helps in reducing heat generating and also saves considerable amount of power resulting in reduced electricity bills.', 42, 1, 10),
(802, 37, 'HAVELLS 2.5 Fan Capacitor (Condensor )', '1', 35, 1, '04-09-20_1599226522.png', '2020-09-04 23:05:22', '2020-09-04 23:05:22', 'Voltage : 440 v AC50/60 50/60 Hz capacitor for ceiling fan', 15, 1, 10),
(804, 37, 'Mi Earphone Basic with Ultra deep bass and mic (Black) (BUN)', '1', 599, 1, '10-09-20_1599716826.jpeg', '2020-09-10 15:17:06', '2020-09-10 15:17:06', '\"Tangle free cable\r\nUltra deep bass\r\nHas mic and play/pause button\r\nHigh quality silicone earbuds. Cable length-1.25 m\"', 33.39, 1, 33),
(805, 37, 'Mi Dual Driver in-Ear Earphones with Mic (BUN)', '1', 999, 1, '10-09-20_1599717251.jpeg', '2020-09-10 15:24:11', '2020-09-10 15:24:11', 'Designed for high-definition dynamic bass to make your music great every day. Mi Dual Drivers In-ear Earphones are the best for immersive audio experience with dual dynamic drivers for powerful bass and crisp treble', 20.02, 1, 33),
(806, 37, 'MI CHARGER 3A ( BUN )', '1', 999, 1, '10-09-20_1599717671.jpeg', '2020-09-10 15:31:11', '2020-09-10 15:31:11', '\"Fast Charger Comes with a Type C Cable Black\r\nMultiple Output Power Supported -5V/3A 9V/2A 12V/1.5A\r\nSmall and lightweight : slightly heavier than egg,simply slip it into bag when you are out and about\r\nCompatibility : Compatible with Xiaomi Poco and All Other Mi Phones And Android Smartphones with Type C Ports\"', 50.05, 1, 33),
(807, 37, 'Mi Sports Bluetooth Earphones Basic Dynamic bass ( BUN)', '1', 1799, 1, '10-09-20_1599717900.jpeg', '2020-09-10 15:35:00', '2020-09-10 15:35:00', '\"Up to 9hrs battery life: Enjoy Music and videos without having to stop to charge\r\n10mm sound driver: The high-quality copper-enameled wire can optimize medium to low audio quality and product rich far-reaching sound\"', 27.79, 1, 33),
(808, 37, 'Mi notebook 14 Horizon grey ( BUN)', '1', 59999, 1, '10-09-20_1599718848.jpeg', '2020-09-10 15:50:48', '2020-09-10 15:50:48', '\"Laptop Processor: 10th Gen Intel Core i5-10210U processor, 1.6 GHz base speed, 4.2 GHz max speed, 4 Cores, 8 threads\r\nOperating System in the laptop: Windows 10 Home operating system | Pre-installed software : Office 365 – one month Trial subscription\r\nLaptop Display: Horizon Display|14-Inch (1920X 1080 )Full HD Anti-Glare Screen, Nvidia MX350 2GB GDDR5 Graphics\r\nMemory Specs (Laptop): 8GB DDR4-2666MHz RAM and  Storage: 512 GB SSD\r\nDesign and battery of Laptop: Robust metal body |Thin and light Laptop| Laptop weight 1.35kg | Battery Life: Up to 10 hours\r\nInside the Laptop box: Notebook, Power Adaptor, Power Cord, User Manual\r\nWarranty: 1 Year manufacturer warranty from the date of purchase for both Laptop and Webcam\"', 8.33, 1, 33),
(809, 37, 'Mi portable wireless mouse', '1', 649, 1, '10-09-20_1599719005.jpeg', '2020-09-10 15:53:25', '2020-09-10 15:53:25', '\"Ergonomic  & Comfort Induced Design\r\nExcellent tracking accuracy  of 1200 DPI High Resolution\r\nUltralight weight -56g\r\n2 buttons, 2 way scroll\r\nBattery life of 12 months lets you go longer between battery changes\r\nNo delays or dropouts in the transmission, you can just plug & forget\r\nThe product is powered by one AA battery , that is not included as a part of the package\"', 22.96, 1, 33),
(810, 37, 'Mi band 3', '1', 2199, 1, '10-09-20_1599719222.jpeg', '2020-09-10 15:57:02', '2020-09-10 15:57:02', '\"Up to 20 days of battery life (If Automatic Heart Rate feature is turned on then expected battery life will be 3-9 days). Compatible with Android 4.4 or later/iOS 9.0 or later\r\nUse Mi-Fit App to connect the phone. Connectivity - Bluetooth 4.2\r\n0.78” OLED touch screen. The adjustable strap length is 155 - 216mm\r\nCall and Notification Alert: Read messages and receive call notification and alerts from applications such as Uber, WhatsApp etc\"', 36.38, 1, 33),
(811, 37, 'Mi band mart 3i ( BUN)', '1', 1599, 1, '10-09-20_1599719497.jpeg', '2020-09-10 16:01:37', '2020-09-10 16:01:37', '\"Up to 20 days of battery life (If Automatic Heart Rate feature is turned on then expected battery life will be 3-9 days). Compatible with Android 4.4 or later/iOS 9.0 or later\r\nUse Mi-Fit App to connect the phone. Connectivity - Bluetooth 4.2\r\n0.78” OLED touch screen. The adjustable strap length is 155 - 216mm\r\nCall and Notification Alert: Read messages and receive call notification and alerts from applications such as Uber, WhatsApp etc\"', 18.76, 1, 33),
(812, 37, 'Mi band 3 charging cable ( BUN)', '1', 199, 1, '10-09-20_1599719729.jpeg', '2020-09-10 16:05:29', '2020-09-10 16:05:29', '\"Replacement Rubber Band/Bracelet/Strap For Mi Band 3 Smart Activity Tracker.\r\nSubstitution for lost or damaged bands. Personalize your wristband to match your daily style Fitness tracker (Not included)\r\nDurable, Attractive Perfect & Stylish for Mi Band 3\r\nIt has been detected by more than 3000 times anti-sway test(high use frequency, soft line, abrasion- resistance, bend-resistance with long durability)\r\n1 x USB Charger for Mi Band 3 (Clip Not Included)\"', 25.13, 1, 33),
(813, 37, 'Mi bandsmart  4 charging cable ( BUN)', '1', 299, 1, '10-09-20_1599719931.jpeg', '2020-09-10 16:08:51', '2020-09-10 16:08:51', '\"NO NEED TAKE OUT TRACKER FROM STRAP, IT IS EASY TO CHARGE: Forget the worries of removing your strap for getting Mi Band 4 unit charged. Now charge directly using Clip ON USB Cable.\r\nCharging faster-Built-in high-quality copper wire core, charging faster.\r\nHigh strength and durability-tensile durability and flexibility are higher than those of ordinary wire.\r\nAvoid oxidation and rusting effectively-The joints are made of alloys to avoid oxidation and rusting effectively.\"', 33.44, 1, 33),
(814, 37, 'Mi smart band3i strap ( BUN)', '1', 299, 1, '10-09-20_1599720236.jpeg', '2020-09-10 16:13:56', '2020-09-10 16:13:56', '\"Works Perfectly With Your Xiaomi Mi Band 3, 4\r\nPerfect Replacement Band Strap For Your Xiaomi Mi Band 3, 4\r\nBest Quality And Perfectly Fit Band Straps\r\nColorful And Multi Colored Band Straps For Mi 3 , 4 Band Watch\r\nThis Wristband Belt Is Light Weight And Durable\"', 33.44, 1, 33),
(815, 37, 'Mi band 3 strap (BUN)', '1', 349, 1, '10-09-20_1599720435.jpeg', '2020-09-10 16:17:15', '2020-09-10 16:17:15', '\"Works Perfectly With Your Xiaomi Mi Band 3, 4\r\nPerfect Replacement Band Strap For Your Xiaomi Mi Band 3, 4\r\nBest Quality And Perfectly Fit Band Straps\r\nColorful And Multi Colored Band Straps For Mi 3 , 4 Band Watch\r\nThis Wristband Belt Is Light Weight And Durable\"', 28.65, 1, 33),
(816, 37, 'Mi band 3i charging cable (BUN)', '1', 199, 1, '10-09-20_1599720614.jpeg', '2020-09-10 16:20:14', '2020-09-10 16:20:14', '\"High strength and durability-tensile durability and flexibility are higher than those of ordinary wire.\r\nAvoid oxidation and rusting effectively-The joints are made of alloys to avoid oxidation and rusting effectively.\"', 35.18, 1, 33),
(817, 37, 'mi super bass wireless headphone (BUN)', '1', 2199, 1, '10-09-20_1599721416.jpeg', '2020-09-10 16:33:36', '2020-09-10 16:33:36', '\"BreakTheWire: Up to 20hrs of battery life I Super powerful bass I 40mm Dynamic driver I Pressure less ear muffs I Bluetooth 5.0 I Voice control\r\nUp to 20 hours epic battery life: Now listen up to 300 songs uninterrupted on a single charge\r\n40mm dynamic driver: The in-built 40mm high performance large neodymium iron boron unit has a bass output that is deep and impactful. The large voice coils, and large diaphragms recreate the front row rock concert experience. These are designed for the bass head\"', 18.19, 1, 33),
(818, 37, 'Mi outdoor bluetooth speaker 5W ( BUN)', '1', 1999, 1, '10-09-20_1599721646.jpeg', '2020-09-10 16:37:26', '2020-09-10 16:37:26', '\"Mini & Light : Compact design & extremely light weight and let’s you carry your music wherever you go\r\nStrong battery life that lasts up to 20 hours of battery life and lets you have an uninterrupted experience\r\nEnriching dynamic sound effect to give you the best music experience with a crystal clear output and punchy bass & perfect treble\r\nEnjoy your outdoor parties with our speaker that’s equipped to withstand water splashes and certified to be  IPX5 Splash proof\"', 30.02, 1, 33),
(819, 37, 'Mi bluetooth speaker Basic 2 ( BUN)', '1', 2699, 1, '10-09-20_1599721836.jpeg', '2020-09-10 16:40:36', '2020-09-10 16:40:36', '\"6 hours of playback. The impedance is 4 ohms. Audio frequency Range: 200 Hz to 18kHz; Playback time : 6 hours at 80% volume\r\nEasy to carry, easy to store - with hand strap, it\'s highly portable and easy to carry one-handed or in a bag\r\nIntegrated microphone for phone calls - easily answer phone calls. No more hassle switching devices or audio output when receiving a call on your phone and go hands-free\r\nEffective distance is up to 10m, Handsfree calling support: yes\"', 33.35, 1, 33),
(820, 37, 'Mi pocket speaker 2 ( BUN)', '1', 1499, 1, '10-09-20_1599722033.jpeg', '2020-09-10 16:43:53', '2020-09-10 16:43:53', '\"6 hours of playback. The impedance is 4 ohms. Audio frequency Range: 200 Hz to 18kHz; Playback time : 6 hours at 80% volume\r\nEasy to carry, easy to store - with hand strap, it\'s highly portable and easy to carry one-handed or in a bag\r\nIntegrated microphone for phone calls - easily answer phone calls. No more hassle switching devices or audio output when receiving a call on your phone and go hands-free\r\nEffective distance is up to 10m, Handsfree calling support: yes\"', 0, 1, 33),
(821, 37, 'Mi bluetooth audio receiver (BUN)', '1', 1199, 1, '10-09-20_1599722179.jpeg', '2020-09-10 16:46:19', '2020-09-10 16:46:19', '\"Enjoy wireless music anytime\r\nOne Key Control and easy to use\r\nAudio receiver adapter with 3.5 mm jack\r\nBluetooth 4.2 technology ensures a faster data transmission rate and much more stable connection between a bluetooth device and the audio receiver\"', 16.68, 1, 33),
(822, 37, 'mi compact bluetooth speaker 2 (BUN)', '1', 899, 1, '10-09-20_1599722357.jpeg', '2020-09-10 16:49:17', '2020-09-10 16:49:17', '\"Enjoy wireless music anytime\r\nOne Key Control and easy to use\r\nAudio receiver adapter with 3.5 mm jack\r\nBluetooth 4.2 technology ensures a faster data transmission rate and much more stable connection between a bluetooth device and the audio receiver\"', 11.12, 1, 33),
(823, 37, 'Mi smart LED desk lamp 1s (BUN)', '1', 2999, 1, '10-09-20_1599722589.jpeg', '2020-09-10 16:53:09', '2020-09-10 16:53:09', '\"Mobile App control\r\nAdjustable Color Temperature\r\nEasy knob control\r\nFoldable Design\r\nVoice Control: Works with Amazon Alexa and Google Assistant\r\nAdjustable Brightness\"', 16.67, 1, 33),
(824, 37, 'mi smart beside lamp 2 ( BUN )', '1', 2999, 1, '10-09-20_1599723055.jpeg', '2020-09-10 17:00:55', '2020-09-10 17:00:55', '\"Mobile App control\r\nAdjustable Color Temperature\r\nEasy knob control\r\nFoldable Design\r\nVoice Control: Works with Amazon Alexa and Google Assistant\r\nAdjustable Brightness\"', 16.67, 1, 33),
(825, 37, 'Mi rechargeble LED lamp ( BUN)', '1', 1799, 1, '10-09-20_1599723335.jpeg', '2020-09-10 17:05:35', '2020-09-10 17:05:35', '\"\r\nThe Mi rechargeable table lamp is an elegantly designed lighting option. Designed using the Kruithof curve, the lamp comes with customized illumination options such as Bright Mode that is ideal for working, the Cool Mode which is ideal to relieve eye-stress and the Warm Mode that doubles up as a night lamp. Portable and featuring a battery backup that lasts up to 5 days, this rechargeable table lamp comes with a 120-degree tilting head, a one-touch control and non-slip pads.\"', 16.68, 1, 33),
(826, 37, 'Mi motion activated night light 2 (BUN)', '1', 699, 1, '10-09-20_1599723473.jpeg', '2020-09-10 17:07:53', '2020-09-10 17:07:53', 'Bring the Illumination You Need Let us fulfill your imagination for night light. Easy installation, no need to plug or wire. Wide sensing range provides satisfying lighting experience. Ultra low power gives you 365 nights of effortless company. Smart Sensor Brings Ultimate Experience 120Â° wide sensor angle,', 14.31, 1, 33),
(827, 37, 'Mi LED WI-Fi smart bulb (BUN)', '1', 1499, 1, '10-09-20_1599724873.jpeg', '2020-09-10 17:31:13', '2020-09-10 17:31:13', '\"Please enable location access on your phone for seamless pairing with the Smart LED Bulb\r\n16 million colours\r\n11 years long life\r\nMobile app control; Works with Alexa and Google Assistant\r\n10W brightness with 800 lumen\"', 13.34, 1, 33),
(828, 37, 'mi smart water purifier filter ppc (BUN)', '1', 1999, 1, 'IMG_20200911_055158_1599783764.webp', '2020-09-10 17:38:28', '2020-09-11 10:00:08', '\"\r\nPPC filter helps to reduce sediment particles and chlorine, odor, volatile organic compounds\"', 35.02, 1, 33),
(829, 37, 'Mi water purifier filter RO', '1', 2499, 1, 'IMG_20200911_054939_1599783651.webp', '2020-09-10 17:43:52', '2020-09-11 10:00:27', 'his Mi smart water purifier is here to make sure that you and your loved ones drink clean and healthy water. This appliance ensures that water passes through 5 stages of purification to eliminate chemicals, residual chlorine, bacteria, and other compounds that can impact health. It also ensures that you get to track the water quality, the life of the filter, and the status of sterilization as well.', 28.01, 1, 33),
(830, 37, 'Mi router 4c (BUN)', '1', 1199, 1, '10-09-20_1599725950.jpeg', '2020-09-10 17:49:10', '2020-09-10 17:49:10', '4 high-performance omnidirectional antennas, Supports up to 300Mbps with 802.11n. Everyone on the network will enjoy smooth video streaming and seamless web browsing. Securely update using dual ROM partition system-Upgrading firmware is safer than you think. Mi Router 4C ensures smooth browsing experiences.', 8.34, 1, 33),
(831, 37, 'Mi air purifier 3 (BUN)', '1', 12999, 1, '10-09-20_1599726129.jpeg', '2020-09-10 17:52:09', '2020-09-10 17:52:09', '\"OLED display; Laser particle sensor\r\nAllergen and Odour free\r\n310m³ PM/hr CADR | Remote app control\r\n360 degree air intake with 3-layer filtration\r\n3 different modes to choose from (Auto, Night and Manual)\r\nOLED display (shows real-time PM2.5 concentration, temperature and humidity, Wi-Fi connection and working mode)\r\nQuiet and energy efficient\"', 15.39, 1, 33),
(832, 37, 'Mi air purifier 2s (BUN)', '1', 12999, 1, '10-09-20_1599726273.jpeg', '2020-09-10 17:54:33', '2020-09-10 17:54:33', '\"OLED display; Laser particle sensor\r\nAllergen and Odour free\r\n310m³ PM/hr CADR | Remote app control\r\n360 degree air intake with 3-layer filtration\r\n3 different modes to choose from (Auto, Night and Manual)\r\nOLED display (shows real-time PM2.5 concentration, temperature and humidity, Wi-Fi connection and working mode)\r\nQuiet and energy efficient\"', 30.77, 1, 33),
(833, 37, 'Mi air purifier 2c (BUN)', '1', 7999, 1, '10-09-20_1599726718.jpeg', '2020-09-10 18:01:58', '2020-09-10 18:01:58', '\"OLED display; Laser particle sensor\r\nAllergen and Odour free\r\n310m³ PM/hr CADR | Remote app control\r\n360 degree air intake with 3-layer filtration\r\n3 different modes to choose from (Auto, Night and Manual)\r\nOLED display (shows real-time PM2.5 concentration, temperature and humidity, Wi-Fi connection and working mode)\r\nQuiet and energy efficient\"', 12.52, 1, 33),
(834, 37, 'mi air purifier filter HEPA (BUN)', '1', 2499, 1, '10-09-20_1599726919.jpeg', '2020-09-10 18:05:19', '2020-09-10 18:05:19', '\"360 Degree 3 Layer filtration\r\nTrue HEPA Filter with filtration efficiency of 99.97% for particle size up to 0.3 microns\r\nPrimary filter to filter out large particles\r\nActivated Carbon filter removes formaldehyde, odor, TVOC and more\r\nWarranty: 6 Months on manufacturing defects only\"', 12, 1, 33),
(835, 37, 'Mi buisness backpack (BUN)', '1', 1499, 1, '10-09-20_1599727056.jpeg', '2020-09-10 18:07:36', '2020-09-10 18:07:36', 'Mi Business Casual Backpack comes in the classic black color design with 21l of storage. The backpack comes with 2 main compartments and can comfortably fit a 15.2 inch laptop. The backpack has multiple organisers to store all of your items and also comes with an anti-theft pocket to keep your valuables like Passport, wallet, etc', 13.34, 1, 33),
(836, 37, 'mi luggage (BUN)', '1', 3499, 1, '10-09-20_1599727356.jpeg', '2020-09-10 18:12:36', '2020-09-10 18:12:36', 'Mi Luggage being equipped with TSA lock and 4 high quality spinner wheels, carry all that you need for a trip - convenient and safe. With 2 colors to choose from, match your style on the go!', 14.29, 1, 33),
(837, 37, 'Mi buisness casual backpack (BUN)', '1', 1199, 1, '10-09-20_1599727588.jpeg', '2020-09-10 18:16:28', '2020-09-10 18:16:28', 'Mi Business Casual Backpack comes in the classic black color design with 21l of storage. The backpack comes with 2 main compartments and can comfortably fit a 15.2 inch laptop.', 0, 1, 33),
(838, 37, 'mi stepout backpack (BUN)', '1', 499, 1, '10-09-20_1599728246.jpeg', '2020-09-10 18:27:26', '2020-09-10 18:27:26', '\"With a capacity of 12 litres, the Step out backpack comes with 2 zipper pockets that can house a notebook, gym gear, travel essentials and more. Fully equipped with water repellent 600D multi-coated polyester material, contra zippers, reflective pullers and adjustable shoulder straps, this backpack is ideal companion for a hands-free day.\r\n\r\n\"', 40.08, 1, 33),
(839, 37, 'Mi travel backpack (BUN)', '1', 2199, 1, '10-09-20_1599729119.jpeg', '2020-09-10 18:41:59', '2020-09-10 18:41:59', '\"Level 4 Splash Resistant; 650D Oxford Cloth; Ergonomic; Trolley strap; Modern Mesh design; Lightweight\r\nTrendy Backpack; Trendy Laptop Bag; Urban; College Casual; Weekend Backpack; Travel\r\nEPE Foam back support and Strap;: Water Resistant;: Cushioned Sunglass pocket;: Steel sheet support;: Classy Design\"', 9.1, 1, 33),
(840, 37, 'mi city bacpack (BUN)', '1', 1799, 1, '10-09-20_1599729341.jpeg', '2020-09-10 18:45:41', '2020-09-10 18:45:41', 'The backpack comes with 2 main compartments and can comfortably fit a 15.2 inch laptop. The backpack has multiple organisers to store all of your items and also comes with an anti-theft pocket to keep your valuables like Passport, wallet, etc. The extra cushioned back and straps is a bliss for your back and makes it easy to carry it all day along. The backpack also comes withIPX4 splash', 11.12, 1, 33),
(864, 37, 'goldiee cumin powder (AWM) (Jeera powder )', '100g', 48, 1, '21-09-20_1600683324.jpeg', '2020-09-21 19:45:24', '2020-09-21 21:12:23', 'Spices and herbs like Coriander Powder, Cumin Powder, Jeera and cumin Powder Red Chilli Powder, Turmeric powder, Basil Seeds, Chia Seeds, Flex Seeds, Sunflower Seeds, Mustard Seeds, fenugreek seed ( Methi ), Sesame, Cumin ( Jeera ), Ajwain are the most important ingredients across all Indian cuisines, where as without these spices the dish is incomplete in India. Spices are completely free from artificial colours and preservatives. Our Spices give you the goodness, flavors and aroma that came from pure and unadulterated spices. Add them to your delicious food recipes to infuse a punch of flavor without compromising on your health. For this reason, we maintain a consistency in the grade of your spices across the year.', 15, 1, 38),
(865, 37, 'Everest turmeric powder(box) (Haldi powder ) AWM', '500g', 145, 1, '21-09-20_1600684334.jpeg', '2020-09-21 20:02:14', '2020-09-21 21:09:32', 'Known for its high curcumin (colour property) content.', 10, 1, 38),
(866, 37, 'Everest turmeric powder(box) (AWM ) ( Haldi powder )', '200g', 62, 1, 'images (9)160802_21920_1600685191.jpeg', '2020-09-21 20:13:12', '2020-09-21 21:10:35', 'Known for its high curcumin (colour property) content', 10, 1, 38),
(867, 37, 'Everest turmeric powder(box) AWM ( Haldi powder ))', '100g', 28, 1, '21-09-20_1600686031.jpeg', '2020-09-21 20:30:31', '2020-09-21 21:11:32', 'Known for its high curcumin (colour property) content', 10, 1, 38),
(868, 37, 'Everest cumin powder(box) AWM ( Jeera powder ) )', '200g', 107, 1, '21-09-20_1600686363.jpeg', '2020-09-21 20:36:03', '2020-09-21 21:08:51', 'Features & details\r\nIt is used as a speedy sprinkle in very tiny amount on salads, soups, curries and condiments\r\nUnique flavour and taste\r\nCountry of Origin: India\r\nPacked using flavour lock technology\r\nThis is a Vegetarian product', 10, 1, 38),
(869, 37, 'Everest coriander powder(box) AWM (Dhaniya powder ))', '200g', 62, 1, '21-09-20_1600686664.jpeg', '2020-09-21 20:41:04', '2020-09-21 21:08:12', 'Everest Coriander Powder is vastly used in Indian cuisine. This powder is very much desirable and it also acts as a thickening cause. It can be added to any dish to impart a natural flavour to it. You can add it to soups and curries.', 10, 1, 38),
(870, 37, 'MDH Lal mirch powder ( AWM)', '500g', 155, 1, '21-09-20_1600686982.jpeg', '2020-09-21 20:46:22', '2020-09-21 20:46:22', 'Tasty and easy to prepare.', 10, 1, 38),
(871, 37, 'MDH Lal mirch powder ( AWM)', '200g', 65, 1, '21-09-20_1600687067.jpeg', '2020-09-21 20:47:47', '2020-09-21 20:47:47', 'Tasty and easy to prepare.', 10, 1, 38),
(872, 37, 'MDH dhania powder (AWM)', '500g', 145, 1, '21-09-20_1600687251.jpeg', '2020-09-21 20:50:51', '2020-09-21 20:50:51', 'Tasty and easy to prepare.', 10, 1, 38),
(873, 37, 'MDH haldi powder ( AWM )', '200g', 55, 1, '21-09-20_1600687410.jpeg', '2020-09-21 20:53:30', '2020-09-21 20:53:30', 'Tasty and easy to prepare.', 10, 1, 38),
(874, 37, 'MDH pav bhaji masala (AWM )', '100g', 60, 1, '21-09-20_1600687539.jpeg', '2020-09-21 20:55:39', '2020-09-21 20:55:39', 'Tasty and easy to prepare', 10, 1, 38),
(875, 37, 'MDH chuny chat masala (AWM)', '100g', 62, 1, '21-09-20_1600687687.jpeg', '2020-09-21 20:58:07', '2020-09-21 20:58:07', 'Tasty and easy to prepare', 10, 1, 38),
(876, 37, 'MDH sahi panner masala (AWM )', '100g', 80, 1, '21-09-20_1600687787.jpeg', '2020-09-21 20:59:47', '2020-09-21 20:59:47', 'Tasty and easy to prepare', 10, 1, 38),
(877, 37, 'MDH sambhar masala (AWM )', '100g', 62, 1, '21-09-20_1600687910.jpeg', '2020-09-21 21:01:50', '2020-09-21 21:01:50', 'Tasty and easy to prepare', 10, 1, 38),
(878, 37, 'MDH chana masala ( AWM )', '100g', 62, 1, '21-09-20_1600688015.jpeg', '2020-09-21 21:03:35', '2020-09-21 21:03:35', 'Tasty and easy to prepare .', 10, 1, 38),
(879, 37, 'MDH kitchen king masala (AWM)', '100g', 67, 1, '23-09-20_1600836627.jpeg', '2020-09-23 14:20:27', '2020-09-23 14:20:27', 'MDH Kitchen King Mixed Spices Powder, 100g.', 10, 1, 38),
(880, 37, 'MDH sabji masala (AWM)', '100g', 50, 1, '23-09-20_1600836831.jpeg', '2020-09-23 14:23:51', '2020-09-23 14:23:51', 'Tasty & easy to prepare', 10, 1, 38),
(881, 37, 'MDH chicken masala (AWM)', '100g', 67, 1, '23-09-20_1600836994.jpeg', '2020-09-23 14:26:34', '2020-09-23 14:26:34', 'MDH Chicken Masala exudes the natural aroma of the Mughalai chicken.', 10, 1, 38),
(882, 37, 'MDH meat ka masala (AWM)', '100g', 70, 1, '23-09-20_1600837143.jpeg', '2020-09-23 14:29:03', '2020-09-23 14:29:03', 'Tasty and easy to prepare', 10, 1, 38),
(883, 37, 'MDH biryani masala(AWM)', '50g', 28, 1, '23-09-20_1600837252.jpeg', '2020-09-23 14:30:52', '2020-09-23 14:30:52', 'Tasty and easy to prepare', 10, 1, 38),
(884, 37, 'MDH jal jeera masala ( AWM )', '100g', 52, 1, '23-09-20_1600837402.jpeg', '2020-09-23 14:33:22', '2020-09-23 14:33:22', 'Tasty and easy to prepare.', 10, 1, 38),
(885, 37, 'MDH GARAM MASALA ( AWM )', '100g', 78, 1, '23-09-20_1600837578.jpeg', '2020-09-23 14:36:18', '2020-09-23 14:36:18', 'MDH Garam Masala specializes in several unique traditional blends of spices suitable for different recipes and is widely used brand throughout India. MDH Garam Masala is one of the most widely used spice powders in every Indian household.', 10, 1, 38),
(886, 49, 'Goldiee chicken masala (AWM)', '50gm', 29, 1, '23-09-20_1600866441.webp', '2020-09-23 22:37:21', '2020-09-23 22:37:21', '•Serving you since 1980\r\n•chicken masala 50 grams', 0, 1, 38),
(887, 49, 'goldiee garam masala', '100gm', 86, 1, '23-09-20_1600866624.webp', '2020-09-23 22:40:24', '2020-09-23 22:40:24', '•goldiee garam masala 100grams', 0, 1, 38),
(888, 19, 'Harpic Toilet Cleaner-----------AMW', '200 ml', 37, 1, '23-09-20_1600877898.webp', '2020-09-24 01:48:18', '2020-09-24 01:48:18', 'One of the best toilet cleaner .', 5, 1, 40),
(889, 19, 'Lizol Surface Cleaner(lavender)----------AWM', '500 ml', 93, 1, '23-09-20_1600878360.webp', '2020-09-24 01:56:00', '2020-09-24 01:56:00', 'Best to use for cleaning the surface', 5, 1, 40),
(890, 20, 'exo round dishwash bar 500gm(AWM)', '1', 45, 1, 'IMG_20200925_215759_1601051393.webp', '2020-09-24 14:33:57', '2020-11-02 04:22:34', '500gm', 0, 1, 43),
(891, 20, 'patanjali(super) dishwash bar (AWM)', '1', 35, 1, '24-09-20_1600925547.webp', '2020-09-24 15:02:27', '2020-09-24 15:02:27', '500gm', 5, 1, 40),
(892, 20, 'godrej ezee (Awm)', '1', 49, 1, '24-09-20_1600925711.webp', '2020-09-24 15:05:11', '2020-09-24 15:05:11', '235ml', 5, 1, 40),
(893, 20, 'godrej ezee (Awm)', '1', 90, 1, '24-09-20_1600925776.webp', '2020-09-24 15:06:16', '2020-09-24 15:06:16', '470ml', 5, 1, 40),
(894, 20, 'harpic batyhroom cleaner(Awm)', '1', 91, 1, '24-09-20_1600925958.webp', '2020-09-24 15:09:18', '2020-09-24 15:09:18', '500ml', 5, 1, 40),
(895, 20, 'patanjali gonyle floor cleaner (Awm)', '1', 172, 1, '24-09-20_1600926074.webp', '2020-09-24 15:11:14', '2020-11-02 04:04:57', '1L', 0, 1, 48),
(896, 20, 'patanjali hand sanitizer (Awm)', '1', 130, 1, '24-09-20_1600926215.jpg', '2020-09-24 15:13:35', '2020-10-29 16:04:19', '300ml', 0, 1, 48),
(897, 20, 'patanjali hand sanitizer (Awm)', '1', 55, 1, '24-09-20_1600926370.jpg', '2020-09-24 15:16:10', '2020-09-24 15:16:10', '120ml', 5, 1, 40),
(898, 20, 'patanjali hand sanitizer (Awm)', '1', 25, 1, '24-09-20_1600926469.jpg', '2020-09-24 15:17:49', '2020-09-24 15:17:49', '50ml', 5, 1, 40),
(899, 20, 'savlon hand sanitizer(Awm)', '1', 240, 1, '24-09-20_1600926607.webp', '2020-09-24 15:20:07', '2020-09-24 15:20:07', '500ml', 5, 1, 40),
(900, 20, 'colin glass&househlod cleaner(Awm)', '1', 89, 1, '24-09-20_1600926865.webp', '2020-09-24 15:24:25', '2020-09-24 15:24:25', '500ml', 5, 1, 40);
INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(901, 20, 'lifebouy handwash (Awm)', '1', 85, 1, '24-09-20_1600927031.webp', '2020-09-24 15:27:11', '2020-09-24 15:27:11', '240ml', 5, 1, 40),
(902, 20, 'dettol(antiseptic liquid)(Awm)', '1', 105, 1, '24-09-20_1600927131.webp', '2020-09-24 15:28:51', '2020-09-24 15:28:51', '250ml', 5, 1, 40),
(903, 20, 'lifebuoy handwash refill pack of 3(Awm)', '1', 113, 1, '24-09-20_1600927252.jpg', '2020-09-24 15:30:52', '2020-09-24 15:30:52', '185ml', 0, 1, 40),
(904, 20, 'lizol surface cleaner(floral)(Awm)', '1', 93, 1, '24-09-20_1600927771.webp', '2020-09-24 15:39:31', '2020-09-24 15:39:31', '500ml', 5, 1, 40),
(905, 19, 'All Out Ultra Power+Refill----------AWM', '45ml', 72, 1, '24-09-20_1600929667.webp', '2020-09-24 16:11:07', '2020-09-24 16:11:07', 'Protect yourself from harmful insects/ mosquitos', 5.56, 1, 40),
(906, 19, 'Maxo Genius Refill------------AWM', '45ml', 75, 1, '24-09-20_1600929934.webp', '2020-09-24 16:15:34', '2020-09-24 16:15:34', 'It is used to fill the power+slider to make that reusable.', 13.33, 1, 40),
(907, 19, 'All Out Ultra(Power+Slider)--------AWM', '45ml', 89, 1, '24-09-20_1600930060.webp', '2020-09-24 16:17:40', '2020-09-24 16:18:37', 'Used in rooms to avoid mosquitoes and other harmful insects.', 4.49, 1, 40),
(908, 19, 'Good Night Glod Flash -------------AWM', '45ml', 89, 1, '24-09-20_1600930509.webp', '2020-09-24 16:25:09', '2020-09-24 16:25:09', 'Best to use to protect you and your loved ones from harmful things.', 4.45, 1, 40),
(909, 19, 'Ujala Supreme (Neel)---------AWM', '250 ml', 65, 1, '24-09-20_1600930662.webp', '2020-09-24 16:27:42', '2020-09-24 16:27:42', 'Used to maintain the cleaniness of clothes and make that look bright.', 7.69, 1, 40),
(910, 19, 'Ujala Supreme (Neel)---------AWM', '75 ml', 22, 1, '24-09-20_1600930755.webp', '2020-09-24 16:29:15', '2020-09-24 16:29:15', 'Small pack used in making clothes look brighter.', 4.55, 1, 40),
(911, 37, 'Maida (AWM)', '1 kg', 26, 1, '24-09-20_1600942391.webp', '2020-09-24 19:43:11', '2020-09-24 19:43:11', 'This 100 percent wheat free and natural product is a path breaking blend of tapioca starch, corn flour and other gluten free ingredients. Ideal for making bakery items like breads, biscuits, cakes and other Indian preparations like pooris, samosas and kachoris, this all-purpose flour is sure to surpass its wheat based counterpart.', 0, 1, 43),
(912, 37, 'Everest meat masala ( AWM )', '100g', 72, 1, '24-09-20_1600942574.webp', '2020-09-24 19:46:14', '2020-09-24 19:46:14', 'Everest Meat Masala - A pepper-coriander-chilli based blend that imparts a dark tan and a hot taste to non-veg dishes, especially meat. Since Indians love their meat really spiced up, a fair amount of flavouring spices lend this blend an aromatic chorus.', 10, 1, 38),
(913, 37, 'Everest pani puri masala (AWM )', '50g', 31, 1, '24-09-20_1600942731.webp', '2020-09-24 19:48:51', '2020-09-24 19:48:51', 'The manufacturing facilities of Catch are ISO 22000:2005 certified.', 10, 1, 38),
(914, 37, 'Everest chicken masala (AWM )', '100g', 72, 1, 'images (29)_1600943110.webp', '2020-09-24 19:54:11', '2020-09-25 01:46:44', 'Everest Chicken Masala - In this blend, the flavouring agents marginally predominate the taste elements. Consequently the blend is less steeped in pungency. For chicken curry, this gives the right balance between the spice-elements and other ingredients in the dish. USAGE: Can be used in mildly flavoured non-veg cuisine, particularly those deriving its thickening foundation from tomato and onion.', 10, 1, 38),
(915, 37, 'Everest chhole masala (AWM)', '100g', 63, 1, 'images (30)_1600943314.webp', '2020-09-24 19:57:46', '2020-09-25 01:45:51', 'Tasty and easy to prepare', 10, 1, 38),
(916, 37, 'Everest kitchen king masala (AWM)', '100g', 65, 1, '24-09-20_1600943473.webp', '2020-09-24 20:01:13', '2020-09-24 20:01:13', 'Explore the \'Curry\' experience with this classic blend that gives vegetable curries a lordly taste and a mild, subdued flavour. Being coriander and turmeric based, the blend gives curry an appetising golden hue. It is the recommended blend to prepare India\'s much loved vegetarian dish - Home-bred Cheese in fresh green peas: Mattar Paneer.', 10, 1, 38),
(917, 37, 'Everest garam masala (AWM)', '100g', 78, 1, '24-09-20_1600943639.webp', '2020-09-24 20:03:59', '2020-09-24 20:03:59', 'Description\r\nA select blend of 13 spices go into this grand old universal taste enhancer. Being chilli based, it provides an exotic red gravy to dishes. It is widely used all over India on account of its being a less pungent garam masala. Fennel, Tejpatta (Cinnamon leaves) and Trifala imparts a cooling effect to this blend. Maximum Shelf Life 15 Months', 10, 1, 38),
(918, 37, 'Everest sabji masala (AWM)', '100g', 54, 1, '24-09-20_1600944141.webp', '2020-09-24 20:12:21', '2020-09-24 20:12:21', 'Tasty & easy to prepare.', 10, 1, 38),
(919, 37, 'Everest pav bhaji masala (AWM)', '100g', 66, 1, '24-09-20_1600944309.webp', '2020-09-24 20:15:09', '2020-09-24 20:15:09', 'Tasty & easy to prepare', 10, 1, 38),
(920, 37, 'Everest sambhar masala (AWM)', '100g', 63, 1, '24-09-20_1600944707.webp', '2020-09-24 20:21:47', '2020-09-24 20:21:47', 'Everest Sambhar Masala is one such masala to include the genuine taste of a usual tasty south-Indian sambhar at home.', 10, 1, 38),
(921, 37, 'Everest chaat masala ( AWM )', '100g', 62, 1, '24-09-20_1600944887.webp', '2020-09-24 20:24:47', '2020-09-24 20:24:47', 'Features\r\nIt is a main ingredient in chaat items like pani puri/gol gappa, bhel puri, sev puri, etc\r\nIt adds a tangy taste to recipe\r\nPerfect blend of hand picked spices\r\nRich in taste and aroma\r\nCountry of Origin: India', 10, 1, 38),
(922, 37, 'goldiee meat masala (AWM )', '100g', 72, 1, '24-09-20_1600945052.webp', '2020-09-24 20:27:32', '2020-09-24 20:27:32', 'Tasty and easy to prepare', 15, 1, 38),
(923, 37, 'Goldiee sabji masala (AWM)', '100g', 54, 1, '24-09-20_1600945192.webp', '2020-09-24 20:29:52', '2020-09-24 20:29:52', 'Tasty and easy to prepare', 15, 1, 38),
(924, 37, 'Goldiee black pepper masala (AWM )', '50g', 47, 1, '24-09-20_1600945412.webp', '2020-09-24 20:33:32', '2020-09-24 20:33:32', 'Tasty and easy to prepare', 15, 1, 38),
(925, 37, 'Goldiee chicken masala (AWM)', '50g', 29, 1, '24-09-20_1600945544.webp', '2020-09-24 20:35:44', '2020-09-24 20:35:44', 'Tasty and easy to prepare', 15, 1, 38),
(926, 19, 'Munna Chanachur----------AWM', '450g', 80, 1, '24-09-20_1600963296.webp', '2020-09-25 01:31:36', '2020-09-25 01:31:36', 'Delicious and tasty.You will definitely enjoy this with some other drinking materials.', 0, 1, 39),
(927, 19, 'Bambino vermicelli(Sawai)-----------AWM', '95g', 10, 1, '24-09-20_1600963530.webp', '2020-09-25 01:35:30', '2020-09-25 01:35:30', 'Used as sweet dish and also can be used in evening break.', 10, 1, 43),
(928, 37, 'Haldiram tok jhal mishti (AWM)', '400g', 105, 1, '25-09-20_1601021269.webp', '2020-09-25 17:37:49', '2020-09-25 17:37:49', 'Tasty and so spicy', 7, 1, 39),
(929, 37, 'Haldiram jhal chanachur ( AWM )', '400g', 95, 1, '25-09-20_1601021746.webp', '2020-09-25 17:45:46', '2020-09-25 17:45:46', 'Vegeterian product Suitable for all Ready to eat savoury', 7, 1, 39),
(930, 37, 'Haldiram bhelpuri (AWM )', '200g', 42, 1, '25-09-20_1601021959.webp', '2020-09-25 17:49:19', '2020-09-25 17:49:19', 'bhelpuri is a Sweet and Spicy mix of Indian Spices Sprinkled over Noodles, Puffed Rice, Cornflakes, Nuts and Raisins to give you a perfect Spicy Snack to munch on anytime anywhere. Everytime you chew you will experience different flavours from the Sev, Cornflakes. This Noodles Mix has Zero Cholestrol.\r\n\r\nStorage Instructions: Store in a cool dry place away from direct sunlight. Once opened keep in an airtight container.', 7, 1, 39),
(931, 37, 'Haldiram kashmiri mixture (AWM )', '200g', 70, 1, '25-09-20_1601022166.webp', '2020-09-25 17:52:46', '2020-09-25 17:52:46', 'Haldiram\'s Kashmiri Mixture is combination of various Indian spices and dry fruits.', 7, 1, 39),
(932, 37, 'Haldiram ratlami sev (AWM )', '150g', 30, 1, '25-09-20_1601022333.webp', '2020-09-25 17:55:33', '2020-09-25 17:55:33', 'Extruded snack of bengal gram flour.', 7, 1, 39),
(933, 37, 'Haldiram bhujiya ( AWM )', '400g', 91, 1, '25-09-20_1601022579.webp', '2020-09-25 17:59:39', '2020-09-25 17:59:39', 'Beans flour namkeen called bikaneri bhujia.', 7, 1, 39),
(934, 37, 'Haldiram punjabi tadka (AWM )', '200g +20g(free)', 48, 1, '25-09-20_1601022774.webp', '2020-09-25 18:02:54', '2020-09-25 18:02:54', 'Tasty', 7, 1, 39),
(935, 37, 'Haldiram kashmiri mixture (AWM )', '400g', 138, 1, '25-09-20_1601022972.webp', '2020-09-25 18:06:12', '2020-09-25 18:06:12', 'Haldiram\'s Kashmiri Mixture is combination of various Indian spices and dry fruits.', 7, 1, 39),
(936, 37, 'Haldiram kaju mixture (AWM)', '400g', 148, 1, '25-09-20_1601023176.webp', '2020-09-25 18:09:36', '2020-09-25 18:09:36', 'Masala Kaju is a spicy, and tasty fried savoury snack by Haldiram’s comprising rich cashew nuts deep fried with Haldiram’s original masalas, perfect for chai-time snacking. Munch on these deep-fried cashewnuts at the end of the day to feel refreshed and renewed.', 7, 1, 39),
(937, 37, 'Haldiram gloden mixture (AWM)', '150g', 30, 1, '25-09-20_1601023356.webp', '2020-09-25 18:12:36', '2020-09-25 18:12:36', 'Tasty', 7, 1, 39),
(938, 37, 'Anmol dream lite (AWM )', '120g + 17%', 15, 1, '25-09-20_1601023606.webp', '2020-09-25 18:16:46', '2020-09-25 18:16:46', 'Soft and tasty', 5, 1, 39),
(939, 37, 'Anmol sugar free (AWM)', '84g', 10, 1, '25-09-20_1601024128.webp', '2020-09-25 18:25:28', '2020-09-25 18:25:28', 'Sugar free biscuit', 5, 1, 39),
(940, 37, 'Britania toast tea(prmium bake rusk) (AWM)', '182g', 40, 1, '25-09-20_1601024383.webp', '2020-09-25 18:29:43', '2020-09-25 18:29:43', 'Toast biscuit with tea', 5, 1, 39),
(941, 37, 'Britania nutri choice( digestive high ) (AWM)', '273g', 55, 1, '25-09-20_1601024600.webp', '2020-09-25 18:33:20', '2020-09-25 18:33:20', 'Britannias digestive biscuit is packed with multi-grain goodness that also provides your body with essential dietary fibres. Britannia nutri choice high fibre digestive biscuit is naturally finished out of high value ingredients that even assist you in digesting.', 5, 1, 39),
(942, 37, 'Britania vita marie glod (AWM )', '250g', 40, 1, '25-09-20_1601024770.webp', '2020-09-25 18:36:10', '2020-09-25 18:36:10', 'Britannia Vita Marie Gold is a low fat and zero cholesterol biscuit, that keeps you fit and strong. Milk proteins and Vitamins are included in the ingredients. These biscuits are made of wholesome fibers which enhance the protein in your body. Take a step forward to a healthier life and switch to Britannia Vita Marie Gold today.', 5, 1, 39),
(943, 37, 'Britania good day (AWM)', '200g + 50g', 30, 1, '25-09-20_1601024931.webp', '2020-09-25 18:38:51', '2020-09-25 18:38:51', 'Britannia Industries Limited is India\'s most trusted food brand with a diverse range of portfolio of products in cakes, biscuits, bread and dairy categories.', 5, 1, 39),
(944, 37, 'Britania treat jim jam (AWM)', '150g', 35, 1, '25-09-20_1601025071.webp', '2020-09-25 18:41:11', '2020-09-25 18:41:11', 'Britannia Industries Limited is India\'s most trusted food brand with a diverse range of portfolio of products in cakes, biscuits, bread and dairy categories.', 5, 1, 39),
(945, 37, 'Britania 50-50 jeera (AWM)', '80g', 10, 1, '25-09-20_1601025225.webp', '2020-09-25 18:43:45', '2020-09-25 18:43:45', 'Britannia Industries Limited is India\'s most trusted food brand with a diverse range of portfolio of products in cakes, biscuits, bread and dairy categories.', 5, 1, 39),
(946, 37, 'Britania milk bikis  (AWM)', '200g', 40, 1, '25-09-20_1601025379.webp', '2020-09-25 18:46:19', '2020-09-25 18:46:19', 'The Britannia Milk Bikis Biscuits 200g is ideal for the children and it is rich in nutrients that are good for their health. This biscuit is made with essential vitamins, iodine and iron.', 5, 1, 39),
(950, 32, 'kalyan oil', '1', 625, 1, '26-09-20_1601101927.webp', '2020-09-26 16:02:07', '2020-09-26 16:02:07', '5L', 0, 1, 43),
(951, 32, 'kalyan oil', '1', 255, 1, '26-09-20_1601101967.webp', '2020-09-26 16:02:47', '2020-09-26 16:02:47', '2L', 0, 1, 43),
(952, 19, 'Suraj hand made papad---------AWM', '500g', 100, 1, '26-09-20_1601102770.webp', '2020-09-26 16:16:10', '2020-09-26 16:16:10', 'Good quality and hand made which make it more delicious. It can be used in various ways while eating.', 0, 1, 43),
(953, 32, 'Dhara kachi ghani', '1', 640, 1, '26-09-20_1601102980.webp', '2020-09-26 16:19:40', '2020-09-26 16:19:40', '5L', 0, 1, 43),
(954, 32, 'Dhara kachi ghani', '1', 128, 1, '26-09-20_1601103086.webp', '2020-09-26 16:21:26', '2020-09-26 16:21:26', '1L', 0, 1, 43),
(955, 32, 'Fortune sunflower oil', '1', 120, 1, '26-09-20_1601103134.webp', '2020-09-26 16:22:14', '2020-09-26 16:22:14', '1L', 0, 1, 43),
(956, 19, 'Kaka Jeera---------AWM', '500g', 165, 1, '26-09-20_1601103153.webp', '2020-09-26 16:22:33', '2020-09-26 16:37:19', 'Jeera is used to enhance the taste of different dishes.', 39.39, 1, 38),
(957, 32, 'Fortune soyabean refined', '1', 115, 1, '26-09-20_1601103179.webp', '2020-09-26 16:22:59', '2020-11-02 04:23:39', '1L', 0, 1, 43),
(958, 19, 'Kaka Jeera---------AWM', '250g', 90, 1, '26-09-20_1601103771.webp', '2020-09-26 16:32:51', '2020-09-26 16:32:51', 'Jeera is used to enhance the taste of different dishes.', 44.44, 1, 38),
(959, 19, 'Kaka Jeera---------AWM', '100g', 40, 1, '26-09-20_1601104142.webp', '2020-09-26 16:39:02', '2020-09-26 16:39:02', 'Jeera is used to enhance the taste of different dishes.', 37.5, 1, 38),
(960, 19, 'Kaka Jeera---------AWM', '50g', 27, 1, '26-09-20_1601104205.webp', '2020-09-26 16:40:05', '2020-09-26 16:40:05', 'Jeera is used to enhance the taste of different dishes.', 55.56, 1, 38),
(961, 19, 'Haldiram Bhujiya-------AWM', '1kg', 225, 1, '26-09-20_1601104399.webp', '2020-09-26 16:43:19', '2020-09-26 16:43:19', 'This makes your evening time delicious.', 7, 1, 39),
(962, 19, 'Haldiram Navrattan---------AWM', '1kg', 205, 1, '26-09-20_1601104615.webp', '2020-09-26 16:46:55', '2020-09-26 16:46:55', 'This makes your evening time delicious.\r\n200g(free)', 7, 1, 39),
(963, 19, 'Haldiram khatta meetha---------AWM', '400g', 83, 1, '26-09-20_1601104724.webp', '2020-09-26 16:48:44', '2020-09-26 16:48:44', 'This makes your evening time delicious.\r\n40g(free)', 7, 1, 39),
(964, 19, 'Haldiram Navrattan---------AWM', '400g', 83, 1, '26-09-20_1601104791.webp', '2020-09-26 16:49:51', '2020-09-26 16:49:51', 'This makes your evening time delicious.\r\n40g(free)', 7, 1, 39),
(965, 19, 'Haldiram All In One--------AWM', '400g', 91, 1, '26-09-20_1601104883.webp', '2020-09-26 16:51:23', '2020-09-26 16:51:23', 'This makes your evening time delicious.', 7, 1, 39),
(966, 32, 'Patanjali mustard oil', '1', 715, 1, '26-09-20_1601119352.webp', '2020-09-26 20:52:32', '2020-11-02 03:41:35', '5L', 0, 1, 48),
(967, 32, 'Patanjali mustard oil', '1', 140, 1, '26-09-20_1601132845.webp', '2020-09-27 00:37:25', '2020-10-29 16:05:20', '1L', 0, 1, 48),
(968, 32, 'Dhara refined soyabean oil', '1', 105, 1, '26-09-20_1601132961.webp', '2020-09-27 00:39:21', '2020-09-27 00:39:21', '1L', 0, 1, 43),
(969, 32, 'Ankuar glod salt', '1', 18, 1, '26-09-20_1601133016.webp', '2020-09-27 00:40:16', '2020-09-27 00:40:16', '1KG', 0, 1, 43),
(970, 32, 'Aashirvad Salt', '1', 15, 1, '26-09-20_1601133069.webp', '2020-09-27 00:41:09', '2020-09-27 00:41:09', '1KG', 0, 1, 43),
(971, 32, 'Maggi(2-minute noddles)', '1', 45, 1, '26-09-20_1601133179.webp', '2020-09-27 00:42:59', '2020-09-27 00:42:59', '280g', 5, 1, 43),
(972, 32, 'Maggi(2-minute noddles)', '1', 23, 1, '26-09-20_1601133254.webp', '2020-09-27 00:44:14', '2020-09-27 00:44:14', '140g', 5, 1, 43),
(973, 32, 'Maggi(2-minute noddles)', '1', 12, 1, '26-09-20_1601133302.webp', '2020-09-27 00:45:02', '2020-09-27 00:45:02', '70g', 5, 1, 43),
(974, 32, 'fortune (soya chunks)box', '1', 45, 1, '26-09-20_1601134315.webp', '2020-09-27 01:01:55', '2020-09-27 01:01:55', '200g', 5, 1, 43),
(975, 32, 'Anup sattu', '1', 60, 1, '26-09-20_1601134367.webp', '2020-09-27 01:02:47', '2020-09-27 01:02:47', '500g', 0, 1, 43),
(976, 32, 'fortune(besan)', '1', 50, 1, '26-09-20_1601134416.webp', '2020-09-27 01:03:36', '2020-09-27 01:03:36', '500g', 0, 1, 43),
(977, 32, 'nutrela (soya chunk) packet', '1', 43, 1, '26-09-20_1601134454.webp', '2020-09-27 01:04:14', '2020-09-27 01:04:14', '300g', 0, 1, 43),
(978, 32, 'Aashirvad shudh chakki aata', '1', 175, 1, '26-09-20_1601134503.webp', '2020-09-27 01:05:03', '2020-09-27 01:05:03', '5kg', 0, 1, 43),
(979, 32, 'fortune chakki fresh aata', '1', 175, 1, '26-09-20_1601134592.webp', '2020-09-27 01:06:32', '2020-09-27 01:06:32', '5kg', 0, 1, 43),
(980, 32, 'Nestle cerelac (wheat-rice mixed fruit)', '1', 242, 1, '26-09-20_1601134657.webp', '2020-09-27 01:07:37', '2020-11-02 04:11:09', '300g(10 To 12 months)', 0, 1, 43),
(981, 32, 'Nestle cerelac(multigrain&fruit)', '1', 245, 1, '26-09-20_1601134717.webp', '2020-09-27 01:08:37', '2020-11-02 04:23:58', '300g(12 To 24 months)', 0, 1, 43),
(982, 32, 'Nestle cerelac (wheat apple cherry)', '1', 220, 1, '26-09-20_1601134784.webp', '2020-09-27 01:09:44', '2020-11-02 04:14:15', '300g(8 To 12 months)', 0, 1, 43),
(983, 32, 'Nestle cerelac(wheat apple)', '1', 185, 1, '26-09-20_1601135103.webp', '2020-09-27 01:15:03', '2020-11-02 04:12:00', '300g(6 To 12 months)', 0, 1, 43),
(984, 32, 'Nestle ceregrow (multigrain cereal with milk & fruits)', '1', 272, 1, '26-09-20_1601135280.webp', '2020-09-27 01:18:00', '2020-11-02 04:13:35', '300g(2 to 5 years)', 0, 1, 43),
(985, 20, 'Boost 3X more stamina(Awm)', '1', 195, 1, '26-09-20_1601140079.webp', '2020-09-27 02:37:59', '2020-09-27 02:37:59', '500gm', 5, 1, 41),
(986, 20, 'cadbury bournita (Awm)', '1Kg', 410, 1, '26-09-20_1601140913.webp', '2020-09-27 02:51:53', '2020-09-27 02:51:53', '1Kg', 5, 1, 41),
(987, 20, 'Cadbury bournvita lil champs', '500gm', 283, 1, '26-09-20_1601141156.webp', '2020-09-27 02:55:56', '2020-09-27 02:55:56', '500gm', 5, 1, 41),
(988, 20, 'Complan kesar badam flaour refill(Awm)', '500gm', 315, 1, '26-09-20_1601141304.webp', '2020-09-27 02:58:24', '2020-09-27 02:58:24', '500gm', 5, 1, 41),
(989, 20, 'Mother\'s horlicks vanila flavour (Awm)', '500gm', 525, 1, '26-09-20_1601143078.webp', '2020-09-27 03:27:58', '2020-09-27 03:27:58', '500gm', 5, 1, 41),
(990, 20, 'Junior horlicks vanilla flavour(Awm)', '500gm', 230, 1, '26-09-20_1601143428.webp', '2020-09-27 03:33:48', '2020-09-27 03:33:48', '500gm', 5, 1, 41),
(991, 20, 'Lite horlicks badam flavour refill(Awm)', '450gm', 288, 1, '26-09-20_1601143614.webp', '2020-09-27 03:36:54', '2020-09-27 03:36:54', '450gm', 5, 1, 41),
(992, 20, 'Lite horlicks regular malt (Awm)', '450gm', 298, 1, '26-09-20_1601143744.webp', '2020-09-27 03:39:04', '2020-09-27 03:39:04', '450gm', 5, 1, 41),
(993, 20, 'Women\'s horicks carmel flavour(Awm)', '500gm', 299, 1, '26-09-20_1601143991.webp', '2020-09-27 03:43:11', '2020-09-27 03:43:11', '500gm', 5, 1, 41),
(994, 20, 'Britania 50-50 time pass(Awm)', '150gm', 20, 1, '26-09-20_1601144229.webp', '2020-09-27 03:47:09', '2020-09-27 03:47:09', '150gm', 5, 1, 39),
(995, 20, 'Britania 50-50sweet & salty(Awm)', '200gm', 20, 1, '26-09-20_1601144358.webp', '2020-09-27 03:49:18', '2020-09-27 03:49:18', '200gm', 5, 1, 41),
(996, 20, 'Britania 50-50 maska chaska (Awm)', '120gm', 30, 1, '26-09-20_1601144836.webp', '2020-09-27 03:57:16', '2020-09-27 03:57:16', '120gm', 5, 1, 39),
(997, 20, 'Britania good day wonderfulls(Awm)', '75gm', 15, 1, '27-09-20_1601145046.webp', '2020-09-27 04:00:46', '2020-09-27 04:00:46', '75gm', 5, 1, 39),
(998, 20, 'Britania top 50-50(Awm)', '200gm', 20, 1, '27-09-20_1601145197.webp', '2020-09-27 04:03:17', '2020-09-27 04:03:17', '200gm', 5, 1, 39),
(999, 20, 'Bisk-farm sugar free marie(Awm)', '300gm', 40, 1, '27-09-20_1601145750.webp', '2020-09-27 04:12:30', '2020-09-27 04:12:30', '300gm', 5, 1, 39),
(1000, 20, 'Bisk-farm half half(Awm)', '95gm', 10, 1, '27-09-20_1601146233.webp', '2020-09-27 04:20:33', '2020-09-27 04:20:33', '95gm', 5, 1, 39),
(1001, 20, 'Bisk-farm cream cracker sugar free(Awm)', '200gm', 25, 1, '27-09-20_1601146685.webp', '2020-09-27 04:28:05', '2020-09-27 04:28:05', '200gm', 5, 1, 39),
(1002, 20, 'Britania cake choco chill egg(Awm)', '120gm', 30, 1, '27-09-20_1601147142.webp', '2020-09-27 04:35:42', '2020-09-27 04:35:42', '120gm', 5, 1, 39),
(1003, 20, 'Britania cake fruit fun(Awm)', '90gm', 20, 1, '27-09-20_1601147651.webp', '2020-09-27 04:44:11', '2020-09-27 04:44:11', '90gm', 5, 1, 39),
(1004, 20, 'Britania cake fruit fun (Awm)', '120gm', 30, 1, '27-09-20_1601147817.webp', '2020-09-27 04:46:57', '2020-09-27 04:46:57', '120gm', 5, 1, 39),
(1005, 20, 'Horlicks classic malt(Awm)', '1Kg', 454, 1, '27-09-20_1601148966.webp', '2020-09-27 05:06:06', '2020-09-27 05:06:06', '1kg', 5, 1, 41),
(1006, 20, 'Horlicks classic malt(Awm)', '500gm', 242, 1, '27-09-20_1601149193.webp', '2020-09-27 05:09:53', '2020-09-27 05:09:53', '500gm', 5, 1, 41),
(1007, 20, 'Horlicks classic malt refill(Awm)', '500gm', 190, 1, '27-09-20_1601149287.webp', '2020-09-27 05:11:27', '2020-09-27 05:11:27', '500gm', 5, 1, 41),
(1008, 20, 'Horlicks classic malt refill(Awm)', '1Kg', 428, 1, '27-09-20_1601149394.webp', '2020-09-27 05:13:14', '2020-09-27 05:13:14', '1Kg', 5, 1, 41),
(1009, 32, 'goldiee cumin powder', '1', 90, 1, '27-09-20_1601179294.webp', '2020-09-27 13:31:34', '2020-09-27 13:32:38', '200g', 15, 1, 38),
(1010, 49, 'sarason ka beej yellow (AWM)', '1Kg', 100, 1, '27-09-20_1601209551.jpg', '2020-09-27 21:55:51', '2020-09-27 21:55:51', '•100 per kg', 0, 1, 43),
(1011, 49, 'sarason ka beej black (AWM)', '1Kg', 80, 1, '27-09-20_1601209615.jpg', '2020-09-27 21:56:55', '2020-09-27 21:56:55', '• ₹100/per kg', 0, 1, 43),
(1012, 49, 'Chana dal (AWM)', '1Kg', 70, 1, '27-09-20_1601209908.jpg', '2020-09-27 22:01:48', '2020-09-27 22:01:48', '•This is a Vegetarian product\r\n•Easily digestible and extremely healthy for diabetics', 2.8, 1, 43),
(1013, 49, 'Arhar dal (AWM)', '1Kg', 90, 1, '27-09-20_1601210403.jpg', '2020-09-27 22:10:03', '2020-09-27 22:10:03', '•Dals are a rich source of protein .', 0, 1, 43),
(1014, 49, 'masoor dal(gota) (AWM)', '1Kg', 75, 1, '27-09-20_1601210647.webp', '2020-09-27 22:14:07', '2020-09-27 22:14:07', '•Ideal for making preparations such as sabut masoor ki dal', 0, 1, 43),
(1015, 49, 'masoor dal(diamond) (AWM)', '1Kg', 85, 1, '02-10-20_1601631955.jpg', '2020-10-02 19:15:55', '2020-10-02 19:15:55', '•85/kg', 0, 1, 43),
(1016, 49, 'masoor dal(tuta) (AWM)', '1Kg', 75, 1, '02-10-20_1601632115.jpg', '2020-10-02 19:18:35', '2020-10-02 19:18:35', '•Masoor dal is probably the most commonly used Dal in India.', 0, 1, 43),
(1017, 49, 'moong dal (AWM)', '1Kg', 100, 1, '02-10-20_1601632266.jpg', '2020-10-02 19:21:06', '2020-10-02 19:21:06', '• Moong dal is very easy to digest and absorb the flavour of seasonings and spices very well', 0, 1, 43),
(1018, 49, 'matar (green) (AWM)', '1Kg', 100, 1, '02-10-20_1601632451.jpg', '2020-10-02 19:24:11', '2020-10-02 19:24:11', '•This is a Vegetarian product.\r\n•Whole Green Peas\r\n•Contain - 1 Kg\r\n•Multiple use', 0, 1, 43),
(1019, 49, 'matar(yellow) ( AWM)', '1Kg', 80, 1, '02-10-20_1601632555.jpg', '2020-10-02 19:25:55', '2020-10-02 19:25:55', '•Whole yellow Peas\r\n•Contain - 1 Kg\r\n•Multiple use', 0, 1, 43),
(1020, 49, 'Kabuli chana (AWM)', '1Kg', 75, 1, '02-10-20_1601632702.webp', '2020-10-02 19:28:22', '2020-10-02 19:28:22', '•Kabuli Chole / Chana / White Chana. Eat Natural Live Healthy.\r\n•Daily Need Products For A Healthy And Energetic Life.\r\n•Kabuli Chana contain significant amounts of fiber, which helps lower the total amount of cholesterol in the blood, thereby decreasing the risk of heart disease.', 0, 1, 43),
(1021, 49, 'Chana  (AWM)', '1Kg', 64, 1, '02-10-20_1601632995.webp', '2020-10-02 19:33:15', '2020-10-02 19:33:15', '•This is a Vegetarian product', 0, 1, 43),
(1022, 49, 'moongaphalee (AWM)', '1Kg', 110, 1, '02-10-20_1601633230.webp', '2020-10-02 19:37:10', '2020-10-02 19:37:10', '•Contains health benefiting nutrients, minerals, antioxidants and vitamins that are essential for optimum health\r\n•Helps lower ldl or \"bad cholesterol\" and increases hdl or \"good cholesterol\" level in the blood', 0, 1, 43),
(1023, 49, 'Ajwain  (AWM)', '1Kg', 200, 1, '02-10-20_1601633398.webp', '2020-10-02 19:39:58', '2020-10-02 19:39:58', 'This is a Vegetarian product', 0, 1, 43),
(1024, 49, 'mangraila (AWM)', '1Kg', 300, 1, '02-10-20_1601633740.webp', '2020-10-02 19:45:40', '2020-10-02 19:45:40', '300/KG', 0, 1, 38),
(1025, 49, 'maithee (AWM)', '1Kg', 100, 1, '02-10-20_1601633861.webp', '2020-10-02 19:47:41', '2020-10-02 19:47:41', '100/KG', 0, 1, 38),
(1026, 49, 'tejpatta (AWM)', '1Kg', 80, 1, '02-10-20_1601633940.webp', '2020-10-02 19:49:00', '2020-10-02 19:49:00', '80/KG', 0, 1, 38),
(1027, 49, 'sookha lal mirchi (AWM)', '1Kg', 160, 1, '02-10-20_1601634048.webp', '2020-10-02 19:50:48', '2020-10-02 19:50:48', '160/KG', 0, 1, 38),
(1028, 49, 'Chini (AWM)', '1Kg', 38, 1, '02-10-20_1601636749.webp', '2020-10-02 20:35:49', '2020-10-02 20:35:49', '•This is a Vegetarian product', 0, 1, 43),
(1029, 49, 'Ajwain  (AWM)', '1Kg', 200, 1, '02-10-20_1601636806.webp', '2020-10-02 20:36:46', '2020-10-02 20:36:46', '•This is a Vegetarian product', 0, 1, 38),
(1030, 49, 'Gadee  (सूखा नारियल) (AWM)', '1Kg', 250, 1, '02-10-20_1601637073.jpg', '2020-10-02 20:41:13', '2020-10-02 20:41:13', '•This is a Vegetarian product', 0, 1, 43),
(1031, 49, 'Kala Gol marich (AWM)', '100gm', 60, 1, '02-10-20_1601637209.webp', '2020-10-02 20:43:29', '2020-10-02 20:43:29', '60/100gm', 0, 1, 38),
(1032, 18, 'Bikano Gulab jamun (ANO)', '1KG', 210, 1, '06-10-20_1602000848.webp', '2020-10-07 01:44:08', '2020-10-07 01:44:08', 'Soft delicious berry sized balls made of milk solids, flour & a leavening agent. These are soaked in rose flavored sugar syrup & enjoyed. The word “Gulab” translates to rose in hindi & “jamun” to berry. So gulab jamun are berry sized balls dunked in rose flavored sugar syrup.', 9.52, 1, 47),
(1033, 18, 'Bikano Soan Papdi (ANO)', '300g', 78, 1, '06-10-20_1602001043.webp', '2020-10-07 01:47:23', '2020-10-07 01:47:23', 'Soan papdi is a popular Indian dessert. It is usually cube-shaped or served as flakes, and has a crisp and flaky texture. It was traditionally sold loose in a rolled paper cone, but modern industrial production has led it to be sold in tightly formed cubes', 12.82, 1, 47),
(1034, 18, 'Bikano Soan Papdi (ANO)', '500g', 140, 1, '06-10-20_1602001220.webp', '2020-10-07 01:50:20', '2020-10-07 01:50:20', 'Soan papdi is a popular Indian dessert. It is usually cube-shaped or served as flakes, and has a crisp and flaky texture. It was traditionally sold loose in a rolled paper cone, but modern industrial production has led it to be sold in tightly formed cubes', 10.71, 1, 47),
(1035, 18, 'Bikano Besan laddu (ANO)', '500g', 160, 1, 'IMG_20201101_231957_1604253194.webp', '2020-10-07 01:58:52', '2020-11-02 04:23:14', 'Delicious besan laddu', 9.38, 1, 47),
(1036, 18, 'Bikano rasgulla', '1.25kg', 210, 1, '06-10-20_1602001975.webp', '2020-10-07 02:02:55', '2020-10-07 02:02:55', 'Spongy Rasgulla is one of the popular Indian sweet recipes that is made by curdling milk. Then separating the chenna (paneer or indian cottage cheese) and whey by draining in a muslin cloth. The drained chenna is kneaded and then rolled to balls. These are cooked in sugar syrup till they turn light and spongy.', 9.52, 1, 47),
(1037, 18, 'Bikano dry Petha (ANO)', '400g', 90, 1, '06-10-20_1602002124.webp', '2020-10-07 02:05:24', '2020-10-07 02:05:24', 'Dry petha is a translucent and soft candy made from pumpkin pieces dipped in sugar syrup.', 5.56, 1, 47),
(1038, 18, 'Bikano bikanari bhujiya', '200g+50g', 48, 1, '06-10-20_1602002351.webp', '2020-10-07 02:09:11', '2020-10-07 14:43:39', 'Bikano bikaneri bhujia is a popular crispy snack prepared by using moth beans and besan and spices, originating from Bikaner, a city in the western state of Rajasthan in India. Light yellow in colour,', 16.67, 1, 47),
(1039, 18, 'Bikano navratan mixture', '200g+50g', 48, 1, '06-10-20_1602002938.webp', '2020-10-07 02:18:58', '2020-10-07 02:18:58', 'Bikano Navratan Mixture offers you an appetizing blend of dried nuts, deep-fried beaten rice and the exotic flavours of classic Indian spices.', 16.67, 1, 47),
(1041, 20, 'Dove Shampoo (PRB)', '80ml', 62, 1, '07-10-20_1602023456.webp', '2020-10-07 08:00:56', '2020-10-07 08:17:06', '80ml', 11.29, 2, 21),
(1042, 20, 'Head & Shoulder Shampoo (Prb)', '180ml', 170, 1, '07-10-20_1602023553.webp', '2020-10-07 08:02:33', '2020-10-07 08:02:33', '180ml', 12, 2, 21),
(1043, 20, 'Head & Shoulder Shampoo(PRB)', '72ml', 77, 1, '07-10-20_1602023622.webp', '2020-10-07 08:03:42', '2020-10-07 08:03:42', '72ml', 12, 2, 21),
(1044, 20, 'Clinic Plus Shampoo(PRB)', '175ml', 99, 1, '07-10-20_1602023742.webp', '2020-10-07 08:05:42', '2020-10-07 08:05:42', '175ml', 15.15, 2, 21),
(1045, 20, 'Clinic Plus Shampoo(PRB)', '80ml', 44, 1, '07-10-20_1602023831.webp', '2020-10-07 08:07:11', '2020-10-07 08:07:11', '80ml', 11.36, 2, 21),
(1046, 20, 'Clinic Plus Shampoo(PRB)', '30ml', 10, 1, '07-10-20_1602023882.webp', '2020-10-07 08:08:02', '2020-10-07 08:08:02', '30ml', 0, 2, 21),
(1047, 20, 'Sunrise Tadka Masala (PRB)', '1 pack', 5, 1, '07-10-20_1602024008.webp', '2020-10-07 08:10:08', '2020-10-07 08:10:08', 'Tadka masala', 0, 2, 20),
(1048, 20, 'Sunrise Chicken Masala(PRB)', '1 pack', 5, 1, '07-10-20_1602024123.webp', '2020-10-07 08:12:03', '2020-10-07 08:12:03', 'Chicken masala', 0, 2, 20),
(1049, 20, 'Sunrise meat Masala (PRB)', '1 pack', 5, 1, '07-10-20_1602024202.webp', '2020-10-07 08:13:22', '2020-10-07 08:13:22', 'Mutton Masala', 0, 2, 20),
(1050, 20, 'Colgate (PRB)', '200gm', 95, 1, '07-10-20_1602024357.webp', '2020-10-07 08:15:57', '2020-10-07 08:15:57', '200gm', 15.79, 2, 20),
(1051, 37, 'Atta (PRB)', '1 kg', 26, 1, '07-10-20_1602044690.webp', '2020-10-07 13:54:50', '2020-10-07 13:54:50', 'Wheat flour is rich in catalytic elements, mineral salts, calcium, magnesium,  potassium, sulfur, chlorine, arsenic,  silicon, manganese, zinc, iodide, copper, vitamin b and vitamin e.', 11.54, 2, 43),
(1052, 37, 'Shyam Atta (PRB)', '5kg', 150, 1, '07-10-20_1602045004.webp', '2020-10-07 14:00:04', '2020-10-07 14:00:04', 'Wheat flour is rich in catalytic elements, mineral salts, calcium, magnesium,  potassium, sulfur, chlorine, arsenic,  silicon, manganese, zinc, iodide, copper, vitamin b and vitamin e.', 15.33, 2, 43),
(1053, 37, 'Shyam Atta (PRB)', '25kg', 650, 1, '07-10-20_1602045199.webp', '2020-10-07 14:03:19', '2020-10-07 14:03:19', 'Wheat flour is rich in catalytic elements, mineral salts, calcium, magnesium,  potassium, sulfur, chlorine, arsenic,  silicon, manganese, zinc, iodide, copper, vitamin b and vitamin e.', 13.85, 2, 43),
(1054, 37, 'Aashirvaad Atta (PRB)', '25kg', 1230, 1, '07-10-20_1602045418.webp', '2020-10-07 14:06:58', '2020-10-07 14:06:58', 'From the stable of India\'s most trusted atta brand comes a new variety. This all new variant is designed to provide nourishment for people of all ages and is an integrated mix of six different grains, wheat, soya, channa, oat, maize and psyllium husk which gives a healthy option for the consumers. Aashirvaad atta with multigrain is an excellent source of vitamins which are vital in strengthening immunity and extra protein content to improve body strength. The extra fibre makes your food easier to digest, low content of saturated fat keeps your heart smiling. And above all, it still retains the same great taste.', 17.07, 2, 43),
(1055, 37, 'Aashirvaad Atta (PRB)', '5kg', 205, 1, '07-10-20_1602045553.webp', '2020-10-07 14:09:13', '2020-10-07 14:09:13', 'From the stable of India\'s most trusted atta brand comes a new variety. This all new variant is designed to provide nourishment for people of all ages and is an integrated mix of six different grains, wheat, soya, channa, oat, maize and psyllium husk which gives a healthy option for the consumers. Aashirvaad atta with multigrain is an excellent source of vitamins which are vital in strengthening immunity and extra protein content to improve body strength. The extra fibre makes your food easier to digest, low content of saturated fat keeps your heart smiling. And above all, it still retains the same great taste.', 17.07, 2, 43),
(1056, 37, 'Maida (PRB)', '1kg', 25, 1, '07-10-20_1602045837.webp', '2020-10-07 14:13:57', '2020-10-07 14:13:57', 'Maida lends itself not only to Indian cooking, which includes fried dishes and naan but also to baking delicious international desserts, pastries and more. Its gluten content acts as the real workhorse to hold the batter of your favourite dishes. Not only does it affect the volume but also the texture and appearance of the dish.', 12, 2, 43),
(1057, 37, 'Dhara Mustard Oil (PRB)', '1l', 150, 1, '07-10-20_1602046105.webp', '2020-10-07 14:18:25', '2020-10-07 14:18:25', 'Dhara Mustard Oil known for its sharp taste and aroma Jhanjh is a good source of monounsaturated fatty acid with Natural Omega 3 or Alfa Linolenic Acid. Omega 3 is one of the Essential Fatty Acids i.e. Efa which cannot be synthesized by the human body, and must, therefore, be consumed from external sources.', 20, 2, 43),
(1058, 37, 'Dhara Mustard Oil (PRB)', '5L', 750, 1, '07-10-20_1602046255.webp', '2020-10-07 14:20:55', '2020-10-07 14:20:55', 'Dhara Mustard Oil known for its sharp taste and aroma Jhanjh is a good source of monounsaturated fatty acid with Natural Omega 3 or Alfa Linolenic Acid. Omega 3 is one of the Essential Fatty Acids i.e. Efa which cannot be synthesized by the human body, and must, therefore, be consumed from external sources.', 16.67, 2, 43),
(1059, 37, 'Fortune Refined soyabean Oil (PRB)', '1 L', 142, 1, '07-10-20_1602046991.webp', '2020-10-07 14:33:11', '2020-10-07 14:33:11', 'Fortune Pure refined soyabean Oil Pouch, 1L', 9.86, 2, 43),
(1060, 37, 'Best Choice Refined soyabean Oil (PRB)', '1 L', 130, 1, '07-10-20_1602047334.webp', '2020-10-07 14:38:54', '2020-10-07 14:38:54', 'Best choice soyabean oil 1L pouch', 33.08, 2, 43),
(1061, 37, 'Best Choice Refined soyabean Oil', '0.5 L', 50, 1, '07-10-20_1602047469.webp', '2020-10-07 14:41:09', '2020-10-07 14:41:09', 'Best choice soyabean oil half litre', 10, 2, 43),
(1062, 37, 'Fortune kachi Ghani Mustard Oil (PRB)', '5 L', 929, 1, '07-10-20_1602047630.webp', '2020-10-07 14:43:50', '2020-10-07 14:43:50', 'Made from the first press of mustard in the traditional way of slowly crushing the best mustard seeds in a temperature-controlled environment to retain its pungency and natural properties Its high pungency level enhances the taste of the food and helps stimulate your appetite. Also helps in keeping pickles fresh for a longer duration while retaining their traditional flavour. Maximum Shelf Life 12 Months', 21.53, 2, 43),
(1063, 37, 'Fortune kachi Ghani Mustard Oil (PRB)', '1 L', 171, 1, '07-10-20_1602047740.webp', '2020-10-07 14:45:40', '2020-10-07 14:45:40', 'Made from the first press of mustard in the traditional way of slowly crushing the best mustard seeds in a temperature-controlled environment to retain its pungency and natural properties Its high pungency level enhances the taste of the food and helps stimulate your appetite. Also helps in keeping pickles fresh for a longer duration while retaining their traditional flavour. Maximum Shelf Life 12 Months', 12.87, 2, 43),
(1064, 37, 'Dhara Mustard Oil Kachi Ghani  (Bottle) (PRB)', '1 L', 160, 1, '07-10-20_1602048164.webp', '2020-10-07 14:52:44', '2020-10-07 14:52:44', 'Made from the first press of mustard in the traditional way of slowly crushing the best mustard seeds in a temperature-controlled environment to retain its pungency and natural properties Its high pungency level enhances the taste of the food and helps stimulate your appetite. Also helps in keeping pickles fresh for a longer duration while retaining their traditional flavour. Maximum Shelf Life 12 Months', 10.62, 2, 43),
(1065, 37, 'Jac Olivol Body Oil', '100 ml', 63, 1, '07-10-20_1602048525.webp', '2020-10-07 14:58:45', '2020-10-07 14:58:45', 'Pack Of - 1, Quantity - 100 ml, Container Type – Bottle, Flavour - Sandalwood, Ideal For - Adult, Product Information - Jac for a soft, smooth, ...', 30.16, 2, 43),
(1066, 37, 'Nihar oil (PRB)', '100 ml', 40, 1, '07-10-20_1602048704.webp', '2020-10-07 15:01:44', '2020-10-07 15:01:44', 'Nihar is the No. 1 hair oil in the country. Our belief system can be summarized in four simple words “Look Good, Do Good” and we continuously strive to be good for you and do good for those around us.', 12.5, 2, 43),
(1067, 37, 'Parachute Coconut Oil (PRB)', '100 ml', 39, 1, '07-10-20_1602048861.webp', '2020-10-07 15:04:21', '2020-10-07 15:04:21', '\"Parachute Coconut oil- India’s No.1 coconut oil contains only the goodness of 100% pure coconut oil. It is made from naturally sun-dried coconuts sourced from the finest farms of our country. The oil is extracted from the nuts through a meticulous hands free process. It goes through a 5 stage purification process and as many as 27 quality tests are performed on the oil so that each bottle that reaches you is 100% pure- EVERY SINGLE TIME. A tamper proof seal ensures that the rich aroma of raw coconuts is preserved for a long time. It contains no added chemicals, scent, additives or preservatives and lasts fresh & safe for up to 18 months. It is licensed by FSSAI as an edible grade coconut oil. All this ensures that every bottle of coconut oil adheres to the Parachute promise of being 100% safe and 100% pure. Parachute coconut oil is now available in convenient sizes of 1 Litre and 600ml packs. Parachute Coconut Oil comes from the house of Marico. Marico sells more than 1 billion packs of coconut oil every year.\"', 10.62, 2, 43),
(1068, 37, 'Parachute Coconut Oil (PRB)', '200 ml', 62, 1, '07-10-20_1602048954.webp', '2020-10-07 15:05:54', '2020-10-07 15:05:54', 'Parachute Coconut oil- India’s No.1 coconut oil contains only the goodness of 100% pure coconut oil. It is made from naturally sun-dried coconuts sourced from the finest farms of our country. The oil is extracted from the nuts through a meticulous hands free process. It goes through a 5 stage purification process and as many as 27 quality tests are performed on the oil so that each bottle that reaches you is 100% pure- EVERY SINGLE TIME. A tamper proof seal ensures that the rich aroma of raw coconuts is preserved for a long time. It contains no added chemicals, scent, additives or preservatives and lasts fresh & safe for up to 18 months. It is licensed by FSSAI as an edible grade coconut oil. All this ensures that every bottle of coconut oil adheres to the Parachute promise of being 100% safe and 100% pure. Parachute coconut oil is now available in convenient sizes of 1 Litre and 600ml packs. Parachute Coconut Oil comes from the house of Marico. Marico sells more than 1 billion packs of coconut oil every year.\"', 12.9, 2, 43),
(1069, 37, 'Parachute Coconut Oil (PRB)', '500 ml', 199, 1, '07-10-20_1602049111.webp', '2020-10-07 15:08:31', '2020-10-07 15:08:31', 'Parachute Coconut oil- India’s No.1 coconut oil contains only the goodness of 100% pure coconut oil. It is made from naturally sun-dried coconuts sourced from the finest farms of our country. The oil is extracted from the nuts through a meticulous hands free process. It goes through a 5 stage purification process and as many as 27 quality tests are performed on the oil so that each bottle that reaches you is 100% pure- EVERY SINGLE TIME. A tamper proof seal ensures that the rich aroma of raw coconuts is preserved for a long time. It contains no added chemicals, scent, additives or preservatives and lasts fresh & safe for up to 18 months. It is licensed by FSSAI as an edible grade coconut oil. All this ensures that every bottle of coconut oil adheres to the Parachute promise of being 100% safe and 100% pure. Parachute coconut oil is now available in convenient sizes of 1 Litre and 600ml packs. Parachute Coconut Oil comes from the house of Marico. Marico sells more than 1 billion packs of coconut oil every year.\"', 9.05, 2, 43),
(1070, 37, 'Nihar oil (PRB)', '200 ml', 84, 1, '07-10-20_1602049310.webp', '2020-10-07 15:11:50', '2020-10-07 15:11:50', 'Nihar is the No. 1 hair oil in the country. Our belief system can be summarized in four simple words “Look Good, Do Good” and we continuously strive to be good for you and do good for those around us.', 14.29, 2, 43),
(1071, 37, 'Chana (PRB)', '1 kg', 60, 1, '07-10-20_1602049495.webp', '2020-10-07 15:14:55', '2020-10-07 15:14:55', 'Products are cleaned, processed and graded, under strict quality control and are packed under most hygienic conditions for superior quality of the product.', 6.67, 2, 43),
(1072, 37, 'Chana Daal (PRB)', '1 kg', 85, 1, '07-10-20_1602049645.webp', '2020-10-07 15:17:25', '2020-10-07 15:17:25', 'Products are cleaned, processed and graded, under strict quality control and are packed under most hygienic conditions for superior quality of the product.', 21.18, 2, 43),
(1073, 37, 'Arhar Daal (PRB)', '1 kg', 160, 1, '07-10-20_1602049964.webp', '2020-10-07 15:22:44', '2020-10-07 15:22:44', 'Products are cleaned, processed and graded, under strict quality control and are packed under most hygienic conditions for superior quality of the product.', 37.5, 2, 43),
(1074, 37, 'Masoor Daal (PRB)', '1 kg', 130, 1, '07-10-20_1602050184.webp', '2020-10-07 15:26:24', '2020-10-07 15:26:24', 'Organically grown without pesticides and no chemical fertilizers.\r\nOrganic Masur dal is trusted by local consumers for being the healthiest choice of protein for their family and infants\r\nMakes tasty dal tadka', 43.85, 2, 43),
(1075, 37, 'Rajama (PRB)', '1 kg', 160, 1, '07-10-20_1602050365.webp', '2020-10-07 15:29:25', '2020-10-07 15:29:25', 'Natural Organic Fresh Red Rajama rajma kidney beans 1kg 1000 grams Kidney Bean (Rajama), 1kg. rajma chikkudu Rajma or kidney beans are a rich source of protein Pulses are sorted to deliver consistent quality of grains through the year', 45, 2, 43),
(1076, 37, 'Mung Daal (PRB)', '1 kg', 165, 1, '07-10-20_1602050650.webp', '2020-10-07 15:34:10', '2020-10-07 15:34:10', 'Products are cleaned, processed and graded, under strict quality control and are packed under most hygienic conditions for superior quality of the product.', 44.24, 2, 43),
(1077, 37, 'Urad Daal', '1 kg', 160, 1, '07-10-20_1602050848.webp', '2020-10-07 15:37:28', '2020-10-07 15:37:28', 'Products are cleaned, processed and graded, under strict quality control and are packed under most hygienic conditions for superior quality of the product.', 40, 2, 43),
(1078, 37, 'A A A Papad (PRB)', '1 pocket', 30, 1, '07-10-20_1602051035.webp', '2020-10-07 15:40:35', '2020-10-07 15:40:35', 'Aaa Bikaner papad is a very good papad', 25, 2, 43),
(1079, 37, 'Shri ram Papad (PRB)', '1 pocket', 50, 1, '07-10-20_1602051280.webp', '2020-10-07 15:44:40', '2020-10-07 15:44:40', 'Shri Ram Bikaner papad is a very good papad', 18, 2, 43),
(1080, 37, 'Lizzat Papad (PRB)', '1 pocket', 80, 1, '07-10-20_1602051596.webp', '2020-10-07 15:49:56', '2020-10-07 15:49:56', 'Lijjat Papad is like a thin wafer which becomes a crispy snack once it is fried in oil or toasted in fire. In a typical North Indian thali, a papd is a must-have along with all the other items. Papad made from urad gives an additional zing to the regular papad.', 18.75, 2, 43),
(1081, 19, 'Maggie---------PRB', '1', 5, 1, '14-10-20_1602658171.webp', '2020-10-14 16:19:31', '2020-10-14 16:19:31', 'Nice in taste & packet contains Maggie masala too', 0, 2, 43),
(1082, 19, 'Maggie Family Pack---------PRB', '280g', 46, 1, '14-10-20_1602658268.webp', '2020-10-14 16:21:08', '2020-10-14 16:21:08', 'Nice in taste & Packet contains Maggie masala.', 6.52, 2, 43),
(1083, 19, 'Maggie Family Pack---------PRB', '560g', 91, 1, '14-10-20_1602658339.webp', '2020-10-14 16:22:19', '2020-10-14 16:22:19', 'Nice in taste & Packet contains Maggie masala .', 0, 2, 43),
(1084, 19, 'Raj Besan---------PRB', '1kg', 86, 1, '14-10-20_1602658432.webp', '2020-10-14 16:23:52', '2020-10-14 16:23:52', 'Good quality besan and made with proper ingredients.', 12.79, 2, 43),
(1085, 19, 'Dilip Besan----------PRB', '1kg', 84, 1, '14-10-20_1602658531.webp', '2020-10-14 16:25:31', '2020-10-14 16:25:31', 'This besan will definitely give a different taste to your dish.', 14.29, 2, 43),
(1086, 19, 'Sugar (chini)-----------PRB', '1kg', 40, 1, '14-10-20_1602658626.webp', '2020-10-14 16:27:06', '2020-10-14 16:27:06', 'Made with the use of good quality sugarcane and chemicals', 7.5, 2, 43),
(1087, 19, 'Tata Salt-----------PRB', '500g', 10, 1, '14-10-20_1602684921.webp', '2020-10-14 23:45:21', '2020-10-15 00:02:55', 'It contains the important component required for body.', 10, 2, 1),
(1088, 19, 'Tata Salt-----------PRB', '1 kg', 20, 1, '14-10-20_1602684979.webp', '2020-10-14 23:46:19', '2020-10-15 00:03:20', 'It contains the important component required for body.', 10, 2, 1),
(1089, 19, 'Matches--------PRB', '1', 1, 1, '14-10-20_1602685912.webp', '2020-10-15 00:01:52', '2020-10-15 00:01:52', 'Used to fire something.', 0, 2, 43),
(1090, 19, 'Kishmish--------------PBR', '1kg', 270, 1, '14-10-20_1602691385.webp', '2020-10-15 01:33:05', '2020-10-15 01:33:05', 'Used in various food items to make them more tasty.', 18.52, 2, 43),
(1091, 19, 'Kaju-------------PRB', '1 kg', 800, 1, '14-10-20_1602691466.webp', '2020-10-15 01:34:26', '2020-10-15 01:34:26', 'Used as additional items in different sweets .', 16.88, 2, 43),
(1092, 19, 'Dry Dates (Chuara)-------------PRB', '1 kg', 300, 1, '14-10-20_1602691703.webp', '2020-10-15 01:38:23', '2020-10-15 01:38:23', 'This is used to make different food items tastier and can be used as fruit.', 16.67, 2, 43),
(1093, 19, 'Nutrela Soyabean---------------PRB', '50g', 10, 1, '14-10-20_1602692619.webp', '2020-10-15 01:53:39', '2020-10-15 01:53:39', 'Good for health.', 15, 2, 20),
(1094, 19, 'Nutrela Soyabean---------------PRB', '200g', 45, 1, '14-10-20_1602692700.webp', '2020-10-15 01:55:00', '2020-10-15 01:55:00', 'Good for health.', 11.11, 2, 20),
(1095, 19, 'Nutrela Soyabean---------------PRB', '1kg', 95, 1, '14-10-20_1602692754.webp', '2020-10-15 01:55:54', '2020-10-15 01:55:54', 'Good for health.', 10.53, 2, 20),
(1096, 19, 'Tide------------PRB', '1 kg', 106, 1, '14-10-20_1602693369.webp', '2020-10-15 02:06:09', '2020-10-15 02:06:48', 'Used to wash clothes.', 7.55, 2, 20),
(1097, 19, 'Surf Excel-----------PRB', '500g', 50, 1, '14-10-20_1602693513.webp', '2020-10-15 02:08:33', '2020-10-15 02:08:33', 'Used to wash clothes.', 10, 2, 20),
(1098, 19, 'Pasta-------------PRB', '1kg', 50, 1, '15-10-20_1602731537.webp', '2020-10-15 12:42:17', '2020-10-15 12:42:17', 'Used in evening breaks as food.', 16, 2, 43),
(1099, 19, 'Matches', '6 Pc', 45, 1, '15-10-20_1602731645.webp', '2020-10-15 12:44:05', '2020-10-15 12:44:05', 'A box containing 6 matches.', 11.11, 2, 43),
(1100, 19, 'Safed-----------PRB', '1kg', 55, 1, '15-10-20_1602731711.webp', '2020-10-15 12:45:11', '2020-10-15 12:45:11', 'Used in washing clothes.', 13.45, 2, 43),
(1101, 20, 'Golkee (PRB)', '100gm', 70, 1, '16-10-20_1602827966.webp', '2020-10-16 15:29:26', '2020-10-16 15:29:26', '100gm', 14.29, 2, 20),
(1102, 20, 'Tadka (PRB)', '1 pack', 25, 1, '16-10-20_1602828117.webp', '2020-10-16 15:31:57', '2020-10-16 15:31:57', '1 pack', 12, 2, 20),
(1103, 20, 'Milk Powder(PRB)', '100gm', 40, 1, '16-10-20_1602828263.webp', '2020-10-16 15:34:23', '2020-10-16 15:34:23', '100gm', 15, 2, 20),
(1104, 20, 'Morton Ghee (PRB)', '200gm', 180, 1, '16-10-20_1602828351.webp', '2020-10-16 15:35:51', '2020-10-16 15:35:51', '200gm', 13.33, 2, 20),
(1105, 20, 'Data Haldi (PRB)', '100gm', 20, 1, '16-10-20_1602828440.webp', '2020-10-16 15:37:20', '2020-10-16 15:37:20', '100gm', 20, 2, 20),
(1106, 20, 'Tata Sampann Turmeric Powder (PRB)', '100gm', 31, 1, '16-10-20_1602828566.webp', '2020-10-16 15:39:26', '2020-10-16 15:39:26', '100gm', 35.48, 2, 20),
(1107, 20, 'Everest Tikhalal Chilli Powder (PRB)', '100gm', 41, 1, '16-10-20_1602828755.webp', '2020-10-16 15:42:35', '2020-10-16 15:42:35', '100gm', 14.63, 2, 20),
(1108, 20, 'Everest Meat Masala (PRB)', '100gm', 72, 1, '16-10-20_1602828861.webp', '2020-10-16 15:44:21', '2020-10-16 15:44:21', '100gm', 23.61, 2, 20),
(1109, 20, 'Everest Coriander Powder (PRB)', '200gm', 56, 1, '16-10-20_1602828948.webp', '2020-10-16 15:45:48', '2020-10-16 15:45:48', '200gm', 10.7, 2, 20),
(1110, 20, 'Everest Turmeric Powder (PRB)', '100gm', 28, 1, '16-10-20_1602829099.webp', '2020-10-16 15:48:19', '2020-10-16 15:48:19', '100gm', 17.86, 2, 20),
(1111, 20, 'Everest Garam Masala (PRB)', '50gm', 41, 1, '16-10-20_1602829507.webp', '2020-10-16 15:55:07', '2020-10-16 15:55:07', '50gm', 19.51, 2, 20),
(1112, 20, 'Chuda (PRB)', '1Kg', 33, 1, '16-10-20_1602829689.jpg', '2020-10-16 15:58:09', '2020-10-16 15:58:09', 'Flattend rice', 8.48, 2, 20),
(1113, 20, 'Jeera (PRB)', '100gm', 30, 1, '16-10-20_1602829830.webp', '2020-10-16 16:00:30', '2020-10-16 16:00:30', 'Cumin', 26.67, 2, 20),
(1114, 20, 'Horlicks (PRB)', '1Kg', 428, 1, '16-10-20_1602829968.webp', '2020-10-16 16:02:48', '2020-10-16 16:02:48', '1 Kg', 18.22, 2, 20),
(1115, 20, 'Horlicks (PRB)', '500gm', 242, 1, '16-10-20_1602830090.webp', '2020-10-16 16:04:50', '2020-10-16 16:04:50', '500gm', 26.86, 2, 20),
(1116, 37, 'Flips flite flops (RCM)', '1', 189, 1, '19-10-20_1603089531.webp', '2020-10-19 16:08:51', '2020-10-19 16:08:51', '6*9\r\nColour : Black', 0, 1, 3),
(1117, 37, 'Flite Men\'s slippers (RCM)', '1', 219, 1, '19-10-20_1603090440.webp', '2020-10-19 16:24:00', '2020-10-19 16:24:00', 'Colour : Black/Brown \r\n6*10', 0, 1, 3),
(1118, 37, 'Men\'s half sport shoes (RCM)', '1', 399, 1, '19-10-20_1603091006.webp', '2020-10-19 16:33:26', '2020-10-19 16:33:26', 'Colour : BLUE / RED\r\n6*10', 0, 1, 3),
(1119, 37, 'Euro Men\'s walking shoes by Red chief (RCM)', '1', 2095, 1, '19-10-20_1603092248.webp', '2020-10-19 16:54:08', '2020-10-19 16:54:08', 'COLOUR : BLUE / BACK / GREY\r\n6*10', 0, 1, 3);
INSERT INTO `posts` (`id`, `user_id`, `product_name`, `product_quantity`, `product_price`, `valid`, `image`, `created_at`, `updated_at`, `description`, `discount`, `city_id`, `category_id`) VALUES
(1120, 19, 'Sparx Men\'s  Sandal-----------RCM', '1', 799, 1, '19-10-20_1603103132.webp', '2020-10-19 19:55:32', '2020-10-20 00:26:16', 'Colour: Blue & White\r\nSize:6*10', 0, 1, 3),
(1121, 19, 'Sparx Men\'s  Sandal-----------RCM', '1', 799, 1, '19-10-20_1603103255.webp', '2020-10-19 19:57:35', '2020-10-20 00:26:56', 'Colour:Red & Black\r\nSize:6*10', 0, 1, 3),
(1122, 19, 'Duke Men Flip Flops-----------RCM', '1', 399, 1, '19-10-20_1603121919.webp', '2020-10-20 01:08:39', '2020-10-20 01:08:39', 'Colour:Olive\r\nSize:6*10', 0, 1, 3),
(1123, 19, 'Duke Men Flip Flops-----------RCM', '1', 399, 1, '19-10-20_1603121987.webp', '2020-10-20 01:09:47', '2020-10-20 01:09:47', 'Colour:Grey\r\nSize:6*10', 0, 1, 3),
(1124, 19, 'Duke Men Flip Flops-----------RCM', '1', 399, 1, '19-10-20_1603122044.webp', '2020-10-20 01:10:44', '2020-10-20 01:10:44', 'Colour:Black\r\nSize:6*10', 0, 1, 3),
(1125, 19, 'Duke Men Flip Flops-----------RCM', '1', 399, 1, '19-10-20_1603122107.webp', '2020-10-20 01:11:47', '2020-10-20 01:11:47', 'Colour:Red\r\nSize:6*10', 0, 1, 3),
(1126, 19, 'Campus Black Men\'s Walking Shoes----------RCM', '1', 1499, 1, 'IMG-20201018-WA0017_1603125622.webp', '2020-10-20 02:09:25', '2020-10-20 02:10:22', 'Colour: Black & White\r\nSize:6*10', 0, 1, 3),
(1127, 19, 'Men\'s Red Crocs-------------RCM', '1', 249, 1, '20-10-20_1603166632.jpg', '2020-10-20 13:33:52', '2020-10-20 13:33:52', 'Colour: Red\r\nSize:6*9', 0, 1, 3),
(1128, 19, 'Men\'s Grey  Crocs-------------RCM', '1', 249, 1, '20-10-20_1603166672.jpg', '2020-10-20 13:34:32', '2020-10-20 13:34:32', 'Colour: Grey\r\nSize:6*9', 0, 1, 3),
(1129, 19, 'Men\'s Navy Blue Crocs-------------RCM', '1', 249, 1, 'IMG_20201020_092757_1603166765.webp', '2020-10-20 13:35:08', '2020-10-20 13:36:05', 'Colour: Navy Blue\r\nSize:6*9', 0, 1, 3),
(1130, 19, 'A.gear trekshoe by Campus', '1', 1099, 1, '20-10-20_1603167591.webp', '2020-10-20 13:49:51', '2020-10-20 13:49:51', 'Colour: Black \r\nSize: 6*10', 0, 1, 3),
(1132, 19, 'Men\'s Hawai  Slippers', '1', 199, 1, '20-10-20_1603168549.webp', '2020-10-20 14:05:49', '2020-10-20 14:05:49', 'All colours \r\nSize:6*9', 0, 1, 3),
(1133, 19, 'Flute Pul-37...............RCM', '1', 219, 1, '20-10-20_1603168829.webp', '2020-10-20 14:10:29', '2020-10-20 14:10:29', 'Colour: Black/Brown/Red\r\nSize:6*9', 0, 1, 3),
(1134, 37, 'Men\'s crocs (RCM)', '1', 299, 1, '20-10-20_1603169523.webp', '2020-10-20 14:22:03', '2020-10-20 14:22:03', 'Colour : Black / Blue \r\n6*10', 0, 1, 3),
(1135, 37, 'Furo Running shoes  by red chief (RCM)', '1', 2095, 1, '20-10-20_1603170049.webp', '2020-10-20 14:30:49', '2020-10-20 14:30:49', '7*10', 0, 1, 3),
(1136, 19, 'Nawab.nagra', '1', 199, 1, '20-10-20_1603170147.webp', '2020-10-20 14:32:27', '2020-10-20 14:32:27', 'Colour: Black\r\nSize:6*9', 0, 1, 3),
(1137, 37, 'champion men slipper (RCM)', '1', 399, 1, '20-10-20_1603170234.webp', '2020-10-20 14:33:54', '2020-10-20 14:33:54', 'Pubg-Champion \r\n6*10', 0, 1, 3),
(1138, 37, 'Supreme men\'s slipper (RCM)', '1', 449, 1, '20-10-20_1603170462.webp', '2020-10-20 14:37:42', '2020-10-20 14:39:48', '6*10.  \r\nmixed colour supreme 2', 0, 1, 3),
(1139, 19, 'Loafer Shoes-------------RCM', '1', 349, 1, '20-10-20_1603170639.webp', '2020-10-20 14:40:39', '2020-10-20 14:40:39', 'Colour: Black/Navy/Blue\r\nSize:6*9', 0, 1, 3),
(1140, 37, 'Supreme men\'s slipper (RCM)', '1', 449, 1, '20-10-20_1603170706.webp', '2020-10-20 14:41:46', '2020-10-20 14:41:46', 'mixed colour supreme 1\r\n6*11', 0, 1, 3),
(1141, 37, 'Stnr Boy men\'s slippers (RCM)', '1', 449, 1, '20-10-20_1603170933.webp', '2020-10-20 14:45:33', '2020-10-20 14:45:33', 'mixed colour design pvc-01-02\r\n6*10', 0, 1, 3),
(1142, 19, 'Kids Supreme Sleepers', '1', 249, 1, 'IMG_20201021_100654_1603255202.webp', '2020-10-20 14:46:15', '2020-10-21 14:10:02', 'All Colours\r\nSize:9*1', 0, 1, 3),
(1143, 37, 'Campus milan Men\'s shoes (RCM)', '1', 1699, 1, '20-10-20_1603171154.webp', '2020-10-20 14:49:14', '2020-10-20 14:49:14', 'colour;-  royal blue milan\r\n6*10', 0, 1, 3),
(1144, 37, 'Adda men\'s slipper (RCM)', '1', 575, 1, '20-10-20_1603171361.webp', '2020-10-20 14:52:41', '2020-10-20 14:52:41', 'colour;-black/tan APJ-AIR\r\n7*10', 0, 1, 3),
(1145, 17, 'Sega men\'s running shoes', 'Pair', 499, 1, '23-10-20_1603472180.webp', '2020-10-24 02:26:20', '2020-10-24 02:26:20', 'Best for running', 0, 1, 3),
(1146, 37, 'Patanjali coconut oil (AWM)', '200 ml', 72, 1, '31-10-20_1604158874.webp', '2020-11-01 01:11:14', '2020-11-02 04:01:30', 'Ayurveda is the way of finding traditional Hindu remedies for all kinds of ailments and is a form of alternative medice with its origins in the Indian subcontinent. Ayurvedic products have natural roots, herbs and bark wood as their ingredients. These were widely prevalent long before Western medicines came into prominence and the healing of the body was done in the natural way, deviod of any side-effects. But, with the introduction of medicines from the west, the practice of Ayurveda slowly started dying out.', 0, 1, 48),
(1147, 37, 'Patanjali coconut oil (AWM)', '500 ml', 150, 1, '31-10-20_1604159053.webp', '2020-11-01 01:14:13', '2020-11-02 04:12:29', 'Ayurveda is the way of finding traditional Hindu remedies for all kinds of ailments and is a form of alternative medice with its origins in the Indian subcontinent. Ayurvedic products have natural roots, herbs and bark wood as their ingredients. These were widely prevalent long before Western medicines came into prominence and the healing of the body was done in the natural way, deviod of any side-effects. But, with the introduction of medicines from the west, the practice of Ayurveda slowly started dying out.', 0, 1, 48),
(1148, 37, 'Patanjali dant kanti detal cream (advanced) (AWM)', '100g', 90, 1, '31-10-20_1604159226.webp', '2020-11-01 01:17:06', '2020-11-02 04:09:51', 'From dental protection to dental beauty. This Dental cream is a marvellous product to protect the teeth. Akarkara and babul are the prime ingredients to protect the power of gums. Neem, Timbaru (Strychnos nux vomica or Diospyros), Turmeric and cloves provide great protection and remove bacteria. Pudin and pippali refresh the gums. Peelu and maju phal provide power to the gums. Thus it roots out all the dental problems like pioria, gingivitis, bad odour in gums if it is used everyday. Use it once, and then you wish to use it forever.', 0, 1, 48),
(1149, 37, 'Patanjali dant kanti (natural) (AWM)', '100g', 45, 1, '31-10-20_1604159388.webp', '2020-11-01 01:19:48', '2020-11-02 04:08:38', 'Patanjali Dantkanti Dental Cream is a dental care herbal product offering for the protection of your teeth and gums. Brought to you from the stable of Patanjali brand of products, this herbal dental care cream helps tighten gums and fights germs. Patanjali Dantkanti Dental cream is an offering from the 500 range of Patanjali brand of products(food, dentalcare, cosmetics, haircare, toiletries) that seek to contribute to a healthy and wholesome living.', 0, 1, 48),
(1150, 37, 'Patanjali dant kanti (natural) (AWM)', '200g', 85, 1, '31-10-20_1604159510.webp', '2020-11-01 01:21:50', '2020-11-02 04:09:06', 'Patanjali dant kanti toothpaste is herbal toothpaste containing herbs and some ayurvedic ingredients. It improves the health of the teeth and gums. It helps to protect the teeth and gums from infections. Regular brushing of teeth using this toothpaste can help to prevent cavities in the tooth. It can also help to prevent and reduce pain in the gums and teeth. The herbs found in this medicine are effective in maintaining the strength of teeth and gums. It also helps to stop the bleeding from the gums. It provides a refreshing smell and can help people get rid of bad breath. People suffering from gingivitis caused by the inflammation of the gums can also use this toothpaste to control the disease.', 0, 1, 48),
(1151, 37, 'Patanjali dant kanti (natural) family pack (AWM)', 'Family pack', 127, 1, '31-10-20_1604159747.webp', '2020-11-01 01:25:47', '2020-11-02 04:09:27', 'Patanjali Dantkanti Dental Cream is a dental care herbal product offering for the protection of your teeth and gums. Brought to you from the stable of Patanjali brand of products, this herbal dental care cream helps tighten gums and fights germs. Patanjali Dantkanti Dental cream is an offering from the 500 range of Patanjali brand of products(food, dentalcare, cosmetics, haircare, toiletries) that seek to contribute to a healthy and wholesome living.', 0, 1, 48),
(1152, 37, 'Patanjali Amla juice (AWM)', '1L', 110, 1, '31-10-20_1604159916.webp', '2020-11-01 01:28:36', '2020-11-02 04:02:23', 'Patanjali Divya Amla has a natural wellness property. Pack of 1', 0, 1, 48),
(1153, 37, 'Patanjali Cow\' ghee (AWM)', '1 L', 565, 1, '31-10-20_1604160159.webp', '2020-11-01 01:32:39', '2020-11-02 04:12:53', 'Patanjali ghee is processed from pure cow-milk, it is naturally beneficial for body and helps in improving the immune system. Rich in taste and aroma, it can be used for stir frying, tempering etc. Benefit: Effect on Tridosha', 0, 1, 48),
(1154, 37, 'Patanjali gashar churna (AWM)', '100g', 85, 1, '31-10-20_1604160358.webp', '2020-11-01 01:35:58', '2020-11-02 04:10:11', 'The Churna Is A Combination Of Herbal Powders With Antacid Properties. It Soothes Acidity And Suppresses Restlessness From Gas. Divya Gashar Churna Fortifies Your Digestive Tract And Increases Appetite. Don\'t Let Acidity And Heartburn Hold You Back From Enjoying The Good Life. Take Divya Gashar Churna To Experience Long-Lasting Ayurvedic Healing', 0, 1, 48),
(1155, 37, 'Patanjali godhan ARK (AWM)', '100g', 40, 1, '31-10-20_1604160531.webp', '2020-11-01 01:38:51', '2020-11-02 04:10:33', 'Patanjali Divya Godhan Ark 100g', 0, 1, 48),
(1156, 37, 'Patanjali Honey (AWM)', '450 ml', 165, 1, '31-10-20_1604160865.webp', '2020-11-01 01:44:25', '2020-11-01 01:44:25', 'A Unique Formulation By Patanjali, Pachak Ajwain With Aloevera Combines The Medicinal Prowess Of Thymol Oil And Soothing Goodness Of Aloe Vera To Bring You A Powerful Digestive. Fortified With Ginger Powder, Bay Leaf And Coriander, The Naturopathic Preparation Is A Great Option For Your Daily Digestive Routine.', 5, 1, 41),
(1157, 37, 'Patanjali pachak (hing goli ) (AWM)', '100g', 65, 1, '31-10-20_1604161004.webp', '2020-11-01 01:46:44', '2020-11-02 04:08:09', 'Pachak Hing Goli brings you the goodness of asafoetida to strengthen your digestion. It is one of the many options in the Patanjali Natural Health care and Digestive products range for you to choose from for your daily digestive routine. The root cause of a large number of diseases is a bad stomach and a faulty digestive system.Pachak Hing Goli, taken daily, helps soothe common stomach ailments and strengthen the digestive system.', 0, 1, 48),
(1158, 37, 'Patanjali pachak (shodhit goli ) (AWM)', '100g', 45, 1, '31-10-20_1604161129.webp', '2020-11-01 01:48:49', '2020-11-02 04:07:43', 'Regulating And Keeping This System In Balance Is Critical For Good Health. A Good Digestive Routine Is Absolutely Essential To Help This Vital System Functioning At Optimum Level. Pachak Shodhit Harad, Taken Daily,  Helps Soothe Common Stomach Ailments And Strengthen The Digestive System.', 0, 1, 48),
(1159, 37, 'Patanjali pachak (anar goli ) (AWM)', '100g', 35, 1, '31-10-20_1604161264.webp', '2020-11-01 01:51:04', '2020-11-02 04:07:02', 'Patanjali Pachak Anardana Goli is best in taste affluent for health. These Golis are made out of dried pomegranate seeds which has got the proper blend of sweet and sour taste.', 0, 1, 48),
(1160, 37, 'Patanjali rogan badam shirin (AWM)', '60ml', 175, 1, '31-10-20_1604161423.webp', '2020-11-01 01:53:43', '2020-11-02 04:04:15', 'Strengthens brain and nerves, nutrient improves body strength and removes constipation in a natural way. releives tension, strengthens brain power, good for heart, releives constipation, fights dandruff, keeps body warm in winter, nourishes skin, prenatal / postnatal care, helps build stronger bones.', 0, 1, 48),
(1161, 37, 'Patanjali Herbal power bita + (AWM)', '500g', 195, 1, '31-10-20_1604161548.webp', '2020-11-01 01:55:48', '2020-11-02 04:05:44', 'Patanjali Herbal Power Vita Powder Is A Powerful Health & Brain Tonic For Both Children And Adults. Strengthens The Memory. Contains Essential Vitamins And Minerals Needed For A Good Health.', 0, 1, 48),
(1162, 37, 'Patanjali Honey (AWM)', '500 ml', 165, 1, '31-10-20_1604162021.webp', '2020-11-01 02:03:41', '2020-11-02 04:06:13', 'Patanjali honey has fructose, minerals, vitamins and natural nutritious elements. It is a good quality anti septic and blood refi nor. Its regular use treats cough, cold and fever. It also helps in early healing of injuries. The jaggery and sugar available in the open market have dangerous chemicals and polluted contents. Hence, the naturopathy doctors tell sugar as white poison. Thus, use Patanjali honey for sweetness and remain healthy forever. Special note different seasons also bring changes in the state of pure honey hence, if Patanjali honey also gets deposited, use it without any apprehension with happiness. Quantity and use use honey with roti, milk, gruel and other edible items for sweetness. Most of the ayurvedic medicines are taken with honey.', 0, 1, 48),
(1163, 25, 'Patanjali Special Sandal Dhoop - (awm)', '10N', 10, 1, '41cFaCnKBWL_1604249481.webp', '2020-11-02 03:17:58', '2020-11-02 03:21:21', 'Sandal incense sticks for divine fragrance in your home.', 0, 1, 48),
(1165, 25, 'Patanjali Special Rose Dhoop (awm)', '10N', 10, 1, 'Patanjali-Aastha-Rose-Dry-Dhoop-1552461012-10055992_1604250205.webp', '2020-11-02 03:25:14', '2020-11-02 03:33:25', 'Rose incense sticks for divine fragrance in your home.', 0, 1, 48),
(1166, 25, 'Patanjali Special Mogra Dhoop (awm)', '10N', 10, 1, 'IMG_9848-600x600_1604250113.webp', '2020-11-02 03:27:55', '2020-11-02 03:31:53', 'Mogra incense sticks for divine fragrance in your home.', 0, 1, 48),
(1167, 25, 'Patanjali Kesh Kanti Shampoo(with milk protein) (awm)', '200mL', 95, 1, '01-11-20_1604250619.webp', '2020-11-02 03:40:19', '2020-11-02 03:40:19', 'Patanjali Kesh Kanti Milk Protein Hair cleanser hydrates hair and scalp. The milk protein utilized in this shampoo not only cleanses dry hair softly but moreover repairs hair spoil with continuous age. By getting shine onto hair strands it gets rough and dry hair return to life and healthy hair means tough hair, so no more hairfall. It creates hair glittery and less curly. It avoids hair fall & develops hair shine. It takes away oil effectively', 0, 1, 48),
(1168, 25, 'Patanjali Kesh Kanti Hair Oil (awm)', '120mL', 150, 1, '01-11-20_1604250856.webp', '2020-11-02 03:44:16', '2020-11-02 03:44:16', 'Patanjali Kesh Kanti Hair Oil provides deep nourishment and strengthens hair roots, reduces hair fall and dandruff, and prevents split ends and hair from greying. The regenerating mix of Wheat Germ Oil, bhringraj, sunflower oil and aloe vera calm the scalp, reduces toxin build up and help hair become soft, smooth and tangle free. The soft essences of the herbs used to aid in reducing sleeplessness and headaches.', 0, 1, 48),
(1169, 25, 'Patanjali Saundarya Body Lotion (awm)', '100mL', 100, 1, '01-11-20_1604251137.webp', '2020-11-02 03:48:57', '2020-11-02 03:48:57', 'A unique blend of natural oils, herbs and fruit extract that moisturizes, nourishes and restores your skin\'s vitality throughout the day.', 0, 1, 48),
(1170, 20, 'Patanjali Sandarya aloe vera gel (Awm)', '150ml', 90, 1, '05-11-20_1604599328.webp', '2020-11-06 04:32:08', '2020-11-06 04:32:08', '150ml', 0, 1, 48),
(1171, 20, 'Patanjali Sandarya Multani mitti pace scrub (Awm)', '60gm', 60, 1, '05-11-20_1604599473.webp', '2020-11-06 04:34:33', '2020-11-06 04:34:33', '60gm', 0, 1, 48),
(1172, 20, 'Patanjali Sandarya face wash (Awm)', '60gm', 60, 1, '05-11-20_1604599549.webp', '2020-11-06 04:35:49', '2020-11-06 04:35:49', '60gm', 0, 1, 48),
(1173, 20, 'Patanjali Sandarya Rose face (Awm)', '60gm', 45, 1, '05-11-20_1604599624.webp', '2020-11-06 04:37:04', '2020-11-06 04:37:04', '60gm', 0, 1, 48),
(1174, 20, 'Patanjali Sandarya Honey and orange face wash  (Awm)', '60gm', 45, 1, '05-11-20_1604599690.webp', '2020-11-06 04:38:10', '2020-11-06 04:38:10', '60gm', 0, 1, 48),
(1175, 20, 'Patanjali Sandarya Sun screen cream SPF30 (Awm)', '50gm', 100, 1, '05-11-20_1604599785.webp', '2020-11-06 04:39:45', '2020-11-06 04:39:45', '50gm', 0, 1, 48),
(1176, 20, 'Patanjali Sandarya Anti wrinkle cream(Awm)', '50gm', 150, 1, '05-11-20_1604600047.webp', '2020-11-06 04:44:07', '2020-11-06 04:44:07', '50gm', 0, 1, 48),
(1177, 20, 'Patanjali Sandarya crack heal cream (Awm)', '50gm', 60, 1, '05-11-20_1604600139.webp', '2020-11-06 04:45:39', '2020-11-06 04:45:39', '50gm', 0, 1, 48),
(1178, 20, 'Patanjali Mogra(body cleaner) (Awm)', '75gm', 25, 1, '05-11-20_1604600269.webp', '2020-11-06 04:47:49', '2020-11-06 04:47:49', '75gm', 0, 1, 48),
(1179, 20, 'Patanjali Sandarya Moisturizer cream (Awm)', '50gm', 75, 1, '05-11-20_1604600381.webp', '2020-11-06 04:49:41', '2020-11-06 04:49:41', '50gm', 0, 1, 48),
(1180, 20, 'Patanjali Sandarya Aloe vera Moisturizon cream(Awm)', '50gm', 75, 1, '05-11-20_1604600483.webp', '2020-11-06 04:51:23', '2020-11-06 04:51:23', '50gm', 0, 1, 48),
(1181, 20, 'Patanjali haldi chandan shop(Awm)', '4 in 1 packet 300g', 60, 1, '05-11-20_1604600591.webp', '2020-11-06 04:53:11', '2020-11-06 04:53:11', '4 in 1pack 300g', 0, 1, 48),
(1182, 20, 'Patanjali aloe vera kanti (Awm)', '4 in 1 pack 300g', 60, 1, '05-11-20_1604600696.webp', '2020-11-06 04:54:56', '2020-11-06 04:54:56', '4 in 1 pack 300g', 0, 1, 48),
(1183, 20, 'Patanjali balm fast relief (Awm)', '25gm', 45, 1, '05-11-20_1604600817.webp', '2020-11-06 04:56:57', '2020-11-06 04:56:57', '25gm', 0, 1, 48),
(1184, 20, 'Patanjali Kesh kanti Amla hair oil (Awm)', '200ml', 80, 1, '05-11-20_1604600957.webp', '2020-11-06 04:59:17', '2020-11-06 04:59:17', '200ml', 0, 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_time` time DEFAULT '08:00:00',
  `close_time` time DEFAULT '20:00:00',
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `type`, `desc`, `image`, `city_id`, `created_at`, `updated_at`, `location`, `open_time`, `close_time`, `is_active`) VALUES
(14, 'Jaika Restaurant', 'North Indian', 'Breakfast, Lunch, snacks, Dinner', '26-09-20_1601097104.jpg', 1, '2020-09-26 14:41:44', '2020-09-26 14:41:44', 'Forbesganj', '08:00:00', '20:00:00', 1),
(15, 'Cake Palace', 'Bakery,Desserts', 'Fresh cake', '26-09-20_1601106564.webp', 1, '2020-09-26 17:19:24', '2020-09-26 17:19:24', 'Forbesganj', '08:00:00', '20:00:00', 1),
(16, 'Laziz Pizza', 'Pizzas', 'Pizza, Shake', '26-09-20_1601115546.webp', 1, '2020-09-26 17:27:07', '2020-09-26 19:49:06', 'Forbesganj', '08:00:00', '20:00:00', 1),
(18, 'Honey N cakes', 'Cakes,DeSsert', 'All cakes are available', '26-09-20_1601116282.webp', 1, '2020-09-26 20:01:22', '2020-09-26 20:01:22', 'Forbesganj', '08:00:00', '20:00:00', 1),
(19, 'Darjeeling Momos & Fast Food', 'Chinese Restaurant', 'Fast-food', '27-09-20_1601145392.webp', 1, '2020-09-27 04:06:32', '2020-09-27 04:06:32', 'Forbesganj', '08:00:00', '20:00:00', 1),
(20, 'Sandip momo hut', 'Chinese', 'Fast food', '27-09-20_1601227561.webp', 1, '2020-09-28 02:56:01', '2020-09-28 02:56:01', 'Forbesganj', '08:00:00', '20:00:00', 1),
(23, 'Arti Chat Stall', 'Indian', 'Chat,pani puri,papri chat,mix chat...       Open :-4 PM      close:-8 PM', '12-10-20_1602489169.webp', 2, '2020-10-12 17:22:49', '2020-10-26 14:41:48', 'Parbelia', '08:00:00', '20:00:00', 1),
(24, 'Ganesh chop center', 'Indian', 'All type chop available like Aalu chop ,Egg chop and many more things open :- 4 PM Close :-8 PM', '12-10-20_1602518529.webp', 2, '2020-10-13 01:32:09', '2020-10-26 14:24:02', 'Parbelia', '08:00:00', '20:00:00', 1),
(25, 'Parbelia MoMos Store', 'Indian', 'Fast food are available here     Open :-4 PM      close:-8 PM', '12-10-20_1602519792.jpg', 2, '2020-10-13 01:53:12', '2020-10-26 14:26:01', 'Parbelia', '08:00:00', '20:00:00', 1),
(27, 'Suman fast food', 'Indian', 'Roll,chaw and Pasta     Open :-4 PM      close:-8 PM', '14-10-20_1602694994.webp', 2, '2020-10-15 02:33:14', '2020-10-26 14:26:13', 'Parbelia', '08:00:00', '20:00:00', 1),
(28, 'Radhika Bakery&Cake Palace', 'Cakes & Bakeries', 'Different types & Flavours of cakes...', '16-10-20_1602849399.webp', 6, '2020-10-15 15:06:21', '2020-10-31 00:50:26', 'Patna', '08:00:00', '20:00:00', 1),
(29, 'Guru Pizza Centre', 'Indian', 'Variety of Pizzas Open :-4 PM      close:-8 PM', '28-10-20_1603893119.webp', 2, '2020-10-17 17:11:17', '2020-10-28 23:21:59', 'Parbelia', '08:00:00', '20:00:00', 1),
(30, 'Pannalal Jalebi', 'Indian', 'Jalebi Specialist', '19-10-20_1603080214.webp', 1, '2020-10-19 13:33:34', '2020-10-19 13:33:34', 'Forbesganj', '08:00:00', '20:00:00', 1),
(31, 'Bihar chat staal', 'Indian', 'Delicious panipuri and chat', '23-10-20_1603424307.jpg', 1, '2020-10-23 13:08:27', '2020-10-23 13:08:27', 'Forbesganj', '08:00:00', '20:00:00', 1),
(33, 'Bhola ji', 'North Indian', 'Snacks & Sweets', '06-11-20_1604650701.jpg', 1, '2020-11-06 18:48:21', '2020-11-06 18:48:21', 'Forbesganj', '08:00:00', '20:00:00', 1),
(34, 'Suraj Family Restaurant', 'Indian', 'Breakfast Lunch Snacks Dinner', '07-11-20_1604722916.webp', 2, '2020-11-07 14:51:56', '2020-11-07 14:51:56', 'Parbelia', '08:00:00', '20:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `room_price` int(16) DEFAULT 0,
  `room_gst` int(11) DEFAULT NULL,
  `room_features` mediumtext DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `city_id` int(11) DEFAULT 1,
  `room_image` text DEFAULT NULL,
  `hotel_id` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `room_price`, `room_gst`, `room_features`, `is_active`, `city_id`, `room_image`, `hotel_id`) VALUES
(1, 'Super Deluxe', 2399, 12, 'Amenities-AC,TV,Free Wifi,Parking Facility', 1, 1, 'room1.webp', 1),
(2, 'Family Room', 1500, 13, 'Amenities-AC,TV,Free Wifi,Parking Facility', 1, 1, 'room2.webp', 1),
(3, 'Presidential Room', 1499, 12, 'Amenities-AC,TV,Free Wifi,Parking Facility', 1, 1, 'room3.webp', 1),
(4, 'Non AC Room', 1000, NULL, 'TV,Free Wifi,Parking Facility', 1, 1, 'room4.webp', 1),
(5, 'Classic (2X) Room', 700, NULL, 'TV,Free Wifi,Parking Facility', 1, 1, 'room5.webp', 1),
(6, 'Single Room', 499, NULL, 'TV,Free Wifi,Parking Facility', 1, 1, 'room6.webp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `safaris`
--

CREATE TABLE `safaris` (
  `id` int(11) NOT NULL,
  `Booking_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Booking_time` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `safaris`
--

INSERT INTO `safaris` (`id`, `Booking_id`, `user_id`, `Booking_time`, `source`, `destination`, `updated_at`, `created_at`) VALUES
(1, 'SewaCity16-1594049590', 16, '2020-07-06T21:03', NULL, NULL, '2020-07-07 01:03:10', '2020-07-07 01:03:10'),
(2, 'SewaCity42-1594050351', 42, '2020-07-06T22:15', NULL, NULL, '2020-07-07 01:15:51', '2020-07-07 01:15:51'),
(3, 'SewaCity12-1594051720', 12, '2020-07-06T22:37', NULL, NULL, '2020-07-07 01:38:40', '2020-07-07 01:38:40'),
(4, 'SewaCity12-1594054268', 12, '2020-07-07T04:20', NULL, NULL, '2020-07-07 02:21:08', '2020-07-07 02:21:08'),
(5, 'SewaCity199-1594107566', 199, '2020-07-07T13:08', NULL, NULL, '2020-07-07 17:09:26', '2020-07-07 17:09:26'),
(6, 'SewaCity11-1594222744', 11, '2020-07-08T21:08', 'meerut', 'patna', '2020-07-09 01:09:04', '2020-07-09 01:09:04'),
(7, 'SewaCity11-1594222982', 11, '2020-07-08T21:12', 'meerut', 'patna', '2020-07-09 01:13:02', '2020-07-09 01:13:02'),
(8, 'SewaCity11-1594223266', 11, '2020-07-08T21:12', 'meerut', 'patna', '2020-07-09 01:17:46', '2020-07-09 01:17:46'),
(9, 'SewaCity38-1595485369', 38, '2020-07-28T09:00', 'New modern school, forbesganj', 'Araria bus stand , Araria', '2020-07-23 15:52:49', '2020-07-23 15:52:49'),
(10, 'SewaCity247-1596544069', 247, '2020-08-04T17:57', 'Post office chowk', 'Collage chowk', '2020-08-04 21:57:49', '2020-08-04 21:57:49'),
(11, 'SewaCity12-1598079936', 12, '2020-08-22T12:35', 'Forbesganj', 'Katihar', '2020-08-22 16:35:36', '2020-08-22 16:35:36'),
(12, 'SewaCity12-1598079941', 12, '2020-08-22T12:35', 'Forbesganj', 'Katihar', '2020-08-22 16:35:41', '2020-08-22 16:35:41'),
(13, 'SewaCity19-1598461175', 19, '2020-08-26T22:29', 'Patel chowk', 'Railway station', '2020-08-27 02:29:35', '2020-08-27 02:29:35'),
(14, 'SewaCity19-1598461178', 19, '2020-08-26T22:29', 'Patel chowk', 'Railway station', '2020-08-27 02:29:38', '2020-08-27 02:29:38'),
(15, 'SewaCity50-1598495832', 50, '2020-08-27T08:10', 'Bada  Shiv mandir', 'Sadar road', '2020-08-27 12:07:12', '2020-08-27 12:07:12'),
(16, 'SewaCity348-1598883518', 348, '2020-09-01T19:47', 'Sadar road ,forbesganj', 'Jogbani', '2020-08-31 23:48:38', '2020-08-31 23:48:38'),
(17, 'SewaCity352-1598964182', 352, '2020-09-01T18:12', 'Hospitals rd', 'Subhash chowk', '2020-09-01 22:13:02', '2020-09-01 22:13:02'),
(18, 'SewaCity352-1598964184', 352, '2020-09-01T18:12', 'Hospitals rd', 'Subhash chowk', '2020-09-01 22:13:04', '2020-09-01 22:13:04'),
(19, 'SewaCity50-1601207332', 50, '2020-09-27T17:18', 'Halwai field', 'Station chowl', '2020-09-27 21:18:52', '2020-09-27 21:18:52'),
(20, 'SewaCity422-1601389615', 422, '2020-09-30T07:00', 'Post office chowk', 'Dholbaja', '2020-09-29 23:56:55', '2020-09-29 23:56:55'),
(21, 'SewaCity50-1602566976', 50, '2020-10-13T10:58', 'Station chowk', 'Patel chowk', '2020-10-13 14:59:36', '2020-10-13 14:59:36'),
(22, 'SewaCity50-1602566978', 50, '2020-10-13T10:58', 'Station chowk', 'Patel chowk', '2020-10-13 14:59:38', '2020-10-13 14:59:38'),
(23, 'SewaCity12-1602689995', 12, '2020-10-15T02:31', 'bada shivalay', 'post office chowk', '2020-10-15 01:09:55', '2020-10-15 01:09:55'),
(24, 'SewaCity54-1602752373', 54, '2020-10-15T14:45', '4/127, Sultan pokhar west, ward no.04, forbesganj', 'Jupiter store, sadar road, Forbesganj', '2020-10-15 18:29:33', '2020-10-15 18:29:33'),
(25, 'SewaCity521-1602769424', 521, '2020-10-16T06:00', 'bye pass highway near mahila collage', 'amhara wn-11 near kali mandir forbesganj', '2020-10-15 23:13:44', '2020-10-15 23:13:44'),
(26, 'SewaCity281-1602842618', 281, '2020-10-16T15:32', 'Thana pizza centre', 'Hawai field', '2020-10-16 19:33:38', '2020-10-16 19:33:38'),
(27, 'SewaCity281-1602842620', 281, '2020-10-16T15:32', 'Thana pizza centre', 'Hawai field', '2020-10-16 19:33:40', '2020-10-16 19:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `no_of_requests` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `usertype`, `no_of_requests`, `city_id`) VALUES
(11, 'Gaurav', '8171045850', 'gaurav.jss.027@gmail.com', '2020-05-21 18:26:07', '$2y$10$7Ha8FMBpm7x5eiVC3mzb/.59WajHU3XtlA3hJrMV4CvwvoLguG0ZW', NULL, '2020-05-21 18:25:33', '2020-07-08 19:42:47', 'special', 1, 1),
(12, 'Mayank Gupta', '8676036607', 'gupta656mayank@gmail.com', NULL, '$2y$10$XFTP2KHeAT2vZ/jxtyF/G.g9XyeL2dwVB3oxLNwXW0QIPhlq66jXi', '98Q3vxu3cl9reMDP4zS5AHmVBHB5eYSyZv5ydOMjriQyUdbxLUWe4GJ1WOGe', '2020-05-21 19:34:47', '2020-10-29 01:06:36', 'special', 9, 1),
(14, 'prateekgupta', '9955028105', 'gupta656mayank@gmail.com', NULL, '$2y$10$EL09oaYkgFxN8T948LYEhuEdoAoLMjQFAuXMQAV0KgwLfwZc0RaDC', 'PcrOT4vq8fp9mEmhOb9tQvFZy0iM4SJ4C1YH3eSZrSJIH6xcWo7g9fI0uTYx', '2020-05-21 20:29:06', '2020-07-20 11:44:05', 'normal', 2, 1),
(15, 'Gaurav Kumar', '1234567890', 'gamesb321@gmail.com', NULL, '$2y$10$l.6QNxCpj95hialKN9XeAuPx6Fa5RIeDU3dtFuQfjQYm82tlM4TmW', NULL, '2020-05-21 21:45:25', '2020-05-21 21:45:52', 'normal', 1, 1),
(16, 'Gaurav Kumar', '7983002655', 'gaurav.jss.027@gmail.com', NULL, '$2y$10$FdSafr1CApx5FFCkVY8PTuXBl/lMunNMQQrD9QaM47wRmGq3VEVL2', NULL, '2020-05-22 11:04:48', '2020-07-29 12:43:36', 'normal', 42, 1),
(17, 'AMIT KUMAR SINHA', '8083682640', 'amitkumarsinha3213@gmail.com', NULL, '$2y$10$5c.EvQpWSgomXDe85RGWcepEcE6e4Gqdc2PPLyG61VyUECwiIigqS', 'IQkDfuv99R5VbZJjiDqavRynuAAyil2O66BZArC1lAeBTQCYXa6e5vtxotxY', '2020-05-22 11:17:06', '2020-10-30 20:44:43', 'admin', 5, 1),
(18, 'Nitish kumar', '7004519805', 'nitishrajkumar00@gmail.com', NULL, '$2y$10$l44e5KumpyTiY6aY3.QnUeXdhfsRuMLPvIpugy31GDfJQMOXZE1Ie', '9tAC0DsBzzS1vzpTGPfZQvqLZvTapc8afb1UqlgjCd1nAbtP5AXUdEiFwguL', '2020-05-22 11:18:50', '2020-11-07 14:48:08', 'admin', 2, 2),
(19, 'Mrinal kumar', '7488597193', 'mrinalsah1008@gmail.com', NULL, '$2y$10$3YpWwRd0xfqXlI243d2P8uJ7OCyUpkYGPeC4NdpPKAj1KzoP6prG6', 'HDvkyC4pWhzWErcO1w5BhdZ7J6XhGEaBEJx7dTfsU6tCz9xu3eynLpi0ebF6', '2020-05-22 11:19:04', '2020-10-17 01:53:59', 'admin', 0, 1),
(20, 'Rahul Choudhary', '9631026035', 'rahulchoudhary23800@gmail.com', NULL, '$2y$10$ZDwNoJDBHi67rZ75hhwKIe4Hc8cGhmNeNas8AkWOUPDOKDBIEGcQy', 'wmZ2CTgXwFvrTcfd31GzOLNYR5YErp7ANHj28RpVqaxaNkfVf2zihG6F5XAQ', '2020-05-22 11:20:00', '2020-11-06 04:26:42', 'admin', 0, 1),
(21, 'Aman Raj', '9123472823', 'amanraj9123fbg@gmail.com', NULL, '$2y$10$NDEtGsSR/aDtPzaGH47SBO9elVPinKhrY/drBfTc055pibvxNSYKu', NULL, '2020-05-22 15:37:46', '2020-05-22 15:38:36', 'normal', 1, 1),
(22, 'Roshan Keshri', '8507856099', 'roshankumarkeshri121@gmail.com', NULL, '$2y$10$wukdXDFb8xfSYM1wwlsEru/rbE2JDNr.Rakgecz7UJjHGsOMWl2Gu', 'um46k8H0sJprZObmWmJKCRujPpdd54tM4lhznuOigwfIVcAZyqZrHucVWk7j', '2020-05-22 20:47:16', '2020-08-15 08:17:56', 'normal', 1, 1),
(23, 'Ankit Mandal', '9470730115', 'ankitmandal476@gmail.com', NULL, '$2y$10$cVXHj7VrVOZ2BupmKtZr5.jSJtlk6kLY5CXRUWAJG0HhVnzYYykFy', 'fvbkTaKo3W0QbRfE3DgxBbHV2PcSZtTCuQoffQrdKRQ0uDyfQJjS3ylBsSJL', '2020-05-22 20:54:56', '2020-07-30 11:18:39', 'normal', 7, 1),
(24, 'AMAR KUMAR NIRALA', '9097817868', 'amarnirala143@gmail.com', NULL, '$2y$10$4PTk4BXtuMGJJfAZap07kOFGymqBpNBQFiQHZdjIbFDTODER4QRKO', NULL, '2020-05-23 14:09:42', '2020-05-23 14:10:30', 'normal', 1, 1),
(25, 'Amulya Verma', '9939150500', 'amulyasrsvm25@gmail.com', NULL, '$2y$10$8Z3XZV12KIrCYzC9R8dEtOLdmM9LkvNUVEoku/41EQ06WCigYkpvq', '8sUUu5oydb8OqlJVlqfHglKA2wvfUj7FNAONJElmMsSSBpOHvxavKmPcYFHZ', '2020-05-23 17:20:05', '2020-07-27 10:56:00', 'admin', 3, 1),
(26, 'Avinash Kannojia', '9102422422', 'avinash.bling@gmail.com', NULL, '$2y$10$pxgJuo.jaVblDWmZXlqhVuloro2AlWeFJ.KZYTjnkYcX8TKCBhB3K', NULL, '2020-05-25 09:39:45', '2020-05-25 09:39:45', 'normal', 0, 1),
(27, 'Jushi sinha', '9939602894', 'jushisinha19081999@gmail.com', NULL, '$2y$10$WZtwCzyXpuk43DD7b.wv6.iM1zCqr62ZoRdpoIVBiTObmzBl9gZ/.', NULL, '2020-05-25 14:32:25', '2020-05-25 14:32:25', 'normal', 0, 1),
(28, 'Anup Kumar Gupta', '8878591760', 'guptaanup621@gmail.com', NULL, '$2y$10$bSjPBg4RNPF20ncvVvzQEeeTfy4OQ.mIZrvD9hTl/YWKeqxJprl9C', NULL, '2020-05-26 21:59:30', '2020-05-26 21:59:30', 'normal', 0, 1),
(29, 'Sarwar', '7004926771', 'ALAMSARWAR93@GMAIL.COM', NULL, '$2y$10$oZP5H3VxYD7CirIjl9lp1O8WNLZBFEF4CAVNN3B6p/7ArE9Ee/O06', NULL, '2020-05-27 08:25:15', '2020-05-27 08:25:15', 'normal', 0, 1),
(30, 'Shubham kumar', '6350077683', 'arrickshubham@gmail.com', NULL, '$2y$10$/47E1fD5oPE2GG4s9lkQu.6XcyNVgnwxiODk9Rw5WV3fKL5oU3PWS', '9o8ddYbYTHU9RHrVh52xgXykuChrjOcoTjT4eaFdPEtTsGT3RLEOdhmwWkmd', '2020-05-27 13:36:46', '2020-10-17 00:33:13', 'admin', 1, 1),
(31, 'Faisal Nehal', '7542820292', 'faisalnehal692@gmail.com', NULL, '$2y$10$Fp3rARoKryilC9BQK.bBpeXjU/J6sAM4T9OMFavN8uW268SmeiHK2', NULL, '2020-05-27 19:35:48', '2020-05-27 19:35:48', 'normal', 0, 1),
(32, 'Aditya Kumar', '7667825803', 'adityakumar2966@gmail.com', NULL, '$2y$10$bL86D2nKXDFbZqXvEM4mR.lZ2GatYiqDYFASuFyVWKjO.csZ1vLdu', 'e6uQaNRz9KXDtokUvlI0qplafhHVhaYN8qm5nL5IENzv5amBX4ZJYmZjBEkM', '2020-05-28 10:24:06', '2020-07-22 13:20:14', 'normal', 1, 1),
(33, 'Anshu Keshri', '7070314962', 'anshukeshri567@gmail.com', NULL, '$2y$10$uoYaIenIWSXKm0svrE5L1ezsIdeFKiiWRaPeN9PaMNUbk4DHKwaKK', NULL, '2020-05-28 12:07:42', '2020-05-28 12:07:42', 'normal', 0, 1),
(34, 'Ayush', '8825104327', 'ayushkumar50036@gmail.com', NULL, '$2y$10$hozSTH1EwK8U4nkM3meYhuUtd4kfPm2CSex0wVwVxZBPNpAoOboeC', NULL, '2020-05-29 16:21:21', '2020-05-29 16:21:21', 'normal', 0, 1),
(35, 'Smita kumari', '8210945800', 'smitasunny88@gmail.com', NULL, '$2y$10$oa7A88zx1lalCm6nG5gxAuK4UPOJ0.sqX0V3Snayhb6jJHKw4p6jm', NULL, '2020-05-29 17:17:39', '2020-05-29 17:17:39', 'normal', 0, 1),
(36, 'Aakash Kumar', '9973650364', NULL, NULL, '$2y$10$7IWRel3rusvBrs6dIycvgeS66LJWJbKT50DAj4dCAlTWNY3NXypeG', NULL, '2020-05-30 09:05:51', '2020-05-30 09:05:51', 'normal', 0, 1),
(37, 'Hemant Jain', '7739520527', 'hemantjain11559@gmail.com', NULL, '$2y$10$afNrALsGqsBEKgJFDm.R8OVpEwPKRezJ9b1AZTgJdJo3zNNH2WFHe', '17xuUVdt2XxY8MXgdOsjf5DYXMLPq3io851RqAIoCFe3m4NZ19DWRInD0vT7', '2020-05-31 06:20:34', '2020-05-31 06:20:34', 'admin', 0, 1),
(38, 'Bipul Kumar', '9304227291', 'bipul251101@gmail.com', NULL, '$2y$10$.sUrVDVgHdsDR9QQh3Mxpue8/iGauWtg.iP2ztdTlETQdJwHP71k2', NULL, '2020-06-02 15:00:04', '2020-06-02 15:00:04', 'normal', 0, 1),
(39, 'Siddharth Kannojia', '8210240055', 'skpp.avtar@gmail.com', NULL, '$2y$10$42YRyZgmK79SRKVKOVrCieHrwUwcYf..MZCwRvXd8hRsiCvL6KLDu', 'qdwUVrVPEFyhVt3Gc6ejDDAqVDxTksknMYPeLrDgS325TuyDv2hFoR1Qf7T2', '2020-06-03 08:15:51', '2020-10-04 19:31:45', 'normal', 1, 1),
(40, 'Shravan Sah', '9661591729', 'shravansah638@gmail.com', NULL, '$2y$10$LDZbBF.ZbzCz.DLStQVu6.Thuj5yMf56hjhK.KepeyNicHy91PqXu', 'BsIvlrqjhDWENGlS6HdGzKVI3jNktAo45GYoPwoaWLMFWHBOvSxqvCAVxXg2', '2020-06-03 18:11:50', '2020-06-30 19:55:39', 'normal', 1, 1),
(41, 'Rajan Kumar Thakur', '8578889591', 'rajankumarthakur40@gmail.com', NULL, '$2y$10$VPhipruazZ6ZHYztONSZRe4XanTiCscgSm3HtwB4celwTMigCnCBS', 'UmS96PzQKAGgdtYD1hdNoiezhiQt8Xy9YcW6enOcc2L3Ru9UDkfeVlKJYA6A', '2020-06-03 19:43:00', '2020-06-03 19:43:00', 'normal', 0, 1),
(42, 'SEWACITY', '8507927750', 'mayank.gupta@imsnoida.com', NULL, '$2y$10$kfdD10YiLL6hTR2wP7Wd5egpfDa.AHUnXTHDcpvXLRgA3yfj0CODm', 'xzwhwQkrGUwfejSfDSZ8lzpBZPuC46QuGYri8qCQsjxSQvaZEdepuDxcxYEU', '2020-06-03 20:36:34', '2020-10-03 18:33:33', 'normal', 8, 1),
(43, 'RATAN KUMAR', '9122949867', 'ratandasfbg@gmail.com', NULL, '$2y$10$ehuqjL6DhKZr43/poufHgOrswMG/sY4M7vGcY9njGRnYBklv90NBi', NULL, '2020-06-03 21:39:23', '2020-06-03 21:39:23', 'normal', 0, 1),
(44, 'PRANAV', '6201854490', '2107pranav@gmail.com', NULL, '$2y$10$PT.dnr3uC5zd5diK/cH6pe0avQvp4OcaqMli7IlLeWlJLn6SBiImq', 'Sc8M1cqNVbvx8SylrYGbKzoqh6hyUATk0QTvM1CZXSCcVPckNZsQXxFKzZEB', '2020-06-04 07:34:15', '2020-06-26 09:25:55', 'normal', 0, 1),
(45, 'Gourav Keshri', '9798206816', 'gouravkeshri535@gmail.com', NULL, '$2y$10$IN.m01UT5N3GaiyzJeNZ2eNH9O2rfxEKM1w4ReoOFRTpLiQ4AKpl2', NULL, '2020-06-04 07:45:46', '2020-06-04 07:45:46', 'normal', 0, 1),
(46, 'Prasoon Kumar', '9135690810', 'kumarprasoon204@gmail.com', NULL, '$2y$10$Ye1DRQ6SuIdaT3OgH7xjzONp.kigMtMGvRh8riEdiySbB170aAz0i', NULL, '2020-06-04 16:24:34', '2020-06-23 05:50:32', 'normal', 1, 1),
(47, 'Harshita Agrawal', '8789028968', 'harshitasinghal20@gmail.com', NULL, '$2y$10$y4xjs/RDRwo1spOQAB2WIeyaPFFmZC6ktlrOBJM22ii4uEd2tClmy', NULL, '2020-06-04 17:03:17', '2020-06-04 17:03:17', 'normal', 0, 1),
(48, 'Anshu Priya', '9934698042', 'www.anshupriya.fbg23@gmail.com', NULL, '$2y$10$IGsywAzu/RWfE6xuofBpHeOE2MNRDSaOg2wOn/tEgnrt9ttkfdBqi', NULL, '2020-06-04 18:11:16', '2020-06-04 18:11:16', 'normal', 0, 1),
(49, 'Ashish Arora', '7484962626', 'ashishkhatri431@gmail.com', NULL, '$2y$10$ROMnY2q5jjGQasUEeSIoE.jRuNPJNxJKdIQKIZOiIF5REL8JpIR0G', 'UASRrghHZEJnDEoFKljlJaWW327kkvxLme6Z3plELBAzgMXatkQmmI4fWTsy', '2020-06-04 22:02:38', '2020-06-04 22:02:38', 'admin', 0, 1),
(50, 'Gulshan Kumar', '8877952851', 'rajgulshan573@gmail.com', NULL, '$2y$10$JBAr/29rSsx9T8eJYgmKgOukaYHrLZfOYy3AT0kGRti4WXCryOZZO', 'mDL3LOAGLC73JtEVd9sHMZqRY1Y5JSehDzBLc48FCSQhbNRbYigtXGFxLDZd', '2020-06-05 06:26:03', '2020-10-20 00:29:52', 'admin', 0, 1),
(51, 'Raj', '8084077299', 'nniti0292@gmail.com', NULL, '$2y$10$txwi9StQT4Yx1BDkfheb5Of1C3Xg082g9XKlG6ukFEUx5aYskEHCG', 'veNklmt33ze0PPjPUlm7YSxGeYfTo72wK6iarPxDr8Er4ejuxOhxRK4rIiiL', '2020-06-05 19:53:11', '2020-08-02 14:54:47', 'normal', 6, 1),
(52, 'Shankar paswan', '9110189448', 'kumarikomal8825@gmail.com', NULL, '$2y$10$eD3IyrLN4pHcsTOVlugcQ.ojvLELE/g9M0JgiXhuFcwlB5JeCGNMi', NULL, '2020-06-06 08:51:00', '2020-08-01 10:00:06', 'normal', 5, 1),
(53, 'Jayant pandiya', '8340630018', NULL, NULL, '$2y$10$SWVWqCx94Pn3Ph0hhZRAD..7WFPDX7VSkPMerjVPLA20VbPcDGzlm', NULL, '2020-06-06 14:14:43', '2020-06-06 14:14:43', 'normal', 0, 1),
(54, 'Aditya Verma', '7255872134', 'adityaverma1817@gmail.com', NULL, '$2y$10$NvkVIY2mr44rhu/V1EaaY.rj54ofv74rUx9tStzrqpsjJYhF6P4Qe', 'sXekG0nLl5E0YYQXOLqhe5TEfw9kW64R6kJOI3Zoct1kAF4yNNprp0y1dOAd', '2020-06-07 06:22:08', '2020-06-07 06:22:08', 'normal', 0, 1),
(55, 'Manish singh', '7321096602', 'manishsinghbgp12@gmail.com', NULL, '$2y$10$9HV/9HfgvRgwA41w0cfLTOSNz7lNlVgfhln/NiLCR0fQQiBNM01iO', '5Y0sk6lpqLsCCGjMv99bRqsHlE7hI0Z5MDStgftOhbNIULWEivxCy1KhO6of', '2020-06-07 08:07:57', '2020-07-29 08:07:03', 'normal', 2, 1),
(57, 'NIHALDALMIA', '8797671039', NULL, NULL, '$2y$10$bavQFMf4Fih0Gfif0n8LzufF0wn4hn0quPEFDQwwq9RY/QpuuMXyy', NULL, '2020-06-07 20:35:27', '2020-06-07 20:35:27', 'normal', 0, 1),
(58, 'Ayush Prakash', '8340129643', 'ayushprakashfbg@gmail.com', NULL, '$2y$10$vOHLfI0GwpywmGfiNa.B.eGodGqegAXDZC51QaCqnTymSuMH28sae', NULL, '2020-06-07 21:16:37', '2020-06-07 21:16:37', 'normal', 0, 1),
(59, 'Muhammad kalimullah', '7782920937', 'muhammadkalimullah5@gmail.com', NULL, '$2y$10$YO.Nd/wj4TSAxCFiXiPex.sP.Aeru4Cr596iwHsy17vAriq05Xc9G', NULL, '2020-06-07 21:29:13', '2020-06-07 21:29:13', 'normal', 0, 1),
(60, 'Akshat thakur', '7091059106', 'akdhatthakur0907@gmail.com', NULL, '$2y$10$ZU8.v28mBTe8aZGgSkUr5OeqPVq0usF85JmKmL96hj6528v2ZiIFu', NULL, '2020-06-08 08:15:57', '2020-06-08 08:15:57', 'normal', 0, 1),
(61, 'Anirudh Ladha', '7070427416', 'anirudhladha19981@gmail.com', NULL, '$2y$10$bbI.ltBv/QDY6jHTgJoPnOrJDri/9rSCsDZdCRIYVz6ZAoIgSsTl6', NULL, '2020-06-08 11:57:53', '2020-06-08 11:57:53', 'normal', 0, 1),
(62, 'Mohan', '9304161541', 'mpurty084@gmail.com', NULL, '$2y$10$wDehu9GDOn3pDAFcwKUTyeehzN8xYDPylZ3yw4rprAQdsM2s81PXO', NULL, '2020-06-08 13:39:20', '2020-06-08 13:39:20', 'normal', 0, 1),
(63, 'Tannu priya', '7903051090', NULL, NULL, '$2y$10$g/RenSlx/znZ4sGjOd8vuO7aFRE0HeKLDV0B.WiOSSfssSCpgE8gq', NULL, '2020-06-08 20:35:15', '2020-06-08 20:35:15', 'normal', 0, 1),
(64, 'manish gupta', '7061601963', NULL, NULL, '$2y$10$imXfYcwXEaTdfCqJj2vXp.5NvQ1Jan1OAvOPcu4mFxLdnywZqjLyO', NULL, '2020-06-09 02:15:52', '2020-06-09 02:15:52', 'normal', 0, 1),
(65, 'Ashish Pandiya', '9955591102', NULL, NULL, '$2y$10$GXLYDiGGbkSzliHCiDi8JeaxVehw6sNRvqIYFQU7Ygo/wp4fXSGEi', NULL, '2020-06-09 09:14:29', '2020-06-10 20:23:49', 'normal', 1, 1),
(66, 'Ankit gupta', '7991177461', 'ankitjee854318@gmail.com', NULL, '$2y$10$K7G85qep120PMi9Txgmm5uThfhzX34WTRejRb52NQIn0urHQ7rAj6', NULL, '2020-06-09 11:02:34', '2020-06-09 11:02:34', 'normal', 0, 1),
(67, 'Jay', '7493992711', 'jayrajkumar099@gmail.com', NULL, '$2y$10$mxPFeETMyZFgyp/FOSX5xeDuScODTm3xdbRw3Cc3EejGIZ9.gzgW6', 'i43SPAuVs5SyvmYR54IhRUnwENv676JeRb5XwOPZsVQ5dpfB89s2m4LMiTTU', '2020-06-09 19:13:20', '2020-07-06 07:22:29', 'normal', 2, 1),
(68, 'Sandeep food zone', '8271421287', 'sanjeev.fbg.34@gmail.com', NULL, '$2y$10$NHejqG/PthovjBm1yqoTfebdj2BIEcf/rxsQkORdIIPaeYwc/CX76', NULL, '2020-06-10 08:10:02', '2020-06-10 08:10:02', 'normal', 0, 1),
(69, 'Pranav patel', '7294043272', 'pranavfbg@gmail.com', NULL, '$2y$10$GeDD9jyfhX4hnFnpDsV2Vepl9TU73oaOAOGtCykPJPK/e0rQys9Bm', 'BlCbDp23w7Wrll4vSZ1AruGUpLN77cYG06FQccmpSbuE4vOpUpl3G652YU6J', '2020-06-10 10:55:21', '2020-06-15 11:13:14', 'normal', 5, 1),
(70, 'Neha', '9199750332', 'rahmatkhanrk3002396@gmail.com', NULL, '$2y$10$1E82/Bct7Vz/X72WwF1R3.H42VVRa3MC/Gpy7A387r5jRiWdpnRa.', NULL, '2020-06-10 12:59:19', '2020-06-10 13:31:55', 'normal', 1, 1),
(72, 'Ashish Golchha', '7371842743', NULL, NULL, '$2y$10$jwUv7ZfM.3IRMMpsokXJuuOSKTTw1Uo5rVXoBmZ5wI1v9yGBKNHGK', NULL, '2020-06-10 22:09:30', '2020-06-10 22:10:40', 'normal', 1, 1),
(73, 'Pooja', '6206757696', 'kpuja8410@gmail.com', NULL, '$2y$10$J/9mSQlTDify.eWOJjgOk.uCta12ibpRw/NGRgdi/9H2KwxGMquHG', NULL, '2020-06-11 12:55:08', '2020-06-11 12:55:08', 'normal', 0, 1),
(74, 'Jagdamba enterprises', '7277356005', 'Siddhant.kr54@gmail.com', NULL, '$2y$10$mpH3xRBxsirzylWwWohXduOVqDhwnqMwG02almX7hsEtZOhEg1tYG', 'AMPnT4Yo0RW77jFpfLt0mve8Pd0LzbcVpvBun8ghc4zzaPDZuA57O5XyQZqs', '2020-06-11 12:56:34', '2020-06-11 12:56:34', 'normal', 0, 1),
(75, 'Ayush keshri', '8210169448', 'ayushkeshrifbg@gmail.com', NULL, '$2y$10$QHcQopSAmY2nKfeQ.4MNmuBVeawl/1cIgpTfu7OyiwHppWDCVieOO', 'oxxGUy9PtgFjMjF33aPqjFwxrN34Us4qIQ2TjxA2PVxNlOmbVnsDwyCa8tbv', '2020-06-11 14:23:44', '2020-09-01 22:28:28', 'normal', 1, 1),
(76, 'Aditya Keshri', '7004330365', 'keshriaditya20@gmail.com', NULL, '$2y$10$faw9QyZj4dOqptQWqpEgF.EgUQcmY2CEjhkGM1HawSI6FxVF5ZAkO', NULL, '2020-06-11 14:23:46', '2020-06-11 14:30:22', 'normal', 0, 1),
(77, 'Rohit Kumar', '7979040438', 'rohitroy1050@gmail.com', NULL, '$2y$10$5UStdNaiAKNE/16Xuw6IGO1x8lkthK12XNC9J3WKBBjUYFdXwD2lK', NULL, '2020-06-12 14:36:52', '2020-06-12 14:39:10', 'normal', 1, 1),
(78, 'Rohit kumar', '7543874133', 'rohitroy1050@gmail', NULL, '$2y$10$a43h51Z8mCnJo8q7.BoYSuZctA0mbgKvDpPvdkRToj40PO1hTcuJa', NULL, '2020-06-12 15:01:58', '2020-06-12 15:11:38', 'normal', 2, 1),
(79, 'Abhishek raj', '9798756231', 'abhishekrajfbg7070@gmail.com', NULL, '$2y$10$JTieg3gyBnnrcUPXZ0nGhe5tNxMxv6frIMdpsKdS/a4jCMrgbHBTy', NULL, '2020-06-12 15:20:11', '2020-06-12 15:28:04', 'normal', 1, 1),
(82, 'Yash kedia', '7654826180', 'yashkedia51371@gmail.com', NULL, '$2y$10$LEZfgTa0/2MvuJZdUkhQAeAuPvPTzNdC82EtVQ5OKFVpPZrhqfCu6', NULL, '2020-06-13 11:13:21', '2020-06-13 11:13:21', 'normal', 0, 1),
(83, 'Prateek Gaurav', '8292057248', 'prateekgaurav6465@gmail.com', NULL, '$2y$10$0amq/Wf2yaItmSZ39GH3DORO6g7.XbHpoceeFoDw1.nNoKLyRi4/a', '8ZCfZn1JdUAFx59tUQumeabD32VT7Yqg9murQxQBSbJg92nfHJffiX4uNP2X', '2020-06-13 11:40:05', '2020-09-14 16:25:24', 'normal', 0, 1),
(84, 'Prateek Gaurav', '7091651294', 'prateekgaurav6465@gmail.com', NULL, '$2y$10$4Fg7M9zuBoCHu4fxi1AGYe.FCGi0vcYuJUqYHCVilg0f1Z7Vp275q', NULL, '2020-06-13 16:03:56', '2020-06-13 16:03:56', 'normal', 0, 1),
(85, 'Aditya Kumar', '8340518586', 'aditya70074051@gmail.com', NULL, '$2y$10$BsNsfYc1OLHVagy0b7VkveHoerAo5Y3kVC0u4nHjjPBvi1wgZQSFK', NULL, '2020-06-14 10:19:44', '2020-06-14 10:22:23', 'normal', 1, 1),
(86, 'Priyesh', '7261897374', 'Priyashagarwal30@gmail.com', NULL, '$2y$10$9hc9h5mJD7kQNg66M0JvJuHRjBHm19MuAnmN62JacGI84KCveL1KK', NULL, '2020-06-14 19:57:26', '2020-06-14 19:57:26', 'normal', 0, 1),
(87, 'Aditya Keshari', '8540048899', 'adityakeshari1997@gmail.com', NULL, '$2y$10$AWkdvxGrURNQKDlImCF3GeaeejxKHyxmP4iXc0f4M1amngb.IP3bi', NULL, '2020-06-15 09:07:09', '2020-06-15 09:10:44', 'normal', 1, 1),
(88, 'Bipul Kumar', '8407094458', 'bipul251101@gmail.com', NULL, '$2y$10$na9cWvzKIpOy8mcYLYyrguA9EuGxwNeLrQjVmBkh17WPui0F1kLTi', NULL, '2020-06-15 11:06:33', '2020-06-15 11:06:33', 'normal', 0, 1),
(89, 'Dinesh.R', '6369290542', 'dineshr181220@gmail.com', NULL, '$2y$10$uyXFAPDJjCgqc/BzTWn9kuHKlrIQWJ122TlM7IUeuBueyzf/LzYfG', NULL, '2020-06-16 11:34:40', '2020-06-16 11:34:40', 'normal', 0, 1),
(91, 'AYUSH PRAKASH', '8229072187', 'ayushprakashfbg@gmail.com', NULL, '$2y$10$ICcihAX41awMq5BbT1/6bO1jXZVDAkmAilMFowHc0TbmpjWNVlJzm', 'SEw0ZvFVgLYBIVItQHzyHqYUwQZn4kfeGAjMSTnhev22nzKpaYpdrbZeup7R', '2020-06-17 06:33:03', '2020-06-17 06:33:03', 'normal', 0, 1),
(92, 'Rishav', '8051284158', NULL, NULL, '$2y$10$7ZEqm2ZA69g8ZS7ehPShweJzUF8B8Mx7IUsDjXENwObP4NUCur6QC', NULL, '2020-06-17 08:05:44', '2020-06-17 08:05:44', 'normal', 0, 1),
(93, 'Aadarsh kamat', '7992269526', 'aadarshkamt5678@gmail.com', NULL, '$2y$10$UOxpaeM.bvjKBF4pGfItRuibF6rLPws3UvxODEMKzG.zPRHuBsdR.', NULL, '2020-06-17 08:33:19', '2020-06-17 08:33:19', 'normal', 0, 1),
(94, 'Aman raj', '9123472829', 'amanraj9123fbg@gmail.com', NULL, '$2y$10$6xRtUKDGtwoLQjyROIM13esgnK2V3SApOmBBgaml3vk.B23OesUwm', NULL, '2020-06-17 19:44:22', '2020-06-17 19:44:22', 'normal', 0, 1),
(95, 'Sakshi Ranjan', '8949598369', 'sakshiranjan648@gmail.com', NULL, '$2y$10$ih/WaDreKgW.6RzK6l.xCOdnBr0ubvkn1oWq/pChZJEC2uNXlufuW', NULL, '2020-06-17 21:45:47', '2020-06-17 21:45:47', 'normal', 0, 1),
(96, 'komal agrawal', '8084365600', 'komalagrawal244@gmail.com', NULL, '$2y$10$xKe4YfgGdJpkxzKb7IrRGOTUr1HGVSWYv7/5sKdYdSDwOvhCUdmeO', NULL, '2020-06-18 09:02:32', '2020-06-18 09:02:32', 'normal', 0, 1),
(97, 'Kumari Mamta', '6202440477', 'kumarimamta0635@gmail.com', NULL, '$2y$10$WiDrqBTc5R1JxzKsurNJQ.JW1KUZr5in90n.hUaSLVQBKGNdjy/ca', NULL, '2020-06-18 10:30:28', '2020-06-18 10:30:28', 'normal', 0, 1),
(98, 'Kiran Jain', '9117431231', 'jainkiran808@gmail.com', NULL, '$2y$10$EhsX.auqWee0GkL/PVx4luHc0n2ePp2bPowHJfQaA0S51yQR8C7tC', 'Ki83BcKk2giBRbBXGejIEZbqiM1i5U17GZDNz9rS271t8oFzMypcnaovZ1dl', '2020-06-18 14:07:52', '2020-06-18 14:07:52', 'normal', 0, 1),
(99, 'Azad Ansari', '9097852712', 'azad1232ansari@gmail.com', NULL, '$2y$10$le67fYsrcFypv/dcHntck.CwSQzpIwFEDh7qORG2NSKY26zSPgRn2', NULL, '2020-06-18 14:12:36', '2020-06-18 14:12:36', 'normal', 0, 1),
(100, 'Mahendra Jain', '9810793619', NULL, NULL, '$2y$10$C/WuGjuKTduuF4Iej0wBleANyI32u.AhgkAJpfZ28OzxieXoWyiuW', NULL, '2020-06-18 14:24:06', '2020-06-18 14:24:06', 'normal', 0, 1),
(101, 'Aditya Bhagat', '8603386986', NULL, NULL, '$2y$10$oZarj0L8BI2.utbqZ2mXd.7PO/Rl6tHe16gmFPcNaDOT05uQM/JOK', NULL, '2020-06-18 14:31:46', '2020-06-18 14:31:46', 'normal', 0, 1),
(102, 'sagar parashar', '8507746181', 'rajs71154@gmail.com', NULL, '$2y$10$0ao4OUs0OuqVQQnLOwzmbewsKpm7/DvQ01X5ai7ni0Shy1BsPs/Em', NULL, '2020-06-18 14:35:35', '2020-06-18 14:35:35', 'normal', 0, 1),
(103, 'Harsh Jain', '9304806928', NULL, NULL, '$2y$10$YwmeKMNBAnh1OqyzaX2GfOOApyhrXXPDpKnBFtqAgeCJPBBjsttpe', NULL, '2020-06-18 14:46:56', '2020-06-18 14:46:56', 'normal', 0, 1),
(104, 'https://www.instagram.com/p/CBBA0PgAQmB/?igshid=1c9wujae2ru8u', '9685897980', 'www.vishurajput9078@gmail.com', NULL, '$2y$10$DAC/UVaC2dlVQ3Cg298eoONt.KHo1yilAYAHv60vT.naTAbDurfyC', NULL, '2020-06-18 15:47:02', '2020-06-18 15:47:02', 'normal', 0, 1),
(105, 'Anjali Bansal', '7367897516', 'anjalibansal124@gmail.com', NULL, '$2y$10$zqLCz89mTtKc89S/VlZ8TeuxjVNWytK9FysycQMjVwmEHeQ8rYCTi', NULL, '2020-06-18 17:07:51', '2020-06-18 17:07:51', 'normal', 0, 1),
(106, 'Vineet Kumar', '9304227415', 'vineetkr9304227415@gmail.com', NULL, '$2y$10$20IIs7O8oqj/Wn.A0.xveeiyKV4zp.pulJ7mslrUjPPReGvoc56hq', NULL, '2020-06-18 17:36:42', '2020-06-18 17:36:42', 'normal', 0, 1),
(107, 'Aditya Chandra', '7991139062', 'ac5121957@gmail.com', NULL, '$2y$10$xRW0WDrtFRP8jxIJaOkFj.60r6wQMz5z.TvBBhlGxr9OozXVTg8Ni', 'ssRvtJ9oJZDX5Xame2zS3IyRGW4YnljtPg7nWkbITNWtdM5dw2qmP7oVWf9X', '2020-06-18 17:52:56', '2020-09-13 22:41:38', 'normal', 0, 1),
(108, 'Yash Samdaria', '6207324548', 'samdariayash@gmail.com', NULL, '$2y$10$QmtC3j34PqeYQqfDslmFDueFDT6.rJoN4iKTZeQp.T1Q5bw2v3./y', NULL, '2020-06-18 18:45:16', '2020-06-18 18:45:16', 'normal', 0, 1),
(109, 'Aryan', '8102742623', 'aryangolive692@gmail.com', NULL, '$2y$10$hAUvm0aWiIwQfZDxX5EpPeT4DkD9hEj73WjtTYTYrmKOPFxc/GGC.', NULL, '2020-06-18 19:54:17', '2020-06-18 19:54:17', 'normal', 0, 1),
(110, 'Preety', '9142091314', 'preetypooja@gmail.com', NULL, '$2y$10$9DUKI2..KxF/7BE0rmWWXucAoSnkKBrUyzgjy3m6URSxmxiKRpDf.', NULL, '2020-06-18 19:57:04', '2020-06-18 19:57:04', 'normal', 0, 1),
(111, 'Bakhtawar Ali', '8092064873', 'bakhtawar007@gmail.com', NULL, '$2y$10$77.ZMfkA.kLKSAU55QqtO.anz3bcHzBeckK24UAzFPbV.bkqQzs4a', NULL, '2020-06-18 20:09:47', '2020-06-18 20:09:47', 'normal', 0, 1),
(112, 'Raghav', '9199818372', NULL, NULL, '$2y$10$34dkT8VqzqGMj.ox5O0yxuWI4VCmf.Q5IOuF8t9OzKwzdAtb/1HGO', NULL, '2020-06-18 20:10:26', '2020-06-18 20:10:26', 'normal', 0, 1),
(113, 'Rohit Singh', '8210126812', 'rohitsingh04mar@gmail.com', NULL, '$2y$10$/FkSbghVE4l/tmtsHqvUluS5oH2LAD9Ylnw48aIB8NtipSqzdddHe', NULL, '2020-06-18 20:16:09', '2020-06-18 20:16:09', 'normal', 0, 1),
(114, 'Raunak Jaiswal', '8210971189', 'raunakjaiswal12345@gmail.com', NULL, '$2y$10$kl9k0qa9X4dy/EckfCJJ2O.RqIdqu6z3bHRJmaZmp0dKzBfmCXeIm', NULL, '2020-06-18 21:04:37', '2020-06-18 21:04:37', 'normal', 0, 1),
(115, 'Raj Keshri', '9065934767', NULL, NULL, '$2y$10$q.tq.1hVgE95yCs2WBiQIeFSVtqHO11ffZqjUgaFCK/s0iOHnEd.S', NULL, '2020-06-18 21:41:37', '2020-06-18 21:41:37', 'normal', 0, 1),
(116, 'Abhijeet', '7070308942', NULL, NULL, '$2y$10$vFyONFjxmyae9dtWlJQOoOMdt1bChWHUy/9hBTih92jysnmPKUOOG', 'X5vJtuM4VYzWgJF7dlBQkwXOcGRzSHwG0AXvCatHvPjqITmqsV2hVYCAk8GT', '2020-06-18 21:45:55', '2020-06-18 21:45:55', 'normal', 0, 1),
(117, 'Payal Gupta', '6203200938', NULL, NULL, '$2y$10$PsZgHtfJzmxPI8A2/cy6weceL7YbT1No6FWdM3USZYX/lkwj73xl.', NULL, '2020-06-19 06:30:04', '2020-06-19 06:30:04', 'normal', 0, 1),
(118, 'Prahlad Kumar', '6200739621', 'kumarprahlad316@gmail.com', NULL, '$2y$10$q8.Ne3iBQLu474/Eh3H2XeXA7UFgCtrEDdSZcnjAamYdwjwFABWS2', 'RkcRRENlwTNZVx0Drng5rft603zr2FxSVZDWDoBNb3I9ErKdT13C39APejye', '2020-06-19 06:41:16', '2020-06-19 06:41:16', 'normal', 0, 1),
(119, 'CHUNILAL AND COMPANY', '9546515218', 'piyushkkumarbhagat5@gmail.com', NULL, '$2y$10$wFnV07ZHWNkzEeULsbYZVe5G26Ab/0L9URraEvxi3ZjbehIR0BvlK', 'QoTvuGxV7Ppf5z13GV5u63quWzvfiqv7XeidogaMZU4jbzE4QoEAbt95k0C1', '2020-06-19 06:43:37', '2020-06-19 06:43:37', 'normal', 0, 1),
(120, 'saurav keshri', '9508957095', 'sauravkeshri1231@gmail.com', NULL, '$2y$10$4cbs7zl7yzUlcv.2HhsrHO6BWnTrJGikHvuLpECMfa8ekavzPsvLu', NULL, '2020-06-19 07:47:54', '2020-06-19 07:47:54', 'normal', 0, 1),
(121, 'Sakshi', '8340249211', 'sakshiketan16@gmail.com', NULL, '$2y$10$SGotqcqtoP3BeD5xv1itcey5coZcg9stQrumlukcVlIiGEEW6YmUu', 'zpEXKAmZbIM4hCdWWeQ26YdbfLHG5UHM9ymFP5uYI9mMultBnLV58ATJdQXw', '2020-06-19 09:39:30', '2020-07-15 21:12:46', 'normal', 0, 1),
(122, 'AJIT THAKUR', '7277710706', 'ajitthakur0304@gmail.com', NULL, '$2y$10$fKguXnehzMcQUImizIxov.iVR3sX7ygJXqPhiIDgwXTrUL0GRovli', NULL, '2020-06-19 09:40:37', '2020-06-19 09:40:37', 'normal', 0, 1),
(123, 'Bipin Kumar', '8409993911', 'mehtabipin80@gmail.com', NULL, '$2y$10$0f5EXi6NfG8MtZTRdo2PSO546rtSqxbxXOs5plF8SJftvOJRXpQYO', NULL, '2020-06-19 09:44:11', '2020-06-19 09:44:11', 'normal', 0, 1),
(124, 'Abhishek Gupta', '9473286842', NULL, NULL, '$2y$10$1c/UyvqrWRYhInMsaRTKe.uvSFcGuI5I3oDxU8jaDZ.WI4Y5RTFzi', NULL, '2020-06-19 09:49:35', '2020-06-19 09:49:35', 'normal', 0, 1),
(125, 'Rakesh Kumar', '7091570886', 'ranjankumarranjan216@gmail.com', NULL, '$2y$10$FeSSmjzhYkXjWJlh3Cn66uFfGncjbDj5tY9Cd890qMbx7ixND7R62', NULL, '2020-06-19 09:59:32', '2020-06-19 09:59:32', 'normal', 0, 1),
(126, 'Kirti Vats', '9199368562', 'vatskirti639@gmail.com', NULL, '$2y$10$ehRgHyi6Ev0pCvN/SNp9zu.KrflChbazAw3KTnMjCh9m8CfzSMSo2', '1aPhwPRkluD7uTteNWN2n3r2hPuwVOdcnNsQ1mbgi55toVk2KaFxQH4927VW', '2020-06-19 10:03:40', '2020-06-19 10:03:40', 'normal', 0, 1),
(127, 'Pranav Srivastava', '7755073289', 'pranav149209@gmail.com', NULL, '$2y$10$DkUam/3HakHJjiHKj6WuoeMgy0Bc8/at6Q7jdaWHHiphF9gxHagui', NULL, '2020-06-19 10:50:35', '2020-06-19 10:50:35', 'normal', 0, 1),
(128, 'shiwangi', '8617527473', 'shiwangi851@gmail.com', NULL, '$2y$10$QgUll1HWzuKBQS/lFpaWje9yoLCCEJm7ZFjWbi442lNM0sGqk9p1O', 'fF6b7m6x01DEa3Hgj7yhuHUf0ZsNhMS1Nt3SjtdvxYc8KUJc8eECjUionz42', '2020-06-19 11:13:27', '2020-10-07 01:46:05', 'normal', 0, 1),
(129, 'ANISH KUMAR', '9508016277', 'anish1922002@gmail.com', NULL, '$2y$10$iq91k4rfU2MzsQGmeesLXONsXP/b8iJmPaGsIb/6gZ3rBkQ1jmkJu', NULL, '2020-06-19 12:01:20', '2020-06-19 12:01:20', 'normal', 0, 1),
(130, 'Jahnavi kanth', '7992464312', 'kanthjahanvi2000@gmail.com', NULL, '$2y$10$hGChrGIp1MrjlAsBmD7rl.wgZ9wHI.5HGDX8WUkt7d0KvXj9AnxX2', NULL, '2020-06-19 15:13:12', '2020-06-19 15:13:12', 'normal', 0, 1),
(131, 'Ayush keshri', '8210169488', 'ayushkeshrifbg@gmail.com', NULL, '$2y$10$sYb9y1nOj7XRM5bpzqS14uRNs/cwuJWNTXwqWgU2ztWGiPDrda7H6', NULL, '2020-06-19 16:50:23', '2020-06-19 16:53:18', 'normal', 1, 1),
(132, 'Ruchika jain', '8102308107', 'prateekjain267@gmail.com', NULL, '$2y$10$CFx0/6h5XdmRO2ZDhhpvZuqHAnoTAq7Hy/NmfIH1B5AXMqUBQL6gu', 'QP4S1b0x1T6xFlM7z0psKs2SftRnEkkmigArXeO91wmeryYANVT1VGArlafx', '2020-06-19 19:22:41', '2020-06-19 19:22:41', 'normal', 0, 1),
(133, 'Sunny bhumihar', '9334695047', 'sunnybhumihar7@gmail.com', NULL, '$2y$10$PQEwyaogm8MGDLSv0KLpnuBEGue14IfYRvyXzo03hWNlDDaJi6QKO', NULL, '2020-06-19 19:38:50', '2020-06-19 19:38:50', 'normal', 0, 1),
(134, 'Rahul Swarnkar', '7979812443', 'swarnkarahul@gmail.com', NULL, '$2y$10$3oKqTbgHKy9yK2.4TAxGKOTIl2HaAnG7ebtq8upgXD0JgBI.Q2X7a', NULL, '2020-06-19 20:12:04', '2020-06-19 20:12:04', 'normal', 0, 1),
(135, 'Neeraj Kumar', '9430040210', 'chitranshneerajkumar@gmail.com', NULL, '$2y$10$OWUmxtABaDCapAM4NP3vGOgGT4ZSXwmRSvYo4WKvVkX7h1.P6p0Ve', '6KE0qiO2d0ydpBBhzHr8uIdPxiESu79PLk3HXYhTtB0BzqRWIQrBRG4wwyAV', '2020-06-19 20:13:48', '2020-10-15 14:39:29', 'normal', 0, 1),
(136, 'Nikhil Mandal', '9955067932', 'nikhilmandal92020@gmail.com', NULL, '$2y$10$SmFsM.inGLnTTl/SXhRmFO5MO4xpff9CUM7FCsFQFKkFaZeY3exVC', NULL, '2020-06-19 21:23:51', '2020-06-19 21:23:51', 'normal', 0, 1),
(137, 'Dhiraj kumar Mandal', '8809634605', 'dhirajmandal506@gmail.com', NULL, '$2y$10$1CvSACuXI/hTgcHn5NX3oufKVq7jx8p9lFyW5CqXwxxiW5Taa.dke', NULL, '2020-06-20 04:52:01', '2020-06-20 04:52:01', 'normal', 0, 1),
(138, 'Bhavya mishra', '6204771468', NULL, NULL, '$2y$10$1GRaMn3hj/5uIedzRtc8juDEYM0oNGpaxAY3.brkZIUVo65YIg91C', NULL, '2020-06-20 08:18:06', '2020-06-20 08:18:06', 'normal', 0, 1),
(139, 'Sumitraj', '7050344407', 'sr934834@gmail.com', NULL, '$2y$10$N0BchpiKK9LmXJmt5rz7e.rNAeSKwtRFOYGVFMy7gTe7DDnGtlcn2', NULL, '2020-06-20 10:45:37', '2020-06-20 10:45:37', 'normal', 0, 1),
(140, 'Anupam chaudhary', '9097088875', 'anupamchaudhary634@gmail.com', NULL, '$2y$10$4lrAu.Ab.PbALo82EppLku/hhFX2acH.E8v3LhFaXEbXTEBitp2f.', NULL, '2020-06-20 14:38:43', '2020-06-20 14:38:43', 'normal', 0, 1),
(141, 'Rashid Ibrar Khan', '8210391137', 'rashid_ibrar14@yahoo.com', NULL, '$2y$10$yO5n4RGbjQQghpq0u294QuAhP1tpyx8hKwcA03fRbE2TMzu3EAmJ2', 'XvSkXVB2x0aHwk6Ek9ue5cDy6fT2NwcSWmaPsUJGawRURCeq41wSVINRY89i', '2020-06-20 15:13:07', '2020-06-20 15:13:07', 'normal', 0, 1),
(142, 'Shreyasee priya', '6201547079', NULL, NULL, '$2y$10$AEnsZ07YzbMV9phr6tTZluopkUVPQHKaROlkamEkbudLE6psitaO.', NULL, '2020-06-20 16:58:35', '2020-06-20 16:58:35', 'normal', 0, 1),
(143, 'Sunil choudhary', '6200035079', 'sunil10989291@gmail.com', NULL, '$2y$10$lhbImE0nzNtXRAGefMBTR.V2AvLfPUUOQgI3kjDILVAxDJ1k/sSpq', NULL, '2020-06-20 22:01:46', '2020-06-28 15:35:02', 'normal', 5, 1),
(144, 'Alex', '8709625487', 'dinusharma601@gmail.com', NULL, '$2y$10$oX3j5qNuCnsOS59clE7vFucrfb.pcRpcP9va7jeliAqAfC6pAcnfu', NULL, '2020-06-21 05:55:25', '2020-06-21 05:55:25', 'normal', 0, 1),
(145, 'Adarsh', '7634918366', NULL, NULL, '$2y$10$XdWMbCZWbMXQocvdhXBMEOKzhTos5b97nbLL5VctJ3iYOraOp4wr6', NULL, '2020-06-21 07:14:16', '2020-06-21 07:14:16', 'normal', 0, 1),
(146, 'Aditya', '7372860114', 'kumaraditya20145@gmail.com', NULL, '$2y$10$2NTgfrZcg0WNas0nwj/nh.LEFOZma3dOvKh6WFRWtpcNhHv6zQAvK', NULL, '2020-06-21 11:42:46', '2020-06-21 11:44:59', 'normal', 1, 1),
(147, 'Sujal', '7903080998', NULL, NULL, '$2y$10$MNfPCWn1XjvbWGBPBgogl.DFmNQMfKDQcpiZsfTzubvmK8I4S8Utu', NULL, '2020-06-21 12:44:25', '2020-06-21 12:46:26', 'normal', 2, 1),
(148, 'Mithila Devi', '7992219154', 'devimithila70@gmail.com', NULL, '$2y$10$M20SvvpwpjmXjxze.wI2E.Hu3/lUPi/hU8SIu3xlbz/kEjecK/Nfa', NULL, '2020-06-21 17:09:00', '2020-10-11 21:33:33', 'normal', 2, 1),
(149, 'Dipti agarwal', '9199979860', NULL, NULL, '$2y$10$jCm/ojNQAJBzz6cJi2eIkuUFqiRJd1i42JnZmb39BAXzRLSETUb66', NULL, '2020-06-21 18:26:27', '2020-06-21 18:26:27', 'normal', 0, 1),
(150, 'Unnati Infotech', '9350807721', 'unnati.info16@gmail.com', NULL, '$2y$10$2VxhMwVIURigPQiTsffK0u9wHBmfRvB16IU4pseg5l9afb9gOazEW', NULL, '2020-06-21 21:07:15', '2020-06-21 21:17:24', 'normal', 1, 1),
(151, 'Saurav Kumar', '9801849777', 'saurav4sk@gmail.com', NULL, '$2y$10$KaX5jiAMjqOKhd96vjnAAeNCHZIwSHRZwAM7c2pe0ZzLtq0PX9M9W', NULL, '2020-06-21 21:12:48', '2020-06-21 21:14:25', 'normal', 1, 1),
(152, 'Dhiraj patwa official', '9801608795', NULL, NULL, '$2y$10$PSEyHfozpYG04jgx8aNoYOx/2QsPY35KPt0PWHgb.wOkQK3ynOcvS', NULL, '2020-06-22 09:17:56', '2020-06-22 09:17:56', 'normal', 0, 1),
(153, 'Ranjana Pandey', '7631526637', 'ranjanapandey968@gmail.com', NULL, '$2y$10$5cRmJ99rW2ji7YOO9BxPv.j2dTsH/tn4VkFKbBW2DcM2EhZKgdQDG', 'rzY7G4yYl0SVqQIx5ucC9kkGsyeyDmbUE4yyQrJ1S81HYXNdltNM8EtuZI70', '2020-06-22 18:02:41', '2020-06-22 18:02:41', 'normal', 0, 1),
(154, 'Kameshwar  prasad', '9304227427', NULL, NULL, '$2y$10$ptGux1GYTyFigj69HfvjrOBLrw.VEhKoC7sHPz.qoCqpy0QiQMKe.', NULL, '2020-06-22 18:30:57', '2020-06-22 18:30:57', 'normal', 0, 1),
(155, 'Ritu Singh', '8051377944', 'vishufbg@gmail.com', NULL, '$2y$10$1lGcdTjPP8/rf02oieao/esCEX3nsWl/OTM/E53FvDfXiPAYQf3ua', NULL, '2020-06-23 06:11:14', '2020-06-23 06:11:14', 'normal', 0, 1),
(156, 'Nirmal Jain', '9507769135', NULL, NULL, '$2y$10$aZwTGtbTPaYh2jgl./1p4euwOY473XfBBmM3UrlT7eg/Ahm705r7K', NULL, '2020-06-23 14:50:18', '2020-06-23 14:50:18', 'normal', 0, 1),
(157, 'Avinash jha', '8651448062', 'aashokjha786@gmail.com', NULL, '$2y$10$gBmM3CkjUb5wJLkf49U7TuEqNcfwW4A4/Tw1GJFI.DZ7ACIZPv3Qi', 'tFawzfpqluK7Dn89Jgvhk2pRPmAmnCzPiPQ2IWA0y5MbgZlSQ5aFLEnlxKcU', '2020-06-23 16:19:42', '2020-09-04 22:56:32', 'normal', 1, 1),
(158, 'Jain saheb', '7277875317', NULL, NULL, '$2y$10$6CianxYDA483j8C1i3mGSORWZNC6m.ZNR4i7bx6tn5jOtVu.njuV.', 'GEiN6vwwMlQ9ugecY2oHZN3geZTY6gZrHK5B1stt1n7fxXJc1a7CMDacA7IL', '2020-06-23 16:20:48', '2020-10-28 16:04:44', 'normal', 2, 1),
(159, 'Eklavya chauhan', '6204023609', 'eklavyak39@gmail.com', NULL, '$2y$10$VtIpffRKzIek5NP1tQ4r/evaABiS4GrhxGM3HL5xW9EbemBnpGz8a', NULL, '2020-06-23 17:37:48', '2020-06-23 17:37:48', 'normal', 0, 1),
(160, 'Devanshu keshri', '9631262219', 'keshridevanshu36@gmail.com', NULL, '$2y$10$kKG40nQgAa3YGc368VHkUOPacj2oB1SHBSYNZFyUWkwqN2U0m/0ye', NULL, '2020-06-23 19:01:48', '2020-06-23 19:05:38', 'normal', 3, 1),
(161, 'NISHKIRTY', '8292403094', NULL, NULL, '$2y$10$MJ..R0L956JUTrxk5OmWG.a3Wrr9Y/Ug6b1EWKTopbpCik3PMKstW', NULL, '2020-06-23 19:53:49', '2020-06-23 19:54:23', 'normal', 1, 1),
(162, 'Divya Surana', '9199792496', 'divyajaina1b2c3@gmail.com', NULL, '$2y$10$cC8mi27AvxY4JENngv.CZ.fsLnc7NSWLBWOiEvHuwXv87gg94x3Ki', NULL, '2020-06-23 20:32:15', '2020-06-23 20:32:15', 'normal', 0, 1),
(163, 'Purushottam kumar', '6201815465', 'kumarpurushottam431@gmail.com', NULL, '$2y$10$t1sHHnLxTn8GmG/Dh8sQDuiOQ.huTtzGE80NxOB7fsmzqCcW4fnwq', NULL, '2020-06-23 20:39:53', '2020-06-23 20:39:53', 'normal', 0, 1),
(164, 'Smriti sajal', '9525038331', NULL, NULL, '$2y$10$D2ICotTGELuN1gZfAunESeU2vGUqExlyHDXmid5ZyzISuTtYdxURW', NULL, '2020-06-24 02:43:08', '2020-06-24 02:43:08', 'normal', 0, 1),
(165, 'Vaibhav kumar', '7367950551', NULL, NULL, '$2y$10$NG8SM0tRX7j.1bRUqPB8dewQ0lrS/ZdfDPZuNeXa8ohr0zNoG2mnW', NULL, '2020-06-24 08:09:27', '2020-06-24 08:09:27', 'normal', 0, 1),
(166, 'Deepak', '7070013598', NULL, NULL, '$2y$10$rmgTyktNXoEXhHAJuguEAOWIPZwYo.Oj92l1toUUwn9HQ4u1WTDim', NULL, '2020-06-24 10:01:48', '2020-06-24 10:01:48', 'normal', 0, 1),
(167, 'Seema agrawal', '7979000686', NULL, NULL, '$2y$10$Qvp6VTfXNbTSCtvsK1TwLewkofRFD5n2Q3KpTuhmzahtZlpHTQS3q', NULL, '2020-06-24 10:31:08', '2020-06-24 10:31:08', 'normal', 0, 1),
(168, 'Anayt Rahman', '7991168053', NULL, NULL, '$2y$10$mysws1ELT5V8v3yCTo.nHuvj2tSboFZ6MmaUlaFzyHjYSS1oCofMW', NULL, '2020-06-24 11:03:38', '2020-06-24 11:06:17', 'normal', 1, 1),
(169, 'Riya Agrawal', '7717709276', 'riyaagra1999@gmail.com', NULL, '$2y$10$exeo1ESrwNglrIPvQ1BAa.xhe/34VWT8ZifUEE32/77slIkxsTENu', NULL, '2020-06-24 12:24:42', '2020-06-24 12:24:42', 'normal', 0, 1),
(170, 'Amar Agrawal', '6287511252', NULL, NULL, '$2y$10$DGWIVvNKm8BIvxM4CUKm8e7.nFB.WzbWQ7pivrw4eI0hTq2o8n9OO', NULL, '2020-06-24 12:48:26', '2020-06-24 12:48:26', 'normal', 0, 1),
(171, 'Nikhil Mehta', '7906886384', 'nikhil.mehta@imsnoida.com', NULL, '$2y$10$qoDnQ5erL/cN15WEqm02.eV.UBLXHyXlhjxvizwWvWW7CgzSOFyUy', NULL, '2020-06-24 12:51:08', '2020-06-24 12:51:08', 'normal', 0, 1),
(172, 'Gaurav kumar', '9507464914', NULL, NULL, '$2y$10$pzGCjPdWoDb4l1Ll/hlUC.ZcI86cRlkHvGZA4nFzyunSDf.FUf18m', NULL, '2020-06-24 13:37:31', '2020-06-24 13:37:31', 'normal', 0, 1),
(173, 'Anshika', '9660819418', NULL, NULL, '$2y$10$PYDr2I3lH30l3QlqgPC5eeCVEcUUUosrRk8AJycma9FwNnOT9v8iK', NULL, '2020-06-24 13:56:57', '2020-10-08 20:46:05', 'normal', 1, 1),
(174, 'Mamta Gupta', '9955028109', 'mamtagupta028105@gmail.com', NULL, '$2y$10$AEziS2h54QNCaH8tWyJFGOOAaP3tNHA4iCE4xm7FevFQHs/wBwROO', NULL, '2020-06-24 16:19:20', '2020-06-24 16:19:20', 'normal', 0, 1),
(175, 'Akash Agrawal', '9110993291', 'aa6460428@gmail.com', NULL, '$2y$10$73JfIp5yhtTYKCuWd/u6AuLov2d58NCAIheRX3EY0VgM6Lj8Ln.rO', NULL, '2020-06-24 19:21:50', '2020-06-24 19:21:50', 'normal', 0, 1),
(176, 'Shikha', '9162916471', 'sikhakumari0088@gmail.com', NULL, '$2y$10$IaHNZ42QtFjObfRS8ouUuOFIPlAtS/9NvtH.fNvxJ0sJgB5bs6VRW', NULL, '2020-06-24 20:10:13', '2020-06-24 20:10:13', 'normal', 0, 1),
(177, 'Chhaya rani', '9546670869', 'as0720835@gmail.com', NULL, '$2y$10$O7MsNLRTXAg40d.2wpQ6kOdKecML7.z7Ma8jZk/iRgxEZ.PSsvIwa', NULL, '2020-06-25 18:02:17', '2020-06-25 18:02:17', 'normal', 0, 1),
(178, 'Madhu', '7979880383', NULL, NULL, '$2y$10$0GosYmVxtFy32wvQzY2u0udfKvaN1hnKAMJUF6/wlyIEq1b2Fp98G', NULL, '2020-06-25 18:02:36', '2020-06-25 18:02:36', 'normal', 0, 1),
(179, 'Anshu Sharma', '7979735118', 'as0720835@gmail.com', NULL, '$2y$10$/vAWoRqF3nFkiDf51T2GsuebzkEXy08l.9/zSPPTvWOtpPFcuT77G', NULL, '2020-06-25 18:08:51', '2020-06-25 18:08:51', 'normal', 0, 1),
(180, 'Vikash Kumar', '7903685250', NULL, NULL, '$2y$10$aSvBTiSCkwoXJsEst/GMi./KyTalLYxpjZDRv8Ut4mvloKYK5dk0a', NULL, '2020-06-25 18:23:02', '2020-06-25 18:23:02', 'normal', 0, 1),
(181, 'Anshu priya', '7808331032', 'anshupriya278@gmail.com', NULL, '$2y$10$ox5Hg2N/U8F51BfoVkqSa.iXqTKDZ2JZG0v1181Iz9Fs6RG2Cq/x.', '5YjDTHcAh8TATp9rHFvNZQ6wEktF9QocmkrK6sWFryxAHqH14xL33Z6xaYSB', '2020-06-25 19:20:41', '2020-06-25 19:20:41', 'normal', 0, 1),
(182, 'Shubham Kumar', '7004660213', 'Shubhamkumar294@gmail.com', NULL, '$2y$10$Ftj1ezlv8ttZ.i/u7UQW1.70D1jNMT3v4mgSNZI9NQyLRaYqOcvbW', NULL, '2020-06-25 19:47:29', '2020-06-25 19:59:29', 'normal', 1, 1),
(183, 'AYUSH CHODHARY', '9608978065', 'chodharyayush92@gmail.com', NULL, '$2y$10$6wITLtgG1TGhgBJDN1L2WejB949CH4u7VFt42NlC9YulvwX/HCTxG', NULL, '2020-06-25 20:41:50', '2020-06-25 20:41:50', 'normal', 0, 1),
(184, 'Savita', '9801067770', NULL, NULL, '$2y$10$yAE8jSRSJ/ziEP8NZ3MtzuWmjt98J.xbfufQVgXMjdAniUXgVRbUC', NULL, '2020-06-26 08:35:54', '2020-06-26 08:35:54', 'normal', 0, 1),
(185, 'Rajeev Gupta', '7004839804', 'ranjanrajeev549@gmail.com', NULL, '$2y$10$HA3sXQJCmlDPF5JxuMGGrOV1C9f02vFtE27Sa.HQFoLNWVooQUQrK', NULL, '2020-06-26 09:49:47', '2020-06-26 09:49:47', 'normal', 0, 1),
(186, 'Sonali jain', '7480987418', 'sj7989795@gmail.com', NULL, '$2y$10$r37pnQS28GbC7KcRTWgbx.qQ5i9Z2dug0kw/wZ3Ih1Lu5rSRkeqci', NULL, '2020-06-27 09:03:15', '2020-06-27 09:03:15', 'normal', 0, 1),
(187, 'Abhishek Sah', '7367897466', 'abhisheksah7367@gmail.com', NULL, '$2y$10$dzgJJXzSfSxxv.qHP2Z1Vee/LYtQVMMdGe8MLj94mF8Xw1qZd5Wd2', NULL, '2020-06-27 12:29:40', '2020-06-27 12:29:40', 'normal', 0, 1),
(188, 'Rajesh kumar', '9570743027', NULL, NULL, '$2y$10$XH8.LFF.v.jPuwnhArU2ieOut4GrSHz7WXll0nxDKaa5NXXkJC1pu', NULL, '2020-06-28 19:18:29', '2020-06-28 19:18:29', 'normal', 0, 1),
(189, 'Deshmukh shashi', '8287581089', 'kumarshashibhushan647@gmail.com', NULL, '$2y$10$jIQnhZsUlmN2I5Xxa7uuxeygjgxiQN9pidNGKJq6UswBW/D4gtPBO', NULL, '2020-06-29 15:04:07', '2020-06-29 15:04:07', 'normal', 0, 1),
(190, 'Abhishek mehta', '7480970185', 'abhishekmehta01dz@gmail.com', NULL, '$2y$10$oWSohIZJEHN8WZiuk0KeF.nXt2ph8mj4opVgn13uqFrgHSHuz4SUa', 'HL43kK76by43wjVqj8Tu6AFw1jskqMaxe6x7308XjEPMD6cyqjwXb109Q01K', '2020-06-30 15:32:58', '2020-10-15 16:53:23', 'normal', 1, 1),
(191, 'Alen', '9690150832', NULL, NULL, '$2y$10$9.7RBJniQdwR2rygoY4GK.K/ahE9.2WeZdesMJad5p42zu1NZteXq', NULL, '2020-06-30 23:12:09', '2020-06-30 23:13:38', 'normal', 1, 1),
(192, 'Gulshan kumar', '7004833136', NULL, NULL, '$2y$10$y01nSz5YQ862wKh96IJK9OCNCsHjb6soqknz2UkqRgDl8xcJwXV.S', NULL, '2020-07-01 11:43:26', '2020-07-01 11:43:26', 'normal', 0, 1),
(193, 'Yogesh Chaudhary', '8709444175', 'Yogesh.chaudhary0000@gmail.com', NULL, '$2y$10$yPrdSIPsGaVFVJ3L.XVv3.wRpqfb.VtjNA1JKIjYcPwGayUaLcOnu', NULL, '2020-07-02 14:03:24', '2020-07-02 14:03:24', 'normal', 0, 1),
(194, 'Krishna', '8084455100', 'keshri95krishna@gmail.com', NULL, '$2y$10$wdZWh7ouRfu5xtQTTssTIe2WGhgS8DyMD8jWYc2XKF.CMsEoeijdy', NULL, '2020-07-04 07:47:11', '2020-07-04 14:17:38', 'normal', 1, 1),
(195, 'Bulbul keshri', '7004927981', 'bulbulfbg1@gmail.com', NULL, '$2y$10$SfLo14UeWBNxhq5YRfFZoOj.mgHoBerSycDnUPqkK4DX38Khip8Fa', 'kRTQzka7P1LqACtRdl3xRezHaoSS9IXyMboc8vKzbMFnkdfoct8CEBNEmehz', '2020-07-04 10:44:12', '2020-07-20 16:34:22', 'normal', 5, 1),
(196, 'Ashish Gupta', '7004543430', 'ashishfbg1@gmail.com', NULL, '$2y$10$aEmD.7Kmp8fRysx9oiMameTB/FEeSMUMmzldIkjfUmuUjy2su21hS', NULL, '2020-07-04 21:49:03', '2020-07-04 21:49:03', 'normal', 0, 1),
(197, 'Akki', '7493941892', NULL, NULL, '$2y$10$yJ7pXtFHHrCbmIRz1mvjj.m/mKWayWAg/JOf6qVkKlhazttOtl.N.', NULL, '2020-07-06 04:03:58', '2020-07-06 04:03:58', 'normal', 0, 1),
(198, 'Raja', '9113712089', NULL, NULL, '$2y$10$nSALpLTcJR65UxxpnIZqcOUJE/oYYZ7rJPeo02vUyWjfpgD8hjoJW', NULL, '2020-07-07 11:24:53', '2020-07-07 11:24:53', 'normal', 0, 1),
(199, 'Bipul Kumar', '7323867976', 'bipul251101@gmail.com', NULL, '$2y$10$Z0kqxqpeKl69Nlej5MgP8eLixcHYUbhdZMGRMVvbXZCw19KwrrNTi', NULL, '2020-07-07 11:37:56', '2020-07-07 11:37:56', 'normal', 0, 1),
(200, 'Sonu Kumar', '8969919110', 'sonu_fbg@rediffmail.com', NULL, '$2y$10$/f2LTLLM4QQYO9vF4GkWIuSZTtYbeM2ZYlEpLRkhnZpgtdV6fccTK', NULL, '2020-07-07 13:20:12', '2020-07-07 13:20:12', 'normal', 0, 1),
(201, 'Prem gupta', '9955028106', NULL, NULL, '$2y$10$78uQY7IP7LPv6310hCP56uNZOXDj4SiE1XcGTfSPx8JT5cEcOFhWy', NULL, '2020-07-07 20:05:06', '2020-07-07 20:05:06', 'normal', 0, 1),
(202, 'Hritik Agrawal', '8582952012', 'ahritik122@gmail.com', NULL, '$2y$10$L3iB.ccziSg3B20fInYic.G2e/CJx2HcqNBI2p9nHMpXzPxw0xKHq', 'XEzKb0RAExc4uFV8jz2pFwBbnc4VEWvXcqxPUOXqciPEO4rv7TrgONDvyTQU', '2020-07-08 11:58:18', '2020-07-11 12:42:01', 'normal', 1, 1),
(203, 'Hrithik', '9060734008', 'rajhritik1976@gmail.com', NULL, '$2y$10$k8NKHJ8smDp1f/U2oxk89.0H7Hkplj99wPXr4Wl8iBwQEAl8urGAy', NULL, '2020-07-09 17:59:08', '2020-07-09 17:59:08', 'normal', 0, 1),
(204, 'Shristy keshri', '9065398955', 'shristykeshri656@gmail.com', NULL, '$2y$10$AOVp/lJbNQ7Mn5y2N/71CObfJHih3G1Lzco6Jx9d.9x9GvjdYEmXC', NULL, '2020-07-10 13:15:05', '2020-07-10 13:20:44', 'admin', 1, 1),
(205, 'Mira gupta', '6201012732', 'guptamira98@gmail.com', NULL, '$2y$10$URzIM7Wei/WYbq.ea9ZCZ.plEJpK.tqdfCphKHJkQo7pzq/b6v.Y2', NULL, '2020-07-10 17:36:49', '2020-07-11 06:57:37', 'normal', 3, 1),
(206, 'Raveer', '9097263959', 'rajraveer95@gmail.com', NULL, '$2y$10$fbroIkCHyFVsQe4WgQBwC.TyiZ5BxA/7QPOjwc8jqTWOXIKqq2Fxy', NULL, '2020-07-10 20:31:32', '2020-07-10 20:31:32', 'normal', 0, 1),
(207, 'Akash patel', '7004532485', NULL, NULL, '$2y$10$kGxwnfgrqzlJfuZeVYDeb.G/QNMfmkDhTB9NPfNwUtleN34QVD02q', NULL, '2020-07-10 21:55:15', '2020-07-10 21:55:15', 'normal', 0, 1),
(208, 'Anand kumar', '9708030723', 'anandkr9504374476@gmail.com', NULL, '$2y$10$UKeQgc/ZZ4e5oMPsPUD/1eX1O4d7AH2IFmxeaRjQWwp.UbbQOEzoS', NULL, '2020-07-11 08:55:20', '2020-07-11 08:55:20', 'normal', 0, 1),
(209, 'Suraj Kumar', '9709684791', 'sknpg1999@gmail.com', NULL, '$2y$10$9nPJCorWihs4X7780drAs.Qs42Oq1P9lTUp1HFgG8fN7e472WrT1K', NULL, '2020-07-12 15:20:57', '2020-07-12 15:22:01', 'normal', 1, 1),
(210, 'Shubham kumar', '9199034345', 'arrickshubham@gmail.com', NULL, '$2y$10$4YaQX6T2K.f.8Xa2DGFVzeeZZv1PzaVni6XAnHZAK/dlNVz64LQQy', NULL, '2020-07-13 08:56:01', '2020-08-03 10:08:56', 'normal', 6, 1),
(211, 'Gopal', '8130998489', 'gopaljee831@gmail.com', NULL, '$2y$10$v2oqCFx2M4IfalK58Bw4ae1/cmAMl9N52lQ25w5S3S.I/HNz7VK5i', 'Fg7vaGjuxPaW3b4uZiHan0Dd6nzmPoAG3WtVkVRVZfQNAhAgnzGCfd8vvORC', '2020-07-13 16:11:01', '2020-07-13 16:11:01', 'normal', 0, 1),
(212, 'RAHUL RANJAN ADVOCATE', '8083885212', 'rahulranjan0092@gmail.com', NULL, '$2y$10$0CnVZlqlyrB25Puiqv8R8.JXRKtesaNsNOVIzWXbHbIPB2cIIzBxi', NULL, '2020-07-13 20:49:02', '2020-07-13 20:49:02', 'normal', 0, 1),
(213, 'please cooperate', '7898767997', 'kkajnkkj@gmail.com', NULL, '$2y$10$dAXdE6Pk5d0HFGHiFQe42Ov7S2Rx3nCJ32Q1C4X8UXO1mF8QGheDS', NULL, '2020-07-14 20:41:25', '2020-07-14 20:43:48', 'normal', 2, 1),
(214, 'Shubham sourav', '7903000061', 'shubhusourav786@gmail.com', NULL, '$2y$10$D/j0WEAXIMeBXWCESQe7i.mhzF7A5KkvO2dQKwgMHaKOTKcx1/79u', 'cHuoC5Z7EsieBbkLlha7hj9bdrc3sdGqEe3A8CKjLxoudXFRccICvx6isrXR', '2020-07-15 08:30:14', '2020-10-28 17:24:25', 'normal', 3, 6),
(215, 'Nitin Pandey', '7489397815', 'pandeynitin7509@gmail.com', NULL, '$2y$10$SantYD3GnRdzFlAoXJRMI.8NIQWY12YnbiS/uaVUIgNdo7pzhpocO', NULL, '2020-07-15 10:44:54', '2020-07-15 10:44:54', 'normal', 0, 1),
(216, 'Nilu Gupta', '8292901570', 'nilug86@gmail.com', NULL, '$2y$10$uAlv6yijOnN578cfFPDFgOWAXn.M2SHGuTIi.5TOyhRN3gEaEAKtq', NULL, '2020-07-15 13:31:22', '2020-07-15 13:31:22', 'normal', 0, 1),
(217, 'Alok kumar', '6284926401', 'alokkr16102001@gmail.com', NULL, '$2y$10$MEcAL.iHBLMfHW.W.kMDmeSguRViGRXhKg4e/65psYT/EZ.h6JgPO', 'AQ5MwCgaqNlznQu7gt4IlgX8MzPTgZKofE4A981dXXds5GUOMu1ZnOHzBxmD', '2020-07-15 17:37:25', '2020-07-18 04:35:53', 'normal', 1, 1),
(218, 'Mukesh jaiswal', '9801602923', 'mukesh9801602923@gmail.com', NULL, '$2y$10$0Enc7QI0ijjDelCrN4.HO.G3Xs46kkweRaCpGN5GbmqvqSNmL/abW', NULL, '2020-07-18 07:54:48', '2020-07-18 07:56:42', 'normal', 0, 1),
(219, 'Seema khatri', '7369061001', 'khatriseema073@gmail.com', NULL, '$2y$10$i8NnOhh74Itou0UYJqTwD.oyt.2rNLK.xuAfJT4PIb5Tlqhi95ca2', '4srCihfiAcznQTEkbPsadPZyiND8KwOuDupNpKFgE6qu9R40iO9wXjrIcSAB', '2020-07-18 08:50:19', '2020-07-18 09:03:10', 'normal', 1, 1),
(220, 'jlakwjdk', '7894561230', 'gaurav.jss.027@gmail.com', NULL, '$2y$10$rbmRVRztq4VO8lNq0d7I/u7jJh9.7DR9FseVbd72bbKzYzzignYYi', NULL, '2020-07-19 15:25:30', '2020-07-19 15:25:30', 'normal', 0, 1),
(221, 'Juhi Gupta', '7077100376', 'juhigupta277@gmail.com', NULL, '$2y$10$GzPL9TvRxNjdc3GFBUWmaeZhflEtS9Lhz3/IGIf7hS4l6KH5GT.kO', 'bZLhJ2rNKQX4b86urAWkmLZWlXEwuC1NlfMbVxHdJ6mUZLwXbb3IVN0z1d57', '2020-07-19 18:00:28', '2020-11-01 14:38:44', 'normal', 2, 1),
(222, 'Gabbar Singh', '9876543210', NULL, NULL, '$2y$10$.m90fDn8usTSP2svOC05muT/rbin8F8jTABWI352CqTp9V/5PGmOO', NULL, '2020-07-20 05:27:55', '2020-07-20 05:27:55', 'normal', 0, 1),
(223, 'Prince', '9570742191', 'aftabfbg333@gmail.com', NULL, '$2y$10$U.2wD3pyl9cqQ.ZEHXp0QeEqdomkU1II6YsOc9aYfG4l5ennzOR32', 'BaSM4RN3XycymeehuSXSzbNHsu7XYFch3Q7nxhFVIn8JKOzv3ehCuLwBgS7i', '2020-07-20 20:41:50', '2020-09-24 22:14:34', 'normal', 0, 1),
(224, 'Nishant', '7764053187', 'goyalnishant4218@gmail.com', NULL, '$2y$10$ZFmmjlw7mGZPAmq3QBdcROrrpTdz5neFrEn3qhono1XaZMZg6aW4W', NULL, '2020-07-21 16:48:25', '2020-07-21 17:07:12', 'normal', 2, 1),
(225, 'Punit gupta', '7764049185', 'punitgupta6719@gmail.com', NULL, '$2y$10$XqHTweWxtNZ7apJ33Dp86.t3Nvr77qz9scyMCVt3VivElhjks.qrK', NULL, '2020-07-21 17:44:20', '2020-07-21 17:44:20', 'normal', 0, 1),
(226, 'Ram', '9097394789', NULL, NULL, '$2y$10$fJLSP23Dj1eetvAEGNF9cOLELA8fqdUhPu9Ha4WnqovYWCHmhSKpm', NULL, '2020-07-22 06:00:38', '2020-07-22 06:00:38', 'normal', 0, 1),
(227, 'Bot', '8102417122', 'abhishekthakur17918@gmail.com', NULL, '$2y$10$4B4A5126QVP8k7vyPtUyZedtp8ayLgEgTShFmqiJMOtCruHmvmxg6', NULL, '2020-07-22 21:44:58', '2020-07-22 21:44:58', 'normal', 0, 1),
(228, 'ahdkjflkash', '7894561122', NULL, NULL, '$2y$10$ClSfASCtHs7HiGVfPTXIeOPweR0j499MnGfNVr8iCWcUy7SQ6BCU2', NULL, '2020-07-24 08:55:15', '2020-07-24 08:55:15', 'normal', 0, 2),
(229, 'kalwjdl', '1122334450', NULL, NULL, '$2y$10$JHTKCXgQEtxhda4t/tKxguiZvvBcSEvtjLGD80YqoOdNOIIN3pLhK', NULL, '2020-07-24 08:55:56', '2020-07-24 08:55:56', 'normal', 0, 1),
(230, 'Mayank jii', '3967238753', 'check@gmail.com', NULL, '$2y$10$..ubwj1UlUL5j8IYy/6Qo.q/NvJ.0/l/3Tr.LSrJtVaI4eRT/MXMi', NULL, '2020-07-24 14:27:24', '2020-07-24 14:27:24', 'normal', 0, 1),
(231, 'ahakjshlf', '7789456123', NULL, NULL, '$2y$10$c0NCQjLL751YMM7dyaa/feGyORj1wSUkp82zLF04DpxFTw0rEo9PC', NULL, '2020-07-24 14:34:58', '2020-07-24 14:34:58', 'normal', 0, 2),
(232, 'Test', '6935247839', 'gajsbsjsn@gmail.com', NULL, '$2y$10$LqLb/mpmvgqs8xkTjHkSgej7F4v0czc4SjvlxplRLnv9aZQkvAjka', NULL, '2020-07-24 14:37:45', '2020-07-24 14:37:45', 'normal', 0, 1),
(233, 'Test', '3692581477', NULL, NULL, '$2y$10$r9uUhGWGQ1k2lsgK9OpFiu6.0/wR18GafntQvAsbeIOQr3PpLNusi', 'pr3lX6LJ2Uu6XF72SRMBqlXYDNzSehhGXOldajA40LfrYIUZ0quF7X52wMLO', '2020-07-24 14:51:44', '2020-07-24 14:51:44', 'normal', 0, 2),
(234, 'testing111', '1234567899', NULL, NULL, '$2y$10$O7U3QPISoSbv1ed.hd0VSOupt4m.lzbl6.WTH9p5rjl1A5y4n75UK', NULL, '2020-07-24 17:44:08', '2020-07-24 17:44:08', 'normal', 0, 2),
(235, 'Shahnawaz', '9525176748', NULL, NULL, '$2y$10$ehb4XKDbkhogkpPeC9cQbek1x7.vc5mHQMhTmn4MDxOJKHuztumei', NULL, '2020-07-24 20:54:21', '2020-07-24 20:55:23', 'normal', 1, 1),
(236, 'test', '0000000000', NULL, NULL, '$2y$10$zCLFFs2V2FTF/w95pioJ8uFPOXrMFeHaF6UJHHbLmZ5Z3dP6JbHVa', NULL, '2020-07-27 21:01:14', '2020-07-27 21:01:14', 'normal', 0, 2),
(237, 'Shivanand Roy', '7547079691', 'shivanandroy93@gmail.com', NULL, '$2y$10$gq0rn6xAWo0s.fgGtDcCeOGqSFFM4BXFV1KayVsLqQbMW.eY0ZA3S', '7XwZK5bm7tiK9BdxIl0j5wzYC3NbBtY9ViKczTmKt7VlzQsyfmhheeth1Umv', '2020-07-28 12:07:54', '2020-07-28 12:07:54', 'normal', 0, 1),
(238, 'TestingPatna', '8208208200', NULL, NULL, '$2y$10$JeEc7Il4EvtZ/JgdPmA9s.LyxW.FPGI21dJ6n4oL5JMk2.F/bdAGS', NULL, '2020-07-29 18:24:10', '2020-07-29 18:24:10', 'normal', 1, 2),
(239, 'Shubham', '9931925999', 'shubham24121@gmail.com', NULL, '$2y$10$UlJyvUGYhd7BhMDWU3BtzOufKGufbkAUDinuE6Tt.GIrj/XltE7QO', '7bPdWOXHlwa7wcb0ofbaN7ogEf0qhlz3ikF36Yh0doAk6a5ORY1zxxTJiayr', '2020-07-31 04:50:52', '2020-07-31 04:50:52', 'normal', 0, 1),
(240, 'Test', '7248307568', NULL, NULL, '$2y$10$Ts2MUq9OQaZvkdtMqMcbOefJYJ7.Lx2Pmu8dmiKRl.FsgsXfyDWle', NULL, '2020-07-31 17:18:10', '2020-09-24 00:32:33', 'normal', 1, 1),
(241, 'Aditya anand', '9801171777', NULL, NULL, '$2y$10$Zld/MWFWuiKkNjJC4JjJmepZ8DLJ1I3vBNqqkOXLNwSx0wEzBgAmC', NULL, '2020-08-01 18:17:18', '2020-08-01 18:17:18', 'normal', 0, 1),
(242, 'Chandan Kumar Gupta', '7634069447', 'ckgupta431@gmail.com', NULL, '$2y$10$Fip3Ucqja8OKXxqmGT.cDeVbylbE79eQpNs6PUXEU7cSQCIybUib.', 'MQHDwJBFItS4iBs591GxXMfPHyeqhhbRQ3WS2TuOEQvzdjmwFf0pjfXiAgr6', '2020-08-01 21:25:26', '2020-10-17 00:18:39', 'normal', 2, 1),
(243, 'Singham Siddhart', '7250566123', 'anupamkumarfbg666@gmail.com', NULL, '$2y$10$IqxEevJuChZPSQPlMIEeWublKKfbhbbux.KXSX4auXNKMg94nA9F.', 'vvu97IDSpfGUIPa0XdOtjl07bCUPRC5KymJ5CTcXl1SRutSMW7S9H5ObUowo', '2020-08-02 11:30:41', '2020-08-06 04:13:27', 'normal', 0, 1),
(244, 'Aditya Kumar', '8521090070', NULL, NULL, '$2y$10$T6x8YF7sB3FghyiIf6Xo6eQ5AFZDNMtP40Yn.jjfHZyYv31cU14rO', 'OSy3IicL0VUD1qfjr9X8pQaFLkX29NtiZT3X4vtgCrkvQgQPbzhOROfxVqBc', '2020-08-04 11:03:31', '2020-10-01 22:24:30', 'normal', 2, 1),
(245, 'Ravish Raman', '8210368405', NULL, NULL, '$2y$10$gztH.YG61ZrkszgzbruJNelBZRdwA.ozaWh5aZd4z.nRLtwJ/.F1e', NULL, '2020-08-04 14:52:20', '2020-08-04 14:52:20', 'normal', 0, 1),
(246, 'Vipul chhajer', '9472049644', 'krishatrading@yahoo.com', NULL, '$2y$10$iwW6dwds/meEVQ/ecAp10.1noEw2P0cIL4iCEGmbYDCxt/uk/iEcW', NULL, '2020-08-04 15:21:26', '2020-08-04 15:21:26', 'normal', 0, 1),
(247, 'Monu aditya', '7992372664', 'monuyaduvanshi671@gmail.com', NULL, '$2y$10$Uc2vvMUxQ09BMPX2iISNx.2tQmtaMQhfcRrx.rhwWBSi9/DEO5vu.', NULL, '2020-08-04 16:11:53', '2020-08-04 16:30:02', 'normal', 1, 1),
(248, 'Arun Gupta', '8292504014', 'arun.14326@gmail.com', NULL, '$2y$10$3IbQMtzXllxr8Zxmgtw6.eoVXPJDnmLMPtAzzycnNq9z6AtLAT05S', NULL, '2020-08-04 17:41:40', '2020-08-04 17:41:40', 'normal', 0, 1),
(249, 'Manoj', '9937239139', NULL, NULL, '$2y$10$GN.YiBTCq5zApnx.9Zwy5.Ufx27r7.Yf3rWBRK5eehbNlUnd76BwG', NULL, '2020-08-06 21:14:20', '2020-08-06 21:14:20', 'normal', 0, 1),
(250, 'Agri. Sooraj', '7248470946', NULL, NULL, '$2y$10$GTkLwJx3HLfg8peHNXMBVetDAFaT5far6GgtoO.rLfLcfJW5q5PtW', NULL, '2020-08-07 21:35:50', '2020-08-07 21:35:50', 'normal', 0, 1),
(251, 'Prince Kumar', '7633046696', 'princefbj8@gmail.com', NULL, '$2y$10$7xFQJ5kQv2/jCADfNl9fguYbu2RuEjXW3SlVGWjuLnHuG3H8SWKOy', NULL, '2020-08-08 06:47:17', '2020-08-08 06:47:17', 'normal', 0, 1),
(252, 'ASHISH ANAND', '8340105205', 'ashishanand37@yahoo.com', NULL, '$2y$10$l0dKfo725q8.QzyZksrlRuOT8g/Bz4nqFvy1rDCpqrAH0SueUps0q', NULL, '2020-08-08 09:33:30', '2020-08-08 09:33:30', 'normal', 0, 1),
(253, 'Raj kishan', '7903698304', 'raj.kishanmaapapa@gmail.com', NULL, '$2y$10$Sze153HlyDEl3VUeunvbF.l6Rloa88Y0TYB51o6ynyJ/IRHqBknF.', NULL, '2020-08-09 11:53:03', '2020-08-09 11:53:03', 'normal', 0, 1),
(254, 'patna', '7894561233', NULL, NULL, '$2y$10$TMs.rvpTAJZp9xLbcwCuuOdF9GfzKner/5TaOSRdW6BLzEKUqvJn2', NULL, '2020-08-11 17:19:28', '2020-08-11 17:19:28', 'admin', 0, 2),
(255, 'Johndoe', '6366784046', 'playstorecnx675@gmail.com', NULL, '$2y$10$1p5jLvN/l/LcNOvUbcAOEuyDXzdjrpdfObTbl4VvhX2bWkakyv74m', NULL, '2020-08-12 17:08:48', '2020-08-12 17:08:48', 'normal', 0, 2);
INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `usertype`, `no_of_requests`, `city_id`) VALUES
(256, 'Aditya Chandra', '7764046150', 'ac5121957@gmail.com', NULL, '$2y$10$h3UR9frBturybfGeYAIBvuiSJvq1dlkrGUgnLyDiq1QRXALdsOAgC', NULL, '2020-08-12 18:40:12', '2020-08-12 18:40:12', 'normal', 0, 1),
(257, 'Aman Raj', '7281925436', NULL, NULL, '$2y$10$f9dYZKtpx/gktjdTxnUTx.hHCkYT5s/xcoAE7Z8UxY2KUWWQ.m8ru', NULL, '2020-08-13 07:23:19', '2020-08-13 07:23:19', 'normal', 0, 1),
(258, 'Astrikk rishan', '9304726117', NULL, NULL, '$2y$10$fyAchGuY7hjVyUQWzKk85.KJwPUaNNckj5B4uz/dit4IA3XZhliRm', 'ntDEFubSYrmzyQAncs1gkp5NBXHOudA5I5tHUMzIjWqqeKO8b2NVVlfZOp9A', '2020-08-13 07:24:24', '2020-08-13 07:24:24', 'normal', 0, 2),
(259, 'Priyanshu bhagat', '7667284121', 'mr.bhagat7373@gmail.com', NULL, '$2y$10$fAjt1nM.2GIC4TVCojrEDuNQz2utczcqIJUyujChNIsBYGM4SdloK', NULL, '2020-08-13 14:13:58', '2020-08-13 14:13:58', 'normal', 0, 1),
(260, 'Suman bansal', '8969855857', NULL, NULL, '$2y$10$sRI9drUAH2ijbpfVWp9E0uWXkQRFech4N1u58UxXM2snTw5T8cfSC', NULL, '2020-08-13 15:07:24', '2020-08-13 15:07:24', 'normal', 0, 1),
(261, 'Rohit Sharma', '8677807392', NULL, NULL, '$2y$10$mXjwwFgnAr1shI1x9DV7x.FS8jaPI9IwFOByCNfTNJVvFX5scEuKW', NULL, '2020-08-13 19:26:34', '2020-08-13 19:26:34', 'normal', 0, 1),
(262, 'Deepak kishor ranjan', '7903261740', 'kishoreranjandeepak@gmail.com', NULL, '$2y$10$MHV8NyKioN4BBMCTA4hGNeXA1ZW4p43e7.26xhtCWlujUhp/BkXI6', 'MbCrPniztggpc7XI6pGYLMVMEaPRuLhfMb2kcv1gPxjozkJHW29OuGilWRNp', '2020-08-14 19:31:14', '2020-11-02 16:23:46', 'normal', 1, 6),
(263, 'Ankush kumar', '6297525784', 'ankushraj809@gmail.com', NULL, '$2y$10$0ZqdmQ5/am8ImMXJRsL7pOKffQzsCzXH9enw16CsUvwFIkD4eZRa2', NULL, '2020-08-14 20:21:28', '2020-08-14 20:23:04', 'normal', 1, 1),
(264, 'Anand Kumar', '6205665742', 'anand1032001@gmail.com', NULL, '$2y$10$sywJVijLEjvlP/C7vRTbTON8v/3xYVRmVbvHqJJzk5MIwg2REZRc.', NULL, '2020-08-14 22:53:56', '2020-08-14 22:53:56', 'normal', 0, 1),
(265, 'Mausam', '9608160975', NULL, NULL, '$2y$10$jPRZkk.itWKLuhc87LVS3edXyuT4TzQcUHX.KIgcKyhTUP4xxMZBy', NULL, '2020-08-15 09:07:07', '2020-08-15 09:07:07', 'normal', 0, 1),
(266, 'RAMESH KUMAR AGRAWAL', '9934410321', 'rameshagrawal.fbg@gmail.com', NULL, '$2y$10$nabt67u8vW8shBMDzGhc1e3HvPf/UE47t/pUadjII6HYNJLs9KCbi', NULL, '2020-08-15 09:55:59', '2020-08-15 09:55:59', 'normal', 0, 1),
(267, 'Nidhi', '8235970370', 'missnish148@gmail.com', NULL, '$2y$10$oqq8hrxcKx74FVIeQZkfDeSZ7UZ103jkayCCU21Rczf8wVVuxvwMS', 'VBYXtYwvThMTUkTWwHCtDo5xmmnGo7eSF0Vimv3pdJAKQYlJUZfInAOGGF3c', '2020-08-15 18:37:17', '2020-08-15 18:37:17', 'normal', 0, 1),
(268, 'Prem Krishna', '9694570182', 'premkrishna9694@gmail.com', NULL, '$2y$10$Dt6OYP9Vc2v9GzXpdz2hTOz.FYhSh8Z2XDxWuHQD4fststfh6Ioie', NULL, '2020-08-18 00:09:59', '2020-08-18 00:09:59', 'normal', 0, 1),
(269, 'Rahul Yadav', '7004161407', NULL, NULL, '$2y$10$d8iO/7xM/0hXWvyZSIdiduU/wj9KT0MAUQw.a/1xGkypOmVhQAI2a', NULL, '2020-08-18 12:02:37', '2020-08-18 12:02:37', 'normal', 0, 1),
(270, 'Ashwini Kumar', '9130127065', 'ashurock205@gmail.com', NULL, '$2y$10$y3BrXsyytMIF6ry4.Z9xN.DYgkRjPRobnjc.amBU07Mbu.7drpn.6', 'sdkxOiLERa1e2Zodxpi79jgikU6Yu1drqE6d0HMfbOLyq6caoretedXrv0Eo', '2020-08-18 13:41:47', '2020-08-18 13:41:47', 'normal', 0, 1),
(271, 'Mayank Bhagat', '9294978411', 'mayankbhagat789@gmail.com', NULL, '$2y$10$sNMacIMIWn96it6XRc0ytOiZ4fJn6X/0PRQex52nb8uAJfTsWrHyu', NULL, '2020-08-18 14:15:11', '2020-08-18 14:15:11', 'normal', 0, 1),
(272, 'Sumit kushwaha', '9304849155', 'sumitkrsuman94@gmail.com', NULL, '$2y$10$XSgeKQTHWiwGjVpWAoLXJ.oiQkX2BlfW9GMfT09iA05TJEGUano3q', NULL, '2020-08-18 14:35:39', '2020-08-18 14:35:39', 'normal', 0, 1),
(273, 'Prasenjit Thakur', '8789445105', 'thakurprasenjit3@gmail.com', NULL, '$2y$10$ZrusV9UZ3fSP4oHVlKuTZ.zyeiBd9jjxMtDn.HUxGNwmLanCmWpxu', 'c2Gb2PyTOEkyRAqMs6JykW9cB8l9iANRQ4ztnUfTEUIo4wfOPN2iPX7zmDFf', '2020-08-18 14:44:16', '2020-08-18 14:44:16', 'normal', 0, 1),
(274, 'Shivam chaurasia', '6207841412', NULL, NULL, '$2y$10$fSJ/y12TsD5vfNTX0mJCPed9AfRHNoBweBOxM3M60wmGpzW3DGzpu', NULL, '2020-08-18 15:59:29', '2020-08-18 15:59:29', 'normal', 0, 1),
(275, 'Arzoo Dev', '7091713637', 'arzoo.dev.99@gmail.com', NULL, '$2y$10$XO0g.Iazux2qtvYzxxoXBOMpls0VuvjQ9EufrpR83dN2xgroczow6', NULL, '2020-08-18 18:21:38', '2020-08-18 18:21:38', 'normal', 0, 1),
(276, 'Sandeep', '8709854484', NULL, NULL, '$2y$10$WD.0OnMuk6lQ86jNOdBKoO0clRtYLP9JFI2Fm7Vd0af5WF9cp5Hmq', NULL, '2020-08-18 19:07:42', '2020-08-18 19:07:42', 'normal', 0, 1),
(277, 'MANOJ Kumar', '6205812705', 'mkbegusarai9472@gmail.com', NULL, '$2y$10$L91/tQslsHh3/BoVbSpOPOmrRTlOBqrWK6spkJxpi0w3gKTV9iDOi', NULL, '2020-08-18 21:35:45', '2020-08-18 21:35:45', 'normal', 0, 1),
(278, 'Chandraketu', '7004600580', NULL, NULL, '$2y$10$R8SJMhn147qzUVD5xxk7yuR7z0PSijU..p3QCDGjDseLdvuC7Ibj2', NULL, '2020-08-18 21:56:18', '2020-08-18 21:56:18', 'normal', 0, 1),
(279, 'Vaibhav Kumar', '9471260284', 'vaibhav1392005@gmail.com', NULL, '$2y$10$DS2Th0oRuOFUyF08fJnmvuPB3k6oiKh4uZGNdpLTePFmx1S/IlVwe', NULL, '2020-08-19 00:53:11', '2020-08-19 00:53:11', 'normal', 0, 1),
(280, 'Ananya Jaiswal', '9262961803', 'ak8294646452@gmail.com', NULL, '$2y$10$.h7kIZAjMVuQGdgJOwCPVOerIHUgPpEIb.Uo1yqNVDios60jagMLG', NULL, '2020-08-19 01:26:57', '2020-08-19 01:26:57', 'normal', 0, 1),
(281, 'Ambesh Jha', '9142838155', NULL, NULL, '$2y$10$dr6.fyb87H41vmBlzeg4WeVWmjHGNvTtoXMDv3m6PzuIxgqv7NOqC', 't4mNmjiT79noG7JyOSXKEJLlXz0CFn7979FVeyK6PC9W8q5eknib7yXH4euh', '2020-08-19 12:24:15', '2020-10-29 17:28:49', 'normal', 1, 1),
(282, 'Roshan kumar Sah', '7765860177', 'roshan37732@gmail.com', NULL, '$2y$10$7WommkIs9/jUQ9u83A8CquMZuuh441TN/K9aRWR60oMZYDnTL06G.', NULL, '2020-08-19 13:26:30', '2020-08-19 13:26:30', 'normal', 0, 1),
(283, 'Khushi kumari', '6299135025', 'Khushimanvi121@gmail.com', NULL, '$2y$10$3kPaEVI1RhP1Smns/4KyweV5ZSC00wiEEt4Zg6nZMMz2DtWbKE0j6', '88epQ4Qq8i6r2qzWU6CXO1z3DyxDxk4P0PLlTxuvndkBfNzzIXhOaVfS8Dt8', '2020-08-19 13:45:25', '2020-10-03 16:28:28', 'normal', 0, 1),
(284, 'Babulal singh', '6207534742', 'babulal113449@gmail.com', NULL, '$2y$10$FCMuLlCl/c0.s4HGay8DKOK5H3ytw1OEX6vv0ncAMrxURxriNptk6', '2mtJKGnLXyXGsSMAb7iNFHAHMdCbJJJTT2lKteU6rEcKKHJSGF5a5sg5KzlP', '2020-08-19 17:09:16', '2020-08-19 17:09:16', 'normal', 0, 1),
(285, 'Kuldeep', '7488189026', 'kuldeepjain.lucky07@gmail.com', NULL, '$2y$10$bO0p7pjI.eUSTXyiWUYmielg.L1NAU728QAeFQrAIQDPfEhmyPif2', NULL, '2020-08-19 21:16:58', '2020-08-19 21:16:58', 'normal', 0, 1),
(286, 'Navneet kislaya', '6202792477', NULL, NULL, '$2y$10$/8JVt/ICCS4Ak4hCFXC8SeM5VJGJyQ7piKDZLqHk2f2TV0SgW9IzC', NULL, '2020-08-19 22:07:45', '2020-08-19 22:07:45', 'normal', 0, 1),
(287, 'Gulrana Iqubal', '8851265225', 'iqubalgulrana@gmail.com', NULL, '$2y$10$lRG9oSuIdFSx33JKRSXmWuJ.x7Uzj0Y1GAcfmYYjbV6vh6U1UC5mK', 'vn5wEKqqmG69ooQJWjQhu2TGJWy2bu9FS4vZKUKL19DTDidPiRUnEmK9OtY4', '2020-08-20 00:02:27', '2020-08-25 18:56:11', 'normal', 0, 1),
(288, 'Satyam anand', '8521926330', NULL, NULL, '$2y$10$yAvZvh8nq.AIxMDvRFNPlesu1CrB9v5dz2BI0lZUfaBZzxgOmPzAi', 'gwoX41cUbFchobdh104rjm4CxTuds6rQAFZHxbFlY9GyU7T3hp3QgQWfaijr', '2020-08-21 13:18:52', '2020-09-21 18:04:52', 'normal', 1, 1),
(289, 'Prince', '7979926749', 'pumpkinpaglu@gmail.com', NULL, '$2y$10$4wfvAV8hlKIT8BCcuCzXG.quep4E55dcdM1s26VKQK3BA5jUI5QiK', NULL, '2020-08-21 13:49:43', '2020-08-21 13:49:43', 'normal', 0, 1),
(290, 'Hritik Agrawal', '9608135840', 'ahritik122@gmail.com', NULL, '$2y$10$BmMwrOFPaiJ2BHkY08o3FOWev8NJka8w56F7IWfF4awUZjKVfOIx2', NULL, '2020-08-21 14:10:23', '2020-08-21 14:10:23', 'normal', 0, 1),
(291, 'Ansh', '7906167051', 'anshs0920@gmail.com', NULL, '$2y$10$N5NkiN8Fx8YGUt8ZdZODtu0S/2hSpgJw1KiVDc/X5ACx/QjefIwNW', NULL, '2020-08-21 15:50:06', '2020-08-21 15:50:06', 'normal', 0, 1),
(292, 'Taniya Agrawal', '9472813195', NULL, NULL, '$2y$10$05SU/0xokZxru5ZQvrzoI.48GreiHWqM05PvNmSy4hl0xIz42SCiK', NULL, '2020-08-21 15:54:22', '2020-08-21 15:54:22', 'normal', 0, 1),
(293, 'Shantanu sourav', '7250949339', 'shantanusourav8083@gmail.com', NULL, '$2y$10$I.my7oS5bXL1oWqz/S/q2ekBPtReX/BNiml14HAbiO55UeiA0Bvx.', NULL, '2020-08-21 19:09:29', '2020-08-21 19:09:29', 'normal', 0, 1),
(294, 'Payal Gupta', '9931481547', 'pg9006369171@gmail.com', NULL, '$2y$10$X/XiOrve/ZdVzxZ5k2K2GuDlg43UIIwnMSU5NEBGSSt8/BJ53EzDK', NULL, '2020-08-21 22:46:08', '2020-08-21 22:46:08', 'normal', 0, 1),
(295, 'Badal', '9304969664', 'badalarc@gmail.com', NULL, '$2y$10$8NrlwjeS1hswzv5PKZzL5uKuXqy2GWgVuyplfIw4MUQi3XWpz09uO', NULL, '2020-08-22 01:38:18', '2020-08-22 01:38:18', 'normal', 0, 1),
(296, 'Rahul agrawal', '9110980009', NULL, NULL, '$2y$10$wAwyMar7DNxmulmn59kp8O8amB2wb6.LTxp/aE8Bp/Lh.oQwbOfBy', NULL, '2020-08-22 14:47:44', '2020-08-22 14:47:44', 'normal', 0, 1),
(297, 'Payal Gupta', '9431853601', 'pg9006369171@gmail.com', NULL, '$2y$10$b72r7ClIceEXrJMMCw/w8OmRXVohilGmBVQytKnVX0JmYCIZJBTt.', 'UFGkj5aianlLGHoVsOBL0Zp8rghmMaU1R7VAclwi99K9DkioS5t0c4dx6Pjq', '2020-08-22 16:45:18', '2020-08-22 16:45:18', 'normal', 0, 1),
(298, 'devanshukumar', '6201370037', 'devanshukumar582@gmail.com', NULL, '$2y$10$Glrzjo9KIrjsXts7j3DD5OsihYzS8UdwJWG5gkurAkuy/b1eYhmkm', NULL, '2020-08-22 17:05:23', '2020-08-22 17:05:23', 'normal', 0, 1),
(299, 'Farzana Iqubal', '7488843770', 'farzuiqubal98@gmail.com', NULL, '$2y$10$NOeVzLzrrDZnCkoL.9tSJuaEG5hOBrxhq/DjvuD.gMxfQMNaaw/LG', 'KTFMlmXaDm7CKkmszeOqqPDxD7L0JxgI4YA76Fn2gpe7L7DObp71o3ORGsK8', '2020-08-22 22:47:36', '2020-08-22 22:47:36', 'normal', 0, 1),
(300, 'Shivraj Garg', '8002586822', 'gargshivraj.2003@yahoo.com', NULL, '$2y$10$CfjyVxNR8QH7T8NCVh7nrOu2uzyBmP0Adf34.ulf18Qwba7eXgp1a', 'QIgB0MPU3GzgaGbdwQSs4EM4Hwv3Fb2yyKx3AXxzzKDzZ3y5xGESZx5hbANV', '2020-08-22 23:39:27', '2020-08-28 00:06:57', 'normal', 1, 1),
(301, 'Nitesh', '7718855073', NULL, NULL, '$2y$10$NOmKdDHAgoCBBErnzxUsJe68w6d60qOBE5a27cV94rQbrXBRwcGha', NULL, '2020-08-23 10:49:05', '2020-08-23 10:49:05', 'normal', 0, 1),
(302, 'Swatantra deo', '7903917866', 'swatantradeo2@gmail.com', NULL, '$2y$10$gmuYs3koo3lH3ZNHJfzFhOIHl4ktfmVaOnGjIJHCi8nXzL64K9uum', NULL, '2020-08-23 12:36:50', '2020-08-23 12:36:50', 'normal', 0, 1),
(303, 'Hritik raj', '9472619213', 'rajhritik1976@gmail.com', NULL, '$2y$10$xUKqkRANNS0QLp2MUV1KmO6nLOuyZmeF3F8pm0YXOibBLX4fYiRpO', NULL, '2020-08-23 14:38:39', '2020-08-23 14:38:39', 'normal', 0, 1),
(304, 'manish kumar', '7004748418', 'manishjeefbg@gmail.com', NULL, '$2y$10$z1AEHwN2xqneOTVqeNcKeuG.D4CDKP0H.WJVlRGrvIUS46zNh6egC', NULL, '2020-08-23 21:25:14', '2020-08-23 21:25:14', 'normal', 0, 1),
(305, 'Anwesha gupta', '8294910011', NULL, NULL, '$2y$10$ymGA8t8ipm1ztgPLK3KwyOYuSwBC5kNqgI7vN9s8MdFz6hKCyvgje', '4Bxy5lbZhwBP7WGLLPskhjFxSbA7TErrN6ygqksu8xy342k8XuGV9xZZOHKH', '2020-08-23 22:02:50', '2020-08-23 22:02:50', 'normal', 0, 1),
(306, 'Shalini keshri', '8340230550', NULL, NULL, '$2y$10$CkxTuhzokcYIl2o1NeyRaOkqskM8Q4qdziDoKnpag4qfvqMUFSU8y', 'nr5Vw5D7lfmfNiqF4qxNpksvDLG75DufnM9u4MNZauZImf33ofHCAXFDqjkh', '2020-08-23 22:25:50', '2020-08-23 22:25:50', 'normal', 0, 1),
(307, 'RISHABH SETHIA', '7739255124', 'rishabhsth9@gmail.com', NULL, '$2y$10$1xXMd2IDTYLNMlNUcZNo.O0lOlrPU5GgaGm07giBjXU2enquTETyu', 'n0EVbjvDy0mLsVqaTdGp5F4YtKcCSDs6e1NqyJgHPQMunhwtNvWVXv8CjxTi', '2020-08-23 23:02:44', '2020-08-23 23:02:44', 'normal', 0, 1),
(308, 'Vartika Agrawal', '7667281978', NULL, NULL, '$2y$10$43h54MpZW2LcYZtLN1kUO.yfwxMxXaAxhoa43hA0pyRQVfwDcvOT6', NULL, '2020-08-25 01:16:21', '2020-08-25 01:16:21', 'normal', 0, 1),
(309, 'Neeraj', '9199832141', 'neerajkishor5@gmail.com', NULL, '$2y$10$FLhNbUysT7knjJTuxVJaHuPXVNUoNNh1shgYr/MbrgnuBYRoisnzi', NULL, '2020-08-25 17:19:37', '2020-08-25 17:19:37', 'normal', 0, 1),
(310, 'Nikunj', '7432075157', 'nikunjjain743@gmail.com', NULL, '$2y$10$YgLtAnrYrLGNHExQpt57GekwaJM.w.Y.GI7A1CMPdqsJwRvt9hYu6', NULL, '2020-08-25 22:36:07', '2020-08-25 22:36:07', 'normal', 0, 1),
(311, 'Mohit', '9007416702', NULL, NULL, '$2y$10$sHRQI623fAGlGvclyhnauOjYaWqYnnYRQuwuIx38bmGyLlWMxr./a', 'BRDa8nij30i6zILkqC8ExdbwsO2Hn2Fy3DBMS9m0LZ7wecM7RQc7KFQUvAwD', '2020-08-25 22:45:02', '2020-08-25 22:45:02', 'normal', 0, 1),
(312, 'Ajay Kumar das', '9334784464', NULL, NULL, '$2y$10$ZJFBSgQlJ7KDnlfnpQvLs.LcgboxCevB98F/pGpsF1GbjSVmIT.T2', NULL, '2020-08-25 22:48:36', '2020-08-25 22:48:36', 'normal', 0, 1),
(313, 'Amitabh Anand', '9932104860', NULL, NULL, '$2y$10$48R4jFnCUAi4dqTKtIbGnOk5je4TH9IITsnOodTNuLbC1vvTdBqaS', NULL, '2020-08-25 23:06:17', '2020-08-25 23:06:17', 'normal', 0, 1),
(314, 'Suraj', '9534944064', NULL, NULL, '$2y$10$dtsfBZxEGdwaHxdZfXg5iuZfx5D2hyFvr.5MXxObl/a7clKf73sDy', NULL, '2020-08-25 23:16:45', '2020-08-25 23:16:45', 'normal', 0, 1),
(315, 'Rahul', '8210800225', NULL, NULL, '$2y$10$3YkhrFkcYgMsrEpBphkjRucbgAkNbnfdbdUujajFYguuSGLqqkp92', NULL, '2020-08-25 23:54:29', '2020-08-25 23:54:29', 'normal', 0, 1),
(316, 'Mohit Sharma', '7992251761', 'mohit799225@gmail.com', NULL, '$2y$10$uoQfyix.Qj1x3A3b9yoZfem/lGpsOuZsHgDF3G53DzY.WllWytzsu', NULL, '2020-08-26 01:09:14', '2020-08-26 01:09:14', 'normal', 0, 1),
(317, 'ASHUTOSH ANAND', '9928251537', NULL, NULL, '$2y$10$zEu45HWMVMPBlmNABXMqEetuDf0vktBpO8wgQ626Gp.Kx47fXzAhG', NULL, '2020-08-26 01:10:17', '2020-08-26 01:10:17', 'normal', 0, 1),
(318, 'Nimansha Srivastava', '6204984793', 'nimanshasrivastava01@gmail.com', NULL, '$2y$10$dMU.qcKaeBSmojOKFJXBwe7kFelckaPEtkmgQNlaqN5AdSQglHbQa', NULL, '2020-08-26 04:07:49', '2020-08-26 04:07:49', 'normal', 0, 1),
(319, 'Prakriti Singh', '7488745751', NULL, NULL, '$2y$10$BbZF4S0TkTPv2GDAUtqCPehJndMcCtm7wTRLqLsth.qXlDih9/Xz2', 'wooRTpcqX5k1oHVvUN3QcioKGE296mYQiOzOV0BXu78tpNTeuAFDvqaIBlna', '2020-08-26 16:12:45', '2020-08-26 16:12:45', 'normal', 0, 1),
(320, 'Mohan store', '8271378394', 'nitinrajput86@gmail.com', NULL, '$2y$10$fkigvE2110XHK/wu.VpzsO4Bshds4AYqjIT00Bf8ymDottzRcmq9W', NULL, '2020-08-26 16:31:49', '2020-08-26 16:31:49', 'normal', 0, 1),
(321, 'abhinash gupta', '7979907451', 'guptaabhinash639@gmail.com', NULL, '$2y$10$9qPKOWlBgIgnacLTYMCrOOiIzX0as4YQqoX3mocPoI9SiPNPZr83e', NULL, '2020-08-26 17:53:19', '2020-08-26 17:53:19', 'normal', 0, 1),
(322, 'Aadarsh kamat', '7250653697', 'aadarshkamt5678@gmail.com', NULL, '$2y$10$fKiJPo0VVQPQ4cL7.nQz2eOctsihJxy2BcPWRk8l2VbLmWhWGYiOK', 'NBx8h2ZKx2D0qzuFA43l2y10G1y3h7bh1AS1u4ne16BfPEkKeb0htXVHsy3J', '2020-08-27 13:54:44', '2020-08-27 13:54:44', 'normal', 0, 1),
(323, 'Rahul Suri', '7079524655', NULL, NULL, '$2y$10$HcHSQNu3m.XpGBtvxhqEze/tOrGKdjBiNJeMDsWFMvUCq0uNT/4Aa', NULL, '2020-08-27 21:28:59', '2020-08-27 21:28:59', 'normal', 0, 1),
(324, 'RAJNISH KUMAR', '6207238852', 'rajnish14012001@gmail.com', NULL, '$2y$10$8WhbPmmEwN/PeBiSqesBXeCcezelI1V.fHtOfHVPR/RKj8DlWMOma', 'Q4FXXANqQRWkI3REUB30VMTJqZrBjgUKi59Jc3fr4tUEeIZs05C7zeM4sX4W', '2020-08-27 22:46:09', '2020-08-27 22:46:09', 'normal', 0, 2),
(325, 'Jai', '7889251354', 'incomparable18071995@gmail.com', NULL, '$2y$10$YjHhyvSVJBDNZ17Dq1vgp.2Fo3rog4ccclsD5yGKAz4qvizI.yWyS', 'yArkc50fCNUDFlH6w84lsSwDYYcU5WamjoPgBxMbQxpks7sGBldaSUwOoYkc', '2020-08-27 22:50:34', '2020-09-23 21:53:16', 'normal', 0, 1),
(326, 'SUBRAT DEO', '6207293935', NULL, NULL, '$2y$10$EXDplJSCNKVaNIFUWTtTSuvZq7Yvkn/.PewvTkL/x8GEkuPtWRYim', NULL, '2020-08-28 18:32:23', '2020-08-28 18:32:23', 'normal', 0, 1),
(327, 'Pritam Jha', '8709930153', NULL, NULL, '$2y$10$hNCFvlwMesdZy7FrB5vl2.9fYUXv/sJQeoIdOqiSdLXRzdipvIXJG', NULL, '2020-08-28 21:05:16', '2020-08-28 21:05:16', 'normal', 0, 2),
(328, 'Pradip Kumar Gupta', '6299779918', NULL, NULL, '$2y$10$2.PamHQe3ORVgyott1jeqeXDfIEqaxKon0EpISRD3K6WnlAb5oHCa', NULL, '2020-08-28 23:39:16', '2020-08-28 23:39:16', 'normal', 0, 1),
(329, 'Abhishek Raj', '8757298787', 'araj841647@gmail.com', NULL, '$2y$10$tsWyYCv7MFHhH0DcXQ.mSukhBptifVmydDnR3PcBZHr8rE38ngn86', NULL, '2020-08-29 02:07:08', '2020-08-29 02:07:08', 'normal', 0, 1),
(330, 'Bikash Kumar Pandit', '9091610455', 'panditbikash420@gmail.com', NULL, '$2y$10$syihb2vzNGBvyb2qvvRSFOSV//la.PCG9spFhWKb9g9gBF8T5d6p2', 'MxJivjWz0eEMp5iTaalqD7qON04DiJgZEPYh5n7Qey3kWfwh5wtE5YHDqrXe', '2020-08-29 02:25:13', '2020-10-07 18:56:07', 'normal', 0, 2),
(331, 'Abhishek jha', '7070558822', 'jhaabhishek579@gmail.com', NULL, '$2y$10$Z6xJPvbEn6JmDTp54ORghO6NrsqS1PvfucyiujFh0bwRjSP/WX9d2', NULL, '2020-08-29 02:30:00', '2020-08-29 02:30:00', 'normal', 0, 1),
(333, 'RAkESH Chitluri', '9381526245', 'rakesh.chitluri@gmail.com', NULL, '$2y$10$O7eo6kigijXgmXhJ8.VO0OgPcqJquCSLRG62CmA62ntl.aC3D7VPu', NULL, '2020-08-29 03:19:25', '2020-08-29 03:19:25', 'normal', 0, 2),
(334, 'Simran kamat', '7488416166', 'simrankamat12@gmail.com', NULL, '$2y$10$8xyopLySk.oiLWW.VnEyaOnjktuGgYSQBw6U7z47D1cVtweQR1Fly', NULL, '2020-08-29 03:52:34', '2020-08-29 03:52:34', 'normal', 0, 1),
(335, 'Kumod Karan', '9523910087', 'kumodfbg@gmail.com', NULL, '$2y$10$3KJpCC7FESA8bzFVlyErGOnjfCq8GuUXKxA4TVv/Unmqly7k4sYFy', NULL, '2020-08-29 15:44:04', '2020-08-29 15:44:04', 'normal', 0, 1),
(336, 'Abhimanyu kumar', '7061797250', 'kumarabhimanyukumar47@gmail.com', NULL, '$2y$10$vs0dRNxpHnATDeKd64H63OlaUXJwiezxzBN8DO33iy49pxh/18ZWW', NULL, '2020-08-29 16:20:48', '2020-08-29 16:20:48', 'normal', 0, 1),
(337, 'Mr.360', '8570235554', NULL, NULL, '$2y$10$6zBJYM2xeNqPvbHBFqCH2OvVMpFU4XGLgVnGqCvPP0gbB9uIrASCi', NULL, '2020-08-29 20:16:47', '2020-08-29 20:16:47', 'normal', 0, 1),
(338, 'Manoj prabhakar', '7070752525', 'manoj.prabhakar14@gmail.com', NULL, '$2y$10$rOfg.trSAnUgcyE5.kzd1.IWb5CS7tf/x9hwvsAKxPRMxiSIBBARW', NULL, '2020-08-29 20:30:13', '2020-08-29 20:30:13', 'normal', 0, 1),
(339, 'Akash Choudhary', '6202924224', 'acaakashkc1999@gmail.com', NULL, '$2y$10$dKQqhhik11SZiaGKJ7A6x.evDwaTNwmnp5aN6LjdyNSji9ejwkGf.', 'RCWOypEpSaH7TSZT4zQaojaHfNCi7yWKXJqmLeg4zNITbciKYdVABqYTvOZh', '2020-08-29 21:42:54', '2020-08-29 21:42:54', 'normal', 0, 1),
(340, 'Priti gupta', '7634945135', 'pritirajfbg@gmsil.com', NULL, '$2y$10$xOvOuwd5Az3HiilPbVwhzOK1AmIXIJpKStjpeEqaGN4V/hq4N.N4u', NULL, '2020-08-29 22:16:02', '2020-08-29 22:16:02', 'normal', 0, 1),
(341, 'Vishal', '7484060536', NULL, NULL, '$2y$10$haN4RbZ2ciy2TDu1diLWUOupDA6ni/M9Lt3z41vCOU2ymBf6xo3i.', NULL, '2020-08-30 10:50:54', '2020-08-30 12:28:59', 'normal', 2, 1),
(342, 'Sonu gupta', '7004626816', 'sonugupta84794@gmail.com', NULL, '$2y$10$LUu8LlV8rC3e6EGYMM6YRuwkLprdZ/qdoRgLa/KCXuKLDHkqh1xeS', NULL, '2020-08-31 02:21:36', '2020-08-31 02:21:36', 'normal', 0, 1),
(343, 'Manish kumar', '9525203738', 'manish.95252@gmail.com', NULL, '$2y$10$LfPoOrZLHwgQU3kiXG52KeUJWRpIghSgEKNlSE9dtpxaItsriOS4W', NULL, '2020-08-31 02:36:44', '2020-08-31 02:36:44', 'normal', 0, 1),
(344, 'Megha yadav', '9135104684', 'meghayadavfbg@gmail.com', NULL, '$2y$10$EWdJCqwAL1TZKsRb/o3SwO.OEG8i5GudteB88DyOt2u4Ahr17u3k6', NULL, '2020-08-31 11:59:43', '2020-08-31 11:59:43', 'normal', 0, 1),
(345, 'pawan', '8252334583', NULL, NULL, '$2y$10$qZnOL/r3mEE7tZfDiLuPTuWnXiG2Te6mYpoALRsH1.jgLYnyhm4AW', NULL, '2020-08-31 16:40:51', '2020-08-31 16:40:51', 'normal', 0, 1),
(346, 'Avinash jha', '9934620965', NULL, NULL, '$2y$10$WZpiLRRCGL9BWz/4kil8nOHYgoqnzmsg6ARgvxQos5jPaPYJ9VAPO', NULL, '2020-08-31 20:26:53', '2020-08-31 20:26:53', 'normal', 0, 1),
(347, 'Renu devi', '8789792991', NULL, NULL, '$2y$10$LBLjHtq9lVI95o90Ja21I.TDU4gJGJ91QXuJssEa0sOH1ML0TSclW', NULL, '2020-08-31 22:58:48', '2020-08-31 22:58:48', 'normal', 0, 1),
(348, 'Ayush', '9123435389', 'goyalayush5july@gmail.com', NULL, '$2y$10$0mTsJFrVjsWEbdF30qEYyO1qTjzsEuKracO4zexSxJ.7qlO9iHsnG', 'bVN7ZG2TQqltcDiPAqf7eFWWZXpNyaiPeKuR8NUOs0TuUwF5goRp5fn0gRKt', '2020-08-31 23:31:17', '2020-08-31 23:31:17', 'normal', 0, 1),
(349, 'Yash', '8340701362', 'yashagrawalfbg2017@gmail.com', NULL, '$2y$10$tyco5vtV9totsZBadW7Z2.uduN1NF2Agx3ftfa5xpcvs2YdHuRHBm', NULL, '2020-09-01 18:27:37', '2020-09-01 18:27:37', 'normal', 0, 1),
(350, 'Puru Agrawal', '9110021690', NULL, NULL, '$2y$10$fVjyVBgMMG/xdyHNkg/WLu8HNsGJY/LpZe0jiPQ9JY/ulzoC1jOeG', NULL, '2020-09-01 18:30:42', '2020-09-01 18:30:42', 'normal', 0, 1),
(351, 'Rikesh paswan', '9693327974', 'rikeshrj456@gmail.com', NULL, '$2y$10$NjFfOavoSKBeXxDIkqHMouB6a8FU1.qJkVzayA9rc9ljAc2JkRA26', 'X8UioBACa1DEylyHFpIP4yp8M9E7XMXGtn97egQQKrNvgSsfgs6HHyH4azjM', '2020-09-01 19:46:58', '2020-11-01 21:57:21', 'normal', 0, 1),
(352, 'rupesh raj', '7600067847', NULL, NULL, '$2y$10$zRXUGmNlUr1kinaD/eQX/.zyCitxwaUAZtPeZU7jsl5BNcoZqyRMW', NULL, '2020-09-01 22:08:10', '2020-09-01 22:08:10', 'normal', 0, 1),
(353, 'Avinash', '6203540737', NULL, NULL, '$2y$10$WctFzxzKtiV0ZOLpYAI20.ZmajjHqXmOYO4iw0dT55OhAJ9afVb46', NULL, '2020-09-01 22:12:56', '2020-09-01 22:12:56', 'normal', 0, 1),
(354, 'Shubham Kumar', '8804658563', 'Shubhamkumar294@gmail.com', NULL, '$2y$10$xbZYHNjiMqIaucc6MrAA2uXtA4QiA3WoCy6OV6DTfZlzsnfWwprb.', NULL, '2020-09-02 03:29:56', '2020-09-02 03:29:56', 'normal', 0, 1),
(355, 'Yash', '7858966490', '09yashsingh@gmail.com', NULL, '$2y$10$VDnRjz8Z7Xi6UQ3hr8w/wOB6sZJO7Pe0NPPkIRkzQMvTWK7nRhMyi', NULL, '2020-09-02 05:47:38', '2020-09-02 05:47:38', 'normal', 0, 1),
(356, 'Bulbul keshri', '8235970631', 'keshribulbul146@gmail.com', NULL, '$2y$10$SxpwZAGH7SWHxWH0CPEgpez39edstMOyg3NXHd.mEVqbBpGrfitLe', NULL, '2020-09-02 18:48:18', '2020-09-02 18:48:18', 'normal', 0, 1),
(357, 'Aditya keshri', '9470636540', 'keshriaditya20@gmail.com', NULL, '$2y$10$9K1QDrIJXxu3L0i04pUgx.4RaKhmuMYoKgJ9vvvQeJD7y2BhJlPnm', NULL, '2020-09-02 23:17:38', '2020-09-02 23:17:38', 'normal', 0, 1),
(358, 'Harsh Kumar', '9142927516', 'harsh05.kml@gmail.com', NULL, '$2y$10$LPZK3nblIlVzqGipvuioCeAw6.Dx9t7XqcanaaeVbfmRH5hqaOMca', NULL, '2020-09-03 00:59:39', '2020-09-03 00:59:39', 'normal', 0, 1),
(359, 'Aryan bhagat', '8789591362', 'pankajkumar76827@gmail.com', NULL, '$2y$10$kHevf4yvfcjHCzaV1v2koej2RvBTSSc6Pxz/NDhQZdTaZHoe9Nhf.', 'MDlj8IyYJn0C8popyvlQbOwpr1bggr4RM80KFR35nRSmoVgC5v8W68nZ2ocX', '2020-09-03 11:26:23', '2020-11-07 22:15:10', 'normal', 6, 1),
(360, 'Abhishek', '9818565646', NULL, NULL, '$2y$10$Bv5zKwTcsKfUxoC22RkGYOm1TFbnKDl4S3OX4LXrk4rXIzbE9ojbm', NULL, '2020-09-03 14:50:22', '2020-09-03 14:50:22', 'normal', 0, 1),
(361, 'Dapperdeo\'Z', '6207870732', 'deopriyanidhi@gmail.com', NULL, '$2y$10$EQ6WR97ba3C8MJ1vMNdGiOoevGlVvbKAu/Af7Uq5eci/rIoA52dDS', NULL, '2020-09-03 17:20:03', '2020-09-03 17:20:03', 'normal', 0, 1),
(362, 'sanni kumar', '9162058850', 'sannikumarmehta7878@gmail.com', NULL, '$2y$10$9Vo2VDde99KToiO7.qW0..LqENJDpTNZXFNtvvzwlboccblmOtRym', NULL, '2020-09-03 18:48:29', '2020-09-03 18:48:29', 'normal', 0, 1),
(363, 'Madhumita singh', '8447839477', 'madhumitas811@gmail.com', NULL, '$2y$10$GT2IQpqSL9yiZgBWBMgXn.IPwx5knqdemUp/wjhug.K7BOpx/h8Yy', NULL, '2020-09-03 20:06:53', '2020-09-03 20:06:53', 'normal', 0, 2),
(364, 'Ravindra Kumar Yadav', '7759007899', 'Ravindrakumary458@gmail.com', NULL, '$2y$10$2uCFlaWEwppCyTTTlP754ux8cqHhusaEk6xujVp5WmhlSinDvvXNS', NULL, '2020-09-03 21:51:17', '2020-09-03 21:51:17', 'normal', 0, 1),
(365, 'Sikendar Pandit', '6207319121', NULL, NULL, '$2y$10$HtbdsD4A60s2BcElpDmTX.6jp7Sv5j3H7C8AB9D97qnFOo9VgXeLO', NULL, '2020-09-04 00:17:31', '2020-09-04 00:17:31', 'normal', 0, 1),
(366, 'vicky gupta', '7992240624', 'vickygpt.111@gmail.com', NULL, '$2y$10$A87ewHsJkxQnu3PBGExi9u7hHunTLnb8I3w9uf5hoWZ7r7/ns0K9G', NULL, '2020-09-04 12:01:13', '2020-09-04 12:01:13', 'normal', 0, 1),
(367, 'Sikendar Pandit', '8271627840', 'psikendar5@gimel.com', NULL, '$2y$10$p5acC9KKSuGS11PtTHc50eSUvBI7RpRk9R6cDq69bKHPwTUh2W2WG', NULL, '2020-09-04 23:38:43', '2020-09-04 23:38:43', 'normal', 0, 1),
(368, 'Anshu Deepak', '6203440577', 'allkillergod007@gmail.com', NULL, '$2y$10$Fp8N0q2BCBsZEMMBbAiEh.HJbgvSD8ALB29GyXMTe9xGKajA8XudG', 'yQxOZk1pemeY1riRILVbLvTCsKB16zoqHX8yq77ruV4RmeHIVw7WN6Hk6xu7', '2020-09-05 02:09:35', '2020-10-14 23:55:23', 'normal', 3, 1),
(369, 'Rounak Agarwal', '6204621271', 'rounakag768@gmail.com', NULL, '$2y$10$h6ETgH0RgeqDEEBDV13Ceu4nQvfg4ubeanRS8z.3UkDmwjQOchJEi', NULL, '2020-09-05 22:18:44', '2020-09-05 22:18:44', 'normal', 0, 1),
(370, 'ASHUTOSH KUMAR', '6203276697', 'ashutoshfbg449@gmail.com', NULL, '$2y$10$8HF0BCRYOqC/P7ok6LbSSOPeR9.clZXKXr0qk8FNvEgTO6ZLEVzH2', NULL, '2020-09-05 22:33:34', '2020-09-05 22:33:34', 'normal', 0, 1),
(371, 'Vikash kumar', '8229858714', 'gedungplay00263@gmail.com', NULL, '$2y$10$xaio7N47H8gKOr144dY6LeXOMUiY/2VWeya1/69uTENhgZ80iF0N.', NULL, '2020-09-06 02:45:31', '2020-09-06 02:45:31', 'normal', 0, 1),
(372, 'Happy', '9142140236', NULL, NULL, '$2y$10$QIZ8CIkjT7R2NJViNjIPde90wcQQTjC6xQQ04xN6Dqr5r9G9Ri5cK', NULL, '2020-09-06 15:48:15', '2020-09-06 15:48:15', 'normal', 0, 1),
(373, 'Shekha satyam', '6207989322', NULL, NULL, '$2y$10$m8kQf7APyVZNrYTHa43oA.E8z2QNU15K929Mkhl/w3a2OMze2fnSe', NULL, '2020-09-06 23:19:37', '2020-09-06 23:19:37', 'normal', 0, 1),
(374, 'Bibha jaiswal', '8809989120', NULL, NULL, '$2y$10$jXMTlrVyCJorm4ttj/jTTetfUZxBWegRCueMPtinh3Mgh8C0pvdYO', NULL, '2020-09-07 16:26:13', '2020-09-07 16:26:13', 'normal', 0, 1),
(375, 'Raksha Agrawal', '9135326554', 'dollyagrawalll96@gmail.com', NULL, '$2y$10$kJmkmx1rQ5dqjEHSurx/zOOmgc73SbPlwchpJiYc39yWUDQFk7HBa', NULL, '2020-09-07 16:31:06', '2020-09-07 16:31:06', 'normal', 0, 1),
(376, 'BINOD', '9113751609', 'chutkiwalathanos@gmail.com', NULL, '$2y$10$3XWHnGaLrZBLpucK5sSw..lHtcNzPxWPFGANnLxp4Fso1vtrQNufS', NULL, '2020-09-07 19:58:53', '2020-09-07 20:04:49', 'normal', 2, 1),
(377, 'BINOD', '7765891405', NULL, NULL, '$2y$10$tiCGjcj072TalBEERsPFZO68EmyyC3M8uxxw0SN7bAqY7haC585CW', NULL, '2020-09-07 20:06:21', '2020-09-07 20:07:20', 'normal', 9, 1),
(378, 'Vishal kumar jha', '7979034820', NULL, NULL, '$2y$10$Mk83jyQxjIsBfPIX5qVKf.jruSl9TqSpUpceS5mggTnBjDex9Y3jS', NULL, '2020-09-08 16:00:32', '2020-09-08 16:00:32', 'normal', 0, 1),
(379, 'vikram kumar', '7322859442', 'vikramkr945@gmail.com', NULL, '$2y$10$j.t8bya/Ar4DbUsbKeV4seMxxYYFTz1XL7IuXXB.7sCW4RaCkNxZq', NULL, '2020-09-08 16:20:33', '2020-09-08 16:20:33', 'normal', 0, 1),
(380, 'Prem Kumar Gupta', '9835501232', 'mamtagupta028105@gmail.com', NULL, '$2y$10$BpzaUzRwukKpRKt.Db3H3u8zRSrNFDXX8Fy0IAewfhSC7L3.769C2', NULL, '2020-09-09 18:23:09', '2020-09-09 18:23:09', 'normal', 0, 1),
(381, 'Sonu Kumar', '9801703701', 'sonuk43247@gmail.com', NULL, '$2y$10$NOy0RqzRmIhgJ/fLA1U1yuyEf89P.1OSTNtmg/uA4Ov32VRlCpwpC', NULL, '2020-09-09 20:41:09', '2020-09-09 20:41:09', 'normal', 0, 1),
(382, 'Aditya', '9142027628', NULL, NULL, '$2y$10$LwMa6fUDJQfJu0O/3SIxFOH5CfrsWXWJkjVRP/257qWlBU3sH1xr.', NULL, '2020-09-10 14:15:04', '2020-09-10 14:15:04', 'normal', 0, 1),
(383, 'Khushi kumari', '8877250191', 'khushimanvi121@gmail.com', NULL, '$2y$10$Dij7krLhAhDfNf65zJ3k/eZ/6y2XHfXzIs1u9O8Y.59rx9Nz6sgjS', NULL, '2020-09-10 15:07:16', '2020-09-10 15:07:16', 'normal', 0, 1),
(384, 'Ashish Kumar', '9065954542', 'ashish99731@gmail.com', NULL, '$2y$10$FvsM4g1DpUW8V1jaf7TVuOonf5jCOBqrTZuM7hmqskP/plCtLhKOy', 'K9f88aFq4stANrQnexWKdvaSiXWNJxGaEYBXTynbkTDbarKGGrvzrmcCKbGT', '2020-09-10 19:42:47', '2020-10-14 23:30:40', 'normal', 3, 1),
(385, 'Aditya Prakash', '8340637474', NULL, NULL, '$2y$10$duksi54dyKJcM9phe8Im7eh97vL2a4xE4ckVyIx6tRQe3VWn69Ipy', NULL, '2020-09-12 12:40:30', '2020-11-01 21:24:13', 'normal', 2, 1),
(386, 'boso', '7549276464', NULL, NULL, '$2y$10$MDkuCPfO/0t2v5prmhrdl.MXOQ7xOLkKRRTdEwY7maFZp8jwX8ESq', NULL, '2020-09-13 01:33:45', '2020-09-13 01:35:46', 'normal', 2, 1),
(387, 'Himanshu choudhary', '7004478037', NULL, NULL, '$2y$10$XlMmMgPaaK1YiyFneQ.LueEMFxN4XTp8Q1zzZ/imtSUfNWnUH2CaC', NULL, '2020-09-13 23:05:54', '2020-09-13 23:05:54', 'normal', 0, 1),
(388, 'Shivam Gupta', '7004832923', 'infoshivgupta@gmail.com', NULL, '$2y$10$6lApzjlHFezk2YaTma5rauC8/iCpx6p5KdvDHIZNQyrLGdWFTdGqy', NULL, '2020-09-14 03:26:39', '2020-09-14 03:26:39', 'normal', 0, 1),
(389, 'Amit k', '9608794528', 'amlesh7765894583@gamil.com', NULL, '$2y$10$J2Pr2gSM3iBnn619LDS84OURA.ZnMb6wa1KRMz0rc.ULIo/jo6CZS', NULL, '2020-09-14 11:08:33', '2020-09-14 11:08:33', 'normal', 0, 1),
(390, 'Purwa baid', '8210959655', NULL, NULL, '$2y$10$ocyqjaZ4db0Eub9IRRl4per14pzkjvqt/IH.b621qKIPGEVXIxHcK', NULL, '2020-09-14 11:19:12', '2020-09-14 11:19:12', 'normal', 0, 1),
(391, 'Raju mandal', '9421819214', NULL, NULL, '$2y$10$rQaBvy8bCNTLd.kJtXDgzOnfMmtc9bQp4jbFAyr7tiGlLq1tLvZma', NULL, '2020-09-14 20:54:49', '2020-09-14 20:54:49', 'normal', 0, 1),
(392, 'Jyoti kumari', '8709770139', 'jyotikumarifbg29@gmail.com', NULL, '$2y$10$8fXn62DvGbdLmzblhn0oZuQjypt/iuA/P6X1QGdq7axyVEyaaJf7C', NULL, '2020-09-14 22:05:07', '2020-10-28 14:48:45', 'normal', 1, 1),
(393, 'sagar parashar', '9955017254', 'rajs71154@gmail.com', NULL, '$2y$10$6mvR7XXM9RqOPE81PkU2yOPrv.fJyIC3tPs34nyRFafvK/TDI6W/6', NULL, '2020-09-17 14:19:27', '2020-09-17 14:19:27', 'normal', 0, 1),
(394, 'Shakshi', '8789447808', NULL, NULL, '$2y$10$8wQuggGp3jqxbRJDqQqAv.O9SOZFAHLm3TjWthHNJRh8HEQ/4pJky', NULL, '2020-09-17 20:32:28', '2020-09-17 20:32:28', 'normal', 0, 1),
(395, 'Rishav bothra', '8603748293', NULL, NULL, '$2y$10$bBLLEh7EhoJsCwbsWx0O5u5AnsZB2Xh30cxZl0cSRZKKU3nka.CZ6', NULL, '2020-09-18 19:35:45', '2020-09-18 19:35:45', 'normal', 0, 1),
(396, 'Divya jain', '9430668681', NULL, NULL, '$2y$10$5yhTZeGJcIkmIoMWxN0wYOMcMPZIE9DwuvT7BfpMvZZbDU18.54f2', NULL, '2020-09-18 20:27:39', '2020-09-18 20:27:39', 'normal', 0, 1),
(397, 'Aryan', '9155441440', 'ajitkumarfbg2548@gmail.com', NULL, '$2y$10$fM/pth5Ihc/ckgz44SCs0eH1OJYAjESqA.DyAffYD1S9xPYyfTl1i', NULL, '2020-09-19 13:17:15', '2020-09-19 13:17:15', 'normal', 0, 1),
(398, 'Abhishek', '9523786405', NULL, NULL, '$2y$10$l9P/oMm.5XdI0Vh2NO/K8ex0.F9P/AsLp1IduWJJ3n/wkfRI6xSjy', NULL, '2020-09-19 16:49:58', '2020-09-19 16:49:58', 'normal', 0, 1),
(399, 'Aryan Chaudhary', '8002877392', 'shagunchoudhary45@gmail.com', NULL, '$2y$10$axnruFCZlUi6DA2fepplwekI9IYrCipi4JB33Fdr2l8t6/6G01YVi', NULL, '2020-09-19 17:46:23', '2020-09-19 17:46:23', 'normal', 0, 1),
(400, 'Aditya Kumar Singh', '9905509438', 'aditya70074051@gmail.com', NULL, '$2y$10$r6MPPiN4TN7Pbk1V9D.86e9kgXGRSWt2th0Yqkm/5zrQ5hdz4ilsm', NULL, '2020-09-22 01:38:17', '2020-09-22 01:38:17', 'normal', 0, 1),
(401, 'Golu kumar', '8292026436', NULL, NULL, '$2y$10$PpBsFYgcEweV0Bca2A3Bie/.W1Fztw6YivJ7W75H23CtGVTnkHxXK', NULL, '2020-09-22 21:03:21', '2020-09-22 21:03:21', 'normal', 0, 1),
(402, 'Cf', '7248307569', NULL, NULL, '$2y$10$vmrqA2OGCw/LNDNo5H/xveLgFP8DoLzAt2ekeUKlJQsD3Xz5sQLA2', NULL, '2020-09-22 23:24:31', '2020-09-22 23:24:31', 'normal', 0, 1),
(403, 'NISHCHAL KUMAR', '9534420342', 'Nishchalkumar151096@gmail.com', NULL, '$2y$10$gHBOKiyngc2uPM6ZHsV4J.jvQSGuKDpeK.5t.wtmmDHXfkA2yNAQC', NULL, '2020-09-24 12:55:57', '2020-09-24 12:55:57', 'normal', 0, 1),
(404, 'Testing', '1212121212', NULL, NULL, '$2y$10$EPCx4sKpJgVB0faoEwEHbusf0QcTVsybzCSRVqr4GdjmPlrZyM/E2', 'a4i9mhmRrYsArUnJZZjKrcYy4pubnirDaxHezozHHXCCHquN9ff8UInf2drI', '2020-09-24 16:29:03', '2020-09-24 16:29:03', 'normal', 0, 1),
(405, 'Himanshu Papola', '7248307570', 'realtrickswizard@gmail.com', NULL, '$2y$10$Jc9vk0gi9bWi0l7Etw5eIuOGjSwNAZTQumzPmYzVkb287sHGWRo8e', NULL, '2020-09-24 16:49:13', '2020-09-24 16:49:13', 'normal', 0, 1),
(406, 'Dibyanshu', '7992389717', NULL, NULL, '$2y$10$XwKV2CZwHSnN8uJuw6zmIeaGyVl0jhIHGZvHT2JS7qZeLmWgBl40m', NULL, '2020-09-24 20:58:56', '2020-09-24 20:58:56', 'normal', 0, 1),
(407, 'Ashutosh Roy', '8226838988', 'aashutoshroy640@gmail.com', NULL, '$2y$10$VpnY4HxajNTIywlzgHpHWedRbwK.m1CKew8hPOFvQEm5fmp8.m./G', '9HFHfQwii8E08XmszecFgKg4V9lYSEAiyweysEyTzNn0M5diq1ZSIF6WZFKh', '2020-09-25 20:27:35', '2020-09-25 20:27:35', 'normal', 0, 1),
(408, 'Aditya Prakash', '8507235554', NULL, NULL, '$2y$10$cI3HHCNLsEdWO8eJ4pGDie5zJOjHdv/oGdmGGeEN8RCGkNpyygP7.', NULL, '2020-09-26 00:46:57', '2020-09-26 00:46:57', 'normal', 0, 1),
(409, 'Vishal Kumar', '8102454186', 'vishalkrjha8521334514@gmail.com', NULL, '$2y$10$9kYPmO3Fcn20ujmUp.cMG.lGaxc/weOXxC8vRG5aeKxKxZGIauxDm', NULL, '2020-09-26 01:53:47', '2020-09-26 01:53:47', 'normal', 0, 1),
(410, 'Gaurav Kumar', '9999999999', 'gaurav.jss.027@gmail.com', NULL, '$2y$10$J6iDev9W5H6.XIJcAJHljODMdMcVPVP5Zc92YRhrSdlp8/QvdZvLe', NULL, '2020-09-26 02:48:27', '2020-09-29 20:44:10', 'special', 2, 1),
(411, 'Shubhangi gupta', '8210471181', NULL, NULL, '$2y$10$5qvLGnBDCfn.GuGgeGg2Ou0iTzzckjk/Eem94ATyt9KPKCO6EggmG', 'pvFoeIzH6J96IYBlovRkzxtGK3nZ7R5oHeBGHAvDBdJPvEatXS0XThhRhCA6', '2020-09-26 17:19:07', '2020-10-06 23:21:37', 'normal', 3, 1),
(412, 'jaika', '9102422999', 'ak763293@gmail.com', NULL, '$2y$10$abkZSUAV.6lEDSfrx2STw.iEkfo7RGXDZPau08/vbCoyXBSs13s.m', NULL, '2020-09-27 22:21:42', '2020-09-27 22:21:42', 'normal', 0, 1),
(413, 'Rohit Kumar', '6201688107', 'rohitroy17198@gmail.com', NULL, '$2y$10$YmvJvrYSq.Ilf/hkZEvB1eZS4RMvacjOj0NE8J5G3l/Y9XH2DSTdO', NULL, '2020-09-28 16:20:13', '2020-09-28 16:20:13', 'normal', 0, 1),
(414, 'Abhishek Kumar sah', '9431674276', 'sahabhishek51@gmail.com', NULL, '$2y$10$bNCXjzvFCfcsL0I.lThBGebfPDYY2oFlOUVAFWo/u7S4rg5kk5mQu', NULL, '2020-09-28 21:11:18', '2020-09-28 21:11:18', 'normal', 0, 1),
(415, 'Saif Akhtar', '8002072605', NULL, NULL, '$2y$10$4jv.4EqbqrVNO9e8eAQdVORACi/9YDIFZnWHXrRGBnD33HxDidaea', NULL, '2020-09-29 01:25:05', '2020-09-29 01:28:29', 'normal', 1, 1),
(417, 'Kiran Banthia', '7762838807', NULL, NULL, '$2y$10$OZ6BBZJaicDoUZXJVmjJxePArixcHOCW2jqnLAk2yiv7hzcc6xKtC', NULL, '2020-09-29 16:50:56', '2020-09-29 16:50:56', 'normal', 0, 1),
(418, 'Sumit Sinha', '9031057117', 'sumitcmart@gmail.com', NULL, '$2y$10$8qxKVSa74EFDOWNd86DnfuZE.KqVv2BABV3ZbpYj9pQ.DPMvlJmay', NULL, '2020-09-29 21:07:27', '2020-09-29 21:07:27', 'normal', 0, 1),
(419, 'SAURABH SUMAN', '9470207144', NULL, NULL, '$2y$10$aDob634s/1RiN5hELZ7ehe631MG3ZUmYTEN9bnejci3g38Vo9VVCy', NULL, '2020-09-29 21:48:00', '2020-09-29 21:48:00', 'normal', 0, 1),
(420, 'Aman', '9166906287', 'itsaman1211@gmail.com', NULL, '$2y$10$oxB2njBeYKwpDutHxn/QG.V4pTUaem1syAiUtd7r4XOsDQyOEPEWq', NULL, '2020-09-29 22:46:22', '2020-10-13 22:15:47', 'normal', 6, 1),
(421, 'Naamhang Subba', '7635000914', 'subbanaamhang@gmail.com', NULL, '$2y$10$mLbN8sdrihxN/.4RqOyJduZNMC6BAcOX0KIKfwmuO7JibD0Fc3IAO', NULL, '2020-09-29 23:39:51', '2020-09-29 23:39:51', 'normal', 0, 1),
(422, 'Bhushan', '9990711741', '9990711741abhishek@gmail.com', NULL, '$2y$10$PiTD0/L1bmYH3R5le2ZEuuEQK2mWR0xwSgaXJxZuIGwXop1lIQa4S', NULL, '2020-09-29 23:48:36', '2020-09-29 23:48:36', 'normal', 0, 1),
(423, 'Chandan jee', '6206862452', 'ckrmandal30496@gmail.com', NULL, '$2y$10$Qx5eSVhemuE6kyrEHxW1Q.bZzN0BTqOOeqU5n4/1mYh.CRgotbQSu', NULL, '2020-09-30 13:31:24', '2020-09-30 13:31:24', 'normal', 0, 1),
(424, 'Renu', '9471853504', NULL, NULL, '$2y$10$E72HqUTE/xR5gBhBRNx6NOFmRKaZmIaxzStjGvixNcFjhPlqaSVl.', 'cjARhWpYvqhnknb3hBLucXkheL73ifxid5rROw00Jl4ZNzCncrHpjb4voulE', '2020-09-30 22:13:51', '2020-09-30 22:13:51', 'normal', 0, 1),
(425, 'Gaurav kumar', '8529109415', NULL, NULL, '$2y$10$.Q2gNBNZ3kIh3EGOMdcKmezgdZR4Np7sjiCchtt6mYyTgA8CJL1aC', NULL, '2020-09-30 22:20:03', '2020-09-30 22:20:03', 'normal', 0, 1),
(426, 'Abhishek Kumar', '8507225554', 'abhi854334@gmail.com', NULL, '$2y$10$FJD17vFjDVl5vvkUUmzIb./Fy9CNmB/A9AyjCWtoe2hJWQiIl7X1e', NULL, '2020-09-30 22:55:17', '2020-09-30 22:55:17', 'normal', 0, 1),
(427, 'Babu', '7970803630', NULL, NULL, '$2y$10$S3HQC10nxGDGX/oXMEKYfOoPm7C6h7KOPrhyOVv5AjGHo0B6xJoWe', NULL, '2020-10-01 00:39:14', '2020-10-01 00:39:14', 'normal', 0, 1),
(428, 'Animesh Krishnan', '6202748677', 'animeshkrishnanaj@gmail.com', NULL, '$2y$10$UFYZBmpsIfnTtvIHaXRER.Z5Ae4fMCyTnQ2s6ozkeoOKusgdz0LYq', NULL, '2020-10-01 13:52:39', '2020-10-01 13:52:39', 'normal', 0, 1),
(429, 'Abhiraj Maurya', '9798759684', NULL, NULL, '$2y$10$6pJDDMXUtkdJYA3/hAV1sO/iA6YSkK4LeKQAY2Em4/E6nPqQ7S/Hy', NULL, '2020-10-01 17:01:29', '2020-10-01 17:05:30', 'normal', 1, 1),
(430, 'Sudha Gupta', '9471423944', 'sudhagupta655@gmail.com', NULL, '$2y$10$EmF4iV9fnse1yP7CbgtxceEQ8a4tq8TMwlRoYXiqJavp.7JxDEg3i', NULL, '2020-10-01 17:06:55', '2020-10-01 17:10:52', 'normal', 1, 1),
(431, 'Punit gupta', '7488836373', 'punitgupta6719@gmail.com', NULL, '$2y$10$bZ9wq1OWO./2Bal9WiDC6.ZnRYrT1G0PxY5EorX.VnKzsbBvYbZwq', NULL, '2020-10-01 19:27:31', '2020-10-01 19:27:31', 'normal', 0, 1),
(432, 'Anil', '7782878506', NULL, NULL, '$2y$10$VYMRiF/SxwIX0xgHzY0isu74Zi8A/z8fjlr0S8ZLRuEMFMWLCsXve', NULL, '2020-10-01 19:30:53', '2020-10-01 19:46:44', 'normal', 1, 1),
(433, 'Anil rajj', '7632077428', 'anilrajj106@gmail.com', NULL, '$2y$10$P6WnMAy5Eh/NfZ3bgDcwdeRJM2ZORxtn1t6JK4E0nC4lrjEkNvBeK', 'td8yQbklNfXPUwOgdQvXT7Zyu95P0Dni18RS7pVKCpq78sYj8eOgcj11iWe9', '2020-10-01 19:35:02', '2020-10-01 19:35:02', 'normal', 0, 1),
(434, 'Shivansh Ranjan', '8544209505', 'reply.shivansh123@gmail.com', NULL, '$2y$10$w9osPn31iG8xZ5kFCKdnPeyTv0NT2gNNcK799Wi3txMgk41m/75BG', 'IsJWqJsgcPSRNdXN1Jg4iMFpBNfwhn1HBHO8vRrCQ08maj3xkZ7dJsK5udon', '2020-10-01 23:29:49', '2020-11-06 23:40:28', 'normal', 23, 1),
(435, 'Piyush Kumar', '9628196251', NULL, NULL, '$2y$10$pRCU2ADZywvaefO6mZ9IG.YuESYkb4QFgeIjVA1SiKLL0iBwdZ3Gu', NULL, '2020-10-02 12:12:01', '2020-10-02 12:12:01', 'normal', 0, 1),
(436, 'Ruby Ranjan', '8709995483', 'rspranjan123@gmail.com', NULL, '$2y$10$DmakwwDQAgiVMfPXd.C38.Ph2GCpNAFMair11XL7F0VYiY65GEHWu', NULL, '2020-10-02 18:57:29', '2020-10-03 16:20:02', 'normal', 3, 1),
(437, 'Yash', '9953143513', NULL, NULL, '$2y$10$j3bvg66fnjnG8jPIylQEb.Cb.GViIP30iKB9aJ4R7l7ZIBTYEwqBy', 'x9rNcz27NIkTItpyieSfX4nJhay1QeJg8zUB5JG8oUCqygnojjKxCnTim5cO', '2020-10-02 20:17:32', '2020-10-03 20:28:00', 'normal', 1, 1),
(438, 'Shivam Kumar Gupta', '9572506095', 'shivamkumar95866@gmail.com', NULL, '$2y$10$HUD58vEJgX2BKU6ehBQfUO5Kwai9kTW0bcD/aLpxkki3RsfTQHf6a', 'MBX524Xe29ey0zppyZO3KRtRNXHsYeTTHgaBJAJjDaonFXvNI97HX036aDlv', '2020-10-03 00:51:22', '2020-10-04 19:15:47', 'normal', 1, 1),
(439, 'Anshu priya', '9162066135', 'anshupriya562@gmail.com', NULL, '$2y$10$HMyKqUzy1POifMIc3yhxeeEJHQYICg6JyZBZmCtKHXwK3g0Tg9F0S', NULL, '2020-10-03 15:26:42', '2020-10-03 15:26:42', 'normal', 0, 1),
(440, 'Nitin Dutta', '7488355982', NULL, NULL, '$2y$10$cRiCYa8cvsYnQXzweepiAOVzUI04kxsav/vUgFSD/ODGHHKhP09KG', NULL, '2020-10-03 15:53:38', '2020-10-04 19:54:08', 'normal', 4, 1),
(441, 'Sanjeev kumar', '9546313910', 'sanjushah50034@gmail.com', NULL, '$2y$10$.50frQ1ox4LhWZDF/6Zo4.eaQ6.b7dg6Q20p6uvVL6UaLyGdkfwHW', NULL, '2020-10-03 15:56:07', '2020-10-03 15:56:07', 'normal', 0, 1),
(442, 'Dharamjeet jha', '8709074727', 'dharamhspfbg07@gmail.com', NULL, '$2y$10$Unuse7.1z6o37SwMStgVpeHwRmXNR/qIk6yiX76Kepepzl0w90aDe', NULL, '2020-10-03 16:03:25', '2020-10-03 16:03:25', 'normal', 0, 1),
(443, 'Pradumn', '9973779554', NULL, NULL, '$2y$10$rNJeHvO4Cd7UE8K7Mzy1l.m5g/9vL/2J5lV2y0NuvqOVxlvBtS3s6', NULL, '2020-10-03 16:29:22', '2020-10-03 16:38:22', 'normal', 2, 1),
(444, 'Sumit suman', '8130522771', 'sumitsumangov@gmail.com', NULL, '$2y$10$BPaDWXrSYANtJOkTAN6YMuJxTe58B2mg874vPnYxK0a.KKBRI0G3W', NULL, '2020-10-03 16:44:31', '2020-10-03 16:44:31', 'normal', 0, 1),
(445, 'R rahul', '8340527070', NULL, NULL, '$2y$10$gW1sGrh0Hi2WajGofefQHO0/KXgUu2diwJK6jmwzf4Y3xSH3vtnj6', NULL, '2020-10-03 17:52:53', '2020-10-03 17:52:53', 'normal', 0, 1),
(446, 'Rohan Ratnakar', '8406069432', 'rohanratnakar2003@gmail.com', NULL, '$2y$10$QQfDRrsiCRpkt0JFGHGFGO93oFSurVLsJPJ5xT.IbCu1tGee18NCG', NULL, '2020-10-03 21:55:12', '2020-10-03 21:55:12', 'normal', 0, 1),
(447, 'ABDUL WAHAB AZAD', '7250732123', 'wahabji007@gmail.com', NULL, '$2y$10$JY4lMy2JP5.94dxlU1ZKg.kz2M/2PXBkmgVXS9JvL0P/XbaOojXii', NULL, '2020-10-03 21:57:01', '2020-10-03 21:57:01', 'normal', 0, 1),
(448, 'LUCKY RAJ', '7061254045', NULL, NULL, '$2y$10$mnMtOpKWh.7ThELjES5HjuH/UnAq1j/dHhQ6HJHuY3vY9AwP2MD42', NULL, '2020-10-03 22:07:16', '2020-10-03 22:12:18', 'normal', 1, 1),
(449, 'lucky shekh', '8268245786', 'luckyshekh101@gmail.com', NULL, '$2y$10$zzCkPTKO0UYA16ZpuVocYO29Rx5bn67mO9Kx.v2T.MhmkhbpsLqMG', NULL, '2020-10-03 23:33:01', '2020-10-03 23:33:01', 'normal', 0, 1),
(450, 'Pramod Sharma', '9955232732', 'tcartfbg@gmail.com', NULL, '$2y$10$mm29YA0YjsMRM.7AFmvUZ.l5/waEz2OG.T052NDfD8LqYATBnisFq', NULL, '2020-10-04 00:27:18', '2020-10-04 00:27:18', 'normal', 0, 1),
(451, 'Muskan choudhury', '9798259051', 'muskanchoudhary496@gmail.com', NULL, '$2y$10$BbYEBdmC6OtmxhFfY9GwfujUMYyhOA1nXjekypxJi7nvluzgY4hWu', NULL, '2020-10-04 02:24:00', '2020-10-04 02:24:00', 'normal', 0, 1),
(452, 'Rohit', '8340201962', NULL, NULL, '$2y$10$UdOseADUVPy4JC5oTtDSsOmlFf6rpCfM6FeirWDtl8w3aMmdoDdfq', NULL, '2020-10-04 12:02:52', '2020-10-04 12:02:52', 'normal', 0, 1),
(453, 'I C Mandal', '8507950050', NULL, NULL, '$2y$10$0.94MBXLG5GVDDDuG7FSiOmDRcn6Bmwonx8tLj4jkzPe5ILaR6U.m', NULL, '2020-10-04 12:08:07', '2020-10-04 12:08:07', 'normal', 0, 1),
(454, 'Kundan gupta', '8210967974', 'kundanan1991@gmail.com', NULL, '$2y$10$9tsHrrfQhdyWsL.4ulHNJ.iiY763ijx2rfyGY6yQPgVB.bpAmx0gS', NULL, '2020-10-04 12:52:57', '2020-10-04 12:52:57', 'normal', 0, 1),
(455, 'ATUL', '9142907832', 'atulfbg@gmail.com', NULL, '$2y$10$h538KVkvUMCbvuSjgpFmceThN7g01mwo7Ps1a64ina.IeU.xdOK5i', 'L6qZDuQvWnXt16Kz5hfvIcofJcpVNOKMRRSuwui6thw7sdyhXNWjAdKMlEXo', '2020-10-04 13:05:52', '2020-10-04 23:48:39', 'normal', 4, 1),
(456, 'Shahrukh Ahmad', '7606995057', NULL, NULL, '$2y$10$kCK4Hxicz9Q3JmQd4QLVtOXAdJquEFbnsFJJ3qVD1rJqE.E3eSPDq', NULL, '2020-10-04 13:32:04', '2020-10-04 13:32:04', 'normal', 0, 1),
(457, 'Rahul', '7903742350', 'kool.emmotions@gmail.com', NULL, '$2y$10$2BIyXTRLdkBUxGoesRvzT.B0fb0aVyRZKcvtkM0qJpuYPnzVdnsny', 'XmZkpOJuid0U6VYTEOTKMkwYBBvHdAhrkbldd7uImBVHYwHzDxE1xBI8CFU3', '2020-10-04 14:10:50', '2020-10-31 22:25:08', 'normal', 4, 1),
(458, 'Anika Deo', '9835360994', 'anikadeo0223@gmail.com', NULL, '$2y$10$4gLljzf9zU3sJSAMkz6ZzO6RVjNInc8SoKt6wBWKUP7I01VwTsYLO', NULL, '2020-10-04 14:23:08', '2020-10-04 14:23:08', 'normal', 0, 1),
(459, 'Ayush Kumar', '8521795373', 'ayushkumar50036@gmail.com', NULL, '$2y$10$pRrE.V.6ArRKFfgJBb6W8.nl5dQkpCUADFVrZlWuUBHWR/dvWaUOy', NULL, '2020-10-04 14:28:43', '2020-10-04 14:28:43', 'normal', 0, 1),
(460, 'Abhishek', '9946484525', NULL, NULL, '$2y$10$kvBJkkOgxNVQXmS.lpSumeW2nWrF64mtley.g0irWqrBNUICdQk1y', NULL, '2020-10-04 17:41:11', '2020-10-04 17:41:11', 'normal', 0, 1),
(461, 'Aayush', '9693109565', NULL, NULL, '$2y$10$frcqgnjLe7uLIEviQbhgK..aPMXPrlN/qALA2JRrzlrrjwsLap5x6', NULL, '2020-10-04 22:53:52', '2020-10-04 22:53:52', 'normal', 0, 1),
(462, 'Sahil', '9122642570', 'itssahilgupta17@gmail.com', NULL, '$2y$10$qGnl2X/360wRp7jsa.AfCudi/Gj89g6HoyLrNL5ws5XckEmehEoUe', 'NAjW8bVDJSULm8rJHmkrPDqIxgBly3UD39Mz9vOiIHl9NPZxPM46hSitt6Va', '2020-10-04 22:56:03', '2020-10-16 23:07:07', 'normal', 1, 1),
(463, 'Bijal Kumar', '8084971258', 'kumarbijal890@gmail.com', NULL, '$2y$10$11Qy8Kdj8SV3SwV5LSY8u.EiURyRSG2NjrO3u2HYlsno/7mSdUujW', NULL, '2020-10-04 23:37:49', '2020-10-04 23:37:49', 'normal', 0, 1),
(464, 'Alok Kumar', '6202151604', NULL, NULL, '$2y$10$tk1E/H3Cx8TAmPVxEc//dOsvHzOhBzDqx/iGAqC9bjOQcvjL48dlS', NULL, '2020-10-05 12:42:05', '2020-10-05 12:42:05', 'normal', 0, 1),
(465, 'Ankit deo', '9905161563', 'ankitdeo43@gmail.com', NULL, '$2y$10$C5t3m4Qb/LF84rOMJmyrs.DtZh07GVrqg0oP69fanBJcJx/AHmDfu', 'f4Mu1axXbkdQdjNIBzVSiKuewpk8Ug2bw35BQNnfa953lTmrSnKrfUoqLqzw', '2020-10-05 14:50:29', '2020-11-05 23:44:03', 'normal', 7, 1),
(466, 'Dr T K Singh', '9570408919', NULL, NULL, '$2y$10$6S1hWIrTE1nsyh6WWLW5j.a9BJiWW4PRACQQ8ZTEq6Ev1xDg93g8u', NULL, '2020-10-05 16:46:15', '2020-10-05 16:46:15', 'normal', 0, 1),
(467, 'MD ASRAFUL HAQUE', '7549939490', 'mdasrafulhaqueer@gmail.com', NULL, '$2y$10$0zifY6Ge35eLnVph9Pxjw.0GL4a2QrJVRhaWsA1eh9ZP6HNrQsjx6', NULL, '2020-10-05 18:40:18', '2020-10-05 18:40:18', 'normal', 0, 1),
(468, 'Sadhana sah', '9006695317', NULL, NULL, '$2y$10$QNSmcPIf.B5VJ1WeSSdRzueyp9t.sFDGVeGFv5xbATxBW2KtjK2yy', NULL, '2020-10-05 18:41:13', '2020-10-05 18:41:13', 'normal', 0, 1),
(469, 'Pintu Kumar', '7908322368', 'pintu.7908.com@gmail.com', NULL, '$2y$10$9SR7TuFg1dyaxt39of8BSOEgmpQKethzsSHforv1wbbZU5P.UOriS', 'DWvo3Y86oIBMxlJlHVAOLdCu7Or1SyH3scT4zho3L9p7ReQgjotz7D7z2Om6', '2020-10-05 18:51:22', '2020-10-08 01:14:15', 'normal', 0, 2),
(470, 'Priyam Srivastava', '8935971396', NULL, NULL, '$2y$10$wluV31O.y9RphhEIF7r4ZOiy/ddi4yaVvBAluibTO5d6DVToFSG5C', NULL, '2020-10-05 19:54:26', '2020-10-05 19:54:26', 'normal', 0, 1),
(471, 'Ashish', '9281754623', NULL, NULL, '$2y$10$3XxdLlOd6OSoYmjbqxAEAOMCuWmf10/OLbLd6Bz8AHR/43UGlH0w.', NULL, '2020-10-05 21:03:42', '2020-10-05 21:03:42', 'normal', 0, 1),
(472, 'Ajay kumar Gupta', '9905663008', NULL, NULL, '$2y$10$8OmnqQsRaV4j0I.Le5Fo3OvY3jp4kWar209Q4g45h1FCBuiu9HRFu', NULL, '2020-10-05 21:55:56', '2020-10-05 22:19:11', 'normal', 1, 1),
(473, 'Piyush Raj', '9334514217', 'piyushraj7002@gmail.com', NULL, '$2y$10$3J3E6E/lVOmwaTOHAqP2Gu2gXG8cUfELEXv2y/D4DPHCd6E0CI7q.', 'R0I9N9soG2uFAkPutLn7TiOv0xztaQlvf9zGrkhvqOw4MEBGZNQPersomzsW', '2020-10-05 22:34:30', '2020-10-05 22:34:30', 'normal', 0, 1),
(474, 'Testing', '9876543215', NULL, NULL, '$2y$10$FUwP7tpMU.I4T3YcLtVHnevwwl7WSzm.LcmBWnaNtWg2sZooZ.gSm', 'OzQW8g6xWvovcttCf0B4yo9OcyMnct336Q8pfaedclLwCl4NW3yPdGDmvlLG', '2020-10-06 03:55:38', '2020-10-06 03:55:38', 'normal', 0, 2),
(475, 'Bikash Pandit', '9061610455', 'panditbikash420@gmail.com', NULL, '$2y$10$Z3dtQfMFsyqrLscSv/4kXe8NWbUzNvd/MkyrWkd9oCf6aZ6xQS43q', NULL, '2020-10-06 14:00:09', '2020-10-06 14:00:09', 'normal', 0, 2),
(476, 'testing', '1111111111', NULL, NULL, '$2y$10$6wMdbgh.OLealPyIzQZyEOTKUZ27oO8Kz1EUDAbc5ayE5EjWLoMde', NULL, '2020-10-06 14:17:32', '2020-10-06 14:17:32', 'normal', 0, 1),
(477, 'Chandan Pandit', '7699902974', 'panditchandan90@gmail.com', NULL, '$2y$10$FaUstOXTb8Y./vo.hgfkgO/H18ZRKal9Isu3Pqmni1GnEYKjShLr6', 'pdGlxIGj31QKvGqu4NzSQVAa7ZPqOyo4eC6mzyS4OoVf7sV1xdtOFWk80HBT', '2020-10-06 14:40:19', '2020-11-03 22:05:11', 'normal', 5, 2),
(478, 'durgapur', '9876543214', NULL, NULL, '$2y$10$U27HHOYfoDPIA0dop9muu.Su25TK00oZZQx2Rw.x/x/ad/AmsA86u', '3nqNDZiqpa5TuBXUwzGyrgLJgTwBVosPEb3EFAfXOeLcznOTr9NeSTvkxqPx', '2020-10-06 15:00:03', '2020-10-06 15:00:03', 'normal', 0, 3),
(479, 'Azad', '7063695686', NULL, NULL, '$2y$10$oH3s1scuTwANnMqMaG9wH.9gFnjRzxiErUgWvQTsmHz.5OfEwLBwO', NULL, '2020-10-06 16:18:01', '2020-10-06 16:18:01', 'normal', 0, 1),
(480, 'Ajeet Chaudhary', '9593655116', 'ajeetchaudhary79143@gmail.com', NULL, '$2y$10$R68MMVIfvfCPw/vkZII7ieFG1qDstKzAivI5GhAnInnogbEwni49m', NULL, '2020-10-06 16:18:32', '2020-10-06 16:18:32', 'normal', 0, 2),
(481, 'Santosh Shaw', '7001936541', 'santoshshaw5678@gmail.com', NULL, '$2y$10$G9Qnj2lwf0awp0NNxaK.geKtOWwhv6klyxvbB0AKU2FBj7tktfgFe', NULL, '2020-10-06 16:29:16', '2020-10-17 22:34:19', 'normal', 0, 2),
(482, 'Bikash Kumar Mahato', '9083756692', 'bikashkumarmahato289@gmail.com', NULL, '$2y$10$Au0XefDvClJZBjUAqyIrA.QtsiiOWqmdVwoPepCjtBe7Fshcfqquu', 'MwdwSVfEZbl2eUrdTOY0Kfnl5fkznVyRuikyxNXuuHiAys8vkV2sbyjtBZVD', '2020-10-06 16:49:37', '2020-10-06 16:49:37', 'normal', 0, 2),
(483, 'Sumit Chaudhary', '8918078082', 'sumit801678@gmail.com', NULL, '$2y$10$IO2IOIMtNqOE6C6YifZKs.p1HG1NNjMnZZoISVcB6t3xefjEAZiNa', NULL, '2020-10-06 17:13:01', '2020-10-06 17:14:08', 'normal', 0, 2),
(484, 'Akash Gope', '8900745152', NULL, NULL, '$2y$10$LD79kkFQ2oWq2awiqtZhYu9ec6jf4BMYE1sgo9RuX209cMGeR4RIe', 'Pkb2wHXibY0gV6N61SBE8Ie5sIQkZ8JlV4At7F60uuxSONG7yaAItxNLx4n6', '2020-10-06 17:15:39', '2020-10-17 20:58:17', 'normal', 3, 2),
(485, 'Sangita Mallah', '9932909672', 'sangitamallah2016@gmail.com', NULL, '$2y$10$DiXeSJ7TsK0yIElhwWLAmueDyRFwpDopBqH0BuqzwimHS.cWTkyaK', NULL, '2020-10-06 18:31:53', '2020-10-06 18:31:53', 'normal', 0, 2),
(486, 'Hrithik', '8004915069', 'srivastavahrithik3@gmail.com', NULL, '$2y$10$9vdxpuz2cALOXe/F/HqAeeFUaU1SscENQAnLB98noTdMMJKr1L5Zu', NULL, '2020-10-06 20:46:51', '2020-10-06 20:47:19', 'normal', 0, 2),
(487, 'sanatan raj', '8287671997', 'sanatanraj2004@gmail.com', NULL, '$2y$10$o1Ds328oqOU5MOrjXRPzxe3mCMvFBcdvUxEfaQaf1Ldo/H5VJzSkK', 'JP4gUe6kE5aJpHDstfKwKp6JnmhQ7B0N77rRGyaAUsjceC08xR4S4mS6UC3q', '2020-10-06 22:13:17', '2020-10-06 22:30:27', 'normal', 1, 1),
(488, 'Bidyottma Kumari Jha', '9064476416', NULL, NULL, '$2y$10$jwkS0VzWu8YDhOygYEYy.O9ccMakPPy41RaBiEXXMkNg.NFVcwN2O', NULL, '2020-10-07 01:32:24', '2020-10-07 01:32:24', 'normal', 0, 1),
(489, 'Kunal Anand', '9113407657', 'anandkunal666@gmail.com', NULL, '$2y$10$49y3YYVywUFQwgfBmuPd/OoO/buNGVvbS6Gwnl3RCL0.Q4yxKbovq', NULL, '2020-10-07 13:49:28', '2020-10-07 13:49:28', 'normal', 0, 1),
(490, 'Piyush', '6299912057', NULL, NULL, '$2y$10$x6.dKS9OTmrvnQFyDANiUOVQkjiOZ6Glvhlk8v6OOfF.SHQ4pUr8O', NULL, '2020-10-07 20:18:18', '2020-10-07 20:18:18', 'normal', 0, 1),
(491, 'Nitish kumar', '8825384627', NULL, NULL, '$2y$10$OUQLZ3GvINWUJaL9ty1M8ej6k2sW.Pc4FzX7CsOOgkHaQw4lq5Jj.', NULL, '2020-10-08 01:30:41', '2020-10-08 01:30:41', 'normal', 0, 1),
(492, 'Nehal Aalam', '7004197703', 'nehalaalam00@gmail.com', NULL, '$2y$10$.1dTcL.W572BCoW5D.MFxeFw3lwfN1n/HcnUXfkcCfFKBKyYlCrhO', NULL, '2020-10-08 02:21:15', '2020-10-08 02:24:39', 'normal', 1, 1),
(493, 'Pratik Mishra', '7320868282', NULL, NULL, '$2y$10$ayiScY4jAxSLMFFeRxBQ3O8IF1vE6LLi2hJOfjhI.MXTVasE6VM7a', 'wNB4zVqa6oO0Y4KpylJ6LCDIfrFgjNwneplp1i4BElB02tpsYuRTJoqqnxq9', '2020-10-08 19:48:49', '2020-10-08 19:52:25', 'normal', 1, 1),
(494, 'sikendar kumar', '8521949352', NULL, NULL, '$2y$10$t4bm9Ijmtum7fR7YjzPd9umTy2phiZQNyHSS/FR/BZQBKuEw3HTw6', NULL, '2020-10-08 20:22:21', '2020-10-08 20:22:21', 'normal', 0, 1),
(495, 'sikendar kumar', '7667440682', 'psikendar5@gimel.com', NULL, '$2y$10$RVnRg44i1/l5Io3z/CxNMOUSurQITSXdiw9ncn6.ym.5/GEiDyXX2', NULL, '2020-10-09 01:12:13', '2020-10-09 01:12:13', 'normal', 0, 1),
(496, 'Shubham', '9334727693', NULL, NULL, '$2y$10$PX3Cbm9gmwlDghi7c6KNmeCbbQQZtJI3QTpRBphIgczufXq14rkfS', NULL, '2020-10-09 12:47:50', '2020-10-09 12:47:50', 'normal', 0, 1),
(497, 'Abhishek Raj', '7295096759', NULL, NULL, '$2y$10$xQyhfZuUIb8WHLIiTw3Td.4bTS8xem9RBWqVLwYnBQ7tO17rhzqHq', NULL, '2020-10-09 17:27:36', '2020-10-09 17:29:20', 'normal', 1, 1),
(498, 'Subrata Das', '7098274357', 'das468722@gmail.com', NULL, '$2y$10$Vjm4WOXgdPY6NASmH/yurOX6LrsWBsgPR6VmcDwf2CM.Yx0tw5v.W', NULL, '2020-10-09 22:16:26', '2020-10-09 22:16:26', 'normal', 0, 4),
(499, 'Sikendar kumar', '7488184060', 'psikendar5@gimel.com', NULL, '$2y$10$O2p9JA7exoaXQe4j/Ztb/OnPUpulfGnOpSDy00PKPjR8IdhcfiURK', NULL, '2020-10-09 22:23:46', '2020-10-09 22:25:48', 'normal', 1, 1),
(500, 'Ajeet Kumar Chawdhary', '9593655113', NULL, NULL, '$2y$10$G6DVh2BLntSedBUbB3l1X.KegHxCsIj4IoLaYywNpyO2fZVTM5ob6', NULL, '2020-10-09 22:44:17', '2020-10-09 22:44:17', 'normal', 0, 2),
(501, 'Rohan bharti', '7602215026', 'Rajukumarmarik12@gmail.com', NULL, '$2y$10$aP4ZZa.Yllt8iVgZISWIc./eWJZDOrmM1.v.VKaIuIsggcphtVIk2', NULL, '2020-10-10 00:11:34', '2020-10-10 00:11:34', 'normal', 0, 1),
(502, 'Prince Raj', '9973025222', 'princerajkumarmehta@gmail.com', NULL, '$2y$10$gvtfiV1W8jDER8/FlM9NE.Zg6Dbjn7Da3qyhno30PqxTmn2URLmUq', NULL, '2020-10-10 12:17:56', '2020-10-10 12:17:56', 'normal', 0, 1);
INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `usertype`, `no_of_requests`, `city_id`) VALUES
(503, 'Prasenjit Roy', '9832244727', 'windblowing83@gmail.com', NULL, '$2y$10$b1gXaqFNH2EyKFBr9fCIT.0SrwqOX7t4BQftmL7XEjih0ls6hvMDe', NULL, '2020-10-10 16:03:12', '2020-10-10 16:03:12', 'normal', 0, 2),
(504, 'suraj marandi', '9399311035', 'surajjj16@gmail.com', NULL, '$2y$10$ujQC6hGSge13iZYwYIPm5OITwEz2GJXoBQT8OgHmuVOWMyRRA7Mui', NULL, '2020-10-10 22:05:06', '2020-10-10 22:05:06', 'normal', 0, 1),
(505, 'Bishal Kumar', '6294369209', 'bishalkk8116@gmail.com', NULL, '$2y$10$eZvhRBlOwOMT/VJtphryhuVsSXqMfHiHl9LhvDF63ZwFOufLkSUVe', NULL, '2020-10-10 22:40:27', '2020-10-10 22:40:27', 'normal', 0, 2),
(506, 'Suryabali Pandit', '7098546984', 'suryabalipandit5017@gmail.com', NULL, '$2y$10$5Cl9PvpmnOUn/XoXOZt4POl9V.d.zLZ8c78ikipwOqPzNREB7H5n2', NULL, '2020-10-10 22:41:30', '2020-10-10 22:41:30', 'normal', 0, 2),
(507, 'Himanshu Ranjan', '6295685161', NULL, NULL, '$2y$10$9CMhcNerPW.kkbsVeUCT2O7TrDnmuPgTdKimEpSMSefmmMYMYOhWm', NULL, '2020-10-11 12:23:57', '2020-10-11 12:23:57', 'normal', 0, 2),
(508, 'Aarav', '9264109849', 'ananaarav94@gmail.com', NULL, '$2y$10$ylLsFAliCNPAyEaK0fdzxesY1z1LYHJE0pgFurJqNEB7dWHsKvD0C', NULL, '2020-10-11 18:22:00', '2020-10-11 18:26:21', 'normal', 1, 1),
(509, 'Hritik kumar chaudhary', '8271305078', 'yashr4370@gmail.com', NULL, '$2y$10$yZIq8IiRrYQXynnoaZ0dpeAWQjET.npp.Xx/lg2xllnXa49D2d0bq', NULL, '2020-10-11 20:10:22', '2020-10-11 20:10:22', 'normal', 0, 1),
(510, 'Markenday Dubay', '6209000299', 'admmarkenday@gmail.com', NULL, '$2y$10$Uk4bFLwTBQNOzqtsKm.PW.gi89AG7gFENpn48E1qXLzNSCQM0Ysva', NULL, '2020-10-11 22:31:59', '2020-10-11 22:38:11', 'normal', 1, 1),
(511, 'Dev Aditya', '9661155591', 'adityadev4324@gmail.com', NULL, '$2y$10$qO.YQQkifc2McclpveJ.oOLXAS9wxWeYWgmOYrhPqm185BhRAqEXi', NULL, '2020-10-12 08:48:52', '2020-10-12 08:48:52', 'normal', 0, 1),
(512, 'Gopinath Gorai', '7029889325', NULL, NULL, '$2y$10$XMaCacdBYgFgSIn17qd.We0HPUS8MNFG3R4I7.2/lnGaqIA/TIYoG', NULL, '2020-10-12 15:42:29', '2020-10-12 16:06:15', 'normal', 2, 2),
(513, 'Shahbaj Alam', '8210325250', 'alamshahbaj05@gmail.com', NULL, '$2y$10$yuJ87F/HpE7l8BYpg4Pvzu6450YYVMeFs5ZcbmpdMlW8ZB2m/QjT6', NULL, '2020-10-12 18:02:56', '2020-10-12 18:02:56', 'normal', 0, 4),
(514, 'Deepkumar Mahato', '7001883142', 'deepkumarmahato106@gmail.com', NULL, '$2y$10$n3G6BQym4/qkptE7LL0LJeHL85HinH90VYJ4d6bBBIGcCjF6tMW7e', NULL, '2020-10-12 18:44:54', '2020-10-12 18:44:54', 'normal', 0, 2),
(515, 'Bidyottma Kumari Jha', '9609604319', NULL, NULL, '$2y$10$djHKscMnkJ6/zayVSlKBOuZj4sB4uY9KUX9qSSjPVlOGDdSeF3qSC', NULL, '2020-10-12 22:02:13', '2020-10-12 22:02:13', 'normal', 0, 2),
(516, 'Ranjit  jaiswal', '7488875680', 'ranjitranjit64@gmail.com', NULL, '$2y$10$FftGDukb84ZNysmRdRxCuOnJkSk93pm8Iv8gi3gfvFQ/M44mhOQYi', 'QaBUbgLwp7yvmtYmYa8sNyActsk4HtFnH6kiBAtA5y5lq4RTgUQ83ZfzHyOi', '2020-10-13 15:16:56', '2020-10-13 15:16:56', 'normal', 0, 1),
(517, 'Md Zishan', '8986391607', 'zishansheikh111@gmail.com', NULL, '$2y$10$cltysbUG76k2gRAm0DwWwO/bLSk.ocJMstIDNT8fFUO52y2JCjz6C', NULL, '2020-10-14 15:22:02', '2020-10-14 15:22:02', 'normal', 0, 1),
(518, 'Sonu kamat', '7004419123', 'santoshkumarkamat307@gmail.com', NULL, '$2y$10$sO7YRaUJpJRUuKX5Iglww.vc1Yyb9vDRprJXvFZTZRWmu57KGPkei', NULL, '2020-10-14 15:30:23', '2020-10-14 15:30:23', 'normal', 0, 1),
(519, 'Vivek Shaw', '7001640428', 'vickyshaw0807@gmail.com', NULL, '$2y$10$j96yZNvgKMF69aFa77otDeJTTRDbKykVVeT00wAf4kajiyxibpOlq', NULL, '2020-10-14 15:43:35', '2020-10-14 16:00:21', 'normal', 0, 2),
(520, 'Jitendra Mahato', '7001406511', 'jeetbala08@gmail.com', NULL, '$2y$10$bUWnMTmMgAoOXaOiqqpB4ObDB/seNRmIU/RmbHgifWk4Yp0u6M9ze', NULL, '2020-10-14 15:54:16', '2020-10-14 15:54:16', 'normal', 0, 1),
(521, 'VIVEK KUMAR', '9934988559', 'vivekforbesganj@gmail.com', NULL, '$2y$10$M/8V41bjsvRoVb0zAyzky.OkNxs36SRACMi0nAvE1LDHmTdr5oD5q', 'sJF5qlecmkEI0zpcP6PqcdqyaIlqOjz7lbrItWqoU2vaLCzhUmUpdi8Grmi6', '2020-10-14 15:54:28', '2020-10-14 15:54:28', 'normal', 0, 1),
(522, 'Mahadev rajak', '6006014512', 'aditirajak61@gmail.com', NULL, '$2y$10$9UWuQkbLtsyiB1kBj8ZAdOul.h7WTtWhmiSFlADHu1SQwvleOyVCi', NULL, '2020-10-14 19:18:10', '2020-10-14 19:18:10', 'normal', 0, 2),
(523, 'Nitin Raj', '6287311321', 'nitinraj8298.nr@gmail.com', NULL, '$2y$10$SHL73CBdIaXqrukewyHYxuoKPKVvgh14PILovjY9enmOYvcB4Btw2', 'QtEOENNcSk5X5GuHUlrlEMycEHlkv74YLdLbmnXtX6h4J6T5zbngNG64iwLu', '2020-10-14 22:01:20', '2020-11-07 00:18:10', 'normal', 2, 1),
(524, 'Preetam kumar bharti', '6207061605', 'kumarpreetam2018@gmail.com', NULL, '$2y$10$CWYTUV5WI7mrklSvWZOONOwq7WYv/cI4dhFep0RF3jqKPcWm0ujM.', NULL, '2020-10-15 02:05:27', '2020-10-15 02:05:27', 'normal', 0, 1),
(525, 'Akash', '7970688614', 'astrikk13@gmail.com', NULL, '$2y$10$RN3qHjrVNvAFZPVySwtslOASoLGTiEh48eicjf4kQZWcxWdBb7Pmu', 'x8efwz8q3WrONYBctitmrJlazPqSGkrxXC2evsgPgdPCqwSy0ciacbBVMPVn', '2020-10-15 13:31:00', '2020-10-17 15:36:53', 'normal', 0, 4),
(526, 'Simran  Jha', '8837577420', 'jhasyh15@gmail.com', NULL, '$2y$10$ZaNiXOcgXf1U73oNPVm5teV073flpKmUJSSehQWvHIn.xrddJIVce', NULL, '2020-10-15 15:21:18', '2020-10-15 15:21:18', 'normal', 0, 1),
(527, 'Shivam Bhagat', '8969937107', NULL, NULL, '$2y$10$yrWyN75P9wZuzEXq4uWMieuolJXVEpKfPPck/Ouykn9JQF2dv621S', 'NR3MNBTeE3QH4ZGUSbGRLSutZmK14UJTOhwaHVqEQGuF2Jwx2Rj92kMEjREb', '2020-10-15 16:02:02', '2020-10-15 16:02:02', 'normal', 0, 1),
(528, 'Md Nishar', '8757473117', 'mdnishar8757473117@gmail.com', NULL, '$2y$10$5cagK9AOC2yI1NM56aoKtO7X8.QFMjB1ITM9bXmdgYOlHRNr8FYpW', NULL, '2020-10-15 18:19:13', '2020-10-15 18:19:13', 'normal', 0, 1),
(529, 'Shubham Roy', '6205563461', NULL, NULL, '$2y$10$E9etuTMsIdFCxIH5syigGOksCHWhaMIjh5WrzHx7BbeSwJ46XwoZO', NULL, '2020-10-15 18:48:50', '2020-10-15 18:48:50', 'normal', 0, 1),
(530, 'Ritik kumar', '7004984870', 'ritikkumarfbg31072005@gmail.com', NULL, '$2y$10$MO39FO4z1P1dJS8jqg7Q9OZaVakDDRzQITuDrtV.1gAHs23M0Qgju', 'dmmoa8Yt5ctzKdPF6GE7WsU6X8TmHjoeI93ZxcChrTWzJihyfLo8IIgC7akJ', '2020-10-16 09:51:30', '2020-10-16 09:51:30', 'normal', 0, 1),
(531, 'Abhijeet', '9911293956', 'abhijeet16th@gmail.com', NULL, '$2y$10$s/lRvgMAyjxtJUKcnUE5rOMLRtXtcPKrMBGG0OHd.J8avEIzYfHpu', NULL, '2020-10-16 12:25:52', '2020-11-01 01:01:25', 'normal', 1, 1),
(532, 'Shashank keshri', '7488205789', 'shashank.keshri234@gmail.com', NULL, '$2y$10$Rn0cuEk3JhvZ57C.ppLnX.aoLqTrabsEEhYGaAsXTD52Hp9k34Iwi', NULL, '2020-10-16 18:42:50', '2020-10-16 18:42:50', 'normal', 0, 1),
(533, 'Lal Babu', '7991161575', 'laljeetbabu799116@gmail.com', NULL, '$2y$10$U73gmYf5Opc5q9o6NTGZM.oSp8AN2C4wDAQQ/6my6ylsArB1o1x/.', NULL, '2020-10-16 21:23:08', '2020-10-16 21:23:08', 'normal', 0, 6),
(534, 'Amresh kumar', '9588934616', NULL, NULL, '$2y$10$glY4m.T3OLn5RUBN7pngQuLlt7z/DjtT4yDnPPrE3uEChnFKeoTZW', 'X5hriVjIwAmxLGmhNMN1JhlTVwvRQHr4WFupmQdTgl7mzQ25qSKpgQ80isGV', '2020-10-16 22:58:18', '2020-10-16 23:00:06', 'normal', 1, 1),
(535, 'Rounak singh', '7478218893', 'rounaksingh9932@gmail.com', NULL, '$2y$10$SON4DAFuG3GZBBtneiTOOevr4./s20tLJag7SzyWmqzRRVczHkXW.', 'EW2Cfif1KY6V5MFv0ZBvUj80wBRpYFUqTsLx5xW7mWJBROnATsMdTeJzwskl', '2020-10-16 23:32:54', '2020-10-16 23:32:54', 'normal', 0, 2),
(536, 'Dipak sharma', '7001895835', 'dipakkumarsharma739@gmail.com', NULL, '$2y$10$r6zvfQzHY2UHKCcqV/IbOe5z3hW5BVUKNht..M0xGv5T/19icOtJ.', '5irCTUtGg7m0x59fr5OWz0xh3m77wCXgsqOFvI3juPo5ACbG3FLuYXCqcvFY', '2020-10-16 23:40:52', '2020-11-04 18:13:12', 'normal', 0, 2),
(537, 'Anil', '9155412004', 'lovingboyanil854318@gmail.com', NULL, '$2y$10$6gQWB3PALyGTgv45jHcvrureWJxC/4r.aZqTaL23vJ5iAX9uwGk4G', NULL, '2020-10-17 15:22:14', '2020-10-17 15:22:14', 'normal', 0, 1),
(538, 'sajal paul', '7908565085', NULL, NULL, '$2y$10$ENnkFX2JuLNM8tdpMJF34.NY827ijdYs0.WIXZqtQfdzG2sOmhVQq', NULL, '2020-10-17 17:11:20', '2020-10-17 17:11:20', 'normal', 0, 4),
(539, 'Virat Sharma', '7908103345', 'viratsharma12346789@gmail.com', NULL, '$2y$10$icccLGcJhaL387EJvn7/P.UZmu3xXM3N/EYHdvkdMOv5biorHSGDC', NULL, '2020-10-17 17:41:02', '2020-10-17 17:41:02', 'normal', 0, 4),
(540, 'Bishal Kumar', '8944040392', 'bishalkk8116@gmail.com', NULL, '$2y$10$55C5G/2d254j6Ma4lppsgesbaHhVyNWIkTv02k0xUy2W4fIE5jHgO', NULL, '2020-10-17 17:52:27', '2020-10-17 17:52:27', 'normal', 0, 2),
(541, 'Nita mahato', '9800401409', NULL, NULL, '$2y$10$yMYcsghpylUYQR3fsBaDWu7SAXzsqaTWRMWTziFMq.XdTpnRsef8K', '65GlHan9HyB0CmriR623UqiZPEdme93nbT9XKPuoiC2and1zkrWR7tl66ksO', '2020-10-17 18:18:05', '2020-10-17 18:54:01', 'normal', 2, 2),
(542, 'Bittu', '7872395451', 'riteshshaw910@gmail.com', NULL, '$2y$10$3.UdSblDw1Uiq8HbLrZoi.k/s4uu5fBwoF2XepzKDi65aOU/2F.J.', NULL, '2020-10-17 20:04:28', '2020-10-17 20:04:28', 'normal', 0, 2),
(543, 'Kalipada Dey', '9832257683', 'kalipadaanu2008@gmail.com', NULL, '$2y$10$xXsqc071yKfSKPAsD7lhYuqKXY182Xl9KlqwOg4n2ghF8oUKQu836', NULL, '2020-10-17 21:31:43', '2020-10-17 21:32:20', 'normal', 0, 2),
(544, 'D.K', '9749266385', 'dk75011@gmail.com', NULL, '$2y$10$cZFXcxKidQJt6OxUhnZq8.2qlYRRTPmFGQnM2VVDnkgVNjHT8kXqu', NULL, '2020-10-17 21:39:12', '2020-10-17 21:39:12', 'normal', 0, 2),
(545, 'Aditya Kumar', '7001707606', 'rajpk2468@gmail.com', NULL, '$2y$10$vERrPuaXpo6RTZUDLfzBaezTPFO9.adH0zx/Fupo8jyb8z8DRn6Ea', NULL, '2020-10-17 22:27:14', '2020-10-17 22:27:14', 'normal', 0, 2),
(546, 'Santosh Singh', '8250858523', 'santoshsingh980@gmail.com', NULL, '$2y$10$7Zl77u5PDfEu8KbDDG/pQO5OJQ9jhSDJdyI.jupOnQ6yjrK5k9VZq', NULL, '2020-10-17 22:48:53', '2020-10-17 22:56:38', 'normal', 0, 2),
(547, 'Palash Mukherjee', '9564469486', 'mukherjee.palash2019@gmail.com', NULL, '$2y$10$t9aEbOPMzSWf52WbgMAlneUNlFTCEsp9HEUmZidVkk8Mlu67z0Mue', NULL, '2020-10-18 18:38:20', '2020-10-18 18:38:45', 'normal', 0, 2),
(548, 'Anand', '9382777738', 'anandk83078@gmail.com', NULL, '$2y$10$gZ1qGGfMJY7cQDduFyA2d.0KOEW/pqvaMLI51YQofekGKB2Hy1yf6', NULL, '2020-10-18 21:48:20', '2020-10-22 03:30:22', 'normal', 1, 2),
(549, 'Suraj Gorai', '7001499117', 'goraisuraj2017@gmail.com', NULL, '$2y$10$q8aMYuPkyFFKJrVTs6swD.Sl0oXR/wHvq8ctLVmKtp8E/xu9gIxxq', '4BEYLytlvpVpwkgYULD1vMB6mmsXAr8FuK6NzxJtA6sOvzzu9l9IT8Z6vrQH', '2020-10-18 21:53:14', '2020-10-18 21:53:14', 'normal', 0, 2),
(550, 'Abhishek kumar', '6299921727', NULL, NULL, '$2y$10$onHpXDXOY38X9r.sPMhxMeoHgp.pK23hjXkeeX7byNQoUZZpRTwb.', NULL, '2020-10-18 23:55:38', '2020-10-18 23:55:38', 'normal', 0, 1),
(551, 'Veer Routh', '6297092910', 'veerrouth99@gmail.com', NULL, '$2y$10$.0BrGQKVaM6hneaOFGNrA.ipI6TJiRKUbTLPgTeWYEpUHNamL5Qii', NULL, '2020-10-19 14:38:39', '2020-10-19 14:38:39', 'normal', 0, 4),
(552, 'Sangita Ball', '9382724355', NULL, NULL, '$2y$10$J/1LHt19Pk4DwFEfj1bMU.v2cStp9ameOwHnaLDFDe4N7Vgeu/hXW', NULL, '2020-10-20 00:02:33', '2020-10-20 00:02:33', 'normal', 0, 2),
(553, 'Pankaj Choudhary', '6299832048', NULL, NULL, '$2y$10$VXD1RXFdqL.6n7si0Bl/fuoY5VZB71Iiu9b3gMvrYWc9iEi5H2leC', NULL, '2020-10-20 00:05:06', '2020-10-20 00:39:23', 'normal', 1, 1),
(554, 'pEjulscqv', '7877177880', 'wouggelleot@gmail.com', NULL, '$2y$10$Rc2itLpUuG4.Gtg7KgJyNeqMXEYezHB4LqsEA.jHii6dnCmZwLUEC', NULL, '2020-10-20 00:07:55', '2020-10-20 00:07:55', 'normal', 0, 4),
(555, 'Raushan', '9504503957', 'raushankumarnwd41@gmail.com', NULL, '$2y$10$3YgdIB1OIwRKbFEkx7wRP.1PiDGcEpZgmffz8eFgT9SK6Q6u0T3ue', NULL, '2020-10-20 10:23:17', '2020-10-20 10:23:17', 'normal', 0, 4),
(556, 'Vikash Kumar yadav', '8759545312', 'vikashmessi245@gmail.com', NULL, '$2y$10$hi0ldiAs5nNL9gkK1pNyx.wbQVqwATO1odtFqZRJm4pO9TnbvNyT.', NULL, '2020-10-20 19:15:35', '2020-10-20 19:15:35', 'normal', 0, 2),
(557, 'Soumik Singh', '9832901184', NULL, NULL, '$2y$10$Q0PSypgG86jB1Mo0hnbiF.3kkklDA7KnuI63NEZdUKkhJMptf5gGW', 'D1ft0Ea2R219JTq7WlEL6VabUsjcEfahX0jq4dQLjEVXXy3wzj3bMwQtNPq3', '2020-10-20 20:46:54', '2020-10-20 20:46:54', 'normal', 0, 2),
(558, 'Vimal kumar', '6205428214', 'vimalkumar1471@gmail.com', NULL, '$2y$10$rHnEZWs9hh1FNGX8JJSapeB5V7ZyZToOXlVl/mhzoPBA8bk78F8aS', NULL, '2020-10-21 00:58:17', '2020-10-21 00:58:17', 'normal', 0, 6),
(559, 'Priyanka Singh', '9932867432', 'Ipriyankasingh97@gmail.com', NULL, '$2y$10$5wBt4WsNvL9/jOOT1LfLTukoxTXXftJmE3Dor8iWevvItJ520G/la', NULL, '2020-10-21 15:17:15', '2020-10-21 15:17:15', 'normal', 0, 2),
(560, 'swaraj kabi', '7908591826', 'kabitriptimaa7908@gmail.com', NULL, '$2y$10$ql2p3toJ.4BtbrlnbLS5geuZweiyutWbo.VwD6ArWQ/JK2PPWu7Ky', NULL, '2020-10-22 00:39:03', '2020-10-22 01:00:17', 'normal', 0, 2),
(561, 'Amiyadyuti ghosh', '7864882751', NULL, NULL, '$2y$10$Wc4p7x8kbnTEclIj1XtUN.2ScCHHrwipQIc5Ao0DQj3fh97FnRdsK', NULL, '2020-10-22 21:53:23', '2020-10-22 21:53:23', 'normal', 0, 1),
(562, 'Akash Ghosh', '6296021375', 'akashp27492@gmail.com', NULL, '$2y$10$yLXF9WzqD7ORmHvHBt7nZO7PZktcX07CWf83VonCWbzVctkWt9S2u', NULL, '2020-10-22 21:59:43', '2020-10-22 21:59:43', 'normal', 0, 2),
(563, 'Nitesh Bothra', '6203383546', 'niteshbothra44@gmail.com', NULL, '$2y$10$u/NWclrZihMWl06PUcReW.nDqhHXeaUe64.LIXt2qPQxQDGvW/9By', NULL, '2020-10-22 22:14:24', '2020-10-22 22:14:24', 'normal', 0, 1),
(564, 'Tinku shaw', '9732045654', 'tinkudolly.shaw51@gmail.com', NULL, '$2y$10$AYss4TPk.E.WDt0N6FFpAucPbXzn3vfbvYIhiZiOBhL9wCwzKW.J2', NULL, '2020-10-23 00:33:59', '2020-10-23 00:35:47', 'normal', 0, 2),
(565, 'Anshu Kumar Shaw', '7980812382', 'anshukumarshaw31@gmail.com', NULL, '$2y$10$ZRGAFK40onRgazNDmj6Uo.HDQ7olrh4Wykndu5eecHmZUFUyyXyR2', 'rrNQefTKDIQlFF8Y0arWGuhJ9yJ8POvLlxY8MNFa6MsSqlgtIdKnm6waEQDr', '2020-10-23 22:58:39', '2020-10-26 14:50:39', 'normal', 0, 2),
(566, 'Anshu Kumar Shaw', '7980812382', NULL, NULL, '$2y$10$YVZFH9CiDwyJrXHTWaIVDOFim.Q.EnPnLF95nqiX7CLrx.brAtSbC', NULL, '2020-10-23 22:58:39', '2020-10-23 22:58:39', 'normal', 0, 2),
(567, 'Anshu Kumar Shaw', '7980812382', NULL, NULL, '$2y$10$Kluv3f56vxQEt.qCr6hWmOZug9xve5.I4hg9MgxMKk0aqPomr7cgK', NULL, '2020-10-23 22:58:39', '2020-10-23 22:58:39', 'normal', 0, 2),
(568, 'Anshu Kumar Shaw', '7980812382', NULL, NULL, '$2y$10$wZwIXS/Xsi0fTCbQ9Wg54u2ddZzWR3YiOiHI/qVvp6W82u2MCOkEq', NULL, '2020-10-23 22:58:39', '2020-10-23 22:58:39', 'normal', 0, 2),
(569, 'Kirti Komal', '7710859678', 'kirtikomal18@gmail.com', NULL, '$2y$10$d.6rUqymdKg5gBrJRf0V4.M52ssboWcflrtruJ2q25T8OlCRl7Rke', 'F6qh18jwUO5BHkUPxBl1lj9t5gQYphELfbotpJK6k7UsDH0cPDqNwWTZmC35', '2020-10-24 00:10:14', '2020-10-24 16:39:20', 'normal', 0, 1),
(570, 'Samir Mahato', '7583996806', 'samirgame99@gmail.com', NULL, '$2y$10$Qer4wNImmeywlst1moDCke6doZV8bDj3/SFAQumlqMWOGDaGIIhBS', NULL, '2020-10-24 00:31:22', '2020-10-24 00:31:22', 'normal', 0, 2),
(571, 'Kirti Komal', '8779686373', 'kirtikomal18@gmail.com', NULL, '$2y$10$.9fjlivJjKUJWilf.lekrutAlNNYU1I6YgE7DKt1IVpIJhm46CCo2', NULL, '2020-10-24 16:40:59', '2020-11-02 21:42:55', 'normal', 1, 1),
(572, 'Chetan Agarwal', '6201136686', 'chetancherry1410@gmail.com', NULL, '$2y$10$vsS9vIzM3UlIVEP2esU8neUlq9SfjwsxQFCeMwXFsvhILyYqpYBiC', 'RHmiGf2nC3exu2pTPX4oG0LwT4haavoaeduzdQovCYfgaBXViqa8vF6IqEQn', '2020-10-24 21:04:56', '2020-10-25 19:52:38', 'normal', 1, 1),
(573, 'Shivam Agarwal', '8825230677', NULL, NULL, '$2y$10$hZ.aQ6jU6.HzmBg3MiHHP.voR6m06IttnAUea3XSP3HF2ZApx9/hO', NULL, '2020-10-25 00:43:02', '2020-10-25 00:43:02', 'normal', 0, 1),
(574, 'Ajay Mondal', '8918691959', 'ajaygamer355@gmail.com', NULL, '$2y$10$4Gms.qp3QRQqB.3OMmDNXe9QOej30e3wB1cQfurKvPOeZUf6YPswG', NULL, '2020-10-25 01:05:56', '2020-10-25 01:05:56', 'normal', 0, 4),
(575, 'Pankaj Kumar', '9771760100', 'pankajkdas74@gmail.com', NULL, '$2y$10$W1SvRAHtxllUtYlg8of.O.t9WByhVUYRJfQTDX7RYswh.SchEHWT2', NULL, '2020-10-25 13:05:21', '2020-10-25 13:05:21', 'normal', 0, 1),
(576, 'Vishnu Jha', '7667239934', 'fbgvishnu@gmail.com', NULL, '$2y$10$3IV40V6XtCY2JDnxf5Yf1.Z4c5OojZV5AR2T.zLRSFSXlJUuDldLy', '0X6BtLIh1fLSaWEcNQIW43GF8k0kA18rDy50TTMQ8llITdaIlao3NjkYKSdP', '2020-10-25 16:34:12', '2020-10-25 22:32:29', 'normal', 1, 1),
(577, 'Swati Verma', '8887903432', NULL, NULL, '$2y$10$7ozj/fPJ9Hu3DNBapnlqfusLxKur1yq2t1lDL6D/VoLm8YaFrmfOa', NULL, '2020-10-25 22:17:54', '2020-10-31 23:49:03', 'normal', 3, 1),
(578, 'Anjay Mahato', '9002693165', 'kundanmahato929@gmail.com', NULL, '$2y$10$fDpoLxTI3CUxShS4IzEpjO8ITGmnhaBhJAfblWzuMI78N2t6AcluG', '6HqzYdLVhWlWSqs1LeFeTRHOzCFtd4Ipo1UYled6ws0kbh2PLw2YLSVUlsQv', '2020-10-25 23:28:29', '2020-10-25 23:49:25', 'normal', 2, 2),
(579, 'Samir', '9932845625', 'samirgame99@gmail.com', NULL, '$2y$10$k2bokE9ZVhnqYgRRjVJVLut7M3J5uQiRP6/0nalGgKhw0hEpVvZX6', '5Aa7I5Og4pkgBjA3EQu0O7GNkCv2SLBPHRhrATWxMfw6Tp0ym6Xth4WHSp2K', '2020-10-25 23:47:17', '2020-10-25 23:57:53', 'normal', 4, 2),
(580, 'Souren Sen', '8145554794', 'souren4all@gmail.com', NULL, '$2y$10$ekZi7JyQvUOP1kt7RWocFeLfRRdD/lD8gnBMUjX9cehRtDTIrWaAq', NULL, '2020-10-26 13:09:27', '2020-10-26 13:09:27', 'normal', 0, 2),
(581, 'vicky shaw', '8016181271', 'vickyshaw415@gmail.com', NULL, '$2y$10$c0b8PezMVPpCqJXhKUfNPeslUkZJ/2ptkS8WLXeU0KWubCuBGr6fe', NULL, '2020-10-26 14:00:23', '2020-10-26 14:07:13', 'normal', 1, 2),
(582, 'Bikash kumar singh', '8170810758', 'bs9790737@gmail.com', NULL, '$2y$10$wV04Usc3WGTMUDIrlsCiDex7DnExBX5UQ5KBc6Thpy68iVX8iCTtG', NULL, '2020-10-26 14:06:35', '2020-10-26 14:06:35', 'normal', 0, 2),
(583, 'Manoj Chaudhary', '8972254470', 'sdon40109@gmail.com', NULL, '$2y$10$7sH8TI4Yhx5kp8r8/7glDez7pBjqv.JwCemAE9fhdKexGdVys8Bc2', NULL, '2020-10-26 14:08:11', '2020-10-26 14:08:11', 'normal', 0, 2),
(584, 'Pawan', '9162017117', NULL, NULL, '$2y$10$3xyXYy4KaaV9o2VRgbiI1OiJW6WVXgswyF7oIwZolHvmCEZA1/Sm6', NULL, '2020-10-26 15:58:56', '2020-10-26 15:58:56', 'normal', 0, 1),
(585, 'Ravi', '6294823054', 'ravikumar60488@gamil.com', NULL, '$2y$10$BNfQJ6HdiZj16sR9j5cQB..tiblK75MUUsIhtIYdCLQ1827a2b/cS', '5dd18J29GJt7RKfjOUKp3bEAaekAotQbuUGeXdB3C2rUvp6MBLZjweakimVX', '2020-10-26 21:31:50', '2020-10-26 21:31:50', 'normal', 0, 1),
(586, 'Sumit sah', '9631132271', 'sumitshahfbg5@gmail.com', NULL, '$2y$10$BVVogUbm/2ZVRFnfdZaC6u2IfvOIfQayrjUYuAMs0d/IvHd4RzG2W', NULL, '2020-10-26 22:19:54', '2020-10-26 22:19:54', 'normal', 0, 1),
(587, 'Gaurav', '7903113655', 'gauravsingh44@gmail.com', NULL, '$2y$10$MxqTtSCQrmYzdwVGp5B/H.UUyyhYfvUgUx2Hs58bMtRDNDmmV0B52', NULL, '2020-10-27 03:39:03', '2020-10-27 03:39:03', 'normal', 0, 1),
(588, 'Ankit kumar', '7903554691', NULL, NULL, '$2y$10$5/djWpIz/51CVx7DNsoSTOYBeKGZmelkkGykl2T5eHIpxvcZ1pIK2', NULL, '2020-10-27 13:37:31', '2020-10-27 13:37:31', 'normal', 0, 6),
(589, 'Prashant Ranjan Das', '8407800078', 'prdas078@hotmail.com', NULL, '$2y$10$zkzmsnMjP9gIAQhO2AS/9.tNvCtl6Z/Tz/74QjlFrE7C2iQpDauLi', NULL, '2020-10-27 20:47:14', '2020-10-27 20:47:14', 'normal', 0, 1),
(590, 'Amit Mahato', '9547066279', 'amitmahato307@gmail.com', NULL, '$2y$10$8X5KjWjFFdk0j.iu3wBSQemn6c3pfJddBK5rPxKxfbJ4.5EwynVNy', NULL, '2020-10-27 23:05:29', '2020-10-27 23:05:29', 'normal', 0, 2),
(591, 'Mrigank', '6203292303', NULL, NULL, '$2y$10$0ukEDP5o1qdzzBvK.zALbOYK0yfhNiCAalNOnZOyXp.82j1ls3NzC', '0Y5eS30SsaQWgKk9rauqgN8PV0nNXi3ar5rgbv6AE349UlMdpYnTiNsoQ6NF', '2020-10-28 15:50:28', '2020-10-28 15:50:28', 'normal', 0, 1),
(592, 'Reya Mahato', '8116813409', NULL, NULL, '$2y$10$PsdeSqDoLSU6L0pi3fuLAevuC0zPIU47s.8vk3BErdMgX.A43Hnsi', NULL, '2020-10-28 17:20:42', '2020-10-28 17:20:42', 'normal', 0, 2),
(593, 'Abhishek Hari', '6295853487', 'abhishekram005@gmail.com', NULL, '$2y$10$.sKih5Yae2rLRQ6FgqLum.nGIbrjw808Pv9tyGnnW.E8AqrAzOlyu', NULL, '2020-10-28 21:28:15', '2020-10-28 21:28:15', 'normal', 0, 2),
(594, 'Jyoti kumari', '9304016747', 'jyotikumarifbg29@gmail.com', NULL, '$2y$10$BmBVVlcjR3g6rZzydbkIm.zash.7jorVH9DQITm5Ky7EWLw4EW9ie', NULL, '2020-10-28 22:33:36', '2020-10-28 22:33:36', 'normal', 0, 1),
(595, 'Deepika Jain Agrawal', '7909018207', 'niky.wdu@gmail.com', NULL, '$2y$10$I4y8rRInszQKi8UBcScMju/icBk4m/0TlNEDcBwCWXRJSianeMdHS', NULL, '2020-10-28 22:37:09', '2020-10-28 22:37:09', 'normal', 0, 1),
(596, 'Anil Kumar mallah', '6295351551', 'ak6295351551@gmail.com', NULL, '$2y$10$h94vUzwr13SP0A2IoFjY.Oo3G5gz/O8vtxzvAtzW8tEuFqnZZZ7BK', NULL, '2020-10-29 15:40:05', '2020-10-29 15:40:05', 'normal', 0, 2),
(597, 'Manikant', '7258012697', 'kumarmanikant421@gmail.com', NULL, '$2y$10$bcu90zAsUVEurhCH06P7Ru0hjAzNzidKrqpJ9qBL0Smdf1NK7KNC6', NULL, '2020-10-29 17:09:50', '2020-10-29 17:09:50', 'normal', 0, 1),
(598, 'Vanshika Agarwal', '8509736416', 'vanshikaagarwal244@gmail.com', NULL, '$2y$10$zKs1YQrV9WUYrgvxX5u2KuAjBGp2ZQGA9aLQ2wn1XBWw.lRAhQG5W', NULL, '2020-10-29 18:39:31', '2020-10-29 18:39:31', 'normal', 0, 2),
(599, 'Ankit keshri', '7250963799', 'keshri95krishna@gmail.com', NULL, '$2y$10$W4phdV2yobDyp/HB/1QxnOQIM8MOk0rnwzk3lZZygAOgovhklam06', NULL, '2020-10-30 17:12:29', '2020-10-30 17:15:12', 'normal', 1, 1),
(600, 'Soumen Kabi', '7908792743', 'soumen17kabi@gmail.com', NULL, '$2y$10$pWpFTqYf97bv0mnAjn.VRuO6immEb3Dn3HFUjkdRizhwXTFucg.0G', 'nmsw2uIRxNjDK1Fd3Ar26gJ3IHen46njVr1B5WdDnHKBDa8pBqGZ0i8sscKc', '2020-10-30 20:35:25', '2020-11-05 19:38:41', 'normal', 2, 2),
(601, 'Sunny Shaw', '7001352783', 'sunnyshaw973@gmail.com', NULL, '$2y$10$uIxCx3Z7G5iaWjSK1JJUOeO4gIA6htJobdZXwbVbgd2jIKorsQ.hq', '2cdZimR9tgeNbH9HAuiU6P8sUaKNGmIZmneaZI2Gcq81hYyRNApQaR2Iyml4', '2020-10-31 00:00:41', '2020-10-31 00:13:34', 'normal', 1, 2),
(602, 'Vicky', '9471998676', 'pathkinda1@gmail.com', NULL, '$2y$10$o5cC.m0HklyrjR7P/XYawugh./EccKOWqx65c4A/V7/XUa87OPyD.', NULL, '2020-10-31 02:37:06', '2020-10-31 02:37:06', 'normal', 0, 1),
(603, 'Abhijeet', '7059358876', NULL, NULL, '$2y$10$.XaPTowzyHtOlpqvrZ/AKuTcilceE7eDszd9SPHbKxRIUaxoVpWR2', NULL, '2020-10-31 22:14:27', '2020-10-31 22:14:27', 'normal', 0, 1),
(604, 'Navneet', '9738631133', 'navneet_king007@yahoo.com', NULL, '$2y$10$iUGrpZ1sCvcfRlgzf54HKuJm9SO44fHnxEiHnw1K8ldsBwLF0KTRu', NULL, '2020-11-01 12:50:08', '2020-11-01 14:24:13', 'normal', 1, 1),
(605, 'Shekhar kumar sah', '9334183553', 'sksah1239@gmail.com', NULL, '$2y$10$Kqc8CzZQffn3nUNyq98N1.HwlrT7CMNBotrtcL6GcY0vX35ppvil.', NULL, '2020-11-01 13:23:18', '2020-11-01 13:23:18', 'normal', 0, 1),
(606, 'Pijush Sarkar', '6297238388', NULL, NULL, '$2y$10$jMBm2txUk68npqH48NlRh.Y0a3euHfZ5k19b9krRuyGOOLGObYDzG', 'iN6yAB8lP65Vai9A0YQpperZ4hzBIcLX44Qb4RacRNXh4SE1ezh6ZvEnOX4q', '2020-11-01 22:19:44', '2020-11-01 22:19:44', 'normal', 0, 2),
(607, 'Virat Sharma', '7872598374', 'viratsharma12346789@gmail.com', NULL, '$2y$10$fggQ18uEpVRuNEW.ek4ta.r.7flbrCEazTtaz4e0YrFzpeqaL19D2', '4HU4zW2bq8rFDai703TOw7REpLgFiUsP8KqF0edD8oXyxhOpkIPC4DUXeKKE', '2020-11-01 23:19:10', '2020-11-02 14:49:42', 'normal', 2, 2),
(608, 'hSWfZPzek', '9963166796', 'comdetayx@gmail.com', NULL, '$2y$10$qw6HStdl/qNjh30IhiY7XeGYkjNXZoGtswTP32AZlr.A29oAhfqna', NULL, '2020-11-02 03:43:35', '2020-11-02 03:43:35', 'normal', 0, 4),
(609, 'Santosh Pandit', '7004714182', 'santoshsachdevafbg@gmail.com', NULL, '$2y$10$Tet1ixV4Ll7ZrDm4LplSjO7j3ulWgG3K0Ktp4JslMETXdWGcxtH1K', NULL, '2020-11-02 21:12:33', '2020-11-02 21:12:33', 'normal', 0, 1),
(610, 'Nisha Gupta', '6202507804', NULL, NULL, '$2y$10$LzbmxVHgbdth3qU.v2UMO.S96AkPFaLmrlCKcPIyQ/jIOxPdDkfne', NULL, '2020-11-02 22:27:02', '2020-11-02 22:47:57', 'normal', 2, 1),
(611, 'Siddhant Bhardwaj', '9262334058', NULL, NULL, '$2y$10$mSuJFRedGIphsAOdhPCFhenn6ta2day.idb3O1dwZ2b.JeDoAMbZy', NULL, '2020-11-02 22:27:34', '2020-11-02 23:55:54', 'normal', 1, 1),
(612, 'Sunil Burnwal', '7001589492', 'modienterprises713372@gmail.com', NULL, '$2y$10$2btsx5W1lldDM7ZHoFnPM.wV9mxXpDVjJUzyugiO6dyjJbMvb5S5C', NULL, '2020-11-04 16:33:58', '2020-11-04 16:33:58', 'normal', 0, 4),
(613, 'Shivam kumar', '9135920383', 'sk9135920@gmail.com', NULL, '$2y$10$2zycJgkjjWBTk1nOYJyuveduYkETztweri9YMSdRT9JoN9/wFHXwO', NULL, '2020-11-04 16:45:43', '2020-11-04 16:45:43', 'normal', 0, 1),
(614, 'Ashutosh Kumar Raushan', '8541084654', 'rk8541084654@gmail.com', NULL, '$2y$10$g23/xlBwivKJ6kL5VOMkDOyfS5clX8MGc8Ga8pMqClmJU7MZlwHUu', NULL, '2020-11-04 21:47:56', '2020-11-04 21:47:56', 'normal', 0, 1),
(615, 'Mrsekh', '8115201678', 'shahidsekhsekh@gmail.com', NULL, '$2y$10$mLHlG3XSpc4i07cECKlqPOvoxU3c6TDWl5NjSRZUBV20GpXVtckx2', NULL, '2020-11-04 21:57:01', '2020-11-04 21:57:01', 'normal', 0, 2),
(616, 'Upendra kumar ram', '7001285334', NULL, NULL, '$2y$10$EKS3206OvqxpVB9f4RUNEewn67fZvs0UH.mXjKvF1jZqVQ0NJ4fE.', NULL, '2020-11-05 00:49:57', '2020-11-05 00:49:57', 'normal', 0, 2),
(617, 'Shivam kumar', '9135920386', 'sk9135920@gmail.com', NULL, '$2y$10$9pPxY3WASnxntvojr6XE0OGhATTA/AvMYWcMpdQMaKXx66gTveno.', NULL, '2020-11-05 13:45:39', '2020-11-05 13:45:39', 'normal', 0, 1),
(618, 'Ashish Bothra', '9589166862', 'ashishbothra.fbg@gmail.com', NULL, '$2y$10$wHrzziq.bX3DZYz7Xpn3VOjgSph9JASBPKf0ZWAMttc5IG02xTv6K', NULL, '2020-11-05 19:07:22', '2020-11-05 20:34:43', 'normal', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_carts`
--
ALTER TABLE `food_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_carts_res_id_index` (`res_id`),
  ADD KEY `food_carts_food_id_index` (`food_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_res_id_index` (`res_id`);

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
-- Indexes for table `patna_carts`
--
ALTER TABLE `patna_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patna_food`
--
ALTER TABLE `patna_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `safaris`
--
ALTER TABLE `safaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `food_carts`
--
ALTER TABLE `food_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patna_carts`
--
ALTER TABLE `patna_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `patna_food`
--
ALTER TABLE `patna_food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1185;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `safaris`
--
ALTER TABLE `safaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_carts`
--
ALTER TABLE `food_carts`
  ADD CONSTRAINT `food_carts_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `food_carts_res_id_foreign` FOREIGN KEY (`res_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_res_id_foreign` FOREIGN KEY (`res_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
