USE pierwsza_baza;

CREATE TABLE klient (
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(200),
nazwisko VARCHAR(200)
);

INSERT INTO klient (imie, nazwisko) VALUES ('Jan', 'Kowalski');
INSERT INTO klient (imie, nazwisko) VALUES ('Zygmunt', 'Nowakowski');
INSERT INTO klient (imie, nazwisko) VALUES ('Tomasz', 'Kowal');
INSERT INTO klient (imie, nazwisko) VALUES ('Karolina', 'Nowa');

SELECT * FROM klient;

DELETE FROM klient WHERE id = 1;

SELECT * FROM users;

CREATE TABLE sprzedaz (
id INT AUTO_INCREMENT PRIMARY KEY,
id_klienta INT,
produkt VARCHAR(200)
);

SELECT * FROM sprzedaz;

DROP TABLE sprzedaz;

INSERT INTO sprzedaz (id_klienta, produkt) VALUES (1, 'Bulka');
INSERT INTO sprzedaz (id_klienta, produkt) VALUES (2, 'Jajka');
INSERT INTO sprzedaz (id_klienta, produkt) VALUES (1, 'Maslo');
INSERT INTO sprzedaz (id_klienta, produkt) VALUES (1, 'Chleb');
INSERT INTO sprzedaz (id_klienta, produkt) VALUES (3, 'Maslo');
INSERT INTO sprzedaz (id_klienta, produkt) VALUES (5, 'Szynka');

SELECT * FROM sprzedaz;

SELECT a.id_klienta, b.imie, b.nazwisko, a.produkt FROM sprzedaz a
LEFT JOIN klient b ON a.id_klienta = b.id;

SELECT a.id_klienta, b.imie, b.nazwisko, a.produkt FROM sprzedaz a
RIGHT JOIN klient b ON a.id_klienta = b.id;

SELECT a.id_klienta, b.imie, b.nazwisko, a.produkt FROM sprzedaz a
INNER JOIN klient b ON a.id_klienta = b.id;