USE pierwsza_baza;

INSERT INTO users (name, surname, age, city, profession) VALUES ('Tomek','Nowak', '32', 'Warszawa', 'Informatyk');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Jan','Kowalski', '45', 'Gdańsk', 'Rzeznik');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Rafał','Rafalski', '67', 'Opole', 'Spawacz');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Ania','Nowicka', '54', 'Gniezno', 'Szwaczka');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Dariusz','Mariusz', '38', 'Wrocław', 'Piekarz');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Zofia','Tak', '19', 'Szczecin', 'Krawcowa');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Wiktor','Nie', '27', 'Białystok', 'Dentysta');
INSERT INTO users (name, surname, age, city, profession) VALUES ('Zenon','Xenon', '78', 'Płock', 'Mechanik');

SELECT * FROM users;

SELECT * FROM users WHERE age >= 45;

SELECT * FROM users WHERE age < 30;

SELECT * FROM users WHERE age != 45;
