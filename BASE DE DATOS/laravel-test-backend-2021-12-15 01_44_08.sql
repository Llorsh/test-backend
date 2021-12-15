-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para laravel-test-backend
CREATE DATABASE IF NOT EXISTS `laravel-test-backend` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel-test-backend`;

-- Volcando estructura para tabla laravel-test-backend.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla laravel-test-backend.games
CREATE TABLE IF NOT EXISTS `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `games_game_id_unique` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.games: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`id`, `game_id`, `name`, `link`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(3, 5, 'BAMBOO RUSH', 'https://latamwin-gp3.discreetgaming.com/cwguestlogin.do?bankId=3006&gameId=806&lang=es', NULL, 'https://winchiletragamonedas.com/public/images/games/bamboo_rush.jpeg', 0, '2021-12-15 04:02:00', '2021-12-15 04:14:50'),
	(4, 2, 'REELS OF WEALTH', 'https://latamwin-gp3.discreetgaming.com/free/es/launch.jsp?gameId=795&GAMESERVERURL=games-gp3.discreetgaming.com&gameHistoryUrl=https%3A%2F%2Flatamwin-gp3.discreetgaming.com%2Fgamehistory.do%3FsessionId%3D1_440c83ea1a9fb3792b1e0000017d8ef4_VlJHBVAFWltVBRZTCVUOAQVQXw4cQ1lFVV5eShcBWw4aAQMJDg%26bankId%3D3006%26gameId%3D795%26lang%3Des&autoplayAllowed=true&ShellPath=%252Ffree%252Fhtml5pc%252Ftemplate.jsp&GAMESERVERID=1&LANG=es&BANKID=3006&SID=1_440c83ea1a9fb3792b1e0000017d8ef4_VlJHBVAFWltVBRZTCVUOAQVQXw4cQ1lFVV5eShcBWw4aAQMJDg', NULL, 'https://winchiletragamonedas.com/public/images/games/reels_of_wealth.jpeg', 1, '2021-12-15 04:05:38', '2021-12-15 04:05:38'),
	(5, 3, 'DRAGON & PHOENIX', 'https://latamwin-gp3.discreetgaming.com/free/es/launch.jsp?gameId=814&GAMESERVERURL=games-gp3.discreetgaming.com&gameHistoryUrl=https%3A%2F%2Flatamwin-gp3.discreetgaming.com%2Fgamehistory.do%3FsessionId%3D1_3f9452dc60f9b3792b270000017daa55_AAdMAAANDF9TVkdcCVUOAQVQXFgcQ1lFVV5eShcDDV0aAQMJDg%26bankId%3D3006%26gameId%3D814%26lang%3Des&autoplayAllowed=true&ShellPath=%252Ffree%252Fmobile%252Ftemplate.jsp&GAMESERVERID=1&LANG=es&BANKID=3006&SID=1_3f9452dc60f9b3792b270000017daa55_AAdMAAANDF9TVkdcCVUOAQVQXFgcQ1lFVV5eShcDDV0aAQMJDg', NULL, 'https://winchiletragamonedas.com/public/images/games/dragon_phoenix.jpeg', 1, '2021-12-15 04:09:41', '2021-12-15 04:09:41'),
	(6, 4, 'TAKE THE BANK', 'https://latamwin-gp3.discreetgaming.com/free/es/launch.jsp?gameId=813&GAMESERVERURL=games-gp3.discreetgaming.com&gameHistoryUrl=https%3A%2F%2Flatamwin-gp3.discreetgaming.com%2Fgamehistory.do%3FsessionId%3D1_272b6340bf99b3792b2a0000017dbb33_UANBVFFQC1xSVUpWCVUOAQVQXFUcQ1lFVV5eSk5WWwEaAQMJDg%26bankId%3D3006%26gameId%3D813%26lang%3Des&autoplayAllowed=true&ShellPath=%252Ffree%252Fmobile%252Ftemplate.jsp&GAMESERVERID=1&LANG=es&BANKID=3006&SID=1_272b6340bf99b3792b2a0000017dbb33_UANBVFFQC1xSVUpWCVUOAQVQXFUcQ1lFVV5eSk5WWwEaAQMJDg', NULL, 'https://winchiletragamonedas.com/public/images/games/take_the_bank.jpeg', 1, '2021-12-15 04:10:13', '2021-12-15 04:10:13'),
	(7, 1, 'CAISHEN’S ARRIVAL', 'https://latamwin-gp3.discreetgaming.com/free/es/launch.jsp?gameId=812&GAMESERVERURL=games-gp3.discreetgaming.com&gameHistoryUrl=https%3A%2F%2Flatamwin-gp3.discreetgaming.com%2Fgamehistory.do%3FsessionId%3D1_adda30a76d2eb3792b2d0000017db4df_VQwUAlABVFkEAEYFCVUOAQVQXA8cQ1lFVV5eShYKXg8aAQMJDg%26bankId%3D3006%26gameId%3D812%26lang%3Des&autoplayAllowed=true&ShellPath=%252Ffree%252Fmobile%252Ftemplate.jsp&GAMESERVERID=1&LANG=es&BANKID=3006&SID=1_adda30a76d2eb3792b2d0000017db4df_VQwUAlABVFkEAEYFCVUOAQVQXA8cQ1lFVV5eShYKXg8aAQMJDg', NULL, 'https://winchiletragamonedas.com/public/images/games/caishens_arrival.jpeg', 1, '2021-12-15 04:10:52', '2021-12-15 04:19:37'),
	(8, 6, 'GEMMED!', 'https://latamwin-gp3.discreetgaming.com/free/es/launch.jsp?gameId=811&GAMESERVERURL=games-gp3.discreetgaming.com&gameHistoryUrl=https%3A%2F%2Flatamwin-gp3.discreetgaming.com%2Fgamehistory.do%3FsessionId%3D1_0740327630f9b3792b300000017d8fce_AFdCUFIHXV4DUxBTCVUOAQVQXAgcQ1lFVV5eShZWWQ0aAQMJDg%26bankId%3D3006%26gameId%3D811%26lang%3Des&autoplayAllowed=true&ShellPath=%252Ffree%252Fmobile%252Ftemplate.jsp&GAMESERVERID=1&LANG=es&BANKID=3006&SID=1_0740327630f9b3792b300000017d8fce_AFdCUFIHXV4DUxBTCVUOAQVQXAgcQ1lFVV5eShZWWQ0aAQMJDg', NULL, 'https://winchiletragamonedas.com/public/images/games/gemmed.jpeg', 1, '2021-12-15 04:11:21', '2021-12-15 04:19:45');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;

-- Volcando estructura para tabla laravel-test-backend.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.migrations: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_12_15_012345_create_games_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla laravel-test-backend.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla laravel-test-backend.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla laravel-test-backend.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel-test-backend.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
