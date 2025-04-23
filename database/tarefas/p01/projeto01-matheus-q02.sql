-- CONSULTA PARA RELATÓRIO FINANCEIRO

-- mostra o nome do cliente, as contas pendentes que 
-- esse cliente tem, o valor da conta que for pendente e a descrição
-- da ordem de serviço que tem a conta pendente

SELECT 
    c.nome AS nome_cliente,
    ct.valor AS valor_pendente,
    os.descricao AS descricao_ordem
FROM cliente c
JOIN ordem_servico os ON c.id = os.cliente_id
JOIN conta ct ON os.id = ct.ordem_servico_id
WHERE ct.status = 'pendente';
