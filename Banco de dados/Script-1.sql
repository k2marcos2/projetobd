create table  Funcionarios (
	ID SERIAL primary key,
	Nome VARCHAR(255),
 	Idade INT,
 	Salario DECIMAL(10,2)
);
create table  produtos (
	ID SERIAL primary key,
	Nome VARCHAR(255),
 	Idade INT,
 	Salario DECIMAL(10,2)
);
create table pedidos (
	id SERIAL primary key,
	cliente_id INTEGER references cliente(id),
	produtos_id INTEGER references produtos(id),
	quantidade INTEGER
);


create or replace procedure almentar_preco_produtos(percentual DECIMAL)
language plqgsql
as $$
begin
	update produtos
	set preco = preco * (1 + percentual / 100);
end;
$$;

call aumentar_preco_produtos (10);

delete from cliente where idade <18;