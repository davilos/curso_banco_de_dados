-- Select Simples

-- Atores
-- SELECT * FROM atores;

-- Clientes
-- SELECT * FROM clientes;

-- Filmes
-- SELECT * FROM filmes;

-- Geneneros
-- SELECT * FROM generos;

-- Filmes e Generos
-- SELECT f.id, f.titulo, g.genero, f.valor FROM filmes AS f, generos AS g
-- 	WHERE f.id_genero = g.id;

-- Atores e filmes
-- SELECT af.id, f.titulo, a.nome, af.personagem FROM filmes AS f, atores AS a, atores_filmes AS af
-- 	WHERE af.id_filme = f.id AND af.id_ator = a.id;

-- Utilizando Filtros
-- SELECT * FROM generos WHERE id = 2;

-- SELECT * FROM generos WHERE genero = 'Terror';

-- Funções Agregadas
-- SELECT SUM(valor) AS Soma FROM filmes;

-- SELECT MAX(valor) FROM filmes;

-- Subconsulta
-- SELECT * FROM filmes WHERE valor IN (SELECT MAX(VALOR) FROM filmes);