-- No momento da inserção de dados da tbFilme deixe a categoria_filme em branco. Depois que todas as tabelas foram preenchidas utilizando o comando UPDATE atualize a categoria de filmes de 20 em 20 com as seguintes categorias “Terror”, “Comédia”, “Ação”, ”Suspense”, “Romance”.
SELECT * FROM tb_filme
WHERE codigo_filme < 20;