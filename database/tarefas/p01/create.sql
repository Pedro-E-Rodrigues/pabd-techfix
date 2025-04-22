DROP TABLE IF EXISTS conta, item_ordem_servico, ordem_servico, equipamento, endereco, cliente CASCADE;
DROP TYPE IF EXISTS tipo_dispositivo, status_ordem_servico, status_item_ordem_servico, metodo_pagamento, status_conta;


CREATE TYPE tipo_dispositivo AS ENUM ('notebook', 'smartphone', 'tablet', 'desktop', 'outro');

CREATE TYPE status_ordem_servico AS ENUM ('aberta', 'em_andamento', 'finalizada', 'cancelada');

CREATE TYPE status_item_ordem_servico AS ENUM ('pendente', 'executando', 'concluido');

CREATE TYPE metodo_pagamento AS ENUM ('dinheiro', 'cartao_credito', 'cartao_debito', 'pix', 'boleto');

CREATE TYPE status_conta AS ENUM ('pendente', 'pago', 'vencido');


CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(255),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE endereco (
    id SERIAL PRIMARY KEY,
    complemento VARCHAR(255),
    rua VARCHAR(255),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    cliente_id INTEGER REFERENCES cliente(id) ON DELETE CASCADE
);

CREATE TABLE equipamento (
    id SERIAL PRIMARY KEY,
    dispositivo tipo_dispositivo NOT NULL,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    numero_serie VARCHAR(100),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cliente_id INTEGER REFERENCES cliente(id) ON DELETE CASCADE
);

CREATE TABLE ordem_servico (
    id SERIAL PRIMARY KEY,
    descricao TEXT,
    status status_ordem_servico NOT NULL DEFAULT 'aberta',
    orcamento NUMERIC(10,2),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cliente_id INTEGER REFERENCES cliente(id) ON DELETE CASCADE
);

CREATE TABLE item_ordem_servico (
    id SERIAL PRIMARY KEY,
    descricao TEXT,
    status status_item_ordem_servico NOT NULL DEFAULT 'pendente',
    equipamento_id INTEGER REFERENCES equipamento(id) ON DELETE SET NULL,
    ordem_servico_id INTEGER REFERENCES ordem_servico(id) ON DELETE CASCADE
);

CREATE TABLE conta (
    id SERIAL PRIMARY KEY,
    valor NUMERIC(10,2) NOT NULL,
    metodo_pagamento metodo_pagamento NOT NULL,
    data_vencimento DATE NOT NULL,
    status status_conta NOT NULL DEFAULT 'pendente',
    ordem_servico_id INTEGER UNIQUE REFERENCES ordem_servico(id) ON DELETE CASCADE
);