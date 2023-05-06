USE pierwsza_baza;

SELECT * FROM users WHERE age BETWEEN 10 AND 50;

SELECT * FROM users WHERE name IN ('Karl' , 'Dariusz' , 'Tomek');

SELECT * FROM users WHERE surname like 'Now%';

SELECT * FROM users WHERE name like '_arl%';

SELECT * FROM users WHERE city like '_dyn%';

SELECT * FROM users WHERE profession like '%kra%';

SELECT * FROM users WHERE age is null;

SELECT * FROM users WHERE age is not null;