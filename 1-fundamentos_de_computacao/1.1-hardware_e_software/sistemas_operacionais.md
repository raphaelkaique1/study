# Dispositivos e Sistemas Operacionais
Hardware são os componentes físicos que os computadores precisam para operar, a CPU, a RAM e a NIC são exemplos de hardware. O hardware, embora poderoso, não é muito inteligente sem instruções para dizer o que fazer. É aí que entra o software.<br/>
Software são as instruções que dizem ao hardware quais dados processar, o que mostrar em uma tela ou quais informações enviar para a internet. Pense no hardware como um automóvel. Sem um motorista, o carro ficará parado sem fazer nada. O software é como o motorista que direciona o carro para onde ir, quão rápido ele irá, quando ligar as luzes e quão alto o sistema de som deve tocar.<br/>
Os Softwares, normalmente, são divididos em:
1. **Software Básico ou Sistema Operacional**: É Responsável por controlar o Hardware e os Softwares de aplicação do computador. O SO funciona como uma plataforma para a instalação de outros Softwares aplicativos, e, sem o SO não é possível o manuseio do equipamento em suas funcionalidades plenas.
2. **Softwares Aplicativos**: São programas desenvolvidos especificamente para executar uma determinada tarefa. Cada aplicativo é desenvolvido para ser suportado por um determinado Sistema Operacional, por exemplo, um aplicativo pode ser desenvolvido para ser instalado no MS Windows, não sendo possível instalar o mesmo programa em uma plataforma Linux, porém, normalmente é desenvolvida também uma versão para o Linux, ou então algum outro aplicativo com funcionalidades equivalentes ou até mesmo soluções de containers que suportam aplicativos multiplataformas.

Quando instalamos o Sistema Operacional, normalmente, são instalados automaticamente também alguns pacotes de aplicativos próprios do sistema, mas, caso seja necessário, o usuário também pode instalar qualquer programa compatível com o Sistema Operacional do seu computador, conforme a sua necessidade, ficando restrito apenas ao Hardware da máquina, pois, alguns programas exigem um determinado componente ou então uma determinada capacidade de processamento ou armazenamento para funcionarem, chamado especificações mínimas.<br/>
Os computadores usam uns e zeros para representar informações, isso é chamado de modelo de Turing. Podemos pensar no hardware como tendo bilhões de interruptores para serem desligados (zero) ou ligados (um). Com base na combinação desses bilhões de interruptores, o computador faz certas coisas, como enviar uma mensagem de texto ou adicionar números em uma planilha. O programa de software diz ao computador quais interruptores desligar, quais ligar, em qual ordem e em que momento.<br/>
Por exemplo, se quisermos criar um documento, podemos usar o computador para executar um programa — um conjunto de instruções — chamado processador de texto. Este programa é composto de código de computador que é carregado na RAM do seu computador e diz à CPU o que mostrar na tela. O programa, quando carregado, pode mostrar uma página em branco na qual criamos o documento. Quando começamos a digitar, o programa diz à CPU para enviar instruções à GPU para mostrar as palavras que estão sendo digitadas na tela. Tudo isso é possível porque o software diz ao hardware o que fazer.

## Modelo de Von Neumann
Um computador é uma máquina de uso geral composta por hardware e software, porém, apesar de o conceito ser simples um sistema computacional é muito complexo. O Modelo de Von Neumann nos ajuda a entender melhor dividindo em partes. **Os componentes do modelo de Von Neumann são:**
- **Unidade de Controle - UC**: busca cada instrução dos programas na memória e executa sobre os dados de entrada;
- **Unidade Lógica e Aritmética - ULA**: parte da unidade central de processamento (CPU) que realiza a operação computacional;
- **Memória (permanente e/ou volátil)**: armazena dados e programas;
- **Dispositivos de Entrada e Saída**: interagem com o modelo, mas não fazem parte dos componentes principais;
  - **Entrada**: Permite a comunicação do usuário com o computador. São dispositivos que enviam dados ao computador para processamento. Exemplos: teclado, mouse, scanner...
    - *O dispositivo de entrada padrão (stdin) em sistemas GNU/Linux é o teclado.*
  - **Saída**: Permite a comunicação do computador com o usuário. São dispositivos que permitem o usuário visualizar o resultado do processamento enviado ao computador. Exemplos: monitor, som, impressora...
    - *O dispositivo de saída padrão (stdout) em sistemas GNU/Linux é o monitor.*

