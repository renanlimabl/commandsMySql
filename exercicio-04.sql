/*COUNT(*), GROUP BY, PERFOMANCE DE OPERADORES LÓGICOS*/

-- CONTAR REGISTRO DE UMA TABELA
SELECT COUNT(*) FROM clientes;
-- Com alias.
SELECT COUNT(*) AS "Quantidade de registro"
FROM clientes;

-- Group by 
SELECT SEXO, COUNT(*)
FROM clientes
GROUP BY SEXO;