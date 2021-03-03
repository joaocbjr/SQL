/* COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES LOGICOS */

/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) FROM CLIENTE;
'''
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.02 sec)'''

/* OPERADOR GROUP BY */

SELECT SEXO, COUNT(*)
FROM CLIENTE
GROUP BY SEXO;
'''
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| F    |        4 |
| M    |        2 |
+------+----------+
2 rows in set (0.00 sec)'''

/* PERFORMANCE EM OPERADORES LOGICOS */

/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHER = SEXO = F
30% MORA NO RIO DE JANEIRO
*/
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR ENDERECO LIKE '%RIO DE JANEIRO%';
'''
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
+--------+------+-----------------------------------------------+
5 rows in set (0.00 sec)'''
/*
SITUACAO - TRATAMENTO COM E / AND
70% MULHER = SEXO = F
30% MORA NO RIO DE JANEIRO
*/
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE ENDERECO LIKE '%RIO DE JANEIRO%';
AND SEXO = 'F';
'''
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
+--------+------+-----------------------------------------------+
3 rows in set (0.00 sec)'''