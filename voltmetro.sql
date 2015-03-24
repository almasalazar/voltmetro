-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2015 a las 05:50:06
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

--
-- Volcado de datos para la tabla `aparato`
--

INSERT INTO `aparato` (`no_serie`, `descripcion`, `marca`, `modelo`, `tipo`, `ultima_calib`, `prox_calib`, `observaciones`, `archivo`, `rpe`, `id_estatus`) VALUES
('27561505', 'Voltmetro', 'FLUKE\r\n', '376\r\n', 'Digital\r\n', '2014-10-09 05:00:00', '2015-10-09 05:00:00', '', '', '9L1A8', 1),
('33006670', 'Voltmetros', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '9AX6V', 1),
('3306669', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '9A8MG', 1),
('3306671', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '9B77T', 1),
('47130168', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '9A1EC', 1);

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
  `id_area` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`rpe`, `nombre`, `correo`, `password`, `es_jefe`, `rpe_jefe`, `id_area`, `id_rol`) VALUES
('9A1EC', 'Miguel Zuñiga Aguilar', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11, NULL),
('9A8MG', 'Humberto Mendoza Macias', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11, NULL),
('9AEYJ', 'Victor Sosa Equihua', 'victor.sosa02@cfe.gob.mx', 'c9c637f497462e94a2887ed80b44d0f9', 1, '9AEYJ', 15, 3),
('9AF47', 'Martin Escoto Ibarra', 'martin.escoto@cfe,gob.mx', '5ffa5145f8ed5273a207e877cd57ffb9', 1, '9AF47', 9, 3),
('9AX6V', 'Gabino Ramírez Santarosa', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11, NULL),
('9B77T', 'Jesús Ibarra Muñiz', 'marcos.rivera@cfe.com', '', 2, '9L1A8', 11, NULL),
('9EBUP', 'Rafael Alcantara Torres', 'rafael.alcantara@cfe.gob.mx', '3bfdc38f1ab7039c7529338dd30221ea', 1, '9EBUP', 24, 3),
('9EBYG', 'Gerardo Soto Arreola', 'gerado.soto@cfe.gob.mx', 'c761f4d236f330fe1ab9a35bd6968573', 1, '9EBYG', 5, 3),
('9EC1D', 'Ignacio Imamura Garcia', 'ignacio.imamura@cfe.gob.mx', 'bd4328586904202924ab3ef1cbc37fe1', 1, '9EC1D', 16, 3),
('9EC2C', 'Viridiana Lorenzo Roman', 'viridiana.lorenzo@cfe.gob.mx', 'e4ee44a32e34671685fea2a8852c756e', 1, '9EC2C', 21, 3),
('9EC8M', 'Manuel Ledesma Gonzalez', 'manuel.ledesma@cfe.gob.mx', 'fd05abb8df822067ae9409a0c795b1b3', 1, '9EC8M', 26, 3),
('9EP54', 'Jaime Macias Bañuelos', 'jaime.macias@cfe.gob.mx', '07734ad23c8a06e041addd00181b1313', 1, '9EP54', 6, 3),
('9EP64', 'Adiel Saucedo Montoya', 'adiel.saucedo@cfe.gob.mx', 'b6411d185c21a191671a3bc24005f056', 1, '9EP64', 1, 3),
('9ER3V', 'Paola Herrera Olguin', 'paola.herrera@cfe.gob.mx', '295dcd2a813f940d597569da644c74ad', 1, '9ER3V', 25, 3),
('9ERCB', 'David Varela Herrera', 'david.varela@cfe.gob.mx', '39c9c6e8cbe1018ec9a33393766ce7a7', 1, '9ERCB', 14, 1),
('9ERDP', 'Adriana Rodriguez Aguado', 'adriana.rodriguez@cfe.gob.mx', 'cb166b1eda5663682d7bdec8e99425db', 1, '9ERDP', 4, 3),
('9L1A8', 'Marcos Rivera Velazquez', 'marcos.rivera@cfe.gob.mx', '3f510235a70006030ef0b6928c1ef662', 1, '9L1A8', 11, 3),
('9L1AM', 'Olivia Peguero Ojeda', 'olivia.peguero@cfe.gob.mx', '241fb3a0a7ae0f50ef615d0c65597206', 2, '9M80N', 13, 2),
('9L1D5', 'Eduardo Luna Nuñez', 'eduardo.luna@cfe.gob.mx', 'e86b739f1ab256140df3e728cf7c0c1e', 1, '9L1D5', 8, 3),
('9L1F5', 'Jose Yañez Diaz', 'jose.yanez02@cfe.gob.mx', '8de83acfec6440b8a449be2afccc189c', 1, '9L1F5', 12, 3),
('9L1JA', 'Jonatan Rodriguez Perez', 'jonatan.rodriguez@cfe.gob.mx', '527af816caa6cecb3ce05761a619de68', 1, '9L1JA', 22, 3),
('9L1JR', 'Victor Lara Cuevas', 'victor.lara@cfe.gob.mx', 'e248fa663f1939ac3f8f4b842a61f01e', 1, '9L1JR', 17, 3),
('9L1L7', 'Ignacio Vega Perez', 'ignacio.vega@cfe.gob.mx', '5e7b045dd5e368bd9ebe193615b06e91', 1, '9L1L7', 10, 3),
('9L1NE', 'Jose Corona Perez', 'jose.corona04@cfe.gob.mx', 'db734bacf64f32ee7d427de9af3c1059', 1, '9L1NE', 23, 3),
('9L1NN', 'Julio Flores Parra', 'julio.flores03@cfe.gob.mx', '9683352aad930ce0dab4614781eed558', 1, '9L1NN', 19, 3),
('9M35N', 'Ricardo Juarez Perez', 'ricardo.juarez02@cfe.gob.mx', '4e42125ad96e78fdd0be0093e5301757', 1, '9M35N', 7, 3),
('9M3AW', 'Jania Piña Rico', 'jania.pina@cfe.gob.mx', 'b51713f241d1422cac4c9f62511d7474', 1, '9M3AW', 3, 3),
('9M80N', 'Victor Benitez Hernadez', 'victor.benites@cfe.gob.mx', '6fbf26d1d07487bd07b65fa4ec1c54b2', 1, '9M80N', 13, 3),
('9M8JD', 'Elda Villalva Cervantes', 'elda.villalva@cfe.gob.mx', 'b435c81e606603bfd0598787ed085fe0', 1, '9M8JD', 18, 3),
('K228J', 'Adolfo Cuevas Romero', 'adolfo.cuevas@cfe.gob.mx', '65d69e642bf773dc28fdbbc7a7091386', 1, 'K228J', 20, 3),
('K345J', 'Carlos Rimoldi Ocampo', 'carlos.rimoldi@cfe.gob.mx', '7e95a5330ef73b939f5eabe31a464c97', 1, 'K345J', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre`) VALUES
(1, 'admin'),
(2, 'editor'),
(3, 'invitado');

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
 ADD PRIMARY KEY (`rpe`), ADD UNIQUE KEY `rpe` (`rpe`), ADD KEY `id_area` (`id_area`), ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id_rol`);

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
ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`),
ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
