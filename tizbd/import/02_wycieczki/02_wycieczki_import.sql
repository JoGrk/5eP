-- Import danych z pliku
-- LOAD DATA LOCAL INFILE 'abc.csv' INTO TABLE abc
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'IGNORE 1 LINES
-- (col1, col2, col3, col4, col5...);
 
-- Eksport danych z tabeli do pliku
-- SELECT code, name, continent FROM country 
-- INTO OUTFILE 'e:/country.csv' 
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"' 
-- LINES TERMINATED BY '\n';
 
 
-- 1. Utwórz bazę danych wycieczki_inicjały
CREATE DATABASE 5eP_wycieczki;
use 5eP_wycieczki;
-- 2. Utwórz tabelę osoby
-- id_osoby całkowity, klucz podstawowy
-- imie tekst
-- nazwisko tekst
CREATE TABLE osoby(
    id_osoby INT PRIMARY KEY AUTO_INCREMENT,
    imie varchar(255),
    nazwisko varchar(255) 
);

-- 3. Utwórz tabelę wycieczki
-- id_wycieczki całkowity, klucz podstawowy
-- kraj tekst
-- miejsce tekst
-- wylot tekst
-- data_od data
-- data_do data
-- cena całkowita, dane powinny być większe od zera
CREATE TABLE wycieczki(
    id_wycieczki INT PRIMARY KEY AUTO_INCREMENT,
    kraj varchar(255),
    miejsce varchar(255),
    wylot varchar(255),
    data_od date,
    data_do date,
    cena INT check (cena>0)
);



-- 4, Utwórz tabelę rezerwacje 
-- id_rezerwacji całkowity, klucz podstawowy
-- id_osoby całkowity
-- id_wycieczki całkowity
-- dorośli całkowity
-- dzieci całkowity
CREATE TABLE rezerwacje(
    id_rezerwacji INT PRIMARY KEY AUTO_INCREMENT,
    id_osoby INT,
    id_wycieczki INT,
    dorosli INT,
    dzieci INT
);
-- 5. 
-- A. Z wiersza poleceń zaimportuj do tabeli osoby dane z pliku osoby.txt (oddzielone tabulatorem, zignoruj pierwszy wiersz zawierający nazwy pól)
LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\02_wycieczki\\osoby.txt'
INTO TABLE osoby
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


-- B. Z wiersza poleceń zaimportuj do tabeli wycieczki dane z pliku wycieczki.txt (oddzielone tabulatorem, zignoruj pierwszy wiersz zawierający nazwy pól)
LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\02_wycieczki\\wycieczki.txt'
INTO TABLE wycieczki
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- C. Z wiersza poleceń zaimportuj do tabeli rezerwacje dane z pliku rezerwacje.txt (oddzielone tabulatorem, zignoruj pierwszy wiersz zawierający nazwy pól)
 LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\02_wycieczki\\rezerwacje.txt'
INTO TABLE rezerwacje
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- 6.

-- SELECT code, name, continent FROM country 
-- INTO OUTFILE 'e:/country.csv' 
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"' 
-- LINES TERMINATED BY '\n';

-- A. Z wiersza poleceń wyeksportuj dane z tabeli osoby do pliku osoby_inicjały.csv. Pola powinny być oddzielone średnikiem, teksty ujęte w cudzysłów, znak kończący linie '\n'. Pokaż na zrzucie także początek zawartości pliku. Sprawdź wygląd w systemowym notatniku i dowolnym innym programie do edycji plików tekstowych (Notepad+, Sublime, Brackets)

SELECT * FROM osoby
INTO OUTFILE 'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\02_wycieczki\\osoby_5ep.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY "\n";




-- B. Z wiersza poleceń wyeksportuj dane z tabeli wycieczki (tylko kraj, miejsce i wylot) do pliku wycieczki_inicjały.csv. Pola powinny być oddzielone średnikiem, teksty ujęte w cudzysłów, znak kończący linie '\r\n'. Pokaż na zrzucie także początek zawartości pliku. Sprawdź wygląd w systemowym notatniku i dowolnym innym programie do edycji plików tekstowych 
SELECT kraj,miejsce,wylot FROM wycieczki
INTO OUTFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\02_wycieczki\\wycieczki_5eP.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
