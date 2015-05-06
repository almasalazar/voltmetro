-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2015 a las 05:46:47
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
  `ultima_calib` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `prox_calib` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `observaciones` text,
  `archivo` text,
  `rpe` varchar(100) NOT NULL,
  `id_estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aparato`
--

INSERT INTO `aparato` (`no_serie`, `descripcion`, `marca`, `modelo`, `tipo`, `ultima_calib`, `prox_calib`, `observaciones`, `archivo`, `rpe`, `id_estatus`) VALUES
('001897', 'lk', 'lk', 'lkl', 'lkl', '2015-04-09 05:00:00', '2015-05-10 05:00:00', ',ll buen estado', NULL, '10030754', 2),
('01', 'nada', 'nada', 'nada', 'nada', '2015-04-15 05:00:00', '2015-04-16 05:00:00', '', '1366-img4.jpg', '9EP64', 7),
('012', 'nada', 'nada', 'nada12', 'nada', '2015-04-11 05:00:00', '2015-04-10 05:00:00', 'nada', NULL, '9EP64', 2),
('02', 'jhj', 'iji', 'ijiji', 'ijij', '2015-04-16 05:00:00', '2015-05-06 05:00:00', '', NULL, '9A8MG', 5),
('03', 'ljk', 'l', 'l', 'l', '2015-04-09 05:00:00', '2015-04-29 05:00:00', '', NULL, '9AEYJ', 1),
('11111', 'lkll', 'lklk', 'lklk', 'llklk', NULL, NULL, '', NULL, '9AX6V', 8),
('123', 'nada\r\n', 'nada', 'nada', 'nada', '2015-04-07 05:00:00', '2015-04-07 05:00:00', 'nada', NULL, '9A1EC', 7),
('12345', 'voltmetro', 'aemc', '500', '2', '2015-04-30 05:00:00', '2015-04-30 05:00:00', 'equipo nuevo', NULL, '9l1am', 4),
('1400', 'voltmetro', 'fluke', '520', 'digital', '2015-04-30 05:00:00', '2016-04-30 05:00:00', 'Cumple parcialmente el su ultima calibracion', NULL, '9ercb', 7),
('27561505', 'Voltmetro', 'FLUKE\r\n', '376\r\n', 'Digital\r\n', '2014-10-09 05:00:00', '2015-10-09 05:00:00', '', 'Logo_CFE_Oficial.jpg', '9L1A8', 2),
('330', 'lk', 'p', 'p', 'p', '2015-04-07 05:00:00', '2015-04-07 05:00:00', 'o', NULL, '9AX6V', 2),
('3306669', 'jhj', 'iji', 'ijiji', 'ijij', '2015-04-16 05:00:00', '2015-04-15 05:00:00', '', NULL, '9EP64', 7),
('987', 'no', 'no', 'no', 'no', '2015-04-07 05:00:00', '2015-05-12 05:00:00', 'no', NULL, '9EP64', 2),
('lkkjh', 'jhjh', 'jhj', 'hj', 'jh', '2015-04-08 05:00:00', '2016-04-21 05:00:00', '', NULL, '9EP64', 6),
('sdfsdfsd', 'adasdasd', 'asdasd', 'asdadssad', 'sdsdfsdf', '2015-04-03 06:00:00', '2015-04-11 05:00:00', 'dfsdfsd', '8488-', '9EP64', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL,
  `area` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `area`, `tipo`) VALUES
