-- GRANT ALL ON mydb.* TO 'someuser'@'somehost';

-- GRANT SELECT, INSERT ON mydb.* TO 'someuser'@'somehost';
-- REVOKE INSERT ON *.* FROM 'jeffrey'@'localhost';
-- Baza Komis 

-- Uwaga: grupa pierwsza do nazw użytkowników dopisuje na końcu 1, np. Kasia1, grupa druga dopisuje 2, np. Kasia2

-- SET PASSWORD [FOR user] auth_option
--   [REPLACE 'current_auth_string'] [RETAIN CURRENT PASSWORD] 
--   auth_option: { = 'auth_string' | TO RANDOM }
 
-- 1. Dodaj użytkowników:
-- A. Kasia, odpowiadająca za wprowadzanie danych o klientach, hasło zaq1@WSX
CREATE USER 'Kasia'@'localhost'
IDENTIFIED BY '1234';
-- B. Jan - głównego mechanika wpisującego informacje o naprawach, hasło zaq1@WSX
CREATE USER 'Jan'@'localhost'
IDENTIFIED BY '1234';
-- C. Kasjer - odpowiedzialnych za wystawianie rachunków, ale nie mogących wprowadzać zmian do bazy, hasło zaq1@WSX
CREATE USER 'Kasjer'@'localhost'
IDENTIFIED BY '1234';
-- 2. Utwórz perspektywę KlienciKoszty (nazwa, adres, kwota, data_wpisu z tabeli rejestry pod nazwą data_rejestru) łączącą dane z tabel Klienci i Rejestry, która będzie potrzebna kasjerowi do pracy
 CREATE VIEW KlienciKoszty AS
 SELECT nazwa, adres, kwota, rejestry.data_wpisu AS data_rejestru
 FROM klienci INNER JOIN rejestry ON klienci.id = rejestry.klient;
-- 3. Ustal minimalny zestaw uprawnień dla utworzonych użytkowników, kierując się zasadą "im mniejsze uprawnienia, tym mniej można zepsuć"
-- A. Kasia, wszystkie prawa do tabeli Klienci
GRANT ALL ON Komis.Klienci TO Kasia;
-- B. Jan - prawa do modyfikacji, dodawania i usuwania  dla tabel operacje i rejestry oraz wyszukiwania dla wszystkich tabel w bazie
GRANT UPDATE,INSERT,DELETE ON Komis.operacje TO "Jan";
GRANT UPDATE,INSERT,DELETE ON Komis.rejestry TO "Jan";
GRANT SELECT ON Komis.* TO "Jan";
-- C. Kasjer - prawa do przeszukiwania perspektywy KlienciKoszty
 GRANT SELECT ON Komis.KlienciKoszty TO "Kasjer";
-- 4. Utwórz nowego użytkownika uczendba z hasłem dostępu zaq1@WSX 
CREATE USER 'uczendba'@'localhost'
IDENTIFIED BY '1234';
-- A. przypisz mu wszystkie uprawnienia do tabel Klienci i Handlowcy.
GRANT ALL ON Komis.Klienci TO 'uczendba';
GRANT ALL ON Komis.Handlowcy TO 'uczendba';
-- B. zabroń mu usuwania rekordów z tabeli Klienci 
    REVOKE DELETE ON Komis.Klienci FROM 'uczendba';
-- C. odbierz uprawnienia wykonywania zapytań usuwania rekordów i modyfikowania wartości w tabeli Handlowcy
REVOKE DELETE,UPDATE ON komis.handlowcy FROM 'uczendba';

-- 5. Utwórz użytkowników jeden i dwa (bez hasła).

CREATE USER 'jeden'@'localhost';
CREATE USER 'dwa'@'localhost';

--  A. Nadaj uprawnienia wprowadzania, zmiany i usuwania danych w całej bazie komis dla użytkownika jeden
GRANT INSERT,UPDATE,DELETE ON komis.* TO 'jeden';
-- B. nadaj wszystkie uprawnienia do tabeli Auta użytkownikowi dwa
GRANT ALL ON komis.auta TO 'dwa';
-- C. odbierz użytkownikowi jeden prawa usuwania danych 
REVOKE DELETE ON komis.* FROM 'jeden';
-- D. odbierz wszystkie uprawnienia użytkownikowi dwa do tabeli Auta
REVOKE ALL ON komis.auta FROM 'dwa';
-- 6. 
-- A. Zaloguj się jako użytkownik jeden i ustaw hasło 'zaq1@WSX'
set password = password('1234');
-- B. Ustaw hasło dla użytkownika dwa na 'zaq1@WSX'
set password = password('zaq1@WSX');
-- C. z poziomu konta root zmień hasło dla użytkownika jeden na 'haslo'
set password for 'jeden' = password('haslo')