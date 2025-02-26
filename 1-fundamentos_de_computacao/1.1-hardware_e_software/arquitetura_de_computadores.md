# Arquitetura de Computadores
Um computador é uma ferramenta de propósito geral construída em torno de um microprocessador. Aprofundando um pouco, é um equipamento composto por uma série de circuitos eletrônicos capaz de receber, armazenar, comparar, combinar, processar e exibir uma determinada informação com elevada velocidade.<br/>
Basicamente tem a função de receber dados através de dispositivos de entrada, processar e retornar estes dados, agora denominados como Informação através de algum dispositivo de saída. Estes dados de entrada, processamento e o retorno da informação, normalmente se dão através de softwares que usam a capacidade do hardware para a execução de tais tarefas.

## Hardware
A definição do *hardware* é ser a parte física do computador, ou seja, o conjunto de componentes eletrônicos, circuitos integrados e placas, que se comunicam através de barramentos.

## Software
É a parte *lógica* do computador, podendo ser definido como um conjunto de instruções passo-a-passo que orientam o computador a executar determinadas funções para produzir um resultado desejado.

## Tipos de computadores
Atualmente existe uma grande quantidade de dispositivos que nos possibilitam utilizar suas funções como processadores de dados, variando de tamanho, poder de processamento, funcionalidades específicas. Os tipos mais comuns são:

**Mainframes**: são computadores de grande porte, com grande capacidade de processamento e armazenamento. Normalmente são utilizados por grandes empresas ou organizações. Foram muito utilizados quando começaram a ser desenvolvidos os microcomputadores ou, antes disso, devido à necessidade de execução de programas que exigiam alto desempenho das máquinas, porém, os microcomputadores ainda não possuíam capacidade para esse tipo de processamento. Atualmente os microcomputadores podem executar programas que exigem alto desempenho dos computadores, e quase não dependem mais do processamento em mainframes, porém, ainda são bastante utilizados, por exemplo, onde é necessário grande acesso de usuários ou grandes bancos de dados como por exemplo em bancos.

**Servidores**: Computadores preparados para fornecer determinados serviços aos usuários em uma rede de computadores. Os computadores utilizados para esta finalidade podem ser computadores com configurações normais, como um desktop por exemplo, ou computadores preparados para um desempenho melhor, dependendo da necessidade de performance como em um Servidor de Arquivos, ou de Impressão entre outros.

**Microcomputadores**: Também chamados de **PC — Personal Computer** ou **Desktop**, são computadores de pequeno porte. Atualmente há uma grande variedade de marcas e modelos, sendo ainda possível a montagem de um computador pelo próprio usuário utilizando componentes adquiridos separados.

**Computadores Portáteis**: São os computadores compactos que utilizam alta tecnologia. Em sua grande maioria, possuem características iguais ou superiores aos Desktops. Possuem a grande vantagem de possibilitar ao usuário o seu transporte devido ao tamanho e peso reduzidos, além de ocuparem pouco espaço físico para seu manuseio. Até algum tempo o seu valor era bem superior aos Desktops, porém, com o avanço tecnológico e aumento na sua comercialização, o seu valor tem caído, tornando os valores equivalentes aos computadores de mesa, são eles os Laptops, Notebooks e Ultrabooks.

**Computadores de mão**: São Computadores projetados com tecnologia que visa compactar tanto os equipamentos quanto a forma de armazenar dados. Normalmente possuem várias funcionalidades executadas em um Desktop, como por exemplo, acesso à Internet em celulares, porém, com a grande facilidade de transporte e manuseio. São eles Handhelds ou PDAs, celulares, Smartphones, Tablets, Smartwatches e etc.

## Arquitetura Aberta
Em 1981 a empresa IBM lança um modelo de microcomputador, chamado **PC – Personal Computer** que revolucionou o mercado de microcomputadores, pois este novo padrão possibilitou o desenvolvimento de computadores montados com componentes de fabricantes diferentes. Portanto, hoje podemos dizer que a grande maioria das empresas do ramo de fabricação de computadores atua como “montadoras” de computadores. Daí o termo Arquitetura Aberta.<br/>
Os diferentes fabricantes dos diversos componentes de um computador seguem padrões que possibilitam a conexão de um dispositivo de um determinado fabricante ao dispositivo de outro fabricante, como por exemplo, uma placa-mãe da marca ASUS utilizando um processador Intel ou AMD. Isso facilita muito caso o usuário queira adquirir um componente para aumentar o desempenho do seu computador, pois poderá adquirir um componente de menor preço equivalente ao de maior preço ou marca mais conhecida. Além da possibilidade de podermos montar nosso próprio computador adquirindo componentes avulsos.

 ## 1. Conceito de Arquitetura de Computadores
 Arquitetura se refere a um projeto de uma construção. Ela vai adotar uma série de ações para organizar e criar espaços que possam dar condições a diferentes atividades humanas. Em termos de Tecnologia da Informação, a arquitetura da computação trata-se de um projeto que define os parâmetros e o modo em que os diversos componenetes de um computador devem ser organizados para não apenas entrar em operação, mas também para alcançar a qualidade e o desempenho necessários, a fim de ser aplicado na função que foi designado.

 ## 2. Principais Partes de um Computador: Modelo de Von Neumann
 Os componentes do modelo de Von Neumann são usados até hoje, mesmo nos equipamentos mais modernos, e constitui-se por:
  - **Unidade de Controle - UC**: Busca cada instrução dos programas na memória e executa sobre os dados de entrada. Em outras palavras, é o "centro nervoso" do computador, pois assume todas as tarefas de controle das ações a serem realizadas pelo computador, comandando os demais componentes de sua arquitetura.
  - **Unidade Lógica e Aritmética - ULA**: Parte da unidade central de processamento (UCP), é onde ocorrem as operaçõe aritméticas, cálculos e operações lógicas.
  - **Memória**: Armazena dados e programas.

	 * A unidade de Controle (UC) e a Unidade Lógica e Aritmética (ULA) formam a Unidade Central de Processamento (UCP), ou simplesmente "processador". A Unidade Lógica e Aritmética (ULA), a Unidade de Controle (UC) e a Memória (RAM/ROM/HDD) trabalham em conjunto para executar instruções, processar dados e armazenar informações.
	 * A memória - componente crucial nesse processo - guarda os dados e as instruções que serão processados pela CPU. No computador existem alguns tipos de memória, como a memória RAM, que é volátil e rápida, armazena as informações temporariamente enquanto o computador está ligado, enquanto a memória ROM por exemplo, é "não volátil", armazenando informações permanentes, como a BIOS.
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
 A ULA realiza operações lógicas e aritméticas sobre um ou mais operandos, ou seja, realiza ações indicadas nas instruções, executando operações númericas (aritméticas) e não numéricas (lógicas), além da preparação de informações para desvio do programa. As operações da ULA são geralmente muito simples, funções mais complexas, exigidas pelas instruções da máquina são realizadas pela ativação sequencial das várias operações básicas disponíveis. De modo geral, a ULA é responsável por realizar cálculos matemáticos e operações lógicas dentro da CPU, por exemplo, ao somar dois números em um programa, essa operação ocorre na ULA. Exemplos de operações realizadas pela ULA:
 - soma de dois operandos
 - negação de um operando
 - inversão de um operando
 - AND ("E" lógico) de dois operandos
 - OR ("OU" lógico) de dois operandos
 - deslocamento de um operando para a esquerda ou para a direita
 - rotação de um operando para a esquerda ou para a direita

 Enquanto a ULA realiza as operações matemáticas e lógicas, a UC controla o fluxo de execução das instruções, coordenando a comunicação entre os componentes da UCP. A UC atua como o "cérebro" da CPU, garantindo que cada instrução seja processada corretamente. Ela decodifica instruções, controla a ULA e gerencia o fluxo de dados dentro da CPU. Suas principais funções incluem:
 - controle e coordenação dos processos
 - decodificar instruções da memória e enviar sinais de controle
 - gerar sinais para a ULA, registradores e barramentos

 **Memória**<br/>
  A memória de um sistema de computador tem a função de armazenar dados e instruções; é organizada em posições, que podem ser visualizadas como elementos em uma matriz. Cada elemento da memória tem um endereço, assim, pode-se falar de uma memória que tenha "x" posições: cada posição pode ser referenciada diretamente de acordo com a sua colocação na sequência. Por exemplo, se uma memória tem 4.096 posições, existem então posições de memória em 0, 1, 2, 3, ..., 4.094 e 4.095. Quando um endereço de memória aparece nos circuitos de controles conectados à memória, dependendo do trabalho associado com aquele endereço o conteúdo (o valor que está na posição) será trazido da memória para os circuitos da unidade de processamento ou a informação na unidade de processamento será armazada na memória. As instruções em um computador são executadas em uma sequência determinada por suas posições de memória. Há vários tipos específicos de memória em um computador. Como por exemplo a **RAM**, que é uma memória de armazenamento aleatória, ou seja, sua estrutura de armazenamento permite que o processador utilize qualquer endereço de memória para armazenar os dados com que está lidando. A **ROM** é outro exemplo, que é uma memória somente de leitura, é um tipo de memória que só permite a leitura de dados, que são gravados pelo fabricante e não podem ser alterados, ela é "não volátil", ou seja, as informações são armazenadas permanentemente no chip, sem depender de corrente elétrica, e é muito usada para o armazenamento do firmware — software que é raramente alterado,  informações importantes e essenciais para o funcionamento dos componentes eletrônicos e os dados e instruções importantes do sistema que não se alteram. E também o **HD**, que é uma unidade de memória que armazena os dados de forma sequêncial — diferente da RAM que armazena os dados de uma forma "lógica" determinada pelo processador, ou seja, de forma virtual, o HD ocupa o espaço disponível logo após o último espaço preenchido, porque como as informações são gravadas de forma permanente, este formato permite um controle maior sobre os dados.

 **I/O**<br/>
  Dispositivos em que o usuário interage com a máquina inputando e manipulando dados para processamento e recebendo informação como resultado. Teclado e mouse são exemplos de dispositivos de entrada enquanto tela e impressora são exemplos de dispositivos de saída. Para que o computador possa processar as entradas e saídas existem os barramentos, que são circutos elétricos que carregam as energias através de pulsos elétricos equivalentes à cada informação.<br/>
  Os computadores recebem entradas e produzem saídas. Quando digitamos um endereço de site, estamos efetivamente fornecendo os dados de entrada: "Pegue isso!", e, quando o computador exibe a página inicial, isso é saída: "Aqui está!". Os computadores trabalham principalmente com entradas de dados, realizam trabalho e produzem saídas.<br/>
  Algumas saídas de computador movem máquinas ou enviam dados para outros computadores. Os humanos não veem algumas saídas, mas para a maioria dos dispositivos são usados todos os dias possuem maneiras de criar uma intercafe de interação entre uma pessoa com seu dispositivo de computação. O humano fornece a entrada e vê, ouve ou sente a saída. Para a conexão dos periféricos, existem interfaces integradas ao computador que recebem e tratam os dados e os enviam de volta. Um exemplo é uma placa de vídeo, que transforma os dados de imagem oriundos do computador em um formato que pode ser exibido pelo monitor. Outro exemplo de interface pode ser dado com a placa de som, que é usada pelo computador para gravar e reproduzir áudio, convertendo som analógico em informações digitais e vice-versa.<br/>
  - Periféricos são dispositivos que criam interfaces com dispositivos de computação.
    - Teclados e microfones são periféricos comuns que fornecem entradas baseadas em linguagem.
    - Mouses e telas sensíveis ao toque permitem que você navegue por visuais como ícones para dizer ao computador o que você quer fazer sem ter que usar palavras.
    - Impressoras, telas e alto-falantes permitem que você veja, sinta e ouça as saídas de dispositivos de computação.
