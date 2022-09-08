create database db_Projeto_Integrador;
use db_Projeto_Integrador;
create table tb_categorias(
id bigint not null,
tipo varchar(255) not null,
primary key (id)
);
use db_Projeto_Integrador;
create table tb_usuarios(
id bigint not null auto_increment,
usuario varchar(255) not null,
nome varchar(255) not null,
senha varchar(255) not null,
data_nascimento date not null,
primary key (id)
);
use db_Projeto_Integrador;
create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
descricao varchar(255) null,
quantidade int null,
preco decimal(8,2) not null,
foto varchar(255) null,
categoria_id bigint null,
usuario_id bigint NULL,
primary key(id),
foreign key (categoria_id) references db_Projeto_Integrador.tb_categorias (id),
foreign key (usuario_id) references db_Projeto_Integrador.tb_usuarios (id)
);