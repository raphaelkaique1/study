# Dispositivos e Sistemas Operacionais

## Modelo de Von Neumann
**Os componentes do modelo de Von Neumann são:**
- **Unidade de Controle - UC**: busca cada instrução dos programas na memória e executa sobre os dados de entrada;
- **Unidade Lógica e Aritmética - ULA**: parte da unidade central de processamento (CPU);
- **Memória (permanente e/ou volátil)**: armazena dados e programas;
- **Dispositivos de Entrada e Saída**: interagem com o modelo, mas não fazem parte dos componentes principais;
  - **Entrada**: Permite a comunicação do usuário com o computador. São dispositivos que enviam dados ao computador para processamento. Exemplos: teclado, mouse, scanner...
    - *O dispositivo de entrada padrão (stdin) em sistemas GNU/Linux é o teclado.*
  - **Saída**: Permite a comunicação do computador com o usuário. São dispositivos que permitem o usuário visualizar o resultado do processamento enviado ao computador. Exemplos: monitor, som, impressora...
    - *O dispositivo de saída padrão (stdout) em sistemas GNU/Linux é o monitor.*

## Sistema Operacional

Um sistema operacional visa abstrair o acesso e gerenciar os recursos de hardware, provendo aos aplicativos um ambiente de execução no qual o acesso aos recursos se faz através de interfaces simples, independentes das características e detalhes de baixo nível e no qual os conflitos no uso do hardware são minimizados. O uso do processador deve ser distribuído entre os programas presentes no sistema, de forma que cada um deles possa executar na velocidade adequada para cumprir suas funções sem prejudicar os outros. Também a memória RAM deve ser gerenciada e distribuída de forma justa entre as aplicações, gerenciar as impressões em computadores numa rede, por exemplo, é uma tarefa necessária que o SO faz. Os SOs podem ser divididos em:
- **Monoprogramáveis/Monotarefa**: executa somente único programa ou tarefa por vez. Quando um programa está em execução, o sistema operacional não pode executar outro programa até que o primeiro termine. Este tipo de sistema foi comum nas primeiras gerações de computadores e é adequado para ambientes onde a complexidade das tarefas e a capacidade de processamento eram limitadas. Exemplos: Windows 95/98 e Sistemas Operacionais de Mainframe Antigos.
- **Multiprogramáveis/Multitarefa**: são projetados para executar vários programas ou tarefas ao mesmo tempo. Eles permitem que o processador alterne entre diferentes tarefas de forma eficiente, proporcionando a sensação de que múltiplas tarefas estão sendo executadas simultaneamente. Existem duas abordagens principais para multitarefa: multitarefa cooperativa e multitarefa preemptiva; Na multitarefa cooperativa, o sistema operacional depende da boa vontade dos processos para liberar o controle da CPU de forma adequada. Em outras palavras, cada processo em execução deve voluntariamente ceder o controle de volta ao sistema operacional para permitir que outros processos sejam executados. Na multitarefa preemptiva, o sistema operacional tem controle total sobre a alocação de tempo da CPU. O sistema pode interromper um processo em execução para dar tempo a outros processos, mesmo que o processo atual não esteja pronto para liberar o controle. Exemplos: Unix, Linux, Windows NT/2000/2003.
- **Distribuído**: voltados para servidores, os recursos de cada máquina estão disponíveis globalmente, de forma transparente aos usuários. Ao lançar uma aplicação, o usuário interage com sua janela, mas não sabe onde ela está executando ou armazenando seus arquivos, o SO é quem decide, sempre de forma transparente. Exemplos: Google Chrome OS, Microsoft Azure, Apache Hadoop, Google Android, Freenet, Xerox PARC's Distributed Computing Environment (DCE), Plan 9, Amoeba e Beowulf Cluster.
- **Multiusuário**: suporta a identificação do proprietário de cada recurso dentro do sistema (arquivos, processos, áreas de memória, conexões de rede, etc) e impõe regras de controle de acesso para impedir o uso desses recursos por usuários não autorizados. Essa funcionalidade é fundamental para a segurança dos sistemas operacionais de redes e distribuídos. Grande parte dos sistemas atuais são multiusuários. Exemplos: Linux, Windows e etc.
- **Rede**: suporte à operações em rede, ou seja, a capacidade de oferecer às aplicações locais recursos que estejam localizados em outros computadores da rede, como arquivos e impressoras; Ele também deve disponibilizar seus recursos locais aos demais computadores, de forma controlada. A maioria dos SOs atuais oferece esse tipo de funcionalidade. Exemplos: Microsoft Windows Server, Linux Server, Novell NetWare e BSD (Berkeley Software Distribution).
- **Embutido/Embarcado/Embedded/IoT**: construído para operar sobre um hardware com poucos recursos de processamento, armazenamento e energia. Projetados para realizar tarefas específicas e não podem ser facilmente adaptados para outras funções. Otimizado para recursos limitados e para executar tarefas de maneira eficiente. Normalmente, são incorporados diretamente ao hardware em que operam. Muitos sistemas embarcados operam em tempo real, respondendo a eventos em um prazo muito curto. Aplicações típicas desse tipo de sistema aparecem em máquinas industriais e automotivas, equipamentos eletrônicos de uso doméstico entre outros. IoT refere-se à interconexão de dispositivos através da internet, permitindo que eles coletem, enviem e recebam dados. Alguns exemplos são: Sensores Inteligentes: Como sensores de temperatura em um sistema de aquecimento, ventilação e ar condicionado (HVAC) que podem ser monitorados e ajustados remotamente, Wearables: Dispositivos como relógios inteligentes que monitoram a saúde e atividades físicas e podem enviar dados para uma aplicação na nuvem, Cidades Inteligentes: Sistemas de iluminação pública que ajustam a intensidade da luz com base no tráfego ou condições meteorológicas. Exemplos: Arduíno, RaspBerry Pi, Android e etc.

 O Linux possui várias características que o diferencia dos outros SOs e que o aproximam do Unix, sendo um dos motivos da sua escolha em várias aplicações nas quais são necessárias estabilidade e segurança.
