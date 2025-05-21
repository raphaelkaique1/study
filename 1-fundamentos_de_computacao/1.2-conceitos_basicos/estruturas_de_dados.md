 # Estruturas de Dados
 Em computação é comum utilizar os dados de forma conjunta, e a forma como estes dados serão agregados e organizados depende de como serão utilizados e processados, levando-se em consideração, por exemplo, a eficiência para buscas, o volume dos dados trabalhados, a complexidade da implementação e a forma como os dados se relacionam. Estas diversas formas de organização são as chamadas estruturas de dados. As estruturas de dados junto com o estudo de algoritmos fazem parte dos fundamentos da programação. Os dados são os blocos básicos da programação, podendo representar uma unidade ou um elemento de informações, que podem ser acessados através de um identificador. Estruturas de dados são formas específicas de organizar, armazenar e manipular dados de forma eficiente, visando facilitar o acesso e a modificação desses dados dependendo do problema que se deseja resolver. Pode-se descrever a estrutura de dados como uma abstração computacional que define como os dados são armazenados na memória, relacionados entre si, acessados e manipulados. São a base lógica de software, desde algoritmos simples até sistemas complexos, todos se apoiam em estruturas de dados para funcionar corretamente. Podemos afirmar que um programa é composto de algoritmos e estruturas de dados, que juntos fazem com que o programa funcione como deve. Cada estrutura de dados tem um conjunto de métodos próprios para realizar operações como:
 - inserir ou excluir elementos
 - buscar e localizar elementos
 - ordenar e classificar elementos de acordo com alguma ordem especificada

 As estruturas de dados podem ser lineares ou não lineares, homogêneas — onde todos os dados que compõe a estrutura são do mesmo tipo — ou heterogêneas — que podem conter dados de vários tipos; estáticas — com tamanho e capacidade de memória fixa — ou dinâmicas — que podem se expandir. Os tipos de estrutura de dados podem ser agrupados em categorias:
 1. **Estruturas Lineares**: armazenam os dados de forma *sequencial*, ou seja, linha a linha.
    - **Array** — Vetores e Matrizes: possuem tamanho fixo, acessados por índice.
    - **Linked Lists** — Listas Ligadas: cada elemento aponta para o próximo, para acessar um elemento deve-se passar por todos os anteriores.
      - Listas Simples
      - Lista Duplamente Ligada
      - Lista Circular
    - **Stack** — Pilha: *LIFO*, o último elemento a entrar na pulha é o primeiro a sair.
    - **Queue** — Fila: *FIFO*, o primeiro elemento a entrar é o primeiro a sair.
    - **Deque** — Double-Ended Queue: insere e remove os elementos de ambos os lados.
 2. **Estruturas Hierarquicas**: organizam os dados de forma hierarquica, como elementos pais e filhos.
    - **Trees** — Árvores: Estrutura em forma de galhos, ou seja, não cíclica.
      - Árvore Binária
      - Árvore Binária de Busca — BST
      - Árvore Balanceada — AVL
      - Árvore B — Data Bases
      - Árvore de Prefixos — Trie
      - Árvore de Intervalos — Segment Tree
      - Árvore de Somas — Frenwick Tree
    - **Heap** — Min Heap & Max Heap: usada em algoritmos de prioridade, como em filas de prioridade.
 3. **Estruturas de Grafos**: conjunto de nós conectados por arestas.
    - **Graphs** — Grafos: modelagem de dados estruturados que representam entidades e relacionamentos.
      - Direcionados / Não Direcionados
      - Ponderados / Não Ponderados
      - Cíclicos / Acíclicos
      - Conexos / Desconexos
      - Lista de Adjacência
      - Matriz de Adjacência
  4. **Estruturas Associativas** — Mapeamentos: permitem associar uma chave a um valor.
     - **Hash Table** — Hash Map / Dicionário: associações chave-valor com busca eficiente.
     - **Set** — Conjunto: armazena apenas valores únicos, podendo usar hashing ou árvore balanceada.
  5. **Estruturas Derivadas e Abstratas**: combinam ou especializam as anteriores.
     - **Tuplas**: coleções imutáveis ordenadas.
     - **Record / Struct / Object**: coleções nomeadas, ou seja, pares de chave e valor.
     - **Union**: tipos mistos em linguagens C & C Like.
     - **Priority Queue**: fila ordenada por prioridade.
     - **Multimap & Multiset**: permitem múltiplos valores por chave.
     - **Bloom Filter**: estrutura probabilística para verificar pertencimento.
     - **Skip List**: alternativa eficiente à árvore balanceada.
     - **Disjoint Set & Union-Find**: estrutura para conjuntos disjuntos.

 ## Abstração de Dados
 A forma como o usuário e o programador lidam com os dados não corresponde à forma verdadeira como os dados estão armazenados na memória do computador, ou como eles são realmente. Chamamos de abstração de dados, estruturas muito úteis que "mascaram" os dados para visualizar e manipulá-los de forma à tornar as soluções de uso mais intuitiva. A maioria das linguagens de programação possuem métodos nativos para a manipulação de dados, como inserir e remover elementos de arrays por exemplo. Estes métodos fazem uma boa parte do trabalho de ordenar e buscar elementos.

 - **array**: lista ordenada de valores que pode conter dados, outros arrays e praticamente qualquer outro tipo de estrutura de dados. Pode armazenar dados do mesmo tipo ou não a depender da linguagem. Possui funções próprias para manipular elementos em qualquer posição da lista, porém, existem situações onde é desejável mais controle sobre as operações que podem ser feitas na estrutura, e é onde recebe a implementação de estruturas de dados como a **pilha** — *stack* — e a **fila** — *queue*.
 - **stack**: a pilha é uma estrutura de dados que, assim como o array, é similar a uma lista. O paradigma principal por trás da pilha é o **LIFO** — **L**ast **I**n, **F**irst **O**ut — onde o último elemento a entrar é o primeiro a sair. Para ilustrar melhor o que isso significa, podemos imaginar uma pilha de livros por exemplo, o 1ª livro a ser retirado da pilha é obrigatoriamente o último que foi colocado — ou seja, o do topo. Abstraindo este princípio para código, percebe-se que há apenas 2 métodos possíveis para manipular os dados de uma pilha: **inserir um elemento no TOPO da pilha**, e **remover um elemento do TOPO da pilha**. O caso de uso mais conhecido dessa estrutura é a *call stack*, onde a ordem de execução dos processos *chamados* por um programa via funções ou métodos obedece o princípio de pilha. Outro recurso do dia a dia que utiliza pilhas para funcionar é o mecanismo de "voltar" e "avançar" páginas dos navegadores, onde os endereços visitados vão se empilhando, e, quando a função de "voltar" é executada, o último endereço visitado — ou seja, o que está no topo da pilha — é o 1º a ser visualizado.
 - **queue**: a fila tem uma estrutura semelhante à pilha, porém com uma diferença conceitual importante no que diz respeito ao seu funcionamento, em que o paradigma que a rege é o **FIFO** — **F**irst **I**n, **F**irst **O**ut — onde, o 1º elemento a entrar é também o 1º a sair. Imagine uma fila de atendimento de um balcão, a pessoa que chegou antes — ou seja, chegou primeiro — é que será atendida, e a 2º pessoa a chegar será a próxima a ser atendida, e assim por diante. A fila como estrutura de dados segue o mesmo princípio. Sendo assim, também há somente 2 formas de se manipular uma fila: **inserir um elemento no FINAL da fila** e **remover um elemento no INÍCIO da fila**.
 - **deque**: essa estrutura é uma variação da fila que aceita inserção e remoção de elementos tanto do início quanto do final da fila. É como a junção das estruturas de pilha e fila.
 - **circular queue**: estrutura onde o último elemento é conectado ao 1º, como em um círculo. Essa estrutura busca resolver a limitação da fila linear de lidar com espaços vazios que podem se enfileirar após a retirada de elementos do início da fila. Um exemplo é o uso do comando `alt`+`tab` pelos SOs, que fazer o gerenciamento de navegação em janelas utilizando este princípio.
 - **linked list**: como arrays não possuem tamanho fixo e todos os elementos em arrays ocupam espaços sequenciais na memória, inserir ou remover elementos do meio do array não é uma tarefa simples por exigir que estes elementos sejam deslocados, como por exemplo, ao remover o elemento `30` do array `[10, 20, 30, 40]`, o elemento `40` passa a ocupar o índice 2 — no lugar do elemento `30`, que foi removido — `[10, 20, 40]`. Este trabalho de deslocamento é feito internamente pelos métodos nativos de array que as linguagens já possuem, por isso normalmente não é da preocupação do desenvolvedor, mas ele está implementado no código-fonte da linguagem. Assim como arrays, as listas ligadas também armazenam elementos sequencialmente, porém, ao invés de armazenar os elementos de forma contígua na memória — como nos arrays — as listas ligadas utilizam ponteiros para unir os elementos, onde cada elemento *aponta* para o endereço de memória do próximo da lista sem que ele precise estar no bloco de memória seguinte. Dessa forma, ao trabalhar com listas ligadas também não é necessário fazer o deslocamento de elementos ao realizar uma operação de IO — considerando que, cada vez que esse deslocamento é feito em um array é necessário reposicionar os elementos em novos espaços de memória. Cada nó da lista aponta para o ponteiro de memória onde se encontra o próximo elemento, independente de onde esteja este espaço na memória.<br/>
 ![Image](https://cdn-wcsm.alura.com.br/2025/04/imagem2-55.png)
 - **conjunto**: lista não ordenada de elementos únicos, onde não é possível repetir o valor de um elemento dentro deste conjunto. Muito usado para operações de união e intersecção em conjuntos de dados.
 - **dicionário**: também conhecido como mapa, map ou hashmap, é uma estrutura que guarda dados em pares de chave e valor, e utiliza estas chaves para encontrar os elementos associados a elas, diferentemente das estruturas que trabalham com listas — sequenciais ou não — que apenas trabalham com valores — e seus índices. Apesar da semelhança com objetos, essa estrutura possui muitas diferenças, como por exemplo a possibilidade de mapear o tamanho de um dicionário, ou seja, a quantidade de pares chave-valor, além de que um dicionário aceita qualquer tipo de dado como chave, enquanto objetos aceitam apenas strings ou symbols. Os dicionários também podem ter uma melhor performance em busca e manipulação de dados do que os objetos, pois utilizam uma referência para as chaves, de forma similar aos ponteiros, as chaves apontam para o endereço de memória de seus valores. Este formato é utilizado sempre que há a necessidade de associar dados e referências para consulta posterior, sendo muito usado para lidar com dados armazenados em bancos de dados.
 - **árvore**: estrutura não sequencial utilizada para armazenar dados de forma hierárquica que podem ser acessados de forma rápida. Pode-se definir uma árvore como uma coleção de dados representados por nós e distruibuídos em níveis hierarquicos, ao invés de sequências. Um exemplo de árvores são os organogramas em empresas.<br/>
 ![Image](https://cdn-wcsm.alura.com.br/2025/04/imagem3-47.png)
 - **heap**: o heap é um "monte", é um tipo especial de estrutura hierarquica, normalmente utilizado em computação para implementar filas de prioridade, pois em um heap pode-se extrair de forma mais eficiente o valor mínimo de máximo de uma lista.
 - **grafo**: estrutura não sequencial de um conjunto de nós — ou *vértices* — ordenados ou não, ligados por arestas, formando uma estrutura de forma de rede. Cada um dos vértices de um grafo podem representar um tipo de dado ou sua referência. As arestas podem ser não direcionadas — onde não possuem uma direção definida — ou direcionadas, além de ter um valor — também chamado de peso — que representa um custo operacional, capacidade entre outros valores para cada *"caminho"*. Muito usado para manejar grandes quantidades de dados relacionados entre si, por exemplo o GraphQL, que utiliza grafos para acessar e relacionar dados, ou mesmo sistemas de navegação de aplicativos de mapas, que utilizam grafos e o algoritmo de caminho mínimo — *shortest path* — para traçar rotas.<br/>
 ![Image](https://cdn-wcsm.alura.com.br/2025/04/imagem5-35.png)<br/>
 *grafo de arestas não direcionadas*
 ![Image](https://cdn-wcsm.alura.com.br/2025/04/imagem6-22.png)
 *grafo de arestas direcionadas*

 ## 1. Vetores e Matrizes: Abstraindo os dados<br/>Conhecendo a estrutura de lista em memória contígua.
 Também chamado de vetor, matriz ou arranjo, um array é a mais comum das estruturas de dados, sendo descrito como uma lista ordenada de valores. Por *ordenada* entende-se que é uma lista onde os valores sempre são acessados na mesma ordem, ou seja, a não ser que seja utilizada alguma função ou método para alterar a ordem, o primeiro elemento sempre terá o valor definido inicialmente e assim por diante. Uma lista é uma coleção de elementos que aparecem sequencialmente. São exemplos: listas de convidados de uma festa, lista de compras. Nomes também podem ser vistos como listas de letras. Um array permite acesso direto a qualquer elemento da lista, isto é, você não precisa percorrer todos os elementos de uma lista até encontrar o que você precisa, basta usar o índice da estrutura. Observe a figura abaixo uma parte da memória do computador, as informações estão uma “ao lado” da outra. Um **vetor** *é uma lista linear na qual a ordem lógica dos elementos, ou seja a ordem "vista" pelo usuário, é a mesma ordem física — em memória — dos elementos.* Isto é, elementos vizinhos na lista estarão em posições vizinhas na memória. Vejamos por exemplo como seria armazenado na memória uma lista de nomes de pessoas armazenadas de forma contígua.
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
 Sendo a mais comum estrutura, arrays são utilizados em praticamente toda situação que envolva organizar dados de um mesmo tipo, sejam dados recebidos por uma API, enviados a uma base de dados, ou mesmo passados como parâmetro para uma função ou método. Os arrays também podem ser multidimensionais, sendo utilizados sempre que há necessidade de tabular dados.

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
1. Item<br/>
⠀⠀2.1 Sub-Item<br/>
⠀⠀2.2 Sub-Item<br/>
1. Item

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