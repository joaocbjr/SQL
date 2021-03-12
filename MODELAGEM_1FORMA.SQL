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




