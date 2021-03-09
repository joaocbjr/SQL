/*  UTILIZANDO O UPDATE PARA ATUALIZAR VALORES  */

USE CLIENTE;

SELECT NOME, EMAIL
FROM CLIENTE;
'''
+--------+-----------------+
| NOME   | EMAIL           |
+--------+-----------------+
| JORGE  | NULL            |
| JOAO   | JOAO@GMAIL.COM  |
| LILIAN | NULL            |
| ANA    | ANA@GMAIL.COM   |
| CARLA  | CARLA@GMAIL.COM |
| CELIA  | CELIA@GMAIL.COM |
+--------+-----------------+
6 rows in set (0.00 sec)'''

UPDATE CLIENTE
SET EMAIL = 'LILIAN@GMAIL.COM'
WHERE NOME = 'LILIAN';

UPDATE CLIENTE
SET EMAIL = 'JORGE@GMAIL.COM'
WHERE NOME = 'JORGE';
'''
+--------+------------------+
| NOME   | EMAIL            |
+--------+------------------+
| JORGE  | JORGE@GMAIL.COM  |
| JOAO   | JOAO@GMAIL.COM   |
| LILIAN | LILIAN@GMAIL.COM |
| ANA    | ANA@GMAIL.COM    |
| CARLA  | CARLA@GMAIL.COM  |
| CELIA  | CELIA@GMAIL.COM  |
+--------+------------------+
6 rows in set (0.00 sec)'''

