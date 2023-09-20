

-- 1. Dodaj nowego użytkownika kupiec łączącego się z lokalnej maszyny z hasłem kupiecE14
 
 CREATE USER 'kupiec'@'localhost'
 IDENTIFIED BY '1234';
 
-- 2. Wykonaj testowe połączenie (zaloguj się) na koncie kupiec. Jakie bazy danych są widoczne?
 
mysql -u kupiec -p

-- 3. jako root sprawdź zawartość tabeli user (tylko pola host, user, password) (w bazie danych mysql) (pokaż zawartość tej tabeli)
SELECT host, user, password
FROM mysql.user;
-- 4. Utwórz użytkownika szukacz z hasłem szukaczE14
CREATE USER 'szukacz'@'localhost' 
IDENTIFIED BY '1234';
 
-- 5. Wyloguj się z sesji kupca i wykonaj testowe połączenie jako szukacz

--  6. Zablokuj konto kupiec (ALTER USER .... ACCOUNT ...)
 ALTER USER 'kupiec'@'localhost' ACCOUNT LOCK;
--  7. Wyloguj się z sesji szukacza i wykonaj testowe połączenie jako kupiec
mySQL -u kupiec -p
 Access denied, this account is locked
-- 8 . Odblokuj  konto kupiec. Ustaw wygaszanie hasła po jednym dniu ( dzień lub dwa później spróbuj się zalogować, a jeśli się nie uda, napraw)
ALTER USER 'kupiec'@'localhost' ACCOUNT UNLOCK;

ALTER USER 'kupiec'@'localhost' PASSWORD EXPIRE INTERVAL 1 DAY;

-- 9. Utwórz
-- A. bazę danych Egzaminy
-- B. w tej bazie tabelę Test (pole id typu int, klucz podstawowy, bez autoinkrementacji). 
-- C. Dodaj do tabeli Test cyfry 1, 2 i 3 
-- D. Utwórz tabelę tabela z jednym polem id typu całkowitego.
 CREATE DATABASE Egzaminy
use Egzaminy;

CREATE TABLE test(
    id INT PRIMARY KEY
)
 INSERT INTO Test 
 VALUES 
 (1,2,3)
-- 10. Daj kupcowi prawo do wprowadzania danych do tabeli test w bazie Egzaminy (samo wprowadzanie, bez wyszukiwania)
 
-- 11. Daj szukaczowi prawo do wyświetlania danych z tabeli test w bazie Egzaminy
 
-- 12. Sprawdź, czy kupiec (prawo do wprowadzania danych):

-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może dodać dane (liczbę 4)
 
-- 13. Sprawdź, czy szukacz (prawo do wyświetlania danych):
-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może dodać dane (liczbę 5)
-- 14. Utwórz użytkownika serwisant
 
-- 15. Daj prawo serwisantowi do usuwania danych z tabeli test w bazie egzaminy (samo usuwanie, bez prawa do wyszukiwania).
 
-- 16. Sprawdź, czy serwisant (prawo do usuwania danych):
-- A. widzi bazę Egzaminy
-- B. Może jej użyć
-- C. Widzi tabele w tej bazie
-- D. Może wyświetlić zawartość tabeli Test
-- E. Może usunąć dane (liczbę 3)
-- F. Może usunąć wszystkie dane;
-- 17. Jeśli użytkownik serwisant ma problemy z usuwaniem, popraw to (ale nie dawaj mu za dużo praw, a już na pewno nie wszystkie), najpierw dodaj do tabeli liczby 1,2,3
 