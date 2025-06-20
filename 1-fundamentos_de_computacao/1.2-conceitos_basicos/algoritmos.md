# Algoritmos

 ## 1. Conceitos
 Algoritmo é uma série ordenada de passos não ambíguos executáveis; É uma sequência de instruções/comandos realizados de maneira sistemática com o objetivo de resolver um problema ou executar uma tarefa. São como uma receita de bolo:<br/>
 *uma sequência de ações que devem ser executadas até que o objetivo final (o bolo pronto) seja atingido.*
<pre>
  ┌─────────┐  ┌───────────────┐  ┌───────┐
  | Entrada ├─>| Processamento ├─>| Saída |
  └─────────┘  └───────────────┘  └───────┘
Em algoritmos estudamos:
                  ┌──────────┐
                  | execução |
  ┌────────────┐  └────┬─────┘  ┌─────────────┐
  | limitações ├┐┌─────┴──────┐┌┤ comunicação |
  └────────────┘└┤ algoritmos ├┘└─────────────┘
     ┌─────────┐ └┬────┬─────┬┘ ┌───────────────┐
     | análise ├──┘    |     └──┤ representação |
     └─────────┘┌──────┴───────┐└───────────────┘
                | delineamento |
                └──────────────┘
Exemplo de algoritmo: troca de lâmpada versão 1  |  Ex. algoritmo: cálculo de média anual de aluno versão 1
  - Pegar uma escada;                            |  início
  - Posicionar a escada embaixo da lâmpada;      |    // declaração de variáveis
  - Buscar uma lâmpada nova;                     |    real: N1, N2, N3, N4, // notas bimestrais
  - Subir na escada;                             |          MA; // média anual
  - Retirar a lâmpada velha;                     |    leia: (N1, N2, N3, N4); // entrada de dados
  - Colocar a lâmpada nova;                      |    MA <- (N1, N2, N3, N4) / 4; // processamento
                                                 |     escreva (MA); // saída de dados;
                                                 |     se (MA >= 7)
                                                 |       então
                                                 |         escreva ("APROVADO");
                                                 |     fimse;
                                                 |   fim;
</pre>
### Como representar os algoritmos?
 Os algoritmos podem ser representados de 3 maneiras básicas: **narração descritiva**, **fluxograma** e **pseudocódigo**.<br/>
 Utilizando essas representações, procura-se aguçar a lógica e inibir possíveis erros, antes da programação em si.<br/>
 Quando codificamos em uma linguagem de programação, o algotimo "está por trás".<br/>

#### Narração Descritiva
 A forma mais simples e direta de se representar um algoritmo; Consiste em escrever um texto simples em forma de uma descição narrativa do que deve ser realizado para que o problema proposto seja solucionado. É pouco utilizada, pois, por ser aberta a várias interpretações é bastante suscetível a erros:
  1. Pare o carro (...desligo o motor?)
  2. Abra a porta (...qual?)
  3. Retire o estepe (...onde está o estepe?)
  
Exemplo de narração descritiva: criar uma rotina para receber login e senha do usuário em um sistema:
  1. Apresentar a tela de login;
  2. Usuário digita o login;
  3. Usuário digita a senha;
  4. Se login e senha corretos, usuário acessa o sistema.

**Aqui o nível de abstração é bastante alto, pois várias situações foram deixadas de lado.*

#### Fluxograma
 Utiliza-se de gráficos para representar os passos que devem ser executados pelo algoritmo. Hoje são usados para representações específicas ou para modelagens. O problema desta representação é ocultar a estrutura de dados e pode se tornar muito trabalhosa para algoritmos complexos.
<pre>
        ╭────────╮
        | INÍCIO |
        ╰────┬───╯
             v
         /───────┐
         |N1 , N2|
         └───┬───┘
             v
┌────────────────────────┐
| MÉDIA <- (N1 + N2) / 2 |
└────────────┬───────────┘
             v       ┌────────────┐
          ╱MÉDIA╲ -> | "APROVADO" |
          ╲>=6,0╱    └~~~~~~~~~~~~┘
             ↓             ↓
      ┌─────────────┐   ╭─────╮
      | "REPROVADO" ├─> | FIM |
      └~~~~~~~~~~~~~┘   ╰─────╯
</pre>
#### Pseudocódigo
 O pseudocódigo utiliza formatação e regras que se assemelham a da maioria das linguagens, mas se utiliza de linguagem natural como na narrativa descritiva, poém dentro de uma norma de escrita próxima a das linguagens de programação, sem realmente ser uma linguagem de programação.
<pre>
início
  // declaração de variáveis
  texto: nome; // armazena o dado informado pelo usuário
  leia(nome); // lê o dado informado pelo usuário
  escreva("Bem-vindo ", nome, "."); // saída: Bem-vindo Raphael.
fim
</pre>
 ## 2. Estruturas<br/>Estruturas para repetição e controle de fluxo.
  Em um algoritmo ou mesmo programa de computador, são várias as estruturas que utilizamos para controlar o fluxo de execução dos comandos e funções. Essas estruturas determinam o que, como e quando será executado.

 ### IF<br/>Estrutura de Seleção: SE () ENTÃO {} SENÃO
  A condição **"se-(então)(-senão)"** é uma estrutura de seleção comum em diversas linguagens de programação. Ela usa de expressões booleanas (originárias do binário - do tipo lógica verdadeiro/falso) para desviar a execução do código para um outro determinado fluxo, dependendo do valor avaliado ser verdadeiro ou falso.
