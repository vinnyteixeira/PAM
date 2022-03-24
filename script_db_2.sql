drop table contratadas;
create table contratadas(
id serial PRIMARY KEY,
razaosocial varchar(200) not null,
numfunc int
);

drop table produto;
create table produto(
id serial PRIMARY key,
nome varchar(100),
idempresa int,
preco real
);


alter table produto add constraint fkEmpresaTemQueExistir
FOREIGN KEY (idempresa) references contratadas(id);


insert into contratadas (razaosocial,numfunc) values ('fiat',100);
insert into contratadas (razaosocial,numfunc) values ('assai',1);
select * from contratadas;
insert into produto (nome,idempresa) values( 'carro',1);
select * from produto;