-- [ AULA - DB TARDE - TURMA A - 09/03/2021 ] ---

-- Comentário de linha

/* cometario de
multiplas linhas */

-- Linguagem SQL-padrão (

/* Resumo
SQL é a linguagem comercial de banco de dados mais utilizada no mercado.
Devido à sua popularização, organizações como ANSI e ISO resolveram
padronizá-la. A padronização iniciouse em 1986 com a versão SQL-86 e evoluiu
até a versão SQL:2003, em fase de publicação.
O objetivo deste trabalho é mostrar alguns novos recursos adicionados à
linguagem nestes anos, em especial nas versões mais recentes (SQL:1999 e
SQL:2003), além de discutir o tipo de suporte dado a estes recursos e a
integração entre as organizações de padronização e os vendedores de
bancos de dados.
*/

-- Sub-Linguagem (DDL / DML / DCL )
-- Sub-Linguagem (DDL / DML / DQL/ DCL )
-- Sub-Linguagem (DDL)
-- Comandos da sub-linguagem SQL DDL
-- comando CREATE para criar objeto
-- comando DROP para apagar objeto
-- comando ALTER para modificar objeto
-- comando CREATE para criar objeto
-- Sintaxe : create <tipo_objeto> <nome_objeto> [;]
-- criando uma base de dados:

create database dbAB;
create database dbExemplo;

-- comando DROP para apagar objeto
-- Sintaxe : drop <tipo_objeto> <nome_objeto> [;]
-- apagando uma base de dados:
drop database dbExemplo;

-- exemplo criando segunda base de dados
cReAte dataBAsE dbExemplo2;

-- exemplo dropando segunda base de dados
drop database dbexemplo2;

-- exemplo criando segunda base de dados
create database dbExemplo3;

-- comando para utilizar a base de dados(colocar em uso)
use dbExemplo3;
use dbAB;

 -- [ AULA - DB TARDE - TURMA A - 16/03/2021 ] ---

-- comando CREATE para criar uma tabela
-- Sintaxe : create table <nome_tabela> (<parâmetro1>, <parâmetro1>,..) [;]
-- criando uma tabela: 
 
 use dbAB;
 
 create table Aluno(
 AlunoId integer, 
 Nome varchar(50),
 Endereco varchar(50),
 Estado char(2)   
 );
 
 create table Aluno2(
 AlunoId int,
 Nome varchar(50),
 Endereco varchar(50),
 Uf char(2)
 );
 
 -- Comandos da sub-linguagem SQL DDL
-- Comando DROP para apagar objeto
-- Sintaxe : drop <tipo_objeto> <nome_objeto> [;]
-- Exemplo apagando a tabela tbaulno2

 drop table Aluno2;
 
-- Exemplo apagando database 
drop database dbExemplo3; 

-- [ AULA - DB TARDE - TURMA A - 16/03/2021 ] ---

-- comando CREATE para criar uma tabela
-- Sintaxe : create table <nome_tabela> (<parâmetro1>, <parâmetro1>,..) [;]
-- criando uma tabela:

-- [ AULA AB - 23/02/2021 ] ---

-- Comentário de linha

/*cometario de 
multiplas linhas */

-- Linguagem SQL-padrão (      
/* Resumo
SQL é a linguagem comercial de banco de dados mais utilizada no mercado. Devido à sua
popularização, organizações como ANSI e ISO resolveram padronizá-la. A padronização iniciouse 
em 1986 com a versão SQL-86 e evoluiu até a versão SQL:2003, em fase de publicação.
O objetivo deste trabalho é mostrar alguns novos recursos adicionados à linguagem nestes anos,
em especial nas versões mais recentes (SQL:1999 e SQL:2003), além de discutir o tipo de suporte
dado a estes recursos e a integração entre as organizações de padronização e os vendedores de
bancos de dados.
*/

-- Sub-Linguagem (DDL / DML / DCL ) 
-- Sub-Linguagem (DDL / DML / DQL/ DCL ) 

-- Sub-Linguagem (DDL) 
-- Comandos da sub-linguagem SQL DDL
-- comando CREATE para criar objeto
-- comando DROP para apagar objeto
-- comando ALTER para modificar objeto

-- comando CREATE para criar objeto
-- Sintaxe : create <tipo_objeto> <nome_objeto> [;]
 -- criando uma base de dados: 

 create database dbAB;
 create database dbEXEMPLO;

-- comando DROP para apagar objeto
-- Sintaxe : drop <tipo_objeto> <nome_objeto> [;]
-- apagando uma base de dados:

drop database dbexemplo; 

-- exemplo criando segunda base de dados

creATe DataBAsE dbExemplo2;

-- ----x-x-x-x-x-x-x-x-x-x-x-x--xx--x-x-x-x-x-x-------				
-- próxima aula dia 02/03/2021 - turma A
-- Revisão criando banco de dados

create database dbExemplo3;
create database dbExemplo4;
create database dbExemplo5;

-- comando para utilizar a base de dados(colocar em uso)
use dbExemplo5;
use dbab;

-- comando CREATE para criar uma tabela
-- Sintaxe : create table <nome_tabela> (<parâmetro1>, <parâmetro1>,..) [;]
 -- criando uma tabela: 

create table Aluno(
AlunoID integer , 
Nome varchar(50), 
Endereco varchar(50), 
Estado char(2)
); 

create table Aluno2(
AlunoID int, 
Nome varchar(50), 
Endereco varchar(50), 
Estado char(2)
); 

-- Comandos da sub-linguagem SQL DDL

-- Revisão comando DROP para apagar objeto

-- Sintaxe : drop <tipo_objeto> <nome_objeto> [;]

-- Exemplo apagando a tabela aulno2

drop table aluno2;

-- Comandos da sub-linguagem SQL DDL
-- comando ALTER para alterar/modificar objeto
-- Exemplo como alterar colunas/atributos de uma tabela

-- Sintaxe : alter table <nome_tabela> <tipo_alteração> [column] <coluna_p_alteração> [;]
-- tipo_alteração : [DROP | ADD | MODIFY] 

-- Exemplo excluindo uma coluna existente na tabela:
alter table	aluno drop column Estado;

-- Exemplo incluindo uma coluna na tabela:
alter table aluno add Estado char(2);

-- Exemplo (1) alterando uma coluna na tabela:
alter table aluno modify Estado int; 

-- Exemplo (2) alterando uma coluna na tabela:
alter table aluno modify Column Estado char(2);

-- ------Exemplos com restrições na tabela-----
-- Atributo identificador [PK - primary key]
-- Preenchimento obrigatório [ not null]
-- Preenchimento não obrigatório/opcional [null]
-- preenchimento unico [unique] 
-- preenchimento padrão [default] 
-- auto-encremento [ auto_increment]
-- verificar um determinado valor em um campo especifico [check] 

create table tbProfessor(
ProfessorID int primary key auto_increment,
Nome varchar(50) not null,
TelRes int null,
CPF bigint  unique not null,
Sexo char(1) default 'F' ,
Nasc date not null check( Nasc < '2003/03/02')	
);

-- ----x-x-x-x-x-x-x-x-x-x-x-x--xx--x-x-x-x-x-x-------				
-- próxima aula dia 09/03/2021 - turma A
use dbab;

-- Revisão 
-- comando DROP
drop database dbAB;

-- comando CREATE
create database dbABManha;

-- comando USE
use dbabmanha;

-- comando CREATE TABLE
create table tbProfessor(
Id int primary key  auto_increment,
Nome varchar(50) not null,
TelRes int null,
TelCel int, 
CPF bigint not null unique,
Sexo char(1) default 'F',
Nasc date not null check( Nasc < '2003/11/01')	
);

create table tbProfessor2(
Id int,
RM int,
Valor int not null,
primary key (Id,RM),
check(Valor > 0)
);


-- comando Foreign Key para criar uma chave estrangeira
-- Sintaxe :  foreign key (<Campo_FK>) references <tabelaReferencia> (<camporeferencia>)

-- Exemplo 1

create table tbAluno(
AlunoID integer primary key,
Nome varchar(50),
Endereco varchar(50),
Estado char(2)
);

create table tbMencao(
Id int primary key auto_increment,
Notabim1 decimal,
Notabim2 decimal,
AlunoID integer,
foreign key (AlunoID) references tbAluno (AlunoID) 
);

-- Exemplo 1
drop table tbMencao;
drop table tbAluno;

create table tbAluno(
AlunoID integer primary key,
Nome varchar(50),
Endereco varchar(50),
Estado char(2)
);

create table tbMencao(
Id int primary key auto_increment,
Notabim1 decimal,
Notabim2 decimal,
AlunoID integer,
constraint FK_tbMencao_tbAluno 
foreign key (AlunoID) 
references tbAluno (AlunoID) 
);

-- Exemplos faz de conta
-- drop table tbAluno;
-- não é permitido porque existe uma constraint FK

-- SQL FOREIGN KEY em ALTER TABLE

-- Para retirar uma restrição FOREIGN KEY em uma tabela já foi criada, 
-- use o seguinte SQL:
-- Sintaxe: 
 -- alter table <nome_tabela> drop foreign key <nome> [;]

alter table tbMencao drop foreign key FK_tbMencao_tbAluno;


-- Exemplo 2,  faz de conta
drop table tbAluno;

-- exemplo criando tbAluno 
create table tbAluno(
AlunoID integer primary key, 
Nome varchar(50), 
Endereco varchar(50), 
Estado char(2)
);

-- Para criar uma restrição FOREIGN KEY em uma coluna existente, quando a tabela 
-- já foi criada, use o seguinte SQL:
-- sintaxe 1
-- ALTER TABLE <tabela>
-- ADD FOREIGN KEY (<campo>) REFERENCES <tabela_Referencia>(<campo_Referencia>);

alter table tbMencao 
add foreign key (AlunoID) 
references tbAluno(AlunoID);

-- Para o próximo exemplo, vamos excluir a FK
 alter table tbmencao drop foreign key tbmencao_ibfk_1;

-- sintaxe 2
-- ALTER TABLE <tabela>
-- ADD constraint <nome_da_constraint> 
-- FOREIGN KEY (<campo>) REFERENCES <tabela_Referencia>(<campo_Referencia>);

alter table tbMencao 
add constraint FK_tbMencao_tbAluno 
foreign key (AlunoID) 
references tbAluno(AlunoID);

-- --[aula dia 04/05/2021]--
 
-- Sub-Linguagem (DDL / DML / DCL ) 
 
-- Sub-Linguagem (DML) 
-- Comandos da sub-linguagem SQL DML
 
-- comando INSERT INTO para incluir (REGISTRO'S) na tabela 
-- comando DELETE  para apagar (REGISTRO'S) na tabela
-- comando UPDATE para modificar os (DADO'S)
-- comando SELECT para recuperar (mostrar)  os dados (DADO'S | REGISTRO'S)
 
use tbabTardeA;
 
-- A instrução SQL SELECT
-- A instrução SELECT é usada para recuperar "Mostrar" dado's ou registros em uma tabela.
 
-- Sintaxe SELECT
-- A primeira forma , mais simples:
-- O (*) funciona como um coringa, ou seja, quer dizer todos os campos (registro)
-- select [<campo1>,<campo2>,<campo3>,.. | * ] 
--   from <nome_da_tabela> [;]
 
-- Exemplo 1
 select AlunoID, Nome, Endereco, Estado 
 from tbAluno;
 

-- Exemplo 2
select * 
from tbAluno;
 

-- Exemplo 3 - quando quero ver colunas expecificas 
select AlunoID, Nome 
from tbAluno;
 
 
-- Exemplo 4
select  Nome, AlunoID, Endereco, Estado from tbAluno;
 

-- A instrução SQL INSERT INTO
-- A instrução INSERT INTO é usada para inserir novos registro's em uma tabela.
 
-- Sintaxe INSERT INTO
-- É possível escrever a instrução INSERT INTO de duas maneiras.
-- A primeira forma especifica os nomes das colunas e os valores a serem inseridos:
 
-- Sintaxe 1
-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);
 
-- Exemplo 1 
insert into tbAluno (AlunoId, Nome, Endereco,Estado)
             values (1,'Evellyn','Av Não sei','SP');
 
select * from tbAluno;
 
insert into tbAluno (AlunoId, Nome, Endereco,Estado)
             values (2,'Deivid','Av Caiu','SP');

insert into tbAluno (Nome, Estado, AlunoId, Endereco)
             values ('Gabriel','RJ',3,'Rua 17');

insert into tbAluno values(4,'Douglas','Rua quero','RJ'); 
 
insert into tbAluno values(5,'Guilherme','Rua 17','SP');
 
insert into tbAluno (AlunoID,Nome,Estado)
              Values(6, 'Enildo','MG');
 
-- Verificando registro na tabela 
select * from tbAluno;
 
-- Sintaxe 2
-- INSERT INTO table_name 
-- VALUES (value1, value2, value3, ...);
 
-- Exemplo 2
insert into tbAluno 
             values (7,'Lucas','Av Lua','SP');
 
-- Verificando regstro na tabela 
select * from tbAluno;
 
-- Exemplo 3
insert into tbAluno (Nome,Endereco,Estado,AlunoID)
             values ('João','Av Victor','SP',8);

 -- Exemplo 4
insert into tbAluno (Nome,AlunoID)
             values ('Matheus',9);            
 

-- [próxima aula dia 11/05/2021] --

use tbabTardeA;
select * from tbAluno;
 
-- verificando base de dados existentes e seus objetos 
show databases;   -- ver bases existentes 
show tables;     -- ver tabelas existentes na base em uso
describe tbaluno;   -- ver as propriedades de uma tabela
 
select * from tbAluno;
 
-- comando UPDATE para modificar os (DADO'S)
-- A instrução SQL UPDATE
-- A instrução UPDATE é usada para atualizar os registros ou dados existentes 
-- em uma tabela:
 
-- Sintaxe UPDATE
-- UPDATE table_name
-- SET column1 = value, column2 = value2,...
-- WHERE some_column =s ome_value 
 
-- Exemplo 1
update tbAluno set Endereco = 'Rua Maria' where AlunoID = 5;
 
select * from tbAluno;
 
-- Exemplo 2
update tbAluno 
set Endereco = 'Rua 17', Estado = 'RJ' 
where AlunoID = 2;
 
-- A instrução SQL DELETE
-- A instrução DELETE é usada para excluir registros de uma tabela:
 
-- Sintaxe DELETE
-- delete from <nome_tabela>  where <condição>
-- condição = <nome_coluna = valor>
 
-- Exemplo 1
delete from tbAluno where AlunoID = 2;
 
select * from tbAluno;
 
insert into tbAluno (AlunoID, Nome, Endereco)
               value( 11,'Kaua', 'Rua 17');
insert into tbAluno (AlunoID, Nome, Endereco)
               value( 12,'Victor', 'Rua 17');             

insert into tbAluno (AlunoID, Nome, Estado)
               value(13, 'Tiago', 'TO'),
                    (14,'Enildo','TO'),
                    (15,'você','TO');

-- Os operadores SQL AND, OR e NOT
-- A WHERE cláusula pode ser combinado com AND, ORe NOT operadores.
-- Os operadores AND e OR são usados para filtrar registros com base em mais 
-- de uma condição:
 
-- O AND operador exibe um registro se todas as condições separadas por AND 
-- forem TRUE.
 
-- Exemplo 1
select * from tbAluno;
select * from tbAluno where AlunoID = 3;
select * from tbAluno where Endereco = 'Rua 17';
 
update tbAluno set Estado = 'SP' where AlunoID = 2;
update tbAluno set Estado = 'RJ' where AlunoID = 10;
 
update tbAluno set Estado = 'MG' where AlunoID = 9;
update tbAluno set Estado = 'SP' where AlunoID = 11;
 
 
update tbAluno set Estado = 'SP', Endereco = 'Rua Maria' where AlunoID = 12;
 
select * from tbAluno;
 
 
select * from tbAluno where Endereco = 'Rua 17' and Estado = 'SP';
select * from tbAluno where Estado = 'SP';
select * from tbAluno where Endereco = 'Rua 17' and Estado = 'SP';
select * from tbAluno where Endereco = 'Rua 17' and Estado = 'RJ';
 

-- O OR operador exibe um registro se alguma das condições separadas por OR
-- for TRUE.
select * from tbAluno where Endereco = 'Rua 17' or Estado = 'SP';
-- exemplo 2
select * from tbAluno;
 

select * 
from tbAluno 
where Endereco = 'Rua 17' and Estado = 'RJ' or Estado ='TO';
 
 
select * 
from tbAluno 
where (Endereco = 'Rua 17' and Estado = 'RJ') or (Estado ='TO');
 
-- O NOT operador exibe um registro se as condições NÃO forem verdadeiras.
select * from tbAluno;
 
select * from tbAluno where Estado = 'SP';
 
select * from tbAluno where not Estado = 'SP';
 
select * from tbAluno where not(Endereco = 'Rua 17') or not(Estado = 'SP');
 
select * from tbAluno where not Endereco = 'Rua 17' and not Estado = 'SP';
 
-- A palavra-chave SQL ORDER BY
-- A ORDER BY palavra-chave é usada para classificar o conjunto de resultados 
-- em ordem crescente ou decrescente.
 
-- A ORDER BYpalavra-chave classifica os registros em ordem crescente por padrão.
--  Para classificar os registros em ordem decrescente, use a DESC palavra - chave.
 
-- Sintaxe ORDER BY
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column1, column2, ... ASC|DESC;
 
select * from tbAluno;
 
select * from tbAluno order by Nome asc;
 
select * from tbAluno order by Nome desc;
 
select * from tbAluno order by AlunoID asc;
 
select * from tbAluno order by AlunoID desc;
 
 
-- O que é um valor NULL?
-- Um campo com valor NULL é um campo sem valor.
 
-- Se um campo em uma tabela for opcional, é possível inserir um novo registro 
-- ou atualizar um registro sem adicionar um valor a este campo. 
-- Em seguida, o campo será salvo com um valor NULL.
 
-- Observação: um valor NULL é diferente de um valor zero ou de um campo que 
-- contém espaços. Um campo com um valor NULL é aquele que foi deixado em branco
--  durante a criação do registro!
 
-- Como testar valores NULL?
-- Não é possível testar os valores NULL com operadores de comparação, 
-- como =, <ou <>.
 
-- Teremos que usar os operadores IS NULL e IS NOT NULL em vez disso.
 
-- Sintaxe IS NULL
-- SELECT column_names
-- FROM table_name
-- WHERE column_name IS NULL;
 
select * from tbAluno where Endereco is null;
select * from tbAluno where Estado is null;
select * from tbAluno where Endereco is not null;

-- [aula do dia 18/05/2021]

create database db_2_bimestre;
use db


-- [aula do dia 25/05/2021]
use db_2_bimestre;
 -- A instrução SQL SELECT DISTINCT
-- A SELECT DISTINCT instrução é usada para retornar apenas valores distintos 
-- (diferentes).
-- Dentro de uma tabela, uma coluna geralmente contém muitos valores duplicados; 
-- e às vezes você só deseja listar os valores diferentes (distintos).
-- Sintaxe SELECT DISTINCT
-- SELECT DISTINCT column1, column2, ...
-- FROM table_name;
-- Exemplo

select * from tbaluno2;

select count(distinct Estado)  from  tbaluno2;

select count(distinct Nome)  from  tbaluno2;

select count(distinct Endereco)  from  tbaluno2;

-- A cláusula SQL SELECT Limit
-- A SELECT Limit cláusula é usada para especificar o número de registros a serem 
-- retornados.
-- Sintaxe
-- SELECT column_name(s)
-- FROM table_name
-- [WHERE] condition
-- LIMIT number;

SELECT * FROM tbAluno2;

describe tbAluno2;

insert into tbAluno2 (Nome, endereco, Estado)
              values('Evellyn', 'Rua 17','SP' ),
                    ('Douglas', 'Rua 17','SP' ),
                    ('Enildo', 'Rua 17','SP' );

SELECT * FROM tbAluno2 where Endereco = 'Rua 17' order by Nome limit 3;
   (select * 
     from tbAluno2
    where Endereco = 'Rua 17' 
 order by Nome desc
    limit  3)
 order by Nome;    
   
   (select *  from tbAluno2  where Endereco = 'Rua 17'  order by Nome desc  limit  3 ) order by Nome;  
   
   -- [aula 1/06/2021]
   
   use db_2_bimestre;
   
   -- Aliases [Alias] de SQL
-- Os aliases SQL são usados para dar a uma tabela ou coluna de uma tabela um nome 
-- temporário.
-- Os apelidos costumam ser usados para tornar os nomes das colunas mais legíveis.
-- Um alias existe apenas para a duração dessa consulta.
-- Um alias é criado com a "AS" palavra - chave.

 

-- Sintaxe da coluna de alias

 

-- SELECT column_name AS alias_name
-- FROM table_name;

 

    SELECT *  FROM tbaluno2;
    
    Select AlunoID as 'Código', Nome as 'Nome do Aluno' , Endereco, Estado as 'UF'  
     from tbaluno2;
    
    Select AlunoID as Código, Nome as 'Nome do Aluno' , Endereco, Estado as UF  
    from tbaluno2;

 

select MAX(AlunoId) from tbaluno2;

 

select MAX(AlunoId) as 'Maior valor' from tbaluno2;

 


-- O operador SQL LIKE
-- O LIKE operador é usado em uma WHERE cláusula para pesquisar um padrão especificado 
-- em uma coluna.
-- Existem dois curingas geralmente usados em conjunto com o LIKE operador:
-- O sinal de porcentagem (%) representa zero, um ou vários caracteres
--  O sinal de sublinhado (_) representa um único caractere
-- O sinal de porcentagem e o sublinhado também podem ser usados em combinações!

 

-- LIKE Sintaxe

 

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE columnN LIKE pattern;

 

-- Exemplo 

 

SELECT * FROM tbaluno2;

 

insert into tbaluno2 (Nome,Endereco,Estado)
             values('Matheus','Av joão, 1', 'MG'),
                   ('Marco Antonio','Av Gloria, 1', 'MG'),
                   ('Marco José','Av joão, 1', 'MG');

 

SELECT * FROM tbaluno2 where Nome = 'Marco';

 


SELECT * FROM tbaluno2 where Nome  like 'Marco%';

 


SELECT * FROM tbaluno2 where Nome  like 'M%';

 


SELECT * FROM tbaluno2 where Nome  like '%Antonio';

 

 

SELECT * FROM tbaluno2 where Nome  like '_a%';

 

 

SELECT * FROM tbaluno2 where Nome  like 'M%';

 

 

SELECT * FROM tbaluno2 where Endereco  like 'Av%';

 

 

SELECT * FROM tbaluno2 where AlunoID like '1%';

 

 

SELECT * FROM tbaluno2 where Nome  like '%c%';

 


SELECT * FROM tbaluno2 where Nome  like '%__c%' ;

 


-- O Operador SQL IN
-- O IN operador permite que você especifique vários valores em uma WHERE cláusula.

 

-- O IN operador é uma abreviatura para várias OR condições.

 

-- Sintaxe IN
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);

 

-- Exemplo 
select * from tbaluno2;

 

select * from tbaluno2 where Estado ='MG';

 

select * from tbaluno2 where Estado ='MG' or Estado = 'SP' or Estado = 'RJ';
select * from tbaluno2 where Estado in ('MG','SP');
select * from tbaluno2 where Estado in ('MG','SP','RJ');

 

 

-- O operador SQL BETWEEN
-- O BETWEEN operador seleciona valores dentro de um determinado intervalo. 
-- Os valores podem ser números, texto ou datas.

 

-- O BETWEEN operador é inclusivo: os valores inicial e final são incluídos. 

 

-- Sintaxe
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

 

select * from tbaluno2;

 

Select * from tbaluno2 where AlunoID >= 4 and AlunoID <=8;

 


Select * from tbaluno2 where AlunoID between 4 and 8;

 


-- A instrução SQL GROUP BY
-- A GROUP BY instrução agrupa linhas com os mesmos valores em linhas de resumo.

 

-- GROUP BY indicação é frequentemente utilizado com funções de 
-- agregação ( COUNT(), MAX(), MIN(), SUM(), AVG()) para o grupo de 
-- resultado-conjunto por uma ou mais colunas.

 

-- Sintaxe de GROUP BY

 

-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);

 

select * from tbAluno2;

 

select count(*) from tbAluno2 ;

 


select count(*) from tbAluno2 where Estado = "SP";

 


select count(*) from tbAluno2 group by Estado ;

 

 


select count(*),Estado from tbAluno2 group by Estado ;

 


select Estado, count(*) from tbAluno2 group by Estado ;

 


select Estado, count(*) from tbAluno2 group by Estado order by Estado desc;

 


    select Estado, count(*) 'Total', sum(AlunoID) as 'Soma ID' 
      from tbAluno2 
  group by Estado 
  order by Estado desc;