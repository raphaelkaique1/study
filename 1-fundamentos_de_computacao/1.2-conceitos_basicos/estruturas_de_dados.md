# [Estruturas de Dados](https://www.alura.com.br/artigos/estruturas-de-dados-introducao)

 ## Abstração de Dados
 A forma como o usuário e o programador lidam com os dados não corresponde à forma verdadeira como os dados estão armazenados na memória do computador, ou como eles são realmente. Chamamos de abstração de dados, estruturas muito úteis que "mascaram" os dados para visualizar e manipulá-los de forma à tornar as soluções de uso mais intuitiva.

 ## 1. Vetores / Arrays e Matrizes: Abstraindo os dados<br/>Conhecendo a estrutura de lista em memória contígua.
 Uma lista é uma coleção de elementos que aparecem sequencialmente. São exemplos: listas de convidados de uma festa, lista de compras. Nomes também podem ser vistos como listas de letras. Um vetor (ou array) permite acesso direto a qualquer elemento da lista, isto é, você não precisa percorrer todos os elementos de uma lista até encontrar o que você precisa, basta usar o índice da estrutura. Observe a figura abaixo uma parte da memória do computador, as informações estão uma “ao lado” da outra. Um **vetor / array** *é uma lista linear na qual a ordem lógica dos elementos (a ordem "vista" pelo usuário) é a mesma ordem física (em memória principal) dos elementos.* Isto é, elementos vizinhos na lista estarão em posições vizinhas na memória. Vejamos por exemplo como seria armazenado na memória uma lista de nomes de pessoas armazenadas de forma contígua:
<pre>
                      ┌─────────────────────────────────────┐
                      | BLOCO CONTÍNUO DE CÉLUAS NA MEMÓRIA |
                      └──────────────────┬──────────────────┘
  ┌──────────────────────────────────────┴──────────────────────────────────────┐
  ┌──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬──┬─────┬──┬──┬──┬──┬──┬──┬──┬──┐
  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | ... |  |  |  |  |  |  |  |  |
  └──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴──┴─────┴──┴──┴──┴──┴──┴──┴──┴──┘
  └───────────┬───────────┘└───────────┬──────────┘     └───────────┬───────────┘
 ┌────────────┴───────────┐┌───────────┴───────────┐     ┌──────────┴──────────┐
 |PRIMEIRO NOME ARMAZENADO||SEGUNDO NOME ARMAZENADO|     |NOME FINAL ARMAZENADO|
 └────────────────────────┘└───────────────────────┘     └─────────────────────┘
Leitura de vetor armazenada na memória contígua com início em x. Percorrendo a lista na memória:
                            ┌───────────┐
                            | ENDEREÇOS |
                            └─────┬─────┘
                    ┌─────────────┴─────────────┐
  ┌─────────┐         x  x+1 x+2 x+3 x+4 x+5 x+6
  | CÉLULAS |    ┌─ ┌───┬───┬───┬───┬───┬───┬───┐
  |   DE    ├────┤  |   |   |   |   |   |   |   |
  | MEMÓRIA |    └─ └─┬─┴─┬─┴─┬─┴─┬─┴───┴───┴───┘
  └─────────┘         |   |   |   |
            ┌─────────┴┐  |   |   |
            |leitura[1]|  |   |   |
            └──────────┘  |   |   |
                ┌─────────┴┐  |   |
                |leitura[2]|  |   |
                └──────────┘  |   |
                    ┌─────────┴┐  |
                    |leitura[3]|  |
                    └──────────┘  |
                        ┌─────────┴┐
                        |leitura[4]|
                        └──────────┘
Outro exemplo de Vetor, seria um Vetor de notas escolares: 
primeira posição
        |
      ┌─┴─┐
      | 0 | 1   2   3   4    5    6   7   8   9  - posições
      └───┘
      ┌───┬───┬───┬───┬───┬─────┬───┬───┬───┬───┐
      | 9 | 4 | 8 | 7 | 3 | 2,5 | 6 | 5 | 3 | 4 |
      └───┴───┴───┴───┴───┴─────┴───┴───┴───┴───┘
           <──── TAMANHO DO ARRAY É 10 ────>
  NOTAS[0] = 9
  NOTAS[5] = 2,5
  NOTAS[9] = 4
