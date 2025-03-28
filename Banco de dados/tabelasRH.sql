-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    funcionario_id INT PRIMARY KEY,
    nome VARCHAR(255),
    departamento VARCHAR(255),
    cargo VARCHAR(255),
    data_admissao DATE
);

-- Tabela de Solicitações de Férias
CREATE TABLE SolicitacoesFerias (
    solicitacao_id INT PRIMARY KEY,
    funcionario_id INT,
    data_inicio DATE,
    data_fim DATE,
    dias_solicitados INT,
    status VARCHAR(50),
    data_solicitacao DATE,
    data_aprovacao DATE,
    observacoes TEXT,
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(funcionario_id)
);

-- Tabela de Aprovações
CREATE TABLE Aprovacoes (
    aprovacao_id INT PRIMARY KEY,
    solicitacao_id INT,
    aprovador_id INT,  -- Funcionário que fez a aprovação
    data_aprovacao DATE,
    status VARCHAR(50),  -- Aprovado, Negado
    observacoes TEXT,
    FOREIGN KEY (solicitacao_id) REFERENCES SolicitacoesFerias(solicitacao_id),
    FOREIGN KEY (aprovador_id) REFERENCES Funcionarios(funcionario_id)
);

-- Tabela de Pagamentos
CREATE TABLE Pagamentos (
    pagamento_id INT PRIMARY KEY,
    solicitacao_id INT,
    valor_pago DECIMAL(10,2),
    data_pagamento DATE,
    metodo_pagamento VARCHAR(50),
    FOREIGN KEY (solicitacao_id) REFERENCES SolicitacoesFerias(solicitacao_id)
);

-- Tabela de Status das Solicitações
CREATE TABLE StatusSolicitacao (
    status_id INT PRIMARY KEY,
    status_nome VARCHAR(50) -- Pendente, Aprovado, Negado, Pago, etc.
);

-- Tabela de Histórico de Férias
CREATE TABLE HistoricoFerias (
    historico_id INT PRIMARY KEY AUTO_INCREMENT,
    solicitacao_id INT,
    funcionario_id INT,
    status_antigo VARCHAR(50),
    status_novo VARCHAR(50),
    data_alteracao DATE,
    observacoes TEXT,
    FOREIGN KEY (solicitacao_id) REFERENCES SolicitacoesFerias(solicitacao_id),
    FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(funcionario_id)
);



