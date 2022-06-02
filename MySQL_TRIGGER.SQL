-- ESTRUTURA DE UMA TRIGGER

CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN   -> INICIO

    QUALQUER COMANDO SQL

END     -> FIM

-- CRIANDO UMA TRIGGER

CREATE DATABASE AULATRIGGER;

USE AULATRIGGER;

CREATE TABLE USUARIO(
    IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR (30),
    LOGIN VARCHAR (30),
    SENHA VARCHAR(100)
);

CREATE TABLE BKP_USUARIO(
    IDBACUP INT PRIMARY KEY AUTO_INCREMENT,
    IDUSUARIO INT,
    NOME VARCHAR(30),
    LOGIN VARCHAR(30)
);

DELIMITER   $

CREATE TRIGGER BACKUP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW
BEGIN
        INSERT INTO BKP_USUARIO VALUES 
        (NULL,OLD.IDUSUARIO,OLD.NOME,OLD.LOGIN);
END
$

INSERT INTO USUARIO VALUES
(NULL,'CORREIA','CORREIA1982','CAMPEAO');

DELIMITER ;

INSERT INTO USUARIO VALUES
(NULL,'CORREIA','CORREIA1982','CAMPEAO');

_________________________________________

SELECT * FROM USUARIO;
'''
+-----------+---------+-------------+---------+
| IDUSUARIO | NOME    | LOGIN       | SENHA   |
+-----------+---------+-------------+---------+
|         1 | CORREIA | CORREIA1982 | CAMPEAO |
+-----------+---------+-------------+---------+
1 row in set (0.01 sec)
'''

DELETE FROM USUARIO WHERE IDUSUARIO = 1;
'''
Query OK, 1 row affected, 1 warning (0.06 sec)
'''
SELECT * FROM BKP_USUARIO;
'''
+---------+-----------+---------+-------------+
| IDBACUP | IDUSUARIO | NOME    | LOGIN       |
+---------+-----------+---------+-------------+
|       1 |         1 | CORREIA | CORREIA1982 |
+---------+-----------+---------+-------------+
1 row in set (0.00 sec)
'''
