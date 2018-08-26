# CRIANDO O BANCO DE DADOS

CREATE DATABASE Controle_universidade;
USE Controle_universidade;
#-------------------------------------------------------------------------------------------------------------------------------#

# DROP TABLE, CRIANDO AS TABELAS E INSERINDO VALORES

DROP TABLE IF EXISTS aluno;

CREATE TABLE aluno(
  id int(11) not null auto_increment,
  nome varchar(30) not null default '',
  email varchar(50) not null default '',
  primary key(id)
  )charset = utf8;
  
INSERT INTO aluno (id, nome, email)
	VALUES
	(1,'João da Silva','joao@dasilva.com'),
	(2,'Frederico José','fred@jose.com'),
	(3,'Alberto Santos','alberto@santos.com'),
	(4,'Renata Alonso','renata@alonso.com'),
	(5,'Paulo da Silva','paulo@dasilva.com');
#-------------------------------------------------------------------------------------------------------------------------------# 
DROP TABLE IF EXISTS curso;
 
CREATE TABLE curso(
  id int(11) not null auto_increment,
  nome varchar(40),
  primary key(id)
  )charset = utf8;
  
INSERT INTO curso (id, nome)
	VALUES
	(1,'SQL e banco de dados'),
	(2,'Desenvolvimento web com VRaptor'),
	(3,'Scrum e métodos ágeis'),
	(4,'PHP e MySql');
#-------------------------------------------------------------------------------------------------------------------------------#
DROP TABLE IF EXISTS exercicio;

CREATE TABLE exercicio(
  id int(11) not null auto_increment,
  secao_id int(11) not null,
  pergunta text not null,
  resposta_oficial text not null,
  primary key(id)
  )charset = utf8;
  
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial)
	VALUES
	(1,1,'O que é um select?','Uma consulta que devolve resultados'),
	(2,1,'Como funciona um select?','select campos from tabela'),
	(3,2,'O que é um update?','serve pra alterar dados'),
	(4,2,'Perigos do update?','Nao pode esquecer de colocar where'),
	(5,3,'O que é um delete?','deleta uma linha do banco de dados'),
	(6,3,'Cuidados com ele?','nao pode esquecer do where'),
	(7,4,'o que eh um insert?','serve para inserir um dado no banco'),
	(8,4,'como funciona?','insert into (coluna1, coluna2) values (v1, v2)'),
	(9,5,'Como funciona a web?','requisicao e resposta'),
	(10,5,'Que linguagens posso ajudar?','varias, java, php, c#, etc'),
	(11,6,'O que eh MVC?','model view controller'),
	(12,6,'Frameworks que usam?','vraptor, spring mvc, struts, etc'),
	(13,7,'O que é a classe Result?','serve para lidar com o resultado'),
	(14,8,'O que é um interceptor?','eh como se fosse um filtro que eh executado antes'),
	(15,8,'quando usar?','tratamento de excecoes, conexao com o banco de dados'),
	(16,9,'o que eh iteracao','tempo que vc tem pra agregar valor'),
	(17,9,'qual tamanho bom?','de 2 a 4 semanas, segundo o scrum guide antigo'),
	(18,10,'o que sao retrospectiva?','reunioes onde a ideia eh melhorar o processo'),
	(19,10,'quando devemos fazer?','geralmente a cada iteracao'),
	(20,11,'o que eh a reuniao diaria?','uma pequena reuniao para informar a equipe sobre o andamento da iteracao'),
	(21,11,'quando fazemos?','uma vez por dia, em um horario fixo e pre definido'),
	(22,12,'o que eh kanban?','um metodo agil tb'),
	(23,12,'o que eh xp?','outro metodo agil'),
	(24,12,'tem outros?','lean, crystal, fdd'),
	(25,13,'o que eh a web?','eh a internet, ue'),
	(26,13,'como funciona a web?','requisicao e resposta'),
	(27,14,'o que eh o apache?','servidor que sabe trabalhar com HTTP'),
	(28,14,'java funciona?','sim, quando colocamos o tomcat junto com ele'),
	(29,15,'o que eh mysql','essa voce sabe, certo? :)'),
	(30,16,'o que eh deploy?','eh o processo de colocarmos a aplicacao no ar'),
	(31,16,'como faz?','em php, basta copiar os arquivos php, em java, basta copiar o jar');
#-------------------------------------------------------------------------------------------------------------------------------#
DROP TABLE IF EXISTS matricula;

