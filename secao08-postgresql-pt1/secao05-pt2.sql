SELECT pr.codigo AS "Código", pr.descricao AS "Descrição",
	pr.preco AS "Preço", tp.descricao AS "Tipo do produto"
	FROM produtos AS pr, tipos_produto AS tp
	WHERE pr.codigo_tipo = tp.codigo;