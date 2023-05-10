USE pierwsza_baza;

SELECT * FROM users;


CREATE TABLE profession(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO profession (name) VALUES ("Programista");
INSERT INTO profession (name) VALUES ("Dentysta");
INSERT INTO profession (name) VALUES ("Piłkarz");
INSERT INTO profession (name) VALUES ("Kucharz");
INSERT INTO profession (name) VALUES ("Bezrbotny");
INSERT INTO profession (name) VALUES ("Robotnik");

SELECT * FROM profession;

SELECT * FROM users WHERE profession in (SELECT name FROM profession);

SELECT * FROM profession WHERE name in (SELECT profession FROM users WHERE length(name)> 5 and length(surname) < 10);

SELECT * FROM users WHERE age > (SELECT avg(age) FROM users);

CREATE VIEW klienci AS SELECT name, surname, profession, age FROM users;
SELECT * FROM klienci;
SELECT * FROM klienci WHERE age > 10;

CREATE VIEW spis_pracownikow AS SELECT * FROM users WHERE profession in (SELECT name FROM profession);
SELECT * FROM spis_pracownikow;

