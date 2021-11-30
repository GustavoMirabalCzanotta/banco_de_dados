create database avaliacao3b;
use avaliacao3b;

create table tb_produto(
nome_prod char(25) not null,
id_prod int primary key 
);

create table tb_nfiscal(
id_prod int,
id_cliente int,
data_venda char(11) not null,
id_nota int primary key,
valor numeric not null,
CONSTRAINT fk_tb_produto FOREIGN KEY (id_prod) REFERENCES tb_produto (id_prod),
CONSTRAINT fk_tb_cliente FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)
);

create table tb_cliente(
nome_cli varchar(100) not null,
id_cliente int primary key
);

insert into tb_produto(id_prod,nome_prod)
                 value(1001,'Tijolo'),
                      (1002,'Pedra'),
                      (1003,'Cimento'),
                      (1004,'Azulejo'),
                      (1005,'Janela'),
                      (1006,'Porta'),
                      (1007,'Areia'),
                      (1008,'Telha'),
                      (1009,'Cano'),
                      (1010,'Fio'),
                      (1011,'Tinta'),
                      (1012,'Madeira'),
                      (1013,'Martelo'),
                      (1014,'Pá'),
                      (1015,'Chave de fenda'),
                      (1016,'Prego'),
                      (1017,'Tomada'),
                      (1018,'Aditivo'),
                      (1019,'Cal'),
                      (1020,'Aço');
                      

 
 insert into tb_cliente(id_cliente,nome_cli)
                 value(1,'Maria'),
                      (2,'Carlos'),
                      (3,'Pedro'),
                      (4,'João'),
                      (5,'Gabriel'),
                      (6,'bianca'),
                      (7,'Camila'),
                      (8,'José'),
                      (9,'André'),
                      (10,'Paula');



insert into tb_nfiscal(id_nota,valor,data_venda,id_prod,id_cliente)
            value(1,200,'21/01/2021',1007,4),
                 (2,150,'21/01/2021',1003,7),
                 (3,1630,'21/01/2021',1004,9),
                 (4,1227,'22/01/2021',1018,8),
                 (5,300,'22/01/2021',1001,2),
                 (6,465,'23/01/2021',1009,10),
                 (7,173,'23/01/2021',1004,1),
                 (8,583,'23/01/2021',1007,10),
                 (9,284,'23/01/2021',1003,3),
                 (10,1847,'23/01/2021',1019,2),
                 (11,1738,'24/01/2021',1012,6),
                 (12,602,'25/01/2021',1010,4),
                 (13,381,'25/01/2021',1003,8),
                 (14,1237,'25/01/2021',1009,5),
                 (15,1749,'26/01/2021',1011,9),
                 (16,836,'26/01/2021',1006,2),
                 (17,200,'27/01/2021',1001,1),
                 (18,100,'27/01/2021',1014,4),
                 (19,150,'27/01/2021',1002,6),
                 (20,2739,'27/01/2021',1008,9),
                 (21,748,'28/01/2021',1003,5),
                 (22,648,'28/01/2021',1020,8),
                 (23,349,'28/01/2021',1005,3),
                 (24,926,'28/01/2021',1002,9),
                 (25,184,'28/01/2021',1015,1),
                 (26,274,'29/01/2021',1005,4),
                 (27,502,'29/01/2021',1014,7),
                 (28,3029,'29/01/2021',1003,10),
                 (29,2749,'30/01/2021',1020,9),
                 (30,1485,'30/01/2021',1006,5),
                 (31,1936,'30/01/2021',1011,10),
                 (32,159,'30/01/2021',1001,2),
                 (33,972,'30/01/2021',1017,6),
                 (34,849,'30/01/2021',1005,10),
                 (35,749,'31/01/2021',1014,6),
                 (36,284,'31/01/2021',1009,2),
                 (37,1827,'31/01/2021',1002,8),
                 (38,2037,'31/01/2021',1017,4),
                 (39,192,'31/01/2021',1010,6),
                 (40,140,'31/01/2021',1004,5),
                 (41,583,'1/02/2021',1007,3),
                 (42,847,'1/02/2021',1013,9),
                 (43,748,'1/02/2021',1001,8),
                 (44,3782,'1/02/2021',1020,10),
                 (45,473,'1/02/2021',1012,2),
                 (46,926,'2/02/2021',1003,1);
                 
-- parte 3                  
SELECT C.nome_cli as "Nome do cliente", F.data_venda as "data de venda", F.valor"Valor"
FROM tb_cliente as C
JOIN tb_nfiscal as F;

select C.nome_cli as "Nome do cliente", F.data_venda as"data de venda", F.valor"Valor", C.id_cliente as "ID do cliente"
from tb_cliente as C
JOIN tb_nfiscal as F
where C.id_cliente=9;

select C.nome_cli as "Nome do cliente", F.data_venda as"data de venda", F.valor as "Valor", C.id_cliente as "ID do cliente",id_prod "ID produto"
from tb_cliente as C
JOIN tb_nfiscal as F
ORDER BY C.nome_cli;

select C.nome_cli as "Nome do cliente", F.data_venda as"data de venda", SUM(F.valor) as "Valor", C.id_cliente as "ID do cliente"
from tb_cliente as C
JOIN tb_nfiscal as F
where C.id_cliente=6;

SELECT C.nome_cli as "Nome do cliente", F.valor as "Valor máximo"
from tb_cliente as C
JOIN tb_nfiscal as F
WHERE F.valor =
(SELECT MAX(F.valor) 
FROM tb_nfiscal as F
WHERE C.nome_cli = C.nome_cli
);

SELECT C.nome_cli as "Nome do cliente", F.valor as "Valor minimo",F.data_venda"Data" 
from tb_cliente as C
JOIN tb_nfiscal as F
WHERE F.valor =
(SELECT min(F.valor) 
FROM tb_nfiscal as F
WHERE C.nome_cli = C.nome_cli
);

select P.nome_prod as "nome do produto", F.valor as "Valor", F.data_venda as "Data de venda" 
from tb_produto as P
JOIN tb_nfiscal as F;

select P.nome_prod as "nome do produto", count(P.id_prod) as "quantidade de compras do produto"  
from tb_produto as P 
where P.nome_prod = 'pedra';

select P.nome_prod as "nome do produto", F.data_venda as "Data de venda", P.id_prod as "ID do produto"
from tb_produto as P
JOIN tb_nfiscal as F
where P.id_prod > 5 and F.data_venda = '30/01/2021';

DELETE FROM tb_nfiscal WHERE data_venda = '01/02/2021' and data_venda ='02/02/2021';