-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:14:37
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `Código del paciente` int(11) NOT NULL,
  `Diágnostico` varchar(30) NOT NULL,
  `Fecha de visita` date NOT NULL,
  `Tratamiento` varchar(30) NOT NULL,
  `Código del doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`Código del paciente`, `Diágnostico`, `Fecha de visita`, `Tratamiento`, `Código del doctor`) VALUES
(5, 'Apendicitis', '2008-12-06', 'Cirugía', 1),
(28, 'Artritis', '2009-01-07', 'Cirugía', 2),
(21, 'Fracturas', '2009-01-08', 'Cirugía', 3),
(4, 'Diabetes', '2009-02-09', 'Dieta baja en azúcar', 4),
(12, 'Gripe', '2009-02-10', 'Acetaminofen', 5),
(62, 'Sarampión', '2009-02-11', 'Sinus', 6),
(45, 'Sinusitis', '2009-03-12', 'Acetaminofen', 7),
(43, 'Cirrosis', '2009-03-13', 'Clamoxil', 8),
(12, 'Amigdalitis', '2009-03-14', 'Clamoxil', 9),
(6, 'Anemia', '2009-04-15', 'Purgante', 10),
(13, 'Migraña', '2009-04-16', 'Acetaminofen', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`Código del doctor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `Código del doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