CREATE TABLE matricula(
  id int(11) not null auto_increment,
  aluno_id int(11) not null,
  curso_id int(11) not null,
  data datetime not null,
  tipo varchar(20) not null default '',
  primary key(id)
  )charset = utf8;
  
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo)
	VALUES
	(1,1,1,'2013-11-25 16:16:05','PAGA_PF'),
	(2,2,1,'2013-05-25 16:16:25','PAGA_PJ'),
	(3,3,3,'2013-07-21 16:16:30','PAGA_PF'),
	(4,4,4,'2013-11-15 16:15:35','PAGA_PK'),
	(5,2,2,'2012-01-04 00:00:00','PAGA_PJ');
#-------------------------------------------------------------------------------------------------------------------------------#
DROP TABLE IF EXISTS nota;

CREATE TABLE nota(
  id int(11) not null auto_increment,
  resposta_id int(11)  default null,
  nota int(11) default null,
  primary key(id)
  )charset = utf8;
  
INSERT INTO nota (id, resposta_id, nota)
	 VALUES
	(1,1,8),
	(2,2,0),
	(3,3,7),
	(4,4,6),
	(5,5,9),
	(6,6,10),
	(7,7,4),
	(8,8,4),
	(9,9,7),
	(10,10,8),
	(11,11,6),
	(12,12,7),
	(13,13,4),
	(14,14,9),
	(15,15,3),
	(16,16,5),
	(17,17,5),
	(18,18,5),
	(19,19,6),
	(20,20,8),
	(21,21,8),
	(22,22,9),
	(23,23,10),
	(24,24,2),
	(25,25,0),
	(26,26,1),
	(27,27,4);
#-------------------------------------------------------------------------------------------------------------------------------#
DROP TABLE IF EXISTS resposta;

CREATE TABLE resposta (
  id int(11) unsigned not null auto_increment,
  exercicio_id int(11) default null,
  aluno_id int(11) default null,
  resposta_dada text,
  primary key (id)
) charset=utf8;

INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada)
	VALUES
	(1,1,1,'uma selecao'),
	(2,2,1,'ixi, nao sei'),
	(3,3,1,'alterar dados'),
	(4,4,1,'eskecer o where e alterar tudo'),
	(5,5,1,'apagar coisas'),
	(6,6,1,'tb nao pode eskecer o where'),
	(7,7,1,'inserir dados'),
	(8,1,2,'buscar dados'),
	(9,2,2,'select campos from tabela'),
	(10,3,2,'alterar coisas'),
	(11,4,2,'ixi, nao sei'),
	(12,16,3,'tempo pra fazer algo'),
	(13,17,3,'1 a 4 semanas'),
	(14,18,3,'melhoria do processo'),
	(15,19,3,'todo dia'),
	(16,20,3,'reuniao de status'),
	(17,21,3,'todo dia'),
	(18,22,3,'o quadro branco'),
	(19,23,3,'um metodo agil'),
	(20,24,3,'tem varios outros'),
	(21,25,4,'eh a internet'),
	(22,26,4,'browser faz requisicao, servidor manda resposta'),
	(23,27,4,'eh o servidor que lida com http'),
	(24,28,4,'nao sei'),
	(25,29,4,'banco de dados!'),
	(26,30,4,'eh colocar a app na internet'),
	(27,31,4,'depende da tecnologia, mas geralmente eh levar pra um servidor que ta na internet');
#-------------------------------------------------------------------------------------------------------------------------------#
DROP TABLE IF EXISTS secao;

CREATE TABLE secao (
  id int(11)  not null auto_increment,
  curso_id int(11) not null,
  titulo varchar(255) not null default '',
  explicacao text not null,
  numero int(11) not null,
  primary key (id)
) charset=utf8;

