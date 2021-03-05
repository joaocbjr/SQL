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

/*  2 - O gestor de marketing pediu a lista das funcionarias que trabalhem
no departamento de filmes OU no departamento lar. Ele necessita enviar
um email para as colaboradoras desses dois setores. */
 
SELECT SEXO, NOME, DEPARTAMENTO, EMAIL
FROM FUNCIONARIOS
WHERE (SEXO = 'FEMININO' AND DEPARTAMENTO = 'FILMES')
   OR (SEXO = 'FEMININO' AND DEPARTAMENTO = 'LAR');
'''
+----------+------------+--------------+-----------------------------------+
| SEXO     | NOME       | DEPARTAMENTO | EMAIL                             |
+----------+------------+--------------+-----------------------------------+
| Feminino | Carr       | Filmes       | dcarrj@ocn.ne.jp                  |
| Feminino | Porter     | Lar          | vporterp@yelp.com                 |
| Feminino | Owens      | Lar          | cowensq@shareasale.com            |
| Feminino | Cruz       | Lar          | rcruz10@blinklist.com             |
| Feminino | Washington | Lar          | jwashington21@squidoo.com         |
| Feminino | Gilbert    | Lar          | hgilbert29@xrea.com               |
| Feminino | Morris     | Filmes       | amorris33@irs.gov                 |
| Feminino | Dean       | Filmes       | ldean3g@blogspot.com              |
| Feminino | Montgomery | Lar          | rmontgomery3n@chicagotribune.com  |
| Feminino | Harris     | Filmes       | mharris4q@squarespace.com         |
| Feminino | Harris     | Filmes       | mharris5q@utexas.edu              |
| Feminino | Diaz       | Lar          | sdiaz64@disqus.com                |
| Feminino | Freeman    | Lar          | gfreeman74@bloomberg.com          |
| Feminino | Gordon     | Filmes       | egordon7k@yellowbook.com          |
| Feminino | Cooper     | Filmes       | icooper85@w3.org                  |
| Feminino | Gibson     | Lar          | bgibson8o@pen.io                  |
| Feminino | Crawford   | Lar          | mcrawford8u@parallels.com         |
| Feminino | Campbell   | Lar          | pcampbell9b@istockphoto.com       |
| Feminino | Gonzales   | Lar          | jgonzales9s@sourceforge.net       |
| Feminino | Payne      | Lar          | jpayneal@comsenz.com              |
| Feminino | Cooper     | Lar          | scooperb1@cmu.edu                 |
| Feminino | Chapman    | Lar          | schapmanb6@nhs.uk                 |
| Feminino | Williams   | Lar          | swilliamsbc@bing.com              |
| Feminino | Morales    | Lar          | dmoralesbl@mit.edu                |
| Feminino | Berry      | Lar          | jberrybr@discuz.net               |
| Feminino | Little     | Filmes       | dlittlecp@usatoday.com            |
| Feminino | Cox        | Lar          | ncoxe1@1und1.de                   |
| Feminino | Morris     | Lar          | rmorriseu@yahoo.com               |
| Feminino | Walker     | Lar          | kwalkerf2@vinaora.com             |
| Feminino | Myers      | Lar          | dmyersfq@amazon.com               |
| Feminino | Olson      | Lar          | folsong9@acquirethisname.com      |
| Feminino | Evans      | Lar          | aevansgg@wordpress.org            |
| Feminino | Warren     | Filmes       | awarrenht@addthis.com             |
| Feminino | Mendoza    | Lar          | rmendozajl@g.co                   |
| Feminino | Ferguson   | Lar          | gfergusonka@geocities.jp          |
| Feminino | Gonzales   | Lar          | rgonzaleskv@meetup.com            |
| Feminino | Burke      | Lar          | eburkel4@newsvine.com             |
| Feminino | Murray     | Lar          | cmurraylx@icio.us                 |
| Feminino | Gomez      | Filmes       | tgomezm8@ucoz.ru                  |
| Feminino | Knight     | Filmes       | dknightm9@quantcast.com           |
| Feminino | Rice       | Filmes       | jricemp@columbia.edu              |
| Feminino | Carpenter  | Lar          | rcarpenterov@pagesperso-orange.fr |
| Feminino | Bishop     | Filmes       | kbishoppi@ovh.net                 |
| Feminino | Jones      | Lar          | djonesq1@tamu.edu                 |
| Feminino | Walker     | Filmes       | swalkerr0@sina.com.cn             |
| Feminino | Sanchez    | Lar          | tsanchezr7@lycos.com              |
+----------+------------+--------------+-----------------------------------+
46 rows in set (0.00 sec)'''

/* BÔNUS - DISTRIBUIÇÃO DE FUNCIONÁRIAS POR DEPARTAMENTO */

SELECT DEPARTAMENTO, COUNT(*)
FROM FUNCIONARIOS
WHERE (SEXO = 'FEMININO' AND DEPARTAMENTO = 'FILMES')
   OR (SEXO = 'FEMININO' AND DEPARTAMENTO = 'LAR')
GROUP BY DEPARTAMENTO;
'''
+--------------+----------+
| DEPARTAMENTO | COUNT(*) |
+--------------+----------+
| Filmes       |       14 |
| Lar          |       32 |
+--------------+----------+
2 rows in set (0.00 sec)'''

/* Como estamos trabalhando com AND, colocamos o departamento primeiro,
pois irá checar a segunda condição um número menor de vezes.

3 - Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem
no Jardim.  */

SELECT DEPARTAMENTO, SEXO, NOME
FROM FUNCIONARIOS
WHERE (DEPARTAMENTO = 'JARDIM' AND SEXO = 'MASCULINO');
'''
+--------------+-----------+-----------+
| DEPARTAMENTO | SEXO      | NOME      |
+--------------+-----------+-----------+
| Jardim       | Masculino | Kelly     |
| Jardim       | Masculino | Watkins   |
| Jardim       | Masculino | Cooper    |
| Jardim       | Masculino | Chavez    |
| Jardim       | Masculino | Robertson |
| Jardim       | Masculino | White     |
| Jardim       | Masculino | Bennett   |
| Jardim       | Masculino | Ortiz     |
| Jardim       | Masculino | Clark     |
| Jardim       | Masculino | Hunter    |
| Jardim       | Masculino | Gilbert   |
| Jardim       | Masculino | Crawford  |
| Jardim       | Masculino | Reed      |
| Jardim       | Masculino | Lopez     |
| Jardim       | Masculino | Scott     |
| Jardim       | Masculino | Carr      |
| Jardim       | Masculino | Cook      |
| Jardim       | Masculino | Stone     |
| Jardim       | Masculino | Vasquez   |
| Jardim       | Masculino | Willis    |
| Jardim       | Masculino | Kim       |
| Jardim       | Masculino | Ross      |
| Jardim       | Masculino | Perry     |
| Jardim       | Masculino | Ramos     |
+--------------+-----------+-----------+
24 rows in set (0.00 sec)'''