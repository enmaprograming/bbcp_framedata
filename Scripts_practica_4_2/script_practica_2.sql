-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2014 a las 09:04:56
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bb_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE IF NOT EXISTS `movimientos` (
  `idmov` int(3) NOT NULL AUTO_INCREMENT,
  `input` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `namemove` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cancel` varchar(8) COLLATE latin1_spanish_ci NOT NULL,
  `starter` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `guard` varchar(8) COLLATE latin1_spanish_ci NOT NULL,
  `level` int(1) NOT NULL,
  `attribute` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `startup` int(3) NOT NULL,
  `active` int(3) NOT NULL,
  `recovery` int(3) NOT NULL,
  `frameadv_type` varchar(1) COLLATE latin1_spanish_ci NOT NULL,
  `frameadv_num` int(3) NOT NULL,
  `invul_start` int(3) NOT NULL,
  `invul_end` int(3) NOT NULL,
  `invul_where` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `personajes_idCH` int(2) NOT NULL,
  PRIMARY KEY (`idmov`,`personajes_idCH`),
  KEY `fk_movimientos_personajes_idx` (`personajes_idCH`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`idmov`, `input`, `namemove`, `cancel`, `starter`, `guard`, `level`, `attribute`, `startup`, `active`, `recovery`, `frameadv_type`, `frameadv_num`, `invul_start`, `invul_end`, `invul_where`, `personajes_idCH`) VALUES
(1, '5A', '5A', 'CSOJR', 'S', 'ALL', 1, 'B', 5, 3, 9, '+', 0, 0, 0, 'None', 1),
(2, '5B', '5B', 'SOR', 'N', 'HL', 3, 'B', 8, 8, 16, '-', 7, 0, 0, 'None', 1),
(3, '5C', '5C', 'SO(J)R', 'N', 'HL', 4, 'B', 13, 4, 20, '-', 5, 0, 0, 'None', 1),
(4, '2A', '2A', 'CSOR', 'S', 'ALL', 1, 'F', 7, 2, 10, '+', 0, 0, 0, 'None', 1),
(5, '2B', '2B', 'SOR', 'N', 'L', 2, 'F', 9, 2, 15, '-', 3, 0, 0, 'None', 1),
(6, '2C', '2C', 'SOR', 'N', 'HL', 3, 'F', 12, 3, 13, '+', 1, 0, 0, 'None', 1),
(7, '6A', '6A', 'SO(J)R', 'N', 'HL', 3, 'B', 13, 4, 24, '-', 11, 4, 13, 'Head', 1),
(8, '6B', '6B', 'SOR', 'N', 'H', 3, 'B', 24, 4, 19, '-', 6, 0, 0, 'None', 1),
(9, '6C', '6C', 'SOJR', 'N', 'L, HL', 4, 'F,B', 20, 2, 33, '-', 16, 0, 0, 'None', 1),
(10, '3C', '3C', 'SOJR', 'N', 'L', 4, 'F', 12, 3, 27, '-', -11, 0, 0, 'None', 1),
(11, '6AB', 'Counter Assault', 'R', 'V', 'ALL', 4, 'B', 13, 3, 32, '-', 16, 1, 20, 'ALL', 1),
(12, 'AB', 'Crush Trigger', 'R', 'N', 'B', 3, 'B', 30, 1, 23, '+', 2, 0, 0, 'None', 1),
(13, '5D-1', '5D', 'SOR', 'N', 'HL', 5, 'B', 15, 5, 12, '-', 12, 0, 0, 'None', 1),
(14, '5D-2', '5D', 'SOR', 'N', 'ALL', 5, 'B', 12, 3, 29, '-', 11, 0, 0, 'None', 1),
(15, '2D', '2D', 'R', 'N', 'L', 5, 'F', 18, 2, 23, '-', 4, 0, 0, 'None', 1),
(16, '6D', '6D', 'SOJR', 'N', 'HL', 5, 'H', 26, 3, 30, '-', 12, 0, 0, 'None', 1),
(17, 'AC', 'FThrow', 'SOR', 'S', 'T', 4, 'T', 7, 3, 19, '-', 0, 0, 0, 'None', 1),
(18, '4AC', 'BThrow', 'SOR', 'S', 'T', 4, 'T', 7, 3, 19, '-', 0, 0, 0, 'None', 1),
(19, '8AC', 'AThrow', 'SOR', 'S', 'T', 4, 'T', 7, 3, 18, '-', 0, 0, 0, 'None', 1),
(20, '214A', 'Hell Fang', 'R', 'N', 'ALL', 4, 'B', 15, 13, 28, '-', 4, 0, 0, 'None', 1),
(21, '214D', 'F_Hell Fang', 'R', 'N', 'ALL', 4, 'B', 9, 3, 35, '-', 19, 0, 0, 'None', 1),
(22, '623C', 'C_Inferno Divider', 'R', 'S', 'HL', 4, 'B', 9, 13, 39, '-', 28, 1, 17, 'ALL', 1),
(23, 'j.623C', 'Aerial_C_Inferno Divider', 'R', 'S', 'HL', 4, 'B', 5, 13, 19, '+', 0, 1, 13, 'ALL', 1),
(24, '623D', 'D_Inferno Divider', 'R', 'N', 'HL,ALL', 4, 'B', 7, 13, 51, '-', 40, 0, 0, 'None', 1),
(25, 'j.623D', 'Aerial_D_Inferno Divider', 'R', 'N', 'ALL', 4, 'H', 7, 13, 19, '+', 0, 0, 0, 'None', 1),
(26, '214B', 'Gauntlet Hades', 'R', 'S', 'HA', 4, 'H', 20, 7, 27, '-', 11, 0, 0, 'None', 1),
(27, 'j.214B', 'Aerial_Gauntlet Hades', 'R', 'S', 'HA', 4, 'H', 12, 9, 15, '+', 0, 0, 0, 'None', 1),
(28, 'j.214D', 'F_Gauntlet Hades', 'R', 'S', 'ALL', 4, 'H', 9, 3, 12, '+', 0, 0, 0, 'None', 1),
(29, '236D', 'Dead Spike', 'RDa', 'N', 'ALL', 4, 'HBFP', 26, 13, 57, '-', 1, 0, 0, 'None', 1),
(30, 'j.214C', 'Bellial Edge', 'R', 'N', 'ALL', 4, 'H', 15, 5, 16, '+', 1, 0, 0, 'None', 1),
(31, '214D', 'Blood Scythe', 'R', 'N', 'ALL', 5, 'H', 37, 3, 13, '+', 5, 0, 0, 'None', 1),
(32, 'j.214D', 'Aerial_Blood Scythe', 'R', 'N', 'ALL', 4, 'H', 19, 4, 18, '+', 0, 0, 0, 'None', 1),
(33, '632146D', 'Carnage Scissors', 'R', 'N', 'ALL', 4, 'B', 16, 6, 58, '-', 43, 1, 14, 'ALL', 1),
(34, '214214D', 'Devoured by Darkness', 'R', 'V', 'ALL', 4, 'B', 25, 3, 56, '-', 40, 1, 16, 'ALL', 1),
(35, '214236C', 'Black Onslaught', 'None', 'N', 'ALL', 5, 'B', 28, 2, 25, '-', 12, 1, 29, 'ALL', 1),
(36, '5A', '5A', 'CSOJR', 'S', 'ALL', 0, 'B', 6, 3, 9, '-', 2, 0, 0, 'None', 2),
(37, '5B', '5B', 'SO(J)R', 'N', 'HL', 2, 'B', 7, 5, 19, '-', 6, 0, 0, 'None', 2),
(38, '5C', '5C', 'SOJR', 'N', 'HL', 3, 'B', 10, 4, 19, '-', 6, 0, 0, 'None', 2),
(39, '2A', '2A', 'CSOJR', 'S', 'ALL', 0, 'F', 7, 3, 8, '-', 1, 0, 0, 'None', 2),
(40, '2B', '2B', 'SOJ(J)R', 'N', 'L', 2, 'F', 9, 1, 16, '-', 3, 0, 0, 'None', 2),
(41, '2C', '2C', 'SOJR', 'N', 'HL', 3, 'B', 17, 3, 24, '-', 10, 9, 19, 'H', 2),
(42, '6A', '6A', 'R', 'N', 'H', 4, 'B', 19, 3, 20, '-', 4, 0, 0, 'None', 2),
(43, '6B', '6B', 'SOR', 'N', 'ALL', 4, 'H', 25, 2, 14, '+', 3, 4, 18, 'F', 2),
(44, '6C', '6C', 'SOR', 'N', 'HL', 5, 'B', 19, 3, 31, '-', 13, 0, 0, 'None', 2),
(45, '3C', '3C', 'SOR', 'N', 'L', 3, 'F', 10, 3, 29, '-', 15, 0, 0, 'None', 2),
(46, '6AB', 'Counter Assault', 'R', 'V', 'ALL', 4, 'B', 13, 5, 37, '-', 23, 1, 20, 'ALL', 2),
(47, 'AB', 'Crush Trigger', 'R', 'N', 'B', 3, 'B', 30, 1, 27, '+', 2, 0, 0, 'None', 2),
(48, '5D', '5D', 'DrRDa', 'N', 'ALL', 4, 'HBFP', 17, 8, 20, '-', 9, 0, 0, 'None', 2),
(49, '2D', '2D', 'R', 'N', 'ALL', 4, 'HBFP*', 22, 3, 35, '+', 3, 0, 0, 'None', 2),
(50, '6D', '6D', 'R', 'N', 'ALL', 4, 'HBFP', 35, 6, 25, '+', 12, 0, 0, 'None', 2),
(51, '236D', 'Hishougeki(no_charge)', 'R', 'S', 'ALL', 4, 'HBFP*', 19, 1, 68, '-', 13, 0, 0, 'None', 2),
(52, '236D', 'Hishougeki(charge)', 'R', 'S', 'ALL', 4, 'HBFP*', 42, 1, 72, '+', 30, 0, 0, 'None', 2),
(53, '623D', 'Hirensou', 'R', 'N', 'HL', 4, 'B', 13, 5, 42, '-', 24, 1, 15, 'ALL', 2),
(54, '214D', 'Musou Tousshougeki(1)', 'R', 'N', 'LA', 4, 'F', 17, 24, 9, '-', 10, 0, 0, 'None', 2),
(55, '214D~C', 'Musou Tousshougeki(2)', 'R', 'N', 'ALL', 4, 'H', 17, 3, 27, '-', 11, 0, 0, 'None', 2),
(56, '6AC', 'FThrow', 'SOR', 'S', 'T', 4, 'T', 7, 5, 15, '+', 0, 0, 0, 'None', 2),
(57, '4AC', 'BThrow', 'SOR', 'S', 'T', 4, 'T', 7, 5, 15, '+', 0, 0, 0, 'None', 2),
(58, '8AC', 'AThrow', 'SOR', 'S', 'T', 0, 'T', 7, 3, 21, '+', 0, 0, 0, 'None', 2),
(59, '236A', 'Hishouken', 'R', 'N', 'ALL', 3, 'HBFP*', 14, 1, 44, '-', 6, 0, 0, 'None', 2),
(60, '623B', 'Fubuki', 'R', 'N', 'HL', 4, 'B', 6, 3, 33, '-', 17, 4, 8, 'H', 2),
(61, '623C', 'Rehhyou', 'R', 'S', 'HL', 4, 'B', 20, 3, 56, '-', 40, 1, 22, 'ALL', 2),
(62, '214B', 'Musou Senshouzan(1)', 'R', 'N', 'LA', 4, 'F', 17, 9, 7, '-', 8, 0, 0, 'None', 2),
(63, '214B~C', 'Musou Senshouzan(2)', 'R', 'N', 'ALL', 4, 'H', 15, 6, 25, '-', 12, 0, 0, 'None', 2),
(64, '22C', 'Sekkajin', 'None', 'N', 'ALL', 3, 'B', 8, 8, 29, '-', 17, 0, 0, 'None', 2),
(65, '632146C', 'Touga Hyojin', 'R', 'N', 'ALL', 4, 'HBFP*', 9, 1, 44, '-', 16, 1, 2, 'ALL', 2),
(66, '632146D', 'Hiyoku Getsumei', 'R', 'N', 'HL', 4, 'HBFP', 10, 1, 63, '-', 35, 1, 11, 'ALL', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE IF NOT EXISTS `personajes` (
  `idCH` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `health` int(5) NOT NULL,
  `dash_type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `jump_startup` int(1) NOT NULL,
  `n_jumps` int(1) NOT NULL,
  `n_air_dash` int(1) NOT NULL,
  `combo_prorate` int(3) NOT NULL,
  `combo_prorate_additional` int(2) DEFAULT NULL,
  `backdash_full_time` int(2) NOT NULL,
  `backdash_full_time_additional` int(2) DEFAULT NULL,
  `backdash_invul_start` int(2) NOT NULL,
  `backdash_invul_start_additional` int(2) DEFAULT NULL,
  `backdash_invul_end` int(2) NOT NULL,
  `backdash_invul_end_additional` int(2) DEFAULT NULL,
  PRIMARY KEY (`idCH`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`idCH`, `name`, `health`, `dash_type`, `jump_startup`, `n_jumps`, `n_air_dash`, `combo_prorate`, `combo_prorate_additional`, `backdash_full_time`, `backdash_full_time_additional`, `backdash_invul_start`, `backdash_invul_start_additional`, `backdash_invul_end`, `backdash_invul_end_additional`) VALUES
(1, 'Ragna', 10000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(2, 'Jin', 11500, 'Run', 4, 2, 1, 70, 0, 22, NULL, 1, NULL, 5, NULL),
(3, 'Noel', 11000, 'Run', 4, 2, 1, 80, NULL, 18, NULL, 1, NULL, 5, NULL),
(4, 'Rachel', 11000, 'Run', 4, 2, 1, 70, NULL, 23, NULL, 1, NULL, 7, NULL),
(5, 'Litchi', 11000, 'Run', 4, 2, 1, 70, 60, 21, 43, 1, 1, 5, 19),
(6, 'Bang', 11500, 'Run', 4, 2, 2, 80, 0, 36, 0, 1, 0, 9, 0),
(7, 'Tager', 13000, 'no_dash', 6, 1, 0, 60, NULL, 23, NULL, 1, NULL, 19, NULL),
(8, 'Carl', 9500, 'Step', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 7, NULL),
(9, 'Taokaka', 9500, 'Run', 4, 3, 2, 85, NULL, 18, NULL, 1, NULL, 7, NULL),
(10, 'Arakune', 10500, 'Teleport', 5, 2, 2, 80, NULL, 37, NULL, 1, NULL, 26, NULL),
(11, 'Hakumen', 12000, 'Step', 4, 2, 1, 60, 30, 15, NULL, 0, NULL, 0, NULL),
(12, 'V-13', 10000, 'Run', 4, 2, 1, 70, NULL, 25, NULL, 1, NULL, 5, NULL),
(13, 'Hazama', 11000, 'Step', 4, 2, 1, 70, NULL, 25, NULL, 1, NULL, 6, NULL),
(14, 'Tsubaki', 11000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(15, 'Mu-12', 10000, 'Run', 4, 2, 1, 80, NULL, 25, NULL, 1, NULL, 5, NULL),
(16, 'Makoto', 11000, 'Run', 4, 2, 1, 70, NULL, 20, NULL, 1, NULL, 5, NULL),
(17, 'Valkenhayn', 10500, 'Step', 4, 2, 1, 70, 80, 13, NULL, 1, 1, 5, 10),
(18, 'Platinum', 10500, 'Run', 4, 2, 1, 70, NULL, 22, NULL, 1, NULL, 7, NULL),
(19, 'Relius', 11000, 'Run', 4, 2, 1, 70, NULL, 13, NULL, 1, NULL, 7, NULL),
(20, 'Bullet', 11000, 'Step', 4, 2, 1, 65, NULL, 26, NULL, 1, NULL, 9, NULL),
(21, 'Azrael', 12000, 'Teleport', 4, 2, 1, 90, NULL, 26, NULL, 1, NULL, 20, NULL),
(22, 'Amane', 10000, 'Run', 4, 2, 1, 80, NULL, 20, NULL, 1, NULL, 5, NULL),
(23, 'Izayoi', 11000, 'Run/Hover-dash', 4, 2, 1, 90, 80, 20, NULL, 1, NULL, 5, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `fk_movimientos_personajes` FOREIGN KEY (`personajes_idCH`) REFERENCES `personajes` (`idCH`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
