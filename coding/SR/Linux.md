# ShellScript
O **Shell SH** (ou simplesmente `sh`) é o shell padrão histórico dos sistemas Unix, sendo ele interpretado por qualquer Shell que pretenda atender o padrão POSIX. Pode-se dizer que o `sh` é um contrato padronizado para interpretadores de comandos, sendo a linguagem de script que realiza a ponte direta entre o usuário e o kernel do sistema operacional.  
Nativamente, o `sh` permite executar comandos do sistema (incluindo comandos encadeados) e controlar fluxos lógicos, sendo amplamente usado para a automatização de tarefas via script.  
Sua função real no sistema é traduzir ao sistema operacional o que o usuário espera que seja feito através de comandos amigáveis a humanos, então, quando o comando `ls -l /var/log` é executado no terminal, o que realmente acontece no fluxo é:
1. `sh` interpreta o comando
2. resolve variáveis, expansões e redirecionamentos
3. invoca chamadas de sistema como `fork` e `exec` por exemplo
4. kernel executa o binário

> O `sh` não executa nada por si só, ele apenas _orquestra_ a execução.

## POSIX Shell
Visto que o Shell SH é a _"linguagem"_ padrão para execução de comandos de SOs baseados em Unix através do terminal de comandos, os interpretadores de Shell precisam ser **SH compatíveis**, e para serem considerados compatíveis com script `sh` eles devem respeitar o padrão **POSIX Shell** e necessariamente atender as características mínimas que se esperam:
- variáveis simples `VAR=value`
- pipes `|`
- redirecionamentos `<`, `>`, `>>`
- controle de fluxo `if`, `case`, `for`, `while`, `until`
- funções básicas `function() {}`
- exit codes `$?`

O POSIX (Portable Operating System Interface) foi criado para resolver o problema de compatibilidade, pois com o sucesso do Unix nos anos 80, cada fornecedor desenvolveu seu próprio shell, o que gerava problemas em portabilidade e execução de programas, pois apesar de cada um afirmar que o seu interpretador era compatível com `sh`, não havia de fato um padrão que descrevesse o que era o `sh`, até o surgimento do POSIX. Ele propõe uma sintaxe e define comportamentos que se esperam que um interpretador shell entenda e execute.  
`#!/bin/sh`
O _"mínimo comum"_ que um interpretador deve suportar está descrito no **núcleo padronizado do Shell**:
- **Linguagem**
  - variáveis escalares
  - expansão de parâmetros
  - subshell `(...)`
  - comandos compostos
  - funções simples
- **Controle de fluxo**
  - `if / then / else`
  - `case`
  - `for`, `while`, `until`
- **Redirecionamento**
  - `>`, `>>`, `<`
  - `2>`, `2>&1`
  - `|`
- **Exit status**
  - `$?`
  - `0 = sucesso` _convenção_

Entretanto, apesar de ser comumente visto em scripts baseados em Linux, os comandos listados a seguir não são explicitamente garantidos pelo POSIX, sendo em suma extensões de shell específico (geralmente `bash`):
- Arrays
- `[[ ... ]]`
- `(( ... ))`
- `source`
- RegExp avançado
- Process Substitution `<()`
- `declare`, `local`

Por isso, é importante saber que o `sh` atualmente trabalha como uma interface (sendo um _padrão para comandos_), e não como um binário específico. Por isso, ao declarar `/bin/sh/` para a execução, cada sistema definirá e direcionará os comandos para serem executados pelo seu interpretador de shell padrão:
| Sistema         | `/bin/sh` aponta para |
| --------------- | --------------------- |
| Debian / Ubuntu | `dash`                |
| Alpine Linux    | `ash`                 |
| RHEL / CentOS   | `bash` (modo POSIX)   |
| macOS           | `bash`                |
| Embedded        | BusyBox `sh`          |

Este conhecimento evita muitos problemas de compatibilidade encarados diariamente, pois por conta deste detalhe, desenvolvedores desavidados são pegos no erro conceitual:
> "Se roda no Linux, é `sh`.
Realidade:
- O ambiente de desenvolvimento em Linux usa `bash`
- O container em produção usa `dash`
- O embedded usa `ash`
- **Resultado**: script quebra

**Utilizar o padrão POSIX é o único árbitro confiável.**