INSERT INTO secao (id, curso_id, titulo, explicacao, numero)
    VALUES
	(1,1,'Aprendendo o SELECT','explicacao do capitulo Aprendendo o SELECT',1),
	(2,1,'Aprendendo o UPDATE','explicacao do capitulo Aprendendo o UPDATE',2),
	(3,1,'Aprendendo o DELETE','explicacao do capitulo Aprendendo o DELETE',3),
	(4,1,'Aprendendo o INSERT','explicacao do capitulo Aprendendo o INSERT',4),
	(5,2,'O que é a Web?','explicacao do capitulo O que é a Web?',1),
	(6,2,'Entendendo o MVC','explicacao do capitulo Entendendo o MVC',2),
	(7,2,'O objeto Result','explicacao do capitulo O objeto Result',3),
	(8,2,'Interceptor','explicacao do capitulo Interceptor',4),
	(9,3,'Planejando a iteração','explicacao do capitulo Planejando a iteração',1),
	(10,3,'Retrospectivas','explicacao do capitulo Retrospectivas',2),
	(11,3,'Reunião Diária','explicacao do capitulo Reunião Diária',3),
	(12,3,'Kanban e XP','explicacao do capitulo Kanban e XP',4),
	(13,4,'Introdução a Web','explicacao do capitulo Introdução a Web',1),
	(14,4,'O servidor Apache','explicacao do capitulo O servidor Apache',2),
	(15,4,'Lidando com o MySql','explicacao do capitulo Lidando com o MySql',3),
	(16,4,'Instalando a aplicação','explicacao do capitulo Instalando a aplicação',4);
    
#-------------------------------------------------------------------------------------------------------------------------------#

# COMANDOS PARA O BANCO

select * from aluno;
select * from curso;
select * from exercicio;
select * from matricula;
select * from nota;
select * from resposta;
select * from secao;
select a.nome, c.nome from aluno a join matricula m on m.aluno_id = a.id join curso c on m.curso_id = c.id;
select a.nome from aluno a where exists(select m.id from matricula m where m.aluno_id = a.id);
select a.nome from aluno a where not exists(select m.id from matricula m where m.aluno_id = a.id and m.data < now() - interval 18 month);
select * from aluno where id limit 2,2;
select * from aluno where nome like '%silva';
show tables;

# A PARTIR DAQUI, COMECEI A MELHORAR MINHAS CONSULTAS




#CONTEMOS GROUP BY AQUI
SELECT a.nome, c.nome, AVG(n.nota) FROM nota n JOIN
resposta r ON r.id = n.resposta_id JOIN
exercicio e ON e.id = r.exercicio_id JOIN
secao s ON s.id = e.secao_id JOIN
curso c ON c.id = s.curso_id JOIN
aluno a ON a.id = r.aluno_id 
GROUP BY a.nome, c.nome
HAVING AVG(n.nota) < 5;

SELECT DISTINCT tipo FROM matricula;

select c.nome, count(m.id) from 
curso c join matricula m on c.id = m.curso_id
where m.tipo in ('PAGA_PF', 'PAGA_PJ')
group by c.nome;

select a.nome, avg(n1.nota) as media from 
nota n1
join resposta r on r.id = n1.resposta_id
join exercicio e on e.id = r.exercicio_id
join secao s on s.id = e.secao_id
join aluno a on a.id = r.aluno_id
group by a.nome;

#Vamos calcular agora a média geral. Essa consulta é bem simples:
select avg(n2.nota) from nota n2;


#AQUI CONTEMOS SUBQUERYS
select a.nome, avg(n1.nota) as media, 
avg(n1.nota) - (select avg(n2.nota) from nota n2) as diferenca
from 
nota n1
join resposta r on r.id = n1.resposta_id
join exercicio e on e.id = r.exercicio_id
join secao s on s.id = e.secao_id
join aluno a on a.id = r.aluno_id
group by a.nome;

select a.nome, avg(n1.nota) as media, 
avg(n1.nota) - (select avg(n2.nota) from nota n2) as diferenca
from 
nota n1
join resposta r on r.id = n1.resposta_id
join exercicio e on e.id = r.exercicio_id
join secao s on s.id = e.secao_id
join aluno a on a.id = r.aluno_id
where 
a.id in (select aluno_id from matricula where data > now() - interval 2 month)
group by a.nome;

#Exiba a quantidade de matrículas por curso. Além disso, exiba a divisão entre matrículas naquele curso e matrículas totais.
select c.nome, count(m.id), 
count(m.id)/(select count(id) from matricula m)
from curso c join matricula m on m.curso_id = c.id
group by c.nome;


#AQUI LEFT JOIN

#traz somente os que responderam
select a.nome, r.resposta_dada from 
aluno a join resposta r on a.id = r.aluno_id;
#traz tudo do lado esquerdo
select a.nome, r.resposta_dada from 
aluno a left join resposta r on a.id = r.aluno_id;




select a.nome, r.resposta_dada from 
aluno a left join resposta r on a.id = r.aluno_id
where r.exercicio_id = 1





