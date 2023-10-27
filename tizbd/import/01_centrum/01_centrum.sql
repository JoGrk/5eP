-- LOAD DATA LOCAL INFILE 'abc.csv' 
-- INTO TABLE abc 
-- FIELDS TERMINATED BY',' 
-- LINES TERMINATED BY'\r\n' 
-- IGNORE 1 LINES 
-- (col1, col2, col3, col4, col5...);

-- 1. Zaimportuj dane dotyczące komputerów (tylko plik komputery.txt). Z poziomu wiersza poleceń sprawdź, czy przy imporcie do nowej tabeli, ta tabela zostanie utworzona. Pokaż efekt na zrzucie. Jeśli się nie uda, zrób to z poziomu phpMyAdmin. Dodaj klucz do tabeli. Pokaż strukturę tabeli oraz pierwsze 10 rekordów danych.

LOAD DATA LOCAL INFILE 'C:\xampp\htdocs\5eP\tizbd\import\01_centrum\komputery.txt'
INTO TABLE komputery
FIELDS TERMINATED BY'\t' 
LINES TERMINATED BY'\r\n'; 

ALTER TABLE komputery_txt   
RENAME komputery;

ALTER TABLE komputery
ADD PRIMARY KEY (numer_komputera);


-- 2. Zaimportuj dane dotyczące awarii (tylko plik awarie.txt).  Dodaj klucz do tabeli. Pokaż strukturę tabeli oraz pierwsze 10 rekordów danych. 
ALTER TABLE awarie_txt RENAME awarie;
ALTER TABLE awarie ADD PRIMARY KEY(Numer_zgloszenia);
-- 3.  Zaimportuj dane dotyczące napraw (tylko plik naprawy.txt). Dodaj klucz do tabeli. 
 ALTER TABLE naprawy_txt
    -> RENAME naprawy;
-- 4. Z poziomu wiersza poleceń zaimportuj dane z pliku kumputery2.txt do tabeli komputery

-- 5. Z poziomu wiersza poleceń zaimportuj dane z pliku awarie2.txt do tabeli awarie

-- 6. Z poziomu wiersza poleceń zaimportuj dane z pliku naprawy2.txt do tabeli naprawy


