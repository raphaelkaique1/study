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

## Script Programming
### Variáveis
#### Variáveis Locais
São pares de **chave=valor** em um endereço de memória acessível através de um nome que lhe é atribuído, com a finalidade de armazenar algum dado. Seu valor pode ser atribuído diretamente (de forma literal) ou após o resultado de alguma ação. Para que o shell entenda que sua intenção é resgatar o conteúdo da variável declarada _e não o nome da variável em si_, é necessário utilizar o **`$`** antes do nome da variável.  
Um ponto importante de atenção: o nome da variável deve ser único, não sendo permitido utilizar nome de comandos nativos ou o mesmo que de variáveis de ambiente (não é possível sobrescrevê-las). 
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

Elas existem para configurar o ambiente de execução de processos, sendo herdadas pelos processos filhos através do processo pai.
```sh
dev@localhost:~$ NICKNAME=raphaelkaique1
dev@localhost:~$ echo $NICKNAME
raphaelkaique1 # variável local - pode ser usada somente no shell atual
dev@localhost:~$ export NICKNAME=raphaelkaique1 # variável de ambiente - pode ser usada em processos filhos
```

#### Variáveis de Ambiente
Enquanto a variável local pode ser acessada apenas dentro do shell em que foi declarada, a variável de ambiente é exportada e passada a processos filhoes, para que a utilizem e a modifiquem quando necessário. São usadas pelo sistema operacional e também pelos programas para definir comportamentos, configurações e caminhos padrão. 
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
LS_COLORS=rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:
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

Assim como podem ser criadas no processo atual, variáveis também podem ser removidas, esta prática libera espaço não utilizado na memória.
```sh
unset VAR
```

No Linux, também é possível definir e criar variáveis apenas durante a execução de um único comando, as chamadas **variáveis temporárias para um comando** são variáveis definidas para a execução que se deseja e destruídas após a finalização da execução, sem afetar o ambiente do shell atual.
```sh
VAR1=value1 VAR2=value2 command
```

Por exemplo:
```bash
LANG=C ls
```
O comando `ls` será executado com `LANG=C`, mas o valor **não permanece** depois.

Além de serem usadas diretamente na linha de comandos, também é possível definir uma ou mais variáveis para um script:
```sh
dev@localhost:~/Dev$ cat ./script.sh 
echo $DEBUG

dev@localhost:~/Dev$ DEBUG=true ./script.sh 
true

dev@localhost:~/Dev$ echo '
> echo $DEBUG
> echo $DB_HOST' > ./script.sh

dev@localhost:~/Dev$ cat ./script.sh 
echo $DEBUG
echo $DB_HOST

dev@localhost:~/Dev$ DEBUG=true ./script.sh 
true
# saída vazia: DB_HOST = vazio

dev@localhost:~/Dev$ DEBUG=true DB_HOST=localhost ./script.sh 
true
localhost
```

Por padrão, o `sudo` remove variáveis de ambiente. Para evitar a execução de um comando e a variável seja perdida, a forma correta é "acessar" o sudo antes de declarar o comando a ser executado:

```sh
sudo VAR=test command
```

Diferença entre variável temporária e exportada:
| Tipo               | Escopo           | Persistência |
| ------------------ | ---------------- | ------------ |
| Temporária         | Apenas o comando | Não          |
| `export VAR=value` | Shell + filhos   | Sim          |
