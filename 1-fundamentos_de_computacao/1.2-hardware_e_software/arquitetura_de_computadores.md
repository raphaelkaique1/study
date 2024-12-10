# Arquitetura de Computadores

 1. **Conceito de Arquitetura de Computadores**<br/>
  Arquitetura se refere a um projeto de uma construção. Ela vai adotar uma série de ações para organizar e criar espaços que possam dar condições a diferentes atividades humanas. Em termos de Tecnologia da Informação, a arquitetura da computação trata-se de um projeto que define os parâmetros e o modo em que os diversos componenetes de um computador devem ser organizados para não apenas entrar em operação, mas também para alcançar a qualidade e o desempenho necessários, a fim de ser aplicado na função que foi designado.

 2. **Principais Partes de um Computador: Modelo de Von Neumann**<br/>
  Os componentes do modelo de Von Neumann são usados até hoje, mesmo nos equipamentos mais modernos, e constitui-se por:
    - **Unidade de Controle - UC:** Busca cada instrução dos programas na memória e executa sobre os dados de entrada. Em outras palavras, é o "centro nervoso" do computador, pois assume todas as tarefas de controle das ações a serem realizadas pelo computador, comandando os demais componentes de sua arquitetura.
    - **Unidade Lógica e Aritmética - ULA:** Parte da unidade central de processamento (UCP), é onde ocorrem as operaçõe aritméticas, cálculos e operações lógicas.
    - **Memória (RAM e ROM):** Armazena dados e programas.

 * A unidade de Controle (UC) e a Unidade Lógica e Aritmética (ULA) formam a Unidade Central de Processamento (UCP), ou simplesmente "processador". A Unidade Lógica e Aritmética (ULA), a Unidade de Controle (UC) e a Memória (RAM/ROM) trabalham em conjunto para executar instruções, processar dados e armazenar informações.
 * A memória - componente crucial nesse processo - guarda os dados e as instruções que serão processados pela CPU. A memória RAM, volátil e rápida, armazena as informações temporariamente enquanto o computador está ligado, enquanto a memória ROM, não volátil, armazena informações permanentes, como a BIOS.
 * Os dispositivos de entrada e saída permitem a interação do usuário com o computador. Através do teclado e do mouse, inserimos dados e comandos, enquanto o monitor e a impressora nos fornecem a saída das informações processadas. Os dispositivos de entrada e saída (I/O) interagem com o modelo, mas não fazem parte dos componentes principais.
<pre><code>
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
</code></pre>
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
<pre><code>
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
</code></pre>
 **Ciclos de Execução da CPU**<br/>
  Quando a CPU quer ler uma palavra, ou da memória ou de uma porta de I/O, ela coloca o endereço necessário nas linhas de endereço do barramento e, então, envia um sinal READ em uma linha de controle do barramento. Uma segunda linha de sinal é usada para dizer se é necessário espaço de I/O ou espaço de memória. Se for espaço de memória, a memória responderá a requisição, se for espaço de I/O, é o dispositivo de I/O correspondente que responderá. Um programa se torna um processo quando um arquivo executável é carregado na memória.

 **Processos na CPU:**
  - Novo: Um novo processo foi adicionado à fila de execuções, então a CPU deverá buscar os dados necessários para executar o processo;
  - Pronto: O processo encontra-se pronto para ser executado, nesse ponto ele pode ser enviado para a CPU pois os dados básicos para sua execução já foram selecionados;
  - Em Execução: O processo está na CPU sendo executado;
  - Em Espera: O processo executou alguma operação de Entrada (I) e Saída (O), ou depende de algum dado que deve ser fornecido por outro processo ou que não foi previamente carregado;
  - Terminado: O processo encerrou seu ciclo de execução.