<pre>
            SISTEMA OPERACIONAL
 ┌─────────────────────────────────────┐
 │  ┌───────────────────────────────┐  │
 │  │ ┌───────────────────────────┐ │  │
 │  │ │ ┌───────────────────────┐ │ │  │
 │  │ │ │         HARDWARE      │ │ │  │
 │  │ │ └───────────────────────┘ │ │  │
 │  │ │           KERNEL          │ │  │
 │  │ └───────────────────────────┘ │  │
 │  │             SHELL             │  │
 │  └───────────────────────────────┘  │
 │              PROGRAMAS              │
 └─────────────────────────────────────┘
                 USUÁRIO
</pre>

O Sistema Operacional (S.O.) é um software conjunto de programas com a função de administrar os recursos de um sistema (hardware x software), o SO é responsável por alocar recursos de hardware e escalonar tarefas, controlar os dispositivos de entrada e saída (I/O), tais como vídeo, teclado, mouse, e ainda controlar os recursos internos que compõe o computador, tais como processador, memória, arquivos, etc.<br/>
Em termos de hardware, um SO é a porção de software que roda em modo núcleo (kernel), e tem a importante função de proteger o hardware da ação direta do usuário, isto é, estabelecer critéros de uso dos recursos, ordem de acesso aos mesmos, impedindo a violação de espaço de memória de processos concorrentes e tentativas de acesso simultâneo a um mesmo recurso, ou seja, gerência e proteção dos dispositivos.
- **Hardware**: São componentes referentes a parte física do computador (impressora, HD/SSD, RAM, GPU, CPU, NIC, etc).
- **Software**: São os programas instalados no computador (SO, editor de texto, banco de dados, GUI, CLI, scripts, etc). Um programa é constituído de uma sequência predeterminada de instruções, que deve ser seguida para alcançar o objetivo computacional. O programa e seus dados correspondentes estão armazenados na memória da máquina: Instruções em um computador são executadas em uma sequência determinada por suas posições de memória, na maioria dos computadores, instruções e dados são distribuídos em posições de memória. O conjunto de instruções (software) deve ser interpretado para a realização do processamento, isto é, a informação codificada correspondente às ações e aos operandos precisa ser entendida e então processada.
- **Linux**: SO Open Source baseado em Unix, criado por Linus Torvalds (1991).
- **Distros**: Distribuições de Linux criadas a partir do seu código fonte (kernel).
- **Drivers**: Softwares controladores que permitem a combinação do hardware, placa mãe e outros dispositivos com SO. É o driver que converte as informações do hardware para o SO. É ele que cuida quando ao se abrir um requerimento, o processo seja executado, sendo permitida a interação do software com o dispositivo.
- **Kernel**: É o núcleo do SO, a parte mais próxima do nível físico (hardware), estabelece a camada de abstração de baixo nível (linguagem de máquina) com o hardware, chamadas/comandos ao sistema, acesso aos dispositivos de entrada/saída e de gerência dos processos e recursos da máquina.
- **Shell**: Shell é o nome genérico de uma classe de programas que funcionam como interpretador de comandos e linguagem de programação script (interpretada) no Unix. Os Shell mais populares são: bash, csh, tsh e zsh. O Shell é a interface entre o usuário e o kernel. O usuário pode escolher qual shells utilizar. O Shell padrão do Linux é o bash.
- **Script**: Script é um arquivo que contem comandos de Shell, que, numa situação normal, poderiam ser executados em modo prompt (usando o terminal). Esses comandos são executados sequencialmente, dependendo de situações, dependendo de condições estruturais de laço, como `if ... then` (se ... então) e `do ... while` (faça ... enquanto). Um script também pode usar variáveis. A entrada pode ser recebida por meio do prompt de comando ou de outros arquivos.
<pre>
              ┌───────────┐
              | APLICAÇÃO |
              └─┬───────┬─┘
          ┌─────┘       └─────┐
