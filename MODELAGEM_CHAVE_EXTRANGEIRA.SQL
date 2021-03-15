/*
CHAVE EXTRANGEIRA É A CHAVE PRIMARIA DE UMA TABELA QUE VAI
ATÉ A OUTRA TABELA PARA FAZER REFERENCIA ENTRE REGISTROS
*/

-- EM RELACIONAMENTO 1 X 1: A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA

-- EM RELACIONAMENTO 1 X N: A CHAVE ESTRANGEIRA FICARA SEMPRE NA CARDINALIDADE N

CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M','F') NOT NULL,
    EMAIL VARCHAR(30) UNIQUE,
    CPF VARCHAR (15) UNIQUE
);


CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)
);
'''
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)'''

CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES','COM','CEL') NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)
);
'''
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+
4 rows in set (0.02 sec)'''

