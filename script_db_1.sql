drop table contratadas;
create table contratadas(
id serial PRIMARY KEY,
razaosocial varchar(200) not null,
numfunc int
);

drop table produtoDeHigienes;
create table produtoDeHigienes(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table produtoDeFrigorificos;
create table produtoDeFrigorificos;(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table produtoCereais;
create table produtoCereais(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table produtoLaticinios;
create table produtoLaticinios(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table produtoVegetais;
create table produtoVegetais(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table produtoEnlatados;
create table produtoEnlatados(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);

drop table marca;
create table marca(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
);

drop table funcionarios;
create table funcionarios(
id serial PRIMARY key,
nome varchar(100),
idfunc int,
);

drop table administrador;
create table administrador(
id serial PRIMARY key,
nome varchar(100),
idadm int,
);









alter table produto add constraint fkEmpresaTemQueExistir
FOREIGN KEY (idempresa) references contratadas(id);


insert into contratadas (razaosocial,numfunc) values ('fiat',100);
insert into contratadas (razaosocial,numfunc) values ('assai',1);
select * from contratadas;
insert into produto (nome,idempresa) values( 'carro',1);
select * from produto;