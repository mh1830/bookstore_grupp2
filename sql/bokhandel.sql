-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Skapad: 02 dec 2013 kl 14:03
-- Serverversion: 5.5.32
-- PHP-version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `bokhandel`
--
CREATE DATABASE IF NOT EXISTS `bokhandel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bokhandel`;

-- --------------------------------------------------------

--
-- Tabellstruktur `hantering`
--

CREATE TABLE IF NOT EXISTS `hantering` (
  `bokid` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(100) NOT NULL,
  `Titel` varchar(100) NOT NULL,
  `Forfattare` varchar(100) NOT NULL,
  `Antal` varchar(100) NOT NULL,
  `Pris` varchar(1000) NOT NULL,
  `Fpris` varchar(100) NOT NULL,
  `Moms` varchar(100) NOT NULL,
  `Hylla` varchar(100) NOT NULL,
  `Levdatum` varchar(40) NOT NULL,
  PRIMARY KEY (`bokid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumpning av Data i tabell `hantering`
--

INSERT INTO `hantering` (`bokid`, `ISBN`, `Titel`, `Forfattare`, `Antal`, `Pris`, `Fpris`, `Moms`, `Hylla`, `Levdatum`) VALUES
(1, '9789173894210', 'Brinnande Livet', 'Alice Munro', '100', '187', '10', '8,7', '1', ''),
(2, '9789174018332', 'Ulrika Davidssons kokbok om 5:2: 100 kaloriberäknade recept', 'Ulrika Davidsson', '100', '139', '10', '1,39', '2', ''),
(3, '9789113052571', 'Svennis: Min historia', 'Sven Göran Eriksson', '100', '185', '10', '1,85', '3', ''),
(4, '9780340919392', 'Alex Ferguson: My autobiography', 'Sir Alex Ferguson', '100', '194', '10', '1,94', '3', ''),
(5, '9789187219672', 'Kriget har inget kvinnligt ansikte', 'Svetlana Aleksijevitj', '100', '45', '10', '4,45', '4', ''),
(6, '9789170377334', 'Drottningens hemlighet', 'Johan Åsard', '100', '175', '10', '1,75', '3', ''),
(7, '9789186589202', 'Ung, bög och jävligt kär', 'Johannes Sandreyo', '100', '53', '10', '5,3', '5', ''),
(8, '9789164204134\r\n', 'Mellan rött och svart', 'Jan Guillou\r\n', '100', '195', '10', '1,95', '6', ''),
(9, '9789100121624', 'Den sanna historien om Pinocchios näsa', 'Leif G. W. Persson', '100', '188', '10', '1,88', '7', ''),
(10, '9789175130460\r\n', 'Död eller levande', 'Tom Clancy', '100', '51', '10', '5,1', '8', ''),
(11, '482658756', 'test', 'test', '100', '137', '134', '', '', ''),
(12, '598735087', 'dubbeltest', 'test', '100', 'test', 'test', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
