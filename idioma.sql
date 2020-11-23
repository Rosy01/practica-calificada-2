-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2020 a las 18:29:55
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `idioma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_Estudiante` int(40) NOT NULL,
  `nombre_Estuduante` varchar(40) NOT NULL,
  `email_Estudiante` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_Estudiante`, `nombre_Estuduante`, `email_Estudiante`) VALUES
(1, 'ros', 'rvg@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leccion`
--

CREATE TABLE `leccion` (
  `id_Leccion` int(40) NOT NULL,
  `numero_Leccion` int(30) NOT NULL,
  `status_Leccion` varchar(40) NOT NULL,
  `comentProf_Leccion` varchar(80) NOT NULL,
  `comentAlu_Leccion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `leccion`
--

INSERT INTO `leccion` (`id_Leccion`, `numero_Leccion`, `status_Leccion`, `comentProf_Leccion`, `comentAlu_Leccion`) VALUES
(1, 1, 'programado', 'hhh', 'ddf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_Profesor` int(30) NOT NULL,
  `nombre_Profesor` varchar(60) NOT NULL,
  `idioma_Profesor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_Profesor`, `nombre_Profesor`, `idioma_Profesor`) VALUES
(1, 'profesor ', 'ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

CREATE TABLE `programacion` (
  `id_Programacion` int(20) NOT NULL,
  `inicio_Programacion` varchar(50) NOT NULL,
  `tipo_Programacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programacion`
--

INSERT INTO `programacion` (`id_Programacion`, `inicio_Programacion`, `tipo_Programacion`) VALUES
(1, '23 de novienbre 07:15', 'normal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_Estudiante`);

--
-- Indices de la tabla `leccion`
--
ALTER TABLE `leccion`
  ADD PRIMARY KEY (`id_Leccion`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_Profesor`);

--
-- Indices de la tabla `programacion`
--
ALTER TABLE `programacion`
  ADD PRIMARY KEY (`id_Programacion`);

