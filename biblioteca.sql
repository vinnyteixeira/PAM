drop table livros;
drop table autores;
drop table usuarios;

create table autores(
id serial primary key,
nome varchar(100) NOT NULL
);

create table livros(
id serial primary key,
titulo varchar(100) NOT NULL,
autor_id integer NOT NULL REFERENCES autores(id)
);

create table usuarios(
id serial primary key,
nome varchar(100) NOT NULL
);

insert into autores(nome) values ('Tanenball');
insert into autores(nome) values ('Sommerville');

insert into livros(titulo, autor_id) values ('Engenharia de software',2);
insert into livros(titulo, autor_id) values ('Sistemas Operacionais',1);
insert into livros(titulo, autor_id) values ('Sistemas Distribuidos',1);




select * from usuarios;

select * from autores;

select l.titulo,a.nome from livros as l
 inner join autores as a on l.autor_id = a.id
where l.autor_id = 1;


