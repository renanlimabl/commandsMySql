/*TROCAR SENHA BD LOCAL*/
ALTER USER 'root'@'localhost' IDENTIFIED BY '20193710';

-- TROCAR SENHA BD DE TODOS HOSTS
ALTER USER 'root'@'%' IDENTIFIED BY '20193710';

/*CRIA BANCO DE DADOS*/
CREATE DATABASE livraria;

/*SELECIONA BANCO DE DADOS*/
USE livraria;

/*CRIA TABELA*/
CREATE TABLE livros(
  nome_do_livro VARCHAR(100),
  nome_do_autor VARCHAR(50),
  sexo CHAR(1),
  numero_paginas INT(4),
  nome_da_editora VARCHAR(50),
  valor_do_livro FLOAT(10),
  estado_da_editora CHAR(2),
  ano_publicacao INT(4)
);

/*MODIFICANDO UMA COLUNA DA TABELA*/
ALTER TABLE livros MODIFY valor_do_livro FLOAT(10, 2);

/*MOSTRA TABELA*/
SHOW TABLES;

/*ESTRUTURA DA TABELA*/
DESC livros;

/*INSERINDO DADOS*/
INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Cavaleiro Real', 'Ana Cláudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Hábitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);

INSERT INTO livros(nome_do_livro, nome_do_autor, sexo, numero_paginas, nome_da_editora, 
valor_do_livro, estado_da_editora, ano_publicacao) VALUES ('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.85, 'RS', 2017);


/*TRAZENDO TODOS OS DADOS*/
SELECT * FROM livros;

/*TRAZENDO NOME DO LIVRO E NOME DA EDITORA*/
SELECT nome_do_livro, nome_da_editora
FROM livros;

/*TRAZER NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO*/
SELECT nome_do_livro, estado_da_editora 
FROM livros 
WHERE sexo = 'M';

/*TRAZER O NOME DO LIVRO E O NUMERO DE PÁGINAS PELO SEXO FEMININO*/
SELECT nome_do_livro, numero_paginas
FROM livros
WHERE sexo = 'F';

/*TRAZER OS VALORES DOS LIVROS DA EDITORAS DE SÃO PAULO*/
SELECT nome_do_livro, valor_do_livro 
FROM livros 
WHERE estado_da_editora = 'SP';

/*TRAZER OS DADOS DOS AUTORES DO SEXO M, PELO ESTADO SP OU RJ*/
SELECT * FROM livros
WHERE sexo = 'M'
AND (estado_da_editora = 'RJ' OR estado_da_editora = 'SP');
