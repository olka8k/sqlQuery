USE pierwsza_baza;

SELECT name FROM users WHERE name RegExp '^Kar';
SELECT name FROM users WHERE name RegExp 'na$';
SELECT name FROM users WHERE name RegExp 'Ja|ka|to';

CREATE TABLE numer (
ID INT auto_increment primary key,
numer VARCHAR(200)
);

INSERT INTO numer (numer) VALUES (1);
INSERT INTO numer (numer) VALUES ('CSF-123456');
INSERT INTO numer (numer) VALUES ('FDR-234567');
INSERT INTO numer (numer) VALUES (165487632198);
INSERT INTO numer (numer) VALUES (540876543);
INSERT INTO numer (numer) VALUES ('lalalala');

SELECT * FROM numer;

SELECT * FROM numer WHERE numer RegExp'[0-9]{11}$';
SELECT * FROM numer WHERE numer RegExp '[A-Z]{3}\\-[0-9]{6}$';
SELECT * FROM numer WHERE numer RegExp '^[0-9]{9}$';




