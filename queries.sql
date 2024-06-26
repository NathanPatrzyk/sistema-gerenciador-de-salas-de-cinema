--
-- Considere uma sistema gerenciador de salas de cinema. Crie as tabelas do modelo relacional deste sistema.
-- tbSala(numero_sala: inteiro, descricao_sala: caracter(20), capacidade:inteiro)
-- tbSalaFilme(numero_sala: inteiro, codigo_filme: inteiro, data: data, horario: tempo)
-- numero_sala referencia tbSala
-- codigo_filme referencia tbFilme
-- tbFilme(codigo_flme: inteiro, nome_filme: caracter(50),ano_lancamento: inteiro, categoria_filme: caracter(20),codigo_diretor: inteiro)
-- codigo_diretor referencia tbDiretor
-- tbDiretor(codigo_diretor: inteiro, nome_diretor: caracter(20))
-- tbPremio(codigo_premio: inteiro, nome_premio:caracter(20),ano_premiacao:inteiro, codigo_filme:inteiro)
-- codigo_filme referencia tbFilme
--
DROP DATABASE IF EXISTS db_cinema;
CREATE DATABASE db_cinema;
USE db_cinema;
--
CREATE TABLE tb_sala(
    numero_sala INT NOT NULL,
    descricao_sala VARCHAR(20) NOT NULL,
    capacidade_sala INT NOT NULL,
    CONSTRAINT pk_tb_sala PRIMARY KEY (numero_sala)
) ENGINE = INNODB;
DESC tb_sala;
--
CREATE TABLE tb_diretor(
    codigo_diretor INT NOT NULL,
    nome_diretor VARCHAR(20) NOT NULL,
    CONSTRAINT pk_tb_diretor PRIMARY KEY (codigo_diretor)
) ENGINE = INNODB;
DESC tb_diretor;
--
CREATE TABLE tb_filme(
    codigo_filme INT NOT NULL,
    nome_filme VARCHAR(50) NOT NULL,
    ano_lancamento_filme INT NOT NULL,
    categoria_filme VARCHAR(20),
    codigo_diretor INT,
    CONSTRAINT pk_tb_filme PRIMARY KEY (codigo_filme),
    CONSTRAINT fk_tb_filme_tb_diretor FOREIGN KEY (codigo_diretor) REFERENCES tb_diretor(codigo_diretor) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;
DESC tb_filme;
--
CREATE TABLE tb_premio(
    codigo_premio INT NOT NULL,
    nome_premio VARCHAR(20) NOT NULL,
    ano_premiacao_premio INT NOT NULL,
    codigo_filme INT,
    CONSTRAINT pk_tb_premio PRIMARY KEY (codigo_premio),
    CONSTRAINT fk_tb_premio_tb_filme FOREIGN KEY (codigo_filme) REFERENCES tb_filme(codigo_filme) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;
DESC tb_premio;
--
CREATE TABLE tb_sala_filme(
    numero_sala INT NOT NULL,
    codigo_filme INT NOT NULL,
    data_sala_filme DATE NOT NULL,
    horario_sala_filme TIME NOT NULL,
    CONSTRAINT pk_tb_sala_filme PRIMARY KEY (
        numero_sala,
        codigo_filme,
        data_sala_filme,
        horario_sala_filme
    ),
    CONSTRAINT fk_tb_sala_filme_tb_sala FOREIGN KEY (numero_sala) REFERENCES tb_sala(numero_sala),
    CONSTRAINT fk_tb_sala_filme_tb_filme FOREIGN KEY (codigo_filme) REFERENCES tb_filme(codigo_filme) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = INNODB;
DESC tb_sala_filme;
--
-- Usando o Gerador de dados automático faça a geração de 100 registros por tabela exceto para as tabelas: tabela diretor que deve conter os seguintes registros (Pedro Paulo Matos, Jorge da Penha, Severino Juca, Tim Burton, Rob Zombie, Quentin Tarantino). Não esqueça de observar as relações existentes para que haja consistência na inserção de dados.
--
-- Inserts da tb_diretor
INSERT INTO tb_diretor (codigo_diretor, nome_diretor)
VALUES (1, "Pedro Paulo Matos"),
    (2, "Jorge da Penha"),
    (3, "Severino Juca"),
    (4, "Tim Burton"),
    (5, "Rob Zombie"),
    (6, "Quentin Tarantino");
-- Inserts da tb_sala
INSERT INTO tb_sala (numero_sala, descricao_sala, capacidade_sala)
VALUES (1, "Inspiradora", 356),
    (2, "Minimalista", 314),
    (3, "Exclusiva", 222),
    (4, "Memorável", 337),
    (5, "Harmoniosa", 420),
    (6, "Atemporal", 460),
    (7, "Deslumbrante", 393),
    (8, "Atemporal", 150),
    (9, "Confortável", 105),
    (10, "Encantadora", 267),
    (11, "Tecnológica", 393),
    (12, "Requintada", 320),
    (13, "Estilosa", 408),
    (14, "Convidativa", 479),
    (15, "Íntima", 211),
    (16, "Encantadora", 76),
    (17, "Convidativa", 142),
    (18, "Acolhedora", 154),
    (19, "Sofisticada", 397),
    (20, "Futurista", 442),
    (21, "Atemporal", 472),
    (22, "Encolhedora", 157),
    (23, "Tranquila", 495),
    (24, "Acolhedora", 81),
    (25, "Clássica", 132),
    (26, "Única", 194),
    (27, "Suntuosa", 233),
    (28, "Espantosa", 289),
    (29, "Encantadora", 391),
    (30, "Atraente", 149),
    (31, "Inspiradora", 406),
    (32, "Espaçosa", 209),
    (33, "Glamourosa", 65),
    (34, "Sofisticada", 253),
    (35, "Glamourosa", 240),
    (36, "Minimalista", 265),
    (37, "Tranquila", 451),
    (38, "Surpreendente", 387),
    (39, "Íntima", 490),
    (40, "Dinâmica", 210),
    (41, "Elegante", 343),
    (42, "Confortável", 447),
    (43, "Espaçosa", 166),
    (44, "Radiante", 150),
    (45, "Inspiradora", 128),
    (46, "Harmoniosa", 111),
    (47, "Contemporânea", 480),
    (48, "Inovadora", 171),
    (49, "Inovadora", 81),
    (50, "Clássica", 398);
INSERT INTO tb_sala (numero_sala, descricao_sala, capacidade_sala)
VALUES (51, "Íntima", 101),
    (52, "Minimalista", 345),
    (53, "Encantadora", 72),
    (54, "Confortável", 380),
    (55, "Convidativa", 380),
    (56, "Exclusiva", 146),
    (57, "Inovadora", 302),
    (58, "Encantadora", 157),
    (59, "Dinâmica", 213),
    (60, "Sutil", 244),
    (61, "Dinâmica", 266),
    (62, "Dinâmica", 389),
    (63, "Moderna", 187),
    (64, "Única", 471),
    (65, "Confortável", 343),
    (66, "Chique", 434),
    (67, "Encantadora", 427),
    (68, "Incomparável", 490),
    (69, "Luxuosa", 107),
    (70, "Exclusiva", 448),
    (71, "Convidativa", 188),
    (72, "Radiante", 454),
    (73, "Estonteante", 233),
    (74, "Convidativa", 120),
    (75, "Radiante", 428),
    (76, "Tecnológica", 380),
    (77, "Encantadora", 403),
    (78, "Convidativa", 382),
    (79, "Convidativa", 289),
    (80, "Glamourosa", 458),
    (81, "Clássica", 486),
    (82, "Espantosa", 379),
    (83, "Fascinante", 133),
    (84, "Inovadora", 408),
    (85, "Confortável", 464),
    (86, "Radiante", 411),
    (87, "Sutil", 172),
    (88, "Sutil", 195),
    (89, "Atraente", 459),
    (90, "Radiante", 139),
    (91, "Espantosa", 428),
    (92, "Incomparável", 351),
    (93, "Vibrante", 230),
    (94, "Íntima", 269),
    (95, "Glamourosa", 63),
    (96, "Espaçosa", 338),
    (97, "Clássica", 464),
    (98, "Clássica", 90),
    (99, "Inovadora", 123),
    (100, "Radiante", 219);
-- Inserts da tb_filme
INSERT INTO tb_filme (
        codigo_filme,
        nome_filme,
        ano_lancamento_filme,
        codigo_diretor
    )
VALUES (1, "Up", 1959, 3),
    (2, "Amnésia", 1951, 2),
    (3, "Guerra", 1990, 5),
    (4, "Malévola", 1970, 5),
    (5, "Malévola", 1995, 4),
    (6, "Velozes", 1995, 3),
    (7, "Amor", 1980, 4),
    (8, "Toy", 1970, 2),
    (9, "Frozen", 1967, 2),
    (10, "Gladiador", 1952, 5),
    (11, "Up", 2002, 4),
    (12, "Zênite", 2001, 6),
    (13, "Velozes", 1989, 5),
    (14, "Amor", 2018, 4),
    (15, "Êxtase", 1972, 5),
    (16, "Êxtase", 1951, 4),
    (17, "Rei", 1990, 4),
    (18, "Up", 1980, 5),
    (19, "Sonic", 2018, 4),
    (20, "Guerra", 1981, 6),
    (21, "Monstros", 1993, 3),
    (22, "Monstros", 2023, 5),
    (23, "Luminoso", 2003, 3),
    (24, "Up", 2008, 5),
    (25, "Titanic", 1987, 3),
    (26, "Amor", 1977, 2),
    (27, "Senhor", 1966, 6),
    (28, "Avatar", 2007, 5),
    (29, "Sonic", 2006, 4),
    (30, "Amor", 1957, 4),
    (31, "Monstros", 1996, 6),
    (32, "Amor", 1987, 6),
    (33, "Toy", 2014, 4),
    (34, "Gladiador", 1979, 3),
    (35, "Guerra", 1992, 6),
    (36, "Frozen", 1953, 3),
    (37, "Matrix", 1993, 5),
    (38, "Guerra", 2015, 3),
    (39, "Frozen", 1965, 2),
    (40, "Rei", 1964, 5),
    (41, "Luminoso", 1971, 4),
    (42, "Êxtase", 1980, 4),
    (43, "Amor", 1952, 5),
    (44, "Frozen", 1993, 3),
    (45, "Vingança", 1982, 6),
    (46, "Velozes", 1986, 5),
    (47, "Gladiador", 1980, 5),
    (48, "Harry", 1979, 6),
    (49, "Monstros", 2002, 2),
    (50, "Velozes", 1956, 6);
INSERT INTO tb_filme (
        codigo_filme,
        nome_filme,
        ano_lancamento_filme,
        codigo_diretor
    )
VALUES (51, "Sonic", 1960, 4),
    (52, "Guerra", 1974, 3),
    (53, "Monstros", 2012, 4),
    (54, "Harry", 1965, 5),
    (55, "Up", 1968, 5),
    (56, "Amor", 1958, 4),
    (57, "Matrix", 1976, 6),
    (58, "Matrix", 1961, 3),
    (59, "Velozes", 1994, 5),
    (60, "Guerra", 1951, 4),
    (61, "Avatar", 1988, 5),
    (62, "Avatar", 2003, 3),
    (63, "Gladiador", 2018, 2),
    (64, "Pantera", 1982, 5),
    (65, "Luminoso", 1998, 1),
    (66, "Pantera", 2002, 4),
    (67, "Amor", 2020, 1),
    (68, "Amor", 1988, 6),
    (69, "Amor", 2017, 3),
    (70, "Guerra", 1997, 5),
    (71, "Velozes", 2011, 3),
    (72, "Êxtase", 2022, 2),
    (73, "Frozen", 1953, 6),
    (74, "Velozes", 1953, 2),
    (75, "Up", 2023, 1),
    (76, "Velozes", 1999, 5),
    (77, "Gladiador", 1989, 6),
    (78, "Êxtase", 2010, 1),
    (79, "Sonic", 1971, 2),
    (80, "Toy", 1988, 4),
    (81, "Pantera", 1988, 2),
    (82, "Frozen", 1984, 4),
    (83, "Frozen", 2016, 3),
    (84, "Harry", 1956, 5),
    (85, "Toy", 2014, 3),
    (86, "Malévola", 1953, 6),
    (87, "Frozen", 1975, 2),
    (88, "Monstros", 1976, 6),
    (89, "Gladiador", 1967, 2),
    (90, "Toy", 1960, 3),
    (91, "Avatar", 1997, 2),
    (92, "Matrix", 1960, 3),
    (93, "Êxtase", 1960, 1),
    (94, "Gladiador", 2000, 2),
    (95, "Luminoso", 2021, 5),
    (96, "Shrek", 1953, 3),
    (97, "Rei", 1978, 5),
    (98, "Star", 1983, 2),
    (99, "Up", 2010, 2),
    (100, "Êxtase", 1977, 5);
-- Inserts da tb_premio
INSERT INTO tb_premio (
        codigo_premio,
        nome_premio,
        ano_premiacao_premio,
        codigo_filme
    )
VALUES (1, "Goya", 2010, 23),
    (2, "Lumières", 2021, 25),
    (3, "SAG", 2017, 17),
    (4, "Veneza", 2010, 28),
    (5, "MTV", 2023, 76),
    (6, "Urso", 2005, 16),
    (7, "Goya", 2003, 2),
    (8, "BAFTA", 2010, 70),
    (9, "Berlim", 2015, 68),
    (10, "Critics", 2016, 25),
    (11, "BAFTA", 2020, 25),
    (12, "Oscar", 2017, 50),
    (13, "Spirit", 2002, 79),
    (14, "Annie", 2016, 94),
    (15, "Goya", 2007, 98),
    (16, "César", 2013, 13),
    (17, "MTV", 2004, 15),
    (18, "Oscar", 2011, 28),
    (19, "Spirit", 2021, 80),
    (20, "BAFTA", 2015, 74),
    (21, "Globo", 2018, 34),
    (22, "Toronto", 2009, 62),
    (23, "Toronto", 2012, 84),
    (24, "SAG", 2014, 32),
    (25, "Urso", 2022, 96),
    (26, "Lumières", 2016, 44),
    (27, "Lumières", 2004, 25),
    (28, "Spirit", 2011, 79),
    (29, "Oscar", 2014, 25),
    (30, "Veneza", 2009, 53),
    (31, "Sundance", 2016, 70),
    (32, "Annie", 2022, 60),
    (33, "Veneza", 2022, 35),
    (34, "Urso", 2002, 38),
    (35, "Gotham", 2008, 63),
    (36, "SAG", 2000, 25),
    (37, "Lumières", 2018, 72),
    (38, "César", 2006, 77),
    (39, "Globo", 2015, 2),
    (40, "Critics", 2002, 73),
    (41, "Critics", 2011, 22),
    (42, "Veneza", 2007, 90),
    (43, "Gotham", 2010, 78),
    (44, "Veneza", 2017, 65),
    (45, "César", 2018, 25),
    (46, "Critics", 2003, 25),
    (47, "Critics", 2007, 25),
    (48, "Lumières", 2014, 77),
    (49, "Berlim", 2013, 43),
    (50, "Globo", 2004, 2);
INSERT INTO tb_premio (
        codigo_premio,
        nome_premio,
        ano_premiacao_premio,
        codigo_filme
    )
VALUES (51, "SAG", 2010, 63),
    (52, "Oscar", 2014, 33),
    (53, "MTV", 2016, 25),
    (54, "Spirit", 2013, 68),
    (55, "Goya", 2002, 1),
    (56, "Sundance", 2014, 27),
    (57, "Goya", 2007, 24),
    (58, "Gotham", 2018, 95),
    (59, "Gotham", 2007, 37),
    (60, "Spirit", 2018, 81),
    (61, "Lumières", 2018, 90),
    (62, "Cannes", 2012, 57),
    (63, "Palma", 2020, 99),
    (64, "Gotham", 2019, 37),
    (65, "Lumières", 2005, 97),
    (66, "SAG", 2017, 20),
    (67, "Urso", 2007, 65),
    (68, "MTV", 2013, 14),
    (69, "Goya", 2013, 65),
    (70, "Cannes", 2010, 37),
    (71, "Sundance", 2018, 9),
    (72, "MTV", 2013, 82),
    (73, "BAFTA", 2018, 1),
    (74, "Palma", 2021, 100),
    (75, "Palma", 2009, 25),
    (76, "Berlim", 2014, 67),
    (77, "César", 2018, 80),
    (78, "Palma", 2020, 2),
    (79, "Goya", 2015, 87),
    (80, "BAFTA", 2012, 8),
    (81, "Globo", 2018, 52),
    (82, "César", 2005, 16),
    (83, "Globo", 2014, 44),
    (84, "Satellite", 2018, 25),
    (85, "SAG", 2013, 26),
    (86, "Gotham", 2007, 18),
    (87, "Cannes", 2015, 12),
    (88, "Gotham", 2003, 22),
    (89, "Veneza", 2001, 22),
    (90, "Cannes", 2016, 78),
    (91, "Critics", 2002, 38),
    (92, "Goya", 2006, 50),
    (93, "Oscar", 2012, 12),
    (94, "Oscar", 2001, 58),
    (95, "Goya", 2023, 98),
    (96, "Palma", 2021, 35),
    (97, "Veneza", 2021, 62),
    (98, "BAFTA", 2021, 25),
    (99, "Spirit", 2004, 25),
    (100, "Berlim", 2022, 23);
-- Inserts da tb_sala_filme
INSERT INTO tb_sala_filme (numero_sala,codigo_filme,data_sala_filme,horario_sala_filme)
VALUES
  (12,71,"2019-11-15","19:51:32"),
  (15,41,"2021-01-14","17:31:00"),
  (12,50,"2013-07-30","15:37:27"),
  (87,45,"2019-04-20","17:45:29"),
  (89,5,"2021-02-18","19:31:42"),
  (79,33,"2016-02-01","7:35:36"),
  (98,7,"2019-05-20","21:34:49"),
  (18,83,"2004-04-08","21:17:47"),
  (77,80,"2010-09-23","8:48:21"),
  (42,68,"2009-04-13","7:23:34"),
  (68,46,"2012-02-04","10:05:06"),
  (89,24,"2010-09-23","11:34:28"),
  (9,86,"2014-09-12","14:41:56"),
  (27,76,"2020-01-03","9:09:55"),
  (37,4,"2003-08-01","14:03:06"),
  (22,91,"2010-06-01","7:40:39"),
  (12,53,"2019-11-15","15:35:37"),
  (91,63,"2012-09-03","19:27:05"),
  (8,44,"2010-06-13","17:39:08"),
  (21,8,"2005-11-02","14:41:50"),
  (35,34,"2010-06-19","21:35:35"),
  (31,100,"2019-05-08","15:00:25"),
  (72,89,"2019-11-15","19:17:30"),
  (97,98,"2019-05-23","17:37:59"),
  (16,5,"2019-04-20","14:06:15"),
  (12,15,"2019-11-15","13:07:01"),
  (92,54,"2019-04-20","7:20:33"),
  (12,88,"2019-04-20","18:54:30"),
  (63,68,"2010-12-05","17:46:36"),
  (36,97,"2010-09-23","8:37:20"),
  (63,46,"2009-09-11","10:43:26"),
  (49,60,"2010-11-06","21:56:14"),
  (12,63,"2019-05-20","10:03:04"),
  (12,34,"2006-08-24","9:23:00"),
  (97,9,"2019-11-15","14:54:58"),
  (75,89,"2010-09-23","19:59:51"),
  (12,88,"2019-11-15","13:28:24"),
  (50,36,"2010-06-19","11:22:49"),
  (44,22,"2023-10-02","17:30:41"),
  (81,56,"2001-01-07","22:10:28"),
  (58,3,"2004-04-26","8:05:25"),
  (49,24,"2007-01-22","8:57:40"),
  (46,8,"2019-04-20","22:43:49"),
  (68,41,"2014-02-07","9:04:45"),
  (42,89,"2006-02-16","22:22:41"),
  (41,23,"2019-04-20","16:09:57"),
  (40,55,"2003-06-20","19:14:33"),
  (10,32,"2015-08-25","20:43:23"),
  (9,10,"2010-03-19","13:03:04"),
  (69,59,"2019-05-23","16:52:06");
INSERT INTO tb_sala_filme (numero_sala,codigo_filme,data_sala_filme,horario_sala_filme)
VALUES
  (44,94,"2015-12-02","18:55:22"),
  (61,29,"2019-04-20","10:11:16"),
  (83,37,"2010-06-13","19:15:07"),
  (86,67,"2014-04-20","8:27:00"),
  (1,93,"2019-04-20","19:57:49"),
  (58,48,"2001-02-11","21:22:54"),
  (13,97,"2007-03-27","16:24:47"),
  (50,95,"2002-08-17","10:08:46"),
  (59,90,"2017-12-30","10:32:14"),
  (12,41,"2019-05-02","9:29:21"),
  (32,58,"2002-12-31","20:13:40"),
  (1,21,"2019-05-29","19:41:07"),
  (57,26,"2019-03-22","10:30:33"),
  (12,61,"2019-11-15","11:58:44"),
  (100,80,"2004-03-14","19:06:31"),
  (20,73,"2020-03-15","13:27:48"),
  (95,78,"2010-09-23","10:43:20"),
  (38,56,"2019-04-20","9:48:39"),
  (13,47,"2019-04-20","20:28:13"),
  (51,65,"2000-06-11","7:14:08"),
  (26,38,"2007-02-17","14:52:18"),
  (68,66,"2006-01-25","21:35:47"),
  (11,29,"2023-07-09","15:26:10"),
  (69,26,"2015-06-04","14:56:18"),
  (67,11,"2002-07-01","19:06:12"),
  (49,40,"2012-02-28","12:27:55"),
  (60,66,"2001-05-01","10:53:59"),
  (87,73,"2009-11-06","18:22:48"),
  (96,96,"2010-06-01","20:17:26"),
  (94,27,"2010-09-23","22:41:42"),
  (12,11,"2019-11-15","21:41:25"),
  (28,41,"2020-01-18","18:10:55"),
  (9,14,"2010-03-15","20:04:47"),
  (60,35,"2019-05-10","12:26:30"),
  (53,18,"2011-01-01","12:55:40"),
  (80,81,"2021-11-12","16:34:39"),
  (95,66,"2022-01-03","9:46:07"),
  (31,32,"2010-09-23","17:07:41"),
  (46,8,"2009-11-18","7:37:55"),
  (88,30,"2010-06-29","16:31:47"),
  (83,2,"2006-10-22","20:06:26"),
  (45,96,"2019-09-27","8:24:32"),
  (43,96,"2012-09-12","17:11:44"),
  (12,29,"2014-05-11","11:33:14"),
  (16,83,"2019-05-10","17:42:17"),
  (12,24,"2019-11-15","16:34:50"),
  (12,11,"2019-11-15","16:10:29"),
  (88,25,"2015-12-23","11:14:57"),
  (52,56,"2019-04-20","12:05:15"),
  (12,24,"2022-08-18","15:03:59");
--
-- No momento da inserção de dados da tbFilme deixe a categoria_filme em branco. Depois que todas as tabelas foram preenchidas utilizando o comando UPDATE atualize a categoria de filmes de 20 em 20 com as seguintes categorias “Terror”, “Comédia”, “Ação”, ”Suspense”, “Romance”.
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Terror"
WHERE tb_filme.codigo_filme <= 20;
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Comédia"
WHERE tb_filme.codigo_filme > 20
AND tb_filme.codigo_filme <= 40;
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Ação"
WHERE tb_filme.codigo_filme > 40
AND tb_filme.codigo_filme <= 60;
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Suspense"
WHERE tb_filme.codigo_filme > 60
AND tb_filme.codigo_filme <= 80;
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Romance"
WHERE tb_filme.codigo_filme > 80
AND tb_filme.codigo_filme <= 100;
--
-- Depois de criada a tabela Filme percebeu-se que foi esquecido de criar o atributo Produtora, altere a tabela inserindo este atributo.
--
ALTER TABLE tb_filme
ADD COLUMN produtora_filme VARCHAR(20);
--
-- A cada 20 filmes insira o nome das seguintes produtoras: Warner, Universal, Fox, NetFlix, Sony
--
UPDATE tb_filme
SET tb_filme.produtora_filme = "Warner"
WHERE tb_filme.codigo_filme <= 20;
--
UPDATE tb_filme
SET tb_filme.produtora_filme = "Universal"
WHERE tb_filme.codigo_filme > 20
AND tb_filme.codigo_filme <= 40;
--
UPDATE tb_filme
SET tb_filme.produtora_filme = "Fox"
WHERE tb_filme.codigo_filme > 40
AND tb_filme.codigo_filme <= 60;
--
UPDATE tb_filme
SET tb_filme.produtora_filme = "NetFlix"
WHERE tb_filme.codigo_filme > 60
AND tb_filme.codigo_filme <= 80;
--
UPDATE tb_filme
SET tb_filme.produtora_filme = "Sony"
WHERE tb_filme.codigo_filme > 80
AND tb_filme.codigo_filme <= 100;
--
--  Faça uma consulta que retorne o nome de todos os diretores cadastrados na base de dados.
--
SELECT tb_diretor.nome_diretor
FROM tb_diretor;
--
-- Faça uma consulta que retorne o nome de todos os filmes da categoria “terror”.
--
SELECT tb_filme.nome_filme, tb_filme.categoria_filme
FROM tb_filme
WHERE tb_filme.categoria_filme = "Terror";
--
-- Faça uma consulta que retorne o nome de todos os filmes da categoria “terror” do diretor Rob Zombie.
--
SELECT tb_filme.nome_filme, tb_filme.categoria_filme, tb_diretor.nome_diretor
FROM tb_filme, tb_diretor
WHERE tb_filme.categoria_filme = "Terror"
AND tb_diretor.nome_diretor = "Rob Zombie"
AND tb_filme.codigo_diretor = tb_diretor.codigo_diretor;
--
-- Atualize a base de dados de forma que a capacidade da sala de número 8 passe de 150 lugares para 200 lugares. 
--
UPDATE tb_sala
SET tb_sala.capacidade_sala = 200
WHERE numero_sala=8;
--
-- Atualize a base de dados para que todos os filmes que seriam exibidos na sala 12 no dia 15/11/2019 sejam transferidos para a sala 8.
--
UPDATE tb_sala_filme
SET tb_sala_filme.numero_sala = 8
WHERE numero_sala=12 AND data_sala_filme="2019-11-15";
--
-- Exclua o diretor de nome “Quentin Tarantino”. Como fica a questão de integridade referencial?
--
DELETE FROM tb_diretor WHERE nome_diretor = "Quentin Tarantino";
-- Ao excluir o diretor, todos os filmes com esse diretor são apagados da base de dados, pois utilizando o ON DELETE CASCADE os dados são apagados na forma de cascata.
--
-- Encontre o nome de todos os filmes dirigidos pelo diretor “Jorge da Penha”.
--
SELECT tb_filme.nome_filme, tb_diretor.nome_diretor
FROM tb_filme, tb_diretor
WHERE tb_diretor.nome_diretor = "Jorge da Penha"
AND tb_filme.codigo_diretor = tb_diretor.codigo_diretor;
--
-- Faça uma consulta que retorne o nome de todos os filmes e horários de exibição para o dia 20/04/2019.
--
SELECT tb_filme.nome_filme, tb_sala_filme.horario_sala_filme, tb_sala_filme.data_sala_filme
FROM tb_filme, tb_sala_filme
WHERE tb_sala_filme.data_sala_filme = "2019-04-20"
AND tb_sala_filme.codigo_filme = tb_filme.codigo_filme
ORDER BY horario_sala_filme;
--
-- Faça uma consulta que retorne todos os prêmios que o filme “Titanic” ganhou.
--
SELECT tb_premio.nome_premio, tb_premio.ano_premiacao_premio, tb_filme.nome_filme
FROM tb_premio, tb_filme
WHERE tb_filme.nome_filme = "Titanic"
AND tb_premio.codigo_filme = tb_filme.codigo_filme;
--
-- Faça uma consulta que retorne o nome de todos os filmes que estão sendo exibidos em salas com capacidade maior que 200 lugares. 
--
SELECT tb_filme.nome_filme FROM tb_filme, tb_sala_filme, tb_sala
WHERE tb_sala.capacidade_sala > 200
AND tb_sala_filme.numero_sala = tb_sala.numero_sala
AND tb_sala_filme.codigo_filme = tb_filme.codigo_filme;
--
-- Faça uma lista com o nome de todos os filmes, número da sala e horários de exibição para o mês de maio de 2019.
--
SELECT tb_filme.nome_filme, tb_sala_filme.numero_sala, tb_sala_filme.horario_sala_filme, tb_sala_filme.data_sala_filme
FROM tb_filme, tb_sala_filme
WHERE tb_sala_filme.data_sala_filme LIKE "2019-05%"
AND tb_sala_filme.codigo_filme = tb_filme.codigo_filme
ORDER BY tb_sala_filme.data_sala_filme, tb_sala_filme.horario_sala_filme;
--
--  Faça uma lista com o nome de todos os filmes que receberam o prêmio nos anos de 2015, 2016, 2017 e 2018.
--
SELECT tb_filme.nome_filme, tb_premio.nome_premio, tb_premio.ano_premiacao_premio
FROM tb_premio, tb_filme
WHERE tb_premio.ano_premiacao_premio >= 2015
AND tb_premio.ano_premiacao_premio <= 2018
AND tb_premio.codigo_filme = tb_filme.codigo_filme
ORDER BY tb_premio.ano_premiacao_premio;
--
-- Faça uma consulta que retorne o nome de todos os filmes da categoria “comédia” que serão exibidos no mês de junho de 2010.
--
SELECT tb_filme.nome_filme, tb_sala_filme.numero_sala, tb_sala_filme.horario_sala_filme, tb_sala_filme.data_sala_filme
FROM tb_filme, tb_sala_filme
WHERE tb_sala_filme.data_sala_filme LIKE "2010-06%"
AND tb_sala_filme.codigo_filme = tb_filme.codigo_filme
ORDER BY tb_sala_filme.data_sala_filme, tb_sala_filme.horario_sala_filme;
--
-- Faça uma consulta que retorne a descrição da sala, a categoria e o nome dos filmes que foram dirigidos pelo diretor “Severino Juca”.
--
SELECT tb_sala.descricao_sala, tb_filme.categoria_filme, tb_filme.nome_filme, tb_diretor.nome_diretor FROM tb_sala, tb_sala_filme, tb_filme, tb_diretor
WHERE tb_filme.codigo_diretor = 3
AND tb_sala_filme.codigo_filme = tb_filme.codigo_filme
AND tb_sala_filme.numero_sala = tb_sala.numero_sala
AND tb_filme.codigo_diretor = tb_diretor.codigo_diretor;
--
-- Encontre todos os filmes premiados de Tim Burton 
--
SELECT tb_premio.nome_premio, tb_premio.ano_premiacao_premio, tb_filme.nome_filme, tb_diretor.nome_diretor FROM tb_premio, tb_filme, tb_diretor
WHERE tb_filme.codigo_diretor = 4
AND tb_premio.codigo_filme = tb_filme.codigo_filme
AND tb_filme.codigo_diretor = tb_diretor.codigo_diretor;
--
-- Altere a categoria dos filmes com os código de 60 a 70 para a categoria “Realidade Virtual”
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Realidade Virtual"
WHERE tb_filme.codigo_filme >= 60
AND tb_filme.codigo_filme <= 70;
--
-- Atualize todos os filmes com a categoria ação para categoria ação/aventura.
--
UPDATE tb_filme
SET tb_filme.categoria_filme = "Ação/Aventura"
WHERE tb_filme.categoria_filme = "A??o";
-- Deixei a categoria assim, pois não estava reconhecendo o acento e o ç.