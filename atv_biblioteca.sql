drop table livro;
drop table usuario;
drop table emprestimo;


create table livro(
id serial primary key,
titulo varchar(100) NOT NULL,
usuario_id integer NOT NULL REFERENCES usuario(id)
);

create table usuario(
id serial primary key,
nome varchar(100) NOT NULL,
idade varchar(100) NOT NULL
);

create table emprestimo(
id serial primary key,
data_emprestimo DATE NOT NULL,
data_dev DATE NOT NULL
);

insert into usuario(nome,idade) values ('Vinicius','20');
insert into usuario(nome,idade) values ('Ana','15');
insert into usuario(nome,idade) values ('Pedro','25');
insert into usuario(nome,idade) values ('Marcelo','17');
insert into usuario(nome,idade) values ('João','23');
insert into usuario(nome,idade) values ('Melyssa','32');
insert into usuario(nome,idade) values ('Marcos','12');
insert into usuario(nome,idade) values ('Natalia','22');
insert into usuario(nome,idade) values ('Cleiton','14');
insert into usuario(nome,idade) values ('Felipe','16');



select * from usuario;



