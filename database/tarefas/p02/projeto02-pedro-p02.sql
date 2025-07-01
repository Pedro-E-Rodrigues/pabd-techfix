CREATE OR REPLACE PROCEDURE finalizar_ordem_servico(
    p_ordem_id INT,
    p_metodo_pagamento metodo_pagamento,
    p_data_vencimento DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
    valor_final NUMERIC(10, 2);
BEGIN
    -- 1. Atualiza o status da ordem de serviço para 'finalizada'.
    UPDATE ordem_servico
    SET status = 'finalizada'
    WHERE id = p_ordem_id;

    -- 2. Usa a função que já corrigimos para buscar o valor final do orçamento.
    SELECT calcular_total_ordem(p_ordem_id) INTO valor_final;

    -- 3. Cria um registro correspondente na tabela 'conta'.
    INSERT INTO conta (ordem_servico_id, valor, metodo_pagamento, data_vencimento)
    VALUES (p_ordem_id, valor_final, p_metodo_pagamento, p_data_vencimento);
END;
$$;