</pre>
 Para apagar ou inserir um elemento, os elementos do vetor serão movimentados. Veja que, quando um novo elemento é inserido no meio da lista, essa inserção de um novo elemento irá forçar que os demais elementos sejam deslocados pela estrutura exigindo um laço de programação. Em outras palavras, a inserção de um elemento no vetor sem copiar por cima de um elemento pré-existente requer movimentar os elementos restantes da lista. Decididamente incluir um elemento em um vetor sem apagar o anterior tem certo custo de programação. Isso é diferente da estrutura lista ligada que veremos mais adiante.
<pre>
      0   1   2   3   4   5    6    7   8   9
    ┌───┬───┬───┬───┬───┬───┬─────┬───┬───┬───┐
    | 9 | 4 | 8 | 7 | 3 | 8 |     |   |   |   |
    └───┴───┴───┴───┴───┴───┴─────┴───┴───┴───┘
                          + └───────────┬──────────┘
NOTAS[5] = 8                  2,5   6   5    3    4
NOTAS[9] = 3                                      ─>
</pre>
 **Matriz** *é uma tabela organizada em linhas e colunas no formato m (linhas) x n (colunas), onde "m" representa o nº de linhas (horizontal) e "n" o número de colunas (vertical).* Considere os dados como se estivessem todos dispostos em uma tabela, isto é, uma estrutura retangular contendo elementos de um mesmo tipo (no caso de matrizes homogêneas). Pense em uma forma de representar a ocupação de lugares em um teatro. A cada venda de um bilhete é preciso armazenar a informação evitando que duas pessoas tenham o mesmo número de assentos. Matriz (3L x 4C) armazenada segundo a sequência de linhas: Matriz Bidimensional com 3 linhas e 4 colunas.
<pre>
                                                                              MATRIZ CONCEITUAL
                                                                            ┌────┬────┬────┬────┐
             ┌──────────────────────────────────────────────────────────────┤    |    |    |    | L1
             |                                                              ├────┼────┼────┼────┤
             |                       ┌──────────────────────────────────────┤    |    | MN |    | L2
             |                       |                                      ├────┼────┼────┼────┤
             |                       |                        ┌─────────────┤    |    |    |    | L3
             |                       |                        |             └────┴────┴────┴────┘
┌────────────┴──────────┐ ┌──────────┴───────────┐ ┌──────────┴────────────┐  C1   C2   C3   C4
┌────┬────┬────┬────┬────┼────┬────┬────┬────┬────┼────┬────┬────┬────┬────┐
|    |    |    |    |    |    |    |    | MN |    |    |    |    |    |    | MEMÓRIA DA MÁQUINA
└────┴────┴────┴────┴────┼────┴────┴────┴────┴────┼────┴────┴────┴────┴────┘
                                           └> elemento da segunda linha, terceira coluna
</pre>
 ## 2. Listas Ligadas<br/>Estrutura de lista em memória não contígua.
 *Lista Ligada é uma estrutura que corresponde a uma sequência lógica de entradas ou nós.* Em uma lista ligada há 1 ou 2 pontos conhecidos de acesso - normalmente o topo da lista (seu 1º elemento) e, eventualmente, o fim da lista (seu último elemento). Cada nó armazena também a localização do próximo elemento na sequência, ou seja, de seu nó sucessor. Desse modo, o armazenamento de uma lista não requer uma área contígua de memória.
<pre>
───────────────────────┬─/ /─┬───────────────────────┬─/ /─┬───────────────────────┬─
  ┌─────────────────┐  |     |  ┌─────────────────┐  |     |  ┌─────────────────┐  |
  | BMW M5          |  |     |  | MUSTANG MACH 1  |  |     |  | DODGE HELLCAT   |  |
  |     ┌──────────┐|  |     |  |     ┌──────────┐|  |     |  |     ┌──────────┐|  |
  └─────┤ PONTEIRO ├┘  |     |  └─────┤ PONTEIRO ├┘  |     |  └─────┤ PONTEIRO ├┘  |
        └─────┬────┘   |     |        └─────┬────┘   |     |        └─────┬────┘   |
