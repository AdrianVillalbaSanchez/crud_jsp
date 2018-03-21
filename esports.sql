-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 17:35:11
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `esports`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `codEqui` int(11) NOT NULL,
  `nomEqui` varchar(45) DEFAULT NULL,
  `tagEqui` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`codEqui`, `nomEqui`, `tagEqui`) VALUES
(1, 'FaZe', 'FaZe'),
(2, 'Cloud9', 'C9'),
(3, 'Schroet Kommando', 'SK'),
(4, 'Virtus Pro', 'VP'),
(5, 'Movistar Riders', 'MR'),
(6, 'x6tence', 'x6'),
(7, 'Ghost Animals', 'GA'),
(8, 'Natus Vincere', 'NaVi'),
(9, 'Gamers2', 'G2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `codJug` int(11) NOT NULL,
  `nomJug` varchar(45) DEFAULT NULL,
  `nickJug` varchar(45) DEFAULT NULL,
  `nacionJug` varchar(45) DEFAULT NULL,
  `EQUIPO_codEqui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`codJug`, `nomJug`, `nickJug`, `nacionJug`, `EQUIPO_codEqui`) VALUES
(1, 'Finn Andersen', 'karrigan', 'Dinamarca', 1),
(2, 'Olof Kajbjer', 'olofmeister', 'Suecia', 1),
(3, 'Ladislav Kovács', 'GuardiaN', 'Eslovaquia', 1),
(4, 'Nikola Kovač', 'NiKo', 'Bosnia y Herzegovina', 1),
(5, 'Håvard Nygaard', 'rain', 'Noruega', 1),
(6, 'Tyler Latham', 'Skadoodle', 'Estados Unidos', 2),
(7, 'Will Wierzba', 'RUSH', 'Estados Unidos', 2),
(8, 'Tarik Celik', 'tarik', 'Estados Unidos', 2),
(9, 'Timothy Ta', 'autimatic', 'Estados Unidos', 2),
(10, 'Jake Yip', 'Stewie2K', 'Estados Unidos', 2),
(11, 'Gabriel Toledo', 'FalleN', 'Brasil', 3),
(12, 'Fernando Alvarenga', 'fer', 'Brasil', 3),
(13, 'Ricardo Prass', 'boltz', 'Brasil', 3),
(14, 'Marcelo David', 'coldzera', 'Brasil', 3),
(15, 'Epitacio de Melo', 'TACO', 'Brasil', 3),
(16, 'Filip Kubski', 'NEO', 'Polonia', 4),
(17, 'Jarosław Jarząbkowski', 'pashaBiceps', 'Polonia', 4),
(18, 'Janusz Pogorzelski', 'Snax', 'Polonia', 4),
(19, 'Paweł Bieliński', 'Byali', 'Polonia', 4),
(20, 'Michał Müller', 'MICHU', 'Polonia', 4),
(21, 'Juan Carlos Chacón', 'meisoN', 'España', 5),
(22, 'Francesc Savall Garcia', 'donQ', 'España', 5),
(23, 'Javier Sánchez', 'dragunov', 'España', 5),
(24, 'Alejandro Masanet', 'ALEX', 'España', 5),
(25, 'Alejandro Fernández-Quejo Cano', 'mopoz', 'España', 5),
(28, 'Óscar Cañellas', 'mixwell', 'España', 9),
(38, 'Kenny Schrub', 'kennyS', 'Francia', 9),
(39, 'Nathan Schmitt', 'NBK-', 'Francia', 9),
(40, 'Dan Madesclaire', 'apEX', 'Francia', 9),
(41, 'Alexandre Pianaro', 'bodyy', 'Francia', 9),
(42, 'Ioann Sukhariev', 'Edward', 'Ucrania', 8),
(43, 'Danylo Teslenko', 'Zeus', 'Ucrania', 8),
(44, 'Egor Vasilyev', 'flamie', 'Rusia', 8),
(45, 'Aleksandr Kostyliev', 's1mple', 'Ucrania', 8),
(46, 'Denis Sharipov', 'electronic', 'Rusia', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`codEqui`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`codJug`),
  ADD KEY `fk_JUGADOR_EQUIPO_idx` (`EQUIPO_codEqui`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `codEqui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `codJug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `fk_JUGADOR_EQUIPO` FOREIGN KEY (`EQUIPO_codEqui`) REFERENCES `equipo` (`codEqui`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
