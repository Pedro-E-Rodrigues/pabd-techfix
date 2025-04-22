INSERT INTO cliente (nome, telefone, email) VALUES
('João Silva', '11999999999', 'joao@email.com'),
('Maria Oliveira', '21988888888', 'maria@email.com'),
('Carlos Souza', '31977777777', 'carlos@email.com'),
('Ana Costa', '41966666666', 'ana@email.com'),
('Pedro Santos', '51955555555', 'pedro@email.com'),
('Beatriz Rocha', '61944444444', 'beatriz@email.com'),
('Lucas Lima', '71933333333', 'lucas@email.com'),
('Fernanda Dias', '81922222222', 'fernanda@email.com'),
('Ricardo Alves', '91911111111', 'ricardo@email.com'),
('Juliana Mendes', '1010999999', 'juliana@email.com');

INSERT INTO endereco (complemento, rua, bairro, cidade, estado, cliente_id) VALUES
('Apt 101', 'Rua F', 'Centro', 'São Paulo', 'SP', 1),
('Casa', 'Rua J', 'Jardim', 'Rio de Janeiro', 'RJ', 2),
('Apt 202', 'Rua H', 'Santa Mônica', 'Belo Horizonte', 'MG', 3),
('Casa', 'Rua D', 'Vila Nova', 'Curitiba', 'PR', 4),
('Apt 303', 'Rua A', 'Centro', 'Porto Alegre', 'RS', 5),
('Casa', 'Rua F', 'Alvorada', 'Brasília', 'DF', 6),
('Apt 404', 'Rua G', 'Bela Vista', 'Salvador', 'BA', 7),
('Casa', 'Rua C', 'Copacabana', 'Rio de Janeiro', 'RJ', 8),
('Apt 505', 'Rua I', 'Pampulha', 'Belo Horizonte', 'MG', 9),
('Casa', 'Rua B', 'Aclimação', 'São Paulo', 'SP', 10);

INSERT INTO equipamento (dispositivo, marca, modelo, numero_serie, cliente_id) VALUES
('notebook', 'Dell', 'Inspiron 15', 'DEL001', 1),
('smartphone', 'Samsung', 'Galaxy S21', 'SAM002', 2),
('tablet', 'Apple', 'iPad Air', 'APP003', 3),
('desktop', 'HP', 'Pavilion', 'HP004', 4),
('notebook', 'Lenovo', 'IdeaPad', 'LEN005', 5),
('smartphone', 'Motorola', 'Moto G', 'MOT006', 6),
('desktop', 'Acer', 'Aspire', 'ACE007', 7),
('tablet', 'Samsung', 'Tab S6', 'SAM008', 8),
('notebook', 'Apple', 'MacBook Air', 'APP009', 9),
('smartphone', 'Xiaomi', 'Redmi Note', 'XIA010', 10);

INSERT INTO ordem_servico (descricao, status, orcamento, cliente_id) VALUES
('Troca de tela', 'aberta', 300.00, 1),
('Reparo no sistema', 'em_andamento', 450.00, 2),
('Substituição de HD', 'finalizada', 250.00, 3),
('Atualização de software', 'aberta', 150.00, 4),
('Formatação completa', 'cancelada', 200.00, 5),
('Limpeza interna', 'aberta', 100.00, 6),
('Reinstalação do sistema', 'em_andamento', 350.00, 7),
('Troca de teclado', 'finalizada', 180.00, 8),
('Reparo na placa mãe', 'aberta', 600.00, 9),
('Atualização de drivers', 'aberta', 120.00, 10);

INSERT INTO item_ordem_servico (descricao, status, equipamento_id, ordem_servico_id) VALUES
('Substituir tela LCD', 'pendente', 1, 1),
('Verificar vírus', 'executando', 2, 2),
('Trocar HD 1TB', 'concluido', 3, 3),
('Atualizar Windows', 'pendente', 4, 4),
('Cancelar procedimento', 'concluido', 5, 5),
('Limpeza de cooler', 'pendente', 6, 6),
('Reinstalar Windows 10', 'executando', 7, 7),
('Substituir teclado físico', 'concluido', 8, 8),
('Verificar curto na placa', 'pendente', 9, 9),
('Atualizar driver Wi-Fi', 'pendente', 10, 10);

INSERT INTO conta (valor, metodo_pagamento, data_vencimento, status, ordem_servico_id) VALUES
(300.00, 'pix', '2025-04-30', 'pendente', 1),
(450.00, 'cartao_credito', '2025-05-02', 'pago', 2),
(250.00, 'dinheiro', '2025-05-05', 'pago', 3),
(150.00, 'pix', '2025-05-10', 'pendente', 4),
(200.00, 'boleto', '2025-05-15', 'vencido', 5),
(100.00, 'cartao_debito', '2025-05-20', 'pago', 6),
(350.00, 'pix', '2025-05-22', 'pendente', 7),
(180.00, 'pix', '2025-05-25', 'pago', 8),
(600.00, 'dinheiro', '2025-05-28', 'pendente', 9),
(120.00, 'cartao_credito', '2025-06-01', 'pendente', 10);
