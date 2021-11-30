create database Atividade1;
use Atividade1;

create table tb_Departamento(
sigla varchar(4) primary key,
nome_Dep varchar(150) not null,
valor_orcamento double not null
);

create table tb_Empregado (
matricula smallint primary key auto_increment,
nome_emp varchar(150) not null,
cargo varchar(50) not null,
salario double not null,
sigla varchar(4) not null,
Constraint empre_dep foreign key (sigla) references tb_Departamento (sigla) 
);

insert into tb_Departamento (sigla, nome_Dep, valor_orcamento) values
('102R', 'Recursos Humanos', 30000),
('103A', 'Administração', 54000),
('104S', 'Secretariado', 26000),
('105E', 'Engenharia', 82000),
('101D', 'Diretoria', 30000);

insert into tb_Empregado (nome_emp, cargo, salario, sigla) values
('Carlos Lacerda', 'Administrador', 2500,'103A'),
('João Mendes', 'Engenheiro', 5400,'105E'),
('Pamela Garcia', 'Assistente de RH', 2200,'102R'),
('Joana Pires', 'Contador', 3100,'103A'),
('Henrique Oliveira', 'Administrador', 2500,'103A'),
('Mariana da Silva', 'Secretário', 2300,'104S'),
('Gabriela Costa', 'Engenheiro', 5900,'105E'),
('Joana Santos', 'Diretor Executivo', 6200,'101D'),
('Sonia Pereira', 'Assistente de Eng ', 3000,'105E'),
('Camile da Silva', 'Contador', 3400,'103A'),
('Antonio Campos', 'Encarregado', 4500,'102R'),
('Emerson Silva', 'Administrador', 2600,'103A'),
('Gabriel Siqueira', 'Assistente RH', 2200,'104S'),
('Marcio da Silva', 'Encarregado', 4500,'105E'),
('Valeria dos Santos', 'Engenheiro', 5200,'105E'),
('Pietro Camargo', 'Secretário', 2300,'104S'),
('Jamile de Souza', 'Assistente de RH', 2100,'102R'),
('Beatriz dos Santos', 'Encarregado', 4500,'103A'),
('Fernando Costa', 'Diretor Geral', 6500,'101D'),
('Alice Maria', 'Administrador', 2800,'103A');


/*3*/
select nome_emp, cargo, nome_Dep
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla;

/*4*/
select nome_emp, nome_Dep, salario
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla
order by salario desc;

/*5*/
select nome_emp, nome_Dep, salario
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla
order by nome_Dep asc;

/*6*/
select nome_emp, salario
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla
where nome_Dep = 'Secretariado';

/*7*/
select matricula, salario, nome_Dep
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla
where salario > 2800;

/*8*/
select nome_emp, nome_Dep, salario
from tb_Departamento D
Inner Join tb_Empregado E
On D.sigla = E.sigla
where salario > 1000 and salario < 5000;

/*9*/
select matricula, D.sigla, nome_dep
from tb_Departamento D 
inner join tb_Empregado E
on D.sigla = E.sigla
where cargo != 'Encarregado';

/*10*/
select matricula, nome_emp, nome_dep
from tb_Departamento D 
inner join tb_Empregado E
on D.sigla = E.sigla
where nome_emp like '%Silva';