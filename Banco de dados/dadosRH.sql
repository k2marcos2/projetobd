-- Inserir Funcionários
INSERT INTO Funcionarios (funcionario_id, nome, departamento, cargo, data_admissao)
VALUES
(1, 'João Silva', 'Vendas', 'Vendedor', '2020-01-15'),
(2, 'Maria Oliveira', 'RH', 'Gerente de RH', '2018-06-10'),
(3, 'Pedro Santos', 'TI', 'Desenvolvedor', '2021-08-23'),
(4, 'Ana Costa', 'Marketing', 'Coordenadora', '2019-03-02'),
(5, 'Carlos Souza', 'Financeiro', 'Analista Financeiro', '2017-11-17');

-- Inserir Status na Tabela StatusSolicitacao
INSERT INTO StatusSolicitacao (status_id, status_nome)
VALUES
(1, 'Pendente'),
(2, 'Aprovado'),
(3, 'Negado'),
(4, 'Pago');

-- Inserir Solicitações de Férias usando a Procedure
CALL InserirSolicitacaoFerias(1, '2025-04-01', '2025-04-10', 10, 'Pendente', 'Solicitação de férias');
CALL InserirSolicitacaoFerias(2, '2025-05-15', '2025-05-30', 15, 'Aprovado', 'Aprovado para viagem');
CALL InserirSolicitacaoFerias(3, '2025-06-01', '2025-06-15', 15, 'Pendente', 'Solicitação de férias');
CALL InserirSolicitacaoFerias(4, '2025-07-05', '2025-07-20', 15, 'Aprovado', 'Viajar para Europa');
CALL InserirSolicitacaoFerias(5, '2025-08-10', '2025-08-25', 15, 'Pago', 'Férias pagas');
