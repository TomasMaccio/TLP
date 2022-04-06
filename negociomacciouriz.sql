-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:49:12
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `negociomacciouriz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` int(11) NOT NULL,
  `TNOMBRE` varchar(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `TNOMBRE`, `CIUDAD`) VALUES
(1, 'CLASIFICADORA', 'MADRID'),
(2, 'PERFORADORA', 'MALAGA'),
(3, 'LECTORA', 'CACERES'),
(4, 'CONSOLA', 'CACERES'),
(5, 'MEZCLADORA', 'SEVILLA'),
(6, 'TERMINAL', 'BARCELONA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` int(11) NOT NULL,
  `CNOMBRE` varchar(30) NOT NULL,
  `COLOR` varchar(30) NOT NULL,
  `PESO` int(11) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNOMBRE`, `COLOR`, `PESO`, `CIUDAD`) VALUES
(1, 'X3A', 'ROJO', 12, 'Sevilla'),
(3, 'C4B', 'AZUL', 17, 'Málaga'),
(4, 'C4B', 'ROJO', 14, 'Sevilla'),
(5, 'VT8', 'AZUL', 12, 'Madrid'),
(6, 'C30', 'ROJO', 19, 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` int(11) NOT NULL,
  `C#` int(11) NOT NULL,
  `T#` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P#`, `C#`, `T#`, `CANTIDAD`) VALUES
(1, 1, 1, 200),
(2, 3, 1, 400),
(2, 3, 2, 200),
(2, 3, 3, 200),
(2, 3, 4, 500),
(2, 3, 5, 600),
(2, 3, 6, 400),
(2, 3, 7, 800),
(2, 5, 2, 100),
(3, 3, 1, 200),
(3, 4, 2, 500),
(4, 6, 3, 300),
(4, 6, 7, 300),
(5, 2, 2, 200),
(5, 2, 4, 100),
(5, 5, 4, 500),
(5, 5, 7, 100),
(5, 6, 2, 200),
(5, 1, 4, 100),
(5, 3, 4, 200),
(5, 4, 4, 800),
(5, 5, 5, 400),
(5, 6, 4, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `P#` int(11) NOT NULL,
  `PNOMBRE` varchar(30) NOT NULL,
  `CATEGORIA` int(11) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`P#`, `PNOMBRE`, `CATEGORIA`, `CIUDAD`) VALUES
(0, 'Eva', 30, 'Caceres'),
(1, 'Carlos', 20, 'Sevilla'),
(2, 'Juan', 10, 'Madrid'),
(3, 'José', 30, 'Sevilla'),
(4, 'Inma', 20, 'Sevilla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`T#`);

--
-- Indices de la tabla `componentes`
--
ALTER TABLE `componentes`
  ADD PRIMARY KEY (`C#`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`P#`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `T#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `componentes`
--
ALTER TABLE `componentes`
  MODIFY `C#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `P#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
