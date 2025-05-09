CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE editora (
    id_editora INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE autores(
	id_autor BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (100),
    titulo VARCHAR (1000),
    ano_de_pulblicação INTEGER
);

INSERT INTO autores (nome, titulo, ano_de_pulblicação)
VALUES ("Muneyuki Kaneshiro", "Blue Lock", 2018);

INSERT INTO autores (nome, titulo, ano_de_pulblicação)
VALUES ("J. R. R. Tolkien", "Senhor dos Anéis", 1954);

INSERT INTO autores(titulo) 
VALUES ("O Hobbit");

SELECT * FROM autores;

SELECT * FROM autores WHERE titulo = "Senhor dos Anéis";

