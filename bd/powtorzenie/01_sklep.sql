-- Utwórz tabele:

-- Producenci
--  kod całkowity, klucz podstawowy, autoinkrementacja
-- nazwa  tekst, pole nie może być puste
 CREATE TABLE Producenci(
    kod INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(255) NOT NULL
 );
-- Produkty
-- kod całkowite, klucz podstawowy,  autoinkrementacja
-- nazwa tekst, pole nie może puste
-- cena dwa miejsca po przecinku, przed przecinkiem 5 cyfr
-- producent całkowite, klucz obcy odwołujący się do pola kod w tabeli producenci
CREATE TABLE Produkty(
    kod INT PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(255) NOT NULL,
    cena dec(7,2),
    producent int,
    Foreign KEY(producent) REFERENCES producenci(kod)
);
-- 1. Wyświetl nazwy wszystkich produktów|
SELECT nazwa FROM Produkty;

-- 2. Wyświetl nazwy i ceny wszystkich produktów w sklepie 
SELECT nazwa,cena FROM Produkty;

-- 3. Wyświetl nazwy produktów o cenie mniejszej lub równiej  $200.
SELECT nazwa 
FROM Produkty
WHERE cena<=200;

-- 4. Wyświetl wszystkie produkty o cenie pomiędzy $60 i $120.
SELECT nazwa
FROM produkty
WHERE cena BETWEEN 60 AND 120;
-- 5. Wyświetl nazwy produktów i ceny w centach (tzn. pomnóż ceny przez 100) 
SELECT nazwa,cena*100 AS w_centach 
FROM produkty; 
-- 6. Wyświetl średnią cenę wszystkich produktów 
SELECT AVG(cena)
 FROM Produkty;
-- 7. Wyświetl średną ceną wszystkich produktów producenta o kodzie 2 
SELECT AVG(cena)
from produkty
where producent=2;
-- 8. Ile jest produktów o cenie większej lub równiej $180.
SELECT COUNT(cena)
FROM produkty
WHERE cena>=180;
-- 9. Wyświetl nazwy i ceny wszystkich produktów o cenie większej lub równej  $180, i posortuj je najpierw według ceny (rosnąco), a następnie według nazwy (malejąco) 
SELECT nazwa,cena
FROM produkty
WHERE cena>=180
ORDER BY cena,nazwa DESC;
-- 10. Wyświetl wszystkie dane z z tabeli produkty oraz wszystkie dane z tabeli producenci 

SELECT *
FROM Produkty
    INNER JOIN Producenci ON Produkty.producent=Producenci.kod;

-- 11. Wyświetl nazwę produktu, cenę i nazwę producenta dla wszystkich produktów 

SELECT Produkty.nazwa,Produkty.cena,Producenci.nazwa
FROM Produkty
    INNER JOIN Producenci ON Produkty.producent=Producenci.kod;

-- 12. Wyświetl średnią cenę produktów każdego producenta, pokazując tylko kod producenta

SELECT AVG(cena), producent 
FROM Produkty
GROUP BY producent;

-- 13. Wyświetl średnią cenę produktów każdego producenta, pokazując nazwę producenta 

-- 14. Wyświetl nazwę każdego producenta, którego produkty mają średnią cenę większą lub równą $150

-- 15. Wyświetl nazwę i cenę najtańszego produktu  (LIMIT lub podzapytanie)

-- 16.Wyświetl nazwę każdego producenta razem z nazwą i ceną jego najdroższego produktu 

-- 17. Dodaj nowy produkt:  Loudspeakers, $70, producent 2.

-- 18. Zmień nazwę produktu o kodzie 8 na "Laser Printer".

-- 19. Wykonaj 10% przecenę każdego produktu 

-- 20. Wykonaj 10% przecenę każdego produktu o cenie większej lub równiej $120.

