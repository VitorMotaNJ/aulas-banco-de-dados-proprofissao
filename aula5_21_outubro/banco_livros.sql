create database db_livros;  /*cria o banco de dados */
use db_livros; /* Seleciona o banco criado */
drop database db_livros; /*exclui  fisicamente o banco de dados*/



create table tb_livro(
	pk_id_livro int primary key auto_increment,
    nome_livro varchar(100),
    numero_paginas int,
    genero_livro enum('suspense','terror','ficcão cientifica','comédia','ação'),
	preco decimal(8,2),/*caracteres, caracteres depois da virgula */
    capa_dura enum('Mole', 'Paraná', 'Cartão', 'Roller'),
    data_leitura date,
    tipo_livro enum('Digital','Impresso','Audiobook'),
    idioma enum('Português', 'Inglês', 'Russo', 'Alemão', 'Espanhol'),
    avaliacao_livro enum('Otimo', 'Bom', 'Regular', 'Ruim', 'Péssimo'),
    status_livro enum('Lido','Lendo','Não começou'),
    edicao_livro varchar(30),
    estado_conservacao enum('novo', 'usado', 'semi novo')
);

describe tb_livro; /*Mostra estrutura da tabela */

select * from tb_livro /* Mostra conteúdo da tabela */


