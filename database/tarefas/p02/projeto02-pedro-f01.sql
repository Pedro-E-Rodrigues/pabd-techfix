CREATE OR REPLACE FUNCTION calcular_total_ordem(p_ordem_id INT)
RETURNS NUMERIC(10, 2) AS $$
DECLARE
    valor_orcamento NUMERIC(10, 2);
BEGIN
    -- Busca o valor do orçamento diretamente da tabela de ordem de serviço,
    -- pois é lá que o valor total está armazenado no seu projeto.
    SELECT orcamento
    INTO valor_orcamento
    FROM ordem_servico
    WHERE id = p_ordem_id;

    RETURN valor_orcamento;
END;
$$ LANGUAGE plpgsql;