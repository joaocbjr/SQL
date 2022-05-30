-- EXERCICIO DE FIXAÇÃO
/*
1) Crie um banco de dados chamado projeto e conecte-se ao banco.
2) Faça a seguinte modelagem:

    Sr. José quer mordenizar a sua oficina, e por enquanto, cadastrar 
    os carros que entram pra realizar serviços e os seus respectivos 
    donos. Sr. José mencionou que cada cliente possui apenas um carro. 
    Um carro possui uma marca. Sr. José tambem quer saber as cores dos 
    carros para ter idéia de qual tinta comprar, e informa que um carro 
    pode ter mais de uma cor. Sr. José necessita armazenar os telefones 
    dos clientes, mas não quer que eles sejam obrigatórios.
*/

1ª QUESTÃO
'''
+-------------------+
| Tables_in_projeto |
+-------------------+
| carro             |
| cliente           |
+-------------------+
2 rows in set (0.00 sec)
'''
2ª QUESTÃO
'''
mysql> DESC CLIENTE;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30) | YES  |     | NULL    |                |
| CPF       | varchar(11) | YES  |     | NULL    |                |
| FONE      | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.02 sec)

mysql> DESC CARRO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDCARRO    | int(11)     | NO   | PRI | NULL    | auto_increment |
| MODELO     | varchar(30) | YES  |     | NULL    |                |
| MARCA      | varchar(30) | YES  |     | NULL    |                |
| COR        | varchar(10) | YES  |     | NULL    |                |
| COR2       | varchar(10) | YES  |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.09 sec)
'''

INSERT INTO CLIENTE VALUES(NULL,'JOAO CORREIA', '5365125778','7999992323');

SELECT * FROM CLIENTE;
'''
+-----------+--------------+------------+------------+
| IDCLIENTE | NOME         | CPF        | FONE       |
+-----------+--------------+------------+------------+
|         1 | JOAO CORREIA | 5365125778 | 7999992323 |
+-----------+--------------+------------+------------+
1 row in set (0.00 sec)
'''
INSERT INTO CARRO VALUES(NULL,'FUSCA','VOLKSWAGEM','AZUL','',1);
'''
+---------+--------+------------+------+------+------------+
| IDCARRO | MODELO | MARCA      | COR  | COR2 | ID_CLIENTE |
+---------+--------+------------+------+------+------------+
|       1 | FUSCA  | VOLKSWAGEM | AZUL |      |          1 |
+---------+--------+------------+------+------+------------+
1 row in set (0.00 sec)
'''

SELECT
    D.IDCLIENTE,
    D.NOME,
    D.CPF,
    D.FONE,
    C.MODELO,
    C.MARCA,
    C.COR
FROM
    CLIENTE D,
    CARRO C
WHERE
    D.IDCLIENTE = C.ID_CLIENTE;
'''
+-----------+--------------+------------+------------+--------+------------+------+
| IDCLIENTE | NOME         | CPF        | FONE       | MODELO | MARCA      | COR  |
+-----------+--------------+------------+------------+--------+------------+------+
|         1 | JOAO CORREIA | 5365125778 | 7999992323 | FUSCA  | VOLKSWAGEM | AZUL |
+-----------+--------------+------------+------------+--------+------------+------+
1 row in set (0.03 sec)
'''
