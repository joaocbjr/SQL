-- FILTRANDO VALORES NULOS

USE PROJETO;

SELECT * FROM CLIENTE;
'''
+--------+------+-----------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL           | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+-----------------+-----------+-----------+-----------------------------------------------+
| JORGE  | M    | NULL            | 885755096 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| JOAO   | M    | JOAO@GMAIL.COM  | 853651257 | 229231148 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| LILIAN | F    | NULL            |  74855689 | 89574544  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | ANA@GMAIL.COM   | 784451249 | 547884585 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | CARLA@GMAIL.COM |   7745879 | 68897458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| CELIA  | F    | CELIA@GMAIL.COM | 541524786 | 258967845 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
+--------+------+-----------------+-----------+-----------+-----------------------------------------------+
6 rows in set (0.03 sec)'''

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;
'''
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JORGE  | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+
2 rows in set (0.00 sec)'''

-- FILTRANTRO NÃO NULOS

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;
'''
+-------+------+-----------------------------------------------+
| NOME  | SEXO | ENDERECO                                      |
+-------+------+-----------------------------------------------+
| JOAO  | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| ANA   | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| CELIA | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
+-------+------+-----------------------------------------------+
4 rows in set (0.00 sec)'''
