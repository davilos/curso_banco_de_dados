# Atualizando dados

-- Tipos Produtos
INSERT INTO tipos_produtos (tipo) VALUES ('Outro');

SELECT * FROM tipos_produtos;

UPDATE tipos_produtos SET tipo = 'Bijuterias' WHERE id = 4;

-- Produtos
SELECT * FROM produtos;

UPDATE produtos SET preco_venda = '4.16', id_tipo_produto = 1, id_fabricante = 1 WHERE id = 2;

-- Produtos Compras
SELECT * FROM produtos_compras;

UPDATE produtos_compras SET quantidade = 4, id_compra = 3 WHERE id = 2;