## Firmware
Todos os dispositivos eletrônicos possuem um firmware. É a primeira camada de integração do hardware com o usuário. O firmware é um tipo de software de baixo nível que fica armazenado diretamente no hardware de um dispositivo e é responsável por controlar suas funções básicas. Ele atua como uma ponte entre o hardware e o software do sistema operacional, garantindo que o equipamento funcione corretamente. Um software essencialmente, é um conjunto de instruções que dizem ao computador (hardware) o que fazer, o firmware é uma *espécie de software*, ele difere de um "software padrão" na forma como ele é executado no hardware. Ele normalmente é armazenado em um chip especial dentro do dispositivo e controla as funções mais básicas do hardware, ele é um gerenciador sempre ativo em segundo plano, garantindo que as coisas funcionem da maneira que deveriam.<br/>
Como qualquer outro software, ele pode também ser atualizado, mas isso requer algumas instruções especiais pois, como controla *diretamente* as principais funções do hardware, ele necessita por exemplo que, durante sua atualização o sistema tenha energia constante até o fim da sua atualização, caso contrário, ele será corrimpido e, como um HDD danificado, o firmware é extremamente difícil de recuperar.
- **Armazenamento**: Geralmente gravado em memória ROM, EEPROM ou Flash, tornando-o mais permanente que um software convencional.
- **Atualizável**: Muitos dispositivos permitem atualizações de firmware para corrigir bugs, melhorar desempenho ou adicionar novos recursos.
- **Baixo Nível**: Opera em um nível mais próximo do hardware, diferentemente dos sistemas operacionais que interagem com o usuário.

O firmware é essencial para o funcionamento de praticamente todos os dispositivos eletrônicos modernos, pois define como o hardware deve operar.
- **Computadores**: BIOS/UEFI, controladores de armazenamento.
- **Celulares e Eletrônicos**: Firmware de smartphones, smart TVs e roteadores.
- **Dispositivos Embarcados**: Impressoras, câmeras digitais, eletrodomésticos inteligentes.
- **Automotivo**: Controle de injeção eletrônica, sistemas ABS e etc.

