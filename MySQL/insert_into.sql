#with bellow commmand we can select the database
#use cadastro

#inserto into the table pessoas
insert into pessoas
#considering this structure
(nome, nascimento, sexo, peso, altura)
#the values
values
('Einstein', '2000-05-20', 'M', '78.4', '1.85');

#we do not need to specify the structure, but the 'default' has to be inserted to the field
insert into pessoas values
(default, 'Newton', '1990-05-26', 'F', '60.4', '1.70', 'França');

insert into pessoas values
(default, 'Feynman', '1940-05-06', 'M', '69.4', '2.70', 'Brasil');

insert into pessoas values
(default, 'Bohr', '1968-06-14', 'F', '70.5', '1.65', default);

#show the table
select * from pessoas;