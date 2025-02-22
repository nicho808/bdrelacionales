-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2025 at 02:01 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(10, 'Travis Scott', 'Cantante enfocado al sub-genero del trap'),
(11, 'Twenty One Pilots', 'Duo de rock alternativo'),
(12, 'Kanye West', 'Cantante y productor reconocido de generos derivados del rap');

-- --------------------------------------------------------

--
-- Table structure for table `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(10, 'MELTDOWN', 10, '00:04:06', '2023-07-28', 1, 'meltdown.jpg'),
(11, 'Before I Forget', 1, '00:04:04', '2002-04-12', 0, 'before_i_forget.jpg'),
(12, 'Pulse Of The Maggots', 1, '00:04:20', '2002-04-12', 0, 'pulse_of_the_maggots.jpg'),
(13, 'Psychosocial', 1, '00:04:45', '2008-08-28', 1, 'psychosocial.jpg'),
(14, 'Dead Memories', 1, '00:04:29', '2008-08-28', 0, 'dead_memories.jpg'),
(15, 'The Take Over The Break Over', 2, '00:03:34', '2006-02-06', 0, 'the_take_over_the_break_over.jpg'),
(16, 'This Aint A Scene Its An Arms Race', 2, '00:03:32', '2006-02-06', 0, 'this_aint_a_scene_its_an_arms_race.jpg'),
(17, 'Centuries', 2, '00:03:49', '2015-01-16', 0, 'centuries.jpg'),
(18, 'Irresistible', 2, '00:03:27', '2015-01-16', 0, 'irresistible.jpg'),
(19, 'You Know How We Do It', 3, '00:03:53', '1993-12-07', 0, 'you_know_how_we_do_it.jpg'),
(20, 'Really Doe', 3, '00:04:28', '1993-12-07', 0, 'really_doe.jpg'),
(21, 'Hello', 3, '00:03:53', '2000-03-21', 1, 'hello.jpg'),
(22, 'You Can Do It', 3, '00:04:20', '2000-03-21', 0, 'you_can_do_it.jpg'),
(23, 'Gangsta Gangsta', 4, '00:05:27', '1988-08-08', 0, 'gangsta_gangsta.jpg'),
(24, 'Fuck Tha Police', 4, '00:05:46', '1988-08-08', 1, 'fuck_tha_police.jpg'),
(25, 'Express Yourself', 4, '00:04:18', '1988-08-08', 0, 'express_yourself.jpg'),
(26, 'Quiet On Tha Set', 4, '00:04:00', '1988-08-08', 0, 'quiet_on_tha_set.jpg'),
(27, 'LOOP', 5, '00:02:44', '2024-05-29', 0, 'loop.jpg'),
(28, 'Afterglow', 5, '00:02:55', '2024-05-29', 0, 'afterglow.jpg'),
(29, 'Goldfish', 5, '00:03:43', '2024-05-29', 0, 'goldfish.jpg'),
(30, 'Viola', 5, '00:02:56', '2024-11-14', 0, 'viola.jpg'),
(31, 'Last Friday Night (T.G.I.F)', 6, '00:03:51', '2010-08-24', 0, 'last_friday_night.jpg'),
(32, 'Firework', 6, '00:03:48', '2010-08-24', 0, 'firework.jpg'),
(33, 'E.T.', 6, '00:03:27', '2010-08-24', 0, 'et.jpg'),
(34, 'Pearl', 6, '00:04:08', '2010-08-24', 0, 'pearl.jpg'),
(35, 'Overcompesate', 2, '00:03:56', '2024-05-24', 1, 'overcompensate.jpg'),
(36, 'Next Semester', 2, '00:03:54', '2024-05-24', 0, 'next_semester.jpg'),
(37, 'Backslide', 2, '00:03:00', '2024-05-24', 0, 'backslide.jpg'),
(38, 'Midwest Indigo', 2, '00:03:16', '2024-05-24', 0, 'midwest_indigo.jpg'),
(39, 'Losers', 8, '00:04:41', '2015-08-28', 0, 'losers.jpg'),
(40, 'Often', 8, '00:04:09', '2015-08-28', 0, 'often.jpg'),
(41, 'Prisoner', 8, '00:04:35', '2015-08-28', 0, 'prisoner.jpg'),
(42, 'Angel', 8, '00:06:17', '2015-08-28', 0, 'angel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
