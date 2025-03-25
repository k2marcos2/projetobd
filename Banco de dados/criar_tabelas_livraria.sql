-Criação da tabela livros-

create table Livros(
	ID_Livro SERIAL primary key,
	Titulo varchar(255),
	Autor varchar(255),
	Editora varchar(255),
	Endereco_Editora varchar(255),
	Categoria varchar(255)
);
-Criação da tabela Editoras-
create table Editoras(
	ID_Editora SERIAL primary key,
	nome varchar(255),
	Endereco varchar(255)
);
-Criação de relacionamento -
alter table livros
add column ID_editora INT references Editoras (ID_Editora);

alter table livros 
drop column Editora,
drop column Endereco_Editora;


create table Categorias(
	ID_Categoria SERIAL primary key,
	Nome varchar(255)
);

-Criar relacionamento livros -Categorias-

alter table livros
add column ID_Categoria INT references Categorias(ID_categoria);

alter table livros 
drop column Categoria;

create table Autores(
	ID_Autor SERIAL primary key,
	Nome varchar(255)
);
alter table livros 
add column ID_Autor INT references Autores(ID_Autor);

alter table livros 
drop column Autor;















