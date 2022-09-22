# Realizando consultas simples

-- Tipos Produtos
SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos ORDER BY id DESC;

-- Fabricantes
SELECT * FROM fabricantes;

-- Medicos
SELECT * FROM medicos;

-- Clientes
SELECT * FROM clientes;

-- Compras
SELECT * FROM compras;

-- Produtos Compras
SELECT * FROM produtos_compras;
SELECT * FROM produtos_compras WHERE quantidade > 2;

-- Receitas Medicas
SELECT * FROM receitas_medicas;