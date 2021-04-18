-- PROCEDURES

CREATE TABLE CURSOS(
    IDCURSOS INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    HORAS INT(3) NOT NULL,
    VALOR FLOAT(10,2) NOT NULL
);

DELIMITER #

CREATE PROCEDURE CAD_CURSO( P_NOME VARCHAR(30),
                            P_HORAS INT (3),
                            P_PRECO FLOAT(10,2))
BEGIN

    INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('JAVA',30,500.00);
CALL CAD_CURSO('FUNDAMENTOS DE BANCO DE DADOS',40,700.00);
CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);
CALL CAD_CURSO('PYTHON',70,4000.00);
CALL CAD_CURSO('JAVA SCRIPT',25,1500.00);
CALL CAD_CURSO('C#',50,2200.00);

SELECT * FROM CURSOS;
'''
+----------+-------------------------------+-------+---------+
| IDCURSOS | NOME                          | HORAS | VALOR   |
+----------+-------------------------------+-------+---------+
|        1 | JAVA                          |    30 |  500.00 |
|        2 | FUNDAMENTOS DE BANCO DE DADOS |    40 |  700.00 |
|        3 | BI SQL SERVER                 |    35 | 3000.00 |
|        4 | POWER BI                      |    20 | 1000.00 |
|        5 | TABLEAU                       |    30 | 1200.00 |
|        6 | PYTHON                        |    70 | 4000.00 |
|        7 | JAVA SCRIPT                   |    25 | 1500.00 |
|        8 | C#                            |    50 | 2200.00 |
+----------+-------------------------------+-------+---------+
8 rows in set (0.00 sec)'''


-- CRIAÇÃO DE PROCEDURE DE CONSULTA

DELIMITER #

CREATE PROCEDURE CONSULTA_CURSO(P_ID)
BEGIN

    SELECT * FROM CURSOS
    WHERE IDCURSOS = (P_ID);

END
#

DELIMITER ;