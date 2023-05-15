CREATE TABLE produkty (
ID INT AUTO_INCREMENT PRIMARY KEY,
cena INT,
nazwa VARCHAR(200),
ile_sprzedano INT DEFAULT 0
);

INSERT INTO produkty (cena, nazwa) VALUES ( 100, 'rower');
INSERT INTO produkty (cena, nazwa) VALUES ( 5000, 'samochod');
INSERT INTO produkty (cena, nazwa) VALUES ( 100000, 'jacht');
INSERT INTO produkty (cena, nazwa) VALUES ( 1000000, 'pociag');

SELECT * FROM produkty;

CREATE TABLE sprzedaz_produktow (
ID INT AUTO_INCREMENT PRIMARY KEY,
kiedy TIMESTAMP,
id_produktu INT 
);

INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);

CREATE TRIGGER licznik AFTER INSERT ON sprzedaz_produktow
FOR EACH ROW
UPDATE produkty SET ile_sprzedano = ile_sprzedano + 1 WHERE id = NEW.id_produktu;

INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);

SELECT * FROM produkty;

INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);

SELECT * FROM produkty;

INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);
INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 1);
INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 3);
INSERT INTO sprzedaz_produktow (kiedy, id_produktu) VALUES (NOW(), 4);

CREATE TABLE info (
ID INT AUTO_INCREMENT PRIMARY KEY,
komunikat VARCHAR(200)
);

CREATE TRIGGER info BEFORE INSERT ON sprzedaz_produktow
FOR EACH ROW
INSERT INTO info (komunikat) VALUES ('Jestem przed dodawaniem do tabeli');

SELECT * FROM info;