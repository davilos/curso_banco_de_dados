-- Encontrar todos os filmes que determinado ator atua
SELECT  f.titulo, g.genero, af.personagem 
	FROM atores AS a, filmes AS f, generos AS g, atores_filmes AS af
	WHERE af.id_filme = f.id AND af.id_ator = a.id AND f.id_genero = g.id
	AND a.nome = 'Angelina Jolie';

-- Encontrar todos os filmes que determinado ator atuou por genero
SELECT f.titulo, af.personagem
	FROM filmes AS f, generos AS g, atores AS a, atores_filmes AS af
	WHERE f.id_genero = g.id
	AND af.id_filme = f.id
	AND af.id_ator = a.id
	AND g.genero = 'Comédia' AND a.nome = 'Bred Pitt';

-- Verificar qual cliente alugou o quê
SELECT e.id, c.nome, c.sobrenome, e.data, f.titulo, g.genero
	FROM emprestimos AS e,
	clientes AS c,
	filmes AS f,
	generos AS g,
	dvds AS d,
	filmes_emprestimo AS fe
	WHERE fe.id_emprestimo = e.id
	AND e.id_cliente = c.id
	AND d.id_filme = f.id
	AND fe.id_dvd = d.id 
	AND f.id_genero = g.id;

-- Verificar o que os clientes devolveram
SELECT de.id, c.nome, c.sobrenome, de.data, f.titulo
	FROM devolucoes AS de, 
	clientes AS c, 
	filmes AS f,
	filmes_devolucao AS fd,
	dvds AS d, 
	emprestimos AS e, 
	filmes_emprestimo AS fe
	WHERE fd.id_filme_emprestimo = fe.id
	AND fe.id_dvd = d.id
	AND e.id_cliente = c.id
	AND d.id_filme = f.id
	AND fd.id_devolucao = de.id
	AND de.id_emprestimo = e.id
	ORDER BY de.data;

-- Verificar quanto cada cliente pagou
SELECT e.id, c.nome, c.sobrenome, SUM(f.valor)
	FROM filmes_devolucao AS fd,
	clientes AS c,
	dvds AS d,
	filmes AS f,
	devolucoes AS de,
	emprestimos AS e,
	filmes_emprestimo AS fe
	WHERE fd.id_filme_emprestimo = fe.id
	AND fd.id_devolucao = de.id
	AND d.id_filme = f.id
	AND e.id_cliente = c.id
	AND fe.id_emprestimo = e.id
	AND fe.id_dvd = d.id
	GROUP BY e.id, c.nome, c.sobrenome;