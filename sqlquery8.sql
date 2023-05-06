USE pierwsza_baza;

SELECT * FROM users ORDER BY id DESC;

SELECT * FROM users ORDER BY id ASC;

SELECT * FROM users ORDER BY name ASC;

SELECT * FROM users WHERE surname like 'Now%' ORDER BY age DESC;