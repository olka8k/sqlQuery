USE pierwsza_baza;
SELECT lower(name) FROM users;
SELECT upper(name) FROM users;
SELECT length(name), name FROM users;
SELECT left('Moje zdanie testowe' , 5);
SELECT right('Moje zdanie testowe' , 5);
SELECT concat(name, ' ', surname) FROM users;
SELECT concat('mam na imie:', name , 'i mam', age, 'lat') FROM users;

SELECT ABS(-90);
SELECT RADIANS(90);
SELECT LOG(2,8);
SELECT 8 MOD 3;
SELECT 8 % 3;
SELECT ROUND (123.7567);
SELECT ROUND (347.52376, 3);
SELECT RAND();
SELECT PI();