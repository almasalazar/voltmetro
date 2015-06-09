-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2015 a las 08:51:10
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
  `marca` varchar(100) NOT NULL,
  `modelo` text NOT NULL,
  `tipo` text NOT NULL,
  `ultima_calib` date DEFAULT NULL,
  `prox_calib` date DEFAULT NULL,
  `observaciones` text,
  `archivo` text,
  `rpe` varchar(100) NOT NULL,
  `id_estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aparato`
--

INSERT INTO `aparato` (`no_serie`, `descripcion`, `marca`, `modelo`, `tipo`, `ultima_calib`, `prox_calib`, `observaciones`, `archivo`, `rpe`, `id_estatus`) VALUES
('01K1438CT', 'Voltmetro', 'AEMC\r\n', '512\r\n', 'Digital', '2014-11-14', '2015-11-14', '', NULL, 'K245J', 1),
('03G22967', 'Voltmetro', 'AEMC\r\n', '703', 'Digital', '2015-05-13', '2016-05-13', '', NULL, '9AF13', 1),
('05G24886', 'Voltmetro', 'AEMC\r\n', '3910\r\n', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9A1DH', 1),
('05M1072CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-06-16', '2015-06-16', '', NULL, '9L1JA', 1),
('05M1091CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9L1JA', 1),
('05M1157CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2013-05-28', '2014-05-28', '', NULL, '9EPVB', 7),
('05M1212CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9L1MN', 1),
('05M1213CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9EC71', 1),
('05M1215 CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-31', '2015-07-31', '', NULL, 'F7805', 1),
('05M1226CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-04-24', '2016-04-24', '', NULL, '9L1F5', 1),
('05M1231CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9ERDV', 1),
('05M1232CT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9A8LF', 1),
('100157', 'Voltmetro', 'AMPROBE\r\n', 'KWC-2000\r\n', 'Digital', '2015-01-28', '2016-01-28', '', NULL, '9AX7X', 1),
('100531', 'Voltmetro', 'AMPROBE\r\n', 'KWC-2000\r\n', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9A8MG', 1),
('1060713884', 'Voltmetro', 'TULMEX\r\n', '16-100', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9M35N', 1),
('109413KGDV', 'Voltmetro', 'AEMC\r\n', 'F09\r\n', 'Digital', '2015-05-18', '2016-05-18', '', NULL, '9AFDJ', 1),
('10G33550', 'Voltmetro', 'AEMC', '703', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9M35N', 1),
('111806KJDV', 'Voltmetro', 'AEMC\r\n', 'F09\r\n', 'Digital', '2014-08-29', '2015-08-29', '', NULL, '9ERBB', 1),
('139530M CDV', 'Voltmetro', 'AEMC\r\n', '405', 'Digital', '2015-02-27', '2016-02-27', '', NULL, '9B76X', 1),
('16369FGCT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-04-20', '2016-04-20', '', NULL, 'B911L', 1),
('16374FGCT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2013-07-02', '2014-07-02', '', NULL, '9AXNK', 1),
('16388 FGCT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9AXNW', 1),
('16389FGCT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9ERC9', 1),
('16390FGCT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2013-06-28', '2014-06-28', '', NULL, '9L1RC', 7),
('17440063', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-06-21', '2015-06-21', '', NULL, 'J306D', 1),
('17960061', 'Voltmetro', 'FLUKE', '322', 'Digital', '2013-05-02', '2014-05-02', '', NULL, 'B849L', 7),
('17960069', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9AF65', 1),
('17960131', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-27', '2016-02-27', '', NULL, '9L1NE', 1),
('17960273', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-26', '2016-02-26', '', NULL, 'B925L', 1),
('17960313', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9EP62', 1),
('17960354', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9M320', 1),
('17960382', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-05-13', '2016-05-13', '', NULL, '9L1F5', 1),
('17960389', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2015-02-27', '2016-02-27', '', NULL, '9B79J', 1),
('17960410', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9EC74', 1),
('17970043', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-05-23', '2015-05-23', '', NULL, '9A8TW', 1),
('17970084', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-03-26', '2016-03-26', '', NULL, '9M325', 1),
('17970521', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2015-02-20', '2016-02-20', '', NULL, '9EP99', 1),
('17970684', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9ERDH', 1),
('18600GDCT', 'Voltmetro', 'AEMC\r\n', '512', 'Digital', '2015-05-20', '2016-05-20', '', NULL, '9ECC3', 1),
('18603GDCT', 'Voltmetro', 'AEMC', '514', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9M35N', 1),
('19263GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-03-25', '2015-03-25', '', NULL, 'K193J', 7),
('19347GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-04-11', '2015-04-11', '', NULL, 'K193J', 7),
('19350GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-05-15', '2015-05-15', '', NULL, '9B7FF', 7),
('19351GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-04-11', '2015-04-11', '', NULL, '9AX7F', 7),
('19356GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9EC8M', 1),
('19438GFCT', 'Voltmetro', 'AEMC\r\n', '512', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9AXN9', 1),
('19439GFCT', 'Voltmetro', 'AEMC\r\n', '512', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9B79P', 1),
('19441GFCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2013-07-22', '2014-07-22', '', NULL, '9ER2P', 3),
('19443GFCT', 'Voltmetro', 'AEMC\r\n', '514\r\n', 'Digital', '2015-02-12', '2016-02-12', '', NULL, '9L1F3', 1),
('19600403', 'Voltmetro', 'FLUKE', '321', 'Digital', '2014-11-21', '2015-11-21', '', NULL, '9M8LG', 1),
('19640599', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-09-30', '2015-09-30', '', NULL, '9A8R8', 1),
('20070570', 'Voltmetro', 'FLUKE', '374', 'Digital', '2014-10-28', '2015-10-28', '', NULL, '9EBUP', 1),
('20210143', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2014-08-29', '2015-08-29', '', NULL, '9A1G7', 1),
('21416 HCCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-06-30', '2015-06-30', '', NULL, '9M31X', 1),
('232897', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-14', '2016-04-14', '', NULL, '9A8RA', 1),
('250416', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2016-05-24', '', NULL, '9EC71', 1),
('250417', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2014-04-24', '', NULL, '9L1F5', 1),
('250419', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2016-04-24', '', NULL, '9B77T', 1),
('250422', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2016-04-24', '', NULL, '9ECBT', 1),
('250602', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2016-04-24', '', NULL, '9M31V', 1),
('250655', 'Voltmetro', 'SENSOR LINK\r\n', '8-061-XT PLUS\r\n', 'Digital', '2015-04-24', '2016-04-24', '', NULL, '9EBU3', 1),
('25740577', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9A8FL', 1),
('25759JCCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9AXN2', 1),
('25897JCCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9EC78', 1),
('25898JCCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-01-28', '2016-01-28', '', NULL, '9B778', 1),
('25911JCCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9AF64', 1),
('261321 JLDV', 'Voltmetro', 'AEMC\r\n', 'F05\r\n', 'Digital', '2015-03-26', '2016-03-26', '', NULL, '9A8MG', 1),
('26504', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9AFDJ', 1),
('26660363WS', 'Voltmetro', 'FLUKE\r\n', '376\r\n', 'Digital', '2014-10-31', '2015-10-31', '', NULL, '9AF47', 1),
('26660364WS', 'Voltmetro', 'FLUKE\r\n', '376', 'Digital', '2014-10-31', '2015-10-31', '', NULL, 'K193J', 1),
('26660365WS', 'Voltmetro', 'FLUKE', '376\r\n', 'Digital', '2015-10-31', '2015-10-31', '', NULL, 'K354J', 1),
('26660366WS', 'Voltmetro', 'FLUKE', '376', 'Digital', '2014-10-31', '2015-10-31', '', NULL, '9EBUP', 1),
('26660367 WS', 'Voltmetro', 'FLUKE', '376', 'Digital', '2014-10-31', '2015-10-31', '', NULL, '9L1MC', 1),
('27561503', 'Voltmetro', 'FLUKE\r\n', '376', 'Digital', '2014-10-09', '2015-10-09', '', NULL, 'K193J', 1),
('27561505', 'Voltmetro', 'FLUKE\r\n', '376', 'Digital', '2014-10-09', '2015-10-09', '', NULL, '9L1A8', 1),
('27561510', 'Voltmetro', 'FLUKE\r\n', '376', 'Digital', '2014-10-09', '2015-10-09', '', NULL, 'K193J', 1),
('28012', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9M31V', 1),
('28130100', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9A8RA', 1),
('28397', 'Voltmetro', 'ELCONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2015-01-28', '2016-01-28', '', NULL, '9AX6V', 1),
('28400', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2014-06-26', '2015-06-26', '', NULL, '9AF7K', 1),
('28402', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2014-05-15', '2015-05-15', '', NULL, '9AX7X', 1),
('29901', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2015-02-27', '2016-02-27', '', NULL, '9ERBB', 1),
('29945', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP\r\n', 'Digital', '2015-03-26', '2016-03-26', '', NULL, '9ECBT', 1),
('30642 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-03-26', '2016-03-26', '', NULL, '9EC91', 1),
('30643KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-03-18', '2015-03-18', '', NULL, '9L1NE', 7),
('30644KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2013-08-22', '2014-08-28', '', NULL, '9AF47', 7),
('30645 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-04-13', '2016-04-13', '', NULL, '9B778', 1),
('30647 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-04-13', '2016-04-13', '', NULL, '9B7B0', 1),
('30648 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2015-03-13', '2016-04-13', '', NULL, '9AEYJ', 1),
('30649KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-03-18', '2015-03-18', '', NULL, '9ECDB', 7),
('30650 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-11-14', '2015-11-14', '', NULL, 'B848L', 1),
('30651KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-10-31', '2015-10-31', '', NULL, '9M8JK', 1),
('30652  KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-11-14', '2015-11-14', '', NULL, '9AX67', 1),
('30653KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-11-28', '2015-11-28', '', NULL, '9ERBB', 1),
('30654 KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-04-30', '2015-04-30', '', NULL, '9M325', 7),
('30655KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-08-16', '2015-08-16', 'SE REEMPLAZA POR EL VOLMETRO 30644KJCT Y SE MANDA CALIBRAR\r\n', NULL, '9EBU3', 1),
('30657KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-08-29', '2015-08-29', '', NULL, '9ER3V', 1),
('30658KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-08-19', '2015-08-19', '', NULL, '9M323', 1),
('30659KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2014-11-14', '2015-11-14', '', NULL, '9ECC5', 1),
('30660KJCT', 'Voltmetro', 'AEMC\r\n', '514', 'Digital', '2013-08-16', '2015-08-16', '', NULL, '9A1DH', 1),
('33006670', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '0000-00-00', '0000-00-00', '', NULL, '9AX6V', 8),
('3306669', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '0000-00-00', '0000-00-00', '', NULL, '9A8MG', 8),
('3306671', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '0000-00-00', '0000-00-00', '', NULL, '9B77T', 8),
('40405696', 'Voltmetro', 'UEI\r\n', 'DL250\r\n', 'Digital', '2015-01-28', '2016-01-28', '', NULL, '9AX6V', 1),
('43130147', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '0000-00-00', '0000-00-00', '', NULL, '9EBU3', 8),
('45030899', 'Voltmetro', 'FLUKE', '77', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9L1A8', 1),
('47130168', 'Voltmetro', 'EL CONTROL\r\n', 'NANOVIP3 \r\n', 'Digital', '0000-00-00', '0000-00-00', '', NULL, '9A1EC', 8),
('5219DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-08-28', '2015-08-28', '', NULL, '9EPW0', 1),
('5220DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2013-07-16', '2014-07-16', '', NULL, '9A18W', 1),
('5254DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9EC7W', 1),
('5259DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2013-07-08', '2014-07-08', '', NULL, '9L1NF', 1),
('5326DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-05-15', '2015-05-15', '', NULL, '9EC1D', 7),
('5347DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9AX7X', 1),
('5349 DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-25', '2015-07-25', '', NULL, '9B7BG', 1),
('5361DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-01-31', '2015-01-31', '', NULL, '9EP62', 7),
('5364DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9EP55', 1),
('5365DACT', 'Voltmetro', 'AEMC\r\n', '500\r\n', 'Digital', '2015-03-26', '2016-03-26', '', NULL, '9ERD0', 1),
('5394DACT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-02-19', '2016-02-19', '', NULL, 'B655L', 1),
('60181050', 'Voltmetro', 'FLUKE', '5520A\r\n', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9L1D5', 1),
('78710099', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9A8MG', 1),
('78711898', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-01-28', '2016-01-28', '', NULL, 'J182D', 1),
('78711911', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9B75L', 1),
('78711998', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9M2YK', 1),
('78712166', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-06-25', '2015-06-25', '', NULL, '9EC4R', 1),
('78712176', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-06-16', '2015-06-16', '', NULL, '9EC76', 1),
('78712180', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-05-23', '2015-05-23', '', NULL, '9B72A', 7),
('78712189', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-08-19', '2015-08-19', '', NULL, '9M35N', 1),
('78712192', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9B700', 1),
('79409092', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9EC7M', 1),
('8067067', 'Voltmetro', 'KYORITSU\r\n', '4200', 'Digital', '2014-06-26', '2015-06-26', '', NULL, '9A8RA', 1),
('8067222', 'Voltmetro', 'KYORITSU\r\n', '4200', 'Digital', '2015-02-20', '2016-02-20', '', NULL, '9A1EC', 1),
('83280237', 'Voltmetro', 'FLUKE\r\n', '322\r\n', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9EP64', 1),
('83320392', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-02-26', '2016-02-26', '', NULL, '9A8RA', 1),
('83330313', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-11-24', '2015-11-24', '', NULL, '9L1E4', 1),
('84070311', 'Voltmetro', 'FLUKE', '322', 'Digital', '2015-04-20', '2016-04-20', '', NULL, '9A8LE', 1),
('84070403', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-03-12', '2015-03-12', '', NULL, '90485', 7),
('84070436', 'Voltmetro', 'FLUKE', '335\r\n', 'Digital', '2014-11-21', '2015-11-21', '', NULL, '9EPX3', 1),
('84080455', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-02-28', '2015-02-28', '', NULL, '9AF05', 7),
('84100332', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-04-15', '2015-04-15', '', NULL, '9B79H', 1),
('84100572', 'Voltmetro', 'FLUKE', '322', 'Digital', '2014-08-19', '2015-08-19', '', NULL, '9ETXB', 1),
('84110193', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2014-06-25', '2015-06-25', '', NULL, '9B79K', 1),
('84110209', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2015-05-18', '2016-05-18', '', NULL, '9EP8T', 1),
('86558245', 'Voltmetro', 'FLUKE', '336', 'Digital', '2014-06-25', '2015-06-25', '', NULL, '9AFDJ', 1),
('88715916', 'Voltmetro', 'FLUKE', '337', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9A8MM', 1),
('89156832', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-10-31', '2015-10-31', '', NULL, '9A8T1', 1),
('89370351', 'Voltmetro', 'FLUKE', '189', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9AR8U', 1),
('89380011', 'Voltmetro', 'FLUKE', '189', 'Digital', '2014-09-22', '2015-09-22', '', NULL, '9L1D5', 1),
('89410747', 'Voltmetro', 'FLUKE', '321', 'Digital', '2013-04-22', '2014-04-22', '', NULL, '9M378', 7),
('910622', 'Voltmetro', 'AEMC\r\n', 'YF-8050\r\n', 'Digital', '2015-04-20', '2016-04-20', '', NULL, '9M32A', 1),
('92653871', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9A8MP', 1),
('92660135', 'Voltmetro', 'FLUKE', '189', 'Digital', '2015-04-13', '2016-04-13', '', NULL, '9EP54', 1),
('95450030', 'Voltmetro', 'FLUKE', '87V\r\n', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9M35N', 1),
('95450032', 'Voltmetro', 'FLUKE', '87V', 'Digital', '2014-08-19', '2015-08-19', '', NULL, '9A18T', 1),
('95450062', 'Voltmetro', 'FLUKE', '87V', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9M35N', 1),
('96240459', 'Voltmetro', 'FLUKE', '336', 'Digital', '2014-07-25', '2015-07-25', '', NULL, '9M377', 1),
('96410389', 'Voltmetro', 'FLUKE', '322\r\n', 'Digital', '2014-11-24', '2015-11-24', '', NULL, '9EC7B', 1),
('97082192', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-25', '2015-07-25', '', NULL, '9A17P', 1),
('97082195', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2014-06-30', '2015-06-30', '', NULL, 'B852L', 1),
('97082222', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9M31V', 1),
('97082227', 'Voltmetro', 'FLUKE', '335', 'Digital', '2013-07-08', '2014-07-08', '', NULL, 'B887L', 7),
('97082230', 'Voltmetro', 'FLUKE', '335', 'Digital ', '2013-04-23', '2014-04-23', '', NULL, 'J304D', 1),
('97082231', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-08-28', '2015-08-28', '', NULL, 'B915L', 1),
('97082233', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9ERD7', 1),
('97082236', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-06-30', '2015-06-30', '', NULL, '9B76X', 1),
('97082237', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9AXMY', 1),
('97082238', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9ERCX', 1),
('97082261', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-01-30', '2016-01-30', '', NULL, '9L1PN', 1),
('97082262', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2015-05-13', '2016-05-13', '', NULL, '9L1E3', 1),
('97082263', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2015-05-13', '2016-05-13', '', NULL, '9M321', 1),
('97082264', 'Voltmetro', 'FLUKE', '335\r\n', 'Digital', '2014-06-21', '2015-06-21', '', NULL, 'K354J', 1),
('97082265', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-05-29', '2015-05-29', '', NULL, '9AF7K', 1),
('97090001', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2014-06-30', '2015-06-30', '', NULL, 'J209D', 1),
('97090002', 'Voltmetro', 'FLUKE', '335', 'Digital', '2014-08-19', '2015-08-19', '', NULL, '9A8LC', 1),
('97090003', 'Voltmetro', 'FLUKE\r\n', '322', 'Digital', '2014-06-26', '2015-06-26', '', NULL, 'B849L', 1),
('97090011', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9B7AT', 1),
('97090012', 'Voltmetro', 'FLUKE', '335', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9A8PE', 1),
('97090015', 'Voltmetro', 'FLUKE\r\n', '335', 'Digital', '2015-05-20', '2016-05-20', '', NULL, 'B678L', 1),
('9782EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-07-21', '2015-07-21', '', NULL, '9AFDB', 1),
('9784EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-02-19', '2016-02-19', '', NULL, '9EC4P', 1),
('9801EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-05-20', '2016-05-20', '', NULL, 'B590L', 1),
('9802EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9A1EC', 1),
('9803EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-06-16', '2015-06-16', '', NULL, 'F9036', 1),
('9804EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-05-19', '2015-05-19', '', NULL, '9M31J', 7),
('9805EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-02-20', '2016-02-20', '', NULL, 'B880L', 1),
('9811EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-04-11', '2015-04-11', '', NULL, 'K193J', 7),
('9814EECT', 'Voltmetro', 'FLUKE\r\n', '500', 'Digital', '2014-07-24', '2015-07-24', '', NULL, '9B77T', 1),
('9825EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-05-29', '2015-05-29', '', NULL, '9M8JG', 1),
('9833EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-11-21', '2015-11-21', '', NULL, 'J303D', 1),
('9848EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-05-15', '2015-05-15', '', NULL, '9EPW3', 7),
('9849EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-11-14', '2015-11-14', '', NULL, '9L1L7', 1),
('9866EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2015-01-29', '2016-01-29', '', NULL, '9EPYU', 1),
('9881EECT', 'Voltmetro', 'AEMC\r\n', '500', 'Digital', '2014-09-22', '2015-09-22', '', NULL, 'J173D', 1),
('TKF2077', 'Voltmetro', 'YOKOGAWA\r\n', '150', 'Digital', '2014-07-31', '2015-07-31', '', NULL, '9A8T3', 1);

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
(6, 'Celaya Distribución', 'Ofna. Comunicaciones'),
(7, 'Celaya Distribución', 'Ofna. Subestaciones'),
(8, 'Celaya Distribución', 'Ofna. Protecciones'),
(9, 'Celaya Distribución', 'Ofna. Celaya Distribución'),
(10, 'Celaya Distribución', 'Depto. Planeación'),
(11, 'Celaya Distribución', 'Depto. ISC '),
(12, 'Celaya Distribución', 'Administración de la Energía '),
(13, 'Celaya Distribución', 'Centro de Continuidad y Conexión '),
(14, 'Celaya Distribución', 'Aseguramiento de la Medición '),
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
('admin', '9ERCB', NULL, 'N;'),
('editor', '9L1AM', NULL, 'N;'),
('invitado', '10030564', NULL, 'N;'),
('invitado', '10030754', NULL, 'N;'),
('invitado', '90485', NULL, 'N;'),
('invitado', '9A17P', NULL, 'N;'),
('invitado', '9A18T', NULL, 'N;'),
('invitado', '9A18W', NULL, 'N;'),
('invitado', '9A1DH', NULL, 'N;'),
('invitado', '9A1EC', NULL, 'N;'),
('invitado', '9A1G7', NULL, 'N;'),
('invitado', '9A8FL', NULL, 'N;'),
('invitado', '9A8LC', NULL, 'N;'),
('invitado', '9A8LE', NULL, 'N;'),
('invitado', '9A8LF', NULL, 'N;'),
('invitado', '9A8MG', NULL, 'N;'),
('invitado', '9A8MM', NULL, 'N;'),
('invitado', '9A8MP', NULL, 'N;'),
('invitado', '9A8PE', NULL, 'N;'),
('invitado', '9A8R8', NULL, 'N;'),
('invitado', '9A8RA', NULL, 'N;'),
('invitado', '9A8T1', NULL, 'N;'),
('invitado', '9A8T3', NULL, 'N;'),
('invitado', '9A8TW', NULL, 'N;'),
('invitado', '9AEYJ', NULL, 'N;'),
('invitado', '9AF05', NULL, 'N;'),
('invitado', '9AF13', NULL, 'N;'),
('invitado', '9AF47', NULL, 'N;'),
('invitado', '9AF64', NULL, 'N;'),
('invitado', '9AF65', NULL, 'N;'),
('invitado', '9AF7K', NULL, 'N;'),
('invitado', '9AFDB', NULL, 'N;'),
('invitado', '9AFDJ', NULL, 'N;'),
('invitado', '9AR8U', NULL, 'N;'),
('invitado', '9AX67', NULL, 'N;'),
('invitado', '9AX6V', NULL, 'N;'),
('invitado', '9AX7F', NULL, 'N;'),
('invitado', '9AX7X', NULL, 'N;'),
('invitado', '9AXMY', NULL, 'N;'),
('invitado', '9AXN2', NULL, 'N;'),
('invitado', '9AXN9', NULL, 'N;'),
('invitado', '9AXNK', NULL, 'N;'),
('invitado', '9AXNW', NULL, 'N;'),
('invitado', '9B700', NULL, 'N;'),
('invitado', '9B72A', NULL, 'N;'),
('invitado', '9B75L', NULL, 'N;'),
('invitado', '9B76X', NULL, 'N;'),
('invitado', '9B778', NULL, 'N;'),
('invitado', '9B77T', NULL, 'N;'),
('invitado', '9B79H', NULL, 'N;'),
('invitado', '9B79J', NULL, 'N;'),
('invitado', '9B79K', NULL, 'N;'),
('invitado', '9B79P', NULL, 'N;'),
('invitado', '9B7AT', NULL, 'N;'),
('invitado', '9B7B0', NULL, 'N;'),
('invitado', '9B7BG', NULL, 'N;'),
('invitado', '9B7FF', NULL, 'N;'),
('invitado', '9EBU3', NULL, 'N;'),
('invitado', '9EBUP', NULL, 'N;'),
('invitado', '9EBYG', NULL, 'N;'),
('invitado', '9EC1D', NULL, 'N;'),
('invitado', '9EC2C', NULL, 'N;'),
('invitado', '9EC4P', NULL, 'N;'),
('invitado', '9EC4R', NULL, 'N;'),
('invitado', '9EC71', NULL, 'N;'),
('invitado', '9EC74', NULL, 'N;'),
('invitado', '9EC76', NULL, 'N;'),
('invitado', '9EC78', NULL, 'N;'),
('invitado', '9EC7B', NULL, 'N;'),
('invitado', '9EC7M', NULL, 'N;'),
('invitado', '9EC7W', NULL, 'N;'),
('invitado', '9EC8M', NULL, 'N;'),
('invitado', '9EC91', NULL, 'N;'),
('invitado', '9ECBT', NULL, 'N;'),
('invitado', '9ECC3', NULL, 'N;'),
('invitado', '9ECC5', NULL, 'N;'),
('invitado', '9ECDB', NULL, 'N;'),
('invitado', '9EP54', NULL, 'N;'),
('invitado', '9EP55', NULL, 'N;'),
('invitado', '9EP62', NULL, 'N;'),
('invitado', '9EP64', NULL, 'N;'),
('invitado', '9EP8T', NULL, 'N;'),
('invitado', '9EP99', NULL, 'N;'),
('invitado', '9EPVB', NULL, 'N;'),
('invitado', '9EPW3', NULL, 'N;'),
('invitado', '9EPX3', NULL, 'N;'),
('invitado', '9EPYU', NULL, 'N;'),
('invitado', '9ER2P', NULL, 'N;'),
('invitado', '9ER3V', NULL, 'N;'),
('invitado', '9ERBB', NULL, 'N;'),
('invitado', '9ERC9', NULL, 'N;'),
('invitado', '9ERCX', NULL, 'N;'),
('invitado', '9ERD0', NULL, 'N;'),
('invitado', '9ERD7', NULL, 'N;'),
('invitado', '9ERDH', NULL, 'N;'),
('invitado', '9ERDP', NULL, 'N;'),
('invitado', '9ERDV', NULL, 'N;'),
('invitado', '9ETXB', NULL, 'N;'),
('invitado', '9L1A8', NULL, 'N;'),
('invitado', '9L1D5', NULL, 'N;'),
('invitado', '9L1E3', NULL, 'N;'),
('invitado', '9L1E4', NULL, 'N;'),
('invitado', '9L1F3', NULL, 'N;'),
('invitado', '9L1F5', NULL, 'N;'),
('invitado', '9L1GT', NULL, 'N;'),
('invitado', '9L1JA', NULL, 'N;'),
('invitado', '9L1JR', NULL, 'N;'),
('invitado', '9L1L7', NULL, 'N;'),
('invitado', '9L1MC', NULL, 'N;'),
('invitado', '9L1MN', NULL, 'N;'),
('invitado', '9L1NE', NULL, 'N;'),
('invitado', '9L1NF', NULL, 'N;'),
('invitado', '9L1NN', NULL, 'N;'),
('invitado', '9L1PN', NULL, 'N;'),
('invitado', '9L1RC', NULL, 'N;'),
('invitado', '9M2YK', NULL, 'N;'),
('invitado', '9M31J', NULL, 'N;'),
('invitado', '9M31V', NULL, 'N;'),
('invitado', '9M31X', NULL, 'N;'),
('invitado', '9M320', NULL, 'N;'),
('invitado', '9M321', NULL, 'N;'),
('invitado', '9M323', NULL, 'N;'),
('invitado', '9M325', NULL, 'N;'),
('invitado', '9M32A', NULL, 'N;'),
('invitado', '9M35N', NULL, 'N;'),
('invitado', '9M377', NULL, 'N;'),
('invitado', '9M378', NULL, 'N;'),
('invitado', '9M3AW', NULL, 'N;'),
('invitado', '9M80N', NULL, 'N;'),
('invitado', '9M8JD', NULL, 'N;'),
('invitado', '9M8JG', NULL, 'N;'),
('invitado', '9M8JK', NULL, 'N;'),
('invitado', '9M8LG', NULL, 'N;'),
('invitado', 'B574L', NULL, 'N;'),
('invitado', 'B590L', NULL, 'N;'),
('invitado', 'B655L', NULL, 'N;'),
('invitado', 'B678L', NULL, 'N;'),
('invitado', 'B848L', NULL, 'N;'),
('invitado', 'B849L', NULL, 'N;'),
('invitado', 'B852L', NULL, 'N;'),
('invitado', 'B876L', NULL, 'N;'),
('invitado', 'B880L', NULL, 'N;'),
('invitado', 'B886L', NULL, 'N;'),
('invitado', 'B887L', NULL, 'N;'),
('invitado', 'B911L', NULL, 'N;'),
('invitado', 'B915L', NULL, 'N;'),
('invitado', 'B925L', NULL, 'N;'),
('invitado', 'F7674', NULL, 'N;'),
('invitado', 'F7805', NULL, 'N;'),
('invitado', 'F9003', NULL, 'N;'),
('invitado', 'F9036', NULL, 'N;'),
('invitado', 'F9535', NULL, 'N;'),
('invitado', 'F9594', NULL, 'N;'),
('invitado', 'J173D', NULL, 'N;'),
('invitado', 'J182D', NULL, 'N;'),
('invitado', 'J209D', NULL, 'N;'),
('invitado', 'J303D', NULL, 'N;'),
('invitado', 'J304D', NULL, 'N;'),
('invitado', 'J306D', NULL, 'N;'),
('invitado', 'K228J', NULL, 'N;'),
('invitado', 'K245J', NULL, 'N;'),
('invitado', 'K345J', NULL, 'N;'),
('invitado', 'K354J', NULL, 'N;'),
('invitado', 'No tiene', NULL, 'N;');

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
(1, 'Doc2.pdf'),
(2, 'Doc1.docx');

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
('90485', 'Francisco Javier Almanza León ', 'paola.herrera@cfe.gob.mx', '', 2, '9ER3V', 18),
('9A17P', 'J Jesús González ', 'jose.corona04@cfe.gob.mx', '', 2, '9L1NE', 23),
('9A18T', 'Jorge Maldonado Gómez', 'ricardo.juarez02@cfe.gob.mx', '', 2, '9M35N', 7),
('9A18W', 'Francisco Javier MontesAlba  ', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('9A1DH', 'Manuel  Hernández Ortega  ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9A1EC', 'Miguel Zúñiga Aguilar ', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9A1G7', 'Salvador Gasca Tierrablanca ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9A8FL', 'Alejandro Saldaña Arias ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9A8LC', 'Martin Ramon Flores Ramirez ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9A8LE', 'Alejandro Nito  Cornejo ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9A8LF', 'David Galvan Magueyal ', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('9A8MG', 'Jose Humberto Mendoza Macias ', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9A8MM', 'Martín Motreno Pérez', 'eduardo.luna@cfe.gob.mx', '', 2, '9L1D5', 8),
('9A8MP', 'Gerardo Campos Bravo ', 'ricardo.juarez02@cfe.gob.mx', '', 2, '9M35N', 7),
('9A8PE', 'Ezequiel Martinez Rodriguez  ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9A8R8', 'Rubén Briseno García  ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9A8RA', 'José  Saúl Torres Farias ', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9A8T1', 'Gerardo Martinez Hernandez', 'gerado.soto@cfe.gob.mx', '', 2, '9EBYG', 5),
('9A8T3', 'Javier Carmona Butanda', 'ricardo.juarez02@cfe.gob.mx', '', 2, '9M35N', 7),
('9A8TW', 'Oscar Eduardo Gasca Medrano ', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9AEYJ', 'Victor Sosa Equihua', 'victor.sosa02@cfe.gob.mx', '9AEYJ', 1, '9AEYJ', 15),
('9AF05', 'Jose Francisco Reyes Martinez', 'paola.herrera@cfe.gob.mx', '', 2, '9ER3V', 18),
('9AF13', 'Enrique Tovar Oñate', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9AF47', 'Martin Escoto Ibarra', 'martin.escoto@cfe.gob.mx ', '9AF47', 1, '9AF47', 9),
('9AF64', 'Hector Martínez Mendoza', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9AF65', 'Fernando Carmona Gaytan', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9AF7K', 'José  Juan Rosas Zárate ', 'victor.lara@cfe.gob.mx', '', 2, '9L1JR', 17),
('9AFDB', 'Joel Juárez Martínez ', 'paola.herrera@cfe.gob.mx', '', 2, '9ER3V', 18),
('9AFDJ', 'J. Refugio Rodriguez Raya ', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9AR8U', 'Maximino Olvera Gallardo', 'eduardo.luna@cfe.gob.mx', '', 2, '9L1D5', 8),
('9AX67', 'Ricardo Morales Hernandez ', 'victor.lara@cfe.gob.mx', '', 2, '9L1JR', 17),
('9AX6V', 'Gabino Ramírez Santarosa', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9AX7F', 'Isidro García Lanuza', 'adolfo.cuevas@cfe.gob.mx', '', 2, 'K193J', 20),
('9AX7X', 'Victor Manuel Farías González ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9AXMY', 'Miguel Cano Ledesma', 'elda.villalva@cfe.gob.mx', '', 2, '9M8JD', 25),
('9AXN2', 'Heriberto Muñoz Barroso ', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9AXN9', 'Miguel Angel García Torres', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9AXNK', 'Mauricio Ramirez Buenrostro', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9AXNW', 'Cristobal Rosas Zarate', 'paola.herrera@cfe.gob.mx', '', 2, '9ER3V', 18),
('9B700', 'J. Refugio Méndez Ramirez', 'jonatan.rodriguez@cfe.gob.mx', '', 2, '9L1JA', 22),
('9B72A', 'Jose Luis Torres Farias', 'viridiana.lorenzo@cfe.gob.mx', '', 2, '9EC2C', 21),
('9B75L', 'Jorge Luis Gasca Gasca', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9B76X', 'Efrén Peguero Ojeda ', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9B778', 'Javier Guerrero Rivera', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9B77T', 'Jesús Ibarra Muñiz', 'julio.flores03@cfe.gob.mx', '', 2, '9L1NN', 19),
('9B79H', 'Miguel  Angel Martínez Pitayo ', 'paola.herrera@cfe.gob.mx', '', 2, '9ER3V', 18),
('9B79J', 'José Luis Luna Hernandez ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9B79K', 'Salvador Juarez Martinez ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9B79P', 'Heriberto Barrón Durán', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9B7AT', 'Ricardo Bravo Vera', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9B7B0', 'Jorge Luis Farias Grande', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9B7BG', 'Ramon Pacheco  ', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9B7FF', 'Juan Carlos Reyes Martinez ', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9EBU3', 'José Hernández Ortega', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9EBUP', 'Rafael Alcantara Torres', 'rafael.alcantara@cfe.gob.mx', '9EBUP', 1, '9EBUP', 24),
('9EBYG', 'Gerardo Soto Arreola', 'gerado.soto@cfe.gob.mx', '9EBYG', 1, '9EBYG', 5),
('9EC1D', 'Ignacio Imamura Garcia', 'ignacio.imamura@cfe.gob.mx', '9EC1D', 1, '9EC1D', 16),
('9EC2C', 'Viridiana Lorenzo Roman', 'viridiana.lorenzo@cfe.gob.mx', '9EC2C', 1, '9EC2C', 21),
('9EC4P', 'Victor Hugo Jimenez Hernandez ', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9EC4R', 'Juan Flores Rufino ', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9EC71', 'Alfonso Romo Ureña', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9EC74', 'Andres Israel González Vázquez', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9EC76', 'J. Carmen Pérez Flores ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9EC78', 'Fidel Arturo Gonzalez Sanchez ', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('9EC7B', 'Hugo Almanza Leon', 'adiel.saucedo@cfe.gob.mx', '', 2, '9EP64', 1),
('9EC7M', 'Gregorio Rodriguez Garcia', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9EC7W', 'Guillermo Perez Rodriguez', 'julio.flores03@cfe.gob.mx', '', 2, '9L1NN', 19),
('9EC8M', 'Manuel Ledesma Gonzalez', 'manuel.ledesma@cfe.gob.mx', '9EC8M', 1, '9EC8M', 26),
('9EC91', 'Juan Jesús Rico patiño', 'viridiana.lorenzo@cfe.gob.mx', '', 2, '9EC2C', 21),
('9ECBT', 'Saul Hernández Lara', 'jose.yanez02@cfe.gob.mx', '', 2, '9L1F5', 12),
('9ECC3', 'Jose Luis Flores Muñoz', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('9ECC5', 'Jose Alfredo Juarez Flores - PTE', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9ECDB', 'Aldo Jair Castro Orozco', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9EP54', 'Jaime Macias Bañuelos', 'jaime.macias@cfe.gob.mx', '9EP54', 1, '9EP54', 6),
('9EP55', 'Oscar Galvan Cano ', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9EP62', 'Jorge Edgar Ramirez Barrera', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('9EP64', 'Adiel Saucedo Montoya', 'adiel.saucedo@cfe.gob.mx', '9EP64', 1, '9EP64', 1),
('9EP8T', 'Jorge Alberto Ibarra Montes ', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9EP99', 'Juan Carlos López Rodríguez ', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9EPVB', 'Juan Francisco Zaragoza Rodríguez', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9EPW0', 'FRANCISCO RAMIREZ NOGUEZ', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('9EPW3', 'Carlos Alberto Santoyo Ramírez', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9EPX3', 'Martín Galván Magueyal ', 'adiel.saucedo@cfe.gob.mx', '', 2, '9EP64', 1),
('9EPYU', 'Jorge Abel Garcia Carmona', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9ER2P', 'Jorge Rodríguez Lorca', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9ER3V', 'Paola Herrera Olguin', 'paola.herrera@cfe.gob.mx', '9ER3V', 1, '9ER3V', 18),
('9ERBB', 'IGNACIO MERINO ZENEA', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9ERC9', 'Roberto Cruz Godinez', 'julio.flores03@cfe.gob.mx', '', 2, '9L1NN', 19),
('9ERCB', 'David Varela Herrera', 'david.varela@cfe.gob.mx', '9ERCB', 1, '9ERCB', 14),
('9ERCX', 'Martin Mendez Gasca', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9ERD0', 'Juan Carlos Juarez Chavez ', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('9ERD7', 'Carlos Alberto Juarez Martinez', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('9ERDH', 'Juan Ignacio Solis González', 'adolfo.cuevas@cfe.gob.mx', '', 2, 'K193J', 20),
('9ERDV', 'Tomas Rafael Linares Patiño ', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9ETXB', 'Porfirio Mendoza', 'viridiana.lorenzo@cfe.gob.mx', '', 2, '9EC2C', 21),
('9L1A8', 'Marcos Rivera Velazquez', 'marcos.rivera@cfe.gob.mx', '9L1A8', 1, '9L1A8', 11),
('9L1AM', 'Olivia Peguero Ojeda', 'olivia.peguero@cfe.gob.mx', '9L1AM', 2, '9M80N', 13),
('9L1D5', 'Eduardo Luna Nuñez', 'eduardo.luna@cfe.gob.mx', '9L1D5', 1, '9L1D5', 8),
('9L1E3', 'Luis Arturo Aguilera Delgado ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9L1E4', 'Juan Carlos Peña Villa  ', 'jaime.macias@cfe.gob.mx', '', 2, '9EP54', 6),
('9L1F3', 'Ulises Martínez Mendoza', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('9L1F5', 'Jose Yañez Diaz', 'jose.yanez02@cfe.gob.mx', '9L1F5', 1, '9L1F5', 12),
('9L1GT', 'Jose Ramón González Cordero ', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('9L1JA', 'Jonatan Rodriguez Perez', 'jonatan.rodriguez@cfe.gob.mx', '9L1JA', 1, '9L1JA', 22),
('9L1JR', 'Victor Lara Cuevas', 'victor.lara@cfe.gob.mx', '9L1JR', 1, '9L1JR', 17),
('9L1L7', 'Ignacio Vega Perez', 'ignacio.vega@cfe.gob.mx', '9L1L7', 1, '9L1L7', 10),
('9L1MC', 'Lorenzo Moreno Blancarte', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9L1MN', 'Hector Gerardo Navarro Diaz ', 'ignacio.vega@cfe.gob.mx', '', 2, '9L1L7', 10),
('9L1NE', 'Jose Domingo Corona Pérez', 'jose.corona04@cfe.gob.mx', '9L1NE', 1, '9L1NE', 23),
('9L1NF', 'Francisco Chimal Soto', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9L1NN', 'Julio Flores Parra', 'julio.flores03@cfe.gob.mx', '9L1NN', 1, '9L1NN', 19),
('9L1PN', 'Juan Manuel Rodríguez Rodríguez', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9L1RC', 'DAVID GALVAN CASTRO', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('9M2YK', 'J. Leonides Fco. Patiño Carreño', 'gerado.soto@cfe.gob.mx', '', 2, '9EBYG', 5),
('9M31J', 'Juan Carlos Frias Chimal ', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9M31V', 'Sergio Alonso Ibarra Ibarra ', 'jonatan.rodriguez@cfe.gob.mx', '', 2, '9L1JA', 22),
('9M31X', 'Juan Alberto Zuñiga Gonzalez', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9M320', 'Edgardo Gasca Juárez', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('9M321', 'Amado Baltierra Velazco', 'martin.escoto@cfe.gob.mx ', '', 2, '9AF47', 9),
('9M323', 'Sergio David Gutierrez Aguilar', 'ignacio.vega@cfe.gob.mx', '', 2, '9L1L7', 10),
('9M325', 'Roberto García Aguirre', 'david.varela@cfe.gob.mx', '', 2, '9ERCB', 14),
('9M32A', 'Luis Maldonado Torres ', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9M35N', 'Ricardo Juarez Perez', 'ricardo.juarez02@cfe.gob.mx', '9M35N', 1, '9M35N', 7),
('9M377', 'Jose Octavio Alfredo Pantoja Perez ', 'jose.corona04@cfe.gob.mx', '', 2, '9L1NE', 23),
('9M378', 'Jesus Eduardo Chavez Yañez', 'jose.corona04@cfe.gob.mx', '', 2, '9L1NE', 23),
('9M3AW', 'Jania Piña Rico', 'jania.pina@cfe.gob.mx', '9M3AW', 1, '9M3AW', 3),
('9M80N', 'Victor Benitez Hernadez', 'victor.benites@cfe.gob.mx', '9M80N', 1, '9M80N', 13),
('9M8JD', 'Elda Villalva Cervantes', 'elda.villalva@cfe.gob.mx', '9M8JD', 1, '9M8JD', 25),
('9M8JG', 'Mauricio Ortiz Linares', 'jose.corona04@cfe.gob.mx', '', 2, '9L1NE', 23),
('9M8JK', 'Arturo Godoy Bravo', 'salvador.cuevas@cfe.gob.mx', '', 2, '9ERDP', 4),
('9M8LG', 'Octavio Hernández Villafuerte', 'elda.villalva@cfe.gob.mx', '', 2, '9M8JD', 25),
('B590L', 'Mauricio Ivan Ramirez Hernandez', 'carlos.rimoldi@cfe.gob.mx ', '', 2, 'K354J', 2),
('B655L', 'Clemente Ortega Santarosa', 'manuel.ledesma@cfe.gob.mx', '', 2, '9EC8M', 26),
('B678L', 'Juan Miguel Valencia Chavez', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('B848L', 'Luis Alfonso Hernández Labrada', 'victor.lara@cfe.gob.mx', '', 2, '9L1JR', 17),
('B849L', 'Eduardo Martínez Ruíz', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('B852L', 'Marcelino Gonzalez García', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('B880L', 'Mauricio Antonio Rosales Calderillo', 'victor.lara@cfe.gob.mx', '', 2, '9L1JR', 17),
('B886L', 'Jesus Eduardo Chavez Yañez', 'jose.corona04@cfe.gob.mx', '', 2, '9L1NE', 23),
('B887L', 'Antonio Arreola Ramirez', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('B911L', 'Aurelio Gasca Juarez', 'viridiana.lorenzo@cfe.gob.mx', '', 2, '9EC2C', 21),
('B915L', ' Jose Alfredo Flores Rufino ', 'carlos.rimoldi@cfe.gob.mx  ', '', 2, 'K354J', 2),
('B925L', 'Jesús Cesar Jiovad Sánchez Salazar', 'rafael.alcantara@cfe.gob.mx', '', 2, '9EBUP', 24),
('F7674', 'Martín Galván Magueyal ', 'adiel.saucedo@cfe.gob.mx', '', 2, '9EP64', 1),
('F7805', 'Antonio Godoy Bravo ', 'elda.villalva@cfe.gob.mx', '', 2, '9M8JD', 25),
('F9036', 'Juan Francisco Rojas Hernandez', 'jonatan.rodriguez@cfe.gob.mx', '', 2, '9L1JA', 22),
('F9535', 'DAVID GALVAN CASTRO', 'jania.pina@cfe.gob.mx ', '', 2, '9M3AW', 3),
('J173D', 'Gerardo Campos Morales', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('J182D', 'Fernando Guerrero Gonzalez', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('J209D', 'Moises Juárez Martínez', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('J303D', 'Jorge Maldonado Hernandez', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('J304D', 'Francisco Javier  Montes García', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('J306D', 'Christian Jesús Rojas González', 'jania.pina@cfe.gob.mx', '', 2, '9M3AW', 3),
('K193J', 'Adolfo Cuevas Romero', 'adolfo.cuevas@cfe.gob.mx', 'K193J', 1, 'K193J', 20),
('K245J', 'Rodolfo Rodriguez Morales', 'victor.benites@cfe.gob.mx', '', 2, '9M80N', 13),
('K354J', 'Carlos Rimoldi Ocampo', 'carlos.rimoldi@cfe.gob.mx  ', 'K354J', 1, 'K354J', 2);

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
