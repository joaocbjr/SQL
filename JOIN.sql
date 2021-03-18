/* SELECAO, PROJECE E JUNCAO */

-- PROJECAO -> É TUDO QUE VOCÊ QUER VER NA TELA

SELECT NOW() AS DATA_ATUAL;
'''
+---------------------+
| DATA_ATUAL          |
+---------------------+
| 2021-03-17 12:33:55 |
+---------------------+
1 row in set (0.02 sec)'''

SELECT 2 + 2 AS SOMA;
'''
+------+
| SOMA |
+------+
|    4 |
+------+
1 row in set (0.00 sec)'''

USE COMERCIO;
SELECT 2 + 2 AS SOMA, NOME, NOW()
FROM CLIENTE;
'''
+------+--------+---------------------+
| SOMA | NOME   | NOW()               |
+------+--------+---------------------+
|    4 | JOAO   | 2021-03-17 12:35:07 |
|    4 | CARLOS | 2021-03-17 12:35:07 |
|    4 | ANA    | 2021-03-17 12:35:07 |
|    4 | CLARA  | 2021-03-17 12:35:07 |
|    4 | JORGE  | 2021-03-17 12:35:07 |
|    4 | CELIA  | 2021-03-17 12:35:07 |
+------+--------+---------------------+
6 rows in set (0.01 sec)'''


-- SELECAO -> É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
-- A CLAUSULA DE SELECAO É O WHERE

SELECT NOME, SEXO, EMAIL -- PROJECAO
FROM CLIENTE             -- ORIGEM
WHERE SEXO = 'F';        -- SELECAO

SELECT NUMERO            -- PROJECAO
FROM TELEFONE            -- ORIGEM
WHERE TIPO = 'CEL';      -- SELECAO


-- JUNCAO -> JOIN 

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE
ORDER BY IDCLIENTE;

SELECT BAIRRO, CIDADE, ID_CLIENTE
FROM ENDERECO
ORDER BY ID_CLIENTE;

'''
+--------+---------------+-----------+
| NOME   | EMAIL         | IDCLIENTE |
+--------+---------------+-----------+
| JOAO   | JOAO@IG.COM   |         1 |
| CARLOS | CARLOS@IG.COM |         2 |
| ANA    | ANA@IG.COM    |         3 |
| CLARA  | NULL          |         4 |
| JORGE  | JORGE@IG.COM  |         5 |
| CELIA  | CELIA@IG.COM  |         6 |
+--------+---------------+-----------+
6 rows in set (0.00 sec)
+----------+----------------+------------+
| BAIRRO   | CIDADE         | ID_CLIENTE |
+----------+----------------+------------+
| CENTRO   | RIO DE JANEIRO |          1 |
| ESTACIO  | RIO DE JANEIRO |          2 |
| JARDINS  | SAO PAULO      |          3 |
| CENTRO   | B. HORIZONTE   |          4 |
| CENTRO   | VITORIA        |          5 |
| FLAMENGO | RIO DE JANEIRO |          6 |
+----------+----------------+------------+
6 rows in set (0.00 sec)
'''

--> METODO ERRADO

-- NOME, SEXO, BAIRRO, CIDADE --

SELECT NOME, SEXO, BAIRRO, CIDADE   -- PROJECAO
FROM CLIENTE, ENDERECO              -- ORIGEM
WHERE IDCLIENTE = ID_CLIENTE;       -- JUNCAO
/*
+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+
6 rows in set (0.00 sec)
*/

--> METODO CORRETO

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;
'''
+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+
6 rows in set (0.00 sec)'''

SELECT NOME, SEXO, BAIRRO, CIDADE   -- PROJECAO
FROM CLIENTE                        -- ORIGEM
INNER JOIN ENDERECO                 -- JUNCAO
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F';                   -- SELECAO
'''
+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | B. HORIZONTE   |
| CELIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+
3 rows in set (0.00 sec)'''

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;
'''
+--------+------+---------------+------+-----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO    |
+--------+------+---------------+------+-----------+
| JORGE  | M    | JORGE@IG.COM  | CEL  | 784589653 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 658844545 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 784512223 |
| CARLOS | M    | CARLOS@IG.COM | COM  | 784112545 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 784584555 |
| ANA    | F    | ANA@IG.COM    | CEL  | 783330003 |
| ANA    | F    | ANA@IG.COM    | CEL  | 784748812 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 784151544 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 788851653 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 988585653 |
+--------+------+---------------+------+-----------+
10 rows in set (0.01 sec)'''