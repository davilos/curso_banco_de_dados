# Consultas em múltiplas tabelas

SELECT * FROM tipos_produtos;
SELECT * FROM produtos;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo Produto'
	FROM produtos AS p, tipos_produtos AS TP
    WHERE p.codigo_tipo = tp.codigo;