CREATE DATABASE loja_do_clodovil;

USE loja_do_clodovil;

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    preco FLOAT,
    categoria VARCHAR (100)
);

INSERT INTO produtos 
VALUES (null, "Nintendo Switch 2", 449.99, "Consoles");

INSERT INTO produtos 
VALUES (null, "Nintendo Switch", 299.99, "Consoles");

INSERT INTO produtos 
VALUES (null, "BIS", 9.99, "Comida");

SELECT * FROM produtos;

SELECT * FROM produtos WHERE categoria = "Consoles";