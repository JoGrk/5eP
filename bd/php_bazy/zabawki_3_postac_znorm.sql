# Tabela sklep_informacje
# ------------------------------------------------------------

CREATE TABLE `sklep_informacje` (
  `id_sklepu` int(11) NOT NULL auto_increment,
  `adres_sklepu` varchar(50) NOT NULL,
  `telefon` varchar(10) NOT NULL,
  `kierownik` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_sklepu`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `sklep_informacje` (`id_sklepu`,`adres_sklepu`,`telefon`,`kierownik`) VALUES ('1','ul. Klonowa 12','32 5729384','Janek');
INSERT INTO `sklep_informacje` (`id_sklepu`,`adres_sklepu`,`telefon`,`kierownik`) VALUES ('2','al. Bursztynowa 3','12 8439848','Zuzanna');
INSERT INTO `sklep_informacje` (`id_sklepu`,`adres_sklepu`,`telefon`,`kierownik`) VALUES ('3','Bulwar Zachodni 222','22 6635535','Tamara');
INSERT INTO `sklep_informacje` (`id_sklepu`,`adres_sklepu`,`telefon`,`kierownik`) VALUES ('4','ul. Zwycięstwa 167','18 0985728','Grzesiek');


# Tabela sklep_magazyn
# ------------------------------------------------------------

CREATE TABLE `sklep_magazyn` (
  `id_zabawki` int(11) NOT NULL,
  `id_sklepu` int(11) NOT NULL,
  `stan_magazynu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('5','1','34');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('5','3','12');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('5','1','5');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('6','2','10');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('6','4','24');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('9','1','50');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('9','2','2');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('9','2','18');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('12','4','28');
INSERT INTO `sklep_magazyn` (`id_zabawki`,`id_sklepu`,`stan_magazynu`) VALUES ('12','4','11');


# Dump of table toy_info
# ------------------------------------------------------------

CREATE TABLE `zabawka_informacje` (
  `id_zabawki` int(11) NOT NULL,
  `zabawka` varchar(30) default NULL,
  `kolor` varchar(30) NOT NULL,
  `cena` decimal(5,2) default NULL,
  `waga` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('1','piłka plażowa','biały','4.90','0.3');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('2','piłka plażowa','żółty','6.20','0.4');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('3','piłka plażowa','niebieski','4.90','0.3');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('4','ringo','zielony','7.75','0.5');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('5','ringo','żółty','3.10','0.2');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('6','latawiec','czerwony','15.50','1.2');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('7','latawiec','niebieski','15.50','1.2');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('8','latawiec','zielony','10.50','0.8');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('9','jo-jo','biały','11.25','0.4');
INSERT INTO `zabawka_informacje` (`id_zabawki`,`zabawka`,`kolor`,`cena`,`waga`) VALUES ('10','jo-jo','żółty','3.10','0.2');


