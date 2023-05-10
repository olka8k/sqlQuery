USE pierwsza_baza;

CREATE TABLE pracownik (
id INT AUTO_INCREMENT PRIMARY KEY,
imie VARCHAR(20),
nazwisko VARCHAR(20),
stanowisko VARCHAR(20)
);

INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Ola","Nowak","Krawcowa");
INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Alicja","Kowal","Kasjerka");
INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Adam","Nowak","Mechanik");
INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Jan","Kowalski","Kierowca");
INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Pawel","Nowak","Spawacz");
INSERT INTO pracownik (imie,nazwisko,stanowisko) VALUES ("Jan","Nowak","Specem");

SELECT * FROM pracownik;

UPDATE pracownik SET stanowisko="Spec" WHERE id=6;

ALTER TABLE pracownik ADD COLUMN wiek INT AFTER nazwisko;

UPDATE pracownik SET wiek=35 WHERE id=1;
UPDATE pracownik SET wiek=38 WHERE id=2;
UPDATE pracownik SET wiek=27 WHERE id=3;
UPDATE pracownik SET wiek=47 WHERE id=4;
UPDATE pracownik SET wiek=5 WHERE id=5;

SELECT * FROM pracownik WHERE wiek>40;

SELECT * FROM pracownik WHERE imie="Jan";

SELECT * FROM pracownik WHERE imie="Jan" AND nazwisko="Kowalski";

SELECT * FROM pracownik WHERE stanowisko="Spec";

SELECT * FROM pracownik WHERE stanowisko IN ('Spec' , 'Mechanik');









