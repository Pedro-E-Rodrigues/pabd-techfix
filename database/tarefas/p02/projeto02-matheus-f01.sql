CREATE OR REPLACE FUNCTION fnTotalContaCliente(p_cliente_id INT)
RETURNS NUMERIC(10,2) AS $$
BEGIN
    RETURN (
        SELECT COALESCE(SUM(c.valor), 0)
        FROM conta c
        JOIN ordem_servico os ON c.ordem_servico_id = os.id
        WHERE os.cliente_id = p_cliente_id
        AND c.status = 'pago'
    );
END;
$$ LANGUAGE plpgsql;

SELECT fnTotalContaCliente(3);
