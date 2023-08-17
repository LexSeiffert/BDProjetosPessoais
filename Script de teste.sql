--Comando para deletar tabela
--drop table teste;

--Comando para criar banco de dados
create database dvdrental;

--film -> language
--film -> film_actor -> actor
--film -> inventory -> rental -> payment -> costumer -> address -> city -> country
--							  -> staff -> store -> address -> city -> country



--listar os filmes com language_id igual a 3
select * from film where language_id = 3;
--listar os filmes com language_id diferente de 1
select * from film where language_id <> 1;
select * from film where not language_id = 1;
select * from language;
--listar as colunas da tabela language junto com as colunas da tabela film
select
	*
from
	language l
inner join film f on
	l.language_id = f.language_id;
--listar os filmes com colunas específicas das tabelas film e language
select
	f.title,
	f.description,
	f.release_year,
	l.name
from
	language l
inner join film f on
	l.language_id = f.language_id;















