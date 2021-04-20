-- TOMANDO COMO BASE PARA TESTES A VIEW V_REL_CONSUMO

SELECT * FROM V_REL_CONSUMO;
'''
+-----------+---------+------+----------------+--------+--------+--------+--------+
| IDCLIENTE | NOME    | SEXO | CIDADE         | ESTADO | JAN    | FEV    | MAR    |
+-----------+---------+------+----------------+--------+--------+--------+--------+
|         1 | JOAO    | M    | RIO DE JANEIRO | RJ     | 511.47 | 216.32 | 871.57 |
|         2 | CARLOS  | M    | RIO DE JANEIRO | RJ     | 929.86 | 488.96 | 882.08 |
|         3 | ANA     | F    | SAO PAULO      | SP     | 390.20 | 994.62 | 394.83 |
|         4 | CLARA   | F    | B. HORIZONTE   | MG     | 144.63 | 967.72 | 832.86 |
|         5 | JOSE    | M    | VITORIA        | ES     | 660.50 | 964.20 | 463.81 |
|         6 | CELIA   | F    | RIO DE JANEIRO | RJ     | 621.43 | 918.03 | 477.10 |
|         7 | PAULA   | F    | NITEROI        | RJ     | 719.70 | 255.27 | 394.91 |
|         8 | FLAVIO  | M    | RIO DE JANEIRO | RJ     | 747.41 | 845.36 |  32.73 |
|         9 | ANDRE   | M    | B. HORIZONTE   | MG     | 631.58 | 480.69 | 484.03 |
|        10 | GIOVANA | F    | RIO DE JANEIRO | RJ     | 724.71 | 961.03 | 794.61 |
|        11 | KARLA   | F    | RIO DE JANEIRO | RJ     | 727.21 | 922.80 | 804.50 |
|        12 | DANIELE | F    | RIO DE JANEIRO | RJ     | 782.63 | 355.31 |  65.41 |
|        13 | LORENA  | F    | VITORIA        | ES     | 324.62 | 668.39 | 389.33 |
|        14 | EDUARDO | M    | RIO DE JANEIRO | RJ     | 885.56 | 696.61 | 934.35 |
|        15 | ANTONIO | M    | CURITIBA       | PR     |  93.63 | 147.12 | 881.63 |
|        16 | ANTONIO | M    | SAO PAULO      | SP     | 152.30 | 832.84 | 776.92 |
|        17 | ELAINE  | F    | CURITIBA       | PR     | 129.97 | 501.67 | 107.72 |
|        18 | CARMEM  | F    | SAO PAULO      | SP     | 260.32 | 570.20 | 829.33 |
|        19 | ADRIANA | F    | RIO DE JANEIRO | RJ     | 758.46 | 364.06 | 762.16 |
|        20 | JOICE   | F    | RIO DE JANEIRO | RJ     |  81.03 | 814.78 | 782.21 |
+-----------+---------+------+----------------+--------+--------+--------+--------+
20 rows in set (0.00 sec)'''

/* O CLIENTE QUE COMPROU MENOS EM MARCO (ID, NOME E VALOR) */

SELECT IDCLIENTE, NOME, MAR FROM V_REL_CONSUMO
WHERE MAR = (SELECT MIN(MAR) FROM V_REL_CONSUMO);
'''
+-----------+--------+-------+
| IDCLIENTE | NOME   | MAR   |
+-----------+--------+-------+
|         8 | FLAVIO | 32.73 |
+-----------+--------+-------+
1 row in set (0.01 sec)'''

/* NOME E O VALOR DE QUEM COMPROU MAIS EM MARCO */

SELECT IDCLIENTE, NOME, MAR FROM V_REL_CONSUMO
WHERE MAR = (SELECT MAX(MAR) FROM V_REL_CONSUMO);
'''
+-----------+---------+--------+
| IDCLIENTE | NOME    | MAR    |
+-----------+---------+--------+
|        14 | EDUARDO | 934.35 |
+-----------+---------+--------+
1 row in set (0.00 sec)'''

/* QUEM COMPROU MAIS QUE O VALOR MEDIO DE FEVEREIRO*/

SELECT  TRUNCATE(AVG(FEV),2) AS MEDIA_FEVEREIRO
FROM V_REL_CONSUMO;
'''
+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|          648.29 |
+-----------------+
1 row in set (0.00 sec)'''

