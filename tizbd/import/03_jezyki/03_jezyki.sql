-- LOAD DATA INFILE 'ścieżka_do_pliku'
-- INTO TABLE tabela
-- FIELDS TERMINATED BY  '\t'
-- LINES TERMINATEAD BY '\r\n'
-- (column1, @var1)
-- SET column2 = @var1/100;

 

-- W plikach panstwa.txt, jezyki.txt i uzytkownicy.txt zawarte są informacje o 40 największych państwach świata, językach świata i ich użytkownikach. Pierwszy wiersz w każdym z plików jest wierszem nagłówkowym i zawiera nazwy pól. Dane w każdym wierszu oddzielone są znakami tabulacji.

-- W pliku panstwa.txt każdy wiersz zawiera informacje o państwach:

-- Panstwo – nazwa państwa
-- Kontynent – kontynent, na którym leży stolica państwa
-- Populacja – całkowita liczba mieszkańców podana w milionach, z dokładnością do jednego miejsca po przecinku.

-- Przykład:

-- Panstwo    Kontynent Populacja
-- Afganistan Azja      32,5
-- Algieria   Afryka    39,7
-- Argentyna  Ameryka Poludniowa 43,4
-- W pliku jezyki.txt każdy wiersz pliku zawiera informacje o danym języku:

-- Jezyk – nazwa języka
-- Rodzina – przynależność języka do rodziny językowej lub określenie „jezyk izolowany”, jeśli języka nie da się przypisać do żadnej ze znanych rodzin językowych.

-- Przykład:

-- Jezyk      Rodzina
-- aceh       austronezyjska
-- acholi     nilo-saharyjska
-- adhola     nilo-saharyjska
-- adi        sino-tybetanska
-- adygejski  abchasko-adygijska
-- W pliku uzytkownicy.txt każdy wiersz zawiera informacje o użytkownikach danego języka:

-- Panstwo – nazwa państwa
-- Jezyk – nazwa języka
-- Uzytkownicy – liczba posługujących się danym językiem mieszkańców tego państwa podana w milionach, z dokładnością do jednego miejsca po przecinku
-- Urzedowy – informacja (tak/nie), czy jest to w danym państwie język urzędowy

-- Przykład:

-- Panstwo Jezyk          Uzytkownicy  Urzedowy
-- Chiny   mandarynski    1212,0       tak
-- Indie   hindi          422,0        tak
-- USA     angielski      255,0        tak
-- Brazylia   portugalski 202,0        tak
-- Bangladesz bengalski   157,9        tak
-- Uwaga: w jednym państwie może być kilka języków urzędowych. Dany język może być językiem urzędowym w jednym państwie, a w innym – nie. Mieszkaniec państwa może posługiwać się jednym lub wieloma językami.

 

-- 1. Utwórz potrzebne tabele. Określ właściwe typy (w tym użyj dokładnego typu dla danych liczbowych) i dodaj klucze podstawowe.

CREATE TABLE panstwa(
    Panstwo varchar(255) PRIMARY KEY,
    Kontynent varchar(255),
    Populacja decimal(5,1)
); 

CREATE TABLE jezyki(
    jezyk varchar(255) PRIMARY KEY,
    Rodzina varchar(255) 
);

CREATE TABLE uzytkownicy(
    panstwo varchar(255),
    jezyk varchar(255),
    uzytkownicy decimal(5,1),
    Urzedowy char(3),
    PRIMARY KEY(panstwo,jezyk)
);

ALTER TABLE uzytkownicy
ADD FOREIGN KEY(panstwo) references panstwa(panstwo),
ADD FOREIGN KEY(jezyk) references jezyki(jezyk);
-- 2. Zaimportuj dane z plików korzystając z wiersza poleceń.
LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\03_jezyki\\jezyki.txt'
INTO TABLE jezyki
FIELDS TERMINATED BY  '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\03_jezyki\\panstwa.txt'
INTO TABLE panstwa
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(panstwo, kontynent, @var1)
SET Populacja = replace(@var1, ',', '.');

LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\03_jezyki\\uzytkownicy.txt'
INTO TABLE uzytkownicy
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(panstwo, jezyk, @var1, urzedowy)
SET uzytkownicy = replace(@var1, ',', '.');

-- 3. Z bazy Teryt Głównego Urzędu Statystycznego pobierz, a następnie utwórz tabele i zaimportuj z poziomu wiersza poleceń bazy:

 

-- A. Jednostki podziału terytorialnego (TERC), 
-- B. Miejscowości (SIMC) 
-- C. Ulice (ULIC)
-- 4. Wyczyść tabele za pomocą polecenia delete from. Sprawdź w jakim czasie zostało wykonane zapytanie.

-- 5. Z poziomu phpMyAdmin zaimportuj dane do wyczyszczonych tabel. Czy i jaka jest różnica między CSV a CSV using LOAD DATA? Sprawdź.

-- 6. Z poziomu wiersza poleceń wyczyść dane.w tabelach używając polecenia truncate

 