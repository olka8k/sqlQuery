CREATE VIEW wiek_zawod AS SELECT age, profession FROM users;
SELECT * FROM wiek_zawod;
DROP VIEW wiek_zawod;
CREATE VIEW wiek_zawod AS SELECT age, UPPER(profession) FROM users WHERE profession in ( SELECT name FROM profession) and age > 25;
SELECT * FROM wiek_zawod ORDER BY age ASC;