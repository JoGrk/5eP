drop database if exists 3eg_1_Centrum;
create database 3eg_1_Centrum;
use 3eg_1_Centrum;

create table komputery
(
 numer_komputera int primary key auto_increment,
 sekcja char(1),
 pojemnosc int   
);

load data local infile 'C:\\xampp\\htdocs\\3eG_1\\centrum\\komputery.txt'
into table komputery
fields terminated by '\t'
lines terminated by '\r\n'
ignore 1 lines;

create table awarie(
    numer_zgloszenia int primary key auto_increment, 
    numer_komputera int, 
    czas_awarii datetime, 
    priorytet int
); 
load data local infile 'C:\\xampp\\htdocs\\3eG_1\\centrum\\awarie.txt'
into table awarie
fields terminated by '\t'
lines terminated by '\r\n'
ignore 1 lines;

create table naprawy(
    numer_naprawy int auto_increment primary key,
    numer_zgloszenia int,
    czas_naprawy datetime,
    rodzaj varchar(20)
);

load data infile 'C:\\xampp\\htdocs\\3eG_1\\centrum\\naprawy.txt'
into table naprawy
fields terminated by '\t'
lines terminated by '\r\n'
ignore 1 lines
(numer_zgloszenia, czas_naprawy, rodzaj);