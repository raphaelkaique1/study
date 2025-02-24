# Arquitetura de Computadores

 ## 1. Conceito de Arquitetura de Computadores
 Arquitetura se refere a um projeto de uma construção. Ela vai adotar uma série de ações para organizar e criar espaços que possam dar condições a diferentes atividades humanas. Em termos de Tecnologia da Informação, a arquitetura da computação trata-se de um projeto que define os parâmetros e o modo em que os diversos componenetes de um computador devem ser organizados para não apenas entrar em operação, mas também para alcançar a qualidade e o desempenho necessários, a fim de ser aplicado na função que foi designado.

 ## 2. Principais Partes de um Computador: Modelo de Von Neumann
 Os componentes do modelo de Von Neumann são usados até hoje, mesmo nos equipamentos mais modernos, e constitui-se por:
  - **Unidade de Controle - UC:** Busca cada instrução dos programas na memória e executa sobre os dados de entrada. Em outras palavras, é o "centro nervoso" do computador, pois assume todas as tarefas de controle das ações a serem realizadas pelo computador, comandando os demais componentes de sua arquitetura.
  - **Unidade Lógica e Aritmética - ULA:** Parte da unidade central de processamento (UCP), é onde ocorrem as operaçõe aritméticas, cálculos e operações lógicas.
  - **Memória (RAM e ROM):** Armazena dados e programas.

	 * A unidade de Controle (UC) e a Unidade Lógica e Aritmética (ULA) formam a Unidade Central de Processamento (UCP), ou simplesmente "processador". A Unidade Lógica e Aritmética (ULA), a Unidade de Controle (UC) e a Memória (RAM/ROM) trabalham em conjunto para executar instruções, processar dados e armazenar informações.
	 * A memória - componente crucial nesse processo - guarda os dados e as instruções que serão processados pela CPU. A memória RAM, volátil e rápida, armazena as informações temporariamente enquanto o computador está ligado, enquanto a memória ROM, não volátil, armazena informações permanentes, como a BIOS.
	 * Os dispositivos de entrada e saída permitem a interação do usuário com o computador. Através do teclado e do mouse, inserimos dados e comandos, enquanto o monitor e a impressora nos fornecem a saída das informações processadas. Os dispositivos de entrada e saída (I/O) interagem com o modelo, mas não fazem parte dos componentes principais.
<pre>
┌──────────────────────────────────────────────────────────────────────────────┐
│ SISTEMA CENTRAL                                                              │
│ ┌────────────────────────────────────────────────────┐                       │
│ │ UNIDADE CENTRAL DE PROCESSAMENTO - UCP             │                       │
│ │ ┌──────────────────────┐ ┌───────────────────────┐ │  ┌───────────────────┐│
│ │ │  UNIDADE ARITMÉTICA <┼─┼> UNIDADE DE CONTROLE  │<┼─>│ MEMÓRIA PRINCIPAL ││
│ │ │    E LÓGICA - ULA    │ └─────┬─── UC ──────────┘ │  └─────── RAM ───────┘│
│ │ └──────────────────────┘    ^  │  ^                │                       │
│ │                             │  │  │                │                       │
│ │                    ┌────────┘  │  └────────┐       │                       │
│ └────────────────────│───────────│───────────│───────┘                       │
└──────────────────────│───────────│───────────│───────────────────────────────┘
                       │           v           v
   ┌───────────────────┴┐ ┌──────────────────┐ ┌─────────────────────────────┐
   │ UNIDADE DE ENTRADA │ │ UNIDADE DE SAÍDA │ │ UNIDADE DE MEMÓRIA AUXILIAR │
   └───────── I ────────┘ └──────── O ───────┘ └─────────── CACHE ───────────┘
*DrMips: simulador de funcionamento da CPU
</pre>
 A ULA realiza operações lógicas e aritméticas sobre um ou mais operandos, ou seja, realiza ações indicadas nas instruções, executando operações númericas (aritméticas) e não numéricas (lógicas), além da preparação de informações para desvio do programa. As operações da ULA são geralmente muito simples, funções mais complexas, exigidas pelas instruções da máquina são realizadas pela ativação sequencial das várias operações básicas disponíveis. Exemplos de operações realizadas pela ULA:
  - soma de dois operandos
  - negação de um operando
  - inversão de um operando
  - AND ("E" lógico) de dois operandos
  - OR ("OU" lógico) de dois operandos
  - deslocamento de um operando para a esquerda ou para a direita
  - rotação de um operando para a esquerda ou para a direita

 **Memória**<br/>
  A memória de um sistema de computador tem a função de armazenar dados e instruções; é organizada em posições, que podem ser visualizadas como elementos em uma matriz. Cada elemento da memória tem um endereço, assim, pode-se falar de uma memória que tenha "x" posições: cada posição pode ser referenciada diretamente de acordo com a sua colocação na sequência. Por exemplo, se uma memória tem 4.096 posições, existem então posições de memória em 0, 1, 2, 3, ..., 4.094 e 4.095. Quando um endereço de memória aparece nos circuitos de controles conectados à memória, dependendo do trabalho associado com aquele endereço o conteúdo (o valor que está na posição) será trazido da memória para os circuitos da unidade de processamento ou a informação na unidade de processamento será armazada na memória. As instruções em um computador são executadas em uma sequência determinada por suas posições de memória. Na maioria dos computadores, instruções e dados são distribuídos em posições de memória.

 **Entrada e Saída (I/O)**<br/>
  Dispositivos em que o usuário interage com a máquina inputando e manipulando dados para processamento e recebendo informação como resultado. Teclado e mouse são exemplos de dispositivos de entrada enquanto tela e impressora são exemplos de dispositivos de saída. Para que o computador possa processar as entradas e saídas existem os barramentos, que são circutos elétricos que carregam as energias através de pulsos elétricos equivalentes à cada informação.
