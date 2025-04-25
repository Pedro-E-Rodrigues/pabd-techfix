-- lista as  item ordem em servico pendentes ou executando

SELECT
    ios.descricao AS "descrição da ordem do serviço",
	ios.status,
    eq.dispositivo, 
    eq.marca,
    eq.modelo, 
    eq.numero_serie AS "numero de serie",
    c.nome AS "cliente",
    c.telefone AS "telefone de contanto",
    c.email AS "email de contanto"
FROM item_ordem_servico AS ios
JOIN equipamento AS eq  ON ios.equipamento_id = eq.id
JOIN cliente AS c ON eq.cliente_id = c.id
WHERE ios.status = 'pendente' or ios.status = 'executando'
ORDER BY status;
