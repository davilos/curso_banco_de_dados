# Inserindo dados de teste - DML

# Tabelas independentes
-- Tipos Produtos
INSERT INTO tipos_produtos (tipo) VALUES ('Remedios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

-- Fabricantes 
INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Vitalis');
INSERT INTO fabricantes (fabricante) VALUES ('Palmolive');

-- Medicos
INSERT INTO medicos (nome, crm) VALUES ('Alfredo Muniz', '123123SP');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Silva', '223123MG');
INSERT INTO medicos (nome, crm) VALUES ('Julieta Santana', '323123PE');

-- Clientes
INSERT INTO clientes (nome, endereco, telefone, cep, cidade, cpf)
	VALUES ('Felicty Jones', 'Rua da Paz, 34', '(11) 2345-8899', '34.5089-601', 'Santos', '234.789.433-60');
INSERT INTO clientes (nome, endereco, telefone, cep, cidade, cpf)
	VALUES ('Angelina Jolie', 'Rua da Ipiranga, 456', '(21) 7645-7799', '56.7089-681', 'Rio de Janeiro', '432.987.432-45');
INSERT INTO clientes (nome, endereco, telefone, cep, cidade, cpf)
	VALUES ('Ricardo Chavez', 'Rua Certa, 579', '(21) 2897-9912', '12.1089-101', 'Planaltina', '987.321.511-31');

# Tabelas dependentes
-- Produtos
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante)
	VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1, 1);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante)
	VALUES ('Sabonete', 'Limpeza', 'Sei la', '3.56', 2, 3);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante)
	VALUES ('Protetor Solar', 'Proteger', 'Soro de abacate', '98.12', 2, 1);

-- Compras
INSERT INTO compras (id_cliente, data) VALUES (1, '2019-03-18');
INSERT INTO compras (id_cliente, data) VALUES (2, '2019-04-18');
INSERT INTO compras (id_cliente, data) VALUES (1, '2019-05-18');

-- Produtos Compras
INSERT INTO produtos_compras (quantidade, id_compra, id_produto) VALUES (2, 1, 1);
INSERT INTO produtos_compras (quantidade, id_compra, id_produto) VALUES (3, 1, 2);
INSERT INTO produtos_compras (quantidade, id_compra, id_produto) VALUES (1, 2, 3);

-- Receitas médicas
INSERT INTO receitas_medicas (id_produto_compra, id_medico, receita) VALUES (1, 1, 'receita1.pdf');
INSERT INTO receitas_medicas (id_produto_compra, id_medico, receita) VALUES (3, 2, 'receita2.pdf');