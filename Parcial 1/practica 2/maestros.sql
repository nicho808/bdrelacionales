-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:43:34
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Maria Guadalupe Ruelas Astorga', 'maria.ruelas@cetis107.edu.mx', 0, '1975-02-02'),
(2, 'Jose Francisco Rochin Camacho', 'jose.rochin@cetis107.edu.mx', 1, '1982-11-18'),
(3, 'Jorge Ibarra Quintero', 'jorge.ibarra@cetis107.edu.mx', 1, '1962-06-10'),
(4, 'Veronica Guadalupe Payan', 'veronica.guadalupe@cetis107.edu.mx', 0, '1995-01-20'),
(5, 'Alma Marcela Silva Dealegria', 'alma.silva@cetis107.edu.mx', 0, '1987-10-29'),
(6, 'Maria Teresa Sepulveda Lomas', 'maria.sepulveda@cetis107.edu.mx', 0, '1994-11-02'),
(7, 'Liliana Juarez Espinoza', 'liliana.juarez@cetis107.edu.mx', 0, '1979-08-06'),
(8, 'Pedro Noe Del Real', 'pedro.noe@cetis107.edu.mx', 1, '1981-03-15'),
(9, 'Jorge Nitales Gordillo', 'jorge.nitales@cetis107.edu.mx', 1, '1992-05-02'),
(10, 'Debora Melcacho Jimenez', 'debora.melcacho@cetis107.edu.mx', 0, '2001-09-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
