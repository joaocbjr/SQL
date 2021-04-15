''' GERAR VIZUALIZAÇÕES POR MEIO DE "ARMAZENAMENTO" '''

SELECT  C.NOME,
        C.SEXO,
        C.EMAIL,
        T.TIPO,
        T.NUMERO,
        E.BAIRRO,
        E.CIDADE,
        E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 988585653 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
25 rows in set (0.02 sec)'''

--CRIANDO UMA VIEW

CREATE VIEW RELATÓRIO AS
SELECT  C.NOME,
        C.SEXO,
        C.EMAIL,
        T.TIPO,
        T.NUMERO,
        E.BAIRRO,
        E.CIDADE,
        E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

--SELECIONANDO A VIEW

SELECT * FROM RELATÓRIO;
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 988585653 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
25 rows in set (0.00 sec)'''

--VISIALIZANDO A VIEW ENTRE AS TABELAS

SHOW TABLES;
'''
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |          '''/*
| relatório          |          */'''
| telefone           |
+--------------------+
5 rows in set (0.00 sec)'''

-- APAGANDO UMA VIEW

DROP VIEW RELATÓRIO;
'''
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
+--------------------+
4 rows in set (0.00 sec)'''

/* OBS - para diferenciar tabelas e views, 
inicie o nome das views com: V_         */

CREATE VIEW V_RELATORIO AS
SELECT  C.NOME,
        C.SEXO,
        IFNULL(C.EMAIL, 'CLIENTE SEM EMAIL') AS 'EMAIL',
        T.TIPO,
        T.NUMERO,
        E.BAIRRO,
        E.CIDADE,
        E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM V_RELATORIO;
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JORGE   | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 988585653 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
25 rows in set (0.00 sec)'''

SHOW TABLES;
'''
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |                  '''/*
| v_relatorio        |                  */'''
+--------------------+
5 rows in set (0.00 sec)'''

-- CRIANDO UMA QUERY DENTRO DA VIEW

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;
'''
+---------+-----------+--------+
| NOME    | NUMERO    | ESTADO |
+---------+-----------+--------+
| JORGE   | 784589653 | ES     |
| JORGE   | 658844545 | ES     |
| JOAO    | 784512223 | RJ     |
| CARLOS  | 784112545 | RJ     |
| JOAO    | 784584555 | RJ     |
| ANA     | 783330003 | SP     |
| ANA     | 784748812 | SP     |
| JOAO    | 784151544 | RJ     |
| JORGE   | 788851653 | ES     |
| CARLOS  | 988585653 | RJ     |
| ANDRE   | 68976565  | MG     |
| ANDRE   | 99656675  | MG     |
| KARLA   | 33567765  | RJ     |
| KARLA   | 88668786  | RJ     |
| KARLA   | 55689654  | RJ     |
| DANIELE | 88687979  | RJ     |
| LORENA  | 88965676  | ES     |
| ANTONIO | 89966809  | PR     |
| ANTONIO | 88679978  | SP     |
| ELAINE  | 99655768  | PR     |
| CARMEM  | 89955665  | SP     |
| ADRIANA | 77455786  | RJ     |
| ADRIANA | 89766554  | RJ     |
| JOICE   | 77755785  | RJ     |
| JOICE   | 44522578  | RJ     |
+---------+-----------+--------+
25 rows in set (0.00 sec)'''