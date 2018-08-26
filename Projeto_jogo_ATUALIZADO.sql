# CRIANDO O BANCO DE DADOS

CREATE DATABASE jogo;
USE jogo;

# DROP TABLE, CRIANDO AS TABELAS E INSERINDO VALORES

DROP TABLE campeões;

CREATE TABLE campeões(
  cod_camp INT PRIMARY KEY, 
  nome VARCHAR(30), 
  tipo VARCHAR(30),
  preço DOUBLE,
  reino VARCHAR(30));
  
INSERT INTO campeões (cod_camp,nome,tipo,preço,reino) 
  VALUES 
  (1,'Ashe','Atirador',450.00,'freljord'),
  (2,'Darius','Lutador',6300.00,'Noxus'),
  (3,'VelKoz','Mago',6300.00,'Vazio'),
  (4,'Leona','Suporte',4800.00,'Demacia'),
  (5,'Lee Sin','Jungle',4800.00,'Ionia');
#-------------------------------------------------------------------------------------------------------------------------------#

DROP TABLE mapa;

CREATE TABLE mapa(
  cod_mapa INT PRIMARY KEY, 
  localidade VARCHAR(30));
  
INSERT INTO mapa (cod_mapa,localidade) 
  VALUES 
  (1,'Summoner rifts'),
  (2,'ARAM'),
  (3,'Twisted Treeline');
#-------------------------------------------------------------------------------------------------------------------------------#
  
DROP TABLE elo;

CREATE TABLE elo(
  cod_elo INT PRIMARY KEY, 
  nivel VARCHAR(30), 
  divisão VARCHAR(30));
  
INSERT INTO elo(cod_elo,nivel,divisão) 
  VALUES 
  (1,'I','Bronze'),
  (2,'II','Bronze'),
  (3,'III','Bronze'),
  (4,'IV','Bronze'),
  (5,'V','Bronze'),
  (6,'I','Prata'),
  (7,'II','Prata'),
  (8,'III','Prata'),
  (9,'IV','Prata'),
  (10,'V','Prata'),
  (11,'I','Ouro'),
  (12,'II','Ouro'),
  (13,'III','Ouro'),
  (14,'IV','Ouro'),
  (15,'V','Ouro'),
  (16,'I','Platina'),
  (17,'II','Platina'),
  (18,'III','Platina'),
  (19,'IV','Platina'),
  (20,'V','Platina'),
  (21,'I','Diamante'),
  (22,'II','Diamante'),
  (23,'III','Diamante'),
  (24,'IV','Diamante'),
  (25,'V','Diamante');
#-------------------------------------------------------------------------------------------------------------------------------#
  
DROP TABLE item;

CREATE TABLE item(
  cod_item INT PRIMARY KEY, 
  tipo VARCHAR(30), 
  valor DOUBLE);
  
  INSERT INTO item(cod_item,tipo,valor) 
    VALUES 
    (1,'Defesa',800.00),
    (2,'Ataque',900.00),
    (3,'Magia',750.00);
#-------------------------------------------------------------------------------------------------------------------------------#
    
DROP TABLE rotas;

CREATE TABLE rotas(
  cod_rota INT PRIMARY KEY, 
  tipo_champ VARCHAR(50));
  
  INSERT INTO rotas (cod_rota,tipo_champ) 
    VALUES 
    (1,'Suporte'),
    (2,'Jungle'),
    (3,'Mago'),
    (4,'Lutador'),
    (5,'Atirador');
#-------------------------------------------------------------------------------------------------------------------------------#
    
DROP TABLE modo_de_jogo;

CREATE TABLE modo_de_jogo(
  cod_modo INT PRIMARY KEY, 
  mapa VARCHAR(30));
  
INSERT INTO modo_de_jogo(cod_modo,mapa) 
  VALUES 
  (1,'(5x5)Summoner Rifts'),
  (2,'(1x1)ARAM'),
  (3,'(3x3)Twisted Treeline');
#-------------------------------------------------------------------------------------------------------------------------------#

# COMANDOS PARA O BANCO

SHOW TABLES;
SELECT * FROM campeões;
SELECT * FROM elo;
SELECT * FROM mapa;
SELECT * FROM modo_de_jogo;
SELECT * FROM rotas;
SELECT * FROM item;

# ETAPA 3

#1. Elaborar e resolver UMA consulta contendo GROUP BY, FUNÇÃO AGREGADA e HAVING, e envolvendo DUAS tabelas com INNER JOIN;

SELECT *, COUNT(c.cod_camp) AS campeões_nesta_divisão FROM campeões c INNER JOIN
elo e ON e.cod_elo = c.cod_camp
GROUP BY c.cod_camp
HAVING c.nome = 'Lee Sin';

#2. Elaborar e resolver UMA consulta contendo DUAS tabelas e utilizando LEFT JOIN;

SELECT c.nome, r.tipo_champ FROM campeões c LEFT JOIN
rotas r ON c.cod_camp = r.cod_rota;

#3. Elaborar e resolver UMA consulta contendo TRÊS tabelas e utilizando INNER JOIN;

SELECT * FROM campeões c INNER JOIN
elo e ON e.cod_elo = c.cod_camp INNER JOIN
mapa m ON m.cod_mapa = c.cod_camp;







































  








  

  
  
 



