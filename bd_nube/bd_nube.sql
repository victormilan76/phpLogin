-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2024 a las 05:24:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_nube`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `CL_ID_BI` bigint(20) UNSIGNED NOT NULL,
  `CL_US_ID_BI` bigint(20) UNSIGNED NOT NULL,
  `CL_NAME_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CL_FIRST_NAME_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CL_CI_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CL_EXP_VC` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `CL_DATE_CREATION_DT` date NOT NULL,
  `CL_STATUS_BT` char(0) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`CL_ID_BI`, `CL_US_ID_BI`, `CL_NAME_VC`, `CL_FIRST_NAME_VC`, `CL_CI_VC`, `CL_EXP_VC`, `CL_DATE_CREATION_DT`, `CL_STATUS_BT`) VALUES
(2, 1, 'JOSE', 'PERALES', '12345678', 'LPZ', '2024-03-21', ''),
(3, 1, 'JUANJO', 'FLOREZ', '87654321', 'LPZ', '2024-03-21', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `US_ID_BI` bigint(20) UNSIGNED NOT NULL,
  `US_NAME_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `US_USER_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `US_PASSWORD_VC` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `US_DATE_CREATION_DT` date NOT NULL,
  `US_ROL_BT` char(0) COLLATE utf8_unicode_ci NOT NULL,
  `US_STATUS_BT` char(0) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`US_ID_BI`, `US_NAME_VC`, `US_USER_VC`, `US_PASSWORD_VC`, `US_DATE_CREATION_DT`, `US_ROL_BT`, `US_STATUS_BT`) VALUES
(1, 'JUAN PEREZ', 'PEREZ', '22988523', '2024-03-21', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`CL_ID_BI`),
  ADD KEY `CL_US_ID_BI` (`CL_US_ID_BI`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`US_ID_BI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `CL_ID_BI` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `US_ID_BI` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`CL_US_ID_BI`) REFERENCES `user` (`US_ID_BI`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