## Sistema Operacional
Os sistemas operacionais são softwares que atuam como hosts para outros softwares e gerenciam todo o hardware.<br/>
Um sistema operacional visa abstrair o acesso e gerenciar os recursos de hardware, provendo aos aplicativos um ambiente de execução no qual o acesso aos recursos se faz através de interfaces simples, independentes das características e detalhes de baixo nível e no qual os conflitos no uso do hardware são minimizados. O uso do processador deve ser distribuído entre os programas presentes no sistema, de forma que cada um deles possa executar na velocidade adequada para cumprir suas funções sem prejudicar os outros. Também a memória RAM deve ser gerenciada e distribuída de forma justa entre as aplicações, gerenciar as impressões em computadores numa rede, por exemplo, é uma tarefa necessária que o SO faz. Ele tem ligação direta com o hardware, alocando os recursos e administrando a funcionalidade de cada um deles. A utilização dos recursos e do controle dos dispositivos de entrada e saída é possível devido à forma como o sistema operacional permite ao usuário configurar os serviços. Os SOs podem ser divididos em:
- **Monoprogramáveis/Monotarefa**: executa somente único programa ou tarefa por vez. Quando um programa está em execução, o sistema operacional não pode executar outro programa até que o primeiro termine. Este tipo de sistema foi comum nas primeiras gerações de computadores e é adequado para ambientes onde a complexidade das tarefas e a capacidade de processamento eram limitadas. Exemplos: Windows 95/98 e Sistemas Operacionais de Mainframe Antigos.
- **Multiprogramáveis/Multitarefa**: são projetados para executar vários programas ou tarefas ao mesmo tempo. Eles permitem que o processador alterne entre diferentes tarefas de forma eficiente, proporcionando a sensação de que múltiplas tarefas estão sendo executadas simultaneamente. Existem duas abordagens principais para multitarefa: multitarefa cooperativa e multitarefa preemptiva; Na multitarefa cooperativa, o sistema operacional depende da boa vontade dos processos para liberar o controle da CPU de forma adequada. Em outras palavras, cada processo em execução deve voluntariamente ceder o controle de volta ao sistema operacional para permitir que outros processos sejam executados. Na multitarefa preemptiva, o sistema operacional tem controle total sobre a alocação de tempo da CPU. O sistema pode interromper um processo em execução para dar tempo a outros processos, mesmo que o processo atual não esteja pronto para liberar o controle. Exemplos: Unix, Linux, Windows NT/2000/2003.
- **Distribuído**: voltados para servidores, os recursos de cada máquina estão disponíveis globalmente, de forma transparente aos usuários. Ao lançar uma aplicação, o usuário interage com sua janela, mas não sabe onde ela está executando ou armazenando seus arquivos, o SO é quem decide, sempre de forma transparente. Exemplos: Google Chrome OS, Microsoft Azure, Apache Hadoop, Google Android, Freenet, Xerox PARC's Distributed Computing Environment (DCE), Plan 9, Amoeba e Beowulf Cluster.
- **Multiusuário**: suporta a identificação do proprietário de cada recurso dentro do sistema (arquivos, processos, áreas de memória, conexões de rede, etc) e impõe regras de controle de acesso para impedir o uso desses recursos por usuários não autorizados. Essa funcionalidade é fundamental para a segurança dos sistemas operacionais de redes e distribuídos. Grande parte dos sistemas atuais são multiusuários. Exemplos: Linux, Windows e etc.
- **Rede**: suporte à operações em rede, ou seja, a capacidade de oferecer às aplicações locais recursos que estejam localizados em outros computadores da rede, como arquivos e impressoras; Ele também deve disponibilizar seus recursos locais aos demais computadores, de forma controlada. A maioria dos SOs atuais oferece esse tipo de funcionalidade. Exemplos: Microsoft Windows Server, Linux Server, Novell NetWare e BSD (Berkeley Software Distribution).
- **Embutido/Embarcado/Embedded/IoT**: construído para operar sobre um hardware com poucos recursos de processamento, armazenamento e energia. Projetados para realizar tarefas específicas e não podem ser facilmente adaptados para outras funções. Otimizado para recursos limitados e para executar tarefas de maneira eficiente. Normalmente, são incorporados diretamente ao hardware em que operam. Muitos sistemas embarcados operam em tempo real, respondendo a eventos em um prazo muito curto. Aplicações típicas desse tipo de sistema aparecem em máquinas industriais e automotivas, equipamentos eletrônicos de uso doméstico entre outros. IoT refere-se à interconexão de dispositivos através da internet, permitindo que eles coletem, enviem e recebam dados. Alguns exemplos são: Sensores Inteligentes: Como sensores de temperatura em um sistema de aquecimento, ventilação e ar condicionado (HVAC) que podem ser monitorados e ajustados remotamente, Wearables: Dispositivos como relógios inteligentes que monitoram a saúde e atividades físicas e podem enviar dados para uma aplicação na nuvem, Cidades Inteligentes: Sistemas de iluminação pública que ajustam a intensidade da luz com base no tráfego ou condições meteorológicas. Exemplos: Arduíno, RaspBerry Pi, Android e etc.

Um sistema operacional executa muitas funções para que o computador funcione bem e eficientemente. Algumas das mais importantes são:
- **Interpretador de Comandos**: traduz comandos para instruções que o processador entende.
- **Gerente dos Usuários**: guarda separadas as tarefas de cada usuário.
- **Gerente das Tarefas**: guarda separadamente as operações de cada tarefa.
- **Gerente dos Recursos**: gerencia o uso de recursos de hardware entre usuários e tarefas usando-os a qualquer ponto do tempo.
- **Gerente de Arquivos**: cria, deleta, edita arquivos e gerencia acesso de arquivos.
- **User Interface**: gerencia acesso do usuário para o interpretador de comandos e o gerente de arquivos.

