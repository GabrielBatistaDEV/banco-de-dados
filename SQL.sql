CREATE DATABASE loja;

USE loja;
/*
TABELA NÃO NORMALIZADA, FORMA ERRADA
*/
CREATE TABLE tabela_nao_normalizada(
	nome_cliente VARCHAR(70),
    telefone_cliente VARCHAR(15),
    telefone2_cliente VARCHAR(15),
    pedido_descricao VARCHAR(50),
    pedido_quantidade INTEGER,
    pedido_valor_produto FLOAT
);
/*

*/
CREATE TABLE cliente(
	id_cliente BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(70),
    telefone_cliente VARCHAR(15),
    pedido_descricao VARCHAR(50),
    pedido_quantidade INTEGER,
    pedido_valor_produto FLOAT
);

INSERT INTO cliente VALUES(
	null, "Gabriel Batista", "(61)96969-6969", "Nintendo Switch 2", 1, 449.99
);

INSERT INTO cliente(nome_cliente, telefone_cliente) VALUES(
	"Godines", "(61)98765-4321"
);

INSERT INTO cliente(nome_cliente, telefone_cliente)
VALUES("José", "(61)55555-6688"), ("Enzo", "(62)855e41-6655");

/*Selecione tudo da tabela cliente*/
SELECT * FROM cliente;

/*Selecione nome do cliente na tabela cliente onde o identificador for igual a 1*/
SELECT nome_cliente FROM cliente WHERE id_cliente = 1;

SELECT * FROM cliente WHERE id_cliente = 1;

/*Conta todos os registros da tabela cliente*/
SELECT COUNT(*) AS "CONTAGEM DE PESSOAS" FROM cliente;