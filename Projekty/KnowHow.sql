-- --------------------------------------------------------
-- Host:                         192.168.1.22
-- Wersja serwera:               5.7.21-0ubuntu0.16.04.1 - (Ubuntu)
-- Serwer OS:                    Linux
-- HeidiSQL Wersja:              9.4.0.5188
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Zrzut struktury tabela klodzko.know_how
CREATE TABLE IF NOT EXISTS `know_how` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(100) NOT NULL,
  `Opis` text,
  `Kategoria` varchar(100) DEFAULT NULL,
  `DataDodania` datetime NOT NULL,
  `User` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.know_how_files
CREATE TABLE IF NOT EXISTS `know_how_files` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Know_How` int(10) unsigned NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `FilePathSrc` varchar(255) NOT NULL,
  `DataDodania` datetime NOT NULL,
  `User` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_know_how_files_know_how` (`ID_Know_How`),
  CONSTRAINT `FK_know_how_files_know_how` FOREIGN KEY (`ID_Know_How`) REFERENCES `know_how` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.know_how_tags
CREATE TABLE IF NOT EXISTS `know_how_tags` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Know_How` int(10) unsigned NOT NULL,
  `Tag` varchar(100) NOT NULL,
  `DataDodania` datetime NOT NULL,
  `User` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Tag` (`Tag`),
  KEY `FK_know_how_tags_know_how` (`ID_Know_How`),
  CONSTRAINT `FK_know_how_tags_know_how` FOREIGN KEY (`ID_Know_How`) REFERENCES `know_how` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
