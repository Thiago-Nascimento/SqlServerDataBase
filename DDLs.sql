-- Script referencia de sql

/* Criar Banco */
CREATE DATABASE boletim;

-- Excluir Banco
DROP DATABASE boletim;

/* Usar Banco */
USE boletim;

-- Criar tabela
--IDENTITY faz um autoincremento para exclusividade do dado
--NOT NULL torna o dado de preenchimento obrigatorio
CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL, 
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);

CREATE TABLE materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50)
);

CREATE TABLE trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria), -- FOREIGN KEY REFERENCES traz a chave estrangeira de determinada tabela
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)
);

-- Incluir nova coluna
ALTER TABLE materia ADD Teste VARCHAR(2);

-- Excluir coluna
ALTER TABLE materia DROP COLUMN Teste;