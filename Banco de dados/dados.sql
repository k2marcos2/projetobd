INSERT INTO Permissoes (nome, descricao) VALUES
('admin', 'Administrador do sistema'),
('vendedor', 'Vendedor com acesso limitado'),
('cliente', 'Cliente com acesso ao próprio perfil');

INSERT INTO Usuarios (nome, email, senha, permissao_id) VALUES
('Administrador', 'admin@sisvendas.com', 'senha123', 1),
('Vendedor 1', 'vendedor1@sisvendas.com', 'senha456', 2),
('Cliente 1', 'cliente1@sisvendas.com', 'senha789', 3);

INSERT INTO Clientes (nome, email, telefone, endereco) VALUES
('Cliente A', 'clientea@email.com', '1234-5678', 'Rua A, 123'),
('Cliente B', 'clienteb@email.com', '9876-5432', 'Rua B, 456'),
('Cliente C', 'clientec@email.com', '1111-2222', 'Rua C, 789');

INSERT INTO Categorias (nome, descricao) VALUES
('Eletrônicos', 'Produtos eletrônicos em geral'),
('Vestuário', 'Roupas e acessórios'),
('Alimentos', 'Produtos alimentícios');

INSERT INTO Produtos (nome, descricao, preco, categoria_id) VALUES
('Smartphone', 'Smartphone com câmera de alta resolução', 1200.00, 1),
('Camiseta', 'Camiseta de algodão', 50.00, 2),
('Arroz', 'Arroz branco tipo 1', 10.00, 3),
('Notebook', 'Notebook com processador Intel Core i7', 3500.00, 1);

INSERT INTO Clientes_Produtos (cliente_id, produto_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

INSERT INTO FormasPagamento (nome, descricao) VALUES
('Cartão de crédito', 'Pagamento com cartão de crédito'),
('Boleto bancário', 'Pagamento com boleto bancário'),
('Pix', 'Pagamento instantâneo via Pix');

