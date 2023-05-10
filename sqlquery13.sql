USE pierwsza_baza;

SELECT * FROM  users;

SELECT name, length(name), surname, length(surname), lower(name), upper(name) FROM users;
SELECT profession, length(profession), avg(age), max(age), min(age) FROM users GROUP BY profession HAVING length(profession) > 5 ORDER BY profession asc;

SELECT count(distinct(profession)) FROM users;

SELECT now();