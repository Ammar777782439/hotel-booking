-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 12:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotels-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Hotel Managers'),
(2, 'Hotel Staff');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(4, 1, 23),
(1, 1, 24),
(2, 1, 25),
(3, 1, 26),
(8, 1, 79),
(5, 1, 80),
(6, 1, 81),
(7, 1, 82),
(9, 1, 83),
(10, 1, 84),
(11, 1, 85),
(12, 1, 86);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can approve hotel request', 6, 'can_approve_request'),
(6, 'Can reject hotel request', 6, 'can_reject_request'),
(7, 'Can add permission', 7, 'add_permission'),
(8, 'Can change permission', 7, 'change_permission'),
(9, 'Can delete permission', 7, 'delete_permission'),
(10, 'Can view permission', 7, 'view_permission'),
(11, 'Can add group', 8, 'add_group'),
(12, 'Can change group', 8, 'change_group'),
(13, 'Can delete group', 8, 'delete_group'),
(14, 'Can view group', 8, 'view_group'),
(15, 'Can add content type', 9, 'add_contenttype'),
(16, 'Can change content type', 9, 'change_contenttype'),
(17, 'Can delete content type', 9, 'delete_contenttype'),
(18, 'Can view content type', 9, 'view_contenttype'),
(19, 'Can add session', 10, 'add_session'),
(20, 'Can change session', 10, 'change_session'),
(21, 'Can delete session', 10, 'delete_session'),
(22, 'Can view session', 10, 'view_session'),
(23, 'Can add مستخدم', 2, 'add_customuser'),
(24, 'Can change مستخدم', 2, 'change_customuser'),
(25, 'Can delete مستخدم', 2, 'delete_customuser'),
(26, 'Can view مستخدم', 2, 'view_customuser'),
(27, 'Can add سجل النشاط', 11, 'add_activitylog'),
(28, 'Can change سجل النشاط', 11, 'change_activitylog'),
(29, 'Can delete سجل النشاط', 11, 'delete_activitylog'),
(30, 'Can view سجل النشاط', 11, 'view_activitylog'),
(31, 'Can add منطقه', 12, 'add_city'),
(32, 'Can change منطقه', 12, 'change_city'),
(33, 'Can delete منطقه', 12, 'delete_city'),
(34, 'Can view منطقه', 12, 'view_city'),
(35, 'Can add فندق', 13, 'add_hotel'),
(36, 'Can change فندق', 13, 'change_hotel'),
(37, 'Can delete فندق', 13, 'delete_hotel'),
(38, 'Can view فندق', 13, 'view_hotel'),
(39, 'Can add طلب إضافة فندق', 6, 'add_hotelrequest'),
(40, 'Can change طلب إضافة فندق', 6, 'change_hotelrequest'),
(41, 'Can delete طلب إضافة فندق', 6, 'delete_hotelrequest'),
(42, 'Can view طلب إضافة فندق', 6, 'view_hotelrequest'),
(43, 'Can add صورة', 14, 'add_image'),
(44, 'Can change صورة', 14, 'change_image'),
(45, 'Can delete صورة', 14, 'delete_image'),
(46, 'Can view صورة', 14, 'view_image'),
(47, 'Can add الموقع', 15, 'add_location'),
(48, 'Can change الموقع', 15, 'change_location'),
(49, 'Can delete الموقع', 15, 'delete_location'),
(50, 'Can view الموقع', 15, 'view_location'),
(51, 'Can add رقم هاتف', 16, 'add_phone'),
(52, 'Can change رقم هاتف', 16, 'change_phone'),
(53, 'Can delete رقم هاتف', 16, 'delete_phone'),
(54, 'Can view رقم هاتف', 16, 'view_phone'),
(55, 'Can add توفر الغرف', 17, 'add_availability'),
(56, 'Can change توفر الغرف', 17, 'change_availability'),
(57, 'Can delete توفر الغرف', 17, 'delete_availability'),
(58, 'Can view توفر الغرف', 17, 'view_availability'),
(59, 'Can add تصنيف', 18, 'add_category'),
(60, 'Can change تصنيف', 18, 'change_category'),
(61, 'Can delete تصنيف', 18, 'delete_category'),
(62, 'Can view تصنيف', 18, 'view_category'),
(63, 'Can add مراجعة', 19, 'add_review'),
(64, 'Can change مراجعة', 19, 'change_review'),
(65, 'Can delete مراجعة', 19, 'delete_review'),
(66, 'Can view مراجعة', 19, 'view_review'),
(67, 'Can add صورة الغرفة', 20, 'add_roomimage'),
(68, 'Can change صورة الغرفة', 20, 'change_roomimage'),
(69, 'Can delete صورة الغرفة', 20, 'delete_roomimage'),
(70, 'Can view صورة الغرفة', 20, 'view_roomimage'),
(71, 'Can add سعر الغرفة', 21, 'add_roomprice'),
(72, 'Can change سعر الغرفة', 21, 'change_roomprice'),
(73, 'Can delete سعر الغرفة', 21, 'delete_roomprice'),
(74, 'Can view سعر الغرفة', 21, 'view_roomprice'),
(75, 'Can add حالة الغرفة', 22, 'add_roomstatus'),
(76, 'Can change حالة الغرفة', 22, 'change_roomstatus'),
(77, 'Can delete حالة الغرفة', 22, 'delete_roomstatus'),
(78, 'Can view حالة الغرفة', 22, 'view_roomstatus'),
(79, 'Can add نوع الغرفة', 4, 'add_roomtype'),
(80, 'Can change نوع الغرفة', 4, 'change_roomtype'),
(81, 'Can delete نوع الغرفة', 4, 'delete_roomtype'),
(82, 'Can view نوع الغرفة', 4, 'view_roomtype'),
(83, 'Can add حجز', 5, 'add_booking'),
(84, 'Can change حجز', 5, 'change_booking'),
(85, 'Can delete حجز', 5, 'delete_booking'),
(86, 'Can view حجز', 5, 'view_booking'),
(87, 'Can add تفصيل الحجز', 23, 'add_bookingdetail'),
(88, 'Can change تفصيل الحجز', 23, 'change_bookingdetail'),
(89, 'Can delete تفصيل الحجز', 23, 'delete_bookingdetail'),
(90, 'Can view تفصيل الحجز', 23, 'view_bookingdetail'),
(91, 'Can add ضيف', 24, 'add_guest'),
(92, 'Can change ضيف', 24, 'change_guest'),
(93, 'Can delete ضيف', 24, 'delete_guest'),
(94, 'Can view ضيف', 24, 'view_guest'),
(95, 'Can add عملة', 25, 'add_currency'),
(96, 'Can change عملة', 25, 'change_currency'),
(97, 'Can delete عملة', 25, 'delete_currency'),
(98, 'Can view عملة', 25, 'view_currency'),
(99, 'Can add طريقة دفع الفندق', 26, 'add_hotelpaymentmethod'),
(100, 'Can change طريقة دفع الفندق', 26, 'change_hotelpaymentmethod'),
(101, 'Can delete طريقة دفع الفندق', 26, 'delete_hotelpaymentmethod'),
(102, 'Can view طريقة دفع الفندق', 26, 'view_hotelpaymentmethod'),
(103, 'Can add طريقة دفع', 27, 'add_paymentoption'),
(104, 'Can change طريقة دفع', 27, 'change_paymentoption'),
(105, 'Can delete طريقة دفع', 27, 'delete_paymentoption'),
(106, 'Can view طريقة دفع', 27, 'view_paymentoption'),
(107, 'Can add دفعة', 28, 'add_payment'),
(108, 'Can change دفعة', 28, 'change_payment'),
(109, 'Can delete دفعة', 28, 'delete_payment'),
(110, 'Can view دفعة', 28, 'view_payment'),
(111, 'Can add مراجعة فندق', 29, 'add_hotelreview'),
(112, 'Can change مراجعة فندق', 29, 'change_hotelreview'),
(113, 'Can delete مراجعة فندق', 29, 'delete_hotelreview'),
(114, 'Can view مراجعة فندق', 29, 'view_hotelreview'),
(115, 'Can add عرض', 30, 'add_offer'),
(116, 'Can change عرض', 30, 'change_offer'),
(117, 'Can delete عرض', 30, 'delete_offer'),
(118, 'Can view عرض', 30, 'view_offer'),
(119, 'Can add مراجعة غرفة', 31, 'add_roomreview'),
(120, 'Can change مراجعة غرفة', 31, 'change_roomreview'),
(121, 'Can delete مراجعة غرفة', 31, 'delete_roomreview'),
(122, 'Can view مراجعة غرفة', 31, 'view_roomreview'),
(123, 'Can add خدمة فندقية', 32, 'add_hotelservice'),
(124, 'Can change خدمة فندقية', 32, 'change_hotelservice'),
(125, 'Can delete خدمة فندقية', 32, 'delete_hotelservice'),
(126, 'Can view خدمة فندقية', 32, 'view_hotelservice'),
(127, 'Can add عرض', 33, 'add_offer'),
(128, 'Can change عرض', 33, 'change_offer'),
(129, 'Can delete عرض', 33, 'delete_offer'),
(130, 'Can view عرض', 33, 'view_offer'),
(131, 'Can add خدمة نوع الغرفة', 34, 'add_roomtypeservice'),
(132, 'Can change خدمة نوع الغرفة', 34, 'change_roomtypeservice'),
(133, 'Can delete خدمة نوع الغرفة', 34, 'delete_roomtypeservice'),
(134, 'Can view خدمة نوع الغرفة', 34, 'view_roomtypeservice'),
(135, 'Can add blacklisted token', 35, 'add_blacklistedtoken'),
(136, 'Can change blacklisted token', 35, 'change_blacklistedtoken'),
(137, 'Can delete blacklisted token', 35, 'delete_blacklistedtoken'),
(138, 'Can view blacklisted token', 35, 'view_blacklistedtoken'),
(139, 'Can add outstanding token', 36, 'add_outstandingtoken'),
(140, 'Can change outstanding token', 36, 'change_outstandingtoken'),
(141, 'Can delete outstanding token', 36, 'delete_outstandingtoken'),
(142, 'Can view outstanding token', 36, 'view_outstandingtoken'),
(143, 'Can add تصنيف', 37, 'add_category'),
(144, 'Can change تصنيف', 37, 'change_category'),
(145, 'Can delete تصنيف', 37, 'delete_category'),
(146, 'Can view تصنيف', 37, 'view_category'),
(147, 'Can add تعليق', 38, 'add_comment'),
(148, 'Can change تعليق', 38, 'change_comment'),
(149, 'Can delete تعليق', 38, 'delete_comment'),
(150, 'Can view تعليق', 38, 'view_comment'),
(151, 'Can add مقال', 39, 'add_post'),
(152, 'Can change مقال', 39, 'change_post'),
(153, 'Can delete مقال', 39, 'delete_post'),
(154, 'Can view مقال', 39, 'view_post'),
(155, 'Can add وسم', 40, 'add_tag'),
(156, 'Can change وسم', 40, 'change_tag'),
(157, 'Can delete وسم', 40, 'delete_tag'),
(158, 'Can view وسم', 40, 'view_tag'),
(159, 'Can add إشعار', 41, 'add_notifications'),
(160, 'Can change إشعار', 41, 'change_notifications'),
(161, 'Can delete إشعار', 41, 'delete_notifications'),
(162, 'Can view إشعار', 41, 'view_notifications'),
(163, 'Can add المفضلات', 42, 'add_favourites'),
(164, 'Can change المفضلات', 42, 'change_favourites'),
(165, 'Can delete المفضلات', 42, 'delete_favourites'),
(166, 'Can view المفضلات', 42, 'view_favourites'),
(167, 'Can add extension movement', 43, 'add_extensionmovement'),
(168, 'Can change extension movement', 43, 'change_extensionmovement'),
(169, 'Can delete extension movement', 43, 'delete_extensionmovement'),
(170, 'Can view extension movement', 43, 'view_extensionmovement'),
(171, 'Can add crontab', 44, 'add_crontabschedule'),
(172, 'Can change crontab', 44, 'change_crontabschedule'),
(173, 'Can delete crontab', 44, 'delete_crontabschedule'),
(174, 'Can view crontab', 44, 'view_crontabschedule'),
(175, 'Can add interval', 45, 'add_intervalschedule'),
(176, 'Can change interval', 45, 'change_intervalschedule'),
(177, 'Can delete interval', 45, 'delete_intervalschedule'),
(178, 'Can view interval', 45, 'view_intervalschedule'),
(179, 'Can add periodic task', 46, 'add_periodictask'),
(180, 'Can change periodic task', 46, 'change_periodictask'),
(181, 'Can delete periodic task', 46, 'delete_periodictask'),
(182, 'Can view periodic task', 46, 'view_periodictask'),
(183, 'Can add periodic task track', 47, 'add_periodictasks'),
(184, 'Can change periodic task track', 47, 'change_periodictasks'),
(185, 'Can delete periodic task track', 47, 'delete_periodictasks'),
(186, 'Can view periodic task track', 47, 'view_periodictasks'),
(187, 'Can add solar event', 48, 'add_solarschedule'),
(188, 'Can change solar event', 48, 'change_solarschedule'),
(189, 'Can delete solar event', 48, 'delete_solarschedule'),
(190, 'Can view solar event', 48, 'view_solarschedule'),
(191, 'Can add clocked', 49, 'add_clockedschedule'),
(192, 'Can change clocked', 49, 'change_clockedschedule'),
(193, 'Can delete clocked', 49, 'delete_clockedschedule'),
(194, 'Can view clocked', 49, 'view_clockedschedule'),
(195, 'Can add info box', 50, 'add_infobox'),
(196, 'Can change info box', 50, 'change_infobox'),
(197, 'Can delete info box', 50, 'delete_infobox'),
(198, 'Can view info box', 50, 'view_infobox'),
(199, 'Can add room type home', 51, 'add_roomtypehome'),
(200, 'Can change room type home', 51, 'change_roomtypehome'),
(201, 'Can delete room type home', 51, 'delete_roomtypehome'),
(202, 'Can view room type home', 51, 'view_roomtypehome'),
(203, 'Can add setting', 52, 'add_setting'),
(204, 'Can change setting', 52, 'change_setting'),
(205, 'Can delete setting', 52, 'delete_setting'),
(206, 'Can view setting', 52, 'view_setting'),
(207, 'Can add social media link', 53, 'add_socialmedialink'),
(208, 'Can change social media link', 53, 'change_socialmedialink'),
(209, 'Can delete social media link', 53, 'delete_socialmedialink'),
(210, 'Can view social media link', 53, 'view_socialmedialink'),
(211, 'Can add hero slider', 54, 'add_heroslider'),
(212, 'Can change hero slider', 54, 'change_heroslider'),
(213, 'Can delete hero slider', 54, 'delete_heroslider'),
(214, 'Can view hero slider', 54, 'view_heroslider');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'sakj', '0000', '2025-03-10 21:16:02.217259');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `published_at` datetime(6) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `author_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_booking`
--