<pre><code>
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
</code></pre>
 De forma prática, podemos então imaginar o computador em 3 partes, sendo elas:
 1. **RAM**: Não guarda as informações fisicamente mas sim de forma local, ou seja, de forma virtual, o que significa que é preciso que haja energia no sistema para que ela possa manter a informação na memória, fazendo com que assim ela seja uma memória temporária.
 2. **HD**: Guarda informações de forma física, ou seja, nele é escrito a informação de forma persistente para que ela seja armazenada mesmo que o sistema não esteja energizado. A única forma de se perder uma informação neste tipo de armazenamento é sobrescrevendo a memória no seu endereço físico ou danificando/corrompendo o HD.
 3. **PROCESSADOR**: Por que não usar somente o HD para que não haja risco de perder as informações? Pelo fato de que a memória RAM é muito mais rápida que o HD. As informações guardadas na memória (RAM ou HD) precisam ser processadas para serem manipuladas, e quem processa essas informações é a CPU. Vamos imaginar que queremos somar os valores 5 e 6, ambos os valores estão guardados em posições de memória aleatórias dentro da memória RAM. Para realizar a soma destes valores, os 2 números são levados até a CPU onde serão somados (processados) e devolvidos para a memória juntamente com o resultado (saída) que é alocado em outra nova posição de memória. Ou seja, nenhuma das memórias não server para processamento, apenas armazenar dados, e este tipo de transição entre a memória e a CPU acontece milhares de vezes dentro de um computador, daí a necessidade de se ter uma memória rápida para enviar e receber informações para a CPU. Visto que o HD precisa de um maior tempo de processamento já que seu processo de armazenamento de memória consome mais recursos, sua utilidade como memória auxiliar da CPU não é viável, tornando seu melhor uso como banco de dados.

 ## Sistemas de Numeração

 1. **Sistemas de Numeração: Sistemas Numéricos Computacionais.**
  ### Bits e Bytes

  * **Bit** = "0" ou "1" - É a menor unidade de dados em computação e pode ter o valor 0 ou 1.<br/>
<pre>       Aberto Fechado<pre><br/>
  *Com origem no estudo de circuitos elétricos, o termo "aberto" representa um circuito onde não há contato/conexão/ligação entre os condutores de energia, fazendo com que não corra eletricidade no sistema, ou seja, significa que o sistema está desligado, enquanto que "fechado" significa que o contato entre os condutores de energia está conectado (fechado), ou seja, o sistema está ligado. Computadores utilizam o sistema binário porque os circuitos eletrônicos têm dois estados possíveis: ligado (1) e desligado (0). Isso facilita a construção e a operação dos dispositivos digitais. Em termos lógicos isso representa VERDADEIRO ou FALSO.

  * **Byte** = 8 x Bit - Um byte corresponde a 8 bits, mas um byte consegue armazenar um código que corresponde somente a um único número, letra ou símbolo. A combinação de cadeias de bits é que permite representar diferentes números agrupando-se na forma de bytes.<br/>
  Exemplos:
<pre><code>
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
</code></pre>
 ### Grandezas de Armazenamento de Informação

 #### Número de Bits:
  Se você tem um número de bytes, multiplicar o número de bytes por 8 dá o número de bits.
  * Número de bits = Número de bytes × 8<br/>
    Exemplo: Se você tem 4 bytes, o número de bits é:<br/>
    4 × 8 = 32 bits

 #### Número de Bytes:
  Se você tem um número de bits, dividir o número de bits por 8 dá o número de bytes.
  * Número de bytes = 8 / Número de bits​<br/>
    Exemplo: Se você tem 32 bits, o número de bytes é:<br/>
    32 / 8 = 4 bytes

<pre><code>
      ESPAÇO      UNIDADE DE MEDIDA   NÚMERO DE CARACTERES
      8 Bits           1 BYTE                  1
    1.024 Bytes      1 KILOBYTE              1.024
  1.024 Kilobytes    1 MEGABYTE            1.048.576
  1.024 Megabytes    1 GIGABYTE          1.073.741.824
  1.024 Gigabytes    1 TERABYTE          1.099511628¹²
