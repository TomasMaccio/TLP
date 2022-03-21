-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:16:51
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
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `Télefono` int(11) DEFAULT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Edad` int(11) DEFAULT NULL,
  `fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `Nombre`, `Apellido`, `DNI`, `Télefono`, `Domicilio`, `Edad`, `fecha_nac`) VALUES
(1, 'Mariana', 'Lopez', 4850078, 29347122, 'Sta Rosa 560', 28, '1997-08-27'),
(2, 'Tomás', 'Ramirez', 45274837, 2147483647, 'Obispo oro 874', 19, '2003-11-23'),
(3, 'Facundo', 'Quiroga', 4567843, 2147483647, 'Yrigoyen 1231', 26, '1981-12-08'),
(4, 'Ximena', 'Rodriguez', 3214657, 2147483647, 'Córdoba 241', 17, '2004-02-07'),
(5, 'Jorgina', 'Roberto', 1527498, 2147483647, 'Rambla 3645', 49, '1976-03-12'),
(6, 'Raúl', 'Manke', 23579471, 1555847548, 'Buenos Aires 763', 49, '1972-08-07'),
(7, 'Godge', 'Gdamidez', 43376890, 1233211223, 'Rogelio Martinez 375', 22, '2000-05-01'),
(8, 'Rogelio', 'Funes Mori', 23321176, 2055555543, 'Canasvieria 103', 22, '1999-12-12'),
(9, 'Edgar', 'Jonson', 37544367, 1234567890, 'Achaval Rodriguez 343', 30, '1992-03-21'),
(10, 'Anastasia', 'Colalela', 43333222, 1112222333, 'Villarreal 1864', 22, '2007-08-09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
