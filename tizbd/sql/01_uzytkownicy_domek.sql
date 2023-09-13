// tworzenie bazy danych
//1
CREATE DATABASE lesny_domek;
USE lesny_domek
CREATE TABLE magiczne_zwierzeta
(
    id_zwierzecia INT AUTO_INCREMENT PRIMARY KEY,
    typ varchar(45),
    spiewa char,
    tanczy char
);

CREATE TABLE obowiazki_domowe
(
    id_obowiazku INT AUTO_INCREMENT PRIMARY KEY,
    nazwa varchar(255),
    czas time,
    lokalizacja VARCHAR(255)
);

INSERT INTO magiczne_zwierzeta
(typ, spiewa, tanczy)
VALUES
('blekitny ptak', 'T', 'T'),
('borsuk', 'T', 'T'),
('jelen', 'N', 'N'),
('wiewiorka', 'T', 'T');

INSERT INTO obowiazki_domowe
(nazwa, czas, lokalizacja)
VALUES
('mycie', '21:30', 'kuchnia'),
('cerowanie', '10:00', 'pralnia'),
('gotowanie', '17:00', 'kuchnia'),
('ścielenie łóżek', '7:35', 'sypialnia');


//dodanie użytkowników
//2. ważniak, śpioch, doktorek

CREATE USER 'Wazniak'
IDENTIFIED BY '1234';

CREATE USER 'Spioch'
IDENTIFIED BY '1234';

CREATE USER 'Doktorek'
IDENTIFIED BY '1234';
// nadawanie uprawnień
//3 daj ważnikaowi prawa do wykonywania polecenia select w tabeli obowiązki domowe
GRANT SELECT ON lesny.obowiazki_domowe TO 'Wazniak';
// 4.A daj śpiochowi prawo do usuwania magicznych zwierząt
GRANT DELETE ON lesny.magiczne_zwierzeta TO 'Spioch';

// 4.B jesli trzeba popraw uprawnienia śpiocha 

// 5. wszystkim uzytkownikom wszystkie prawa do obowiązków domowych

// 6. daj prawo doktorkowi do przeglądania wszystkich tabel w bazie

//7. daj prawo do dodwania nowych magicznych zwierząt dla Doktorka
