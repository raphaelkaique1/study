# ShellScript
O **Shell SH** (ou simplesmente `sh`) é o shell padrão histórico dos sistemas Unix, sendo ele interpretado por qualquer Kernel que utilize shell e pretenda atender o padrão POSIX. O Kernel é o núcleo do sistema operacional, sendo o único software que roda em modo privilegiado (ring 0), ele é o responsável pelo gerenciamento da CPU (processos, threads e scheduler), da memória (virtual e paging), de dispositivos (drivers), sistema de arquivos (files system), rede (networks, endereços e direcionamentos) e segurança (antivírus e firewall). Nenhum programa acessa hardware diretamente, tudo passa antes pelo kernel, implícita ou explicitamente. O Kernel não entende comandos e nem shell, na verdade compreende apenas chamadas de sistema (syscalls). O shell é um programa de usuário (ring 3), sendo ele quem lê texto, interpreta comandos, decide e solicita ao Kernel o que executar.
```
  User
   ↓
 Shell
   ↓  syscalls
 Kernel
   ↓
Hardware
```

Enquanto o Kernel não compreende o que é `ls` por exemplo, o Shell não executa nada sozinho. Ou seja, quando o usuário digita `ls -l` no terminal o que realmente acontece é:
1. `sh` recebe a linha
2. faz [`parsing`]() e [`expansão`]()
3. cria um processo filho `fork`
4. substitui o processo por `/bin/ls` usando `execve`
5. o Kernel então carrega o binário
6. e o binário carregado executa as instruções no Kernel
7. `ls` chama `stat()`, `getdents()` e `write()`
8. o Kernel acessa o disco e realiza as execuções dos binários
9. e após a finalização o resultado é printado no terminal

> O kernel nunca viu "ls" como um comando, apenas como um binário

Pode-se dizer que o `sh` é um contrato padronizado para interpretadores de comandos, sendo a linguagem de script que realiza a ponte direta entre o usuário e o kernel do sistema operacional.  
Nativamente, o `sh` permite executar comandos do sistema (incluindo comandos encadeados) e controlar fluxos lógicos, sendo amplamente usado para a automatização de tarefas via script.  
Sua função real é traduzir ao sistema operacional o que o usuário espera que seja feito através de comandos amigáveis a humanos, então, quando o comando `ls -l /var/log` é executado no terminal, o que realmente acontece no fluxo é:
1. `sh` interpreta o comando
2. resolve variáveis, expansões e redirecionamentos
3. invoca chamadas de sistema como `fork` e `exec` por exemplo
4. kernel executa o binário

> O `sh` não executa nada por si só, ele apenas _orquestra_ a ordem de execução dos comandos no kernel.

Outro bom exemplo seria a execução do comando:
```sh
ls | grep foo > out.txt
```

O shell:
- cria o pipe
- redireciona
- executa processos

Enquanto cada binário correspondente é executado:
- `ls`
- `grep`
- `write`

O Kernel apenas fornece primitivas. Entretanto, apesar de parecer banal, shell é opcional em sistemas, mas o kernel não. É possível utilizar qualquer serviço de shell (bash, zsh ou fish por exemplo) e executar binários sem um script shell. Quando não existe um shell, o Kernel sobe normalmente, executa o PID 1 (systemd), roda serviços e aplicações, sem um Shell apenas não existe interação humana (mas o sistema funciona normalmente), embedded e containers fazem isso o tempo todo, mas é impossível rodar Linux sem kernel, pois sem ele não existe comunicação e manipulação de hardware.

> Em poucas palavras, pode-se resumir este conceito em: **Shell fala, Kernel age.**

## POSIX Shell
Visto que o Shell SH Script é a _"linguagem"_ padrão para execução de comandos de SOs baseados em Unix através do terminal de comandos, os interpretadores de ShellScript precisam ser **SH compatíveis**, e para serem considerados compatíveis com script `sh` eles devem respeitar o padrão **POSIX Shell** e necessariamente atender as características mínimas que se esperam:
- variáveis simples `VAR=value`
- pipes `|`
- redirecionamentos `<`, `>`, `>>`
- controle de fluxo `if`, `case`, `for`, `while`, `until`
- funções básicas `function() {}`
- exit codes `$?`