CREATE TABLE `bookings_booking` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `actual_check_out_date` datetime(6) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rooms_booked` int(10) UNSIGNED NOT NULL CHECK (`rooms_booked` >= 0),
  `parent_booking_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_booking`
--

INSERT INTO `bookings_booking` (`id`, `created_at`, `updated_at`, `deleted_at`, `check_in_date`, `check_out_date`, `actual_check_out_date`, `amount`, `status`, `account_status`, `created_by_id`, `hotel_id`, `room_id`, `updated_by_id`, `user_id`, `rooms_booked`, `parent_booking_id`) VALUES
(38, '2025-03-08 01:11:22.893662', '2025-03-10 22:12:18.163026', NULL, '2025-03-08 00:00:00.000000', '2025-03-09 23:35:53.000000', '2025-03-10 22:12:18.150646', 15.00, '0', 1, NULL, 1, 1, NULL, 5, 1, NULL),
(42, '2025-03-10 00:51:46.630124', '2025-03-10 13:11:59.858373', NULL, '2025-03-09 23:35:53.000000', '2025-03-12 23:35:53.000000', '2025-03-10 13:11:59.852678', 155.00, '1', 1, NULL, 1, 1, NULL, 5, 1, 38),
(43, '2025-03-10 21:25:09.565380', '2025-03-10 22:19:39.914616', NULL, '2025-03-07 21:24:47.000000', '2025-03-14 21:24:53.000000', NULL, 156.00, '0', 1, 8, 1, 1, 5, 5, 1, NULL),
(44, '2025-03-10 22:52:46.663370', '2025-03-11 00:04:24.729258', NULL, '2025-03-11 00:00:00.000000', '2025-03-15 00:00:00.000000', '2025-03-11 00:04:24.714519', 360.00, '2', 1, NULL, 1, 1, NULL, 5, 6, NULL),
(45, '2025-03-11 13:39:35.551101', '2025-03-11 13:39:35.551101', NULL, '2025-03-11 00:00:00.000000', '2025-03-12 00:00:00.000000', NULL, 30.00, '0', 1, NULL, 1, 1, NULL, 9, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_bookingdetail`
--

CREATE TABLE `bookings_bookingdetail` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `booking_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_extensionmovement`
--

