'''
    O cliente Tera Comércio de Produtos S.A, solicitou a modelagem de um banco de dados 
para cadastro dos seus clientes.
    A função da Unidados é a análise dos requisitos junto aos usuários para a correta 
construção do produto. O cliente deseja que inicialmente os scripts sejam construídos para 
o Banco de Dados MySQL, porém, posteriormente pode haver mudança no ambiente e consequentemente 
adaptação dos scripts para outros produtos de SGBD.
    O cliente não quer nenhuma informação relativa à vendas ou estoque, desejando somente as
informações primárias de Clientes.
 
    O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa.
A solicitação é somente para livros e não há a necessidade de realizar busca em outras tabelas.
Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros, mas as buscas 
estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse funcionário.
    Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. 
As queries são as seguintes:

1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por 
São Paulo ou Rio de Janeiro (Questão Desafio).

    Estamos no início da modelagem para um sistema, e o nosso gestor nos pediu a modelagem da tabela 
de clientes com a seguinte regra de negócios:

ENDERECO - OBRIGATORIO O CADASTRO DE UM ENDERECO (NO MAXIMO 1)
(1,1)
TELEFONE - O CLIENTE NAO É OBRIGADO A INFORMAR TELEFONE
POREM, CASO QUEIRA, ELE PODE INFORMAR MAIS DE UM
(0,n)

'''

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE LIVRARIA;

/* CONECTANDO-SE AO BANCO */

USE LIVRARIA;

/* CRIANDO A TABELA DE LIVROS */

CREATE TABLE LIVROS(
    LIVRO VARCHAR(30),
    AUTOR VARCHAR(30),
    SEXO CHAR(1),
    PAGINAS INT(2),
    EDITORA VARCHAR(20),
    VALOR FLOAT(7,2),
    UF CHAR(2),
    ANO INT(4)
);


INSERT INTO LIVROS VALUES('Cavaleiro Real', 'Ana Claudia', 'F',	465, 'Atlas', 49.90, 'RJ', '2009');
INSERT INTO LIVROS VALUES('SQL para leigos', 'João Nunes', 'M',	450, 'Addison', 98.00, 'SP', '2018');
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares', 'F',	210, 'Atlas', 45.00, 'RJ',	'2008');
INSERT INTO LIVROS VALUES('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ','2018');
INSERT INTO LIVROS VALUES('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta',	150.98, 'RJ', '2019');
INSERT INTO LIVROS VALUES('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60.00, 'MG', '2016');
INSERT INTO LIVROS VALUES('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia',	100.00, 'ES', '2015');
INSERT INTO LIVROS VALUES('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES','2011');
INSERT INTO LIVROS VALUES('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson',	130.98,	'RS', '2018');
INSERT INTO LIVROS VALUES('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP','2017');


/* ============= RESOLUÇÃO ================ */

/* 1 – Trazer todos os dados. */

SELECT * FROM LIVROS;
'''
+---------------------+-------------------+------+---------+-------------+--------+------+------+
| LIVRO               | AUTOR             | SEXO | PAGINAS | EDITORA     | VALOR  | UF   | ANO  |
+---------------------+-------------------+------+---------+-------------+--------+------+------+
| Cavaleiro Real      | Ana Claudia       | F    |     465 | Atlas       |  49.90 | RJ   | 2009 |
| SQL para leigos     | João Nunes        | M    |     450 | Addison     |  98.00 | SP   | 2018 |
| Receitas Caseiras   | Celia Tavares     | F    |     210 | Atlas       |  45.00 | RJ   | 2008 |
| Pessoas Efetivas    | Eduardo Santos    | M    |     390 | Beta        |  78.99 | RJ   | 2018 |
| Habitos Saudáveis   | Eduardo Santos    | M    |     630 | Beta        | 150.98 | RJ   | 2019 |
| A Casa Marrom       | Hermes Macedo     | M    |     250 | Bubba       |  60.00 | MG   | 2016 |
| Estacio Querido     | Geraldo Francisco | M    |     310 | Insignia    | 100.00 | ES   | 2015 |
| Pra sempre amigas   | Leda Silva        | F    |     510 | Insignia    |  78.98 | ES   | 2011 |
| Copas Inesqueciveis | Marco Alcantara   | M    |     200 | Larson      | 130.98 | RS   | 2018 |
| O poder da mente    | Clara Mafra       | F    |     120 | Continental |  56.58 | SP   | 2017 |
+---------------------+-------------------+------+---------+-------------+--------+------+------+
10 rows in set (0.00 sec)
'''

/* 2 – Trazer o nome do livro e o nome da editora */

SELECT LIVRO, EDITORA FROM LIVROS;
'''
+---------------------+-------------+
| LIVRO               | EDITORA     |
+---------------------+-------------+
| Cavaleiro Real      | Atlas       |
| SQL para leigos     | Addison     |
| Receitas Caseiras   | Atlas       |
| Pessoas Efetivas    | Beta        |
| Habitos Saudáveis   | Beta        |
| A Casa Marrom       | Bubba       |
| Estacio Querido     | Insignia    |
| Pra sempre amigas   | Insignia    |
| Copas Inesqueciveis | Larson      |
| O poder da mente    | Continental |
+---------------------+-------------+
10 rows in set (0.00 sec)
'''

/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */

SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';
'''
+---------------------+------+
| LIVRO               | UF   |
+---------------------+------+
| SQL para leigos     | SP   |
| Pessoas Efetivas    | RJ   |
| Habitos Saudáveis   | RJ   |
| A Casa Marrom       | MG   |
| Estacio Querido     | ES   |
| Copas Inesqueciveis | RS   |
+---------------------+------+
6 rows in set (0.00 sec)
'''

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */

SELECT AUTOR, LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';
'''
+---------------+-------------------+---------+
| AUTOR         | LIVRO             | PAGINAS |
+---------------+-------------------+---------+
| Ana Claudia   | Cavaleiro Real    |     465 |
| Celia Tavares | Receitas Caseiras |     210 |
| Leda Silva    | Pra sempre amigas |     510 |
| Clara Mafra   | O poder da mente  |     120 |
+---------------+-------------------+---------+
4 rows in set (0.00 sec)
'''

/* 5 – Trazer os valores dos livros das editoras de São Paulo. */

SELECT UF, LIVRO, VALOR FROM LIVROS
WHERE UF = 'SP';
'''
+------+------------------+-------+
| UF   | LIVRO            | VALOR |
+------+------------------+-------+
| SP   | SQL para leigos  | 98.00 |
| SP   | O poder da mente | 56.58 |
+------+------------------+-------+
2 rows in set (0.00 sec)
'''

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por 
São Paulo ou Rio de Janeiro (Questão Desafio). */

SELECT LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO
FROM LIVROS
WHERE (SEXO = 'M' AND UF = 'RJ')
   OR (SEXO = 'M' AND UF = 'SP');
'''
+--------------------+----------------+------+---------+---------+--------+------+------+
| LIVRO              | AUTOR          | SEXO | PAGINAS | EDITORA | VALOR  | UF   | ANO  |
+--------------------+----------------+------+---------+---------+--------+------+------+
| SQL para leigos    | João Nunes     | M    |     450 | Addison |  98.00 | SP   | 2018 |
| Pessoas Efetivas   | Eduardo Santos | M    |     390 | Beta    |  78.99 | RJ   | 2018 |
| Habitos Saudáveis  | Eduardo Santos | M    |     630 | Beta    | 150.98 | RJ   | 2019 |
+--------------------+----------------+------+---------+---------+--------+------+------+
3 rows in set (0.00 sec)
'''
