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
-- База данных: `laraforum`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `is_feature` int(11) NOT NULL,
  `feature_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_map_marker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(40, 'English', 'English', 'en', 0, 1, '2020-04-01 08:29:20', '2020-10-27 08:38:18'),
(41, 'Esperanto', 'Esperanto', 'eo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(42, 'Estonian', 'eesti, eesti keel', 'et', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(43, 'Ewe', 'Eʋegbe', 'ee', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(44, 'Faroese', 'føroyskt', 'fo', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(45, 'Fijian', 'vosa Vakaviti', 'fj', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(46, 'Finnish', 'suomi, suomen kieli', 'fi', 0, 0, '2020-04-01 08:29:20', '2020-04-01 08:29:20'),
(47, 'French', 'français, langue française', 'fr', 0, 1, '2020-04-01 08:29:20', '2020-10-27 08:38:42'),
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
(133, 'Russian', 'русский язык', 'ru', 1, 1, '2020-04-01 08:29:20', '2020-10-27 08:38:42'),
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
(4, '2020_10_10_022725_create_settings_table', 1),
(5, '2020_10_10_022756_create_categories_table', 1),
(6, '2020_10_10_022819_create_posts_table', 1),
(7, '2020_10_10_022849_create_post_translations_table', 1),
(8, '2020_10_10_022920_create_category_translations_table', 1),
(9, '2020_10_10_022959_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_translations`
--

CREATE TABLE `post_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `phone_number`, `facebook`, `instagram`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gamempvs@gmail.com', 'gamempvs@gmail.com', NULL, '$2y$10$GRJm2aKX0BHlg2MgtDP0AewRi28pk3ndf885J0m73brht7o0trRc.', NULL, NULL, NULL, NULL, 1, 1, '54BL2Gx4NFLiLL1TMzqSemv60KWbKfwSUP3cwoB6dSoFYTK9Kio9F44bspuA', '2020-10-09 21:30:38', '2020-10-09 21:30:38');

--
-- Индексы сохранённых таблиц
--

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
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
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
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