<pre>
   ↓                    |
╱(con- ╲ ───┐           |
╲dição)╱   SIM          |
   |        v           |  SE(condição) ENTÃO
  NÃO   ┌────────────┐  |    {comando(s)}
   |    | comando(s) |  |  FIM-SE
   |    └───┬────────┘  |
   └──> ◯ <─┘           |
        ↓               |
</pre>
 ### FOR<br/>Estrutura com Número de Repetições Pré-Definido: PARA
  Loop de repetição que realiza a mesma tarefa até atingir o número de vezes determinado.
<pre>
PARA J <- valor inicial ATÉ valor final FAÇA  |
  INÍCIO                                      |  PARA &lt;variável contadora&gt; DE &lt;valor inicial&gt; ATE &lt;valor final&gt; [PASSO &lt;valor de incremento&gt;] FAÇA
    comando1;                                 |  &lt;instruções a serem executadas repetidamente até a &lt;variável contadora&gt; atingir o valor final&gt;
    comando2;                                 |  FIM-PARA
  FIM                                         |
</pre>
 ### WHILE<br/>Estrutura de Repetição Booleana: ENQUANTO () FAÇA {}
  Esta estrutura repete uma sequência de comandos ENQUANTO uma determinada condição de uma expressão lógica não for satisfeita. A condição dessa expressão lógica é avaliada antes de cada repetição do laço, quando seu resultado for VERDADEIRO, &lt;sequência-de-comandos&gt; é executada. Quando a condição não for mais satisfeita, o fluxo desvia do laço de execução.
<pre>
        ↓    condição    |  Algoritmo "Números de 1 a 10 (com enquanto...faça)"
     ╱teste╲ verdadeira  |  var i: inteiro
┌─> ⟨de con-⟩ ────────┐  |  início
|    ╲dição╱          |  |  i <- 1
|       | condição    |  |  enquanto i <= 10 faca
|       ↓ falsa       |  |    escreva(i)
| ┌────────────┐      |  |    i <- i + 1
└─┤ comando(s) |      |  |  fimenquanto
  └────────────┘      ↓  |  fimalgoritmo
</pre>
 ### DO<br/>Estrutura de Repetição Booleana: REPITA {} ATÉ ()
  A estrutura de repetição REPITA-ATÉ é utilizada quando um conjunto de comandos deve ser executado pelo menos 1 vez e então repetidamente até que uma condição de uma expressão lógica seja verdadeira. Aqui a condição é testada ao final do laço.
<pre>
           ↓             |  Algoritmo "Números de 1 a 10 (com enquanto...faça)"
     ┌────────────┐      |  var num: inteiro
   ┌>| comando(s) |      |  início
   | └────────────┘      |  num <- 1
   |       ↓             |  repita
   |    ╱teste╲          |    escreva(num)
   └───⟨de con-⟩         |    num <- num + 1
condição╲dição╱ condição |  ate(num > 10)
falsa      ↓ verdadeira  |  fimalgoritmo
</pre>
 ## 3. Eficiência de algoritmos<br/> resolução de problemas
A análise de algoritmo fornece uma medida objetiva de desempenho proporcional ao tempo de execução do algoritmo. As vantagens são:
- facilidade na compreensão, codificação e depuração;
- eficiência na utilização dos recursos do computador e rapidez, através de seu tempo de execução.

  ### Métodos de Busca e Ordenação
  Seguindo um pensamento objetivo, grande parte do que se faz em termos de computação é busca de elementos em uma lista ou ordenação de elementos em uma lista. Métodos de Busca e Ordenação são a essência de muitos problemas e soluções em computação.

  ### Busca Sequencial (ou Linear)
  O método de busca linear faz com que o elemento em cada posição da lista seja comparado ao elemento procurado. A busca sequencial é um algoritmo pouco eficiente para encontrar um item em uma lista grande de elementos, pois se o item estiver entre os últimos, todos os elementos serão visitados, no pior dos casos, aguardaremos muito tempo para se descobrir que o item não está presente na lista.
<pre>
        ₀    ₁   ₂    ₃    ₄    ₅    ₆
      ┌────┬───┬────┬────┬────┬────┬────┐
    V | 23 | 4 | 67 | -8 | 54 | 90 | 21 | Array / Vetor.
      └────┴───┴────┴────┴────┴────┴────┘
      ┌────┐
 elem | 54 | Elemento procurado.
      └────┘
        ₀    ₁   ₂    ₃    ₄    ₅    ₆
      ───────────────────────────────────
i = 0 | 𝟮𝟯 | 4 | 67 | -8 | 54 | 90 | 21 | Valor diferente: continua a busca.
      ───────────────────────────────────
      ───────────────────────────────────
i = 1 | 23 | 𝟰 | 67 | -8 | 54 | 90 | 21 | Valor diferente: continua a busca.
      ───────────────────────────────────
      ───────────────────────────────────
