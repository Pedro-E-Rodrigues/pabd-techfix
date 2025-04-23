-- essa consulta mostra o total de ordens de serviço por cliente.
-- além disso, mostra as ordens de serviço separadas por finalizadas e abertas.

CREATE OR REPLACE VIEW resumo_ordens_por_cliente AS
SELECT 
    c.id AS cliente_id,
    c.nome,
    COUNT(os.id) AS total_ordens,
    COUNT(CASE WHEN os.status = 'aberta' THEN 1 END) AS abertas,
    COUNT(CASE WHEN os.status = 'finalizada' THEN 1 END) AS finalizadas
FROM cliente c
LEFT JOIN ordem_servico os ON c.id = os.cliente_id
GROUP BY c.id, c.nome;

SELECT * FROM resumo_ordens_por_cliente;
