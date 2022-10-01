-- CREATE DATABASE secao04;

-- USE secao04; <- Não funciona no PostgreSQL

-- CREATE TABLE tipos_produtos(
-- 	id SERIAL PRIMARY KEY,
-- 	descricao VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE produtos(
-- 	id SERIAL PRIMARY KEY,
-- 	descricao VARCHAR(50) NOT NULL,
-- 	preco MONEY NOT NULL,
-- 	id_tipo_produto INT REFERENCES tipos_produtos(id) NOT NULL
-- );


-- INSERT INTO tipos_produtos (descricao) VALUES ('Computador');
-- INSERT INTO tipos_produtos (descricao) VALUES ('Impressora');

-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Desktop', 1200, 1);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Laptop', '1800', 1);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Jato Tinta', '300', 2);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Laser', '500', 2);

SELECT id, descricao, preco, id_tipo_produto FROM produtos;

SELECT p.id AS cod, p.descricao AS descr, p.preco AS pre, p.id_tipo_produto AS ctp FROM produtos AS p;


