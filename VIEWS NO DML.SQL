/* UPDATE, DELETE, INSERT E SELECT - DML */
-------------------------------------------------------


CREATE TABLE JOGADORES(
    IDJOGADOR INT,
    NOME VARCHAR(30),
    ESTADO CHAR(2)
);

INSERT INTO JOGADORES VALUES(1,'GUERREIRO','RS');
INSERT INTO JOGADORES VALUES(2,'GABIGOL','RJ');
INSERT INTO JOGADORES VALUES(3,'GANSO','RJ');
INSERT INTO JOGADORES VALUES(4,'NENE','RJ');
INSERT INTO JOGADORES VALUES(5,'LOVE','SP');

CREATE VIEW V_JOGADORES AS
SELECT NOME, ESTADO
FROM JOGADORES;

SELECT * FROM V_JOGADORES;
'''
+-----------+--------+
| NOME      | ESTADO |
+-----------+--------+
| GUERREIRO | RS     |
| GABIGOL   | RJ     |
| GANSO     | RJ     |
| NENE      | RJ     |
| LOVE      | SP     |
+-----------+--------+
5 rows in set (0.00 sec)'''


'''------------------ U P D A T E ------------------'''

UPDATE V_RELATORIO SET NOME = 'JOSE' WHERE NOME = 'JORGE';
'''
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0'''

SELECT * FROM V_RELATORIO;
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
| JOAO    | M    | JOAO@IG.COM       | COM  | 784151544 | CENTRO     | RIO DE JANEIRO | RJ     |            '''/*
| JOSE    | M    | JORGE@IG.COM      | RES  | 788851653 | CENTRO     | VITORIA        | ES     |            */'''
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

-- É PERMITIDO FAZER UPDATE EM VIWS COM JOIN.


'''------------------ D E L E T E ------------------'''

DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';

'''ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio''''

--OBS: Não permitido DELETAR em View com JOIN

-------------------------------------------------------

DELETE FROM V_JOGADORES WHERE NOME = 'GUERREIRO';

SELECT * FROM V_JOGADORES;
'''
+---------+--------+
| NOME    | ESTADO |
+---------+--------+
| GABIGOL | RJ     |
| GANSO   | RJ     |
| NENE    | RJ     |
| LOVE    | SP     |
+---------+--------+
4 rows in set (0.00 sec)'''

--OBS: É permitido DELETAR em View sem JOIN

'''------------------ I N S E R T ------------------'''

INSERT INTO V_RELATORIO VALUES(
    'ANDREIA','F','ANDREIA@GMAIL.COM','CEL','873547864','CENTRO','VITORIA','ES'
);
'''ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list'''

--OBS: Não é permitido INSERT em View com Join

-------------------------------------------------------

INSERT INTO V_JOGADORES VALUES('GUERREIRO','RS');
'''
+-----------+-----------+--------+
| IDJOGADOR | NOME      | ESTADO |
+-----------+-----------+--------+
|         2 | GABIGOL   | RJ     |
|         3 | GANSO     | RJ     |
|         4 | NENE      | RJ     |
|         5 | LOVE      | SP     |
|      NULL | GUERREIRO | RS     |
+-----------+-----------+--------+
5 rows in set (0.00 sec)'''

--OBS: É permitido INSERT em View sem Join


'''------------------  S E L E C T ------------------'''

SELECT * FROM V_RELATORIO
WHERE SEXO = 'F';
'''
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ANA     | F    | ANA@IG.COM        | CEL  | 783330003 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 784748812 | JARDINS    | SAO PAULO      | SP     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
13 rows in set (0.00 sec)'''