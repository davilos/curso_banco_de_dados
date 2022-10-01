-- INSERTS

-- Tipos Produtos
-- INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
-- INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
-- INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');

-- Produtos
-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- 	VALUES ('Notebook DELL 1544', 2345.67, 1);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- 	VALUES ('Impr. Jato de Tinta', 450, 2);
-- INSERT INTO produtos (descricao, preco, id_tipo_produto)
-- 	VALUES ('Mouse sem fio', 45, 3);

-- Pacientes
-- INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
-- 	VALUES ('Angelina Jolie', 'Rua da Paz, 44', 'Nova Lima', 'Santos', 'SP', '52092-004', '1978-03-05');
-- INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
-- 	VALUES ('Fulano de Tal', 'Alto da Telha, 101', 'Nova Descoberta', 'Recife', 'PE', '12092-003', '2003-07-02');
-- INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
-- 	VALUES ('Josefino Teresinha', 'Alto do Capitão, 77', 'Nova Descoberta', 'Recife', 'PE', '22092-005', '1968-10-05');

-- Professores
-- INSERT INTO professores (telefone, nome) VALUES (119856645, 'José Cláudio de Souza');
-- INSERT INTO professores (telefone, nome) VALUES (819873654, 'Jeferson Lima dos Santos');
-- INSERT INTO professores (telefone, nome) VALUES (719813245, 'Carlos Francisco Araújo');


-- Turmas
-- INSERT INTO turmas (capacidade, id_professor) VALUES (58, 2);
-- INSERT INTO turmas (capacidade, id_professor) VALUES (99, 1);
-- INSERT INTO turmas (capacidade, id_professor) VALUES (34, 3);

-- SELECTS
SELECT * FROM turmas;