──↑───────────|────────┴─/ /─┴───↑──────────|────────┴─/ /─┴───↑──────────|────────┴─
  |           └──────────────────┘          └──────────────────┘          |
  └───────────────────────────────────────────────────────────────────────┘
</pre>
 Nesta estrutura, os nomes não ocupam uma área contígua de memória, por isso cada elemento da estrutura tem o dado (nome) e um apontador (ponteiro) para o próximo nome. Observe os Ponteiros ligando os nós da lista.
<pre>
┌─────────────────┐
| ponteiro para o |
| início da lista |
└────────┬────────┘
         |
 ╭───────╯                          ┌──────┬──────────┐
 v                        ╭───────> | nome | ponteiro |
┌──────┬──────────┐       |         └──────┴─────┬────┘
| nome | ponteiro ├───────╯                      |
└──────┴──────────┘               ╭──────────────╯
                                  v
                                 ┌──────┬──────────┐
                                 | nome | ponteiro |
                                 └──────┴──────────┘
</pre>
 Uma lista ligada não permite acesso direto a qualquer elemento da lista (como em um vetor), isto é, você precisa percorrer todos os elementos de uma lista até encontrar o que você precisa. Listas ligadas são muito usadas quando não se sabe o tamanho da memória requerida para uma determinada aplicação. Assim, a lista é preferível ao vetor (lista contígua) quando houver necessidade de inserir e remover elementos. Já em um vetor, é necessário fazer muitos deslocamentos de nomes se for necessário preencher a lista com novos elementos. Mas a vantagem do vetor é o acesso direto. Lista Ligada: Eliminando um elemento. Observe que a remoção de um elemento implica no rearranjo de ponteiro e só. Quando queremos eliminar um elemento da lista, podemos simplesmente desviar a posição do ponteiro e nenhum elemento aponta para o elemento a ser eliminado. Isso equivale à sua eliminação.
<pre>
┌─────────────────┐
| ponteiro para o |
| início da lista |
└────────┬────────┘
         |
 ╭───────╯        ponteiro antigo   ┌──────┬──────────┐
 v                        ╭ ─ ─ ─ > | nome | ponteiro |
┌──────┬──────────┐       |         └──────┴─────┬────┘
| nome | ponteiro ├ ─ ─ ─ ╯                      |
└──────┴─────┬────┘               ╭──────────────╯
             |                    v
             |     ponteiro novo ┌──────┬──────────┐
             ╰─────────────────> | nome | ponteiro |
                                 └──────┴──────────┘
</pre>
 *Inserindo um elemento em uma Lista Ligada:* O mesmo acontece na inserção, só há mudança de ponteiros. A inclusão de um elemento na lista mais uma vez significa ajuste de ponteiros. O novo elemento deve apontar para seu sucessor.
<pre>
┌─────────────────┐
| ponteiro para o |
| início da lista |
└────────┬────────┘
         |                          novo elemento   ╭───────────────────╮
 ╭───────╯            ponteiro novo ┌──────┬────────┴─┐  ponteiro novo  |
 v              ╭─────────────────> | nome | ponteiro |                 v
┌──────┬────────┴─┐                 └──────┴──────────┘               ┌──────┬──────────┐
| nome | ponteiro ├─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─> | nome | ponteiro |
└──────┴──────────┘                  ponteiro antigo                  └──────┴────────┬─┘
                                                                                      |
                                                                              ╭───────╯
                                                                              v
                                                                            ┌──────┬──────────┐
                                                                            | nome | ponteiro |
                                                                            └──────┴──────────┘
