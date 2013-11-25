-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Skapad: 25 nov 2013 kl 11:13
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
  `kundid` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(100) NOT NULL,
  `Titel` varchar(100) NOT NULL,
  `Forfattare` varchar(100) NOT NULL,
  `Antal` varchar(100) NOT NULL,
  `Pris` varchar(1000) NOT NULL,
  `Forlag` varchar(100) NOT NULL,
  `Utgivningsar` varchar(4) NOT NULL,
  `Sidor` varchar(4) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Fpris` varchar(100) NOT NULL,
  `Moms` varchar(100) NOT NULL,
  `Hylla` varchar(100) NOT NULL,
  PRIMARY KEY (`kundid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumpning av Data i tabell `hantering`
--

INSERT INTO `hantering` (`kundid`, `ISBN`, `Titel`, `Forfattare`, `Antal`, `Pris`, `Forlag`, `Utgivningsar`, `Sidor`, `Genre`, `Fpris`, `Moms`, `Hylla`) VALUES
(1, '9789173894210', 'Brinnande Livet', 'Alice Munro', '100', '187', 'Bokförlaget Atlas', '2013', '304', 'Svenska', '10', '8,7', '1'),
(2, '9789174018332', 'Ulrika Davidssons kokbok om 5:2: 100 kaloriberäknade recept', 'Ulrika Davidsson', '100', '139', 'Tukan Förlag', '2013', '192', 'Kokbok', '10', '1,39', '2'),
(3, '9789113052571', 'Svennis: Min historia', 'Sven Göran Eriksson', '100', '185', 'Norstedts', '2013', '368', 'Självbiografi', '10', '1,85', '3'),
(4, '9780340919392', 'Alex Ferguson: My autobiography', 'Sir Alex Ferguson', '100', '194', 'Hodder Stoughton\r\n', '2013', '416', 'Självbiografi', '10', '1,94', '3'),
(5, '9789187219672', 'Kriget har inget kvinnligt ansikte', 'Svetlana Aleksijevitj', '100', '45', 'Ersatz', '2013', '447', 'Historia', '10', '4,45', '4'),
(6, '9789170377334', 'Drottningens hemlighet', 'Johan Åsard', '100', '175', 'Ordfront Förlag', '2013', '318', 'Biografi', '10', '1,75', '3'),
(7, '9789186589202', 'Ung, bög och jävligt kär', 'Johannes Sandreyo', '100', '53', 'Vombat Förlag', '2012', '360', 'Ungdom', '10', '5,3', '5'),
(8, '9789164204134\r\n', 'Mellan rött och svart', 'Jan Guillou\r\n', '100', '195', 'Piratförlaget', '2013', '431', 'Roman', '10', '1,95', '6'),
(9, '9789100121624', 'Den sanna historien om Pinocchios näsa', 'Leif G. W. Persson', '100', '188', 'Albert Bonniers Förlag\r\n', '2013', '630', 'Deckare', '10', '1,88', '7'),
(10, '9789175130460\r\n', 'Död eller levande', 'Tom Clancy', '100', '51', 'Bra böcker', '2013', '396', 'Thriller', '10', '5,1', '8');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
