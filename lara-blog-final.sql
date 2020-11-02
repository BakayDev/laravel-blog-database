-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 02 2020 г., 00:08
-- Версия сервера: 10.5.5-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `golo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(6, 'Free wifi', '5dc050bbc831e_1572884667.svg', '2019-11-02 16:02:01', '2019-11-04 16:25:12'),
(7, 'Reservations', '5dc050b32b5a5_1572884659.svg', '2019-11-04 14:37:01', '2019-11-04 16:24:19'),
(8, 'Credit cards', '5dc050aa39545_1572884650.svg', '2019-11-04 14:37:19', '2019-11-04 16:24:10'),
(9, 'Non smoking', '5dc0509592350_1572884629.svg', '2019-11-04 14:40:22', '2019-11-04 16:23:49'),
(10, 'Air conditioner', '5e1fd3ff3dd32_1579144191.svg', '2019-11-04 16:21:12', '2020-01-16 03:09:51'),
(11, 'Car parking', '5e1fd3ea806fe_1579144170.svg', '2019-11-04 16:24:54', '2020-01-16 03:09:30'),
(12, 'Swimming pool', '5dc050fc4f6dc_1572884732.svg', '2019-11-04 16:25:32', '2019-11-04 16:25:32'),
(13, 'Cocktails', '5e1fcee15a95e_1579142881.svg', '2019-11-04 16:33:05', '2020-01-16 02:48:01');

-- --------------------------------------------------------

--
-- Структура таблицы `amenities_translations`
--

CREATE TABLE `amenities_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `amenities_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `amenities_translations`
--

INSERT INTO `amenities_translations` (`id`, `amenities_id`, `locale`, `name`) VALUES
(1, 6, 'en', 'Free wifi'),
(2, 7, 'en', 'Reservations'),
(3, 8, 'en', 'Credit cards'),
(4, 9, 'en', 'Non smoking'),
(5, 10, 'en', 'Air conditioner'),
(6, 11, 'en', 'Car parking'),
(7, 12, 'en', 'Swimming pool'),
(8, 13, 'en', 'Cocktails');

-- --------------------------------------------------------

--
-- Структура таблицы `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `numbber_of_adult` int(11) DEFAULT NULL,
  `numbber_of_children` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT 2 COMMENT 'status default pending: 2',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `place_id`, `numbber_of_adult`, `numbber_of_children`, `date`, `time`, `name`, `email`, `phone_number`, `message`, `type`, `status`, `created_at`, `updated_at`) VALUES
(60, 8, 19, 1, 1, '2020-02-11', '01:00:00', '', NULL, NULL, NULL, 1, 1, '2020-02-10 08:04:16', '2020-02-10 08:34:42'),
(61, 8, 18, NULL, NULL, NULL, NULL, 'Kevin', 'kevin@uxper.co', '+81337120819', 'Hello, I need a book', 2, 0, '2020-02-10 08:07:52', '2020-02-13 03:48:21'),
(62, 8, 40, 2, 2, '2020-02-13', '01:30:00', '', NULL, NULL, NULL, 1, 2, '2020-02-11 01:51:18', '2020-02-11 01:51:18'),
(63, 8, 41, 1, 1, '2020-02-16', '01:30:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 08:00:37', '2020-02-15 08:00:37'),
(65, 13, 19, 1, 1, '2020-02-16', '01:30:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:15:23', '2020-02-15 11:15:23'),
(66, 13, 19, 1, 1, '2020-02-16', '01:30:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:17:32', '2020-02-15 11:17:32'),
(67, 13, 19, 1, 1, '2020-02-21', '01:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:18:26', '2020-02-15 11:18:26'),
(68, 13, 19, 1, 1, '2020-02-21', '01:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:18:29', '2020-02-15 11:18:29'),
(69, 8, 41, 1, 1, '2020-02-16', '02:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:19:48', '2020-02-15 11:19:48'),
(70, 8, 41, 1, 1, '2020-02-16', '02:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:25:05', '2020-02-15 11:25:05'),
(71, 8, 41, 1, 0, '2020-02-16', '01:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:25:28', '2020-02-15 11:25:28'),
(72, 8, 41, 1, 0, '2020-02-16', '01:00:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:28:15', '2020-02-15 11:28:15'),
(73, 8, 41, 1, 0, '2020-02-16', '12:30:00', '', NULL, NULL, NULL, 1, 2, '2020-02-15 11:28:30', '2020-02-15 11:28:30'),
(74, 8, 19, 1, 0, '2020-02-15', '12:30:00', '', NULL, NULL, NULL, 1, 1, '2020-02-15 16:34:02', '2020-02-16 08:13:43'),
(75, 8, 19, 1, 0, '2020-02-15', '12:30:00', '', NULL, NULL, NULL, 1, 1, '2020-02-15 16:35:38', '2020-02-16 04:10:46');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `is_feature` int(11) DEFAULT 0,
  `feature_title` varchar(255) DEFAULT NULL,
  `icon_map_marker` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'place',
  `status` int(11) DEFAULT 1,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `priority`, `is_feature`, `feature_title`, `icon_map_marker`, `type`, `status`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(11, 'See & Do', 'see-do', 100, 1, 'Must See & Do', '5ddba7be9c049_1574676414.svg', 'place', 1, 'Must See & Do', NULL, '2019-10-25 11:11:08', '2020-04-01 16:32:33'),
(12, 'Eat & Drink', 'eat-drink', 20, 1, 'Where to Eat', '5ddba7c95e36a_1574676425.svg', 'place', 1, 'Where to Eat', NULL, '2019-10-25 11:11:19', '2020-04-01 16:32:14'),
(13, 'Stay', 'stay', 10, 1, 'Place to stay', '5ddba7d25d9f9_1574676434.svg', 'place', 1, 'Place to stay', NULL, '2019-10-25 11:11:45', '2020-04-01 16:31:41'),
(15, 'Beaches', 'beaches', 0, 0, NULL, NULL, 'post', 1, 'Des plages', 'Des plages', '2019-11-27 08:57:25', '2020-04-01 16:14:02'),
(16, 'Road Trips', 'road-trips', 0, 0, NULL, NULL, 'post', 1, 'Trajets routiers', 'Trajets routiers', '2019-11-27 08:57:32', '2020-04-01 16:13:42'),
(17, 'Take a break', 'take-a-break', 0, 0, NULL, NULL, 'post', 1, 'Take a break', 'Take a break', '2019-11-27 08:57:38', '2020-04-01 16:13:23'),
(18, 'Tips & Tricks', 'tips-tricks', 0, 0, NULL, NULL, 'post', 1, 'Tips & Tricks', 'Tips & Tricks', '2019-11-27 08:57:45', '2020-04-01 16:13:01'),
(19, 'Unique Stay', 'unique-stay', 0, 0, NULL, NULL, 'post', 1, 'Unique Stay', 'Unique Stay', '2019-11-27 08:57:55', '2020-04-01 16:12:37');

-- --------------------------------------------------------

