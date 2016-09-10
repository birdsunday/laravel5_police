-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2016 at 06:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_police`
--

-- --------------------------------------------------------

--
-- Table structure for table `addressoffice`
--

CREATE TABLE `addressoffice` (
  `id` int(11) NOT NULL,
  `office` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `criminalhistory_id` int(11) DEFAULT NULL,
  `guesthistory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addressoffice`
--

INSERT INTO `addressoffice` (`id`, `office`, `office_address`, `office_tel`, `criminalhistory_id`, `guesthistory_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(69, 'ซอฟต์สเเควร์', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', '02365879644', 269, 142, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addressoriginal`
--

CREATE TABLE `addressoriginal` (
  `id` int(11) NOT NULL,
  `original_address` text COLLATE utf8_unicode_ci,
  `original_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addressoriginal`
--

INSERT INTO `addressoriginal` (`id`, `original_address`, `original_tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(170, 'บ้านเลขที่ 9 หมู่ 11 ต.แม่กา อ.เมือง จ.พะเยา', '054444444', '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL),
(171, 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', '054444444', '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addresspresent`
--

CREATE TABLE `addresspresent` (
  `id` int(11) NOT NULL,
  `present_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresspresent`
--

INSERT INTO `addresspresent` (`id`, `present_address`, `present_tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(179, 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', '0861898197', '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL),
(180, 'บ้านเลขที่ 9 หมู่ 11 ต.แม่กา อ.เมือง จ.พะเยา', '0861898197', '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criminalhistory`
--

CREATE TABLE `criminalhistory` (
  `id` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `typepeople` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nametitle_id` int(11) DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeidcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shape` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teeth` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hairstyles` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `head` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `face` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eyebrow` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eye` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ear` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nose` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mouth` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mirror` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scar` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accent` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personality` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_gallivent` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataspouse_id` int(11) DEFAULT NULL,
  `datamother_id` int(11) DEFAULT NULL,
  `datafather_id` int(11) DEFAULT NULL,
  `addressoriginal_id` int(11) DEFAULT NULL,
  `addresspresent_id` int(11) DEFAULT NULL,
  `policeimmigration_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criminalhistory`
--

INSERT INTO `criminalhistory` (`id`, `photo`, `typepeople`, `nametitle_id`, `name`, `surname`, `birth`, `age`, `date`, `alias`, `typeidcard`, `idcard`, `education`, `career`, `height`, `weight`, `shape`, `teeth`, `skin`, `hairstyles`, `head`, `face`, `eyebrow`, `eye`, `ear`, `nose`, `mouth`, `chin`, `mirror`, `scar`, `accent`, `nature`, `personality`, `location_gallivent`, `other`, `status`, `dataspouse_id`, `datamother_id`, `datafather_id`, `addressoriginal_id`, `addresspresent_id`, `policeimmigration_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(269, '/photo/person_crime/269/1709bcb7-e276-404b-a7e7-92403c398a89.jpg', 'ผู้ต้องหา', 104, 'อยู่ดี', 'มีสุข', '26-9-2537', '21 ปี', 'วันที่ 22 เดือน สิงหาคม พ.ศ. 2558 เวลาประมาณ 23:43 นาฟิกา', 'เสือใหญ่', '1', '1560300222222', 'ประถมศึษา', 'โปรแกรมเมอร์', '177', '65', 'อ้วน', 'ขาว', 'ดำ', 'รองทรง', 'รูปไข่', 'รูปไข่', 'หนา', 'ตาสองชั้น', 'กาง', 'โด่ง', 'หนา', 'สี่เหลี่ยม', 'ไม่มีเครา', 'รอยแผลเป็น', 'ใต้', 'ขาเป้', 'ใจร้อน', 'ผับ/ร้านเหล้า', 'ไม่มีหนังสือเดินทาง ใช้บัตรผ่านแดน(บอร์เดอร์พาส) เดินทางเข้ามาและหลบหนีอยู่ในราชอาณาจักร', 'complete', 152, 159, 160, 171, 180, NULL, '2015-10-07 14:34:04', '2016-08-28 14:12:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criminalhistory_datacase`
--

CREATE TABLE `criminalhistory_datacase` (
  `criminalhistory_id` int(11) NOT NULL,
  `datacase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criminalhistory_datacase`
--

INSERT INTO `criminalhistory_datacase` (`criminalhistory_id`, `datacase_id`) VALUES
(269, 214);

-- --------------------------------------------------------

--
-- Table structure for table `datacase`
--

CREATE TABLE `datacase` (
  `id` int(11) NOT NULL,
  `file_case` text COLLATE utf8_unicode_ci,
  `name_case` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_number_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `station_number_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `circumstances_case` text COLLATE utf8_unicode_ci,
  `date_case` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `houseno_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `villageno_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `road_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lane_alley_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdistrict_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disreict_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_case` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name_police` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname_police` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_police` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_police` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datacase`
--

INSERT INTO `datacase` (`id`, `file_case`, `name_case`, `number_case`, `year_number_case`, `station_number_case`, `circumstances_case`, `date_case`, `houseno_case`, `villageno_case`, `road_case`, `lane_alley_case`, `subdistrict_case`, `disreict_case`, `province_case`, `status`, `created_at`, `updated_at`, `deleted_at`, `name_police`, `surname_police`, `rank_police`, `tel_police`) VALUES
(214, '222', 'เป็นคนต่างด้าวเข้ามาและอยู่ในราชอาณาจักรโดยไม่ได้รับอนุญาต', '1234', '2556', 'สภ.แม่สาย', 'ตามวันเวลาเกิดเหตุ เจ้าหน้าที่ชุดจับกุมได้ออกตรวจพื้นที่ พบบุคคลต้องสงสัย ทราบชื่อภายหลังคือ นายโล๊ะ ฮอคเส็ง (ทราบภายหลัง) มีลักษณะคล้ายคนต่างด้าว จึงได้ขอตรวจหนังสือเดินทาง ซึ่งผู้ถูกจับนี้รับว่าไม่มีหนังสือเดินทาง ได้หลบหนีเข้าเมืองมาทางด่านปาดังเบซาร์ และหลบหนีอยู่ในราชอาณาจักร จนถูกจับกุมได้ดังกล่าว', 'วันที่ 22 เดือน สิงหาคม พ.ศ. 2558 เวลาประมาณ 23:43 นาฟิกา', '4', '5', 'อาราย', 'สวยยงาม', 'ดูดีด่า', 'บ้านนา', 'อุทัย', 'complete', '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datachild`
--

CREATE TABLE `datachild` (
  `id` int(11) NOT NULL,
  `child_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_live_died` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_address` text COLLATE utf8_unicode_ci,
  `child_career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_nameoffice` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_nameoffice_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `criminalhistory_id` int(11) DEFAULT NULL,
  `guesthistory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nametitle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datachild`
--

INSERT INTO `datachild` (`id`, `child_name`, `child_surname`, `child_age`, `child_live_died`, `child_address`, `child_career`, `child_nameoffice`, `child_tel`, `child_nameoffice_tel`, `criminalhistory_id`, `guesthistory_id`, `created_at`, `updated_at`, `deleted_at`, `nametitle_id`) VALUES
(60, 'ดวง', '', '45', 'live', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'ทำไร่', 'ไร่', '0874236599', '05555555', 269, 142, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, 104);

-- --------------------------------------------------------

--
-- Table structure for table `datafather`
--

CREATE TABLE `datafather` (
  `id` int(11) NOT NULL,
  `father_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_live_died` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_nameoffice` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_nameoffice_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datafather`
--

INSERT INTO `datafather` (`id`, `father_name`, `father_surname`, `father_age`, `father_live_died`, `father_address`, `father_career`, `father_nameoffice`, `father_tel`, `father_nameoffice_tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(160, 'ชาติชาย', 'หมายปอง', '59', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL),
(161, 'ชาติชาย', 'หมายปอง', '59', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datamother`
--

CREATE TABLE `datamother` (
  `id` int(11) NOT NULL,
  `mother_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_live_died` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_nameoffice` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_nameoffice_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datamother`
--

INSERT INTO `datamother` (`id`, `mother_name`, `mother_surname`, `mother_age`, `mother_live_died`, `mother_address`, `mother_career`, `mother_nameoffice`, `mother_tel`, `mother_nameoffice_tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(159, 'ซาร่า', 'โมเลกุล', '45', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL),
(160, 'เหมิยหลิง', 'ชิงโชค', '55', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dataspouse`
--

CREATE TABLE `dataspouse` (
  `id` int(11) NOT NULL,
  `nametitle_id` int(11) DEFAULT NULL,
  `spouse_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_live_died` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_nameoffice` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_nameoffice_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dataspouse`
--

INSERT INTO `dataspouse` (`id`, `nametitle_id`, `spouse_name`, `spouse_surname`, `spouse_age`, `spouse_live_died`, `spouse_address`, `spouse_career`, `spouse_nameoffice`, `spouse_tel`, `spouse_nameoffice_tel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(152, 106, 'ซูซี่', 'มีโชค', '55', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL),
(153, 105, 'มิมุ', 'คิคุ', '29', 'มีชีวิต', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 'รับจ้างทั้วไป', 'บ้าน', '088-9898989', NULL, '2015-10-07 14:34:03', '2015-10-07 14:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_idnumber` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_address` text COLLATE utf8_unicode_ci,
  `guesthistory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nametitle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_idnumber`, `employee_name`, `employee_surname`, `employee_age`, `employee_address`, `guesthistory_id`, `created_at`, `updated_at`, `deleted_at`, `nametitle_id`) VALUES
(34, '1234567890000', 'บรา', 'ซิล', '23', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', 142, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, 104);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin_name` text COLLATE utf8_unicode_ci,
  `origin_ext` text COLLATE utf8_unicode_ci,
  `mime_type` text COLLATE utf8_unicode_ci,
  `datacase_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guesthistory`
--

CREATE TABLE `guesthistory` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `idcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeidcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8_unicode_ci,
  `career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataspouse_id` int(11) DEFAULT NULL,
  `datamother_id` int(11) DEFAULT NULL,
  `datafather_id` int(11) DEFAULT NULL,
  `nametitle_id` int(11) DEFAULT NULL,
  `addressoriginal_id` int(11) DEFAULT NULL,
  `addresspresent_id` int(11) DEFAULT NULL,
  `policeimmigration_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `typepeople` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guesthistory`
--

INSERT INTO `guesthistory` (`id`, `status`, `photo`, `idcard`, `typeidcard`, `name`, `surname`, `birth`, `age`, `date`, `other`, `career`, `dataspouse_id`, `datamother_id`, `datafather_id`, `nametitle_id`, `addressoriginal_id`, `addresspresent_id`, `policeimmigration_id`, `created_at`, `updated_at`, `deleted_at`, `typepeople`, `education`) VALUES
(142, 'complete', '/photo/person_general/142/99d7f4ca-b425-4fb0-8bb4-5f3085efad05.jpg', '1560300222222', '0', 'สมรัก', 'นาดี', '26-9-2537', '21 ปี', 'วันที่ 22 เดือน สิงหาคม พ.ศ. 2558', 'ต้องสงสัย....!@@##$^', 'โปรแกรมเมอร์', 152, 159, 160, 104, 170, 179, NULL, '2015-10-07 14:34:04', '2016-08-25 16:05:03', NULL, 'บุคคลทั่วไป', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mylog`
--

CREATE TABLE `mylog` (
  `id` int(11) NOT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nametitle`
--

CREATE TABLE `nametitle` (
  `id` int(11) NOT NULL,
  `name_title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nametitle`
--

INSERT INTO `nametitle` (`id`, `name_title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(103, 'ไม่ระบุ', NULL, NULL, NULL),
(104, 'นาย', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(105, 'นาง', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(106, 'นางสาว', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(107, 'เด็กชาย', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(108, 'เด็กหญิง', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(109, 'Mr.', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(110, 'Miss', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personfamily`
--

CREATE TABLE `personfamily` (
  `id` int(11) NOT NULL,
  `personfamily_idnumber` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_nameoffice` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personfamily_nameoffice_tel` varchar(45) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `personfamily_career` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guesthistory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nametitle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personfamily`
--

INSERT INTO `personfamily` (`id`, `personfamily_idnumber`, `personfamily_name`, `personfamily_surname`, `personfamily_age`, `personfamily_address`, `personfamily_tel`, `personfamily_nameoffice`, `personfamily_nameoffice_tel`, `personfamily_career`, `guesthistory_id`, `created_at`, `updated_at`, `deleted_at`, `nametitle_id`) VALUES
(32, '2345678998745', 'สุดสวย', 'รวยเสมอ', '45', 'บ้านเลขที่ 2 หมู่ 8 ต.ภูซาง อ.ภูซาง จ.พะเยา', '0856365494', 'นา', '05555555555', 'ทำนา', 142, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, 106);

-- --------------------------------------------------------

--
-- Table structure for table `policeimmigration`
--

CREATE TABLE `policeimmigration` (
  `id` int(11) NOT NULL,
  `name_police` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname_police` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_police` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `position_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policeimmigration`
--

INSERT INTO `policeimmigration` (`id`, `name_police`, `surname_police`, `tel_police`, `username`, `password`, `created_at`, `updated_at`, `rank_id`, `deleted_at`, `photo`, `position_id`, `role_id`, `remember_token`) VALUES
(67, 'NemeAdmin', 'SurnameAdmin', '08x-xxxxxxx', 'admin', '$2y$10$Gu2yuEpKdWuvU1nBdzXg4OYXlUK1EFc/l3jBSo81pzE0LBq7I3RHK', '2015-10-07 14:34:03', '2016-08-28 13:06:12', 199, NULL, '/photo/police/67/099526e3-1aa6-4770-9efa-5fb16774a842.jpg', 267, 42, 'Edio487RisGHl0debZqDmjloeP1Dc0EtbDFzK7ez6L65BXF24e6pQu5YNtBH'),
(68, 'ประทวน', 'ประทวน', '08x-xxxxxxx', 'member1', '$2y$10$k6tug3N4B15wKnGdSi9oSOGj1KSD9nxGl6UtCsatUg4sJirey8Gd2', '2015-10-07 14:34:03', '2016-08-28 14:10:34', 192, NULL, '/photo/police/68/2b9089e7-6bd8-4ddd-ae1b-49532f6ddc3c.jpg', 267, 44, 'DugfHdGiw2S1c7cibEllPVB7JkTmXfDRbAP284IF1UGlNm7HiHrubxrB2C66'),
(69, 'สัญญาบัตร', 'สัญญาบัตร', '08x-xxxxxxx', 'member2', '$2y$10$/LNIZDI8geQLWeObtIBtFels9pQCUL6ryQGvjGU6k4NzvgVBxMOm2', '2015-10-07 14:34:03', '2016-08-25 16:06:03', 199, NULL, '/photo/police/69/2023722e-daaa-424d-b723-675e8e40ad37.jpg', 267, 43, 't1k7kchUWIcw0x9zq8fku3k2KxwDR2wghPckp4G4dmApJD4WeUoJ9MBceb0k');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name_position` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name_position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(267, 'ลูกแถว', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(268, 'ผู้บังคับหมู่', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(269, 'รองสารวัตร', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(270, 'สารวัตร', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(271, 'สารวัตรแผนก', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(272, 'สารวัตรงาน', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(273, 'สารวัตรอำนวยการ', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(274, 'สารวัตรสืบสวนสอบสวน', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(275, 'สารวัตรป้องกันปราบปราม', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(276, 'สารวัตรจราจร', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(277, 'สารวัตรใหญ่', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(278, 'รองผู้กำกับการ', '2015-10-07 14:34:01', '2015-10-07 14:34:01', NULL),
(279, 'ผู้กำกับการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(280, 'รองผู้บังคับการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(281, 'ผู้บังคับการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(282, 'ผู้ช่วยผู้บัญชาการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(283, 'รองผู้บัญชาการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(284, 'ผู้บัญชาการ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(285, 'ผู้ช่วยผู้บัญชาการ ตำรวจแห่งชาติ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(286, 'รองผู้บัญชาการ ตำรวจแห่งชาติ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(287, 'ผู้บัญชาการ ตำรวจแห่งชาติ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `rank` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank`, `created_at`, `updated_at`, `deleted_at`) VALUES
(191, 'พลตำรวจ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(192, 'สิบตำรวจตรี', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(193, 'สิบตำรวจโท', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(194, 'สิบตำรวจเอก', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(195, 'จ่าสิบตำรวจ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(196, 'นายดาบตำรวจ', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(197, 'ร้อยตำรวจตรี', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(198, 'ร้อยตำรวจโท', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(199, 'ร้อยตำรวจเอก', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(200, 'พันตำรวจตรี', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(201, 'พันตำรวจโท', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(202, 'พันตำรวจเอก', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(203, 'พลตำรวจจัตวา', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(204, 'พลตำรวจตรี', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(205, 'พลตำรวจโท', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL),
(206, 'พลตำรวจเอก', '2015-10-07 14:34:02', '2015-10-07 14:34:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `key`, `name`, `description`, `created_at`, `updated_at`) VALUES
(42, 'admin', 'Administrator', 'Administrator', '2015-10-07 14:34:02', '2015-10-07 14:34:02'),
(43, 'Member_Commissioned_Officers', 'สิทธิการเข้าใช้งาน ตำรวจชั้นสัญญาบัตร', 'ตำรวจชั้นสัญญาบัตร', '2015-10-07 14:34:02', '2015-10-07 14:34:02'),
(44, 'Member_Non-Commissioned_Officer', 'สิทธิการเข้าใช้งาน ตำรวจชั้นประทวน', 'ตำรวจชั้นประทวน', '2015-10-07 14:34:02', '2015-10-07 14:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `vehicle_brand` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_generation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_group` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_province` varchar(45) CHARACTER SET utf16 DEFAULT NULL,
  `vehicl_color` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `guesthistory_id` int(11) DEFAULT NULL,
  `datacase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `vehicle_brand`, `vehicle_generation`, `vehicle_number`, `vehicle_group`, `vehicle_province`, `vehicl_color`, `created_at`, `updated_at`, `deleted_at`, `guesthistory_id`, `datacase_id`) VALUES
(100, 'ฟีโน่', 'คลาสิก', '233', 'งสก', 'พะเยา', NULL, '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, NULL, 214),
(101, 'ฮอนด้า', 'ยานม่า', '123', 'กขค', 'พะเยา', NULL, '2015-10-07 14:34:05', '2015-10-07 14:34:05', NULL, 142, NULL),
(102, 'ฮอนก่', 'โย', '252', 'กข', 'พะเน่', 'ดำ', '2016-08-25 12:52:20', '2016-08-25 12:52:20', NULL, NULL, 215);

-- --------------------------------------------------------

--
-- Table structure for table `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `name_weapon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `datacase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `weapon`
--

INSERT INTO `weapon` (`id`, `name_weapon`, `created_at`, `updated_at`, `deleted_at`, `datacase_id`) VALUES
(79, 'ปืนพก .38', '2015-10-07 14:34:04', '2015-10-07 14:34:04', NULL, 214),
(80, 'มีด', '2016-08-25 12:52:20', '2016-08-25 12:52:20', NULL, 215);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addressoffice`
--
ALTER TABLE `addressoffice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addressoffice_criminalhistory1_idx` (`criminalhistory_id`),
  ADD KEY `fk_addressoffice_guesthistory1_idx` (`guesthistory_id`);

--
-- Indexes for table `addressoriginal`
--
ALTER TABLE `addressoriginal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresspresent`
--
ALTER TABLE `addresspresent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminalhistory`
--
ALTER TABLE `criminalhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_criminalhistory_dataspouse1_idx` (`dataspouse_id`),
  ADD KEY `fk_criminalhistory_datamother1_idx` (`datamother_id`),
  ADD KEY `fk_criminalhistory_datafather1_idx` (`datafather_id`),
  ADD KEY `fk_criminalhistory_nametitle1_idx` (`nametitle_id`),
  ADD KEY `fk_criminalhistory_addressoriginal1_idx` (`addressoriginal_id`),
  ADD KEY `fk_criminalhistory_addresspresent1_idx` (`addresspresent_id`),
  ADD KEY `fk_criminalhistory_policeimmigration1_idx` (`policeimmigration_id`);

--
-- Indexes for table `criminalhistory_datacase`
--
ALTER TABLE `criminalhistory_datacase`
  ADD PRIMARY KEY (`criminalhistory_id`,`datacase_id`),
  ADD KEY `fk_criminalhistory_has_datacase_datacase1_idx` (`datacase_id`),
  ADD KEY `fk_criminalhistory_has_datacase_criminalhistory1_idx` (`criminalhistory_id`);

--
-- Indexes for table `datacase`
--
ALTER TABLE `datacase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datachild`
--
ALTER TABLE `datachild`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_datachild_criminalhistory1_idx` (`criminalhistory_id`),
  ADD KEY `fk_datachild_guesthistory1_idx` (`guesthistory_id`),
  ADD KEY `fk_datachild_nametitle1_idx` (`nametitle_id`);

--
-- Indexes for table `datafather`
--
ALTER TABLE `datafather`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datamother`
--
ALTER TABLE `datamother`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataspouse`
--
ALTER TABLE `dataspouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dataspouse_nametitle1_idx` (`nametitle_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee_guesthistory1_idx` (`guesthistory_id`),
  ADD KEY `fk_employee_nametitle1_idx` (`nametitle_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guesthistory`
--
ALTER TABLE `guesthistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_guesthistory_dataspouse1_idx` (`dataspouse_id`),
  ADD KEY `fk_guesthistory_datafather1_idx` (`datafather_id`),
  ADD KEY `fk_guesthistory_datamother1_idx` (`datamother_id`),
  ADD KEY `fk_guesthistory_nametitle1_idx` (`nametitle_id`),
  ADD KEY `fk_guesthistory_addressoriginal1_idx` (`addressoriginal_id`),
  ADD KEY `fk_guesthistory_addresspresent1_idx` (`addresspresent_id`),
  ADD KEY `fk_guesthistory_policeimmigration1_idx` (`policeimmigration_id`);

--
-- Indexes for table `mylog`
--
ALTER TABLE `mylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nametitle`
--
ALTER TABLE `nametitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personfamily`
--
ALTER TABLE `personfamily`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personfamily_guesthistory1_idx` (`guesthistory_id`),
  ADD KEY `fk_personfamily_nametitle1_idx` (`nametitle_id`);

--
-- Indexes for table `policeimmigration`
--
ALTER TABLE `policeimmigration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_policeimmigration_rank1_idx` (`rank_id`),
  ADD KEY `fk_policeimmigration_position1_idx` (`position_id`),
  ADD KEY `fk_policeimmigration_access1_idx` (`role_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehicle_guesthistory1_idx` (`guesthistory_id`),
  ADD KEY `fk_vehicle_datacase1_idx` (`datacase_id`);

--
-- Indexes for table `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_weapon_datacase1_idx` (`datacase_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addressoffice`
--
ALTER TABLE `addressoffice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `addressoriginal`
--
ALTER TABLE `addressoriginal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `addresspresent`
--
ALTER TABLE `addresspresent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `criminalhistory`
--
ALTER TABLE `criminalhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `datacase`
--
ALTER TABLE `datacase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `datachild`
--
ALTER TABLE `datachild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `datafather`
--
ALTER TABLE `datafather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `datamother`
--
ALTER TABLE `datamother`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `dataspouse`
--
ALTER TABLE `dataspouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guesthistory`
--
ALTER TABLE `guesthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `mylog`
--
ALTER TABLE `mylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;
--
-- AUTO_INCREMENT for table `nametitle`
--
ALTER TABLE `nametitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `personfamily`
--
ALTER TABLE `personfamily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `policeimmigration`
--
ALTER TABLE `policeimmigration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addressoffice`
--
ALTER TABLE `addressoffice`
  ADD CONSTRAINT `fk_addressoffice_criminalhistory1` FOREIGN KEY (`criminalhistory_id`) REFERENCES `criminalhistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_addressoffice_guesthistory1` FOREIGN KEY (`guesthistory_id`) REFERENCES `guesthistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `criminalhistory`
--
ALTER TABLE `criminalhistory`
  ADD CONSTRAINT `fk_criminalhistory_addressoriginal1` FOREIGN KEY (`addressoriginal_id`) REFERENCES `addressoriginal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_addresspresent1` FOREIGN KEY (`addresspresent_id`) REFERENCES `addresspresent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_datafather1` FOREIGN KEY (`datafather_id`) REFERENCES `datafather` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_datamother1` FOREIGN KEY (`datamother_id`) REFERENCES `datamother` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_dataspouse1` FOREIGN KEY (`dataspouse_id`) REFERENCES `dataspouse` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_policeimmigration1` FOREIGN KEY (`policeimmigration_id`) REFERENCES `policeimmigration` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `criminalhistory_datacase`
--
ALTER TABLE `criminalhistory_datacase`
  ADD CONSTRAINT `fk_criminalhistory_has_datacase_criminalhistory1` FOREIGN KEY (`criminalhistory_id`) REFERENCES `criminalhistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_criminalhistory_has_datacase_datacase1` FOREIGN KEY (`datacase_id`) REFERENCES `datacase` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `datachild`
--
ALTER TABLE `datachild`
  ADD CONSTRAINT `fk_datachild_criminalhistory1` FOREIGN KEY (`criminalhistory_id`) REFERENCES `criminalhistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_datachild_guesthistory1` FOREIGN KEY (`guesthistory_id`) REFERENCES `guesthistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_datachild_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dataspouse`
--
ALTER TABLE `dataspouse`
  ADD CONSTRAINT `fk_dataspouse_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_guesthistory1` FOREIGN KEY (`guesthistory_id`) REFERENCES `guesthistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employee_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `guesthistory`
--
ALTER TABLE `guesthistory`
  ADD CONSTRAINT `fk_guesthistory_addressoriginal1` FOREIGN KEY (`addressoriginal_id`) REFERENCES `addressoriginal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_addresspresent1` FOREIGN KEY (`addresspresent_id`) REFERENCES `addresspresent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_datafather1` FOREIGN KEY (`datafather_id`) REFERENCES `datafather` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_datamother1` FOREIGN KEY (`datamother_id`) REFERENCES `datamother` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_dataspouse1` FOREIGN KEY (`dataspouse_id`) REFERENCES `dataspouse` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guesthistory_policeimmigration1` FOREIGN KEY (`policeimmigration_id`) REFERENCES `policeimmigration` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `personfamily`
--
ALTER TABLE `personfamily`
  ADD CONSTRAINT `fk_personfamily_guesthistory1` FOREIGN KEY (`guesthistory_id`) REFERENCES `guesthistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personfamily_nametitle1` FOREIGN KEY (`nametitle_id`) REFERENCES `nametitle` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `policeimmigration`
--
ALTER TABLE `policeimmigration`
  ADD CONSTRAINT `fk_policeimmigration_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_policeimmigration_rank1` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_policeimmigration_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `fk_vehicle_datacase1` FOREIGN KEY (`datacase_id`) REFERENCES `datacase` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_guesthistory1` FOREIGN KEY (`guesthistory_id`) REFERENCES `guesthistory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `weapon`
--
ALTER TABLE `weapon`
  ADD CONSTRAINT `fk_weapon_datacase1` FOREIGN KEY (`datacase_id`) REFERENCES `datacase` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
