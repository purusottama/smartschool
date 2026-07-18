-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2026 at 05:30 AM
-- Server version: 8.0.45-0ubuntu0.24.04.1
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `image` text NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `config_name` varchar(200) NOT NULL DEFAULT '',
  `short_name` varchar(100) NOT NULL,
  `directory` varchar(500) NOT NULL,
  `description` text,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `current_version` varchar(50) DEFAULT NULL,
  `article_link` text NOT NULL,
  `installation_by` int DEFAULT NULL,
  `uninstall_version` varchar(50) DEFAULT NULL,
  `unistall_by` int DEFAULT NULL,
  `addon_prod` text,
  `addon_ver` text,
  `last_update` datetime DEFAULT NULL,
  `current_stage` int NOT NULL DEFAULT '0' COMMENT '0 for buy addon,1 for folder available ready to install,2 for folder addon installed',
  `product_order` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `product_id`, `image`, `name`, `config_name`, `short_name`, `directory`, `description`, `price`, `current_version`, `article_link`, `installation_by`, `uninstall_version`, `unistall_by`, `addon_prod`, `addon_ver`, `last_update`, `current_stage`, `product_order`, `created_at`, `updated_at`) VALUES
(1, 47443722, 'uploads/addon_images/sscbse_images.jpg', 'Smart School CBSE Examination', 'cbse-config', 'sscbse', 'cbse_examination', 'CBSE Examination addon adds CBSE Examination module in Smart School. Using this module teacher/staff can create and print marksheets with advance features.', 0.00, NULL, 'https://go.smart-school.in/cbse-exam', NULL, NULL, NULL, NULL, NULL, '2024-09-03 16:04:58', 0, 4, '2024-09-03 16:04:58', '2025-03-03 05:32:37'),
(2, 44278049, 'uploads/addon_images/sstfa_images.jpg', 'Smart School Two Factor Authentication', 'google-authenticate-config', 'sstfa', 'two_factor_authentication', 'Two Factor Authentication addon adds Two Factor Authentication module in Smart School. Using this module you can enhance login security of your Smart School users.', 0.00, NULL, 'https://go.smart-school.in/2fa', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:14', 0, 5, '2024-09-07 10:45:18', '2025-03-03 05:32:28'),
(3, 44277916, 'uploads/addon_images/ssmb_images.jpg', 'Smart School Multi Branch', 'multibranch-config', 'ssmb', 'multi_branch', 'Multi Branch addon adds Multi Branch module in Smart School. Using this module Superadmin user can add other any number of schools/branches.', 0.00, NULL, 'https://go.smart-school.in/multi-branch', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:15', 0, 6, '2024-09-07 10:45:18', '2025-03-03 05:32:20'),
(4, 44247532, 'uploads/addon_images/ssbr_images.jpg', 'Smart School Behaviour Records', 'behaviour-report-config', 'ssbr', 'behavior_records', 'Behaviour Records addon adds Behaviour Records module in Smart School. Using this module teacher/staff can create different incidents with positive/negative marks and then assign these incidents on students.', 0.00, NULL, 'https://go.smart-school.in/behaviour-records', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:19', 0, 7, '2024-09-07 10:45:42', '2025-03-03 05:32:11'),
(5, 33101540, 'uploads/addon_images/ssoclc_images.jpg', 'Smart School Online Course', 'onlinecourse-config', 'ssoclc', 'online_course', 'Online Course addon adds Online Course module in Smart School. Using this module teacher/staff can create free or paid online course with their study material based on video, audio or in document content format.', 0.00, NULL, 'https://go.smart-school.in/online-course', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:19', 0, 8, '2024-09-07 10:45:42', '2025-03-03 05:32:02'),
(6, 27492043, 'uploads/addon_images/sszlc_images.jpg', 'Smart School Zoom Live Classes', 'zoom-config', 'sszlc', 'zoom_live_class', 'Zoom Live Class addon adds Zoom Live Class module in Smart School. Using this module teacher/staff can create live online classes using Zoom.us service. Further students can join these classes.', 0.00, NULL, 'https://go.smart-school.in/zoom', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:17', 0, 10, '2024-09-07 10:46:10', '2025-03-03 05:31:49'),
(7, 28941973, 'uploads/addon_images/ssglc_images.jpg', 'Smart School Gmeet Live Class', 'gmeet-config', 'ssglc', 'gmeet_live_class', 'Gmeet Live Class addon adds Gmeet Live Class module in Smart School. Using this module teacher/staff can create live online classes using http://meet.google.com service. Further students can join these classes.', 0.00, NULL, 'https://go.smart-school.in/gmeet', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:24', 0, 9, '2024-09-07 10:46:10', '2025-03-03 05:31:33'),
(8, 50336584, 'uploads/addon_images/ssqra_images.jpg', 'Smart School QR Code Attendance', 'qrattendance-config', 'ssqra', 'qr_code_attendance', 'QR Code Attendance addon adds automated Student/Staff attendance using QR/Barcode module in Smart School. Using this module Student/Staff can submit their attendance by just scanning their ID Card.', 0.00, NULL, 'https://go.smart-school.in/qr-attendance', NULL, NULL, NULL, NULL, NULL, '2025-01-28 22:28:58', 0, 3, '2025-01-13 13:10:06', '2025-03-03 05:32:47'),
(9, 57220011, 'uploads/addon_images/ssqfc_images.jpg', 'Smart School Quick Fees Create', 'quickfees-config', 'ssqfc', 'quick_fees_create', 'Quick Fees Create addon adds one click fees create feature in Smart School Fees Collection module. Using this you can create and assign fees on students in just few seconds and all Fees Category, Fees Groups, Fees Masters will be create automatically in your Smart School.', 0.00, NULL, 'https://go.smart-school.in/quick-fees', NULL, NULL, NULL, NULL, NULL, '2025-01-28 22:28:58', 0, 2, '2025-01-13 13:10:06', '2025-03-03 05:33:00'),
(10, 57219905, 'uploads/addon_images/sstpa_images.jpg', 'Smart School Thermal Print', 'thermalprint-config', 'sstpa', 'thermal_print', 'Thermal Print addon adds Thermal Printer compatible small size fees receipt print capability in Smart School. Using this module you can utilize modern cost effective fees receipt printing in Smart School.', 0.00, NULL, 'https://go.smart-school.in/thermal-print', NULL, NULL, NULL, NULL, NULL, '2025-01-30 10:28:42', 0, 1, '2025-01-13 13:10:06', '2025-03-03 05:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `addon_versions`
--

CREATE TABLE `addon_versions` (
  `id` int NOT NULL,
  `addon_id` int DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `version_order` int DEFAULT NULL,
  `folder_path` text,
  `sort_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_active` int NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `alumni_events`
--

INSERT INTO `alumni_events` (`id`, `title`, `event_for`, `session_id`, `class_id`, `section`, `from_date`, `to_date`, `note`, `photo`, `is_active`, `event_notification_message`, `show_onwebsite`, `created_at`, `updated_at`) VALUES
(1, 'Christmas Celebration', 'all', NULL, NULL, 'null', '2025-12-25 00:00:00', '2025-12-27 23:59:00', '', '', 0, '', 0, '2025-12-07 04:59:44', '2025-12-07 04:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_students`
--

CREATE TABLE `alumni_students` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `annual_calendar`
--

CREATE TABLE `annual_calendar` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `holiday_type` int NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `holiday_color` varchar(200) NOT NULL,
  `front_site` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `long_lang_name` varchar(250) DEFAULT NULL,
  `long_name_style` varchar(250) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `for_qr_attendance` int NOT NULL DEFAULT '1',
  `for_schedule` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `long_lang_name`, `long_name_style`, `is_active`, `for_qr_attendance`, `for_schedule`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'present', 'label label-success', 'yes', 1, 1, '2023-12-13 07:53:10', '0000-00-00 00:00:00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'late_with_excuse', 'label label-warning text-dark', 'no', 0, 0, '2023-12-13 07:51:03', '0000-00-00 00:00:00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'late', 'label label-warning text-dark', 'yes', 1, 1, '2023-12-13 07:51:09', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'absent', 'label label-danger', 'yes', 0, 0, '2023-12-15 06:18:05', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'holiday', 'label label-info', 'yes', 0, 0, '2023-12-14 12:57:13', '0000-00-00 00:00:00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'half_day', 'label label-warning text-dark', 'yes', 1, 1, '2023-12-15 06:18:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int NOT NULL,
  `book_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int DEFAULT '0',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'userlogin', 0, '2021-01-19 08:10:29', '2025-11-24 10:08:20'),
(2, 'login', 0, '2021-01-19 08:10:31', '2025-11-24 10:08:20'),
(3, 'admission', 0, '2021-01-19 04:48:11', '2025-11-24 10:08:20'),
(4, 'complain', 0, '2021-01-19 04:48:13', '2025-11-24 10:08:20'),
(5, 'contact_us', 0, '2021-01-19 04:48:15', '2025-11-24 10:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'OC', 'yes', '2025-12-07 04:21:51', '2025-12-07 04:28:05'),
(2, 'BC-E', 'yes', '2025-12-07 04:22:03', '2025-12-07 04:28:10'),
(3, 'BC-D', 'yes', '2025-12-07 04:22:10', '2025-12-07 04:28:23'),
(4, 'SC', 'yes', '2025-12-07 04:22:29', '2025-12-07 04:28:18'),
(5, 'N/A', 'yes', '2025-12-07 04:23:12', '2025-12-07 04:28:28'),
(6, 's', 'no', '2026-01-30 09:00:45', '2026-01-30 09:00:45'),
(7, 'General', 'no', '2026-01-31 08:21:12', '2026-01-31 08:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int NOT NULL,
  `content_height` int NOT NULL,
  `footer_height` int NOT NULL,
  `content_width` int NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`, `created_at`, `updated_at`) VALUES
(1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', 2, 1, 360, 400, 480, 810, 1, 230, '2019-12-21 15:14:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int NOT NULL,
  `chat_user_one` int NOT NULL,
  `chat_user_two` int NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chat_connections`
--

INSERT INTO `chat_connections` (`id`, `chat_user_one`, `chat_user_two`, `ip`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, '2025-11-26 05:20:01', '2025-11-26 05:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int NOT NULL,
  `message` text,
  `chat_user_id` int NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int NOT NULL,
  `is_first` int DEFAULT '0',
  `is_read` int NOT NULL DEFAULT '0',
  `chat_connection_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `message`, `chat_user_id`, `ip`, `time`, `is_first`, `is_read`, `chat_connection_id`, `created_at`, `updated_at`) VALUES
(1, 'you are now connected on chat', 2, '', 0, 1, 0, 1, NULL, '2025-11-26 05:20:01'),
(2, 'hi', 2, '', 0, 0, 0, 1, '2025-11-26 10:50:05', '2025-11-26 05:20:06'),
(3, 'sabita', 2, '', 0, 0, 0, 1, '2025-11-26 10:50:09', '2025-11-26 05:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `create_staff_id` int DEFAULT NULL,
  `create_student_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chat_users`
--

INSERT INTO `chat_users` (`id`, `user_type`, `staff_id`, `student_id`, `create_staff_id`, `create_student_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'student', NULL, 1, NULL, NULL, 0, '2025-11-26 05:20:01', '2025-11-26 05:20:01'),
(2, 'staff', 4, NULL, NULL, 1, 0, '2025-11-26 05:20:01', '2025-11-26 05:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'LKG', 'no', '2025-11-24 12:57:12', '2025-11-24 12:57:12'),
(2, 'UKG', 'no', '2025-11-24 12:57:41', '2025-11-24 12:57:41'),
(3, '8', 'no', '2025-12-06 13:06:14', '2025-12-06 13:06:14'),
(4, 'Nursery', 'no', '2025-12-06 14:28:08', '2025-12-06 14:28:08'),
(5, '1', 'no', '2025-12-06 14:29:01', '2025-12-06 14:29:01'),
(6, '2', 'no', '2025-12-06 14:29:14', '2025-12-06 14:29:14'),
(7, '3', 'no', '2025-12-06 14:29:21', '2025-12-06 14:29:21'),
(8, '4', 'no', '2025-12-06 14:29:27', '2025-12-06 14:29:27'),
(9, '5', 'no', '2025-12-06 14:29:36', '2025-12-06 14:29:36'),
(10, '6', 'no', '2025-12-06 14:29:43', '2025-12-06 14:29:43'),
(11, '7', 'no', '2025-12-06 14:29:50', '2025-12-06 14:29:50'),
(12, '9', 'no', '2025-12-06 14:29:58', '2025-12-06 14:29:58'),
(13, '10', 'no', '2025-12-06 14:30:04', '2025-12-06 14:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int NOT NULL,
  `class_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'no', '2025-11-24 12:57:12', '2025-11-24 12:57:12'),
(2, 2, 2, 'no', '2025-11-24 12:57:41', '2025-11-24 12:57:41'),
(3, 3, 2, 'no', '2025-12-06 13:06:14', '2025-12-06 13:06:14'),
(4, 4, 1, 'no', '2025-12-06 14:28:08', '2025-12-06 14:28:08'),
(5, 4, 2, 'no', '2025-12-06 14:28:08', '2025-12-06 14:28:08'),
(6, 1, 2, 'no', '2025-12-06 14:28:27', '2025-12-06 14:28:27'),
(7, 1, 3, 'no', '2025-12-06 14:28:38', '2025-12-06 14:28:38'),
(8, 2, 1, 'no', '2025-12-06 14:28:48', '2025-12-06 14:28:48'),
(9, 5, 1, 'no', '2025-12-06 14:29:01', '2025-12-06 14:29:01'),
(10, 5, 2, 'no', '2025-12-06 14:29:01', '2025-12-06 14:29:01'),
(11, 5, 3, 'no', '2025-12-06 14:29:01', '2025-12-06 14:29:01'),
(12, 6, 1, 'no', '2025-12-06 14:29:14', '2025-12-06 14:29:14'),
(13, 6, 2, 'no', '2025-12-06 14:29:14', '2025-12-06 14:29:14'),
(14, 7, 1, 'no', '2025-12-06 14:29:21', '2025-12-06 14:29:21'),
(15, 7, 2, 'no', '2025-12-06 14:29:21', '2025-12-06 14:29:21'),
(16, 7, 3, 'no', '2025-12-06 14:29:21', '2025-12-06 14:29:21'),
(17, 8, 1, 'no', '2025-12-06 14:29:27', '2025-12-06 14:29:27'),
(18, 8, 2, 'no', '2025-12-06 14:29:27', '2025-12-06 14:29:27'),
(19, 9, 1, 'no', '2025-12-06 14:29:36', '2025-12-06 14:29:36'),
(20, 9, 2, 'no', '2025-12-06 14:29:36', '2025-12-06 14:29:36'),
(21, 10, 1, 'no', '2025-12-06 14:29:43', '2025-12-06 14:29:43'),
(22, 10, 2, 'no', '2025-12-06 14:29:43', '2025-12-06 14:29:43'),
(23, 11, 1, 'no', '2025-12-06 14:29:50', '2025-12-06 14:29:50'),
(24, 11, 2, 'no', '2025-12-06 14:29:50', '2025-12-06 14:29:50'),
(25, 12, 1, 'no', '2025-12-06 14:29:58', '2025-12-06 14:29:58'),
(26, 13, 1, 'no', '2025-12-06 14:30:04', '2025-12-06 14:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `class_section_times`
--

CREATE TABLE `class_section_times` (
  `id` int NOT NULL,
  `class_section_id` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `staff_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `session_id`, `class_id`, `section_id`, `staff_id`) VALUES
(1, 20, 2, 2, 3),
(2, 20, 2, 2, 4),
(3, 20, 4, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int DEFAULT NULL,
  `cls_sec_id` int DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `date` date NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cumulative_fine`
--

CREATE TABLE `cumulative_fine` (
  `id` int NOT NULL,
  `overdue_day` int NOT NULL,
  `fine_amount` float(10,2) NOT NULL,
  `fee_groups_feetype_id` int NOT NULL,
  `fee_session_group_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `base_price` varchar(10) NOT NULL DEFAULT '1',
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `short_name`, `symbol`, `base_price`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'AED', 'AED', 'AEDf', '1', 0, '2022-12-30 06:19:15', '2025-11-24 10:08:20'),
(2, 'AFN', 'AFN', '؋', '1', 0, '2022-12-30 06:19:19', '2025-11-24 10:08:20'),
(3, 'ALL', 'ALL', 'ALL', '1', 0, '2022-12-30 06:19:22', '2025-11-24 10:08:20'),
(4, 'AMD', 'AMD', 'AMD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(5, 'ANG', 'ANG', 'ANG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(6, 'AOA', 'AOA', 'AOA', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(7, 'ARS', 'ARS', 'ARS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(8, 'AUD', 'AUD', 'AUD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(9, 'AWG', 'AWG', 'AWG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(10, 'AZN', 'AZN', 'AZN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(11, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(12, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(13, 'BDT', 'BDT', 'BDT', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(14, 'BGN', 'BGN', 'BGN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(15, 'BHD', 'BHD', 'BHD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(16, 'BIF', 'BIF', 'BIF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(17, 'BMD', 'BMD', 'BMD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(18, 'BND', 'BND', 'BND', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(19, 'BOB', 'BOB', 'BOB', '1', 0, '2022-12-30 06:19:29', '2025-11-24 10:08:20'),
(20, 'BOV', 'BOV', 'BOV', '1', 0, '2022-12-30 06:19:38', '2025-11-24 10:08:20'),
(21, 'BRL', 'BRL', 'BRL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(22, 'BSD', 'BSD', 'BSD', '1', 0, '2022-12-30 06:19:40', '2025-11-24 10:08:20'),
(23, 'BTN', 'BTN', 'BTN', '1', 0, '2022-12-30 06:19:42', '2025-11-24 10:08:20'),
(24, 'BWP', 'BWP', 'BWP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(25, 'BYN', 'BYN', 'BYN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(26, 'BYR', 'BYR', 'BYR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(27, 'BZD', 'BZD', 'BZD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(28, 'CAD', 'CAD', 'CAD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(29, 'CDF', 'CDF', 'CDF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(30, 'CHE', 'CHE', 'CHE', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(31, 'CHF', 'CHF', 'CHF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(32, 'CHW', 'CHW', 'CHW', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(33, 'CLF', 'CLF', 'CLF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(34, 'CLP', 'CLP', 'CLP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(35, 'CNY', 'CNY', 'CNY', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(36, 'COP', 'COP', 'COP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(37, 'COU', 'COU', 'COU', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(38, 'CRC', 'CRC', 'CRC', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(39, 'CUC', 'CUC', 'CUC', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(40, 'CUP', 'CUP', 'CUP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(41, 'CVE', 'CVE', 'CVE', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(42, 'CZK', 'CZK', 'CZK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(43, 'DJF', 'DJF', 'DJF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(44, 'DKK', 'DKK', 'DKK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(45, 'DOP', 'DOP', 'DOP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(46, 'DZD', 'DZD', 'DZD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(47, 'EGP', 'EGP', 'EGP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(48, 'ERN', 'ERN', 'ERN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(49, 'ETB', 'ETB', 'ETB', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(50, 'EUR', 'EUR', '€', '1', 0, '2022-12-30 06:20:25', '2025-11-24 10:08:20'),
(51, 'FJD', 'FJD', 'FJD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(52, 'FKP', 'FKP', 'FKP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(53, 'GBP', 'GBP', '£', '1', 0, '2022-12-30 06:20:29', '2025-11-24 10:08:20'),
(54, 'GEL', 'GEL', 'GEL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(55, 'GHS', 'GHS', 'GHS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(56, 'GIP', 'GIP', 'GIP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(57, 'GMD', 'GMD', 'GMD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(58, 'GNF', 'GNF', 'GNF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(59, 'GTQ', 'GTQ', 'GTQ', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(60, 'GYD', 'GYD', 'GYD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(61, 'HKD', 'HKD', 'HKD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(62, 'HNL', 'HNL', 'HNL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(63, 'HRK', 'HRK', 'HRK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(64, 'HTG', 'HTG', 'HTG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(65, 'HUF', 'HUF', 'HUF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(66, 'IDR', 'IDR', 'IDR', '1', 0, '2022-12-30 06:20:34', '2025-11-24 10:08:20'),
(67, 'ILS', 'ILS', 'ILS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(68, 'INR', 'INR', '₹', '1', 1, '2022-12-30 06:20:37', '2025-11-25 06:21:49'),
(69, 'IQD', 'IQD', 'IQD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(70, 'IRR', 'IRR', 'IRR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(71, 'ISK', 'ISK', 'ISK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(72, 'JMD', 'JMD', 'JMD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(73, 'JOD', 'JOD', 'JOD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(74, 'JPY', 'JPY', 'JPY', '1', 0, '2022-12-30 06:19:56', '2025-11-24 10:08:20'),
(75, 'KES', 'KES', 'KES', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(76, 'KGS', 'KGS', 'KGS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(77, 'KHR', 'KHR', 'KHR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(78, 'KMF', 'KMF', 'KMF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(79, 'KPW', 'KPW', 'KPW', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(80, 'KRW', 'KRW', 'KRW', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(81, 'KWD', 'KWD', 'KWD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(82, 'KYD', 'KYD', 'KYD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(83, 'KZT', 'KZT', 'KZT', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(84, 'LAK', 'LAK', 'LAK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(85, 'LBP', 'LBP', 'LBP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(86, 'LKR', 'LKR', 'LKR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(87, 'LRD', 'LRD', 'LRD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(88, 'LSL', 'LSL', 'LSL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(89, 'LYD', 'LYD', 'LYD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(90, 'MAD', 'MAD', 'MAD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(91, 'MDL', 'MDL', 'MDL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(92, 'MGA', 'MGA', 'MGA', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(93, 'MKD', 'MKD', 'MKD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(94, 'MMK', 'MMK', 'MMK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(95, 'MNT', 'MNT', 'MNT', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(96, 'MOP', 'MOP', 'MOP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(97, 'MRO', 'MRO', 'MRO', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(98, 'MUR', 'MUR', 'MUR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(99, 'MVR', 'MVR', 'MVR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(100, 'MWK', 'MWK', 'MWK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(101, 'MXN', 'MXN', 'MXN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(102, 'MXV', 'MXV', 'MXV', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(103, 'MYR', 'MYR', 'MYR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(104, 'MZN', 'MZN', 'MZN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(105, 'NAD', 'NAD', 'NAD', '1', 0, '2022-07-30 09:32:37', '2025-11-24 10:08:20'),
(106, 'NGN', 'NGN', 'NGN', '1', 0, '2022-12-30 06:20:42', '2025-11-24 10:08:20'),
(107, 'NIO', 'NIO', 'NIO', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(108, 'NOK', 'NOK', 'NOK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(109, 'NPR', 'NPR', 'NPR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(110, 'NZD', 'NZD', 'NZD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(111, 'OMR', 'OMR', 'OMR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(112, 'PAB', 'PAB', 'PAB', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(113, 'PEN', 'PEN', 'PEN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(114, 'PGK', 'PGK', 'PGK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(115, 'PHP', 'PHP', 'PHP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(116, 'PKR', 'PKR', 'PKR', '1', 0, '2022-12-30 06:20:19', '2025-11-24 10:08:20'),
(117, 'PLN', 'PLN', 'PLN', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(118, 'PYG', 'PYG', 'PYG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(119, 'QAR', 'QAR', 'QAR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(120, 'RON', 'RON', 'RON', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(121, 'RSD', 'RSD', 'RSD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(122, 'RUB', 'RUB', 'RUB', '1', 0, '2022-12-30 06:20:16', '2025-11-24 10:08:20'),
(123, 'RWF', 'RWF', 'RWF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(124, 'SAR', 'SAR', 'SAR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(125, 'SBD', 'SBD', 'SBD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(126, 'SCR', 'SCR', 'SCR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(127, 'SDG', 'SDG', 'SDG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(128, 'SEK', 'SEK', 'SEK', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(129, 'SGD', 'SGD', 'SGD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(130, 'SHP', 'SHP', 'SHP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(131, 'SLL', 'SLL', 'SLL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(132, 'SOS', 'SOS', 'SOS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(133, 'SRD', 'SRD', 'SRD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(134, 'SSP', 'SSP', 'SSP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(135, 'STD', 'STD', 'STD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(136, 'SVC', 'SVC', 'SVC', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(137, 'SYP', 'SYP', 'SYP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(138, 'SZL', 'SZL', 'SZL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(139, 'THB', 'THB', 'THB', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(140, 'TJS', 'TJS', 'TJS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(141, 'TMT', 'TMT', 'TMT', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(142, 'TND', 'TND', 'TND', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(143, 'TOP', 'TOP', 'TOP', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(144, 'TRY', 'TRY', 'TRY', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(145, 'TTD', 'TTD', 'TTD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(146, 'TWD', 'TWD', 'TWD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(147, 'TZS', 'TZS', 'TZS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(148, 'UAH', 'UAH', 'UAH', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(149, 'UGX', 'UGX', 'UGX', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(150, 'USD', 'USD', '$', '1', 0, '2022-07-22 10:55:15', '2025-11-25 06:22:22'),
(151, 'USN', 'USN', 'USN', '1', 0, '2022-12-30 06:20:03', '2025-11-24 10:08:20'),
(152, 'UYI', 'UYI', 'UYI', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(153, 'UYU', 'UYU', 'UYU', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(154, 'UZS', 'UZS', 'UZS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(155, 'VEF', 'VEF', 'VEF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(156, 'VND', 'VND', 'VND', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(157, 'VUV', 'VUV', 'VUV', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(158, 'WST', 'WST', 'WST', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(159, 'XAF', 'XAF', 'XAF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(160, 'XAG', 'XAG', 'XAG', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(161, 'XAU', 'XAU', 'XAU', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(162, 'XBA', 'XBA', 'XBA', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(163, 'XBB', 'XBB', 'XBB', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(164, 'XBC', 'XBC', 'XBC', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(165, 'XBD', 'XBD', 'XBD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(166, 'XCD', 'XCD', 'XCD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(167, 'XDR', 'XDR', 'XDR', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(168, 'XOF', 'XOF', 'XOF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(169, 'XPD', 'XPD', 'XPD', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(170, 'XPF', 'XPF', 'XPF', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(171, 'XPT', 'XPT', 'XPT', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(172, 'XSU', 'XSU', 'XSU', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(173, 'XTS', 'XTS', 'XTS', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(174, 'XUA', 'XUA', 'XUA', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(175, 'XXX', 'XXX', 'XXX', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(176, 'YER', 'YER', 'YER', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20'),
(177, 'ZAR', 'ZAR', 'ZAR', '1', 0, '2022-12-30 06:20:07', '2025-11-24 10:08:20'),
(178, 'ZMW', 'ZMW', 'ZMW', '1', 0, '2022-07-30 07:34:00', '2025-11-24 10:08:20'),
(179, 'ZWL', 'ZWL', 'ZWL', '1', 0, '2022-07-22 10:55:15', '2025-11-24 10:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int DEFAULT NULL,
  `validation` int DEFAULT '0',
  `field_values` text,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int NOT NULL,
  `weight` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int NOT NULL,
  `belong_table_id` int DEFAULT NULL,
  `custom_field_id` int DEFAULT NULL,
  `field_value` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `daily_assignment`
--

CREATE TABLE `daily_assignment` (
  `id` int NOT NULL,
  `student_session_id` int NOT NULL,
  `subject_group_subject_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `attachment` varchar(255) DEFAULT NULL,
  `evaluated_by` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `remark` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Physics', 'yes', '2025-11-25 05:14:02', '2025-11-25 05:14:02'),
(2, 'Math', 'yes', '2025-11-25 05:14:07', '2025-11-25 05:14:07'),
(3, 'Science', 'yes', '2025-11-25 05:14:14', '2025-11-25 05:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `disable_reason`
--

CREATE TABLE `disable_reason` (
  `id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `disable_reason`
--

INSERT INTO `disable_reason` (`id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'Personal', '2025-12-04 16:01:03', '2025-12-04 16:01:03'),
(2, 'School change', '2025-12-04 16:01:14', '2025-12-04 16:01:14'),
(3, 'Others', '2025-12-04 16:01:20', '2025-12-04 16:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dispatch_receive`
--

INSERT INTO `dispatch_receive` (`id`, `reference_no`, `to_title`, `type`, `address`, `note`, `from_title`, `date`, `image`, `created_at`, `updated_at`) VALUES
(1, 'w32323', '', 'receive', 'cuttack', 'just ', 'sdf', '2026-01-30', NULL, '2026-01-30 07:19:04', '2026-01-30 07:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `email_attachments`
--

CREATE TABLE `email_attachments` (
  `id` int NOT NULL,
  `message_id` int NOT NULL,
  `directory` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `attachment_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `api_key`, `api_secret`, `region`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sendmail', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'yes', '2020-02-28 13:46:03', '2025-11-24 10:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_attachment`
--

CREATE TABLE `email_template_attachment` (
  `id` int NOT NULL,
  `email_template_id` int NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `attachment_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int DEFAULT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_title`, `event_description`, `start_date`, `end_date`, `event_type`, `event_color`, `event_for`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Christmas & New Year Celebrations', 'Christmas & New Year Celebrations', '2025-12-25 05:30:00', '2025-12-25 05:30:00', 'public', '#337ab7', '0', NULL, '', '2025-12-02 07:44:39', '2025-12-02 07:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `exam_groups`
--

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Math', 'basic_system', '', 0, '2025-12-06 04:18:14', '2025-12-06 04:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exams`
--

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int NOT NULL,
  `exam` varchar(250) DEFAULT NULL,
  `passing_percentage` float(10,2) DEFAULT NULL,
  `session_id` int NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `exam_group_id` int DEFAULT NULL,
  `use_exam_roll_no` int NOT NULL DEFAULT '1',
  `is_publish` int DEFAULT '0',
  `is_rank_generated` int NOT NULL DEFAULT '0',
  `description` text,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_students`
--

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int NOT NULL,
  `exam_group_class_batch_exam_id` int NOT NULL,
  `student_id` int NOT NULL,
  `student_session_id` int NOT NULL,
  `roll_no` int DEFAULT NULL,
  `teacher_remark` text,
  `rank` int NOT NULL DEFAULT '0',
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_subjects`
--

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int NOT NULL,
  `exam_group_class_batch_exams_id` int DEFAULT NULL,
  `subject_id` int NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT '0.00',
  `date_to` datetime DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_connections`
--

CREATE TABLE `exam_group_exam_connections` (
  `id` int NOT NULL,
  `exam_group_id` int DEFAULT NULL,
  `exam_group_class_batch_exams_id` int DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT '0.00',
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_results`
--

CREATE TABLE `exam_group_exam_results` (
  `id` int NOT NULL,
  `exam_group_class_batch_exam_student_id` int NOT NULL,
  `exam_group_class_batch_exam_subject_id` int DEFAULT NULL,
  `exam_group_student_id` int DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT '0.00',
  `note` text,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_students`
--

CREATE TABLE `exam_group_students` (
  `id` int NOT NULL,
  `exam_group_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `student_session_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `exam_id` int DEFAULT NULL,
  `teacher_subject_id` int DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int DEFAULT NULL,
  `passing_marks` int DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int NOT NULL,
  `exp_head_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `feetype_id` int NOT NULL,
  `class_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `percentage` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `discount_limit` int DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fees_reminder`
--

CREATE TABLE `fees_reminder` (
  `id` int NOT NULL,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fees_reminder`
--

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'before', 2, 0, '2020-02-28 13:38:32', NULL),
(2, 'before', 5, 0, '2020-02-28 13:38:36', NULL),
(3, 'after', 2, 0, '2020-02-28 13:38:40', NULL),
(4, 'after', 5, 0, '2020-02-28 13:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int NOT NULL,
  `is_system` int NOT NULL DEFAULT '0',
  `feecategory_id` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `description` text,
  `session_id` int DEFAULT NULL,
  `student_session_id` int DEFAULT NULL,
  `nature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `description`, `session_id`, `student_session_id`, `nature`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Tution Fee T1', 'T1', 'no', '', NULL, NULL, '', '2025-11-24 13:00:03', '2025-11-24 13:00:03'),
(2, 0, NULL, 'Tution Fee T2', 'T2', 'no', '', NULL, NULL, '', '2025-11-25 05:26:59', '2025-11-25 05:26:59'),
(3, 0, NULL, 'Tution Fee T3', 'T3', 'no', '', NULL, NULL, '', '2025-11-25 05:27:11', '2025-11-25 05:27:11'),
(4, 0, NULL, 'Transport Fee', 'TR1', 'no', 'Transport Fee', NULL, NULL, '', '2025-11-26 06:34:06', '2025-11-26 06:34:06'),
(5, 0, NULL, 'Hostel Fee T2', 'H2', 'no', '', NULL, NULL, '', '2025-12-06 13:44:59', '2025-12-06 13:44:59'),
(6, 0, NULL, 'Hostel Fee T1', 'H1', 'no', '', NULL, NULL, '', '2025-12-06 13:45:12', '2025-12-06 13:45:12'),
(7, 0, NULL, 'Hostel Fee T3', 'H3', 'no', '', NULL, NULL, '', '2025-12-06 13:47:04', '2025-12-06 13:47:04'),
(8, 0, NULL, 'IIT Fee', 'IIT1', 'no', '', NULL, NULL, '', '2025-12-06 13:47:44', '2025-12-06 13:47:44'),
(9, 0, NULL, 'Books Fee', 'B1', 'no', '', NULL, NULL, '', '2025-12-06 13:48:28', '2025-12-06 13:48:28'),
(10, 1, NULL, 'Previous Session Balance', 'Previous Session Balance', 'no', NULL, NULL, NULL, '', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(11, 0, NULL, 'Bus Fee', 'BU1', 'no', '', NULL, NULL, '', '2025-12-07 05:50:48', '2025-12-07 05:50:48'),
(12, 0, NULL, 'April', '500', 'no', '', NULL, NULL, '', '2026-01-31 08:16:58', '2026-01-31 08:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int NOT NULL DEFAULT '0',
  `description` text,
  `nature` varchar(255) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `nature`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Nursery Fee', 0, '', '', 'no', '2025-11-24 12:59:40', '2025-12-06 13:41:31'),
(2, 'LKG Fee', 0, '', '', 'no', '2025-11-24 12:59:48', '2025-12-06 13:41:43'),
(3, 'UKG Fee', 0, 'UKG Fee', '', 'no', '2025-11-26 06:33:30', '2025-12-06 13:42:04'),
(4, '1st', 0, '', '', 'no', '2025-12-06 13:42:42', '2025-12-06 13:42:42'),
(5, '8th Fee', 0, '', '', 'no', '2025-12-06 15:02:13', '2025-12-06 15:02:13'),
(6, 'Balance Master', 1, NULL, '', 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(7, 'class2 fees', 0, '', '', 'no', '2026-01-31 08:16:19', '2026-01-31 08:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int NOT NULL,
  `fee_session_group_id` int DEFAULT NULL,
  `fee_groups_id` int DEFAULT NULL,
  `feetype_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT '0.00',
  `fine_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `fine_per_day` int NOT NULL DEFAULT '0',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `fine_per_day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 20, '5000.00', 'none', '2026-03-31', 0.00, 0.00, 0, 'no', '2025-11-24 13:00:28', '2025-12-06 13:50:01'),
(2, 2, 2, 1, 20, '5000.00', 'none', '2025-12-07', 0.00, 0.00, 0, 'no', '2025-11-25 05:26:17', '2025-12-06 13:52:01'),
(3, 2, 2, 3, 20, '4000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-11-25 05:27:39', '2025-12-06 13:52:52'),
(4, 2, 2, 2, 20, '5000.00', 'none', '2025-12-27', 0.00, 0.00, 0, 'no', '2025-11-25 05:27:57', '2025-12-06 13:52:40'),
(5, 3, 3, 1, 20, '5000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-11-26 06:34:36', '2025-12-06 13:53:20'),
(6, 1, 1, 2, 20, '5000.00', 'none', '2026-03-01', 0.00, 0.00, 0, 'no', '2025-12-06 13:50:26', '2025-12-06 13:50:26'),
(7, 1, 1, 3, 20, '3000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 13:51:18', '2025-12-06 13:51:18'),
(8, 3, 3, 2, 20, '5000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 13:53:58', '2025-12-06 13:53:58'),
(9, 3, 3, 3, 20, '5000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 13:54:14', '2025-12-06 13:54:14'),
(10, 4, 5, 1, 20, '9000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 15:02:30', '2025-12-06 15:02:30'),
(11, 4, 5, 2, 20, '8000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 15:03:05', '2025-12-06 15:03:05'),
(12, 4, 5, 3, 20, '8000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 15:04:01', '2025-12-06 15:04:01'),
(13, 4, 5, 8, 20, '3000.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-06 15:04:25', '2025-12-06 15:04:25'),
(14, 5, 6, 10, 20, NULL, 'none', '2026-02-05', 0.00, 0.00, 0, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(15, 4, 5, 4, 20, '0.00', 'none', NULL, 0.00, 0.00, 0, 'no', '2025-12-07 05:55:17', '2025-12-07 05:55:17'),
(16, 2, 2, 9, 20, '100.00', 'fix', '2026-01-31', 0.00, 100.00, 0, 'no', '2026-01-31 08:15:48', '2026-01-31 08:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int NOT NULL,
  `payment` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int NOT NULL,
  `fee_groups_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'no', '2025-11-24 13:00:28', '2025-11-24 13:00:28'),
(2, 2, 20, 'no', '2025-11-25 05:26:17', '2025-11-25 05:26:17'),
(3, 3, 20, 'no', '2025-11-26 06:34:36', '2025-11-26 06:34:36'),
(4, 5, 20, 'no', '2025-12-06 15:02:30', '2025-12-06 15:02:30'),
(5, 6, 20, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` int NOT NULL,
  `file_extension` text,
  `file_mime` text,
  `file_size` int NOT NULL,
  `image_extension` text,
  `image_mime` text,
  `image_size` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`, `updated_at`) VALUES
(1, 'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg', 'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml', 100048576, 'jfif, png, jpe, jpeg, jpg, bmp, gif, svg', 'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml', 10048576, '2021-01-30 13:03:03', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int NOT NULL,
  `enquiry_id` int NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text,
  `open_new_tab` int NOT NULL DEFAULT '0',
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int NOT NULL DEFAULT '0',
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:49', '2025-11-24 10:08:21'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:55', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int NOT NULL,
  `menu_id` int NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int NOT NULL,
  `parent_id` int NOT NULL,
  `ext_url` text,
  `open_new_tab` int DEFAULT '0',
  `ext_url_link` text,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `publish` int NOT NULL DEFAULT '0',
  `description` text,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-02 22:11:50', '2025-11-24 10:08:21'),
(2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 4, 0, NULL, 'no', '2019-12-02 22:11:52', '2025-11-24 10:08:21'),
(3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-02 22:11:52', '2025-11-24 10:08:21'),
(4, 1, 'Online Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'admssion', 2, 0, NULL, 'no', '2019-12-21 15:33:00', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int DEFAULT '0',
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text,
  `meta_description` text,
  `meta_keyword` text,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext,
  `publish_date` date DEFAULT NULL,
  `publish` int DEFAULT '0',
  `sidebar` int DEFAULT '0',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 15:23:47', '2025-11-24 10:08:21'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 10:16:36', '2025-11-24 10:08:21'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 14:46:04', '2025-11-24 10:08:21'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 15:46:41', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int NOT NULL,
  `page_id` int DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text,
  `description` text,
  `is_active` varchar(10) DEFAULT 'no',
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int NOT NULL,
  `program_id` int DEFAULT NULL,
  `media_gallery_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int DEFAULT '0',
  `is_active_front_cms` int DEFAULT '0',
  `is_active_sidebar` int DEFAULT '0',
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text,
  `footer_text` varchar(500) DEFAULT NULL,
  `cookie_consent` varchar(255) NOT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `cookie_consent`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, 'material_pink', NULL, NULL, NULL, './uploads/school_content/logo/1672900975-128524590063b6716fc26ed!front_logo-608ff44a5f8f07.35255544.png', '', '', '[]', '', '', '', '', '', '', '', '', '', '', '', './uploads/school_content/logo/1672900975-63781378463b6716fc2886!front_fav_icon-608ff44a5fdb33.94953981.png', '2023-01-05 06:42:55', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins`
--

CREATE TABLE `gateway_ins` (
  `id` int NOT NULL,
  `online_admission_id` int DEFAULT NULL,
  `gateway_name` varchar(50) NOT NULL,
  `module_type` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `parameter_details` mediumtext NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins_response`
--

CREATE TABLE `gateway_ins_response` (
  `id` int NOT NULL,
  `gateway_ins_id` int DEFAULT NULL,
  `posted_data` text,
  `response` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_duration` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `holiday_type`
--

CREATE TABLE `holiday_type` (
  `id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `holiday_type`
--

INSERT INTO `holiday_type` (`id`, `type`, `is_default`) VALUES
(1, 'Holiday', 1),
(2, 'Vacation', 1),
(3, 'Activity', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `session_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `subject_group_subject_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `description` text,
  `create_date` date NOT NULL,
  `evaluation_date` date DEFAULT NULL,
  `document` varchar(200) DEFAULT NULL,
  `created_by` int NOT NULL,
  `evaluated_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `homework_evaluation`
--

CREATE TABLE `homework_evaluation` (
  `id` int NOT NULL,
  `homework_id` int NOT NULL,
  `student_id` int NOT NULL,
  `student_session_id` int DEFAULT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int NOT NULL,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text,
  `intake` int DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int NOT NULL,
  `hostel_id` int DEFAULT NULL,
  `room_type_id` int DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE `id_card` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `enable_vertical_card` int NOT NULL DEFAULT '0',
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_barcode` tinyint NOT NULL DEFAULT '1' COMMENT '0=disable,1=enable',
  `enable_student_rollno` tinyint(1) NOT NULL COMMENT '0=disable,1=enable	',
  `enable_student_house_name` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=disable,1=enable	',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `enable_student_barcode`, `enable_student_rollno`, `enable_student_house_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample Student Identity Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 0, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2025-11-24 10:08:21', '2025-11-24 10:08:21'),
(2, 'Sample Student Identity Card Vertical', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 1, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2025-11-24 10:08:21', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int NOT NULL,
  `income_head_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT '0.00',
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `documents` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int NOT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_store_id` int DEFAULT NULL,
  `item_supplier_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `quantity` int NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` int NOT NULL,
  `issue_by` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `note` text NOT NULL,
  `is_returned` int NOT NULL DEFAULT '1',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `quantity` int DEFAULT NULL,
  `purchase_price` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_rtl` int NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_rtl`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 0, 'no', 'no', '2019-11-20 11:23:12', '0000-00-00 00:00:00'),
(2, 'Albanian', 'sq', 'al', 0, 'no', 'no', '2019-11-20 11:42:42', '0000-00-00 00:00:00'),
(3, 'Amharic', 'am', 'am', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(4, 'English', 'en', 'us', 0, 'no', 'no', '2019-11-20 11:38:50', '0000-00-00 00:00:00'),
(5, 'Arabic', 'ar', 'sa', 0, 'no', 'no', '2019-11-20 11:47:28', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'af', 'af', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(8, 'Basque', 'eu', 'es', 0, 'no', 'no', '2019-11-20 11:54:10', '0000-00-00 00:00:00'),
(11, 'Bengali', 'bn', 'in', 0, 'no', 'no', '2019-11-20 11:41:53', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'bs', 'bs', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(14, 'Welsh', 'cy', 'cy', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'hu', 'hu', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'vi', 'vi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(17, 'Haitian', 'ht', 'ht', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(18, 'Galician', 'gl', 'gl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(19, 'Dutch', 'nl', 'nl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(21, 'Greek', 'el', 'gr', 0, 'no', 'no', '2019-11-20 12:12:08', '0000-00-00 00:00:00'),
(22, 'Georgian', 'ka', 'ge', 0, 'no', 'no', '2019-11-20 12:11:40', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'gu', 'in', 0, 'no', 'no', '2019-11-20 11:39:16', '0000-00-00 00:00:00'),
(24, 'Danish', 'da', 'dk', 0, 'no', 'no', '2019-11-20 12:03:25', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'he', 'il', 0, 'no', 'no', '2019-11-20 12:13:50', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'yi', 'il', 0, 'no', 'no', '2019-11-20 12:25:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'id', 'id', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(28, 'Irish', 'ga', 'ga', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(29, 'Italian', 'it', 'it', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'is', 'is', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(31, 'Spanish', 'es', 'es', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(33, 'Kannada', 'kn', 'kn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(34, 'Catalan', 'ca', 'ca', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(36, 'Chinese', 'zh', 'cn', 0, 'no', 'no', '2019-11-20 12:01:48', '0000-00-00 00:00:00'),
(37, 'Korean', 'ko', 'kr', 0, 'no', 'no', '2019-11-20 12:19:09', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'xh', 'ls', 0, 'no', 'no', '2019-11-20 12:24:39', '0000-00-00 00:00:00'),
(39, 'Latin', 'la', 'it', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(40, 'Latvian', 'lv', 'lv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'lt', 'lt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'mg', 'mg', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(44, 'Malay', 'ms', 'ms', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'ml', 'ml', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(46, 'Maltese', 'mt', 'mt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'mk', 'mk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(48, 'Maori', 'mi', 'nz', 0, 'no', 'no', '2019-11-20 12:20:27', '0000-00-00 00:00:00'),
(49, 'Marathi', 'mr', 'in', 0, 'no', 'no', '2019-11-20 11:39:51', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'mn', 'mn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(52, 'German', 'de', 'de', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(53, 'Nepali', 'ne', 'ne', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'pa', 'in', 0, 'no', 'no', '2019-11-20 11:40:16', '0000-00-00 00:00:00'),
(57, 'Persian', 'fa', 'ir', 0, 'no', 'no', '2019-11-20 12:21:17', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'pt', 'pt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(60, 'Romanian', 'ro', 'ro', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(61, 'Russian', 'ru', 'ru', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'ceb', 'ph', 0, 'no', 'no', '2019-11-20 11:59:12', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'si', 'lk ', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'sk', 'sk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'sl', 'sl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(67, 'Swahili', 'sw', 'ke', 0, 'no', 'no', '2019-11-20 12:21:57', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'su', 'sd', 0, 'no', 'no', '2019-12-03 11:06:57', '0000-00-00 00:00:00'),
(70, 'Thai', 'th', 'th', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'tl', 'tl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(72, 'Tamil', 'ta', 'in', 0, 'no', 'no', '2019-11-20 11:40:53', '0000-00-00 00:00:00'),
(74, 'Telugu', 'te', 'in', 0, 'no', 'no', '2019-11-20 11:41:15', '0000-00-00 00:00:00'),
(75, 'Turkish', 'tr', 'tr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'uz', 'uz', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(79, 'Urdu', 'ur', 'pk', 0, 'no', 'no', '2019-11-20 12:23:57', '0000-00-00 00:00:00'),
(80, 'Finnish', 'fi', 'fi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(81, 'French', 'fr', 'fr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(82, 'Hindi', 'hi', 'in', 0, 'no', 'no', '2019-11-20 11:36:34', '0000-00-00 00:00:00'),
(84, 'Czech', 'cs', 'cz', 0, 'no', 'no', '2019-11-20 12:02:36', '0000-00-00 00:00:00'),
(85, 'Swedish', 'sv', 'sv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(86, 'Scottish', 'gd', 'gd', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(87, 'Estonian', 'et', 'et', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'eo', 'br', 0, 'no', 'no', '2019-11-21 04:49:18', '0000-00-00 00:00:00'),
(89, 'Javanese', 'jv', 'id', 0, 'no', 'no', '2019-11-20 12:18:29', '0000-00-00 00:00:00'),
(90, 'Japanese', 'ja', 'jp', 0, 'no', 'no', '2019-11-20 12:14:39', '0000-00-00 00:00:00'),
(91, 'Polish', 'pl', 'pl', 0, 'no', 'no', '2020-06-15 03:25:27', '0000-00-00 00:00:00'),
(92, 'Kurdish', 'ku', 'iq', 0, 'no', 'no', '2020-12-21 00:15:31', '0000-00-00 00:00:00'),
(93, 'Lao', 'lo', 'la', 0, 'no', 'no', '2020-12-21 00:15:36', '0000-00-00 00:00:00'),
(94, 'Croatia', 'hr', 'hr', 0, 'no', 'no', '2022-06-07 11:48:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES
(1, 'Sick', 'yes'),
(2, 'Earned', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `subject_group_subject_id` int NOT NULL,
  `subject_group_class_sections_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 23, 2, 2, 'First', '2025-12-06 02:38:29', '2025-12-06 02:38:29'),
(2, 23, 2, 2, 'Second', '2025-12-06 02:38:29', '2025-12-06 02:38:29'),
(3, 23, 3, 3, 'First', '2025-12-06 02:39:59', '2025-12-06 02:39:59'),
(4, 23, 2, 2, 'First', '2025-12-06 02:42:30', '2025-12-06 02:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plan_forum`
--

CREATE TABLE `lesson_plan_forum` (
  `id` int NOT NULL,
  `subject_syllabus_id` int NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'staff,student',
  `staff_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `message` text NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `message` text,
  `record_id` text,
  `user_id` int DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'Record updated On staff id 2', '2', 1, 'Update', '::1', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 05:07:05', NULL),
(2, 'Record updated On settings id 1', '1', 2, 'Update', '::1', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 06:09:09', NULL),
(3, 'Record updated On settings id 1', '1', 2, 'Update', '::1', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 06:11:53', NULL),
(4, 'Record updated On settings id 1', '1', 2, 'Update', '::1', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 06:12:07', NULL),
(5, 'Record updated On settings id 1', '1', 1, 'Update', '52.66.144.55', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:35:15', NULL),
(6, 'Record updated On settings id 1', '1', 1, 'Update', '52.66.144.55', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:35:19', NULL),
(7, 'New Record inserted On sections id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:55:34', NULL),
(8, 'New Record inserted On subjects id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:55:56', NULL),
(9, 'New Record inserted On subject groups id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:57:12', NULL),
(10, 'New Record inserted On sections id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:57:26', NULL),
(11, 'New Record inserted On subject groups id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:57:41', NULL),
(12, 'New Record inserted On students id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:58:40', NULL),
(13, 'New Record inserted On  student session id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:58:40', NULL),
(14, 'New Record inserted On users id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:58:40', NULL),
(15, 'New Record inserted On users id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:58:40', NULL),
(16, 'Record updated On students id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:58:40', NULL),
(17, 'New Record inserted On  fee group id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:59:40', NULL),
(18, 'New Record inserted On  fee group id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 12:59:48', NULL),
(19, 'New Record inserted On  fee type id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 13:00:03', NULL),
(20, 'New Record inserted On  fee groups feetype id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 13:00:28', NULL),
(21, 'Record updated On students id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 13:02:55', NULL),
(22, 'Record updated On  student session id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-24 13:02:55', NULL),
(23, 'New Record inserted On sms config id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 04:10:01', NULL),
(24, 'New Record inserted On Staff Payslip id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 04:12:53', NULL),
(25, 'New Record inserted On payslip allowance id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 04:12:53', NULL),
(26, 'New Record inserted On payslip allowance id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 04:12:53', NULL),
(27, 'Record updated On staff payslip id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 04:13:14', NULL),
(28, 'New Record inserted On leave types id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:13:38', NULL),
(29, 'New Record inserted On leave types id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:13:44', NULL),
(30, 'New Record inserted On department id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:02', NULL),
(31, 'New Record inserted On department id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:07', NULL),
(32, 'New Record inserted On department id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:14', NULL),
(33, 'New Record inserted On  staff designation id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:41', NULL),
(34, 'New Record inserted On  staff designation id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:49', NULL),
(35, 'New Record inserted On  staff designation id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:14:56', NULL),
(36, 'Record updated On staff id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:15:52', NULL),
(37, 'Record updated On staff id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:15:52', NULL),
(38, 'New Record inserted On staff leave request id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:16:23', NULL),
(39, 'Record updated On staff leave request id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:17:26', NULL),
(40, 'New Record inserted On  fee groups feetype id 2', '2', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:26:17', NULL),
(41, 'New Record inserted On  fee type id 2', '2', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:26:59', NULL),
(42, 'New Record inserted On  fee type id 3', '3', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:27:11', NULL),
(43, 'New Record inserted On  fee groups feetype id 3', '3', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:27:39', NULL),
(44, 'New Record inserted On  fee groups feetype id 4', '4', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:27:57', NULL),
(45, 'Record updated On students id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:28:33', NULL),
(46, 'Record updated On  student session id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 05:28:33', NULL),
(47, 'New Record inserted On students id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:38:41', NULL),
(48, 'New Record inserted On  student session id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:38:41', NULL),
(49, 'New Record inserted On users id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:38:41', NULL),
(50, 'New Record inserted On users id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:38:41', NULL),
(51, 'Record updated On students id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:38:41', NULL),
(52, 'New Record inserted On students id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:43:04', NULL),
(53, 'New Record inserted On  student session id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:43:04', NULL),
(54, 'New Record inserted On users id 5', '5', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:43:04', NULL),
(55, 'New Record inserted On users id 6', '6', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:43:05', NULL),
(56, 'Record updated On students id 3', '3', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 07:43:05', NULL),
(57, 'New Record inserted On students id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:41:14', NULL),
(58, 'New Record inserted On  student session id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:41:15', NULL),
(59, 'New Record inserted On users id 7', '7', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:41:15', NULL),
(60, 'New Record inserted On users id 8', '8', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:41:15', NULL),
(61, 'Record updated On students id 4', '4', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:41:15', NULL),
(62, 'New Record inserted On students id 5', '5', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:55:36', NULL),
(63, 'New Record inserted On  student session id 5', '5', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:55:36', NULL),
(64, 'New Record inserted On users id 9', '9', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:55:36', NULL),
(65, 'New Record inserted On users id 10', '10', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:55:36', NULL),
(66, 'Record updated On students id 5', '5', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:55:36', NULL),
(67, 'Record updated On students id 5', '5', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:58:39', NULL),
(68, 'Record updated On  student session id 5', '5', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:58:39', NULL),
(69, 'Record updated On students id 5', '5', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:58:39', NULL),
(70, 'New Record inserted On students id 6', '6', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:59:51', NULL),
(71, 'New Record inserted On  student session id 6', '6', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:59:51', NULL),
(72, 'New Record inserted On users id 11', '11', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:59:51', NULL),
(73, 'New Record inserted On users id 12', '12', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:59:51', NULL),
(74, 'Record updated On students id 6', '6', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 08:59:51', NULL),
(75, 'New Record inserted On students id 7', '7', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:04:09', NULL),
(76, 'New Record inserted On  student session id 7', '7', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:04:09', NULL),
(77, 'New Record inserted On users id 13', '13', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:04:09', NULL),
(78, 'New Record inserted On users id 14', '14', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:04:09', NULL),
(79, 'Record updated On students id 7', '7', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:04:09', NULL),
(80, 'New Record inserted On students id 8', '8', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:06:49', NULL),
(81, 'New Record inserted On  student session id 8', '8', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:06:49', NULL),
(82, 'New Record inserted On users id 15', '15', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:06:49', NULL),
(83, 'New Record inserted On users id 16', '16', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:06:49', NULL),
(84, 'Record updated On students id 8', '8', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:06:49', NULL),
(85, 'Record updated On students id 8', '8', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:08:00', NULL),
(86, 'Record updated On  student session id 8', '8', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:08:00', NULL),
(87, 'Record updated On students id 8', '8', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:08:00', NULL),
(88, 'New Record inserted On students id 9', '9', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:09:44', NULL),
(89, 'New Record inserted On  student session id 9', '9', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:09:44', NULL),
(90, 'New Record inserted On users id 17', '17', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:09:44', NULL),
(91, 'New Record inserted On users id 18', '18', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:09:44', NULL),
(92, 'Record updated On students id 9', '9', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:09:44', NULL),
(93, 'New Record inserted On  questions id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:25:50', NULL),
(94, 'New Record inserted On  online exam id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:27:14', NULL),
(95, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:34:49', NULL),
(96, 'Record updated On staff id 3', '3', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:34:49', NULL),
(97, 'Record updated On staff id 4', '4', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-25 09:40:00', NULL),
(98, 'Record updated On  online exam id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:29:02', NULL),
(99, 'Record updated On  online exam id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:29:02', NULL),
(100, 'Questions Record imported (2)', NULL, 2, 'Import', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:30:10', NULL),
(101, 'Record updated On  questions id 3', '3', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:30:41', NULL),
(102, 'Record updated On  questions id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:30:56', NULL),
(103, 'Record updated On  online exam id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:31:41', NULL),
(104, 'New Record inserted On  onlineexam questions id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:31:53', NULL),
(105, 'New Record inserted On  onlineexam questions id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 04:31:55', NULL),
(106, 'Record updated On settings id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:08:54', NULL),
(107, 'Record updated On settings id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:09:45', NULL),
(108, 'Record updated On settings id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:10:07', NULL),
(109, 'Record updated On settings id 1', '1', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:10:23', NULL),
(110, 'New Record inserted On sms template id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:49:56', NULL),
(111, 'New Record inserted On sms template id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:50:28', NULL),
(112, 'New Record inserted On sms template id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:50:56', NULL),
(113, 'Record updated On  sms template id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:51:22', NULL),
(114, 'New Record inserted On messages id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 05:55:28', NULL),
(115, 'New Record inserted On students id 10', '10', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:23:55', NULL),
(116, 'New Record inserted On  student session id 10', '10', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:23:55', NULL),
(117, 'New Record inserted On users id 19', '19', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:23:55', NULL),
(118, 'New Record inserted On users id 20', '20', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:23:55', NULL),
(119, 'Record updated On students id 10', '10', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:23:55', NULL),
(120, 'New Record inserted On  fee group id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:33:30', NULL),
(121, 'New Record inserted On  fee type id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:34:06', NULL),
(122, 'New Record inserted On  fee groups feetype id 5', '5', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:34:36', NULL),
(123, 'Record updated On students id 10', '10', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:35:16', NULL),
(124, 'Record updated On  student session id 10', '10', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:35:16', NULL),
(125, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:43:15', NULL),
(126, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:43:31', NULL),
(127, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:43:41', NULL),
(128, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 06:54:42', NULL),
(129, 'New Record inserted On  online exam id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:02:37', NULL),
(130, 'New Record inserted On  onlineexam questions id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:02:51', NULL),
(131, 'New Record inserted On  onlineexam questions id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:02:53', NULL),
(132, 'Record updated On  online exam id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:04:36', NULL),
(133, 'Record updated On  online exam id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:04:36', NULL),
(134, 'New Record inserted On  questions id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 07:09:51', NULL),
(135, 'New Record inserted On transport route id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 09:44:24', NULL),
(136, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 09:46:39', NULL),
(137, 'Record updated On notification setting id 4', '4', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:14', NULL),
(138, 'Record updated On notification setting id 2', '2', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(139, 'Record updated On notification setting id 18', '18', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(140, 'Record updated On notification setting id 17', '17', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(141, 'Record updated On notification setting id 16', '16', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(142, 'Record updated On notification setting id 15', '15', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(143, 'Record updated On notification setting id 14', '14', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(144, 'Record updated On notification setting id 13', '13', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(145, 'Record updated On notification setting id 12', '12', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(146, 'Record updated On notification setting id 11', '11', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(147, 'Record updated On notification setting id 10', '10', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(148, 'Record updated On notification setting id 9', '9', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(149, 'Record updated On notification setting id 8', '8', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(150, 'Record updated On notification setting id 7', '7', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(151, 'Record updated On notification setting id 6', '6', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(152, 'Record updated On notification setting id 4', '4', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(153, 'Record updated On notification setting id 3', '3', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(154, 'Record updated On notification setting id 1', '1', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(155, 'Record updated On notification setting id 20', '20', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(156, 'Record updated On notification setting id 19', '19', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(157, 'Record updated On notification setting id 21', '21', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(158, 'Record updated On notification setting id 22', '22', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:38:23', NULL),
(159, 'Record updated On students id 1', '1', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:42:07', NULL),
(160, 'Record updated On  student session id 1', '1', 2, 'Update', '49.42.189.147', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-26 16:42:07', NULL),
(161, 'Record updated On notification setting id 1', '1', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:26', NULL),
(162, 'Record updated On notification setting id 2', '2', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(163, 'Record updated On notification setting id 18', '18', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(164, 'Record updated On notification setting id 17', '17', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(165, 'Record updated On notification setting id 16', '16', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(166, 'Record updated On notification setting id 15', '15', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(167, 'Record updated On notification setting id 14', '14', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(168, 'Record updated On notification setting id 13', '13', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(169, 'Record updated On notification setting id 12', '12', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(170, 'Record updated On notification setting id 11', '11', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(171, 'Record updated On notification setting id 10', '10', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(172, 'Record updated On notification setting id 9', '9', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(173, 'Record updated On notification setting id 8', '8', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(174, 'Record updated On notification setting id 7', '7', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(175, 'Record updated On notification setting id 6', '6', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(176, 'Record updated On notification setting id 4', '4', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(177, 'Record updated On notification setting id 3', '3', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(178, 'Record updated On notification setting id 1', '1', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(179, 'Record updated On notification setting id 20', '20', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(180, 'Record updated On notification setting id 19', '19', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(181, 'Record updated On notification setting id 21', '21', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(182, 'Record updated On notification setting id 22', '22', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:29:42', NULL),
(183, 'Record updated On notification setting id 15', '15', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:18', NULL),
(184, 'Record updated On notification setting id 2', '2', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(185, 'Record updated On notification setting id 18', '18', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(186, 'Record updated On notification setting id 17', '17', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(187, 'Record updated On notification setting id 16', '16', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(188, 'Record updated On notification setting id 15', '15', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(189, 'Record updated On notification setting id 14', '14', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(190, 'Record updated On notification setting id 13', '13', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(191, 'Record updated On notification setting id 12', '12', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(192, 'Record updated On notification setting id 11', '11', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(193, 'Record updated On notification setting id 10', '10', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(194, 'Record updated On notification setting id 9', '9', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(195, 'Record updated On notification setting id 8', '8', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(196, 'Record updated On notification setting id 7', '7', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(197, 'Record updated On notification setting id 6', '6', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(198, 'Record updated On notification setting id 4', '4', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(199, 'Record updated On notification setting id 3', '3', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(200, 'Record updated On notification setting id 1', '1', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(201, 'Record updated On notification setting id 20', '20', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(202, 'Record updated On notification setting id 19', '19', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(203, 'Record updated On notification setting id 21', '21', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(204, 'Record updated On notification setting id 22', '22', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:31:47', NULL),
(205, 'Record updated On notification setting id 15', '15', 1, 'Update', '223.231.209.20', 'Windows 10', 'Chrome 142.0.0.0', '2025-11-29 15:34:03', NULL),
(206, 'New Record inserted On messages id 2', '2', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:02:07', NULL),
(207, 'New Record inserted On messages id 3', '3', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:02:53', NULL),
(208, 'New Record inserted On messages id 4', '4', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:06:11', NULL),
(209, 'Record updated On students id 9', '9', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:33:18', NULL),
(210, 'Record updated On  student session id 9', '9', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:33:18', NULL),
(211, 'Record updated On students id 9', '9', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:33:18', NULL),
(212, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-01 09:33:46', NULL),
(213, 'New Record inserted On messages id 5', '5', 2, 'Insert', '49.42.143.249', 'Android', 'Chrome 142.0.0.0', '2025-12-01 13:18:59', NULL),
(214, 'New Record inserted On messages id 6', '6', 2, 'Insert', '49.42.143.249', 'Android', 'Chrome 142.0.0.0', '2025-12-01 13:19:22', NULL),
(215, 'New Record inserted On students id 11', '11', 2, 'Insert', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:09:52', NULL),
(216, 'New Record inserted On  student session id 11', '11', 2, 'Insert', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:09:52', NULL),
(217, 'New Record inserted On users id 21', '21', 2, 'Insert', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:09:52', NULL),
(218, 'Record updated On students id 11', '11', 2, 'Update', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:09:52', NULL),
(219, 'Record updated On students id 11', '11', 2, 'Update', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:11:28', NULL),
(220, 'Record updated On  student session id 11', '11', 2, 'Update', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:11:28', NULL),
(221, 'New Record inserted On messages id 7', '7', 2, 'Insert', '106.215.146.19', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 03:14:05', NULL),
(222, 'New Record inserted On messages id 8', '8', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 05:18:59', NULL),
(223, 'New Record inserted On messages id 9', '9', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 06:03:35', NULL),
(224, 'New Record inserted On sms template id 6', '6', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 06:59:58', NULL),
(225, 'New Record inserted On sms template id 7', '7', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:00:25', NULL),
(226, 'New Record inserted On sms template id 8', '8', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:00:53', NULL),
(227, 'New Record inserted On sms template id 9', '9', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:02:11', NULL),
(228, 'New Record inserted On sms template id 10', '10', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:02:50', NULL),
(229, 'New Record inserted On sms template id 11', '11', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:03:13', NULL),
(230, 'New Record inserted On sms template id 12', '12', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:03:35', NULL),
(231, 'New Record inserted On sms template id 13', '13', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:04:02', NULL),
(232, 'New Record inserted On messages id 10', '10', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:05:57', NULL),
(233, 'New Record inserted On send notification id 1', '1', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:43:43', NULL),
(234, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 07:51:46', NULL),
(235, 'New Record inserted On messages id 11', '11', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:12:16', NULL),
(236, 'New Record inserted On messages id 12', '12', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:14:14', NULL),
(237, 'New Record inserted On messages id 13', '13', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:19:18', NULL),
(238, 'New Record inserted On messages id 14', '14', 2, 'Insert', '49.42.189.9', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:40:36', NULL),
(239, 'New Record inserted On messages id 15', '15', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:41:29', NULL),
(240, 'New Record inserted On messages id 16', '16', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:42:36', NULL),
(241, 'Record updated On students id 1', '1', 2, 'Update', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:43:40', NULL),
(242, 'Record updated On  student session id 1', '1', 2, 'Update', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:43:40', NULL),
(243, 'New Record inserted On messages id 17', '17', 2, 'Insert', '106.215.144.136', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-02 16:45:08', NULL),
(244, 'New Record inserted On messages id 18', '18', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 04:33:25', NULL),
(245, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:21:57', NULL),
(246, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:22:48', NULL),
(247, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:23:18', NULL),
(248, 'New Record inserted On students id 12', '12', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:38:46', NULL),
(249, 'New Record inserted On  student session id 12', '12', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:38:46', NULL),
(250, 'New Record inserted On users id 22', '22', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:38:46', NULL),
(251, 'New Record inserted On users id 23', '23', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:38:46', NULL),
(252, 'Record updated On students id 12', '12', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:38:46', NULL),
(253, 'Record updated On students id 12', '12', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:40:14', NULL),
(254, 'Record updated On  student session id 12', '12', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:40:14', NULL),
(255, 'Record updated On students id 12', '12', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:42:21', NULL),
(256, 'Record updated On  student session id 12', '12', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:42:21', NULL),
(257, 'Record updated On students id 10', '10', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:47:48', NULL),
(258, 'Record updated On  student session id 10', '10', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:47:48', NULL),
(259, 'New Record inserted On students id 13', '13', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:49:43', NULL),
(260, 'New Record inserted On  student session id 13', '13', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:49:43', NULL),
(261, 'New Record inserted On users id 24', '24', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:49:43', NULL),
(262, 'New Record inserted On users id 25', '25', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:49:43', NULL),
(263, 'Record updated On students id 13', '13', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:49:43', NULL),
(264, 'New Record inserted On students id 14', '14', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:58:32', NULL),
(265, 'New Record inserted On  student session id 14', '14', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:58:32', NULL),
(266, 'New Record inserted On users id 26', '26', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:58:32', NULL),
(267, 'New Record inserted On users id 27', '27', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:58:32', NULL),
(268, 'Record updated On students id 14', '14', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 07:58:32', NULL),
(269, 'New Record inserted On messages id 19', '19', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 08:00:11', NULL),
(270, 'New Record inserted On messages id 20', '20', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 08:00:54', NULL),
(271, 'New Record inserted On messages id 21', '21', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 08:01:18', NULL),
(272, 'New Record inserted On messages id 22', '22', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-03 08:02:00', NULL),
(273, 'New Record inserted On students id 15', '15', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:45:46', NULL),
(274, 'New Record inserted On  student session id 15', '15', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:45:46', NULL),
(275, 'New Record inserted On users id 28', '28', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:45:46', NULL),
(276, 'New Record inserted On users id 29', '29', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:45:46', NULL),
(277, 'Record updated On students id 15', '15', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:45:46', NULL),
(278, 'New Record inserted On students id 16', '16', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:47:55', NULL),
(279, 'New Record inserted On  student session id 16', '16', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:47:55', NULL),
(280, 'New Record inserted On users id 30', '30', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:47:55', NULL),
(281, 'New Record inserted On users id 31', '31', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:47:55', NULL),
(282, 'Record updated On students id 16', '16', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:47:55', NULL),
(283, 'New Record inserted On students id 17', '17', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:53:53', NULL),
(284, 'New Record inserted On  student session id 17', '17', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:53:53', NULL),
(285, 'New Record inserted On users id 32', '32', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:53:53', NULL),
(286, 'New Record inserted On users id 33', '33', 2, 'Insert', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:53:53', NULL),
(287, 'Record updated On students id 17', '17', 2, 'Update', '115.42.33.62', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 06:53:53', NULL),
(288, 'Record updated On settings id 1', '1', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 08:15:29', NULL),
(289, 'New Record inserted On students id 18', '18', 2, 'Insert', '49.37.130.180', 'Mac OS X', 'Chrome 142.0.0.0', '2025-12-04 13:14:32', NULL),
(290, 'New Record inserted On  student session id 18', '18', 2, 'Insert', '49.37.130.180', 'Mac OS X', 'Chrome 142.0.0.0', '2025-12-04 13:14:32', NULL),
(291, 'New Record inserted On users id 34', '34', 2, 'Insert', '49.37.130.180', 'Mac OS X', 'Chrome 142.0.0.0', '2025-12-04 13:14:32', NULL),
(292, 'New Record inserted On users id 35', '35', 2, 'Insert', '49.37.130.180', 'Mac OS X', 'Chrome 142.0.0.0', '2025-12-04 13:14:32', NULL),
(293, 'Record updated On students id 18', '18', 2, 'Update', '49.37.130.180', 'Mac OS X', 'Chrome 142.0.0.0', '2025-12-04 13:14:33', NULL),
(294, 'New Record inserted On students id 19', '19', 2, 'Insert', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:15:04', NULL),
(295, 'New Record inserted On  student session id 19', '19', 2, 'Insert', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:15:04', NULL),
(296, 'New Record inserted On users id 36', '36', 2, 'Insert', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:15:04', NULL),
(297, 'New Record inserted On users id 37', '37', 2, 'Insert', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:15:04', NULL),
(298, 'Record updated On students id 19', '19', 2, 'Update', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:15:04', NULL),
(299, 'Record updated On students id 19', '19', 2, 'Update', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:33:21', NULL),
(300, 'Record updated On  student session id 19', '19', 2, 'Update', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:33:21', NULL),
(301, 'New Record inserted On messages id 23', '23', 2, 'Insert', '106.215.145.248', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 14:35:01', NULL),
(302, 'Record updated On users id 1', '1', 1, 'Update', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 15:59:22', NULL),
(303, 'New Record inserted On disable reason id 1', '1', 1, 'Insert', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:01:03', NULL),
(304, 'New Record inserted On disable reason id 2', '2', 1, 'Insert', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:01:14', NULL),
(305, 'New Record inserted On disable reason id 3', '3', 1, 'Insert', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:01:20', NULL),
(306, 'Record updated On students id 1', '1', 1, 'Update', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:01:36', NULL),
(307, 'New Record inserted On messages id 24', '24', 1, 'Insert', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:30:17', NULL),
(308, 'New Record inserted On messages id 25', '25', 1, 'Insert', '106.215.146.97', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-04 16:31:56', NULL),
(309, 'New Record inserted On messages id 26', '26', 2, 'Insert', '223.184.193.63', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-05 16:15:52', NULL),
(310, 'New Record inserted On messages id 27', '27', 2, 'Insert', '152.57.162.97', 'Android', 'Chrome 142.0.0.0', '2025-12-05 20:43:30', NULL),
(311, 'New Record inserted On messages id 28', '28', 2, 'Insert', '152.57.171.13', 'Android', 'Chrome 142.0.0.0', '2025-12-05 20:47:21', NULL),
(312, 'New Record inserted On messages id 29', '29', 2, 'Insert', '152.57.171.13', 'Android', 'Chrome 142.0.0.0', '2025-12-05 20:48:58', NULL),
(313, 'New Record inserted On messages id 30', '30', 2, 'Insert', '152.57.171.13', 'Android', 'Chrome 142.0.0.0', '2025-12-05 20:49:42', NULL),
(314, 'New Record inserted On messages id 31', '31', 2, 'Insert', '49.42.178.47', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 01:34:07', NULL),
(315, 'New Record inserted On messages id 32', '32', 2, 'Insert', '49.42.178.47', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 01:37:33', NULL),
(316, 'New Record inserted On messages id 33', '33', 2, 'Insert', '49.42.178.47', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 01:39:39', NULL),
(317, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:34:01', NULL),
(318, 'New Record inserted On  student session id 20', '20', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:35:02', NULL),
(319, 'New Record inserted On  student session id 21', '21', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:35:02', NULL),
(320, 'New Record inserted On subject groups id 2', '2', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:37:20', NULL),
(321, 'New Record inserted On subject groups id 3', '3', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:37:36', NULL),
(322, 'New Record inserted On lesson id 1', '1', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:38:29', NULL),
(323, 'New Record inserted On lesson id 2', '2', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:38:29', NULL),
(324, 'New Record inserted On lesson id 3', '3', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:39:59', NULL),
(325, 'New Record inserted On topic id 1', '1', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:40:24', NULL),
(326, 'New Record inserted On topic id 2', '2', 1, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:40:48', NULL),
(327, 'Record updated On  topic id 1', '1', 1, 'Update', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:41:30', NULL),
(328, 'New Record inserted On messages id 34', '34', 3, 'Insert', '152.59.200.83', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 02:48:55', NULL),
(329, 'New Record inserted On  online exam id 3', '3', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 03:59:32', NULL),
(330, 'New Record inserted On  onlineexam questions id 5', '5', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 03:59:58', NULL),
(331, 'New Record inserted On  onlineexam questions id 6', '6', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 03:59:59', NULL),
(332, 'New Record inserted On  onlineexam questions id 7', '7', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:00:00', NULL),
(333, 'New Record inserted On  onlineexam questions id 8', '8', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:00:02', NULL),
(334, 'Record deleted On  onlineexam questions id 8', '8', 3, 'Delete', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:00:22', NULL),
(335, 'New Record inserted On  onlineexam questions id 9', '9', 3, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:00:22', NULL),
(336, 'New Record inserted On  online exam id 4', '4', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:06:25', NULL),
(337, 'New Record inserted On  onlineexam questions id 10', '10', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:07:29', NULL),
(338, 'New Record inserted On  onlineexam questions id 11', '11', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:07:30', NULL),
(339, 'New Record inserted On  onlineexam questions id 12', '12', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:07:31', NULL),
(340, 'New Record inserted On  onlineexam questions id 13', '13', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:07:32', NULL),
(341, 'New Record inserted On students id 20', '20', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:13:07', NULL),
(342, 'New Record inserted On  student session id 22', '22', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:13:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(343, 'New Record inserted On users id 38', '38', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:13:07', NULL),
(344, 'New Record inserted On users id 39', '39', 2, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:13:07', NULL),
(345, 'Record updated On students id 20', '20', 2, 'Update', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:13:07', NULL),
(346, 'New Record inserted On exam groups id 1', '1', 1, 'Insert', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:18:14', NULL),
(347, 'Record updated On  online exam id 4', '4', 1, 'Update', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:24:18', NULL),
(348, 'Record updated On  online exam id 4', '4', 1, 'Update', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:25:53', NULL),
(349, 'Record updated On  online exam id 4', '4', 1, 'Update', '152.59.203.134', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 04:25:53', NULL),
(350, 'New Record inserted On students id 21', '21', 2, 'Insert', '157.50.93.108', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 05:37:32', NULL),
(351, 'New Record inserted On  student session id 23', '23', 2, 'Insert', '157.50.93.108', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 05:37:32', NULL),
(352, 'New Record inserted On users id 40', '40', 2, 'Insert', '157.50.93.108', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 05:37:32', NULL),
(353, 'New Record inserted On users id 41', '41', 2, 'Insert', '157.50.93.108', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 05:37:32', NULL),
(354, 'Record updated On students id 21', '21', 2, 'Update', '157.50.93.108', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 05:37:32', NULL),
(355, 'New Record inserted On  online exam id 5', '5', 2, 'Insert', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:00', NULL),
(356, 'Record updated On  online exam id 5', '5', 2, 'Update', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:28', NULL),
(357, 'Record updated On  online exam id 5', '5', 2, 'Update', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:28', NULL),
(358, 'Record updated On  online exam id 5', '5', 2, 'Update', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:28', NULL),
(359, 'New Record inserted On  onlineexam questions id 14', '14', 2, 'Insert', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:46', NULL),
(360, 'New Record inserted On  onlineexam questions id 15', '15', 2, 'Insert', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:46', NULL),
(361, 'New Record inserted On  onlineexam questions id 16', '16', 2, 'Insert', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:47', NULL),
(362, 'New Record inserted On  onlineexam questions id 17', '17', 2, 'Insert', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:20:48', NULL),
(363, 'Record updated On  online exam id 5', '5', 2, 'Update', '152.57.190.102', 'Android', 'Chrome 142.0.0.0', '2025-12-06 09:22:23', NULL),
(364, 'Record updated On  online exam id 5', '5', 2, 'Update', '139.5.11.15', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:42:59', NULL),
(365, 'Record updated On  online exam id 5', '5', 2, 'Update', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:45:55', NULL),
(366, 'New Record inserted On  online exam id 6', '6', 2, 'Insert', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:50:07', NULL),
(367, 'New Record inserted On  onlineexam questions id 18', '18', 2, 'Insert', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:50:22', NULL),
(368, 'New Record inserted On  onlineexam questions id 19', '19', 2, 'Insert', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:50:23', NULL),
(369, 'Record updated On  online exam id 5', '5', 2, 'Update', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 12:52:39', NULL),
(370, 'New Record inserted On subject groups id 3', '3', 2, 'Insert', '106.216.205.56', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:06:14', NULL),
(371, 'New Record inserted On students id 22', '22', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(372, 'New Record inserted On  student session id 24', '24', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(373, 'New Record inserted On users id 42', '42', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(374, 'New Record inserted On users id 43', '43', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(375, 'Record updated On students id 22', '22', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(376, 'New Record inserted On students id 23', '23', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(377, 'New Record inserted On  student session id 25', '25', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(378, 'New Record inserted On users id 44', '44', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(379, 'New Record inserted On users id 45', '45', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(380, 'Record updated On students id 23', '23', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(381, 'New Record inserted On students id 24', '24', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(382, 'New Record inserted On  student session id 26', '26', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(383, 'New Record inserted On users id 46', '46', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(384, 'New Record inserted On users id 47', '47', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(385, 'Record updated On students id 24', '24', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(386, 'New Record inserted On students id 25', '25', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(387, 'New Record inserted On  student session id 27', '27', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(388, 'New Record inserted On users id 48', '48', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(389, 'New Record inserted On users id 49', '49', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(390, 'Record updated On students id 25', '25', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(391, 'New Record inserted On students id 26', '26', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(392, 'New Record inserted On  student session id 28', '28', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(393, 'New Record inserted On users id 50', '50', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(394, 'New Record inserted On users id 51', '51', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(395, 'Record updated On students id 26', '26', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(396, 'New Record inserted On students id 27', '27', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(397, 'New Record inserted On  student session id 29', '29', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(398, 'New Record inserted On users id 52', '52', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(399, 'New Record inserted On users id 53', '53', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(400, 'Record updated On students id 27', '27', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(401, 'New Record inserted On students id 28', '28', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(402, 'New Record inserted On  student session id 30', '30', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(403, 'New Record inserted On users id 54', '54', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(404, 'New Record inserted On users id 55', '55', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(405, 'Record updated On students id 28', '28', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(406, 'New Record inserted On students id 29', '29', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(407, 'New Record inserted On  student session id 31', '31', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(408, 'New Record inserted On users id 56', '56', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(409, 'New Record inserted On users id 57', '57', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(410, 'Record updated On students id 29', '29', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(411, 'New Record inserted On students id 30', '30', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(412, 'New Record inserted On  student session id 32', '32', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(413, 'New Record inserted On users id 58', '58', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(414, 'New Record inserted On users id 59', '59', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(415, 'Record updated On students id 30', '30', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(416, 'New Record inserted On students id 31', '31', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(417, 'New Record inserted On  student session id 33', '33', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(418, 'New Record inserted On users id 60', '60', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(419, 'New Record inserted On users id 61', '61', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(420, 'Record updated On students id 31', '31', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(421, 'New Record inserted On students id 32', '32', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(422, 'New Record inserted On  student session id 34', '34', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(423, 'New Record inserted On users id 62', '62', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(424, 'New Record inserted On users id 63', '63', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(425, 'Record updated On students id 32', '32', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(426, 'New Record inserted On students id 33', '33', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(427, 'New Record inserted On  student session id 35', '35', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(428, 'New Record inserted On users id 64', '64', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(429, 'New Record inserted On users id 65', '65', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(430, 'Record updated On students id 33', '33', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(431, 'New Record inserted On students id 34', '34', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(432, 'New Record inserted On  student session id 36', '36', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(433, 'New Record inserted On users id 66', '66', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(434, 'New Record inserted On users id 67', '67', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(435, 'Record updated On students id 34', '34', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(436, 'New Record inserted On students id 35', '35', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(437, 'New Record inserted On  student session id 37', '37', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(438, 'New Record inserted On users id 68', '68', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(439, 'New Record inserted On users id 69', '69', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(440, 'Record updated On students id 35', '35', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(441, 'New Record inserted On students id 36', '36', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(442, 'New Record inserted On  student session id 38', '38', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(443, 'New Record inserted On users id 70', '70', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(444, 'New Record inserted On users id 71', '71', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(445, 'Record updated On students id 36', '36', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(446, 'New Record inserted On students id 37', '37', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(447, 'New Record inserted On  student session id 39', '39', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(448, 'New Record inserted On users id 72', '72', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(449, 'New Record inserted On users id 73', '73', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:50', NULL),
(450, 'Record updated On students id 37', '37', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(451, 'New Record inserted On students id 38', '38', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(452, 'New Record inserted On  student session id 40', '40', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(453, 'New Record inserted On users id 74', '74', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(454, 'New Record inserted On users id 75', '75', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(455, 'Record updated On students id 38', '38', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(456, 'New Record inserted On students id 39', '39', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(457, 'New Record inserted On  student session id 41', '41', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(458, 'New Record inserted On users id 76', '76', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(459, 'New Record inserted On users id 77', '77', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(460, 'Record updated On students id 39', '39', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(461, 'New Record inserted On students id 40', '40', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(462, 'New Record inserted On  student session id 42', '42', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(463, 'New Record inserted On users id 78', '78', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(464, 'New Record inserted On users id 79', '79', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(465, 'Record updated On students id 40', '40', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(466, 'New Record inserted On students id 41', '41', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(467, 'New Record inserted On  student session id 43', '43', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(468, 'New Record inserted On users id 80', '80', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(469, 'New Record inserted On users id 81', '81', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(470, 'Record updated On students id 41', '41', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(471, 'New Record inserted On students id 42', '42', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(472, 'New Record inserted On  student session id 44', '44', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(473, 'New Record inserted On users id 82', '82', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(474, 'New Record inserted On users id 83', '83', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(475, 'Record updated On students id 42', '42', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(476, 'New Record inserted On students id 43', '43', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(477, 'New Record inserted On  student session id 45', '45', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(478, 'New Record inserted On users id 84', '84', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(479, 'New Record inserted On users id 85', '85', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(480, 'Record updated On students id 43', '43', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(481, 'New Record inserted On students id 44', '44', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(482, 'New Record inserted On  student session id 46', '46', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(483, 'New Record inserted On users id 86', '86', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(484, 'New Record inserted On users id 87', '87', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(485, 'Record updated On students id 44', '44', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(486, 'New Record inserted On students id 45', '45', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(487, 'New Record inserted On  student session id 47', '47', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(488, 'New Record inserted On users id 88', '88', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(489, 'New Record inserted On users id 89', '89', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(490, 'Record updated On students id 45', '45', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(491, 'New Record inserted On students id 46', '46', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(492, 'New Record inserted On  student session id 48', '48', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(493, 'New Record inserted On users id 90', '90', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(494, 'New Record inserted On users id 91', '91', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(495, 'Record updated On students id 46', '46', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(496, 'New Record inserted On students id 47', '47', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(497, 'New Record inserted On  student session id 49', '49', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(498, 'New Record inserted On users id 92', '92', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(499, 'New Record inserted On users id 93', '93', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(500, 'Record updated On students id 47', '47', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(501, 'New Record inserted On students id 48', '48', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(502, 'New Record inserted On  student session id 50', '50', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(503, 'New Record inserted On users id 94', '94', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(504, 'New Record inserted On users id 95', '95', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(505, 'Record updated On students id 48', '48', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(506, 'New Record inserted On students id 49', '49', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(507, 'New Record inserted On  student session id 51', '51', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(508, 'New Record inserted On users id 96', '96', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(509, 'New Record inserted On users id 97', '97', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(510, 'Record updated On students id 49', '49', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(511, 'New Record inserted On students id 50', '50', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(512, 'New Record inserted On  student session id 52', '52', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(513, 'New Record inserted On users id 98', '98', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(514, 'New Record inserted On users id 99', '99', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(515, 'Record updated On students id 50', '50', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(516, 'New Record inserted On students id 51', '51', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(517, 'New Record inserted On  student session id 53', '53', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(518, 'New Record inserted On users id 100', '100', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(519, 'New Record inserted On users id 101', '101', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(520, 'Record updated On students id 51', '51', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(521, 'New Record inserted On students id 52', '52', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(522, 'New Record inserted On  student session id 54', '54', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(523, 'New Record inserted On users id 102', '102', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(524, 'New Record inserted On users id 103', '103', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(525, 'Record updated On students id 52', '52', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(526, 'New Record inserted On students id 53', '53', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(527, 'New Record inserted On  student session id 55', '55', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(528, 'New Record inserted On users id 104', '104', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(529, 'New Record inserted On users id 105', '105', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(530, 'Record updated On students id 53', '53', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:07:51', NULL),
(531, 'New Record inserted On students id 54', '54', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(532, 'New Record inserted On  student session id 56', '56', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(533, 'New Record inserted On users id 106', '106', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(534, 'New Record inserted On users id 107', '107', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(535, 'Record updated On students id 54', '54', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(536, 'New Record inserted On students id 55', '55', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(537, 'New Record inserted On  student session id 57', '57', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(538, 'New Record inserted On users id 108', '108', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(539, 'New Record inserted On users id 109', '109', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(540, 'Record updated On students id 55', '55', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(541, 'New Record inserted On students id 56', '56', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(542, 'New Record inserted On  student session id 58', '58', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(543, 'New Record inserted On users id 110', '110', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(544, 'New Record inserted On users id 111', '111', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(545, 'Record updated On students id 56', '56', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(546, 'New Record inserted On students id 57', '57', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(547, 'New Record inserted On  student session id 59', '59', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(548, 'New Record inserted On users id 112', '112', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(549, 'New Record inserted On users id 113', '113', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(550, 'Record updated On students id 57', '57', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(551, 'New Record inserted On students id 58', '58', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(552, 'New Record inserted On  student session id 60', '60', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(553, 'New Record inserted On users id 114', '114', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(554, 'New Record inserted On users id 115', '115', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(555, 'Record updated On students id 58', '58', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(556, 'New Record inserted On students id 59', '59', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(557, 'New Record inserted On  student session id 61', '61', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(558, 'New Record inserted On users id 116', '116', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(559, 'New Record inserted On users id 117', '117', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(560, 'Record updated On students id 59', '59', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(561, 'New Record inserted On students id 60', '60', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(562, 'New Record inserted On  student session id 62', '62', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(563, 'New Record inserted On users id 118', '118', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(564, 'New Record inserted On users id 119', '119', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(565, 'Record updated On students id 60', '60', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(566, 'New Record inserted On students id 61', '61', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(567, 'New Record inserted On  student session id 63', '63', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(568, 'New Record inserted On users id 120', '120', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(569, 'New Record inserted On users id 121', '121', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(570, 'Record updated On students id 61', '61', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(571, 'New Record inserted On students id 62', '62', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(572, 'New Record inserted On  student session id 64', '64', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(573, 'New Record inserted On users id 122', '122', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(574, 'New Record inserted On users id 123', '123', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(575, 'Record updated On students id 62', '62', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(576, 'New Record inserted On students id 63', '63', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(577, 'New Record inserted On  student session id 65', '65', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(578, 'New Record inserted On users id 124', '124', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(579, 'New Record inserted On users id 125', '125', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(580, 'Record updated On students id 63', '63', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(581, 'New Record inserted On students id 64', '64', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(582, 'New Record inserted On  student session id 66', '66', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(583, 'New Record inserted On users id 126', '126', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(584, 'New Record inserted On users id 127', '127', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:55', NULL),
(585, 'Record updated On students id 64', '64', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(586, 'New Record inserted On students id 65', '65', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(587, 'New Record inserted On  student session id 67', '67', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(588, 'New Record inserted On users id 128', '128', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(589, 'New Record inserted On users id 129', '129', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(590, 'Record updated On students id 65', '65', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(591, 'New Record inserted On students id 66', '66', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(592, 'New Record inserted On  student session id 68', '68', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(593, 'New Record inserted On users id 130', '130', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(594, 'New Record inserted On users id 131', '131', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(595, 'Record updated On students id 66', '66', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(596, 'New Record inserted On students id 67', '67', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(597, 'New Record inserted On  student session id 69', '69', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(598, 'New Record inserted On users id 132', '132', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(599, 'New Record inserted On users id 133', '133', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(600, 'Record updated On students id 67', '67', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(601, 'New Record inserted On students id 68', '68', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(602, 'New Record inserted On  student session id 70', '70', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(603, 'New Record inserted On users id 134', '134', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(604, 'New Record inserted On users id 135', '135', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(605, 'Record updated On students id 68', '68', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(606, 'New Record inserted On students id 69', '69', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(607, 'New Record inserted On  student session id 71', '71', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(608, 'New Record inserted On users id 136', '136', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(609, 'New Record inserted On users id 137', '137', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(610, 'Record updated On students id 69', '69', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(611, 'New Record inserted On students id 70', '70', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(612, 'New Record inserted On  student session id 72', '72', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(613, 'New Record inserted On users id 138', '138', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(614, 'New Record inserted On users id 139', '139', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(615, 'Record updated On students id 70', '70', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(616, 'New Record inserted On students id 71', '71', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(617, 'New Record inserted On  student session id 73', '73', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(618, 'New Record inserted On users id 140', '140', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(619, 'New Record inserted On users id 141', '141', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(620, 'Record updated On students id 71', '71', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(621, 'New Record inserted On students id 72', '72', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(622, 'New Record inserted On  student session id 74', '74', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(623, 'New Record inserted On users id 142', '142', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(624, 'New Record inserted On users id 143', '143', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(625, 'Record updated On students id 72', '72', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(626, 'New Record inserted On students id 73', '73', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(627, 'New Record inserted On  student session id 75', '75', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(628, 'New Record inserted On users id 144', '144', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(629, 'New Record inserted On users id 145', '145', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(630, 'Record updated On students id 73', '73', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(631, 'New Record inserted On students id 74', '74', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(632, 'New Record inserted On  student session id 76', '76', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(633, 'New Record inserted On users id 146', '146', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(634, 'New Record inserted On users id 147', '147', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(635, 'Record updated On students id 74', '74', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(636, 'New Record inserted On students id 75', '75', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(637, 'New Record inserted On  student session id 77', '77', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(638, 'New Record inserted On users id 148', '148', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(639, 'New Record inserted On users id 149', '149', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(640, 'Record updated On students id 75', '75', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(641, 'New Record inserted On students id 76', '76', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(642, 'New Record inserted On  student session id 78', '78', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(643, 'New Record inserted On users id 150', '150', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(644, 'New Record inserted On users id 151', '151', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(645, 'Record updated On students id 76', '76', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(646, 'New Record inserted On students id 77', '77', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(647, 'New Record inserted On  student session id 79', '79', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(648, 'New Record inserted On users id 152', '152', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(649, 'New Record inserted On users id 153', '153', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(650, 'Record updated On students id 77', '77', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(651, 'New Record inserted On students id 78', '78', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(652, 'New Record inserted On  student session id 80', '80', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(653, 'New Record inserted On users id 154', '154', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(654, 'New Record inserted On users id 155', '155', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(655, 'Record updated On students id 78', '78', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(656, 'New Record inserted On students id 79', '79', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(657, 'New Record inserted On  student session id 81', '81', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(658, 'New Record inserted On users id 156', '156', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(659, 'New Record inserted On users id 157', '157', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(660, 'Record updated On students id 79', '79', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(661, 'New Record inserted On students id 80', '80', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(662, 'New Record inserted On  student session id 82', '82', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(663, 'New Record inserted On users id 158', '158', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(664, 'New Record inserted On users id 159', '159', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(665, 'Record updated On students id 80', '80', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:56', NULL),
(666, 'New Record inserted On students id 81', '81', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(667, 'New Record inserted On  student session id 83', '83', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(668, 'New Record inserted On users id 160', '160', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(669, 'New Record inserted On users id 161', '161', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(670, 'Record updated On students id 81', '81', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(671, 'New Record inserted On students id 82', '82', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(672, 'New Record inserted On  student session id 84', '84', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(673, 'New Record inserted On users id 162', '162', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(674, 'New Record inserted On users id 163', '163', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(675, 'Record updated On students id 82', '82', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(676, 'New Record inserted On students id 83', '83', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(677, 'New Record inserted On  student session id 85', '85', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(678, 'New Record inserted On users id 164', '164', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(679, 'New Record inserted On users id 165', '165', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(680, 'Record updated On students id 83', '83', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(681, 'New Record inserted On students id 84', '84', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(682, 'New Record inserted On  student session id 86', '86', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(683, 'New Record inserted On users id 166', '166', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(684, 'New Record inserted On users id 167', '167', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(685, 'Record updated On students id 84', '84', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(686, 'New Record inserted On students id 85', '85', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(687, 'New Record inserted On  student session id 87', '87', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(688, 'New Record inserted On users id 168', '168', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(689, 'New Record inserted On users id 169', '169', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(690, 'Record updated On students id 85', '85', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:13:57', NULL),
(691, 'New Record inserted On students id 86', '86', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(692, 'New Record inserted On  student session id 88', '88', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(693, 'New Record inserted On users id 170', '170', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(694, 'New Record inserted On users id 171', '171', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(695, 'Record updated On students id 86', '86', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(696, 'New Record inserted On students id 87', '87', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(697, 'New Record inserted On  student session id 89', '89', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(698, 'New Record inserted On users id 172', '172', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(699, 'New Record inserted On users id 173', '173', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(700, 'Record updated On students id 87', '87', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(701, 'New Record inserted On students id 88', '88', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(702, 'New Record inserted On  student session id 90', '90', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(703, 'New Record inserted On users id 174', '174', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(704, 'New Record inserted On users id 175', '175', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(705, 'Record updated On students id 88', '88', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(706, 'New Record inserted On students id 89', '89', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(707, 'New Record inserted On  student session id 91', '91', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(708, 'New Record inserted On users id 176', '176', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(709, 'New Record inserted On users id 177', '177', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(710, 'Record updated On students id 89', '89', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(711, 'New Record inserted On students id 90', '90', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(712, 'New Record inserted On  student session id 92', '92', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(713, 'New Record inserted On users id 178', '178', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(714, 'New Record inserted On users id 179', '179', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(715, 'Record updated On students id 90', '90', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(716, 'New Record inserted On students id 91', '91', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(717, 'New Record inserted On  student session id 93', '93', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(718, 'New Record inserted On users id 180', '180', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(719, 'New Record inserted On users id 181', '181', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(720, 'Record updated On students id 91', '91', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(721, 'New Record inserted On students id 92', '92', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(722, 'New Record inserted On  student session id 94', '94', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(723, 'New Record inserted On users id 182', '182', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(724, 'New Record inserted On users id 183', '183', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(725, 'Record updated On students id 92', '92', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(726, 'New Record inserted On students id 93', '93', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(727, 'New Record inserted On  student session id 95', '95', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(728, 'New Record inserted On users id 184', '184', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(729, 'New Record inserted On users id 185', '185', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(730, 'Record updated On students id 93', '93', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(731, 'New Record inserted On students id 94', '94', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(732, 'New Record inserted On  student session id 96', '96', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(733, 'New Record inserted On users id 186', '186', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(734, 'New Record inserted On users id 187', '187', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(735, 'Record updated On students id 94', '94', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(736, 'New Record inserted On students id 95', '95', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(737, 'New Record inserted On  student session id 97', '97', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(738, 'New Record inserted On users id 188', '188', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(739, 'New Record inserted On users id 189', '189', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(740, 'Record updated On students id 95', '95', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(741, 'New Record inserted On students id 96', '96', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(742, 'New Record inserted On  student session id 98', '98', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(743, 'New Record inserted On users id 190', '190', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(744, 'New Record inserted On users id 191', '191', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(745, 'Record updated On students id 96', '96', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(746, 'New Record inserted On students id 97', '97', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(747, 'New Record inserted On  student session id 99', '99', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(748, 'New Record inserted On users id 192', '192', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(749, 'New Record inserted On users id 193', '193', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(750, 'Record updated On students id 97', '97', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:00', NULL),
(751, 'New Record inserted On students id 98', '98', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(752, 'New Record inserted On  student session id 100', '100', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(753, 'New Record inserted On users id 194', '194', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(754, 'New Record inserted On users id 195', '195', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(755, 'Record updated On students id 98', '98', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(756, 'New Record inserted On students id 99', '99', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(757, 'New Record inserted On  student session id 101', '101', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(758, 'New Record inserted On users id 196', '196', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(759, 'New Record inserted On users id 197', '197', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(760, 'Record updated On students id 99', '99', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(761, 'New Record inserted On students id 100', '100', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(762, 'New Record inserted On  student session id 102', '102', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(763, 'New Record inserted On users id 198', '198', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(764, 'New Record inserted On users id 199', '199', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(765, 'Record updated On students id 100', '100', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(766, 'New Record inserted On students id 101', '101', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(767, 'New Record inserted On  student session id 103', '103', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(768, 'New Record inserted On users id 200', '200', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(769, 'New Record inserted On users id 201', '201', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(770, 'Record updated On students id 101', '101', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(771, 'New Record inserted On students id 102', '102', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(772, 'New Record inserted On  student session id 104', '104', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(773, 'New Record inserted On users id 202', '202', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(774, 'New Record inserted On users id 203', '203', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(775, 'Record updated On students id 102', '102', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(776, 'New Record inserted On students id 103', '103', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(777, 'New Record inserted On  student session id 105', '105', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(778, 'New Record inserted On users id 204', '204', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(779, 'New Record inserted On users id 205', '205', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(780, 'Record updated On students id 103', '103', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(781, 'New Record inserted On students id 104', '104', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(782, 'New Record inserted On  student session id 106', '106', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(783, 'New Record inserted On users id 206', '206', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(784, 'New Record inserted On users id 207', '207', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(785, 'Record updated On students id 104', '104', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(786, 'New Record inserted On students id 105', '105', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(787, 'New Record inserted On  student session id 107', '107', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(788, 'New Record inserted On users id 208', '208', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(789, 'New Record inserted On users id 209', '209', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(790, 'Record updated On students id 105', '105', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(791, 'New Record inserted On students id 106', '106', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(792, 'New Record inserted On  student session id 108', '108', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(793, 'New Record inserted On users id 210', '210', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(794, 'New Record inserted On users id 211', '211', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(795, 'Record updated On students id 106', '106', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(796, 'New Record inserted On students id 107', '107', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(797, 'New Record inserted On  student session id 109', '109', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(798, 'New Record inserted On users id 212', '212', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(799, 'New Record inserted On users id 213', '213', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(800, 'Record updated On students id 107', '107', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(801, 'New Record inserted On students id 108', '108', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(802, 'New Record inserted On  student session id 110', '110', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(803, 'New Record inserted On users id 214', '214', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(804, 'New Record inserted On users id 215', '215', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(805, 'Record updated On students id 108', '108', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(806, 'New Record inserted On students id 109', '109', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(807, 'New Record inserted On  student session id 111', '111', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(808, 'New Record inserted On users id 216', '216', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(809, 'New Record inserted On users id 217', '217', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(810, 'Record updated On students id 109', '109', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(811, 'New Record inserted On students id 110', '110', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(812, 'New Record inserted On  student session id 112', '112', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(813, 'New Record inserted On users id 218', '218', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(814, 'New Record inserted On users id 219', '219', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(815, 'Record updated On students id 110', '110', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(816, 'New Record inserted On students id 111', '111', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(817, 'New Record inserted On  student session id 113', '113', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(818, 'New Record inserted On users id 220', '220', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(819, 'New Record inserted On users id 221', '221', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(820, 'Record updated On students id 111', '111', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(821, 'New Record inserted On students id 112', '112', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(822, 'New Record inserted On  student session id 114', '114', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(823, 'New Record inserted On users id 222', '222', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(824, 'New Record inserted On users id 223', '223', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(825, 'Record updated On students id 112', '112', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(826, 'New Record inserted On students id 113', '113', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(827, 'New Record inserted On  student session id 115', '115', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(828, 'New Record inserted On users id 224', '224', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(829, 'New Record inserted On users id 225', '225', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(830, 'Record updated On students id 113', '113', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:01', NULL),
(831, 'New Record inserted On students id 114', '114', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(832, 'New Record inserted On  student session id 116', '116', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(833, 'New Record inserted On users id 226', '226', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(834, 'New Record inserted On users id 227', '227', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(835, 'Record updated On students id 114', '114', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(836, 'New Record inserted On students id 115', '115', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(837, 'New Record inserted On  student session id 117', '117', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(838, 'New Record inserted On users id 228', '228', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(839, 'New Record inserted On users id 229', '229', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(840, 'Record updated On students id 115', '115', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(841, 'New Record inserted On students id 116', '116', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(842, 'New Record inserted On  student session id 118', '118', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(843, 'New Record inserted On users id 230', '230', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(844, 'New Record inserted On users id 231', '231', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(845, 'Record updated On students id 116', '116', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(846, 'New Record inserted On students id 117', '117', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(847, 'New Record inserted On  student session id 119', '119', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(848, 'New Record inserted On users id 232', '232', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(849, 'New Record inserted On users id 233', '233', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(850, 'Record updated On students id 117', '117', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 13:21:02', NULL),
(851, 'Record updated On  fee group id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:41:31', NULL),
(852, 'Record updated On  fee group id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:41:43', NULL),
(853, 'Record updated On  fee group id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:42:04', NULL),
(854, 'New Record inserted On  fee group id 4', '4', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:42:42', NULL),
(855, 'Record updated On  fee type id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:43:28', NULL),
(856, 'Record updated On  fee type id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:43:42', NULL),
(857, 'Record updated On  fee type id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:44:01', NULL),
(858, 'New Record inserted On  fee type id 5', '5', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:44:59', NULL),
(859, 'New Record inserted On  fee type id 6', '6', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:45:12', NULL),
(860, 'Record updated On  fee type id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:45:23', NULL),
(861, 'Record updated On  fee type id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:45:33', NULL),
(862, 'Record updated On  fee type id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:45:41', NULL),
(863, 'Record updated On  fee type id 5', '5', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:46:19', NULL),
(864, 'Record updated On  fee type id 6', '6', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:46:36', NULL),
(865, 'New Record inserted On  fee type id 7', '7', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:47:04', NULL),
(866, 'Record updated On  fee type id 4', '4', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:47:30', NULL),
(867, 'New Record inserted On  fee type id 8', '8', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:47:44', NULL),
(868, 'New Record inserted On  fee type id 9', '9', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:48:28', NULL),
(869, 'Record updated On  fee groups fee type id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:50:01', NULL),
(870, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 1', '1', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:50:01', NULL),
(871, 'New Record inserted On  fee groups feetype id 6', '6', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:50:26', NULL),
(872, 'New Record inserted On  fee groups feetype id 7', '7', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:51:18', NULL),
(873, 'Record updated On  fee groups fee type id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:01', NULL),
(874, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 2', '2', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:01', NULL),
(875, 'Record updated On  fee groups fee type id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:23', NULL),
(876, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 3', '3', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:23', NULL),
(877, 'Record updated On  fee groups fee type id 4', '4', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:40', NULL),
(878, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 4', '4', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:40', NULL),
(879, 'Record updated On  fee groups fee type id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:52', NULL),
(880, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 3', '3', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:52:52', NULL),
(881, 'Record updated On  fee groups fee type id 5', '5', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:53:20', NULL),
(882, 'Record deleted On Cumulative Fine fee_groups_feetype_id id 5', '5', 2, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:53:20', NULL),
(883, 'New Record inserted On  fee groups feetype id 8', '8', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:53:58', NULL),
(884, 'New Record inserted On  fee groups feetype id 9', '9', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 13:54:14', NULL),
(885, 'Record updated On  staff designation id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:08:20', NULL),
(886, 'Record updated On  staff designation id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:08:44', NULL),
(887, 'Record updated On  staff designation id 3', '3', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:09:04', NULL),
(888, 'New Record inserted On  staff designation id 4', '4', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:09:57', NULL),
(889, 'New Record inserted On  staff designation id 5', '5', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:10:27', NULL),
(890, 'New Record inserted On  staff designation id 6', '6', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:10:42', NULL),
(891, 'Record updated On staff id 8', '8', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:20:28', NULL),
(892, 'Record updated On staff id 8', '8', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:20:28', NULL),
(893, 'New Record inserted On sections id 3', '3', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:24:55', NULL),
(894, 'New Record inserted On subject groups id 4', '4', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:28:08', NULL),
(895, 'Record updated On classes id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:28:27', NULL),
(896, 'Record updated On classes id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:28:38', NULL),
(897, 'Record updated On classes id 2', '2', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:28:48', NULL),
(898, 'New Record inserted On subject groups id 5', '5', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:01', NULL),
(899, 'New Record inserted On subject groups id 6', '6', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:14', NULL),
(900, 'New Record inserted On subject groups id 7', '7', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:21', NULL),
(901, 'New Record inserted On subject groups id 8', '8', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:27', NULL),
(902, 'New Record inserted On subject groups id 9', '9', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:36', NULL),
(903, 'New Record inserted On subject groups id 10', '10', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:43', NULL),
(904, 'New Record inserted On subject groups id 11', '11', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:50', NULL),
(905, 'New Record inserted On subject groups id 12', '12', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:29:58', NULL),
(906, 'New Record inserted On subject groups id 13', '13', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:30:04', NULL),
(907, 'Record updated On  transport route id 1', '1', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:32:34', NULL),
(908, 'New Record inserted On transport route id 2', '2', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:32:51', NULL),
(909, 'New Record inserted On transport route id 3', '3', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:33:02', NULL),
(910, 'New Record inserted On transport route id 4', '4', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:33:11', NULL),
(911, 'New Record inserted On transport route id 5', '5', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:33:40', NULL),
(912, 'New Record inserted On transport route id 6', '6', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:34:11', NULL),
(913, 'New Record inserted On transport route id 7', '7', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:34:22', NULL),
(914, 'New Record inserted On transport route id 8', '8', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:34:31', NULL),
(915, 'New Record inserted On transport route id 9', '9', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:34:41', NULL),
(916, 'New Record inserted On transport route id 10', '10', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:34:51', NULL),
(917, 'New Record inserted On transport route id 11', '11', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:35:02', NULL),
(918, 'New Record inserted On transport route id 12', '12', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:35:13', NULL),
(919, 'New Record inserted On transport route id 13', '13', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:35:22', NULL),
(920, 'New Record inserted On students id 118', '118', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(921, 'New Record inserted On  student session id 120', '120', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(922, 'New Record inserted On users id 234', '234', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(923, 'New Record inserted On users id 235', '235', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(924, 'Record updated On students id 118', '118', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(925, 'New Record inserted On students id 119', '119', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(926, 'New Record inserted On  student session id 121', '121', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(927, 'New Record inserted On users id 236', '236', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(928, 'New Record inserted On users id 237', '237', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(929, 'Record updated On students id 119', '119', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(930, 'New Record inserted On students id 120', '120', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(931, 'New Record inserted On  student session id 122', '122', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(932, 'New Record inserted On users id 238', '238', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(933, 'New Record inserted On users id 239', '239', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(934, 'Record updated On students id 120', '120', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(935, 'New Record inserted On students id 121', '121', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(936, 'New Record inserted On  student session id 123', '123', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(937, 'New Record inserted On users id 240', '240', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(938, 'New Record inserted On users id 241', '241', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:23', NULL),
(939, 'Record updated On students id 121', '121', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(940, 'New Record inserted On students id 122', '122', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(941, 'New Record inserted On  student session id 124', '124', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(942, 'New Record inserted On users id 242', '242', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(943, 'New Record inserted On users id 243', '243', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(944, 'Record updated On students id 122', '122', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(945, 'New Record inserted On students id 123', '123', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(946, 'New Record inserted On  student session id 125', '125', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(947, 'New Record inserted On users id 244', '244', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(948, 'New Record inserted On users id 245', '245', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(949, 'Record updated On students id 123', '123', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(950, 'New Record inserted On students id 124', '124', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(951, 'New Record inserted On  student session id 126', '126', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(952, 'New Record inserted On users id 246', '246', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(953, 'New Record inserted On users id 247', '247', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(954, 'Record updated On students id 124', '124', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(955, 'New Record inserted On students id 125', '125', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(956, 'New Record inserted On  student session id 127', '127', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(957, 'New Record inserted On users id 248', '248', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(958, 'New Record inserted On users id 249', '249', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(959, 'Record updated On students id 125', '125', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(960, 'New Record inserted On students id 126', '126', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(961, 'New Record inserted On  student session id 128', '128', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(962, 'New Record inserted On users id 250', '250', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(963, 'New Record inserted On users id 251', '251', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(964, 'Record updated On students id 126', '126', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(965, 'New Record inserted On students id 127', '127', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(966, 'New Record inserted On  student session id 129', '129', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(967, 'New Record inserted On users id 252', '252', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(968, 'New Record inserted On users id 253', '253', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(969, 'Record updated On students id 127', '127', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(970, 'New Record inserted On students id 128', '128', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(971, 'New Record inserted On  student session id 130', '130', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(972, 'New Record inserted On users id 254', '254', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(973, 'New Record inserted On users id 255', '255', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(974, 'Record updated On students id 128', '128', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(975, 'New Record inserted On students id 129', '129', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(976, 'New Record inserted On  student session id 131', '131', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(977, 'New Record inserted On users id 256', '256', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(978, 'New Record inserted On users id 257', '257', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(979, 'Record updated On students id 129', '129', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(980, 'New Record inserted On students id 130', '130', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(981, 'New Record inserted On  student session id 132', '132', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(982, 'New Record inserted On users id 258', '258', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(983, 'New Record inserted On users id 259', '259', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(984, 'Record updated On students id 130', '130', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(985, 'New Record inserted On students id 131', '131', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(986, 'New Record inserted On  student session id 133', '133', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(987, 'New Record inserted On users id 260', '260', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(988, 'New Record inserted On users id 261', '261', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(989, 'Record updated On students id 131', '131', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(990, 'New Record inserted On students id 132', '132', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(991, 'New Record inserted On  student session id 134', '134', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(992, 'New Record inserted On users id 262', '262', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(993, 'New Record inserted On users id 263', '263', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(994, 'Record updated On students id 132', '132', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(995, 'New Record inserted On students id 133', '133', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(996, 'New Record inserted On  student session id 135', '135', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(997, 'New Record inserted On users id 264', '264', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(998, 'New Record inserted On users id 265', '265', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(999, 'Record updated On students id 133', '133', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1000, 'New Record inserted On students id 134', '134', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1001, 'New Record inserted On  student session id 136', '136', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1002, 'New Record inserted On users id 266', '266', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1003, 'New Record inserted On users id 267', '267', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1004, 'Record updated On students id 134', '134', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1005, 'New Record inserted On students id 135', '135', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1006, 'New Record inserted On  student session id 137', '137', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1007, 'New Record inserted On users id 268', '268', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1008, 'New Record inserted On users id 269', '269', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1009, 'Record updated On students id 135', '135', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1010, 'New Record inserted On students id 136', '136', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1011, 'New Record inserted On  student session id 138', '138', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1012, 'New Record inserted On users id 270', '270', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1013, 'New Record inserted On users id 271', '271', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1014, 'Record updated On students id 136', '136', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1015, 'New Record inserted On students id 137', '137', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1016, 'New Record inserted On  student session id 139', '139', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1017, 'New Record inserted On users id 272', '272', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1018, 'New Record inserted On users id 273', '273', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:24', NULL),
(1019, 'Record updated On students id 137', '137', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1020, 'New Record inserted On students id 138', '138', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1021, 'New Record inserted On  student session id 140', '140', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1022, 'New Record inserted On users id 274', '274', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1023, 'New Record inserted On users id 275', '275', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1024, 'Record updated On students id 138', '138', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1025, 'New Record inserted On students id 139', '139', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1026, 'New Record inserted On  student session id 141', '141', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1027, 'New Record inserted On users id 276', '276', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1028, 'New Record inserted On users id 277', '277', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1029, 'Record updated On students id 139', '139', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1030, 'New Record inserted On students id 140', '140', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1031, 'New Record inserted On  student session id 142', '142', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1032, 'New Record inserted On users id 278', '278', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1033, 'New Record inserted On users id 279', '279', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1034, 'Record updated On students id 140', '140', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1035, 'New Record inserted On students id 141', '141', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1036, 'New Record inserted On  student session id 143', '143', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1037, 'New Record inserted On users id 280', '280', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1038, 'New Record inserted On users id 281', '281', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1039, 'Record updated On students id 141', '141', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1040, 'New Record inserted On students id 142', '142', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1041, 'New Record inserted On  student session id 144', '144', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1042, 'New Record inserted On users id 282', '282', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1043, 'New Record inserted On users id 283', '283', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1044, 'Record updated On students id 142', '142', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1045, 'New Record inserted On students id 143', '143', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1046, 'New Record inserted On  student session id 145', '145', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1047, 'New Record inserted On users id 284', '284', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1048, 'New Record inserted On users id 285', '285', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1049, 'Record updated On students id 143', '143', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1050, 'New Record inserted On students id 144', '144', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1051, 'New Record inserted On  student session id 146', '146', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1052, 'New Record inserted On users id 286', '286', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1053, 'New Record inserted On users id 287', '287', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1054, 'Record updated On students id 144', '144', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1055, 'New Record inserted On students id 145', '145', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1056, 'New Record inserted On  student session id 147', '147', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1057, 'New Record inserted On users id 288', '288', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1058, 'New Record inserted On users id 289', '289', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1059, 'Record updated On students id 145', '145', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1060, 'New Record inserted On students id 146', '146', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1061, 'New Record inserted On  student session id 148', '148', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1062, 'New Record inserted On users id 290', '290', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1063, 'New Record inserted On users id 291', '291', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1064, 'Record updated On students id 146', '146', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1065, 'New Record inserted On students id 147', '147', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1066, 'New Record inserted On  student session id 149', '149', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1067, 'New Record inserted On users id 292', '292', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1068, 'New Record inserted On users id 293', '293', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1069, 'Record updated On students id 147', '147', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1070, 'New Record inserted On students id 148', '148', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1071, 'New Record inserted On  student session id 150', '150', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1072, 'New Record inserted On users id 294', '294', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1073, 'New Record inserted On users id 295', '295', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1074, 'Record updated On students id 148', '148', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1075, 'New Record inserted On students id 149', '149', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1076, 'New Record inserted On  student session id 151', '151', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1077, 'New Record inserted On users id 296', '296', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1078, 'New Record inserted On users id 297', '297', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1079, 'Record updated On students id 149', '149', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:42:25', NULL),
(1080, 'New Record inserted On vehicles id 1', '1', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 14:49:59', NULL),
(1081, 'New Record inserted On vehicle routes id 1', '1', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 14:50:11', NULL),
(1082, 'New Record inserted On  fee group id 5', '5', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:02:13', NULL),
(1083, 'New Record inserted On  fee groups feetype id 10', '10', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:02:30', NULL),
(1084, 'New Record inserted On  fee groups feetype id 11', '11', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:03:05', NULL),
(1085, 'New Record inserted On  fee groups feetype id 12', '12', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:04:01', NULL),
(1086, 'New Record inserted On  fee groups feetype id 13', '13', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:04:25', NULL),
(1087, 'New Record inserted On student apply leave id 1', '1', 0, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:18:33', NULL),
(1088, 'Record updated On  student apply leave id 1', '1', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:20:41', NULL),
(1089, 'New Record inserted On  questions id 5', '5', 8, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-06 15:24:24', NULL),
(1090, 'New Record inserted On  online exam id 7', '7', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:27:37', NULL),
(1091, 'New Record inserted On  onlineexam questions id 20', '20', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-06 15:27:49', NULL),
(1092, 'New Record inserted On  categories id 1', '1', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:21:51', NULL),
(1093, 'New Record inserted On  categories id 2', '2', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:22:03', NULL),
(1094, 'New Record inserted On  categories id 3', '3', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:22:10', NULL),
(1095, 'New Record inserted On  categories id 4', '4', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:22:29', NULL),
(1096, 'New Record inserted On  categories id 5', '5', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:23:12', NULL),
(1097, 'Record updated On  permission student id 19', '19', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:27:19', NULL),
(1098, 'Record updated On  permission student id 24', '24', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:27:41', NULL),
(1099, 'Record updated On  permission student id 23', '23', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:27:52', NULL),
(1100, 'New Record inserted On Alumni Event id 1', '1', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 04:59:44', NULL),
(1101, 'New Record inserted On students id 150', '150', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:01:31', NULL),
(1102, 'New Record inserted On  student session id 152', '152', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:01:31', NULL),
(1103, 'New Record inserted On users id 298', '298', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:01:31', NULL),
(1104, 'New Record inserted On users id 299', '299', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:01:31', NULL),
(1105, 'Record updated On students id 150', '150', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:01:31', NULL),
(1106, 'New Record inserted On students id 151', '151', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 05:10:06', NULL),
(1107, 'New Record inserted On  student session id 153', '153', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 05:10:06', NULL),
(1108, 'New Record inserted On users id 300', '300', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 05:10:06', NULL),
(1109, 'New Record inserted On users id 301', '301', 2, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 05:10:06', NULL),
(1110, 'Record updated On students id 151', '151', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 05:10:06', NULL),
(1111, 'Record deleted On student fees deposite id 14', '14', 1, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:39:17', NULL),
(1112, 'Record deleted On student applied discounts id 14 and subinvoice id1', '14', 1, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:39:17', NULL),
(1113, 'Record deleted On student fees deposite id 15', '15', 1, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:41:34', NULL),
(1114, 'Record deleted On student applied discounts id 15 and subinvoice id1', '15', 1, 'Delete', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:41:34', NULL),
(1115, 'New Record inserted On transport route id 1', '1', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:48:24', NULL),
(1116, 'New Record inserted On  fee type id 11', '11', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:50:48', NULL),
(1117, 'New Record inserted On  fee groups feetype id 15', '15', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:55:17', NULL),
(1118, 'New Record inserted On transport route id 1', '1', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 05:56:17', NULL),
(1119, 'New Record inserted On vehicle routes id 2', '2', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:00:26', NULL),
(1120, 'New Record inserted On vehicle routes id 3', '3', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:01:03', NULL),
(1121, 'Record updated On students id 151', '151', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 06:03:31', NULL),
(1122, 'Record updated On  student session id 153', '153', 2, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-07 06:03:31', NULL),
(1123, 'New Record inserted On school houses id 1', '1', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:17:50', NULL),
(1124, 'New Record inserted On school houses id 2', '2', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:18:00', NULL),
(1125, 'New Record inserted On school houses id 3', '3', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:18:05', NULL),
(1126, 'New Record inserted On school houses id 4', '4', 1, 'Insert', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:18:10', NULL),
(1127, 'Record updated On students id 151', '151', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:18:28', NULL),
(1128, 'Record updated On  student session id 153', '153', 1, 'Update', '157.50.89.69', 'Windows 10', 'Chrome 142.0.0.0', '2025-12-07 06:18:28', NULL),
(1129, 'Record updated On students id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-15 08:30:17', NULL),
(1130, 'Record updated On  student session id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-15 08:30:17', NULL),
(1131, 'Record updated On students id 2', '2', 2, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-15 08:30:18', NULL),
(1132, 'New Record inserted On messages id 35', '35', 2, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-16 12:01:44', NULL),
(1133, 'Record updated On settings id 1', '1', 1, 'Update', '49.42.177.239', 'Windows 10', 'Chrome 143.0.0.0', '2025-12-25 05:18:38', NULL),
(1134, 'New Record inserted On students id 152', '152', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2026-01-09 06:01:11', NULL),
(1135, 'New Record inserted On  student session id 154', '154', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2026-01-09 06:01:11', NULL),
(1136, 'New Record inserted On users id 302', '302', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2026-01-09 06:01:11', NULL),
(1137, 'New Record inserted On users id 303', '303', 1, 'Insert', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2026-01-09 06:01:11', NULL),
(1138, 'Record updated On students id 152', '152', 1, 'Update', '103.112.27.45', 'Windows 10', 'Chrome 143.0.0.0', '2026-01-09 06:01:11', NULL),
(1139, 'New Record inserted On students id 153', '153', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 07:22:04', NULL),
(1140, 'New Record inserted On  student session id 155', '155', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 07:22:04', NULL),
(1141, 'New Record inserted On users id 304', '304', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 07:22:04', NULL),
(1142, 'New Record inserted On users id 305', '305', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 07:22:04', NULL),
(1143, 'Record updated On students id 153', '153', 2, 'Update', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 07:22:04', NULL),
(1144, 'New Record inserted On students id 154', '154', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 09:21:39', NULL),
(1145, 'New Record inserted On  student session id 156', '156', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 09:21:40', NULL),
(1146, 'New Record inserted On users id 306', '306', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 09:21:40', NULL),
(1147, 'New Record inserted On users id 307', '307', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 09:21:40', NULL),
(1148, 'Record updated On students id 154', '154', 2, 'Update', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 09:21:40', NULL),
(1149, 'Record deleted On student fees deposite id 20', '20', 2, 'Delete', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 10:03:30', NULL),
(1150, 'Record deleted On student applied discounts id 20 and subinvoice id1', '20', 2, 'Delete', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-28 10:03:30', NULL),
(1151, 'New Record inserted On students id 155', '155', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:20:25', NULL),
(1152, 'New Record inserted On  student session id 157', '157', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:20:25', NULL),
(1153, 'New Record inserted On users id 308', '308', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:20:25', NULL),
(1154, 'New Record inserted On users id 309', '309', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:20:25', NULL),
(1155, 'Record updated On students id 155', '155', 2, 'Update', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:20:25', NULL),
(1156, 'New Record inserted On students id 156', '156', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:24:42', NULL),
(1157, 'New Record inserted On  student session id 158', '158', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:24:42', NULL),
(1158, 'New Record inserted On users id 310', '310', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:24:42', NULL),
(1159, 'New Record inserted On users id 311', '311', 2, 'Insert', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:24:42', NULL),
(1160, 'Record updated On students id 156', '156', 2, 'Update', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:24:42', NULL),
(1161, 'Record updated On students id 154', '154', 2, 'Update', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:39:08', NULL),
(1162, 'Record updated On  student session id 156', '156', 2, 'Update', '223.184.202.4', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-28 17:39:08', NULL),
(1163, 'New Record inserted On class teacher id 1', '1', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-29 05:46:40', NULL),
(1164, 'New Record inserted On class teacher id 2', '2', 2, 'Insert', '223.181.55.44', 'Windows 10', 'Firefox 147.0', '2026-01-29 05:46:40', NULL),
(1165, 'Record updated On staff id 9', '9', 2, 'Update', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-29 06:29:14', NULL),
(1166, 'New Record inserted On visitors purpose id 1', '1', 2, 'Insert', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-30 05:55:08', NULL),
(1167, 'New Record inserted On  visitors  id 1', '1', 2, 'Insert', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-30 05:55:34', NULL),
(1168, 'Record updated On  visitors id 1', '1', 2, 'Update', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-30 06:00:21', NULL),
(1169, 'New Record inserted On  Admission Enquiry  Postal Receive id 1', '1', 2, 'Insert', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-30 07:19:04', NULL),
(1170, 'New Record inserted On  categories id 6', '6', 2, 'Insert', '115.42.33.105', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-30 09:00:45', NULL),
(1171, 'New Record inserted On students id 157', '157', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:10:58', NULL),
(1172, 'New Record inserted On  student session id 159', '159', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:10:58', NULL),
(1173, 'New Record inserted On users id 312', '312', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:10:58', NULL),
(1174, 'New Record inserted On users id 313', '313', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:10:58', NULL),
(1175, 'Record updated On students id 157', '157', 2, 'Update', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:10:58', NULL),
(1176, 'New Record inserted On  fee groups feetype id 16', '16', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:15:48', NULL),
(1177, 'New Record inserted On  fee group id 7', '7', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:16:19', NULL),
(1178, 'New Record inserted On  fee type id 12', '12', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:16:58', NULL),
(1179, 'New Record inserted On  categories id 7', '7', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:21:12', NULL),
(1180, 'Record updated On  sms template id 6', '6', 2, 'Update', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:30:30', NULL),
(1181, 'New Record inserted On class teacher id 3', '3', 2, 'Insert', '117.199.84.238', 'Windows 10', 'Chrome 144.0.0.0', '2026-01-31 08:36:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mark_divisions`
--

CREATE TABLE `mark_divisions` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `percentage_from` float(10,2) DEFAULT NULL,
  `percentage_to` float(10,2) DEFAULT NULL,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) DEFAULT NULL,
  `email_template_id` int DEFAULT NULL,
  `sms_template_id` int DEFAULT NULL,
  `send_through` varchar(20) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int NOT NULL DEFAULT '0',
  `is_schedule` int NOT NULL,
  `sent` int DEFAULT NULL,
  `schedule_date_time` datetime DEFAULT NULL,
  `group_list` text,
  `user_list` text,
  `send_to` varchar(255) DEFAULT NULL,
  `schedule_class` int DEFAULT NULL,
  `schedule_section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `template_id`, `email_template_id`, `sms_template_id`, `send_through`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `is_schedule`, `sent`, `schedule_date_time`, `group_list`, `user_list`, `send_to`, `schedule_class`, `schedule_section`, `created_at`, `updated_at`) VALUES
(1, 'Student Absent without notice (Not today)', '1707176276806251085', NULL, 1, '[\"sms\"]', 'Dear Parents, Your ward {#var#} was absent on {#var#} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {#var#} Powered By EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"4\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"8\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-11-26 05:55:28', '2025-11-26 05:55:28'),
(2, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student_guardian\",\"user_id\":\"\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":null,\"role\":\"student_guardian\"},{\"category\":\"student_guardian\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student_guardian\"},{\"category\":\"student_guardian\",\"user_id\":\"4\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student_guardian\"}]', NULL, NULL, NULL, '2025-12-01 09:02:06', '2025-12-01 09:02:07'),
(3, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"parent\"]', '[{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bima\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"Smruti ranjan rout\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bimala\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"smruti daddy\",\"role\":\"parent\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-01 09:02:47', '2025-12-01 09:02:53'),
(4, 'School start date', '', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-01 09:06:11', '2025-12-01 09:06:11'),
(5, 'Student Absent without notice', '', NULL, 2, '[\"sms\"]', 'Dear Parent, Your ward {{name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {{school}} Powered By EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-01 13:18:58', '2025-12-01 13:18:59'),
(6, 'School start date', '', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-01 13:19:22', '2025-12-01 13:19:22'),
(7, 'School start date', '', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 03:14:05', '2025-12-02 03:14:05'),
(8, 'Student Absent without notice', '', NULL, 2, '[\"sms\"]', 'Dear Parent, Your ward {{name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {{school}} Powered By EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"9\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 05:18:59', '2025-12-02 05:18:59'),
(9, 'Bus will come late', '1707176260265487083', NULL, 4, '[\"sms\"]', 'Dear Parents, Kindly note that on OR9494 van will come late. From RERE TEET. Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"shepali\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Satish\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Bimi\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"puru\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smita rani\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smruti\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Puru\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Sm\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"},{\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 06:03:34', '2025-12-02 06:03:35'),
(10, 'Holiday', '1707176285957637552', NULL, 10, '[\"sms\"]', 'Dear Parents, School would remain closed on13-11-2025 on account of public holiday. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\",\"parent\"]', '[{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"shepali\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Satish\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Bimi\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"puru\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smita rani\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smruti\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Puru\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Sm\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"},{\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"},{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"Smruti ranjan rout\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bimala\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"smruti daddy\",\"role\":\"parent\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-02 07:05:49', '2025-12-02 07:05:57'),
(11, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:12:15', '2025-12-02 16:12:16'),
(12, 'Student Absent without notice', '1707176285758358564', NULL, 2, '[\"sms\"]', 'Dear Parent, Your ward {{name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {{school}} Powered By EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"shepali\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Satish\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Bimi\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"puru\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smita rani\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smruti\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Puru\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Sm\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"},{\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:14:13', '2025-12-02 16:14:14'),
(13, 'Bus will come late', '1707176260265487083', NULL, 4, '[\"sms\"]', 'Dear Parents, Kindly note that on {{vehicle}} van will come late. From {{startplace}} {{endplace}}. Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:19:18', '2025-12-02 16:19:18'),
(14, 'Reshedule of Exam', '1707176277118642175', NULL, 3, '[\"sms\"]', 'Rescheduled from {{startdate}} TO {{enddate}}. Kindly clear the dues before {{var}} . Please ignore if already paid. From {{school}} Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student_guardian\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student_guardian\"}]', NULL, NULL, NULL, '2025-12-02 16:40:36', '2025-12-02 16:40:36'),
(15, 'Reshedule of Exam', '1707176277118642175', NULL, 3, '[\"sms\"]', 'Rescheduled from {{startdate}} TO {{enddate}}. Kindly clear the dues before {#var#} . Please ignore if already paid. From {{school}} Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:41:28', '2025-12-02 16:41:29'),
(16, 'Student Absent with notice', '1707176285808041408', NULL, 9, '[\"sms\"]', 'Dear Parents, This is to inform you that modi was absent today. Have a pleasant day From edu Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:42:35', '2025-12-02 16:42:36'),
(17, 'Celebration Email Template', '1707176286176583542', NULL, 11, '[\"sms\"]', 'Dear bhabani, We are going to celebrate christmas on {#var#} at our school premises. So, we welcome your children(s) for the event. From {#var#} Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"8917288085\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"11\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-02 16:45:07', '2025-12-02 16:45:08'),
(18, 'Bus will come late', '1707176260265487083', NULL, 4, '[\"sms\"]', 'Dear Parents, Kindly note that on OR02ER4545 van will come late. From BBSR CUTTACK. Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student_guardian\",\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"8917288085\",\"app_key\":\"\",\"role\":\"student_guardian\"},{\"category\":\"student_guardian\",\"user_id\":\"4\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student_guardian\"},{\"category\":\"student_guardian\",\"user_id\":\"8\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"app_key\":\"\",\"role\":\"student_guardian\"}]', NULL, NULL, NULL, '2025-12-03 04:33:23', '2025-12-03 04:33:25'),
(19, 'Fee', '1707176258615230217', NULL, 6, '[\"sms\"]', 'Please find your updated fees details. Total fee: {#var#}. Fee paid:{#var#}. Fee Due: {#var#}. Have a nice day. Powered by EduFeez.', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"parent\"]', '[{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"9989789571\",\"app_key\":null,\"name\":\"Roshan Kumar\",\"role\":\"parent\"},{\"user_id\":\"13\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Ayswari Sahoo\",\"role\":\"parent\"},{\"user_id\":\"12\",\"email\":\"\",\"mobileno\":\"9849113199\",\"app_key\":null,\"name\":\"Sanjay Das\",\"role\":\"parent\"},{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"Smruti ranjan rout\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bimala\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"smruti daddy\",\"role\":\"parent\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-03 08:00:04', '2025-12-03 08:00:11'),
(20, 'Holiday', '1707176285957637552', NULL, 10, '[\"sms\"]', 'Dear {{var}}, {{var}} would remain closed on {{var}} on account of public holiday. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"parent\"]', '[{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"9989789571\",\"app_key\":null,\"name\":\"Roshan Kumar\",\"role\":\"parent\"},{\"user_id\":\"13\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Ayswari Sahoo\",\"role\":\"parent\"},{\"user_id\":\"12\",\"email\":\"\",\"mobileno\":\"9849113199\",\"app_key\":null,\"name\":\"Sanjay Das\",\"role\":\"parent\"},{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"Smruti ranjan rout\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bimala\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"smruti daddy\",\"role\":\"parent\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-03 08:00:46', '2025-12-03 08:00:54'),
(21, 'Half Day', '1707176292669624348', NULL, 13, '[\"sms\"]', 'Dear Parents, HALF DAY SCHOOL will start from {{var}}. School Timing will be {{var}} to {{var}}. From {{var}}. Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Binayak\",\"role\":\"student\"},{\"user_id\":\"13\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Jitprabha Sahoo\",\"role\":\"student\"},{\"user_id\":\"12\",\"email\":\"\",\"mobileno\":\"9849113199\",\"app_key\":null,\"name\":\"Sangram\",\"role\":\"student\"},{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"shepali\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"name\":\"Satish\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Bimi\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"puru\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smita rani\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smruti\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Puru\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Sm\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"},{\"user_id\":\"1\",\"email\":\"smrutiranjan142@gmail.com\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-03 08:01:16', '2025-12-03 08:01:18'),
(22, 'Half Day', '1707176292669624348', NULL, 13, '[\"sms\"]', 'Dear Parents, HALF DAY SCHOOL will start from {{var}}. School Timing will be {{var}} to {{var}}. From {{var}}. Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"parent\"]', '[{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"9989789571\",\"app_key\":null,\"name\":\"Roshan Kumar\",\"role\":\"parent\"},{\"user_id\":\"13\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"name\":\"Ayswari Sahoo\",\"role\":\"parent\"},{\"user_id\":\"12\",\"email\":\"\",\"mobileno\":\"9849113199\",\"app_key\":null,\"name\":\"Sanjay Das\",\"role\":\"parent\"},{\"user_id\":\"11\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"Smruti ranjan rout\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"name\":\"P\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"name\":\"Bimala\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"smruti daddy\",\"role\":\"parent\"},{\"user_id\":\"1\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"name\":\"sarat ku rout\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-03 08:01:52', '2025-12-03 08:02:00'),
(23, 'Student Absent without notice', '1707176285758358564', NULL, 2, '[\"sms\"]', 'Dear Parent, Your ward Jaivir was absent on 04-12-2024 without PRIOR NOTICE. Please send your ward with a requisition letter. Regards starpreschool Powered By EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"parent\",\"user_id\":\"19\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-04 14:35:00', '2025-12-04 14:35:01'),
(24, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be 04-12-2025. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"name\":\"Jaivir\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Raj\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"EFGH\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Binayak\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"name\":\"Satish\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Bimi\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"puru\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smita rani\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"smruti\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Puru\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Sm\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"name\":\"Smruti Ranjan\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-04 16:30:15', '2025-12-04 16:30:16'),
(25, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be 05-12-2025. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"4\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"},{\"category\":\"student\",\"user_id\":\"8\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-04 16:31:56', '2025-12-04 16:31:56'),
(26, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be {{DATE }}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"8\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-05 16:15:51', '2025-12-05 16:15:52'),
(27, 'Student Absent with notice', '1707176285808041408', NULL, 9, '[\"sms\"]', 'Dear Parents, This is to inform you that {{STUDENTNAME}} was absent today. Have a pleasant day From {{DATE}} Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"8917288085\",\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-05 20:43:29', '2025-12-05 20:43:30'),
(28, 'Bus will come late', '1707176260265487083', NULL, 4, '[\"sms\"]', 'Dear Parents, Kindly note that on {{VEHICLE}} van will come late. From {{STARTDATE}} 24-12-2025. Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-05 20:47:19', '2025-12-05 20:47:21'),
(29, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be 23-12-2025. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\",\"parent\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"},{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9849333996\",\"app_key\":null,\"PARENTNAME\":\"Satis kumar\",\"STUDENTNAME\":\"Jaivir\",\"role\":\"parent\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"7684944450\",\"app_key\":null,\"PARENTNAME\":\"Kumar\",\"STUDENTNAME\":\"Raj\",\"role\":\"parent\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"7978520815\",\"app_key\":null,\"PARENTNAME\":\"LMNO\",\"STUDENTNAME\":\"EFGH\",\"role\":\"parent\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"9989789571\",\"app_key\":null,\"PARENTNAME\":\"Roshan Kumar\",\"STUDENTNAME\":\"Binayak\",\"role\":\"parent\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9177333996\",\"app_key\":null,\"PARENTNAME\":\"Smruti\",\"STUDENTNAME\":\"Satish\",\"role\":\"parent\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"9876543212\",\"app_key\":null,\"PARENTNAME\":\"sarat ku rout\",\"STUDENTNAME\":\"Bimi\",\"role\":\"parent\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"PARENTNAME\":\"P\",\"STUDENTNAME\":\"puru\",\"role\":\"parent\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"PARENTNAME\":\"P\",\"STUDENTNAME\":\"Smruti\",\"role\":\"parent\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"PARENTNAME\":\"Smruti ranjan rout\",\"STUDENTNAME\":\"smita rani\",\"role\":\"parent\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"6371762721\",\"app_key\":null,\"PARENTNAME\":\"sarat ku rout\",\"STUDENTNAME\":\"smruti\",\"role\":\"parent\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"9861601016\",\"app_key\":null,\"PARENTNAME\":\"P\",\"STUDENTNAME\":\"Puru\",\"role\":\"parent\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"8847836787\",\"app_key\":null,\"PARENTNAME\":\"Bimala\",\"STUDENTNAME\":\"Sm\",\"role\":\"parent\"},{\"user_id\":\"2\",\"email\":\"\",\"mobileno\":\"8917288085\",\"app_key\":null,\"PARENTNAME\":\"smruti daddy\",\"STUDENTNAME\":\"Smruti Ranjan\",\"role\":\"parent\"}]', NULL, NULL, NULL, '2025-12-05 20:48:50', '2025-12-05 20:48:58'),
(30, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be 24th Dec. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student\",\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"8917288085\",\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"app_key\":\"\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-05 20:49:42', '2025-12-05 20:49:42'),
(31, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be 25th-dec. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-06 01:34:06', '2025-12-06 01:34:07'),
(32, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be {{DATE }}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-06 01:37:32', '2025-12-06 01:37:33'),
(33, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be {{DATE }}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-06 01:39:37', '2025-12-06 01:39:39'),
(34, 'Holiday', '1707176285957637552', NULL, 10, '[\"sms\"]', 'Dear {{PARENTNAME}}, preschool would remain closed on 25th dec on account of public holiday. Have a nice day Powered by EduFeez', '0', '1', '1', '0', 0, 0, NULL, NULL, '[\"student\"]', '[{\"user_id\":\"19\",\"email\":\"\",\"mobileno\":\"9000539333\",\"app_key\":null,\"STUDENTNAME\":\"Jaivir\",\"PARENTNAME\":\"Satis kumar\",\"role\":\"student\"},{\"user_id\":\"17\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Raj\",\"PARENTNAME\":\"Kumar\",\"role\":\"student\"},{\"user_id\":\"16\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"EFGH\",\"PARENTNAME\":\"LMNO\",\"role\":\"student\"},{\"user_id\":\"14\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Binayak\",\"PARENTNAME\":\"Roshan Kumar\",\"role\":\"student\"},{\"user_id\":\"10\",\"email\":\"\",\"mobileno\":\"9849333998\",\"app_key\":null,\"STUDENTNAME\":\"Satish\",\"PARENTNAME\":\"Smruti\",\"role\":\"student\"},{\"user_id\":\"9\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Bimi\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"8\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"7\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"6\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smita rani\",\"PARENTNAME\":\"Smruti ranjan rout\",\"role\":\"student\"},{\"user_id\":\"5\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"smruti\",\"PARENTNAME\":\"sarat ku rout\",\"role\":\"student\"},{\"user_id\":\"4\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"role\":\"student\"},{\"user_id\":\"3\",\"email\":\"\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Sm\",\"PARENTNAME\":\"Bimala\",\"role\":\"student\"},{\"user_id\":\"2\",\"email\":\"smrutiranjan4142@gmail.com\",\"mobileno\":\"\",\"app_key\":null,\"STUDENTNAME\":\"Smruti Ranjan\",\"PARENTNAME\":\"smruti daddy\",\"role\":\"student\"}]', NULL, NULL, NULL, '2025-12-06 02:48:54', '2025-12-06 02:48:55'),
(35, 'School start date', '1707176285549270675', NULL, 1, '[\"sms\"]', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be {{DATE }}. Please make a note of it. Have a nice day Powered by EduFeez', '0', '1', '0', '1', 0, 0, NULL, NULL, 'null', '[{\"category\":\"student_guardian\",\"user_id\":\"4\",\"email\":\"\",\"guardianEmail\":\"\",\"mobileno\":\"9861601016\",\"STUDENTNAME\":\"Puru\",\"PARENTNAME\":\"P\",\"app_key\":\"\",\"role\":\"student_guardian\"}]', NULL, NULL, NULL, '2025-12-16 12:01:43', '2025-12-16 12:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int NOT NULL,
  `send_notification_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notification_roles`
--

INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 0, '2025-12-02 07:43:43', '2025-12-02 07:43:43'),
(2, 1, 1, 0, '2025-12-02 07:43:43', '2025-12-02 07:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int NOT NULL DEFAULT '0',
  `display_notification` int NOT NULL DEFAULT '0',
  `display_sms` int NOT NULL DEFAULT '1',
  `is_student_recipient` int DEFAULT NULL,
  `is_guardian_recipient` int DEFAULT NULL,
  `is_staff_recipient` int DEFAULT NULL,
  `display_student_recipient` int DEFAULT NULL,
  `display_guardian_recipient` int DEFAULT NULL,
  `display_staff_recipient` int DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `notification_order` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `is_student_recipient`, `is_guardian_recipient`, `is_staff_recipient`, `display_student_recipient`, `display_guardian_recipient`, `display_staff_recipient`, `subject`, `template_id`, `template`, `variables`, `notification_order`, `created_at`, `updated_at`) VALUES
(1, 'student_admission', '1', '0', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Admission', '', 'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\ndetail\r\n contact\r\n System\r\n Admin\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(2, 'exam_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(3, 'fee_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(4, 'student_absent_attendence', '0', '1', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Absent Attendence', '1707176285758358564', 'Dear Parent, Your ward {{student_name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards edu Powered By EduFeez', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}} {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', NULL, '2022-12-28 09:52:24', '2025-11-26 16:01:45'),
(6, 'homework', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} ', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(7, 'fees_reminder', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(8, 'forgot_password', '1', '0', 0, 0, 0, 1, 1, 1, 1, 1, 1, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:08:56'),
(9, 'online_examination_publish_exam', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(10, 'online_examination_publish_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(11, 'online_admission_form_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(12, 'online_admission_fees_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:30:59'),
(13, 'student_login_credential', '1', '0', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Login Credential', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} admission No: {{admission_no}}', '{{url}} {{display_name}} {{username}} {{password}} {{admission_no}}', NULL, '2022-08-06 05:34:41', '2025-02-26 06:30:11'),
(14, 'staff_login_credential', '1', '0', 0, 0, 1, 0, 0, 1, NULL, NULL, 1, 'Staff Login Credential', '', 'Hello {{first_name}} {{last_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} Employee ID: {{employee_id}}', '{{url}} {{first_name}} {{last_name}} {{username}} {{password}} {{employee_id}}', NULL, '2021-12-23 11:59:13', '2025-02-26 06:30:14'),
(15, 'fee_processing', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee processing', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{email}} {{contact_no}}\r\n\r\n{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} transaction_id :{{transaction_id}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} {{transaction_id}} {{fee_amount}}', NULL, '2021-12-22 10:15:42', '2025-02-26 06:30:42'),
(16, 'online_admission_fees_processing', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Processing', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has processing on date {{date}}. Your Reference number is {{reference_no}} and your transaction id {{transaction_id}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}} {{transaction_id}}', NULL, '2022-08-06 11:09:47', '2025-02-26 06:30:40'),
(17, 'student_apply_leave', '1', '0', 0, 0, 1, 0, 1, 1, NULL, 1, 1, 'Student Apply Leave ( {{student_name}} - {{admission_no}} )', '', 'My Name is {{student_name}} Class {{class}} section {{section}}. I have to apply leave on {{apply_date}}and from {{from_date}} to {{to_date}}. {{message}} please provide.', '{{message}} {{apply_date}} {{from_date}} {{to_date}} {{student_name}} {{class}} {{section}}', NULL, '2022-03-12 11:58:37', '2025-02-26 06:30:24'),
(18, 'email_pdf_exam_marksheet', '1', '0', 0, 0, 0, 1, 1, 0, 1, 1, NULL, 'Email PDF Exam Marksheet ( {{student_name}} - {{admission_no}} )', '', 'Dear {{student_name}} ({{admission_no}}) {{class}} Section {{section}}. We have mailed you the marksheet of Exam {{exam}} Roll no.{{roll_no}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}} {{exam}} {{admit_card_roll_no}} ', NULL, '2022-03-12 12:24:42', '2025-02-13 10:08:56'),
(19, 'homework_evaluation', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework Evaluation', '', 'Homework Evaluation\r\nHomework Assign Date:  {{homework_date}}  \r\nLast Submit Date: {{submit_date}}\r\nStudent Name: {{student_name}} .\r\nAdmission No {{admission_no}}\r\n{{class}}\r\nsection: {{section}}\r\nsubject : {{subject}} \r\nMarks: {{marks}}/{{max_marks}}\r\nDate:{{evaluation_date}}\r\nThank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} {{max_marks}} {{marks}} {{evaluation_date}}', 120, '2025-01-15 08:00:34', '2025-02-26 06:30:36'),
(20, 'student_present_attendence', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Present Attendence', '', 'Present Notice :{{student_name}} {{admission_no}} was present on date {{date}} in in_time {{in_time}} period subject-{{subject_name}}, subject_code - {{subject_code}}, subject_type-{{subject_type}}, period_time_from-  {{period_time_from}}, period_time_to-  {{period_time_to}}, mobile no - {{mobileno}}, email -  {{email}}, father name -  {{father_name}}, father phone - {{father_phone}}, father occupation -  {{father_occupation}}, mother name -  {{mother_name}}, mother phone - {{mother_phone}}, guardian name -  {{guardian_name}}, guardian phone -  {{guardian_phone}}, guardian occupation - {{guardian_occupation}}, guardian email - {{guardian_email}}', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{in_time}}  ({{admission_no}}) {{period_time_from}} {{period_time_to}} {{subject_name}} {{subject_code}} {{subject_type}}', 15, '2025-01-13 05:55:46', '2025-02-26 06:33:37'),
(21, 'staff_present_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Present Attendence', '', 'Present Notice: Staff Name {{staff_name}} ({{employee_id}}) is Present on Date : {{date}} at Time : {{in_time}}\r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{in_time}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 190, '2025-02-07 11:43:28', '2025-02-13 10:40:00'),
(22, 'staff_absent_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Absent Attendence', '', 'Absent Notice: Staff Name {{staff_name}} ({{employee_id}}) is Absent on Date : {{date}} \r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 200, '2025-02-07 11:43:28', '2025-02-13 10:40:00'),
(23, 'half_day', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Half Day', '1707176292669624348', 'Dear Parents, HALF DAY SCHOOL will start from {{date}}. School Timing will be {{starttime}} to {{endtime}}. From {{school}}. Powered by EduFeez', '{{date}} {{starttime}} {{endtime}} {{school}}\r\n', 200, '2025-02-07 11:43:28', '2025-11-29 15:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting_bc`
--

CREATE TABLE `notification_setting_bc` (
  `id` int NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int NOT NULL DEFAULT '0',
  `display_notification` int NOT NULL DEFAULT '0',
  `display_sms` int NOT NULL DEFAULT '1',
  `is_student_recipient` int DEFAULT NULL,
  `is_guardian_recipient` int DEFAULT NULL,
  `is_staff_recipient` int DEFAULT NULL,
  `display_student_recipient` int DEFAULT NULL,
  `display_guardian_recipient` int DEFAULT NULL,
  `display_staff_recipient` int DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `notification_order` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notification_setting_bc`
--

INSERT INTO `notification_setting_bc` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `is_student_recipient`, `is_guardian_recipient`, `is_staff_recipient`, `display_student_recipient`, `display_guardian_recipient`, `display_staff_recipient`, `subject`, `template_id`, `template`, `variables`, `notification_order`, `created_at`, `updated_at`) VALUES
(1, 'student_admission', '0', '1', 0, 0, 1, 0, 1, 0, 1, 1, NULL, 'Student Admission', '1707176191446302454', 'Welcome to EDU. Your child {{student_name}} has been successfully registered on EduFeez. 1st Edu OS platform in India. Team EduFeez', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', NULL, '2022-12-28 09:52:24', '2025-11-29 15:29:42'),
(2, 'exam_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(3, 'fee_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(4, 'student_absent_attendence', '0', '1', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Absent Attendence', '1707176285758358564', 'Dear Parent, Your ward {{student_name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards edu Powered By EduFeez', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}} {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', NULL, '2022-12-28 09:52:24', '2025-11-26 16:38:23'),
(6, 'homework', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} ', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(7, 'fees_reminder', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(8, 'forgot_password', '1', '0', 0, 0, 0, 1, 1, 1, 1, 1, 1, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:08:56'),
(9, 'online_examination_publish_exam', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(10, 'online_examination_publish_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(11, 'online_admission_form_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(12, 'online_admission_fees_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:30:59'),
(13, 'student_login_credential', '1', '0', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Login Credential', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} admission No: {{admission_no}}', '{{url}} {{display_name}} {{username}} {{password}} {{admission_no}}', NULL, '2022-08-06 05:34:41', '2025-02-26 06:30:11'),
(14, 'staff_login_credential', '1', '0', 0, 0, 1, 0, 0, 1, NULL, NULL, 1, 'Staff Login Credential', '', 'Hello {{first_name}} {{last_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} Employee ID: {{employee_id}}', '{{url}} {{first_name}} {{last_name}} {{username}} {{password}} {{employee_id}}', NULL, '2021-12-23 11:59:13', '2025-02-26 06:30:14'),
(15, 'fee_processing', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee processing', '1707176260087911340', 'Dear Parents, Thanks for making the payment for your ward {{class}}. Payment of {{fee_amount}} with payment no. {{transaction_id}} has been received. Total Fee for {{fee_amount}} is {{fee_amount}} and is now cleared in our records. From {{student_name}}. Powered by EduFeez', '{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} {{transaction_id}} {{fee_amount}}', NULL, '2021-12-22 10:15:42', '2025-11-29 15:34:03'),
(16, 'online_admission_fees_processing', '0', '1', 0, 1, 1, 0, 1, 0, 1, 1, NULL, 'Online Admission Fees Processing', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has processing on date {{date}}. Your Reference number is {{reference_no}} and your transaction id {{transaction_id}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}} {{transaction_id}}', NULL, '2022-08-06 11:09:47', '2025-11-29 15:31:47'),
(17, 'student_apply_leave', '1', '0', 0, 0, 1, 0, 1, 1, NULL, 1, 1, 'Student Apply Leave ( {{student_name}} - {{admission_no}} )', '', 'My Name is {{student_name}} Class {{class}} section {{section}}. I have to apply leave on {{apply_date}}and from {{from_date}} to {{to_date}}. {{message}} please provide.', '{{message}} {{apply_date}} {{from_date}} {{to_date}} {{student_name}} {{class}} {{section}}', NULL, '2022-03-12 11:58:37', '2025-02-26 06:30:24'),
(18, 'email_pdf_exam_marksheet', '1', '0', 0, 0, 0, 1, 1, 0, 1, 1, NULL, 'Email PDF Exam Marksheet ( {{student_name}} - {{admission_no}} )', '', 'Dear {{student_name}} ({{admission_no}}) {{class}} Section {{section}}. We have mailed you the marksheet of Exam {{exam}} Roll no.{{roll_no}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}} {{exam}} {{admit_card_roll_no}} ', NULL, '2022-03-12 12:24:42', '2025-02-13 10:08:56'),
(19, 'homework_evaluation', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework Evaluation', '', 'Homework Evaluation\r\nHomework Assign Date:  {{homework_date}}  \r\nLast Submit Date: {{submit_date}}\r\nStudent Name: {{student_name}} .\r\nAdmission No {{admission_no}}\r\n{{class}}\r\nsection: {{section}}\r\nsubject : {{subject}} \r\nMarks: {{marks}}/{{max_marks}}\r\nDate:{{evaluation_date}}\r\nThank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} {{max_marks}} {{marks}} {{evaluation_date}}', 120, '2025-01-15 08:00:34', '2025-02-26 06:30:36'),
(20, 'student_present_attendence', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Present Attendence', '', 'Present Notice :{{student_name}} {{admission_no}} was present on date {{date}} in in_time {{in_time}} period subject-{{subject_name}}, subject_code - {{subject_code}}, subject_type-{{subject_type}}, period_time_from-  {{period_time_from}}, period_time_to-  {{period_time_to}}, mobile no - {{mobileno}}, email -  {{email}}, father name -  {{father_name}}, father phone - {{father_phone}}, father occupation -  {{father_occupation}}, mother name -  {{mother_name}}, mother phone - {{mother_phone}}, guardian name -  {{guardian_name}}, guardian phone -  {{guardian_phone}}, guardian occupation - {{guardian_occupation}}, guardian email - {{guardian_email}}', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{in_time}}  ({{admission_no}}) {{period_time_from}} {{period_time_to}} {{subject_name}} {{subject_code}} {{subject_type}}', 15, '2025-01-13 05:55:46', '2025-02-26 06:33:37'),
(21, 'staff_present_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Present Attendence', '', 'Present Notice: Staff Name {{staff_name}} ({{employee_id}}) is Present on Date : {{date}} at Time : {{in_time}}\r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{in_time}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 190, '2025-02-07 11:43:28', '2025-02-13 10:40:00'),
(22, 'staff_absent_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Absent Attendence', '', 'Absent Notice: Staff Name {{staff_name}} ({{employee_id}}) is Absent on Date : {{date}} \r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 200, '2025-02-07 11:43:28', '2025-02-13 10:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `offline_fees_payments`
--

CREATE TABLE `offline_fees_payments` (
  `id` int NOT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `student_session_id` int DEFAULT NULL,
  `student_fees_master_id` int DEFAULT NULL,
  `fee_groups_feetype_id` int DEFAULT NULL,
  `student_transport_fee_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `bank_from` varchar(200) DEFAULT NULL,
  `bank_account_transferred` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `attachment` text,
  `reply` text,
  `approved_by` int DEFAULT NULL,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

CREATE TABLE `onlineexam` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `exam` text,
  `attempt` int NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int NOT NULL DEFAULT '0',
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT '0',
  `description` text,
  `publish_result` int NOT NULL DEFAULT '0',
  `answer_word_count` int NOT NULL DEFAULT '-1',
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int NOT NULL DEFAULT '0',
  `is_neg_marking` int NOT NULL DEFAULT '0',
  `is_random_question` int NOT NULL DEFAULT '0',
  `is_rank_generated` int NOT NULL DEFAULT '0',
  `publish_exam_notification` int NOT NULL,
  `publish_result_notification` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `onlineexam`
--

INSERT INTO `onlineexam` (`id`, `session_id`, `exam`, `attempt`, `exam_from`, `exam_to`, `is_quiz`, `auto_publish_date`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `publish_result`, `answer_word_count`, `is_active`, `is_marks_display`, `is_neg_marking`, `is_random_question`, `is_rank_generated`, `publish_exam_notification`, `publish_result_notification`, `created_at`, `updated_at`) VALUES
(1, 20, 'Math', 4, '2025-11-25 14:56:00', '2025-11-26 14:56:00', 1, NULL, NULL, NULL, '01:00:00', 70, 'math Q', 0, -1, '1', 1, 0, 1, 0, 1, 0, '2025-11-25 09:27:14', '2025-11-26 04:31:41'),
(2, 20, 'math-3', 1, '2025-11-25 12:31:00', '2025-11-27 12:32:00', 0, NULL, NULL, NULL, '08:00:00', 30, 'go ahead', 0, -1, '1', 0, 0, 1, 0, 1, 0, '2025-11-26 07:02:37', '2025-11-26 07:04:36'),
(3, 23, 'unit test', 2, '2025-12-06 09:28:00', '2025-12-07 09:28:00', 0, '2025-12-08 09:28:00', NULL, NULL, '02:00:00', 90, 'ok', 1, -1, '1', 1, 1, 1, 0, 0, 0, '2025-12-06 03:59:32', '2025-12-06 03:59:32'),
(4, 20, 'unit test', 1, '2025-12-06 09:36:00', '2025-12-08 09:36:00', 1, NULL, NULL, NULL, '04:00:00', 90, 'ok', 0, -1, '1', 0, 0, 0, 0, 1, 0, '2025-12-06 04:06:25', '2025-12-06 04:25:53'),
(5, 20, 'Second half test', 1, '2025-12-04 17:49:00', '2025-12-06 21:49:00', 1, NULL, NULL, NULL, '04:00:00', 30, 'Ok', 0, -1, '1', 1, 1, 1, 0, 1, 1, '2025-12-06 09:20:00', '2025-12-06 12:52:39'),
(6, 20, 'test', 2, '2025-12-05 17:49:00', '2025-12-07 21:49:00', 0, NULL, NULL, NULL, '22:00:00', 80, 'oops', 0, -1, '1', 1, 1, 1, 0, 0, 0, '2025-12-06 12:50:07', '2025-12-06 12:50:07'),
(7, 20, 'Surprise Test', 1, '2025-12-04 20:57:00', '2025-12-10 20:57:00', 0, NULL, NULL, NULL, '21:00:00', 40, 'test', 0, -1, '1', 1, 1, 0, 0, 0, 0, '2025-12-06 15:27:37', '2025-12-06 15:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_attempts`
--

CREATE TABLE `onlineexam_attempts` (
  `id` int NOT NULL,
  `onlineexam_student_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `onlineexam_attempts`
--

INSERT INTO `onlineexam_attempts` (`id`, `onlineexam_student_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-11-26 04:28:00', '2025-11-26 04:28:00'),
(2, 1, '2025-11-26 04:32:23', '2025-11-26 04:32:23'),
(3, 10, '2025-11-26 07:06:22', '2025-11-26 07:06:22'),
(4, 52, '2025-12-06 12:51:19', '2025-12-06 12:51:19'),
(5, 53, '2025-12-06 15:30:46', '2025-12-06 15:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_questions`
--

CREATE TABLE `onlineexam_questions` (
  `id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `onlineexam_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT '0.00',
  `neg_marks` float(10,2) DEFAULT '0.00',
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `onlineexam_questions`
--

INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `marks`, `neg_marks`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1.00, 0.25, '0', '2025-11-26 04:31:53', '2025-11-26 04:31:53'),
(2, 2, 1, NULL, 1.00, 0.25, '0', '2025-11-26 04:31:55', '2025-11-26 04:31:55'),
(3, 1, 2, NULL, 1.00, 0.25, '0', '2025-11-26 07:02:51', '2025-11-26 07:02:51'),
(4, 2, 2, NULL, 1.00, 0.25, '0', '2025-11-26 07:02:53', '2025-11-26 07:02:53'),
(5, 1, 3, NULL, 1.00, 0.25, '0', '2025-12-06 03:59:58', '2025-12-06 03:59:58'),
(6, 2, 3, NULL, 1.00, 0.25, '0', '2025-12-06 03:59:59', '2025-12-06 03:59:59'),
(7, 3, 3, NULL, 1.00, 0.25, '0', '2025-12-06 04:00:00', '2025-12-06 04:00:00'),
(9, 4, 3, NULL, 1.00, 0.25, '0', '2025-12-06 04:00:22', '2025-12-06 04:00:22'),
(10, 1, 4, NULL, 1.00, 0.25, '0', '2025-12-06 04:07:29', '2025-12-06 04:07:29'),
(11, 2, 4, NULL, 1.00, 0.25, '0', '2025-12-06 04:07:30', '2025-12-06 04:07:30'),
(12, 3, 4, NULL, 1.00, 0.25, '0', '2025-12-06 04:07:31', '2025-12-06 04:07:31'),
(13, 4, 4, NULL, 1.00, 0.25, '0', '2025-12-06 04:07:32', '2025-12-06 04:07:32'),
(14, 1, 5, NULL, 1.00, 0.25, '0', '2025-12-06 09:20:46', '2025-12-06 09:20:46'),
(15, 2, 5, NULL, 1.00, 0.25, '0', '2025-12-06 09:20:46', '2025-12-06 09:20:46'),
(16, 3, 5, NULL, 1.00, 0.25, '0', '2025-12-06 09:20:47', '2025-12-06 09:20:47'),
(17, 4, 5, NULL, 1.00, 0.25, '0', '2025-12-06 09:20:48', '2025-12-06 09:20:48'),
(18, 3, 6, NULL, 1.00, 0.25, '0', '2025-12-06 12:50:22', '2025-12-06 12:50:22'),
(19, 4, 6, NULL, 1.00, 0.25, '0', '2025-12-06 12:50:23', '2025-12-06 12:50:23'),
(20, 5, 7, NULL, 1.00, 0.25, '0', '2025-12-06 15:27:49', '2025-12-06 15:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_students`
--

CREATE TABLE `onlineexam_students` (
  `id` int NOT NULL,
  `onlineexam_id` int DEFAULT NULL,
  `student_session_id` int DEFAULT NULL,
  `is_attempted` int NOT NULL DEFAULT '0',
  `rank` int DEFAULT '0',
  `quiz_attempted` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `onlineexam_students`
--

INSERT INTO `onlineexam_students` (`id`, `onlineexam_id`, `student_session_id`, `is_attempted`, `rank`, `quiz_attempted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 0, '2025-11-25 09:27:36', '2025-11-26 04:32:44'),
(2, 2, 1, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(3, 2, 3, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(4, 2, 4, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(5, 2, 5, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(6, 2, 6, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(7, 2, 7, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(8, 2, 8, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(9, 2, 9, 0, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:03:36'),
(10, 2, 10, 1, 0, 0, '2025-11-26 07:03:36', '2025-11-26 07:06:45'),
(11, 4, 2, 0, 0, 0, '2025-12-06 04:07:01', '2025-12-06 04:07:01'),
(12, 4, 19, 0, 0, 0, '2025-12-06 04:07:01', '2025-12-06 04:07:01'),
(13, 4, 22, 0, 0, 0, '2025-12-06 04:20:46', '2025-12-06 04:20:46'),
(14, 4, 3, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(15, 4, 4, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(16, 4, 5, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(17, 4, 6, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(18, 4, 7, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(19, 4, 8, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(20, 4, 9, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(21, 4, 10, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(22, 4, 14, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(23, 4, 16, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(24, 4, 17, 0, 0, 0, '2025-12-06 04:23:40', '2025-12-06 04:23:40'),
(25, 5, 22, 0, 0, 0, '2025-12-06 09:23:07', '2025-12-06 09:23:07'),
(26, 5, 23, 0, 0, 0, '2025-12-06 12:37:48', '2025-12-06 12:37:48'),
(27, 5, 2, 0, 0, 0, '2025-12-06 12:47:57', '2025-12-06 12:47:57'),
(28, 5, 19, 0, 0, 0, '2025-12-06 12:47:57', '2025-12-06 12:47:57'),
(29, 5, 3, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(30, 5, 4, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(31, 5, 5, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(32, 5, 6, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(33, 5, 7, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(34, 5, 8, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(35, 5, 9, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(36, 5, 10, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(37, 5, 14, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(38, 5, 16, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(39, 5, 17, 0, 0, 0, '2025-12-06 12:48:13', '2025-12-06 12:48:13'),
(40, 6, 3, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(41, 6, 4, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(42, 6, 5, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(43, 6, 6, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(44, 6, 7, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(45, 6, 8, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(46, 6, 9, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(47, 6, 10, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(48, 6, 14, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(49, 6, 16, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(50, 6, 17, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(51, 6, 22, 0, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:02'),
(52, 6, 23, 1, 0, 0, '2025-12-06 12:51:02', '2025-12-06 12:51:52'),
(53, 7, 120, 1, 0, 0, '2025-12-06 15:28:17', '2025-12-06 15:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_results`
--

CREATE TABLE `onlineexam_student_results` (
  `id` int NOT NULL,
  `onlineexam_student_id` int NOT NULL,
  `onlineexam_question_id` int NOT NULL,
  `select_option` longtext,
  `marks` float(10,2) NOT NULL DEFAULT '0.00',
  `remark` text,
  `attachment_name` text,
  `attachment_upload_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `onlineexam_student_results`
--

INSERT INTO `onlineexam_student_results` (`id`, `onlineexam_student_id`, `onlineexam_question_id`, `select_option`, `marks`, `remark`, `attachment_name`, `attachment_upload_name`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'true', 0.00, NULL, '', '', '2025-11-26 04:32:44', '2025-11-26 04:32:44'),
(2, 1, 1, '[\"opt_d\"]', 0.00, NULL, '', '', '2025-11-26 04:32:44', '2025-11-26 04:32:44'),
(3, 10, 4, 'true', 0.00, NULL, '', '', '2025-11-26 07:06:45', '2025-11-26 07:06:45'),
(4, 10, 3, '[\"opt_a\"]', 0.00, NULL, '', '', '2025-11-26 07:06:45', '2025-11-26 07:06:45'),
(5, 52, 18, 'jj', 0.00, NULL, '', '', '2025-12-06 12:51:52', '2025-12-06 12:51:52'),
(6, 52, 19, '[\"opt_c\"]', 0.00, NULL, '', '', '2025-12-06 12:51:52', '2025-12-06 12:51:52'),
(7, 53, 20, '[\"opt_b\"]', 0.00, NULL, '', '', '2025-12-06 15:31:19', '2025-12-06 15:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` int NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(255) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `category_id` int DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `route_id` int NOT NULL,
  `school_house_id` int DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int NOT NULL,
  `hostel_room_id` int DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(255) NOT NULL,
  `mother_pic` varchar(255) NOT NULL,
  `guardian_pic` varchar(255) NOT NULL,
  `is_enroll` int DEFAULT '0',
  `previous_school` text,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `form_status` int NOT NULL,
  `paid_status` int NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text,
  `document` text,
  `submit_date` date DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_custom_field_value`
--

CREATE TABLE `online_admission_custom_field_value` (
  `id` int NOT NULL,
  `belong_table_id` int DEFAULT NULL,
  `custom_field_id` int DEFAULT NULL,
  `field_value` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fields`
--

CREATE TABLE `online_admission_fields` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `online_admission_fields`
--

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'middlename', 0, '2021-05-28 10:29:23', '2025-11-24 10:08:21'),
(2, 'lastname', 1, '2021-06-02 04:49:19', '2025-11-24 10:08:21'),
(3, 'category', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(4, 'religion', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(5, 'cast', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(6, 'mobile_no', 1, '2021-06-02 04:50:24', '2025-11-24 10:08:21'),
(7, 'admission_date', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(8, 'student_photo', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(9, 'is_student_house', 0, '2021-05-29 13:22:53', '2025-11-24 10:08:21'),
(10, 'is_blood_group', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(11, 'student_height', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(12, 'student_weight', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(13, 'father_name', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(14, 'father_phone', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(15, 'father_occupation', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(16, 'father_pic', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(17, 'mother_name', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(18, 'mother_phone', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(19, 'mother_occupation', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(20, 'mother_pic', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(21, 'guardian_name', 1, '2021-06-02 04:50:54', '2025-11-24 10:08:21'),
(22, 'guardian_phone', 1, '2021-06-02 04:50:54', '2025-11-24 10:08:21'),
(23, 'if_guardian_is', 1, '2021-06-02 04:50:54', '2025-11-24 10:08:21'),
(24, 'guardian_relation', 1, '2021-06-02 04:50:54', '2025-11-24 10:08:21'),
(25, 'guardian_email', 1, '2021-06-02 04:51:35', '2025-11-24 10:08:21'),
(26, 'guardian_occupation', 1, '2021-06-02 04:51:26', '2025-11-24 10:08:21'),
(27, 'guardian_address', 1, '2021-06-02 04:51:31', '2025-11-24 10:08:21'),
(28, 'bank_account_no', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(29, 'bank_name', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(30, 'ifsc_code', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(31, 'national_identification_no', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(32, 'local_identification_no', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(33, 'rte', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(34, 'previous_school_details', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(35, 'guardian_photo', 1, '2021-06-02 04:51:29', '2025-11-24 10:08:21'),
(36, 'student_note', 0, '2021-06-02 04:55:08', '2025-11-24 10:08:21'),
(37, 'measurement_date', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(38, 'student_email', 1, '2021-06-02 04:49:38', '2025-11-24 10:08:21'),
(39, 'current_address', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(40, 'permanent_address', 0, '2021-06-02 04:48:35', '2025-11-24 10:08:21'),
(41, 'upload_documents', 1, '2022-09-20 08:00:32', '2025-11-24 10:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_payment`
--

CREATE TABLE `online_admission_payment` (
  `id` int NOT NULL,
  `online_admission_id` int NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `processing_charge_type` varchar(255) DEFAULT NULL,
  `processing_charge_value` float(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `charge_type` varchar(255) DEFAULT NULL,
  `charge_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int NOT NULL,
  `payslip_id` int NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payslip_allowance`
--

INSERT INTO `payslip_allowance` (`id`, `payslip_id`, `allowance_type`, `amount`, `staff_id`, `cal_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'basic', 0, 2, 'positive', '2025-11-25 04:12:53', '2025-11-25 04:12:53'),
(2, 1, '', 0, 2, 'negative', '2025-11-25 04:12:53', '2025-11-25 04:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int NOT NULL,
  `perm_group_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int DEFAULT '0',
  `enable_add` int DEFAULT '0',
  `enable_edit` int DEFAULT '0',
  `enable_delete` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-24 05:42:03', '2025-11-24 10:08:22'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 10:17:19', '2025-11-24 10:08:22'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 10:17:36', '2025-11-24 10:08:22'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 10:17:53', '2025-11-24 10:08:22'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 10:21:03', '2025-11-24 10:08:22'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 00:18:15', '2025-11-24 10:08:22'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 00:18:57', '2025-11-24 10:08:22'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 10:21:46', '2025-11-24 10:08:22'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 10:23:21', '2025-11-24 10:08:22'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 10:22:44', '2025-11-24 10:08:22'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 10:23:00', '2025-11-24 10:08:22'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 10:24:06', '2025-11-24 10:08:22'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 10:23:47', '2025-11-24 10:08:22'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 10:24:13', '2025-11-24 10:08:22'),
(15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-29 01:19:05', '2025-11-24 10:08:22'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 10:25:25', '2025-11-24 10:08:22'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 0, 1, 0, '2019-11-24 03:05:17', '2025-11-24 10:08:22'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 10:32:17', '2025-11-24 10:08:22'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 10:32:35', '2025-11-24 10:08:22'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 10:31:10', '2025-11-24 10:08:22'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 10:32:47', '2025-11-24 10:08:22'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 10:33:19', '2025-11-24 10:08:22'),
(28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-24 00:37:12', '2025-11-24 10:08:22'),
(29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-24 00:37:18', '2025-11-24 10:08:22'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 11:37:00', '2025-11-24 10:08:22'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-29 06:39:27', '2025-11-24 10:08:22'),
(32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-24 00:39:17', '2025-11-24 10:08:22'),
(33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-24 00:39:39', '2025-11-24 10:08:22'),
(34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-24 00:40:41', '2025-11-24 10:08:22'),
(35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-24 00:40:49', '2025-11-24 10:08:22'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 10:39:17', '2025-11-24 10:08:22'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 10:39:36', '2025-11-24 10:08:22'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 04:39:20', '2025-11-24 10:08:22'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 10:40:49', '2025-11-24 10:08:22'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 10:40:27', '2025-11-24 10:08:22'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 06:23:03', '2025-11-24 10:08:22'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 10:41:17', '2025-11-24 10:08:22'),
(44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-26 05:20:37', '2025-11-24 10:08:22'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 10:41:23', '2025-11-24 10:08:22'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 1, '2021-01-23 07:09:32', '2025-11-24 10:08:22'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 09:08:35', '2025-11-24 10:08:22'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 10:44:15', '2025-11-24 10:08:22'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 09:08:41', '2025-11-24 10:08:22'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 09:08:47', '2025-11-24 10:08:22'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 09:08:51', '2025-11-24 10:08:22'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 09:08:55', '2025-11-24 10:08:22'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 09:08:59', '2025-11-24 10:08:22'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 03:50:06', '2025-11-24 10:08:22'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 03:50:26', '2025-11-24 10:08:22'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 10:46:02', '2025-11-24 10:08:22'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 10:46:21', '2025-11-24 10:08:22'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 10:47:02', '2025-11-24 10:08:22'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 10:47:20', '2025-11-24 10:08:22'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 08:39:34', '2025-11-24 10:08:22'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 10:20:42', '2025-11-24 10:08:22'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 10:19:34', '2025-11-24 10:08:22'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 10:20:10', '2025-11-24 10:08:22'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 10:20:17', '2025-11-24 10:08:22'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 10:20:27', '2025-11-24 10:08:22'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 10:20:35', '2025-11-24 10:08:22'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 10:30:52', '2025-11-24 10:08:22'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 10:51:24', '2025-11-24 10:08:22'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 10:51:39', '2025-11-24 10:08:22'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 10:48:58', '2025-11-24 10:08:22'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 10:50:57', '2025-11-24 10:08:22'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 10:50:21', '2025-11-24 10:08:22'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 10:50:04', '2025-11-24 10:08:22'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 08:40:55', '2025-11-24 10:08:22'),
(85, 17, 'Setup Front Office', 'setup_font_office', 1, 1, 1, 1, '2025-02-13 09:03:14', '2025-11-24 10:08:22'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 10:53:31', '2025-11-24 10:08:22'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 10:53:12', '2025-11-24 10:08:22'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 10:53:10', '2025-11-24 10:08:22'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 10:52:51', '2025-11-24 10:08:22'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 10:53:50', '2025-11-24 10:08:22'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 03:07:21', '2025-11-24 10:08:22'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 10:41:07', '2025-11-24 10:08:22'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 10:37:16', '2025-11-24 10:08:22'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28', '2025-11-24 10:08:22'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49', '2025-11-24 10:08:22'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 10:54:41', '2025-11-24 10:08:22'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 10:34:33', '2025-11-24 10:08:22'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 10:54:45', '2025-11-24 10:08:22'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 06:21:34', '2025-11-24 10:08:22'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 1, '2020-10-05 08:56:27', '2025-11-24 10:08:22'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-28 23:47:46', '2025-11-24 10:08:22'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 10:17:56', '2025-11-24 10:08:22'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 03:57:07', '2025-11-24 10:08:22'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 03:57:07', '2025-11-24 10:08:22'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15', '2025-11-24 10:08:22'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15', '2025-11-24 10:08:22'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-11-24 10:08:22'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-11-24 10:08:22'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-11-24 10:08:22'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-11-24 10:08:22'),
(128, 1, 'Student Timeline', 'student_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-11-24 10:08:22'),
(129, 18, 'Staff Timeline', 'staff_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-11-24 10:08:22'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 04:17:17', '2025-11-24 10:08:22'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 04:17:17', '2025-11-24 10:08:22'),
(134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-27 06:39:21', '2025-11-24 10:08:22'),
(135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-25 00:39:49', '2025-11-24 10:08:22'),
(136, 5, 'Approve Leave', 'approve_leave', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-11-24 10:08:22'),
(137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-25 01:02:34', '2025-11-24 10:08:22'),
(141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-25 01:06:59', '2025-11-24 10:08:22'),
(142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-23 23:57:51', '2025-11-24 10:08:22'),
(143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-25 01:10:25', '2025-11-24 10:08:22'),
(144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-25 01:11:02', '2025-11-24 10:08:22'),
(145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-30 02:52:21', '2025-11-24 10:08:22'),
(146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-25 01:27:00', '2025-11-24 10:08:22'),
(147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-25 01:30:27', '2025-11-24 10:08:22'),
(148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-24 01:04:24', '2025-11-24 10:08:22'),
(154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-11-24 10:08:22'),
(155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-31 00:23:22', '2025-11-24 10:08:22'),
(162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06', '2025-11-24 10:08:22'),
(165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06', '2025-11-24 10:08:22'),
(174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-25 02:13:56', '2025-11-24 10:08:22'),
(175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-27 06:51:53', '2025-11-24 10:08:22'),
(176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-25 02:16:39', '2025-11-24 10:08:22'),
(177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-25 02:19:27', '2025-11-24 10:08:22'),
(178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-11-24 10:08:22'),
(179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-11-24 10:08:22'),
(180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-11-24 10:08:22'),
(181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-25 02:31:28', '2025-11-24 10:08:22'),
(182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-25 02:31:28', '2025-11-24 10:08:22'),
(183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-29 03:48:06', '2025-11-24 10:08:22'),
(185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-23 23:54:50', '2025-11-24 10:08:22'),
(186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-23 23:55:18', '2025-11-24 10:08:22'),
(187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-23 23:58:50', '2025-11-24 10:08:22'),
(188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-24 00:34:32', '2025-11-24 10:08:22'),
(189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-24 03:12:54', '2025-11-24 10:08:22'),
(190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-24 00:52:51', '2025-11-24 10:08:22'),
(191, 22, 'Converted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2025-02-13 09:03:14', '2025-11-24 10:08:22'),
(192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-24 00:57:41', '2025-11-24 10:08:22'),
(193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-02 05:06:09', '2025-11-24 10:08:22'),
(194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-12-01 01:13:04', '2025-11-24 10:08:22'),
(195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-03 04:57:45', '2025-11-24 10:08:22'),
(196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-24 01:02:11', '2025-11-24 10:08:22'),
(197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-24 01:06:32', '2025-11-24 10:08:22'),
(198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-24 01:11:15', '2025-11-24 10:08:22'),
(200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-24 01:18:14', '2025-11-24 10:08:22'),
(201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-29 02:48:05', '2025-11-24 10:08:22'),
(202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-29 02:46:24', '2025-11-24 10:08:22'),
(203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-24 01:22:25', '2025-11-24 10:08:22'),
(204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-24 01:25:27', '2025-11-24 10:08:22'),
(205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-24 04:55:48', '2025-11-24 10:08:22'),
(207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11', '2025-11-24 10:08:22'),
(214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-28 01:38:57', '2025-11-24 10:08:22'),
(215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-29 04:08:35', '2025-11-24 10:08:22'),
(216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-25 00:15:01', '2025-11-24 10:08:22'),
(217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 10:40:54', '2025-11-24 10:08:22'),
(219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-29 02:19:31', '2025-11-24 10:08:22'),
(220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-27 05:59:16', '2025-11-24 10:08:22'),
(221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-27 06:30:23', '2025-11-24 10:08:22'),
(222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-28 04:20:22', '2025-11-24 10:08:22'),
(223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-29 02:30:21', '2025-11-24 10:08:22'),
(224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-29 04:10:28', '2025-11-24 10:08:22'),
(226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-29 05:00:33', '2025-11-24 10:08:22'),
(227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-29 05:01:10', '2025-11-24 10:08:22'),
(228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-29 06:21:01', '2025-11-24 10:08:22'),
(229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:48:00', '2025-11-24 10:08:22'),
(230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:47:42', '2025-11-24 10:08:22'),
(231, 26, 'Multi Class Student', 'multi_class_student', 1, 1, 1, 1, '2020-10-05 08:56:27', '2025-11-24 10:08:22'),
(232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-02 06:11:10', '2025-11-24 10:08:22'),
(233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-12 02:02:02', '2025-11-24 10:08:22'),
(234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-02 03:15:46', '2025-11-24 10:08:22'),
(235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-28 21:48:52', '2025-11-24 10:08:22'),
(236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-28 22:17:37', '2025-11-24 10:08:22'),
(237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54', '2025-11-24 10:08:22'),
(241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54', '2025-11-24 10:08:22'),
(242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-07 23:59:54', '2025-11-24 10:08:22'),
(243, 15, 'Student Profile Update', 'student_profile_update', 1, 0, 0, 0, '2020-08-21 05:36:33', '2025-11-24 10:08:22'),
(244, 14, 'Student Gender Ratio Report', 'student_gender_ratio_report', 1, 0, 0, 0, '2020-08-22 12:37:51', '2025-11-24 10:08:22'),
(245, 14, 'Student Teacher Ratio Report', 'student_teacher_ratio_report', 1, 0, 0, 0, '2020-08-22 12:42:27', '2025-11-24 10:08:22'),
(246, 14, 'Daily Attendance Report', 'daily_attendance_report', 1, 0, 0, 0, '2020-08-22 12:43:16', '2025-11-24 10:08:22'),
(247, 23, 'Import Question', 'import_question', 1, 0, 0, 0, '2019-11-23 18:25:18', '2025-11-24 10:08:22'),
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28', '2025-11-24 10:08:22'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49', '2025-11-24 10:08:22'),
(250, 19, 'Daily Assignment', 'daily_assignment', 1, 0, 0, 0, '2022-03-02 07:28:23', '2025-11-24 10:08:22'),
(251, 6, 'Marks Division', 'marks_division', 1, 1, 1, 1, '2022-07-01 15:24:16', '2025-11-24 10:08:22'),
(252, 13, 'Schedule Email SMS Log', 'schedule_email_sms_log', 1, 0, 1, 0, '2022-07-09 11:25:16', '2025-11-24 10:08:22'),
(253, 13, 'Login Credentials Send', 'login_credentials_send', 1, 0, 0, 0, '2022-07-01 15:46:10', '2025-11-24 10:08:22'),
(254, 13, 'Email Template', 'email_template', 1, 1, 1, 1, '2022-07-01 15:46:10', '2025-11-24 10:08:22'),
(255, 13, 'SMS Template', 'sms_template', 1, 1, 1, 1, '2022-07-01 15:46:10', '2025-11-24 10:08:22'),
(256, 14, 'Balance Fees Report With Remark', 'balance_fees_report_with_remark', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(257, 14, 'Balance Fees Statement', 'balance_fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(258, 14, 'Daily Collection Report', 'daily_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-11-24 10:08:22'),
(259, 11, 'Fees Master', 'transport_fees_master', 1, 0, 1, 0, '2022-07-05 09:29:19', '2025-11-24 10:08:22'),
(260, 11, 'Pickup Point', 'pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08', '2025-11-24 10:08:22'),
(261, 11, 'Route Pickup Point', 'route_pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08', '2025-11-24 10:08:22'),
(262, 11, 'Student Transport Fees', 'student_transport_fees', 1, 1, 1, 0, '2022-07-05 10:15:55', '2025-11-24 10:08:22'),
(263, 29, 'Comments', 'lesson_plan_comments', 1, 1, 0, 1, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(264, 15, 'Sidebar Menu', 'sidebar_menu', 1, 0, 0, 0, '2022-07-11 12:01:17', '2025-11-24 10:08:22'),
(265, 15, 'Currency', 'currency', 1, 0, 0, 0, '2020-08-21 05:36:33', '2025-11-24 10:08:22'),
(266, 6, 'Exam Schedule', 'exam_schedule', 1, 0, 0, 0, '2019-11-23 23:58:50', '2025-11-24 10:08:22'),
(267, 6, 'Generate Rank', 'generate_rank', 1, 0, 0, 0, '2019-11-24 05:15:04', '2025-11-24 10:08:22'),
(268, 8, 'Content Type', 'content_type', 1, 1, 1, 1, '2022-07-08 05:18:54', '2025-11-24 10:08:22'),
(269, 8, 'Content Share List', 'content_share_list', 1, 0, 0, 1, '2022-07-08 05:18:58', '2025-11-24 10:08:22'),
(270, 8, 'Video Tutorial', 'video_tutorial', 1, 1, 1, 1, '2022-07-08 05:19:01', '2025-11-24 10:08:22'),
(271, 15, 'Currency Switcher', 'currency_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11', '2025-11-24 10:08:22'),
(272, 2, 'Offline Bank Payments', 'offline_bank_payments', 1, 0, 0, 0, '2018-06-27 00:18:15', '2025-11-24 10:08:22'),
(273, 29, 'Copy Old Lessons', 'copy_old_lesson', 1, 0, 0, 0, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(274, 30, 'Annual Calendar', 'annual_calendar', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-11-24 10:08:22'),
(275, 30, 'Holiday Type', 'holiday_type', 1, 1, 1, 1, '2024-10-14 12:31:14', '2025-11-24 10:08:22'),
(276, 14, 'Online Admission Report', 'online_admission_report', 1, 0, 0, 0, '2020-08-22 12:42:27', '2025-11-24 10:08:22'),
(277, 31, 'Download CV', 'download_cv', 1, 0, 0, 0, '2024-12-10 11:06:30', '2025-11-24 10:08:22'),
(278, 31, 'Build CV', 'build_cv', 1, 1, 0, 1, '2024-12-13 07:05:10', '2025-11-24 10:08:22'),
(279, 31, 'Setting', 'download_cv_setting', 1, 0, 0, 0, '2024-12-10 11:06:30', '2025-11-24 10:08:22'),
(280, 22, 'Student Head Count Widget', 'student_head_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(281, 22, 'Staff Approved Leave Widegts', 'staff_approved_leave_widegts', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22'),
(282, 22, 'Student Approved Leave Widegts', 'student_approved_leave_widegts', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int DEFAULT '0',
  `system` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`, `updated_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2019-03-15 09:30:22', '2025-11-24 10:08:22'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-11 00:51:35', '2025-11-24 10:08:22'),
(3, 'Income', 'income', 1, 0, '2020-06-01 01:57:39', '2025-11-24 10:08:22'),
(4, 'Expense', 'expense', 1, 0, '2019-03-15 09:06:22', '2025-11-24 10:08:22'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 07:48:08', '2025-11-24 10:08:22'),
(6, 'Examination', 'examination', 1, 0, '2018-07-11 02:49:08', '2025-11-24 10:08:22'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 07:25:43', '2025-11-24 10:08:22'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 07:49:29', '2025-11-24 10:08:22'),
(9, 'Library', 'library', 1, 0, '2018-06-28 11:13:14', '2025-11-24 10:08:22'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-27 00:48:58', '2025-11-24 10:08:22'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 07:51:26', '2025-11-24 10:08:22'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 07:49:32', '2025-11-24 10:08:22'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 07:50:00', '2025-11-24 10:08:22'),
(14, 'Reports', 'reports', 1, 1, '2018-06-27 03:40:22', '2025-11-24 10:08:22'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 03:40:28', '2025-11-24 10:08:22'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 05:16:54', '2025-11-24 10:08:22'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-27 03:45:30', '2025-11-24 10:08:22'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 03:41:02', '2025-11-24 10:08:22'),
(19, 'Homework', 'homework', 1, 0, '2018-06-27 00:49:38', '2025-11-24 10:08:22'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 07:51:29', '2025-11-24 10:08:22'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 09:06:25', '2025-11-24 10:08:22'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 03:41:17', '2025-11-24 10:08:22'),
(23, 'Online Examination', 'online_examination', 1, 0, '2020-06-01 02:25:36', '2025-11-24 10:08:22'),
(25, 'Chat', 'chat', 1, 0, '2019-11-23 23:54:04', '2025-11-24 10:08:22'),
(26, 'Multi Class', 'multi_class', 1, 0, '2019-11-27 12:14:14', '2025-11-24 10:08:22'),
(27, 'Online Admission', 'online_admission', 1, 0, '2019-11-27 02:42:13', '2025-11-24 10:08:22'),
(28, 'Alumni', 'alumni', 1, 0, '2020-05-29 00:26:38', '2025-11-24 10:08:22'),
(29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-07 05:38:30', '2025-11-24 10:08:22'),
(30, 'Annual Calendar', 'annual_calendar', 1, 0, '2024-10-22 10:45:56', '2025-11-24 10:08:22'),
(31, 'Student CV', 'student_cv', 1, 0, '2024-12-13 11:54:57', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_student`
--

CREATE TABLE `permission_student` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int NOT NULL,
  `student` int NOT NULL,
  `parent` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `permission_student`
--

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 00:51:35', '2025-11-24 10:08:22'),
(2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-30 19:57:50', '2025-11-24 10:08:22'),
(3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 02:49:14', '2025-11-24 10:08:22'),
(4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 02:52:49', '2025-11-24 10:08:22'),
(5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 02:57:18', '2025-11-24 10:08:22'),
(7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 02:59:50', '2025-11-24 10:08:22'),
(8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 03:00:35', '2025-11-24 10:08:22'),
(11, 'Library', 'library', 0, 1, 1, 9, '2020-06-01 03:02:37', '2025-11-24 10:08:22'),
(12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 03:51:30', '2025-11-24 10:08:22'),
(13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 03:52:27', '2025-11-24 10:08:22'),
(14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-06-01 03:53:18', '2025-11-24 10:08:22'),
(15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-11 05:20:01', '2025-11-24 10:08:22'),
(16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, NULL, '2022-12-28 09:52:28', '2025-11-24 10:08:22'),
(17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 04:53:06', '2025-11-24 10:08:22'),
(18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-30 19:56:52', '2025-11-24 10:08:22'),
(19, 'Lesson Plan', 'lesson_plan', 0, 0, 1, 29, '2020-06-07 05:38:30', '2025-12-07 04:27:19'),
(20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-07 05:38:30', '2025-11-24 10:08:22'),
(23, 'Apply Leave', 'apply_leave', 0, 0, 1, NULL, '2022-12-28 09:52:28', '2025-12-07 04:27:52'),
(24, 'Visitor Book', 'visitor_book', 0, 0, 1, NULL, '2022-10-10 11:45:18', '2025-12-07 04:27:41'),
(25, 'Student Timeline', 'student_timeline', 0, 1, 1, NULL, '2022-10-11 04:50:29', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pickup_point`
--

INSERT INTO `pickup_point` (`id`, `name`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'stage1', '16.63579', '79.66847', '2025-12-07 05:48:24', '2025-12-07 05:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `print_headerfooter`
--

CREATE TABLE `print_headerfooter` (
  `id` int NOT NULL,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `print_headerfooter`
--

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`, `created_at`, `updated_at`) VALUES
(1, 'staff_payslip', 'header_image.jpg', 'This payslip is computer generated hence no signature is required.', 1, '2020-02-28 15:41:08', '2022-12-28 09:52:24', '2025-11-24 10:08:22'),
(2, 'student_receipt', '', 'This receipt is computer generated hence no signature is required.', 1, '2025-12-06 04:16:27', '2022-12-28 09:52:24', '2025-12-06 04:16:27'),
(3, 'online_admission_receipt', 'header_image.jpg', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2021-05-27 12:50:24', '2022-12-28 09:52:24', '2025-11-24 10:08:22'),
(4, 'online_exam', '1655913577-198504634062b33c698fde1!online-exam.jpg', 'This receipt is for online exam computer  generated hence no signature is required.', 1, '2022-08-30 12:58:46', '2022-09-08 17:28:34', '2025-11-24 10:08:22'),
(5, 'general_purpose', 'header_image.jpg', '<h1>\r\n\r\n</h1><p>footer text here ....</p>', 1, '2025-02-05 07:26:06', '2022-09-08 17:28:34', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `staff_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `question` text,
  `opt_a` text,
  `opt_b` text,
  `opt_c` text,
  `opt_d` text,
  `opt_e` text,
  `correct` text,
  `descriptive_word_limit` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `staff_id`, `subject_id`, `question_type`, `level`, `class_id`, `section_id`, `class_section_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `descriptive_word_limit`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'multichoice', 'low', 1, 1, NULL, '2+2=', '3', '2', '1', '4', '22', '[\"opt_d\"]', 0, '2025-11-25 09:25:49', '2025-11-25 09:25:49'),
(2, 2, 1, 'true_false', 'high', 1, 1, NULL, 'father of Mathematics', '', '', '', '', '', 'true', 0, '2025-11-26 04:30:10', '2025-11-26 04:30:56'),
(3, 2, 1, 'descriptive', 'high', 1, 1, NULL, 'Math full form', '', '', '', '', '', '', 0, '2025-11-26 04:30:10', '2025-11-26 04:30:41'),
(4, 2, 1, 'multichoice', 'low', 1, 1, NULL, '7-2=', '1', '2', '4', '6', '4', '[\"opt_d\"]', 0, '2025-11-26 07:09:51', '2025-11-26 07:09:51'),
(5, 8, 1, 'multichoice', 'medium', 3, 2, NULL, 'Capital of Andhra Pradesh', 'Hyderabad', 'Amaravthi', 'Vijayawada', 'Guntur', 'Dachepalli', '[\"opt_b\"]', 0, '2025-12-06 15:24:24', '2025-12-06 15:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `notification_id` int DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `read_notification`
--

INSERT INTO `read_notification` (`id`, `student_id`, `parent_id`, `staff_id`, `notification_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, 1, 'no', '2026-01-20 02:24:13', '2026-01-20 02:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int NOT NULL,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `resume_additional_fields_settings`
--

CREATE TABLE `resume_additional_fields_settings` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `resume_additional_fields_settings`
--

INSERT INTO `resume_additional_fields_settings` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'work_experience', 1, '2024-12-06 06:17:04', '2025-11-24 10:08:22'),
(2, 'education_qalification', 1, '2024-12-06 06:17:04', '2025-11-24 10:08:22'),
(3, 'technical_skills', 1, '2024-12-06 06:17:04', '2025-11-24 10:08:22'),
(4, 'reference', 1, '2024-12-06 06:17:04', '2025-11-24 10:08:22'),
(5, 'other_details', 1, '2024-12-06 06:17:04', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `resume_settings_fields`
--

CREATE TABLE `resume_settings_fields` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `resume_settings_fields`
--

INSERT INTO `resume_settings_fields` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'middlename', 1, '2025-02-14 06:40:33', '2025-02-14 06:40:33'),
(2, 'lastname', 1, '2025-02-14 06:40:34', '2025-02-14 06:40:34'),
(3, 'gender', 1, '2025-02-14 06:40:35', '2025-02-14 06:40:35'),
(4, 'dob', 1, '2025-02-14 06:40:36', '2025-02-14 06:40:36'),
(5, 'category', 1, '2025-02-14 06:40:37', '2025-02-14 06:40:37'),
(6, 'religion', 1, '2025-02-14 06:40:38', '2025-02-14 06:40:38'),
(7, 'cast', 1, '2025-02-14 06:40:40', '2025-02-14 06:40:40'),
(8, 'mobile_no', 1, '2025-02-14 06:40:41', '2025-02-14 06:40:41'),
(9, 'student_email', 1, '2025-02-14 06:40:41', '2025-02-14 06:40:41'),
(10, 'student_photo', 1, '2025-02-14 06:40:42', '2025-02-14 06:40:42'),
(11, 'is_blood_group', 1, '2025-02-14 06:40:43', '2025-02-14 06:40:43'),
(12, 'height', 1, '2025-02-14 06:40:44', '2025-02-14 06:40:44'),
(13, 'weight', 1, '2025-02-14 06:40:46', '2025-02-14 06:40:46'),
(14, 'father_name', 1, '2025-02-14 06:40:47', '2025-02-14 06:40:47'),
(15, 'father_phone', 1, '2025-02-14 06:40:48', '2025-02-14 06:40:48'),
(16, 'father_occupation', 1, '2025-02-14 06:40:49', '2025-02-14 06:40:49'),
(17, 'father_pic', 1, '2025-02-14 06:40:49', '2025-02-14 06:40:49'),
(18, 'mother_name', 1, '2025-02-14 06:40:50', '2025-02-14 06:40:50'),
(19, 'mother_phone', 1, '2025-02-14 06:40:51', '2025-02-14 06:40:51'),
(20, 'mother_occupation', 1, '2025-02-14 06:40:52', '2025-02-14 06:40:52'),
(21, 'mother_pic', 1, '2025-02-14 06:40:52', '2025-02-14 06:40:52'),
(22, 'if_guardian_is', 1, '2025-02-14 06:40:53', '2025-02-14 06:42:17'),
(23, 'guardian_name', 1, '2025-02-14 06:41:31', '2025-02-14 06:42:17'),
(24, 'guardian_relation', 1, '2025-02-14 06:41:31', '2025-02-14 06:42:17'),
(25, 'guardian_email', 1, '2025-02-14 06:41:32', '2025-02-14 06:42:17'),
(26, 'guardian_photo', 1, '2025-02-14 06:41:33', '2025-02-14 06:42:17'),
(27, 'guardian_phone', 1, '2025-02-14 06:41:34', '2025-02-14 06:42:17'),
(28, 'guardian_occupation', 1, '2025-02-14 06:41:34', '2025-02-14 06:42:17'),
(29, 'guardian_address', 1, '2025-02-14 06:41:35', '2025-02-14 06:42:17'),
(30, 'current_address', 1, '2025-02-14 06:41:36', '2025-02-14 06:41:36'),
(31, 'permanent_address', 1, '2025-02-14 06:41:37', '2025-02-14 06:41:37'),
(32, 'national_identification_no', 1, '2025-02-14 06:41:37', '2025-02-14 06:41:37'),
(33, 'local_identification_no', 1, '2025-02-14 06:41:38', '2025-02-14 06:41:38'),
(34, 'personal_details', 1, '2025-02-14 06:41:39', '2025-02-14 06:41:39'),
(35, 'parent_guardian_detail', 1, '2025-02-14 06:41:41', '2025-02-14 06:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `is_system` int NOT NULL DEFAULT '0',
  `is_superadmin` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 15:39:11', '0000-00-00 00:00:00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 15:39:14', '0000-00-00 00:00:00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 15:39:17', '0000-00-00 00:00:00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 15:39:21', '0000-00-00 00:00:00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 05:39:03', '0000-00-00 00:00:00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 14:11:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `perm_cat_id` int DEFAULT NULL,
  `can_view` int DEFAULT NULL,
  `can_add` int DEFAULT NULL,
  `can_edit` int DEFAULT NULL,
  `can_delete` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(11, 1, 78, 1, 1, 1, 1, '2018-07-03 00:49:43', '2025-11-24 10:08:22'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 09:45:38', '2025-11-24 10:08:22'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 09:48:28', '2025-11-24 10:08:22'),
(26, 1, 15, 1, 1, 1, 0, '2019-11-27 23:47:28', '2025-11-24 10:08:22'),
(31, 1, 21, 1, 0, 1, 0, '2019-11-26 04:51:15', '2025-11-24 10:08:22'),
(34, 1, 24, 1, 1, 1, 1, '2019-11-28 06:35:20', '2025-11-24 10:08:22'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 10:22:05', '2025-11-24 10:08:22'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 10:22:29', '2025-11-24 10:08:22'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 10:23:59', '2025-11-24 10:08:22'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 10:24:34', '2025-11-24 10:08:22'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 10:23:08', '2025-11-24 10:08:22'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 10:25:30', '2025-11-24 10:08:22'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-09 05:15:27', '2025-11-24 10:08:22'),
(61, 1, 55, 1, 1, 1, 1, '2018-07-02 09:24:16', '2025-11-24 10:08:22'),
(67, 1, 61, 1, 1, 0, 1, '2018-07-09 05:59:19', '2025-11-24 10:08:22'),
(68, 1, 62, 1, 1, 0, 1, '2018-07-09 05:59:19', '2025-11-24 10:08:22'),
(69, 1, 63, 1, 1, 0, 1, '2018-07-09 03:51:38', '2025-11-24 10:08:22'),
(70, 1, 64, 1, 1, 1, 1, '2018-07-09 03:02:19', '2025-11-24 10:08:22'),
(71, 1, 65, 1, 1, 1, 1, '2018-07-09 03:11:21', '2025-11-24 10:08:22'),
(72, 1, 66, 1, 1, 1, 1, '2018-07-09 03:13:09', '2025-11-24 10:08:22'),
(73, 1, 67, 1, 1, 1, 1, '2018-07-09 03:14:47', '2025-11-24 10:08:22'),
(74, 1, 79, 1, 1, 0, 1, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(75, 1, 80, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-11-24 10:08:22'),
(76, 1, 81, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-11-24 10:08:22'),
(78, 1, 83, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-11-24 10:08:22'),
(79, 1, 84, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-11-24 10:08:22'),
(80, 1, 85, 1, 1, 1, 1, '2018-07-12 00:16:00', '2025-11-24 10:08:22'),
(94, 1, 82, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-11-24 10:08:22'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 10:26:28', '2025-11-24 10:08:22'),
(156, 1, 9, 1, 1, 1, 1, '2019-11-27 23:45:46', '2025-11-24 10:08:22'),
(157, 1, 10, 1, 1, 1, 1, '2019-11-27 23:45:46', '2025-11-24 10:08:22'),
(159, 1, 40, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(160, 1, 41, 1, 1, 1, 1, '2019-12-02 05:43:41', '2025-11-24 10:08:22'),
(161, 1, 42, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(169, 1, 27, 1, 1, 0, 1, '2019-11-29 06:15:37', '2025-11-24 10:08:22'),
(178, 1, 54, 1, 0, 1, 0, '2018-07-05 09:09:22', '2025-11-24 10:08:22'),
(179, 1, 56, 1, 0, 1, 0, '2019-11-30 00:49:54', '2025-11-24 10:08:22'),
(180, 1, 57, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(181, 1, 58, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(182, 1, 59, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(183, 1, 60, 1, 0, 1, 0, '2019-11-30 00:59:57', '2025-11-24 10:08:22'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 11:22:03', '2025-11-24 10:08:22'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 11:32:05', '2025-11-24 10:08:22'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 11:43:54', '2025-11-24 10:08:22'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 11:43:54', '2025-11-24 10:08:22'),
(208, 1, 31, 1, 1, 1, 1, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(222, 1, 1, 1, 1, 1, 1, '2019-11-27 22:55:06', '2025-11-24 10:08:22'),
(307, 1, 126, 1, 0, 0, 0, '2018-07-03 09:26:13', '2025-11-24 10:08:22'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 10:27:03', '2025-11-24 10:08:22'),
(369, 1, 102, 1, 1, 1, 1, '2019-12-02 05:02:15', '2025-11-24 10:08:22'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-09 01:03:54', '2025-11-24 10:08:22'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-09 01:00:16', '2025-11-24 10:08:22'),
(464, 1, 86, 1, 1, 1, 1, '2019-11-28 06:39:19', '2025-11-24 10:08:22'),
(474, 1, 130, 1, 1, 0, 1, '2018-07-09 10:56:36', '2025-11-24 10:08:22'),
(476, 1, 131, 1, 0, 0, 0, '2018-07-09 04:53:32', '2025-11-24 10:08:22'),
(557, 6, 82, 1, 1, 1, 1, '2019-12-01 01:48:28', '2025-11-24 10:08:22'),
(558, 6, 83, 1, 1, 1, 1, '2019-12-01 01:49:08', '2025-11-24 10:08:22'),
(559, 6, 84, 1, 1, 1, 1, '2019-12-01 01:49:59', '2025-11-24 10:08:22'),
(575, 6, 44, 1, 0, 0, 0, '2018-07-10 07:35:33', '2025-11-24 10:08:22'),
(576, 6, 46, 1, 0, 0, 0, '2018-07-10 07:35:33', '2025-11-24 10:08:22'),
(578, 6, 102, 1, 1, 1, 1, '2019-12-01 01:52:27', '2025-11-24 10:08:22'),
(625, 1, 28, 1, 1, 1, 1, '2019-11-29 06:19:18', '2025-11-24 10:08:22'),
(634, 4, 102, 1, 1, 1, 1, '2019-12-01 01:03:00', '2025-11-24 10:08:22'),
(669, 1, 145, 1, 0, 0, 0, '2019-11-26 04:51:15', '2025-11-24 10:08:22'),
(677, 1, 153, 1, 0, 0, 0, '2019-11-01 02:28:24', '2025-11-24 10:08:22'),
(720, 1, 216, 1, 0, 0, 0, '2019-11-26 05:24:12', '2025-11-24 10:08:22'),
(728, 1, 185, 1, 1, 1, 1, '2019-11-28 02:50:33', '2025-11-24 10:08:22'),
(729, 1, 186, 1, 1, 1, 1, '2019-11-28 02:49:07', '2025-11-24 10:08:22'),
(730, 1, 214, 1, 0, 1, 0, '2019-11-28 01:47:53', '2025-11-24 10:08:22'),
(732, 1, 198, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-11-24 10:08:22'),
(734, 1, 200, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-11-24 10:08:22'),
(735, 1, 201, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-11-24 10:08:22'),
(736, 1, 202, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-11-24 10:08:22'),
(737, 1, 203, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-11-24 10:08:22'),
(747, 1, 2, 1, 0, 0, 0, '2019-11-27 22:56:08', '2025-11-24 10:08:22'),
(748, 1, 3, 1, 1, 1, 1, '2019-11-27 22:56:32', '2025-11-24 10:08:22'),
(749, 1, 4, 1, 1, 1, 1, '2019-11-27 22:56:48', '2025-11-24 10:08:22'),
(751, 1, 128, 0, 1, 0, 1, '2019-11-27 22:57:01', '2025-11-24 10:08:22'),
(754, 1, 134, 1, 1, 1, 1, '2019-11-27 23:18:21', '2025-11-24 10:08:22'),
(755, 1, 5, 1, 1, 0, 1, '2019-11-27 23:35:07', '2025-11-24 10:08:22'),
(756, 1, 6, 1, 0, 0, 0, '2019-11-27 23:35:25', '2025-11-24 10:08:22'),
(757, 1, 7, 1, 1, 1, 1, '2019-11-27 23:36:35', '2025-11-24 10:08:22'),
(758, 1, 8, 1, 1, 1, 1, '2019-11-27 23:37:27', '2025-11-24 10:08:22'),
(760, 1, 68, 1, 0, 0, 0, '2019-11-27 23:38:06', '2025-11-24 10:08:22'),
(761, 1, 69, 1, 1, 1, 1, '2019-11-27 23:39:06', '2025-11-24 10:08:22'),
(762, 1, 70, 1, 1, 1, 1, '2019-11-27 23:39:41', '2025-11-24 10:08:22'),
(763, 1, 71, 1, 0, 0, 0, '2019-11-27 23:39:59', '2025-11-24 10:08:22'),
(765, 1, 73, 1, 0, 0, 0, '2019-11-27 23:43:15', '2025-11-24 10:08:22'),
(766, 1, 74, 1, 0, 0, 0, '2019-11-27 23:43:55', '2025-11-24 10:08:22'),
(768, 1, 11, 1, 0, 0, 0, '2019-11-27 23:45:46', '2025-11-24 10:08:22'),
(769, 1, 122, 1, 0, 0, 0, '2019-11-27 23:52:43', '2025-11-24 10:08:22'),
(771, 1, 136, 1, 0, 0, 0, '2019-11-27 23:55:36', '2025-11-24 10:08:22'),
(772, 1, 20, 1, 1, 1, 1, '2019-11-28 04:06:44', '2025-11-24 10:08:22'),
(773, 1, 137, 1, 1, 1, 1, '2019-11-28 00:46:14', '2025-11-24 10:08:22'),
(774, 1, 141, 1, 1, 1, 1, '2019-11-28 00:59:42', '2025-11-24 10:08:22'),
(775, 1, 142, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-11-24 10:08:22'),
(776, 1, 143, 1, 1, 1, 1, '2019-11-28 00:59:42', '2025-11-24 10:08:22'),
(777, 1, 144, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-11-24 10:08:22'),
(778, 1, 187, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-11-24 10:08:22'),
(779, 1, 196, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-11-24 10:08:22'),
(781, 1, 207, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-11-24 10:08:22'),
(782, 1, 208, 1, 0, 1, 0, '2019-11-28 00:10:22', '2025-11-24 10:08:22'),
(783, 1, 210, 1, 0, 1, 0, '2019-11-28 00:34:40', '2025-11-24 10:08:22'),
(784, 1, 211, 1, 0, 1, 0, '2019-11-28 00:38:23', '2025-11-24 10:08:22'),
(785, 1, 212, 1, 0, 1, 0, '2019-11-28 00:42:15', '2025-11-24 10:08:22'),
(786, 1, 205, 1, 1, 1, 1, '2019-11-28 00:42:15', '2025-11-24 10:08:22'),
(787, 1, 222, 1, 0, 1, 0, '2019-11-28 01:36:36', '2025-11-24 10:08:22'),
(788, 1, 77, 1, 1, 1, 1, '2019-11-28 06:22:10', '2025-11-24 10:08:22'),
(789, 1, 188, 1, 1, 1, 1, '2019-11-28 06:26:16', '2025-11-24 10:08:22'),
(790, 1, 23, 1, 1, 1, 1, '2019-11-28 06:34:20', '2025-11-24 10:08:22'),
(791, 1, 25, 1, 1, 1, 1, '2019-11-28 06:36:20', '2025-11-24 10:08:22'),
(792, 1, 127, 1, 0, 0, 0, '2019-11-28 06:41:25', '2025-11-24 10:08:22'),
(794, 1, 88, 1, 1, 1, 0, '2019-11-28 06:43:04', '2025-11-24 10:08:22'),
(795, 1, 90, 1, 1, 0, 1, '2019-11-28 06:46:22', '2025-11-24 10:08:22'),
(796, 1, 108, 1, 0, 1, 1, '2021-01-23 07:09:32', '2025-11-24 10:08:22'),
(797, 1, 109, 1, 1, 0, 0, '2019-11-28 23:38:11', '2025-11-24 10:08:22'),
(798, 1, 110, 1, 1, 1, 1, '2019-11-28 23:49:29', '2025-11-24 10:08:22'),
(799, 1, 111, 1, 1, 1, 1, '2019-11-28 23:49:57', '2025-11-24 10:08:22'),
(800, 1, 112, 1, 1, 1, 1, '2019-11-28 23:49:57', '2025-11-24 10:08:22'),
(801, 1, 129, 0, 1, 0, 1, '2019-11-28 23:49:57', '2025-11-24 10:08:22'),
(802, 1, 189, 1, 0, 1, 1, '2019-11-28 23:59:22', '2025-11-24 10:08:22'),
(810, 2, 1, 1, 1, 1, 1, '2019-11-30 02:54:16', '2025-11-24 10:08:22'),
(817, 1, 93, 1, 1, 1, 1, '2019-11-29 00:56:14', '2025-11-24 10:08:22'),
(825, 1, 87, 1, 0, 0, 0, '2019-11-29 00:56:14', '2025-11-24 10:08:22'),
(829, 1, 94, 1, 1, 0, 0, '2019-11-29 00:57:57', '2025-11-24 10:08:22'),
(836, 1, 146, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(837, 1, 147, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(838, 1, 148, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(839, 1, 149, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(840, 1, 150, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(841, 1, 151, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(842, 1, 152, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(843, 1, 154, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-11-24 10:08:22'),
(862, 1, 155, 1, 0, 0, 0, '2019-11-29 02:07:30', '2025-11-24 10:08:22'),
(863, 1, 156, 1, 0, 0, 0, '2019-11-29 02:07:52', '2025-11-24 10:08:22'),
(864, 1, 157, 1, 0, 0, 0, '2019-11-29 02:08:05', '2025-11-24 10:08:22'),
(874, 1, 158, 1, 0, 0, 0, '2019-11-29 02:14:03', '2025-11-24 10:08:22'),
(875, 1, 159, 1, 0, 0, 0, '2019-11-29 02:14:31', '2025-11-24 10:08:22'),
(876, 1, 160, 1, 0, 0, 0, '2019-11-29 02:14:44', '2025-11-24 10:08:22'),
(878, 1, 162, 1, 0, 0, 0, '2019-11-29 02:15:58', '2025-11-24 10:08:22'),
(879, 1, 163, 1, 0, 0, 0, '2019-11-29 02:16:19', '2025-11-24 10:08:22'),
(882, 1, 164, 1, 0, 0, 0, '2019-11-29 02:25:17', '2025-11-24 10:08:22'),
(884, 1, 165, 1, 0, 0, 0, '2019-11-29 02:25:30', '2025-11-24 10:08:22'),
(886, 1, 197, 1, 0, 0, 0, '2019-11-29 02:25:48', '2025-11-24 10:08:22'),
(887, 1, 219, 1, 0, 0, 0, '2019-11-29 02:26:05', '2025-11-24 10:08:22'),
(889, 1, 220, 1, 0, 0, 0, '2019-11-29 02:26:22', '2025-11-24 10:08:22'),
(932, 1, 204, 1, 0, 0, 0, '2019-11-29 03:43:27', '2025-11-24 10:08:22'),
(933, 1, 221, 1, 0, 0, 0, '2019-11-29 03:45:04', '2025-11-24 10:08:22'),
(934, 1, 178, 1, 0, 0, 0, '2019-11-29 03:45:16', '2025-11-24 10:08:22'),
(935, 1, 179, 1, 0, 0, 0, '2019-11-29 03:45:33', '2025-11-24 10:08:22'),
(936, 1, 161, 1, 0, 0, 0, '2019-11-29 03:45:48', '2025-11-24 10:08:22'),
(937, 1, 180, 1, 0, 0, 0, '2019-11-29 03:45:48', '2025-11-24 10:08:22'),
(938, 1, 181, 1, 0, 0, 0, '2019-11-29 03:49:33', '2025-11-24 10:08:22'),
(939, 1, 182, 1, 0, 0, 0, '2019-11-29 03:49:45', '2025-11-24 10:08:22'),
(940, 1, 183, 1, 0, 0, 0, '2019-11-29 03:49:56', '2025-11-24 10:08:22'),
(941, 1, 174, 1, 0, 0, 0, '2019-11-29 03:50:53', '2025-11-24 10:08:22'),
(943, 1, 176, 1, 0, 0, 0, '2019-11-29 03:52:10', '2025-11-24 10:08:22'),
(944, 1, 177, 1, 0, 0, 0, '2019-11-29 03:52:22', '2025-11-24 10:08:22'),
(945, 1, 53, 0, 1, 0, 1, '2021-01-23 07:09:32', '2025-11-24 10:08:22'),
(946, 1, 215, 1, 0, 0, 0, '2019-11-29 04:01:37', '2025-11-24 10:08:22'),
(947, 1, 213, 1, 0, 0, 0, '2019-11-29 04:07:45', '2025-11-24 10:08:22'),
(974, 1, 224, 1, 0, 0, 0, '2019-11-29 04:32:52', '2025-11-24 10:08:22'),
(1026, 1, 135, 1, 0, 1, 0, '2019-11-29 06:02:12', '2025-11-24 10:08:22'),
(1031, 1, 228, 1, 0, 0, 0, '2019-11-29 06:21:16', '2025-11-24 10:08:22'),
(1083, 1, 175, 1, 0, 0, 0, '2019-11-30 00:37:24', '2025-11-24 10:08:22'),
(1086, 1, 43, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(1087, 1, 44, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(1088, 1, 46, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(1089, 1, 217, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-11-24 10:08:22'),
(1090, 1, 98, 1, 1, 1, 1, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(1091, 1, 99, 1, 0, 0, 0, '2019-11-30 01:30:18', '2025-11-24 10:08:22'),
(1092, 1, 223, 1, 0, 0, 0, '2019-11-30 01:32:51', '2025-11-24 10:08:22'),
(1103, 2, 205, 1, 1, 1, 1, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1105, 2, 23, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1106, 2, 24, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1107, 2, 25, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1108, 2, 77, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1119, 2, 117, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-11-24 10:08:22'),
(1123, 3, 8, 1, 1, 1, 1, '2019-11-30 06:46:18', '2025-11-24 10:08:22'),
(1125, 3, 69, 1, 1, 1, 1, '2019-11-30 07:00:49', '2025-11-24 10:08:22'),
(1126, 3, 70, 1, 1, 1, 1, '2019-11-30 07:04:46', '2025-11-24 10:08:22'),
(1130, 3, 9, 1, 1, 1, 1, '2019-11-30 07:14:54', '2025-11-24 10:08:22'),
(1131, 3, 10, 1, 1, 1, 1, '2019-11-30 07:16:02', '2025-11-24 10:08:22'),
(1134, 3, 35, 1, 1, 1, 1, '2019-11-30 07:25:04', '2025-11-24 10:08:22'),
(1135, 3, 104, 1, 1, 1, 1, '2019-11-30 07:25:53', '2025-11-24 10:08:22'),
(1140, 3, 41, 1, 1, 1, 1, '2019-11-30 07:37:13', '2025-11-24 10:08:22'),
(1141, 3, 42, 1, 1, 1, 1, '2019-11-30 07:37:46', '2025-11-24 10:08:22'),
(1142, 3, 43, 1, 1, 1, 1, '2019-11-30 07:42:06', '2025-11-24 10:08:22'),
(1151, 3, 87, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1152, 3, 88, 1, 1, 1, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1153, 3, 90, 1, 1, 0, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1154, 3, 108, 1, 0, 1, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1155, 3, 109, 1, 1, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1156, 3, 110, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1157, 3, 111, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1158, 3, 112, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1159, 3, 127, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1160, 3, 129, 0, 1, 0, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1161, 3, 102, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1162, 3, 106, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1163, 3, 113, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1164, 3, 114, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1165, 3, 115, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1166, 3, 116, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1167, 3, 117, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1168, 3, 118, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-11-24 10:08:22'),
(1171, 2, 142, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1172, 2, 144, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1179, 2, 212, 1, 0, 1, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1183, 2, 148, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1184, 2, 149, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1185, 2, 150, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1186, 2, 151, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1187, 2, 152, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1188, 2, 153, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1189, 2, 154, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1190, 2, 197, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1191, 2, 198, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1193, 2, 200, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1194, 2, 201, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1195, 2, 202, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1196, 2, 203, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1197, 2, 219, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1198, 2, 223, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1199, 2, 213, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1201, 2, 230, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1204, 2, 214, 1, 0, 1, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1206, 2, 224, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-11-24 10:08:22'),
(1208, 2, 2, 1, 0, 0, 0, '2019-11-30 02:55:45', '2025-11-24 10:08:22'),
(1210, 2, 143, 1, 1, 1, 1, '2019-11-30 02:57:28', '2025-11-24 10:08:22'),
(1211, 2, 145, 1, 0, 0, 0, '2019-11-30 02:57:28', '2025-11-24 10:08:22'),
(1214, 2, 3, 1, 1, 1, 1, '2019-11-30 03:03:18', '2025-11-24 10:08:22'),
(1216, 2, 4, 1, 1, 1, 1, '2019-11-30 03:32:56', '2025-11-24 10:08:22'),
(1218, 2, 128, 0, 1, 0, 1, '2019-11-30 03:37:44', '2025-11-24 10:08:22'),
(1220, 3, 135, 1, 0, 1, 0, '2019-11-30 07:08:56', '2025-11-24 10:08:22'),
(1231, 3, 190, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-11-24 10:08:22'),
(1232, 3, 192, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-11-24 10:08:22'),
(1233, 3, 226, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-11-24 10:08:22'),
(1234, 3, 227, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-11-24 10:08:22'),
(1235, 3, 224, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-11-24 10:08:22'),
(1236, 2, 15, 1, 1, 1, 0, '2019-11-30 03:54:25', '2025-11-24 10:08:22'),
(1239, 2, 122, 1, 0, 0, 0, '2019-11-30 03:57:48', '2025-11-24 10:08:22'),
(1240, 2, 136, 1, 0, 0, 0, '2019-11-30 03:57:48', '2025-11-24 10:08:22'),
(1242, 6, 217, 1, 0, 0, 0, '2019-11-30 04:00:13', '2025-11-24 10:08:22'),
(1243, 6, 224, 1, 0, 0, 0, '2019-11-30 04:00:13', '2025-11-24 10:08:22'),
(1245, 2, 20, 1, 1, 1, 1, '2019-11-30 04:01:28', '2025-11-24 10:08:22'),
(1246, 2, 137, 1, 1, 1, 1, '2019-11-30 04:02:40', '2025-11-24 10:08:22'),
(1248, 2, 141, 1, 1, 1, 1, '2019-11-30 04:04:04', '2025-11-24 10:08:22'),
(1250, 2, 187, 1, 0, 0, 0, '2019-11-30 04:11:19', '2025-11-24 10:08:22'),
(1252, 2, 207, 1, 0, 0, 0, '2019-11-30 04:21:21', '2025-11-24 10:08:22'),
(1253, 2, 208, 1, 0, 1, 0, '2019-11-30 04:22:00', '2025-11-24 10:08:22'),
(1255, 2, 210, 1, 0, 1, 0, '2019-11-30 04:22:58', '2025-11-24 10:08:22'),
(1256, 2, 211, 1, 0, 1, 0, '2019-11-30 04:24:03', '2025-11-24 10:08:22'),
(1257, 2, 21, 1, 0, 0, 0, '2019-11-30 04:32:59', '2025-11-24 10:08:22'),
(1259, 2, 188, 1, 0, 0, 0, '2019-11-30 04:34:35', '2025-11-24 10:08:22'),
(1260, 2, 27, 1, 0, 0, 0, '2019-11-30 04:36:13', '2025-11-24 10:08:22'),
(1262, 2, 43, 1, 1, 1, 1, '2019-11-30 04:39:42', '2025-11-24 10:08:22'),
(1263, 2, 44, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-11-24 10:08:22'),
(1264, 2, 46, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-11-24 10:08:22'),
(1265, 2, 217, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-11-24 10:08:22'),
(1266, 2, 146, 1, 0, 0, 0, '2019-11-30 04:46:35', '2025-11-24 10:08:22'),
(1267, 2, 147, 1, 0, 0, 0, '2019-11-30 04:47:37', '2025-11-24 10:08:22'),
(1269, 2, 164, 1, 0, 0, 0, '2019-11-30 04:51:04', '2025-11-24 10:08:22'),
(1271, 2, 109, 1, 1, 0, 0, '2019-11-30 05:03:37', '2025-11-24 10:08:22'),
(1272, 2, 93, 1, 1, 1, 1, '2019-11-30 05:07:25', '2025-11-24 10:08:22'),
(1273, 2, 94, 1, 1, 0, 0, '2019-11-30 05:07:42', '2025-11-24 10:08:22'),
(1275, 2, 102, 1, 1, 1, 1, '2019-11-30 05:11:22', '2025-11-24 10:08:22'),
(1277, 2, 196, 1, 0, 0, 0, '2019-11-30 05:15:01', '2025-11-24 10:08:22'),
(1278, 2, 195, 1, 0, 0, 0, '2019-11-30 05:19:08', '2025-11-24 10:08:22'),
(1279, 2, 185, 1, 1, 1, 1, '2019-11-30 05:21:44', '2025-11-24 10:08:22'),
(1280, 2, 186, 1, 1, 1, 1, '2019-11-30 05:22:43', '2025-11-24 10:08:22'),
(1281, 2, 222, 1, 0, 1, 0, '2019-11-30 05:24:30', '2025-11-24 10:08:22'),
(1283, 3, 5, 1, 1, 0, 1, '2019-11-30 06:43:04', '2025-11-24 10:08:22'),
(1284, 3, 6, 1, 0, 0, 0, '2019-11-30 06:43:29', '2025-11-24 10:08:22'),
(1285, 3, 7, 1, 1, 1, 1, '2019-11-30 06:44:39', '2025-11-24 10:08:22'),
(1286, 3, 68, 1, 0, 0, 0, '2019-11-30 06:46:58', '2025-11-24 10:08:22'),
(1287, 3, 71, 1, 0, 0, 0, '2019-11-30 07:05:41', '2025-11-24 10:08:22'),
(1288, 3, 73, 1, 0, 0, 0, '2019-11-30 07:05:59', '2025-11-24 10:08:22'),
(1289, 3, 74, 1, 0, 0, 0, '2019-11-30 07:06:08', '2025-11-24 10:08:22'),
(1290, 3, 11, 1, 0, 0, 0, '2019-11-30 07:16:37', '2025-11-24 10:08:22'),
(1291, 3, 12, 1, 1, 1, 1, '2019-11-30 07:19:29', '2025-11-24 10:08:22'),
(1292, 3, 13, 1, 1, 1, 1, '2019-11-30 07:22:27', '2025-11-24 10:08:22'),
(1294, 3, 14, 1, 0, 0, 0, '2019-11-30 07:22:55', '2025-11-24 10:08:22'),
(1295, 3, 31, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1297, 3, 37, 1, 1, 1, 1, '2019-11-30 07:28:09', '2025-11-24 10:08:22'),
(1298, 3, 38, 1, 1, 1, 1, '2019-11-30 07:29:02', '2025-11-24 10:08:22'),
(1299, 3, 39, 1, 1, 1, 1, '2019-11-30 07:30:07', '2025-11-24 10:08:22'),
(1300, 3, 40, 1, 1, 1, 1, '2019-11-30 07:32:43', '2025-11-24 10:08:22'),
(1301, 3, 44, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-11-24 10:08:22'),
(1302, 3, 46, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-11-24 10:08:22'),
(1303, 3, 217, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-11-24 10:08:22'),
(1304, 3, 155, 1, 0, 0, 0, '2019-11-30 07:44:32', '2025-11-24 10:08:22'),
(1305, 3, 156, 1, 0, 0, 0, '2019-11-30 07:45:18', '2025-11-24 10:08:22'),
(1306, 3, 157, 1, 0, 0, 0, '2019-11-30 07:45:42', '2025-11-24 10:08:22'),
(1307, 3, 158, 1, 0, 0, 0, '2019-11-30 07:46:07', '2025-11-24 10:08:22'),
(1308, 3, 159, 1, 0, 0, 0, '2019-11-30 07:46:21', '2025-11-24 10:08:22'),
(1309, 3, 160, 1, 0, 0, 0, '2019-11-30 07:46:33', '2025-11-24 10:08:22'),
(1313, 3, 161, 1, 0, 0, 0, '2019-11-30 07:48:26', '2025-11-24 10:08:22'),
(1314, 3, 162, 1, 0, 0, 0, '2019-11-30 07:48:48', '2025-11-24 10:08:22'),
(1315, 3, 163, 1, 0, 0, 0, '2019-11-30 07:48:48', '2025-11-24 10:08:22'),
(1316, 3, 164, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-11-24 10:08:22'),
(1317, 3, 165, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-11-24 10:08:22'),
(1318, 3, 174, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-11-24 10:08:22'),
(1319, 3, 175, 1, 0, 0, 0, '2019-11-30 07:49:59', '2025-11-24 10:08:22'),
(1320, 3, 181, 1, 0, 0, 0, '2019-11-30 07:50:08', '2025-11-24 10:08:22'),
(1321, 3, 86, 1, 1, 1, 1, '2019-11-30 07:54:08', '2025-11-24 10:08:22'),
(1322, 4, 28, 1, 1, 1, 1, '2019-12-01 00:52:39', '2025-11-24 10:08:22'),
(1324, 4, 29, 1, 0, 0, 0, '2019-12-01 00:53:46', '2025-11-24 10:08:22'),
(1325, 4, 30, 1, 0, 0, 0, '2019-12-01 00:53:59', '2025-11-24 10:08:22'),
(1326, 4, 123, 1, 0, 0, 0, '2019-12-01 00:54:26', '2025-11-24 10:08:22'),
(1327, 4, 228, 1, 0, 0, 0, '2019-12-01 00:54:39', '2025-11-24 10:08:22'),
(1328, 4, 43, 1, 1, 1, 1, '2019-12-01 00:58:05', '2025-11-24 10:08:22'),
(1332, 4, 44, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-11-24 10:08:22'),
(1333, 4, 46, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-11-24 10:08:22'),
(1334, 4, 217, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-11-24 10:08:22'),
(1335, 4, 178, 1, 0, 0, 0, '2019-12-01 00:59:59', '2025-11-24 10:08:22'),
(1336, 4, 179, 1, 0, 0, 0, '2019-12-01 01:00:11', '2025-11-24 10:08:22'),
(1337, 4, 180, 1, 0, 0, 0, '2019-12-01 01:00:29', '2025-11-24 10:08:22'),
(1338, 4, 221, 1, 0, 0, 0, '2019-12-01 01:00:46', '2025-11-24 10:08:22'),
(1339, 4, 86, 1, 0, 0, 0, '2019-12-01 01:01:02', '2025-11-24 10:08:22'),
(1341, 4, 106, 1, 0, 0, 0, '2019-12-01 01:05:21', '2025-11-24 10:08:22'),
(1342, 1, 107, 1, 0, 0, 0, '2019-12-01 01:06:44', '2025-11-24 10:08:22'),
(1343, 4, 117, 1, 0, 0, 0, '2019-12-01 01:10:20', '2025-11-24 10:08:22'),
(1344, 4, 194, 1, 0, 0, 0, '2019-12-01 01:11:35', '2025-11-24 10:08:22'),
(1348, 4, 230, 1, 0, 0, 0, '2019-12-01 01:19:15', '2025-11-24 10:08:22'),
(1350, 6, 1, 1, 0, 0, 0, '2019-12-01 01:35:32', '2025-11-24 10:08:22'),
(1351, 6, 21, 1, 0, 0, 0, '2019-12-01 01:36:29', '2025-11-24 10:08:22'),
(1352, 6, 23, 1, 0, 0, 0, '2019-12-01 01:36:45', '2025-11-24 10:08:22'),
(1353, 6, 24, 1, 0, 0, 0, '2019-12-01 01:37:05', '2025-11-24 10:08:22'),
(1354, 6, 25, 1, 0, 0, 0, '2019-12-01 01:37:34', '2025-11-24 10:08:22'),
(1355, 6, 77, 1, 0, 0, 0, '2019-12-01 01:38:08', '2025-11-24 10:08:22'),
(1356, 6, 188, 1, 0, 0, 0, '2019-12-01 01:38:45', '2025-11-24 10:08:22'),
(1357, 6, 43, 1, 1, 1, 1, '2019-12-01 01:40:44', '2025-11-24 10:08:22'),
(1358, 6, 78, 1, 1, 1, 1, '2019-12-01 01:43:04', '2025-11-24 10:08:22'),
(1360, 6, 79, 1, 1, 0, 1, '2019-12-01 01:44:39', '2025-11-24 10:08:22'),
(1361, 6, 80, 1, 1, 1, 1, '2019-12-01 01:45:08', '2025-11-24 10:08:22'),
(1362, 6, 81, 1, 1, 1, 1, '2019-12-01 01:47:50', '2025-11-24 10:08:22'),
(1363, 6, 85, 1, 1, 1, 1, '2019-12-01 01:50:43', '2025-11-24 10:08:22'),
(1364, 6, 86, 1, 0, 0, 0, '2019-12-01 01:51:10', '2025-11-24 10:08:22'),
(1365, 6, 106, 1, 0, 0, 0, '2019-12-01 01:52:55', '2025-11-24 10:08:22'),
(1366, 6, 117, 1, 0, 0, 0, '2019-12-01 01:53:08', '2025-11-24 10:08:22'),
(1394, 1, 106, 1, 0, 0, 0, '2019-12-02 05:20:33', '2025-11-24 10:08:22'),
(1395, 1, 113, 1, 0, 0, 0, '2019-12-02 05:20:59', '2025-11-24 10:08:22'),
(1396, 1, 114, 1, 0, 0, 0, '2019-12-02 05:21:34', '2025-11-24 10:08:22'),
(1397, 1, 115, 1, 0, 0, 0, '2019-12-02 05:21:34', '2025-11-24 10:08:22'),
(1398, 1, 116, 1, 0, 0, 0, '2019-12-02 05:21:54', '2025-11-24 10:08:22'),
(1399, 1, 117, 1, 0, 0, 0, '2019-12-02 05:22:04', '2025-11-24 10:08:22'),
(1400, 1, 118, 1, 0, 0, 0, '2019-12-02 05:22:20', '2025-11-24 10:08:22'),
(1402, 1, 191, 1, 0, 0, 0, '2019-12-02 05:23:34', '2025-11-24 10:08:22'),
(1403, 1, 192, 1, 0, 0, 0, '2019-12-02 05:23:47', '2025-11-24 10:08:22'),
(1404, 1, 193, 1, 0, 0, 0, '2019-12-02 05:23:58', '2025-11-24 10:08:22'),
(1405, 1, 194, 1, 0, 0, 0, '2019-12-02 05:24:11', '2025-11-24 10:08:22'),
(1406, 1, 195, 1, 0, 0, 0, '2019-12-02 05:24:20', '2025-11-24 10:08:22'),
(1408, 1, 227, 1, 0, 0, 0, '2019-12-02 05:25:47', '2025-11-24 10:08:22'),
(1410, 1, 226, 1, 0, 0, 0, '2019-12-02 05:31:41', '2025-11-24 10:08:22'),
(1411, 1, 229, 1, 0, 0, 0, '2019-12-02 05:32:57', '2025-11-24 10:08:22'),
(1412, 1, 230, 1, 0, 0, 0, '2019-12-02 05:32:57', '2025-11-24 10:08:22'),
(1413, 1, 190, 1, 0, 0, 0, '2019-12-02 05:43:41', '2025-11-24 10:08:22'),
(1414, 2, 174, 1, 0, 0, 0, '2019-12-02 05:54:37', '2025-11-24 10:08:22'),
(1415, 2, 175, 1, 0, 0, 0, '2019-12-02 05:54:37', '2025-11-24 10:08:22'),
(1418, 2, 232, 1, 0, 1, 1, '2019-12-02 06:11:27', '2025-11-24 10:08:22'),
(1419, 2, 231, 1, 0, 0, 0, '2019-12-02 06:12:28', '2025-11-24 10:08:22'),
(1420, 1, 231, 1, 1, 1, 1, '2021-01-23 07:09:32', '2025-11-24 10:08:22'),
(1421, 1, 232, 1, 0, 1, 1, '2019-12-02 06:19:32', '2025-11-24 10:08:22'),
(1422, 3, 32, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1423, 3, 33, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1424, 3, 34, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1425, 3, 182, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1426, 3, 183, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1427, 3, 189, 1, 0, 1, 1, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1428, 3, 229, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1429, 3, 230, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-11-24 10:08:22'),
(1430, 4, 213, 1, 0, 0, 0, '2019-12-02 06:32:14', '2025-11-24 10:08:22'),
(1432, 4, 224, 1, 0, 0, 0, '2019-12-02 06:32:14', '2025-11-24 10:08:22'),
(1433, 4, 195, 1, 0, 0, 0, '2019-12-03 04:57:53', '2025-11-24 10:08:22'),
(1434, 4, 229, 1, 0, 0, 0, '2019-12-03 04:58:19', '2025-11-24 10:08:22'),
(1436, 6, 213, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-11-24 10:08:22'),
(1437, 6, 191, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-11-24 10:08:22'),
(1438, 6, 193, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-11-24 10:08:22'),
(1439, 6, 230, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-11-24 10:08:22'),
(1440, 2, 106, 1, 0, 0, 0, '2020-01-25 04:21:36', '2025-11-24 10:08:22'),
(1441, 2, 107, 1, 0, 0, 0, '2020-02-12 02:10:13', '2025-11-24 10:08:22'),
(1442, 2, 134, 1, 1, 1, 1, '2020-02-12 02:12:36', '2025-11-24 10:08:22'),
(1443, 1, 233, 1, 0, 0, 0, '2020-02-12 02:21:57', '2025-11-24 10:08:22'),
(1444, 2, 86, 1, 0, 0, 0, '2020-02-12 02:22:33', '2025-11-24 10:08:22'),
(1445, 3, 233, 1, 0, 0, 0, '2020-02-12 03:51:17', '2025-11-24 10:08:22'),
(1446, 1, 234, 1, 1, 1, 1, '2020-06-01 21:51:09', '2025-11-24 10:08:22'),
(1447, 1, 235, 1, 1, 1, 1, '2020-05-29 23:17:01', '2025-11-24 10:08:22'),
(1448, 1, 236, 1, 1, 1, 0, '2020-05-29 23:17:52', '2025-11-24 10:08:22'),
(1449, 1, 237, 1, 0, 1, 0, '2020-05-29 23:18:18', '2025-11-24 10:08:22'),
(1450, 1, 238, 1, 1, 1, 1, '2020-05-29 23:19:52', '2025-11-24 10:08:22'),
(1451, 1, 239, 1, 1, 1, 1, '2020-05-29 23:22:10', '2025-11-24 10:08:22'),
(1452, 2, 236, 1, 1, 1, 0, '2020-05-29 23:40:33', '2025-11-24 10:08:22'),
(1453, 2, 237, 1, 0, 1, 0, '2020-05-29 23:40:33', '2025-11-24 10:08:22'),
(1454, 2, 238, 1, 1, 1, 1, '2020-05-29 23:40:33', '2025-11-24 10:08:22'),
(1455, 2, 239, 1, 1, 1, 1, '2020-05-29 23:40:33', '2025-11-24 10:08:22'),
(1456, 2, 240, 1, 0, 0, 0, '2020-05-28 20:51:18', '2025-11-24 10:08:22'),
(1457, 2, 241, 1, 0, 0, 0, '2020-05-28 20:51:18', '2025-11-24 10:08:22'),
(1458, 1, 240, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-11-24 10:08:22'),
(1459, 1, 241, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-11-24 10:08:22'),
(1460, 1, 242, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-11-24 10:08:22'),
(1461, 2, 242, 1, 0, 0, 0, '2020-06-11 22:45:24', '2025-11-24 10:08:22'),
(1462, 3, 242, 1, 0, 0, 0, '2020-06-14 22:46:54', '2025-11-24 10:08:22'),
(1463, 6, 242, 1, 0, 0, 0, '2020-06-14 22:48:14', '2025-11-24 10:08:22'),
(1464, 1, 243, 1, 0, 0, 0, '2020-09-12 06:05:45', '2025-11-24 10:08:22'),
(1465, 1, 109, 1, 1, 0, 0, '2020-09-21 06:33:50', '2025-11-24 10:08:22'),
(1466, 1, 108, 1, 0, 1, 1, '2023-11-04 12:52:08', '2025-11-24 10:08:22'),
(1467, 1, 244, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-11-24 10:08:22'),
(1468, 1, 245, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-11-24 10:08:22'),
(1469, 1, 246, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-11-24 10:08:22'),
(1470, 1, 247, 1, 0, 0, 0, '2021-01-07 06:12:14', '2025-11-24 10:08:22'),
(1472, 2, 247, 1, 0, 0, 0, '2021-01-21 12:46:40', '2025-11-24 10:08:22'),
(1473, 1, 248, 1, 1, 1, 1, '2021-05-19 12:52:49', '2025-11-24 10:08:22'),
(1474, 1, 249, 1, 0, 0, 0, '2021-05-19 12:52:49', '2025-11-24 10:08:22'),
(1475, 2, 248, 1, 1, 1, 1, '2021-05-28 13:11:52', '2025-11-24 10:08:22'),
(1476, 3, 248, 1, 1, 1, 1, '2021-05-28 09:36:16', '2025-11-24 10:08:22'),
(1477, 3, 249, 1, 0, 0, 0, '2021-05-28 09:36:16', '2025-11-24 10:08:22'),
(1478, 6, 248, 1, 0, 0, 0, '2021-05-28 09:56:14', '2025-11-24 10:08:22'),
(1479, 6, 249, 1, 0, 0, 0, '2021-05-28 09:56:14', '2025-11-24 10:08:22'),
(1480, 2, 249, 1, 0, 0, 0, '2021-05-28 13:11:52', '2025-11-24 10:08:22'),
(1481, 1, 269, 1, 0, 0, 1, '2023-11-04 12:52:08', '2025-11-24 10:08:22'),
(1482, 2, 269, 1, 0, 0, 1, '2023-11-04 12:52:28', '2025-11-24 10:08:22'),
(1483, 3, 269, 1, 0, 0, 1, '2023-11-04 12:53:22', '2025-11-24 10:08:22'),
(1484, 4, 269, 1, 0, 0, 1, '2023-11-04 12:53:34', '2025-11-24 10:08:22'),
(1485, 6, 269, 1, 0, 0, 1, '2023-11-04 12:53:52', '2025-11-24 10:08:22'),
(1486, 1, 255, 1, 1, 1, 1, '2025-11-26 05:02:47', '2025-11-26 05:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `route_pickup_point`
--

CREATE TABLE `route_pickup_point` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `transport_route_id` int NOT NULL,
  `pickup_point_id` int NOT NULL,
  `fees` float(10,2) DEFAULT '0.00',
  `destination_distance` float(10,1) DEFAULT '0.0',
  `pickup_time` time DEFAULT NULL,
  `order_number` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `route_pickup_point`
--

INSERT INTO `route_pickup_point` (`id`, `session_id`, `transport_route_id`, `pickup_point_id`, `fees`, `destination_distance`, `pickup_time`, `order_number`, `created_at`, `updated_at`) VALUES
(1, 20, 13, 1, 3000.00, 30.0, '07:25:00', 1, '2025-12-07 05:56:17', '2025-12-07 05:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `school_houses`
--

CREATE TABLE `school_houses` (
  `id` int NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `school_houses`
--

INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Red', '', 'yes', '2025-12-07 06:17:50', '2025-12-07 06:17:50'),
(2, 'Green', '', 'yes', '2025-12-07 06:18:00', '2025-12-07 06:18:00'),
(3, 'Yellow', '', 'yes', '2025-12-07 06:18:05', '2025-12-07 06:18:05'),
(4, 'Blue', '', 'yes', '2025-12-07 06:18:10', '2025-12-07 06:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int NOT NULL,
  `base_url` varchar(500) DEFAULT NULL,
  `folder_path` text,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int DEFAULT '0',
  `biometric_device` text,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `lang_id` int DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` varchar(100) DEFAULT '0',
  `collect_back_date_fees` int NOT NULL,
  `single_page_print` int DEFAULT '0',
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `currency_format` varchar(20) DEFAULT NULL,
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int NOT NULL DEFAULT '0',
  `low_attendance_limit` float(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `admin_login_page_background` varchar(255) NOT NULL,
  `user_login_page_background` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int DEFAULT '0',
  `adm_auto_insert` int NOT NULL DEFAULT '1',
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int NOT NULL DEFAULT '6',
  `adm_update_status` int NOT NULL DEFAULT '0',
  `staffid_auto_insert` int NOT NULL DEFAULT '1',
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int NOT NULL DEFAULT '6',
  `staffid_update_status` int NOT NULL DEFAULT '0',
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int DEFAULT '0',
  `online_admission_payment` varchar(50) NOT NULL,
  `online_admission_amount` float NOT NULL,
  `online_admission_instruction` text NOT NULL,
  `online_admission_conditions` text NOT NULL,
  `online_admission_application_form` varchar(255) DEFAULT NULL,
  `exam_result` int NOT NULL,
  `is_blood_group` int NOT NULL DEFAULT '1',
  `is_student_house` int NOT NULL DEFAULT '1',
  `roll_no` int NOT NULL DEFAULT '1',
  `category` int NOT NULL,
  `religion` int NOT NULL DEFAULT '1',
  `cast` int NOT NULL DEFAULT '1',
  `mobile_no` int NOT NULL DEFAULT '1',
  `student_email` int NOT NULL DEFAULT '1',
  `admission_date` int NOT NULL DEFAULT '1',
  `lastname` int NOT NULL,
  `middlename` int NOT NULL DEFAULT '1',
  `student_photo` int NOT NULL DEFAULT '1',
  `student_height` int NOT NULL DEFAULT '1',
  `student_weight` int NOT NULL DEFAULT '1',
  `measurement_date` int NOT NULL DEFAULT '1',
  `father_name` int NOT NULL DEFAULT '1',
  `father_phone` int NOT NULL DEFAULT '1',
  `father_occupation` int NOT NULL DEFAULT '1',
  `father_pic` int NOT NULL DEFAULT '1',
  `mother_name` int NOT NULL DEFAULT '1',
  `mother_phone` int NOT NULL DEFAULT '1',
  `mother_occupation` int NOT NULL DEFAULT '1',
  `mother_pic` int NOT NULL DEFAULT '1',
  `guardian_name` int NOT NULL,
  `guardian_relation` int NOT NULL DEFAULT '1',
  `guardian_phone` int NOT NULL,
  `guardian_email` int NOT NULL DEFAULT '1',
  `guardian_pic` int NOT NULL DEFAULT '1',
  `guardian_occupation` int NOT NULL,
  `guardian_address` int NOT NULL DEFAULT '1',
  `current_address` int NOT NULL DEFAULT '1',
  `permanent_address` int NOT NULL DEFAULT '1',
  `route_list` int NOT NULL DEFAULT '1',
  `hostel_id` int NOT NULL DEFAULT '1',
  `bank_account_no` int NOT NULL DEFAULT '1',
  `ifsc_code` int NOT NULL,
  `bank_name` int NOT NULL,
  `national_identification_no` int NOT NULL DEFAULT '1',
  `local_identification_no` int NOT NULL DEFAULT '1',
  `rte` int NOT NULL DEFAULT '1',
  `previous_school_details` int NOT NULL DEFAULT '1',
  `student_note` int NOT NULL DEFAULT '1',
  `upload_documents` int NOT NULL DEFAULT '1',
  `student_barcode` int NOT NULL DEFAULT '1',
  `staff_designation` int NOT NULL DEFAULT '1',
  `staff_department` int NOT NULL DEFAULT '1',
  `staff_last_name` int NOT NULL DEFAULT '1',
  `staff_father_name` int NOT NULL DEFAULT '1',
  `staff_mother_name` int NOT NULL DEFAULT '1',
  `staff_date_of_joining` int NOT NULL DEFAULT '1',
  `staff_phone` int NOT NULL DEFAULT '1',
  `staff_emergency_contact` int NOT NULL DEFAULT '1',
  `staff_marital_status` int NOT NULL DEFAULT '1',
  `staff_photo` int NOT NULL DEFAULT '1',
  `staff_current_address` int NOT NULL DEFAULT '1',
  `staff_permanent_address` int NOT NULL DEFAULT '1',
  `staff_qualification` int NOT NULL DEFAULT '1',
  `staff_work_experience` int NOT NULL DEFAULT '1',
  `staff_note` int NOT NULL DEFAULT '1',
  `staff_epf_no` int NOT NULL DEFAULT '1',
  `staff_basic_salary` int NOT NULL DEFAULT '1',
  `staff_contract_type` int NOT NULL DEFAULT '1',
  `staff_work_shift` int NOT NULL DEFAULT '1',
  `staff_work_location` int NOT NULL DEFAULT '1',
  `staff_leaves` int NOT NULL DEFAULT '1',
  `staff_account_details` int NOT NULL DEFAULT '1',
  `staff_social_media` int NOT NULL DEFAULT '1',
  `staff_upload_documents` int NOT NULL DEFAULT '1',
  `staff_barcode` int NOT NULL DEFAULT '1',
  `staff_notification_email` varchar(50) NOT NULL,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `admin_mobile_api_url` tinytext NOT NULL,
  `admin_app_primary_color_code` varchar(20) NOT NULL,
  `admin_app_secondary_color_code` varchar(20) NOT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int NOT NULL DEFAULT '0',
  `start_week` varchar(10) NOT NULL,
  `my_question` int NOT NULL,
  `superadmin_restriction` varchar(20) NOT NULL,
  `student_timeline` varchar(20) NOT NULL,
  `calendar_event_reminder` int DEFAULT NULL,
  `event_reminder` varchar(20) NOT NULL,
  `student_login` varchar(100) DEFAULT NULL,
  `parent_login` varchar(100) DEFAULT NULL,
  `student_panel_login` int NOT NULL DEFAULT '1',
  `parent_panel_login` int NOT NULL DEFAULT '1',
  `is_student_feature_lock` int NOT NULL DEFAULT '0',
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `lock_grace_period` int NOT NULL DEFAULT '0',
  `is_offline_fee_payment` int NOT NULL DEFAULT '0',
  `offline_bank_payment_instruction` text NOT NULL,
  `scan_code_type` varchar(50) NOT NULL DEFAULT 'barcode',
  `student_resume_download` int NOT NULL DEFAULT '1',
  `download_admit_card` int NOT NULL DEFAULT '0',
  `fees_discount` int NOT NULL,
  `front_side_whatsapp` int NOT NULL DEFAULT '0',
  `front_side_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `front_side_whatsapp_from` time DEFAULT NULL,
  `front_side_whatsapp_to` time DEFAULT NULL,
  `admin_panel_whatsapp` int NOT NULL DEFAULT '0',
  `admin_panel_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `admin_panel_whatsapp_from` time DEFAULT NULL,
  `admin_panel_whatsapp_to` time DEFAULT NULL,
  `student_panel_whatsapp` int NOT NULL DEFAULT '0',
  `student_panel_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `student_panel_whatsapp_from` time DEFAULT NULL,
  `student_panel_whatsapp_to` time DEFAULT NULL,
  `saas_key` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `base_url`, `folder_path`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `collect_back_date_fees`, `single_page_print`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `currency_format`, `class_teacher`, `start_month`, `attendence_type`, `low_attendance_limit`, `image`, `admin_logo`, `admin_small_logo`, `admin_login_page_background`, `user_login_page_background`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `online_admission_payment`, `online_admission_amount`, `online_admission_instruction`, `online_admission_conditions`, `online_admission_application_form`, `exam_result`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `student_barcode`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `staff_barcode`, `staff_notification_email`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `admin_mobile_api_url`, `admin_app_primary_color_code`, `admin_app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `superadmin_restriction`, `student_timeline`, `calendar_event_reminder`, `event_reminder`, `student_login`, `parent_login`, `student_panel_login`, `parent_panel_login`, `is_student_feature_lock`, `maintenance_mode`, `lock_grace_period`, `is_offline_fee_payment`, `offline_bank_payment_instruction`, `scan_code_type`, `student_resume_download`, `download_admit_card`, `fees_discount`, `front_side_whatsapp`, `front_side_whatsapp_mobile`, `front_side_whatsapp_from`, `front_side_whatsapp_to`, `admin_panel_whatsapp`, `admin_panel_whatsapp_mobile`, `admin_panel_whatsapp_from`, `admin_panel_whatsapp_to`, `student_panel_whatsapp`, `student_panel_whatsapp_mobile`, `student_panel_whatsapp_from`, `student_panel_whatsapp_to`, `saas_key`, `created_at`, `updated_at`) VALUES
(1, 'http://school.aarshilearning.com/starspreschool/', '/var/www/html/starspreschool/', 'Star School', 0, '', 'star@preschool.com', '9849333996', 'Miyapur', 4, '[\"4\"]', '001', 'm/d/Y', '12-hour', '68', '$', 'disabled', '0', 0, 0, 'UTC', 20, '', 'after_number', '#,###.##', 'no', '4', 0, 0.00, '1.png', '1.png', '1.png', '1663064530-1070210809632059d2b8b0b!1662796232-1721792380631c41c80d038!login_bg3.jpg', '1663065284-93117584263205cc49769c!1662964519-2099955753631ed327d0ffa!login_bg5.jpg', 'gray.jpg', 60, 1, 'EDUFEEZ', '0001', 4, 1, 1, 'EDUFEEZSTAFF', '001', 3, 1, 'no', 0, '', 0, '', '<p>&nbsp;Please enter your institution online admission terms & conditions here.</p>', NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '', '#424242', '#eeeeee', '', '', '', '1.png', 0, 'Monday', 0, 'enabled', 'disabled', 0, 'disabled', 'null', 'null', 1, 1, 0, 0, 0, 0, '', 'qrcode', 1, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-12-30 06:44:20', '2025-12-25 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', 'no', '2025-11-24 12:55:34', '2025-11-24 12:55:34'),
(2, 'B', 'no', '2025-11-24 12:57:26', '2025-11-24 12:57:26'),
(3, 'C', 'no', '2025-12-06 14:24:55', '2025-12-06 14:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `message` text,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `attachment`, `message`, `visible_student`, `visible_staff`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Christ mas', '2025-12-14', '2025-12-23', NULL, '<p>\r\n\r\nChristmas & New Year Celebrations\r\n\r\n<br></p>', 'Yes', 'Yes', 'Yes', 'Admin', 2, 'no', '2025-12-02 07:43:43', '2025-12-02 07:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int NOT NULL,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 06:42:19', '0000-00-00 00:00:00'),
(11, '2017-18', 'no', '2017-04-20 06:41:37', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `share_contents`
--

CREATE TABLE `share_contents` (
  `id` int NOT NULL,
  `send_to` varchar(50) DEFAULT NULL,
  `title` text,
  `share_date` date DEFAULT NULL,
  `valid_upto` date DEFAULT NULL,
  `description` text,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `share_content_for`
--

CREATE TABLE `share_content_for` (
  `id` int NOT NULL,
  `group_id` varchar(20) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `user_parent_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `share_content_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `share_upload_contents`
--

CREATE TABLE `share_upload_contents` (
  `id` int NOT NULL,
  `upload_content_id` int DEFAULT NULL,
  `share_content_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `permission_group_id` int DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `activate_menu` varchar(100) DEFAULT NULL,
  `lang_key` varchar(250) NOT NULL,
  `system_level` int DEFAULT '0',
  `level` int DEFAULT NULL,
  `sidebar_display` int DEFAULT '0',
  `access_permissions` text,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`id`, `product_name`, `permission_group_id`, `icon`, `menu`, `activate_menu`, `lang_key`, `system_level`, `level`, `sidebar_display`, `access_permissions`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '', 17, 'fa fa-ioxhost ftlayer', 'Front Office', 'front_office', 'front_office', 10, 1, 1, '(\'admission_enquiry\', \'can_view\') || (\'visitor_book\', \'can_view\') ||       (\'phon_call_log\', \'can_view\') ||  (\'postal_dispatch\', \'can_view\') ||       (\'postal_receive\', \'can_view\') || (\'complaint\', \'can_view\') ||(\'setup_font_office\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-12-07 04:53:13'),
(2, '', 1, 'fa fa-user-plus ftlayer', 'Student Information', 'student_information', 'student_information', 20, 2, 1, '(\'student\', \'can_view\') || (\'student\', \'can_add\') || (\'student_history\', \'can_view\') || (\'student_categories\', \'can_view\') || (\'student_houses\', \'can_view\') || (\'disable_student\', \'can_view\') || (\'disable_reason\', \'can_view\') || (\'online_admission\', \'can_view\') || (\'multiclass_student\', \'can_view\') || (\'disable_reason\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-11-24 10:08:22'),
(3, '', 2, 'fa fa-money ftlayer', 'Fees Collection', 'fees_collection', 'fees_collection', 30, 3, 1, '(\'collect_fees\', \'can_view\') || (\'search_fees_payment\', \'can_view\') || (\'search_due_fees\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'fees_carry_forward\', \'can_view\') || (\'fees_master\', \'can_view\') || (\'fees_group\', \'can_view\') || (\'fees_type\', \'can_view\') || (\'fees_discount\', \'can_view\') || (\'accountants\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-11-24 10:08:22'),
(4, '', 3, 'fa fa-usd ftlayer', 'Income', 'income', 'income', 40, 10, 1, '(\'income\', \'can_view\') || (\'search_income\', \'can_view\') || (\'income_head\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-12-07 04:53:22'),
(7, '', 4, 'fa fa-credit-card ftlayer', 'Expense', 'expense', 'expenses', 50, 11, 1, '(\'expense\', \'can_view\') || (\'search_expense\', \'can_view\') || (\'expense_head\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-12-07 04:53:26'),
(10, '', 5, 'fa fa-calendar-check-o ftlayer', 'Attendance', 'attendance', 'attendance', 60, 13, 1, '(\'student_attendance\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(11, '', 6, 'fa fa-map-o ftlayer', 'Examinations', 'examinations', 'examinations', 70, 12, 1, '(\'exam_group\', \'can_view\') || (\'exam_result\', \'can_view\') || (\'design_admit_card\', \'can_view\') || (\'print_admit_card\', \'can_view\') || (\'design_marksheet\', \'can_view\') || (\'print_marksheet\', \'can_view\') || (\'marks_grade\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(12, '', 23, 'fa fa-rss ftlayer', 'Online Examinations', 'online_examinations', 'online_examinations', 80, 14, 1, '(\'online_examination\', \'can_view\') ||  (\'question_bank\', \'can_view\'', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(13, '', 29, 'fa fa-list-alt ftlayer', 'Lesson Plan', 'lesson_plan', 'lesson_plan', 90, 16, 1, '(\'manage_lesson_plan\', \'can_view\') || (\'manage_syllabus_status\', \'can_view\') || (\'lesson\', \'can_view\') ||  (\'topic\', \'can_view\')||  (\'copy_old_lesson\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(14, '', 7, 'fa fa-mortar-board ftlayer', 'Academics', 'academics', 'academics', 100, 15, 1, '(\'class_timetable\', \'can_view\') || (\'teachers_timetable\', \'can_view\') || (\'assign_class_teacher\', \'can_view\') || (\'promote_student\', \'can_view\') || (\'subject_group\', \'can_view\') || (\'section\', \'can_view\') || (\'subject\', \'can_view\') || (\'class\', \'can_view\') || (\'section\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(15, '', 18, 'fa fa-sitemap ftlayer', 'Human Resource', 'human_resource', 'human_resource', 110, 17, 1, '(\'staff\', \'can_view\') || (\'approve_leave_request\', \'can_view\') || (\'apply_leave\', \'can_view\') || (\'leave_types\', \'can_view\') || (\'teachers_rating\', \'can_view\') || (\'department\', \'can_view\') || (\'designation\', \'can_view\') || (\'disable_staff\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(16, '', 13, 'fa fa-bullhorn ftlayer', 'Communicate', 'communicate', 'communicate', 120, 18, 1, '(\'notice_board\', \'can_view\') || (\'email\', \'can_view\') || (\'sms\', \'can_view\') || (\'email_sms_log\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(17, '', 8, 'fa fa-download ftlayer', 'Download Center', 'download_center', 'download_center', 130, 19, 1, '(\'upload_content\', \'can_view\') || (\'video_tutorial\', \'can_view\') || (\'content_type\', \'can_view\') || (\'content_share_list\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-12-07 04:53:38'),
(18, '', 19, 'fa fa-flask ftlayer', 'Homework', 'homework', 'homework', 140, 20, 1, '(\'homework\', \'can_view\') || (\'homework\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(19, '', 9, 'fa fa-book ftlayer', 'Library', 'library', 'library', 150, 21, 1, '(\'books\', \'can_view\') || (\'issue_return\', \'can_view\') || (\'add_staff_member\', \'can_view\') || (\'add_student\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(20, '', 10, 'fa fa-object-group ftlayer', 'Inventory', 'inventory', 'inventory', 160, 22, 1, '(\'issue_item\', \'can_view\') || (\'item_stock\', \'can_view\') || (\'item\', \'can_view\') || (\'item_category\', \'can_view\') || (\'item_category\', \'can_view\') || (\'store\', \'can_view\') || (\'supplier\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(21, '', 11, 'fa fa-bus ftlayer', 'Transport', 'transport', 'transport', 170, 23, 1, '(\'routes\', \'can_view\') || (\'vehicle\', \'can_view\') || (\'assign_vehicle\', \'can_view\') || (\'transport_fees_master\', \'can_view\') || (\'pickup_point\', \'can_view\') || (\'route_pickup_point\', \'can_view\') || (\'student_transport_fees\', \'can_view\')      ', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(22, '', 12, 'fa fa-building-o ftlayer', 'Hostel', 'hostel', 'hostel', 180, 24, 1, '(\'hostel_rooms\', \'can_view\') || (\'room_type\', \'can_view\') || (\'hostel\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(23, '', 20, 'fa fa-newspaper-o ftlayer', 'Certificate', 'certificate', 'certificate', 190, 25, 1, '(\'student_certificate\', \'can_view\') || (\'generate_certificate\', \'can_view\') || (\'student_id_card\', \'can_view\') || (\'generate_id_card\', \'can_view\') || (\'staff_id_card\', \'can_view\') || (\'generate_staff_id_card\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(24, '', 16, 'fa fa-empire ftlayer', 'Front CMS', 'front_cms', 'front_cms', 200, 26, 1, '(\'event\', \'can_view\') || (\'gallery\', \'can_view\') || (\'notice\', \'can_view\') || (\'media_manager\', \'can_view\') || (\'pages\', \'can_view\') || (\'menus\', \'can_view\') || (\'banner_images\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-12-07 04:53:34'),
(25, '', 28, 'fa fa-universal-access ftlayer', 'Alumni', 'alumni', 'alumni', 210, 27, 1, '(\'manage_alumni\', \'can_view\') || (\'events\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-12-07 04:53:30'),
(26, '', 14, 'fa fa-line-chart ftlayer', 'Reports', 'reports', 'reports', 220, 28, 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\') || (\'exam_marks_report\', \'can_view\') ||        (\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'transport_report\', \'can_view\') || (\'hostel_report\', \'can_view\') || (\'audit_trail_report\', \'can_view\') || (\'user_log\', \'can_view\') || (\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\') || (\'stock_report\', \'can_view\') ||      (\'add_item_report\', \'can_view\') || (\'issue_inventory_report\', \'can_view\') || (\'syllabus_status_report\', \'can_view\') ||    (\'teacher_syllabus_status_report\', \'can_view\') || (\'daily_collection_report\', \'can_view\') || (\'balance_fees_statement\', \'can_view\') || (\'balance_fees_report_with_remark\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(27, '', 15, 'fa fa-gears ftlayer', 'System Settings', 'system_settings', 'system_setting', 230, 29, 1, '(\'general_setting\', \'can_view\') || (\'session_setting\', \'can_view\') || (\'notification_setting\', \'can_view\') || (\'sms_setting\', \'can_view\') || (\'email_setting\', \'can_view\') || (\'payment_methods\', \'can_view\') || (\'languages\', \'can_view\') || (\'user_status\', \'can_view\') || (\'backup_restore\', \'can_view\') || (\'print_header_footer\', \'can_view\') || (\'backup\', \'can_view\') || (\'front_cms_setting\', \'can_view\') || (\'custom_fields\', \'can_view\') || (\'system_fields\', \'can_view\') || (\'student_profile_update\', \'can_view\') || (\'currency\', \'can_view\') || (\'language_switcher\', \'can_view\') || (\'sidebar_menu\', \'can_view\') || (\'online_admission\', \'can_view\')\r\n', 1, '2023-01-10 12:49:37', '2025-11-24 10:08:22'),
(36, '', 30, 'fa fa-calendar', 'Annual Calendar', 'holiday', 'annual_calendar', 240, 16, 1, '(\'annual_calendar\', \'can_view\')\r\n', 1, '2025-01-18 09:15:03', '2025-11-24 10:08:22'),
(37, '', 31, 'fa fa-ioxhost ftlayer', 'Student CV', 'student_cv', 'student_cv', 1, 23, 1, '(\'download_cv\', \'can_view\') || (\'build_cv\', \'can_view\') || (\'resume_setting\', \'can_view\') || (\'student_resume_details\', \'can_view\')', 1, '2025-01-18 09:15:07', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_sub_menus`
--

CREATE TABLE `sidebar_sub_menus` (
  `id` int NOT NULL,
  `sidebar_menu_id` int DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `lang_key` varchar(250) DEFAULT NULL,
  `url` text,
  `level` int DEFAULT NULL,
  `access_permissions` varchar(500) DEFAULT NULL,
  `permission_group_id` int DEFAULT NULL,
  `activate_controller` varchar(100) DEFAULT NULL COMMENT 'income',
  `activate_methods` varchar(500) DEFAULT NULL COMMENT 'index,edit',
  `addon_permission` varchar(100) DEFAULT NULL,
  `is_active` int DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sidebar_sub_menus`
--

INSERT INTO `sidebar_sub_menus` (`id`, `sidebar_menu_id`, `menu`, `key`, `lang_key`, `url`, `level`, `access_permissions`, `permission_group_id`, `activate_controller`, `activate_methods`, `addon_permission`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'admission_enquiry', NULL, 'admission_enquiry', 'admin/enquiry', 1, '(\'admission_enquiry\', \'can_view\')', NULL, 'enquiry', 'index', NULL, 1, '2022-07-11 12:04:46', '2025-11-24 10:08:22'),
(2, 1, 'visitor_book', NULL, 'visitor_book', 'admin/visitors', 2, '(\'visitor_book\', \'can_view\')', NULL, 'visitors', 'index', NULL, 1, '2022-07-11 12:04:46', '2025-11-24 10:08:22'),
(3, 1, 'phone_call_log', NULL, 'phone_call_log', 'admin/generalcall', 3, '(\'phone_call_log\', \'can_view\')', NULL, 'generalcall', 'index,edit', NULL, 1, '2022-05-10 11:40:07', '2025-11-24 10:08:22'),
(4, 1, 'postal_dispatch', NULL, 'postal_dispatch', 'admin/dispatch', 4, '(\'postal_dispatch\', \'can_view\')', NULL, 'dispatch', 'index,editdispatch', NULL, 1, '2022-05-10 11:40:09', '2025-11-24 10:08:22'),
(5, 1, 'postal_receive', NULL, 'postal_receive', 'admin/receive', 5, '(\'postal_receive\', \'can_view\')', NULL, 'receive', 'index,editreceive', NULL, 1, '2022-05-10 11:40:09', '2025-11-24 10:08:22'),
(6, 1, 'complain', NULL, 'complain', 'admin/complaint', 6, '(\'complaint\', \'can_view\')', NULL, 'complaint', 'index,edit', NULL, 1, '2022-05-10 11:40:00', '2025-11-24 10:08:22'),
(7, 1, 'setup_front_office', NULL, 'setup_front_office', 'admin/visitorspurpose', 7, '(\'setup_font_office\', \'can_view\')', NULL, 'visitorspurpose', 'index,edit', NULL, 1, '2022-04-18 15:43:15', '2025-11-24 10:08:22'),
(9, 2, 'student_admission', NULL, 'student_admission', 'student/create', 2, '(\'student\', \'can_add\')', NULL, 'student', 'create,import', NULL, 1, '2022-08-30 07:51:02', '2025-11-24 10:08:22'),
(10, 2, 'online_admission', NULL, 'online_admission', 'admin/onlinestudent', 3, '(\'online_admission\', \'can_view\')', 27, 'onlinestudent', 'index,edit', NULL, 1, '2022-05-10 11:40:30', '2025-11-24 10:08:22'),
(11, 2, 'disable_student', NULL, 'disabled_students', 'student/disablestudentslist', 4, '(\'disable_student\', \'can_view\')', NULL, 'student', 'disablestudentslist', '', 1, '2022-07-23 06:49:00', '2025-11-24 10:08:22'),
(12, 3, 'collect_fees', NULL, 'collect_fees', 'studentfee', 1, '(\'collect_fees\', \'can_view\')', NULL, 'studentfee', 'index,addfee', NULL, 1, '2022-07-23 06:53:34', '2025-11-24 10:08:22'),
(13, 3, 'search_fees_payment', NULL, 'search_fees_payment', 'studentfee/searchpayment', 3, '(\'search_fees_payment\', \'can_view\')', NULL, 'studentfee', 'searchpayment', NULL, 1, '2022-08-08 06:03:40', '2025-11-24 10:08:22'),
(14, 3, 'search_due_fees', NULL, 'search_due_fees', 'studentfee/feesearch', 4, '(\'search_due_fees\', \'can_view\')', NULL, 'studentfee', 'feesearch', NULL, 1, '2022-08-08 06:03:38', '2025-11-24 10:08:22'),
(15, 3, 'fees_master', NULL, 'fees_master', 'admin/feemaster', 5, '(\'fees_master\', \'can_view\')', NULL, 'feemaster', 'index,assign,edit', NULL, 1, '2022-09-24 07:35:55', '2025-11-24 10:08:22'),
(16, 3, 'fees_group', NULL, 'fees_group', 'admin/feegroup', 6, '(\'fees_group\', \'can_view\')', NULL, 'feegroup', 'index,edit', NULL, 1, '2022-08-08 06:03:32', '2025-11-24 10:08:22'),
(17, 4, 'add_income', NULL, 'add_income', 'admin/income', 1, '(\'income\', \'can_view\')', NULL, 'income', 'index,edit', NULL, 1, '2022-07-23 07:03:40', '2025-11-24 10:08:22'),
(18, 4, 'search_income', NULL, 'search_income', 'admin/income/incomesearch', 2, '(\'search_income\', \'can_view\')', NULL, 'income', 'incomesearch', NULL, 1, '2022-07-23 07:10:13', '2025-11-24 10:08:22'),
(19, 4, 'income_head', NULL, 'income_head', 'admin/incomehead', 3, '(\'income_head\', \'can_view\')', NULL, 'incomehead', 'index,edit', NULL, 1, '2022-07-23 07:11:11', '2025-11-24 10:08:22'),
(20, 2, 'student_details', NULL, 'student_details', 'student/search', 1, '(\'student\', \'can_view\')', NULL, 'student', 'search,view,edit', NULL, 1, '2022-08-30 07:51:05', '2025-11-24 10:08:22'),
(21, 2, 'multi_class_student', NULL, 'multi_class_student', 'student/multiclass', 5, '(\'multi_class_student\', \'can_view\')', 26, 'student', 'multiclass', NULL, 1, '2022-07-23 06:48:37', '2025-11-24 10:08:22'),
(22, 2, 'bulk_delete', NULL, 'bulk_delete', 'student/bulkdelete', 6, '(\'student\', \'can_delete\')', NULL, 'student', 'bulkdelete', NULL, 1, '2022-07-23 06:48:11', '2025-11-24 10:08:22'),
(23, 2, 'student_categories', NULL, 'student_categories', 'category', 7, '(\'student_categories\', \'can_view\')', NULL, 'category', 'index,edit', NULL, 1, '2022-07-23 06:47:24', '2025-11-24 10:08:22'),
(24, 2, 'student_house', NULL, 'student_house', 'admin/schoolhouse', 8, '(\'student_houses\', \'can_view\')', NULL, 'schoolhouse', 'index,edit', NULL, 1, '2022-07-23 06:49:59', '2025-11-24 10:08:22'),
(25, 2, 'disable_reason', NULL, 'disable_reason', 'admin/disable_reason', 9, '(\'disable_reason\', \'can_view\')', NULL, 'disable_reason', 'index,edit', NULL, 1, '2022-07-23 06:50:41', '2025-11-24 10:08:22'),
(29, 7, 'add_expense', NULL, 'add_expense', 'admin/expense', 1, '(\'expense\', \'can_view\')', NULL, 'expense', 'index,edit', '', 1, '2022-07-23 07:12:25', '2025-11-24 10:08:22'),
(32, 3, 'fees_type', NULL, 'fees_type', 'admin/feetype', 7, '(\'fees_type\', \'can_view\')', NULL, 'feetype', 'index,edit', '', 1, '2022-08-08 06:03:29', '2025-11-24 10:08:22'),
(33, 10, 'attendance_by_date', 'attendance_by_date', 'attendance_by_date', 'admin/stuattendence/attendencereport', 3, '(\'attendance_by_date\', \'can_view\')', NULL, 'stuattendence', 'attendencereport', '', 1, '2022-10-20 05:50:25', '2025-11-24 10:08:22'),
(34, 10, 'student_attendance', 'student_attendance', 'student_attendance', 'admin/stuattendence', 1, '(\'student_attendance\', \'can_view\')', NULL, 'stuattendence', 'index', '', 1, '2022-10-20 05:50:25', '2025-11-24 10:08:22'),
(35, 10, 'approve_leave', 'approve_leave', 'approve_leave', 'admin/approve_leave', 2, '(\'approve_leave\', \'can_view\')', NULL, 'approve_leave', 'index', '', 1, '2022-10-14 16:16:44', '2025-11-24 10:08:22'),
(36, 11, 'exam_group', NULL, 'exam_group', 'admin/examgroup', 1, '(\'exam_group\', \'can_view\')', NULL, 'examgroup', 'index,addexam,edit', '', 1, '2022-07-23 07:23:01', '2025-11-24 10:08:22'),
(37, 11, 'exam_schedule', NULL, 'exam_schedule', 'admin/exam_schedule', 2, '(\'student_attendance\', \'can_view\')', NULL, 'exam_schedule', 'index', '', 1, '2022-05-16 07:01:34', '2025-11-24 10:08:22'),
(38, 11, 'exam_result', NULL, 'exam_result', 'admin/examresult', 3, '(\'exam_result\', \'can_view\')', NULL, 'examresult', 'index', '', 1, '2022-05-16 07:01:34', '2025-11-24 10:08:22'),
(39, 11, 'design_admit_card', NULL, 'design_admit_card', 'admin/admitcard', 4, '(\'design_admit_card\', \'can_view\')', NULL, 'admitcard', 'index,edit', '', 1, '2022-07-23 07:28:02', '2025-11-24 10:08:22'),
(40, 11, 'print_admit_card', NULL, 'print_admit_card', 'admin/examresult/admitcard', 5, '(\'print_admit_card\', \'can_view\')', NULL, 'examresult', 'admitcard', '', 1, '2022-05-16 07:01:34', '2025-11-24 10:08:22'),
(41, 11, 'design_marksheet', NULL, 'design_marksheet', 'admin/marksheet', 6, '(\'design_marksheet\', \'can_view\')', NULL, 'marksheet', 'index,edit', '', 1, '2022-07-23 07:35:35', '2025-11-24 10:08:22'),
(42, 11, 'print_marksheet', NULL, 'print_marksheet', 'admin/examresult/marksheet', 7, '(\'print_marksheet\', \'can_view\')', NULL, 'examresult', 'marksheet', '', 1, '2022-05-16 07:01:38', '2025-11-24 10:08:22'),
(43, 11, 'marks_grade', NULL, 'marks_grade', 'admin/grade', 8, '(\'marks_grade\', \'can_view\')', NULL, 'grade', 'index,edit', '', 1, '2022-07-23 07:37:15', '2025-11-24 10:08:22'),
(44, 11, 'marks_division', NULL, 'marks_division', 'admin/marksdivision', 9, '(\'marks_division\', \'can_view\')', NULL, 'marksdivision', 'index,edit', '', 1, '2022-08-25 06:04:26', '2025-11-24 10:08:22'),
(45, 12, 'online_exam', NULL, 'online_exam', 'admin/onlineexam', 1, '(\'online_examination\', \'can_view\')', NULL, 'onlineexam', 'index,evalution,assign', '', 1, '2022-08-30 13:03:45', '2025-11-24 10:08:22'),
(46, 12, 'question_bank', NULL, 'question_bank', 'admin/question', 1, '(\'question_bank\', \'can_view\')', NULL, 'question', 'index,read', '', 1, '2022-08-30 11:03:13', '2025-11-24 10:08:22'),
(47, 13, 'manage_lesson_plan', NULL, 'manage_lesson_plan', 'admin/syllabus', 2, '(\'manage_lesson_plan\', \'can_view\')', NULL, 'syllabus', 'index', '', 1, '2022-09-03 16:59:31', '2025-11-24 10:08:22'),
(48, 13, 'manage_syllabus_status', NULL, 'manage_syllabus_status', 'admin/syllabus/status', 3, '(\'manage_syllabus_status\', \'can_view\')', NULL, 'syllabus', 'status', '', 1, '2022-09-03 16:59:35', '2025-11-24 10:08:22'),
(49, 13, 'lesson', NULL, 'lesson', 'admin/lessonplan/lesson', 4, '(\'lesson\', \'can_view\')', NULL, 'lessonplan', 'lesson,editlesson', '', 1, '2022-09-15 11:30:55', '2025-11-24 10:08:22'),
(50, 13, 'topic', NULL, 'topic', 'admin/lessonplan/topic', 5, '(\'topic\', \'can_view\')', NULL, 'lessonplan', 'topic,edittopic', '', 1, '2022-09-15 11:30:24', '2025-11-24 10:08:22'),
(51, 14, 'class_timetable', NULL, 'class_timetable', 'admin/timetable/classreport', 1, '(\'class_timetable\', \'can_view\')', NULL, 'timetable', 'classreport,create', '', 1, '2022-07-23 09:01:22', '2025-11-24 10:08:22'),
(52, 14, 'teachers_timetable', NULL, 'teachers_timetable', 'admin/timetable/mytimetable', 2, '(\'teachers_time_table\', \'can_view\')', NULL, 'timetable', 'mytimetable', '', 1, '2022-07-20 12:22:59', '2025-11-24 10:08:22'),
(53, 14, 'assign_class_teacher', NULL, 'assign_class_teacher', 'admin/teacher/assign_class_teacher', 3, '(\'assign_class_teacher\', \'can_view\')', NULL, 'teacher', 'assign_class_teacher,update_class_teacher', '', 1, '2022-07-23 09:00:19', '2025-11-24 10:08:22'),
(54, 14, 'promote_students', NULL, 'promote_students', 'admin/stdtransfer', 4, '(\'promote_student\', \'can_view\')', NULL, 'stdtransfer', 'index', '', 1, '2022-07-20 12:22:54', '2025-11-24 10:08:22'),
(55, 14, 'subject_group', NULL, 'subject_group', 'admin/subjectgroup', 5, '(\'subject_group\', \'can_view\')', NULL, 'subjectgroup', 'index,edit', '', 1, '2022-07-23 08:59:42', '2025-11-24 10:08:22'),
(56, 14, 'subjects', NULL, 'subjects', 'admin/subject', 6, '(\'subject\', \'can_view\')', NULL, 'subject', 'index,edit', '', 1, '2022-07-23 08:59:20', '2025-11-24 10:08:22'),
(57, 14, 'class', NULL, 'class', 'classes', 7, '(\'class\', \'can_view\')', NULL, 'classes', 'index,edit', '', 1, '2022-07-23 08:58:49', '2025-11-24 10:08:22'),
(58, 14, 'sections', NULL, 'sections', 'sections', 8, '(\'section\', \'can_view\')', NULL, 'sections', 'index,edit', '', 1, '2022-07-23 08:58:21', '2025-11-24 10:08:22'),
(59, 15, 'staff_directory', NULL, 'staff_directory', 'admin/staff', 1, '(\'staff\', \'can_view\')', NULL, 'staff', 'index,edit,profile,create', '', 1, '2022-10-12 09:13:24', '2025-11-24 10:08:22'),
(60, 15, 'staff_attendance', NULL, 'staff_attendance', 'admin/staffattendance', 1, '(\'staff_attendance\', \'can_view\')', NULL, 'staffattendance', 'index', '', 1, '2022-09-07 12:04:15', '2025-11-24 10:08:22'),
(61, 15, 'payroll', NULL, 'payroll', 'admin/payroll', 1, '(\'staff_payroll\', \'can_view\')', NULL, 'payroll', 'index,edit,create', '', 1, '2022-08-16 11:58:44', '2025-11-24 10:08:22'),
(62, 15, 'approve_leave_request', NULL, 'approve_leave_request', 'admin/leaverequest/leaverequest', 1, '(\'approve_leave_request\', \'can_view\')', NULL, 'leaverequest', 'leaverequest', '', 1, '2022-05-16 09:04:33', '2025-11-24 10:08:22'),
(74, 15, 'apply_leave', NULL, 'apply_leave', 'admin/staff/leaverequest', 1, '(\'apply_leave\', \'can_view\')', NULL, 'staff', 'leaverequest', '', 1, '2022-05-16 09:11:41', '2025-11-24 10:08:22'),
(75, 15, 'leave_type', NULL, 'leave_type', 'admin/leavetypes', 1, '(\'leave_types\', \'can_view\')', NULL, 'leavetypes', 'index,leaveedit,createleavetype', '', 1, '2022-10-18 11:19:22', '2025-11-24 10:08:22'),
(76, 15, 'teachers_rating', NULL, 'teachers_rating', 'admin/staff/rating', 1, '(\'teachers_rating\', \'can_view\')', NULL, 'staff', 'rating', '', 1, '2022-05-16 09:15:31', '2025-11-24 10:08:22'),
(77, 15, 'department', NULL, 'department', 'admin/department/department', 1, '(\'department\', \'can_view\')', NULL, 'department', 'department,departmentedit', '', 1, '2022-07-23 09:14:20', '2025-11-24 10:08:22'),
(78, 15, 'designation', NULL, 'designation', 'admin/designation/designation', 1, '(\'designation\', \'can_view\')', NULL, 'designation', 'designation,designationedit', '', 1, '2022-07-23 09:15:04', '2025-11-24 10:08:22'),
(79, 15, 'disabled_staff', NULL, 'disabled_staff', 'admin/staff/disablestafflist', 1, '(\'disable_staff\', \'can_view\')', NULL, 'staff', 'disablestafflist', '', 1, '2022-09-13 07:46:56', '2025-11-24 10:08:22'),
(80, 16, 'notice_board', NULL, 'notice_board', 'admin/notification', 1, '(\'notice_board\', \'can_view\')', NULL, 'notification', 'index,edit,add', '', 1, '2022-07-23 09:17:24', '2025-11-24 10:08:22'),
(81, 16, 'send_email', NULL, 'send_email', 'admin/mailsms/compose', 2, '(\'email\', \'can_view\')', NULL, 'mailsms', 'compose', '', 1, '2022-09-02 16:52:46', '2025-11-24 10:08:22'),
(82, 16, 'send_sms', NULL, 'send_sms', 'admin/mailsms/compose_sms', 3, '(\'sms\', \'can_view\')', NULL, 'mailsms', 'compose_sms', '', 1, '2022-09-02 16:52:46', '2025-11-24 10:08:22'),
(83, 16, 'email_sms_log', NULL, 'email_sms_log', 'admin/mailsms/index', 4, '(\'email_sms_log\', \'can_view\')', NULL, 'mailsms', 'index', '', 1, '2022-09-02 16:52:50', '2025-11-24 10:08:22'),
(84, 16, 'schedule_email_sms_log', NULL, 'schedule_email_sms_log', 'admin/mailsms/schedule', 5, '(\'schedule_email_sms_log\', \'can_view\')', NULL, 'mailsms', 'schedule,edit_schedule', '', 1, '2022-09-13 07:07:38', '2025-11-24 10:08:22'),
(85, 16, 'login_credentials_send', NULL, 'login_credentials_send', 'student/bulkmail', 6, '(\'login_credentials_send\', \'can_view\')', NULL, 'student', 'bulkmail', '', 1, '2022-09-02 16:52:46', '2025-11-24 10:08:22'),
(86, 16, 'email_template', NULL, 'email_template', 'admin/mailsms/email_template', 7, '(\'email_template\', \'can_view\')', NULL, 'mailsms', 'email_template', '', 1, '2022-09-02 16:52:46', '2025-11-24 10:08:22'),
(87, 16, 'sms_template', NULL, 'sms_template', 'admin/mailsms/sms_template', 8, '(\'sms_template\', \'can_view\')', NULL, 'mailsms', 'sms_template', '', 1, '2022-09-02 16:52:46', '2025-11-24 10:08:22'),
(88, 17, 'content_type', NULL, 'content_type', 'admin/contenttype', 3, '(\'content_type\', \'can_view\')', NULL, 'contenttype', 'index,edit', '', 1, '2022-07-23 09:24:45', '2025-11-24 10:08:22'),
(89, 17, 'content_share_list', NULL, 'content_share_list', 'admin/content/list', 2, '(\'content_share_list\', \'can_view\')', NULL, 'content', 'list', '', 1, '2022-07-22 10:07:17', '2025-11-24 10:08:22'),
(90, 17, 'upload_content', NULL, 'upload_content', 'admin/content/upload', 1, '(\'upload_content\', \'can_view\')', NULL, 'content', 'upload', '', 1, '2022-07-22 10:07:17', '2025-11-24 10:08:22'),
(91, 17, 'video_tutorial', NULL, 'video_tutorial', 'admin/video_tutorial', 4, '(\'video_tutorial\', \'can_view\')', NULL, 'video_tutorial', 'index', '', 1, '2022-07-22 10:07:17', '2025-11-24 10:08:22'),
(92, 18, 'add_homework', NULL, 'add_homework', 'homework', 1, '(\'homework\', \'can_view\')', NULL, 'homework', 'index', '', 1, '2022-06-25 09:50:01', '2025-11-24 10:08:22'),
(93, 18, 'daily_assignment', NULL, 'daily_assignment', 'homework/dailyassignment', 2, '(\'daily_assignment\', \'can_view\')', NULL, 'homework', 'dailyassignment', '', 1, '2022-07-23 09:27:23', '2025-11-24 10:08:22'),
(94, 19, 'book_list', NULL, 'book_list', 'admin/book/getall', 1, '(\'books\', \'can_view\')', NULL, 'book', 'getall,index,edit,import,issue_returnreport', '', 1, '2022-09-07 11:45:50', '2025-11-24 10:08:22'),
(95, 19, 'issue_return', NULL, 'issue_return', 'admin/member', 1, '(\'issue_return\', \'can_view\')', NULL, 'member', 'index,issue', '', 1, '2022-07-23 09:32:48', '2025-11-24 10:08:22'),
(96, 19, 'add_student', NULL, 'add_student', 'admin/member/student', 1, '(\'add_student\', \'can_view\')', NULL, 'member', 'student', '', 1, '2022-05-16 11:22:54', '2025-11-24 10:08:22'),
(97, 19, 'add_staff_member', NULL, 'add_staff_member', 'admin/member/teacher', 1, '(\'add_staff_member\', \'can_view\')', NULL, 'member', 'teacher', '', 1, '2022-05-16 11:31:43', '2025-11-24 10:08:22'),
(98, 7, 'search_expense', NULL, 'search_expense', 'admin/expense/expensesearch', 1, '(\'search_expense\', \'can_view\')', NULL, 'expense', 'expensesearch', '', 1, '2022-05-16 11:36:09', '2025-11-24 10:08:22'),
(99, 7, 'expense_head', NULL, 'expense_head', 'admin/expensehead', 1, '(\'expense_head\', \'can_view\')', NULL, 'expensehead', 'index,edit', '', 1, '2022-07-23 07:16:17', '2025-11-24 10:08:22'),
(100, 20, 'issue_item', NULL, 'issue_item', 'admin/issueitem', 1, '(\'issue_item\', \'can_view\')', NULL, 'issueitem', 'index,create', '', 1, '2022-07-23 09:35:03', '2025-11-24 10:08:22'),
(101, 20, 'add_item_stock', NULL, 'add_item_stock', 'admin/itemstock', 1, '(\'item_stock\', \'can_view\')', NULL, 'itemstock', 'index,edit', '', 1, '2022-07-23 09:36:17', '2025-11-24 10:08:22'),
(102, 20, 'add_item', NULL, 'add_item', 'admin/item', 1, '(\'item\', \'can_view\')', NULL, 'item', 'index,edit', '', 1, '2022-07-23 09:36:56', '2025-11-24 10:08:22'),
(103, 20, 'item_category', NULL, 'item_category', 'admin/itemcategory', 1, '(\'item_category\', \'can_view\')', NULL, 'itemcategory', 'index,edit', '', 1, '2022-07-23 09:37:12', '2025-11-24 10:08:22'),
(104, 20, 'item_store', NULL, 'item_store', 'admin/itemstore', 1, '(\'store\', \'can_view\')', NULL, 'itemstore', 'index,edit,create', '', 1, '2022-09-16 11:49:03', '2025-11-24 10:08:22'),
(105, 20, 'item_supplier', NULL, 'item_supplier', 'admin/itemsupplier', 1, '(\'supplier\', \'can_view\')', NULL, 'itemsupplier', 'index,edit,create', '', 1, '2022-07-23 09:38:22', '2025-11-24 10:08:22'),
(106, 21, 'fees_master', NULL, 'fees_master', 'admin/transport/feemaster', 1, '(\'transport_fees_master\', \'can_view\')', NULL, 'transport', 'feemaster', '', 1, '2023-03-31 05:33:14', '2025-11-24 10:08:22'),
(107, 21, 'pickup_point', NULL, 'pickup_point', 'admin/pickuppoint', 1, '(\'pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'index', '', 1, '2023-03-31 05:24:24', '2025-11-24 10:08:22'),
(108, 21, 'routes', NULL, 'routes', 'admin/route', 1, '(\'routes\', \'can_view\')', NULL, 'route', 'index,edit', '', 1, '2022-09-17 06:21:23', '2025-11-24 10:08:22'),
(109, 21, 'vehicles', NULL, 'vehicles', 'admin/vehicle', 1, '(\'vehicle\', \'can_view\')', NULL, 'vehicle', 'index', '', 1, '2022-05-16 12:29:35', '2025-11-24 10:08:22'),
(110, 21, 'assign_vehicle', NULL, 'assign_vehicle', 'admin/vehroute', 1, '(\'assign_vehicle\',\'can_view\')', NULL, 'vehroute', 'index,edit', '', 1, '2022-10-19 07:06:08', '2025-11-24 10:08:22'),
(111, 21, 'route_pickup_point', NULL, 'route_pickup_point', 'admin/pickuppoint/assign', 1, '(\'route_pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'assign', '', 1, '2023-03-31 05:25:08', '2025-11-24 10:08:22'),
(112, 21, 'student_transport_fees', NULL, 'student_transport_fees', 'admin/pickuppoint/student_fees', 1, '(\'student_transport_fees\', \'can_view\')', NULL, 'pickuppoint', 'student_fees', '', 1, '2023-03-31 05:25:43', '2025-11-24 10:08:22'),
(113, 22, 'hostel_rooms', NULL, 'hostel_rooms', 'admin/hostelroom', 1, '(\'hostel_rooms\', \'can_view\')', NULL, 'hostelroom', 'index,edit', '', 1, '2022-07-23 10:27:48', '2025-11-24 10:08:22'),
(114, 22, 'room_type', NULL, 'room_type', 'admin/roomtype', 2, '(\'room_type\', \'can_view\')', NULL, 'roomtype', 'index,edit', '', 1, '2022-07-23 10:32:14', '2025-11-24 10:08:22'),
(115, 22, 'hostel', NULL, 'hostel', 'admin/hostel', 3, '(\'hostel\', \'can_view\')', NULL, 'hostel', 'index,edit', '', 1, '2022-07-23 10:32:39', '2025-11-24 10:08:22'),
(116, 23, 'student_certificate', NULL, 'student_certificate', 'admin/certificate', 1, '(\'student_certificate\', \'can_view\')', NULL, 'certificate', 'index,edit', '', 1, '2022-07-23 10:44:30', '2025-11-24 10:08:22'),
(117, 23, 'generate_certificate', NULL, 'generate_certificate', 'admin/generatecertificate', 1, '(\'generate_certificate\', \'can_view\')', NULL, 'generatecertificate', 'index,search', '', 1, '2022-07-23 10:46:16', '2025-11-24 10:08:22'),
(118, 23, 'student_id_card', NULL, 'student_id_card', 'admin/studentidcard', 1, '(\'student_id_card\', \'can_view\')', NULL, 'studentidcard', 'index,edit', '', 1, '2022-07-23 10:47:01', '2025-11-24 10:08:22'),
(119, 23, 'generate_id_card', NULL, 'generate_id_card', 'admin/generateidcard/search', 1, '(\'generate_id_card\', \'can_view\')', NULL, 'generateidcard', 'search', '', 1, '2022-05-18 05:35:13', '2025-11-24 10:08:22'),
(120, 23, 'staff_id_card', NULL, 'staff_id_card', 'admin/staffidcard', 1, '(\'staff_id_card\', \'can_view\')', NULL, 'staffidcard', 'index,edit', '', 1, '2022-07-23 10:48:13', '2025-11-24 10:08:22'),
(121, 23, 'generate_staff_id_card', NULL, 'generate_staff_id_card', 'admin/generatestaffidcard', 1, '(\'generate_staff_id_card\', \'can_view\')', NULL, 'generatestaffidcard', 'index,search', '', 1, '2022-07-23 10:49:06', '2025-11-24 10:08:22'),
(122, 24, 'event', NULL, 'event', 'admin/front/events', 1, '(\'event\', \'can_view\')', NULL, 'events', 'index,edit,create', '', 1, '2022-07-23 10:51:51', '2025-11-24 10:08:22'),
(123, 24, 'gallery', NULL, 'gallery', 'admin/front/gallery', 1, '(\'gallery\', \'can_view\')', NULL, 'gallery', 'index,edit,create', '', 1, '2022-07-23 10:52:22', '2025-11-24 10:08:22'),
(124, 24, 'news', NULL, 'news', 'admin/front/notice', 1, '(\'notice\', \'can_view\')', NULL, 'notice', 'index,edit,create', '', 1, '2022-07-23 10:54:23', '2025-11-24 10:08:22'),
(125, 24, 'media_manager', NULL, 'media_manager', 'admin/front/media', 1, '(\'media_manager\', \'can_view\')', NULL, 'media', 'index', '', 1, '2022-05-18 06:03:32', '2025-11-24 10:08:22'),
(126, 24, 'pages', NULL, 'pages', 'admin/front/page', 1, '(\'pages\', \'can_view\')', NULL, 'page', 'index,edit,create', '', 1, '2022-07-23 10:55:28', '2025-11-24 10:08:22'),
(127, 24, 'menus', NULL, 'menus', 'admin/front/menus', 1, '(\'menus\', \'can_view\')', NULL, 'menus', 'index,additem', '', 1, '2022-07-23 10:56:31', '2025-11-24 10:08:22'),
(128, 24, 'banner_images', NULL, 'banner_images', 'admin/front/banner', 1, '(\'banner_images\', \'can_view\')', NULL, 'banner', 'index', '', 1, '2022-05-18 06:10:53', '2025-11-24 10:08:22'),
(129, 25, 'manage_alumini', NULL, 'manage_alumini', 'admin/alumni/alumnilist', 1, '(\'manage_alumni\', \'can_view\')', NULL, 'alumni', 'alumnilist', '', 1, '2022-07-23 10:58:36', '2025-11-24 10:08:22'),
(130, 25, 'events', NULL, 'events', 'admin/alumni/events', 1, '(\'events\', \'can_view\')', NULL, 'alumni', 'events', '', 1, '2022-07-23 10:59:09', '2025-11-24 10:08:22'),
(131, 26, 'student_information', NULL, 'student_information', 'report/studentinformation', 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'homehork_evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'student_gender_ratio_report\', \'can_view\') || (\'student_teacher_ratio_report\', \'can_view\')', NULL, 'report', 'studentinformation,studentreport,online_admission_report,student_teacher_ratio,boys_girls_ratio,student_profile,sibling_report,admission_report,class_subject,classsectionreport,guardianreport,admissionreport,logindetailreport,parentlogindetailreport', '', 1, '2022-09-26 05:26:53', '2025-11-24 10:08:22'),
(132, 26, 'finance', NULL, 'finance', 'financereports/finance', 2, '(\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'online_admission\', \'can_view\')', NULL, 'financereports', 'finance,reportduefees,reportdailycollection,reportbyname,studentacademicreport,collection_report,onlinefees_report,duefeesremark,income,expense,payroll,incomegroup,expensegroup,onlineadmission', '', 1, '2022-09-24 12:20:32', '2025-12-07 04:54:18'),
(133, 26, 'attendance', NULL, 'attendance', 'attendencereports/attendance', 3, '(\'attendance_report\', \'can_view\') || (\'student_attendance_type_report\', \'can_view\') || (\'daily_attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\')', NULL, 'attendencereports', 'attendance,classattendencereport,attendancereport,daily_attendance_report,staffattendancereport,biometric_attlog,reportbymonthstudent,reportbymonth', '', 1, '2022-09-26 11:36:08', '2025-11-24 10:08:22'),
(134, 26, 'examinations', NULL, 'examinations', 'admin/examresult/examinations', 4, '(\'rank_report\', \'can_view\')', NULL, 'examresult', 'rankreport,examinations', '', 1, '2022-09-20 08:34:13', '2025-11-24 10:08:22'),
(135, 26, 'lesson_plan', NULL, 'lesson_plan', 'report/lesson_plan', 6, '(\'syllabus_status_report\', \'can_view\') || (\'teacher_syllabus_status_report\', \'can_view\')', NULL, 'report', 'lesson_plan,teachersyllabusstatus', '', 1, '2022-07-25 11:39:17', '2025-11-24 10:08:22'),
(136, 26, 'human_resource', NULL, 'human_resource', 'report/human_resource', 7, '(\'staff_report\', \'can_view\') || (\'payroll_report\', \'can_view\')', NULL, 'report', 'human_resource,staff_report,payrollreport', '', 1, '2022-07-25 11:38:20', '2025-11-24 10:08:22'),
(137, 26, 'library', NULL, 'library', 'report/library', 9, '(\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_issue_return_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\')', NULL, 'report', 'library,studentbookissuereport,bookduereport,bookinventory', '', 1, '2022-09-07 11:53:15', '2025-11-24 10:08:22'),
(138, 26, 'inventory', NULL, 'inventory', 'report/inventory', 10, '(\'stock_report\', \'can_view\') || (\'add_item_report\', \'can_view\') || (\'issue_item_report\', \'can_view\')', NULL, 'report', 'inventory,inventorystock,additem,issueinventory', '', 1, '2022-07-25 11:30:57', '2025-11-24 10:08:22'),
(139, 26, 'hostel', NULL, 'hostel', 'admin/hostelroom/studenthosteldetails', 12, '(\'hostel_report\', \'can_view\')', NULL, 'hostelroom', 'studenthosteldetails', '', 1, '2022-07-20 12:30:07', '2025-11-24 10:08:22'),
(140, 26, 'alumni', NULL, 'alumni', 'report/alumnireport', 13, '(\'alumni_report\', \'can_view\')', NULL, 'report', 'alumnireport', '', 1, '2022-07-20 12:30:07', '2025-12-07 04:54:14'),
(141, 26, 'user_log', NULL, 'user_log', 'admin/userlog', 14, '(\'user_log\', \'can_view\')', NULL, 'userlog', 'index', '', 1, '2022-07-20 12:30:07', '2025-11-24 10:08:22'),
(142, 26, 'audit_trail_report', NULL, 'audit_trail_report', 'admin/audit', 15, '(\'audit_trail_report\', \'can_view\')', NULL, 'audit', 'index', '', 1, '2022-07-20 12:30:07', '2025-11-24 10:08:22'),
(143, 26, 'online_examinations', NULL, 'online_examinations', 'admin/onlineexam/report', 5, '(\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\')', NULL, 'onlineexam', 'report,onlineexams', '', 1, '2022-07-25 11:48:23', '2025-11-24 10:08:22'),
(144, 26, 'homework', NULL, 'homework', 'homework/homeworkordailyassignmentreport', 8, '(\'homework\', \'can_view\') || (\'daily_assignment\', \'can_view\')', NULL, 'homework', 'homeworkordailyassignmentreport,homeworkreport,evaluation_report,dailyassignmentreport', '', 1, '2022-09-21 09:28:47', '2025-11-24 10:08:22'),
(145, 26, 'transport', NULL, 'transport', 'admin/route/studenttransportdetails', 11, '(\'transport_report\', \'can_view\')', NULL, 'route', 'studenttransportdetails', '', 1, '2022-07-20 12:30:07', '2025-11-24 10:08:22'),
(146, 27, 'general_setting', NULL, 'general_setting', 'schsettings', 1, '(\'general_setting\', \'can_view\')', NULL, 'schsettings', 'index,logo,miscellaneous,backendtheme,mobileapp,studentguardianpanel,fees,idautogeneration,attendancetype,maintenance,whatsappsettings', '', 1, '2025-02-13 09:03:12', '2025-11-24 10:08:22'),
(147, 27, 'session_setting', NULL, 'session_setting', 'sessions', 2, '(\'session_setting\', \'can_view\')', NULL, 'sessions', 'index,edit', '', 1, '2022-07-23 11:57:16', '2025-11-24 10:08:22'),
(148, 27, 'notification_setting', NULL, 'notification_setting', 'admin/notification/setting', 3, '(\'notification_setting\', \'can_view\')', NULL, 'notification', 'setting', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(149, 27, 'sms_setting', NULL, 'sms_setting', 'smsconfig', 4, '(\'sms_setting\', \'can_view\')', NULL, 'smsconfig', 'index', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(150, 27, 'email_setting', NULL, 'email_setting', 'emailconfig', 5, '(\'email_setting\', \'can_view\')', NULL, 'emailconfig', 'index', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(151, 27, 'payment_methods', NULL, 'payment_methods', 'admin/paymentsettings', 6, '(\'payment_methods\', \'can_view\')', NULL, 'paymentsettings', 'index', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(152, 27, 'print_headerfooter', NULL, 'print_headerfooter', 'admin/print_headerfooter', 7, '(\'print_header_footer\', \'can_view\')', NULL, 'print_headerfooter', 'index', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(153, 27, 'front_cms_setting', NULL, 'front_cms_setting', 'admin/frontcms', 8, '(\'front_cms_setting\', \'can_view\')', NULL, 'frontcms', 'index', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(154, 27, 'roles_permissions', NULL, 'roles_permissions', 'admin/roles', 9, '(\'superadmin\', \'can_view\')', NULL, 'roles', 'index,permission', '', 1, '2022-09-09 11:03:34', '2025-11-24 10:08:22'),
(155, 27, 'backup_restore', NULL, 'backup_restore', 'admin/admin/backup', 10, '(\'backup\', \'can_view\')', NULL, 'admin', 'backup', '', 1, '2022-07-08 08:12:28', '2025-11-24 10:08:22'),
(156, 27, 'users', NULL, 'users', 'admin/users', 13, '(\'user_status\', \'can_view\')', NULL, 'users', 'index', '', 1, '2022-07-20 12:34:09', '2025-11-24 10:08:22'),
(157, 27, 'languages', NULL, 'languages', 'admin/language', 11, '(\'languages\', \'can_view\')', NULL, 'language', 'index,create', '', 1, '2022-09-10 09:14:52', '2025-11-24 10:08:22'),
(158, 27, 'modules', NULL, 'modules', 'admin/module', 14, '(\'superadmin\', \'can_view\')', NULL, 'module', 'index', '', 1, '2022-07-20 12:34:06', '2025-11-24 10:08:22'),
(159, 27, 'custom_fields', NULL, 'custom_fields', 'admin/customfield', 15, '(\'custom_fields\', \'can_view\')', NULL, 'customfield', 'index,edit', '', 1, '2022-07-23 12:02:14', '2025-11-24 10:08:22'),
(160, 27, 'captcha_setting', NULL, 'captcha_setting', 'admin/captcha', 16, '(\'superadmin\', \'can_view\')', NULL, 'captcha', 'index', '', 1, '2022-07-20 12:34:06', '2025-11-24 10:08:22'),
(161, 27, 'system_fields', NULL, 'system_fields', 'admin/systemfield', 17, '(\'system_fields\', \'can_view\')', NULL, 'systemfield', 'index', '', 1, '2022-07-22 06:07:38', '2025-11-24 10:08:22'),
(162, 27, 'student_profile_update', NULL, 'student_profile_update', 'student/profilesetting', 18, '(\'student_profile_update\', \'can_view\')', NULL, 'student', 'profilesetting', '', 1, '2022-07-20 12:34:06', '2025-11-24 10:08:22'),
(163, 27, 'online_admission', NULL, 'online_admission', 'admin/onlineadmission/admissionsetting', 19, '(\'online_admission\', \'can_view\')', NULL, 'onlineadmission', 'admissionsetting', '', 1, '2022-07-20 12:34:06', '2025-11-24 10:08:22'),
(164, 27, 'file_types', NULL, 'file_types', 'admin/admin/filetype', 20, '(\'superadmin\', \'can_view\')', NULL, 'admin', 'filetype', '', 1, '2022-07-20 12:34:30', '2025-11-24 10:08:22'),
(165, 27, 'system_update', NULL, 'system_update', 'admin/updater', 22, '(\'superadmin\', \'can_view\')', NULL, 'updater', 'index', '', 1, '2022-10-13 11:49:51', '2025-11-24 10:08:22'),
(166, 27, 'sidebar_menu', NULL, 'sidebar_menu', 'admin/sidemenu', 21, '(\'sidebar_menu\', \'can_view\')', NULL, 'sidemenu', 'index', '', 1, '2022-10-13 11:49:51', '2025-11-24 10:08:22'),
(181, 3, 'fees_discount', NULL, 'fees_discount', 'admin/feediscount', 8, '(\'fees_discount\', \'can_view\')', NULL, 'feediscount', 'index,edit,assign', '', 1, '2022-08-08 06:03:27', '2025-11-24 10:08:22'),
(182, 3, 'fees_carry_forward', NULL, 'fees_carry_forward', 'admin/feesforward', 9, '(\'fees_carry_forward\', \'can_view\')', NULL, 'feesforward', 'index', '', 1, '2022-08-08 06:03:24', '2025-11-24 10:08:22'),
(183, 3, 'fees_reminder', NULL, 'fees_reminder', 'admin/feereminder/setting', 10, '(\'fees_reminder\', \'can_view\')', NULL, 'feereminder', 'setting', '', 1, '2022-08-08 06:03:21', '2025-11-24 10:08:22'),
(184, 27, 'currency', NULL, 'currency', 'admin/currency', 12, '(\'currency\', \'can_view\')', NULL, 'currency', 'index', '', 1, '2022-07-20 12:34:09', '2025-11-24 10:08:22'),
(190, 3, 'offline_bank_payments', NULL, 'offline_bank_payments', 'admin/offlinepayment', 2, '(\'offline_bank_payments\', \'can_view\')', NULL, 'offlinepayment', 'index', '', 1, '2022-08-08 06:05:29', '2025-11-24 10:08:22'),
(191, 13, 'Copy Old Lessons', NULL, 'copy_old_lesson', 'admin/lessonplan/copylesson', 1, '(\'copy_old_lesson\', \'can_view\')', NULL, 'lessonplan', 'copylesson', NULL, 1, '2022-09-09 10:20:37', '2025-11-24 10:08:22'),
(192, 10, 'Period Attendance', 'period_attendance', 'period_attendance', 'admin/subjectattendence/index', 4, '(\'student_attendance\',\'can_view\')', NULL, 'subjectattendence', 'index', NULL, 1, '2022-10-20 05:50:25', '2025-12-07 04:54:04'),
(193, 10, 'Period Attendance By Date', 'period_attendance_by_date', 'period_attendance_by_date', 'admin/subjectattendence/reportbydate', 5, '(\'attendance_by_date\', \'can_view\')', NULL, 'subjectattendence', 'reportbydate', NULL, 1, '2022-10-20 05:50:25', '2025-12-07 04:53:59'),
(215, 36, 'annual_calendar', NULL, 'annual_calendar', 'admin/holiday/index', 1, '(\'annual_calendar\', \'can_view\')', NULL, 'holiday', 'index', '', 1, '2024-10-14 12:07:58', '2025-11-24 10:08:22'),
(216, 36, 'holiday_type', NULL, 'holiday_type', 'admin/holiday/holidaytype', 1, '(\'holiday_type\', \'can_view\')', NULL, 'holiday', 'holidaytype,editholidaytype', '', 1, '2024-10-14 12:06:02', '2025-11-24 10:08:22'),
(217, 37, 'download_cv', NULL, 'download_cv', 'admin/resume/download', 2, '(\'download_cv\', \'can_view\')', NULL, 'resume', 'download', NULL, 1, '2025-01-09 08:05:11', '2025-11-24 10:08:22'),
(218, 37, 'build_cv', NULL, 'build_cv', 'admin/resume/index', 1, '(\'build_cv\', \'can_view\')', NULL, 'resume', 'index,resume_setting,student_resume_details', NULL, 1, '2024-12-06 11:42:02', '2025-11-24 10:08:22'),
(219, 27, 'addons', NULL, 'addons', 'admin/addons', 13, '(\'superadmin\', \'can_view\')', NULL, 'addons', 'index', '', 1, '2024-12-21 11:43:48', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'bulk_sms', '', '', '', '', NULL, 'edufiz@1', NULL, 'edufiz@1', 'enabled', '2025-11-25 04:10:01', '2025-11-25 04:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `template_id` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `title`, `template_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'School start date', '1707176285549270675', 'Dear {{PARENTNAME}}, {{STUDENTNAME}} Starting date for this Academic year would be {{DATE }}. Please make a note of it. Have a nice day Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:31:18'),
(2, 'Student Absent without notice', '1707176285758358564', 'Dear Parent, Your ward {{STUDENTNAME}} was absent on {{DATE}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {{SCHOOL}} Powered By EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:32:11'),
(3, 'Reshedule of Exam', '1707176277118642175', 'Rescheduled from {{STARTDATE}} TO {{ENDDATE}}. Kindly clear the dues before {{DATE}} . Please ignore if already paid. From {{SCHOOL}} Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:33:36'),
(4, 'Bus will come late', '1707176260265487083', 'Dear Parents, Kindly note that on {{VEHICLE}} van will come late. From {{STARTDATE}} {{ENDDATE}}. Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:34:22'),
(5, 'Fee Due Reminder before due date of Exam', '1707176260245106903', 'Dear Parents, {{EXAM}} are starting from {{DATE}} . Kindly clear the dues before {{DUEDATE}}. Please ignore if already paid. From {{SCHOOL}}{{SCHOOL}}. Powered by EduFeez.', '2025-12-04 18:30:00', '2025-12-05 10:35:21'),
(6, 'Fee', '1707176258615230217', 'Please find your updated fees details. Total fee: {{TOTALFEE}}. Fee paid:{{PAIDFEE}}. Fee Due: {{DUEFEE}}. Have a nice day. Powered by Satyasai', '2026-01-31 00:00:00', '2026-01-31 08:30:30'),
(7, 'Fee Payment with No Due', '1707176260087911340', 'Dear Parents, Thanks for making the payment for your ward {#var#}. Payment of {#var#} with payment no. {#var#} has been received. Total Fee for {#var#} is {#var#} and is now cleared in our records. From {#var#}. Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:03:36'),
(8, 'Fee Payment With Due', '1707176260145877072', 'Dear Parents, Thanks for making the payment for your ward {#var#}. Payment of {#var#} with payment no. {#var#} has been received. Total Fee for {#var#} is {#var#}. Please pay the pending due amount of {#var#} before {#var#}. From {#var#}. Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:03:26'),
(9, 'Student Absent with notice', '1707176285808041408', 'Dear Parents, This is to inform you that {{STUDENTNAME}} was absent today. Have a pleasant day From {{DATE}} Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:36:41'),
(10, 'Holiday', '1707176285957637552', 'Dear {{PARENTNAME}}, {{SCHOOL}} would remain closed on {{DATE}} on account of public holiday. Have a nice day Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:38:11'),
(11, 'Celebration Email Template', '1707176286176583542', 'Dear {{PARENTNAME}} , We are going to celebrate {{EVENT}} on {{DATE}} at our school premises. So, we welcome your children(s) for the event. From {{TIME}} Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:39:06'),
(12, 'New Year SMS without school name', '1707176286281603279', 'Dear {{var}}, EduFeez wishes you and your family members a very Happy and Prosperous New Year 2023. Powered by EduFeez , the next gen Edu OS.', '2025-12-02 00:00:00', '2025-12-02 11:01:51'),
(13, 'Half Day', '1707176292669624348', 'Dear Parents, HALF DAY SCHOOL will start from {{DATE}}. School Timing will be {{STIME}} to {{ETIME}}. From {{SCHOOL}}. Powered by EduFeez', '2025-12-04 18:30:00', '2025-12-05 10:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `sms_template_bc`
--

CREATE TABLE `sms_template_bc` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `template_id` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sms_template_bc`
--

INSERT INTO `sms_template_bc` (`id`, `title`, `template_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'School start date', '1707176285549270675', 'Dear {{parent}}, {{name}} Starting date for this Academic year would be {{date}}. Please make a note of it. Have a nice day Powered by EduFeez', '2025-11-26 00:00:00', '2025-12-02 10:50:52'),
(2, 'Student Absent without notice', '1707176285758358564', 'Dear Parent, Your ward {{name}} was absent on {{date}} without PRIOR NOTICE. Please send your ward with a requisition letter. Regards {{school}} Powered By EduFeez', '2025-11-26 00:00:00', '2025-12-02 10:51:31'),
(3, 'Reshedule of Exam', '1707176277118642175', 'Rescheduled from {{startdate}} TO {{enddate}}. Kindly clear the dues before {#var#} . Please ignore if already paid. From {{school}} Powered by EduFeez', '2025-11-26 00:00:00', '2025-12-02 10:51:46'),
(4, 'Bus will come late', '1707176260265487083', 'Dear Parents, Kindly note that on {{vehicle}} van will come late. From {{startplace}} {{endplace}}. Powered by EduFeez', '2025-11-26 00:00:00', '2025-12-02 10:51:57'),
(5, 'Fee Due Reminder before due date of Exam', '1707176260245106903', 'Dear Parents, {{exam}} are starting from {{date}} . Kindly clear the dues before {{duedate}}. Please ignore if already paid. From {{varone}}{{vartwo}}. Powered by EduFeez.', '2025-11-26 00:00:00', '2025-12-02 10:52:18'),
(6, 'Fee', '1707176258615230217', 'Please find your updated fees details. Total fee: {#var#}. Fee paid:{#var#}. Fee Due: {#var#}. Have a nice day. Powered by EduFeez.', '2025-12-02 00:00:00', '2025-12-02 11:03:49'),
(7, 'Fee Payment with No Due', '1707176260087911340', 'Dear Parents, Thanks for making the payment for your ward {#var#}. Payment of {#var#} with payment no. {#var#} has been received. Total Fee for {#var#} is {#var#} and is now cleared in our records. From {#var#}. Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:03:36'),
(8, 'Fee Payment With Due', '1707176260145877072', 'Dear Parents, Thanks for making the payment for your ward {#var#}. Payment of {#var#} with payment no. {#var#} has been received. Total Fee for {#var#} is {#var#}. Please pay the pending due amount of {#var#} before {#var#}. From {#var#}. Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:03:26'),
(9, 'Student Absent with notice', '1707176285808041408', 'Dear Parents, This is to inform you that {{var}} was absent today. Have a pleasant day From {#var#} Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:03:59'),
(10, 'Holiday', '1707176285957637552', 'Dear {{var}}, {{var}} would remain closed on {{var}} on account of public holiday. Have a nice day Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:04:24'),
(11, 'Celebration Email Template', '1707176286176583542', 'Dear {{var}} , We are going to celebrate {{var}} on {#var#} at our school premises. So, we welcome your children(s) for the event. From {#var#} Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:02:30'),
(12, 'New Year SMS without school name', '1707176286281603279', 'Dear {{var}}, EduFeez wishes you and your family members a very Happy and Prosperous New Year 2023. Powered by EduFeez , the next gen Edu OS.', '2025-12-02 00:00:00', '2025-12-02 11:01:51'),
(13, 'Half Day', '1707176292669624348', 'Dear Parents, HALF DAY SCHOOL will start from {{var}}. School Timing will be {{var}} to {{var}}. From {{var}}. Powered by EduFeez', '2025-12-02 00:00:00', '2025-12-02 11:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int NOT NULL,
  `currency_id` int DEFAULT '0',
  `department` int DEFAULT NULL,
  `designation` int DEFAULT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` int DEFAULT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `is_active` int NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `currency_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, '9000', 0, 0, NULL, NULL, '', '', 'Super Admin', '', '', '', '', '', 'superadmin@sms.com', '2020-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$xTQ9BLYO/1zBO0YXrez3O.QDT2ZxPEx3RaRqsJjG3.ypqBU9784pq', 'Male', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2025-11-24 10:08:48', '2025-11-24 10:08:48'),
(2, '001', 0, 0, NULL, NULL, '', '', 'Admin', '', '', '', '', '', 'admin@sms.com', '2019-11-28', '', '2025-12-25', NULL, '', '', '', '', '$2y$10$M5XxLfwLlgCHaedjnSiB2ub3FbD2PH1lOB2vxVX/DUnf/glIvldlu', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL, '2025-11-24 10:37:05', '2025-11-25 05:15:52'),
(3, 'EDUFEEZSTAFF001', 0, 0, 2, 1, '', '', 'Kiran', '', '', '', '', '', 'k@sms.com', '2025-11-04', '', NULL, NULL, '', '', '', '', '$2y$10$j8qfLeWJtzRo.O2/YaNYaOklGM7HALJ2YvBmC62/1.udwV9dvLVVy', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2025-11-25 09:34:49', '2025-12-06 02:45:37'),
(4, 'EDUFEEZSTAFF002', 0, 0, 2, 1, '', '', 'Sabita', '', '', '', '', '', 'sabita@gmail.com', '2025-10-27', '', NULL, NULL, '', '', '', '', '$2y$10$H26ZjHxgPNxIgW0RccRZHeLb/AokHL4F4U64lQXRrx2uM92P/x11W', 'Female', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2025-11-25 09:40:00', '2025-11-25 09:41:14'),
(7, '19001', 0, 0, 2, 1, 'B.Ed.', '3 Yrs', 'Jason ', 'Sharlton', 'Max Sharlton', 'Arya Sharlton', '46546654564', '5456121565', ' jason2@gmail.com', '0000-00-00', 'Married', '2024-06-21', '0000-00-00', ' 83 Evan Street  83 Evan Street Brooklyn', '', '', '', '$2y$10$4rGvAwejrhtwu2cR8IAVjeOLxkq0Hu.bdYFGWwWjTP7fKwB2hdwCu', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 2, 1, '', NULL, '2025-12-06 14:18:52', '2025-12-06 14:18:52'),
(8, '2025_1', 0, 0, 2, 1, 'B.Ed.', '4 yrs', 'Saidesh', 'Bojja', 'Satyanarayana', 'Devi', '9036759282', '7416681999', 'saidesh.bojja@gmail.com', '1988-02-28', 'Married', '2022-06-12', '0001-11-30', 'MTEMHS', 'Dachepalli', '', '', '$2y$10$BMLjydxmNHhqzi6NLYCNauUvfS9wVZ2xcl/sRgsvQ5UoS8aqEkgve', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 2, 1, '', NULL, '2025-12-06 14:18:52', '2025-12-06 14:58:35'),
(9, 'EDUFEEZSTAFF2026', 0, 0, 1, 1, 'Bachelor of Science in Mathematics', '10 years of experience', 'Smit', 'Das', 'Ajay Das', 'Laxmi Sahoo', '4159697125', '4159697126', 'somit@sms.com', '1990-06-22', 'Single', '2026-01-13', NULL, 'Cuttack', 'Cuttack', '', '', '$2y$10$Vwc7Dsey5zg9LQ6jbxQ0xOO.FHuSv7dGaC15vxt2gIbtXrKm5hZ8G', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2026-01-29 06:29:14', '2026-01-29 06:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `staff_id` int NOT NULL,
  `staff_attendance_type_id` int NOT NULL,
  `biometric_attendence` int DEFAULT '0',
  `qrcode_attendance` int NOT NULL DEFAULT '0',
  `biometric_device_data` text,
  `user_agent` varchar(250) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `biometric_attendence`, `qrcode_attendance`, `biometric_device_data`, `user_agent`, `remark`, `is_active`, `in_time`, `out_time`, `created_at`, `updated_at`) VALUES
(1, '2025-11-25', 2, 1, 0, 0, NULL, NULL, '', 0, NULL, NULL, '0000-00-00 00:00:00', '2025-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `for_qr_attendance` int NOT NULL DEFAULT '1',
  `long_lang_name` varchar(250) DEFAULT NULL,
  `long_name_style` varchar(250) DEFAULT NULL,
  `for_schedule` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `for_qr_attendance`, `long_lang_name`, `long_name_style`, `for_schedule`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', 1, 'present', 'label label-success', 1, '2023-12-13 10:15:57', '2023-11-10 00:00:00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', 1, 'late', 'label label-warning', 1, '2023-12-13 10:16:01', '2023-11-10 00:00:00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', 0, 'absent', 'label label-danger', 0, '2023-12-13 10:16:06', '2023-11-10 00:00:00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', 1, 'half_day', 'label label-info', 1, '2023-12-14 12:57:07', '2023-11-10 00:00:00'),
(5, 'Holiday', 'H', 'yes', 0, 'holiday', 'label label-warning text-dark', 0, '2023-12-13 10:16:17', '2023-11-10 00:00:00'),
(6, 'Half Day Second Shift', '<b class=\"text text-warning\">SH</b>', 'yes', 1, 'half_day_second_shift', 'label label-info', 1, '2024-09-24 12:28:42', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendence_schedules`
--

CREATE TABLE `staff_attendence_schedules` (
  `id` int NOT NULL,
  `staff_attendence_type_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `entry_time_from` time DEFAULT NULL,
  `entry_time_to` time DEFAULT NULL,
  `total_institute_hour` time DEFAULT '00:00:00',
  `is_active` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', 'yes', '2025-11-25 05:14:41', '2025-11-25 05:14:41'),
(2, 'Principal', 'yes', '2025-11-25 05:14:49', '2025-11-25 05:14:49'),
(3, 'Cleaner', 'yes', '2025-11-25 05:14:56', '2025-11-25 05:14:56'),
(4, 'Driver', 'yes', '2025-12-06 14:09:57', '2025-12-06 14:09:57'),
(5, 'Ayyamma', 'yes', '2025-12-06 14:10:27', '2025-12-06 14:10:27'),
(6, 'Staff', 'yes', '2025-12-06 14:10:42', '2025-12-06 14:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_vertical_card` int NOT NULL DEFAULT '0',
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_barcode` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `enable_staff_barcode`, `status`) VALUES
(1, 'Sample Staff ID Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, 'Sample Staff ID Card Vertical', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_leave_details`
--

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '4', '2025-11-25 05:15:52', '2025-11-25 05:15:52'),
(2, 2, 2, '5', '2025-11-25 05:15:52', '2025-11-25 05:15:52'),
(3, 3, 1, '', '2025-11-25 09:34:49', '2025-11-25 09:34:49'),
(4, 3, 2, '', '2025-11-25 09:34:49', '2025-11-25 09:34:49'),
(5, 4, 1, '2', '2025-11-25 09:40:00', '2025-11-25 09:40:00'),
(6, 4, 2, '3', '2025-11-25 09:40:00', '2025-11-25 09:40:00'),
(7, 8, 1, '', '2025-12-06 14:20:28', '2025-12-06 14:20:28'),
(8, 8, 2, '', '2025-12-06 14:20:28', '2025-12-06 14:20:28'),
(9, 9, 1, '', '2026-01-29 06:29:14', '2026-01-29 06:29:14'),
(10, 9, 2, '', '2026-01-29 06:29:14', '2026-01-29 06:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `approve_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `applied_by` int DEFAULT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_leave_request`
--

INSERT INTO `staff_leave_request` (`id`, `staff_id`, `leave_type_id`, `leave_from`, `leave_to`, `leave_days`, `employee_remark`, `admin_remark`, `approve_date`, `status`, `applied_by`, `document_file`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2025-11-01', '2025-11-02', 2, 'k', 'kk', '2025-11-25', 'approved', 2, '', '2025-11-25', '2025-11-25 05:16:23', '2025-11-25 05:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int NOT NULL,
  `basic_salary` int NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  `generated_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_payslip`
--

INSERT INTO `staff_payslip` (`id`, `staff_id`, `basic`, `total_allowance`, `total_deduction`, `leave_deduction`, `tax`, `net_salary`, `status`, `month`, `year`, `payment_mode`, `payment_date`, `remark`, `generated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 20000.00, 0.00, 0.00, 0, '100', 19900.00, 'paid', 'October', '2025', 'cash', '2025-11-25', 'no', NULL, '2025-11-25 04:12:53', '2025-11-25 04:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `staff_rating`
--

CREATE TABLE `staff_rating` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `comment` text NOT NULL,
  `rate` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2025-11-24 10:08:48', '2025-11-24 10:08:48'),
(2, 1, 2, 0, '2025-11-24 10:37:05', '2025-11-24 10:37:05'),
(3, 2, 3, 0, '2025-11-25 09:34:49', '2025-11-25 09:34:49'),
(4, 2, 4, 0, '2025-11-25 09:40:00', '2025-11-25 09:40:00'),
(7, 2, 7, 0, '2025-12-06 14:18:52', '2025-12-06 14:18:52'),
(8, 2, 8, 0, '2025-12-06 14:18:52', '2025-12-06 14:18:52'),
(9, 2, 9, 0, '2026-01-29 06:29:14', '2026-01-29 06:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `pen` varchar(100) DEFAULT NULL,
  `rfid` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `category_id` varchar(100) DEFAULT NULL,
  `school_house_id` int DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `hostel_room_id` int DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `dis_reason` int NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `about` text,
  `designation` varchar(255) DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `app_key` text,
  `parent_app_key` text,
  `created_by` int DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `pen`, `rfid`, `roll_no`, `admission_date`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `school_house_id`, `blood_group`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `about`, `designation`, `otp`, `otp_expiry`, `app_key`, `parent_app_key`, `created_by`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'EDUFEEZ0001', NULL, NULL, '02', '2025-11-24', 'Smruti Ranjan', NULL, 'Rout', 'No', NULL, '8917288085', 'smrutiranjan142@gmail.com', NULL, NULL, NULL, '', '', '2025-10-28', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'sarat ku rout', 'Father', '8917288085', '', '', '', '', '', '', 'no', '', '', '', '2025-11-24', 3, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-12-04', '2025-11-24 12:58:40', '2025-12-04 16:01:36'),
(2, 37, 'EDUFEEZ0002', '', '', '33', '2025-11-25', 'Smruti Ranjan', NULL, 'Rout', 'No', NULL, '', 'smrutiranjan4142@gmail.com', NULL, NULL, NULL, '', '', '2025-10-28', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Satis kumar', '9849333996', '', '', '', '', 'Satis kumar', 'Father', '9849333996', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 07:38:41', '2025-12-15 08:30:17'),
(3, 6, 'EDUFEEZ0003', NULL, NULL, '44', '2025-11-25', 'Sm', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-10-28', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'mother', '', '', '', '', '', '', 'Bimala', 'Mother', '8847836787', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 07:43:04', '2025-11-25 07:43:05'),
(4, 8, 'EDUFEEZ0004', NULL, NULL, '002', '2025-11-25', 'Puru', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-11-05', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'P', '9861601016', '', '', '', '', 'P', 'Father', '9861601016', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 08:41:14', '2025-11-25 08:41:15'),
(5, 2, 'EDUFEEZ0005', NULL, NULL, '88', '2025-11-25', 'smruti', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-10-27', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'sarat ku rout', 'Father', '6371762721', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 08:55:36', '2025-11-25 08:58:39'),
(6, 12, 'EDUFEEZ0006', NULL, NULL, '21', '2025-11-25', 'smita rani', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-10-27', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'Smruti ranjan rout', 'Father', '6371762721', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 08:59:51', '2025-11-25 08:59:51'),
(7, 14, 'EDUFEEZ0007', NULL, NULL, '003', '2025-11-25', 'Smruti', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-11-21', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'S', '9861601016', '', '', '', '', 'P', 'Father', '9861601016', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 09:04:09', '2025-11-25 09:04:09'),
(8, 8, 'EDUFEEZ0008', NULL, NULL, '321', '2025-11-25', 'puru', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-10-27', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'P', '9861601016', '', '', '', '', 'P', 'Father', '9861601016', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 09:06:49', '2025-11-25 09:08:00'),
(9, 2, 'EDUFEEZ0009', NULL, NULL, '1', '2025-11-25', 'Bimi', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2025-11-19', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'sarat ku rout', 'Father', '9876543212', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-25', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-25 09:09:44', '2025-12-01 09:33:18'),
(10, 20, 'EDUFEEZ0010', NULL, NULL, '44', '2025-11-26', 'Satish', NULL, '', 'No', NULL, '9849333998', '', NULL, NULL, NULL, '', '', '2025-10-28', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Satislinku', '9177333996', '', '', '', '', 'Smruti', 'Father', '9177333996', '', '', '', '', '', '', 'yes', '', '', '', '2025-11-26', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-11-26 06:23:55', '2025-12-03 07:47:48'),
(14, 27, 'EDUFEEZ0014', NULL, NULL, '3', '2025-12-03', 'Binayak', NULL, 'Maharana', 'No', NULL, '', '', NULL, NULL, NULL, 'Hindu', 'OBC', '2022-07-15', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Roshan Kumar', '9989789571', 'IT executive', '', '', '', 'Roshan Kumar', 'Father', '9989789571', 'IT executive', '', '', '', '', '', 'yes', '', '', '', '2025-12-03', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-03 07:58:32', '2025-12-03 07:58:32'),
(16, 31, 'EDUFEEZ0016', NULL, NULL, '203', '2025-12-04', 'EFGH', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, 'Hindu', 'General', '2021-12-30', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'LMNO', '7978520815', '', '', '', '', 'LMNO', 'Father', '7978520815', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-04', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-04 06:47:55', '2025-12-04 06:47:55'),
(17, 33, 'EDUFEEZ0017', NULL, NULL, '205', '2025-12-04', 'Raj', NULL, 'Kumar', 'No', NULL, '', '', NULL, NULL, NULL, 'Hindu', '', '2022-03-03', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Kumar', '7684944450', '', '', '', '', 'Kumar', 'Father', '7684944450', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-04', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-04 06:53:53', '2025-12-04 06:53:53'),
(19, 37, 'EDUFEEZ0018', NULL, NULL, 'ABC78', '2025-12-04', 'Jaivir', NULL, '', 'No', NULL, '9000539333', '', NULL, NULL, NULL, '', '', '2023-10-23', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Satis kumar', '9849333996', '', '', '', '', 'Satis kumar', 'Father', '9849333996', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-04', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-04 14:15:04', '2025-12-04 14:33:21'),
(20, 39, 'EDUFEEZ0019', NULL, NULL, '67', '2025-12-06', 'Mita bhai', NULL, '', 'No', NULL, '9090905525', '', NULL, NULL, NULL, '', '', '2025-12-07', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'Roshan ji', 'Father', '9937402525', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-06', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(21, 41, 'EDUFEEZ0020', NULL, NULL, '345', '2025-12-06', 'Nav', NULL, 'Kumar', 'No', NULL, '9036059282', '', NULL, NULL, NULL, '', '', '2025-10-07', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'simash', 'Father', '9937402525', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-06', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2025-12-06 05:37:32', '2025-12-07 05:09:59'),
(118, 235, 'EDUFEEZ0021', NULL, NULL, '1', NULL, 'Damarukam Keerthi Polakam', '', '', '', NULL, '9441308684', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Female', 'Srinivasapuram', 'Srinivasapuram', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Kasi Viswanadham', '', '', 'Anantha Rani', '', '', 'Kasi Viswanadham', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(119, 237, 'EDUFEEZ0022', NULL, NULL, '2', NULL, 'Habimunnisa Tanda', '', '', '', NULL, '7732050132', '', NULL, NULL, NULL, 'Hindu', 'Muslim', NULL, 'Female', 'Nadikudi', 'Nadikudi', 'BC-E', 0, '', NULL, '', '', '', '', '', 'Father', 'Hussain', '', '', 'Jileka', '', '', 'Hussain', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(120, 239, 'EDUFEEZ0023', NULL, NULL, '3', NULL, 'Kyathi Sri Jinugu', '', '', '', NULL, '8247786792', '', NULL, NULL, NULL, 'Hindu', 'Yadava', NULL, 'Female', 'Nadikudi', 'Nadikudi', 'BC-D', 0, '', NULL, '', '', '', '', '', 'Father', 'Pullaiah', '', '', 'Ankamma', '', '', 'Pullaiah', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(121, 241, 'EDUFEEZ0024', NULL, NULL, '4', NULL, 'Mehataj Shaik', '', '', '', NULL, '7702241378', '', NULL, NULL, NULL, 'Hindu', 'Muslim', NULL, 'Female', 'Tangeda', 'Tangeda', 'BC-E', 0, '', NULL, '', '', '', '', '', 'Father', 'Rasool', '', '', 'Meharoon', '', '', 'Rasool', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:23', '2025-12-06 14:42:24'),
(122, 243, 'EDUFEEZ0025', NULL, NULL, '5', NULL, 'Mishbha Shaik', '', '', '', NULL, '7396173869', '', NULL, NULL, NULL, 'Muslim', 'Muslim', NULL, 'Female', 'Nadikudi', 'Nadikudi', 'BC-E', 0, '', NULL, '', '', '', '', '', 'Father', 'Akbar Ali', '', '', 'Asmath Anjum', '', '', 'Akbar Ali', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(123, 245, 'EDUFEEZ0026', NULL, NULL, '6', NULL, 'Nafiya Shaik', '', '', '', NULL, '9640494249', '', NULL, NULL, NULL, 'Hindu', 'Muslim', NULL, 'Female', 'Tangeda', 'Tangeda', 'BC-E', 0, '', NULL, '', '', '', '', '', 'Father', 'Saidavali', '', '', 'Ramjan Bi', '', '', 'Saidavali', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(124, 247, 'EDUFEEZ0027', NULL, NULL, '7', NULL, 'Naga Jyothi Posa', '', '', '', NULL, '9014125315', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Female', 'Tangeda', 'Tangeda', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Narasimharao', '', '', 'Adhilakshmi', '', '', 'Narasimharao', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(125, 249, 'EDUFEEZ0028', NULL, NULL, '8', NULL, 'Shalini Munna', '', '', '', NULL, '7674900135', '', NULL, NULL, NULL, 'Hindu', 'Kamma', NULL, 'Female', 'Mp Road', 'Mp Road', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Prem Kumar', '', '', 'Mani', '', '', 'Prem Kumar', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(126, 251, 'EDUFEEZ0029', NULL, NULL, '9', NULL, 'Sharmila Potula', '', '', '', NULL, '9849686170', '', NULL, NULL, NULL, 'Hindu', 'Mala', NULL, 'Female', 'Tangeda', 'Tangeda', 'SC', 0, '', NULL, '', '', '', '', '', 'Father', 'Mariyadasu', '', '', 'Mariya Kumari', '', '', 'Mariyadasu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(127, 253, 'EDUFEEZ0030', NULL, NULL, '10', NULL, 'Srilakshmi Bambothula', '', '', '', NULL, '9573486219', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Female', 'Mp Road', 'Mp Road', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Narasimha Swami', '', '', 'Sujatha', '', '', 'Narasimha Swami', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(128, 255, 'EDUFEEZ0031', NULL, NULL, '11', NULL, 'Srilakshmi Guntaka', '', '', '', NULL, '7207414584', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Female', 'Srinagar-1 4211', 'Srinagar-1 4211', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Koti Reddy', '', '', 'Bhavani', '', '', 'Koti Reddy', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(129, 257, 'EDUFEEZ0032', NULL, NULL, '12', NULL, 'Ajay Pasam.', '', '', '', NULL, '9963515054', '', NULL, NULL, NULL, 'Hindu', 'Yadava', NULL, 'Male', 'Battuvaripalli', 'Battuvaripalli', 'BC-D', 0, '', NULL, '', '', '', '', '', 'Father', 'Anjaneyulu', '', '', 'Sirisha', '', '', 'Anjaneyulu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(130, 259, 'EDUFEEZ0033', NULL, NULL, '13', NULL, 'Akhilesh Galam', '', '', '', NULL, '9912978470', '', NULL, NULL, NULL, 'Hindu', 'Yadava', NULL, 'Male', 'Inaparajapalli', 'Inaparajapalli', 'BC-D', 0, '', NULL, '', '', '', '', '', 'Father', 'Adinarayana', '', '', 'Krishna Kumari', '', '', 'Adinarayana', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(131, 261, 'EDUFEEZ0034', NULL, NULL, '14', NULL, 'Anwesh Kamatham', '', '', '', NULL, '9989246264', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Munaga Bazar', 'Munaga Bazar', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Atchaiah', '', '', 'Anjali', '', '', 'Atchaiah', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(132, 263, 'EDUFEEZ0035', NULL, NULL, '15', NULL, 'Balaji Pusala', '', '', '', NULL, '6309406515', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Male', 'Yavaram', 'Yavaram', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Siva Anjaneyulu', '', '', 'Mounika', '', '', 'Siva Anjaneyulu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(133, 265, 'EDUFEEZ0036', NULL, NULL, '16', NULL, 'Bhargav Sumanth Golla', '', '', '', NULL, '8555806268', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Inaparajupalli', 'Inaparajupalli', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Suresh', '', '', 'Naga Sirisha', '', '', 'Suresh', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(134, 267, 'EDUFEEZ0037', NULL, NULL, '17', NULL, 'Dileep Lakshmi Naidu Saketi', '', '', '', NULL, '9177132717', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Mp Road', 'Mp Road', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Polinaidu', '', '', 'N/A', '', '', 'Polinaidu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(135, 269, 'EDUFEEZ0038', NULL, NULL, '18', NULL, 'Gopichand Posa', '', '', '', NULL, '9133464468', '', NULL, NULL, NULL, 'Hindu', 'Devanga', NULL, 'Male', 'Tangeda', 'Tangeda', 'BC-B', 0, '', NULL, '', '', '', '', '', 'Father', 'Venkateswarlu', '', '', 'Venkata Lakshmi', '', '', 'Venkateswarlu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(136, 271, 'EDUFEEZ0039', NULL, NULL, '19', NULL, 'Govindaraju Gandham', '', '', '', NULL, '8885779204', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Munaga Bazar', 'Munaga Bazar', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Sivaiah', '', '', 'Siva Kumari', '', '', 'Sivaiah', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(137, 273, 'EDUFEEZ0040', NULL, NULL, '20', NULL, 'Hari Venkata Narendra Vantala', '', '', '', NULL, '8500516953', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Male', 'Sankara Puram', 'Sankara Puram', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Veera Swami', '', '', 'Srilakshmi', '', '', 'Veera Swami', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:24', '2025-12-06 14:42:25'),
(138, 275, 'EDUFEEZ0041', NULL, NULL, '21', NULL, 'Jagadeesh Kumar Palakeerthi', '', '', '', NULL, '9652343029', '', NULL, NULL, NULL, 'Hindu', 'Yerukala', NULL, 'Male', 'Mutyalampadu', 'Mutyalampadu', 'ST', 0, '', NULL, '', '', '', '', '', 'Father', 'Rambabu', '', '', 'Mariyamma', '', '', 'Rambabu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(139, 277, 'EDUFEEZ0042', NULL, NULL, '22', NULL, 'Jaswanth Gamalapati', '', '', '', NULL, '8125677697', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Atchalagadda', 'Atchalagadda', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Ramakrishna', '', '', 'Lakshmi', '', '', 'Ramakrishna', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(140, 279, 'EDUFEEZ0043', NULL, NULL, '23', NULL, 'Kiran Kumar Pasam', '', '', '', NULL, '9963515054', '', NULL, NULL, NULL, 'Hindu', 'Yadava', NULL, 'Male', 'Battuvaripalli', 'Battuvaripalli', 'BC-D', 0, '', NULL, '', '', '', '', '', 'Father', 'Anjaneyulu', '', '', 'Sirisha', '', '', 'Anjaneyulu', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(141, 281, 'EDUFEEZ0044', NULL, NULL, '24', NULL, 'Mahesh Gumma', '', '', '', NULL, '9390343993', '', NULL, NULL, NULL, 'Hindu', 'Yadava', NULL, 'Male', 'Battuvaripalli', 'Battuvaripalli', 'BC-D', 0, '', NULL, '', '', '', '', '', 'Father', 'Ambarao', '', '', 'Subhashini', '', '', 'Ambarao', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(142, 283, 'EDUFEEZ0045', NULL, NULL, '25', NULL, 'Mahesh Mamidi', '', '', '', NULL, '9505665471', '', NULL, NULL, NULL, 'Hindu', 'Madiga', NULL, 'Male', '', '', 'SC', 0, '', NULL, '', '', '', '', '', 'Father', 'Abburam', '', '', 'Mariyamma', '', '', 'Abburam', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(143, 285, 'EDUFEEZ0046', NULL, NULL, '26', NULL, 'Naga Venkata Manikanta Bommireddy', '', '', '', NULL, '7013936031', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Male', 'Mp Road', 'Mp Road', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Narasimharao', '', '', 'N/A', '', '', 'Narasimharao', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(144, 287, 'EDUFEEZ0047', NULL, NULL, '27', NULL, 'Navadeep Gunda', '', '', '', NULL, '9704997511', '', NULL, NULL, NULL, 'Hindu', 'Kapu', NULL, 'Male', 'Mp Road', 'Mp Road', 'OC', 0, '', NULL, '', '', '', '', '', 'Father', 'Narasimharao', '', '', 'Anuradha', '', '', 'Narasimharao', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(145, 289, 'EDUFEEZ0048', NULL, NULL, '28', NULL, 'Nazeer Shaik', '', '', '', NULL, '9908978160', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Kasaram', 'Kasaram', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Kadarvali', '', '', 'Nagurbee', '', '', 'Kadarvali', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(146, 291, 'EDUFEEZ0049', NULL, NULL, '29', NULL, 'Nazeer Shaik', '', '', '', NULL, '8897969288', '', NULL, NULL, NULL, 'Hindu', 'Muslim', NULL, 'Male', 'Peerlachavidi', 'Peerlachavidi', 'BC-E', 0, '', NULL, '', '', '', '', '', 'Father', 'Nagulmeera', '', '', 'Noorjahan', '', '', 'Nagulmeera', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(147, 293, 'EDUFEEZ0050', NULL, NULL, '30', NULL, 'Praneeth Katti', '', '', '', NULL, '8074885982', '', NULL, NULL, NULL, 'Hindu', 'Mala', NULL, 'Male', 'Kachavaram', 'Kachavaram', 'SC', 0, '', NULL, '', '', '', '', '', 'Father', 'Immanuel', '', '', 'Aruna', '', '', 'Immanuel', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(148, 295, 'EDUFEEZ0051', NULL, NULL, '31', NULL, 'Srisanth Mekala', '', '', '', NULL, '8886862671', '', NULL, NULL, NULL, 'Hindu', 'Mala', NULL, 'Male', 'Tangeda', 'Tangeda', 'SC', 0, '', NULL, '', '', '', '', '', 'Father', 'Lingaiah', '', '', 'Mariya Kumari', '', '', 'Lingaiah', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(149, 297, 'EDUFEEZ0052', NULL, NULL, '32', NULL, 'Venkata Reddy Poreddy', '', '', '', NULL, '9640221503', '', NULL, NULL, NULL, 'Hindu', 'N/A', NULL, 'Male', 'Ineparajupalli', 'Ineparajupalli', 'N/A', 0, '', NULL, '', '', '', '', '', 'Father', 'Anki Reddy', '', '', 'Krishna Kumari', '', '', 'Anki Reddy', 'Father', '', '', '', '', '', '', '', 'yes', '', '', '', '0000-00-00', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(150, 299, 'EDUFEEZ0053', NULL, NULL, '213', '2025-12-07', 'Smr', NULL, '', 'No', NULL, '', '', NULL, NULL, NULL, '', '', '2020-01-29', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'Roshan', 'Father', '9090909878', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-07', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-07 05:01:31', '2025-12-07 05:01:31'),
(151, 301, 'EDUFEEZ0054', NULL, NULL, '33', '2025-12-07', 'saidesh', NULL, 'Bojja', 'No', NULL, '9036759282', '', NULL, NULL, NULL, 'Hindu', 'Telaga', '1988-02-28', 'Male', '', '', '1', 2, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'Satyanarayana', 'Father', '9036759282', '', '', '', '', '', '', 'yes', '', '', '', '2025-12-07', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-07 05:10:06', '2025-12-07 06:18:28'),
(152, 303, 'EDUFEEZ0055', '', '', '993', '2026-01-09', 'Khitish', NULL, '', 'No', NULL, '9849333996', '', NULL, NULL, NULL, '', '', '2025-12-29', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Smruti', '9849333996', '', '', '', '', 'Smruti', 'Father', '9849333996', '', '', '', '', '', '', 'yes', '', '', '', '2026-01-09', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2026-01-09 06:01:11', '2026-01-09 06:01:11'),
(153, 305, 'EDUFEEZ0056', '', '', '313', '2026-01-28', 'shtest', NULL, '', 'No', NULL, '9876543211', 'shtest@gmail.com', NULL, NULL, NULL, 'HIndu', '', '2015-06-05', 'Male', '', '', '1', 1, 'A+', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'teet', 'Father', '87282828282', '', '', '', '', '', '', 'yes', '', '454', '29', '2026-01-28', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2026-01-28 07:22:04', '2026-01-28 07:22:04'),
(154, 307, 'EDUFEEZ0057', '', '', '313', '2026-01-28', 'shtest', NULL, '', 'No', NULL, '8270951636', 'shtest1@gmail.com', NULL, NULL, NULL, 'HIndu', '', '2015-06-05', 'Male', '', '', '1', 0, '', 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'teet', 'Father', '8270951636', '', '', '', '', '', '', 'yes', '', '454', '29', '2026-01-28', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2026-01-28 09:21:39', '2026-01-28 17:39:08'),
(155, 309, 'EDUFEEZ0058', '', '', '101', '2026-01-28', 'purusottama', NULL, 'Sahoo', 'No', NULL, '9861601016', 'purusottama@mailinator.com', NULL, NULL, NULL, '', '', '2026-01-15', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Prasanta', '9861601016', '9861601016', '', '', '', 'Prasanta', 'Father', '9861601016', '9861601016', '', '', '', '', '', 'yes', '', '', '', '2026-01-28', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2026-01-28 17:20:25', '2026-01-28 17:20:25'),
(156, 311, 'EDUFEEZ0059', '', '', '199', '2026-01-28', 'purusottama', NULL, 'Sahoo', 'No', NULL, '9861591016', 'prasanta@mailinator.com', NULL, NULL, NULL, '', '', '2025-12-01', 'Male', '', '', '', 0, '', 0, '', '', '', '', '', 'father', 'Puru', '9861591016', 'IT', '', '', '', 'Puru', 'Father', '9861591016', 'IT', '', '', '', '', '', 'yes', '', '', '', '2026-01-28', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2026-01-28 17:24:42', '2026-01-28 17:24:42'),
(157, 313, 'EDUFEEZ0060', '', '', '123', '2026-01-31', 'Praagnya', NULL, '', 'No', NULL, '7847070590', 'bisoyisonali857@gmail.com', NULL, NULL, NULL, '', '', '2009-06-11', 'Female', '', '', '1', 0, '', 0, '', '', '', '', '', 'father', 'Pransant Bisoyi', '7847070590', '', '', '', '', 'Pransant Bisoyi', 'Father', '7847070590', '', '', '', '', '', '', 'yes', '', '', '', '2026-01-31', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2026-01-31 08:10:58', '2026-01-31 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `student_applied_discounts`
--

CREATE TABLE `student_applied_discounts` (
  `id` int NOT NULL,
  `student_fees_deposite_id` int DEFAULT NULL,
  `student_fees_discount_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `sub_invoice_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_applyleave`
--

CREATE TABLE `student_applyleave` (
  `id` int NOT NULL,
  `student_session_id` int NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int NOT NULL,
  `docs` varchar(200) DEFAULT NULL,
  `reason` text NOT NULL,
  `approve_by` int DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `request_type` int NOT NULL COMMENT '0 student,1 staff',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_applyleave`
--

INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `docs`, `reason`, `approve_by`, `approve_date`, `request_type`, `created_at`, `updated_at`) VALUES
(1, 120, '2025-12-08', '2025-12-21', '2025-12-06', 1, NULL, 'family picnic', 1, '2025-12-06', 1, '2025-12-06 15:18:33', '2025-12-06 15:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int NOT NULL,
  `student_session_id` int DEFAULT NULL,
  `biometric_attendence` int NOT NULL DEFAULT '0',
  `qrcode_attendance` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `attendence_type_id` int DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text,
  `user_agent` varchar(250) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `qrcode_attendance`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `user_agent`, `in_time`, `out_time`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(2, 3, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(3, 4, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(4, 5, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(5, 6, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(6, 7, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(7, 8, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(8, 9, 0, 0, '2025-11-25', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-25 09:11:29', '2025-11-25 09:11:29'),
(9, 1, 0, 0, '2025-11-26', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-11-26 06:27:57', '2025-11-26 16:40:03'),
(10, 3, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(11, 4, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(12, 5, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(13, 6, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(14, 7, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(15, 8, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(16, 9, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 06:27:57'),
(17, 10, 0, 0, '2025-11-26', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-11-26 06:27:57', '2025-11-26 16:40:03'),
(18, 1, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(19, 3, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(20, 4, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(21, 5, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(22, 6, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(23, 7, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(24, 8, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(25, 9, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(26, 10, 0, 0, '2025-12-02', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-02 04:59:20', '2025-12-02 04:59:20'),
(28, 1, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(29, 3, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(30, 4, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(31, 5, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(32, 6, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(33, 7, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(34, 8, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(35, 9, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(36, 10, 0, 0, '2025-12-04', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-12-04 13:17:02', '2025-12-04 13:22:39'),
(39, 14, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(41, 16, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(42, 17, 0, 0, '2025-12-04', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 13:17:02', '2025-12-04 13:17:02'),
(44, 2, 0, 0, '2025-12-04', 6, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-04 14:22:42', '2025-12-04 14:36:22'),
(45, 19, 0, 0, '2025-12-04', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-12-04 14:22:42', '2025-12-04 14:37:03'),
(46, 3, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(47, 4, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(48, 5, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(49, 6, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(50, 7, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(51, 8, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(52, 9, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(53, 10, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(54, 14, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(55, 16, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(56, 17, 0, 0, '2025-12-06', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(57, 22, 0, 0, '2025-12-06', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-12-06 05:04:27', '2025-12-06 05:04:27'),
(58, 23, 0, 0, '2025-12-06', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-12-06 05:55:49', '2025-12-06 05:55:49'),
(59, 120, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(60, 121, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(61, 122, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(62, 123, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(63, 124, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(64, 125, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(65, 126, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(66, 127, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(67, 128, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(68, 129, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(69, 130, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(70, 131, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(71, 132, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(72, 133, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(73, 134, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(74, 135, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(75, 136, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(76, 137, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(77, 138, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(78, 139, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(79, 140, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(80, 141, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(81, 142, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(82, 143, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(83, 144, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(84, 145, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(85, 146, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(86, 147, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(87, 148, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(88, 149, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(89, 150, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(90, 151, 0, 0, '2025-12-07', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(91, 153, 0, 0, '2025-12-07', 4, '', NULL, NULL, NULL, NULL, 'no', '2025-12-07 05:11:53', '2025-12-07 05:11:53'),
(92, 154, 0, 0, '2026-01-09', 4, '', NULL, NULL, NULL, NULL, 'no', '2026-01-09 06:04:41', '2026-01-09 06:04:41'),
(93, 155, 0, 0, '2026-01-28', 4, '', NULL, NULL, NULL, NULL, 'no', '2026-01-28 09:56:46', '2026-01-28 09:57:45'),
(94, 156, 0, 0, '2026-01-28', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2026-01-28 09:56:46', '2026-01-28 09:56:46'),
(95, 2, 0, 0, '2026-01-29', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2026-01-29 05:43:12', '2026-01-29 05:43:12'),
(96, 19, 0, 0, '2026-01-29', 4, '', NULL, NULL, NULL, NULL, 'no', '2026-01-29 05:43:12', '2026-01-29 05:43:12'),
(97, 159, 0, 0, '2026-01-31', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2026-01-31 08:18:05', '2026-01-31 08:18:05'),
(98, 2, 0, 0, '2026-01-31', 1, '', NULL, NULL, '00:00:00', '00:00:00', 'no', '2026-01-31 08:18:28', '2026-01-31 08:18:28'),
(99, 19, 0, 0, '2026-01-31', 4, '', NULL, NULL, NULL, NULL, 'no', '2026-01-31 08:18:28', '2026-01-31 08:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence_schedules`
--

CREATE TABLE `student_attendence_schedules` (
  `id` int NOT NULL,
  `attendence_type_id` int DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `entry_time_from` time DEFAULT NULL,
  `entry_time_to` time DEFAULT NULL,
  `total_institute_hour` time DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_dashboard_settings`
--

CREATE TABLE `student_dashboard_settings` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `is_student` int DEFAULT NULL,
  `is_parent` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_dashboard_settings`
--

INSERT INTO `student_dashboard_settings` (`id`, `name`, `short_code`, `is_student`, `is_parent`, `created_at`, `updated_at`) VALUES
(1, 'welcome_student', '', 1, 1, '2024-10-15 12:14:22', '2025-11-24 10:08:22'),
(2, 'notice_board', 'communicate', 1, 1, '2024-10-15 12:14:25', '2025-11-24 10:08:22'),
(3, 'subject_progress', 'lesson_plan', 1, 1, '2024-10-15 12:14:27', '2025-11-24 10:08:22'),
(4, 'upcomming_class', 'academics', 1, 1, '2024-10-15 12:14:55', '2025-11-24 10:08:22'),
(5, 'homework', 'homework', 1, 1, '2024-10-15 12:14:56', '2025-11-24 10:08:22'),
(6, 'teacher_list', 'human_resource', 1, 1, '2024-10-15 12:14:57', '2025-11-24 10:08:22'),
(7, 'visitor_list', 'front_office', 1, 1, '2024-10-15 12:14:58', '2025-11-24 10:08:22'),
(8, 'library', 'library', 1, 1, '2024-10-15 12:14:59', '2025-11-24 10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_fields`
--

CREATE TABLE `student_edit_fields` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_educational_details`
--

CREATE TABLE `student_educational_details` (
  `id` int NOT NULL,
  `course` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `education_year` varchar(255) NOT NULL,
  `education_detail` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int NOT NULL,
  `student_session_id` int DEFAULT NULL,
  `feemaster_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int NOT NULL,
  `student_fees_master_id` int DEFAULT NULL,
  `fee_groups_feetype_id` int DEFAULT NULL,
  `student_transport_fee_id` int DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `student_transport_fee_id`, `amount_detail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 4, NULL, '{\"1\":{\"amount\":\"700.00\",\"date\":\"2025-11-25\",\"description\":\"k\",\"amount_discount\":0,\"collected_by\":\"Super Admin(9000)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-11-25 05:29:27', '2025-11-25 05:29:27'),
(2, 1, 1, NULL, '{\"1\":{\"amount\":\"300.00\",\"date\":\"2025-11-25\",\"description\":\"k\",\"amount_discount\":0,\"collected_by\":\"Super Admin(9000)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-11-25 06:26:15', '2025-11-25 06:26:15'),
(3, 12, 5, NULL, '{\"1\":{\"amount\":\"800.00\",\"date\":\"2025-11-26\",\"description\":\"note\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-11-26 06:36:19', '2025-11-26 06:36:19'),
(6, 2, 3, NULL, '{\"1\":{\"amount\":\"800.00\",\"date\":\"2025-12-02\",\"description\":\"Tst\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-02 05:53:43', '2025-12-02 05:53:43'),
(8, 17, 1, NULL, '{\"1\":{\"amount\":\"300.00\",\"date\":\"2025-12-04\",\"description\":\"rcv ccash\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-04 14:20:59', '2025-12-04 14:20:59'),
(9, 18, 5, NULL, '{\"1\":{\"amount\":\"800.00\",\"date\":\"2025-12-04\",\"description\":\"rcv ccash\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-04 14:20:59', '2025-12-04 14:20:59'),
(10, 20, 4, NULL, '{\"1\":{\"amount\":\"700.00\",\"date\":\"2025-12-06\",\"description\":\"\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-06 04:14:05', '2025-12-06 04:14:05'),
(11, 20, 3, NULL, '{\"1\":{\"amount\":\"800.00\",\"date\":\"2025-12-06\",\"description\":\"\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-06 04:14:05', '2025-12-06 04:14:05'),
(12, 24, 5, NULL, '{\"1\":{\"amount\":\"800.00\",\"date\":\"2025-12-06\",\"description\":\"dd\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-06 05:40:05', '2025-12-06 05:40:05'),
(13, 25, 10, NULL, '{\"1\":{\"amount\":\"9000.00\",\"date\":\"2025-12-07\",\"description\":\"Cash By BSR\",\"amount_discount\":0,\"collected_by\":\"Admin(001)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2025-12-07 05:17:05', '2025-12-07 05:17:05'),
(16, 3, 2, NULL, '{\"1\":{\"amount\":1000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-12-15\",\"description\":\"\",\"collected_by\":\"Admin(001)\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1},\"2\":{\"amount\":100,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-12-15\",\"description\":\"\",\"collected_by\":\"Admin(001)\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":2},\"3\":{\"amount\":999,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-08\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":3},\"4\":{\"amount\":901,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-08\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":4}}', 'no', '2025-12-15 08:19:58', '2026-01-08 06:15:28'),
(17, 59, 1, NULL, '{\"1\":{\"amount\":\"5000.00\",\"date\":\"2026-01-09\",\"description\":\"k\",\"amount_discount\":0,\"collected_by\":\"Super Admin(9000)\",\"amount_fine\":\"0\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2026-01-09 06:02:46', '2026-01-09 06:02:46'),
(18, 59, 6, NULL, '{\"1\":{\"amount\":1000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-09\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2026-01-09 06:03:38', '2026-01-09 06:03:38'),
(19, 60, 2, NULL, '{\"1\":{\"amount\":3000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-28\",\"description\":\"\",\"collected_by\":\"Admin(001)\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2026-01-28 10:02:17', '2026-01-28 10:02:17'),
(21, 61, 2, NULL, '{\"1\":{\"amount\":5000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-28\",\"description\":\"\",\"collected_by\":\"Admin(001)\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2026-01-28 17:39:37', '2026-01-28 17:39:37'),
(22, 62, 5, NULL, '{\"1\":{\"amount\":5000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2026-01-31\",\"description\":\"by phoinepe to sir\",\"collected_by\":\"Admin(001)\",\"payment_mode\":\"Cash\",\"received_by\":\"2\",\"inv_no\":1}}', 'no', '2026-01-31 08:14:18', '2026-01-31 08:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int NOT NULL,
  `student_session_id` int DEFAULT NULL,
  `fees_discount_id` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int NOT NULL,
  `is_system` int NOT NULL DEFAULT '0',
  `student_session_id` int DEFAULT NULL,
  `fee_session_group_id` int DEFAULT NULL,
  `amount` float(10,2) DEFAULT '0.00',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 0.00, 'no', '2025-11-24 13:02:55', '2025-11-24 13:02:55'),
(2, 0, 1, 2, 0.00, 'no', '2025-11-25 05:28:33', '2025-11-25 05:28:33'),
(3, 0, 2, 2, 0.00, 'no', '2025-11-25 07:38:41', '2025-11-25 07:38:41'),
(4, 0, 3, 2, 0.00, 'no', '2025-11-25 07:43:04', '2025-11-25 07:43:04'),
(5, 0, 5, 2, 0.00, 'no', '2025-11-25 08:55:36', '2025-11-25 08:55:36'),
(6, 0, 6, 2, 0.00, 'no', '2025-11-25 08:59:51', '2025-11-25 08:59:51'),
(7, 0, 7, 1, 0.00, 'no', '2025-11-25 09:04:09', '2025-11-25 09:04:09'),
(8, 0, 8, 1, 0.00, 'no', '2025-11-25 09:06:49', '2025-11-25 09:06:49'),
(9, 0, 9, 2, 0.00, 'no', '2025-11-25 09:09:44', '2025-11-25 09:09:44'),
(12, 0, 10, 3, 0.00, 'no', '2025-11-26 06:35:16', '2025-11-26 06:35:16'),
(17, 0, 19, 1, 0.00, 'no', '2025-12-04 14:15:04', '2025-12-04 14:15:04'),
(18, 0, 19, 3, 0.00, 'no', '2025-12-04 14:15:04', '2025-12-04 14:15:04'),
(19, 0, 22, 1, 0.00, 'no', '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(20, 0, 22, 2, 0.00, 'no', '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(21, 0, 22, 3, 0.00, 'no', '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(22, 0, 23, 1, 0.00, 'no', '2025-12-06 05:37:32', '2025-12-06 05:37:32'),
(23, 0, 23, 2, 0.00, 'no', '2025-12-06 05:37:32', '2025-12-06 05:37:32'),
(24, 0, 23, 3, 0.00, 'no', '2025-12-06 05:37:32', '2025-12-06 05:37:32'),
(25, 0, 153, 4, 0.00, 'no', '2025-12-07 05:10:06', '2025-12-07 05:10:06'),
(26, 1, 131, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(27, 1, 132, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(28, 1, 133, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(29, 1, 134, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(30, 1, 135, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(31, 1, 120, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(32, 1, 136, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(33, 1, 137, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(34, 1, 138, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(35, 1, 121, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(36, 1, 139, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(37, 1, 140, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(38, 1, 141, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(39, 1, 142, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(40, 1, 122, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(41, 1, 143, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(42, 1, 144, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(43, 1, 123, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(44, 1, 124, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(45, 1, 125, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(46, 1, 126, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(47, 1, 145, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(48, 1, 146, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(49, 1, 147, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(50, 1, 148, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(51, 1, 149, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(52, 1, 153, 5, 5000.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(53, 1, 127, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(54, 1, 128, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(55, 1, 129, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(56, 1, 130, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(57, 1, 150, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(58, 1, 151, 5, 0.00, 'no', '2025-12-07 05:42:56', '2025-12-07 05:42:56'),
(59, 0, 154, 1, 0.00, 'no', '2026-01-09 06:01:11', '2026-01-09 06:01:11'),
(60, 0, 155, 2, 0.00, 'no', '2026-01-28 07:22:04', '2026-01-28 07:22:04'),
(61, 0, 156, 2, 0.00, 'no', '2026-01-28 09:21:40', '2026-01-28 09:21:40'),
(62, 0, 159, 3, 0.00, 'no', '2026-01-31 08:10:58', '2026-01-31 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_processing`
--

CREATE TABLE `student_fees_processing` (
  `id` int NOT NULL,
  `gateway_ins_id` int NOT NULL,
  `fee_category` varchar(255) NOT NULL,
  `student_fees_master_id` int DEFAULT NULL,
  `fee_groups_feetype_id` int DEFAULT NULL,
  `student_transport_fee_id` int DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_refrence`
--

CREATE TABLE `student_refrence` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `student_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `hostel_room_id` int DEFAULT NULL,
  `vehroute_id` int DEFAULT NULL,
  `route_pickup_point_id` int DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_leave` int NOT NULL DEFAULT '0',
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int NOT NULL,
  `default_login` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `hostel_room_id`, `vehroute_id`, `route_pickup_point_id`, `transport_fees`, `fees_discount`, `is_leave`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-11-24 12:58:40', '2025-11-25 09:28:38'),
(2, 20, 2, 2, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-11-25 07:38:41', '2025-12-06 03:57:51'),
(3, 20, 3, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 07:43:04', '2025-11-25 07:43:04'),
(4, 20, 4, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-11-25 08:41:15', '2026-01-15 07:00:34'),
(5, 20, 5, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 08:55:36', '2025-11-25 08:55:36'),
(6, 20, 6, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 08:59:51', '2025-11-25 08:59:51'),
(7, 20, 7, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 09:04:09', '2025-11-25 09:04:09'),
(8, 20, 8, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 09:06:49', '2025-11-25 09:06:49'),
(9, 20, 9, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-11-25 09:09:44', '2025-11-25 09:09:44'),
(10, 20, 10, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-11-26 06:23:55', '2025-11-26 07:05:49'),
(14, 20, 14, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-03 07:58:32', '2025-12-03 07:58:32'),
(16, 20, 16, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-04 06:47:55', '2025-12-04 06:47:55'),
(17, 20, 17, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-04 06:53:53', '2025-12-04 06:53:53'),
(19, 20, 19, 2, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-12-04 14:15:04', '2025-12-04 14:38:40'),
(20, 23, 3, 2, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 02:35:02', '2025-12-06 02:35:02'),
(21, 23, 5, 2, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 02:35:02', '2025-12-06 02:35:02'),
(22, 20, 20, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-12-06 04:13:07', '2025-12-06 04:21:42'),
(23, 20, 21, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-12-06 05:37:32', '2025-12-06 06:02:33'),
(120, 20, 118, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-12-06 14:42:23', '2025-12-06 15:17:55'),
(121, 20, 119, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(122, 20, 120, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(123, 20, 121, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(124, 20, 122, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(125, 20, 123, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(126, 20, 124, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(127, 20, 125, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(128, 20, 126, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(129, 20, 127, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(130, 20, 128, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(131, 20, 129, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(132, 20, 130, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(133, 20, 131, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(134, 20, 132, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(135, 20, 133, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(136, 20, 134, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(137, 20, 135, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(138, 20, 136, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(139, 20, 137, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(140, 20, 138, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(141, 20, 139, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(142, 20, 140, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(143, 20, 141, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(144, 20, 142, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(145, 20, 143, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(146, 20, 144, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(147, 20, 145, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(148, 20, 146, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(149, 20, 147, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(150, 20, 148, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(151, 20, 149, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(152, 18, 150, 3, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-07 05:01:31', '2025-12-07 05:01:31'),
(153, 20, 151, 3, 2, NULL, 3, 1, 0.00, 0.00, 0, 'no', 0, 0, '2025-12-07 05:10:06', '2025-12-07 06:03:31'),
(154, 20, 152, 4, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-09 06:01:11', '2026-01-09 06:01:11'),
(155, 20, 153, 6, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-28 07:22:04', '2026-01-28 07:22:04'),
(156, 20, 154, 6, 2, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-28 09:21:40', '2026-01-28 09:21:40'),
(157, 20, 155, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-28 17:20:25', '2026-01-28 17:20:25'),
(158, 20, 156, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-28 17:24:42', '2026-01-28 17:24:42'),
(159, 20, 157, 2, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2026-01-31 08:10:58', '2026-01-31 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `student_skills_detail`
--

CREATE TABLE `student_skills_detail` (
  `id` int NOT NULL,
  `skill_category` varchar(255) NOT NULL,
  `skill_detail` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_attendances`
--

CREATE TABLE `student_subject_attendances` (
  `id` int NOT NULL,
  `student_session_id` int DEFAULT NULL,
  `subject_timetable_id` int DEFAULT NULL,
  `attendence_type_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_timeline`
--

CREATE TABLE `student_timeline` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` text NOT NULL,
  `document` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `created_student_id` int NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE `student_transport_fees` (
  `id` int NOT NULL,
  `transport_feemaster_id` int NOT NULL,
  `student_session_id` int NOT NULL,
  `route_pickup_point_id` int NOT NULL,
  `generated_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `student_transport_fees`
--

INSERT INTO `student_transport_fees` (`id`, `transport_feemaster_id`, `student_session_id`, `route_pickup_point_id`, `generated_by`, `created_at`, `updated_at`) VALUES
(1, 9, 153, 1, NULL, '2025-12-07 06:03:31', '2025-12-07 06:03:31'),
(2, 10, 153, 1, NULL, '2025-12-07 06:04:28', '2025-12-07 06:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `student_work_experience`
--

CREATE TABLE `student_work_experience` (
  `id` int NOT NULL,
  `institute` text NOT NULL,
  `designation` text NOT NULL,
  `year` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `detail` text NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MATH', '04', 'theory', 'no', '2025-11-24 12:55:56', '2025-11-24 12:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `session_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Min-math', '', 20, '2025-12-06 02:34:01', '2025-12-06 02:34:01'),
(2, 'Min-Math', '', 23, '2025-12-06 02:37:20', '2025-12-06 02:37:20'),
(3, 'Phy', '', 23, '2025-12-06 02:37:36', '2025-12-06 02:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_class_sections`
--

CREATE TABLE `subject_group_class_sections` (
  `id` int NOT NULL,
  `subject_group_id` int DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `description` text,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subject_group_class_sections`
--

INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 20, NULL, 0, '2025-12-06 02:34:01', '2025-12-06 02:34:01'),
(2, 2, 1, 23, NULL, 0, '2025-12-06 02:37:20', '2025-12-06 02:37:20'),
(3, 3, 2, 23, NULL, 0, '2025-12-06 02:37:36', '2025-12-06 02:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subjects`
--

CREATE TABLE `subject_group_subjects` (
  `id` int NOT NULL,
  `subject_group_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subject_group_subjects`
--

INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 1, '2025-12-06 02:34:01', '2025-12-06 02:34:01'),
(2, 2, 23, 1, '2025-12-06 02:37:20', '2025-12-06 02:37:20'),
(3, 3, 23, 1, '2025-12-06 02:37:36', '2025-12-06 02:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE `subject_syllabus` (
  `id` int NOT NULL,
  `topic_id` int NOT NULL,
  `session_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_for` int NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `subject_timetable`
--

CREATE TABLE `subject_timetable` (
  `id` int NOT NULL,
  `session_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `subject_group_id` int DEFAULT NULL,
  `subject_group_subject_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE `submit_assignment` (
  `id` int NOT NULL,
  `homework_id` int NOT NULL,
  `student_id` int NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `template_admitcards`
--

CREATE TABLE `template_admitcards` (
  `id` int NOT NULL,
  `template` varchar(250) DEFAULT NULL,
  `heading` text,
  `title` text,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int NOT NULL DEFAULT '1',
  `is_father_name` int NOT NULL DEFAULT '1',
  `is_mother_name` int NOT NULL DEFAULT '1',
  `is_dob` int NOT NULL DEFAULT '1',
  `is_admission_no` int NOT NULL DEFAULT '1',
  `is_roll_no` int NOT NULL DEFAULT '1',
  `is_address` int NOT NULL DEFAULT '1',
  `is_gender` int NOT NULL DEFAULT '1',
  `is_photo` int NOT NULL,
  `is_class` int NOT NULL DEFAULT '0',
  `is_section` int NOT NULL DEFAULT '0',
  `is_active` int DEFAULT '0',
  `content_footer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `template_admitcards`
--

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `is_active`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Admit Card', '', '', '', '', 'Test', 'Mount Carmel School', 'test dmit card2', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-02-28 14:26:15', '2026-01-20 09:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `template_marksheets`
--

CREATE TABLE `template_marksheets` (
  `id` int NOT NULL,
  `header_image` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `heading` text,
  `title` text,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int DEFAULT '1',
  `is_name` int DEFAULT '1',
  `is_father_name` int DEFAULT '1',
  `is_mother_name` int DEFAULT '1',
  `is_dob` int DEFAULT '1',
  `is_admission_no` int DEFAULT '1',
  `is_roll_no` int DEFAULT '1',
  `is_photo` int DEFAULT '1',
  `is_division` int NOT NULL DEFAULT '1',
  `is_rank` int NOT NULL DEFAULT '0',
  `is_customfield` int NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int NOT NULL DEFAULT '0',
  `is_teacher_remark` int NOT NULL DEFAULT '1',
  `is_section` int NOT NULL DEFAULT '0',
  `content` text,
  `content_footer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `template_marksheets`
--

INSERT INTO `template_marksheets` (`id`, `header_image`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_rank`, `is_customfield`, `background_img`, `date`, `is_class`, `is_teacher_remark`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', '', '', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '', NULL, 0, 1, 0, NULL, NULL, '2020-02-28 14:26:06', '2020-02-28 14:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `lesson_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `complete_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `session_id`, `lesson_id`, `name`, `status`, `complete_date`, `created_at`, `updated_at`) VALUES
(1, 23, 1, 'Set theory', 1, '2025-12-07', '2025-12-06 02:40:24', '2025-12-06 02:41:30'),
(2, 23, 3, 'Newtons law', 0, NULL, '2025-12-06 02:40:48', '2025-12-06 02:40:48'),
(3, 23, 4, 'Set theory', 0, NULL, '2025-12-06 02:42:30', '2025-12-06 02:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `transport_feemaster`
--

CREATE TABLE `transport_feemaster` (
  `id` int NOT NULL,
  `session_id` int NOT NULL,
  `month` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fine_amount` float(10,2) DEFAULT '0.00',
  `fine_type` varchar(50) DEFAULT NULL,
  `fine_percentage` float(10,2) DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transport_feemaster`
--

INSERT INTO `transport_feemaster` (`id`, `session_id`, `month`, `due_date`, `fine_amount`, `fine_type`, `fine_percentage`, `created_at`, `updated_at`) VALUES
(1, 20, 'April', '2026-01-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(2, 20, 'May', '2026-02-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(3, 20, 'June', '2026-03-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(4, 20, 'July', '2026-04-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(5, 20, 'August', '2026-05-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(6, 20, 'September', '2026-06-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(7, 20, 'October', '2026-07-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(8, 20, 'November', '2026-08-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(9, 20, 'December', '2026-09-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(10, 20, 'January', '2026-10-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(11, 20, 'February', '2026-11-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41'),
(12, 20, 'March', '2026-12-04', 3000.00, 'fix', NULL, '2025-12-07 05:58:41', '2025-12-07 05:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int NOT NULL,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'MUTYALAMPADU (3176)', NULL, NULL, 'no', '2025-11-26 09:44:24', '2025-12-06 14:32:34'),
(2, 'BATTUVARIPALLI (0977)', NULL, NULL, 'no', '2025-12-06 14:32:51', '2025-12-06 14:32:51'),
(3, 'DACHEPALLI (0977)', NULL, NULL, 'no', '2025-12-06 14:33:02', '2025-12-06 14:33:02'),
(4, 'SRINIVASAPURAM (4211)', NULL, NULL, 'no', '2025-12-06 14:33:11', '2025-12-06 14:33:11'),
(5, 'TANGEDA (7323) IInd WARD', NULL, NULL, 'no', '2025-12-06 14:33:40', '2025-12-06 14:33:40'),
(6, 'DACHEPALLI (4211)', NULL, NULL, 'no', '2025-12-06 14:34:11', '2025-12-06 14:34:11'),
(7, 'IRIKEPALLI (9830)', NULL, NULL, 'no', '2025-12-06 14:34:22', '2025-12-06 14:34:22'),
(8, 'RAMAPURAM (3176)', NULL, NULL, 'no', '2025-12-06 14:34:31', '2025-12-06 14:34:31'),
(9, 'KACHAVARAM (7323)', NULL, NULL, 'no', '2025-12-06 14:34:41', '2025-12-06 14:34:41'),
(10, 'VEERAPURAM (5675)', NULL, NULL, 'no', '2025-12-06 14:34:51', '2025-12-06 14:34:51'),
(11, 'TANGEDA (9830) 1st WARD', NULL, NULL, 'no', '2025-12-06 14:35:02', '2025-12-06 14:35:02'),
(12, 'MINI AUTO', NULL, NULL, 'no', '2025-12-06 14:35:13', '2025-12-06 14:35:13'),
(13, 'DACHEPALLI (5675)', NULL, NULL, 'no', '2025-12-06 14:35:22', '2025-12-06 14:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `upload_contents`
--

CREATE TABLE `upload_contents` (
  `id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `real_name` text NOT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `mime_type` text NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  `upload_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'superadmin@sms.com', 'Super Admin', NULL, '::1', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 04:39:09'),
(2, 'admin@sms.com', 'Admin', NULL, '::1', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 05:08:43'),
(3, 'admin@sms.com', 'Admin', NULL, '::1', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 06:13:49'),
(4, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:27:22'),
(5, 'admin@sms.com', 'Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:27:29'),
(6, 'superadmin@sms.com', 'Super Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:34:20'),
(7, 'superadmin@sms.com', 'Super Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:35:28'),
(8, 'superadmin@sms.com', 'Super Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:44:17'),
(9, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:45:04'),
(10, 'admin@sms.com', 'Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 12:52:22'),
(11, 'superadmin@sms.com', 'Super Admin', NULL, '52.66.144.55', 'Chrome 142.0.0.0, Windows 10', '2025-11-24 13:01:03'),
(12, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 04:08:20'),
(13, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 04:22:51'),
(14, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 04:23:22'),
(15, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 04:29:18'),
(16, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 05:11:37'),
(17, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 05:17:04'),
(18, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 06:21:26'),
(19, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 06:22:52'),
(20, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 06:24:45'),
(21, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 06:29:13'),
(22, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 07:37:34'),
(23, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 07:41:27'),
(24, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 07:41:57'),
(25, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 08:30:07'),
(26, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:03:29'),
(27, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:19:45'),
(28, 'std1', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:28:32'),
(29, 'parent1', 'parent', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:33:31'),
(30, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:36:51'),
(31, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:38:51'),
(32, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:40:50'),
(33, 'sabita@gmail.com', 'Teacher', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:42:39'),
(34, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 09:48:52'),
(35, 'admin@sms.com', 'Admin', NULL, '49.42.140.219', 'Chrome 142.0.0.0, Android', '2025-11-25 10:11:25'),
(36, 'admin@sms.com', 'Admin', NULL, '171.48.106.156', 'Chrome 142.0.0.0, Android', '2025-11-25 10:27:21'),
(37, 'k@sms.com', 'Teacher', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 10:28:41'),
(38, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 10:29:53'),
(39, 'std1', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 10:32:26'),
(40, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-25 11:31:31'),
(41, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 04:14:49'),
(42, 'std1', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 04:27:36'),
(43, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 05:00:13'),
(44, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 05:03:33'),
(45, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 05:05:31'),
(46, 'sabita@gmail.com', 'Teacher', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 05:21:41'),
(47, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 05:41:27'),
(48, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 06:11:09'),
(49, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 06:46:48'),
(50, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 06:51:24'),
(51, 'k@sms.com', 'Teacher', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 06:53:38'),
(52, 'std1', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 07:01:23'),
(53, 'std10', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 07:05:44'),
(54, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 09:33:46'),
(55, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 09:34:22'),
(56, 'std10', 'student', 1, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 09:40:39'),
(57, 'admin@sms.com', 'Admin', NULL, '49.42.189.147', 'Chrome 142.0.0.0, Windows 10', '2025-11-26 16:36:11'),
(58, 'admin@sms.com', 'Admin', NULL, '106.221.145.27', 'Chrome 142.0.0.0, Windows 10', '2025-11-28 16:11:04'),
(59, 'admin@sms.com', 'Admin', NULL, '106.221.145.27', 'Chrome 142.0.0.0, Windows 10', '2025-11-28 16:15:27'),
(60, 'admin@sms.com', 'Admin', NULL, '99.248.26.48', 'Chrome 142.0.0.0, Windows 10', '2025-11-28 23:41:14'),
(61, 'Admin@sms.com', 'Admin', NULL, '49.36.169.50', 'Chrome 142.0.0.0, Android', '2025-11-29 00:15:55'),
(62, 'superadmin@sms.com', 'Super Admin', NULL, '223.231.209.20', 'Chrome 142.0.0.0, Windows 10', '2025-11-29 15:21:56'),
(63, 'admin@sms.com', 'Admin', NULL, '122.163.242.222', 'Chrome 142.0.0.0, Windows 10', '2025-11-30 05:47:31'),
(64, 'admin@sms.com', 'Admin', NULL, '49.47.9.115', 'Chrome 142.0.0.0, Windows 10', '2025-11-30 17:30:21'),
(65, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-01 05:23:17'),
(66, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-01 08:44:03'),
(67, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-01 09:05:02'),
(68, 'admin@sms.com', 'Admin', NULL, '49.42.143.249', 'Chrome 142.0.0.0, Android', '2025-12-01 13:17:27'),
(69, 'admin@sms.com', 'Admin', NULL, '49.42.143.249', 'Chrome 142.0.0.0, Android', '2025-12-01 13:17:58'),
(70, 'admin@sms.com', 'Admin', NULL, '106.215.146.19', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 02:52:48'),
(71, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 05:52:45'),
(72, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 08:01:32'),
(73, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 08:03:15'),
(74, 'admin@sms.com', 'Admin', NULL, '115.42.33.62', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 09:45:06'),
(75, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 11:04:38'),
(76, 'admin@sms.com', 'Admin', NULL, '106.215.144.136', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 16:11:10'),
(77, 'admin@sms.com', 'Admin', NULL, '49.42.189.9', 'Chrome 142.0.0.0, Windows 10', '2025-12-02 16:35:06'),
(78, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-03 04:30:51'),
(79, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-03 07:13:06'),
(80, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-03 07:19:18'),
(81, 'admin@sms.com', 'Admin', NULL, '49.42.149.167', 'Chrome 142.0.0.0, Windows 10', '2025-12-03 07:28:02'),
(82, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-03 08:42:08'),
(83, 'admin@sms.com', 'Admin', NULL, '115.42.33.62', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 06:43:57'),
(84, 'admin@sms.com', 'Admin', NULL, '115.42.33.62', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 06:49:45'),
(85, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 08:14:38'),
(86, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 08:34:55'),
(87, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 11:23:40'),
(88, 'admin@sms.com', 'Admin', NULL, '49.37.130.180', 'Chrome 142.0.0.0, Mac OS X', '2025-12-04 11:31:26'),
(89, 'admin@sms.com', 'Admin', NULL, '49.42.147.149', 'Chrome 142.0.0.0, Android', '2025-12-04 11:50:18'),
(90, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 12:16:08'),
(91, 'admin@sms.com', 'Admin', NULL, '106.215.145.248', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 13:59:29'),
(92, 'parent19', 'parent', NULL, '106.215.145.248', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 14:38:30'),
(93, 'std19', 'student', 2, '106.215.145.248', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 14:41:53'),
(94, 'superadmin@sms.com', 'Super Admin', NULL, '106.215.146.97', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 15:58:21'),
(95, 'admin@sms.com', 'Admin', NULL, '106.215.146.97', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 15:59:34'),
(96, 'superadmin@sms.com', 'Super Admin', NULL, '106.215.146.97', 'Chrome 142.0.0.0, Windows 10', '2025-12-04 16:00:26'),
(97, 'admin@sms.com', 'Admin', NULL, '157.50.148.119', 'Chrome 142.0.0.0, Android', '2025-12-05 14:04:49'),
(98, 'superadmin@sms.com', 'Super Admin', NULL, '157.50.148.112', 'Chrome 142.0.0.0, Android', '2025-12-05 14:07:45'),
(99, 'admin@sms.com', 'Admin', NULL, '223.184.193.63', 'Chrome 142.0.0.0, Windows 10', '2025-12-05 16:04:22'),
(100, 'admin@sms.com', 'Admin', NULL, '152.57.162.97', 'Chrome 142.0.0.0, Android', '2025-12-05 20:41:06'),
(101, 'admin@sms.com', 'Admin', NULL, '49.42.181.136', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 01:09:04'),
(102, 'admin@sms.com', 'Admin', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:30:26'),
(103, 'superadmin@sms.com', 'Super Admin', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:32:18'),
(104, 'admin@sms.com', 'Admin', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:42:52'),
(105, 'superadmin@sms.com', 'Super Admin', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:44:32'),
(106, 'superadmin@sms.com', 'Super Admin', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:46:17'),
(107, 'k@sms.com', 'Teacher', NULL, '152.59.200.83', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 02:47:06'),
(108, 'admin@sms.com', 'Admin', NULL, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 03:54:59'),
(109, 'std2', 'student', 2, '106.216.193.82', 'Chrome 143.0.0.0, Android', '2025-12-06 03:57:43'),
(110, 'std2', 'student', 2, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 04:02:59'),
(111, 'admin@sms.com', 'Admin', NULL, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 04:05:33'),
(112, 'std20', 'student', 1, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 04:21:38'),
(113, 'Superadmin@sms.com', 'Super Admin', NULL, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 04:22:53'),
(114, 'admin@sms.com', 'Admin', NULL, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 05:06:44'),
(115, 'admin@sms.com', 'Admin', NULL, '152.59.203.134', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 05:29:35'),
(116, 'parent21', 'parent', NULL, '157.50.93.108', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 06:02:25'),
(117, 'std21', 'student', 1, '157.50.93.108', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 06:04:41'),
(118, 'admin@sms.com', 'Admin', NULL, '157.50.93.108', 'Chrome 143.0.0.0, Windows 10', '2025-12-06 08:17:50'),
(119, 'admin@sms.com', 'Admin', NULL, '152.57.190.102', 'Chrome 142.0.0.0, Android', '2025-12-06 09:01:06'),
(120, 'std20', 'student', 1, '106.216.206.159', 'Chrome 143.0.0.0, Android', '2025-12-06 09:17:12'),
(121, 'admin@sms.com', 'Admin', NULL, '152.57.190.102', 'Chrome 142.0.0.0, Android', '2025-12-06 11:34:44'),
(122, 'admin@sms.com', 'Admin', NULL, '152.57.177.238', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 12:35:57'),
(123, 'std21', 'student', 1, '152.57.177.238', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 12:36:54'),
(124, 'admin@sms.com', 'Admin', NULL, '139.5.11.15', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 12:41:00'),
(125, 'admin@sms.com', 'Admin', NULL, '139.5.11.15', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 12:45:22'),
(126, 'admin@sms.com', 'Admin', NULL, '106.216.205.56', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 12:53:11'),
(127, 'admin@sms.com', 'Admin', NULL, '157.50.89.69', 'Chrome 143.0.0.0, Windows 10', '2025-12-06 13:07:12'),
(128, 'superadmin@sms.com', 'Super Admin', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 14:54:29'),
(129, 'saidesh.bojja@gmail.com', 'Teacher', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 15:00:33'),
(130, 'saidesh.bojja@gmail.com', 'Teacher', NULL, '157.50.89.69', 'Chrome 143.0.0.0, Windows 10', '2025-12-06 15:00:51'),
(131, 'parent118', 'parent', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 15:16:42'),
(132, 'admin@sms.com', 'Admin', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 15:19:38'),
(133, 'superadmin@sms.com', 'Super Admin', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 15:20:11'),
(134, 'std118', 'student', 3, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-06 15:29:07'),
(135, 'admin@sms.com', 'Admin', NULL, '139.5.10.247', 'Chrome 142.0.0.0, Windows 10', '2025-12-07 02:43:50'),
(136, 'admin@sms.com', 'Admin', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-07 04:21:17'),
(137, 'superadmin@sms.com', 'Super Admin', NULL, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-07 04:25:35'),
(138, 'std118', 'student', 3, '157.50.89.69', 'Chrome 142.0.0.0, Windows 10', '2025-12-07 04:28:49'),
(139, 'saidesh.bojja@gmail.com', 'Teacher', NULL, '157.50.89.69', 'Chrome 143.0.0.0, Windows 10', '2025-12-07 05:01:22'),
(140, 'admin@sms.com', 'Admin', NULL, '157.50.89.69', 'Chrome 143.0.0.0, Windows 10', '2025-12-07 05:06:07'),
(141, 'admin@sms.com', 'Admin', NULL, '139.5.10.247', 'Chrome 142.0.0.0, Windows 10', '2025-12-07 16:55:36'),
(142, 'admin@sms.com', 'Admin', NULL, '49.42.129.90', 'Chrome 142.0.0.0, Android', '2025-12-12 13:55:33'),
(143, 'admin@sms.com', 'Admin', NULL, '115.42.33.111', 'Chrome 143.0.0.0, Windows 10', '2025-12-15 05:09:20'),
(144, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-15 08:18:33'),
(145, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-16 05:01:48'),
(146, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-16 09:25:43'),
(147, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-16 11:59:11'),
(148, 'admin@sms.com', 'Admin', NULL, '99.248.26.48', 'Chrome 143.0.0.0, Windows 10', '2025-12-16 18:10:45'),
(149, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-17 07:10:37'),
(150, 'admin@sms.com', 'Admin', NULL, '27.60.140.46', 'Chrome 143.0.0.0, Windows 10', '2025-12-17 13:37:42'),
(151, 'superadmin@sms.com', 'Super Admin', NULL, '171.48.108.52', 'Chrome 143.0.0.0, Windows 10', '2025-12-28 05:48:11'),
(152, 'superadmin@sms.com', 'Super Admin', NULL, '106.222.191.139', 'Chrome 143.0.0.0, Windows 10', '2025-12-28 06:14:46'),
(153, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2025-12-29 05:10:29'),
(154, 'admin@sms.com', 'Admin', NULL, '115.42.33.147', 'Chrome 143.0.0.0, Windows 10', '2026-01-02 06:43:03'),
(155, 'admin@sms.com', 'Admin', NULL, '115.42.33.147', 'Chrome 143.0.0.0, Windows 10', '2026-01-02 11:22:50'),
(156, 'admin@sms.com', 'Admin', NULL, '106.215.149.152', 'Chrome 143.0.0.0, Windows 10', '2026-01-04 18:27:54'),
(157, 'admin@sms.com', 'Admin', NULL, '115.42.33.119', 'Chrome 143.0.0.0, Windows 10', '2026-01-05 06:02:12'),
(158, 'admin@sms.com', 'Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-05 07:04:16'),
(159, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-05 07:05:06'),
(160, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-08 06:12:41'),
(161, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-08 09:17:58'),
(162, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-08 09:23:54'),
(163, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-09 05:35:25'),
(164, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 143.0.0.0, Windows 10', '2026-01-09 05:44:10'),
(165, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-12 05:28:52'),
(166, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-12 06:48:30'),
(167, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-12 07:20:08'),
(168, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:28:02'),
(169, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:28:12'),
(170, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:28:22'),
(171, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:31:56'),
(172, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:36:43'),
(173, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:38:12'),
(174, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:39:38'),
(175, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:55:06'),
(176, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 08:55:45'),
(177, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Unidentified User Agent, Unknown Platform', '2026-01-12 09:22:19'),
(178, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-13 06:24:46'),
(179, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-13 07:21:15'),
(180, 'superadmin@sms.com', 'Super Admin', NULL, '117.203.175.241', 'Chrome 143.0.0.0, Windows 10', '2026-01-14 07:23:03'),
(181, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-15 06:10:21'),
(182, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-15 06:58:26'),
(183, 'parent4', 'parent', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-15 07:00:24'),
(184, 'admin@sms.com', 'Admin', NULL, '115.42.33.101', 'Chrome 143.0.0.0, Windows 10', '2026-01-15 07:11:19'),
(185, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 05:25:26'),
(186, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 05:48:59'),
(187, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 05:49:36'),
(188, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 05:55:38'),
(189, 'parent4', 'parent', NULL, '115.42.33.140', 'Firefox 146.0, Windows 10', '2026-01-19 06:09:34'),
(190, 'parent4', 'parent', NULL, '115.42.33.140', 'Firefox 146.0, Windows 10', '2026-01-19 06:15:12'),
(191, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 06:29:31'),
(192, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 06:35:45'),
(193, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 07:00:25'),
(194, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 07:14:56'),
(195, 'parent4', 'parent', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 13:58:07'),
(196, 'std4', 'student', 1, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:02:33'),
(197, 'std4', 'student', 1, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:26:24'),
(198, 'parent4', 'parent', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:27:32'),
(199, 'std4', 'student', 1, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:28:10'),
(200, 'parent4', 'parent', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:33:33'),
(201, 'admin@sms.com', 'Admin', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-19 14:39:58'),
(202, 'parent4', 'parent', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 01:38:12'),
(203, 'parent4', 'parent', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 01:43:59'),
(204, 'admin@sms.com', 'Admin', NULL, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 01:44:37'),
(205, 'std4', 'student', 1, '106.215.144.209', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 02:15:37'),
(206, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 05:22:58'),
(207, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 06:02:57'),
(208, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 06:13:51'),
(209, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 06:48:36'),
(210, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 09:34:39'),
(211, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 09:39:21'),
(212, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 10:44:36'),
(213, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-20 11:19:17'),
(214, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 05:47:11'),
(215, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 06:24:00'),
(216, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 07:22:59'),
(217, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 07:34:49'),
(218, 'std4', 'student', 1, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 10:12:27'),
(219, 'parent4', 'parent', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 10:13:55'),
(220, 'admin@sms.com', 'Admin', NULL, '115.42.33.140', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 11:09:06'),
(221, 'admin@sms.com', 'Admin', NULL, '106.215.147.118', 'Chrome 143.0.0.0, Windows 10', '2026-01-21 14:52:22'),
(222, 'parent4', 'parent', NULL, '106.215.147.118', 'Chrome 143.0.0.0, Windows 10', '2026-01-22 01:14:19'),
(223, 'superadmin@sms.com', 'Super Admin', NULL, '117.97.212.24', 'Chrome 144.0.0.0, Windows 10', '2026-01-24 09:57:01'),
(224, 'parent19', 'parent', NULL, '117.97.212.24', 'Chrome 144.0.0.0, Windows 10', '2026-01-24 09:58:09'),
(225, 'parent19', 'parent', NULL, '117.97.212.24', 'Chrome 144.0.0.0, Windows 10', '2026-01-24 09:59:10'),
(226, 'parent4', 'parent', NULL, '106.215.145.46', 'Chrome 144.0.0.0, Windows 10', '2026-01-25 06:21:37'),
(227, 'parent4', 'parent', NULL, '115.42.33.105', 'Chrome 144.0.0.0, Windows 10', '2026-01-27 04:42:11'),
(228, 'admin@sms.com', 'Admin', NULL, '49.42.191.248', 'Chrome 144.0.0.0, Windows 10', '2026-01-28 07:08:03'),
(229, 'admin@sms.com', 'Admin', NULL, '223.181.55.44', 'Firefox 147.0, Windows 10', '2026-01-28 07:19:46'),
(230, 'admin@sms.com', 'Admin', NULL, '49.42.179.48', 'Chrome 144.0.0.0, Windows 10', '2026-01-28 09:56:48'),
(231, 'admin@sms.com', 'Admin', NULL, '223.181.55.44', 'Firefox 147.0, Windows 10', '2026-01-28 13:23:53'),
(232, 'admin@sms.com', 'Admin', NULL, '49.42.184.80', 'Chrome 144.0.0.0, Windows 10', '2026-01-28 17:03:56'),
(233, 'std2', 'student', 2, '223.184.202.4', 'Chrome 144.0.0.0, Windows 10', '2026-01-28 17:28:55'),
(234, 'admin@sms.com', 'Admin', NULL, '223.181.55.44', 'Firefox 147.0, Windows 10', '2026-01-29 05:42:11'),
(235, 'admin@sms.com', 'Admin', NULL, '115.42.33.105', 'Chrome 144.0.0.0, Windows 10', '2026-01-29 05:54:12'),
(236, 'admin@sms.com', 'Admin', NULL, '115.42.33.105', 'Chrome 144.0.0.0, Windows 10', '2026-01-29 06:19:15'),
(237, 'admin@sms.com', 'Admin', NULL, '223.181.55.44', 'Firefox 147.0, Windows 10', '2026-01-29 06:36:02'),
(238, 'admin@sms.com', 'Admin', NULL, '106.215.149.129', 'Chrome 144.0.0.0, Windows 10', '2026-01-29 13:14:07'),
(239, 'admin@sms.com', 'Admin', NULL, '115.42.33.105', 'Chrome 144.0.0.0, Windows 10', '2026-01-30 05:18:47'),
(240, 'admin@sms.com', 'Admin', NULL, '115.42.33.81', 'Chrome 144.0.0.0, Windows 10', '2026-01-31 07:20:13'),
(241, 'admin@sms.com', 'Admin', NULL, '117.199.84.238', 'Chrome 144.0.0.0, Windows 10', '2026-01-31 08:07:47'),
(242, 'superadmin@sms.com', 'Super Admin', NULL, '103.112.27.45', 'Chrome 144.0.0.0, Windows 10', '2026-02-06 05:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `lang_id` int NOT NULL,
  `currency_id` int DEFAULT '0',
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `lang_id`, `currency_id`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'std1', 'pzu85c', '', 'student', 4, 0, '', 'no', '2025-11-24 12:58:40', '2025-12-04 15:59:22'),
(2, 0, 'parent1', 'cpjnx5', '1', 'parent', 0, 0, '', 'yes', '2025-11-24 12:58:40', '2025-11-24 12:58:40'),
(3, 2, 'std2', '95hvsv', '', 'student', 4, 0, '', 'yes', '2025-11-25 07:38:41', '2025-11-25 07:38:41'),
(4, 0, 'parent2', 'l1uz4b', '2', 'parent', 0, 0, '', 'yes', '2025-11-25 07:38:41', '2025-11-25 07:38:41'),
(5, 3, 'std3', '3edzha', '', 'student', 4, 0, '', 'yes', '2025-11-25 07:43:04', '2025-11-25 07:43:04'),
(6, 0, 'parent3', 'l7ninf', '3', 'parent', 0, 0, '', 'yes', '2025-11-25 07:43:05', '2025-11-25 07:43:05'),
(7, 4, 'std4', 'fyxv0l', '', 'student', 4, 0, '', 'yes', '2025-11-25 08:41:15', '2025-11-25 08:41:15'),
(8, 0, 'parent4', 'u60i4e', '4', 'parent', 0, 0, '', 'yes', '2025-11-25 08:41:15', '2025-11-25 08:41:15'),
(9, 5, 'std5', 'ipnum1', '', 'student', 4, 0, '', 'yes', '2025-11-25 08:55:36', '2025-11-25 08:55:36'),
(11, 6, 'std6', 'ip92ut', '', 'student', 4, 0, '', 'yes', '2025-11-25 08:59:51', '2025-11-25 08:59:51'),
(12, 0, 'parent6', 'gn774s', '6', 'parent', 0, 0, '', 'yes', '2025-11-25 08:59:51', '2025-11-25 08:59:51'),
(13, 7, 'std7', 'larxu8', '', 'student', 4, 0, '', 'yes', '2025-11-25 09:04:09', '2025-11-25 09:04:09'),
(14, 0, 'parent7', 'gh27x2', '7', 'parent', 0, 0, '', 'yes', '2025-11-25 09:04:09', '2025-11-25 09:04:09'),
(15, 8, 'std8', 'lqdtnj', '', 'student', 4, 0, '', 'yes', '2025-11-25 09:06:49', '2025-11-25 09:06:49'),
(17, 9, 'std9', 'q6prr6', '', 'student', 4, 0, '', 'yes', '2025-11-25 09:09:44', '2025-11-25 09:09:44'),
(19, 10, 'std10', 'b8tzue', '', 'student', 4, 0, '', 'yes', '2025-11-26 06:23:55', '2025-11-26 06:23:55'),
(20, 0, 'parent10', 'osyhoe', '10', 'parent', 0, 0, '', 'yes', '2025-11-26 06:23:55', '2025-11-26 06:23:55'),
(21, 11, 'std11', 'yb28tr', '', 'student', 4, 0, '', 'yes', '2025-12-02 03:09:52', '2025-12-02 03:09:52'),
(22, 12, 'std12', 'b3aq8g', '', 'student', 4, 0, '', 'yes', '2025-12-03 07:38:46', '2025-12-03 07:38:46'),
(24, 13, 'std13', '1elbqz', '', 'student', 4, 0, '', 'yes', '2025-12-03 07:49:43', '2025-12-03 07:49:43'),
(26, 14, 'std14', 'sb41hu', '', 'student', 4, 0, '', 'yes', '2025-12-03 07:58:32', '2025-12-03 07:58:32'),
(27, 0, 'parent14', '317r1o', '14', 'parent', 0, 0, '', 'yes', '2025-12-03 07:58:32', '2025-12-03 07:58:32'),
(28, 15, 'std15', 'txwx8h', '', 'student', 4, 0, '', 'yes', '2025-12-04 06:45:46', '2025-12-04 06:45:46'),
(30, 16, 'std16', '8ph0l4', '', 'student', 4, 0, '', 'yes', '2025-12-04 06:47:55', '2025-12-04 06:47:55'),
(31, 0, 'parent16', 'osq0o5', '16', 'parent', 0, 0, '', 'yes', '2025-12-04 06:47:55', '2025-12-04 06:47:55'),
(32, 17, 'std17', 'oxwgtq', '', 'student', 4, 0, '', 'yes', '2025-12-04 06:53:53', '2025-12-04 06:53:53'),
(33, 0, 'parent17', 'fh32p1', '17', 'parent', 0, 0, '', 'yes', '2025-12-04 06:53:53', '2025-12-04 06:53:53'),
(34, 18, 'std18', '826now', '', 'student', 4, 0, '', 'yes', '2025-12-04 13:14:32', '2025-12-04 13:14:32'),
(36, 19, 'std19', '521cqr', '', 'student', 4, 0, '', 'yes', '2025-12-04 14:15:04', '2025-12-04 14:15:04'),
(37, 0, 'parent19', 'eugsa5', '19', 'parent', 0, 0, '', 'yes', '2025-12-04 14:15:04', '2025-12-04 14:15:04'),
(38, 20, 'std20', 's9bvyn', '', 'student', 4, 0, '', 'yes', '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(39, 0, 'parent20', 'eunixp', '20', 'parent', 0, 0, '', 'yes', '2025-12-06 04:13:07', '2025-12-06 04:13:07'),
(40, 21, 'std21', 'le1rn7', '', 'student', 4, 0, '', 'yes', '2025-12-06 05:37:32', '2025-12-06 05:37:32'),
(41, 0, 'parent21', '0x3gos', '21', 'parent', 0, 0, '', 'yes', '2025-12-06 05:37:32', '2025-12-06 05:37:32'),
(234, 118, 'std118', 'xn2lwt', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(235, 118, 'parent118', '4a1ms6', '118', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(236, 119, 'std119', 'gggu6t', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(237, 119, 'parent119', 'r3fh0l', '119', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(238, 120, 'std120', 'oqu7xs', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(239, 120, 'parent120', 'v21vzc', '120', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(240, 121, 'std121', 'ldu10i', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(241, 121, 'parent121', 'm3lsox', '121', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:23', '2025-12-06 14:42:23'),
(242, 122, 'std122', 'pgap11', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(243, 122, 'parent122', 'r0twxl', '122', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(244, 123, 'std123', '63k5dk', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(245, 123, 'parent123', 'd50212', '123', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(246, 124, 'std124', 'jxpjo0', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(247, 124, 'parent124', 'uozfau', '124', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(248, 125, 'std125', '9w1gb8', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(249, 125, 'parent125', 'uslnuc', '125', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(250, 126, 'std126', 'yyb764', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(251, 126, 'parent126', 'v23pdz', '126', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(252, 127, 'std127', 'ue1tis', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(253, 127, 'parent127', '9z79px', '127', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(254, 128, 'std128', 'm93max', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(255, 128, 'parent128', '9pjrqo', '128', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(256, 129, 'std129', 'q9wxa8', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(257, 129, 'parent129', '9h8auw', '129', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(258, 130, 'std130', 's3pj0y', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(259, 130, 'parent130', 'x621s6', '130', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(260, 131, 'std131', '5npml9', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(261, 131, 'parent131', 'rwyh5f', '131', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(262, 132, 'std132', '1ytbgn', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(263, 132, 'parent132', 'ardi9i', '132', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(264, 133, 'std133', 'atjfyl', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(265, 133, 'parent133', 'dqsc98', '133', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(266, 134, 'std134', 'bjcmzi', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(267, 134, 'parent134', 'x5iu7u', '134', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(268, 135, 'std135', 'qanylw', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(269, 135, 'parent135', 'psx78g', '135', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(270, 136, 'std136', 'rwg22x', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(271, 136, 'parent136', '652367', '136', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(272, 137, 'std137', 'l5e062', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(273, 137, 'parent137', 'razipt', '137', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:24', '2025-12-06 14:42:24'),
(274, 138, 'std138', 'nl8dwb', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(275, 138, 'parent138', '3096c6', '138', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(276, 139, 'std139', '17r3kx', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(277, 139, 'parent139', 'yvihzb', '139', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(278, 140, 'std140', 'r7x6y6', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(279, 140, 'parent140', '3dawkl', '140', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(280, 141, 'std141', 'w5492n', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(281, 141, 'parent141', 'e7jg4u', '141', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(282, 142, 'std142', 'lzghiz', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(283, 142, 'parent142', 'e0vm31', '142', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(284, 143, 'std143', '58lrto', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(285, 143, 'parent143', 'huxboj', '143', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(286, 144, 'std144', '8ypt45', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(287, 144, 'parent144', '5e3v5b', '144', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(288, 145, 'std145', 'e4xu67', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(289, 145, 'parent145', 'y4040g', '145', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(290, 146, 'std146', 'qzl9rr', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(291, 146, 'parent146', 'hxtlgi', '146', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(292, 147, 'std147', 'k0wfla', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(293, 147, 'parent147', 'hhv7fw', '147', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(294, 148, 'std148', 'md192b', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(295, 148, 'parent148', 'ayyq4o', '148', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(296, 149, 'std149', 'ldwxgh', '', 'student', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(297, 149, 'parent149', 'c7a5u7', '149', 'parent', 0, 0, '', 'yes', '2025-12-06 14:42:25', '2025-12-06 14:42:25'),
(298, 150, 'std150', 'hc2ydt', '', 'student', 4, 0, '', 'yes', '2025-12-07 05:01:31', '2025-12-07 05:01:31'),
(299, 0, 'parent150', '5p804r', '150', 'parent', 0, 0, '', 'yes', '2025-12-07 05:01:31', '2025-12-07 05:01:31'),
(300, 151, 'std151', 'bq2pgi', '', 'student', 4, 0, '', 'yes', '2025-12-07 05:10:06', '2025-12-07 05:10:06'),
(301, 0, 'parent151', 'qrsij8', '151', 'parent', 0, 0, '', 'yes', '2025-12-07 05:10:06', '2025-12-07 05:10:06'),
(302, 152, 'std152', 'iht1a9', '', 'student', 4, 0, '', 'yes', '2026-01-09 06:01:11', '2026-01-09 06:01:11'),
(303, 0, 'parent152', 'vx6bf6', '152', 'parent', 0, 0, '', 'yes', '2026-01-09 06:01:11', '2026-01-09 06:01:11'),
(304, 153, 'std153', '4qaebt', '', 'student', 4, 0, '', 'yes', '2026-01-28 07:22:04', '2026-01-28 07:22:04'),
(305, 0, 'parent153', 's72m1k', '153', 'parent', 0, 0, '', 'yes', '2026-01-28 07:22:04', '2026-01-28 07:22:04'),
(306, 154, 'std154', '1skf6f', '', 'student', 4, 0, '', 'yes', '2026-01-28 09:21:40', '2026-01-28 09:21:40'),
(307, 0, 'parent154', 'waun9b', '154', 'parent', 0, 0, '', 'yes', '2026-01-28 09:21:40', '2026-01-28 09:21:40'),
(308, 155, 'std155', 'ldpg78', '', 'student', 4, 0, '', 'yes', '2026-01-28 17:20:25', '2026-01-28 17:20:25'),
(309, 0, 'parent155', 'o5t0ty', '155', 'parent', 0, 0, '', 'yes', '2026-01-28 17:20:25', '2026-01-28 17:20:25'),
(310, 156, 'std156', 's52htf', '', 'student', 4, 0, '', 'yes', '2026-01-28 17:24:42', '2026-01-28 17:24:42'),
(311, 0, 'parent156', 'avigha', '156', 'parent', 0, 0, '', 'yes', '2026-01-28 17:24:42', '2026-01-28 17:24:42'),
(312, 157, 'std157', 'yzpf2q', '', 'student', 4, 0, '', 'yes', '2026-01-31 08:10:58', '2026-01-31 08:10:58'),
(313, 0, 'parent157', 'lt9akr', '157', 'parent', 0, 0, '', 'yes', '2026-01-31 08:10:58', '2026-01-31 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int NOT NULL,
  `users_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `staff_id` int DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `manufacture_year` varchar(4) DEFAULT NULL,
  `registration_number` varchar(50) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `max_seating_capacity` varchar(255) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `vehicle_photo`, `manufacture_year`, `registration_number`, `chasis_number`, `max_seating_capacity`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`, `updated_at`) VALUES
(1, 'AP07TD-4211', '', NULL, '', '', '', '', 'B.VENKATA RAMAIAH', '', '9494115281', '4211 1ST TRIP', '2025-12-06 14:49:59', '2025-12-06 14:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int NOT NULL,
  `route_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `vehicle_routes`
--

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2025-12-06 14:50:11', '2025-12-06 14:50:11'),
(2, 2, 1, '2025-12-07 06:00:26', '2025-12-07 06:00:26'),
(3, 13, 1, '2025-12-07 06:01:03', '2025-12-07 06:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial`
--

CREATE TABLE `video_tutorial` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `vid_title` text,
  `description` text NOT NULL,
  `thumb_path` varchar(500) DEFAULT NULL,
  `dir_path` varchar(500) DEFAULT NULL,
  `img_name` varchar(300) NOT NULL,
  `thumb_name` varchar(300) NOT NULL,
  `video_link` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial_class_sections`
--

CREATE TABLE `video_tutorial_class_sections` (
  `id` int NOT NULL,
  `video_tutorial_id` int NOT NULL,
  `class_section_id` int NOT NULL,
  `created_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int NOT NULL,
  `staff_id` int DEFAULT NULL,
  `student_session_id` int DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_people` int NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `meeting_with` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `visitors_book`
--

INSERT INTO `visitors_book` (`id`, `staff_id`, `student_session_id`, `source`, `purpose`, `name`, `email`, `contact`, `id_proof`, `no_of_people`, `date`, `in_time`, `out_time`, `note`, `image`, `meeting_with`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 'For enquiry about results', 'SD', NULL, '', '', 2, '2026-01-30', '11:25 AM', '11:25 AM', '', NULL, 'student', '2026-01-30 05:55:34', '2026-01-30 06:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `visitors_purpose`
--

INSERT INTO `visitors_purpose` (`id`, `visitors_purpose`, `description`, `created_at`, `updated_at`) VALUES
(1, 'For enquiry about results', '', '2026-01-30 05:55:08', '2026-01-30 05:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_versions`
--
ALTER TABLE `addon_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_id` (`addon_id`);

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_student_id` (`create_student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `cls_sec_id` (`cls_sec_id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cumulative_fine`
--
ALTER TABLE `cumulative_fine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_belong_to` (`belong_to`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_visible_on_table` (`visible_on_table`),
  ADD KEY `idx_weight` (`weight`);
ALTER TABLE `custom_fields` ADD FULLTEXT KEY `idx_field_values` (`field_values`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `idx_belong_table_id` (`belong_table_id`),
  ADD KEY `idx_field_value` (`field_value`);

--
-- Indexes for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disable_reason`
--
ALTER TABLE `disable_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `enquiry_ibfk_4` (`class_id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesion_id` (`sesion_id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_ibfk_2` (`session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`);

--
-- Indexes for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  ADD KEY `exam_group_student_id` (`exam_group_student_id`),
  ADD KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`);

--
-- Indexes for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exp_head_id` (`exp_head_id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `filetypes`
--
ALTER TABLE `filetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_id` (`enquiry_id`),
  ADD KEY `followup_by` (`followup_by`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_type`
--
ALTER TABLE `holiday_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_id` (`homework_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `id_card`
--
ALTER TABLE `id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_head_id` (`income_head_id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `item_store_id` (`item_store_id`),
  ADD KEY `item_supplier_id` (`item_supplier_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `issue_to` (`issue_to`),
  ADD KEY `issue_by` (`issue_by`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`);

--
-- Indexes for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_syllabus_id` (`subject_syllabus_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_setting_bc`
--
ALTER TABLE `notification_setting_bc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `offline_fees_payments_ibfk_4` (`approved_by`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`);

--
-- Indexes for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`),
  ADD KEY `onlineexam_question_id` (`onlineexam_question_id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `school_house_id` (`school_house_id`),
  ADD KEY `idx_reference_no` (`reference_no`),
  ADD KEY `idx_mobileno` (`mobileno`);

--
-- Indexes for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `idx_belong_table_id` (`belong_table_id`),
  ADD KEY `idx_field_value` (`field_value`(200));

--
-- Indexes for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `payslip_id` (`payslip_id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_short_code` (`short_code`),
  ADD KEY `perm_group_id` (`perm_group_id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_additional_fields_settings`
--
ALTER TABLE `resume_additional_fields_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_settings_fields`
--
ALTER TABLE `resume_settings_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_cat_id` (`perm_cat_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_route_id` (`transport_route_id`),
  ADD KEY `pickup_point_id` (`pickup_point_id`);

--
-- Indexes for table `school_houses`
--
ALTER TABLE `school_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`share_content_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `user_parent_id` (`user_parent_id`);

--
-- Indexes for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`upload_content_id`),
  ADD KEY `share_content_id` (`share_content_id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidebar_menu_id` (`sidebar_menu_id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template_bc`
--
ALTER TABLE `sms_template_bc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_attendance_staff` (`staff_id`),
  ADD KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendence_schedules`
--
ALTER TABLE `staff_attendence_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_details_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_details_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_request_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_request_leave_types` (`leave_type_id`),
  ADD KEY `applied_by` (`applied_by`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_payslip_staff` (`staff_id`);

--
-- Indexes for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_rating_staff` (`staff_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_timeline_staff` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admission_no` (`admission_no`),
  ADD KEY `idx_roll_no` (`roll_no`),
  ADD KEY `idx_mobileno` (`mobileno`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_firstname` (`firstname`);

--
-- Indexes for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_deposite_id` (`student_fees_deposite_id`),
  ADD KEY `student_fees_discount_id` (`student_fees_discount_id`);

--
-- Indexes for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `approve_by` (`approve_by`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_attendence_schedules`
--
ALTER TABLE `student_attendence_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_dashboard_settings`
--
ALTER TABLE `student_dashboard_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feemaster_id` (`feemaster_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `student_refrence`
--
ALTER TABLE `student_refrence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_session_ibfk_5` (`vehroute_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `student_session_ibfk_6` (`route_pickup_point_id`);

--
-- Indexes for table `student_skills_detail`
--
ALTER TABLE `student_skills_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `subject_timetable_id` (`subject_timetable_id`);

--
-- Indexes for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `route_pickup_point_id` (`route_pickup_point_id`),
  ADD KEY `transport_feemaster_id` (`transport_feemaster_id`);

--
-- Indexes for table `student_work_experience`
--
ALTER TABLE `student_work_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_code` (`code`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_for` (`created_for`);

--
-- Indexes for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `homework_id` (`homework_id`);

--
-- Indexes for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_by` (`upload_by`),
  ADD KEY `upload_contents_ibfk_2` (`content_type_id`),
  ADD KEY `idx_file_type` (`file_type`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle_no` (`vehicle_no`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_title` (`title`);

--
-- Indexes for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `video_tutorial_id` (`video_tutorial_id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `addon_versions`
--
ALTER TABLE `addon_versions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni_students`
--
ALTER TABLE `alumni_students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `class_section_times`
--
ALTER TABLE `class_section_times`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cumulative_fine`
--
ALTER TABLE `cumulative_fine`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disable_reason`
--
ALTER TABLE `disable_reason`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_attachments`
--
ALTER TABLE `email_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `filetypes`
--
ALTER TABLE `filetypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday_type`
--
ALTER TABLE `holiday_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_card`
--
ALTER TABLE `id_card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1182;

--
-- AUTO_INCREMENT for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notification_setting_bc`
--
ALTER TABLE `notification_setting_bc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permission_student`
--
ALTER TABLE `permission_student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_additional_fields_settings`
--
ALTER TABLE `resume_additional_fields_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resume_settings_fields`
--
ALTER TABLE `resume_settings_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1487;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_houses`
--
ALTER TABLE `school_houses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `share_contents`
--
ALTER TABLE `share_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_content_for`
--
ALTER TABLE `share_content_for`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sms_template_bc`
--
ALTER TABLE `sms_template_bc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff_attendence_schedules`
--
ALTER TABLE `staff_attendence_schedules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_rating`
--
ALTER TABLE `staff_rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `student_attendence_schedules`
--
ALTER TABLE `student_attendence_schedules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_dashboard_settings`
--
ALTER TABLE `student_dashboard_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_refrence`
--
ALTER TABLE `student_refrence`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `student_skills_detail`
--
ALTER TABLE `student_skills_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_timeline`
--
ALTER TABLE `student_timeline`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_work_experience`
--
ALTER TABLE `student_work_experience`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `upload_contents`
--
ALTER TABLE `upload_contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addon_versions`
--
ALTER TABLE `addon_versions`
  ADD CONSTRAINT `addon_versions_ibfk_1` FOREIGN KEY (`addon_id`) REFERENCES `addons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD CONSTRAINT `alumni_events_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumni_events_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  ADD CONSTRAINT `annual_calendar_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_issues_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `libarary_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_sections_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD CONSTRAINT `class_section_times_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD CONSTRAINT `class_teacher_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_4` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_3` FOREIGN KEY (`cls_sec_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD CONSTRAINT `daily_assignment_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_2` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_3` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD CONSTRAINT `email_attachments_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_3` FOREIGN KEY (`assigned`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`sesion_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`exp_head_id`) REFERENCES `expense_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD CONSTRAINT `feemasters_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_2` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD CONSTRAINT `follow_up_ibfk_1` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_up_ibfk_2` FOREIGN KEY (`followup_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD CONSTRAINT `front_cms_menu_items_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `front_cms_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD CONSTRAINT `gateway_ins_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD CONSTRAINT `gateway_ins_response_ibfk_1` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_6` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_7` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_8` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD CONSTRAINT `homework_evaluation_ibfk_1` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD CONSTRAINT `hostel_rooms_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostel_rooms_ibfk_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`income_head_id`) REFERENCES `income_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`item_store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`item_supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_3` FOREIGN KEY (`issue_to`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_4` FOREIGN KEY (`issue_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD CONSTRAINT `lesson_plan_forum_ibfk_1` FOREIGN KEY (`subject_syllabus_id`) REFERENCES `subject_syllabus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD CONSTRAINT `offline_fees_payments_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_3` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_5` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_3` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_4` FOREIGN KEY (`school_house_id`) REFERENCES `school_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD CONSTRAINT `online_admission_custom_field_value_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD CONSTRAINT `online_admission_payment_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD CONSTRAINT `payslip_allowance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslip_allowance_ibfk_2` FOREIGN KEY (`payslip_id`) REFERENCES `staff_payslip` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD CONSTRAINT `permission_category_ibfk_1` FOREIGN KEY (`perm_group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD CONSTRAINT `permission_student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_6` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD CONSTRAINT `read_notification_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_ibfk_2` FOREIGN KEY (`perm_cat_id`) REFERENCES `permission_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD CONSTRAINT `route_pickup_point_ibfk_1` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `route_pickup_point_ibfk_2` FOREIGN KEY (`pickup_point_id`) REFERENCES `pickup_point` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD CONSTRAINT `send_notification_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD CONSTRAINT `share_contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD CONSTRAINT `share_content_for_ibfk_1` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_content_for_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_4` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_5` FOREIGN KEY (`user_parent_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD CONSTRAINT `share_upload_contents_ibfk_1` FOREIGN KEY (`upload_content_id`) REFERENCES `upload_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_upload_contents_ibfk_2` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD CONSTRAINT `sidebar_menus_ibfk_1` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_1` FOREIGN KEY (`sidebar_menu_id`) REFERENCES `sidebar_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_2` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`designation`) REFERENCES `staff_designation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_1` FOREIGN KEY (`applied_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  ADD CONSTRAINT `student_applied_discounts_ibfk_1` FOREIGN KEY (`student_fees_deposite_id`) REFERENCES `student_fees_deposite` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_applied_discounts_ibfk_2` FOREIGN KEY (`student_fees_discount_id`) REFERENCES `student_fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD CONSTRAINT `student_applyleave_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_applyleave_ibfk_2` FOREIGN KEY (`approve_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD CONSTRAINT `student_attendences_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendences_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD CONSTRAINT `student_fees_ibfk_1` FOREIGN KEY (`feemaster_id`) REFERENCES `feemasters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD CONSTRAINT `student_fees_processing_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_2` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_4` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_session`
--
ALTER TABLE `student_session`
  ADD CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_5` FOREIGN KEY (`vehroute_id`) REFERENCES `vehicle_routes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_6` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_7` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD CONSTRAINT `student_timeline_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD CONSTRAINT `student_transport_fees_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_2` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_3` FOREIGN KEY (`transport_feemaster_id`) REFERENCES `transport_feemaster` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD CONSTRAINT `submit_assignment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submit_assignment_ibfk_2` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD CONSTRAINT `transport_feemaster_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD CONSTRAINT `upload_contents_ibfk_1` FOREIGN KEY (`upload_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_contents_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD CONSTRAINT `vehicle_routes_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_routes_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD CONSTRAINT `video_tutorial_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_2` FOREIGN KEY (`video_tutorial_id`) REFERENCES `video_tutorial` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD CONSTRAINT `visitors_book_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitors_book_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
