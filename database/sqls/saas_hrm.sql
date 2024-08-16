-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2024 at 08:49 AM
-- Server version: 8.3.0
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm_saas_single_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT '0.00',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'default', 'created', 'App\\Models\\MetaInformation', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(2, 'default', 'created', 'App\\Models\\MetaInformation', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(3, 'default', 'created', 'App\\Models\\MetaInformation', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(4, 'default', 'created', 'App\\Models\\MetaInformation', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(5, 'default', 'created', 'App\\Models\\MetaInformation', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(6, 'default', 'created', 'App\\Models\\MetaInformation', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(7, 'default', 'created', 'App\\Models\\MetaInformation', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(8, 'default', 'created', 'App\\Models\\MetaInformation', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(9, 'default', 'created', 'App\\Models\\MetaInformation', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(10, 'default', 'created', 'App\\Models\\MetaInformation', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(11, 'default', 'created', 'App\\Models\\MetaInformation', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(12, 'default', 'created', 'App\\Models\\MetaInformation', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(13, 'default', 'created', 'App\\Models\\MetaInformation', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(14, 'default', 'created', 'App\\Models\\MetaInformation', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(15, 'default', 'created', 'App\\Models\\Time\\TimeZone', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(16, 'default', 'created', 'App\\Models\\Time\\TimeZone', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(17, 'default', 'created', 'App\\Models\\Time\\TimeZone', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(18, 'default', 'created', 'App\\Models\\Time\\TimeZone', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(19, 'default', 'created', 'App\\Models\\Time\\TimeZone', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(20, 'default', 'created', 'App\\Models\\Time\\TimeZone', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(21, 'default', 'created', 'App\\Models\\Time\\TimeZone', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(22, 'default', 'created', 'App\\Models\\Time\\TimeZone', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(23, 'default', 'created', 'App\\Models\\Time\\TimeZone', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(24, 'default', 'created', 'App\\Models\\Time\\TimeZone', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(25, 'default', 'created', 'App\\Models\\Time\\TimeZone', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(26, 'default', 'created', 'App\\Models\\Time\\TimeZone', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(27, 'default', 'created', 'App\\Models\\Time\\TimeZone', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(28, 'default', 'created', 'App\\Models\\Time\\TimeZone', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(29, 'default', 'created', 'App\\Models\\Time\\TimeZone', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(30, 'default', 'created', 'App\\Models\\Time\\TimeZone', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(31, 'default', 'created', 'App\\Models\\Time\\TimeZone', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(32, 'default', 'created', 'App\\Models\\Time\\TimeZone', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(33, 'default', 'created', 'App\\Models\\Time\\TimeZone', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(34, 'default', 'created', 'App\\Models\\Time\\TimeZone', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(35, 'default', 'created', 'App\\Models\\Time\\TimeZone', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(36, 'default', 'created', 'App\\Models\\Time\\TimeZone', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(37, 'default', 'created', 'App\\Models\\Time\\TimeZone', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(38, 'default', 'created', 'App\\Models\\Time\\TimeZone', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(39, 'default', 'created', 'App\\Models\\Time\\TimeZone', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(40, 'default', 'created', 'App\\Models\\Time\\TimeZone', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(41, 'default', 'created', 'App\\Models\\Time\\TimeZone', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(42, 'default', 'created', 'App\\Models\\Time\\TimeZone', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(43, 'default', 'created', 'App\\Models\\Time\\TimeZone', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(44, 'default', 'created', 'App\\Models\\Time\\TimeZone', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(45, 'default', 'created', 'App\\Models\\Time\\TimeZone', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(46, 'default', 'created', 'App\\Models\\Time\\TimeZone', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(47, 'default', 'created', 'App\\Models\\Time\\TimeZone', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(48, 'default', 'created', 'App\\Models\\Time\\TimeZone', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(49, 'default', 'created', 'App\\Models\\Time\\TimeZone', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(50, 'default', 'created', 'App\\Models\\Time\\TimeZone', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(51, 'default', 'created', 'App\\Models\\Time\\TimeZone', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(52, 'default', 'created', 'App\\Models\\Time\\TimeZone', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(53, 'default', 'created', 'App\\Models\\Time\\TimeZone', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(54, 'default', 'created', 'App\\Models\\Time\\TimeZone', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(55, 'default', 'created', 'App\\Models\\Time\\TimeZone', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(56, 'default', 'created', 'App\\Models\\Time\\TimeZone', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(57, 'default', 'created', 'App\\Models\\Time\\TimeZone', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(58, 'default', 'created', 'App\\Models\\Time\\TimeZone', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(59, 'default', 'created', 'App\\Models\\Time\\TimeZone', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(60, 'default', 'created', 'App\\Models\\Time\\TimeZone', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(61, 'default', 'created', 'App\\Models\\Time\\TimeZone', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(62, 'default', 'created', 'App\\Models\\Time\\TimeZone', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(63, 'default', 'created', 'App\\Models\\Time\\TimeZone', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(64, 'default', 'created', 'App\\Models\\Time\\TimeZone', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(65, 'default', 'created', 'App\\Models\\Time\\TimeZone', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(66, 'default', 'created', 'App\\Models\\Time\\TimeZone', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(67, 'default', 'created', 'App\\Models\\Time\\TimeZone', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(68, 'default', 'created', 'App\\Models\\Time\\TimeZone', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(69, 'default', 'created', 'App\\Models\\Time\\TimeZone', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(70, 'default', 'created', 'App\\Models\\Time\\TimeZone', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(71, 'default', 'created', 'App\\Models\\Time\\TimeZone', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(72, 'default', 'created', 'App\\Models\\Time\\TimeZone', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(73, 'default', 'created', 'App\\Models\\Time\\TimeZone', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(74, 'default', 'created', 'App\\Models\\Time\\TimeZone', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(75, 'default', 'created', 'App\\Models\\Time\\TimeZone', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(76, 'default', 'created', 'App\\Models\\Time\\TimeZone', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(77, 'default', 'created', 'App\\Models\\Time\\TimeZone', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(78, 'default', 'created', 'App\\Models\\Time\\TimeZone', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(79, 'default', 'created', 'App\\Models\\Time\\TimeZone', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(80, 'default', 'created', 'App\\Models\\Time\\TimeZone', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(81, 'default', 'created', 'App\\Models\\Time\\TimeZone', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(82, 'default', 'created', 'App\\Models\\Time\\TimeZone', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(83, 'default', 'created', 'App\\Models\\Time\\TimeZone', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(84, 'default', 'created', 'App\\Models\\Time\\TimeZone', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(85, 'default', 'created', 'App\\Models\\Time\\TimeZone', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(86, 'default', 'created', 'App\\Models\\Time\\TimeZone', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(87, 'default', 'created', 'App\\Models\\Time\\TimeZone', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(88, 'default', 'created', 'App\\Models\\Time\\TimeZone', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(89, 'default', 'created', 'App\\Models\\Time\\TimeZone', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(90, 'default', 'created', 'App\\Models\\Time\\TimeZone', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(91, 'default', 'created', 'App\\Models\\Time\\TimeZone', 77, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(92, 'default', 'created', 'App\\Models\\Time\\TimeZone', 78, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(93, 'default', 'created', 'App\\Models\\Time\\TimeZone', 79, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(94, 'default', 'created', 'App\\Models\\Time\\TimeZone', 80, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(95, 'default', 'created', 'App\\Models\\Time\\TimeZone', 81, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(96, 'default', 'created', 'App\\Models\\Time\\TimeZone', 82, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(97, 'default', 'created', 'App\\Models\\Time\\TimeZone', 83, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(98, 'default', 'created', 'App\\Models\\Time\\TimeZone', 84, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(99, 'default', 'created', 'App\\Models\\Time\\TimeZone', 85, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(100, 'default', 'created', 'App\\Models\\Time\\TimeZone', 86, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(101, 'default', 'created', 'App\\Models\\Time\\TimeZone', 87, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(102, 'default', 'created', 'App\\Models\\Time\\TimeZone', 88, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(103, 'default', 'created', 'App\\Models\\Time\\TimeZone', 89, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(104, 'default', 'created', 'App\\Models\\Time\\TimeZone', 90, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(105, 'default', 'created', 'App\\Models\\Time\\TimeZone', 91, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(106, 'default', 'created', 'App\\Models\\Time\\TimeZone', 92, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(107, 'default', 'created', 'App\\Models\\Time\\TimeZone', 93, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(108, 'default', 'created', 'App\\Models\\Time\\TimeZone', 94, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(109, 'default', 'created', 'App\\Models\\Time\\TimeZone', 95, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(110, 'default', 'created', 'App\\Models\\Time\\TimeZone', 96, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(111, 'default', 'created', 'App\\Models\\Time\\TimeZone', 97, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(112, 'default', 'created', 'App\\Models\\Time\\TimeZone', 98, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(113, 'default', 'created', 'App\\Models\\Time\\TimeZone', 99, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(114, 'default', 'created', 'App\\Models\\Time\\TimeZone', 100, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(115, 'default', 'created', 'App\\Models\\Time\\TimeZone', 101, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(116, 'default', 'created', 'App\\Models\\Time\\TimeZone', 102, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(117, 'default', 'created', 'App\\Models\\Time\\TimeZone', 103, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(118, 'default', 'created', 'App\\Models\\Time\\TimeZone', 104, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(119, 'default', 'created', 'App\\Models\\Time\\TimeZone', 105, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(120, 'default', 'created', 'App\\Models\\Time\\TimeZone', 106, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(121, 'default', 'created', 'App\\Models\\Time\\TimeZone', 107, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(122, 'default', 'created', 'App\\Models\\Time\\TimeZone', 108, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(123, 'default', 'created', 'App\\Models\\Time\\TimeZone', 109, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(124, 'default', 'created', 'App\\Models\\Time\\TimeZone', 110, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(125, 'default', 'created', 'App\\Models\\Time\\TimeZone', 111, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(126, 'default', 'created', 'App\\Models\\Time\\TimeZone', 112, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(127, 'default', 'created', 'App\\Models\\Time\\TimeZone', 113, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(128, 'default', 'created', 'App\\Models\\Time\\TimeZone', 114, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(129, 'default', 'created', 'App\\Models\\Time\\TimeZone', 115, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(130, 'default', 'created', 'App\\Models\\Time\\TimeZone', 116, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(131, 'default', 'created', 'App\\Models\\Time\\TimeZone', 117, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(132, 'default', 'created', 'App\\Models\\Time\\TimeZone', 118, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(133, 'default', 'created', 'App\\Models\\Time\\TimeZone', 119, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(134, 'default', 'created', 'App\\Models\\Time\\TimeZone', 120, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(135, 'default', 'created', 'App\\Models\\Time\\TimeZone', 121, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(136, 'default', 'created', 'App\\Models\\Time\\TimeZone', 122, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(137, 'default', 'created', 'App\\Models\\Time\\TimeZone', 123, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(138, 'default', 'created', 'App\\Models\\Time\\TimeZone', 124, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(139, 'default', 'created', 'App\\Models\\Time\\TimeZone', 125, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(140, 'default', 'created', 'App\\Models\\Time\\TimeZone', 126, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(141, 'default', 'created', 'App\\Models\\Time\\TimeZone', 127, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(142, 'default', 'created', 'App\\Models\\Time\\TimeZone', 128, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(143, 'default', 'created', 'App\\Models\\Time\\TimeZone', 129, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(144, 'default', 'created', 'App\\Models\\Time\\TimeZone', 130, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(145, 'default', 'created', 'App\\Models\\Time\\TimeZone', 131, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(146, 'default', 'created', 'App\\Models\\Time\\TimeZone', 132, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(147, 'default', 'created', 'App\\Models\\Time\\TimeZone', 133, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(148, 'default', 'created', 'App\\Models\\Time\\TimeZone', 134, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(149, 'default', 'created', 'App\\Models\\Time\\TimeZone', 135, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(150, 'default', 'created', 'App\\Models\\Time\\TimeZone', 136, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(151, 'default', 'created', 'App\\Models\\Time\\TimeZone', 137, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(152, 'default', 'created', 'App\\Models\\Time\\TimeZone', 138, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(153, 'default', 'created', 'App\\Models\\Time\\TimeZone', 139, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(154, 'default', 'created', 'App\\Models\\Time\\TimeZone', 140, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(155, 'default', 'created', 'App\\Models\\Time\\TimeZone', 141, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(156, 'default', 'created', 'App\\Models\\Time\\TimeZone', 142, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(157, 'default', 'created', 'App\\Models\\Time\\TimeZone', 143, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(158, 'default', 'created', 'App\\Models\\Time\\TimeZone', 144, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(159, 'default', 'created', 'App\\Models\\Time\\TimeZone', 145, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(160, 'default', 'created', 'App\\Models\\Time\\TimeZone', 146, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(161, 'default', 'created', 'App\\Models\\Time\\TimeZone', 147, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(162, 'default', 'created', 'App\\Models\\Time\\TimeZone', 148, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(163, 'default', 'created', 'App\\Models\\Time\\TimeZone', 149, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(164, 'default', 'created', 'App\\Models\\Time\\TimeZone', 150, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(165, 'default', 'created', 'App\\Models\\Time\\TimeZone', 151, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(166, 'default', 'created', 'App\\Models\\Time\\TimeZone', 152, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(167, 'default', 'created', 'App\\Models\\Time\\TimeZone', 153, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(168, 'default', 'created', 'App\\Models\\Time\\TimeZone', 154, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(169, 'default', 'created', 'App\\Models\\Time\\TimeZone', 155, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(170, 'default', 'created', 'App\\Models\\Time\\TimeZone', 156, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(171, 'default', 'created', 'App\\Models\\Time\\TimeZone', 157, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(172, 'default', 'created', 'App\\Models\\Time\\TimeZone', 158, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(173, 'default', 'created', 'App\\Models\\Time\\TimeZone', 159, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(174, 'default', 'created', 'App\\Models\\Time\\TimeZone', 160, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(175, 'default', 'created', 'App\\Models\\Time\\TimeZone', 161, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(176, 'default', 'created', 'App\\Models\\Time\\TimeZone', 162, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(177, 'default', 'created', 'App\\Models\\Time\\TimeZone', 163, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(178, 'default', 'created', 'App\\Models\\Time\\TimeZone', 164, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(179, 'default', 'created', 'App\\Models\\Time\\TimeZone', 165, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(180, 'default', 'created', 'App\\Models\\Time\\TimeZone', 166, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(181, 'default', 'created', 'App\\Models\\Time\\TimeZone', 167, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(182, 'default', 'created', 'App\\Models\\Time\\TimeZone', 168, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(183, 'default', 'created', 'App\\Models\\Time\\TimeZone', 169, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(184, 'default', 'created', 'App\\Models\\Time\\TimeZone', 170, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(185, 'default', 'created', 'App\\Models\\Time\\TimeZone', 171, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(186, 'default', 'created', 'App\\Models\\Time\\TimeZone', 172, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(187, 'default', 'created', 'App\\Models\\Time\\TimeZone', 173, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(188, 'default', 'created', 'App\\Models\\Time\\TimeZone', 174, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(189, 'default', 'created', 'App\\Models\\Time\\TimeZone', 175, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(190, 'default', 'created', 'App\\Models\\Time\\TimeZone', 176, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(191, 'default', 'created', 'App\\Models\\Time\\TimeZone', 177, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(192, 'default', 'created', 'App\\Models\\Time\\TimeZone', 178, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(193, 'default', 'created', 'App\\Models\\Time\\TimeZone', 179, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(194, 'default', 'created', 'App\\Models\\Time\\TimeZone', 180, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(195, 'default', 'created', 'App\\Models\\Time\\TimeZone', 181, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(196, 'default', 'created', 'App\\Models\\Time\\TimeZone', 182, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(197, 'default', 'created', 'App\\Models\\Time\\TimeZone', 183, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(198, 'default', 'created', 'App\\Models\\Time\\TimeZone', 184, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(199, 'default', 'created', 'App\\Models\\Time\\TimeZone', 185, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(200, 'default', 'created', 'App\\Models\\Time\\TimeZone', 186, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(201, 'default', 'created', 'App\\Models\\Time\\TimeZone', 187, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(202, 'default', 'created', 'App\\Models\\Time\\TimeZone', 188, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(203, 'default', 'created', 'App\\Models\\Time\\TimeZone', 189, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(204, 'default', 'created', 'App\\Models\\Time\\TimeZone', 190, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(205, 'default', 'created', 'App\\Models\\Time\\TimeZone', 191, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(206, 'default', 'created', 'App\\Models\\Time\\TimeZone', 192, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(207, 'default', 'created', 'App\\Models\\Time\\TimeZone', 193, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(208, 'default', 'created', 'App\\Models\\Time\\TimeZone', 194, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(209, 'default', 'created', 'App\\Models\\Time\\TimeZone', 195, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(210, 'default', 'created', 'App\\Models\\Time\\TimeZone', 196, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(211, 'default', 'created', 'App\\Models\\Time\\TimeZone', 197, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(212, 'default', 'created', 'App\\Models\\Time\\TimeZone', 198, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(213, 'default', 'created', 'App\\Models\\Time\\TimeZone', 199, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(214, 'default', 'created', 'App\\Models\\Time\\TimeZone', 200, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(215, 'default', 'created', 'App\\Models\\Time\\TimeZone', 201, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(216, 'default', 'created', 'App\\Models\\Time\\TimeZone', 202, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(217, 'default', 'created', 'App\\Models\\Time\\TimeZone', 203, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(218, 'default', 'created', 'App\\Models\\Time\\TimeZone', 204, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(219, 'default', 'created', 'App\\Models\\Time\\TimeZone', 205, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(220, 'default', 'created', 'App\\Models\\Time\\TimeZone', 206, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(221, 'default', 'created', 'App\\Models\\Time\\TimeZone', 207, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(222, 'default', 'created', 'App\\Models\\Time\\TimeZone', 208, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(223, 'default', 'created', 'App\\Models\\Time\\TimeZone', 209, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(224, 'default', 'created', 'App\\Models\\Time\\TimeZone', 210, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(225, 'default', 'created', 'App\\Models\\Time\\TimeZone', 211, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(226, 'default', 'created', 'App\\Models\\Time\\TimeZone', 212, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(227, 'default', 'created', 'App\\Models\\Time\\TimeZone', 213, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(228, 'default', 'created', 'App\\Models\\Time\\TimeZone', 214, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(229, 'default', 'created', 'App\\Models\\Time\\TimeZone', 215, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(230, 'default', 'created', 'App\\Models\\Time\\TimeZone', 216, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(231, 'default', 'created', 'App\\Models\\Time\\TimeZone', 217, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(232, 'default', 'created', 'App\\Models\\Time\\TimeZone', 218, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(233, 'default', 'created', 'App\\Models\\Time\\TimeZone', 219, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(234, 'default', 'created', 'App\\Models\\Time\\TimeZone', 220, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(235, 'default', 'created', 'App\\Models\\Time\\TimeZone', 221, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(236, 'default', 'created', 'App\\Models\\Time\\TimeZone', 222, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(237, 'default', 'created', 'App\\Models\\Time\\TimeZone', 223, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(238, 'default', 'created', 'App\\Models\\Time\\TimeZone', 224, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(239, 'default', 'created', 'App\\Models\\Time\\TimeZone', 225, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(240, 'default', 'created', 'App\\Models\\Time\\TimeZone', 226, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(241, 'default', 'created', 'App\\Models\\Time\\TimeZone', 227, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(242, 'default', 'created', 'App\\Models\\Time\\TimeZone', 228, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(243, 'default', 'created', 'App\\Models\\Time\\TimeZone', 229, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(244, 'default', 'created', 'App\\Models\\Time\\TimeZone', 230, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(245, 'default', 'created', 'App\\Models\\Time\\TimeZone', 231, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(246, 'default', 'created', 'App\\Models\\Time\\TimeZone', 232, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(247, 'default', 'created', 'App\\Models\\Time\\TimeZone', 233, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(248, 'default', 'created', 'App\\Models\\Time\\TimeZone', 234, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(249, 'default', 'created', 'App\\Models\\Time\\TimeZone', 235, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(250, 'default', 'created', 'App\\Models\\Time\\TimeZone', 236, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(251, 'default', 'created', 'App\\Models\\Time\\TimeZone', 237, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(252, 'default', 'created', 'App\\Models\\Time\\TimeZone', 238, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(253, 'default', 'created', 'App\\Models\\Time\\TimeZone', 239, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(254, 'default', 'created', 'App\\Models\\Time\\TimeZone', 240, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(255, 'default', 'created', 'App\\Models\\Time\\TimeZone', 241, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(256, 'default', 'created', 'App\\Models\\Time\\TimeZone', 242, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(257, 'default', 'created', 'App\\Models\\Time\\TimeZone', 243, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(258, 'default', 'created', 'App\\Models\\Time\\TimeZone', 244, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(259, 'default', 'created', 'App\\Models\\Time\\TimeZone', 245, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(260, 'default', 'created', 'App\\Models\\Time\\TimeZone', 246, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(261, 'default', 'created', 'App\\Models\\Time\\TimeZone', 247, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(262, 'default', 'created', 'App\\Models\\Time\\TimeZone', 248, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(263, 'default', 'created', 'App\\Models\\Time\\TimeZone', 249, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(264, 'default', 'created', 'App\\Models\\Time\\TimeZone', 250, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(265, 'default', 'created', 'App\\Models\\Time\\TimeZone', 251, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(266, 'default', 'created', 'App\\Models\\Time\\TimeZone', 252, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(267, 'default', 'created', 'App\\Models\\Time\\TimeZone', 253, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(268, 'default', 'created', 'App\\Models\\Time\\TimeZone', 254, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(269, 'default', 'created', 'App\\Models\\Time\\TimeZone', 255, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(270, 'default', 'created', 'App\\Models\\Time\\TimeZone', 256, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(271, 'default', 'created', 'App\\Models\\Time\\TimeZone', 257, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(272, 'default', 'created', 'App\\Models\\Time\\TimeZone', 258, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(273, 'default', 'created', 'App\\Models\\Time\\TimeZone', 259, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(274, 'default', 'created', 'App\\Models\\Time\\TimeZone', 260, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(275, 'default', 'created', 'App\\Models\\Time\\TimeZone', 261, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(276, 'default', 'created', 'App\\Models\\Time\\TimeZone', 262, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(277, 'default', 'created', 'App\\Models\\Time\\TimeZone', 263, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(278, 'default', 'created', 'App\\Models\\Time\\TimeZone', 264, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(279, 'default', 'created', 'App\\Models\\Time\\TimeZone', 265, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(280, 'default', 'created', 'App\\Models\\Time\\TimeZone', 266, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(281, 'default', 'created', 'App\\Models\\Time\\TimeZone', 267, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(282, 'default', 'created', 'App\\Models\\Time\\TimeZone', 268, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(283, 'default', 'created', 'App\\Models\\Time\\TimeZone', 269, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(284, 'default', 'created', 'App\\Models\\Time\\TimeZone', 270, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(285, 'default', 'created', 'App\\Models\\Time\\TimeZone', 271, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(286, 'default', 'created', 'App\\Models\\Time\\TimeZone', 272, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(287, 'default', 'created', 'App\\Models\\Time\\TimeZone', 273, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(288, 'default', 'created', 'App\\Models\\Time\\TimeZone', 274, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(289, 'default', 'created', 'App\\Models\\Time\\TimeZone', 275, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(290, 'default', 'created', 'App\\Models\\Time\\TimeZone', 276, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(291, 'default', 'created', 'App\\Models\\Time\\TimeZone', 277, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(292, 'default', 'created', 'App\\Models\\Time\\TimeZone', 278, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(293, 'default', 'created', 'App\\Models\\Time\\TimeZone', 279, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(294, 'default', 'created', 'App\\Models\\Time\\TimeZone', 280, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(295, 'default', 'created', 'App\\Models\\Time\\TimeZone', 281, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(296, 'default', 'created', 'App\\Models\\Time\\TimeZone', 282, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(297, 'default', 'created', 'App\\Models\\Time\\TimeZone', 283, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(298, 'default', 'created', 'App\\Models\\Time\\TimeZone', 284, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(299, 'default', 'created', 'App\\Models\\Time\\TimeZone', 285, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(300, 'default', 'created', 'App\\Models\\Time\\TimeZone', 286, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(301, 'default', 'created', 'App\\Models\\Time\\TimeZone', 287, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(302, 'default', 'created', 'App\\Models\\Time\\TimeZone', 288, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(303, 'default', 'created', 'App\\Models\\Time\\TimeZone', 289, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(304, 'default', 'created', 'App\\Models\\Time\\TimeZone', 290, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(305, 'default', 'created', 'App\\Models\\Time\\TimeZone', 291, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(306, 'default', 'created', 'App\\Models\\Time\\TimeZone', 292, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(307, 'default', 'created', 'App\\Models\\Time\\TimeZone', 293, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(308, 'default', 'created', 'App\\Models\\Time\\TimeZone', 294, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(309, 'default', 'created', 'App\\Models\\Time\\TimeZone', 295, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(310, 'default', 'created', 'App\\Models\\Time\\TimeZone', 296, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(311, 'default', 'created', 'App\\Models\\Time\\TimeZone', 297, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(312, 'default', 'created', 'App\\Models\\Time\\TimeZone', 298, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(313, 'default', 'created', 'App\\Models\\Time\\TimeZone', 299, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(314, 'default', 'created', 'App\\Models\\Time\\TimeZone', 300, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(315, 'default', 'created', 'App\\Models\\Time\\TimeZone', 301, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(316, 'default', 'created', 'App\\Models\\Time\\TimeZone', 302, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(317, 'default', 'created', 'App\\Models\\Time\\TimeZone', 303, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(318, 'default', 'created', 'App\\Models\\Time\\TimeZone', 304, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(319, 'default', 'created', 'App\\Models\\Time\\TimeZone', 305, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(320, 'default', 'created', 'App\\Models\\Time\\TimeZone', 306, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1);
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(321, 'default', 'created', 'App\\Models\\Time\\TimeZone', 307, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(322, 'default', 'created', 'App\\Models\\Time\\TimeZone', 308, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(323, 'default', 'created', 'App\\Models\\Time\\TimeZone', 309, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(324, 'default', 'created', 'App\\Models\\Time\\TimeZone', 310, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(325, 'default', 'created', 'App\\Models\\Time\\TimeZone', 311, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(326, 'default', 'created', 'App\\Models\\Time\\TimeZone', 312, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(327, 'default', 'created', 'App\\Models\\Time\\TimeZone', 313, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(328, 'default', 'created', 'App\\Models\\Time\\TimeZone', 314, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(329, 'default', 'created', 'App\\Models\\Time\\TimeZone', 315, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(330, 'default', 'created', 'App\\Models\\Time\\TimeZone', 316, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(331, 'default', 'created', 'App\\Models\\Time\\TimeZone', 317, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(332, 'default', 'created', 'App\\Models\\Time\\TimeZone', 318, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(333, 'default', 'created', 'App\\Models\\Time\\TimeZone', 319, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(334, 'default', 'created', 'App\\Models\\Time\\TimeZone', 320, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(335, 'default', 'created', 'App\\Models\\Time\\TimeZone', 321, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(336, 'default', 'created', 'App\\Models\\Time\\TimeZone', 322, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(337, 'default', 'created', 'App\\Models\\Time\\TimeZone', 323, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(338, 'default', 'created', 'App\\Models\\Time\\TimeZone', 324, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(339, 'default', 'created', 'App\\Models\\Time\\TimeZone', 325, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(340, 'default', 'created', 'App\\Models\\Time\\TimeZone', 326, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(341, 'default', 'created', 'App\\Models\\Time\\TimeZone', 327, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(342, 'default', 'created', 'App\\Models\\Time\\TimeZone', 328, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(343, 'default', 'created', 'App\\Models\\Time\\TimeZone', 329, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(344, 'default', 'created', 'App\\Models\\Time\\TimeZone', 330, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(345, 'default', 'created', 'App\\Models\\Time\\TimeZone', 331, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(346, 'default', 'created', 'App\\Models\\Time\\TimeZone', 332, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(347, 'default', 'created', 'App\\Models\\Time\\TimeZone', 333, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(348, 'default', 'created', 'App\\Models\\Time\\TimeZone', 334, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(349, 'default', 'created', 'App\\Models\\Time\\TimeZone', 335, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(350, 'default', 'created', 'App\\Models\\Time\\TimeZone', 336, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(351, 'default', 'created', 'App\\Models\\Time\\TimeZone', 337, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(352, 'default', 'created', 'App\\Models\\Time\\TimeZone', 338, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(353, 'default', 'created', 'App\\Models\\Time\\TimeZone', 339, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(354, 'default', 'created', 'App\\Models\\Time\\TimeZone', 340, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(355, 'default', 'created', 'App\\Models\\Time\\TimeZone', 341, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(356, 'default', 'created', 'App\\Models\\Time\\TimeZone', 342, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(357, 'default', 'created', 'App\\Models\\Time\\TimeZone', 343, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(358, 'default', 'created', 'App\\Models\\Time\\TimeZone', 344, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(359, 'default', 'created', 'App\\Models\\Time\\TimeZone', 345, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(360, 'default', 'created', 'App\\Models\\Time\\TimeZone', 346, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(361, 'default', 'created', 'App\\Models\\Time\\TimeZone', 347, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(362, 'default', 'created', 'App\\Models\\Time\\TimeZone', 348, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(363, 'default', 'created', 'App\\Models\\Time\\TimeZone', 349, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(364, 'default', 'created', 'App\\Models\\Time\\TimeZone', 350, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(365, 'default', 'created', 'App\\Models\\Time\\TimeZone', 351, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(366, 'default', 'created', 'App\\Models\\Time\\TimeZone', 352, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(367, 'default', 'created', 'App\\Models\\Time\\TimeZone', 353, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(368, 'default', 'created', 'App\\Models\\Time\\TimeZone', 354, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(369, 'default', 'created', 'App\\Models\\Time\\TimeZone', 355, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(370, 'default', 'created', 'App\\Models\\Time\\TimeZone', 356, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(371, 'default', 'created', 'App\\Models\\Time\\TimeZone', 357, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(372, 'default', 'created', 'App\\Models\\Time\\TimeZone', 358, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(373, 'default', 'created', 'App\\Models\\Time\\TimeZone', 359, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(374, 'default', 'created', 'App\\Models\\Time\\TimeZone', 360, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(375, 'default', 'created', 'App\\Models\\Time\\TimeZone', 361, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(376, 'default', 'created', 'App\\Models\\Time\\TimeZone', 362, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(377, 'default', 'created', 'App\\Models\\Time\\TimeZone', 363, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(378, 'default', 'created', 'App\\Models\\Time\\TimeZone', 364, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(379, 'default', 'created', 'App\\Models\\Time\\TimeZone', 365, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(380, 'default', 'created', 'App\\Models\\Time\\TimeZone', 366, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(381, 'default', 'created', 'App\\Models\\Time\\TimeZone', 367, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(382, 'default', 'created', 'App\\Models\\Time\\TimeZone', 368, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(383, 'default', 'created', 'App\\Models\\Time\\TimeZone', 369, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(384, 'default', 'created', 'App\\Models\\Time\\TimeZone', 370, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(385, 'default', 'created', 'App\\Models\\Time\\TimeZone', 371, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(386, 'default', 'created', 'App\\Models\\Time\\TimeZone', 372, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(387, 'default', 'created', 'App\\Models\\Time\\TimeZone', 373, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(388, 'default', 'created', 'App\\Models\\Time\\TimeZone', 374, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(389, 'default', 'created', 'App\\Models\\Time\\TimeZone', 375, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(390, 'default', 'created', 'App\\Models\\Time\\TimeZone', 376, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(391, 'default', 'created', 'App\\Models\\Time\\TimeZone', 377, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(392, 'default', 'created', 'App\\Models\\Time\\TimeZone', 378, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(393, 'default', 'created', 'App\\Models\\Time\\TimeZone', 379, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(394, 'default', 'created', 'App\\Models\\Time\\TimeZone', 380, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(395, 'default', 'created', 'App\\Models\\Time\\TimeZone', 381, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(396, 'default', 'created', 'App\\Models\\Time\\TimeZone', 382, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(397, 'default', 'created', 'App\\Models\\Time\\TimeZone', 383, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(398, 'default', 'created', 'App\\Models\\Time\\TimeZone', 384, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(399, 'default', 'created', 'App\\Models\\Time\\TimeZone', 385, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(400, 'default', 'created', 'App\\Models\\Time\\TimeZone', 386, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(401, 'default', 'created', 'App\\Models\\Time\\TimeZone', 387, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(402, 'default', 'created', 'App\\Models\\Time\\TimeZone', 388, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(403, 'default', 'created', 'App\\Models\\Time\\TimeZone', 389, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(404, 'default', 'created', 'App\\Models\\Time\\TimeZone', 390, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(405, 'default', 'created', 'App\\Models\\Time\\TimeZone', 391, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(406, 'default', 'created', 'App\\Models\\Time\\TimeZone', 392, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(407, 'default', 'created', 'App\\Models\\Time\\TimeZone', 393, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(408, 'default', 'created', 'App\\Models\\Time\\TimeZone', 394, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(409, 'default', 'created', 'App\\Models\\Time\\TimeZone', 395, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(410, 'default', 'created', 'App\\Models\\Time\\TimeZone', 396, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(411, 'default', 'created', 'App\\Models\\Time\\TimeZone', 397, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(412, 'default', 'created', 'App\\Models\\Time\\TimeZone', 398, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(413, 'default', 'created', 'App\\Models\\Time\\TimeZone', 399, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(414, 'default', 'created', 'App\\Models\\Time\\TimeZone', 400, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(415, 'default', 'created', 'App\\Models\\Time\\TimeZone', 401, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(416, 'default', 'created', 'App\\Models\\Time\\TimeZone', 402, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(417, 'default', 'created', 'App\\Models\\Time\\TimeZone', 403, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(418, 'default', 'created', 'App\\Models\\Time\\TimeZone', 404, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(419, 'default', 'created', 'App\\Models\\Time\\TimeZone', 405, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(420, 'default', 'created', 'App\\Models\\Time\\TimeZone', 406, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(421, 'default', 'created', 'App\\Models\\Time\\TimeZone', 407, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(422, 'default', 'created', 'App\\Models\\Time\\TimeZone', 408, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(423, 'default', 'created', 'App\\Models\\Time\\TimeZone', 409, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(424, 'default', 'created', 'App\\Models\\Time\\TimeZone', 410, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(425, 'default', 'created', 'App\\Models\\Time\\TimeZone', 411, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(426, 'default', 'created', 'App\\Models\\Time\\TimeZone', 412, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(427, 'default', 'created', 'App\\Models\\Time\\TimeZone', 413, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(428, 'default', 'created', 'App\\Models\\Time\\TimeZone', 414, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(429, 'default', 'created', 'App\\Models\\Time\\TimeZone', 415, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(430, 'default', 'created', 'App\\Models\\Time\\TimeZone', 416, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(431, 'default', 'created', 'App\\Models\\Time\\TimeZone', 417, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(432, 'default', 'created', 'App\\Models\\Time\\TimeZone', 418, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(433, 'default', 'created', 'App\\Models\\Time\\TimeZone', 419, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(434, 'default', 'created', 'App\\Models\\Time\\TimeZone', 420, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(435, 'default', 'created', 'App\\Models\\Time\\TimeZone', 421, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(436, 'default', 'created', 'App\\Models\\Time\\TimeZone', 422, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(437, 'default', 'created', 'App\\Models\\Time\\TimeZone', 423, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(438, 'default', 'created', 'App\\Models\\Time\\TimeZone', 424, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(439, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(440, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(441, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(442, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(443, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(444, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(445, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(446, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(447, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(448, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(449, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(450, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(451, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(452, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(453, 'default', 'created', 'App\\Models\\coreApp\\Setting\\DateFormat', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(454, 'default', 'created', 'App\\Models\\Settings\\Currency', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(455, 'default', 'created', 'App\\Models\\Settings\\Currency', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(456, 'default', 'created', 'App\\Models\\Settings\\Currency', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(457, 'default', 'created', 'App\\Models\\Settings\\Currency', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(458, 'default', 'created', 'App\\Models\\Settings\\Currency', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(459, 'default', 'created', 'App\\Models\\Settings\\Currency', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(460, 'default', 'created', 'App\\Models\\Settings\\Currency', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(461, 'default', 'created', 'App\\Models\\Settings\\Currency', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(462, 'default', 'created', 'App\\Models\\Settings\\Currency', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(463, 'default', 'created', 'App\\Models\\Settings\\Currency', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(464, 'default', 'created', 'App\\Models\\Settings\\Currency', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(465, 'default', 'created', 'App\\Models\\Settings\\Currency', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(466, 'default', 'created', 'App\\Models\\Settings\\Currency', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(467, 'default', 'created', 'App\\Models\\Settings\\Currency', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(468, 'default', 'created', 'App\\Models\\Settings\\Currency', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(469, 'default', 'created', 'App\\Models\\Settings\\Currency', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(470, 'default', 'created', 'App\\Models\\Settings\\Currency', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(471, 'default', 'created', 'App\\Models\\Settings\\Currency', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(472, 'default', 'created', 'App\\Models\\Settings\\Currency', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(473, 'default', 'created', 'App\\Models\\Settings\\Currency', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(474, 'default', 'created', 'App\\Models\\Settings\\Currency', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(475, 'default', 'created', 'App\\Models\\Settings\\Currency', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(476, 'default', 'created', 'App\\Models\\Settings\\Currency', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(477, 'default', 'created', 'App\\Models\\Settings\\Currency', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(478, 'default', 'created', 'App\\Models\\Settings\\Currency', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(479, 'default', 'created', 'App\\Models\\Settings\\Currency', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(480, 'default', 'created', 'App\\Models\\Settings\\Currency', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(481, 'default', 'created', 'App\\Models\\Settings\\Currency', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(482, 'default', 'created', 'App\\Models\\Settings\\Currency', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(483, 'default', 'created', 'App\\Models\\Settings\\Currency', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(484, 'default', 'created', 'App\\Models\\Settings\\Currency', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(485, 'default', 'created', 'App\\Models\\Settings\\Currency', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(486, 'default', 'created', 'App\\Models\\Settings\\Currency', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(487, 'default', 'created', 'App\\Models\\Settings\\Currency', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(488, 'default', 'created', 'App\\Models\\Settings\\Currency', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(489, 'default', 'created', 'App\\Models\\Settings\\Currency', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(490, 'default', 'created', 'App\\Models\\Settings\\Currency', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(491, 'default', 'created', 'App\\Models\\Settings\\Currency', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(492, 'default', 'created', 'App\\Models\\Settings\\Currency', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(493, 'default', 'created', 'App\\Models\\Settings\\Currency', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(494, 'default', 'created', 'App\\Models\\Settings\\Currency', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(495, 'default', 'created', 'App\\Models\\Settings\\Currency', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(496, 'default', 'created', 'App\\Models\\Settings\\Currency', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(497, 'default', 'created', 'App\\Models\\Settings\\Currency', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(498, 'default', 'created', 'App\\Models\\Settings\\Currency', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(499, 'default', 'created', 'App\\Models\\Settings\\Currency', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(500, 'default', 'created', 'App\\Models\\Settings\\Currency', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(501, 'default', 'created', 'App\\Models\\Settings\\Currency', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(502, 'default', 'created', 'App\\Models\\Settings\\Currency', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(503, 'default', 'created', 'App\\Models\\Settings\\Currency', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(504, 'default', 'created', 'App\\Models\\Settings\\Currency', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(505, 'default', 'created', 'App\\Models\\Settings\\Currency', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(506, 'default', 'created', 'App\\Models\\Settings\\Currency', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(507, 'default', 'created', 'App\\Models\\Settings\\Currency', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(508, 'default', 'created', 'App\\Models\\Settings\\Currency', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(509, 'default', 'created', 'App\\Models\\Settings\\Currency', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(510, 'default', 'created', 'App\\Models\\Settings\\Currency', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(511, 'default', 'created', 'App\\Models\\Settings\\Currency', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(512, 'default', 'created', 'App\\Models\\Settings\\Currency', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(513, 'default', 'created', 'App\\Models\\Settings\\Currency', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(514, 'default', 'created', 'App\\Models\\Settings\\Currency', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(515, 'default', 'created', 'App\\Models\\Settings\\Currency', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(516, 'default', 'created', 'App\\Models\\Settings\\Currency', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(517, 'default', 'created', 'App\\Models\\Settings\\Currency', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(518, 'default', 'created', 'App\\Models\\Settings\\Currency', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(519, 'default', 'created', 'App\\Models\\Settings\\Currency', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(520, 'default', 'created', 'App\\Models\\Settings\\Currency', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(521, 'default', 'created', 'App\\Models\\Settings\\Currency', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(522, 'default', 'created', 'App\\Models\\Settings\\Currency', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(523, 'default', 'created', 'App\\Models\\Settings\\Currency', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(524, 'default', 'created', 'App\\Models\\Settings\\Currency', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(525, 'default', 'created', 'App\\Models\\Settings\\Currency', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(526, 'default', 'created', 'App\\Models\\Settings\\Currency', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(527, 'default', 'created', 'App\\Models\\Settings\\Currency', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(528, 'default', 'created', 'App\\Models\\Settings\\Currency', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(529, 'default', 'created', 'App\\Models\\Settings\\Currency', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(530, 'default', 'created', 'App\\Models\\Settings\\Currency', 77, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(531, 'default', 'created', 'App\\Models\\Settings\\Currency', 78, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(532, 'default', 'created', 'App\\Models\\Settings\\Currency', 79, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(533, 'default', 'created', 'App\\Models\\Settings\\Currency', 80, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(534, 'default', 'created', 'App\\Models\\Settings\\Currency', 81, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(535, 'default', 'created', 'App\\Models\\Settings\\Currency', 82, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(536, 'default', 'created', 'App\\Models\\Settings\\Currency', 83, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(537, 'default', 'created', 'App\\Models\\Settings\\Currency', 84, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(538, 'default', 'created', 'App\\Models\\Settings\\Currency', 85, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(539, 'default', 'created', 'App\\Models\\Settings\\Currency', 86, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(540, 'default', 'created', 'App\\Models\\Settings\\Currency', 87, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(541, 'default', 'created', 'App\\Models\\Settings\\Currency', 88, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(542, 'default', 'created', 'App\\Models\\Settings\\Currency', 89, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(543, 'default', 'created', 'App\\Models\\Settings\\Currency', 90, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(544, 'default', 'created', 'App\\Models\\Settings\\Currency', 91, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(545, 'default', 'created', 'App\\Models\\Settings\\Currency', 92, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(546, 'default', 'created', 'App\\Models\\Settings\\Currency', 93, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(547, 'default', 'created', 'App\\Models\\Settings\\Currency', 94, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(548, 'default', 'created', 'App\\Models\\Settings\\Currency', 95, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(549, 'default', 'created', 'App\\Models\\Settings\\Currency', 96, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(550, 'default', 'created', 'App\\Models\\Settings\\Currency', 97, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(551, 'default', 'created', 'App\\Models\\Settings\\Currency', 98, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(552, 'default', 'created', 'App\\Models\\Settings\\Currency', 99, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(553, 'default', 'created', 'App\\Models\\Settings\\Currency', 100, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(554, 'default', 'created', 'App\\Models\\Settings\\Currency', 101, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(555, 'default', 'created', 'App\\Models\\Settings\\Currency', 102, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(556, 'default', 'created', 'App\\Models\\Settings\\Currency', 103, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(557, 'default', 'created', 'App\\Models\\Settings\\Currency', 104, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(558, 'default', 'created', 'App\\Models\\Settings\\Currency', 105, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(559, 'default', 'created', 'App\\Models\\Settings\\Currency', 106, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(560, 'default', 'created', 'App\\Models\\Settings\\Currency', 107, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(561, 'default', 'created', 'App\\Models\\Settings\\Currency', 108, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(562, 'default', 'created', 'App\\Models\\Settings\\Currency', 109, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(563, 'default', 'created', 'App\\Models\\Settings\\Currency', 110, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(564, 'default', 'created', 'App\\Models\\Settings\\Currency', 111, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(565, 'default', 'created', 'App\\Models\\Settings\\Currency', 112, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(566, 'default', 'created', 'App\\Models\\Settings\\Currency', 113, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(567, 'default', 'created', 'App\\Models\\Settings\\Currency', 114, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(568, 'default', 'created', 'App\\Models\\Settings\\Currency', 115, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(569, 'default', 'created', 'App\\Models\\Settings\\Currency', 116, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(570, 'default', 'created', 'App\\Models\\Settings\\Currency', 117, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(571, 'default', 'created', 'App\\Models\\Settings\\Currency', 118, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(572, 'default', 'created', 'App\\Models\\Settings\\Currency', 119, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(573, 'default', 'created', 'App\\Models\\Settings\\Currency', 120, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(574, 'default', 'created', 'App\\Models\\Settings\\Currency', 121, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(575, 'default', 'updated', 'App\\Models\\Settings\\Language', 19, NULL, NULL, 'updated', '[]', NULL, NULL, '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(576, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(577, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(578, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(579, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(580, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(581, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(582, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(583, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(584, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(585, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(586, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(587, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(588, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(589, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(590, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(591, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(592, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(593, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(594, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(595, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(596, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(597, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(598, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(599, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(600, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(601, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(602, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(603, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(604, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(605, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(606, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(607, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(608, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(609, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(610, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(611, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(612, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(613, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(614, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(615, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(616, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(617, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(618, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(619, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(620, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(621, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(622, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(623, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(624, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(625, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(626, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(627, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(628, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(629, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(630, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(631, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(632, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(633, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(634, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(635, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(636, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(637, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(638, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(639, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(640, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(641, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(642, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(643, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(644, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(645, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(646, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(647, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(648, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(649, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(650, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(651, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(652, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 77, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(653, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 78, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(654, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 79, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(655, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 80, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(656, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 81, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(657, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 82, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(658, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 83, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(659, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 84, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(660, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 85, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(661, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 86, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(662, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 87, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(663, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 88, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(664, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 89, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(665, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 90, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(666, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 91, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(667, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 92, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(668, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 93, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(669, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 94, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(670, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 95, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(671, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 96, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(672, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 97, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(673, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 98, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(674, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 99, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(675, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 100, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(676, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 101, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(677, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 102, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(678, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 103, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(679, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 104, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(680, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 105, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(681, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 106, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(682, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 107, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(683, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 108, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(684, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 109, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(685, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 110, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(686, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 111, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(687, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 112, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(688, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 113, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(689, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 114, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(690, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 115, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(691, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 116, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(692, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 117, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(693, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 118, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(694, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 119, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(695, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 120, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(696, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 121, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(697, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 122, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(698, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 123, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(699, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 124, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(700, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 125, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(701, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 126, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(702, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 127, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(703, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 128, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(704, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 129, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(705, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 130, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(706, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 131, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(707, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 132, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(708, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 133, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(709, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 134, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(710, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 135, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(711, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 136, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(712, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 137, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(713, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 138, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(714, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 139, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(715, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 140, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(716, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 141, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(717, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 142, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(718, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 143, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(719, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 144, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(720, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 145, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(721, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 146, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(722, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 147, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(723, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 148, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(724, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 149, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(725, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 150, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(726, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 151, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(727, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 152, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(728, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 153, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(729, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 154, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(730, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 155, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(731, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 156, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(732, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 157, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(733, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 158, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(734, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 159, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(735, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 160, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(736, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 161, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(737, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 162, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(738, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 163, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(739, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 164, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(740, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 165, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(741, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 166, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(742, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 167, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(743, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 168, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(744, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 169, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(745, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 170, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(746, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 171, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(747, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 172, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(748, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 173, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(749, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 174, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(750, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 175, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(751, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 176, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(752, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 177, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(753, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 178, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(754, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 179, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(755, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 180, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(756, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 181, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(757, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 182, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(758, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 183, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(759, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 184, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(760, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 185, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(761, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 186, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(762, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 187, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(763, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 188, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(764, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 189, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(765, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 190, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(766, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 191, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(767, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 192, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(768, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 193, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(769, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 194, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(770, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 195, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(771, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 196, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(772, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 197, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(773, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 198, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(774, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 199, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(775, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 200, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(776, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 201, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(777, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 202, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(778, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 203, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(779, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 204, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(780, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 205, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(781, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 206, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(782, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 207, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(783, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 208, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(784, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 209, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(785, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 210, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(786, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 211, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(787, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 212, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(788, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 213, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(789, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 214, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(790, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 215, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(791, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 216, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(792, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 217, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(793, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 218, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(794, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 219, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(795, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 220, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(796, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 221, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(797, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 222, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(798, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 223, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(799, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 224, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(800, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 225, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(801, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 226, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(802, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 227, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(803, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 228, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(804, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 229, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(805, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 230, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(806, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 231, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(807, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 232, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(808, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 233, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(809, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 234, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(810, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 235, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(811, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 236, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(812, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 237, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(813, 'default', 'created', 'App\\Models\\Hrm\\Country\\Country', 238, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(814, 'default', 'created', 'App\\Models\\Company\\Company', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(815, 'default', 'created', 'App\\Models\\Role\\Role', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(816, 'default', 'created', 'App\\Models\\Permission\\Permission', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(817, 'default', 'created', 'App\\Models\\Permission\\Permission', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(818, 'default', 'created', 'App\\Models\\Permission\\Permission', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(819, 'default', 'created', 'App\\Models\\Permission\\Permission', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(820, 'default', 'created', 'App\\Models\\Permission\\Permission', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(821, 'default', 'created', 'App\\Models\\Permission\\Permission', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(822, 'default', 'created', 'App\\Models\\Permission\\Permission', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(823, 'default', 'created', 'App\\Models\\Permission\\Permission', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(824, 'default', 'created', 'App\\Models\\Permission\\Permission', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(825, 'default', 'created', 'App\\Models\\Permission\\Permission', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(826, 'default', 'created', 'App\\Models\\Permission\\Permission', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(827, 'default', 'created', 'App\\Models\\Permission\\Permission', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(828, 'default', 'created', 'App\\Models\\Permission\\Permission', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(829, 'default', 'created', 'App\\Models\\Permission\\Permission', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(830, 'default', 'created', 'App\\Models\\Permission\\Permission', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(831, 'default', 'created', 'App\\Models\\Permission\\Permission', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(832, 'default', 'created', 'App\\Models\\Permission\\Permission', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(833, 'default', 'created', 'App\\Models\\Permission\\Permission', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(834, 'default', 'created', 'App\\Models\\Permission\\Permission', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(835, 'default', 'created', 'App\\Models\\Permission\\Permission', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(836, 'default', 'created', 'App\\Models\\Permission\\Permission', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(837, 'default', 'created', 'App\\Models\\Permission\\Permission', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(838, 'default', 'created', 'App\\Models\\Permission\\Permission', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(839, 'default', 'created', 'App\\Models\\Permission\\Permission', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(840, 'default', 'created', 'App\\Models\\Permission\\Permission', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(841, 'default', 'created', 'App\\Models\\Permission\\Permission', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(842, 'default', 'created', 'App\\Models\\Permission\\Permission', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(843, 'default', 'created', 'App\\Models\\Permission\\Permission', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(844, 'default', 'created', 'App\\Models\\Permission\\Permission', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(845, 'default', 'created', 'App\\Models\\Permission\\Permission', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(846, 'default', 'created', 'App\\Models\\Permission\\Permission', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(847, 'default', 'created', 'App\\Models\\Permission\\Permission', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(848, 'default', 'created', 'App\\Models\\Permission\\Permission', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(849, 'default', 'created', 'App\\Models\\Permission\\Permission', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(850, 'default', 'created', 'App\\Models\\Permission\\Permission', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(851, 'default', 'created', 'App\\Models\\Permission\\Permission', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(852, 'default', 'created', 'App\\Models\\Permission\\Permission', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(853, 'default', 'created', 'App\\Models\\Permission\\Permission', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(854, 'default', 'created', 'App\\Models\\Permission\\Permission', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(855, 'default', 'created', 'App\\Models\\Permission\\Permission', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(856, 'default', 'created', 'App\\Models\\Permission\\Permission', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(857, 'default', 'created', 'App\\Models\\Permission\\Permission', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(858, 'default', 'created', 'App\\Models\\Permission\\Permission', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(859, 'default', 'created', 'App\\Models\\Permission\\Permission', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(860, 'default', 'created', 'App\\Models\\Permission\\Permission', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(861, 'default', 'created', 'App\\Models\\Permission\\Permission', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(862, 'default', 'created', 'App\\Models\\Permission\\Permission', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(863, 'default', 'created', 'App\\Models\\Permission\\Permission', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(864, 'default', 'created', 'App\\Models\\Permission\\Permission', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(865, 'default', 'created', 'App\\Models\\Permission\\Permission', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(866, 'default', 'created', 'App\\Models\\Permission\\Permission', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(867, 'default', 'created', 'App\\Models\\Permission\\Permission', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(868, 'default', 'created', 'App\\Models\\Permission\\Permission', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(869, 'default', 'created', 'App\\Models\\Permission\\Permission', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(870, 'default', 'created', 'App\\Models\\Permission\\Permission', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(871, 'default', 'created', 'App\\Models\\Permission\\Permission', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(872, 'default', 'created', 'App\\Models\\Permission\\Permission', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(873, 'default', 'created', 'App\\Models\\Permission\\Permission', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(874, 'default', 'created', 'App\\Models\\Permission\\Permission', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(875, 'default', 'created', 'App\\Models\\Permission\\Permission', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(876, 'default', 'created', 'App\\Models\\Permission\\Permission', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(877, 'default', 'created', 'App\\Models\\Permission\\Permission', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(878, 'default', 'created', 'App\\Models\\Permission\\Permission', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(879, 'default', 'created', 'App\\Models\\Permission\\Permission', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(880, 'default', 'created', 'App\\Models\\Permission\\Permission', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(881, 'default', 'created', 'App\\Models\\Permission\\Permission', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(882, 'default', 'created', 'App\\Models\\Permission\\Permission', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(883, 'default', 'created', 'App\\Models\\Permission\\Permission', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(884, 'default', 'created', 'App\\Models\\Permission\\Permission', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(885, 'default', 'created', 'App\\Models\\Permission\\Permission', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(886, 'default', 'created', 'App\\Models\\Permission\\Permission', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(887, 'default', 'created', 'App\\Models\\Permission\\Permission', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(888, 'default', 'created', 'App\\Models\\Permission\\Permission', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(889, 'default', 'created', 'App\\Models\\Permission\\Permission', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(890, 'default', 'created', 'App\\Models\\Permission\\Permission', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(891, 'default', 'created', 'App\\Models\\Permission\\Permission', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(892, 'default', 'created', 'App\\Models\\Permission\\Permission', 77, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(893, 'default', 'created', 'App\\Models\\Permission\\Permission', 78, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(894, 'default', 'created', 'App\\Models\\Permission\\Permission', 79, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(895, 'default', 'created', 'App\\Models\\Permission\\Permission', 80, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(896, 'default', 'created', 'App\\Models\\User', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(897, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(898, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(899, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(900, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(901, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(902, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(903, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(904, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(905, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(906, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(907, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(908, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(909, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(910, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(911, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(912, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(913, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(914, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(915, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(916, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(917, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(918, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(919, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(920, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(921, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(922, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(923, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(924, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(925, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(926, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(927, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(928, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(929, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(930, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(931, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(932, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(933, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(934, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(935, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(936, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(937, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(938, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(939, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(940, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(941, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(942, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(943, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(944, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(945, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(946, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(947, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(948, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(949, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(950, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(951, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(952, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(953, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(954, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(955, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(956, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(957, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(958, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(959, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(960, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(961, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(962, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(963, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(964, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(965, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(966, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(967, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(968, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(969, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(970, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(971, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(972, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(973, 'default', 'created', 'App\\Models\\Upload', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(974, 'default', 'created', 'App\\Models\\Upload', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(975, 'default', 'created', 'App\\Models\\Upload', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(976, 'default', 'created', 'App\\Models\\Upload', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(977, 'default', 'created', 'App\\Models\\Upload', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(978, 'default', 'created', 'App\\Models\\Upload', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(979, 'default', 'created', 'App\\Models\\Upload', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(980, 'default', 'created', 'App\\Models\\Upload', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(981, 'default', 'created', 'App\\Models\\Upload', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(982, 'default', 'created', 'App\\Models\\Upload', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(983, 'default', 'created', 'App\\Models\\Upload', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(984, 'default', 'created', 'App\\Models\\Upload', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(985, 'default', 'created', 'App\\Models\\Upload', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(986, 'default', 'created', 'App\\Models\\Upload', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(987, 'default', 'created', 'App\\Models\\Upload', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(988, 'default', 'created', 'App\\Models\\Upload', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(989, 'default', 'created', 'App\\Models\\Upload', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(990, 'default', 'created', 'App\\Models\\Upload', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(991, 'default', 'created', 'App\\Models\\Upload', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(992, 'default', 'created', 'App\\Models\\Upload', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(993, 'default', 'created', 'App\\Models\\Upload', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(994, 'default', 'created', 'App\\Models\\Upload', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(995, 'default', 'created', 'App\\Models\\Upload', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(996, 'default', 'created', 'App\\Models\\Upload', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(997, 'default', 'created', 'App\\Models\\Upload', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(998, 'default', 'created', 'App\\Models\\Upload', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(999, 'default', 'created', 'App\\Models\\Upload', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1000, 'default', 'created', 'App\\Models\\Upload', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1001, 'default', 'created', 'App\\Models\\Upload', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1002, 'default', 'created', 'App\\Models\\Upload', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1003, 'default', 'created', 'App\\Models\\Upload', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1004, 'default', 'created', 'App\\Models\\Upload', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1005, 'default', 'created', 'App\\Models\\Upload', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1006, 'default', 'created', 'App\\Models\\Upload', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1007, 'default', 'created', 'App\\Models\\Upload', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1008, 'default', 'created', 'App\\Models\\Upload', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1009, 'default', 'created', 'App\\Models\\Upload', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1010, 'default', 'created', 'App\\Models\\Upload', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1011, 'default', 'created', 'App\\Models\\Upload', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1012, 'default', 'created', 'App\\Models\\Upload', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1013, 'default', 'created', 'App\\Models\\Upload', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1014, 'default', 'created', 'App\\Models\\Upload', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1015, 'default', 'created', 'App\\Models\\Upload', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1016, 'default', 'created', 'App\\Models\\Upload', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1017, 'default', 'created', 'App\\Models\\Upload', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1018, 'default', 'created', 'App\\Models\\Upload', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1019, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1020, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1021, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1022, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1023, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1024, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1025, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1026, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1027, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1028, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1029, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1030, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1031, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1032, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1033, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1034, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1035, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1036, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1037, 'default', 'created', 'App\\Models\\coreApp\\Setting\\CompanyConfig', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(1038, 'default', 'created', 'App\\Models\\Settings\\HrmLanguage', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `advance_type_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `recovery_mode` tinyint NOT NULL DEFAULT '1' COMMENT '1=Installment, 2=One Time',
  `recovery_cycle` tinyint NOT NULL DEFAULT '1' COMMENT '1=Monthly, 2=Yearly',
  `installment_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `recover_from` date NOT NULL,
  `pay` bigint UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '2',
  `approver_id` bigint UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `return_status` bigint UNSIGNED NOT NULL DEFAULT '22',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_salary_logs`
--

CREATE TABLE `advance_salary_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `is_pay` tinyint NOT NULL DEFAULT '0' COMMENT '0=Company Pay, 1= Staff Pay',
  `advance_salary_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_types`
--

CREATE TABLE `advance_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_contents`
--

CREATE TABLE `all_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_contents`
--

INSERT INTO `all_contents` (`id`, `user_id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_by`, `updated_by`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 'page', 'About Us', 'about-us', '<p>Welcome to ONEST HRM! We are a dynamic and forward-thinking company dedicated to Serve best services. Established in 2013, we have been at the forefront of Software for 10+ years, serving all over the world</p>', 'About Us', NULL, 'about, us, about us', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(2, 1, 'page', 'Contact Us', 'contact-us', '<p>We are here to assist you and provide the information you need. Please feel free to reach out to us using the following contact </p>', 'Contact Us', NULL, 'contact, us, contact us', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(3, 1, 'page', 'Privacy Policy', 'privacy-policy', '\n                <section>\n                <h2>Information We Collect</h2>\n                <p>We may collect personal information, usage data, and device details for various purposes.</p>\n            </section>\n\n            <section>\n                <h2>How We Use Your Information</h2>\n                <p>We use the collected information for providing and improving our services, communicating with you, analyzing user trends, and ensuring legal compliance and safety.</p>\n            </section>\n\n            <section>\n                <h2>Sharing Your Information</h2>\n                <p>We may share your data with service providers and for legal compliance.</p>\n            </section>\n\n            <section>\n                <h2>Your Choices</h2>\n                <p>You can opt-out of promotional communications and manage cookies through your browser settings.</p>\n            </section>\n\n            <section>\n                <h2>Security</h2>\n                <p>We take measures to protect your data, but no method is 100% secure.</p>\n            </section>\n\n            <section>\n                <h2>Changes to this Privacy Policy</h2>\n                <p>We may update this policy, and changes will be posted on this page.</p>\n            </section>\n                ', 'Privacy Policy', NULL, 'privacy, policy, privacy policy', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(4, 1, 'page', 'Support 24/7', 'support-24-7', '\n                <section>\n    <h2>Support 24/7</h2>\n    <p>We are here to assist you around the clock. If you have any questions, concerns, or need help with our products or services, please don\'t hesitate to reach out to our support team.</p>\n</section>\n                ', 'Terms of Use', NULL, 'supports, 24, 7, support 24/7', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(5, 1, 'page', 'Terms of Use', 'terms-of-use', '\n                <section>\n                <h2>1. Acceptance of Terms</h2>\n                <p>By using our services, you agree to be bound by these terms.</p>\n            </section>\n\n            <section>\n                <h2>2. Use of Services</h2>\n                <p>You may use our services only in accordance with these terms.</p>\n            </section>\n\n            <section>\n                <h2>3. Intellectual Property</h2>\n                <p>Our content and trademarks are protected by intellectual property laws.</p>\n            </section>\n\n            <section>\n                <h2>4. Privacy Policy</h2>\n                <p>Use of our services is also governed by our Privacy Policy.</p>\n            </section>\n\n            <section>\n                <h2>5. Termination</h2>\n                <p>We reserve the right to terminate or suspend your access to our services for violations of these terms.</p>\n            </section>\n\n            <section>\n                <h2>6. Changes to Terms</h2>\n                <p>We may update these terms, and changes will be posted on this page.</p>\n            </section>\n                ', 'Terms of Use', 'Terms of Use', 'terms, of, use, terms of use', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(6, 1, 'page', 'company Policies', 'company-policies', '\n                <section>\n                <h2>1. Equal Opportunity Policy</h2>\n                <p>Our company is an equal opportunity employer.</p>\n            </section>\n\n            <section>\n                <h2>2. Code of Conduct</h2>\n                <p>We expect all employees to adhere to our code of conduct.</p>\n            </section>\n\n            <section>\n                <h2>3. Anti-Harassment Policy</h2>\n                <p>We have a strict anti-harassment policy in place.</p>\n            </section>\n\n            <section>\n                <h2>4. Data Privacy Policy</h2>\n                <p>Protecting your data is a top priority for us.</p>\n            </section>\n\n            <section>\n                <h2>5. Use of Company Resources</h2>\n                <p>Guidelines for using company resources responsibly.</p>\n            </section>\n\n            <section>\n                <h2>6. Termination and Resignation</h2>\n                <p>Details about the process for termination and resignation.</p>\n            </section>\n                ', 'company-policies', 'Terms of Use', 'company-policies', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(7, 1, 'page', 'Refund Policy', 'refund-policy', '\n\n    <section>\n    <h2>1. Refund Eligibility</h2>\n    <p>We offer refunds under certain conditions. Please review our refund eligibility criteria.</p>\n</section>\n\n<section>\n    <h2>2. Requesting a Refund</h2>\n    <p>Details on how to request a refund, including contact information and required documentation.</p>\n</section>\n\n<section>\n    <h2>3. Refund Processing</h2>\n    <p>Information on the refund processing timeline and method of payment.</p>\n</section>\n\n<section>\n    <h2>4. Non-Refundable Items</h2>\n    <p>A list of items or services that are non-refundable.</p>\n</section>\n\n<section>\n    <h2>5. Contact Us</h2>\n    <p>If you have questions or need assistance with our refund policy, please don\'t hesitate to contact our support team.</p>\n</section>\n                ', 'refund-policy', 'Terms of Use', 'refund-policy', NULL, 1, 1, 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_setups`
--

CREATE TABLE `api_setups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docs_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_setups`
--

INSERT INTO `api_setups` (`id`, `name`, `key`, `secret`, `endpoint`, `docs_url`, `status_id`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 'google', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1),
(2, 'barikoi', NULL, NULL, NULL, NULL, 4, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appoinments`
--

CREATE TABLE `appoinments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `appoinment_with` bigint UNSIGNED NOT NULL,
  `appoinment_start_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appoinment_end_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_participants`
--

CREATE TABLE `appoinment_participants` (
  `id` bigint UNSIGNED NOT NULL,
  `participant_id` bigint UNSIGNED NOT NULL,
  `appoinment_id` bigint UNSIGNED NOT NULL,
  `is_agree` tinyint NOT NULL DEFAULT '0' COMMENT '0: Not agree, 1: Agree',
  `is_present` tinyint NOT NULL DEFAULT '0' COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `appoinment_started_at` datetime DEFAULT NULL,
  `appoinment_ended_at` datetime DEFAULT NULL,
  `appoinment_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'appoinment duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rates` json DEFAULT NULL,
  `rating` double(8,2) DEFAULT '0.00',
  `user_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appreciates`
--

CREATE TABLE `appreciates` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `appreciate_by` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_screens`
--

CREATE TABLE `app_screens` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_leaves`
--

CREATE TABLE `assign_leaves` (
  `id` bigint UNSIGNED NOT NULL,
  `type_id` bigint UNSIGNED NOT NULL,
  `days` int NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `stay_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_time` int NOT NULL DEFAULT '0',
  `in_status` enum('OT','L','A') COLLATE utf8mb4_unicode_ci DEFAULT 'OT' COMMENT 'OT=On Time, L=Late, A=Absent',
  `out_status` enum('LT','LE','LL') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LT=Left Timely, LE=Left Early, LL = Left Later',
  `checkin_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_mode_in` tinyint(1) DEFAULT '0' COMMENT '0 = home , 1 = office',
  `remote_mode_out` tinyint(1) DEFAULT '0' COMMENT '0 = home , 1 = office',
  `check_in_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in_latitude` double DEFAULT NULL COMMENT 'check in latitude',
  `check_in_longitude` double DEFAULT NULL COMMENT 'check in longitude',
  `check_out_latitude` double DEFAULT NULL COMMENT 'check out latitude',
  `check_out_longitude` double DEFAULT NULL COMMENT 'check out longitude',
  `check_in_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `check_in_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `check_in_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `check_out_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `check_out_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `check_out_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `face_image` bigint UNSIGNED DEFAULT NULL,
  `in_status_approve` enum('OT') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'OT=On Time',
  `in_status_approve_by` bigint UNSIGNED DEFAULT NULL,
  `out_status_approve` enum('LT') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LT=Left Timely',
  `out_status_approve_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `check_in_image` bigint UNSIGNED DEFAULT NULL,
  `check_out_image` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `author_infos`
--

CREATE TABLE `author_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `authorable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint UNSIGNED DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` bigint UNSIGNED DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `published_by` bigint UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `unpublished_by` bigint UNSIGNED DEFAULT NULL,
  `unpublished_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `archived_by` bigint UNSIGNED DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `restored_by` bigint UNSIGNED DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `referred_by` bigint UNSIGNED DEFAULT NULL,
  `referred_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `award_type_id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `gift_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `goal_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Account Number',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bank Name',
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bank branch name',
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IFSC Code',
  `account_type` enum('savings','current') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'savings',
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `author_info_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name',
  `type` tinyint NOT NULL COMMENT '1=income 2=expense',
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'serial',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'description',
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `author_info_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1: addition, 2: deduction',
  `mode` tinyint NOT NULL DEFAULT '1' COMMENT '1: percentage, 2: fixed',
  `amount` double NOT NULL DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `saas_company_id` bigint UNSIGNED DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_employee` int DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_licence_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_licence_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `is_main_company` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_subscription` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `saas_company_id`, `country_id`, `name`, `company_name`, `email`, `phone`, `total_employee`, `business_type`, `trade_licence_number`, `subdomain`, `trade_licence_id`, `status_id`, `is_main_company`, `is_subscription`, `created_at`, `updated_at`) VALUES
(1, NULL, 223, 'Mr Owner', 'Main Company', 'company@taqnahhr.com', '0XXXXXXXXXX', 100, 'Service', NULL, NULL, NULL, 1, 'yes', 0, '2024-06-14 08:49:27', '2024-06-14 08:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `company_configs`
--

CREATE TABLE `company_configs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_configs`
--

INSERT INTO `company_configs` (`id`, `key`, `value`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 'date_format', 'd-m-Y', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(2, 'time_format', 'h', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(3, 'ip_check', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(4, 'leave_assign', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(5, 'currency_symbol', '$', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(6, 'location_service', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(7, 'app_sync_time', '', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(8, 'live_data_store_time', '', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(9, 'lang', 'en', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(10, 'multi_checkin', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(11, 'currency', '2', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(12, 'timezone', 'Asia/Dhaka', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(13, 'currency_code', 'USD', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(14, 'location_check', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(15, 'attendance_method', 'N', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(16, 'google', 'AIzaSyBVF8ZCdPLYBEC2-PCRww1_Q0Abe5GYP1c', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(17, 'is_employee_passport_required', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(18, 'is_employee_eid_required', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1),
(19, 'leave_carryover', '0', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competence_type_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competence_types`
--

CREATE TABLE `competence_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conference_members`
--

CREATE TABLE `conference_members` (
  `id` bigint UNSIGNED NOT NULL,
  `conference_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `is_host` int NOT NULL DEFAULT '0',
  `is_present` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_for` int NOT NULL DEFAULT '0' COMMENT '1 for support,0 for query',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 for unread,1 for read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `type` enum('notification','message') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `read_at` timestamp NULL DEFAULT NULL,
  `image_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol_placement` enum('before','after') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `name`, `time_zone`, `currency_code`, `currency_symbol`, `currency_name`, `currency_symbol_placement`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(2, 'AL', 'Albania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(3, 'DZ', 'Algeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(4, 'AD', 'Andorra', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(5, 'AO', 'Angola', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(6, 'AI', 'Anguilla', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(7, 'AQ', 'Antarctica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(8, 'AG', 'Antigua and Barbuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(9, 'AR', 'Argentina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(10, 'AM', 'Armenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(11, 'AW', 'Aruba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(12, 'AU', 'Australia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(13, 'AT', 'Austria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(14, 'AZ', 'Azerbaijan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(15, 'BS', 'Bahamas', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(16, 'BH', 'Bahrain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(17, 'BD', 'Bangladesh', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(18, 'BB', 'Barbados', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(19, 'BY', 'Belarus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(20, 'BE', 'Belgium', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(21, 'BZ', 'Belize', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(22, 'BJ', 'Benin', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(23, 'BM', 'Bermuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(24, 'BT', 'Bhutan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(25, 'BO', 'Bolivia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(26, 'BA', 'Bosnia and Herzegovina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(27, 'BW', 'Botswana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(28, 'BR', 'Brazil', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(29, 'IO', 'British Indian Ocean Territory', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(30, 'BN', 'Brunei Darussalam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(31, 'BG', 'Bulgaria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(32, 'BF', 'Burkina Faso', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(33, 'BI', 'Burundi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(34, 'KH', 'Cambodia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(35, 'CM', 'Cameroon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(36, 'CA', 'Canada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(37, 'CV', 'Cape Verde', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(38, 'KY', 'Cayman Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(39, 'CF', 'Central African Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(40, 'TD', 'Chad', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(41, 'CL', 'Chile', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(42, 'CN', 'China', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(43, 'CX', 'Christmas Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(44, 'CC', 'Cocos (Keeling) Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(45, 'CO', 'Colombia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(46, 'KM', 'Comoros', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(47, 'CD', 'Democratic Republic of the Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(48, 'CG', 'Republic of Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(49, 'CK', 'Cook Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(50, 'CR', 'Costa Rica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(51, 'HR', 'Croatia (Hrvatska)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(52, 'CU', 'Cuba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(53, 'CY', 'Cyprus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(54, 'CZ', 'Czech Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(55, 'DK', 'Denmark', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(56, 'DJ', 'Djibouti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(57, 'DM', 'Dominica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(58, 'DO', 'Dominican Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(59, 'EC', 'Ecuador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(60, 'EG', 'Egypt', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(61, 'SV', 'El Salvador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(62, 'GQ', 'Equatorial Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(63, 'ER', 'Eritrea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(64, 'EE', 'Estonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(65, 'ET', 'Ethiopia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(66, 'FK', 'Falkland Islands (Malvinas)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(67, 'FO', 'Faroe Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(68, 'FJ', 'Fiji', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(69, 'FI', 'Finland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(70, 'FR', 'France', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(71, 'GF', 'French Guiana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(72, 'PF', 'French Polynesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(73, 'TF', 'French Southern Territories', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(74, 'GA', 'Gabon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(75, 'GM', 'Gambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(76, 'GE', 'Georgia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(77, 'DE', 'Germany', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(78, 'GH', 'Ghana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(79, 'GI', 'Gibraltar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(80, 'GR', 'Greece', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(81, 'GL', 'Greenland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(82, 'GD', 'Grenada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(83, 'GP', 'Guadeloupe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(84, 'GU', 'Guam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(85, 'GT', 'Guatemala', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(86, 'GN', 'Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(87, 'GW', 'Guinea-Bissau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(88, 'GY', 'Guyana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(89, 'HT', 'Haiti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(90, 'HN', 'Honduras', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(91, 'HK', 'Hong Kong', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(92, 'HU', 'Hungary', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(93, 'IS', 'Iceland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(94, 'IN', 'India', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(95, 'IM', 'Isle of Man', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(96, 'ID', 'Indonesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(97, 'IR', 'Iran (Islamic Republic of)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(98, 'IQ', 'Iraq', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(99, 'IE', 'Ireland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(100, 'IL', 'Israel', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(101, 'IT', 'Italy', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(102, 'CI', 'Ivory Coast', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(103, 'JE', 'Jersey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(104, 'JM', 'Jamaica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(105, 'JP', 'Japan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(106, 'JO', 'Jordan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(107, 'KZ', 'Kazakhstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(108, 'KE', 'Kenya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(109, 'KI', 'Kiribati', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(110, 'KP', 'Korea, Democratic People\'s Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(111, 'KR', 'Korea, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(112, 'XK', 'Kosovo', '', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(113, 'KW', 'Kuwait', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(114, 'KG', 'Kyrgyzstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(115, 'LA', 'Lao People\'s Democratic Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(116, 'LV', 'Latvia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(117, 'LB', 'Lebanon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(118, 'LS', 'Lesotho', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(119, 'LR', 'Liberia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(120, 'LY', 'Libyan Arab Jamahiriya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(121, 'LI', 'Liechtenstein', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(122, 'LT', 'Lithuania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(123, 'LU', 'Luxembourg', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(124, 'MO', 'Macau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(125, 'MK', 'North Macedonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(126, 'MG', 'Madagascar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(127, 'MW', 'Malawi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(128, 'MY', 'Malaysia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(129, 'MV', 'Maldives', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(130, 'ML', 'Mali', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(131, 'MT', 'Malta', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(132, 'MH', 'Marshall Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(133, 'MQ', 'Martinique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(134, 'MR', 'Mauritania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(135, 'MU', 'Mauritius', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(136, 'MX', 'Mexico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(137, 'FM', 'Micronesia, Federated States of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(138, 'MD', 'Moldova, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(139, 'MC', 'Monaco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(140, 'MN', 'Mongolia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(141, 'ME', 'Montenegro', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(142, 'MS', 'Montserrat', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(143, 'MA', 'Morocco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(144, 'MZ', 'Mozambique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(145, 'MM', 'Myanmar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(146, 'NA', 'Namibia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(147, 'NR', 'Nauru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(148, 'NP', 'Nepal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(149, 'NL', 'Netherlands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(150, 'NC', 'New Caledonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(151, 'NZ', 'New Zealand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(152, 'NI', 'Nicaragua', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(153, 'NE', 'Niger', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(154, 'NG', 'Nigeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(155, 'NU', 'Niue', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(156, 'NF', 'Norfolk Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(157, 'MP', 'Northern Mariana Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(158, 'NO', 'Norway', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(159, 'OM', 'Oman', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(160, 'PK', 'Pakistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(161, 'PW', 'Palau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(162, 'PS', 'Palestine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(163, 'PA', 'Panama', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(164, 'PG', 'Papua New Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(165, 'PY', 'Paraguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(166, 'PE', 'Peru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(167, 'PH', 'Philippines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(168, 'PN', 'Pitcairn', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(169, 'PL', 'Poland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(170, 'PT', 'Portugal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(171, 'PR', 'Puerto Rico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(172, 'QA', 'Qatar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(173, 'RE', 'Reunion', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(174, 'RO', 'Romania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(175, 'RU', 'Russian Federation', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(176, 'RW', 'Rwanda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(177, 'KN', 'Saint Kitts and Nevis', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(178, 'LC', 'Saint Lucia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(179, 'VC', 'Saint Vincent and the Grenadines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(180, 'WS', 'Samoa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(181, 'SM', 'San Marino', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(182, 'ST', 'Sao Tome and Principe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(183, 'SA', 'Saudi Arabia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(184, 'SN', 'Senegal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(185, 'RS', 'Serbia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(186, 'SC', 'Seychelles', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(187, 'SL', 'Sierra Leone', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(188, 'SG', 'Singapore', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(189, 'SK', 'Slovakia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(190, 'SI', 'Slovenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(191, 'SB', 'Solomon Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(192, 'SO', 'Somalia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(193, 'ZA', 'South Africa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(194, 'SS', 'South Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(195, 'GS', 'South Georgia South Sandwich Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(196, 'ES', 'Spain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(197, 'LK', 'Sri Lanka', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(198, 'SH', 'St. Helena', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(199, 'PM', 'St. Pierre and Miquelon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(200, 'SD', 'Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(201, 'SR', 'Suriname', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(202, 'SJ', 'Svalbard and Jan Mayen Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(203, 'SZ', 'Swaziland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(204, 'SE', 'Sweden', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(205, 'CH', 'Switzerland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(206, 'SY', 'Syrian Arab Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(207, 'TW', 'Taiwan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(208, 'TJ', 'Tajikistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(209, 'TZ', 'Tanzania, United Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(210, 'TH', 'Thailand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(211, 'TG', 'Togo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(212, 'TK', 'Tokelau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(213, 'TO', 'Tonga', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(214, 'TT', 'Trinidad and Tobago', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(215, 'TN', 'Tunisia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(216, 'TR', 'Turkey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(217, 'TM', 'Turkmenistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(218, 'TC', 'Turks and Caicos Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(219, 'TV', 'Tuvalu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(220, 'UG', 'Uganda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(221, 'UA', 'Ukraine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(222, 'AE', 'United Arab Emirates', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(223, 'GB', 'United Kingdom', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(224, 'US', 'United States', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(225, 'UM', 'United States minor outlying islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(226, 'UY', 'Uruguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(227, 'UZ', 'Uzbekistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(228, 'VU', 'Vanuatu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(229, 'VA', 'Vatican City State', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(230, 'VE', 'Venezuela', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(231, 'VN', 'Vietnam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(232, 'VG', 'Virgin Islands (British)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(233, 'VI', 'Virgin Islands (U.S.)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(234, 'WF', 'Wallis and Futuna Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(235, 'EH', 'Western Sahara', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(236, 'YE', 'Yemen', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(237, 'ZM', 'Zambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(238, 'ZW', 'Zimbabwe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(2, 'Dollars', 'USD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(3, 'Afghanis', 'AFN', '؋', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(4, 'Pesos', 'ARS', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(5, 'Guilders', 'AWG', 'ƒ', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(6, 'Dollars', 'AUD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(7, 'New Manats', 'AZN', 'ман', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(8, 'Dollars', 'BSD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(9, 'Dollars', 'BBD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(10, 'Rubles', 'BYR', 'p.', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(11, 'Euro', 'EUR', '€', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(13, 'Dollars', 'BMD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(14, 'Bolivianos', 'BOB', '$b', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(16, 'Pula', 'BWP', 'P', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(17, 'Leva', 'BGN', 'лв', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(18, 'Reais', 'BRL', 'R$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(19, 'Pounds', 'GBP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(20, 'Dollars', 'BND', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(21, 'Riels', 'KHR', '៛', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(22, 'Dollars', 'CAD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(23, 'Dollars', 'KYD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(24, 'Pesos', 'CLP', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(26, 'Pesos', 'COP', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(27, 'Colón', 'CRC', '₡', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(28, 'Kuna', 'HRK', 'kn', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(29, 'Pesos', 'CUP', '₱', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(30, 'Koruny', 'CZK', 'Kč', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(31, 'Kroner', 'DKK', 'kr', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(33, 'Dollars', 'XCD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(34, 'Pounds', 'EGP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(35, 'Colones', 'SVC', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(36, 'Pounds', 'FKP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(37, 'Dollars', 'FJD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(38, 'Cedis', 'GHC', '¢', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(39, 'Pounds', 'GIP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(40, 'Quetzales', 'GTQ', 'Q', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(41, 'Pounds', 'GGP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(42, 'Dollars', 'GYD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(43, 'Lempiras', 'HNL', 'L', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(44, 'Dollars', 'HKD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(45, 'Forint', 'HUF', 'Ft', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(46, 'Kronur', 'ISK', 'kr', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(47, 'Rupees', 'INR', '₹', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(49, 'Rials', 'IRR', '﷼', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(50, 'Pounds', 'IMP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(51, 'New Shekels', 'ILS', '₪', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(52, 'Dollars', 'JMD', 'J$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(53, 'Yen', 'JPY', '¥', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(54, 'Pounds', 'JEP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(55, 'Tenge', 'KZT', 'лв', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(56, 'Won', 'KPW', '₩', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(57, 'Won', 'KRW', '₩', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(58, 'Soms', 'KGS', 'лв', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(59, 'Kips', 'LAK', '₭', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(60, 'Lati', 'LVL', 'Ls', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(61, 'Pounds', 'LBP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(62, 'Dollars', 'LRD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(64, 'Litai', 'LTL', 'Lt', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(65, 'Denars', 'MKD', 'ден', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(66, 'Ringgits', 'MYR', 'RM', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(67, 'Rupees', 'MUR', '₨', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(68, 'Pesos', 'MXN', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(69, 'Tugriks', 'MNT', '₮', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(70, 'Meticais', 'MZN', 'MT', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(71, 'Dollars', 'NAD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(72, 'Rupees', 'NPR', '₨', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(73, 'Guilders', 'ANG', 'ƒ', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(74, 'Dollars', 'NZD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(76, 'Nairas', 'NGN', '₦', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(77, 'Krone', 'NOK', 'kr', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(78, 'Rials', 'OMR', '﷼', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(79, 'Rupees', 'PKR', '₨', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(80, 'Balboa', 'PAB', 'B/.', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(81, 'Guarani', 'PYG', 'Gs', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(83, 'Pesos', 'PHP', 'Php', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(85, 'Rials', 'QAR', '﷼', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(86, 'New Lei', 'RON', 'lei', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(87, 'Rubles', 'RUB', 'руб', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(88, 'Pounds', 'SHP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(89, 'Riyals', 'SAR', '﷼', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(90, 'Dinars', 'RSD', 'Дин.', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(91, 'Rupees', 'SCR', '₨', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(92, 'Dollars', 'SGD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(93, 'Dollars', 'SBD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(94, 'Shillings', 'SOS', 'S', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(95, 'Rand', 'ZAR', 'R', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(96, 'Rupees', 'LKR', '₨', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(97, 'Kronor', 'SEK', 'kr', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(98, 'Dollars', 'SRD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(99, 'Pounds', 'SYP', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(100, 'New Dollars', 'TWD', 'NT$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(101, 'Baht', 'THB', '฿', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(103, 'Lira', 'TRY', 'TL', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(104, 'Liras', 'TRL', '£', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(105, 'Dollars', 'TVD', '$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(106, 'Hryvnia', 'UAH', '₴', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(107, 'Pesos', 'UYU', '$U', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(108, 'Sums', 'UZS', 'лв', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(110, 'Dong', 'VND', '₫', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(111, 'Rials', 'YER', '﷼', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(112, 'Taka', 'BDT', '৳', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(114, 'Kenya', 'KES', 'KSh', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(115, 'Nigeria', 'naira', '₦', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(116, 'Ghana', 'GHS', 'GH₵', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(117, 'Ethiopian', 'ETB', 'Br', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(118, 'Tanzania', 'TZS', 'TSh', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(119, 'Uganda', 'UGX', 'USh', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(120, 'Rwandan', 'FRW', 'FRw', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1),
(121, 'UAE Dirham', 'AED', 'د.إ', '2024-06-14 08:49:24', '2024-06-14 08:49:24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_leaves`
--

CREATE TABLE `daily_leaves` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `approved_by_tl` bigint UNSIGNED DEFAULT NULL,
  `approved_at_tl` timestamp NULL DEFAULT NULL,
  `approved_by_hr` bigint UNSIGNED DEFAULT NULL,
  `approved_at_hr` timestamp NULL DEFAULT NULL,
  `rejected_by_tl` bigint UNSIGNED DEFAULT NULL,
  `rejected_at_tl` timestamp NULL DEFAULT NULL,
  `rejected_by_hr` bigint UNSIGNED DEFAULT NULL,
  `rejected_at_hr` timestamp NULL DEFAULT NULL,
  `leave_type` enum('early_leave','late_arrive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `author_info_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_formats`
--

CREATE TABLE `date_formats` (
  `id` bigint UNSIGNED NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT '1',
  `updated_by` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_formats`
--

INSERT INTO `date_formats` (`id`, `format`, `normal_view`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, 1, 1, '2024-06-13 20:49:23', '2024-06-14 08:49:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `income_expense_category_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `ref` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `pay` bigint UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '2',
  `approver_id` bigint UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussion_comments`
--

CREATE TABLE `discussion_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `discussion_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussion_likes`
--

CREATE TABLE `discussion_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `discussion_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `like` int DEFAULT '0',
  `dislike` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duty_schedules`
--

CREATE TABLE `duty_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `consider_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `hour` int NOT NULL DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL,
  `end_on_same_date` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `slug`, `subject`, `content`, `status_id`, `created_by`, `updated_by`, `company_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Subscription Success', 'subscription-success', 'Subscription Success', '<p>Hello&nbsp;[name],<br />\n            <br />\n            Your order has been successfully placed and our dedicated team will meticulously review and approve your request within a timeframe ranging from 24 to 72 hours.</p>\n            \n            <p><br />\n            Thanks,<br />\n            [saas_admin_company]</p>', 1, 1, 1, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(2, 'Subscription Approve', 'subscription-approve', 'Subscription Approve', '<p>Hello&nbsp;[name],<br />\n            <br />\n            Your order has been approved successfully!</p>\n            \n            <p>[company_credentials_table]<br />\n            <br />\n            [company_subscription_plan_table]<br />\n            <br />\n            Note: Please change your temporary password!<br />\n            <br />\n            Thanks,<br />\n            [saas_admin_company]</p>', 1, 1, 1, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(3, 'Subscription Upgrade', 'subscription-upgrade', 'Subscription Upgrade', '<p>🎉 <strong>Congratulations! Your Subscription Upgrade Was Successful!</strong> 🚀</p>\n\n            <p>Hello [name],</p>\n            \n            <p>We&#39;re thrilled to share the exciting news with you&mdash;your subscription upgrade is now complete! 🌟 Thank you for choosing to elevate your experience with [saas_admin_company].<br />\n            <br />\n            [company_subscription_plan_table]</p>\n            Thanks,<br />\n            [saas_admin_company]', 1, 1, 1, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(4, 'Subscription Reject', 'subscription-reject', 'Subscription Reject', '<p>🚫 **Subscription Rejected**</p>\n\n            <p>Hello [name],</p>\n\n            <p>We regret to inform you that your subscription request has been rejected. We appreciate your interest in our plan, but after careful consideration, we are unable to approve your subscription at this time.</p>\n            Thanks,<br />\n            [saas_admin_company]<br />\n            &nbsp;', 1, 1, 1, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_breaks`
--

CREATE TABLE `employee_breaks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `break_time` time DEFAULT NULL,
  `back_time` time DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tasks`
--

CREATE TABLE `employee_tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `assigned_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `due_date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `income_expense_category_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `pay` bigint UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '2',
  `ref` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `approver_id` bigint UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claims`
--

CREATE TABLE `expense_claims` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'invoice number',
  `claim_date` date DEFAULT NULL COMMENT 'date of claim',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claim_details`
--

CREATE TABLE `expense_claim_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `hrm_expense_id` bigint UNSIGNED NOT NULL,
  `expense_claim_id` bigint UNSIGNED NOT NULL,
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expire_notifications`
--

CREATE TABLE `expire_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `employee_id` bigint UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `branch_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `company_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('company_growth','advance_features','awesome_features') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_teams`
--

CREATE TABLE `front_teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `fb_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ln_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sky_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal_type_id` bigint UNSIGNED DEFAULT NULL,
  `progress` int DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `rating` int DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attachment_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contents` json DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_expenses`
--

CREATE TABLE `hrm_expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `income_expense_category_id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL COMMENT 'date of expense',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of expense',
  `amount` double(10,2) DEFAULT NULL COMMENT 'amount of expense',
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `is_claimed_status_id` bigint UNSIGNED NOT NULL,
  `claimed_approved_status_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_languages`
--

CREATE TABLE `hrm_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_languages`
--

INSERT INTO `hrm_languages` (`id`, `language_id`, `is_default`, `status_id`, `created_at`, `updated_at`, `company_id`) VALUES
(1, 19, 1, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_categories`
--

CREATE TABLE `income_expense_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_income` tinyint NOT NULL DEFAULT '0' COMMENT '0=Expense, 1=Income',
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `shift_id` bigint UNSIGNED DEFAULT NULL,
  `designation_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rates` json DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `status_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_setups`
--

CREATE TABLE `ip_setups` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jitsi_meetings`
--

CREATE TABLE `jitsi_meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `meeting_id` text COLLATE utf8mb4_unicode_ci,
  `time_start_before` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `status_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1' COMMENT '1=active, 0=inactive',
  `json_exist` tinyint DEFAULT '0',
  `is_default` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `status`, `json_exist`, `is_default`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, 0, 0, 0, NULL, NULL, 1, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(3, 'ar', 'Arabic', 'العربية', 1, 1, 0, 0, NULL, NULL, 1, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, 0, 0, 0, NULL, NULL, 1, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, 0, 0, 0, NULL, NULL, 1, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, 0, 0, 0, NULL, NULL, 1, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, 0, 0, 0, NULL, NULL, 1, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, 1, 0, 0, NULL, NULL, 1, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(11, 'ca', 'Catalan', 'Català', 0, 0, 0, 0, NULL, NULL, 1, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, 0, 0, 0, NULL, NULL, 1, 1),
(13, 'cs', 'Czech', 'Česky', 0, 0, 0, 0, NULL, NULL, 1, 1),
(14, 'da', 'Danish', 'Dansk', 0, 0, 0, 0, NULL, NULL, 1, 1),
(15, 'de', 'German', 'Deutsch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, 0, 0, 0, NULL, NULL, 1, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, 0, 0, 0, NULL, NULL, 1, 1),
(19, 'en', 'English', 'English', 0, 1, 0, 1, NULL, '2024-06-14 08:49:24', 1, 1),
(20, 'es', 'Spanish', 'Español', 0, 1, 0, 0, NULL, NULL, 1, 1),
(21, 'et', 'Estonian', 'Eesti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(22, 'eu', 'Basque', 'Euskara', 0, 0, 0, 0, NULL, NULL, 1, 1),
(23, 'fa', 'Persian', 'فارسی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, 0, 0, 0, NULL, NULL, 1, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, 0, 0, 0, NULL, NULL, 1, 1),
(28, 'fr', 'French', 'Français', 0, 0, 0, 0, NULL, NULL, 1, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, 0, 0, 0, NULL, NULL, 1, 1),
(30, 'gl', 'Galician', 'Galego', 0, 0, 0, 0, NULL, NULL, 1, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(33, 'he', 'Hebrew', 'עברית', 1, 0, 0, 0, NULL, NULL, 1, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, 0, 0, 0, NULL, NULL, 1, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, 0, 0, 0, NULL, NULL, 1, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, 0, 0, 0, NULL, NULL, 1, 1),
(39, 'indo', 'Indonesian', 'Bahasa Indonesia', 0, 0, 0, 0, NULL, NULL, 1, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(41, 'it', 'Italian', 'Italiano', 0, 0, 0, 0, NULL, NULL, 1, 1),
(42, 'ja', 'Japanese', '日本語', 0, 0, 0, 0, NULL, NULL, 1, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, 0, 0, 0, NULL, NULL, 1, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, 0, 0, 0, NULL, NULL, 1, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, 0, 0, 0, NULL, NULL, 1, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, 0, 0, 0, NULL, NULL, 1, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(48, 'ko', 'Korean', '한국어', 0, 0, 0, 0, NULL, NULL, 1, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, 0, 0, 0, NULL, NULL, 1, 1),
(51, 'la', 'Latin', 'Latina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, 0, 0, 0, NULL, NULL, 1, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, 0, 0, 0, NULL, NULL, 1, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, 0, 0, 0, NULL, NULL, 1, 1),
(56, 'lu', 'Luxembourg', 'Luxembourg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, 0, 0, 0, NULL, NULL, 1, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, 0, 0, 0, NULL, NULL, 1, 1),
(60, 'mi', 'Maori', 'Māori', 0, 0, 0, 0, NULL, NULL, 1, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, 0, 0, 0, NULL, NULL, 1, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, 0, 0, 0, NULL, NULL, 1, 1),
(67, 'nb', 'Bokmål', 'Bokmål', 0, 0, 0, 0, NULL, NULL, 1, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, 0, 0, 0, NULL, NULL, 1, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, 0, 0, 0, NULL, NULL, 1, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, 0, 0, 0, NULL, NULL, 1, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, 0, 0, 0, NULL, NULL, 1, 1),
(77, 'pl', 'Polish', 'Polski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(79, 'pt', 'Portuguese', 'Português', 0, 0, 0, 0, NULL, NULL, 1, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(82, 'ro', 'Romanian', 'Română', 0, 0, 0, 0, NULL, NULL, 1, 1),
(83, 'ru', 'Russian', 'Русский', 0, 0, 0, 0, NULL, NULL, 1, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(85, 'sg', 'Sango', 'Sängö', 0, 0, 0, 0, NULL, NULL, 1, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, 0, 0, 0, NULL, NULL, 1, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(90, 'sn', 'Shona', 'chiShona', 0, 0, 0, 0, NULL, NULL, 1, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, 0, 0, 0, NULL, NULL, 1, 1),
(93, 'sr', 'Serbian', 'Српски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, 0, 0, 0, NULL, NULL, 1, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, 0, 0, 0, NULL, NULL, 1, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, 0, 0, 0, NULL, NULL, 1, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, 0, 0, 0, NULL, NULL, 1, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, 0, 0, 0, NULL, NULL, 1, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(102, 'tk', 'Turkmen', 'Туркмен /تركمن ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, 0, 0, 0, NULL, NULL, 1, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, 0, 0, 0, NULL, NULL, 1, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, 0, 0, 0, NULL, NULL, 1, 1),
(108, 'ur', 'Urdu', 'اردو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, 0, 0, 0, NULL, NULL, 1, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, 0, 0, 0, NULL, NULL, 1, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(113, 'zh', 'Chinese', '中文', 0, 0, 0, 0, NULL, NULL, 1, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, 0, 0, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `late_in_out_reasons`
--

CREATE TABLE `late_in_out_reasons` (
  `id` bigint UNSIGNED NOT NULL,
  `attendance_id` bigint UNSIGNED NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in' COMMENT 'in = late in reason out = late out reason',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `assign_leave_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `apply_date` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `days` int NOT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci,
  `substitute_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL,
  `author_info_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_settings`
--

CREATE TABLE `leave_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `sandwich_leave` tinyint(1) NOT NULL DEFAULT '0',
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `prorate_leave` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `status_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_years`
--

CREATE TABLE `leave_years` (
  `id` bigint UNSIGNED NOT NULL,
  `type_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `leave_days` int NOT NULL,
  `leave_available` int NOT NULL,
  `leave_used` int NOT NULL,
  `year` int NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_binds`
--

CREATE TABLE `location_binds` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'address',
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_logs`
--

CREATE TABLE `location_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `distance` double(10,2) DEFAULT NULL COMMENT 'in km',
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `speed` double DEFAULT NULL COMMENT 'speed',
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'heading',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'address',
  `countryCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_at` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_members`
--

CREATE TABLE `meeting_members` (
  `id` bigint UNSIGNED NOT NULL,
  `meeting_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_present` tinyint NOT NULL DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_participants`
--

CREATE TABLE `meeting_participants` (
  `id` bigint UNSIGNED NOT NULL,
  `participant_id` bigint UNSIGNED NOT NULL,
  `meeting_id` bigint UNSIGNED NOT NULL,
  `is_going` tinyint NOT NULL DEFAULT '0' COMMENT '0: Not going, 1: Going',
  `is_present` tinyint NOT NULL DEFAULT '0' COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `meeting_started_at` datetime DEFAULT NULL,
  `meeting_ended_at` datetime DEFAULT NULL,
  `meeting_duration` time DEFAULT NULL COMMENT 'Meeting duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_setups`
--

CREATE TABLE `meeting_setups` (
  `id` bigint UNSIGNED NOT NULL,
  `host_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_content_id` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1=menu,2=footer',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_information`
--

CREATE TABLE `meta_information` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('all_shop','all_brand','all_search','login','registration','student_registration','affiliate_registration','be_a_seller','compare_list','add_to_cart','about_us','faqs','contact_us','careers','return_refund','support_policy','privacy_policy','terms_condition') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_information`
--

INSERT INTO `meta_information` (`id`, `type`, `meta_title`, `meta_description`, `meta_image`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'all_shop', 'all_shop-title', 'all_shop-description', 'all_shop-image', 'all_shop-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(2, 'all_brand', 'all_brand-title', 'all_brand-description', 'all_brand-image', 'all_brand-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(3, 'all_search', 'all_search-title', 'all_search-description', 'all_search-image', 'all_search-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(4, 'login', 'login-title', 'login-description', 'login-image', 'login-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(5, 'registration', 'registration-title', 'registration-description', 'registration-image', 'registration-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(6, 'student_registration', 'student_registration-title', 'student_registration-description', 'student_registration-image', 'student_registration-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(7, 'affiliate_registration', 'affiliate_registration-title', 'affiliate_registration-description', 'affiliate_registration-image', 'affiliate_registration-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(8, 'be_a_seller', 'be_a_seller-title', 'be_a_seller-description', 'be_a_seller-image', 'be_a_seller-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(9, 'compare_list', 'compare_list-title', 'compare_list-description', 'compare_list-image', 'compare_list-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(10, 'add_to_cart', 'add_to_cart-title', 'add_to_cart-description', 'add_to_cart-image', 'add_to_cart-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(11, 'about_us', 'about_us-title', 'about_us-description', 'about_us-image', 'about_us-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(12, 'faqs', 'faqs-title', 'faqs-description', 'faqs-image', 'faqs-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(13, 'contact_us', 'contact_us-title', 'contact_us-description', 'contact_us-image', 'contact_us-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1),
(14, 'careers', 'careers-title', 'careers-description', 'careers-image', 'careers-keywors', NULL, NULL, '2024-06-14 08:49:23', '2024-06-14 08:49:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_11_000000_create_countries_table', 1),
(2, '2014_01_11_000000_create_statuses_table', 1),
(3, '2014_10_11_000001_create_activity_log_table', 1),
(4, '2014_10_11_000001_create_branches_table', 1),
(5, '2014_10_11_000002_create_uploads_table', 1),
(6, '2014_10_11_000003_create_companies_table', 1),
(7, '2014_10_11_000004_create_roles_table', 1),
(8, '2014_10_11_000004_create_shifts_table', 1),
(9, '2014_10_11_000005_create_departments_table', 1),
(10, '2014_10_11_000005_create_designations_table', 1),
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_000001_create_author_infos_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_09_15_000010_create_tenants_table', 1),
(16, '2019_09_15_000020_create_domains_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2020_05_15_000010_create_tenant_user_impersonation_tokens_table', 1),
(19, '2020_06_01_130821_create_settings_table', 1),
(20, '2020_06_01_130822_create_permissions_table', 1),
(21, '2020_06_01_130824_create_role_users_table', 1),
(22, '2021_09_24_050720_create_bank_accounts_table', 1),
(23, '2021_09_25_070000_create_payment_types_table', 1),
(24, '2021_09_25_080345_create_categories_table', 1),
(25, '2021_10_31_121218_create_translations_table', 1),
(26, '2021_11_03_044301_create_social_identities_table', 1),
(27, '2021_11_14_070513_create_notifications_old_table', 1),
(28, '2021_11_14_070607_create_conversations_table', 1),
(29, '2022_01_05_105820_create_leave_types_table', 1),
(30, '2022_01_05_111318_create_assign_leaves_table', 1),
(31, '2022_01_05_112116_create_leave_requests_table', 1),
(32, '2022_01_23_165353_create_weekends_table', 1),
(33, '2022_01_23_165357_create_holidays_table', 1),
(34, '2022_01_26_104953_create_duty_schedules_table', 1),
(35, '2022_02_07_144952_create_attendances_table', 1),
(36, '2022_02_07_175133_create_leave_settings_table', 1),
(37, '2022_02_10_151245_create_late_in_out_reasons_table', 1),
(38, '2022_03_01_174425_create_company_configs_table', 1),
(39, '2022_03_02_170908_create_ip_setups_table', 1),
(40, '2022_03_05_000002_create_expense_categories_table', 1),
(41, '2022_03_05_050001_create_payment_methods_table', 1),
(42, '2022_03_05_060051_create_accounts_table', 1),
(43, '2022_03_05_060052_create_transactions_table', 1),
(44, '2022_03_05_061025_create_expenses_table', 1),
(45, '2022_03_05_061055_create_deposits_table', 1),
(46, '2022_03_05_100003_create_hrm_expenses_table', 1),
(47, '2022_03_05_100004_create_expense_claims_table', 1),
(48, '2022_03_05_100006_create_expense_claim_details_table', 1),
(49, '2022_03_05_100007_create_payment_histories_table', 1),
(50, '2022_03_05_100008_create_payment_history_details_table', 1),
(51, '2022_03_05_100009_create_payment_history_logs_table', 1),
(52, '2022_03_06_101527_create_visits_table', 1),
(53, '2022_03_06_103136_create_visit_images_table', 1),
(54, '2022_03_06_104118_create_visit_notes_table', 1),
(55, '2022_03_06_104139_create_visit_schedules_table', 1),
(56, '2022_03_09_174416_create_subscription_plans_table', 1),
(57, '2022_03_10_110216_create_app_screens_table', 1),
(58, '2022_03_10_114654_create_support_tickets_table', 1),
(59, '2022_03_10_131726_create_notices_table', 1),
(60, '2022_03_10_132017_create_notice_view_logs_table', 1),
(61, '2022_03_12_114157_create_appreciates_table', 1),
(62, '2022_03_13_104916_create_meetings_table', 1),
(63, '2022_03_13_112149_create_meeting_participants_table', 1),
(64, '2022_03_13_112853_create_appoinments_table', 1),
(65, '2022_03_13_112914_create_appoinment_participants_table', 1),
(66, '2022_03_13_113319_create_employee_tasks_table', 1),
(67, '2022_03_13_123151_create_employee_breaks_table', 1),
(68, '2022_03_15_131235_create_all_contents_table', 1),
(69, '2022_03_16_104248_create_contacts_table', 1),
(70, '2022_03_30_061715_create_features_table', 1),
(71, '2022_03_30_113900_create_testimonials_table', 1),
(72, '2022_03_31_140233_create_teams_table', 1),
(73, '2022_03_31_140552_create_team_members_table', 1),
(74, '2022_04_06_042459_create_sms_logs_table', 1),
(75, '2022_04_07_035721_create_user_devices_table', 1),
(76, '2022_04_07_044946_create_notification_types_table', 1),
(77, '2022_04_12_065957_create_ticket_replies_table', 1),
(78, '2022_05_16_071031_create_notifications_table', 1),
(79, '2022_05_17_062749_create_daily_leaves_table', 1),
(80, '2022_05_19_055538_create_notice_departments_table', 1),
(81, '2022_06_05_101104_create_meta_information_table', 1),
(82, '2022_06_09_093509_create_time_zones_table', 1),
(83, '2022_06_11_075042_create_date_formats_table', 1),
(84, '2022_06_12_080741_create_api_setups_table', 1),
(85, '2022_06_12_100839_create_currencies_table', 1),
(86, '2022_06_15_090457_create_advance_types_table', 1),
(87, '2022_06_15_130017_create_advance_salaries_table', 1),
(88, '2022_06_15_131620_create_advance_salary_logs_table', 1),
(89, '2022_06_16_115529_create_commissions_table', 1),
(90, '2022_06_16_122623_create_salary_setups_table', 1),
(91, '2022_06_16_122641_create_salary_setup_details_table', 1),
(92, '2022_06_16_122709_create_salary_generates_table', 1),
(93, '2022_06_16_122750_create_salary_payment_logs_table', 1),
(94, '2022_06_18_154114_create_languages_table', 1),
(95, '2022_06_18_155339_create_hrm_languages_table', 1),
(96, '2022_06_23_030258_create_location_logs_table', 1),
(97, '2022_06_25_080155_create_database_backups_table', 1),
(98, '2022_06_27_115744_create_meeting_setups_table', 1),
(99, '2022_06_27_121222_create_virtual_meetings_table', 1),
(100, '2022_06_27_121626_create_meeting_members_table', 1),
(101, '2022_06_27_123238_create_jitsi_meetings_table', 1),
(102, '2022_07_21_132450_create_location_binds_table', 1),
(103, '2022_07_25_160849_create_clients_table', 1),
(104, '2022_07_25_160850_create_goal_types_table', 1),
(105, '2022_07_25_160851_create_goals_table', 1),
(106, '2022_07_26_160617_create_projects_table', 1),
(107, '2022_07_26_160618_create_project_membars_table', 1),
(108, '2022_07_26_165806_create_discussions_table', 1),
(109, '2022_07_26_165807_create_discussion_comments_table', 1),
(110, '2022_07_26_165908_create_notes_table', 1),
(111, '2022_07_26_170007_create_project_files_table', 1),
(112, '2022_07_26_170008_create_project_file_comments_table', 1),
(113, '2022_07_26_170031_create_project_activities_table', 1),
(114, '2022_07_26_170205_create_project_payments_table', 1),
(115, '2022_08_01_140657_create_tasks_table', 1),
(116, '2022_08_01_140658_create_task_followers_table', 1),
(117, '2022_08_01_140658_create_task_members_table', 1),
(118, '2022_08_01_141239_create_task_discussions_table', 1),
(119, '2022_08_01_141255_create_task_discussion_comments_table', 1),
(120, '2022_08_01_141323_create_task_notes_table', 1),
(121, '2022_08_01_141341_create_task_files_table', 1),
(122, '2022_08_01_141401_create_task_file_comments_table', 1),
(123, '2022_08_01_142250_create_task_activities_table', 1),
(124, '2022_08_03_130453_create_award_types_table', 1),
(125, '2022_08_03_130519_create_awards_table', 1),
(126, '2022_08_04_101142_create_travel_types_table', 1),
(127, '2022_08_04_101522_create_travel_table', 1),
(128, '2022_08_04_161248_create_competence_types_table', 1),
(129, '2022_08_04_161249_create_competences_table', 1),
(130, '2022_08_04_161325_create_indicators_table', 1),
(131, '2022_08_04_161344_create_appraisals_table', 1),
(132, '2022_09_19_104223_create_services_table', 1),
(133, '2022_09_19_104344_create_portfolios_table', 1),
(134, '2022_09_19_112019_create_menus_table', 1),
(135, '2022_09_19_112527_create_home_pages_table', 1),
(136, '2023_02_23_133359_add_department_id_table_to_salary_generates', 1),
(137, '2023_02_23_181308_create_salary_sheet_reports_table', 1),
(138, '2023_06_06_134120_create_tenant_subscriptions_table', 1),
(139, '2023_06_15_105713_create_discussion_likes_table', 1),
(140, '2023_09_19_111522_create_user_document_requests_table', 1),
(141, '2023_09_20_114428_create_expire_notifications_table', 1),
(142, '2023_09_21_155520_create_jobs_table', 1),
(143, '2024_01_16_173817_create_leave_years_table', 1),
(144, '2024_03_19_100657_add_attendance_method_to_users_table', 1),
(145, '2024_04_24_155221_create_user_shift_assigns_table', 1),
(146, '2024_04_26_153713_add_shift_id_attendance', 1),
(147, '2023_09_07_144201_create_user_document_types_table', 2),
(148, '2023_09_07_144203_create_user_documents_table', 2),
(149, '2022_09_19_105655_create_front_teams_table', 3),
(150, '2023_06_06_134105_create_plan_features_table', 3),
(151, '2023_06_06_134107_create_plan_duration_types_table', 3),
(152, '2023_06_06_134107_create_pricing_plans_table', 3),
(153, '2023_06_06_134110_create_pricing_plan_prices_table', 3),
(154, '2023_06_06_134115_create_pricing_plan_features_table', 3),
(155, '2023_06_06_134120_create_saas_subscriptions_table', 3),
(156, '2023_11_07_113228_create_saas_cms_table', 3),
(157, '2023_11_30_113114_create_contact_messages', 3),
(158, '2023_11_30_113114_create_email_templates_table', 3),
(159, '2023_11_30_113114_create_subscribers_table', 3),
(160, '2024_04_05_141545_create_user_tenant_mappings_table', 3),
(161, '2024_02_08_123848_add_images_to_attendances_table', 4),
(162, '2023_07_19_170603_create_service_institutions_table', 5),
(163, '2023_07_19_174340_create_service_brands_table', 5),
(164, '2023_07_19_174345_create_service_models_table', 5),
(165, '2023_07_19_174348_create_service_machines_table', 5),
(166, '2023_07_19_174429_create_service_packages_table', 5),
(167, '2023_07_19_174445_create_module_services_table', 5),
(168, '2023_08_02_105949_create_service_package_details_table', 5),
(169, '2023_08_03_112309_create_module_service_details_table', 5),
(170, '2023_05_16_134310_update_users_table', 6),
(171, '2023_03_23_154811_create_conferences_table', 7),
(172, '2023_03_23_155820_create_conference_members_table', 7),
(173, '2023_03_26_122254_Add_conference_to_app_screen_menu', 7);

-- --------------------------------------------------------

--
-- Table structure for table `module_services`
--

CREATE TABLE `module_services` (
  `id` bigint UNSIGNED NOT NULL,
  `institution_id` bigint UNSIGNED DEFAULT NULL,
  `package_id` bigint UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `status_id` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_service_details`
--

CREATE TABLE `module_service_details` (
  `id` bigint UNSIGNED NOT NULL,
  `module_service_id` bigint DEFAULT NULL,
  `contract_person_id` bigint DEFAULT NULL,
  `machine_id` bigint DEFAULT NULL,
  `installation_date` date NOT NULL,
  `serial_number` bigint DEFAULT NULL,
  `supply_date` date NOT NULL,
  `status_id` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_departments`
--

CREATE TABLE `notice_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT '1',
  `noticeable_id` bigint UNSIGNED NOT NULL,
  `noticeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_view_logs`
--

CREATE TABLE `notice_view_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `notice_id` bigint UNSIGNED NOT NULL,
  `is_view` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED DEFAULT NULL,
  `receiver_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_for` bigint DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_old`
--

CREATE TABLE `notifications_old` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('notification','message') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image_id` bigint UNSIGNED DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `icon` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `expense_claim_id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'invoice number',
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `payment_status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_details`
--

CREATE TABLE `payment_history_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `payment_history_id` bigint UNSIGNED NOT NULL,
  `payment_method_id` bigint UNSIGNED NOT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci COMMENT 'remarks of payment',
  `payment_status_id` bigint UNSIGNED NOT NULL,
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `paid_by_id` bigint UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank name',
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank branch',
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank account number',
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank account name',
  `bank_transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank transaction number',
  `bank_transaction_date` date DEFAULT NULL COMMENT 'bank transaction date',
  `bank_transaction_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank transaction ref',
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque number',
  `cheque_date` date DEFAULT NULL COMMENT 'cheque date',
  `cheque_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque bank name',
  `cheque_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque branch',
  `cheque_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque ref',
  `cash_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cash number',
  `cash_date` date DEFAULT NULL COMMENT 'cash date',
  `cash_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cash ref',
  `paid_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_logs`
--

CREATE TABLE `payment_history_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `payment_history_id` bigint UNSIGNED NOT NULL,
  `expense_claim_id` bigint UNSIGNED NOT NULL,
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `date` date DEFAULT NULL,
  `paid_by_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL DEFAULT '1' COMMENT '1 - cash, 2 - credit card, 3 - debit card, 4 - bank',
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'hr_menu', '\"{\\\"menu\\\":\\\"hr_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(2, 'designations', '\"{\\\"read\\\":\\\"designation_read\\\",\\\"create\\\":\\\"designation_create\\\",\\\"update\\\":\\\"designation_update\\\",\\\"delete\\\":\\\"designation_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(3, 'departments', '\"{\\\"read\\\":\\\"department_read\\\",\\\"create\\\":\\\"department_create\\\",\\\"update\\\":\\\"department_update\\\",\\\"delete\\\":\\\"department_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(4, 'users', '\"{\\\"read\\\":\\\"user_read\\\",\\\"profile\\\":\\\"profile_view\\\",\\\"create\\\":\\\"user_create\\\",\\\"edit\\\":\\\"user_edit\\\",\\\"user_permission\\\":\\\"user_permission\\\",\\\"update\\\":\\\"user_update\\\",\\\"delete\\\":\\\"user_delete\\\",\\\"registerFace\\\":\\\"registerFace\\\",\\\"menu\\\":\\\"user_menu\\\",\\\"make_hr\\\":\\\"make_hr\\\",\\\"profile_image_view\\\":\\\"profile_image_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(5, 'user_device', '\"{\\\"list\\\":\\\"user_device_list\\\",\\\"reset\\\":\\\"reset_device\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(6, 'profile', '\"{\\\"attendance_profile\\\":\\\"attendance_profile\\\",\\\"contract_profile\\\":\\\"contract_profile\\\",\\\"phonebook_profile\\\":\\\"phonebook_profile\\\",\\\"support_ticket_profile\\\":\\\"support_ticket_profile\\\",\\\"advance_profile\\\":\\\"advance_profile\\\",\\\"commission_profile\\\":\\\"commission_profile\\\",\\\"appointment_profile\\\":\\\"appointment_profile\\\",\\\"visit_profile\\\":\\\"visit_profile\\\",\\\"leave_request_profile\\\":\\\"leave_request_profile\\\",\\\"notice_profile\\\":\\\"notice_profile\\\",\\\"salary_profile\\\":\\\"salary_profile\\\",\\\"project_profile\\\":\\\"project_profile\\\",\\\"task_profile\\\":\\\"task_profile\\\",\\\"award_profile\\\":\\\"award_profile\\\",\\\"travel_profile\\\":\\\"travel_profile\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(7, 'roles', '\"{\\\"read\\\":\\\"role_read\\\",\\\"create\\\":\\\"role_create\\\",\\\"update\\\":\\\"role_update\\\",\\\"delete\\\":\\\"role_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(8, 'branch', '\"{\\\"read\\\":\\\"branch_read\\\",\\\"create\\\":\\\"branch_create\\\",\\\"update\\\":\\\"branch_update\\\",\\\"delete\\\":\\\"branch_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(9, 'leave_type', '\"{\\\"read\\\":\\\"leave_type_read\\\",\\\"create\\\":\\\"leave_type_create\\\",\\\"update\\\":\\\"leave_type_update\\\",\\\"delete\\\":\\\"leave_type_delete\\\",\\\"menu\\\":\\\"leave_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(10, 'leave_assign', '\"{\\\"read\\\":\\\"leave_assign_read\\\",\\\"create\\\":\\\"leave_assign_create\\\",\\\"update\\\":\\\"leave_assign_update\\\",\\\"delete\\\":\\\"leave_assign_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(11, 'daily_leave', '\"{\\\"read\\\":\\\"daily_leave_read\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(12, 'leave_request', '\"{\\\"read\\\":\\\"leave_request_read\\\",\\\"update\\\":\\\"leave_request_update\\\",\\\"store\\\":\\\"leave_request_store\\\",\\\"create\\\":\\\"leave_request_create\\\",\\\"approve\\\":\\\"leave_request_approve\\\",\\\"reject\\\":\\\"leave_request_reject\\\",\\\"delete\\\":\\\"leave_request_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(13, 'weekend', '\"{\\\"read\\\":\\\"weekend_read\\\",\\\"update\\\":\\\"weekend_update\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(14, 'holiday', '\"{\\\"read\\\":\\\"holiday_read\\\",\\\"create\\\":\\\"holiday_create\\\",\\\"update\\\":\\\"holiday_update\\\",\\\"delete\\\":\\\"holiday_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(15, 'schedule', '\"{\\\"read\\\":\\\"schedule_read\\\",\\\"create\\\":\\\"schedule_create\\\",\\\"update\\\":\\\"schedule_update\\\",\\\"delete\\\":\\\"schedule_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(16, 'attendance', '\"{\\\"read\\\":\\\"attendance_read\\\",\\\"create\\\":\\\"attendance_create\\\",\\\"update\\\":\\\"attendance_update\\\",\\\"delete\\\":\\\"attendance_delete\\\",\\\"menu\\\":\\\"attendance_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(17, 'shift', '\"{\\\"read\\\":\\\"shift_read\\\",\\\"create\\\":\\\"shift_create\\\",\\\"update\\\":\\\"shift_update\\\",\\\"delete\\\":\\\"shift_delete\\\",\\\"menu\\\":\\\"shift_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(18, 'payroll', '\"{\\\"menu\\\":\\\"payroll_menu\\\",\\\"payroll_item read\\\":\\\"list_payroll_item\\\",\\\"payroll_item create\\\":\\\"create_payroll_item\\\",\\\"payroll_item store\\\":\\\"store_payroll_item\\\",\\\"payroll_item edit\\\":\\\"edit_payroll_item\\\",\\\"payroll_item update\\\":\\\"update_payroll_item\\\",\\\"payroll_item delete\\\":\\\"delete_payroll_item\\\",\\\"payroll_item view\\\":\\\"view_payroll_item\\\",\\\"payroll_item menu\\\":\\\"payroll_item_menu\\\",\\\"list_payroll_set \\\":\\\"list_payroll_set\\\",\\\"create_payroll_set\\\":\\\"create_payroll_set\\\",\\\"store_payroll_set\\\":\\\"store_payroll_set\\\",\\\"edit_payroll_set\\\":\\\"edit_payroll_set\\\",\\\"update_payroll_set\\\":\\\"update_payroll_set\\\",\\\"delete_payroll_set\\\":\\\"delete_payroll_set\\\",\\\"view_payroll_set\\\":\\\"view_payroll_set\\\",\\\"payroll_set_menu\\\":\\\"payroll_set_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(19, 'payslip', '\"{\\\"menu\\\":\\\"payslip_menu\\\",\\\"salary_generate\\\":\\\"salary_generate\\\",\\\"salary_view\\\":\\\"salary_view\\\",\\\"salary_delete\\\":\\\"salary_delete\\\",\\\"salary_edit\\\":\\\"salary_edit\\\",\\\"salary_update\\\":\\\"salary_update\\\",\\\"salary_payment\\\":\\\"salary_payment\\\",\\\"payslip_list\\\":\\\"payslip_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(20, 'announcement', '\"{\\\"menu\\\":\\\"announcement_menu\\\",\\\"notice_menu\\\":\\\"notice_menu\\\",\\\"notice_list\\\":\\\"notice_list\\\",\\\"notice_edit\\\":\\\"notice_edit\\\",\\\"notice_update\\\":\\\"notice_update\\\",\\\"notice_create\\\":\\\"notice_create\\\",\\\"notice_delete\\\":\\\"notice_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(21, 'advance_type', '\"{\\\"menu\\\":\\\"advance_type_menu\\\",\\\"advance_type_create\\\":\\\"advance_type_create\\\",\\\"advance_type_store\\\":\\\"advance_type_store\\\",\\\"advance_type_edit\\\":\\\"advance_type_edit\\\",\\\"advance_type_update\\\":\\\"advance_type_update\\\",\\\"advance_type_delete\\\":\\\"advance_type_delete\\\",\\\"advance_type_view\\\":\\\"advance_type_view\\\",\\\"advance_type_list\\\":\\\"advance_type_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(22, 'advance_pay', '\"{\\\"menu\\\":\\\"advance_salaries_menu\\\",\\\"advance_salaries_create\\\":\\\"advance_salaries_create\\\",\\\"advance_salaries_store\\\":\\\"advance_salaries_store\\\",\\\"advance_salaries_edit\\\":\\\"advance_salaries_edit\\\",\\\"advance_salaries_update\\\":\\\"advance_salaries_update\\\",\\\"advance_salaries_delete\\\":\\\"advance_salaries_delete\\\",\\\"advance_salaries_view\\\":\\\"advance_salaries_view\\\",\\\"advance_salaries_approve\\\":\\\"advance_salaries_approve\\\",\\\"advance_salaries_list\\\":\\\"advance_salaries_list\\\",\\\"advance_salaries_pay\\\":\\\"advance_salaries_pay\\\",\\\"advance_salaries_invoice\\\":\\\"advance_salaries_invoice\\\",\\\"advance_salaries_search\\\":\\\"advance_salaries_search\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(23, 'salary', '\"{\\\"menu\\\":\\\"salary_menu\\\",\\\"salary_store\\\":\\\"salary_store\\\",\\\"salary_edit\\\":\\\"salary_edit\\\",\\\"salary_update\\\":\\\"salary_update\\\",\\\"salary_delete\\\":\\\"salary_delete\\\",\\\"salary_view\\\":\\\"salary_view\\\",\\\"salary_list\\\":\\\"salary_list\\\",\\\"salary_pay\\\":\\\"salary_pay\\\",\\\"salary_invoice\\\":\\\"salary_invoice\\\",\\\"salary_approve\\\":\\\"salary_approve\\\",\\\"salary_generate\\\":\\\"salary_generate\\\",\\\"salary_calculate\\\":\\\"salary_calculate\\\",\\\"salary_search\\\":\\\"salary_search\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(24, 'account', '\"{\\\"menu\\\":\\\"account_menu\\\",\\\"account_create\\\":\\\"account_create\\\",\\\"account_store\\\":\\\"account_store\\\",\\\"account_edit\\\":\\\"account_edit\\\",\\\"account_update\\\":\\\"account_update\\\",\\\"account_delete\\\":\\\"account_delete\\\",\\\"account_view\\\":\\\"account_view\\\",\\\"account_list\\\":\\\"account_list\\\",\\\"account_search\\\":\\\"account_search\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(25, 'deposit', '\"{\\\"menu\\\":\\\"deposit_menu\\\",\\\"deposit_create\\\":\\\"deposit_create\\\",\\\"deposit_store\\\":\\\"deposit_store\\\",\\\"deposit_edit\\\":\\\"deposit_edit\\\",\\\"deposit_update\\\":\\\"deposit_update\\\",\\\"deposit_delete\\\":\\\"deposit_delete\\\",\\\"deposit_list\\\":\\\"deposit_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(26, 'expense', '\"{\\\"menu\\\":\\\"expense_menu\\\",\\\"expense_create\\\":\\\"expense_create\\\",\\\"expense_store\\\":\\\"expense_store\\\",\\\"expense_edit\\\":\\\"expense_edit\\\",\\\"expense_update\\\":\\\"expense_update\\\",\\\"expense_delete\\\":\\\"expense_delete\\\",\\\"expense_list\\\":\\\"expense_list\\\",\\\"expense_approve\\\":\\\"expense_approve\\\",\\\"expense_invoice\\\":\\\"expense_invoice\\\",\\\"expense_pay\\\":\\\"expense_pay\\\",\\\"expense_view\\\":\\\"expense_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(27, 'deposit_category', '\"{\\\"menu\\\":\\\"deposit_category_menu\\\",\\\"deposit_category_create\\\":\\\"deposit_category_create\\\",\\\"deposit_category_store\\\":\\\"deposit_category_store\\\",\\\"deposit_category_edit\\\":\\\"deposit_category_edit\\\",\\\"deposit_category_update\\\":\\\"deposit_category_update\\\",\\\"deposit_category_delete\\\":\\\"deposit_category_delete\\\",\\\"deposit_category_list\\\":\\\"deposit_category_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(28, 'payment_method', '\"{\\\"menu\\\":\\\"payment_method_menu\\\",\\\"payment_method_create\\\":\\\"payment_method_create\\\",\\\"payment_method_store\\\":\\\"payment_method_store\\\",\\\"payment_method_edit\\\":\\\"payment_method_edit\\\",\\\"payment_method_update\\\":\\\"payment_method_update\\\",\\\"payment_method_delete\\\":\\\"payment_method_delete\\\",\\\"payment_method_list\\\":\\\"payment_method_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(29, 'transaction', '\"{\\\"menu\\\":\\\"transaction_menu\\\",\\\"transaction_create\\\":\\\"transaction_create\\\",\\\"transaction_store\\\":\\\"transaction_store\\\",\\\"transaction_edit\\\":\\\"transaction_edit\\\",\\\"transaction_update\\\":\\\"transaction_update\\\",\\\"transaction_delete\\\":\\\"transaction_delete\\\",\\\"transaction_view\\\":\\\"transaction_view\\\",\\\"transaction_list\\\":\\\"transaction_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(30, 'project', '\"{\\\"menu\\\":\\\"project_menu\\\",\\\"project_create\\\":\\\"project_create\\\",\\\"project_store\\\":\\\"project_store\\\",\\\"project_edit\\\":\\\"project_edit\\\",\\\"project_update\\\":\\\"project_update\\\",\\\"project_delete\\\":\\\"project_delete\\\",\\\"project_view\\\":\\\"project_view\\\",\\\"project_list\\\":\\\"project_list\\\",\\\"project_activity_view\\\":\\\"project_activity_view\\\",\\\"project_member_view\\\":\\\"project_member_view\\\",\\\"project_member_delete\\\":\\\"project_member_delete\\\",\\\"project_complete\\\":\\\"project_complete\\\",\\\"project_payment\\\":\\\"project_payment\\\",\\\"project_invoice_view\\\":\\\"project_invoice_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(31, 'project_discussion', '\"{\\\"project_discussion_create\\\":\\\"project_discussion_create\\\",\\\"project_discussion_store\\\":\\\"project_discussion_store\\\",\\\"project_discussion_edit\\\":\\\"project_discussion_edit\\\",\\\"project_discussion_update\\\":\\\"project_discussion_update\\\",\\\"project_discussion_delete\\\":\\\"project_discussion_delete\\\",\\\"project_discussion_view\\\":\\\"project_discussion_view\\\",\\\"project_discussion_list\\\":\\\"project_discussion_list\\\",\\\"project_discussion_comment\\\":\\\"project_discussion_comment\\\",\\\"project_discussion_reply\\\":\\\"project_discussion_reply\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(32, 'project_file', '\"{\\\"project_file_create\\\":\\\"project_file_create\\\",\\\"project_file_store\\\":\\\"project_file_store\\\",\\\"project_file_edit\\\":\\\"project_file_edit\\\",\\\"project_file_update\\\":\\\"project_file_update\\\",\\\"project_file_delete\\\":\\\"project_file_delete\\\",\\\"project_file_view\\\":\\\"project_file_view\\\",\\\"project_file_list\\\":\\\"project_file_list\\\",\\\"project_file_download\\\":\\\"project_file_download\\\",\\\"project_file_comment\\\":\\\"project_file_comment\\\",\\\"project_file_reply\\\":\\\"project_file_reply\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(33, 'project_notes', '\"{\\\"project_notes_create\\\":\\\"project_notes_create\\\",\\\"project_notes_store\\\":\\\"project_notes_store\\\",\\\"project_notes_edit\\\":\\\"project_notes_edit\\\",\\\"project_notes_update\\\":\\\"project_notes_update\\\",\\\"project_notes_delete\\\":\\\"project_notes_delete\\\",\\\"project_notes_list\\\":\\\"project_notes_list\\\",\\\"project_files_comment\\\":\\\"project_files_comment\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(34, 'general_settings', '\"{\\\"general_settings_read\\\":\\\"general_settings_read\\\",\\\"general_settings_update\\\":\\\"general_settings_update\\\",\\\"email_settings_read\\\":\\\"email_settings_read\\\",\\\"email_settings_update\\\":\\\"email_settings_update\\\",\\\"storage_settings_read\\\":\\\"storage_settings_read\\\",\\\"storage_settings_update\\\":\\\"storage_settings_update\\\",\\\"firebase_settings_read\\\":\\\"firebase_settings_read\\\",\\\"firebase_settings_update\\\":\\\"firebase_settings_update\\\",\\\"geocoding_settings_read\\\":\\\"geocoding_settings_read\\\",\\\"geocoding_settings_update\\\":\\\"geocoding_settings_update\\\",\\\"pusher_settings_read\\\":\\\"pusher_settings_read\\\",\\\"pusher_settings_update\\\":\\\"pusher_settings_update\\\",\\\"contact_info_settings_read\\\":\\\"contact_info_settings_read\\\",\\\"contact_info_settings_update\\\":\\\"contact_info_settings_update\\\",\\\"payment_gateway_settings_read\\\":\\\"payment_gateway_settings_read\\\",\\\"payment_gateway_settings_update\\\":\\\"payment_gateway_settings_update\\\",\\\"website_settings_read\\\":\\\"website_settings_read\\\",\\\"website_settings_update\\\":\\\"website_settings_update\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(35, 'task', '\"{\\\"menu\\\":\\\"task_menu\\\",\\\"task_create\\\":\\\"task_create\\\",\\\"task_store\\\":\\\"task_store\\\",\\\"task_edit\\\":\\\"task_edit\\\",\\\"task_update\\\":\\\"task_update\\\",\\\"task_delete\\\":\\\"task_delete\\\",\\\"task_view\\\":\\\"task_view\\\",\\\"task_list\\\":\\\"task_list\\\",\\\"task_activity_view\\\":\\\"task_activity_view\\\",\\\"task_assign_view\\\":\\\"task_assign_view\\\",\\\"task_assign_delete\\\":\\\"task_assign_delete\\\",\\\"task_complete\\\":\\\"task_complete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(36, 'client', '\"{\\\"menu\\\":\\\"client_menu\\\",\\\"client_create\\\":\\\"client_create\\\",\\\"client_store\\\":\\\"client_store\\\",\\\"client_edit\\\":\\\"client_edit\\\",\\\"client_update\\\":\\\"client_update\\\",\\\"client_delete\\\":\\\"client_delete\\\",\\\"client_view\\\":\\\"client_view\\\",\\\"client_list\\\":\\\"client_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(37, 'task_discussion', '\"{\\\"task_discussion_create\\\":\\\"task_discussion_create\\\",\\\"task_discussion_store\\\":\\\"task_discussion_store\\\",\\\"task_discussion_edit\\\":\\\"task_discussion_edit\\\",\\\"task_discussion_update\\\":\\\"task_discussion_update\\\",\\\"task_discussion_delete\\\":\\\"task_discussion_delete\\\",\\\"task_discussion_view\\\":\\\"task_discussion_view\\\",\\\"task_discussion_list\\\":\\\"task_discussion_list\\\",\\\"task_discussion_comment\\\":\\\"task_discussion_comment\\\",\\\"task_discussion_reply\\\":\\\"task_discussion_reply\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(38, 'task_file', '\"{\\\"task_file_create\\\":\\\"task_file_create\\\",\\\"task_file_store\\\":\\\"task_file_store\\\",\\\"task_file_edit\\\":\\\"task_file_edit\\\",\\\"task_file_update\\\":\\\"task_file_update\\\",\\\"task_file_delete\\\":\\\"task_file_delete\\\",\\\"task_file_view\\\":\\\"task_file_view\\\",\\\"task_file_list\\\":\\\"task_file_list\\\",\\\"task_file_download\\\":\\\"task_file_download\\\",\\\"task_file_comment\\\":\\\"task_file_comment\\\",\\\"task_file_reply\\\":\\\"task_file_reply\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(39, 'task_notes', '\"{\\\"task_notes_create\\\":\\\"task_notes_create\\\",\\\"task_notes_store\\\":\\\"task_notes_store\\\",\\\"task_notes_edit\\\":\\\"task_notes_edit\\\",\\\"task_notes_update\\\":\\\"task_notes_update\\\",\\\"task_notes_delete\\\":\\\"task_notes_delete\\\",\\\"task_notes_list\\\":\\\"task_notes_list\\\",\\\"task_files_comment\\\":\\\"task_files_comment\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(40, 'award_type', '\"{\\\"menu\\\":\\\"award_type_menu\\\",\\\"award_type_create\\\":\\\"award_type_create\\\",\\\"award_type_store\\\":\\\"award_type_store\\\",\\\"award_type_edit\\\":\\\"award_type_edit\\\",\\\"award_type_update\\\":\\\"award_type_update\\\",\\\"award_type_delete\\\":\\\"award_type_delete\\\",\\\"award_type_list\\\":\\\"award_type_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(41, 'award', '\"{\\\"menu\\\":\\\"award_menu\\\",\\\"award_create\\\":\\\"award_create\\\",\\\"award_store\\\":\\\"award_store\\\",\\\"award_edit\\\":\\\"award_edit\\\",\\\"award_update\\\":\\\"award_update\\\",\\\"award_delete\\\":\\\"award_delete\\\",\\\"award_view\\\":\\\"award_view\\\",\\\"award_list\\\":\\\"award_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(42, 'travel_type', '\"{\\\"menu\\\":\\\"travel_type_menu\\\",\\\"travel_type_create\\\":\\\"travel_type_create\\\",\\\"travel_type_store\\\":\\\"travel_type_store\\\",\\\"travel_type_edit\\\":\\\"travel_type_edit\\\",\\\"travel_type_update\\\":\\\"travel_type_update\\\",\\\"travel_type_delete\\\":\\\"travel_type_delete\\\",\\\"travel_type_list\\\":\\\"travel_type_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(43, 'travel', '\"{\\\"menu\\\":\\\"travel_menu\\\",\\\"travel_create\\\":\\\"travel_create\\\",\\\"travel_store\\\":\\\"travel_store\\\",\\\"travel_edit\\\":\\\"travel_edit\\\",\\\"travel_update\\\":\\\"travel_update\\\",\\\"travel_delete\\\":\\\"travel_delete\\\",\\\"travel_view\\\":\\\"travel_view\\\",\\\"travel_list\\\":\\\"travel_list\\\",\\\"travel_approve\\\":\\\"travel_approve\\\",\\\"travel_payment\\\":\\\"travel_payment\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(44, 'meeting', '\"{\\\"menu\\\":\\\"meeting_menu\\\",\\\"meeting_create\\\":\\\"meeting_create\\\",\\\"meeting_store\\\":\\\"meeting_store\\\",\\\"meeting_edit\\\":\\\"meeting_edit\\\",\\\"meeting_update\\\":\\\"meeting_update\\\",\\\"meeting_delete\\\":\\\"meeting_delete\\\",\\\"meeting_view\\\":\\\"meeting_view\\\",\\\"meeting_list\\\":\\\"meeting_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(45, 'appointment', '\"{\\\"appointment_menu\\\":\\\"appointment_menu\\\",\\\"appointment_read\\\":\\\"appointment_read\\\",\\\"appointment_create\\\":\\\"appointment_create\\\",\\\"appointment_approve\\\":\\\"appointment_approve\\\",\\\"appointment_reject\\\":\\\"appointment_reject\\\",\\\"appointment_delete\\\":\\\"appointment_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(46, 'performance', '\"{\\\"menu\\\":\\\"performance_menu\\\",\\\"settings\\\":\\\"performance_settings\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(47, 'performance_indicator', '\"{\\\"menu\\\":\\\"performance_indicator_menu\\\",\\\"performance_indicator_create\\\":\\\"performance_indicator_create\\\",\\\"performance_indicator_store\\\":\\\"performance_indicator_store\\\",\\\"performance_indicator_edit\\\":\\\"performance_indicator_edit\\\",\\\"performance_indicator_update\\\":\\\"performance_indicator_update\\\",\\\"performance_indicator_delete\\\":\\\"performance_indicator_delete\\\",\\\"performance_indicator_list\\\":\\\"performance_indicator_list\\\",\\\"performance_indicator_view\\\":\\\"performance_indicator_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(48, 'performance_appraisal', '\"{\\\"menu\\\":\\\"performance_appraisal_menu\\\",\\\"performance_appraisal_create\\\":\\\"performance_appraisal_create\\\",\\\"performance_appraisal_store\\\":\\\"performance_appraisal_store\\\",\\\"performance_appraisal_edit\\\":\\\"performance_appraisal_edit\\\",\\\"performance_appraisal_update\\\":\\\"performance_appraisal_update\\\",\\\"performance_appraisal_delete\\\":\\\"performance_appraisal_delete\\\",\\\"performance_appraisal_list\\\":\\\"performance_appraisal_list\\\",\\\"performance_appraisal_view\\\":\\\"performance_appraisal_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(49, 'performance_goal_type', '\"{\\\"menu\\\":\\\"performance_goal_type_menu\\\",\\\"performance_goal_type_create\\\":\\\"performance_goal_type_create\\\",\\\"performance_goal_type_store\\\":\\\"performance_goal_type_store\\\",\\\"performance_goal_type_edit\\\":\\\"performance_goal_type_edit\\\",\\\"performance_goal_type_update\\\":\\\"performance_goal_type_update\\\",\\\"performance_goal_type_delete\\\":\\\"performance_goal_type_delete\\\",\\\"performance_goal_type_list\\\":\\\"performance_goal_type_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(50, 'performance_goal', '\"{\\\"menu\\\":\\\"performance_goal_menu\\\",\\\"performance_goal_create\\\":\\\"performance_goal_create\\\",\\\"performance_goal_store\\\":\\\"performance_goal_store\\\",\\\"performance_goal_edit\\\":\\\"performance_goal_edit\\\",\\\"performance_goal_update\\\":\\\"performance_goal_update\\\",\\\"performance_goal_delete\\\":\\\"performance_goal_delete\\\",\\\"performance_goal_view\\\":\\\"performance_goal_view\\\",\\\"performance_goal_list\\\":\\\"performance_goal_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(51, 'performance_competence_type', '\"{\\\"menu\\\":\\\"performance_competence_type_menu\\\",\\\"performance_competence_type_create\\\":\\\"performance_competence_type_create\\\",\\\"performance_competence_type_store\\\":\\\"performance_competence_type_store\\\",\\\"performance_competence_type_edit\\\":\\\"performance_competence_type_edit\\\",\\\"performance_competence_type_update\\\":\\\"performance_competence_type_update\\\",\\\"performance_competence_type_delete\\\":\\\"performance_competence_type_delete\\\",\\\"performance_competence_type_list\\\":\\\"performance_competence_type_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(52, 'performance_competence', '\"{\\\"menu\\\":\\\"performance_competence_menu\\\",\\\"performance_competence_create\\\":\\\"performance_competence_create\\\",\\\"performance_competence_store\\\":\\\"performance_competence_store\\\",\\\"performance_competence_edit\\\":\\\"performance_competence_edit\\\",\\\"performance_competence_update\\\":\\\"performance_competence_update\\\",\\\"performance_competence_delete\\\":\\\"performance_competence_delete\\\",\\\"performance_competence_list\\\":\\\"performance_competence_list\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(53, 'report', '\"{\\\"attendance_report\\\":\\\"attendance_report_read\\\",\\\"live_tracking_read\\\":\\\"live_tracking_read\\\",\\\"menu\\\":\\\"report_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(54, 'leave_settings', '\"{\\\"read\\\":\\\"leave_settings_read\\\",\\\"update\\\":\\\"leave_settings_update\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(55, 'ip', '\"{\\\"read\\\":\\\"ip_read\\\",\\\"create\\\":\\\"ip_create\\\",\\\"update\\\":\\\"ip_update\\\",\\\"delete\\\":\\\"ip_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(56, 'company_setup', '\"{\\\"menu\\\":\\\"company_setup_menu\\\",\\\"activation_read\\\":\\\"company_setup_activation\\\",\\\"activation_update\\\":\\\"company_setup_activation_update\\\",\\\"configuration_read\\\":\\\"company_setup_configuration\\\",\\\"configuration_update\\\":\\\"company_setup_configuration_update\\\",\\\"location_read\\\":\\\"company_setup_location\\\",\\\"company_update\\\":\\\"company_settings_update\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(57, 'location', '\"{\\\"location_create\\\":\\\"location_create\\\",\\\"location_store\\\":\\\"location_store\\\",\\\"location_edit\\\":\\\"location_edit\\\",\\\"location_update\\\":\\\"location_update\\\",\\\"location_delete\\\":\\\"location_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(58, 'api_setup', '\"{\\\"read\\\":\\\"locationApi\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(59, 'claim', '\"{\\\"read\\\":\\\"claim_read\\\",\\\"create\\\":\\\"claim_create\\\",\\\"update\\\":\\\"claim_update\\\",\\\"delete\\\":\\\"claim_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(60, 'payment', '\"{\\\"read\\\":\\\"payment_read\\\",\\\"create\\\":\\\"payment_create\\\",\\\"update\\\":\\\"payment_update\\\",\\\"delete\\\":\\\"payment_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(61, 'visit', '\"{\\\"menu\\\":\\\"visit_menu\\\",\\\"read\\\":\\\"visit_read\\\",\\\"update\\\":\\\"visit_update\\\",\\\"view\\\":\\\"visit_view\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(62, 'app_settings', '\"{\\\"menu\\\":\\\"app_settings_menu\\\",\\\"update\\\":\\\"app_settings_update\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(63, 'web_setup', '\"{\\\"menu\\\":\\\"web_setup_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(64, 'content', '\"{\\\"menu\\\":\\\"content_menu\\\",\\\"read\\\":\\\"content_read\\\",\\\"update\\\":\\\"content_update\\\",\\\"delete\\\":\\\"content_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(65, 'menu', '\"{\\\"menu\\\":\\\"menu\\\",\\\"create\\\":\\\"menu_create\\\",\\\"menu_store\\\":\\\"menu_store\\\",\\\"menu_edit\\\":\\\"menu_edit\\\",\\\"update\\\":\\\"menu_update\\\",\\\"delete\\\":\\\"menu_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(66, 'service', '\"{\\\"menu\\\":\\\"service_menu\\\",\\\"read\\\":\\\"service_read\\\",\\\"create\\\":\\\"service_create\\\",\\\"update\\\":\\\"service_update\\\",\\\"delete\\\":\\\"service_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(67, 'portfolio', '\"{\\\"menu\\\":\\\"portfolio_menu\\\",\\\"create\\\":\\\"portfolio_create\\\",\\\"portfolio_store\\\":\\\"portfolio_store\\\",\\\"edit\\\":\\\"portfolio_edit\\\",\\\"update\\\":\\\"portfolio_update\\\",\\\"delete\\\":\\\"portfolio_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(68, 'contact', '\"{\\\"menu\\\":\\\"contact_menu\\\",\\\"read\\\":\\\"contact_read\\\",\\\"create\\\":\\\"contact_create\\\",\\\"update\\\":\\\"contact_update\\\",\\\"delete\\\":\\\"contact_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(69, 'language', '\"{\\\"menu\\\":\\\"language_menu\\\",\\\"create\\\":\\\"language_create\\\",\\\"edit\\\":\\\"language_edit\\\",\\\"update\\\":\\\"language_update\\\",\\\"delete\\\":\\\"language_delete\\\",\\\"make_default\\\":\\\"make_default\\\",\\\"setup_language\\\":\\\"setup_language\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(70, 'team_member', '\"{\\\"menu\\\":\\\"team_member_menu\\\",\\\"read\\\":\\\"team_member_read\\\",\\\"create\\\":\\\"team_member_create\\\",\\\"team_member_store\\\":\\\"team_member_store\\\",\\\"team_member_edit\\\":\\\"team_member_edit\\\",\\\"update\\\":\\\"team_member_update\\\",\\\"delete\\\":\\\"team_member_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(71, 'support', '\"{\\\"support_menu\\\":\\\"support_menu\\\",\\\"support_read\\\":\\\"support_read\\\",\\\"support_create\\\":\\\"support_create\\\",\\\"support_reply\\\":\\\"support_reply\\\",\\\"support_delete\\\":\\\"support_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(72, 'model', '\"{\\\"read\\\":\\\"model_read\\\",\\\"create\\\":\\\"model_create\\\",\\\"update\\\":\\\"model_update\\\",\\\"delete\\\":\\\"model_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(73, 'brand', '\"{\\\"read\\\":\\\"brand_read\\\",\\\"create\\\":\\\"brand_create\\\",\\\"update\\\":\\\"brand_update\\\",\\\"delete\\\":\\\"brand_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(74, 'machine', '\"{\\\"read\\\":\\\"machine_read\\\",\\\"create\\\":\\\"machine_create\\\",\\\"update\\\":\\\"machine_update\\\",\\\"delete\\\":\\\"machine_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(75, 'package', '\"{\\\"read\\\":\\\"package_read\\\",\\\"create\\\":\\\"package_create\\\",\\\"update\\\":\\\"package_update\\\",\\\"delete\\\":\\\"package_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(76, 'institution', '\"{\\\"read\\\":\\\"institution_read\\\",\\\"create\\\":\\\"institution_create\\\",\\\"update\\\":\\\"institution_update\\\",\\\"delete\\\":\\\"institution_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(77, 'addons_menu', '\"{\\\"menu\\\":\\\"addons_menu\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(78, 'employee_document_type', '\"{\\\"read\\\":\\\"employee_document_type_read\\\",\\\"create\\\":\\\"employee_document_type_create\\\",\\\"update\\\":\\\"employee_document_type_update\\\",\\\"delete\\\":\\\"employee_document_type_delete\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(79, 'employee_document', '\"{\\\"read\\\":\\\"employee_document_read\\\",\\\"create\\\":\\\"employee_document_create\\\",\\\"download\\\":\\\"employee_document_download\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(80, 'subscription', '\"{\\\"read\\\":\\\"subscription_read\\\",\\\"upgrade\\\":\\\"subscription_upgrade\\\",\\\"invoice\\\":\\\"subscription_invoice\\\"}\"', '2024-06-14 08:49:27', '2024-06-14 08:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_duration_types`
--

CREATE TABLE `plan_duration_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` enum('Monthly','Quarterly','Half-yearly','Yearly','Lifetime') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_duration_types`
--

INSERT INTO `plan_duration_types` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Monthly', 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 'Quarterly', 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 'Half-yearly', 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 'Yearly', 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(5, 'Lifetime', 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plan_features`
--

CREATE TABLE `plan_features` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` int DEFAULT '0',
  `image_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_features`
--

INSERT INTO `plan_features` (`id`, `title`, `key`, `heading`, `short_description`, `description`, `order`, `image_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'HR', 'hr', 'HR Management', 'HR Management involves overseeing personnel, from recruitment to employee development, to ensure a productive and compliant workforce.', '\n                <ul>\n                  <li><strong>Recruitment:</strong> The process of identifying, attracting, and selecting qualified candidates for job positions within the company. It includes creating job descriptions, conducting interviews, and evaluating applicants.</li>\n                  <li><strong>Training and Development:</strong> Providing employees with the necessary skills and knowledge to excel in their roles. This can include on-the-job training, workshops, and ongoing professional development opportunities.</li>\n                  <li><strong>Performance Evaluation:</strong> Assessing and measuring employee performance to identify areas for improvement and recognize outstanding contributions. Performance appraisals and feedback are commonly used for this purpose.</li>\n                  <li><strong>Employee Relations:</strong> Managing relationships between employees and employers, resolving disputes, and ensuring a harmonious work environment. This includes handling grievances, conflicts, and maintaining open communication channels.</li>\n                  <li><strong>Compensation and Benefits:</strong> Designing and administering compensation packages, including salaries, bonuses, and benefits such as healthcare, retirement plans, and more. Ensuring competitive and fair compensation is crucial to attracting and retaining talent.</li>\n                  <li><strong>Compliance:</strong> Ensuring that the organization adheres to labor laws, regulations, and industry standards. This includes managing legal issues, workplace safety, and labor relations.</li>\n                  <li><strong>HR Technology:</strong> Implementing and using technology solutions, such as HR management software, to streamline HR processes, data management, and analytics for more informed decision-making.</li>\n                </ul>\n                \n                <p>HR Management is not only about handling administrative tasks but also strategically aligning the workforce with the organization\'s goals and values. It plays a vital role in creating a motivated, productive, and satisfied workforce, which in turn contributes to the overall success of the company.</p>\n                ', 1, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(2, 'Employees', 'employees', 'Employee Management', 'Employee Management entails optimizing the performance, well-being, and development of staff within an organization to achieve business goals.', '\n                <ul>\n                  <li><strong>Individual Performance Optimization:</strong> Employee Management places a strong emphasis on enhancing the capabilities and productivity of each employee. It involves setting clear performance goals, providing feedback, and offering opportunities for skill development tailored to individual needs.</li>\n                  <li><strong>Career Development:</strong> This aspect revolves around nurturing and advancing an employee\'s career within the organization. It includes identifying career paths, providing training, and offering growth opportunities that align with individual aspirations and company needs.</li>\n                  <li><strong>Employee Engagement:</strong> Employee Management focuses on maintaining high levels of employee satisfaction and engagement. Strategies may include recognition programs, feedback mechanisms, and addressing concerns that affect individual morale.</li>\n                  <li><strong>Work-Life Balance:</strong> Ensuring that employees can achieve a balance between their professional and personal lives is a unique facet of Employee Management. It may involve flexible work arrangements, time-off policies, and wellness programs that cater to individual needs.</li>\n                </ul>\n                \n                <p>While HR Management covers a wider spectrum of HR functions, Employee Management is distinctive in its dedicated approach to enhancing the individual employee experience. It recognizes that a motivated and fulfilled workforce is the foundation of organizational success.</p>\n                ', 2, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(3, 'Services', 'services', 'Service Management', 'Administering and optimizing services to meet customer needs efficiently.', '\n                <ul>\n                  <li><strong>Service Design:</strong> The process of defining and designing services, considering customer requirements and business objectives. It involves creating service blueprints, identifying service components, and ensuring scalability and efficiency.</li>\n                  <li><strong>Service Delivery:</strong> Implementing services to customers, including service execution, customer interaction, and service monitoring. Service level agreements (SLAs) and performance metrics are key aspects of service delivery.</li>\n                  <li><strong>Service Improvement:</strong> Continuously enhancing services based on feedback, data analysis, and industry best practices. This includes identifying areas for improvement, implementing changes, and measuring their impact.</li>\n                  <li><strong>Customer Relationship Management:</strong> Building and maintaining strong customer relationships, understanding their needs, and ensuring satisfaction. This often involves support services, addressing inquiries, and resolving issues in a timely manner.</li>\n                  <li><strong>Service Catalog Management:</strong> Creating and managing a catalog of available services, including their descriptions, features, and associated costs, to aid customers in making informed choices.</li>\n                  <li><strong>Incident and Problem Management:</strong> Responding to incidents and problems that may disrupt services, with a focus on minimizing downtime and preventing future occurrences.</li>\n                  <li><strong>Service Metrics and Reporting:</strong> Measuring and reporting on service performance through key performance indicators (KPIs) to ensure that services meet defined standards and objectives.</li>\n                  </ul>\n                ', 3, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(4, 'Leaves', 'leaves', 'Leave Management', 'Tracking and managing employee time-off requests and balances.', '\n                <ul>\n                  <li><strong>Leave Types:</strong> Defining and categorizing the various types of leave available to employees, such as vacation, sick leave, personal days, and more.</li>\n                  <li><strong>Leave Policies:</strong> Establishing clear and transparent policies outlining how leave requests are submitted, approved, and managed. This includes rules for accrual, carry-over, and limitations on leaves.</li>\n                  <li><strong>Leave Requests:</strong> Providing employees with a mechanism to request time off, typically through a leave management system or HR portal. Requests may require specific information, including the dates, reason, and duration of the leave.</li>\n                  <li><strong>Leave Approval:</strong> Designating a process for supervisors or managers to review and approve leave requests based on organizational policies, workloads, and staffing requirements.</li>\n                  <li><strong>Leave Balances:</strong> Maintaining accurate records of employees\' leave balances, including accrued and used leave. These balances are often accessible to employees for transparency.</li>\n                  <li><strong>Leave Tracking:</strong> Monitoring employee absences and ensuring that they align with approved leave requests. This includes managing unplanned or unexpected leaves, such as sick days or family emergencies.</li>\n                  <li><strong>Compliance and Legal Aspects:</strong> Adhering to labor laws and regulations related to leave entitlements, such as family and medical leave, maternity or paternity leave, and paid time off (PTO).</li>\n                  <li><strong>Reporting and Analytics:</strong> Utilizing leave data for reporting and analysis to make informed decisions, optimize workforce planning, and ensure business continuity.</li>\n                </ul>\n                \n                <p>Leave Management is vital for maintaining a well-balanced work environment, ensuring that employees can take the necessary time off while also meeting the organization\'s operational needs. Effective Leave Management fosters employee satisfaction, reduces absenteeism, and promotes a healthy work-life balance.</p>\n                ', 4, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(5, 'Attendance', 'attendance', 'Attendance Management', 'Monitoring and maintaining records of employee work hours.', '\n                <ul>\n                  <li><strong>Time Tracking:</strong> Recording the clock-in and clock-out times of employees, either manually or through automated time and attendance systems, to create an accurate record of working hours.</li>\n                  <li><strong>Attendance Policies:</strong> Establishing clear attendance policies that define work hours, break times, tardiness thresholds, and the consequences of non-compliance with attendance rules.</li>\n                  <li><strong>Shift Scheduling:</strong> Creating and managing employee work schedules, including shift rotations, overtime scheduling, and holiday assignments to ensure adequate staffing levels.</li>\n                  <li><strong>Leave and Absence Management:</strong> Integrating attendance records with leave management to track paid time off, unpaid leave, and other absence types, ensuring accurate attendance records.</li>\n                  <li><strong>Overtime Management:</strong> Monitoring and controlling overtime hours to manage costs and prevent employee burnout while adhering to labor regulations governing overtime pay.</li>\n                  <li><strong>Biometric or Access Control Systems:</strong> Implementing biometric or access control systems for secure and accurate employee attendance tracking, often used in conjunction with time clocks or electronic badges.</li>\n                  <li><strong>Compliance:</strong> Ensuring compliance with labor laws and regulations related to work hours, breaks, and rest periods to avoid legal repercussions and fines.</li>\n                  <li><strong>Reporting and Analytics:</strong> Using attendance data for reporting and analysis to gain insights into workforce performance, productivity, and to optimize scheduling and resource allocation.</li>\n                </ul>\n                \n                <p>Attendance Management is essential for tracking employee presence, ensuring accurate payroll processing, maintaining workforce discipline, and optimizing resource allocation. It contributes to efficient workforce planning and aids in creating a productive and compliant work environment.</p>\n                ', 5, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(6, 'Conference', 'conference', 'Conference Management', 'Organizing and overseeing events, meetings, and conferences.', '\n                <ul>\n                  <li><strong>Event Planning:</strong> The process of conceptualizing, designing, and organizing conferences or events, considering goals, budgets, timelines, and target audiences.</li>\n                  <li><strong>Logistics and Venue Selection:</strong> Determining the appropriate location and venue for the conference, including considerations for capacity, facilities, and accessibility.</li>\n                  <li><strong>Agenda and Program Development:</strong> Creating a structured agenda and program that outlines speakers, topics, activities, and schedules for the conference.</li>\n                  <li><strong>Registration and Attendee Management:</strong> Managing attendee registration, including ticket sales, communication, badges, and handling inquiries or issues related to attendance.</li>\n                  <li><strong>Speaker and Presentation Management:</strong> Coordinating speakers, presentations, and audio-visual requirements, ensuring the smooth delivery of content during the event.</li>\n                  <li><strong>Promotion and Marketing:</strong> Developing and executing marketing strategies to attract participants and sponsors to the conference, including online and offline promotion efforts.</li>\n                  <li><strong>Budget and Financial Management:</strong> Managing the budget, financial transactions, and expenses related to the conference, including sponsorships, ticket sales, and vendor contracts.</li>\n                  <li><strong>Logistics and On-Site Operations:</strong> Overseeing the logistical aspects of the conference, such as registration desks, technical setups, and handling unexpected issues during the event.</li>\n                  <li><strong>Post-Conference Evaluation:</strong> Collecting feedback, analyzing the success of the conference, and identifying areas for improvement for future events.</li>\n                </ul>\n                \n                <p>Conference Management is crucial for ensuring that conferences and events are executed flawlessly, providing value to participants, sponsors, and organizers. It requires careful planning, strong coordination, and attention to detail to create a memorable and productive conference experience.</p>\n                ', 6, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(7, 'Payroll', 'payroll', 'Payroll Management', 'Calculating and processing employee salaries and benefits.', '\n                <ul>\n                  <li><strong>Salary Calculation:</strong> Determining each employee\'s gross pay, which includes their regular salary, bonuses, overtime, and other earnings, as well as any deductions or withholdings.</li>\n                  <li><strong>Taxation and Withholding:</strong> Ensuring that federal, state, and local taxes are correctly withheld from employees\' paychecks and remitted to the appropriate tax authorities.</li>\n                  <li><strong>Benefits Administration:</strong> Managing employee benefits, including health insurance, retirement plans, and other perks, and ensuring that deductions and contributions are correctly accounted for.</li>\n                  <li><strong>Compliance:</strong> Adhering to labor laws, tax regulations, and government reporting requirements, including timely filings of payroll-related taxes and reports such as W-2 forms.</li>\n                  <li><strong>Payment Processing:</strong> Executing payments to employees through various methods, such as direct deposit or printed checks, in accordance with pay schedules and company policies.</li>\n                  <li><strong>Record-Keeping:</strong> Maintaining precise records of payroll transactions, employee earnings, deductions, and compliance-related documents for auditing and reporting purposes.</li>\n                  <li><strong>Garnishments and Deductions:</strong> Managing court-ordered garnishments, child support orders, and other legal deductions from employee wages as required by law.</li>\n                  <li><strong>Salary Structure and Compensation Planning:</strong> Developing and maintaining a structured salary framework and compensation strategies to attract and retain top talent within budgetary constraints.</li>\n                  <li><strong>Payroll Software and Technology:</strong> Utilizing payroll management software and technology to streamline processes, automate calculations, and ensure accuracy in payroll processing.</li>\n                </ul>\n                \n                <p>Effective Payroll Management is essential for maintaining employee satisfaction, adhering to legal requirements, and accurately reflecting the financial health of an organization. It requires precision, compliance, and continuous updates to accommodate changing tax laws and regulations.</p>\n                ', 7, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(8, 'Accounts', 'accounts', 'Account Management', 'Managing user accounts and permissions within a system.', '\n                <ul>\n                  <li><strong>User Account Creation:</strong> Creating and provisioning user accounts for employees, customers, or system users, ensuring that access is provided as needed and authorized.</li>\n                  <li><strong>Access Control and Permissions:</strong> Defining and managing user permissions, specifying what actions, data, or functionalities each user is allowed to access or modify within the system or organization.</li>\n                  <li><strong>User Authentication:</strong> Implementing secure authentication mechanisms, such as passwords, multi-factor authentication, or biometrics, to verify user identity and protect account access.</li>\n                  <li><strong>User Profile Management:</strong> Collecting and storing user information, preferences, and personalization settings to enhance the user experience and provide personalized services or content.</li>\n                  <li><strong>Password Management:</strong> Ensuring the security and recovery of passwords, allowing users to reset or change their passwords while safeguarding against unauthorized access.</li>\n                  <li><strong>Account Deactivation and Deletion:</strong> Managing the process of deactivating or deleting accounts when users leave an organization or when no longer needed, with proper data retention and compliance measures.</li>\n                  <li><strong>Account Auditing and Logging:</strong> Maintaining logs and records of account-related activities, including account creation, changes, and access attempts for security and compliance purposes.</li>\n                  <li><strong>User Role Management:</strong> Defining roles and groups to simplify the assignment of permissions to multiple users, ensuring consistency and efficiency in account management.</li>\n                  <li><strong>Account Security and Compliance:</strong> Ensuring that account management practices align with security policies, regulations, and best practices to protect sensitive data and maintain compliance with relevant standards.</li>\n                </ul>\n                \n                <p>Account Management is integral to maintaining a secure, efficient, and organized user environment. Whether for employees, customers, or system users, effective account management ensures that users have the right access and permissions, enhancing their experience and safeguarding sensitive information.</p>\n                ', 8, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(9, 'Clients', 'clients', 'Client Management', 'Handling relationships and interactions with clients or customers.', '\n                <ul>\n                  <li><strong>Client Onboarding:</strong> Welcoming new clients and guiding them through the initial steps of establishing a working relationship, which may include paperwork, contracts, and introductions to key contacts.</li>\n                  <li><strong>Client Relationship Development:</strong> Nurturing and maintaining ongoing relationships with clients, understanding their needs, preferences, and objectives, and providing solutions or services to meet them.</li>\n                  <li><strong>Communication and Engagement:</strong> Establishing effective channels of communication and engagement to keep clients informed, address inquiries, and gather feedback to enhance services or products.</li>\n                  <li><strong>Client Support and Issue Resolution:</strong> Providing assistance to clients, addressing concerns, resolving issues, and ensuring a high level of satisfaction with the products or services offered.</li>\n                  <li><strong>Account Management:</strong> Managing client accounts, including billing, invoicing, and account maintenance, to ensure transparency, accuracy, and efficiency in financial transactions.</li>\n                  <li><strong>Sales and Upselling:</strong> Identifying opportunities for cross-selling or upselling products or services that align with the client\'s needs, potentially increasing revenue and value for both parties.</li>\n                  <li><strong>Client Feedback and Improvement:</strong> Soliciting and analyzing client feedback to identify areas for improvement, adapting strategies, products, or services to meet changing client expectations.</li>\n                  <li><strong>Client Retention and Loyalty:</strong> Implementing strategies to foster client loyalty, including loyalty programs, incentives, and retention efforts to minimize client turnover.</li>\n                  <li><strong>Data and Relationship Management:</strong> Maintaining accurate records of client information, interactions, and preferences to provide personalized experiences and to inform business decisions.</li>\n                </ul>\n                \n                <p>Client Management is fundamental for businesses to build trust, foster loyalty, and ensure the long-term success of client relationships. By effectively managing client interactions and addressing their needs, businesses can drive growth and create lasting partnerships.</p>\n                ', 9, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(10, 'Tasks', 'tasks', 'Task Management', 'Planning, tracking, and organizing tasks and assignments.', '\n                <ul>\n                  <li><strong>Task Creation and Assignment:</strong> Creating tasks, specifying their details, and assigning them to individuals or teams responsible for their completion.</li>\n                  <li><strong>Priority and Deadline Setting:</strong> Assigning priorities to tasks and defining deadlines to ensure that tasks are completed in a timely manner and in order of importance.</li>\n                  <li><strong>Task Progress Tracking:</strong> Monitoring the progress of tasks, tracking their status, and identifying bottlenecks or issues that may hinder completion. This often involves the use of task management tools or software.</li>\n                  <li><strong>Task Collaboration:</strong> Facilitating collaboration among team members by allowing them to share information, files, and updates related to tasks, ensuring transparency and teamwork.</li>\n                  <li><strong>Task Dependencies:</strong> Identifying task dependencies and relationships, ensuring that tasks are sequenced correctly and that the completion of one task triggers the start of another.</li>\n                  <li><strong>Task Reminders and Notifications:</strong> Sending reminders and notifications to task assignees to keep them informed about upcoming deadlines or changes in task status.</li>\n                  <li><strong>Task Documentation:</strong> Creating and maintaining documentation related to tasks, including task descriptions, checklists, and associated files or resources.</li>\n                  <li><strong>Task Reporting and Analysis:</strong> Generating reports and conducting analysis to evaluate task performance, team productivity, and areas for improvement in task management processes.</li>\n                  <li><strong>Task Automation:</strong> Automating routine or repetitive tasks to increase efficiency, reduce manual work, and ensure consistency in task execution.</li>\n                </ul>\n                \n                <p>Effective Task Management is crucial for meeting project goals, improving productivity, and ensuring that tasks are executed in an organized and efficient manner. Task management tools and methodologies help teams and organizations manage their workloads and priorities effectively.</p>\n                ', 10, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(11, 'Projects', 'projects', 'Project Management', 'Coordinating tasks, resources, and timelines for successful project delivery.', '\n                <ul>\n                  <li><strong>Project Planning:</strong> Defining project objectives, scope, deliverables, and creating a comprehensive project plan that outlines tasks, timelines, and resource requirements.</li>\n                  <li><strong>Task Assignment and Management:</strong> Assigning responsibilities to team members, tracking task progress, and ensuring that project activities are completed on time and within budget.</li>\n                  <li><strong>Resource Allocation:</strong> Allocating and managing resources such as personnel, materials, and equipment to meet project requirements and achieve project goals efficiently.</li>\n                  <li><strong>Risk Assessment and Mitigation:</strong> Identifying potential risks and issues that may affect the project and developing strategies to mitigate or manage them to minimize disruptions or delays.</li>\n                  <li><strong>Project Scheduling:</strong> Creating project schedules that outline task sequences, dependencies, and timelines to ensure a logical flow of work throughout the project\'s lifecycle.</li>\n                  <li><strong>Budget and Cost Management:</strong> Developing and managing project budgets, monitoring costs, and ensuring that expenses remain within the approved budget limits throughout the project\'s duration.</li>\n                  <li><strong>Communication and Stakeholder Management:</strong> Establishing clear communication channels, reporting structures, and managing relationships with stakeholders to keep them informed and engaged throughout the project\'s lifecycle.</li>\n                  <li><strong>Quality Assurance and Control:</strong> Implementing processes to ensure that project deliverables meet established quality standards and conducting inspections or testing to validate compliance.</li>\n                  <li><strong>Change Management:</strong> Managing changes to project scope, objectives, or requirements while maintaining control over project timelines and budgets, preventing scope creep.</li>\n                  <li><strong>Project Documentation:</strong> Creating and maintaining project documentation, including project plans, status reports, meeting minutes, and project-related files for future reference and audits.</li>\n                </ul>\n                \n                <p>Project Management is instrumental in delivering projects on time, within budget, and with high-quality results. It ensures that project objectives are met and that all project stakeholders are satisfied with the outcomes. Effective Project Management often involves the use of methodologies and tools to streamline project processes and enhance collaboration among project team members.</p>\n                ', 11, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(12, 'Awards', 'awards', 'Award Management', 'Administering recognition and awards programs for employees.', '\n                <ul>\n                  <li><strong>Award Program Design:</strong> Defining the objectives, criteria, and types of awards to be offered, including recognition for outstanding performance, achievements, or contributions.</li>\n                  <li><strong>Nomination and Selection:</strong> Establishing processes for nominating individuals or teams for awards and selecting recipients based on the program\'s criteria, often involving committees or panels for evaluation.</li>\n                  <li><strong>Recognition and Presentation:</strong> Planning and executing award ceremonies or recognition events to honor recipients and publicly acknowledge their accomplishments or contributions.</li>\n                  <li><strong>Communication and Promotion:</strong> Promoting the award program to encourage participation, educating stakeholders on its significance, and generating excitement around recognition opportunities.</li>\n                  <li><strong>Award Tracking and Management:</strong> Maintaining records of award recipients, managing the logistics of awards, and ensuring that recipients receive their awards in a timely and organized manner.</li>\n                  <li><strong>Feedback and Evaluation:</strong> Gathering feedback from recipients and stakeholders to evaluate the effectiveness of the award program and identify areas for improvement or refinement.</li>\n                  <li><strong>Budget and Resources:</strong> Allocating resources and managing the budget for award programs, including the costs of awards, events, and promotional materials.</li>\n                  <li><strong>Compliance and Fairness:</strong> Ensuring that award programs comply with relevant policies, regulations, and ethical standards while promoting fairness and transparency in the selection process.</li>\n                  <li><strong>Award Catalog and Offerings:</strong> Developing and maintaining a catalog of available awards, which may include certificates, trophies, monetary prizes, or other forms of recognition. This catalog can evolve to align with changing preferences and achievements.\n                </ul>\n                \n                <p>Award Management is a vital component of organizational culture, fostering motivation, engagement, and a sense of achievement among employees or stakeholders. It celebrates excellence and contributions, driving performance and loyalty within the organization.</p>\n                ', 12, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(13, 'Travels', 'travels', 'Travel Management', 'Organizing and monitoring business-related travel arrangements.', '\n                <ul>\n                  <li><strong>Travel Policy Development:</strong> Creating and enforcing a comprehensive travel policy that defines guidelines, approval processes, and reimbursement procedures for business travel.</li>\n                  <li><strong>Travel Booking and Reservations:</strong> Arranging transportation, accommodation, and other travel-related services for employees, often using online booking systems or travel agencies to secure the best options.</li>\n                  <li><strong>Expense Management:</strong> Managing travel expenses, including receipts, reimbursements, and compliance with the travel policy and financial guidelines. This may involve the use of expense management software.</li>\n                  <li><strong>Travel Approval and Authorization:</strong> Implementing procedures for obtaining approval for travel plans, ensuring alignment with business goals, and verifying the necessity and cost-effectiveness of the trips.</li>\n                  <li><strong>Travel Safety and Security:</strong> Addressing travel safety concerns, such as providing employees with information on security risks, offering assistance in case of emergencies, and tracking employee locations during travel, if necessary.</li>\n                  <li><strong>Travel Itinerary and Document Management:</strong> Maintaining and distributing detailed itineraries, travel documents, and reservations to employees, making travel as smooth and hassle-free as possible.</li>\n                  <li><strong>Vendor and Supplier Management:</strong> Establishing relationships with travel vendors, negotiating contracts, and managing service providers to secure competitive rates and consistent service quality.</li>\n                  <li><strong>Travel Reporting and Analysis:</strong> Collecting data on travel expenses, trends, and patterns to optimize travel budgets, evaluate the cost-effectiveness of travel, and identify opportunities for savings or efficiencies.</li>\n                  <li><strong>Travel Technology Integration:</strong> Leveraging travel management software and technology tools to streamline the booking process, monitor expenses, and enhance overall travel management efficiency.\n                </ul>\n                \n                <p>Travel Management plays a pivotal role in ensuring that business travel is organized, efficient, and cost-effective. It contributes to the safety and well-being of employees while aligning travel activities with the organization\'s goals and policies.</p>\n                ', 13, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(14, 'Performance', 'performance', 'Performance Management', 'Evaluating and enhancing employee performance and goals.', '\n                <ul>\n                  <li><strong>Goal Setting:</strong> Defining clear, specific, and measurable performance goals and objectives for individuals, teams, and the organization as a whole.</li>\n                  <li><strong>Performance Appraisal:</strong> Conducting regular assessments of employee performance, often through formal reviews or evaluations, to provide feedback and align performance with expectations.</li>\n                  <li><strong>Feedback and Coaching:</strong> Offering ongoing feedback, coaching, and development opportunities to help employees improve their performance and reach their potential.</li>\n                  <li><strong>Development and Training:</strong> Providing training, resources, and development programs to enhance employee skills and knowledge and address performance gaps.</li>\n                  <li><strong>Recognition and Rewards:</strong> Acknowledging and rewarding exceptional performance through recognition programs, incentives, promotions, or bonuses to motivate and retain high-performing employees.</li>\n                  <li><strong>Performance Metrics and KPIs:</strong> Using key performance indicators (KPIs) and performance metrics to measure, track, and analyze individual and team performance against established benchmarks.</li>\n                  <li><strong>Performance Improvement Plans:</strong> Creating action plans to address subpar performance, outlining steps for improvement, and providing support and resources for underperforming employees.</li>\n                  <li><strong>Career and Succession Planning:</strong> Identifying opportunities for career growth and succession planning, aligning employee skills and aspirations with organizational needs.</li>\n                  <li><strong>Performance Documentation:</strong> Maintaining accurate records of performance-related discussions, evaluations, and improvement plans for reference and future decisions.\n                  </li>\n                  <li><strong>Performance Management Software:</strong> Utilizing performance management software and tools to streamline the performance appraisal process, monitor progress, and facilitate continuous feedback.\n                </ul>\n                \n                <p>Performance Management is a critical function that aligns individual and team performance with organizational goals. It promotes continuous improvement, employee development, and a culture of excellence within the organization, ultimately driving success and competitiveness.</p>\n                ', 14, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(15, 'Meeting', 'meeting', 'Meeting Management', 'Efficiently planning and overseeing various types of meetings.', '\n                <ul>\n                  <li><strong>Meeting Planning:</strong> Defining the purpose and objectives of a meeting, determining the participants, and setting an agenda to guide the discussion.</li>\n                  <li><strong>Meeting Scheduling:</strong> Arranging a suitable date, time, and location for the meeting, considering the availability and preferences of participants and ensuring logistical arrangements.</li>\n                  <li><strong>Invitations and Reminders:</strong> Sending invitations, notifications, and reminders to participants, along with any relevant documents, materials, or pre-reading necessary for the meeting\'s effectiveness.</li>\n                  <li><strong>Meeting Facilitation:</strong> Leading or facilitating the meeting to ensure that it stays on track, participants adhere to the agenda, and the meeting objectives are met efficiently.\n                  </li>\n                  <li><strong>Documentation and Minutes:</strong> Recording and documenting meeting proceedings, including decisions, action items, and discussions, in meeting minutes, and distributing them to participants afterward.</li>\n                  <li><strong>Follow-up and Action Items:</strong> Ensuring that action items or tasks assigned during the meeting are tracked, completed, and reported on in subsequent meetings or updates.\n                  </li>\n                  <li><strong>Technology and Tools:</strong> Leveraging meeting management software and technology, such as video conferencing platforms, to facilitate virtual meetings, share documents, and enhance collaboration.\n                  </li>\n                  <li><strong>Evaluation and Feedback:</strong> Collecting feedback from meeting participants to assess the effectiveness of the meeting and identify areas for improvement.\n                  </li>\n                  <li><strong>Cost Management:</strong> Monitoring and controlling the costs associated with meetings, including expenses for venue rentals, catering, technology, and materials.\n                  </li>\n                </ul>\n                \n                <p>Effective Meeting Management ensures that meetings are purposeful, productive, and contribute to the organization\'s goals. It minimizes wasted time and resources while promoting clear communication, decision-making, and accountability among participants.</p>\n                ', 15, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(16, 'Appointment', 'appointment', 'Appointment Management', 'Scheduling and managing appointments and bookings.', '\n                <ul>\n                  <li><strong>Appointment Scheduling:</strong> Offering a straightforward system for clients or customers to book appointments with businesses, professionals, or service providers, often through online scheduling tools or phone reservations.</li>\n                  <li><strong>Availability and Resource Management:</strong> Managing the availability of resources, such as employees, equipment, or facilities, to ensure that appointments can be accommodated without overbooking or causing scheduling conflicts.</li>\n                  <li><strong>Appointment Confirmation:</strong> Sending confirmations and reminders to clients or customers via email, SMS, or other means to reduce no-shows and missed appointments.</li>\n                  <li><strong>Rescheduling and Cancellation Policies:</strong> Defining clear policies for rescheduling or canceling appointments and communicating these policies to clients to minimize disruptions and revenue loss.</li>\n                  <li><strong>Waitlist Management:</strong> Managing waitlists for appointments in case of cancellations or last-minute scheduling opportunities, ensuring efficient use of resources.\n                  </li>\n                  <li><strong>Appointment Reminders:</strong> Sending pre-appointment reminders to clients to ensure they are prepared for their scheduled appointments and have any required documentation or information.\n                  </li>\n                  <li><strong>Document Management:</strong> Maintaining appointment-related documents, such as forms, contracts, or records, and ensuring they are readily available and properly organized.\n                  </li>\n                  <li><strong>Payment and Invoicing:</strong> Handling payments and invoicing related to appointments, collecting fees, and issuing invoices as applicable for services rendered.\n                  </li>\n                  <li><strong>Reporting and Analytics:</strong> Collecting data on appointment metrics, such as appointment volumes, revenue, and customer satisfaction, to optimize appointment management processes.\n                  </li>\n                  <li><strong>Technology Integration:</strong> Leveraging appointment scheduling software and online tools to streamline the booking process, enhance communication, and provide convenience for clients.\n                  </li>\n                </ul>\n                \n                <p>Appointment Management is crucial for businesses and service providers to efficiently manage their schedules, optimize resource utilization, and provide a convenient and organized experience for clients or customers. It reduces no-shows, enhances customer satisfaction, and maximizes revenue potential.</p>\n                ', 16, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(17, 'Visit', 'visit', 'Visit Management', 'Handling visitor registration and tracking at a location.', '\n                <ul>\n                  <li><strong>Visitor Registration:</strong> Providing a user-friendly registration process for visitors to enter their information, such as name, contact details, purpose of the visit, and any required documentation.</li>\n                  <li><strong>Check-In and Check-Out:</strong> Managing the arrival and departure of visitors, ensuring a smooth check-in process and verifying their identities, if necessary.</li>\n                  <li><strong>Access Control:</strong> Implementing access control systems, such as visitor badges, electronic key cards, or security measures, to ensure that visitors have access to authorized areas only.</li>\n                  <li><strong>Visitor Identification:</strong> Verifying the identity of visitors, particularly in secure or regulated environments, and issuing identification badges or passes as needed.\n                  </li>\n                  <li><strong>Security and Compliance:</strong> Ensuring compliance with security and safety regulations, visitor policies, and maintaining records for auditing purposes.\n                  </li>\n                  <li><strong>Appointment Scheduling:</strong> Coordinating visits with appointments, ensuring that visitors are expected and received by the appropriate hosts or contact persons.\n                  </li>\n                  <li><strong>Visitor Records:</strong> Maintaining accurate records of visitor information, including visit dates, entry and exit times, and the purpose of visits.\n                  </li>\n                  <li><strong>Notification and Alerts:</strong> Sending notifications to hosts or responsible parties when their scheduled visitors arrive or need assistance.\n                  </li>\n                  <li><strong>Visitor Experience:</strong> Ensuring a positive visitor experience by providing clear directions, assistance, and any necessary information to enhance their visit.\n                  </li>\n                  <li><strong>Reporting and Analytics:</strong> Collecting data on visitor metrics, such as visitor volumes, purpose of visits, and wait times, to optimize the visit management process.\n                  </li>\n                </ul>\n                \n                <p>Visit Management is crucial for organizations that receive visitors, clients, or guests regularly. It helps maintain a secure and organized environment while providing a welcoming and efficient experience for visitors and enhancing overall security and compliance.</p>\n                ', 17, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(18, 'Support', 'support', 'Support Management', 'Providing assistance and resolving issues for customers or users.', '\n                <ul>\n                  <li><strong>Customer Support Channels:</strong> Establishing various support channels, such as phone, email, live chat, or helpdesk systems, to enable customers to seek assistance in their preferred manner.</li>\n                  <li><strong>Support Ticketing:</strong> Managing support requests and issues through a ticketing system, assigning, tracking, and prioritizing them for timely resolution.\n                  </li>\n                  <li><strong>Knowledge Base and Self-Help:</strong> Providing a comprehensive knowledge base or self-help resources for customers to find answers to common queries or resolve issues independently.\n                  </li>\n                  <li><strong>Service Level Agreements (SLAs):</strong> Defining SLAs that specify response times, resolution times, and other service commitments to ensure timely support and meet customer expectations.\n                  </li>\n                  <li><strong>Issue Triage and Escalation:</strong> Categorizing and prioritizing support issues, and escalating them to higher-level support or specialized teams when necessary.\n                  </li>\n                  <li><strong>Agent Training and Development:</strong> Training support agents to have the necessary skills and knowledge to address customer issues effectively and providing ongoing development opportunities.\n                  </li>\n                  <li><strong>Performance Metrics and Reporting:</strong> Collecting data on support metrics, such as response times, resolution rates, customer satisfaction, and ticket backlog, for analysis and continuous improvement.\n                  </li>\n                  <li><strong>Customer Feedback and Surveys:</strong> Gathering feedback from customers to evaluate the quality of support services and identify areas for improvement.\n                  </li>\n                  <li><strong>Automation and Chatbots:</strong> Implementing automation and chatbots to handle routine support queries, free up support agents\' time, and provide quick responses to customers.\n                  </li>\n                  <li><strong>Compliance and Quality Assurance:</strong> Ensuring that support services comply with relevant regulations and industry standards while maintaining quality in service delivery.\n                  </li>\n                </ul>\n                \n                <p>Support Management is essential for providing excellent customer service, addressing issues promptly, and maintaining customer satisfaction. It helps organizations build and maintain positive relationships with their customers and users while ensuring effective issue resolution.</p>\n                ', 18, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(19, 'Announcement', 'announcement', 'Announcement Management', 'Disseminating important information and announcements.', '\n                <ul>\n                  <li><strong>Announcement Planning:</strong> Strategically planning announcements, including defining the purpose, content, and target audience for each announcement.</li>\n                  <li><strong>Content Creation:</strong> Developing announcement content, such as written messages, visuals, or multimedia, that effectively conveys the intended information or message.\n                  </li>\n                  <li><strong>Channel Selection:</strong> Choosing appropriate communication channels for announcements, including email, intranet, social media, bulletin boards, or other internal and external platforms.\n                  </li>\n                  <li><strong>Scheduling and Timing:</strong> Determining the timing of announcements to ensure they reach the intended audience at the right moment and are not disruptive.\n                  </li>\n                  <li><strong>Approval and Review:</strong> Implementing a review and approval process to ensure the accuracy, consistency, and relevance of announcements before they are shared.\n                  </li>\n                  <li><strong>Feedback and Interaction:</strong> Encouraging feedback, questions, or comments from the audience in response to announcements and providing mechanisms for two-way communication.\n                  </li>\n                  <li><strong>Crisis and Emergency Communications:</strong> Managing crisis or emergency announcements, including protocols for rapid dissemination of critical information.\n                  </li>\n                  <li><strong>Tracking and Reporting:</strong> Monitoring the performance of announcements, including metrics such as reach, engagement, and effectiveness, and using data for continuous improvement.\n                  </li>\n                  <li><strong>Archiving and Documentation:</strong> Maintaining a record of past announcements and related documentation for reference and compliance purposes.\n                  </li>\n                  <li><strong>Compliance and Regulations:</strong> Ensuring that announcements comply with relevant regulations, policies, and industry standards.\n                  </li>\n                </ul>\n                \n                <p>Announcement Management is crucial for keeping employees or stakeholders informed, engaged, and aligned with organizational goals. Effective management ensures that announcements are clear, well-timed, and contribute to a positive and informed work environment.</p>\n                ', 19, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27');
INSERT INTO `plan_features` (`id`, `title`, `key`, `heading`, `short_description`, `description`, `order`, `image_id`, `status_id`, `created_at`, `updated_at`) VALUES
(20, 'Contacts', 'contacts', 'Contact Management', 'Organizing and maintaining contact details and interactions.', '\n                <ul>\n                  <li><strong>Contact Database:</strong> Creating and maintaining a centralized database or system for storing contact information, including names, phone numbers, email addresses, and additional details.\n                  </li>\n                  <li><strong>Contact Segmentation:</strong> Categorizing contacts into groups or segments based on criteria such as demographics, preferences, or interactions for targeted communication.\n                  </li>\n                  <li><strong>Contact Interaction Tracking:</strong> Recording and tracking interactions with contacts, including emails, phone calls, meetings, purchases, or support requests.\n                  </li>\n                  <li><strong>Contact Communication:</strong> Facilitating communication with contacts through various channels, such as email, SMS, phone calls, or social media, and ensuring that messages are relevant and personalized.\n                  </li>\n                  <li><strong>Contact Import and Export:</strong> Enabling the import of contact lists from various sources and allowing the export of contact data for use in marketing or communication campaigns.\n                  </li>\n                  <li><strong>Contact Relationship Management (CRM):</strong> Utilizing CRM software or tools to manage and nurture relationships with contacts, including tracking sales leads, opportunities, and customer journeys.\n                  </li>\n                  <li><strong>Privacy and Data Protection:</strong> Ensuring compliance with data protection regulations and privacy standards when collecting, storing, and using contact information.\n                  </li>\n                  <li><strong>Contact Insights and Analytics:</strong> Analyzing contact data to gain insights into customer behavior, preferences, and engagement patterns for informed decision-making.\n                  </li>\n                  <li><strong>Contact History and Notes:</strong> Maintaining detailed histories and notes for each contact\n                ', 20, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(21, 'Report', 'report', 'Report', 'Generating, analyzing, and sharing data-driven reports.', '\n                <ul>\n                  <li><strong>Live Tracking</strong></li>\n                  <li><strong>Location Tracking</strong></li>\n                  <li><strong>Attendance Report</strong></li>\n                  <li><strong>Break Report</strong></li>\n                  <li><strong>Leave Report</strong></li>\n                  <li><strong>Payment Report</strong></li>\n                  <li><strong>Visit Report</strong></li>\n                </ul>\n                \n                <p>Report Management is crucial for informed decision-making, performance assessment, and accountability within organizations. It provides a systematic approach to transforming data into actionable insights, enabling organizations to track progress, identify areas for improvement, and drive success.</p>\n                ', 21, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(22, 'Configurations', 'configurations', 'Configurations', 'Configuration involves setting up and tailoring software or systems to match specific requirements and preferences, optimizing their functionality.', '\n                <ul>\n                    <li><strong>Configuration</strong></li>\n                    <li><strong>Weekend Setup</strong></li>\n                    <li><strong>Holiday Setup</strong></li>\n                    <li><strong>Shift Setup</strong></li>\n                    <li><strong>Duty Schedule</strong></li>\n                    <li><strong>IP Whitelist</strong></li>\n                    <li><strong>Locations</strong></li>\n                    <li><strong>Activation</strong></li>\n                </ul>\n                \n                <p>Configurations are pivotal for tailoring software and systems to specific needs, optimizing performance, ensuring security, and facilitating interoperability. Effective configuration management practices are essential for maintaining the stability and reliability of complex systems and applications.</p>\n                ', 22, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(23, 'Settings', 'settings', 'Settings', 'Settings refer to configurable options within a system or software, allowing users to customize the behavior and appearance to suit their preferences and needs.', '\n                <ul>\n                    <li><strong>General Settings</strong></li>\n                    <li><strong>App Setting</strong></li>\n                    <li><strong>Content</strong></li>\n                    <li><strong>Language</strong></li>\n                </ul>\n                \n                <p>Settings are integral for tailoring software, applications, and devices to suit individual preferences, needs, and requirements. They empower users to create a personalized and efficient user experience, enhancing usability and functionality.</p>\n                ', 23, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27'),
(24, 'Add-ons', 'add_ons', 'Add-ons', '', '', 24, 45, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plans`
--

CREATE TABLE `pricing_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_limit` bigint UNSIGNED DEFAULT '0',
  `is_employee_limit` tinyint NOT NULL DEFAULT '1' COMMENT 'if 1 then employee create have some limit which is define in employee_limit column. If 0 then employee create have no limit.',
  `basic_price` decimal(8,2) DEFAULT '0.00' COMMENT 'This basic price count for 1 month',
  `is_popular` tinyint(1) DEFAULT NULL COMMENT 'if 1 is true then show popular badge otherwise not show',
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_plans`
--

INSERT INTO `pricing_plans` (`id`, `name`, `employee_limit`, `is_employee_limit`, `basic_price`, `is_popular`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Basic', 10, 1, 9.00, 0, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 'Standard', 50, 1, 29.00, 1, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 'Premium', 500, 1, 99.00, 0, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 'Enterprise', 0, 0, 199.00, 0, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plan_features`
--

CREATE TABLE `pricing_plan_features` (
  `id` bigint UNSIGNED NOT NULL,
  `pricing_plan_id` bigint UNSIGNED NOT NULL,
  `plan_feature_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_plan_features`
--

INSERT INTO `pricing_plan_features` (`id`, `pricing_plan_id`, `plan_feature_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 1, 2, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 1, 3, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 1, 4, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(5, 1, 5, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(6, 1, 6, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(7, 1, 8, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(8, 1, 12, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(9, 1, 13, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(10, 1, 14, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(11, 1, 15, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(12, 1, 16, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(13, 1, 17, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(14, 1, 18, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(15, 1, 19, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(16, 1, 20, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(17, 1, 21, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(18, 1, 22, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(19, 1, 23, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(20, 2, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(21, 2, 2, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(22, 2, 3, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(23, 2, 4, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(24, 2, 5, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(25, 2, 6, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(26, 2, 7, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(27, 2, 8, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(28, 2, 12, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(29, 2, 13, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(30, 2, 14, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(31, 2, 15, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(32, 2, 16, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(33, 2, 17, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(34, 2, 18, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(35, 2, 19, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(36, 2, 20, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(37, 2, 21, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(38, 2, 22, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(39, 2, 23, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(40, 3, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(41, 3, 2, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(42, 3, 3, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(43, 3, 4, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(44, 3, 5, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(45, 3, 6, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(46, 3, 7, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(47, 3, 8, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(48, 3, 9, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(49, 3, 10, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(50, 3, 11, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(51, 3, 12, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(52, 3, 13, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(53, 3, 14, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(54, 3, 15, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(55, 3, 16, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(56, 3, 17, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(57, 3, 18, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(58, 3, 19, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(59, 3, 20, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(60, 3, 21, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(61, 3, 22, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(62, 3, 23, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(63, 3, 24, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(64, 4, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(65, 4, 2, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(66, 4, 3, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(67, 4, 4, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(68, 4, 5, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(69, 4, 6, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(70, 4, 7, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(71, 4, 8, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(72, 4, 9, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(73, 4, 10, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(74, 4, 11, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(75, 4, 12, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(76, 4, 13, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(77, 4, 14, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(78, 4, 15, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(79, 4, 16, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(80, 4, 17, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(81, 4, 18, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(82, 4, 19, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(83, 4, 20, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(84, 4, 21, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(85, 4, 22, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(86, 4, 23, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(87, 4, 24, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plan_prices`
--

CREATE TABLE `pricing_plan_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `pricing_plan_id` bigint UNSIGNED NOT NULL,
  `plan_duration_type_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) DEFAULT '0.00',
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_plan_prices`
--

INSERT INTO `pricing_plan_prices` (`id`, `pricing_plan_id`, `plan_duration_type_id`, `price`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 1, 9.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 1, 2, 24.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 1, 3, 49.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 1, 4, 99.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(5, 2, 1, 29.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(6, 2, 2, 79.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(7, 2, 3, 149.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(8, 2, 4, 299.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(9, 3, 1, 99.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(10, 3, 2, 249.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(11, 3, 3, 499.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(12, 3, 4, 899.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(13, 4, 1, 199.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(14, 4, 2, 499.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(15, 4, 3, 999.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(16, 4, 4, 1999.00, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `progress_from_tasks` int DEFAULT '1',
  `progress` int DEFAULT '0',
  `billing_type` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_rate` double(16,2) DEFAULT NULL,
  `total_rate` double(16,2) DEFAULT NULL,
  `estimated_hour` double(16,2) DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '24',
  `priority` bigint UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment` bigint UNSIGNED NOT NULL DEFAULT '9',
  `amount` double(16,2) DEFAULT NULL,
  `paid` double(16,2) NOT NULL DEFAULT '0.00',
  `due` double(16,2) NOT NULL DEFAULT '0.00',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `notify_all_users` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `goal_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_activities`
--

CREATE TABLE `project_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_file_comments`
--

CREATE TABLE `project_file_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `project_file_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_membars`
--

CREATE TABLE `project_membars` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_payments`
--

CREATE TABLE `project_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `paid_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `upper_roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `app_login` tinyint(1) DEFAULT '1',
  `web_login` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `permissions`, `upper_roles`, `status_id`, `company_id`, `branch_id`, `app_login`, `web_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'superadmin', '\"[]\"', NULL, 1, 1, 1, 1, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saas_cms`
--

CREATE TABLE `saas_cms` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attachment_id` bigint UNSIGNED DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` smallint DEFAULT NULL,
  `style` int NOT NULL DEFAULT '1',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saas_cms`
--

INSERT INTO `saas_cms` (`id`, `title`, `slug`, `description`, `attachment_id`, `link`, `text_color`, `bg_color`, `order`, `style`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Grow Your Business With ONEST HRM', 'grow-your-business-with-taqnahhr-hrm', 'Think HRM Software Is Just About Contact Management? Think Again. HubSpot HRM Has Free Tools For Everyone On Your Team, It\'s 100% Free', 49, 'https://www.youtube.com/watch?v=Gusi6D71Cnc', '#2C2C51', '#f6f6f6', 0, 6, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(2, 'HRM with SaaS Features', 'hrm-with-saas-features', 'Thank you for choosing our powerful Software as a Service (SaaS) platform. We are excited to have you on board and ready to help you streamline your operations, boost productivity, and achieve your business goals. Whether you are a small business owner, a member of a growing team, or part of a large enterprise, our SaaS platform is designed to meet your unique needs. Thank you for choosing our SaaS platform. We look forward to helping your business thrive in the digital age. If you ever have questions or need assistance, don\'t hesitate to contact our support team for help.', 41, 'https://hrm.test/pages/content/hrm-with-saas-features', '#ffffff', '#4F46E5', 1, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(3, 'Powerful SaaS Dashboard Panel', 'powerful-saas-dashboard-panel', '\n                    <p>Salesforce is a leading customer relationship management (CRM) platform. It empowers businesses to manage their sales, customer support, marketing, and analytics all in one integrated solution. With its cloud-based approach, it allows for easy customization and scalability.</p>\n    \n                    <p>Microsoft 365, formerly known as Office 365, is a comprehensive suite of productivity tools. It includes applications like Word, Excel, and PowerPoint, as well as cloud-based collaboration and communication tools like Microsoft Teams and SharePoint.</p>\n    \n                    <p>AWS is the worlds most comprehensive and widely adopted cloud platform. It provides a vast array of SaaS offerings, including artificial intelligence, machine learning, analytics, and more. AWS empowers businesses to innovate and scale with unparalleled flexibility.</p>\n    \n                    <p>Slack is a communication and collaboration platform that enhances team productivity. It offers chat, file sharing, integrations, and customizable workflows to streamline internal communication.</p>\n    \n                ', 42, 'https://hrm.test/pages/content/powerful-saas-dashboard-panel', '#000000', '#F1EAFF', 2, 2, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(4, 'Customer Success Stories', 'customer-success-stories', '\n    \n                <p>FoxNet, a small e-commerce business, leveraged our SaaS solutions to streamline their operations and improve customer engagement. Within a year of using our platform, they achieved a 150% increase in sales, thanks to better data analytics and marketing tools.</p>\n    \n                <p>Alpin Soft, a medium-sized enterprise, adopted our SaaS solutions to enhance internal communication and project management. They saw a 30% reduction in project turnaround time and improved collaboration, leading to higher client satisfaction and repeat business.</p>\n    \n                <p>TechLite, a tech startup, utilized Amazon Web Services (AWS) to scale their infrastructure seamlessly. This allowed them to handle a sudden surge in user traffic without downtime, demonstrating the flexibility and reliability of AWS\'s cloud services.</p>\n    \n                <p>ShipTech, a design agency, integrated Adobe Creative Cloud into their workflow, resulting in a 40% increase in productivity. They now deliver high-quality designs and content to their clients faster and more efficiently.</p>\n    \n                <p>ToLets, a global team, utilized Dropbox to securely store and share project files across borders. With Dropbox\'s file management capabilities, they improved collaboration and data accessibility while maintaining top-notch security.</p>\n    \n                ', 43, 'https://hrm.test/pages/content/customer-success-stories', '#000000', '#FFFBF5', 3, 3, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(5, 'Get Started with Our SaaS Mobile Application', 'get-started-with-out-saas-mobile-application', '\n                <p>Ready to get started with our powerful SaaS platform? Follow these simple steps to begin your journey with us:</p>\n                <p>Start by creating an account. Click the \"Sign Up\" button and provide the necessary information. It\'s quick, easy, and free to get started.</p>\n                <p>Once you\'ve signed up, take some time to explore the features and functionalities of our SaaS platform. Learn how it can benefit your business and streamline your operations.</p>\n                <p>If you have any questions or need assistance, don\'t hesitate to reach out to our dedicated support team. We\'re here to help you make the most of our platform.</p>\n                <p>Ready to unlock even more powerful features? Upgrade your plan to access premium functionalities tailored to your business needs.</p>\n    \n                <p>Thank you for choosing our SaaS platform. We\'re excited to have you on board, and we look forward to helping your business thrive in the digital age!</p>\n    \n                ', 44, 'https://hrm.test/pages/content/get-started-with-out-saas-mobile-application', '#000000', '#FFF6F6', 4, 4, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(6, 'HRM Management System', 'hrm-system', 'HRM Gives You The Block & Components You Need To Create A Truly Professional Website For Your SaaS And Gives The Blocks.', 46, 'https://hrm.test/pages/content/hrm-system', '#000000', '#FAF8ED', 5, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(7, 'Our Team', 'our-team', 'Our Team is a group of individuals working together to achieve shared goals, combining their unique skills and expertise for collective success', 47, 'https://hrm.test/pages/content/our-team', '#000000', '#f9f9f9', 6, 1, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28'),
(8, 'Contact Us for Support', 'contact-us', 'If you ever encounter issues or have suggestions for improvement, please don\'t hesitate to contact us. \n                We value your feedback and are dedicated to providing the best possible experience.\n                Have questions or need assistance? Contact our support team for help.', 48, 'https://hrm.test/pages/content/contact-us', '#4f46e5', '#F9F5F6', 7, 3, 1, '2024-06-14 08:49:28', '2024-06-14 08:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `saas_subscriptions`
--

CREATE TABLE `saas_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `pricing_plan_price_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) DEFAULT '0.00',
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offline_payment` json DEFAULT NULL,
  `employee_limit` bigint UNSIGNED DEFAULT '0',
  `is_employee_limit` tinyint NOT NULL DEFAULT '1' COMMENT 'if 1 then employee create have some limit which is define in employee_limit column. If 0 then employee create have no limit.',
  `expiry_date` date DEFAULT NULL,
  `features` json NOT NULL,
  `features_key` json NOT NULL,
  `is_demo_checkout` tinyint NOT NULL DEFAULT '0',
  `source` enum('Website','Admin') COLLATE utf8mb4_unicode_ci DEFAULT 'Website',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '2' COMMENT '2=Pending,5=Approve,6=Reject',
  `payment_status_id` bigint UNSIGNED NOT NULL COMMENT '8=Paid,9=Unpaid',
  `is_processing_for_approve` tinyint NOT NULL DEFAULT '0',
  `is_running_subscription` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_generates`
--

CREATE TABLE `salary_generates` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '9',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `total_working_day` int DEFAULT NULL,
  `present` int DEFAULT NULL,
  `absent` int DEFAULT NULL,
  `late` int DEFAULT NULL,
  `left_early` int DEFAULT NULL,
  `is_calculated` tinyint NOT NULL DEFAULT '0',
  `adjust` double(16,2) DEFAULT NULL,
  `absent_amount` double(16,2) DEFAULT NULL,
  `advance_amount` double(16,2) DEFAULT NULL,
  `advance_details` json DEFAULT NULL,
  `allowance_amount` double(16,2) DEFAULT NULL,
  `allowance_details` json DEFAULT NULL,
  `deduction_amount` double(16,2) DEFAULT NULL,
  `deduction_details` json DEFAULT NULL,
  `net_salary` double(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_payment_logs`
--

CREATE TABLE `salary_payment_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `salary_generate_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `paid_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setups`
--

CREATE TABLE `salary_setups` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_details`
--

CREATE TABLE `salary_setup_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `salary_setup_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `commission_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `amount` double(16,2) NOT NULL,
  `amount_type` tinyint NOT NULL DEFAULT '1' COMMENT '1=fixed, 2=percentage',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_reports`
--

CREATE TABLE `salary_sheet_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `sl_no` int NOT NULL,
  `name_of_the_employee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_days` int NOT NULL,
  `present` int NOT NULL,
  `absent` int NOT NULL,
  `tardy` int NOT NULL,
  `tardy_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_salary` double NOT NULL,
  `basic_50` double NOT NULL,
  `hra_40` double NOT NULL,
  `medical_10` double NOT NULL,
  `performance_incentive` double NOT NULL,
  `absent_amount` double NOT NULL,
  `advance` double NOT NULL,
  `tardy_amount` double NOT NULL,
  `incentive` double NOT NULL,
  `net_salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_brands`
--

CREATE TABLE `service_brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_brands`
--

INSERT INTO `service_brands` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Brand 1', 1, NULL, NULL, 1, 1),
(2, 'Brand 2', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_institutions`
--

CREATE TABLE `service_institutions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_institutions`
--

INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Kukua 10 bed Hospital', 'kukua-10-bed-hospital', 1, NULL, NULL, 1, 1),
(2, 'Chhakhar 10 bed Hospital', 'chhakhar-10-bed-hospital', 1, NULL, NULL, 1, 1),
(3, 'Kirtipasha 10 bed Hospital (RHC)', 'kirtipasha-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(4, 'Guinak 10 bed Hospital (RHC)', 'guinak-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(5, 'Sandwip 10 bed Hospital (RHC)', 'sandwip-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(6, 'St. Martin 10 bed Hospital', 'st-martin-10-bed-hospital', 1, NULL, NULL, 1, 1),
(7, 'Kalikapur 10 bed Hospital (RHC)', 'kalikapur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(8, 'Talbalchhari 10 bed Hospital (RHC)', 'talbalchhari-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(9, 'Kaptai 10 bed Hospital', 'kaptai-10-bed-hospital', 1, NULL, NULL, 1, 1),
(10, 'Hajratpur 10 bed Hospital', 'hajratpur-10-bed-hospital', 1, NULL, NULL, 1, 1),
(11, 'Kunda 10 bed Hospital', 'kunda-10-bed-hospital', 1, NULL, NULL, 1, 1),
(12, 'Gopinathpur 10 bed Hospital (RHC)', 'gopinathpur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(13, 'Kopilmuni 10 bed Hospital', 'kopilmuni-10-bed-hospital', 1, NULL, NULL, 1, 1),
(14, 'Khokshabari 10 bed Hospital (RHC)', 'khokshabari-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(15, 'Ramchandrapur 10 bed Hospital (RHC)', 'ramchandrapur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(16, 'Raiganj 10 bed Hospital (RHC)', 'raiganj-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(17, 'Dahagram 10 bed Hospital', 'dahagram-10-bed-hospital', 1, NULL, NULL, 1, 1),
(18, 'Taltali 20 bed Hospital', 'taltali-20-bed-hospital', 1, NULL, NULL, 1, 1),
(19, 'Walankathi 20 bed Hospital', 'walankathi-20-bed-hospital', 1, NULL, NULL, 1, 1),
(20, 'South Char Aicha 20 bed Hospital', 'south-char-aicha-20-bed-hospital', 1, NULL, NULL, 1, 1),
(21, 'Kuakata 20 bed Hospital', 'kuakata-20-bed-hospital', 1, NULL, NULL, 1, 1),
(22, 'Kathaltoli 20 bed Hospital', 'kathaltoli-20-bed-hospital', 1, NULL, NULL, 1, 1),
(23, 'Bibirhat 20 bed Hospital', 'bibirhat-20-bed-hospital', 1, NULL, NULL, 1, 1),
(24, 'Haramia 20 bed Hospital', 'haramia-20-bed-hospital', 1, NULL, NULL, 1, 1),
(25, 'Sonaimuri 20 bed Hospital', 'sonaimuri-20-bed-hospital', 1, NULL, NULL, 1, 1),
(26, 'Mohichail 20 bed Hospital', 'mohichail-20-bed-hospital', 1, NULL, NULL, 1, 1),
(27, 'Bagmara 20 bed Hospital', 'bagmara-20-bed-hospital', 1, NULL, NULL, 1, 1),
(28, 'Donarchar 20 bed Hospital', 'donarchar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(29, 'Jodda 20 bed Hospital', 'jodda-20-bed-hospital', 1, NULL, NULL, 1, 1),
(30, 'Char Alexander 20 bed Hospital', 'char-alexander-20-bed-hospital', 1, NULL, NULL, 1, 1),
(31, 'Char Algi 20 bed Hospital', 'char-algi-20-bed-hospital', 1, NULL, NULL, 1, 1),
(32, 'Kreshnanagar 20 bed Hospital', 'kreshnanagar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(33, 'Jinjira 20 bed Hospital', 'jinjira-20-bed-hospital', 1, NULL, NULL, 1, 1),
(34, 'Aminbazar 20 bed Hospital', 'aminbazar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(35, 'Baspur 20 bed Hospital', 'baspur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(36, 'Kabirajpur 20 bed Hospital', 'kabirajpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(37, 'Monohargram 20 bed Hospital', 'monohargram-20-bed-hospital', 1, NULL, NULL, 1, 1),
(38, 'Fatullah 20 bed Hospital', 'fatullah-20-bed-hospital', 1, NULL, NULL, 1, 1),
(39, 'Siddirganj 20 bed Hospital', 'siddirganj-20-bed-hospital', 1, NULL, NULL, 1, 1),
(40, 'Tarabunia 20 bed Hospital', 'tarabunia-20-bed-hospital', 1, NULL, NULL, 1, 1),
(41, 'Kodalpur 20 bed Hospital', 'kodalpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(42, 'Birolpolita 20 bed Hospital', 'birolpolita-20-bed-hospital', 1, NULL, NULL, 1, 1),
(43, 'Binadpur 20 bed Hospital', 'binadpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(44, 'Charanchal 20 bed Hospital', 'charanchal-20-bed-hospital', 1, NULL, NULL, 1, 1),
(45, 'Santahar 20 bed Hospital', 'santahar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(46, 'Nandigram 20 bed Hospital', 'nandigram-20-bed-hospital', 1, NULL, NULL, 1, 1),
(47, 'Aliahat 20 bed Hospital', 'aliahat-20-bed-hospital', 1, NULL, NULL, 1, 1),
(48, 'Kaitak 20 bed Hospital', 'kaitak-20-bed-hospital', 1, NULL, NULL, 1, 1),
(49, 'Maddyanagar 20 bed Hospital', 'maddyanagar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(50, 'Bamna Upazila Health Complex, Barguna', 'bamna-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(51, 'Babuganj Upazila Health Complex, Barishal', 'babuganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(52, 'Bakerganj Upazila Health Complex, Barishal', 'bakerganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(53, 'Banaripara Upazila Health Complex, Barishal', 'banaripara-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(54, 'Hijla Upazila Health Complex, Barishal', 'hijla-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(55, 'Mehendiganj Upazila Health Complex, Barishal', 'mehendiganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(56, 'Wazirpur Upazila Health Complex, Barishal', 'wazirpur-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(57, 'Manpura Upazila Health Complex, Bhola', 'manpura-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(58, 'Tajumuddin Upazila Health Complex, Bhola', 'tajumuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(59, 'Kathalia Upazila Health Complex, Jhalokati', 'kathalia-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(60, 'Rajapur Upazila Health Complex, Jhalokati', 'rajapur-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(61, 'Bauphal Upazila Health Complex, Patuakhali', 'bauphal-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(62, 'Dashmina Upazila Health Complex, Patuakhali', 'dashmina-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(63, 'Dumki Upazila Health Complex, Patuakhali', 'dumki-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(64, 'Mirzaganj Upazila Health Complex, Patuakhali', 'mirzaganj-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(65, 'Rangabali Upazila Health Complex, Patuakhali', 'rangabali-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(66, 'Bhandaria Upazila Health Complex, Pirojpur', 'bhandaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(67, 'Indurkani Upazila Health Complex, Pirojpur', 'indurkani-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(68, 'Kawkhali Upazila Health Complex, Pirojpur', 'kawkhali-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(69, 'Nazirpur Upazila Health Complex, Pirojpur', 'nazirpur-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(70, 'Alikadam Upazila Health Complex, Bandarban', 'alikadam-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(71, 'Lama Upazila Health Complex, Bandarban', 'lama-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(72, 'Naikhongchari Upazila Health Complex, Bandarban', 'naikhongchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(73, 'Rowangchari Upazila Health Complex, Bandarban', 'rowangchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(74, 'Ruma Upazila Health Complex, Bandarban', 'ruma-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(75, 'Thanchi Upazila Health Complex, Bandarban', 'thanchi-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(76, 'Akhaura Upazila Health Complex, Brahmanbaria', 'akhaura-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(77, 'Ashugonj Upazila Health Complex, Brahmanbaria', 'ashugonj-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(78, 'Bijoynagar Upazila Health Complex, Brahmanbaria', 'bijoynagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(79, 'Bancharampur Upazila Health Complex, Brahmanbaria', 'bancharampur-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(80, 'Kashba Upazila Health Complex, Brahmanbaria', 'kashba-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(81, 'Nabinagar Upazila Health Complex, Brahmanbaria', 'nabinagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(82, 'Faridganj Upazila Health Complex, Chandpur', 'faridganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(83, 'Haimchar Upazila Health Complex, Chandpur', 'haimchar-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(84, 'Matlab(uttar) Upazila Health Complex, Chandpur', 'matlabuttar-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(85, 'Saharasthi Upazila Health Complex, Chandpur', 'saharasthi-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(86, 'Fatikchari Upazila Health Complex, Chattogram', 'fatikchari-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(87, 'Roujan Upazila Health Complex, Chattogram', 'roujan-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(88, 'Sandwip Upazila Health Complex, Chattogram', 'sandwip-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(89, 'Satkania Upazila Health Complex, Chattogram', 'satkania-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(90, 'Pekua Upazila Health Complex, Cox\'s Bazar', 'pekua-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(91, 'Ramu Upazila Health Complex, Cox\'s Bazar', 'ramu-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(92, 'Teknaf Upazila Health Complex, Cox\'s Bazar', 'teknaf-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(93, 'Ukhia Upazila Health Complex, Cox\'s Bazar', 'ukhia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(94, 'Barura Upazila Health Complex, Cumilla', 'barura-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(95, 'Brahmmanpara Upazila Health Complex, Cumilla', 'brahmmanpara-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(96, 'Burichong Upazila Health Complex, Cumilla', 'burichong-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(97, 'Chandina Upazila Health Complex, Cumilla', 'chandina-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(98, 'Comilla Sadar Daxin Upazila Health Complex, Cumilla', 'comilla-sadar-daxin-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(99, 'Daudkandi Upazila Health Complex, Cumilla', 'daudkandi-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(100, 'Laksham Upazila Health Complex, Cumilla', 'laksham-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(101, 'Monoharganj Upazila Health Complex, Cumilla', 'monoharganj-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(102, 'Meghna Upazila Health Complex, Cumilla', 'meghna-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(103, 'Titas Upazila Health Complex, Cumilla', 'titas-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(104, 'Daganbhuiya Upazila Health Complex, Feni', 'daganbhuiya-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(105, 'Fulgazi Upazila Health Complex, Feni', 'fulgazi-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(106, 'Sonagazi Upazila Health Complex, Feni', 'sonagazi-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(107, 'Dighinala Upazila Health Complex, Khagrachhari', 'dighinala-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(108, 'Lakshmichari Upazila Health Complex, Khagrachhari', 'lakshmichari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(109, 'Mohalchari Upazila Health Complex, Khagrachhari', 'mohalchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(110, 'Manikchari Upazila Health Complex, Khagrachhari', 'manikchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(111, 'Matiranga Upazila Health Complex, Khagrachhari', 'matiranga-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(112, 'Panchari Upazila Health Complex, Khagrachhari', 'panchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(113, 'Ramgarh Upazila Health Complex, Khagrachhari', 'ramgarh-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(114, 'Kamolnagar Upazila Health Complex, Lakshmipur', 'kamolnagar-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(115, 'Ramganj Upazila Health Complex, Lakshmipur', 'ramganj-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(116, 'Ramgati Upazila Health Complex, Lakshmipur', 'ramgati-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(117, 'Kabirhat Upazila Health Complex, Noakhali', 'kabirhat-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(118, 'Sonaimuri Upazila Health Complex, Noakhali', 'sonaimuri-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(119, 'Baghaichari Upazila Health Complex, Rangamati', 'baghaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(120, 'Barkal Upazila Health Complex, Rangamati', 'barkal-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(121, 'Belaichari Upazila Health Complex, Rangamati', 'belaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(122, 'Juraichari Upazila Health Complex, Rangamati', 'juraichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(123, 'Kaptai Upazila Health Complex, Rangamati', 'kaptai-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(124, 'Kawkhali Upazila Health Complex, Rangamati', 'kawkhali-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(125, 'Langadu Upazila Health Complex, Rangamati', 'langadu-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(126, 'Naniarchar Upazila Health Complex, Rangamati', 'naniarchar-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(127, 'Rajasthali Upazila Health Complex, Rangamati', 'rajasthali-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(128, 'Keraniganj Upazila Health Complex, Dhaka', 'keraniganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(129, 'Alfadanga Upazila Health Complex, Faridpur', 'alfadanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(130, 'Charbhadrason Upazila Health Complex, Faridpur', 'charbhadrason-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(131, 'Modhukhali Upazila Health Complex, Faridpur', 'modhukhali-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(132, 'Sadarpur Upazila Health Complex, Faridpur', 'sadarpur-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(133, 'Saltha Upazila Health Complex, Faridpur', 'saltha-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(134, 'Kaliakair Upazila Health Complex, Gazipur', 'kaliakair-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(135, 'Sreepur Upazila Health Complex, Gazipur', 'sreepur-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(136, 'Kotwalipara Upazila Health Complex, Gopalganj', 'kotwalipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(137, 'Mukshedpur Upazila Health Complex, Gopalganj', 'mukshedpur-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(138, 'Tungipara Upazila Health Complex, Gopalganj', 'tungipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(139, 'Austagram Upazila Health Complex, Kishorgonj', 'austagram-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(140, 'Bajitpur Upazila Health Complex, Kishorgonj', 'bajitpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(141, 'Hossainpur Upazila Health Complex, Kishorgonj', 'hossainpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(142, 'Itna Upazila Health Complex, Kishorgonj', 'itna-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(143, 'Katiadi Upazila Health Complex, Kishorgonj', 'katiadi-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(144, 'Kuliarchar Upazila Health Complex, Kishorgonj', 'kuliarchar-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(145, 'Mithamoin Upazila Health Complex, Kishorgonj', 'mithamoin-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(146, 'Nikli Upazila Health Complex, Kishorgonj', 'nikli-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(147, 'Pakundia Upazila Health Complex, Kishorgonj', 'pakundia-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(148, 'Kalkini Upazila Health Complex, Madaripur', 'kalkini-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(149, 'Rajoir Upazila Health Complex, Madaripur', 'rajoir-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(150, 'Daulatpur Upazila Health Complex, Manikganj', 'daulatpur-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(151, 'Ghior Upazila Health Complex, Manikganj', 'ghior-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(152, 'Harirampur Upazila Health Complex, Manikganj', 'harirampur-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(153, 'Saturia Upazila Health Complex, Manikganj', 'saturia-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(154, 'Shibalaya Upazila Health Complex, Manikganj', 'shibalaya-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(155, 'Singair Upazila Health Complex, Manikganj', 'singair-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(156, 'Araihazar Upazila Health Complex, Narayanganj', 'araihazar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(157, 'Bandar Upazila Health Complex, Narayanganj', 'bandar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(158, 'Rupganj Upazila Health Complex, Narayanganj', 'rupganj-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(159, 'Sonargaon Upazila Health Complex, Narayanganj', 'sonargaon-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(160, 'Belabo Upazila Health Complex, Narsingdi', 'belabo-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(161, 'Palash Upazila Health Complex, Narsingdi', 'palash-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(162, 'Raipura Upazila Health Complex, Narsingdi', 'raipura-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(163, 'Shibpur Upazila Health Complex, Narsingdi', 'shibpur-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(164, 'Baliakandi Upazila Health Complex, Rajbari', 'baliakandi-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(165, 'Kalukhali Upazila Health Complex, Rajbari', 'kalukhali-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(166, 'Bhedarganj Upazila Health Complex, Shariatpur', 'bhedarganj-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(167, 'Damudya Upazila Health Complex, Shariatpur', 'damudya-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(168, 'Goshairhat Upazila Health Complex, Shariatpur', 'goshairhat-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(169, 'Naria Upazila Health Complex, Shariatpur', 'naria-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(170, 'Zanjira Upazila Health Complex, Shariatpur', 'zanjira-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(171, 'Bhuapur Upazila Health Complex, Tangail', 'bhuapur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(172, 'Delduar Upazila Health Complex, Tangail', 'delduar-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(173, 'Gopalpur Upazila Health Complex, Tangail', 'gopalpur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(174, 'Mirzapur Upazila Health Complex, Tangail', 'mirzapur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(175, 'Nagarpur Upazila Health Complex, Tangail', 'nagarpur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(176, 'Morrelganj Upazila Health Complex, Bagerhat', 'morrelganj-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(177, 'Sarankhola Upazila Health Complex, Bagerhat', 'sarankhola-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(178, 'Alamdanga Upazila Health Complex, Chuadanga', 'alamdanga-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(179, 'Damurhuda Upazila Health Complex, Chuadanga', 'damurhuda-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(180, 'Jibannagar Upazila Health Complex, Chuadanga', 'jibannagar-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(181, 'Bagherpara Upazila Health Complex, Jashore', 'bagherpara-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(182, 'Jhikargacha Upazila Health Complex, Jashore', 'jhikargacha-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(183, 'Monirampur Upazila Health Complex, Jashore', 'monirampur-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(184, 'Sarsa Upazila Health Complex, Jashore', 'sarsa-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(185, 'Shailkupa Upazila Health Complex, Jhenaidah', 'shailkupa-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(186, 'Batiaghata Upazila Health Complex, Khulna', 'batiaghata-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(187, 'Dighalia Upazila Health Complex, Khulna', 'dighalia-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(188, 'Dumuria Upazila Health Complex, Khulna', 'dumuria-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(189, 'Koyra Upazila Health Complex, Khulna', 'koyra-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(190, 'Paikgacha Upazila Health Complex, Khulna', 'paikgacha-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(191, 'Rupsha Upazila Health Complex, Khulna', 'rupsha-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(192, 'Terokhada Upazila Health Complex, Khulna', 'terokhada-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(193, 'Khoksha Upazila Health Complex, Kushtia', 'khoksha-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(194, 'Kumarkhali Upazila Health Complex, Kushtia', 'kumarkhali-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(195, 'Mohammadpur Upazila Health Complex, Magura', 'mohammadpur-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(196, 'Shalikha Upazila Health Complex, Magura', 'shalikha-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(197, 'Sreepur Upazila Health Complex, Magura', 'sreepur-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(198, 'Mujibnagar Upazila Health Complex, Meherpur', 'mujibnagar-upazila-health-complex-meherpur', 1, NULL, NULL, 1, 1),
(199, 'Lohagara Upazila Health Complex, Narail', 'lohagara-upazila-health-complex-narail', 1, NULL, NULL, 1, 1),
(200, 'Assasuni Upazila Health Complex, Satkhira', 'assasuni-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(201, 'Debhata Upazila Health Complex, Satkhira', 'debhata-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(202, 'Kaliganj Upazila Health Complex, Satkhira', 'kaliganj-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(203, 'Bakshiganj Upazila Health Complex, Jamalpur', 'bakshiganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(204, 'Dewanganj Upazila Health Complex, Jamalpur', 'dewanganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(205, 'Madarganj Upazila Health Complex, Jamalpur', 'madarganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(206, 'Bhaluka Upazila Health Complex, Mymensingh', 'bhaluka-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(207, 'Dhubaura Upazila Health Complex, Mymensingh', 'dhubaura-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(208, 'Fulbaria Upazila Health Complex, Mymensingh', 'fulbaria-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(209, 'Gouripur Upazila Health Complex, Mymensingh', 'gouripur-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(210, 'Haluaghat Upazila Health Complex, Mymensingh', 'haluaghat-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(211, 'Muktagacha Upazila Health Complex, Mymensingh', 'muktagacha-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(212, 'Atpara Upazila Health Complex, Netrakona', 'atpara-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(213, 'Barhatta Upazila Health Complex, Netrakona', 'barhatta-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(214, 'Durgapur Upazila Health Complex, Netrakona', 'durgapur-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(215, 'Khaliajuri Upazila Health Complex, Netrakona', 'khaliajuri-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(216, 'Jhenaigati Upazila Health Complex, Sherpur', 'jhenaigati-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(217, 'Nakhla Upazila Health Complex, Sherpur', 'nakhla-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(218, 'Nalitabari Upazila Health Complex, Sherpur', 'nalitabari-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(219, 'Sribordi Upazila health Complex, Sherpur', 'sribordi-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(220, 'Dhupchachia Upazila Health Complex, Bogura', 'dhupchachia-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(221, 'Nandigram Upazila Health Complex, Bogura', 'nandigram-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(222, 'Shajahanpur Upazila Health Complex, Bogura', 'shajahanpur-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(223, 'Sherpur Upazila Health Complex, Bogura', 'sherpur-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(224, 'Bholahat Upazila Health Complex, Chapai Nawabganj', 'bholahat-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(225, 'Gomastapur Upazila Health Complex, Chapai Nawabganj', 'gomastapur-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(226, 'Nachol Upazila Health Complex, Chapai Nawabganj', 'nachol-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(227, 'Khetlal Upazila Health Complex, Joypurhat', 'khetlal-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(228, 'Panchbibi Upazila Health Complex, Joypurhat', 'panchbibi-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(229, 'Atrai Upazila Health Complex, Naogaon', 'atrai-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(230, 'Niamatpur Upazila Health Complex, Naogaon', 'niamatpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(231, 'Porsha Upazila Health Complex, Naogaon', 'porsha-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(232, 'Raninagar Upazila Health Complex, Naogaon', 'raninagar-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(233, 'Bagatipara Upazila Health Complex, Natore', 'bagatipara-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(234, 'Baraigram Upazila Health Complex, Natore', 'baraigram-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(235, 'Gurudashpur Upazila Health Complex, Natore', 'gurudashpur-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(236, 'Singra Upazila Health Complex, Natore', 'singra-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(237, 'Atgharia Upazila Health Complex, Pabna', 'atgharia-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(238, 'Bera Upazila Health Complex, Pabna', 'bera-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(239, 'Bhangura Upazila Health Complex, Pabna', 'bhangura-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(240, 'Iswardi Upazila Health Complex, Pabna', 'iswardi-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(241, 'Santhia Upazila Health Complex, Pabna', 'santhia-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(242, 'Bagha Upazila Health Complex, Rajshahi', 'bagha-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(243, 'Bagmara Upazila Health Complex, Rajshahi', 'bagmara-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(244, 'Godagari Upazila Health Complex, Rajshahi', 'godagari-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(245, 'Mohanpur Upazila Health Complex, Rajshahi', 'mohanpur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(246, 'Paba Upazila Health Complex, Rajshahi', 'paba-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(247, 'Belkuchi Upazila Health Complex, Sirajganj', 'belkuchi-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(248, 'Chowhali Upazila Health Complex, Sirajganj', 'chowhali-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(249, 'Kamarkhanda Upazila Health Complex, Sirajganj', 'kamarkhanda-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(250, 'Kazipur Upazila Health Complex, Sirajganj', 'kazipur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(251, 'Raiganj Upazila Health Complex, Sirajganj', 'raiganj-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(252, 'Shahzadpur Upazila Health Complex, Sirajganj', 'shahzadpur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(253, 'Tarash Upazila Health Complex, Sirajganj', 'tarash-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(254, 'Ullapara Upazila Health Complex, Sirajganj', 'ullapara-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(255, 'Birol Upazila Health Complex, Dinajpur', 'birol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(256, 'Birampur Upazila Health Complex, Dinajpur', 'birampur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(257, 'Birganj Upazila Health Complex, Dinajpur', 'birganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(258, 'Chirirbandar Upazila Health Complex, Dinajpur', 'chirirbandar-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(259, 'Fulbari Upazila Health Complex, Dinajpur', 'fulbari-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(260, 'Ghoraghat Upazila Health Complex, Dinajpur', 'ghoraghat-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(261, 'Hakimpur Upazila Health Complex, Dinajpur', 'hakimpur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(262, 'Kaharol Upazila Health Complex, Dinajpur', 'kaharol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(263, 'Khansama Upazila Health Complex, Dinajpur', 'khansama-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(264, 'Nawabganj Upazila Health Complex, Dinajpur', 'nawabganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(265, 'Fulchari Upazila Health Complex, Gaibandha', 'fulchari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(266, 'Palashbari Upazila Health Complex, Gaibandha', 'palashbari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(267, 'Sadullapur Upazila Health Complex, Gaibandha', 'sadullapur-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(268, 'Shaghatta Upazila Health Complex, Gaibandha', 'shaghatta-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(269, 'Sundarganj Upazila Health Complex, Gaibandha', 'sundarganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(270, 'Bhurungamari Upazila Health Complex, Kurigram', 'bhurungamari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(271, 'Nageswari Upazila Health Complex, Kurigram', 'nageswari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(272, 'Fulbari Upazila Health Complex, Kurigram', 'fulbari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(273, 'Rajarhat Upazila Health Complex, Kurigram', 'rajarhat-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(274, 'Rajibpur Upazila Health Complex, Kurigram', 'rajibpur-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(275, 'Rowmari Upazila Health Complex, Kurigram', 'rowmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(276, 'Aditmari Upazila Health Complex, Lalmonirhat', 'aditmari-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(277, 'Hatibandha Upazila Health Complex, Lalmonirhat', 'hatibandha-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(278, 'Patgram Upazila Health Complex, Lalmonirhat', 'patgram-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(279, 'Jaldhaka Upazila Health Complex, Nilphamari', 'jaldhaka-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(280, 'Kishoreganj Upazila Health Complex, Nilphamari', 'kishoreganj-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(281, 'Saidpur Upazila Health Complex, Nilphamari', 'saidpur-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(282, 'Atwari Upazila Health Complex, Panchagarh', 'atwari-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(283, 'Badarganj Upazila Health Complex, Rangpur', 'badarganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(284, 'Kownia Upazila Health Complex, Rangpur', 'kownia-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(285, 'Pirgacha Upazila Health Complex, Rangpur', 'pirgacha-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(286, 'Taraganj Upazila Health Complex, Rangpur', 'taraganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(287, 'Pirganj Upazila Health Complex, Thakurgaon', 'pirganj-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(288, 'Ajmiriganj Upazila Health Complex, Habiganj', 'ajmiriganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(289, 'Bahubal Upazila Health Complex, Habiganj', 'bahubal-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(290, 'Baniachong Upazila Health Complex, Habiganj', 'baniachong-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(291, 'Chunarughat Upazila Health Complex, Hobigonj., Habiganj', 'chunarughat-upazila-health-complex-hobigonj-habiganj', 1, NULL, NULL, 1, 1),
(292, 'Lakhai Upazila Health Complex, Habiganj', 'lakhai-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(293, 'Nabiganj Upazila Health Complex, Habiganj', 'nabiganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(294, 'Barlekha Upazila Health Complex, Maulvibazar', 'barlekha-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(295, 'Juri Upazila Health Complex, Maulvibazar', 'juri-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(296, 'Kamalganj Upazila Health Complex, Maulvibazar', 'kamalganj-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(297, 'Rajnagar Upazila Health Complex, Maulvibazar', 'rajnagar-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(298, 'Sreemangal Upazila Health Complex, Maulvibazar', 'sreemangal-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(299, 'Biswambarpur Upazila Health Complex, Sunamganj', 'biswambarpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(300, 'Chhatak Upazila Health Complex, Sunamganj', 'chhatak-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(301, 'Dakshin Sunamganj Upazila Health Complex, Sunamganj', 'dakshin-sunamganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(302, 'Derai Upazila Health Complex, Sunamganj', 'derai-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(303, 'Dharmapasha Upazila Health Complex, Sunamganj', 'dharmapasha-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(304, 'Doarabazar Upazila Health Complex, Sunamganj', 'doarabazar-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(305, 'Jamalganj Upazila Health Complex, Sunamganj', 'jamalganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(306, 'Sulla Upazila Health Complex, Sunamganj', 'sulla-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(307, 'Taherpur Upazila Health Complex, Sunamganj', 'taherpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(308, 'Balaganj Upazila Health Complex, Sylhet', 'balaganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(309, 'Bishwanath Upazila Health Complex, Sylhet', 'bishwanath-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(310, 'Companyganj Upazila Health Complex, Sylhet', 'companyganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(311, 'Dakhin Surma Upazila Health Complex, Sylhet', 'dakhin-surma-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(312, 'Fenchuganj Upazila Health Complex, Sylhet', 'fenchuganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(313, 'Jaintapur Upazila Health Complex, Sylhet', 'jaintapur-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(314, 'Kanaighat Upazila Health Complex, Sylhet', 'kanaighat-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(315, 'Zokiganj Upazila Health Complex, Sylhet', 'zokiganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(316, 'Amtali Upazila Health Complex, Barguna', 'amtali-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(317, 'Betagi Upazila Health Complex, Barguna', 'betagi-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(318, 'Patharghata Upazila Health Complex, Barguna', 'patharghata-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(319, 'Agailjhara Upazila Health Complex, Barishal', 'agailjhara-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(320, 'Gournadi Upazila Health Complex, Barishal', 'gournadi-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(321, 'Muladi Upazila Health Complex, Barishal', 'muladi-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(322, 'Borhanuddin Upazila Health Complex, Bhola', 'borhanuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(323, 'Charfession Upazila Health Complex, Bhola', 'charfession-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(324, 'Daulatkhan Upazila Health Complex, Bhola', 'daulatkhan-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(325, 'Lalmohan Upazila Health Complex, Bhola', 'lalmohan-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(326, 'Nalchithi Upazila Health Complex, Jhalokati', 'nalchithi-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(327, 'Galachipa Upazila Health Complex, Patuakhali', 'galachipa-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(328, 'Kalapara Upazila Health Complex, Patuakhali', 'kalapara-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(329, 'Mathbaria Upazila Health Complex, Pirojpur', 'mathbaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(330, 'Nesarabad Upazila Health Complex, Pirojpur', 'nesarabad-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(331, 'Nasirnagar Upazila Health Complex, Brahmanbaria', 'nasirnagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(332, 'Sarail Upazila Health Complex, Brahmanbaria', 'sarail-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(333, 'Haziganj Upazila Health Complex, Chandpur', 'haziganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(334, 'Kachua Upazila Health Complex, Chandpur', 'kachua-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(335, 'Matlab(daxin) Upazila Health Complex, Chandpur', 'matlabdaxin-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(336, 'Anwara Upazila Health Complex, Chattogram', 'anwara-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(337, 'Banshkhali Upazila Health Complex, Chattogram', 'banshkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(338, 'Boalkhali Upazila Health Complex, Chattogram', 'boalkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(339, 'Chandanaish Upazila Health Complex, Chattogram', 'chandanaish-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(340, 'Hathazari Upazila Health Complex, Chattogram', 'hathazari-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(341, 'Lohagara Upazila Health Complex, Chattogram', 'lohagara-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(342, 'Mirarsarai Upazila Health Complex, Chattogram', 'mirarsarai-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(343, 'Patiya Upazila Health Complex, Chattogram', 'patiya-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(344, 'Rangunia Upazila Health Complex, Chattogram', 'rangunia-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(345, 'Sitakunda Upazila Health Complex, Chattogram', 'sitakunda-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(346, 'Chakaria Upazila Health Complex, Cox\'s Bazar', 'chakaria-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(347, 'Kutubdia Upazila Health Complex, Cox\'s Bazar', 'kutubdia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(348, 'Moheshkhali Upazila Health Complex, Cox\'s Bazar', 'moheshkhali-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(349, 'Chaddagram Upazila Health Complex, Cumilla', 'chaddagram-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(350, 'Debidwar Upazila Health Complex, Cumilla', 'debidwar-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(351, 'Homna Upazila Health Complex, Cumilla', 'homna-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(352, 'Langolkot Upazila Health Complex, Cumilla', 'langolkot-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(353, 'Muradnagar Upazila Health Complex, Cumilla', 'muradnagar-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(354, 'Chhagalnaya Upazila Health Complex, Feni', 'chhagalnaya-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(355, 'Parsuram Upazila Health Complex, Feni', 'parsuram-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(356, 'Raipur Upazila Health Complex, Lakshmipur', 'raipur-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(357, 'Begumganj Upazila Health Complex, Noakhali', 'begumganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(358, 'Chatkhil Upazila Health Complex, Noakhali', 'chatkhil-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(359, 'Companiganj Upazila Health Complex, Noakhali', 'companiganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(360, 'Hatiya Upazila Health Complex, Noakhali', 'hatiya-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(361, 'Senbag Upazila Health Complex, Noakhali', 'senbag-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(362, 'Subarnachar Upazila Health Complex, Noakhali', 'subarnachar-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(363, 'Dhamrai Upazila Health Complex, Dhaka', 'dhamrai-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(364, 'Dohar Upazila Health Complex, Dhaka', 'dohar-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(365, 'Nawabganj Upazila Health Complex, Dhaka', 'nawabganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(366, 'Savar Upazila Health Complex, Dhaka', 'savar-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(367, 'Bhanga Upazila Health Complex, Faridpur', 'bhanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(368, 'Boalmari Upazila Health Complex, Faridpur', 'boalmari-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(369, 'Nagarkanda Upazila Health Complex, Faridpur', 'nagarkanda-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(370, 'Kaliganj Upazila Health Complex, Gazipur', 'kaliganj-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(371, 'Kapasia Upazila Health Complex, Gazipur', 'kapasia-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(372, 'Kashiani Upazila Health Complex, Gopalganj', 'kashiani-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(373, 'Bhairab Upazila Health Complex, Kishorgonj', 'bhairab-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(374, 'Karimganj Upazila Health Complex, Kishorgonj', 'karimganj-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(375, 'Tarail Upazila Health Complex, Kishorgonj', 'tarail-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(376, 'Shibchar Upazila Health Complex, Madaripur', 'shibchar-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(377, 'Gazaria Upazila Health Complex, Munshiganj', 'gazaria-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(378, 'Louhajang Upazila Health Complex, Munshiganj', 'louhajang-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(379, 'Serajdikhan Upazila Health Complex, Munshiganj', 'serajdikhan-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(380, 'Sreenagar Upazila Health Complex, Munshiganj', 'sreenagar-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(381, 'Tungibari Upazila Health Complex, Munshiganj', 'tungibari-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(382, 'Monohardi Upazila Health Complex, Narsingdi', 'monohardi-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(383, 'Goalanda Upazila Health Complex, Rajbari', 'goalanda-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(384, 'Pangsha Upazila Health Complex, Rajbari', 'pangsha-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(385, 'Basail Upazila Health Complex, Tangail', 'basail-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(386, 'Dhanbari Upazila Health Complex, Tangail', 'dhanbari-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(387, 'Ghatail Upazila Health Complex, Tangail', 'ghatail-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(388, 'Kalihati Upazila Health Complex, Tangail', 'kalihati-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(389, 'Modhupur Upazila Health Complex, Tangail', 'modhupur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(390, 'Sakhipur Upazila Health Complex, Tangail', 'sakhipur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(391, 'Chitalmari Upazila Health Complex, Bagerhat', 'chitalmari-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(392, 'Fakirhat Upazila Health Complex, Bagerhat', 'fakirhat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(393, 'Kachua Upazila Health Complex, Bagerhat', 'kachua-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(394, 'Mollahat Upazila Health Complex, Bagerhat', 'mollahat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(395, 'Mongla Upazila Health Complex, Bagerhat', 'mongla-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(396, 'Rampal Upazila Health Complex, Bagerhat', 'rampal-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(397, 'Abhoynagar Upazila Health Complex, Jashore', 'abhoynagar-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(398, 'Chowgacha Upazila Health Complex, Jashore', 'chowgacha-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(399, 'Keshabpur Upazila Health Complex, Jashore', 'keshabpur-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(400, 'Harinakunda Upazila Health Complex, Jhenaidah', 'harinakunda-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(401, 'Kaliganj Upazila Health Complex, Jhenaidah', 'kaliganj-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(402, 'Kotchandpur Upazila Health Complex, Jhenaidah', 'kotchandpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(403, 'Moheshpur Upazila Health Complex, Jhenaidah', 'moheshpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(404, 'Dacope Upazila Health Complex, Khulna', 'dacope-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(405, 'Fultala Upazila Health Complex, Khulna', 'fultala-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(406, 'Bheramara Upazila Health Complex, Kushtia', 'bheramara-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(407, 'Daulatpur Upazila Health Complex, Kushtia', 'daulatpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(408, 'Mirpur Upazila Health Complex, Kushtia', 'mirpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(409, 'Gangni Upazila Health Complex, Meherpur', 'gangni-upazila-health-complex-meherpur', 1, NULL, NULL, 1, 1),
(410, 'Kalia Upazila Health Complex, Narail', 'kalia-upazila-health-complex-narail', 1, NULL, NULL, 1, 1),
(411, 'Kalaroa Upazila Health Complex, Satkhira', 'kalaroa-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(412, 'Shyamnagar Upazila Health Complex, Satkhira', 'shyamnagar-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(413, 'Tala Upazila Health Complex, Satkhira', 'tala-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(414, 'Islampur Upazila Health Complex, Jamalpur', 'islampur-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(415, 'Melandaha Upazila Health Complex, Jamalpur', 'melandaha-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(416, 'Sarishabari Upazila Health Complex, Jamalpur', 'sarishabari-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(417, 'Gofargaon Upazila Health Complex, Mymensingh', 'gofargaon-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(418, 'Iswarganj Upazila Health Complex, Mymensingh', 'iswarganj-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(419, 'Nandail Upazila Health Complex, Mymensingh', 'nandail-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(420, 'Phulpur Upazila Health Complex, Mymensingh, Mymensingh', 'phulpur-upazila-health-complex-mymensingh-mymensingh', 1, NULL, NULL, 1, 1),
(421, 'Trisal Upazila Health Complex, Mymensingh', 'trisal-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(422, 'Kalmakanda Upazila Health Complex, Netrakona', 'kalmakanda-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(423, 'Kendua Upazila Health Complex, Netrakona', 'kendua-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(424, 'Madan Upazila Health Complex, Netrakona', 'madan-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(425, 'Mohanganj Upazila  Health  Complex, Netrakona', 'mohanganj-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(426, 'Purbadhala Upazila Health Complex, Netrakona', 'purbadhala-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(427, 'Adamdighi Upazila Health Complex, Bogura', 'adamdighi-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(428, 'Dhunat Upazila Health Complex, Bogura', 'dhunat-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(429, 'Gabtali Upazila Health Complex, Bogura', 'gabtali-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(430, 'Kahaloo Upazila Health Complex, Bogura', 'kahaloo-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(431, 'Sariakandi Upazila Health Complex, Bogura', 'sariakandi-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(432, 'Shibganj Upazila Health Complex, Bogra., Bogura', 'shibganj-upazila-health-complex-bogra-bogura', 1, NULL, NULL, 1, 1),
(433, 'Sonatala Upazila Health Complex, Bogura', 'sonatala-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(434, 'Shibganj Upazila Health Complex, Chapai Nawabganj', 'shibganj-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(435, 'Akkelpur Upazila Health Complex, Joypurhat', 'akkelpur-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(436, 'Kalai Upazila Health Complex, Joypurhat', 'kalai-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(437, 'Badalgachi Upazila Health Complex, Naogaon', 'badalgachi-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(438, 'Dhamairhat Upazila Health Complex, Naogaon', 'dhamairhat-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(439, 'Mohadevpur Upazila Health Complex, Naogaon', 'mohadevpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(440, 'Manda Upazila Health Complex, Naogaon', 'manda-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(441, 'Patnitala Upazila Health Complex, Naogaon', 'patnitala-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(442, 'Sapahar Upazila Health Complex, Naogaon', 'sapahar-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1);
INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(443, 'Lalpur Upazila Health Complex, Natore', 'lalpur-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(444, 'Chatmohar Upazila Health Complex, Pabna', 'chatmohar-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(445, 'Faridpur Upazila Health Complex, Pabna', 'faridpur-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(446, 'Sujanagar Upazila Health Complex, Pabna', 'sujanagar-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(447, 'Charghat Upazila Health Complex, Rajshahi', 'charghat-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(448, 'Durgapur Upazila Health Complex, Rajshahi', 'durgapur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(449, 'Puthia Upazila Health Complex, Rajshahi', 'puthia-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(450, 'Tanore Upazila Health Complex, Rajshahi', 'tanore-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(451, 'Bochaganj Upazila Health Complex, Dinajpur', 'bochaganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(452, 'Parbatipur Upazila Health Complex, Dinajpur', 'parbatipur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(453, 'Gobindaganj Upazila Health Complex, Gaibandha', 'gobindaganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(454, 'Chilmari Upazila Health Complex, Kurigram', 'chilmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(455, 'Ulipur Upazila Health Complex, Kurigram', 'ulipur-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(456, 'Kaliganj Upazila Health Complex, Lalmonirhat', 'kaliganj-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(457, 'Dimla Upazila Health Complex, Nilphamari', 'dimla-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(458, 'Domar Upazila Health Complex, Nilphamari', 'domar-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(459, 'Boda Upazila Health Complex, Panchagarh', 'boda-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(460, 'Debiganj Upazila Health Complex, Panchagarh', 'debiganj-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(461, 'Tetulia Upazila Health Complex, Panchagarh', 'tetulia-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(462, 'Gangachara Upazila Health Complex, Rangpur', 'gangachara-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(463, 'Mithapukur Upazila Health Complex, Rangpur', 'mithapukur-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(464, 'Pirganj Upazila Health Complex, Rangpur', 'pirganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(465, 'Baliadangi Upazila Health Complex, Thakurgaon', 'baliadangi-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(466, 'Haripur Upazila Health Complex, Thakurgaon', 'haripur-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(467, 'Ranisankhail Upazila Health Complex, Thakurgaon', 'ranisankhail-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(468, 'Madhabpur Upazila Health Complex, Habiganj', 'madhabpur-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(469, 'Kulaura Upazila Health Complex, Maulvibazar', 'kulaura-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(470, 'Jagannathpur Upazila Health Complex, Sunamganj', 'jagannathpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(471, 'Beanibazar Upazila Health Complex, Sylhet', 'beanibazar-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(472, 'Golapganj Upazila Health Complex, Sylhet', 'golapganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(473, 'Gowainghat Upazila Health Complex, Sylhet', 'gowainghat-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(474, 'Barguna District Hospital', 'barguna-district-hospital', 1, NULL, NULL, 1, 1),
(475, 'Barishal General Hospital', 'barishal-general-hospital', 1, NULL, NULL, 1, 1),
(476, 'Bhola District Hospital', 'bhola-district-hospital', 1, NULL, NULL, 1, 1),
(477, 'Jhalokathi District Hospital', 'jhalokathi-district-hospital', 1, NULL, NULL, 1, 1),
(478, 'Pirojpur District Hospital', 'pirojpur-district-hospital', 1, NULL, NULL, 1, 1),
(479, 'Bandarban District Hospital', 'bandarban-district-hospital', 1, NULL, NULL, 1, 1),
(480, 'Comilla General Hospital', 'comilla-general-hospital', 1, NULL, NULL, 1, 1),
(481, 'Khagrachari District Hospital', 'khagrachari-district-hospital', 1, NULL, NULL, 1, 1),
(482, 'Lakshmipur District Hospital', 'lakshmipur-district-hospital', 1, NULL, NULL, 1, 1),
(483, 'Rangamati General Hospital', 'rangamati-general-hospital', 1, NULL, NULL, 1, 1),
(484, 'Faridpur General Hospital', 'faridpur-general-hospital', 1, NULL, NULL, 1, 1),
(485, 'Madaripur District Hospital', 'madaripur-district-hospital', 1, NULL, NULL, 1, 1),
(486, 'Narayanganj General (Victoria) Hospital', 'narayanganj-general-victoria-hospital', 1, NULL, NULL, 1, 1),
(487, 'Narsingdi District Hospital', 'narsingdi-district-hospital', 1, NULL, NULL, 1, 1),
(488, 'Rajbari District Hospital', 'rajbari-district-hospital', 1, NULL, NULL, 1, 1),
(489, 'Shariatpur District Hospital', 'shariatpur-district-hospital', 1, NULL, NULL, 1, 1),
(490, 'Bagerhat District Hospital', 'bagerhat-district-hospital', 1, NULL, NULL, 1, 1),
(491, 'Chuadanga District Hospital', 'chuadanga-district-hospital', 1, NULL, NULL, 1, 1),
(492, 'Jhenaidah District Hospital', 'jhenaidah-district-hospital', 1, NULL, NULL, 1, 1),
(493, 'Narail District Hospital', 'narail-district-hospital', 1, NULL, NULL, 1, 1),
(494, 'Satkhira District Hospital', 'satkhira-district-hospital', 1, NULL, NULL, 1, 1),
(495, 'Netrokona District Hospital', 'netrokona-district-hospital', 1, NULL, NULL, 1, 1),
(496, 'Sherpur District Hospital', 'sherpur-district-hospital', 1, NULL, NULL, 1, 1),
(497, 'Chapai Nababganj District Hospital', 'chapai-nababganj-district-hospital', 1, NULL, NULL, 1, 1),
(498, 'Naogaon District Hospital', 'naogaon-district-hospital', 1, NULL, NULL, 1, 1),
(499, 'Natore District Hospital', 'natore-district-hospital', 1, NULL, NULL, 1, 1),
(500, 'Lalmonirhat District Hospital', 'lalmonirhat-district-hospital', 1, NULL, NULL, 1, 1),
(501, 'Nilphamari District Hospital', 'nilphamari-district-hospital', 1, NULL, NULL, 1, 1),
(502, 'Panchagarh District Hospital', 'panchagarh-district-hospital', 1, NULL, NULL, 1, 1),
(503, 'Thakurgaon District Hospital', 'thakurgaon-district-hospital', 1, NULL, NULL, 1, 1),
(504, 'Sylhet Shahid Shamsuddin Ahmed District Hospita', 'sylhet-shahid-shamsuddin-ahmed-district-hospita', 1, NULL, NULL, 1, 1),
(505, 'Joypurhat District Hospital', 'joypurhat-district-hospital', 1, NULL, NULL, 1, 1),
(506, 'Gaibandha 200 bed Hospital', 'gaibandha-200-bed-hospital', 1, NULL, NULL, 1, 1),
(507, 'Patuakhali 250 bed Sadar Hospital', 'patuakhali-250-bed-sadar-hospital', 1, NULL, NULL, 1, 1),
(508, 'Brahmanbaria 250 Bed District Sadar Hospital', 'brahmanbaria-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(509, 'Chandpur 250 Bed General Hospital', 'chandpur-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(510, 'Chittagong 250 Bed General Hospital', 'chittagong-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(511, 'Cox\'s Bazar 250 Bed District Sadar Hospital', 'coxs-bazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(512, 'Feni 250 Bed District Sadar Hospital', 'feni-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(513, 'Noakhali 250 Bed General Hospital', 'noakhali-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(514, 'Gopalganj 250 bed General Hospital', 'gopalganj-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(515, 'Kishoreganj 250 Bed District Sadar Hospital', 'kishoreganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(516, 'Manikganj 250 Bed District Hospital', 'manikganj-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(517, 'Munshiganj District Hospital', 'munshiganj-district-hospital', 1, NULL, NULL, 1, 1),
(518, 'Tangail 250 Bed District Hospital', 'tangail-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(519, 'Jessore 250 bed General Hospital', 'jessore-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(520, 'Khulna 250 Bed General Hospital, Khulna', 'khulna-250-bed-general-hospital-khulna', 1, NULL, NULL, 1, 1),
(521, 'Kushtia 250 bed General Hospital', 'kushtia-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(522, 'Magura District Hospital', 'magura-district-hospital', 1, NULL, NULL, 1, 1),
(523, 'Meherpur 250 bed District Hospital', 'meherpur-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(524, 'Jamalpur 250 Beded General Hospital', 'jamalpur-250-beded-general-hospital', 1, NULL, NULL, 1, 1),
(525, 'Bogra 250 bed Mohammad Ali District Hospital', 'bogra-250-bed-mohammad-ali-district-hospital', 1, NULL, NULL, 1, 1),
(526, 'Pabna 250 bed General Hospital', 'pabna-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(527, 'Sirajganj General Hospital', 'sirajganj-general-hospital', 1, NULL, NULL, 1, 1),
(528, 'Dinajpur 250 bed General Hospital', 'dinajpur-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(529, 'Kurigram District Hospital', 'kurigram-district-hospital', 1, NULL, NULL, 1, 1),
(530, 'Habiganj District Hospital', 'habiganj-district-hospital', 1, NULL, NULL, 1, 1),
(531, 'Moulvibazar 250 bed District Sadar Hospital', 'moulvibazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(532, 'Sunamganj 250 bed District Sadar Hospital', 'sunamganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(533, 'Kurmitola 500 Bed General Hospital', 'kurmitola-500-bed-general-hospital', 1, NULL, NULL, 1, 1),
(534, 'Mugda 500 Bed General Hospital, Dhaka', 'mugda-500-bed-general-hospital-dhaka', 1, NULL, NULL, 1, 1),
(535, 'Cox\'s Bazar Medical College Hospital', 'coxs-bazar-medical-college-hospital', 1, NULL, NULL, 1, 1),
(536, 'Cumilla Medical College Hospital', 'cumilla-medical-college-hospital', 1, NULL, NULL, 1, 1),
(537, 'Mugda Medical College Hospital, Dhaka', 'mugda-medical-college-hospital-dhaka', 1, NULL, NULL, 1, 1),
(538, 'Faridpur Medical College Hospital', 'faridpur-medical-college-hospital', 1, NULL, NULL, 1, 1),
(539, 'Shaheed Tajuddin Ahmad Medical College Hospital,\r\nGazipur', 'shaheed-tajuddin-ahmad-medical-college-hospital-gazipur', 1, NULL, NULL, 1, 1),
(540, 'Shahid Syed Nazrul Islam Medical College Hospital', 'shahid-syed-nazrul-islam-medical-college-hospital', 1, NULL, NULL, 1, 1),
(541, 'Sheikh Hasina Medical College Hospital, Tangail', 'sheikh-hasina-medical-college-hospital-tangail', 1, NULL, NULL, 1, 1),
(542, 'Khulna Medical College Hospital', 'khulna-medical-college-hospital', 1, NULL, NULL, 1, 1),
(543, 'Satkhira Medical College Hospital', 'satkhira-medical-college-hospital', 1, NULL, NULL, 1, 1),
(544, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra', 'shaheed-ziaur-rahman-medical-college-hospital-bogra', 1, NULL, NULL, 1, 1),
(545, 'M Abdur Rahim Medical College Hospital', 'm-abdur-rahim-medical-college-hospital', 1, NULL, NULL, 1, 1),
(546, 'Sher-e-bangla Medical College Hospital', 'sher-e-bangla-medical-college-hospital', 1, NULL, NULL, 1, 1),
(547, 'Chittagong Medical College Hospital', 'chittagong-medical-college-hospital', 1, NULL, NULL, 1, 1),
(548, 'Sir Salimullah Medical College Hospital', 'sir-salimullah-medical-college-hospital', 1, NULL, NULL, 1, 1),
(549, 'Mymensingh Medical College Hospital', 'mymensingh-medical-college-hospital', 1, NULL, NULL, 1, 1),
(550, 'Rajshahi Medical College Hospital', 'rajshahi-medical-college-hospital', 1, NULL, NULL, 1, 1),
(551, 'Rangpur Medical College Hospital', 'rangpur-medical-college-hospital', 1, NULL, NULL, 1, 1),
(552, 'Sylhet MAG Osmani Medical College Hospital', 'sylhet-mag-osmani-medical-college-hospital', 1, NULL, NULL, 1, 1),
(553, 'Dhaka Dental College Hospital (Code:10000028)', 'dhaka-dental-college-hospital-code10000028', 1, NULL, NULL, 1, 1),
(554, 'Sheikh Lutfar Rahman Dental College Hospital, Gopalganj.\r\n(Code:10025187)', 'sheikh-lutfar-rahman-dental-college-hospital-gopalganj-code10025187', 1, NULL, NULL, 1, 1),
(555, 'Kurmitola 500 Bed General Hospital (Code:10017209)', 'kurmitola-500-bed-general-hospital-code10017209', 1, NULL, NULL, 1, 1),
(556, 'Mugda 500 Bed General Hospital, Dhaka (Code:10013720)', 'mugda-500-bed-general-hospital-dhaka-code10013720', 1, NULL, NULL, 1, 1),
(557, 'Govt. Homeopathic Medical College Hospital (Code:10019120)', 'govt-homeopathic-medical-college-hospital-code10019120', 1, NULL, NULL, 1, 1),
(558, 'Govt. Unani & Ayurvedic Medical College Hospital (Code:10002305)', 'govt-unani-ayurvedic-medical-college-hospital-code10002305', 1, NULL, NULL, 1, 1),
(559, 'Govt. Unani & Ayurvedic Medical College Hospital, Sylhet\r\n(Code:10002203)', 'govt-unani-ayurvedic-medical-college-hospital-sylhet-code10002203', 1, NULL, NULL, 1, 1),
(560, 'Sher-e-bangla Medical College Hospital (Code:10001978)', 'sher-e-bangla-medical-college-hospital-code10001978', 1, NULL, NULL, 1, 1),
(561, 'Chittagong Medical College Hospital (Code:10000756)', 'chittagong-medical-college-hospital-code10000756', 1, NULL, NULL, 1, 1),
(562, 'Comilla Medical College Hospital (Code:10000867)', 'comilla-medical-college-hospital-code10000867', 1, NULL, NULL, 1, 1),
(563, 'Sir Salimullah Medical College Hospital (Code:10000056)', 'sir-salimullah-medical-college-hospital-code10000056', 1, NULL, NULL, 1, 1),
(564, 'Dhaka Medical College Hospital (Code:10000033)', 'dhaka-medical-college-hospital-code10000033', 1, NULL, NULL, 1, 1),
(565, 'Shaheed Suhrawardy Medical College Hospital (Code:10000051)', 'shaheed-suhrawardy-medical-college-hospital-code10000051', 1, NULL, NULL, 1, 1),
(566, 'Faridpur Medical College Hospital (Code:10000108)', 'faridpur-medical-college-hospital-code10000108', 1, NULL, NULL, 1, 1),
(567, 'Shaheed Taj Uddin Ahmad Medical College Hospital, Gazipur\r\n(Code:10023251)', 'shaheed-taj-uddin-ahmad-medical-college-hospital-gazipur-code10023251', 1, NULL, NULL, 1, 1),
(568, 'Shahid Syed Nazrul Islam Medical College Hospital (Code:10024987)', 'shahid-syed-nazrul-islam-medical-college-hospital-code10024987', 1, NULL, NULL, 1, 1),
(569, 'Sheikh Hasina Medical College Hospital, Tangail (Code:10024593)', 'sheikh-hasina-medical-college-hospital-tangail-code10024593', 1, NULL, NULL, 1, 1),
(570, 'Khulna Medical College Hospital (Code:10001807)', 'khulna-medical-college-hospital-code10001807', 1, NULL, NULL, 1, 1),
(571, 'Satkhira 250 bed Medical College Hospital (Code:10024591)', 'satkhira-250-bed-medical-college-hospital-code10024591', 1, NULL, NULL, 1, 1),
(572, 'Mymensingh Medical College Hospital (Code:10000397)', 'mymensingh-medical-college-hospital-code10000397', 1, NULL, NULL, 1, 1),
(573, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra\r\n(Code:10001111)', 'shaheed-ziaur-rahman-medical-college-hospital-bogra-code10001111', 1, NULL, NULL, 1, 1),
(574, 'Rajshahi Medical College Hospital (Code:10001560)', 'rajshahi-medical-college-hospital-code10001560', 1, NULL, NULL, 1, 1),
(575, 'M Abdur Rahim Medical College Hospital (Code:10002288)', 'm-abdur-rahim-medical-college-hospital-code10002288', 1, NULL, NULL, 1, 1),
(576, 'Rangpur Medical College Hospital (Code:10001618)', 'rangpur-medical-college-hospital-code10001618', 1, NULL, NULL, 1, 1),
(577, 'Sylhet MAG Osmani Medical College Hospital (Code:10002195)', 'sylhet-mag-osmani-medical-college-hospital-code10002195', 1, NULL, NULL, 1, 1),
(578, 'Barguna District Hospital (Code:10001943)', 'barguna-district-hospital-code10001943', 1, NULL, NULL, 1, 1),
(579, 'Barishal General Hospital (Code:10001972)', 'barishal-general-hospital-code10001972', 1, NULL, NULL, 1, 1),
(580, 'Bhola District Hospital (Code:10002002)', 'bhola-district-hospital-code10002002', 1, NULL, NULL, 1, 1),
(581, 'Jhalokathi District Hospital (Code:10002025)', 'jhalokathi-district-hospital-code10002025', 1, NULL, NULL, 1, 1),
(582, 'Patuakhali 250 bed Sadar Hospital (Code:10002051)', 'patuakhali-250-bed-sadar-hospital-code10002051', 1, NULL, NULL, 1, 1),
(583, 'Pirojpur District Hospital (Code:10002067)', 'pirojpur-district-hospital-code10002067', 1, NULL, NULL, 1, 1),
(584, 'District Family Planning Office, Pirojpur (Code:10024005)', 'district-family-planning-office-pirojpur-code10024005', 1, NULL, NULL, 1, 1),
(585, 'Bandarban District Hospital (Code:10000655)', 'bandarban-district-hospital-code10000655', 1, NULL, NULL, 1, 1),
(586, 'Bangladesh Korea Moitree Hospital (Code:10002298)', 'bangladesh-korea-moitree-hospital-code10002298', 1, NULL, NULL, 1, 1),
(587, 'Brahmanbaria 250 Bed District Sadar Hospital (Code:10000672)', 'brahmanbaria-250-bed-district-sadar-hospital-code10000672', 1, NULL, NULL, 1, 1),
(588, 'Chandpur 250 Bed General Hospital (Code:10000700)', 'chandpur-250-bed-general-hospital-code10000700', 1, NULL, NULL, 1, 1),
(589, 'Divisional Police Hospital, Chattogram (Code:10025023)', 'divisional-police-hospital-chattogram-code10025023', 1, NULL, NULL, 1, 1),
(590, 'Chittagong 250 Bed General Hospital (Code:10000753)', 'chittagong-250-bed-general-hospital-code10000753', 1, NULL, NULL, 1, 1),
(591, 'Cox\'s Bazar 250 Bed District Sadar Hospital\r\n(Code:10000922)', 'coxs-bazar-250-bed-district-sadar-hospital-code10000922', 1, NULL, NULL, 1, 1),
(592, 'Comilla General Hospital (Code:10000864)', 'comilla-general-hospital-code10000864', 1, NULL, NULL, 1, 1),
(593, 'Feni 250 Bed District Sadar Hospital (Code:10000954)', 'feni-250-bed-district-sadar-hospital-code10000954', 1, NULL, NULL, 1, 1),
(594, 'Khagrachari District Hospital (Code:10000976)', 'khagrachari-district-hospital-code10000976', 1, NULL, NULL, 1, 1),
(595, 'Lakshmipur District Hospital (Code:10001001)', 'lakshmipur-district-hospital-code10001001', 1, NULL, NULL, 1, 1),
(596, 'Noakhali 250 Bed General Hospital (Code:10001049)', 'noakhali-250-bed-general-hospital-code10001049', 1, NULL, NULL, 1, 1),
(597, 'Rangamati General Hospital (Code:10001088)', 'rangamati-general-hospital-code10001088', 1, NULL, NULL, 1, 1),
(598, 'Kuwait Bangladesh Friendship Govt. Hospital\r\n(Code:10023662)', 'kuwait-bangladesh-friendship-govt-hospital-code10023662', 1, NULL, NULL, 1, 1),
(599, 'Faridpur General Hospital (Code:10000105)', 'faridpur-general-hospital-code10000105', 1, NULL, NULL, 1, 1),
(600, 'Shaheed Ahsan Ullah Master General Hospital\r\n(Code:10000129)', 'shaheed-ahsan-ullah-master-general-hospital-code10000129', 1, NULL, NULL, 1, 1),
(601, 'Gazipur District Hospital (Code:10000137)', 'gazipur-district-hospital-code10000137', 1, NULL, NULL, 1, 1),
(602, 'Gopalganj 250 bed General Hospital (Code:10002233)', 'gopalganj-250-bed-general-hospital-code10002233', 1, NULL, NULL, 1, 1),
(603, 'Kishoreganj 250 Bed District Sadar Hospital (Code:10000243)', 'kishoreganj-250-bed-district-sadar-hospital-code10000243', 1, NULL, NULL, 1, 1),
(604, 'Madaripur District Hospital (Code:10000263)', 'madaripur-district-hospital-code10000263', 1, NULL, NULL, 1, 1),
(605, 'Manikganj 250 Bed District Hospital (Code:10000297)', 'manikganj-250-bed-district-hospital-code10000297', 1, NULL, NULL, 1, 1),
(606, 'Munshiganj 250 bed District Hospital (Code:10000328)', 'munshiganj-250-bed-district-hospital-code10000328', 1, NULL, NULL, 1, 1),
(607, 'Narayanganj 300 Bed Hospital (Code:10000425)', 'narayanganj-300-bed-hospital-code10000425', 1, NULL, NULL, 1, 1),
(608, 'Narayanganj General (Victoria) Hospital (Code:10000427)', 'narayanganj-general-victoria-hospital-code10000427', 1, NULL, NULL, 1, 1),
(609, 'Narsingdi District Hospital (Code:10000452)', 'narsingdi-district-hospital-code10000452', 1, NULL, NULL, 1, 1),
(610, 'Narsingdi 100 Bed Zilla Hospital (Code:10000453)', 'narsingdi-100-bed-zilla-hospital-code10000453', 1, NULL, NULL, 1, 1),
(611, 'Rajbari District Hospital (Code:10000536)', 'rajbari-district-hospital-code10000536', 1, NULL, NULL, 1, 1),
(612, 'Shariatpur District Hospital (Code:10000559)', 'shariatpur-district-hospital-code10000559', 1, NULL, NULL, 1, 1),
(613, 'Tangail 250 Bed District Hospital (Code:10000647)', 'tangail-250-bed-district-hospital-code10000647', 1, NULL, NULL, 1, 1),
(614, 'Bagerhat District Hospital (Code:10001693)', 'bagerhat-district-hospital-code10001693', 1, NULL, NULL, 1, 1),
(615, 'Chuadanga District Hospital (Code:10001723)', 'chuadanga-district-hospital-code10001723', 1, NULL, NULL, 1, 1),
(616, 'Jessore 250 bed General Hospital (Code:10013096)', 'jessore-250-bed-general-hospital-code10013096', 1, NULL, NULL, 1, 1),
(617, 'Jhenaidah District Hospital (Code:10001776)', 'jhenaidah-district-hospital-code10001776', 1, NULL, NULL, 1, 1),
(618, 'Khulna 250 Bed General Hospital, Khulna\r\n(Code:10001805)', 'khulna-250-bed-general-hospital-khulna-code10001805', 1, NULL, NULL, 1, 1),
(619, 'Kushtia 250 bed General Hospital (Code:10001862)', 'kushtia-250-bed-general-hospital-code10001862', 1, NULL, NULL, 1, 1),
(620, 'Magura District Hospital (Code:10001876)', 'magura-district-hospital-code10001876', 1, NULL, NULL, 1, 1),
(621, 'Meherpur 250 bed District Hospital (Code:10001898)', 'meherpur-250-bed-district-hospital-code10001898', 1, NULL, NULL, 1, 1),
(622, 'Narail District Hospital (Code:10001913)', 'narail-district-hospital-code10001913', 1, NULL, NULL, 1, 1),
(623, 'Satkhira District Hospital (Code:10001926)', 'satkhira-district-hospital-code10001926', 1, NULL, NULL, 1, 1),
(624, 'Jamalpur 250 Beded General Hospital (Code:10000208)', 'jamalpur-250-beded-general-hospital-code10000208', 1, NULL, NULL, 1, 1),
(625, 'Netrokona District Hospital (Code:10000496)', 'netrokona-district-hospital-code10000496', 1, NULL, NULL, 1, 1),
(626, 'Sherpur District Hospital (Code:10000576)', 'sherpur-district-hospital-code10000576', 1, NULL, NULL, 1, 1),
(627, 'Bogra 250 bed Mohammad Ali District Hospital\r\n(Code:10001109)', 'bogra-250-bed-mohammad-ali-district-hospital-code10001109', 1, NULL, NULL, 1, 1),
(628, 'Chapai Nababganj District Hospital (Code:10001186)', 'chapai-nababganj-district-hospital-code10001186', 1, NULL, NULL, 1, 1),
(629, 'Joypurhat District Hospital (Code:10001298)', 'joypurhat-district-hospital-code10001298', 1, NULL, NULL, 1, 1),
(630, 'Naogaon District Hospital (Code:10001394)', 'naogaon-district-hospital-code10001394', 1, NULL, NULL, 1, 1),
(631, 'Natore District Hospital (Code:10001433)', 'natore-district-hospital-code10001433', 1, NULL, NULL, 1, 1),
(632, 'Pabna 250 bed General Hospital (Code:10001484)', 'pabna-250-bed-general-hospital-code10001484', 1, NULL, NULL, 1, 1),
(633, '250 Bed Bongamata Sheikh Fazilatunnesa Mujib General Hospital, Sirajganj. (Code:10001648)', '250-bed-bongamata-sheikh-fazilatunnesa-mujib-general-hospital-sirajganj-code10001648', 1, NULL, NULL, 1, 1),
(634, 'Dinajpur 250 bed General Hospital (Code:10001214)', 'dinajpur-250-bed-general-hospital-code10001214', 1, NULL, NULL, 1, 1),
(635, 'Gaibandha District Hospital (Code:10001254)', 'gaibandha-district-hospital-code10001254', 1, NULL, NULL, 1, 1),
(636, 'Kurigram 250 bed District Hospital (Code:10001317)', 'kurigram-250-bed-district-hospital-code10001317', 1, NULL, NULL, 1, 1),
(637, 'Lalmonirhat District Hospital (Code:10001353)', 'lalmonirhat-district-hospital-code10001353', 1, NULL, NULL, 1, 1),
(638, 'Nilphamari District Hospital (Code:10001464)', 'nilphamari-district-hospital-code10001464', 1, NULL, NULL, 1, 1),
(639, 'Saidpur 100 Bed Hospital (Code:10001469)', 'saidpur-100-bed-hospital-code10001469', 1, NULL, NULL, 1, 1),
(640, 'Panchagarh District Hospital (Code:10001514)', 'panchagarh-district-hospital-code10001514', 1, NULL, NULL, 1, 1),
(641, 'Thakurgaon District Hospital (Code:10001687)', 'thakurgaon-district-hospital-code10001687', 1, NULL, NULL, 1, 1),
(642, 'Habiganj District Hospital (Code:10002071)', 'habiganj-district-hospital-code10002071', 1, NULL, NULL, 1, 1),
(643, 'Moulvibazar 250 bed District Sadar Hospital (Code:10002116)', 'moulvibazar-250-bed-district-sadar-hospital-code10002116', 1, NULL, NULL, 1, 1),
(644, 'Sunamganj 250 bed District Sadar Hospital (Code:10002157)', 'sunamganj-250-bed-district-sadar-hospital-code10002157', 1, NULL, NULL, 1, 1),
(645, 'Sylhet Shahid Shamsuddin Ahmed District Hospital\r\n(Code:10002196)', 'sylhet-shahid-shamsuddin-ahmed-district-hospital-code10002196', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_machines`
--

CREATE TABLE `service_machines` (
  `id` bigint UNSIGNED NOT NULL,
  `machine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_machines`
--

INSERT INTO `service_machines` (`id`, `machine_name`, `brand_id`, `model_id`, `origin`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Machine 1', 1, 1, 'Country A', 1, NULL, NULL, 1, 1),
(2, 'Machine 2', 2, 2, 'Country B', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_models`
--

CREATE TABLE `service_models` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_models`
--

INSERT INTO `service_models` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Model 1', 1, NULL, NULL, 1, 1),
(2, 'Model 2', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_packages`
--

CREATE TABLE `service_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_date` date NOT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_package_details`
--

CREATE TABLE `service_package_details` (
  `id` bigint UNSIGNED NOT NULL,
  `machine_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `package_id` bigint UNSIGNED DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `warranty_period` int DEFAULT NULL,
  `status_id` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `image_id` bigint DEFAULT NULL,
  `context` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'app',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `status_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `image_id`, `context`, `created_at`, `updated_at`, `company_id`, `status_id`) VALUES
(1, 'company_name', 'Taqnah HR', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 'company_domain', 'hrm.test', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 'company_logo_backend', 'uploads/settings/logo/logo-white.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 'company_logo_frontend', 'uploads/settings/logo/logo-black.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(5, 'company_icon', 'uploads/settings/logo/favicon.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(6, 'android_url', 'https://play.google.com/store/apps/details?id=com.worx24hour.hrm', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(7, 'android_icon', 'assets/favicon.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(8, 'ios_url', 'https://apps.apple.com/us/app/24hourworx/id1620313188', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(9, 'ios_icon', 'assets/favicon.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(10, 'language', 'en', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(11, 'site_under_maintenance', '0', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(12, 'company_description', 'Taqnah HR believes in painting the perfect picture of your idea while maintaining industry standards.', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(13, 'default_theme', 'app_theme_1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(14, 'app_theme_1', 'static/app-screen/screen-1.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(15, 'app_theme_2', 'static/app-screen/screen-2.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(16, 'app_theme_3', 'static/app-screen/screen-3.png', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(17, 'email', 'info@taqnahhr.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(18, 'phone', '+62 (0) 000 0000 00', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(19, 'address', 'House #148, Road #13/B, Block-E, Banani, Dhaka, Bangladesh', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(20, 'twitter_link', 'https://twitter.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(21, 'linkedin_link', 'https://linkedin.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(22, 'facebook_link', 'https://facebook.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(23, 'instagram_link', 'https://instagram.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(24, 'dribbble_link', 'https://dribbble.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(25, 'behance_link', 'https://behance.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(26, 'pinterest_link', 'https://pinterest.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(27, 'contact_title', 'Send A Message To Get Your Free Quote', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(28, 'contact_short_description', 'Lorem Ipsum Dolor Sit Amet Consectetur. Est Commodo Pharetra Ac Netus Enim A Eget. Tristique Malesuada Donec Condimentum Mi Quis Porttitor Non Vitae Ultrices.', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(29, 'mail_mailer', 'smtp', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(30, 'mail_host', 'smtp.gmail.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(31, 'mail_port', '587', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(32, 'mail_username', 'test@test.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(33, 'mail_password', '1234512345', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(34, 'mail_from_address', 'test@test.com', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(35, 'mail_encryption', 'tls', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(36, 'mail_from_name', 'Taqnah HR', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(37, 'file_system_driver', 'local', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(38, 'aws_access_key_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(39, 'aws_secret_access_key', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(40, 'aws_default_region', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(41, 'aws_bucket', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(42, 'aws_url', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(43, 'aws_endpoint', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(44, 'aws_use_path_style_endpoint', '0', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(45, 'firebase_api_key', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(46, 'firebase_auth_domain', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(47, 'firebase_auth_database_url', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(48, 'firebase_project_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(49, 'firebase_storage_bucket', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(50, 'firebase_messaging_sender_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(51, 'firebase_app_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(52, 'firebase_measurement_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(53, 'firebase_auth_collection_name', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(54, 'geocoding_api_key', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(55, 'geocoding_base_url', 'https://maps.googleapis.com/maps/api/geocode/json', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(56, 'pusher_app_id', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(57, 'pusher_app_key', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(58, 'pusher_app_secret', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(59, 'pusher_app_cluster', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(60, 'stripe_key', 'pk_test_51NaH9CAEFWsTKUlUhOrl8P1yBT5Yx8bOmFFRwRWz7JzmLnk1LxvfWmD49bl31KvRCL9jxLKeKexNCxIzEV0kPl4n00lvX1LLaS', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(61, 'stripe_secret', 'sk_test_51NaH9CAEFWsTKUlUAKFJVBaYapJZr9pHwS8X8eaXcqFDcZbqrUaoQQqKM3iSYuy8Rb6zdm5aXYNpKkuuR6298IrH00697HeaHt', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(62, 'is_recaptcha_enable', '0', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(63, 'recaptcha_sitekey', '6Lc9bg0pAAAAAKoWkSe7B-rNdpvVgpJVTsR9JekP', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(64, 'recaptcha_secret', '6Lc9bg0pAAAAABd90JQSSjznnCaHAt5X2ca35IzQ', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(65, 'is_whatsapp_chat_enable', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(66, 'whatsapp_chat_number', '01234567890', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(67, 'is_tawk_enable', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(68, 'tawk_chat_widget_script', '<script type=\"text/javascript\">\n            var Tawk_API = Tawk_API||{}, Tawk_LoadStart = new Date();\n            (function(){\n            var s1         = document.createElement(\"script\"), s0 = document.getElementsByTagName(\"script\")[0];\n                s1.async   = true;\n                s1.src     = \"https://embed.tawk.to/6551ee59958be55aeaaf15d9/1hf40m3te\";\n                s1.charset = \"UTF-8\";\n            s1.setAttribute(\"crossorigin\",\"*\");\n            s0.parentNode.insertBefore(s1,s0);\n            })();\n            </script>', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(69, 'meta_title', 'Taqnah HR', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(70, 'meta_description', 'Taqnah HR revolutionizes human resource management, offering a comprehensive solution for businesses. Streamline your HR processes, from recruitment to employee management, with advanced features and intuitive tools. Optimize workforce efficiency, enhance employee engagement, and stay compliant effortlessly. Explore the power of Taqnah HR for a seamless and strategic approach to HR.', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(71, 'meta_keywords', 'HR management software, Human resource solution, Employee management tool, Workforce optimization, Employee engagement platform, Compliance management, HR software solution, Talent management system.', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(72, 'meta_image', '', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(73, 'is_demo_checkout', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(74, 'is_payment_type_cash', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(75, 'is_payment_type_cheque', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(76, 'is_payment_type_bank_transfer', '1', NULL, 'app', '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `receiver_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_identities`
--

CREATE TABLE `social_identities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'hare name=status situation',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'hare class=what type of class name property like success,danger,info,purple',
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `class`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'Active', 'success', '449d44', NULL, NULL),
(2, 'Pending', 'warning', 'ec971f', NULL, NULL),
(3, 'Suspended', 'danger', 'c9302c', NULL, NULL),
(4, 'Inactive', 'danger', 'c9302c', NULL, NULL),
(5, 'Approve', 'success', '449d44', NULL, NULL),
(6, 'Reject', 'danger', 'c9302c', NULL, NULL),
(7, 'Cancel', 'danger', 'c9302c', NULL, NULL),
(8, 'Paid', 'success', '449d44', NULL, NULL),
(9, 'Unpaid', 'danger', 'c9302c', NULL, NULL),
(10, 'Claimed', 'primary', '337ab7', NULL, NULL),
(11, 'Not Claimed', 'danger', 'c9302c', NULL, NULL),
(12, 'Open', 'danger', 'ffFD815B', NULL, NULL),
(13, 'Close', 'success', '449d44', NULL, NULL),
(14, 'High', 'danger', 'c9302c', NULL, NULL),
(15, 'Medium', 'primary', '337ab7', NULL, NULL),
(16, 'Low', 'warning', 'ec971f', NULL, NULL),
(17, 'Referred', 'warning', 'ec971f', NULL, NULL),
(18, 'Debit', 'danger', 'ffFD815B', NULL, NULL),
(19, 'Credit', 'success', '449d44', NULL, NULL),
(20, 'Partially Paid', 'info', '9DBBCE', NULL, NULL),
(21, 'Partially Returned', 'warning', 'ec971f', NULL, NULL),
(22, 'No', 'danger', 'c9302c', NULL, NULL),
(23, 'Returned', 'success', '449d44', NULL, NULL),
(24, 'Not Started', 'warning', 'ec971f', NULL, NULL),
(25, 'On Hold', 'info', '9DBBCE', NULL, NULL),
(26, 'In Progress', 'main', '7F58FE', NULL, NULL),
(27, 'Completed', 'success', '449d44', NULL, NULL),
(28, 'Cancelled', 'danger', 'c9302c', NULL, NULL),
(29, 'Urgent', 'danger', 'c9302c', NULL, NULL),
(30, 'High', 'danger', 'c9302c', NULL, NULL),
(31, 'Medium', 'primary', '337ab7', NULL, NULL),
(32, 'Low', 'warning', 'ec971f', NULL, NULL),
(33, 'Yes', 'primary', '337ab7', NULL, NULL),
(34, 'Terminated', 'danger', 'c9302c', NULL, NULL),
(35, 'Resign', 'danger', 'c9302c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `assigned_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `type_id` bigint UNSIGNED NOT NULL DEFAULT '12' COMMENT '12 = open , 13 = close',
  `priority_id` bigint UNSIGNED NOT NULL DEFAULT '14' COMMENT '14 = high , 15 = medium , 16 = low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `progress` int DEFAULT '0',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '24',
  `priority` bigint UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `notify_all_users` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '0=Regular , 1= Project',
  `project_id` bigint UNSIGNED DEFAULT NULL,
  `reminder` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `goal_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_activities`
--

CREATE TABLE `task_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_discussions`
--

CREATE TABLE `task_discussions` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `file_id` bigint UNSIGNED DEFAULT NULL COMMENT 'this will be attachment file',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_discussion_comments`
--

CREATE TABLE `task_discussion_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `task_discussion_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_file_comments`
--

CREATE TABLE `task_file_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `task_file_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_followers`
--

CREATE TABLE `task_followers` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `is_creator` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_members`
--

CREATE TABLE `task_members` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_notes`
--

CREATE TABLE `task_notes` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint UNSIGNED NOT NULL DEFAULT '22',
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED NOT NULL,
  `team_lead_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_subscriptions`
--

CREATE TABLE `tenant_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id_in_main_company` bigint UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT '0.00',
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offline_payment` json DEFAULT NULL,
  `employee_limit` bigint UNSIGNED DEFAULT '0',
  `is_employee_limit` tinyint NOT NULL DEFAULT '1' COMMENT 'if 1 then employee create have some limit which is define in employee_limit column. If 0 then employee create have no limit.',
  `expiry_date` date DEFAULT NULL,
  `features` json NOT NULL,
  `features_key` json NOT NULL,
  `is_demo_checkout` tinyint NOT NULL DEFAULT '0',
  `source` enum('Website','Admin') COLLATE utf8mb4_unicode_ci DEFAULT 'Website',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Active,2=Pending,4=inactive,5=Approve,6=Reject',
  `payment_status_id` bigint UNSIGNED NOT NULL COMMENT '8=Paid,9=Unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_user_impersonation_tokens`
--

CREATE TABLE `tenant_user_impersonation_tokens` (
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_guard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `code`, `time_zone`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'Europe/Andorra', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(2, 'AE', 'Asia/Dubai', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(3, 'AF', 'Asia/Kabul', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(4, 'AG', 'America/Antigua', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(5, 'AI', 'America/Anguilla', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(6, 'AL', 'Europe/Tirane', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(7, 'AM', 'Asia/Yerevan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(8, 'AO', 'Africa/Luanda', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(9, 'AQ', 'Antarctica/McMurdo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(10, 'AQ', 'Antarctica/Casey', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(11, 'AQ', 'Antarctica/Davis', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(12, 'AQ', 'Antarctica/DumontDUrville', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(13, 'AQ', 'Antarctica/Mawson', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(14, 'AQ', 'Antarctica/Palmer', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(15, 'AQ', 'Antarctica/Rothera', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(16, 'AQ', 'Antarctica/Syowa', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(17, 'AQ', 'Antarctica/Troll', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(18, 'AQ', 'Antarctica/Vostok', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(20, 'AR', 'America/Argentina/Cordoba', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(21, 'AR', 'America/Argentina/Salta', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(22, 'AR', 'America/Argentina/Jujuy', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(23, 'AR', 'America/Argentina/Tucuman', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(24, 'AR', 'America/Argentina/Catamarca', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(25, 'AR', 'America/Argentina/La_Rioja', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(26, 'AR', 'America/Argentina/San_Juan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(27, 'AR', 'America/Argentina/Mendoza', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(28, 'AR', 'America/Argentina/San_Luis', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(30, 'AR', 'America/Argentina/Ushuaia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(31, 'AS', 'Pacific/Pago_Pago', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(32, 'AT', 'Europe/Vienna', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(33, 'AU', 'Australia/Lord_Howe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(34, 'AU', 'Antarctica/Macquarie', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(35, 'AU', 'Australia/Hobart', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(36, 'AU', 'Australia/Currie', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(37, 'AU', 'Australia/Melbourne', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(38, 'AU', 'Australia/Sydney', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(39, 'AU', 'Australia/Broken_Hill', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(40, 'AU', 'Australia/Brisbane', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(41, 'AU', 'Australia/Lindeman', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(42, 'AU', 'Australia/Adelaide', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(43, 'AU', 'Australia/Darwin', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(44, 'AU', 'Australia/Perth', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(45, 'AU', 'Australia/Eucla', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(46, 'AW', 'America/Aruba', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(47, 'AX', 'Europe/Mariehamn', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(48, 'AZ', 'Asia/Baku', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(49, 'BA', 'Europe/Sarajevo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(50, 'BB', 'America/Barbados', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(51, 'BD', 'Asia/Dhaka', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(52, 'BE', 'Europe/Brussels', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(53, 'BF', 'Africa/Ouagadougou', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(54, 'BG', 'Europe/Sofia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(55, 'BH', 'Asia/Bahrain', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(56, 'BI', 'Africa/Bujumbura', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(57, 'BJ', 'Africa/Porto-Novo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(58, 'BL', 'America/St_Barthelemy', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(59, 'BM', 'Atlantic/Bermuda', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(60, 'BN', 'Asia/Brunei', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(61, 'BO', 'America/La_Paz', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(62, 'BQ', 'America/Kralendijk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(63, 'BR', 'America/Noronha', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(64, 'BR', 'America/Belem', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(65, 'BR', 'America/Fortaleza', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(66, 'BR', 'America/Recife', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(67, 'BR', 'America/Araguaina', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(68, 'BR', 'America/Maceio', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(69, 'BR', 'America/Bahia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(70, 'BR', 'America/Sao_Paulo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(71, 'BR', 'America/Campo_Grande', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(72, 'BR', 'America/Cuiaba', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(73, 'BR', 'America/Santarem', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(74, 'BR', 'America/Porto_Velho', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(75, 'BR', 'America/Boa_Vista', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(76, 'BR', 'America/Manaus', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(77, 'BR', 'America/Eirunepe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(78, 'BR', 'America/Rio_Branco', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(79, 'BS', 'America/Nassau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(80, 'BT', 'Asia/Thimphu', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(81, 'BW', 'Africa/Gaborone', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(82, 'BY', 'Europe/Minsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(83, 'BZ', 'America/Belize', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(84, 'CA', 'America/St_Johns', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(85, 'CA', 'America/Halifax', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(86, 'CA', 'America/Glace_Bay', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(87, 'CA', 'America/Moncton', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(88, 'CA', 'America/Goose_Bay', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(89, 'CA', 'America/Blanc-Sablon', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(90, 'CA', 'America/Toronto', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(91, 'CA', 'America/Nipigon', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(92, 'CA', 'America/Thunder_Bay', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(93, 'CA', 'America/Iqaluit', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(94, 'CA', 'America/Pangnirtung', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(95, 'CA', 'America/Atikokan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(96, 'CA', 'America/Winnipeg', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(97, 'CA', 'America/Rainy_River', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(98, 'CA', 'America/Resolute', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(99, 'CA', 'America/Rankin_Inlet', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(100, 'CA', 'America/Regina', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(101, 'CA', 'America/Swift_Current', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(102, 'CA', 'America/Edmonton', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(103, 'CA', 'America/Cambridge_Bay', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(104, 'CA', 'America/Yellowknife', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(105, 'CA', 'America/Inuvik', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(106, 'CA', 'America/Creston', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(107, 'CA', 'America/Dawson_Creek', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(108, 'CA', 'America/Fort_Nelson', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(109, 'CA', 'America/Vancouver', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(110, 'CA', 'America/Whitehorse', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(111, 'CA', 'America/Dawson', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(112, 'CC', 'Indian/Cocos', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(113, 'CD', 'Africa/Kinshasa', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(114, 'CD', 'Africa/Lubumbashi', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(115, 'CF', 'Africa/Bangui', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(116, 'CG', 'Africa/Brazzaville', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(117, 'CH', 'Europe/Zurich', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(118, 'CI', 'Africa/Abidjan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(119, 'CK', 'Pacific/Rarotonga', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(120, 'CL', 'America/Santiago', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(121, 'CL', 'America/Punta_Arenas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(122, 'CL', 'Pacific/Easter', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(123, 'CM', 'Africa/Douala', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(124, 'CN', 'Asia/Shanghai', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(125, 'CN', 'Asia/Urumqi', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(126, 'CO', 'America/Bogota', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(127, 'CR', 'America/Costa_Rica', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(128, 'CU', 'America/Havana', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(129, 'CV', 'Atlantic/Cape_Verde', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(130, 'CW', 'America/Curacao', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(131, 'CX', 'Indian/Christmas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(132, 'CY', 'Asia/Nicosia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(133, 'CY', 'Asia/Famagusta', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(134, 'CZ', 'Europe/Prague', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(135, 'DE', 'Europe/Berlin', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(136, 'DE', 'Europe/Busingen', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(137, 'DJ', 'Africa/Djibouti', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(138, 'DK', 'Europe/Copenhagen', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(139, 'DM', 'America/Dominica', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(140, 'DO', 'America/Santo_Domingo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(141, 'DZ', 'Africa/Algiers', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(142, 'EC', 'America/Guayaquil', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(143, 'EC', 'Pacific/Galapagos', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(144, 'EE', 'Europe/Tallinn', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(145, 'EG', 'Africa/Cairo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(146, 'EH', 'Africa/El_Aaiun', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(147, 'ER', 'Africa/Asmara', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(148, 'ES', 'Europe/Madrid', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(149, 'ES', 'Africa/Ceuta', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(150, 'ES', 'Atlantic/Canary', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(151, 'ET', 'Africa/Addis_Ababa', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(152, 'FI', 'Europe/Helsinki', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(153, 'FJ', 'Pacific/Fiji', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(154, 'FK', 'Atlantic/Stanley', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(155, 'FM', 'Pacific/Chuuk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(156, 'FM', 'Pacific/Pohnpei', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(157, 'FM', 'Pacific/Kosrae', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(158, 'FO', 'Atlantic/Faroe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(159, 'FR', 'Europe/Paris', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(160, 'GA', 'Africa/Libreville', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(161, 'GB', 'Europe/London', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(162, 'GD', 'America/Grenada', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(163, 'GE', 'Asia/Tbilisi', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(164, 'GF', 'America/Cayenne', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(165, 'GG', 'Europe/Guernsey', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(166, 'GH', 'Africa/Accra', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(167, 'GI', 'Europe/Gibraltar', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(168, 'GL', 'America/Godthab', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(169, 'GL', 'America/Danmarkshavn', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(170, 'GL', 'America/Scoresbysund', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(171, 'GL', 'America/Thule', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(172, 'GM', 'Africa/Banjul', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(173, 'GN', 'Africa/Conakry', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(174, 'GP', 'America/Guadeloupe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(175, 'GQ', 'Africa/Malabo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(176, 'GR', 'Europe/Athens', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(177, 'GS', 'Atlantic/South_Georgia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(178, 'GT', 'America/Guatemala', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(179, 'GU', 'Pacific/Guam', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(180, 'GW', 'Africa/Bissau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(181, 'GY', 'America/Guyana', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(182, 'HK', 'Asia/Hong_Kong', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(183, 'HN', 'America/Tegucigalpa', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(184, 'HR', 'Europe/Zagreb', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(185, 'HT', 'America/Port-au-Prince', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(186, 'HU', 'Europe/Budapest', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(187, 'ID', 'Asia/Jakarta', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(188, 'ID', 'Asia/Pontianak', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(189, 'ID', 'Asia/Makassar', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(190, 'ID', 'Asia/Jayapura', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(191, 'IE', 'Europe/Dublin', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(192, 'IL', 'Asia/Jerusalem', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(193, 'IM', 'Europe/Isle_of_Man', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(194, 'IN', 'Asia/Kolkata', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(195, 'IO', 'Indian/Chagos', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(196, 'IQ', 'Asia/Baghdad', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(197, 'IR', 'Asia/Tehran', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(198, 'IS', 'Atlantic/Reykjavik', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(199, 'IT', 'Europe/Rome', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(200, 'JE', 'Europe/Jersey', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(201, 'JM', 'America/Jamaica', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(202, 'JO', 'Asia/Amman', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(203, 'JP', 'Asia/Tokyo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(204, 'KE', 'Africa/Nairobi', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(205, 'KG', 'Asia/Bishkek', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(206, 'KH', 'Asia/Phnom_Penh', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(207, 'KI', 'Pacific/Tarawa', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(208, 'KI', 'Pacific/Enderbury', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(209, 'KI', 'Pacific/Kiritimati', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(210, 'KM', 'Indian/Comoro', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(211, 'KN', 'America/St_Kitts', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(212, 'KP', 'Asia/Pyongyang', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(213, 'KR', 'Asia/Seoul', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(214, 'KW', 'Asia/Kuwait', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(215, 'KY', 'America/Cayman', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(216, 'KZ', 'Asia/Almaty', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(217, 'KZ', 'Asia/Qyzylorda', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(218, 'KZ', 'Asia/Aqtobe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(219, 'KZ', 'Asia/Aqtau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(220, 'KZ', 'Asia/Atyrau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(221, 'KZ', 'Asia/Oral', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(222, 'LA', 'Asia/Vientiane', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(223, 'LB', 'Asia/Beirut', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(224, 'LC', 'America/St_Lucia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(225, 'LI', 'Europe/Vaduz', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(226, 'LK', 'Asia/Colombo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(227, 'LR', 'Africa/Monrovia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(228, 'LS', 'Africa/Maseru', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(229, 'LT', 'Europe/Vilnius', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(230, 'LU', 'Europe/Luxembourg', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(231, 'LV', 'Europe/Riga', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(232, 'LY', 'Africa/Tripoli', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(233, 'MA', 'Africa/Casablanca', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(234, 'MC', 'Europe/Monaco', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(235, 'MD', 'Europe/Chisinau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(236, 'ME', 'Europe/Podgorica', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(237, 'MF', 'America/Marigot', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(238, 'MG', 'Indian/Antananarivo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(239, 'MH', 'Pacific/Majuro', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(240, 'MH', 'Pacific/Kwajalein', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(241, 'MK', 'Europe/Skopje', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(242, 'ML', 'Africa/Bamako', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(243, 'MM', 'Asia/Yangon', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(244, 'MN', 'Asia/Ulaanbaatar', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(245, 'MN', 'Asia/Hovd', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(246, 'MN', 'Asia/Choibalsan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(247, 'MO', 'Asia/Macau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(248, 'MP', 'Pacific/Saipan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(249, 'MQ', 'America/Martinique', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(250, 'MR', 'Africa/Nouakchott', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(251, 'MS', 'America/Montserrat', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(252, 'MT', 'Europe/Malta', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(253, 'MU', 'Indian/Mauritius', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(254, 'MV', 'Indian/Maldives', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(255, 'MW', 'Africa/Blantyre', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(256, 'MX', 'America/Mexico_City', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(257, 'MX', 'America/Cancun', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(258, 'MX', 'America/Merida', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(259, 'MX', 'America/Monterrey', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(260, 'MX', 'America/Matamoros', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(261, 'MX', 'America/Mazatlan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(262, 'MX', 'America/Chihuahua', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(263, 'MX', 'America/Ojinaga', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(264, 'MX', 'America/Hermosillo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(265, 'MX', 'America/Tijuana', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(266, 'MX', 'America/Bahia_Banderas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(267, 'MY', 'Asia/Kuala_Lumpur', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(268, 'MY', 'Asia/Kuching', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(269, 'MZ', 'Africa/Maputo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(270, 'NA', 'Africa/Windhoek', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(271, 'NC', 'Pacific/Noumea', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(272, 'NE', 'Africa/Niamey', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(273, 'NF', 'Pacific/Norfolk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(274, 'NG', 'Africa/Lagos', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(275, 'NI', 'America/Managua', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(276, 'NL', 'Europe/Amsterdam', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(277, 'NO', 'Europe/Oslo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(278, 'NP', 'Asia/Kathmandu', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(279, 'NR', 'Pacific/Nauru', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(280, 'NU', 'Pacific/Niue', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(281, 'NZ', 'Pacific/Auckland', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(282, 'NZ', 'Pacific/Chatham', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(283, 'OM', 'Asia/Muscat', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(284, 'PA', 'America/Panama', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(285, 'PE', 'America/Lima', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(286, 'PF', 'Pacific/Tahiti', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(287, 'PF', 'Pacific/Marquesas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(288, 'PF', 'Pacific/Gambier', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(289, 'PG', 'Pacific/Port_Moresby', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(290, 'PG', 'Pacific/Bougainville', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(291, 'PH', 'Asia/Manila', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(292, 'PK', 'Asia/Karachi', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(293, 'PL', 'Europe/Warsaw', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(294, 'PM', 'America/Miquelon', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(295, 'PN', 'Pacific/Pitcairn', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(296, 'PR', 'America/Puerto_Rico', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(297, 'PS', 'Asia/Gaza', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(298, 'PS', 'Asia/Hebron', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(299, 'PT', 'Europe/Lisbon', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(300, 'PT', 'Atlantic/Madeira', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(301, 'PT', 'Atlantic/Azores', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(302, 'PW', 'Pacific/Palau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(303, 'PY', 'America/Asuncion', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(304, 'QA', 'Asia/Qatar', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(305, 'RE', 'Indian/Reunion', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(306, 'RO', 'Europe/Bucharest', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(307, 'RS', 'Europe/Belgrade', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(308, 'RU', 'Europe/Kaliningrad', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(309, 'RU', 'Europe/Moscow', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(310, 'RU', 'Europe/Simferopol', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(311, 'RU', 'Europe/Volgograd', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(312, 'RU', 'Europe/Kirov', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(313, 'RU', 'Europe/Astrakhan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(314, 'RU', 'Europe/Saratov', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(315, 'RU', 'Europe/Ulyanovsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(316, 'RU', 'Europe/Samara', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(317, 'RU', 'Asia/Yekaterinburg', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(318, 'RU', 'Asia/Omsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(319, 'RU', 'Asia/Novosibirsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(320, 'RU', 'Asia/Barnaul', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(321, 'RU', 'Asia/Tomsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(322, 'RU', 'Asia/Novokuznetsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(323, 'RU', 'Asia/Krasnoyarsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(324, 'RU', 'Asia/Irkutsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(325, 'RU', 'Asia/Chita', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(326, 'RU', 'Asia/Yakutsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(327, 'RU', 'Asia/Khandyga', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(328, 'RU', 'Asia/Vladivostok', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(329, 'RU', 'Asia/Ust-Nera', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(330, 'RU', 'Asia/Magadan', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(331, 'RU', 'Asia/Sakhalin', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(332, 'RU', 'Asia/Srednekolymsk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(333, 'RU', 'Asia/Kamchatka', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(334, 'RU', 'Asia/Anadyr', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(335, 'RW', 'Africa/Kigali', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(336, 'SA', 'Asia/Riyadh', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(337, 'SB', 'Pacific/Guadalcanal', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(338, 'SC', 'Indian/Mahe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(339, 'SD', 'Africa/Khartoum', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(340, 'SE', 'Europe/Stockholm', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(341, 'SG', 'Asia/Singapore', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(342, 'SH', 'Atlantic/St_Helena', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(343, 'SI', 'Europe/Ljubljana', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(344, 'SJ', 'Arctic/Longyearbyen', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(345, 'SK', 'Europe/Bratislava', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(346, 'SL', 'Africa/Freetown', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(347, 'SM', 'Europe/San_Marino', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(348, 'SN', 'Africa/Dakar', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(349, 'SO', 'Africa/Mogadishu', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(350, 'SR', 'America/Paramaribo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(351, 'SS', 'Africa/Juba', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(352, 'ST', 'Africa/Sao_Tome', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(353, 'SV', 'America/El_Salvador', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(354, 'SX', 'America/Lower_Princes', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(355, 'SY', 'Asia/Damascus', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(356, 'SZ', 'Africa/Mbabane', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(357, 'TC', 'America/Grand_Turk', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(358, 'TD', 'Africa/Ndjamena', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(359, 'TF', 'Indian/Kerguelen', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(360, 'TG', 'Africa/Lome', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(361, 'TH', 'Asia/Bangkok', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(362, 'TJ', 'Asia/Dushanbe', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(363, 'TK', 'Pacific/Fakaofo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(364, 'TL', 'Asia/Dili', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(365, 'TM', 'Asia/Ashgabat', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(366, 'TN', 'Africa/Tunis', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(367, 'TO', 'Pacific/Tongatapu', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(368, 'TR', 'Europe/Istanbul', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(369, 'TT', 'America/Port_of_Spain', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(370, 'TV', 'Pacific/Funafuti', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(371, 'TW', 'Asia/Taipei', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(373, 'UA', 'Europe/Kiev', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(374, 'UA', 'Europe/Uzhgorod', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(375, 'UA', 'Europe/Zaporozhye', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(376, 'UG', 'Africa/Kampala', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(377, 'UM', 'Pacific/Midway', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(378, 'UM', 'Pacific/Wake', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(379, 'US', 'America/New_York', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(380, 'US', 'America/Detroit', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(381, 'US', 'America/Kentucky/Louisville', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(382, 'US', 'America/Kentucky/Monticello', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(383, 'US', 'America/Indiana/Indianapolis', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(384, 'US', 'America/Indiana/Vincennes', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(385, 'US', 'America/Indiana/Winamac', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(386, 'US', 'America/Indiana/Marengo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(387, 'US', 'America/Indiana/Petersburg', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(388, 'US', 'America/Indiana/Vevay', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(389, 'US', 'America/Chicago', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(390, 'US', 'America/Indiana/Tell_City', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(391, 'US', 'America/Indiana/Knox', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(392, 'US', 'America/Menominee', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(393, 'US', 'America/North_Dakota/Center', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(394, 'US', 'America/North_Dakota/New_Salem', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(395, 'US', 'America/North_Dakota/Beulah', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(396, 'US', 'America/Denver', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(397, 'US', 'America/Boise', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(398, 'US', 'America/Phoenix', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(399, 'US', 'America/Los_Angeles', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(400, 'US', 'America/Anchorage', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(401, 'US', 'America/Juneau', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(402, 'US', 'America/Sitka', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(403, 'US', 'America/Metlakatla', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(404, 'US', 'America/Yakutat', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(405, 'US', 'America/Nome', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(406, 'US', 'America/Adak', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(407, 'US', 'Pacific/Honolulu', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(408, 'UY', 'America/Montevideo', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(409, 'UZ', 'Asia/Samarkand', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(410, 'UZ', 'Asia/Tashkent', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(411, 'VA', 'Europe/Vatican', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(412, 'VC', 'America/St_Vincent', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(413, 'VE', 'America/Caracas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(414, 'VG', 'America/Tortola', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(415, 'VI', 'America/St_Thomas', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(417, 'VU', 'Pacific/Efate', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(418, 'WF', 'Pacific/Wallis', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(419, 'WS', 'Pacific/Apia', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(420, 'YE', 'Asia/Aden', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(421, 'YT', 'Indian/Mayotte', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(422, 'ZA', 'Africa/Johannesburg', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(423, 'ZM', 'Africa/Lusaka', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23'),
(424, 'ZW', 'Africa/Harare', 1, '2024-06-14 08:49:23', '2024-06-14 08:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `account_id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT '0.00',
  `transaction_type` bigint UNSIGNED NOT NULL DEFAULT '18',
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '9',
  `created_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint UNSIGNED NOT NULL,
  `default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` longtext COLLATE utf8mb4_unicode_ci,
  `bn` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `travel_type_id` bigint UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `expect_amount` double(16,2) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` bigint UNSIGNED DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` enum('bus','train','plane') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_types`
--

CREATE TABLE `travel_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1920 x 1080',
  `small_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '300 x 300',
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '500 x 400',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `file_original_name`, `file_name`, `img_path`, `big_path`, `small_path`, `thumbnail_path`, `extension`, `type`, `file_size`, `width`, `height`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 'dark_logo', 'dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(2, 1, 'white_logo', 'white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(3, 1, 'fav', 'fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(4, 1, 'background_image', 'background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(5, 1, 'android_icon', 'android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(6, 1, 'iso_icon', 'iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(7, 1, 'support', 'support.png', 'static/support.png', 'static/support.png', 'static/support.png', 'static/support.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(8, 1, 'attendance', 'attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(9, 1, 'notice', 'notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(10, 1, 'expense', 'expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(11, 1, 'leave', 'leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(12, 1, 'approval', 'approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(13, 1, 'phonebook', 'phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(14, 1, 'visit', 'visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(15, 1, 'appointments', 'appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(16, 1, 'break', 'break.png', 'static/break.png', 'static/break.png', 'static/break.png', 'static/break.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(17, 1, 'report', 'report.png', 'static/report.png', 'static/report.png', 'static/report.png', 'static/report.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(21, 1, 'portfolio1', 'portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(22, 1, 'portfolio2', 'portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(23, 1, 'portfolio3', 'portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(24, 1, 'portfolio4', 'portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(25, 1, 'portfolio5', 'portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(26, 1, 'portfolio6', 'portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(27, 1, 'portfolio7', 'portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(28, 1, 'portfolio8', 'portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(29, 1, 'team1', 'team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(30, 1, 'team2', 'team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(31, 1, 'team3', 'team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(32, 1, 'team4', 'team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(33, 1, 'team5', 'team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(34, 1, 'team6', 'team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(35, 1, 'team7', 'team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(36, 1, 'team8', 'team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', '.png', 'png', 0, 100, 100, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(37, 1, 'team8', 'team8.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', '.png', 'png', 0, 300, 700, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(38, 1, 'team8', 'team8.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', '.png', 'png', 0, 300, 700, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(39, 1, 'team8', 'team8.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', '.png', 'png', 0, 300, 700, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(40, 1, 'cms1', 'cms1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(41, 1, 'cms2', 'cms2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(42, 1, 'cms3', 'cms3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(43, 1, 'cms4', 'cms4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(44, 1, 'cms5', 'cms5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(45, 1, 'feature', 'feature.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(46, 1, 'cms6', 'cms6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(47, 1, 'cms7', 'cms7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(48, 1, 'cms8', 'cms8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1),
(49, 1, 'hero-image', 'hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', '.png', 'png', 0, 500, 500, 1, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userID` int DEFAULT NULL,
  `face_recognition` tinyint DEFAULT '1',
  `face_data` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_hr` tinyint DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `shift_id` bigint UNSIGNED DEFAULT NULL,
  `designation_id` bigint UNSIGNED DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verification code',
  `manager_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_type` enum('Permanent','On Probation','Contractual','Intern') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'On Probation',
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_file_id` bigint UNSIGNED DEFAULT NULL,
  `passport_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_is_notified` tinyint NOT NULL DEFAULT '0',
  `eid_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid_file_id` bigint UNSIGNED DEFAULT NULL,
  `eid_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid_is_notified` tinyint NOT NULL DEFAULT '0',
  `visa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_file_id` bigint UNSIGNED DEFAULT NULL,
  `visa_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_is_notified` tinyint NOT NULL DEFAULT '0',
  `insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_file_id` bigint UNSIGNED DEFAULT NULL,
  `insurance_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_is_notified` tinyint NOT NULL DEFAULT '0',
  `labour_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_card_file_id` bigint UNSIGNED DEFAULT NULL,
  `labour_card_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_card_is_notified` tinyint NOT NULL DEFAULT '0',
  `nid_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_card_id` bigint UNSIGNED DEFAULT NULL COMMENT 'this will be uploaded file',
  `tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_id_front_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_id_back_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verify token',
  `email_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verify token',
  `is_email_verified` enum('verified','non-verified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'verified',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'email verified at',
  `phone_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'phone verify token',
  `is_phone_verified` enum('verified','non-verified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'verified',
  `phone_verified_at` timestamp NULL DEFAULT NULL COMMENT 'phone verified at',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hints` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user can set a password hint for easy remember',
  `avatar_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'last login at',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'last logout at',
  `last_login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'last login ip',
  `device_token` longtext COLLATE utf8mb4_unicode_ci COMMENT 'device_token from firebase',
  `login_access` tinyint NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Unisex','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion` enum('Islam','Hindu','Christian') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Islam',
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `basic_salary` double(16,2) NOT NULL DEFAULT '0.00',
  `marital_status` enum('Married','Unmarried') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unmarried',
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `payslip_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 = monthly, 2 = weekly, 3 = daily',
  `late_check_in` int NOT NULL DEFAULT '0',
  `early_check_out` int NOT NULL DEFAULT '0',
  `extra_leave` int NOT NULL DEFAULT '0',
  `monthly_leave` int NOT NULL DEFAULT '0',
  `is_free_location` tinyint NOT NULL DEFAULT '0',
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Dhaka',
  `speak_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `face_image` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1',
  `attendance_method` json DEFAULT NULL,
  `app_token` text COLLATE utf8mb4_unicode_ci,
  `device_id` text COLLATE utf8mb4_unicode_ci,
  `device_info` text COLLATE utf8mb4_unicode_ci COMMENT 'device name, device model, device board '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `name`, `userID`, `face_recognition`, `face_data`, `email`, `phone`, `is_admin`, `is_hr`, `role_id`, `department_id`, `shift_id`, `designation_id`, `permissions`, `verification_code`, `manager_id`, `employee_id`, `employee_type`, `grade`, `nationality`, `facebook_link`, `linkedin_link`, `instagram_link`, `passport_number`, `passport_file_id`, `passport_expire_date`, `passport_is_notified`, `eid_number`, `eid_file_id`, `eid_expire_date`, `eid_is_notified`, `visa_number`, `visa_file_id`, `visa_expire_date`, `visa_is_notified`, `insurance_number`, `insurance_file_id`, `insurance_expire_date`, `insurance_is_notified`, `labour_card_number`, `labour_card_file_id`, `labour_card_expire_date`, `labour_card_is_notified`, `nid_card_number`, `nid_card_id`, `tin`, `tin_id_front_file`, `tin_id_back_file`, `bank_name`, `bank_account`, `last_login_device`, `device_uuid`, `emergency_name`, `emergency_mobile_number`, `emergency_mobile_relationship`, `_token`, `email_verify_token`, `is_email_verified`, `email_verified_at`, `phone_verify_token`, `is_phone_verified`, `phone_verified_at`, `password`, `password_hints`, `avatar_id`, `status_id`, `last_login_at`, `last_logout_at`, `last_login_ip`, `device_token`, `login_access`, `address`, `gender`, `birth_date`, `religion`, `blood_group`, `joining_date`, `basic_salary`, `marital_status`, `contract_start_date`, `contract_end_date`, `payslip_type`, `late_check_in`, `early_check_out`, `extra_leave`, `monthly_leave`, `is_free_location`, `time_zone`, `speak_language`, `lang`, `social_id`, `social_type`, `remember_token`, `deleted_at`, `face_image`, `created_at`, `updated_at`, `company_id`, `branch_id`, `attendance_method`, `app_token`, `device_id`, `device_info`) VALUES
(1, 223, 'Admin', NULL, 1, NULL, 'admin@taqnahhr.com', '0XXXXXXXXXXX', '1', 0, 1, NULL, NULL, NULL, '\"[]\"', NULL, NULL, NULL, 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9OpKn6uiz2', 'verified', '2024-06-14 08:49:27', NULL, 'verified', NULL, '$2y$10$xN2ZklbzFpjk6Fre6c90G.59U44CzbJ4cJaimzrtBj1MpUCvhGV8C', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Islam', NULL, NULL, 0.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', 'english', NULL, NULL, NULL, 'iDNa67YjPm', NULL, NULL, '2024-06-14 08:49:27', '2024-06-14 08:49:27', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `device_token` longtext COLLATE utf8mb4_unicode_ci COMMENT 'device_token from firebase',
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'device_name from firebase',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `document_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_expiration` date DEFAULT NULL,
  `document_request_description` text COLLATE utf8mb4_unicode_ci,
  `document_request_approved` tinyint(1) DEFAULT NULL,
  `document_request_date` date DEFAULT NULL,
  `document_notification_date` date DEFAULT NULL,
  `attachment_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_document_type_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_document_requests`
--

CREATE TABLE `user_document_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `company_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `request_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_description` text COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) DEFAULT NULL,
  `request_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_document_types`
--

CREATE TABLE `user_document_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_document_types`
--

INSERT INTO `user_document_types` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Resume/CV', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(2, 'Job Offer Letter', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(3, 'Employment Contract', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(4, 'W-4 Form', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(5, 'I-9 Form', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(6, 'Payroll Records', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(7, 'Employee Handbook', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(8, 'Passport', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(9, 'Social Security Number (SSN)', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1),
(10, 'Work Authorization', 1, '2024-06-14 08:49:26', '2024-06-14 08:49:26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_shift_assigns`
--

CREATE TABLE `user_shift_assigns` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_tenant_mappings`
--

CREATE TABLE `user_tenant_mappings` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_meetings`
--

CREATE TABLE `virtual_meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int DEFAULT '0' COMMENT '0 means unlimited',
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'jitsi',
  `description` text COLLATE utf8mb4_unicode_ci,
  `datetime` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('created','started','reached','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `cancel_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_images`
--

CREATE TABLE `visit_images` (
  `id` bigint UNSIGNED NOT NULL,
  `imageable_id` int UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_notes`
--

CREATE TABLE `visit_notes` (
  `id` bigint UNSIGNED NOT NULL,
  `visit_id` bigint UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('created','started','reached') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_schedules`
--

CREATE TABLE `visit_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_id` bigint UNSIGNED NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('created','started','reached','end') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `started_at` timestamp NULL DEFAULT NULL,
  `reached_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weekends`
--

CREATE TABLE `weekends` (
  `id` bigint UNSIGNED NOT NULL,
  `name` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `is_weekend` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `status_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT '1',
  `updated_by` bigint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT '1',
  `branch_id` bigint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `activity_log_batch_uuid_index` (`batch_uuid`),
  ADD KEY `activity_log_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salaries_amount_date_index` (`amount`,`date`),
  ADD KEY `advance_salaries_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `advance_type_id` (`advance_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `return_status` (`return_status`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salary_logs_amount_index` (`amount`),
  ADD KEY `advance_salary_logs_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `advance_salary_id` (`advance_salary_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_types_id_index` (`id`),
  ADD KEY `advance_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_contents_user_id_foreign` (`user_id`),
  ADD KEY `all_contents_status_id_foreign` (`status_id`),
  ADD KEY `all_contents_type_title_slug_index` (`type`,`title`,`slug`),
  ADD KEY `all_contents_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_setups_company_id_index` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinments_created_by_foreign` (`created_by`),
  ADD KEY `appoinments_appoinment_with_foreign` (`appoinment_with`),
  ADD KEY `appoinments_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `appoinments_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinment_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `appoinment_participants_appoinment_id_foreign` (`appoinment_id`),
  ADD KEY `appoinment_participants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appraisals_user_id_foreign` (`user_id`),
  ADD KEY `appraisals_added_by_foreign` (`added_by`),
  ADD KEY `appraisals_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appreciates_user_id_foreign` (`user_id`),
  ADD KEY `appreciates_appreciate_by_foreign` (`appreciate_by`),
  ADD KEY `appreciates_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_screens_status_id_foreign` (`status_id`),
  ADD KEY `app_screens_company_id_index` (`company_id`);

--
-- Indexes for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_leaves_status_id_foreign` (`status_id`),
  ADD KEY `assign_leaves_type_id_status_id_index` (`type_id`,`status_id`),
  ADD KEY `assign_leaves_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_shift_id_foreign` (`shift_id`),
  ADD KEY `attendances_status_id_foreign` (`status_id`),
  ADD KEY `attendances_face_image_foreign` (`face_image`),
  ADD KEY `attendances_in_status_approve_by_foreign` (`in_status_approve_by`),
  ADD KEY `attendances_out_status_approve_by_foreign` (`out_status_approve_by`),
  ADD KEY `attendances_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `attendances_check_in_image_foreign` (`check_in_image`),
  ADD KEY `attendances_check_out_image_foreign` (`check_out_image`);

--
-- Indexes for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_infos_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`),
  ADD KEY `author_infos_created_by_foreign` (`created_by`),
  ADD KEY `author_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `author_infos_approved_by_foreign` (`approved_by`),
  ADD KEY `author_infos_rejected_by_foreign` (`rejected_by`),
  ADD KEY `author_infos_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `author_infos_published_by_foreign` (`published_by`),
  ADD KEY `author_infos_unpublished_by_foreign` (`unpublished_by`),
  ADD KEY `author_infos_deleted_by_foreign` (`deleted_by`),
  ADD KEY `author_infos_archived_by_foreign` (`archived_by`),
  ADD KEY `author_infos_restored_by_foreign` (`restored_by`),
  ADD KEY `author_infos_referred_by_foreign` (`referred_by`),
  ADD KEY `author_infos_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_user_id_foreign` (`user_id`),
  ADD KEY `awards_created_by_foreign` (`created_by`),
  ADD KEY `awards_attachment_foreign` (`attachment`),
  ADD KEY `awards_goal_id_foreign` (`goal_id`),
  ADD KEY `awards_award_type_id_status_id_user_id_index` (`award_type_id`,`status_id`,`user_id`),
  ADD KEY `awards_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `award_types_id_index` (`id`),
  ADD KEY `award_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_number_unique` (`account_number`),
  ADD KEY `bank_accounts_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `bank_accounts_user_id_index` (`user_id`),
  ADD KEY `bank_accounts_status_id_index` (`status_id`),
  ADD KEY `bank_accounts_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_name_type_serial_index` (`name`,`type`,`serial`),
  ADD KEY `categories_status_id_index` (`status_id`),
  ADD KEY `categories_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_id_index` (`id`),
  ADD KEY `commissions_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`),
  ADD KEY `companies_saas_company_id_foreign` (`saas_company_id`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `trade_licence_id` (`trade_licence_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `company_configs`
--
ALTER TABLE `company_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_configs_company_id_index` (`company_id`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competences_competence_type_id_foreign` (`competence_type_id`),
  ADD KEY `competences_status_id_index` (`status_id`),
  ADD KEY `competences_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_types_status_id_index` (`status_id`),
  ADD KEY `competence_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference_members`
--
ALTER TABLE `conference_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conference_members_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`),
  ADD KEY `conversations_image_id_foreign` (`image_id`),
  ADD KEY `conversations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_leaves_user_id_foreign` (`user_id`),
  ADD KEY `daily_leaves_approved_by_tl_foreign` (`approved_by_tl`),
  ADD KEY `daily_leaves_approved_by_hr_foreign` (`approved_by_hr`),
  ADD KEY `daily_leaves_rejected_by_tl_foreign` (`rejected_by_tl`),
  ADD KEY `daily_leaves_rejected_by_hr_foreign` (`rejected_by_hr`),
  ADD KEY `daily_leaves_author_info_id_foreign` (`author_info_id`),
  ADD KEY `daily_leaves_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_backups_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `date_formats`
--
ALTER TABLE `date_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_formats_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_status_id_foreign` (`status_id`),
  ADD KEY `departments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `deposits_attachment_foreign` (`attachment`),
  ADD KEY `deposits_amount_date_index` (`amount`,`date`),
  ADD KEY `deposits_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_status_id_foreign` (`status_id`),
  ADD KEY `designations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_user_id_foreign` (`user_id`),
  ADD KEY `discussions_project_id_status_id_user_id_index` (`project_id`,`status_id`,`user_id`),
  ADD KEY `discussions_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `discussion_comments_discussion_id_user_id_index` (`discussion_id`,`user_id`),
  ADD KEY `discussion_comments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_likes_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_likes_user_id_foreign` (`user_id`),
  ADD KEY `discussion_likes_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`),
  ADD KEY `domains_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duty_schedules_shift_id_foreign` (`shift_id`),
  ADD KEY `duty_schedules_status_id_foreign` (`status_id`),
  ADD KEY `duty_schedules_id_index` (`id`),
  ADD KEY `duty_schedules_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_breaks_user_id_foreign` (`user_id`),
  ADD KEY `employee_breaks_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_tasks_assigned_id_foreign` (`assigned_id`),
  ADD KEY `employee_tasks_created_by_foreign` (`created_by`),
  ADD KEY `employee_tasks_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `employee_tasks_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `expenses_attachment_foreign` (`attachment`),
  ADD KEY `expenses_amount_date_index` (`amount`,`date`),
  ADD KEY `expenses_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expense_claims_invoice_number_unique` (`invoice_number`),
  ADD KEY `expense_claims_user_id_foreign` (`user_id`),
  ADD KEY `expense_claims_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `expense_claims_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_claim_details_user_id_foreign` (`user_id`),
  ADD KEY `expense_claim_details_hrm_expense_id_foreign` (`hrm_expense_id`),
  ADD KEY `expense_claim_details_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `expense_claim_details_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `front_teams`
--
ALTER TABLE `front_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_teams_attachment_foreign` (`attachment`),
  ADD KEY `front_teams_user_id_foreign` (`user_id`),
  ADD KEY `front_teams_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goals_goal_type_id_foreign` (`goal_type_id`),
  ADD KEY `goals_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goal_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_attachment_id_foreign` (`attachment_id`),
  ADD KEY `holidays_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_pages_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_expenses_user_id_foreign` (`user_id`),
  ADD KEY `hrm_expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `hrm_expenses_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `hrm_expenses_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `claimed_status_id` (`is_claimed_status_id`),
  ADD KEY `claimed_approved_status_id` (`claimed_approved_status_id`);

--
-- Indexes for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_languages_status_id_company_id_index` (`status_id`,`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_expense_categories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `income_expense_categories_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicators_department_id_foreign` (`department_id`),
  ADD KEY `indicators_shift_id_foreign` (`shift_id`),
  ADD KEY `indicators_designation_id_foreign` (`designation_id`),
  ADD KEY `indicators_added_by_foreign` (`added_by`),
  ADD KEY `indicators_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jitsi_meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_status_company_id_branch_id_index` (`status`,`company_id`,`branch_id`);

--
-- Indexes for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `late_in_out_reasons_attendance_id_foreign` (`attendance_id`),
  ADD KEY `late_in_out_reasons_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_assign_leave_id_foreign` (`assign_leave_id`),
  ADD KEY `leave_requests_user_id_foreign` (`user_id`),
  ADD KEY `leave_requests_substitute_id_foreign` (`substitute_id`),
  ADD KEY `leave_requests_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `leave_requests_author_info_id_foreign` (`author_info_id`),
  ADD KEY `leave_requests_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_settings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_status_id_foreign` (`status_id`),
  ADD KEY `leave_types_name_status_id_company_id_branch_id_index` (`name`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_years`
--
ALTER TABLE `leave_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_years_type_id_foreign` (`type_id`),
  ADD KEY `leave_years_status_id_foreign` (`status_id`),
  ADD KEY `leave_years_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_binds_user_id_foreign` (`user_id`),
  ADD KEY `location_binds_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_logs_user_id_company_id_branch_id_date_index` (`user_id`,`company_id`,`branch_id`,`date`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_user_id_foreign` (`user_id`),
  ADD KEY `meetings_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_members_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `meeting_participants_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_participants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_information_created_by_foreign` (`created_by`),
  ADD KEY `meta_information_updated_by_foreign` (`updated_by`),
  ADD KEY `meta_information_type_company_id_branch_id_index` (`type`,`company_id`,`branch_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_services`
--
ALTER TABLE `module_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_services_institution_id_foreign` (`institution_id`),
  ADD KEY `module_services_package_id_foreign` (`package_id`),
  ADD KEY `module_services_status_id_foreign` (`status_id`),
  ADD KEY `module_services_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `module_service_details`
--
ALTER TABLE `module_service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_service_details_status_id_foreign` (`status_id`),
  ADD KEY `module_service_details_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_foreign` (`user_id`),
  ADD KEY `notes_project_id_company_id_status_id_user_id_branch_id_index` (`project_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_created_by_foreign` (`created_by`),
  ADD KEY `notices_department_id_foreign` (`department_id`),
  ADD KEY `notices_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `notices_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `notice_departments`
--
ALTER TABLE `notice_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_departments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_view_logs_user_id_foreign` (`user_id`),
  ADD KEY `notice_view_logs_notice_id_foreign` (`notice_id`),
  ADD KEY `notice_view_logs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifications_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_old_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_old_receiver_id_foreign` (`receiver_id`),
  ADD KEY `notifications_old_image_id_foreign` (`image_id`),
  ADD KEY `notifications_old_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_types_type_unique` (`type`),
  ADD KEY `notification_types_icon_foreign` (`icon`),
  ADD KEY `notification_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_histories_code_unique` (`code`),
  ADD KEY `payment_histories_user_id_foreign` (`user_id`),
  ADD KEY `payment_histories_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_histories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `payment_histories_index` (`payment_date`,`payment_status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_details_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_details_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payment_history_details_paid_by_id_foreign` (`paid_by_id`),
  ADD KEY `payment_history_details_index` (`user_id`,`payment_status_id`,`company_id`,`branch_id`),
  ADD KEY `payment_status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_logs_user_id_foreign` (`user_id`),
  ADD KEY `payment_history_logs_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_logs_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_history_logs_paid_by_id_foreign` (`paid_by_id`),
  ADD KEY `payment_history_logs_date_paid_by_id_company_id_branch_id_index` (`date`,`paid_by_id`,`company_id`,`branch_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `payment_methods_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_status_id_type_company_id_branch_id_index` (`status_id`,`type`,`company_id`,`branch_id`),
  ADD KEY `payment_types_status_id_index` (`status_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plan_duration_types`
--
ALTER TABLE `plan_duration_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_duration_types_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `plan_features`
--
ALTER TABLE `plan_features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_features_key_unique` (`key`),
  ADD KEY `plan_features_image_id_foreign` (`image_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_attachment_foreign` (`attachment`),
  ADD KEY `portfolios_user_id_foreign` (`user_id`),
  ADD KEY `portfolios_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_plans_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_plan_features_pricing_plan_id_foreign` (`pricing_plan_id`),
  ADD KEY `pricing_plan_features_plan_feature_id_foreign` (`plan_feature_id`),
  ADD KEY `pricing_plan_features_id_company_id_branch_id_index` (`id`,`company_id`,`branch_id`);

--
-- Indexes for table `pricing_plan_prices`
--
ALTER TABLE `pricing_plan_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_plan_prices_pricing_plan_id_foreign` (`pricing_plan_id`),
  ADD KEY `pricing_plan_prices_plan_duration_type_id_foreign` (`plan_duration_type_id`),
  ADD KEY `pricing_plan_prices_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_goal_id_foreign` (`goal_id`),
  ADD KEY `projects_index` (`client_id`,`status_id`,`priority`,`start_date`,`end_date`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `payment` (`payment`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_activities_user_id_foreign` (`user_id`),
  ADD KEY `project_activities_project_id_user_id_company_id_branch_id_index` (`project_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_user_id_foreign` (`user_id`),
  ADD KEY `project_files_attachment_foreign` (`attachment`),
  ADD KEY `project_files_index` (`project_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `project_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `project_file_comments_index` (`project_file_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_membars_user_id_foreign` (`user_id`),
  ADD KEY `project_membars_added_by_foreign` (`added_by`),
  ADD KEY `project_membars_index` (`project_id`,`company_id`,`branch_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_payments_project_id_company_id_branch_id_amount_index` (`project_id`,`company_id`,`branch_id`,`amount`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`),
  ADD KEY `role_users_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `saas_cms`
--
ALTER TABLE `saas_cms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saas_cms_attachment_id_foreign` (`attachment_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `saas_subscriptions`
--
ALTER TABLE `saas_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saas_subscriptions_company_id_foreign` (`company_id`),
  ADD KEY `saas_subscriptions_pricing_plan_price_id_foreign` (`pricing_plan_price_id`),
  ADD KEY `saas_subscriptions_status_id_foreign` (`status_id`),
  ADD KEY `saas_subscriptions_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_generates_index` (`amount`,`date`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_payment_logs_salary_generate_id_foreign` (`salary_generate_id`),
  ADD KEY `salary_payment_logs_amount_company_id_branch_id_user_id_index` (`amount`,`company_id`,`branch_id`,`user_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setups_gross_salary_index` (`gross_salary`),
  ADD KEY `salary_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setup_details_amount_status_id_company_id_branch_id_index` (`amount`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `salary_setup_id` (`salary_setup_id`),
  ADD KEY `commission_id` (`commission_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_sheet_reports_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`),
  ADD KEY `services_attachment_foreign` (`attachment`),
  ADD KEY `services_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `service_brands`
--
ALTER TABLE `service_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_brands_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `service_institutions`
--
ALTER TABLE `service_institutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_institutions_slug_unique` (`slug`),
  ADD KEY `service_institutions_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `service_institutions_name_index` (`name`);

--
-- Indexes for table `service_machines`
--
ALTER TABLE `service_machines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_machines_brand_id_foreign` (`brand_id`),
  ADD KEY `service_machines_model_id_foreign` (`model_id`),
  ADD KEY `service_machines_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `service_models`
--
ALTER TABLE `service_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_models_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_packages_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `service_package_details`
--
ALTER TABLE `service_package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_package_details_machine_id_foreign` (`machine_id`),
  ADD KEY `service_package_details_brand_id_foreign` (`brand_id`),
  ADD KEY `service_package_details_model_id_foreign` (`model_id`),
  ADD KEY `service_package_details_package_id_foreign` (`package_id`),
  ADD KEY `service_package_details_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_status_id_foreign` (`status_id`),
  ADD KEY `settings_name_context_status_id_company_id_index` (`name`,`context`,`status_id`,`company_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_logs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_identities_provider_id_unique` (`provider_id`),
  ADD KEY `social_identities_user_id_foreign` (`user_id`),
  ADD KEY `social_identities_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_name_class_index` (`name`,`class`),
  ADD KEY `statuses_name_index` (`name`),
  ADD KEY `statuses_class_index` (`class`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_plans_identifier_unique` (`identifier`),
  ADD UNIQUE KEY `subscription_plans_stripe_id_unique` (`stripe_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_tickets_user_id_foreign` (`user_id`),
  ADD KEY `support_tickets_assigned_id_foreign` (`assigned_id`),
  ADD KEY `support_tickets_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `support_tickets_type_id_foreign` (`type_id`),
  ADD KEY `support_tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `support_tickets_index` (`status_id`,`assigned_id`,`type_id`,`priority_id`,`company_id`,`branch_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_goal_id_foreign` (`goal_id`),
  ADD KEY `tasks_company_id_branch_id_priority_status_id_index` (`company_id`,`branch_id`,`priority`,`status_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_activities_user_id_foreign` (`user_id`),
  ADD KEY `task_activities_task_id_user_id_company_id_branch_id_index` (`task_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussions_task_id_foreign` (`task_id`),
  ADD KEY `task_discussions_user_id_foreign` (`user_id`),
  ADD KEY `task_discussions_file_id_foreign` (`file_id`),
  ADD KEY `task_discussions_index` (`status_id`,`company_id`,`branch_id`,`user_id`,`task_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_discussion_comments_index` (`task_discussion_id`,`company_id`,`branch_id`,`comment_id`,`user_id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_files_user_id_foreign` (`user_id`),
  ADD KEY `task_files_attachment_foreign` (`attachment`),
  ADD KEY `task_files_task_id_user_id_status_id_company_id_branch_id_index` (`task_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_file_comments_index` (`task_file_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_followers_user_id_foreign` (`user_id`),
  ADD KEY `task_followers_added_by_foreign` (`added_by`),
  ADD KEY `task_followers_is_creator_foreign` (`is_creator`),
  ADD KEY `task_followers_index` (`task_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_members`
--
ALTER TABLE `task_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_members_user_id_foreign` (`user_id`),
  ADD KEY `task_members_added_by_foreign` (`added_by`),
  ADD KEY `task_members_index` (`task_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_notes_user_id_foreign` (`user_id`),
  ADD KEY `task_notes_task_id_company_id_status_id_user_id_branch_id_index` (`task_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `teams_user_id_foreign` (`user_id`),
  ADD KEY `teams_team_lead_id_foreign` (`team_lead_id`),
  ADD KEY `teams_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_user_id_foreign` (`user_id`),
  ADD KEY `team_members_team_id_company_id_branch_id_index` (`team_id`,`company_id`,`branch_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_subscriptions_status_id_foreign` (`status_id`),
  ADD KEY `tenant_subscriptions_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `tenant_user_impersonation_tokens`
--
ALTER TABLE `tenant_user_impersonation_tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `tenant_user_impersonation_tokens_tenant_id_foreign` (`tenant_id`),
  ADD KEY `tenant_user_impersonation_tokens_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_support_ticket_id_foreign` (`support_ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`),
  ADD KEY `ticket_replies_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transactions_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_user_id_foreign` (`user_id`),
  ADD KEY `travel_created_by_foreign` (`created_by`),
  ADD KEY `travel_attachment_foreign` (`attachment`),
  ADD KEY `travel_goal_id_foreign` (`goal_id`),
  ADD KEY `travel_index` (`travel_type_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `uploads_status_id_index` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_shift_id_foreign` (`shift_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`),
  ADD KEY `users_manager_id_foreign` (`manager_id`),
  ADD KEY `users_passport_file_id_foreign` (`passport_file_id`),
  ADD KEY `users_eid_file_id_foreign` (`eid_file_id`),
  ADD KEY `users_visa_file_id_foreign` (`visa_file_id`),
  ADD KEY `users_insurance_file_id_foreign` (`insurance_file_id`),
  ADD KEY `users_labour_card_file_id_foreign` (`labour_card_file_id`),
  ADD KEY `users_nid_card_id_foreign` (`nid_card_id`),
  ADD KEY `users_avatar_id_foreign` (`avatar_id`),
  ADD KEY `users_face_image_foreign` (`face_image`),
  ADD KEY `users_combined_index` (`status_id`,`company_id`,`branch_id`,`email`,`manager_id`,`role_id`,`designation_id`,`is_admin`,`is_hr`,`department_id`,`shift_id`),
  ADD KEY `users_status_id_index` (`status_id`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_devices_user_id_company_id_branch_id_index` (`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_documents_attachment_id_foreign` (`attachment_id`),
  ADD KEY `user_documents_user_id_foreign` (`user_id`),
  ADD KEY `user_documents_user_document_type_id_foreign` (`user_document_type_id`),
  ADD KEY `user_documents_index` (`id`,`user_id`,`user_document_type_id`,`document_number`,`document_expiration`,`company_id`,`branch_id`);

--
-- Indexes for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_document_requests_status_id_foreign` (`status_id`),
  ADD KEY `user_document_requests_user_id_index` (`user_id`),
  ADD KEY `user_document_requests_request_type_index` (`request_type`),
  ADD KEY `user_document_requests_approved_index` (`approved`),
  ADD KEY `user_document_requests_request_date_index` (`request_date`);

--
-- Indexes for table `user_document_types`
--
ALTER TABLE `user_document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_document_types_name_unique` (`name`),
  ADD KEY `user_document_types_name_index` (`name`),
  ADD KEY `user_document_types_id_name_status_id_company_id_branch_id_index` (`id`,`name`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_shift_assigns_user_id_foreign` (`user_id`),
  ADD KEY `user_shift_assigns_shift_id_foreign` (`shift_id`),
  ADD KEY `user_shift_assigns_status_id_index` (`status_id`);

--
-- Indexes for table `user_tenant_mappings`
--
ALTER TABLE `user_tenant_mappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_tenant_mappings_email_unique` (`email`),
  ADD KEY `user_tenant_mappings_company_id_foreign` (`company_id`),
  ADD KEY `user_tenant_mappings_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtual_meetings_created_by_foreign` (`created_by`),
  ADD KEY `virtual_meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_user_id_foreign` (`user_id`),
  ADD KEY `visits_status_company_id_branch_id_index` (`status`,`company_id`,`branch_id`);

--
-- Indexes for table `visit_images`
--
ALTER TABLE `visit_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_images_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_notes_visit_id_foreign` (`visit_id`),
  ADD KEY `visit_notes_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_schedules_visit_id_company_id_branch_id_index` (`visit_id`,`company_id`,`branch_id`);

--
-- Indexes for table `weekends`
--
ALTER TABLE `weekends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weekends_status_id_foreign` (`status_id`),
  ADD KEY `weekends_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_types`
--
ALTER TABLE `advance_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_contents`
--
ALTER TABLE `all_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `api_setups`
--
ALTER TABLE `api_setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appoinments`
--
ALTER TABLE `appoinments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appreciates`
--
ALTER TABLE `appreciates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_screens`
--
ALTER TABLE `app_screens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author_infos`
--
ALTER TABLE `author_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_configs`
--
ALTER TABLE `company_configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competence_types`
--
ALTER TABLE `competence_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conference_members`
--
ALTER TABLE `conference_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_formats`
--
ALTER TABLE `date_formats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claims`
--
ALTER TABLE `expense_claims`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_teams`
--
ALTER TABLE `front_teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_setups`
--
ALTER TABLE `ip_setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_settings`
--
ALTER TABLE `leave_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_years`
--
ALTER TABLE `leave_years`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_binds`
--
ALTER TABLE `location_binds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_logs`
--
ALTER TABLE `location_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_members`
--
ALTER TABLE `meeting_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_information`
--
ALTER TABLE `meta_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `module_services`
--
ALTER TABLE `module_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_service_details`
--
ALTER TABLE `module_service_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_departments`
--
ALTER TABLE `notice_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_old`
--
ALTER TABLE `notifications_old`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_duration_types`
--
ALTER TABLE `plan_duration_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plan_features`
--
ALTER TABLE `plan_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricing_plans`
--
ALTER TABLE `pricing_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `pricing_plan_prices`
--
ALTER TABLE `pricing_plan_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_activities`
--
ALTER TABLE `project_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_membars`
--
ALTER TABLE `project_membars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_payments`
--
ALTER TABLE `project_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saas_cms`
--
ALTER TABLE `saas_cms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `saas_subscriptions`
--
ALTER TABLE `saas_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_generates`
--
ALTER TABLE `salary_generates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setups`
--
ALTER TABLE `salary_setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_brands`
--
ALTER TABLE `service_brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_institutions`
--
ALTER TABLE `service_institutions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT for table `service_machines`
--
ALTER TABLE `service_machines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_models`
--
ALTER TABLE `service_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_packages`
--
ALTER TABLE `service_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_package_details`
--
ALTER TABLE `service_package_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_identities`
--
ALTER TABLE `social_identities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_activities`
--
ALTER TABLE `task_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_discussions`
--
ALTER TABLE `task_discussions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_followers`
--
ALTER TABLE `task_followers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_members`
--
ALTER TABLE `task_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_notes`
--
ALTER TABLE `task_notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_types`
--
ALTER TABLE `travel_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_document_types`
--
ALTER TABLE `user_document_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tenant_mappings`
--
ALTER TABLE `user_tenant_mappings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_images`
--
ALTER TABLE `visit_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_notes`
--
ALTER TABLE `visit_notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weekends`
--
ALTER TABLE `weekends`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `accounts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD CONSTRAINT `advance_salaries_advance_type_id_foreign` FOREIGN KEY (`advance_type_id`) REFERENCES `advance_types` (`id`),
  ADD CONSTRAINT `advance_salaries_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_return_status_foreign` FOREIGN KEY (`return_status`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD CONSTRAINT `advance_salary_logs_advance_salary_id_foreign` FOREIGN KEY (`advance_salary_id`) REFERENCES `advance_salaries` (`id`),
  ADD CONSTRAINT `advance_salary_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD CONSTRAINT `advance_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD CONSTRAINT `all_contents_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `all_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD CONSTRAINT `api_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD CONSTRAINT `appoinments_appoinment_with_foreign` FOREIGN KEY (`appoinment_with`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appoinments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD CONSTRAINT `appoinment_participants_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `appoinment_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD CONSTRAINT `appraisals_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appraisals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD CONSTRAINT `appreciates_appreciate_by_foreign` FOREIGN KEY (`appreciate_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appreciates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD CONSTRAINT `app_screens_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD CONSTRAINT `assign_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `assign_leaves_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_check_in_image_foreign` FOREIGN KEY (`check_in_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_check_out_image_foreign` FOREIGN KEY (`check_out_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_in_status_approve_by_foreign` FOREIGN KEY (`in_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_out_status_approve_by_foreign` FOREIGN KEY (`out_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD CONSTRAINT `author_infos_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_published_by_foreign` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_rejected_by_foreign` FOREIGN KEY (`rejected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_restored_by_foreign` FOREIGN KEY (`restored_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_unpublished_by_foreign` FOREIGN KEY (`unpublished_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `awards_award_type_id_foreign` FOREIGN KEY (`award_type_id`) REFERENCES `award_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `awards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `award_types`
--
ALTER TABLE `award_types`
  ADD CONSTRAINT `award_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `commissions`
--
ALTER TABLE `commissions`
  ADD CONSTRAINT `commissions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `companies_saas_company_id_foreign` FOREIGN KEY (`saas_company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `companies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `companies_trade_licence_id_foreign` FOREIGN KEY (`trade_licence_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_competence_type_id_foreign` FOREIGN KEY (`competence_type_id`) REFERENCES `competence_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competences_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD CONSTRAINT `competence_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD CONSTRAINT `daily_leaves_approved_by_hr_foreign` FOREIGN KEY (`approved_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_approved_by_tl_foreign` FOREIGN KEY (`approved_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`),
  ADD CONSTRAINT `daily_leaves_rejected_by_hr_foreign` FOREIGN KEY (`rejected_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_rejected_by_tl_foreign` FOREIGN KEY (`rejected_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `daily_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `deposits_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `deposits_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD CONSTRAINT `discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `discussion_comments_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD CONSTRAINT `discussion_likes_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD CONSTRAINT `duty_schedules_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `duty_schedules_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `email_templates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `email_templates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD CONSTRAINT `employee_breaks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD CONSTRAINT `employee_tasks_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD CONSTRAINT `expense_claims_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claims_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expense_claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD CONSTRAINT `expense_claim_details_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_hrm_expense_id_foreign` FOREIGN KEY (`hrm_expense_id`) REFERENCES `hrm_expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `features_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `front_teams`
--
ALTER TABLE `front_teams`
  ADD CONSTRAINT `front_teams_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `front_teams_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `front_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `goals_goal_type_id_foreign` FOREIGN KEY (`goal_type_id`) REFERENCES `goal_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goals_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD CONSTRAINT `goal_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `holidays_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD CONSTRAINT `home_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `home_pages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `home_pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD CONSTRAINT `hrm_expenses_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_claimed_approved_status_id_foreign` FOREIGN KEY (`claimed_approved_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_is_claimed_status_id_foreign` FOREIGN KEY (`is_claimed_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD CONSTRAINT `hrm_languages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD CONSTRAINT `income_expense_categories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `income_expense_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `indicators`
--
ALTER TABLE `indicators`
  ADD CONSTRAINT `indicators_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD CONSTRAINT `ip_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  ADD CONSTRAINT `jitsi_meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD CONSTRAINT `late_in_out_reasons_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_assign_leave_id_foreign` FOREIGN KEY (`assign_leave_id`) REFERENCES `assign_leaves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `leave_requests_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`),
  ADD CONSTRAINT `leave_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `leave_requests_substitute_id_foreign` FOREIGN KEY (`substitute_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leave_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD CONSTRAINT `leave_settings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `leave_years`
--
ALTER TABLE `leave_years`
  ADD CONSTRAINT `leave_years_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `leave_years_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD CONSTRAINT `location_binds_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `location_binds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD CONSTRAINT `location_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD CONSTRAINT `meeting_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD CONSTRAINT `meeting_participants_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD CONSTRAINT `meeting_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD CONSTRAINT `meta_information_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meta_information_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_services`
--
ALTER TABLE `module_services`
  ADD CONSTRAINT `module_services_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `service_institutions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_services_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_services_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `module_service_details`
--
ALTER TABLE `module_service_details`
  ADD CONSTRAINT `module_service_details_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notices_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `notices_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD CONSTRAINT `notice_view_logs_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `notice_view_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD CONSTRAINT `notifications_old_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD CONSTRAINT `notification_types_icon_foreign` FOREIGN KEY (`icon`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `notification_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD CONSTRAINT `payment_histories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD CONSTRAINT `payment_history_details_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_history_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD CONSTRAINT `payment_history_logs_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `payment_methods_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_features`
--
ALTER TABLE `plan_features`
  ADD CONSTRAINT `plan_features_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `portfolios_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  ADD CONSTRAINT `pricing_plan_features_plan_feature_id_foreign` FOREIGN KEY (`plan_feature_id`) REFERENCES `plan_features` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricing_plan_features_pricing_plan_id_foreign` FOREIGN KEY (`pricing_plan_id`) REFERENCES `pricing_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pricing_plan_prices`
--
ALTER TABLE `pricing_plan_prices`
  ADD CONSTRAINT `pricing_plan_prices_plan_duration_type_id_foreign` FOREIGN KEY (`plan_duration_type_id`) REFERENCES `plan_duration_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pricing_plan_prices_pricing_plan_id_foreign` FOREIGN KEY (`pricing_plan_id`) REFERENCES `pricing_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `projects_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_payment_foreign` FOREIGN KEY (`payment`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD CONSTRAINT `project_activities_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD CONSTRAINT `project_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_file_comments_project_file_id_foreign` FOREIGN KEY (`project_file_id`) REFERENCES `project_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD CONSTRAINT `project_membars_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_membars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD CONSTRAINT `project_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `project_payments_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `project_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `project_payments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `project_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saas_cms`
--
ALTER TABLE `saas_cms`
  ADD CONSTRAINT `saas_cms_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `saas_cms_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `saas_subscriptions`
--
ALTER TABLE `saas_subscriptions`
  ADD CONSTRAINT `saas_subscriptions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saas_subscriptions_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `saas_subscriptions_pricing_plan_price_id_foreign` FOREIGN KEY (`pricing_plan_price_id`) REFERENCES `pricing_plan_prices` (`id`),
  ADD CONSTRAINT `saas_subscriptions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD CONSTRAINT `salary_generates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_generates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD CONSTRAINT `salary_payment_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `salary_payment_logs_salary_generate_id_foreign` FOREIGN KEY (`salary_generate_id`) REFERENCES `salary_generates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_payment_logs_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `salary_payment_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD CONSTRAINT `salary_setups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD CONSTRAINT `salary_setup_details_commission_id_foreign` FOREIGN KEY (`commission_id`) REFERENCES `commissions` (`id`),
  ADD CONSTRAINT `salary_setup_details_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_salary_setup_id_foreign` FOREIGN KEY (`salary_setup_id`) REFERENCES `salary_setups` (`id`),
  ADD CONSTRAINT `salary_setup_details_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setup_details_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `services_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_machines`
--
ALTER TABLE `service_machines`
  ADD CONSTRAINT `service_machines_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `service_brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_machines_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `service_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_package_details`
--
ALTER TABLE `service_package_details`
  ADD CONSTRAINT `service_package_details_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `service_brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_machine_id_foreign` FOREIGN KEY (`machine_id`) REFERENCES `service_machines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `service_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD CONSTRAINT `social_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD CONSTRAINT `subscribers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD CONSTRAINT `subscription_plans_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `support_tickets_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD CONSTRAINT `task_activities_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD CONSTRAINT `task_discussions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD CONSTRAINT `task_discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussion_comments_task_discussion_id_foreign` FOREIGN KEY (`task_discussion_id`) REFERENCES `task_discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_files`
--
ALTER TABLE `task_files`
  ADD CONSTRAINT `task_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD CONSTRAINT `task_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_file_comments_task_file_id_foreign` FOREIGN KEY (`task_file_id`) REFERENCES `task_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD CONSTRAINT `task_followers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_is_creator_foreign` FOREIGN KEY (`is_creator`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_followers_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_members`
--
ALTER TABLE `task_members`
  ADD CONSTRAINT `task_members_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_members_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD CONSTRAINT `task_notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `teams_team_lead_id_foreign` FOREIGN KEY (`team_lead_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  ADD CONSTRAINT `tenant_subscriptions_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tenant_subscriptions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `tenant_user_impersonation_tokens`
--
ALTER TABLE `tenant_user_impersonation_tokens`
  ADD CONSTRAINT `tenant_user_impersonation_tokens_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_support_ticket_id_foreign` FOREIGN KEY (`support_ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_transaction_type_foreign` FOREIGN KEY (`transaction_type`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `travel_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `travel_travel_type_id_foreign` FOREIGN KEY (`travel_type_id`) REFERENCES `travel_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD CONSTRAINT `travel_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_eid_file_id_foreign` FOREIGN KEY (`eid_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_insurance_file_id_foreign` FOREIGN KEY (`insurance_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_labour_card_file_id_foreign` FOREIGN KEY (`labour_card_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_nid_card_id_foreign` FOREIGN KEY (`nid_card_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_passport_file_id_foreign` FOREIGN KEY (`passport_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_visa_file_id_foreign` FOREIGN KEY (`visa_file_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD CONSTRAINT `user_documents_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `user_documents_user_document_type_id_foreign` FOREIGN KEY (`user_document_type_id`) REFERENCES `user_document_types` (`id`),
  ADD CONSTRAINT `user_documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD CONSTRAINT `user_document_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `user_document_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  ADD CONSTRAINT `user_shift_assigns_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`),
  ADD CONSTRAINT `user_shift_assigns_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shift_assigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_tenant_mappings`
--
ALTER TABLE `user_tenant_mappings`
  ADD CONSTRAINT `user_tenant_mappings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `user_tenant_mappings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD CONSTRAINT `virtual_meetings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD CONSTRAINT `visit_notes_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD CONSTRAINT `visit_schedules_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekends`
--
ALTER TABLE `weekends`
  ADD CONSTRAINT `weekends_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
