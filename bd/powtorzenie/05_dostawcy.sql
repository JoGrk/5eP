-- Utwórz tabele:

-- Produkty
-- Kod całkowite, autnumerowanie, klucz podstawowy
-- Nazwa tekst do 40 znaków
 
CREATE TABLE Produkty(
kod INT PRIMARY KEY AUTO_INCREMENT,
nazwa VARCHAR(40)
);

-- Dostawcy
-- Kod tekst, 4 znaki, klucz podstawowy
-- Nazwa tekst do 40 znaków
 
CREATE TABLE Dostawcy(
kod CHAR(4) PRIMARY KEY,
nazwa VARCHAR(40)
);
 

-- Oferty
-- Produkt całkowite
-- Dostawca tekst, 4 znaki
-- Cena całkowita
-- Klucz podstawowy na polach produkt i dostawca
-- produkt klucz obcy, odwołuje się do pola Kod w tabeli Produkty
-- Dostawca klucz obcy, odwołuje się do pola Kod w tabeli Dostawcy
CREATE TABLE Oferty(
produkt INT,
Dostawca CHAR(4),
cena INT,
PRIMARY KEY (produkt,Dostawca),
FOREIGN KEY (produkt) REFERENCES Produkty(kod),
FOREIGN KEY (Dostawca) REFERENCES Dostawcy(kod)
);




INSERT INTO Dostawcy(Kod, Nazwa) VALUES('HAL','Clarke Enterprises');
INSERT INTO Dostawcy(Kod, Nazwa) VALUES('RBT','Susan Calvin Corp.');
INSERT INTO Dostawcy(Kod, Nazwa) VALUES('TNBC','Skellington Supplies');

INSERT INTO Produkty(Kod, Nazwa) VALUES(1,'Sprocket');
INSERT INTO  Produkty(Kod, Nazwa) VALUES(2,'Screw');
INSERT INTO  Produkty(Kod, Nazwa) VALUES(3,'Nut');
INSERT INTO  Produkty(Kod, Nazwa) VALUES(4,'Bolt');

INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(1,'HAL',10);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(1,'RBT',15);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(2,'HAL',20);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(2,'RBT',15);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(2,'TNBC',14);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(3,'RBT',50);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(3,'TNBC',45);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(4,'HAL',5);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(4,'RBT',7);
INSERT INTO Oferty(Produkt, Dostawca, Cena) VALUES(3, 'HAL', 50);
 

 

 

-- 1. Wyświetl nazwy wszystkich produktów
SELECT nazwa
from produkty;

-- 2. Wyświetl wszystkie dane dostawców
SELECT *
FROM Dostawcy;
-- 3. Dla każdego produktu wyświetl średnią cenę (pokaż kod produktu i średnią ceną, zmień nazwy wyświetlanych kolumn na kod_produktu i srednia_cena)
SELECT produkt AS kod_produktu,AVG(cena) AS srednia_cena
FROM oferty
GROUP BY kod_produktu;

-- 4. Wyświetl nazwy wszystkich Dostawców oferujących produkt o kodzie 1
SELECT nazwa
FROM dostawcy
INNER JOIN Oferty ON Dostawcy.kod = Oferty.dostawca
WHERE Produkt = 1; 

-- 5. Wyświetl nazwy wszystkich produktów oferowanych przez dostawcę o kodzie 'HAL'

SELECT nazwa
FROM produkty INNER JOIN oferty ON produkty.kod=oferty.produkt
WHERE dostawca = 'HAL'

-- 6. Dla każdego produktu wyświetl najdroższą ofertę dostawy, pokaż nazwę produktu, nazwę dostawcy oraz cenę (zauważ, że może być więcej niż jeden dostawca oferujący produkty w tej samej, najdroższej cenie).
SELECT produkty.nazwa,dostawcy.nazwa,oferty.cena
FROM oferty
    INNER JOIN produkty
    ON produkty.kod = oferty.produkt
    INNER JOIN dostawcy
    ON dostawcy.kod = oferty.dostawca
WHERE cena = (SELECT MAX(cena) 
                FROM Oferty AS O 
                WHERE oferty.produkt = O.produkt);

 

-- Wybierz nazwy produktów, nazwy dostawców i ceny o cenach równych

-- w podzapytaniu wybierz najwyższe ceny z tabeli Oferty dla produktów o kodzie z tabeli Oferty równym kodowi aktualnie sprawdzanego produktu (podzapytania skorelowane)

 

 

 

-- 7. Dodaj Ofertę produktu o kodzie 1 dostawcy "Skellington Supplies"  o cenie 7.
 INSERT INTO Oferty 
 VALUES 
 (1,( SELECT kod FROM dostawcy WHERE NAZWA = 'Skellington Supplies'),7);
 

-- 8. Podnieś cenę wszystkich produktów o 1
UPDATE oferty
SET cena=cena+1;

-- 9. Producent  "Susan Calvin Corp." nie będzie dostarczał już wkrętów  (bolt). Usuń właściwy wiersz z tabeli Oferty.
DELETE FROM Oferty
WHERE dostawca = (SELECT kod FROM dostawcy WHERE nazwa = "Susan Calvin Corp") AND produkt = (SELECT kod FROM produkty WHERE nazwa = "bolt");

-- 10. Usuń z bazy dostawcę o kodzie "RBT"
DELETE FROM oferty 
WHERE dostawca='RBT';
DELETE FROM dostawcy 
WHERE kod='RBT';
-- 11. Usuwamy z oferty (tabela Oferty) nakrętki (nut). Właściwy kod produktu wyszukaj podzapytaniem.

DELETE FROM Oferty 
WHERE produkt = (SELECT kod FROM produkty WHERE nazwa = 'nut');
