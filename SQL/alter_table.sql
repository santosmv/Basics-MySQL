#describe the table
desc gafanhotos;

#change the table
alter table pessoas
#adding a new column
add column profissao varchar(10);

alter table pessoas
#remove column
drop column profissao;

alter table pessoas
#the 'after' means the inclusion of column after
add column profissao varchar(10) after nome;

alter table pessoas
#including a column in the beginning
add column codigo int first;

alter table pessoas
#change the varchar argument
modify column profissao varchar(20);

alter table pessoas
#it makes the default to be '' for profissao
modify column profissao varchar(40) default '';

alter table pessoas
#changing the name of the column
change column profissao prof varchar(20);

alter table pessoas
#changing the name of the table
rename to gafanhotos;