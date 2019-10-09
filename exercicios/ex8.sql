CREATE DATABASE ex8;

USE ex8;

CREATE TABLE departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30)
)

CREATE TABLE localizacao(
	IdLocalizacao INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	IdDepartamento INT FOREIGN KEY REFERENCES departamento(IdDepartamento) NOT NULL
);

CREATE TABLE empregado(
	IdEmpregado INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	NP INT,
	IdDepartamento INT FOREIGN KEY REFERENCES departamento(IdDepartamento) NOT NULL
);

CREATE TABLE projeto(
	IdProjeto INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	IdDepartamento INT FOREIGN KEY REFERENCES departamento(IdDepartamento) NOT NULL,
	IdEmpregado INT FOREIGN KEY REFERENCES empregado(IdEmpregado) NOT NULL
);

CREATE TABLE dependente(
	IdDependente INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	IdEmpregado INT FOREIGN KEY REFERENCES empregado(IdEmpregado) NOT NULL
);

INSERT INTO departamento (Nome) VALUES ('Qualidade'), ('Marketing'), ('Vendas');
INSERT INTO localizacao (Nome, IdDepartamento) VALUES ('Suzano', 1), ('São Paulo', 1), ('Itajubá', 3);
INSERT INTO empregado (Nome, NP, IdDepartamento) VALUES ('Thiago', 2342, 1), ('Marcela', 2443, 1), ('Carlos', 7564, 2);
INSERT INTO dependente (Nome, IdEmpregado) VALUES ('Ogaiht', 1), ('Alecram', 3), ('Solrac', 2);
INSERT INTO projeto (Nome, IdDepartamento, IdEmpregado) VALUES ('A', 2, 1), ('B', 2, 1), ('C', 3, 2);

SELECT * FROM departamento;
SELECT * FROM localizacao;
SELECT * FROM empregado;
SELECT * FROM dependente;
SELECT * FROM projeto;