<pre>
Barramentos para dispositivos de entrada e saída:
┌─────────────┐        BARRAMENTOS        ┌─────────────┐
|             ├─────────────────┬─────────┤   MEMÓRIA   |
|     UCP     ├─────────────┬───|─────────┤             |
|             ├─────────┬───|───|─────────┤  PRINCIPAL  |
└─────────────┘         |   |   |         └─────────────┘
                ┌───────┴───┴───┴───────┐
                | DRIVERS CONTROLADORES |
                └───────────┬───────────┘
                ┌───────────┴───────────┐
                | ENTRADA E SAÍDA (I/O) |
                └───────────────────────┘
</pre>
 ### Ciclos de Execução da CPU
  Após a entrada de dados, ocorre o processamento, função do processador, que irá efetuar o processamento de acordo com o objetivo final do processamento, por exemplo, se pressionarmos alguma tecla, será feito o processamento dos sinais elétricos emitidos pelo teclado, e depois exibido o caractere digitado. Quando a CPU quer ler uma palavra, ou da memória ou de uma porta de I/O, ela coloca o endereço necessário nas linhas de endereço do barramento e, então, envia um sinal READ em uma linha de controle do barramento. Uma segunda linha de sinal é usada para dizer se é necessário espaço de I/O ou espaço de memória. Se for espaço de memória, a memória responderá a requisição, se for espaço de I/O, é o dispositivo de I/O correspondente que responderá. Um programa se torna um processo quando um arquivo executável é carregado na memória.

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
 De forma prática, podemos então imaginar o computador divido nas seguintes partes:
 - **MEMÓRIA**: O armazenamento pode ocorrer de duas formas, temporariamente ou permanentemente, onde, o armazenamento temporário ou volátil ocorre na memória principal, onde os dados ainda estão sendo ou podem ser utilizados pelo processador, ou então, caso seja necessário, a informação poderá ser armazenada permanentemente, onde ocorre a gravação em algum dispositivo de armazenamento secundário, como por exemplo: Disco Rígido, Pendrive e etc.
    1. **Memória Volátil**
       - **MEMÓRIA PRINCIPAL**: É o sistema de memória que está em contato direto com a CPU, dando suporte na entrega dos dados e operações. Ela é responsável por armazenar temporariamente os dados e instruções que a CPU precisa para executar processos. Sua velocidade se deve por, diferentemente da memória permanente — que usa um sistema robusto de localização de espaços — a memória principal permite leitura e escrita em qualquer posição de memória com tempos de acesso praticamente iguais. Sua quantidade afeta diretamente o desempenho do sistema, pois define quantos processos podem rodar simultaneamente. A memória principal é essencial para o funcionamento do sistema operacional e dos programas, pois armazena: o código do SO e suas partes essenciais em uso, dados dos programas em execução, realiza o buffer temporário para transferência de arquivos e também as pilhas e heaps para o gerenciamento da memória dinâmica. Seus principais tipos são:
         - **CACHE**<br/>
         É uma memória auxiliar ultrarrápida embutida no processador (L1, L2, L3) para acelerar o acesso a dados frequentes. Ela armazena dados frequentemente acessados pela CPU para evitar buscas demoradas na RAM. Quanto maior o cache, mais rápido o processador pode acessar dados críticos.
         - **RAM**<br/>
         É a memória principal do computador, usada para armazenar dados temporários de programas e do sistema operacional enquanto estão em execução. Esta é uma área de armazenamento rápida usada para guardar dados. Ela tem de ser rápida porque se conecta diretamente ao microprocessador. Componente responsável por direcionar o processador, enviando as instruções e informações necessárias para que os dados possam ser processados. Não guarda as informações fisicamente mas sim de forma local, ou seja, de forma virtual, o que significa que é preciso que haja energia no sistema para que ela possa manter a informação na memória, fazendo com que assim ela seja uma memória temporária. Os computadores precisam armazenar informações que eles processam. A memória de acesso aleatório é como uma mesa de trabalho que contém coisas que ela precisa ou está trabalhando diretamente, ela pode pegar um arquivo e deixá-lo na mesa para consultar durante o trabalho, e assim pegando documentos que precisa imediatamente e deixá-los em seu espaço de trabalho. Quando ela termina de usá-los, os guarda de volta no armazenamento de longo prazo — ou seja, na gaveta de arquivos. Dessa forma, a RAM retém informações temporariamente enquanto a CPU (ou a GPU) as usa. O processador obtém RAM de qualquer posição de armazenamento, por isso é chamado de acesso aleatório. Sua principal função é facilitar o acesso e agilizar o processamento de dados por parte do processador, fazendo com que a busca dos dados recentemente acessados seja realizada em um curto espaço de tempo. A RAM vem em uma placa ou chip dentro do computador. Em geral, dependendo do que sua CPU é capaz de lidar, quanto mais RAM você tiver, mais rápido verá os resultados em seu computador, e, quando o computador é desligado, a informação na RAM é apagada.
         - **SWAP**<br/>
         Espaço no disco rígido usado para armazenar temporariamente dados da memória RAM, chaveando-os quando necessário. Quando a RAM está cheia, o sistema usa um arquivo no disco para simular memória adicional. O problema é que HDs e SSDs são muito mais lentos que a RAM, então o desempenho cai quando há muito uso da memória virtual. Em Linux, essa memória virtual é chamada de swap partition.
    2. **Memória Secundária**
       - **HDD**: Guarda informações de forma física, ou seja, nele é escrito a informação de forma persistente para que ela seja armazenada mesmo que o sistema não esteja energizado. A única forma de se perder uma informação neste tipo de armazenamento é sobrescrevendo a memória no seu endereço físico ou danificando e corrompendo o HD. Então, o computador grava os dados permanentes no disco rígido, no disco estes dados são salvos mesmo que não haja energia no sistema. O sistema operacional, programas e arquivos são armazenados nesta unidade. Os computadores usam 2 tipos de unidades de disco para armazenamento de longo prazo:
         - **HD**: O **Hard Disk** é uma unidade de disco rígido que contém um disco magnético giratório que armazena dados. Este prato tem compartimentos, e um braço se move pelos compartimentos para ler e gravar dados nestes compartimentos. Existem vários tipos de interfaces para discos rígidos diferentes: IDE/ATA, Serial ATA, SCSI, Fibre channel, SAS entre outras.
         - **SSD**: Esta é uma unidade de estado sólido que não tem partes móveis. Possui memória flash como um pendrive e armazena dados em um chip de computador semelhante à RAM, mas os dados armazenados em SSDs são permanentes. Eles não são apagados quando a energia do sistema é desligada. Em relação ao sistema operacional, por exemplo, o SSD leva um milésimo de segundo para inicializar. O controlador, por sua vez, gerencia a forma como os dados são transferidos entre o computador e a memória flash do disco, administrando o cache para oferecer maior agilidade ao computador. A **memória flash** é uma memória baseada em um tipo de ROM chamada **EEPROM — Electrically Erasable Programmable Read-Only Memory**, ou *memória apenas de leitura programável e apagável eletricamente*, a memória Flash fornece armazenamento rápido e permanente. Os cartões CompactFlash, SmartMedia e PCMCIA são tipos de memória Flash.
 - **PROCESSADOR**: Por que não usar somente o HD para que não haja risco de perder as informações? Pelo fato de que a memória RAM é muito mais rápida que o HD. As informações guardadas na memória (RAM ou HD) precisam ser processadas para serem manipuladas, e quem processa essas informações é a CPU. Vamos imaginar que queremos somar os valores 5 e 6, ambos os valores estão guardados em posições de memória aleatórias dentro da RAM. Para realizar a soma destes valores, os 2 números são levados até a CPU (entrada) onde serão somados (processados) e devolvidos para a memória juntamente com o resultado (saída) que é alocado em outra nova posição de memória. Ou seja, nenhuma das memórias não servem para processamento, apenas armazenar dados, e este tipo de transição entre a memória e a CPU acontece milhares de vezes dentro de um computador, daí a necessidade de se ter uma memória rápida para enviar e receber informações para a CPU. Visto que o HD precisa de um maior tempo de processamento já que seu processo de armazenamento de memória consome mais recursos, sua utilidade como memória auxiliar da CPU não é viável, tornando seu melhor uso como banco de dados.<br/>
 O **microprocessador**, geralmente chamado simplesmente de **processador**, é um circuito integrado que realiza as funções de cálculo e a tomada de decisões de um computador. Todos os computadores e equipamentos eletrônicos baseiam-se nele para executar suas funções. O processador incorpora as funções de uma *unidade central de processamento* de um computador em um único circuito integrado, ou no máximo alguns circuitos integrados. É um dispositivo multifuncional programável que aceita dados digitados como entrada, processa de acordo com as instruções armazenadas em sua memória e fornece resultados como saída. Processadores operam com números e símbolos representados no sistema binário.
   1. A CPU primeiro busca dados no cache (se disponível).
   2. Se não estiver no cache, busca na RAM.
   3. Se a RAM estiver cheia, o sistema move os dados menos usados para a memória virtual (swap).
   - **CPU**<br/>
   O processador é o "cérebro" do computador, sendo a parte onde o computador lida com o processamento de dados. Estes processadores são a implementação do modelo simples de Turing, atualizando o estado de milhões de 1s e 0s a cada segundo. A entrada de dados os entrega para a CPU, que coleta e transforma em informação entregando um resultado. Responsável pela execução das instruções num sistema, o microprocessador determina em certa medida a capacidade de processamento do computador e também o conjunto primário de instruções que ele compreende. O sistema operativo de um PC é construído sobre este conjunto. <br/>
   O *chip* da CPU é uma pequena placa de circuito, ou *wafer*, que é composta de transistores, que são semicondutores de sinais elétricos. Esses transistores são agrupados em núcleos de processamento dentro da CPU. Algumas CPUs têm processadores gráficos integrados. Conforme ela funciona, a CPU gera calor. A CPU geralmente tem seu próprio  ventilador chamado *fan*.<br/>
   Geralmente, um microprocessador é um circuito integrado formado por uma camada chamada de *mesa epitaxial de silício*, trabalhada de modo a formar um cristal de extrema pureza, laminada até uma espessura mínima com grande precisão, depois cuidadosamente mascarada por um processo fotográfico e dopada pela exposição de altas temperaturas em fornos que contêm misturas gasosas de impurezas. Este processo é repetido tantas vezes quanto necessário até a formação da microarquitetura do componente.<br/>
   O próprio microprocessador subdivide-se em várias unidades, trabalhando em altas frequências. A ULA é a unidade responsável pelos cálculos aritméticos e lógicos e os registradores são parte integrante do microprocessador na família x86, por exemplo.<br/>
   Embora seja a essência do computador, o microprocessador diferente do micro controlador, está longe de ser um computador completo. Para que possa interagir com o usuário ele precisa de: memória, dispositivos de entrada e saída, um clock, controladores e conversores de sinais, entre outros. Cada um desses circuitos de apoio interage de modo peculiar com os programas e dessa forma, ajuda a moldar o funcionamento do computador.<br/>
   Desde a criação da primeira CPU a única coisa em que se pensava era em como aumentar a velocidade (em GHz) do processador, fazendo o mesmo operar a frequências cada vez mais altas. Depois de mais de vários anos usando essa técnica, ganhando em desempenho mas perdendo em altas temperaturas, os engenheiros começaram a estudar outras formas de potencializar os microchips, pois quanto maior era a velocidade mais energia era necessária para manter os elevados cálculos por segundo, sendo assim, os processadores atingiam temperaturas cada vez mais altas, exigindo dissipadores de calor maiores. Pensando nisso, foram criados os primeiros MULTI-CORES, que possuíam vários núcleos em um único chip. Com isso todas as tarefas do computador eram divididas em ambos os núcleos, fazendo com que não houvesse a necessidade de altas frequências para obter desempenho na CPU. Isso diminuiu a temperatura dos cores e também o consumo de energia, aumentando também a eficiência na dissipação de calor. Com o aprimoramento das técnicas de fabricação dos multi-cores, os processadores foram ficando cada vez menores e mais velozes, mas dessa vez aumentando também a quantidade de núcleos no mesmo chip. A família Core da Intel foi a primeira a inovar e trazer o desempenho multi-núcleo para os computadores, tanto desktop quanto notebooks, mas com o lançamento dos modelos I3, I5 e o mais potente para a época, o Core I7, superaram novamente as expectativas. Com 32nm e podendo atingir clocks de até 3,33GHz, além de possuir até 6 núcleos físicos (modelo I7 980X), os cores possuaim tecnologia Hyper-Threading, que simulavam núcleos virtuais para a CPU, podendo chegar até 12 núcleos (6 físicos e os outros 6 com hyper-threading), otimizando seu uso em múltiplas tarefas. Todos receberam também chip gráfico Intel e controlador de memória, deixando a CPU responsável também pelas memórias RAM e processamento gráfico.

