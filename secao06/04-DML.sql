# DML

-- Insert 
INSERT INTO tipos_produtos (descricao) VALUES ('Apple');

INSERT INTO produtos VALUES (11, 'iPad Air', 2200, 3);

SELECT * FROM tipos_produtos;

SELECT * FROM produtos;

-- Update
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;

UPDATE produtos SET descricao = 'Impressora Laser', preco = 700 WHERE codigo = 4;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM O WHERE!

-- Delete
DELETE FROM produtos where codigo = 13;

# NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM O WHERE!