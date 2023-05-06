USE pierwsza_baza;

SELECT * FROM users WHERE name = 'Ania' and surname = 'Nowicka';

SELECT * FROM users WHERE name = 'Ania' and surname = 'Kowalska';

SELECT * FROM users WHERE name not in ('Ania' , 'Rafał');