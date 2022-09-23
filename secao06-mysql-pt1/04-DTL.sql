SELECT * FROM tipos_produtos;

# DTL

-- Transaction

START TRANSACTION;
	INSERT INTO tipos_produtos (codigo, descricao) VALUES (77, 'Mais');
	INSERT INTO tipos_produtos (descricao) VALUES ('Monitor');

-- Commit
Commit;

-- Rollback

ROLLBACK;

UPDATE tipos_produtos SET codigo = 10 where codigo = 77