SELECT IDCLIENTE, NOME, FEV FROM V_REL_CONSUMO
WHERE FEV > (SELECT AVG(FEV) FROM V_REL_CONSUMO);
'''
+-----------+---------+--------+
| IDCLIENTE | NOME    | FEV    |
+-----------+---------+--------+
|         3 | ANA     | 994.62 |
|         4 | CLARA   | 967.72 |
|         5 | JOSE    | 964.20 |
|         6 | CELIA   | 918.03 |
|         8 | FLAVIO  | 845.36 |
|        10 | GIOVANA | 961.03 |
|        11 | KARLA   | 922.80 |
|        13 | LORENA  | 668.39 |
|        14 | EDUARDO | 696.61 |
|        16 | ANTONIO | 832.84 |
|        20 | JOICE   | 814.78 |
+-----------+---------+--------+
11 rows in set (0.00 sec)'''

SELECT IDCLIENTE, NOME, FEV FROM V_REL_CONSUMO
WHERE FEV > (SELECT AVG(FEV) FROM V_REL_CONSUMO);

-- CALCULO COM LINHAS

SELECT  IDCLIENTE, NOME, SEXO, ESTADO, JAN, FEV, MAR,
        (JAN+FEV+MAR) AS 'TOTAL',
        TRUNCATE((JAN+FEV+MAR)/3,2) AS 'MÉDIA',
        (JAN+FEV+MAR) * .25 AS 'DESC 25%'
FROM V_REL_CONSUMO;
'''
+-----------+---------+------+--------+--------+--------+--------+---------+--------+----------+
| IDCLIENTE | NOME    | SEXO | ESTADO | JAN    | FEV    | MAR    | TOTAL   | MÉDIA  | DESC 25% |
+-----------+---------+------+--------+--------+--------+--------+---------+--------+----------+
|         1 | JOAO    | M    | RJ     | 511.47 | 216.32 | 871.57 | 1599.36 | 533.12 |   399.84 |
|         2 | CARLOS  | M    | RJ     | 929.86 | 488.96 | 882.08 | 2300.90 | 766.96 |   575.22 |
|         3 | ANA     | F    | SP     | 390.20 | 994.62 | 394.83 | 1779.65 | 593.21 |   444.91 |
|         4 | CLARA   | F    | MG     | 144.63 | 967.72 | 832.86 | 1945.21 | 648.40 |   486.30 |
|         5 | JOSE    | M    | ES     | 660.50 | 964.20 | 463.81 | 2088.51 | 696.17 |   522.13 |
|         6 | CELIA   | F    | RJ     | 621.43 | 918.03 | 477.10 | 2016.56 | 672.18 |   504.14 |
|         7 | PAULA   | F    | RJ     | 719.70 | 255.27 | 394.91 | 1369.88 | 456.62 |   342.47 |
|         8 | FLAVIO  | M    | RJ     | 747.41 | 845.36 |  32.73 | 1625.50 | 541.83 |   406.37 |
|         9 | ANDRE   | M    | MG     | 631.58 | 480.69 | 484.03 | 1596.30 | 532.10 |   399.08 |
|        10 | GIOVANA | F    | RJ     | 724.71 | 961.03 | 794.61 | 2480.35 | 826.78 |   620.09 |
|        11 | KARLA   | F    | RJ     | 727.21 | 922.80 | 804.50 | 2454.51 | 818.17 |   613.63 |
|        12 | DANIELE | F    | RJ     | 782.63 | 355.31 |  65.41 | 1203.35 | 401.11 |   300.84 |
|        13 | LORENA  | F    | ES     | 324.62 | 668.39 | 389.33 | 1382.34 | 460.77 |   345.58 |
|        14 | EDUARDO | M    | RJ     | 885.56 | 696.61 | 934.35 | 2516.52 | 838.83 |   629.13 |
|        15 | ANTONIO | M    | PR     |  93.63 | 147.12 | 881.63 | 1122.38 | 374.12 |   280.59 |
|        16 | ANTONIO | M    | SP     | 152.30 | 832.84 | 776.92 | 1762.06 | 587.35 |   440.52 |
|        17 | ELAINE  | F    | PR     | 129.97 | 501.67 | 107.72 |  739.36 | 246.45 |   184.84 |
|        18 | CARMEM  | F    | SP     | 260.32 | 570.20 | 829.33 | 1659.85 | 553.28 |   414.96 |
|        19 | ADRIANA | F    | RJ     | 758.46 | 364.06 | 762.16 | 1884.68 | 628.22 |   471.17 |
|        20 | JOICE   | F    | RJ     |  81.03 | 814.78 | 782.21 | 1678.02 | 559.34 |   419.51 |
+-----------+---------+------+--------+--------+--------+--------+---------+--------+----------+
20 rows in set (0.02 sec)'''