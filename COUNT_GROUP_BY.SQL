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
