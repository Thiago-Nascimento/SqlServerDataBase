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