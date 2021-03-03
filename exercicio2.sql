'''
Considerando o que aprendeu sobre performace,  utilize a tabela
 funcionarios no banco exercicios e resolva os exercicios abaixo:

1 - Traga os funcionarios que trabalhem no departamento no departamento
de filmes OU no departamento de roupas.

2 - O gestor de marketing pediu a lista das funcionarias que trabalhem
no departamento de filmes OU no departamento lar. Ele necessita enviar
um email para as colaboradoras desses dois setores.

3 - Como estamos trabalhando com AND, colocamos o departamento primeiro,
pois irá checar a segunda condição um número menor de vezes,

4 - Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem
no Jardim.
'''

/* CONECTANDO-SE AO BANCO */

USE exercicio;


/* ============= RESOLUÇÃO ================ */

/* 1 - Traga os funcionarios que trabalhem no departamento de filmes 
OU no departamento de roupas. */

SELECT NOME, DEPARTAMENTO FROM funcionarios
WHERE DEPARTAMENTO = 'FILMES'
OR DEPARTAMENTO = 'ROUPAS';
'''
+------------+--------------+
| NOME       | DEPARTAMENTO |
+------------+--------------+
| Sanchez    | Filmes       |
| Black      | Roupas       |
| Carr       | Filmes       |
| Price      | Roupas       |
| Greene     | Filmes       |
| Reed       | Filmes       |
| Hawkins    | Roupas       |
| Simmons    | Filmes       |
| Oliver     | Roupas       |
| Cunningham | Roupas       |
| Franklin   | Filmes       |
| Perkins    | Roupas       |
| Freeman    | Roupas       |
| Morris     | Filmes       |
| Nguyen     | Roupas       |
| Martin     | Filmes       |
| Washington | Roupas       |
| Dean       | Filmes       |
| Thompson   | Filmes       |
| Sanders    | Filmes       |
| Sanders    | Filmes       |
| Harris     | Filmes       |
| Fisher     | Roupas       |
| Ferguson   | Roupas       |
| Watson     | Roupas       |
| George     | Filmes       |
| Harris     | Filmes       |
| Day        | Roupas       |
| Gonzales   | Filmes       |
| Rose       | Roupas       |
| Snyder     | Filmes       |
| Gordon     | Filmes       |
| Richardson | Roupas       |
| Cooper     | Filmes       |
| Berry      | Roupas       |
| Arnold     | Roupas       |
| Jordan     | Roupas       |
| Wright     | Roupas       |
| Spencer    | Filmes       |
| Gonzales   | Roupas       |
| Young      | Roupas       |
| White      | Roupas       |
| Marshall   | Roupas       |
| Ortiz      | Roupas       |
| Roberts    | Filmes       |
| Boyd       | Roupas       |
| Gray       | Roupas       |
| Little     | Filmes       |
| Griffin    | Filmes       |
| Gomez      | Roupas       |
| Williamson | Roupas       |
| Richards   | Roupas       |
| Kelley     | Filmes       |
| Kim        | Roupas       |
| James      | Roupas       |
| Taylor     | Roupas       |
| Lynch      | Roupas       |
| Arnold     | Filmes       |
| Greene     | Roupas       |
| Alexander  | Roupas       |
| Phillips   | Roupas       |
| Warren     | Filmes       |
| Reid       | Roupas       |
| Price      | Roupas       |
| Clark      | Filmes       |
| Roberts    | Roupas       |
| Hill       | Roupas       |
| Johnson    | Filmes       |
| Murray     | Roupas       |
| Richards   | Roupas       |
| Elliott    | Roupas       |
| Elliott    | Filmes       |
| Olson      | Roupas       |
| Weaver     | Filmes       |
| James      | Roupas       |
| Sims       | Roupas       |
| Gomez      | Filmes       |
| Knight     | Filmes       |
| Rice       | Filmes       |
| Knight     | Roupas       |
| Roberts    | Roupas       |
| Price      | Filmes       |
| Kelley     | Roupas       |
| Bishop     | Filmes       |
| Rice       | Roupas       |
| Marshall   | Roupas       |
| Burton     | Roupas       |
| Richards   | Roupas       |
| Walker     | Filmes       |
+------------+--------------+
89 rows in set (0.00 sec)'''