CREATE TABLE `bookings_extensionmovement` (
  `movement_number` int(11) NOT NULL,
  `original_departure` date NOT NULL,
  `extension_date` date NOT NULL,
  `new_departure` date NOT NULL,
  `reason` varchar(50) NOT NULL,
  `extension_year` int(10) UNSIGNED NOT NULL CHECK (`extension_year` >= 0),
  `duration` int(10) UNSIGNED NOT NULL CHECK (`duration` >= 0),
  `booking_id` bigint(20) NOT NULL,
  `payment_receipt_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_extensionmovement`
--

INSERT INTO `bookings_extensionmovement` (`movement_number`, `original_departure`, `extension_date`, `new_departure`, `reason`, `extension_year`, `duration`, `booking_id`, `payment_receipt_id`) VALUES
(49, '2025-03-14', '2025-03-10', '2025-03-16', 'personal', 2025, 2, 43, 20),
(50, '2025-03-16', '2025-03-10', '2025-03-18', 'technical', 2025, 2, 43, 24),
(51, '2025-03-16', '2025-03-10', '2025-03-20', 'business', 2025, 4, 43, 23),
(52, '2025-03-15', '2025-03-10', '2025-03-17', 'personal', 2025, 2, 44, 25),
(53, '2025-03-20', '2025-03-11', '2025-03-28', 'personal', 2025, 8, 43, 26);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_guest`
--

CREATE TABLE `bookings_guest` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `booking_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `birthday_date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `id_card_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_guest`
--

INSERT INTO `bookings_guest` (`id`, `name`, `phone_number`, `check_in_date`, `check_out_date`, `booking_id`, `hotel_id`, `birthday_date`, `gender`, `id_card_image`) VALUES
(39, 'asdas', '151561516', '2025-03-08 21:21:24.000000', '2025-03-10 21:23:06.533342', 42, 1, '2025-03-10', 'male', 'guests/id_card_images/search.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_favourites`
--

CREATE TABLE `customer_favourites` (
  `id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_favourites`
--

INSERT INTO `customer_favourites` (`id`, `hotel_id`, `user_id`) VALUES
(14, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-03-05 20:55:46.110899', '5', 'Booking #BKG-F168CEA1C7 - room vip 2025 (1 rooms)', 2, '[]', 5, 1),
(2, '2025-03-05 20:56:07.852541', '5', 'Booking #BKG-F168CEA1C7 - room vip 2025 (1 rooms)', 3, '', 5, 1),
(3, '2025-03-05 20:56:07.856704', '4', 'Booking #BKG-2CED08EB6C - room vip 2025 (1 rooms)', 3, '', 5, 1),
(4, '2025-03-05 20:56:07.864656', '3', 'Booking #BKG-3B4D584BC6 - room vip 2025 (1 rooms)', 3, '', 5, 1),
(5, '2025-03-05 20:56:07.869442', '2', 'Booking #BKG-D2E0866F80 - room vip 2025 (1 rooms)', 3, '', 5, 1),
(6, '2025-03-05 20:56:07.871441', '1', 'Booking #BKG-EBFB7A8F4A - room vip 2025 (1 rooms)', 3, '', 5, 1),
(7, '2025-03-05 21:11:34.571580', '14', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(8, '2025-03-05 21:11:48.102789', '14', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(9, '2025-03-05 21:12:11.608259', '14', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(10, '2025-03-05 21:12:36.255138', '14', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(11, '2025-03-05 21:15:18.504422', '1', 'room vip 2025 - 15 rooms available on 2025-03-06', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\"]}}]', 17, 1),
(12, '2025-03-05 21:16:26.076662', '15', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(13, '2025-03-05 21:16:41.723655', '15', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(14, '2025-03-05 21:17:03.312481', '1', 'room vip 2025 - 15 rooms available on 2025-03-06', 3, '', 17, 1),
(15, '2025-03-05 21:17:21.451421', '15', 'Booking # - room vip 2025 (5 rooms)', 3, '', 5, 1),
(16, '2025-03-05 21:17:21.457582', '14', 'Booking # - room vip 2025 (5 rooms)', 3, '', 5, 1),
(17, '2025-03-05 21:17:48.495380', '4', 'room vip 2025 - 15 rooms available on 2025-03-06', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\"]}}]', 17, 1),
(18, '2025-03-05 21:19:04.973054', '5', 'room vip 2025 - 15 rooms available on 2025-03-05', 3, '', 17, 1),
(19, '2025-03-05 21:19:18.781891', '16', 'Booking # - room vip 2025 (5 rooms)', 3, '', 5, 1),
(20, '2025-03-05 21:20:43.386943', '17', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(21, '2025-03-05 21:20:58.380278', '17', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\", \"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(22, '2025-03-05 21:24:27.813932', '18', 'Booking # - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(23, '2025-03-05 21:30:52.109455', '19', 'Booking # - room vip 2025 (9 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(24, '2025-03-05 21:31:18.733713', '17', 'Booking # - room vip 2025 (5 rooms)', 3, '', 5, 1),
(25, '2025-03-05 21:31:27.385641', '18', 'Booking # - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(26, '2025-03-05 21:31:40.616898', '18', 'Booking # - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(27, '2025-03-05 21:31:54.920539', '18', 'Booking # - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(28, '2025-03-05 21:33:02.894649', '20', 'Booking # - room vip 2025 (11 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(29, '2025-03-05 21:33:50.499504', '21', 'Booking # - room vip 2025 (888 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(30, '2025-03-05 21:38:04.858535', '21', 'Booking # - room vip 2025 (888 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(31, '2025-03-05 21:38:16.406730', '20', 'Booking # - room vip 2025 (11 rooms)', 3, '', 5, 1),
(32, '2025-03-05 21:38:25.341283', '18', 'Booking # - room vip 2025 (6 rooms)', 3, '', 5, 1),
(33, '2025-03-05 21:38:25.347791', '21', 'Booking # - room vip 2025 (888 rooms)', 3, '', 5, 1),
(34, '2025-03-05 21:38:25.352113', '19', 'Booking # - room vip 2025 (9 rooms)', 3, '', 5, 1),
(35, '2025-03-05 21:43:42.747281', '22', 'Booking # - room vip 2025 (15 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(36, '2025-03-05 21:44:01.932944', '22', 'Booking # - room vip 2025 (15 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\", \"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(37, '2025-03-05 23:08:51.510277', '23', 'Booking # - room vip 2025 (14 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(38, '2025-03-06 01:26:29.499865', '25', 'Booking # - room vip 2025 (1 rooms)', 3, '', 5, 1),
(39, '2025-03-06 01:26:29.504009', '24', 'Booking # - room vip 2025 (14 rooms)', 3, '', 5, 1),
(40, '2025-03-06 01:26:29.507774', '23', 'Booking # - room vip 2025 (14 rooms)', 3, '', 5, 1),
(41, '2025-03-06 01:26:29.510826', '22', 'Booking # - room vip 2025 (15 rooms)', 3, '', 5, 1),
(42, '2025-03-06 01:26:42.810350', '4', 'room vip 2025 - 15 rooms available on 2025-03-06', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 17, 1),
(43, '2025-03-06 01:27:15.938925', '26', 'Booking # - room vip 2025 (1 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(44, '2025-03-06 01:29:39.401566', '27', 'Booking # - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(45, '2025-03-06 08:08:33.261922', '27', 'Booking # - room vip 2025 (5 rooms)', 3, '', 5, 1),
(46, '2025-03-06 08:08:33.266751', '26', 'Booking # - room vip 2025 (1 rooms)', 3, '', 5, 1),
(47, '2025-03-06 08:17:11.384517', '28', 'Booking # - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(48, '2025-03-07 20:31:31.065917', '29', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(49, '2025-03-07 20:31:51.527859', '30', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(50, '2025-03-07 20:32:07.335843', '29', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(51, '2025-03-07 20:32:07.340504', '28', 'Booking # - room vip 2025 (6 rooms)', 3, '', 5, 1),
(52, '2025-03-07 20:35:25.396130', '30', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(53, '2025-03-07 20:38:27.524336', '1', 'إشعار من b إلى mosaa - 2', 1, '[{\"added\": {}}]', 41, 1),
(54, '2025-03-07 20:53:46.592034', '2', 'إشعار من asdjsk إلى asdjsk - 1', 1, '[{\"added\": {}}]', 41, 1),
(55, '2025-03-07 20:54:03.693250', '2', 'إشعار من asdjsk إلى mosaa - 1', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0644\\u0645\"]}}]', 41, 1),
(56, '2025-03-07 21:08:24.500813', '2', 'إشعار من asdjsk إلى mosaa - 1', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629\"]}}]', 41, 1),
(57, '2025-03-07 21:16:17.662816', '30', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(58, '2025-03-07 21:18:23.510897', '31', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(59, '2025-03-07 21:27:39.899164', '31', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(60, '2025-03-07 21:28:12.843852', '31', 'Booking # - room vip 2025 (4 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(61, '2025-03-07 22:21:49.151074', '1', 'احمد', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0641\\u0646\\u062f\\u0642\"]}}]', 13, 1),
(62, '2025-03-07 23:40:10.141860', '19', 'ahmedaaaa - ', 3, '', 24, 1),
(63, '2025-03-07 23:40:10.151569', '20', 'askjdhkjash - ', 3, '', 24, 1),
(64, '2025-03-07 23:40:10.155694', '21', 'klajsdkasjldk - ', 3, '', 24, 1),
(65, '2025-03-07 23:40:10.158720', '15', 'lkajds - ', 3, '', 24, 1),
(66, '2025-03-07 23:40:10.159724', '18', 'lskajdlak - ', 3, '', 24, 1),
(67, '2025-03-07 23:40:10.166130', '16', 'skajdklasjldk - ', 3, '', 24, 1),
(68, '2025-03-07 23:40:10.170251', '17', 'sssssssssss - ', 3, '', 24, 1),
(69, '2025-03-08 01:03:26.434178', '35', 'Booking # - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(70, '2025-03-08 01:04:38.139118', '34', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(71, '2025-03-08 01:04:47.429164', '35', 'Booking # - room vip 2025 (1 rooms)', 3, '', 5, 1),
(72, '2025-03-08 01:04:47.433800', '33', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(73, '2025-03-08 01:04:47.434803', '32', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(74, '2025-03-08 01:04:47.434803', '31', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(75, '2025-03-08 01:05:09.030345', '8', 'room vip 2025 - 15 rooms available on 2025-03-08', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 17, 1),
(76, '2025-03-08 01:05:09.036144', '7', 'room vip 2025 - 15 rooms available on 2025-03-07', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 17, 1),
(77, '2025-03-08 01:40:23.401292', '2', 'hotels/images/wasell.jpg', 1, '[{\"added\": {}}]', 14, 1),
(78, '2025-03-08 22:38:29.314387', '2', ' - room vip 2025 (3 نجوم)', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"]}}]', 31, 1),
(79, '2025-03-08 22:38:38.930948', '1', ' - احمد (3 نجوم)', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629\"]}}]', 29, 1),
(80, '2025-03-08 22:39:49.193719', '39', 'Booking # - room vip 2025 (4 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(81, '2025-03-08 23:14:20.335343', '41', 'Booking # - room vip 2025 (4 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(82, '2025-03-08 23:20:13.283766', '40', 'Booking #HOTEL-20250309020932-5334 - room vip 2025 (4 rooms)', 3, '', 5, 1),
(83, '2025-03-08 23:20:29.357334', '41', 'Booking # - room vip 2025 (4 rooms)', 3, '', 5, 1),
(84, '2025-03-09 23:33:07.433387', '38', 'Booking #HOTEL-20250308041122-6713 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c\"]}}]', 5, 1),
(85, '2025-03-09 23:35:59.849143', '38', 'Booking #HOTEL-20250308041122-6713 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c\", \"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(86, '2025-03-09 23:36:58.148346', '38', 'Booking #HOTEL-20250308041122-6713 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(87, '2025-03-09 23:45:46.031347', '26', 'klajsdklajsl - HOTEL-20250308041122-6713', 1, '[{\"added\": {}}]', 24, 1),
(88, '2025-03-10 11:50:00.021205', '5', 'mosa mohamed', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 2, 1),
(89, '2025-03-10 13:03:48.703431', '20', 'حركة #20 - حجز 42', 2, '[{\"changed\": {\"fields\": [\"\\u0633\\u0628\\u0628 \\u0627\\u0644\\u062a\\u0645\\u062f\\u064a\\u062f\", \"\\u0631\\u0642\\u0645 \\u0633\\u0646\\u062f \\u0627\\u0644\\u062f\\u0641\\u0639\"]}}]', 43, 1),
(90, '2025-03-10 13:11:53.198929', '38', 'Booking #38 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(91, '2025-03-10 13:21:20.161197', '38', 'Booking #38 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(92, '2025-03-10 14:41:32.415096', '2', 'SAR (sa)', 1, '[{\"added\": {}}]', 25, 1),
(93, '2025-03-10 21:12:12.595703', '38', 'klajsdklajsl - 38', 3, '', 24, 1),
(94, '2025-03-10 21:14:35.375884', '38', 'klajsdklajsl - 38', 3, '', 24, 1),
(95, '2025-03-10 21:14:48.762435', '38', 'klajsdklajsl - 38', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c\"]}}]', 24, 1),
(96, '2025-03-10 21:16:02.220416', '1', 'sakj', 1, '[{\"added\": {}}]', 37, 1),
(97, '2025-03-10 21:16:08.853796', '1', 'sakj', 2, '[{\"changed\": {\"fields\": [\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u062a\\u0635\\u0646\\u064a\\u0641\"]}}]', 37, 1),
(98, '2025-03-10 21:16:23.806179', '38', 'klajsdklajsl - 38', 3, '', 24, 1),
(99, '2025-03-10 21:16:39.703803', '38', 'klajsdklajsl - 38', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0631\\u0648\\u062c\"]}}]', 24, 1),
(100, '2025-03-10 21:16:59.465703', '26', 'klajsdklajsl - 26', 3, '', 24, 1),
(101, '2025-03-10 21:21:04.265829', '38', 'klajsdklajsl - 38', 3, '', 24, 1),
(102, '2025-03-10 21:21:35.262245', '39', 'asdas - 39', 1, '[{\"added\": {}}]', 24, 1),
(103, '2025-03-10 21:23:01.702292', '39', 'asdas - 39', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\"]}}]', 24, 1),
(104, '2025-03-10 21:25:09.594118', '43', 'Booking #43 - room vip 2025 (1 rooms)', 1, '[{\"added\": {}}]', 5, 1),
(105, '2025-03-10 22:08:43.983994', '48', 'حركة #48 - حجز 43', 3, '', 43, 1),
(106, '2025-03-10 22:08:43.989104', '47', 'حركة #47 - حجز 43', 3, '', 43, 1),
(107, '2025-03-10 22:08:43.993453', '46', 'حركة #46 - حجز 43', 3, '', 43, 1),
(108, '2025-03-10 22:08:43.996482', '45', 'حركة #45 - حجز 38', 3, '', 43, 1),
(109, '2025-03-10 22:08:43.996482', '44', 'حركة #44 - حجز 38', 3, '', 43, 1),
(110, '2025-03-10 22:08:44.004098', '43', 'حركة #43 - حجز 38', 3, '', 43, 1),
(111, '2025-03-10 22:08:44.007753', '42', 'حركة #42 - حجز 38', 3, '', 43, 1),
(112, '2025-03-10 22:08:44.011962', '41', 'حركة #41 - حجز 38', 3, '', 43, 1),
(113, '2025-03-10 22:08:44.014987', '40', 'حركة #40 - حجز 38', 3, '', 43, 1),
(114, '2025-03-10 22:08:44.019744', '39', 'حركة #39 - حجز 38', 3, '', 43, 1),
(115, '2025-03-10 22:08:44.023259', '38', 'حركة #38 - حجز 38', 3, '', 43, 1),
(116, '2025-03-10 22:08:44.032956', '37', 'حركة #37 - حجز 38', 3, '', 43, 1),
(117, '2025-03-10 22:08:44.037113', '36', 'حركة #36 - حجز 38', 3, '', 43, 1),
(118, '2025-03-10 22:08:44.042160', '35', 'حركة #35 - حجز 38', 3, '', 43, 1),
(119, '2025-03-10 22:08:44.046480', '34', 'حركة #34 - حجز 38', 3, '', 43, 1),
(120, '2025-03-10 22:08:44.052919', '33', 'حركة #33 - حجز 38', 3, '', 43, 1),
(121, '2025-03-10 22:08:44.056935', '32', 'حركة #32 - حجز 38', 3, '', 43, 1),
(122, '2025-03-10 22:08:44.061267', '31', 'حركة #31 - حجز 38', 3, '', 43, 1),
(123, '2025-03-10 22:08:44.065490', '30', 'حركة #30 - حجز 38', 3, '', 43, 1),
(124, '2025-03-10 22:08:44.069649', '29', 'حركة #29 - حجز 38', 3, '', 43, 1),
(125, '2025-03-10 22:08:44.073443', '28', 'حركة #28 - حجز 42', 3, '', 43, 1),
(126, '2025-03-10 22:08:44.076772', '27', 'حركة #27 - حجز 38', 3, '', 43, 1),
(127, '2025-03-10 22:08:44.076772', '26', 'حركة #26 - حجز 38', 3, '', 43, 1),
(128, '2025-03-10 22:08:44.076772', '25', 'حركة #25 - حجز 38', 3, '', 43, 1),
(129, '2025-03-10 22:08:44.089331', '24', 'حركة #24 - حجز 38', 3, '', 43, 1),
(130, '2025-03-10 22:08:44.092831', '23', 'حركة #23 - حجز 38', 3, '', 43, 1),
(131, '2025-03-10 22:08:44.092831', '22', 'حركة #22 - حجز 42', 3, '', 43, 1),
(132, '2025-03-10 22:08:44.092831', '21', 'حركة #21 - حجز 42', 3, '', 43, 1),
(133, '2025-03-10 22:08:44.104051', '20', 'حركة #20 - حجز 42', 3, '', 43, 1),
(134, '2025-03-10 22:08:44.108159', '19', 'حركة #19 - حجز 42', 3, '', 43, 1),
(135, '2025-03-10 22:08:44.112191', '18', 'حركة #18 - حجز 42', 3, '', 43, 1),
(136, '2025-03-10 22:08:44.113241', '17', 'حركة #17 - حجز 42', 3, '', 43, 1),
(137, '2025-03-10 22:08:44.113241', '16', 'حركة #16 - حجز 42', 3, '', 43, 1),
(138, '2025-03-10 22:08:44.123470', '15', 'حركة #15 - حجز 42', 3, '', 43, 1),
(139, '2025-03-10 22:08:44.127091', '14', 'حركة #14 - حجز 42', 3, '', 43, 1),
(140, '2025-03-10 22:08:44.127091', '13', 'حركة #13 - حجز 38', 3, '', 43, 1),
(141, '2025-03-10 22:08:44.127091', '12', 'حركة #12 - حجز 38', 3, '', 43, 1),
(142, '2025-03-10 22:08:44.137556', '11', 'حركة #11 - حجز 38', 3, '', 43, 1),
(143, '2025-03-10 22:08:44.144033', '10', 'حركة #10 - حجز 38', 3, '', 43, 1),
(144, '2025-03-10 22:08:44.150053', '9', 'حركة #9 - حجز 38', 3, '', 43, 1),
(145, '2025-03-10 22:08:44.156023', '8', 'حركة #8 - حجز 38', 3, '', 43, 1),
(146, '2025-03-10 22:08:44.160423', '7', 'حركة #7 - حجز 38', 3, '', 43, 1),
(147, '2025-03-10 22:08:44.161458', '6', 'حركة #6 - حجز 38', 3, '', 43, 1),
(148, '2025-03-10 22:08:44.165602', '5', 'حركة #5 - حجز 38', 3, '', 43, 1),
(149, '2025-03-10 22:08:44.171737', '4', 'حركة #4 - حجز 38', 3, '', 43, 1),
(150, '2025-03-10 22:08:44.177064', '3', 'حركة #3 - حجز 38', 3, '', 43, 1),
(151, '2025-03-10 22:08:44.177064', '2', 'حركة #2 - حجز 38', 3, '', 43, 1),
(152, '2025-03-10 22:08:44.177064', '1', 'حركة #1 - حجز 38', 3, '', 43, 1),
(153, '2025-03-10 22:19:39.920669', '43', 'Booking #43 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 5, 1),
(154, '2025-03-10 22:25:10.466365', '49', 'حركة #49 - حجز 43', 2, '[{\"changed\": {\"fields\": [\"\\u0631\\u0642\\u0645 \\u0633\\u0646\\u062f \\u0627\\u0644\\u062f\\u0641\\u0639\"]}}]', 43, 1),
(155, '2025-03-10 22:53:51.911738', '9', 'room vip 2025 - 15 rooms available on 2025-03-09', 3, '', 17, 1),
(156, '2025-03-10 22:53:51.917620', '8', 'room vip 2025 - 10 rooms available on 2025-03-08', 3, '', 17, 1),
(157, '2025-03-10 22:53:51.921228', '7', 'room vip 2025 - 15 rooms available on 2025-03-07', 3, '', 17, 1),
(158, '2025-03-10 22:53:51.924175', '4', 'room vip 2025 - 15 rooms available on 2025-03-06', 3, '', 17, 1),
(159, '2025-03-10 22:53:51.928212', '6', 'room vip 2025 - 15 rooms available on 2025-03-05', 3, '', 17, 1),
(160, '2025-03-10 22:54:03.355252', '44', 'Booking #44 - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(161, '2025-03-10 22:55:25.540258', '44', 'Booking #44 - room vip 2025 (6 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 5, 1),
(162, '2025-03-10 23:26:15.983804', '51', 'حركة #51 - حجز 43', 2, '[{\"changed\": {\"fields\": [\"\\u0631\\u0642\\u0645 \\u0633\\u0646\\u062f \\u0627\\u0644\\u062f\\u0641\\u0639\"]}}]', 43, 1),
(163, '2025-03-11 20:50:17.736441', '1', 'جو فريد', 1, '[{\"added\": {}}]', 50, 1),
(164, '2025-03-11 20:50:44.689619', '2', 'بيئة', 1, '[{\"added\": {}}]', 50, 1),
(165, '2025-03-11 20:51:13.538181', '3', 'موقع عظيم', 1, '[{\"added\": {}}]', 50, 1),
(166, '2025-03-11 20:51:47.817027', '4', 'هومي كومفورت', 1, '[{\"added\": {}}]', 50, 1),
(167, '2025-03-11 21:23:39.145892', '1', 'vip', 1, '[{\"added\": {}}]', 51, 1),
(168, '2025-03-11 21:23:52.333360', '2', 'normal', 1, '[{\"added\": {}}]', 51, 1),
(169, '2025-03-11 22:03:40.927943', '1', 'setting Trizen', 1, '[{\"added\": {}}]', 52, 1),
(170, '2025-03-11 22:24:38.403984', '1', 'socialmedia linked in', 1, '[{\"added\": {}}]', 53, 1),
(171, '2025-03-11 22:25:16.461185', '2', 'socialmedia instagram', 1, '[{\"added\": {}}]', 53, 1),
(172, '2025-03-11 22:25:38.992185', '3', 'socialmedia twitter', 1, '[{\"added\": {}}]', 53, 1),
(173, '2025-03-11 22:26:09.634859', '4', 'socialmedia facebook', 1, '[{\"added\": {}}]', 53, 1),
(174, '2025-03-11 23:11:54.753615', '5', 'mosa mohamed', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a\\u0629\"]}}]', 2, 1),
(175, '2025-03-11 23:39:01.699992', '1', 'الإقامة في الفندق ، ملاذ الحلم', 1, '[{\"added\": {}}]', 54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL,
  `clocked_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictask`
--

CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL CHECK (`total_run_count` >= 0),
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) UNSIGNED DEFAULT NULL CHECK (`priority` >= 0),
  `headers` longtext NOT NULL,
  `clocked_id` int(11) DEFAULT NULL,
  `expire_seconds` int(10) UNSIGNED DEFAULT NULL CHECK (`expire_seconds` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictasks`
--

CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_solarschedule`
--

CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(3, 'auth', 'user'),
(37, 'blog', 'category'),
(38, 'blog', 'comment'),
(39, 'blog', 'post'),
(40, 'blog', 'tag'),
(5, 'bookings', 'booking'),
(23, 'bookings', 'bookingdetail'),
(43, 'bookings', 'extensionmovement'),
(24, 'bookings', 'guest'),
(9, 'contenttypes', 'contenttype'),
(42, 'customer', 'favourites'),
(49, 'django_celery_beat', 'clockedschedule'),
(44, 'django_celery_beat', 'crontabschedule'),
(45, 'django_celery_beat', 'intervalschedule'),
(46, 'django_celery_beat', 'periodictask'),
(47, 'django_celery_beat', 'periodictasks'),
(48, 'django_celery_beat', 'solarschedule'),
(54, 'home', 'heroslider'),
(50, 'home', 'infobox'),
(51, 'home', 'roomtypehome'),
(52, 'home', 'setting'),
(53, 'home', 'socialmedialink'),
(12, 'HotelManagement', 'city'),
(13, 'HotelManagement', 'hotel'),
(6, 'HotelManagement', 'hotelrequest'),
(14, 'HotelManagement', 'image'),
(15, 'HotelManagement', 'location'),
(16, 'HotelManagement', 'phone'),
(41, 'notifications', 'notifications'),
(25, 'payments', 'currency'),
(26, 'payments', 'hotelpaymentmethod'),
(28, 'payments', 'payment'),
(27, 'payments', 'paymentoption'),
(29, 'reviews', 'hotelreview'),
(30, 'reviews', 'offer'),
(31, 'reviews', 'roomreview'),
(17, 'rooms', 'availability'),
(18, 'rooms', 'category'),
(19, 'rooms', 'review'),
(20, 'rooms', 'roomimage'),
(21, 'rooms', 'roomprice'),
(22, 'rooms', 'roomstatus'),
(4, 'rooms', 'roomtype'),
(32, 'services', 'hotelservice'),
(33, 'services', 'offer'),
(34, 'services', 'roomtypeservice'),
(10, 'sessions', 'session'),
(35, 'token_blacklist', 'blacklistedtoken'),
(36, 'token_blacklist', 'outstandingtoken'),
(11, 'users', 'activitylog'),
(2, 'users', 'customuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-05 18:54:51.585244'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-03-05 18:54:51.634565'),
(3, 'auth', '0001_initial', '2025-03-05 18:54:51.825211'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-03-05 18:54:51.879824'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-03-05 18:54:51.885680'),
(6, 'auth', '0004_alter_user_username_opts', '2025-03-05 18:54:51.894464'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-03-05 18:54:51.904269'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-03-05 18:54:51.910107'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-03-05 18:54:51.942334'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-03-05 18:54:51.948178'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-03-05 18:54:51.954000'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-03-05 18:54:51.962817'),
(13, 'auth', '0011_update_proxy_permissions', '2025-03-05 18:54:51.969014'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-03-05 18:54:51.974869'),
(15, 'auth', '0013_alter_permission_options', '2025-03-05 18:54:51.979817'),
(16, 'auth', '0014_alter_permission_options_alter_user_user_permissions', '2025-03-05 18:54:51.986617'),
(17, 'auth', '0015_alter_user_user_permissions', '2025-03-05 18:54:51.992471'),
(18, 'users', '0001_initial', '2025-03-05 18:54:52.352050'),
(19, 'HotelManagement', '0001_initial', '2025-03-05 18:54:52.434306'),
(20, 'HotelManagement', '0002_initial', '2025-03-05 18:54:53.391959'),
(21, 'admin', '0001_initial', '2025-03-05 18:54:53.507395'),
(22, 'admin', '0002_logentry_remove_auto_add', '2025-03-05 18:54:53.523986'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-05 18:54:53.539603'),
(24, 'blog', '0001_initial', '2025-03-05 18:54:53.606394'),
(25, 'blog', '0002_initial', '2025-03-05 18:54:53.950194'),
(26, 'rooms', '0001_initial', '2025-03-05 18:54:54.066765'),
(27, 'services', '0001_initial', '2025-03-05 18:54:54.202498'),
(28, 'services', '0002_initial', '2025-03-05 18:54:54.483396'),
(29, 'rooms', '0002_initial', '2025-03-05 18:54:56.554624'),
(30, 'bookings', '0001_initial', '2025-03-05 18:54:57.311727'),
(31, 'notifications', '0001_initial', '2025-03-05 18:54:57.329477'),
(32, 'notifications', '0002_initial', '2025-03-05 18:54:57.493116'),
(33, 'payments', '0001_initial', '2025-03-05 18:54:58.106574'),
(34, 'payments', '0002_alter_payment_payment_date', '2025-03-05 18:54:58.136862'),
(35, 'payments', '0003_alter_payment_payment_date', '2025-03-05 18:54:58.217218'),
(36, 'payments', '0004_alter_payment_payment_date', '2025-03-05 18:54:58.256649'),
(37, 'reviews', '0001_initial', '2025-03-05 18:54:58.335789'),
(38, 'reviews', '0002_initial', '2025-03-05 18:54:59.503695'),
(39, 'sessions', '0001_initial', '2025-03-05 18:54:59.536874'),
(40, 'token_blacklist', '0001_initial', '2025-03-05 18:54:59.728029'),
(41, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2025-03-05 18:54:59.773304'),
(42, 'token_blacklist', '0003_auto_20171017_2007', '2025-03-05 18:54:59.823172'),
(43, 'token_blacklist', '0004_auto_20171017_2013', '2025-03-05 18:54:59.896787'),
(44, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2025-03-05 18:54:59.940070'),
(45, 'token_blacklist', '0006_auto_20171017_2113', '2025-03-05 18:54:59.977277'),
(46, 'token_blacklist', '0007_auto_20171017_2214', '2025-03-05 18:55:00.293453'),
(47, 'token_blacklist', '0008_migrate_to_bigautofield', '2025-03-05 18:55:00.596179'),
(48, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2025-03-05 18:55:00.631355'),
(49, 'token_blacklist', '0011_linearizes_history', '2025-03-05 18:55:00.637191'),
(50, 'token_blacklist', '0012_alter_outstandingtoken_user', '2025-03-05 18:55:00.722783'),
(51, 'bookings', '0002_booking_rooms_booked', '2025-03-05 20:55:08.980606'),
(52, 'bookings', '0003_booking_parent_booking', '2025-03-06 00:37:59.721026'),
(53, 'bookings', '0004_alter_guest_unique_together_guest_birthday_date_and_more', '2025-03-07 19:49:34.724787'),
(54, 'payments', '0005_payment_transfer_image_alter_payment_payment_date', '2025-03-07 19:58:25.889456'),
(55, 'notifications', '0003_notifications_action_url', '2025-03-07 20:48:28.497949'),
(56, 'bookings', '0005_alter_guest_unique_together', '2025-03-07 23:23:55.225937'),
(57, 'bookings', '0006_alter_bookingdetail_booking_number', '2025-03-08 01:06:45.670662'),
(58, 'bookings', '0007_alter_bookingdetail_booking_number', '2025-03-08 01:09:20.622131'),
(59, 'payments', '0006_alter_payment_booking_number_and_more', '2025-03-08 01:10:51.508110'),
(60, 'reviews', '0003_remove_hotelreview_slug_remove_offer_slug_and_more', '2025-03-08 21:39:06.375363'),
(61, 'bookings', '0008_alter_guest_booking_number', '2025-03-09 23:45:04.118908'),
(62, 'customer', '0001_initial', '2025-03-09 23:58:21.931636'),
(63, 'payments', '0007_alter_payment_payment_date', '2025-03-10 11:43:07.468139'),
(64, 'bookings', '0009_extensionmovement', '2025-03-10 11:43:07.598679'),
(65, 'rooms', '0003_remove_availability_unique_room_availability', '2025-03-10 11:43:13.049373'),
(66, 'bookings', '0010_remove_booking_booking_number_and_more', '2025-03-10 12:05:58.518464'),
(67, 'payments', '0008_remove_payment_booking_number_and_more', '2025-03-10 12:05:58.574618'),
(68, 'users', '0002_customuser_birth_date_customuser_gender', '2025-03-11 14:09:59.975991'),
(69, 'django_celery_beat', '0001_initial', '2025-03-11 15:21:42.520330'),
(70, 'django_celery_beat', '0002_auto_20161118_0346', '2025-03-11 15:21:42.648445'),
(71, 'django_celery_beat', '0003_auto_20161209_0049', '2025-03-11 15:21:42.682286'),
(72, 'django_celery_beat', '0004_auto_20170221_0000', '2025-03-11 15:21:42.696363'),
(73, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2025-03-11 15:21:42.711164'),
(74, 'django_celery_beat', '0006_auto_20180322_0932', '2025-03-11 15:21:42.798731'),
(75, 'django_celery_beat', '0007_auto_20180521_0826', '2025-03-11 15:21:42.897347'),
(76, 'django_celery_beat', '0008_auto_20180914_1922', '2025-03-11 15:21:43.033533'),
(77, 'django_celery_beat', '0006_auto_20180210_1226', '2025-03-11 15:21:43.126181'),
(78, 'django_celery_beat', '0006_periodictask_priority', '2025-03-11 15:21:43.151799'),
(79, 'django_celery_beat', '0009_periodictask_headers', '2025-03-11 15:21:43.183443'),
(80, 'django_celery_beat', '0010_auto_20190429_0326', '2025-03-11 15:21:43.593268'),
(81, 'django_celery_beat', '0011_auto_20190508_0153', '2025-03-11 15:21:43.720567'),
(82, 'django_celery_beat', '0012_periodictask_expire_seconds', '2025-03-11 15:21:43.772461'),
(83, 'django_celery_beat', '0013_auto_20200609_0727', '2025-03-11 15:21:43.817283'),
(84, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2025-03-11 15:21:43.869744'),
(85, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2025-03-11 15:21:43.892944'),
(86, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2025-03-11 15:21:43.943296'),
(87, 'django_celery_beat', '0017_alter_crontabschedule_month_of_year', '2025-03-11 15:21:43.973722'),
(88, 'django_celery_beat', '0018_improve_crontab_helptext', '2025-03-11 15:21:44.006606'),
(89, 'django_celery_beat', '0019_alter_periodictasks_options', '2025-03-11 15:21:44.020151'),
(90, 'home', '0001_initial', '2025-03-11 20:49:22.233149'),
(91, 'home', '0002_infobox_show_at_home', '2025-03-11 20:55:23.417318'),
(92, 'home', '0003_roomtypehome', '2025-03-11 21:18:24.767434'),
(93, 'home', '0004_setting', '2025-03-11 21:55:09.279254'),
(94, 'home', '0005_setting_email_setting_phone_number', '2025-03-11 22:13:20.294007'),
(95, 'home', '0006_socialmedialink_setting_address', '2025-03-11 22:23:25.428192'),
(96, 'home', '0007_heroslider', '2025-03-11 23:35:52.279241');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0sn54dah6b84td4hf50y033ugs57ufnx', '.eJxVjMEOwiAQRP-FsyEILex69O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiziL028XKD657iA9qN6bjK0u8xTkrsiDdnlriV_Xw_07KNTLtjaWaXBWI6E1bKJ1mRAhbMEhOxdGCpm0ijYDK1BjVICkLSjM4NCIzxfWiTdM:1tqg4Q:2vEAesxV17Y7dya87J29AkbyVW55I9ZefmO8TfVlzrQ', '2025-03-21 22:21:30.370701'),
('2vlxt7a2tnb7z69kqmucph3i3o9geuwb', '.eJxVjEEOwiAURO_C2hAsLfC7dO8ZyAc-ghowpU00xrvbJl3oYjYzb96bWVzmZJdGk82BjezIDr-dQ3-jsg3hiuVSua9lnrLjG8L3tfFzDXQ_7eyfIGFL61sqwl6rDhCUJOmVjghg3Broo9ZuQBexE15FQ8KIwQsD2CkjIBoNcpM2ai3XYun5yNOLjeLzBXLPPok:1tqeAA:w_N-Gimn2GX5anoucMJ2xdbjcvP6L_9CzjGIq7DwI9A', '2025-03-21 20:19:18.115923'),
('3l284zd6avprephcge5o4u8f5zv0pedz', '.eJxdj0tuwyAQhu8ya8fCdozBy-57gipCA4wftQMVxlGlKHcvtuIq7QJp-P4HzB0UrnFQ60JBjRZaKCB7ZRrNRG4T7Ce63ufGuxhGnW-W_Kku-bu3NL89vX8KBlyGlK444bnhpUTJK6oMbzqUUuh05LlrGl2j7rBkhneCmGC1YUJiyQWTnWhklUq199PoemUxIrR3GHykef90kUHw_nrMZiAzqdGlZ0tW1idWnRiHg_s1vgjF1ryH3XrVFFJBnQHadY6_JIHoI87qK4yGNkfOMqDvGFClFW8JLtB-XP4ztaegTeY-oLPHfcs_Hj9VtHpK:1tpxqB:rrthkEcER5PU8qO3jlPdbK7MrMpXtAwG9HLKmT61gKQ', '2025-03-19 23:07:51.093730'),
('3qsi11xb0eoj0bbvwub0u4160aw78bmu', '.eJxVjMEOwiAQRP-FsyEILex69O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiziL028XKD657iA9qN6bjK0u8xTkrsiDdnlriV_Xw_07KNTLtjaWaXBWI6E1bKJ1mRAhbMEhOxdGCpm0ijYDK1BjVICkLSjM4NCIzxfWiTdM:1tpvah:sZuqLtlzjWQXPsOTdNbO-z3KPrli34_hGl1t7e1FRXE', '2025-03-19 20:43:43.782610'),
('5fsxa10j40azsmzvxukhxk5wckw41254', '.eJxVjEEOwiAURO_C2hAsLfC7dO8ZyAc-ghowpU00xrvbJl3oYjYzb96bWVzmZJdGk82BjezIDr-dQ3-jsg3hiuVSua9lnrLjG8L3tfFzDXQ_7eyfIGFL61sqwl6rDhCUJOmVjghg3Broo9ZuQBexE15FQ8KIwQsD2CkjIBoNcpM2ai3XYun5yNOLjeLzBXLPPok:1tpuJS:c-8f7wxVVYGw8Eyarw_XHRouPwBD_fRD7bjOE3_Gnzk', '2025-03-19 19:21:50.420216'),
('9lhq6261aowlqxkq986zwgezos2h3btq', '.eJxVjMsKwjAQRf8lawlp86Iu3fsNYTIzsVFJpGlBEf_dFrrQ7T3nnrcIsMxjWBpPIZM4CisOv1sEvHHZAF2hXKrEWuYpR7kpcqdNnivx_bS7f4ER2ri-k7O211qTwsE7BFLO-qi0B1bIkTAlQCJvjKa-s4lWVSe2JnkajO22aOPWci2Bn488vcSx69XglPp8AS32QQA:1trdyD:tNpbB9iuzeEI5iPEea4fleCLODaakyEjJPXthqXKNLs', '2025-03-24 14:19:05.681812'),
('dyyqcnj01cxrtiis0y0nrglmzwhfwp7v', '.eJxVjMEOwiAQRP-FsyEILex69O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiziL028XKD657iA9qN6bjK0u8xTkrsiDdnlriV_Xw_07KNTLtjaWaXBWI6E1bKJ1mRAhbMEhOxdGCpm0ijYDK1BjVICkLSjM4NCIzxfWiTdM:1tqh0j:y8aKsLvvGNnrlwW5boGQVYDDKVpWtCcmBlHLjLz_hCI', '2025-03-21 23:21:45.692432'),
('ez9j8uvrhfnu2tjqto90pzbdtdcc4xqq', '.eJxVjMEOwiAQRP-FsyEILex69O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiziL028XKD657iA9qN6bjK0u8xTkrsiDdnlriV_Xw_07KNTLtjaWaXBWI6E1bKJ1mRAhbMEhOxdGCpm0ijYDK1BjVICkLSjM4NCIzxfWiTdM:1trz99:1zfUuDNjuztsTia1krQIqehctq6wNgF9pstRHzUSdE8', '2025-03-25 12:55:47.857163'),
('fgvqzg78fi449rbjczlawv62en8jrx8b', '.eJxVjDEOgzAQBP_iOrIM5mxImZ43IK_vHJNEIGGoovw9skSRtDsz-1ZTOPY8HUW2aWZ1VV5dfjeE-JSlAn6E5b7quC77NkNXRZ-06HFled1O9-8gh5JrTVYsAezaRiJ6x8mThCZ11LWwJsAw4GOKiCYNIDMYIs9WnHdArz5fEYU46g:1tq6PO:SpMMaOWZhsSxP5q0Cmj0lcpgWGmOFNdGSiP7Q2O8A9w', '2025-03-20 08:16:46.570327'),
('g07eibhv9mous6a8s5dj20pkrrwsb3gy', '.eJxVjMEOwiAQRP-FsyEILex69O43kAUWqRpISnsy_rtt0oMe5jLvzbyFp3Upfu08-ymJiziL028XKD657iA9qN6bjK0u8xTkrsiDdnlriV_Xw_07KNTLtjaWaXBWI6E1bKJ1mRAhbMEhOxdGCpm0ijYDK1BjVICkLSjM4NCIzxfWiTdM:1ts6Xf:EIDy7qDNMNY1sdIMDMvjJwo17us0ZhkgX8i92fTHQyA', '2025-03-25 20:49:35.809703'),
('o4r8mx5t58xbn5b7upvk1phaoh0xxdbb', '.eJxVjMsKwjAQRf8lawlp86Iu3fsNYTIzsVFJpGlBEf_dFrrQ7T3nnrcIsMxjWBpPIZM4CisOv1sEvHHZAF2hXKrEWuYpR7kpcqdNnivx_bS7f4ER2ri-k7O211qTwsE7BFLO-qi0B1bIkTAlQCJvjKa-s4lWVSe2JnkajO22aOPWci2Bn488vcSx69XglPp8AS32QQA:1trlzK:0IxNVmAoD6-YBkE8C78VKVaEjgR7z_MHpA5R5qETBSM', '2025-03-24 22:52:46.778244'),
('pb4qknt4zzqpksgrac85aw0lra2xovps', '.eJxVjMsKwjAQRf8lawlp86Iu3fsNYTIzsVFJpGlBEf_dFrrQ7T3nnrcIsMxjWBpPIZM4CisOv1sEvHHZAF2hXKrEWuYpR7kpcqdNnivx_bS7f4ER2ri-k7O211qTwsE7BFLO-qi0B1bIkTAlQCJvjKa-s4lWVSe2JnkajO22aOPWci2Bn488vcSx69XglPp8AS32QQA:1tqf3x:WH3sXz6q630fWniOTaqkeDjWlBwcCUvxQwVujYBEWF0', '2025-03-21 21:16:57.167948'),
('zg5sk06dqzu1vwmexkx83v9j81h5pm92', '.eJxVjDsOwjAQBe_iGlle_2JT0nMGa9fr4ABypDipEHeHSCmgfTPzXiLhtta09bKkicVZBHH63Qjzo7Qd8B3bbZZ5busykdwVedAurzOX5-Vw_w4q9vqtLQYEHqxHp8CwG7NlZjADOdJG-Wgc2OjAew-ZjUKNmgrFADAaZbN4fwDRMjcn:1tr3IS:IMfDVJ6DAhFXBiAcsx1VdF9XpiBiYth_9BOAqZXYc4k', '2025-03-22 23:09:32.357835');

-- --------------------------------------------------------

--
-- Table structure for table `home_heroslider`
--

CREATE TABLE `home_heroslider` (
  `id` bigint(20) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_heroslider`
--

INSERT INTO `home_heroslider` (`id`, `image1`, `image2`, `image3`, `title`, `description`, `is_active`) VALUES
(1, 'slider_images/hero--bg2.jpg', 'slider_images/hero--bg3.jpg', 'slider_images/hero-bg5.jpg', 'الإقامة في الفندق ، ملاذ الحلم', 'ابحث عن المكان المثالي للإقامة\r\nلرحلتك القادمة', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_infobox`
--

CREATE TABLE `home_infobox` (
  `id` bigint(20) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `show_at_home` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_infobox`
--

INSERT INTO `home_infobox` (`id`, `icon`, `title`, `description`, `show_at_home`) VALUES
(1, 'las la-radiation', 'جو فريد', 'يختلف كل منها في كيفية قطرها', 1),
(2, 'la la-tree', 'بيئة', 'يختلف كل منها في كيفية قطرها', 1),
(3, 'las la-map-marked-alt', 'موقع عظيم', 'يختلف كل منها في كيفية قطرها', 1),
(4, 'las la-bed', 'هومي كومفورت', 'يختلف كل منها في كيفية قطرها', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_roomtypehome`
--

CREATE TABLE `home_roomtypehome` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_roomtypehome`
--

INSERT INTO `home_roomtypehome` (`id`, `name`, `image`, `link`, `show_at_home`) VALUES
(1, 'vip', 'room_types/wasell.jpg', 'http://127.0.0.1:8000/hotels', 1),
(2, 'normal', 'room_types/najim.jpg', 'http://127.0.0.1:8000/rooms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_setting`
--

CREATE TABLE `home_setting` (
  `id` bigint(20) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_currency` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `currency_icon` varchar(10) NOT NULL,
  `default_language` varchar(100) NOT NULL,
  `currency_Icon_position` int(11) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `footer_logo` varchar(100) DEFAULT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` longtext NOT NULL,
  `seo_keywords` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_setting`
--

INSERT INTO `home_setting` (`id`, `site_name`, `description`, `default_currency`, `color`, `currency_icon`, `default_language`, `currency_Icon_position`, `logo`, `favicon`, `footer_logo`, `seo_title`, `seo_description`, `seo_keywords`, `email`, `phone_number`, `address`) VALUES
(1, 'Trizen', 'gooooooooood hotel booking', 'USD', '#fd7e14', '$', 'Arabic', 0, 'home/components/setting/logo.png', 'home/components/setting/favicon.png', 'home/components/setting/logo2.png', 'hotel trizen', 'hotel trizenhotel trizen', 'hotel trizen', '513', '1313', '11');

-- --------------------------------------------------------

--
-- Table structure for table `home_socialmedialink`
--

CREATE TABLE `home_socialmedialink` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_socialmedialink`
--

INSERT INTO `home_socialmedialink` (`id`, `name`, `link`, `icon`, `status`) VALUES
(1, 'linked in', 'http://127.0.0.1:8000/sss', 'lab la-linkedin-in', 1),
(2, 'instagram', 'http://127.0.0.1:8000/sss', 'lab la-instagram', 1),
(3, 'twitter', 'http://127.0.0.1:8000/sssss', 'lab la-twitter', 1),
(4, 'facebook', 'http://127.0.0.1:8000/ssssss', 'lab la-facebook-f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_city`
--

CREATE TABLE `hotelmanagement_city` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelmanagement_city`
--

INSERT INTO `hotelmanagement_city` (`id`, `created_at`, `updated_at`, `deleted_at`, `state`, `slug`, `country`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:00:28.359582', '2025-03-01 19:00:28.359582', NULL, 'sanaa', 'sanaa', 'yemen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_hotel`
--

CREATE TABLE `hotelmanagement_hotel` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `business_license_number` varchar(50) DEFAULT NULL,
  `document_path` varchar(100) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `verification_date` datetime(6) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) NOT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelmanagement_hotel`
--

INSERT INTO `hotelmanagement_hotel` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `slug`, `profile_picture`, `description`, `business_license_number`, `document_path`, `is_verified`, `verification_date`, `created_by_id`, `location_id`, `manager_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:06:29.271764', '2025-03-07 22:21:49.143958', NULL, 'احمد', 'ahmed-vip', 'hotels/images/image_picker_input.dart.png', 'aggggggggggggggggggg', '1515453432132', 'hotel_documents/2025/03/01/image_picker_input.dart.png', 1, '2025-03-01 19:06:26.000000', 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_hotelrequest`
--

CREATE TABLE `hotelmanagement_hotelrequest` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `role` varchar(100) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `business_license_number` varchar(50) DEFAULT NULL,
  `document_path` varchar(100) DEFAULT NULL,
  `additional_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`additional_images`)),
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `approved_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `approved_by_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_image`
--

CREATE TABLE `hotelmanagement_image` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  `image_url` varchar(3000) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelmanagement_image`
--

INSERT INTO `hotelmanagement_image` (`id`, `created_at`, `updated_at`, `deleted_at`, `image_path`, `image_url`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:13:51.268336', '2025-03-01 19:13:51.268336', NULL, 'hotels/images/avatar.jpeg', NULL, 1, 1, 1),
(2, '2025-03-08 01:40:23.392850', '2025-03-08 01:40:23.392850', NULL, 'hotels/images/wasell.jpg', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_location`
--

CREATE TABLE `hotelmanagement_location` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelmanagement_location`
--

INSERT INTO `hotelmanagement_location` (`id`, `created_at`, `updated_at`, `deleted_at`, `address`, `city_id`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:00:56.470001', '2025-03-01 19:00:56.470001', NULL, 'shomaila', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_phone`
--

CREATE TABLE `hotelmanagement_phone` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `phone_number` varchar(10) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_notifications`
--

CREATE TABLE `notifications_notifications` (
  `id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `send_time` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `action_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications_notifications`
--

INSERT INTO `notifications_notifications` (`id`, `message`, `send_time`, `status`, `notification_type`, `is_active`, `sender_id`, `user_id`, `action_url`) VALUES
(1, 'hello mossa you have to say hello', '2025-03-07 20:38:27.510463', '1', '2', 1, 2, 5, NULL),
(2, 'ajskhdjkashk', '2025-03-07 20:53:46.588048', '1', '1', 1, 7, 5, '/hotels'),
(3, 'يرجى إضافة الضيوف لحجزك.', '2025-03-07 21:18:23.507138', '1', '1', 1, 5, 5, '/bookings/31/add-guest/'),
(4, 'يرجى إضافة الضيوف لحجزك.', '2025-03-07 21:28:12.838903', '1', '1', 1, 5, 5, '/payments/add_guest/1/'),
(5, 'يرجى إضافة الضيوف لحجزك.', '2025-03-08 23:15:08.032818', '1', '1', 1, 8, 8, '/payments/add_guest/1/'),
(6, 'يرجى إضافة الضيوف لحجزك.', '2025-03-10 00:51:46.660651', '0', '1', 1, 5, 5, '/payments/add_guest/1/'),
(7, 'يرجى إضافة الضيوف لحجزك.', '2025-03-10 13:11:59.882471', '0', '1', 1, 5, 5, '/payments/add_guest/1/'),
(8, 'يرجى إضافة الضيوف لحجزك.', '2025-03-10 22:54:03.351102', '1', '1', 1, 5, 5, '/payments/add_guest/1/');

-- --------------------------------------------------------

--
-- Table structure for table `payments_currency`
--

CREATE TABLE `payments_currency` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_symbol` varchar(10) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_currency`
--

INSERT INTO `payments_currency` (`id`, `created_at`, `updated_at`, `deleted_at`, `currency_name`, `currency_symbol`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:14:12.848277', '2025-03-01 19:14:12.848277', NULL, 'dollar', '$', 1, 1, 1),
(2, '2025-03-10 14:41:32.412347', '2025-03-10 14:41:32.412347', NULL, 'SAR', 'sa', 8, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `payments_hotelpaymentmethod`
--

CREATE TABLE `payments_hotelpaymentmethod` (
  `id` bigint(20) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `iban` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `payment_option_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_hotelpaymentmethod`
--

INSERT INTO `payments_hotelpaymentmethod` (`id`, `account_name`, `account_number`, `iban`, `description`, `is_active`, `hotel_id`, `payment_option_id`) VALUES
(1, 'ahmed mohamed ahmed', '111111111', '01111111', 'asdsa\r\nasdas\r\nasdsac\r\nczczx', 1, 1, 1),
(2, 'sami saleh', '0006565884', '00556516', 'asdasdsa', 1, 1, 2),
(3, 'ahmed alKuraimi', '53153135', '0031561615', 'dasd\r\n444asd\r\nsadas5das6d5', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payments_payment`
--

CREATE TABLE `payments_payment` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `payment_subtotal` decimal(10,2) NOT NULL,
  `payment_totalamount` decimal(10,2) NOT NULL,
  `payment_currency` varchar(10) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_note` longtext DEFAULT NULL,
  `payment_discount` decimal(10,2) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `transfer_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_payment`
--

INSERT INTO `payments_payment` (`id`, `created_at`, `updated_at`, `deleted_at`, `payment_status`, `payment_date`, `payment_subtotal`, `payment_totalamount`, `payment_currency`, `payment_type`, `payment_note`, `payment_discount`, `booking_id`, `created_by_id`, `payment_method_id`, `updated_by_id`, `transfer_image`) VALUES
(20, '2025-03-08 01:11:22.928924', '2025-03-08 01:11:22.928924', NULL, 0, '2025-03-08 01:11:22.926476', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: laksjdkljasl - رقم التحويل: 151516165', 0.00, 38, NULL, 2, NULL, 'payments/transfer/transfer_image/wasell_WlihdS8.jpg'),
(22, '2025-03-10 22:52:46.711690', '2025-03-10 22:52:46.711690', NULL, 0, '2025-03-10 22:52:46.703386', 360.00, 360.00, '$', 'e_pay', 'تم التحويل بواسطة: sjlasj - رقم التحويل: 16515615', 0.00, 44, NULL, 1, NULL, 'payments/transfer/transfer_image/wasell_dj6C8dN.jpg'),
(23, '2025-03-10 23:45:21.981578', '2025-03-10 23:45:21.981578', NULL, 0, '2025-03-10 23:45:21.980030', 0.00, 156.00, '$', 'e_pay', 'ssssss', 0.00, 43, NULL, 1, NULL, '/media/wasell_tH5ekhj.jpg'),
(24, '2025-03-10 23:46:31.772226', '2025-03-10 23:46:31.772226', NULL, 0, '2025-03-10 23:46:31.766272', 0.00, 156.00, '$', 'e_pay', 's,ajhdjkashdkasj', 0.00, 43, NULL, 1, NULL, '/media/wasell_LV6EbGc.jpg'),
(25, '2025-03-10 23:50:50.400911', '2025-03-10 23:50:50.400911', NULL, 0, '2025-03-10 23:50:50.400911', 0.00, 305.00, '$', 'cash', 'sadasdasda', 55.00, 44, NULL, 1, NULL, '/media/wasell_zFfmS5W.jpg'),
(26, '2025-03-11 00:14:54.771101', '2025-03-11 00:14:54.771101', NULL, 1, '2025-03-11 00:14:54.767844', 0.00, 156.00, '$', 'e_pay', 'alskkkkkkkkkkkk', 0.00, 43, NULL, 1, NULL, '/media/wasell_IYoXVki.jpg'),
(27, '2025-03-11 13:39:35.605350', '2025-03-11 13:39:35.605350', NULL, 0, '2025-03-11 13:39:35.596598', 30.00, 30.00, '$', 'e_pay', 'تم التحويل بواسطة: ajhdkja - رقم التحويل: 15615151', 0.00, 45, NULL, 1, NULL, 'payments/transfer/transfer_image/wasell_GfDsTxd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments_paymentoption`
--

CREATE TABLE `payments_paymentoption` (
  `id` bigint(20) NOT NULL,
  `method_name` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `currency_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_paymentoption`
--

INSERT INTO `payments_paymentoption` (`id`, `method_name`, `logo`, `is_active`, `currency_id`) VALUES
(1, 'al najim', 'payment_logos/najim.jpg', 1, 1),
(2, 'al akwa', 'payment_logos/akwa.jpg', 1, 1),
(3, 'kuraimi', 'payment_logos/alkuraimi.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_hotelreview`
--

CREATE TABLE `reviews_hotelreview` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `rating_service` smallint(5) UNSIGNED NOT NULL CHECK (`rating_service` >= 0),
  `rating_location` smallint(5) UNSIGNED NOT NULL CHECK (`rating_location` >= 0),
  `rating_value_for_money` smallint(5) UNSIGNED NOT NULL CHECK (`rating_value_for_money` >= 0),
  `rating_cleanliness` smallint(5) UNSIGNED NOT NULL CHECK (`rating_cleanliness` >= 0),
  `review` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews_hotelreview`
--

INSERT INTO `reviews_hotelreview` (`id`, `created_at`, `updated_at`, `deleted_at`, `rating_service`, `rating_location`, `rating_value_for_money`, `rating_cleanliness`, `review`, `status`, `created_by_id`, `hotel_id`, `updated_by_id`, `user_id`) VALUES
(1, '2025-03-08 21:30:52.514928', '2025-03-08 22:38:38.926913', NULL, 3, 4, 4, 4, 'aslkjdkasjdl', 1, NULL, 1, NULL, 5),
(6, '2025-03-11 23:30:32.817157', '2025-03-11 23:30:32.817157', NULL, 4, 4, 3, 4, 'sadjhasdhka', 1, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_offer`
--

CREATE TABLE `reviews_offer` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_roomreview`
--

CREATE TABLE `reviews_roomreview` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `rating` smallint(5) UNSIGNED NOT NULL CHECK (`rating` >= 0),
  `review` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews_roomreview`
--

INSERT INTO `reviews_roomreview` (`id`, `created_at`, `updated_at`, `deleted_at`, `rating`, `review`, `status`, `created_by_id`, `hotel_id`, `room_type_id`, `updated_by_id`, `user_id`) VALUES
(2, '2025-03-08 22:27:26.963643', '2025-03-08 22:38:29.309295', NULL, 3, 'askjdlkasjdlsak', 1, NULL, 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_availability`
--

CREATE TABLE `rooms_availability` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `availability_date` date NOT NULL,
  `available_rooms` int(10) UNSIGNED NOT NULL CHECK (`available_rooms` >= 0),
  `notes` longtext DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_status_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_availability`
--

INSERT INTO `rooms_availability` (`id`, `created_at`, `updated_at`, `deleted_at`, `availability_date`, `available_rooms`, `notes`, `created_by_id`, `hotel_id`, `room_status_id`, `room_type_id`, `updated_by_id`) VALUES
(10, '2025-03-10 00:51:46.649644', '2025-03-10 23:50:17.566236', NULL, '2025-03-10', 21, 'تم التحديث بسبب تمديد الحجز #52', NULL, 1, 3, 1, NULL),
(11, '2025-03-11 00:04:24.742393', '2025-03-11 13:39:35.591118', NULL, '2025-03-11', 20, 'Updated due to booking #45', NULL, 1, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_category`
--

CREATE TABLE `rooms_category` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_category`
--

INSERT INTO `rooms_category` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:18:19.935767', '2025-03-01 19:18:46.244395', NULL, 'vip', 'شسيسشيش', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_review`
--

CREATE TABLE `rooms_review` (
  `id` bigint(20) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomimage`
--

CREATE TABLE `rooms_roomimage` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `is_main` tinyint(1) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_roomimage`
--

INSERT INTO `rooms_roomimage` (`id`, `created_at`, `updated_at`, `deleted_at`, `image`, `is_main`, `caption`, `created_by_id`, `hotel_id`, `room_type_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:22:07.144698', '2025-03-01 19:22:07.144698', NULL, 'room_images/wasell.jpg', 1, 'sssssssss', 2, 1, 1, 2),
(2, '2025-03-01 19:22:24.536866', '2025-03-01 19:22:24.536866', NULL, 'room_images/search.jpg', 0, 'saa', 2, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomprice`
--

CREATE TABLE `rooms_roomprice` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_special_offer` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomstatus`
--

CREATE TABLE `rooms_roomstatus` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_roomstatus`
--

INSERT INTO `rooms_roomstatus` (`id`, `created_at`, `updated_at`, `deleted_at`, `code`, `name`, `description`, `is_available`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(3, '2025-03-01 19:21:28.992783', '2025-03-01 19:21:28.992783', NULL, 'AVAILABLE', 'Available', 'Default status for available rooms', 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomtype`
--

CREATE TABLE `rooms_roomtype` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `default_capacity` int(10) UNSIGNED NOT NULL CHECK (`default_capacity` >= 0),
  `max_capacity` int(10) UNSIGNED NOT NULL CHECK (`max_capacity` >= 0),
  `beds_count` int(10) UNSIGNED NOT NULL CHECK (`beds_count` >= 0),
  `rooms_count` int(10) UNSIGNED NOT NULL CHECK (`rooms_count` >= 0),
  `base_price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ;

--
-- Dumping data for table `rooms_roomtype`
--

INSERT INTO `rooms_roomtype` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `default_capacity`, `max_capacity`, `beds_count`, `rooms_count`, `base_price`, `is_active`, `category_id`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:21:28.984379', '2025-03-01 19:21:28.984379', NULL, 'room vip 2025', 'asdaskdjhsa', 15, 15, 15, 15, 15.00, 1, 1, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services_hotelservice`
--

CREATE TABLE `services_hotelservice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `hotel_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_roomtypeservice`
--

CREATE TABLE `services_roomtypeservice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `additional_fee` double NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_offers`
--

CREATE TABLE `service_offers` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `offer_name` varchar(100) NOT NULL,
  `offer_description` longtext NOT NULL,
  `offer_start_date` date NOT NULL,
  `offer_end_date` date NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `jti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_activitylog`
--

CREATE TABLE `users_activitylog` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `record_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `ip_address` char(39) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser`
--

CREATE TABLE `users_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `chield_id` bigint(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `date_joined`, `created_at`, `updated_at`, `user_type`, `phone`, `image`, `is_active`, `chield_id`, `birth_date`, `gender`) VALUES
(1, 'pbkdf2_sha256$600000$U0vBbjamlzvOok3a0NCd9H$yfdwiYcSW6sk7zcuIe57bjYlbTFT/FyTsy43NUeBioc=', '2025-03-11 20:49:35.797989', 1, 'a', '', '', 'a@a.com', 1, '2025-03-01 18:58:44.494009', '2025-03-01 18:58:45.387318', '2025-03-01 18:58:45.387318', '', '', '', 1, NULL, NULL, NULL),
(2, 'pbkdf2_sha256$600000$Pc3oxZPOdBxmUVe2eOAwit$bXxPnP1siQugYTDEr36L4fCYu5YaVTozzRxUUgVsv1g=', NULL, 1, 'b', '', '', 'b@b.com', 1, '2025-03-01 19:05:26.868670', '2025-03-01 19:05:28.022141', '2025-03-01 19:05:48.735234', 'hotel_manager', '', '', 1, NULL, NULL, NULL),
(3, 'pbkdf2_sha256$600000$HDDXD5Lhdd8rcHhLG8UYVl$Q8FJflDelq1YQWUDvzR/2zhtU7X8maa5nF3lcjo0XlA=', '2025-03-01 22:40:14.016174', 0, 'motasem', '', '', 'motasem@motasem.com', 0, '2025-03-01 22:21:39.232835', '2025-03-01 22:21:41.258606', '2025-03-01 22:21:41.258606', 'user', '', '', 1, NULL, NULL, NULL),
(4, 'pbkdf2_sha256$600000$69WafNQFxgQDN0ybf7EQYW$qearY4fO/keI64yiOKwtTlw4JsxM0IK+xRJFrCut2lo=', '2025-03-04 19:13:37.238210', 0, 'kakaka', '', '', 'kakaka@kakaka.kakaka', 0, '2025-03-04 19:06:56.842290', '2025-03-04 19:06:58.774589', '2025-03-04 19:06:58.774589', 'user', '', '', 1, NULL, NULL, NULL),
(5, 'pbkdf2_sha256$600000$wp2FpScP9Phmy67xyNNudv$l8vyvhwQ4ldfSqQMUJueUTXRfzu479WTOV8Nx7qEoNQ=', '2025-03-10 22:52:18.818211', 0, 'mosaa', 'mosa', 'mohamed', 'mosaa@mosaa.com', 0, '2025-03-05 20:10:14.486479', '2025-03-05 20:10:16.220927', '2025-03-11 23:11:54.749987', 'customer', '', 'users/2025/03/12/img27.jpg', 1, NULL, NULL, NULL),
(6, 'pbkdf2_sha256$600000$BbNnejHpZOfDP6VnObjVcz$nhsPttz7Xm4OTIK/zOWG0MrrT6q9PAv0jTWQyIffer0=', '2025-03-05 20:13:43.403102', 0, 'mosaa1', '', '', 'mosaa1@mosaa1.com', 0, '2025-03-05 20:13:41.381311', '2025-03-05 20:13:43.386627', '2025-03-05 20:13:43.386627', 'customer', '', '', 1, NULL, NULL, NULL),
(7, 'pbkdf2_sha256$600000$vUeJuKMqNFAu6egbZVxQ85$uQPUm3C2c/AmXPOaKjFVNqCkRpV44XZB+IcyyRoeX9I=', '2025-03-06 08:09:12.614518', 0, 'asdjsk', '', '', 'asdjsk@asdjsk.com', 0, '2025-03-06 08:09:10.785662', '2025-03-06 08:09:12.595928', '2025-03-06 08:09:12.595928', 'customer', '', '', 1, NULL, NULL, NULL),
(8, 'pbkdf2_sha256$600000$SFyrTCxLhv3sQ1aeRp9210$x4uW6U+Le+bTAvJQf+0aMsQ2WQnBb6/rMu43cIS53vk=', '2025-03-08 23:09:07.660012', 0, 'alslslsl', '', '', 'alslslsl@alslslsl.com', 0, '2025-03-08 23:09:05.884851', '2025-03-08 23:09:07.648169', '2025-03-08 23:09:07.648169', 'customer', '', '', 1, NULL, NULL, NULL),
(9, 'pbkdf2_sha256$600000$YyHz1TprqrLxB9Zn86sIJu$VtH3gk7SGQu97sevo51XO3ovW0MjMaVmvTMX/jtAI54=', '2025-03-11 13:39:22.061710', 0, 'ahmed1555', 'ahmed', 'mohamed', 'ahmed1555@gmail.com', 0, '2025-03-11 13:05:30.020217', '2025-03-11 13:05:30.536114', '2025-03-11 13:05:30.536114', 'customer', '781717609', 'users/2025/03/11/topdoctors.jpg', 1, NULL, NULL, NULL),
(10, 'pbkdf2_sha256$600000$JInLxld88le5EonOREI0JQ$FvAY9r/CHudvTsSBOxEfZob1jwsvvzgpRAWPsDM6szE=', '2025-03-11 13:24:43.650477', 0, 'sakjds888', 'askja', 'kksskks', 'sakjds888@cc.com', 0, '2025-03-11 13:24:32.822351', '2025-03-11 13:24:33.340511', '2025-03-11 13:24:33.340511', 'customer', '123123132132', 'users/2025/03/11/topdoctors_qb7Dipr.jpg', 1, NULL, NULL, NULL),
(11, 'pbkdf2_sha256$600000$RQcyfOrNwaARSe90TzIKBU$90MYq5xmhjWGc+keDWcELY1dkohhCW05pO8C2RgP+xA=', '2025-03-11 14:11:34.650871', 0, 'asjldhask15', 'ajshdkajs', 'aksljdlas', 'asjldhask15@asd.co', 0, '2025-03-11 14:11:32.868092', '2025-03-11 14:11:34.630556', '2025-03-11 14:11:34.630556', 'customer', '21215151515', 'users/2025/03/11/topdoctors_5NSVJtE.jpg', 1, NULL, '2025-03-09', 'Female'),
(12, 'pbkdf2_sha256$600000$cyoobnnbnn1veqfofkr18v$Q3A3UVNX8rMFNQOeuwLDAxNV9v68C9+85WPeG58gGsQ=', '2025-03-11 15:03:22.973314', 0, 'ammaralwan', 'ammar', 'alwan', 'ammaralwan@ss.com', 0, '2025-03-11 15:03:07.343237', '2025-03-11 15:03:09.211771', '2025-03-11 15:03:09.211771', 'customer', '781717177', 'users/2025/03/11/terms.jpg', 1, NULL, '1996-04-18', 'Female'),
(13, 'pbkdf2_sha256$600000$FqqK1ybDPJVmeLbEpH5xM5$XxlG67Ut3xXs/TN8aC0TcX2qZMHyLlyXteu8KboTH60=', '2025-03-11 15:07:08.449784', 0, 'asdjhasj', 'asjdhjkash', 'asdas', 'sajh@asd.cc', 0, '2025-03-11 15:07:06.624072', '2025-03-11 15:07:08.427732', '2025-03-11 15:07:08.427732', 'customer', '88186541312', 'users/2025/03/11/terms_iJzbCqG.jpg', 1, NULL, '2003-03-13', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_groups`
--

CREATE TABLE `users_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_user_permissions`
--

CREATE TABLE `users_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_author_id_4f11e2e0_fk_users_customuser_id` (`author_id`),
  ADD KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_users_customuser_id` (`author_id`),
  ADD KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_tags_post_id_tag_id_4925ec37_uniq` (`post_id`,`tag_id`),
  ADD KEY `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` (`tag_id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_booking_created_by_id_d8a2f432_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `bookings_booking_hotel_id_e1f8132f_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `bookings_booking_room_id_6f0fa517_fk_rooms_roomtype_id` (`room_id`),
  ADD KEY `bookings_booking_updated_by_id_6c0bc7d4_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `bookings_booking_user_id_834dfc23_fk_users_customuser_id` (`user_id`),
  ADD KEY `bookings_booking_parent_booking_id_7c358175_fk_bookings_` (`parent_booking_id`);

--
-- Indexes for table `bookings_bookingdetail`
--
ALTER TABLE `bookings_bookingdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_bookingdeta_booking_id_12740561_fk_bookings_` (`booking_id`),
  ADD KEY `bookings_bookingdeta_created_by_id_a437326b_fk_users_cus` (`created_by_id`),
  ADD KEY `bookings_bookingdeta_hotel_id_1dc4dae4_fk_HotelMana` (`hotel_id`),
  ADD KEY `bookings_bookingdeta_service_id_8dc9681c_fk_services_` (`service_id`),
  ADD KEY `bookings_bookingdeta_updated_by_id_263cc972_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `bookings_extensionmovement`
--
ALTER TABLE `bookings_extensionmovement`
  ADD PRIMARY KEY (`movement_number`),
  ADD KEY `bookings_extensionmo_booking_id_dd6b5f8f_fk_bookings_` (`booking_id`),
  ADD KEY `bookings_extensionmo_payment_receipt_id_009ef854_fk_payments_` (`payment_receipt_id`);

--
-- Indexes for table `bookings_guest`
--
ALTER TABLE `bookings_guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_guest_booking_id_b8c4c07b_fk_bookings_booking_id` (`booking_id`),
  ADD KEY `bookings_guest_hotel_id_333c72e5` (`hotel_id`);

--
-- Indexes for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_hotel` (`user_id`,`hotel_id`),
  ADD KEY `customer_favourites_hotel_id_8c26062f_fk_HotelMana` (`hotel_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  ADD KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  ADD KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  ADD KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`);

--
-- Indexes for table `django_celery_beat_periodictasks`
--
ALTER TABLE `django_celery_beat_periodictasks`
  ADD PRIMARY KEY (`ident`);

--
-- Indexes for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_heroslider`
--
ALTER TABLE `home_heroslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_infobox`
--
ALTER TABLE `home_infobox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_roomtypehome`
--
ALTER TABLE `home_roomtypehome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_setting`
--
ALTER TABLE `home_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `home_socialmedialink`
--
ALTER TABLE `home_socialmedialink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelmanagement_city`
--
ALTER TABLE `hotelmanagement_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `HotelManagement_city_created_by_id_567287e5_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_city_updated_by_id_5eeb09c7_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `hotelmanagement_hotel`
--
ALTER TABLE `hotelmanagement_hotel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `manager_id` (`manager_id`),
  ADD KEY `HotelManagement_hote_created_by_id_58e7b497_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_hote_location_id_2f7c61ed_fk_HotelMana` (`location_id`),
  ADD KEY `HotelManagement_hote_updated_by_id_9c63fc69_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `hotelmanagement_hotelrequest`
--
ALTER TABLE `hotelmanagement_hotelrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HotelManagement_hote_approved_by_id_337f6c49_fk_users_cus` (`approved_by_id`),
  ADD KEY `HotelManagement_hote_created_by_id_f618f76f_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_hote_updated_by_id_eceb12d5_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `hotelmanagement_image`
--
ALTER TABLE `hotelmanagement_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HotelManagement_imag_created_by_id_779bde56_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_imag_hotel_id_e97ababf_fk_HotelMana` (`hotel_id`),
  ADD KEY `HotelManagement_imag_updated_by_id_b3d7d0db_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `hotelmanagement_location`
--
ALTER TABLE `hotelmanagement_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HotelManagement_loca_city_id_ae155d2c_fk_HotelMana` (`city_id`),
  ADD KEY `HotelManagement_loca_created_by_id_10ae04e2_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_loca_updated_by_id_26f3a4d4_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `hotelmanagement_phone`
--
ALTER TABLE `hotelmanagement_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HotelManagement_phon_created_by_id_34b06bb1_fk_users_cus` (`created_by_id`),
  ADD KEY `HotelManagement_phon_hotel_id_67f340f6_fk_HotelMana` (`hotel_id`),
  ADD KEY `HotelManagement_phon_updated_by_id_114868f0_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `notifications_notifications`
--
ALTER TABLE `notifications_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifi_sender_id_c6ee4409_fk_users_cus` (`sender_id`),
  ADD KEY `notifications_notifi_user_id_429b0a5e_fk_users_cus` (`user_id`);

--
-- Indexes for table `payments_currency`
--
ALTER TABLE `payments_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_currency_created_by_id_69658f49_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `payments_currency_hotel_id_51cc1abb_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `payments_currency_updated_by_id_d0a4bce8_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `payments_hotelpaymentmethod`
--
ALTER TABLE `payments_hotelpaymentmethod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_hotelpaymentmet_hotel_id_payment_option__4cc203b8_uniq` (`hotel_id`,`payment_option_id`),
  ADD KEY `payments_hotelpaymen_payment_option_id_4b539d55_fk_payments_` (`payment_option_id`);

--
-- Indexes for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` (`booking_id`),
  ADD KEY `payments_payment_created_by_id_28f0e284_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `payments_payment_payment_method_id_c909ff25_fk_payments_` (`payment_method_id`),
  ADD KEY `payments_payment_updated_by_id_379a95eb_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_paymentopti_currency_id_9986031a_fk_payments_` (`currency_id`);

--
-- Indexes for table `reviews_hotelreview`
--
ALTER TABLE `reviews_hotelreview`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hotel_user_review` (`hotel_id`,`user_id`),
  ADD KEY `reviews_hotelreview_created_by_id_fbc20ee8_fk_users_cus` (`created_by_id`),
  ADD KEY `reviews_hotelreview_updated_by_id_2fbc72a0_fk_users_cus` (`updated_by_id`),
  ADD KEY `reviews_hotelreview_user_id_b1101c52_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `reviews_offer`
--
ALTER TABLE `reviews_offer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_offer_created_by_id_6d3a14d1_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `reviews_offer_hotel_id_631603f9_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `reviews_offer_updated_by_id_696a12c5_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `reviews_roomreview`
--
ALTER TABLE `reviews_roomreview`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_room_user_review` (`hotel_id`,`room_type_id`,`user_id`),
  ADD KEY `reviews_roomreview_created_by_id_5e598a2a_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `reviews_roomreview_room_type_id_b2e4f814_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `reviews_roomreview_updated_by_id_a7d246e6_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `reviews_roomreview_user_id_bd90336f_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `rooms_availability`
--
ALTER TABLE `rooms_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_availability_created_by_id_168a5943_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_availability_room_status_id_1add85a0_fk_rooms_roo` (`room_status_id`),
  ADD KEY `rooms_availability_room_type_id_ee87e18f_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `rooms_availability_updated_by_id_f8d6a9d2_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `rooms_availability_hotel_id_e9028aaa` (`hotel_id`);

--
-- Indexes for table `rooms_category`
--
ALTER TABLE `rooms_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hotel_category` (`hotel_id`,`name`),
  ADD KEY `rooms_category_created_by_id_c539b61c_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_category_updated_by_id_85bbbd5a_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `rooms_review`
--
ALTER TABLE `rooms_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_review_created_by_id_2fc27bf2_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_review_hotel_id_b80c4945_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_review_room_type_id_3efa460c_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `rooms_review_updated_by_id_276c8602_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `rooms_review_user_id_7ce3bdba_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `rooms_roomimage`
--
ALTER TABLE `rooms_roomimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_roomimage_created_by_id_168789df_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_roomimage_hotel_id_13fbdfad_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_roomimage_room_type_id_d35f7810_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `rooms_roomimage_updated_by_id_c3e3a6e5_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `rooms_roomprice`
--
ALTER TABLE `rooms_roomprice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_roomprice_created_by_id_7459c49f_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_roomprice_hotel_id_bfc064b3_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_roomprice_room_type_id_b8f396b9_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `rooms_roomprice_updated_by_id_20da56f3_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `rooms_roomstatus`
--
ALTER TABLE `rooms_roomstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hotel_status_code` (`hotel_id`,`code`),
  ADD KEY `rooms_roomstatus_created_by_id_50bd38ee_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_roomstatus_updated_by_id_8cedb596_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_roomtype_category_id_3203b18b_fk_rooms_category_id` (`category_id`),
  ADD KEY `rooms_roomtype_created_by_id_42c3bbaa_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_roomtype_hotel_id_25b4be35_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_roomtype_updated_by_id_b5be2b42_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `services_hotelservice`
--
ALTER TABLE `services_hotelservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_hotelservic_hotel_id_c67387c9_fk_HotelMana` (`hotel_id`);

--
-- Indexes for table `services_roomtypeservice`
--
ALTER TABLE `services_roomtypeservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_roomtypeser_hotel_id_163e32a7_fk_HotelMana` (`hotel_id`),
  ADD KEY `services_roomtypeser_room_type_id_f15253ec_fk_rooms_roo` (`room_type_id`);

--
-- Indexes for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_offers_created_by_id_8ca73e25_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `service_offers_hotel_id_d29c1d1e_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `service_offers_updated_by_id_42cd54e5_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_users_cus` (`user_id`);

--
-- Indexes for table `users_activitylog`
--
ALTER TABLE `users_activitylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activ_user_id_e43008_idx` (`user_id`,`created_at`),
  ADD KEY `users_activ_table_n_d89c14_idx` (`table_name`,`record_id`);

--
-- Indexes for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_customuser_chield_id_8f3dc45a_fk_users_customuser_id` (`chield_id`);

--
-- Indexes for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_groups_customuser_id_group_id_76b619e3_uniq` (`customuser_id`,`group_id`),
  ADD KEY `users_customuser_groups_group_id_01390b14_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `bookings_bookingdetail`
--
ALTER TABLE `bookings_bookingdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_extensionmovement`
--
ALTER TABLE `bookings_extensionmovement`
  MODIFY `movement_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `bookings_guest`
--
ALTER TABLE `bookings_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `home_heroslider`
--
ALTER TABLE `home_heroslider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_infobox`
--
ALTER TABLE `home_infobox`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_roomtypehome`
--
ALTER TABLE `home_roomtypehome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_setting`
--
ALTER TABLE `home_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_socialmedialink`
--
ALTER TABLE `home_socialmedialink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotelmanagement_city`
--
ALTER TABLE `hotelmanagement_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelmanagement_hotel`
--
ALTER TABLE `hotelmanagement_hotel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelmanagement_hotelrequest`
--
ALTER TABLE `hotelmanagement_hotelrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotelmanagement_image`
--
ALTER TABLE `hotelmanagement_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotelmanagement_location`
--
ALTER TABLE `hotelmanagement_location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelmanagement_phone`
--
ALTER TABLE `hotelmanagement_phone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_notifications`
--
ALTER TABLE `notifications_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments_currency`
--
ALTER TABLE `payments_currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments_hotelpaymentmethod`
--
ALTER TABLE `payments_hotelpaymentmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments_payment`
--
ALTER TABLE `payments_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews_hotelreview`
--
ALTER TABLE `reviews_hotelreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews_offer`
--
ALTER TABLE `reviews_offer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_roomreview`
--
ALTER TABLE `reviews_roomreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms_availability`
--
ALTER TABLE `rooms_availability`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms_category`
--
ALTER TABLE `rooms_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms_review`
--
ALTER TABLE `rooms_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms_roomimage`
--
ALTER TABLE `rooms_roomimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms_roomprice`
--
ALTER TABLE `rooms_roomprice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms_roomstatus`
--
ALTER TABLE `rooms_roomstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_hotelservice`
--
ALTER TABLE `services_hotelservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_roomtypeservice`
--
ALTER TABLE `services_roomtypeservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_offers`
--
ALTER TABLE `service_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_activitylog`
--
ALTER TABLE `users_activitylog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_author_id_4f11e2e0_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);

--
-- Constraints for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD CONSTRAINT `blog_post_tags_post_id_a1c71c8a_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`);

--
-- Constraints for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD CONSTRAINT `bookings_booking_created_by_id_d8a2f432_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_booking_hotel_id_e1f8132f_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `bookings_booking_parent_booking_id_7c358175_fk_bookings_` FOREIGN KEY (`parent_booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_booking_room_id_6f0fa517_fk_rooms_roomtype_id` FOREIGN KEY (`room_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `bookings_booking_updated_by_id_6c0bc7d4_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_booking_user_id_834dfc23_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `bookings_bookingdetail`
--
ALTER TABLE `bookings_bookingdetail`
  ADD CONSTRAINT `bookings_bookingdeta_booking_id_12740561_fk_bookings_` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_bookingdeta_created_by_id_a437326b_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_bookingdeta_hotel_id_1dc4dae4_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `bookings_bookingdeta_service_id_8dc9681c_fk_services_` FOREIGN KEY (`service_id`) REFERENCES `services_roomtypeservice` (`id`),
  ADD CONSTRAINT `bookings_bookingdeta_updated_by_id_263cc972_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `bookings_extensionmovement`
--
ALTER TABLE `bookings_extensionmovement`
  ADD CONSTRAINT `bookings_extensionmo_booking_id_dd6b5f8f_fk_bookings_` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_extensionmo_payment_receipt_id_009ef854_fk_payments_` FOREIGN KEY (`payment_receipt_id`) REFERENCES `payments_payment` (`id`);

--
-- Constraints for table `bookings_guest`
--
ALTER TABLE `bookings_guest`
  ADD CONSTRAINT `bookings_guest_booking_id_b8c4c07b_fk_bookings_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_guest_hotel_id_333c72e5_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`);

--
-- Constraints for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD CONSTRAINT `customer_favourites_hotel_id_8c26062f_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `customer_favourites_user_id_b1b2dc31_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  ADD CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  ADD CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`);

--
-- Constraints for table `hotelmanagement_city`
--
ALTER TABLE `hotelmanagement_city`
  ADD CONSTRAINT `HotelManagement_city_created_by_id_567287e5_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_city_updated_by_id_5eeb09c7_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `hotelmanagement_hotel`
--
ALTER TABLE `hotelmanagement_hotel`
  ADD CONSTRAINT `HotelManagement_hote_created_by_id_58e7b497_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_hote_location_id_2f7c61ed_fk_HotelMana` FOREIGN KEY (`location_id`) REFERENCES `hotelmanagement_location` (`id`),
  ADD CONSTRAINT `HotelManagement_hote_updated_by_id_9c63fc69_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_hotel_manager_id_1bbe4f12_fk_users_customuser_id` FOREIGN KEY (`manager_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `hotelmanagement_hotelrequest`
--
ALTER TABLE `hotelmanagement_hotelrequest`
  ADD CONSTRAINT `HotelManagement_hote_approved_by_id_337f6c49_fk_users_cus` FOREIGN KEY (`approved_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_hote_created_by_id_f618f76f_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_hote_updated_by_id_eceb12d5_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `hotelmanagement_image`
--
ALTER TABLE `hotelmanagement_image`
  ADD CONSTRAINT `HotelManagement_imag_created_by_id_779bde56_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_imag_hotel_id_e97ababf_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `HotelManagement_imag_updated_by_id_b3d7d0db_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `hotelmanagement_location`
--
ALTER TABLE `hotelmanagement_location`
  ADD CONSTRAINT `HotelManagement_loca_city_id_ae155d2c_fk_HotelMana` FOREIGN KEY (`city_id`) REFERENCES `hotelmanagement_city` (`id`),
  ADD CONSTRAINT `HotelManagement_loca_created_by_id_10ae04e2_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_loca_updated_by_id_26f3a4d4_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `hotelmanagement_phone`
--
ALTER TABLE `hotelmanagement_phone`
  ADD CONSTRAINT `HotelManagement_phon_created_by_id_34b06bb1_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `HotelManagement_phon_hotel_id_67f340f6_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `HotelManagement_phon_updated_by_id_114868f0_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `notifications_notifications`
--
ALTER TABLE `notifications_notifications`
  ADD CONSTRAINT `notifications_notifi_sender_id_c6ee4409_fk_users_cus` FOREIGN KEY (`sender_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `notifications_notifi_user_id_429b0a5e_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_currency`
--
ALTER TABLE `payments_currency`
  ADD CONSTRAINT `payments_currency_created_by_id_69658f49_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_currency_hotel_id_51cc1abb_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `payments_currency_updated_by_id_d0a4bce8_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_hotelpaymentmethod`
--
ALTER TABLE `payments_hotelpaymentmethod`
  ADD CONSTRAINT `payments_hotelpaymen_hotel_id_ce0a1829_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `payments_hotelpaymen_payment_option_id_4b539d55_fk_payments_` FOREIGN KEY (`payment_option_id`) REFERENCES `payments_paymentoption` (`id`);

--
-- Constraints for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD CONSTRAINT `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `payments_payment_created_by_id_28f0e284_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_payment_payment_method_id_c909ff25_fk_payments_` FOREIGN KEY (`payment_method_id`) REFERENCES `payments_hotelpaymentmethod` (`id`),
  ADD CONSTRAINT `payments_payment_updated_by_id_379a95eb_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  ADD CONSTRAINT `payments_paymentopti_currency_id_9986031a_fk_payments_` FOREIGN KEY (`currency_id`) REFERENCES `payments_currency` (`id`);

--
-- Constraints for table `reviews_hotelreview`
--
ALTER TABLE `reviews_hotelreview`
  ADD CONSTRAINT `reviews_hotelreview_created_by_id_fbc20ee8_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_hotel_id_6819d0d9_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_updated_by_id_2fbc72a0_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_user_id_b1101c52_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `reviews_offer`
--
ALTER TABLE `reviews_offer`
  ADD CONSTRAINT `reviews_offer_created_by_id_6d3a14d1_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_offer_hotel_id_631603f9_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `reviews_offer_updated_by_id_696a12c5_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `reviews_roomreview`
--
ALTER TABLE `reviews_roomreview`
  ADD CONSTRAINT `reviews_roomreview_created_by_id_5e598a2a_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_roomreview_hotel_id_5aff88ca_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `reviews_roomreview_room_type_id_b2e4f814_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `reviews_roomreview_updated_by_id_a7d246e6_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_roomreview_user_id_bd90336f_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_availability`
--
ALTER TABLE `rooms_availability`
  ADD CONSTRAINT `rooms_availability_created_by_id_168a5943_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_availability_hotel_id_e9028aaa_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_availability_room_status_id_1add85a0_fk_rooms_roo` FOREIGN KEY (`room_status_id`) REFERENCES `rooms_roomstatus` (`id`),
  ADD CONSTRAINT `rooms_availability_room_type_id_ee87e18f_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `rooms_availability_updated_by_id_f8d6a9d2_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_category`
--
ALTER TABLE `rooms_category`
  ADD CONSTRAINT `rooms_category_created_by_id_c539b61c_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_category_hotel_id_606560bc_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_category_updated_by_id_85bbbd5a_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_review`
--
ALTER TABLE `rooms_review`
  ADD CONSTRAINT `rooms_review_created_by_id_2fc27bf2_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_review_hotel_id_b80c4945_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_review_room_type_id_3efa460c_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `rooms_review_updated_by_id_276c8602_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_review_user_id_7ce3bdba_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_roomimage`
--
ALTER TABLE `rooms_roomimage`
  ADD CONSTRAINT `rooms_roomimage_created_by_id_168789df_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_roomimage_hotel_id_13fbdfad_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_roomimage_room_type_id_d35f7810_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `rooms_roomimage_updated_by_id_c3e3a6e5_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_roomprice`
--
ALTER TABLE `rooms_roomprice`
  ADD CONSTRAINT `rooms_roomprice_created_by_id_7459c49f_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_roomprice_hotel_id_bfc064b3_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_roomprice_room_type_id_b8f396b9_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `rooms_roomprice_updated_by_id_20da56f3_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_roomstatus`
--
ALTER TABLE `rooms_roomstatus`
  ADD CONSTRAINT `rooms_roomstatus_created_by_id_50bd38ee_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_roomstatus_hotel_id_121c26cc_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_roomstatus_updated_by_id_8cedb596_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  ADD CONSTRAINT `rooms_roomtype_category_id_3203b18b_fk_rooms_category_id` FOREIGN KEY (`category_id`) REFERENCES `rooms_category` (`id`),
  ADD CONSTRAINT `rooms_roomtype_created_by_id_42c3bbaa_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_roomtype_hotel_id_25b4be35_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_roomtype_updated_by_id_b5be2b42_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `services_hotelservice`
--
ALTER TABLE `services_hotelservice`
  ADD CONSTRAINT `services_hotelservic_hotel_id_c67387c9_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`);

--
-- Constraints for table `services_roomtypeservice`
--
ALTER TABLE `services_roomtypeservice`
  ADD CONSTRAINT `services_roomtypeser_hotel_id_163e32a7_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `services_roomtypeser_room_type_id_f15253ec_fk_rooms_roo` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`);

--
-- Constraints for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD CONSTRAINT `service_offers_created_by_id_8ca73e25_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `service_offers_hotel_id_d29c1d1e_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `service_offers_updated_by_id_42cd54e5_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Constraints for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `users_activitylog`
--
ALTER TABLE `users_activitylog`
  ADD CONSTRAINT `users_activitylog_user_id_4eb4b36f_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD CONSTRAINT `users_customuser_chield_id_8f3dc45a_fk_users_customuser_id` FOREIGN KEY (`chield_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD CONSTRAINT `users_customuser_gro_customuser_id_958147bf_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_groups_group_id_01390b14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD CONSTRAINT `users_customuser_use_customuser_id_5771478b_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
