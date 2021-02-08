-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2021 a las 23:34:37
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cod-090520-2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel`
--

CREATE TABLE IF NOT EXISTS `carousel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `link` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `carousel`
--

INSERT INTO `carousel` (`id`, `name`, `titulo`, `descripcion`, `link`) VALUES
(1, 'Ojo Cotidiano', 'Titulo Prueba Ojo Cotidiano', 'abcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy\r\nabcdefghijklmnopqrstuvwxzy', ''),
(2, 'Comerciales', 'Titulo Prueba Comercial', 'abcdefghijklmnopqrstuvwxzy', ''),
(3, 'Entrenamiento', 'Titulo Prueba Entrenamiento', 'abcdefghijklmnopqrstuvwxyz', ''),
(4, 'Anatomia', 'Titulo Prueba Anatomia', 'abcdefghijklmnopqrstuvwxyz', ''),
(5, 'Franquisiados', 'Titulo Prueba Franquisiados', 'abcdefghijklmnopqrstuvwxyz', ''),
(6, 'Medios', 'Titulo Prueba Medios', 'abcdefghijklmnopqrstuvwxyz', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `data`) VALUES
(1, 'Direccion de prueba, Caracas Venezuela - Telefonos +58-212.369.0123 / 4567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `foto`
--

INSERT INTO `foto` (`nombre`, `foto`) VALUES
('prueba1', 'pic3.jpg'),
('9', 'pic4.jpg'),
('', 'fotos/pic4.jpg'),
('', 'fotos/pic4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `title`, `folder`, `src`, `name`, `titulo`, `descripcion`, `created_at`) VALUES
(3, 'ojo cotidiano prueba de imagen y doc', 'uploads/', 'diseYo1_1.jpeg', '', '', '', '2020-05-15 11:29:23'),
(4, 'ojo cotidiano prueba de imagen y doc', 'uploads/', 'juegos-galeria-1.png', '', '', '', '2020-05-15 11:50:26'),
(5, 'camus de acuario', 'uploads/', '136095185_905492696855867_2984459337733222957_o.jpg', '', '', '', '2021-01-18 16:53:24'),
(6, 'CDZ Calendario', 'uploads/', '132973084_817942188773773_3197490204534258910_o.jpg', '', '', '', '2021-01-18 16:54:18'),
(7, 'Los desaparecidos de UCM', 'uploads/', '127159705_1462246953979955_5167217774395903056_n.jpg', '', '', '', '2021-01-18 16:55:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE IF NOT EXISTS `objetivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `objetivos`
--

INSERT INTO `objetivos` (`id`, `name`, `descripcion`, `fecha`) VALUES
(1, 'mision', 'La mision de la empresa es la de...', '2020-05-10'),
(2, 'vision', 'La vision de la empresa es la de...', '2020-05-10'),
(3, 'valores', 'Los valores de la empresa es la de...', '2020-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `overlay`
--

CREATE TABLE IF NOT EXISTS `overlay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
