use pierwsza_baza;

CREATE PROCEDURE select_users()
SELECT * FROM users;

CALL select_users();

CREATE PROCEDURE szukajka (IN x VARCHAR(200))
SELECT * FROM users WHERE name = x;

SELECT * FROM users WHERE name = 'Ania';

CALL select_users;

CALL szukajka('Jan');

DROP PROCEDURE select_users;





