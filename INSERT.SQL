USE COMERCIO;

-- RELACIONAMENTO 1 X 1

INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAO@IG.COM','7689562248785');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOS@IG.COM','7855456224845');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM','335689662845');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'252589224845');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM','1254224845');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','F','CELIA@IG.COM','7447689748885');

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
+-----------+--------+------+---------------+---------------+
6 rows in set (0.00 sec)'''

INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO DE SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);

SELECT * FROM ENDERECO;
'''
+------------+--------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO DE SA  | CENTRO   | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS  | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO   | VITORIA        | ES     |          5 |
+------------+--------------------+----------+----------------+--------+------------+
6 rows in set (0.00 sec)'''

-- RELACIONAMENTO 1 X N

INSERT INTO TELEFONE VALUES (NULL,'CEL','784589653',5);
INSERT INTO TELEFONE VALUES (NULL,'RES','658844545',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','784512223',1);
INSERT INTO TELEFONE VALUES (NULL,'COM','784112545',2);
INSERT INTO TELEFONE VALUES (NULL,'RES','784584555',1);
INSERT INTO TELEFONE VALUES (NULL,'CEL','783330003',3);
INSERT INTO TELEFONE VALUES (NULL,'CEL','784748812',3);
INSERT INTO TELEFONE VALUES (NULL,'COM','784151544',1);
INSERT INTO TELEFONE VALUES (NULL,'RES','788851653',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','988585653',2);
'''
+------------+------+-----------+------------+
| IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+------------+------+-----------+------------+
|          1 | CEL  | 784589653 |          5 |
|          2 | RES  | 658844545 |          5 |
|          3 | CEL  | 784512223 |          1 |
|          4 | COM  | 784112545 |          2 |
|          5 | RES  | 784584555 |          1 |
|          6 | CEL  | 783330003 |          3 |
|          7 | CEL  | 784748812 |          3 |
|          8 | COM  | 784151544 |          1 |
|          9 | RES  | 788851653 |          5 |
|         10 | CEL  | 988585653 |          2 |
+------------+------+-----------+------------+
10 rows in set (0.00 sec)'''
