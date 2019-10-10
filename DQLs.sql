-- Mostrar dados
SELECT * FROM aluno;
SELECT * FROM materia;

-- Mostra dados de acordo com o parametro fornecido pelo WHERE
SELECT * FROM aluno WHERE Idade = 21;

-- Mostra dados em uma busca que contenha a palavra '%Thiago%', pode ser precedido e sucedido por qualquer coisa (%)
SELECT * FROM aluno WHERE Idade LIKE '%Thiago%';

-- Ordena por nome do aluno de forma ascendente
SELECT * FROM aluno ORDER BY Nome ASC;

-- Ordena por nome do aluno de forma decrescente
SELECT * FROM aluno ORDER BY Nome DESC;

-- Junta as informações das tres tabelas usando INNER JOIN
SELECT * FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;

-- Mostra apenas os dados pedidos em SELECT, da junção das 3 tabelas
SELECT 
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;

-- Utilizamos a função COUNT para retornar o numero de registros na tabela
-- AS define um alias para a coluna mostrada
SELECT COUNT(*) AS total_registro FROM aluno;

-- Idade máxima dos alunos
SELECT MAX(Idade) AS idade_maxima FROM aluno;

-- Idade mínima dos alunos
SELECT MIN(Idade) AS idade_minima FROM aluno;   

-- Idade média dos alunos
SELECT AVG(Idade) AS idade_média FROM aluno;

-- Soma das Idades
SELECT SUM(Idade) AS soma_idades FROM aluno;

-- Junta todas as funções em um a unica consulta
SELECT
	COUNT(*) AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS idade_media,
	SUM(Idade) AS soma_idades
FROM aluno;

-- Pegamos parte de uma string
SELECT SUBSTRING(Nome, 0, 3) AS cortado FROM aluno;

-- Deixa a string em letras maiusculas
SELECT UPPER(Nome) AS NOME FROM aluno;

-- Deixa a string em letras minusculas
SELECT LOWER(Nome) AS nome FROM aluno;