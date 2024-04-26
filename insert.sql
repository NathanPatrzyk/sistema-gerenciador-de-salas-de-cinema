--
-- INSERTS DA TB_DIRETOR
--
INSERT INTO tb_diretor (codigo_diretor, nome_diretor)
VALUES (1, "Pedro Paulo Matos"),
    (2, "Jorge da Penha"),
    (3, "Severino Juca"),
    (4, "Tim Burton"),
    (5, "Rob Zombie"),
    (6, "Quentin Tarantino");
--
-- INSERTS DA TB_SALA
--
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
--
-- INSERTS DA TB_FILME
--
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
    (62, "Titanic", 2003, 3),
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