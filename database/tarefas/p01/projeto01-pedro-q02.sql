-- Clientes com equipamentos em status 'pendente'
-- Utilizado para acompanhamento

SELECT DISTINCT
    c.id AS cliente_id,
    c.nome,
    c.telefone,
    COUNT(ios.id) OVER (PARTITION BY c.id) AS total_itens_pendentes
FROM cliente c
JOIN ordem_servico os ON c.id = os.cliente_id
JOIN item_ordem_servico ios ON os.id = ios.ordem_servico_id
WHERE ios.status = 'pendente'
ORDER BY total_itens_pendentes DESC;