</pre>
 *Havendo ponteiros, é lista ligada, havendo índice, é vetor.*

 ## 3. Árvores<br/>Conceito e aplicações.
 Na computação, o uso das estruturas em árvores são comuns. Um exemplo de árvore seria uma lista com subitens:<br/>

1. Item<br/>
⠀⠀1.1 Sub-Item<br/>
⠀⠀1.2 Sub-Item<br/>
⠀⠀1.3 Sub-Item<br/>
2. Item<br/>
⠀⠀2.1 Sub-Item<br/>
⠀⠀2.2 Sub-Item<br/>
3. Item

 Em uma árvore, a organização dos elementos se dá de forma hierárquica, existindo um elemento que fica no topo da árvore, chamado de raiz e os elementos subordinados a ele, os nós filhos. Cada nó filho pode conter zero, 1 ou mais de 1 nó filho. Estruturas em árvore possibilitam algoritmos mais eficientes.
<pre>
                       ┌─────────┐
                       | nó raiz |
                       |    A    |
                       └──┬─┬─┬──┘
        ╭─────────────────╯ | ╰─────────────────╮
     ┌──┴──┐             ┌──┴──┐             ┌──┴──┐
   ╭─┤  B  ├─╮         ╭─┤  C  ├─╮         ╭─┤  D  ├─╮
   | └─────┘ |         | └─────┘ |         | └─────┘ |
┌──┴──┐   ┌──┴──┐   ┌──┴──┐   ┌──┴──┐   ┌──┴──┐   ┌──┴──┐
|  E  | ╭─┤  F  ├─╮ |  G  |   |  H  |   |  I  |   |  J  |
└─────┘ | └─────┘ | └─────┘   └─────┘   └─────┘   └─────┘
     ┌──┴──┐   ┌──┴──┐
     |  K  |   |  L  |
     └─────┘   └─────┘
</pre>
 Árvore implementada por um sistema de listas ligadas. Note que a implementação da árvore se dá por lista ligada mas poderia ser por vetores também. Isto é uma lista ou um vetor pode representar uma árvore, embora a representação por listas seja mais fácil de se encontrar em algoritmos. O NIL representa um ponteiro que não aponta para outro elemento. Organização real do armazenamento. Organização conceitual e real de uma árvore binária com a utilização de um sistema de armazenamento ligado.
<pre>
  ┌────────────────┐                  ┌───┬───┬───┐                  ┌───┬───┬───┐
  | ponteiro para  ├────────────────> | A |   |   ├────────────────> | C |NIL|   |
  | raiz da árvore |                  └───┴─┬─┴───┘                  └───┴───┴─┬─┘
  └────────────────┘                        |                                  v
  ╭─────────────────────────────────────────╯                                ┌───┬───┬───┐
  v   ╭─────────────────────────────────────────╮                            | F |NIL|NIL|
┌───┬─┴─┬───┐                                   v                            └───┴───┴───┘
| B |   |   |                                 ┌───┬───┬───┐
└───┴───┴─┬─┘                                 | D |NIL|NIL|
          |                                   └───┴───┴───┘
          |                                   ┌───┬───┬───┐
          ╰─────────────────────────────────> | E |NIL|NIL|
                                              └───┴───┴───┘
</pre>
- **Árvore de Pesquisa Binária**<br/>
 É uma estrutura de dados útil quando precisam ser tomadas decisões bidirecionais em cada ponto de um processo. Um exemplo: encontrar todas as repetições numa lista de números. Uma forma para fazer isto é comparar cada número com todos que o precedem. Percorremos uma árvore para imprimir uma sequência de valores; para buscar um elemento; para encontrar um elemento mínimo ou máximo; para obter o predecessor ou sucessor de um elemento; para inserir ou eliminar um elemento. Repare como a "altura" da árvore tem relação com percorrê-la. Note que em uma árvore binária, à esquerda de um nó pai, os filhos da subárvore esquerda são menores e os filhos da subárvore direita são maiores. Observe como algoritmos PreOrdem, InOrdem e PosOrdem geram saídas diferentes. A chave da raiz de uma sub-árvore é impressa entre os valores de sua sub-árvore esquerda e sub-árvore direita. Um exemplo de aplicação: encontrar todas as repetições em uma lista de números, verificar se um dado elemento está presente na árvore ou não está, qual o menor ou qual o maior elemento de uma lista.
