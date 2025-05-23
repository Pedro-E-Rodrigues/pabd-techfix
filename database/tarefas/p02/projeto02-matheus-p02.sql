CREATE OR REPLACE PROCEDURE spAtualizarContaPaga(p_conta_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE conta
    SET status = 'pago'
    WHERE id = p_conta_id
    AND status IN ('pendente', 'vencido');
END;
$$;

CALL spAtualizarContaPaga(1);

