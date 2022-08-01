-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2022 a las 19:50:19
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pelicula_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Creacion` datetime NOT NULL,
  `TopSeller` tinyint(1) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Id`, `Titulo`, `Creacion`, `TopSeller`, `Descripcion`) VALUES
(1, 'Terror', '1982-07-22 12:46:46', 1, 'El horror o terror es un género literario que se define por la sensación que causa: miedo.'),
(2, 'Comedia', '1990-10-25 12:46:46', 0, 'La comedia ​ es el género dramático opuesto a la tragedia​ y, por lo tanto, relacionado casi siempre'),
(3, 'Romántico ', '1997-02-10 12:49:01', 1, 'El cine romántico es un género cinematográfico que se caracteriza por retratar argumentos construido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `Id` int(11) UNSIGNED NOT NULL,
  `GeneroId` int(11) UNSIGNED NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Tiempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`Id`, `GeneroId`, `Titulo`, `Tiempo`) VALUES
(1, 1, 'The Crazies', 120),
(2, 1, 'Maligno', 78),
(3, 1, 'Host', 60),
(4, 1, 'La morgue', 120),
(5, 1, 'La llorona', 80),
(6, 1, 'El silencio', 120),
(7, 1, 'Hospital Maldito', 180),
(8, 1, 'Resident Evil', 100),
(9, 1, 'Masacre en Texas', 80),
(10, 1, 'El conjuro 3', 120),
(11, 2, 'A toda madre', 80),
(12, 2, 'No manches Frida', 125),
(13, 2, 'Ladrona de identidad', 80),
(14, 2, 'La mentira original', 100),
(15, 2, 'Norbit', 120),
(16, 2, 'Una esposa de mentira', 95),
(17, 2, 'Luna de miel en pareja', 100),
(18, 2, 'Cómo ser soltera', 85),
(19, 2, 'Pequeño gran problema', 120),
(20, 2, 'Red', 80),
(21, 3, 'Persuasión ', 120),
(22, 3, 'After almas perfectas', 95),
(23, 3, 'Emma', 85),
(24, 3, 'Cada día', 100),
(25, 3, 'A tres metros sobre el cielo ', 130),
(26, 3, '365 días', 100),
(27, 3, 'Nace una estrella', 80),
(28, 3, 'La razón de estar contigo', 120),
(29, 3, 'Bajo la misma estrella', 85),
(30, 3, 'Ella', 60);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `GeneroId` (`GeneroId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `FK_pelicula_genero` FOREIGN KEY (`GeneroId`) REFERENCES `genero` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
