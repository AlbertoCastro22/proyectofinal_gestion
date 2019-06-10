-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2019 a las 21:54:14
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directions`
--

CREATE TABLE `directions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `colonia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncasa` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `directions`
--

INSERT INTO `directions` (`id`, `colonia`, `calle`, `ncasa`, `cp`, `created_at`, `updated_at`) VALUES
(1, 'Santa Catarina', 'Lazaro Cardenas S/N', 555, 71960, NULL, NULL),
(2, 'El naranjo', 'Bulmaro Arreola', 976, 71960, NULL, NULL),
(3, 'Mirador', 'Callejon los Sanchez', 1045, 71960, NULL, NULL),
(4, 'Loma bonita', 'Emiliano Zapata S/N', 1345, 71960, NULL, NULL),
(5, 'Barrio de Jesus', 'Los machines', 745, 71960, NULL, NULL),
(6, 'San Antonio', 'Independencia', 945, 71960, NULL, NULL),
(7, '21 de marzo', 'Porfirio Diaz S/N', 2345, 71960, NULL, NULL),
(8, 'La Guadalupe', 'El cerrito', 4345, 71960, NULL, NULL),
(9, '21 de marzo', 'Porfirio Diaz S/N', 2325, 71960, NULL, NULL),
(10, 'Las Jacarandas', 'Kinn Duii', 345, 71960, NULL, NULL),
(11, 'Las Jacarandas', 'Kinn Duii', 445, 71960, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entrada` time NOT NULL,
  `salida` time NOT NULL,
  `fecha` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `entrada`, `salida`, `fecha`, `user_id`, `created_at`, `updated_at`) VALUES
(179, '08:00:00', '17:00:00', '2019-06-03', 2, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(180, '08:15:00', '17:00:00', '2019-06-03', 3, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(181, '08:00:00', '17:00:00', '2019-06-03', 4, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(182, '08:00:00', '17:00:00', '2019-06-03', 5, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(183, '08:00:00', '17:00:00', '2019-06-03', 6, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(184, '08:25:00', '17:00:00', '2019-06-03', 7, '2019-06-10 13:06:53', '2019-06-10 13:06:53'),
(185, '08:20:00', '17:00:00', '2019-06-03', 8, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(186, '08:00:00', '17:00:00', '2019-06-03', 9, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(187, '08:00:00', '17:00:00', '2019-06-03', 10, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(188, '08:00:00', '17:00:00', '2019-06-03', 11, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(189, '08:19:00', '17:00:00', '2019-06-03', 12, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(190, '08:00:00', '17:00:00', '2019-06-04', 2, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(191, '08:15:00', '17:00:00', '2019-06-04', 3, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(192, '08:00:00', '17:00:00', '2019-06-04', 4, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(193, '08:00:00', '17:00:00', '2019-06-04', 5, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(194, '08:00:00', '17:00:00', '2019-06-04', 6, '2019-06-10 13:06:54', '2019-06-10 13:06:54'),
(195, '08:25:00', '17:00:00', '2019-06-04', 7, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(196, '08:20:00', '17:00:00', '2019-06-04', 8, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(197, '08:00:00', '17:00:00', '2019-06-04', 9, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(198, '08:00:00', '17:00:00', '2019-06-04', 10, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(199, '08:00:00', '17:00:00', '2019-06-04', 11, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(200, '08:19:00', '17:00:00', '2019-06-04', 12, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(201, '08:00:00', '17:00:00', '2019-06-05', 2, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(202, '08:15:00', '17:00:00', '2019-06-05', 3, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(203, '08:00:00', '17:00:00', '2019-06-05', 4, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(204, '08:00:00', '17:00:00', '2019-06-05', 5, '2019-06-10 13:06:55', '2019-06-10 13:06:55'),
(205, '08:00:00', '17:00:00', '2019-06-05', 6, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(206, '08:25:00', '17:00:00', '2019-06-05', 7, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(207, '08:20:00', '17:00:00', '2019-06-05', 8, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(208, '08:00:00', '17:00:00', '2019-06-05', 9, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(209, '08:00:00', '17:00:00', '2019-06-05', 10, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(210, '08:00:00', '17:00:00', '2019-06-05', 11, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(211, '08:19:00', '17:00:00', '2019-06-05', 12, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(212, '08:00:00', '17:00:00', '2019-06-06', 2, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(213, '08:15:00', '17:00:00', '2019-06-06', 3, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(214, '08:00:00', '17:00:00', '2019-06-06', 4, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(215, '08:00:00', '17:00:00', '2019-06-06', 5, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(216, '08:00:00', '17:00:00', '2019-06-06', 6, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(217, '08:25:00', '17:00:00', '2019-06-06', 7, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(218, '08:20:00', '17:00:00', '2019-06-06', 8, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(219, '08:00:00', '17:00:00', '2019-06-06', 9, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(220, '08:00:00', '17:00:00', '2019-06-06', 10, '2019-06-10 13:06:56', '2019-06-10 13:06:56'),
(221, '08:00:00', '17:00:00', '2019-06-06', 11, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(222, '08:19:00', '17:00:00', '2019-06-06', 12, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(223, '08:00:00', '17:00:00', '2019-06-07', 2, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(224, '08:15:00', '17:00:00', '2019-06-07', 3, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(225, '08:00:00', '17:00:00', '2019-06-07', 4, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(226, '08:00:00', '17:00:00', '2019-06-07', 5, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(227, '08:00:00', '17:00:00', '2019-06-07', 6, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(228, '08:25:00', '17:00:00', '2019-06-07', 7, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(229, '08:20:00', '17:00:00', '2019-06-07', 8, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(230, '08:00:00', '17:00:00', '2019-06-07', 9, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(231, '08:00:00', '17:00:00', '2019-06-07', 10, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(232, '08:00:00', '17:00:00', '2019-06-07', 11, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(233, '08:19:00', '17:00:00', '2019-06-07', 12, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(234, '08:00:00', '17:00:00', '2019-06-08', 2, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(235, '08:15:00', '17:00:00', '2019-06-08', 3, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(236, '08:00:00', '17:00:00', '2019-06-08', 4, '2019-06-10 13:06:57', '2019-06-10 13:06:57'),
(237, '08:00:00', '17:00:00', '2019-06-08', 5, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(238, '08:00:00', '17:00:00', '2019-06-08', 6, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(239, '08:25:00', '17:00:00', '2019-06-08', 7, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(240, '08:20:00', '17:00:00', '2019-06-08', 8, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(241, '08:00:00', '17:00:00', '2019-06-08', 9, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(242, '08:00:00', '17:00:00', '2019-06-08', 10, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(243, '08:00:00', '17:00:00', '2019-06-08', 11, '2019-06-10 13:06:58', '2019-06-10 13:06:58'),
(244, '08:19:00', '17:00:00', '2019-06-08', 12, '2019-06-10 13:06:58', '2019-06-10 13:06:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_15_194252_create_directions_table', 1),
(2, '2019_05_17_195708_create_towns_table', 1),
(3, '2019_05_24_070123_create_obras_table', 1),
(4, '2019_05_24_071230_create_payrolls_table', 1),
(5, '2019_05_25_130000_create_users_table', 1),
(6, '2019_05_25_140000_create_password_resets_table', 1),
(7, '2019_05_26_071820_create_role_user_table', 1),
(8, '2019_05_26_072302_create_roles_table', 1),
(9, '2019_05_28_023836_create_horarios_table', 1),
(10, '2019_06_04_192428_create_payroll_user_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `municipio_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `municipio_id`, `nombre`, `descripcion`, `fecha_inicio`, `fecha_entrega`, `created_at`, `updated_at`) VALUES
(1, 3, 'SISTEMA DE AGUA POTABLE', 'CONSTRUCCION  DEL SISTEMA DE AGUA POTABLE EN LA COMUNIDAD DE CAÑADA DE LOS MATUS,  NOPALA', '2018-06-01', '2019-12-31', NULL, NULL),
(2, 1, 'TANQUE ELEVADO', 'CONSTRUCCION DE TANQUE ELEVADO PARA EL MUNICIPIO DE SANTOS REYES NOPALA', '2020-01-01', '2021-01-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `peridoInicio` date NOT NULL,
  `periodoFin` date NOT NULL,
  `estado` int(11) NOT NULL,
  `obra_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payrolls`
--

INSERT INTO `payrolls` (`id`, `peridoInicio`, `periodoFin`, `estado`, `obra_id`, `created_at`, `updated_at`) VALUES
(1, '2019-06-03', '2019-06-08', 1, 1, NULL, '2019-06-10 14:49:38'),
(9, '2019-06-10', '2019-06-15', 0, 1, '2019-06-05 13:18:44', '2019-06-10 12:39:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payroll_user`
--

CREATE TABLE `payroll_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomina_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `retardos` int(11) NOT NULL,
  `faltas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `towns`
--

INSERT INTO `towns` (`id`, `nombre`, `region`, `distrito`, `created_at`, `updated_at`) VALUES
(1, 'Santos Reyes Nopala', 'Costa', 'Juquila', NULL, NULL),
(2, 'Cañada Guadalupe', 'Costa', 'Juquila', NULL, NULL),
(3, 'Santa Maria Tiltepec', 'Costa', 'Juquila', NULL, NULL),
(4, 'Santiago Cuixtla', 'Costa', 'Juquila', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoMaterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_id` bigint(20) UNSIGNED NOT NULL,
  `obra_id` bigint(20) UNSIGNED NOT NULL,
  `edad` int(11) NOT NULL,
  `n_celular` int(11) NOT NULL,
  `puesto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sueldo` int(11) NOT NULL,
  `dias_trabajados` int(11) NOT NULL,
  `retardo` int(11) NOT NULL,
  `observaciones` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `direccion_id`, `obra_id`, `edad`, `n_celular`, `puesto`, `sueldo`, `dias_trabajados`, `retardo`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, '$2y$10$BFiOZV2ZpCp4l.8yCQY.KeCitGsiADq8ac4A/KsbYAaTtckAQzldq', NULL, '', '', '', 1, 1, 0, 0, '', 0, 6, 0, '', '2019-06-05 02:38:58', '2019-06-05 02:38:58'),
(2, 'user', 'marco@user.com', NULL, '$2y$10$qmuYL4QIkX76wrGkIGPwY.Wl1twVYiHnxkKRVRD1Cg/fk/hy9lJ4q', NULL, 'Marco', 'Torres', 'Carmona', 1, 1, 35, 5860136, 'albañil', 300, 6, 0, '', '2019-06-05 02:38:58', '2019-06-05 02:38:58'),
(3, 'user', 'moises@user.com', NULL, '$2y$10$9w4YrWvsmLygPAC6LLxJtuzmaFOKIOgXO/29etX1uSFs.dLffMnNO', NULL, 'Moises', 'Matus', 'Perez', 2, 1, 40, 5860145, 'albañil', 300, 6, 0, '', '2019-06-05 02:38:58', '2019-06-05 02:38:58'),
(4, 'user', 'celerino@user.com', NULL, '$2y$10$roagzbCwIA/p3Qu6lwH6C.PDHwPZWi.LsOL0iV2nhFubKk7T.XANC', NULL, 'Celerino', 'Torres', 'Hernandez', 1, 1, 19, 5860136, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:58', '2019-06-05 02:38:58'),
(5, 'user', 'isaias@user.com', NULL, '$2y$10$yFevh9jfO7rZRy2EF0inrOUMHOKNvWKfS4BX6LVTE3JspqXZVuQ12', NULL, 'Isaias', 'Reyes', 'Pacheco', 3, 1, 25, 0, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(6, 'user', 'cecilio@user.com', NULL, '$2y$10$XIiMc/Sa3.LTsxNYoD9QreNoUa3G9IBVFASywktu3.kUcs8VmueN.', NULL, 'Cecilio', 'Santana', 'Ruiz', 4, 1, 27, 0, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(7, 'user', 'yavin@user.com', NULL, '$2y$10$eHDdyhTU4pDkSCUI7eQt4Og0TwuuE89MSPsqn2.fEg.QnB1XrRwoC', NULL, 'Yavin', 'Sanchez', 'Triste', 5, 1, 22, 0, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(8, 'user', 'eilberto@user.com', NULL, '$2y$10$BNMgBlpXF/yidxkt6Ys.6Oev6LFX2jr5Ym4tJOT/oiARrivrhQyhC', NULL, 'Edilberto', 'Calvo', 'Juarez', 6, 1, 20, 0, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(9, 'user', 'javier@user.com', NULL, '$2y$10$kJpj9vcKD55G8nbHk.jF4uwQ5ud5nxiA46PhBCnJRkEDuCpvFNHFa', NULL, 'Javier', 'Reyes', 'Alonso', 7, 1, 27, 5860166, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(10, 'user', 'panfilo@user.com', NULL, '$2y$10$LrkIEep0A/RFgT14prvYZurUIEmwehGBDVMpm.yXDxQG9YTuLd7oC', NULL, 'Panfilo', 'Reyes', 'Alonso', 8, 1, 28, 5860188, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(11, 'user', 'gilberto@user.com', NULL, '$2y$10$l.v7GpL2oswVGSoGv0PDNOnUEk9yw3KewNfThM6Nh8lKtcRwRTfFW', NULL, 'Gilberto', 'Reyes', 'Alonso', 9, 1, 28, 0, 'albañil', 300, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59'),
(12, 'user', 'abelardo@user.com', NULL, '$2y$10$TGhMgXRq.e0vwT/EPN6uuuAdj7LhrfJAItWL7wnmWRIp.xF7HTMDe', NULL, 'Abelardo', 'Reyes', 'Alonso', 10, 1, 28, 0, 'ayudante', 200, 6, 0, '', '2019-06-05 02:38:59', '2019-06-05 02:38:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obras_municipio_id_foreign` (`municipio_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_obra_id_foreign` (`obra_id`);

--
-- Indices de la tabla `payroll_user`
--
ALTER TABLE `payroll_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_user_nomina_id_foreign` (`nomina_id`),
  ADD KEY `payroll_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_direccion_id_foreign` (`direccion_id`),
  ADD KEY `users_obra_id_foreign` (`obra_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directions`
--
ALTER TABLE `directions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `payroll_user`
--
ALTER TABLE `payroll_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `obras_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `towns` (`id`);

--
-- Filtros para la tabla `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_obra_id_foreign` FOREIGN KEY (`obra_id`) REFERENCES `obras` (`id`);

--
-- Filtros para la tabla `payroll_user`
--
ALTER TABLE `payroll_user`
  ADD CONSTRAINT `payroll_user_nomina_id_foreign` FOREIGN KEY (`nomina_id`) REFERENCES `payrolls` (`id`),
  ADD CONSTRAINT `payroll_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_direccion_id_foreign` FOREIGN KEY (`direccion_id`) REFERENCES `directions` (`id`),
  ADD CONSTRAINT `users_obra_id_foreign` FOREIGN KEY (`obra_id`) REFERENCES `obras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
