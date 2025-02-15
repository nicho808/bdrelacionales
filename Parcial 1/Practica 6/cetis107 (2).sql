-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2025 at 01:14 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cetis107`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
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
-- Dumping data for table `alumnos`
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
-- Table structure for table `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 5, 9),
(2, 2, 5, 10),
(3, 3, 5, 10),
(4, 4, 5, 8),
(5, 5, 5, 8),
(6, 6, 5, 8),
(7, 7, 5, 8),
(8, 8, 5, 10),
(9, 9, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `hora`, `aula`) VALUES
(1, 1, 3, '13:20:00', 'cc2'),
(2, 2, 9, '17:00:00', 'cc1'),
(3, 7, 5, '12:30:00', 'aula 12'),
(4, 4, 6, '18:00:00', 'aula 12'),
(5, 3, 4, '16:30:00', 'aula 12'),
(6, 6, 8, '15:20:00', 'aula 12'),
(7, 8, 1, '16:40:00', 'aula 12'),
(8, 5, 7, '12:30:00', 'aula 12'),
(9, 9, 10, '17:10:00', 'aula 12');

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `especialidades`
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
-- Table structure for table `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maestros`
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

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materias`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indexes for table `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`);

--
-- Constraints for table `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