</code></pre>

 ### Sistemas Numéricos

 A quantidade de algarismos disponíveis num sistema de numeração designa-se de BASE, que significa que cada dígito representa uma potência:
  - **Binário (base 2)**: 0, 1
  - **Octal (base 8)**: 0, 1, 2, 3, 4, 5, 6, 7
  - **Decimal (base 10)**: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  - **Hexadecimal (base 16)**: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

 #### Sistema Binário
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
<pre><code>
    1          1         0          0          1
  1 x 2⁴     1 x 2³    0 x 2²     0 x 2¹     1 x 2⁰
    16    +    8    +    0     +    0     +    1    = 25
</code></pre>
 - **Binário -> Octal**<br/>
  Separa-se os dígitos do número binário em grupos de 3 bits da direita para a esquerda, em seguida transforma-se cada grupo individual de 3 bits em octal e ao final une-se os resultados. Caso o número de dígitos do número binário não possua 3 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre>
	┌─────────────────────────────────────────────────────┐  ┌────────────────────────────────────────────────────┐<br/>
	|  1         1         0      1         0         1   |  |            1         1      1         1        1   |<br/>
	├──────────────────────────┬──────────────────────────┤  ├──────────────────────────┬─────────────────────────┤<br/>
	|  1         1         0   |  1         0         1   |  |  0         1         1   |  1         1        1   |<br/>
	├──────────────────────────┼──────────────────────────┤  ├──────────────────────────┼─────────────────────────┤<br/>
	|1 x 2²    1 x 2¹    0 x 2⁰|1 x 2²    0 x 2¹    1 x 2⁰|  |0 x 2²    1 x 2¹    1 x 2⁰|1 x 2²    1 x 2¹   1 x 2⁰|<br/>
	├──────────────────────────┼──────────────────────────┤  ├──────────────────────────┼─────────────────────────┤<br/>
	|  4    +    2    +    0   |  4    +    0    +    1   |  |  0    +    2    +    1   |   4    +    2   +   1   |<br/>
	├──────────────────────────┼──────────────────────────┤  ├──────────────────────────┼─────────────────────────┤<br/>
	|        6₁₀ = 6₈          |        5₁₀ = 5₈          |  |        3₁₀ = 3₈          |         7₁₀ = 7₈        |<br/>
	├──────────────────────────┴──────────────────────────┤  ├──────────────────────────┴─────────────────────────┤<br/>
	|                          65                         |  |                          37                        |
	└─────────────────────────────────────────────────────┘  └────────────────────────────────────────────────────┘
</pre>
 - **Binário -> Hexadecimal**<br/>
  Separa-se o número binário em grupos de 4 bits da direita para a esquerda, em seguida transforma-se cada grupo individual de 4 bits em hexadecimal e ao final une-se os resultados em um só. Caso o número de dígitos do número binário não possua 4 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre><code>
	┌───────────────────────────────────────────────────────────────────────────────────┐
	|   0         1         0         1              1         0         1         1    |
	├─────────────────────────────────────────┬─────────────────────────────────────────┤
	|   0         1         0         1       |      1         0         1         1    |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	| 0 x 2³    1 x 2²    0 x 2¹    1 x 2⁰    |    1 x 2³    0 x 2²    1 x 2¹    1 x 2⁰ |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	| 0    +    4    +    0    +    1  =  5₁₀ | 8    +    0    +    2    +    1  = 11₁₀ |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	|                 5₁₀ = 5₁₆               |                11₁₀ = B₁₆               |
	├─────────────────────────────────────────┴─────────────────────────────────────────┤
	|                                        5B                                         |
	└───────────────────────────────────────────────────────────────────────────────────┘
	┌───────────────────────────────────────────────────────────────────────────────────┐
	|                       1         1              1         1         0         1    |
	├─────────────────────────────────────────┬─────────────────────────────────────────┤
	|   0         0         1         1       |      1         1         0         1    |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	| 0 x 2³    0 x 2²    1 x 2¹    1 x 2⁰    |    1 x 2³    1 x 2²    0 x 2¹    1 x 2⁰ |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	| 0    +    0    +    2    +    1  =  3₁₀ | 8    +    4    +    0    +    1  = 13₁₀ |
	├─────────────────────────────────────────┼─────────────────────────────────────────┤
	|                 3₁₀ = 3₁₆               |                13₁₀ = D₁₆               |
	├─────────────────────────────────────────┴─────────────────────────────────────────┤
	|                                         3D                                        |
	└───────────────────────────────────────────────────────────────────────────────────┘
