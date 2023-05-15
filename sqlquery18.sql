DROP TABLE sprzedaz;

CREATE TABLE sprzedaz (
id INT AUTO_INCREMENT PRIMARY KEY,
id_klienta INT,
id_produktu INT 
);

CREATE TABLE produkt (
id INT AUTO_INCREMENT PRIMARY KEY,
nazwa VARCHAR(200)
);

DROP TABLE produkt;

INSERT INTO produkt (nazwa) VALUES ('chleb');
INSERT INTO produkt (nazwa) VALUES ('woda');
INSERT INTO produkt (nazwa) VALUES ('jajko');
INSERT INTO produkt (nazwa) VALUES ('baton');
INSERT INTO produkt (nazwa) VALUES ('mydlo');
INSERT INTO produkt (nazwa) VALUES ('sok');
INSERT INTO produkt (nazwa) VALUES ('szynka');

INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (1,1);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (2,4);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (4,3);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (2,2);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (3,2);
INSERT INTO sprzedaz (id_klienta, id_produktu) VALUES (1,2);

SELECT * FROM produkt;

SELECT * FROM sprzedaz;

SELECT a.id, c.imie, c.nazwisko, b.nazwa FROM sprzedaz a 
LEFT JOIN produkt b ON a.id_produktu = b.id
LEFT JOIN klient c ON a.id_klienta = c.id;