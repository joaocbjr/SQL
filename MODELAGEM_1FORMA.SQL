/* MODELAGEM 1ª FORMA NORMAL */
'''
1 - Todo campo vetorizado se tornará outra tabela
    EX.:    [AMARELO, AZUL, VERDE, VERMELHO] -> CORES
            [CIRCULO, TRIANGULO, QUADRADO] -> FORMAS GEOMÉTRICAS

2 - Todo campo multivalorado se tornará outra tabela ou quando o campo for divisível

3 - Toda tabela necessita de pelo menos um campo que indentifique todo o registro como sendo único.
    Isso é o que chamamos de "CHAVE PRIMARIA" ou PRIMARY KEY.
'''

-- CARDINALIDADE: quem define a cardinalidade é a regra de negócio.
'''
PRIMEIRO ALGARISMO - OBRIGATORIEDADE
0 - Não obrigatorio
1 - Obrigatorio

SEGUNDO ALGARISMO - CARDINALIDADE
1 - Maximo de um
n - Mais de um
'''

CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M','F') NOT NULL,
    EMAIL VARCHAR(30) UNIQUE,
    CPF VARCHAR (15) UNIQUE
);
'''
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(30)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)'''

CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL
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
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)'''

CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES','COM','CEL') NOT NULL,
    NUMERO VARCHAR(10) NOT NULL
);
'''
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)'''

/*  OBS.:
    ENDEREÇO - OBRIGATORIO
    CADASTRO DE SOMENTE UM -> (1,1)

    TELEFONE - NÃO OBRIGATORIO
    CADASTRO DE MAIS DE UM (OPCIONAL) -> (0,n)
*/




