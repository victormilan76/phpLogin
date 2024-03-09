-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2024 a las 16:16:34
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
  `ID_CLIENT` bigint(20) NOT NULL,
  `CL_ID_USER` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `FIRST_NAME` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `CI` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `EXP` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`ID_CLIENT`, `CL_ID_USER`, `NAME`, `FIRST_NAME`, `CI`, `EXP`, `DATE_CREATION`, `STATUS`) VALUES
(2, 3, 'JOSE', 'PERALES', '12345678', 'LPZ', '2024-03-09', '0'),
(3, 3, 'JUANJO', 'FLOREZ', '87654321', 'LPZ', '2024-03-09', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `ID_USER` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATION` date NOT NULL,
  `ROL` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`ID_USER`, `NAME`, `USER`, `PASSWORD`, `DATE_CREATION`, `ROL`, `STATUS`) VALUES
(3, 'JUAN PEREZ', 'PEREZ', '22988523', '2024-03-09', '1', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_CLIENT`),
  ADD KEY `CL_ID_USER` (`CL_ID_USER`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `ID_CLIENT` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `ID_USER` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`CL_ID_USER`) REFERENCES `user` (`ID_USER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
