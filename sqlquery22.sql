CREATE DATABASE task;
USE task;
CREATE TABLE produkty (
id INT AUTO_INCREMENT PRIMARY KEY,
nazwa VARCHAR(200),
cena INT
);

INSERT INTO produkty (nazwa,cena) VALUES ("chleb",5);
INSERT INTO produkty (nazwa,cena) VALUES ("maslo",8);
INSERT INTO produkty (nazwa,cena) VALUES ("mleko",4);
INSERT INTO produkty (nazwa,cena) VALUES ("woda",2);
INSERT INTO produkty (nazwa,cena) VALUES ("ziemniaki",10);

SELECT * FROM produkty;

DROP TABLE produkty;

truncate produkty;

SELECT avg(cena) FROM produkty;

SELECT min(cena) FROM produkty;

SELECT max(cena) FROM produkty;

SELECT * FROM produkty ORDER BY cena desc;

SELECT count(id) FROM produkty;

SELECT * FROM produkty WHERE nazwa="mleko";

SELECT * FROM produkty WHERE cena>1000;

CREATE TABLE uzytkownicy (
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(200),
nazwisko VARCHAR(200)
);

INSERT INTO uzytkownicy (imie, nazwisko) VALUES ('Anna', 'Nowak');
INSERT INTO uzytkownicy (imie, nazwisko) VALUES ('Zofia', 'Koowal');
INSERT INTO uzytkownicy (imie, nazwisko) VALUES ('Piotr', 'Tak');
INSERT INTO uzytkownicy (imie, nazwisko) VALUES ('Zenon', 'Nie');
INSERT INTO uzytkownicy (imie, nazwisko) VALUES ('Adam', 'Iks');

SELECT * FROM uzytkownicy;

truncate uzytkownicy;

CREATE TABLE sprzedaz (
id INT AUTO_INCREMENT PRIMARY KEY,
kiedy TIMESTAMP,
id_produktu INT,
id_uzytkownika INT
);

INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),1,1);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),2,2);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),3,3);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),4,4);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),5,2);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),5,1);
INSERT INTO	sprzedaz (kiedy,id_produktu,id_uzytkownika) VALUES (now(),3,4);

SELECT * FROM sprzedaz;

UPDATE sprzedaz SET id_uzytkownika=4 WHERE id=5;

SELECT b.imie, b.nazwisko, c.nazwa, c.cena FROM sprzedaz a
LEFT JOIN uzytkownicy b ON a.id_uzytkownika=b.id
LEFT JOIN produkty c ON a.id_produktu=c.id;

DELETE FROM produkty WHERE id=1;

UPDATE uzytkownicy SET imie="Ola" WHERE id=1;