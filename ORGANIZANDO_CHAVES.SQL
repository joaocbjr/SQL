-- ORGANIZAÇÃO DE CHAVES - CONSTRAINT (REGRA)
''' Chave é uma regra de integridade refêncial'''

CREATE TABLE JOGADOR(
    IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30)
);
'''
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDJOGADOR | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)'''


CREATE TABLE TIMES(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    NOMETIME VARCHAR(30),
    ID_JOGADOR INT,
    FOREIGN KEY(ID_JOGADOR)
    REFERENCES JOGADOR(IDJOGADOR)
);
'''
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDTIME     | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOMETIME   | varchar(30) | YES  |     | NULL    |                |
| ID_JOGADOR | int(11)     | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)'''

INSERT INTO JOGADOR VALUES (NULL,'GABIGOL');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);

SHOW CREATE TABLE JOGADOR;
'''
+---------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| JOGADOR | CREATE TABLE `jogador` (
  `IDJOGADOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 |
+---------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.02 sec)'''

SHOW CREATE TABLE TIMES;
'''
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TIMES | CREATE TABLE `times` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `NOMETIME` varchar(30) DEFAULT NULL,
  `ID_JOGADOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_JOGADOR` (`ID_JOGADOR`),
  CONSTRAINT `times_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)'''

