-- lista os equipamentos ordenados por cliente

SELECT 
    ct.nome AS "cliente",
    eq.dispositivo,
    eq.marca,
    eq.modelo,
    eq.numero_serie AS "numero de serie",
    eq.data_criacao
FROM equipamento AS eq
JOIN cliente AS ct ON ct.id = eq.cliente_id
ORDER BY ct.nome;