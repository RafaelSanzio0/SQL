create database controle_compras;    # CRIA MEU BANCO DE DADOS
use controle_compras;   # INDICA QUAL BANCO IREI USAR
create table compras (id int auto_increment primary key, valor double, data date, observações varchar(255), recebido boolean);
desc compras;
insert into compras (valor,data,observações,recebido) values (1300.00,"2018-04-24","Placa de vídeo GTX 1080",1);
desc compras;
select * from compras;
delete  from compras where id = 2;
select * from compras;
delete from compras where id = 3;
select * from compras;
insert into compras (valor,data,observações,recebido) values (3998.56,"2018-04-19","PC GAMER COMPLETO",0);
select * from compras;
update compras set id = 2 where id = 4;
select * from compras;
select valor,data,observações from compras where valor > 2500.00;
update compras set valor = 1800, recebido = 0 where id = 1;
select * from compras;
insert into compras (valor,data,observações,recebido) values (600.78,"2018-04-29","PROCESSADOR",1);
select * from compras;
update compras set valor = 500.50, observações = "2x memorias DDR5" where id = 2;
insert into compras (valor,data,observações,recebido) values (350.00,"2018-04-12","Fonte Corsair",1);
insert into compras (valor,data,observações,recebido) values (250.00,"2018-04-06","Mouse Razer",1);
insert into compras (valor,data,observações,recebido) values (380.00,"2018-04-06","Teclado Razer",1);
select * from compras;
insert into compras (valor,data,observações,recebido) values (350.00,"2018-04-12","cu ",1);
delete from compras where id = 7;
select id,valor,observações from compras where (valor between 500 and 2000);
insert into compras (valor,data,observações,recebido) values (120.23,"2018-05-18",null,0);
select * from compras;
select * from compras where observações is not null;
desc compras;
alter table compras modify valor double not null;
alter table compras modify recebido boolean not null;
insert into compras (valor,data,observações,recebido) values (250.00,"2018-04-06","Mouse Razer",null);
alter table compras add column forma_pagamento enum ('dinheiro','cartão','boleto');

