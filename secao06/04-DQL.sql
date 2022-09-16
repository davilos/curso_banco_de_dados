# DQL

SELECT * FROM tipos_produtos;
SELECT codigo, descricao FROM tipos_produtos;
SELECT descricao FROM tipos_produtos;
SELECT descricao, codigo FROM tipos_produtos;

SELECT codigo, descricao, preco, codigo_tipo FROM produtos;
SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', p.codigo_tipo AS 'Tipo Produto' FROM produtos AS p;
SELECT * FROM produtos;