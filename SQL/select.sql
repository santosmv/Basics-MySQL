#selecting only few columns
select ano, nome, totaulas from cursos
#ordering first by ano, then by name
order by ano, nome;

#selecting only one year
select nome, descricao, carga from cursos
where ano = '2016';

#select with conditional operator
select ano, nome, carga from cursos
where ano != 2016 and ano != 2019  and carga != 40 #can be >, <, !=
order by ano;

#between
select ano, nome, descricao from cursos
where ano between 2014 and 2016;

#in
select ano, nome, descricao from cursos
where ano in (2017, 2016)
order by ano;

#conditional
select * from cursos
where carga <= 30 and ano > 2015;

# %
select * from cursos
where nome like 'p%';

# _
select * from cursos
where nome like 'p%n_';

# distinct
select distinct nacionalidade from gafanhotos;

select distinct carga from cursos;

#count
select count(*) from gafanhotos;

select count(*) from cursos where carga > 40;



