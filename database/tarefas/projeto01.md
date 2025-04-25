# Tarefa P01 - Definição e Estrutura do Banco de Dados do Projeto

1. **Definição do BD**:

   - [Modelo de Dados](https://github.com/quirinof/pabd-techfix/blob/main/database/modelo.md)
   - [Create](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/create.sql)
   - [Inserts](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/inserts.sql)

2. **Consultas**:

   - [Consulta 1 (Matheus)](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/projeto01-matheus-q01.sql): Essa consulta mostra as ordens de serviço por cliente, separadas por status.
   - [Consulta 2 (Matheus)](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/projeto01-matheus-q02.sql): Exibe os nomes dos clientes com conta pendente, o valor e a descrição da ordem de serviço.
   - [Consulta 1 (Isayan)](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/projeto01-isayan-q01.sql): Essa consulta mostra as item ordem em servico pendentes ou executando.
   - [Consulta 2 (Isayan)](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/projeto01-isayan-q02.sql):Exibe os equipamentos cadastrados ordenados por cliente.
3. **Execução** de scripts:

```bash
cd database/tarefas/p01
docker exec -i postgres psql -U admin -d techfix < database/tarefas/p01/nome_do_arquivo.sql
```
