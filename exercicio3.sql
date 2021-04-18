/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',8);
INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);


/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);

''' EXERCICIO '''

/* Verificando a base de clientes encontaramos a seguinte situação: */
'''
+-----------+---------+------+-------------------+---------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF           |
+-----------+---------+------+-------------------+---------------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 7689562248785 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 7855456224845 |
|         3 | ANA     | F    | ANA@IG.COM        | 335689662845  |
|         4 | CLARA   | F    | NULL              | 252589224845  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 1254224845    |
|         6 | CELIA   | F    | CELIA@IG.COM      | 7447689748885 |
|         7 | PAULA   | F    | NULL              | 784445633     |
|         8 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765       |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567       |
|        10 | GIOVANA | F    | NULL              | 0876655       |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778     |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789      |
|        13 | LORENA  | M    | NULL              | 774557887     |
|        14 | EDUARDO | M    | NULL              | 54376457      |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767      |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565       |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763      |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213     |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942      |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256      |
+-----------+---------+------+-------------------+---------------+
20 rows in set (0.03 sec)'''

-- Os clientes de ID: 11, 12, 13, 15, 17 e 18 estão com o sexo trocados.

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (11,12,13,15,17,18);
'''
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778 |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789  |
|        13 | LORENA  | M    | NULL              | 774557887 |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767  |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763  |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+
6 rows in set (0.02 sec)'''

-- Vamos corrigir:

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (11,12,13,17,18);

UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE IN (15);
'''
+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 |
|        12 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789  |
|        13 | LORENA  | F    | NULL              | 774557887 |
|        15 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767  |
|        17 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  |
|        18 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+
6 rows in set (0.00 sec)'''

/* RELATORIO GERAL DE TODOS OS CLIENTES */

SELECT  C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
        E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
        T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
ORDER BY IDCLIENTE;
'''
+-----------+---------+------+-------------------+---------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF           | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+---------------+--------------------+------------+----------------+--------+------+-----------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 7689562248785 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 784512223 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 7689562248785 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 784584555 |
|         1 | JOAO    | M    | JOAO@IG.COM       | 7689562248785 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 784151544 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 7855456224845 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 988585653 |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 7855456224845 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 784112545 |
|         3 | ANA     | F    | ANA@IG.COM        | 335689662845  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 783330003 |
|         3 | ANA     | F    | ANA@IG.COM        | 335689662845  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 784748812 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 1254224845    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 788851653 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 1254224845    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 658844545 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 1254224845    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 784589653 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567       | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567       | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675  |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789      | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | LORENA  | F    | NULL              | 774557887     | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        15 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767      | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565       | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
|        17 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763      | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
|        18 | CARMEM  | F    | CARMEM@IG.COM     | 787832213     | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942      | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942      | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256      | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256      | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
+-----------+---------+------+-------------------+---------------+--------------------+------------+----------------+--------+------+-----------+
25 rows in set (0.11 sec)'''

/* RELATORIO DE HOMENS */

SELECT  C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
        E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
        T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

'''
+-----------+---------+------+-----------------+---------------+--------------------+-----------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF           | RUA                | BAIRRO    | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-----------------+---------------+--------------------+-----------+----------------+--------+------+-----------+
|         1 | JOAO    | M    | JOAO@IG.COM     | 7689562248785 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | CEL  | 784512223 |
|         1 | JOAO    | M    | JOAO@IG.COM     | 7689562248785 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | RES  | 784584555 |
|         1 | JOAO    | M    | JOAO@IG.COM     | 7689562248785 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | COM  | 784151544 |
|         2 | CARLOS  | M    | CARLOS@IG.COM   | 7855456224845 | RUA ALFANDEGA      | ESTACIO   | RIO DE JANEIRO | RJ     | COM  | 784112545 |
|         2 | CARLOS  | M    | CARLOS@IG.COM   | 7855456224845 | RUA ALFANDEGA      | ESTACIO   | RIO DE JANEIRO | RJ     | CEL  | 988585653 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 1254224845    | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | CEL  | 784589653 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 1254224845    | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | RES  | 658844545 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 1254224845    | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | RES  | 788851653 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567       | RUA GUEDES         | CASCADURA | B. HORIZONTE   | MG     | RES  | 68976565  |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567       | RUA GUEDES         | CASCADURA | B. HORIZONTE   | MG     | CEL  | 99656675  |
|        15 | ANTONIO | M    | ANTONIO@IG.COM  | 12436767      | AV CAPITAO ANTUNES | CENTRO    | CURITIBA       | PR     | CEL  | 89966809  |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565       | AV CARLOS BARROSO  | JARDINS   | SAO PAULO      | SP     | COM  | 88679978  |
+-----------+---------+------+-----------------+---------------+--------------------+-----------+----------------+--------+------+-----------+
12 rows in set (0.02 sec)'''

