create database atividade;
use atividade;

create table tbCliente(
id_cliente int auto_increment primary key,
nome varchar(150) not null
);

 create table tbPedido(
id_pedido int primary key auto_increment,
id_cliente int not null,
valor double not null,
Foreign key (id_cliente) references tbCliente(id_cliente)
);

Insert into tbCliente(nome) 
	values('Pedro Silva'),
		  ('Camila dos Santos'),
		  ('Maria da Silva'),
		  ('João Guedes'),
		  ('Ana Luiza Gonçalves'),
          ('Patricia Lima'),
          ('Thiago Queiroz'),
          ('Sabrina Nogueira'),
		  ('José Dias'),
          ('Marcos Paulo'),
		  ('Antônio Pereira');
 

Insert into tbPedido(id_cliente, valor) 
	values(5, 200.00),
		  (8, 50.00),
          (2, 850.00),
          (10, 20.00),
		  (9, 470.00),
          (11, 89.00),
          (3, 30.00),
          (11, 50.00),
          (4, 62.00),
		  (1, 560.00),
          (8, 420.00),
          (2, 52.00),
          (6, 82.00),
          (4, 150.00),
          (1, 39.00),
          (7, 250.00),
		  (8, 410.00),
          (6, 18.00),
		  (3, 550.00),
          (9, 25.00),
          (11, 936.00),
          (2, 70.00),
          (6, 10.00),
          (1, 140.00),
          (4, 16.00),
          (8, 700.00),
		  (4, 92.00),
          (11, 25.00),
          (8, 48.00),
          (6, 53.00),
          (7, 295.00),
          (10, 74.00),
          (1, 80.00),
		  (4, 975.00),
		  (6, 81.00),
          (2, 79.00),
		  (3, 167.00),
		  (8, 410.00),
          (5, 29.00),
          (7, 42.00),
          (8, 860.00);

select * from tbCliente;
select * from tbPedido;

/*Inner Join - junção entre a tabela de cliente e a tabela pedido*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente;

/*utilizando o ORDER BY*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
ORDER BY C.nome ASC;

select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
ORDER BY P.valor DESC;

/*utilizando where*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
Where C.nome = 'Pedro Silva'
ORDER BY P.valor DESC;

/*Utilizando operadores relacionais*/
/*maior que >*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor > 250;

/*menor que <*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor < 350;

/*maior igual que >=*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor >= 250;

/*maior igual que <=*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor <= 250;

/*diferente que <>*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor <> 50;

/*Utilizando operadores lógicos AND, OR, NOT*/
/*AND*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where P.valor > 100 AND C.nome = 'Pedro Silva';

/*or*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.nome = 'Pedro Silva' OR C.id_cliente = 5;

/*not*/
select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where not C.nome = 'Sabrina Nogueira';

/*Utilizando o LIKE*/
select * from tbCliente 
where nome like '%b%';

select C.nome, P.valor from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.nome LIKE 'C%';

/*Funções de agregação*/

/*SUM - Somar*/
Select SUM(valor) from tbPedido;

select C.nome, SUM(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 8;

/*MAX - Maximo*/
select MAX(valor) from tbPedido;

select C.nome, MAX(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente;

select C.nome, MAX(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 8;

/*MIN - Minimo*/
select MIN(valor) from tbPedido;

select C.nome, MIN(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente;

select C.nome, MIN(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 7;

/*AVG - Media aritmética*/
select AVG(valor) from tbPedido;

select C.nome, AVG(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 4;

/*COUNT - Contar os campos*/
select COUNT(valor) from tbPedido;

select C.nome, COUNT(P.valor) from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 3;

/*aliases*/
select C.nome as NOME, COUNT(P.valor) as CUSTOS from 
tbCliente C join tbPedido P
ON C.id_cliente = P.id_cliente
where C.id_cliente = 8;