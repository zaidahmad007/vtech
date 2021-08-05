-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 08:22 PM
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
-- Database: `vtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_branches`
--

CREATE TABLE `admin_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbranch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sbranch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_branches`
--

INSERT INTO `admin_branches` (`id`, `course_name`, `fbranch_name`, `sbranch_name`, `created_at`, `updated_at`) VALUES
(2, 'B.tech', 'Information technology', 'IT', '2021-05-18 09:43:37', '2021-05-18 09:43:37'),
(3, 'B.tech', 'Mechanical', 'ME', '2021-08-01 13:09:43', '2021-08-01 13:09:43'),
(4, 'B.tech', 'Computer Science And Engineering', 'CSE', '2021-08-04 06:47:10', '2021-08-04 06:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_courses`
--

CREATE TABLE `admin_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fn_course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sn_course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_courses`
--

INSERT INTO `admin_courses` (`id`, `fn_course`, `sn_course`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Technology.', 'B.tech', '2021-05-16 05:41:51', '2021-05-16 05:41:51'),
(2, 'Bachelor of Technology.', 'B.tech', '2021-05-16 05:42:21', '2021-05-16 05:42:21'),
(3, 'Bachelor of Architecture.', 'b.Arch', '2021-05-16 05:44:41', '2021-05-16 05:44:41'),
(4, 'Bachelor of Computer Application', 'BCA', '2021-08-01 13:10:07', '2021-08-01 13:10:07'),
(5, 'Bachelor of Pharmacy', 'B.Pharma', '2021-08-04 06:54:45', '2021-08-04 06:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_subjects`
--

CREATE TABLE `admin_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_subjects`
--

INSERT INTO `admin_subjects` (`id`, `subject`, `subject_code`, `created_at`, `updated_at`) VALUES
(3, 'Maths', 'RCS901', '2021-05-08 11:50:08', '2021-05-08 11:50:08'),
(4, 'Mechnical', 'RCS301', '2021-05-08 11:55:39', '2021-05-08 11:55:39'),
(5, 'Maths', 'RCS301', '2021-05-16 05:37:21', '2021-05-16 05:37:21'),
(6, 'Accounting financial analysis report', 'MCD-90', NULL, NULL),
(7, 'Physics', 'RC007', '2021-08-04 06:53:53', '2021-08-04 06:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present` tinyint(1) NOT NULL DEFAULT 0,
  `absent` tinyint(1) NOT NULL DEFAULT 0,
  `late` tinyint(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `user_name`, `present`, `absent`, `late`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aditi Gupta', 1, 0, 0, '2021-05-08', '2021-05-08 11:29:02', '2021-05-08 11:29:09'),
(2, 3, 'Aditi Gupta', 0, 0, 0, '2021-05-16', '2021-05-16 14:12:34', '2021-05-16 14:12:34'),
(3, 3, 'Aditi Gupta', 0, 0, 0, '2021-06-17', '2021-06-18 00:32:56', '2021-06-18 00:32:56'),
(4, 4, 'Aditi Gupta', 0, 1, 0, '2021-07-28', '2021-07-28 09:28:32', '2021-07-28 09:28:47'),
(5, 3, 'Aditi Gupgchaikcabc', 1, 0, 0, '2021-08-01', '2021-08-01 08:37:56', '2021-08-01 08:38:20'),
(6, 5, 'Admin', 0, 0, 0, '2021-08-01', '2021-08-01 13:38:41', '2021-08-01 13:38:41'),
(7, 21, 'Demo Student 2', 1, 0, 0, '2021-08-04', '2021-08-04 06:01:25', '2021-08-04 06:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sid`, `rid`, `message`, `created_at`, `updated_at`) VALUES
(6, '3', '4', 'hello', '2021-07-28 13:45:41', '2021-07-28 13:45:41'),
(7, '4', '3', 'hii', '2021-07-28 13:46:33', '2021-07-28 13:46:33'),
(8, '3', '4', 'ok', '2021-07-28 13:46:51', '2021-07-28 13:46:51'),
(9, '4', '3', 'Happy', '2021-07-28 13:49:29', '2021-07-28 13:49:29'),
(10, '4', '3', 'subject related chat', '2021-07-28 13:50:21', '2021-07-28 13:50:21'),
(11, '4', '3', 'ok', '2021-07-28 13:50:29', '2021-07-28 13:50:29'),
(12, '3', '4', 'its okk don\'t be sorry', '2021-07-28 13:50:59', '2021-07-28 13:50:59'),
(13, '4', '3', 'make sure query is fulfilled', '2021-07-28 13:51:11', '2021-07-28 13:51:11'),
(14, '4', '3', 'i have some querry regarding this', '2021-07-28 13:51:37', '2021-07-28 13:51:37'),
(15, '4', '3', 'okk', '2021-07-28 13:52:49', '2021-07-28 13:52:49'),
(16, '4', '3', 'hmmok', '2021-07-28 13:53:13', '2021-07-28 13:53:13'),
(17, '4', '3', 'good night', '2021-07-28 13:53:22', '2021-07-28 13:53:22'),
(18, '3', '4', 'ok good 9it , pain sahi ho jayega abhi', '2021-07-28 13:54:13', '2021-07-28 13:54:13'),
(19, '3', '4', 'hhmm ok', '2021-07-28 13:54:25', '2021-07-28 13:54:25'),
(20, '3', '4', 'hhmm ok', '2021-07-28 13:54:34', '2021-07-28 13:54:34'),
(21, '3', '4', 'cjscjs', '2021-07-28 13:55:49', '2021-07-28 13:55:49'),
(22, '3', '4', 'as you wish', '2021-07-28 13:56:20', '2021-07-28 13:56:20'),
(23, '3', '4', 'jjj', '2021-07-28 14:12:54', '2021-07-28 14:12:54'),
(24, '3', '8', 'you might help us', '2021-07-29 09:49:37', '2021-07-29 09:49:37'),
(25, '3', '8', 'hh', '2021-07-29 10:15:35', '2021-07-29 10:15:35'),
(26, '3', '8', 'liedfifjwfjwpfn kjcfsvs wlv nalclskinv;swpv blcfb aklw', '2021-07-29 10:22:28', '2021-07-29 10:22:28'),
(27, '4', '13', 'hello', '2021-07-29 10:42:08', '2021-07-29 10:42:08'),
(28, '4', '1', 'hello', '2021-07-30 11:05:21', '2021-07-30 11:05:21'),
(29, '4', '3', 'hello', '2021-08-01 08:41:34', '2021-08-01 08:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_12_182246_create_student_details_table', 1),
(5, '2021_04_12_182306_create_teacher_details_table', 1),
(6, '2021_04_18_104732_create_timetables_table', 1),
(7, '2021_04_24_085523_create_subjects_table', 2),
(8, '2021_04_24_172831_create_student_profiles_table', 2),
(9, '2021_05_03_081831_create_admin_subjects_table', 2),
(10, '2021_05_05_064148_create_attendances_table', 3),
(11, '2021_05_05_071408_create_attendances_table', 4),
(12, '2021_05_08_172936_create_teacher_subjects_table', 5),
(13, '2021_05_08_173501_create_teacher_subjects_table', 6),
(14, '2021_05_10_175334_create_notes_table', 7),
(15, '2021_05_11_055417_create_sessions_table', 8),
(16, '2021_05_16_105250_create_admin_courses_table', 9),
(17, '2021_05_17_050040_create_studentsubjects_table', 10),
(18, '2021_05_17_173840_create_admin_branches_table', 11),
(19, '2021_05_17_185346_create_admin_branches_table', 12),
(20, '2021_07_28_173638_create_chats_table', 13),
(21, '2021_07_30_180626_create_event_studies_table', 14),
(22, '2021_08_01_055244_create_study_events_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `user_id`, `date`, `description`, `notes_file`, `subject`, `topic`, `branch`, `created_at`, `updated_at`) VALUES
(1, 4, '2021-05-10', 'nnnnnnnnnnnnnnnnnnnn', '1620671075.jpg', 'Maths', '', 'IT', '2021-05-10 12:54:35', '2021-05-10 12:54:35'),
(3, 4, '2021-05-10', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '1620671203.jpg', '', '', '', '2021-05-10 12:56:43', '2021-05-10 12:56:43'),
(6, 4, '2021-05-10', 'hello this', '1620671951.jpg', '', '', '', '2021-05-10 13:09:11', '2021-05-10 13:09:11'),
(7, 4, '2021-05-11', 'nnnnnnnnnnnnnnn', '1620706772.jpg', 'Maths', 'linear alebra', '', '2021-05-10 22:49:32', '2021-05-10 22:49:32'),
(8, 4, '2021-05-11', 'mklllllllllllll', '1620715708.jpg', 'Maths', 'linear alebra3', '', '2021-05-11 01:18:28', '2021-05-11 01:18:28'),
(9, 4, '2021-05-11', 'mklllllllllllll', '1620715951.jpg', 'Maths', 'linear alebra3', '', '2021-05-11 01:22:31', '2021-05-11 01:22:31'),
(10, 4, '2021-05-11', 'mklllllllllllll', '1620715983.jpg', 'Maths', 'linear alebra3', '', '2021-05-11 01:23:03', '2021-05-11 01:23:03'),
(11, 4, '2021-05-11', 'mklll', '1620716031.jpg', 'Mechnical', 'linear alebra7', '', '2021-05-11 01:23:51', '2021-05-11 01:23:51'),
(12, 4, '2021-05-11', 'mkklll', '1620716706.jpg', 'Maths', 'linear alebra3', '', '2021-05-11 01:35:06', '2021-05-11 01:35:06'),
(13, 4, '2021-05-20', 'this is most important', '1621527528.pdf', 'Maths', 'linear alebra7', '', '2021-05-20 10:48:48', '2021-05-20 10:48:48'),
(14, 4, '2021-06-17', 'helllo', '1623952789.xlsx', 'Maths', 'linear alebra7', 'IT', '2021-06-18 00:59:49', '2021-06-18 00:59:49'),
(15, 4, '2021-07-28', 'Accounting', '1627484280.txt', 'Accounting financial analysis report', 'linear alebra3', 'IT', '2021-07-28 09:28:00', '2021-07-28 09:28:00'),
(16, 4, '2021-07-28', 'jscalcna:P', '1627484874.txt', 'Maths', 'linear alebra7', 'IT', '2021-07-28 09:37:54', '2021-07-28 09:37:54'),
(17, 22, '2021-08-04', 're', '1628096114.pdf', 'Maths', 'NumberSystem', 'IT', '2021-08-04 11:25:14', '2021-08-04 11:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`id`, `user_id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'Mechnical', 'RCS301', '2021-05-16 23:34:57', '2021-05-16 23:34:57'),
(2, 3, 'Maths', 'RCS901', '2021-05-17 03:20:11', '2021-05-17 03:20:11'),
(3, 3, 'Accounting financial analysis report', 'MCD-90', '2021-05-17 03:32:42', '2021-05-17 03:32:42'),
(4, 4, 'Maths', 'RCS901', '2021-07-28 09:30:07', '2021-07-28 09:30:07'),
(5, 5, 'Accounting financial analysis report', 'MCD-90', '2021-08-01 13:27:20', '2021-08-01 13:27:20'),
(9, 5, 'Mechnical', 'RCS301', '2021-08-01 13:38:12', '2021-08-01 13:38:12'),
(10, 23, 'Maths', 'RCS901', '2021-08-04 11:22:11', '2021-08-04 11:22:11'),
(11, 23, 'Mechnical', 'RCS301', '2021-08-04 11:23:01', '2021-08-04 11:23:01'),
(12, 19, 'Maths', 'RCS901', '2021-08-04 12:39:06', '2021-08-04 12:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Null',
  `collegecode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'B.Tech',
  `year` int(5) NOT NULL DEFAULT 0,
  `standard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `state`, `city`, `fname`, `district`, `pincode`, `mname`, `collegecode`, `college`, `rid`, `board`, `branch`, `course`, `year`, `standard`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Gurgaon', 'Lucknow', NULL, 'Null', '226017', 'Null', '567', 'sr institute', 'TECH20213', 'up', 'IT', 'B.tech', 1, 'inter', 3, '2021-05-20 14:06:55', '2021-05-20 14:06:55'),
(4, 'UP', 'LKO', NULL, 'Null', '226020', 'Null', '0845', 'srgi', 'TECH202119', 'cbse', 'IT', 'B.tech', 1, '1', 19, '2021-08-04 01:12:10', '2021-08-04 01:12:10'),
(5, 'UP', 'LKO', NULL, 'Null', '226020', 'Null', '485', 'SRGI', 'TECH202121', 'CBSE', 'IT', 'B.tech', 1, 'I m Cool', 21, '2021-08-04 06:00:48', '2021-08-04 06:00:48'),
(6, 'UP', 'LKO', NULL, 'Null', '226020', 'Null', '485', 'SRGI', 'TECH202123', 'cbse', 'IT', 'B.tech', 1, 'I m Cool', 23, '2021-08-04 11:21:19', '2021-08-04 11:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `study_events`
--

CREATE TABLE `study_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTimeEvent` datetime NOT NULL,
  `zlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `mlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_events`
--

INSERT INTO `study_events` (`id`, `teacher_id`, `teacher_name`, `subject`, `dateTimeEvent`, `zlink`, `mlink`, `description`, `branchName`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Aditi Gupta', 'Mechnical', '2021-09-02 16:11:00', 'jjj.com', NULL, 'gggg', 'IT', 'null', '2021-08-01 00:42:27', '2021-08-01 00:42:27'),
(2, 4, 'Aditi Gupta', 'Maths', '2021-09-02 11:46:00', NULL, 'https://meet.google.com/dpr-jvrw-rkf', 'kadnwafcnf', 'IT', 'null', '2021-08-01 00:46:13', '2021-08-01 00:46:13'),
(3, 18, 'Demo Teacher 1', 'Maths', '2021-08-14 12:15:00', 'zoomlincom', NULL, 'link', 'IT', 'null', '2021-08-04 01:15:57', '2021-08-04 01:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Standard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highest_qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`id`, `state`, `city`, `district`, `highest_qualification`, `specialization`, `board`, `experience`, `created_at`, `updated_at`) VALUES
(3, 'United Kingdom', 'lucknow', 'lucknow', 'm.tech', 'computer science', 'Blaenau Gwent', '5 year', '2021-06-18 00:58:54', '2021-06-18 00:58:54'),
(4, 'UP', 'LKO', 'LKO', 'PG', 'Math', 'cbse', '1', '2021-08-03 23:38:38', '2021-08-03 23:38:38'),
(5, 'UP', 'LKO', 'LKO', 'PG', 'Math', 'cbse', '1', '2021-08-04 00:52:59', '2021-08-04 00:52:59'),
(6, 'UP', 'LKO', 'LKO', 'PG', 'Math', 'cbse', '1', '2021-08-04 05:05:44', '2021-08-04 05:05:44'),
(7, 'UP', 'LKO', 'LKO', 'PG', 'Math', 'cbse', '1', '2021-08-04 11:17:01', '2021-08-04 11:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `user_id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 4, 'Maths', 'RCS901', '2021-05-08 12:41:00', '2021-05-08 12:41:00'),
(2, 4, 'Mechnical', 'RCS301', '2021-05-08 12:41:16', '2021-05-08 12:41:16'),
(3, NULL, 'Maths', 'RCS901', '2021-05-10 12:21:30', '2021-05-10 12:21:30'),
(4, 4, 'Accounting financial analysis report', 'MCD-90', '2021-07-28 09:27:13', '2021-07-28 09:27:13'),
(5, 22, 'Maths', 'RCS901', '2021-08-04 11:24:31', '2021-08-04 11:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_teacher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `rid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completeprofile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image_name`, `phone`, `status`, `rid`, `type`, `email`, `email_verified_at`, `password`, `completeprofile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aditi Gupta', '1620494101.jpg', '06393967940', 'active', 'TECH20211', 'student', 'aditi@gmail.com', NULL, 'aditi', '0', 'T48OtE5E0Zs3eC40GVHozFV0q2DYaVCL61Eec0kAotXMGjgI1bPfIITVQPQ3', '2021-05-02 04:47:56', '2021-05-08 11:45:01'),
(3, 'Aditi Gupgchaikcabc', 'user.png', '06393967940', 'active', 'TECH20213', 'student', 'aditi123@gmail.com', NULL, 'aditi', '1', 'YjCVwYsJaDMKIpXHkpkqZsd8dfRLwzgFfI9YjEFpn3PAOY0sywbX3lXHkChv', '2021-05-02 04:54:00', '2021-05-20 14:06:55'),
(4, 'Raj Pratap Singh', '1620716659.jpg', '06393967940', 'active', 'TECH20214', 'teacher', 'teacher@gmail.com', NULL, 'teacher', '1', 'fHq3mSDAKyzQDegszCZXulHhnOl7VfnXzGUpBl3XERdPTXOaK2LIzfMmTj7n', '2021-05-02 08:53:51', '2021-06-18 00:58:54'),
(5, 'Admin', '1627844320.jpg', '6393967940', 'active', '123456', 'admin', 'admin@mail.com', NULL, 'admin', '1', 'ruD81iQy3sVw3Bs2Ehq1MDYmfU5zsjzbys4aazTd8OqhAVCfoWbeNJidRka3', NULL, '2021-08-01 13:28:40'),
(6, 'teacher gupta', 'user.png', '6393967940', 'active', 'TECH20216', 'teacher', 'teacherji@mail.com', NULL, 'teacherji', '0', 'DKknOd5jVdmrxbYdoUGyhUPoNWg2BznFWcDGAue7J7C05JlUgtoZbWCiuv0T', '2021-05-08 10:53:41', '2021-05-08 10:53:43'),
(8, 'Manish Rai', 'user.png', '6393967940', 'active', 'TECH20218', 'teacher', 'aditiprofile61@gmail.com', NULL, 'teacherji', '0', 'WonGn0zvyEaJUJM4VLcs7MVqPvEnjxhPt7fMSeMPIZauv8cM4tkbB3zg88Xt', '2021-05-08 11:23:34', '2021-05-08 11:23:34'),
(9, 'Kritika Gupta', 'user.png', '06393967940', 'active', 'TECH20219', 'student', 'aditiy@mail.com', NULL, '123456789', '0', 'ihQrPjcNw7k6D3JxnQiazFMrNyl2Ww9DzZwCUX4JtRPWiuNwhirnr1Y0ftr3', '2021-05-16 14:02:53', '2021-05-16 14:02:54'),
(10, 'Aditi Gupta', 'user.png', '06393967940', 'active', 'TECH202110', 'student', 'farzi@gmail.com', NULL, 'mnbvcxz', '0', 'CVX7orSyhzRqkkQwpNYJXf0UdavYYj8nnrENhhWK6gwKFKrG9iwQsjpW122x', '2021-05-16 14:06:55', '2021-05-16 14:06:55'),
(12, 'Vishal Duby', 'user.png', '06393967940', 'active', 'TECH202112', 'student', 'f2arzi@gmail.com', NULL, 'mnbvcxz', '0', '5nTcVLOMjkbpJKyz9BRSmwkayjzmGQnH8NFC4xTBFZRCzmCZ9WPFmqaga6GR', '2021-05-16 14:09:31', '2021-05-16 14:09:31'),
(13, 'Janvi rathore', 'user.png', '6393967940', 'active', 'TECH202113', 'student', 'adi@gmail.com', NULL, 'mnbvcxz', '0', 'wIAaMWQxcDNLSp3Kr5SVSMkZhhuQN8VSUYGjvli72WQ9lWIE7NlXtwY2glQc', '2021-05-20 10:21:59', '2021-05-20 10:25:58'),
(16, 'Vainav Gupta', 'user.png', '06393967940', 'active', 'TECH202116', 'teacher', 'vaisnav@gmail.com', NULL, '123456', '0', '1mNO5FGeCK8vyQ0RbsUp6xKRzHXw6pjiczSkjKtOGHPxz5w6RfAdF0qhheuD', '2021-07-30 11:03:29', '2021-07-30 11:03:30'),
(17, 'Zaid Ahmed', '1628055128.jpeg', '9140809239', 'active', 'TECH202117', 'teacher', 'zaidahmadza.786@gmail.com', NULL, 'admin', '1', 'ZvmUDyJLeRqupIc2XylOrSNu665o0amImDvh3VDsO0mS6uacFa1BydFNVzxr', '2021-08-03 23:31:51', '2021-08-04 00:02:08'),
(18, 'Demo Teacher 1', 'user.png', '9140809239', 'active', 'TECH202118', 'teacher', 'demot1@gmail.com', NULL, 'teacherdemo1', '1', 'dQWTg9FuCfGZXL8BMpOm9LNqqg4vXLDNhjAfPssLSQwmIBpgxVqdfyToONNI', '2021-08-04 00:52:39', '2021-08-04 00:52:59'),
(19, 'Demo Student 1', 'user.png', '1227889222', 'active', 'TECH202119', 'student', 'demos1@gmail.com', NULL, 'studentdemo1', '1', 'qeufhjxqEffWi75i4OSmwQ8j7N2xuxToHpLFOPlUlRTRC6ro9OJoFirZQ6CD', '2021-08-04 01:11:20', '2021-08-04 01:12:10'),
(20, 'Demo Teacher 2', 'user.png', '1234578922', 'active', 'TECH202120', 'teacher', 'demot2@gmail.com', NULL, 'teacherdemo2', '1', 'eP7GqU0izxCpzZgR8vZxp82VZTFZtr5mGEN4cHVvm8QhBImmqFDPq6xWXWyz', '2021-08-04 04:28:43', '2021-08-04 05:05:44'),
(21, 'Demo Student 2', 'user.png', '98765432235', 'active', 'TECH202121', 'student', 'demos2@gmail.com', NULL, 'studentdemoo2', '1', 'RRDhpUWHiHgODVrT3TfVa7hpTN28UjrUdosrRvWKOxxSrB0I7YNnvxrvdpSC', '2021-08-04 05:10:03', '2021-08-04 06:00:48'),
(22, 'Demo Teacher 3', 'user.png', '57889076678', 'active', 'TECH202122', 'teacher', 'demot3@gmail.com', NULL, 'teacherdemo3', '1', 'VptR5pu0wicXAyOrF2EqMW2UCE1YCafbNS8qO7dqGP2LUyhPZvvh2ei0iqKu', '2021-08-04 11:16:13', '2021-08-04 11:17:01'),
(23, 'Demo Student 3', 'user.png', '9898911225', 'active', 'TECH202123', 'student', 'demos3@gmail.com', NULL, 'studentdemo3', '1', 'QYL0i11eA7d88sQIy4s7HSSSaQGbeYsXh1tWc4xDiJpWH8mKT101thBmcPfC', '2021-08-04 11:20:38', '2021-08-04 11:21:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_branches`
--
ALTER TABLE `admin_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_courses`
--
ALTER TABLE `admin_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_subjects`
--
ALTER TABLE `admin_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_index` (`user_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
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
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentsubjects_user_id_index` (`user_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_events`
--
ALTER TABLE `study_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subjects_user_id_index` (`user_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_rid_unique` (`rid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_branches`
--
ALTER TABLE `admin_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_courses`
--
ALTER TABLE `admin_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_subjects`
--
ALTER TABLE `admin_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `study_events`
--
ALTER TABLE `study_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_details`
--
ALTER TABLE `teacher_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD CONSTRAINT `studentsubjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `teacher_subjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