┌─────────┴─┐               ┌─┴───────┐
| APLICAÇÃO |               | SISTEMA |
└───────────┘               └─┬─────┬─┘
                         ┌────┘     └─────┐
              ┌──────────┴─┐            ┌─┴───────────┐
              | UTILITÁRIO |            |   SISTEMA   |
              └────────────┘            | OPERACIONAL |
                                        └─┬─────────┬─┘
                                    ┌─────┴─┐     ┌─┴──────┐
                                    | CASCA |     | NÚCLEO |
                                    └───────┘     └────────┘
</pre>

O sistema GNU/Linux possui a seguinte estrutura básica de diretórios:
<pre>
                                                        ┌───┐
                                                        │ / │
                                                        └─┬─┘
             ┌────────┬────────┬────────┬─────────┬───────┴────────┬────────┬─────────┬────────┬────────┐
         ┌───┴──┐ ┌───┴──┐ ┌───┴──┐ ┌───┴───┐ ┌───┴──┐         ┌───┴──┐ ┌───┴───┐ ┌───┴──┐ ┌───┴──┐ ┌───┴──┐
     ┌───┤ /bin │ │ /usr │ │ /etc │ │ /home │ │ /lib ├───┐     │ /mnt │ │ /sbin │ │ /tmp │ │ /dev │ │ /dev │
     v   └──────┘ └───┬──┘ └──────┘ └───┬───┘ └──────┘   v     └──────┘ └───────┘ └──────┘ └──────┘ └───┬──┘
 /usr/bin        ┌────┴───┐         ┌───┴──┐          /usr/lib                                     ┌────┴─────┐
                 │/usr/lib│         │ Name │                                                       │ /var/adm │
                 └────┬───┘         └───┬──┘                                                       └────┬─────┘
                ┌─────┴────┐      ┌─────┴─────┐                                                    ┌────┴─────┐
                │/usr/local│      │ file.type │                                                    │ /var/tmp │
                └─────┬────┘      └───────────┘                                                    └────┬─────┘
              ┌───────┴──────┐                                                                    ┌─────┴──────┐
              │/usr/local/bin│                                                                    │ /var/spool │
              └───────┬──────┘                                                                    └─────┬──────┘
              ┌───────┴──────┐                                                                 ┌────────┴────────┐
              │/usr/local/lib│                                                                 │ /var/spool/cron │
              └──────────────┘                                                                 └────────┬────────┘
                                                                                               ┌────────┴────────┐
                                                                                               │ /var/spool/lock │
                                                                                               └────────┬────────┘
                                                                                               ┌────────┴───────┐
                                                                                               │ /var/spool/lpd │
                                                                                               └────────┬───────┘
                                                                                               ┌────────┴────────┐
                                                                                               │ /var/spool/mail │
                                                                                               └─────────────────┘
