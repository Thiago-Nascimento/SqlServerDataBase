CREATE DATABASE ex3;

USE ex3;

CREATE TABLE autor (
	IdAutor INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(20),
)

CREATE TABLE livro (
	IdLivro INT IDENTITY PRIMARY KEY,
	Titulo VARCHAR(20) NOT NULL,
)

CREATE TABLE publicacao (
	IdPublicacao INT IDENTITY PRIMARY KEY,
	IdAutor INT FOREIGN KEY REFERENCES autor(IdAutor) NOT NULL,
	IdLivro INT FOREIGN KEY REFERENCES livro(IdLivro) NOT NULL,
	Edicao INT
)

INSERT INTO autor(Nome) VALUES ('Thiago'), ('Marcela'), ('Carlos');
INSERT INTO livro(Titulo) VALUES ('Física 1'), ('Pré-Cálculo'), ('Eletromagnetismo');
INSERT INTO publicacao(IdAutor, IdLivro, Edicao) VALUES (1, 2, 5), (1, 3, 6), (2, 2, 9);

SELECT * FROM autor;
SELECT * FROM livro;
SELECT * FROM publicacao;       