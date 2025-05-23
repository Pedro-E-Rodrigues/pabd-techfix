TRUNCATE TABLE cliente, endereco, equipamento, ordem_servico, item_ordem_servico, conta RESTART IDENTITY CASCADE;

-- CLIENTES
INSERT INTO cliente (nome, document, tipo_documento, telefone, email) VALUES
('Ana Costa', '12345678900', 'cpf', '11999990001', 'ana.costa@email.com'),
('Bruno Silva', '98765432100', 'cpf', '11999990002', 'bruno.silva@email.com'),
('Cláudia Almeida', '11223344556', 'rg', '11999990003', 'claudia.almeida@email.com'),
('Daniel Souza', '44556677889', 'cnh', '11999990004', 'daniel.souza@email.com'),
('Elisa Ramos', '55667788990', 'cpf', '11999990005', 'elisa.ramos@email.com'),
('Fernanda Lima', '33322211100', 'cpf', '11999990006', 'fernanda.lima@email.com'),
('Gustavo Rocha', '44433322211', 'cnh', '11999990007', 'gustavo.rocha@email.com'),
('Helena Vieira', '55544433322', 'rg', '11999990008', 'helena.vieira@email.com'),
('Igor Martins', '66655544433', 'cpf', '11999990009', 'igor.martins@email.com'),
('Juliana Barros', '77766655544', 'passaporte', '11999990010', 'juliana.barros@email.com');

-- ENDEREÇOS
INSERT INTO endereco (complemento, rua, numero, cep, bairro, cidade, estado, cliente_id) VALUES
('Ap 101', 'Rua A', '10', '01000-000', 'Centro', 'São Paulo', 'SP', 1),
(NULL, 'Rua B', '20', '02000-000', 'Jardins', 'São Paulo', 'SP', 2),
('Casa', 'Rua C', '30', '03000-000', 'Mooca', 'São Paulo', 'SP', 3),
('Bloco B', 'Rua D', '40', '04000-000', 'Pinheiros', 'São Paulo', 'SP', 4),
('Ap 202', 'Rua E', '50', '05000-000', 'Bela Vista', 'São Paulo', 'SP', 5),
('Casa 1', 'Rua F', '60', '06000-000', 'Aclimação', 'São Paulo', 'SP', 6),
(NULL, 'Rua G', '70', '07000-000', 'Tatuapé', 'São Paulo', 'SP', 7),
('Ap 303', 'Rua H', '80', '08000-000', 'Santana', 'São Paulo', 'SP', 8),
('Ap 404', 'Rua I', '90', '09000-000', 'Ipiranga', 'São Paulo', 'SP', 9),
('Bloco C', 'Rua J', '100', '10000-000', 'Liberdade', 'São Paulo', 'SP', 10);

-- EQUIPAMENTOS
INSERT INTO equipamento (dispositivo, marca, modelo, numero_serie, cliente_id) VALUES
('notebook', 'Dell', 'Inspiron 15', 'ABC123', 1),
('smartphone', 'Samsung', 'Galaxy S21', 'DEF456', 2),
('tablet', 'Apple', 'iPad 9', 'GHI789', 3),
('desktop', 'HP', 'Pavilion', 'JKL012', 4),
('notebook', 'Lenovo', 'ThinkPad', 'MNO345', 5),
('smartphone', 'Xiaomi', 'Redmi Note 10', 'PQR678', 6),
('notebook', 'Acer', 'Aspire 5', 'STU901', 6),
('tablet', 'Samsung', 'Galaxy Tab A8', 'VWX234', 7),
('desktop', 'Dell', 'OptiPlex', 'YZA567', 8),
('outro', 'Multilaser', 'ML-G400', 'BCD890', 9);

-- ORDEM DE SERVIÇO
INSERT INTO ordem_servico (descricao, status, orcamento, cliente_id) VALUES
('Troca de tela do notebook', 'aberta', 450.00, 1),
('Manutenção geral no smartphone', 'em_andamento', 200.00, 2),
('Substituição de bateria', 'finalizada', 300.00, 3),
('Limpeza e formatação', 'cancelada', 150.00, 4),
('Atualização de software', 'aberta', 100.00, 5),
('Troca de vidro traseiro', 'em_andamento', 120.00, 6),
('Upgrade de memória RAM', 'aberta', 250.00, 6),
('Substituição de tela', 'finalizada', 500.00, 7),
('Instalação de SSD', 'cancelada', 300.00, 8),
('Verificação geral', 'finalizada', 180.00, 9);

-- ITENS DA OS
INSERT INTO item_ordem_servico (descricao, status, equipamento_id, ordem_servico_id) VALUES
('Troca de tela', 'pendente', 1, 1),
('Troca de conector de carga', 'executando', 2, 2),
('Bateria substituída', 'concluido', 3, 3),
('Formatação realizada', 'concluido', 4, 4),
('Atualização Android', 'pendente', 2, 5),
('Vidro substituído', 'executando', 6, 6),
('Memória instalada', 'pendente', 7, 7),
('Tela trocada', 'concluido', 8, 8),
('SSD com defeito', 'pendente', 9, 9),
('Teste de hardware', 'concluido', 10, 10);

-- CONTAS
INSERT INTO conta (valor, metodo_pagamento, data_vencimento, status, ordem_servico_id) VALUES
(450.00, 'cartao_credito', '2025-06-10', 'pendente', 1),
(200.00, 'pix', '2025-06-11', 'pago', 2),
(300.00, 'dinheiro', '2025-06-09', 'pago', 3),
(150.00, 'boleto', '2025-06-08', 'vencido', 4),
(100.00, 'cartao_debito', '2025-06-15', 'pendente', 5),
(120.00, 'pix', '2025-06-16', 'pendente', 6),
(250.00, 'dinheiro', '2025-06-17', 'pago', 7),
(500.00, 'cartao_credito', '2025-06-14', 'pago', 8),
(300.00, 'boleto', '2025-06-18', 'vencido', 9),
(180.00, 'cartao_debito', '2025-06-19', 'pendente', 10);

