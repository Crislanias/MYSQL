create database db_generation_game_online;

use db_generation_game_online;
-- Criando as tabelas

create table tb_personagens(
id bigint auto_increment,

nome varchar(80) not null,
roupa varchar(11) not null,
pontos int,
armas int,
poder  int,
PRIMARY KEY (id)

);

INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("juca","chapeu","pistola",2000 );
INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("joao","tenis","faca",1000);
INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("patty","blusa","arco",200);
INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("mario","bermuda","taco ",2 );
INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("maria","saia","pistola",3, "faca", 244 );
INSERT INTO tb_personagens(nome, roupa, arma, poder) 
values ("xuxa","boina","flexa",9000);

SELECT * FROM tb_personagens;




-- Adicionando a nova coluna
ALTER TABLE tb_personagens ADD tb_classes_id bigint;

-- Adicionando a constraint
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personas_classes
foreign key (classes_id) references tb_classes (id)

