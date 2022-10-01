SELECT * FROM produtos;


-- Update
-- UPDATE tipos_produtos SET descricao = 'Nobreak' WHERE id = 2;

-- O pgAdmin 4 irá permitir utilizar de forma errada o UPDATE
-- UPDATE produtos SET descricao = 'Notebook', preco = '2000';


-- Delete
-- DELETE FROM tipos_produtos WHERE id = 1;

-- DELETE FROM produtos WHERE id >= 3;

-- O pgAdmin 4 não irá impedir a remoção incorreta dos elementos.
-- DELETE FROM produtos;