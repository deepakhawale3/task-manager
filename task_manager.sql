-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2024 at 05:57 PM
-- Server version: 8.3.0
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_08_154949_create_tasks_table', 1),
(6, '2024_11_08_161631_create_tasks_table', 2),
(7, '2024_11_08_163331_create_tasks_table', 3),
(8, '2024_11_08_165434_create_tasks_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 'This title is for test', 'Test Description', 1, '2024-11-08 11:28:09', '2024-11-08 11:34:52'),
(2, 'This title is for test 2', 'Test Description', 1, '2024-11-08 11:28:15', '2024-11-08 11:48:58'),
(3, 'This title is for test without description', NULL, 1, '2024-11-08 11:28:31', '2024-11-08 11:35:03'),
(4, 'This is a sample title with exactly one hundred and fifty characters, intended to test the character length validation for the title input in the form submission.', 'Test Description', 0, '2024-11-08 11:29:57', '2024-11-08 11:29:57'),
(5, 'This is a sample title with exactly two hundred characters. It is intended to check the validation for titles that are within the length constraints set by the application, specifically for title length validation.', 'Test Description', 1, '2024-11-08 11:30:15', '2024-11-08 11:44:29'),
(6, 'This is a sample title that contains exactly two hundred and fifty characters. It is designed to check the validation rules for the title field in the form submission process, ensuring that the system can handle titles that are close to the limit of', 'Test Description', 0, '2024-11-08 11:31:02', '2024-11-08 11:31:02'),
(7, 'This is a sample title that contains exactly two hundred and fifty characters. It is designed to check the validation rules for the title field in the form submission process, ensuring that the system can handle titles that are close to the limit of test', 'Test Description', 1, '2024-11-08 11:31:38', '2024-11-08 11:35:07'),
(8, 'This is a sample title that contains exactly two hundred and fifty characters. It is designed to check the validation rules for the title field in the form submission process, ensuring that the system can handle titles that are close to the limit of test', 'Test Description', 1, '2024-11-08 11:32:00', '2024-11-08 11:44:34'),
(13, 'This is a sample title for testing', 'Test Description', 0, '2024-11-08 11:37:00', '2024-11-08 11:37:00'),
(14, 'This is a sample title for testing new testing', 'Test Description', 0, '2024-11-08 11:37:08', '2024-11-08 11:37:08'),
(15, 'This is a sample title for testing new testing more testing', 'Test Description', 0, '2024-11-08 11:37:16', '2024-11-08 11:37:16'),
(10, 'This is a sample title that contains data', 'Test Description', 0, '2024-11-08 11:33:53', '2024-11-08 11:33:53'),
(11, 'This is a sample title that contains data 11 id', 'Test Description', 0, '2024-11-08 11:34:01', '2024-11-08 11:34:01'),
(12, 'This is a sample title that contains data 12 id', 'Test Description', 1, '2024-11-08 11:34:13', '2024-11-08 11:37:46'),
(16, 'This is a sample title for testing new testing more testing. This is a sample title for testing new testing more testing', 'Test Description', 0, '2024-11-08 11:37:28', '2024-11-08 11:37:28'),
(17, 'This is a sample title for testing new testing more testing. This is a sample title for testing new testing more testing new', 'Test Description', 0, '2024-11-08 11:45:50', '2024-11-08 11:45:50'),
(20, 'This is a sample title for testing new testing more testing. This is a sample title for testing new testing more testing new more. This is a sample.  This is a sample', 'Test Description', 0, '2024-11-08 11:46:46', '2024-11-08 11:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
