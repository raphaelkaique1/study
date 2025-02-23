## Convenção de Commits

| Tipo de Commit |Descrição                                                             | Exemplo
| ---------------|----------------------------------------------------------------------|---------
| `build`        | Modificações em arquivos de build e dependências.                    | `build: add libname`
| `chore`        | Atualizações de tarefas de build, configurações, pacotes e etc.      | `chore: add package to .gitignore`
| `ci`           | Mudanças relacionadas a integração contínua.                         | `ci: changes made to GitHub Actions`
| `docs`         | Altera a documentação do projeto.                                    | `docs: update README.md`
| `feat`         | Adiciona uma nova funcionalidade ao projeto.                         | `feat: add newFunction`
| `fix`          | Corrige um bug ou problema no projeto.                               | `fix: fixed issue fix#IssueNumber`
| `refactor`     | Realiza mudanças no código que não alteram a funcionalidade.         | `refactor: refactor at CLASSNAME`
| `rerf`         | Alterações no código relacionadas a performance.                     | `rerf: use switch-case instead of nested ifs`
| `style`        | Realiza mudanças na aparência, sem alterar a funcionalidade.         | `style: add EFFECTNAME to COMPONENT`
| `test`         | Adiciona ou modifica testes no projeto.                              | `test: add unit test for UserService`

## Convenção de Branches
![Image](https://github.com/user-attachments/assets/300d2ced-f295-4d66-9325-4d464150fde1)
* remote: [main, hotfix, develop]
* local: [feature, release]
