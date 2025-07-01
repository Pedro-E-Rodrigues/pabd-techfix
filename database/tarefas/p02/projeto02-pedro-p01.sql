CREATE OR REPLACE PROCEDURE registrar_nova_ordem_servico(
    p_cliente_id INT,
    p_descricao_problema TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insere uma nova ordem de serviço.
    -- O status e a data_criacao usarão os valores padrão definidos na sua tabela.
    INSERT INTO ordem_servico (cliente_id, descricao)
    VALUES (p_cliente_id, p_descricao_problema);
END;
$$;