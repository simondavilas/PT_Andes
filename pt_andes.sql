-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2022 a las 17:45:05
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pt_andes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `cod`, `name`, `created_at`, `updated_at`) VALUES
(1, '1234', 'Bogota', NULL, NULL),
(2, '2345', 'Cali', NULL, NULL),
(3, '3456', 'Medellín', NULL, NULL),
(4, '4567', 'Barranquilla', NULL, NULL),
(5, '5678', 'Bucaramanga', NULL, NULL),
(6, '9876', 'Pasto', NULL, NULL),
(7, '4532', 'Santa Marta', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `cod`, `name`, `city`, `created_at`, `updated_at`) VALUES
(1, '1', 'Santiago', 'Bogota', NULL, NULL),
(2, '2', 'Gabriel', 'Bogota', NULL, NULL),
(3, '3', 'Juan Pablo', 'Bogota', NULL, NULL),
(4, '4', 'Diego', 'Medellín', NULL, NULL),
(5, '5', 'María', 'Bucaramanga', NULL, NULL),
(6, '6', 'Martha', 'Pasto', NULL, NULL),
(7, '8', 'Juan Andrés', 'Cali', NULL, NULL),
(8, '9', 'Evair', 'Barranquilla', NULL, NULL),
(9, '10', 'Carlos Andres', 'Medellin', NULL, NULL),
(10, '11', 'Carlos Alberto', 'Cali', NULL, NULL),
(11, '7', 'Fran Miguel', 'Cali', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(53, '2022_05_27_065308_create_cities_table', 1),
(54, '2022_05_27_065426_create_clients_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('simon@prueba.com', '$2y$10$Ss5mZ3xw0CsmE6ydBA4idODvpl6R9CIAu9.9ypWIMmg7LFkrzVplO', '2022-05-27 14:59:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Simon', 'simon@prueba.com', NULL, '$2y$10$VyTRrnbnIwCIjMp10eVGO.m.JeLtW1ig8bzghCK87YLiZaK1mjujq', NULL, '2022-05-27 13:58:20', '2022-05-27 20:24:16'),
(2, 'EjemplAndes', 'ejemplo@ejemplo.com', NULL, '$2y$10$MftjUg5J6CHsAtvq6FLZvOF9nx0ozCZ2tXq8jCiUBMdLpMboTWux6', NULL, '2022-05-27 15:18:11', '2022-05-27 20:25:35'),
(3, 'ejemplo2', 'ejemplo2@ejemplo.com', NULL, '$2y$10$tZxwTlFgFGl.q.mSWLhfn.u2j9GL.MIqXPaO6lKq.v.MdrdZbXrgy', NULL, '2022-05-27 15:20:23', '2022-05-27 15:20:23'),
(4, 'ejemplo3', 'ejemplo3@ejemplo.com', NULL, '$2y$10$VtAnph3aJs1JjEuB7HycWewb7f.lmuSaAk3rE.4heMTWOY/nWxavu', NULL, '2022-05-27 15:23:02', '2022-05-27 15:23:02'),
(5, 'ejemplo4', 'ejemplo4@ejemplo.com', NULL, '$2y$10$VPY1Wq9qnA77tjHDrFyQP.pZKwAF5989w0pZ2X4ljRYARRKdUSqp.', NULL, '2022-05-27 15:26:07', '2022-05-27 15:26:07'),
(6, 'ejemplo5', 'ejemplo5@ejemplo.com', NULL, '$2y$10$ewBC8GNCiyUK7sk0lnqk7.EpkgDIiniyokji7uVuvrjUoNAqZdwce', NULL, '2022-05-27 15:28:57', '2022-05-27 15:28:57'),
(7, 'ejemplo6', 'ejemplo6@ejemplo.com', NULL, '$2y$10$W9HmU9TKaYt4VoOptgiFsujYS1uobrfamq4OS7QIz2.UNh2QXWDkO', NULL, '2022-05-27 15:31:13', '2022-05-27 15:31:13'),
(8, 'ejemplo7', 'ejemplo7@ejemplo.com', NULL, '$2y$10$TRZ4g.J2hJ9N11v8c4hTXer6X2QxA.AXOMvNOUkD4Dzw9z7eaUn3q', NULL, '2022-05-27 15:33:03', '2022-05-27 15:33:03'),
(9, 'ejemplo8', 'ejemplo8@ejemplo.com', NULL, '$2y$10$Q.qh8JpXkpizR7oDv9CEJel3AxqAOK5nBADo0vmTpzp0Y6IXQeGo2', NULL, '2022-05-27 15:37:04', '2022-05-27 15:37:04'),
(10, 'ejemplo9', 'ejemplo9@ejemplo.com', NULL, '$2y$10$LLoAitUPU0uOKEXSTR3h.e/IU8n3aQ50HgW4CLq0B/DGZeCgytpNi', NULL, '2022-05-27 18:48:12', '2022-05-27 18:48:12'),
(11, 'ejemplo10', 'ejemplo10@ejemplo.com', NULL, '$2y$10$XHUcAPtiKF.Nq8bkSjj8suH1vnh/pzY/ydWgpl0Q8a.sEq62XhDdW', NULL, '2022-05-27 18:50:09', '2022-05-27 18:50:09'),
(12, 'ejemplo11', 'ejemplo11@ejemplo.com', '2022-05-27 18:52:48', '$2y$10$/cW2P5nKY7gYkCsVsoGPAO3QqJvOuAEiTW49JFquC2zIQKmCPpL9e', NULL, '2022-05-27 18:52:19', '2022-05-27 18:52:48'),
(13, 'ejemplo12', 'ejemplo12@ejemplo.com', NULL, '$2y$10$rlk1WzdrwUsdBeFSaN2wx.m2fb9xNO/ksD96RyoMnQBQOi4dLoNf2', NULL, '2022-05-27 18:56:19', '2022-05-27 18:56:19'),
(14, 'ejemplo13', 'ejemplo13@ejemplo.com', NULL, '$2y$10$HPBuPnKCYu.sgf.meWthHet34kPRfdl6JZAC3ygvoWzow9MMX5Ysq', NULL, '2022-05-27 19:18:57', '2022-05-27 19:18:57'),
(15, 'ejemplo14', 'ejemplo14@ejemplo.com', NULL, '$2y$10$tdjiVx9Z1pX0u3yk.sOlqudhRflcROP9QJ8Rnpeo5ktMfd6nVJ4Zu', NULL, '2022-05-27 19:25:01', '2022-05-27 19:25:01'),
(16, 'ejemplo15', 'ejemplo15@ejemplo.com', NULL, '$2y$10$0n3IFSsDLQbXbZfW9.lNHupyAGxJOIvHJj/6RSGdaUkD6fdp1smce', NULL, '2022-05-27 19:44:10', '2022-05-27 19:44:10'),
(17, 'ejemplo16', 'ejemplo16@ejemplo.com', '2022-05-27 19:58:55', '$2y$10$/K5hQv0gmh4FMW6ziznUvuiP3CDTbT2M.g18AoWMgyxkAsJYevM7S', NULL, '2022-05-27 19:44:49', '2022-05-27 19:58:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
