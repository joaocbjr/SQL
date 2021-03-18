/* JOIN COM TRÊS TABELAS */

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
'''
+--------+------+---------+----------------+------+-----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO    |
+--------+------+---------+----------------+------+-----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 784512223 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 784584555 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 784151544 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 783330003 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 784748812 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 784112545 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 988585653 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 784589653 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 658844545 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 788851653 |
+--------+------+---------+----------------+------+-----------+
10 rows in set (0.02 sec)'''

-- OUTRA FORMA

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
'''
+--------+------+---------+----------------+------+-----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO    |
+--------+------+---------+----------------+------+-----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 784512223 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 784584555 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 784151544 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 783330003 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 784748812 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 784112545 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 988585653 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 784589653 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 658844545 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 788851653 |
+--------+------+---------+----------------+------+-----------+
10 rows in set (0.01 sec)
