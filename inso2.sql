-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2017 a las 16:11:03
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inso2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `NombreCompleto` varchar(50) DEFAULT NULL,
  `Edad` int(3) NOT NULL,
  `CorreoElectronico` varchar(50) NOT NULL,
  `Contraseña` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `NombreCompleto`, `Edad`, `CorreoElectronico`, `Contraseña`) VALUES
(9, 'jtj', 0, 'jtr', 'uu'),
(10, 'i0000', 0, '000', '000'),
(11, 'tt', 0, 'rr', 'tt'),
(12, 'pp', 0, 'pp', 'pp'),
(13, 'PabloMAtilla', 45, 'mati@hotm.ccomcom', 'ee'),
(14, 'aliiiiiiiiiiiiiiiiiiii', 45, 'gege', 'ee'),
(15, 'Winko', 25, 'winko@hotmail.com', 'hola'),
(16, 'Guille', 23, 'guillo-basket@hotmail.com', 'kk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `PuestoTrabajo` varchar(30) NOT NULL,
  `Contraseña` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`DNI`, `Nombre`, `Correo`, `PuestoTrabajo`, `Contraseña`) VALUES
('71446712M', 'Fernando', 'fergarc@estudiantes.unileon.es', 'AlCarrer', 'fustas1'),
('71446745M', 'Guillermo ', 'gvegag02@estudiantes.unileon.es', 'Boss', 'putoamo'),
('71446780M', 'Alejandro', 'aalvag11@estudiantes.unileon.es', 'Barrendero', 'fustas2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