<pre>
Barramentos para dispositivos de entrada e saída:
┌─────────────┐        BARRAMENTOS        ┌─────────────┐
|             ├─────────────────┬─────────┤   MEMÓRIA   |
|     UCP     ├─────────────┬───|─────────┤  PRINCIPAL  |
|             ├─────────┬───|───|─────────┤    (ROM)    |
└─────────────┘         |   |   |         └─────────────┘
                ┌───────┴───┴───┴───────┐
                | DRIVERS CONTROLADORES |
                └───────────┬───────────┘
                ┌───────────┴───────────┐
                | ENTRADA E SAÍDA (I/O) |
                └───────────────────────┘
</pre>
 ### Ciclos de Execução da CPU
  Quando a CPU quer ler uma palavra, ou da memória ou de uma porta de I/O, ela coloca o endereço necessário nas linhas de endereço do barramento e, então, envia um sinal READ em uma linha de controle do barramento. Uma segunda linha de sinal é usada para dizer se é necessário espaço de I/O ou espaço de memória. Se for espaço de memória, a memória responderá a requisição, se for espaço de I/O, é o dispositivo de I/O correspondente que responderá. Um programa se torna um processo quando um arquivo executável é carregado na memória.

 #### Processos na CPU
  - Novo: Um novo processo foi adicionado à fila de execuções, então a CPU deverá buscar os dados necessários para executar o processo;
  - Pronto: O processo encontra-se pronto para ser executado, nesse ponto ele pode ser enviado para a CPU pois os dados básicos para sua execução já foram selecionados;
  - Em Execução: O processo está na CPU sendo executado;
  - Em Espera: O processo executou alguma operação de Entrada (I) e Saída (O), ou depende de algum dado que deve ser fornecido por outro processo ou que não foi previamente carregado;
  - Terminado: O processo encerrou seu ciclo de execução.
<pre>
┌──────┐                                   ┌───────────┐  |
| NOVO |                     ┌──────6────> | TERMINADO |  |
└───┬──┘           ┌─────────┴──┐          └───────────┘  |  1 - Aceito
    1     ┌──2───> | EXECUTANDO ├───4──┐                  |  2 - Escolhido pelo escalonador
    v     |        └──┬─────────┘      v                  |  3 - Interrupção
    ┌─────┴──┐        |          ┌───────────┐            |  4 - Esperando por evento I/O
    | PRONTO | <──3───┘          | ESPERANDO |            |  5 - Fim de evento I/O
    └────────┘                   └──┬────────┘            |  6 - Finalização
        ^                           |                     |
        └──────────────5────────────┘                     |

	Rotina bootstrap
	Passo 1: A máquina inicia executando a rotina    Passo 2: A rotina bootstrap controla a transferência
		 bootstrap, residente na memória. O               do SO para a memória principal e, em seguida
		 SO está armazenado em disco.                     lhe transfere o controle.
	MEMÓRIA PRINCIAL                                  MEMÓRIA PRINCIAL
        ┌─┬─────────────┐                                  ┌─┬─────────────┐
   ROM ─┤ | PROGRAMA    |  ARMAZENAMENTO              ROM ─┤ | PROGRAMA    |  ARMAZENAMENTO
        | | BOOTSTRAP   |    EM DISCO                      | | BOOTSTRAP   |    EM DISCO
        ├─┼─────────────┤        ◼︎                         ├─┼─────────────┤        ◻︎
MEMÓRIA | |             |     SISTEMA              MEMÓRIA | |   SISTEMA   | <──────┘
VOLÁTIL ┤ |             |   OPERACIONAL            VOLÁTIL | | OPERACIONAL |
        | |             |                                  | ├─────────────┤
        | |             |                                  | |             |
        └─┴─────────────┘                                  └─┴─────────────┘
