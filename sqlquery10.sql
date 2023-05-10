USE pierwsza_baza;
SELECT * FROM users;

SELECT avg(age) FROM users;
SELECT count(*) FROM users;

SELECT sum(age) FROM users;
SELECT max(age), min(age) FROM users;

SELECT distinct(name) FROM users;
SELECT distinct(name), surname, age FROM users;

SELECT profession, count(profession) FROM users GROUP BY profession;
SELECT profession, avg(age) FROM users GROUP BY profession ORDER BY profession ASC;

SELECT profession, avg(age) FROM users GROUP BY profession HAVING avg(age) > 30;
SELECT profession, avg(age) FROM users GROUP BY profession HAVING avg(age) > 10;

