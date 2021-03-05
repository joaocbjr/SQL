'''
EXERCICIO 2

Considerando o que aprendeu sobre performace,  utilize a tabela
 funcionarios no banco exercicios e resolva os exercicios abaixo:

1 - Traga os funcionarios que trabalhem no departamento no departamento
de filmes OU no departamento de roupas.

2 - O gestor de marketing pediu a lista das funcionarias que trabalhem
no departamento de filmes OU no departamento lar. Ele necessita enviar
um email para as colaboradoras desses dois setores.

Como estamos trabalhando com AND, colocamos o departamento primeiro,
pois irá checar a segunda condição um número menor de vezes,

3 - Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem
no Jardim.
'''

/* CONECTANDO-SE AO BANCO */

USE exercicio;


/* ============= RESOLUÇÃO ================ */

/* 1 - Traga os funcionarios que trabalhem no departamento de filmes 
OU no departamento de roupas. */

''' OBS.: Por se tratar de "OU" obtenha a melhor performace procurando o critério
com maior número.
'''
SELECT COUNT(*), DEPARTAMENTO 
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO
ORDER BY 1;   ---ORDER BY CLASSIFICA (CRESCENTE) A COLUNA ESCOLHIDA--- 
'''
+----------+---------------+
| COUNT(*) | DEPARTAMENTO  |
+----------+---------------+
|       36 | Filmes        |
|       37 | Música        |
|       38 | Crianças      |
|       39 | Ferramentas   |
|       40 | Esporte       |
|       41 | Brinquedos    |
|       43 | Calçados      |
|       45 | Bebês         |
|       46 | Saúde         |
|       46 | Automotivo    |
|       46 | Joalheria     |
|       46 | Alimentícios  |
|       47 | Jardim        |
|       47 | Books         |
|       47 | Industrial    |
|       48 | Outdoors      |
|       49 | Games         |
|       49 | Eletronicos   |
|       52 | Lar           |
|       52 | Computadores  |
|       53 | Roupas        |
|       53 | Beleza        |
+----------+---------------+
22 rows in set (0.01 sec)'''

--- Logo, o departamento com maior número de funcionários é 'ROUPAS' com 53.---

