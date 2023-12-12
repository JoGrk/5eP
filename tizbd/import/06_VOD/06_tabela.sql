CREATE TABLE IF NOT EXISTS filmy(
    ID_filmu int PRIMARY KEY AUTO_INCREMENT,
    Tytul varchar(30),
    kraj_produkcji varchar(30),
    Gatunek varchar(30),
    Cena_w_zl DEC(8,2)


);