</pre>
 De forma prática, podemos então imaginar o computador em 3 partes, sendo elas:
 1. **RAM**: Componente responsável por direcionar o processador, enviando as instruções e informações necessárias para que os dados possam ser processados. Não guarda as informações fisicamente mas sim de forma local, ou seja, de forma virtual, o que significa que é preciso que haja energia no sistema para que ela possa manter a informação na memória, fazendo com que assim ela seja uma memória temporária. Os computadores precisam armazenar informações que eles processam. A memória de acesso aleatório é como uma mesa de trabalho que contém coisas que ela precisa ou está trabalhando diretamente, ela pode pegar um arquivo e deixá-lo na mesa para consultar durante o trabalho, e assim pegando documentos que precisa imediatamente e deixá-los em seu espaço de trabalho. Quando ela termina de usá-los, os guarda de volta no armazenamento de longo prazo — ou seja, na gaveta de arquivos. Dessa forma, a RAM retém informações temporariamente enquanto a CPU (ou a GPU) as usa. O processador obtém RAM de qualquer local de armazenamento, por isso é chamado de acesso aleatório. Sua principal função é facilitar o acesso e agilizar o processamento de dados por parte do processador, fazendo com que a busca dos dados recentemente acessados seja realizada em um curto espaço de tempo.
   - A RAM vem em uma placa ou chip dentro do computador. Em geral, dependendo do que sua CPU é capaz de lidar, quanto mais RAM você tiver, mais rápido verá os resultados em seu computador, e, quando o computador é desligado, a informação na RAM é apagada.
 2. **HD**: Guarda informações de forma física, ou seja, nele é escrito a informação de forma persistente para que ela seja armazenada mesmo que o sistema não esteja energizado. A única forma de se perder uma informação neste tipo de armazenamento é sobrescrevendo a memória no seu endereço físico ou danificando e corrompendo o HD. Então, o computador grava os dados permanentes no disco rígido, no disco estes dados são salvos mesmo que não haja energia no sistema. O sistema operacional, programas e arquivos são amrazenados nesta unidade. Os computadores usam 2 tipos de unidades de disco para armazenamento de longo prazo:
   - **HDD**: É uma unidade de disco rígido que contém um disco magnético giratório que armazena dados. Este prato tem compartimentos, e um braço se move pelos compartimentos para ler e gravar dados nestes compartimentos.
   - **SSD**: Esta é uma unidade de estado sólido que não tem partes móveis. Possui memória flash como um pendrive e armazena dados em um chip de computador semelhante à RAM, mas os dados armazenados em SSDs são permanentes. Eles não são apagados quando a energia do sistema é desligada. Em relação ao sistema operacional, por exemplo, o SSD leva um milésimo de segundo para inicializar. O controlador, por sua vez, gerencia a forma como os dados são transferidos entre o computador e a memória flash do disco, administrando o cache para oferecer maior agilidade ao computador.

 3. **PROCESSADOR**: Por que não usar somente o HD para que não haja risco de perder as informações? Pelo fato de que a memória RAM é muito mais rápida que o HD. As informações guardadas na memória (RAM ou HD) precisam ser processadas para serem manipuladas, e quem processa essas informações é a CPU. Vamos imaginar que queremos somar os valores 5 e 6, ambos os valores estão guardados em posições de memória aleatórias dentro da memória RAM. Para realizar a soma destes valores, os 2 números são levados até a CPU onde serão somados (processados) e devolvidos para a memória juntamente com o resultado (saída) que é alocado em outra nova posição de memória. Ou seja, nenhuma das memórias não server para processamento, apenas armazenar dados, e este tipo de transição entre a memória e a CPU acontece milhares de vezes dentro de um computador, daí a necessidade de se ter uma memória rápida para enviar e receber informações para a CPU. Visto que o HD precisa de um maior tempo de processamento já que seu processo de armazenamento de memória consome mais recursos, sua utilidade como memória auxiliar da CPU não é viável, tornando seu melhor uso como banco de dados.
   - **CPU**<br/>
   O processador é o "cérebro" do computador, sendo a parte onde o computador lida com o processamento de dados. Estes processadores são a implementação do modelo simples de Turing, atualizando o estado de milhões de 1s e 0s a cada segundo. A entrada de dados os entrega para a CPU, que coleta e transforma em informação entregando um resultado. <br/>
   O *chip* da CPU é uma pequena placa de circuito, ou *wafer*, que é composta de transistores, que são semicondutores de sinais elétricos. Esses transistores são agrupados em núcleos de processamento dentro da CPU. Algumas CPUs têm processadores gráficos integrados. Conforme ela funciona, a CPU gera calor. A CPU geralmente tem seu próprio  ventilador chamado *fan*.
   - **GPU**<br/>
   O processamento gráfico pode ser complexo, por isso muitos computadores têm uma unidade dedidaca ao processamento gráfico. A GPU cria o que vemos em uma tela no monitor. Ela é otimizada para o processamento gráfico, que é relativamente complexo. Enquanto a GPU e a CPU fazem um trabalho semelhante, a GPU tem um foco mais restrito, seu trabalho é produzir imagens em vez de executar todas as operações do sistema.<br/>
   As GPUs são muito rápidas, e, às vezes, chegam a ser mais rápidas que a própria CPU. As GPUs obtêm sua velocidade espalhando uma tarefa de processamento em muitos núcleos. Os núcleos de processamento em uma GPU são especializados principalmente para gráficos, mas também lidam com outras tarefas.<br/>
   Podemos então nos perguntar, já que as GPUs são mais rápidas do que as CPUs, por que os computadores usam CPUs? Por que não construí-los com GPUs que são mais rápidas? Essa na verdade é uma boa pergunta. A resposta é que, a velocidade extra nas GPUs não é "grátis", as peças necessárias para fazer GPUs são mais caras e, se usadas em vez de uma CPU, aumentariam em muito o custo dos computadores. CPUs e GPUs, embora semelhantes em como fazem o que fazem, têm funções únicas. A CPU é construída para fazer o que faz, e o faz muito bem, e usar uma GPU para muitas dessas tarefas seria um exagero.<br/>
   Existem 2 tipos de placas de vídeo:
     - **onboard**<br/>
     Placa embarcada, ou seja, a entreada de vídeo fica integrada, embutida com o restante dos componentes. Costumam ter um baixo desempenho comparadas às placas *offboard*, pois são placas usadas para taferas simples.
     - **offboard**<br/>
     Placa vendida separadamente e conectada nos *slots*. Tem um desempenho extremamente superior e são direcionadas para uso de softwares que requerem maior processamento e qualidade.

 Para que os monitores sejam conectados na placa mãe, são utilizados adaptadores de vídeo. Os mais comuns são VGA, HDMI, DVI e DP, que diferem quanto à qualidade de imagem, resolução e tipo de conectores utilizados para garantir a projeção da imagem.<br/>

 ##### Placa de Controle de Interface de Rede
 Os computadores precisam ser capazes de se comunicar entre si. O network interface controller, ou NIC, é a parte que lida com a comunicação. Ele envia dados do dispositivo e recupera dados de outras fontes para dar ao dispositivo para fazer o trabalho. Sem adaptadores de rede, tecnologias como a internet não seriam possíveis.<br/>
 Em um único computador, essas partes realizam quantidades incríveis de trabalho. Imagine processar um milhão de instruções a cada segundo. A rede e a computação em nuvem tornaram o poder da computação maior do que nunca.

 ##### Chipset
 Grupo de componentes eletrônicos de baixa capacidade em um circuito integrado, usado para gerenciar o fluxo de dados entre o processador, memória e periféricos. Todo *chipset* é dividido em 2 componentes:
 - **ponte norte**: controla os componentes internos *mais rápidos* como o processador, memória, placa de vídeo e os pentes de RAM. Tais informações são enviadas ao disco rígido.
 - **ponte sul**: controla os demais componentes, incluindo os dispositivos de entrada e saída, o disco rígido, as portas de comunicação e os *slots* de expansão.

 ##### I/O
 Os computadores recebem entradas e produzem saídas. Quando digitamos um endereço de site, estamos efetivamente fornecendo os dados de entrada: "Pegue isso!", e, quando o computador exibe a página inicial, isso é saída: "Aqui está!". Os computadores trabalham principalmente com entradas de dados, realizam trabalho e produzem saídas.<br/>
 Algumas saídas de computador movem máquinas ou enviam dados para outros computadores. Os humanos não veem algumas saídas, mas para a maioria dos dispositivos são usados todos os dias possuem maneiras de criar uma intercafe de interação entre uma pessoa com seu dispositivo de computação. O humano fornece a entrada e vê, ouve ou sente a saída.<br/>
 - Periféricos são dispositivos que criam interfaces com dispositivos de computação.
   - Teclados e microfones são periféricos comuns que fornecem entradas baseadas em linguagem.
   - Mouses e telas sensíveis ao toque permitem que você navegue por visuais como ícones para dizer ao computador o que você quer fazer sem ter que usar palavras.
   - Impressoras, telas e alto-falantes permitem que você veja, sinta e ouça as saídas de dispositivos de computação.

 ##### Motherboard
 É o componente que conecta todos os componentes internos e externos, os quais se comunicam com o computador a partir de portas como USB (dispositivos móveis e de armazenamento), PS2 (dispositivos de entrada como mouse e teclado), entradas de vídeo para uso de monitor e dispositívos de saída, como HDMI, VGA e etc.<br/>
 Dessa forma, pode-se concluir que a placa mãe permite a conexão dos discos rígidos, das fontes de alimentação, do processador, das memórias, entre outros.<br/>

 ###### Slots
 Outro componente é o **slot**. Existem tipos diferentes de slots, eles inserem os componentes de acordo com a configuração disponível no barramento. Eles são classificados de acordo com a tecnologia suportada. Vejamos alguns exemplos:

 **slots de memória**<br/>
 Inserem a memória de acordo com a configuração do barramento. Algumas placas mães possuem slots para 2 tipos de memória, com configurações e barramentos diferentes, estabelecendo maior compatibilidade com o tipo de memória desenvolvida.<br/>
 Uma observação importante a se fazer, é altamente **NÃO** recomendado utilizar 2 tipos de memórias diferentes ao mesmo tempo, pois essa ação pode causar problemas de reconhecimento e incompatibilidade, o que resulta em mau funcionamento do hardware.

 **slots de expansão**<br/>
 São usados para expandir as funções originais do computador, e suportam a maioria dos componentes de um computador. Podem ser classificados conforme a seguir:
 - **ISA - Industry Standard Architecture**<br/>
 Originalmente disponibilizados em 8 e 16 bits, foram projetados para controladores de jogos e impressoras nos primeiros computadores pessoais.
 - **PCI - Peripheral Component Interconnect**<br/>
 Substituíram o padrão ISA, tornando o uso da placa gráfica dedicada mais ágil.
 - **AGP - Accelerated Graphics Port**<br/>
 Possibilitaram o dobro de velocidade do barramento PCI, permitindo o uso de 2 placas, visando aumentar o desempenho de vídeo e processamento de imagens de um computador.
 - **PCIe - Peripheral Component Interconnec express**<br/>
 Slots instalados em pares que permitem alta velocidade com o uso de 2 placas, além de ter um menor custo. São os slots mais utilizados atualmente, compatíveis com a maioria das placas desenvolvidas por fabricantes como Intel e AMD.

 ###### Socket
 Do mesmo modo que os slots, o socket representa a conxeão do processador com a placa mãe, garantindo que os pinos estejam todos em contato com a placa, funcionando corretamente.
 Uma curiosidade é que, nos primeiros computadores pessoais os processadores eram instalados em slots como o caso do Pentium III da Intel, porém com evolução da tencologia, sockets passaram a ser utilizados para a instalação do "cérebro do computador".

 ##### Font
 Componente responsável por alimentar todos os outros. Sua função é converter a tensão usada pela rede elétrica em tensões requidas pelos componentes internos.<br/>
 Ela possui conectores de alimentação independentes, a fim de alimentar a placa, o disco, e etc por meio da placa mãe todos os demais componentes.

 ##### BIOS / UEFI
 **Basic Input / Output System** ou **Unified Extensible Firmware Interface** é o sistema de configurações mais básico e essencial do hardware especializado na placa-mãe. Ela é responsável por inicializar o hardware e carregar o sistema operacional. Ela tem como sua principal função identificar todos os componentes conectados à placa-mãe, as informações salvas no **CMOS** — que armazena os parâmetros de configuração da placa, acessíveis pelo setup, as unidades de disco e a ordem de *boot* dos dispositivos. Com a BIOS é possível configurar os componentes e a inicialização do sistema operacional, o **bootloader** que inicia o kernel. Nela é possível escolher a sequência em que os equipamentos pode ser utilizados para realizar o *boot* no sistema, ou seja, instalar o sistema, como um USB ou HD. É possível também desabilitar dispositivos e componentes, definir configurações de memória ou funções do hardware (como luz de teclado em notebooks por exemplo), desabilitar funcionalidades do sistema (como manter a fan sempre no seu rpm máximo por exemplo).<br/>
 Assim, diferente do firmware — que não dá nenhum controle ao usuário sobre as funções do hardware, na BIOS o usuário tem todo o controle do hardware e suas configurações. Na maioria das vezes sua interface pode ser acessada de acordo com as especificações do fabricante quanto a tecla de entrada, mas sempre é feita durante a inicialização do sistema.

 ##### Portas
 As portas de comunicação podem ser físicas ou lógicas. São usadas para encaminhar os dados de comunicação entre diferentes partes de um sistema.<br/>
 - **Físicas**<br/>
 As portas físicas fazem parte dos hardwares e são responsáveis pela entrada de dados através de portas de comunicação como USB, serial (geralmente utilizadas por impressoras) e portas de vídeo.
 - **Lógicas**<br/>
 Por outro lado, as portas lógicas são portas virtuais necessárias para manter a comunicação com o sistema computacional, a exemplo das portas TCP e UDP, responsáveis por transportar informações dentro das aplicações.

 ![Image](https://github.com/user-attachments/assets/a4a3f87b-0fc4-4a53-aeb5-05029b1288ef)

 ### Identidade do Hardware
 Todo hardware tem uma identificação especial chamada endereço de controle de acesso à mídia, ou simplesmente **MAC**. Endereços MAC são usados ​​para identificar exclusivamente o hardware. Eles são atribuídos na fábrica onde o dispositivo é produzido. Um fato interessante sobre endereços MAC é que eles são exclusivos para cada peça de hardware que já foi criada. Novos produtos não compartilharão um endereço MAC com nenhum outro produto, mesmo aqueles que são reciclados ou acabam em aterros sanitários.<br/>
 É uma coisa boa que os dispositivos tenham endereços MAC exclusivos porque, sem eles, os dados que viajam pela Internet podem não conseguir encontrar o lugar certo.

 ### Sistemas de Numeração
 Já no que diz respeito à representação de dados, os computadores representam sistemas digitais e, por isso, são compostos por números binários, armazenando e manipulando as informações baseadas em zero e um, também denominados bits. Tudo que inserimos, usamos, fazemos, processamos e recebemos em um computador, em essência é feito através da linguagem que essa máquina entede, a linguagem binária. O sistema de numeração computacional é um conjunto de regras e símbolos usados para representar e manipular números dentro de um computador. Como os computadores trabalham com circuitos eletrônicos que só entendem "ligado" = 1 e "desligado" = 0, eles utilizam sistemas numeŕicos baseados nestes estados. De modo distinto aos seres humanos, que se comunicam pela fala, os computadores realizam essa troca de informações apenas considerando os números zero e um. Tais algarismos formam a linguagem da informática. A base binária é capaz de formar palavras, expressões matemáticas e diversas outras informações. Para formar um número decimal, por exemplo, um conjunto de oito *bits* é utilizado. Tal formação é denominada *byte*.

 #### 1. Sistemas de Numeração<br/>
 Sistemas Numéricos Computacionais.
  ##### Bits e Bytes

  * **Bit** = "0" ou "1" - É a menor unidade de dados em computação e pode ter o valor 0 (aberto) ou 1 (fechado).<br/>
  *Com origem no estudo de circuitos elétricos, o termo "aberto" representa um circuito onde não há contato/conexão/ligação entre os condutores de energia, fazendo com que não corra eletricidade no sistema, ou seja, significa que o sistema está desligado, enquanto que "fechado" significa que o contato entre os condutores de energia está conectado (fechado), ou seja, o sistema está ligado. Computadores utilizam o sistema binário porque os circuitos eletrônicos têm dois estados possíveis: ligado (1) e desligado (0). Isso facilita a construção e a operação dos dispositivos digitais. Em termos lógicos isso representa VERDADEIRO ou FALSO.

  * **Byte** = 8 x Bit - Um byte corresponde a 8 bits, mas um byte consegue armazenar um código que corresponde somente a um único número, letra ou símbolo. A combinação de cadeias de bits é que permite representar diferentes números agrupando-se na forma de bytes.<br/>
  Exemplos:
<pre>
┌────────────┬────────────┐
│    BYTE    │  DECIMAL   │
├────────────┼────────────┤
│  00000000  │     0      │
├────────────┼────────────┤
│  00000001  │     1      │
├────────────┼────────────┤
│  00000010  │     2      │
├────────────┼────────────┤
│  00000011  │     3      │
├────────────┴────────────┤
│           ...           │
├────────────┬────────────┤
│  11111111  │    255     │
├────────────┼────────────┤
│  10010010  │     A      │
├────────────┼────────────┤
│  11001100  │     B      │
└────────────┴────────────┘
</pre>
 #### Grandezas de Armazenamento de Informação

 ##### Número de Bits:
  Se você tem um número de bytes, multiplicar o número de bytes por 8 dá o número de bits.
  * Número de bits = Número de bytes × 8<br/>
    Exemplo: Se você tem 4 bytes, o número de bits é:<br/>
    4 × 8 = 32 bits

 ##### Número de Bytes:
  Se você tem um número de bits, dividir o número de bits por 8 dá o número de bytes.
  * Número de bytes = 8 / Número de bits​<br/>
    Exemplo: Se você tem 32 bits, o número de bytes é:<br/>
    32 / 8 = 4 bytes

<pre>
      ESPAÇO      UNIDADE DE MEDIDA   NÚMERO DE CARACTERES
      8 Bits           1 BYTE                  1
    1.024 Bytes      1 KILOBYTE              1.024
  1.024 Kilobytes    1 MEGABYTE            1.048.576
  1.024 Megabytes    1 GIGABYTE          1.073.741.824
  1.024 Gigabytes    1 TERABYTE          1.099511628¹²
</pre>

 #### Sistemas Numéricos

 A quantidade de algarismos disponíveis num sistema de numeração designa-se de BASE, que significa que cada dígito representa uma potência:
  - **Binário (base 2)**: 0, 1
  - **Octal (base 8)**: 0, 1, 2, 3, 4, 5, 6, 7
  - **Decimal (base 10)**: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  - **Hexadecimal (base 16)**: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

 ##### Sistema Binário
  É o sistema mais utilizado por máquinas, uma vez que os sistemas digitais trabalham internamente com 2 estados (ligado/desligado, verdadeiro/falso, aberto/fechado). O sistema binário utiliza os símbolos: 0, 1, sendo cada símbolo designado por bit (binary digit), que é a menor unidade possível de dados.
  - 0: Representa o valor lógico Falso.
  - 1: Representa o valor lógico Verdadeiro.<br/>
  *Essa associação é amplamente utilizada em lógica digital e programação, onde 0 e 1 são usados para representar condições booleanas em expressões e operações lógicas. Por exemplo:
  * Em lógica digital, um circuito pode estar "ligado" ou "desligado", correspondendo a 1 e 0, respectivamente.
  * Em programação, muitas linguagens utilizam 0 para representar um valor booleano falso (false) e 1 para representar verdadeiro (true).

 **Conversões de Base Binária**
 - **Binário -> Decimal**<br/>
  Basta calcular a soma de cada um dos dígitos do número binário multiplicado por 2 (que é a sua base) elevado à posição colunar do número, que, da direita para a esquerda começa em 0.<br/>
  Exemplo:
<pre>
    1          1         0          0          1
  1 x 2⁴     1 x 2³    0 x 2²     0 x 2¹     1 x 2⁰
    16    +    8    +    0     +    0     +    1    = 25
</pre>
 - **Binário -> Octal**<br/>
  Separa-se os dígitos do número binário em grupos de 3 bits da direita para a esquerda, em seguida transforma-se cada grupo individual de 3 bits em octal e ao final une-se os resultados. Caso o número de dígitos do número binário não possua 3 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre>
┌─────────────────────────────────────────────────────────┐  ┌─────────────────────────────────────────────────────────┐
|    1         1         0       1         0         1    |  |              1         1       1         1         1    |
├────────────────────────────┬────────────────────────────┤  ├────────────────────────────┬────────────────────────────┤
|    1         1         0   |   1         0         1    |  |    0         1         1   |   1         1         1    |
├────────────────────────────┼────────────────────────────┤  ├────────────────────────────┼────────────────────────────┤
|1 x 2^2   1 x 2^1   0 x 2^0 |1 x 2^2   0 x 2^1   1 x 2^0 |  |0 x 2^2   1 x 2^1   1 x 2^0 |1 x 2^2   1 x 2^1   1 x 2^0 |
├────────────────────────────┼────────────────────────────┤  ├────────────────────────────┼────────────────────────────┤
|   4    +    2    +    0    |   4    +    0    +    1    |  |   0    +    2    +    1    |   4    +    2    +    1    |
├────────────────────────────┼────────────────────────────┤  ├────────────────────────────┼────────────────────────────┤
|         6_10 = 6_8         |       5_10 = 5_8           |  |        3_10 = 3_8          |         7_10 = 7_8         |
├────────────────────────────┴────────────────────────────┤  ├────────────────────────────┴────────────────────────────┤
|                           65                            |  |                            37                           |
└─────────────────────────────────────────────────────────┘  └─────────────────────────────────────────────────────────┘
</pre>
 - **Binário -> Hexadecimal**<br/>
  Separa-se o número binário em grupos de 4 bits da direita para a esquerda, em seguida transforma-se cada grupo individual de 4 bits em hexadecimal e ao final une-se os resultados em um só. Caso o número de dígitos do número binário não possua 4 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre>
┌───────────────────────────────────────────────────────────────────────────────────────────┐
|     0          1          0          1             1          0          1          1     |
├─────────────────────────────────────────────┬─────────────────────────────────────────────┤
|     0          1          0          1      |      1          0          1          1     |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|   0 x 2^3    1 x 2^2    0 x 2^1    1 x 2^0  |   1 x 2^3    0 x 2^2    1 x 2^1    1 x 2^0  |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|  0    +    4    +    0    +    1  =  5_10   |  8    +    0    +    2    +    1  =  11_10  |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|                 5_10 = 5_16                 |                 11_10 = B_16                |
├─────────────────────────────────────────────┴─────────────────────────────────────────────┤
|                                             5B                                            |
└───────────────────────────────────────────────────────────────────────────────────────────┘
┌───────────────────────────────────────────────────────────────────────────────────────────┐
|                           1          1             1          1          0          1     |
├─────────────────────────────────────────────┬─────────────────────────────────────────────┤
|     0          0          1          1      |      1          1          0          1     |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|   0 x 2^3    0 x 2^2    1 x 2^1    1 x 2^0  |  1 x 2^3    1 x 2^2    0 x 2^1    1 x 2^0   |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|  0    +    0    +    2    +    1  =  3_10   |  8    +    4    +    0    +    1  =  13_10  |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|                 3_10 = 3_16                 |                 13_10 = D_16                |
├─────────────────────────────────────────────┴─────────────────────────────────────────────┤
|                                             3D                                            |
└───────────────────────────────────────────────────────────────────────────────────────────┘
</pre>
 ##### Sistema Octal
  É um sistema de numeração de base 8, ou seja, recorre a 8 símbolos (0, 1, 2, 3, 4, 5, 6, 7) para representação de um determinado valor. Cada dígito no sistema octal representa uma potência de 8. É menos comum do que os sistemas binário e decimal, mas ainda é utilizado em algumas áreas, especialmente em computação e sistemas digitais.

 **Conversões de Base Octal**
 - **Octal -> Decimal**<br/>
  Obtida através da soma dos dígitos do número octal multiplicados pela base 8 elevada à posição colunar do dígito, começando em 0 da direita para a esquerda.<br/>
  Exemplo:
<pre>
    3          3          1          |   4          5
  3 x 8²     3 x 8¹     1 x 8⁰       | 4 x 8¹     5 x 8⁰
   192    +   24     +    1    = 217 |   32         5    = 37
</pre>
 - **Octal -> Binário**<br/>
  Decompõe-se o número octal diretamente em binários em grupos de 3 dígitos. Caso o número de dígitos do número binário não possua 3 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre>
┌───────────────────────┬───────────────────────┬───────────────────────┐
|           1           |           2           |           3           |
├───────────────────────┼───────────────────────┼───────────────────────┤
|        divisor <─┐    |                       |                       |
| dividendo <─┐    |    |      2 |⎯2⎯           |      3 |⎯2⎯           |
|             1  |⎯2⎯   |      0   1  |⎯2⎯      |      1   1 |⎯2⎯       |
|    resto <─ 1    0    |          1    0       |          1    0       |
|      quociente <─┘    |                       |                       |
├───────┬───────┬───────┼───────┬───────┬───────┼───────┬───────┬───────┤
|   0   |   0   |   1   |   0   |   1   |   0   |   0   |   1   |   1   |
└───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┘
</pre>
 - **Octal -> Hexadecimal**<br/>
  Transforma-se primeiro o octal em binário e em seguida o binário em hexadecimal.<br/>
  Exemplo:
<pre>
┌─────────────┬─────────────┬─────────────┐
|    octal    >   binário   > hexadecimal |
├─────────────┼─────────────┼─────────────┤
|     315     >  011001101  >      CD     |
└─────────────┴─────────────┴─────────────┘
┌───────────────────────┬───────────────────────┬───────────────────────┐
|           3           |           1           |           5           |
├───────────────────────┼───────────────────────┼───────────────────────┤
|                       |                       |  5 |⎯2⎯               |
|      3 |⎯2⎯           |        1 |⎯2⎯         |  1   2 |⎯2⎯           |
|      1   1 |⎯2⎯       |        1   0          |      0   1 |⎯2⎯       |
|          1    0       |                       |          1    0       |
|                       |                       |                       |
├───────┬───────┬───────┼───────┬───────┬───────┼───────┬───────┬───────┤
|   0   |   1   |   1   |   0   |   0   |   1   |   1   |   0   |   1   |
└───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┴───────┘
┌───────────────────────────────────────────────────────────────────────────────────────────┐
|     1          1          0          0             1          0          1          1     |
├─────────────────────────────────────────────┬─────────────────────────────────────────────┤
|     1          1          0          0      |      1          0          1          1     |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|   1 x 2^3    1 x 2^2    0 x 2^1    0 x 2^0  |  1 x 2^3    1 x 2^2    0 x 2^1    1 x 2^0   |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|  8    +    4    +    0    +    0  =  12_10  |  8    +    4    +    0    +    1  =  13_10  |
├─────────────────────────────────────────────┼─────────────────────────────────────────────┤
|                12_10 = C_16                 |                 13_10 = D_16                |
├─────────────────────────────────────────────┴─────────────────────────────────────────────┤
|                                             CD                                            |
└───────────────────────────────────────────────────────────────────────────────────────────┘
</pre>
 ##### Sistema Decimal
  O sistema decimal é o sistema mais utilizado pelos seres humanos, normalmente para indicar quantidades, e é constituído por 10 algarismos: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9. No sistema decimal, cada algarismo tem um valor posicional, ou seja, cada algarismo tem um peso de acordo com a sua posição na presentação do valor.
<pre>
  Peso  10² 10¹ 10⁰
         │   │   │
         1   3   5
        /    │    \
     1x10²  3x10¹ 5x10⁰ = 237
</pre>
 **Conversões de Base Decimal**
 - **Decimal -> Binário**<br/>
  Dividir sucessivamente por 2 o número decimal e os quocientes que vão sendo obtidos, até que o quociente de uma das divisões seja 0. O resultado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplo:
<pre>
           25 |⎯2⎯
            1  12 |⎯2⎯
            |  0   6  |⎯2⎯
            |  |   0    3 |⎯2⎯
            |  |   |    1   1 |⎯2⎯
            v  |   |    |   1   0
  0 1 1 0 0 1  |   |    |   |   |
  ^ ^ ^ ^ ^    |   |    |   |   |
  | | | | └────┘   |    |   |   |
  | | | └──────────┘    |   |   |
  | | └─────────────────┘   |   |
  | └───────────────────────┘   |
  └─────────────────────────────┘
</pre>
 - **Decimal -> Octal**<br/>
  Divisões sucessivas por 8. O resulado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplos:
<pre>
      217 |⎯8⎯          |  37 |⎯8⎯
      1   27  |⎯8⎯      |   5   4 |⎯8⎯
      |    3    3 |⎯8⎯  |   ↓   4   0
      |    |    3   0   |  45   |
      |    |    |       |  ^    |
      v    |    |       |  └────┘
  3 3 1    |    |       |
  ^ ^      |    |       |
  | └──────┘    |       |
  └─────────────┘       |
</pre>
 - **Decimal -> Hexadecimal**<br/>
  Divisões sucessivas por 16. O resulado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplos:
<pre>
  223 |⎯16⎯        76 |⎯16⎯
    15   13 |⎯16⎯   12   4  |⎯16⎯
    |    13    0     ↓   4     0
    |    |          4C   |
    |    |          ^    |
    v    |          └────┘
  D F    |
  ^      |
  └──────┘
</pre>
 ##### Sistema Hexadecimal
  Muito utilizado na programação de microprocessadores, especialmente nos equipamentos de estudo e sistemas de desenvolvimento. Uitliza os símbolos: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9 do sistema decimal e as letras A = 10, B = 11, C = 12, D = 13, E = 14 e F = 15. Esse sistema é frequentemente usado em programação para representar endereços de memória e valores de cores em HTML/CSS (como #FF5733, que representa um tom específico de laranja), é útil para representar grandes números binários de uma maneira mais compacta.

  Exemplo: 10101100 em binário é AC em hexadecimal.
  
 **Conversões de Base Hexadecimal**
 - **Hexadecimal -> Decimal**<br/>
  Realizada através da soma dos dígitos hexadecimais multiplicados pela base 16 elevada à posição colunar contando da direita para a esquerda, começando em 0, de forma semelhante à conversão de binários em decimais.<br/>
  Exemplos:
<pre>
┌───────────────────────┬───────────────────────┬───────────────────────┐  ┌───────────────────────┬───────────────────────┐
|           1           |           0           |           A           |  |           C           |           B           |
├───────────────────────┼───────────────────────┼───────────────────────┤  ├───────────────────────┼───────────────────────┤
|         1 x 16^2      |         0 x 16^1      |        10 x 16^0      |  |        12 x 16^1      |        11 x 16^0      |
├───────────────────────┴───────────────────────┴───────────────────────┤  ├───────────────────────┴───────────────────────┤
|          256          +           0           +        10       = 266 |  |          192          +        11       = 203 |
└───────────────────────────────────────────────────────────────────────┘  └───────────────────────────────────────────────┘
</pre>
 - **Hexadecimal -> Binário**<br/>
  Decompõe-se o número hexadecimal diretamente em binários de 4 dígitos. Sempre que o quociente da divisão for maior que 0, em binário ele representa 1.<br/>
  Exemplo:
<pre>
┌───────────────────────┬───────────────────────┬───────────────────────┐
|           1           |           2           |           F           |
├───────────────────────┼───────────────────────┼───────────────────────┤
|                       |                       |  16 |⎯2⎯              |
|        1 |⎯2⎯         |      2 |⎯2⎯           |   0   8 |⎯2⎯          |
|        1   0          |      0   1 |⎯2⎯       |       0   4 |⎯2⎯      |
|                       |          1   0        |           0   2 |⎯2⎯  |
|                       |                       |               0   1   |
├─────┬─────┬─────┬─────┼─────┬─────┬─────┬─────┼─────┬─────┬─────┬─────┤
|  0  |  0  |  0  |  1  |  0  |  0  |  1  |  0  |  1  |  1  |  1  |  1  |
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
</pre>
 - **Hexadecimal -> Octal**<br/>
  Transforma-se primeiro o hexadecimal em binário e em seguida o binário em octal.<br/>
  Exemplo:
<pre>
┌───────────────────────┬───────────────────────┬───────────────────────┐
|           1           |           2           |           F           |
├───────────────────────┼───────────────────────┼───────────────────────┤
|                       |                       |  16 |⎯2⎯              |
|        1 |⎯2⎯         |      2 |⎯2⎯           |   0   8 |⎯2⎯          |
|        1   0          |      0   1 |⎯2⎯       |       0   4 |⎯2⎯      |
|                       |          1   0        |           0   2 |⎯2⎯  |
|                       |                       |               0   1   |
├─────┬─────┬─────┬─────┼─────┬─────┬─────┬─────┼─────┬─────┬─────┬─────┤
|  0  |  0  |  0  |  1  |  0  |  0  |  1  |  0  |  1  |  1  |  1  |  1  |
└─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┴─────┘
┌─────────────────────────────────────────────────────────────────────────────────┐
|   1         0         0       1        0        1       1         1         1   |
├───────────────────────────┬─────────────────────────┬───────────────────────────┤
|   1         0         0   |   1        0        1   |   1         1         1   |
├───────────────────────────┼─────────────────────────┼───────────────────────────┤
|1 x 2^2   0 x 2^1   0 x 2^0|1 x 2^2  0 x 2^1  1 x 2^0|1 x 2^2   1 x 2^1   1 x 2^0|
├───────────────────────────┼─────────────────────────┼───────────────────────────┤
|     4   +   0   +   0     |    4   +   0   +   1    |     4   +   2   +   1     |
├───────────────────────────┼─────────────────────────┼───────────────────────────┤
|        4_10 = 4_8         |       5_10 = 5_8        |        7_10 = 7_8         |
├───────────────────────────┴─────────────────────────┴───────────────────────────┤
|                                        457                                      |
└─────────────────────────────────────────────────────────────────────────────────┘
</pre>

 ## 3. Tabela ASCII e Conversores.
 A tabela ASCII ([American Standard Code for Information Interchange](https://www.ascii-code.com/pt)) é um padrão que representa caracteres alfanuméricos e símbolos em forma de códigos numéricos para garantir a compatibilidade entre sistemas e dispositivos.

<a href="https://github.com/raphaelkaique1/study#conceitos_basicos">back</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.1-hardware_e_software/sistemas_operacionais.md">next</a>
