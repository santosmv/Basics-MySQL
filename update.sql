#show table
select * from cursos;

#inserting entries with typos
insert into cursos values
	('1', 'pythonh', 'curso de programação', '20', '20', '2021'),
	('2', 'latex', 'curso de escrita com latex', '24', '10', '2020'),
    ('3', 'gastronomica', 'aprendindo fazer cumida', '24', '10', '2025');

#update command allow to change specific values of the table
update cursos
#change the field 'nome'
set nome = 'python'
#to the entry with idcurso = 1
where idcurso = 1;

#changing more values simultaneously
update cursos
set nome = 'gastronomia', descricao = 'aprendendo a fazer comida', ano = '2021'
where idcurso = 3;

update cursos
set nome = 'gastronomia', descricao = 'aprendendo a fazer comida bem', ano = '2021'
where idcurso = 3
limit 1;

update cursos
set nome = 'banco'
where totaulas = '10';

delete from cursos
where idcurso = 3;

delete from cursos
where carga = '24'
limit 2;

#erasing the table completely
truncate cursos;