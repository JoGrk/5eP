-- 1. Utwórz tabelę pracownik(id_pracownik, imie, nazwisko, pesel, data_zatr, pensja), gdzie
-- id_pracownik – jest numerem pracownika nadawanym automatycznie, jest to klucz główny
-- imie i nazwisko – to niepuste łańcuchy znaków zmiennej długości,
-- pesel – stała długość, 11 znaków, wartości nie mogą sie powtarzać
-- data_zatr – domyślna wartość daty zatrudnienia to bieżąca data systemowa (curdate)
-- pensja – nie może być niższa niż 1000zł, dane przechowujemy jako stałoprzecinkowe (6 przed przecinkiem, 2 po przecinku)
 
 CREATE TABLE pracownik(
    id_pracownik int AUTO_INCREMENT PRIMARY KEY,
    imie varchar(50) NOT NULL,
    nazwisko varchar(50) NOT NULL,
    pesel char(11) UNIQUE,
    data_zatr DATE DEFAULT(CURDATE()),
    pensja DEC(8,2) CHECK(pensja >= 1000)
 );
 INSERT INTO pracownik
 (imie, nazwisko, pesel, pensja)
 VALUES
 ('Jan', 'Kowalski','12345678900', 1800);
 

 
-- 2. Utwórz tabelę naprawa(id_naprawa, data_przyjecia, opis_usterki, zaliczka), gdzie
-- id_naprawa – jest unikatowym, nadawanym automatycznie numerem naprawy, jest to klucz główny,
-- data_przyjecia – nie może być późniejsza niż bieżąca data systemowa,
-- opis usterki – nie może być pusty, musi mieć długość powyżej 10 znaków, (length)
-- zaliczka – nie może być mniejsza niż 100zł ani większa niż 1000zł.

CREATE TABLE naprawa(
    id_naprawa int AUTO_INCREMENT PRIMARY KEY UNIQUE,
    data_przyjecia date CHECK(data_przyjecia<="2023-10-13"),
    opis_usterki varchar(1024) NOT NULL CHECK(LENGTH(opis_usterki)>10),
    zaliczka DEC(8,2) CHECK(zaliczka BETWEEN 100 AND 1000)
);

INSERT INTO naprawa 
(data_przyjecia, opis_usterki, zaliczka)
VALUES
('2023-10-12','samochod nie samochoduje',515);



 
-- 3. Utwórz tabelę wykonane_naprawy(id_pracownik, id_naprawa, data_naprawy, opis_naprawy, cena), gdzie
-- id_pracownik – identyfikator pracownika wykonującego naprawę, klucz obcy powiązany z tabelą pracownik,
-- id_naprawa – identyfikator zgłoszonej naprawy, klucz obcy powiązany z tabelą naprawa,
-- data_naprawy – domyślna wartość daty naprawy to bieżąca data systemowa,
-- opis_naprawy – niepusty opis informujący o sposobie naprawy,
-- cena – cena naprawy.

CREATE TABLE wykonane_naprawy(
    id_pracownik INT,
    id_naprawa INT,
    data_naprawy DATE DEFAULT (curdate()),
    opis_naprawy Varchar(255) NOT NULL,
    cena Dec(8,2),
    PRIMARY KEY (id_pracownik,id_naprawa), 
    FOREIGN KEY (id_pracownik) REFERENCES pracownik(id_pracownik),
    FOREIGN KEY (id_naprawa) REFERENCES naprawa(id_naprawa) 
    
);

