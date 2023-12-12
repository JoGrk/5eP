-- 1. napisz skrypt  tworzący tabelę filmy , ale tylko wtedy, gdy tabela nie istnieje, określ klucz podstawowy  (zrzut) (tabela ma pasować do pliku o tej nazwie)
CREATE TABLE IF NOT EXISTS filmy(
    ID_filmu int PRIMARY KEY AUTO_INCREMENT,
    Tytul varchar(30),
    kraj_produkcji varchar(30),
    Gatunek varchar(30),
    Cena_w_zl DEC(8,2)


);



-- 2. Wykonaj skrypt z poziomu wiersza poleceń metodą przekierowania (skrypt wykonaj do dowolnej bazy danych)
mysql -u root 5ep_tabele < C:\xampp\htdocs\5eP\tizbd\import\06_VOD\06_tabela.sql
-- 3. Z poziomu wiersza poleceń zaimportuj dane do tabeli filmy
LOAD DATA LOCAL INFILE
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\06_VOD\\filmy.txt'
INTO TABLE filmy
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

-- 4.  zaimportuj tabelę wypozyczenia z poziomu phpMyAdmin 

-- 5. utwórz skrypt, który doda do tabeli wypozyczenia i filmy indeks (na polu tytul i data wypożyczenia). Wykonaj skrypt. 
CREATE INDEX idx_filmy ON filmy(tytul);

CREATE INDEX idx_wypozyczenia ON wypozyczenia_txt(Data_wyp);
-- 6.  Z poziomu wiersza poleceń wyeksportuj z tabeli filmy tytul, kraj_produkcji i gatunek do pliku filmy.csv, dane oddziel średnikiem. Na zrzucie pokaż też początek zawartości pliku filmy.csv (otwórz w notatniku lub podobnym programie)
SELECT tytul,kraj_produkcji,gatunek FROM filmy
INTO OUTFILE 
'C:\\xampp\\htdocs\\5eP\\tizbd\\import\\06_VOD\\filmy.csv'
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'



-- 7. Utwórz widok FilmyWypozyczenia   z polami id_filmu , tytul, kraj_produkcji, data_wypoz
CREATE VIEW FilmyWypozyczenia AS
SELECT wypozyczenia_txt.id_filmu,tytul,kraj_produkcji,data_wyp FROM filmy 
LEFT JOIN wypozyczenia_txt ON filmy.ID_filmu=wypozyczenia_txt.ID_filmu;

    

-- 8. Korzystając z widoku i tabeli wypozyczenia wyświetl  tytuły filmów, które nie zostały wypożyczone ani razu przez klientów usługi VOD na etapie testowania.
SELECT tytul FROM FilmyWypozyczenia WHERE Data_wyp IS NULL;
-- 9. Usuń indeks z tabeli wypozyczenia.
ALTER TABLE wypozyczenia_txt 
DROP INDEX idx_wypozyczenia;