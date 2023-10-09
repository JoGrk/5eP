-- Zapytanie 1: wstawiające do tabeli filmy jeden rekord o danych: film „Suburbicon” z roku 2017, gatunek filmu to komedia, ocena jest równa 5
INSERT INTO filmy (gatunki_id,id,ocena,tytul,rok) VALUES (5,10000,5,'Suburbicon',2017);

-- Zapytanie 2: wybierające jedynie pole tytul z tabeli filmy oraz odpowiadające mu pole nazwa z tabeli gatunki dla filmów, dla których pole ocena ma wartość 6. Należy posłużyć się relacją
SELECT tytul,nazwa
FROM filmy
INNER JOIN  gatunki ON filmy.gatunki_id = gatunki.id
WHERE ocena=6;
-- Zapytanie 3: wybierające jedynie pola tytul oraz rok z tabeli filmy tylko dla gatunku dramatów o ocenie równej 5
SELECT tytul, rok FROM filmy INNER JOIN gatunki ON filmy.gatunki_id = gatunki.id WHERE nazwa = 'dramat' AND ocena = 5;

-- -- Zapytanie 4: tworzące tabelę o nazwie aktorzy i polach id typu numerycznego, imie typu tekstowego, nazwisko typu tekstowego. Pole id nie może przyjmować wartości NULL
CREATE TABLE aktorzy( id int NOT null, imie varchar(255), nazwisko varchar(255) );

-- E.14-03-19.01
-- Zapytanie 1: wybierające jedynie pola tytul, rok oraz ocena z tabeli filmy tylko dla gatunku komedii
SELECT tytul, rok, ocena 
FROM filmy 
INNER JOIN gatunki ON gatunki.id=filmy.gatunki_id 
WHERE nazwa='komedia';
-- Zapytanie 2: wybierające jedynie pola id i tytul z tabeli filmy oraz odpowiadające im pola imie i nazwisko z tabeli rezyserzy. Należy posłużyć się relacją
SELECT filmy.id, tytul, imie, nazwisko
FROM filmy
INNER JOIN rezyserzy ON filmy.rezyserzy_id=rezyserzy.id;
-- Zapytanie 3: wybierające jedynie pola id oraz tytul z tabeli filmy tylko dla filmów z roku 2017, dla których wartość wynosi 6
SELECT filmy.id, tytul
FROM filmy
WHERE rok = 2017 AND ocena = 6;
-- Zapytanie 4: zmieniające dane w tabeli rezyserzy. Pole imie w rekordzie o id równym 8 ma nowe brzmienie „Francis Ford”

UPDATE rezyserzy SET imie = 'Francis Ford' WHERE id = 8;

-- E.14-05-19.01
-- Zapytanie 1: wybierające jedynie pola nazwa oraz potoczna z tabeli grzyby jedynie dla grzybów jadalnych
SELECT nazwa, potoczna 
FROM grzyby 
WHERE JADALNY=1;

-- Zapytanie 2: wybierające jedynie pola nazwa i potoczna z tabeli grzyby oraz odpowiadające im potoczna nazwa z tabeli rodzina jedynie dla grzybów, do których przypisana jest potrawa sos
SELECT grzyby.nazwa, potoczna, rodzina.nazwa 
FROM grzyby 
INNER JOIN rodzina ON rodzina.id=grzyby.rodzina_id
INNER JOIN potrawy ON potrawy.id=grzyby.potrawy_id
WHERE potrawy.nazwa='sos';
-- Zapytanie 3: wybierające jedynie pola nazwa_pliku oraz potoczna z tabeli grzyby
-- Zapytanie 4: dodające do tabeli rodzina pole opis typu tekstowego
ALTER TABLE rodzina 
ADD opis varchar(255);
 