![Image](https://github.com/user-attachments/assets/b89573b9-c295-46d1-b31b-f16df50323e6)

O Linux possui várias características que o diferencia dos outros SOs e que o aproximam do Unix, sendo um dos motivos da sua escolha em várias aplicações nas quais são necessárias estabilidade e segurança.
<pre>
            SISTEMA OPERACIONAL
 ┌─────────────────────────────────────┐
 │  ┌───────────────────────────────┐  │
 │  │ ┌───────────────────────────┐ │  │
 │  │ │ ┌───────────────────────┐ │ │  │
 │  │ │ │        FIRMWARE       │ │ │  │
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
- **Hardware**: São componentes referentes a parte física do computador (impressora, HD/SSD, RAM, GPU, CPU, NIC, etc), o firmware é o software que controla as funções mais básicas do equipamento e é independente de SO. Fica armazenado diretamente na memória ROM.
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
### Particionamento
**Os Discos rígidos possibilitam a divisão e criação de uma ou várias unidades de menor tamanho.** Quando criamos mais de uma partição, é como se existisse mais de 1 Disco instalado no computador e cada partição é representada por um identificador.<br/>
Para que seja possível a formatação do Disco, é necessário primeiro a criação de *unidades lógicas*, que é o que possibilita o SO reconhecer o Disco como uma **unidade de armazenamento**. Neste processo, as informações referentes às partições como seu tipo, endereço de início e final de cada partição são gravadas na **primeira trilha do HD**, chamada *Trilha 0*, esta primeira trilha dentro do HD é responsável por armazenar informações de inicialização dos SOs, controle de boot, tabelas de partição, informações dos Sistemas de Arquivos e informações de endereçamento dos arquivos e programas gravados no HD, no caso de SSD, essas informações são armazenadas na **DRAM** onde o controlador tem acesso aos dados de metadados e buffers temporários além das tabelas de mapeamento, em uma área dedicada chamada **Tabela de Partições**.<br/>
A tabela de partição é uma estrutura de dados que fica armazenada no próprio dispositivo de armazenamento especificamente na área reservada para informações de configurações do dispositivo. Essa tabela é uma estrutura de dados que contém informações sobre o layout das partições no dispositivo, incluindo o tamanho de cada partição, seu tipo (FAT 32, NTFS ext4 e etc) e o ponto de montagem associado à unidade. Existem diferentes formatos de tabela de partição, sendo os mais comuns o **Master Boot Record** e o **GUID Partition Table**.
- **MBR**: formato antigo, localizado no primeiro setor do dispositivo de armazenamento, contendo informações de até 4 partições primárias ou 3 partições primárias e uma partição extendida (que pode conter várias partições lógicas).
- **GPT**: formato moderno e mais flexível, é uma estrutura de dados mais robusta, que permite um número maior de partições (teoricamente até 128 partições) e suporta dsipostivios com capacidades gigantescas. Este padrão oferece recursos de integridade de dados e redundância, para aumentar a confiabilidade.

A necessidade da criação de várias partições pode ser pode ser para a instalação de mais de um SO ou para a organização dos arquivos por exemplo, onde em uma partição instalamos o SO e na outra ficam armazenados os arquivos, e a vantagem disso é que podemos formatar apenas a partição com o SO, caso seja necessário sua reinstalação, sem precisar fazer a formatação da outra partição e, consequentemente, apagar todos os dados.<br/>
As unidades de instalação dos SOs possuem programas auxiliares que permitem o particionamento do HD, mas é possível também fazer o particionamento a partir de sofwares específicos, tais como: Partition Magic, Gparted (Linux) e etc.<br/>
Existem 2 tipos de formatação:
1. **Física**: envolve a criação das trilhas e setores no caso de HDD e em blocos e páginas no caso de SSD, com os dados de endereçamento, e é realizada apenas uma vez, durante o processo de fabricação do dispositivo de armazenamento.
2. **Lógica**: realizada através do SO, trata-se da preparação da unidade de armazenamento para os padrões do SO, fazendo com que seja reconhecido. Caso seja feita a formatação durante a instalação do SO, é realizada a gravação do setor de *boot* (trilha MBR) e da *FAT* (tabela de alocação de arquivos). São feitas também a gravação do volume, gravação do sistema e gravação do diretório raiz, o *root*. Todo esse processo de preparação da unidade de armazenamento para os padrões do SO é chamado de *sistema de arquivos*.

### Sistema de Arquivos
Com o HD particionado, é necessário formatar a partição na qual será instalado o SO. **Formatar é o processo de dividir uma determinada partição em setores endereçáveis, de forma que seja possível gravar dados neste setores e posteriormente poder acessá-los de forma organizada.** O resultado final deste processo será a criação do **Sistema de Arquivos**, *que consiste em estruturas lógicas que possibilitam ao SO gerenciar a partição de forma organizada e otimizada*. Os mais comuns padrões de formatação de unidades de armazenamento de arquivos utilizados para SO são:
- **ext2**: Para partições GNU/Linux usando o Extended File System versão 2 (a mais comum).
- **ext3**: Para partições GNU/Linux usando o Extended File System versão 3, com suporte a journalig.
- **ext4**: Para partições GNU/Linux usando o Extended File System versão 4, melhorias em relação ao ext3, como o delayed allocation para melhor desempenho e com suporte a journalig.
- **XFS**: Melhor escalabilidade do que ext4, com suporte a journaling.
- **Btrfs**: Snapshots nativos, permitindo rollback de alterações rapidamente, com RAID embutido, sem necessidade de hardware dedicado e Checksums para integridade de dados, evitando corrupção silenciosa. Particionamento flexível, permitindo redimensionamento dinâmico.
- **ReiserFS**: Para partições ReiserFS, com suporte a journaling.
- **iso9660**: Padrão para montar unidades de CD-ROM.
- **FAT 16**: MS-DOS, Windows 95, Windows 95 osr/2, Windows 98 e Windows NT.
- **FAT 32**: Windows 95 osr/2, Windows 98, Windows 98 SE, Windows ME e Windows 2000.
- **NTFS**: Windows NT, Windows XP, Windows 2000, Windows Vista, Windows 7, 8, 10 e 11.
- **vfat**: Para partições Windows 95 que utilizam nomes extensos de arquivos e diretórios.
- **msdos**: Para partições DOS normais.
- **HPFS**: OS/2 - IBM OS.

**journaling: Serviço que coleta e armazena logs do sistema e mensagens de eventos, ele é parte do systemd, que é um sistema de gerenciamento de serviços e processos para Linux.*

### Dispositivos
Os dispositivos no sistema GNU/Linux são acessados através do diretório `/dev`, onde dispotivos físicos são tratados como um tipo especial de arquivos no Sistema de Arquivos Linux. Esses dispositivos incluem: discos rígidos, SSDs, portas seriais, dispositivos USB, áudio, vídeo e muito mais.

| **Linux**             | **Windows** | **Descrição**                                |
|-----------------------|-------------|----------------------------------------------|
| **/dev/sda1**         | **C:**      | Primeira partição do primeiro disco SATA/SSD |
| **/dev/sda2**         | **D:**      | Segunda partição do primeiro disco SATA/SSD  |
| **/dev/nvme0n1p1**    | **C:**      | Primeira partição de um SSD NVMe             |
| **/dev/ttyS0**        | **COM1**    | Porta serial 1                               |
| **/dev/ttyS1**        | **COM2**    | Porta serial 2                               |
| **/dev/lp0**          | **LPT1**    | Porta paralela (impressora)                  |
| **/dev/snd/**         |             | Dispositivos de áudio gerenciados por ALSA   |
| **/dev/input/mouse0** |             | Mouse conectado ao sistema                   |

A identificação de discos rígidos no GNU/Linux é feita da seguinte forma:
<pre>
/dev/sda1 - Primary SATA/SCSI 1 partition disk    /dev/sdb1 - Primary SATA/SCSI 2 partition disk
/dev/sda2 - Secondary SATA/SCSI 1 partition disk  /dev/sdb2 - Secondary SATA/SCSI 2 partition disk
         ^                                            ^
         └──────────────────┐      ┌──────────────────┘
             ┌──────────────┼──────┼──────────────┐
             │ PLACA MÃE  ┌─┴─┐  ┌─┴─┐            │
             │            │   │  │   │            │
             │    sda1<─┐ │   │  │   │ ┌─>sdb1    │
             │          ├─┤   │  │   ├─┤          │
             │    sda2<─┘ │   │  │   │ └─>sdb2    │
             │            │   │  │   │            │
             │            └───┘  └───┘            │
             │            SATA1  SATA2            │
             │                                    │
     *Representação gráfica da placa mãe e barramentos SATA

/dev/sda1
 │   │ │└ Número que identifica a partição no HD/SSD
 │   │ └ Letra que identifica o HD/SSD (a=primeiro, b=segundo, etc...)
 │   └ Sigla que identifica o tipo do HD/SSD (hd=ide, sd=SCSI)
 └ Diretório onde são armazenados os arquivos usados para acessar dispositivos existentes no sistema
</pre>

O sistema GNU/Linux possui a seguinte estrutura básica de diretórios:
<pre>
                                                        ┌───┐
                                                        │ / │
                                                        └─┬─┘
             ┌────────┬────────┬────────┬─────────┬───────┴────────┬────────┬─────────┬───────┐
         ┌───┴──┐ ┌───┴──┐ ┌───┴──┐ ┌───┴───┐ ┌───┴──┐         ┌───┴──┐ ┌───┴───┐ ┌───┴──┐┌───┴──┐
     ┌───┤ /bin │ │ /usr │ │ /etc │ │ /home │ │ /lib ├───┐     │ /mnt │ │ /sbin │ │ /tmp ││ /dev │
     v   └──────┘ └───┬──┘ └──────┘ └───┬───┘ └──────┘   v     └──────┘ └───────┘ └──────┘└───┬──┘
 /usr/bin        ┌────┴───┐         ┌───┴──┐          /usr/lib                           ┌────┴─────┐
                 │/usr/lib│         │ Name │                                             │ /var/adm │
                 └────┬───┘         └───┬──┘                                             └────┬─────┘
                ┌─────┴────┐      ┌─────┴─────┐                                          ┌────┴─────┐
                │/usr/local│      │ file.type │                                          │ /var/tmp │
                └─────┬────┘      └───────────┘                                          └────┬─────┘
              ┌───────┴──────┐                                                          ┌─────┴──────┐
              │/usr/local/bin│                                                          │ /var/spool │
              └───────┬──────┘                                                          └─────┬──────┘
              ┌───────┴──────┐                                                       ┌────────┴────────┐
              │/usr/local/lib│                                                       │ /var/spool/cron │
              └──────────────┘                                                       └────────┬────────┘
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

**/** - Diretório principal (raiz).<br/>
**/home** - Diretório contendo os arquivos do usuário.<br/>
**/bin** - Contém arquivos de programas (binários) do sistema que são usados com frequência pelos usuários.<br/>
**/root** - Diretório do usuário root.<br/>
**/sbin** - Diretório de programas usados pelo superuser (root) para administração e controle do funcionamento do sistema.<br/>
**/boot** - Contém arquivos necessários para a inicialização do sistema.<br/>
**/cdrom** - Ponto de montagem da unidade CD-ROM.<br/>
**/floopy** - Ponto de montagem de unidade de disquetes.<br/>
**/mnt** - Ponto de montagem temporário.<br/>
**/dev** - Contém arquivos usados para acessar dispositivos (periféricos) existentes no computador.<br/>
**/etc** - Contém arquivos de configuração do computador local.<br/>
**/tmp** - Diretório para armazenamento de arquivos temporários criados por programas.<br/>
**/usr** - Contém maior parte de seus programas, normalmente acessível somente em modo leitura.<br/>
**/var** - Contém maior parte dos arquivos que são gravados com frequência pelos programas do sistema, e-mails, spool de impressora, cache e etc.<br/>
**/lib** - Bibliotecas compartilhadas pelos programas do sistema e módulos do kernel.<br/>
**/lost+found** - Local para a gravação de arquivos/diretórios recuperados pelo utilitário fsck.ext2, cada partição possui seu próprio diretório lost+found.<br/>
**/proc** - Sistema de arquivos do kernel, este diretório não existe no HD/SSD, ele é colocado lá pelo kernel e usado por diversos programas que fazem sua leitura, verificam configurações do sistema ou modificar o funcionamento de dispositivos do sistema através de alterações em seus arquivos.

### Driver
Quando instalamos um novo Hardware no computador é necessário que o Sistema Operacional gerencie o funcionamento deste Hardware com todos os seus recursos. Esta responsabilidade é de um software especial denominado Driver, que tem a função de realizar a comunicação entre o Hardware e o SO. Um driver é um software que atua como uma ponte entre o sistema operacional e um hardware específico. Ele permite que o sistema operacional se comunique corretamente com dispositivos como impressoras, placas de vídeo, teclados, discos rígidos, entre outros. Quando um programa precisa interagir com um hardware, por exemplo, imprimir um documento, ele envia a solicitação ao sistema operacional, que repassa essa solicitação ao driver correspondente. O driver, por sua vez, traduz essa solicitação em comandos que o hardware entende e executa.<br/>
Ou seja, um driver é um software que permite que o computador se comunique com o hardware ou com os dispositivos. Sem drivers, o hardware conectado ao computador, por exemplo, uma placa de vídeo ou uma impressora, não funcionará corretamente. Na maioria das vezes, os drivers são fornecidos com o SO, mas também é possível instalá-los a partir de outras fontes na internet.

1. **Drivers de dispositivo** – Controlam periféricos como teclados, mouses, impressoras e placas de vídeo.
2. **Drivers de kernel** – Funcionam diretamente no núcleo do sistema operacional para controlar dispositivos de baixo nível.
3. **Drivers de software** – Simulam um hardware ou interface para compatibilidade com softwares por exemplo: drivers de impressora virtual.

Quando um pendrive é conectado ao computador, o sistema operacional usa um driver USB para reconhecer, acessar e permitir a leitura e escrita de arquivos no dispositivo. Sem drivers, o sistema não conseguiria reconhecer ou controlar adequadamente o hardware.

### Kernel
O kernel é o núcleo do sistema operacional. Ele é responsável por criar uma ponte com os comando do usuário e o hardware do computador, ele fornece uma interface entre o hardware e o software do sistema. O kernel é essencial para o funcionamento de qualquer sistema operacional, e suas principais funções incluem:

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

### User Interface
Existe 2 tipos de interfaces para a interação com o usuário:
1. **Graphic User Interface**<br/>
As **GUI**s usam principalmente o mouse para navegar e selecionar ícones, menus e janelas para acessar programas, armazenamento e executar comandos do sistema. Alguns GUIs não são sistemas operacionais propriamente, mas são extensões de um sistema operacional com uma interface de linha de comando.
2. **Command Line Interface**<br/>
Usa comandos alfanuméricos simples executados diretamente na interface de comandos para navegar entre os discos e pastas, para conseguir outras funções como copiar, formatar, deletar e etc, e executar aplicativos.

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
Dependendo da finalidade do sistema, existe um sistema operacional mais indicado, como por exemplo um notebook que o usuário usa no dia a dia para estudar, navegar na internet e ouvir suas músicas possui um sistema operacional que dá suporte para todas as aplicações que realizam estas atividades, enquanto um servidor de páginas web possui um sistema operacional dedicado a aumentar a sua eficiência e disponibilidade.

#### Modelo Cliente-Servidor
A arquitetura cliente-servidor é uma estrutura de aplicação que distribui as tarefas e cargas de trabalho entre os fornecedores de um recurso uo serviço, designados como servidores, e os requerentes dos serviços designados como clientes. Quando uma máquina solicita uma informação / realizando uma consulta é consierada "cliente", mas quando ela está fornecendo a informação / sendo a fonte da consulta considera-se um "servidor".<br/>
Existem diferenças significativas entre SO para desktop e servidores, além da diferença da arquitetura entre os hardwares dessas máquinas, elas possuem finalidades diferentes, o que faz com que o SO tenha de ser específico e adaptado para cada serviço. Ou seja, temos máquinas na rede próprias apenas para entregar serviços, que estão sempre ouvindo as requisições (trata-se de um grande conjunto de máquinas, organizadas em Data Centers com a função de entregar serviços na rede, para este tipo de utilização é necessário um SO específico que desempenhe bem a gerência dos processos e o melhor uso dos recursos da máquina para que seja possível por exemplo a entrega dos serviços de servidor web, servidor de arquivos/banco de dados, contâiners, etc) e máquinas que utilizam e consomem estes serviços (desktops, smartphones, IOT, etc).

##### Desktop
Um SO desktop é voltado ao atendimento do usuário "comum"/final (cliente) para a realização das suas atividades necessárias. Suas principais características são a GUI, suporte a interatividade e a operação em rede.

###### SO Desktop
Normalmente o tipo de SO destinado a estes usuários são os que oferecem maior suporte a GUIs e também compatibilidade com uma gama ampla de softwares multiplataforma. São SO bons, porém bons para este uso mais "simples", onde o usuário tem controle sobre as configurações do hardware mas dificilmente sobre a manipulação do hardware em si, evitando que o usuário comum cause danos ao sistema realizando uma alteração indevida por exemplo.

##### Servidor
Um servidor é projetado para centralizar e fornecer serviços de forma eficiente a outros dispositivos ou usuários, facilitando a comunicação, o armazenamento e a gestão de recursos dentro de uma rede. O objetivo de um servidor é fornecer serviços, recursos ou dados a outros dispositivos - conhecidos como clientes - em uma rede. Este tipo de SO permite o gerenciamento eficiente de grandes quantidades de recursos (disco, memória, processadores, etc), impondo prioridades e limites sobre o uso dos recursos pelos usuários e seus aplicativos. Normalmente um SO server também tem suporte à rede e multiusuários. Em termos mais específicos, os servidores podem ter várias funções, dependendo do tipo:
 - **Servidores de Arquivos**: Armazenam e gerenciam arquivos para acesso e compartilhamento na rede.
 - **Servidores Web**: Hospedam e gerenciam arquivos que contém o código fonte de websites, tornando-os acessíveis para os usuários através da internet ou intranet.
 - **Servidores de e-mail**: Gerenciam o envio, recebimento e armazenamento de e-mails.
 - **Servidores de Banco de Dados**: Armazenam e gerenciam bancos de dados, permitindo que aplicativos consultem e atualizem informações.
 - **Servidores de Aplicações**: Executam aplicações e fornecem serviços a outras aplicações ou usuários.
 - **Servidores de DNS (Domain Name System)**: Traduzem nomes de domínio em endereços IP para facilitar a navegação na web.
 - **Servidores de Autenticação**: Gerenciam o acesso a recursos de rede, verificando a identidade dos usuários.
 - **Servidores de Impressão**: Gerenciam e coordenam o envio de trabalhos de impressão para impressoras compartilhadas na rede.

###### SO Server
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

<!--
- MORIMOTO, Carlos Eduardo. Hardware: O guia definitivo. Porto Alegre: Sulina, 2007.
- TANENBAUM, A. Organização Estruturada de Computadores. 3. ed. Rio de Janeiro: Prentice- Hall, 1992.
- TORRES, Gabriel. Hardware: Curso Completo. 2. ed. Axcel Books, 1998.
- VALCONCELOS, Laércio. Hardware na Prática. 3. ed. Rio de Janeiro: Laércio Vasconcelos Computação, 2009.
- VALCONCELOS, Laércio. Manutenção de Micros na Prática. 2. ed. Rio de Janeiro: Laércio Vasconcelos Computação, 2008.
- Intel Corporation. Desktop Boards: soluções de problemas do BIOS. Disponível em: <http://www.intel.com/support/pt/motherboards/desktop/sb/cs-028780.htm>. Acessado em: 12/01/2012.
- Clube do Hardware. Trocando a Bateria da Placa-mãe. Disponível em: <http://www.clubedoHardware.com.br/artigos/Trocando-a-Bateria-da-Placa-Mae/745/1>. Acessado em 30/01/2012.
- GdH Press. Formatação. Disponível em: <http://www.gdhpress.com.br/hmc/leia/index.php?p=cap5-10>. Acessado em 30/01/2012.
- Clube do Hardware. Tudo o Que Você Precisa Saber Sobre Chipsets. Disponível em: <http://www.clubedoHardware.com.br/printpage/Tudo-o-Que-Voce-Precisa-Saber-Sobre-Chipsets/568>. Acessado em 30/01/2012.
- LEAL. A. R. Barramentos em Microcomputadores. Disponível em: <http://www.lee.eng.uerj.br/downloads/graduacao/microprocessadores/artigos_saber/a_publicar/barramento1.pdf>. Acessado em 30/01/2012.
- GdH Press. Placas-Mãe e Barramentos. Disponível em: <http://www.Hardware.com.br/guias/placas-mae-barramentos/vida-morte-agp.html> Acessado em 01/02/2012.
- InfoWester. Tecnologia USB (Universal Serial Bus). Disponível em: <http://www.infowester.com/usb.php>. Acessado em: 06/01/2012.
-->

<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.1-hardware_e_software/arquitetura_de_computadores.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#hardware_e_software">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.1-hardware_e_software/conhecimentos_de_prompt_de_comando_e_terminal.md">next</a>
