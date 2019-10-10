CREATE DATABASE ex2;

USE ex2;

CREATE TABLE diretor(
	IdDiretor INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30) NOT NULL,
	Np INT NOT NULL
)

CREATE TABLE departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(20),
	NumFuncionarios INT NOT NULL,
	IdDiretor INT FOREIGN KEY REFERENCES diretor(IdDiretor) NOT NULL
)

INSERT INTO diretor(Nome, NP) VALUES ('Thiago', 210), ('Marcela', 678), ('Carlos', 987);
INSERT INTO departamento(Nome, NumFuncionarios, IdDiretor) VALUES ('Qualidade', 20, 2), ('Manutenção', 23, 3), ('Marketing', 9, 1);

SELECT * FROM departamento;
SELECT * FROM diretor;