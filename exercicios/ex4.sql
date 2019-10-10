CREATE DATABASE ex4;

USE ex4;

CREATE TABLE equipe (
	IdEquipe INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Pais VARCHAR(20)
);

CREATE TABLE jogador (
	IdJogador INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Idade INT,
	IdEquipe INT FOREIGN KEY REFERENCES equipe(IdEquipe)
);

INSERT INTO equipe(Nome, Pais) VALUES ('PSG', 'França'), ('Athletico Paranaense', 'Brasil'), ('CSA', 'Brasil');
INSERT INTO jogador(Nome, Idade, IdEquipe) VALUES ('Thiago', 21, 1), ('Vitor', 20, 3), ('Larissa', 21, 2);

