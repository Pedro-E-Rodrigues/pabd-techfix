# Tarefa P01 - Definição e Estrutura do Banco de Dados do Projeto

1. **Definição do BD**:

   - [Modelo de Dados](https://github.com/quirinof/pabd-techfix/blob/main/database/modelo.md)
   - [Create](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/create.sql)
   - [Inserts](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/inserts.sql)

2. **Consultas**:

   - [Consulta 1 - Matheus](https://github.com/quirinof/pabd-techfix/blob/main/database/tarefas/p01/projeto01-matheus-q01.sql) Essa consulta exibe as ordens de serviço por cliente, separadas por status.

3. **Execução** de scripts:

```bash
cd database/tarefas/p01
docker exec -i postgres psql -U admin -d techfix < database/tarefas/p01/nome_do_arquivo.sql
```
