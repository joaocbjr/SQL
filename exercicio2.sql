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

SELECT * FROM FUNCIONARIOS
WHERE 
SEXO = 'MASCULINO' OR 
DEPARTAMENTO = 'JARDIM';
'''
+---------------+------------+------------------------------------+-----------+---------------+------------+---------+--------------------------------------+----------+
| idFuncionario | nome       | email                              | sexo      | departamento  | admissao   | salario | cargo                                | idRegiao |
+---------------+------------+------------------------------------+-----------+---------------+------------+---------+--------------------------------------+----------+
|             2 | Armstrong  | sarmstrong1@infoseek.co.jp         | Masculino | Esporte       | 3/31/2008  |   71869 | Financial Advisor                    |        2 |
|             3 | Carr       | fcarr2@woothemes.com               | Masculino | Automotivo    | 7/12/2009  |  101768 | Recruiting Manager                   |        3 |
|             6 | Phillips   | bphillips5@time.com                | Masculino | Ferramentas   | 8/21/2013  |  118497 | Executive Secretary                  |        1 |
|             7 | Williamson | rwilliamson6@ted.com               | Masculino | Computadores  | 5/14/2006  |   65889 | Dental Hygienist                     |        6 |
|             9 | James      | rjames8@prnewswire.com             | Masculino | Joalheria     | 9/7/2005   |  108657 | Sales Associate                      |        2 |
|            10 | Sanchez    | rsanchez9@cloudflare.com           | Masculino | Filmes        | 3/13/2013  |  108093 | Sales Representative                 |        1 |
|            12 | Black      | mblackb@edublogs.org               | Masculino | Roupas        | 2/4/2003   |   44179 | Data Coordiator                      |        7 |
|            13 | Schmidt    | sschmidtc@state.gov                | Masculino | Bebês         | 10/13/2002 |   85227 | Compensation Analyst                 |        3 |
|            18 | Nguyen     | jnguyenh@google.com                | Masculino | Lar           | 11/3/2014  |   93804 | Geologist II                         |        5 |
|            19 | Day        | rdayi@chronoengine.com             | Masculino | Eletronicos   | 9/22/2004  |  109890 | VP Sales                             |        3 |
|            22 | Alexander  | kalexanderl@marketwatch.com        | Masculino | Automotivo    | 12/26/2011 |  144724 | Marketing Assistant                  |        2 |
|            24 | Kelly      | ekellyn@weibo.com                  | Masculino | Jardim        | 6/29/2006  |  144965 | Nurse Practicioner                   |        2 |
|            25 | Stephens   | jstephenso@ow.ly                   | Masculino | Brinquedos    | 6/4/2004   |   70613 | Business Systems Development Analyst |        1 |
|            30 | Weaver     | dweavert@shinystat.com             | Masculino | Beleza        | 2/17/2012  |   83144 | Account Representative III           |        2 |
|            32 | Torres     | ltorresv@amazon.de                 | Masculino | Games         | 4/7/2014   |   78245 | Nuclear Power Engineer               |        6 |
|            33 | Greene     | wgreenew@blogspot.com              | Masculino | Filmes        | 3/21/2000  |   87057 | Assistant Manager                    |        1 |
|            34 | Reed       | areedx@cisco.com                   | Masculino | Filmes        | 11/28/2002 |  120579 | Assistant Media Planner              |        6 |
|            36 | Bradley    | nbradleyz@goodreads.com            | Masculino | Outdoors      | 12/28/2008 |  107222 | Payment Adjustment Coordinator       |        3 |
|            38 | Williamson | dwilliamson11@rediff.com           | Feminino  | Jardim        | 1/25/2012  |   82026 | Nurse                                |        2 |
|            39 | Kennedy    | skennedy12@rediff.com              | Masculino | Bebês         | 7/2/2011   |   79339 | Civil Engineer                       |        1 |
|            42 | Watkins    | mwatkins15@wiley.com               | Masculino | Computadores  | 4/1/2008   |  125668 | Executive Secretary                  |        7 |
|            43 | Ferguson   | mferguson16@qq.com                 | Masculino | Esporte       | 5/29/2009  |   82960 | Account Representative III           |        6 |
|            44 | Simmons    | asimmons17@csmonitor.com           | Masculino | Filmes        | 12/21/2013 |  113857 | Developer III                        |        2 |
|            45 | Nguyen     | mnguyen18@biblegateway.com         | Masculino | Automotivo    | 1/24/2002  |  108378 | Electrical Engineer                  |        7 |
|            46 | Lawrence   | jlawrence19@linkedin.com           | Masculino | Outdoors      | 12/11/2011 |  133424 | Junior Executive                     |        7 |
|            48 | Johnson    | jjohnson1b@usgs.gov                | Masculino | Computadores  | 4/26/2004  |  134940 | Financial Advisor                    |        4 |
|            49 | Crawford   | hcrawford1c@dell.com               | Masculino | Lar           | 12/21/2008 |  119471 | Editor                               |        6 |
|            51 | Dixon      | jdixon1e@dot.gov                   | Masculino | Bebês         | 9/26/2006  |  106281 | Senior Developer                     |        3 |
|            53 | Coleman    | dcoleman1g@dedecms.com             | Masculino | Computadores  | 6/14/2008  |  110839 | Automation Specialist I              |        1 |
|            55 | Ross       | jross1i@infoseek.co.jp             | Masculino | Automotivo    | 4/21/2004  |   71363 | Environmental Tech                   |        3 |
|            56 | Watkins    | kwatkins1j@youtu.be                | Masculino | Jardim        | 12/2/2002  |   93680 | VP Accounting                        |        3 |
|            58 | Baker      | jbaker1l@usnews.com                | Masculino | Games         | 3/2/2007   |   68857 | Information Systems Manager          |        2 |
|            60 | Lane       | elane1n@un.org                     | Masculino | Outdoors      | 7/15/2004  |  104896 | Financial Advisor                    |        5 |
|            62 | Boyd       | aboyd1p@artisteer.com              | Masculino | Automotivo    | 5/29/2007  |   69936 | Senior Editor                        |        7 |
|            64 | Cooper     | tcooper1r@umich.edu                | Masculino | Jardim        | 11/12/2011 |  139796 | Office Assistant IV                  |        1 |
|            66 | Rodriguez  | lrodriguez1t@narod.ru              | Masculino | Beleza        | 9/27/2003  |  141949 | Product Engineer                     |        4 |
|            68 | Coleman    | kcoleman1v@360.cn                  | Masculino | Beleza        | 9/2/2012   |  121378 | Web Developer I                      |        7 |
|            69 | Stewart    | dstewart1w@usnews.com              | Masculino | Brinquedos    | 8/22/2000  |  148144 | Data Coordiator                      |        4 |
|            71 | Vasquez    | evasquez1y@behance.net             | Masculino | Bebês         | 10/20/2002 |   77285 | Operator                             |        6 |
|            73 | Palmer     | ipalmer20@newsvine.com             | Masculino | Esporte       | 4/3/2002   |   78828 | Director of Sales                    |        2 |
|            77 | Daniels    | ndaniels24@google.ca               | Masculino | Ferramentas   | 2/7/2013   |  139061 | Environmental Specialist             |        3 |
|            79 | Cunningham | acunningham26@simplemachines.org   | Masculino | Roupas        | 9/15/2002  |   88345 | Junior Executive                     |        6 |
|            80 | Little     | klittle27@un.org                   | Masculino | Música        | 9/12/2001  |  114647 | Editor                               |        5 |
|            81 | Welch      | jwelch28@1und1.de                  | Masculino | Outdoors      | 7/24/2004  |  118514 | Accounting Assistant III             |        5 |
|            83 | George     | ageorge2a@gmpg.org                 | Masculino | Industrial    | 5/2/2009   |   86373 | Compensation Analyst                 |        7 |
|            84 | Hughes     | mhughes2b@youtube.com              | Masculino | Crianças      | 1/28/2013  |  122110 | Structural Engineer                  |        6 |
|            87 | Hamilton   | hhamilton2e@google.de              | Masculino | Música        | 10/23/2010 |   98401 | VP Quality Control                   |        1 |
|            89 | Webb       | awebb2g@springer.com               | Masculino | Saúde         | 4/10/2014  |   73686 | Tax Accountant                       |        2 |
|            90 | Thomas     | tthomas2h@webnode.com              | Masculino | Games         | 11/3/2011  |   55002 | Research Assistant IV                |        6 |
|            91 | Wallace    | swallace2i@state.tx.us             | Masculino | Bebês         | 3/7/2005   |   65216 | Registered Nurse                     |        4 |
|            95 | Franklin   | sfranklin2m@wordpress.com          | Masculino | Filmes        | 11/6/2013  |  117105 | VP Quality Control                   |        5 |
|            96 | Mason      | wmason2n@xrea.com                  | Masculino | Beleza        | 2/21/2004  |   96673 | Accounting Assistant I               |        1 |
|           100 | Bell       | rbell2r@utexas.edu                 | Masculino | Esporte       | 8/3/2007   |   68210 | Registered Nurse                     |        4 |
|           101 | Rivera     | jrivera2s@oakley.com               | Masculino | Games         | 11/16/2002 |  137281 | VP Sales                             |        3 |
|           102 | Matthews   | kmatthews2t@oaic.gov.au            | Masculino | Saúde         | 8/9/2008   |  114970 | Statistician IV                      |        2 |
|           103 | Reed       | dreed2u@arstechnica.com            | Masculino | Automotivo    | 7/19/2003  |  126001 | Structural Engineer                  |        6 |
|           104 | Adams      | eadams2v@yandex.ru                 | Masculino | Alimentícios  | 9/16/2003  |   78736 | Financial Analyst                    |        6 |
|           105 | Young      | syoung2w@cmu.edu                   | Masculino | Calçados      | 9/16/2009  |   80830 | Quality Control Specialist           |        4 |
|           106 | Gardner    | rgardner2x@theguardian.com         | Masculino | Crianças      | 8/6/2009   |   47879 | Product Engineer                     |        5 |
|           108 | Perkins    | jperkins2z@prlog.org               | Masculino | Roupas        | 7/14/2005  |   68344 | Senior Cost Accountant               |        7 |
|           110 | Howell     | whowell31@free.fr                  | Masculino | Books         | 4/15/2011  |   67255 | Geologist III                        |        4 |
|           113 | Moore      | kmoore34@shareasale.com            | Masculino | Bebês         | 3/1/2000   |   54413 | Operator                             |        5 |
|           114 | Sims       | msims35@i2i.jp                     | Masculino | Alimentícios  | 12/6/2012  |  136790 | Nuclear Power Engineer               |        2 |
|           116 | Wells      | awells37@theatlantic.com           | Masculino | Industrial    | 1/17/2002  |   73813 | Occupational Therapist               |        3 |
|           117 | Martin     | jmartin38@chron.com                | Masculino | Filmes        | 10/2/2012  |   49644 | Senior Developer                     |        4 |
|           118 | Fox        | pfox39@discovery.com               | Masculino | Automotivo    | 9/3/2009   |   87134 | Assistant Manager                    |        3 |
|           122 | Wagner     | jwagner3d@fotki.com                | Masculino | Bebês         | 2/26/2001  |   77530 | Librarian                            |        1 |
|           123 | Griffin    | agriffin3e@mtv.com                 | Feminino  | Jardim        | 4/26/2002  |  101875 | Business Systems Development Analyst |        4 |
|           126 | Burton     | bburton3h@360.cn                   | Masculino | Calçados      | 7/11/2013  |   79172 | Associate Professor                  |        7 |
|           128 | Gibson     | tgibson3j@ucoz.com                 | Masculino | Computadores  | 3/24/2003  |  109449 | Engineer II                          |        7 |
|           131 | Kelley     | wkelley3m@domainmarket.com         | Masculino | Calçados      | 2/24/2000  |  120377 | Research Nurse                       |        4 |
|           133 | Martinez   | dmartinez3o@deviantart.com         | Masculino | Games         | 2/1/2001   |  124853 | Systems Administrator III            |        2 |
|           138 | Montgomery | wmontgomery3t@taobao.com           | Masculino | Eletronicos   | 9/1/2005   |   71082 | Geologist III                        |        7 |
|           139 | Hart       | rhart3u@wsj.com                    | Masculino | Joalheria     | 1/8/2012   |  119773 | Pharmacist                           |        3 |
|           140 | Wheeler    | bwheeler3v@google.co.uk            | Masculino | Computadores  | 1/22/2001  |   82358 | Information Systems Manager          |        4 |
|           141 | Williamson | rwilliamson3w@amazon.co.jp         | Masculino | Games         | 12/12/2005 |  145575 | VP Accounting                        |        1 |
|           142 | Burton     | gburton3x@umich.edu                | Masculino | Industrial    | 12/6/2009  |  105810 | Recruiter                            |        5 |
|           143 | Gutierrez  | jgutierrez3y@tuttocitta.it         | Masculino | Ferramentas   | 5/6/2014   |   58805 | Database Administrator I             |        1 |
|           146 | Thompson   | athompson41@booking.com            | Masculino | Filmes        | 2/4/2009   |  133281 | Account Executive                    |        6 |
|           148 | Sanders    | lsanders43@linkedin.com            | Masculino | Filmes        | 5/9/2013   |  146970 | funcionarios Accountant III          |        3 |
|           150 | Diaz       | pdiaz45@who.int                    | Masculino | Saúde         | 10/15/2006 |  128748 | Web Developer III                    |        1 |
|           151 | Larson     | blarson46@newsvine.com             | Masculino | Books         | 8/9/2011   |   50066 | Operator                             |        1 |
|           152 | Roberts    | droberts47@jimdo.com               | Masculino | Música        | 7/22/2011  |  105319 | Compensation Analyst                 |        4 |
|           153 | Carroll    | jcarroll48@cisco.com               | Masculino | Lar           | 10/30/2003 |  110622 | Safety Technician IV                 |        4 |
|           155 | Robinson   | trobinson4a@amazon.com             | Masculino | Books         | 9/6/2007   |   45456 | Chemical Engineer                    |        1 |
|           156 | Hayes      | ahayes4b@guardian.co.uk            | Masculino | Industrial    | 5/21/2004  |   52298 | Analyst Programmer                   |        7 |
|           157 | Henry      | dhenry4c@yelp.com                  | Masculino | Calçados      | 5/14/2007  |  131252 | Account Representative III           |        1 |
|           158 | Chavez     | mchavez4d@baidu.com                | Masculino | Jardim        | 2/23/2001  |  128766 | Desktop Support Technician           |        2 |
|           159 | Harvey     | eharvey4e@opera.com                | Masculino | Ferramentas   | 9/12/2009  |  138179 | Analog Circuit Design manager        |        3 |
|           161 | Cruz       | mcruz4g@dedecms.com                | Masculino | Saúde         | 8/24/2001  |  131479 | Senior Cost Accountant               |        7 |
|           163 | Robertson  | jrobertson4i@live.com              | Masculino | Jardim        | 6/7/2000   |   96996 | Software Test Engineer I             |        4 |
|           165 | Lawson     | jlawson4k@prnewswire.com           | Masculino | Automotivo    | 12/5/2012  |  130993 | Administrative Officer               |        2 |
|           166 | Meyer      | kmeyer4l@bloglovin.com             | Masculino | Industrial    | 3/5/2006   |   87097 | Safety Technician IV                 |        7 |
|           167 | Lopez      | rlopez4m@foxnews.com               | Masculino | Outdoors      | 1/25/2013  |  131961 | Legal Assistant                      |        4 |
|           169 | Sanders    | rsanders4o@salon.com               | Masculino | Filmes        | 12/24/2010 |   41898 | Tax Accountant                       |        6 |
|           170 | Martinez   | cmartinez4p@facebook.com           | Masculino | Eletronicos   | 6/28/2004  |   52808 | Human Resources Assistant I          |        2 |
|           172 | Fields     | rfields4r@amazon.co.uk             | Masculino | Books         | 9/5/2009   |  101520 | Project Manager                      |        1 |
|           175 | Daniels    | cdaniels4u@rambler.ru              | Masculino | Alimentícios  | 11/7/2013  |   77307 | Biostatistician IV                   |        7 |
|           176 | Fisher     | rfisher4v@jigsy.com                | Masculino | Roupas        | 10/14/2012 |   67942 | Financial Advisor                    |        6 |
|           179 | Reynolds   | rreynolds4y@miitbeian.gov.cn       | Feminino  | Jardim        | 1/29/2004  |  121836 | VP Accounting                        |        7 |
|           180 | Williamson | nwilliamson4z@dropbox.com          | Masculino | Outdoors      | 11/8/2008  |   76063 | Administrative Assistant II          |        6 |
|           181 | Shaw       | sshaw50@instagram.com              | Feminino  | Jardim        | 5/2/2001   |   56923 | Social Worker                        |        2 |
|           188 | Rose       | erose57@guardian.co.uk             | Masculino | Alimentícios  | 3/17/2012  |  120225 | Editor                               |        7 |
|           189 | Anderson   | banderson58@wsj.com                | Masculino | Lar           | 12/2/2014  |  122272 | Environmental Specialist             |        2 |
|           192 | Morales    | jmorales5b@joomla.org              | Masculino | Games         | 2/10/2000  |  101855 | Engineer IV                          |        4 |
|           194 | Wagner     | ewagner5d@cornell.edu              | Masculino | Brinquedos    | 2/1/2006   |  142516 | Professor                            |        1 |
|           195 | Meyer      | nmeyer5e@about.me                  | Masculino | Calçados      | 11/9/2012  |   48829 | Accountant I                         |        1 |
|           196 | Jacobs     | rjacobs5f@oracle.com               | Masculino | Outdoors      | 9/16/2006  |   81270 | Geological Engineer                  |        1 |
|           200 | George     | mgeorge5j@cdc.gov                  | Masculino | Filmes        | 9/20/2004  |   89633 | Software Consultant                  |        4 |
|           201 | Andrews    | jandrews5k@free.fr                 | Masculino | Lar           | 3/18/2009  |   48684 | Nurse Practicioner                   |        6 |
|           206 | Riley      | hriley5p@dailymotion.com           | Masculino | Brinquedos    | 5/6/2012   |   61992 | Sales Representative                 |        4 |
|           209 | Peterson   | jpeterson5s@t-online.de            | Masculino | Books         | 3/14/2010  |  104530 | VP Marketing                         |        2 |
|           213 | Thomas     | gthomas5w@slate.com                | Masculino | Ferramentas   | 11/28/2006 |  128239 | Teacher                              |        6 |
|           214 | West       | gwest5x@hao123.com                 | Masculino | Computadores  | 10/31/2003 |   66084 | Electrical Engineer                  |        6 |
|           215 | Stevens    | estevens5y@salon.com               | Masculino | Games         | 3/14/2009  |  106729 | Occupational Therapist               |        5 |
|           216 | Howard     | dhoward5z@soundcloud.com           | Masculino | Joalheria     | 3/15/2009  |   87269 | General Manager                      |        4 |
|           217 | Boyd       | mboyd60@jimdo.com                  | Masculino | Lar           | 12/1/2004  |  128765 | Senior Financial Analyst             |        2 |
|           218 | Ross       | iross61@jimdo.com                  | Masculino | Games         | 5/25/2003  |  104671 | VP Marketing                         |        7 |
|           219 | Harrison   | vharrison62@networkadvertising.org | Masculino | Calçados      | 5/1/2011   |   55073 | Assistant Professor                  |        4 |
|           223 | Gibson     | bgibson66@lulu.com                 | Masculino | Computadores  | 4/28/2008  |  105444 | Human Resources Assistant II         |        6 |
|           226 | Gonzalez   | tgonzalez69@umich.edu              | Masculino | Saúde         | 11/12/2005 |  106833 | Registered Nurse                     |        7 |
|           228 | Washington | cwashington6b@cargocollective.com  | Masculino | Outdoors      | 7/4/2008   |  113311 | Programmer III                       |        2 |
|           233 | Gonzalez   | rgonzalez6g@europa.eu              | Masculino | Eletronicos   | 4/24/2009  |   44917 | Biostatistician IV                   |        5 |
|           235 | Griffin    | sgriffin6i@123-reg.co.uk           | Masculino | Books         | 12/22/2001 |  108970 | Senior Cost Accountant               |        2 |
|           236 | Tucker     | jtucker6j@dailymail.co.uk          | Masculino | Joalheria     | 4/27/2009  |   83543 | Programmer II                        |        5 |
|           238 | Gonzales   | cgonzales6l@berkeley.edu           | Masculino | Filmes        | 4/6/2014   |  131274 | Clinical Specialist                  |        2 |
|           240 | Spencer    | wspencer6n@marriott.com            | Masculino | Games         | 9/21/2013  |  143223 | funcionarios Accountant IV           |        6 |
|           242 | Robinson   | probinson6p@ucla.edu               | Masculino | Saúde         | 11/30/2003 |  137594 | Operator                             |        6 |
|           243 | Gutierrez  | kgutierrez6q@bravesites.com        | Masculino | Lar           | 1/26/2006  |  139845 | Director of Sales                    |        4 |
|           247 | Romero     | jromero6u@cafepress.com            | Masculino | Brinquedos    | 1/21/2010  |   80654 | Geological Engineer                  |        2 |
|           248 | White      | jwhite6v@tripadvisor.com           | Masculino | Jardim        | 12/13/2005 |  118834 | Financial Analyst                    |        6 |
|           249 | Miller     | jmiller6w@businesswire.com         | Masculino | Crianças      | 3/3/2013   |   85559 | Pharmacist                           |        2 |
|           250 | Fowler     | mfowler6x@geocities.jp             | Masculino | Books         | 9/15/2001  |   84049 | Information Systems Manager          |        5 |
|           252 | Johnston   | jjohnston6z@irs.gov                | Masculino | Ferramentas   | 12/16/2000 |   87072 | Structural Engineer                  |        7 |
|           258 | Schmidt    | dschmidt75@sitemeter.com           | Masculino | Automotivo    | 10/26/2007 |  133612 | VP Product Management                |        4 |
|           260 | Fuller     | ffuller77@ustream.tv               | Masculino | Saúde         | 12/13/2005 |  142967 | GIS Technical Architect              |        5 |
|           263 | Snyder     | dsnyder7a@digg.com                 | Masculino | Filmes        | 1/29/2005  |  109004 | Account Coordinator                  |        5 |
|           264 | Sanders    | ksanders7b@pinterest.com           | Masculino | Industrial    | 4/20/2014  |  102211 | Senior Cost Accountant               |        3 |
|           265 | Fox        | wfox7c@yelp.com                    | Masculino | Computadores  | 8/3/2000   |   75862 | Electrical Engineer                  |        5 |
|           266 | Burke      | cburke7d@ameblo.jp                 | Masculino | Joalheria     | 3/5/2000   |   61446 | Environmental Specialist             |        2 |
|           267 | Murphy     | dmurphy7e@patch.com                | Masculino | Lar           | 6/2/2011   |  146432 | VP Quality Control                   |        2 |
|           269 | Cunningham | kcunningham7g@squidoo.com          | Masculino | Outdoors      | 12/11/2014 |  108248 | Safety Technician I                  |        3 |
|           272 | Banks      | jbanks7j@dion.ne.jp                | Masculino | Música        | 5/16/2014  |   43940 | Saúde Coach I                        |        2 |
|           274 | Bennett    | abennett7l@guardian.co.uk          | Masculino | Jardim        | 8/1/2006   |  125713 | Account Representative III           |        3 |
|           278 | Ortiz      | wortiz7p@reddit.com                | Masculino | Jardim        | 1/26/2000  |   88165 | Librarian                            |        4 |
|           279 | Clark      | mclark7q@privacy.gov.au            | Masculino | Jardim        | 6/26/2007  |   86291 | Dental Hygienist                     |        7 |
|           280 | Chavez     | rchavez7r@youtu.be                 | Masculino | Crianças      | 6/4/2008   |  139163 | Legal Assistant                      |        5 |
|           281 | Holmes     | aholmes7s@last.fm                  | Masculino | Música        | 11/5/2006  |   48892 | Accounting Assistant I               |        1 |
|           285 | Hunter     | rhunter7w@buzzfeed.com             | Masculino | Jardim        | 8/16/2000  |   62441 | Environmental Specialist             |        3 |
|           288 | Moore      | bmoore7z@twitpic.com               | Masculino | Eletronicos   | 8/11/2002  |  102395 | Account Coordinator                  |        6 |
|           289 | Sanders    | csanders80@blog.com                | Masculino | Lar           | 10/9/2009  |   44593 | Engineer III                         |        2 |
|           290 | Carter     | scarter81@cargocollective.com      | Masculino | Alimentícios  | 2/9/2007   |  120800 | Accountant III                       |        5 |
|           296 | Edwards    | aedwards87@webeden.co.uk           | Masculino | Crianças      | 4/7/2008   |   93962 | funcionarios Scientist               |        3 |
|           297 | Harrison   | nharrison88@imageshack.us          | Masculino | Calçados      | 11/12/2014 |  133845 | Executive Secretary                  |        4 |
|           298 | Berry      | lberry89@gov.uk                    | Masculino | Roupas        | 6/17/2010  |   43067 | Research Assistant I                 |        7 |
|           300 | Arnold     | barnold8b@thetimes.co.uk           | Masculino | Roupas        | 11/15/2005 |   77635 | VP Product Management                |        3 |
|           301 | Myers      | amyers8c@ibm.com                   | Masculino | Alimentícios  | 5/16/2011  |  148993 | Speech Pathologist                   |        1 |
|           303 | West       | jwest8e@berkeley.edu               | Masculino | Eletronicos   | 3/15/2012  |   76943 | General Manager                      |        7 |
|           305 | Johnson    | fjohnson8g@wikipedia.org           | Masculino | Eletronicos   | 11/20/2013 |  135001 | Recruiting Manager                   |        4 |
|           306 | Sanders    | ssanders8h@mtv.com                 | Masculino | Bebês         | 11/10/2008 |   52171 | Data Coordiator                      |        2 |
|           307 | Cunningham | acunningham8i@wikimedia.org        | Feminino  | Jardim        | 6/22/2006  |  139302 | Engineer IV                          |        5 |
|           309 | Riley      | driley8k@dell.com                  | Masculino | Esporte       | 7/4/2006   |  143781 | Product Engineer                     |        4 |
|           310 | Ray        | aray8l@cbc.ca                      | Masculino | Books         | 3/5/2008   |   51761 | Cost Accountant                      |        5 |
|           311 | Lane       | plane8m@pbs.org                    | Masculino | Calçados      | 5/26/2011  |   45463 | Marketing Manager                    |        5 |
|           314 | Elliott    | telliott8p@mozilla.org             | Masculino | Computadores  | 2/27/2008  |   77921 | Environmental Specialist             |        7 |
|           315 | Smith      | bsmith8q@mysql.com                 | Masculino | Games         | 7/25/2012  |   59580 | General Manager                      |        2 |
|           316 | Peters     | cpeters8r@epa.gov                  | Masculino | Esporte       | 9/16/2010  |   40418 | VP Marketing                         |        2 |
|           317 | Tucker     | htucker8s@photobucket.com          | Masculino | Alimentícios  | 8/5/2004   |  104844 | Structural Analysis Engineer         |        3 |
|           318 | Moore      | jmoore8t@umich.edu                 | Masculino | Computadores  | 4/27/2003  |  139304 | Help Desk Technician                 |        3 |
|           320 | Gilbert    | egilbert8v@nydailynews.com         | Masculino | Jardim        | 4/12/2010  |   52430 | Assistant Media Planner              |        5 |
|           322 | Marshall   | jmarshall8x@va.gov                 | Masculino | Computadores  | 11/7/2013  |   66063 | Web Designer III                     |        2 |
|           323 | Robinson   | rrobinson8y@businessinsider.com    | Masculino | Eletronicos   | 4/10/2008  |  134422 | Occupational Therapist               |        4 |
|           327 | Edwards    | medwards92@mail.ru                 | Masculino | Automotivo    | 10/4/2002  |  140194 | Programmer IV                        |        5 |
|           330 | Dunn       | cdunn95@ft.com                     | Masculino | Industrial    | 6/23/2010  |   68334 | Administrative Officer               |        7 |
|           333 | Garza      | pgarza98@go.com                    | Masculino | Industrial    | 6/30/2004  |   75281 | Data Coordiator                      |        7 |
|           334 | Mills      | fmills99@ameblo.jp                 | Masculino | Industrial    | 3/24/2009  |   91659 | VP Accounting                        |        4 |
|           337 | Spencer    | dspencer9c@ed.gov                  | Masculino | Filmes        | 6/16/2008  |   83256 | Senior Editor                        |        5 |
|           340 | Williams   | jwilliams9f@canalblog.com          | Masculino | Eletronicos   | 7/3/2007   |   90120 | Biostatistician I                    |        2 |
|           341 | Ellis      | cellis9g@ibm.com                   | Masculino | Lar           | 9/24/2008  |   80284 | VP Accounting                        |        3 |
|           344 | Owens      | eowens9j@skyrock.com               | Masculino | Books         | 6/17/2010  |   42714 | Electrical Engineer                  |        7 |
|           345 | Perez      | jperez9k@bloglines.com             | Masculino | Música        | 6/21/2005  |   65767 | Programmer Analyst I                 |        4 |
|           349 | Crawford   | acrawford9o@cpanel.net             | Masculino | Jardim        | 10/10/2012 |  142149 | Compensation Analyst                 |        2 |
|           350 | Hawkins    | ahawkins9p@hud.gov                 | Masculino | Eletronicos   | 5/21/2000  |  144073 | Programmer I                         |        1 |
|           352 | Moreno     | smoreno9r@slate.com                | Masculino | Lar           | 6/28/2000  |  107907 | Financial Advisor                    |        5 |
|           354 | Hudson     | shudson9t@shareasale.com           | Masculino | Outdoors      | 12/20/2005 |   78478 | Compensation Analyst                 |        5 |
|           355 | Murray     | cmurray9u@reverbnation.com         | Masculino | Esporte       | 7/7/2005   |   48812 | Human Resources Assistant III        |        7 |
|           357 | Reynolds   | dreynolds9w@angelfire.com          | Masculino | Outdoors      | 5/18/2003  |   87978 | Senior Financial Analyst             |        1 |
|           358 | Gutierrez  | jgutierrez9x@telegraph.co.uk       | Masculino | Automotivo    | 6/17/2002  |   67800 | Desktop Support Technician           |        2 |
|           359 | Tucker     | gtucker9y@instagram.com            | Masculino | Bebês         | 5/14/2010  |   42944 | Tax Accountant                       |        3 |
|           361 | Rice       | dricea0@hubpages.com               | Feminino  | Jardim        | 12/6/2006  |  144724 | Senior Quality Engineer              |        7 |
|           362 | Burke      | jburkea1@mayoclinic.com            | Masculino | Alimentícios  | 9/8/2003   |  147290 | Analyst Programmer                   |        6 |
|           363 | Hall       | jhalla2@prweb.com                  | Masculino | Automotivo    | 12/28/2001 |   83177 | Community Outreach Specialist        |        3 |
|           364 | Ryan       | rryana3@twitter.com                | Masculino | Saúde         | 5/31/2014  |   83252 | Civil Engineer                       |        3 |
|           365 | Gonzales   | jgonzalesa4@cpanel.net             | Masculino | Roupas        | 8/30/2000  |  127393 | Help Desk Technician                 |        7 |
|           366 | Jacobs     | bjacobsa5@domainmarket.com         | Masculino | Industrial    | 1/29/2006  |   67186 | Research Nurse                       |        1 |
|           370 | Austin     | eaustina9@answers.com              | Masculino | Lar           | 1/9/2002   |  110627 | Teacher                              |        7 |
|           371 | Sims       | bsimsaa@privacy.gov.au             | Masculino | Esporte       | 6/4/2000   |  127223 | Operator                             |        5 |
|           373 | Sims       | jsimsac@a8.net                     | Masculino | Joalheria     | 4/24/2012  |   86524 | Developer IV                         |        5 |
|           376 | Harper     | charperaf@google.pl                | Masculino | Lar           | 3/21/2007  |   47281 | VP Quality Control                   |        6 |
|           378 | Nichols    | bnicholsah@networkadvertising.org  | Masculino | Automotivo    | 7/30/2012  |  110589 | Cost Accountant                      |        7 |
|           379 | Hicks      | ghicksai@weibo.com                 | Masculino | Joalheria     | 4/3/2003   |   63735 | VP Accounting                        |        6 |
|           381 | Welch      | dwelchak@printfriendly.com         | Masculino | Música        | 9/9/2012   |  133007 | Software Test Engineer I             |        7 |
|           383 | Young      | pyoungam@theguardian.com           | Masculino | Roupas        | 12/10/2002 |  104079 | Systems Administrator IV             |        4 |
|           386 | Griffin    | tgriffinap@reddit.com              | Masculino | Games         | 2/27/2011  |  140567 | Research Associate                   |        2 |
|           387 | Burke      | mburkeaq@360.cn                    | Feminino  | Jardim        | 8/9/2003   |   95726 | Registered Nurse                     |        4 |
|           389 | Ortiz      | gortizas@w3.org                    | Masculino | Bebês         | 6/22/2013  |   42924 | Marketing Assistant                  |        2 |
|           390 | Olson      | aolsonat@cpanel.net                | Masculino | Computadores  | 9/14/2008  |   86670 | Web Designer II                      |        2 |
|           395 | Ward       | jwarday@quantcast.com              | Masculino | Bebês         | 9/11/2013  |   48927 | Sales Representative                 |        6 |
|           397 | Martin     | hmartinb0@homestead.com            | Masculino | Brinquedos    | 10/2/2006  |   81998 | Product Engineer                     |        5 |
|           400 | Harrison   | jharrisonb3@google.de              | Masculino | Saúde         | 12/24/2011 |   86046 | Nuclear Power Engineer               |        5 |
|           405 | Morgan     | dmorganb8@moonfruit.com            | Masculino | Industrial    | 5/19/2005  |  101945 | Web Developer I                      |        2 |
|           406 | Foster     | pfosterb9@intel.com                | Masculino | Brinquedos    | 2/1/2003   |   54007 | Geological Engineer                  |        5 |
|           407 | Vasquez    | jvasquezba@dion.ne.jp              | Masculino | Bebês         | 4/9/2013   |   54704 | Analog Circuit Design manager        |        3 |
|           411 | Hayes      | chayesbe@usnews.com                | Masculino | Crianças      | 4/9/2003   |  110615 | Paralegal                            |        6 |
|           412 | Vasquez    | jvasquezbf@dailymail.co.uk         | Masculino | Joalheria     | 1/14/2012  |   94596 | Web Developer I                      |        1 |
|           414 | Peterson   | epetersonbh@reverbnation.com       | Masculino | Games         | 8/10/2011  |   72505 | Registered Nurse                     |        3 |
|           415 | Holmes     | dholmesbi@jugem.jp                 | Masculino | Brinquedos    | 6/18/2001  |  147150 | Analog Circuit Design manager        |        6 |
|           417 | Hanson     | shansonbk@ted.com                  | Masculino | Eletronicos   | 11/4/2002  |   97372 | Systems Administrator I              |        6 |
|           419 | Dixon      | jdixonbm@indiatimes.com            | Masculino | Saúde         | 2/22/2008  |  104224 | Clinical Specialist                  |        5 |
|           426 | Graham     | tgrahambt@mediafire.com            | Masculino | Crianças      | 1/12/2009  |   49503 | Occupational Therapist               |        5 |
|           430 | Hall       | ehallbx@google.com.br              | Masculino | Esporte       | 10/25/2011 |   60793 | Registered Nurse                     |        7 |
|           433 | Parker     | dparkerc0@webeden.co.uk            | Masculino | Games         | 5/4/2014   |  114919 | Database Administrator III           |        7 |
|           437 | Roberts    | arobertsc4@businessweek.com        | Masculino | Filmes        | 7/10/2007  |   48934 | Electrical Engineer                  |        6 |
|           438 | Moreno     | bmorenoc5@addtoany.com             | Masculino | Alimentícios  | 4/25/2014  |   79980 | Recruiter                            |        5 |
|           439 | Boyd       | eboydc6@unc.edu                    | Masculino | Roupas        | 4/1/2002   |  108854 | Senior Editor                        |        4 |
|           440 | Murphy     | amurphyc7@wikia.com                | Masculino | Books         | 1/23/2007  |  128105 | Help Desk Technician                 |        7 |
|           441 | Bailey     | jbaileyc8@newsvine.com             | Masculino | Books         | 6/10/2008  |   71676 | GIS Technical Architect              |        4 |
|           445 | Greene     | dgreenecc@reuters.com              | Masculino | Brinquedos    | 3/23/2002  |  149835 | Geologist III                        |        1 |
|           447 | Brooks     | cbrooksce@washingtonpost.com       | Masculino | Lar           | 8/25/2000  |   79724 | Developer IV                         |        7 |
|           448 | Brooks     | jbrookscf@ucla.edu                 | Masculino | Books         | 6/25/2009  |  102458 | Occupational Therapist               |        1 |
|           453 | Anderson   | aandersonck@whitehouse.gov         | Masculino | Automotivo    | 1/24/2010  |  126485 | Computer Systems Analyst I           |        6 |
|           460 | Sanchez    | lsanchezcr@rediff.com              | Masculino | Automotivo    | 4/28/2005  |  146167 | Assistant Professor                  |        5 |
|           462 | Perry      | rperryct@answers.com               | Masculino | Industrial    | 7/31/2004  |   56382 | Executive Secretary                  |        3 |
|           463 | Mason      | dmasoncu@about.com                 | Masculino | Ferramentas   | 12/21/2010 |  120160 | Database Administrator II            |        3 |
|           465 | White      | dwhitecw@exblog.jp                 | Masculino | Computadores  | 10/17/2007 |  122540 | Administrative Officer               |        2 |
|           468 | Ross       | grosscz@blogtalkradio.com          | Masculino | Joalheria     | 4/16/2005  |   93609 | Environmental Specialist             |        6 |
|           474 | Reed       | creedd5@bloglines.com              | Masculino | Jardim        | 1/7/2004   |  144953 | Registered Nurse                     |        7 |
|           475 | Jenkins    | sjenkinsd6@bloglovin.com           | Masculino | Outdoors      | 12/22/2001 |   46072 | Nurse                                |        2 |
|           476 | Matthews   | jmatthewsd7@economist.com          | Masculino | Books         | 2/1/2012   |  119602 | Actuary                              |        5 |
|           477 | Gonzalez   | lgonzalezd8@fastcompany.com        | Masculino | Computadores  | 10/17/2010 |  122231 | Director of Sales                    |        5 |
|           478 | Mason      | jmasond9@networkadvertising.org    | Masculino | Esporte       | 4/16/2003  |  147166 | Systems Administrator I              |        6 |
|           479 | Nelson     | lnelsonda@example.com              | Masculino | Alimentícios  | 9/8/2009   |   56465 | Programmer IV                        |        6 |
|           480 | Miller     | amillerdb@reddit.com               | Masculino | Eletronicos   | 2/7/2001   |   78158 | Programmer Analyst I                 |        5 |
|           481 | Moore      | kmooredc@simplemachines.org        | Masculino | Joalheria     | 6/5/2013   |   62815 | Compensation Analyst                 |        4 |
|           482 | Harris     | rharrisdd@paypal.com               | Masculino | Brinquedos    | 6/10/2007  |  126468 | Budget/Accounting Analyst III        |        4 |
|           484 | Little     | glittledf@xrea.com                 | Masculino | Computadores  | 3/23/2009  |   83093 | Registered Nurse                     |        1 |
|           488 | Brooks     | ebrooksdj@berkeley.edu             | Masculino | Música        | 12/15/2011 |   69026 | Nuclear Power Engineer               |        6 |
|           489 | Parker     | lparkerdk@salon.com                | Feminino  | Jardim        | 1/16/2014  |   78109 | Research Nurse                       |        5 |
|           490 | Griffin    | bgriffindl@pbs.org                 | Masculino | Filmes        | 4/8/2000   |  116480 | Nurse Practicioner                   |        5 |
|           492 | Evans      | levansdn@house.gov                 | Masculino | Computadores  | 2/8/2010   |  106535 | funcionarios Scientist               |        1 |
|           493 | Banks      | bbanksdo@bravesites.com            | Masculino | Computadores  | 6/24/2008  |  137025 | Research Nurse                       |        5 |
|           494 | Sullivan   | ksullivandp@ucoz.com               | Masculino | Industrial    | 3/3/2005   |   71663 | Analog Circuit Design manager        |        3 |
|           496 | Andrews    | dandrewsdr@patch.com               | Masculino | Beleza        | 3/14/2008  |   40254 | Quality Control Specialist           |        5 |
|           498 | Gutierrez  | jgutierrezdt@woothemes.com         | Feminino  | Jardim        | 8/22/2001  |  106994 | Technical Writer                     |        3 |
|           499 | Hansen     | jhansendu@timesonline.co.uk        | Masculino | Brinquedos    | 4/29/2001  |  145559 | Office Assistant III                 |        2 |
|           500 | Rodriguez  | drodriguezdv@histats.com           | Masculino | Industrial    | 3/21/2001  |   91994 | Actuary                              |        5 |
|           501 | Bailey     | hbaileydw@networksolutions.com     | Masculino | Música        | 8/5/2001   |  138540 | Geologist IV                         |        7 |
|           504 | Weaver     | mweaverdz@ft.com                   | Masculino | Industrial    | 3/19/2000  |  131283 | funcionarios Scientist               |        4 |
|           505 | Walker     | jwalkere0@oakley.com               | Masculino | Computadores  | 6/20/2005  |  122108 | Analog Circuit Design manager        |        7 |
|           508 | Marshall   | dmarshalle3@about.me               | Masculino | Computadores  | 5/14/2007  |   90960 | Software Test Engineer II            |        7 |
|           509 | Gonzalez   | rgonzaleze4@furl.net               | Masculino | Saúde         | 12/30/2011 |   43986 | Geologist IV                         |        3 |
|           510 | Lawrence   | rlawrencee5@hhs.gov                | Masculino | Outdoors      | 11/21/2014 |  108748 | Senior Editor                        |        4 |
|           512 | Carpenter  | rcarpentere7@blog.com              | Masculino | Outdoors      | 6/13/2008  |  133360 | Research Nurse                       |        7 |
|           513 | Carter     | mcartere8@twitpic.com              | Feminino  | Jardim        | 7/9/2004   |   70814 | Account Representative I             |        4 |
|           514 | Peters     | gpeterse9@people.com.cn            | Masculino | Alimentícios  | 12/18/2010 |  132037 | Web Developer IV                     |        6 |
|           515 | Gomez      | kgomezea@bloglovin.com             | Masculino | Roupas        | 5/1/2002   |   55747 | Human Resources Assistant I          |        1 |
|           517 | Carpenter  | lcarpenterec@technorati.com        | Masculino | Computadores  | 2/8/2011   |  124418 | Chief Design Engineer                |        7 |
|           519 | Hamilton   | chamiltonee@google.es              | Masculino | Eletronicos   | 8/26/2003  |  141340 | Budget/Accounting Analyst III        |        4 |
|           520 | Owens      | sowensef@ted.com                   | Masculino | Industrial    | 6/2/2006   |   54672 | Structural Engineer                  |        4 |
|           521 | Williamson | dwilliamsoneg@creativecommons.org  | Masculino | Roupas        | 10/6/2003  |  118602 | Director of Sales                    |        5 |
|           522 | Flores     | lfloreseh@tinyurl.com              | Masculino | Joalheria     | 2/4/2000   |   97745 | Electrical Engineer                  |        7 |
|           527 | Richards   | jrichardsem@1688.com               | Masculino | Roupas        | 4/20/2005  |   69705 | Senior Developer                     |        3 |
|           528 | Cole       | fcoleen@msn.com                    | Masculino | Esporte       | 2/8/2012   |   96739 | Product Engineer                     |        2 |
|           529 | Meyer      | lmeyereo@storify.com               | Feminino  | Jardim        | 9/1/2006   |   52956 | Senior Developer                     |        3 |
|           531 | Hudson     | rhudsoneq@fotki.com                | Masculino | Lar           | 11/17/2010 |  143226 | Food Chemist                         |        7 |
|           532 | Rice       | rriceer@wired.com                  | Masculino | Books         | 2/14/2011  |  145747 | Financial Advisor                    |        3 |
|           538 | Freeman    | gfreemanex@nps.gov                 | Masculino | Calçados      | 10/24/2005 |  121296 | Civil Engineer                       |        2 |
|           539 | Kelley     | rkelleyey@feedburner.com           | Masculino | Filmes        | 3/20/2012  |  110660 | Senior Financial Analyst             |        4 |
|           540 | Matthews   | lmatthewsez@edublogs.org           | Masculino | Games         | 12/19/2001 |   89114 | GIS Technical Architect              |        5 |
|           542 | Rice       | ericef1@cpanel.net                 | Masculino | Música        | 2/1/2008   |   90069 | Assistant Professor                  |        5 |
|           545 | Lynch      | jlynchf4@jimdo.com                 | Masculino | Crianças      | 5/4/2009   |   44093 | Saúde Coach IV                       |        5 |
|           547 | Moreno     | bmorenof6@vkontakte.ru             | Masculino | Industrial    | 8/21/2013  |  140858 | Cost Accountant                      |        7 |
|           550 | Watson     | lwatsonf9@alexa.com                | Masculino | Calçados      | 5/1/2000   |   72334 | Developer IV                         |        3 |
|           551 | Cruz       | bcruzfa@nbcnews.com                | Masculino | Música        | 10/4/2011  |   69246 | Web Developer III                    |        6 |
|           552 | Gomez      | cgomezfb@reddit.com                | Masculino | Beleza        | 3/18/2011  |  107389 | Community Outreach Specialist        |        2 |
|           553 | George     | rgeorgefc@youtube.com              | Masculino | Automotivo    | 12/16/2009 |  141505 | Associate Professor                  |        6 |
|           554 | Frazier    | mfrazierfd@tripod.com              | Masculino | Brinquedos    | 1/6/2008   |   60318 | Engineer I                           |        5 |
|           557 | Frazier    | dfrazierfg@twitter.com             | Masculino | Crianças      | 8/26/2002  |  111244 | Environmental Specialist             |        6 |
|           558 | Hudson     | jhudsonfh@soundcloud.com           | Masculino | Bebês         | 3/21/2012  |  103845 | Nurse Practicioner                   |        1 |
|           560 | Kim        | jkimfj@dropbox.com                 | Masculino | Roupas        | 1/22/2014  |   67845 | Administrative Officer               |        7 |
|           561 | Rodriguez  | jrodriguezfk@cafepress.com         | Masculino | Esporte       | 4/8/2004   |   62527 | Recruiter                            |        1 |
|           562 | Perez      | jperezfl@seesaa.net                | Masculino | Ferramentas   | 5/17/2003  |   73412 | Librarian                            |        5 |
|           563 | Graham     | bgrahamfm@usatoday.com             | Masculino | Beleza        | 4/21/2011  |  123391 | Financial Advisor                    |        7 |
|           566 | Lynch      | mlynchfp@reverbnation.com          | Masculino | Eletronicos   | 12/10/2011 |   67140 | Systems Administrator III            |        3 |
|           568 | Day        | kdayfr@wix.com                     | Masculino | Lar           | 7/20/2004  |  135993 | Geologist IV                         |        4 |
|           572 | Duncan     | jduncanfv@etsy.com                 | Masculino | Automotivo    | 3/17/2014  |   45774 | Electrical Engineer                  |        2 |
|           574 | Pierce     | dpiercefx@marketwatch.com          | Masculino | Alimentícios  | 9/20/2005  |   45534 | Senior Sales Associate               |        1 |
|           575 | Bowman     | abowmanfy@devhub.com               | Masculino | Games         | 4/26/2002  |   75399 | VP Quality Control                   |        7 |
|           576 | Taylor     | staylorfz@issuu.com                | Masculino | Roupas        | 7/13/2006  |   50235 | Assistant Media Planner              |        1 |
|           577 | Jones      | jjonesg0@g.co                      | Masculino | Bebês         | 1/27/2011  |  128048 | Programmer III                       |        5 |
|           578 | Lynch      | hlynchg1@washingtonpost.com        | Masculino | Roupas        | 5/2/2006   |  111318 | Technical Writer                     |        3 |
|           579 | Barnes     | jbarnesg2@hubpages.com             | Feminino  | Jardim        | 12/23/2000 |  100763 | Database Administrator I             |        7 |
|           580 | Weaver     | kweaverg3@wikia.com                | Masculino | Computadores  | 5/23/2012  |   54231 | Accounting Assistant II              |        3 |
|           582 | Ramirez    | hramirezg5@merriam-webster.com     | Masculino | Joalheria     | 3/16/2005  |   58111 | Research Associate                   |        5 |
|           585 | Lopez      | nlopezg8@fema.gov                  | Masculino | Jardim        | 7/19/2007  |  138776 | Senior Editor                        |        2 |
|           589 | Arnold     | sarnoldgc@parallels.com            | Masculino | Filmes        | 1/27/2005  |  135786 | Account Representative I             |        7 |
|           592 | Duncan     | aduncangf@behance.net              | Masculino | Calçados      | 4/11/2004  |  110407 | Sales Associate                      |        5 |
|           601 | Lopez      | blopezgo@sourceforge.net           | Masculino | Saúde         | 3/12/2001  |  125944 | Office Assistant II                  |        2 |
|           602 | Henderson  | chendersongp@sina.com.cn           | Masculino | Ferramentas   | 9/17/2011  |  101937 | Teacher                              |        7 |
|           603 | Webb       | lwebbgq@last.fm                    | Masculino | Joalheria     | 12/6/2000  |  127569 | Analyst Programmer                   |        7 |
|           604 | Greene     | agreenegr@cmu.edu                  | Masculino | Roupas        | 6/30/2004  |  104517 | Research Assistant III               |        2 |
|           607 | Reyes      | hreyesgu@gnu.org                   | Masculino | Esporte       | 7/21/2007  |  130563 | Nuclear Power Engineer               |        7 |
|           608 | Garza      | hgarzagv@webmd.com                 | Masculino | Saúde         | 11/13/2004 |   73553 | Accountant IV                        |        6 |
|           609 | Fisher     | dfishergw@myspace.com              | Masculino | Eletronicos   | 1/21/2007  |   93995 | Teacher                              |        2 |
|           610 | Hicks      | hhicksgx@ifeng.com                 | Masculino | Saúde         | 8/23/2009  |   45270 | VP Marketing                         |        7 |
|           618 | Phillips   | wphillipsh5@economist.com          | Masculino | Roupas        | 6/7/2001   |  128205 | Sales Representative                 |        6 |
|           619 | Cole       | jcoleh6@php.net                    | Masculino | Ferramentas   | 6/2/2014   |  133190 | Research Nurse                       |        7 |
|           621 | Reynolds   | nreynoldsh8@redcross.org           | Masculino | Crianças      | 10/31/2004 |  111427 | Programmer I                         |        4 |
|           622 | Wright     | rwrighth9@jimdo.com                | Masculino | Eletronicos   | 3/15/2002  |   98339 | Assistant Manager                    |        3 |
|           623 | Ford       | mfordha@youku.com                  | Masculino | Beleza        | 2/27/2006  |   72948 | Teacher                              |        6 |
|           624 | Garza      | mgarzahb@elegantthemes.com         | Masculino | Books         | 11/26/2008 |   60203 | Product Engineer                     |        2 |
|           626 | Ruiz       | sruizhd@slashdot.org               | Feminino  | Jardim        | 1/12/2009  |   83706 | Assistant Media Planner              |        2 |
|           628 | Diaz       | rdiazhf@nih.gov                    | Masculino | Joalheria     | 8/11/2008  |   65110 | Compensation Analyst                 |        5 |
|           629 | Watkins    | mwatkinshg@bbb.org                 | Masculino | Joalheria     | 7/29/2011  |  128617 | Senior Editor                        |        4 |
|           630 | Pierce     | spiercehh@google.nl                | Masculino | Outdoors      | 2/9/2002   |   96107 | Actuary                              |        5 |
|           632 | Lopez      | clopezhj@mediafire.com             | Feminino  | Jardim        | 1/1/2004   |   86207 | Accountant II                        |        4 |
|           633 | Freeman    | mfreemanhk@walmart.com             | Masculino | Calçados      | 10/25/2000 |   79845 | Teacher                              |        1 |
|           638 | Walker     | bwalkerhp@dropbox.com              | Masculino | Games         | 6/9/2006   |  134488 | Software Consultant                  |        1 |
|           639 | Porter     | eporterhq@amazon.com               | Masculino | Calçados      | 2/13/2007  |  140243 | Financial Advisor                    |        5 |
|           640 | Washington | hwashingtonhr@bbc.co.uk            | Masculino | Joalheria     | 2/22/2003  |   44096 | Geologist IV                         |        4 |
|           643 | Johnston   | cjohnstonhu@psu.edu                | Masculino | Joalheria     | 3/21/2014  |  123820 | Computer Systems Analyst IV          |        4 |
|           644 | Carroll    | jcarrollhv@over-blog.com           | Masculino | Alimentícios  | 4/6/2002   |   52956 | Compensation Analyst                 |        7 |
|           645 | Webb       | twebbhw@google.com.br              | Masculino | Ferramentas   | 6/1/2007   |  143595 | Geological Engineer                  |        6 |
|           646 | Harvey     | lharveyhx@plala.or.jp              | Masculino | Beleza        | 8/14/2014  |  124707 | Registered Nurse                     |        6 |
|           647 | Washington | mwashingtonhy@icio.us              | Masculino | Eletronicos   | 10/15/2009 |   57092 | Internal Auditor                     |        2 |
|           648 | Long       | rlonghz@list-manage.com            | Masculino | Beleza        | 2/12/2007  |  149099 | Executive Secretary                  |        3 |
|           649 | Russell    | krusselli0@posterous.com           | Masculino | Calçados      | 11/18/2007 |   99352 | Recruiting Manager                   |        1 |
|           650 | Frazier    | rfrazieri1@github.com              | Masculino | Alimentícios  | 1/22/2013  |   44919 | Quality Engineer                     |        7 |
|           652 | Rivera     | criverai3@github.io                | Masculino | Joalheria     | 6/16/2006  |   60396 | Senior Quality Engineer              |        7 |
|           653 | Ramirez    | vramirezi4@yellowpages.com         | Masculino | Brinquedos    | 7/6/2013   |  147862 | Chemical Engineer                    |        5 |
|           654 | Mcdonald   | hmcdonaldi5@4shared.com            | Masculino | Automotivo    | 11/3/2002  |   69594 | Recruiting Manager                   |        3 |
|           656 | Campbell   | kcampbelli7@prnewswire.com         | Masculino | Books         | 4/3/2008   |   70804 | Quality Engineer                     |        2 |
|           658 | Gilbert    | agilberti9@parallels.com           | Masculino | Eletronicos   | 10/8/2013  |   61332 | Marketing Assistant                  |        3 |
|           660 | Nelson     | mnelsonib@ibm.com                  | Masculino | Calçados      | 12/8/2001  |  139564 | Pharmacist                           |        7 |
|           662 | Scott      | bscottid@mashable.com              | Masculino | Bebês         | 1/18/2000  |   86497 | Administrative Officer               |        6 |
|           669 | Owens      | sowensik@prlog.org                 | Masculino | Brinquedos    | 5/6/2001   |  104373 | Graphic Designer                     |        6 |
|           671 | Fuller     | jfullerim@theguardian.com          | Masculino | Calçados      | 12/11/2007 |   55568 | Senior Cost Accountant               |        7 |
|           672 | Fowler     | cfowlerin@yelp.com                 | Masculino | Esporte       | 5/5/2006   |   75159 | Biostatistician III                  |        2 |
|           673 | Thomas     | lthomasio@pagesperso-orange.fr     | Masculino | Saúde         | 10/27/2014 |   51782 | Operator                             |        6 |
|           674 | Adams      | jadamsip@cisco.com                 | Masculino | Brinquedos    | 8/28/2009  |   41855 | Payment Adjustment Coordinator       |        7 |
|           675 | Snyder     | ssnyderiq@vkontakte.ru             | Masculino | Games         | 6/22/2005  |  143846 | Web Developer III                    |        3 |
|           676 | Sullivan   | rsullivanir@xinhuanet.com          | Masculino | Música        | 9/29/2013  |  101756 | Programmer IV                        |        5 |
|           677 | Robertson  | lrobertsonis@forbes.com            | Masculino | Computadores  | 8/4/2014   |  136492 | Compensation Analyst                 |        4 |
|           678 | Mills      | jmillsit@webs.com                  | Masculino | Música        | 4/17/2011  |   82979 | Senior Quality Engineer              |        6 |
|           679 | Stone      | pstoneiu@narod.ru                  | Masculino | Eletronicos   | 5/15/2014  |   40218 | Paralegal                            |        2 |
|           681 | Butler     | dbutleriw@discuz.net               | Masculino | Lar           | 11/30/2008 |   47994 | Senior Quality Engineer              |        4 |
|           682 | Scott      | kscottix@ycombinator.com           | Masculino | Jardim        | 9/3/2004   |   50057 | Account Executive                    |        2 |
|           684 | Hall       | lhalliz@smh.com.au                 | Masculino | Joalheria     | 7/15/2009  |   77924 | Senior Sales Associate               |        7 |
|           686 | Watkins    | mwatkinsj1@myspace.com             | Masculino | Brinquedos    | 3/24/2004  |  104444 | Business Systems Development Analyst |        2 |
|           688 | Cruz       | kcruzj3@shinystat.com              | Masculino | Lar           | 6/29/2012  |   90829 | Recruiter                            |        6 |
|           690 | Perkins    | rperkinsj5@ehow.com                | Masculino | Música        | 5/9/2000   |   57988 | Web Developer I                      |        4 |
|           692 | Owens      | dowensj7@hibu.com                  | Masculino | Calçados      | 3/11/2013  |   58265 | Nurse Practicioner                   |        3 |
|           693 | Carr       | hcarrj8@latimes.com                | Masculino | Jardim        | 1/17/2005  |  143570 | Actuary                              |        4 |
|           696 | Anderson   | dandersonjb@linkedin.com           | Masculino | Games         | 10/7/2012  |   92640 | Executive Secretary                  |        7 |
|           697 | Woods      | twoodsjc@ucoz.ru                   | Masculino | Beleza        | 6/23/2000  |  123995 | Assistant Media Planner              |        5 |
|           698 | Cook       | tcookjd@blinklist.com              | Masculino | Jardim        | 12/12/2005 |   97351 | Saúde Coach I                        |        4 |
|           700 | Stone      | tstonejf@com.com                   | Masculino | Jardim        | 7/15/2004  |  100746 | VP Quality Control                   |        6 |
|           701 | Williams   | jwilliamsjg@rediff.com             | Masculino | Joalheria     | 10/13/2002 |  101599 | Developer II                         |        7 |
|           702 | Wells      | dwellsjh@is.gd                     | Masculino | Esporte       | 6/2/2014   |   77293 | Structural Analysis Engineer         |        5 |
|           704 | Burke      | eburkejj@godaddy.com               | Masculino | Computadores  | 6/12/2013  |  114690 | funcionarios Scientist               |        2 |
|           705 | Clark      | pclarkjk@joomla.org                | Masculino | Filmes        | 10/25/2009 |   97150 | VP Accounting                        |        6 |
|           707 | Perry      | jperryjm@Lar.pl                    | Masculino | Industrial    | 11/8/2006  |  124296 | Developer III                        |        1 |
|           711 | Roberts    | jrobertsjq@ed.gov                  | Masculino | Roupas        | 8/21/2009  |   80743 | Geological Engineer                  |        4 |
|           712 | Torres     | dtorresjr@state.tx.us              | Masculino | Joalheria     | 12/23/2007 |  105686 | Senior Developer                     |        6 |
|           714 | Cooper     | kcooperjt@salon.com                | Masculino | Games         | 9/26/2003  |   86446 | Statistician II                      |        4 |
|           716 | Jacobs     | bjacobsjv@thetimes.co.uk           | Masculino | Eletronicos   | 6/18/2004  |   69855 | Payment Adjustment Coordinator       |        4 |
|           718 | Armstrong  | darmstrongjx@cafepress.com         | Masculino | Saúde         | 1/3/2003   |   66447 | Account Coordinator                  |        2 |
|           719 | Wagner     | ewagnerjy@jalbum.net               | Masculino | Beleza        | 1/4/2013   |  135445 | Operator                             |        2 |
|           724 | Elliott    | delliottk3@who.int                 | Masculino | Industrial    | 5/20/2001  |  125115 | Senior Quality Engineer              |        3 |
|           725 | Richards   | krichardsk4@bloglines.com          | Masculino | Bebês         | 10/2/2003  |   80939 | Analyst Programmer                   |        1 |
|           726 | Welch      | dwelchk5@mapquest.com              | Masculino | Lar           | 9/11/2008  |   49463 | Research Nurse                       |        1 |
|           727 | Johnson    | mjohnsonk6@sciencedaily.com        | Masculino | Filmes        | 5/21/2012  |   83165 | Account Representative I             |        5 |
|           729 | Banks      | hbanksk8@nifty.com                 | Masculino | Joalheria     | 11/15/2013 |  119747 | Graphic Designer                     |        5 |
|           732 | Murray     | amurraykb@blinklist.com            | Masculino | Roupas        | 8/15/2004  |   50511 | Senior Cost Accountant               |        3 |
|           733 | Diaz       | jdiazkc@china.com.cn               | Masculino | Lar           | 11/20/2000 |   58847 | Community Outreach Specialist        |        4 |
|           735 | Richards   | jrichardske@hatena.ne.jp           | Masculino | Roupas        | 11/14/2014 |  116333 | Legal Assistant                      |        5 |
|           736 | Morgan     | emorgankf@businessinsider.com      | Masculino | Bebês         | 8/27/2009  |   80813 | Senior Quality Engineer              |        6 |
|           737 | Price      | bpricekg@xinhuanet.com             | Masculino | Saúde         | 7/26/2004  |  142794 | Recruiting Manager                   |        1 |
|           742 | Nguyen     | lnguyenkl@goodreads.com            | Masculino | Esporte       | 12/3/2007  |   77382 | Design Engineer                      |        6 |
|           744 | Gordon     | pgordonkn@mac.com                  | Masculino | Automotivo    | 9/18/2001  |  129324 | Developer I                          |        4 |
|           746 | Baker      | bbakerkp@list-manage.com           | Masculino | Industrial    | 10/4/2001  |  145283 | Payment Adjustment Coordinator       |        1 |
|           747 | Carroll    | mcarrollkq@whitehouse.gov          | Masculino | Crianças      | 7/30/2006  |   82674 | Junior Executive                     |        4 |
|           748 | Elliott    | delliottkr@dot.gov                 | Masculino | Roupas        | 12/9/2009  |  119097 | Administrative Assistant I           |        2 |
|           750 | Ward       | kwardkt@wikipedia.org              | Masculino | Música        | 7/16/2014  |  108228 | VP Sales                             |        3 |
|           751 | Kelley     | ckelleyku@gravatar.com             | Masculino | Eletronicos   | 5/7/2005   |  106602 | Occupational Therapist               |        2 |
|           755 | Tucker     | ctuckerky@1688.com                 | Masculino | Industrial    | 8/17/2011  |   49113 | Business Systems Development Analyst |        7 |
|           757 | Evans      | aevansl0@nba.com                   | Masculino | Games         | 4/5/2012   |  122595 | Automation Specialist I              |        6 |
|           758 | Ray        | nrayl1@mail.ru                     | Masculino | Brinquedos    | 10/23/2013 |  126661 | Systems Administrator I              |        2 |
|           759 | Vasquez    | jvasquezl2@edublogs.org            | Masculino | Jardim        | 4/2/2000   |  127695 | Systems Administrator I              |        7 |
|           760 | Bell       | sbelll3@goo.gl                     | Masculino | Bebês         | 7/24/2008  |   66608 | General Manager                      |        1 |
|           762 | Stanley    | cstanleyl5@springer.com            | Masculino | Eletronicos   | 8/9/2013   |  103237 | Account Executive                    |        7 |
|           763 | Bell       | dbelll6@wisc.edu                   | Masculino | Computadores  | 4/22/2002  |  122843 | Accountant IV                        |        2 |
|           765 | Williams   | dwilliamsl8@google.com.br          | Masculino | Ferramentas   | 11/7/2009  |  107709 | Nuclear Power Engineer               |        1 |
|           766 | Elliott    | kelliottl9@hhs.gov                 | Masculino | Books         | 12/18/2009 |  104149 | Food Chemist                         |        2 |
|           767 | Hall       | jhallla@hao123.com                 | Masculino | Books         | 8/2/2004   |   91501 | Editor                               |        7 |
|           771 | Clark      | rclarkle@ted.com                   | Feminino  | Jardim        | 9/9/2014   |   51792 | Software Consultant                  |        4 |
|           772 | Elliott    | delliottlf@fda.gov                 | Masculino | Filmes        | 10/13/2004 |  100570 | Senior Financial Analyst             |        5 |
|           773 | Dixon      | rdixonlg@parallels.com             | Masculino | Ferramentas   | 7/2/2007   |   60383 | VP Product Management                |        1 |
|           774 | Richards   | vrichardslh@forbes.com             | Masculino | Calçados      | 3/21/2006  |   68761 | Graphic Designer                     |        1 |
|           777 | Sims       | jsimslk@angelfire.com              | Masculino | Industrial    | 11/15/2001 |   95548 | Sales Associate                      |        3 |
|           778 | Thomas     | ethomasll@aol.com                  | Masculino | Automotivo    | 5/16/2013  |  116487 | Graphic Designer                     |        1 |
|           779 | Gonzalez   | mgonzalezlm@illinois.edu           | Masculino | Alimentícios  | 2/3/2005   |  148106 | Sales Representative                 |        2 |
|           780 | Cox        | dcoxln@studiopress.com             | Masculino | Games         | 4/4/2007   |  135719 | Database Administrator I             |        5 |
|           782 | Weaver     | jweaverlp@unblog.fr                | Masculino | Filmes        | 11/9/2011  |  120226 | Software Engineer II                 |        4 |
|           783 | Burns      | kburnslq@163.com                   | Masculino | Automotivo    | 8/13/2004  |   44377 | Technical Writer                     |        4 |
|           784 | Burns      | aburnslr@squidoo.com               | Masculino | Eletronicos   | 2/15/2008  |  102001 | Developer III                        |        4 |
|           785 | Miller     | nmillerls@behance.net              | Masculino | Música        | 3/10/2009  |   99151 | Information Systems Manager          |        1 |
|           786 | Willis     | jwillislt@instagram.com            | Masculino | Jardim        | 10/8/2000  |  123427 | General Manager                      |        4 |
|           789 | James      | kjameslw@yellowbook.com            | Masculino | Roupas        | 3/20/2005  |  130188 | Structural Analysis Engineer         |        1 |
|           792 | Mccoy      | jmccoylz@samsung.com               | Masculino | Industrial    | 9/20/2007  |   95787 | Engineer IV                          |        2 |
|           795 | Hansen     | dhansenm2@thetimes.co.uk           | Feminino  | Jardim        | 9/12/2008  |   79952 | Compensation Analyst                 |        4 |
|           796 | Owens      | jowensm3@mail.ru                   | Masculino | Beleza        | 8/17/2004  |  138682 | Analyst Programmer                   |        7 |
|           798 | Kim        | akimm5@vimeo.com                   | Masculino | Jardim        | 7/13/2008  |   83798 | Technical Writer                     |        5 |
|           800 | Peterson   | apetersonm7@eepurl.com             | Masculino | Outdoors      | 9/8/2000   |  144841 | Web Developer I                      |        4 |
|           805 | Gordon     | pgordonmc@creativecommons.org      | Masculino | Bebês         | 8/13/2014  |  110058 | Business Systems Development Analyst |        1 |
|           806 | Hill       | shillmd@ca.gov                     | Masculino | Calçados      | 12/15/2011 |  117092 | VP Product Management                |        5 |
|           807 | Gibson     | hgibsonme@ox.ac.uk                 | Masculino | Industrial    | 12/15/2005 |  148816 | Operator                             |        4 |
|           809 | Butler     | rbutlermg@netvibes.com             | Masculino | Automotivo    | 8/9/2006   |  128448 | Technical Writer                     |        3 |
|           811 | Harrison   | eharrisonmi@cdbaby.com             | Masculino | Joalheria     | 10/8/2010  |   41026 | Professor                            |        1 |
|           812 | Harvey     | jharveymj@yandex.ru                | Masculino | Beleza        | 9/25/2006  |  131816 | Sales Representative                 |        1 |
|           814 | Hayes      | shayesml@usda.gov                  | Masculino | Joalheria     | 2/28/2000  |   49457 | Compensation Analyst                 |        4 |
|           815 | Burton     | rburtonmm@ow.ly                    | Feminino  | Jardim        | 10/1/2014  |   80763 | Community Outreach Specialist        |        3 |
|           817 | Dixon      | sdixonmo@marriott.com              | Masculino | Bebês         | 1/15/2008  |  138970 | Structural Analysis Engineer         |        7 |
|           819 | Murray     | jmurraymq@spiegel.de               | Masculino | Industrial    | 12/6/2014  |   83237 | Editor                               |        4 |
|           820 | Baker      | jbakermr@cafepress.com             | Masculino | Brinquedos    | 1/20/2002  |  107749 | Graphic Designer                     |        2 |
|           821 | Riley      | rrileyms@uiuc.edu                  | Masculino | Joalheria     | 6/19/2012  |  149114 | Business Systems Development Analyst |        7 |
|           822 | Gonzalez   | jgonzalezmt@nsw.gov.au             | Masculino | Saúde         | 8/9/2007   |  107240 | Financial Analyst                    |        4 |
|           824 | Morris     | mmorrismv@tumblr.com               | Masculino | Alimentícios  | 9/26/2002  |   72008 | GIS Technical Architect              |        2 |
|           825 | Turner     | jturnermw@mapy.cz                  | Masculino | Books         | 4/3/2000   |   89285 | Community Outreach Specialist        |        5 |
|           827 | Fowler     | hfowlermy@nps.gov                  | Masculino | Bebês         | 5/7/2009   |  110383 | Chief Design Engineer                |        4 |
|           829 | Parker     | bparkern0@weibo.com                | Masculino | Saúde         | 11/27/2002 |   89503 | Research Associate                   |        2 |
|           835 | Tucker     | btuckern6@ovh.net                  | Masculino | Bebês         | 6/4/2014   |  148573 | Nurse Practicioner                   |        4 |
|           838 | Black      | rblackn9@sun.com                   | Masculino | Brinquedos    | 9/28/2008  |  117171 | Electrical Engineer                  |        4 |
|           840 | Hamilton   | phamiltonnb@earthlink.net          | Masculino | Books         | 10/19/2001 |   73778 | Sales Representative                 |        2 |
|           841 | Sullivan   | ssullivannc@clickbank.net          | Masculino | Crianças      | 3/4/2008   |   76731 | Accounting Assistant II              |        2 |
|           843 | Ross       | rrossne@salon.com                  | Masculino | Jardim        | 1/11/2001  |   62534 | Senior Editor                        |        3 |
|           844 | Hall       | jhallnf@1und1.de                   | Masculino | Outdoors      | 4/30/2013  |  100428 | Web Designer I                       |        3 |
|           845 | Washington | iwashingtonng@freewebs.com         | Masculino | Crianças      | 12/2/2001  |  109828 | VP Quality Control                   |        6 |
|           849 | Rice       | kricenk@cyberchimps.com            | Masculino | Alimentícios  | 8/2/2002   |   68034 | Senior Financial Analyst             |        4 |
|           850 | Kelley     | pkelleynl@biglobe.ne.jp            | Masculino | Crianças      | 4/4/2012   |   55214 | Senior Quality Engineer              |        2 |
|           852 | Rose       | srosenn@flavors.me                 | Masculino | Calçados      | 5/1/2010   |   76086 | Statistician I                       |        7 |
|           853 | Mendoza    | emendozano@edublogs.org            | Masculino | Beleza        | 8/3/2013   |  128947 | Help Desk Operator                   |        5 |
|           854 | Hanson     | ghansonnp@free.fr                  | Masculino | Ferramentas   | 10/14/2006 |  113354 | VP Quality Control                   |        4 |
|           855 | Perry      | eperrynq@imdb.com                  | Masculino | Jardim        | 5/21/2012  |   75125 | VP Marketing                         |        7 |
|           857 | Nichols    | dnicholsns@ifeng.com               | Masculino | Brinquedos    | 10/20/2003 |   43537 | Help Desk Operator                   |        4 |
|           859 | Clark      | mclarknu@bigcartel.com             | Masculino | Saúde         | 2/19/2007  |  112510 | Information Systems Manager          |        4 |
|           860 | Anderson   | landersonnv@sakura.ne.jp           | Masculino | Esporte       | 12/26/2004 |  115009 | Structural Engineer                  |        4 |
|           868 | Price      | jpriceo3@google.it                 | Masculino | Filmes        | 1/24/2003  |   52612 | Analyst Programmer                   |        7 |
|           870 | Howard     | ghowardo5@ow.ly                    | Masculino | Outdoors      | 8/21/2006  |  141753 | Assistant Professor                  |        3 |
|           871 | Hanson     | thansono6@paginegialle.it          | Masculino | Saúde         | 8/27/2007  |  133492 | Accountant II                        |        3 |
|           872 | Hall       | thallo7@hud.gov                    | Masculino | Crianças      | 12/28/2004 |  112126 | Information Systems Manager          |        3 |
|           874 | Spencer    | kspencero9@eventbrite.com          | Masculino | Books         | 9/29/2012  |  119769 | Director of Sales                    |        2 |
|           876 | Montgomery | amontgomeryob@dmoz.org             | Masculino | Calçados      | 12/22/2003 |   75676 | Recruiting Manager                   |        3 |
|           877 | Webb       | rwebboc@a8.net                     | Masculino | Outdoors      | 4/13/2005  |  144932 | Marketing Assistant                  |        4 |
|           878 | Williamson | pwilliamsonod@utexas.edu           | Masculino | Industrial    | 10/25/2010 |   80102 | Graphic Designer                     |        2 |
|           879 | Hill       | shilloe@ft.com                     | Masculino | Ferramentas   | 10/3/2011  |  144661 | Registered Nurse                     |        3 |
|           882 | George     | wgeorgeoh@mail.ru                  | Masculino | Calçados      | 2/23/2006  |   85249 | Engineer I                           |        2 |
|           883 | George     | lgeorgeoi@jigsy.com                | Masculino | Alimentícios  | 10/12/2007 |   66059 | Software Test Engineer IV            |        5 |
|           887 | Vasquez    | jvasquezom@networksolutions.com    | Masculino | Beleza        | 5/3/2014   |  131811 | Social Worker                        |        4 |
|           889 | Jackson    | ajacksonoo@slate.com               | Masculino | Games         | 5/7/2013   |   41516 | Nurse                                |        1 |
|           891 | Richards   | arichardsoq@so-net.ne.jp           | Masculino | Bebês         | 6/9/2011   |  140004 | Design Engineer                      |        7 |
|           892 | Crawford   | pcrawfordor@gnu.org                | Masculino | Beleza        | 6/23/2004  |  114436 | Account Representative IV            |        5 |
|           893 | Dixon      | jdixonos@msu.edu                   | Masculino | Alimentícios  | 3/31/2009  |   68684 | funcionarios Scientist               |        3 |
|           894 | Owens      | jowensot@gmpg.org                  | Masculino | Automotivo    | 9/18/2000  |  135326 | Graphic Designer                     |        1 |
|           895 | Moore      | kmooreou@slate.com                 | Masculino | Industrial    | 2/23/2014  |   40194 | Environmental Specialist             |        5 |
|           897 | Reid       | sreidow@smugmug.com                | Masculino | Beleza        | 3/9/2002   |   79718 | Marketing Manager                    |        4 |
|           900 | Jordan     | tjordanoz@instagram.com            | Masculino | Brinquedos    | 2/23/2012  |  115776 | Database Administrator I             |        2 |
|           901 | Perry      | kperryp0@chron.com                 | Masculino | Books         | 12/15/2013 |  146701 | Research Assistant II                |        7 |
|           902 | Wright     | bwrightp1@deviantart.com           | Masculino | Calçados      | 12/16/2011 |  109233 | Mechanical Systems Engineer          |        4 |
|           905 | Webb       | dwebbp4@about.com                  | Masculino | Automotivo    | 10/10/2007 |  111689 | GIS Technical Architect              |        5 |
|           906 | Spencer    | sspencerp5@mtv.com                 | Masculino | Eletronicos   | 4/18/2014  |  110881 | Electrical Engineer                  |        1 |
|           909 | Mcdonald   | hmcdonaldp8@facebook.com           | Masculino | Automotivo    | 12/26/2009 |  111041 | Research Assistant II                |        6 |
|           910 | Reyes      | freyesp9@ft.com                    | Feminino  | Jardim        | 12/21/2005 |  148860 | Product Engineer                     |        4 |
|           911 | Peterson   | jpetersonpa@unblog.fr              | Masculino | Automotivo    | 1/20/2002  |   53964 | Pharmacist                           |        1 |
|           915 | Bell       | cbellpe@npr.org                    | Masculino | Ferramentas   | 5/26/2010  |   92561 | Senior Sales Associate               |        1 |
|           917 | Gutierrez  | sgutierrezpg@bloglovin.com         | Masculino | Beleza        | 12/11/2004 |   95424 | VP Product Management                |        2 |
|           923 | White      | jwhitepm@elpais.com                | Masculino | Alimentícios  | 1/7/2003   |  122130 | Project Manager                      |        1 |
|           924 | Wilson     | bwilsonpn@chron.com                | Masculino | Beleza        | 3/6/2003   |  122446 | Systems Administrator II             |        6 |
|           925 | Phillips   | dphillipspo@adobe.com              | Feminino  | Jardim        | 10/3/2011  |  127367 | Recruiting Manager                   |        4 |
|           926 | Austin     | raustinpp@house.gov                | Masculino | Brinquedos    | 4/1/2014   |   50161 | Account Executive                    |        3 |
|           927 | Howard     | dhowardpq@ocn.ne.jp                | Masculino | Música        | 11/10/2003 |   82080 | Analog Circuit Design manager        |        2 |
|           930 | Hansen     | jhansenpt@slate.com                | Feminino  | Jardim        | 4/26/2013  |  129746 | Geological Engineer                  |        1 |
|           932 | Reyes      | lreyespv@tuttocitta.it             | Feminino  | Jardim        | 5/27/2009  |  134114 | Accounting Assistant IV              |        2 |
|           933 | Williams   | gwilliamspw@columbia.edu           | Masculino | Bebês         | 3/23/2014  |  131273 | Web Developer IV                     |        6 |
|           934 | Morrison   | tmorrisonpx@free.fr                | Masculino | Brinquedos    | 9/22/2005  |   93714 | Social Worker                        |        5 |
|           935 | Hudson     | mhudsonpy@altervista.org           | Masculino | Books         | 12/8/2001  |  146745 | Assistant Media Planner              |        1 |
|           937 | Hawkins    | chawkinsq0@bravesites.com          | Masculino | Esporte       | 9/25/2011  |  134931 | Tax Accountant                       |        1 |
|           939 | Austin     | kaustinq2@soup.io                  | Masculino | Industrial    | 1/19/2012  |   48840 | Product Engineer                     |        1 |
|           940 | Turner     | lturnerq3@ycombinator.com          | Masculino | Alimentícios  | 3/9/2014   |  146952 | Dental Hygienist                     |        2 |
|           941 | Cunningham | gcunninghamq4@webmd.com            | Feminino  | Jardim        | 5/7/2006   |   73565 | Mechanical Systems Engineer          |        7 |
|           942 | Lopez      | llopezq5@usgs.gov                  | Masculino | Calçados      | 6/7/2010   |   64443 | Senior Sales Associate               |        6 |
|           948 | James      | bjamesqb@hubpages.com              | Masculino | Ferramentas   | 2/13/2008  |   47271 | Programmer Analyst IV                |        1 |
|           949 | Woods      | jwoodsqc@patch.com                 | Masculino | Calçados      | 12/25/2005 |   59363 | Programmer Analyst IV                |        1 |
|           953 | Edwards    | pedwardsqg@cnbc.com                | Masculino | Alimentícios  | 9/3/2003   |  115360 | Social Worker                        |        6 |
|           955 | Marshall   | wmarshallqi@fastcompany.com        | Masculino | Roupas        | 4/18/2005  |   59234 | VP Product Management                |        7 |
|           958 | Wood       | bwoodql@epa.gov                    | Masculino | Ferramentas   | 12/5/2003  |   82164 | Compensation Analyst                 |        1 |
|           959 | Young      | jyoungqm@xing.com                  | Masculino | Música        | 11/29/2000 |  114695 | Statistician IV                      |        1 |
|           960 | Lane       | glaneqn@google.fr                  | Masculino | Computadores  | 12/31/2002 |   47541 | Payment Adjustment Coordinator       |        2 |
|           964 | Ramos      | mramosqr@is.gd                     | Masculino | Jardim        | 3/2/2002   |  127268 | Nurse Practicioner                   |        4 |
|           965 | Butler     | sbutlerqs@ow.ly                    | Masculino | Games         | 4/2/2014   |  115541 | Pharmacist                           |        6 |
|           968 | Moreno     | nmorenoqv@chronoengine.com         | Masculino | Beleza        | 9/26/2009  |  123017 | Speech Pathologist                   |        6 |
|           969 | Richards   | jrichardsqw@blog.com               | Masculino | Roupas        | 7/5/2014   |   85294 | Media Manager I                      |        4 |
|           970 | James      | pjamesqx@nymag.com                 | Masculino | Crianças      | 8/5/2004   |   54470 | Accounting Assistant IV              |        2 |
|           974 | Welch      | rwelchr1@eventbrite.com            | Masculino | Brinquedos    | 6/14/2002  |   87422 | Research Nurse                       |        3 |
|           975 | Fowler     | kfowlerr2@wp.com                   | Feminino  | Jardim        | 9/15/2014  |   88439 | Media Manager III                    |        2 |
|           976 | Chapman    | achapmanr3@list-manage.com         | Masculino | Beleza        | 2/25/2005  |  110749 | Legal Assistant                      |        7 |
|           977 | Collins    | acollinsr4@jiathis.com             | Masculino | Beleza        | 10/26/2006 |  137911 | Accountant IV                        |        4 |
|           978 | Hunt       | ghuntr5@moonfruit.com              | Masculino | Eletronicos   | 6/18/2009  |   93665 | Saúde Coach I                        |        3 |
|           979 | Medina     | bmedinar6@1688.com                 | Masculino | Bebês         | 12/31/2009 |   90068 | Quality Control Specialist           |        6 |
|           981 | Simmons    | dsimmonsr8@craigslist.org          | Masculino | Beleza        | 6/27/2011  |  116767 | Environmental Tech                   |        3 |
|           984 | Williams   | hwilliamsrb@webnode.com            | Masculino | Joalheria     | 10/20/2004 |   91608 | funcionarios Scientist               |        5 |
|           985 | Stevens    | hstevensrc@hugedomains.com         | Masculino | Eletronicos   | 2/28/2006  |  118791 | Safety Technician IV                 |        1 |
|           986 | Ryan       | hryanrd@networkadvertising.org     | Masculino | Beleza        | 11/27/2002 |  115888 | Librarian                            |        6 |
|           990 | Thomas     | lthomasrh@elegantthemes.com        | Masculino | Crianças      | 8/6/2003   |   76229 | Business Systems Development Analyst |        4 |
|           992 | Edwards    | nedwardsrj@wikimedia.org           | Masculino | Outdoors      | 10/30/2006 |  121713 | Director of Sales                    |        5 |
|           999 | Kennedy    | lkennedyrq@edublogs.org            | Masculino | Industrial    | 9/22/2004  |   48050 | Graphic Designer                     |        2 |
|          1000 | Howard     | showardrr@addtoany.com             | Masculino | Bebês         | 11/7/2003  |  148687 | General Manager                      |        3 |
+---------------+------------+------------------------------------+-----------+---------------+------------+---------+--------------------------------------+----------+
527 rows in set (0.01 sec)'''