O POSIX (Portable Operating System Interface) foi criado para resolver o problema de compatibilidade, pois com o sucesso do Unix nos anos 80, cada fornecedor desenvolveu seu próprio shell, o que gerava problemas em portabilidade e execução de programas, pois apesar de cada um afirmar que o seu interpretador era compatível com `sh` script, não havia de fato um padrão que descrevesse o que era o ShellScript, até o surgimento do POSIX. Ele propõe uma sintaxe e define comportamentos que se esperam que um interpretador shell entenda e execute.  
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

Entretanto, apesar de ser comumente visto em scripts executados em Linux, os comandos listados a seguir não são explicitamente garantidos pelo POSIX, sendo em suma extensões de shell específico (geralmente `bash`):
- [`Arrays=({0..9})`](https://quickref.me/bash#bash-arrays)
- [`[[ ... ]]`]()
- [`(( ... ))`]()
- [`source`]()
- [RegExp avançado]()
- [Process Substitution `<()`]()
- [`declare`](), [`local`]()

Por isso, é importante saber que o `sh` atualmente trabalha como uma interface (sendo um _padrão para comandos_), e não como um binário específico. Ao declarar `/bin/sh/` para a execução, cada sistema definirá e direcionará os comandos para serem executados pelo seu interpretador padrão de shell:
| Sistema         | `/bin/sh` aponta para |
| --------------- | --------------------- |
| Debian / Ubuntu | `dash`                |
| Alpine Linux    | `ash`                 |
| RHEL / CentOS   | `bash` (modo POSIX)   |
| macOS           | `bash`                |
| Embedded        | BusyBox `sh`          |

Este conhecimento evita muitos problemas de compatibilidade encarados diariamente, pois por conta deste detalhe, desenvolvedores desavidados são pegos no erro conceitual:
> "Se roda no Linux, é `sh`."  

Mas na realidade:
- O ambiente de desenvolvimento em Linux usa `bash`
- O container em produção usa `dash`
- O embedded usa `ash`
- **Resultado**: script quebra

**Utilizar o padrão POSIX é o único árbitro confiável.**

## Script Programming
Um shell script é uma sequência de comandos e construções da linguagem do shell, executadas em userland, que orquestram programas via kernel.

### Variáveis
São pares de **`chave=valor`** alocados em um endereço na memória volátil acessíveis através do nome que lhe é atribuído (chave) com a finalidade de armazenar algum dado que pode ser alterado a qualquer momento. Este dado pode ser tanto um valor atribuído diretamente logo na declaração da variável iniciando-a assim com um valor, quanto o resultado de alguma execução que só lhe será atribuído após a finalização da operação.  
Para que o shell entenda que a intenção é resgatar o conteúdo da variável declarada _e não o nome da variável em si (como uma string)_, é necessário utilizar o símbolo **`$`** antes do nome da variável (**`root@host# echo $chave # output: valor`**).  
Um ponto importante de atenção deve-se para com o nome da variável, que precisa ser único, sendo proibido utilizar nomes de comandos nativos ou de variáveis de ambiente. 

#### Remover
Assim como são criadas no processo atual, **variáveis podem ser removidas**, essa é uma boa prática pois libera espaço não utilizado na memória. A sintaxe deste comando exige o verdadeiro nome da variável seja informado para que funcione, exatamente como foi declarada `VAR=valor` (não como a sua referência `$VAR`): `unset VAR`.
```sh
dev@localhost:~$ VAR='var_1'
dev@localhost:~$ echo $VAR
var_1
dev@localhost:~$ unset $VAR
dev@localhost:~$ echo $VAR
var_1
dev@localhost:~$ unset VAR
dev@localhost:~$ echo $VAR
# saída vazia: VAR = não reconhecida
```

#### TIPOS
Pelo fato de Shell Script não ter o objetivo de ser uma linguagem de dados mas sim ser uma linguagem de orquestração, ele não é _"fracamente tipado"_, na verdade Shell não é tipado no nível da linguagem, mas sim tipado no nível do processo, ou seja, utiliza tipagem baseada em contexto. Por exemplo, o uso de uma flag de condicional de inteiros `[ "$x" -eq 10 ]` força uma interpretação numérica, já `[ "$x" = 10 ]` é comparação textual direta — mesma variável, 2 comportamentos. Praticamente, o shell não armazena tipos, apenas conteúdo textual.  
No POSIX shell, toda variável é essencialmente tipada como uma sequência de bytes (string), não existem inteiros reais, booleanos reais, arrays, estruturas, objetos e nenhum outro tipo composto nativo. No exemplo a seguir, todos os valores são considerados apenas strings:
```sh
x=10
y=abc
z=10abc
```

Toda a aritmética envolvendo números funciona através de um mecanismo de expansão, não por tipo. Ao se realizar operações matemáticas `echo $((10 + 5))` é ativado o arithmetic expansion, fazendo com que internamente o shell interprete o conteúdo como um número, para assim convertê-lo em um valor e possibilitar a execução do cálculo. Por conta de sua natureza, mesmo o resultado de uma soma terá como valor atribuído à variável sendo uma string.  
Este conceito aplica-se também à booleanos pois no shell usa-se `0 = sucesso && !0 = erro`, entretanto isso não é realmente um valor de estado (true/false), mas sim status de saída de processo. Por exemplo em `if command; then echo 'ok'; fi;`, o `if` não testa valor lógico, ele testa e compara o exit code do comando.

Por isso, em se falando de estruturas de dados, formalmente no POSIX sh existem apenas:
- strings
- parâmetros posicionais (`"$1"`, `"$2"`...)
- lista de argumentos (`"$@"`)
- variáveis de ambiente

Não existe de fato uma estrutura interna, apenas _simulação de estruturas_ onde o shell usa primariamente texto para montar e manipular os dados.
```sh
list="a b c d"
for item in $list; do
    echo "$item"
done
```

> Nem mesmo a estrutura de `key=value` é real, apenas "mapa" simulado. O `key_value="user=raphael"` necessida de parsing manual.
> Não se usa espaço fora de aspas na criação deste tipo pois se trata de uma variável especial no shell que define quais caracteres delimitam campos quando ocorre IFS.



##### Estáticas
São aquelas que possuem um valor atribuído na sua declaração, ou seja, são inicializadas com algum dado previamente definido pelo usuário. Por serem _variáveis_, elas podem ter seu valor alterado, reatribuído ou serem removidas.
```sh
dev@localhost:~$ NICKNAME=raphaelkaique
dev@localhost:~$ echo NICKNAME
NICKNAME
dev@localhost:~$ echo $NICKNAME
raphaelkaique
dev@localhost:~$ NICKNAME=raphaelkaique1
dev@localhost:~$ echo $NICKNAME
raphaelkaique1
```

##### Dinâmicas
As variáveis dinâmicas são aquelas que não são inicializadas com um valor específico, mas sim com uma função, e terão como valor atribuído o resultado da execução deste ou de outro processo (Command Substitution). São declaradas com o comando a ser executado, ou mesmo uma cadeia sequenciada de comandos. O shell executa o comando, captura sua saída padrão (stdout) e armazena o resultado na variável.  
Sua sintaxe exige que o(s) comando(s) seja(m) declarado(s) entre `$(...)` na atribuição da variável, para que o shell entenda que são comandos e não strings.
```sh
dev@localhost:~$ THIS_PATH=pwd
dev@localhost:~$ echo $THIS_PATH
pwd
dev@localhost:~$ THIS_PATH=$(pwd)
dev@localhost:~$ echo $THIS_PATH
/home/dev
```

Na realidade, o shell realiza a seguinte sequência de operações:
1. executa o comando contido em `$(...)`
2. captura sua saída
3. atribui essa saída à variável

É possível atribuir quaisquer comandos a uma variável dinâmica.
```sh
dev@localhost:~$ FILES_COUNT=$(ls | wc -l) && echo $FILES_COUNT              
10
dev@localhost:~$ DATA_ATUAL=$(date +"%d/%m/%Y") && HOST=$(hostname); echo "
> Data: $DATA_ATUAL
> Host: $HOST"
Data: 20/01/2026
Host: localhost
```

> No Bourne Shell original, usava-se a sistaxe `backtricks` para capturar a saída de um command substitution no shell, porém, apesar de ainda ser suportada (para compatibilidade histórica) tornou-se legada por ser difíci de aninhar, nada legível e gerar problemas com escaping. Após o POSIX, a forma moderna e correta passou a ser o `$()` pois além de ser formalmente definida no padrão POSIX, é mais legível, o que permite aninhamento natural e mais previsível.

#### Variáveis Temporárias e Multiplas Variáveis
No Linux, também é possível definir e criar variáveis apenas durante a execução de um único comando, as chamadas **variáveis temporárias**. São variáveis definidas para a execução que se deseja e destruídas após a finalização da execução, sem afetar o ambiente do shell atual.
```sh
VAR1=value1 VAR2=value2 command
```

Por exemplo:
```bash
LANG=C ls
```

O comando `ls` será executado com `LANG=C`, mas o valor **não permanece** depois.
```sh
dev@localhost:~/Dev$ ls
'Ambiente de Impressão' 'Configurações Locais'
dev@localhost:~/Dev$ LANG=C ls
'Ambiente de Impress'$'\303\243''o' 'Configura'$'\303\247\303\265''es Locais'
dev@localhost:~/Dev$ ls
'Ambiente de Impressão' 'Configurações Locais'
```

Além de serem usadas diretamente na linha de comandos, também é possível definir uma ou mais variáveis para um script:
```sh
dev@localhost:~/Dev$ cat ./script.sh 
echo $DEBUG
dev@localhost:~/Dev$ DEBUG=true ./script.sh 
true
dev@localhost:~/Dev$ echo '
> echo $DEBUG
> echo $DB_HOST' > ./script.sh
dev@localhost:~/Dev$ DEBUG=true ./script.sh 
true
# saída vazia: DB_HOST = vazio
dev@localhost:~/Dev$ DEBUG=true DB_HOST=localhost ./script.sh 
true
localhost
```

Por padrão, o `sudo` remove variáveis de ambiente. Para evitar a execução de um comando e a variável seja perdida, a forma correta é "acessar" o super usuário antes de declarar o comando a ser executado:
```sh
sudo VAR=test command
```

Diferença entre variável temporária e exportada:
| Tipo               | Escopo           | Persistência |
| ------------------ | ---------------- | ------------ |
| Temporária         | Apenas o comando | Não          |
| `export VAR=value` | Shell + filhos   | Sim          |

#### Variáveis Locais
São variáveis acessíveis apenas pelo ambiente do shell em execução, _podendo ser passadas para os **subprocessos do shell atual**_.  
Elas existem para configurar o ambiente de execução de processos, sendo herdadas pelos processos filhos através do processo pai.
```sh
dev@localhost:~$ NICKNAME=raphaelkaique1
dev@localhost:~$ echo $NICKNAME
raphaelkaique1 # variável local - pode ser usada somente no shell atual
dev@localhost:~$ export NICKNAME=raphaelkaique1 # variável deste ambiente - pode ser usada em processos filhos
```

As variáveis declaradas são visíveis apenas dentro da árvore de processos iniciada por um determinado processo, normalmente um shell. Cada processo tem seu próprio ambiente, e quando um processo cria outro processo (`fork`/`exec`), este novo processo é conhecido como _subprocesso_, ou _processo filho_, que **herda uma cópia do ambiente do pai**, e essa herança é unidirecional, ou seja, apenas do pai para o filho (nunca do filho para o pai).  
Enquanto a variável declarada localmente pode ser acessada somente dentro do shell em que foi criada, a variável local é exportada para o "ambiente" do processo e assim passada a processos filhos. Estes podem ler e utilizar a informação do valor das variáveis de ambiente herdadas, mas qualquer modificação feita por eles NÃO afeta o valor da variável no processo pai, em outras palavaras, processos filhos podem utilizar essas variáveis, mas alterações feitas por eles não são refletidas no processo pai.  
Essas variáveis são usadas pelo sistema operacional e também pelos programas para definir comportamentos, configurações e caminhos padrão. 
```sh
dev@localhost:~$ env # exibe as variáveis do ambiente atual
SHELL=/bin/bash
SESSION_MANAGER=local/localhost:@/tmp/.ICE-unix/2400,unix/localhost:/tmp/.ICE-unix/2400
QT_ACCESSIBILITY=1
COLORTERM=truecolor
XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg
XDG_MENU_PREFIX=gnome-
GNOME_DESKTOP_SESSION_ID=this-is-deprecated
GNOME_KEYRING_CONTROL=/run/user/1000/keyring
GNOME_SHELL_SESSION_MODE=ubuntu
SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
MEMORY_PRESSURE_WRITE=c29tZSAyMDAwMDAgMjAwMDAwMAA=
XMODIFIERS=@im=ibus
DESKTOP_SESSION=ubuntu
GTK_MODULES=gail:atk-bridge
PWD=/home/dev
LOGNAME=dev
XDG_SESSION_DESKTOP=ubuntu
XDG_SESSION_TYPE=wayland
SYSTEMD_EXEC_PID=2592
XAUTHORITY=/run/user/1000/.mutter-Xwaylandauth.9STAJ3
HOME=/home/dev
USERNAME=dev
IM_CONFIG_PHASE=1
LANG=en_US.UTF-8
XDG_CURRENT_DESKTOP=ubuntu:GNOME
MEMORY_PRESSURE_WATCH=/sys/fs/cgroup/user.slice/user-1000.slice/user@1000.service/session.slice/org.gnome.SettingsDaemon.MediaKeys.service/memory.pressure
VTE_VERSION=7600
WAYLAND_DISPLAY=wayland-0
GNOME_TERMINAL_SCREEN=/org/gnome/Terminal/screen/8ca349a9_1319_4849_a762_1bdb6b2e2141
GNOME_SETUP_DISPLAY=:1
LESSCLOSE=/usr/bin/lesspipe %s %s
XDG_SESSION_CLASS=user
TERM=xterm-256color
LESSOPEN=| /usr/bin/lesspipe %s
USER=dev
GNOME_TERMINAL_SERVICE=:1.422
DISPLAY=:0
SHLVL=1
GSM_SKIP_SSH_AGENT_WORKAROUND=true
QT_IM_MODULE=ibus
XDG_RUNTIME_DIR=/run/user/1000
DEBUGINFOD_URLS=https://debuginfod.ubuntu.com 
XDG_DATA_DIRS=/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin
GDMSESSION=ubuntu
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
_=/usr/bin/env
```

#### Variáveis Globais
O método `export VAR='local'` só torna a variável disponível para os processos filhos do shell atual, ou seja, não é possível usá-la em outros shells já abertos nem em novos terminais independentes (pois ela não existe para nenhum deles).
* Terminal A: `export VAR='local'` - disponível para subprocessos
* Terminal B (já aberto ou aberto depois): `echo $VAR` - não existe neste processo

Isso acontece porque cada terminal (shell) é um processo independente no sistema, então cada variável declarada em um shell pode ser herdada apenas no momento da criação do processo, fluindo do processo pai para o processo filho, por isso não é possível compartilhá-las entre processos irmãos e nem passadas do filho para o pai. Então:
```
Terminal A (bash)
 ├─ export VAR='local'
 └─ filho → script.sh   (VAR disponível)

Terminal B (bash)
 └─ processo separado   (VAR não existe)
```

Por isso quando é preciso disponibilizar uma variável em todo o ambiente, é necessário torná-la persistente, colocando-a em arquivos de inicialização de sessão de login (TTY).
- user `~/.bashrc` (TTY local):
```sh
dev@localhost:~$ echo 'export VAR=9' >> ~/.bashrc
dev@localhost:~$ tail -n 1 ~/.bashrc 
export VAR=9
dev@localhost:~$ source ~/.bashrc 
dev@localhost:~$ echo $VAR
9
dev@localhost:~$ VAR=1
dev@localhost:~$ echo $VAR
1
dev@localhost:~$ tail -n 1 ~/.bashrc
export VAR=9
```
- root `/etc/environment` (TTY global):
```bash
dev@localhost:~$ sudo su
root@localhost:~$# cat /etc/environment
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
root@localhost:~$# echo 'VAR=9' >> /etc/environment
root@localhost:~$# cat /etc/environment
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
VAR=9
root@localhost:~$# echo $VAR

root@localhost:~$# source /etc/environment
root@localhost:~$# echo $VAR
9
root@localhost:~$# VAR=0
root@localhost:~$# echo $VAR
0
root@localhost:~$# cat /etc/environment
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
VAR=9
```
