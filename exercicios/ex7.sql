CREATE DATABASE ex7;

USE ex7;

CREATE TABLE turma (
	IdTurma INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(2),
	Sala VARCHAR(10)
);

CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(30) NOT NULL,
	Idade INT,
	IdTurma INT FOREIGN KEY REFERENCES turma(IdTurma) NOT NULL,
);

INSERT INTO turma (Nome, Sala) VALUES ('A', 'Sala 13'), ('B', 'Sala 15'), ('C', 'Sala 22');
INSERT INTO aluno(Nome, Idade, IdTurma) VALUES ('Thiago', 21, 2), ('Ana', 20, 2), ('João', 17, 1);