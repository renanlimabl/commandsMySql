




--Como estamos trabalhando com OR e a segunda condicao é opcional
--colocamos na primeira condicao quem tem mais chances de uma saida
--verdadeira, pois a segunda condicao nao será checada nesse caso.
--Q1) Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

-- Count para ver quantos registros em departamentos de filmes:
SELECT COUNT(*) FROM funcionarios WHERE departamento = "Filmes";

-- Count para ver quantos registros em departamento de roupas
SELECT COUNT(*) FROM funcionarios WHERE departamento = "Roupas";

-- Ou de maneira geral:
SELECT COUNT(*), departamento
FROM funcionarios
GROUP BY departamento
ORDER BY 1; -- ordena pela coluna

-- Query final
SELECT * FROM funcionarios WHERE departamento = "Roupas" OR departamento = "Filmes";

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

-- VERIFICAR SE TEM MAIS LAR OU FILMES
SELECT COUNT(*), departamento
FROM funcionarios
GROUP BY departamento;

-- MONTAR QUERY;
SELECT * FROM funcionarios
WHERE
( departamento = 'Lar' AND SEXO = 'Feminino' )
OR
( departamento = 'Filmes' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

-- Ver quantos funcionarios tem do sexo masculino:
SELECT sexo, COUNT(*)
FROM funcionarios
GROUP BY SEXO;
-- Masculino = 484

-- Ver quantos trabalham no setor jardim:
SELECT departamento, COUNT(*)
FROM funcionarios
WHERE departamento = "Jardim"
GROUP BY departamento;
-- Jardim = 47

SELECT * FROM funcionarios
WHERE (sexo = "Masculino" or departamento = "Jardim");



-- criar database
CREATE DATABASE execicio_funcionarios;

-- utilizar database
USE execicio_funcionarios;

-- criar tabela
CREATE TABLE funcionarios
(
  idFuncionario integer,
  nome varchar(100),
  email varchar(200),
  sexo varchar(10),
  departamento varchar(100),
  admissao varchar(10),
  salario integer,
  cargo varchar(100),
  idRegiao int
);
