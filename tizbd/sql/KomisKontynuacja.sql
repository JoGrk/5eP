-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 06 Lis 2015, 08:38
-- Wersja serwera: 5.5.16
-- Wersja PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `komiskontynuacja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `auta`
--

CREATE TABLE IF NOT EXISTS `auta` (
  `id` int(11) NOT NULL,
  `model` int(11) DEFAULT NULL,
  `rocznik` int(11) DEFAULT NULL,
  `wartosc` decimal(10,0) DEFAULT NULL,
  `tablica` varchar(8) DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `silnik` varchar(2) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  `skrzynia` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `auta`
--

INSERT INTO `auta` (`id`, `model`, `rocznik`, `wartosc`, `tablica`, `przebieg`, `silnik`, `data_wpisu`, `autor_wpisu`, `skrzynia`) VALUES
(1, 3, 2011, 43200, 'CTR123G', 90000, 'D', '2015-10-26', 'ktc', NULL),
(2, 1, 2003, NULL, 'ctr987D', 290000, 'BG', '2015-10-26', 'ktc', NULL),
(3, 1, 2007, 16200, 'Ctr6H7C', 240000, 'B', '2015-10-26', 'ibn', NULL),
(4, NULL, 2006, 4500, 'CT09876', 310000, 'B', '2015-10-26', 'ibn', NULL),
(5, 2, 2006, 19800, 'ct68790', 289000, 'D', '2015-10-26', 'ktc', NULL),
(6, 1, 2010, 36900, 'By21340', 98000, 'B', '2015-10-26', 'ktc', NULL),
(7, 2, 2000, 29700, 'by76098', 137000, 'BG', '2015-10-26', 'ktc', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `handlowcy`
--

CREATE TABLE IF NOT EXISTS `handlowcy` (
  `login` varchar(10) DEFAULT NULL,
  `imie` varchar(15) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  `sektor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `handlowcy`
--

INSERT INTO `handlowcy` (`login`, `imie`, `nazwisko`, `email`, `data_wpisu`, `autor_wpisu`, `sektor`) VALUES
('ibn', 'Ilona', 'Nowosad', 'ibn@komis.eu', '2010-09-01', 'ibn', 1),
('ktc', 'Krzysztof', 'Czarkowski', 'ktc@komis.eu', '2010-09-02', 'ktc', 1),
('agam', 'Agata', 'Miastek', 'agam@komis.eu', '2014-02-07', 'agam', 4),
('milo', 'Milan', 'Ogon', 'milo@komis.eu', '2010-09-01', 'ibn', 2),
('wojt', 'Wojciech', '?ak', 'wojt@komi.eu', '2010-09-02', 'ibn', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `klienci`
--

CREATE TABLE IF NOT EXISTS `klienci` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  `nip` char(10) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pesel` (`pesel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `modele`
--

CREATE TABLE IF NOT EXISTS `modele` (
  `id` int(11) NOT NULL,
  `producent` int(11) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `rocznik_pocz` int(11) DEFAULT NULL,
  `rocznik_konc` int(11) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `modele`
--

INSERT INTO `modele` (`id`, `producent`, `nazwa`, `rocznik_pocz`, `rocznik_konc`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 4, 'Megane', 1996, 0, '2014-12-01', 'ktc'),
(2, 2, 'Seicento ', 1998, 2010, '2014-12-01', 'ktc'),
(3, 2, 'Punto', 1993, 0, '2014-12-01', 'ktc'),
(4, 2, 'Maluch', 1973, 2000, '2014-12-01', 'ktc'),
(5, 2, 'Cinquecento ', 1991, 1998, '2014-12-01', 'ktc'),
(6, 4, 'Laguna', 1994, 0, '2014-12-01', 'ktc');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `operacje`
--

CREATE TABLE IF NOT EXISTS `operacje` (
  `id` int(11) NOT NULL,
  `rodzaj` varchar(20) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `operacje`
--

INSERT INTO `operacje` (`id`, `rodzaj`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 'zakup', '2015-01-01', 'ibn'),
(2, 'sprzeda?', '2015-01-14', 'ktc'),
(3, 'rezerwacja', '2015-02-10', 'ibn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `pracownicy`
--

CREATE TABLE IF NOT EXISTS `pracownicy` (
  `ID` int(1) DEFAULT NULL,
  `LOGIN` varchar(4) DEFAULT NULL,
  `NAZWISKO` varchar(9) DEFAULT NULL,
  `IMIE` varchar(6) DEFAULT NULL,
  `DATA_WPISU` varchar(8) DEFAULT NULL,
  `AUTOR_WPISU` varchar(3) DEFAULT NULL,
  `EMAIL` varchar(13) DEFAULT NULL,
  `SEKTOR` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`ID`, `LOGIN`, `NAZWISKO`, `IMIE`, `DATA_WPISU`, `AUTOR_WPISU`, `EMAIL`, `SEKTOR`) VALUES
(1, 'abk', 'Kowalski', 'Kamil', '15/03/08', 'ibn', 'abk@komis.eu', 3),
(2, 'wit', 'Witkowski', 'Witold', '15/03/05', 'ktc', 'wit@komis.eu', 2),
(3, 'agam', 'Miastek', 'Agata', '15/03/07', 'ktc', 'agam@komis.eu', 4),
(4, 'skos', 'Skowron', 'Szymon', '2015-03-', 'ibn', 'skos@komis.eu', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `producenci`
--

CREATE TABLE IF NOT EXISTS `producenci` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwa`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 'Toyota', '0000-00-00', '2015-01-01'),
(2, 'Fiat', '0000-00-00', '2015-01-02'),
(3, 'Mitsubishi', '0000-00-00', '2015-01-03'),
(4, 'Renault', '0000-00-00', '2015-01-04'),
(5, 'Citroen', '0000-00-00', '2015-01-05'),
(6, 'Mazda', '0000-00-00', '2015-01-05'),
(7, 'Volvo', '0000-00-00', '2015-01-04');

-- --------------------------------------------------------


--
-- Struktura tabeli dla  `rejestry`
--

CREATE TABLE IF NOT EXISTS `rejestry` (
  `id` int(11) NOT NULL,
  `operacja` int(11) DEFAULT NULL,
  `klient` int(11) DEFAULT NULL,
  `samochod` int(11) DEFAULT NULL,
  `kwota` decimal(10,0) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rejestry`
--

INSERT INTO `rejestry` (`id`, `operacja`, `klient`, `samochod`, `kwota`, `data_wpisu`, `autor_wpisu`) VALUES
(1, 2, 3, 1, 45000, '2015-03-01', 'ktc'),
(2, 1, 2, 2, 13000, '2015-01-14', 'ktc'),
(3, 2, 1, 3, 15000, '2015-02-10', 'ibn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `rezerwacje`
--

CREATE TABLE IF NOT EXISTS `rezerwacje` (
  `id` int(11) DEFAULT NULL,
  `klient` int(11) DEFAULT NULL,
  `samochod` int(11) DEFAULT NULL,
  `data_rez` date DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`id`, `klient`, `samochod`, `data_rez`, `data_wpisu`, `autor_wpisu`, `status`) VALUES
(1, 4, 5, '2015-03-01', '2015-02-28', 'ktc', 'Oczekuje'),
(2, 1, 3, '2015-02-28', '2015-02-20', 'ktc', 'Anulowana');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `sektory`
--

CREATE TABLE IF NOT EXISTS `sektory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) DEFAULT NULL,
  `data_wpisu` date DEFAULT NULL,
  `autor_wpisu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