</pre>

**/** - Diretório principal (raiz)<br/>
**/home** - Diretório contendo os arquivos do usuário<br/>
**/bin** - Contém arquivos de programas (binários) do sistema que são usados com frequência pelos usuários<br/>
**/root** - Diretório do usuário root<br/>
**/sbin** - Diretório de programas usados pelo superuser (root) para administração e controle do funcionamento do sistema<br/>
**/boot** - Contém arquivos necessários para a inicialização do sistema<br/>
**/cdrom** - Ponto de montagem da unidade CD-ROM<br/>
**/floopy** - Ponto de montagem de unidade de disquetes<br/>
**/mnt** - Ponto de montagem temporário<br/>
**/dev** - Contém arquivos usados para acessar dispositivos (periféricos) existentes no computador<br/>
**/etc** - Contém arquivos de configuração do computador local<br/>
**/tmp** - Diretório para armazenamento de arquivos temporários criados por programas<br/>
**/usr** - Contém maior parte de seus programas, normalmente acessível somente em modo leitura<br/>
**/var** - Contém maior parte dos arquivos que são gravados com frequência pelos programas do sistema, e-mails, spool de impressora, cache, etc<br/>
**/lib** - Bibliotecas compartilhadas pelos programas do sistema e módulos do kernel<br/>
**/lost+found** - Local para a gravação de arquivos/diretórios recuperados pelo utilitário fsck.ext2, cada partição possui seu próprio diretório lost+found<br/>
**/proc** - Sistema de arquivos do kernel, este diretório não existe em seu HD/SSD, ele é colocado lá pelo kernel e usado por diversos programas que fazem sua leitura, verificam configurações do sistema ou modificar o funcionamento de dispositivos do sistema através de alterações em seus arquivos

### Sistema de arquivos
- **ext2**: Para partições GNU/Linux usando o Extended File System versão 2 (a mais comum)
- **ext3**: Para partições GNU/Linux usando o Extended File System versão 3, com suporte a journalig
- **reiserfs**: Para partições resiserfs, com suporte a journaling
- **vfat**: Para partições Windows 95 que utilizam nomes extensos de arquivos e diretórios
- **msdos**: Para partições DOS normais
- **iso9660**: Padrão para montar unidades de CD-ROM

**journaling: Serviço que coleta e armazena logs do sistema e mensagens de eventos, ele é parte do systemd, que é um sistema de gerenciamento de serviços e processos para Linux*

### Dispositivos
 Os nomes de dispositivos no sistema GNU/Linux são acessados através do diretório onde esses dispotivos físicos são tratados como arquivos. Estes arquivos são um tipo especial no sistema de arquivos Linux. Esses dispositivos são: impressoras, CD-ROMs, modems, entradas USB, mouse, HD/SSDs, etc.

**Linux | Windows**<br/>
**/dev/hda1 | C:** - Partição 1 da IDE primária Master<br/>
**/dev/hda2 | D:** - Partição 2 da IDE primária Master<br/>
**/dev/ttyS0 | COM1** - Porta serial 1<br/>
**/dev/ttyS1 | COM2** - Porta serial 2<br/>
**/dev/ttyS2 | COM3** - Porta serial 3<br/>
**/dev/ttyS3 | COM4** - Porta serial 4<br/>
**/dev/fd0 | disquete** - Drive A<br/>
**/dev/lp0 | LPT1** - Porta parelela - impressora<br/>
**/dev/dsp** - Acesso à placa de som pelo canal digital<br/>
**/dev/mixer** - Acesso ao mixer da placa de som

