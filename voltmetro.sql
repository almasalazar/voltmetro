-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2015 a las 20:52:38
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `voltmetro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparato`
--

CREATE TABLE IF NOT EXISTS `aparato` (
  `no_serie` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `marca` text NOT NULL,
  `modelo` text NOT NULL,
  `tipo` text NOT NULL,
  `ultima_calib` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prox_calib` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `observaciones` text,
  `archivo` text,
  `rpe` varchar(100) NOT NULL,
  `id_estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `nombre`, `tipo`) VALUES
(1, 'Apaseo el Alto', 'Agencia'),
(2, 'Apaseo el Grande', 'Regional'),
(3, 'Apaseo el Grande', 'Agencia'),
(4, 'Celaya', 'Urbana'),
(5, 'Celaya', 'Rural'),
(6, 'Celaya Distribución ', 'Ofna. Comunicaciones'),
(7, 'Celaya Distribución', 'Ofna. Subestaciones'),
(8, 'Celaya Distribución ', 'Ofna. Protecciones'),
(9, 'Celaya Distribución', 'Depto. Planeación'),
(10, 'Celaya Distribución ', 'Depto. ISC'),
(11, 'Celaya Distribución', 'Ofna. Servicio al Cliente'),
(12, 'Celaya Distribución', 'SuperIntendente'),
(13, 'Celaya Distribución', 'Atención al Cliente'),
(14, 'Comonfort\r\n', 'Agencia'),
(15, 'Cortazar', 'Agencia'),
(16, 'Dolores Hidalgo\r\n', 'Agencia'),
(17, 'Dolores Hidalgo\r\n', 'Regional'),
(18, 'Juventino Rosas\r\n', 'Agencia'),
(19, 'San Felipe', 'Agencia'),
(20, 'San Miguel de Allende\r\n', 'Agencia'),
(21, 'San Miguel de Allende\r\n', 'Regional'),
(22, 'Villagrán', 'Agencia'),
(23, 'Villagrán', 'Regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE IF NOT EXISTS `estatus` (
  `id_estatus` int(11) NOT NULL,
  `estatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id_estatus`, `estatus`) VALUES
(1, 'Aceptado'),
(2, 'Almacen'),
(3, 'Dañado'),
(4, 'Disponible'),
(5, 'Extraviado'),
(6, 'Laboratorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `rpe` varchar(100) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `es_jefe` tinyint(1) NOT NULL,
  `rpe_jefe` varchar(100) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`rpe`, `nombre`, `correo`, `password`, `es_jefe`, `rpe_jefe`, `id_area`) VALUES
('2341', 'David Varela Herrera', 'david.varela@cfe.com', '123', 1, '2341', 8),
('234rmkj', 'xeknxe', 's', '', 1, 's', 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aparato`
--
ALTER TABLE `aparato`
 ADD PRIMARY KEY (`no_serie`), ADD KEY `rpe` (`rpe`), ADD KEY `id_estatus` (`id_estatus`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
 ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
 ADD PRIMARY KEY (`id_estatus`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
 ADD PRIMARY KEY (`rpe`), ADD UNIQUE KEY `rpe` (`rpe`), ADD KEY `id_area` (`id_area`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aparato`
--
ALTER TABLE `aparato`
ADD CONSTRAINT `aparato_ibfk_1` FOREIGN KEY (`rpe`) REFERENCES `persona` (`rpe`),
ADD CONSTRAINT `aparato_ibfk_2` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id_estatus`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
