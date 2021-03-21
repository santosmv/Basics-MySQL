#creating a table called pessoas
create table pessoas(
	#the id cannot be a null value and it does not need to be specified, once auto_increment already generates a value automatically
	id int not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(20) default 'Brasil',
    primary key (id)
)default charset = utf8;

#creating a new table called cursos (if there is no other with the same name)
create table if not exists cursos(
	nome varchar(20) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2021'
)default charset = utf8;

#including an id column at first
alter table cursos
add column idcurso int first;

#we make the id to be exclusive for each tuple
alter table cursos
add primary key(idcurso);