-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:10:45
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_de_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Luis Angel', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'langel.moya1208@gmail.com', '+52 33 1088 3392'),
(2, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'lopezaispurosantiago@gmail.com', '66733009322'),
(3, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'estradacamachobayronuriel@gmail.com', '+1 (909) 516-0134'),
(4, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-23', 1, 'loaizagarciaangelgibran@gmail.com', '+52 667 145 1436'),
(5, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'valezbernalpaolonicholas@gmail.com', '+52 667 541 2714'),
(6, 'Victor Manuel', 'Diaz Gastelum', '233250610707228', '2008-09-28', 1, 'diazgastelumvictormanuel@gmail.com', '+52 667 791 1274'),
(7, 'Jonathan Horus', 'Zazueta Hernandez', ' 2332506107008', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6673940877'),
(8, 'Sergio Braulio', 'Martinez Felix', ' 2332506107009', '2008-09-29', 1, 'sergio.martinez23@cetis107.edu.mx', '6673940877'),
(9, 'Jorge Luis ', 'Garcia Figueroa', ' 23325061070531', '2008-02-13', 1, 'jorge.garcia23@cetis107.edu.mx', '6676210221'),
(10, 'Hugo Alejandro ', 'Rubio Maldonado', ' 233250610705357', '2008-08-22', 1, 'hugoale227@gmail.com', '6676410842');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'se aprenden las bases de la informatica, usos de bases de datos relacionales y no relacionales ademas de aprender el uso de varios lenguajes de programacion'),
(2, 'ofimatica', 'se enseña el uso de programas basicos en las computadoras como word, powerpoint excel entre otros'),
(3, 'electronica', 'se aprende el uso y creacion de circuitos electronicos asi como los componentes basicos'),
(4, 'contabilidad', 'se enseña a el estudiante lo relacionado con los impuestos y salarios'),
(5, 'construccion', 'se enseña a hacer dibujos y planos de construcciones asi como maquetas para probar los diseños'),
(6, 'diseño grafico', 'se enseña a comunicar y diseñar correctamente a traves de graficos imagenes y logos, asi de como estos mismos se componen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'BD no relacionales', 4),
(2, 'BD relacionales', 4),
(3, 'Ingles', 4),
(4, 'Historia', 4),
(5, 'Temas matematicas', 4),
(6, 'Reacciones quimicas', 4),
(7, 'Ciencias sociales', 4),
(8, 'Recursos socioemocionales', 4),
(9, 'Tutorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
