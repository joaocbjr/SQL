-- ALTERANDO TABELAS

''' Criando tabela para estudo '''

CREATE TABLE TABELA(
    COLUNA1 VARCHAR(30),
    COLUNA2 VARCHAR(30),
    COLUNA3 VARCHAR(30)
);

DESC TABELA;
'''
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | YES  |     | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)'''


-- ADICIONANDO UMA PRIMARY KEY

ALTER TABLE TABELA
ADD PRIMARY KEY (COLUNA1);
'''
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)'''

-- ADICIONANDO COLUNA SEM POSICAO (ULTIMA POSICAO)

ALTER TABLE TABELA
ADD COLUNA VARCHAR (30);
'''
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)'''

-- ADICIONANDO COLUNA COM POSICAO

ALTER TABLE TABELA
ADD COLUMN COLUNA4 VARCHAR (30) NOT NULL UNIQUE
AFTER COLUNA3;
'''
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA4 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)'''

-- MODIFICANDO O TIPO E UM CAMPO

ALTER TABLE TABELA
MODIFY COLUNA2 DATE NOT NULL;
'''
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | date        | NO   |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA4 | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)'''

-- RENOMEANDO O NOME DA TABELA

ALTER TABLE TABELA
RENAME PESSOA;
'''
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| consumo            |
| endereco           |                  '''/*
| pessoa             |                  */'''
| produto            |
| telefone           |
| v_rel_consumo      |
| v_relatorio        |
+--------------------+
8 rows in set (0.00 sec)'''

CREATE TABLE TIME(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    TIME VARCHAR(30),
    ID_PESSOA VARCHAR(30)
);
'''
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)'''


-- FOREIGN KEY

ALTER TABLE TIME
ADD FOREIGN KEY (ID_PESSOA)
REFERENCES PESSOA (COLUNA1);
'''
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)'''

-- VERIFICAR AS CHAVES

SHOW CREATE TABLE TIME;
'''
+-------+----------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                      |
+-------+----------------------------------------------------------------------------------+
| TIME  | CREATE TABLE `time` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+-------+----------------------------------------------------------------------------------+
1 row in set (0.00 sec)