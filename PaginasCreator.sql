-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2019 at 07:37 AM
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
-- Database: `PaginasCreator`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Localizacion`
--

CREATE TABLE `Localizacion` (
  `Id` int(11) NOT NULL,
  `Body` text,
  `LleyendaHtml` text,
  `Leyendacss` text,
  `CssMostrar` text,
  `Ubicacion` text,
  `Link` text,
  `Titulo` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Localizacion`
--

INSERT INTO `Localizacion` (`Id`, `Body`, `LleyendaHtml`, `Leyendacss`, `CssMostrar`, `Ubicacion`, `Link`, `Titulo`) VALUES
(1, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicauno/uno.html', 'Esquina redondeada'),
(2, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicados/Elemento.html', 'Sombras'),
(3, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicatres/Elemento.html', 'Flexbox otorga'),
(4, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicacuatro/Elemento.html', 'Funcionamiento de los fondos de pantalla'),
(5, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicacinco/Elemento.html', 'At-Rules'),
(6, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicaseis/Elemento.html', 'Selectores universales'),
(7, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicasiete/Elemento.html', 'Hijo selector'),
(8, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicaocho/Elemento.html', 'Selectores adyasentes'),
(9, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicanueve/Elemento.html', 'Atributos html'),
(10, 'No hay', 'No hay', 'No hay', 'No hay', 'No hay', 'practicadiez/Elemento.html', 'After y Before');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Localizacion`
--
ALTER TABLE `Localizacion`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Localizacion`
--
ALTER TABLE `Localizacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
