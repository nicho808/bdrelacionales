-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 05:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `Nombre`, `descripcion`) VALUES
(1, 'Slipknot', 'Banda de metal pesado conformada por varios musicos y cantantes'),
(2, 'Fall Out Boy', 'Banda de rock alternativo con cuatro integrantes'),
(3, 'Ice Cube', 'Artista solista de Hip-Hop pionero en el genero proveniente de la West coast'),
(4, 'N.W.A', 'Grupo de cinco integrantes enfocados en el rap'),
(5, 'Yves', 'Solista cantante de K-Pop'),
(6, 'Katy Perry', 'Artista de Pop solista y cantante'),
(7, 'Skrillex', 'Productor, DJ y artista de musica electronica'),
(8, 'The weeknd', 'Artista popular de R&B'),
(9, 'Natanael Cano', 'Artista pionero en el sub-genero de corridos tumbados'),
(10, 'Travis Scott', 'Cantante enfocado al sub-genero del trap');

-- --------------------------------------------------------

--
-- Table structure for table `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Duality', 1, '00:03:35', '2002-04-12', 0, 'duality.jpg'),
(2, 'Thnks fr th mmrs', 2, '00:04:14', '2006-02-06', 1, 'thnks_fr_th_mmrs.jpg'),
(3, 'Ghetto Bird', 3, '00:03:51', '1993-12-07', 0, 'ghetto_bird.jpg'),
(4, 'Straight Outta Compton', 4, '00:05:21', '1988-08-08', 1, 'straight_outta_compton.jpg'),
(5, 'DIORAMA', 5, '00:02:57', '2024-05-29', 0, 'diorama.jpg'),
(6, 'California Gurls', 6, '00:03:54', '2010-08-24', 1, 'california_gurls.jpg'),
(7, 'Where Are U Now', 7, '00:04:10', '2015-02-27', 0, 'where_are_u_now.jpg'),
(8, 'The Hills', 8, '00:03:55', '2015-08-28', 1, 'the_hills.jpg'),
(9, 'Amor Tumbado', 9, '00:03:42', '2019-12-24', 0, 'amor_tumbado.jpg'),
(10, 'MELTDOWN', 10, '00:04:06', '2023-07-28', 1, 'meltdown.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 1, 2),
(2, 2, 7),
(3, 3, 8),
(4, 4, 10),
(5, 5, 9),
(6, 6, 1),
(7, 7, 5),
(8, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(1, 'Metal'),
(2, 'Rock'),
(3, 'Hip-Hop'),
(4, 'Rap'),
(5, 'K-Pop'),
(6, 'Pop'),
(7, 'Electronica'),
(8, 'R&B'),
(9, 'Corridos'),
(10, 'Trap');

-- --------------------------------------------------------

--
-- Table structure for table `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Plan Gratuito', 0),
(2, 'Plan Individual', 129),
(3, 'Plan para estudiantes', 69),
(4, 'Plan duo', 169),
(5, 'Plan familiar', 199);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `Nombre`, `usuario_id`, `duracion`, `total_canciones`, `descripcion`, `publico`) VALUES
(1, 'nico', 1, '07:54:23', 102, 'mi playlist con musica general de varios generos', 1),
(2, 'printf musica', 2, '08:21:54', 98, 'si', 1),
(3, 'musica chill', 3, '02:32:44', 23, 'TV girl y varios', 0),
(4, 'GATO', 4, '05:22:15', 68, 'sin descripcion', 0),
(5, 'Playlist 1', 5, '04:12:12', 49, 'sin descripcion', 0),
(6, 'MUSIKA CHIDA', 6, '08:23:59', 76, 'musika bien cool ', 1),
(7, 'me <3', 7, '04:33:12', 57, 'vibes', 1),
(8, 'is this serious', 8, '08:11:54', 81, 'neta neta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 1, 2, 1),
(2, 2, 7, 2),
(3, 3, 8, 3),
(4, 4, 10, 4),
(5, 5, 9, 5),
(6, 6, 1, 6),
(7, 7, 5, 7),
(8, 8, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `correo`, `membresia_id`) VALUES
(1, 'nicho808', 'peanutznico@gmail.com', 2),
(2, 'Kingcake17', 'santiagoaispuro17@gmail.com', 2),
(3, 'NoxTry12', 'vivanloschurrosxd@gmail.com', 1),
(4, 'BayronB23', 'bayronb23@gmail.com', 3),
(5, 'luisangl', 'luismoya08@gmail.com', 4),
(6, 'serfbmangos', 'brauliomangos77@gmail.com', 4),
(7, 'ivsjungwoni', 'strawbemcorral@gmail.com', 3),
(8, 'diego_nugget_de_pollo', 'diegongdp2008@gmail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
