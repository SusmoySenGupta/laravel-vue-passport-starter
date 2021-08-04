-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 04, 2021 at 08:56 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_vue_passport_starter`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_08_01_180630_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6f9151e5783fd14ba1c509068c2c94bfa2d4da1b09584175c4c9b264ce3e70f46f6637bbc4755e1e', 1, 2, NULL, '[]', 0, '2021-08-04 07:07:05', '2021-08-04 07:07:05', '2022-08-04 13:07:05'),
('037a646e25a9668b055d1c2dd409c978c42166a9a70603b1e8532af810dcc4e839aa8ff1a7e77543', 1, 2, NULL, '[]', 0, '2021-08-04 07:10:23', '2021-08-04 07:10:23', '2022-08-04 13:10:23'),
('f525806346c865509521c4807abc99c0c08273b572aad1e775262e241874a8529b75576c01a6510d', 1, 2, NULL, '[]', 0, '2021-08-04 07:37:14', '2021-08-04 07:37:14', '2022-08-04 13:37:14'),
('68a9b19423bd99ea7bd3efa8a96a3cf58a7eae2d58f643cee9db1e82ca1a6aae886a14076767c9f7', 4, 2, NULL, '[]', 0, '2021-08-04 07:37:38', '2021-08-04 07:37:38', '2022-08-04 13:37:38'),
('d0a18bb25432240f000daaf7ac28f269b5d019f4224c30bb2f791834b98ebcaa26a603611583237f', 5, 2, NULL, '[]', 0, '2021-08-04 08:20:58', '2021-08-04 08:20:58', '2022-08-04 14:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qOZLUhE8Tn4mBjfyVyB3l1n7BX7sbn64gJL70hme', NULL, 'http://localhost', 1, 0, 0, '2021-08-04 07:06:43', '2021-08-04 07:06:43'),
(2, NULL, 'Laravel Password Grant Client', 'EwXK0HdcJ4qt5KKfdtcxrt1MEoXx03WWSqwt9N1D', 'users', 'http://localhost', 0, 1, 0, '2021-08-04 07:06:43', '2021-08-04 07:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-04 07:06:43', '2021-08-04 07:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('49500514011e632656e0a3815726b0b33b43fd84795b0c8650671cee00e34773e6548af1cc3e800a', '6f9151e5783fd14ba1c509068c2c94bfa2d4da1b09584175c4c9b264ce3e70f46f6637bbc4755e1e', 0, '2022-08-04 13:07:05'),
('bcd55b79dfe04cddce5b58103894663cf58dd379e8a6880b451743ef363cdd10be701e12f0d64c7f', '037a646e25a9668b055d1c2dd409c978c42166a9a70603b1e8532af810dcc4e839aa8ff1a7e77543', 0, '2022-08-04 13:10:23'),
('63d1ad3226fbfff72c4821d16458773ba628f26907b8c9dd631005100fd3c13ced867f22f10e0eae', 'f525806346c865509521c4807abc99c0c08273b572aad1e775262e241874a8529b75576c01a6510d', 0, '2022-08-04 13:37:14'),
('29fcff57a983cb6f612a4a25f440a220b3ac282294526c00140cf43bed22b27b862c17ad842ff8c6', '68a9b19423bd99ea7bd3efa8a96a3cf58a7eae2d58f643cee9db1e82ca1a6aae886a14076767c9f7', 0, '2022-08-04 13:37:38'),
('bf6a6b1bcf45083f14fc3e9442046f126f8a72b4722f0d5f866ef3743a25a1652a9d965cf1900d0e', 'd0a18bb25432240f000daaf7ac28f269b5d019f4224c30bb2f791834b98ebcaa26a603611583237f', 0, '2022-08-04 14:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$I9ii/ZAIVKkJTzO2gaOU4O88CBRRFiw45m/uflTnBlSMPQ9MQ1yb.', NULL, '2021-08-04 07:06:31', '2021-08-04 07:06:31', 'admin'),
(2, 'user', 'user@example.com', NULL, '$2y$10$LHhQez3jvUbSMkygfyjiv.fk4fRdxLsv0Lfy6vbm7ftAzzEMp3bVy', NULL, '2021-08-04 07:06:31', '2021-08-04 07:06:31', 'user'),
(3, 'Another user', 'anotheruser@example.com', NULL, '$2y$10$8QlrWIE7HTazXRptQ.FLWeMiUdkMUFWWTLUSN6erUWMuE4EDxgz8i', NULL, '2021-08-04 07:06:32', '2021-08-04 07:06:32', 'another_user'),
(4, 'Aliquip beatae unde', 'momaxati@mailinator.com', NULL, '$2y$10$PbLkOXeCFdVtWduxqx/0DeUuxtA6c2hR54eHyvEa7AuyDvidpujre', NULL, '2021-08-04 07:37:37', '2021-08-04 07:37:37', 'user'),
(5, 'Example', 'example@example.com', NULL, '$2y$10$l1dEMfHVWyWVh6Me2Y5tle9yAPcSuG9bEL3fF.6gaBJ0jM7pYQE5K', NULL, '2021-08-04 08:20:57', '2021-08-04 08:20:57', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