</code></pre>
 #### Sistema Octal
  É um sistema de numeração de base 8, ou seja, recorre a 8 símbolos (0, 1, 2, 3, 4, 5, 6, 7) para representação de um determinado valor. Cada dígito no sistema octal representa uma potência de 8. É menos comum do que os sistemas binário e decimal, mas ainda é utilizado em algumas áreas, especialmente em computação e sistemas digitais.

 **Conversões de Base Octal**
 - **Octal -> Decimal**<br/>
  Obtida através da soma dos dígitos do número octal multiplicados pela base 8 elevada à posição colunar do dígito, começando em 0 da direita para a esquerda.<br/>
  Exemplo:
<pre><code>
    3          3          1          |   4          5
  3 x 8²     3 x 8¹     1 x 8⁰       | 4 x 8¹     5 x 8⁰
   192    +   24     +    1    = 217 |   32         5    = 37
</code></pre>
 - **Octal -> Binário**<br/>
  Decompõe-se o número octal diretamente em binários em grupos de 3 dígitos. Caso o número de dígitos do número binário não possua 3 colunas, completa-se os dígitos à esquerda com zeros (0).<br/>
  Exemplos:
<pre><code>
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
</code></pre>
 - **Octal -> Hexadecimal**<br/>
  Transforma-se primeiro o octal em binário e em seguida o binário em hexadecimal.<br/>
  Exemplo:
<pre><code>
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
  ┌───────────────────────────────────────────────────────────────────────────────────┐
  |   1         1         0         0              1         1         0         1    |
  ├─────────────────────────────────────────┬─────────────────────────────────────────┤
  |   1         1         0         0       |      1         1         0         1    |
  ├─────────────────────────────────────────┼─────────────────────────────────────────┤
  | 1 x 2³    1 x 2²    0 x 2¹    0 x 2⁰    |    1 x 2³    1 x 2²    0 x 2¹    1 x 2⁰ |
  ├─────────────────────────────────────────┼─────────────────────────────────────────┤
  | 8    +    4    +    0    +    0  = 12₁₀ | 8    +    4    +    0    +    1  = 13₁₀ |
  ├─────────────────────────────────────────┼─────────────────────────────────────────┤
  |                12₁₀ = C₁₆               |                13₁₀ = D₁₆               |
  ├─────────────────────────────────────────┴─────────────────────────────────────────┤
  |                                        CD                                         |
  └───────────────────────────────────────────────────────────────────────────────────┘
</code></pre>
 #### Sistema Decimal
  O sistema decimal é o sistema mais utilizado pelos seres humanos, normalmente para indicar quantidades, e é constituído por 10 algarismos: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9. No sistema decimal, cada algarismo tem um valor posicional, ou seja, cada algarismo tem um peso de acordo com a sua posição na presentação do valor.
<pre><code>
  Peso  10² 10¹ 10⁰
         │   │   │
         1   3   5
        /    │    \
     1x10²  3x10¹ 5x10⁰ = 237
</code></pre>
 **Conversões de Base Decimal**
 - **Decimal -> Binário**<br/>
  Dividir sucessivamente por 2 o número decimal e os quocientes que vão sendo obtidos, até que o quociente de uma das divisões seja 0. O resultado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplo:
<pre><code>
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
</code></pre>
 - **Decimal -> Octal**<br/>
  Divisões sucessivas por 8. O resulado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplos:
<pre><code>
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
</code></pre>
 - **Decimal -> Hexadecimal**<br/>
  Divisões sucessivas por 16. O resulado é a sequência de baixo para cima de todos os restos obtidos.<br/>
  Exemplos:
