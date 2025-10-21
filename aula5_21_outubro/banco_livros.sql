create database db_livros;  /*cria o banco de dados */
use db_livros; /* Seleciona o banco criado */
drop database db_livros; /*exclui  fisicamente o banco de dados*/



create table tb_livro(
	pk_id_livro int primary key auto_increment not null,
    nome_livro varchar(100),
    numero_paginas int,
    genero_livro enum('suspense','terror','ficcão cientifica','comédia','ação', 'romance', 'história', 'fábula', 'estratégia', 'distopia', 'autoajuda', 'fantasia'),
	preco decimal(8,2),/*caracteres, caracteres depois da virgula */
    capa_dura enum('Mole', 'Paraná', 'Cartão', 'Roller', 'Dura'),
    data_leitura date,
    tipo_livro enum('Digital','Impresso','Audiobook'),
    idioma enum('Português', 'Inglês', 'Russo', 'Alemão', 'Espanhol'),
    avaliacao_livro enum('Otimo', 'Bom', 'Regular', 'Ruim', 'Péssimo'),
    status_livro enum('Lido','Lendo','Não começou'),
    edicao_livro varchar(30),
    estado_conservacao enum('Novo', 'Usado', 'Semi novo')
);


insert into tb_livro (nome_livro,numero_paginas,genero_livro,preco,capa_dura,data_leitura,tipo_livro,idioma,avaliacao_livro,status_livro,edicao_livro,estado_conservacao)values
("O Pequeno Príncipe",144,"romance",15.00,"Mole","2025-10-21","Impresso","Português","Regular","Lido","Primeira edição","Usado"),
("O Senhor dos Anéis: A Sociedade do Anel", 576, "fantasia", 49.90, "Dura", "2023-08-15", "Impresso", "Português", "Otimo", "Lido", "2ª edição", "Usado"),
("1984", 328, "distopia", 34.00, "Mole", "2024-05-03", "Digital", "Português", "Otimo", "Lido", "1ª edição", "Novo"),
("Dom Casmurro", 256, "romance", 22.50, "Mole", "2022-11-10", "Impresso", "Português", "Bom", "Lido", "3ª edição", "Usado"),
("Sapiens: Uma Breve História da Humanidade", 464, "história", 59.90, "Dura", "2025-01-20", "Impresso", "Português", "Otimo", "Lido", "1ª edição", "Novo"),
("Harry Potter e a Pedra Filosofal", 223, "fantasia", 39.90, "Mole", "2025-06-12", "Impresso", "Português", "Otimo", "Lido", "4ª edição", "Usado"),
("O Código Da Vinci", 480, "suspense", 44.00, "Dura", "2024-09-01", "Impresso", "Inglês", "Bom", "Lido", "2ª edição", "Usado"),
("A Arte da Guerra", 160, "estratégia", 19.90, "Mole", "2025-10-01", "Digital", "Português", "Regular", "Lido", "Edição de bolso", "Novo"),
("A Revolução dos Bichos", 112, "fábula", 18.00, "Mole", "2023-03-25", "Impresso", "Português", "Otimo", "Lido", "1ª edição", "Usado"),
("O Hobbit", 310, "fantasia", 42.00, "Dura", "2025-02-14", "Impresso", "Português", "Otimo", "Lido", "5ª edição", "Novo");
drop table tb_livro;
describe tb_livro; /*Mostra estrutura da tabela */

select * from tb_livro /* Mostra conteúdo da tabela */