![Image](https://github.com/user-attachments/assets/fd520bf3-0d08-4b29-8543-05c7cf17b46e)

###### MICROCONTROLADOR — MCU
Diferente de um processador — que é projetado para alto desempenho e processamento — que não possui memória interna e nenhum periférico integrado — e por isso requer componentes externos como RAM, ROM e periféricos para funcionar — o **micro controlador** é um circuito integrado projetado para tarefas específicas e sistemas embarcados que contém processador (CPU), memória (RAM, ROM) e periféricos (GPIO, ADC, PWM e etc) no mesmo chip.<br/>
É usado em automação e IoT, suas plataformas incluem o ESP32 e STM32 voltados para IoT e automação, e Arduíno ou Raspberry Pi para sistemas embarcados.

##### GPU
O processamento gráfico pode ser complexo, por isso muitos computadores têm uma unidade dedidaca ao processamento gráfico. A GPU cria o que vemos em uma tela no monitor. Ela é otimizada para o processamento gráfico, que é relativamente complexo. Enquanto a GPU e a CPU fazem um trabalho semelhante, a GPU tem um foco mais restrito, seu trabalho é produzir imagens em vez de executar todas as operações do sistema.<br/>
As GPUs são muito rápidas, e, às vezes, chegam a ser mais rápidas que a própria CPU. As GPUs obtêm sua velocidade espalhando uma tarefa de processamento em muitos núcleos. Os núcleos de processamento em uma GPU são especializados principalmente para gráficos, mas também lidam com outras tarefas.<br/>
Podemos então nos perguntar, já que as GPUs são mais rápidas do que as CPUs, por que os computadores usam CPUs? Por que não construí-los com GPUs que são mais rápidas? Essa na verdade é uma boa pergunta. A resposta é que, a velocidade extra nas GPUs não é "grátis", as peças necessárias para fazer GPUs são mais caras e, se usadas em vez de uma CPU, aumentariam em muito o custo dos computadores. CPUs e GPUs, embora semelhantes em como fazem o que fazem, têm funções únicas. A CPU é construída para fazer o que faz, e o faz muito bem, e usar uma GPU para muitas dessas tarefas seria um exagero.<br/>
Existem 2 tipos de placas de vídeo:
  - **onboard**<br/>
  Placa embarcada, ou seja, a entreada de vídeo fica integrada, embutida com o restante dos componentes. Costumam ter um baixo desempenho comparadas às placas *offboard*, pois são placas usadas para taferas simples.
  - **offboard**<br/>
  Placa vendida separadamente e conectada nos *slots*. Tem um desempenho extremamente superior e são direcionadas para uso de softwares que requerem maior processamento e qualidade.

 Para que os monitores sejam conectados na placa mãe, são utilizados adaptadores de vídeo. Os mais comuns são VGA, HDMI, DVI e DP, que diferem quanto à qualidade de imagem, resolução e tipo de conectores utilizados para garantir a projeção da imagem.

 ##### NIC
 Os computadores precisam ser capazes de se comunicar entre si. O network interface controller, ou NIC, é a parte que lida com a comunicação. Ele envia dados do dispositivo e recupera dados de outras fontes para dar ao dispositivo para fazer o trabalho. Sem adaptadores de rede, tecnologias como a internet não seriam possíveis.<br/>
 Em um único computador, essas partes realizam quantidades incríveis de trabalho. Imagine processar um milhão de instruções a cada segundo. A rede e a computação em nuvem tornaram o poder da computação maior do que nunca.

 ##### Chipset
 Grupo de componentes eletrônicos de baixa capacidade em um circuito integrado, usado para gerenciar o fluxo de dados entre o processador, memória e periféricos. Todo *chipset* é dividido em 2 componentes:
 - **ponte norte**: controla os componentes internos *mais rápidos* como o processador, memória, placa de vídeo e os pentes de RAM. Tais informações são enviadas ao disco rígido.
 - **ponte sul**: controla os demais componentes, incluindo os dispositivos de entrada e saída, o disco rígido, as portas de comunicação e os *slots* de expansão.

 ##### Mainboard
 Ela é a placa de circuito principal à qual todos os outros componentes internos se conectam, por exemplo, é através de seus barramentos que o processador envia e recebe informações para a memória RAM, assim como entre todos os outros componentes como A CPU, a memória e outros componentes em geral. Outros sistemas podem ser encontrados diretamente na placa-mãe ou conectados a ela através de uma conexão secundária. Por exemplo, uma placa de som pode estar presente na placa-mãe ou a ela ser conectada através do barramento PCI. Assim, processador, memória, placa de vídeo, HD, teclado, mouse e etc, estão ligados diretamente à placa-mãe. Devido ao seu nível de complexidade, é um dos componentes que mais apresenta problemas no computador, por isso que o interessante é instalarmos um modelo de marcas conceituadas, pois a probabilidade de apresentar problemas será menor e, normalmente, terá um maior tempo na sua vida útil. Há uma grande quantidade de fabricantes deste componente, e cada fabricante possui uma grande variedade de modelos. Cada modelo é projetada para dar suporte a um determinado tipo de processador e memória RAM. Ao adquirir uma Placa-Mãe é aconselhável escolher um modelo de um fabricante conceituado e um modelo que de suporte a atualizações futuras de Hardware. Placas de baixa qualidade poderão influenciar no desempenho do computador, além de, normalmente, ter a vida útil bastante reduzida.<br/>
 Ela é o componente que conecta todos os componentes internos e externos, os quais se comunicam com o computador a partir de portas como USB (dispositivos móveis e de armazenamento), PS2 (dispositivos de entrada como mouse e teclado), entradas de vídeo para uso de monitor e dispositívos de saída, como HDMI, VGA e etc.<br/>
 Dessa forma, pode-se concluir que a placa mãe permite a conexão dos discos rígidos, das fontes de alimentação, do processador, das memórias, entre outros.<br/>
 Ela possui diversos componentes eletrônicos: circuitos integrados, capacitores, resistores, e etc; e entradas especiais chamadas *slots* para que seja possível conectar os vários dispositivos. A placa-mãe pode variar conforme o modelo e fabricante, mas há componentes que se mantêm:
 - Processador conectado ao *socket*.
 - Memória RAM.
 - Conector IDE/SATA.
 - Bios, armazenado na memória ROM.
 - Chipset: pontes norte e sul.
 - Conectores I/O.
 - Slots de expansão como PCI, ISA, AGP e etc.
 - Bateria.

 Existem alguns diferente tipos e modelos de padrões de placa-mãe:
 - **AT**<br/>
 AT é a sigla para **Advanced Technology**. Trata-se de um tipo de placa mãe já antiga, sendo muito usada entre o início dos anos 80 e final dos anos 90. Um dos fatores que contribuíram para que este padrão deixasse de ser usado — e o ATX fosse criado — foi seu espaço interno reduzido, que, com a instalação dos vários cabos do computador como o *flat cable*, alimentação e etc, dificultavam a circulação de ar, acarretando em alguns casos de dano permanentes à máquina, devido ao super aquecimento. Era exigida grande habilidade do técnico montador para aproveitar o espaço disponível da melhor maneira. Além disso, o conector de alimentação da fonte AT, que é ligado à placa-mãe, é composto por 2 plugs semelhantes, cada um contendo 6 pinos, que devem ser encaixados lado a lado, sendo que os fios de cor preta de cada um devem estar localizados no meio. Caso esse conectores fossem invertidos e a fonte de alimentação ligada, a placa-mãe era fatalmente danificada. Com o padrão AT, é necessário desligar o computador pelo SO, aguardar um alerta informando que o computador já pode ser desligado e clicar no botão "Power". Somente assim o equipamento era desligado, e isso se devia à uma limitação das fontes AT, que não foram projetadas para fazer o uso do recurso de desligamento automático.<br/>
 Estes modelos de placa-mãe são encontrados com sltos ISA, EISA, VESA em seus primeiros modelos, e ISA e PCI nos mais novos, chamados de **baby AT**, por que a placa apresentava um tamanho ainda menor que dos primeiros modelos AT. Havia somente um conector "soldado" na própria placa-mãe, que no caso, é o do teclado que segue o padrão DIN e o mouse utiliza a conexão serial. Posição dos slots de memória RAM e soquete de CPU sempre em uma mesma região na placa-mãe, mesmo quando placas de fabricantes diferentes. Nas placas AT são comuns os slots de memória SIMM ou SDRAM, podendo vir com mais de um dos padrões na mesma placa-mãe. Embora cada um destes tenha de ser utilizado individualmente
 - **ATX**<br/>
 ATX é a sigla para **Advanced Technology Extendend**. Pelo nome, é possível notar que se trata do padrão AT aperfeiçoado. Um dos principais desenvolvedores do ATX foi a Intel. O objetivo do ATX foi de solucionar os problemas citados anteriormente do padrão AT, este novo padrão apresenta uma série de melhorias em relação ao anterior. Atualmente a maioria dos computadores novos vêm baseados neste padrão. Quanto à fonte de alimentação, foram feitas melhoras significativas, a começar pelo conector de energia ligado à placa-mãe. Ao contrário do padrão AT, neste padrão não é possível encaixar o plug de forma invertida, cada orifício do conector possui um formato, o que dificulta o encaixe errado, e, se a placa mãe for alimentada por uma fonte com padrão ATX é possível ligar o computador utilizando um sinal externo como, por exemplo, uma chamada telefônica recebida pelo modem instalado. A posição dos slots de memória RAM e socket de CPU variam a posição conforme o fabricante. Nestas placas serão encontrados slots de memória SDRAM, Rambus, DDR, DDR2 ou DDR3, podendo vir com mais de um dos padrões na mesma placa-mãe. Geralmente os slots de expansão mais encontrados são os PCI, AGP, AMR/CNR e PCI-Express.<br/>
 As placas mais novas vêm com entrada na própria placa-mãe para padrões de disco rígido IDE, Serial ATA ou NVMe, e o gerenciamento de energia quando desligado o micro suporta o uso do comando "shutdown", que permite o desligamento automático do micro sem o uso da chave de desligamento encontrada no gabinete. Entre as principais características do ATX, estão:
   - Maior espaço interno, proporcionando uma ventilação adequada.
   - Conectores menores de teclado e mouse no formato mini-DIN PS/2.
   - Conectores serial e paralelo ligados diretamente na placa-mãe, sem a necessidade de cabos.
   - Melhor posicionamento do processador, evitando que o mesmo impeça a instalação de placas de expansão por falta de espaço.
 - **ITX**<br/>
 É destinada a computadores altamente integrados e compactados, com a filosofia de oferecer não o computador mais rápido do mercado, mas sim o mais barato, já que na maioria das vezes as pessoas usam um computador para poder navegar na Internet e editar textos. A intenção da placa ITX é ter tudo on-board, ou seja, vídeo, áudio, modem e rede integrados na placa-mãe. Outra diferença dessa placa-mãe está em sua fonte de alimentação. Como possui menos periféricos, reduzindo assim o consumo de energia, sua fonte de alimentação pode ser fisicamente menor, possibilitando montar um computador mais compacto
 - **LPX**<br/>
 As placas padrão LPX possuem uma característica que as torna facilmente identificáveis: Possui uma placa *"em pé"* que se encaixa em uma conexão específica da placa principal. Nesta placa é encaixada as demais placas do computador. Seu principal diferencial é **não ter slots**. *Os slots estão localizados em uma placa a parte*, também chamada **backplane**, que é encaixada à placa-mãe através de um conector especial. Seu tamanho padrão é de 22cm x 33cm. Existe ainda um padrão menor, chamado *Mini LPX*, que mede 25,4cm x 21,8cm. Esse padrão foi criado para permitir PCs mais "finos", já que as placas de expansão em vez de ficarem perpendiculares à placa-mãe — como é o normal, ficam paralelas. Após o padrão de placas-mãe ATX ter sido lançado, uma versão do LPX baseada no ATX foi lançada, chamada **NLX**. Visualmente falando é fácil diferenciar uma placa-mãe LPX de uma NLX.<br/>
 No padrão LPX o conector para a placa de expansão — *backplane* — está localizado no centro da placa-mãe e este é um conector parecido com um slot — conector "fêmea".<br/>
 Já no padrão NLX o conector para a placa de expansão está localizado em uma das laterais da placa, e é um contato de borda contendo 340 pinos, similar ao usado por placas de expansão — ou seja, é um conector "macho".

 Quanto ao tipo de Placas-Mãe, existem vários modelos, porém, os modelos mais encontrados atualmente são: AT (Advanced Technology) e ATX (Advanced Technology Extended).

 ###### Barramentos
 Os barramentos são vias de comunicação entr os diversos componentes da placa-mãe. Houve uma grande evolução dos barramentos desde o surgimento com os slots ISA e as portas seriais até os slots PCI Express e portas USB 3.0.<br/>
 O grande problema do surgimento de novos barramentos é que quase sempre os dispositivos são incompatíveis com a versão anterior, o que obriga o usuário a descartar um componente não por algum defeito, mas sim por simples problema de incompatibilidade. Um exemplo disso são as placas de vídeo para barramento AGP e as novas PCI Express 16x.<br/>
 **Apesar de possuírem o mesmo nome, não podemos confundir _barramentos_ com _slots_:**
 - **barramentos**: são as vias de comunicação entre os dispositivos através de impulsos elétricos.
 - **slots**: são conectores ou encaixes para placas de expansão.

 Os barramentos são divididos em 2 tipos: Barramento Local e Barramento de Expansão.
 - **Barramento Local**<br/>
 Também chamado de **FSB — Front Side Bus**, consiste em um barramento de alta velocidade que trabalha na mesma frequencia do processador. Responsável pela comunicação entre processador, Chipset Ponte Norte, Memória RAM e Barramento AGP ou PCI-Express.

 - **Barramento de Expansão**<br/>
 São os barramentos responsáveis por possibilitar a conexão de placas de expansão no computador, tais como: Placa de vídeo, Placa de Som, Placa de rede e etc. Existe uma grande variedade de barramentos. Os principais são:
   - ISA (Industry Standard Architecture)
   - EISA (Extend Industry Standard Architecture)
   - VLB (Vesa Local Bus – VESA)
   - AMR (Audio and Modem Riser) e CNR (Communications and network Riser)
   - PCI (Peripherical Component Interconect)
   - AGP (Accelerated Graphics Port)
   - PCIe – Express
   - USB – Universal Serial Bus
   - Firewire (IEEE 1394)

 ###### Slots
 Outro componente é o **slot**. O barramento é a maneira mais comum de conectar componentes adicionais ao computador, o barramento usa uma série de slots na placa-mãe nos quais as placas e componentes se conectam. Existem tipos diferentes de slots, eles inserem os componentes de acordo com a configuração disponível no barramento. Eles são classificados de acordo com a tecnologia suportada. Vejamos alguns exemplos:

 **slots de memória**<br/>
 Inserem a memória de acordo com a configuração do barramento. Algumas placas mães possuem slots para 2 tipos de memória, com configurações e barramentos diferentes, estabelecendo maior compatibilidade com o tipo de memória desenvolvida.<br/>
 Uma observação importante a se fazer, é altamente **NÃO** recomendado utilizar 2 tipos de memórias diferentes ao mesmo tempo, pois essa ação pode causar problemas de reconhecimento e incompatibilidade, o que resulta em mau funcionamento do hardware.<br/>
 Os slots de memória podem se referir a dois tipos diferentes de componentes:
 1. **Slots de memória RAM**: Onde são instalados os módulos de memória volátil — RAM. Esses módulos armazenam dados temporários para o funcionamento do sistema, sendo apagados quando o computador é desligado. Cada geração de DDR tem um encaixe diferente, evitando a instalação errada. Exemplos dessa interface incluem:
   - **DIMM — Dual Inline Memory Module: RAM para Desktops**<br/>
   É o padrão de slot mais comum para PCs e servidores, usado para módulos de RAM de tamanho padrão. Ele possui pinos em ambos os lados para comunicação com a placa-mãe. Os principais tipos de DIMM são os tipos *Double Data Rate*:
     - **DDR**: Primeira geração, já obsoleta.
     - **DDR2**: Velocidade melhorada, mas ainda desatualizada.
     - **DDR3**: Frequências comuns: 1333 MHz a 2133 MHz.
     - **DDR4**: Frequências comuns: 2133 MHz a 3200 MHz+.
     - **DDR5**: Frequências comuns: 4800 MHz a 8400 MHz+.
   - **SO-DIMM — Small Outline DIMM: RAM para Notebooks**<br/>
   O SO-DIMM é uma versão menor do DIMM, projetada para notebooks, mini PCs e sistemas compactos. Suas versões funcionam igual ao DIMM, mas são produzidos em tamanho reduzido:
     - **DDR2 SO DIMM**
     - **DDR3 SO DIMM**
     - **DDR4 SO DIMM**
     - **DDR5 SO DIMM**
   - **ECC DIMM — Error-Correcting Code DIMM: RAM para Servidores**<br/>
   Este é um tipo especial de RAM usado em servidores e estações de trabalho, pois consegue detectar e corrigir erros de memória. ECC tem um bit extra para verificação de erros, sendo mais confiável, mas não compatível com PCs comuns. Suas principais variações são:
     - **ECC Unbuffered — ECC UDIMM**: Usado em algumas workstations.
     - **Registered ECC — RDIMM**: Mais estável e usado em servidores.
     - **Load-Reduced DIMM — LRDIMM**: Para servidores de alto desempenho.
 2. **Slots de armazenamento**: São interfaces usadas para conectar dispositivos de armazenamento permanente. O ATA — Advanced Technology Attachment, é um padrão de interface para conectar dispositivos de armazenamento como HDs, SSDs e drives ópticos ao computador. Ele define tanto a parte elétrica quanto o protocolo de comunicação entre os dispositivos e a placa-mãe. Existem diferetens tipos de padrão de conexão da memória com o sistema através da placa-mãe:
   - O **Pata — Parallel ATA**, ou também chamado controlador **IDE Integrated Drive Electronics**, é a interface primária com a unidade de armazenamento e memória, este é um padrão antigo de interface para conectar o disco rígido e drives ópticos ao computador. Utiliza um cabo flat de 40 ou 80 vias e suporta 2 dispositivos por canal — um mestre e um escravo.
   - O **Serial ATA** é a evolução do IDE, usando um cabo mais fino e flexível de 7 pinos. Cada dispositivo tem um canal exclusivo, eliminando o conceito de mestre e escravo. Suporta **hot swap**, que é a troca de discos sem a necessidade de desligar o compuador.
   - O **NVMe — Non-Volatile Memory Express** diferente dos SSDs SATA, que ainda usam um protocolo antigo baseado em discos rígidos (AHCI), o NVMe foi projetado especificamente para SSDs modernos. Ele é um protocolo de comunicação otimizado para Solid State Drives de alta velocidade, que se conecta diretamente ao barramento PCIe. Ele foi projetado para aproveitar ao máximo a tecnologia de armazenamento baseada em memória flash, reduzindo a latência e aumentando a velocidade de leitura e escrita. Tipos de NVMe incluem: **M.2 NVMe**, que é pequeno e compacto, encaixado diretamente na placa-mãe; **U.2 NVMe**, semelhante ao SATA, usado em servidores e PCs high-end; e o **PCIe NVMe — Add-in Card - AIC**, que é conectado diretamente ao slot PCIe como uma placa de expansão.

 **slots de expansão**<br/>
 São usados para expandir as funções originais do computador, e suportam a maioria dos componentes de um computador. Podem ser classificados conforme a seguir:
 - **SCSI - Small Computer System Interface**<br/>
 É o tipo mais básico, usado para adicionar dispositivos extras ao computador, como discos rígidos ou scanners.
 - **ISA - Industry Standard Architecture**<br/>
 Originalmente disponibilizados em 8 e 16 bits, foram projetados para controladores de jogos e impressoras nos primeiros computadores pessoais.
 - **PCI - Peripheral Component Interconnect**<br/>
 Substituíram o padrão ISA, tornando o uso da placa gráfica dedicada mais ágil. O barramento PCI tinha taxa de transferência máxima de 133 MB/s —valor insuficiente para aplicações com gráficos 3D. A fim de suprir essa demanda de mercado, quatro anos mais tarde, a mesma Intel lançou o barramento AGP.
 - **AGP - Accelerated Graphics Port**<br/>
 É uma conexão rápida usada pela placa gráfica para fazer a interface com o computador. Possibilitaram o dobro de velocidade do barramento PCI, permitindo o uso de 2 placas, visando aumentar o desempenho de vídeo e processamento de imagens de um computador. Além de ser mais veloz do que o PCI, o AGP não compartilha a mesma taxa de transferência com os demais periféricos ali plugados, como fazia o seu antecessor. No caso do AGP, apenas a placa de vídeo é conectada a ele. A primeira versão do AGP tinha capacidade máxima de transferência de 266 MB/s, mas essa taxa evoluiu na segunda e na terceira versão do barramento, chegando a 533 MB/s e 2.133 MB/s, respectivamente.
 - **PCIe - Peripheral Component Interconnec express**<br/>
 Slots instalados em pares que permitem alta velocidade com o uso de 2 placas, além de ter um menor custo. São os slots mais utilizados atualmente, compatíveis com a maioria das placas desenvolvidas por fabricantes como Intel e AMD. Essa tecnologia permite o uso de uma ou mais conexões seriais, chamados de *caminhos* ou *"lanes"*, para transferência de dados. Se um determinado dispositivo usa apenas um caminho, então diz-se que este utiliza o barramento PCI Express 1x, se utiliza 4 conexões, sua denominação é PCI Express 4x e assim por diante — até chegar ao 16x. Sua taxa máxima de transferência chega a 4.266 MB/s.

 **Terminologia**
 - **Pixels**: pixel é o menor elemento da imagem. É portanto, a menor área da tela cuja cor e brilho podem ser controlados;
 - **Resolução da Tela**: a resolução define a nitidez da imagem em uma tela em função do número de pixels;
 - **Resolução de caractere**: um caractere é apresentado em um determinado modo de texto, o que significa que é feita a iluminação de determinados pixels dentro de áreas destes caracteres;
 - **Razão de Imagem**: a razão de imagem é uma relação entre largura e altura da tela;
 - **Resolução em Pixels**: o número de pixels pode ser calculado dividindo-se a dimensão da tela pelo passo dos pontos;
 - **Modos de Vídeo**: os monitores de vídeo são capazes de operar em diversos modos de vídeo, sendo que cada um possui uma relação específica;
 - **Modo Gráfico**: para poder transmitir linhas, círculos ou desenhos, o adaptador de vídeo tem que endereçar e controlar cada pixel em cada linha horizontal;
 - **Modo Alfa – Numérico**: é o modo texto. O adaptador de vídeo tem que endereçar o conjunto de linhas necessárias para formar um caractere de texto. Por exemplo: se a resolução é 720 x 400 pixels e o box do caractere (área) é uma matriz de 9 x 16, então o formato do texto é 80 caracteres por linhas de texto e 25 linhas por tela.

 Existem diversos padrões de monitor de vídeo, conforme sua resolução gráfica. Os modos de vídeo mais comuns são:
 - **CGC**: Color Graphics Adapter.
 - **EGA**: Enhanced Graphics Adapter.
 - **MCGA**: Padrão Específico de Fabricante.
 - **VGA**: Video Graphics Array.
 - **MDA**: Adaptador de Vídeo Monocromático.
 - **8514/A**: Micro Channel Architecture.
 - **8515/A**: IBM.
 - **PCG**: Professional Graphics Controller.

 Os padrões mais utilizados são:
 - **VGA**: possui uma resolução de 640 pontos horizontais por 480 linhas.
 - **SVGA**: pode chegar a uma resolução de 1024 por 768 pontos.
 - **HDMI**: é uma interface condutiva totalmente digital de áudio e vídeo capaz de transmitir dados não comprimidos, representando, por isso, uma alternativa melhorada aos padrões analógicos, tais como: Radio Frequência, Cabo coaxial, vídeo composto, S-Video, SCART, vídeo componente, Terminal D. No papel, o Super VGA foi substituído pelo Super XGA, mas na prática, a indústria logo abandonou a tentativa de fornecer um nome único para cada padrão de vídeo em alta resolução, e praticamente todos os sistemas de vídeo produzidos entre o fim dos anos 1990 e o início dos 2000 são classificados como Super VGA (SVGA). Fabricantes de monitores algumas vezes anunciam seus produtos como XGA ou Super XGA. Na prática, isso pouco significa, visto que todos os monitores Super VGA fabricados desde fins dos anos 1990 possuem ao menos capacidade XGA e geralmente, performance muito superior. O HDMI suporta através de um único cabo qualquer formato de vídeo TV ou PC, incluindo resoluções padrão (480i/p, 576i/p), alta definição (720p, 1080i/p) e na especificação 1.4, 4k x 2k (2160p), e até 8 canais de áudio digital, sendo o sinal (áudio/vídeo) codificado em TDMS (Transition Minimized Differential Signaling) para transmissão digital não comprimida através do cabo HDMI, de acordo com a norma do Consumer Electronics Control. O HDMI é também compatível com o High-bandwidth Digital Content Protection (HDCP) um sistema anti-pirataria.

 **Varredura**: a tela é percorrida da esquerda para a direita e de cima para baixo, perfazendo a seguinte contagem de pixels por tela. (80 colunas, 25 linhas);
   - **Frequência Horizontal**: durante cada período de varredura, o feixe de elétrons tem que fazer várias centenas de passagens horizontais pela tela.<br/>
   Principais Valores de frequência horizontal:
     - **MDA**: 18,43 Hz
     - **CGA**: 15,70 Hz
     - **EGA**: 15,70 Hz
     - **VGA**: 31,46 Hz
   - Frequência Vertical: em TV, a frequência é de 60Hz. No monitor de vídeo, a frequência vertical dependerá do modo de vídeo, conforme analisamos no link anterior.<br/>
   Principais Valores da Frequência Vertical:
     - **MDA**: 50,08 Hz
     - **CGA**: 59,92 Hz
     - **EGA**: 60,03 Hz
     - **VGA**: 70,08 Hz

 ###### Socket
 Do mesmo modo que os slots, o socket representa a conxeão do processador com a placa mãe, garantindo que os pinos estejam todos em contato com a placa, funcionando corretamente.
 Uma curiosidade é que, nos primeiros computadores pessoais os processadores eram instalados em slots como o caso do Pentium III da Intel, porém com evolução da tencologia, sockets passaram a ser utilizados para a instalação do "cérebro do computador".

 ##### Font
 É um transformador elétrico regula a eletricidade usada pelo computador, este componente é responsável por alimentar todos os outros. Sua função é converter a tensão usada pela rede elétrica em tensões requidas pelos componentes internos. Ela possui conectores de alimentação independentes, a fim de alimentar a placa, o disco, e etc por meio da placa mãe todos os demais componentes.<br/>
 Sua função é receber a tensão fornecida pela rede elétrica (110 ou 220 volts) e converer essa tensão em uma voltagem que atenda as necessidades de cada dispositivo do computador, ou seja, em 3,3V, 5V ou 12V. São também chamadas de fontes chaveadas por fazerem a conversão de tensão alternada (AC) para tensão contínua (DC). Além de trabalhar também como estabilizador, atenuando os picos de energia na rede elétrica.<br/>
 A fonte é um dos itens com maior probabilidade de falha, portanto, alguns cuidados devem ser tomados ao instalar e utilizar uma fonte de alimentação:
 - Antes de mexer em um computador, primeiro desligue o cabo de energia da fonte.
 - Verificar o seletor de voltagem 110 ou 220V.
 - Sempre verificar a corrente elétrica local antes de ligar um computador e verificar se a fonte está de acordo com a voltagem.
 - Instalar um tipo de fonte compatível com o modelo da placa-mãe.
 - O ideal é que a caixa protetora da fonte seja blindada para evitar interferências eletromagnéticas.
 - Verificar o consumo total dos componentes conectados a ela para instalar uma fonte com uma capacidade acima do necessário.
 - Verificar se a ventoinha está funcionando normalmente (não está enroscando) devido ao acúmulo de pó, o que irá causar superaquecimento.

 ###### Capacidade da Fonte
 Cada dispositivo conectado ao computador consome uma determinada voltagem e a capacidade de fornecimento de energia elétrica varia entre os diversos tipos de fontes, portanto, antes de adquirirmos uma fonte, devemos fazer um levantamento do consumo total do computador e adquirir uma fonte com uma capacidade superior, para que não tenhamos problemas com o consumo de energia elétrica. As informações da capacidade da fonte, normalmente, vêm impressas em uma etiqueta fixada na fonte.

 ###### Tipos de Fontes
 Existem vários tipos de fontes, porém, os dois mais utilizados são os tipos AT (Advanced Technology) e ATX (Advanced Technology Extended), que são fontes específicas para gabinetes e placas-mãe AT. As fontes AT são os tipos mais antigos, muito utilizadas na década de 1990 e, apesar de ainda serem encontradas, caíram em desuso com o surgimento das fontes ATX. As fonts ATX são os modelos utilizadas atualmente, específicas para gabinetes e placas-mãe ATX. Possuem conectores de 20 ou 24 pinos, necessários conforme o modelo da placa-mãe. A fonte ATX possui várias vantagens em relação ao padrão AT:
 - Possibilitam desligar o computador através de Hardware.
 - O conector consiste em uma única peça, ao contrário do padrão AT, que era dividido em 2 peças, com algumas regras para a conexão.
 - Os componentes internos são menores, isto possibilita uma redução também no seu peso.

 Atualmente estão surgindo placas de vídeo cada vez mais avançadas, o que demanda um consumo de energia na mesma proporção. Os slots PCI Express podem fornecer até 75 watts de energia para a placa de vídeo. Para resolver este problema, as fontes com maior potência possuem um cabo específico para o fornecimento de energia para estas placas. Consiste em um conector auxiliar de 6 pinos que deve ser conectado à placa de vídeo para o funcionamento correto.

 *Além destes componentes físicos, a placa-mãe possui também um firmware utilizado para a identificação dos dispositivos conectados a ela e também para configurações, denominado BIOS (Basic Input Output System).*

 ##### BIOS / UEFI
 **Basic Input / Output System** ou **Unified Extensible Firmware Interface** é o sistema de configurações mais básico e essencial do hardware especializado na placa-mãe. O BIOS é um programa de computador pré-gravado em memória permanente (firmware) executado por um computador quando ligado. Ele é responsável pelo suporte básico de acesso ao hardware, bem como por iniciar a carga do sistema operacional. A BIOS fica gravada em uma memória ROM armazenado em um chip na placa-mãe, impedindo-a de ser desinstalada. Ela é responsável por inicializar o hardware e carregar o sistema operacional. Ela tem como sua principal função identificar todos os componentes conectados à placa-mãe, as informações salvas no **CMOS** — que armazena os parâmetros de configuração da placa, acessíveis pelo setup, as unidades de disco e a ordem de *boot* dos dispositivos. Com a BIOS é possível configurar os componentes e a inicialização do sistema operacional, o **bootloader** que inicia o kernel. Nela é possível escolher a sequência em que os equipamentos pode ser utilizados para realizar o *boot* no sistema, ou seja, instalar o sistema, como um USB ou HD. É possível também desabilitar dispositivos e componentes, definir configurações de memória ou funções do hardware (como luz de teclado em notebooks por exemplo), configurar ou desabilitar funcionalidades do sistema (como manter a fan sempre no seu rpm máximo por exemplo). Assim, diferente do firmware — que não dá nenhum controle ao usuário sobre as funções do hardware, na BIOS o usuário tem todo o controle do hardware e suas configurações. Na maioria das vezes sua interface pode ser acessada de acordo com as especificações do fabricante quanto a tecla de entrada, mas sempre é feita durante a inicialização do sistema.<br/>
 Quando o micro é ligado é comum nos referir a este procedimento como *Boot*, o BIOS realiza uma bateria de testes dos componentes conectados à placa-mãe, tais como: Memória, Processador, Dispositivos I/O, teclado e etc. A esse procedimento é dado o nome de **POST — Power On Self Test**, e, caso haja algum problema com um desses componentes é emitido mensagens de erro relativo ao componente com defeito. No caso de alguns componentes apresentar problemas, como processador, memória, placa de vídeo e etc, são emitidos bipes, que identificam qual componente está com problemas, mas em alguns casos, são emitidas mensagens na tela do computador. Caso esteja tudo em ordem, o BIOS passa o gerenciamento do micro para o Sistema Operacional. O BIOS possui ainda uma outra ferramenta denominada Setup, que é o responsável por uma grande variedade de configurações da placa-mãe, que possibilita várias alterações na sua configuração, por isso é necessário um mínimo de conhecimento das funcionalidades deste programa por parte do usuário, pois, alguma configuração errada ou indevida pode causar problemas na utilização do sistema. A configuração do Setup fica gravada em uma pequena área de uma memória volátil chamada memória **CMOS (Complementary Metal–Oxide–Semiconductor)**, que tem sua energia fornecida por uma pequena bateria fixada à placa-mãe, pois por ser uma memória volátil, precisa da bateria da placa-mãe para manter os dados quando o PC está desligado.
 1. **Setup**: usado para configurar algumas funções do BIOS.
 2. **POST**: é um atoteste de partida, que são diagnósticos e testes realizados nos componentes físicos como o disco rígido, processador e etc, ou seja,  serve para testar as peças do hardware e verificar se o sistema se encontra em estado operacional. Os problemas encontrados são comunicados ao usuário por uma combinação de sons de bipes numa determinada sequência e, se possível, exibidos na tela. O manual do fabricante permite a identificação do problema descrevendo a mensagem que cada sequência de sons representa.

 Quando o computador é ligado, a BIOS (ou UEFI) que está armazenada na memória ROM ou flash da placa-mãe é carregada e executada a partir daí, tomando assim o controle e então realizando os procedimentos de inicialização. Então executa testes básicos de hardware, verificando memória RAM, processador, armazenamento e outros componentes essenciais. Após o POST, o BIOS/UEFI procura um dispositivo de inicialização, podendo ser o HDD, SSD, pendrive, memory card e etc, que contem um sistema operacional. Então é carregado o **bootloader**, como o GRUB no Linux ou o Windows Boot Manager, que carrega o sistema operacional na RAM finalizando o processo do BIOS que entrega ao SO o controle do sistema.<br/>
 Apesar de finalizar seu papel, está sempre de prontidão para atender sempre que for preciso, por exemplo para o uso dos periféricos como câmeras, pendrives, impressoras e acessórios. **O BIOS é que se encarrega das tarefas mais básicas de entrada e saída de dados do computador para seus periféricos. Por isso BIOS: é um sistema básico de entrada e saída.**

 ##### Portas
 As portas de comunicação podem ser físicas ou lógicas. São usadas para encaminhar os dados de comunicação entre diferentes partes de um sistema.
 - **Físicas**<br/>
 As portas físicas fazem parte dos hardwares e são responsáveis pela entrada de dados através de portas de comunicação como USB, serial (geralmente utilizadas por impressoras) e portas de vídeo.
   - **USB (Universal Serial Bus)**: Este barramento rapidamente se tornou a conexão externa mais popular porque as portas USB oferecem versatilidade, velocidade e são muito fáceis de usar.
   - **Paralela**: esta porta é geralmente usada para conectar uma impressora. Atualmente, as portas paralelas já não são mais a interface padrão das impressoras e dos computadores. Elas foram substituídas pela conexão USB, que permite transferência de dados mais rápida.
   - **Serial**: esta porta é geralmente usada para conectar um modem externo.
   - **FireWire (IEEE 1394)**: O FireWire é um método popular de conectar dispositivos de vídeo digital, como filmadoras e câmeras digitais, ao computador.
 - **Lógicas**<br/>
 Por outro lado, as portas lógicas são portas virtuais necessárias para manter a comunicação com o sistema computacional, a exemplo das portas TCP e UDP, responsáveis por transportar informações dentro das aplicações.

 ![Image](https://github.com/user-attachments/assets/a4a3f87b-0fc4-4a53-aeb5-05029b1288ef)

 ### Identidade do Hardware
 Todo hardware tem uma identificação especial chamada endereço de controle de acesso à mídia, ou simplesmente **MAC**. Endereços MAC são usados ​​para identificar exclusivamente o hardware. Eles são atribuídos na fábrica onde o dispositivo é produzido. Um fato interessante sobre endereços MAC é que eles são exclusivos para cada peça de hardware que já foi criada. Novos produtos não compartilharão um endereço MAC com nenhum outro produto, mesmo aqueles que são reciclados ou acabam em aterros sanitários.<br/>
 É uma coisa boa que os dispositivos tenham endereços MAC exclusivos porque, sem eles, os dados que viajam pela Internet podem não conseguir encontrar o lugar certo.

 ### Representação da Informação
 Já no que diz respeito à representação de dados, os computadores representam sistemas digitais e, por isso, são compostos por números binários, armazenando e manipulando as informações baseadas em zero e um, também denominados bits. Tudo que inserimos, usamos, fazemos, processamos e recebemos em um computador, em essência é feito através da linguagem que essa máquina entede, a linguagem binária. O sistema de numeração computacional é um conjunto de regras e símbolos usados para representar e manipular números dentro de um computador. Como os computadores trabalham com circuitos eletrônicos que só entendem "ligado" = 1 e "desligado" = 0, eles utilizam sistemas numeŕicos baseados nestes estados. De modo distinto aos seres humanos, que se comunicam pela fala, os computadores realizam essa troca de informações apenas considerando os números zero e um. Tais algarismos formam a linguagem da informática. A base binária é capaz de formar palavras, expressões matemáticas e diversas outras informações. O bit é a menor unidade de informação reconhecida pelo computador, e é representado pelos valores lógicos 0 ou 1. Para formar um número decimal, por exemplo, um conjunto de oito *bits* é utilizado, tal formação é denominada *byte*.<br/>

 #### 1. Sistemas de Numeração<br/>Sistemas Numéricos Computacionais
 Os circuito integrados (CIs) possuem uma grande quantidade de chips compostos por milhões de transistores miniaturizados, interconectados em uma única pastilha de silício. Esses circuitos podem desempenhar diversas funções, como processamento de dados, armazenamento, amplificação de sinais e controle de dispositivos eletrônicos. Então, quando um destes transistores está carregado com uma determinada voltagem, é possível identificar referente à qual bit corresponde. Normalmente, a tensão de 5,0V corresponde ao bit 1 (ligado), e a falta de tensão, ou seja, 0V, corresponde ao bit 0 (desligado). Um único bit não é suficiente para representar uma informação, é necessário uma sequência de 8 bits dispostos em uma certa ordem, denominada Byte. O Byte pode representar até 256 caracteres (letra, número, símbolos, ou funções entendidas pelo computador). Quando pressionamos uma determinada tecla, é gerado um código que será interpretado pelo processador e então exibido o caractere respectivo na tela do computador. Por exemplo, quando pressionamos o número “1”, são emitidos sinais elétricos que formam uma sequência de bits (00110001), onde o CI do teclado enviará estes dados ao processador, será então processado e depois a informação será enviada ao CI da placa de vídeo para que possa ser exibida na tela do computador. Podemos ver abaixo a representação binária do número “1”:

 ![Image](https://github.com/user-attachments/assets/c5cdb6cd-d123-430f-8227-134b7ceef266)

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
 A partir desta denominação foram criados termos de medidas para quantificar um tamanho ou capacidade de armazenamento, como por exemplo: a capacidade de armazenamento de um determinado dispositivo; o tamanho de um arquivo; taxas de transmissão entre dispositivos e etc.

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

<table border="1">
  <tr>
    <th>UNIDADE</th>
    <th>ABREVIAÇÃO</th>
    <th>VALOR</th>
  </tr>
  <tr>
    <td>bit</td>
    <td>b</td>
    <td>2</td>
  </tr>
  <tr>
    <td>Byte</td>
    <td>B</td>
    <td>8 bits</td>
  </tr>
  <tr>
    <td>KiloByte</td>
    <td>KB</td>
    <td>1024 KiloBytes</td>
  </tr>
  <tr>
    <td>MegaByte</td>
    <td>MB</td>
    <td>1024 MegaBytes</td>
  </tr>
  <tr>
    <td>GygaByte</td>
    <td>GB</td>
    <td>1024 GygaBytes</td>
  </tr>
  <tr>
    <td>TeraByte</td>
    <td>TB</td>
    <td>1024 TeraBytes</td>
  </tr>
  <tr>
    <td>PetaByte</td>
    <td>PB</td>
    <td>1024 PetaBytes</td>
  </tr>
  <tr>
    <td>ExaByte</td>
    <td>EB</td>
    <td>1024 ExaBytes</td>
  </tr>
  <tr>
    <td>ZettaByte</td>
    <td>ZB</td>
    <td>1024 ZettaBytes</td>
  </tr>
  <tr>
    <td>YottaByte</td>
    <td>YB</td>
    <td>1024 YottaBytes</td>
  </tr>
  <tr>
    <th>ESPAÇO</th>
    <th>UNIDADE DE MEDIDA</th>
    <th>NÚMERO DE CARACTERES</th>
  </tr>
  <tr>
    <td>8 Bits</td>
    <td>1 BYTE</td>
    <td>1</td>
  </tr>
  <tr>
    <td>1.024 Bytes</td>
    <td>1 KILOBYTE</td>
    <td>1.024</td>
  </tr>
  <tr>
    <td>1.024 Kilobytes</td>
    <td>1 MEGABYTE</td>
    <td>1.048.576</td>
  </tr>
  <tr>
    <td>1.024 Megabytes</td>
    <td>1 GIGABYTE</td>
    <td>1.073.741.824</td>
  </tr>
  <tr>
    <td>1.024 Gigabytes</td>
    <td>1 TERABYTE</td>
    <td>1.099.511.627.776</td>
  </tr>
</table>

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
  Muito utilizado na programação de microprocessadores, especialmente nos equipamentos de estudo e sistemas de desenvolvimento. Uitliza os símbolos: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9 do sistema decimal e as letras A = 10, B = 11, C = 12, D = 13, E = 14 e F = 15. Esse sistema é frequentemente usado em programação para representar endereços de memória e valores de cores em HTML/CSS (como `#FF5733`, que representa um tom específico de laranja), é útil para representar grandes números binários de uma maneira mais compacta.

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
