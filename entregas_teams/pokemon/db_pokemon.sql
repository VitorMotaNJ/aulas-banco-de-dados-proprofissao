create database db_pokemon;
use db_pokemon;

#drop database db_pokemon;
show tables;


create table tb_pokemon (
    pk_pokemon_id int primary key,
    nome_pokemon varchar(100),
    hp_base int,
    ataque_base int,
    defesa_base int,
    ataque_especial int,
    defesa_especial int,
    agilidade int,
    geracao int
);
select * from tb_pokemon;
#describe tb_pokemon;

create table tb_tipo (
    pk_tipo_id int auto_increment primary key,
    nome_tipo varchar(50) unique
);
select * from tb_tipo;

create table tb_forma (
    pk_forma_id int auto_increment primary key,
    nome_forma varchar(50) unique
);
select * from tb_forma;

create table tb_pokemon_tipo (
    fk_pokemon_id int,
    fk_tipo_id int,
    ordem_tipo tinyint,
    primary key (fk_pokemon_id, fk_tipo_id),
    foreign key (fk_pokemon_id) references tb_pokemon(pk_pokemon_id),
    foreign key (fk_tipo_id) references tb_tipo(pk_tipo_id)
);
select * from tb_pokemon_tipo;

create table tb_pokemon_forma (
    fk_pokemon_id int,
    fk_forma_id int,
    primary key (fk_pokemon_id, fk_forma_id),
    foreign key (fk_pokemon_id) references tb_pokemon(pk_pokemon_id),
    foreign key (fk_forma_id) references tb_forma(pk_forma_id)
);
select * from tb_pokemon_forma;

create table tb_treinador (
    pk_treinador_id int auto_increment primary key,
    nome_treinador varchar(100),
    idade_treinador int
);
select * from tb_treinador;

create table tb_capturado (
    pk_capturado_id int auto_increment primary key,
    fk_pokemon_id int,
    fk_treinador_id int,
    nivel int,
    localizacao varchar(20),
    apelido varchar(100),
    foreign key (fk_pokemon_id) references tb_pokemon(pk_pokemon_id),
    foreign key (fk_treinador_id) references tb_treinador(pk_treinador_id)
);
select * from tb_capturado;

insert into tb_tipo (nome_tipo) values 
('grass'), ('poison'), ('fire'), ('flying'), ('water');

insert into tb_pokemon (pk_pokemon_id, nome_pokemon, hp_base, ataque_base, defesa_base, ataque_especial, defesa_especial, agilidade, geracao)
values
(1, 'bulbasaur', 45, 49, 49, 65, 65, 45, 1),
(6, 'charizard', 78, 84, 78, 109, 85, 100, 1),
(7, 'squirtle', 44, 48, 65, 50, 64, 43, 1),
(16, 'pidgey', 40, 45, 40, 35, 35, 56, 1),
(29, 'nidoran♀', 55, 47, 52, 40, 40, 41, 1);

insert into tb_pokemon_tipo (fk_pokemon_id, fk_tipo_id, ordem_tipo)
values
(1, 1, 1),
(1, 2, 2),
(6, 3, 1),
(6, 4, 2),
(7, 5, 1),
(16, 4, 1),
(29, 2, 1);

select * from tb_pokemon;
select * from tb_tipo;
select * from tb_pokemon_tipo;
