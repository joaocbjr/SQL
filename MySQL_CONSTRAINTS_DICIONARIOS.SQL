CREATE DATABASE TIME;

-- VERIFICANDO AS CHAVES
SHOW CREATE DATABASE TIME;
'''
+----------+-----------------------------------------------------------------+
| Database | Create Database                                                 |
+----------+-----------------------------------------------------------------+
| time     | CREATE DATABASE `time` /*!40100 DEFAULT CHARACTER SET latin1 */ |
+----------+-----------------------------------------------------------------+
1 row in set (0.00 sec)
'''

-- ORGANIZACAO DE CHAVES - CONSTRAINT (REGRA)

CREATE TABLE JOGADOR(
    IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30)
);

CREATE TABLE TIMES(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    NOMETIME VARCHAR(30),
    ID_JOGADOR INT,
    FOREIGN KEY(ID_JOGADOR)
    REFERENCES JOGADOR(IDJOGADOR)
);

INSERT INTO JOGADOR VALUES(NULL,'GABIGOL');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);
