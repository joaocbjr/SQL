-- FUNCOES DE AGREGACAO NUMERICA

'''CRIAREMOS UMA TABELA CONSUMO COM HISTORICO MENSAL POR CLIENTE'''

CREATE TABLE CONSUMO(
    IDCONSUMO INT PRIMARY KEY AUTO_INCREMENT,
    JAN FLOAT(10,2) NOT NULL,
    FEV FLOAT(10,2) NOT NULL,
    MAR FLOAT(10,2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)  
);
    '''
    +------------+-------------+------+-----+---------+----------------+
    | Field      | Type        | Null | Key | Default | Extra          |
    +------------+-------------+------+-----+---------+----------------+
    | IDCONSUMO  | int(11)     | NO   | PRI | NULL    | auto_increment |
    | JAN        | float(10,2) | NO   |     | NULL    |                |
    | FEV        | float(10,2) | NO   |     | NULL    |                |
    | MAR        | float(10,2) | NO   |     | NULL    |                |
    | ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
    +------------+-------------+------+-----+---------+----------------+
    5 rows in set (0.00 sec)'''


    INSERT INTO CONSUMO VALUES(NULL,511.47, 216.32, 871.57, 1);
    INSERT INTO CONSUMO VALUES(NULL,929.86, 488.96, 882.08, 2);
    INSERT INTO CONSUMO VALUES(NULL,390.20, 994.62, 394.83, 3);
    INSERT INTO CONSUMO VALUES(NULL,144.63, 967.72, 832.86, 4);
    INSERT INTO CONSUMO VALUES(NULL,660.50, 964.20, 463.81, 5);
    INSERT INTO CONSUMO VALUES(NULL,621.43, 918.03, 477.10, 6);
    INSERT INTO CONSUMO VALUES(NULL,719.70, 255.27, 394.91, 7);
    INSERT INTO CONSUMO VALUES(NULL,747.41, 845.36, 32.73, 8);
    INSERT INTO CONSUMO VALUES(NULL,631.58, 480.69, 484.03, 9);
    INSERT INTO CONSUMO VALUES(NULL,724.71, 961.03, 794.61, 10);
    INSERT INTO CONSUMO VALUES(NULL,727.21, 922.80, 804.50, 11);
    INSERT INTO CONSUMO VALUES(NULL,782.63, 355.31, 65.41, 12);
    INSERT INTO CONSUMO VALUES(NULL,324.62, 668.39, 389.33, 13);
    INSERT INTO CONSUMO VALUES(NULL,885.56, 696.61, 934.35, 14);
    INSERT INTO CONSUMO VALUES(NULL,93.63, 147.12, 881.63, 15);
    INSERT INTO CONSUMO VALUES(NULL,152.30, 832.84, 776.92, 16);
    INSERT INTO CONSUMO VALUES(NULL,129.97, 501.67, 107.72, 17);
    INSERT INTO CONSUMO VALUES(NULL,260.32, 570.20, 829.33, 18);
    INSERT INTO CONSUMO VALUES(NULL,758.46, 364.06, 762.16, 19);
    INSERT INTO CONSUMO VALUES(NULL,81.03, 814.78, 782.21, 20);
    '''
    +-----------+--------+--------+--------+------------+
    | IDCONSUMO | JAN    | FEV    | MAR    | ID_CLIENTE |
    +-----------+--------+--------+--------+------------+
    |         1 | 511.47 | 216.32 | 871.57 |          1 |
    |         2 | 929.86 | 488.96 | 882.08 |          2 |
    |         3 | 390.20 | 994.62 | 394.83 |          3 |
    |         4 | 144.63 | 967.72 | 832.86 |          4 |
    |         5 | 660.50 | 964.20 | 463.81 |          5 |
    |         6 | 621.43 | 918.03 | 477.10 |          6 |
    |         7 | 719.70 | 255.27 | 394.91 |          7 |
    |         8 | 747.41 | 845.36 |  32.73 |          8 |
    |         9 | 631.58 | 480.69 | 484.03 |          9 |
    |        10 | 724.71 | 961.03 | 794.61 |         10 |
    |        11 | 727.21 | 922.80 | 804.50 |         11 |
    |        12 | 782.63 | 355.31 |  65.41 |         12 |
    |        13 | 324.62 | 668.39 | 389.33 |         13 |
    |        14 | 885.56 | 696.61 | 934.35 |         14 |
    |        15 |  93.63 | 147.12 | 881.63 |         15 |
    |        16 | 152.30 | 832.84 | 776.92 |         16 |
    |        17 | 129.97 | 501.67 | 107.72 |         17 |
    |        18 | 260.32 | 570.20 | 829.33 |         18 |
    |        19 | 758.46 | 364.06 | 762.16 |         19 |
    |        20 |  81.03 | 814.78 | 782.21 |         20 |
    +-----------+--------+--------+--------+------------+
    20 rows in set (0.00 sec)'''

--VIEW - RELATORIO DE CONSUMO

CREATE VIEW V_REL_CONSUMO AS
    SELECT  C.IDCLIENTE, C.NOME, C.SEXO,
            E.CIDADE, E.ESTADO,
            S.JAN, S.FEV, S.MAR

    FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN CONSUMO S
    ON C.IDCLIENTE = S.ID_CLIENTE
    ORDER BY IDCLIENTE;

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

--> MAX: TRAZ O VALOR MAXIMO DE UMA COLUNA

SELECT MAX(FEV) AS MAIOR_FEV
FROM V_REL_CONSUMO;
''' 
+-----------+
| MAIOR_FEV |
+-----------+
|    994.62 |
+-----------+
1 row in set (0.01 sec)'''

--> MIN: TRAZ O VALOR MINIMO DE UMA COLUNA

SELECT MIN(FEV) AS MENOR_FEV
FROM V_REL_CONSUMO;
'''
+-----------+
| MENOR_FEV |
+-----------+
|    147.12 |
+-----------+
1 row in set (0.00 sec)'''

--> AVG: TRAZ O VALOR MEDIO DE UMA COLUNA

SELECT AVG(FEV) AS MEDIA_FEV
FROM V_REL_CONSUMO;
'''
+------------+
| MEDIA_FEV  |
+------------+
| 648.299004 |
+------------+
1 row in set (0.00 sec)'''

--> TRUNCATE: PADRONIZA A QUANTIDADE DE CASA DECIMAL

SELECT  MAX(JAN) AS MAX_JAN,
        MIN(JAN) AS MIN_JAN,
        TRUNCATE(AVG(JAN),2) AS AVG_JAN
FROM V_REL_CONSUMO;
'''
+---------+---------+---------+
| MAX_JAN | MIN_JAN | AVG_JAN |
+---------+---------+---------+
|  929.86 |   81.03 |  513.86 |
+---------+---------+---------+
1 row in set (0.02 sec)'''

--> SUM: TRAZ A SOMA DE UMA COLUNA

SELECT  SUM(JAN) AS TOTAL_JAN,
        SUM(FEV) AS TOTAL_FEV,
        SUM(MAR) AS TOTAL_MAR
FROM V_REL_CONSUMO;
'''
+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
|  10277.22 |  12965.98 |  11962.09 |
+-----------+-----------+-----------+
1 row in set (0.01 sec)'''