SELECT * FROM funcionarios
WHERE DEPARTAMENTO = 'ROUPAS'
OR DEPARTAMENTO = 'FILMES';
'''
+---------------+------------+-----------------------------------+-----------+--------------+------------+---------+-------------------------------+----------+
| idFuncionario | nome       | email                             | sexo      | departamento | admissao   | salario | cargo                         | idRegiao |
+---------------+------------+-----------------------------------+-----------+--------------+------------+---------+-------------------------------+----------+
|            10 | Sanchez    | rsanchez9@cloudflare.com          | Masculino | Filmes       | 3/13/2013  |  108093 | Sales Representative          |        1 |
|            12 | Black      | mblackb@edublogs.org              | Masculino | Roupas       | 2/4/2003   |   44179 | Data Coordiator               |        7 |
|            20 | Carr       | dcarrj@ocn.ne.jp                  | Feminino  | Filmes       | 11/22/2007 |  115274 | VP Quality Control            |        5 |
|            29 | Price      | cprices@Brasil.gov                | Feminino  | Roupas       | 7/5/2013   |   95436 | Quality Engineer              |        3 |
|            33 | Greene     | wgreenew@blogspot.com             | Masculino | Filmes       | 3/21/2000  |   87057 | Assistant Manager             |        1 |
|            34 | Reed       | areedx@cisco.com                  | Masculino | Filmes       | 11/28/2002 |  120579 | Assistant Media Planner       |        6 |
|            40 | Hawkins    | phawkins13@twitpic.com            | Feminino  | Roupas       | 8/20/2011  |   76809 | Quality Engineer              |        6 |
|            44 | Simmons    | asimmons17@csmonitor.com          | Masculino | Filmes       | 12/21/2013 |  113857 | Developer III                 |        2 |
|            47 | Oliver     | joliver1a@cnbc.com                | Feminino  | Roupas       | 8/30/2013  |   42797 | Software Engineer III         |        5 |
|            79 | Cunningham | acunningham26@simplemachines.org  | Masculino | Roupas       | 9/15/2002  |   88345 | Junior Executive              |        6 |
|            95 | Franklin   | sfranklin2m@wordpress.com         | Masculino | Filmes       | 11/6/2013  |  117105 | VP Quality Control            |        5 |
|           108 | Perkins    | jperkins2z@prlog.org              | Masculino | Roupas       | 7/14/2005  |   68344 | Senior Cost Accountant        |        7 |
|           109 | Freeman    | bfreeman30@fda.gov                | Feminino  | Roupas       | 10/14/2007 |  147868 | General Manager               |        6 |
|           112 | Morris     | amorris33@irs.gov                 | Feminino  | Filmes       | 7/19/2013  |  127645 | Legal Assistant               |        1 |
|           115 | Nguyen     | rnguyen36@bandcamp.com            | Feminino  | Roupas       | 6/30/2007  |   58420 | Graphic Designer              |        1 |
|           117 | Martin     | jmartin38@chron.com               | Masculino | Filmes       | 10/2/2012  |   49644 | Senior Developer              |        4 |
|           119 | Washington | wwashington3a@dot.gov             | Feminino  | Roupas       | 10/6/2008  |  148408 | Speech Pathologist            |        3 |
|           125 | Dean       | ldean3g@blogspot.com              | Feminino  | Filmes       | 5/5/2012   |  140708 | Nurse                         |        1 |
|           146 | Thompson   | athompson41@booking.com           | Masculino | Filmes       | 2/4/2009   |  133281 | Account Executive             |        6 |
|           148 | Sanders    | lsanders43@linkedin.com           | Masculino | Filmes       | 5/9/2013   |  146970 | funcionarios Accountant III   |        3 |
|           169 | Sanders    | rsanders4o@salon.com              | Masculino | Filmes       | 12/24/2010 |   41898 | Tax Accountant                |        6 |
|           171 | Harris     | mharris4q@squarespace.com         | Feminino  | Filmes       | 9/27/2004  |  110912 | Geologist I                   |        5 |
|           176 | Fisher     | rfisher4v@jigsy.com               | Masculino | Roupas       | 10/14/2012 |   67942 | Financial Advisor             |        6 |
|           177 | Ferguson   | nferguson4w@networksolutions.com  | Feminino  | Roupas       | 9/18/2008  |   80397 | Compensation Analyst          |        1 |
|           185 | Watson     | rwatson54@webeden.co.uk           | Feminino  | Roupas       | 9/22/2001  |   74648 | Saúde Coach III               |        2 |
|           200 | George     | mgeorge5j@cdc.gov                 | Masculino | Filmes       | 9/20/2004  |   89633 | Software Consultant           |        4 |
|           207 | Harris     | mharris5q@utexas.edu              | Feminino  | Filmes       | 10/2/2008  |  129527 | Statistician II               |        2 |
|           231 | Day        | lday6e@usgs.gov                   | Feminino  | Roupas       | 7/3/2005   |   87800 | Sales Associate               |        7 |
|           238 | Gonzales   | cgonzales6l@berkeley.edu          | Masculino | Filmes       | 4/6/2014   |  131274 | Clinical Specialist           |        2 |
|           241 | Rose       | jrose6o@dion.ne.jp                | Feminino  | Roupas       | 12/22/2010 |  107207 | Web Developer II              |        3 |
|           263 | Snyder     | dsnyder7a@digg.com                | Masculino | Filmes       | 1/29/2005  |  109004 | Account Coordinator           |        5 |
|           273 | Gordon     | egordon7k@yellowbook.com          | Feminino  | Filmes       | 1/6/2013   |  142840 | Account Coordinator           |        1 |
|           277 | Richardson | lrichardson7o@fc2.com             | Feminino  | Roupas       | 7/14/2003  |  142403 | Engineer III                  |        3 |
|           294 | Cooper     | icooper85@w3.org                  | Feminino  | Filmes       | 1/31/2009  |   61519 | Human Resources Assistant III |        7 |
|           298 | Berry      | lberry89@gov.uk                   | Masculino | Roupas       | 6/17/2010  |   43067 | Research Assistant I          |        7 |
|           300 | Arnold     | barnold8b@thetimes.co.uk          | Masculino | Roupas       | 11/15/2005 |   77635 | VP Product Management         |        3 |
|           312 | Jordan     | pjordan8n@adobe.com               | Feminino  | Roupas       | 11/15/2003 |  133498 | Nuclear Power Engineer        |        7 |
|           325 | Wright     | kwright90@buzzfeed.com            | Feminino  | Roupas       | 5/13/2012  |  107727 | Computer Systems Analyst I    |        2 |
|           337 | Spencer    | dspencer9c@ed.gov                 | Masculino | Filmes       | 6/16/2008  |   83256 | Senior Editor                 |        5 |
|           365 | Gonzales   | jgonzalesa4@cpanel.net            | Masculino | Roupas       | 8/30/2000  |  127393 | Help Desk Technician          |        7 |
|           383 | Young      | pyoungam@theguardian.com          | Masculino | Roupas       | 12/10/2002 |  104079 | Systems Administrator IV      |        4 |
|           391 | White      | cwhiteau@amazon.de                | Feminino  | Roupas       | 11/4/2003  |  147702 | VP Quality Control            |        4 |
|           402 | Marshall   | emarshallb5@yahoo.co.jp           | Feminino  | Roupas       | 11/10/2007 |   93266 | Recruiter                     |        7 |
|           429 | Ortiz      | jortizbw@t.co                     | Feminino  | Roupas       | 1/23/2003  |   75024 | Structural Analysis Engineer  |        6 |
|           437 | Roberts    | arobertsc4@businessweek.com       | Masculino | Filmes       | 7/10/2007  |   48934 | Electrical Engineer           |        6 |
|           439 | Boyd       | eboydc6@unc.edu                   | Masculino | Roupas       | 4/1/2002   |  108854 | Senior Editor                 |        4 |
|           449 | Gray       | tgraycg@fotki.com                 | Feminino  | Roupas       | 4/20/2014  |  134205 | Biostatistician I             |        4 |
|           458 | Little     | dlittlecp@usatoday.com            | Feminino  | Filmes       | 5/14/2000  |   91660 | Research Assistant I          |        5 |
|           490 | Griffin    | bgriffindl@pbs.org                | Masculino | Filmes       | 4/8/2000   |  116480 | Nurse Practicioner            |        5 |
|           515 | Gomez      | kgomezea@bloglovin.com            | Masculino | Roupas       | 5/1/2002   |   55747 | Human Resources Assistant I   |        1 |
|           521 | Williamson | dwilliamsoneg@creativecommons.org | Masculino | Roupas       | 10/6/2003  |  118602 | Director of Sales             |        5 |
|           527 | Richards   | jrichardsem@1688.com              | Masculino | Roupas       | 4/20/2005  |   69705 | Senior Developer              |        3 |
|           539 | Kelley     | rkelleyey@feedburner.com          | Masculino | Filmes       | 3/20/2012  |  110660 | Senior Financial Analyst      |        4 |
|           560 | Kim        | jkimfj@dropbox.com                | Masculino | Roupas       | 1/22/2014  |   67845 | Administrative Officer        |        7 |
|           570 | James      | rjamesft@jiathis.com              | Feminino  | Roupas       | 3/21/2001  |  136377 | Software Engineer I           |        7 |
|           576 | Taylor     | staylorfz@issuu.com               | Masculino | Roupas       | 7/13/2006  |   50235 | Assistant Media Planner       |        1 |
|           578 | Lynch      | hlynchg1@washingtonpost.com       | Masculino | Roupas       | 5/2/2006   |  111318 | Technical Writer              |        3 |
|           589 | Arnold     | sarnoldgc@parallels.com           | Masculino | Filmes       | 1/27/2005  |  135786 | Account Representative I      |        7 |
|           604 | Greene     | agreenegr@cmu.edu                 | Masculino | Roupas       | 6/30/2004  |  104517 | Research Assistant III        |        2 |
|           615 | Alexander  | falexanderh2@irs.gov              | Feminino  | Roupas       | 12/25/2009 |   72854 | Marketing Assistant           |        7 |
|           618 | Phillips   | wphillipsh5@economist.com         | Masculino | Roupas       | 6/7/2001   |  128205 | Sales Representative          |        6 |
|           642 | Warren     | awarrenht@addthis.com             | Feminino  | Filmes       | 5/15/2009  |  126201 | Electrical Engineer           |        2 |
|           657 | Reid       | areidi8@wunderground.com          | Feminino  | Roupas       | 6/29/2013  |   65154 | Sales Representative          |        5 |
|           699 | Price      | bpriceje@icio.us                  | Feminino  | Roupas       | 1/25/2003  |  133091 | VP Accounting                 |        7 |
|           705 | Clark      | pclarkjk@joomla.org               | Masculino | Filmes       | 10/25/2009 |   97150 | VP Accounting                 |        6 |
|           711 | Roberts    | jrobertsjq@ed.gov                 | Masculino | Roupas       | 8/21/2009  |   80743 | Geological Engineer           |        4 |
|           722 | Hill       | khillk1@about.me                  | Feminino  | Roupas       | 8/31/2002  |   73262 | Information Systems Manager   |        5 |
|           727 | Johnson    | mjohnsonk6@sciencedaily.com       | Masculino | Filmes       | 5/21/2012  |   83165 | Account Representative I      |        5 |
|           732 | Murray     | amurraykb@blinklist.com           | Masculino | Roupas       | 8/15/2004  |   50511 | Senior Cost Accountant        |        3 |
|           735 | Richards   | jrichardske@hatena.ne.jp          | Masculino | Roupas       | 11/14/2014 |  116333 | Legal Assistant               |        5 |
|           748 | Elliott    | delliottkr@dot.gov                | Masculino | Roupas       | 12/9/2009  |  119097 | Administrative Assistant I    |        2 |
|           772 | Elliott    | delliottlf@fda.gov                | Masculino | Filmes       | 10/13/2004 |  100570 | Senior Financial Analyst      |        5 |
|           776 | Olson      | kolsonlj@friendfeed.com           | Feminino  | Roupas       | 9/27/2013  |  107535 | Office Assistant III          |        7 |
|           782 | Weaver     | jweaverlp@unblog.fr               | Masculino | Filmes       | 11/9/2011  |  120226 | Software Engineer II          |        4 |
|           789 | James      | kjameslw@yellowbook.com           | Masculino | Roupas       | 3/20/2005  |  130188 | Structural Analysis Engineer  |        1 |
|           799 | Sims       | asimsm6@lycos.com                 | Feminino  | Roupas       | 3/9/2013   |  146024 | Actuary                       |        7 |
|           801 | Gomez      | tgomezm8@ucoz.ru                  | Feminino  | Filmes       | 9/20/2012  |  101582 | Biostatistician II            |        7 |
|           802 | Knight     | dknightm9@quantcast.com           | Feminino  | Filmes       | 5/30/2006  |  100716 | Help Desk Operator            |        3 |
|           818 | Rice       | jricemp@columbia.edu              | Feminino  | Filmes       | 4/5/2002   |   82077 | Data Coordiator               |        4 |
|           847 | Knight     | dknightni@unc.edu                 | Feminino  | Roupas       | 3/22/2008  |   91532 | Operator                      |        4 |
|           856 | Roberts    | trobertsnr@over-blog.com          | Feminino  | Roupas       | 2/21/2004  |  139714 | Help Desk Operator            |        2 |
|           868 | Price      | jpriceo3@google.it                | Masculino | Filmes       | 1/24/2003  |   52612 | Analyst Programmer            |        7 |
|           913 | Kelley     | mkelleypc@sourceforge.net         | Feminino  | Roupas       | 2/20/2012  |  116266 | Marketing Assistant           |        6 |
|           919 | Bishop     | kbishoppi@ovh.net                 | Feminino  | Filmes       | 12/18/2010 |   53798 | Mechanical Systems Engineer   |        1 |
|           929 | Rice       | ericeps@reference.com             | Feminino  | Roupas       | 8/8/2003   |   66357 | Cost Accountant               |        3 |
|           955 | Marshall   | wmarshallqi@fastcompany.com       | Masculino | Roupas       | 4/18/2005  |   59234 | VP Product Management         |        7 |
|           963 | Burton     | cburtonqq@github.io               | Feminino  | Roupas       | 6/20/2012  |   58697 | Teacher                       |        4 |
|           969 | Richards   | jrichardsqw@blog.com              | Masculino | Roupas       | 7/5/2014   |   85294 | Media Manager I               |        4 |
|           973 | Walker     | swalkerr0@sina.com.cn             | Feminino  | Filmes       | 5/11/2009  |   51132 | Assistant Manager             |        4 |
+---------------+------------+-----------------------------------+-----------+--------------+------------+---------+-------------------------------+----------+
89 rows in set (0.01 sec)'''

