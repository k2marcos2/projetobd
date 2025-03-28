DELIMITER $$

CREATE PROCEDURE InserirSolicitacaoFerias(
    IN p_funcionario_id INT,
    IN p_data_inicio DATE,
    IN p_data_fim DATE,
    IN p_dias_solicitados INT,
    IN p_status VARCHAR(50),
    IN p_observacoes TEXT
)
BEGIN
    -- Inserir solicitação de férias
    INSERT INTO SolicitacoesFerias (
        funcionario_id,
        data_inicio,
        data_fim,
        dias_solicitados,
        status,
        data_solicitacao,
        observacoes
    ) 
    VALUES (
        p_funcionario_id,
        p_data_inicio,
        p_data_fim,
        p_dias_solicitados,
        p_status,
        CURDATE(), -- Data da solicitação
        p_observacoes
    );
END $$

DELIMITER ;