/* RELATORIO DE MULHERES */

SELECT  C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
        E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
        T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';
'''
+-----------+---------+------+-------------------+--------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF          | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+--------------+--------------------+------------+----------------+--------+------+-----------+
|         3 | ANA     | F    | ANA@IG.COM        | 335689662845 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 783330003 |
|         3 | ANA     | F    | ANA@IG.COM        | 335689662845 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 784748812 |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789     | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | LORENA  | F    | NULL              | 774557887    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        17 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
|        18 | CARMEM  | F    | CARMEM@IG.COM     | 787832213    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942     | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942     | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
+-----------+---------+------+-------------------+--------------+--------------------+------------+----------------+--------+------+-----------+
13 rows in set (0.00 sec)'''

/* QUANTIDADE DE HOMENS E MULHERES */

SELECT SEXO, COUNT(*)
FROM CLIENTE 
GROUP BY SEXO;
'''
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| M    |        8 |
| F    |       12 |
+------+----------+
2 rows in set (0.00 sec)'''

/* IDS E EMAILS DAS MULHERES NO CENTRO DO RIO DE JANEIRO E NÃO TENHA CELULAR */

SELECT  C.IDCLIENTE, C.EMAIL, C.SEXO, 
        E.BAIRRO, E.ESTADO, 
        T.TIPO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE (SEXO = 'F' 
AND E.BAIRRO = 'CENTRO' 
AND E.ESTADO = 'RJ' 
AND NOT TIPO = 'CEL');
'''
+-----------+-------------------+------+--------+--------+------+
| IDCLIENTE | EMAIL             | SEXO | BAIRRO | ESTADO | TIPO |
+-----------+-------------------+------+--------+--------+------+
|        11 | KARLA@GMAIL.COM   | F    | CENTRO | RJ     | COM  |
|        19 | ADRIANA@GMAIL.COM | F    | CENTRO | RJ     | RES  |
|        19 | ADRIANA@GMAIL.COM | F    | CENTRO | RJ     | RES  |
|        20 | JOICE@GMAIL.COM   | F    | CENTRO | RJ     | RES  |
|        20 | JOICE@GMAIL.COM   | F    | CENTRO | RJ     | COM  |
+-----------+-------------------+------+--------+--------+------+
5 rows in set (0.00 sec)'''

/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRIO
COM O NOME, EMAIL E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO ESTADO 
DO RIO DE JANEIRO VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATÓTIO
PARA O PROGRAMADOR */

SELECT  C.NOME, C.EMAIL, 
        E.ESTADO, 
        T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE (E.ESTADO = 'RJ' 
AND T.TIPO = 'CEL');
'''
+--------+-----------------+--------+------+-----------+
| NOME   | EMAIL           | ESTADO | TIPO | NUMERO    |
+--------+-----------------+--------+------+-----------+
| JOAO   | JOAO@IG.COM     | RJ     | CEL  | 784512223 |
| CARLOS | CARLOS@IG.COM   | RJ     | CEL  | 988585653 |
| KARLA  | KARLA@GMAIL.COM | RJ     | CEL  | 33567765  |
| KARLA  | KARLA@GMAIL.COM | RJ     | CEL  | 88668786  |
+--------+-----------------+--------+------+-----------+
4 rows in set (0.00 sec)'''


/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM 
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR DAS MULHERES QUE MORAM 
NO ESTADO DE SÃO PAULO VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O
RELATÓRIO PARA O PROGRAMADOR */

SELECT  C.NOME, C.EMAIL, 
        E.ESTADO, 
        T.NUMERO, T.TIPO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';
'''
+--------+---------------+--------+-----------+------+
| NOME   | EMAIL         | ESTADO | NUMERO    | TIPO |
+--------+---------------+--------+-----------+------+
| ANA    | ANA@IG.COM    | SP     | 783330003 | CEL  |
| ANA    | ANA@IG.COM    | SP     | 784748812 | CEL  |
| CARMEM | CARMEM@IG.COM | SP     | 89955665  | RES  |
+--------+---------------+--------+-----------+------+
3 rows in set (0.00 sec)