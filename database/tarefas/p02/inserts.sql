TRUNCATE TABLE cliente, endereco, equipamento, ordem_servico, item_ordem_servico, conta RESTART IDENTITY CASCADE;

-- CLIENTES
INSERT INTO cliente (nome, document, tipo_documento, telefone, email) VALUES
('Ana Costa', '12345678900', 'cpf', '11999990001', 'ana.costa@email.com'),
('Bruno Silva', '98765432100', 'cpf', '11999990002', 'bruno.silva@email.com'),
('Cláudia Almeida', '11223344556', 'rg', '11999990003', 'claudia.almeida@email.com'),
('Daniel Souza', '44556677889', 'cnh', '11999990004', 'daniel.souza@email.com'),
('Elisa Ramos', '55667788990', 'cpf', '11999990005', 'elisa.ramos@email.com');

-- ENDEREÇOS
INSERT INTO endereco (complemento, rua, numero, cep, bairro, cidade, estado, cliente_id) VALUES
('Ap 101', 'Rua A', '10', '01000-000', 'Centro', 'São Paulo', 'SP', 1),
(NULL, 'Rua B', '20', '02000-000', 'Jardins', 'São Paulo', 'SP', 2),
('Casa', 'Rua C', '30', '03000-000', 'Mooca', 'São Paulo', 'SP', 3),
('Bloco B', 'Rua D', '40', '04000-000', 'Pinheiros', 'São Paulo', 'SP', 4),
('Ap 202', 'Rua E', '50', '05000-000', 'Bela Vista', 'São Paulo', 'SP', 5);

-- EQUIPAMENTOS
INSERT INTO equipamento (dispositivo, marca, modelo, numero_serie, cliente_id) VALUES
('notebook', 'Dell', 'Inspiron 15', 'ABC123', 1),
('smartphone', 'Samsung', 'Galaxy S21', 'DEF456', 2),
('tablet', 'Apple', 'iPad 9', 'GHI789', 3),
('desktop', 'HP', 'Pavilion', 'JKL012', 4),
('notebook', 'Lenovo', 'ThinkPad', 'MNO345', 5);

-- ORDEM DE SERVIÇO
INSERT INTO ordem_servico (descricao, status, orcamento, cliente_id) VALUES
('Troca de tela do notebook', 'aberta', 450.00, 1),
('Manutenção geral no smartphone', 'em_andamento', 200.00, 2),
('Substituição de bateria', 'finalizada', 300.00, 3),
('Limpeza e formatação', 'cancelada', 150.00, 4),
('Atualização de software', 'aberta', 100.00, 5);

-- ITENS DA OS
INSERT INTO item_ordem_servico (descricao, status, equipamento_id, ordem_servico_id) VALUES
('Troca de tela', 'pendente', 1, 1),
('Troca de conector de carga', 'executando', 2, 2),
('Bateria substituída', 'concluido', 3, 3),
('Formatação realizada', 'concluido', 4, 4),
('Atualização Android', 'pendente', 2, 5);

-- CONTAS
INSERT INTO conta (valor, metodo_pagamento, data_vencimento, status, ordem_servico_id) VALUES
(450.00, 'cartao_credito', '2025-06-10', 'pendente', 1),
(200.00, 'pix', '2025-06-11', 'pago', 2),
(300.00, 'dinheiro', '2025-06-09', 'pago', 3),
(150.00, 'boleto', '2025-06-08', 'vencido', 4),
(100.00, 'cartao_debito', '2025-06-15', 'pendente', 5);

