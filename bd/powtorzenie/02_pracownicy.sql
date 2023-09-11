-- Tworzenie tabel

-- Utwórz tabelę Dzialy z polami:
--  kod całkowite, klucz podstawowy 
--  nazwa typ tekstowy
--  budzet rzeczywisty (real)
CREATE TABLE Dzialy(
    kod INT PRIMARY KEY,
    nazwa varchar(255),
    budzet FLOAT
);

-- Utwórz tabelę Pracownicy z polami:
--  ID całkowite, klucz podstawowy
--  imie tekst, nie może być puste
--  nazwisko tekst, nie może być puste
--  dzial całkowite, jest to również pole klucza obcego, odwołujące się do pola kod w tabeli Działy
CREATE TABLE Pracownicy(
    ID INT Primary key,
    imie varchar(255) NOT NULL,
    nazwisko varchar(255) NOT NULL,
    dzial int,
    Foreign key(dzial) REFERENCES dzialy(kod)
);

-- Wykonaj kod dołączający dane:



--  1. Wyświetl nazwiska wszystkich pracowników
SELECT nazwisko
FROM pracownicy;

-- 2. Wyświetl nazwiska wszystkich pracowników, ale tak, aby się nie powtarzały (DISTINCT) 
SELECT DISTINCT nazwisko
FROM pracownicy;

-- 3. Wyświetl dane wszystkich pracowników o nazwisku  "Smith".   
SELECT *
FROM pracownicy
WHERE nazwisko="Smith";

-- 4. Wyświetl wszystkie dane pracowników o nazwisku  "Smith" lub "Doe".
SELECT *
FROM pracownicy
WHERE nazwisko="Smith" or nazwisko = 'Doe';
-- 5. Wyświetl wszystkie dane o pracownikach, którzy pracują w dziale 14.
SELECT *
FROM pracownicy
WHERE dzial = 14;

-- 6. Wyświetl wszystkie dane o pracownikach z działu 37 i działu 77. 

SELECT *
FROM pracownicy
WHERE dzial IN(37,77);

-- 7. Wyświetl wszystkie dane o pracownikach, których nazwisko zaczyna się na literę  "S".

SELECT *
FROM pracownicy
WHERE nazwisko LIKE 'S%';

-- 8. Wyświetl sumę budżetów wszystkich działów. 
SELECT SUM(budzet)
FROM dzialy;
-- 9. Dla każdego działu wyświetl liczbę pracowników (tylko kod działu i liczbę pracowników) 
SELECT dzial, COUNT(*)
FROM pracownicy
GROUP BY dzial;
-- 10. Wyświetl wszystkie dane o pracownikach, łącznie z danymi o działach, w których pracują. 
SELECT *
FROM pracownicy
INNER JOIN dzialy ON pracownicy.dzial=dzialy.kod;
-- 11. Wyświetl imię i nazwisko każdego pracownika razem z nazwą i budżetem działu, w którym pracownik pracuje. 
SELECT imie,nazwisko,Dzialy.nazwa,Dzialy.budzet
FROM pracownicy 
INNER JOIN dzialy ON pracownicy.dzial = dzialy.kod;

-- 12. Wyświetl imiona i nazwiska pracowników, którzy pracują w działach o budżetach większych niż  $60,000 (czyli sześćdziesiąt tysięcy)
SELECT imie, nazwisko 
FROM pracownicy 
INNER JOIN dzialy ON pracownicy.dzial= dzialy.kod
WHERE budzet>60000;
-- 13. Wyświetl działy z budżetem większym niż średni budżet wszystkich działów. 
SELECT nazwa
FROM dzialy
WHERE budzet >  (select AVG(budzet) FROM dzialy);

-- 14. Wyświetl nazwy działów z więcej niż dwoma pracownikami 
SELECT nazwa, COUNT(*) 
FROM dzialy INNER JOIN pracownicy ON pracownicy.dzial=dzialy.kod
GROUP BY dzial
HAVING COUNT(*)>2;
-- 15. Wyświetl imiona i nazwiska pracowników, pracujących w działach (dziale) z najmniejszym budżetem.
SELECT imie,nazwisko
from pracownicy
inner join dzialy on pracownicy.dzial=dzialy.kod
where budzet=(SELECT MIN(budzet)from dzialy);
-- 16. Dodaj nowy dział  "Quality Assurance" z budżetem $40,000 i kodem 10. 
INSERT INTO dzialy
(kod,nazwa,budzet)
VALUES
(10,"Quality Assurance",40000);
-- 17. Dodaj pracownika "Mary Moore", pracującą w dziale o kodzie 10, z ID 847-21-9811.

-- 18. Zmniejsz budżet wszystkich działów o 10%.

-- 19. przenieś pracowników z działu Research  do działu IT  .

-- 20. Usuń wszystkich pracowników pracujących w dziale   IT.

-- 21. Usuń wszystkich pracowników, którzy pracują w działach z budżetem większym bądź równym $60,000 (60 tysięcy)

-- 22. Usuń wszystkich pracowników