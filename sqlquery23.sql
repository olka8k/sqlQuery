USE task;
CREATE TABLE product (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200)
);


CREATE TABLE sale (
id INT AUTO_INCREMENT PRIMARY KEY,
id_product INT,
id_client INT,
price INT
);


CREATE TABLE client (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
country VARCHAR(20)
 );

CREATE TABLE info (
id INT AUTO_INCREMENT PRIMARY KEY,
dzisiejszaData TIMESTAMP,
id_sale INT
);
SELECT * FROM sale;
SELECT * FROM info;
SELECT * FROM client;
SELECT * FROM product;


CREATE PROCEDURE add_client (IN name VARCHAR(20), country VARCHAR(20)) 
INSERT INTO client (name, country) VALUES (name, country);

CREATE PROCEDURE add_product (IN param VARCHAR(20))
INSERT INTO product (name) VALUES (param);

CREATE PROCEDURE add_sale (IN id_product INT, id_client INT, price INT)
INSERT INTO sale (id_product, id_client, price) VALUES (id_product, id_client, price);

CALL add_client ("Darek", "Warszawa");
CALL add_client ("Ola", "Plock");
CALL add_client ("Jurek", "Bytom");
CALL add_client ("Ala", "Kielce");
CALL add_client ("Jan", "Gdynia");

CALL add_product ('Bulka');
CALL add_product ('Woda');
CALL add_product ('Jablko');
CALL add_product ('Mleko');
CALL add_product ('Maslo');

CALL add_sale (1,2,4);
CALL add_sale (2,4,7);
CALL add_sale (3,3,8);
CALL add_sale (4,5,9);
CALL add_sale (5,1,6);

SELECT client.name, client.country, product.name, sale.price FROM sale
LEFT JOIN client ON client.id = sale.id_client
LEFT JOIN product ON product.id=sale.id_product;

CREATE TRIGGER licznik AFTER INSERT ON sale
FOR EACH ROW
INSERT INTO info (id_sale) VALUES (NEW.id);

DROP TRIGGER licznik;

SELECT info.dzisiejszaData, client.name, client.country, product.name, sale.price FROM sale
LEFT JOIN client ON client.id = sale.id_client
LEFT JOIN product ON product.id=sale.id_product
LEFT JOIN info ON info.id_sale = sale.id;

CREATE PROCEDURE delete_user (IN x INT)
DELETE FROM client WHERE id = x;

CALL delete_user (4);


