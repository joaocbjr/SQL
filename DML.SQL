/*  DML - DATA MANIPULATION LANGUAGE    */

-- INSERT

INSERT INTO CLIENTE VALUES(NULL,'PAULA','M',NULL,'784445633');
INSERT INTO ENDERECO VALUES(NULL,'RUA JOAQUIM SILVA','ALVORADA','NITEROI','RJ',7);

SELECT * FROM CLIENTE;
'''
+-----------+--------+------+---------------+---------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF           |
+-----------+--------+------+---------------+---------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 7689562248785 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 7855456224845 |
|         3 | ANA    | F    | ANA@IG.COM    | 335689662845  |
|         4 | CLARA  | F    | NULL          | 252589224845  |
|         5 | JORGE  | M    | JORGE@IG.COM  | 1254224845    |
|         6 | CELIA  | F    | CELIA@IG.COM  | 7447689748885 |
|         7 | PAULA  | M    | NULL          | 784445633     |
+-----------+--------+------+---------------+---------------+
7 rows in set (0.00 sec)'''

-- FILTROS

SELECT * FROM CLIENTE
WHERE SEXO = 'M';
'''
+-----------+--------+------+---------------+---------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF           |
+-----------+--------+------+---------------+---------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 7689562248785 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 7855456224845 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 1254224845    |
|         7 | PAULA  | M    | NULL          | 784445633     |
+-----------+--------+------+---------------+---------------+
4 rows in set (0.00 sec)'''

-- UPDATE

SELECT * FROM CLIENTE       --OBS.: VEREFIQUE A QUERY QUE DESEJA MODIFICAR
WHERE IDCLIENTE = 7;
'''
+-----------+-------+------+-------+-----------+
| IDCLIENTE | NOME  | SEXO | EMAIL | CPF       |
+-----------+-------+------+-------+-----------+
|         7 | PAULA | M    | NULL  | 784445633 |
+-----------+-------+------+-------+-----------+
1 row in set (0.00 sec)'''

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 7;

SELECT * FROM CLIENTE;
'''
+-----------+--------+------+---------------+---------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF           |
+-----------+--------+------+---------------+---------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 7689562248785 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 7855456224845 |
|         3 | ANA    | F    | ANA@IG.COM    | 335689662845  |
|         4 | CLARA  | F    | NULL          | 252589224845  |
|         5 | JORGE  | M    | JORGE@IG.COM  | 1254224845    |
|         6 | CELIA  | F    | CELIA@IG.COM  | 7447689748885 |
|         7 | PAULA  | F    | NULL          | 784445633     |
+-----------+--------+------+---------------+---------------+
7 rows in set (0.00 sec)'''

-- DELETE   (VERIFICAR NA SEÇÃO DELETE)