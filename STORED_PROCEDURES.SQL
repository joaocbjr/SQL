/* CRIAÇÃO DE UM PROCEDIMENTO (PROGRAMAÇÃO), NECESSARIO MUDAR O DELIMITER. */

DELIMITER $

-- CRIAÇÃO DE PROCEDIMENTOS

CREATE PROCEDURE NOME_EMPRESA()
BEGIN

    SELECT 'JCORREIA - GESTÃO DE DADOS' AS EMPRESA;

END
$

-- CHAMANDO UMA PROCEDURE

CALL NOME_EMPRESA()$
'''
+-----------------------------+
| EMPRESA                     |
+-----------------------------+
| JCORREIA - GESTÃO DE DADOS  |
+-----------------------------+
1 row in set (0.01 sec)'''


-- PROCEDURE COM PARAMETROS

CREATE PROCEDURE SOMA(NUMERO1 INT, NUMERO2 INT)
BEGIN

    SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

CALL SOMA(500,151)$
'''
+-------+
| CONTA |
+-------+
|   651 |
+-------+
1 row in set (0.00 sec)'''

CALL SOMA(-1,500)$
'''
+-------+
| CONTA |
+-------+
|   499 |
+-------+
1 row in set (0.00 sec)'''

CALL SOMA((2*5 ),3)$
'''
+-------+
| CONTA |
+-------+
|    13 |
+-------+
1 row in set (0.00 sec)'''

