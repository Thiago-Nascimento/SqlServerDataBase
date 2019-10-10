CREATE DATABASE ex5;

USE ex5;

CREATE TABLE cliente (
	IdCliente INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30)
)

CREATE TABLE produto (
	IdProduto INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30) NOT NULL,
	Preco FLOAT NOT NULL
)

CREATE TABLE compra (
	IdCompra INT IDENTITY PRIMARY KEY,
	IdCliente INT FOREIGN KEY REFERENCES cliente(IdCliente) NOT NULL,
	IdProduto INT FOREIGN KEY REFERENCES produto(IdProduto) NOT NULL
)

INSERT INTO cliente(Nome) VALUES ('Thiago'), ('Marcela'), ('Carlos');
INSERT INTO produto(Nome, Preco) VALUES ('Sabão', 1.2), ('Peixe', 2.5), ('Ovo', 0.37);
INSERT INTO compra(IdCliente, IdProduto) VALUES (1, 2), (1, 3), (2, 2);

SELECT * FROM cliente;
SELECT * FROM produto;
SELECT * FROM compra;