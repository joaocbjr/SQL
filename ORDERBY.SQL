-- OERDENANDO DADOS COM ORDER BY

-- CRIANDO UMA TABELA PARA DEMOSNTRAÇÃO:

CREATE TABLE ALUNOS(
    NUMERO INT,
    NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE');

 SELECT * FROM ALUNOS;
 '''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      1 | CLARA   |
|      4 | MAFRA   |
|      5 | JANAINA |
|      1 | JANAINA |
|      3 | MARCELO |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)'''

-- ORDENANDO PELO NOME OU ÍNDICE DA COLUNA:

SELECT * FROM ALUNOS
ORDER BY NUMERO;

SELECT * FROM ALUNOS
ORDER BY 1;
'''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)'''

-- ORDENANDO POR MAIS DE UMA COLUNA

SELECT * FROM ALUNOS
ORDER BY NUMERO,NOME;

SELECT * FROM ALUNOS
ORDER BY 1,2;
'''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)'''

-- MESCLANDO ORDER BY COM PROJECAO
/* NÃO É PERMITIDO USAR O INDICE DA COLUNA */

SELECT NOME FROM ALUNOS
ORDER BY NUMERO,NOME;
'''
+---------+
| NOME    |
+---------+
| CLARA   |
| JANAINA |
| JOAO    |
| MARIA   |
| ANDRE   |
| ZOE     |
| CLARA   |
| MARCELO |
| GIOVANI |
| MAFRA   |
| ANTONIO |
| JANAINA |
| ANA     |
| VIVIANE |
+---------+
14 rows in set (0.00 sec)'''


-- ORDER BY ASC | DESC

SELECT * FROM ALUNOS
ORDER BY 1 ASC;
'''+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)'''

SELECT * FROM ALUNOS
ORDER BY 1 DESC;
'''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | ANA     |
|      6 | VIVIANE |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | CLARA   |
|      3 | MARCELO |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
+--------+---------+
14 rows in set (0.00 sec)'''

SELECT * FROM ALUNOS
ORDER BY 1,2 DESC;
'''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | MARCELO |
|      3 | CLARA   |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | VIVIANE |
|      6 | ANA     |
+--------+---------+
14 rows in set (0.00 sec)'''

SELECT * FROM ALUNOS
ORDER BY 1 DESC,2 DESC;
'''
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | VIVIANE |
|      6 | ANA     |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | MARCELO |
|      3 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
+--------+---------+
14 rows in set (0.00 sec)'''

-- ORDENANDO COM JOINS

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
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JOSE    | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
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
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 988585653 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
25 rows in set (0.00 sec)'''


-- ORDENANDO VIEWS COM JOINS
SELECT * FROM V_RELATORIO
ORDER BY 5;
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 658844545 | CENTRO     | VITORIA        | ES     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOS@IG.COM     | COM  | 784112545 | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 784512223 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | RES  | 784584555 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 784589653 | CENTRO     | VITORIA        | ES     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANTONIO | M    | ANTONIO@UOL.COM   | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 988585653 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
25 rows in set (0.00 sec)'''

