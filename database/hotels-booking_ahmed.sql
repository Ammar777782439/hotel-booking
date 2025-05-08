-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 08:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `accounts_chartofaccounts`
--

CREATE TABLE `accounts_chartofaccounts` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `account_number` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `account_balance` decimal(10,2) NOT NULL,
  `account_description` longtext NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  `account_amount` decimal(10,2) DEFAULT NULL,
  `account_parent_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_chartofaccounts`
--

INSERT INTO `accounts_chartofaccounts` (`id`, `created_at`, `updated_at`, `deleted_at`, `account_number`, `account_name`, `account_type`, `account_balance`, `account_description`, `account_status`, `account_amount`, `account_parent_id`, `created_by_id`, `updated_by_id`) VALUES
(1, NULL, NULL, NULL, '1000', 'الأصول', 'Assets', 0.00, 'جميع الأصول التي تملكها الشركة', 1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, '2000', 'الخصوم', 'Liabilities', 0.00, 'الخصوم', 1, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, '3000', 'حقوق الملكية', 'Equity', 0.00, 'تمثل حقوق الملاك أو حقوق المساهمين في الشركة', 1, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, '4000', 'الإيرادات', 'Revenue', 0.00, 'تمثل الدخل الناتج عن عمليات البيع وتقديم الخدمات', 1, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, '5000', 'المصاريف', 'Expenses', 0.00, 'تمثل جميع النفقات التشغيلية وغير التشغيلية للشركة', 1, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, '1100', 'الأصول المتداولة', 'Assets', 0.00, 'الأصول التي يتم تحويلها إلى نقد خلال عام', 1, NULL, 1, NULL, NULL),
(8, NULL, NULL, NULL, '1200', 'الأصول الثابتة', 'Assets', 0.00, 'الأصول التي تملكها الشركة على المدى الطويل', 1, NULL, 1, NULL, NULL),
(9, NULL, '2025-04-14 08:46:20.498937', NULL, '1101', 'النقد وما يعادله', 'Assets', 0.00, 'النقدية وما يعادلها من أصول سائلة', 1, 0.00, 7, NULL, NULL),
(10, NULL, NULL, NULL, '1102', 'النقدية في الصندوق', 'Assets', 0.00, 'النقدية المتوفرة في صندوق الشركة', 0, NULL, 7, NULL, NULL),
(11, NULL, '2025-04-15 11:35:57.478644', NULL, '1103', 'البنوك والتحويلات- الحساب الجاري', 'Assets', 0.00, 'الحساب الجاري في البنك الأهلي', 1, 0.00, 7, NULL, NULL),
(12, NULL, NULL, NULL, '1104', 'المدينون والعملاء', 'Assets', 0.00, 'ذمم العملاء والمدينون', 0, NULL, 7, NULL, NULL),
(13, NULL, NULL, NULL, '1105', 'عملاء محليون', 'Assets', 0.00, 'ذمم العملاء المحليين', 0, NULL, 7, NULL, NULL),
(14, NULL, NULL, NULL, '1106', 'عملاء دوليون', 'Assets', 0.00, 'ذمم العملاء الدوليين', 0, NULL, 7, NULL, NULL),
(15, NULL, NULL, NULL, '1107', 'المخزون', 'Assets', 0.00, 'مخزون المواد والبضائع', 0, NULL, 7, NULL, NULL),
(16, NULL, NULL, NULL, '1108', 'مخزون المواد الخام', 'Assets', 0.00, 'مواد خام غير مصنعة', 0, NULL, 7, NULL, NULL),
(17, NULL, NULL, NULL, '1109', 'مخزون البضاعة التامة', 'Assets', 0.00, 'بضاعة جاهزة للبيع', 0, NULL, 7, NULL, NULL),
(18, NULL, NULL, NULL, '1110', 'المباني والآلات', 'Assets', 0.00, 'المباني والآلات والمعدات', 0, NULL, 7, NULL, NULL),
(19, NULL, NULL, NULL, '1111', 'الأراضي', 'Assets', 0.00, 'أراضي مملوكة للشركة', 0, NULL, 7, NULL, NULL),
(20, NULL, NULL, NULL, '1112', 'المباني', 'Assets', 0.00, 'مباني مملوكة للشركة', 0, NULL, 7, NULL, NULL),
(21, NULL, NULL, NULL, '1120', 'المركبات', 'Assets', 0.00, 'مركبات الشركة', 0, NULL, 7, NULL, NULL),
(22, NULL, NULL, NULL, '1130', 'مجمع الإهلاك', 'Assets', 0.00, 'مجمع إهلاك الأصول الثابتة', 0, NULL, 7, NULL, NULL),
(23, NULL, '2025-04-14 08:44:57.973301', NULL, '1201', 'الأصول غير الملموسة', 'Assets', 0.00, 'براءات الاختراع والعلامات التجارية', 1, 0.00, 8, NULL, NULL),
(24, NULL, '2025-04-14 08:45:15.145294', NULL, '1202', 'استثمارات طويلة الأجل', 'Assets', 0.00, 'استثمارات لأكثر من سنة', 1, 0.00, 8, NULL, NULL),
(25, NULL, NULL, NULL, '2100', 'الخصوم المتداولة', 'Liabilities', 0.00, 'الخصوم المتداولة قصيرة الأجل', 0, NULL, 2, NULL, NULL),
(26, NULL, NULL, NULL, '2200', 'الخصوم غير المتداولة', 'Liabilities', 0.00, 'الخصوم طويلة الأجل', 0, NULL, 2, NULL, NULL),
(27, NULL, NULL, NULL, '2101', 'الحسابات الدائنة', 'Liabilities', 0.00, 'المبالغ المستحقة على الشركة للموردين', 0, NULL, 25, NULL, NULL),
(28, NULL, NULL, NULL, '2102', 'القروض قصيرة الأجل', 'Liabilities', 0.00, 'القروض التي يجب سدادها خلال عام', 0, NULL, 25, NULL, NULL),
(29, NULL, NULL, NULL, '2103', 'المصروفات المستحقة', 'Liabilities', 0.00, 'المصروفات التي تم تكبدها ولم تسدد بعد', 0, NULL, 25, NULL, NULL),
(30, NULL, NULL, NULL, '2201', 'القروض طويلة الأجل', 'Liabilities', 0.00, 'القروض التي يجب سدادها بعد أكثر من عام', 0, NULL, 26, NULL, NULL),
(31, NULL, NULL, NULL, '2202', 'الذمم المدينة طويلة الأجل', 'Liabilities', 0.00, 'المبالغ المستحقة على الشركة التي سيتم تسديدها بعد أكثر من عام', 0, NULL, 26, NULL, NULL),
(32, NULL, NULL, NULL, '2203', 'الالتزامات الضريبية طويلة الأجل', 'Liabilities', 0.00, 'الضرائب المستحقة التي سيتم دفعها بعد أكثر من عام', 0, NULL, 26, NULL, NULL),
(33, NULL, NULL, NULL, '3100', 'الأسهم العادية', 'Equity', 0.00, 'رأس المال الذي استثمره الملاك أو المساهمون', 0, NULL, 3, NULL, NULL),
(34, NULL, NULL, NULL, '3200', 'الأرباح المحتجزة', 'Equity', 0.00, 'الأرباح أو الخسائر المتراكمة التي لم يتم توزيعها', 0, NULL, 3, NULL, NULL),
(35, NULL, NULL, NULL, '3300', 'رأس المال المدفوع الإضافي', 'Equity', 0.00, 'المبالغ المدفوعة من المساهمين بما يتجاوز القيمة الاسمية للأسهم', 0, NULL, 3, NULL, NULL),
(36, NULL, NULL, NULL, '3400', 'الأسهم المستعادة', 'Equity', 0.00, 'الأسهم التي تم شراؤها مرة أخرى من السوق المفتوحة', 0, NULL, 3, NULL, NULL),
(37, NULL, NULL, NULL, '3500', 'احتياطي الطوارئ', 'Equity', 0.00, 'الاحتياطي المخصص للتعامل مع الحالات الطارئة', 0, NULL, 3, NULL, NULL),
(38, NULL, NULL, NULL, '3600', 'الاحتياطي القانوني', 'Equity', 0.00, 'الاحتياطي المخصص لتلبية المتطلبات القانونية', 0, NULL, 3, NULL, NULL),
(39, NULL, NULL, NULL, '3700', 'الاحتياطي العام', 'Equity', 0.00, 'الاحتياطي العام لتعزيز رأس المال', 0, NULL, 3, NULL, NULL),
(40, NULL, NULL, NULL, '4100', 'إيرادات المبيعات', 'Revenue', 0.00, 'الإيرادات الناتجة عن مبيعات المنتجات', 0, NULL, 4, NULL, NULL),
(41, NULL, NULL, NULL, '4200', 'إيرادات الخدمات', 'Revenue', 0.00, 'الإيرادات الناتجة عن تقديم الخدمات', 0, NULL, 4, NULL, NULL),
(42, NULL, NULL, NULL, '4300', 'إيرادات أخرى', 'Revenue', 0.00, 'إيرادات غير رئيسية مثل الفوائد أو الإيجارات', 0, NULL, 4, NULL, NULL),
(43, NULL, NULL, NULL, '4400', 'إيرادات الاستثمار', 'Revenue', 0.00, 'الإيرادات الناتجة عن الاستثمارات والعوائد المالية', 0, NULL, 4, NULL, NULL),
(44, NULL, NULL, NULL, '4500', 'إيرادات الخصومات', 'Revenue', 0.00, 'الإيرادات الناتجة عن الخصومات المقدمة للعملاء', 0, NULL, 4, NULL, NULL),
(45, NULL, NULL, NULL, '5100', 'تكلفة البضائع المباعة', 'Expenses', 0.00, 'التكاليف المباشرة المرتبطة بإنتاج السلع المباعة', 0, NULL, 6, NULL, NULL),
(46, NULL, NULL, NULL, '5200', 'المصاريف التشغيلية', 'Expenses', 0.00, 'النفقات المتعلقة بتشغيل الشركة اليومية', 0, NULL, 6, NULL, NULL),
(47, NULL, NULL, NULL, '5300', 'مصاريف الرواتب والأجور', 'Expenses', 0.00, 'تكاليف دفع الرواتب والأجور للموظفين', 0, NULL, 6, NULL, NULL),
(48, NULL, NULL, NULL, '5400', 'مصاريف الإيجار', 'Expenses', 0.00, 'تكاليف استئجار المكاتب أو المنشآت', 0, NULL, 6, NULL, NULL),
(49, NULL, NULL, NULL, '5500', 'مصاريف المرافق', 'Expenses', 0.00, 'تكاليف فواتير المرافق مثل الكهرباء والمياه والإنترنت', 0, NULL, 6, NULL, NULL),
(50, NULL, NULL, NULL, '5600', 'مصاريف التسويق والإعلان', 'Expenses', 0.00, 'تكاليف الحملات التسويقية والإعلانية', 0, NULL, 6, NULL, NULL),
(51, NULL, NULL, NULL, '5700', 'مصاريف أخرى', 'Expenses', 0.00, 'مصاريف أخرى غير مصنفة', 0, NULL, 6, NULL, NULL),
(52, '2025-04-14 09:36:49.911434', '2025-04-14 09:36:49.911434', NULL, '1106621', 'عملاء دائمون - ahsdajk5as5d5as', 'Asset', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(53, '2025-04-14 09:56:33.279378', '2025-04-14 09:56:33.279378', NULL, '1101443', 'عملاء دائمون - akshdkjaskdj8888', 'Asset', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(54, '2025-04-16 12:20:30.120259', '2025-04-16 12:20:30.120259', NULL, '1104319', 'عملاء دائمون - ajkhdk kajshdask', 'Asset', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(55, '2025-04-16 12:21:28.287097', '2025-04-16 12:21:28.287097', NULL, '1102770', 'عملاء دائمون - test tset', 'Asset', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(73, '2025-04-16 22:10:36.858911', '2025-04-16 22:10:36.858911', NULL, '1101382', 'عملاء دائمون -  ', 'Assets', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(74, '2025-04-17 22:57:49.965190', '2025-04-17 22:57:49.965190', NULL, '1101905', 'عملاء دائمون - ahmed mohamed ali', 'Assets', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(75, '2025-04-18 22:55:12.160876', '2025-04-18 22:55:12.160876', NULL, '1108364', 'عملاء دائمون - ahmed  asdas', 'Assets', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(76, '2025-05-05 17:37:36.873466', '2025-05-05 17:37:36.873466', NULL, '1106364', 'عملاء - ahmed mohamed', 'Assets', 0.00, 'حساب عميل', 1, NULL, 7, NULL, NULL),
(77, '2025-05-05 19:13:56.825246', '2025-05-05 19:13:56.825246', NULL, '1106032', 'عملاء دائمون -  ', 'Assets', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL),
(78, '2025-05-07 08:49:27.900625', '2025-05-07 08:49:27.900625', NULL, '1104565', 'عملاء دائمون - mosa mohamed', 'Assets', 0.00, 'الحسابات المدينة / العملاء', 1, NULL, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_journalentry`
--

CREATE TABLE `accounts_journalentry` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `journal_entry_number` varchar(100) NOT NULL,
  `journal_entry_date` date NOT NULL,
  `journal_entry_description` longtext NOT NULL,
  `journal_entry_in_amount` decimal(10,2) NOT NULL,
  `journal_entry_out_amount` decimal(10,2) NOT NULL,
  `journal_entry_notes` longtext NOT NULL,
  `journal_entry_currency` varchar(100) NOT NULL,
  `journal_entry_exchange_rate` decimal(10,2) NOT NULL,
  `journal_entry_tax` decimal(10,2) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `journal_entry_account_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_journalentry`
--

INSERT INTO `accounts_journalentry` (`id`, `created_at`, `updated_at`, `deleted_at`, `journal_entry_number`, `journal_entry_date`, `journal_entry_description`, `journal_entry_in_amount`, `journal_entry_out_amount`, `journal_entry_notes`, `journal_entry_currency`, `journal_entry_exchange_rate`, `journal_entry_tax`, `created_by_id`, `journal_entry_account_id`, `updated_by_id`) VALUES
(1, '2025-04-15 11:46:33.713778', '2025-04-15 11:46:33.713778', NULL, 'ENT-6731', '2025-04-15', '', 0.00, 0.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 53, NULL),
(2, '2025-04-15 11:46:33.715710', '2025-04-15 11:46:33.715710', NULL, 'ENT-6731', '2025-04-15', '', 0.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(3, '2025-04-17 23:00:02.725206', '2025-04-17 23:00:02.725206', NULL, 'ENT-9343', '2025-04-18', '', 0.00, 225.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 74, NULL),
(4, '2025-04-17 23:00:02.728193', '2025-04-17 23:00:02.728193', NULL, 'ENT-9343', '2025-04-18', '', 225.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(7, '2025-04-18 22:42:19.652612', '2025-04-18 22:42:19.652612', NULL, 'ENT-3861', '2025-04-19', '', 0.00, 135.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 73, NULL),
(8, '2025-04-18 22:42:19.662294', '2025-04-18 22:42:19.662294', NULL, 'ENT-3861', '2025-04-19', '', 135.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(9, '2025-04-18 22:57:28.768706', '2025-04-18 22:57:28.768706', NULL, 'ENT-1035', '2025-04-19', '', 0.00, 3630000.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 73, NULL),
(10, '2025-04-18 22:57:28.775194', '2025-04-18 22:57:28.775194', NULL, 'ENT-1035', '2025-04-19', '', 3630000.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(11, '2025-04-18 23:01:55.984745', '2025-04-18 23:01:55.984745', NULL, 'ENT-3733', '2025-04-19', '', 0.00, 5445000.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 75, NULL),
(12, '2025-04-18 23:01:55.989767', '2025-04-18 23:01:55.989767', NULL, 'ENT-3733', '2025-04-19', '', 5445000.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(13, '2025-04-19 09:37:30.479707', '2025-04-19 09:37:30.479707', NULL, 'ENT-8294', '2025-04-19', '', 0.00, 720.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 73, NULL),
(14, '2025-04-19 09:37:30.487641', '2025-04-19 09:37:30.487641', NULL, 'ENT-8294', '2025-04-19', '', 720.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(15, '2025-04-19 10:21:42.226905', '2025-04-19 10:21:42.227902', NULL, 'ENT-6907', '2025-04-19', '', 0.00, 1760000.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 73, NULL),
(16, '2025-04-19 10:21:42.243017', '2025-04-19 10:21:42.243017', NULL, 'ENT-6907', '2025-04-19', '', 1760000.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(17, '2025-05-05 20:52:32.414108', '2025-05-05 20:52:32.414108', NULL, 'ENT-8029', '2025-05-05', '', 0.00, 45.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(18, '2025-05-05 20:52:32.420396', '2025-05-05 20:52:32.420396', NULL, 'ENT-8029', '2025-05-05', '', 45.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(19, '2025-05-05 20:55:08.978406', '2025-05-05 20:55:08.978406', NULL, 'ENT-5669', '2025-05-05', '', 0.00, 45.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(20, '2025-05-05 20:55:08.986449', '2025-05-05 20:55:08.986449', NULL, 'ENT-5669', '2025-05-05', '', 45.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(21, '2025-05-05 21:06:34.827900', '2025-05-05 21:06:34.827900', NULL, 'ENT-4132', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(22, '2025-05-05 21:06:34.836719', '2025-05-05 21:06:34.836719', NULL, 'ENT-4132', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(23, '2025-05-05 21:09:34.263179', '2025-05-05 21:09:34.263179', NULL, 'ENT-9531', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(24, '2025-05-05 21:09:34.278088', '2025-05-05 21:09:34.278088', NULL, 'ENT-9531', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(25, '2025-05-05 21:16:41.485911', '2025-05-05 21:16:41.485911', NULL, 'ENT-3510', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(26, '2025-05-05 21:16:41.492379', '2025-05-05 21:16:41.492379', NULL, 'ENT-3510', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(27, '2025-05-05 21:18:10.559798', '2025-05-05 21:18:10.560313', NULL, 'ENT-9266', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(28, '2025-05-05 21:18:10.571183', '2025-05-05 21:18:10.571183', NULL, 'ENT-9266', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(29, '2025-05-05 21:32:50.686866', '2025-05-05 21:32:50.686866', NULL, 'ENT-9363', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(30, '2025-05-05 21:32:50.693969', '2025-05-05 21:32:50.693969', NULL, 'ENT-9363', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(31, '2025-05-05 21:36:58.565632', '2025-05-05 21:36:58.565632', NULL, 'ENT-2925', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(32, '2025-05-05 21:36:58.581654', '2025-05-05 21:36:58.581654', NULL, 'ENT-2925', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(33, '2025-05-05 21:37:45.667993', '2025-05-05 21:37:45.667993', NULL, 'ENT-1822', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(34, '2025-05-05 21:37:45.671626', '2025-05-05 21:37:45.671626', NULL, 'ENT-1822', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(35, '2025-05-05 21:45:49.859005', '2025-05-05 21:45:49.859005', NULL, 'ENT-2272', '2025-05-06', '', 0.00, 15.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 76, NULL),
(36, '2025-05-05 21:45:49.864974', '2025-05-05 21:45:49.864974', NULL, 'ENT-2272', '2025-05-06', '', 15.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL),
(37, '2025-05-06 14:52:17.769747', '2025-05-06 14:52:17.769747', NULL, 'ENT-9618', '2025-05-06', '', 0.00, 1000.00, 'مقابل دفع حجز', 'RY', 1.00, 0.00, NULL, 77, NULL),
(38, '2025-05-06 14:52:17.780567', '2025-05-06 14:52:17.780567', NULL, 'ENT-9618', '2025-05-06', '', 1000.00, 0.00, 'مقابل دفع حواله', 'RY', 1.00, 0.00, NULL, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Hotel Managers');

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
(112, 1, 11),
(113, 1, 12),
(114, 1, 13),
(115, 1, 14),
(8, 1, 31),
(5, 1, 32),
(6, 1, 33),
(7, 1, 34),
(9, 1, 42),
(10, 1, 46),
(11, 1, 51),
(12, 1, 52),
(13, 1, 53),
(14, 1, 54),
(15, 1, 58),
(16, 1, 59),
(17, 1, 60),
(18, 1, 61),
(19, 1, 62),
(20, 1, 63),
(21, 1, 64),
(22, 1, 65),
(23, 1, 66),
(24, 1, 67),
(25, 1, 68),
(26, 1, 69),
(27, 1, 70),
(28, 1, 71),
(29, 1, 72),
(30, 1, 73),
(31, 1, 74),
(32, 1, 75),
(33, 1, 76),
(34, 1, 77),
(35, 1, 78),
(40, 1, 83),
(41, 1, 84),
(42, 1, 85),
(43, 1, 86),
(44, 1, 139),
(45, 1, 140),
(46, 1, 141),
(47, 1, 142),
(48, 1, 143),
(49, 1, 144),
(50, 1, 145),
(51, 1, 146),
(52, 1, 151),
(53, 1, 152),
(54, 1, 153),
(55, 1, 154),
(67, 1, 159),
(56, 1, 160),
(57, 1, 161),
(58, 1, 162),
(59, 1, 163),
(60, 1, 164),
(61, 1, 165),
(62, 1, 166),
(63, 1, 175),
(64, 1, 176),
(65, 1, 177),
(66, 1, 178),
(70, 1, 181),
(71, 1, 182),
(68, 1, 185),
(69, 1, 186),
(79, 1, 191),
(72, 1, 192),
(73, 1, 193),
(74, 1, 194),
(75, 1, 199),
(76, 1, 200),
(77, 1, 201),
(78, 1, 202),
(83, 1, 211),
(84, 1, 212),
(85, 1, 213),
(86, 1, 214),
(87, 1, 215),
(88, 1, 216),
(89, 1, 217),
(90, 1, 218),
(91, 1, 219),
(92, 1, 220),
(93, 1, 221),
(94, 1, 222),
(95, 1, 223),
(80, 1, 224),
(81, 1, 225),
(82, 1, 226);

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
(5, 'Can approve hotel request', 30, 'can_approve_request'),
(6, 'Can reject hotel request', 30, 'can_reject_request'),
(7, 'Can add permission', 31, 'add_permission'),
(8, 'Can change permission', 31, 'change_permission'),
(9, 'Can delete permission', 31, 'delete_permission'),
(10, 'Can view permission', 31, 'view_permission'),
(11, 'Can add group', 4, 'add_group'),
(12, 'Can change group', 4, 'change_group'),
(13, 'Can delete group', 4, 'delete_group'),
(14, 'Can view group', 4, 'view_group'),
(15, 'Can add content type', 32, 'add_contenttype'),
(16, 'Can change content type', 32, 'change_contenttype'),
(17, 'Can delete content type', 32, 'delete_contenttype'),
(18, 'Can view content type', 32, 'view_contenttype'),
(19, 'Can add session', 33, 'add_session'),
(20, 'Can change session', 33, 'change_session'),
(21, 'Can delete session', 33, 'delete_session'),
(22, 'Can view session', 33, 'view_session'),
(23, 'Can add chart of accounts', 34, 'add_chartofaccounts'),
(24, 'Can change chart of accounts', 34, 'change_chartofaccounts'),
(25, 'Can delete chart of accounts', 34, 'delete_chartofaccounts'),
(26, 'Can view chart of accounts', 34, 'view_chartofaccounts'),
(27, 'Can add journal entry', 35, 'add_journalentry'),
(28, 'Can change journal entry', 35, 'change_journalentry'),
(29, 'Can delete journal entry', 35, 'delete_journalentry'),
(30, 'Can view journal entry', 35, 'view_journalentry'),
(31, 'Can add مستخدم', 2, 'add_customuser'),
(32, 'Can change مستخدم', 2, 'change_customuser'),
(33, 'Can delete مستخدم', 2, 'delete_customuser'),
(34, 'Can view مستخدم', 2, 'view_customuser'),
(35, 'Can add سجل النشاط', 36, 'add_activitylog'),
(36, 'Can change سجل النشاط', 36, 'change_activitylog'),
(37, 'Can delete سجل النشاط', 36, 'delete_activitylog'),
(38, 'Can view سجل النشاط', 36, 'view_activitylog'),
(39, 'Can add منطقه', 21, 'add_city'),
(40, 'Can change منطقه', 21, 'change_city'),
(41, 'Can delete منطقه', 21, 'delete_city'),
(42, 'Can view منطقه', 21, 'view_city'),
(43, 'Can add فندق', 18, 'add_hotel'),
(44, 'Can change فندق', 18, 'change_hotel'),
(45, 'Can delete فندق', 18, 'delete_hotel'),
(46, 'Can view فندق', 18, 'view_hotel'),
(47, 'Can add طلب إضافة فندق', 30, 'add_hotelrequest'),
(48, 'Can change طلب إضافة فندق', 30, 'change_hotelrequest'),
(49, 'Can delete طلب إضافة فندق', 30, 'delete_hotelrequest'),
(50, 'Can view طلب إضافة فندق', 30, 'view_hotelrequest'),
(51, 'Can add صورة', 19, 'add_image'),
(52, 'Can change صورة', 19, 'change_image'),
(53, 'Can delete صورة', 19, 'delete_image'),
(54, 'Can view صورة', 19, 'view_image'),
(55, 'Can add الموقع', 22, 'add_location'),
(56, 'Can change الموقع', 22, 'change_location'),
(57, 'Can delete الموقع', 22, 'delete_location'),
(58, 'Can view الموقع', 22, 'view_location'),
(59, 'Can add رقم هاتف', 20, 'add_phone'),
(60, 'Can change رقم هاتف', 20, 'change_phone'),
(61, 'Can delete رقم هاتف', 20, 'delete_phone'),
(62, 'Can view رقم هاتف', 20, 'view_phone'),
(63, 'Can add توفر الغرف', 9, 'add_availability'),
(64, 'Can change توفر الغرف', 9, 'change_availability'),
(65, 'Can delete توفر الغرف', 9, 'delete_availability'),
(66, 'Can view توفر الغرف', 9, 'view_availability'),
(67, 'Can add تصنيف', 6, 'add_category'),
(68, 'Can change تصنيف', 6, 'change_category'),
(69, 'Can delete تصنيف', 6, 'delete_category'),
(70, 'Can view تصنيف', 6, 'view_category'),
(71, 'Can add صورة الغرفة', 7, 'add_roomimage'),
(72, 'Can change صورة الغرفة', 7, 'change_roomimage'),
(73, 'Can delete صورة الغرفة', 7, 'delete_roomimage'),
(74, 'Can view صورة الغرفة', 7, 'view_roomimage'),
(75, 'Can add سعر الغرفة', 8, 'add_roomprice'),
(76, 'Can change سعر الغرفة', 8, 'change_roomprice'),
(77, 'Can delete سعر الغرفة', 8, 'delete_roomprice'),
(78, 'Can view سعر الغرفة', 8, 'view_roomprice'),
(79, 'Can add حالة الغرفة', 10, 'add_roomstatus'),
(80, 'Can change حالة الغرفة', 10, 'change_roomstatus'),
(81, 'Can delete حالة الغرفة', 10, 'delete_roomstatus'),
(82, 'Can view حالة الغرفة', 10, 'view_roomstatus'),
(83, 'Can add نوع الغرفة', 5, 'add_roomtype'),
(84, 'Can change نوع الغرفة', 5, 'change_roomtype'),
(85, 'Can delete نوع الغرفة', 5, 'delete_roomtype'),
(86, 'Can view نوع الغرفة', 5, 'view_roomtype'),
(87, 'Can add contact message', 37, 'add_contactmessage'),
(88, 'Can change contact message', 37, 'change_contactmessage'),
(89, 'Can delete contact message', 37, 'delete_contactmessage'),
(90, 'Can view contact message', 37, 'view_contactmessage'),
(91, 'Can add hero slider', 38, 'add_heroslider'),
(92, 'Can change hero slider', 38, 'change_heroslider'),
(93, 'Can delete hero slider', 38, 'delete_heroslider'),
(94, 'Can view hero slider', 38, 'view_heroslider'),
(95, 'Can add info box', 39, 'add_infobox'),
(96, 'Can change info box', 39, 'change_infobox'),
(97, 'Can delete info box', 39, 'delete_infobox'),
(98, 'Can view info box', 39, 'view_infobox'),
(99, 'Can add partner', 40, 'add_partner'),
(100, 'Can change partner', 40, 'change_partner'),
(101, 'Can delete partner', 40, 'delete_partner'),
(102, 'Can view partner', 40, 'view_partner'),
(103, 'Can add paymen policy', 41, 'add_paymenpolicy'),
(104, 'Can change paymen policy', 41, 'change_paymenpolicy'),
(105, 'Can delete paymen policy', 41, 'delete_paymenpolicy'),
(106, 'Can view paymen policy', 41, 'view_paymenpolicy'),
(107, 'Can add pricing plan', 42, 'add_pricingplan'),
(108, 'Can change pricing plan', 42, 'change_pricingplan'),
(109, 'Can delete pricing plan', 42, 'delete_pricingplan'),
(110, 'Can view pricing plan', 42, 'view_pricingplan'),
(111, 'Can add privacy policy', 43, 'add_privacypolicy'),
(112, 'Can change privacy policy', 43, 'change_privacypolicy'),
(113, 'Can delete privacy policy', 43, 'delete_privacypolicy'),
(114, 'Can view privacy policy', 43, 'view_privacypolicy'),
(115, 'Can add room type home', 44, 'add_roomtypehome'),
(116, 'Can change room type home', 44, 'change_roomtypehome'),
(117, 'Can delete room type home', 44, 'delete_roomtypehome'),
(118, 'Can view room type home', 44, 'view_roomtypehome'),
(119, 'Can add setting', 45, 'add_setting'),
(120, 'Can change setting', 45, 'change_setting'),
(121, 'Can delete setting', 45, 'delete_setting'),
(122, 'Can view setting', 45, 'view_setting'),
(123, 'Can add social media link', 46, 'add_socialmedialink'),
(124, 'Can change social media link', 46, 'change_socialmedialink'),
(125, 'Can delete social media link', 46, 'delete_socialmedialink'),
(126, 'Can view social media link', 46, 'view_socialmedialink'),
(127, 'Can add team member', 47, 'add_teammember'),
(128, 'Can change team member', 47, 'change_teammember'),
(129, 'Can delete team member', 47, 'delete_teammember'),
(130, 'Can view team member', 47, 'view_teammember'),
(131, 'Can add terms conditions', 48, 'add_termsconditions'),
(132, 'Can change terms conditions', 48, 'change_termsconditions'),
(133, 'Can delete terms conditions', 48, 'delete_termsconditions'),
(134, 'Can view terms conditions', 48, 'view_termsconditions'),
(135, 'Can add testimonial', 49, 'add_testimonial'),
(136, 'Can change testimonial', 49, 'change_testimonial'),
(137, 'Can delete testimonial', 49, 'delete_testimonial'),
(138, 'Can view testimonial', 49, 'view_testimonial'),
(139, 'Can add حجز', 13, 'add_booking'),
(140, 'Can change حجز', 13, 'change_booking'),
(141, 'Can delete حجز', 13, 'delete_booking'),
(142, 'Can view حجز', 13, 'view_booking'),
(143, 'Can add تفصيل الحجز', 14, 'add_bookingdetail'),
(144, 'Can change تفصيل الحجز', 14, 'change_bookingdetail'),
(145, 'Can delete تفصيل الحجز', 14, 'delete_bookingdetail'),
(146, 'Can view تفصيل الحجز', 14, 'view_bookingdetail'),
(147, 'Can add سجل الحجز', 50, 'add_bookinghistory'),
(148, 'Can change سجل الحجز', 50, 'change_bookinghistory'),
(149, 'Can delete سجل الحجز', 50, 'delete_bookinghistory'),
(150, 'Can view سجل الحجز', 50, 'view_bookinghistory'),
(151, 'Can add extension movement', 15, 'add_extensionmovement'),
(152, 'Can change extension movement', 15, 'change_extensionmovement'),
(153, 'Can delete extension movement', 15, 'delete_extensionmovement'),
(154, 'Can view extension movement', 15, 'view_extensionmovement'),
(155, 'Can add ضيف', 51, 'add_guest'),
(156, 'Can change ضيف', 51, 'change_guest'),
(157, 'Can delete ضيف', 51, 'delete_guest'),
(158, 'Can view ضيف', 51, 'view_guest'),
(159, 'Can add عملة', 27, 'add_currency'),
(160, 'Can change عملة', 27, 'change_currency'),
(161, 'Can delete عملة', 27, 'delete_currency'),
(162, 'Can view عملة', 27, 'view_currency'),
(163, 'Can add طريقة دفع الفندق', 29, 'add_hotelpaymentmethod'),
(164, 'Can change طريقة دفع الفندق', 29, 'change_hotelpaymentmethod'),
(165, 'Can delete طريقة دفع الفندق', 29, 'delete_hotelpaymentmethod'),
(166, 'Can view طريقة دفع الفندق', 29, 'view_hotelpaymentmethod'),
(167, 'Can add دفعة', 52, 'add_payment'),
(168, 'Can change دفعة', 52, 'change_payment'),
(169, 'Can delete دفعة', 52, 'delete_payment'),
(170, 'Can view دفعة', 52, 'view_payment'),
(171, 'Can add سجل الدفعة', 53, 'add_paymenthistory'),
(172, 'Can change سجل الدفعة', 53, 'change_paymenthistory'),
(173, 'Can delete سجل الدفعة', 53, 'delete_paymenthistory'),
(174, 'Can view سجل الدفعة', 53, 'view_paymenthistory'),
(175, 'Can add طريقة دفع', 28, 'add_paymentoption'),
(176, 'Can change طريقة دفع', 28, 'change_paymentoption'),
(177, 'Can delete طريقة دفع', 28, 'delete_paymentoption'),
(178, 'Can view طريقة دفع', 28, 'view_paymentoption'),
(179, 'Can add مراجعة فندق', 17, 'add_hotelreview'),
(180, 'Can change مراجعة فندق', 17, 'change_hotelreview'),
(181, 'Can delete مراجعة فندق', 17, 'delete_hotelreview'),
(182, 'Can view مراجعة فندق', 17, 'view_hotelreview'),
(183, 'Can add مراجعة غرفة', 16, 'add_roomreview'),
(184, 'Can change مراجعة غرفة', 16, 'change_roomreview'),
(185, 'Can delete مراجعة غرفة', 16, 'delete_roomreview'),
(186, 'Can view مراجعة غرفة', 16, 'view_roomreview'),
(187, 'Can add coupon', 54, 'add_coupon'),
(188, 'Can change coupon', 54, 'change_coupon'),
(189, 'Can delete coupon', 54, 'delete_coupon'),
(190, 'Can view coupon', 54, 'view_coupon'),
(191, 'Can add خدمة فندقية', 12, 'add_hotelservice'),
(192, 'Can change خدمة فندقية', 12, 'change_hotelservice'),
(193, 'Can delete خدمة فندقية', 12, 'delete_hotelservice'),
(194, 'Can view خدمة فندقية', 12, 'view_hotelservice'),
(195, 'Can add عرض', 55, 'add_offer'),
(196, 'Can change عرض', 55, 'change_offer'),
(197, 'Can delete عرض', 55, 'delete_offer'),
(198, 'Can view عرض', 55, 'view_offer'),
(199, 'Can add خدمة نوع الغرفة', 11, 'add_roomtypeservice'),
(200, 'Can change خدمة نوع الغرفة', 11, 'change_roomtypeservice'),
(201, 'Can delete خدمة نوع الغرفة', 11, 'delete_roomtypeservice'),
(202, 'Can view خدمة نوع الغرفة', 11, 'view_roomtypeservice'),
(203, 'Can add blacklisted token', 56, 'add_blacklistedtoken'),
(204, 'Can change blacklisted token', 56, 'change_blacklistedtoken'),
(205, 'Can delete blacklisted token', 56, 'delete_blacklistedtoken'),
(206, 'Can view blacklisted token', 56, 'view_blacklistedtoken'),
(207, 'Can add outstanding token', 57, 'add_outstandingtoken'),
(208, 'Can change outstanding token', 57, 'change_outstandingtoken'),
(209, 'Can delete outstanding token', 57, 'delete_outstandingtoken'),
(210, 'Can view outstanding token', 57, 'view_outstandingtoken'),
(211, 'Can add تصنيف', 25, 'add_category'),
(212, 'Can change تصنيف', 25, 'change_category'),
(213, 'Can delete تصنيف', 25, 'delete_category'),
(214, 'Can view تصنيف', 25, 'view_category'),
(215, 'Can add تعليق', 24, 'add_comment'),
(216, 'Can change تعليق', 24, 'change_comment'),
(217, 'Can delete تعليق', 24, 'delete_comment'),
(218, 'Can view تعليق', 24, 'view_comment'),
(219, 'Can add مقال', 23, 'add_post'),
(220, 'Can change مقال', 23, 'change_post'),
(221, 'Can delete مقال', 23, 'delete_post'),
(222, 'Can view مقال', 23, 'view_post'),
(223, 'Can add وسم', 26, 'add_tag'),
(224, 'Can change وسم', 26, 'change_tag'),
(225, 'Can delete وسم', 26, 'delete_tag'),
(226, 'Can view وسم', 26, 'view_tag'),
(227, 'Can add إشعار', 58, 'add_notifications'),
(228, 'Can change إشعار', 58, 'change_notifications'),
(229, 'Can delete إشعار', 58, 'delete_notifications'),
(230, 'Can view إشعار', 58, 'view_notifications'),
(231, 'Can add المفضلات', 59, 'add_favourites'),
(232, 'Can change المفضلات', 59, 'change_favourites'),
(233, 'Can delete المفضلات', 59, 'delete_favourites'),
(234, 'Can view المفضلات', 59, 'view_favourites'),
(235, 'Can add crontab', 60, 'add_crontabschedule'),
(236, 'Can change crontab', 60, 'change_crontabschedule'),
(237, 'Can delete crontab', 60, 'delete_crontabschedule'),
(238, 'Can view crontab', 60, 'view_crontabschedule'),
(239, 'Can add interval', 61, 'add_intervalschedule'),
(240, 'Can change interval', 61, 'change_intervalschedule'),
(241, 'Can delete interval', 61, 'delete_intervalschedule'),
(242, 'Can view interval', 61, 'view_intervalschedule'),
(243, 'Can add periodic task', 62, 'add_periodictask'),
(244, 'Can change periodic task', 62, 'change_periodictask'),
(245, 'Can delete periodic task', 62, 'delete_periodictask'),
(246, 'Can view periodic task', 62, 'view_periodictask'),
(247, 'Can add periodic task track', 63, 'add_periodictasks'),
(248, 'Can change periodic task track', 63, 'change_periodictasks'),
(249, 'Can delete periodic task track', 63, 'delete_periodictasks'),
(250, 'Can view periodic task track', 63, 'view_periodictasks'),
(251, 'Can add solar event', 64, 'add_solarschedule'),
(252, 'Can change solar event', 64, 'change_solarschedule'),
(253, 'Can delete solar event', 64, 'delete_solarschedule'),
(254, 'Can view solar event', 64, 'view_solarschedule'),
(255, 'Can add clocked', 65, 'add_clockedschedule'),
(256, 'Can change clocked', 65, 'change_clockedschedule'),
(257, 'Can delete clocked', 65, 'delete_clockedschedule'),
(258, 'Can view clocked', 65, 'view_clockedschedule'),
(259, 'Can add Token', 66, 'add_token'),
(260, 'Can change Token', 66, 'change_token'),
(261, 'Can delete Token', 66, 'delete_token'),
(262, 'Can view Token', 66, 'view_token'),
(263, 'Can add Token', 67, 'add_tokenproxy'),
(264, 'Can change Token', 67, 'change_tokenproxy'),
(265, 'Can delete Token', 67, 'delete_tokenproxy'),
(266, 'Can view Token', 67, 'view_tokenproxy'),
(267, 'Can add association', 68, 'add_association'),
(268, 'Can change association', 68, 'change_association'),
(269, 'Can delete association', 68, 'delete_association'),
(270, 'Can view association', 68, 'view_association'),
(271, 'Can add code', 69, 'add_code'),
(272, 'Can change code', 69, 'change_code'),
(273, 'Can delete code', 69, 'delete_code'),
(274, 'Can view code', 69, 'view_code'),
(275, 'Can add nonce', 70, 'add_nonce'),
(276, 'Can change nonce', 70, 'change_nonce'),
(277, 'Can delete nonce', 70, 'delete_nonce'),
(278, 'Can view nonce', 70, 'view_nonce'),
(279, 'Can add user social auth', 71, 'add_usersocialauth'),
(280, 'Can change user social auth', 71, 'change_usersocialauth'),
(281, 'Can delete user social auth', 71, 'delete_usersocialauth'),
(282, 'Can view user social auth', 71, 'view_usersocialauth'),
(283, 'Can add partial', 72, 'add_partial'),
(284, 'Can change partial', 72, 'change_partial'),
(285, 'Can delete partial', 72, 'delete_partial'),
(286, 'Can view partial', 72, 'view_partial'),
(287, 'Can add application', 73, 'add_application'),
(288, 'Can change application', 73, 'change_application'),
(289, 'Can delete application', 73, 'delete_application'),
(290, 'Can view application', 73, 'view_application'),
(291, 'Can add access token', 74, 'add_accesstoken'),
(292, 'Can change access token', 74, 'change_accesstoken'),
(293, 'Can delete access token', 74, 'delete_accesstoken'),
(294, 'Can view access token', 74, 'view_accesstoken'),
(295, 'Can add grant', 75, 'add_grant'),
(296, 'Can change grant', 75, 'change_grant'),
(297, 'Can delete grant', 75, 'delete_grant'),
(298, 'Can view grant', 75, 'view_grant'),
(299, 'Can add refresh token', 76, 'add_refreshtoken'),
(300, 'Can change refresh token', 76, 'change_refreshtoken'),
(301, 'Can delete refresh token', 76, 'delete_refreshtoken'),
(302, 'Can view refresh token', 76, 'view_refreshtoken'),
(303, 'Can add id token', 77, 'add_idtoken'),
(304, 'Can change id token', 77, 'change_idtoken'),
(305, 'Can delete id token', 77, 'delete_idtoken'),
(306, 'Can view id token', 77, 'view_idtoken');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-05-06 16:53:04.053092', '2025-05-06 16:53:04.053092', NULL, 'cate 1', 'aaaaa', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `content` longtext NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `created_at`, `updated_at`, `deleted_at`, `content`, `is_approved`, `author_id`, `created_by_id`, `post_id`, `updated_by_id`) VALUES
(1, '2025-05-06 16:56:42.761694', '2025-05-06 16:56:42.761694', NULL, 'شاةثي', 1, 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `published_at` datetime(6) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `author_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `slug`, `content`, `image`, `published_at`, `is_published`, `views`, `author_id`, `category_id`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-05-06 16:53:48.652171', '2025-05-06 16:56:42.790783', NULL, 'ahmed title blog', 'ahmed-title-blog', 'ahmed title blog ahmed title blogahmed title blogahmed title blogahmed title blogahmed title blogahmed title blog', 'blog/images/settings.jpg', '2025-05-06 16:53:48.149330', 1, 4, 62, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-05-06 16:53:16.186954', '2025-05-06 16:53:16.186954', NULL, 'tag 1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_booking`
--

CREATE TABLE `bookings_booking` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `actual_check_out_date` datetime(6) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  `rooms_booked` int(10) UNSIGNED NOT NULL CHECK (`rooms_booked` >= 0),
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_booking`
--

INSERT INTO `bookings_booking` (`id`, `created_at`, `updated_at`, `deleted_at`, `check_in_date`, `check_out_date`, `actual_check_out_date`, `amount`, `status`, `account_status`, `rooms_booked`, `created_by_id`, `hotel_id`, `room_id`, `updated_by_id`, `user_id`) VALUES
(1, '2025-04-16 12:13:49.882602', '2025-04-17 22:47:59.942797', NULL, '2025-04-18 00:00:00.000000', '2025-04-30 00:00:00.000000', '2025-04-17 22:47:59.938875', 2640000.00, '0', 1, 4, NULL, 1, 2, NULL, 1),
(2, '2025-04-17 21:56:15.568922', '2025-04-17 22:47:57.497219', NULL, '2025-04-18 21:55:58.000000', '2025-04-30 21:56:00.000000', '2025-04-17 22:47:57.491048', 1923.00, '0', 1, 1, NULL, 1, 2, NULL, 59),
(3, '2025-04-17 22:04:26.297734', '2025-04-17 22:48:10.232585', NULL, '2025-04-19 22:03:50.000000', '2025-05-09 22:03:51.000000', '2025-04-17 22:48:10.226965', 1600.00, '0', 1, 2, NULL, 2, 5, NULL, 59),
(4, '2025-04-17 22:07:08.895622', '2025-04-17 22:48:12.255427', NULL, '2025-04-19 22:06:25.000000', '2025-06-17 22:06:27.000000', '2025-04-17 22:48:12.251291', 196565.00, '0', 1, 14, NULL, 1, 1, NULL, 59),
(5, '2025-04-17 22:08:34.577947', '2025-04-17 22:19:18.880514', NULL, '2025-04-17 22:08:18.000000', '2025-06-17 22:08:22.000000', '2025-04-17 22:19:18.873354', 922.00, '0', 1, 3, NULL, 1, 1, NULL, 59),
(6, '2025-04-17 22:10:32.522810', '2025-04-17 22:17:57.609176', NULL, '2025-04-17 22:10:20.000000', '2025-06-17 22:10:23.000000', '2025-04-17 22:17:57.601428', 1999.00, '0', 1, 1, NULL, 2, 8, NULL, 59),
(7, '2025-04-17 22:12:21.419872', '2025-04-17 22:45:16.523064', NULL, '2025-04-17 22:12:07.000000', '2025-07-17 22:12:10.000000', '2025-04-17 22:45:16.521090', 9565.00, '0', 1, 3, NULL, 1, 1, NULL, 59),
(8, '2025-04-17 22:12:59.709419', '2025-04-17 22:48:05.103277', NULL, '2025-04-17 22:12:46.000000', '2025-06-17 22:12:48.000000', '2025-04-17 22:48:05.103277', 946.00, '0', 1, 3, NULL, 1, 2, NULL, 59),
(9, '2025-04-17 22:14:30.300504', '2025-04-17 22:48:08.369520', NULL, '2025-04-18 22:14:12.000000', '2025-04-26 22:14:15.000000', '2025-04-17 22:48:08.366701', 1651.00, '0', 1, 3, NULL, 1, 2, NULL, 59),
(10, '2025-04-17 22:15:26.525839', '2025-04-17 22:43:10.378260', NULL, '2025-04-17 22:15:15.000000', '2025-04-19 22:15:17.000000', '2025-04-17 22:43:10.374252', 1616.00, '0', 1, 3, NULL, 1, 4, NULL, 59),
(11, '2025-04-17 22:39:47.551158', '2025-04-17 22:47:28.332493', NULL, '2025-04-17 22:37:48.000000', '2025-04-29 22:37:49.000000', '2025-04-17 22:47:28.326283', 1661.00, '0', 1, 4, NULL, 1, 1, NULL, 59),
(12, '2025-04-17 22:42:20.364339', '2025-04-17 22:48:02.364894', NULL, '2025-04-17 22:42:01.000000', '2025-04-26 22:42:03.000000', '2025-04-17 22:48:02.360467', 650.00, '0', 1, 3, NULL, 2, 6, NULL, 59),
(13, '2025-04-17 22:49:21.114422', '2025-04-17 22:53:59.006006', NULL, '2025-04-17 22:49:02.000000', '2025-04-22 22:49:03.000000', NULL, 166.00, '2', 1, 1, NULL, 1, 1, NULL, 59),
(14, '2025-04-17 22:55:50.196610', '2025-04-19 09:49:24.708429', NULL, '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', '2025-04-19 09:49:24.701245', 193.00, '0', 1, 1, NULL, 1, 1, 59, 59),
(15, '2025-04-17 22:58:46.293997', '2025-04-18 22:15:17.850380', NULL, '2025-04-20 00:00:00.000000', '2025-04-23 00:00:00.000000', '2025-04-18 22:15:17.830212', 225.00, '1', 1, 5, NULL, 1, 1, NULL, 60),
(16, '2025-04-18 21:46:11.504947', '2025-04-18 22:47:43.504737', NULL, '2025-04-21 00:00:00.000000', '2025-04-24 00:00:00.000000', NULL, 135.00, '2', 1, 3, NULL, 1, 1, NULL, 1),
(17, '2025-04-18 22:53:35.968616', '2025-04-18 23:19:08.004534', NULL, '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', NULL, 3630000.00, '2', 1, 6, NULL, 1, 2, NULL, 1),
(18, '2025-04-18 22:55:53.243869', '2025-04-18 23:03:33.972935', NULL, '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', '2025-04-18 23:03:33.970124', 5445000.00, '1', 1, 9, NULL, 1, 2, NULL, 61),
(19, '2025-04-19 09:35:41.515063', '2025-04-19 09:44:07.641280', NULL, '2025-04-19 00:00:00.000000', '2025-04-22 00:00:00.000000', NULL, 720.00, '2', 1, 16, NULL, 1, 1, NULL, 1),
(20, '2025-04-19 09:43:41.378012', '2025-04-19 10:47:07.377082', NULL, '2025-06-14 09:43:20.000000', '2025-06-13 09:43:13.000000', '2025-04-19 09:49:21.883602', 160.00, '0', 1, 1, NULL, 1, 2, NULL, 1),
(21, '2025-04-19 09:50:28.361652', '2025-04-19 09:51:35.032620', NULL, '2025-06-12 09:49:54.000000', '2025-06-16 09:49:56.000000', NULL, 1955.00, '2', 1, 3, NULL, 1, 2, NULL, 1),
(22, '2025-04-19 09:54:29.265651', '2025-04-19 10:06:37.351528', NULL, '2025-06-12 09:52:10.000000', '2025-06-16 09:52:18.000000', '2025-04-19 09:55:01.288363', 156.00, '1', 1, 10, NULL, 1, 2, NULL, 1),
(23, '2025-04-19 10:19:42.342582', '2025-04-19 10:41:17.546608', NULL, '2025-04-19 00:00:00.000000', '2025-04-21 00:00:00.000000', '2025-04-19 10:41:17.539351', 1760000.00, '1', 1, 16, NULL, 1, 2, NULL, 1),
(24, '2025-04-19 10:23:45.648274', '2025-04-19 10:25:37.795848', NULL, '2025-06-12 10:22:51.000000', '2025-06-16 10:23:09.000000', NULL, 19645.00, '2', 1, 10, NULL, 1, 2, NULL, 1),
(25, '2025-04-19 10:29:16.692523', '2025-04-19 10:29:52.008882', NULL, '2025-06-12 10:28:27.000000', '2025-06-16 10:28:28.000000', NULL, 19354.00, '2', 1, 13, NULL, 1, 2, NULL, 1),
(26, '2025-04-19 10:38:40.259480', '2025-04-19 10:39:31.118967', NULL, '2025-06-12 10:37:44.000000', '2025-06-15 10:37:47.000000', NULL, 165566.00, '2', 1, 13, NULL, 1, 2, NULL, 1),
(27, '2025-04-19 10:54:33.613834', '2025-04-19 10:56:29.143185', NULL, '2025-06-11 10:54:15.000000', '2025-06-16 10:54:17.000000', NULL, 199565.00, '2', 1, 20, NULL, 1, 2, NULL, 1),
(28, '2025-04-19 11:08:40.390760', '2025-04-19 11:15:18.700450', NULL, '2025-06-11 11:08:23.000000', '2025-06-16 11:08:24.000000', NULL, 11.00, '2', 1, 50, NULL, 1, 2, NULL, 59),
(29, '2025-04-19 11:09:07.973806', '2025-04-19 11:14:39.949119', NULL, '2025-06-11 11:08:54.000000', '2025-06-16 11:08:58.000000', '2025-04-19 11:14:39.941671', 99.00, '0', 1, 20, NULL, 1, 2, NULL, 61),
(30, '2025-04-19 11:09:44.075743', '2025-04-19 11:19:09.664695', NULL, '2025-06-11 11:09:24.000000', '2025-06-16 11:09:35.000000', '2025-04-19 11:19:09.658383', 99.00, '0', 1, 20, NULL, 1, 2, NULL, 61),
(32, '2025-04-19 11:30:14.630452', '2025-04-19 11:31:47.855748', NULL, '2025-06-11 11:30:02.000000', '2025-06-16 11:30:07.000000', NULL, 99.00, '2', 1, 20, NULL, 1, 2, NULL, 61),
(35, '2025-04-19 11:56:54.443494', '2025-04-19 12:02:07.269342', NULL, '2025-06-11 11:56:41.000000', '2025-06-13 11:56:44.000000', '2025-04-19 12:02:07.263593', 132.00, '1', 1, 50, NULL, 1, 2, NULL, 61),
(36, '2025-04-19 11:59:14.554761', '2025-04-19 12:04:14.691763', NULL, '2025-06-11 11:58:54.000000', '2025-06-13 11:59:06.000000', NULL, 2310.00, '2', 1, 20, NULL, 1, 2, NULL, 61),
(37, '2025-04-19 12:11:16.321933', '2025-04-19 12:12:11.869582', NULL, '2025-06-11 12:10:58.000000', '2025-06-13 12:11:02.000000', '2025-04-19 12:12:11.869582', 4510.00, '1', 1, 50, NULL, 1, 2, NULL, 61),
(38, '2025-04-19 12:11:52.611859', '2025-04-19 12:12:48.054811', NULL, '2025-06-11 12:11:37.000000', '2025-06-13 12:11:39.000000', NULL, 555.00, '2', 1, 60, NULL, 1, 2, NULL, 60),
(42, '2025-04-19 12:35:03.597149', '2025-04-19 12:36:39.012621', NULL, '2025-06-11 12:33:53.000000', '2025-06-14 12:33:55.000000', NULL, 15332.00, '2', 1, 50, NULL, 1, 2, NULL, 60),
(43, '2025-04-19 12:35:41.324845', '2025-04-19 12:36:12.742497', NULL, '2025-06-11 12:35:27.000000', '2025-06-14 12:35:33.000000', '2025-04-19 12:36:12.742497', 954.00, '1', 1, 70, NULL, 1, 2, NULL, 59),
(44, '2025-04-19 12:40:55.295425', '2025-04-19 12:42:40.908568', NULL, '2025-06-11 12:40:30.000000', '2025-06-14 12:40:34.000000', '2025-04-19 12:42:40.908568', 165.00, '1', 1, 100, NULL, 1, 2, NULL, 59),
(45, '2025-04-19 12:41:31.386000', '2025-05-06 14:52:18.202860', NULL, '2025-06-15 12:41:09.000000', '2025-06-16 12:41:13.000000', '2025-04-19 12:41:42.165439', 1312.00, '1', 1, 20, NULL, 1, 2, NULL, 60),
(46, '2025-05-05 19:16:10.755317', '2025-05-05 20:55:08.993286', NULL, '2025-05-05 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 45.00, '1', 1, 1, NULL, 1, 1, NULL, 62),
(47, '2025-05-05 21:01:13.103155', '2025-05-05 21:47:00.059639', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, '2', 1, 1, NULL, 1, 1, NULL, 62),
(48, '2025-05-05 21:04:18.052551', '2025-05-05 21:46:14.600185', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 21:46:12.185975', 15.00, '1', 1, 1, NULL, 1, 1, NULL, 62),
(54, '2025-05-05 21:31:15.579327', '2025-05-05 21:46:30.564328', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, '0', 1, 1, NULL, 1, 1, NULL, 62),
(55, '2025-05-05 21:34:56.757552', '2025-05-05 21:52:28.672252', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, '1', 1, 1, NULL, 1, 1, NULL, 62),
(56, '2025-05-05 21:56:52.835481', '2025-05-05 22:35:02.038590', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:35:01.225336', 15.00, '0', 1, 1, NULL, 1, 1, NULL, 62),
(64, '2025-05-05 22:25:05.399272', '2025-05-05 22:34:38.384920', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, '2', 1, 1, NULL, 1, 1, NULL, 62),
(66, '2025-05-05 22:32:06.193751', '2025-05-05 22:46:52.128855', NULL, '2025-05-06 00:00:00.000000', '2025-05-08 00:00:00.000000', '2025-05-05 22:46:52.115321', 30.00, '1', 1, 1, NULL, 1, 1, NULL, 62),
(67, '2025-05-05 22:37:29.742878', '2025-05-05 22:40:42.818290', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:40:41.108100', 75.00, '1', 1, 5, NULL, 1, 1, NULL, 62),
(68, '2025-05-05 22:41:41.809391', '2025-05-05 22:42:20.415916', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:42:19.605556', 150.00, '1', 1, 10, NULL, 1, 1, NULL, 62),
(69, '2025-05-05 22:45:43.620830', '2025-05-05 22:47:01.587000', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:47:01.559497', 165.00, '1', 1, 11, NULL, 1, 1, NULL, 62),
(73, '2025-05-05 22:54:22.537821', '2025-05-06 05:26:43.085524', NULL, '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, '1', 1, 5, NULL, 1, 1, NULL, 62),
(74, '2025-05-06 14:35:44.504957', '2025-05-06 14:38:07.412399', NULL, '2025-05-06 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 90.00, '1', 1, 3, NULL, 1, 1, NULL, 2),
(75, '2025-05-07 08:50:10.416926', '2025-05-07 08:50:10.416926', NULL, '2025-05-07 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 15.00, '0', 1, 1, NULL, 1, 1, NULL, 5),
(76, '2025-05-07 08:52:27.464441', '2025-05-07 08:52:27.464441', NULL, '2025-05-07 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 15.00, '0', 1, 1, NULL, 1, 1, NULL, 5),
(77, '2025-05-07 09:09:13.966813', '2025-05-07 10:35:40.233626', NULL, '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, '1', 1, 1, NULL, 1, 2, NULL, 2),
(79, '2025-05-08 08:52:17.274709', '2025-05-08 08:53:01.976762', NULL, '2025-05-15 00:00:00.000000', '2025-05-16 00:00:00.000000', NULL, 55000.00, '0', 1, 1, NULL, 1, 2, NULL, 5),
(80, '2025-05-08 09:03:25.634131', '2025-05-08 09:04:06.739973', NULL, '2025-05-08 00:00:00.000000', '2025-05-09 00:00:00.000000', NULL, 75.00, '1', 1, 5, NULL, 1, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_bookingdetail`
--

CREATE TABLE `bookings_bookingdetail` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
-- Table structure for table `bookings_bookinghistory`
--

CREATE TABLE `bookings_bookinghistory` (
  `id` bigint(20) NOT NULL,
  `history_date` datetime(6) NOT NULL,
  `previous_status` varchar(10) DEFAULT NULL,
  `new_status` varchar(10) NOT NULL,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `actual_check_out_date` datetime(6) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `account_status` tinyint(1) NOT NULL,
  `rooms_booked` int(10) UNSIGNED NOT NULL CHECK (`rooms_booked` >= 0),
  `booking_id` bigint(20) NOT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `parent_booking_id` bigint(20) DEFAULT NULL,
  `room_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_bookinghistory`
--

INSERT INTO `bookings_bookinghistory` (`id`, `history_date`, `previous_status`, `new_status`, `check_in_date`, `check_out_date`, `actual_check_out_date`, `amount`, `account_status`, `rooms_booked`, `booking_id`, `changed_by_id`, `hotel_id`, `parent_booking_id`, `room_id`, `user_id`) VALUES
(5, '2025-04-17 22:17:57.626452', '0', '0', '2025-04-17 22:10:20.000000', '2025-06-17 22:10:23.000000', '2025-04-17 22:17:57.601428', 1999.00, 1, 1, 6, 59, 2, NULL, 8, 59),
(6, '2025-04-17 22:19:18.895880', '0', '0', '2025-04-17 22:08:18.000000', '2025-06-17 22:08:22.000000', '2025-04-17 22:19:18.873354', 922.00, 1, 3, 5, 59, 1, NULL, 1, 59),
(7, '2025-04-17 22:43:10.398487', '0', '0', '2025-04-17 22:15:15.000000', '2025-04-19 22:15:17.000000', '2025-04-17 22:43:10.374252', 1616.00, 1, 3, 10, 59, 1, NULL, 4, 59),
(8, '2025-04-17 22:45:16.538684', '0', '0', '2025-04-17 22:12:07.000000', '2025-07-17 22:12:10.000000', '2025-04-17 22:45:16.521090', 9565.00, 1, 3, 7, 59, 1, NULL, 1, 59),
(9, '2025-04-17 22:47:28.357340', '0', '0', '2025-04-17 22:37:48.000000', '2025-04-29 22:37:49.000000', '2025-04-17 22:47:28.326283', 1661.00, 1, 4, 11, 59, 1, NULL, 1, 59),
(10, '2025-04-17 22:47:57.517960', '0', '0', '2025-04-18 21:55:58.000000', '2025-04-30 21:56:00.000000', '2025-04-17 22:47:57.491048', 1923.00, 1, 1, 2, 59, 1, NULL, 2, 59),
(11, '2025-04-17 22:47:59.958441', '0', '0', '2025-04-18 00:00:00.000000', '2025-04-30 00:00:00.000000', '2025-04-17 22:47:59.938875', 2640000.00, 1, 4, 1, 1, 1, NULL, 2, 1),
(12, '2025-04-17 22:48:02.380503', '0', '0', '2025-04-17 22:42:01.000000', '2025-04-26 22:42:03.000000', '2025-04-17 22:48:02.360467', 650.00, 1, 3, 12, 59, 2, NULL, 6, 59),
(13, '2025-04-17 22:48:05.121539', '0', '0', '2025-04-17 22:12:46.000000', '2025-06-17 22:12:48.000000', '2025-04-17 22:48:05.103277', 946.00, 1, 3, 8, 59, 1, NULL, 2, 59),
(14, '2025-04-17 22:48:08.385259', '0', '0', '2025-04-18 22:14:12.000000', '2025-04-26 22:14:15.000000', '2025-04-17 22:48:08.366701', 1651.00, 1, 3, 9, 59, 1, NULL, 2, 59),
(15, '2025-04-17 22:48:10.248632', '0', '0', '2025-04-19 22:03:50.000000', '2025-05-09 22:03:51.000000', '2025-04-17 22:48:10.226965', 1600.00, 1, 2, 3, 59, 2, NULL, 5, 59),
(16, '2025-04-17 22:48:12.272939', '0', '0', '2025-04-19 22:06:25.000000', '2025-06-17 22:06:27.000000', '2025-04-17 22:48:12.251291', 196565.00, 1, 14, 4, 59, 1, NULL, 1, 59),
(17, '2025-04-17 22:53:59.013133', '0', '2', '2025-04-17 22:49:02.000000', '2025-04-22 22:49:03.000000', NULL, 166.00, 1, 1, 13, 59, 1, NULL, 1, 59),
(18, '2025-04-17 22:55:58.218088', '0', '1', '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', NULL, 193.00, 1, 1, 14, 59, 1, NULL, 1, 59),
(19, '2025-04-17 23:00:02.691894', '0', '1', '2025-04-20 00:00:00.000000', '2025-04-23 00:00:00.000000', NULL, 225.00, 1, 5, 15, 60, 1, NULL, 1, 60),
(20, '2025-04-17 23:02:45.673138', '1', '2', '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', NULL, 193.00, 1, 1, 14, 59, 1, NULL, 1, 59),
(21, '2025-04-17 23:03:16.975817', '2', '1', '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', NULL, 193.00, 1, 1, 14, 59, 1, NULL, 1, 59),
(37, '2025-04-18 22:15:17.850380', '1', '1', '2025-04-20 00:00:00.000000', '2025-04-23 00:00:00.000000', '2025-04-18 22:15:17.830212', 225.00, 1, 5, 15, 60, 1, NULL, 1, 60),
(40, '2025-04-18 22:42:19.625238', '0', '1', '2025-04-21 00:00:00.000000', '2025-04-24 00:00:00.000000', NULL, 135.00, 1, 3, 16, 1, 1, NULL, 1, 1),
(44, '2025-04-18 22:47:43.510026', '1', '2', '2025-04-21 00:00:00.000000', '2025-04-24 00:00:00.000000', NULL, 135.00, 1, 3, 16, 1, 1, NULL, 1, 1),
(45, '2025-04-18 22:57:28.722404', '0', '1', '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', NULL, 3630000.00, 1, 6, 17, 1, 1, NULL, 2, 1),
(46, '2025-04-18 23:01:55.945615', '0', '1', '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', NULL, 5445000.00, 1, 9, 18, 61, 1, NULL, 2, 61),
(47, '2025-04-18 23:03:33.984072', '1', '1', '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', '2025-04-18 23:03:33.970124', 5445000.00, 1, 9, 18, 61, 1, NULL, 2, 61),
(48, '2025-04-18 23:19:08.013352', '1', '2', '2025-04-19 00:00:00.000000', '2025-04-30 00:00:00.000000', NULL, 3630000.00, 1, 6, 17, 1, 1, NULL, 2, 1),
(49, '2025-04-18 23:19:20.485049', '1', '0', '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', NULL, 193.00, 1, 1, 14, 59, 1, NULL, 1, 59),
(51, '2025-04-19 09:37:30.436677', '0', '1', '2025-04-19 00:00:00.000000', '2025-04-22 00:00:00.000000', NULL, 720.00, 1, 16, 19, 1, 1, NULL, 1, 1),
(52, '2025-04-19 09:44:07.657980', '1', '2', '2025-04-19 00:00:00.000000', '2025-04-22 00:00:00.000000', NULL, 720.00, 1, 16, 19, 1, 1, NULL, 1, 1),
(53, '2025-04-19 09:44:36.782574', '0', '1', '2025-06-14 09:43:20.000000', '2025-06-13 09:43:13.000000', NULL, 160.00, 1, 1, 20, 1, 1, NULL, 2, 1),
(54, '2025-04-19 09:49:21.909151', '1', '1', '2025-06-14 09:43:20.000000', '2025-06-13 09:43:13.000000', '2025-04-19 09:49:21.883602', 160.00, 1, 1, 20, 1, 1, NULL, 2, 1),
(55, '2025-04-19 09:49:24.726896', '0', '0', '2025-04-20 22:55:33.000000', '2025-04-22 22:55:40.000000', '2025-04-19 09:49:24.701245', 193.00, 1, 1, 14, 59, 1, NULL, 1, 59),
(56, '2025-04-19 09:51:35.038524', '1', '2', '2025-06-12 09:49:54.000000', '2025-06-16 09:49:56.000000', NULL, 1955.00, 1, 3, 21, 1, 1, NULL, 2, 1),
(57, '2025-04-19 09:54:39.401010', '0', '1', '2025-06-12 09:52:10.000000', '2025-06-16 09:52:18.000000', NULL, 156.00, 1, 10, 22, 1, 1, NULL, 2, 1),
(58, '2025-04-19 09:55:01.317951', '1', '1', '2025-06-12 09:52:10.000000', '2025-06-16 09:52:18.000000', '2025-04-19 09:55:01.288363', 156.00, 1, 10, 22, 1, 1, NULL, 2, 1),
(60, '2025-04-19 10:21:42.156207', '0', '1', '2025-04-19 00:00:00.000000', '2025-04-21 00:00:00.000000', NULL, 1760000.00, 1, 16, 23, 1, 1, NULL, 2, 1),
(61, '2025-04-19 10:25:37.799354', '1', '2', '2025-06-12 10:22:51.000000', '2025-06-16 10:23:09.000000', NULL, 19645.00, 1, 10, 24, 1, 1, NULL, 2, 1),
(62, '2025-04-19 10:29:52.024300', '1', '2', '2025-06-12 10:28:27.000000', '2025-06-16 10:28:28.000000', NULL, 19354.00, 1, 13, 25, 1, 1, NULL, 2, 1),
(63, '2025-04-19 10:39:31.125300', '1', '2', '2025-06-12 10:37:44.000000', '2025-06-15 10:37:47.000000', NULL, 165566.00, 1, 13, 26, 1, 1, NULL, 2, 1),
(64, '2025-04-19 10:41:17.570918', '1', '1', '2025-04-19 00:00:00.000000', '2025-04-21 00:00:00.000000', '2025-04-19 10:41:17.539351', 1760000.00, 1, 16, 23, 1, 1, NULL, 2, 1),
(65, '2025-04-19 10:47:07.391557', '1', '0', '2025-06-14 09:43:20.000000', '2025-06-13 09:43:13.000000', '2025-04-19 09:49:21.883602', 160.00, 1, 1, 20, 1, 1, NULL, 2, 1),
(66, '2025-04-19 10:54:58.304486', '0', '1', '2025-06-11 10:54:15.000000', '2025-06-16 10:54:17.000000', NULL, 199565.00, 1, 20, 27, 1, 1, NULL, 2, 1),
(67, '2025-04-19 10:56:29.148065', '1', '2', '2025-06-11 10:54:15.000000', '2025-06-16 10:54:17.000000', NULL, 199565.00, 1, 20, 27, 1, 1, NULL, 2, 1),
(71, '2025-04-19 11:14:25.481850', '0', '1', '2025-06-11 11:08:23.000000', '2025-06-16 11:08:24.000000', NULL, 11.00, 1, 50, 28, 59, 1, NULL, 2, 59),
(72, '2025-04-19 11:14:39.978454', '0', '0', '2025-06-11 11:08:54.000000', '2025-06-16 11:08:58.000000', '2025-04-19 11:14:39.941671', 99.00, 1, 20, 29, 61, 1, NULL, 2, 61),
(73, '2025-04-19 11:15:18.712600', '1', '2', '2025-06-11 11:08:23.000000', '2025-06-16 11:08:24.000000', NULL, 11.00, 1, 50, 28, 59, 1, NULL, 2, 59),
(74, '2025-04-19 11:19:09.690706', '0', '0', '2025-06-11 11:09:24.000000', '2025-06-16 11:09:35.000000', '2025-04-19 11:19:09.658383', 99.00, 1, 20, 30, 61, 1, NULL, 2, 61),
(76, '2025-04-19 11:31:14.631893', '0', '1', '2025-06-11 11:30:02.000000', '2025-06-16 11:30:07.000000', NULL, 99.00, 1, 20, 32, 61, 1, NULL, 2, 61),
(77, '2025-04-19 11:31:47.863077', '1', '2', '2025-06-11 11:30:02.000000', '2025-06-16 11:30:07.000000', NULL, 99.00, 1, 20, 32, 61, 1, NULL, 2, 61),
(79, '2025-04-19 11:58:06.062819', '0', '1', '2025-06-11 11:56:41.000000', '2025-06-13 11:56:44.000000', NULL, 132.00, 1, 50, 35, 61, 1, NULL, 2, 61),
(84, '2025-04-19 12:01:44.680172', '0', '1', '2025-06-11 11:58:54.000000', '2025-06-13 11:59:06.000000', NULL, 2310.00, 1, 20, 36, 61, 1, NULL, 2, 61),
(85, '2025-04-19 12:02:07.283492', '1', '1', '2025-06-11 11:56:41.000000', '2025-06-13 11:56:44.000000', '2025-04-19 12:02:07.263593', 132.00, 1, 50, 35, 61, 1, NULL, 2, 61),
(86, '2025-04-19 12:04:14.697803', '1', '2', '2025-06-11 11:58:54.000000', '2025-06-13 11:59:06.000000', NULL, 2310.00, 1, 20, 36, 61, 1, NULL, 2, 61),
(87, '2025-04-19 12:12:03.935458', '0', '1', '2025-06-11 12:11:37.000000', '2025-06-13 12:11:39.000000', NULL, 555.00, 1, 60, 38, 60, 1, NULL, 2, 60),
(88, '2025-04-19 12:12:11.875401', '1', '1', '2025-06-11 12:10:58.000000', '2025-06-13 12:11:02.000000', '2025-04-19 12:12:11.869582', 4510.00, 1, 50, 37, 61, 1, NULL, 2, 61),
(89, '2025-04-19 12:12:48.077787', '1', '2', '2025-06-11 12:11:37.000000', '2025-06-13 12:11:39.000000', NULL, 555.00, 1, 60, 38, 60, 1, NULL, 2, 60),
(90, '2025-04-19 12:35:56.650101', '0', '1', '2025-06-11 12:35:27.000000', '2025-06-14 12:35:33.000000', NULL, 954.00, 1, 70, 43, 59, 1, NULL, 2, 59),
(91, '2025-04-19 12:36:12.742497', '1', '1', '2025-06-11 12:35:27.000000', '2025-06-14 12:35:33.000000', '2025-04-19 12:36:12.742497', 954.00, 1, 70, 43, 59, 1, NULL, 2, 59),
(92, '2025-04-19 12:36:39.028225', '1', '2', '2025-06-11 12:33:53.000000', '2025-06-14 12:33:55.000000', NULL, 15332.00, 1, 50, 42, 60, 1, NULL, 2, 60),
(93, '2025-04-19 12:41:42.180206', '0', '0', '2025-06-15 12:41:09.000000', '2025-06-16 12:41:13.000000', '2025-04-19 12:41:42.165439', 1312.00, 1, 20, 45, 60, 1, NULL, 2, 60),
(94, '2025-04-19 12:42:25.391135', '0', '1', '2025-06-11 12:40:30.000000', '2025-06-14 12:40:34.000000', NULL, 165.00, 1, 100, 44, 59, 1, NULL, 2, 59),
(95, '2025-04-19 12:42:40.927466', '1', '1', '2025-06-11 12:40:30.000000', '2025-06-14 12:40:34.000000', '2025-04-19 12:42:40.908568', 165.00, 1, 100, 44, 59, 1, NULL, 2, 59),
(97, '2025-05-05 20:52:29.236019', '0', '1', '2025-05-05 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 45.00, 1, 1, 46, 62, 1, NULL, 1, 62),
(98, '2025-05-05 21:06:34.258839', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(99, '2025-05-05 21:09:17.297671', '1', '2', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(100, '2025-05-05 21:09:32.426247', '2', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(101, '2025-05-05 21:10:45.415110', '1', '0', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(102, '2025-05-05 21:11:06.356740', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(103, '2025-05-05 21:32:48.763154', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 54, 62, 1, NULL, 1, 62),
(104, '2025-05-05 21:36:58.386336', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 55, 62, 1, NULL, 1, 62),
(105, '2025-05-05 21:45:49.794078', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 47, 62, 1, NULL, 1, 62),
(106, '2025-05-05 21:46:14.607060', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 21:46:12.185975', 15.00, 1, 1, 48, 62, 1, NULL, 1, 62),
(107, '2025-05-05 21:46:30.568558', '1', '0', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 54, 62, 1, NULL, 1, 62),
(108, '2025-05-05 21:47:00.063724', '1', '2', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 47, 62, 1, NULL, 1, 62),
(109, '2025-05-05 21:52:08.798401', '1', '0', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 55, 62, 1, NULL, 1, 62),
(110, '2025-05-05 21:52:28.672252', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 55, 62, 1, NULL, 1, 62),
(111, '2025-05-05 22:34:21.046453', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 64, 62, 1, NULL, 1, 62),
(112, '2025-05-05 22:34:38.384920', '1', '2', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 15.00, 1, 1, 64, 62, 1, NULL, 1, 62),
(113, '2025-05-05 22:35:02.054683', '0', '0', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:35:01.225336', 15.00, 1, 1, 56, 62, 1, NULL, 1, 62),
(114, '2025-05-05 22:35:27.427702', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 30.00, 1, 1, 66, 62, 1, NULL, 1, 62),
(115, '2025-05-05 22:38:35.604993', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 67, 62, 1, NULL, 1, 62),
(116, '2025-05-05 22:40:42.818290', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:40:41.108100', 75.00, 1, 5, 67, 62, 1, NULL, 1, 62),
(117, '2025-05-05 22:42:07.145870', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 150.00, 1, 10, 68, 62, 1, NULL, 1, 62),
(118, '2025-05-05 22:42:20.415916', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:42:19.605556', 150.00, 1, 10, 68, 62, 1, NULL, 1, 62),
(119, '2025-05-05 22:46:26.822374', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 165.00, 1, 11, 69, 62, 1, NULL, 1, 62),
(120, '2025-05-05 22:46:52.133214', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-08 00:00:00.000000', '2025-05-05 22:46:52.115321', 30.00, 1, 1, 66, 62, 1, NULL, 1, 62),
(121, '2025-05-05 22:47:01.589258', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:47:01.559497', 165.00, 1, 11, 69, 62, 1, NULL, 1, 62),
(124, '2025-05-05 22:56:21.951241', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(125, '2025-05-05 22:56:39.497757', '1', '2', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(126, '2025-05-05 22:56:50.621561', '2', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(127, '2025-05-05 22:57:07.330215', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', '2025-05-05 22:57:05.562660', 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(128, '2025-05-06 05:22:22.144787', '1', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(129, '2025-05-06 05:22:55.182686', '1', '0', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(130, '2025-05-06 05:26:43.088461', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-07 00:00:00.000000', NULL, 75.00, 1, 5, 73, 62, 1, NULL, 1, 62),
(131, '2025-05-06 14:38:07.414430', '0', '1', '2025-05-06 00:00:00.000000', '2025-05-08 00:00:00.000000', NULL, 90.00, 1, 3, 74, 2, 1, NULL, 1, 2),
(132, '2025-05-06 14:52:18.214641', '0', '1', '2025-06-15 12:41:09.000000', '2025-06-16 12:41:13.000000', '2025-04-19 12:41:42.165439', 1312.00, 1, 20, 45, 60, 1, NULL, 2, 60),
(133, '2025-05-07 10:24:07.531762', '0', '1', '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, 1, 1, 77, 2, 1, NULL, 2, 2),
(134, '2025-05-07 10:28:31.432603', '1', '0', '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, 1, 1, 77, 2, 1, NULL, 2, 2),
(135, '2025-05-07 10:29:15.875881', '0', '1', '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, 1, 1, 77, 2, 1, NULL, 2, 2),
(136, '2025-05-07 10:35:31.623739', '1', '0', '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, 1, 1, 77, 2, 1, NULL, 2, 2),
(137, '2025-05-07 10:35:40.236941', '0', '1', '2025-06-15 00:00:00.000000', '2025-06-17 00:00:00.000000', NULL, 100000.00, 1, 1, 77, 2, 1, NULL, 2, 2),
(138, '2025-05-08 09:04:06.739973', '0', '1', '2025-05-08 00:00:00.000000', '2025-05-09 00:00:00.000000', NULL, 75.00, 1, 5, 80, 5, 1, NULL, 1, 5);

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
(4, '2025-05-08', '2025-05-06', '2025-06-09', 'personal', 2025, 32, 74, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_guest`
--

CREATE TABLE `bookings_guest` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `id_card_image` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday_date` date DEFAULT NULL,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `booking_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_favourites`
--

CREATE TABLE `customer_favourites` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_favourites`
--

INSERT INTO `customer_favourites` (`id`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`, `hotel_id`, `updated_by_id`, `user_id`) VALUES
(2, '2025-04-17 10:53:57.842531', '2025-04-17 10:53:57.842531', NULL, NULL, 4, NULL, 1),
(3, '2025-04-18 22:55:30.091961', '2025-04-18 22:55:30.091961', NULL, NULL, 6, NULL, 61),
(4, '2025-05-05 19:10:05.865356', '2025-05-05 19:10:05.865356', NULL, NULL, 1, NULL, 62);

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
(1, '2025-04-15 22:04:49.661479', '8', 'غرفة قياسية مفردة - إضافية', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-04-15 22:07:32.338032', '1', 'غرفة قياسية مزدوجة - 10 rooms available on 2025-04-15', 1, '[{\"added\": {}}]', 9, 1),
(3, '2025-04-15 22:11:27.720396', '1', 'hello', 1, '[{\"added\": {}}]', 38, 1),
(4, '2025-04-16 09:54:37.761198', '2', 'غرفة قياسية مزدوجة - 5 rooms available on 2025-04-17', 2, '[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u063a\\u0631\\u0641\\u0629\"]}}]', 9, 1),
(5, '2025-04-16 10:00:04.644091', '1', 'غرفة قياسية مزدوجة - 10 rooms available on 2025-04-16', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\"]}}]', 9, 1),
(6, '2025-04-16 12:01:47.503558', '5', 'غرفة قياسية مفردة - 55000.00 (2025-04-16 إلى 2025-04-21)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\", \"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621\"]}}]', 8, 1),
(7, '2025-04-16 12:03:31.293556', '5', 'غرفة قياسية مفردة - 55000.00 (2025-04-16 إلى 2025-05-21)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0627\\u0646\\u062a\\u0647\\u0627\\u0621\"]}}]', 8, 1),
(8, '2025-04-16 12:26:35.985171', '28', 'Ahmed Mohamed', 3, '', 2, 1),
(9, '2025-04-16 12:26:36.000813', '25', 'ahmed algarbani', 3, '', 2, 1),
(10, '2025-04-16 12:37:53.226444', '34', 'سكاي تو - SKY 2', 3, '', 2, 1),
(11, '2025-04-16 12:37:53.233469', '33', 'joker Games', 3, '', 2, 1),
(12, '2025-04-16 12:37:53.236472', '32', 'Ahmed Mohamed', 3, '', 2, 1),
(13, '2025-04-16 12:37:53.240409', '24', 'akshdkj askdj8888', 3, '', 2, 1),
(14, '2025-04-16 12:38:40.372802', '59', 'عملاء دائمون -  ', 3, '', 34, 1),
(15, '2025-04-16 12:38:40.377924', '58', 'عملاء دائمون -  ', 3, '', 34, 1),
(16, '2025-04-16 12:38:40.381953', '57', 'عملاء دائمون -  ', 3, '', 34, 1),
(17, '2025-04-16 12:38:40.388720', '56', 'عملاء دائمون -  ', 3, '', 34, 1),
(18, '2025-04-16 12:50:35.704598', '60', 'عملاء دائمون -  ', 3, '', 34, 1),
(19, '2025-04-16 12:50:45.145016', '36', 'صديق الطالب', 3, '', 2, 1),
(20, '2025-04-16 12:50:45.151863', '35', 'joker Games', 3, '', 2, 1),
(21, '2025-04-16 12:59:30.185341', '61', 'عملاء دائمون -  ', 3, '', 34, 1),
(22, '2025-04-16 12:59:38.250893', '38', 'ahmed algarbani', 3, '', 2, 1),
(23, '2025-04-16 13:26:41.814137', '43', 'joker Games', 3, '', 2, 1),
(24, '2025-04-16 13:26:41.818894', '42', 'صديق الطالب', 3, '', 2, 1),
(25, '2025-04-16 13:26:41.822379', '40', 'ahmed algarbani', 3, '', 2, 1),
(26, '2025-04-16 13:26:41.823421', '39', 'مارس - Mars', 3, '', 2, 1),
(27, '2025-04-16 13:39:02.973353', '45', 'سكاي تو - SKY 2', 3, '', 2, 1),
(28, '2025-04-16 13:39:02.982509', '44', 'مارس - Mars', 3, '', 2, 1),
(29, '2025-04-16 13:46:42.010746', '50', 'ahmed algarbani', 3, '', 2, 1),
(30, '2025-04-16 13:46:42.024335', '49', 'Ahmed Mohamed', 3, '', 2, 1),
(31, '2025-04-16 13:46:42.027580', '48', 'صديق الطالب', 3, '', 2, 1),
(32, '2025-04-16 13:46:42.031605', '46', 'joker Games', 3, '', 2, 1),
(33, '2025-04-16 14:25:09.447535', '52', 'joker Games', 3, '', 2, 1),
(34, '2025-04-16 14:25:09.452447', '51', 'مارس - Mars', 3, '', 2, 1),
(35, '2025-04-16 14:38:12.513845', '58', 'joker Games', 3, '', 2, 1),
(36, '2025-04-16 14:38:12.520342', '57', 'ahmed algarbani', 3, '', 2, 1),
(37, '2025-04-16 14:38:12.522339', '56', 'صديق الطالب', 3, '', 2, 1),
(38, '2025-04-16 14:38:12.527874', '54', 'سكاي تو - SKY 2', 3, '', 2, 1),
(39, '2025-04-16 14:40:16.486218', '72', 'عملاء دائمون - مارس - Mars ', 3, '', 34, 1),
(40, '2025-04-16 14:40:16.492487', '71', 'عملاء دائمون - joker Games ', 3, '', 34, 1),
(41, '2025-04-16 14:40:16.497293', '70', 'عملاء دائمون - ahmed algarbani', 3, '', 34, 1),
(42, '2025-04-16 14:40:16.500713', '69', 'عملاء دائمون -  ', 3, '', 34, 1),
(43, '2025-04-16 14:40:16.503888', '68', 'عملاء دائمون -  ', 3, '', 34, 1),
(44, '2025-04-16 14:40:16.510583', '67', 'عملاء دائمون -  ', 3, '', 34, 1),
(45, '2025-04-16 14:40:16.515303', '66', 'عملاء دائمون -  ', 3, '', 34, 1),
(46, '2025-04-16 14:40:16.518794', '65', 'عملاء دائمون -  ', 3, '', 34, 1),
(47, '2025-04-16 14:40:16.522253', '64', 'عملاء دائمون -  ', 3, '', 34, 1),
(48, '2025-04-16 14:40:16.525748', '63', 'عملاء دائمون -  ', 3, '', 34, 1),
(49, '2025-04-16 14:40:16.529304', '62', 'عملاء دائمون -  ', 3, '', 34, 1),
(50, '2025-04-17 10:17:23.027348', '17', 'كوخ بيئي مزدوج - 16 rooms available on 2025-04-17', 1, '[{\"added\": {}}]', 9, 1),
(51, '2025-04-17 10:17:31.399816', '17', 'كوخ بيئي مزدوج - 11 rooms available on 2025-04-17', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(52, '2025-04-17 21:56:15.577212', '2', 'Booking #2 - غرفة قياسية مفردة (1 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(53, '2025-04-17 22:04:26.300773', '3', 'Booking #3 - غرفة ديلوكس مزدوجة (2 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(54, '2025-04-17 22:07:08.902755', '4', 'Booking #4 - room vip 2025 (14 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(55, '2025-04-17 22:08:34.586366', '5', 'Booking #5 - room vip 2025 (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(56, '2025-04-17 22:10:32.527494', '6', 'Booking #6 - غرفة قياسية مزدوجة (1 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(57, '2025-04-17 22:12:21.425130', '7', 'Booking #7 - room vip 2025 (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(58, '2025-04-17 22:12:59.723926', '8', 'Booking #8 - غرفة قياسية مفردة (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(59, '2025-04-17 22:14:30.308387', '9', 'Booking #9 - غرفة قياسية مفردة (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(60, '2025-04-17 22:15:26.532670', '10', 'Booking #10 - جناح جونيور (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(61, '2025-04-17 22:39:47.555686', '11', 'Booking #11 - room vip 2025 (4 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(62, '2025-04-17 22:42:20.375231', '12', 'Booking #12 - غرفة مزدوجة مطلة على البحر (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(63, '2025-04-17 22:49:21.121720', '13', 'Booking #13 - room vip 2025 (1 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(64, '2025-04-17 22:55:50.200600', '14', 'Booking #14 - room vip 2025 (1 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(65, '2025-04-18 23:19:20.512628', '14', 'Booking #14 - room vip 2025 (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 13, 1),
(66, '2025-04-19 09:43:41.390989', '20', 'Booking #20 - غرفة قياسية مفردة (1 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(67, '2025-04-19 09:50:28.375014', '21', 'Booking #21 - غرفة قياسية مفردة (3 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(68, '2025-04-19 09:54:29.277244', '22', 'Booking #22 - غرفة قياسية مفردة (10 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(69, '2025-04-19 10:23:45.696699', '24', 'Booking #24 - غرفة قياسية مفردة (10 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(70, '2025-04-19 10:29:16.738947', '25', 'Booking #25 - غرفة قياسية مفردة (13 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(71, '2025-04-19 10:29:52.095045', '25', 'Booking #25 - غرفة قياسية مفردة (13 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 13, 1),
(72, '2025-04-19 10:38:40.292886', '26', 'Booking #26 - غرفة قياسية مفردة (13 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(73, '2025-04-19 10:39:31.179373', '26', 'Booking #26 - غرفة قياسية مفردة (13 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 13, 1),
(74, '2025-04-19 10:52:55.201597', '88', 'غرفة قياسية مفردة - 55 rooms available on 2025-06-16', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(75, '2025-04-19 10:53:07.977097', '83', 'غرفة قياسية مفردة - 77 rooms available on 2025-06-11', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(76, '2025-04-19 10:54:33.627042', '27', 'Booking #27 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(77, '2025-04-19 10:56:29.278929', '27', 'Booking #27 - غرفة قياسية مفردة (20 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062d\\u062c\\u0632\"]}}]', 13, 1),
(78, '2025-04-19 11:08:00.150459', '88', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-16', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(79, '2025-04-19 11:08:00.178825', '87', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-15', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(80, '2025-04-19 11:08:00.185641', '86', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-14', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(81, '2025-04-19 11:08:00.192644', '85', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-13', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(82, '2025-04-19 11:08:00.200013', '84', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-12', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(83, '2025-04-19 11:08:00.206964', '83', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-11', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 1),
(84, '2025-04-19 11:08:40.403270', '28', 'Booking #28 - غرفة قياسية مفردة (50 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(85, '2025-04-19 11:09:07.985583', '29', 'Booking #29 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(86, '2025-04-19 11:09:44.087891', '30', 'Booking #30 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(87, '2025-04-19 11:30:14.681734', '32', 'Booking #32 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(88, '2025-04-19 11:56:54.448705', '35', 'Booking #35 - غرفة قياسية مفردة (50 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(89, '2025-04-19 11:59:14.571382', '36', 'Booking #36 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(90, '2025-04-19 12:01:37.035431', '36', 'Booking #36 - غرفة قياسية مفردة (20 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\"]}}]', 13, 1),
(91, '2025-04-19 12:11:16.349914', '37', 'Booking #37 - غرفة قياسية مفردة (50 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(92, '2025-04-19 12:11:52.624363', '38', 'Booking #38 - غرفة قياسية مفردة (60 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(93, '2025-04-19 12:35:03.680350', '42', 'Booking #42 - غرفة قياسية مفردة (50 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(94, '2025-04-19 12:35:41.324845', '43', 'Booking #43 - غرفة قياسية مفردة (70 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(95, '2025-04-19 12:40:55.295425', '44', 'Booking #44 - غرفة قياسية مفردة (100 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(96, '2025-04-19 12:41:31.386000', '45', 'Booking #45 - غرفة قياسية مفردة (20 rooms)', 1, '[{\"added\": {}}]', 13, 1),
(97, '2025-05-03 19:08:52.486194', '1', 'أهلاً بك في ديار', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0633\\u0644\\u0627\\u064a\\u062f\\u0631\", \"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0633\\u0644\\u0627\\u064a\\u062f\\u0631\", \"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0633\\u0644\\u0627\\u064a\\u062f\\u0631\"]}}]', 38, 1),
(98, '2025-05-03 19:11:34.302859', '1', 'test info', 1, '[{\"added\": {}}]', 39, 1),
(99, '2025-05-03 19:23:54.371431', '1', 'test info', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(100, '2025-05-03 19:24:26.120517', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(101, '2025-05-03 19:27:15.172203', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(102, '2025-05-03 19:27:46.684169', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(103, '2025-05-03 19:32:37.735214', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(104, '2025-05-03 19:32:48.198012', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(105, '2025-05-03 19:33:01.013310', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(106, '2025-05-03 19:33:12.789591', '1', 'test info T', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(107, '2025-05-03 19:33:37.857647', '2', 'ي', 1, '[{\"added\": {}}]', 39, 1),
(108, '2025-05-03 19:34:49.240597', '2', 'جو فريد', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(109, '2025-05-03 19:35:30.442959', '1', 'بيئة', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(110, '2025-05-03 19:35:55.908932', '1', 'بيئة', 2, '[{\"changed\": {\"fields\": [\"Icon\"]}}]', 39, 1),
(111, '2025-05-03 19:38:46.344641', '3', 'موقع مثالي بكل المقاييس', 1, '[{\"added\": {}}]', 39, 1),
(112, '2025-05-03 19:39:31.115672', '2', 'تجربة فريدة من نوعها', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(113, '2025-05-03 19:40:31.763079', '4', 'تفاصيل تصنع الفرق', 1, '[{\"added\": {}}]', 39, 1),
(114, '2025-05-03 19:41:10.294665', '1', 'بيئة متكاملة بعناية', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(115, '2025-05-03 19:42:08.591536', '1', 'أهلاً بك في ديار', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0648\\u0635\\u0641\"]}}]', 38, 1),
(116, '2025-05-03 19:42:43.862673', '1', 'أهلاً بك في ديار', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0648\\u0635\\u0641\"]}}]', 38, 1),
(117, '2025-05-03 19:43:05.355390', '1', 'ahmad', 1, '[{\"added\": {}}]', 37, 1),
(118, '2025-05-03 19:43:42.910144', '1', 'ahmad', 3, '', 37, 1),
(119, '2025-05-03 19:46:22.226962', '2', 'تجربة مميزة', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(120, '2025-05-03 19:47:37.629835', '4', 'خيارات متعددة', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(121, '2025-05-03 19:48:01.654635', '3', 'موقع مثالي', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(122, '2025-05-03 19:48:18.516073', '1', 'سهولة الحجز', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(123, '2025-05-03 19:48:48.705596', '2', 'إقامة لا تُنسى', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 39, 1),
(124, '2025-05-03 19:50:10.605067', '1', 'Partner object (1)', 1, '[{\"added\": {}}]', 40, 1),
(125, '2025-05-03 19:53:39.940056', '1', 'Partner object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 40, 1),
(126, '2025-05-03 19:57:45.840657', '1', 'Partner object (1)', 3, '', 40, 1),
(127, '2025-05-03 19:59:19.775956', '1', 'عادي', 1, '[{\"added\": {}}]', 42, 1),
(128, '2025-05-03 20:00:10.107919', '1', 'عادي', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Is primary\"]}}]', 42, 1),
(129, '2025-05-03 20:00:42.113873', '2', 'اساسي', 1, '[{\"added\": {}}]', 42, 1),
(130, '2025-05-03 20:01:06.955230', '3', 'الممتازة', 1, '[{\"added\": {}}]', 42, 1),
(131, '2025-05-03 20:02:36.391558', '2', 'اساسي', 2, '[{\"changed\": {\"fields\": [\"Features\"]}}]', 42, 1),
(132, '2025-05-03 20:02:59.733805', '1', 'عادي', 2, '[{\"changed\": {\"fields\": [\"Features\"]}}]', 42, 1),
(133, '2025-05-03 20:15:44.826425', '1', 'privacy_policy Privacy policys', 1, '[{\"added\": {}}]', 43, 1),
(134, '2025-05-03 20:22:25.672952', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Content\"]}}]', 43, 1),
(135, '2025-05-03 20:22:55.728410', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(136, '2025-05-03 20:23:25.303269', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(137, '2025-05-03 20:24:59.836831', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(138, '2025-05-03 20:26:25.555208', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(139, '2025-05-03 20:26:55.696532', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(140, '2025-05-03 20:29:56.418892', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(141, '2025-05-03 20:30:55.447852', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(142, '2025-05-03 20:32:32.333727', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(143, '2025-05-03 20:33:18.552246', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(144, '2025-05-03 20:33:55.204086', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(145, '2025-05-03 20:34:11.915081', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(146, '2025-05-03 20:34:33.008023', '1', 'privacy_policy سياسة الخصوصية – ديار لحجوزات الفنادق', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 43, 1),
(147, '2025-05-03 20:35:27.213637', '1', 'TEST ROOM TYPE NAME', 1, '[{\"added\": {}}]', 44, 1),
(148, '2025-05-03 20:46:17.068347', '1', 'TEST ROOM TYPE NAME', 2, '[{\"changed\": {\"fields\": [\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u063a\\u0631\\u0641\\u0629\"]}}]', 44, 1),
(149, '2025-05-03 20:50:01.608942', '1', 'TEST ROOM TYPE NAME', 2, '[{\"changed\": {\"fields\": [\"\\u0631\\u0627\\u0628\\u0637 \\u0627\\u0644\\u063a\\u0631\\u0641\\u0629\"]}}]', 44, 1),
(150, '2025-05-03 20:50:13.564938', '1', 'VIP', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u063a\\u0631\\u0641\\u0629\"]}}]', 44, 1),
(151, '2025-05-03 20:50:34.373043', '1', 'VIP', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u063a\\u0631\\u0641\\u0629\"]}}]', 44, 1),
(152, '2025-05-03 20:51:29.714951', '2', 'جناح', 1, '[{\"added\": {}}]', 44, 1),
(153, '2025-05-03 20:53:50.730975', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Favicon\"]}}]', 45, 1),
(154, '2025-05-03 21:01:38.289017', '1', 'socialmedia facebook', 1, '[{\"added\": {}}]', 46, 1),
(155, '2025-05-03 21:02:20.193971', '2', 'socialmedia twitter', 1, '[{\"added\": {}}]', 46, 1),
(156, '2025-05-03 21:06:52.462619', '2', 'socialmedia twitter', 2, '[]', 46, 1),
(157, '2025-05-03 21:07:16.244659', '3', 'socialmedia instagram', 1, '[{\"added\": {}}]', 46, 1),
(158, '2025-05-03 21:07:40.118878', '4', 'socialmedia linkedin', 1, '[{\"added\": {}}]', 46, 1),
(159, '2025-05-03 21:12:20.121953', '1', 'terms_conditions terms and conditions', 1, '[{\"added\": {}}]', 48, 1),
(160, '2025-05-03 21:13:34.829509', '1', 'terms_conditions terms and conditions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 48, 1),
(161, '2025-05-03 21:13:51.940803', '1', 'terms_conditions terms and conditions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 48, 1),
(162, '2025-05-03 21:16:02.229318', '1', 'terms_conditions terms and conditions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 48, 1),
(163, '2025-05-03 21:17:03.271462', '1', 'Testimonial object (1)', 1, '[{\"added\": {}}]', 49, 1),
(164, '2025-05-03 21:19:52.250870', '1', 'Testimonial object (1)', 3, '', 49, 1),
(165, '2025-05-03 21:20:59.880123', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Footer logo\"]}}]', 45, 1),
(166, '2025-05-03 21:29:45.682427', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Footer logo\"]}}]', 45, 1),
(167, '2025-05-03 21:32:30.713343', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 45, 1),
(168, '2025-05-03 21:33:40.786243', '1', 'setting ديار', 2, '[]', 45, 1),
(169, '2025-05-03 21:34:55.612019', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 45, 1),
(170, '2025-05-03 21:36:58.991587', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 45, 1),
(171, '2025-05-03 21:41:27.344501', '1', 'room vip 2025 - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\", \"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(172, '2025-05-03 21:41:50.387843', '3', 'غرفة قياسية مفردة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(173, '2025-05-03 21:42:20.993528', '5', 'غرفة ديلوكس مزدوجة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(174, '2025-05-03 21:42:49.288291', '7', 'غرفة مزدوجة مطلة على البحر - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(175, '2025-05-03 21:43:10.296158', '2', 'room vip 2025 - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(176, '2025-05-03 21:43:36.484770', '1', 'room vip 2025 - رئيسية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\", \"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(177, '2025-05-03 21:44:01.735324', '8', 'غرفة قياسية مفردة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(178, '2025-05-03 21:44:21.993220', '4', 'غرفة قياسية مفردة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(179, '2025-05-03 21:44:40.420564', '1', 'room vip 2025 - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(180, '2025-05-03 21:45:06.877093', '1', 'room vip 2025 - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(181, '2025-05-03 21:45:28.690135', '7', 'غرفة مزدوجة مطلة على البحر - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(182, '2025-05-03 21:45:52.402240', '6', 'غرفة ديلوكس مزدوجة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(183, '2025-05-03 21:46:03.984042', '5', 'غرفة ديلوكس مزدوجة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(184, '2025-05-03 21:46:15.116057', '3', 'غرفة قياسية مفردة - إضافية', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0635\\u0648\\u0631\\u0629\"]}}]', 7, 1),
(185, '2025-05-03 21:47:03.482757', '1', 'room vip 2025 - رئيسية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(186, '2025-05-03 21:47:14.327904', '3', 'غرفة قياسية مفردة - رئيسية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(187, '2025-05-03 21:47:26.024255', '5', 'غرفة ديلوكس مزدوجة - رئيسية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(188, '2025-05-03 21:51:08.755296', '7', 'غرفة مزدوجة مطلة على البحر - رئيسية', 2, '[{\"changed\": {\"fields\": [\"\\u0635\\u0648\\u0631\\u0629 \\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"]}}]', 7, 1),
(189, '2025-05-03 22:48:42.144145', '7', 'hotels/images/img1.jpg', 1, '[{\"added\": {}}]', 19, 1),
(190, '2025-05-03 22:49:01.322387', '8', 'hotels/images/img2.jpg', 1, '[{\"added\": {}}]', 19, 1),
(191, '2025-05-03 22:49:22.644539', '9', 'hotels/images/img4.jpg', 1, '[{\"added\": {}}]', 19, 1),
(192, '2025-05-03 22:49:52.822178', '10', 'hotels/images/img6.jpg', 1, '[{\"added\": {}}]', 19, 1),
(193, '2025-05-03 22:50:14.169093', '11', 'hotels/images/img7.jpg', 1, '[{\"added\": {}}]', 19, 1),
(194, '2025-05-03 22:50:30.649212', '12', 'hotels/images/img8.jpg', 1, '[{\"added\": {}}]', 19, 1),
(195, '2025-05-03 22:51:08.884944', '13', 'hotels/images/img10.jpg', 1, '[{\"added\": {}}]', 19, 1),
(196, '2025-05-03 22:51:35.366262', '14', 'hotels/images/img17.jpg', 1, '[{\"added\": {}}]', 19, 1),
(197, '2025-05-03 22:51:57.391420', '6', 'images/hotels/socotra_eco_interior.jpg', 3, '', 19, 1),
(198, '2025-05-03 22:51:57.391899', '5', 'images/hotels/socotra_eco_exterior.jpg', 3, '', 19, 1),
(199, '2025-05-03 22:51:57.391899', '4', 'images/hotels/aden_waves_pool.jpg', 3, '', 19, 1),
(200, '2025-05-03 22:51:57.391899', '3', 'images/hotels/aden_waves_view.jpg', 3, '', 19, 1),
(201, '2025-05-03 22:51:57.391899', '2', 'images/hotels/sheba_sanaa_room1.jpg', 3, '', 19, 1),
(202, '2025-05-03 22:51:57.391899', '1', 'images/hotels/sheba_sanaa_lobby.jpg', 3, '', 19, 1),
(203, '2025-05-03 23:17:04.614542', '3', 'فندق قصر سبأ صنعاء', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(204, '2025-05-03 23:17:27.667836', '2', 'sami', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(205, '2025-05-03 23:18:08.882830', '2', 'sami', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(206, '2025-05-03 23:18:45.855535', '8', 'فندق إب جراند', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(207, '2025-05-03 23:19:05.535257', '7', 'فندق برج السلام تعز', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(208, '2025-05-03 23:19:23.278404', '6', 'نزل سقطرى البيئي', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(209, '2025-05-03 23:19:52.092076', '5', 'منتجع لؤلؤة المكلا', 2, '[{\"changed\": {\"fields\": [\"\\u0645\\u0633\\u062a\\u0646\\u062f\\u0627\\u062a \\u0627\\u0644\\u0641\\u0646\\u062f\\u0642\"]}}]', 18, 1),
(210, '2025-05-03 23:20:21.327052', '4', 'فندق أمواج عدن', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(211, '2025-05-03 23:20:48.892598', '3', 'فندق قصر سبأ صنعاء', 2, '[{\"changed\": {\"fields\": [\"\\u0645\\u0633\\u062a\\u0646\\u062f\\u0627\\u062a \\u0627\\u0644\\u0641\\u0646\\u062f\\u0642\"]}}]', 18, 1),
(212, '2025-05-03 23:23:07.257196', '1', 'احمد', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(213, '2025-05-03 23:23:50.220848', '5', 'منتجع لؤلؤة المكلا', 2, '[{\"changed\": {\"fields\": [\"Profile picture\"]}}]', 18, 1),
(214, '2025-05-03 23:52:47.957540', '9', 'غرفة قياسية مزدوجة - رئيسية', 1, '[{\"added\": {}}]', 7, 1),
(215, '2025-05-03 23:54:01.937498', '10', 'كوخ بيئي مزدوج - رئيسية', 1, '[{\"added\": {}}]', 7, 1),
(216, '2025-05-03 23:54:24.340590', '11', 'جناح جونيور - رئيسية', 1, '[{\"added\": {}}]', 7, 1),
(217, '2025-05-03 23:54:56.935946', '12', 'غرفة قياسية مزدوجة - إضافية', 1, '[{\"added\": {}}]', 7, 1),
(218, '2025-05-05 17:57:14.705398', '1', 'setting ديار', 2, '[{\"changed\": {\"fields\": [\"Footer logo\"]}}]', 45, 1),
(219, '2025-05-05 19:14:45.191678', '2', 'b', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 2, 1),
(220, '2025-05-05 19:19:40.462068', '1', 'Hotel Managers', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(221, '2025-05-05 21:37:32.050581', '17', 'دفعة #17 لحجز 17', 2, '[{\"changed\": {\"fields\": [\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639\", \"\\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a \\u0627\\u0644\\u062f\\u0641\\u0639\"]}}]', 52, 2),
(222, '2025-05-06 04:59:21.740026', '1', 'Hotel Managers', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(223, '2025-05-06 04:59:38.843593', '290', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(224, '2025-05-06 04:59:38.855805', '289', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(225, '2025-05-06 04:59:38.859308', '288', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(226, '2025-05-06 04:59:38.863772', '285', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(227, '2025-05-06 04:59:38.867660', '284', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(228, '2025-05-06 04:59:38.870631', '282', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(229, '2025-05-06 04:59:38.874493', '281', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(230, '2025-05-06 04:59:38.877421', '280', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(231, '2025-05-06 04:59:38.881686', '275', 'إشعار من b إلى ahmed mohamed - 0', 3, '', 58, 2),
(232, '2025-05-06 04:59:38.884583', '274', 'إشعار من ahmed mohamed إلى b - 0', 3, '', 58, 2),
(233, '2025-05-06 04:59:38.888483', '272', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(234, '2025-05-06 04:59:38.891516', '271', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(235, '2025-05-06 04:59:38.895330', '270', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(236, '2025-05-06 04:59:38.899301', '269', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(237, '2025-05-06 04:59:38.902912', '266', 'إشعار من b إلى ahmed mohamed - 0', 3, '', 58, 2),
(238, '2025-05-06 04:59:38.906778', '265', 'إشعار من ahmed mohamed إلى b - 0', 3, '', 58, 2),
(239, '2025-05-06 04:59:38.909754', '264', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(240, '2025-05-06 04:59:38.913789', '263', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(241, '2025-05-06 04:59:38.917696', '262', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(242, '2025-05-06 04:59:38.921559', '259', 'إشعار من b إلى ahmed mohamed - 0', 3, '', 58, 2),
(243, '2025-05-06 04:59:38.924794', '258', 'إشعار من ahmed mohamed إلى b - 0', 3, '', 58, 2),
(244, '2025-05-06 04:59:38.928698', '256', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(245, '2025-05-06 04:59:38.932639', '255', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(246, '2025-05-06 04:59:38.936460', '254', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(247, '2025-05-06 04:59:38.940367', '253', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(248, '2025-05-06 04:59:38.944485', '250', 'إشعار من b إلى ahmed mohamed - 0', 3, '', 58, 2),
(249, '2025-05-06 04:59:38.954261', '249', 'إشعار من ahmed mohamed إلى b - 0', 3, '', 58, 2),
(250, '2025-05-06 04:59:38.958164', '247', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(251, '2025-05-06 04:59:38.961092', '246', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(252, '2025-05-06 04:59:38.965147', '245', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(253, '2025-05-06 04:59:38.969051', '244', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(254, '2025-05-06 04:59:38.972203', '241', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(255, '2025-05-06 04:59:38.975653', '240', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(256, '2025-05-06 04:59:38.979562', '238', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(257, '2025-05-06 04:59:38.983466', '237', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(258, '2025-05-06 04:59:38.986751', '236', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(259, '2025-05-06 04:59:38.990419', '233', 'إشعار من b إلى ahmed mohamed - 0', 3, '', 58, 2),
(260, '2025-05-06 04:59:38.993642', '232', 'إشعار من ahmed mohamed إلى b - 0', 3, '', 58, 2),
(261, '2025-05-06 04:59:38.997541', '230', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(262, '2025-05-06 04:59:39.000472', '227', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(263, '2025-05-06 04:59:39.004373', '226', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(264, '2025-05-06 04:59:39.007407', '224', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(265, '2025-05-06 04:59:39.011400', '222', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(266, '2025-05-06 04:59:39.015208', '221', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(267, '2025-05-06 04:59:39.019217', '220', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(268, '2025-05-06 04:59:39.022899', '219', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(269, '2025-05-06 04:59:39.029622', '218', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(270, '2025-05-06 04:59:39.036450', '215', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(271, '2025-05-06 04:59:39.042665', '214', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(272, '2025-05-06 04:59:39.049491', '213', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(273, '2025-05-06 04:59:39.053351', '212', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(274, '2025-05-06 04:59:39.057307', '209', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(275, '2025-05-06 04:59:39.060250', '208', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(276, '2025-05-06 04:59:39.064158', '207', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(277, '2025-05-06 04:59:39.068011', '206', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(278, '2025-05-06 04:59:39.071347', '205', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(279, '2025-05-06 04:59:39.074995', '204', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(280, '2025-05-06 04:59:39.079050', '202', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(281, '2025-05-06 04:59:39.082459', '201', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(282, '2025-05-06 04:59:39.086374', '200', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(283, '2025-05-06 04:59:39.089528', '197', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(284, '2025-05-06 04:59:39.092696', '196', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(285, '2025-05-06 04:59:39.097296', '195', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(286, '2025-05-06 04:59:39.100749', '194', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(287, '2025-05-06 04:59:39.103680', '193', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(288, '2025-05-06 04:59:39.107581', '192', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(289, '2025-05-06 04:59:39.110512', '191', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(290, '2025-05-06 04:59:39.115391', '189', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(291, '2025-05-06 04:59:39.118695', '188', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(292, '2025-05-06 04:59:39.122462', '187', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(293, '2025-05-06 04:59:39.126975', '186', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(294, '2025-05-06 04:59:39.131538', '185', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(295, '2025-05-06 04:59:39.135518', '183', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(296, '2025-05-06 04:59:39.139330', '182', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(297, '2025-05-06 04:59:39.142814', '181', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(298, '2025-05-06 04:59:39.146664', '180', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(299, '2025-05-06 04:59:39.149593', '179', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(300, '2025-05-06 04:59:39.153501', '178', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(301, '2025-05-06 04:59:39.157399', '177', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(302, '2025-05-06 04:59:39.160331', '176', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(303, '2025-05-06 04:59:39.167226', '170', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(304, '2025-05-06 04:59:39.171162', '169', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(305, '2025-05-06 04:59:39.174749', '168', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(306, '2025-05-06 04:59:39.178658', '167', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(307, '2025-05-06 04:59:39.183074', '166', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(308, '2025-05-06 04:59:39.186508', '165', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(309, '2025-05-06 04:59:39.190420', '164', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(310, '2025-05-06 04:59:39.193341', '163', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(311, '2025-05-06 04:59:39.198178', '162', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(312, '2025-05-06 04:59:39.202672', '160', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(313, '2025-05-06 04:59:39.205667', '159', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(314, '2025-05-06 04:59:39.209517', '158', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(315, '2025-05-06 04:59:39.213075', '155', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(316, '2025-05-06 04:59:39.216850', '154', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(317, '2025-05-06 04:59:39.219778', '153', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(318, '2025-05-06 04:59:39.223557', '152', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(319, '2025-05-06 04:59:39.226835', '151', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(320, '2025-05-06 04:59:39.230421', '150', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(321, '2025-05-06 04:59:39.237252', '149', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(322, '2025-05-06 04:59:39.240142', '148', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(323, '2025-05-06 04:59:50.303880', '147', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(324, '2025-05-06 04:59:50.311607', '146', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(325, '2025-05-06 04:59:50.315646', '145', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(326, '2025-05-06 04:59:50.321366', '144', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(327, '2025-05-06 04:59:50.324778', '143', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(328, '2025-05-06 04:59:50.328761', '141', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(329, '2025-05-06 04:59:50.333564', '140', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(330, '2025-05-06 04:59:50.336540', '139', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(331, '2025-05-06 04:59:50.340563', '138', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(332, '2025-05-06 04:59:50.343829', '137', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(333, '2025-05-06 04:59:50.347802', '136', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(334, '2025-05-06 04:59:50.351643', '135', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(335, '2025-05-06 04:59:50.354888', '134', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(336, '2025-05-06 04:59:50.358718', '133', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(337, '2025-05-06 04:59:50.362485', '132', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(338, '2025-05-06 04:59:50.367357', '131', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(339, '2025-05-06 04:59:50.370327', '130', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(340, '2025-05-06 04:59:50.374416', '129', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(341, '2025-05-06 04:59:50.378921', '128', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(342, '2025-05-06 04:59:50.383452', '127', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(343, '2025-05-06 04:59:50.387312', '124', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(344, '2025-05-06 04:59:50.391261', '123', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(345, '2025-05-06 04:59:50.394999', '122', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(346, '2025-05-06 04:59:50.399917', '121', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(347, '2025-05-06 04:59:50.403827', '120', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(348, '2025-05-06 04:59:50.406765', '119', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(349, '2025-05-06 04:59:50.410616', '118', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(350, '2025-05-06 04:59:50.415060', '117', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(351, '2025-05-06 04:59:50.419007', '116', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(352, '2025-05-06 04:59:50.421892', '115', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(353, '2025-05-06 04:59:50.425961', '114', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(354, '2025-05-06 04:59:50.430067', '113', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(355, '2025-05-06 04:59:50.434640', '112', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(356, '2025-05-06 04:59:50.437501', '111', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(357, '2025-05-06 04:59:50.440489', '110', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(358, '2025-05-06 04:59:50.443363', '109', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(359, '2025-05-06 04:59:50.447312', '108', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(360, '2025-05-06 04:59:50.451165', '107', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(361, '2025-05-06 04:59:50.454646', '106', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(362, '2025-05-06 04:59:50.458549', '105', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(363, '2025-05-06 04:59:50.462456', '104', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(364, '2025-05-06 04:59:50.467333', '103', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(365, '2025-05-06 04:59:50.470269', '102', 'إشعار من b إلى ahmed mohamed - 2', 3, '', 58, 2),
(366, '2025-05-06 04:59:50.474214', '101', 'إشعار من ahmed mohamed إلى b - 2', 3, '', 58, 2),
(367, '2025-05-06 04:59:50.477408', '100', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(368, '2025-05-06 04:59:50.481336', '99', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(369, '2025-05-06 04:59:50.485207', '98', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(370, '2025-05-06 04:59:50.488172', '97', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(371, '2025-05-06 04:59:50.492042', '96', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(372, '2025-05-06 04:59:50.495444', '95', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(373, '2025-05-06 04:59:50.499338', '94', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(374, '2025-05-06 04:59:50.503319', '93', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(375, '2025-05-06 04:59:50.506200', '92', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(376, '2025-05-06 04:59:50.509088', '91', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(377, '2025-05-06 04:59:50.512021', '90', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(378, '2025-05-06 04:59:50.513958', '89', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(379, '2025-05-06 04:59:50.515913', '88', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(380, '2025-05-06 04:59:50.517866', '87', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(381, '2025-05-06 04:59:50.518843', '86', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(382, '2025-05-06 04:59:50.520823', '85', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(383, '2025-05-06 04:59:50.522775', '84', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(384, '2025-05-06 04:59:50.523722', '83', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(385, '2025-05-06 04:59:50.525674', '82', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(386, '2025-05-06 04:59:50.527631', '81', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(387, '2025-05-06 04:59:50.529578', '80', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(388, '2025-05-06 04:59:50.531745', '79', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(389, '2025-05-06 04:59:50.533794', '78', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(390, '2025-05-06 04:59:50.535435', '77', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(391, '2025-05-06 04:59:50.537415', '76', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(392, '2025-05-06 04:59:50.538391', '75', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(393, '2025-05-06 04:59:50.540503', '74', 'إشعار من b إلى ahmed mohamed - 3', 3, '', 58, 2),
(394, '2025-05-06 04:59:50.542676', '73', 'إشعار من ahmed mohamed إلى b - 3', 3, '', 58, 2),
(395, '2025-05-06 04:59:50.544638', '72', 'إشعار من b إلى ahmed mohamed - 1', 3, '', 58, 2),
(396, '2025-05-06 04:59:50.546586', '71', 'إشعار من ahmed mohamed إلى b - 1', 3, '', 58, 2),
(397, '2025-05-06 05:22:22.152594', '73', 'Booking #73 - room vip 2025 (5 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0645\\u063a\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\"]}}]', 13, 1),
(398, '2025-05-06 14:34:02.573068', '167', 'room vip 2025 - 29 rooms available on 2025-06-16', 3, '', 9, 2),
(399, '2025-05-06 14:34:02.581025', '88', 'غرفة قياسية مفردة - 100 rooms available on 2025-06-16', 3, '', 9, 2),
(400, '2025-05-06 14:34:02.585224', '166', 'room vip 2025 - 29 rooms available on 2025-06-15', 3, '', 9, 2),
(401, '2025-05-06 14:34:02.588967', '87', 'غرفة قياسية مفردة - 210 rooms available on 2025-06-15', 3, '', 9, 2),
(402, '2025-05-06 14:34:02.592492', '165', 'room vip 2025 - 29 rooms available on 2025-06-14', 3, '', 9, 2),
(403, '2025-05-06 14:34:02.596516', '86', 'غرفة قياسية مفردة - 210 rooms available on 2025-06-14', 3, '', 9, 2),
(404, '2025-05-06 14:34:02.600544', '164', 'room vip 2025 - 29 rooms available on 2025-06-13', 3, '', 9, 2),
(405, '2025-05-06 14:34:02.605186', '85', 'غرفة قياسية مفردة - 140 rooms available on 2025-06-13', 3, '', 9, 2),
(406, '2025-05-06 14:34:02.609052', '163', 'room vip 2025 - 29 rooms available on 2025-06-12', 3, '', 9, 2),
(407, '2025-05-06 14:34:02.613042', '84', 'غرفة قياسية مفردة - 220 rooms available on 2025-06-12', 3, '', 9, 2),
(408, '2025-05-06 14:34:02.617070', '162', 'room vip 2025 - 29 rooms available on 2025-06-11', 3, '', 9, 2),
(409, '2025-05-06 14:34:02.621142', '83', 'غرفة قياسية مفردة - 220 rooms available on 2025-06-11', 3, '', 9, 2),
(410, '2025-05-06 14:34:02.621142', '161', 'room vip 2025 - 29 rooms available on 2025-06-10', 3, '', 9, 2),
(411, '2025-05-06 14:34:02.627657', '82', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-10', 3, '', 9, 2),
(412, '2025-05-06 14:34:02.632452', '160', 'room vip 2025 - 29 rooms available on 2025-06-09', 3, '', 9, 2),
(413, '2025-05-06 14:34:02.632452', '81', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-09', 3, '', 9, 2),
(414, '2025-05-06 14:34:02.632452', '159', 'room vip 2025 - 29 rooms available on 2025-06-08', 3, '', 9, 2),
(415, '2025-05-06 14:34:02.642316', '80', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-08', 3, '', 9, 2),
(416, '2025-05-06 14:34:02.645965', '158', 'room vip 2025 - 29 rooms available on 2025-06-07', 3, '', 9, 2),
(417, '2025-05-06 14:34:02.649997', '79', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-07', 3, '', 9, 2),
(418, '2025-05-06 14:34:02.649997', '157', 'room vip 2025 - 29 rooms available on 2025-06-06', 3, '', 9, 2),
(419, '2025-05-06 14:34:02.649997', '78', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-06', 3, '', 9, 2),
(420, '2025-05-06 14:34:02.659822', '156', 'room vip 2025 - 29 rooms available on 2025-06-05', 3, '', 9, 2),
(421, '2025-05-06 14:34:02.664372', '77', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-05', 3, '', 9, 2),
(422, '2025-05-06 14:34:02.665407', '155', 'room vip 2025 - 29 rooms available on 2025-06-04', 3, '', 9, 2),
(423, '2025-05-06 14:34:02.665407', '76', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-04', 3, '', 9, 2),
(424, '2025-05-06 14:34:02.665407', '154', 'room vip 2025 - 29 rooms available on 2025-06-03', 3, '', 9, 2),
(425, '2025-05-06 14:34:02.678883', '75', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-03', 3, '', 9, 2),
(426, '2025-05-06 14:34:02.683067', '153', 'room vip 2025 - 29 rooms available on 2025-06-02', 3, '', 9, 2),
(427, '2025-05-06 14:34:02.684855', '74', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-02', 3, '', 9, 2),
(428, '2025-05-06 14:34:02.684855', '152', 'room vip 2025 - 29 rooms available on 2025-06-01', 3, '', 9, 2),
(429, '2025-05-06 14:34:02.693473', '73', 'غرفة قياسية مفردة - 13 rooms available on 2025-06-01', 3, '', 9, 2),
(430, '2025-05-06 14:34:02.697765', '151', 'room vip 2025 - 29 rooms available on 2025-05-31', 3, '', 9, 2),
(431, '2025-05-06 14:34:02.698800', '72', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-31', 3, '', 9, 2),
(432, '2025-05-06 14:34:02.698800', '150', 'room vip 2025 - 29 rooms available on 2025-05-30', 3, '', 9, 2),
(433, '2025-05-06 14:34:02.698800', '71', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-30', 3, '', 9, 2),
(434, '2025-05-06 14:34:02.712371', '149', 'room vip 2025 - 29 rooms available on 2025-05-29', 3, '', 9, 2),
(435, '2025-05-06 14:34:02.715946', '70', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-29', 3, '', 9, 2),
(436, '2025-05-06 14:34:02.716995', '148', 'room vip 2025 - 29 rooms available on 2025-05-28', 3, '', 9, 2),
(437, '2025-05-06 14:34:02.716995', '69', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-28', 3, '', 9, 2),
(438, '2025-05-06 14:34:02.725661', '147', 'room vip 2025 - 29 rooms available on 2025-05-27', 3, '', 9, 2),
(439, '2025-05-06 14:34:02.729466', '68', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-27', 3, '', 9, 2),
(440, '2025-05-06 14:34:02.731505', '146', 'room vip 2025 - 29 rooms available on 2025-05-26', 3, '', 9, 2),
(441, '2025-05-06 14:34:02.737412', '67', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-26', 3, '', 9, 2),
(442, '2025-05-06 14:34:02.738455', '145', 'room vip 2025 - 29 rooms available on 2025-05-25', 3, '', 9, 2),
(443, '2025-05-06 14:34:02.744258', '66', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-25', 3, '', 9, 2),
(444, '2025-05-06 14:34:02.748667', '144', 'room vip 2025 - 29 rooms available on 2025-05-24', 3, '', 9, 2),
(445, '2025-05-06 14:34:02.756153', '65', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-24', 3, '', 9, 2),
(446, '2025-05-06 14:34:02.759976', '143', 'room vip 2025 - 29 rooms available on 2025-05-23', 3, '', 9, 2),
(447, '2025-05-06 14:34:02.763662', '64', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-23', 3, '', 9, 2),
(448, '2025-05-06 14:34:02.765715', '142', 'room vip 2025 - 29 rooms available on 2025-05-22', 3, '', 9, 2),
(449, '2025-05-06 14:34:02.771205', '63', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-22', 3, '', 9, 2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(450, '2025-05-06 14:34:02.775170', '141', 'room vip 2025 - 29 rooms available on 2025-05-21', 3, '', 9, 2),
(451, '2025-05-06 14:34:02.779873', '62', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-21', 3, '', 9, 2),
(452, '2025-05-06 14:34:02.783590', '140', 'room vip 2025 - 29 rooms available on 2025-05-20', 3, '', 9, 2),
(453, '2025-05-06 14:34:02.784639', '61', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-20', 3, '', 9, 2),
(454, '2025-05-06 14:34:02.784639', '139', 'room vip 2025 - 29 rooms available on 2025-05-19', 3, '', 9, 2),
(455, '2025-05-06 14:34:02.793914', '60', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-19', 3, '', 9, 2),
(456, '2025-05-06 14:34:02.798500', '138', 'room vip 2025 - 29 rooms available on 2025-05-18', 3, '', 9, 2),
(457, '2025-05-06 14:34:02.800747', '59', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-18', 3, '', 9, 2),
(458, '2025-05-06 14:34:02.800747', '137', 'room vip 2025 - 29 rooms available on 2025-05-17', 3, '', 9, 2),
(459, '2025-05-06 14:34:02.808908', '58', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-17', 3, '', 9, 2),
(460, '2025-05-06 14:34:02.812697', '136', 'room vip 2025 - 29 rooms available on 2025-05-16', 3, '', 9, 2),
(461, '2025-05-06 14:34:02.815995', '57', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-16', 3, '', 9, 2),
(462, '2025-05-06 14:34:02.817044', '135', 'room vip 2025 - 29 rooms available on 2025-05-15', 3, '', 9, 2),
(463, '2025-05-06 14:34:02.817044', '56', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-15', 3, '', 9, 2),
(464, '2025-05-06 14:34:02.825661', '134', 'room vip 2025 - 29 rooms available on 2025-05-14', 3, '', 9, 2),
(465, '2025-05-06 14:34:02.830137', '55', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-14', 3, '', 9, 2),
(466, '2025-05-06 14:34:02.833924', '133', 'room vip 2025 - 29 rooms available on 2025-05-13', 3, '', 9, 2),
(467, '2025-05-06 14:34:02.836295', '54', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-13', 3, '', 9, 2),
(468, '2025-05-06 14:34:02.836295', '132', 'room vip 2025 - 29 rooms available on 2025-05-12', 3, '', 9, 2),
(469, '2025-05-06 14:34:02.844384', '53', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-12', 3, '', 9, 2),
(470, '2025-05-06 14:34:02.848583', '131', 'room vip 2025 - 29 rooms available on 2025-05-11', 3, '', 9, 2),
(471, '2025-05-06 14:34:02.852158', '52', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-11', 3, '', 9, 2),
(472, '2025-05-06 14:34:02.855425', '130', 'room vip 2025 - 29 rooms available on 2025-05-10', 3, '', 9, 2),
(473, '2025-05-06 14:34:02.858983', '51', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-10', 3, '', 9, 2),
(474, '2025-05-06 14:34:02.862854', '129', 'room vip 2025 - 29 rooms available on 2025-05-09', 3, '', 9, 2),
(475, '2025-05-06 14:34:02.866966', '50', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-09', 3, '', 9, 2),
(476, '2025-05-06 14:34:02.866966', '128', 'room vip 2025 - 29 rooms available on 2025-05-08', 3, '', 9, 2),
(477, '2025-05-06 14:34:02.875678', '49', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-08', 3, '', 9, 2),
(478, '2025-05-06 14:34:02.879766', '127', 'room vip 2025 - 28 rooms available on 2025-05-07', 3, '', 9, 2),
(479, '2025-05-06 14:34:02.883504', '48', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-07', 3, '', 9, 2),
(480, '2025-05-06 14:34:02.883504', '126', 'room vip 2025 - 41 rooms available on 2025-05-06', 3, '', 9, 2),
(481, '2025-05-06 14:34:02.883504', '47', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-06', 3, '', 9, 2),
(482, '2025-05-06 14:34:02.893335', '125', 'room vip 2025 - 28 rooms available on 2025-05-05', 3, '', 9, 2),
(483, '2025-05-06 14:34:02.897908', '46', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-05', 3, '', 9, 2),
(484, '2025-05-06 14:34:02.901569', '124', 'room vip 2025 - 29 rooms available on 2025-05-04', 3, '', 9, 2),
(485, '2025-05-06 14:34:02.901569', '45', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-04', 3, '', 9, 2),
(486, '2025-05-06 14:34:02.908995', '123', 'room vip 2025 - 29 rooms available on 2025-05-03', 3, '', 9, 2),
(487, '2025-05-06 14:34:02.913260', '44', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-03', 3, '', 9, 2),
(488, '2025-05-06 14:34:02.916804', '122', 'room vip 2025 - 29 rooms available on 2025-05-02', 3, '', 9, 2),
(489, '2025-05-06 14:34:02.919981', '43', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-02', 3, '', 9, 2),
(490, '2025-05-06 14:34:02.921016', '121', 'room vip 2025 - 29 rooms available on 2025-05-01', 3, '', 9, 2),
(491, '2025-05-06 14:34:02.926615', '42', 'غرفة قياسية مفردة - 13 rooms available on 2025-05-01', 3, '', 9, 2),
(492, '2025-05-06 14:34:02.930466', '120', 'room vip 2025 - 29 rooms available on 2025-04-30', 3, '', 9, 2),
(493, '2025-05-06 14:34:02.934596', '15', 'غرفة قياسية مفردة - 8 rooms available on 2025-04-30', 3, '', 9, 2),
(494, '2025-05-06 14:34:02.935638', '119', 'room vip 2025 - 29 rooms available on 2025-04-29', 3, '', 9, 2),
(495, '2025-05-06 14:34:02.945238', '14', 'غرفة قياسية مفردة - 28 rooms available on 2025-04-29', 3, '', 9, 2),
(496, '2025-05-06 14:34:02.948204', '118', 'room vip 2025 - 29 rooms available on 2025-04-28', 3, '', 9, 2),
(497, '2025-05-06 14:34:02.948204', '13', 'غرفة قياسية مفردة - 28 rooms available on 2025-04-28', 3, '', 9, 2),
(498, '2025-05-06 14:34:09.239492', '117', 'room vip 2025 - 29 rooms available on 2025-04-27', 3, '', 9, 2),
(499, '2025-05-06 14:34:09.243881', '12', 'غرفة قياسية مفردة - 28 rooms available on 2025-04-27', 3, '', 9, 2),
(500, '2025-05-06 14:34:09.247654', '116', 'room vip 2025 - 29 rooms available on 2025-04-26', 3, '', 9, 2),
(501, '2025-05-06 14:34:09.251027', '11', 'غرفة قياسية مفردة - 28 rooms available on 2025-04-26', 3, '', 9, 2),
(502, '2025-05-06 14:34:09.252067', '115', 'room vip 2025 - 29 rooms available on 2025-04-25', 3, '', 9, 2),
(503, '2025-05-06 14:34:09.257849', '10', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-25', 3, '', 9, 2),
(504, '2025-05-06 14:34:09.261405', '114', 'room vip 2025 - 29 rooms available on 2025-04-24', 3, '', 9, 2),
(505, '2025-05-06 14:34:09.265579', '9', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-24', 3, '', 9, 2),
(506, '2025-05-06 14:34:09.266569', '113', 'room vip 2025 - 32 rooms available on 2025-04-23', 3, '', 9, 2),
(507, '2025-05-06 14:34:09.272653', '8', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-23', 3, '', 9, 2),
(508, '2025-05-06 14:34:09.276129', '112', 'room vip 2025 - 42 rooms available on 2025-04-22', 3, '', 9, 2),
(509, '2025-05-06 14:34:09.279956', '7', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-22', 3, '', 9, 2),
(510, '2025-05-06 14:34:09.283044', '111', 'room vip 2025 - 60 rooms available on 2025-04-21', 3, '', 9, 2),
(511, '2025-05-06 14:34:09.287669', '6', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-21', 3, '', 9, 2),
(512, '2025-05-06 14:34:09.290160', '110', 'room vip 2025 - 57 rooms available on 2025-04-20', 3, '', 9, 2),
(513, '2025-05-06 14:34:09.295126', '5', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-20', 3, '', 9, 2),
(514, '2025-05-06 14:34:09.298886', '109', 'room vip 2025 - 46 rooms available on 2025-04-19', 3, '', 9, 2),
(515, '2025-05-06 14:34:09.302447', '4', 'غرفة قياسية مفردة - 31 rooms available on 2025-04-19', 3, '', 9, 2),
(516, '2025-05-06 14:34:09.309348', '168', 'room vip 2025 - 16 rooms available on 2025-04-18', 3, '', 9, 2),
(517, '2025-05-06 14:34:09.315467', '3', 'غرفة قياسية مفردة - 16 rooms available on 2025-04-18', 3, '', 9, 2),
(518, '2025-05-06 14:34:09.322180', '31', 'room vip 2025 - 30 rooms available on 2025-04-17', 3, '', 9, 2),
(519, '2025-05-06 14:34:09.329008', '2', 'غرفة قياسية مزدوجة - 5 rooms available on 2025-04-17', 3, '', 9, 2),
(520, '2025-05-06 14:34:09.332690', '41', 'غرفة قياسية مفردة - 13 rooms available on 2025-04-17', 3, '', 9, 2),
(521, '2025-05-06 14:34:09.337073', '1', 'غرفة قياسية مزدوجة - 10 rooms available on 2025-04-16', 3, '', 9, 2),
(522, '2025-05-06 14:34:09.339172', '16', 'غرفة قياسية مفردة - 6 rooms available on 2025-04-16', 3, '', 9, 2),
(523, '2025-05-06 14:34:44.523216', '169', 'room vip 2025 - 10 rooms available on 2025-05-06', 1, '[{\"added\": {}}]', 9, 2),
(524, '2025-05-06 14:52:18.263419', '28', 'دفعة #28 لحجز 28', 1, '[{\"added\": {}}]', 52, 2),
(525, '2025-05-06 14:52:21.200761', '2', 'حركة #2 - حجز 74', 2, '[{\"changed\": {\"fields\": [\"\\u0631\\u0642\\u0645 \\u0633\\u0646\\u062f \\u0627\\u0644\\u062f\\u0641\\u0639\"]}}]', 15, 2),
(526, '2025-05-06 15:02:15.045591', '3', 'حركة #3 - حجز 73', 3, '', 15, 2),
(527, '2025-05-06 15:02:15.058192', '2', 'حركة #2 - حجز 74', 3, '', 15, 2),
(528, '2025-05-06 15:02:15.063636', '1', 'حركة #1 - حجز 4', 3, '', 15, 2),
(529, '2025-05-06 15:03:40.707591', '195', 'غرفة قياسية مفردة - 10 rooms available on 2025-06-15', 2, '[{\"changed\": {\"fields\": [\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0641\\u0631\\u0629\"]}}]', 9, 2),
(530, '2025-05-06 16:53:04.055122', '1', 'cate 1', 1, '[{\"added\": {}}]', 25, 1),
(531, '2025-05-06 16:53:16.190204', '1', 'tag 1', 1, '[{\"added\": {}}]', 26, 1),
(532, '2025-05-06 16:53:48.666812', '1', 'ahmed title blog', 1, '[{\"added\": {}}]', 23, 1),
(533, '2025-05-07 21:11:29.943626', '1', 'Hotel Managers', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 2),
(534, '2025-05-07 21:11:46.976871', '1', 'Hotel Managers', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 2),
(535, '2025-05-08 08:38:49.997350', '195', 'غرفة قياسية مفردة - 7 rooms available on 2025-05-15', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\"]}}]', 9, 2),
(536, '2025-05-08 08:38:56.523197', '196', 'غرفة قياسية مفردة - 7 rooms available on 2025-05-16', 2, '[{\"changed\": {\"fields\": [\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u062a\\u0648\\u0641\\u0631\"]}}]', 9, 2),
(537, '2025-05-08 08:53:01.985036', '79', 'Booking #79 - غرفة قياسية مفردة (1 rooms)', 2, '[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"]}}]', 13, 2);

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
(34, 'accounts', 'chartofaccounts'),
(35, 'accounts', 'journalentry'),
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(31, 'auth', 'permission'),
(3, 'auth', 'user'),
(66, 'authtoken', 'token'),
(67, 'authtoken', 'tokenproxy'),
(25, 'blog', 'category'),
(24, 'blog', 'comment'),
(23, 'blog', 'post'),
(26, 'blog', 'tag'),
(13, 'bookings', 'booking'),
(14, 'bookings', 'bookingdetail'),
(50, 'bookings', 'bookinghistory'),
(15, 'bookings', 'extensionmovement'),
(51, 'bookings', 'guest'),
(32, 'contenttypes', 'contenttype'),
(59, 'customer', 'favourites'),
(65, 'django_celery_beat', 'clockedschedule'),
(60, 'django_celery_beat', 'crontabschedule'),
(61, 'django_celery_beat', 'intervalschedule'),
(62, 'django_celery_beat', 'periodictask'),
(63, 'django_celery_beat', 'periodictasks'),
(64, 'django_celery_beat', 'solarschedule'),
(37, 'home', 'contactmessage'),
(38, 'home', 'heroslider'),
(39, 'home', 'infobox'),
(40, 'home', 'partner'),
(41, 'home', 'paymenpolicy'),
(42, 'home', 'pricingplan'),
(43, 'home', 'privacypolicy'),
(44, 'home', 'roomtypehome'),
(45, 'home', 'setting'),
(46, 'home', 'socialmedialink'),
(47, 'home', 'teammember'),
(48, 'home', 'termsconditions'),
(49, 'home', 'testimonial'),
(21, 'HotelManagement', 'city'),
(18, 'HotelManagement', 'hotel'),
(30, 'HotelManagement', 'hotelrequest'),
(19, 'HotelManagement', 'image'),
(22, 'HotelManagement', 'location'),
(20, 'HotelManagement', 'phone'),
(58, 'notifications', 'notifications'),
(74, 'oauth2_provider', 'accesstoken'),
(73, 'oauth2_provider', 'application'),
(75, 'oauth2_provider', 'grant'),
(77, 'oauth2_provider', 'idtoken'),
(76, 'oauth2_provider', 'refreshtoken'),
(27, 'payments', 'currency'),
(29, 'payments', 'hotelpaymentmethod'),
(52, 'payments', 'payment'),
(53, 'payments', 'paymenthistory'),
(28, 'payments', 'paymentoption'),
(17, 'reviews', 'hotelreview'),
(16, 'reviews', 'roomreview'),
(9, 'rooms', 'availability'),
(6, 'rooms', 'category'),
(7, 'rooms', 'roomimage'),
(8, 'rooms', 'roomprice'),
(10, 'rooms', 'roomstatus'),
(5, 'rooms', 'roomtype'),
(54, 'services', 'coupon'),
(12, 'services', 'hotelservice'),
(55, 'services', 'offer'),
(11, 'services', 'roomtypeservice'),
(33, 'sessions', 'session'),
(68, 'social_django', 'association'),
(69, 'social_django', 'code'),
(70, 'social_django', 'nonce'),
(72, 'social_django', 'partial'),
(71, 'social_django', 'usersocialauth'),
(56, 'token_blacklist', 'blacklistedtoken'),
(57, 'token_blacklist', 'outstandingtoken'),
(36, 'users', 'activitylog'),
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
(1, 'contenttypes', '0001_initial', '2025-04-15 20:32:15.632211'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-04-15 20:32:15.687538'),
(3, 'auth', '0001_initial', '2025-04-15 20:32:15.885211'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-04-15 20:32:15.941664'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-04-15 20:32:15.943071'),
(6, 'auth', '0004_alter_user_username_opts', '2025-04-15 20:32:15.954008'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-04-15 20:32:15.959591'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-04-15 20:32:15.963581'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-04-15 20:32:15.969301'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-04-15 20:32:15.970521'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-04-15 20:32:15.979280'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-04-15 20:32:15.986684'),
(13, 'auth', '0011_update_proxy_permissions', '2025-04-15 20:32:15.995659'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-04-15 20:32:16.000510'),
(15, 'auth', '0013_alter_permission_options', '2025-04-15 20:32:16.005742'),
(16, 'auth', '0014_alter_permission_options_alter_user_user_permissions', '2025-04-15 20:32:16.013445'),
(17, 'auth', '0015_alter_user_user_permissions', '2025-04-15 20:32:16.019135'),
(18, 'accounts', '0001_initial', '2025-04-15 20:32:16.043739'),
(19, 'users', '0001_initial', '2025-04-15 20:32:16.451265'),
(20, 'HotelManagement', '0001_initial', '2025-04-15 20:32:16.542838'),
(21, 'HotelManagement', '0002_initial', '2025-04-15 20:32:17.733352'),
(22, 'accounts', '0002_initial', '2025-04-15 20:32:18.082301'),
(23, 'admin', '0001_initial', '2025-04-15 20:32:18.195587'),
(24, 'admin', '0002_logentry_remove_auto_add', '2025-04-15 20:32:18.216783'),
(25, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-15 20:32:18.237678'),
(26, 'authtoken', '0001_initial', '2025-04-15 20:32:18.321449'),
(27, 'authtoken', '0002_auto_20160226_1747', '2025-04-15 20:32:18.359866'),
(28, 'authtoken', '0003_tokenproxy', '2025-04-15 20:32:18.377762'),
(29, 'authtoken', '0004_alter_tokenproxy_options', '2025-04-15 20:32:18.383172'),
(30, 'blog', '0001_initial', '2025-04-15 20:32:18.449053'),
(31, 'blog', '0002_initial', '2025-04-15 20:32:19.392229'),
(32, 'services', '0001_initial', '2025-04-15 20:32:19.452981'),
(33, 'rooms', '0001_initial', '2025-04-15 20:32:19.559453'),
(34, 'payments', '0001_initial', '2025-04-15 20:32:19.628358'),
(35, 'bookings', '0001_initial', '2025-04-15 20:32:19.768278'),
(36, 'bookings', '0002_initial', '2025-04-15 20:32:21.422953'),
(37, 'customer', '0001_initial', '2025-04-15 20:32:21.427494'),
(38, 'customer', '0002_initial', '2025-04-15 20:32:21.742322'),
(39, 'django_celery_beat', '0001_initial', '2025-04-15 20:32:21.910261'),
(40, 'django_celery_beat', '0002_auto_20161118_0346', '2025-04-15 20:32:21.989147'),
(41, 'django_celery_beat', '0003_auto_20161209_0049', '2025-04-15 20:32:22.009463'),
(42, 'django_celery_beat', '0004_auto_20170221_0000', '2025-04-15 20:32:22.014334'),
(43, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2025-04-15 20:32:22.022457'),
(44, 'django_celery_beat', '0006_auto_20180322_0932', '2025-04-15 20:32:22.078600'),
(45, 'django_celery_beat', '0007_auto_20180521_0826', '2025-04-15 20:32:22.111013'),
(46, 'django_celery_beat', '0008_auto_20180914_1922', '2025-04-15 20:32:22.143426'),
(47, 'django_celery_beat', '0006_auto_20180210_1226', '2025-04-15 20:32:22.165610'),
(48, 'django_celery_beat', '0006_periodictask_priority', '2025-04-15 20:32:22.186677'),
(49, 'django_celery_beat', '0009_periodictask_headers', '2025-04-15 20:32:22.212340'),
(50, 'django_celery_beat', '0010_auto_20190429_0326', '2025-04-15 20:32:22.395072'),
(51, 'django_celery_beat', '0011_auto_20190508_0153', '2025-04-15 20:32:22.483387'),
(52, 'django_celery_beat', '0012_periodictask_expire_seconds', '2025-04-15 20:32:22.492653'),
(53, 'django_celery_beat', '0013_auto_20200609_0727', '2025-04-15 20:32:22.513693'),
(54, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2025-04-15 20:32:22.529886'),
(55, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2025-04-15 20:32:22.601694'),
(56, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2025-04-15 20:32:22.641557'),
(57, 'django_celery_beat', '0017_alter_crontabschedule_month_of_year', '2025-04-15 20:32:22.729152'),
(58, 'django_celery_beat', '0018_improve_crontab_helptext', '2025-04-15 20:32:22.737617'),
(59, 'django_celery_beat', '0019_alter_periodictasks_options', '2025-04-15 20:32:22.745085'),
(60, 'home', '0001_initial', '2025-04-15 20:32:22.926102'),
(61, 'home', '0002_initial', '2025-04-15 20:32:23.347628'),
(62, 'notifications', '0001_initial', '2025-04-15 20:32:23.364739'),
(63, 'notifications', '0002_initial', '2025-04-15 20:32:23.645766'),
(64, 'oauth2_provider', '0001_initial', '2025-04-15 20:32:24.395517'),
(65, 'oauth2_provider', '0002_auto_20190406_1805', '2025-04-15 20:32:24.544924'),
(66, 'oauth2_provider', '0003_auto_20201211_1314', '2025-04-15 20:32:24.622214'),
(67, 'oauth2_provider', '0004_auto_20200902_2022', '2025-04-15 20:32:24.990916'),
(68, 'oauth2_provider', '0005_auto_20211222_2352', '2025-04-15 20:32:25.146478'),
(69, 'oauth2_provider', '0006_alter_application_client_secret', '2025-04-15 20:32:25.295882'),
(70, 'oauth2_provider', '0007_application_post_logout_redirect_uris', '2025-04-15 20:32:25.333579'),
(71, 'oauth2_provider', '0008_alter_accesstoken_token', '2025-04-15 20:32:25.366209'),
(72, 'oauth2_provider', '0009_add_hash_client_secret', '2025-04-15 20:32:25.410289'),
(73, 'oauth2_provider', '0010_application_allowed_origins', '2025-04-15 20:32:25.443867'),
(74, 'oauth2_provider', '0011_refreshtoken_token_family', '2025-04-15 20:32:25.480233'),
(75, 'oauth2_provider', '0012_add_token_checksum', '2025-04-15 20:32:25.881595'),
(76, 'payments', '0002_initial', '2025-04-15 20:32:27.634575'),
(77, 'reviews', '0001_initial', '2025-04-15 20:32:27.662336'),
(78, 'reviews', '0002_initial', '2025-04-15 20:32:28.716740'),
(79, 'rooms', '0002_initial', '2025-04-15 20:32:30.908060'),
(80, 'services', '0002_initial', '2025-04-15 20:32:32.108229'),
(81, 'sessions', '0001_initial', '2025-04-15 20:32:32.167731'),
(82, 'default', '0001_initial', '2025-04-15 20:32:32.412535'),
(83, 'social_auth', '0001_initial', '2025-04-15 20:32:32.412535'),
(84, 'default', '0002_add_related_name', '2025-04-15 20:32:32.535922'),
(85, 'social_auth', '0002_add_related_name', '2025-04-15 20:32:32.543428'),
(86, 'default', '0003_alter_email_max_length', '2025-04-15 20:32:32.543428'),
(87, 'social_auth', '0003_alter_email_max_length', '2025-04-15 20:32:32.561410'),
(88, 'default', '0004_auto_20160423_0400', '2025-04-15 20:32:32.599042'),
(89, 'social_auth', '0004_auto_20160423_0400', '2025-04-15 20:32:32.610843'),
(90, 'social_auth', '0005_auto_20160727_2333', '2025-04-15 20:32:32.629215'),
(91, 'social_django', '0006_partial', '2025-04-15 20:32:32.663218'),
(92, 'social_django', '0007_code_timestamp', '2025-04-15 20:32:32.682989'),
(93, 'social_django', '0008_partial_timestamp', '2025-04-15 20:32:32.715324'),
(94, 'social_django', '0009_auto_20191118_0520', '2025-04-15 20:32:32.810445'),
(95, 'social_django', '0010_uid_db_index', '2025-04-15 20:32:32.869536'),
(96, 'social_django', '0011_alter_id_fields', '2025-04-15 20:32:33.163219'),
(97, 'social_django', '0012_usersocialauth_extra_data_new', '2025-04-15 20:32:33.227502'),
(98, 'social_django', '0013_migrate_extra_data', '2025-04-15 20:32:33.290507'),
(99, 'social_django', '0014_remove_usersocialauth_extra_data', '2025-04-15 20:32:33.351815'),
(100, 'social_django', '0015_rename_extra_data_new_usersocialauth_extra_data', '2025-04-15 20:32:33.492150'),
(101, 'social_django', '0016_alter_usersocialauth_extra_data', '2025-04-15 20:32:33.610608'),
(102, 'token_blacklist', '0001_initial', '2025-04-15 20:32:33.824724'),
(103, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2025-04-15 20:32:33.877519'),
(104, 'token_blacklist', '0003_auto_20171017_2007', '2025-04-15 20:32:33.956243'),
(105, 'token_blacklist', '0004_auto_20171017_2013', '2025-04-15 20:32:34.042462'),
(106, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2025-04-15 20:32:34.097671'),
(107, 'token_blacklist', '0006_auto_20171017_2113', '2025-04-15 20:32:34.148847'),
(108, 'token_blacklist', '0007_auto_20171017_2214', '2025-04-15 20:32:34.612204'),
(109, 'token_blacklist', '0008_migrate_to_bigautofield', '2025-04-15 20:32:34.898937'),
(110, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2025-04-15 20:32:34.947058'),
(111, 'token_blacklist', '0011_linearizes_history', '2025-04-15 20:32:34.961479'),
(112, 'token_blacklist', '0012_alter_outstandingtoken_user', '2025-04-15 20:32:35.007176'),
(113, 'social_django', '0001_initial', '2025-04-15 20:32:35.015363'),
(114, 'social_django', '0004_auto_20160423_0400', '2025-04-15 20:32:35.019115'),
(115, 'social_django', '0003_alter_email_max_length', '2025-04-15 20:32:35.022454'),
(116, 'social_django', '0002_add_related_name', '2025-04-15 20:32:35.027528'),
(117, 'social_django', '0005_auto_20160727_2333', '2025-04-15 20:32:35.031723'),
(118, 'rooms', '0003_remove_availability_room_status_delete_roomstatus', '2025-04-15 21:51:17.159148'),
(119, 'payments', '0003_alter_payment_payment_discount_code', '2025-04-16 12:15:12.066768'),
(120, 'users', '0002_alter_customuser_image', '2025-04-17 09:29:29.173711'),
(121, 'HotelManagement', '0003_alter_location_unique_together', '2025-05-03 18:50:59.993262'),
(122, 'bookings', '0003_remove_booking_parent_booking', '2025-05-07 21:10:11.967587');

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
('4sb8zplfc91mupcgcixfppngph0ufalu', '.eJxVjDsOwjAQBe_iGlmxN_5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtsTirrQNWwZNxQTGOmGzQISCDst5p8EDJJCpQIA-GgiEYgRwOiCjeH9LUN9M:1uCLX8:tCZA4ySXKBX4GzpartTzAetaAP-E1AOCZqNbNdak32k', '2025-05-20 16:52:42.120240'),
('7k0o9myptan8x2puyekzhpxqszo5sy8g', 'e30:1u5ArB:GSrrpW8O6O-nagl-UFMBsfGKp5txg9LdzAXx1_PyWEY', '2025-04-30 22:03:45.654173'),
('b4jl7u4wijk5i1cbla86lgg9whxjiwpy', '.eJxVjEEOwiAQRe_C2hCgMFCX7j0DYZhBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWRpx-N0z5wW0HdE_tNss8t3WZUO6KPGiX15n4eTncv4Oaev3WjBAADCnIaBCy9xrBsFUAbA2jthhQDQC2pAADFc00FjcW7ZxHm8X7A99IN9s:1uCK0i:rQ5-6EPYa_e3D-MpnkekV6xsRU2gH-_saUrbWnkiV3w', '2025-05-20 15:15:08.741619'),
('dyuahzpwkysec1ck6j8lyaouufmel01j', '.eJxVjEEOwiAQAP_C2RAWqEs9evcNBHZBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxUWAOP2yGOiZ6hD8CPXeJLW6rUuUI5GH7fLWOL2uR_s3KKGXsVWsM2iasj2jw2zQGYcEhiNoO-eETMgzQtZogZXKbAEnUkYzRdLi8wXI_Tdw:1u5Urb:Kjbo5rNt3pK23BppZwWb4VLkkBS4taCD15DSR7-xDl0', '2025-05-01 19:25:31.038136'),
('ejkt477rw2a80094croirlqf5oo8udpr', '.eJxVjEEOwiAQAP_C2RAWqEs9evcNBHZBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxUWAOP2yGOiZ6hD8CPXeJLW6rUuUI5GH7fLWOL2uR_s3KKGXsVWsM2iasj2jw2zQGYcEhiNoO-eETMgzQtZogZXKbAEnUkYzRdLi8wXI_Tdw:1u523H:t5jmDlNtAdC-vzmRaQ3RwYYjHsZaPAQEg7gUQcSFTdE', '2025-04-30 12:39:39.712488'),
('esq0e8g63f0967plbc6jnkgqcpav9lzm', '.eJxVjEEOwiAQRe_C2hCgMFCX7j0DYZhBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWRpx-N0z5wW0HdE_tNss8t3WZUO6KPGiX15n4eTncv4Oaev3WjBAADCnIaBCy9xrBsFUAbA2jthhQDQC2pAADFc00FjcW7ZxHm8X7A99IN9s:1uCwzJ:Kf1exuRnc3ROhZ_9ElLt1a5cAfCRW7jRDPDAkMEoLFY', '2025-05-22 08:52:17.563729'),
('f7qhj736ma7kswdfnf6mi9z7bvz6mztp', '.eJxVjDsOwjAQBe_iGlmxN_5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtsTirrQNWwZNxQTGOmGzQISCDst5p8EDJJCpQIA-GgiEYgRwOiCjeH9LUN9M:1uC04k:fau-glyiJ1MJ7o3ymekTk0pBHH4o2EK1rT0BCDmZJeo', '2025-05-19 17:57:58.403320'),
('fds2ho0u7vu979sxh8qmx6jkxc7b409g', '.eJxVjEEOwiAQRe_C2hBaoKRduvcMZJgZLGrAlDapMd7dNulCt_-9_97CwzKPfqk8-URiEFacfrcAeOe8A7pBvhaJJc9TCnJX5EGrvBTix_lw_wIj1HF7x87aVmtNCnvXIZDqrAtKO2CFHAhjBCRyxmhqGxtpU3Vka6Kj3thmj1auNZXseX2m6SUG9fkCrIc_zg:1uCaVv:1SkGfpLwYgVJGD2OUQ0Uke1IfkyLukBWTFWQo0T9eEk', '2025-05-21 08:52:27.569661'),
('g4wlgtpiv2xt5m3zt3ya2484a9sorf76', '.eJxVjEEOwiAQAP_C2RAWqEs9evcNBHZBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxUWAOP2yGOiZ6hD8CPXeJLW6rUuUI5GH7fLWOL2uR_s3KKGXsVWsM2iasj2jw2zQGYcEhiNoO-eETMgzQtZogZXKbAEnUkYzRdLi8wXI_Tdw:1u64c5:MuFJEHakpgC1r4YO9LztD70Oy75oj-TaKaCpUeieWhA', '2025-05-03 09:35:53.910792'),
('j2sjqvwhsz0v2mgx1m0mn1qdn61fky8l', '.eJxVjEEOwiAQRe_C2hBBHKFL956BDANjUQOmtInGeHdb04Vu_3v_vYTHaez91NLgcxSdUGLzuwWkayoLiBcs5yqplnHIQS6KXGmTpxrT7bi6f4EeWz-_bWAGZx0lFQzoA0TUDiiQVqiNjtZy3CMCKzDMDmZqgiEyvKOo6RttqbVci0-Pex6eotu-P7QbQA4:1uBMXe:fRfvAYXVTa72EC9ejtFdvg3uigb2XIftk5iOZ8zILEc', '2025-05-17 23:45:10.273837'),
('k3qvtrm3ae4q3oegezhatyjgjpf46pdn', '.eJxVjMEOwiAQBf-FsyFA6dL26N1vICwsFjVgSptojP-uJD3o9c28eTHrtnW2W6XFpsAmptjhd0Pnr5QbCBeXz4X7ktclIW8K32nlpxLodtzdv8Ds6vx9E8IAoIIAjwrBGyMRFGkBQFoRSo0Dig5ARzdAF6KkMMZ-jLLvDWrfopVqTSVbetzT8mSTeH8Ahro_GA:1uCJOa:98QtfLigiVC6LIsQ4ux75u-J_C-2RktGYF9a5YvT4FI', '2025-05-20 14:35:44.742417'),
('kjg558n4pr2uowxosu1xwabuj9h78dk3', '.eJxVjDsOwjAQBe_iGln-xD9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZFez0OybID2o7wTu0W-e5t3WZE98VftDBrx3peTncv4MKo37rki0EBaFASs6TxVImr4srQYPHSWEWBrNRUmNCmdFRIJIOhCVKxnj2_gBILDmZ:1u5YBy:ZI6G5Py26DPnYjC4ym5jxhP8wfexvxsD2q4yxKQe9P4', '2025-05-01 22:58:46.404184'),
('knqijirnduxweaj2ee0cr7zpcbmihrep', '.eJxVjEEOwiAQRe_C2hCgMFCX7j0DYZhBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWRpx-N0z5wW0HdE_tNss8t3WZUO6KPGiX15n4eTncv4Oaev3WjBAADCnIaBCy9xrBsFUAbA2jthhQDQC2pAADFc00FjcW7ZxHm8X7A99IN9s:1uCEI4:pUosZAB5-L1mO2p5ppxRk1ceOBhWjDlMi9FirtA0bSU', '2025-05-20 09:08:40.384466'),
('m09vkf1qu8rv9h3w3mxevk31vba8zrmm', '.eJxVjEEOwiAQAP_C2RAWqEs9evcNBHZBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxUWAOP2yGOiZ6hD8CPXeJLW6rUuUI5GH7fLWOL2uR_s3KKGXsVWsM2iasj2jw2zQGYcEhiNoO-eETMgzQtZogZXKbAEnUkYzRdLi8wXI_Tdw:1u65IU:uEVeFEl0aXc8VB7Zs0SyalyHlLYknK5Gdn8wOXI7iJo', '2025-05-03 10:19:42.408473'),
('mk9pc3p86zxwxogqxk49hhfylgvwsqcy', '.eJxVjEEOwiAQAP_C2RAWqEs9evcNBHZBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxUWAOP2yGOiZ6hD8CPXeJLW6rUuUI5GH7fLWOL2uR_s3KKGXsVWsM2iasj2jw2zQGYcEhiNoO-eETMgzQtZogZXKbAEnUkYzRdLi8wXI_Tdw:1u52mG:_Fpep5V-lOg7wEXYpP_HNLM7Ddqa7jXKYYQzxAJUzO0', '2025-04-30 13:26:08.212357'),
('or9par6o6rbivps7k8h7ipipnn9roow9', '.eJxVjDsOwjAQBe_iGlmxN_5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtsTirrQNWwZNxQTGOmGzQISCDst5p8EDJJCpQIA-GgiEYgRwOiCjeH9LUN9M:1uC20S:Wln73-KtopKO9sTjO-UEU9gbwq-zvFuhfSeJTcto-xA', '2025-05-19 20:01:40.996774'),
('shuofbfzprlx3fvm3n02wq1ycvcctv1v', 'e30:1uCmtC:IniKLFvx89VYSQRpUtwplBtQEZ217VSTgqq33dz5H0g', '2025-05-21 22:05:18.901664'),
('sxcvujj4ep4w2sv31i9mqyb4multdr6f', '.eJxVjMEKwjAQRP8lZynZuI1pj979hrCbbG1UEmlaUMR_twUPehtm3ryX8rTMo1-qTD5F1Str1O63ZApXydsSL5TPpQklz1PiZkOa71qbU4lyO37ZP8FIdVzfTuNhj0JW4oDEDIxBCxrkASyhMBBaZwCQtYYAARFa28EanGsHu0mr1JpK9vK4p-mpejC6s1q_PygSP_I:1uC4ha:qZ3rQgWs1Et45w91TKiSyaqcQRCeaRHYRaLnblIchZg', '2025-05-19 22:54:22.976988'),
('tch2l6qguxti1uer3hbsrl3vefc0v0lo', '.eJxVjDsOwjAQBe_iGlmxN_5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtsTirrQNWwZNxQTGOmGzQISCDst5p8EDJJCpQIA-GgiEYgRwOiCjeH9LUN9M:1uD2On:dDtVRPNtoc_AS6SsyH4JHyR55jdqZhNIBwIXbnnPILQ', '2025-05-22 14:38:57.116760'),
('tih8behfxfd7ay4w3st2mn01vvwqd1lw', '.eJxVjDsOwjAQBe_iGlmxN_5R0nMGa9dr4wBypDipEHeHSCmgfTPzXiLitta49bzEicVZKHH63QjTI7cd8B3bbZZpbusykdwVedAurzPn5-Vw_w4q9vqtsTirrQNWwZNxQTGOmGzQISCDst5p8EDJJCpQIA-GgiEYgRwOiCjeH9LUN9M:1uC1Gp:M-dp6K1XSxf3etoqHHOYbizyr9iTI2nRpeUAjitZ9qw', '2025-05-19 19:14:31.746718'),
('ts93bqe1ld68ti6udntlgre9uqkg4q83', 'e30:1u5Aoq:oaxQXGnWuPvDZIXIF8m09ycyDae3OHayfkxjO9XFIgs', '2025-04-30 22:01:20.707006'),
('u2fwopfl0b9lujfz1lrwhuopzz905kj5', '.eJxVjEEOwiAQRe_C2hBBHKFL956BDANjUQOmtInGeHdb04Vu_3v_vYTHaez91NLgcxSdUGLzuwWkayoLiBcs5yqplnHIQS6KXGmTpxrT7bi6f4EeWz-_bWAGZx0lFQzoA0TUDiiQVqiNjtZy3CMCKzDMDmZqgiEyvKOo6RttqbVci0-Pex6eotu-P7QbQA4:1uBM4F:aJ8A4pW-MkBAscfMit7YkwrXRq-_n1ap5YoY31PO128', '2025-05-17 23:14:47.471062'),
('wl44cqxk3n4j7e2xsgftizfumqkigu9f', '.eJxVjMsOwiAQRf-FtSG8plNduvcbCAwTixowpU00xn9Xki50e8659yV8WJfJr41nn5M4iEGL3S-Mga5cukmXUM5VUi3LnKPsidxsk6ea-Hbc2r-DKbSpr6NRmFBpQjs6VOCiBQMQMFLAQSvF4_5LRk5u4AiOwJC2TOQArYF-2ri1XIvnxz3PT3FQ7w95gD5H:1u5ufj:-GPDrRIJEWTDOk7lWIGOY1DESTMdXBlmkgNzmEmhIf0', '2025-05-02 22:58:59.511397'),
('wrqn052hmnr2i72drwze91vgh4iayqz4', '.eJxVjEEOwiAQRe_C2hBaoKRduvcMZJgZLGrAlDapMd7dNulCt_-9_97CwzKPfqk8-URiEFacfrcAeOe8A7pBvhaJJc9TCnJX5EGrvBTix_lw_wIj1HF7x87aVmtNCnvXIZDqrAtKO2CFHAhjBCRyxmhqGxtpU3Vka6Kj3thmj1auNZXseX2m6SUG9fkCrIc_zg:1uCxA5:-3C3rhCTNX8xtd7nlI2CpwtfPfHQvoR-U01u-Al0hI4', '2025-05-22 09:03:25.675550'),
('x543nyevsvz36wki5u0l2osy0cnzcv1v', '.eJxVjEEOwiAQRe_C2hCgMFCX7j0DYZhBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWRpx-N0z5wW0HdE_tNss8t3WZUO6KPGiX15n4eTncv4Oaev3WjBAADCnIaBCy9xrBsFUAbA2jthhQDQC2pAADFc00FjcW7ZxHm8X7A99IN9s:1uCANd:j8kVxnKPP2_xZJ6Z7Es0QJgUZKMeNCqiqpPSBAoTC3g', '2025-05-20 04:58:09.912684');

-- --------------------------------------------------------

--
-- Table structure for table `home_contactmessage`
--

CREATE TABLE `home_contactmessage` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'slider_images/hero-bg.jpg', 'slider_images/hero-bg2.jpg', 'slider_images/hero--bg2.jpg', 'أهلاً بك في ديار', 'رحلتك تبداء - بديار - \r\nاكتشف أفضل الفنادق في اليمن.', 1);

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
(1, 'la la-tree', 'سهولة الحجز', 'بضع نقرات وتكون جاهزًا.', 1),
(2, 'las la-radiation', 'إقامة لا تُنسى', 'اختر راحتك كما تحب.', 1),
(3, 'las la-map-marked-alt', 'موقع مثالي', 'قريب من كل شيء مهم.', 1),
(4, 'las la-bed', 'خيارات متعددة', 'فنادق تناسب كل الأذواق.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_partner`
--

CREATE TABLE `home_partner` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_paymenpolicy`
--

CREATE TABLE `home_paymenpolicy` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pricingplan`
--

CREATE TABLE `home_pricingplan` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `features` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_primary` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_pricingplan`
--

INSERT INTO `home_pricingplan` (`id`, `title`, `price`, `duration`, `features`, `is_active`, `is_primary`) VALUES
(1, 'عادي', 10000.00, 'كل شهر', 'مساحة القرص 250 جيجا بايت\r\nعرض النطاق الترددي 25 جيجا بايت\r\nقواعد البيانات 1\r\nحسابات البريد الإلكتروني NO\r\nدعم 24 ساعة NO\r\nدعم البريد الإلكتروني NO', 1, 0),
(2, 'اساسي', 15000.00, 'كل شهر', 'مساحة القرص 350 جيجا بايت\r\n\r\nعرض النطاق الترددي 45 جيجا بايت\r\n\r\nقواعد البيانات 1\r\n\r\nحسابات البريد الإلكتروني نعم\r\n\r\nدعم 24 ساعة NO\r\n\r\nدعم البريد الإلكتروني NO', 1, 1),
(3, 'الممتازة', 30000.00, 'كل شهر', 'مساحة القرص 500 جيجا بايت\r\nعرض النطاق الترددي 125 جيجا بايت\r\nقواعد البيانات 1\r\nحسابات البريد الإلكتروني نعم\r\nدعم 24 ساعة نعم\r\nدعم البريد الإلكتروني نعم', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_privacypolicy`
--

CREATE TABLE `home_privacypolicy` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_privacypolicy`
--

INSERT INTO `home_privacypolicy` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `content`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-05-03 20:15:44.826425', '2025-05-03 20:34:33.008023', NULL, 'سياسة الخصوصية – ديار لحجوزات الفنادق', '<p>&nbsp;</p>\r\n\r\n<p><strong>سياسة الخصوصية &ndash; ديار لحجوزات الفنادق</strong></p>\r\n\r\n<p>في <strong>ديار</strong>، نولي أهمية كبيرة لحماية خصوصيتك. توضح هذه السياسة كيفية جمع واستخدام ومشاركة بياناتك الشخصية عند استخدامك منصتنا.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>١ - المعلومات التي نجمعها:</strong></p>\r\n\r\n<p>- الاسم الكامل</p>\r\n\r\n<p>- رقم الهاتف</p>\r\n\r\n<p>- البريد الإلكتروني</p>\r\n\r\n<p>- تفاصيل الحجز (تواريخ، نوع الغرفة، عدد الأشخاص)</p>\r\n\r\n<p>- بيانات الدفع (تُعالج عبر بوابات آمنة ولا يتم حفظها لدينا)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٢ - استخدام المعلومات:</strong></p>\r\n\r\n<p>- تنفيذ الحجز وتأكيده</p>\r\n\r\n<p>- إرسال إشعارات ومعلومات متعلقة بالحجز</p>\r\n\r\n<p>- تحسين تجربة المستخدم</p>\r\n\r\n<p>- ضمان الأمان والامتثال للقوانين</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٣ - مشاركة المعلومات:</strong></p>\r\n\r\n<p>نشارك معلوماتك فقط عند الضرورة مع:</p>\r\n\r\n<p>- الفنادق الشريكة لإتمام الحجز</p>\r\n\r\n<p>- مزودي خدمات الدفع</p>\r\n\r\n<p>- الجهات القانونية عند الطلب وبحسب القانون</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٤ - حماية البيانات:</strong></p>\r\n\r\n<p>نستخدم تقنيات وإجراءات أمنية لحماية بياناتك من الوصول غير المصرح به أو الاستخدام غير القانوني.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٥ - ملفات تعريف الارتباط (Cookies):</strong></p>\r\n\r\n<p>يستخدم موقع ديار ملفات تعريف الارتباط لتحسين الأداء وتسهيل التصفح وتخصيص المحتوى حسب تفضيلاتك.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٦ - حقوقك:</strong></p>\r\n\r\n<p>- الوصول إلى معلوماتك الشخصية</p>\r\n\r\n<p>- تعديل أو حذف بياناتك</p>\r\n\r\n<p>- سحب الموافقة على استخدام بياناتك</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٧ - التحديثات:</strong></p>\r\n\r\n<p>قد يتم تحديث هذه السياسة من وقت لآخر. سيتم إعلامك بأي تغييرات هامة من خلال إشعار داخل النظام أو عبر البريد الإلكتروني.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL);

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
(1, 'VIP', 'room_types/img34.jpg', 'http://127.0.0.1:8000/HotelManagement/hotel_search?hotel_name=&check_date=05%2F03%2F2025+-+05%2F03%2F2025&category_type=1&adult_number=0&room_number=0', 1),
(2, 'جناح', 'room_types/img27.jpg', 'http://127.0.0.1:8000/HotelManagement/hotel_search?hotel_name=&check_date=05%2F03%2F2025+-+05%2F03%2F2025&category_type=3&adult_number=0&room_number=0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_setting`
--

CREATE TABLE `home_setting` (
  `id` bigint(20) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
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
  `seo_keywords` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_setting`
--

INSERT INTO `home_setting` (`id`, `site_name`, `email`, `phone_number`, `description`, `address`, `default_currency`, `color`, `currency_icon`, `default_language`, `currency_Icon_position`, `logo`, `favicon`, `footer_logo`, `seo_title`, `seo_description`, `seo_keywords`) VALUES
(1, 'ديار', 'info@diyar.com', '+967xxxxxxxxx', 'رحلتك تبداء - بديار', 'اليمن - صنعاء - العنوان الرئيسي لمنصة ديار', 'YER', '507ABC', 'ريال', 'ar', 1, 'home/components/setting/icon-192.png', 'home/components/setting/logo2.png', 'home/components/setting/logo_X1NWaPa.png', 'ديار - حجز فنادق اليمن | رحلتك تبداء - بديار', 'منصة ديار لحجز الفنادق في اليمن بسهولة وأمان. اكتشف أفضل العروض واحجز إقامتك القادمة. رحلتك تبداء - بديار.', 'ديار, حجز فنادق, فنادق اليمن, فنادق صنعاء, فنادق عدن, حجز أونلاين, سياحة اليمن, رحلات');

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
(1, 'facebook', '#', 'lab la-facebook-f', 1),
(2, 'twitter', '#', 'lab la-twitter', 1),
(3, 'instagram', '#', 'lab la-instagram', 1),
(4, 'linkedin', '#', 'lab la-linkedin-in', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_teammember`
--

CREATE TABLE `home_teammember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `bio` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_termsconditions`
--

CREATE TABLE `home_termsconditions` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_termsconditions`
--

INSERT INTO `home_termsconditions` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `content`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-05-03 21:12:20.121953', '2025-05-03 21:16:02.229318', NULL, 'terms and conditions', '<p>&nbsp;</p>\r\n\r\n<p><strong>الشروط والأحكام &ndash; ديار لحجوزات الفنادق</strong></p>\r\n\r\n<p>باستخدامك منصة <strong>ديار</strong>، فإنك توافق على الشروط والأحكام التالية، لذا يُرجى قراءتها بعناية.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>١ - استخدام المنصة:</strong></p>\r\n\r\n<p>- يجب أن يكون المستخدم بعمر قانوني يسمح له بإجراء الحجوزات.</p>\r\n\r\n<p>- استخدام المنصة يقتصر على الأغراض الشخصية وغير التجارية.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٢ - الحجز والتأكيد:</strong></p>\r\n\r\n<p>- يتم تأكيد الحجز بعد إتمام عملية الدفع واستلام إشعار التأكيد.</p>\r\n\r\n<p>- تحتفظ ديار بحق إلغاء أي حجز في حال وجود خطأ تقني أو معلومات غير صحيحة.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٣ - الإلغاء والاسترداد:</strong></p>\r\n\r\n<p>- سياسات الإلغاء تختلف حسب الفندق وسيتم توضيحها قبل تأكيد الحجز.</p>\r\n\r\n<p>- قد تُفرض رسوم على الإلغاء المتأخر أو عدم الحضور.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٤ - المسؤولية:</strong></p>\r\n\r\n<p>- ديار وسيط حجز فقط، ولا تتحمل المسؤولية عن جودة الإقامة أو خدمات الفندق.</p>\r\n\r\n<p>- المستخدم مسؤول عن صحة البيانات التي يقدمها أثناء الحجز.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٥ - الأسعار والضرائب:</strong></p>\r\n\r\n<p>- الأسعار المعروضة تشمل الضرائب ما لم يُذكر خلاف ذلك.</p>\r\n\r\n<p>- قد تختلف الأسعار حسب الموسم أو توفر الغرف.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٦ - التعديلات على الخدمة:</strong></p>\r\n\r\n<p>- تحتفظ ديار بحق تعديل أو تحديث المنصة أو الشروط في أي وقت دون إشعار مسبق.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٧ - الملكية الفكرية:</strong></p>\r\n\r\n<p>- جميع حقوق النشر والتصميم والمحتوى محفوظة لمنصة ديار.</p>\r\n\r\n<p>- لا يجوز نسخ أو إعادة استخدام أي جزء من الموقع بدون إذن كتابي مسبق.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>٨ - القانون المعمول به:</strong></p>\r\n\r\n<p>- تخضع هذه الشروط للقوانين المحلية في الجمهورية اليمنية، وأي نزاع يتم حله عبر الجهات القضائية المختصة.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonial`
--

CREATE TABLE `home_testimonial` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_city`
--

CREATE TABLE `hotelmanagement_city` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-03-20 20:56:26.264276', '2025-03-20 20:56:26.264276', NULL, 'sanaa', 'sanaa', 'sanaa', NULL, NULL),
(2, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'عدن', 'aden', 'Yemen', 1, 1),
(3, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'حضرموت', 'hadramaut', 'Yemen', 1, 1),
(4, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'أرخبيل سقطرى', 'socotra', 'Yemen', 1, 1),
(5, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'تعز', 'taiz', 'Yemen', 1, 1),
(6, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'إب', 'ibb', 'Yemen', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_hotel`
--

CREATE TABLE `hotelmanagement_hotel` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-03-01 19:06:29.271764', '2025-05-03 23:23:07.257196', NULL, 'احمد', 'ahmed-vip', 'hotels/images/img15.jpg', 'aggggggggggggggggggg', '1515453432132', 'hotel_documents/2025/03/01/image_picker_input.dart.png', 1, '2025-03-01 19:06:26.000000', 1, 1, 2, 1),
(2, '2025-03-01 19:06:29.271764', '2025-05-03 23:18:08.882830', NULL, 'sami', 'saaa55-vip', 'hotels/images/img2_6aK5ZRr.jpg', 'kkkkkk', '1515453432132', 'hotel_documents/2025/03/01/image_picker_input.dart.png', 1, '2025-03-01 19:06:26.000000', 1, 1, 14, 1),
(3, '2025-04-15 01:56:01.000000', '2025-05-03 23:20:48.892598', NULL, 'فندق قصر سبأ صنعاء', 'sheba-palace-sanaa', 'hotels/images/img1_Xf83CsE.jpg', 'فندق فاخر في قلب صنعاء يتميز بالعمارة اليمنية التقليدية الأصيلة. يقدم خدمات متكاملة وراحة للنزلاء.', 'BUS-SN-101', 'hotel_documents/2025/05/04/img17.jpg', 1, '2025-04-15 01:56:01.000000', 1, 1, 8, 1),
(4, '2025-04-15 01:56:01.000000', '2025-05-03 23:20:21.327052', NULL, 'فندق أمواج عدن', 'aden-waves', 'hotels/images/img13.jpg', 'فندق حديث يطل على بحر العرب في عدن. يوفر إطلالات خلابة وغرف مريحة.', 'BUS-AD-205', 'docs/licenses/aden_waves.pdf', 1, '2025-04-15 01:56:01.000000', 1, 2, 19, 1),
(5, '2025-04-15 01:56:01.000000', '2025-05-03 23:23:50.220848', NULL, 'منتجع لؤلؤة المكلا', 'mukalla-pearl', 'hotels/images/img14.jpg', 'منتجع شاطئي يقع على ساحل حضرموت. مثالي للاسترخاء والاستمتاع بالطبيعة.', NULL, 'hotel_documents/2025/05/04/img10.jpg', 0, NULL, 1, 3, NULL, 1),
(6, '2025-04-15 01:56:01.000000', '2025-05-03 23:19:23.278404', NULL, 'نزل سقطرى البيئي', 'socotra-eco-lodge', 'hotels/images/img8_zHbS14K.jpg', 'تجربة إقامة مستدامة وسط التنوع البيولوجي الفريد لسقطرى. مناسب لمحبي الطبيعة والمغامرة.', 'BUS-SO-001', 'docs/licenses/socotra_eco.pdf', 1, '2025-04-15 01:56:01.000000', 1, 4, 20, 1),
(7, '2025-04-15 01:56:01.000000', '2025-05-03 23:19:05.535257', NULL, 'فندق برج السلام تعز', 'salam-tower-taiz', 'hotels/images/img7_DiG6pho.jpg', 'فندق عصري في مدينة تعز يوفر إقامة مريحة وخدمات مميزة لرجال الأعمال والسياح.', 'BUS-TZ-310', 'docs/licenses/salam_taiz.pdf', 1, '2025-04-15 01:56:01.000000', 1, 5, 21, 1),
(8, '2025-04-15 01:56:01.000000', '2025-05-03 23:18:45.855535', NULL, 'فندق إب جراند', 'ibb-grand-hotel', 'hotels/images/img4_KgvckkG.jpg', 'يقع في مدينة إب الخضراء، يوفر الفندق جواً هادئاً ومريحاً للزوار.', 'BUS-IB-402', 'docs/licenses/ibb_grand.pdf', 0, NULL, 1, 6, 22, 1);

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
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(7, '2025-05-03 22:48:42.125426', '2025-05-03 22:48:42.125426', NULL, 'hotels/images/img1.jpg', NULL, NULL, 3, 1),
(8, '2025-05-03 22:49:01.322387', '2025-05-03 22:49:01.322387', NULL, 'hotels/images/img2.jpg', NULL, NULL, 4, 1),
(9, '2025-05-03 22:49:22.644539', '2025-05-03 22:49:22.644539', NULL, 'hotels/images/img4.jpg', NULL, NULL, 5, 1),
(10, '2025-05-03 22:49:52.819185', '2025-05-03 22:49:52.819185', NULL, 'hotels/images/img6.jpg', NULL, NULL, 6, 1),
(11, '2025-05-03 22:50:14.169093', '2025-05-03 22:50:14.169093', NULL, 'hotels/images/img7.jpg', NULL, NULL, 7, 1),
(12, '2025-05-03 22:50:30.649212', '2025-05-03 22:50:30.649212', NULL, 'hotels/images/img8.jpg', NULL, NULL, 8, 1),
(13, '2025-05-03 22:51:08.884944', '2025-05-03 22:51:08.884944', NULL, 'hotels/images/img10.jpg', NULL, NULL, 1, 1),
(14, '2025-05-03 22:51:35.366262', '2025-05-03 22:51:35.366262', NULL, 'hotels/images/img17.jpg', NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_location`
--

CREATE TABLE `hotelmanagement_location` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-03-01 19:00:56.470001', '2025-03-01 19:00:56.470001', NULL, 'shomaila', 1, 1, 1),
(2, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'شارع حدة، بالقرب من فندق شهران', 1, 1, 1),
(3, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'مديرية كريتر، الشارع الرئيسي', 2, 1, 1),
(4, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'كورنيش المكلا، مقابل البحر', 3, 1, 1),
(5, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'حديبو، الطريق العام', 4, 1, 1),
(6, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'شارع جمال عبدالناصر', 5, 1, 1),
(7, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'وسط المدينة، بالقرب من الدائري', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotelmanagement_phone`
--

CREATE TABLE `hotelmanagement_phone` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `recipient_type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `send_time` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications_notifications`
--

INSERT INTO `notifications_notifications` (`id`, `created_at`, `updated_at`, `deleted_at`, `recipient_type`, `title`, `message`, `send_time`, `status`, `notification_type`, `is_active`, `action_url`, `created_by_id`, `sender_id`, `updated_by_id`, `user_id`) VALUES
(5, '2025-04-17 22:55:58.225600', '2025-04-17 22:55:58.225600', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-17 22:55:58.225600', '0', '1', 1, '/payments/add_guest/1/', NULL, 59, NULL, 59),
(6, '2025-04-17 23:00:02.696918', '2025-04-17 23:00:02.696918', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-17 23:00:02.696918', '0', '1', 1, '/payments/add_guest/1/', NULL, 60, NULL, 60),
(7, '2025-04-17 23:00:02.739425', '2025-04-17 23:00:02.739425', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-17 23:00:02.739425', '0', '1', 1, '/payments/add_guest/1/', NULL, 60, NULL, 60),
(8, '2025-04-17 23:03:16.983732', '2025-04-17 23:03:16.983732', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-17 23:03:16.984544', '0', '1', 1, '/payments/add_guest/1/', NULL, 59, NULL, 59),
(24, '2025-04-18 22:15:17.866191', '2025-04-18 22:15:17.866191', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 22:15:17.866191', '0', '1', 1, '/payments/add_guest/1/', NULL, 60, NULL, 60),
(27, '2025-04-18 22:42:19.628421', '2025-04-18 22:42:19.628421', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 22:42:19.628421', '1', '1', 1, '/payments/add_guest/1/', NULL, 1, NULL, 1),
(28, '2025-04-18 22:42:19.678596', '2025-04-18 22:42:19.678596', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 22:42:19.678596', '1', '1', 1, '/payments/add_guest/1/', NULL, 1, NULL, 1),
(29, '2025-04-18 22:57:28.729455', '2025-04-18 22:57:28.730453', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 22:57:28.730453', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(30, '2025-04-18 22:57:28.792930', '2025-04-18 22:57:28.792930', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 22:57:28.792930', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(31, '2025-04-18 23:01:55.951694', '2025-04-18 23:01:55.951694', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 23:01:55.951694', '0', '1', 1, '/payments/add_guest/2/', NULL, 61, NULL, 61),
(32, '2025-04-18 23:01:55.999939', '2025-04-18 23:01:55.999939', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 23:01:55.999939', '0', '1', 1, '/payments/add_guest/2/', NULL, 61, NULL, 61),
(33, '2025-04-18 23:03:34.037405', '2025-04-18 23:03:34.037405', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-18 23:03:34.037405', '0', '1', 1, '/payments/add_guest/2/', NULL, 61, NULL, 61),
(36, '2025-04-19 09:37:30.443014', '2025-04-19 09:37:30.443014', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:37:30.443014', '1', '1', 1, '/payments/add_guest/1/', NULL, 1, NULL, 1),
(37, '2025-04-19 09:37:30.498913', '2025-04-19 09:37:30.498913', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:37:30.501390', '1', '1', 1, '/payments/add_guest/1/', NULL, 1, NULL, 1),
(38, '2025-04-19 09:44:36.790719', '2025-04-19 09:44:36.790719', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:44:36.791731', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(39, '2025-04-19 09:49:21.919793', '2025-04-19 09:49:21.919793', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:49:21.920795', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(40, '2025-04-19 09:54:39.403756', '2025-04-19 09:54:39.404757', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:54:39.404757', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(41, '2025-04-19 09:55:01.353490', '2025-04-19 09:55:01.353490', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 09:55:01.354524', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(42, '2025-04-19 10:06:37.396493', '2025-04-19 10:06:37.396493', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:06:37.396493', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(44, '2025-04-19 10:21:42.162953', '2025-04-19 10:21:42.162953', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:21:42.162953', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(45, '2025-04-19 10:21:42.192216', '2025-04-19 10:21:42.192216', NULL, 'single_user', 'تأكيد الحجز', 'تم تأكيد حجزك بنجاح.', '2025-04-19 10:21:42.192216', '1', 'BOOKING_CONFIRMED', 1, NULL, NULL, 1, NULL, 1),
(46, '2025-04-19 10:21:42.195019', '2025-04-19 10:21:42.195019', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:21:42.195019', '1', '2', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(47, '2025-04-19 10:21:42.258412', '2025-04-19 10:21:42.258412', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:21:42.258412', '1', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(48, '2025-04-19 10:25:37.841247', '2025-04-19 10:25:37.841247', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 10:25:37.841247', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 1, NULL, 1),
(49, '2025-04-19 10:25:37.842242', '2025-04-19 10:25:37.842242', NULL, 'single_user', 'تم إلغاء حجزك.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:25:37.842242', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(50, '2025-04-19 10:29:52.089912', '2025-04-19 10:29:52.089912', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 10:29:52.090905', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 1, NULL, 1),
(51, '2025-04-19 10:29:52.090905', '2025-04-19 10:29:52.090905', NULL, 'single_user', 'تم إلغاء حجزك.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:29:52.090905', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(52, '2025-04-19 10:38:40.292886', '2025-04-19 10:38:40.292886', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:38:40.292886', '0', '2', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(53, '2025-04-19 10:39:31.173423', '2025-04-19 10:39:31.173945', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 10:39:31.174532', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 1, NULL, 1),
(54, '2025-04-19 10:39:31.176842', '2025-04-19 10:39:31.176842', NULL, 'single_user', 'تم إلغاء حجزك.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:39:31.177338', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(55, '2025-04-19 10:41:17.593113', '2025-04-19 10:41:17.593113', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:41:17.594110', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(56, '2025-04-19 10:54:58.310225', '2025-04-19 10:54:58.310225', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:54:58.310225', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(57, '2025-04-19 10:54:58.345232', '2025-04-19 10:54:58.345232', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:54:58.345232', '0', '2', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(58, '2025-04-19 10:56:29.269192', '2025-04-19 10:56:29.269192', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 10:56:29.269192', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 1, NULL, 1),
(59, '2025-04-19 10:56:29.274337', '2025-04-19 10:56:29.274337', NULL, 'single_user', 'تم إلغاء حجزك.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 10:56:29.274337', '0', '1', 1, '/payments/add_guest/2/', NULL, 1, NULL, 1),
(61, '2025-04-19 11:14:25.484350', '2025-04-19 11:14:25.484350', NULL, 'single_user', 'تأكيد الحجز', 'تم تأكيد حجزك بنجاح.', '2025-04-19 11:14:25.484350', '0', 'BOOKING_CONFIRMED', 1, NULL, NULL, 59, NULL, 59),
(62, '2025-04-19 11:14:25.510464', '2025-04-19 11:14:25.510464', NULL, 'single_user', 'تأكيد الحجز', 'تم تأكيد حجزك بنجاح.', '2025-04-19 11:14:25.510464', '0', 'BOOKING_CONFIRMED', 1, NULL, NULL, 59, NULL, 59),
(63, '2025-04-19 11:15:18.804018', '2025-04-19 11:15:18.804018', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 11:15:18.804018', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 59, NULL, 59),
(64, '2025-04-19 11:31:14.631893', '2025-04-19 11:31:14.631893', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 11:31:14.631893', '0', '1', 1, '/payments/add_guest/2/', NULL, 61, NULL, 61),
(67, '2025-04-19 12:35:03.680350', '2025-04-19 12:35:03.680350', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 12:35:03.680350', '0', '2', 1, '/payments/add_guest/2/', NULL, 60, NULL, 60),
(68, '2025-04-19 12:35:56.650101', '2025-04-19 12:35:56.650101', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 12:35:56.650101', '0', '2', 1, '/payments/add_guest/2/', NULL, 59, NULL, 59),
(69, '2025-04-19 12:36:39.040276', '2025-04-19 12:36:39.040276', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-04-19 12:36:39.040276', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 60, NULL, 60),
(70, '2025-04-19 12:42:25.401418', '2025-04-19 12:42:25.401418', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-04-19 12:42:25.402416', '0', '2', 1, '/payments/add_guest/2/', NULL, 59, NULL, 59),
(126, '2025-05-05 20:52:29.266354', '2025-05-05 20:52:29.266354', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 20:52:29.266354', '1', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(142, '2025-05-05 21:06:34.282768', '2025-05-05 21:06:34.282768', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:06:34.282768', '1', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(156, '2025-05-05 21:09:17.311514', '2025-05-05 21:09:17.311514', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-05-05 21:09:17.312572', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 62, NULL, 62),
(157, '2025-05-05 21:09:32.442246', '2025-05-05 21:09:32.442246', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:09:32.442246', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(161, '2025-05-05 21:11:06.375111', '2025-05-05 21:11:06.375111', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:11:06.376114', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(184, '2025-05-05 21:32:48.777509', '2025-05-05 21:32:48.777509', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:32:48.777509', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(190, '2025-05-05 21:36:58.401205', '2025-05-05 21:36:58.402238', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:36:58.402238', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(198, '2025-05-05 21:45:47.423414', '2025-05-05 21:45:47.423414', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:45:47.424411', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(199, '2025-05-05 21:45:49.811199', '2025-05-05 21:45:49.811199', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:45:49.812196', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(203, '2025-05-05 21:47:00.073265', '2025-05-05 21:47:00.073265', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-05-05 21:47:00.073846', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 62, NULL, 62),
(216, '2025-05-05 21:52:22.104328', '2025-05-05 21:52:22.104328', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:52:22.104328', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(217, '2025-05-05 21:52:28.685980', '2025-05-05 21:52:28.689995', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 21:52:28.689995', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(225, '2025-05-05 22:25:05.422496', '2025-05-05 22:25:05.422496', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:25:05.423492', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(231, '2025-05-05 22:32:06.215010', '2025-05-05 22:32:06.215010', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:32:06.215010', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(234, '2025-05-05 22:34:19.243630', '2025-05-05 22:34:19.243630', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:34:19.243630', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(235, '2025-05-05 22:34:21.069601', '2025-05-05 22:34:21.069601', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:34:21.069601', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(239, '2025-05-05 22:34:38.384920', '2025-05-05 22:34:38.384920', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-05-05 22:34:38.384920', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 62, NULL, 62),
(242, '2025-05-05 22:35:26.626797', '2025-05-05 22:35:26.626797', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:35:26.626797', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(243, '2025-05-05 22:35:27.460208', '2025-05-05 22:35:27.460208', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:35:27.460208', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(248, '2025-05-05 22:37:29.753449', '2025-05-05 22:37:29.753449', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:37:29.753449', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(251, '2025-05-05 22:38:34.802273', '2025-05-05 22:38:34.802273', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:38:34.802273', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(252, '2025-05-05 22:38:35.621632', '2025-05-05 22:38:35.621632', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:38:35.621632', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(257, '2025-05-05 22:41:41.822945', '2025-05-05 22:41:41.822945', NULL, 'single_user', 'تم استلام حجزك حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:41:41.822945', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(260, '2025-05-05 22:42:05.781445', '2025-05-05 22:42:05.781445', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:42:05.781445', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(261, '2025-05-05 22:42:07.150620', '2025-05-05 22:42:07.150620', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:42:07.150620', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(267, '2025-05-05 22:46:26.487090', '2025-05-05 22:46:26.487090', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:46:26.487090', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(268, '2025-05-05 22:46:26.839202', '2025-05-05 22:46:26.839202', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:46:26.839202', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(273, '2025-05-05 22:54:22.571999', '2025-05-05 22:54:22.571999', NULL, 'single_user', 'تم استلام حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:54:22.573006', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(278, '2025-05-05 22:56:20.260271', '2025-05-05 22:56:20.260271', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:56:20.260271', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(279, '2025-05-05 22:56:21.970126', '2025-05-05 22:56:21.970126', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:56:21.970887', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(283, '2025-05-05 22:56:39.507611', '2025-05-05 22:56:39.507611', NULL, 'single_user', 'إلغاء الحجز', 'تم إلغاء حجزك.', '2025-05-05 22:56:39.507611', '0', 'BOOKING_CANCELED', 1, NULL, NULL, 62, NULL, 62),
(286, '2025-05-05 22:56:49.459509', '2025-05-05 22:56:49.460550', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:56:49.460550', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(287, '2025-05-05 22:56:50.637615', '2025-05-05 22:56:50.637615', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-05 22:56:50.637615', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(291, '2025-05-06 05:23:19.911688', '2025-05-06 05:23:19.911688', NULL, 'single_user', 'تم رفض دفعة', 'تم رفض دفعة بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:23:19.911688', '0', '3', 1, 'admin/payments/payment-detail/26/', NULL, 62, NULL, 2),
(292, '2025-05-06 05:23:52.518487', '2025-05-06 05:23:52.518487', NULL, 'single_user', 'تم رفض الدفع', 'تم رفض دفعتك بقيمة 75.00 $ للحجز رقم 73. يرجى التواصل مع إدارة الفندق', '2025-05-06 05:23:52.518487', '0', '3', 1, '/bookings/details/73/', NULL, 2, NULL, 62),
(293, '2025-05-06 05:24:08.032095', '2025-05-06 05:24:08.032095', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:24:08.032095', '0', '2', 1, 'admin/payments/payment-detail/26/', NULL, 62, NULL, 2),
(294, '2025-05-06 05:24:08.042192', '2025-05-06 05:24:08.042192', NULL, 'single_user', 'تم تأكيد الدفع', 'تم تأكيد دفعتك بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:24:08.042192', '0', '2', 1, '/bookings/details/73/', NULL, 2, NULL, 62),
(295, '2025-05-06 05:24:27.262646', '2025-05-06 05:24:27.262646', NULL, 'single_user', 'تم رفض دفعة', 'تم رفض دفعة بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:24:27.262646', '0', '3', 1, 'admin/payments/payment-detail/26/', NULL, 62, NULL, 2),
(296, '2025-05-06 05:24:33.769097', '2025-05-06 05:24:33.769097', NULL, 'single_user', 'تم رفض الدفع', 'تم رفض دفعتك بقيمة 75.00 $ للحجز رقم 73. يرجى التواصل مع إدارة الفندق', '2025-05-06 05:24:33.770278', '0', '3', 1, '/bookings/details/73/', NULL, 2, NULL, 62),
(297, '2025-05-06 05:24:43.385224', '2025-05-06 05:24:43.385224', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:24:43.386144', '0', '2', 1, 'admin/payments/payment-detail/26/', NULL, 62, NULL, 2),
(298, '2025-05-06 05:26:10.582828', '2025-05-06 05:26:10.582828', NULL, 'single_user', 'تم تأكيد الدفع', 'تم تأكيد دفعتك بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:26:10.582828', '0', '2', 1, '/bookings/details/73/', NULL, 2, NULL, 62),
(299, '2025-05-06 05:26:37.781465', '2025-05-06 05:26:37.781465', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 05:26:37.782442', '0', '1', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(300, '2025-05-06 05:26:43.103393', '2025-05-06 05:26:43.103393', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 05:26:43.104369', '0', '2', 1, '/payments/add_guest/1/', NULL, 62, NULL, 62),
(301, '2025-05-06 05:26:43.129745', '2025-05-06 05:26:43.129745', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من ahmed mohamed -  للغرفه   room vip 2025 (احمد)', '2025-05-06 05:26:43.129745', '0', '1', 1, 'admin/bookings/booking/', NULL, 62, NULL, 2),
(302, '2025-05-06 05:26:43.153035', '2025-05-06 05:26:43.153496', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:26:43.153496', '0', '2', 1, 'admin/payments/payment-detail/26/', NULL, 62, NULL, 2),
(303, '2025-05-06 05:26:51.437732', '2025-05-06 05:26:51.437732', NULL, 'single_user', 'تم تأكيد الدفع', 'تم تأكيد دفعتك بقيمة 75.00 $ للحجز رقم 73', '2025-05-06 05:26:51.437732', '0', '2', 1, '/bookings/details/73/', NULL, 2, NULL, 62),
(304, '2025-05-06 14:35:44.598355', '2025-05-06 14:35:44.598355', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   room vip 2025 (احمد)', '2025-05-06 14:35:44.598355', '0', '1', 1, '/bookings/booking/', NULL, 2, NULL, 2),
(305, '2025-05-06 14:35:44.602003', '2025-05-06 14:35:44.602003', NULL, 'single_user', 'تم استلام حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 14:35:44.602003', '0', '1', 1, '/payments/add_guest/1/', NULL, 2, NULL, 2),
(306, '2025-05-06 14:35:44.626113', '2025-05-06 14:35:44.626113', NULL, 'single_user', 'دفعة غير معروفة', 'تم تغيير حالة دفعة غير معروفة للحجز رقم ', '2025-05-06 14:35:44.626113', '0', '0', 1, 'admin/payments/payment-detail/27/', NULL, 2, NULL, 2),
(307, '2025-05-06 14:38:07.302595', '2025-05-06 14:38:07.302595', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 14:38:07.302595', '0', '1', 1, '/payments/add_guest/1/', NULL, 2, NULL, 2),
(308, '2025-05-06 14:38:07.433710', '2025-05-06 14:38:07.433710', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 14:38:07.433710', '0', '2', 1, '/payments/add_guest/1/', NULL, 2, NULL, 2),
(309, '2025-05-06 14:38:07.448100', '2025-05-06 14:38:07.448100', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   room vip 2025 (احمد)', '2025-05-06 14:38:07.449143', '0', '1', 1, 'admin/bookings/booking/', NULL, 2, NULL, 2),
(310, '2025-05-06 14:38:07.466065', '2025-05-06 14:38:07.466065', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 90.00 $ للحجز رقم 74', '2025-05-06 14:38:07.466065', '0', '2', 1, 'admin/payments/payment-detail/27/', NULL, 2, NULL, 2),
(311, '2025-05-06 14:52:18.182535', '2025-05-06 14:52:18.190179', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 14:52:18.190179', '0', '1', 1, '/payments/add_guest/2/', NULL, 60, NULL, 60),
(312, '2025-05-06 14:52:18.226695', '2025-05-06 14:52:18.226695', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-06 14:52:18.227657', '0', '2', 1, '/payments/add_guest/2/', NULL, 60, NULL, 60),
(313, '2025-05-06 14:52:18.249556', '2025-05-06 14:52:18.250591', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من ahmed mohamed ali -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-06 14:52:18.250591', '0', '1', 1, 'admin/bookings/booking/', NULL, 60, NULL, 2),
(314, '2025-05-06 14:52:18.256961', '2025-05-06 14:52:18.257960', NULL, 'single_user', 'دفعة غير معروفة', 'تم تغيير حالة دفعة غير معروفة للحجز رقم ', '2025-05-06 14:52:18.257960', '0', '0', 1, 'admin/payments/payment-detail/28/', NULL, 2, NULL, 2),
(315, '2025-05-07 08:50:10.454796', '2025-05-07 08:50:10.454796', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من mosa mohamed -  للغرفه   room vip 2025 (احمد)', '2025-05-07 08:50:10.454796', '0', '1', 1, '/bookings/booking/', NULL, 5, NULL, 2),
(316, '2025-05-07 08:50:10.460790', '2025-05-07 08:50:10.460790', NULL, 'single_user', 'تم استلام حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 08:50:10.460790', '0', '1', 1, '/payments/add_guest/1/', NULL, 5, NULL, 5),
(317, '2025-05-07 08:50:10.472119', '2025-05-07 08:50:10.472634', NULL, 'single_user', '', '', '2025-05-07 08:50:10.472634', '0', '0', 1, '/bookings/details/75/', NULL, 2, NULL, 5),
(318, '2025-05-07 08:52:27.484468', '2025-05-07 08:52:27.484468', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من mosa mohamed -  للغرفه   room vip 2025 (احمد)', '2025-05-07 08:52:27.485024', '0', '1', 1, '/bookings/booking/', NULL, 5, NULL, 2),
(319, '2025-05-07 08:52:27.489381', '2025-05-07 08:52:27.489381', NULL, 'single_user', 'تم استلام حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 08:52:27.489836', '0', '1', 1, '/payments/add_guest/1/', NULL, 5, NULL, 5),
(320, '2025-05-07 09:09:13.988254', '2025-05-07 09:09:13.988254', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-07 09:09:13.988254', '0', '1', 1, 'admin/bookings/booking/', NULL, 2, NULL, 2),
(321, '2025-05-07 09:09:13.988254', '2025-05-07 09:09:13.988254', NULL, 'single_user', 'تم استلام حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 09:09:13.988254', '0', '1', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(322, '2025-05-07 10:24:07.132575', '2025-05-07 10:24:07.132575', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 100000.00 $ للحجز رقم 77', '2025-05-07 10:24:07.132575', '0', '2', 1, 'admin/payments/payment-detail/31/', NULL, 2, NULL, 2),
(323, '2025-05-07 10:24:07.149675', '2025-05-07 10:24:07.149675', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:24:07.149675', '0', '1', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(324, '2025-05-07 10:24:07.561912', '2025-05-07 10:24:07.562943', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:24:07.562943', '0', '2', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(325, '2025-05-07 10:24:07.580423', '2025-05-07 10:24:07.580423', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-07 10:24:07.580423', '0', '1', 1, 'admin/bookings/booking/', NULL, 2, NULL, 2),
(326, '2025-05-07 10:28:39.317068', '2025-05-07 10:28:39.317068', NULL, 'single_user', 'تم رفض دفعة', 'تم رفض دفعة بقيمة 100000.00 $ للحجز رقم 77', '2025-05-07 10:28:39.317068', '0', '3', 1, 'admin/payments/payment-detail/31/', NULL, 2, NULL, 2),
(327, '2025-05-07 10:29:15.576280', '2025-05-07 10:29:15.577310', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 100000.00 $ للحجز رقم 77', '2025-05-07 10:29:15.577310', '0', '2', 1, 'admin/payments/payment-detail/31/', NULL, 2, NULL, 2),
(328, '2025-05-07 10:29:15.599237', '2025-05-07 10:29:15.599237', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:29:15.599237', '0', '1', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(329, '2025-05-07 10:29:15.896991', '2025-05-07 10:29:15.896991', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.00', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:29:15.896991', '0', '2', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(330, '2025-05-07 10:29:15.920443', '2025-05-07 10:29:15.920443', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-07 10:29:15.920443', '0', '1', 1, 'admin/bookings/booking/', NULL, 2, NULL, 2),
(331, '2025-05-07 10:35:37.553880', '2025-05-07 10:35:37.553880', NULL, 'single_user', 'تم رفض دفعة', 'تم رفض دفعة بقيمة 100000.00 $ للحجز رقم 77', '2025-05-07 10:35:37.553880', '0', '3', 1, 'admin/payments/payment-detail/31/', NULL, 2, NULL, 2),
(332, '2025-05-07 10:35:40.205191', '2025-05-07 10:35:40.205191', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 100000.00 $ للحجز رقم 77', '2025-05-07 10:35:40.206232', '0', '2', 1, 'admin/payments/payment-detail/31/', NULL, 2, NULL, 2),
(333, '2025-05-07 10:35:40.220573', '2025-05-07 10:35:40.220573', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:35:40.220573', '0', '1', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(334, '2025-05-07 10:35:40.261414', '2025-05-07 10:35:40.261414', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-07 10:35:40.261833', '0', '2', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(335, '2025-05-07 10:35:40.283709', '2025-05-07 10:35:40.283709', NULL, 'single_user', 'اشعار بحجز جديد.0000', 'يوجد لديك حجز جديد من b -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-07 10:35:40.283709', '0', '1', 1, 'bookings/booking/', NULL, 2, NULL, 2),
(336, '2025-05-08 08:52:17.296970', '2025-05-08 08:52:17.296970', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من b -  للغرفه   غرفة قياسية مفردة (احمد)', '2025-05-08 08:52:17.296970', '0', '1', 1, 'bookings/booking/', NULL, 2, NULL, 2),
(337, '2025-05-08 08:52:17.304491', '2025-05-08 08:52:17.304491', NULL, 'single_user', ' استلام حجزك بنجاح.', 'يرجى الانتظار الى حين مراحعه حجزك', '2025-05-08 08:52:17.305492', '0', '1', 1, '/payments/add_guest/2/', NULL, 2, NULL, 2),
(338, '2025-05-08 08:59:37.347492', '2025-05-08 08:59:37.347492', NULL, 'single_user', 'دفعة غير معروفة', 'تم تغيير حالة دفعة غير معروفة للحجز رقم ', '2025-05-08 08:59:37.347492', '0', '0', 1, 'admin/payments/payment-detail/29/', NULL, 5, NULL, 2),
(339, '2025-05-08 08:59:37.747446', '2025-05-08 08:59:37.747446', NULL, 'single_user', 'تم رفض الدفع', 'تم رفض دفعتك بقيمة 15.00 $ للحجز رقم 75. يرجى التواصل مع إدارة الفندق', '2025-05-08 08:59:37.747446', '0', '0', 1, '/bookings/details/75/', NULL, 2, NULL, 5),
(340, '2025-05-08 09:03:25.647765', '2025-05-08 09:03:25.647765', NULL, 'single_user', 'اشعار بحجز جديد.', 'يوجد لديك حجز جديد من mosa mohamed -  للغرفه   room vip 2025 (احمد)', '2025-05-08 09:03:25.647765', '0', '1', 1, 'bookings/booking/', NULL, 5, NULL, 2),
(341, '2025-05-08 09:03:25.647765', '2025-05-08 09:03:25.647765', NULL, 'single_user', ' استلام حجزك بنجاح.', 'يرجى الانتظار الى حين مراحعه حجزك', '2025-05-08 09:03:25.647765', '0', '1', 1, '/payments/add_guest/1/', NULL, 5, NULL, 5),
(342, '2025-05-08 09:03:25.656063', '2025-05-08 09:03:25.656063', NULL, 'single_user', '', '', '2025-05-08 09:03:25.657048', '0', '0', 1, '/bookings/details/80/', NULL, 2, NULL, 5),
(343, '2025-05-08 09:04:06.639297', '2025-05-08 09:04:06.639297', NULL, 'single_user', 'اشعار اتمام الحجز', 'يرجى إضافة الضيوف لحجزك.', '2025-05-08 09:04:06.639297', '0', '1', 1, '/payments/add_guest/1/', NULL, 5, NULL, 5),
(344, '2025-05-08 09:04:06.759858', '2025-05-08 09:04:06.759858', NULL, 'single_user', 'تم تأكيد حجزك بنجاح.', 'يرجى إضافة الضيوف لحجزك.', '2025-05-08 09:04:06.759858', '0', '2', 1, '/payments/add_guest/1/', NULL, 5, NULL, 5),
(345, '2025-05-08 09:04:06.761136', '2025-05-08 09:04:06.761136', NULL, 'single_user', 'تم تأكيد دفعة جديدة', 'تم تأكيد دفعة بقيمة 75.00 $ للحجز رقم 80', '2025-05-08 09:04:06.761136', '0', '2', 1, 'admin/payments/payment-detail/33/', NULL, 5, NULL, 2),
(346, '2025-05-08 09:04:06.761136', '2025-05-08 09:04:06.761136', NULL, 'single_user', 'تم تأكيد الدفع', 'تم تأكيد دفعتك بقيمة 75.00 $ للحجز رقم 80', '2025-05-08 09:04:06.761136', '0', '2', 1, '/bookings/details/80/', NULL, 2, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_accesstoken`
--

CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  `id_token_id` bigint(20) DEFAULT NULL,
  `token_checksum` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_application`
--

CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL,
  `post_logout_redirect_uris` longtext NOT NULL,
  `hash_client_secret` tinyint(1) NOT NULL,
  `allowed_origins` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_grant`
--

CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_idtoken`
--

CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint(20) NOT NULL,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  `token_family` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments_currency`
--

CREATE TABLE `payments_currency` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(2, '2025-03-10 14:41:32.412347', '2025-03-10 14:41:32.412347', NULL, 'SAR', 'sa', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments_hotelpaymentmethod`
--

CREATE TABLE `payments_hotelpaymentmethod` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `payment_option_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_hotelpaymentmethod`
--

INSERT INTO `payments_hotelpaymentmethod` (`id`, `created_at`, `updated_at`, `deleted_at`, `account_name`, `account_number`, `iban`, `description`, `is_active`, `created_by_id`, `hotel_id`, `payment_option_id`, `updated_by_id`) VALUES
(1, NULL, '2025-04-12 21:44:40.831877', NULL, 'ahmed mohamed ahmed', '111111111', '01111111', 'asdsa\r\nasdas\r\nasdsac\r\nczczx', 1, NULL, 1, 1, 1),
(2, NULL, '2025-04-12 21:26:44.541421', NULL, 'sami saleh', '0006565884', '00556516', 'asdasdsa', 0, NULL, 1, 2, 1),
(3, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 'ahmed alKuraimi', '53153135', '0031561615', 'dasd\r\n444asd\r\nsadas5das6d5', 1, NULL, 1, 3, NULL),
(4, '2025-04-12 21:44:33.442216', '2025-04-12 21:44:33.442216', NULL, NULL, NULL, NULL, 'pay when you came', 1, 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments_payment`
--

CREATE TABLE `payments_payment` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `transfer_image` varchar(100) DEFAULT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `payment_subtotal` decimal(10,2) NOT NULL,
  `payment_totalamount` decimal(10,2) NOT NULL,
  `payment_currency` varchar(10) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_note` longtext DEFAULT NULL,
  `payment_discount` decimal(10,2) NOT NULL,
  `payment_discount_code` varchar(100) DEFAULT NULL,
  `booking_id` bigint(20) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_payment`
--

INSERT INTO `payments_payment` (`id`, `created_at`, `updated_at`, `deleted_at`, `transfer_image`, `payment_status`, `payment_date`, `payment_subtotal`, `payment_totalamount`, `payment_currency`, `payment_type`, `payment_note`, `payment_discount`, `payment_discount_code`, `booking_id`, `created_by_id`, `payment_method_id`, `updated_by_id`, `user_id`) VALUES
(1, '2025-04-16 12:13:49.917872', '2025-04-16 12:13:49.917872', NULL, 'payments/transfer/transfer_image/bg_aNUVRHR.jpg', 0, '2025-04-16 12:13:49.898226', 2640000.00, 2640000.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 1, NULL, 1, NULL, 1),
(2, '2025-04-17 22:58:46.328056', '2025-04-17 23:00:02.712073', NULL, '', 1, '2025-04-17 22:58:46.310717', 225.00, 225.00, '$', 'cash', 'تم التحويل بواسطة: ahmed mohamed ali - ', 0.00, '', 15, NULL, 4, NULL, 60),
(3, '2025-04-18 21:46:11.529616', '2025-04-18 22:47:43.530636', NULL, 'payments/transfer/transfer_image/bg_Er9pPnD.jpg', 2, '2025-04-18 21:46:11.526807', 135.00, 135.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 16, NULL, 1, NULL, 1),
(4, '2025-04-18 22:53:35.994031', '2025-04-18 23:19:08.120277', NULL, 'payments/transfer/transfer_image/airline-img11.png', 2, '2025-04-18 22:53:35.977977', 3630000.00, 3630000.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 17, NULL, 1, NULL, 1),
(5, '2025-04-18 22:55:53.253376', '2025-04-18 23:01:55.966944', NULL, 'payments/transfer/transfer_image/bg_S8EzpSQ.jpg', 1, '2025-04-18 22:55:53.246900', 5445000.00, 5445000.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed  asdas - ', 0.00, '', 18, NULL, 1, NULL, 61),
(6, '2025-04-19 09:35:41.581208', '2025-04-19 09:44:07.696049', NULL, '', 2, '2025-04-19 09:35:41.569994', 720.00, 720.00, '$', 'cash', 'تم التحويل بواسطة:  - ', 0.00, '', 19, NULL, 4, NULL, 1),
(7, '2025-04-19 10:19:42.356714', '2025-04-19 10:21:42.210896', NULL, '', 1, '2025-04-19 10:19:42.346573', 1760000.00, 1760000.00, '$', 'cash', 'تم التحويل بواسطة:  - ', 0.00, '', 23, NULL, 4, NULL, 1),
(8, '2025-05-05 19:16:10.764825', '2025-05-05 20:55:08.967458', NULL, 'payments/transfer/transfer_image/infor_TgvjZWI.jpg', 1, '2025-05-05 19:16:10.764825', 45.00, 45.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 46, NULL, 1, NULL, 62),
(9, '2025-05-05 21:01:13.118144', '2025-05-05 21:47:00.092635', NULL, 'payments/transfer/transfer_image/infor_Bnfw6eF.jpg', 2, '2025-05-05 21:01:13.109720', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 47, NULL, 1, NULL, 62),
(10, '2025-05-05 21:04:18.072227', '2025-05-05 21:49:38.427634', NULL, 'payments/transfer/transfer_image/infor_HgImElt.jpg', 2, '2025-05-05 21:04:18.063094', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 48, NULL, 3, NULL, 62),
(16, '2025-05-05 21:31:15.597098', '2025-05-05 21:32:50.665839', NULL, 'payments/transfer/transfer_image/logo_kyDIMoF.png', 1, '2025-05-05 21:31:15.588259', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 54, NULL, 1, NULL, 62),
(17, '2025-05-05 21:34:56.790178', '2025-05-05 21:52:28.721486', NULL, 'payments/transfer/transfer_image/logo_HAmgdAY.png', 1, '2025-05-05 21:34:56.000000', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed -', 0.00, NULL, 55, NULL, 1, NULL, 62),
(18, '2025-05-05 21:56:52.872817', '2025-05-05 21:56:52.872817', NULL, 'payments/transfer/transfer_image/logo_Xch9m4N.png', 0, '2025-05-05 21:56:52.856495', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 56, NULL, 1, NULL, 62),
(20, '2025-05-05 22:25:05.427538', '2025-05-05 22:34:38.401536', NULL, 'payments/transfer/transfer_image/logo_itvzWwQ.png', 2, '2025-05-05 22:25:05.423492', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 64, NULL, 3, NULL, 62),
(22, '2025-05-05 22:32:06.218371', '2025-05-05 22:35:27.475776', NULL, 'payments/transfer/transfer_image/logo_0r9zGsb.png', 1, '2025-05-05 22:32:06.216048', 30.00, 30.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 66, NULL, 1, NULL, 62),
(23, '2025-05-05 22:37:29.764033', '2025-05-05 22:38:35.637290', NULL, 'payments/transfer/transfer_image/logo_Yxlle1H.png', 1, '2025-05-05 22:37:29.754445', 75.00, 75.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 67, NULL, 1, NULL, 62),
(24, '2025-05-05 22:41:41.829460', '2025-05-05 22:42:07.163661', NULL, 'payments/transfer/transfer_image/logo_LCEV4CS.png', 1, '2025-05-05 22:41:41.823943', 150.00, 150.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 68, NULL, 1, NULL, 62),
(25, '2025-05-05 22:45:43.634322', '2025-05-05 22:46:26.845499', NULL, 'payments/transfer/transfer_image/logo_Rrw0o2e.png', 1, '2025-05-05 22:45:43.634322', 165.00, 165.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 69, NULL, 3, NULL, 62),
(26, '2025-05-05 22:54:22.577388', '2025-05-06 05:26:43.141768', NULL, 'payments/transfer/transfer_image/logo_DahR7MI.png', 1, '2025-05-05 22:54:22.575137', 75.00, 75.00, '$', 'e_pay', 'تم التحويل بواسطة: ahmed mohamed - ', 0.00, '', 73, NULL, 3, NULL, 62),
(27, '2025-05-06 14:35:44.615007', '2025-05-06 14:38:07.457439', NULL, 'payments/transfer/transfer_image/logo_h4N2Ez2.png', 1, '2025-05-06 14:35:44.605645', 90.00, 90.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 74, NULL, 3, NULL, 2),
(28, '2025-05-06 14:52:17.761615', '2025-05-06 14:52:17.761615', NULL, 'payments/transfer/transfer_image/logo_DcAelkP.png', 1, '2025-05-06 14:51:25.000000', 1000.00, 1000.00, 'Dollar', 'e_pay', 'aaaaaaa', 0.00, NULL, 45, NULL, 3, NULL, 2),
(29, '2025-05-07 08:50:10.466812', '2025-05-08 08:59:37.347492', NULL, 'payments/transfer/transfer_image/نخبة-المبرمجين_csM4vqE.png', 2, '2025-05-07 08:50:10.461781', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: mosa mohamed - ', 0.00, '', 75, NULL, 3, NULL, 5),
(30, '2025-05-07 08:52:27.493113', '2025-05-07 08:52:27.493113', NULL, 'payments/transfer/transfer_image/نخبة-المبرمجين_tFEbFjS.png', 0, '2025-05-07 08:52:27.491119', 15.00, 15.00, '$', 'e_pay', 'تم التحويل بواسطة: mosa mohamed - ', 0.00, '', 76, NULL, 1, NULL, 5),
(31, '2025-05-07 09:09:14.004120', '2025-05-07 10:35:40.196155', NULL, 'payments/transfer/transfer_image/hotel-booking.jpg', 1, '2025-05-07 09:09:13.994658', 100000.00, 100000.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 77, NULL, 3, NULL, 2),
(32, '2025-05-08 08:52:17.315505', '2025-05-08 08:52:17.315505', NULL, 'payments/transfer/transfer_image/logo_Sz3gDio.png', 0, '2025-05-08 08:52:17.306963', 55000.00, 55000.00, '$', 'e_pay', 'تم التحويل بواسطة:  - ', 0.00, '', 79, NULL, 3, NULL, 2),
(33, '2025-05-08 09:03:25.652057', '2025-05-08 09:04:06.761136', NULL, 'payments/transfer/transfer_image/logo_rFn9yDl.png', 1, '2025-05-08 09:03:25.647765', 75.00, 75.00, '$', 'e_pay', 'تم التحويل بواسطة: mosa mohamed - ', 0.00, '', 80, NULL, 3, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `payments_paymenthistory`
--

CREATE TABLE `payments_paymenthistory` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `history_date` datetime(6) NOT NULL,
  `previous_payment_status` int(11) DEFAULT NULL,
  `new_payment_status` int(11) NOT NULL,
  `previous_payment_totalamount` decimal(10,2) DEFAULT NULL,
  `new_payment_totalamount` decimal(10,2) NOT NULL,
  `previous_payment_discount` decimal(10,2) DEFAULT NULL,
  `new_payment_discount` decimal(10,2) NOT NULL,
  `previous_payment_discount_code` varchar(100) DEFAULT NULL,
  `new_payment_discount_code` varchar(100) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `changed_by_id` bigint(20) DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_paymenthistory`
--

INSERT INTO `payments_paymenthistory` (`id`, `created_at`, `updated_at`, `deleted_at`, `history_date`, `previous_payment_status`, `new_payment_status`, `previous_payment_totalamount`, `new_payment_totalamount`, `previous_payment_discount`, `new_payment_discount`, `previous_payment_discount_code`, `new_payment_discount_code`, `note`, `changed_by_id`, `created_by_id`, `payment_id`, `updated_by_id`) VALUES
(2, '2025-04-17 23:00:02.717808', '2025-04-17 23:00:02.717808', NULL, '2025-04-17 23:00:02.717808', 0, 1, 225.00, 225.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-17 23:00:02.716810+00:00', 60, NULL, 2, NULL),
(4, '2025-04-18 22:42:19.647219', '2025-04-18 22:42:19.647219', NULL, '2025-04-18 22:42:19.647219', 0, 1, 135.00, 135.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-18 22:42:19.647219+00:00', 1, NULL, 3, NULL),
(5, '2025-04-18 22:47:43.533592', '2025-04-18 22:47:43.533592', NULL, '2025-04-18 22:47:43.534622', 1, 2, 135.00, 135.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-18 22:47:43.533592+00:00', 1, NULL, 3, NULL),
(6, '2025-04-18 22:57:28.761362', '2025-04-18 22:57:28.761362', NULL, '2025-04-18 22:57:28.761362', 0, 1, 3630000.00, 3630000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-18 22:57:28.760358+00:00', 1, NULL, 4, NULL),
(7, '2025-04-18 23:01:55.973367', '2025-04-18 23:01:55.973367', NULL, '2025-04-18 23:01:55.973367', 0, 1, 5445000.00, 5445000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-18 23:01:55.972232+00:00', 61, NULL, 5, NULL),
(8, '2025-04-18 23:19:08.130875', '2025-04-18 23:19:08.130875', NULL, '2025-04-18 23:19:08.130875', 1, 2, 3630000.00, 3630000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-18 23:19:08.128882+00:00', 1, NULL, 4, NULL),
(9, '2025-04-19 09:37:30.469071', '2025-04-19 09:37:30.469071', NULL, '2025-04-19 09:37:30.469071', 0, 1, 720.00, 720.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-19 09:37:30.467745+00:00', 1, NULL, 6, NULL),
(10, '2025-04-19 09:44:07.703390', '2025-04-19 09:44:07.704386', NULL, '2025-04-19 09:44:07.704386', 1, 2, 720.00, 720.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-19 09:44:07.702394+00:00', 1, NULL, 6, NULL),
(11, '2025-04-19 10:21:42.216993', '2025-04-19 10:21:42.216993', NULL, '2025-04-19 10:21:42.216993', 0, 1, 1760000.00, 1760000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-04-19 10:21:42.216993+00:00', 1, NULL, 7, NULL),
(12, '2025-05-05 19:47:59.049541', '2025-05-05 19:47:59.049541', NULL, '2025-05-05 19:47:59.049541', 0, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 19:47:59.047521+00:00', 62, NULL, 8, NULL),
(13, '2025-05-05 19:50:20.863107', '2025-05-05 19:50:20.863107', NULL, '2025-05-05 19:50:20.863107', 1, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 19:50:20.863107+00:00', 62, NULL, 8, NULL),
(14, '2025-05-05 19:50:43.048933', '2025-05-05 19:50:43.048933', NULL, '2025-05-05 19:50:43.048933', 1, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 19:50:43.048933+00:00', 62, NULL, 8, NULL),
(15, '2025-05-05 19:50:44.643543', '2025-05-05 19:50:44.643543', NULL, '2025-05-05 19:50:44.644290', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 19:50:44.643543+00:00', 62, NULL, 8, NULL),
(16, '2025-05-05 19:50:45.681557', '2025-05-05 19:50:45.681557', NULL, '2025-05-05 19:50:45.681557', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 19:50:45.680520+00:00', 62, NULL, 8, NULL),
(17, '2025-05-05 20:00:08.998030', '2025-05-05 20:00:08.998030', NULL, '2025-05-05 20:00:08.998030', 1, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:00:08.998030+00:00', 62, NULL, 8, NULL),
(18, '2025-05-05 20:01:22.188201', '2025-05-05 20:01:22.188201', NULL, '2025-05-05 20:01:22.188201', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:01:22.188201+00:00', 62, NULL, 8, NULL),
(19, '2025-05-05 20:02:26.226794', '2025-05-05 20:02:26.226794', NULL, '2025-05-05 20:02:26.226794', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:02:26.225763+00:00', 62, NULL, 8, NULL),
(20, '2025-05-05 20:07:58.595091', '2025-05-05 20:07:58.595091', NULL, '2025-05-05 20:07:58.595091', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:07:58.595091+00:00', 62, NULL, 8, NULL),
(21, '2025-05-05 20:08:09.423090', '2025-05-05 20:08:09.423090', NULL, '2025-05-05 20:08:09.423090', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:08:09.422096+00:00', 62, NULL, 8, NULL),
(22, '2025-05-05 20:10:43.620563', '2025-05-05 20:10:43.620563', NULL, '2025-05-05 20:10:43.620563', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:10:43.619564+00:00', 62, NULL, 8, NULL),
(23, '2025-05-05 20:11:36.234088', '2025-05-05 20:11:36.234088', NULL, '2025-05-05 20:11:36.234088', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:11:36.232081+00:00', 62, NULL, 8, NULL),
(24, '2025-05-05 20:12:35.999883', '2025-05-05 20:12:35.999883', NULL, '2025-05-05 20:12:35.999883', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:12:35.998885+00:00', 62, NULL, 8, NULL),
(25, '2025-05-05 20:12:52.822601', '2025-05-05 20:12:52.822601', NULL, '2025-05-05 20:12:52.822601', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:12:52.820797+00:00', 62, NULL, 8, NULL),
(26, '2025-05-05 20:14:19.441904', '2025-05-05 20:14:19.441904', NULL, '2025-05-05 20:14:19.441904', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:14:19.440459+00:00', 62, NULL, 8, NULL),
(27, '2025-05-05 20:14:29.462136', '2025-05-05 20:14:29.462136', NULL, '2025-05-05 20:14:29.462136', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:14:29.461136+00:00', 62, NULL, 8, NULL),
(28, '2025-05-05 20:17:34.895496', '2025-05-05 20:17:34.895496', NULL, '2025-05-05 20:17:34.895496', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:17:34.895496+00:00', 62, NULL, 8, NULL),
(29, '2025-05-05 20:17:40.699020', '2025-05-05 20:17:40.699020', NULL, '2025-05-05 20:17:40.699020', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:17:40.697979+00:00', 62, NULL, 8, NULL),
(30, '2025-05-05 20:18:25.525424', '2025-05-05 20:18:25.525424', NULL, '2025-05-05 20:18:25.525424', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:18:25.524424+00:00', 62, NULL, 8, NULL),
(31, '2025-05-05 20:19:34.946349', '2025-05-05 20:19:34.946349', NULL, '2025-05-05 20:19:34.946349', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:19:34.946349+00:00', 62, NULL, 8, NULL),
(32, '2025-05-05 20:22:27.546480', '2025-05-05 20:22:27.546480', NULL, '2025-05-05 20:22:27.546480', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:22:27.545475+00:00', 62, NULL, 8, NULL),
(33, '2025-05-05 20:22:35.029940', '2025-05-05 20:22:35.029940', NULL, '2025-05-05 20:22:35.029940', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:22:35.029940+00:00', 62, NULL, 8, NULL),
(34, '2025-05-05 20:24:24.900275', '2025-05-05 20:24:24.900275', NULL, '2025-05-05 20:24:24.900275', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:24:24.899278+00:00', 62, NULL, 8, NULL),
(35, '2025-05-05 20:24:42.407036', '2025-05-05 20:24:42.407036', NULL, '2025-05-05 20:24:42.407036', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:24:42.407036+00:00', 62, NULL, 8, NULL),
(36, '2025-05-05 20:40:00.709288', '2025-05-05 20:40:00.709288', NULL, '2025-05-05 20:40:00.709288', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:40:00.708290+00:00', 62, NULL, 8, NULL),
(37, '2025-05-05 20:40:22.471609', '2025-05-05 20:40:22.471609', NULL, '2025-05-05 20:40:22.471609', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:40:22.470606+00:00', 62, NULL, 8, NULL),
(38, '2025-05-05 20:40:37.390866', '2025-05-05 20:40:37.391187', NULL, '2025-05-05 20:40:37.391187', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:40:37.389824+00:00', 62, NULL, 8, NULL),
(39, '2025-05-05 20:43:21.999480', '2025-05-05 20:43:21.999480', NULL, '2025-05-05 20:43:21.999480', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:43:21.998274+00:00', 62, NULL, 8, NULL),
(40, '2025-05-05 20:43:35.260361', '2025-05-05 20:43:35.260361', NULL, '2025-05-05 20:43:35.260361', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:43:35.260361+00:00', 62, NULL, 8, NULL),
(41, '2025-05-05 20:52:32.398023', '2025-05-05 20:52:32.398023', NULL, '2025-05-05 20:52:32.398023', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:52:32.396847+00:00', 62, NULL, 8, NULL),
(42, '2025-05-05 20:53:59.443649', '2025-05-05 20:53:59.443649', NULL, '2025-05-05 20:53:59.443649', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:53:59.443649+00:00', 62, NULL, 8, NULL),
(43, '2025-05-05 20:54:06.341948', '2025-05-05 20:54:06.341948', NULL, '2025-05-05 20:54:06.341948', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:54:06.340907+00:00', 62, NULL, 8, NULL),
(44, '2025-05-05 20:54:31.843687', '2025-05-05 20:54:31.844020', NULL, '2025-05-05 20:54:31.844020', 1, 2, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:54:31.842680+00:00', 62, NULL, 8, NULL),
(45, '2025-05-05 20:55:08.971911', '2025-05-05 20:55:08.971911', NULL, '2025-05-05 20:55:08.971911', 2, 1, 45.00, 45.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 20:55:08.971911+00:00', 62, NULL, 8, NULL),
(46, '2025-05-05 21:06:34.818944', '2025-05-05 21:06:34.818944', NULL, '2025-05-05 21:06:34.818944', 0, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:06:34.818944+00:00', 62, NULL, 10, NULL),
(47, '2025-05-05 21:07:56.838361', '2025-05-05 21:07:56.839645', NULL, '2025-05-05 21:07:56.839645', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:07:56.837317+00:00', 62, NULL, 10, NULL),
(48, '2025-05-05 21:08:06.794931', '2025-05-05 21:08:06.794931', NULL, '2025-05-05 21:08:06.794931', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:08:06.794931+00:00', 62, NULL, 10, NULL),
(49, '2025-05-05 21:08:14.546043', '2025-05-05 21:08:14.546043', NULL, '2025-05-05 21:08:14.546043', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:08:14.546043+00:00', 62, NULL, 10, NULL),
(50, '2025-05-05 21:08:45.542986', '2025-05-05 21:08:45.542986', NULL, '2025-05-05 21:08:45.542986', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:08:45.541865+00:00', 62, NULL, 10, NULL),
(51, '2025-05-05 21:08:53.696093', '2025-05-05 21:08:53.696093', NULL, '2025-05-05 21:08:53.696093', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:08:53.696093+00:00', 62, NULL, 10, NULL),
(52, '2025-05-05 21:09:34.260888', '2025-05-05 21:09:34.260888', NULL, '2025-05-05 21:09:34.260888', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:09:34.259880+00:00', 62, NULL, 10, NULL),
(53, '2025-05-05 21:16:23.831673', '2025-05-05 21:16:23.832671', NULL, '2025-05-05 21:16:23.832671', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:16:23.830386+00:00', 62, NULL, 10, NULL),
(54, '2025-05-05 21:16:41.478841', '2025-05-05 21:16:41.478841', NULL, '2025-05-05 21:16:41.478841', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:16:41.478841+00:00', 62, NULL, 10, NULL),
(55, '2025-05-05 21:18:03.301404', '2025-05-05 21:18:03.301404', NULL, '2025-05-05 21:18:03.302439', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:18:03.300268+00:00', 62, NULL, 10, NULL),
(56, '2025-05-05 21:18:10.548791', '2025-05-05 21:18:10.548791', NULL, '2025-05-05 21:18:10.549805', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:18:10.547761+00:00', 62, NULL, 10, NULL),
(57, '2025-05-05 21:32:11.343906', '2025-05-05 21:32:11.343906', NULL, '2025-05-05 21:32:11.343906', 0, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:32:11.341794+00:00', 62, NULL, 16, NULL),
(58, '2025-05-05 21:32:20.954533', '2025-05-05 21:32:20.954533', NULL, '2025-05-05 21:32:20.954533', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:32:20.954533+00:00', 62, NULL, 16, NULL),
(59, '2025-05-05 21:32:28.595660', '2025-05-05 21:32:28.595660', NULL, '2025-05-05 21:32:28.595660', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:32:28.595130+00:00', 62, NULL, 16, NULL),
(60, '2025-05-05 21:32:50.680695', '2025-05-05 21:32:50.680695', NULL, '2025-05-05 21:32:50.680695', 2, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:32:50.678320+00:00', 62, NULL, 16, NULL),
(61, '2025-05-05 21:36:58.565632', '2025-05-05 21:36:58.565632', NULL, '2025-05-05 21:36:58.565632', 0, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:36:58.565632+00:00', 62, NULL, 17, NULL),
(62, '2025-05-05 21:37:29.620571', '2025-05-05 21:37:29.621863', NULL, '2025-05-05 21:37:29.621863', 1, 0, 15.00, 15.00, 0.00, 0.00, '', NULL, 'Payment updated on 2025-05-05 21:37:29.620571+00:00', 62, NULL, 17, NULL),
(63, '2025-05-05 21:37:45.660723', '2025-05-05 21:37:45.660723', NULL, '2025-05-05 21:37:45.660723', 0, 1, 15.00, 15.00, 0.00, 0.00, NULL, NULL, 'Payment updated on 2025-05-05 21:37:45.659724+00:00', 62, NULL, 17, NULL),
(64, '2025-05-05 21:45:49.852897', '2025-05-05 21:45:49.852897', NULL, '2025-05-05 21:45:49.852897', 0, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:45:49.851860+00:00', 62, NULL, 9, NULL),
(65, '2025-05-05 21:47:00.099704', '2025-05-05 21:47:00.099704', NULL, '2025-05-05 21:47:00.099704', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:47:00.098663+00:00', 62, NULL, 9, NULL),
(66, '2025-05-05 21:49:38.436519', '2025-05-05 21:49:38.436519', NULL, '2025-05-05 21:49:38.436519', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 21:49:38.434406+00:00', 62, NULL, 10, NULL),
(67, '2025-05-05 21:50:11.512505', '2025-05-05 21:50:11.512505', NULL, '2025-05-05 21:50:11.512505', 1, 2, 15.00, 15.00, 0.00, 0.00, NULL, NULL, 'Payment updated on 2025-05-05 21:50:11.511522+00:00', 62, NULL, 17, NULL),
(69, '2025-05-05 21:51:17.696581', '2025-05-05 21:51:17.696581', NULL, '2025-05-05 21:51:17.696581', 2, 1, 15.00, 15.00, 0.00, 0.00, NULL, NULL, 'Payment updated on 2025-05-05 21:51:17.696581+00:00', 62, NULL, 17, NULL),
(70, '2025-05-05 21:51:41.496083', '2025-05-05 21:51:41.496083', NULL, '2025-05-05 21:51:41.496083', 1, 1, 15.00, 15.00, 0.00, 0.00, NULL, NULL, 'Payment updated on 2025-05-05 21:51:41.494530+00:00', 62, NULL, 17, NULL),
(71, '2025-05-05 21:52:28.729046', '2025-05-05 21:52:28.729046', NULL, '2025-05-05 21:52:28.729046', 1, 1, 15.00, 15.00, 0.00, 0.00, NULL, NULL, 'Payment updated on 2025-05-05 21:52:28.721486+00:00', 62, NULL, 17, NULL),
(72, '2025-05-05 22:34:21.088058', '2025-05-05 22:34:21.088058', NULL, '2025-05-05 22:34:21.088058', 0, 1, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:34:21.088058+00:00', 62, NULL, 20, NULL),
(73, '2025-05-05 22:34:38.403531', '2025-05-05 22:34:38.403531', NULL, '2025-05-05 22:34:38.403531', 1, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:34:38.403531+00:00', 62, NULL, 20, NULL),
(74, '2025-05-05 22:35:27.477787', '2025-05-05 22:35:27.477787', NULL, '2025-05-05 22:35:27.477787', 0, 1, 30.00, 30.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:35:27.477787+00:00', 62, NULL, 22, NULL),
(75, '2025-05-05 22:38:35.652911', '2025-05-05 22:38:35.652911', NULL, '2025-05-05 22:38:35.652911', 0, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:38:35.652911+00:00', 62, NULL, 23, NULL),
(76, '2025-05-05 22:42:07.165664', '2025-05-05 22:42:07.165664', NULL, '2025-05-05 22:42:07.165664', 0, 1, 150.00, 150.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:42:07.165664+00:00', 62, NULL, 24, NULL),
(77, '2025-05-05 22:46:26.845499', '2025-05-05 22:46:26.845499', NULL, '2025-05-05 22:46:26.845499', 0, 1, 165.00, 165.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:46:26.845499+00:00', 62, NULL, 25, NULL),
(78, '2025-05-05 22:56:22.010469', '2025-05-05 22:56:22.011345', NULL, '2025-05-05 22:56:22.011458', 0, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:56:22.010308+00:00', 62, NULL, 26, NULL),
(79, '2025-05-05 22:56:39.525960', '2025-05-05 22:56:39.525960', NULL, '2025-05-05 22:56:39.525960', 1, 2, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:56:39.524621+00:00', 62, NULL, 26, NULL),
(80, '2025-05-05 22:56:50.680830', '2025-05-05 22:56:50.680830', NULL, '2025-05-05 22:56:50.680830', 2, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-05 22:56:50.679834+00:00', 62, NULL, 26, NULL),
(81, '2025-05-06 05:23:19.892894', '2025-05-06 05:23:19.892894', NULL, '2025-05-06 05:23:19.892894', 1, 2, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 05:23:19.891334+00:00', 62, NULL, 26, NULL),
(82, '2025-05-06 05:24:08.021359', '2025-05-06 05:24:08.021359', NULL, '2025-05-06 05:24:08.021359', 2, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 05:24:08.019452+00:00', 62, NULL, 26, NULL),
(83, '2025-05-06 05:24:27.259174', '2025-05-06 05:24:27.259174', NULL, '2025-05-06 05:24:27.259174', 1, 2, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 05:24:27.259174+00:00', 62, NULL, 26, NULL),
(84, '2025-05-06 05:24:43.368585', '2025-05-06 05:24:43.368585', NULL, '2025-05-06 05:24:43.368585', 2, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 05:24:43.367607+00:00', 62, NULL, 26, NULL),
(85, '2025-05-06 05:26:43.148611', '2025-05-06 05:26:43.148611', NULL, '2025-05-06 05:26:43.148611', 1, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 05:26:43.147667+00:00', 62, NULL, 26, NULL),
(86, '2025-05-06 14:38:07.465063', '2025-05-06 14:38:07.465063', NULL, '2025-05-06 14:38:07.465063', 0, 1, 90.00, 90.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-06 14:38:07.464792+00:00', 2, NULL, 27, NULL),
(87, '2025-05-07 10:24:07.127940', '2025-05-07 10:24:07.127940', NULL, '2025-05-07 10:24:07.127940', 0, 1, 100000.00, 100000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-07 10:24:07.126943+00:00', 2, NULL, 31, NULL),
(88, '2025-05-07 10:28:39.314317', '2025-05-07 10:28:39.314317', NULL, '2025-05-07 10:28:39.314317', 1, 2, 100000.00, 100000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-07 10:28:39.313276+00:00', 2, NULL, 31, NULL),
(89, '2025-05-07 10:29:15.573841', '2025-05-07 10:29:15.573841', NULL, '2025-05-07 10:29:15.573841', 2, 1, 100000.00, 100000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-07 10:29:15.572847+00:00', 2, NULL, 31, NULL),
(90, '2025-05-07 10:35:37.551378', '2025-05-07 10:35:37.551378', NULL, '2025-05-07 10:35:37.551378', 1, 2, 100000.00, 100000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-07 10:35:37.551378+00:00', 2, NULL, 31, NULL),
(91, '2025-05-07 10:35:40.203765', '2025-05-07 10:35:40.203765', NULL, '2025-05-07 10:35:40.203765', 2, 1, 100000.00, 100000.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-07 10:35:40.203033+00:00', 2, NULL, 31, NULL),
(92, '2025-05-08 08:59:37.347492', '2025-05-08 08:59:37.347492', NULL, '2025-05-08 08:59:37.347492', 0, 2, 15.00, 15.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-08 08:59:37.347492+00:00', 5, NULL, 29, NULL),
(93, '2025-05-08 09:04:06.761136', '2025-05-08 09:04:06.761136', NULL, '2025-05-08 09:04:06.761136', 0, 1, 75.00, 75.00, 0.00, 0.00, '', '', 'Payment updated on 2025-05-08 09:04:06.761136+00:00', 5, NULL, 33, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments_paymentoption`
--

CREATE TABLE `payments_paymentoption` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `method_name` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `currency_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments_paymentoption`
--

INSERT INTO `payments_paymentoption` (`id`, `created_at`, `updated_at`, `deleted_at`, `method_name`, `logo`, `is_active`, `created_by_id`, `currency_id`, `updated_by_id`) VALUES
(1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 'al najim', 'payment_logos/najim.jpg', 1, NULL, 1, NULL),
(2, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 'al akwa', 'payment_logos/akwa.jpg', 1, NULL, 1, NULL),
(3, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL, 'kuraimi', 'payment_logos/alkuraimi.png', 1, NULL, 1, NULL),
(4, '2025-04-12 21:38:32.190353', '2025-04-12 21:38:32.190353', NULL, 'كاش', 'payment_logos/Cashondelivery.jpg', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_hotelreview`
--

CREATE TABLE `reviews_hotelreview` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-05-08 13:54:00.425218', '2025-05-08 13:54:00.425218', NULL, 4, 4, 2, 3, 'gooooooood', 1, NULL, 1, NULL, 5),
(2, '2025-05-08 17:55:27.531846', '2025-05-08 17:55:27.531846', NULL, 3, 4, 4, 2, 'sadas', 1, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_roomreview`
--

CREATE TABLE `reviews_roomreview` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-05-07 09:08:13.423390', '2025-05-07 09:08:13.423390', NULL, 5, 'hello', 1, NULL, 1, 2, NULL, 2),
(2, '2025-05-08 17:36:47.603788', '2025-05-08 17:36:47.603788', NULL, 3, 'hello', 1, NULL, 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_availability`
--

CREATE TABLE `rooms_availability` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `availability_date` date NOT NULL,
  `available_rooms` int(10) UNSIGNED NOT NULL CHECK (`available_rooms` >= 0),
  `notes` longtext DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_availability`
--

INSERT INTO `rooms_availability` (`id`, `created_at`, `updated_at`, `deleted_at`, `availability_date`, `available_rooms`, `notes`, `created_by_id`, `hotel_id`, `room_type_id`, `updated_by_id`) VALUES
(17, '2025-04-17 10:17:23.018744', '2025-04-17 10:17:31.396120', NULL, '2025-04-17', 11, 's', 1, 4, 7, 1),
(18, '2025-04-17 10:18:18.909949', '2025-04-17 10:18:18.909949', NULL, '2025-04-18', 10, NULL, NULL, 4, 7, NULL),
(19, '2025-04-17 10:18:18.909949', '2025-04-17 10:18:18.910911', NULL, '2025-04-19', 10, NULL, NULL, 4, 7, NULL),
(20, '2025-04-17 10:18:18.911083', '2025-04-17 10:18:18.911083', NULL, '2025-04-20', 10, NULL, NULL, 4, 7, NULL),
(21, '2025-04-17 10:18:18.911083', '2025-04-17 10:18:18.911083', NULL, '2025-04-21', 10, NULL, NULL, 4, 7, NULL),
(22, '2025-04-17 10:18:18.911083', '2025-04-17 10:18:18.911083', NULL, '2025-04-22', 10, NULL, NULL, 4, 7, NULL),
(23, '2025-04-17 10:18:18.911083', '2025-04-17 10:18:18.911083', NULL, '2025-04-23', 10, NULL, NULL, 4, 7, NULL),
(24, '2025-04-17 10:18:18.911909', '2025-04-17 10:18:18.911909', NULL, '2025-04-24', 10, NULL, NULL, 4, 7, NULL),
(25, '2025-04-17 10:18:18.911909', '2025-04-17 10:18:18.911909', NULL, '2025-04-25', 10, NULL, NULL, 4, 7, NULL),
(26, '2025-04-17 10:18:18.912346', '2025-04-17 10:18:18.912346', NULL, '2025-04-26', 10, NULL, NULL, 4, 7, NULL),
(27, '2025-04-17 10:18:18.912346', '2025-04-17 10:18:18.912346', NULL, '2025-04-27', 10, NULL, NULL, 4, 7, NULL),
(28, '2025-04-17 10:18:18.912346', '2025-04-17 10:18:18.912346', NULL, '2025-04-28', 10, NULL, NULL, 4, 7, NULL),
(29, '2025-04-17 10:18:18.912346', '2025-04-17 10:18:18.912346', NULL, '2025-04-29', 10, NULL, NULL, 4, 7, NULL),
(30, '2025-04-17 10:18:18.912346', '2025-04-17 10:18:18.912346', NULL, '2025-04-30', 10, NULL, NULL, 4, 7, NULL),
(32, '2025-04-17 22:48:02.389556', '2025-04-17 22:48:02.392552', NULL, '2025-04-17', 15, NULL, NULL, 2, 6, NULL),
(33, '2025-04-17 22:48:02.400983', '2025-04-17 22:48:02.402970', NULL, '2025-04-18', 15, NULL, NULL, 2, 6, NULL),
(34, '2025-04-17 22:48:02.410443', '2025-04-17 22:48:02.413999', NULL, '2025-04-19', 15, NULL, NULL, 2, 6, NULL),
(35, '2025-04-17 22:48:02.421963', '2025-04-17 22:48:02.424006', NULL, '2025-04-20', 15, NULL, NULL, 2, 6, NULL),
(36, '2025-04-17 22:48:02.433494', '2025-04-17 22:48:02.434536', NULL, '2025-04-21', 15, NULL, NULL, 2, 6, NULL),
(37, '2025-04-17 22:48:02.442174', '2025-04-17 22:48:02.444332', NULL, '2025-04-22', 15, NULL, NULL, 2, 6, NULL),
(38, '2025-04-17 22:48:02.451319', '2025-04-17 22:48:02.453181', NULL, '2025-04-23', 15, NULL, NULL, 2, 6, NULL),
(39, '2025-04-17 22:48:02.461211', '2025-04-17 22:48:02.464126', NULL, '2025-04-24', 15, NULL, NULL, 2, 6, NULL),
(40, '2025-04-17 22:48:02.470524', '2025-04-17 22:48:02.472603', NULL, '2025-04-25', 15, NULL, NULL, 2, 6, NULL),
(89, '2025-04-17 22:48:10.258247', '2025-04-17 22:48:10.261173', NULL, '2025-04-19', 10, NULL, NULL, 2, 5, NULL),
(90, '2025-04-17 22:48:10.273171', '2025-04-17 22:48:10.276018', NULL, '2025-04-20', 10, NULL, NULL, 2, 5, NULL),
(91, '2025-04-17 22:48:10.286302', '2025-04-17 22:48:10.288283', NULL, '2025-04-21', 10, NULL, NULL, 2, 5, NULL),
(92, '2025-04-17 22:48:10.297232', '2025-04-17 22:48:10.299781', NULL, '2025-04-22', 10, NULL, NULL, 2, 5, NULL),
(93, '2025-04-17 22:48:10.306357', '2025-04-17 22:48:10.309350', NULL, '2025-04-23', 10, NULL, NULL, 2, 5, NULL),
(94, '2025-04-17 22:48:10.318501', '2025-04-17 22:48:10.320415', NULL, '2025-04-24', 10, NULL, NULL, 2, 5, NULL),
(95, '2025-04-17 22:48:10.329835', '2025-04-17 22:48:10.331931', NULL, '2025-04-25', 10, NULL, NULL, 2, 5, NULL),
(96, '2025-04-17 22:48:10.338916', '2025-04-17 22:48:10.339950', NULL, '2025-04-26', 10, NULL, NULL, 2, 5, NULL),
(97, '2025-04-17 22:48:10.348862', '2025-04-17 22:48:10.350748', NULL, '2025-04-27', 10, NULL, NULL, 2, 5, NULL),
(98, '2025-04-17 22:48:10.356811', '2025-04-17 22:48:10.359805', NULL, '2025-04-28', 10, NULL, NULL, 2, 5, NULL),
(99, '2025-04-17 22:48:10.368400', '2025-04-17 22:48:10.371412', NULL, '2025-04-29', 10, NULL, NULL, 2, 5, NULL),
(100, '2025-04-17 22:48:10.379961', '2025-04-17 22:48:10.382175', NULL, '2025-04-30', 10, NULL, NULL, 2, 5, NULL),
(101, '2025-04-17 22:48:10.389304', '2025-04-17 22:48:10.391682', NULL, '2025-05-01', 10, NULL, NULL, 2, 5, NULL),
(102, '2025-04-17 22:48:10.399247', '2025-04-17 22:48:10.403067', NULL, '2025-05-02', 10, NULL, NULL, 2, 5, NULL),
(103, '2025-04-17 22:48:10.410349', '2025-04-17 22:48:10.413622', NULL, '2025-05-03', 10, NULL, NULL, 2, 5, NULL),
(104, '2025-04-17 22:48:10.420690', '2025-04-17 22:48:10.421687', NULL, '2025-05-04', 10, NULL, NULL, 2, 5, NULL),
(105, '2025-04-17 22:48:10.430943', '2025-04-17 22:48:10.433935', NULL, '2025-05-05', 10, NULL, NULL, 2, 5, NULL),
(106, '2025-04-17 22:48:10.440419', '2025-04-17 22:48:10.442581', NULL, '2025-05-06', 10, NULL, NULL, 2, 5, NULL),
(107, '2025-04-17 22:48:10.451559', '2025-04-17 22:48:10.453602', NULL, '2025-05-07', 10, NULL, NULL, 2, 5, NULL),
(108, '2025-04-17 22:48:10.461319', '2025-04-17 22:48:10.464062', NULL, '2025-05-08', 10, NULL, NULL, 2, 5, NULL),
(169, '2025-05-06 14:34:44.509143', '2025-05-06 15:02:36.607925', NULL, '2025-05-06', 10, 'تم التحديث بسبب تمديد الحجز #4', 2, 1, 1, 2),
(170, '2025-05-06 14:35:03.903982', '2025-05-06 14:38:07.430092', NULL, '2025-05-07', 7, NULL, NULL, 1, 1, NULL),
(171, '2025-05-06 14:35:03.904987', '2025-05-08 09:04:06.758961', NULL, '2025-05-08', 2, NULL, NULL, 1, 1, NULL),
(172, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.358132', NULL, '2025-05-09', 7, NULL, NULL, 1, 1, NULL),
(173, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.365909', NULL, '2025-05-10', 7, NULL, NULL, 1, 1, NULL),
(174, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.373255', NULL, '2025-05-11', 7, NULL, NULL, 1, 1, NULL),
(175, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.382140', NULL, '2025-05-12', 7, NULL, NULL, 1, 1, NULL),
(176, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.390294', NULL, '2025-05-13', 7, NULL, NULL, 1, 1, NULL),
(177, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.399482', NULL, '2025-05-14', 7, NULL, NULL, 1, 1, NULL),
(178, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.406467', NULL, '2025-05-15', 7, NULL, NULL, 1, 1, NULL),
(179, '2025-05-06 14:35:03.904987', '2025-05-06 15:02:36.417257', NULL, '2025-05-16', 7, NULL, NULL, 1, 1, NULL),
(180, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.421384', NULL, '2025-05-17', 7, NULL, NULL, 1, 1, NULL),
(181, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.431106', NULL, '2025-05-18', 7, NULL, NULL, 1, 1, NULL),
(182, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.437687', NULL, '2025-05-19', 7, NULL, NULL, 1, 1, NULL),
(183, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.444388', NULL, '2025-05-20', 7, NULL, NULL, 1, 1, NULL),
(184, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.451453', NULL, '2025-05-21', 7, NULL, NULL, 1, 1, NULL),
(185, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.457626', NULL, '2025-05-22', 7, NULL, NULL, 1, 1, NULL),
(186, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.469565', NULL, '2025-05-23', 7, NULL, NULL, 1, 1, NULL),
(187, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.473677', NULL, '2025-05-24', 7, NULL, NULL, 1, 1, NULL),
(188, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.483857', NULL, '2025-05-25', 7, NULL, NULL, 1, 1, NULL),
(189, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.489056', NULL, '2025-05-26', 7, NULL, NULL, 1, 1, NULL),
(190, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.499759', NULL, '2025-05-27', 7, NULL, NULL, 1, 1, NULL),
(191, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.502491', NULL, '2025-05-28', 7, NULL, NULL, 1, 1, NULL),
(192, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.514103', NULL, '2025-05-29', 7, NULL, NULL, 1, 1, NULL),
(193, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.531987', NULL, '2025-05-30', 7, NULL, NULL, 1, 1, NULL),
(194, '2025-05-06 14:35:03.906022', '2025-05-06 15:02:36.537311', NULL, '2025-05-31', 7, NULL, NULL, 1, 1, NULL),
(195, '2025-05-06 14:52:18.216636', '2025-05-08 08:38:49.993347', NULL, '2025-05-15', 7, 'تم إنشاؤه تلقائياً أثناء الحجز', NULL, 1, 2, 2),
(196, '2025-05-07 09:06:07.118338', '2025-05-08 08:38:56.523197', NULL, '2025-05-16', 7, '', NULL, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_category`
--

CREATE TABLE `rooms_category` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_category`
--

INSERT INTO `rooms_category` (`id`, `created_at`, `updated_at`, `deleted_at`, `status`, `name`, `description`, `created_by_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:18:19.935767', '2025-03-01 19:18:46.244395', NULL, 1, 'vip', 'شسيسشيش', NULL, NULL),
(2, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'قياسي', 'غرف مريحة بمواصفات أساسية', 2, 2),
(3, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'جناح', 'أجنحة واسعة مع منطقة جلوس منفصلة', 2, 2),
(4, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'غرفة ديلوكس', 'غرف بمساحة أكبر وتجهيزات إضافية', 3, 3),
(5, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'غرفة مطلة على البحر', 'غرف تتمتع بإطلالة مباشرة على البحر', 3, 3),
(6, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'كوخ بيئي', 'أكواخ بسيطة وصديقة للبيئة', 6, 6),
(7, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'قياسي2', 'غرف مريحة بمواصفات أساسية', 3, 3),
(8, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 1, 'قياسي1', 'غرف مريحة بمواصفات أساسية', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomimage`
--

CREATE TABLE `rooms_roomimage` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
(1, '2025-03-01 19:22:07.144698', '2025-05-03 21:47:03.482757', NULL, 'room_images/img3.jpg', 1, 'VIP', 2, 1, 1, 1),
(2, '2025-03-01 19:22:24.536866', '2025-05-03 21:43:10.296158', NULL, 'room_images/img33.jpg', 0, 'saa', 2, 1, 1, 1),
(3, '2025-04-15 01:56:01.000000', '2025-05-03 21:47:14.327904', NULL, 'room_images/img33_VHmLwfl.jpg', 1, 'غرفة قياسية مزدوجة في فندق قصر سبأ', 2, 1, 2, 1),
(4, '2025-04-15 01:56:01.000000', '2025-05-03 21:44:21.993220', NULL, 'room_images/img29.jpg', 0, 'حمام الغرفة القياسية المزدوجة', 2, 1, 2, 1),
(5, '2025-04-15 01:56:01.000000', '2025-05-03 21:47:26.024255', NULL, 'room_images/img32.jpg', 1, 'إطلالة من غرفة مطلة على البحر في فندق أمواج عدن', 3, 2, 5, 1),
(6, '2025-04-15 01:56:01.000000', '2025-05-03 21:45:52.402240', NULL, 'room_images/img29_5GqTQNL.jpg', 0, 'سرير مزدوج في غرفة مطلة على البحر', 3, 2, 5, 1),
(7, '2025-04-15 01:56:01.000000', '2025-05-03 21:51:08.755296', NULL, 'room_images/img33_k4NB7XI.jpg', 1, 'كوخ بيئي مزدوج في نزل سقطرى', 6, 4, 6, 1),
(8, '2025-04-15 22:04:49.657032', '2025-05-03 21:44:01.735324', NULL, 'room_images/img30.jpg', 0, 'sssss', 1, 1, 2, 1),
(9, '2025-05-03 23:52:47.957540', '2025-05-03 23:52:47.957540', NULL, 'room_images/img32_duVlwYj.jpg', 1, NULL, 1, 2, 8, 1),
(10, '2025-05-03 23:54:01.921816', '2025-05-03 23:54:01.921816', NULL, 'room_images/img17.jpg', 1, NULL, 1, 4, 7, 1),
(11, '2025-05-03 23:54:24.340590', '2025-05-03 23:54:24.340590', NULL, 'room_images/img34.jpg', 1, NULL, 1, 1, 4, 1),
(12, '2025-05-03 23:54:56.935946', '2025-05-03 23:54:56.935946', NULL, 'room_images/img3_RcsrOvr.jpg', 0, NULL, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomprice`
--

CREATE TABLE `rooms_roomprice` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_special_offer` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_roomprice`
--

INSERT INTO `rooms_roomprice` (`id`, `created_at`, `updated_at`, `deleted_at`, `date_from`, `date_to`, `price`, `is_special_offer`, `created_by_id`, `hotel_id`, `room_type_id`, `updated_by_id`) VALUES
(1, '2025-04-01 23:57:21.633047', '2025-04-01 23:57:21.633047', NULL, '2025-04-01', '2025-04-11', 500.00, 0, 1, 1, 1, 1),
(2, '2025-04-04 21:50:12.631031', '2025-04-04 21:50:28.360614', NULL, '2025-04-04', '2025-04-05', 330.00, 0, 1, 2, 1, 1),
(3, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, '2025-04-15', '2025-12-31', 50000.00, 0, 2, 1, 2, 2),
(4, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, '2025-04-15', '2025-12-31', 75000.00, 0, 3, 2, 5, 3),
(5, '2025-04-15 01:56:01.000000', '2025-04-16 12:03:31.293556', NULL, '2025-04-16', '2025-05-21', 55000.00, 1, 2, 1, 2, 1),
(6, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, '2025-04-15', '2025-12-31', 40000.00, 0, 6, 4, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_roomtype`
--

CREATE TABLE `rooms_roomtype` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_roomtype`
--

INSERT INTO `rooms_roomtype` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `default_capacity`, `max_capacity`, `beds_count`, `rooms_count`, `base_price`, `is_active`, `category_id`, `created_by_id`, `hotel_id`, `updated_by_id`) VALUES
(1, '2025-03-01 19:21:28.984379', '2025-03-25 18:41:12.396279', NULL, 'room vip 2025', 'asdaskdjhsa', 4, 4, 6, 15, 15.00, 1, 1, 2, 1, 1),
(2, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'غرفة قياسية مفردة', 'غرفة مريحة لشخص واحد', 1, 1, 1, 10, 35000.00, 1, 1, 2, 1, 2),
(3, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'غرفة قياسية مزدوجة', 'غرفة مريحة لشخصين بسرير مزدوج أو سريرين منفصلين', 2, 3, 2, 15, 50000.00, 1, 1, 2, 1, 2),
(4, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'جناح جونيور', 'جناح أنيق مع منطقة جلوس صغيرة', 2, 3, 1, 5, 80000.00, 1, 2, 2, 1, 2),
(5, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'غرفة ديلوكس مزدوجة', 'غرفة واسعة مع تجهيزات محسنة لشخصين', 2, 3, 1, 8, 60000.00, 1, 3, 3, 2, 3),
(6, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'غرفة مزدوجة مطلة على البحر', 'غرفة لشخصين بإطلالة بحرية رائعة', 2, 2, 1, 12, 75000.00, 1, 4, 3, 2, 3),
(7, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'كوخ بيئي مزدوج', 'كوخ بسيط ومستدام لشخصين', 2, 2, 2, 6, 40000.00, 1, 5, 6, 4, 6),
(8, '2025-04-15 01:56:01.000000', '2025-04-15 01:56:01.000000', NULL, 'غرفة قياسية مزدوجة', 'غرفة أساسية ومريحة لشخصين', 2, 3, 2, 10, 45000.00, 1, 6, 3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services_coupon`
--

CREATE TABLE `services_coupon` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_purchase_amount` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `discount_type` varchar(10) NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_hotelservice`
--

CREATE TABLE `services_hotelservice` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_roomtypeservice`
--

CREATE TABLE `services_roomtypeservice` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `additional_fee` double NOT NULL,
  `created_by_id` bigint(20) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `updated_by_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_offers`
--

CREATE TABLE `service_offers` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
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
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `extra_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `user_id`, `created`, `modified`, `extra_data`) VALUES
(25, 'google-oauth2', 'telegram1imo@gmail.com', 59, '2025-04-16 14:38:41.676930', '2025-04-16 14:38:41.684862', '{\"auth_time\": 1744814321, \"expires\": 3598, \"token_type\": \"Bearer\", \"first_name\": \"\\u0645\\u0627\\u0631\\u0633 - Mars\", \"last_name\": \"\", \"gender\": null, \"birthday\": null, \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocKksxVfE_3RHUvFZftePpn2f01-HtmaEZQEyndPqpo7xHeo3SE=s96-c\", \"access_token\": \"ya29.a0AZYkNZjDhlTI39fEJmxJgHQuXI3YuzTD9vZpjbO-txDiviALf9hAG6ejAUZYkaYg4Mp7Lvo4x8X6pLQ4Fb3Oz5iqC46XPb2SbiSo_4XdeIRwQm9z5DdBP0bgOKdG-a4OrOe_MgNJ2Grz2qspwbfSuItAInAClCbN25fTWPj92AaCgYKAdMSARQSFQHGX2MiY3_m6iV9nOTk_oORZBk6aQ0177\"}');

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

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NTQ0NTU4NiwiaWF0IjoxNzQ0ODQwNzg2LCJqdGkiOiIyNWMxMDVkMGY3Yjg0Mjk2YjI4MTYxZGVkZWUyYmE5OSIsInVzZXJfaWQiOjF9.IkuDZDd2Qa_51fFeWc_oBzPzfvjeDpNnboiQlTOH2E8', '2025-04-16 21:59:46.583919', '2025-04-23 21:59:46.000000', 1, '25c105d0f7b84296b28161dedee2ba99'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NTQ4Njc5OCwiaWF0IjoxNzQ0ODgxOTk4LCJqdGkiOiJlZWM1ZWE2MDY3ZDA0NzllYTJiZTQ2N2ViNDRhOTkxZiIsInVzZXJfaWQiOjF9.XZRzFB5u_wWmzD3MldrwXwHWqJ28bIGNglfvaA0QEFs', '2025-04-17 09:26:38.993641', '2025-04-24 09:26:38.000000', 1, 'eec5ea6067d0479ea2be467eb44a991f'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzE1NDkxNCwiaWF0IjoxNzQ2NTUwMTE0LCJqdGkiOiIxOTcyMjZhOWU3OTA0MDljODZlN2Y0NDUwOGM0NzE2OCIsInVzZXJfaWQiOjJ9.LHuNaiKL4Fza85a22LdBwFknhM_-qUYpedibsWqPeFI', '2025-05-06 16:48:34.373954', '2025-05-13 16:48:34.000000', 2, '197226a9e790409c86e7f44508c47168'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzE2NDg5MywiaWF0IjoxNzQ2NTYwMDkzLCJqdGkiOiIxNjM5Y2UxY2MzMzg0NjhjYjFjMmFjNDFkY2E1MDkwNSIsInVzZXJfaWQiOjF9.cQ8mn4QjOL_08RrDnSOOb1rUXcyr7BtyG14B7s7ONMI', '2025-05-06 19:34:53.832851', '2025-05-13 19:34:53.000000', 1, '1639ce1cc338468cb1c2ac41dca50905');

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
  `image` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_created_at` datetime(6) DEFAULT NULL,
  `chart_id` bigint(20) DEFAULT NULL,
  `chield_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `date_joined`, `created_at`, `updated_at`, `user_type`, `phone`, `image`, `gender`, `birth_date`, `is_active`, `otp_code`, `otp_created_at`, `chart_id`, `chield_id`) VALUES
(1, 'pbkdf2_sha256$600000$xssyYTrtYKprANH8uPrmlY$rOMpYBnDwG16huHXSjMO0m2vBqAd/Ft7pMHMImb34nA=', '2025-05-08 14:38:57.112923', 1, 'a', '', '', 'a@a.com', 1, '2025-03-20 20:53:38.214703', '2025-03-20 20:53:39.041969', '2025-04-17 09:30:15.168109', '', '', '', 'Male', NULL, 1, NULL, NULL, 73, NULL),
(2, 'pbkdf2_sha256$600000$mRv4uTHEeVZ15lsGse5C0D$hF0CKJC3qr2/+yCUM252q7NnSKiBR3C+X1CTuLAv7WI=', '2025-05-07 10:43:04.561560', 0, 'b', '', '', 'b@b.com', 1, '2025-03-21 12:48:09.506849', '2025-03-21 12:48:10.018701', '2025-05-05 19:14:45.176680', 'hotel_manager', '', '', NULL, NULL, 1, NULL, NULL, 77, NULL),
(3, 'pbkdf2_sha256$600000$HDDXD5Lhdd8rcHhLG8UYVl$Q8FJflDelq1YQWUDvzR/2zhtU7X8maa5nF3lcjo0XlA=', '2025-03-01 22:40:14.016174', 0, 'motasem', '', '', 'motasem@motasem.com', 0, '2025-03-01 22:21:39.232835', '2025-03-01 22:21:41.258606', '2025-03-01 22:21:41.258606', 'user', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, 'pbkdf2_sha256$600000$69WafNQFxgQDN0ybf7EQYW$qearY4fO/keI64yiOKwtTlw4JsxM0IK+xRJFrCut2lo=', '2025-03-04 19:13:37.238210', 0, 'kakaka', '', '', 'kakaka@kakaka.kakaka', 0, '2025-03-04 19:06:56.842290', '2025-03-04 19:06:58.774589', '2025-03-04 19:06:58.774589', 'user', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, 'pbkdf2_sha256$600000$wp2FpScP9Phmy67xyNNudv$l8vyvhwQ4ldfSqQMUJueUTXRfzu479WTOV8Nx7qEoNQ=', '2025-05-08 13:53:44.912381', 0, 'mosaa', 'mosa', 'mohamed', '773081924k@gmail.com', 0, '2025-03-05 20:10:14.486479', '2025-03-05 20:10:16.220927', '2025-05-07 08:49:27.904615', 'customer', '', 'users/2025/03/12/img27.jpg', NULL, NULL, 1, NULL, NULL, 78, NULL),
(6, 'pbkdf2_sha256$600000$BbNnejHpZOfDP6VnObjVcz$nhsPttz7Xm4OTIK/zOWG0MrrT6q9PAv0jTWQyIffer0=', '2025-03-05 20:13:43.403102', 0, 'mosaa1', '', '', 'mosaa1@mosaa1.com', 0, '2025-03-05 20:13:41.381311', '2025-03-05 20:13:43.386627', '2025-03-05 20:13:43.386627', 'customer', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(7, 'pbkdf2_sha256$600000$vUeJuKMqNFAu6egbZVxQ85$uQPUm3C2c/AmXPOaKjFVNqCkRpV44XZB+IcyyRoeX9I=', '2025-03-06 08:09:12.614518', 0, 'asdjsk', '', '', 'asdjsk@asdjsk.com', 0, '2025-03-06 08:09:10.785662', '2025-03-06 08:09:12.595928', '2025-03-06 08:09:12.595928', 'customer', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(8, 'pbkdf2_sha256$600000$EWBPrY4FupGVI4TQNhXc0c$34BYeYmfyKXBq+wd4pmTAYBvOg94iuzQIzR0t+6EmlM=', '2025-03-08 23:09:07.660012', 0, 'alslslsl', '', '', 'alslslsl@alslslsl.com', 0, '2025-03-08 23:09:05.884851', '2025-03-08 23:09:07.648169', '2025-03-22 19:39:25.883858', 'hotel_manager', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(9, 'pbkdf2_sha256$600000$YyHz1TprqrLxB9Zn86sIJu$VtH3gk7SGQu97sevo51XO3ovW0MjMaVmvTMX/jtAI54=', '2025-03-11 13:39:22.061710', 0, 'ahmed1555', 'ahmed', 'mohamed', 'ahmed1555@gmail.com', 0, '2025-03-11 13:05:30.020217', '2025-03-11 13:05:30.536114', '2025-03-11 13:05:30.536114', 'customer', '781717609', 'users/2025/03/11/topdoctors.jpg', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(10, 'pbkdf2_sha256$600000$JInLxld88le5EonOREI0JQ$FvAY9r/CHudvTsSBOxEfZob1jwsvvzgpRAWPsDM6szE=', '2025-03-11 13:24:43.650477', 0, 'sakjds888', 'askja', 'kksskks', 'sakjds888@cc.com', 0, '2025-03-11 13:24:32.822351', '2025-03-11 13:24:33.340511', '2025-03-11 13:24:33.340511', 'customer', '123123132132', 'users/2025/03/11/topdoctors_qb7Dipr.jpg', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(11, 'pbkdf2_sha256$600000$RQcyfOrNwaARSe90TzIKBU$90MYq5xmhjWGc+keDWcELY1dkohhCW05pO8C2RgP+xA=', '2025-03-11 14:11:34.650871', 0, 'asjldhask15', 'ajshdkajs', 'aksljdlas', 'asjldhask15@asd.co', 0, '2025-03-11 14:11:32.868092', '2025-03-11 14:11:34.630556', '2025-03-11 14:11:34.630556', 'customer', '21215151515', 'users/2025/03/11/topdoctors_5NSVJtE.jpg', 'Female', '2025-03-09', 1, NULL, NULL, NULL, NULL),
(12, 'pbkdf2_sha256$600000$cyoobnnbnn1veqfofkr18v$Q3A3UVNX8rMFNQOeuwLDAxNV9v68C9+85WPeG58gGsQ=', '2025-03-11 15:03:22.973314', 0, 'ammaralwan', 'ammar', 'alwan', 'ammaralwan@ss.com', 0, '2025-03-11 15:03:07.343237', '2025-03-11 15:03:09.211771', '2025-03-11 15:03:09.211771', 'customer', '781717177', 'users/2025/03/11/terms.jpg', 'Female', '1996-04-18', 1, NULL, NULL, NULL, NULL),
(13, 'pbkdf2_sha256$600000$FqqK1ybDPJVmeLbEpH5xM5$XxlG67Ut3xXs/TN8aC0TcX2qZMHyLlyXteu8KboTH60=', '2025-03-11 15:07:08.449784', 0, 'asdjhasj', 'asjdhjkash', 'asdas', 'sajh@asd.cc', 0, '2025-03-11 15:07:06.624072', '2025-03-11 15:07:08.427732', '2025-03-11 15:07:08.427732', 'customer', '88186541312', 'users/2025/03/11/terms_iJzbCqG.jpg', 'Female', '2003-03-13', 1, NULL, NULL, NULL, NULL),
(14, 'pbkdf2_sha256$600000$YnIbgLo63DhZI2tNuYeVVW$uG9BZ9YIOFennwzEZmG/A8lTZvE7Ptg0deSs7OWZ8Fw=', '2025-04-01 00:25:41.994904', 0, 'c', '', '', '', 1, '2025-03-22 19:41:27.289430', '2025-03-22 19:41:28.023706', '2025-04-01 00:25:20.895010', 'hotel_manager', '', '', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(19, 'pbkdf2_sha256$600000$5btSIZ0meGoH7mIdZnZ2pq$pU2k/iJgQJupEIDPLMwvsD2VYGNs0C0I6xaarKIDRUw=', NULL, 0, 'ahmed55', 'ahmed', 'mohamed', 'ahmed55@gmail.com', 0, '2025-04-14 08:59:30.196083', '2025-04-14 08:59:30.695011', '2025-04-14 08:59:30.695011', 'hotel_manager', '781717609', 'users/2025/04/14/balcony-cabin.jpg', 'Male', '2002-04-16', 1, NULL, NULL, NULL, NULL),
(20, 'pbkdf2_sha256$600000$5rzSsIknevW8wjtyR2OSK4$wia+D6BMbFGN0tobMrPbr9Yl7eQv9Qu0lrf+o+McRt0=', NULL, 0, 'asdj99', 'kashd', 'kahsdk', 'aksjh@ad.com', 0, '2025-04-14 09:18:17.227642', '2025-04-14 09:18:17.732487', '2025-04-14 09:18:17.732487', 'hotel_manager', '944546546546', 'users/2025/04/14/balcony-cabin_8Leghw0.jpg', 'Male', '2000-11-11', 1, NULL, NULL, NULL, NULL),
(21, 'pbkdf2_sha256$600000$w6YKTc69n9HZ2zgYTs3zWd$8OSkKjnCDWKJ0vSE95QIo2GkLr59wYufN/SScIh77ik=', '2025-04-14 09:22:48.126297', 0, 'aslkdjaskldj', 'jskdhakhs', 'klasjdlaj', 'aslkdjaskldj@asdkhask.com', 0, '2025-04-14 09:22:47.610283', '2025-04-14 09:22:48.126297', '2025-04-14 09:22:48.126297', 'hotel_manager', '54545615165155', 'users/2025/04/14/airline-img7.png', 'Male', '2000-04-17', 1, NULL, NULL, NULL, NULL),
(22, 'pbkdf2_sha256$600000$WowJQYcWmNPQRq75m9DBwD$sFpU5VAB1yykG0t+eYrClT1NP0FyKbed5QjN/eLpLuw=', NULL, 0, 'aksjhd888', 'askldhal', '51sa65d1', 'aksjhd888@gmail.com', 0, '2025-04-14 09:24:54.398287', '2025-04-14 09:24:54.906295', '2025-04-14 09:24:54.906295', 'hotel_manager', '156161616516', 'users/2025/04/14/alamo.png', 'Male', '2000-11-11', 1, NULL, NULL, NULL, NULL),
(23, 'pbkdf2_sha256$600000$lh8yo0GMTQ6nPaGh4diOpi$05NWcRu04df9nfhdFEp8QYCPan1HIx54H9ojRG7bqGg=', '2025-04-14 09:36:49.911434', 0, 'sldasjk7888', 'ahsdajk', '5as5d5as', 'sldasjk7888@gmail.com', 0, '2025-04-14 09:36:49.383620', '2025-04-14 09:36:49.901501', '2025-04-14 09:36:49.901501', 'hotel_manager', '94861564564564', 'users/2025/04/14/balcony-cabin_55yeNlS.jpg', 'Male', '2000-11-11', 1, NULL, NULL, NULL, NULL),
(26, 'pbkdf2_sha256$600000$hZUmsvhJFisnXWaFeAlQf5$GrvGT1Zw0gbrfWXGcgwLaHwKg3+OXlwA1pGZC1rw478=', '2025-04-16 12:20:30.651886', 0, 'as888aua', 'ajkhdk', 'kajshdask', 'kjashd654@asd.com', 0, '2025-04-16 12:20:30.120259', '2025-04-16 12:20:30.638306', '2025-04-16 12:20:30.638306', 'customer', '7817171717', 'users/2025/04/16/balcony-cabin.jpg', 'Male', '2000-11-11', 1, NULL, NULL, 54, NULL),
(27, 'pbkdf2_sha256$600000$Y85SoKwjr8uGSY4BPSRNt0$KTvVe8q8lECZKcUDEXn6JFcPbH+xF4+ILIFGUllRs30=', '2025-04-16 12:21:28.848034', 0, 'test444', 'test', 'tset', 'testt44@gma.com', 0, '2025-04-16 12:21:28.296690', '2025-04-16 12:21:28.827509', '2025-04-16 12:21:28.827509', 'customer', '781717609', 'users/2025/04/16/airline-img7.png', 'Female', '2002-11-11', 1, NULL, NULL, 55, NULL),
(59, '!GtAs4iBJ35YjOL9uuD6KYz2vriON7450105XrMWn', '2025-04-16 14:38:41.714787', 0, 'telegram1imo', 'مارس - Mars', '', 'telegram1imo@gmail.com', 0, '2025-04-16 14:38:41.668958', '2025-04-16 14:38:41.669953', '2025-04-16 14:38:41.746499', 'customer', '', 'https://lh3.googleusercontent.com/a/ACg8ocKksxVfE_3RHUvFZftePpn2f01-HtmaEZQEyndPqpo7xHeo3SE=s96-c', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(60, 'pbkdf2_sha256$600000$1QKUeCcNOFXkT0jTTtl8db$8p9cFyQwsrqlD6CBYTJj+P4AklgVYb5KwsN9QD3GPuQ=', '2025-04-17 22:57:52.377066', 0, 'ahli999', 'ahmed', 'mohamed ali', 'ahli999@gmail.com', 0, '2025-04-17 22:57:49.969279', '2025-04-17 22:57:52.347658', '2025-04-17 22:57:52.347658', 'customer', '8989787979879', 'users/2025/04/18/airline-img11.png', 'Male', '2000-11-11', 1, NULL, NULL, 74, NULL),
(61, 'pbkdf2_sha256$600000$IZbmh0kmSD4mESM9Y6nc73$S6H6umr9c2dB9c49pmYxsxWhVoUP2xpUcg0aWT1nR4s=', '2025-04-18 22:58:59.499112', 0, 'akshd998', 'ahmed ', 'asdas', 'akshd998@gmail.com', 0, '2025-04-18 22:55:12.164461', '2025-04-18 22:55:14.154209', '2025-04-18 22:55:14.154209', 'customer', '1513123155', 'users/2025/04/19/airline-img5.png', 'Male', '2000-11-11', 1, NULL, NULL, 75, NULL),
(62, 'pbkdf2_sha256$600000$ZxtjbGoyXY2L4fjRBQByUF$AFka31a1Tx0QHWLDlfw0k4btyTdygBZDssCZib2A4xo=', '2025-05-05 19:09:58.850465', 0, 'ahmed781717', 'ahmed', 'mohamed', 'ahmed781717@gmail.com', 0, '2025-05-05 17:37:36.878287', '2025-05-05 17:37:36.878602', '2025-05-05 17:37:36.883712', 'customer', '967781717609', '', 'Male', '2000-01-05', 1, NULL, NULL, 76, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_groups`
--

CREATE TABLE `users_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_customuser_groups`
--

INSERT INTO `users_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(1, 2, 1);

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
-- Indexes for table `accounts_chartofaccounts`
--
ALTER TABLE `accounts_chartofaccounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_chartofacco_account_parent_id_aab27f60_fk_accounts_` (`account_parent_id`),
  ADD KEY `accounts_chartofacco_created_by_id_f216d28f_fk_users_cus` (`created_by_id`),
  ADD KEY `accounts_chartofacco_updated_by_id_aa33c263_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `accounts_journalentry`
--
ALTER TABLE `accounts_journalentry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_journalentr_created_by_id_c9c8bf66_fk_users_cus` (`created_by_id`),
  ADD KEY `accounts_journalentr_journal_entry_accoun_31c22020_fk_accounts_` (`journal_entry_account_id`),
  ADD KEY `accounts_journalentr_updated_by_id_83723a94_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_created_by_id_5babffa5_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `blog_category_updated_by_id_623e0d89_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_author_id_4f11e2e0_fk_users_customuser_id` (`author_id`),
  ADD KEY `blog_comment_created_by_id_bb8e38a4_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`),
  ADD KEY `blog_comment_updated_by_id_383aa587_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_users_customuser_id` (`author_id`),
  ADD KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  ADD KEY `blog_post_created_by_id_eebead11_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `blog_post_updated_by_id_022b627c_fk_users_customuser_id` (`updated_by_id`);

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
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `blog_tag_created_by_id_7bba8b04_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `blog_tag_updated_by_id_1fbc3911_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_booking_created_by_id_d8a2f432_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `bookings_booking_hotel_id_e1f8132f_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `bookings_booking_room_id_6f0fa517_fk_rooms_roomtype_id` (`room_id`),
  ADD KEY `bookings_booking_updated_by_id_6c0bc7d4_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `bookings_booking_user_id_834dfc23_fk_users_customuser_id` (`user_id`);

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
-- Indexes for table `bookings_bookinghistory`
--
ALTER TABLE `bookings_bookinghistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_bookinghist_booking_id_3d73917f_fk_bookings_` (`booking_id`),
  ADD KEY `bookings_bookinghist_changed_by_id_7771323e_fk_users_cus` (`changed_by_id`),
  ADD KEY `bookings_bookinghist_hotel_id_fedbba66_fk_HotelMana` (`hotel_id`),
  ADD KEY `bookings_bookinghist_parent_booking_id_81c27856_fk_bookings_` (`parent_booking_id`),
  ADD KEY `bookings_bookinghistory_room_id_2b335d40_fk_rooms_roomtype_id` (`room_id`),
  ADD KEY `bookings_bookinghistory_user_id_631b8526_fk_users_customuser_id` (`user_id`);

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
  ADD KEY `bookings_guest_created_by_id_0cc0af08_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `bookings_guest_hotel_id_333c72e5_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `bookings_guest_updated_by_id_7fb9973c_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_hotel` (`user_id`,`hotel_id`),
  ADD KEY `customer_favourites_created_by_id_577ea231_fk_users_cus` (`created_by_id`),
  ADD KEY `customer_favourites_hotel_id_8c26062f_fk_HotelMana` (`hotel_id`),
  ADD KEY `customer_favourites_updated_by_id_0fef4026_fk_users_cus` (`updated_by_id`);

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
-- Indexes for table `home_contactmessage`
--
ALTER TABLE `home_contactmessage`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `home_partner`
--
ALTER TABLE `home_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_paymenpolicy`
--
ALTER TABLE `home_paymenpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_paymenpolicy_created_by_id_4d3ce878_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `home_paymenpolicy_updated_by_id_1bb28913_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `home_pricingplan`
--
ALTER TABLE `home_pricingplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_privacypolicy`
--
ALTER TABLE `home_privacypolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_privacypolicy_created_by_id_10a1cb37_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `home_privacypolicy_updated_by_id_2722d998_fk_users_customuser_id` (`updated_by_id`);

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
-- Indexes for table `home_teammember`
--
ALTER TABLE `home_teammember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_termsconditions`
--
ALTER TABLE `home_termsconditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_termsconditions_created_by_id_41b47c7f_fk_users_cus` (`created_by_id`),
  ADD KEY `home_termsconditions_updated_by_id_a2f80cee_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
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
  ADD UNIQUE KEY `HotelManagement_location_address_city_id_020279b6_uniq` (`address`,`city_id`),
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
  ADD KEY `notifications_notifi_created_by_id_17bcaf8b_fk_users_cus` (`created_by_id`),
  ADD KEY `notifications_notifi_sender_id_c6ee4409_fk_users_cus` (`sender_id`),
  ADD KEY `notifications_notifi_updated_by_id_cb05afb1_fk_users_cus` (`updated_by_id`),
  ADD KEY `notifications_notifi_user_id_429b0a5e_fk_users_cus` (`user_id`);

--
-- Indexes for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_provider_accesstoken_token_checksum_85319a26_uniq` (`token_checksum`),
  ADD UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  ADD UNIQUE KEY `id_token_id` (`id_token_id`),
  ADD KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_users_cus` (`user_id`);

--
-- Indexes for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD KEY `oauth2_provider_appl_user_id_79829054_fk_users_cus` (`user_id`),
  ADD KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`);

--
-- Indexes for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_grant_user_id_e8f62af8_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jti` (`jti`),
  ADD KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token_id` (`access_token_id`),
  ADD UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  ADD KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_refr_user_id_da837fce_fk_users_cus` (`user_id`);

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
  ADD KEY `payments_hotelpaymen_created_by_id_4ddb7640_fk_users_cus` (`created_by_id`),
  ADD KEY `payments_hotelpaymen_payment_option_id_4b539d55_fk_payments_` (`payment_option_id`),
  ADD KEY `payments_hotelpaymen_updated_by_id_0daaca89_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` (`booking_id`),
  ADD KEY `payments_payment_created_by_id_28f0e284_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `payments_payment_payment_method_id_c909ff25_fk_payments_` (`payment_method_id`),
  ADD KEY `payments_payment_updated_by_id_379a95eb_fk_users_customuser_id` (`updated_by_id`),
  ADD KEY `payments_payment_user_id_f9db060a_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `payments_paymenthistory`
--
ALTER TABLE `payments_paymenthistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_paymenthist_changed_by_id_bc229b93_fk_users_cus` (`changed_by_id`),
  ADD KEY `payments_paymenthist_created_by_id_e1a215ba_fk_users_cus` (`created_by_id`),
  ADD KEY `payments_paymenthist_payment_id_4b5c9d14_fk_payments_` (`payment_id`),
  ADD KEY `payments_paymenthist_updated_by_id_f0bf4c7d_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_paymentopti_created_by_id_e8b0d9da_fk_users_cus` (`created_by_id`),
  ADD KEY `payments_paymentopti_currency_id_9986031a_fk_payments_` (`currency_id`),
  ADD KEY `payments_paymentopti_updated_by_id_29eee1b1_fk_users_cus` (`updated_by_id`);

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
  ADD KEY `rooms_availability_hotel_id_e9028aaa_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_availability_room_type_id_ee87e18f_fk_rooms_roomtype_id` (`room_type_id`),
  ADD KEY `rooms_availability_updated_by_id_f8d6a9d2_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `rooms_category`
--
ALTER TABLE `rooms_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_hotel_category` (`name`),
  ADD KEY `rooms_category_created_by_id_c539b61c_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_category_updated_by_id_85bbbd5a_fk_users_customuser_id` (`updated_by_id`);

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
-- Indexes for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_roomtype_category_id_3203b18b_fk_rooms_category_id` (`category_id`),
  ADD KEY `rooms_roomtype_created_by_id_42c3bbaa_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `rooms_roomtype_hotel_id_25b4be35_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `rooms_roomtype_updated_by_id_b5be2b42_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `services_coupon`
--
ALTER TABLE `services_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `services_coupon_created_by_id_77380f73_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `services_coupon_hotel_id_27b305f4_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `services_coupon_updated_by_id_d8030238_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `services_hotelservice`
--
ALTER TABLE `services_hotelservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_hotelservic_created_by_id_58582781_fk_users_cus` (`created_by_id`),
  ADD KEY `services_hotelservic_hotel_id_c67387c9_fk_HotelMana` (`hotel_id`),
  ADD KEY `services_hotelservic_updated_by_id_01238d0f_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `services_roomtypeservice`
--
ALTER TABLE `services_roomtypeservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_roomtypeser_created_by_id_ef053406_fk_users_cus` (`created_by_id`),
  ADD KEY `services_roomtypeser_hotel_id_163e32a7_fk_HotelMana` (`hotel_id`),
  ADD KEY `services_roomtypeser_room_type_id_f15253ec_fk_rooms_roo` (`room_type_id`),
  ADD KEY `services_roomtypeser_updated_by_id_ce869b8f_fk_users_cus` (`updated_by_id`);

--
-- Indexes for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_offers_created_by_id_8ca73e25_fk_users_customuser_id` (`created_by_id`),
  ADD KEY `service_offers_hotel_id_d29c1d1e_fk_HotelManagement_hotel_id` (`hotel_id`),
  ADD KEY `service_offers_updated_by_id_42cd54e5_fk_users_customuser_id` (`updated_by_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersoci_user_id_17d28448_fk_users_cus` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

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
  ADD KEY `users_customuser_chart_id_e799e924_fk_accounts_` (`chart_id`),
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
-- AUTO_INCREMENT for table `accounts_chartofaccounts`
--
ALTER TABLE `accounts_chartofaccounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `accounts_journalentry`
--
ALTER TABLE `accounts_journalentry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `bookings_bookingdetail`
--
ALTER TABLE `bookings_bookingdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_bookinghistory`
--
ALTER TABLE `bookings_bookinghistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `bookings_extensionmovement`
--
ALTER TABLE `bookings_extensionmovement`
  MODIFY `movement_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings_guest`
--
ALTER TABLE `bookings_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `home_contactmessage`
--
ALTER TABLE `home_contactmessage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `home_partner`
--
ALTER TABLE `home_partner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_paymenpolicy`
--
ALTER TABLE `home_paymenpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pricingplan`
--
ALTER TABLE `home_pricingplan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_privacypolicy`
--
ALTER TABLE `home_privacypolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `home_teammember`
--
ALTER TABLE `home_teammember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_termsconditions`
--
ALTER TABLE `home_termsconditions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_testimonial`
--
ALTER TABLE `home_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelmanagement_city`
--
ALTER TABLE `hotelmanagement_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotelmanagement_hotel`
--
ALTER TABLE `hotelmanagement_hotel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotelmanagement_hotelrequest`
--
ALTER TABLE `hotelmanagement_hotelrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotelmanagement_image`
--
ALTER TABLE `hotelmanagement_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hotelmanagement_location`
--
ALTER TABLE `hotelmanagement_location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotelmanagement_phone`
--
ALTER TABLE `hotelmanagement_phone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_notifications`
--
ALTER TABLE `notifications_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_currency`
--
ALTER TABLE `payments_currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments_hotelpaymentmethod`
--
ALTER TABLE `payments_hotelpaymentmethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments_payment`
--
ALTER TABLE `payments_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payments_paymenthistory`
--
ALTER TABLE `payments_paymenthistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews_hotelreview`
--
ALTER TABLE `reviews_hotelreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews_roomreview`
--
ALTER TABLE `reviews_roomreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms_availability`
--
ALTER TABLE `rooms_availability`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `rooms_category`
--
ALTER TABLE `rooms_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms_roomimage`
--
ALTER TABLE `rooms_roomimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms_roomprice`
--
ALTER TABLE `rooms_roomprice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services_coupon`
--
ALTER TABLE `services_coupon`
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
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_activitylog`
--
ALTER TABLE `users_activitylog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_chartofaccounts`
--
ALTER TABLE `accounts_chartofaccounts`
  ADD CONSTRAINT `accounts_chartofacco_account_parent_id_aab27f60_fk_accounts_` FOREIGN KEY (`account_parent_id`) REFERENCES `accounts_chartofaccounts` (`id`),
  ADD CONSTRAINT `accounts_chartofacco_created_by_id_f216d28f_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `accounts_chartofacco_updated_by_id_aa33c263_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `accounts_journalentry`
--
ALTER TABLE `accounts_journalentry`
  ADD CONSTRAINT `accounts_journalentr_created_by_id_c9c8bf66_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `accounts_journalentr_journal_entry_accoun_31c22020_fk_accounts_` FOREIGN KEY (`journal_entry_account_id`) REFERENCES `accounts_chartofaccounts` (`id`),
  ADD CONSTRAINT `accounts_journalentr_updated_by_id_83723a94_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
-- Constraints for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD CONSTRAINT `blog_category_created_by_id_5babffa5_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_category_updated_by_id_623e0d89_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_author_id_4f11e2e0_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_comment_created_by_id_bb8e38a4_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_comment_updated_by_id_383aa587_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_post_created_by_id_eebead11_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_post_updated_by_id_022b627c_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD CONSTRAINT `blog_post_tags_post_id_a1c71c8a_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`);

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_created_by_id_7bba8b04_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `blog_tag_updated_by_id_1fbc3911_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD CONSTRAINT `bookings_booking_created_by_id_d8a2f432_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_booking_hotel_id_e1f8132f_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
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
-- Constraints for table `bookings_bookinghistory`
--
ALTER TABLE `bookings_bookinghistory`
  ADD CONSTRAINT `bookings_bookinghist_booking_id_3d73917f_fk_bookings_` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_bookinghist_changed_by_id_7771323e_fk_users_cus` FOREIGN KEY (`changed_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_bookinghist_hotel_id_fedbba66_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `bookings_bookinghist_parent_booking_id_81c27856_fk_bookings_` FOREIGN KEY (`parent_booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `bookings_bookinghistory_room_id_2b335d40_fk_rooms_roomtype_id` FOREIGN KEY (`room_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `bookings_bookinghistory_user_id_631b8526_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
  ADD CONSTRAINT `bookings_guest_created_by_id_0cc0af08_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `bookings_guest_hotel_id_333c72e5_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `bookings_guest_updated_by_id_7fb9973c_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `customer_favourites`
--
ALTER TABLE `customer_favourites`
  ADD CONSTRAINT `customer_favourites_created_by_id_577ea231_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `customer_favourites_hotel_id_8c26062f_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `customer_favourites_updated_by_id_0fef4026_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
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
-- Constraints for table `home_paymenpolicy`
--
ALTER TABLE `home_paymenpolicy`
  ADD CONSTRAINT `home_paymenpolicy_created_by_id_4d3ce878_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `home_paymenpolicy_updated_by_id_1bb28913_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `home_privacypolicy`
--
ALTER TABLE `home_privacypolicy`
  ADD CONSTRAINT `home_privacypolicy_created_by_id_10a1cb37_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `home_privacypolicy_updated_by_id_2722d998_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `home_termsconditions`
--
ALTER TABLE `home_termsconditions`
  ADD CONSTRAINT `home_termsconditions_created_by_id_41b47c7f_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `home_termsconditions_updated_by_id_a2f80cee_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

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
  ADD CONSTRAINT `notifications_notifi_created_by_id_17bcaf8b_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `notifications_notifi_sender_id_c6ee4409_fk_users_cus` FOREIGN KEY (`sender_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `notifications_notifi_updated_by_id_cb05afb1_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `notifications_notifi_user_id_429b0a5e_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
  ADD CONSTRAINT `payments_hotelpaymen_created_by_id_4ddb7640_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_hotelpaymen_hotel_id_ce0a1829_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `payments_hotelpaymen_payment_option_id_4b539d55_fk_payments_` FOREIGN KEY (`payment_option_id`) REFERENCES `payments_paymentoption` (`id`),
  ADD CONSTRAINT `payments_hotelpaymen_updated_by_id_0daaca89_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_payment`
--
ALTER TABLE `payments_payment`
  ADD CONSTRAINT `payments_payment_booking_id_2a46974b_fk_bookings_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings_booking` (`id`),
  ADD CONSTRAINT `payments_payment_created_by_id_28f0e284_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_payment_payment_method_id_c909ff25_fk_payments_` FOREIGN KEY (`payment_method_id`) REFERENCES `payments_hotelpaymentmethod` (`id`),
  ADD CONSTRAINT `payments_payment_updated_by_id_379a95eb_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_payment_user_id_f9db060a_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_paymenthistory`
--
ALTER TABLE `payments_paymenthistory`
  ADD CONSTRAINT `payments_paymenthist_changed_by_id_bc229b93_fk_users_cus` FOREIGN KEY (`changed_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_paymenthist_created_by_id_e1a215ba_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_paymenthist_payment_id_4b5c9d14_fk_payments_` FOREIGN KEY (`payment_id`) REFERENCES `payments_payment` (`id`),
  ADD CONSTRAINT `payments_paymenthist_updated_by_id_f0bf4c7d_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `payments_paymentoption`
--
ALTER TABLE `payments_paymentoption`
  ADD CONSTRAINT `payments_paymentopti_created_by_id_e8b0d9da_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `payments_paymentopti_currency_id_9986031a_fk_payments_` FOREIGN KEY (`currency_id`) REFERENCES `payments_currency` (`id`),
  ADD CONSTRAINT `payments_paymentopti_updated_by_id_29eee1b1_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `reviews_hotelreview`
--
ALTER TABLE `reviews_hotelreview`
  ADD CONSTRAINT `reviews_hotelreview_created_by_id_fbc20ee8_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_hotel_id_6819d0d9_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_updated_by_id_2fbc72a0_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `reviews_hotelreview_user_id_b1101c52_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
  ADD CONSTRAINT `rooms_availability_room_type_id_ee87e18f_fk_rooms_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `rooms_availability_updated_by_id_f8d6a9d2_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `rooms_category`
--
ALTER TABLE `rooms_category`
  ADD CONSTRAINT `rooms_category_created_by_id_c539b61c_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_category_updated_by_id_85bbbd5a_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

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
-- Constraints for table `rooms_roomtype`
--
ALTER TABLE `rooms_roomtype`
  ADD CONSTRAINT `rooms_roomtype_category_id_3203b18b_fk_rooms_category_id` FOREIGN KEY (`category_id`) REFERENCES `rooms_category` (`id`),
  ADD CONSTRAINT `rooms_roomtype_created_by_id_42c3bbaa_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `rooms_roomtype_hotel_id_25b4be35_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `rooms_roomtype_updated_by_id_b5be2b42_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `services_coupon`
--
ALTER TABLE `services_coupon`
  ADD CONSTRAINT `services_coupon_created_by_id_77380f73_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `services_coupon_hotel_id_27b305f4_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `services_coupon_updated_by_id_d8030238_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `services_hotelservice`
--
ALTER TABLE `services_hotelservice`
  ADD CONSTRAINT `services_hotelservic_created_by_id_58582781_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `services_hotelservic_hotel_id_c67387c9_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `services_hotelservic_updated_by_id_01238d0f_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `services_roomtypeservice`
--
ALTER TABLE `services_roomtypeservice`
  ADD CONSTRAINT `services_roomtypeser_created_by_id_ef053406_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `services_roomtypeser_hotel_id_163e32a7_fk_HotelMana` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `services_roomtypeser_room_type_id_f15253ec_fk_rooms_roo` FOREIGN KEY (`room_type_id`) REFERENCES `rooms_roomtype` (`id`),
  ADD CONSTRAINT `services_roomtypeser_updated_by_id_ce869b8f_fk_users_cus` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `service_offers`
--
ALTER TABLE `service_offers`
  ADD CONSTRAINT `service_offers_created_by_id_8ca73e25_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `service_offers_hotel_id_d29c1d1e_fk_HotelManagement_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotelmanagement_hotel` (`id`),
  ADD CONSTRAINT `service_offers_updated_by_id_42cd54e5_fk_users_customuser_id` FOREIGN KEY (`updated_by_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
  ADD CONSTRAINT `users_customuser_chart_id_e799e924_fk_accounts_` FOREIGN KEY (`chart_id`) REFERENCES `accounts_chartofaccounts` (`id`),
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