<pre>
┌─────────────────┐  ┌───────────┐
|        5        |  |  2        |
|       / \       |  |   \       |
|      3   7      |  |    3      |
|     / \   \     |  |     \     |
|    2   5   8    |  |      7    |
└─────────────────┘  |     / \   |
                     |    5   8  |
                     |   /       |
                     |  5        |
                     └───────────┘
</pre>
 ## 4. Filas e Pilhas com Listas Ligadas.
 - **Pilhas**<br/>
 Quando operamos uma estrutura em que as operações de inserção ou remoção ocorrem só em um dos extremos da lista, chamamos essa estrutura de uma pilha. São estruturas de dados do tipo LIFO (last-in-first-out), onde o último elemento a ser inserido será o primeiro a ser retirado. Assim, uma pilha permite acesso a apenas um item de dados - o último inserido. Para processar o penúltimo item inserido, deve-se remover o último. São muito importantes quando precisamos armazenar um conjunto de dados para ser utilizado em um determinado software. Uma vez criada a pilha, seus elementos podem ser descarregados mas sempre a partir do topo da pilha. A extremidade em que as operações ocorrem é chamada de topo da pilha, a outra é chamada de base da pilha. O processo de inserir um objeto no topo da pilha é chamado de empilhamento (push), o de remover, operação de desempilhamento (pop). A memória do computador tem estrutura de uma pilha. Exemplo:
<pre>
           estado da pilha durante a execução do programa
INSTRUÇÕES  |  ┌────┬────┬────┬────┬────┬────┬─────┐
            |  |    |    |    |    |    |    |     |
PUSH #2     |  ├────┼────┼────┼────┼────┼────┼─────┤
PUSH #4     |  |    |    | 06 |    | 02 |    |     |
PUSH #6     |  ├────┼────┼────┼────┼────┼────┼─────┤
ADD         |  |    | 04 | 04 | 10 | 10 | 20 |     |
PUSH #2     |  ├────┼────┼────┼────┼────┼────┼─────┤
MUL         |  | 02 | 02 | 02 | 02 | 02 | 02 | -18 |
SUB         |  └────┴────┴────┴────┴────┴────┴─────┘
               INÍCIO ─────────────────────────> FIM
</pre>
 - **Filas**<br/>
 Em uma fila, as inserções são realizadas em uma extremidade e as remoções na outra. São estruturas de dados do tipo FIFO (first-in-first-out), onde o primeiro elemento a ser inserido, será o primeiro a ser retirado, ou seja, adiciona-se itens no fim de remove-se do início. Outra forma de considerar fila é pensar que nela os objetos são retirados de acordo com a ordem com que chegaram. A extremidade na qual são retirados os elementos é chamada de início da fila, onde eles são inseridos é chamado de fim da fila. Exemplo:
<pre>
  ₀                       ₁   ₀                   ₂   ₁   ₀               ₃   ₂   ₁   ₀           ₃   ₂   ₁   ₀
┌───┬───┬───┬───┐  |    ┌───┬───┬───┬───┐  |    ┌───┬───┬───┬───┐  |    ┌───┬───┬───┬───┐  |    ┌───┬───┬───┬───┐
| A |   |   |   |  |  ─>| B | A |   |   |  |  ─>| C | B | A |   |  |  ─>| D | C | B | A |  |  ─>| E | D | C | B | A
└───┴───┴───┴───┘  |    └───┴───┴───┴───┘  |    └───┴───┴───┴───┘  |    └───┴───┴───┴───┘  |    └───┴───┴───┴───┘ ─>
</pre>

<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-conceitos_basicos/logica_de_programacao.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#conceitos_basicos">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/1-fundamentos_de_computacao/1.2-conceitos_basicos/algoritmos.md">next</a>