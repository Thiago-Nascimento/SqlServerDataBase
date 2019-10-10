CREATE DATABASE exCamiseta;

USE exCamiseta;

CREATE TABLE marca (
	IdMarca INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30)
)

CREATE TABLE cor (
	IdCor INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30)
)

CREATE TABLE tamanho (
	IdTamanho INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Sigla VARCHAR(2)
)

CREATE TABLE camiseta (
	IdCamiseta INT IDENTITY PRIMARY KEY,
	IdMarca INT FOREIGN KEY REFERENCES marca(IdMarca) NOT NULL,
	IdCor INT FOREIGN KEY REFERENCES cor(IdCor) NOT NULL,
	IdTamanho INT FOREIGN KEY REFERENCES tamanho(IdTamanho) NOT NULL,
)

INSERT INTO cor(Nome) VALUES ('Branca'), ('Vermelha'), ('Azul'), ('Roxa'), ('Verde');
INSERT INTO tamanho(Nome, Sigla) VALUES ('Pequeno', 'P'), ('Médio', 'M'), ('Grande', 'G'), ('Muito Grande', 'GG');
INSERT INTO marca(Nome) VALUES ('Khelf'), ('Reserva'), ('Polo');
INSERT INTO camiseta(IdMarca, IdCor, IdTamanho) VALUES (2,5,3), (3,3,4), (1,2,1), (2,1,2), (1,3,1);

UPDATE camiseta SET
	IdMarca=3
WHERE IdCamiseta = 1; 

UPDATE camiseta SET
	IdMarca=1
WHERE IdCamiseta = 2;

DELETE FROM camiseta WHERE IdCamiseta = (SELECT MAX(IdCamiseta) FROM camiseta);

SELECT * FROM camiseta;
SELECT * FROM marca;
SELECT * FROM cor;

SELECT * FROM camiseta
	INNER JOIN marca ON marca.IdMarca = camiseta.IdMarca;

SELECT * FROM camiseta
	INNER JOIN cor ON cor.IdCor = camiseta.IdCor;

SELECT * FROM camiseta
	INNER JOIN tamanho ON tamanho.IdTamanho = camiseta.IdTamanho;

-- 

ALTER TABLE marca ADD QuantLojas INT;
ALTER TABLE marca ADD DataCriacao DATE;