--
-- Структура таблицы `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 11, 'en', 'See & Do'),
(2, 12, 'en', 'Eat & Drink'),
(3, 13, 'en', 'Stay'),
(4, 15, 'en', 'Beaches'),
(5, 16, 'en', 'Road Trips'),
(6, 17, 'en', 'Take a break'),
(7, 18, 'en', 'Tips & Tricks'),
(8, 19, 'en', 'Unique Stay'),
(9, 19, 'fr', 'Séjour unique'),
(10, 18, 'fr', 'Conseils & Astuces'),
(11, 17, 'fr', 'Prendre une pause'),
(12, 16, 'fr', 'Trajets routiers'),
(13, 15, 'fr', 'Des plages'),
(14, 13, 'fr', 'Rester'),
(15, 12, 'fr', 'Manger, boire'),
(16, 11, 'fr', 'À voir et à faire');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_time_to_visit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `slug`, `intro`, `description`, `thumb`, `banner`, `best_time_to_visit`, `currency`, `language`, `lat`, `lng`, `priority`, `status`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(23, 6, 'Paris', 'paris', 'The city of love', 'Second City? Not by our count. It’s world-class in so many categories magnificent architecture, stunning museums, brilliant chefs, a massive brewing scene, and so much to do that you’ll never see it all. Scratch the surface in the Loop and on the Gold Coast.', '5dbfe6899b2fc_1572857481.jpg', '5dbfe6899b750_1572857481.jpg', 'Anytime', 'U. S. Dollar', 'English', 48.856614, 2.3522219, 0, 1, 'Paris', NULL, '2019-10-25 04:09:36', '2020-04-01 09:27:08'),
(24, 8, 'Bangkok', 'bangkok', 'When in doubt, get a tuk-tuk', 'It isn’t a conventional charm that keeps us coming back to Bangkok. The Thai capital doesn’t have an Old Town like Hanoi, the modernity of Hong Kong, or the density of temples like Siem Reap (though few places in Southeast Asia are as spectacular as Wat Arun at sunrise).', '5dbff91de1e74_1572862237.jpeg', '5dbff91de1ff1_1572862237.jpeg', 'Nov to Apr', 'Thai Baht', 'Thai', 13.7563309, 100.50176510000006, 0, 1, NULL, NULL, '2019-11-04 03:10:37', '2019-12-01 03:49:09'),
(25, 12, 'Tokyo', 'tokyo', 'The world\'s best city, found in translation', 'Tokyo (東京, Tōkyō) is Japan’s capital and the world’s most populous metropolis. It is also one of Japan’s 47 prefectures, consisting of 23 central city wards and multiple cities, towns and villages west of the city center. The Izu and Ogasawara Islands are also part of Tokyo.', '5dbff9bb02d31_1572862395.jpeg', '5dbff9bb02f77_1572862395.jpeg', 'Anytime', 'Yen', 'Japanish', 35.6803997, 139.76901739999994, 0, 1, NULL, NULL, '2019-11-04 03:13:15', '2019-12-01 03:48:38'),
(26, 11, 'New York', 'newyork', 'The entire world in one place', 'To know “The City” like a local might still be the greatest badge of honor for travelers. But take a breath: you won’t be able to cover the countless museums, galleries, restaurants, watering holes—and, yes, $1 pizza slices—all in one visit, but that’s the good news.', '5dbffa52407d0_1572862546.jpeg', '5dbffa524098a_1572862546.jpeg', 'April to December', 'U.S. dollar', 'English', 40.7127753, -74.0059728, 0, 1, NULL, NULL, '2019-11-04 03:15:46', '2019-12-01 03:48:54'),
(27, 9, 'Barcelona', 'barcelona', 'Just don’t confuse it with Spain', 'Barcelona is a city full of wonder and beauty, where there’s a pronounced passion for life, food, culture, and of course, architecture. Where else can you surf in the morning, do a master tour of Gaudí’s surreal buildings (the Sagrada Familia and the Parc Güell, to name a couple).', '5dbffaefcbc49_1572862703.jpeg', '5dbffaefcbe36_1572862703.jpeg', 'Anytime', 'U. S. Dollar', 'Spainish', 41.38506389999999, 2.1734034999999494, 0, 1, NULL, NULL, '2019-11-04 03:18:23', '2019-12-01 03:49:48'),
(28, 7, 'Amsterdam', 'amsterdam', 'The other canal city', 'Of all the cities in Europe, Amsterdam is one of the most delightful, its bustling markets, magnificent art galleries, olive-green canals and gabled houses famous throughout the world. One of its special charms is its small-city feel with all the key attractions within easy walking distance.', '5dbffba4b4e30_1572862884.jpeg', '5dbffba4b4fed_1572862884.jpeg', 'Anytime', 'U. S. Dollar', 'English', 52.3666969, 4.894539799999961, 0, 1, NULL, NULL, '2019-11-04 03:21:24', '2019-12-01 03:50:02'),
(29, 11, 'Los Angeles', 'los-angeles', 'Cinematic city of dreams', 'From the Hollywood hills to the Venice Beach boardwalk, Los Angeles is a cinematic city of dreams, where every sunset feels like a scene from a movie. The center of the entertainment world', '5ddbaa735069a_1574677107.jpeg', '5dbffcae4fbe7_1572863150.jpeg', 'Anytime', 'U. S. Dollar', 'English', 34.0522342, -118.2436849, 0, 1, NULL, NULL, '2019-11-04 03:25:50', '2019-11-25 03:18:27'),
(30, 10, 'London', 'london', 'Where the pubs are as old as the monuments', 'London is as much about innovation as tradition; it’s a place that’s impossible to finish discovering, where the promise of something new is always in the air.', '5ddbaa332c9b5_1574677043.jpeg', '5dbffd3d0ad05_1572863293.jpeg', 'May, Sep, Dec', 'Pound', 'French', 51.5073509, -0.12775829999998, 0, 1, 'London', NULL, '2019-11-04 03:28:13', '2020-04-01 09:26:01');

-- --------------------------------------------------------

--
-- Структура таблицы `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `locale`, `name`, `intro`, `description`) VALUES
(1, 23, 'en', 'Paris', 'The city of love', 'Second City? Not by our count. It’s world-class in so many categories magnificent architecture, stunning museums, brilliant chefs, a massive brewing scene, and so much to do that you’ll never see it all. Scratch the surface in the Loop and on the Gold Coa'),
(2, 24, 'en', 'Bangkok', 'When in doubt, get a tuk-tuk', 'It isn’t a conventional charm that keeps us coming back to Bangkok. The Thai capital doesn’t have an Old Town like Hanoi, the modernity of Hong Kong, or the density of temples like Siem Reap (though few places in Southeast Asia are as spectacular as Wat A'),
(3, 25, 'en', 'Tokyo', 'The world\'s best city, found in translation', 'Tokyo (東京, Tōkyō) is Japan’s capital and the world’s most populous metropolis. It is also one of Japan’s 47 prefectures, consisting of 23 central city wards and multiple cities, towns and villages west of the city center. The Izu and Ogasawara Islands are'),
(4, 26, 'en', 'New York', 'The entire world in one place', 'To know “The City” like a local might still be the greatest badge of honor for travelers. But take a breath: you won’t be able to cover the countless museums, galleries, restaurants, watering holes—and, yes, $1 pizza slices—all in one visit, but that’s th'),
(5, 27, 'en', 'Barcelona', 'Just don’t confuse it with Spain', 'Barcelona is a city full of wonder and beauty, where there’s a pronounced passion for life, food, culture, and of course, architecture. Where else can you surf in the morning, do a master tour of Gaudí’s surreal buildings (the Sagrada Familia and the Parc'),
(6, 28, 'en', 'Amsterdam', 'The other canal city', 'Of all the cities in Europe, Amsterdam is one of the most delightful, its bustling markets, magnificent art galleries, olive-green canals and gabled houses famous throughout the world. One of its special charms is its small-city feel with all the key attr'),
(7, 29, 'en', 'Los Angeles', 'Cinematic city of dreams', 'From the Hollywood hills to the Venice Beach boardwalk, Los Angeles is a cinematic city of dreams, where every sunset feels like a scene from a movie. The center of the entertainment world'),
(8, 30, 'en', 'London', 'Where the pubs are as old as the monuments', 'London is as much about innovation as tradition; it’s a place that’s impossible to finish discovering, where the promise of something new is always in the air.'),
(9, 30, 'fr', 'London', 'Où les pubs sont aussi vieux que les monuments', 'Londres est autant une question d\'innovation que de tradition; c\'est un endroit impossible à terminer de découvrir, où la promesse de quelque chose de nouveau est toujours dans l\'air.'),
(10, 23, 'fr', 'Paris', 'La ville de l\'amour', 'Deuxième ville? Pas d\'après nos calculs. Il est de classe mondiale dans tant de catégories, une architecture magnifique, de superbes musées, des chefs brillants, une scène de brassage massive, et tellement de choses à faire que vous ne verrez jamais tout.');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `priority`, `status`, `seo_title`, `seo_description`, `seo_cover_image`, `created_at`, `updated_at`) VALUES
(6, 'France', 'france', 0, 1, NULL, NULL, NULL, '2019-10-25 04:05:59', '2019-10-25 04:05:59'),
(7, 'Netherlands', 'netherlands', 0, 1, NULL, NULL, NULL, '2019-11-04 01:47:53', '2019-11-04 01:47:53'),
(8, 'Thailand', 'thailand', 0, 1, NULL, NULL, NULL, '2019-11-04 01:48:17', '2019-11-04 01:48:17'),
(9, 'Spain', 'spain', 0, 1, NULL, NULL, NULL, '2019-11-04 01:48:38', '2019-11-04 01:48:38'),
(10, 'United Kingdom', 'united-kingdom', 0, 1, NULL, NULL, NULL, '2019-11-04 01:48:54', '2019-11-04 01:48:54'),
(11, 'United States', 'united-states', 0, 1, NULL, NULL, NULL, '2019-11-04 01:49:46', '2019-11-04 01:49:46'),
(12, 'Japan', 'japan', 0, 1, NULL, NULL, NULL, '2019-11-04 01:50:17', '2019-11-04 01:50:17');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `name`, `native_name`, `code`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Abkhaz', 'аҧсуа', 'ab', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(2, 'Afar', 'Afaraf', 'aa', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(3, 'Afrikaans', 'Afrikaans', 'af', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(4, 'Akan', 'Akan', 'ak', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(5, 'Albanian', 'Shqip', 'sq', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(6, 'Amharic', 'አማርኛ', 'am', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(7, 'Arabic', 'العربية', 'ar', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(8, 'Aragonese', 'Aragonés', 'an', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(9, 'Armenian', 'Հայերեն', 'hy', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(10, 'Assamese', 'অসমীয়া', 'as', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(11, 'Avaric', 'авар мацӀ, магӀарул мацӀ', 'av', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(12, 'Avestan', 'avesta', 'ae', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(13, 'Aymara', 'aymar aru', 'ay', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(14, 'Azerbaijani', 'azərbaycan dili', 'az', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(15, 'Bambara', 'bamanankan', 'bm', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(16, 'Bashkir', 'башҡорт теле', 'ba', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(17, 'Basque', 'euskara, euskera', 'eu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(18, 'Belarusian', 'Беларуская', 'be', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(19, 'Bengali', 'বাংলা', 'bn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(20, 'Bihari', 'भोजपुरी', 'bh', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(21, 'Bislama', 'Bislama', 'bi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(22, 'Bosnian', 'bosanski jezik', 'bs', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(23, 'Breton', 'brezhoneg', 'br', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(24, 'Bulgarian', 'български език', 'bg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(25, 'Burmese', 'ဗမာစာ', 'my', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(26, 'Catalan; Valencian', 'Català', 'ca', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(27, 'Chamorro', 'Chamoru', 'ch', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(28, 'Chechen', 'нохчийн мотт', 'ce', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(29, 'Chichewa; Chewa; Nyanja', 'chiCheŵa, chinyanja', 'ny', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(30, 'Chinese', '中文 (Zhōngwén), 汉语, 漢語', 'zh', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(31, 'Chuvash', 'чӑваш чӗлхи', 'cv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(32, 'Cornish', 'Kernewek', 'kw', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(33, 'Corsican', 'corsu, lingua corsa', 'co', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(34, 'Cree', 'ᓀᐦᐃᔭᐍᐏᐣ', 'cr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(35, 'Croatian', 'hrvatski', 'hr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(36, 'Czech', 'česky, čeština', 'cs', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(37, 'Danish', 'dansk', 'da', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(38, 'Divehi; Dhivehi; Maldivian;', 'ދިވެހި', 'dv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 10:09:48'),
(39, 'Dutch', 'Nederlands, Vlaams', 'nl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(40, 'English', 'English', 'en', 1, 1, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(41, 'Esperanto', 'Esperanto', 'eo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(42, 'Estonian', 'eesti, eesti keel', 'et', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(43, 'Ewe', 'Eʋegbe', 'ee', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(44, 'Faroese', 'føroyskt', 'fo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(45, 'Fijian', 'vosa Vakaviti', 'fj', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(46, 'Finnish', 'suomi, suomen kieli', 'fi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(47, 'French', 'français, langue française', 'fr', 0, 1, '2020-04-01 08:29:20', '2020-04-01 08:53:25'),
(48, 'Fula; Fulah; Pulaar; Pular', 'Fulfulde, Pulaar, Pular', 'ff', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(49, 'Galician', 'Galego', 'gl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(50, 'Georgian', 'ქართული', 'ka', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(51, 'German', 'Deutsch', 'de', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(52, 'Greek, Modern', 'Ελληνικά', 'el', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(53, 'Guaraní', 'Avañeẽ', 'gn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(54, 'Gujarati', 'ગુજરાતી', 'gu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(55, 'Haitian; Haitian Creole', 'Kreyòl ayisyen', 'ht', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(56, 'Hausa', 'Hausa, هَوُسَ', 'ha', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(57, 'Hebrew (modern)', 'עברית', 'he', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(58, 'Herero', 'Otjiherero', 'hz', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(59, 'Hindi', 'हिन्दी, हिंदी', 'hi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(60, 'Hiri Motu', 'Hiri Motu', 'ho', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(61, 'Hungarian', 'Magyar', 'hu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(62, 'Interlingua', 'Interlingua', 'ia', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(63, 'Indonesian', 'Bahasa Indonesia', 'id', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(64, 'Interlingue', 'Originally called Occidental; then Interlingue after WWII', 'ie', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(65, 'Irish', 'Gaeilge', 'ga', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(66, 'Igbo', 'Asụsụ Igbo', 'ig', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(67, 'Inupiaq', 'Iñupiaq, Iñupiatun', 'ik', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(68, 'Ido', 'Ido', 'io', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(69, 'Icelandic', 'Íslenska', 'is', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(70, 'Italian', 'Italiano', 'it', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(71, 'Inuktitut', 'ᐃᓄᒃᑎᑐᑦ', 'iu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(72, 'Japanese', '日本語 (にほんご／にっぽんご)', 'ja', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(73, 'Javanese', 'basa Jawa', 'jv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(74, 'Kalaallisut, Greenlandic', 'kalaallisut, kalaallit oqaasii', 'kl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(75, 'Kannada', 'ಕನ್ನಡ', 'kn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(76, 'Kanuri', 'Kanuri', 'kr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(77, 'Kashmiri', 'कश्मीरी, كشميري‎', 'ks', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(78, 'Kazakh', 'Қазақ тілі', 'kk', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(79, 'Khmer', 'ភាសាខ្មែរ', 'km', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(80, 'Kikuyu, Gikuyu', 'Gĩkũyũ', 'ki', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(81, 'Kinyarwanda', 'Ikinyarwanda', 'rw', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(82, 'Kirghiz, Kyrgyz', 'кыргыз тили', 'ky', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(83, 'Komi', 'коми кыв', 'kv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(84, 'Kongo', 'KiKongo', 'kg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(85, 'Korean', '한국어 (韓國語), 조선말 (朝鮮語)', 'ko', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(86, 'Kurdish', 'Kurdî, كوردی‎', 'ku', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(87, 'Kwanyama, Kuanyama', 'Kuanyama', 'kj', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(88, 'Latin', 'latine, lingua latina', 'la', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(89, 'Luxembourgish, Letzeburgesch', 'Lëtzebuergesch', 'lb', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(90, 'Luganda', 'Luganda', 'lg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(91, 'Limburgish, Limburgan, Limburger', 'Limburgs', 'li', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(92, 'Lingala', 'Lingála', 'ln', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(93, 'Lao', 'ພາສາລາວ', 'lo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(94, 'Lithuanian', 'lietuvių kalba', 'lt', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(95, 'Luba-Katanga', '', 'lu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(96, 'Latvian', 'latviešu valoda', 'lv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(97, 'Manx', 'Gaelg, Gailck', 'gv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(98, 'Macedonian', 'македонски јазик', 'mk', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(99, 'Malagasy', 'Malagasy fiteny', 'mg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(100, 'Malay', 'bahasa Melayu, بهاس ملايو‎', 'ms', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(101, 'Malayalam', 'മലയാളം', 'ml', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(102, 'Maltese', 'Malti', 'mt', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(103, 'Māori', 'te reo Māori', 'mi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(104, 'Marathi (Marāṭhī)', 'मराठी', 'mr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(105, 'Marshallese', 'Kajin M̧ajeļ', 'mh', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(106, 'Mongolian', 'монгол', 'mn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(107, 'Nauru', 'Ekakairũ Naoero', 'na', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(108, 'Navajo, Navaho', 'Diné bizaad, Dinékʼehǰí', 'nv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(109, 'Norwegian Bokmål', 'Norsk bokmål', 'nb', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(110, 'North Ndebele', 'isiNdebele', 'nd', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(111, 'Nepali', 'नेपाली', 'ne', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(112, 'Ndonga', 'Owambo', 'ng', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(113, 'Norwegian Nynorsk', 'Norsk nynorsk', 'nn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(114, 'Norwegian', 'Norsk', 'no', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(115, 'Nuosu', 'ꆈꌠ꒿ Nuosuhxop', 'ii', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(116, 'South Ndebele', 'isiNdebele', 'nr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(117, 'Occitan', 'Occitan', 'oc', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(118, 'Ojibwe, Ojibwa', 'ᐊᓂᔑᓈᐯᒧᐎᓐ', 'oj', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(119, 'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic', 'ѩзыкъ словѣньскъ', 'cu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(120, 'Oromo', 'Afaan Oromoo', 'om', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(121, 'Oriya', 'ଓଡ଼ିଆ', 'or', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(122, 'Ossetian, Ossetic', 'ирон æвзаг', 'os', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(123, 'Panjabi, Punjabi', 'ਪੰਜਾਬੀ, پنجابی‎', 'pa', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(124, 'Pāli', 'पाऴि', 'pi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(125, 'Persian', 'فارسی', 'fa', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(126, 'Polish', 'polski', 'pl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(127, 'Pashto, Pushto', 'پښتو', 'ps', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(128, 'Portuguese', 'Português', 'pt', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(129, 'Quechua', 'Runa Simi, Kichwa', 'qu', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(130, 'Romansh', 'rumantsch grischun', 'rm', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(131, 'Kirundi', 'kiRundi', 'rn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(132, 'Romanian, Moldavian, Moldovan', 'română', 'ro', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(133, 'Russian', 'русский язык', 'ru', 0, 1, '2020-04-01 08:29:20', '2020-09-24 05:53:55'),
(134, 'Sanskrit (Saṁskṛta)', 'संस्कृतम्', 'sa', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(135, 'Sardinian', 'sardu', 'sc', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(136, 'Sindhi', 'सिन्धी, سنڌي، سندھی‎', 'sd', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(137, 'Northern Sami', 'Davvisámegiella', 'se', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(138, 'Samoan', 'gagana faa Samoa', 'sm', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(139, 'Sango', 'yângâ tî sängö', 'sg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(140, 'Serbian', 'српски језик', 'sr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(141, 'Scottish Gaelic; Gaelic', 'Gàidhlig', 'gd', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(142, 'Shona', 'chiShona', 'sn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(143, 'Sinhala, Sinhalese', 'සිංහල', 'si', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(144, 'Slovak', 'slovenčina', 'sk', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(145, 'Slovene', 'slovenščina', 'sl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(146, 'Somali', 'Soomaaliga, af Soomaali', 'so', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(147, 'Southern Sotho', 'Sesotho', 'st', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(148, 'Spanish; Castilian', 'español, castellano', 'es', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(149, 'Sundanese', 'Basa Sunda', 'su', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(150, 'Swahili', 'Kiswahili', 'sw', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(151, 'Swati', 'SiSwati', 'ss', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(152, 'Swedish', 'svenska', 'sv', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(153, 'Tamil', 'தமிழ்', 'ta', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(154, 'Telugu', 'తెలుగు', 'te', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(155, 'Tajik', 'тоҷикӣ, toğikī, تاجیکی‎', 'tg', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(156, 'Thai', 'ไทย', 'th', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(157, 'Tigrinya', 'ትግርኛ', 'ti', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(158, 'Tibetan Standard, Tibetan, Central', 'བོད་ཡིག', 'bo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(159, 'Turkmen', 'Türkmen, Түркмен', 'tk', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(160, 'Tagalog', 'Wikang Tagalog, ᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔', 'tl', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(161, 'Tswana', 'Setswana', 'tn', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(162, 'Tonga (Tonga Islands)', 'faka Tonga', 'to', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(163, 'Turkish', 'Türkçe', 'tr', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(164, 'Tsonga', 'Xitsonga', 'ts', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(165, 'Tatar', 'татарча, tatarça, تاتارچا‎', 'tt', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(166, 'Twi', 'Twi', 'tw', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(167, 'Tahitian', 'Reo Tahiti', 'ty', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(168, 'Uighur, Uyghur', 'Uyƣurqə, ئۇيغۇرچە‎', 'ug', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(169, 'Ukrainian', 'українська', 'uk', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(170, 'Urdu', 'اردو', 'ur', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(171, 'Uzbek', 'zbek, Ўзбек, أۇزبېك‎', 'uz', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(172, 'Venda', 'Tshivenḓa', 've', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(173, 'Vietnamese', 'Tiếng Việt', 'vi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(174, 'Volapük', 'Volapük', 'vo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(175, 'Walloon', 'Walon', 'wa', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(176, 'Welsh', 'Cymraeg', 'cy', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(177, 'Wolof', 'Wollof', 'wo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(178, 'Western Frisian', 'Frysk', 'fy', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(179, 'Xhosa', 'isiXhosa', 'xh', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(180, 'Yiddish', 'ייִדיש', 'yi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(181, 'Yoruba', 'Yorùbá', 'yo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(182, 'Zhuang, Chuang', 'Saɯ cueŋƅ, Saw cuengh', 'za', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20');

-- --------------------------------------------------------

--
-- Структура таблицы `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', '_json', 'Search results', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(2, 0, 'en', '_json', 'results for', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(3, 0, 'en', '_json', 'My account', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(4, 0, 'en', '_json', 'Reset Password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(5, 0, 'en', '_json', 'New password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(6, 0, 'en', '_json', 'Enter new password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(7, 0, 'en', '_json', 'Re-new password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(8, 0, 'en', '_json', 'Save', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(9, 0, 'en', '_json', 'Profile', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(10, 0, 'en', '_json', 'Places', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(11, 0, 'en', '_json', 'Wishlist', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(12, 0, 'en', '_json', 'Profile Setting', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(13, 0, 'en', '_json', 'Avatar', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(14, 0, 'en', '_json', 'Upload new', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(15, 0, 'en', '_json', 'Basic Info', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(16, 0, 'en', '_json', 'Full name', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(17, 0, 'en', '_json', 'Enter your name', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(18, 0, 'en', '_json', 'Email', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(19, 0, 'en', '_json', 'Phone', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(20, 0, 'en', '_json', 'Enter phone number', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(21, 0, 'en', '_json', 'Facebook', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(22, 0, 'en', '_json', 'Enter facebook', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(23, 0, 'en', '_json', 'Instagram', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(24, 0, 'en', '_json', 'Enter instagram', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(25, 0, 'en', '_json', 'Update', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(26, 0, 'en', '_json', 'Change Password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(27, 0, 'en', '_json', 'Old password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(28, 0, 'en', '_json', 'Enter old password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(29, 0, 'en', '_json', 'Place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(30, 0, 'en', '_json', 'All cities', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(31, 0, 'en', '_json', 'All categories', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(32, 0, 'en', '_json', 'Search', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(33, 0, 'en', '_json', 'ID', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(34, 0, 'en', '_json', 'Thumb', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(35, 0, 'en', '_json', 'Place name', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(36, 0, 'en', '_json', 'City', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(37, 0, 'en', '_json', 'Category', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(38, 0, 'en', '_json', 'Status', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(39, 0, 'en', '_json', 'Edit', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(40, 0, 'en', '_json', 'View', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(41, 0, 'en', '_json', 'Delete', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(42, 0, 'en', '_json', 'No item found', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(43, 0, 'en', '_json', 'Login', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(44, 0, 'en', '_json', 'Sign Up', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(45, 0, 'en', '_json', 'My Places', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(46, 0, 'en', '_json', 'Logout', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(47, 0, 'en', '_json', 'Destinations', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(48, 0, 'en', '_json', 'Continue with', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(49, 0, 'en', '_json', 'Forgot password', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(50, 0, 'en', '_json', 'Add place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(51, 0, 'en', '_json', 'Discover amazing things to do everywhere you go.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(52, 0, 'en', '_json', 'About Us', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(53, 0, 'en', '_json', 'Blog', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(54, 0, 'en', '_json', 'Faqs', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(55, 0, 'en', '_json', 'Contact', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(56, 0, 'en', '_json', 'Contact Us', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(57, 0, 'en', '_json', 'Back to list', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(58, 0, 'en', '_json', 'Show all', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(59, 0, 'en', '_json', 'Introducing', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(60, 0, 'en', '_json', 'Currency', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(61, 0, 'en', '_json', 'Languages', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(62, 0, 'en', '_json', 'Best time to visit', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(63, 0, 'en', '_json', 'Maps view', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(64, 0, 'en', '_json', 'See all', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(65, 0, 'en', '_json', 'No places', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(66, 0, 'en', '_json', 'results', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(67, 0, 'en', '_json', 'Clear All', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(68, 0, 'en', '_json', 'Sort By', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(69, 0, 'en', '_json', 'Newest', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(70, 0, 'en', '_json', 'Average rating', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(71, 0, 'en', '_json', 'Price: Low to high', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(72, 0, 'en', '_json', 'Price: High to low', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(73, 0, 'en', '_json', 'Free', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(74, 0, 'en', '_json', 'Low: $', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(75, 0, 'en', '_json', 'Medium: $$', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(76, 0, 'en', '_json', 'High: $$$', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(77, 0, 'en', '_json', 'Types', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(78, 0, 'en', '_json', 'Amenities', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(79, 0, 'en', '_json', 'Explorer Other Cities', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(80, 0, 'en', '_json', 'No cities', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(81, 0, 'en', '_json', 'Explore the world', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(82, 0, 'en', '_json', 'Type a city or location', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(83, 0, 'en', '_json', 'Popular:', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(84, 0, 'en', '_json', 'Popular cities', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(85, 0, 'en', '_json', 'Get the App', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(86, 0, 'en', '_json', 'Download the app and go to travel the world.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(87, 0, 'en', '_json', 'Related stories', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(88, 0, 'en', '_json', 'View more', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(89, 0, 'en', '_json', 'We want to hear from you.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(90, 0, 'en', '_json', 'Our Offices', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(91, 0, 'en', '_json', 'London (HQ)', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(92, 0, 'en', '_json', 'Unit TAP.E, 80 Long Lane, London, SE1 4GT', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(93, 0, 'en', '_json', '+44 (0)34 5312 3505', '+44 (0)34 5312 3505', '2020-04-01 08:50:11', '2020-04-01 10:11:09'),
(94, 0, 'en', '_json', 'Get Direction', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(95, 0, 'en', '_json', 'Paris', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(96, 0, 'en', '_json', 'Station F, 2 Parvis Alan Turing, 8742, Paris France', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(97, 0, 'en', '_json', 'Get in touch with us', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(98, 0, 'en', '_json', 'First name', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(99, 0, 'en', '_json', 'Last name', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(100, 0, 'en', '_json', 'Phone number', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(101, 0, 'en', '_json', 'Message', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(102, 0, 'en', '_json', 'Send Message', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(103, 0, 'en', '_json', 'Genaral', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(104, 0, 'en', '_json', 'Location', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(105, 0, 'en', '_json', 'Contact info', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(106, 0, 'en', '_json', 'Social network', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(107, 0, 'en', '_json', 'Open hours', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(108, 0, 'en', '_json', 'Media', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(109, 0, 'en', '_json', 'Edit my place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(110, 0, 'en', '_json', 'Add new place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(111, 0, 'en', '_json', 'What the name of place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(112, 0, 'en', '_json', 'Price Range', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(113, 0, 'en', '_json', 'Description', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(114, 0, 'en', '_json', 'Select Category', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(115, 0, 'en', '_json', 'Place Type', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(116, 0, 'en', '_json', 'Select Place Type', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(117, 0, 'en', '_json', 'Place Address', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(118, 0, 'en', '_json', 'Select country', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(119, 0, 'en', '_json', 'Select city', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(120, 0, 'en', '_json', 'Full Address', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(121, 0, 'en', '_json', 'Place Location at Google Map', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(122, 0, 'en', '_json', 'Your email address', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(123, 0, 'en', '_json', 'Your phone number', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(124, 0, 'en', '_json', 'Website', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(125, 0, 'en', '_json', 'Your website url', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(126, 0, 'en', '_json', 'Social Networks', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(127, 0, 'en', '_json', 'Select network', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(128, 0, 'en', '_json', 'Enter URL include http or www', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(129, 0, 'en', '_json', 'Add more', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(130, 0, 'en', '_json', 'Opening Hours', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(131, 0, 'en', '_json', 'Thumb image', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(132, 0, 'en', '_json', 'Maximum file size: 1 MB', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(133, 0, 'en', '_json', 'Gallery Images', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(134, 0, 'en', '_json', 'Video', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(135, 0, 'en', '_json', 'Youtube, Vimeo video url', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(136, 0, 'en', '_json', 'Login to submit', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(137, 0, 'en', '_json', 'Submit', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(138, 0, 'en', '_json', 'Gallery', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(139, 0, 'en', '_json', 'Overview', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(140, 0, 'en', '_json', 'Show more', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(141, 0, 'en', '_json', 'Location & Maps', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(142, 0, 'en', '_json', 'Direction', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(143, 0, 'en', '_json', 'Review', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(144, 0, 'en', '_json', 'to review', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(145, 0, 'en', '_json', 'Write a review', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(146, 0, 'en', '_json', 'Rate This Place', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(147, 0, 'en', '_json', 'Booking online', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(148, 0, 'en', '_json', 'Book now', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(149, 0, 'en', '_json', 'Make a reservation', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(150, 0, 'en', '_json', 'Send me a message', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(151, 0, 'en', '_json', 'Send', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(152, 0, 'en', '_json', 'Banner Ads', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(153, 0, 'en', '_json', 'By Booking.com', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(154, 0, 'en', '_json', 'Adults', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(155, 0, 'en', '_json', 'Childrens', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(156, 0, 'en', '_json', 'You won\'t be charged yet', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(157, 0, 'en', '_json', 'You successfully created your booking.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(158, 0, 'en', '_json', 'An error occurred. Please try again.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(159, 0, 'en', '_json', 'Similar places', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(160, 0, 'en', '_json', 'by', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(161, 0, 'en', '_json', 'Related Articles', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(162, 0, 'en', '_json', 'All', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(163, 0, 'en', '_json', 'reviews', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(164, 0, 'en', '_json', '404 Error', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(165, 0, 'en', '_json', 'Sorry, we couldn\'t find that page.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(166, 0, 'en', '_json', 'OOPS!', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(167, 0, 'en', '_json', 'We can\'t find the page or studio you\'re looking for.', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(168, 0, 'en', '_json', 'Make sure you\'ve typed in the URL correctly or try go', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(169, 0, 'en', '_json', 'Homepage', NULL, '2020-04-01 08:50:11', '2020-04-01 08:50:11'),
(170, 0, 'fr', '_json', 'Explore the world', 'Explore le monde', '2020-04-01 08:57:36', '2020-04-01 10:11:09'),
(171, 0, 'fr', '_json', 'Destinations', 'Les destinations', '2020-04-01 08:58:13', '2020-04-01 10:11:09'),
(172, 0, 'fr', '_json', 'Add place', 'Ajouter Un Lieu', '2020-04-01 09:03:20', '2020-04-01 10:11:09'),
(173, 0, 'fr', '_json', 'Type a city or location', 'Saisissez une ville ou un emplacement', '2020-04-01 09:04:19', '2020-04-01 10:11:09'),
(174, 0, 'fr', '_json', 'Popular cities', 'Villes populaires', '2020-04-01 09:04:41', '2020-04-01 10:11:09'),
(175, 0, 'fr', '_json', 'Get the App', 'Obtenir l\'application', '2020-04-01 09:06:12', '2020-04-01 10:11:09'),
(176, 0, 'fr', '_json', 'Download the app and go to travel the world.', 'Téléchargez l\'application et partez parcourir le monde.', '2020-04-01 09:06:45', '2020-04-01 10:11:09'),
(177, 0, 'fr', '_json', 'Related stories', 'Histoires liées', '2020-04-01 09:07:21', '2020-04-01 10:11:09'),
(178, 0, 'fr', '_json', 'Discover amazing things to do everywhere you go.', 'Découvrez des choses incroyables à faire partout où vous allez.', '2020-04-01 09:07:54', '2020-04-01 10:11:09'),
(179, 0, 'fr', '_json', 'About Us', 'À propos de nous', '2020-04-01 09:08:47', '2020-04-01 10:11:09'),
(180, 0, 'fr', '_json', 'Popular:', 'Populaire', '2020-04-01 09:10:33', '2020-04-01 10:11:09'),
(181, 0, 'fr', '_json', 'Places', 'Des Endroits', '2020-04-01 09:11:04', '2020-04-01 10:11:09'),
(182, 0, 'fr', '_json', 'View more', 'Voir plus', '2020-04-01 09:11:47', '2020-04-01 10:11:09'),
(183, 0, 'fr', '_json', 'Introducing', 'Présentation', '2020-04-01 09:27:56', '2020-04-01 10:11:09'),
(184, 0, 'fr', '_json', 'Currency', 'DEVISE', '2020-04-01 09:28:21', '2020-04-01 10:11:09'),
(185, 0, 'fr', '_json', 'Languages', 'LANGUES', '2020-04-01 09:28:47', '2020-04-01 10:11:09'),
(186, 0, 'fr', '_json', 'Best time to visit', 'MEILLEUR MOMENT POUR VISITER', '2020-04-01 09:29:07', '2020-04-01 10:11:09'),
(187, 0, 'fr', '_json', 'Explorer Other Cities', 'Explorer d\'autres villes', '2020-04-01 09:29:43', '2020-04-01 10:11:09'),
(188, 0, 'fr', '_json', 'Maps view', 'Affichage des cartes', '2020-04-01 09:33:26', '2020-04-01 10:11:09'),
(189, 0, 'fr', '_json', 'See all', 'Voir tout', '2020-04-01 09:33:50', '2020-04-01 10:11:09'),
(190, 0, 'fr', '_json', 'Overview', 'Aperçu', '2020-04-01 09:39:49', '2020-04-01 10:11:09'),
(191, 0, 'fr', '_json', 'Location & Maps', 'Emplacement et cartes', '2020-04-01 09:40:08', '2020-04-01 10:11:09'),
(192, 0, 'fr', '_json', 'Contact info', 'Informations de contact', '2020-04-01 09:40:28', '2020-04-01 10:11:09'),
(193, 0, 'fr', '_json', 'Opening Hours', 'Horaires d\'ouvertures', '2020-04-01 09:40:49', '2020-04-01 10:11:09'),
(194, 0, 'fr', '_json', 'Our Offices', 'Horaires d\'ouvertures', '2020-04-01 09:41:12', '2020-04-01 10:11:09'),
(195, 0, 'fr', '_json', 'Write a review', 'Écrire une critique', '2020-04-01 09:41:32', '2020-04-01 10:11:09'),
(196, 0, 'fr', '_json', 'Rate This Place', 'Évaluez cet endroit', '2020-04-01 09:41:51', '2020-04-01 10:11:09'),
(197, 0, 'fr', '_json', 'Submit', 'Soumettre', '2020-04-01 09:42:11', '2020-04-01 10:11:09'),
(198, 0, 'fr', '_json', 'Similar places', 'Endroits similaires', '2020-04-01 09:42:41', '2020-04-01 10:11:09'),
(199, 0, 'fr', '_json', 'Gallery', 'Galerie', '2020-04-01 09:43:08', '2020-04-01 10:11:09'),
(200, 0, 'fr', '_json', 'Show more', 'Montre plus', '2020-04-01 09:43:35', '2020-04-01 10:11:09'),
(201, 0, 'fr', '_json', 'Get in touch with us', 'Prenez contact avec nous', '2020-04-01 09:44:58', '2020-04-01 10:11:09'),
(202, 0, 'fr', '_json', '404 Error', 'Erreur 404', '2020-04-01 09:45:17', '2020-04-01 10:11:09'),
(203, 0, 'fr', '_json', 'Add more', 'Ajouter plus de', '2020-04-01 09:45:31', '2020-04-01 10:11:09'),
(204, 0, 'fr', '_json', 'Add new place', 'Ajouter un nouveau lieu', '2020-04-01 09:45:48', '2020-04-01 10:11:09'),
(205, 0, 'fr', '_json', 'Adults', 'Adultes', '2020-04-01 09:46:12', '2020-04-01 10:11:09'),
(206, 0, 'fr', '_json', 'All', 'Toute', '2020-04-01 09:46:24', '2020-04-01 10:11:09'),
(207, 0, 'fr', '_json', 'All categories', 'Toutes catégories', '2020-04-01 09:46:34', '2020-04-01 10:11:09'),
(208, 0, 'fr', '_json', 'All cities', 'Toutes les villes', '2020-04-01 09:46:45', '2020-04-01 10:11:09'),
(209, 0, 'fr', '_json', 'Amenities', 'Agréments', '2020-04-01 09:46:55', '2020-04-01 10:11:09'),
(210, 0, 'fr', '_json', 'An error occurred. Please try again.', 'Une erreur est survenue. Veuillez réessayer.', '2020-04-01 09:47:06', '2020-04-01 10:11:09'),
(211, 0, 'fr', '_json', 'Avatar', 'Avatar', '2020-04-01 09:47:18', '2020-04-01 10:11:09'),
(212, 0, 'fr', '_json', 'Average rating', 'Note moyenne', '2020-04-01 09:47:28', '2020-04-01 10:11:09'),
(213, 0, 'fr', '_json', 'Back to list', 'Retour à la liste', '2020-04-01 09:47:38', '2020-04-01 10:11:09'),
(214, 0, 'fr', '_json', 'Banner Ads', 'Bannière publicitaire', '2020-04-01 09:47:50', '2020-04-01 10:11:09'),
(215, 0, 'fr', '_json', 'Basic Info', 'Informations de base', '2020-04-01 09:48:14', '2020-04-01 10:11:09'),
(216, 0, 'fr', '_json', 'Blog', 'Blog', '2020-04-01 09:48:25', '2020-04-01 10:11:09'),
(217, 0, 'fr', '_json', 'Book now', 'Reserve maintenant', '2020-04-01 09:48:37', '2020-04-01 10:11:09'),
(218, 0, 'fr', '_json', 'Booking online', 'Réservation en ligne', '2020-04-01 09:48:46', '2020-04-01 10:11:09'),
(219, 0, 'fr', '_json', 'by', 'par', '2020-04-01 09:48:55', '2020-04-01 10:11:09'),
(220, 0, 'fr', '_json', 'By Booking.com', 'Par Booking.com', '2020-04-01 09:49:07', '2020-04-01 10:11:09'),
(221, 0, 'fr', '_json', 'Category', 'Catégorie', '2020-04-01 09:49:18', '2020-04-01 10:11:09'),
(222, 0, 'fr', '_json', 'Change Password', 'Changer le mot de passe', '2020-04-01 09:49:28', '2020-04-01 10:11:09'),
(223, 0, 'fr', '_json', 'Childrens', 'Enfants', '2020-04-01 09:49:38', '2020-04-01 10:11:09'),
(224, 0, 'fr', '_json', 'City', 'Ville', '2020-04-01 09:49:48', '2020-04-01 10:11:09'),
(225, 0, 'fr', '_json', 'Clear All', 'Tout effacer', '2020-04-01 09:49:58', '2020-04-01 10:11:09'),
(226, 0, 'fr', '_json', 'Contact', 'Contact', '2020-04-01 09:50:08', '2020-04-01 10:11:09'),
(227, 0, 'fr', '_json', 'Contact Us', 'Nous contacter', '2020-04-01 09:50:17', '2020-04-01 10:11:09'),
(228, 0, 'fr', '_json', 'Continue with', 'Continue avec', '2020-04-01 09:50:26', '2020-04-01 10:11:09'),
(229, 0, 'fr', '_json', 'Delete', 'Supprimer', '2020-04-01 09:50:37', '2020-04-01 10:11:09'),
(230, 0, 'fr', '_json', 'Description', 'La description', '2020-04-01 09:50:46', '2020-04-01 10:11:09'),
(231, 0, 'fr', '_json', 'Direction', 'Direction', '2020-04-01 09:50:56', '2020-04-01 10:11:09'),
(232, 0, 'fr', '_json', 'Edit', 'Éditer', '2020-04-01 09:51:07', '2020-04-01 10:11:09'),
(233, 0, 'fr', '_json', 'Edit my place', 'Modifier ma place', '2020-04-01 09:51:20', '2020-04-01 10:11:09'),
(234, 0, 'fr', '_json', 'Email', 'Email', '2020-04-01 09:51:25', '2020-04-01 10:11:09'),
(235, 0, 'fr', '_json', 'Enter facebook', 'Entrez facebook', '2020-04-01 09:51:48', '2020-04-01 10:11:09'),
(236, 0, 'fr', '_json', 'Enter instagram', 'Enter instagram', '2020-04-01 09:51:53', '2020-04-01 10:11:09'),
(237, 0, 'fr', '_json', 'Enter new password', 'Entrez un nouveau mot de passe', '2020-04-01 09:52:05', '2020-04-01 10:11:09'),
(238, 0, 'fr', '_json', 'Enter old password', 'Entrez l\'ancien mot de passe', '2020-04-01 09:52:15', '2020-04-01 10:11:09'),
(239, 0, 'fr', '_json', 'Enter phone number', 'Entrez le numéro de téléphone', '2020-04-01 09:52:27', '2020-04-01 10:11:09'),
(240, 0, 'fr', '_json', 'Enter URL include http or www', 'Entrez l\'URL inclure http ou www', '2020-04-01 09:52:37', '2020-04-01 10:11:09'),
(241, 0, 'fr', '_json', 'Enter your name', 'Entrez votre nom', '2020-04-01 09:52:48', '2020-04-01 10:11:09'),
(242, 0, 'fr', '_json', 'Facebook', 'Facebook', '2020-04-01 09:52:53', '2020-04-01 10:11:09'),
(243, 0, 'fr', '_json', 'Faqs', 'Faqs', '2020-04-01 09:52:57', '2020-04-01 10:11:09'),
(244, 0, 'fr', '_json', 'First name', 'Prénom', '2020-04-01 09:53:05', '2020-04-01 10:11:09'),
(245, 0, 'fr', '_json', 'Forgot password', 'Mot de passe oublié', '2020-04-01 09:53:14', '2020-04-01 10:11:09'),
(246, 0, 'fr', '_json', 'Free', 'Gratuite', '2020-04-01 09:53:24', '2020-04-01 10:11:09'),
(247, 0, 'fr', '_json', 'Full Address', 'Adresse complète', '2020-04-01 09:53:35', '2020-04-01 10:11:09'),
(248, 0, 'fr', '_json', 'Full name', 'Nom complet', '2020-04-01 09:53:43', '2020-04-01 10:11:09'),
(249, 0, 'fr', '_json', 'Gallery Images', 'Galerie d\'images', '2020-04-01 09:53:54', '2020-04-01 10:11:09'),
(250, 0, 'fr', '_json', 'Genaral', 'Générale', '2020-04-01 09:54:04', '2020-04-01 10:11:09'),
(251, 0, 'fr', '_json', 'Get Direction', 'Get Direction', '2020-04-01 09:54:15', '2020-04-01 10:11:09'),
(252, 0, 'fr', '_json', 'High: $$$', 'Élevé: $$$', '2020-04-01 09:54:26', '2020-04-01 10:11:09'),
(253, 0, 'fr', '_json', 'Homepage', 'Page d\'accueil', '2020-04-01 09:54:35', '2020-04-01 10:11:09'),
(254, 0, 'fr', '_json', 'Last name', 'Nom de famille', '2020-04-01 09:54:48', '2020-04-01 10:11:09'),
(255, 0, 'fr', '_json', 'Location', 'Emplacement', '2020-04-01 09:54:59', '2020-04-01 10:11:09'),
(256, 0, 'fr', '_json', 'Login', 'S\'identifier', '2020-04-01 09:55:09', '2020-04-01 10:11:09'),
(257, 0, 'fr', '_json', 'Login to submit', 'Login to submit', '2020-04-01 09:55:15', '2020-04-01 10:11:09'),
(258, 0, 'fr', '_json', 'Logout', 'Se déconnecter', '2020-04-01 09:55:28', '2020-04-01 10:11:09'),
(259, 0, 'fr', '_json', 'Low: $', 'Faible: $', '2020-04-01 09:55:39', '2020-04-01 10:11:09'),
(260, 0, 'fr', '_json', 'Make a reservation', 'Faire une réservation', '2020-04-01 09:55:49', '2020-04-01 10:11:09'),
(261, 0, 'fr', '_json', 'Make sure you\'ve typed in the URL correctly or try go', 'Assurez-vous que vous avez correctement saisi l\'URL ou essayez d\'aller', '2020-04-01 09:55:59', '2020-04-01 10:11:09'),
(262, 0, 'fr', '_json', 'Maximum file size: 1 MB', 'Taille maximale du fichier: 1 Mo', '2020-04-01 09:56:38', '2020-04-01 10:11:09'),
(263, 0, 'fr', '_json', 'Media', 'Médias', '2020-04-01 09:56:49', '2020-04-01 10:11:09'),
(264, 0, 'fr', '_json', 'Medium: $$', 'Moyen: $$', '2020-04-01 09:56:59', '2020-04-01 10:11:09'),
(265, 0, 'fr', '_json', 'Message', 'Message', '2020-04-01 09:57:11', '2020-04-01 10:11:09'),
(266, 0, 'fr', '_json', 'My account', 'Mon compte', '2020-04-01 09:57:21', '2020-04-01 10:11:09'),
(267, 0, 'fr', '_json', 'My Places', 'Mes lieux', '2020-04-01 09:57:33', '2020-04-01 10:11:09'),
(268, 0, 'fr', '_json', 'New password', 'New password', '2020-04-01 09:57:47', '2020-04-01 10:11:09'),
(269, 0, 'fr', '_json', 'Newest', 'Le plus récent', '2020-04-01 09:57:56', '2020-04-01 10:11:09'),
(270, 0, 'fr', '_json', 'No cities', 'Pas de villes', '2020-04-01 09:58:05', '2020-04-01 10:11:09'),
(271, 0, 'fr', '_json', 'No item found', 'Aucun élément trouvé', '2020-04-01 09:58:13', '2020-04-01 10:11:09'),
(272, 0, 'fr', '_json', 'No places', 'Aucun endroit', '2020-04-01 09:58:24', '2020-04-01 10:11:09'),
(273, 0, 'fr', '_json', 'Old password', 'Ancien mot de passe', '2020-04-01 09:58:34', '2020-04-01 10:11:09'),
(274, 0, 'fr', '_json', 'Open hours', 'Heures d\'ouverture', '2020-04-01 09:58:44', '2020-04-01 10:11:09'),
(275, 0, 'fr', '_json', 'Phone', 'Téléphone', '2020-04-01 09:58:54', '2020-04-01 10:11:09'),
(276, 0, 'fr', '_json', 'Phone number', 'Numéro de téléphone', '2020-04-01 09:59:04', '2020-04-01 10:11:09'),
(277, 0, 'fr', '_json', 'Place', 'Endroit', '2020-04-01 09:59:14', '2020-04-01 10:11:09'),
(278, 0, 'fr', '_json', 'Place Address', 'Adresse du lieu', '2020-04-01 09:59:27', '2020-04-01 10:11:09'),
(279, 0, 'fr', '_json', 'Place Location at Google Map', 'Placer la position sur Google Map', '2020-04-01 09:59:36', '2020-04-01 10:11:09'),
(280, 0, 'fr', '_json', 'Place name', 'Nom du lieu', '2020-04-01 09:59:45', '2020-04-01 10:11:09'),
(281, 0, 'fr', '_json', 'Place Type', 'Type de lieu', '2020-04-01 09:59:56', '2020-04-01 10:11:09'),
(282, 0, 'fr', '_json', 'Price Range', 'Échelle des prix', '2020-04-01 10:00:08', '2020-04-01 10:11:09'),
(283, 0, 'fr', '_json', 'Price: High to low', 'Prix: de haut en bas', '2020-04-01 10:00:16', '2020-04-01 10:11:09'),
(284, 0, 'fr', '_json', 'Price: Low to high', 'Price: Low to high', '2020-04-01 10:00:22', '2020-04-01 10:11:09'),
(285, 0, 'fr', '_json', 'Profile', 'Profil', '2020-04-01 10:00:32', '2020-04-01 10:11:09'),
(286, 0, 'fr', '_json', 'Profile Setting', 'Réglage du profil', '2020-04-01 10:00:41', '2020-04-01 10:11:09'),
(287, 0, 'fr', '_json', 'Re-new password', 'Nouveau mot de passe', '2020-04-01 10:00:50', '2020-04-01 10:11:09'),
(288, 0, 'fr', '_json', 'Related Articles', 'Articles Liés', '2020-04-01 10:01:01', '2020-04-01 10:11:09'),
(289, 0, 'fr', '_json', 'Reset Password', 'réinitialiser le mot de passe', '2020-04-01 10:01:12', '2020-04-01 10:11:09'),
(290, 0, 'fr', '_json', 'results', 'résultats', '2020-04-01 10:01:23', '2020-04-01 10:11:09'),
(291, 0, 'fr', '_json', 'results for', 'résultats pour', '2020-04-01 10:01:32', '2020-04-01 10:11:09'),
(292, 0, 'fr', '_json', 'Review', 'La revue', '2020-04-01 10:01:42', '2020-04-01 10:11:09'),
(293, 0, 'fr', '_json', 'reviews', 'Commentaires', '2020-04-01 10:01:53', '2020-04-01 10:11:09'),
(294, 0, 'fr', '_json', 'Save', 'sauvegarder', '2020-04-01 10:02:04', '2020-04-01 10:11:09'),
(295, 0, 'fr', '_json', 'Search', 'Chercher', '2020-04-01 10:02:15', '2020-04-01 10:11:09'),
(296, 0, 'fr', '_json', 'Search results', 'Résultats de recherche', '2020-04-01 10:02:24', '2020-04-01 10:11:09'),
(297, 0, 'fr', '_json', 'Select Category', 'Choisir une catégorie', '2020-04-01 10:02:33', '2020-04-01 10:11:09'),
(298, 0, 'fr', '_json', 'Select city', 'Sélectionnez une ville', '2020-04-01 10:02:42', '2020-04-01 10:11:09'),
(299, 0, 'fr', '_json', 'Select country', 'Choisissez le pays', '2020-04-01 10:02:54', '2020-04-01 10:11:09'),
(300, 0, 'fr', '_json', 'Select network', 'Sélectionnez réseau', '2020-04-01 10:03:05', '2020-04-01 10:11:09'),
(301, 0, 'fr', '_json', 'Select Place Type', 'Sélectionnez le type de lieu', '2020-04-01 10:03:13', '2020-04-01 10:11:09'),
(302, 0, 'fr', '_json', 'Send', 'Envoyer', '2020-04-01 10:03:22', '2020-04-01 10:11:09'),
(303, 0, 'fr', '_json', 'Send me a message', 'Envoyez-moi un message', '2020-04-01 10:03:32', '2020-04-01 10:11:09'),
(304, 0, 'fr', '_json', 'Send Message', 'Envoyer le message', '2020-04-01 10:03:42', '2020-04-01 10:11:09'),
(305, 0, 'fr', '_json', 'Show all', 'Afficher tout', '2020-04-01 10:03:50', '2020-04-01 10:11:09'),
(306, 0, 'fr', '_json', 'Sign Up', 'S\'inscrire', '2020-04-01 10:04:00', '2020-04-01 10:11:09'),
(307, 0, 'fr', '_json', 'Social network', 'Réseau social', '2020-04-01 10:04:09', '2020-04-01 10:11:09'),
(308, 0, 'fr', '_json', 'Social Networks', 'Réseau social', '2020-04-01 10:04:14', '2020-04-01 10:11:09'),
(309, 0, 'fr', '_json', 'Sorry, we couldn\'t find that page.', 'Désolé, nous n\'avons pas pu trouver cette page.', '2020-04-01 10:04:28', '2020-04-01 10:11:09'),
(310, 0, 'fr', '_json', 'Sort By', 'Trier par', '2020-04-01 10:04:39', '2020-04-01 10:11:09'),
(311, 0, 'fr', '_json', 'Status', 'Statut', '2020-04-01 10:04:53', '2020-04-01 10:11:09'),
(312, 0, 'fr', '_json', 'Thumb', 'Thumb', '2020-04-01 10:05:04', '2020-04-01 10:11:09'),
(313, 0, 'fr', '_json', 'Thumb image', 'Image du pouce', '2020-04-01 10:05:14', '2020-04-01 10:11:09'),
(314, 0, 'fr', '_json', 'to review', 'réviser', '2020-04-01 10:05:23', '2020-04-01 10:11:09'),
(315, 0, 'fr', '_json', 'Types', 'Les types', '2020-04-01 10:05:33', '2020-04-01 10:11:09'),
(316, 0, 'fr', '_json', 'Update', 'Mise à jour', '2020-04-01 10:05:43', '2020-04-01 10:11:09'),
(317, 0, 'fr', '_json', 'Upload new', 'Importer un nouveau', '2020-04-01 10:05:54', '2020-04-01 10:11:09'),
(318, 0, 'fr', '_json', 'Video', 'Vidéo', '2020-04-01 10:06:04', '2020-04-01 10:11:09'),
(319, 0, 'fr', '_json', 'View', 'Vue', '2020-04-01 10:06:13', '2020-04-01 10:11:09'),
(320, 0, 'fr', '_json', 'We can\'t find the page or studio you\'re looking for.', 'Nous ne trouvons pas la page ou le studio que vous recherchez.', '2020-04-01 10:06:26', '2020-04-01 10:11:09'),
(321, 0, 'fr', '_json', 'We want to hear from you.', 'Nous voulons de vos nouvelles.', '2020-04-01 10:06:40', '2020-04-01 10:11:09'),
(322, 0, 'fr', '_json', 'Website', 'Site Internet', '2020-04-01 10:06:52', '2020-04-01 10:11:09'),
(323, 0, 'fr', '_json', 'What the name of place', 'quel est le nom du lieu', '2020-04-01 10:07:13', '2020-04-01 10:11:09'),
(324, 0, 'fr', '_json', 'Wishlist', 'Liste de souhaits', '2020-04-01 10:07:24', '2020-04-01 10:11:09'),
(325, 0, 'fr', '_json', 'You successfully created your booking.', 'Vous avez créé votre réservation avec succès.', '2020-04-01 10:07:35', '2020-04-01 10:11:09'),
(326, 0, 'fr', '_json', 'You won\'t be charged yet', 'You won\'t be charged yet', '2020-04-01 10:07:43', '2020-04-01 10:11:09'),
(327, 0, 'fr', '_json', 'Your email address', 'Votre adresse email', '2020-04-01 10:07:54', '2020-04-01 10:11:09'),
(328, 0, 'fr', '_json', 'Your phone number', 'Votre numéro de téléphone', '2020-04-01 10:08:05', '2020-04-01 10:11:09'),
(329, 0, 'fr', '_json', 'Your website url', 'L\'adresse URL de votre site', '2020-04-01 10:08:15', '2020-04-01 10:11:09'),
(330, 0, 'fr', '_json', 'Youtube, Vimeo video url', 'Youtube, URL vidéo Vimeo', '2020-04-01 10:08:26', '2020-04-01 10:11:09'),
(331, 0, 'en', '_json', 'Search places ...', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(332, 0, 'en', '_json', 'Or', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(333, 0, 'en', '_json', 'Lost your password? Please enter your email address. You will receive a link to create a new password via email.', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(334, 0, 'en', '_json', 'Dashboard', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(335, 0, 'en', '_json', 'Company', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(336, 0, 'en', '_json', 'Support', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(337, 0, 'en', '_json', 'Email: support@domain.com', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(338, 0, 'en', '_json', 'Phone: 1 (00) 832 2342', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(339, 0, 'en', '_json', 'https://uxper.co', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(340, 0, 'en', '_json', 'UxPer', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40'),
(341, 0, 'en', '_json', 'All rights reserved.', NULL, '2020-09-24 06:05:40', '2020-09-24 06:05:40');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_17_152235_create_settings_table', 1),
(5, '2020_01_11_062641_create_amenities_table', 1),
(6, '2020_01_11_062643_create_bookings_table', 1),
(7, '2020_01_11_062645_create_categories_table', 1),
(8, '2020_01_11_062646_create_cities_table', 1),
(9, '2020_01_11_062648_create_countries_table', 1),
(10, '2020_01_11_062649_create_place_types_table', 1),
(11, '2020_01_11_062651_create_places_table', 1),
(12, '2020_01_11_062653_create_posts_table', 1),
(13, '2020_01_11_062654_create_reviews_table', 1),
(14, '2020_01_11_062658_create_wishlists_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'chillimarcos@gmail.com', 'oFMLnqnQW2pIz3lqnOespAsj453EhgqswL9fWrN4dspZ4zu8Pp50PjkMUW7x', '2020-04-01 08:52:07', '2020-04-01 10:01:50');

-- --------------------------------------------------------

--
-- Структура таблицы `places`
--

CREATE TABLE `places` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `place_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price_range` int(11) DEFAULT NULL,
  `amenities` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `social` varchar(500) DEFAULT '' COMMENT 'array',
  `opening_hour` varchar(500) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `booking_type` int(2) DEFAULT NULL,
  `link_bookingcom` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `places`
--

INSERT INTO `places` (`id`, `user_id`, `country_id`, `city_id`, `category`, `place_type`, `name`, `slug`, `description`, `price_range`, `amenities`, `address`, `lat`, `lng`, `email`, `phone_number`, `website`, `social`, `opening_hour`, `thumb`, `gallery`, `video`, `booking_type`, `link_bookingcom`, `status`, `seo_title`, `seo_description`, `updated_at`, `created_at`) VALUES
(16, 8, 6, 23, '[\"13\"]', '[\"34\"]', 'Le Meurice', 'le-meurice', 'Le Meurice is a five-star hotel with a prime location in the 1st arrondissement of Paris, tucked away between the Place de la Concorde, the Louvre, which is the largest art museum in the world, and the gorgeous Tuileries Garden. Its dreamy interiors whisk you back to the Louis XVI era, and have been dazzling the luckiest visitors for centuries. Part of the esteemed Dorchester Group, there is a three-Michelin-star restaurant, an on-site spa and numerous surprises fusing a classic style with modern amenities – peek behind the paintings and you’ll most likely find a huge plasma television. What makes this place unique are the subtle winks to artist Salvador Dalí, with one of the hotel’s restaurants named in his honour.', 2, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '228 Rue de Rivoli, 75001 Paris, France', 48.86533259999999, 2.3281374000000596, 'info@dorchestercollection.com', '+33144581010', NULL, '[{\"name\":\"Facebook\",\"url\":\"dorchester\"},{\"name\":\"Instagram\",\"url\":\"dorchester\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5dc055e2cbabf_1572885986.jpeg', '[\"5dc055cd10a2e_1572885965.jpeg\",\"5dc055da19dcc_1572885978.jpeg\"]', NULL, 3, 'booking.com', 1, NULL, NULL, '2019-12-20 06:20:11', '2019-11-04 16:46:26'),
(17, 8, 6, 23, '[\"12\"]', '[\"25\"]', 'Septime', 'septime', 'A Parisian restaurant serving up haute-cuisine without the pretention.\r\n\r\nSeptime may regularly rank as one of the world’s best restaurants, but it carries with it none of the stuffiness of its counterparts. Housed in an unmarked street-level building in the 11th Arrondissement, and furnished with wooden chairs and tables, the restaurant has made a name for itself on the back of an unpretentious menu featuring sustainably-sourced ingredients in unusual combinations.\r\n\r\nGraphic designer-turned-chef Bertrand Grébaut is part of a younger cohort of cooks keen to throw off the shackles that sometimes constrain traditional French cuisine: Lobster with wild strawberries and poached egg in hay broth have both featured on the (frequently changing) menu.', 2, '[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '80 Rue de Charonne, 75011 Paris, France', 48.85363479999999, 2.3809006999999838, NULL, '03 73673 34', NULL, '[{\"name\":\"Facebook\",\"url\":\"Septime\"},{\"name\":\"Instagram\",\"url\":\"Septime\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc437bd604d3_1573140413.jpg', '[\"5dc437b219656_1573140402.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-13 02:38:49', '2019-11-07 15:26:53'),
(18, 8, 6, 23, '[\"12\"]', '[\"25\",\"26\"]', 'Clamato', 'clamato', 'Clamato is an intimate bistro known for its small plates and short menu. Since opening, the sister of famed French restaurant Septime has served a concise selection of seafood and vegetables, such as raw cuttlefish in fennel-infused buttermilk or white asparagus cooked in seawater.\r\n\r\nWith its forest-green façade, Clamato’s quaint interior brings nature indoors with details such as wooden benches and fresh flowers. Clamato is closed Mondays and Tuesdays but serves lunch on weekends. The bistro is sans réservation—that is, the early bird gets the worm.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '80 Boulevard de Charonne, 75020 Paris, France', 48.8530341, 2.397445599999969, NULL, '01 34 55 33', NULL, '[{\"name\":\"Facebook\",\"url\":\"Clamato\"},{\"name\":\"Instagram\",\"url\":\"Clamato\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc4387ebd3a6_1573140606.jpg', '[\"5dc4387c3d7dd_1573140604.jpg\"]', NULL, 2, NULL, 1, NULL, NULL, '2020-01-16 01:59:07', '2019-11-07 15:30:06'),
(19, 8, 6, 23, '[\"12\"]', '[\"26\"]', 'Boot Café', 'boot-cafe', 'Boot Café is an understated coffee shop on a quiet street between the busier Rue de Turenne and Boulevard Beaumarchais in Le Marais. Only postcards and photos are tacked to the walls, and the menu is limited to coffee, tea and the selection of cakes that sit under glass domes on the counter.\r\n\r\nThe name choice is as simple as its interiors: Boot Café is so-called because the space was once a shoe shop. The café retains some trappings of its former life thanks to a Cordonnerie sign painted on its fading blue façade and a large red boot trade sign hanging adjacent.', 1, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '19 Rue du Pont aux Choux, 75003 Paris, France', 48.861154, 2.36530879999998, NULL, NULL, NULL, '[{\"name\":\"Facebook\",\"url\":\"BootCaf\\u00e9\"},{\"name\":\"Instagram\",\"url\":\"BootCaf\\u00e9\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc4395a1c54b_1573140826.jpeg', '[\"5dc4394865842_1573140808.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:46:15', '2019-11-07 15:33:46'),
(20, 8, 6, 23, '[\"12\"]', '[\"25\"]', 'Le Babalou', 'le-babalou', 'With its purple facade and small pavement terrace, it is hard to miss Le Babalou on the rue Lamarck, one of the main streets winding down from Sacre-Coeur. Le Babalou specialises in fine Italian cuisine, offering a great choice of authentic pizzas and fresh pasta dishes, all prepared with fresh, seasonal ingredients. Desserts are no less authentic, featuring some delicious favourite Italian sweet treats such as homemade tiramisu and panna cotta. Le Babalou’s interesting interior is reminiscent of a living room complete with patterned wallpaper, well-stocked bookshelves and a fine collection of lampshades, making this a great spot to feel immersed in the area.', 2, '[\"13\",\"11\",\"9\",\"8\",\"7\",\"6\"]', '4 Rue Lamarck, 75018 Paris, France', 48.88652829999999, 2.3442967999999382, NULL, '+33142513732', NULL, '[{\"name\":\"Facebook\",\"url\":\"babalou\"},{\"name\":\"Instagram\",\"url\":\"babalou\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5dc43ab7b6572_1573141175.jpeg', '[\"5dc43ab04ce69_1573141168.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:45:59', '2019-11-07 15:39:35'),
(21, 8, 6, 23, '[\"11\"]', '[\"28\"]', 'Musée Guimet', 'musee-guimet', 'The outstanding Musée Guimet boasts the western world’s biggest collection of Asian art, thanks to the 19th-century wanderings of Lyonnaise industrialist Émile Guimet. Exhibits, enriched by the state’s vast holdings, are laid out geographically in airy, light-filled rooms. Just past the entry, you can find the largest assemblage of Khmer sculpture outside Cambodia. The second floor has statuary and masks from Nepal, ritual funerary art from Tibet, and jewelry and fabrics from India. Peek into the library rotunda, where Monsieur Guimet once entertained the city’s notables under the gaze of eight caryatids atop Ionic columns; Mata Hari danced here in 1905. The much-heralded Chinese collection, made up of 20,000-odd objects, covers seven millennia, while the impressive Buddhist Pantheon features scores of Budhhas from China and Japan. Grab a free English-language audioguide and brochure at the entrance. If you need a pick-me-up, stop at the Salon des Porcelaines café on the lower level for a ginger milk shake. And don’t miss the Guimet’s adjunct space just up the street at 19 avenue d’Iéna. The Hôtel d’Heidelbach contains a Japanese garden and the museum’s collection of Asian furniture; admission is free with a Musée Guimet ticket.', 1, '', '6 Place d\'Iéna, 75116 Paris, France', 48.8651488, 2.293550900000014, NULL, '015625433', NULL, '[{\"name\":\"Facebook\",\"url\":\"getgolo\"},{\"name\":\"Instagram\",\"url\":\"getgolo\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5dc4402dba8a4_1573142573.jpeg', '[\"5dc4401792bce_1573142551.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:02:23', '2019-11-07 16:02:53'),
(22, 8, 6, 23, '[\"11\"]', '[\"28\"]', 'Palais Royal', 'palais-royal', 'The quietest, most romantic Parisian garden is enclosed within the former home of Cardinal Richelieu (1585–1642). It’s the perfect place to while away an afternoon, cuddling with your sweetheart on a bench under the trees, soaking up the sunshine beside the fountain, or browsing the 400-year-old arcades that are now home to boutiques ranging from quirky (picture Anna Joliet’s music boxes) to chic (think designs by Stella McCartney). One of the city’s oldest restaurants is here, the haute-cuisine Le Grand Véfour, where brass plaques recall regulars like Napoléon and Victor Hugo. Built in 1629, the palais became royal when Richelieu bequeathed it to Louis XIII. Other famous residents include Jean Cocteau and Colette, who wrote of her pleasurable “country” view of the province à Paris. Today, the garden often plays host to giant-size temporary art installations sponsored by another tenant, the Ministry of Culture. The courtyard off Place Colette is outfitted with an eye-catching collection of squat black-and-white columns created in 1986 by artist Daniel Buren.', 1, '', 'Place du Palais Royal, 75001 Paris, France', 48.8623531, 2.3371230999999852, NULL, '01 944 8453', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc440fea28a3_1573142782.jpeg', '[\"5dc440f4484f5_1573142772.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:02:49', '2019-11-07 16:06:22'),
(23, 8, 6, 23, '[\"11\"]', '[\"29\",\"30\"]', 'The Louvre', 'the-louvre', 'Simply put, the Louvre is the world’s greatest art museum—and the largest, with 675,000 square feet of works from almost every civilization on earth. The Mona Lisa is, of course, a top draw, along with the Venus de Milo and Winged Victory. These and many more of the globe’s most coveted treasures are displayed in three wings—the Richelieu, the Sully, and the Denon—which are arranged like a horseshoe. Nestled in the middle is I.M. Pei’s Pyramide, the giant glass pyramid surrounded by a trio of smaller ones that opened in 1989 over the new entrance in the Cour Napoléon. To plot your course through the complex, grab a color-coded map at the information desk. For an excellent overview, book a 90-minute English-language tour (€12, daily at 11 and 2); slick Nintendo 3DS multimedia guides (€5; pay for it when you buy your ticket), available at the entrance to each wing, offer a self-guided alternative.', 0, '', 'Rue de Rivoli, Paris, France', 48.8604501, 2.342244800000003, NULL, '0140205317', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc442bd5d76c_1573143229.jpg', '[\"5dc442a37da0e_1573143203.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:05:05', '2019-11-07 16:13:25'),
(24, 8, 6, 23, '[\"11\"]', '[\"28\",\"30\"]', 'Notre Dame', 'notre-dame', 'Looming above Place du Parvis, this Gothic sanctuary is the symbolic heart of Paris and, for many, of France itself. Napoléon was crowned here, and kings and queens exchanged marriage vows before its altar. Begun in 1163, completed in 1345, badly damaged during the Revolution, and restored in the 19th century by Eugène Viollet-le-Duc, Notre-Dame may not be the country’s oldest or largest cathedral, but in beauty and architectural harmony it has few peers—as you can see by studying the front facade. Its ornate doors seem like hands joined in prayer, the sculpted kings above them form a noble procession, and the west rose window gleams with what seems like divine light.', 0, '', '6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris, France', 48.85296820000001, 2.3499021000000084, NULL, '0142345610', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc443292cef6_1573143337.jpeg', '[\"5dfde775d238a_1576920949.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-23 14:38:24', '2019-11-07 16:15:37'),
(25, 8, 6, 23, '[\"11\"]', '[\"29\",\"30\"]', 'Sainte Chapelle', 'sainte-chapelle', 'Built by the obsessively pious Louis IX (1214–70), this Gothic jewel is home to the oldest stained-glass windows in Paris. The chapel was constructed over three years, at phenomenal expense, to house the king’s collection of relics acquired from the impoverished emperor of Constantinople. These included Christ’s Crown of Thorns, fragments of the Cross, and drops of Christ’s blood—though even in Louis’s time these were considered of questionable authenticity. Some of the relics have survived and can be seen in the treasury of Notre-Dame, but most were lost during the Revolution.', 1, '', '4 Boulevard du Palais, 75001 Paris, France', 48.8556686, 2.3459199999999782, NULL, '01–53–40–60–80', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5dc44418021f9_1573143576.jpg', '[\"5dc444108cb38_1573143568.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-18 08:30:50', '2019-11-07 16:19:36'),
(26, 8, 6, 23, '[\"13\"]', '[\"35\"]', 'Maison Souquet', 'maison-souquet', 'The belle époque-style Maison Souquet was hailed as the world’s most romantic hotel in 2018. The luckiest couples can bathe in luxury at its private spas, or make the most of the five-star butler service. This boutique hotel is located just off the rue de Bruxelles, and is only a stone’s throw from the famed Moulin Rouge in Montmartre. The sumptuous interior decoration features velvet-lined furniture, wooden panels, huge mirrors and dazzling chandeliers, making it the perfect setting for a loved-up break.', 3, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '10 Rue de Bruxelles, 75009 Paris, France', 48.88366, 2.331384500000013, 'hello@particulieres.com', '+33148785555', NULL, '[{\"name\":\"Facebook\",\"url\":\"Particulieres\"},{\"name\":\"Instagram\",\"url\":\"Particulieres\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5dc444e89d094_1573143784.jpg', '[\"5dc444ce5d8b3_1573143758.jpg\",\"5dc444d498554_1573143764.jpg\",\"5dc444db6ac0b_1573143771.jpg\"]', NULL, 3, 'booking.com', 1, NULL, NULL, '2019-12-20 06:19:51', '2019-11-07 16:23:04'),
(27, 8, 6, 23, '[\"13\"]', '[\"33\"]', 'Generator Paris', 'generator-paris', 'Generator Paris is a spacious and modern hostel in the centre of Paris – it’s also one of the biggest. With nearly 200 guest rooms on offer, this immense hostel is never a lonely place to stay. You’ll be welcomed by cheap prices and a friendly space to chill and mingle with like-minded travelers up on the hidden rooftop terrace, where you can enjoy breathtaking panoramic views over Parisian rooftops. Whilst it’s centrally located in the 10th arrondissement of Paris, you’re never too far away from nature, which is great if you’re staying during the summer. The relaxing green expanse of Parc des Buttes Chaumont is a quiet haven of calm; it’s especially popular with picnickers and is less than a 15-minute walk away. There’s lots of lockable storage space, a laundry service, and fun events program too.', 1, '[\"12\",\"11\",\"10\",\"8\",\"7\",\"6\"]', 'Place du Colonel Fabien, Paris, France', 48.8780382, 2.36985930000003, NULL, '+33157327263', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5dc445a1b93bf_1573143969.jpeg', '[\"5dc4459ae3af3_1573143962.jpeg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-20 06:18:38', '2019-11-07 16:26:09'),
(28, 8, 6, 23, '[\"13\"]', '[\"34\"]', 'The Loft Boutique', 'the-loft-boutique', 'The Loft Boutique Hostel & Hotel is located in the 20th arrondissement of Paris, just a 10-minute walk away from the famous Grands Boulevards. There’s an outside terrace tucked away in a quiet, cute courtyard where you can tuck into a croissant and coffee every morning like a true Parisian. It’s a great place to mingle and meet with other travelers in a calmer setting compared to some of the other more party-loving hostels on this list. There might not be many parties here, as it doubles up as a hotel too, but the nearby Grands Boulevards offers a lively stretch of bars and nightlife in case you find yourself wanting a wilder evening of fun.', 1, '[\"12\",\"11\",\"10\",\"8\",\"7\",\"6\"]', 'Rue Julien Lacroix, 75020 Paris, France', 48.87060030000001, 2.3840256999999383, NULL, '01 2343343', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5dc44a5e563b8_1573145182.jpeg', '[\"5dc44a54b0535_1573145172.jpeg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-20 06:18:17', '2019-11-07 16:46:22'),
(29, 8, 6, 23, '[\"13\"]', '[\"34\"]', 'Hôtel Lutetia', 'hotel-lutetia', 'Despite undergoing a multimillion-euro makeover in July 2018, Hôtel Lutetia’s unmatched spirit remains the same. The property was built in 1910 in the Art Nouveau style and is the only grand hotel on the Left Bank. It has attracted the likes of artist Pablo Picasso, former president Charles de Gaulle, and singer and actor Marianne Oswald over the years, with James Joyce rumoured to have written part of Ulysses (1992) there too. The legendary landmark ranks a huge wellness centre as its most distinguished feature, offering an array of sophisticated treatments and massages. There’s also a Jacuzzi and 17-metre-long (56 feet) swimming pool, complete with a sauna, steam room and plunge pool next to a large fitness room.', 2, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '45 Boulevard Raspail, 75006 Paris, France', 48.8512444, 2.3272378000000344, NULL, '+33149544600', NULL, '[{\"name\":\"Facebook\",\"url\":\"hotellutetia\"},{\"name\":\"Instagram\",\"url\":\"hotellutetia\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5dc44ad3f2380_1573145299.jpeg', '[\"5dc44ac83bc55_1573145288.jpeg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-18 08:10:35', '2019-11-07 16:48:19'),
(34, 8, 12, 25, '[\"11\"]', '[\"29\"]', 'Yutenji', 'yutenji', 'Yutenji Temple is holding their annual Yutenji Mitama Matsuri. Parents and children from the neighboring kindergarten, participate by dancing in colourful yukatas every year. Grab lunch at&nbsp;Midorie Organic Cafe, stop by the Temple grounds late afternoon to learn about the eight different structures and buildings then, stay late for the dance festival, food and game stalls. There`s enough for all ages to enjoy. Don a yukata and join in the fun! Yutenji Temple is holding their annual Yutenji Mitama Matsuri. Parents and children from the neighboring kindergarten, participate by dancing in colourful yukatas every year. Grab lunch at&nbsp;Midorie Organic Cafe, stop by the Temple grounds late afternoon to learn about the eight different structures and buildings then, stay late for the dance festival, food and game stalls. There`s enough for all ages to enjoy. Don a yukata and join in the fun!', 0, '', 'Tokyo Tower, 4 Chome-2-8 Shibakoen, Minato City, Tokyo, Japan', 35.6585805, 139.74543289999997, NULL, '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de32fbc06785_1575169980.jpg', '[\"5de32fa7d6ec1_1575169959.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-02-03 02:33:14', '2019-12-01 03:13:00'),
(35, 8, 12, 25, '[\"11\"]', '[\"31\"]', 'Ryusenji (Meguro Fudo)', 'ryusenji-meguro-fudo', 'On Rysenji’s grounds, the famous Meguro Fudo-myo-o (Black Eyed Fudo-Myo-o) statue stands guard, and it’s from this sentinel that the ward takes its name. This was one of five such statues placed protectively around Edo’s borders nearly 400 years ago, each with eyes of a different color. Fudo Myo-o is a revered guardian deity of the Buddhist faith.', 0, '', 'Shimomeguro, Meguro City, Tokyo 153-0064, Japan', 35.6292881, 139.70773140000006, NULL, '+81337127549', NULL, '[{\"name\":\"Facebook\",\"url\":\"Ryusenji\"},{\"name\":\"Facebook\",\"url\":\"Ryusenji\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de330d690e6b_1575170262.jpg', '[\"5de3308b0d926_1575170187.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:56:14', '2019-12-01 03:17:42'),
(36, 8, 12, 25, '[\"11\"]', '[\"31\"]', 'Yoyogi Park', 'yoyogi-park', '<p>The Yoyogi Park is a large Western-style park situated a five minutes’ walk from the Harajuku Station and the Meiji Shrine. Yoyogi Park sits on the site from where the first successful powered aircraft flight in Japan took place on December 19, 1910 led by Captain Yoshitoshi Tokugawa. Presently, it is one of the locals’ favorite parks, where you will see many rock music fans, jugglers, comedians and hobby groups. For no charge, you get to witness its famous autumn leaves at the right time of year, especially the golden leaves of the many ginko trees.</p>', 0, '', 'Yoyogi Park, 2-1 Yoyogikamizonocho, Shibuya City, Tokyo, Japan', 35.6715869, 139.69670280000003, NULL, '+81334696081', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de3330a722de_1575170826.jpeg', '[\"5de3330452bbd_1575170820.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:56:29', '2019-12-01 03:27:06'),
(37, 8, 12, 25, '[\"11\"]', '[\"31\"]', 'Nezu Museum', 'nezu-museum', 'Home to the Japanese businessman and philanthropist Nezu Kaichirō , the Nezu Museum houses one of Tokyo’s most comprehensive collections of Japanese and East Asian art, including calligraphy, painting, ceramics, and textiles. After Nezu’s passing, his son turned his late father’s home into a public museum in order to preserve and share the impressive collection. Walk inside and you will also find a small, lush Japanese-style garden complete with tranquil ponds and small Buddha statues.', 0, '', 'Nezu Museum, 6 Chome-5-1 Minamiaoyama, Minato City, Tokyo, Japan', 35.6615986, 139.71769900000004, NULL, '10 3244 563', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de334a244bc3_1575171234.jpg', '[\"5de33498d4d86_1575171224.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:57:02', '2019-12-01 03:33:54'),
(38, 8, 12, 25, '[\"11\"]', '[\"39\"]', 'Mount Fuji', 'mount-fuji', 'Mount Fuji is Japan’s tallest mountain, and the iconic peak has become a symbol of the entire country. From Tokyo, the mountain is hard to spot unless the weather is cooperating, so for the best view make the trek to the mountains yourself and catch a glimpse of Fuji-san from neighboring Mitake-san.', 1, '', 'Mount Fuji, Kitayama, Fujinomiya, Shizuoka, Japan', 35.3606255, 138.72736340000006, NULL, '10 344 7532', NULL, '[{\"name\":\"Facebook\",\"url\":\"MountFuji\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de3360abae56_1575171594.jpeg', '[\"5de3360611dc1_1575171590.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:57:14', '2019-12-01 03:39:54'),
(39, 8, 12, 25, '[\"12\"]', '[\"25\"]', 'Yamachan', 'yamachan', 'Yamachan is an all-you-can-drink premium sake bar located near Shinjuku. For an affordable price you can drink as much sake as you like. You can even take along food and other alcohol with you, or you can leave in the middle of your drinking session and return to order more items. The setting is like that of a classroom, with cheap wooden desks and chairs, and there are no decorative elements. The only objective here is to drink the best sake in the country. The bar is self-service so come prepared to pour your own drink.', 0, '[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Yamachan, 4 Chome-3-7 Ueno, Taito City, Tokyo, Japan', 35.7085859, 139.77378799999997, 'info@yamachan.co.jp', '+81352723555', NULL, '[{\"name\":\"Instagram\",\"url\":\"Yamachan\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de338b97a154_1575172281.jpeg', '[\"5de3389d64349_1575172253.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:45:46', '2019-12-01 03:51:21'),
(40, 8, 12, 25, '[\"12\"]', '[\"25\"]', 'Akaoni', 'akaoni', 'If you are looking for an old-fashioned style sake bar with a modern flair, then&nbsp;<a href=\"http://www.akaoni39.com/\" target=\"_blank\">Akaoni</a>&nbsp;is your best bet. The translation of Akaoni is ‘red devil’. Beginners must be careful, as they take their sake very seriously here. Akaoni is located just five minutes from Sangen-jaya station, though it is not particularly easy to find. Once you get there, you will be impressed with the warm, down-to-earth atmosphere. Choose from more than 100 varieties of sake with a seasonal option called namazake, which is raw, unpasteurized sake.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Akaoni, 2 Chome-15-3 Sangenjaya, Setagaya City, Tokyo, Japan', 35.64265650000001, 139.66840690000004, NULL, '+81337120819', NULL, '[{\"name\":\"Twitter\",\"url\":\"akaoni39\"},{\"name\":\"Facebook\",\"url\":\"akaoni39\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de33ad6dd8ba_1575172822.jpeg', '[\"5de33ad21d9bf_1575172818.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:45:32', '2019-12-01 04:00:22'),
(41, 8, 12, 25, '[\"12\"]', '[\"25\",\"26\"]', 'Hasegawa Saketan', 'hasegawa-saketan', 'Conveniently located inside Japan Railway Tokyo station, Hasegawa Saketan is rated as one of the best sake bars in Tokyo. The very knowledgeable and friendly bartenders speak English perfectly and are happy to assist and teach visitors about Japan’s signature drink. While waiting for your train, try some of the trendiest sake brands like Juyondai, Tamagata, Dassai and Yamaguchi. The establishment opens as early as 7am for early birds. You can also purchase a bottle of the sake from the shop next door.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Hasegawa Saketen GranSta, 1 Chome-9-1 Marunouchi, Chiyoda City, Tokyo, Japan', 35.68181809999999, 139.76673570000003, NULL, '+81358750404', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de33d1a19504_1575173402.jpg', '[\"5de33d13c4d37_1575173395.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:45:17', '2019-12-01 04:10:02'),
(42, 8, 12, 25, '[\"12\"]', '[\"25\"]', 'Takemura', 'takemura', 'Shinjuku’s&nbsp;Robot Restaurant&nbsp;is pure electrifying fun. This energetic dinner theatre is much more about the experience than the food, featuring laser and light shows, fighting robots and actors in outrageous costumes. You can find Robot Restaurant in Kabukicho, the largest entertainment district in Shinjuku Ward.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Takemura, 1 Chome-19 Kanda Sudacho, Chiyoda City, Tokyo, Japan', 35.6966837, 139.7690827, NULL, '+81332005500', NULL, '[{\"name\":\"Facebook\",\"url\":\"shinjukurobot\"},{\"name\":\"Instagram\",\"url\":\"shinjukurobot\"},{\"name\":\"Youtube\",\"url\":\"shinjukurobot\"},{\"name\":\"Twitter\",\"url\":\"shinjukurobot\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de33f9d13a7c_1575174045.jpeg', '[\"5de33f96f1986_1575174038.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:45:04', '2019-12-01 04:20:45'),
(43, 8, 12, 25, '[\"12\"]', '[\"25\"]', 'Ganso Zushi', 'ganso-zushi', 'Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival). Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival). Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival).', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Ganso Zushi, 1 Chome-15-5 Nishishinjuku, Shinjuku City, Tokyo, Japan', 35.6886787, 139.69737580000003, NULL, '+81333783455', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de340df3c8a8_1575174367.jpg', '[\"5de340d7ce406_1575174359.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:44:47', '2019-12-01 04:26:07'),
(44, 8, 12, 25, '[\"13\"]', '[\"34\"]', 'Keio Plaza Hotel', 'keio-plaza-hotel', 'Just a five-minute walk from Shinjuku Station, the Keio Plaza Hotel is a striking, 47-story tower overlooking the picturesque grounds of the Shinjuku Gyoen Park, a tranquil hideout positioned right in one of the most densely populated corners of the world. Like its neighbouring park, the hotel is a picture of oppositional harmony, where the manic and the peaceful, the new and the traditional meet. Inside the hotel are a number of different accommodation options, including traditional Japanese rooms, more Western-style offerings and, for those looking for something a little different, even Hello Kitty themed rooms.', 3, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Keio Plaza Hotel, 2 Chome-2-1 Nishishinjuku, Shinjuku City, Tokyo, Japan', 35.6900509, 139.69436359999997, NULL, '+81333440111', NULL, '[{\"name\":\"Facebook\",\"url\":\"keioplaza\"},{\"name\":\"Instagram\",\"url\":\"keioplaza\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3448ab5285_1575175306.jpeg', '[\"5de344831746e_1575175299.jpeg\"]', NULL, 3, 'booking.com', 1, NULL, NULL, '2019-12-26 07:37:32', '2019-12-01 04:41:46'),
(45, 8, 12, 25, '[\"13\"]', '[\"35\"]', 'Hilton Shinjuku', 'hilton-shinjuku', 'A name synonymous with the best of the best in the hotel game, the Hilton Shinjuku is definitely worth adding to your must-visit hotel itinerary if luxury travel is your thing. Directly connected to the Tochomae Subway Station, it’s easily accessible for those wanting to explore everything the city has to offer. The hotel’s hefty 800 rooms are located between the eighth and the 38th floor of the building, serving up unforgettable views of the city skyline. The design is both modern and sleek, but features warm, homely touches such as rich wood furnishings, traditional Japanese shoji screens, and complimentary pyjamas.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Hilton Tokyo, 6 Chome-6-2 Nishishinjuku, Shinjuku City, Tokyo, Japan', 35.6925765, 139.69118720000006, NULL, '+81333445111', NULL, '[{\"name\":\"Facebook\",\"url\":\"hilton\"},{\"name\":\"Instagram\",\"url\":\"hilton\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de345cd5f5cd_1575175629.jpeg', '[\"5de3458c0062b_1575175564.jpeg\",\"5de34596cecbb_1575175574.jpeg\"]', 'https://www.youtube.com/watch?v=dSfeXCByOhE', 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:37:09', '2019-12-01 04:47:09'),
(46, 8, 12, 25, '[\"13\"]', '[\"36\"]', 'Citadines', 'citadines', '<p>If you’re looking for somewhere easy to crash for a few nights and have value for money in mind, Citadines is a very good shout. This stylish, centrally located, budget-friendly hotel is relatively relaxed but still offers impeccable service and very high standards. Rooms come equipped with kitchenettes and heated toilet seats, a novelty for first-timers in the city. Shinjuku Gyoen Park is just around the corner, and Golden Gai and the main shopping district are around 15-20 minutes away by foot. If you want to explore a little further, Shinjuku Gyoenmae Subway Station is just a five-minute stroll away. For an easy, central, no-fuss option, Citadines is ideal.</p>', 2, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Citadines Shinjuku Tokyo, 1 Chome-28-13 Shinjuku, Shinjuku City, Tokyo, Japan', 35.691049, 139.713121, NULL, '+81353797208', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3467e6496f_1575175806.jpeg', '[\"5de346761e159_1575175798.jpeg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:36:38', '2019-12-01 04:50:06'),
(47, 8, 12, 25, '[\"13\"]', '[\"34\"]', 'Hotel Koe', 'hotel-koe', '<p>Sitting on the Harajuku corner of Shibuya, Hotel Koe is much more than just a hotel. It’s also an art hub, a live music space, a bar, café, restaurant, co-working hub and retail store. It was founded by the apparel company Stripe, which is why it’s practically overflowing with street-style cool. The hotel features 10 rooms in total, of different sizes ranging from S to XL, each of them designed with an appreciation for elegant minimalism. Keep an eye out when visiting, though, as this place is full of surprises. One particular surprise is the check-in desk, which some nights transforms into a DJ booth manned by Masaya Kuroki of fashion and music label Maison Kitsuné.</p>', 1, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Japan, Tokyo, Shibuya City, Udagawa-cho, 3−7hotel koé tokyo', 35.662507, 139.69900000000007, NULL, '+81367127251', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3470623ac2_1575175942.jpeg', '[\"5de346f433f44_1575175924.jpeg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:36:19', '2019-12-01 04:52:22'),
(48, 8, 12, 25, '[\"13\"]', '[\"35\"]', 'Trunk Hotel', 'trunk-hotel', 'One of the newest players in Tokyo’s contemporary hotel scene, Trunk Hotel is much more than just a place to rest. Situated right on the doorstep of Harajuku’s fashion-forward Cat Street and a 10-minute stroll from Shibuya Crossing, it’s in the middle of all the action but tucked far enough off the main thoroughfare to provide some peace and quiet. The hotel features its own Trunk brand convenience store, a sprawling outdoor deck and a lobby which by day is a popular co-working space and by night transforms into a sleek cocktail bar.', 3, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'TRUNK HOTEL, 5 Chome-31 Jingumae, Shibuya City, Tokyo, Japan', 35.6642386, 139.70386370000006, NULL, '+81357663210', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de348678817f_1575176295.jpg', '[\"5de3485e10305_1575176286.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:35:59', '2019-12-01 04:58:15'),
(49, 8, 8, 24, '[\"11\"]', '[\"27\"]', 'Blue Elephant Cooking School', 'blue-elephant-cooking-school', 'Those with mobility issues might want to pass. The classroom is upstairs with no elevator access, cooking stations require standing, and the market tour starts with a journey on Bangkok’s BTS, an elevated train with very few elevators. The crowd tends to be more serious about actually gleaning some culinary knowledge than at other lessons we’ve attended around town.', 2, '', 'Blue Elephant Cooking School and Restaurant, South Sathon Road, Yan Nawa, Sathon, Bangkok, Thailand', 13.7186548, 100.52147479999996, NULL, '+66 2 673 9353', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Tuesday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Wednesday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Thursday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Friday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Saturday\",\"value\":\"6:00 PM\\u201310:30 PM\"},{\"title\":\"Sunday\",\"value\":\"6:00 PM\\u201310:30 PM\"}]', '5de34a5885841_1575176792.jpg', '[\"5de34a4729d47_1575176775.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:19:47', '2019-12-01 05:06:32'),
(50, 8, 8, 24, '[\"11\"]', '[\"29\"]', 'Wat Suwannaram', 'wat-suwannaram', 'Located on the Thonburi side of the Chao Phraya River, this Ayutthaya-era temple often gets overlooked for other well-known riverside temples, like Wat Arun. But inside, this historic temple offers centuries of history, ornate hand-painted murals, and tourist-free bliss. There is no need to book ahead and bilingual brochures are available for free.', 0, '', 'Wat Suwannaram, ซอย จรัญสนิทวงศ์ 32 แขวงศิริราช Bangkok Noi, Bangkok, Thailand', 13.7633017, 100.47682540000005, NULL, '+34933607222', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de368e74eef0_1575184615.jpg', '[\"5de368e25eb2a_1575184610.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:19:27', '2019-12-01 07:16:55'),
(51, 8, 8, 24, '[\"11\"]', '[\"31\"]', 'Lumphini Park', 'lumphini-park', 'The park’s best-known commodity is its resident population of giant (mostly harmless) monitor lizards, which slither in and out of the lake. If you’ve never seen a monitor lizard—in the same genus as the Komodo dragon, but not nearly as large—they’re hard to miss, with long necks, powerful tails, and claws. The ones that roam Lumphini are used to humans, but still: Don’t touch them or get too close—not even for selfies.', 0, '', 'Lumphini Park, ถนนพระรามที่ ๔ Lumphini, Pathum Wan District, Bangkok, Thailand', 13.7314029, 100.54143959999999, 'hello@paradiso.cat', '+34933607222', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de3699870bb7_1575184792.jpg', '[\"5de369914ed23_1575184785.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:19:03', '2019-12-01 07:19:52'),
(52, 8, 8, 24, '[\"11\"]', '[\"29\"]', 'Chinatown', 'chinatown', 'Market lanes, glittery gold shops, phenomenal street food, temples with golden Buddhas, Daoist temples clouded with incense smoke, street art, history, and a neighborhood setting that feels untouched by time and modernization: Welcome to Bangkok’s enchanting Chinatown. You don’t need tickets or reservations, just an appetite for Thai-Chinese street food and a penchant for getting a little lost in the name of exploration.', 0, '', 'Chinatown, Chang Moi Road, Chang Moi Sub-district, Mueang Chiang Mai District, Chiang Mai, Thailand', 18.7909205, 99.000718, 'hello@paradiso.cat', '+66 2 254 1234', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de36a2cab2f6_1575184940.jpg', '[\"5de36a266c829_1575184934.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:18:44', '2019-12-01 07:22:20');
INSERT INTO `places` (`id`, `user_id`, `country_id`, `city_id`, `category`, `place_type`, `name`, `slug`, `description`, `price_range`, `amenities`, `address`, `lat`, `lng`, `email`, `phone_number`, `website`, `social`, `opening_hour`, `thumb`, `gallery`, `video`, `booking_type`, `link_bookingcom`, `status`, `seo_title`, `seo_description`, `updated_at`, `created_at`) VALUES
(53, 8, 8, 24, '[\"11\"]', '[\"30\"]', 'Wat Arun', 'wat-arun', 'Of the more than 31,000 temples throughout Thailand, this one, standing 269 feet tall, is one of the most iconic. It’s fine to fly solo at Wat Arun. There isn’t much information available at the ticket booth, so let Google be your tour guide. Visitors clamor to Wat Arun because it’s one of the few temples in Thailand that you can climb; once you’ve ascended the steep and narrow stairs, you’re in for a great view of the river and surrounding temple complex. After taking in the sights, walk back down the stairs and inspect the floral murals made from broken Chinese porcelain discarded by Chinese traders who worked at the nearby port. Next, don’t miss the&nbsp;boht—ordination hall—filled with the ashes of Rama II, more ornate murals, and rows of gilded Buddhas.', 2, '', 'Wat Arun Ratchavararam, Thanon Wang Doem, Wat Arun, Bangkok Yai, Bangkok, Thailand', 13.7437, 100.48892649999993, 'hello@paradiso.cat', '+34933607222', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Thursday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Friday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Saturday\",\"value\":\"8:00 AM - 17:00 PM\"},{\"title\":\"Sunday\",\"value\":\"8:00 AM - 17:00 PM\"}]', '5de36ac57a4b5_1575185093.jpeg', '[\"5de36ac082e69_1575185088.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-25 02:18:22', '2019-12-01 07:24:53'),
(54, 8, 8, 24, '[\"12\"]', '[\"25\"]', 'Nai Mong Hoi Thod', 'nai-mong-hoi-thod', 'Chinatown has some of the best street food in the city, and this is one of its most famous stands. Hoi thod translates as fried oyster, and that is exactly what Mr Mong has been serving for over 30 years. Order the omelette with crispy or soft fried oysters or have it with mussels instead. His recipe has never changed throughout the decades, though he has passed the cooking to an apprentice who maintains his standards. This specialty of the house is made with fresh oysters fried ‘til crisp with egg and a sticky sauce. But in case you don’t want oysters, opt for the mussels instead.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Thailand, Bangkok, Phlap Phla Chai Road, Nai Mong Hoi Thod', 13.7423992, 100.51080200000001, NULL, '+34933607222', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de36b5ec4f31_1575185246.jpg', '[\"5de36b59d4f83_1575185241.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:44:09', '2019-12-01 07:27:26'),
(55, 8, 8, 24, '[\"12\"]', '[\"26\"]', 'Supanniga Eating Room', 'supanniga-eating-room', 'Downstairs at Supanniga Eating Room, glass walls overlook the river—it feels sort of like a houseboat, if said houseboat also had an industrial, Brooklyn-esque design. There’s assorted seating—couches, iron and wooden chairs—a long bar, and stairs leading up to an open-air roof, which is the prime location for dining.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Supanniga Eating Room, North Sathon Road, Silom, Bang Rak, Bangkok, Thailand', 13.723122, 100.52727299999992, NULL, '+66 2 015 4224', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de36c0d08093_1575185421.jpg', '[\"5de36c0693ab1_1575185414.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:43:58', '2019-12-01 07:30:21'),
(56, 8, 8, 24, '[\"12\"]', '[\"25\"]', 'Sühring', 'suhring', 'A restored garden home is a lovely backdrop for Sühring’s modern takes on German classics. The menu changes daily here; one day you’ll see spätzle, the next, brotzeit. The restaurant has a reputation for its wine list, which, unsurprisingly, skews German; you might find your new favorite Riesling. The service is as refined as the setting, and the crowd is dapper through and through.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Suhring, Soi Yen Akat 3, Chong Nonsi, Yan Nawa, Bangkok, Thailand', 13.710793, 100.54543899999999, NULL, '+66 2 287 1799', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"},{\"name\":\"Youtube\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Tuesday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Wednesday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Thursday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Friday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Saturday\",\"value\":\"6:00 PM\\u2013Midnight\"},{\"title\":\"Sunday\",\"value\":\"Closed\"}]', '5de36cf1116b9_1575185649.jpg', '[\"5de36ccf5747c_1575185615.jpg\",\"5de36ce893d26_1575185640.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:43:45', '2019-12-01 07:34:09'),
(57, 8, 8, 24, '[\"12\"]', '[\"25\"]', 'Teens of Thailand', 'teens-of-thailand', 'Get past the seedy-sounding name and push open two heavy wooden doors, and you’ll have found yourself in Bangkok’s best gin bar—and the city’s worst-kept secret. Teens, as it’s known locally, has been credited with making Soi Nana, a small shophouse-lined lane on the fringes of Chinatown, the hottest address in the city. The dimly lit space is tiny: there are only 15 seats and two bartenders who work elbow-to-elbow behind a small wooden bar with a huge stash of gin. As for the decor, there are retro Thai movie posters, a vintage piano, a teetering (which leads to an office) and a crumbling wall.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Teens of Thailand, ซอย นานา Pom Prap, Pom Prap Sattru Phai, Bangkok, Thailand', 13.7399427, 100.51403470000002, 'hello@comohotels.com', '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"Particulieres\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de36d8b709dc_1575185803.jpg', '[\"5de36d8095166_1575185792.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:43:33', '2019-12-01 07:36:43'),
(58, 8, 8, 24, '[\"12\"]', '[\"38\"]', 'Mikkeller Bangkok', 'mikkeller-bangkok', 'Hail a cab from the Ekkamai BTS station then zig-zig through narrow residential lanes to reach this a charming mid-century home with a leafy yard: That’s Mikkeller, the first Asian location of the beloved Danish beer bar. The space stays true to its Scandinavian roots, with light woods and minimalist details; there are oversized bean-bag chairs and lawn games out front, as well as high tops and more than a dozen taps inside. Space flows nicely—it’s the kind of place people linger at for a few hours.', 0, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Mikkeller Bangkok, Ekkamai 10 Alley, Lane 2, Phra Khanong Nuea, Watthana, Bangkok, Thailand', 13.7278804, 100.58845450000001, NULL, '+66 2 381 9891', NULL, '[{\"name\":\"Facebook\",\"url\":\"Mikkeller\"},{\"name\":\"Instagram\",\"url\":\"Mikkeller\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de36e9954aa7_1575186073.jpg', '[\"5de36e6353103_1575186019.jpg\",\"5de36e974badb_1575186071.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:43:19', '2019-12-01 07:40:21'),
(59, 8, 8, 24, '[\"13\"]', '[\"34\"]', 'Grand Hyatt Erawan Bangkok', 'grand-hyatt-erawan-bangkok', 'The hotel is located right next to Erawan Shrine, which is a popular tourist site. It’s also directly adjacent to all levels of shopping at Siam Paragon, Siam Center, and Siam Discovery, as well as MBK, one of Asia’s largest malls. The hotel is located right next to Erawan Shrine, which is a popular tourist site. It’s also directly adjacent to all levels of shopping at Siam Paragon, Siam Center, and Siam Discovery, as well as MBK, one of Asia’s largest malls.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Grand Hyatt Erawan Bangkok, Ratchadamri Road, Lumphini, Pathum Wan District, Bangkok, Thailand', 13.7435228, 100.54048890000001, NULL, '+66 2 254 1234', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de36f9139169_1575186321.jpg', '[\"5de36f5ce1f71_1575186268.jpg\",\"5de36f6d4d315_1575186285.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-25 02:30:02', '2019-12-01 07:45:21'),
(60, 8, 8, 24, '[\"13\"]', '[\"34\"]', 'Conrad Bangkok', 'conrad-bangkok', 'Conrad Bangkok is an ideal Bangkok lodging choice for your trip to Thailand. With numerous amenities for guests such as 24 hour front desk, gift shop, hot tub or spa, you will wake up at Conrad Bangkok feeling excited every day for your time in Bangkok. Don’t let this amazing reservation opportunity pass you by, book your stay at Conrad Bangkok today to make the most of your time in Bangkok, Thailand.', 3, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Conrad Bangkok, Witthayu Road, Lumphini, Pathum Wan District, Bangkok, Thailand', 13.7384195, 100.54813760000002, NULL, '+66 2-690-9999', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de370437ef3c_1575186499.jpg', '[\"5de3702df1039_1575186477.jpg\",\"5de3703a44917_1575186490.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:26:06', '2019-12-01 07:48:19'),
(61, 8, 8, 24, '[\"13\"]', '[\"34\"]', 'Anantara Siam Bangkok Hotel', 'anantara-siam-bangkok-hotel', 'Your fellow guests are a discerning bunch, and include international travelers doing the Thai circuit, Anantara loyalists, expat families, and the Bangkok society crowd stopping in for Sunday brunch and special events.', 0, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Anantara Siam Bangkok Hotel, Lumphini, Pathum Wan District, Bangkok, Thailand', 13.740948, 100.54026799999997, 'info@anantara.com', '+66 2 126 8866', NULL, '[{\"name\":\"Facebook\",\"url\":\"anantara\"},{\"name\":\"Instagram\",\"url\":\"anantara\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3712325eb9_1575186723.jpg', '[\"5de370dd7337d_1575186653.jpg\",\"5de370e32d1f9_1575186659.jpg\",\"5de370e698e8f_1575186662.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:25:48', '2019-12-01 07:52:03'),
(62, 8, 8, 24, '[\"13\"]', '[\"35\"]', 'Metropolitan Bangkok', 'metropolitan-bangkok', 'COMO is located on a long, lovely, heavily landscaped driveway (shared with the Banyan Tree Hotel) off a very busy road. Tall surrounding walls and plenty of plant life help it feel like a retreat from the hustle of Sathorn, neighborhood with a lot to offer visitors and expats. Enjoy a meal at one of the hotel’s dining establishments, which include 4 restaurants and a coffee shop/café. From your room, you can also access 24-hour room service. Relax with your favorite drink at a bar/lounge or a poolside bar. Breakfast is available for a fee.', 3, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'BMA Bangkok City Hall, Dinso Road, Sao Chingcha, Phra Nakhon, Bangkok, Thailand', 13.7538189, 100.50182359999997, 'hello@comohotels.com', '+66 2 625 3333', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de371ca05f22_1575186890.jpg', '[\"5de371ac35b5e_1575186860.jpg\",\"5de371b3eba3d_1575186867.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-25 02:28:57', '2019-12-01 07:54:50'),
(63, 8, 8, 24, '[\"13\"]', '[\"35\"]', 'The Siam', 'the-siam', 'Gardens and villas unfolding down to the Chao Phraya River; Tardis-like interiors in white plaster with black tiling and joinery; a patio, a soaring Spanish Revival courtyard with raised palm lake; antiques, art and orchids in every direction—honestly, if you didn’t realize you were in the heart of the heart of the royal quarter of Bangkok, you very shortly will.', 4, '[\"12\",\"11\",\"10\",\"8\",\"7\",\"6\"]', '3 2 Khao Rd, Khwaeng Wachira Phayaban, Khet Dusit, Krung Thep Maha Nakhon 10300, Thailand', 13.781348, 100.50574000000006, NULL, '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"grandluxury\"},{\"name\":\"Instagram\",\"url\":\"grandluxury\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3726856fe1_1575187048.jpg', '[\"5de372584bb87_1575187032.jpg\",\"5de3725df3acb_1575187037.jpg\",\"5de37264de594_1575187044.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-25 02:28:26', '2019-12-01 07:57:28'),
(64, 8, 11, 26, '[\"11\"]', '[\"31\"]', 'Chimney Bluffs State Park', 'chimney-bluffs-state-park', '<p>Though it’s located in the same state, Chimney Bluffs State Park feels like another planet from NYC. Located in the town of Huron, this 597-acre state park sits on the Southern side of Lake Ontario and is home to large clay rock formations on the water’s edge. The area was acquired by the state in 1963, and now you can explore the bluffs on hiking trails in the summer and cross-country ski trails in the winter.</p>', 1, '', 'Chimney Bluffs State Park, Garner Road, Wolcott, NY, USA', 43.28160159999999, -76.92233369999997, NULL, '+13159475205', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Tuesday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Wednesday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Thursday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Friday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Saturday\",\"value\":\"6:00 am - 9:00 pm\"},{\"title\":\"Sunday\",\"value\":\"6:00 am - 9:00 pm\"}]', '5de38df6e0b36_1575194102.jpeg', '[\"5de38defb8613_1575194095.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:53:41', '2019-12-01 09:55:02'),
(65, 8, 11, 26, '[\"11\"]', '[\"39\"]', 'Metropolitan Opera', 'metropolitan-opera', 'The opera may seem somewhat out there, but this is a genuine experience that you can’t get anywhere else. No matter which opera you decide to see, seeing it at the Metropolitan Opera Houseis something you will always remember. Even if you don’t understand the language it’s in (most of them are sung in the romance languages), the story is clearly told through the actor’s superb performances. The Metropolitan Opera shows classic operas such as Puccini’s La Bohèmeand Verdi’s Il Trovatore.', 0, '', '30 Lincoln Center Plaza, New York, NY 10023, USA', 40.77282330000001, -73.9846344, NULL, '+12123626000', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de38f5dd2b35_1575194461.jpg', '[\"5de38f526da64_1575194450.jpeg\",\"5de38f5686090_1575194454.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:53:26', '2019-12-01 10:01:01'),
(66, 8, 11, 26, '[\"11\"]', '[\"28\"]', 'The Solomon R. Guggenheim Museum', 'the-solomon-r-guggenheim-museum', 'Designed by American “starchitect” Frank Lloyd Wright, the Solomon R. Guggenheim Museum is one of most respected institutions for modern and contemporary art in the world – not to mention a landmark of New York City architecture. Conceived of as an “inverted-ziggurat” and characterized by magnificent spirals, Wright’s design guides an entirely unique and expressive journey through the history of 20th and 21st century art. First opened to the public in 1959 and declared a National Historic Landmark in 2008, Wright’s iconic white masterpiece is one of Manhattan’s most photogenic design feats.', 0, '', '1071 5th Ave, New York, NY 10128, USA', 40.7829796, -73.95897059999999, NULL, '+12124233500', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Tuesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Wednesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Thursday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Friday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Saturday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Sunday\",\"value\":\"10:00 am - 5:30 pm\"}]', '5de38fe4c5b4f_1575194596.jpeg', '[\"5de38fe011350_1575194592.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:53:08', '2019-12-01 10:03:16'),
(67, 8, 11, 26, '[\"11\"]', '[\"27\"]', 'Storm King Art Center', 'storm-king-art-center', 'Storm King Art Center, one of the world’s largest and most renowned sculpture parks, features more than 100 sculptures spread across the center’s 500 acres of rolling hills, native fields, and woodlands. Several miles of walking trails allow visitors easy access to the exhibitions, which range in size from monumental to so tiny they could be easily overlooked. Rental bicycles are also available, along with frequent trams, plus plenty of picnic tables, a café, and museum, along with regular special exhibitionsand events. Storm King Art Center is a convenient drive from New York City, with packages and deals available from Coach USA and Zipcar. Alternatively, the center is a quick cab ride away from the Salisbury Mills station on Metro-North’s Port Jervis line. Expect a fee to enter the park.', 0, '', '1 Museum Rd, New Windsor, NY 12553, USA', 41.42506299999999, -74.05938400000002, NULL, '+18455343115', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Tuesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Wednesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Thursday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Friday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Saturday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Sunday\",\"value\":\"10:00 am - 5:30 pm\"}]', '5de391015d8e7_1575194881.jpeg', '[\"5de390f8216df_1575194872.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:52:55', '2019-12-01 10:08:01'),
(68, 8, 11, 26, '[\"11\"]', '[\"39\"]', 'Brooklyn Botanic Garden', 'brooklyn-botanic-garden', 'Greenhouses house bonsais, orchids, and desert plants, and outdoor spaces range from a Shakespeare garden to a Japanese-style lily pond.', 0, '', '990 Washington Ave, Brooklyn, NY 11225, USA', 40.66941130000001, -73.96237359999998, NULL, '+1 718-623-7200', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de3916085344_1575194976.jpeg', '[\"5de3915d342db_1575194973.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:52:39', '2019-12-01 10:09:36'),
(69, 8, 11, 26, '[\"13\"]', '[\"33\"]', 'Made Hotel', 'made-hotel', 'It’s good vibes, personified. To start, the lobby is bright and airy with a heavy dose of organic decor. Plants are everywhere, and there’s lots of wood, shibori, and patterned throw pillows, plus a coffee bar right when you enter. It’s all warm and welcoming—the smell of freshly ground coffee beans and pour overs in progress is a lovely way to be greeted at any time of day—but in the morning, it’s really buzzing, with cute locals and travelers in need of caffeine. The rest of the lobby is more of a comfortable place to hang out during the day, where you can do a little work or meet a friend; at night is when the bar really gets going.', 0, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '44 W 29th St, New York, NY 10001, USA', 40.74629350000001, -73.98963730000003, NULL, '(212) 213-4429', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de3929540f3c_1575195285.jpg', '[\"5de39282339e4_1575195266.jpg\",\"5de39287a3a46_1575195271.jpg\",\"5de392917af0b_1575195281.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:06:30', '2019-12-01 10:14:45'),
(70, 8, 11, 26, '[\"13\"]', '[\"34\"]', 'Sister City', 'sister-city', 'This is the first of what may become a global chain of affordable urban hotels from urban hotel titans, Ace and their design firm, Atelier Ace. Things here are pared back, even for Ace standards. But the designers had some fun with all the common areas, like rooftop bars and lobby courtyards.', 2, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '225 Bowery, New York, NY 10002, USA', 40.7219619, -73.99305170000002, NULL, '(646) 343-4500', NULL, '[{\"name\":\"Facebook\",\"url\":\"sistercitynyc\"},{\"name\":\"Instagram\",\"url\":\"sistercitynyc\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de393298c555_1575195433.jpg', '[\"5de3930cc8d86_1575195404.jpg\",\"5de393126e78b_1575195410.jpg\",\"5de39316254b2_1575195414.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:06:13', '2019-12-01 10:17:13'),
(71, 8, 11, 26, '[\"13\"]', '[\"34\"]', 'Soho House New York', 'soho-house-new-york', 'Those already familiar with Soho House will feel instantly at home here, where a few of the company’s signature design elements are in place, like distressed wood floors and beamed ceilings, velvet chairs and sofas, exposed brick, and flattering lighting. As befits a members’ club, it feels intimate, though not exclusive (the hotel portion is open to anyone).', 3, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '29-35 9th Ave, New York, NY 10014, USA', 40.7405866, -74.00583189999998, NULL, '(212) 679-2222', NULL, '[{\"name\":\"Facebook\",\"url\":\"sohohotel\"},{\"name\":\"Instagram\",\"url\":\"sohohotel\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de393ebbd008_1575195627.jpg', '[\"5de393df34b88_1575195615.jpg\",\"5de393e491ca6_1575195620.jpg\",\"5de393e90c129_1575195625.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:05:51', '2019-12-01 10:20:27'),
(72, 8, 11, 26, '[\"13\"]', '[\"36\"]', 'Ace Hotel New York', 'ace-hotel-new-york', 'This boutique hotel is located in the center of Manhattan, only a 10-minute walk to Madison Square Garden. The hotel features two on-site restaurants, free Wi-Fi and a 24-hour front desk. Each unique guest room at the Hotel Ace is individually designed and features modern amenities including flat-screen TVs and an iPod dock. A fully stocked mini-bar and a refrigerator are also offered. Located inside a historic building, the Ace Hotel offers a unique style developed by local artists and designers. Guests at the hotel can eat at the Breslin Restaurant. Enjoy gourmet coffee from Stumptown Coffee Roasters Cafe and live music in the hotel lobby.', 3, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '20 W 29th St, New York, NY 10001, USA', 40.745778, -73.98828500000002, NULL, '(212) 679-2222', NULL, '[{\"name\":\"Facebook\",\"url\":\"acehotel\"},{\"name\":\"Instagram\",\"url\":\"acehotel\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5de394e7bca09_1575195879.jpg', '[\"5de394d779292_1575195863.jpg\",\"5de394dc87992_1575195868.jpg\",\"5de394e1b4fd3_1575195873.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 07:05:33', '2019-12-01 10:24:39'),
(73, 8, 11, 26, '[\"12\"]', '[\"25\"]', 'Lucali', 'lucali', 'It’s all about timing, so they say (“they” being folk who’ve tried, and failed, to get a table) when it comes to Lucali, an unassuming-looking pizzeria in Cobble Hill that can command two-hour waits. Inside a former candy store, the softly lit restaurant has weathered walls, mismatched wooden chairs, and a touch of old-timey decor (vintage cash register, boxing gloves). The crew’s open, rustic kitchen is in plain view, so the whole restaurant can watch pies twirl and rise from the oven.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\"]', '575 Henry St, Brooklyn, NY 11231, USA', 40.6818297, -74.00031719999998, NULL, '(718) 858-4086', NULL, '[{\"name\":\"Facebook\",\"url\":\"lucali\"},{\"name\":\"Instagram\",\"url\":\"lucali\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de395b698ee1_1575196086.jpeg', '[\"5de395b24c645_1575196082.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:43:07', '2019-12-01 10:28:06'),
(74, 8, 11, 26, '[\"12\"]', '[\"25\"]', 'Glady’s', 'gladys', 'Let’s clear something up: Glady’s is a restaurant, not a bar, but with beverage director Shannon Mustipher in charge, the drinks are just as much a draw to this Crown Heights Caribbean restaurant as the food.', 3, '[\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '788 Franklin Ave, Brooklyn, NY 11238, USA', 40.6717277, -73.95787989999997, NULL, '(718) 622-0249', NULL, '[{\"name\":\"Facebook\",\"url\":\"gladysrumbar\"},{\"name\":\"Instagram\",\"url\":\"gladysrumbar\"}]', '[{\"title\":\"Monday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Thursday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Friday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Saturday\",\"value\":\"11:30 AM\\u20133:00 PM\"},{\"title\":\"Sunday\",\"value\":\"11:30 AM\\u20133:00 PM\"}]', '5de3964056ecd_1575196224.jpg', '[\"5de3969628c33_1575196310.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:42:51', '2019-12-01 10:30:24'),
(75, 8, 11, 26, '[\"12\"]', '[\"26\"]', 'TAK Room', 'tak-room', 'This spring, Keller wrote on Instagram: “We’re calling it fun dining, not fine dining.” So, while TAK Room may be less tight laced than his flagship New York restaurant Per Se, there’s still a very high level of decadence here—and it comes with a hefty price tag and a matching clientele.', 2, '[\"13\",\"11\",\"9\",\"8\",\"7\",\"6\"]', '20 Hudson Yards 5th Floor, New York, NY 10001, USA', 40.75367680000001, -74.00177009999999, NULL, '(929) 450-4050', NULL, '[{\"name\":\"Facebook\",\"url\":\"takroomnyc\"},{\"name\":\"Instagram\",\"url\":\"takroomnyc\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de3971e0a75e_1575196446.jpg', '[\"5de39962c6fb4_1575197026.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:42:36', '2019-12-01 10:34:06'),
(76, 8, 11, 26, '[\"12\"]', '[\"25\"]', 'Locanda Verde', 'locanda-verde', 'Excellent, unique cocktails are on the menu here, including the Alpino, a tequila gimlet punched up with lime and two different herbal liqueurs. Otherwise, you can’t go wrong with a bottle of Santa Lucia Franciacorta Rosé on a warm day.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '377 Greenwich St, New York, NY 10013, USA', 40.7198964, -74.01002489999996, NULL, '(212) 925-3797', NULL, '[{\"name\":\"Facebook\",\"url\":null}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de39891b44e9_1575196817.jpg', '[\"5de3988bcf57c_1575196811.jpg\"]', NULL, 2, NULL, 1, NULL, NULL, '2019-12-26 07:07:44', '2019-12-01 10:40:17'),
(77, 8, 11, 26, '[\"12\"]', '[\"25\"]', 'Pasquale Jones', 'pasquale-jones', 'An antidote to the rustic Italian dining rooms all over the city, Nolita’s Pasquale Jones is all modern clean lines and right angles. You might expect it to feel a bit cold, but it’s not—it’s a comfortable, light-filled, warm space.', 1, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', '187 Mulberry St, New York, NY 10012, USA', 40.7210784, -73.99675539999998, NULL, '(917) 453-0339', NULL, '[{\"name\":\"Facebook\",\"url\":\"pasqualejonesNYC\"},{\"name\":\"Instagram\",\"url\":\"pasqualejonesNYC\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de399401de36_1575196992.jpg', '[\"5de3993167264_1575196977.jpg\",\"5de39937807d8_1575196983.jpg\",\"5de3993df262a_1575196989.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:42:21', '2019-12-01 10:43:12'),
(78, 8, 9, 27, '[\"11\"]', '[\"28\"]', 'Picasso Museum', 'picasso-museum', 'A museum spread over five palaces—we’d expect nothing less for Picasso, who moved to Barcelona as a 14-year-old boy and made frequent trips back throughout his life. Downstairs, a courtyard and Gothic archways lead into white studios that illuminate his works. Upstairs, the rooms are lavish: epic painted ceilings that almost drip crystal chandeliers. Visitors flock here to see Picasso’s work, but the special setting is why they come back again and again.', 0, '', 'Picasso Museum, Calle San Agustín, Málaga, Spain', 36.7217363, -4.418429100000026, NULL, '+34 932 56 30 00', NULL, '[{\"name\":\"Facebook\",\"url\":\"museupicasso\"},{\"name\":\"Instagram\",\"url\":\"museupicasso\"},{\"name\":\"Twitter\",\"url\":\"museupicasso\"},{\"name\":\"Youtube\",\"url\":\"museupicasso\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5de51d9db6a74_1575296413.jpg', '[\"5de51d9907518_1575296409.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-26 08:06:07', '2019-12-02 14:20:13'),
(79, 8, 9, 27, '[\"11\"]', '[\"29\"]', 'Cathedral of Barcelona', 'cathedral-of-barcelona', 'The Cathedral of the Holy Cross and Saint Eulalia, also known as Barcelona Cathedral, is the Gothic cathedral and seat of the Archbishop of Barcelona, Catalonia, Spain. The cathedral was constructed from the thirteenth to fifteenth centuries, with the principal work done in the fourteenth century.\r\n\r\nBook your required pass and board the hop-on hop-off double-decker bus at any of the East or West Route stops. Your ticket is valid for your selected time period from its first use. Buses arrive approximately every seven to 15 minutes.', 1, '', 'Pla de la Seu, s/n, 08002 Barcelona, Spain', 41.383962, 2.1761990999999625, NULL, '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Tuesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Wednesday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Thursday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Friday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Saturday\",\"value\":\"10:00 am - 5:30 pm\"},{\"title\":\"Sunday\",\"value\":\"10:00 am - 5:30 pm\"}]', '5e046600616ca_1577346560.jpeg', '[\"5e0465f17bf13_1577346545.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-26 07:50:25', '2019-12-26 07:49:20'),
(80, 8, 9, 27, '[\"11\"]', '[\"39\"]', 'FC Barcelona Museum', 'fc-barcelona-museum', 'Anyone who knows just how popular Barcelona’s football club – FC Barcelona – are in the city and in the world will not be surprised that they have their very own museum right at the heart of the club’s home: the Camp Nou stadium. First inaugurated in 1984, the museum has been refurbished throughout the years to keep up to date with the club’s ongoing success. The museum attracts over 1.2 million visitors a year, making it the second most popular museum in the city. Browse through old photos of the players or admire some of their most impressive trophies as part of the popular ‘Camp Nou Experience’. FC Barcelona Museum, C. Aristides Maillol, Barcelona', 1, '', 'C. d\'Arístides Maillol, s/n, 08028 Barcelona, Spain', 41.3802643, 2.1209085000000414, NULL, '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e0467e4d2c39_1577347044.jpg', '[\"5e0467b63f8ed_1577346998.jpg\"]', NULL, 4, NULL, 1, NULL, NULL, '2020-01-16 01:50:40', '2019-12-26 07:57:24'),
(81, 8, 9, 27, '[\"11\"]', '[\"29\",\"39\"]', 'La Sagrada Família', 'la-sagrada-familia', 'If you have time for only one sightseeing outing, this should be it. La Sagrada Família inspires awe by its sheer verticality, and in the manner of the medieval cathedrals it emulates, it’s still under construction. Work began in 1882 and is hoped (perhaps optimistically) to be completed in 2026, a century after the architect’s death. Unfinished it may be, but it attracts more than 4.5 million visitors a year and is the most visited monument in Spain.\r\n\r\nPope Benedict XVI consecrated the church as a minor basilica in a huge ceremony in November 2010.\r\n\r\nThe Temple Expiatori de la Sagrada Família (Expiatory Temple of the Holy Family) was Antoni Gaudí’s all-consuming obsession. Given the commission by a conservative society that wished to build a temple as atonement for the city’s sins of modernity, Gaudí saw its completion as his holy mission. As funds dried up, he contributed his own, and in the last years of his life he was never shy of pleading with anyone he thought a likely donor.\r\n\r\nGaudí devised a temple 95m long and 60m wide, able to seat 13,000 people, with a central tower 170m high above the transept (representing Christ) and another 17 of 100m or more. The 12 along the three facades represent the Apostles, while the remaining five represent the Virgin Mary and the four evangelists. With his characteristic dislike for straight lines (there were none in nature, he said), Gaudí gave his towers swelling outlines inspired by the weird peaks of the holy mountain Montserrat outside Barcelona, and encrusted them with a tangle of sculpture that seems an outgrowth of the stone.', 0, '', 'Carrer de Mallorca, 401, 08013 Barcelona, Spain', 41.4036299, 2.1743558000000576, NULL, '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e04695ea920a_1577347422.jpeg', '[\"5e04694ea65bf_1577347406.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-26 08:03:42', '2019-12-26 08:03:42'),
(82, 8, 9, 27, '[\"11\"]', '[\"27\",\"39\"]', 'Magic Fountain of Montjuïc', 'magic-fountain-of-montjuic', 'The magic fountain of Montjuïc’s (Font màgica de Montjuïc in Catalan) first performance was on May 19, 1929 during the Great Universal Exhibition. The designer Carles Buigas submitted his plans one year before the exhibition and many thought that the project was too ambitious to be created, let alone completed on time.', 1, '', 'Plaça de Carles Buïgas, 1, 08038 Barcelona, Spain', 41.3711603, 2.1517401999999493, NULL, '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"grandluxury\"},{\"name\":\"Instagram\",\"url\":\"hotellutetia\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e046a5e1b5c2_1577347678.jpeg', '[\"5e046a593282d_1577347673.jpeg\"]', NULL, 4, NULL, 1, NULL, NULL, '2019-12-26 08:07:58', '2019-12-26 08:07:58'),
(83, 8, 9, 27, '[\"12\"]', '[\"25\"]', 'Benzina', 'benzina', 'A huge photograph of a car in flames, tables where no two sets of seats is the same, metallic air-conditioning pipes that snake along the ceiling, a hot-red hat stand: Set in a former mechanic’s garage, Benzina is clearly no ordinary Italian restaurant. There are also tunes—vinyl rock (The Stones, Creedence Clearwater Revival) that’s hard not to sing along to, even with a mouth stuffed with pasta—plus cocktails served to start, to finish, or, heck, whenever you want them.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Passatge de Pere Calders, 6, 08015 Barcelona, Spain', 41.37618610000001, 2.1627582999999504, 'hello@particulieres.com', '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"Benzina\"},{\"name\":\"Instagram\",\"url\":\"Benzina\"},{\"name\":\"Youtube\",\"url\":\"Benzina\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e046c1e8dc54_1577348126.jpg', '[\"5e046c16e74f5_1577348118.jpg\",\"5e046c1a26bbf_1577348122.jpg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:42:09', '2019-12-26 08:15:26'),
(84, 8, 9, 27, '[\"12\"]', '[\"25\"]', 'La Alcoba Azul', 'la-alcoba-azul', 'La Alcoba Azul is hidden in the small streets of the Gothic Quarter. The atmosphere in La Alcoba Azul is great: the bar is completely decorated in the medieval style. There is a wooden floor, the walls are very old and there are chandeliers with candles hanging throughout the whole place. On top of that, they have great music, serve original tapas, and have great house wines and mojitos.', 3, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Carrer de Salomó ben Adret, 14, 08002 Barcelona, Spain', 41.3829206, 2.1755172000000584, NULL, '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"Alcoba\"},{\"name\":\"Instagram\",\"url\":\"Alcoba\"},{\"name\":\"Youtube\",\"url\":\"Alcoba\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e046d0d754a2_1577348365.jpeg', '[\"5e046d06a0999_1577348358.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:41:58', '2019-12-26 08:19:25'),
(85, 8, 9, 27, '[\"12\"]', '[\"26\",\"37\"]', 'Bar La Plata', 'bar-la-plata', 'Bar La Plata is one of those tiny, authentic Spanish bars. The place opened in 1945, serving just four dishes, and they still serve the same plates today. Their specialties are: fried fish, pieces of tomato bread with anchovies, a typical Catalan sausage, butifarra, and a salad of tomato, onion and olives. These classic recipes are simple, but are made in a great way. It is one of the oldest tapas bars in Barcelona, where you can feel like a local for a while.', 1, '[\"13\",\"11\",\"8\",\"6\"]', 'Carrer de la Mercè, 28, 08002 Barcelona, Spain', 41.3804316, 2.180646700000011, 'hello@particulieres.com', '(212) 679-2222', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e046dca1d4a9_1577348554.jpeg', '[\"5e046dbf25c0c_1577348543.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:41:34', '2019-12-26 08:22:34'),
(86, 8, 9, 27, '[\"12\"]', '[\"25\",\"26\"]', 'Antic Theatre', 'antic-theatre', 'Not quite a speakeasy bar, Antic Theatre is just the kind of place that doesn’t bother advertising itself because it doesn’t really want anyone else knowing it’s there. Content with the full-house it racks up every weekend and most evenings, the venue is a theater as well as a bar with an open air courtyard located just by the Palau de la Música. You could easily walk past it as there’s no sign on the street telling you where it is and the stairs at the entrance occult the beautiful outdoors space nestled between old stone houses. Attracting a young, indie crowd, this is an endlessly laid-back hang-out which doesn’t need to try hard to be cool.', 2, '', 'Carrer de Verdaguer i Callís, 12, 08003 Barcelona, Spain', 41.38717260000001, 2.1759872999999743, 'hello@particulieres.com', '+44 20 3519 2700', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e047bda56379_1577352154.jpeg', '[\"5e047bd32632e_1577352147.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:41:21', '2019-12-26 09:22:34'),
(87, 8, 9, 27, '[\"12\"]', '[\"25\"]', 'El Paradiso', 'el-paradiso', 'If the speakeasy concept is hot in Barcelona at the moment it’s all thanks to this recent newcomer that has got everyone talking. A trendy cocktail bar with a drinks list designed by award-winning barman Giacomo Giannotti , El Paradiso is accessed via an unassuming sandwich place. Known as the Pastrami Bar, the food joint is located just across from the Estació de Francia in El Born and is the latest project of Barcelona based foodie, the Rooftop Smokehouse, famous for their mouthwateringly delicious smoked meats. Ask kindly behind the counter and you’ll get a nod when you can get in the back.', 2, '[\"13\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Carrer de Rera Palau, 4, 08003 Barcelona, Spain', 41.3836305, 2.183664399999998, 'hello@comohotels.com', '+34933607222', NULL, '[{\"name\":\"Facebook\",\"url\":\"generator\"},{\"name\":\"Instagram\",\"url\":\"generator\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e047cbd80b57_1577352381.jpeg', '[\"5e047cb18621c_1577352369.jpeg\"]', NULL, 1, NULL, 1, NULL, NULL, '2020-01-16 01:38:40', '2019-12-26 09:26:21'),
(88, 8, 9, 27, '[\"13\"]', '[\"34\"]', 'Cotton House Hotel', 'cotton-house-hotel', 'Cotton House Hotel is set in a historic building that dates back to the 19th century, and was first built as a private palace before being converted into the headquarters of the Cotton Textile Foundation. Once a meeting point for the leaders of the city’s prosperous textile industry, the building has been magnificently restored by Barcelona’s most famous interior designer, Lázaro Rosa-Violán, who is best known for his ability to blend historic detail and modern design in perfect harmony. Cotton House Hotel might just be his best work to date.', 3, '[\"12\",\"11\",\"10\",\"8\",\"7\",\"6\"]', 'Gran Via de les Corts Catalanes, 670, 08010 Barcelona, Spain', 41.39174329999999, 2.1717909999999847, 'hello@particulieres.com', '(212) 213-4429', NULL, '[{\"name\":\"Facebook\",\"url\":\"grandluxury\"},{\"name\":\"Instagram\",\"url\":\"grandluxury\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5e047e47d07dc_1577352775.jpg', '[\"5e047e3d89786_1577352765.jpg\",\"5e047e414a6b7_1577352769.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 09:32:55', '2019-12-26 09:32:55');
INSERT INTO `places` (`id`, `user_id`, `country_id`, `city_id`, `category`, `place_type`, `name`, `slug`, `description`, `price_range`, `amenities`, `address`, `lat`, `lng`, `email`, `phone_number`, `website`, `social`, `opening_hour`, `thumb`, `gallery`, `video`, `booking_type`, `link_bookingcom`, `status`, `seo_title`, `seo_description`, `updated_at`, `created_at`) VALUES
(89, 8, 9, 27, '[\"13\"]', '[\"34\"]', 'The Serras Hotel', 'the-serras-hotel', 'A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door.', 3, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Passeig de Colom, 9, 08002 Barcelona, Spain', 41.3801834, 2.1807973999999604, 'hello@comohotels.com', '(212) 679-2222', NULL, '[{\"name\":\"Facebook\",\"url\":\"grandluxury\"},{\"name\":\"Instagram\",\"url\":\"grandluxury\"}]', '[{\"title\":\"Monday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Tuesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Wednesday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Thursday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Friday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Saturday\",\"value\":\"10:00 AM - 11:00 PM\"},{\"title\":\"Sunday\",\"value\":\"10:00 AM - 11:00 PM\"}]', '5e047f71094b3_1577353073.jpg', '[\"5e047f654870a_1577353061.jpg\",\"5e047f6b0f6e6_1577353067.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 09:37:53', '2019-12-26 09:37:53'),
(90, 8, 9, 27, '[\"13\"]', '[\"35\"]', 'Majestic Hotel', 'majestic-hotel', 'A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door.', 2, '[\"13\",\"12\",\"11\",\"10\",\"9\",\"8\",\"7\",\"6\"]', 'Passeig de Gràcia, 68, 08007 Barcelona, Spain', 41.3935179, 2.163981299999932, 'hello@comohotels.com', '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"hotellutetia\"},{\"name\":\"Instagram\",\"url\":\"hotellutetia\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5e048044479b8_1577353284.jpg', '[\"5e0480398fce0_1577353273.jpg\",\"5e04803e36228_1577353278.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 09:41:24', '2019-12-26 09:41:24'),
(91, 8, 9, 27, '[\"13\"]', '[\"36\"]', 'Hotel Arts Barcelona', 'hotel-arts-barcelona', 'Huge floral displays, warm fabrics, and beautiful people. The lobby of Hotel Arts has “five-star hotel” written all over it. Guests can work up a sweat in the fitness centre free of charge or take a cool swim in the outdoor pool at a fee. The hotel also features a karaoke room, convenience store and business centre. Guests can work up a sweat in the fitness centre free of charge or take a cool swim in the outdoor pool at a fee. The hotel also features a karaoke room, convenience store and business centre.', 2, '[\"12\",\"11\",\"8\",\"7\"]', NULL, NULL, NULL, 'hi@ritzcarlton.com', '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"sohohotel\"},{\"name\":\"Instagram\",\"url\":\"sohohotel\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5e04811bccefc_1577353499.jpg', '[\"5e04810e13293_1577353486.jpg\",\"5e0481114ccb1_1577353489.jpg\",\"5e04811608d44_1577353494.jpg\"]', NULL, 3, 'https://www.booking.com/?aid=1266181', 1, NULL, NULL, '2019-12-26 09:44:59', '2019-12-26 09:44:59'),
(92, 8, 9, 27, '[\"13\"]', '[\"34\"]', 'Sir Victor Hotel', 'sir-victor-hotel', 'When you’re neighbors with La Pedrera, one of Gaudí’s most surreal feats of stone craft, there’s a tiny problem: How on earth do you get noticed? The building that houses Sir Victor went modern, and its façade—with architect Capella Garcia’s white balconies that curve out like the open pages of a book—has become Barcelona-famous in its own right. Below, the reception is minimal and sceney; a marble pool table hangs out with midnight-blue velvet chairs and enough intentionally positioned art books to let you know that you’re in a Design Hotel.fff', 2, '[\"12\",\"11\",\"9\",\"8\",\"7\",\"6\"]', 'Carrer del Rosselló, 265, 08008 Barcelona, Spain', 41.3962147, 2.1609684000000016, 'hello@particulieres.com', '+81337120819', NULL, '[{\"name\":\"Facebook\",\"url\":\"grandluxury\"},{\"name\":\"Instagram\",\"url\":\"keioplaza\"}]', '[{\"title\":\"Monday\",\"value\":null},{\"title\":\"Tuesday\",\"value\":null},{\"title\":\"Wednesday\",\"value\":null},{\"title\":\"Thursday\",\"value\":null},{\"title\":\"Friday\",\"value\":null},{\"title\":\"Saturday\",\"value\":null},{\"title\":\"Sunday\",\"value\":null}]', '5e048210a286e_1577353744.jpg', '[\"5e0482058385e_1577353733.jpg\",\"5e04820b2e4f7_1577353739.jpg\"]', NULL, 3, NULL, 1, NULL, NULL, '2020-01-21 11:06:45', '2019-12-26 09:49:04');

-- --------------------------------------------------------

--
-- Структура таблицы `place_translations`
--

CREATE TABLE `place_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `place_translations`
--

INSERT INTO `place_translations` (`id`, `place_id`, `locale`, `name`, `description`) VALUES
(1, 16, 'en', 'Le Meurice', 'Le Meurice is a five-star hotel with a prime location in the 1st arrondissement of Paris, tucked away between the Place de la Concorde, the Louvre, which is the largest art museum in the world, and the gorgeous Tuileries Garden. Its dreamy interiors whisk you back to the Louis XVI era, and have been dazzling the luckiest visitors for centuries. Part of the esteemed Dorchester Group, there is a three-Michelin-star restaurant, an on-site spa and numerous surprises fusing a classic style with modern amenities – peek behind the paintings and you’ll most likely find a huge plasma television. What makes this place unique are the subtle winks to artist Salvador Dalí, with one of the hotel’s restaurants named in his honour.'),
(2, 17, 'en', 'Septime', 'A Parisian restaurant serving up haute-cuisine without the pretention.\r\n\r\nSeptime may regularly rank as one of the world’s best restaurants, but it carries with it none of the stuffiness of its counterparts. Housed in an unmarked street-level building in the 11th Arrondissement, and furnished with wooden chairs and tables, the restaurant has made a name for itself on the back of an unpretentious menu featuring sustainably-sourced ingredients in unusual combinations.\r\n\r\nGraphic designer-turned-chef Bertrand Grébaut is part of a younger cohort of cooks keen to throw off the shackles that sometimes constrain traditional French cuisine: Lobster with wild strawberries and poached egg in hay broth have both featured on the (frequently changing) menu.'),
(3, 18, 'en', 'Clamato', 'Clamato is an intimate bistro known for its small plates and short menu. Since opening, the sister of famed French restaurant Septime has served a concise selection of seafood and vegetables, such as raw cuttlefish in fennel-infused buttermilk or white asparagus cooked in seawater.\r\n\r\nWith its forest-green façade, Clamato’s quaint interior brings nature indoors with details such as wooden benches and fresh flowers. Clamato is closed Mondays and Tuesdays but serves lunch on weekends. The bistro is sans réservation—that is, the early bird gets the worm.'),
(4, 19, 'en', 'Boot Café', 'Boot Café is an understated coffee shop on a quiet street between the busier Rue de Turenne and Boulevard Beaumarchais in Le Marais. Only postcards and photos are tacked to the walls, and the menu is limited to coffee, tea and the selection of cakes that sit under glass domes on the counter.\r\n\r\nThe name choice is as simple as its interiors: Boot Café is so-called because the space was once a shoe shop. The café retains some trappings of its former life thanks to a Cordonnerie sign painted on its fading blue façade and a large red boot trade sign hanging adjacent.'),
(5, 20, 'en', 'Le Babalou', 'With its purple facade and small pavement terrace, it is hard to miss Le Babalou on the rue Lamarck, one of the main streets winding down from Sacre-Coeur. Le Babalou specialises in fine Italian cuisine, offering a great choice of authentic pizzas and fresh pasta dishes, all prepared with fresh, seasonal ingredients. Desserts are no less authentic, featuring some delicious favourite Italian sweet treats such as homemade tiramisu and panna cotta. Le Babalou’s interesting interior is reminiscent of a living room complete with patterned wallpaper, well-stocked bookshelves and a fine collection of lampshades, making this a great spot to feel immersed in the area.'),
(6, 21, 'en', 'Musée Guimet', 'The outstanding Musée Guimet boasts the western world’s biggest collection of Asian art, thanks to the 19th-century wanderings of Lyonnaise industrialist Émile Guimet. Exhibits, enriched by the state’s vast holdings, are laid out geographically in airy, light-filled rooms. Just past the entry, you can find the largest assemblage of Khmer sculpture outside Cambodia. The second floor has statuary and masks from Nepal, ritual funerary art from Tibet, and jewelry and fabrics from India. Peek into the library rotunda, where Monsieur Guimet once entertained the city’s notables under the gaze of eight caryatids atop Ionic columns; Mata Hari danced here in 1905. The much-heralded Chinese collection, made up of 20,000-odd objects, covers seven millennia, while the impressive Buddhist Pantheon features scores of Budhhas from China and Japan. Grab a free English-language audioguide and brochure at the entrance. If you need a pick-me-up, stop at the Salon des Porcelaines café on the lower level for a ginger milk shake. And don’t miss the Guimet’s adjunct space just up the street at 19 avenue d’Iéna. The Hôtel d’Heidelbach contains a Japanese garden and the museum’s collection of Asian furniture; admission is free with a Musée Guimet ticket.'),
(7, 22, 'en', 'Palais Royal', 'The quietest, most romantic Parisian garden is enclosed within the former home of Cardinal Richelieu (1585–1642). It’s the perfect place to while away an afternoon, cuddling with your sweetheart on a bench under the trees, soaking up the sunshine beside the fountain, or browsing the 400-year-old arcades that are now home to boutiques ranging from quirky (picture Anna Joliet’s music boxes) to chic (think designs by Stella McCartney). One of the city’s oldest restaurants is here, the haute-cuisine Le Grand Véfour, where brass plaques recall regulars like Napoléon and Victor Hugo. Built in 1629, the palais became royal when Richelieu bequeathed it to Louis XIII. Other famous residents include Jean Cocteau and Colette, who wrote of her pleasurable “country” view of the province à Paris. Today, the garden often plays host to giant-size temporary art installations sponsored by another tenant, the Ministry of Culture. The courtyard off Place Colette is outfitted with an eye-catching collection of squat black-and-white columns created in 1986 by artist Daniel Buren.'),
(8, 23, 'en', 'The Louvre', 'Simply put, the Louvre is the world’s greatest art museum—and the largest, with 675,000 square feet of works from almost every civilization on earth. The Mona Lisa is, of course, a top draw, along with the Venus de Milo and Winged Victory. These and many more of the globe’s most coveted treasures are displayed in three wings—the Richelieu, the Sully, and the Denon—which are arranged like a horseshoe. Nestled in the middle is I.M. Pei’s Pyramide, the giant glass pyramid surrounded by a trio of smaller ones that opened in 1989 over the new entrance in the Cour Napoléon. To plot your course through the complex, grab a color-coded map at the information desk. For an excellent overview, book a 90-minute English-language tour (€12, daily at 11 and 2); slick Nintendo 3DS multimedia guides (€5; pay for it when you buy your ticket), available at the entrance to each wing, offer a self-guided alternative.'),
(9, 24, 'en', 'Notre Dame', 'Looming above Place du Parvis, this Gothic sanctuary is the symbolic heart of Paris and, for many, of France itself. Napoléon was crowned here, and kings and queens exchanged marriage vows before its altar. Begun in 1163, completed in 1345, badly damaged during the Revolution, and restored in the 19th century by Eugène Viollet-le-Duc, Notre-Dame may not be the country’s oldest or largest cathedral, but in beauty and architectural harmony it has few peers—as you can see by studying the front facade. Its ornate doors seem like hands joined in prayer, the sculpted kings above them form a noble procession, and the west rose window gleams with what seems like divine light.'),
(10, 25, 'en', 'Sainte Chapelle', 'Built by the obsessively pious Louis IX (1214–70), this Gothic jewel is home to the oldest stained-glass windows in Paris. The chapel was constructed over three years, at phenomenal expense, to house the king’s collection of relics acquired from the impoverished emperor of Constantinople. These included Christ’s Crown of Thorns, fragments of the Cross, and drops of Christ’s blood—though even in Louis’s time these were considered of questionable authenticity. Some of the relics have survived and can be seen in the treasury of Notre-Dame, but most were lost during the Revolution.'),
(11, 26, 'en', 'Maison Souquet', 'The belle époque-style Maison Souquet was hailed as the world’s most romantic hotel in 2018. The luckiest couples can bathe in luxury at its private spas, or make the most of the five-star butler service. This boutique hotel is located just off the rue de Bruxelles, and is only a stone’s throw from the famed Moulin Rouge in Montmartre. The sumptuous interior decoration features velvet-lined furniture, wooden panels, huge mirrors and dazzling chandeliers, making it the perfect setting for a loved-up break.'),
(12, 27, 'en', 'Generator Paris', 'Generator Paris is a spacious and modern hostel in the centre of Paris – it’s also one of the biggest. With nearly 200 guest rooms on offer, this immense hostel is never a lonely place to stay. You’ll be welcomed by cheap prices and a friendly space to chill and mingle with like-minded travelers up on the hidden rooftop terrace, where you can enjoy breathtaking panoramic views over Parisian rooftops. Whilst it’s centrally located in the 10th arrondissement of Paris, you’re never too far away from nature, which is great if you’re staying during the summer. The relaxing green expanse of Parc des Buttes Chaumont is a quiet haven of calm; it’s especially popular with picnickers and is less than a 15-minute walk away. There’s lots of lockable storage space, a laundry service, and fun events program too.'),
(13, 28, 'en', 'The Loft Boutique', 'The Loft Boutique Hostel & Hotel is located in the 20th arrondissement of Paris, just a 10-minute walk away from the famous Grands Boulevards. There’s an outside terrace tucked away in a quiet, cute courtyard where you can tuck into a croissant and coffee every morning like a true Parisian. It’s a great place to mingle and meet with other travelers in a calmer setting compared to some of the other more party-loving hostels on this list. There might not be many parties here, as it doubles up as a hotel too, but the nearby Grands Boulevards offers a lively stretch of bars and nightlife in case you find yourself wanting a wilder evening of fun.'),
(14, 29, 'en', 'Hôtel Lutetia', 'Despite undergoing a multimillion-euro makeover in July 2018, Hôtel Lutetia’s unmatched spirit remains the same. The property was built in 1910 in the Art Nouveau style and is the only grand hotel on the Left Bank. It has attracted the likes of artist Pablo Picasso, former president Charles de Gaulle, and singer and actor Marianne Oswald over the years, with James Joyce rumoured to have written part of Ulysses (1992) there too. The legendary landmark ranks a huge wellness centre as its most distinguished feature, offering an array of sophisticated treatments and massages. There’s also a Jacuzzi and 17-metre-long (56 feet) swimming pool, complete with a sauna, steam room and plunge pool next to a large fitness room.'),
(15, 34, 'en', 'Yutenji', 'Yutenji Temple is holding their annual Yutenji Mitama Matsuri. Parents and children from the neighboring kindergarten, participate by dancing in colourful yukatas every year. Grab lunch at&nbsp;Midorie Organic Cafe, stop by the Temple grounds late afternoon to learn about the eight different structures and buildings then, stay late for the dance festival, food and game stalls. There`s enough for all ages to enjoy. Don a yukata and join in the fun! Yutenji Temple is holding their annual Yutenji Mitama Matsuri. Parents and children from the neighboring kindergarten, participate by dancing in colourful yukatas every year. Grab lunch at&nbsp;Midorie Organic Cafe, stop by the Temple grounds late afternoon to learn about the eight different structures and buildings then, stay late for the dance festival, food and game stalls. There`s enough for all ages to enjoy. Don a yukata and join in the fun!'),
(16, 35, 'en', 'Ryusenji (Meguro Fudo)', 'On Rysenji’s grounds, the famous Meguro Fudo-myo-o (Black Eyed Fudo-Myo-o) statue stands guard, and it’s from this sentinel that the ward takes its name. This was one of five such statues placed protectively around Edo’s borders nearly 400 years ago, each with eyes of a different color. Fudo Myo-o is a revered guardian deity of the Buddhist faith.'),
(17, 36, 'en', 'Yoyogi Park', '<p>The Yoyogi Park is a large Western-style park situated a five minutes’ walk from the Harajuku Station and the Meiji Shrine. Yoyogi Park sits on the site from where the first successful powered aircraft flight in Japan took place on December 19, 1910 led by Captain Yoshitoshi Tokugawa. Presently, it is one of the locals’ favorite parks, where you will see many rock music fans, jugglers, comedians and hobby groups. For no charge, you get to witness its famous autumn leaves at the right time of year, especially the golden leaves of the many ginko trees.</p>'),
(18, 37, 'en', 'Nezu Museum', 'Home to the Japanese businessman and philanthropist Nezu Kaichirō , the Nezu Museum houses one of Tokyo’s most comprehensive collections of Japanese and East Asian art, including calligraphy, painting, ceramics, and textiles. After Nezu’s passing, his son turned his late father’s home into a public museum in order to preserve and share the impressive collection. Walk inside and you will also find a small, lush Japanese-style garden complete with tranquil ponds and small Buddha statues.'),
(19, 38, 'en', 'Mount Fuji', 'Mount Fuji is Japan’s tallest mountain, and the iconic peak has become a symbol of the entire country. From Tokyo, the mountain is hard to spot unless the weather is cooperating, so for the best view make the trek to the mountains yourself and catch a glimpse of Fuji-san from neighboring Mitake-san.'),
(20, 39, 'en', 'Yamachan', 'Yamachan is an all-you-can-drink premium sake bar located near Shinjuku. For an affordable price you can drink as much sake as you like. You can even take along food and other alcohol with you, or you can leave in the middle of your drinking session and return to order more items. The setting is like that of a classroom, with cheap wooden desks and chairs, and there are no decorative elements. The only objective here is to drink the best sake in the country. The bar is self-service so come prepared to pour your own drink.'),
(21, 40, 'en', 'Akaoni', 'If you are looking for an old-fashioned style sake bar with a modern flair, then&nbsp;<a href=\"http://www.akaoni39.com/\" target=\"_blank\">Akaoni</a>&nbsp;is your best bet. The translation of Akaoni is ‘red devil’. Beginners must be careful, as they take their sake very seriously here. Akaoni is located just five minutes from Sangen-jaya station, though it is not particularly easy to find. Once you get there, you will be impressed with the warm, down-to-earth atmosphere. Choose from more than 100 varieties of sake with a seasonal option called namazake, which is raw, unpasteurized sake.'),
(22, 41, 'en', 'Hasegawa Saketan', 'Conveniently located inside Japan Railway Tokyo station, Hasegawa Saketan is rated as one of the best sake bars in Tokyo. The very knowledgeable and friendly bartenders speak English perfectly and are happy to assist and teach visitors about Japan’s signature drink. While waiting for your train, try some of the trendiest sake brands like Juyondai, Tamagata, Dassai and Yamaguchi. The establishment opens as early as 7am for early birds. You can also purchase a bottle of the sake from the shop next door.'),
(23, 42, 'en', 'Takemura', 'Shinjuku’s&nbsp;Robot Restaurant&nbsp;is pure electrifying fun. This energetic dinner theatre is much more about the experience than the food, featuring laser and light shows, fighting robots and actors in outrageous costumes. You can find Robot Restaurant in Kabukicho, the largest entertainment district in Shinjuku Ward.'),
(24, 43, 'en', 'Ganso Zushi', 'Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival). Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival). Ganso Zushi is a cheap&nbsp;kaiten-zushi&nbsp;(conveyor belt sushi) chain found all around Tokyo. Prices start at just over 100 yen (US$0.90) per plate. English menu available. Nakameguro is a popular yet quiet residential neighborhood filled with unique boutique shops and cafe. The area comes alive with their Cherry Blossom festival along the Meguro River in mid spring and during their summer matsuri (festival).'),
(25, 44, 'en', 'Keio Plaza Hotel', 'Just a five-minute walk from Shinjuku Station, the Keio Plaza Hotel is a striking, 47-story tower overlooking the picturesque grounds of the Shinjuku Gyoen Park, a tranquil hideout positioned right in one of the most densely populated corners of the world. Like its neighbouring park, the hotel is a picture of oppositional harmony, where the manic and the peaceful, the new and the traditional meet. Inside the hotel are a number of different accommodation options, including traditional Japanese rooms, more Western-style offerings and, for those looking for something a little different, even Hello Kitty themed rooms.'),
(26, 45, 'en', 'Hilton Shinjuku', 'A name synonymous with the best of the best in the hotel game, the Hilton Shinjuku is definitely worth adding to your must-visit hotel itinerary if luxury travel is your thing. Directly connected to the Tochomae Subway Station, it’s easily accessible for those wanting to explore everything the city has to offer. The hotel’s hefty 800 rooms are located between the eighth and the 38th floor of the building, serving up unforgettable views of the city skyline. The design is both modern and sleek, but features warm, homely touches such as rich wood furnishings, traditional Japanese shoji screens, and complimentary pyjamas.'),
(27, 46, 'en', 'Citadines', '<p>If you’re looking for somewhere easy to crash for a few nights and have value for money in mind, Citadines is a very good shout. This stylish, centrally located, budget-friendly hotel is relatively relaxed but still offers impeccable service and very high standards. Rooms come equipped with kitchenettes and heated toilet seats, a novelty for first-timers in the city. Shinjuku Gyoen Park is just around the corner, and Golden Gai and the main shopping district are around 15-20 minutes away by foot. If you want to explore a little further, Shinjuku Gyoenmae Subway Station is just a five-minute stroll away. For an easy, central, no-fuss option, Citadines is ideal.</p>'),
(28, 47, 'en', 'Hotel Koe', '<p>Sitting on the Harajuku corner of Shibuya, Hotel Koe is much more than just a hotel. It’s also an art hub, a live music space, a bar, café, restaurant, co-working hub and retail store. It was founded by the apparel company Stripe, which is why it’s practically overflowing with street-style cool. The hotel features 10 rooms in total, of different sizes ranging from S to XL, each of them designed with an appreciation for elegant minimalism. Keep an eye out when visiting, though, as this place is full of surprises. One particular surprise is the check-in desk, which some nights transforms into a DJ booth manned by Masaya Kuroki of fashion and music label Maison Kitsuné.</p>'),
(29, 48, 'en', 'Trunk Hotel', 'One of the newest players in Tokyo’s contemporary hotel scene, Trunk Hotel is much more than just a place to rest. Situated right on the doorstep of Harajuku’s fashion-forward Cat Street and a 10-minute stroll from Shibuya Crossing, it’s in the middle of all the action but tucked far enough off the main thoroughfare to provide some peace and quiet. The hotel features its own Trunk brand convenience store, a sprawling outdoor deck and a lobby which by day is a popular co-working space and by night transforms into a sleek cocktail bar.'),
(30, 49, 'en', 'Blue Elephant Cooking School', 'Those with mobility issues might want to pass. The classroom is upstairs with no elevator access, cooking stations require standing, and the market tour starts with a journey on Bangkok’s BTS, an elevated train with very few elevators. The crowd tends to be more serious about actually gleaning some culinary knowledge than at other lessons we’ve attended around town.'),
(31, 50, 'en', 'Wat Suwannaram', 'Located on the Thonburi side of the Chao Phraya River, this Ayutthaya-era temple often gets overlooked for other well-known riverside temples, like Wat Arun. But inside, this historic temple offers centuries of history, ornate hand-painted murals, and tourist-free bliss. There is no need to book ahead and bilingual brochures are available for free.'),
(32, 51, 'en', 'Lumphini Park', 'The park’s best-known commodity is its resident population of giant (mostly harmless) monitor lizards, which slither in and out of the lake. If you’ve never seen a monitor lizard—in the same genus as the Komodo dragon, but not nearly as large—they’re hard to miss, with long necks, powerful tails, and claws. The ones that roam Lumphini are used to humans, but still: Don’t touch them or get too close—not even for selfies.'),
(33, 52, 'en', 'Chinatown', 'Market lanes, glittery gold shops, phenomenal street food, temples with golden Buddhas, Daoist temples clouded with incense smoke, street art, history, and a neighborhood setting that feels untouched by time and modernization: Welcome to Bangkok’s enchanting Chinatown. You don’t need tickets or reservations, just an appetite for Thai-Chinese street food and a penchant for getting a little lost in the name of exploration.'),
(34, 53, 'en', 'Wat Arun', 'Of the more than 31,000 temples throughout Thailand, this one, standing 269 feet tall, is one of the most iconic. It’s fine to fly solo at Wat Arun. There isn’t much information available at the ticket booth, so let Google be your tour guide. Visitors clamor to Wat Arun because it’s one of the few temples in Thailand that you can climb; once you’ve ascended the steep and narrow stairs, you’re in for a great view of the river and surrounding temple complex. After taking in the sights, walk back down the stairs and inspect the floral murals made from broken Chinese porcelain discarded by Chinese traders who worked at the nearby port. Next, don’t miss the&nbsp;boht—ordination hall—filled with the ashes of Rama II, more ornate murals, and rows of gilded Buddhas.'),
(35, 54, 'en', 'Nai Mong Hoi Thod', 'Chinatown has some of the best street food in the city, and this is one of its most famous stands. Hoi thod translates as fried oyster, and that is exactly what Mr Mong has been serving for over 30 years. Order the omelette with crispy or soft fried oysters or have it with mussels instead. His recipe has never changed throughout the decades, though he has passed the cooking to an apprentice who maintains his standards. This specialty of the house is made with fresh oysters fried ‘til crisp with egg and a sticky sauce. But in case you don’t want oysters, opt for the mussels instead.'),
(36, 55, 'en', 'Supanniga Eating Room', 'Downstairs at Supanniga Eating Room, glass walls overlook the river—it feels sort of like a houseboat, if said houseboat also had an industrial, Brooklyn-esque design. There’s assorted seating—couches, iron and wooden chairs—a long bar, and stairs leading up to an open-air roof, which is the prime location for dining.'),
(37, 56, 'en', 'Sühring', 'A restored garden home is a lovely backdrop for Sühring’s modern takes on German classics. The menu changes daily here; one day you’ll see spätzle, the next, brotzeit. The restaurant has a reputation for its wine list, which, unsurprisingly, skews German; you might find your new favorite Riesling. The service is as refined as the setting, and the crowd is dapper through and through.'),
(38, 57, 'en', 'Teens of Thailand', 'Get past the seedy-sounding name and push open two heavy wooden doors, and you’ll have found yourself in Bangkok’s best gin bar—and the city’s worst-kept secret. Teens, as it’s known locally, has been credited with making Soi Nana, a small shophouse-lined lane on the fringes of Chinatown, the hottest address in the city. The dimly lit space is tiny: there are only 15 seats and two bartenders who work elbow-to-elbow behind a small wooden bar with a huge stash of gin. As for the decor, there are retro Thai movie posters, a vintage piano, a teetering (which leads to an office) and a crumbling wall.'),
(39, 58, 'en', 'Mikkeller Bangkok', 'Hail a cab from the Ekkamai BTS station then zig-zig through narrow residential lanes to reach this a charming mid-century home with a leafy yard: That’s Mikkeller, the first Asian location of the beloved Danish beer bar. The space stays true to its Scandinavian roots, with light woods and minimalist details; there are oversized bean-bag chairs and lawn games out front, as well as high tops and more than a dozen taps inside. Space flows nicely—it’s the kind of place people linger at for a few hours.'),
(40, 59, 'en', 'Grand Hyatt Erawan Bangkok', 'The hotel is located right next to Erawan Shrine, which is a popular tourist site. It’s also directly adjacent to all levels of shopping at Siam Paragon, Siam Center, and Siam Discovery, as well as MBK, one of Asia’s largest malls. The hotel is located right next to Erawan Shrine, which is a popular tourist site. It’s also directly adjacent to all levels of shopping at Siam Paragon, Siam Center, and Siam Discovery, as well as MBK, one of Asia’s largest malls.'),
(41, 60, 'en', 'Conrad Bangkok', 'Conrad Bangkok is an ideal Bangkok lodging choice for your trip to Thailand. With numerous amenities for guests such as 24 hour front desk, gift shop, hot tub or spa, you will wake up at Conrad Bangkok feeling excited every day for your time in Bangkok. Don’t let this amazing reservation opportunity pass you by, book your stay at Conrad Bangkok today to make the most of your time in Bangkok, Thailand.'),
(42, 61, 'en', 'Anantara Siam Bangkok Hotel', 'Your fellow guests are a discerning bunch, and include international travelers doing the Thai circuit, Anantara loyalists, expat families, and the Bangkok society crowd stopping in for Sunday brunch and special events.'),
(43, 62, 'en', 'Metropolitan Bangkok', 'COMO is located on a long, lovely, heavily landscaped driveway (shared with the Banyan Tree Hotel) off a very busy road. Tall surrounding walls and plenty of plant life help it feel like a retreat from the hustle of Sathorn, neighborhood with a lot to offer visitors and expats. Enjoy a meal at one of the hotel’s dining establishments, which include 4 restaurants and a coffee shop/café. From your room, you can also access 24-hour room service. Relax with your favorite drink at a bar/lounge or a poolside bar. Breakfast is available for a fee.'),
(44, 63, 'en', 'The Siam', 'Gardens and villas unfolding down to the Chao Phraya River; Tardis-like interiors in white plaster with black tiling and joinery; a patio, a soaring Spanish Revival courtyard with raised palm lake; antiques, art and orchids in every direction—honestly, if you didn’t realize you were in the heart of the heart of the royal quarter of Bangkok, you very shortly will.'),
(45, 64, 'en', 'Chimney Bluffs State Park', '<p>Though it’s located in the same state, Chimney Bluffs State Park feels like another planet from NYC. Located in the town of Huron, this 597-acre state park sits on the Southern side of Lake Ontario and is home to large clay rock formations on the water’s edge. The area was acquired by the state in 1963, and now you can explore the bluffs on hiking trails in the summer and cross-country ski trails in the winter.</p>'),
(46, 65, 'en', 'Metropolitan Opera', 'The opera may seem somewhat out there, but this is a genuine experience that you can’t get anywhere else. No matter which opera you decide to see, seeing it at the Metropolitan Opera Houseis something you will always remember. Even if you don’t understand the language it’s in (most of them are sung in the romance languages), the story is clearly told through the actor’s superb performances. The Metropolitan Opera shows classic operas such as Puccini’s La Bohèmeand Verdi’s Il Trovatore.'),
(47, 66, 'en', 'The Solomon R. Guggenheim Museum', 'Designed by American “starchitect” Frank Lloyd Wright, the Solomon R. Guggenheim Museum is one of most respected institutions for modern and contemporary art in the world – not to mention a landmark of New York City architecture. Conceived of as an “inverted-ziggurat” and characterized by magnificent spirals, Wright’s design guides an entirely unique and expressive journey through the history of 20th and 21st century art. First opened to the public in 1959 and declared a National Historic Landmark in 2008, Wright’s iconic white masterpiece is one of Manhattan’s most photogenic design feats.'),
(48, 67, 'en', 'Storm King Art Center', 'Storm King Art Center, one of the world’s largest and most renowned sculpture parks, features more than 100 sculptures spread across the center’s 500 acres of rolling hills, native fields, and woodlands. Several miles of walking trails allow visitors easy access to the exhibitions, which range in size from monumental to so tiny they could be easily overlooked. Rental bicycles are also available, along with frequent trams, plus plenty of picnic tables, a café, and museum, along with regular special exhibitionsand events. Storm King Art Center is a convenient drive from New York City, with packages and deals available from Coach USA and Zipcar. Alternatively, the center is a quick cab ride away from the Salisbury Mills station on Metro-North’s Port Jervis line. Expect a fee to enter the park.'),
(49, 68, 'en', 'Brooklyn Botanic Garden', 'Greenhouses house bonsais, orchids, and desert plants, and outdoor spaces range from a Shakespeare garden to a Japanese-style lily pond.'),
(50, 69, 'en', 'Made Hotel', 'It’s good vibes, personified. To start, the lobby is bright and airy with a heavy dose of organic decor. Plants are everywhere, and there’s lots of wood, shibori, and patterned throw pillows, plus a coffee bar right when you enter. It’s all warm and welcoming—the smell of freshly ground coffee beans and pour overs in progress is a lovely way to be greeted at any time of day—but in the morning, it’s really buzzing, with cute locals and travelers in need of caffeine. The rest of the lobby is more of a comfortable place to hang out during the day, where you can do a little work or meet a friend; at night is when the bar really gets going.'),
(51, 70, 'en', 'Sister City', 'This is the first of what may become a global chain of affordable urban hotels from urban hotel titans, Ace and their design firm, Atelier Ace. Things here are pared back, even for Ace standards. But the designers had some fun with all the common areas, like rooftop bars and lobby courtyards.'),
(52, 71, 'en', 'Soho House New York', 'Those already familiar with Soho House will feel instantly at home here, where a few of the company’s signature design elements are in place, like distressed wood floors and beamed ceilings, velvet chairs and sofas, exposed brick, and flattering lighting. As befits a members’ club, it feels intimate, though not exclusive (the hotel portion is open to anyone).'),
(53, 72, 'en', 'Ace Hotel New York', 'This boutique hotel is located in the center of Manhattan, only a 10-minute walk to Madison Square Garden. The hotel features two on-site restaurants, free Wi-Fi and a 24-hour front desk. Each unique guest room at the Hotel Ace is individually designed and features modern amenities including flat-screen TVs and an iPod dock. A fully stocked mini-bar and a refrigerator are also offered. Located inside a historic building, the Ace Hotel offers a unique style developed by local artists and designers. Guests at the hotel can eat at the Breslin Restaurant. Enjoy gourmet coffee from Stumptown Coffee Roasters Cafe and live music in the hotel lobby.'),
(54, 73, 'en', 'Lucali', 'It’s all about timing, so they say (“they” being folk who’ve tried, and failed, to get a table) when it comes to Lucali, an unassuming-looking pizzeria in Cobble Hill that can command two-hour waits. Inside a former candy store, the softly lit restaurant has weathered walls, mismatched wooden chairs, and a touch of old-timey decor (vintage cash register, boxing gloves). The crew’s open, rustic kitchen is in plain view, so the whole restaurant can watch pies twirl and rise from the oven.'),
(55, 74, 'en', 'Glady’s', 'Let’s clear something up: Glady’s is a restaurant, not a bar, but with beverage director Shannon Mustipher in charge, the drinks are just as much a draw to this Crown Heights Caribbean restaurant as the food.'),
(56, 75, 'en', 'TAK Room', 'This spring, Keller wrote on Instagram: “We’re calling it fun dining, not fine dining.” So, while TAK Room may be less tight laced than his flagship New York restaurant Per Se, there’s still a very high level of decadence here—and it comes with a hefty price tag and a matching clientele.'),
(57, 76, 'en', 'Locanda Verde', 'Excellent, unique cocktails are on the menu here, including the Alpino, a tequila gimlet punched up with lime and two different herbal liqueurs. Otherwise, you can’t go wrong with a bottle of Santa Lucia Franciacorta Rosé on a warm day.'),
(58, 77, 'en', 'Pasquale Jones', 'An antidote to the rustic Italian dining rooms all over the city, Nolita’s Pasquale Jones is all modern clean lines and right angles. You might expect it to feel a bit cold, but it’s not—it’s a comfortable, light-filled, warm space.'),
(59, 78, 'en', 'Picasso Museum', 'A museum spread over five palaces—we’d expect nothing less for Picasso, who moved to Barcelona as a 14-year-old boy and made frequent trips back throughout his life. Downstairs, a courtyard and Gothic archways lead into white studios that illuminate his works. Upstairs, the rooms are lavish: epic painted ceilings that almost drip crystal chandeliers. Visitors flock here to see Picasso’s work, but the special setting is why they come back again and again.'),
(60, 79, 'en', 'Cathedral of Barcelona', 'The Cathedral of the Holy Cross and Saint Eulalia, also known as Barcelona Cathedral, is the Gothic cathedral and seat of the Archbishop of Barcelona, Catalonia, Spain. The cathedral was constructed from the thirteenth to fifteenth centuries, with the principal work done in the fourteenth century.\r\n\r\nBook your required pass and board the hop-on hop-off double-decker bus at any of the East or West Route stops. Your ticket is valid for your selected time period from its first use. Buses arrive approximately every seven to 15 minutes.'),
(61, 80, 'en', 'FC Barcelona Museum', 'Anyone who knows just how popular Barcelona’s football club – FC Barcelona – are in the city and in the world will not be surprised that they have their very own museum right at the heart of the club’s home: the Camp Nou stadium. First inaugurated in 1984, the museum has been refurbished throughout the years to keep up to date with the club’s ongoing success. The museum attracts over 1.2 million visitors a year, making it the second most popular museum in the city. Browse through old photos of the players or admire some of their most impressive trophies as part of the popular ‘Camp Nou Experience’. FC Barcelona Museum, C. Aristides Maillol, Barcelona'),
(62, 81, 'en', 'La Sagrada Família', 'If you have time for only one sightseeing outing, this should be it. La Sagrada Família inspires awe by its sheer verticality, and in the manner of the medieval cathedrals it emulates, it’s still under construction. Work began in 1882 and is hoped (perhaps optimistically) to be completed in 2026, a century after the architect’s death. Unfinished it may be, but it attracts more than 4.5 million visitors a year and is the most visited monument in Spain.\r\n\r\nPope Benedict XVI consecrated the church as a minor basilica in a huge ceremony in November 2010.\r\n\r\nThe Temple Expiatori de la Sagrada Família (Expiatory Temple of the Holy Family) was Antoni Gaudí’s all-consuming obsession. Given the commission by a conservative society that wished to build a temple as atonement for the city’s sins of modernity, Gaudí saw its completion as his holy mission. As funds dried up, he contributed his own, and in the last years of his life he was never shy of pleading with anyone he thought a likely donor.\r\n\r\nGaudí devised a temple 95m long and 60m wide, able to seat 13,000 people, with a central tower 170m high above the transept (representing Christ) and another 17 of 100m or more. The 12 along the three facades represent the Apostles, while the remaining five represent the Virgin Mary and the four evangelists. With his characteristic dislike for straight lines (there were none in nature, he said), Gaudí gave his towers swelling outlines inspired by the weird peaks of the holy mountain Montserrat outside Barcelona, and encrusted them with a tangle of sculpture that seems an outgrowth of the stone.'),
(63, 82, 'en', 'Magic Fountain of Montjuïc', 'The magic fountain of Montjuïc’s (Font màgica de Montjuïc in Catalan) first performance was on May 19, 1929 during the Great Universal Exhibition. The designer Carles Buigas submitted his plans one year before the exhibition and many thought that the project was too ambitious to be created, let alone completed on time.'),
(64, 83, 'en', 'Benzina', 'A huge photograph of a car in flames, tables where no two sets of seats is the same, metallic air-conditioning pipes that snake along the ceiling, a hot-red hat stand: Set in a former mechanic’s garage, Benzina is clearly no ordinary Italian restaurant. There are also tunes—vinyl rock (The Stones, Creedence Clearwater Revival) that’s hard not to sing along to, even with a mouth stuffed with pasta—plus cocktails served to start, to finish, or, heck, whenever you want them.'),
(65, 84, 'en', 'La Alcoba Azul', 'La Alcoba Azul is hidden in the small streets of the Gothic Quarter. The atmosphere in La Alcoba Azul is great: the bar is completely decorated in the medieval style. There is a wooden floor, the walls are very old and there are chandeliers with candles hanging throughout the whole place. On top of that, they have great music, serve original tapas, and have great house wines and mojitos.'),
(66, 85, 'en', 'Bar La Plata', 'Bar La Plata is one of those tiny, authentic Spanish bars. The place opened in 1945, serving just four dishes, and they still serve the same plates today. Their specialties are: fried fish, pieces of tomato bread with anchovies, a typical Catalan sausage, butifarra, and a salad of tomato, onion and olives. These classic recipes are simple, but are made in a great way. It is one of the oldest tapas bars in Barcelona, where you can feel like a local for a while.'),
(67, 86, 'en', 'Antic Theatre', 'Not quite a speakeasy bar, Antic Theatre is just the kind of place that doesn’t bother advertising itself because it doesn’t really want anyone else knowing it’s there. Content with the full-house it racks up every weekend and most evenings, the venue is a theater as well as a bar with an open air courtyard located just by the Palau de la Música. You could easily walk past it as there’s no sign on the street telling you where it is and the stairs at the entrance occult the beautiful outdoors space nestled between old stone houses. Attracting a young, indie crowd, this is an endlessly laid-back hang-out which doesn’t need to try hard to be cool.'),
(68, 87, 'en', 'El Paradiso', 'If the speakeasy concept is hot in Barcelona at the moment it’s all thanks to this recent newcomer that has got everyone talking. A trendy cocktail bar with a drinks list designed by award-winning barman Giacomo Giannotti , El Paradiso is accessed via an unassuming sandwich place. Known as the Pastrami Bar, the food joint is located just across from the Estació de Francia in El Born and is the latest project of Barcelona based foodie, the Rooftop Smokehouse, famous for their mouthwateringly delicious smoked meats. Ask kindly behind the counter and you’ll get a nod when you can get in the back.'),
(69, 88, 'en', 'Cotton House Hotel', 'Cotton House Hotel is set in a historic building that dates back to the 19th century, and was first built as a private palace before being converted into the headquarters of the Cotton Textile Foundation. Once a meeting point for the leaders of the city’s prosperous textile industry, the building has been magnificently restored by Barcelona’s most famous interior designer, Lázaro Rosa-Violán, who is best known for his ability to blend historic detail and modern design in perfect harmony. Cotton House Hotel might just be his best work to date.'),
(70, 89, 'en', 'The Serras Hotel', 'A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door.'),
(71, 90, 'en', 'Majestic Hotel', 'A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door. A beautifully restored modernist façade opens into a lobby full of warm colors and soft fabrics. Feel right at home from the moment you walk in the door.'),
(72, 91, 'en', 'Hotel Arts Barcelona', 'Huge floral displays, warm fabrics, and beautiful people. The lobby of Hotel Arts has “five-star hotel” written all over it. Guests can work up a sweat in the fitness centre free of charge or take a cool swim in the outdoor pool at a fee. The hotel also features a karaoke room, convenience store and business centre. Guests can work up a sweat in the fitness centre free of charge or take a cool swim in the outdoor pool at a fee. The hotel also features a karaoke room, convenience store and business centre.'),
(73, 92, 'en', 'Sir Victor Hotel', 'When you’re neighbors with La Pedrera, one of Gaudí’s most surreal feats of stone craft, there’s a tiny problem: How on earth do you get noticed? The building that houses Sir Victor went modern, and its façade—with architect Capella Garcia’s white balconies that curve out like the open pages of a book—has become Barcelona-famous in its own right. Below, the reception is minimal and sceney; a marble pool table hangs out with midnight-blue velvet chairs and enough intentionally positioned art books to let you know that you’re in a Design Hotel.fff');

-- --------------------------------------------------------

--
-- Структура таблицы `place_types`
--

CREATE TABLE `place_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `place_types`
--

INSERT INTO `place_types` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(25, 12, 'Restaurant', '2019-10-25 11:17:39', '2019-10-25 11:17:39'),
(26, 12, 'Coffee Shop', '2019-10-25 11:17:50', '2019-10-25 11:17:50'),
(27, 11, 'Activity', '2019-11-04 16:39:38', '2019-11-04 16:39:38'),
(28, 11, 'Museum', '2019-11-04 16:39:53', '2019-11-04 16:39:53'),
(29, 11, 'Temple', '2019-11-04 16:40:09', '2019-11-04 16:40:09'),
(30, 11, 'Culture', '2019-11-04 16:40:25', '2019-11-04 16:40:25'),
(31, 11, 'Park', '2019-11-04 16:40:39', '2019-11-04 16:40:39'),
(32, 11, 'Market', '2019-11-04 16:40:54', '2019-11-04 16:40:54'),
(33, 13, 'Hostel', '2019-11-04 16:41:13', '2019-11-04 16:41:13'),
(34, 13, 'Hotel', '2019-11-04 16:41:22', '2019-11-04 16:41:22'),
(35, 13, 'Luxury', '2019-11-04 16:41:33', '2019-11-04 16:41:33'),
(36, 13, 'Apartment', '2019-11-04 16:42:03', '2019-11-04 16:42:03'),
(37, 12, 'Bars', '2019-11-04 16:42:21', '2019-11-04 16:42:21'),
(38, 12, 'Bakeries', '2019-11-04 16:42:39', '2019-11-04 16:42:39'),
(39, 11, 'Sight', '2019-12-01 03:38:03', '2019-12-01 03:38:03');

-- --------------------------------------------------------

--
-- Структура таблицы `place_type_translations`
--

CREATE TABLE `place_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_type_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `place_type_translations`
--

INSERT INTO `place_type_translations` (`id`, `place_type_id`, `locale`, `name`) VALUES
(1, 25, 'en', 'Restaurant'),
(2, 26, 'en', 'Coffee Shop'),
(3, 27, 'en', 'Activity'),
(4, 28, 'en', 'Museum'),
(5, 29, 'en', 'Temple'),
(6, 30, 'en', 'Culture'),
(7, 31, 'en', 'Park'),
(8, 32, 'en', 'Market'),
(9, 33, 'en', 'Hostel'),
(10, 34, 'en', 'Hotel'),
(11, 35, 'en', 'Luxury'),
(12, 36, 'en', 'Apartment'),
(13, 37, 'en', 'Bars'),
(14, 38, 'en', 'Bakeries'),
(15, 39, 'en', 'Sight'),
(16, 39, 'fr', 'Vue'),
(17, 38, 'fr', 'Boulangeries'),
(18, 36, 'fr', 'Appartement'),
(19, 31, 'fr', 'Parc'),
(20, 28, 'fr', 'Musée');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category`, `title`, `slug`, `content`, `thumb`, `type`, `status`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(8, 8, '[\"16\"]', '3 Reasons to Get Out of Town Right Now', '3-reasons-to-get-out-of-town-right-now', '<!-- wp:paragraph -->\r\n<p>Suddenly: It’s September. Cooler nights, new sweaters, school. When summer left us, it took with it the plans for long, luxurious trips abroad. In their place? The speedy weekend escape. We started daydreaming about mini trips the moment the clock struck midnight on Labor Day. But before we get ahead of ourselves, we’re setting a few ground rules. One: The journey needs to be less than five hours by plane, train, or car. Two: Out-of-this-world food, an injection of culture, and pillows like you read about are all priorities. And three: The destination must be as easy to manage as the clothes we plan on packing.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p><strong>WHAT TO EXPECT:</strong></p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p>The dry terrain of the part of the Mojave Desert known as Joshua Tree feels almost Martian in its cool, creepy, album-cover starkness. This strikingly austere landscape is only a two-hour (-ish) ride from Los Angeles, making it a tempting respite. Sure, nearby Palm Springs has no shortage of cute boutique hotels if you like someone making your bed every day, but the area surrounding the Joshua Tree National Park is a rental-house gold mine. One of the best gems in the gold mine (to mix a metaphor) is Casa Mami. Each item—local ceramics, fragrant soaps, Marcel Wanders–designed sofas—within the chicly spartan home is a clear marker that the owners are very thoughtful about design. (And it’s all shoppable!) In the evening, stop by throwback bar Pappy &amp; Harriet’s for a beer and seriously good live music before drifting home to stargaze from the porch.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p><strong>DON’T MISS:</strong></p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p>Jump out of bed early, pack a few snacks, chug more water than you’ve ever chugged before, and head to the park to meet the sun. Watching the morning light splinter across prehistoric-looking rock formations and fill the flat plains of yucca trees is the reason you’re here. Spend an hour or two wandering and appreciating the silence before the unbearable heat kicks you out. That much beauty tends to build an appetite, so head to the insanely popular La Copinefor a reviving lunch. The best way to transition to the afternoon: buttermilk-marinated blackened chicken thighs, cheesy grits, and sharp, vinegary Bibb lettuce salad, followed by zesty lime panna cotta and a round of espresso. Before leaving, book a sound bath at the Integratron. Roll your eyes if you must, but tapping into the sound vibrations and general desert magic feels transformative. While you are lying flat, your chest, ears, brain, and heart all charge to the sweet noise of the crystal bowls—it’s like a million hours of sleep packed into one hour. Trust.</p>\r\n<!-- /wp:paragraph -->', '5dde3b72c5f8e_1574845298.jpg', 'blog', 1, NULL, NULL, '2019-11-27 09:01:38', '2020-01-11 06:57:10'),
(9, 8, '[\"17\"]', 'Bucket-List Skiing - for Every Level', 'bucket-list-skiing-for-every-level', '<!-- wp:paragraph -->\r\n<p>No crowds, no lines. No vista dotted with chairlift towers and snow plowers. Just the whip of wind that’s requisite at 10,000 feet and a survey below of 1,000 glistening acres of powder—a mix of chutes, tight tree runs, and open bowls, most directly on the fall line. Which means that when you point your skis down, you don’t need to fight the hill to stay straight. When you tighten your boot buckles, strap on your skis, and go, you want to go without stopping, if only because when you stand at the bottom of the run and look up at the path you’ve cut above, it’s likely one of the only times in your life you’ll see your tracks intact, completely undisturbed by other skiers. Such is the life of a cat skier.</p>\r\n<!-- /wp:paragraph -->\r\n<p> </p>\r\n<!-- wp:paragraph -->\r\n<p>I was a competitive mogul skier growing up—during the season, I spent three days a week on the mountain (my hippie school went to the ski area every Wednesday afternoon in the winter), as well as my entire Christmas break. The sport was, more or less, my life, with ski camps in the summer, dryland training, and thinking about skiing all fall, including watching all the requisite Warren Miller movies to get extra psyched up. When I wasn’t training with my team, I would ski by myself or with a gang of guy friends or, if the chair gods aligned, with my dad. Every winter, my dad would go up north to the Selkirk Mountains in Canada for a week of cat skiing with his friends. He promised that when I was a verified adult—i.e., old enough to appreciate the experience and never forget it—he would take me with him. But as luck would have it, he took a wrong turn up there, went off a small cliff, and set off an avalanche. He had to be long-lined out by helicopter without his skis—that was the end of his cat skiing career.</p>\r\n<!-- /wp:paragraph -->\r\n<p> </p>\r\n<!-- wp:gallery {\"ids\":[1792,1793,1794]} -->\r\n<figure class=\"wp-block-gallery columns-3 is-cropped\">\r\n<ul class=\"blocks-gallery-grid\">\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1792\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/colorado-ski-11@2x-1024x614.png\" alt=\"\" data-id=\"1792\" data-link=\"https://wp.getgolo.com/?attachment_id=1792\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1793\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/srl-9@2x.png\" alt=\"\" data-id=\"1793\" data-link=\"https://wp.getgolo.com/?attachment_id=1793\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1794\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1544957992-20514f595d6f-1024x683.jpeg\" alt=\"\" data-id=\"1794\" data-link=\"https://wp.getgolo.com/?attachment_id=1794\" /></figure>\r\n</li>\r\n</ul>\r\n</figure>\r\n<!-- /wp:gallery -->', '5dde3ba7a37dd_1574845351.png', 'blog', 1, NULL, NULL, '2019-11-27 09:02:31', '2019-11-27 09:02:31'),
(10, 8, NULL, 'About Us', 'about-us', '<div class=\"company-info flex-inline\"><img src=\"https://lara.getgolo.com/assets/images/about-02.jpg\" alt=\"Our Company\" />\r\n<div class=\"ci-content\">Our Company\r\n<h2>Mission statement</h2>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n</div>\r\n</div>\r\n<!-- .company-info -->\r\n<div class=\"our-team\">\r\n<div class=\"container\">\r\n<h2 class=\"title align-center\">Meet Our Team</h2>\r\n</div>\r\n<div class=\"ot-content grid grid-4\">\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-1.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Jaspreet Bhamrai</h3>\r\n<span class=\"job\">Co - founder</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-2.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Justine Robinson</h3>\r\n<span class=\"job\">Marketing Guru</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-3.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Jeremías Romero</h3>\r\n<span class=\"job\">Designer</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-4.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Rutherford Brannan</h3>\r\n<span class=\"job\">Mobile developer</span></div>\r\n</div>\r\n</div>\r\n<!-- .ot-content --></div>\r\n<!-- .our-team -->\r\n<div class=\"join-team align-center\">\r\n<div class=\"container\">\r\n<h2 class=\"title\">Join our team</h2>\r\n<div class=\"jt-content\">\r\n<p>We’re always looking for talented individuals and <br />people who are hungry to do great work.</p>\r\n<a class=\"btn\" title=\"View openings\" href=\"#\">View openings</a></div>\r\n</div>\r\n</div>\r\n<!-- .join-team -->', '5df473fb078bd_1576301563.jpg', 'page', 1, NULL, NULL, '2019-11-27 09:04:37', '2019-12-14 05:32:43'),
(11, 8, NULL, 'Faqs', 'faqs', '<h2 class=\"title align-center\">How may we be of help?</h2>\r\n<ul class=\"accordion first-open\">\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">What is Golo Theme?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">Why should I save on Schoolable?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How secure is my money?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How much can I save on Golo?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How many saving plans can I create?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n</ul>', NULL, 'page', 1, NULL, NULL, '2019-12-21 07:49:42', '2019-12-21 07:49:42'),
(12, 8, '[\"19\"]', 'The New Nomads Are Here', 'the-new-nomads-are-here', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '5e197197a564c_1578725783.jpg', 'blog', 1, NULL, NULL, '2020-01-11 06:56:23', '2020-01-11 06:56:23'),
(13, 8, '[\"17\"]', 'My Story When I Backpacked Around The World', 'my-story-when-i-backpacked-around-the-world', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. In erat mi, tincidunt a congue at, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, at convallis diam hendrerit.</p>\r\n<h2>Cras laoreet dolor sit amet</h2>\r\n<p>In magna tortor, facilisis vel finibus quis, placerat eget lacus. Mauris iaculis diam augue, non fringilla libero tincidunt a. In quis felis finibus, ultricies eros ut, tincidunt tortor. Etiam non semper dolor, eget iaculis mauris. Nulla quis purus gravida urna maximus tincidunt vulputate interdum massa. Quisque tellus est, ultricies nec lorem eget, sagittis tincidunt ipsum. Cras laoreet a ligula non laoreet. Vestibulum elementum quam lacinia sapien semper interdum.</p>\r\n<blockquote class=\"wp-block-quote\">\r\n<p><em>Nullam facilisis ipsum nec eros vestibulum sollicitudin. Maecenas sed odio a lorem scelerisque consectetur. Aliquam accumsan dui elit, in vulputate nisl aliquam non. Donec iaculis mauris nulla, eleifend auctor nisi commodo eget.</em></p>\r\n<cite> Famous Thinker</cite></blockquote>\r\n<blockquote class=\"wp-block-quote\"><cite>Donec nec convallis ligula, eu bibendum lorem. Etiam et molestie ex. Mauris placerat libero sed ipsum efficitur elementum. Vivamus sapien sem, lacinia vitae tortor quis, egestas cursus magna. Phasellus consequat nibh lorem, ac egestas justo commodo et. Quisque ac ligula semper, maximus sem rutrum, placerat velit. Aenean dignissim suscipit enim, quis posuere nulla sodales nec. Sed vitae felis a leo faucibus congue in vel ex.</cite></blockquote>', '5e19722ddd48c_1578725933.jpeg', 'blog', 1, 'My Story When I Backpacked Around The World', NULL, '2020-01-11 06:58:53', '2020-04-01 16:17:20'),
(14, 8, '[\"18\"]', 'Where to Eat in Paris: A Complete Guide', 'where-to-eat-in-paris-a-complete-guide', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. In erat mi, tincidunt a congue at, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, at convallis diam hendrerit.</p>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-178\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-1024x683.jpeg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-1024x683.jpeg 1024w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-600x400.jpeg 600w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-300x200.jpeg 300w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-768x512.jpeg 768w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897.jpeg 1650w\" alt=\"\" /></figure>\r\n<h2>Cras laoreet dolor sit amet</h2>\r\n<p>In magna tortor, facilisis vel finibus quis, placerat eget lacus. Mauris iaculis diam augue, non fringilla libero tincidunt a. In quis felis finibus, ultricies eros ut, tincidunt tortor. Etiam non semper dolor, eget iaculis mauris. Nulla quis purus gravida urna maximus tincidunt vulputate interdum massa. Quisque tellus est, ultricies nec lorem eget, sagittis tincidunt ipsum. Cras laoreet a ligula non laoreet. Vestibulum elementum quam lacinia sapien semper interdum.</p>', '5e1972bbdb3f7_1578726075.jpeg', 'blog', 1, 'Where to Eat in Paris: A Complete Guide', NULL, '2020-01-11 07:01:15', '2020-04-01 16:16:36'),
(15, 8, '[\"17\"]', 'Wonderings: are the stars our destination?', 'wonderings-are-the-stars-our-destination', '<p>Aside from a few forays to France, the furthest my maternal grandparents travelled was Pembrokeshire, Wales (repeat visits to a wind-buffeted static caravan in Croes-goch, if you must know). Just a generation later, my parents&rsquo; peregrinations had encompassed most of Western Europe.</p>\r\n<p><img src=\"/storage/photos/8/photo-1495562569060-2eec283d3391.jpeg\" alt=\"\" /></p>\r\n<p>As of writing, I&rsquo;ve visited about 50 countries (I counted them up once, but have forgotten the total), most of them during two spells of backpacking &ndash; first across the US, then around the world &ndash; plus others as and when the opportunity arose.</p>\r\n<p>My wife has been to twice that number of destinations, and I&rsquo;d wager that a significant proportion of the people who comprise Lonely Planet&rsquo;s extended community &ndash; staff and contributors, followers and fans &ndash; have led equally footloose lives.</p>\r\n<p>The trend continues, too: my son, four, and daughter, one, have already visited many more places than my grandparents did in their entire lives. In fact, Harvey probably covered more miles&nbsp;<em>in utero</em>&nbsp;than they managed in total.</p>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-120\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-1024x656.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-1024x656.jpg 1024w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-600x384.jpg 600w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-300x192.jpg 300w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-768x492.jpg 768w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama.jpg 2048w\" alt=\"\" />\r\n<figcaption>Caption of Image</figcaption>\r\n</figure>\r\n<h4>Our expanding horizons</h4>\r\n<p>You can visualise each generation&rsquo;s expanding horizons as a series of concentric circles, like ripples spreading out from a stone dropped in a pond; assuming that trend doesn&rsquo;t go into reverse (which is possible, of course, given variables like climate change), where will the edge of my children&rsquo;s known universe lie? Just as I have explored the far side of this planet, might they explore the far side of another world?</p>\r\n<p>It&rsquo;s not as far-fetched as it sounds. As it often does, the stuff of science fiction has become the stuff of science fact: the race for space is more competitive now than it has been at any time since Neil Armstrong took that famous first step on the surface of the Moon, an epoch-defining moment that happened 50 years ago this July.</p>', '5e197354487ab_1578726228.jpeg', 'blog', 1, 'Merveilles: les stars sont-elles notre destination?', NULL, '2020-01-11 07:03:48', '2020-04-01 16:15:22');

-- --------------------------------------------------------

--
-- Структура таблицы `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `locale`, `title`, `content`) VALUES
(1, 8, 'en', '3 Reasons to Get Out of Town Right Now', '<!-- wp:paragraph -->\r\n<p>Suddenly: It’s September. Cooler nights, new sweaters, school. When summer left us, it took with it the plans for long, luxurious trips abroad. In their place? The speedy weekend escape. We started daydreaming about mini trips the moment the clock struck midnight on Labor Day. But before we get ahead of ourselves, we’re setting a few ground rules. One: The journey needs to be less than five hours by plane, train, or car. Two: Out-of-this-world food, an injection of culture, and pillows like you read about are all priorities. And three: The destination must be as easy to manage as the clothes we plan on packing.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p><strong>WHAT TO EXPECT:</strong></p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p>The dry terrain of the part of the Mojave Desert known as Joshua Tree feels almost Martian in its cool, creepy, album-cover starkness. This strikingly austere landscape is only a two-hour (-ish) ride from Los Angeles, making it a tempting respite. Sure, nearby Palm Springs has no shortage of cute boutique hotels if you like someone making your bed every day, but the area surrounding the Joshua Tree National Park is a rental-house gold mine. One of the best gems in the gold mine (to mix a metaphor) is Casa Mami. Each item—local ceramics, fragrant soaps, Marcel Wanders–designed sofas—within the chicly spartan home is a clear marker that the owners are very thoughtful about design. (And it’s all shoppable!) In the evening, stop by throwback bar Pappy &amp; Harriet’s for a beer and seriously good live music before drifting home to stargaze from the porch.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p><strong>DON’T MISS:</strong></p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph -->\r\n<p>Jump out of bed early, pack a few snacks, chug more water than you’ve ever chugged before, and head to the park to meet the sun. Watching the morning light splinter across prehistoric-looking rock formations and fill the flat plains of yucca trees is the reason you’re here. Spend an hour or two wandering and appreciating the silence before the unbearable heat kicks you out. That much beauty tends to build an appetite, so head to the insanely popular La Copinefor a reviving lunch. The best way to transition to the afternoon: buttermilk-marinated blackened chicken thighs, cheesy grits, and sharp, vinegary Bibb lettuce salad, followed by zesty lime panna cotta and a round of espresso. Before leaving, book a sound bath at the Integratron. Roll your eyes if you must, but tapping into the sound vibrations and general desert magic feels transformative. While you are lying flat, your chest, ears, brain, and heart all charge to the sweet noise of the crystal bowls—it’s like a million hours of sleep packed into one hour. Trust.</p>\r\n<!-- /wp:paragraph -->'),
(2, 9, 'en', 'Bucket-List Skiing - for Every Level', '<!-- wp:paragraph -->\r\n<p>No crowds, no lines. No vista dotted with chairlift towers and snow plowers. Just the whip of wind that’s requisite at 10,000 feet and a survey below of 1,000 glistening acres of powder—a mix of chutes, tight tree runs, and open bowls, most directly on the fall line. Which means that when you point your skis down, you don’t need to fight the hill to stay straight. When you tighten your boot buckles, strap on your skis, and go, you want to go without stopping, if only because when you stand at the bottom of the run and look up at the path you’ve cut above, it’s likely one of the only times in your life you’ll see your tracks intact, completely undisturbed by other skiers. Such is the life of a cat skier.</p>\r\n<!-- /wp:paragraph -->\r\n<p> </p>\r\n<!-- wp:paragraph -->\r\n<p>I was a competitive mogul skier growing up—during the season, I spent three days a week on the mountain (my hippie school went to the ski area every Wednesday afternoon in the winter), as well as my entire Christmas break. The sport was, more or less, my life, with ski camps in the summer, dryland training, and thinking about skiing all fall, including watching all the requisite Warren Miller movies to get extra psyched up. When I wasn’t training with my team, I would ski by myself or with a gang of guy friends or, if the chair gods aligned, with my dad. Every winter, my dad would go up north to the Selkirk Mountains in Canada for a week of cat skiing with his friends. He promised that when I was a verified adult—i.e., old enough to appreciate the experience and never forget it—he would take me with him. But as luck would have it, he took a wrong turn up there, went off a small cliff, and set off an avalanche. He had to be long-lined out by helicopter without his skis—that was the end of his cat skiing career.</p>\r\n<!-- /wp:paragraph -->\r\n<p> </p>\r\n<!-- wp:gallery {\"ids\":[1792,1793,1794]} -->\r\n<figure class=\"wp-block-gallery columns-3 is-cropped\">\r\n<ul class=\"blocks-gallery-grid\">\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1792\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/colorado-ski-11@2x-1024x614.png\" alt=\"\" data-id=\"1792\" data-link=\"https://wp.getgolo.com/?attachment_id=1792\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1793\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/srl-9@2x.png\" alt=\"\" data-id=\"1793\" data-link=\"https://wp.getgolo.com/?attachment_id=1793\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\">\r\n<figure><img class=\"wp-image-1794\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1544957992-20514f595d6f-1024x683.jpeg\" alt=\"\" data-id=\"1794\" data-link=\"https://wp.getgolo.com/?attachment_id=1794\" /></figure>\r\n</li>\r\n</ul>\r\n</figure>\r\n<!-- /wp:gallery -->'),
(3, 10, 'en', 'About Us', '<div class=\"company-info flex-inline\"><img src=\"https://lara.getgolo.com/assets/images/about-02.jpg\" alt=\"Our Company\" />\r\n<div class=\"ci-content\">Our Company\r\n<h2>Mission statement</h2>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n</div>\r\n</div>\r\n<!-- .company-info -->\r\n<div class=\"our-team\">\r\n<div class=\"container\">\r\n<h2 class=\"title align-center\">Meet Our Team</h2>\r\n</div>\r\n<div class=\"ot-content grid grid-4\">\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-1.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Jaspreet Bhamrai</h3>\r\n<span class=\"job\">Co - founder</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-2.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Justine Robinson</h3>\r\n<span class=\"job\">Marketing Guru</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-3.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Jeremías Romero</h3>\r\n<span class=\"job\">Designer</span></div>\r\n</div>\r\n<div class=\"grid-item ot-item hover__box\">\r\n<div class=\"hover__box__thumb\"><img src=\"https://lara.getgolo.com/assets/images/people-4.jpg\" alt=\"\" /></div>\r\n<div class=\"ot-info\">\r\n<h3>Rutherford Brannan</h3>\r\n<span class=\"job\">Mobile developer</span></div>\r\n</div>\r\n</div>\r\n<!-- .ot-content --></div>\r\n<!-- .our-team -->\r\n<div class=\"join-team align-center\">\r\n<div class=\"container\">\r\n<h2 class=\"title\">Join our team</h2>\r\n<div class=\"jt-content\">\r\n<p>We’re always looking for talented individuals and <br />people who are hungry to do great work.</p>\r\n<a class=\"btn\" title=\"View openings\" href=\"#\">View openings</a></div>\r\n</div>\r\n</div>\r\n<!-- .join-team -->'),
(4, 11, 'en', 'Faqs', '<h2 class=\"title align-center\">How may we be of help?</h2>\r\n<ul class=\"accordion first-open\">\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">What is Golo Theme?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">Why should I save on Schoolable?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How secure is my money?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How much can I save on Golo?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n<li>\r\n<h3 class=\"accordion-title\"><a href=\"#\">How many saving plans can I create?</a></h3>\r\n<div class=\"accordion-content\">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\r\n</div>\r\n</li>\r\n</ul>'),
(5, 12, 'en', 'The New Nomads Are Here', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>'),
(6, 13, 'en', 'My Story When I Backpacked Around The World', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. In erat mi, tincidunt a congue at, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, at convallis diam hendrerit.</p>\r\n<h2>Cras laoreet dolor sit amet</h2>\r\n<p>In magna tortor, facilisis vel finibus quis, placerat eget lacus. Mauris iaculis diam augue, non fringilla libero tincidunt a. In quis felis finibus, ultricies eros ut, tincidunt tortor. Etiam non semper dolor, eget iaculis mauris. Nulla quis purus gravida urna maximus tincidunt vulputate interdum massa. Quisque tellus est, ultricies nec lorem eget, sagittis tincidunt ipsum. Cras laoreet a ligula non laoreet. Vestibulum elementum quam lacinia sapien semper interdum.</p>\r\n<blockquote class=\"wp-block-quote\">\r\n<p><em>Nullam facilisis ipsum nec eros vestibulum sollicitudin. Maecenas sed odio a lorem scelerisque consectetur. Aliquam accumsan dui elit, in vulputate nisl aliquam non. Donec iaculis mauris nulla, eleifend auctor nisi commodo eget.</em></p>\r\n<cite>&nbsp;Famous Thinker</cite></blockquote>\r\n<blockquote class=\"wp-block-quote\"><cite>Donec nec convallis ligula, eu bibendum lorem. Etiam et molestie ex. Mauris placerat libero sed ipsum efficitur elementum. Vivamus sapien sem, lacinia vitae tortor quis, egestas cursus magna. Phasellus consequat nibh lorem, ac egestas justo commodo et. Quisque ac ligula semper, maximus sem rutrum, placerat velit. Aenean dignissim suscipit enim, quis posuere nulla sodales nec. Sed vitae felis a leo faucibus congue in vel ex.</cite></blockquote>'),
(7, 14, 'en', 'Where to Eat in Paris: A Complete Guide', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. In erat mi, tincidunt a congue at, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, at convallis diam hendrerit.</p>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-178\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-1024x683.jpeg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-1024x683.jpeg 1024w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-600x400.jpeg 600w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-300x200.jpeg 300w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897-768x512.jpeg 768w, https://wp.getgolo.com/wp-content/uploads/2019/10/photo-1567529692333-de9fd6772897.jpeg 1650w\" alt=\"\" /></figure>\r\n<h2>Cras laoreet dolor sit amet</h2>\r\n<p>In magna tortor, facilisis vel finibus quis, placerat eget lacus. Mauris iaculis diam augue, non fringilla libero tincidunt a. In quis felis finibus, ultricies eros ut, tincidunt tortor. Etiam non semper dolor, eget iaculis mauris. Nulla quis purus gravida urna maximus tincidunt vulputate interdum massa. Quisque tellus est, ultricies nec lorem eget, sagittis tincidunt ipsum. Cras laoreet a ligula non laoreet. Vestibulum elementum quam lacinia sapien semper interdum.</p>'),
(8, 15, 'en', 'Wonderings: are the stars our destination?', '<p>Aside from a few forays to France, the furthest my maternal grandparents travelled was Pembrokeshire, Wales (repeat visits to a wind-buffeted static caravan in Croes-goch, if you must know). Just a generation later, my parents&rsquo; peregrinations had encompassed most of Western Europe.</p>\r\n<p><img src=\"/storage/photos/8/photo-1495562569060-2eec283d3391.jpeg\" alt=\"\" /></p>\r\n<p>As of writing, I&rsquo;ve visited about 50 countries (I counted them up once, but have forgotten the total), most of them during two spells of backpacking &ndash; first across the US, then around the world &ndash; plus others as and when the opportunity arose.</p>\r\n<p>My wife has been to twice that number of destinations, and I&rsquo;d wager that a significant proportion of the people who comprise Lonely Planet&rsquo;s extended community &ndash; staff and contributors, followers and fans &ndash; have led equally footloose lives.</p>\r\n<p>The trend continues, too: my son, four, and daughter, one, have already visited many more places than my grandparents did in their entire lives. In fact, Harvey probably covered more miles&nbsp;<em>in utero</em>&nbsp;than they managed in total.</p>\r\n<figure class=\"wp-block-image\"><img class=\"wp-image-120\" src=\"https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-1024x656.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-1024x656.jpg 1024w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-600x384.jpg 600w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-300x192.jpg 300w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama-768x492.jpg 768w, https://wp.getgolo.com/wp-content/uploads/2019/10/the-16-copper-statues-which-fbfe-diaporama.jpg 2048w\" alt=\"\" />\r\n<figcaption>Caption of Image</figcaption>\r\n</figure>\r\n<h4>Our expanding horizons</h4>\r\n<p>You can visualise each generation&rsquo;s expanding horizons as a series of concentric circles, like ripples spreading out from a stone dropped in a pond; assuming that trend doesn&rsquo;t go into reverse (which is possible, of course, given variables like climate change), where will the edge of my children&rsquo;s known universe lie? Just as I have explored the far side of this planet, might they explore the far side of another world?</p>\r\n<p>It&rsquo;s not as far-fetched as it sounds. As it often does, the stuff of science fiction has become the stuff of science fact: the race for space is more competitive now than it has been at any time since Neil Armstrong took that famous first step on the surface of the Moon, an epoch-defining moment that happened 50 years ago this July.</p>'),
(9, 15, 'fr', 'Merveilles: les stars sont-elles notre destination?', '<p>Mis &agrave; part quelques incursions en France, mes grands-parents maternels les plus &eacute;loign&eacute;s ont voyag&eacute; &agrave; Pembrokeshire, au Pays de Galles (visites r&eacute;p&eacute;t&eacute;es dans une caravane statique sous le vent &agrave; Croes-goch, si vous devez savoir). Juste une g&eacute;n&eacute;ration plus tard, les p&eacute;r&eacute;grinations de mes parents avaient englob&eacute; la majeure partie de l\'Europe occidentale.</p>\r\n<p>Au moment de l\'&eacute;criture, j\'ai visit&eacute; environ 50 pays (je les ai compt&eacute;s une fois, mais j\'ai oubli&eacute; le total), la plupart d\'entre eux pendant deux p&eacute;riodes de randonn&eacute;e - d\'abord aux &Eacute;tats-Unis, puis dans le monde entier - ainsi que d\'autres au fur et &agrave; mesure que le l\'occasion s\'est pr&eacute;sent&eacute;e.</p>\r\n<p>Ma femme a visit&eacute; deux fois plus de destinations, et je parierais qu\'une proportion importante des personnes qui composent la communaut&eacute; &eacute;tendue de Lonely Planet - le personnel et les contributeurs, les adeptes et les fans - ont men&eacute; une vie tout aussi libre.</p>\r\n<p>La tendance se poursuit &eacute;galement: mon fils, quatre ans, et ma fille, un, ont d&eacute;j&agrave; visit&eacute; beaucoup plus d\'endroits que mes grands-parents dans leur vie enti&egrave;re. En fait, Harvey a probablement parcouru plus de kilom&egrave;tres in utero qu\'ils n\'en ont r&eacute;ussi au total.</p>\r\n<p>L&eacute;gende de l\'image<br />Nos horizons en expansion</p>\r\n<p>Vous pouvez visualiser les horizons en expansion de chaque g&eacute;n&eacute;ration comme une s&eacute;rie de cercles concentriques, comme des ondulations s\'&eacute;talant d\'une pierre tomb&eacute;e dans un &eacute;tang; en supposant que cette tendance ne s\'inverse pas (ce qui est possible, bien s&ucirc;r, compte tenu de variables telles que le changement climatique), o&ugrave; se situera le bord de l\'univers connu de mes enfants? Tout comme j\'ai explor&eacute; l\'autre c&ocirc;t&eacute; de cette plan&egrave;te, pourraient-ils explorer l\'autre c&ocirc;t&eacute; d\'un autre monde?</p>\r\n<p>Ce n\'est pas aussi farfelu qu\'il y para&icirc;t. Comme souvent, la science-fiction est devenue une r&eacute;alit&eacute; scientifique: la course &agrave; l\'espace est plus comp&eacute;titive maintenant qu\'elle ne l\'a jamais &eacute;t&eacute; depuis que Neil Armstrong a fait ce fameux premier pas &agrave; la surface de la Lune, une &eacute;poque -d&eacute;finissant moment qui s\'est produit il y a 50 ans en juillet.</p>'),
(10, 14, 'fr', 'Où manger à Paris: un guide complet', '<p>Lorem ipsum dolor sit amet, elect adipiscing consectetur. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. Dans erat mi, tincidunt un argument &agrave;, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, &agrave; convallis diam hendrerit.</p>'),
(11, 13, 'fr', 'Mon histoire quand j\'ai parcouru le monde en sac à dos', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio nulla. Donec sed eros ut erat finibus pharetra. Vivamus quis rhoncus felis, ut euismod dolor. Aliquam in ante eget leo cursus mattis vel non est. Vestibulum non purus elementum, placerat quam at, interdum lectus. In erat mi, tincidunt a congue at, pulvinar eu sapien. Etiam placerat efficitur arcu nec tincidunt.</p>\r\n<p>Nullam egestas risus risus. In ac maximus metus. Morbi fermentum justo quis varius dictum. Cras laoreet dolor sit amet arcu auctor, in consectetur lectus luctus. Pellentesque luctus est eget sapien luctus, at convallis diam hendrerit.</p>\r\n<h2>Cras laoreet dolor sit amet</h2>\r\n<p>In magna tortor, facilisis vel finibus quis, placerat eget lacus. Mauris iaculis diam augue, non fringilla libero tincidunt a. In quis felis finibus, ultricies eros ut, tincidunt tortor. Etiam non semper dolor, eget iaculis mauris. Nulla quis purus gravida urna maximus tincidunt vulputate interdum massa. Quisque tellus est, ultricies nec lorem eget, sagittis tincidunt ipsum. Cras laoreet a ligula non laoreet. Vestibulum elementum quam lacinia sapien semper interdum.</p>\r\n<blockquote class=\"wp-block-quote\">\r\n<p><em>Nullam facilisis ipsum nec eros vestibulum sollicitudin. Maecenas sed odio a lorem scelerisque consectetur. Aliquam accumsan dui elit, in vulputate nisl aliquam non. Donec iaculis mauris nulla, eleifend auctor nisi commodo eget.</em></p>\r\n<cite>&nbsp;Famous Thinker</cite></blockquote>\r\n<blockquote class=\"wp-block-quote\"><cite>Donec nec convallis ligula, eu bibendum lorem. Etiam et molestie ex. Mauris placerat libero sed ipsum efficitur elementum. Vivamus sapien sem, lacinia vitae tortor quis, egestas cursus magna. Phasellus consequat nibh lorem, ac egestas justo commodo et. Quisque ac ligula semper, maximus sem rutrum, placerat velit. Aenean dignissim suscipit enim, quis posuere nulla sodales nec. Sed vitae felis a leo faucibus congue in vel ex.</cite></blockquote>');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `place_id`, `score`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(5, 8, 23, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:36:33', '2019-12-17 11:47:25'),
(6, 8, 24, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:36:57', '2019-12-14 01:36:57'),
(7, 8, 22, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:38:09', '2019-12-14 01:38:09'),
(8, 8, 25, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:38:51', '2019-12-14 01:38:51'),
(9, 8, 34, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:41:51', '2019-12-14 01:41:51'),
(10, 8, 35, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:42:12', '2019-12-14 01:42:12'),
(11, 8, 36, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:42:30', '2019-12-14 01:42:30'),
(12, 8, 37, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:42:47', '2019-12-14 01:42:47'),
(13, 8, 38, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:43:02', '2019-12-14 01:43:02'),
(14, 8, 39, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:43:43', '2019-12-14 01:43:43'),
(15, 8, 40, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:44:43', '2019-12-14 01:44:43'),
(16, 8, 41, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-14 01:44:59', '2019-12-14 01:44:59'),
(17, 8, 21, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 10:59:30', '2019-12-14 10:59:30'),
(18, 8, 49, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:00:20', '2019-12-14 11:00:20'),
(19, 8, 50, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:00:29', '2019-12-14 11:00:29'),
(20, 8, 51, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:00:40', '2019-12-14 11:00:40'),
(21, 8, 52, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:00:52', '2019-12-14 11:00:52'),
(22, 8, 53, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:01:09', '2019-12-16 09:38:46'),
(23, 8, 17, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:01:44', '2019-12-14 11:01:44'),
(24, 8, 18, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:01:55', '2019-12-14 11:01:55'),
(25, 8, 19, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:02:07', '2019-12-14 11:02:07'),
(26, 8, 20, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:02:19', '2019-12-14 11:02:19'),
(27, 8, 16, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-14 11:02:35', '2019-12-14 11:02:35'),
(28, 8, 26, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-14 11:04:04', '2019-12-14 11:04:04'),
(29, 8, 27, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-14 11:04:25', '2019-12-14 11:04:25'),
(30, 8, 28, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-14 11:04:38', '2019-12-14 11:04:38'),
(31, 8, 29, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-14 11:04:53', '2019-12-14 11:04:53'),
(32, 8, 73, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-26 07:09:23', '2019-12-26 07:09:23'),
(33, 8, 74, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-26 07:09:34', '2019-12-26 07:09:34'),
(34, 8, 75, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-26 07:09:44', '2019-12-26 07:09:44'),
(35, 8, 76, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-26 07:09:59', '2019-12-26 07:09:59'),
(36, 8, 77, 5, 'Excellent service and awesome food. Truly a 5 star restaurant. Service is seamless and spot on. Food was prepared perfectly.', 1, '2019-12-26 07:10:14', '2019-12-26 07:10:14'),
(37, 8, 64, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-26 07:11:19', '2019-12-26 07:11:19'),
(38, 8, 65, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-26 07:11:39', '2019-12-26 07:11:39'),
(39, 8, 66, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-26 07:11:53', '2019-12-26 07:11:53'),
(40, 8, 67, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-26 07:12:04', '2019-12-26 07:12:04'),
(41, 8, 68, 5, 'Great route. Too fast English delivery. So much traffic that the guide description first match to visiting places at time. Frequent buses and helpful employees. Over all time well spent.', 1, '2019-12-26 07:12:20', '2019-12-26 07:12:20'),
(42, 8, 69, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:13:01', '2019-12-26 07:13:01'),
(43, 8, 70, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:13:17', '2019-12-26 07:13:17'),
(44, 8, 71, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:13:29', '2019-12-26 07:13:29'),
(45, 8, 72, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:13:43', '2019-12-26 07:13:43'),
(46, 8, 44, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:14:26', '2019-12-26 07:14:26'),
(47, 8, 46, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:14:36', '2019-12-26 07:14:36'),
(48, 8, 47, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:14:45', '2019-12-26 07:14:45'),
(49, 8, 48, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:14:55', '2019-12-26 07:14:55'),
(50, 8, 59, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:15:17', '2019-12-26 07:15:17'),
(51, 8, 60, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:15:40', '2019-12-26 07:15:40'),
(52, 8, 61, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:15:50', '2019-12-26 07:15:50'),
(53, 8, 62, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:16:00', '2019-12-26 07:16:00'),
(54, 8, 63, 5, 'The location was near the subway, metro, & train stations. It also had excellent access to all kinds of shopping & good restaurants.', 1, '2019-12-26 07:16:13', '2019-12-26 07:16:13'),
(55, 8, 54, 5, 'Good food.  Especially both main course and desert. The waiter was extremely polite.  I really enjoyed Thai Green curry (veg version).  Lots of tofu.  The dessert was a good choice too.  It was Che dua non.  I enjoyed my time here.  The ambiance was very good.  No rush.  Very peaceful.', 1, '2019-12-26 07:22:32', '2019-12-26 07:22:32'),
(56, 8, 55, 5, 'Good food.  Especially both main course and desert. The waiter was extremely polite.  I really enjoyed Thai Green curry (veg version).  Lots of tofu.  The dessert was a good choice too.  It was Che dua non.  I enjoyed my time here.  The ambiance was very good.  No rush.  Very peaceful.', 1, '2019-12-26 07:22:51', '2019-12-26 07:22:51'),
(57, 8, 56, 5, 'Good food.  Especially both main course and desert. The waiter was extremely polite.  I really enjoyed Thai Green curry (veg version).  Lots of tofu.  The dessert was a good choice too.  It was Che dua non.  I enjoyed my time here.  The ambiance was very good.  No rush.  Very peaceful.', 1, '2019-12-26 07:23:03', '2019-12-26 07:23:03');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `created_at`, `updated_at`) VALUES
(11, 'app_name', 'City Guide Travel Laravel Platform', 'string', '2019-12-18 00:53:47', '2019-12-18 00:55:23'),
(13, 'logo', '5df9db8757535_1576655751.png', 'image', '2019-12-18 00:55:23', '2019-12-18 00:55:51'),
(14, 'email_system', 'hello@uxper.co', 'string', '2019-12-21 03:18:55', '2020-02-10 18:50:43'),
(15, 'ads_sidebar_banner_link', 'https://www.getyourguide.com', 'string', '2019-12-21 03:18:55', '2019-12-23 07:37:34'),
(16, 'ads_sidebar_banner_image', '5e02cf9f0538b_1577242527.jpg', 'image', '2019-12-21 03:19:03', '2019-12-24 19:55:27'),
(17, 'home_description', 'Golo is a Laravel Theme built on the Laravel 5.8 framework. With this theme, you can create your own City Travel Guide website with Points of Interest group by Categories (Sight, Restaurant, Drink, Shopping, Hotel, Fitness, Beaty, Activities...)', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(18, 'mail_driver', 'smtp', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(19, 'mail_host', 'smtp.googlemail.com', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(20, 'mail_port', '465', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(21, 'mail_username', 'minhthend@gmail.com', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(22, 'mail_password', 'blsdxvmscyuecjag', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(23, 'mail_encryption', 'ssl', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(24, 'mail_from_address', 'hello@uxper.co', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(25, 'mail_from_name', 'uxper', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(26, 'facebook_app_id', '2599500287035694', 'string', '2020-04-01 09:05:15', '2020-04-01 09:09:24'),
(27, 'facebook_app_secret', '50a825790110a46cc4798b7c494e0c8f', 'string', '2020-04-01 09:05:15', '2020-04-01 09:09:24'),
(28, 'google_app_id', '1030498997640-437od1mjm66j1i8kn3vi23ivjb0oapgc.apps.googleusercontent.com', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15'),
(29, 'google_app_secret', '-DxAH6MaEnOH-TpCSgEE35rW', 'string', '2020-04-01 09:05:15', '2020-04-01 09:05:15');

-- --------------------------------------------------------

--
-- Структура таблицы `social_accounts`
--

CREATE TABLE `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `phone_number`, `facebook`, `instagram`, `is_admin`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Christian', 'lara@getgolo.com', NULL, '$2y$10$feNkNEN2adtyRSwreot3oudyGoSS1ofnAxzlhQJl2llUcwp1A4wD2', 'foOFSVeBr6TQJIafwlQwovmmfZAE8InYrDYijjDWFawSrjdSO00SyJT1nCeG', '5df4c0533bb17_1576321107.png', '+813371208190', NULL, NULL, 1, 1, '2019-11-08 14:22:25', '2020-02-15 02:36:34'),
(13, 'Kevin', 'demo@getgolo.com', NULL, '$2y$10$JzW.POk/BDCKYHulJmtXaOLGSXQ1LZIKYSdMjRJ.ifiqsP3FxWHyK', 'HF1Px8i1oxAnJNV2mYPJssvUW2fpytJRMI5Mhzk4tXM4lKz8xLmEHPp8l24l', '5df4bf43656bb_1576320835.png', '+81337120819', 'facebook.com/uxper.co', 'instagram.com/uxper.co', 1, 1, '2019-11-08 14:22:25', '2019-12-14 03:53:55'),
(14, 'Nathan', 'nathan@gmail.com', NULL, '$2y$10$XjpZkW/r6PUcxf6R7Dh7wO3uz5tnsc60r.ot3NinwmCyLzgy8nSG.', 'KcQO55az9XbRtaXp78nxp1NZJHSZHww0yF82AquVHyqfgQnCSZyaHP2nQygu', '5df4a741d8723_1576314689.jpeg', '0912222222', 'facebook.com/nathan', 'instagram.com/nathan', 0, 1, '2019-12-14 02:09:31', '2019-12-21 00:07:24'),
(16, 'Clayton Smith', 'clayton01@gmail.com', NULL, '$2y$10$25oej/ly24weFwhWSJrA4u/8c5CysWh4iMpW/M2PgWMBqXKx4VJKa', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-01-20 23:52:43', '2020-01-20 23:52:43'),
(17, 'Marcos', 'chillimarcos@gmail.com', NULL, '$2y$10$M5weUfoSNozpedqLojqoCOGN/34nthL/cfWk26U7uprqaDcFVk54O', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-04-01 08:51:49', '2020-04-01 08:51:49'),
(18, 'gamempvs@gmail.com', 'gamempvs@gmail.com', NULL, '$2y$10$iDWSGtcWLVzKmwcJ0VY97.ATWFEz5VPQp.jwFbPGaINWs17FEQ1Me', 'ck7gDxb8nIqfWndWlsIzCcSPXya4kNlKz1E1BDE9uqUWeQiRpwDo1b4aZdll', '5f6f92e6c9762_1601147622.jpg', NULL, NULL, NULL, 1, 1, '2020-09-26 13:13:27', '2020-09-26 13:13:42');

-- --------------------------------------------------------

--
-- Структура таблицы `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `place_id`, `created_at`, `updated_at`) VALUES
(54, 10, 17, '2019-11-21 04:52:09', '2019-11-21 04:52:09'),
(56, 10, 24, '2019-11-21 04:52:17', '2019-11-21 04:52:17'),
(57, 10, 22, '2019-11-21 04:52:33', '2019-11-21 04:52:33'),
(58, 11, 22, '2019-11-21 08:54:36', '2019-11-21 08:54:36'),
(88, 13, 21, '2019-12-14 10:38:59', '2019-12-14 10:38:59'),
(122, 13, 45, '2020-01-04 07:26:44', '2020-01-04 07:26:44'),
(128, 8, 50, '2020-01-09 06:54:51', '2020-01-09 06:54:51'),
(129, 15, 78, '2020-01-10 12:49:56', '2020-01-10 12:49:56'),
(131, 15, 84, '2020-01-10 12:49:58', '2020-01-10 12:49:58'),
(132, 16, 21, '2020-01-21 06:52:49', '2020-01-21 06:52:49'),
(133, 8, 16, '2020-02-15 12:00:34', '2020-02-15 12:00:34'),
(134, 8, 51, '2020-02-15 12:01:04', '2020-02-15 12:01:04');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `amenities_translations`
--
ALTER TABLE `amenities_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `amenities_translations_amenities_id_locale_unique` (`amenities_id`,`locale`),
  ADD KEY `amenities_translations_locale_index` (`locale`);

--
-- Индексы таблицы `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `city_translations_locale_index` (`locale`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `place_translations`
--
ALTER TABLE `place_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_translations_place_id_locale_unique` (`place_id`,`locale`),
  ADD KEY `place_translations_locale_index` (`locale`);

--
-- Индексы таблицы `place_types`
--
ALTER TABLE `place_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `place_type_translations`
--
ALTER TABLE `place_type_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `place_type_translations_place_type_id_locale_unique` (`place_type_id`,`locale`),
  ADD KEY `place_type_translations_locale_index` (`locale`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `post_translations_locale_index` (`locale`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `amenities_translations`
--
ALTER TABLE `amenities_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT для таблицы `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `place_translations`
--
ALTER TABLE `place_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `place_types`
--
ALTER TABLE `place_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `place_type_translations`
--
ALTER TABLE `place_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `amenities_translations`
--
ALTER TABLE `amenities_translations`
  ADD CONSTRAINT `amenities_translations_amenities_id_foreign` FOREIGN KEY (`amenities_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `city_translations`
--
ALTER TABLE `city_translations`
  ADD CONSTRAINT `city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `place_translations`
--
ALTER TABLE `place_translations`
  ADD CONSTRAINT `place_translations_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `place_type_translations`
--
ALTER TABLE `place_type_translations`
  ADD CONSTRAINT `place_type_translations_place_type_id_foreign` FOREIGN KEY (`place_type_id`) REFERENCES `place_types` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
