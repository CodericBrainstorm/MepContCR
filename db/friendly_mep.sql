-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2015 a las 17:32:11
-- Versión del servidor: 5.5.42-37.1
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `friendly_mep`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balances`
--

CREATE TABLE IF NOT EXISTS `balances` (
  `id` int(10) unsigned NOT NULL,
  `type` enum('entrada','salida') COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `simulation` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `balance_budgets_id` int(10) unsigned DEFAULT NULL,
  `checks_id` int(10) unsigned DEFAULT NULL,
  `transfers_code` int(10) unsigned DEFAULT NULL,
  `transfers_balance_budgets_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `balances`
--

INSERT INTO `balances` (`id`, `type`, `amount`, `simulation`, `balance_budgets_id`, `checks_id`, `transfers_code`, `transfers_balance_budgets_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'entrada', '630580.00', 'false', 8, NULL, NULL, NULL, '2015-04-13 03:39:52', '2015-04-15 01:42:18', NULL),
(2, 'entrada', '8500000.00', 'false', 9, NULL, NULL, NULL, '2015-04-13 04:48:26', '2015-04-15 01:28:46', NULL),
(3, 'salida', '865240.00', 'false', NULL, 1, NULL, NULL, '2015-04-13 10:29:05', '2015-04-13 10:29:05', NULL),
(4, 'salida', '1200.00', 'false', NULL, 2, NULL, NULL, '2015-04-13 18:44:19', '2015-04-15 10:06:54', '2015-04-15 10:06:54'),
(5, 'entrada', '1500000.00', 'false', 11, NULL, NULL, NULL, '2015-04-16 11:33:15', '2015-04-16 11:33:15', NULL),
(6, 'entrada', '1500000.00', 'false', 12, NULL, NULL, NULL, '2015-04-16 11:36:35', '2015-04-16 11:36:35', NULL),
(7, 'entrada', '1500000.00', 'false', 13, NULL, NULL, NULL, '2015-04-16 11:37:14', '2015-04-16 11:37:14', '2015-04-16 11:37:14'),
(109, 'salida', '530.00', 'false', NULL, NULL, 1, 12, '2015-04-19 11:35:22', '2015-04-22 10:12:18', NULL),
(110, 'salida', '350.00', 'false', NULL, NULL, 1, 10, '2015-04-19 11:35:23', '2015-04-22 10:12:17', NULL),
(111, 'entrada', '1330.00', 'false', NULL, NULL, 1, 8, '2015-04-19 11:35:24', '2015-04-22 10:12:20', NULL),
(151, 'salida', '450.00', 'false', NULL, NULL, 1, 13, '2015-04-22 10:12:19', '2015-04-22 10:12:19', NULL),
(170, 'salida', '150000.00', 'false', NULL, NULL, 9, 8, '2015-04-22 10:45:09', '2015-04-22 10:45:09', NULL),
(171, 'salida', '350000.00', 'false', NULL, NULL, 9, 9, '2015-04-22 10:45:10', '2015-04-22 10:45:10', NULL),
(172, 'salida', '450000.00', 'false', NULL, NULL, 9, 10, '2015-04-22 10:45:10', '2015-04-22 10:45:10', NULL),
(173, 'salida', '550000.00', 'false', NULL, NULL, 9, 11, '2015-04-22 10:45:10', '2015-04-22 10:45:10', NULL),
(174, 'salida', '650000.00', 'false', NULL, NULL, 9, 12, '2015-04-22 10:45:11', '2015-04-22 10:45:11', NULL),
(175, 'entrada', '2150000.00', 'false', NULL, NULL, 9, 13, '2015-04-22 10:45:11', '2015-04-22 10:45:11', NULL),
(176, 'entrada', '5267800.00', 'false', 14, NULL, NULL, NULL, '2015-04-30 10:02:37', '2015-04-30 10:02:37', '2015-04-30 10:02:37'),
(177, 'entrada', '26547.00', 'false', 15, NULL, NULL, NULL, '2015-04-30 11:08:32', '2015-04-30 11:08:32', '2015-04-30 11:08:32'),
(178, 'entrada', '345363.00', 'false', 16, NULL, NULL, NULL, '2015-05-01 10:10:57', '2015-05-01 10:10:57', '2015-05-01 10:10:57'),
(179, 'salida', '5433.00', 'false', NULL, NULL, 10, 8, '2015-05-10 07:20:34', '2015-05-10 07:20:34', NULL),
(180, 'entrada', '5433.00', 'false', NULL, NULL, 10, 12, '2015-05-10 07:20:35', '2015-05-10 07:20:35', NULL),
(181, 'salida', '200.00', 'false', NULL, NULL, 11, 10, '2015-05-10 07:20:41', '2015-05-10 07:20:41', NULL),
(182, 'entrada', '200.00', 'false', NULL, NULL, 11, 8, '2015-05-10 07:20:41', '2015-05-10 07:20:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_budgets`
--

CREATE TABLE IF NOT EXISTS `balance_budgets` (
  `id` int(10) unsigned NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `policies` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `strategic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operational` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goals` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `catalogs_id` int(10) unsigned NOT NULL,
  `budgets_id` int(10) unsigned NOT NULL,
  `types_budgets_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `simulation` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `balance_budgets`
--

INSERT INTO `balance_budgets` (`id`, `amount`, `policies`, `strategic`, `operational`, `goals`, `catalogs_id`, `budgets_id`, `types_budgets_id`, `token`, `simulation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, '630580.00', 'Probando mas', 'Las estrategias', 'operacionales1', 'junto a las metas', 88, 1, 3, 'eyJpdiI6IldWRmtIYWI4KzRITEVYWXJTb2R3emc9PSIsInZhbHVlIjoicVJlMUVHXC9SeDhOb2ZTT09iTmREWXc9PSIsIm1hYyI6ImEyOGU4MDVhMmU0NjZkNDc5NWE3N2ZmZGQzMzhiMDA1NjFjYjE4ZDIyMGE5NGMzNDI3NTVkY2ZmMTJiOGM4Y2EifQ==', 'false', '2015-04-13 03:39:52', '2015-04-15 01:42:19', NULL),
(9, '8500000.00', 'ver', 'mas ', 'operational1', 'metas', 16, 1, 1, 'eyJpdiI6Ik1RKzNXdXdUNWRUM2E5eGhEZWgwUnc9PSIsInZhbHVlIjoiRkFSWmJLVVhCaDE0M3JmeUhiaEQ3QT09IiwibWFjIjoiYzU1YzY1ODVjNmFlZjFmOTU2ZGRkNmI0NzE1Yzk2MjhjMTRmMWExOTUxNWEwZDIxYWRlMmQ0MmU5YjMzNjUwYyJ9', 'false', '2015-04-13 04:48:26', '2015-04-15 01:28:45', NULL),
(10, '1500000.00', 'Mas Pruebas', 'Pruebas ', 'Mas pruebas', 'Metas', 92, 1, 1, 'eyJpdiI6IkJMS0JRVkVxZjlCVTFDNUN0Tm94TEE9PSIsInZhbHVlIjoiR3Y1aENCdWZMRXZtbzVsQ2pvbzNSUT09IiwibWFjIjoiODJjOTNlYTczZDI3YmI4ZDYwNzc2YTQ4ODg0YmRlNThjZjYwY2YyZjRlZGYxZmE0OGNmOGIzYjdjYTNjMjRmZCJ9', 'false', '2015-04-16 11:32:20', '2015-04-16 11:32:20', NULL),
(11, '1500000.00', 'Mas Pruebas', 'Pruebas ', 'Mas pruebas', 'Metas', 48, 1, 1, 'eyJpdiI6IjNpcjNPVEdiUWZmeGR6bHlTdm1zVGc9PSIsInZhbHVlIjoic2lVSEFITUJXK0pxaGFlYVhzeGF6dz09IiwibWFjIjoiODFhMzQwNTQwYjAwYTY1ZWFiZGY5OWIwNjc1ZTIwODZjNjEyMzQ4NmYwYjVhY2Y0MjNiMzEwNzIxOGM5OGEyZSJ9', 'false', '2015-04-16 11:33:15', '2015-04-16 11:33:15', NULL),
(12, '1900500.00', 'Mas Pruebas', 'Pruebas ', 'Mas pruebas', 'Metas', 94, 1, 1, 'eyJpdiI6IksxMTJkTkhNNEVzcU4wYW13eWRDb3c9PSIsInZhbHVlIjoiQmVtYnoxSUltU1E3TmFoTytxdkNkdz09IiwibWFjIjoiMmY1ZjVhYTVjOWFmYWY3YzM2N2NlNWQ3Nzk2ZjMwYmE0MzMzMDUzNzk2N2FlNjQ3MDM5NDhiOWFjZGFmNTlhMCJ9', 'false', '2015-04-16 11:36:35', '2015-04-16 11:36:35', NULL),
(13, '1500000.00', 'Mas Pruebas', 'Pruebas ', 'Mas pruebas', 'Metas', 25, 1, 1, 'eyJpdiI6IjNJUDJ1MnhYTFpBZ1g1eVlvMnVjWmc9PSIsInZhbHVlIjoic0drNWpramVuSmpjU0MzcGF1TFV2UT09IiwibWFjIjoiOWZiNTQ2NmEyZmI5YjIwNGEyZTI0YjFlOWMzYWUzOThmZmYwMzgzODY2ZDczYzFkOWQ1OTg0ZGZiMjlmNThhOSJ9', 'false', '2015-04-16 11:37:13', '2015-04-16 11:37:13', NULL),
(14, '5267800.00', 'pruebas', 'Pruebas', 'pruebas12', 'pruebas', 3, 1, 2, 'eyJpdiI6Ijl4YWxTcUFuamppQUw2Z3BmSUplU3c9PSIsInZhbHVlIjoiZ2dYRGR3WFVQTW5tNWkxelllcVNYUT09IiwibWFjIjoiNWNiMWY0ZmZhZTRjMzA4YTdhMDJjYTdjYTU5MWE0ZTU0ZmNlNDg2MGExZDI3OWZmZWQ4NDY1ODc5NDdiN2JmOCJ9', '', '2015-04-30 10:02:36', '2015-04-30 10:02:36', NULL),
(15, '26547.00', 'trrtrt', 'rtrt', 'rtrt', 'rtrt', 1, 1, 2, 'eyJpdiI6IjV5dUhYdForaTQxdVc1ZG9hSUI2V3c9PSIsInZhbHVlIjoiMGc0aktYV05pZVpXUlFKQUQ4UGlrUT09IiwibWFjIjoiODY0OTZkNDBkOTFiYjY1MTdjNmU3NDI4MzgzZGU0N2U5NDA0NjM5YWYzN2RhMTk1N2Y5ZmFkYTlkNTExN2YyYyJ9', '', '2015-04-30 11:08:32', '2015-04-30 11:08:32', NULL),
(16, '345363.00', 'ssdfs', 'fsdfs', 'sdfsdf', 'sdffs', 92, 1, 2, 'eyJpdiI6IjhOa3pkTHFhNVhPZ3JpNnJvZHgwdEE9PSIsInZhbHVlIjoiMjdsZU9Qb3J0eEVuOElWN1lBaTNSZz09IiwibWFjIjoiMWQwZTI0ZjEzMTJlOGU2ZTM0NzhhMTk3YjRmMmY1MTE5NTk2ZGJiYTYyMmM4YTIyNmFiY2FhOTdlZWFjMjdjMCJ9', '', '2015-05-01 10:10:57', '2015-05-01 10:10:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `budgets`
--

CREATE TABLE IF NOT EXISTS `budgets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('ordinario','extraordinario') COLLATE utf8_unicode_ci NOT NULL,
  `global` int(1) NOT NULL,
  `schools_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `budgets`
--

INSERT INTO `budgets` (`id`, `name`, `source`, `description`, `year`, `type`, `global`, `schools_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ley 6747', 'Funte de financiamiento1', 'Presupuesto inicial de la institucion1', '2015', 'ordinario', 1, 2, 'eyJpdiI6ImlnaWZjR0pFYVVEaEJqTnBtYURHR2c9PSIsInZhbHVlIjoiNWVhbG9IN1NtcWgzV2hxYVZJcXRJZz09IiwibWFjIjoiMTA5M2Y4MWY4NzY2YmY1OWIyMzk4YzE1MWY0NmZlNjI5MGYxZTVjYWUxNmRhNWQxZDIzMWJlMzNiMTI4MzNmMCJ9', '2015-04-06 09:23:35', '2015-05-15 11:43:43', NULL),
(2, 'Ley Tecnica', 'ss', 'Fuen', '2015', 'ordinario', 2, 2, 'eyJpdiI6InJKVEYrSk9yTWticHU2emVzaFlsWEE9PSIsInZhbHVlIjoiTzBGV21pa2tcL0p3ZWQ0bnJNSU5qVGF5QkxpUGRKU2d0aVpmdGJmTEY5NGc9IiwibWFjIjoiZDY1ZGI3MTIwOTRlZDFjZTMyYTM3MWFiYWVlZjUzNDQ0M2UwYTdlYzc4ZmIxMDQ4YzZmMzg1ZmQ5YjJmNmZjMyJ9', '2015-05-07 07:49:38', '2015-05-07 07:49:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `budget_group`
--

CREATE TABLE IF NOT EXISTS `budget_group` (
  `budget_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `budget_group`
--

INSERT INTO `budget_group` (`budget_id`, `group_id`) VALUES
(1, 1),
(1, 6),
(1, 4),
(1, 5),
(1, 2),
(2, 1),
(2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `budget_type_budget`
--

CREATE TABLE IF NOT EXISTS `budget_type_budget` (
  `budget_id` int(10) unsigned NOT NULL,
  `type_budget_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `budget_type_budget`
--

INSERT INTO `budget_type_budget` (`budget_id`, `type_budget_id`) VALUES
(1, 3),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(10) unsigned NOT NULL,
  `c` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sc` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `g` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sg` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `p` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sp` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `r` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `sr` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `f` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groups_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` enum('ingresos','egresos') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catalogs`
--

INSERT INTO `catalogs` (`id`, `c`, `sc`, `g`, `sg`, `p`, `sp`, `r`, `sr`, `f`, `name`, `groups_id`, `token`, `created_at`, `updated_at`, `deleted_at`, `type`) VALUES
(1, '1', '3', '2', '3', '03', '01', '0', '0', '000', 'Intereses s/ cuentas corrientes y otros depositos en bancos estatales', 1, 'eyJpdiI6Im5aWkhcL2tmWHpQa1NcL1BRVDZzUGdSdz09IiwidmFsdWUiOiJOZE5raEY1VmhzOTVuV0xkelk0eERCN1NvZmg5WXVUVVNLNkhQMDY2UGpJPSIsIm1hYyI6IjAwYmZlNTZkYmJhYjllZDZhMWI4MDdlZmMyODBhYzg0NTc0NzU3YWZkNDAwZjAzZjc2ODk2YzlkNjk1YzYyNjgifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(2, '1', '4', '1', '1', '00', '00', '0', '0', '000', 'Tranferencias Corrientes del Gobierno Central', 1, 'eyJpdiI6IlZUT0VTZEhKNEZuSmVBdm91b2ZkVEE9PSIsInZhbHVlIjoibDhvSktoSWdLb2Y5NEFUUW94NFwvb2RsMUE3QlhBdlpab2JkemFEcWpYZU09IiwibWFjIjoiZDMzNzFjNzIwYzcwMTRjNWQ5NTQzYTliOWZhYTQzYmJlZjQ3NmYyOTdhOGVjZTZhMzU4Mzc3ODNjZmIyMDNlMiJ9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(3, '3', '3', '2', '0', '00', '00', '0', '0', '000', 'Superavit Especifico', 2, 'eyJpdiI6ImxZQUZhYmsyYk56MDA3Mkk2b1pvXC93PT0iLCJ2YWx1ZSI6IklOUkk3ZmJ3ZEkzaDVhYmNrTG05YXc9PSIsIm1hYyI6ImVkZDQwMGVlYTY2MjdjYWIxNDNmODI1ZDc3Y2U0MjQzYWY1NjIzMjJmYzI2ODNlZDNhZThkNDlmMWEwOTY5OWIifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(4, '', '', '01', '0', '0', '01', '0', '0', '000', 'Sueldos para Cargos Fijos', 3, 'eyJpdiI6InQyRHkwYndcLzk1bXh5T3ZHZ3hUOWdRPT0iLCJ2YWx1ZSI6Imt2SFRYUDdONk9FelFCaFpjbHNlblwvdjIycCtoZ09nd0hFcTdVS0dNeDh0XC9NVWx5OE0yT09MdEs2Q08yQWFxNSIsIm1hYyI6IjE2NmFjMWJkNzZmODQ4ZGJkZjhlMGVjZTc1NWNlOTQwYmRmYWU0MDg2MjQ3ODhhMzk5MDc4Yjc2NGZhMWJhMmYifQ==', '2015-04-06 02:48:38', '2015-04-06 02:48:38', NULL, 'egresos'),
(5, '', '', '01', '', '0', '02', '', '', '', 'Jornales', 3, 'eyJpdiI6InIxRUJwVll1dExZR2RwRWNEbGdGblE9PSIsInZhbHVlIjoieWJHck0xMTdpNTVJOXBZUlZLb2pzdz09IiwibWFjIjoiYmQxNDU1ZDU1OGFjZDE0ZDc2YzE0OTA4NDQwZDRkYWNjMWVhNjBlOGYyOGQwMTgzNTkwYjlmZDllZGZhMTk2YyJ9', '2015-04-06 02:49:34', '2015-04-06 02:49:34', NULL, 'egresos'),
(6, '', '', '01', '', '0', '01', '', '', '', 'Tiempo extraordinario', 3, 'eyJpdiI6Im9UTjFFXC92alZQb2VLTUtOeVRvMW53PT0iLCJ2YWx1ZSI6IitBVkphY2tMK0dDZEY1ZVdja1RvNzNLSjVvUTFOXC9WSGZYQW51c3dvaFVnPSIsIm1hYyI6IjhiYzY1N2E1Njk5YTU5MTEwN2YxZTc3OWFkM2VkNzcyZDAwZDRkMzljZTZmM2Y4YmQ0YTQ5NDAxZWFiOTFjYjUifQ==', '2015-04-06 02:56:15', '2015-04-06 02:56:15', NULL, 'egresos'),
(7, '', '', '03', '', '0', '03', '', '', '', 'Decimotercer mes', 3, 'eyJpdiI6IjBNNnZqY1BqM0lLeTllWDFQU0x5ZEE9PSIsInZhbHVlIjoiNllQVEttdzFaVWFlbThkZlQzcG40S2RyN2p1ZnFNWFh6Q3dJWnBMXC9ISDg9IiwibWFjIjoiZGJhODUyZjE2ZjY3NDZlNmIyNmMyNzM3M2E0Y2I3ZjgyZWJlOWYxMzA1MjhjZDNlMjBiMDUyMTlhZWYzYzY4YiJ9', '2015-04-06 02:57:26', '2015-04-06 02:57:26', NULL, 'egresos'),
(8, '', '', '04', '', '0', '01', '', '', '', 'Contribucion patronal al seguro de salud de la C.C.S.S.', 3, 'eyJpdiI6Im9FcVo3MmwrUkJjVEdNaGJCZ3p1M0E9PSIsInZhbHVlIjoiQm00MWdIM1wvSGFzckFnREVmaU1JVG1vNFwva2owVEtMeThkbGZ3NmNpMGk3MXpoNkdDQ0lDWHlSc1dPcGN3eFwvNUFlbEt5UHFlZmd3bjRXdW9kMXBxZVE9PSIsIm1hYyI6IjEyMzFlYmUxOTE1MDk5NDkwMzFhMzc4NzNhMDNlMDM3MzczNzU3MDA3M2U5ZDEyNzA', '2015-04-06 02:58:47', '2015-04-06 02:58:47', NULL, 'egresos'),
(9, '', '', '04', '', '0', '02', '', '', '', 'Contribución patronal al IMAS', 3, 'eyJpdiI6IkQzd0J6czdNWStta3haSjY0alwvVDNRPT0iLCJ2YWx1ZSI6IkZTejV0NThcL3V2MkV4M0Rzb0YxNnJMRDhvV29DTTNIbmNzR1hZQk9naUVVTHJoSE85dzF4WTFNTjZJQ0FCY2RyIiwibWFjIjoiNzQyN2Y4YmI5ZjU4YjJjOTEwNjlmMTU1MTY1ZjEwZjNiY2NjN2QzZjYwZjY5NDQwYTdlYTIzNDhlYTFiNmYyZiJ9', '2015-04-06 02:59:49', '2015-04-06 02:59:49', NULL, 'egresos'),
(10, '', '', '04', '', '0', '03', '', '', '', 'Contribución patronal al INA', 3, 'eyJpdiI6InZMb0ZKMmRcL2Zyb0RiK1R0Nmd3eTZBPT0iLCJ2YWx1ZSI6IktQdHpBVHJUeXZNOU5ZQVMyTk5UblJkeWRXa1llVHJjR01Xb2ZKcXdXQnN3T01sTnc2VW1ZWElWOG9Cek91TkkiLCJtYWMiOiIzOGVkZjg4ZDIzZjJhNDQ5NDFjYTliYjBjNjFiYjZjZTk1YmJlNjdmZTE3ODVlNzYxYjRhZTVkMjMxZTgyNGMzIn0=', '2015-04-06 03:01:00', '2015-04-06 03:01:00', NULL, 'egresos'),
(11, '', '', '04', '', '0', '04', '', '', '', 'Contribución patronal a FODESAF', 3, 'eyJpdiI6Ik5TT2pTQkhpblQ1cDk4OU8rS1FvYWc9PSIsInZhbHVlIjoiaDBNQXlkUTZLZyt1YU9NU2dLSEx1b25cL1wvQW9xZHJVZ1ZWM2kwSUkrbnNzMlhuTklOeXkxaGVjUHBTbmg2OGNJIiwibWFjIjoiZTQ3ZTA2ZThiZDc2OTExZGRmZGNjNGFhMDAyNWY2MTI1NGEzOTdiNzI5ZmU5OGMwYjllZDk2ZDlmYzIwYmE1ZCJ9', '2015-04-06 03:02:41', '2015-04-06 03:02:41', NULL, 'egresos'),
(12, '', '', '04', '', '0', '05', '', '', '', 'Contribucion patronal a Banco Popular y de Desarrollo Comunal', 3, 'eyJpdiI6Ik44d21uKzR4UUdEcmJZaUV6a2RDNUE9PSIsInZhbHVlIjoiNFZ1aEdkTXZnQ1ZXZmNOTzNXQ3grbWhtWWdOcndYYTh1Z3dnNGx4RGtTemE0VHRERXdYSXlibytHZXJUYWlkWHA3WFI1UXhcL3hmV0ZIazNxZHUwN1orWlBEUU5rOEJjUnkzNXQ4V21RN2hBPSIsIm1hYyI6ImVkMGU1OTcwNDY3MGVkM2E5YWIyOGNmOTVhOWVlNjB', '2015-04-06 03:03:59', '2015-04-06 03:03:59', NULL, 'egresos'),
(13, '', '', '05', '', '0', '01', '', '', '', 'Aporte patronal al R.O.P.C.', 3, 'eyJpdiI6IlplWDhNRGJJbTdNWlVsd2lxa2ZRVGc9PSIsInZhbHVlIjoiYXZIbkhCREd6UHlCYzgxRlRpQXc0QXp3YmdIRXRhZzVvbHpLVlhcL29Xcm9kek9mTThQY1RTNk92YTNqZTNEYzkiLCJtYWMiOiJjNzU0N2ExZjQ2MWM1MWRhODAwNzJiNGFhODA3MGNjMDI5MzJkM2MzNjAwNmExYmRmMjE1YzI0M2FhNmUzOTQ0In0=', '2015-04-06 03:05:29', '2015-04-06 03:05:29', NULL, 'egresos'),
(14, '', '', '05', '', '0', '02', '', '', '', 'Aporte patronal al F.C.L.', 3, 'eyJpdiI6ImY1dkszYjR3U2hlbm96TXFUTm10VXc9PSIsInZhbHVlIjoidk4yM25mWlpRN2gxclc3UHQrdlByWDBYUzJDYjdsR2tNR3dJUllKZTZxV2tpakVSeVllWnE3MFM2aUlsSzdTUyIsIm1hYyI6IjEzZjk4YWE4YjAwY2IxMzZmZGY4NTE2NmE3Y2ZiYjdjZDFmZTkzNDFmZDcxMThkMDJiMGM3ZDg1N2QzYjU5ZjgifQ==', '2015-04-06 03:07:05', '2015-04-06 03:07:05', NULL, 'egresos'),
(15, '', '', '01', '', '1', '01', '', '', '', 'Alquiler de edificios, locales y terrenos', 4, 'eyJpdiI6ImxuYnd0Vzc4UDdsMDJcL3EwQTRZUlhnPT0iLCJ2YWx1ZSI6InpndmFrS0l0NXMzT0VFTFhBdHhVQnN6aGR0U1ZUa3ZpMTNhbjl0cGZWNndXZ2t6OUl2V2QxaVhMbEpVdFU0U0Npb1lNWW5jYzJcL3FHU09lSFJudHVzQT09IiwibWFjIjoiMWZkYjlhZTYyMjQzMWViZjcxMDI1ZjM5Zjk4MjU3ZTIxNGJkYWYwZWE3OWQ3NTBjNjE', '2015-04-06 03:09:24', '2015-04-06 03:09:24', NULL, 'egresos'),
(16, '', '', '01', '', '1', '02', '', '', '', 'Alquiler de maquinaria, equipo y mobiliario', 4, 'eyJpdiI6IlhZWmhtdTdZV1ZwN0tsR3BoOEE4UVE9PSIsInZhbHVlIjoiR0R6a1IxUnBlVEtpUUFSKzJubVVLYkNablZnWG92WDB1dnJsSzd4V0Z6RmZnRkpYMG9pNnp0SW9iQlNBOGhXRjFubGJvXC9LeGFyc1R2NE5NS1NJQXJBPT0iLCJtYWMiOiJkMzBmZWMzYmVjMDBmNTU4ZjQyOTZjNTBiOWJjOTcyNjZkNjQ1OThkZWQ3NmUzMzllYWY', '2015-04-06 03:10:22', '2015-04-06 03:10:22', NULL, 'egresos'),
(17, '', '', '01', '', '1', '03', '', '', '', 'Alquiler de equipo de computo', 4, 'eyJpdiI6InZxVXFiK1BLT0srY09EZER5TmFGNFE9PSIsInZhbHVlIjoiTEZEZnpSRHhNSVdUd0FBajgzN0ZGVjFpZ2V6KzkxazBSOWtsWndYcFo4aWpIWGRkMlNhT2hsWktQajZsMkJWSyIsIm1hYyI6ImM3NDM1NjAzN2U1NjYyYTEzOGNkNTYxMWNlMTA0ZmVmMmNmMjQwNGI5NmI2MzI4MWU2YjlmOWRlYjYyMWY4NWYifQ==', '2015-04-06 03:11:01', '2015-04-06 07:06:56', NULL, 'egresos'),
(18, '', '', '02', '', '1', '01', '', '', '', 'Servicios de agua y alcantarillado', 4, 'eyJpdiI6InNDQ1BXRGpOSU9jRlwvaUlXTUtEcTh3PT0iLCJ2YWx1ZSI6IlNFazErR1pLYWhWQUFvQmdSbm00bzZ5bW92VkhZK0lhTGFsa0ZONW9PVmtQckhheVZJQklWbWpyUWJwMWh4OWYiLCJtYWMiOiI3MWM3MGFlMTM4NDk2NzU2YjE3MzA4OWJhN2MxM2VmZTAwNjM3ZGM5YWI5ODFiMDY3ZWE2Y2M2Njc0NjFjODNmIn0=', '2015-04-06 03:11:57', '2015-04-06 03:11:57', NULL, 'egresos'),
(19, '', '', '02', '', '1', '02', '', '', '', 'Servicio de energía electrica', 4, 'eyJpdiI6ImRqTW1QOVltdzNCRmxpcXdcL0Z3MFhnPT0iLCJ2YWx1ZSI6IkVYNGU5R0xRbFRxb2pcL3prRWh4XC9UVnR1cW9NRkdUMHc0MGUzY2I0eWlZM1FQUUZVdHpiRDZqSGF6UXhLWXVpbSIsIm1hYyI6IjFkOWVlZTFiNmQwNGZhYjQ5YmE5NmZiMTJkZWZmNTJmYzdkMTQxYzc5ZjQ5YmIyOWI0OTg3MTNiNGUwNGM0YTcifQ==', '2015-04-06 03:13:05', '2015-04-06 03:13:05', NULL, 'egresos'),
(20, '', '', '02', '', '1', '03', '', '', '', 'Servicio de correo', 4, 'eyJpdiI6Ik5kYituK205QXc2bFVZZzIyY1BPNUE9PSIsInZhbHVlIjoiSzlISWZJaFp5eW4reFZFXC9UbXNUNytpSkZ3UnJON1Y2cFlLZW9ZTWVSMUE9IiwibWFjIjoiMjU4ODEwNGZmODFmZmU3ZWUwNjlkNGY4ODZmMjQ0ZmM5MDBlMTU0ZjNiNDc3YmFkY2Q3YzM5NGQ3MTJlMDc5NiJ9', '2015-04-06 03:14:26', '2015-04-06 03:14:26', NULL, 'egresos'),
(21, '', '', '02', '', '1', '04', '', '', '', 'Servicio de telecomunicaciones', 4, 'eyJpdiI6IjJET016SHJEVDhXZlpFWEw3V2g0c1E9PSIsInZhbHVlIjoiaTJTZDFSWERXOTFBUHQyTUdTVE1zQjdtTWh2T3FmMnlYUjVIamt4NEo3aHhtT2VFTUtvYjNSN0VrXC9BaFlcLzM4IiwibWFjIjoiZGIwOWRjOTk5NzMwYjdmNTA1NGJjYWZkYzNmZjAwYWYxNzAzYjNlMDFhYmYyMjIyMDViZjRiZjA5Nzc1MDU4NCJ9', '2015-04-06 03:15:59', '2015-04-06 03:15:59', NULL, 'egresos'),
(22, '', '', '02', '', '1', '99', '', '', '', 'Otros servicio basicos', 4, 'eyJpdiI6Ik9vcm0rakJCSkJrdU04VzJrY2oxOFE9PSIsInZhbHVlIjoiT3JPTURnQWFjWHh3WmlpQTh6N1lkK3FkTzhMY2kxdFhMbHZxT2VFMnFEaz0iLCJtYWMiOiI2NDRiOTNiNjg5OWM2OGRjNmY1NWUzMDM3MGRmMmI4YjdiYjgyODRkOTZkYmQ2NmM2OWY0MjIxNzE2YzJhZjdiIn0=', '2015-04-06 03:19:36', '2015-04-06 03:19:36', NULL, 'egresos'),
(23, '', '', '03', '', '1', '03', '', '', '', 'Impresión, encuadernado y otros', 4, 'eyJpdiI6ImxaQkN0ZGpocFhQQVJnb0x6MUVma0E9PSIsInZhbHVlIjoiOXFVUjFiNzJEWUE3WUM4a1JiaDZsOERNMFFHU1ROc3pNWU5HRVwvR002dXZhYitJVHlxN2xSS3ZhcUhOTW5Rb3QiLCJtYWMiOiJmMTY2ODllM2ViMWY0OTljNDc0ZDc0OWU5ZTBmYTFhNmRjMzQ0NzgyOGU0MWZjOTYzMzllMjE0ZWU3ODUxNGNjIn0=', '2015-04-06 03:21:27', '2015-04-06 03:21:27', NULL, 'egresos'),
(24, '', '', '03', '', '1', '04', '', '', '', 'Transporte de bienes', 4, 'eyJpdiI6IlpsMEtkM3ZIajMwMnBMSGZBdW5sSGc9PSIsInZhbHVlIjoiSW1QNEdiUGo5ODV1VGdHMm91YktoS005dE9iVGRVeGhWXC9LMU44K3FBMU09IiwibWFjIjoiNjdlZGFiNDM0ZmQxYzNjZjc0MzlhMjg2MTA4ODgxMDUyYjkxYjUxMTYyMzNlOWExZDQ2OGRlMGZmMThlMzdjMyJ9', '2015-04-06 03:23:02', '2015-04-06 03:23:02', NULL, 'egresos'),
(25, '', '', '04', '', '1', '02', '', '', '', 'Servicios juridicos', 4, 'eyJpdiI6ImdpaXRzdVBSY3l2aUE1MVlRYWQ3Mnc9PSIsInZhbHVlIjoidEZvUThIMkQyUDBHV1JjT1wvakU0OUdKNDFYbVhoeVBONjA4UVdqMk1uUEE9IiwibWFjIjoiN2ViZmNmYjIwMDBmMWM2YmYxZmYyMTM1MmE5ODRlNDU4N2ZkNjI2ODgzYjA4MmY5ZjA5MmQ4Njg2YWY4MjcyYiJ9', '2015-04-06 03:23:59', '2015-04-06 03:23:59', NULL, 'egresos'),
(26, '', '', '04', '', '1', '03', '', '', '', 'Servicios de ingenieria', 4, 'eyJpdiI6ImpYVW1QY1dNTDBZK3NMVCs5OUcxcmc9PSIsInZhbHVlIjoiUFZKdFp4dmFua0VvRlNBVFdublJLOXlIUzN1ZndJV0Zva2xNMUN3K25CUT0iLCJtYWMiOiJkNDI4MDhlMTI4NjU2YWU5OTUxODY2MDBhMzY2NDA3OWYxM2NmZWZmZjUzZjQ5NzNiMWRlZmMzNjU2NzY2MGMxIn0=', '2015-04-06 03:25:07', '2015-04-06 03:25:07', NULL, 'egresos'),
(27, '', '', '04', '', '1', '04', '', '', '', 'Servicios en ciencias económicas y sociales', 4, 'eyJpdiI6IkVqa2hXTnhITWI4cmZHaGpXUXlVNUE9PSIsInZhbHVlIjoiWXZCQ1NscVhjbEg4c3FIRVJoRStWY0tSQU14T1NubnhKeXVJMWxNVjVXdEViV3c5MVE4VGtyQ2dQc25JK2lDd3RvWjNDdVwvV2plSEVjMGF6Z1ZvaDFnPT0iLCJtYWMiOiI1MWRlNTFjODNhNDk1NTExYzAzYmU0M2M3YTkxNDE3N2Q4MzBiZjlmMGIyNTUyMGRkZDQ', '2015-04-06 03:26:30', '2015-04-06 03:26:30', NULL, 'egresos'),
(28, '', '', '04', '', '1', '05', '', '', '', 'Servicio de desarrollo de sistema informaticos', 4, 'eyJpdiI6ImZPNmE3XC9uVDVNSkJXZDZDT0NKUCtBPT0iLCJ2YWx1ZSI6ImtkSEExSUc3MUxYUnREN282MlZyRjVScThGQ0d5Nzh3SVwvOTRYXC80OGFzN2NXYVBhTWJwUGE4MGc5MVN2MFB3amxzUVJLU0ozZmsyYUNNdmRxb3pIQ2c9PSIsIm1hYyI6ImRjNGFiZDQ5MDczNTZjYmJiOTJkOTY0YjYyM2FkNGE4NDM5MWEwYzFkM2Q5YzEyNWM', '2015-04-06 03:29:02', '2015-04-06 03:29:02', NULL, 'egresos'),
(29, '', '', '04', '', '1', '06', '', '', '', 'Servicios Generales', 4, 'eyJpdiI6IkdQNnBhV3ZUT0NqQldZcHIyNEhPY0E9PSIsInZhbHVlIjoiVktwNFRTb1wvTmJBRm9IT09xNFdsb2o0Nzg2cDRkczVhV0N4RnBMUU5IR0k9IiwibWFjIjoiNWRlNzA5ZTA0ZDcxNzlhMjBkYWMyN2QyODFlMWVkM2JjMzJlYTUzNmYzYjVkMWMxYzUwM2QzMzJkN2FmOTAxNSJ9', '2015-04-06 03:29:43', '2015-04-06 03:29:43', NULL, 'egresos'),
(30, '', '', '05', '', '1', '01', '', '', '', 'Transporte dentro del pais', 4, 'eyJpdiI6IjR1WEVOS2JJdHJXRTRYWUVLTVFkVVE9PSIsInZhbHVlIjoicDN6eXVBcnNcL0RtdU1kREpYQnF3QzVSNlg0NlZudVZJc29MT0J0ektCS2xDb3JaWU52MTV5d291M1ZoXC94M0RHIiwibWFjIjoiZTJlNzgyMTgxYjQ1NTc0MTdiMmY0MzkzYWI0YWE5Zjg5NTQ0MzE0YThjMTkyYWQ2MTU4MTczN2RhOGU2MGMzNSJ9', '2015-04-06 03:31:02', '2015-04-06 03:31:02', NULL, 'egresos'),
(31, '', '', '05', '', '1', '02', '', '', '', 'Viáticos dentro del pais', 4, 'eyJpdiI6InB0QmNOaitZYnNcLzlqNzNqd2hXTUxBPT0iLCJ2YWx1ZSI6Ilh0d3UwK0J6RDRsWnBPSFhzc3FBMXpuNXAzNHl5SnA4TThrVDF1MnhheSthenpDdFNodXM0TDM3UUdpNnBMQ0giLCJtYWMiOiJhYTg3NDE1NGM1ZDg2NjZhNTYyMTYxNGEyZjUyMzlmYmRmNzU3MmIyODUyOTFhOTAzMzZkNGUxNzZlMWRmMmU4In0=', '2015-04-06 03:32:43', '2015-04-06 03:32:43', NULL, 'egresos'),
(32, '', '', '06', '', '1', '01', '', '', '', 'Seguros', 4, 'eyJpdiI6IlJKMXF0cXZGd3NQejRzdFhjOWltVHc9PSIsInZhbHVlIjoidjNcL0VtbW5hdmZZeVpCelZwQVQyQWc9PSIsIm1hYyI6IjFhMjIwNDk4NGE2ZWU1MzczOTQ2NWM3NzA1YzI3YTQwNjZlNjYyYmRmOTNjMmNjNWU1MWI4ZjhkNWFkNzRkNDMifQ==', '2015-04-06 03:33:43', '2015-04-06 03:33:43', NULL, 'egresos'),
(33, '', '', '08', '', '1', '01', '', '', '', 'Mantenimiento de edificios locales y terrenos', 4, 'eyJpdiI6InZ2UjdacDJSb1ROaVhhZlwvb2tSUUh3PT0iLCJ2YWx1ZSI6InpudUEwZDA2MHRFY0JsZ0FSbVFWRmx5emswRlp3VDNvK2ZxRHRaU2I3OERha25ucXMrR3RUXC92VWUzc0xWcFwvaWZDanQrdGp6MHNkMldtVkNFb1QyOFE9PSIsIm1hYyI6Ijk4Nzk5ZTI0YzVmODEyYzk3MTg5MDNmZjBhODczZDA0ZmUzZTg1NWExZWIxOWEwZTY', '2015-04-06 03:37:18', '2015-04-06 03:37:18', NULL, 'egresos'),
(34, '', '', '08', '', '1', '04', '', '', '', 'Mantenimiento  y reparación  e maquinaria y Equipo para la producción ', 4, 'eyJpdiI6IkxhTG9GTWllemoyYlVpSml4S3pqXC9nPT0iLCJ2YWx1ZSI6Ikx1YTdMemFwdEZQVlZlK2xFSUVWNUVCRERqdUh5MDNCK2F0UTVHV3JnSGNRUFY4RWRhUktkekR2TzdCb1JYcEF1OUZrYnBOejFMRmp0MUg0Y0xIR1p5bG9vXC80eittelwvaDZwUTBkYjVtS2NmOENDUElmUUZyWUY1TmIzcldVakMiLCJtYWMiOiJmYjlhMmRkODI', '2015-04-06 03:38:55', '2015-04-06 03:38:55', NULL, 'egresos'),
(35, '', '', '08', '', '1', '05', '', '', '', 'Mantenimiento  y reparación  e maquinaria y equipo de transporte', 4, 'eyJpdiI6IkR1eHorQUVcL2FnYlJ3dGFcL3ArS3ZxQT09IiwidmFsdWUiOiJ6VHRxV1Z3eW9aWE5YR3dqYlZyU2hLMElNMlB1WFd6WENtbUxOM052blBqT0FFdW1BdnVmTSszSUpBMlJSaUd2ejFUTmVSeCtieDRZdE1OblU2cHlWU2pmdWVJVEtIVlY4VXprRUIyOThRcz0iLCJtYWMiOiI1MTI0YzA3NTRiMjFiNGUxZGExZTFiM2JmN2Y1ODA', '2015-04-06 03:40:17', '2015-04-06 03:40:17', NULL, 'egresos'),
(36, '', '', '08', '', '1', '06', '', '', '', 'Mantenimiento  y reparacion  e maquinaria y equipo de comunicacion', 4, 'eyJpdiI6IkR1OEpXMTVDME1DTUg1MkhOTU1ydkE9PSIsInZhbHVlIjoiY3ZOazNOMFdMQmlDUkVCZzhLaEp4ZVA0Z0FyY1hLODArRGduK1pCdUhmbXAxQ0s5bFprRzM3NXpcL3lEKzd5cVpnM09DRlUxYVJYSXNBYWtFMFwvT0lGS2RZcWU3MFZqMzdEQkVaSjZ3VGZlVT0iLCJtYWMiOiJiMDAwNDZmYTdiYTY0NGM2YmMyNGUzYTEzYzA3ODE', '2015-04-06 03:41:07', '2015-04-06 03:41:07', NULL, 'egresos'),
(37, '', '', '08', '', '1', '07', '', '', '', 'Mantenimiento  y reparación  de equipo y mobiliario de oficina', 4, 'eyJpdiI6Ik9qK0xrMkpsck11T0pwTGRja1FCM1E9PSIsInZhbHVlIjoicUladzdCQU5EVlNMeVwvSzZsZnZIREJpV2twcjNmdnVPMmFWcTdoanFrUGdEeHlVTitOYlRXb0xjTUZvUUFhbkVWOExRZDNFQm9OSnphMTFBWGxYWTRmYXpNRnFjV0ppczhWaktERFpGTlFBPSIsIm1hYyI6ImFmMzcxZjM1YzFiNjMyMWNkNDk1NGY1ZDEzNjA2ODV', '2015-04-06 03:42:11', '2015-04-06 03:42:11', NULL, 'egresos'),
(38, '', '', '08', '', '1', '08', '', '', '', 'Mantenimiento  y reparación  de Equipo de computo y sistemas de inf ', 4, 'eyJpdiI6InllcGc2K3NmS1gyNm16OFdlRVNadkE9PSIsInZhbHVlIjoiZHZ4aVdNZVwvQlEzT2NrcVJVXC82YVU0cW9UUXdQZlwvWlRcL0hlbFVXQytoaWpUV1dNQ3EzZVgrZGJCUTNPK1ZHZVhKcW1VaHgxNktcL3Q2d293TVwvZzdNRHUzSzd3dStMd1BIUWVrUGJIY3JKSjQ9IiwibWFjIjoiOGUyZWRlYTIyYTY2MjJjODJhNzYzOTRkN2M', '2015-04-06 03:43:33', '2015-04-06 03:43:33', NULL, 'egresos'),
(39, '', '', '08', '', '1', '99', '', '', '', 'Mantenimiento y reparación de otros equipos', 4, 'eyJpdiI6ImtoQnZPajY3cHRTQ3QrbnYxeWk5YUE9PSIsInZhbHVlIjoiXC8xU1wvVTVMMTM2Tm1SdThaaGE3OG5tTVlpQWhkTnh0REpMVFAwa0NwYndHdE0rYXNrVG9iTDIxN2lxVXhXUnpIY3ZDK09JZ0VmdGI1YzRHNHpib0MxUT09IiwibWFjIjoiNGJhODNjOTYyZTlkNDA4YWQ3ZmZjOWFjNWJjZWYxMDExN2FkZGRmNjA3MDY0YjI2MWI', '2015-04-06 03:45:18', '2015-04-06 03:45:18', NULL, 'egresos'),
(40, '', '', '09', '', '1', '03', '', '', '', 'Impuestos de patetentes', 4, 'eyJpdiI6IkR3dGdBNlRaMUdUUVp0NEt4NFdOWVE9PSIsInZhbHVlIjoiMHNQdkxPTlpZaXlkalwvamdWYVpkbTVFdXdFWVhtM2ZaZ20wQmc1bW1RS0E9IiwibWFjIjoiMGQwYzYyZjVkYzk2NTM1NDU2OGEzMTI1ZDhhNmRjMGIzZGI2Y2YwZWZjZDE3ZDgzMDNlNDIwYWYzODE2NTgwNyJ9', '2015-04-06 03:46:13', '2015-04-06 03:46:13', NULL, 'egresos'),
(41, '', '', '09', '', '1', '99', '', '', '', 'Otros Impuestos', 4, 'eyJpdiI6IkdvXC9oMnRKeGp0TDdtVkRHazRDZDNnPT0iLCJ2YWx1ZSI6IlwvU2xGRW1vSHJycFRRZWZRaTBZbk9od1FHQXBjd1hqNlZjQ2hzc0lOenc4PSIsIm1hYyI6IjYwMjIzYTIxMGVlMzY0MTVlYmVlMTYzYzU1Y2EwMDg5MzkyODVmMjk3MzhkZTQ4N2RkYjUyOTRlOGZjMDdlOGMifQ==', '2015-04-06 03:49:14', '2015-04-06 03:49:14', NULL, 'egresos'),
(42, '', '', '99', '', '1', '02', '', '', '', 'Intereses Moratorios y multas', 4, 'eyJpdiI6IlwvVkp0VEN3TVV3N1I5cVpOQkszSEdnPT0iLCJ2YWx1ZSI6ImxoVkNnU3Q0ZERINEpyeW4zMktvRlpYQ0dXVytlektaKzlGV0xFSjBZaTdHNlJ1ekRJbjVPS3VqY3p1SEdNbEgiLCJtYWMiOiJjYzgyYmFlNTlmMzk0MGQ2MDc1OGVmOGJiNzVkMjg2MmI0NWUwMWUxNzQ0MTE5ZTRmMWVlMzBkY2QwM2U4Y2E1In0=', '2015-04-06 03:50:42', '2015-04-06 03:50:42', NULL, 'egresos'),
(43, '', '', '01', '', '2', '01', '', '', '', 'Combustibles y lubricantes', 5, 'eyJpdiI6Im55amxKRjNzNnJZRVN5ZkM2d25TWGc9PSIsInZhbHVlIjoiaEdPWmpiZTZXQTdWK3lsRlhEWXlydkd0YkhJcGhFbU41QXV2ajBPWFpkdHRwV0VTY2JhVWVOWTR6R1I0bFA0WiIsIm1hYyI6ImQ3NTE0MjI3MGI0NTEwYWJiYmE1NGVlODQzMmY1YjY5ZDhiYjhiOTZiYjkzNjcxNWYxOGRjMmE3NDA1OTliNDEifQ==', '2015-04-06 03:56:22', '2015-04-06 03:56:22', NULL, 'egresos'),
(44, '', '', '01', '', '2', '05', '', '', '', 'Productos farmacéuticos y madicinales', 5, 'eyJpdiI6Ik56WTBEYUN1bnhLSFBnWkZuaWp5S2c9PSIsInZhbHVlIjoiT2ErQStqQjRhUmtBVEhLa2Q4cjBhU2N1NDhPRFZnVkNnYTlFbUtobGVqTE1yK1h2MXoxVjJZRFhaNHNJcVlhbSIsIm1hYyI6IjliYmUwYThhYThkMTMyOWY0ODIyOTQ4MzUxYzcxNGQ3NGQ2NWU5ZDAyN2NiMmY3OTI0MjdlYjYzODhjMzQ2MDAifQ==', '2015-04-06 03:59:28', '2015-04-06 03:59:28', NULL, 'egresos'),
(45, '', '', '01', '', '2', '03', '', '', '', 'Productos Veterinarios', 5, 'eyJpdiI6IjFtUGVJSW4yb21ieXlsZXBYWHl2cXc9PSIsInZhbHVlIjoiXC9WOHp4YWNkUFwveUJZUEsxSDc3K25zSTN0UkhwbHBLSDVZdmV5MXM1cWRFPSIsIm1hYyI6ImZkZTY1ZTdjNDRmZGI3MWM4NmI0MWJlYWE5MjU1ZThkNGRjOTFhNGIwZGY3ZmNlYWRlZjNhODE0NTFkOWZjNjQifQ==', '2015-04-06 04:01:02', '2015-04-06 04:01:02', NULL, 'egresos'),
(46, '', '', '01', '', '2', '04', '', '', '', 'Tintas pinturas y diluyentes', 5, 'eyJpdiI6IjVaeG9jYjh2MFJnYmM2bEtDeGM0ZHc9PSIsInZhbHVlIjoicnZvSGxCZ2Y4VVhROEVlV1VHXC9PWHRBMEwwVnE3TlRWbzdvaE5kUXRKWmpxOXpPU1pwamtnOFhQQ01rWWphalkiLCJtYWMiOiI1MzA5ZDIwNzc5ZDY3OTg3ODBhYzYzYzExNGJlNjhiNWQyYjhlY2IzMmE0NTk1Nzg4YmVkMWNkM2EwZjk1MzlmIn0=', '2015-04-06 04:02:06', '2015-04-06 04:02:06', NULL, 'egresos'),
(47, '', '', '01', '', '2', '99', '', '', '', 'Otros productos químicos y conexos ', 5, 'eyJpdiI6IkJkNzRHMUZjMVNMd1lIRFwvMWpDTFNnPT0iLCJ2YWx1ZSI6IkwraDNFNzRoWEQ1Q0FBMnNMZnBqcTkrRkxQR3pYaUtvR2RGUFQ2ZFRvZTZFN0poQ2kwUTBKYVFtK1dxSlpTUjUiLCJtYWMiOiJmZmE3Y2NkNmNkNjdiYmFkODcyMTg4OGRjZTg3YmQ2MzRjMmVhZTYwM2RjZWNlNDZlNDgzNzUwODBjZDVmMzcyIn0=', '2015-04-06 04:03:20', '2015-04-06 04:03:20', NULL, 'egresos'),
(48, '', '', '02', '', '2', '01', '', '', '', 'Productos pecuarios y otros especies', 5, 'eyJpdiI6Iko1dHdXS1N3eEQ2UW9WejRFZnVlTWc9PSIsInZhbHVlIjoiOG9GQnpGb045UmZsN3hyWVZLcHZpSmJEYlVTV3IwNHpMWjJLXC9kMWdFMjJyTzEyUGIrZXNaSGZvQUxzVEtrXC9nIiwibWFjIjoiMWY4YTJkZTE0YWY5ZWQxOGMyMDY2MmM2MjcyMjE0NWNkNWE0ODlhM2ViNTY0Zjk4OTEyMzEzNDVmN2I2NjVhYyJ9', '2015-04-06 04:04:52', '2015-04-06 04:04:52', NULL, 'egresos'),
(49, '', '', '02', '', '2', '02', '', '', '', 'Productos Agroforestales', 5, 'eyJpdiI6IlwvUzUxbU04cVlRTmkxYk53azZqc293PT0iLCJ2YWx1ZSI6IjdlVzB3VnFNbU51XC9IMjl2Nmc1RVV0MDQrdjQxdEYwTGFZcHRWUHN3N01ra1VFXC9hMjBnbE9QOWZ4MkNvaFwvMFMiLCJtYWMiOiJlMWFhMDI2NDBjMWZhZTllZjY3YmVkMGU4OGZiYmY0ZDk4OWIyNjljYmJlMjFmNThlMTc0YzQ2NGY2NjRjYzZhIn0=', '2015-04-06 04:06:02', '2015-04-06 04:06:02', NULL, 'egresos'),
(50, '', '', '02', '', '2', '03', '', '', '', 'Alimentos y bebidas', 5, 'eyJpdiI6ImFQZFwvalVqTXZ0Y3lFdVExdERSYTN3PT0iLCJ2YWx1ZSI6ImdBXC9FV1VSRmRtOFU1Z3ZvMTZZM2xBRVR4MWhvVFwvNytqSkVDMmpGYytNRT0iLCJtYWMiOiJiZmEzZTY1MzQ5OGU4NmQ5OTQ0MDU3OGQwMmNmMGYzOWRmYWRlYTdiMDU5Nzc0NTEwZmFlNGJkY2UxZjhjOWU2In0=', '2015-04-06 04:06:43', '2015-04-06 04:06:43', NULL, 'egresos'),
(51, '', '', '02', '', '2', '04', '', '', '', 'Alimentos para animales', 5, 'eyJpdiI6IldhY3FjeEhzTGw1eHBVelc3eG41M2c9PSIsInZhbHVlIjoiY2Q2dXdpSUVycEIycGhHXC9nODdIXC9pVXJkdUtLVWNaUGwxbVBsN1FIQkZFPSIsIm1hYyI6IjJkMmJiOGM5ZDAyMTA5NzBkZmZkZjQzZWRmMTIzY2Y5MzQzMmExOGM3OWJjZWU0ZGI1NTk5YWVjMmM3NmU5MjEifQ==', '2015-04-06 04:08:25', '2015-04-06 08:07:15', NULL, 'egresos'),
(52, '', '', '03', '', '2', '01', '', '', '', 'Materiales y productos metalicos', 5, 'eyJpdiI6Ijl0QTZcLzVjSE51Q2RcL3JTZGNPdXp3UT09IiwidmFsdWUiOiJkWktoclNBMFd5SjdsYXNISzI4d0YweDNyVTJOeUNPOXVMYXhId21TWUtsZGRwbEJhaytWbWp4c2Vab0RnS2pmIiwibWFjIjoiMzBlM2QzMWFiMWU0MzQ0MGU2YzE2Nzk0YTRlNDI2ODFkNjA3N2VkY2EzNjc5ZWE5MDZkMmU1ZWNkNzM1MDQ4YiJ9', '2015-04-06 04:10:09', '2015-04-06 04:10:09', NULL, 'egresos'),
(53, '', '', '03', '', '02', '02', '', '', '', 'Materiales y productos minerales y asfalticos', 5, 'eyJpdiI6Ind0UE1JNGJ3T21GVlVqU1hQZ2Y2YWc9PSIsInZhbHVlIjoieVU4clFtcTViSHZQZnFzeTBNM0FtRHhrRkNwS0k1YzQwXC9YdkF5V05QRlArcjBDRWNFRmJtTmRnZ3FsM2FcL1NnWWoyZE1RT2hoclwvWm1lNG14MVNUWFE9PSIsIm1hYyI6Ijk4ZGNiNzcwMWYzOGUwOTg0ZmZmMDEyNzcwYTExY2FmYmFiMDIxYzJlNDY4YTA1ZDU', '2015-04-06 04:11:14', '2015-04-06 04:11:14', NULL, 'egresos'),
(54, '', '', '03', '', '2', '03', '', '', '', 'Madera y sus derivados', 5, 'eyJpdiI6IlpReEcyZXhXWU1QMWp5ZjFwSEQ5TUE9PSIsInZhbHVlIjoiUXNrZDdKUGxSWGZreldUaFpXTlpiNDBGUTNLamExMVRtZHY1ZVVDaEJqTT0iLCJtYWMiOiIzZDY2OTI2MDkzOGVmNTY5YTg3ZTUyZTRhYjIyOTE4NjFkM2E4ODc0MzE1Mjk5Nzg1OGZmMjVjYWQyMDAzODIwIn0=', '2015-04-06 04:11:58', '2015-04-06 04:11:58', NULL, 'egresos'),
(55, '', '', '03', '', '2', '04', '', '', '', 'Materiales y productos eléctricos, telefónicos , computo ', 5, 'eyJpdiI6IkNEOXIyYTBqa3lLYjBlRlhrbXhVV0E9PSIsInZhbHVlIjoiQTJmZGxkQUJDU3c3M1RkWWpPOVNDRlwvd3MxeE0zMlpKXC82bUhcLzZTd0NUd1FyQ2M1VkFpQmhcLzd6ME9VZGZqbWxzQTQ4WXMyMGl4bmloUkUwM05ZSzl2YURKWldSOFJDK3BsTjZ4ajNlOWRNPSIsIm1hYyI6IjI5ZDgzYTM0NGY1NWViODJlNDk4M2JlNmE1MDM', '2015-04-06 04:13:11', '2015-04-06 04:13:11', NULL, 'egresos'),
(56, '', '', '03', '', '2', '05', '', '', '', 'Materiales y productos de vidrio', 5, 'eyJpdiI6Ik91SGtMY1ZBVGhvZ0VpS2NvOUttdlE9PSIsInZhbHVlIjoicFFYVHIxWThNNmdCZjZOd29cL1QwTFhLdGZ6b0NZbTNkSHVFcUhLeEtySlwvY2VLMEFOSHVUbHJReXBTYkZZRG9xIiwibWFjIjoiOGE2OWYyOWU3NDU5MjY2OWMzOGY1OTA0ZmQxOGM5NTc5YTIxZjdiNTg0ODQ2Y2MyZmQ5NWE4Yjk3Y2MzZjA1YSJ9', '2015-04-06 04:14:07', '2015-04-06 04:14:07', NULL, 'egresos'),
(57, '', '', '03', '', '2', '06', '', '', '', 'Materiales y productos de plástico ', 5, 'eyJpdiI6IjFCMnhLUGNxWnMycWFGM0FsMHZEUHc9PSIsInZhbHVlIjoiZklSQmtKdEhxajh4N05vS2pSTXRoXC9hYXIrN2NuYnNVMUhKXC9UVGsrR2FLemZ3dUM1dFJHTWs3RExBaDBSd2RWIiwibWFjIjoiODljNDg0NjlmMDRjNmFlZGI3Yjk5ZmQ1ZjQxODI2ZjcyZjlmNjE3YmUxNTM3N2NlZDllOGUwODhmMzQ2YjI2NiJ9', '2015-04-06 04:15:06', '2015-04-06 04:15:06', NULL, 'egresos'),
(58, '', '', '03', '', '2', '99', '', '', '', 'Otros materiales y productos de uso en construcción y mantenimiento  ', 5, 'eyJpdiI6IlNOeWx2elRKT2pqa3dOQ3lPeDEwcWc9PSIsInZhbHVlIjoicTFcL0JCS2I2OUE1YytpcjJIU1lsRlA3ekNJTXhiVlNialN2NUxoUnJub3JGa0FUUURLbm1FdEQ5N0NudktOWThnTUQ2eEtpXC9WOWRDZjlCNThDQkNEVDJ6QzdsN1VKVStyWWpDZnpFdzRoRT0iLCJtYWMiOiIwNGEyZmU1MzVhZWQ1OGYxYmY1ZjEwN2Q3NGM4MDV', '2015-04-06 04:16:04', '2015-04-06 04:16:04', NULL, 'egresos'),
(59, '', '', '04', '', '2', '01', '', '', '', 'Herramientas e instrumentos', 5, 'eyJpdiI6IjF3d1wvdmRNWmR3dldwSkozZzREdEJnPT0iLCJ2YWx1ZSI6InRiblhVWjA5cUxMSDh5VEwxWW9reHFcLzRhbVlxeVJOcnJIWGpNMVpwZ0NibFBWaEZHeFFKeFJmUlBYRjV0SmdCIiwibWFjIjoiNTdjODg3NjMwYzgyM2Y0MGY1YzMxOGNjYmJiZjVkOWJhMTNmZTQ1ODY5OWZlMjNmOWVmMGIyOGUwZjhlMzVjMCJ9', '2015-04-06 04:17:01', '2015-04-06 04:17:01', NULL, 'egresos'),
(60, '', '', '04', '', '2', '02', '', '', '', 'Repuestos y accesorios', 5, 'eyJpdiI6IjFwZWx6RmRpOTBBMFVqbGRXdVVyQmc9PSIsInZhbHVlIjoiZGtDTThvMkJPWUVBSk5ucmZLcEd6WDU3NGhHUzFFclB4TnhEbFRHODRlQT0iLCJtYWMiOiI0YTdjNzQxMWJiMmE4N2M3MzU3ZTMxMTJkOGZjMjg1OTg5N2E3M2Y0MWI5NjBlODhjYWY2MTcxYWNkMDEzNjQwIn0=', '2015-04-06 04:28:02', '2015-04-06 04:28:02', NULL, 'egresos'),
(61, '', '', '05', '', '2', '01', '', '', '', 'Materia Prima', 5, 'eyJpdiI6IkdHUUdjWWJyUEl2a1wvRnM1dWpGQ3FBPT0iLCJ2YWx1ZSI6IlFIOVdTeStCVWtmVnJFYmgxZUZFakhWUlwvMHdEQlExMzZrajY0WWhKQm1FPSIsIm1hYyI6ImNhM2ZlNTc1MDEyMDM2ODQ5N2QwZjZkYzVhMzExODVmZGNhZDkyY2E1YzE1OTRkNzhhYjFhNDkyODg2YWJlNzMifQ==', '2015-04-06 04:28:48', '2015-04-06 04:28:48', NULL, 'egresos'),
(62, '', '', '05', '', '2', '02', '', '', '', 'Productos terminados', 5, 'eyJpdiI6IjBGTmxzcnREMlVTTWdRMHh4Rjdva2c9PSIsInZhbHVlIjoid1lnMlJRT1ZxVVE4XC94bHZaWEJmTkEyMUhJMVEycFViMG9WTlp5MEk4WGM9IiwibWFjIjoiMTVjYzQ0YTE1NzMwZmI5MGYzNDhiZjU1ZDkyNjE4YTJmZGFlZTE4MzBmMTYwYmM4N2QxNTUwOTYxZWYxZmJmYiJ9', '2015-04-06 04:29:44', '2015-04-06 04:29:44', NULL, 'egresos'),
(63, '', '', '99', '', '2', '01', '', '', '', 'Útiles y materiales de oficina y computo', 5, 'eyJpdiI6IjVlWnJZK0o1aE82NEI2bzg0eTBVdFE9PSIsInZhbHVlIjoiMmc5dzNWUEg3Q1hObDlLa2NOSUh3MWNDNVZOWm9nVzNRK2dJNnJcL3JnTm96M3NPYmdHQklaN1wvdmVWZVJWaXBJa1B6Smd1VG45NUorR0tBTk1jaGNOdz09IiwibWFjIjoiOTQ4ZjU4NjQ4NTcyNzIwYjk2YmMxYTY1YjE2MWY5M2I1OWE2OWIzODc3YjUyNGViYWJ', '2015-04-06 04:30:43', '2015-04-06 04:30:43', NULL, 'egresos'),
(64, '', '', '99', '', '2', '03', '', '', '', 'Productos de papel, cartón e impresos', 5, 'eyJpdiI6Ik1tODg5TzFQXC9sU0NKTzFcL0xsbU5Xdz09IiwidmFsdWUiOiJLQ0NPTmF6czJnZ2VnRG1oMHhlS1lFanNlY2szQlZzYzlzVlozZkVXS0JcL2c1MFUrc1V3ekk4NklUZzF6MWp4SCIsIm1hYyI6ImNhZTk5NGZkYzc5YzVmMmYwMzc5MTA1NzE3YjdlMTVkYzU4ZmViNjAwODZjMDcyZWZlN2UzOTljOWY5ZDgzMjgifQ==', '2015-04-06 04:34:14', '2015-04-06 04:34:14', NULL, 'egresos'),
(65, '', '', '99', '', '2', '04', '', '', '', 'Textiles y vestuario', 5, 'eyJpdiI6IjdWQnk1NWNud1wvZGVqbFN6ZXJBaXd3PT0iLCJ2YWx1ZSI6Ik5yZGI0T0t3a1luRmV6VWxiZ2FmV0p6YXpjaUR0TWZqRmhsVEg1RVpLNWM9IiwibWFjIjoiMjI4NWI4ZTNiZTNhOWI2ODYxMmVlMmU4NGJjOTkxNmZlOTViNjViY2NlNDNmYThlZGIzOTk0ODA2MTJkMzMxZSJ9', '2015-04-06 04:34:54', '2015-04-06 04:34:54', NULL, 'egresos'),
(66, '', '', '99', '', '2', '05', '', '', '', 'Útiles y materiales de limpieza', 5, 'eyJpdiI6IlMzTjl2ZEsyT0xWd2hPZXFXOEdHSFE9PSIsInZhbHVlIjoiekFuRTN2NFcyNzBHcGIwajVkdzYwM1M4ZGdkdjZ3K3RCa1BrZ1Rxd2pUbjE0VGRxRUpYaVJxMW1OWGNBZzYzUiIsIm1hYyI6Ijg3YmY0NTUwMzAwNjE3NzRkNTliMzVlNzRmMDY3YjI3ZWQzMzcwNjA2NDdjNzJmNGNmODM3MzZhNjNkZmY1NWYifQ==', '2015-04-06 04:36:43', '2015-04-06 04:36:43', NULL, 'egresos'),
(67, '', '', '99', '', '2', '06', '', '', '', 'Útiles y materiales de resguardo y seguridad', 5, 'eyJpdiI6IjBHSHQyVTZuRHYwNTdoWHExQ0xVbXc9PSIsInZhbHVlIjoiUGxCZUlYZEIxSG1oQ2N0M3V5VWlvcHpkR2pEYkdpVG8yaVJoUEV2bWpacGhXbTV3T050V3p3WSthcWhTOU4xdnVJdys2YnlvM2tLWDVFMG9WcVI1UFE9PSIsIm1hYyI6ImFkOGEwYjIzNjUzZDZjZmYwMDQ2ZTUxNGY1YzRiMmE1ZTk2OTYzNTRkNzhmM2Q2YTNhZjl', '2015-04-06 04:37:54', '2015-04-06 04:37:54', NULL, 'egresos'),
(68, '', '', '99', '', '2', '07', '', '', '', 'Útiles y materiales de cocina y comedor ', 5, 'eyJpdiI6InhJRjNaWlRrK0drM1RJcnZlTGVlSHc9PSIsInZhbHVlIjoidGJJTXRZdVc0RXNGS1plQW5SOEQ2QWh1bjAyMExrVW1BMkFnaDZIZDd4N29YWjRxS1wvWWhcLzNaWkN2SjJzYldDSk5nWG5oVUdCblVHOGp6NXhwVmxEUT09IiwibWFjIjoiZmUxYjAxZTA1MzEzNzUwYjMwN2ZlNDhhZGE4ZDE2ODg1ODI0ZGNmN2VmYjhhMzY4MWR', '2015-04-06 04:45:45', '2015-04-06 04:45:45', NULL, 'egresos'),
(69, '', '', '99', '', '2', '99', '', '', '', 'Otros útiles, materiales y suministros diversos', 5, 'eyJpdiI6InBOR2ZnNlpLd1lyUFlBVWZjQlwvVTNBPT0iLCJ2YWx1ZSI6IkdHQ1dESVpKeW9hWVRDY0tVNlpVVUJ5elhKYVhXZXc5SVNiNGFKV3c2MUJKd21CZk9JMEU5bEQ1dWFLTVRUN1ZJU3pnN2V1cjE0YzlcL2VTNmhNejBCUT09IiwibWFjIjoiMTYyY2I0ZTljZjg0OTFhMjMxMDA4MTE1MWM0OWRiZTdhYWVmMGIxNTNlNTExZWU1MDI', '2015-04-06 04:46:36', '2015-04-06 04:46:36', NULL, 'egresos'),
(70, '', '', '01', '', '5', '01', '', '', '', 'Maquinaria y equipo para la producción ', 6, 'eyJpdiI6Ik1JS2xkQTkxMjF2OTlnNlJcL2NGREJRPT0iLCJ2YWx1ZSI6InNXQXRKWm5jRXozUkdqdlFyZ1NmdWlhSkRWdVk3NWN4eE9hYlBqbndLckl5NXVPR0doSTVcL2MyNDdKOWhnQ1c5UDJiUkZ5MHlVeEo5YWg4MUlkcm9aZz09IiwibWFjIjoiYzE3NTVkODA2MTY1ZGI2MzYzZGRjMTY2MTdiODY5Nzg4MTExNjk2Y2Y0YTZhYjRmOTV', '2015-04-06 04:47:47', '2015-04-06 04:47:47', NULL, 'egresos'),
(71, '', '', '01', '', '5', '02', '', '', '', 'Equipo de transporte', 6, 'eyJpdiI6Ikc1NENoMmxtb0IyY051RzdzOEx6akE9PSIsInZhbHVlIjoiV0M0OHFZT3pWUUdYSk9SbDJva1lZTmpXdnE1YitYb0I1TUFySDN2b1o1MD0iLCJtYWMiOiIwODQzMjQyNWE2ZjVmMWIzN2Q3OWNkN2FiODQxZTI4MTc0NWVhNjRiMTY5ZGRlN2I5NWY2OWU5NGJjODVjZmY1In0=', '2015-04-06 04:48:26', '2015-04-06 04:48:26', NULL, 'egresos'),
(72, '', '', '01', '', '5', '03', '', '', '', 'Equipo de comunicación', 6, 'eyJpdiI6Ik9UNzFcL0t1M3Z1eU0zNXQ3NDhjTUR3PT0iLCJ2YWx1ZSI6Ik1tZGcra3NoNnpzdUc1QytSdmlTWlY2dTBlNElNYzZZcUZVNXM2clJyT3M9IiwibWFjIjoiMmIxNDJiMGVkODk1ZGQwM2IxYjVlMTE2ODNjODk2Yjg2MzdkNzlkNzhiOTMxZDM5MmRlYTVjMTFhNzJjYjVmOCJ9', '2015-04-06 04:49:21', '2015-04-06 04:49:21', NULL, 'egresos'),
(73, '', '', '01', '', '5', '04', '', '', '', 'Equipo y mobiliario de oficina', 6, 'eyJpdiI6IkNjRVNUaTB1VTFiVUlkOEdNZXowVlE9PSIsInZhbHVlIjoiaERcL21JSUMxXC9uRmIyS2JaNlUxR1Q3b3ljMnJpKzU1Rm5aYzBTUUdISXFcL1AyY3VrKzdKUWYyQ2FTUHU1QnVVbCIsIm1hYyI6IjkzYmY0NzBlOWM3NjcxMGYzYTU0Y2FmOTZkOWEyMjNhNzUyMGI2YTZmMDkzNzJlNzIyYjJkMzZlYjQwZTc0ODEifQ==', '2015-04-06 04:50:18', '2015-04-06 04:50:18', NULL, 'egresos'),
(74, '', '', '01', '', '5', '05', '', '', '', 'Equipos y programas de computo ', 6, 'eyJpdiI6IjFFSHZKcE9sYUpUVVJTZHFwXC9jMUhnPT0iLCJ2YWx1ZSI6ImhsdGk1aHZHaytvR05jUnZJcUhNVDgxZGcwc2o2cnB5Sm1wK1VkYUNtWGtpNWgwTEp0Mk9vTllPWlVDQ0l1bEciLCJtYWMiOiJhM2ZhOWYxODkwZWQwMDQ0MmMzNDhiY2IzNWM3YzdjYThhMTY4MDcyNzdkY2VkZWI5YTUxOWZjM2FhOWRhNWZkIn0=', '2015-04-06 04:54:42', '2015-04-06 04:54:42', NULL, 'egresos'),
(75, '', '', '01', '', '5', '06', '', '', '', 'Equipo sanitario, de laboratorio e investigación ', 6, 'eyJpdiI6IllLWXBNRXpzTXVkUE5TWFo1cXkwVHc9PSIsInZhbHVlIjoiV3VUUlB5ZXR0bDA3U2JEOWhzbm9scUFqOVpVeGRjRHRKQXkxb09LckI0bWhqVkZkOXFVaGpjRFlBK3gzclo2Q3I3a3lxVFh0Z2VBcW5NRUw4VmVHMkE9PSIsIm1hYyI6ImY2OTk1YzA1YjIyNjljMWQwNzE0N2I1NjZjYTA2ZGIxMjliODNkZmFhNjhmZDA0NTY5Y2I', '2015-04-06 04:56:31', '2015-04-06 04:56:31', NULL, 'egresos'),
(76, '', '', '01', '', '5', '07', '', '', '', 'Equipo y mabiliario educaciona, deportivo y recreativo', 6, 'eyJpdiI6IjdWck5nU1NqMzFzQnlmWE11K29hVkE9PSIsInZhbHVlIjoiWWNSVGhVT1VSYUlSSXJaZ0Z3RXVZcms5d3MrQ21VNkhFTXZCYlpiV09acEZMb0ord2JSRVd3MVpzQXhUTE5sSHVcLzkrOG5tOExuVnk2MHJsSmpGQ3V3PT0iLCJtYWMiOiI1NDViMGY5YjYwZDVmNDYwMTc5NTE4Mjk3NDIwYzZiZGE1ZTczZDMzYTQwNzVmODJmNTJ', '2015-04-06 04:57:19', '2015-04-06 04:57:19', NULL, 'egresos'),
(77, '', '', '01', '', '5', '99', '', '', '', 'Maquinaria, equipo y mobiliario diverso ', 6, 'eyJpdiI6InliTzdGTzZmVVpGazN0cWRkNWpLY0E9PSIsInZhbHVlIjoiWUs5Q0RweDkzUTRYSnJPZTRzbGZwRXpHR2NTalRQNlQxVmpQUGpTWnF6RlpmemNTbkJsTkpFaE1aOHdiWXUzdFlZOFhkbTVPK2tYMmxJb0Z1SnltelE9PSIsIm1hYyI6ImM3MmI5ZmJmOWJmNjBkMWNmNWI0MmU5MDM5MjQ0ZGNlMDc3Y2YyMDkwOGQxODcyMGNmYWM', '2015-04-06 04:59:32', '2015-04-06 04:59:32', NULL, 'egresos'),
(78, '', '', '02', '', '5', '01', '', '', '', 'Edificios', 6, 'eyJpdiI6InJ4WWN1NjlOd3pHcW9ONVpRbXk2OUE9PSIsInZhbHVlIjoiWm12N2FtS2hBdlFTcmdqTVhVVjRzOTd0d0RUWHcyWElzVFk4QVN6VStOND0iLCJtYWMiOiIwYWQxYTM5M2U0OTczY2IzMWViODdlMGUxZjhhYTliM2M5NmM4YTQwMmY0NWNjNTAyYjYzZWMyMjU0YmI2YmQxIn0=', '2015-04-06 05:00:36', '2015-04-06 05:00:36', NULL, 'egresos'),
(79, '', '', '02', '', '5', '99', '', '', '', 'Otras construcciones, adiciones y mejoras', 6, 'eyJpdiI6ImV0WUVtR0k1N09HYUsyaVZTajZYWmc9PSIsInZhbHVlIjoiM25FYVhJK1Q3VGZPQnJETzd5XC96NHY3MDFIQ29ieEFRNytzenNUN3dNV0ZBWVRTZ2dBMlBENHdIZVpubzU4bFdpaGFxczRIaWtyN0hncytuZVBHdVRnPT0iLCJtYWMiOiIxN2NlN2JjMTA3ZjBkMGEyZTliMDMxN2I0NGQyZDk5NmU2NDgzMTRlMjU3ODhjMTk2ODZ', '2015-04-06 05:02:06', '2015-04-06 05:02:06', NULL, 'egresos'),
(80, '', '', '99', '', '5', '01', '', '', '', 'Semovientes', 6, 'eyJpdiI6IjgzcHpmZVlTZ3V3cjJZUjMwTUwrNmc9PSIsInZhbHVlIjoic2F4cnlGaEprZ3owK3JJdzVsUkJlN2ZpV2pLNWZRZ2hSRVlqdGdZejdwST0iLCJtYWMiOiI5NzFlYjQyMDE5Y2YxYzI0YjFmOWUwNzUxMDU2Mzg1M2I0MDliYzc0N2RjYmFiYTg0YzhhZmRlMjBmMDBmOTk0In0=', '2015-04-06 05:03:50', '2015-04-06 05:03:50', NULL, 'egresos'),
(81, '', '', '02', '', '6', '02', '', '', '', 'Becas a terceras personas', 7, 'eyJpdiI6ImNMV0pZYWQ2XC92VnI4cE9oaU51VzZRPT0iLCJ2YWx1ZSI6InZIdTNOTG5yUjlMNGFPQlBYVlJuNnV0cTFWRHdrSUdVZXNcL1FpTlwvQ0RVTEV4ZmNcL2I0cG05cmhqMm1cL0puUE1QIiwibWFjIjoiZDE4ZjA5M2FkNTgwMmM3Njc3ODU5MmU2YWNmNWFkNTU4MzNlODIxY2NiMTY5ZTEzYzY4ZmE2YTY4ODg3MGVkZiJ9', '2015-04-06 05:04:44', '2015-04-06 05:04:44', NULL, 'egresos'),
(82, '', '', '02', '', '6', '99', '', '', '', 'Otras transferencias a personas', 7, 'eyJpdiI6IlhEUGdUengxOXVkc2FRQzM3ODZnU2c9PSIsInZhbHVlIjoiUGFrMkw3SkhVSlZNZGs3M0owN2lDR21NSUlvWUtsTG9NU0pPR2VWWnlvYmNnVlQzcm5yeUxWVW5aNGVnOGM0UiIsIm1hYyI6IjU5MWM5OWI1YWI0MmY5YmYzYTc0YTVhOTRiNWM2ZDBjNDJhMTc1MmNlYzY3MmU4N2E0MWJjOWQzNWYzMzkwOTEifQ==', '2015-04-06 05:06:32', '2015-04-06 05:06:32', NULL, 'egresos'),
(83, '', '', '03', '', '6', '01', '', '', '', 'Prestaciones legales', 7, 'eyJpdiI6IkMxT3E4SnA0YzRvSmxiT2ZpczdWcGc9PSIsInZhbHVlIjoiaSt5NFBIRGVHNWl3Q3ZPQVBUWUFrWGd5ZmlBenh6ZnBSdnk1UGxzOWl5RT0iLCJtYWMiOiI5NzJkZWJiMWQ0MzNiOWM2YjFhY2M0M2I4Y2EyOWVmNzY0ZTE2MGRmM2I4OWU0MDJkMGEyY2M5OWQxNTI0OWYzIn0=', '2015-04-06 05:08:07', '2015-04-06 05:08:07', NULL, 'egresos'),
(84, '1', '3', '1', '2', '04', '01', '0', '0', '000', 'Alquiler de Edificios e Instalaciones', 1, 'eyJpdiI6Ik9RK28ram0xSkljSlhPZjNrRVwvaFFRPT0iLCJ2YWx1ZSI6IkJIcXduc0pBUW0ybmxRQnlIbldBNHZQcEVxYmxRZWQwNlRibTRPeFB3bjA9IiwibWFjIjoiNWVlYmVkZGQ3MDYyNGM3YjkwYWU0NzRiOGM5MWFmN2QyY2U0N2UyZTMzOWU4NGQ3Nzg5YWM3MjgwYmNlNGZmZSJ9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(85, '1', '3', '1', '2', '09', '09', '0', '0', '000', 'Venta de otros Servicios', 1, 'eyJpdiI6IjNpK1pka0s5a0pJdzltZHFFc2d5OUE9PSIsInZhbHVlIjoiazczVk9GSzJYVnpFMlZOeUNIVHVmaE1tcFRnd1dzWWkxSUNvOHJkSTZvND0iLCJtYWMiOiIxZGU3ZDRhODBhMDQyN2QyYjI1NzY3OTY5OGMyNWIxODdhODAxMDc5ZmMzNjJiYTY0YjU1YWU0ZjNjYmZjYWFiIn0=', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(86, '1', '4', '2', '0', '00', '00', '0', '0', '000', 'Transferencias Corrientes del Sector Privado', 1, 'eyJpdiI6Ikhmbm1ESlB6RHRFT2h5elVrZ2ZxYnc9PSIsInZhbHVlIjoiTFN6MXdFRThhcEgzTWhJbExYU2JLZz09IiwibWFjIjoiN2I2N2RkZGM1ODc0NDQzNWI1ZDJlZGIxYTM5NTM3YWU3M2VlMTBkZmVmYzkwMDg3MmFhYTFhOGQyMTgwZTI4MiJ9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(87, '1', '4', '1', '4', '00', '00', '0', '0', '000', 'Transferencias corrientes de gobierno locales', 1, 'eyJpdiI6Im52cE1ob0ZKdlJQOTRPUWFSVVwvUEpBPT0iLCJ2YWx1ZSI6IkJyYWdTZ1FPWDkrS3YwRzNwVDV3WWc9PSIsIm1hYyI6IjEzZjBmN2E4NWYxNjM0MjRjZTI5Mzc0MjYxN2YzMTAxYzZmMmM5YmJiMjMyYzU1NmMyMGQ2MmVkMjhiNzE0OWQifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(88, '', '', '01', '', '5', '05', '', '', '', 'Equipo y programas de computo', 6, 'eyJpdiI6IjBOb3pKaTNqblVrUXN3dEhLdHBxc2c9PSIsInZhbHVlIjoiOG5OdHdKTkg2M2FTUEt6Q04yXC9VUmc9PSIsIm1hYyI6IjFlMDgxODVjM2U3ZDYzNzM4ZjVkMDExMDMxOTA1NzIwMTJkYTMzZmUxMWIwNjU4ZDQ1ODUxMGNhNTExNjlhYTYifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'egresos'),
(89, '3', '3', '2', '0', '00', '00', '0', '0', '000', 'Superavit Especifico', 9, 'eyJpdiI6ImlKZkJuOEt3TkFDc1ZRbFc2dHdiU0E9PSIsInZhbHVlIjoieTFGdGNOQmFRVXpuRUxLMmUxWE5MUT09IiwibWFjIjoiZmU4MDgwMDVlODM3Yjk3YzE5OTU1ZTU1YjllOTQ4ZjI4OGQ3MzIyOWI3OTcyMWJhMGFiMTY1ZDcwMWM4OWE5YSJ9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(90, '1', '3', '1', '1', '01', '01', '0', '0', '001', 'Ventas de Productos Agricolas CTP-MEP', 1, 'eyJpdiI6IldsRzR3MHBpZTluTjR4RGIyWDNGbHc9PSIsInZhbHVlIjoiVlE2Y1l4XC9EUDF6SDN1S1pjNzJ0dXdiYndIXC9oOUc5aU5KdnFnaHJKVjJJPSIsIm1hYyI6IjI2MWM2OGU5ZGQ1MDcyOWUyYThkZjhiN2JlZDgyYzVmYWE4YzU3MTNlY2MwYTJiMjk2NzA3NDMyNzI0YWMwODYifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(91, '1', '3', '1', '1', '01', '02', '0', '0', '001', 'Ventas de semovientes-CTP-MEP', 1, 'eyJpdiI6IjU2SGVFblFUbDg4dnNtMHI4Qk9EUnc9PSIsInZhbHVlIjoiT0duVXhSRG8wUnRtM2dpTW1udndheDlsQjg4ZEM4Y0ROQmNmRkJnZDFMQT0iLCJtYWMiOiJkZjU4MjUwNGU3ZWYyYzM5YTZiZGFiNDdhNjZmNjhlN2FjOGEzY2U2YzYwNzBlOTI4YjdiYzJiNTA0MDIyYzhlIn0=', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(92, '1', '3', '1', '1', '09', '03', '0', '0', '001', 'Venta de reciclaje', 1, 'eyJpdiI6InVXR21JUnlzZWJHQU5cL2dkVGE4aHNBPT0iLCJ2YWx1ZSI6IjBSbEtXT0NVckJNUnlXeHlPK0tpYTZaQkY4d1FzQnZzMkx5M0FwQU1uWkk9IiwibWFjIjoiMmIyNzIwNjI1YjE4ZDE5MzkwZWIyOTg3ZDIwNTRhNmNjNGUzMTdjM2ZlNDU4MDYyMDgzOTQ4YWUyNTM0NjYyMCJ9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(93, '1', '3', '1', '2', '09', '09', '4', '0', '001', 'Ventas de servicios de CTP-MEP', 1, 'eyJpdiI6IllDV1RER3FCRmRGQWtzeHFFdWtUNmc9PSIsInZhbHVlIjoibG9NSEVDRTdzSmo4aHdhcHF2YVhVNFhudE41UTVJUEdBVFBRVGtuWWtyOD0iLCJtYWMiOiJiZGFjYmY2NjE1YzYwMTYwMjgxOTUxZmM1ZTA1NTI1ZDA0Zjk0NzI2MDI1YmZlYjRhZGI3MDA3ODI1Nzg2OGViIn0=', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(94, '1', '3', '1', '2', '09', '09', '5', '0', '001', 'ventas de productos Elaborado o Procesados CTP-MEP', 1, 'eyJpdiI6IlRkK21cL2tXT2pxRHY4NkFaZ29PMnlnPT0iLCJ2YWx1ZSI6ImkzaUFqbitTOFNHZFlVanhYM2I0dXVJcDZYNmhWdUlMaFlrbVwvMVpJRTZnPSIsIm1hYyI6Ijc3ZTI4ZmEzZDU3MzI1NTc1YjhiZDAzYzY5ZGQ5MWIyYTUyMjYzNjI0YjVkNzI0ZTkxOTBlZjM0MWVlZDBkYmUifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ingresos'),
(95, '', '', '99', '', '2', '02', '', '', '', 'Útiles y materiales médicos y de investigación', 5, 'eyJpdiI6InkydlpYZUZFcVNcLzI3V1ZYU2FzalFnPT0iLCJ2YWx1ZSI6InUraEtTMEtLbzNvVTc0TEJGWEJycGJVXC9VcXJscURwclJvYnZFc1k1d3RNU05ZalJhVzEzNnc4TFdlY05rTVVTa3ozM09XS290TG93V1oyTDVFTTE0Zz09IiwibWFjIjoiM2U2YjYwMjEzYmZhZGJmNTlmNzdhNTE0NGVlNzJlYmJmZWY5NjdjNDRiYjFkNWM5Mzd', '2015-04-06 05:12:18', '2015-04-06 05:12:18', NULL, 'egresos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `checks`
--

CREATE TABLE IF NOT EXISTS `checks` (
  `id` int(10) unsigned NOT NULL,
  `bill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `concept` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `retention` decimal(20,2) NOT NULL,
  `ckbill` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ckretention` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `simulation` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `vouchers_id` int(10) unsigned DEFAULT NULL,
  `balance_budgets_id` int(10) unsigned NOT NULL,
  `spreadsheets_id` int(10) unsigned NOT NULL,
  `suppliers_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `checks`
--

INSERT INTO `checks` (`id`, `bill`, `concept`, `amount`, `retention`, `ckbill`, `ckretention`, `record`, `date`, `simulation`, `vouchers_id`, `balance_budgets_id`, `spreadsheets_id`, `suppliers_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12547,9875', 'Pago de factura de vegetales1', '865240.00', '25000.00', '25-4', '7-4', 'Act-3/123', '2015-04-09', 'false', NULL, 8, 2, 1, 'eyJpdiI6InRmdVRcLzRrOXN4NWY1ZVRMa2NlN3NnPT0iLCJ2YWx1ZSI6IjNCVWxKNXlFZmJIaWZnUkx5QVhEN0E9PSIsIm1hYyI6ImU3ODI4ZGEyMDQyZDYwNjczNTg5MDUzMWY4MGEzM2E2YzJhMDEzMTVhNjQ0ZjUwN2UyZmE3MDFhMDdiMGQxOTQifQ==', '2015-04-13 10:29:04', '2015-04-15 10:11:30', NULL),
(2, '001-1561', 'Servicio de Auditoría', '1200.00', '0.00', '001', '0', '123', '2015-10-15', 'false', NULL, 9, 2, 2, 'eyJpdiI6Im5KRlZxN2ZNUkp4eFwvS1NkU2hWRmJnPT0iLCJ2YWx1ZSI6ImJNQ205NkR5aWg5bnBhTnpINGtzaVE9PSIsIm1hYyI6IjRlNmI2MzFlZGE1MzczNGIzYmE0YjhkNWZlNDlhNDA4ODAzMGVlMTY2NzY5ZDYxODZhOTRmYjZiZDcwMGM5NzUifQ==', '2015-04-13 18:44:19', '2015-04-15 10:09:37', '2015-04-15 10:06:54'),
(3, '343432', 'Pago de verduras', '500620.00', '25000.00', '3-9', '25-9', 'Act.3/32', '2015-04-16', 'false', NULL, 8, 2, 1, 'eyJpdiI6InRNZmxYaE1VU1lBZmNBcFBkVDBvZHc9PSIsInZhbHVlIjoiK3A5UmJMMGZjME1ycm9TbVR0ZTNqZz09IiwibWFjIjoiZGRkYjcyYmE2N2QwNzZiM2RhZWRmYThmY2UzY2E4Y2I2YWNhYzE3MmY3MjE5OGYzYWQ5MzhlNzI1YmFiYzUwMiJ9', '2015-04-19 13:41:06', '2015-04-19 13:41:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('ingresos','egresos') COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `code`, `name`, `type`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'INGRESOS CORRIENTES', 'ingresos', 'eyJpdiI6ImExOWFIRitBZENJQzhTUURURHhcL0hRPT0iLCJ2YWx1ZSI6IndGQ2o0enNlYVA3cFE2ODRhbVVwZnE1ZWNUMndjbE1xTXJJUDNDUllsWDQ9IiwibWFjIjoiY2U3ZWNiMjExOWZlY2I3MmQxNTIzN2E2ZDE0OTE5NjI0YzJkNjMyOWRiYWQ2MThhM2RkNzAzNjE5NjY5NDlmMyJ9', '0000-00-00 00:00:00', '2015-04-06 02:43:36', NULL),
(2, '2', 'INGRESOS DE CAPITAL', 'ingresos', 'eyJpdiI6IlwvMVRzRWlSMnlZMkErcTJcL2xVajVidz09IiwidmFsdWUiOiJSWm9ocXlzM0U1U09mNzNuWlVVTUg3aUFZaXd4TmJ0S09RTFwvZTZTWXpkYz0iLCJtYWMiOiI5ZjM3YzJmYWJjNTBkZGU5YmRmMDA4NjgwMzUyOTE3Mjk4MzI0ODViMDUxZmZhZmY0YzQyZjVlN2IyOTEyYTRkIn0=', '0000-00-00 00:00:00', '2015-04-05 09:11:55', NULL),
(3, '0', 'REMUNERACIONES', 'egresos', 'eyJpdiI6IlhqS3Z3aG5IQnJHU1RVZGtLUHNjbVE9PSIsInZhbHVlIjoiVGx3T3VNcUNCNkI0NFZ5aWRLWGZEcnFCQ0Y5ZFFKRWtEbHpPVWxEZG5HST0iLCJtYWMiOiI5M2U4ZTBhMWRlZWViY2Q4MzUzMTFlNjIyMTllNmNmYWZkMmM3MTU0YzIyZGNiM2NiZmVhNDc3MDc2MDdmZWE3In0=', '0000-00-00 00:00:00', '2015-04-06 02:43:30', NULL),
(4, '1', 'SERVICIOS', 'egresos', 'eyJpdiI6IlB6M0pPd0lXQ0ltdmhwZFo0ZkRMbXc9PSIsInZhbHVlIjoiQll4blluNXJ3TjJpUDBsWjBJUDlpMFYxREFTNVJsTTRHd1pUT2UzMjdmOD0iLCJtYWMiOiJhYTc3ZDc4OGMwMDNlMjI1YWRmNjMzZTI5YzZjYWIxZTgzMWY2YzM1YTJlMWI4OWM2ZjFlODg5ZDhkZDg0NTFkIn0=', '0000-00-00 00:00:00', '2015-04-05 09:12:03', NULL),
(5, '2', 'MATERIALES Y SUMINISTROS', 'egresos', 'eyJpdiI6IktuMDNRWlV3VEJ6TnRtcmxzSmgwNXc9PSIsInZhbHVlIjoiTitPcDNjbmV0YlFIbmV0aUkyWG5UdG1hcmFxUUVxSVhaSDlpa2xodFZRa1hYMVwvd1RYYW1iMEZoMHU0K3ZuTm4iLCJtYWMiOiIxMWZiODIwYzc1ODg0M2M2ODk4N2M2NWNlYWE0OTIzMWQ2N2RhOGNiZjIzMzQxNGJmZjkwMGU5MjE4ODg5ZmJlIn0=', '0000-00-00 00:00:00', '2015-04-05 07:39:34', NULL),
(6, '5', 'BIENES DURADEROS', 'egresos', 'eyJpdiI6IlwvalNjYjVxdnIwcUZ0eWxyMWFqT2ZRPT0iLCJ2YWx1ZSI6Ijh1SjROV0hIa25KYVlrQ1B1UWVpYUFKM1UwYnpVM25nZWhoRzRha09TXC9NPSIsIm1hYyI6ImY2Y2NjYjhiMTBmYWVmZTZiZGI3ZDIxYjQ1ZDJjZDRlMDRjY2UzMjhkNjI4YmU2NGE4NDExODExYzY3NjVmYTUifQ==', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, '6', 'TRANSFERENCIAS CORRIENTES', 'egresos', 'eyJpdiI6ImNPK0tEZWZ0Tnphemh3NUs4V2pxOHc9PSIsInZhbHVlIjoiT0hiNGxTY3VON2NtS0ZSbkdcL3k5UTdsc0JGNGpjRnZUMzZiTnIrWGNnSWR5VU9YU3U0U3ZZeHg5THJkY01vNXIiLCJtYWMiOiJkZTMxOWM2NTgwMzBjNTA2MzE1OGE2NzVhZDk0ZjU1ODZkMjBmZTE4NDk4NjgwMWRhNmMzNDc4YzY0ZDczZDhjIn0=', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, '7', 'SUMINISTROS', 'egresos', 'eyJpdiI6ImZVak9ISHlyVjNyWVJ3ZjA5YUJcL25nPT0iLCJ2YWx1ZSI6IndQTlhveTBTQ0dEWHBLTVZKXC9zSStXTUx1MHNFUGhRSVNja1V2cUNPaFwvQT0iLCJtYWMiOiIzNTI3OTY5NmU2NWViYzQwYWJhNDgyZDY1YTY2MDkwMGFhNDUxNjkyNTMyYjZhZTY0MTcxMzc1NTcyYjFiMTVlIn0=', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, '3', 'FINANCIAMIENTOS', 'egresos', 'eyJpdiI6IlJCbXpwREVcL1ZMcm1qbUtFbDNJSm1BPT0iLCJ2YWx1ZSI6InltRHFQY2luaU5SOWdQTGNzZmZNSUt2d3l2VUU4allvNG8wU3JVdjNUTE09IiwibWFjIjoiMGZkMDE3YmRiZmQ4ZWRkMDM1MjM1MTNjZDNjMjFhMTkzYmQ3NjczY2I0NjdjMWVmZmZlMmRkYjk4ZTExZTE1NyJ9', '0000-00-00 00:00:00', '2015-04-05 07:40:15', NULL),
(10, '4', 'TEST', 'egresos', 'eyJpdiI6IjdlOTh6UWZoK0dnbHExcVVaVWQxVlE9PSIsInZhbHVlIjoidEVKRk5GdERRNjZFNUpzUXU1Mk91UT09IiwibWFjIjoiMmQ3ZmRhZWNhYWRjZjMxYTVlY2U4ZWQ2ZjNhMzRhMmQzNDFkYjVjMTZmNzZkMDE5NTUxMTBmYThkZjRlYTAzZiJ9', '2015-04-05 07:42:10', '2015-04-06 02:44:26', NULL),
(11, '22', 'Prueba 1', 'egresos', 'eyJpdiI6Im5vVExoa3RMNnVlVnpxdk5tM2NWcXc9PSIsInZhbHVlIjoiQVlYUHdJalVxVXR2U1p6QTJ0Wmgydz09IiwibWFjIjoiODFlMjZiNDMyMzBlZmM5MGRjOTQ0NDU0MzMzODZkNzcyMTk5OGVjNmYwYmNhNzE2OTA4YzRmM2M3ODgxNTU5YiJ9', '2015-04-05 21:37:40', '2015-04-06 00:04:49', NULL),
(12, '222', 'Prueba 3', 'egresos', 'eyJpdiI6IkVSM2VRVlU4dHlrd3c3anB4VTNYT1E9PSIsInZhbHVlIjoid2ZaUE82WVNRYjVVK0JlMllpQlNFQT09IiwibWFjIjoiZWNjYWM4YjFmOTZlMjY3M2RlODg3NzM2MGQyMjVjZTRmNmU2NzMzYmFlMjAwODIwOWI5NDM0NzdjM2EyN2Y4ZiJ9', '2015-04-05 22:56:04', '2015-04-05 22:56:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MENU', '/MENUS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'USUARIOS', '/USUARIOS', '0000-00-00 00:00:00', '2015-03-25 21:41:13', NULL),
(3, 'PRESUPUESTO', '/PRESUPUESTO', '2015-03-25 19:26:51', '2015-03-25 19:26:51', NULL),
(4, 'TIPOS DE PRESUPUESTOS', '/TIPO-DE-PRESUPUESTOS', '2015-03-25 19:27:35', '2015-03-25 21:42:09', NULL),
(5, 'CATALOGO', '/CATALOGO', '2015-03-25 19:28:40', '2015-03-25 19:28:40', NULL),
(6, 'GRUPO DE CUENTAS', '/GRUPOS', '2015-03-25 19:29:18', '2015-03-25 19:29:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_task`
--

CREATE TABLE IF NOT EXISTS `menu_task` (
  `task_id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menu_task`
--

INSERT INTO `menu_task` (`task_id`, `menu_id`, `status`) VALUES
(1, 3, 1),
(2, 3, 1),
(3, 3, 1),
(4, 3, 0),
(5, 3, 0),
(1, 5, 1),
(2, 5, 1),
(3, 5, 1),
(4, 5, 1),
(5, 5, 0),
(1, 6, 1),
(2, 6, 1),
(3, 6, 1),
(4, 6, 1),
(5, 6, 0),
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(4, 1, 1),
(5, 1, 0),
(1, 2, 1),
(2, 2, 1),
(3, 2, 1),
(4, 2, 1),
(5, 2, 0),
(1, 4, 1),
(2, 4, 1),
(3, 4, 1),
(4, 4, 1),
(5, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_02_09_001_create_suppliers_table', 1),
('2015_02_09_002_create_vouchers_table', 1),
('2015_02_09_00_create_type_users_table', 1),
('2015_02_09_01_create_users_table', 1),
('2015_02_09_02_create_password_resets_table', 1),
('2015_02_09_03_create_groups_table', 1),
('2015_02_09_04_create_types_budgets_table', 1),
('2015_02_09_05_create_schools_table', 1),
('2015_02_09_06_create_school_user_table', 1),
('2015_02_09_08_create_tasks_table', 1),
('2015_02_09_09_create_supports_table', 1),
('2015_02_09_10_create_banks_table', 1),
('2015_02_09_11_create_budgets_table', 1),
('2015_02_09_12_create_catalogs_table', 1),
('2015_02_09_13_create_spreadsheets_table', 1),
('2015_02_09_14_create_balance_budgets_table', 1),
('2015_02_09_15_create_checks_table', 1),
('2015_02_09_16_create_transfers_table', 1),
('2015_02_09_17_create_balance_table', 1),
('2015_02_18_143417_create_menus_table', 1),
('2015_02_18_143835_create_menu_task_table', 1),
('2015_02_18_143911_create_menu_user_table', 1),
('2015_04_29_173647_create_budget_type_budget_table', 2),
('2015_04_30_021337_create_budget_group_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Laravel'),
(2, 'Yii');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `charter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circuit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ffinancing` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `president` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secretary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titleOne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titleTwo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `charter`, `circuit`, `code`, `ffinancing`, `president`, `secretary`, `account`, `titleOne`, `titleTwo`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'COLEGIO TECNICO PROFESIONAL DE QUEPOS', '3-008-056720', '01', '5748', 'LEY 6746 FONDO GENERAL PARA JUNTAS DE EDUCACIÓN Y ADMINISTRATIVAS', '', '', '', 'MINISTERIO DE EDUCACIÓN PÚBLICA', 'DIRECCIÓN REGIONAL DE EDUCACIÓN DE AGUIRRE', 'qkwewqkewqklqeklkl123asqwe', '0000-00-00 00:00:00', '2015-03-24 10:19:21', NULL),
(2, 'Colegio De Piura1', '123', '123', '123', 'LEY 6746 FONDO GENERAL PARA JUNTAS DE EDUCACIÓN Y ADMINISTRATIVAS', 'Prueba', 'Prueba', '123', 'Prueba', 'Prueba', 'qkwewqkewqklqeklkl123', '0000-00-00 00:00:00', '2015-04-06 02:16:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_user`
--

CREATE TABLE IF NOT EXISTS `school_user` (
  `school_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `school_user`
--

INSERT INTO `school_user` (`school_id`, `user_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spreadsheets`
--

CREATE TABLE IF NOT EXISTS `spreadsheets` (
  `id` int(10) unsigned NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `simulation` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `budgets_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `spreadsheets`
--

INSERT INTO `spreadsheets` (`id`, `number`, `year`, `date`, `simulation`, `budgets_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11', '2014', '2015-04-29', 'false', 1, 'eyJpdiI6ImplVTZ0Tkgralp5ZnQrK091d3BjR3c9PSIsInZhbHVlIjoiOFVUcFR4cW9aQ0pSTEVNUHlqT1VpUT09IiwibWFjIjoiYTI4NTU5ZDU3Zjk5OGVkMDZhOWFjODU3ZjJhMDliYzMyMWRlODg3ZDE4ZWRhNGFhNDI0MTViZjI4YTU5MDYxZSJ9', '2015-04-13 02:17:51', '2015-04-13 05:15:23', NULL),
(2, '02', '2015', '2015-04-29', 'false', 1, 'eyJpdiI6IjVcL2tLSnczWUVldHZXN3hsdW5sSkZ3PT0iLCJ2YWx1ZSI6IjlvREhhY0djZTdEV3VTZk9Na0MxQ2c9PSIsIm1hYyI6IjdjMzBkMjY0MTk3ODg2YzdhY2NkYzY4Njc0ZTBlODVjNzZkOTgxZTUyYTc1ZmM2MDk1ZDQ3MGM0ZWFjYTI3MTYifQ==', '2015-04-13 02:19:30', '2015-04-13 02:19:30', NULL),
(3, '03', '2015', '2015-04-01', 'false', 1, 'eyJpdiI6ImZCQ3BHNGdiYW8wM2Vtbm5LOHk2bHc9PSIsInZhbHVlIjoidlptSTdsRWFvcGJ4WUdoK0NHbUN5QT09IiwibWFjIjoiZDU0MWY5NjI1YzA0ZDY5MDUxZTE0ZGVkM2IyMTcxODJhY2Y3YWI1YTc3YzMyOTEzOGY2MGFlN2JiYmUxMDdkZiJ9', '2015-04-13 02:36:38', '2015-04-13 02:36:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(10) unsigned NOT NULL,
  `charter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `charter`, `name`, `phone`, `email`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1-11320-776', 'Stephanie Robles Ortega', '27852529', 'roblesteph@hotmail.com', '907e3d35dcbef0b6c8bce72dd9e820d0d676c202', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, '1', 'Test', '123123', 'asd@123.com', 'eyJpdiI6IkxUeTFGZ3YwVU1XYzlKZzRTTDVMaGc9PSIsInZhbHVlIjoiaDgwemZXWkFKUGtCRTFnUjRsUFA1UT09IiwibWFjIjoiZGJlNGEwNmE5MGQ5YTAwZmZjNDJlNzEzNGQwNzhmNzQ4MjBlOGViNmNmZmJlMWE5ZTA2MDVjOGFiZDA0OWUxYSJ9', '2015-04-06 07:57:41', '2015-04-06 07:58:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supports`
--

CREATE TABLE IF NOT EXISTS `supports` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ver', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Crear', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Editar', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'Eliminar', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'Reportes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task_user`
--

CREATE TABLE IF NOT EXISTS `task_user` (
  `user_id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `task_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `task_user`
--

INSERT INTO `task_user` (`user_id`, `menu_id`, `task_id`, `status`) VALUES
(2, 1, 1, 0),
(2, 1, 2, 0),
(2, 1, 4, 0),
(2, 2, 1, 0),
(2, 2, 2, 0),
(2, 2, 3, 0),
(2, 2, 4, 0),
(2, 3, 1, 0),
(2, 3, 2, 0),
(2, 3, 3, 0),
(2, 4, 1, 0),
(2, 4, 2, 0),
(2, 4, 3, 0),
(2, 4, 4, 0),
(2, 5, 1, 0),
(2, 5, 2, 0),
(2, 5, 3, 0),
(2, 5, 4, 0),
(2, 6, 1, 0),
(2, 6, 2, 0),
(2, 6, 3, 0),
(2, 6, 4, 0),
(1, 1, 1, 1),
(1, 1, 2, 1),
(1, 1, 4, 1),
(1, 2, 1, 1),
(1, 2, 2, 1),
(1, 2, 3, 1),
(1, 2, 4, 1),
(1, 3, 1, 1),
(1, 3, 2, 0),
(1, 3, 3, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 1),
(1, 5, 1, 1),
(1, 5, 2, 0),
(1, 5, 3, 0),
(1, 5, 4, 0),
(1, 6, 1, 1),
(1, 6, 2, 1),
(1, 6, 3, 0),
(1, 6, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `code` int(10) unsigned NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `type` enum('entrada','salida') COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `simulation` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `balance_budgets_id` int(10) unsigned NOT NULL,
  `spreadsheets_id` int(10) unsigned NOT NULL,
  `token` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `transfers`
--

INSERT INTO `transfers` (`code`, `amount`, `type`, `date`, `simulation`, `balance_budgets_id`, `spreadsheets_id`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1330.00', 'entrada', '2015-04-20', 'false', 8, 2, 'eyJpdiI6InlJNVVHaitRSitWeEpVQkxjQWhzUlE9PSIsInZhbHVlIjoidlVmSU1JUWZVb2NlSVNlTkwwaHBhdz09IiwibWFjIjoiOTk2M2QwNTEzZWUyNzk2ZTgyM2ZiY2YzN2E2YjYwMDJkNTAxODMxNDA3ODc5NDIzYzA5NWZmODIyZTc5ODdhNiJ9', '2015-04-22 05:10:49', '2015-04-19 11:35:24', NULL),
(1, '350.00', 'salida', '2015-04-20', 'false', 10, 2, 'eyJpdiI6InlJNVVHaitRSitWeEpVQkxjQWhzUlE9PSIsInZhbHVlIjoidlVmSU1JUWZVb2NlSVNlTkwwaHBhdz09IiwibWFjIjoiOTk2M2QwNTEzZWUyNzk2ZTgyM2ZiY2YzN2E2YjYwMDJkNTAxODMxNDA3ODc5NDIzYzA5NWZmODIyZTc5ODdhNiJ9', '2015-04-22 05:05:28', '2015-04-19 11:35:23', NULL),
(1, '530.00', 'salida', '2015-04-20', 'false', 12, 2, 'eyJpdiI6InlJNVVHaitRSitWeEpVQkxjQWhzUlE9PSIsInZhbHVlIjoidlVmSU1JUWZVb2NlSVNlTkwwaHBhdz09IiwibWFjIjoiOTk2M2QwNTEzZWUyNzk2ZTgyM2ZiY2YzN2E2YjYwMDJkNTAxODMxNDA3ODc5NDIzYzA5NWZmODIyZTc5ODdhNiJ9', '2015-04-22 05:05:30', '2015-04-19 11:35:22', NULL),
(1, '450.00', 'salida', '2015-04-20', 'false', 13, 2, 'eyJpdiI6InlJNVVHaitRSitWeEpVQkxjQWhzUlE9PSIsInZhbHVlIjoidlVmSU1JUWZVb2NlSVNlTkwwaHBhdz09IiwibWFjIjoiOTk2M2QwNTEzZWUyNzk2ZTgyM2ZiY2YzN2E2YjYwMDJkNTAxODMxNDA3ODc5NDIzYzA5NWZmODIyZTc5ODdhNiJ9', '2015-04-22 10:12:19', '2015-04-22 10:12:19', NULL),
(9, '150000.00', 'salida', '2015-04-09', 'false', 8, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:09', '2015-04-22 10:45:09', NULL),
(9, '350000.00', 'salida', '2015-04-09', 'false', 9, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:09', '2015-04-22 10:45:09', NULL),
(9, '450000.00', 'salida', '2015-04-09', 'false', 10, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:10', '2015-04-22 10:45:10', NULL),
(9, '550000.00', 'salida', '2015-04-09', 'false', 11, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:10', '2015-04-22 10:45:10', NULL),
(9, '650000.00', 'salida', '2015-04-09', 'false', 12, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:11', '2015-04-22 10:45:11', NULL),
(9, '2150000.00', 'entrada', '2015-04-09', 'false', 13, 2, 'eyJpdiI6ImZVbnZlampcL2NzKzNwTzNkeGhORmdnPT0iLCJ2YWx1ZSI6IitXRWdVOU5Zak5RYlwvVXhZOW5UdE9RPT0iLCJtYWMiOiIwNmU2MWViZWU5Yjc4ZDY1ZTI0NzIwMThmYWYwMzNkOGExZmE3NTE4MzY3NzQ1ZTVhZGNiYzMxNjZmMWYyNzk1In0=', '2015-04-22 10:45:11', '2015-04-22 10:45:11', NULL),
(10, '5433.00', 'salida', '2015-02-19', 'false', 8, 2, 'eyJpdiI6IkgwVEdCVTV2QjVwNmFQd3RoS01oSkE9PSIsInZhbHVlIjoia0xDUkg0Q2d3MmE3YVpwZGd0bmpvdz09IiwibWFjIjoiYmI5YjEwOTMxZjI1NWQ1MGUyY2EwMTFjN2VhMWY3ZWY4OGM0Y2FkZDQ2MjEzZTA2MGEwYmIxMWQyNjQzZjhiZiJ9', '2015-05-10 07:20:34', '2015-05-10 07:20:34', NULL),
(10, '5433.00', 'entrada', '2015-02-19', 'false', 12, 2, 'eyJpdiI6IkgwVEdCVTV2QjVwNmFQd3RoS01oSkE9PSIsInZhbHVlIjoia0xDUkg0Q2d3MmE3YVpwZGd0bmpvdz09IiwibWFjIjoiYmI5YjEwOTMxZjI1NWQ1MGUyY2EwMTFjN2VhMWY3ZWY4OGM0Y2FkZDQ2MjEzZTA2MGEwYmIxMWQyNjQzZjhiZiJ9', '2015-05-10 07:20:35', '2015-05-10 07:20:35', NULL),
(11, '200.00', 'entrada', '2015-02-12', 'false', 8, 2, 'eyJpdiI6Ik81V0d6cm1iK1k4cUprRXVTTlRtRFE9PSIsInZhbHVlIjoiQnZ5ZkUxVFdBVHBLVm42MFQzNlF6Zz09IiwibWFjIjoiMDUyYjE1ZjM4Yjg5MGE2OWJhZmVhYmE2YzlhYjIxY2U4YzQ4NmZiYzRmYzQ4MjJmMTUzN2QzYTA4MjNhMDJmNCJ9', '2015-05-10 07:20:41', '2015-05-10 07:20:41', NULL),
(11, '200.00', 'salida', '2015-02-12', 'false', 10, 2, 'eyJpdiI6Ik81V0d6cm1iK1k4cUprRXVTTlRtRFE9PSIsInZhbHVlIjoiQnZ5ZkUxVFdBVHBLVm42MFQzNlF6Zz09IiwibWFjIjoiMDUyYjE1ZjM4Yjg5MGE2OWJhZmVhYmE2YzlhYjIxY2U4YzQ4NmZiYzRmYzQ4MjJmMTUzN2QzYTA4MjNhMDJmNCJ9', '2015-05-10 07:20:41', '2015-05-10 07:20:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_budgets`
--

CREATE TABLE IF NOT EXISTS `type_budgets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `type_budgets`
--

INSERT INTO `type_budgets` (`id`, `name`, `token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'COLEGIO  (III y IV CICLO)', 'eyJpdiI6InJqK243b0pwK3pZRERcL0MybnE4b3RRPT0iLCJ2YWx1ZSI6IjJwbDYyVkVhVkdCSXFZalFuaXRZbmc9PSIsIm1hYyI6IjJhYmEzYWY2ZjQxNWRjOWQ4NDZjOTU1ZmYxNjg4ZmI4M2I3MGI3YTQyODU1ZmQwZDc5NTBiY2MzNTdmYmU4ZWYifQ==', '2015-04-05 08:05:25', '2015-04-05 09:37:12', NULL),
(2, 'PREESCOLAR', 'eyJpdiI6IkkzcmJqZnR0R3IyTHQ2bGJGb09EVlE9PSIsInZhbHVlIjoiTWFoQVVrQzVUWkdUXC9DYmtGZm9SQ3c9PSIsIm1hYyI6IjRhMjM0NzY3ZjFjOTRjN2FhODEzYTBlOTk2MjM0ZjMxMDc4MzIwNDY1M2Y3ZDc5YmE4MzdlNTNmYWRmMGE0ZDYifQ==', '2015-04-05 08:49:53', '2015-04-05 10:01:39', NULL),
(3, 'ESCUELA DIURNA (I Y II CICLO)', 'eyJpdiI6Ikx1UlFqRGplRHMrOE1iNGRwUGljb0E9PSIsInZhbHVlIjoiNG9wOWlkeVBlQzlQeEpiUmQ2dFl5dz09IiwibWFjIjoiZmUxYjBhOWY3ZDg3MGEwN2UxZDg2NjM3ZTE0NGMxYzg5YjMxYzVhYmQ2ZGY3ZmU2NTRlMTkwMjMyZWNmMmExMyJ9', '2015-04-05 08:55:13', '2015-04-13 09:52:16', NULL),
(4, 'NUEVAS OPORTUNIDADES', 'eyJpdiI6Imt4SjNSMkk3c21nMythOTlYRStMOWc9PSIsInZhbHVlIjoiY1pCNjJsSGw0Mm8rTHZ5bndld2VEZ0ltK2ZzMGMyV3loQ0dNNU5iRGE4TT0iLCJtYWMiOiJiY2M5YTk3NjAwZjI1ZWM3OTI3ZTcwYTQxZDQ5N2RiMWJjYzE4MDAzMjcyM2NlMzdmMzY2ODVlY2E1ODU5MjMzIn0=', '2015-04-13 09:52:52', '2015-04-13 09:52:52', NULL),
(5, 'EDUCACION TECNICA', 'eyJpdiI6Ik40aUR3SGw5TTZzVFhiSE1DUlhndmc9PSIsInZhbHVlIjoiYWF0OVgyTEh2ajZKSkY0VGlMXC9mMGwrNlVkUlhuaDFHT1JrSE1LQmxwTE09IiwibWFjIjoiZmNiZDU1ZWNmODgwMzhmZWY0YjAxNzQ5MDgwYmFlYmJmODQxNTkzMGMxZGQ5MWI2M2JmZGU2ZTlmZDJiMmEyZSJ9', '2015-04-13 09:53:02', '2015-04-13 09:53:02', NULL),
(6, 'EDUCACION ESPECIAL', 'eyJpdiI6Ikg3UlYzWEFOclhqMWx0OVJIUTBiZGc9PSIsInZhbHVlIjoiS3FzY2NTd1IyVlwvb05uM1dkYWFadDBTbGVDM3ZzZ0ZWeFVpRXRFRnFpUzA9IiwibWFjIjoiYWU2MGViZGYxNjY0ZWUxZDA2NmRhN2Q5YThiMjliODBhMDI1ZmNkZTlmNTczZTI3YjJiYzM0NTg0NGNmYzVhYSJ9', '2015-04-13 09:53:14', '2015-04-13 09:53:14', NULL),
(7, 'EDUCACION ADULTOS', 'eyJpdiI6InhqM3hqeGxVK2dIR1dNTW1aNVVmYXc9PSIsInZhbHVlIjoiNzcyS2RcLzRiSEJpdkVTRXF5cjNvWW1mdEZqZlwvUEFZVUNoWHU0S3RUZ1FBPSIsIm1hYyI6IjJiNjRmNDIyMWM1MDc0MTM4ZThhZjZhMDhkNTY1YjEwYjc2MzA2NGYwOGRlZGIyN2E0MWY2NzZlMmEwZDU5YTAifQ==', '2015-04-13 09:53:24', '2015-04-13 09:53:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_users`
--

CREATE TABLE IF NOT EXISTS `type_users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `type_users`
--

INSERT INTO `type_users` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Administrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Administrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Contador', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'Director', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'Presidente Junta', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_users_id` int(10) unsigned NOT NULL,
  `suppliers_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last`, `email`, `password`, `type_users_id`, `suppliers_id`, `token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Francisco', 'Gamonal ', 'hfgamonalb@gmail.com', '$2y$10$N2obNYup/yhFwa0YsaowdO9AhNNfIx62N0BHRmfi8o6RN7CUgTfoi', 1, NULL, 'dds42rwsfw32ddsaf2r3qcd1b56', 'XvabKhFHWBl5ROwJatDvh3yPaLpkkdIGE6SgxShQOjCiOun2YFRew9aEvs6A', '0000-00-00 00:00:00', '2015-05-15 11:39:26', NULL),
(2, 'Anwar', 'Sarmiento1', 'anwarsarmiento@gmail.com', '$2y$10$N2obNYup/yhFwa0YsaowdO9AhNNfIx62N0BHRmfi8o6RN7CUgTfoi', 1, NULL, '', 'XaehgD2fXChLxOeuYTFH1wgBLTHlLP2YhWBCStlo7RcRXP2Sxlw9bzbSqP6V', '0000-00-00 00:00:00', '2015-05-15 11:39:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vouchers`
--

CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(10) unsigned NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suppliers_id` int(10) unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`), ADD KEY `balance_balance_budgets_id_index` (`balance_budgets_id`), ADD KEY `balance_checks_id_index` (`checks_id`), ADD KEY `balance_transfers_id_index` (`transfers_code`), ADD KEY `transfers_balance_budgets_id` (`transfers_balance_budgets_id`);

--
-- Indices de la tabla `balance_budgets`
--
ALTER TABLE `balance_budgets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `balance_budgets_token_unique` (`token`), ADD KEY `balance_budgets_catalogs_id_index` (`catalogs_id`), ADD KEY `balance_budgets_budgets_id_index` (`budgets_id`), ADD KEY `balance_budgets_types_budgets_id_index` (`types_budgets_id`);

--
-- Indices de la tabla `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `banks_token_unique` (`token`);

--
-- Indices de la tabla `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `budgets_token_unique` (`token`), ADD KEY `budgets_schools_id_index` (`schools_id`);

--
-- Indices de la tabla `budget_group`
--
ALTER TABLE `budget_group`
  ADD KEY `budget_group_budget_id_index` (`budget_id`), ADD KEY `budget_group_group_id_index` (`group_id`);

--
-- Indices de la tabla `budget_type_budget`
--
ALTER TABLE `budget_type_budget`
  ADD KEY `budget_type_budget_budget_id_index` (`budget_id`), ADD KEY `budget_type_budget_type_budget_id_index` (`type_budget_id`);

--
-- Indices de la tabla `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `catalogs_token_unique` (`token`), ADD KEY `catalogs_groups_id_index` (`groups_id`);

--
-- Indices de la tabla `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `checks_token_unique` (`token`), ADD KEY `checks_vouchers_id_index` (`vouchers_id`), ADD KEY `checks_balance_budgets_id_index` (`balance_budgets_id`), ADD KEY `checks_spreadsheets_id_index` (`spreadsheets_id`), ADD KEY `checks_suppliers_id_index` (`suppliers_id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `groups_token_unique` (`token`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `menus_name_unique` (`name`), ADD UNIQUE KEY `menus_url_unique` (`url`);

--
-- Indices de la tabla `menu_task`
--
ALTER TABLE `menu_task`
  ADD KEY `menu_task_task_id_index` (`task_id`), ADD KEY `menu_task_menu_id_index` (`menu_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `schools_token_unique` (`token`);

--
-- Indices de la tabla `school_user`
--
ALTER TABLE `school_user`
  ADD KEY `school_user_school_id_index` (`school_id`), ADD KEY `school_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `spreadsheets`
--
ALTER TABLE `spreadsheets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `spreadsheets_token_unique` (`token`), ADD KEY `spreadsheets_budgets_id_index` (`budgets_id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `suppliers_email_unique` (`email`), ADD UNIQUE KEY `suppliers_token_unique` (`token`);

--
-- Indices de la tabla `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `supports_token_unique` (`token`), ADD KEY `supports_users_id_index` (`users_id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `task_user`
--
ALTER TABLE `task_user`
  ADD KEY `menu_user_task_id_index` (`task_id`), ADD KEY `menu_user_menu_id_index` (`menu_id`), ADD KEY `menu_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`code`,`balance_budgets_id`), ADD KEY `spreadsheets_id` (`spreadsheets_id`), ADD KEY `balance_budgets_id` (`balance_budgets_id`);

--
-- Indices de la tabla `type_budgets`
--
ALTER TABLE `type_budgets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `types_budgets_token_unique` (`token`);

--
-- Indices de la tabla `type_users`
--
ALTER TABLE `type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_token_unique` (`token`), ADD KEY `users_type_users_id_index` (`type_users_id`), ADD KEY `users_suppliers_id_index` (`suppliers_id`);

--
-- Indices de la tabla `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vouchers_token_unique` (`token`), ADD KEY `vouchers_suppliers_id_index` (`suppliers_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT de la tabla `balance_budgets`
--
ALTER TABLE `balance_budgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `spreadsheets`
--
ALTER TABLE `spreadsheets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `type_budgets`
--
ALTER TABLE `type_budgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `type_users`
--
ALTER TABLE `type_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `balances`
--
ALTER TABLE `balances`
ADD CONSTRAINT `balances_ibfk_1` FOREIGN KEY (`balance_budgets_id`) REFERENCES `balance_budgets` (`id`),
ADD CONSTRAINT `balance_checks_id_foreign` FOREIGN KEY (`checks_id`) REFERENCES `checks` (`id`);

--
-- Filtros para la tabla `balance_budgets`
--
ALTER TABLE `balance_budgets`
ADD CONSTRAINT `balance_budgets_budgets_id_foreign` FOREIGN KEY (`budgets_id`) REFERENCES `budgets` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `balance_budgets_catalogs_id_foreign` FOREIGN KEY (`catalogs_id`) REFERENCES `catalogs` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `balance_budgets_types_budgets_id_foreign` FOREIGN KEY (`types_budgets_id`) REFERENCES `type_budgets` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `budgets`
--
ALTER TABLE `budgets`
ADD CONSTRAINT `budgets_schools_id_foreign` FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `budget_group`
--
ALTER TABLE `budget_group`
ADD CONSTRAINT `budget_group_budget_id_foreign` FOREIGN KEY (`budget_id`) REFERENCES `budgets` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `budget_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `budget_type_budget`
--
ALTER TABLE `budget_type_budget`
ADD CONSTRAINT `budget_type_budget_budget_id_foreign` FOREIGN KEY (`budget_id`) REFERENCES `budgets` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `budget_type_budget_type_budget_id_foreign` FOREIGN KEY (`type_budget_id`) REFERENCES `type_budgets` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `catalogs`
--
ALTER TABLE `catalogs`
ADD CONSTRAINT `catalogs_groups_id_foreign` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `checks`
--
ALTER TABLE `checks`
ADD CONSTRAINT `checks_balance_budgets_id_foreign` FOREIGN KEY (`balance_budgets_id`) REFERENCES `balance_budgets` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `checks_spreadsheets_id_foreign` FOREIGN KEY (`spreadsheets_id`) REFERENCES `spreadsheets` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `checks_suppliers_id_foreign` FOREIGN KEY (`suppliers_id`) REFERENCES `suppliers` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `checks_vouchers_id_foreign` FOREIGN KEY (`vouchers_id`) REFERENCES `vouchers` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `menu_task`
--
ALTER TABLE `menu_task`
ADD CONSTRAINT `menu_task_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `menu_task_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `school_user`
--
ALTER TABLE `school_user`
ADD CONSTRAINT `school_user_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `school_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `spreadsheets`
--
ALTER TABLE `spreadsheets`
ADD CONSTRAINT `spreadsheets_budgets_id_foreign` FOREIGN KEY (`budgets_id`) REFERENCES `budgets` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `supports`
--
ALTER TABLE `supports`
ADD CONSTRAINT `supports_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `task_user`
--
ALTER TABLE `task_user`
ADD CONSTRAINT `menu_user_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `menu_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `menu_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `transfers`
--
ALTER TABLE `transfers`
ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`balance_budgets_id`) REFERENCES `balance_budgets` (`id`),
ADD CONSTRAINT `transfers_ibfk_2` FOREIGN KEY (`spreadsheets_id`) REFERENCES `spreadsheets` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_suppliers_id_foreign` FOREIGN KEY (`suppliers_id`) REFERENCES `suppliers` (`id`) ON DELETE NO ACTION,
ADD CONSTRAINT `users_type_users_id_foreign` FOREIGN KEY (`type_users_id`) REFERENCES `type_users` (`id`) ON DELETE NO ACTION;

--
-- Filtros para la tabla `vouchers`
--
ALTER TABLE `vouchers`
ADD CONSTRAINT `vouchers_suppliers_id_foreign` FOREIGN KEY (`suppliers_id`) REFERENCES `suppliers` (`id`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
