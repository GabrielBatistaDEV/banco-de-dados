CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoa(
	idpessoa INTEGER PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR (15),
    email VARCHAR (50)
);

CREATE TABLE endereco(
	idendereco INTEGER PRIMARY KEY AUTO_INCREMENT,
	CEP VARCHAR(14),
	logradouro VARCHAR (50),
    cidade VARCHAR (50),
    estado CHAR (2),
    id_pessoa INTEGER,
    FOREIGN KEY(id_pessoa) REFERENCES pessoa(idpessoa)
);

CREATE TABLE telefone(
	idtelefone INTEGER PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(16),
    ddd CHAR(3),
    id_pessoa INTEGER
);

-- Inserindo pessoas
INSERT INTO pessoa (nome, cpf, email) VALUES
('João Silva', '123.456.789-00', 'joao@gmail.com'),
('Maria Souza', '987.654.321-11', 'maria@hotmail.com'),
('Carlos Lima', '111.222.333-44', NULL),
('Ana Oliveira', '555.666.777-88', 'ana@outlook.com');

-- Inserindo endereços (alguns com campos NULL e nem todas as pessoas têm endereço)
INSERT INTO endereco (CEP, logradouro, cidade, estado, id_pessoa) VALUES
('12345-678', 'Rua A', 'São Paulo', 'SP', 1),
(NULL, NULL, NULL, NULL, 2), -- Maria sem endereço
('87654-321', 'Av. Central', 'Belo Horizonte', 'MG', 3),
('11111-222', NULL, 'Curitiba', NULL, 4);

-- Inserindo telefones (até dois por pessoa, alguns campos NULL)
INSERT INTO telefone (telefone, ddd, id_pessoa) VALUES
('912345678', '011', 1),
('998765432', '011', 1), -- João tem dois telefones

('987654321', '061', 2), -- Maria tem um telefone

-- Carlos não tem telefone

('911223344', NULL, 4); -- Ana tem um telefone com ddd NULL

SELECT * FROM pessoa;
SELECT * FROM endereco;
SELECT * FROM telefone;

SELECT * FROM pessoa WHERE nome = "Ana";

SELECT * FROM pessoa WHERE nome LIKE "A%"; -- Começa com a letra A
SELECT * FROM pessoa WHERE nome LIKE "%RA"; -- Termina com RA
SELECT * FROM pessoa WHERE nome LIKE "%Lima%"; -- Tudo que possui Lima

SELECT * FROM telefone WHERE telefone IS NULL;
SELECT * FROM telefone WHERE telefone IS NOT NULL;

SELECT * FROM pessoa ORDER BY nome; -- sintaxe normal
SELECT * FROM pessoa ORDER BY nome ASC; -- do menor pro maior valor
SELECT * FROM pessoa ORDER BY nome DESC; -- do maior valor por menor valor

SELECT * FROM telefone WHERE telefone IS NOT NULL AND ddd = "61";

UPDATE telefone SET telefone = '542263322' WHERE idtelefone = 4 ;


