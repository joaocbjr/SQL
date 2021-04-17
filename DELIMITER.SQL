-- DELIMITADOR DE CÓDIGO

-- POR PADRÃO O DELIMITADOR DO MYSQL É ;

STATUS
'''
Connection id:          4
Current database:       comercio
Current user:           root@localhost
SSL:                    Not in use                                      '''/*
Using delimiter:        ;                                               */'''
Server version:         5.7.20-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8
Db     characterset:    utf8
Client characterset:    utf8
Conn.  characterset:    utf8
TCP port:               3306
Uptime:                 1 day 7 hours 24 min 0 sec
'''

--HAVENDO A NECESSIDADE PODEMOS MUDAR USANDO O COMANDO "DELIMITER". EX.: §

DELIMITER §
STATUS
'''
Connection id:          4
Current database:       comercio
Current user:           root@localhost
SSL:                    Not in use                              '''/*
Using delimiter:        §                                       */'''
Server version:         5.7.20-log MySQL Community Server (GPL)     
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8
Db     characterset:    utf8
Client characterset:    utf8
Conn.  characterset:    utf8
TCP port:               3306
Uptime:                 1 day 7 hours 43 min 45 sec
'''
