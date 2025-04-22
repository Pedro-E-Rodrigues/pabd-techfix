# Modelo Conceitual

## Diagrama de Classes e Entidade-Relacionaento

```mermaid
classDiagram

    class cliente {
        -int id
        -string nome
        -string telefone
        -string email
        -datetime data_criacao

        +setNome(string nome) void
        +setTelefone(string telefone) void
        +setEmail(string email) void

        +getNome() string
        +getTelefone() string
        +getEmail() string

        +listarOrdensServico() list
        +listarEquipamentos() list
    }

    class endereco {
        -int id
        -string complemento
        -string rua
        -string bairro
        -string cidade
        -string estado
        -int cliente_id

        +setComplemento(string complemento) void
        +setRua(string rua) void
        +setBairro(string bairro) void
        +setCidade(string cidade) void
        +setEstado(string estado) void

        +getEnderecoCompleto() string
    }

    class equipamento {
        -int id
        -enum dispositivo
        -string marca
        -string modelo
        -string numero_serie
        -datetime data_criacao
        -int cliente_id

        +setMarca(string marca) void
        +setModelo(string modelo) void
        +setNumeroSerie(string numero_serie) void

        +getMarca() string
        +getModelo() string
        +getNumeroSerie() string

        +associarCliente(int cliente_id) void
    }

    class ordem_servico {
        -int id
        -string descricao
        -enum status
        -float orcamento
        -datetime data_criacao
        -int cliente_id

        +setDescricao(string descricao) void
        +setStatus(enum status) void
        +setOrcamento(float valor) void

        +getDescricao() string
        +getStatus() enum
        +getOrcamento() float

        +adicionarItem(item_ordem_servico item) void
        +removerItem(int item_id) void
        +listarItensOrdemServico() list item_ordem_servico
    }

    class item_ordem_servico {
        -int id
        -string descricao
        -enum status
        -int equipamento_id
        -int ordem_servico_id

        +setDescricao(string descricao) void
        +setStatus(enum status) void

        +getDescricao() string
        +getStatus() enum

        +associarEquipamento(int equipamento_id) void
    }

    class conta {
        -int id
        -float valor
        -enum metodo_pagamento
        -datetime data_vencimento
        -enum status
        -int ordem_servico_id

        +setValor(float valor) void
        +setMetodoPagamento(enum metodo) void
        +setDataVencimento(datetime data) void
        +setStatus(enum status) void

        +getValor() float
        +getMetodoPagamento() enum
        +getDataVencimento() datetime
        +getStatus() enum

        +atualizarStatus(novo_status: enum) : void
    }

    cliente "1" -- "0..*" endereco
    cliente "1" -- "0..*" equipamento
    cliente "1" -- "0..*" ordem_servico
    ordem_servico "1" -- "1" conta
    ordem_servico "1" -- "0..*" item_ordem_servico
    equipamento "1" -- "0..*" item_ordem_servico

```

### Descrição das entidades

| Entidade               | Descrição                                                                                                                                                                                                                                                                                                                           |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **cliente**            | Representa o cliente que solicita os serviços. Possui atributos: `id`, `nome`, `telefone`, `email`, `data_criacao`. Métodos: `setNome()`, `setTelefone()`, `setEmail()`, `getNome()`, `getTelefone()`, `getEmail()`, `listarOrdensServico()`, `listarEquipamentos()`.                                                               |
| **endereco**           | Representa o endereço de um cliente. Atributos: `id`, `complemento`, `rua`, `bairro`, `cidade`, `estado`, `pessoa_id`. Métodos: `setComplemento()`, `setRua()`, `setBairro()`, `setCidade()`, `setEstado()`, `getEnderecoCompleto()`.                                                                                               |
| **equipamento**        | Equipamento do cliente que será consertado. Atributos: `id`, `dispositivo`, `marca`, `modelo`, `numero_serie`, `data_criacao`, `pessoa_id`. Métodos: `setMarca()`, `setModelo()`, `setNumeroSerie()`, `getMarca()`, `getModelo()`, `getNumeroSerie()`, `associarCliente()`.                                                         |
| **ordem_servico**      | Representa uma ordem de serviço solicitada por um cliente. Atributos: `id`, `descricao`, `status`, `orcamento`, `data_criacao`, `pessoa_id`. Métodos: `setDescricao()`, `setStatus()`, `setOrcamento()`, `getDescricao()`, `getStatus()`, `getOrcamento()`, `adicionarItem()`, `removerItem()`, `listarItensOrdemServico()`.        |
| **item_ordem_servico** | Itens da ordem de serviço, representando partes do serviço realizadas em um equipamento. Atributos: `id`, `descricao`, `status`, `equipamento_id`, `ordem_servico_id`. Métodos: `setDescricao()`, `setStatus()`, `getDescricao()`, `getStatus()`, `associarEquipamento()`.                                                          |
| **conta**              | Representa a cobrança de uma ordem de serviço. Atributos: `id`, `valor`, `metodo_pagamento`, `data_vencimento`, `status`, `ordem_servico_id`. Métodos: `setValor()`, `setMetodoPagamento()`, `setDataVencimento()`, `setStatus()`, `getValor()`, `getMetodoPagamento()`, `getDataVencimento()`, `getStatus()`, `atualizarStatus()`. |

### Descrição de enums

| Enum            | Descrição                                               |
| --------------- | ------------------------------------------------------- |
| statusOS        | ABERTA, EM_ANDAMENTO, FINALIZADA ou CANCELADA.          |
| statusItemOS    | PENDENTE, EM_EXECUCAO ou CONCLUIDO.                     |
| dispositivo     | NOTEBOOK, SMARTPHONE, TABLET, DESKTOP ou OUTRO.         |
| metodoPagamento | DINHEIRO, CARTAO_CREDITO, CARTAO_DEBITO, PIX ou BOLETO. |
| statusConta     | PENDENTE, PAGA, ATRASADA ou CANCELADA.                  |
