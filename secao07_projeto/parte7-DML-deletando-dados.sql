# Excluindo dados

-- Produtos Compras
SELECT * FROM produtos_compras;

SELECT * FROM receitas_medicas;

# Primeiro, precisamos deletar o dado dependente do dado que desejamos deletar.
DELETE FROM receitas_medicas WHERE id_produto_compra = 3;

# Depois da deleção do dado dependente, podemos deletar o dado a qual queríamos deletar antes.
DELETE FROM produtos_compras WHERE id = 3;