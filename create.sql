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
CREATE TABLE tb_filme(
    codigo_filme INT NOT NULL,
    nome_filme VARCHAR(50) NOT NULL,
    ano_lancamento_filme INT NOT NULL,
    categoria_filme VARCHAR(20) NOT NULL,
    codigo_diretor INT,
    CONSTRAINT pk_tb_filme PRIMARY KEY (codigo_filme),
    CONSTRAINT fk_tb_filme_tb_diretor FOREIGN KEY (codigo_diretor)
        REFERENCES tb_diretor(codigo_diretor)
    ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;
DESC tb_filme;
--
CREATE TABLE tb_premio(
    codigo_premio INT NOT NULL,
    nome_premio VARCHAR(20) NOT NULL,
    ano_premiacao_premio INT NOT NULL,
    codigo_filme INT,
    CONSTRAINT pk_tb_premio PRIMARY KEY (codigo_premio),
    CONSTRAINT fk_tb_premio_tb_filme FOREIGN KEY (codigo_filme)
        REFERENCES tb_filme(codigo_filme)
    ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;
DESC tb_premio;