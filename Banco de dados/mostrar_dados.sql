-Mostrar dados-
select * from livros l ;
select titulo from livros l where titulo = 'O mundo depois de amanhã';
select titulo from livros l where id_categoria = 1;
select titulo from livros l order by titulo asc;
select titulo from livros l order by titulo desc;
select * from livros l limit 2;

-Retorna registros que tem correspondência em ambas tabelas-
select livros.titulo, autores.nome 
from livros
inner join autores on livros.id_autor = autores.id_autor;

-Retorna registros da tabela esquerada os registros da tabela direita-
select Livros.titulo, Autores.nome 
from Livros
left join Autores on livros.id_autor = autores.id_autor;

-Retorna registros da tabela direita e registros da tabela esquerda-
select livros.titulo , autores.nome 
from livros
right join autores on livros.id_livro = autores.id_autor;

-Retorna todos os registros quando há uma correspondência-
select livros.titulo , autores.nome 
from livros
full outer join autores on livros.id_livro = autores.id_autor;




select * from categorias c ;
select * from autores a ;
select * from editoras e ;