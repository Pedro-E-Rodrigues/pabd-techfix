-- Problemas mais recorrentes por tipo de dispositivo

SELECT 
    e.dispositivo,
    SUBSTRING(os.descricao FROM 1 FOR 30) AS problema_mais_comum,
    COUNT(*) AS ocorrencias
FROM ordem_servico os
JOIN item_ordem_servico ios ON os.id = ios.ordem_servico_id
JOIN equipamento e ON ios.equipamento_id = e.id
GROUP BY e.dispositivo, SUBSTRING(os.descricao FROM 1 FOR 30)
ORDER BY e.dispositivo, ocorrencias DESC;