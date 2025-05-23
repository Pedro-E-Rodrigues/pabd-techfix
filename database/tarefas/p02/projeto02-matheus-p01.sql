CREATE OR REPLACE PROCEDURE sp_atualizar_status_item(p_item_id INT, p_novo_status status_item_ordem_servico)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE item_ordem_servico
    SET status = p_novo_status
    WHERE id = p_item_id;
END;
$$;

CALL sp_atualizar_status_item(1, 'concluido');

