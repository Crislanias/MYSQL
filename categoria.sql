use db_quitanda; -- 

create table tb_categoria (

id bigint auto_increment,
	descrição varchar(255) not null,
    PRIMARY KEY (id)

);
insert into tb_categoria (descricao) values ("fruita");
insert into tb_categoria (descricao) values ("verdura");
insert into tb_categoria (descricao) values ("legume");

SELECT* FROM tb_categoria;

alter table tb_produtos add categoria_id bigint;

alter table tb_produtos add constraint fk_produtos_categoria
foreign key (categoria_id) references tb_categoria (id)

SELECT* FROM tb_produtos;