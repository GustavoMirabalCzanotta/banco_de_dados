create database avaliacao;
use avaliacao;

create table tbevento(
id_evento int primary key,
nome varchar(150) not null,
loocal varchar(150) not null,
preco numeric not null,
daata date not null
);

create table tbingresso(
id_ingresso int primary key,
saatus varchar(1) not null,
check (saatus = 'p' or 'c')
); 

create table tbusuario(
id_usuario int primary key,
nome varchar(150) not null,
login varchar(20) not null,
senha varchar(20) not null ,
creditos numeric
);

create table tem(
fk_ingresso int,
fk_usuario int,
fk_evento int,
foreign key(fk_ingresso) references ingresso(id_ingresso),
foreign key(fk_usuario) references usuario(id_usuario),
foreign key(fk_evento) references evento(id_evento)
);

insert into evento(id,loocal,preco,daata)
             value(1,'Exposição Leonado da Vinci','MIS',50.00,'25/04/2022'),
			      (2,'Oktoberfest', 'Jockey Club',120.00,'19/10/2022'),
				  (3,'Exposição - Evolução da Astronomia','Museu Catavento',35.00,'07/02/2022'),
			      (4,'Festival da Cerveja Artesanal','Memorial da America Latina', 20.00,'22/03/2022'),
			      (5,''),
				  (6,''),
			      (7,''),
			      (8,''),
			      (9,''),
			      (10,'');