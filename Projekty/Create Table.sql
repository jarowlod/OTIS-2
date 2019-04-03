-- --------------------------------------------------------
-- Host:                         172.30.64.11
-- Wersja serwera:               5.5.28-log - MySQL Community Server (GPL)
-- Serwer OS:                    Win64
-- HeidiSQL Wersja:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Zrzut struktury bazy danych klodzko
CREATE DATABASE IF NOT EXISTS `klodzko` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `klodzko`;

-- Zrzut struktury tabela klodzko.alerter
CREATE TABLE IF NOT EXISTS `alerter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(15) NOT NULL,
  `Lokalizacja` varchar(50) NOT NULL,
  `Rodzaj` enum('Serwer','Client') NOT NULL DEFAULT 'Serwer',
  `Telefon` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IP` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.alerter_bind
CREATE TABLE IF NOT EXISTS `alerter_bind` (
  `ID_client` int(11) NOT NULL,
  `ID_serwer` int(11) NOT NULL,
  PRIMARY KEY (`ID_client`,`ID_serwer`),
  KEY `FK_alerter_bind_alerter_2` (`ID_serwer`),
  CONSTRAINT `FK_alerter_bind_alerter` FOREIGN KEY (`ID_client`) REFERENCES `alerter` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_alerter_bind_alerter_2` FOREIGN KEY (`ID_serwer`) REFERENCES `alerter` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_art110
CREATE TABLE IF NOT EXISTS `arch_art110` (
  `IDO` int(10) unsigned NOT NULL,
  `status` int(10) unsigned DEFAULT NULL COMMENT 'null-nieokreslony, 0-nie,1-tak',
  `opis` varchar(150) DEFAULT NULL,
  `data_od` date DEFAULT NULL,
  `data_do` date DEFAULT NULL,
  `kto` varchar(45) DEFAULT NULL,
  `kiedy` datetime DEFAULT NULL,
  `Data_ubycia` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`IDO`,`Data_ubycia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_komunikaty
CREATE TABLE IF NOT EXISTS `arch_komunikaty` (
  `ID` int(11) unsigned NOT NULL,
  `odbiorca` varchar(30) NOT NULL,
  `dataNadania` datetime NOT NULL,
  `nadawca` varchar(30) NOT NULL,
  `komunikat` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0- nie odebrany; 1- odebrany;',
  `dataOdebrania` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_osadzeni
CREATE TABLE IF NOT EXISTS `arch_osadzeni` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Data_ubycia` date DEFAULT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `Ojciec` varchar(45) NOT NULL,
  `POC` varchar(10) NOT NULL,
  `Urodz` date NOT NULL,
  `Klasyf` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17466 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_paczki
CREATE TABLE IF NOT EXISTS `arch_paczki` (
  `ID` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `WYDANO` datetime NOT NULL,
  `WYDAL` varchar(45) NOT NULL,
  `RODZAJ` varchar(45) NOT NULL,
  `WAGA` int(10) unsigned DEFAULT NULL,
  `UWAGI` varchar(100) DEFAULT NULL,
  `DODATKOWA` varchar(45) DEFAULT NULL,
  `KANTYNA` varchar(10) DEFAULT NULL,
  `NADAWCA` varchar(45) DEFAULT NULL,
  `ADRES` varchar(100) DEFAULT NULL,
  `Data_ubycia` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_prosby
CREATE TABLE IF NOT EXISTS `arch_prosby` (
  `ID` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `ID_Katalog` int(10) unsigned NOT NULL,
  `Data_W` datetime NOT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `OPIS` varchar(100) DEFAULT NULL,
  `Data_DD` date NOT NULL,
  `ZREALIZOWANA` int(10) unsigned NOT NULL DEFAULT '0',
  `Data_Realizacji` datetime DEFAULT NULL,
  `KTO_Zrealizowal` varchar(45) DEFAULT NULL,
  `Data_ubycia` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_uprawnione
CREATE TABLE IF NOT EXISTS `arch_uprawnione` (
  `ID` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `Adres` varchar(100) DEFAULT NULL,
  `Data_DD` datetime DEFAULT NULL,
  `Skreslona` tinyint(1) NOT NULL DEFAULT '0',
  `Data_Skreslenia` datetime DEFAULT NULL,
  `Data_W` datetime NOT NULL,
  `Pokrew` varchar(100) DEFAULT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `Skreslil` varchar(45) DEFAULT NULL,
  `Uwagi` varchar(200) DEFAULT NULL,
  `Data_ubycia` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_widzenia
CREATE TABLE IF NOT EXISTS `arch_widzenia` (
  `ID` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `Etap` int(10) unsigned NOT NULL DEFAULT '1',
  `Data_Oczekuje` datetime DEFAULT NULL,
  `Data_Stolik` datetime DEFAULT NULL,
  `Data_Widzenie` datetime DEFAULT NULL,
  `Czas_widzenia` int(10) unsigned NOT NULL DEFAULT '60',
  `Sposob` varchar(10) NOT NULL DEFAULT 'K',
  `Nadzor` varchar(45) DEFAULT NULL,
  `Uwagi` varchar(100) DEFAULT NULL,
  `Dodatkowe` varchar(10) DEFAULT NULL,
  `Stolik` int(10) unsigned DEFAULT NULL,
  `Czas_reg` int(10) unsigned DEFAULT NULL,
  `Czas_dod` int(10) unsigned DEFAULT NULL,
  `Data_Dod` varchar(100) DEFAULT NULL,
  `Data_ubycia` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_widzenia_upr
CREATE TABLE IF NOT EXISTS `arch_widzenia_upr` (
  `ID_widzenia` int(10) unsigned NOT NULL,
  `ID_uprawnione` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_widzenia`,`ID_uprawnione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.arch_wnioski
CREATE TABLE IF NOT EXISTS `arch_wnioski` (
  `ID` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `ID_Katalog` int(10) unsigned NOT NULL,
  `Data_W` datetime NOT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `OPIS` varchar(100) DEFAULT NULL,
  `Data_DD` date NOT NULL,
  `Data_KK` date DEFAULT NULL,
  `ZREALIZOWANA` int(10) unsigned NOT NULL DEFAULT '0',
  `Data_Realizacji` datetime DEFAULT NULL,
  `KTO_Zrealizowal` varchar(45) DEFAULT NULL,
  `Data_ubycia` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.art110
CREATE TABLE IF NOT EXISTS `art110` (
  `IDO` int(10) unsigned NOT NULL,
  `status` int(10) unsigned DEFAULT NULL COMMENT 'null-nieokreslony, 0-nie,1-tak',
  `opis` varchar(150) DEFAULT NULL,
  `data_od` date DEFAULT NULL,
  `data_do` date DEFAULT NULL,
  `kto` varchar(45) DEFAULT NULL,
  `kiedy` datetime DEFAULT NULL,
  PRIMARY KEY (`IDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.katalog_prosb
CREATE TABLE IF NOT EXISTS `katalog_prosb` (
  `ID_Katalog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OPIS` varchar(100) NOT NULL,
  `CEL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Katalog`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.katalog_wnioskow
CREATE TABLE IF NOT EXISTS `katalog_wnioskow` (
  `ID_Katalog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OPIS` varchar(100) NOT NULL,
  `NK` varchar(1) NOT NULL,
  `CEL` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Katalog`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.katalog_wykazow
CREATE TABLE IF NOT EXISTS `katalog_wykazow` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Opis` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.know_how
CREATE TABLE IF NOT EXISTS `know_how` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(100) NOT NULL,
  `Kategoria` varchar(100) DEFAULT NULL,
  `DataDodania` datetime NOT NULL,
  `User` varchar(60) NOT NULL,
  `Opis` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.komunikaty
CREATE TABLE IF NOT EXISTS `komunikaty` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `odbiorca` varchar(30) NOT NULL,
  `dataNadania` datetime NOT NULL,
  `nadawca` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0- nie odebrany; 1- odebrany;',
  `dataOdebrania` datetime DEFAULT NULL,
  `komunikat` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `odbiorca` (`odbiorca`)
) ENGINE=InnoDB AUTO_INCREMENT=9106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kom_grupy
CREATE TABLE IF NOT EXISTS `kom_grupy` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL,
  `Nazwa` varchar(100) NOT NULL,
  `odbiorcy` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kom_odbiorcy
CREATE TABLE IF NOT EXISTS `kom_odbiorcy` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `odbiorca` varchar(30) NOT NULL,
  `dataOdebrania` datetime DEFAULT NULL,
  `ID_tresc` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `odbiorca` (`odbiorca`)
) ENGINE=InnoDB AUTO_INCREMENT=4652 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kom_tresc
CREATE TABLE IF NOT EXISTS `kom_tresc` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dataNadania` datetime NOT NULL,
  `nadawca` varchar(30) NOT NULL,
  `temat` varchar(200) NOT NULL,
  `komunikat` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `nadawca` (`nadawca`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.koszyk
CREATE TABLE IF NOT EXISTS `koszyk` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_koszyka` int(10) unsigned NOT NULL,
  `IDO` int(10) unsigned NOT NULL,
  `data_dodania` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2755 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.koszyk_sl
CREATE TABLE IF NOT EXISTS `koszyk_sl` (
  `ID_koszyka` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(50) NOT NULL,
  `uwagi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_koszyka`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.koszyk_usr
CREATE TABLE IF NOT EXISTS `koszyk_usr` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_koszyka` int(10) unsigned NOT NULL,
  `user` varchar(20) NOT NULL,
  `data_dodania` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kwat_plan_wyjazdow
CREATE TABLE IF NOT EXISTS `kwat_plan_wyjazdow` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_samochodu` int(11) DEFAULT NULL,
  `Kierowca` varchar(60) DEFAULT NULL,
  `data_wyjazdu` datetime DEFAULT NULL,
  `data_powrotu` datetime DEFAULT NULL,
  `Cel` varchar(200) DEFAULT NULL,
  `Uwagi` varchar(200) DEFAULT NULL,
  `stan` enum('A','U') NOT NULL DEFAULT 'A' COMMENT 'A - aktualny, U - uprzedni',
  `data_modyfikacji` datetime NOT NULL,
  `user` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kwat_plan_wyjazdow_uwagi
CREATE TABLE IF NOT EXISTS `kwat_plan_wyjazdow_uwagi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `Uwagi` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.kwat_samochody
CREATE TABLE IF NOT EXISTS `kwat_samochody` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(50) NOT NULL,
  `stan` enum('A','U') NOT NULL DEFAULT 'A' COMMENT 'A - aktualny, U - uprzedni',
  `Event_color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.osadzeni
CREATE TABLE IF NOT EXISTS `osadzeni` (
  `IDO` int(10) unsigned NOT NULL DEFAULT '0',
  `NAZWISKO` varchar(45) NOT NULL,
  `IMIE` varchar(45) NOT NULL,
  `OJCIEC` varchar(45) DEFAULT NULL,
  `URODZ` date DEFAULT NULL,
  `PRZYJ` date DEFAULT NULL,
  `KLASYF` varchar(10) DEFAULT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `ID_SYNCHRO` int(10) unsigned DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT '',
  PRIMARY KEY (`IDO`),
  KEY `NAZWISKO` (`NAZWISKO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.osadzeni_copy
CREATE TABLE IF NOT EXISTS `osadzeni_copy` (
  `IDO` int(10) unsigned NOT NULL DEFAULT '0',
  `NAZWISKO` varchar(45) NOT NULL,
  `IMIE` varchar(45) NOT NULL,
  `OJCIEC` varchar(45) DEFAULT NULL,
  `URODZ` date DEFAULT NULL,
  `PRZYJ` date DEFAULT NULL,
  `KLASYF` varchar(10) DEFAULT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `ID_SYNCHRO` int(10) unsigned DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT '',
  PRIMARY KEY (`IDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.os_info
CREATE TABLE IF NOT EXISTS `os_info` (
  `IDO` int(10) unsigned NOT NULL,
  `Autoryzacja` varchar(20) DEFAULT '',
  `data_autoryzacji` datetime DEFAULT NULL,
  `KoniecKary` date DEFAULT NULL,
  `Arch` tinyint(4) DEFAULT '0',
  `Wywiad` tinyint(4) DEFAULT '0',
  `Starszy` tinyint(4) DEFAULT '0',
  `Zatrudnienie` varchar(100) DEFAULT NULL,
  `toceny` date DEFAULT NULL,
  `tprzepustki` date DEFAULT NULL,
  `tpostpenitu` date DEFAULT NULL,
  `tterapii` date DEFAULT NULL,
  `twpz` date DEFAULT NULL,
  `ulamek_wpz` varchar(50) DEFAULT '',
  `zal_lat` int(11) DEFAULT '0',
  `zal_msc` int(11) DEFAULT '0',
  `zal_dni` int(11) DEFAULT '0',
  `tKoniecKaryNOE` date DEFAULT NULL,
  `tocenyNOE` date DEFAULT NULL,
  `tprzepustkiNOE` date DEFAULT NULL,
  `tpostpenituNOE` date DEFAULT NULL,
  `tterapiiNOE` date DEFAULT NULL,
  `twpzNOE` date DEFAULT NULL,
  `wpz_stanowisko` tinyint(4) DEFAULT '0',
  `postpenit_notatka` tinyint(4) DEFAULT '0',
  `GR` tinyint(4) DEFAULT NULL COMMENT '0 - NGr, 1- GR, Null - nieokreślony',
  PRIMARY KEY (`IDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.os_notatki
CREATE TABLE IF NOT EXISTS `os_notatki` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDO` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `wych` varchar(45) NOT NULL,
  `notatka` text,
  PRIMARY KEY (`ID`),
  KEY `IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=2435 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.paczki
CREATE TABLE IF NOT EXISTS `paczki` (
  `IDO` int(10) unsigned NOT NULL,
  `WYDANO` datetime NOT NULL,
  `WYDAL` varchar(45) NOT NULL,
  `RODZAJ` varchar(45) NOT NULL COMMENT 'żywnościowa, higieniczna, odzieżowa, hig/odzież, inna',
  `WAGA` int(10) unsigned DEFAULT NULL,
  `UWAGI` varchar(100) DEFAULT NULL,
  `DODATKOWA` varchar(45) DEFAULT NULL,
  `KANTYNA` varchar(10) DEFAULT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NADAWCA` varchar(45) DEFAULT NULL,
  `ADRES` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Index_IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=49662 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.prosby
CREATE TABLE IF NOT EXISTS `prosby` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `ID_Katalog` int(10) unsigned NOT NULL,
  `Data_W` datetime NOT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `OPIS` varchar(100) DEFAULT NULL,
  `Data_DD` date NOT NULL,
  `ZREALIZOWANA` int(10) unsigned NOT NULL DEFAULT '0',
  `Data_Realizacji` datetime DEFAULT NULL,
  `KTO_Zrealizowal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Index_IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=42005 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.rej_prosb
CREATE TABLE IF NOT EXISTS `rej_prosb` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `Numer` int(10) unsigned DEFAULT NULL COMMENT 'kolejny numer w danym roku',
  `Oznaczenie` varchar(20) DEFAULT NULL COMMENT 'D/Pen-0511/.../12',
  `Data_Wplywu` date NOT NULL,
  `ID_Kategoria` int(11) NOT NULL,
  `Opis` varchar(200) DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT '2' COMMENT '0 negatywnie, 1 pozytywnie, 2 oczekuje, 3 Wpis omyłkowy, 4 Zrealizowana',
  `Data_Decyzji` date DEFAULT NULL,
  `User` varchar(45) NOT NULL,
  `Wydruk` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 false, 1 true',
  `Wydruk_user` varchar(45) DEFAULT NULL,
  `Data_Realizacji` datetime DEFAULT NULL,
  `User_Realizacji` varchar(45) DEFAULT NULL,
  `Uwagi` text,
  PRIMARY KEY (`ID`),
  KEY `User` (`User`),
  KEY `IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=51163 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.rej_prosb_sl
CREATE TABLE IF NOT EXISTS `rej_prosb_sl` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Znaczenie` int(11) NOT NULL DEFAULT '1' COMMENT '0 - usuniete, od 1 to kolejność wyswietlania',
  `Opis` varchar(100) NOT NULL,
  `ID_Katalog_prosb` int(10) unsigned DEFAULT NULL COMMENT 'w celu dodania do próśb',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.sl_adresy_policja
CREATE TABLE IF NOT EXISTS `sl_adresy_policja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(100) DEFAULT NULL,
  `Adres` varchar(300) DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1092 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.sl_adresy_sady
CREATE TABLE IF NOT EXISTS `sl_adresy_sady` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwa` varchar(100) DEFAULT NULL,
  `Adres` varchar(300) DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.sl_jednostki
CREATE TABLE IF NOT EXISTS `sl_jednostki` (
  `Kod` varchar(3) NOT NULL DEFAULT '',
  `Jednostka` varchar(50) DEFAULT NULL,
  `Adres` varchar(200) DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Kod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.st_grupy
CREATE TABLE IF NOT EXISTS `st_grupy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT '',
  `kod` varchar(4) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Środki Trwałe';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.st_pozycje
CREATE TABLE IF NOT EXISTS `st_pozycje` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_grupy` int(11) unsigned NOT NULL,
  `nazwa` varchar(100) DEFAULT '',
  `inw_nr` int(11) DEFAULT NULL,
  `inw_grupa` varchar(4) DEFAULT '',
  `inw_rok` varchar(4) DEFAULT '',
  `odpowiedzialny` varchar(100) DEFAULT NULL,
  `data_wycofania` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_grupy` (`id_grupy`),
  CONSTRAINT `fk_grupy_pozycje` FOREIGN KEY (`id_grupy`) REFERENCES `st_grupy` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 COMMENT='Środki Trwałe';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.st_umorzenia
CREATE TABLE IF NOT EXISTS `st_umorzenia` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_wartosc` int(11) unsigned NOT NULL,
  `data_umorzenia` date NOT NULL,
  `wartosc` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wartosci_umorzenia` (`id_wartosc`),
  CONSTRAINT `fk_wartosci_umorzenia` FOREIGN KEY (`id_wartosc`) REFERENCES `st_wartosc` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7412 DEFAULT CHARSET=utf8 COMMENT='Środki Trwałe';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.st_wartosc
CREATE TABLE IF NOT EXISTS `st_wartosc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_pozycje` int(11) unsigned NOT NULL,
  `wartosc` decimal(10,2) NOT NULL DEFAULT '0.00',
  `data_dod` date NOT NULL,
  `data_poczatkowa` date NOT NULL,
  `procent_umorzenia` decimal(10,2) NOT NULL DEFAULT '0.00',
  `wartosc_umorzenia` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uwagi` text,
  PRIMARY KEY (`id`),
  KEY `fk_pozycje_wartosci` (`id_pozycje`),
  CONSTRAINT `fk_pozycje_wartosci` FOREIGN KEY (`id_pozycje`) REFERENCES `st_pozycje` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10345 DEFAULT CHARSET=utf8 COMMENT='Środki Trwałe';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.synchro
CREATE TABLE IF NOT EXISTS `synchro` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DODANO` datetime NOT NULL,
  `NAZWISKO` varchar(45) NOT NULL,
  `Opis` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13023 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.typ_cel
CREATE TABLE IF NOT EXISTS `typ_cel` (
  `id` int(4) unsigned NOT NULL,
  `POC` varchar(10) NOT NULL,
  `Opis` varchar(45) NOT NULL DEFAULT '',
  `Wychowawca` varchar(45) NOT NULL DEFAULT '',
  `Pojemnosc` int(11) NOT NULL DEFAULT '0',
  `Grypsuje` tinyint(1) NOT NULL DEFAULT '0',
  `Pali` tinyint(1) NOT NULL DEFAULT '0',
  `Ochronka` tinyint(1) NOT NULL DEFAULT '0',
  `TA` tinyint(1) NOT NULL DEFAULT '0',
  `R` tinyint(1) NOT NULL DEFAULT '0',
  `P` tinyint(1) NOT NULL DEFAULT '0',
  `M` tinyint(1) NOT NULL DEFAULT '0',
  `Przejsciowa` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`POC`),
  KEY `Wychowawca` (`Wychowawca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.uprawnienia
CREATE TABLE IF NOT EXISTS `uprawnienia` (
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Full_name` varchar(60) NOT NULL DEFAULT '',
  `Last` datetime DEFAULT NULL,
  `IleRazy` int(10) unsigned DEFAULT '0',
  `Wychowawca` varchar(45) DEFAULT '' COMMENT 'Grupa wychowawcza',
  `Dzial` enum('Penit','Ochrona','Zatrudnienie','BHP','Kwat') DEFAULT NULL COMMENT 'Penit, Ochrona, Zatrudnienie, BHP, Kwat',
  `ZastepstwaWych` varchar(200) DEFAULT '',
  `Podpis` text,
  `ZnakPisma` varchar(100) DEFAULT '',
  `Mod1` int(10) unsigned DEFAULT '0' COMMENT 'aktualizacje bazy',
  `Mod2` int(10) unsigned DEFAULT '0' COMMENT 'nowa paczka, zwroty paczek',
  `Mod3` int(10) unsigned DEFAULT '0' COMMENT 'dodaj prośby, wnioski',
  `Mod4` int(10) unsigned DEFAULT '0' COMMENT 'dodaj wykazy',
  `Mod5` int(10) unsigned DEFAULT '0' COMMENT 'modyfikacje typu cel',
  `Mod6` int(10) unsigned DEFAULT '0' COMMENT 'widzenia',
  `Mod7` int(10) unsigned DEFAULT '0' COMMENT 'kryteria przeludnienia',
  `Mod8` int(10) unsigned DEFAULT '0' COMMENT 'admin, uprawnienia',
  `Mod9` int(10) unsigned DEFAULT '0' COMMENT 'końce kar',
  `Mod10` int(10) unsigned DEFAULT '0' COMMENT 'ambulatorium',
  `Mod11` int(10) unsigned DEFAULT '0' COMMENT 'osoby bliskie (edycja, nowa)',
  `Mod12` int(10) unsigned DEFAULT '0' COMMENT 'realizacja prośby, wniosku',
  `Mod13` int(10) unsigned DEFAULT '0' COMMENT 'admin, terminarz',
  `Mod14` int(10) unsigned DEFAULT '0' COMMENT 'rejestr próśb (edycja)',
  `Mod15` int(10) unsigned DEFAULT '0' COMMENT 'Zatrudnienie (edycja)',
  `Mod16` int(10) unsigned DEFAULT '0' COMMENT 'Depozyt (środki trwałe)',
  `Mod17` int(10) unsigned DEFAULT '0' COMMENT 'Moduł do testowania poprawności',
  `Mod18` int(10) unsigned DEFAULT '0' COMMENT 'Rejestracja widzeń bezdozorowych i Skype',
  `Mod19` int(10) unsigned DEFAULT '0' COMMENT 'Kwat: Plan wyjazdów, edycja',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.uprawnione
CREATE TABLE IF NOT EXISTS `uprawnione` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `Adres` varchar(100) DEFAULT NULL,
  `Data_DD` datetime DEFAULT NULL,
  `Skreslona` tinyint(1) NOT NULL DEFAULT '0',
  `Data_Skreslenia` datetime DEFAULT NULL,
  `Data_W` datetime NOT NULL,
  `Pokrew` varchar(100) DEFAULT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `Skreslil` varchar(45) DEFAULT NULL,
  `Uwagi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `Index_IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=30465 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.uwagi
CREATE TABLE IF NOT EXISTS `uwagi` (
  `IDO` int(10) unsigned NOT NULL,
  `UWAGI` text,
  `Data` datetime DEFAULT NULL,
  PRIMARY KEY (`IDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.uwagi_kierownika
CREATE TABLE IF NOT EXISTS `uwagi_kierownika` (
  `IDO` int(10) unsigned NOT NULL,
  `UWAGI` text,
  `Data` datetime DEFAULT NULL,
  PRIMARY KEY (`IDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.uwagi_wykazy
CREATE TABLE IF NOT EXISTS `uwagi_wykazy` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `Uwagi` varchar(200) DEFAULT NULL,
  `Kategoria` int(10) unsigned NOT NULL,
  `data_dodania` datetime DEFAULT NULL,
  `user_dodania` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1291 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.ver_otis2
CREATE TABLE IF NOT EXISTS `ver_otis2` (
  `verP` varchar(10) NOT NULL,
  `path_Update` varchar(255) NOT NULL DEFAULT '',
  `path_Foto` varchar(255) NOT NULL DEFAULT '',
  `path_NO_Foto` varchar(255) NOT NULL DEFAULT '',
  `path_KnowHow` varchar(255) NOT NULL DEFAULT '',
  `Station_Name_For_Widzenia` varchar(255) NOT NULL DEFAULT '',
  `TimerInterval` int(11) NOT NULL DEFAULT '100' COMMENT 'czas oczekiwania na komunikat 1000=1s',
  PRIMARY KEY (`verP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.ver_st
CREATE TABLE IF NOT EXISTS `ver_st` (
  `verP` varchar(10) NOT NULL,
  `path_Update` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`verP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.wersja
CREATE TABLE IF NOT EXISTS `wersja` (
  `verP` varchar(10) NOT NULL,
  `path_Update` varchar(255) NOT NULL DEFAULT '',
  `path_Foto` varchar(255) NOT NULL DEFAULT '',
  `path_NO_Foto` varchar(255) NOT NULL DEFAULT '',
  `Station_Name_For_Widzenia` varchar(255) NOT NULL DEFAULT '',
  `TimerInterval` int(11) NOT NULL DEFAULT '100' COMMENT 'czas oczekiwania na komunikat 1000=1s',
  PRIMARY KEY (`verP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.widzenia
CREATE TABLE IF NOT EXISTS `widzenia` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `Etap` int(10) unsigned NOT NULL DEFAULT '1',
  `Data_Oczekuje` datetime DEFAULT NULL,
  `Data_Stolik` datetime DEFAULT NULL,
  `Data_Widzenie` datetime DEFAULT NULL,
  `Czas_widzenia` int(10) unsigned NOT NULL DEFAULT '60',
  `Sposob` varchar(10) NOT NULL DEFAULT 'K',
  `Nadzor` varchar(45) DEFAULT NULL,
  `Uwagi` varchar(100) DEFAULT NULL,
  `Dodatkowe` varchar(10) DEFAULT NULL,
  `Stolik` int(10) unsigned DEFAULT NULL,
  `Czas_reg` int(10) unsigned DEFAULT NULL,
  `Czas_dod` int(10) unsigned DEFAULT NULL,
  `Data_Dod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Index_IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=54795 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.widzenia_rezerwacje
CREATE TABLE IF NOT EXISTS `widzenia_rezerwacje` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DataGodz` datetime NOT NULL,
  `IDO` int(11) NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `Osoba` varchar(100) DEFAULT NULL,
  `Pokrewienstwo` varchar(100) DEFAULT NULL,
  `Uwagi` varchar(100) DEFAULT NULL,
  `User` varchar(60) NOT NULL,
  `data_zap` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DataGodz` (`DataGodz`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.widzenia_skype
CREATE TABLE IF NOT EXISTS `widzenia_skype` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DataGodz` datetime NOT NULL,
  `IDO` int(11) NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `Osoba` varchar(100) DEFAULT NULL,
  `Pokrewienstwo` varchar(100) DEFAULT NULL,
  `Uwagi` varchar(100) DEFAULT NULL,
  `User` varchar(60) NOT NULL,
  `data_zap` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DataGodz` (`DataGodz`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.widzenia_upr
CREATE TABLE IF NOT EXISTS `widzenia_upr` (
  `ID_widzenia` int(10) unsigned NOT NULL,
  `ID_uprawnione` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID_widzenia`,`ID_uprawnione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.wnioski
CREATE TABLE IF NOT EXISTS `wnioski` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDO` int(10) unsigned NOT NULL,
  `ID_Katalog` int(10) unsigned NOT NULL,
  `Data_W` datetime NOT NULL,
  `WPISAL` varchar(45) NOT NULL,
  `OPIS` varchar(100) DEFAULT NULL,
  `Data_DD` date NOT NULL,
  `Data_KK` date DEFAULT NULL,
  `ZREALIZOWANA` int(10) unsigned NOT NULL DEFAULT '0',
  `Data_Realizacji` datetime DEFAULT NULL,
  `KTO_Zrealizowal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Index_IDO` (`IDO`)
) ENGINE=InnoDB AUTO_INCREMENT=7719 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.wykaz_bledow
CREATE TABLE IF NOT EXISTS `wykaz_bledow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_wpisu` date DEFAULT NULL,
  `user` varchar(60) DEFAULT NULL,
  `ID_Sesji` int(10) unsigned NOT NULL DEFAULT '0',
  `Opis` varchar(255) DEFAULT NULL,
  `IDO` int(11) DEFAULT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `KLASYF` varchar(10) DEFAULT NULL,
  `NAZWISKO` varchar(45) DEFAULT NULL,
  `IMIE` varchar(45) DEFAULT NULL,
  `OJCIEC` varchar(45) DEFAULT NULL,
  `Wychowawca` varchar(45) DEFAULT NULL,
  `wych_login` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20769 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.zat_stanowiska
CREATE TABLE IF NOT EXISTS `zat_stanowiska` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) NOT NULL DEFAULT '',
  `miejsce` varchar(100) NOT NULL DEFAULT '',
  `stanowisko` varchar(100) NOT NULL DEFAULT '',
  `system` enum('PEŁNY','BEZ KONWOJENTA') DEFAULT NULL,
  `forma` enum('ODPŁATNIE','NIEODPŁATNIE') DEFAULT NULL,
  `godz_wyjscia` varchar(5) DEFAULT NULL,
  `godz_powrotu` varchar(5) DEFAULT NULL,
  `opis` varchar(200) NOT NULL DEFAULT '',
  `stan` enum('A','U') NOT NULL DEFAULT 'A' COMMENT 'A - aktualny, U - uprzedni',
  `data_dodania` datetime NOT NULL,
  `data_modyfikacji` datetime DEFAULT NULL,
  `user_dodania` varchar(50) DEFAULT NULL,
  `user_modyfikacji` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='Zatrudnienie';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.zat_stanowiska_pokrewne
CREATE TABLE IF NOT EXISTS `zat_stanowiska_pokrewne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stanowisko` varchar(100) NOT NULL,
  `pokrewne` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.zat_stawki_plac
CREATE TABLE IF NOT EXISTS `zat_stawki_plac` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rok` int(11) NOT NULL,
  `nazwa_1` varchar(100) NOT NULL DEFAULT '',
  `stawka_1` decimal(5,2) NOT NULL DEFAULT '0.00',
  `nazwa_2` varchar(100) NOT NULL DEFAULT '',
  `stawka_2` decimal(5,2) NOT NULL DEFAULT '0.00',
  `nazwa_3` varchar(100) NOT NULL DEFAULT '',
  `stawka_3` decimal(5,2) NOT NULL DEFAULT '0.00',
  `nazwa_4` varchar(100) NOT NULL DEFAULT '',
  `stawka_4` decimal(5,2) NOT NULL DEFAULT '0.00',
  `nazwa_5` varchar(100) NOT NULL DEFAULT '',
  `stawka_5` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.zat_zatrudnieni
CREATE TABLE IF NOT EXISTS `zat_zatrudnieni` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ido` int(10) unsigned NOT NULL,
  `id_stanowiska` int(10) unsigned DEFAULT NULL,
  `Nazwisko` varchar(45) NOT NULL DEFAULT '',
  `Imie` varchar(45) NOT NULL DEFAULT '',
  `Ojciec` varchar(45) DEFAULT NULL,
  `Urodzony` date DEFAULT NULL,
  `Przyjety` date DEFAULT NULL,
  `Klasyf` varchar(10) DEFAULT NULL,
  `POC` varchar(10) DEFAULT NULL,
  `status_zatrudnienia` enum('oczekujący','zatrudniony','wycofany') NOT NULL DEFAULT 'oczekujący' COMMENT 'oczekujący, zatrudniony, wycofany',
  `nr_ewidencyjny` varchar(10) DEFAULT NULL,
  `pobyt` enum('Aktualny','Uprzedni') NOT NULL DEFAULT 'Aktualny',
  `data_dodania` datetime NOT NULL,
  `data_modyfikacji` datetime DEFAULT NULL,
  `user_dodania` varchar(50) DEFAULT NULL,
  `user_modyfikacji` varchar(50) DEFAULT NULL,
  `zat_od` date DEFAULT NULL,
  `zat_do` date DEFAULT NULL,
  `powod_wycofania` varchar(100) DEFAULT NULL,
  `etat` varchar(20) NOT NULL DEFAULT '',
  `rodzaj_zatrudnienia` varchar(10) NOT NULL DEFAULT '',
  `zobowiazania` tinyint(1) DEFAULT NULL,
  `alimety` tinyint(1) DEFAULT NULL,
  `nr_dowodu` varchar(15) NOT NULL DEFAULT '',
  `pesel` varchar(11) NOT NULL DEFAULT '',
  `podkultura` tinyint(1) DEFAULT NULL,
  `karalnosc` int(11) DEFAULT NULL,
  `art` varchar(100) NOT NULL DEFAULT '',
  `wyksztalcenie` varchar(50) NOT NULL DEFAULT '',
  `zawod` varchar(50) NOT NULL DEFAULT '',
  `zawod_potwierdzony` tinyint(1) NOT NULL DEFAULT '0',
  `data_badania` date DEFAULT NULL,
  `data_nastepnego_badania` date DEFAULT NULL,
  `urlop_od` date DEFAULT NULL,
  `urlop_do` date DEFAULT NULL,
  `data_nastepnego_urlopu` date DEFAULT NULL,
  `koniec_kary` date DEFAULT NULL,
  `data_nastepnego_BHP` date DEFAULT NULL,
  `adres` varchar(100) NOT NULL DEFAULT '',
  `kod_pocztowy` varchar(6) NOT NULL DEFAULT '',
  `miejsce_urodzenia` varchar(50) NOT NULL DEFAULT '',
  `Notatki` varchar(500) DEFAULT NULL,
  `drukuj` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ido` (`ido`),
  KEY `id_stanowiska` (`id_stanowiska`),
  KEY `pobyt` (`pobyt`),
  KEY `status_zatrudnienia` (`status_zatrudnienia`)
) ENGINE=InnoDB AUTO_INCREMENT=1931 DEFAULT CHARSET=utf8 COMMENT='Zatrudnienie';

-- Data exporting was unselected.
-- Zrzut struktury tabela klodzko.zwroty_paczek
CREATE TABLE IF NOT EXISTS `zwroty_paczek` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nazwisko` varchar(45) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `Ojciec` varchar(45) DEFAULT NULL,
  `Data_Z` datetime NOT NULL,
  `Kto` varchar(45) NOT NULL,
  `Opis` text,
  PRIMARY KEY (`ID`),
  KEY `Nazwisko` (`Nazwisko`)
) ENGINE=InnoDB AUTO_INCREMENT=1836 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.
-- Zrzut struktury widok klodzko.osadzeni_od_daty
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `osadzeni_od_daty` (
	`ido` INT(10) UNSIGNED NOT NULL,
	`nazwisko` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`imie` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`ojciec` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`poc` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`id_synchro` INT(10) UNSIGNED NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.paczki_bez_osadzonych
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `paczki_bez_osadzonych` (
	`IDO` INT(10) UNSIGNED NOT NULL,
	`WYDAL` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`WYDANO` DATETIME NOT NULL,
	`oIDO` INT(10) UNSIGNED NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.prosby_przedawnione
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `prosby_przedawnione` (
	`Data_DD` DATE NOT NULL,
	`ZREALIZOWANA` INT(10) UNSIGNED NOT NULL,
	`ID` INT(10) UNSIGNED NOT NULL,
	`IDO` INT(10) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_nadawcy
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_nadawcy` (
	`NADAWCA` VARCHAR(45) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_p
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_p` (
	`POC` VARCHAR(10) NOT NULL COLLATE 'utf8_general_ci',
	`P` TINYINT(1) NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_pojemnosc
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_pojemnosc` (
	`POC` VARCHAR(10) NOT NULL COLLATE 'utf8_general_ci',
	`Zajęte` BIGINT(21) NOT NULL,
	`Pojemność` INT(11) NOT NULL,
	`Wolne` BIGINT(22) NOT NULL,
	`Grypsuje` TINYINT(1) NOT NULL,
	`Pali` TINYINT(1) NOT NULL,
	`Ochronka` TINYINT(1) NOT NULL,
	`TA` TINYINT(1) NOT NULL,
	`R` TINYINT(1) NOT NULL,
	`P` TINYINT(1) NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_prosby
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_prosby` (
	`ID` INT(10) UNSIGNED NOT NULL,
	`kategoria` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Data_W` DATETIME NOT NULL,
	`WPISAL` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`OPIS` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`Data_DD` DATE NOT NULL,
	`ZREALIZOWANA` INT(10) UNSIGNED NOT NULL,
	`Data_Realizacji` DATETIME NULL,
	`KTO_Zrealizowal` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`NAZWISKO` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`IMIE` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`POC` VARCHAR(10) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_prosby_ilosc
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_prosby_ilosc` (
	`NAZWISKO` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`ZREALIZOWANA` INT(10) UNSIGNED NOT NULL,
	`ile` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_sprzet_magazyn
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_sprzet_magazyn` (
	`IDO` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`typ` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`producent` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`model` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Serial` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Magazyn` TINYINT(1) NOT NULL,
	`Cela` TINYINT(1) NOT NULL,
	`Data_przyjecia_ZK` DATETIME NULL,
	`Data_wydania_Cela` DATETIME NULL,
	`Data_wydania_ZK` DATETIME NULL,
	`Uwagi` LONGTEXT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_ta
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_ta` (
	`POC` VARCHAR(10) NOT NULL COLLATE 'utf8_general_ci',
	`TA` TINYINT(1) NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.view_wnioski
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `view_wnioski` (
	`ID` INT(10) UNSIGNED NOT NULL,
	`kategoria` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Data_W` DATETIME NOT NULL,
	`WPISAL` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`OPIS` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`Data_DD` DATE NOT NULL,
	`Data_KK` DATE NULL,
	`ZREALIZOWANA` INT(10) UNSIGNED NOT NULL,
	`Data_Realizacji` DATETIME NULL,
	`KTO_Zrealizowal` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`NAZWISKO` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`IMIE` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`OJCIEC` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`POC` VARCHAR(10) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Zrzut struktury widok klodzko.wnioski_kary_zakonczone
-- Tworzenie tymczasowej tabeli aby przezwyciężyć błędy z zależnościami w WIDOKU
CREATE TABLE `wnioski_kary_zakonczone` (
	`NAZWISKO` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`IDO` INT(10) UNSIGNED NOT NULL,
	`ID_Katalog` INT(10) UNSIGNED NOT NULL,
	`WPISAL` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`Data_DD` DATE NOT NULL,
	`Data_KK` DATE NULL,
	`OPIS` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`ZREALIZOWANA` INT(10) UNSIGNED NOT NULL
) ENGINE=MyISAM;

-- Zrzut struktury zdarzenie klodzko.czyscik092017
DELIMITER //
CREATE DEFINER=`153202jwlo`@`%` EVENT `czyscik092017` ON SCHEDULE EVERY 1 DAY STARTS '2017-09-21 03:00:00' ON COMPLETION PRESERVE ENABLE DO BEGIN

INSERT INTO arch_osadzeni (Data_ubycia, IDO, Nazwisko, Imie, Ojciec, POC, Urodz, Klasyf) SELECT CURDATE(), o.ido, o.nazwisko, o.imie, o.ojciec, o.poc, o.urodz, o.klasyf FROM osadzeni o WHERE poc="ubył";
DELETE FROM osadzeni WHERE POC="ubył";

#przedawniamy prosby starsze niz 2msc
UPDATE prosby SET Zrealizowana=2 WHERE (Zrealizowana=0)AND((Data_DD + interval 6 MONTH) < CURDATE());

INSERT INTO arch_paczki (ID,IDO,WYDANO,WYDAL,RODZAJ,WAGA,UWAGI,DODATKOWA,KANTYNA,NADAWCA,ADRES,Data_ubycia) SELECT ID,IDO,WYDANO,WYDAL,RODZAJ,WAGA,UWAGI,DODATKOWA,KANTYNA,NADAWCA,ADRES,CURDATE() FROM paczki where IDO not in (select ido from osadzeni);
DELETE FROM paczki where IDO not in (select ido from osadzeni);

INSERT INTO arch_prosby (ID,IDO,ID_Katalog,Data_W,WPISAL,OPIS,Data_DD,ZREALIZOWANA,Data_Realizacji,KTO_Zrealizowal,Data_ubycia) SELECT ID,IDO,ID_Katalog,Data_W,WPISAL,OPIS,Data_DD,ZREALIZOWANA,Data_Realizacji,KTO_Zrealizowal,CURDATE() FROM prosby where IDO not in (select ido from osadzeni);
DELETE FROM prosby where IDO not in (select ido from osadzeni);

INSERT INTO arch_wnioski (ID,IDO,ID_Katalog,Data_W,WPISAL,OPIS,Data_DD,Data_KK,ZREALIZOWANA,Data_Realizacji,KTO_Zrealizowal,Data_ubycia) SELECT ID,IDO,ID_Katalog,Data_W,WPISAL,OPIS,Data_DD,Data_KK,ZREALIZOWANA,Data_Realizacji,KTO_Zrealizowal,CURDATE() FROM wnioski where IDO not in (select ido from osadzeni);
DELETE FROM wnioski where IDO not in (select ido from osadzeni);

#czyscimy widzenia niezrealizowane
DELETE FROM widzenia WHERE (Etap<=2);
DELETE FROM widzenia_upr where ID_widzenia not in (select ID from widzenia);

INSERT INTO arch_uprawnione (ID,IDO,Nazwisko,Imie,Adres,Data_DD,Skreslona,Data_Skreslenia,Data_W,Pokrew,WPISAL,Skreslil,Uwagi,Data_ubycia) SELECT ID,IDO,Nazwisko,Imie,Adres,Data_DD,Skreslona,Data_Skreslenia,Data_W,Pokrew,WPISAL,Skreslil,Uwagi,CURDATE() FROM uprawnione where IDO not in (select ido from osadzeni);
DELETE FROM uprawnione where IDO not in (select ido from osadzeni);

INSERT INTO arch_widzenia (ID,IDO,Etap,Data_Oczekuje,Data_Stolik,Data_Widzenie,Czas_widzenia,Sposob,Nadzor,Uwagi,Dodatkowe,Stolik,Czas_reg,Czas_dod,Data_Dod,Data_ubycia) SELECT ID,IDO,Etap,Data_Oczekuje,Data_Stolik,Data_Widzenie,Czas_widzenia,Sposob,Nadzor,Uwagi,Dodatkowe,Stolik,Czas_reg,Czas_dod,Data_Dod,CURDATE() FROM widzenia where IDO not in (select ido from osadzeni);
DELETE FROM widzenia where IDO not in (select ido from osadzeni);

INSERT INTO arch_widzenia_upr (ID_widzenia,ID_uprawnione) SELECT ID_widzenia,ID_uprawnione FROM widzenia_upr where ID_widzenia not in (select ID from widzenia);
DELETE FROM widzenia_upr where ID_widzenia not in (select ID from widzenia);

#przedawniamy art110 po 180 dniach od przeludnienia
UPDATE art110 SET data_od=null, data_do=null WHERE (not isnull(data_do)) AND ((data_do + interval 180 DAY)<CURDATE());
INSERT INTO arch_art110 (IDO,status,opis,data_od,data_do,kto,kiedy,Data_ubycia) SELECT IDO,status,opis,data_od,data_do,kto,kiedy,CURDATE() FROM art110 where IDO not in (select IDO from osadzeni);
DELETE FROM art110 where IDO not in (select IDO from osadzeni);

#archiwizacja komunikatów starszych niż 6 miesięcy
INSERT INTO arch_komunikaty (ID,odbiorca,dataNadania,nadawca,komunikat,status,dataOdebrania) SELECT ID,odbiorca,dataNadania,nadawca,komunikat,status,dataOdebrania FROM komunikaty WHERE (dataNadania + interval 6 MONTH) < CURDATE();
DELETE FROM komunikaty WHERE (dataNadania + interval 6 MONTH) < CURDATE();

END//
DELIMITER ;

-- Zrzut struktury wyzwalacz klodzko.tr_Data_ins
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_Data_ins` BEFORE INSERT ON `uwagi` FOR EACH ROW SET NEW.Data=NOW()//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Zrzut struktury wyzwalacz klodzko.tr_Data_ins_copy
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_Data_ins_copy` BEFORE INSERT ON `uwagi_kierownika` FOR EACH ROW SET NEW.Data=NOW()//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Zrzut struktury wyzwalacz klodzko.tr_Data_upd
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_Data_upd` BEFORE UPDATE ON `uwagi` FOR EACH ROW SET NEW.Data=NOW()//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Zrzut struktury wyzwalacz klodzko.tr_Data_upd_copy
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_Data_upd_copy` BEFORE UPDATE ON `uwagi_kierownika` FOR EACH ROW SET NEW.Data=NOW()//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Zrzut struktury wyzwalacz klodzko.tr_set_znak_pisma
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_set_znak_pisma` BEFORE INSERT ON `rej_prosb` FOR EACH ROW BEGIN
  SELECT COUNT(*)+1 INTO @order_count_on_year FROM rej_prosb
  WHERE YEAR(rej_prosb.Data_Wplywu) = YEAR(NEW.Data_Wplywu);
  SET NEW.Oznaczenie = CONCAT('DPen.453.', @order_count_on_year, '.', DATE_FORMAT(NEW.Data_Wplywu, '%Y'));
  SET NEW.Numer = @order_count_on_year;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Zrzut struktury widok klodzko.osadzeni_od_daty
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `osadzeni_od_daty`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `osadzeni_od_daty` AS select `o`.`IDO` AS `ido`,`o`.`NAZWISKO` AS `nazwisko`,`o`.`IMIE` AS `imie`,`o`.`OJCIEC` AS `ojciec`,`o`.`POC` AS `poc`,`o`.`ID_SYNCHRO` AS `id_synchro` from (`osadzeni` `o` left join `synchro` on((`synchro`.`ID` = `o`.`ID_SYNCHRO`))) where (`synchro`.`DODANO` >= 20090516);

-- Zrzut struktury widok klodzko.paczki_bez_osadzonych
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `paczki_bez_osadzonych`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `paczki_bez_osadzonych` AS select `p`.`IDO` AS `IDO`,`p`.`WYDAL` AS `WYDAL`,`p`.`WYDANO` AS `WYDANO`,`o`.`IDO` AS `oIDO` from (`paczki` `p` left join `osadzeni` `o` on((`p`.`IDO` = `o`.`IDO`))) where isnull(`o`.`IDO`);

-- Zrzut struktury widok klodzko.prosby_przedawnione
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `prosby_przedawnione`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `prosby_przedawnione` AS select `prosby`.`Data_DD` AS `Data_DD`,`prosby`.`ZREALIZOWANA` AS `ZREALIZOWANA`,`prosby`.`ID` AS `ID`,`prosby`.`IDO` AS `IDO` from `prosby` where ((`prosby`.`Data_DD` + interval 2 month) < curdate());

-- Zrzut struktury widok klodzko.view_nadawcy
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_nadawcy`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_nadawcy` AS select distinct `paczki`.`NADAWCA` AS `NADAWCA` from `paczki` where (`paczki`.`NADAWCA` is not null) order by `paczki`.`NADAWCA`;

-- Zrzut struktury widok klodzko.view_p
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_p`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_p` AS select `typ_cel`.`POC` AS `POC`,`typ_cel`.`P` AS `P` from `typ_cel` where ((((select count(`osadzeni`.`IDO`) AS `ile` from `osadzeni` where ((`osadzeni`.`POC` = `typ_cel`.`POC`) and (`osadzeni`.`KLASYF` like 'P-%') and (not((`osadzeni`.`KLASYF` like '%TA%'))))) > 0) and (`typ_cel`.`P` = 0)) or (((select count(`osadzeni`.`IDO`) AS `ile` from `osadzeni` where ((`osadzeni`.`POC` = `typ_cel`.`POC`) and ((`osadzeni`.`KLASYF` like 'P-%') or (`osadzeni`.`KLASYF` like '%TA%')))) = 0) and (`typ_cel`.`P` = 1)));

-- Zrzut struktury widok klodzko.view_pojemnosc
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_pojemnosc`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_pojemnosc` AS select `typ_cel`.`POC` AS `POC`,count(`osadzeni`.`POC`) AS `Zajęte`,`typ_cel`.`Pojemnosc` AS `Pojemność`,(`typ_cel`.`Pojemnosc` - count(`osadzeni`.`POC`)) AS `Wolne`,`typ_cel`.`Grypsuje` AS `Grypsuje`,`typ_cel`.`Pali` AS `Pali`,`typ_cel`.`Ochronka` AS `Ochronka`,`typ_cel`.`TA` AS `TA`,`typ_cel`.`R` AS `R`,`typ_cel`.`P` AS `P` from (`typ_cel` left join `osadzeni` on((`typ_cel`.`POC` = `osadzeni`.`POC`))) group by `osadzeni`.`POC` having (`Pojemność` > `Zajęte`) order by `osadzeni`.`POC`;

-- Zrzut struktury widok klodzko.view_prosby
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_prosby`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_prosby` AS select `prosby`.`ID` AS `ID`,`katalog_prosb`.`OPIS` AS `kategoria`,`prosby`.`Data_W` AS `Data_W`,`prosby`.`WPISAL` AS `WPISAL`,`prosby`.`OPIS` AS `OPIS`,`prosby`.`Data_DD` AS `Data_DD`,`prosby`.`ZREALIZOWANA` AS `ZREALIZOWANA`,`prosby`.`Data_Realizacji` AS `Data_Realizacji`,`prosby`.`KTO_Zrealizowal` AS `KTO_Zrealizowal`,`osadzeni`.`NAZWISKO` AS `NAZWISKO`,`osadzeni`.`IMIE` AS `IMIE`,`osadzeni`.`POC` AS `POC` from ((`prosby` join `katalog_prosb` on((`prosby`.`ID_Katalog` = `katalog_prosb`.`ID_Katalog`))) join `osadzeni` on((`prosby`.`IDO` = `osadzeni`.`IDO`))) order by `prosby`.`ID` desc;

-- Zrzut struktury widok klodzko.view_prosby_ilosc
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_prosby_ilosc`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_prosby_ilosc` AS select `osadzeni`.`NAZWISKO` AS `NAZWISKO`,`prosby`.`ZREALIZOWANA` AS `ZREALIZOWANA`,count(0) AS `ile` from (`prosby` join `osadzeni` on((`prosby`.`IDO` = `osadzeni`.`IDO`))) group by `prosby`.`IDO`,`prosby`.`ZREALIZOWANA`;

-- Zrzut struktury widok klodzko.view_sprzet_magazyn
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_sprzet_magazyn`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_sprzet_magazyn` AS select `sprzet`.`sprzet`.`Prisoner_ID` AS `IDO`,`sprzet`.`typ`.`Typ` AS `typ`,`sprzet`.`producent`.`Producent` AS `producent`,`sprzet`.`sprzet`.`Model` AS `model`,`sprzet`.`sprzet`.`Serial` AS `Serial`,`sprzet`.`sprzet`.`Magazyn` AS `Magazyn`,`sprzet`.`sprzet`.`Cela` AS `Cela`,`sprzet`.`sprzet`.`Data_przyjecia_ZK` AS `Data_przyjecia_ZK`,max(`sprzet`.`magazyn`.`Data_wydania`) AS `Data_wydania_Cela`,`sprzet`.`sprzet`.`Data_wydania_ZK` AS `Data_wydania_ZK`,`sprzet`.`uwagi`.`Tekst` AS `Uwagi` from ((((`sprzet`.`sprzet` left join `sprzet`.`magazyn` on((`sprzet`.`sprzet`.`ID` = `sprzet`.`magazyn`.`Sprzet_ID`))) left join `sprzet`.`uwagi` on((`sprzet`.`sprzet`.`ID` = `sprzet`.`uwagi`.`Sprzet_ID`))) join `sprzet`.`producent`) join `sprzet`.`typ`) where ((`sprzet`.`typ`.`ID` = `sprzet`.`sprzet`.`Typ_ID`) and (`sprzet`.`producent`.`ID` = `sprzet`.`sprzet`.`Producent_ID`) and ((`sprzet`.`sprzet`.`Cela` + `sprzet`.`sprzet`.`Magazyn`) > -(2))) group by `sprzet`.`magazyn`.`Sprzet_ID`;

-- Zrzut struktury widok klodzko.view_ta
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_ta`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_ta` AS select `typ_cel`.`POC` AS `POC`,`typ_cel`.`TA` AS `TA` from `typ_cel` where ((((select count(`osadzeni`.`IDO`) AS `ile` from `osadzeni` where ((`osadzeni`.`POC` = `typ_cel`.`POC`) and (`osadzeni`.`KLASYF` like '%TA%'))) > 0) and (`typ_cel`.`TA` = 0)) or (((select count(`osadzeni`.`IDO`) AS `ile` from `osadzeni` where ((`osadzeni`.`POC` = `typ_cel`.`POC`) and (`osadzeni`.`KLASYF` like '%TA%'))) = 0) and (`typ_cel`.`TA` = 1)));

-- Zrzut struktury widok klodzko.view_wnioski
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `view_wnioski`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `view_wnioski` AS select `wnioski`.`ID` AS `ID`,`katalog_wnioskow`.`OPIS` AS `kategoria`,`wnioski`.`Data_W` AS `Data_W`,`wnioski`.`WPISAL` AS `WPISAL`,`wnioski`.`OPIS` AS `OPIS`,`wnioski`.`Data_DD` AS `Data_DD`,`wnioski`.`Data_KK` AS `Data_KK`,`wnioski`.`ZREALIZOWANA` AS `ZREALIZOWANA`,`wnioski`.`Data_Realizacji` AS `Data_Realizacji`,`wnioski`.`KTO_Zrealizowal` AS `KTO_Zrealizowal`,`osadzeni`.`NAZWISKO` AS `NAZWISKO`,`osadzeni`.`IMIE` AS `IMIE`,`osadzeni`.`OJCIEC` AS `OJCIEC`,`osadzeni`.`POC` AS `POC` from ((`wnioski` join `katalog_wnioskow` on((`wnioski`.`ID_Katalog` = `katalog_wnioskow`.`ID_Katalog`))) join `osadzeni` on((`wnioski`.`IDO` = `osadzeni`.`IDO`))) order by `wnioski`.`ID` desc;

-- Zrzut struktury widok klodzko.wnioski_kary_zakonczone
-- Usuwanie tabeli tymczasowej i tworzenie ostatecznej struktury WIDOKU
DROP TABLE IF EXISTS `wnioski_kary_zakonczone`;
CREATE ALGORITHM=UNDEFINED DEFINER=`jarekw`@`%` SQL SECURITY DEFINER VIEW `wnioski_kary_zakonczone` AS select `osadzeni`.`NAZWISKO` AS `NAZWISKO`,`wnioski`.`IDO` AS `IDO`,`wnioski`.`ID_Katalog` AS `ID_Katalog`,`wnioski`.`WPISAL` AS `WPISAL`,`wnioski`.`Data_DD` AS `Data_DD`,`wnioski`.`Data_KK` AS `Data_KK`,`wnioski`.`OPIS` AS `OPIS`,`wnioski`.`ZREALIZOWANA` AS `ZREALIZOWANA` from (`wnioski` join `osadzeni` on((`wnioski`.`IDO` = `osadzeni`.`IDO`))) where ((`wnioski`.`Data_KK` is not null) and (`wnioski`.`Data_KK` < curdate()) and (`wnioski`.`ZREALIZOWANA` = 0));

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
