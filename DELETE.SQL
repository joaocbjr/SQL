/*  UTILIZANDO O DELETE - MUITO CUIDADO (USE SEMPRE WHERE)  */

USE CLIENTE;

--VAMOS INSERIR UM NOVO REGISTRO
INSERT INTO CLIENTE VALUES ('CARLA', 'F', 'CLOPES@GMAIL.COM', 555896532, '988875415','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
'''
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL            | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
| JORGE  | M    | JORGE@GMAIL.COM  | 885755096 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| JOAO   | M    | JOAO@GMAIL.COM   | 853651257 | 229231148 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| LILIAN | F    | LILIAN@GMAIL.COM |  74855689 | 89574544  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | ANA@GMAIL.COM    | 784451249 | 547884585 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | CARLA@GMAIL.COM  |   7745879 | 68897458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| CELIA  | F    | CELIA@GMAIL.COM  | 541524786 | 258967845 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| CARLA  | F    | CLOPES@GMAIL.COM | 555896532 | 988875415 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
7 rows in set (0.00 sec)'''

--VAMOS DELETAR O REGIDTRO DE NOME CARLA, COM O EMAIL: CARLA@GMAIL.COM
SELECT * FROM CLIENTE
WHERE NOME = 'CARLA'
AND EMAIL = 'CARLA@GMAIL.COM';

--POR SEGURANÇA, DAREMOS UM SELECT PARA GARANTIR O REGISTRO A SER CANCELADO
'''
+-------+------+-----------------+---------+----------+---------------------------------------------+
| NOME  | SEXO | EMAIL           | CPF     | TELEFONE | ENDERECO                                    |
+-------+------+-----------------+---------+----------+---------------------------------------------+
| CARLA | F    | CARLA@GMAIL.COM | 7745879 | 68897458 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG |
+-------+------+-----------------+---------+----------+---------------------------------------------+
1 row in set (0.00 sec) '''

DELETE FROM CLIENTE
WHERE NOME = 'CARLA'
AND EMAIL = 'CARLA@GMAIL.COM';

--E POR FIM A TABELA RESULTANTE
'''
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL            | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
| JORGE  | M    | JORGE@GMAIL.COM  | 885755096 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| JOAO   | M    | JOAO@GMAIL.COM   | 853651257 | 229231148 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| LILIAN | F    | LILIAN@GMAIL.COM |  74855689 | 89574544  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | ANA@GMAIL.COM    | 784451249 | 547884585 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CELIA  | F    | CELIA@GMAIL.COM  | 541524786 | 258967845 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| CARLA  | F    | CLOPES@GMAIL.COM | 555896532 | 988875415 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
+--------+------+------------------+-----------+-----------+-----------------------------------------------+
6 rows in set (0.00 sec)