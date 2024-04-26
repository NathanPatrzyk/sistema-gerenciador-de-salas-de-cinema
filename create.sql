DROP DATABASE IF EXISTS db_cinema;
CREATE DATABASE db_cinema;
USE db_cinema;
--
CREATE TABLE tb_sala(
    numero_sala INT NOT NULL,
    descricao_sala VARCHAR(20) NOT NULL,
    capacidade_sala INT NOT NULL,
    CONSTRAINT pk_tb_sala PRIMARY KEY (numero_sala)
)ENGINE=INNODB;
DESC tb_sala;
--
CREATE TABLE tb_diretor(
    codigo_diretor INT NOT NULL,
    nome_diretor VARCHAR(20) NOT NULL,
    CONSTRAINT pk_tb_diretor PRIMARY KEY (codigo_diretor)
)ENGINE=INNODB;
DESC tb_diretor;
--