/*  2 - O gestor de marketing pediu a lista das funcionarias que trabalhem
no departamento de filmes OU no departamento lar. Ele necessita enviar
um email para as colaboradoras desses dois setores. */
 
SELECT * FROM FUNCIONARIOS
WHERE (DEPARTAMENTO = 'LAR' AND SEXO = 'FEMININO')
   OR (DEPARTAMENTO = 'FILMES' AND SEXO = 'FEMININO');
'''
+---------------+------------+-----------------------------------+----------+--------------+------------+---------+-------------------------------+----------+
| idFuncionario | nome       | email                             | sexo     | departamento | admissao   | salario | cargo                         | idRegiao |
+---------------+------------+-----------------------------------+----------+--------------+------------+---------+-------------------------------+----------+
|            20 | Carr       | dcarrj@ocn.ne.jp                  | Feminino | Filmes       | 11/22/2007 |  115274 | VP Quality Control            |        5 |
|            26 | Porter     | vporterp@yelp.com                 | Feminino | Lar          | 5/30/2011  |   90746 | Dental Hygienist              |        2 |
|            27 | Owens      | cowensq@shareasale.com            | Feminino | Lar          | 5/26/2005  |   78698 | Executive Secretary           |        2 |
|            37 | Cruz       | rcruz10@blinklist.com             | Feminino | Lar          | 5/20/2000  |   61739 | Quality Engineer              |        1 |
|            74 | Washington | jwashington21@squidoo.com         | Feminino | Lar          | 7/11/2000  |   47206 | Programmer III                |        3 |
|            82 | Gilbert    | hgilbert29@xrea.com               | Feminino | Lar          | 5/11/2003  |   93712 | Junior Executive              |        7 |
|           112 | Morris     | amorris33@irs.gov                 | Feminino | Filmes       | 7/19/2013  |  127645 | Legal Assistant               |        1 |
|           125 | Dean       | ldean3g@blogspot.com              | Feminino | Filmes       | 5/5/2012   |  140708 | Nurse                         |        1 |
|           132 | Montgomery | rmontgomery3n@chicagotribune.com  | Feminino | Lar          | 5/14/2003  |   63929 | Research Assistant IV         |        5 |
|           171 | Harris     | mharris4q@squarespace.com         | Feminino | Filmes       | 9/27/2004  |  110912 | Geologist I                   |        5 |
|           207 | Harris     | mharris5q@utexas.edu              | Feminino | Filmes       | 10/2/2008  |  129527 | Statistician II               |        2 |
|           221 | Diaz       | sdiaz64@disqus.com                | Feminino | Lar          | 1/15/2005  |   55077 | Registered Nurse              |        7 |
|           257 | Freeman    | gfreeman74@bloomberg.com          | Feminino | Lar          | 6/5/2012   |   83804 | Operator                      |        1 |
|           273 | Gordon     | egordon7k@yellowbook.com          | Feminino | Filmes       | 1/6/2013   |  142840 | Account Coordinator           |        1 |
|           294 | Cooper     | icooper85@w3.org                  | Feminino | Filmes       | 1/31/2009  |   61519 | Human Resources Assistant III |        7 |
|           313 | Gibson     | bgibson8o@pen.io                  | Feminino | Lar          | 3/21/2011  |   81273 | Saúde Coach II                |        4 |
|           319 | Crawford   | mcrawford8u@parallels.com         | Feminino | Lar          | 12/20/2011 |  140996 | Software Engineer IV          |        3 |
|           336 | Campbell   | pcampbell9b@istockphoto.com       | Feminino | Lar          | 8/30/2001  |   40415 | Food Chemist                  |        4 |
|           353 | Gonzales   | jgonzales9s@sourceforge.net       | Feminino | Lar          | 7/10/2010  |   91249 | Mechanical Systems Engineer   |        2 |
|           382 | Payne      | jpayneal@comsenz.com              | Feminino | Lar          | 8/10/2012  |   92879 | Nurse                         |        2 |
|           398 | Cooper     | scooperb1@cmu.edu                 | Feminino | Lar          | 5/8/2001   |   68584 | Quality Engineer              |        2 |
|           403 | Chapman    | schapmanb6@nhs.uk                 | Feminino | Lar          | 3/9/2002   |   69702 | Food Chemist                  |        1 |
|           409 | Williams   | swilliamsbc@bing.com              | Feminino | Lar          | 4/22/2007  |   58235 | Analog Circuit Design manager |        6 |
|           418 | Morales    | dmoralesbl@mit.edu                | Feminino | Lar          | 10/2/2013  |  149598 | VP Product Management         |        3 |
|           424 | Berry      | jberrybr@discuz.net               | Feminino | Lar          | 8/20/2013  |  148640 | Internal Auditor              |        4 |
|           458 | Little     | dlittlecp@usatoday.com            | Feminino | Filmes       | 5/14/2000  |   91660 | Research Assistant I          |        5 |
|           506 | Cox        | ncoxe1@1und1.de                   | Feminino | Lar          | 1/1/2008   |   49048 | Sales Associate               |        1 |
|           535 | Morris     | rmorriseu@yahoo.com               | Feminino | Lar          | 7/25/2007  |  131662 | Help Desk Operator            |        3 |
|           543 | Walker     | kwalkerf2@vinaora.com             | Feminino | Lar          | 9/7/2013   |  120085 | Human Resources Assistant III |        6 |
|           567 | Myers      | dmyersfq@amazon.com               | Feminino | Lar          | 5/27/2010  |  139060 | Assistant Professor           |        7 |
|           586 | Olson      | folsong9@acquirethisname.com      | Feminino | Lar          | 7/1/2003   |  110411 | Compensation Analyst          |        3 |
|           593 | Evans      | aevansgg@wordpress.org            | Feminino | Lar          | 6/15/2000  |   94980 | Financial Advisor             |        4 |
|           642 | Warren     | awarrenht@addthis.com             | Feminino | Filmes       | 5/15/2009  |  126201 | Electrical Engineer           |        2 |
|           706 | Mendoza    | rmendozajl@g.co                   | Feminino | Lar          | 12/5/2011  |   91655 | Cost Accountant               |        5 |
|           731 | Ferguson   | gfergusonka@geocities.jp          | Feminino | Lar          | 6/28/2009  |   70524 | VP Accounting                 |        2 |
|           752 | Gonzales   | rgonzaleskv@meetup.com            | Feminino | Lar          | 1/24/2011  |   95810 | Food Chemist                  |        4 |
|           761 | Burke      | eburkel4@newsvine.com             | Feminino | Lar          | 12/14/2014 |  106033 | Quality Control Specialist    |        1 |
|           790 | Murray     | cmurraylx@icio.us                 | Feminino | Lar          | 4/25/2013  |   97607 | Accountant IV                 |        3 |
|           801 | Gomez      | tgomezm8@ucoz.ru                  | Feminino | Filmes       | 9/20/2012  |  101582 | Biostatistician II            |        7 |
|           802 | Knight     | dknightm9@quantcast.com           | Feminino | Filmes       | 5/30/2006  |  100716 | Help Desk Operator            |        3 |
|           818 | Rice       | jricemp@columbia.edu              | Feminino | Filmes       | 4/5/2002   |   82077 | Data Coordiator               |        4 |
|           896 | Carpenter  | rcarpenterov@pagesperso-orange.fr | Feminino | Lar          | 10/28/2010 |  134813 | Saúde Coach I                 |        7 |
|           919 | Bishop     | kbishoppi@ovh.net                 | Feminino | Filmes       | 12/18/2010 |   53798 | Mechanical Systems Engineer   |        1 |
|           938 | Jones      | djonesq1@tamu.edu                 | Feminino | Lar          | 2/10/2002  |   73668 | Environmental Specialist      |        2 |
|           973 | Walker     | swalkerr0@sina.com.cn             | Feminino | Filmes       | 5/11/2009  |   51132 | Assistant Manager             |        4 |
|           980 | Sanchez    | tsanchezr7@lycos.com              | Feminino | Lar          | 12/19/2014 |   83704 | Editor                        |        5 |
+---------------+------------+-----------------------------------+----------+--------------+------------+---------+-------------------------------+----------+
46 rows in set (0.01 sec)'''

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