(1, 'Apaseo el Alto', 'Agencia'),
(2, 'Apaseo el Grande', 'Regional'),
(3, 'Apaseo el Grande', 'Agencia'),
(4, 'Celaya', 'Urbana'),
(5, 'Celaya', 'Rural'),
(6, 'Celaya Distribución ', 'Ofna. Comunicaciones'),
(7, 'Celaya Distribución', 'Ofna. Subestaciones'),
(8, 'Celaya Distribución ', 'Ofna. Protecciones'),
(9, 'Celaya Distribución', 'Ofna. Celaya Distribución'),
(10, 'Celaya Distribución ', 'Depto. Planeación'),
(11, 'Celaya Distribución', 'Depto. ISC '),
(12, 'Celaya Distribución', 'Administración de la Energía '),
(13, 'Celaya Distribucion', 'Centro de Continuidad y Conexión '),
(14, 'Celaya Distribución ', 'Aseguramiento de la Medición '),
(15, 'Celaya Distribución', 'SuperIntendente'),
(16, 'Celaya Distribución', 'Atención al Cliente'),
(17, 'Comonfort\r\n', 'Agencia'),
(18, 'Cortazar', 'Agencia'),
(19, 'Dolores Hidalgo\r\n', 'Agencia'),
(20, 'Dolores Hidalgo\r\n', 'Regional'),
(21, 'Juventino Rosas\r\n', 'Agencia'),
(22, 'San Felipe', 'Agencia'),
(23, 'San Miguel de Allende\r\n', 'Agencia'),
(24, 'San Miguel de Allende\r\n', 'Regional'),
(25, 'Villagrán', 'Agencia'),
(26, 'Villagrán', 'Regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '10030754', NULL, 'N;'),
('admin', '9ERCB', NULL, 'N;'),
('editor', '9L1AM', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, '', NULL, 'N;'),
('editor', 2, '', NULL, 'N;'),
('invitado', 2, '', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE IF NOT EXISTS `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`id_biblioteca`, `nombre`) VALUES
(1, '7228-reporte 2 cfe.docx');

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
(6, 'Laboratorio'),
(7, 'Pendiente de Calibrar'),
(8, 'Equipo Nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `rpe` varchar(100) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `es_jefe` tinyint(1) NOT NULL,
  `rpe_jefe` varchar(100) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`rpe`, `nombre`, `email`, `password`, `es_jefe`, `rpe_jefe`, `id_area`) VALUES
('020202', 'pk', 'aurys_dora@hotmail.com', '', 1, '9L1A8', 7),
('10030754', 'Alma', 'aurys_dora@hotmail.com', '10030754', 1, '1', 11),
('9A1EC', 'Miguel Zuñiga Aguilar', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11),
('9A8MG', 'Humberto Mendoza Macias', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11),
('9AEYJ', 'Victor Sosa Equihua', 'victor.sosa02@cfe.gob.mx', '9AEYJ', 1, '9AEYJ', 15),
('9AF47', 'Martin Escoto Ibarra', 'martin.escoto@cfe,gob.mx', '9AF47', 1, '9AF47', 9),
('9AX6V', 'Gabino Ramírez Santarosa', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11),
('9B77T', 'Jesús Ibarra Muñiz', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11),
('9EBUP', 'Rafael Alcantara Torres', 'rafael.alcantara@cfe.gob.mx', '10030754', 1, '9EBUP', 24),
('9EBYG', 'Gerardo Soto Arreola', 'gerado.soto@cfe.gob.mx', '9EBYG', 1, '9EBYG', 5),
('9EC1D', 'Ignacio Imamura Garcia', 'ignacio.imamura@cfe.gob.mx', '9EC1D', 1, '9EC1D', 16),
('9EC2C', 'Viridiana Lorenzo Roman', 'viridiana.lorenzo@cfe.gob.mx', '9EC2C', 1, '9EC2C', 21),
('9EC8M', 'Manuel Ledesma Gonzalez', 'manuel.ledesma@cfe.gob.mx', '9EC8M', 1, '9EC8M', 26),
('9EP54', 'Jaime Macias Bañuelos', 'jaime.macias@cfe.gob.mx', '9EP54', 1, '9EP54', 6),
('9EP64', 'Adiel Saucedo Montoya', 'adiel.saucedo@cfe.gob.mx', '9EP64', 1, '9EP64', 1),
('9ER3V', 'Paola Herrera Olguin', 'paola.herrera@cfe.gob.mx', '9ER3V', 1, '9ER3V', 25),
('9ERCB', 'David Varela Herrera', 'david.varela@cfe.gob.mx', '9ERCB', 1, '9ERCB', 14),
('9ERDP', 'Adriana Rodriguez Aguado', 'adriana.rodriguez@cfe.gob.mx', '9ERDP', 1, '9ERDP', 4),
('9L1A8', 'Marcos Rivera Velazquez', 'marcos.rivera@cfe.gob.mx', '9L1A8', 1, '9L1A8', 11),
('9L1AM', 'Olivia Peguero Ojeda', 'olivia.peguero@cfe.gob.mx', '9L1AM', 2, '9M80N', 13),
('9L1D5', 'Eduardo Luna Nuñez', 'eduardo.luna@cfe.gob.mx', '9L1D5', 1, '9L1D5', 8),
('9L1F5', 'Jose Yañez Diaz', 'jose.yanez02@cfe.gob.mx', '9L1F5', 1, '9L1F5', 12),
('9L1JA', 'Jonatan Rodriguez Perez', 'jonatan.rodriguez@cfe.gob.mx', '9L1JA', 1, '9L1JA', 22),
('9L1JR', 'Victor Lara Cuevas', 'victor.lara@cfe.gob.mx', '9L1JR', 1, '9L1JR', 17),
('9L1L7', 'Ignacio Vega Perez', 'ignacio.vega@cfe.gob.mx', '9L1L7', 1, '9L1L7', 10),
('9L1NE', 'Jose Corona Perez', 'jose.corona04@cfe.gob.mx', '9L1NE', 1, '9L1NE', 23),
('9L1NN', 'Julio Flores Parra', 'julio.flores03@cfe.gob.mx', '9L1NN', 1, '9L1NN', 19),
('9M35N', 'Ricardo Juarez Perez', 'ricardo.juarez02@cfe.gob.mx', '9M35N', 1, '9M35N', 7),
('9M3AW', 'Jania Piña Rico', 'jania.pina@cfe.gob.mx', '9M3AW', 1, '9M3AW', 3),
('9M80N', 'Victor Benitez Hernadez', 'victor.benites@cfe.gob.mx', '9M80N', 1, '9M80N', 13),
('9M8JD', 'Elda Villalva Cervantes', 'elda.villalva@cfe.gob.mx', '9M8JD', 1, '9M8JD', 18),
('K228J', 'Adolfo Cuevas Romero', 'adolfo.cuevas@cfe.gob.mx', 'K228J', 1, 'K228J', 20),
('K345J', 'Carlos Rimoldi Ocampo', 'carlos.rimoldi@cfe.gob.mx', 'K345J', 1, 'K345J', 2);

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
-- Indices de la tabla `authassignment`
--
ALTER TABLE `authassignment`
 ADD PRIMARY KEY (`itemname`,`userid`);

--
-- Indices de la tabla `authitem`
--
ALTER TABLE `authitem`
 ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `authitemchild`
--
ALTER TABLE `authitemchild`
 ADD PRIMARY KEY (`parent`,`child`), ADD KEY `child` (`child`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
 ADD PRIMARY KEY (`id_biblioteca`);

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
-- Filtros para la tabla `authassignment`
--
ALTER TABLE `authassignment`
ADD CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `authitemchild`
--
ALTER TABLE `authitemchild`
ADD CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
