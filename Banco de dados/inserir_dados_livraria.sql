-- Inserindo editoras
INSERT INTO Editoras (Nome, Endereco) VALUES 
('Amostradinho', 'Rua cheia de água n° 125'),
('Cheia de Graça', 'Rua feliz, Almeida Contente n° 1502'),
('Ambrosio', 'Rua Marques de Figueiredo n° 1502');

-- Inserindo categorias
INSERT INTO Categorias (Nome) VALUES
('Ficção'),
('Romance'),
('Ação'),
('Policial'),
('Autoajuda');

-- Inserindo autores
INSERT INTO Autores (Nome) VALUES
('Carlinho'),
('Marcio Arruda'),
('Diego Silva');

-- Inserindo livros
INSERT INTO Livros (Titulo, ID_Editora, ID_Categoria, ID_Autor) VALUES
('Despencado na Programação', 1, 5, 3),
('Traduzindo o Código', 3, 3, 1),
('Respirando de Baixo d''Água', 2, 1, 2),
('Respeitando as Regras', 1, 4, 2);

insert into livros(preco)values
(24.65),
(45.36),
(15.36),
(25.36),
(35.36),
(5.36);




-- Inserindo um livro importando IDs de outras tabelas
INSERT INTO Livros (Titulo, ID_Editora, ID_Categoria, ID_Autor)
VALUES (
    'O Mundo Depois do Amanhã',
    (SELECT ID_Editora FROM Editoras WHERE Nome = 'Amostradinho'),
    (SELECT ID_Categoria FROM Categorias WHERE Nome = 'Ficção'),
    (SELECT ID_Autor FROM Autores WHERE Nome = 'Carlinho')
);
INSERT INTO Autores (Nome) VALUES
('Gaules'),
('Tiago migro'),
('Migel tolol');

INSERT INTO Livros (Titulo, ID_Editora, ID_Categoria, ID_Autor) VALUES
('404: Amor Não Encontrado', 1, 5, 4),
('Entre Bits e Sonhos', 3, 3, 5),
('O Último Código Perdido', 2, 1, 6),
('Loop Infinito', 1, 4, 6);

INSERT INTO Categorias (Nome) VALUES
('Comédia Existencial'),
('Aventura Pós-Apocalíptica'),
('Realidade Alternativa'),
('Mistério Cósmico'),
('Cyberpunk Distópico');

-- Mostrar dados
SELECT * FROM Categorias;
SELECT * FROM Autores;
SELECT * FROM Editoras;
SELECT * FROM Livros;