USE pierwsza_baza;

SELECT * FROM profession;

INSERT INTO profession (name) VALUES ("Kucharz");
INSERT INTO profession (name) VALUES ("Informatyk");
INSERT INTO profession (name) VALUES ("Administrator");
INSERT INTO profession (name) VALUES ("");

ALTER TABLE profession ADD COLUMN nowa_kolumna VARCHAR(20);

UPDATE profession SET nowa_kolumna = 'treść' WHERE id =1;

ALTER TABLE profession DROP COLUMN nowa_kolumna;

ALTER TABLE profession ADD COLUMN kolumna_po_id VARCHAR(20) AFTER id;

ALTER TABLE profession CHANGE kolumna_po_id nowa_kolumna INT;

DROP TABLE profession;



