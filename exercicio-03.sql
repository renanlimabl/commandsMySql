-- como utilizar % LIKE
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

-- caractere % coringa.
/*
Nesse caso ele pega tudo, qqr coisa, que termina com RJ
*/
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

/*
Nesse caso ele começa pega tudo que começa com "OSCAR CURY" e termina com qqr coisa.
*/
SELECT ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

/*
Nesse casso  ele pega tudo que tem centro, no caso, começa com qqr coisa e termina com qqr coisa.
*/
SELECT ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';

/*
há também como contar quantos carecteres vem após ou antes do coringa utilizando _ para cada caractere, por ex:
*/
SELECT ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%___CENTRO%';