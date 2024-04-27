-- No momento da inserção de dados da tbFilme deixe a categoria_filme em branco. Depois que todas as tabelas foram preenchidas utilizando o comando UPDATE atualize a categoria de filmes de 20 em 20 com as seguintes categorias “Terror”, “Comédia”, “Ação”, ”Suspense”, “Romance”.
--
SELECT * FROM tb_filme
WHERE codigo_filme <= 20;
--
UPDATE tb_filme
SET categoria_filme = "Terror"
WHERE codigo_filme <= 20;
--
SELECT * FROM tb_filme
WHERE codigo_filme > 20
AND codigo_filme <= 40;
--
UPDATE tb_filme
SET categoria_filme = "Comédia"
WHERE codigo_filme > 20
AND codigo_filme <= 40;
--
SELECT * FROM tb_filme
WHERE codigo_filme > 40
AND codigo_filme <= 60;
--
UPDATE tb_filme
SET categoria_filme = "Ação"
WHERE codigo_filme > 40
AND codigo_filme <= 60;
--
SELECT * FROM tb_filme
WHERE codigo_filme > 60
AND codigo_filme <= 80;
--
UPDATE tb_filme
SET categoria_filme = "Suspense"
WHERE codigo_filme > 60
AND codigo_filme <= 80;
--
SELECT * FROM tb_filme
WHERE codigo_filme > 80
AND codigo_filme <= 100;
--
UPDATE tb_filme
SET categoria_filme = "Romance"
WHERE codigo_filme > 80
AND codigo_filme <= 100;
--