-- W następujących plikach zgromadzono dane o zawodach rozgrywanych w ramach Pucharu Świata w skokach narciarskich w sezonach od 2000/2001 do 2009/2010. 

-- W pliku zawodnicy.txt każdy wiersz zawiera informacje o zawodniku: id_zawodnika, nazwisko_i_imie, panstwo.

-- Przykład:

-- 7;AREN Andreas;Szwecja
-- W pliku zawody.txt są zawarte informacje o rozegranych zawodach : id_zawodow, data, nazwa_skoczni, sezon.

-- Przykład:

-- 22;2001-11-23;Kuopio;2001/2002
-- W pliku puchar.txt każdy wiersz zawiera informacje o wyniku skoczka w zawodach: id, miejsce, id_zawodnika, wynik_I_serii, wynik_II_serii, nota,id_zawodow.

-- Przykład:

-- 31;2;108;117,0;0,0;110,6;2


-- 1. Utwórz bazę danych puchar_imie_nazwisko

CREATE DATABASE 5eP_puchar;
USE 5eP_puchar;

-- 2. Za pomocą polecenia sql utwórz tabelę puchar (tabela ma pasować do pliku o tej nazwie)
CREATE TABLE puchar(
    id int PRIMARY KEY AUTO_INCREMENT,
    miejsce tinyint,
    id_zawodnika int,
    wynik_I_serii dec(5,2),
    wynik_II_serii dec(5,2),
    nota dec(5,2),
    id_zawodow int
);



-- 3. Z poziomu wiersza poleceń zaimportuj dane do tabeli puchar
LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\05_puchar\\puchar.txt'
INTO TABLE puchar
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES 
(id,miejsce,id_zawodnika,@wynik1,@wynik2,@n,id_zawodow)
SET wynik_I_serii= REPLACE(@wynik1,',','.'),
wynik_II_serii=REPLACE(@wynik2,',','.'),
nota=REPLACE(@n,',','.');
-- 4.  zaimportuj tabelę zawodnicy z poziomu phpMyAdmin 

-- 5.  Z poziomu wiersza poleceń wyeksportuj z tabeli zawodnicy nazwisko_i_imie oraz panstwo do pliku zawodnicy.csv, dane oddziel tabulatorem. Na zrzucie pokaż też początek zawartości pliku zwodnicy.csv (otwórz w notatniku lub podobnym programie)

-- 6. Wykonaj zrzut bazy danych (gorącą kopię logiczną)  do pliku puchar_imie_nazwisko.sql

-- 7. Do pliku zawodnicy.sql wykonaj zrzut tabeli zawodnicy (z poziomu wiersza poleceń)

-- 8. Usuń bazę danych puchar_imie_nazwisko. 

-- 9. Z poziomu wiersza poleceń za pomocą przekierowania odtwórz bazę danych (przekieruj plik z kopią bazy danych)



-- dołącz: zrzuty poleceń (uwierzytelnione), pliki zrzutu bazy danych,zawodnicy.csv i zawodnicy.sql