A identificação de discos rígidos no GNU/Linux é feita da seguinte forma:
<pre>
/dev/hda - Primary Master              /dev/hdc - Secundary Master
/dev/hdb - Primary Slave               /dev/hdd - Secundary Slave
         ^                                      ^
         └──────────────────┐      ┌────────────┘
             ┌──────────────┼──────┼──────────────┐
             │ PLACA MÃE  ┌─┴─┐  ┌─┴─┐            │
             │            │   │  │   │            │
             │            │   │  │   │            │
             │ hda <──┬───┤   │  │   ├──┬───> hdc │
             │        v   │   │  │   │  v         │
             │       hdb  │   │  │   │ hdd        │
             │            └───┘  └───┘            │
             │             IDE1   IDE2            │
             │                                    │
     *Representação gráfica da placa mãe e barramentos IDE

/dev/hda1
 │   │ │└ Número que identifica a partição no HD/SSD
 │   │ └ Letra que identifica o HD/SSD (a=primeiro, b=segundo, etc...)
 │   └ Sigla que identifica o tipo do HD/SSD (hd=ide, sd=SCSI)
 └ Diretório onde são armazenados os arquivos usados para acessar dispositivos existentes no sistema
</pre>

### Kernel
 O kernel é o núcleo do sistema operacional. Ele é responsável por gerenciar o hardware do computador e fornecer uma interface entre o hardware e o software do sistema. O kernel é essencial para o funcionamento de qualquer sistema operacional, e suas principais funções incluem:

- **Gerenciamento de Processos**: O kernel gerencia a criação, execução e terminação de processos. Ele garante que os processos sejam alocados recursos de forma justa e eficiente e lida com a troca de contexto entre processos.
- **Gerenciamento de Memória**: O kernel controla o uso da memória RAM, alocando e liberando espaço conforme necessário. Ele também gerencia a memória virtual e a paginação, permitindo que o sistema use mais memória do que fisicamente disponível.
- **Gerenciamento de Entrada/Saída (I/O)**: O kernel lida com operações de entrada e saída, como a leitura e escrita em discos rígidos, a comunicação com periféricos (impressoras, teclados, etc.), e o gerenciamento de arquivos.
- **Gerenciamento de Recursos**: O kernel distribui recursos do sistema, como tempo de CPU e acesso a dispositivos, entre os processos e usuários.
- **Segurança e Proteção**: O kernel implementa mecanismos de segurança para proteger o sistema contra acessos não autorizados e garantir que processos mal-intencionados ou com falhas não comprometam o sistema.
- **Comunicação entre Processos (IPC)**: Facilita a comunicação e sincronização entre processos, permitindo que eles troquem informações e coordenem ações.
- **Sistema de Arquivos**: O kernel fornece uma interface para o sistema de arquivos, permitindo a criação, leitura, escrita e exclusão de arquivos e diretórios.

#### Tipos de Kernel
 Existem diferentes tipos de kernels, cada um com suas características e arquitetura:
- **Monolítico**: Um kernel monolítico tem todas as suas funções essenciais, como gerenciamento de processos e sistema de arquivos, rodando no mesmo espaço de memória, o que pode resultar em maior desempenho, mas também em maior complexidade e risco de falhas. Exemplo: Linux.
- **Microkernel**: Um microkernel mantém o núcleo do sistema operacional minimalista e delega muitas funções para processos no espaço do usuário. Isso pode aumentar a modularidade e a estabilidade, mas pode ter um impacto no desempenho. Exemplo: Minix.
- **Kernel Híbrido**: Combina características de kernels monolíticos e microkernels, tentando equilibrar desempenho e modularidade. Exemplo: Windows NT.
- **Exokernel**: Um tipo menos comum, que tenta fornecer uma abstração mínima para o hardware, permitindo que os desenvolvedores construam suas próprias abstrações conforme necessário. Exemplo: Exokernel.

**Exemplos de Kernels Populares**
- **Linux**: Um kernel monolítico amplamente utilizado em sistemas Unix e Linux, conhecido por sua flexibilidade e compatibilidade com uma ampla gama de hardware.
- **Windows NT Kernel**: O kernel usado em versões modernas do Windows, como Windows 10 e Windows Server, é um kernel híbrido.
- **XNU (X is Not Unix)**: O kernel usado no macOS, que combina elementos de um microkernel (Mach) com um kernel monolítico (BSD Unix).
- **FreeRTOS**: Um kernel de tempo real projetado para sistemas embarcados e aplicações de tempo real.

