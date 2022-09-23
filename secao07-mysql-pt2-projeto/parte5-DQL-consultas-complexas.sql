# Consulta complexa

-- Compras
-- Passo 1 - Trazer as compras
SELECT * FROM compras;

-- Passo 2 - Colocar o nome dos clientes nas compras
SELECT co.id AS 'ID Compra', co.data AS 'Data de Compra', cl.nome AS 'Cliente' 
	FROM compras AS co, clientes AS cl 
    WHERE co.id_cliente = cl.id
    ORDER BY co.id;

-- Passo 3 - Produtos Compras
SELECT * FROM produtos_compras;

-- Passo 4 - 
SELECT com.id AS 'Venda',
	cli.nome AS 'Cliente',
    SUM(prod.preco_venda * proc.quantidade) AS 'Total',
    com.data AS 'Data da Compra'
    FROM produtos_compras AS proc, produtos AS prod, compras AS com, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id;