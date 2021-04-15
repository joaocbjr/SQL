 A função IFNULL tem a finalidade de substituir o argumento 
'NULL' por qualquer outro argumento.

SINTAXE: IFNULL(coluna, argumento)

SELECT  C.NOME, C.EMAIL,
        E.ESTADO,
        T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
'''
+---------+-------------------+--------+-----------+
| NOME    | EMAIL             | ESTADO | NUMERO    |
+---------+-------------------+--------+-----------+
| JORGE   | JORGE@IG.COM      | ES     | 784589653 |
| JORGE   | JORGE@IG.COM      | ES     | 658844545 |
| JOAO    | JOAO@IG.COM       | RJ     | 784512223 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 784112545 |
| JOAO    | JOAO@IG.COM       | RJ     | 784584555 |
| ANA     | ANA@IG.COM        | SP     | 783330003 |
| ANA     | ANA@IG.COM        | SP     | 784748812 |
| JOAO    | JOAO@IG.COM       | RJ     | 784151544 |
| JORGE   | JORGE@IG.COM      | ES     | 788851653 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 988585653 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565  |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654  |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979  |            '''/*
| LORENA  | NULL              | ES     | 88965676  |            */'''
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809  |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978  |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768  |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578  |
+---------+-------------------+--------+-----------+
25 rows in set (0.00 sec)'''

SELECT  C.NOME, 
        IFNULL(C.EMAIL, 'SEM EMAIL'),
        E.ESTADO,
        T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
'''
+---------+------------------------------+--------+-----------+
| NOME    | IFNULL(C.EMAIL, 'SEM EMAIL') | ESTADO | NUMERO    |
+---------+------------------------------+--------+-----------+
| JORGE   | JORGE@IG.COM                 | ES     | 784589653 |
| JORGE   | JORGE@IG.COM                 | ES     | 658844545 |
| JOAO    | JOAO@IG.COM                  | RJ     | 784512223 |
| CARLOS  | CARLOS@IG.COM                | RJ     | 784112545 |
| JOAO    | JOAO@IG.COM                  | RJ     | 784584555 |
| ANA     | ANA@IG.COM                   | SP     | 783330003 |
| ANA     | ANA@IG.COM                   | SP     | 784748812 |
| JOAO    | JOAO@IG.COM                  | RJ     | 784151544 |
| JORGE   | JORGE@IG.COM                 | ES     | 788851653 |
| CARLOS  | CARLOS@IG.COM                | RJ     | 988585653 |
| ANDRE   | ANDRE@GLOBO.COM              | MG     | 68976565  |
| ANDRE   | ANDRE@GLOBO.COM              | MG     | 99656675  |
| KARLA   | KARLA@GMAIL.COM              | RJ     | 33567765  |
| KARLA   | KARLA@GMAIL.COM              | RJ     | 88668786  |
| KARLA   | KARLA@GMAIL.COM              | RJ     | 55689654  |
| DANIELE | DANIELE@GMAIL.COM            | RJ     | 88687979  |
| LORENA  | SEM EMAIL                    | ES     | 88965676  |
| ANTONIO | ANTONIO@IG.COM               | PR     | 89966809  |
| ANTONIO | ANTONIO@UOL.COM              | SP     | 88679978  |
| ELAINE  | ELAINE@GLOBO.COM             | PR     | 99655768  |
| CARMEM  | CARMEM@IG.COM                | SP     | 89955665  |
| ADRIANA | ADRIANA@GMAIL.COM            | RJ     | 77455786  |
| ADRIANA | ADRIANA@GMAIL.COM            | RJ     | 89766554  |
| JOICE   | JOICE@GMAIL.COM              | RJ     | 77755785  |
| JOICE   | JOICE@GMAIL.COM              | RJ     | 44522578  |
+---------+------------------------------+--------+-----------+
25 rows in set (0.00 sec)'''

-- Perceba que o titulo ficou desconfigurado.
-- Resolveremos com o recurso 'AS'.

SELECT  C.NOME, 
        IFNULL(C.EMAIL, 'SEM EMAIL') AS EMAIL,
        E.ESTADO,
        T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
'''
+---------+-------------------+--------+-----------+
| NOME    | EMAIL             | ESTADO | NUMERO    |
+---------+-------------------+--------+-----------+
| JORGE   | JORGE@IG.COM      | ES     | 784589653 |
| JORGE   | JORGE@IG.COM      | ES     | 658844545 |
| JOAO    | JOAO@IG.COM       | RJ     | 784512223 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 784112545 |
| JOAO    | JOAO@IG.COM       | RJ     | 784584555 |
| ANA     | ANA@IG.COM        | SP     | 783330003 |
| ANA     | ANA@IG.COM        | SP     | 784748812 |
| JOAO    | JOAO@IG.COM       | RJ     | 784151544 |
| JORGE   | JORGE@IG.COM      | ES     | 788851653 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 988585653 |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 68976565  |
| ANDRE   | ANDRE@GLOBO.COM   | MG     | 99656675  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786  |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654  |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88687979  |
| LORENA  | SEM EMAIL         | ES     | 88965676  |
| ANTONIO | ANTONIO@IG.COM    | PR     | 89966809  |
| ANTONIO | ANTONIO@UOL.COM   | SP     | 88679978  |
| ELAINE  | ELAINE@GLOBO.COM  | PR     | 99655768  |
| CARMEM  | CARMEM@IG.COM     | SP     | 89955665  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786  |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578  |
+---------+-------------------+--------+-----------+
25 rows in set (0.00 sec)'''