### Shell 
 O shell é um programa que fornece uma interface para interagir com o sistema operacional. Ele permite que os usuários executem comandos, scripts e programas, e também pode ser usado para gerenciar arquivos e processos. Em essência, o shell atua como um intermediário entre o usuário e o núcleo do sistema operacional.

Existem diferentes tipos de shells, e eles podem ser classificados principalmente em duas categorias:
- **Shells de Linha de Comando**: Interagem com o usuário por meio de uma interface de linha de comando (CLI), onde comandos são digitados e executados.
- **Shells de Script**: Usados para escrever scripts, que são conjuntos de comandos que podem ser executados em sequência para realizar tarefas automatizadas.

**Principais Tipos de Shells**
- **Bash (Bourne Again Shell)**: É o shell mais popular em sistemas Unix e Linux. Oferece muitos recursos avançados, como a conclusão automática de comandos, histórico de comandos e suporte a scripts robustos. É conhecido pela sua flexibilidade e ampla compatibilidade.
- **Zsh (Z Shell)**: Um shell avançado que é conhecido por sua personalização extensiva e recursos poderosos, como autocompletar avançado e correção ortográfica. Zsh é frequentemente elogiado por sua configuração amigável e pelo suporte a plugins.
- **Ksh (Korn Shell)**: Um shell que combina características do Bourne Shell com melhorias adicionais, incluindo suporte a arrays e funcionalidades avançadas de scripting. É usado em muitos ambientes corporativos.
- **Tcsh (TENEX C Shell)**: Uma versão aprimorada do C Shell (csh) com recursos adicionais, como edição de linha de comando e histórico. Embora não tão popular quanto Bash ou Zsh, ainda é usado em alguns ambientes.
- **Dash (Debian Almquist Shell)**: Um shell muito leve e rápido, projetado para ser compatível com o POSIX e usado como shell de script em algumas distribuições Linux, como o Debian.