i = 2 | 23 | 4 | 𝟲𝟳 | -8 | 54 | 90 | 21 | Valor diferente: continua a busca.
      ───────────────────────────────────
      ───────────────────────────────────
i = 3 | 23 | 4 | 67 | ╺𝟴 | 54 | 90 | 21 | Valor diferente: continua a busca.
      ───────────────────────────────────
      ───────────────────────────────────
i = 4 | 23 | 4 | 67 | -8 | 𝟱𝟰 | 90 | 21 | Valor igual: termina a busca.
      ───────────────────────────────────
</pre>
  ### Busca Binária
  A busca binária é um eficiente algoritmo para encontrar um item em uma LISTA ORDENADA de itens. Seu modo de busca funciona dividindo repetidamente pela metade a porção da lista que deve conter o item, até reduzir as localizações possíveis a apenas uma. O valor a ser buscado é comparado com o valor do meio da lista. Se o valor a ser procurado é maior do que o valor do meio da lista, descartamos a metade inferior da lista, pois já sabemos que ele não estará lá com certeza. Concentramos os esforços então na lista que sobrou. Repetimos o processo analisando o elemento que está no meio da lista. Assim, de forma repetida e rápida os elementos vão sendo descartados, chegando cada vez mais perto da resposta, se o número está ou não na lista. Repare que quando consultamos um dicionário, em geral fazemos uma espécie de busca binária. Abaixo o número a ser localizado é o 4 na lista V.
<pre>
         ₀    ₁   ₂    ₃   ₄    ₅    ₆    ₇    ₈    ₉
       ┌────┬────┬───┬───┬────┬────┬────┬────┬────┬────┐
     V | -8 | -5 | 1 | 4 | 14 | 21 | 23 | 54 | 67 | 90 | Array / Vetor.
       └────┴────┴───┴───┴────┴────┴────┴────┴────┴────┘
       ┌───┐
  elem | 4 | Elemento procurado.
       └───┘
         ₀    ₁   ₂    ₃   ₄    ₅    ₆    ₇    ₈    ₉
       ───────────────────────┼─────────────────────────
meio=4 | -8 | -5 | 1 | 4 | 𝟭𝟰 | 21 | 23 | 54 | 67 | 90 | Valor é menor: busca no início.
       ───────────────────────┼─────────────────────────
         ₀    ₁   ₂    ₃   ₄    ₅    ₆    ₇    ₈    ₉
       ─────┼────────────┼──────────────────────────────
meio=1 | -8 | ╺𝟱 | 1 | 4 | 14 | 21 | 23 | 54 | 67 | 90 | Valor é maior: busca no final.
       ─────┼────────────┼──────────────────────────────
         ₀    ₁   ₂    ₃   ₄    ₅    ₆    ₇    ₈    ₉
       ──────────┼───┼───┼──────────────────────────────
meio=2 | -8 | -5 | 𝟭 | 4 | 14 | 21 | 23 | 54 | 67 | 90 | Valor é maior: busca no final.
       ──────────┼───┼───┼──────────────────────────────
         ₀    ₁   ₂    ₃   ₄    ₅    ₆    ₇    ₈    ₉
       ─────────────────────────────────────────────────
meio=3 | -8 | -5 | 1 | 𝟰 | 14 | 21 | 23 | 54 | 67 | 90 | Valor é igual: termina a busca.
       ─────────────────────────────────────────────────
</pre>
### Busca Sequencial x Busca Binária
  - Se a lista não está ordenada, a busca binária não se aplica.
  - A busca sequencial é muito ineficiente para conjuntos grandes de valores.
  - Analisando o comportamento matemático dos processos computacionais (complexidade assintótica) podemos enxergar os algoritmos por meio de gráficos de funções. No eixo X, está representado a quantidade n de elementos, no eixo Y o número de comparações.
  - Costuma-se dizer que a busca sequencial "tem complexidade n" e que a busca binária "tem complexidade log n", fazendo muito menos comparações, torna-se mais eficiente.
  - Como a função log n cresce significativamente mais devagar do que a busca linear em função do tamanho da entrada, dizemos que faz menos comparações, sendo mais eficiente do que a busca sequencial.
<pre>
    Plot:                                   Plot:
    ┌                                       ┌
   9├                     ╭───         10000├          ╱
   8├              ╭──────╯                 ├         ╱
   7├       ╭──────╯                    8000├        ╱
   6├      /                                ├       ╱
   5├     /               ↖ Log N       6000├      ╱                  ↖ N
   4├    /                                  ├     ╱
   3├   /                               4000├    ╱
   2├  /                                    ├   ╱
   1├ ⎛                                 2000├  ╱
    └─┴──┴──┴──┴──┴──┴──┴──┴──┴──┘          └─┴──┴──┴──┴──┴──┴──┴──┴──┴──┘
    0   2000  4000  6000  8000  10000       0   2000  4000  6000  8000  10000
</pre>

<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-conceitos_basicos/estruturas_de_dados.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#conceitos_basicos">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.1-cpp/sintaxe_e_semantica.md">next</a>