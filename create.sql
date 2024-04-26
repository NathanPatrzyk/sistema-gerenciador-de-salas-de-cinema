DROP DATABASE IF EXISTS db_cinema;
CREATE DATABASE db_cinema;
USE db_cinema;
--
CREATE TABLE tb_sala(
    numero_sala INT NOT NULL,
    descricao_sala CHAR(20) NOT NULL,
    capacidade_sala INT NOT NULL,
    CONSTRAINT pk_tb_sala PRIMARY KEY (numero_sala)
    ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;