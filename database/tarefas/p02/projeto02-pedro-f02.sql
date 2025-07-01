CREATE OR REPLACE FUNCTION verificar_ordens_abertas_cliente(p_cliente_id INT)
RETURNS INT AS $$
DECLARE
    quantidade_ordens INT;
BEGIN
    -- Conta as ordens com status 'aberta' ou 'em_andamento' para o cliente informado.
    SELECT COUNT(*)
    INTO quantidade_ordens
    FROM ordem_servico
    WHERE cliente_id = p_cliente_id AND status IN ('aberta', 'em_andamento');

    RETURN quantidade_ordens;
END;
$$ LANGUAGE plpgsql;