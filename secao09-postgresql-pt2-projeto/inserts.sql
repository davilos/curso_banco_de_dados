-- Atores
-- INSERT INTO atores (nome) VALUES ('Bred Pitt');
-- INSERT INTO atores (nome) VALUES ('Angelina Jolie');
-- INSERT INTO atores (nome) VALUES ('Felicity Jones');

-- Gêneros
-- INSERT INTO generos (genero) VALUES ('Comédia');
-- INSERT INTO generos (genero) VALUES ('Terror');
-- INSERT INTO generos (genero) VALUES ('Suspense');

-- Filmes
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Tomb Raider', 3, 8.99);
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Star Wars', 2, 12.99);
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Loucademia de Polícia ', 4, 8.99);

-- Dvds
-- INSERT INTO dvds (id_filme, quantidade) VALUES (1, 2);
-- INSERT INTO dvds (id_filme, quantidade) VALUES (2, 4);
-- INSERT INTO dvds (id_filme, quantidade) VALUES (3, 1);

-- Clientes
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco)
-- 	VALUES ('Josefino', 'Souza', '81 98536-2428', 'Rua dos Palmares 113');
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco)
-- 	VALUES ('Danilo', 'Mendonça', '81 98137-3621', 'Rua dos Pinto 325');
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco)
-- 	VALUES ('Pedro', 'Filho', '81 98912-3574', 'Rua das Lembranças 1478');

-- Atores Filmes
-- INSERT INTO atores_filmes (id_filme, id_ator, personagem)
-- 	VALUES (1, 2, 'Lara Croft');
-- INSERT INTO atores_filmes (id_filme, id_ator, personagem)
-- 	VALUES (2, 3, 'Jyn Erso');
-- INSERT INTO atores_filmes (id_filme, id_ator, personagem)
-- 	VALUES (3, 1, 'Carey');

-- Emprestimos
-- INSERT INTO emprestimos (id_cliente, data) VALUES (1, '01-05-2018')
-- INSERT INTO emprestimos (id_cliente, data) VALUES (2, '10-10-2019')
-- INSERT INTO emprestimos (id_cliente, data) VALUES (3, '25-12-2020')

-- Devoluções
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '10-05-2018');
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (2, '01-12-2019');
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (3, '09-05-2021');

-- Filmes Emprestimo
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 2);
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (2, 3);
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (3, 1);

-- Filmes Devolução
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (3, 1);
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (1, 2);
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (2, 3);
