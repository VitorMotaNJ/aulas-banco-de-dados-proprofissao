create database db_livros;  /*cria o banco de dados */
drop database db_livros; /*exclui  fisicamente o banco de dados*/

create table tb_livro(
	pk_id_livro int primary key auto_increment,
    nome_livro varchar(100),
    numero_paginas int,
    genero_livro enum
    
);





