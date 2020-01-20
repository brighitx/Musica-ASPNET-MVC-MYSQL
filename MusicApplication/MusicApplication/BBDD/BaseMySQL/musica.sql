-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2020 a las 10:44:09
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicgenre`
--

CREATE TABLE `musicgenre` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `musicgenre`
--

INSERT INTO `musicgenre` (`name`) VALUES
('Dance'),
('Funk'),
('Hip Hop'),
('Metal'),
('Pop'),
('Reggae'),
('Rock'),
('Soul');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songlist`
--

CREATE TABLE `songlist` (
  `id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `artist` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `musicgenre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `songlist`
--

INSERT INTO `songlist` (`id`, `title`, `artist`, `musicgenre`, `year`, `image`, `path`) VALUES
(1, 'Dance Monkey', 'Tones and I', 'Dance', '2019', 'DanceMonkey.jpg', 'DanceMonkey.mp3'),
(2, 'The Box', 'Roddy Ricch', 'Hip Hop', '2019', 'PleaseExcuseMeforBeingAntisocial.jpg', 'TheBox.mp3'),
(3, 'Life is good', 'Future, Drake', 'Hip Hop', '2019', 'LifeisGood.jpg', 'LifeIsGood.mp3'),
(4, 'Tusa', 'Karol G, Nicki Minaj', 'Pop', '2019', 'Tusa.jpg', 'Tusa.mp3'),
(5, 'Yummy', 'Justin Bieber', 'Pop', '2020', 'Yummy.jpg', 'Yummy.mp3'),
(6, 'Roxanne', 'Arizona Zervas', 'Hip Hop', '2019', 'Roxanne.jpg', 'Roxanne.mp3'),
(7, 'Blinding Lights', 'The Weeknd', 'Soul', '2019', 'BlindingLights.jpg', 'BlindingLights.mp3'),
(8, 'Don\'t Start Now', 'Dua Lipa', 'Pop', '2019', 'DontStartNow.jpg', 'DontStartNow.mp3'),
(9, 'Falling', 'Trevor Daniel', 'Pop', '2018', 'Falling.jpg', 'Falling.mp3'),
(10, 'Memories', 'Maroon 5', 'Pop', '2019', 'Memories.jpg', 'Memories.mp3'),
(11, 'Monarchy of roses', 'Red Hot Chili Peppers', 'Rock', '2011', 'Imwithyou.jpg', 'MonarchyofRoses.mp3'),
(12, 'Let it happen', 'Tame Impala', 'Rock', '2014', 'Currents.jpg', 'LetItHappen.mp3'),
(13, 'Electricity', 'Arctic Monkeys', 'Rock', '2012', 'Electricity.jpg', 'Electricity.mp3'),
(14, 'Gone', 'Pearl Jam', 'Rock', '2006', 'PearlJam.jpg', 'Gone.mp3'),
(15, 'Less I Know the better', 'Tame Impala', 'Rock', '2014', 'Currents.jpg', 'TheLessIKnowTheBetter.mp3'),
(16, 'Lost in Hollywood', 'System of a Down', 'Metal', '2005', 'Mezmerize.jpg', 'LostInHollywood.mp3'),
(17, 'Thread of joy', 'The Strokes', 'Rock', '2016', 'FuturePresentPast.jpg', 'ThreadofJoy.mp3'),
(18, 'Soldier Side', 'System of a Down', 'Metal', '2005', 'Mezmerize.jpg', 'Soldier.mp3'),
(19, 'Another One Bites The Dust', 'Queen', 'Pop', '1980', 'TheGame.jpg', 'AnotherOneBitesTheDust.mp3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `musicgenre`
--
ALTER TABLE `musicgenre`
  ADD PRIMARY KEY (`name`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `songlist`
--
ALTER TABLE `songlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musicgenre` (`musicgenre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `songlist`
--
ALTER TABLE `songlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `songlist`
--
ALTER TABLE `songlist`
  ADD CONSTRAINT `songlist_ibfk_1` FOREIGN KEY (`musicgenre`) REFERENCES `musicgenre` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
