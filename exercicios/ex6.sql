CREATE DATABASE ex6;

USE ex6;

CREATE TABLE curso (
    IdCurso INT IDENTITY PRIMARY KEY NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    NumeroSemestres INT 
)

CREATE TABLE candidato (
    IdCandidato INT IDENTITY PRIMARY KEY NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    IdCurso INT FOREIGN KEY REFERENCES curso(IdCurso)
)

INSERT INTO curso (Nome, NumeroSemestres) VALUES ('CodeXP', 1);

INSERT INTO candidato (Nome, IdCurso) VALUES ('Paulo', 1);