<pre><code>
  223 |⎯16⎯        76 |⎯16⎯
    15   13 |⎯16⎯   12   4  |⎯16⎯
    |    13    0     ↓   4     0
    |    |          4C   |
    |    |          ^    |
    v    |          └────┘
  D F    |
  ^      |
  └──────┘
</code></pre>
 #### Sistema Hexadecimal
  Muito utilizado na programação de microprocessadores, especialmente nos equipamentos de estudo e sistemas de desenvolvimento. Uitliza os símbolos: 0, 1, 2, 3, 4, 5, 6, 7, 8 e 9 do sistema decimal e as letras A = 10, B = 11, C = 12, D = 13, E = 14 e F = 15. Esse sistema é frequentemente usado em programação para representar endereços de memória e valores de cores em HTML/CSS (como #FF5733, que representa um tom específico de laranja), é útil para representar grandes números binários de uma maneira mais compacta.

  Exemplo: 10101100 em binário é AC em hexadecimal.
  
 **Conversões de Base Hexadecimal**
 - **Hexadecimal -> Decimal**<br/>
  Realizada através da soma dos dígitos hexadecimais multiplicados pela base 16 elevada à posição colunar contando da direita para a esquerda, começando em 0, de forma semelhante à conversão de binários em decimais.<br/>
  Exemplos:
<pre><code>
  ┌───────────────────────┬───────────────────────┬───────────────────────┐  ┌───────────────────────┬───────────────────────┐
  |           1           |           0           |           A           |  |           C           |           B           |
  ├───────────────────────┼───────────────────────┼───────────────────────┤  ├───────────────────────┼───────────────────────┤
  |         1 x 16²       |         0 x 16¹       |        10 x 16⁰       |  |        12 x 16¹       |        11 x 16⁰       |
  ├───────────────────────┴───────────────────────┴───────────────────────┤  ├───────────────────────┴───────────────────────┤
  |          256          +           0           +        10       = 266 |  |          192          +        11       = 203 |
  └───────────────────────────────────────────────────────────────────────┘  └───────────────────────────────────────────────┘
</code></pre>
 - **Hexadecimal -> Binário**<br/>
  Decompõe-se o número hexadecimal diretamente em binários de 4 dígitos. Sempre que o quociente da divisão for maior que 0, em binário ele representa 1.<br/>
  Exemplo:
<pre><code>
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
</code></pre>
 - **Hexadecimal -> Octal**<br/>
  Transforma-se primeiro o hexadecimal em binário e em seguida o binário em octal.<br/>
  Exemplo:
<pre><code>
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
  ┌──────────────────────────────────────────────────────────────────────────────┐
  |  1         0         0      1         0        1      1         1        1   |
  ├──────────────────────────┬─────────────────────────┬─────────────────────────┤
  |  1         0         0   |  1         0        1   |  1         1        1   |
  ├──────────────────────────┼─────────────────────────┼─────────────────────────┤
  |1 x 2²    0 x 2¹    0 x 2⁰|1 x 2²    0 x 2¹   1 x 2⁰|1 x 2²    1 x 2¹   1 x 2⁰|
  ├──────────────────────────┼─────────────────────────┼─────────────────────────┤
  |  4    +    0    +    0   |   4    +   0   +    1   |   4    +   2   +    1   |
  ├──────────────────────────┼─────────────────────────┼─────────────────────────┤
  |        4₁₀ = 4₈          |         5₁₀ = 5₈        |         7₁₀ = 7₈        |
  ├──────────────────────────┴─────────────────────────┴─────────────────────────┤
  |                                       457                                    |
  └──────────────────────────────────────────────────────────────────────────────┘
</code></pre>

 2. Tabela ASCII e Conversores.<br/>
	A tabela ASCII (American Standard Code for Information Interchange - https://www.ascii-code.com/pt) é um padrão que representa caracteres alfanuméricos e símbolos em forma de códigos numéricos para garantir a compatibilidade entre sistemas e dispositivos.
