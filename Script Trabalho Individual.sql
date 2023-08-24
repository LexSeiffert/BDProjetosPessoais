create table departamento (
    dep_cd_id SERIAL primary key,
    dep_tx_funcao VARCHAR(50),
    dep_tx_descricao VARCHAR(100)
);

create table funcionario (
    fun_cd_id SERIAL primary key,
    fun_tx_nomefun VARCHAR(50),
    fk_dep_cd_id_integer INT,
    foreign key (fk_dep_cd_id_integer) references departamento (dep_cd_id)
);

insert
	into
	departamento (dep_cd_id,
	dep_tx_funcao,
	dep_tx_descricao)
values 
(1,
'Roteiro',
'Onde toda a história é escrita e desenvolvida'),
(2,
'Storyboard',
'Usado para esboços e planejamento da animação'),
(3,
'Animação',
'Onde os personagens ganham vida'),
(4,
'Criação de Cenários',
'Onde o mundo ganha vida'),
(5,
'Colorização',
'Etapa final, onde tudo é colorido');

insert
	into
	funcionario(fun_cd_id,
	fun_tx_nomefun,
	fk_dep_cd_id_integer)
values
(1,
'Eduardo Almeida',
1),
(2,
'Lara Santos',
1),
(3,
'Gustavo Oliveira',
2),
(4,
'Mariana Pereira',
3),
(5,
'Rafael Costa',
3),
(6,
'Isabel Ferreira',
3),
(7,
'Diogo Souza',
4),
(8,
'Beatriz Barbosa',
5);

select
	*
from
	funcionario f ;

select
	*
from
	departamento d ;

--mostra os funcionarios e suas respectivas funcoes
select
	f.fun_tx_nomefun,
	d.dep_tx_funcao
from
	funcionario f
inner join
    departamento d on
	f.fk_dep_cd_id_integer = d.dep_cd_id;


--mostra todos os funcionarios de um determinado departamento
select
	f.fun_tx_nomefun,
	d.dep_tx_funcao
from
	funcionario f
inner join
    departamento d on
	f.fk_dep_cd_id_integer = d.dep_cd_id
where
	d.dep_tx_funcao = 'Animação';


--agrupa os funcionarios por departamento e mostra a quantidade dos mesmo em cada departamento--
select
	d.dep_tx_funcao,
	COUNT(f.fun_cd_id) as num_funcionarios
from
	departamento d
left join
    funcionario f on
	d.dep_cd_id = f.fk_dep_cd_id_integer
group by
	d.dep_tx_funcao;


--ordena os funcionarios em ordem alfabetica 
   select
	fun_tx_nomefun
from
	funcionario
order by
	fun_tx_nomefun;