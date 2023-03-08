create database tb_recrutamento;

use tb_recrutamento;
CREATE TABLE tb_recrutamento(
    id bigint auto_increment,
	nome varchar(255) not null,
	idade int,
	cargo varchar (20),
    salario double ,
    curriculo varchar (30),
    PRIMARY KEY (id)
); 
insert into tb_recrutamento (nome, idade, cargo, salario)
values ("marcos", 23, "diretor", 500.00);
insert into tb_recrutamento (nome, idade, cargo, salario)
values ("denise", 40, "diretor", 2000.00);
insert into tb_recrutamento (nome, idade, cargo, salario)
values ("bruna", 23, "diretor", 200.00);
insert into tb_recrutamento (nome, idade, cargo, salario)
values ("fred", 50, "diretor", 150.00);
insert into tb_recrutamento (nome, idade, cargo, salario)
values ("edna", 27, "diretor", 1000.00);

SELECT* FROM tb_recrutamento where salario>1000.00;
SELECT* FROM tb_recrutamento where salario<1000.00;

UPDATE tb_recrutamento SET cargo = "gerente" WHERE id = 2;
select* from tb_recrutamento;