-- Inserir dado de um aluno
INSERT INTO aluno(Nome, Ra, Idade) VALUES ('Thiago', 'R123', 21);
INSERT INTO materia(Materia) VALUES ('Física');

-- Alterar dados
-- Fim de linha ;
UPDATE aluno SET
	Nome='Outro Nome',
	Idade='25'
WHERE IdAluno = 2;

-- Excluir dado
DELETE FROM materia WHERE IdMateria = 2;