### Desktop x Server
 #### Modelo Cliente-Servidor
 A arquitetura cliente-servidor é uma estrutura de aplicação que distribui as tarefas e cargas de trabalho entre os fornecedores de um recurso uo serviço, designados como servidores, e os requerentes dos serviços designados como clientes. Quando uma máquina solicita uma informação / realizando uma consulta é consierada "cliente", mas quando ela está fornecendo a informação / sendo a fonte da consulta considera-se um "servidor".<br/>
 Existem diferenças significativas entre SO para desktop e servidores, além da diferença da arquitetura entre os hardwares dessas máquinas, elas possuem finalidades diferentes, o que faz com que o SO tenha de ser específico e adaptado para cada serviço. Ou seja, temos máquinas na rede próprias apenas para entregar serviços, que estão sempre ouvindo as requisições (trata-se de um grande conjunto de máquinas, organizadas em Data Centers com a função de entregar serviços na rede, para este tipo de utilização é necessário um SO específico que desempenhe bem a gerência dos processos e o melhor uso dos recursos da máquina para que seja possível por exemplo a entrega dos serviços de servidor web, servidor de arquivos/banco de dados, contâiners, etc) e máquinas que utilizam e consomem estes serviços (desktops, smartphones, IOT, etc).

 #### Desktop
 Um SO desktop é voltado ao atendimento do usuário "comum"/final (cliente) para a realização das suas atividades necessárias. Suas principais características são a GUI, suporte a interatividade e a operação em rede.

 #### Servidor
 Um servidor é projetado para centralizar e fornecer serviços de forma eficiente a outros dispositivos ou usuários, facilitando a comunicação, o armazenamento e a gestão de recursos dentro de uma rede. O objetivo de um servidor é fornecer serviços, recursos ou dados a outros dispositivos - conhecidos como clientes - em uma rede. Este tipo de SO permite o gerenciamento eficiente de grandes quantidades de recursos (disco, memória, processadores, etc), impondo prioridades e limites sobre o uso dos recursos pelos usuários e seus aplicativos. Normalmente um SO server também tem suporte à rede e multiusuários. Em termos mais específicos, os servidores podem ter várias funções, dependendo do tipo:
 - **Servidores de Arquivos**: Armazenam e gerenciam arquivos para acesso e compartilhamento na rede.
 - **Servidores Web**: Hospedam e gerenciam arquivos que contém o código fonte de websites, tornando-os acessíveis para os usuários através da internet ou intranet.
 - **Servidores de e-mail**: Gerenciam o envio, recebimento e armazenamento de e-mails.
 - **Servidores de Banco de Dados**: Armazenam e gerenciam bancos de dados, permitindo que aplicativos consultem e atualizem informações.
 - **Servidores de Aplicações**: Executam aplicações e fornecem serviços a outras aplicações ou usuários.
 - **Servidores de DNS (Domain Name System)**: Traduzem nomes de domínio em endereços IP para facilitar a navegação na web.
 - **Servidores de Autenticação**: Gerenciam o acesso a recursos de rede, verificando a identidade dos usuários.
 - **Servidores de Impressão**: Gerenciam e coordenam o envio de trabalhos de impressão para impressoras compartilhadas na rede.

 #### SO Server
 Um sistema operacional de servidor é um tipo de sistema operacional projetado para gerenciar e otimizar o funcionamento de um servidor. Ele é diferente dos sistemas operacionais de desktop em vários aspectos, pois é projetado para lidar com cargas de trabalho mais intensas, garantir alta disponibilidade, e oferecer recursos avançados de gerenciamento e segurança. Esses sistemas operacionais são projetados para suportar operações de missão crítica e atender a uma variedade de necessidades em ambientes corporativos e de rede. Aqui estão algumas características e funções comuns de um sistema operacional de servidor:
 - **Gerenciamento de Recursos**: Otimiza o uso de recursos do hardware, como CPU, memória e armazenamento, para suportar múltiplas conexões e processos simultâneos de forma eficiente.
 - **Segurança e Controle de Acesso**: Fornece ferramentas avançadas para controlar o acesso aos recursos do servidor, proteger dados e gerenciar permissões e autenticações.
 - **Redundância e Alta Disponibilidade**: Oferece recursos para garantir que o servidor permaneça operacional mesmo em caso de falhas de hardware ou software, incluindo backups, failover e clustering.
 - **Gerenciamento de Rede**: Inclui recursos para configurar e gerenciar redes, como DHCP (Dynamic Host Configuration Protocol), DNS (Domain Name System) e serviços de roteamento.
 - **Serviços e Aplicações**: Suporte para serviços e aplicações específicos de servidor, como servidores de e-mail, servidores web, bancos de dados, e outros serviços de rede.
 - **Administração Remota**: Ferramentas para administração e monitoramento remoto do servidor, facilitando a gestão sem necessidade de acesso físico direto.
 - **Escalabilidade**: Capacidade de escalar recursos para atender ao crescimento das demandas, incluindo a adição de mais hardware ou a implementação de virtualização.
 - **Desempenho e Otimização**: Recursos e ferramentas para otimizar o desempenho e a eficiência do servidor, gerenciando cargas de trabalho e melhorando a resposta.

 Alguns exemplos de sistemas operacionais de servidor incluem:
 - Windows Server (como Windows Server 2022, Windows Server 2019)
 - Linux (com distribuições específicas como Ubuntu Server, CentOS, Red Hat Enterprise Linux, e Debian)
 - Unix (como AIX, Solaris)

**Linux Server**

 **Instalando o servidor**

 1. **Máquina Virtual/Física**
     - Acesso ssh cliente Windows x Linux Server: putty
     - Acesso ssh cliente Linux x Linux Server: ssh user_name@0.0.0.0 -y

 2. **Máquina Virtual/Nuvem**
     - Acesso ssh cliente Windows x Linux Server: puttygen: pem -> ppk > putty Auth
     - Acesso ssh cliente Linux x Linux Server: sudo chmod 600 file.pem && ssh -i file.pem user_name@0.0.0.0 -y
