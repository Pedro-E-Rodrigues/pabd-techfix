CREATE OR REPLACE FUNCTION fnOrdensPorStatus(p_cliente_id INT)
RETURNS TABLE(status status_ordem_servico, quantidade INTEGER) AS $$
BEGIN
    RETURN QUERY
    SELECT os.status, COUNT(*)::INTEGER
    FROM ordem_servico os
    WHERE os.cliente_id = p_cliente_id
    GROUP BY os.status;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnOrdensPorStatus(6);