CREATE TABLE uzytkownik (
id INT AUTO_INCREMENT PRIMARY KEY, 
Imie VARCHAR(200), 
Nazwisko VARCHAR(200)
);

INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Jan', 'Nowak');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Karolina', 'Kowalska');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Tomasz', 'Rak');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Miroslaw', 'Nowakowski');
INSERT INTO uzytkownik (imie, nazwisko) VALUES ('Monika', 'Kara');

SELECT * FROM uzytkownik;

CREATE TABLE zawod (
id INT AUTO_INCREMENT PRIMARY KEY,
nazwa VARCHAR(200)
);

INSERT INTO zawod (nazwa) VALUES ('Administrator');
INSERT INTO zawod (nazwa) VALUES ('Analityk');
INSERT INTO zawod (nazwa) VALUES ('Programista');

SELECT * FROM zawod;

CREATE TABLE pracownicy (
id INT AUTO_INCREMENT PRIMARY KEY,
id_zawod INT,
id_uzytkownik INT,
FOREIGN KEY (id_zawod) references zawod(id) ON DELETE CASCADE,
FOREIGN KEY (id_uzytkownik) references uzytkownik(id) ON DELETE CASCADE
);

INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (3,4);
INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (1,1);
INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (3,5);

INSERT INTO pracownicy (id_zawod, id_uzytkownik) VALUE (3,10);
SELECT * FROM uzytkownik;

SELECT a.id, b.nazwisko, c.nazwa FROM pracownicy a
LEFT JOIN uzytkownik b ON a.id_uzytkownik = b.id
LEFT JOIN zawod c ON a.id_zawod = c.id;

DELETE FROM uzytkownik WHERE id = 1;

SELECT * FROM uzytkownik;

SELECT * FROM pracownicy;
