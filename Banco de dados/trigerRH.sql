DELIMITER $$

CREATE TRIGGER trg_historial_ferias
AFTER UPDATE ON SolicitacoesFerias
FOR EACH ROW
BEGIN
    -- Verificar se o status foi alterado
    IF OLD.status <> NEW.status THEN
        INSERT INTO HistoricoFerias (
            solicitacao_id,
            funcionario_id,
            status_antigo,
            status_novo,
            data_alteracao,
            observacoes
        )
        VALUES (
            NEW.solicitacao_id,
            NEW.funcionario_id,
            OLD.status,
            NEW.status,
            CURDATE(),
            CONCAT('Status alterado de ', OLD.status, ' para ', NEW.status)
        );
    END IF;
END $$

DELIMITER ;
