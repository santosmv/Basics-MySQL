#show table
select * from cursos;

#create a table
create table if not exists cursos(
	idcurso int auto_increment,
    nome varchar(20) not null,
    carga smallint,
    totaulas smallint,
    preco decimal(6, 2) default '100.00',
    primary key(idcurso)
);

insert into cursos values
(default, 'Python', '20', '20', default),
(default, 'Java', '1000', '20', '2902'),
(default, 'HTML5', '20', '20', default);

#delete all fields with totaulas = 20
delete from cursos
where totaulas = '20';

#delete all fields with totaulas = 20, but up to 1 entry
delete from cursos
where totaulas = '20'
limit 1;