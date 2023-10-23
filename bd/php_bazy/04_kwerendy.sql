--  Zapytanie 1: wstawiające do tabeli czytelnicy nowy rekord z danymi: Anna, Michalak, an05mi
INSERT INTO czytelnicy (imie, nazwisko, kod) VALUES ('Anna', 'Michalak', 'an05mi');
-- - Zapytanie 2: wybierające jedynie pola imie i nazwisko dla wszystkich rekordów w tabeli czytelnicy
SELECT imie, nazwisko
FROM czytelnicy;
-- - Zapytanie 3: wybierające jedynie pole tytul dla wszystkich utworów, których autorem jest Fredro

SELECT tytul FROM ksiazki 
INNER JOIN autorzy ON ksiazki.id_autor=autorzy.id
WHERE nazwisko='Fredro';

-- - Zapytanie 4: wybierające jedynie pole nazwisko dla wszystkich rekordów w tabeli autorzy oraz obliczające ilość tytułów danego autora znajdujących się w bazie biblioteka. Pole obliczające ilość tytułów należy nazwać ilosc.

SELECT nazwisko, COUNT(tytul)as ilosc FROM autorzy
LEFT JOIN ksiazki ON autorzy.id=ksiazki.id_autor
GROUP by nazwisko;