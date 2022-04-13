create database from * biblioteca;

drop table livroseautores;
drop table livros;
drop table autores;

create table livros(
id serial PRIMARY KEY,
titulo varchar(100) not null
);


create table autores(
id serial PRIMARY key,
nome varchar(100)
);


create table autores(
id serial PRIMARY key,
id_livro integer,
id_autor integer
);

alter table livroseautores
add constraint FkLivAut
FOREIGN KEY (id_livro) references livros(id);

insert into livroseautores (id_livro,id_autor) values (55,55);

insert into livros (titulo) values ('As Viagens de Gulliver');
insert into livros (titulo) values ('Viagem ao Centro da Terra');
insert into livros (titulo) values ('Vinte mil léguas submarinas');
insert into livros (titulo) values ('A volta ao mundo em 80 dias');

insert into autores(nome) values ('Jonathan Swift');
insert into autores(nome) values ('Júlio Verne');

insert into livroseautores (id_livro,id_autor) values (1,1);
insert into livroseautores (id_livro,id_autor) values (2,2);
insert into livroseautores (id_livro,id_autor) values (3,2);
insert into livroseautores (id_livro,id_autor) values (4,2);

select * from livroseautores;
