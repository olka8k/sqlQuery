USE pierwsza_baza;

INSERT INTO users (name, surname, age, city, profession) VALUES ('Jan','Kowalski', '32', 'Wrocław', 'Dentysta');

SELECT * FROM users;

INSERT INTO users (name, surname, city, profession) VALUES ('Karl', 'Nowak', 'Gdynia', 'Programista');

INSERT INTO users (name, surname, age, city, profession) VALUES ('Karl', 'Nowak', '50', 'Gdynia', 'Programista');

SELECT * FROM users;

UPDATE users SET age = 34 WHERE id = 1;

UPDATE users SET name = 'Tomek' WHERE id = 1;

DELETE FROM users WHERE id = 1;

