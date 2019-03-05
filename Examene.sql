-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2019 at 07:36 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Examene`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Calificaciones`
--

CREATE TABLE `Calificaciones` (
  `IdCalificacion` int(11) NOT NULL,
  `Matricula` varchar(12) DEFAULT NULL,
  `Calificacion` float DEFAULT NULL,
  `IdCapitulo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CatCapitulos`
--

CREATE TABLE `CatCapitulos` (
  `IdCapitulo` int(11) NOT NULL,
  `Nombre` varchar(300) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `CreadoPor` varchar(12) DEFAULT NULL,
  `IdMateria` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CatCapitulos`
--

INSERT INTO `CatCapitulos` (`IdCapitulo`, `Nombre`, `FechaCreacion`, `CreadoPor`, `IdMateria`) VALUES
(1, 'Logica', '2018-05-21 08:05:26', 'nef', 5),
(7, 'Variables', '2018-06-18 06:30:57', 'nef', 4),
(5, 'Programacion visual', '2018-05-21 09:50:57', 'nef', 4),
(6, 'variables', '2018-05-21 12:59:33', 'nef', 2),
(8, 'Definiciones', '2018-07-20 10:13:15', 'nef', 6);

-- --------------------------------------------------------

--
-- Table structure for table `CatComponentes`
--

CREATE TABLE `CatComponentes` (
  `IdComponente` int(11) NOT NULL,
  `TipoComponente` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CatComponentes`
--

INSERT INTO `CatComponentes` (`IdComponente`, `TipoComponente`) VALUES
(1, 'Select'),
(2, 'Radio'),
(3, 'Checkbox');

-- --------------------------------------------------------

--
-- Table structure for table `CatMaterias`
--

CREATE TABLE `CatMaterias` (
  `IdMateria` int(11) NOT NULL,
  `Nombre` varchar(300) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `CreadoPor` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CatMaterias`
--

INSERT INTO `CatMaterias` (`IdMateria`, `Nombre`, `FechaCreacion`, `CreadoPor`) VALUES
(5, 'Matematicas', '2018-05-18 17:36:09', 'nef'),
(2, 'Fundamentos Programacion', '2018-05-18 13:51:24', 'nef'),
(4, 'Visual Basic for Aplication', '2018-05-18 15:28:08', 'nef'),
(6, 'FacturaciÃ³n', '2018-07-20 10:05:42', 'nef');

-- --------------------------------------------------------

--
-- Table structure for table `CatTipoUsuario`
--

CREATE TABLE `CatTipoUsuario` (
  `IdTipoUsuario` int(11) NOT NULL,
  `TipoUsuario` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CatTipoUsuario`
--

INSERT INTO `CatTipoUsuario` (`IdTipoUsuario`, `TipoUsuario`) VALUES
(1, 'Administrador'),
(2, 'Alumno');

-- --------------------------------------------------------

--
-- Table structure for table `HistarialPreguntas`
--

CREATE TABLE `HistarialPreguntas` (
  `IdHistorialPregunta` int(11) NOT NULL,
  `Matricula` varchar(12) DEFAULT NULL,
  `IdCapitulo` int(11) DEFAULT NULL,
  `IdPregunta` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HistarialPreguntas`
--

INSERT INTO `HistarialPreguntas` (`IdHistorialPregunta`, `Matricula`, `IdCapitulo`, `IdPregunta`) VALUES
(72, 'nef', 6, 1),
(73, 'nef', 6, 2),
(74, 'nef', 6, 3),
(75, 'nef', 6, 13),
(76, 'mar', 6, 1),
(77, 'mar', 6, 2),
(78, 'mar', 6, 3),
(79, 'mar', 6, 13),
(80, 'nef', 8, 16),
(81, 'nef', 8, 15),
(82, 'nef', 8, 14),
(83, 'nef', 8, 17),
(84, 'nef', 8, 18),
(85, 'nef', 8, 20),
(86, 'nef', 1, 29),
(87, 'nef', 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `HistorialRespuestas`
--

CREATE TABLE `HistorialRespuestas` (
  `IdHistorialRespueta` int(11) NOT NULL,
  `IdRespuesta` int(11) DEFAULT NULL,
  `IdHistorialPregunta` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HistorialRespuestas`
--

INSERT INTO `HistorialRespuestas` (`IdHistorialRespueta`, `IdRespuesta`, `IdHistorialPregunta`) VALUES
(52, 1, 72),
(53, 2, 72),
(54, 8, 73),
(55, 11, 74),
(56, 16, 75),
(57, 18, 75),
(58, 1, 76),
(59, 6, 77),
(60, 11, 78),
(61, 16, 79),
(62, 18, 79),
(63, 32, 80),
(64, 28, 81),
(65, 21, 82),
(66, 37, 83),
(67, 44, 84),
(68, 50, 85),
(69, 57, 86),
(70, 51, 87);

-- --------------------------------------------------------

--
-- Table structure for table `Preguntas`
--

CREATE TABLE `Preguntas` (
  `IdPregunta` int(11) NOT NULL,
  `Pregunta` varchar(300) DEFAULT NULL,
  `IdComponente` int(11) DEFAULT NULL,
  `IdCapitulo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Preguntas`
--

INSERT INTO `Preguntas` (`IdPregunta`, `Pregunta`, `IdComponente`, `IdCapitulo`) VALUES
(1, 'Define que es una variable', 3, 6),
(2, 'Ques una variable float', 2, 6),
(3, 'Que es un valor de tipo entero', 1, 6),
(16, 'Â¿Define que es un PPD?', 3, 8),
(15, 'Â¿Que es un PUE?', 3, 8),
(13, 'Ques un arreglo', 3, 6),
(14, 'Â¿Que viene siendo una definicion A?', 3, 8),
(17, 'Â¿Que es un CP?', 2, 8),
(18, 'Â¿A que corresponde un EG?', 1, 8),
(29, 'Que es mate', 1, 1),
(28, 'Que es la logica', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Respuestas`
--

CREATE TABLE `Respuestas` (
  `IdRespuesta` int(11) NOT NULL,
  `Respuesta` varchar(300) DEFAULT NULL,
  `Valor` float DEFAULT NULL,
  `IdPregunta` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Respuestas`
--

INSERT INTO `Respuestas` (`IdRespuesta`, `Respuesta`, `Valor`, `IdPregunta`) VALUES
(1, 'Es algo valor que cambia', 0.8, 1),
(2, 'Es algo parecido al dinamismo', 0.2, 1),
(3, 'No cambia en el tiempo', 0, 1),
(4, 'Se mantiene', 0, 1),
(5, 'Forma una estructura', 0, 1),
(6, 'Es un entero', 0, 2),
(7, 'es una cadena de diguitos', 0, 2),
(8, 'en un numero con punto', 1, 2),
(9, 'es una fecha', 0, 2),
(10, 'es cuando es verdadero', 0, 2),
(11, 'Es un numero entero', 1, 3),
(12, 'Tiene valores como letras', 0, 3),
(13, 'Tiene un punto', 0, 3),
(14, 'Es una fecha concreta', 0, 3),
(15, 'es un solo caracter', 0, 3),
(16, 'Es una coleccion de datos de un mismo tipo', 1, 13),
(17, 'es una coleccion de datos de diferentes tipos', 0, 13),
(18, 'es una variable con muchas cosas', 0, 13),
(19, 'es algo logico', 0, 13),
(20, 'no tiene sentido', 0, 13),
(21, 'Anticipo', 1, 14),
(22, 'Egreso por Anticipo', 0, 14),
(23, 'Complemento', 0, 14),
(24, 'Egreso', 0, 14),
(25, 'Pagos', 0, 14),
(26, 'Anticipo', 0, 15),
(27, 'Egreso por Anticipo', 0, 15),
(28, 'Pago en una sola exhibisiÃ³n', 1, 15),
(29, 'Pago en parcialidades o diferido', 0, 15),
(30, 'Nota de debito', 0, 15),
(31, 'Nota de debito', 0, 16),
(32, 'Pago en parcialidades o diferido', 1, 16),
(33, 'Complemento de pago', 0, 16),
(34, 'Egreso', 0, 16),
(35, 'Egreso por anticipo', 0, 16),
(36, 'Anticipo', 0, 17),
(37, 'Complemento de pago', 1, 17),
(38, 'Egreso ', 0, 17),
(39, 'Pago en una sola exhivisiÃ³n', 0, 17),
(40, 'Egreso por anticipo', 0, 17),
(41, 'Pago en parcialidades o diferido', 0, 18),
(42, 'Pago en una sola exhibisiÃ³n', 0, 18),
(43, 'Complemento de pago', 0, 18),
(44, 'Egreso', 1, 18),
(45, 'Anticipo', 0, 18),
(46, 'Complemento de pago', 0, 20),
(47, 'Egreso por anticipo', 0, 20),
(48, 'Anticipo', 0, 20),
(49, 'Pago en una sola exihisiÃ³n', 0, 20),
(50, 'Nota de debito', 1, 20),
(51, 'a', 0, 28),
(52, 'b', 1, 28),
(53, 'c', 0, 28),
(54, 'd', 0, 28),
(55, 'e', 0, 28),
(56, 'algo', 1, 29),
(57, 'x', 0, 29),
(58, 'sal', 0, 29),
(59, 'hs', 0, 29),
(60, 'zacda', 0, 29);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE `Usuarios` (
  `Matricula` varchar(12) NOT NULL,
  `Nombre` varchar(300) DEFAULT NULL,
  `ApellidoPaterno` varchar(300) DEFAULT NULL,
  `ApellidoMaterno` varchar(300) DEFAULT NULL,
  `Contrasenia` varchar(300) DEFAULT NULL,
  `IdTipoUsuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`Matricula`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Contrasenia`, `IdTipoUsuario`) VALUES
('nef', 'Israel Neftali', 'Torres', 'Hernandez', 'nef', 1),
('mar', 'Maribel', 'Cardenaz', 'Guzman', 'nef', 2),
('abi', 'Abinadabs', 'Torres', 'Hernandez', 'nef', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Calificaciones`
--
ALTER TABLE `Calificaciones`
  ADD PRIMARY KEY (`IdCalificacion`);

--
-- Indexes for table `CatCapitulos`
--
ALTER TABLE `CatCapitulos`
  ADD PRIMARY KEY (`IdCapitulo`);

--
-- Indexes for table `CatComponentes`
--
ALTER TABLE `CatComponentes`
  ADD PRIMARY KEY (`IdComponente`);

--
-- Indexes for table `CatMaterias`
--
ALTER TABLE `CatMaterias`
  ADD PRIMARY KEY (`IdMateria`);

--
-- Indexes for table `CatTipoUsuario`
--
ALTER TABLE `CatTipoUsuario`
  ADD PRIMARY KEY (`IdTipoUsuario`);

--
-- Indexes for table `HistarialPreguntas`
--
ALTER TABLE `HistarialPreguntas`
  ADD PRIMARY KEY (`IdHistorialPregunta`);

--
-- Indexes for table `HistorialRespuestas`
--
ALTER TABLE `HistorialRespuestas`
  ADD PRIMARY KEY (`IdHistorialRespueta`);

--
-- Indexes for table `Preguntas`
--
ALTER TABLE `Preguntas`
  ADD PRIMARY KEY (`IdPregunta`);

--
-- Indexes for table `Respuestas`
--
ALTER TABLE `Respuestas`
  ADD PRIMARY KEY (`IdRespuesta`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`Matricula`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Calificaciones`
--
ALTER TABLE `Calificaciones`
  MODIFY `IdCalificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CatCapitulos`
--
ALTER TABLE `CatCapitulos`
  MODIFY `IdCapitulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `CatComponentes`
--
ALTER TABLE `CatComponentes`
  MODIFY `IdComponente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `CatMaterias`
--
ALTER TABLE `CatMaterias`
  MODIFY `IdMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `CatTipoUsuario`
--
ALTER TABLE `CatTipoUsuario`
  MODIFY `IdTipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `HistarialPreguntas`
--
ALTER TABLE `HistarialPreguntas`
  MODIFY `IdHistorialPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `HistorialRespuestas`
--
ALTER TABLE `HistorialRespuestas`
  MODIFY `IdHistorialRespueta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `Preguntas`
--
ALTER TABLE `Preguntas`
  MODIFY `IdPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Respuestas`
--
ALTER TABLE `Respuestas`
  MODIFY `IdRespuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
