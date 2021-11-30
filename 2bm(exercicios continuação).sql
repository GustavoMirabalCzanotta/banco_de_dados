use Atividade1;

/*1*/
update tb_Empregado
set sigla = '102R'
where matricula = 13;

 

select * from tb_Empregado;
/*2*/
insert into tb_Empregado(nome_emp, cargo, salario, sigla) values 
('Bianca de Souza', 'Secretário', 2150, '104S'),
('Mariana Pereira', 'Assistente de Eng', 3100, '105E'),
('Paulo da Silva', 'Contador', 1900, '103A'),
('Jessica de Almeida', 'Administrador', 2400, '103A'),
('Bernardo Campos', 'Engenheiro', 4700, '105E'),
('Leonardo dos Santos', 'Administrador', 2400, '103A'),
('Marlon Cardoso', 'Assistente de RH', 2100, '102R'),
('Patrick Marques', 'Secretário', 3000, '104S'),
('Milena da Silva', 'Contador', 3200, '103A'),
('Adriano Cerqueira', 'Administrador', 3400, '103A');

 

 

/*3*/
select SUM(salario) as 'Salário total' from tb_Empregado;

 

/*4*/
select SUM(salario) as 'Salário da Administração' from tb_Empregado
where sigla = '103A';

 

/*5*/
select SUM(salario) from tb_Empregado
where salario >= 3500;

 /*6*/
 select SUM(salario) as 'Saláriso dos Secretarios' from tb_Empregado
where sigla = '104S';

/*7*/
select count(sigla) as 'Quantidade de funcionários da ADM'
from tb_Empregado
where sigla = '104S';

 

select count(E.sigla) as 'Quantidade de funcionários da ADM'
from tb_Empregado E
inner join tb_Departamento D
on D.sigla = E.sigla
where nome_Dep = 'Administração';

 

select * from tb_Departamento;

 /*8*/

select count(sigla) as 'Quantidade de funcionários da Secretaria'
from tb_Empregado
where sigla = '104S'; 

/*9*/
select AVG(salario) as 'Média salarial ADM'
from tb_Empregado E
inner join tb_Departamento D
on D.sigla = E.sigla
where nome_Dep = 'Administração';

 /*10*/
 
 select AVG(salario) as 'Média salarial secretaria'
from tb_Empregado E
inner join tb_Departamento D
on D.sigla = E.sigla
where nome_Dep = 'Secretariado';

/*11*/
select nome_Dep, valor_orcamento from tb_Departamento
where valor_orcamento = 
                    (select MAX(valor_orcamento) 
                     from tb_Departamento);
/*12*/
select SUM(valor_orcamento) as 'Valor total de orçamento' 
from tb_Departamento;

 /*13*/

select AVG(salario) as 'Salário total'
from tb_Empregado; 

/*14*/
delete from tb_Empregado where matricula = 11;
select * from tb_Empregado;

 

/*15*/
delete from tb_Empregado 
where salario = 2500 and sigla = '103A';

 /*16*/


select count(sigla) as 'Quantidade de funcionários'
from tb_Empregado;


/*17*/
insert into tb_Empregado(nome_emp, cargo, salario, sigla) values
('Nivea Maria', 'Contador', 2600, '103A'),
('Diego Costa', 'Assistente de Eng', 3500, '105E'),
('Ingrid Sousa', 'Administrador', 1800, '103A'),
('Otávio Pelegrino', 'Administrador', 2100, '103A'),
('Renato Silva', 'Assistente de RH', 2300, '102R'),
('Valeria Martins', 'Administrador', 2100, '103A');

/*18*/

 select count(nome_emp) as 'Quantidade de funcionários'
from tb_Empregado; 

/*19*/
select Sum(salario)
from tb_Empregado E
join tb_Departamento D
on E.sigla = D.sigla
where valor_orcamento = 30000;