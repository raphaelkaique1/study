# DESENVOLVIMENTO BACK-END
 Este profissional é o encarregado de trabalhar no *lado do servidor*. Na prática, é quem está nos *bastidores* permitindo com que o usuário desfrute da sua navegação com o máximo de conforto. Para se tornar um desenvolvedor back-end, é necessário ter um amplo conhecimento em várias linguagens, bem como estar familiarizado com *bancos de dados*. Estes são os desafios do programador back-end:
 - **Possui extenso conhecimento em linguagens e frameworks**<br/>
 É importante que se tenha um conhecimento sólido destes tipos de linguagens para o desenvolvimento completo e eficiente de seu trabalho, entre algumas mais destacadas encontram-se:
   - **ASP.NET**: Uma platadorma de desenvolvimento web da Microsoft, com formulários web e variantes (MVC e APS.NET Core MVC).
   - **PHP**: WordExpress usa PHP juntamente com seu framework Larável.
   - **Python**: Fácil de aprender, especialmente usando Django (ou Flask) como framework.
   - **Ruby**: Usado com seu framework OnRails.
   - **Node.js**: Utiliza a mesma linguagem que o lado do cliente, JavaScript — TypeScript o deixa ainda melhor e confiável.
   - **JAVA**: Linguagem clássica de alta demanda, muito usado com Spring e SpringBoot.
 - **Familiaridade com bancos de dados**<br/>
 Um desenvolvedor back-end precisa saber exatamente como funcionam os bancos de dados. Isso porque toda aplicação web precisa armazenar dados de alguma forma. Levando isto em consideração, entre as bases de dados mais comumente tratadas estão:
   - **MySQL**
   - **SQL Server**
   - **PostgreSQL**
   - **Oracle**
   - **MongoDB** (é um *BBDD*, não *NoSQL*)

**_*O ideal é que, com o tempo, cada desenvolvedor se especialize em 1 (no máximo 2)._**

## SERVIDOR
Um servidor é qualquer computador ou software que espera e responde requisições de outros dispositivos, os clientes. Servidores são utilizados para executar a lógica de negócio das aplicações, sejam elas com ou sem interação com o usuário, podendo ser um banco de dados para armazenamento e gerenciamento de informação, disponibilizar aplicações e seus arquivos, ou mesmo ambos.<br/>
Servidores podem ser configurados especialmente para atender à diversas diferentes finalidades, a depender de qual objetivo tem de se cumprir. Um servidor web especificamente é um software responsável por armazenar, processar e entregar páginas web aos usuários através da internet. Quando um site é acessado, o cliente faz uma `request` ao servidor web, que por sua vez responde com os arquivos necessários — HTML, CSS, JS, imagens, etc — para que o conteúdo seja exibido corretamente na tela. Além disso, podem executar a lógica das aplicações, realizar CRUDs em banco de dados, entre outras funções necessárias relacionadas com o projeto.

## CONTENT DELIVERY NETWORK
**CDN** é uma **Rede de Distribuição de Conteúdo**. É basicamente uma rede de servidores espalhados pelo mundo que entrega conteúdos como imagens, vídeos, arquivos, scripts e muito mais para os usuários de forma rápida, confiável e segura, usando o servidor mais próximo do usuário.<br/>
Quando um site que usa uma CDN é acessado, a CDN dectecta via IP o local de onde o usuário está acessando, então redireciona a requisição para o servidor mais próximo desta localização, assim reduzindo o tempo de carregamento melhorando a experiência.<br/>
Uma CDN serve principalmente arquivos estáticos como HTML, CSS, JS, PDF, mídias, fontes (como o Google Fonts), bibliotecas e frameworks (JQuery, React, Bootstrap entre outros). Isso é vantajoso por ser um método com menos latência, o que torna o site mais rápido, diminui a carga no servidor do site e consequentemente aumenta a disponibilidade pois se um servidor cair outro irá assumir, aumenta também a segurança com proteção DDoS e TLS/SSL e possuem baixo custo (ou nenhum) com jsDelivr, CDN do Cloudfare ou Google CDN.
```html
<!-- index.html -->
<div id="app">
  <p>{{ mensagem }}</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script>
  new Vue({
    el: '#app',
    data: {
      mensagem: 'Olá Raphael!'
    }
  });
</script>
```

## [NodeJS](https://nodejs.org/pt)
Na atualidade, a criação de aplicações tem como foco arquiteturas que sejam escaláveis e a entrega de soluções em tempo real, além da atenção à componentização e segurança. Além disso, soma-se a esse cenário a revolução iniciada pelos smartphones, com o uso cada vez mais intenso das mídias sociais e o aumento de soluções de IoT. Nesse contexto, os paradigmas conhecidos no desenvolvimento de aplicações também têm passado por diversas mudanças que vão do Front-end ao Back-end, onde pensamos cada vez mais em *uma solução como um todo*, levando em consideração o consumo de dados e a disponibilidade de infraestrutura. O JS foi criado para facilitar o desenvolvimento de sites mais interativos e dinâmicos, como uma linguagem de progamação de alto nível que roda nos navegadores. Com a evolução da web, outras utilidades foram criadas e adicionadas a ele. E é nessa conjuntura que nasce o Node.js em 2009, um software livre e gratuito que permite rodar aplicações JS no lado do servidor, surgindo como uma solução poderosa e barata para a criação e a manutenção de ambientes de tecnologia com altas demandas com a vantagem de manter o ecossistema de aplicações e toda a base de código em 1 só linguagem de programação. Soma-se a isso o fato de que desenvolvedores de JavaScript trabalham com uma linguagem simples, interpretada e que não necessita da instalação de ferramentas complexas de desenvolvimento. Esses são alguns dos fatores motivadores do criador do projeto do Node.js, o engenheiro de software Ryan Dahl, responsável por esse ambiente de execução do código JavaScript fora do navegador, diretamente na máquina. O Node não é um framework JS como React ou Vue, mas sim um **ambiente de execução** *em uma máquina virtual própria para interpretar e executar os scripts de forma autônoma*, baseada no motor V8 criado pelo Google para o seu navegador. O Node foi criado como uma alternativa ao Apache HTTP Server, o servidor web mais popular da época, pois Dahl criticava algumas limitações do Apache, como o suporte relativamente baixo a múltiplas conexões, buscando resolver este problema com uma abordagem focada em *eventos* e *execução assíncrona*, sendo uma opção mais responsiva e com menos consumo de recursos que os servidores tradicionais. Sua principal característica é sua execução *single-thread*, onde os recursos computacionais são alocados apenas uma vez pelo tempo que a aplicação estiver sendo executada. Aplicações multi-thread, como as criadas com PHP por exemplo, requerem a criação de uma thread a cada nova requisição, não sendo executada enquanto a anterior não for finalizada. .Essa thread única é chamada de *Event Loop*, e trata todas as requisições como eventos, de maneira assíncrona e não-bloqueante, eliminando a necessidade de filas de processamento, tornando as aplicações mais eficientes e responsívas. Devido ao baixo consumo de recursos e à capacidade de processar várias requisições simultaneamente, o Node é muito utilizado em aplicações que requerem uma alta escalabilidade, ou seja, que possam crescer sem perder qualidade ou aumentar os custos. Atualmente, o Node é mantido pela [OpenJS Foundation](https://openjsf.org/), uma fundação criada em 2019 com o objetivo de promover a utilização do JS e de suas tecnologias relacionadas.<br/>
No desenvolvimento web existem 2 fatos: **navegador só interpreta JavaScript puro e JavaScript puro roda apenas em navegadores**. Como o JS nasceu exclusivamente para ser interpretado no lado do cliente, com o tempo a linguagem foi ganhando mais relevância e ferramentas, tornando-se poderosa e fácil de utilizar em vários cenários. Pensando em dar maior flexibilidade ao JS para poder aproveitar suas vantagens em diferentes projetos, nasceu o **Node.JS**, que é um **ambiente de execução JavaScript**, ou seja, é uma plataforma para criar e executar código JS *fora do ambiente do navegador web*, no lado do servidor, que na prática se reflete na possibilidade de criar aplicações *standalone* em uma máquina servidora.<br/>
Algumas características marcantes do Node é ser altamente escalável, o que torna possível criar aplicações Web que trabalham muito bem com alto número de requisições, e também pelo fato dele ser multiplataforma, multiparadigma, *open source* e sua grande e colaborativa comunidade. O Node.js é uma ferramenta extremamente potente, e isso se deve ao fato de possuir dentro de si o *Chrome's V8 JavaScript Engine*. Sendo esse o motor V8 de alto desempenho do Chrome, que torna possível visualizar as páginas em JS no browser. Quando iniciamos o Node.js com o comando `node` no terminal, iniciamos um processo que engloba um interpretador JavaScript e um utilitário CLI, e é neste processo aberto no terminal que irá acontecer a interpretação e execução do JavaScript runtime. Para esse processo de interpretação, o Node.js faz uso do V8, mais precisamente conhecido como Chrome’s V8 JavaScript engine. O V8 é um poderosíssimo interpretador JavaScript desenvolvido pelo Google e utilizado pelo Chrome. Ele também é conhecido como a máquina virtual do JavaScript. Foi desenvolvido usando a linguagem **C++**, é de código aberto e nasceu com a intenção de acelerar a execução de aplicações desenvolvidas em JavaScript. Por fornecer uma boa performance, várias plataformas têm adotado o Node.js como um solução viável e eficaz de tecnologia para Back-end. É interessante apontar que existem outros “motores” para JavaScript, como o SpiderMonkey, do Firefox, ou o WebKit, do Safari, mas o adotado pelo Node.js é o V8. De forma geral, o processo de funcionamento desses motores pode ser resumido nas seguintes etapas:
1. O motor acessa o código JavaScript, que veio da leitura da tag `script` de um arquivo HTML ou por meio do download de um arquivo JavaScript;
2. Executa o `Parser` — processo de análise e conversão;
3. Monta a [**A**bstract **S**yntax **T**ree](https://astexplorer.net/), um mapeamento que identifica o que cada parte do código está fazendo;
4. Por fim, interpreta a AST. Nesta etapa, ao interpretar a AST, o motor V8 gera os bytecodes a serem executados pela máquina. Neste processo, ainda existe um estágio de otimização do código gerado.

Imagine a escrita da seguinte função em Javascript:
```js
function soma(num1,num2) {
  return num1 + num2;
}
```

Nesse processo de análise e conversão teremos a seguinte AST:
```js
Program {
  type: "Program"
  start: 0
  end: 50
  body: [
    FunctionDeclaration {
      type: "FunctionDeclaration"
      start: 0
      end: 50
      id: Identifier {type, start, end, name}
      expression: false
      generator: false
      async: false
      params: [2 elements]
      body: BlockStatement {
        type: "BlockStatement"
        start: 25
        end: 50
        body: [
          ReturnStatement {type, start, end, argument}
        ]
      }
    }
  ]
  sourceType: "module"
}
```

A imagem abaixo representa uma abstração do processo de execução do código JS pelo motor V8:

![Image](https://www.alura.com.br/artigos/assets/node-js/processo-execucao-codigo-javascript-motor-v8.png)

Com a execução da sequência de processos apresentada no esquema, o motor JS interpreta e compila o código para um bytecode otimizado para executar no computador.

Uma das mais atrativas característica do Node é ser um ambient de execução assíncrono, com isso ele trabalha de forma a não bloquear a aplicação no momento de sua execução, colocando os processos mais demorados em segundo plano. Isso diferencia o Node de outras plataformas como Java, PHP e .NET, pelo fato de ser *single thread*, ou seja, o Node não inicia threads em paralelo como nas outras plataformas. Por se tratar de um sistema single thread, o Node não tem a necessidade do gerenciamento de múltiplas threads, otimizando assim, o processo e o consumo de memória da aplicação.

### COMPONENTS
Antes de aprofundar em loop de eventos e como ele funciona, existem 3 pontos importantes para se conhecer, que são as partes que compõem o Node:

1. **architecture**<br/>
É normal que se entenda o Node como uma ferramenta "única", que realiza sozinha todas as partes de interpretação do JS e do processamento de dados. Porém, o Node é na verdade composto por diversas bibliotecas diferentes. Quando ouvimos falar de Node, pode parecer que ele foi criado para fazer o trabalho do navegador de interpretar o JS fora do ambiente do browser, e também que é um programa que lê arquivos JS e retorna seus resultados no terminal.<br/>
Na verdade o Node faz muito mais e está longe de ser 1 só software. Ele é composto por várias APIs e bibliotecas separadas, que são necessárias se conhecer para enteder melhor alguns conceitos importantes para o Node como **assíncronicidade**, **threads** e **callbacks**.

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-seus-componentes/imagem1.jpg)

Acima temos a estrutura do Node e seus componentes internos:
- **core API**: API essencial do JS, responsável pela implementação do Node em alto nível.
- **C++ bindings**: responsáveis por englobar e expor bibliotecas e métodos em C++ que são utilizados através do Node.
- **V8**: o motor de execução que faz com que o Node consiga compreender o código em JS. Este motor é escrito em C++, o V8 recebe uma string de código em JS, intepreta e executa. É onde se encontra a implementação da maior parte das funções e métodos JS.
- **libuv**: uma das principais partes que compõem o Node, é uma lib escrita em C++ que faz a parte de manipulação de eventos e o manejo de processos assíncronos como timers e funções. Esta lib dá acesso do Node ao sistema operacional, ao sistema de arquivos — conhecido como `fs - file system`, conexões e etc. Além disso, delega a execução de algumas partes do programa ao SO caso necessário. A libuv também implementa 2 funcionalidades muito importantes: o **loop de eventos** e a **thread pool**.
- **extra APIS**: como `http-parser`, `zlib`, `openSSL` e `c-ares`, built in no ambiente Node, mas não fazem parte do V8.

> A maior parte do processamento do código é resolvida pelo loop de eventos, como executar callbacks e processos de rede. A thread pool é responsável por tarefas que exigem mais processamento, como acesso, processamento e conversão de arquivos.

Em resumo, o Node age como um controlador, "amarrando" juntos V8, libuv e fornecendo a API para que possamos acessar todas as funcionalidades citadas usando JS. Da mesma forma que um controlador, o Node "recebe" o código em JS, chama as bibliotecas responsáveis por executar cada parte do código e então retorna o resultado final. Podemos pensar em uma camada de abstração final, sobre, por exemplo, algumas funções em C++ que o Node utiliza.

2. **process**<br/>
Este é um tema que envolve a arquitetura de computadores, pois, é através das threads e dos processos que, as tarefas de um programa — seja qual for a linguagem — são processadas pela máquina. Para entendermos como isso está ligado à forma como o Node funciona é necessário o completo entendimento de 2 conceitos fundamentais em computação: **threads** e **tasks**.<br/>
Computadores usam threads e processos para a execução de instruções, seja qual for a linguagem. Podemos chamar de **processo** *a execução de um conjunto de instruções de um programa* que realizam o processamento dos dados introduzidos à este, e ao final geram um resultado em forma de informação utilizável. Normalmente, um computador tem vários processos sendo executados ao mesmo tempo — podemos pensar nos diversos programas que são executados continuamente no background, como antivírus, controladores e etc — e cada processo utiliza um espaço reservado de memória. Ou seja, são as "tasks" que podemos acessar com o gerenciador de tarefas do Windows ou com o PID process do Linux. No caso de programas executados pelo Node, são os processos responsáveis por "escutar" eventos e responder de acordo.<br/>
As chamadas **threads de execução** *são a menor parte de processamento de um programa*, sendo a forma como as instruções de um programa são separadas e *agendadas* para serem processadas pelo computador. A quantidade de threads disponíveis para serem utilizadas por um programa depende de alguns fatores como a forma que o programa é escrito, a forma como é processado e também da capacidade da CPU processar ou não uma determinada quantidade de threads ao mesmo tempo. **As threads podem funcionar como *componentes de um processo*, o chamado *parent process*, e compartilhar espaço de memória entre si — ao contrário de *processos*, que não compartilham memória — para executarem diferentes tarefas de um mesmo processo de forma mais performática**. Uma tradução literal para thread seria "linha". *Como uma thread de execução só pode executar 1 instrução por vez, por exemplo como em um laço de repetição, dividir um processo em mais de uma thread é uma estratégia para que o programa não bloqueie enquanto uma determinada parte dele é processada.*

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-threads-e-processos/imagem1.jpg)

A imagem acima mostra que, ao mesmo tempo que várias threads conseguem processar dados de diversas conexões ser tem que colocá-las numa fila, as mesmas threads também ficam ociosas enquanto não há nada acontecendo, ocupando espaço de processamento que poderia ser liberado, mas fica aguardando novas instruções que podem ou não acontecer.

Agora vejamos como é o processamento *single thread*:

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-threads-e-processos/imagem2.jpg)

Na imagem acima, o processamento de cada conexão é "agendado" e ordenado em fila para execução um após o outro, ao invés de serem *espalhados* por diversas threads. E isso remete diretamente aos *eventos síncronos e assíncronos* do JS, que basicamente separa o código 2 partes, sendo instruções que são executadas agora, e instruções que serão executadas após algum gatilho de acionamento.

3. **single-threaded**<br/>
Neste ponto, já está claro que o Node não é apenas um programa, mas sim um controlador que engloba algumas bibliotecas e APIs. E, todo código em JS executado por um programa, *inclusive o código JS existente dentro do código-fonte do próprio Node, o V8, o loop de eventos e métodos síncronos em C++ que existem dentro do Node* **são executados na mesma thread**, chamada *main thread*, por isso é dito que o Node é *single-threaded*. Pelo fato do Node ser escrito em C++, alguns métodos e módulos **assíncronos** em C++ que são utilizados pelo Node podem não ser executados na main thread, como por exemplo o módulo `crypto`, que utiliza muito processamento da CPU, e por realizar muitos cálculos matemáticos é processado em outra thread. Em casos como esse, o C++ vai executar métodos assíncronos, por baixo dos panos, utilizando mais de uma thread se necessário, a chamada **execução em paralelo**.<br/>
O Node utiliza a libuv para operações assíncronas, essa biblioteca também é utilizada junto com parte da lógica interna do Node para manejar a chamada **thread pool**, *que são 4 threads pré-alocadas por padrão e usadas para delegar operações muito pesadas que exigem muito processamento para serem colocadas no loop de eventos*, como por exemplo algumas operações IO, iniciar e fechar conexões como o `socket.close()` por exemplo, e manejar timers como o `setTimeout()`. O termo pool pode ser usado para designar um conjunto de recursos computacionais que estão à disposição do programa e prontos para uso, no caso de threads, podemos entender uma thread pool como um conjunto de threads criadas de antemão pelo programa que ficam em stand by.<br/>
Então, diz-se que o Node é single-threaded pois algumas de suas partes essenciais — entre elas o loop de eventos — trabalham de forma single thread, porém, partes do processamento de um programa podem ser trabalhadas de forma multi-thread pela libuv, utilizando a thread pool, além de métodos em C++ que podem ser delegados ao SO para o processamento adicional de tarefas mais complexas. Alguns processos devem obrigatoriamente operar em single thread, recebendo os retornos de forma ordenada para evitar que, por exemplo, 2 threads alterem a mesma variável, este é o caso do loop de eventos.

### EVENT LOOP
A característica do Node que faz com que ele não seja lento ou demore a processar a fila de requisições, é ser não bloqueante, e isso tem a ver com o sistema de *callbacks* do JavaScript e o **loop de eventos**.<br/>
Antes de falarmos sobre o tal *loop de eventos* em si, precisamos definir o que é um [evento](https://developer.mozilla.org/en-US/docs/Web/Events) no contexto do JavaScript. Podemos pensar em evento no sentido mais literal: **um acontecimento**, *algo que ocorre em determinado momento*. No navegador, os eventos estão muitas vezes relacionados a ações do usuário, como por exemplo um clique em um botão, preenchimento de um input ou qualquer outro tipo de interação. Podem ser eventos disparados por elementos HTML, por objetos globais do navegador como `window` e etc. Falando especificamente sobre o Node, podemos pensar nos eventos em contextos como na leitura e escrita de arquivos, manejo de requisições HTTP e funções timer como `setTimeout()`, essas ações emitem eventos quando o processamento é finalizado — algo como um "aviso" que informa ao programa que a execução foi concluída e o resultado pode ser utilizado. Esses eventos são passados ao event loop, que irá chamar as funções callback associadas a cada um destes eventos. Um exemplo de função callback nesta estrutura é a função que executa o `console.log()` abaixo:
```js
setTimeout(() => {
  console.log("aguarda 1 segundo antes de imprimir")
}, 1000)
```

Quando o Node executa uma operação IO, como a leitura da rede, acessando um banco de dados ou sistema de arquivos, em vez de bloquear a thread e desperdiçar ciclos de CPU aguardando, o Node retomará as operações quando a resposta voltar. Isso permite que o Node lide com milhares de conexões simultâneas com um único servidor sem introduzir a carga de gerenciamento de concorrência, o que poderia ser uma fonte significativa de bugs.<br/>
Tais operações mais longas como leituras em disco ou comunicações de rede, são despachadas para um *worker* em uma thread separada, assim liberando o event loop — main thread — para continuar processando outros eventos na pilha, e uma vez concluída a oepração em segundo plano, sua função de callback é enfileirada de acordo com a sua prioridade e aguarda a liberação do event loop para ser executada. Este modelo permite que o Node lide eficientemente com IO assíncrono, evitando bloqueios e mantendo a aplicação responsiva.

![Image](https://github.com/user-attachments/assets/0cc7d39e-47ec-4de6-b2a1-5c35cfe0a9f8)

O event loop empilha os eventos na **call stack** e a monitora, identificando e processando tasks. Para eventos que não requerem operações extensas, a execução é imediata, permitindo que o event loop passe rapidamente para o próximo evento. Entretanto, os eventos que envolvem operações longas como leitura de arquivos ou comunicação de rede são delegados junto com sua função de callback ao **background thread**, que é uma *sub-fila* onde a libuv gerencia a operação em uma thread separada na pool, permitindo que o event loop continue processando outros eventos na call stack sem interrupções. Assim que concluída a operação pelo background thread, a função de callback é colocada na **task queue**, então, o event loop — que opera em uma única thread — só processará este callback após finalizar as tarefas correntes na call stack — main thread.<br/>
Esta abordagem assegura um gerenciamento eficiente de múltiplas tarefas pelo event loop, alternando entre execuções rápidas de operações breves e o manejo de operações mais demoradas em background. Esta estrutura é vital para a eficiência do Node, habilitando-o a lidar com um volume elevado de operações de IO de forma não bloqueante e assíncrona.

Por exemplo:
```js
const path = require('path');
// obtém o caminho do arquivo
const filePath = path.join(__dirname, 'hello_world.txt'); // a variável especial `__dirname` armaenza o caminho absoluto de onde o código Node está sendo executado

const fs = require('fs');
const data = fs.readFile(filePath, 'utf8', (error, data) => {
  try {
    console.log(data);
  } catch(error) {
    console.log(error);
  }
}); // leitura de arquivo
```

![Image](https://miro.medium.com/v2/resize:fit:720/format:webp/1*4SoPLMu-BDKU83RTOsSm1w.png)

Neste exemplo existem 2 eventos na call stack. O 1º a ser processado é o `fs.readFile()`, seguindo o princípio LIFO da stack, sendo `fs.readFile()` uma operação de IO em disco, portanto uma operação mais lenta e potencialmente bloqueante, por isso ela é delegada para execução em background pela libuv. Quando a tarefa de leitura do arquivo é concluída, seu callback é colocado na task queue, onde este callback aguardará sua vez para ser transferido para a call stack quando esta estiver vazia. Então este call back é movido da task queue para a call stack e finalmente processado pelo event loop.

#### CALLSTACK
NodeJS é uma plataforma orientada a eventos que opera sob o princípio de uma única thread, gerenciado eficientemente a pilha de evetnos, a **call stack**. Essa pilha de eventos adota a estratégia LIFO, onde a última entrada é a primeira a ser processada.
Vejamos o código a seguir:
```js
function calculaQuadrado(num) {
 const resultadoSoma = soma(num);
 return resultadoSoma * resultadoSoma;
}

function soma(num) {
 return num + num;
}

function imprimeValor(valor) {
 const resultado = calculaQuadrado(valor);
 console.log(`o resultado é ${resultado}`);
}

imprimeValor(3); // ‘o resultado é 36’
```

Dentro do Node, durante a execução deste programa, ocorre algo parecido com este esquema:

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-entenda-loop-de-eventos/imagem1.jpg)

A estrutura chamada de "pilha de chamadas" reflete a ordem em que as funções do programa são executadas, ou seja, **a callstack é a pilha de chamadas que gerencia a execução em ordem de cada callback do código**. O que temos aqui é justamente uma estrutura de dados tipo *stack*, e a característica principal desta estrutura é o conceito de **LIFO**, resumidamente: *o ÚLTIMO item que ENTROU na pilha é o 1º a SAIR*.<br/>
A callstack no caso do Node é parte do motor V8, pode-se dizer que é a estrutura que o V8 usa para monitorar as chamadas de funções feitas por um programa. Sempre que uma função é chamada, ela é enviada para a call stack.<br/>
Call stack existe em qualquer linguagem de programação, seguindo basicamente o mesmo conceito de "pilha de chamadas". O stack overflow é um problema comum enfrentado em várias plataformas, onde um erro acontece quando as chamadas de função vão se empilhando na call stack até que ultrapassa a quantidade de memória disponível.<br/>
Como o Node trabalha apenas com 1 thread de execução, isso significa que existe apenas 1 call stack, que serve para registrar em que ponto o programa se encontra em dado momento e a ordem de execução do código, e quando a função retorna, ela sai do topo da pilha, e assim sucessivamente até que a pilha se esvazie, se comportando assim de forma **síncrona**.<br/>
Abaixo, a sequência de chamadas de função e a forma como elas são adicionadas à pilha, e retiradas após o retorno da função:

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-entenda-loop-de-eventos/imagem2.gif)<br/>
> *Também é possível testar diferentes códigos para ver o comportamento de execução da **[callstack](http://latentflip.com/loupe/)**.*

#### TASK QUEUE
Também chamada de **Event Queue**, é a *fila de tarefas* onde o JS ordena funções **assíncronas** — ou seja, os callbacks — que devem ser executados depois que a call stack estiver vazia.<br/>
Neste exemplo, o `setTimeout()` vai para a **task queue**, enquanto `"1 Início"` e `"2 Fim"` são executados imediatamente na call stack.
```js
console.log("1 Início");

setTimeout(() => {
  console.log("3 Timeout");
}, 0);

console.log("2 Fim");

/* saída:
1 Início
2 Fim
3 Timeout
*/
```

É o event loop que coordena tudo isso, executando tudo na **call stack**, e assim que esta esvazia, o event loop verifica a **task queue** e, se houver função na fila, ele é puxada e executada na call stack.<br/>
Então, as diferenças que podem ser entre a **call stack** e a **task queue** são:

| Call Stack         | Task Queue                                                   |
|--------------------|--------------------------------------------------------------|
| Execução imediata. | Execução postergada.                                         |
| Código síncrono.   | Callbacks assíncronos (`setTimeout`, `setImmediate`, `I/O`). |
| Processado direto. | Espera a Call Stack esvaziar.                                |

Ao contrário da pilha que segue o conceito LIFO, as filas são estruturas de dados que seguem o conceito **FIFO**, em que *o 1º item a ENTRAR é o 1º a SAIR*.

Como as funções na task queue só são processadas quando a callstack está vazia e existem situações onde algumas tarefas precisam ser executadas o mais rápido possível logo após o código atual na stack, existe para isso uma hierarquia na **task queue**, que separa eventos onde **macrotasks** são executados (`setTimeout`, `setInterval`, `setImmediate` e `I/O`) seguindo a ordem de aguardar a call stack esvaziar por completo, e as microtarefas na **microtask queue** que precisam ser executadas com urgência, logo em seguida à finalização do código que estiver sendo executado na call stack, são eventos assíncronos como `.then()` de Promises, `queueMicrotask()` — função nativa do Node justamente para executar um código com prioridade quando necessário, `MutationObserver()` — mesmo conceito, mas aplicado ao navegador.

Vejamos a diferença na execução da task queue e microtask queue neste exemplo:
```js
console.log('1');

setTimeout(() => {
  console.log('4 (setTimeout)');
}, 0);

Promise.resolve().then(() => {
  console.log('3 (Promise)');
});

console.log('2');

/* saída:
1
2
3 (Promise)
4 (setTimeout)
*/
```

Aqui, temos a seguinte ordem:
1. `console.log('1')` → entra na **Call Stack** e é executado.
2. `setTimeout(...)` → vai pra **Task Queue** com delay 0.
3. `Promise.resolve().then(...)` → vai pra **Microtask Queue**.
4. `console.log('4')` → entra na **Call Stack** e é executado.
5. Call Stack esvazia → então o **Event Loop**:
   - Prioriza a **Microtask Queue** → executa o `.then(...)`.
   - Depois executa a **Task Queue** → `setTimeout(...)`.

fluxo do Event Loop:
```plaintext
┌────────────────────────────┐
│   Call Stack               │
├────────────────────────────┤
│ Código síncrono executado  │
└────────────────────────────┘
           ↓
┌────────────────────────────┐
│     Microtask Queue        │ ← prioridade alta
│  - Promises                │
│  - queueMicrotask          │
└────────────────────────────┘
           ↓
┌────────────────────────────┐
│     Task Queue             │ ← executado depois
│  - setTimeout              │
│  - setInterval             │
│  - setImmediate (Node.js)  │
└────────────────────────────┘
```

Se houver necessidade de **adiar** uma execução mas ainda com **alta prioridade**, é possível usar:
```js
queueMicrotask(() => {
  console.log('Microtask!');
});
```

Ou com `Promise.resolve().then(...)` para garantir compatibilidade mais ampla:
```js
Promise.resolve().then(() => {
  console.log('Microtask!');
});
```

Além disso, o loop de eventos conta ainda com `process.nextTick()`, que é a *resolução de promessas*. Essa função agenda um callback para ser executado logo após a fase de encerramento de cada loop, ao invés de esperar passar por todos os outros callbacks que podem estar no loop, ou seja, o callback é executado logo após a execução da função atual na callstack e antes de qualquer IO ou Microtask.

```js
console.log('1');

process.nextTick(() => {
  console.log('3 (nextTick)');
});

Promise.resolve().then(() => {
  console.log('4 (Promise)');
});

setTimeout(() => {
  console.log('5 (setTimeout)');
}, 0);

setImmediate(() => {
  console.log('6 (setImmediate)');
});

console.log('2');
/* saída:
1
2
3 (nextTick)
4 (Promise)
5 (setTimeout)
6 (setImmediate)
*/
```

Explicando:
- `1` e `2`: são síncronos → Call Stack.
- `process.nextTick()`: executa **antes** das microtasks.
- `Promise.then()`: executado **depois** do `nextTick`.
- `setTimeout()`: vai pra **Task Queue**.
- `setImmediate()`: executado numa fase *diferente* do event loop, **depois** dos timers.

Então, a ordem de execução da call stack é:
| Tipo                 | Execução                             | Prioridade |
|----------------------|--------------------------------------|------------|
| `process.nextTick()` | Logo após a execução atual.          | Alta       |
| `Promise.then()`     | Após `nextTick()`.                   | Média      |
| `setTimeout()`       | Depois de microtasks e `nextTick()`. | Baixa      |
| `setImmediate()`     | Em fase específica pós-I/O.          | Varia      |

Uma vez que o callback foi enviado para a task queue, entra em cena o loop de eventos. A única tarefa restante é analisar a call stack e a stack queue. Se a call stack estiver vazia, o primeiro callback que estiver na task queue (lembrando do princípio LIFO) é empurrado para a call stack, o que efetivamente faz com que o callback seja executado. Então, o programa encerra quando não há eventos na fila para serem chamados pelo loop de eventos e quando não há processamentos pendentes na pilha de chamadas. Vejamos um exemplo explicativo:

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-entenda-loop-de-eventos/imagem8.gif)<br/>
> Mesmo que o `setTimeout()` estivesse configurado para executar após `0`s, o processo seria o mesmo, pois o callback seria empurrado para a fila de timers da mesma forma, ficando na queue até que a stack estivesse vazia — no caso, após todos os outros `console.log()` e processos da `main()` fossem executados.

O loop de eventos é iniciado junto com a aplicação, e, cada loop é composto pelas seguintes fases de execução:
1. **callbacks dos timers expirados**: são os primeiros a serem executados assim que possível, ou seja, quando a call stack se encontra vazia.
2. **IO pooling**: eventos de IO que estão prontos para serem processados, como acesso a arquivos, tarefas de rede e etc. A maior parte dos callbacks é referente a este tipo de operação, e ocorre nesta fase.
3. **setImeddiate()**: timer usado quando um callback precisa ser processado imediatamente.
4. **eventos de encerramento**: métodos para fechar conexões abertas, como conexões com bancos ou sockets.

Apesar da fila gerenciada pelo loop ser 1 só, internamente ele gerencia essas fases através de "sub-filas", de acordo com o tipo de processamento.

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-entenda-loop-de-eventos/imagem9.jpg)

O Node analisa se o loop deve continuar no próximo tick ou se o programa deve ser encerrado checando se ainda existem timers ou tarefas de IO pendentes, se não existem finaliza a aplicação, se existem continua o loop, como por exemplo conexões abertas que mantem o programa rodando.

O loop de eventos é parte de um panorama maior da arquitetura do Node, que envolve o V8 e outras APIs, ele próprio não faz parte do V8, mas sim da biblioteca libuv. Sua estrutura básica de funcionamento implica em executar tarefas começando da mais antiga, ou que chegou primeiro à fila — princípio FIFO, executando tarefas da task queue **apenas** quando a call stack está vazia, ou seja, quando não existem tarefas em andamento. É um loop infinito, que aguarda tarefas, as executa e então entra em espera até o recebimento de novas tarefas. Podemos descrever o seu funcionamento em alguns passos:
1. recebe eventos externos e os converte em chamadas de callbacks para serem processados, além de executar sub-stacks que estejam em fila.
2. acessa callbacks de eventos que estão na task queue e empura os callbacks para a a call stack.

![Image](https://www.alura.com.br/artigos/assets/arquitetura-node-js-entenda-loop-de-eventos/imagem10.jpg)

#### EVENTS
A ordem de execução das queues no Event Loop segue uma hierarquia específica, com prioridade definida para cada tipo de tarefa. A ordem da hierarquia de execução das principais queues é a seguinte:

1. **Código síncrono (Call Stack)**
2. **`process.nextTick()` callbacks**
3. **Microtasks** (`Promise.then`, `queueMicrotask`)
4. **Timers** (`setTimeout`, `setInterval`)
5. **Pending I/O callbacks**
6. **`setImmediate()`**
7. **Close callbacks** (ex: streams, sockets)

- **Microtask Queue**<br/>
É a fila de prioridade máxima que inclui `process.nextTick()` e `Promise` (`.then()`, `.catch()` e `.finally()`), sendo executados logo após a fase atual do event loop terminar, antes de passar para a próxima fase. O `process.nextTick()` possui uma prioridade maior em relação à `Promise`, pois interrompe o ciclo do event loop para executar imediatamente após o código atual terminar, antes mesmo da `Promise`, por isso deve ser usado com cautela para evitar starvation.

- **Timers Queue**<br/>
Aqui, as tarefas são executadas após o tempo mínimo de espera, na fase de timers do event loop. Inclui `setTimeout()` e `setInterval()`.

- **IO Callbacks - Pool Phase**<br/>
São os eventos de callbacks de IO (como `fs.readFile()` e operações do sistema) executados após os timers.

- **Immediates Queue**<br/>
Este é o `setImmediate()`, que é executado na fase check do event loop, logo após a fase de IO (pool), e antes dos timers se o código estiver dentro de um callback de IO.

1. process.nextTick()        ← Microtask Queue - HIGH
2. Promises (.then, etc)     ← Microtask Queue - LOW
3. setTimeout / setInterval  ← Timers Queue
4. I/O Callbacks             ← Pool phase
5. setImmediate              ← Immediates Queue


#### MAIN THREAD & THREAD POOL
O Node opera na *"main thread"* de forma a ser uma única thread gerenciada pelo loop de eventos. As operações de background são administradas por *workers* que executam tarefas multi-thread na thread pool. Os workers são essencialmente processos de IO assíncronos e não bloqueantes, gerenciados pela libuv. Esta é uma lib open-source, multiplataforma, escrita em C, que se vale de um pool de threads para gerir operações paralelas. A abordagem de uma thread única na gestão da Call Stack é vital para o alto desempenho do Node.<br/>
Uma das características mais importantes de todo esse modelo é fazer com que operações que bloqueiam a execução do programa, como operações IO, se tornem não bloqueantes e assíncronas. Porém, é sim possível bloquear a execução de um programa em JavaScript, e normalmente isso é causado por problemas na implementação do código. Por isso, para evitar que um programa seja implementado de forma a bloquear a thread do loop de eventos, podem ser tomadas algumas precauções:
- Não utilizar versões `sync` de APIs do node como `fs`, `crypto` e `zlib`, a não ser em casos muito específicos. Um caso de uso síncrono de funções de `fs` é a biblioteca `dotenv`, que utiliza a versão `sync`, pois ela precisa garantir que as variáveis de ambiente estão configuradas antes de liberar a execução do programa;
- Evitar que cálculos com números grandes sejam enviados para a thread do loop;
- Evitar o processamento de JSONs muito grandes;
- Idem para expressões regulares muito complexas.

O motivo para se evitar cálculos e processamentos muito grandes é justamente pelo fato do loop de eventos ser single thread, o que faz com que ele seja muito eficiente para operações assíncronas, mas não consegue evitar que o loop "trave" se existir uma operação que exija muito processamento ocupando a pilha de chamadas.<br/>
**Claro que sempre haverão situações que envolvem normalmente muito processamento síncrono, e, para estes tipos de casos é possível usar *child processes*, ou mover os processos para novas threads de forma manual, instruindo o programa a criar threads específicas na pool.**

#### EVENT HANDLERS
A arquitetura baseada em eventos trabalha com 2 partes principais, os **Event Emitters** e os **Event Listeners**.<br/>
No Node, objetos podem ter métodos como instâncias de **`eventEmitter`s**, que emitem eventos em situações determinadas, normalmente quando acontece algo no programa, como uma requisição HTTP por exemplo. Estes eventos, uma vez emitidos, são *"escutados"* por **`eventListener`s**, que por sua vez disparam funções callback relacionadas a cada *listener*. Para exemplificar, vejamos o código abaixo:
```js
const server = http.createServer();

server.on("request", (req, res) => {
  console.log("requisição recebida");
  res.end("requisição recebida");
});
```
Neste exemplo, um servidor `server` é criado a partir do método `http.createServer()`. Esse servidor é uma instância de um **eventListener**, ou seja, é um ouvinte de eventos, e por isso possui o método `on()`. Neste caso, quando este método `on()` é chamado, estamos registrando para esse "ouvinte" que ele deve escutar todos eventos no programa que correspondem à string `"request"` — este, o primeiro argumento. Se o método detectar algum evento com esse nome, deve executar a função passada como segundo parâmetro.

O método `on()` é como uma função que nos ajuda a configurar quais eventos o server terá que ficar atento e o que ele deve fazer ao ouvir um evento deste. Então, a partir do momento em que o servidor é criado e este método é executado, o servidor estará ouvindo os eventos nomeados como `request`, e saberá o que fazer quando ouvir o evento, neste caso, executar a função callback que foi passada como segundo argumento.

Uma implementação disto seria algo como:

**BACK-END**
```js
const http = require("http");

const server = http.createServer();

server.on("request", (req, res) => {
  console.log("requisição recebida - server");
  res.end("requisição recebida - client\n");
});

server.listen(3000, () => {
  console.log("Servidor escutando em http://localhost:3000");
});
```

**FRONT-END**
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <title>Chamada ao Servidor</title>
</head>
<body>
  <button id="botao">Enviar Requisição</button>

  <script>
    document.getElementById("botao").addEventListener("click", () => {
      fetch("http://localhost:3000")
        .then(response => response.text())
        .then(data => {
          console.log("Resposta do servidor:", data);
          alert(data);
        })
        .catch(error => console.error("Erro na requisição:", error));
    });
  </script>
</body>
</html>
```

No exemplo acima, a chamada funciona pois o servidor está localmente assim como a página web. Numa aplicação real, seguiriamos essa linha:

**BACK-END**
```js
const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 3000;

// habilita CORS para permitir requisições externas
app.use(cors());

// rota GET simples
app.get("/api/boas-vindas", (req, res) => {
  res.send("Seja bem-vindo, Raphael!");
});

// inicia o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
```

**FRONT-END**
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Requisição para o Back-end</title>
</head>
<body>
  <h1>Conectar com servidor Node</h1>
  <button id="btn">Chamar Servidor</button>
  <p id="resposta"></p>

  <script>
    document.getElementById("btn").addEventListener("click", () => {
      fetch("http://localhost:3000/api/boas-vindas")
        .then(res => res.text())
        .then(data => {
          document.getElementById("resposta").textContent = data;
        })
        .catch(err => console.error("Erro na requisição:", err));
    });
  </script>
</body>
</html>
```

Como sabemos, no Node o sistema de eventos é construído em cima do módulo `events`, que fornece a classe `EventEmitter`. Todas as instâncias de `EventEmitter` como servidores HTTP, Streams, Sockets e etc, herdam **métodos** e **eventos** dessa classe. Ou seja, a classe `EventEmitter` do Node.js permite que objetos emitam eventos nomeados e que outros objetos escutem e respondam a esses eventos. Embora o `EventEmitter` não tenha uma lista fixa de eventos predefinidos, ele fornece mecanismos para gerenciar eventos personalizados. Além disso, muitos módulos internos do Node.js estendem o `EventEmitter` e definem seus próprios eventos específicos, o que significa que, os eventos disponíveis dependem da classe utilizada, e todas elas herdam de `EventEmitter`. Os principais métodos de instância disponíveis em objetos que estendem `EventEmitter` de um `event listener` no Node são:

| Método                                 | Descrição                                                                                      |
|----------------------------------------|------------------------------------------------------------------------------------------------|
| `on(event, listener)`                  | Registra um *listener* para o evento especificado. É o mais comum.                             |
| `addListener(event, listener)`         | Igual ao `on()`.                                                                               |
| `once(event, listener)`                | Registra um *listener* que será executado **apenas uma vez**.                                  |
| `off(event, listener)`                 | Remove um *listener* registrado.                                                               |
| `removeListener(event, listener)`      | Mesma função que `off()`.                                                                      |
| `removeAllListeners([event])`          | Remove **todos os listeners** de um evento, ou de todos os eventos se nenhum for especificado. |
| `emit(event, [...args])`               | Emite o evento especificado, acionando todos os *listeners* associados.                        |
| `listeners(event)`                     | Retorna um array com os *listeners* registrados para um evento.                                |
| `rawListeners(event)`                  | Retorna os *listeners* sem envolver os wrappers de `once()`, por exemplo.                      |
| `listenerCount(event)`                 | Retorna o número de *listeners* para o evento.                                                 |
| `eventNames()`                         | Retorna um array com todos os nomes de eventos registrados.                                    |
| `prependListener(event, listener)`     | Adiciona o *listener* ao início da fila.                                                       |
| `prependOnceListener(event, listener)` | Como `once()`, mas adiciona no início da fila.                                                 |

- **`EventEmitter` Core methods.**<br/>
Aqui estão os métodos mais comuns disponíveis nas instâncias de `EventEmitter` que permitem criar, emitir e escutar eventos personalizados:
  - `on(eventName, listener)`: Registra um listener para o evento especificado.
  - `addListener(eventName, listener)`: Alias para `on()`, adiciona um listener para o evento.
  - `once(eventName, listener)`: Registra um listener que será chamado apenas uma vez.
  - `off(eventName, listener)`: Remove um listener registrado.
  - `removeListener(eventName, listener)`: Alias para `off()`, que remove um listener específico.
  - `removeAllListeners([eventName])`: Remove todos os listeners para o evento especificado, ou todos os eventos se nenhum for especificado.
  - `emit(eventName[, ...args])`: Emite um evento, chamando todos os listeners registrados para ele.
  - `listeners(eventName)`: Retorna uma matriz dos listeners registrados para o evento especificado.
  - `rawListeners(eventName)`: Retorna uma matriz dos listeners registrados para o evento, incluindo os wrappers para listeners registrados com `.once()`.
  - `listenerCount(eventName)`: Retorna o número de listeners registrados para o evento.
  - `eventNames()`: Retorna uma matriz com os nomes dos eventos para os quais há listeners registrados.
  ```js
  const EventEmitter = require('events');
  const myEmitter = new EventEmitter();
  myEmitter.on('event1', () => {});
  myEmitter.on('event2', () => {});
  console.log(myEmitter.eventNames()); // ['event1', 'event2']
  ```
  - `prependListener(eventName, listener)`: Adiciona um listener ao início da matriz de listeners para o evento.
  - `prependOnceListener(eventName, listener)`: Adiciona um listener que será chamado apenas uma vez, ao início da matriz de listeners para o evento.
  - `setMaxListeners(n)`: Define o número máximo de listeners para prevenir vazamentos de memória.
  - `getMaxListeners()`: Retorna o número máximo atual de listeners.

- **`EventEmitter` Especial Events.**<br/>
O `EventEmitter` emite alguns eventos internos especiais:
  - `'newListener'`: Emitido quando um novo listener é adicionado.
  Exemplo:
  ```js
  const EventEmitter = require('events');
  const em = new EventEmitter();

  em.on('newListener', (event, listener) => {
    console.log(`Novo listener adicionado para o evento: ${event}`);
  });
  ```
  - `'removeListener'`: Emitido quando um listener é removido.
  - `'error'`: Emitido quando ocorre um erro e nenhum listener de erro foi registrado.

- **Internal Modules.**<br/>
Muitos módulos internos do Node estendem o `EventEmitter` e definem seus próprios eventos. Aqui estão alguns exemplos:
  - **`http.Server`**
    ```js
    const http = require('http');
    const server = http.createServer();
    ```
    - **METHODS**
      - `http.createServer()`: Cria um servidor HTTP.
      - `http.request()`: Faz uma requisição HTTP.
      - `http.get()`: Faz uma requisição GET.
    - **EVENTS**
      - `'request'`: Emitido quando uma requisição HTTP é recebida.
      - `'connection'`: Emitido quando uma nova conexão TCP é estabelecida.
      - `'close'`: Emitido quando o servidor é fechado.
      - `'checkContinue'`: Quando há uma requisição com header `Expect: 100-continue`.
      - `'connect'`: Quando uma requisição `CONNECT` é recebida.
      - `'upgrade'`: Quando há uma requisição para mudar de protocolo, como o WebSocket por exemplo.
      - `'clientError'`: Quando ocorre um erro de protocolo no cliente.

  - **`net.Socket`**
    ```js
    const net = require('net');
    const socket = new net.Socket();
    ```
    - **METHODS**
      - `net.createServer()`: Cria um servidor TCP.
      - `net.connect()`: Cria uma conexão TCP.
    - **EVENTS**
      - `'connect/connection'`: Emitido quando a conexão é estabelecida.
      - `'data'`: Emitido quando dados são recebidos.
      - `'end'`: Emitido quando o outro extremo da conexão envia um sinal de encerramento de conexão.
      - `'timeout'`: Emitido quando o socket atinge o tempo limite; Timeout de invatividade.
      - `'drain'`: Buffer liberado para escrita.
      - `'error'`: Quando ocorre um erro.
      - `'close'`: Quando o socket é fechado.

  - **`fs.ReadStream` & `fs.WriteStream`**
    ```js
    const fs = require('fs');
    const stream = fs.createReadStream('arquivo.txt');
    ```
    - **TYPES**
      - **Readable**: Fluxos de leitura.
      - **Writable**: Fluxos de escrita.
      - **Duplex**: Fluxos de leitura e escrita.
      - **Transform**: Fluxos que podem modificar ou transformar os dados.
    - **METHODS**
      - `fs.readFile()`: Lê um arquivo.
      - `fs.writeFile()`: Escreve em um arquivo.
      - `fs.mkdir()`: Cria um diretório.
      - `fs.unlink()`: Remove um arquivo.
    - **EVENTS**
      - `'open'`: Emitido quando o alvo é aberto.
      - `'ready'`: Emitido quando o alvo está pronto para uso.
      - `'data'`: Quando dados são lidos.
      - `'end'`: Quando a leitura acaba.
      - `'close'`: Emitido quando o alvo é fechado.
      - `'error'`: Emitido quando ocorre um erro.

  - **`process` — Objeto Global**
    - `'beforeExit'`: Emitido quando o Node.js esvaziou o loop de eventos e está prestes a encerrar, mas ainda pode haver mais trabalho a ser finalizado.
    - `'exit'`: Emitido quando o processo está prestes a sair.
    - `'uncaughtException'`: Emitido quando uma exceção não capturada e não tratada ocorre.
    - `'unhandledRejection'`: Emitido quando uma promessa é rejeitada e não há um manipulador de rejeição.
    - `'warning'`: Um aviso, como por exemplo de memory leak ou deprecated API.
    - `'SIGINT'`, `'SIGTERM'`, `'SIGUSR1'`, `'SIGUSR2'`: Outros eventos relacionados ao processo.

  - **`child_process` – cria e gerencia processos filhos**
    - `fork()`: É um atalho para criar um processo filho Node.js, com canal de comunicação (IPC) ativado automaticamente. Usado para executar módulos JS separados com comunicação entre pai e filho. Por exemplo: `fork('worker.js')`.
    - `spawn()`: Cria um novo processo filho para executar um comando, sem bufferizar a saída. Melhor para lidar com streams de dados grandes ou contínuos, por exemplo: `spawn('ls', ['-la'])`.
    - `exec()`: Executa um comando shell em um processo filho e bufferiza toda a saída (stdout/stderr) em memória. Ideal para comandos curtos, exemplo: `exec('ls -la', callback)`.
    - `execFile()`: Similar ao `exec()`, mas executa diretamente um arquivo executável binário (ou script JS) sem invocar um shell, o que é mais seguro e rápido. Exemplo: `execFile('script.sh', callback)`.
    - `'exit'`: Processo filho terminou.
    - `'close'`: Todos os stdio foram fechados.
    - `'error'`: Erro ao spawnar o processo.
    - `'disconnect'`: Quando desconecta de processo pai.
    - `'message'`: Quando há uma mensagem IPC.

  - **`os` – Sistema Operacional**
      - `os.platform()`: Retorna a plataforma do sistema operacional.
      - `os.release()`: Retorna a versão do sistema operacional.
      - `os.totalmem()`: Retorna a quantidade total de memória do sistema.
      - `os.freemem()`: Retorna a quantidade de memória livre do sistema.
      - `os.cpus()`: Retorna informações sobre cada CPU/núcleo.

  - **`path` – Manipulação de Caminhos**
    - `path.join([...paths])`: Junta todos os argumentos de caminho.
    - `path.resolve([...paths])`: Resolve uma sequência de caminhos ou segmentos de caminho em um caminho absoluto.
    - `path.basename(path, [ext])`: Retorna o último segmento de um caminho.
    - `path.dirname(path)`: Retorna o diretório de um caminho.
    - `path.extname(path)`: Retorna a extensão de um caminho.

  - **`url` – Manipulação de URLs**
    - `url.parse(urlString)`: Analisa uma string de URL e retorna um objeto URL.
    - `url.format(urlObject)`: Formata um objeto URL em uma string.
    - `url.resolve(from, to)`: Resolve uma URL relativa em uma URL absoluta.

Além dos módulos mencionados acima, o Node possui outros módulos internos, como:
- `worker_threads`: Suporte a threads de trabalho (executar código JS em paralelo).
  - Classes:
    - `Worker`
    - `MessageChannel`
    - `MessagePort`
  - Eventos:
    - `'message'`, `'error'`, `'exit'`
  - Métodos úteis:
    - `new Worker()`
    - `worker.postMessage()`
    - `worker.terminate()`

- `assert`: Fornece um conjunto de funções de asserção para testes.
  - Métodos úteis:
    - `assert.ok()`
    - `assert.equal()`
    - `assert.strictEqual()`
    - `assert.deepStrictEqual()`

- `buffer`: Manipula dados binários.
  - Métodos úteis:
    - `Buffer.from()`
    - `Buffer.alloc()`
    - `Buffer.concat()`
    - `buffer.toString()`

- `cluster`: Permite a criação de processos filhos que compartilham o mesmo servidor.
  - Métodos úteis:
    - `cluster.fork()`
    - `cluster.setupMaster()`
    - `cluster.disconnect()`

- `crypto`: Fornece funcionalidades criptográficas.
  - Métodos úteis:
    - `crypto.createHash()`
    - `crypto.createCipheriv()`
    - `crypto.createDecipheriv()`
    - `crypto.randomBytes()`

- `dgram`: Implementa sockets UDP.
  - Métodos úteis:
    - `dgram.createSocket()`
    - `socket.send()`
    - `socket.bind()`

- `dns`: Realiza consultas DNS.
  - Métodos úteis:
    - `dns.lookup()`
    - `dns.resolve()`
    - `dns.reverse()`

- `domain`: Gerencia erros assíncronos (obsoleto).
  - Métodos úteis:
    - `domain.create()`
    - `domain.run()`

- `http2`: Suporte ao protocolo HTTP/2.
  - Métodos úteis:
    - `http2.createServer()`
    - `http2.connect()`

- `https`: Módulo HTTP sobre TLS/SSL.
  - Métodos úteis:
    - `https.createServer()`
    - `https.request()`

- `inspector`: Interface de depuração.
  - Métodos úteis:
    - `inspector.open()`
    - `inspector.close()`
    - `inspector.url()`

- `module`: Manipula módulos internos.
  - Métodos úteis:
    - `module.createRequire()`

- `perf_hooks`: Medição de desempenho.
  - Métodos úteis:
    - `performance.now()`
    - `performance.mark()`
    - `performance.measure()`

- `punycode`: Codificação de strings Unicode (obsoleto).
  - Métodos úteis:
    - `punycode.encode()`
    - `punycode.decode()`

- `querystring`: Manipula strings de consulta.
  - Métodos úteis:
    - `querystring.parse()`
    - `querystring.stringify()`

- `readline`: Interface para leitura de dados linha por linha.
  - Métodos úteis:
    - `readline.createInterface()`
    - `interface.question()`

- `repl`: Interface de leitura, avaliação, impressão e loop.
  - Métodos úteis:
    - `repl.start()`

- `string_decoder`: Decodifica buffers em strings.
  - Métodos úteis:
    - `StringDecoder.write()`
    - `StringDecoder.end()`

- `timers`: Temporizadores como `setTimeout`.
  - Métodos úteis:
    - `setTimeout()`
    - `setInterval()`
    - `setImmediate()`

- `tls`: Implementa TLS e SSL.
  - Métodos úteis:
    - `tls.createServer()`
    - `tls.connect()`

- `tty`: Manipula terminais de texto.
  - Métodos úteis:
    - `tty.isatty()`
    - `tty.ReadStream`
    - `tty.WriteStream`

- `util`: Funções utilitárias.
  - Métodos úteis:
    - `util.promisify()`
    - `util.format()`
    - `util.inherits()`

- `v8`: Acesso ao motor V8 do Node.js, útil para diagnóstico e manipulação de informações da engine (como estatísticas de heap).
  - Métodos úteis:
    - `v8.getHeapStatistics()`
    - `v8.getHeapSpaceStatistics()`

- `vm`: Permite a execução de código JavaScript em diferentes contextos, isolados da aplicação principal.
  - Métodos úteis:
    - `vm.createContext()`
    - `vm.runInContext()`
    - `vm.runInThisContext()`

- `wasi`: Suporte ao WebAssembly System Interface.
  - Métodos úteis:
    - `wasi.start()`
    - `wasi.initialize()`

- `zlib`: Compressão e descompressão de dados usando algoritmos como Gzip e Deflate.
  - Métodos úteis:
    - `zlib.gzip()`
    - `zlib.gunzip()`
    - `zlib.deflate()`
    - `zlib.inflate()`

Para cada módulo, os **métodos** são as funções e propriedades exportadas por ele, geralmente chamadas diretamente, exemplo: `fs.readFile()`. Já os **eventos** geralmente estão disponíveis quando o módulo ou uma de suas classes herda de `EventEmitter`. Por exemplo:
- `server.on('request', ...)`
- `stream.on('data', ...)`
- `worker.on('message', ...)`

Exemplo de classes com seus próprios eventos:
- `http.Server`
```js
server.on('request', ...)     // quando uma requisição HTTP chega
server.on('connection', ...)  // nova conexão TCP
server.on('close', ...)       // servidor encerrado
```

- `net.Socket` (TCP)
```js
socket.on('data', ...)        // dados recebidos
socket.on('end', ...)         // conexão encerrada
socket.on('error', ...)       // erro na conexão
```

- `fs.ReadStream` (stream de leitura de arquivos)
```js
stream.on('open', ...)        // arquivo aberto
stream.on('data', ...)        // dados lidos
stream.on('end', ...)         // leitura finalizada
stream.on('close', ...)       // stream fechado
stream.on('error', ...)       // erro de leitura
```

- `process` (objeto global do Node)
```js
process.on('exit', ...)       // quando o processo está prestes a sair
process.on('uncaughtException', ...)
process.on('SIGINT', ...)     // interrupção (Ctrl+C)
```

### `package.json`
Para que o Node possa *"entender"* como executar o projeto, ele depende do **package.json**. Este arquivo é o *core* de qualquer projeto que use Node, neste arquivo estão registradas todas as informações principais sobre o projeto, tais como o nome do projeto, o endereço do repositório no serviço de Git onde o projeto está armazenado, as versões utilizadas, todas e quaisquer configurações de libs e frameworks que o projeto usa, qual é o arquivo ponto de entrada do programa, a lista de dependências entre outras informações. Ou seja, este é como o *manifesto* de qualquer projeto em Node, e é o primeiro arquivo criado quando se inicia algum projeto.

### PACKAGE MANAGERS
**Uma dependência, é todo e qualquer conjunto de dados que realiza uma tarefa.** Assim como o JS possui features nativas de APIs do navegador, e outras que podem ser incorporadas através de libs externas, no Node, para usarmos funcionalidades que dependendem de libs externas, é necessário a utilização de algum **gerenciador de dependências**, que nada mais são do que *repositórios de códigos* voltados para pacotes do Node, onde é possível encontrar libs e realizar a instalação de tal no projeto. Os gerenciadores mais utilizados em Node são o **npm** que é o padrão que já vem na instalação do Node no ambiente, e o **yarn**, um outro gerenciador mais novo no mercado. O npm possui a vantagem de ter um enorme repositório de bibliotecas e módulos, contendo ferramentas e soluções para os mais diversos problemas e requisitos que podem ser adicionados ao projeto sem a necessidade de uma nova configuração, pois já é o padrão do Node. O **Node Package Manager** é 2 coisas: um repositório online opensource para publicação de projetos Node, e um utilitário CLI para interagir com estes, auxiliando na instalação, gerenciamento de versões e de dependências.<br/>
Então, desde de dependências mais simples como algumas libs restritas que realizam tarefas bastante específicas, até os frameworks mais completos, é possível usar com NodeJS através destes gerenciadores de pacotes.<br/>
É através destes gerenciadores de pacotes que é possível instalar essas dependências de pacotes externos que deseja-se usar no projeto. Então, quando o código abaixo é executado:
```shell script
npm install express
```
O que na verdade está sendo feito é que o gerenciador está acessando o repositório de código, selecionando os arquivos necessários da biblioteca escolhida e os baixa em um diretório local do projeto chamado por padrão de **`node_modules`**. A partir daí, as funções e ferramentas da lib instalada ficam disponíveis para serem utilizadas no projeto.<br/>
Neste exemplo do [`express`](https://expressjs.com/), este é um dos frameworks mais utilizados no mercado para a criação de aplicações web com JS. A partir da sua instalação via npm, o arquivo `package.json` é atualizado com as informações referentes a essa lib, com o nome, a versão, a licença e etc.

Se um projeto tem um arquivo `package.json` criado executando `npm install`, isso significa que todas as dependências que o projeto precisa serão instaladas na pasta `node_modules`, criando-a se ainda não existir.<br/>
Existem algumas flags que podem ser usadas para separar a instalação e o uso das dependências de acordo com as necessidades do projeto:
- `--save-dev`: instala e adiciona a entrada ao `package.json` de *devDependencies*.
- `--no-save`: instala o pacote, mas não adiciona a entrada ao `package.json`.
- `--save-optional`: instala e adiciona a entrada ao `package.json` de *optionalDependencies*
- `--no-optional`: impedirá que dependências opcionais sejam instaladas.

shorthand:
- `S`: `--save`
- `D`: `--save-dev`
- `O`: `--save-optional`

A diferença entre **devDependencies** e **dependencies** é que *o primeiro contém ferramentas de desenvolvimento*, como uma biblioteca de testes, enquanto *o último é empacotado com o aplicativo em produção*. Quanto às **optionalDependencies**, a diferença é que a falha de compilação da dependência não fará com que a instalação falhe. Mas é responsabilidade do seu programa lidar com a falta de dependências.

Além disso, o arquivo `package.json` suporta um formato para especificar tarefas de linha de comando que podem ser executadas usando `npm run task_name`. Por exemplo:
```json
{
  "scripts": {
    "start-dev": "node lib/server-development",
    "start": "node lib/server-production"
  }
}
```

É muito comum usar esse recurso para executar o Webpack:
```json
{
  "scripts": {
    "watch": "webpack --watch --progress --colors --config webpack.conf.js",
    "dev": "webpack --progress --colors --config webpack.conf.js",
    "prod": "NODE_ENV=production webpack -p --config webpack.conf.js"
  }
}
```
Então, em vez de digitar comandos longos, que são fáceis de esquecer ou digitar incorretamente, pode-se executar:
```shell
npm run watch
npm run dev
npm run prod
```

para desinstalar um módulo usa-se o comando:
```shell
npm un mod_name
```

#### `package_lock.json`
É muito comum que uma dependência, principalmente em pacotes robustos como o `express` por exemplo, seja desenvolvida a partir de outras dependências. Embora toda a lista das dependencias usadas por outra dependência não estejam no `package.json` — que é quase que um guia de consulta rápido para as principais dependências do projeto, os códigos das dependências precisam ser baixados juntos com o pacote principal instalado e são também inclusos no `node_modules`. Assim, o `package_lock.json` contém uma lista mais *refinada* de **todas** as dependências gerais, gerenciando todas estas.

#### VERSIONAMENTO SEMÂNTICO
Cada lib instalada possui uma versão, no arquivo `package.json` é possível verificar qual versão está sendo utilizada e quais atualizações serão recebidas dessa lib no projeto através de instruções de *SemVer*. Este é um padrão para dar significado às versões de software, que segue a estrutura `MAJOR.MINOR.PATCH`.<br/>
São usados símbolos, chamados de **SemVer Range Operators**. São eles:

| Símbolo     | Significado                                                                                       | Version Range                      |
|-------------|---------------------------------------------------------------------------------------------------|------------------------------------|
| `"4.17.2"`  | Usa **somente** a versão `4.17.2`.                                                                | Pinned Version / Strict Dependency |
| `"^4.17.2"` | Usa qualquer versão `>=4.17.2 && <5.0.0`, permite atualizações dentro da mesma versão **major**.  | Caret `^`                          |
| `"~4.17.2"` | Usa qualquer versão `>=4.17.2 && <4.18.0`, Permite atualizações dentro da mesma versão **minor**. | Tilde `~`                          |
| `">=4.17.2"`| Usa essa versão ou **qualquer mais nova** que a versão especificada.                              | Loose Dependency                   |
| `"*"`       | Qualquer versão disponível, mas é pouco usado em produção, pode quebrar o app.                    | Loose Dependency                   |

Para atualizar pacotes, basta executar o comando `npm update`, caso haja a necessidade de atualizar apenas 1 pacote específico basta descrevê-lo `npm update package_name`.<br/>
Além de downloads simples de libs, o npm também gerencia o controle de versão como visto, sendo possível na instalação de um pacote escolher qual versão usar com `npm install package_name@version`, exemplo: `npm install express@5.1.0`

### MÓDULOS
O Node trabalha fortemente com o conceito de **[módulos](https://nodejs.org/docs/latest/api/)**, que visa organizar o código em pequenas partes especializadas, além de aplicar o princípio de encapsulamento ao “esconder” o código, expondo somente o necessário a outras partes da aplicação e assim organizar e separar melhor o código. O objetivo de modularizar o código é permitir que aplicações maiores sejam montadas de forma “modular”, ou seja, através de várias partes independentes. Originalmente o Node trabalhava com o sistema CJS de modularização, pois o JavaScript não tinha ferramentas específicas para isso. Posteriormente foi especificado o padrão “geral” de módulos do JavaScript, o EcmaScript Modules. Desde então, o Node vem adotando gradativamente o ECMAScript Modules desde a versão 13, o que traz muitas diferenças com relação à forma “original” do Node, o CJS.<br/>
Os conceitos de módulo e modularidade são parte importante do desenvolvimento com JavaScript, e quando se tem mais de uma forma de realizar algo, como é o caso aqui, é ainda mais importante que se entenda os detalhes e as diferenças entre os métodos.<br/>
A primeira forma adotada pelo JavaScript para permitir a modularidade foi o chamado **CJS – Common JS**, baseado na função `require()`.<br/>
O CJS, embora fosse conhecido como o “padrão” do Node para módulos, nunca foi definido como ferramenta de modularidade oficial da linguagem, pois basicamente cria as exportações a partir da alteração do objeto global `exports` ao invés de utilizar métodos próprios para isso.<br/>
Por não existir esse método próprio, o ES6 especificou oficialmente, o chamado **ESM – EcmaScript Modules**, baseado nas palavras-chave `import` e `export`.

Além das diferenças nas palavras-chave, funções e objetos utilizados para importar e exportar módulos, o CJS e o ESM têm outras diferenças estruturais: **uma diferença importante é que _o CJS funciona de forma SÍNCRONA_, enquanto _o ESM funciona de forma ASSÍNCRONA_, o que dificulta a compatibilidade entre as 2 formas.**

Como sabemos, a definição mais básica de módulo é: uma unidade, uma parte que pode ser combinada com outras mas que tem, por si mesma, uma funcionalidade. Podemos pensar como por exemplo em *móveis modulares*, que podem ser montados em conjunto de acordo com a necessidade, embora cada parte também funcione sozinha, como no caso do armário.<br/>
**Traduzindo essa ideia para a programação, podemos chamar de módulo todo código que tem uma funcionalidade específica e que está implementado de forma independente — sendo assim *modularizado* — ou seja, utilizado em conjunto com outras partes do código para desenvolver uma aplicação completa.** Também são considerados módulos as bibliotecas externas importadas no projeto.<br/>
Em aplicações desenvolvidas com Node, já é padrão a divisão das funcionalidades em quantos diretórios e arquivos forem necessários para manter o código separado e organizado. Em um projeto construído neste formato, os navegadores precisam baixar e carregar todos os arquivos necessários para que a aplicação funcione corretamente, daí a utilidade dos *bundlers*, que são *empacotadores* que otimizam os arquivos para transferência e carregamento rápido pelos navegadores, como o **webpack** por exemplo.<br/>
O que não é o caso com aplicações executadas no ambiente do NodeJS, que pode dispensar então esse processo de empacotamento e otimização para um único arquivo que é comum ao frontend.<br/>
O Node considera cada arquivo como um módulo separado e independente, com seu próprio *namespace*. Ou seja, todos os códigos definidos em um arquivo, sejam variáveis, funções ou classes, ficam restritos – privados e contidos dentro do próprio arquivo – e são acessados apenas pelo próprio arquivo em que foram criados, a não ser que sejam explicitamente exportados e importados em outro arquivo como um módulo, evitando assim conflitos de nomenclatura. Pode-se dizer que um **namespace** é um espaço isolado, ou seja uma "bolha privada" onde tudo em relação a um código existe, assim evitando conflitos de nomes e vazamento de escopo entre diferentes partes do código, então o que estiver dentro de um arquivo não afetará diretamente o que está em outro arquivo, a menos que seja exportado e importado. Por exemplo, uma função ou variável que existe globalmente em um arquivo só existirá dentro dele, e só poderá ser usada por outro código após ser explicitamente transportada. Por exemplo:
```js
// calculator.js
function sum(a, b) {
  return a + b;
}

module.exports = sum;
```
```js
// main.js
const somar = require('./calculator');

console.log(somar(2, 3)); // 5
```

Então, como cada arquivo é um módulo com seu próprio namespace, o exemplo acima funciona perfeitamente, mesmo que ao ser exportado exista outra função no arquivo que importa com a mesma nomeação:
```js
// aux.js
function helloWorld() {
  return `Hello world!`;
}

module.exports = helloWorld;
```
```js
const olaMundo = require('./aux');

function helloWorld() {
  return `Welcome new user.`;
}

console.log(olaMundo()); // Hello world!
console.log(helloWorld()); // Welcome new user.
```

Cada arquivo tem sua própria versão de `helloWorld()`, o Node não mistura os escopos de `aux.js` e `main.js` e isso é o namespace em ação.

Outro exemplo utilizando outro método poderia ser um módulo que valida a sequência numérica de cartões de crédito, antes que os cartões sejam utilizados pelo restante da aplicação:
```js
// validacoes/validacaoCartao.js
function validaCartao(cartao) {
 // lógica interna da validação
 return cartaoEhValido
}

export default validaCartao;
```

Acima, a função `validaCartao()` está sendo explicitamente exportada através da linha `export default validaCartao`. Qualquer outro módulo na aplicação que queira usar o validador basta importá-lo:
```js
// index.js
import validaCartao from 'validacoes/validacaoCartao.js';

function enviaDadosCliente(dadosCliente) {
 // lógica interna
 const cartaoEhValido = validaCartao(dadosCliente.cartao);
 // lógica interna continua
}
```
O módulo `index.js` só consegue acessar `validaCartao()` e usar sua lógica interna a partir do momento em que o módulo é importado de seu arquivo original. O mesmo acontece para bibliotecas e dependências externas. Por exemplo, caso seja necessário trabalhar com a biblioteca de validação `express-validator`, é possível importar somente os módulos que interessam, e apenas no arquivo onde serão usados:
```js
// validacoes/index.js
import { body } from 'express-validator';
```

A modularização em JavaScript também permite que sejam definidas as funções, classes, objetos ou variáveis de um módulo que serão exportados, mantendo o restante da implementação com acesso apenas no módulo onde foram definidos:
```js
// validacoes/validacaoCartao.js
function validaCartao(cartaoRecebido) {
 // lógica interna da validação
 const resultado = funcaoAuxiliar(cartaoRecebido)
 // lógica interna da validação continua
 return cartaoEhValido
}

function funcaoAuxiliar(dado) {
 // lógica interna da função privada do restante da aplicação
 return resultado
}

export default validaCartao; // exporta apenas a lógica da função indicada
```
No exemplo acima, apenas a função `validaCartao()` está sendo exportada, e a função `funcaoAuxiliar()` está sendo usada apenas internamente pelo módulo `validacaoCartao()`, não ficando disponível para ser acessada pelo restante do código. Ou seja, temos apenas uma “exportação padrão” neste módulo da função que outras partes da aplicação precisam acessar. O restante da lógica exemplificado aqui por `funcaoAuxiliar()` fica restrito ao módulo e não é acessado.

>**Resumindo:**<br/>
**No Node, módulos são blocos reutilizáveis de código que ajudam a organizar e isolar funcionalidades. Eles permitem importar apenas o necessário, encapsular a lógica e compartilhar funcionalidades entre arquivos ou mesmo entre projetos diferentes. Um módulo no Node é qualquer arquivo JavaScript que exporta algum valor como uma função, objeto, variável, classe e etc, que pode ser importado em outro arquivo usando `require()` ou `import`, dependendo do tipo de módulo usado – CommonJS ou ES Modules.**

Existem diferentes tipos de módulos:
1. **core modules**: são aqueles disponíveis no Node sem a necessidade de download de arquivos via package manager, como por exemplo `fs`, `http`, `path`, `os`, `events`, `crypto` e etc.
```js
const fs = require('fs');
fs.readFileSync('arquivo.txt');
```

2. **user modules**: são os módulos criados pelo desenvolvedor para uso na aplicação.
```js
// calculadora.js
function somar(a, b) {
  return a + b;
}
module.exports = somar;

// app.js
const somar = require('./calculadora');
console.log(somar(2, 3)); // 5
```

3. **third-party modules**: são as bibliotecas instaladas via package managers, como `express`, `lodash`, `axios` e etc.
```js
const express = require('express');
const app = express();
```

> A utilização do mesmo nome na importação não é obrigatória, mas sim um padrão da linguagem.

#### IMPORTAÇÃO
Então, tendo todas as dependências necessárias instaladas, para usá-las no projeto, vejamos mais sobre métodos de importação e exportação no arquivo JS para que suas funcionalidades guardadas nos arquivos em `node_modules` possam ser acessadas.<br/>
Declarar os módulos importados no topo do arquivo é uma convenção seguida pela comunidade, mas não é decisiva para o funcionamento do código. Módulos importados passam pelo mesmo processo de hoisting de declarações de função e variáveis e são “içados” para o topo dos arquivos. Então como "regra", todas as importações devem estar declaradas no topo dos arquivos onde os módulos serão utilizados e não devem ser feitas dentro de funções, classes, loops ou outros blocos de código.
```js
import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send("Hello world!");
});

app.listen(port, () => {
  console.log(`Ouvindo na porta ${port}`);
});
```

#### EXPORTAÇÃO
Assim como é possível *importar* funções, dados entre outras coisas entre arquivos JS, para que isso seja feito, o arquivo alvo da importação deve conter a declaração que permite exportar seus dados. São 2 as principais abordagens para exportar valores de um módulo: **exportações nomeadas** e **exportações default**. Dentro delas, existem diversas formas de declarar exportações.

#### MÉTODOS DE TRANSPORTE
Como vimos no início, existem 2 formas de se trabalhar com módulos em JavaScript, usando a forma CJS ou ESM. Porém, existe um “hiato” de tempo entre as especificações definidas para cada versão do JavaScript e a implementação de cada uma delas, tanto nos navegadores quanto no Node.js e em todo o seu ecossistema de bibliotecas. Por esse motivo, até hoje, é possível encontrar alguns bugs e *workarounds* – termo usado em programação para o que chamamos em português de “gambiarras” – para utilizar a sintaxe ESM com NodeJS.<br/>
Assim, ainda é muito comum ver o uso do **CJS** e do `require()` no Node. E mesmo após a implementação do **ESM** e a adoção desta nova sintaxe pelas bibliotecas, boa parte das documentações ainda utiliza a forma anterior para dar suporte a sistemas *legados*.<br/>
No JS existem várias formas de transportar código, dependendo do tipo de módulo usado:


1. **CommonJS – `require`**, esta é a forma "padrão" do Node, antes do surgimento do **ES Modules**, atualmente `require()` é um método antigo, usado apenas em ambientes Node.js legados ou com módulos antigos. O CJS utiliza o objeto global `exports` para gerenciar as **exportações** de módulos e a função `require()` para gerenciar as **importações**.

- **Importação simples**<br/>
Neste exemplo, é usado `require()` para importar módulos do código, passando como parâmetro uma string com o caminho relativo do arquivo onde se encontram os módulos que queremos importar. O retorno da função `require()` é normalmente a função, classe ou objeto importado, que é guardado na variável definida.
```js
const modulo = require('./modulo.js');

console.log(modulo.saudacao('Raphael'));   // Olá, Raphael!
console.log(modulo.despedida('Raphael'));  // Tchau, Raphael!
```

- **Importar uma propriedade específica**<br/>
Além da importação do objeto completo, é possível utilizar a desestruturação de objetos para importar apenas os módulos necessários.
```js
// const { funcao } = require('./modulo.js');
const { saudacao } = require('./modulo.js'); // destructuring

console.log(saudacao('Déborah'));            // Olá, Déborah!
```

- **Importar com renomeação**
```js
// const { funcao: novoNomeDaFuncao } = require('./modulo.js');
const { despedida: bye } = require('./modulo.js');

console.log(bye('Kaique')); // Tchau, Kaique!
```

1. **CommonJS - `exports`** — usado eventualmente apenas em projetos legados no Node. O método `module.exports` só pode exportar 1 único valor.
  - **Exportar partes individuais**
  ```js
  exports.saudacao = (nome) => `Olá, ${nome}!`;
  exports.despedida = (nome) => `Tchau, ${nome}!`;
  ```

  - **Exportar uma única parte diretamente**
  ```js
  module.exports = function bemVindo(nome) {
    return `Olá, ${nome}!`;
  };
  ```
  ou, o mais utilizado:
  ```js
  function bemVindo(nome) {
    return `Olá, ${nome}!`;
  };

  module.exports = bemVindo;
  ```

  - **Exportar múltiplos valores**
  ```js
  // modulo.js
  module.exports = {
    saudacao(nome) {
      return `Olá, ${nome}!`;
    }

     despedida(nome) {
      return `Tchau, ${nome}!`;
    }
  };
  ```
  ou, o mais utilizado:
  ```js
  // modulo.js
  function saudacao(nome) {
    return `Olá, ${nome}!`;
  }

  function despedida(nome) {
    return `Tchau, ${nome}!`;
  }

  module.exports = {
    saudacao,
    despedida
  };
  ```

  - **Exportação anônima**
  ```js
  // module.js
  module.exports = function(nome) {
    return `Olá, ${nome}!`;
  };

  // main.js
  const saudar = require('./module')
  ```
  ou
  ```js
  // module.js
  module.exports = {
    saudar: function(nome) {
      return `Olá, ${nome}!`;
    },
    boasVindas: function() {
      return `Olá mundo!`;
    }
  };

  // main.js
  const { saudar, boasVindas } = require('./module');

  console.log(saudar("Raphael"));  // Olá, Raphael!
  console.log(boasVindas());       // Olá mundo!
  ```
  ou ainda:
  ```js
  // module.js
  module.exports.saudar = function(nome) {
    return `Olá, ${nome}!`;
  };

  module.exports.boasVindas = function() {
    return `Olá mundo!`;
  };

  // main.js
  const { saudar, boasVindas } = require('./module');

  console.log(saudar("Raphael"));  // Olá, Raphael!
  console.log(boasVindas());       // Olá mundo!
  ```

O CJS no Node utiliza funções e objetos nativos dele, como o objeto global `exports`, porém não irá funcionar da mesma forma nos navegadores. Era comum o uso de `exports` e `require()` em aplicações frontend através de *bundlers*, como o webpack, que permitiam o uso deste recurso, e *"traduziam"* o código para um formato de JavaScript que os navegadores pudessem interpretar — já que não possuem o objeto global `exports` e não compreendem o CJS.<br/>
Com o lançamento do **ESM**, os navegadores passaram a adotar esta que é a sintaxe *"oficial"* de importação e exportação com `import` e `export`.

2. **ES Modules – `import`** é o método mais moderno, sendo o padrão atual do ECMAScript, usado em browsers e também é suportado no Node. Este método foi implementado a partir do ES6, sendo um suporte real à modularidade como parte da linguagem, usando palavras-chave como `import` e `export`. Conceitualmente, o princípio de modularidade permanece o mesmo nos navegadores e no Node onde, cada arquivo é considerado um módulo independente, e as propriedades e objetos dentro de um arquivo não podem ser acessados de fora dele a menos que sejam explicitamente exportados e importados.

- **Importação padrão (default import)**
```js
// import valorPadrao from './modulo.js';
import saudacao from './modulo.js';

console.log(saudacao()); // "Olá do módulo!"
```

- **Importação nomeada (named import)**
```js
// import { funcao, constante } from './modulo.js';
import { somar, PI } from './modulo.js';

console.log(somar(2, 3)); // 5
console.log(PI); // 3.14159
```

- **Importação com renomeação (alias)**
```js
// import { funcao as novaFuncao } from './modulo.js';
import { multiplicar as vezes } from './modulo.js';

console.log(vezes(4, 5)); // 20
```

- **Importar tudo como um objeto**
```js
import * as utils from './modulo.js';
// Ex: utils.funcao()

console.log(utils.somar(10, 20)); // 30
console.log(utils.PI); // 3.14159
console.log(utils.default()); // "Olá do módulo!"
```

- **Importação combinada (default + named)**
```js
// import valorPadrao, { funcao } from './modulo.js';
import saudacao, { somar } from './modulo.js';

console.log(saudacao()); // "Olá do módulo!"
console.log(somar(3, 3)); // 6
```

- **Importação dinâmica (lazy load)**
```js
/* const modulo = await import('./modulo.js');
   modulo.funcao();
*/

const carregarModulo = async () => {
  const modulo = await import('./modulo.js');

  console.log(modulo.default()); // "Olá do módulo!"
  console.log(modulo.somar(1, 2)); // 3
};

carregarModulo();
```

2. **ES Modules — `export`** — padrão moderno, utiliza o `export` para tornar partes do código acessíveis em outros arquivos que usam `import`.
- **Exportações nomeadas (Named Exports)**<br/>
Permite exportar múltiplos valores com nomes específicos.
  - **Exportação nomeada (inline)**
  ```js
  export const nome = "Raphael";
  export const idade = 27;
  export function somar(a, b) {return a + b;}
  export class Pessoa {/* propriedades */}
  ```

  - **Exportação nomeada, depois da declaração**
  ```js
  const idade = 27;
  function subtrai(a, b) { return a - b; }

  export { idade, subtrai };
  ```

  - **Renomear durante a exportação nomeada com `as`**
  ```js
  const idade = 27;
  export { idade as anos };

  function soma(a, b) { return a + b; }
  export { soma as somarValores };

  ```
  ou, o mais utilizado:
  ```js
  const idade = 27;
  function soma(a, b) { return a + b; }

  export { idade as anos, somar as somarValores };
  ```

- **Exportação padrão (Default Export)**<br/>
Cada módulo só pode ter **uma única exportação default**. Enquanto a exportação com `export` só pode ser usada em funções nomeadas, a exportação padrão com `export default` pode ser feita em funções anônimas e também em objetos literais:
  - **Exportação default inline**
  ```js
  export default class Pessoa {
    constructor(nome) {
      this.nome = nome;
    }
  }
  ```
  e:
  ```js
  // operacao.js
  export default function(num1, num2) {
    return num1 + num2;
  }

  // index.js
  import operacao from './operacao.js';
  /* No exemplo acima, podemos criar o identificador `operacao` na importação da função anônima;
     os identificadores dos `imports` se comportam como constantes. /*
  ```

  - **Exportação default after**
  ```js
  function validaCartao(cartao) {
   // lógica interna da validação
   const resultado = funcaoAuxiliar(algumDado)
   // lógica interna da validação continua
   return cartaoEhValido
  }

  function funcaoAuxiliar(dado) {
   // lógica interna da função
   return resultadoDaLogica
  }

  export default validaCartao;
  ```

- **Exportar tudo de outro módulo (Re-exportação)**<br/>
Permite importar e exportar de outro módulo sem declarar localmente.
  - **Exportar tudo de outro módulo (reexport)**
  ```js
  export * from './outroModulo.js';
  export * from './util.js';
  ```

  - **Exportar tudo com alias**
  ```js
  export * as utils from './utils.js';
  ```

  - **Reexportar e renomear com alias**
  ```js
  export { soma as somar } from './math.js';
  ```

  - **Reexportar default com nome**
  ```js
  export { default as MeuComponente } from './Componente.js';
  ```

  - **Exportar selecionados de outro módulo**
  ```js
  export { saudacao, despedida } from './cumprimentos.js';
  export { soma, subtrai } from './math.js';
  ```

- **Outros casos menos comuns**
  - **Dinamicamente (ES Modules dinâmicos — via `import()`)**
  ```js
  const modulo = await import('./modulo.js');
  console.log(modulo.saudacao("Raphael"));
  ```

  - **Misturar CommonJS com ESM (casos híbridos)**
  > 🟡 *Não recomendado*, mas possível no Node.js:
  ```js
  // arquivo.mjs
  import pacote from 'meu-pacote-cjs';
  ```
  Ou vice-versa:
  ```js
  // arquivo.cjs
  const modulo = await import('./modulo.mjs');
  ```

3. **Outras formas especiais**
- **Importar JSON**
```js
// ES Module (Node.js precisa de flag ou config no package.json)
import dados from './arquivo.json' assert { type: "json" };

// CommonJS
const dados = require('./arquivo.json');
```

- **Importar em HTML (browser) via CDN**
```html
<script type="module" src="app.js"></script>
```

#### MODULE EXTENSIONS
Há alguns padrões que o JavaScript adota em suas extensões de arquivo para indicar os diferentes “tipos” de código.<br/>
Por exemplo, aplicações frontend que utilizam React podem adotar o padrão `.js` para arquivos escritos em JavaScript “padrão” e `.jsx` para arquivos que utilizem os recursos da extensão JSX, embora a funcionalidade do código e dos arquivos permaneça a mesma.<br/>
Da mesma forma, é possível utilizar os padrões `.mjs` para assinalar arquivos em JavaScript que sejam módulos ESM, e diferenciá-los de arquivos JavaScript "comuns" módulos mantendo a extensão normal `.js`.<br/>
Os arquivos com extensão `.cjs` seguem o mesmo princípio, porém para CJS. Caso seja necessário utilizar a sintaxe CJS em aplicações que já usam o ESM e que, por consequência, têm definido o `”type”: “module”` como propriedade no arquivo `package.json`, será necessário utilizar a extensão `.cjs`, embora não seja recomendável misturar as 2 formas de importação em um mesmo projeto.<br/>
Então, no caso onde usa-se user modules, na sintaxe ESM é necessário incluir o nome completo do arquivo no caminho incluindo a extensão `.js`. Já o CJS não requer a extensão do arquivo, é possível utilizar `const soma = require('./operacoes');` por exemplo.

**Para executar os módulos importados em um arquivo `.js`, é importante que estejam referenciados no `package.json`, ou usando extensões `.mjs`.**
```pgsql
📁 exemplo-modulo/
├── package.json
├── index.js
└── utils.mjs
```
```json
// package.json
{
  "name": "exemplo-modulo",
  "version": "1.0.0",
  "type": "module",
  "main": "index.js",
  "scripts": {
    "start": "node index.js"
  }
}
```
```mjs
// utils.mjs
export function somar(a, b) {
  return a + b;
}

export const saudacao = 'Olá do módulo utils!';
```
```js
// index.js
import { somar, saudacao } from './utils.js';

console.log(saudacao);
console.log('2 + 3 =', somar(2, 3));
```
**Sem o `"type": "module"` no `package.json` só é possível usar CJS (`require()` e `module.exports`), ou então para usar ESM, renomear os arquivos para `.mjs`, assim sendo permitido o uso de `import` e `export`.**<br/>
Na prática, usar ou não estes padrões não traz diferença para o desenvolvimento da aplicação, porém o Node, “por baixo dos panos”, vai identificar as diferentes extensões ao carregar os programas e indexar os arquivos. Então, é permitido utilizá-los, embora este tipo de decisão muitas vezes fique a cargo da convenção utilizada por cada projeto e empresa.<br/>
Uma boa prática é realizar o link dos módulos, garantindo que toda alteração feita no pacote sejam refletidas nos aplicativos que o usam. O npm vincula módulos utilizando *symlinks*, que são links simbólicos, como referências que apontam para arquivos ou diretórios locais. Existem 2 maneiras de se vincular user local modules a um projeto:

1. **global link**: cria um symlink global para o `module.npm` entre o diretório global `node_modules` e o diretório do módulo criado (`user_module`). O diretório global `node_modules` é o local onde todos os pacotes npm do sistema instalados com a flag `-g` estão armazenados.
2. **local link**: o npm cria um symlink entre o projeto local que está utilizando o módulo e o link global do módulo.

Um link global deve ser criado na pasta do `user_module` com o comando:
```shell
cd ./local_module
sudo npm link # ou também o shorthand: `npm ln`
# output: /usr/local/lib/node_modules/local_module -> /home/user/local_module
```

Então, na pasta do projeto vincule o pacote:
```shell
cd ./project-application
sudo npm link local_module
# output: /home/user/project-application/node_modules/local_module -> /usr/local/lib/node_modules/local_module -> /home/user/local_module
```

Como o resultado mostra, acabou de ser criado um symlink a partir do diretório local `node_modules` do projeto `project-application` para o symlink `local_module` no `node_modules` global, que aponta para o diretório com o módulo `local_module`. Com isso, o processo de vinculação está completo.

Para salvar um `user_local_module` como uma dependência e importá-lo como um módulo ao invés de usar seu relative path & extension, basta armazenar o arquivo que contém o código modularizado em um diretório para ele, então navegue até este diretório e inicie o npm `npm init -y` — usar a flag `-y` pula as configurações de personalização iniciais do `package.json`, porém, se este módulo for publicado, será necessário preencher os campos obrigatórios no `package.json`. Agora basta ir ao diretório do projeto e instalar o módulo utilizando a flag `--save` para que ele seja gravado no `package.json` principal do projeto `npm install --save path/mod_name`.

Para deploy e update de projetos em produção, a melhor prática é publicar o pacote no npm, para que suas alterações sejam sempre visíveis à aplicação no servidor. Para que seja possível publicar um pacote é necessário uma conta no [npmjs](https://www.npmjs.com/).<br/>
Além disso, o código deve estar disponível em algum serviço de versionamento online, como o GitHub por exemplo, e sempre com a privacidade configurada como *público*.<br/>
Dentro do repositório que se deseja publicar, deve-se setar as informações do autor e a licença do código:
```shell
npm login # se ainda não estiver logado
npm config set init-author-name "raphaelkaique1"
npm config set init-author-email "raphaelkaiquediassantos1@gmail.com"
npm config set init-license "MIT"
npm adduser # este comando indica que o usuário setado é o dono o pacote a ser publicado
```

O próximo passo é criar o `package.json`, que irá conter todas as informações do pacote como nome do módulo, versão, url do repositório e etc. Para essa configuração, basta iniciar o npm com:
```shell
npm init
```
e responder as perguntas de configurações iniciais:
- **Nome** - Nome do pacote, este deve ser **único** no npm, por isso é possível utilizar um *scope* como `@username/packname` para evitar conflitos.
- **Versão** - Versão do pacote.
- **Descrição** - Do que se trata o pacote.
- **Entry point** - Caminho do arquivo.
- **Test command** - Tem relação com testes.
- **Github repository** - Repositório do github.
- **Keywords** - Palavras chaves que vão facilitar na hora de achar nossa biblioteca.
- **License** - Licença da biblioteca.

A saída básica será algo como:
```json
{
  "name": "nome-do-seu-pacote", // "@username/packname"
  "version": "1.0.0",
  "description": "Descrição breve do pacote",
  "main": "index.js",
  "author": "Nome do Autor",
  "license": "MIT"
}
```

Feitas as alterações necessárias e criado o `package.json`, atualizamos o repositório no GitHub antes de publicar o pacote.

É possível empacotar o módulo para testar localmente, basta executar este comando **na pasta do módulo**:
```shell
npm pack
```
Este comando gera um arquivo `.tgz` que simula o pacote que será publicado.

Ainda na pasta do módulo, para publicar no npm, basta executar o comando:
```shell
npm publish
```
Se for um pacote com *scope*, deve-se usar:
```shell
npm publish --access public
```

Assim o pacote está publicado com sucesso, e isso pode ser verificado no site do npm, apenas indicando o nome do pacote na url `https://www.npmjs.com/package/pack-name`. Então, para usar o pacote, basta apenas instalá-lo `npm i pack-name`/`npm install @username/packname`, e referenciá-lo no projeto em que se deseja usá-lo.

Caso seja necessário realizar alguma alteração no pacote publicado, é necessário antes de atualizá-lo no repositório do npm informar a alteração através do *SemVer*. Isso pode ser feito alterando manualmente no `package.json` do módulo, ou na pasta do módulo executar algum dos comandos abaixo de acordo com o nível da alteração:
```shell
npm version patch  # 1.0.0 -> 1.0.1
npm version minor  # 1.0.0 -> 1.1.0
npm version major  # 1.0.0 -> 2.0.0
```

Em seguida basta atualizar o repositório no GitHub e então publica-lo novamente no npm.
```shell
npm publish

# ou se for um pacote com scope, deve-se usar:
npm publish --access public
```

### SERVER
A principal função do Node é ser um servidor, então, começaremos criando um que retorna um texto sem formatação ao usuário. Para isso, importamos o pacote `http`, que é padrão do Node. Este pacote contém a função de criar o servidor. Para criar um servidor com Node, basta importar o módulo nativo `createServer`, e definir algumas configurações, como o `host` e a `port` em que o servidor se associará. Isso é necessário pois todo servidor web aceita solicitações de navegadores, essa interação é feita ao digitar um nome de domínio, que é traduzido para um endereço IP por um servidor DNS. Um endereço IP é uma sequẽncia única de números que identificam uma máquina em uma rede, como a internet.<br/>
**HOST**: O valor `"localhost"` é um endereço privado especial que computadores usam para se referir a eles mesmos. Normalmente, ele é equivalente ao endereço IP interno `127.0.0.1` e está disponível apenas para o computador local, ou seja, não está disponível para nenhuma rede local da qual participamos e nem para a internet.<br/>
**PORT**: A porta é um número identificador — que vai de 0 a 65535, usados pelos protocolos de rede como TCP e UDP — que os servidores usam como um ponto de *passagem* para o endereço IP. Elas diferenciam os serviços de rede rodando na mesma máquina, ou seja, são como canais de IO que pertmiem que os dados específicos cheguem ao local correto. No exemplo a seguir utilizaremos a porta `8000` — pois portas até 1024 são privilegiadas, o que significa que são reservadas para alguns serviços e protocolos, acima deste valor — até 49151 — existem as portas registradas, reservadas para serviços menos comuns e as portas dinâmicas — de 49152 à 65535 — que são usadas temporariamente para aplicações. As portas `8080` e `8000` são normalmente usadas como as portas padrão em processos de desenvolvimento e, na maioria dos casos, os devs usam essas portas no lugar de outras disponíveis para servidores HTTP.<br/>
As portas atuam juntamente com os IPs para formar o que é chamado de **socket**: `IP:PORTA`, que é um *caminho*, como uma ponte para a comunicação entre servidor e cliente em uma rede, identificando de forma única um processo de comunicação em um computador. Para um servidor, é vital saber em qual endereço *escutar* as requisições do cliente, seu socket é como o cliente irá encontrar o servidor na máquina e assim realizar a comunicação.<br/>
Ao vincular o servidor ao socket criado com o host e a port, é possível acessá-lo em um navegador local, no endereço `http://127.0.0.1:8000`.
```js
import { createServer } from 'node:http'; // importa somente o método `createServer()` do módulo `http` do repositório do Node.js


const host = '127.0.0.1'; // define o IP para conexão com clientes
const port = 8000;        // define em qual porta o servidor irá escutar


const server = createServer((req, res) => {    /* http.createServer([options][, requestListener]) == const server = createServer((req, res) => { ... });
cria o servidor e define um callback que será executado toda vez que o servidor receber uma requisição HTTP

req: contém informações da requisição recebida, como o método, URL, headers e etc
res: objeto usado para montar e enviar a resposta */

  // res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.statusCode = 200;                         /* define o código de status HTTP da resposta, 200 == "OK" (requisição bem-sucedida)
  os códigos de status do HTTP informam o quão bem uma solicitação HTTP foi processada pelo servidor */

  res.setHeader('Content-Type', 'text/plain');  /* define o tipo de conteúdo que será retornado ao cliente
  `text/plain` informa ao navegador que o conteúdo é texto puro, sem HTML ou JSON */

  res.end('Hello world!'); /* finaliza a resposta retornando o conteúdo (no caso 'Hello world!') como corpo da resposta
    sem este método `.end()`, o navegador ficaria esperando a resposta terminar */
});

/* em servidores TCP como é o caso deste exemplo, o método `.listen()` requer no mínimo:
server.listen([port[, host[, backlog]]][, callback])
- port: porta virtual que estará aberta para conexão
- host: endereço IP do servidor
- callback: método que será executado quando o servidor estiver pronto */
server.listen(port, host, () => {                           // inicia o servidor, que ficará escutando na porta e endereço definidos
  console.log(`Server running at http://${host}:${port}/`); // ao acessar http://127.0.0.1:8000 é estabelecida uma conexão client x server
});
```
Todas as funções tipo request listener em Node aceitam 2 argumentos: `req` e `res` — estes nomes de variáveis são opcionais. A solicitação HTTP que o cliente envia é capturada em um objeto `Request`, que corresponde ao 1º argumento `req`. A resposta HTTP retornada ao cliente é formada pela interação com o objeto `Response` no segundo argumento `res`. Neste exemplo, o servidor está configurado para ouvir na porta e no nome do host especificados. Quanto o servidor está pronto, a função de callback é chamada, neste caso, informando que o servidor está em execução. **Sempre que um novo pedido é recebido, o evento `request` é chamado, providênciando 2 objetos:**
1. **uma requisição:** `http.IncomingMessage` é um objeto criado durante uma requisição, é passado como o 1º argumento do método para os eventos `'request'` e `'response'` respectivamente. **Ele pode ser usado para acessar o status, cabeçalho e dados da requisição.**
2. **uma resposta:** `http.ServerResponse` é um objeto criado internamente por um servidor HTTP, **para servir como resposta à requisição do usuário**, sendo passado como o 2º parâmetro do método para o evento `'request'`.

Esses 2 objetos são essenciais para lidar com a chamada HTTP. O 1º fornece os detalhes do pedido, neste simples exemplo não foi usado, mas é possível acessar o cabeçalho da requisição e solicitar dados. O 2º é usado para retornar dados ao cliente, neste caso com: `res.statusCode = 200`, que indica uma resposta bem-sucedida.

Na linha da declaração da constante `server`, é atribuído à esta a função `createServer((req, res) => {})`, assim criando um novo objeto `server` através dessa função do módulo `http`. Esta função cria um servidor que aceita solicitações HTTP e as passa para a função callback relacionada.<br/>
Após a criação do servidor, é necessário associá-lo a um endereço de rede. Isso é feito com o método `server.listen()`, que escuta as requisições enviadas ao endereço informado e faz com que o servidor criado com `server.createServer()` receba a requisição e responda de acordo. Este método de listener "escuta" toda atividade no endereço que é criado ao passar os endereços do host e port especificado. Ele aceita 3 argumentos: `port`, `host` e um `callback` que é acionado quando o servidor começa a escutar. Todos estes argumentos são opcinais, mas é aconselhável especificar qual porta e host o servidor deve ouvir, pois, ao implantar servidores web para diferentes ambientes, é importante saber a porta e o host nos quais ele está funcionando, para possibilitar a configuração do balanceamento de carga ou um alias DNS. No caso do exemplo, a função callback imprime uma mensagem no console para informar que o servidor está online.

Ao executar o servidor, será possível ver o callback em `server.listen()` em execução. É de se notar que o prompt desaparece, e isso ocorre porque o servidor Node é um processo de longa duração — por causa do loop de eventos, que executa funções e esvazia a pilha de execução e fica aguardando uma nova instrução. O servidor só é encerrado em caso de erro que cause uma falha de encerramento ou pela interrupção intencional do processo do Node que está sendo executado.

Para testar se o servidor está online, pode-se utilizar a ferramenta `cURL`, um utilitário CLI que transfere dados *para* e *a partir* de uma rede.
```shell
curl http://localhost:8000
```
Ao executar o comando acima, veremos uma saída no terminal conforme setado em `server.listen()`. Ao utilizar o `cURL`, foi enviada uma solicitação `GET` para o servidor em `http://localhost:8000`, que escutou as conexões neste endereço com `server.listen()`. Então, ao escutar e identificar o tipo de requisição, o servidor transmitiu a solicitação para a função que está escutando e lidando com tipos `"request"`, neste caso a função callback em `server.createServer()`, que retornou com o código de status `200` e od dados de texto para o cliente `cURL`, exibindo a resposta no terminal.<br/>
Na maioria dos sites ou APIs que utiliza-se na web as respostas raramente são textos sem formatação, os formatos mais comuns são páginas HTML e dados JSON. A resposta retornada a partir de um servidor web pode ter vários formatos, além dos mencionados tabém podem haver outros formatos de texto como XML, CSV e etc. Além de que também ser retornados dados não textuais como PDFs, arquivos zip, mídias entre outros vários tipos de arquivos.<br/>
Porém, o essencial de um servidor é retornar HTML e JSON, que são tipos de dados baseados em texto e são formatos populares para o envio de conteúdo na web. Muitas linguagens e ferramentas de desenvolvimento de servidor possuem recursos para retornar esses tipos diferentes de dados. No contexto do Node é necessário fazer 2 coisas:
1. **Definir o cabeçalho do `Content-Type` nas respostas HTTP com o valor adequado.**
2. **Confirmar que o `res.end()` recebe os dados no formato correto.**

Caso seja necessário um retorno de dados baseados em texto, uma boa opção está no formato JSON, este formato de dados é muito pelas APIs para aceitar e retornar dados, sendo mais leve que os padrões anteriores a ele como o XML por exemplo. No caso de um servidor que retorna um JSON, basta indicar no header da resposta do servidor o tipo `"application/json"`:
```js
const http = require("http");
const server = http.createServer();

server.on("request", (req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "application/json");
});
```
O método `res.setHeader()` adiciona um cabeçalho HTTP à resposta. Estes cabeçalhos são informações adicionais que podem ser anexadas a uma solicitação ou uma resposta. O método `res.setHeader()` recebe 2 argumentos: o **nome do cabeçalho** e **seu valor**, respectivamente.<br/>
O 1º argumento informa o **nome do cabeçalho**, que indica que o 2º argumento — o valor do cabeçalho — é **o formato dos dados**, também conhecido como *tipo de mídia*, que está sendo enviado com a solicitação ou resposta. Neste caso, o `Content-Type` é o `application/json`.
```js
const http = require("http");
const server = http.createServer();

server.on("request", (req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "application/json");

  /* abaixo o valor está sendo inputado diretamente na resposta,
     mas poderia ser uma variável que contém os dados no formato
     ou ainda um arquivo `.json`
  */
  res.end(`{"message": "This is a JSON response."}\n`);
});
```

Outro formato popular de compartilhamento de dados é o **C**onteúdo **S**eparado por **V**írgula, este é um padrão de texto muito usado para fornecer dados tabulares. Na maioria dos casos, cada linha é separada um por um caractere de nova linha, e cada item da linha é separado por uma vírgula. Para trabalhar com este formato no Node, deve-se setar o head da `response` com uma informação adicional:
```js
const http = require("http");
const server = http.createServer();

server.on("request", (req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/csv");
  res.setHeader("Content-Disposition", "attachment;filename=file-name.csv");

  res.end(`id,name,email\nraphaelkaique1,Raphael,raphaelkaiquediassantos1@gmail.com`);
});
```

Desta vez, o `Content-Type` indica que um arquivo CSV está sendo retornado, pois o valor definido é `text/csv`. O segundo cabeçalho diz ao cliente como exibir os dados, em particular no navegador ou como um arquivo separado.<br/>
Ao retornar repostas CSV na maioria dos casos, os navegadores modernos baixam automaticamente o arquivo, mesmo se o cabeçalho `Content-Disposition` não estiver definido. No entanto, ao retornar um arquivo CSV este cabeçalho deve estar presente, pois ele permite definir o nome do arquivo CSV. No exemplo sinalizamos ao navegador que este arquivo CSV é um anexo e deve ser baixado, em seguida informamos o nome do arquivo `file-name.csv`.<br/>
Na chamada para o `res.end()` está o conteúdo do arquivo definido anteriormente para o download do cliente, está como uma string em formato CSV válido, onde a vírgula separa o valor de cada coluna e o caractere de nova linha `\n` separa cada uma delas. Neste retorno existem 2 linhas, uma para o cabeçalho da tabela e outra para os dados do arquivo.

E o formato mais popular, o HTML, é o mais utilizado quando os usuários precisam interagir com o servidor através de um navegador. Para exibir conteúdo HTML através do servidor, deve-se alterar no header o `Content-Type` e na resposta o corpo HTML que se deseja enviar.
```js
const http = require("http");
const server = http.createServer();

server.on("request", (req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/html");
  res.end(`<html><body><h1>Hello world!</h1></body></html>`);
  /* acima o valor está sendo inputado diretamente na resposta,
     mas poderia ser uma variável que contém os dados no formato
     ou ainda um arquivo `.html`
 
  usando variáveis:
  let helloworld = `<html><body><h1>Hello world!</h1></body></html>`;
  res.end(helloworld);
  */
});
```
Neste caso, `res.end()` possui uma string que contém um HTML válido, e ao ser acessado o endereço do servidor no navegador, o código na string poderá ser visualizado renderizado pelo browser em forma de página HTML.<br/>
O mais comum é que o conteúdo HTML esteja em um arquivo próprio. Para ler arquivos no sistema, o Node utiliza o módulo nativo `fs` para carregar os dados de arquivos para dentro da aplicação Node, podendo assim *transferir* estes dados para outra ponta qualquer da aplicação.<br/>
Para ler um arquivo com o pacote `fs`, utilizamos o método `readFile()` que solicita 3 argumentos, sendo o 1º o caminho e nome do arquivo, o 2º o tipo de formato do conteúdo do arquivo e por fim o 3º que é um callback informando o que deve ser feito com os dados *fetched* do arquivo lido.
```js
const http = require("http");
const server = http.createServer(); // cria o servidor

const path = require('path');
const filePath = path.join(__dirname, 'index.html'); // obtem o caminho do arquivo da página

const fs = require("fs"); // importa o módulo

server.on("request", (req, res) => {
  // leitura do arquivo no navegador com callback
  fs.readFile(filePath, 'utf8', (error, data) => {
    if(error) {                                      // tratamento de possíveis erros durante a leitura
      res.statusCode = 500;                          // código de bad getaway do servidor
      res.setHeader("Content-Type", "text/plain");   // retorna um conteúdo tipo texto sem formatação
      res.end("Erro interno ao carregar a página."); // mensagem exibida no navegador

    } else {                                         // executa em caso de sucesso da leitura
      res.statusCode = 200;                          // informa que a requisição foi bem sucedida
      res.setHeader("Content-Type", "text/html");    // retorna um conteúdo tipo HTML
      res.end(data);                                 // envia os dados do arquivo lido
    }
  });
});

server.listen(3000, () => {
  console.log("Servidor escutando em http://localhost:3000");
});
```

Uma outra forma mais moderna de realizar a leitura e escrita de arquivos de forma assíncrona é utilizar a versão `.promises` ao importar o módulo, isso permite o uso de `async` e `await` no código.<br/>
Ao importar o objeto promessa do tipo *variant*, utiliza-se das práticas mais modernas recomandadas para o JS. Ao usar promessas o código se torna sintaticamente mais sucinto em comparação ao callback como no exemplo anterior.<br/>
O código abaixo lê de forma assíncrona os dados do arquivo apenas quando um usuário solicita o sistema.
```js
const http = require("http");
const fs = require("fs").promises; // importa o módulo assíncrono

const PORT = 3000;
const HOST = "localhost";
const FILE = `${__dirname}/index.html`

const server = http.createServer();

server.on("request", (_, response) => {
  // método assíncrono de leitura
  fs.readFile(FILE) // lê o arquivo no caminho informado

  // método assíncrono (Promise) de execução após a leitura do arquivo
    .then(contents => {
      response.setHeader("Content-Type", "text/html");
      response.writeHead(200);
      response.end(contents); // envia os dados do arquivo lido ao cliente
    })
    .catch(error => {
      console.log(error);
      response.setHeader("Content-Type", "text/plain");
      response.writeHead(500);
      response.end(`Erro interno no servidor.`);
    });
})

server.listen(PORT, HOST, () => console.log(`http://${HOST}:${PORT}`));
```

Este método lê o arquivo no caminho informado `fs.readFile()` e em seguida retorna a página HTML assim que essa leitura estiver finalizada e carregada `.then()`. Se a promessa `fs.readFile()` for resolvida com sucesso, os dados serão enviados ao cliente com o método `.then()`, que carrega no parâmetro `contents` os dados do arquivo HTML. O método de leitura pode causar ocasionalmente, então a função `.catch()` captura o erro sem *quebrar* o restante da execução da aplicação, se a promessa encontrar um erro ela é rejeitada, então o `.then()` é ingnorado e o bloco em `.catch()` é executado.

Em produção retornar conteúdo HTML desta forma é inviável, pois arquivos muito grandes podem levar um bom tempo para carregar. O recomendável é carregar os arquivos HTML no momento da inicialização, e após serem carregados define-se o servidor, que então começa a escutar solicitações em um endereço, sendo mais eficiente e escalonável.<br/>
Neste exemplo, no lugar de carregar o HTML para cada solicitação, ele será carregado apenas uma vez no início, e então a solicitação será retornada com estes dados carregados na inicialização.
```js
const http = require("http");
const fs = require("fs").promises;

let indexFile; /* no 1º momento, está como `undefined`, até que a leitura tenha sido bem sucedida
o que neste caso agora ela contém os dados lidos em `readFile(contents)`
e então ela é devolvida para o cliente na função `createServer()` */

const server = http.createServer((req, response) => {
/*
  com os dados carregados em `indexFile` durante a inicialização do servidor pela função `readFile()`
  agora, quando o servidor receber uma requisição ele não precisa mais ler e carregar os arquivos toda vez
  eliminando este processo de leitura a cada requisição, assim os dados são lidos apenas 1x, antes mesmo da inicialização do serviço

  o escopo abaixo recebe a requisição e em caso de sucesso da função `readFile()` retorna os dados lidos para o cliente que requisitou */
  indexFile ? response.writeHead(200, {"content-type": "text/html"}).end(indexFile): null;
});

// a função abaixo recebe o arquivo e o lê, e logo que a realização dessa leitura acontece com sucesso inicia o serviço do servidor no endereço especificado
fs.readFile(`${__dirname}/index.html`)  // recebe o arquivo para leitura
  .then(contents => {                   // carrega os dados da leitura
    indexFile = contents;               // atribui os dados lidos à variável `indexFile`
    server.listen(3000, "localhost");   // sobe o servidor
  })
  .catch(error => {  // captura possíveis erros na leitura
    console.log(error);
    process.exit(1); // interrompe e encerra a execução do servidor
  });
```

Desta forma, quando o programa é executado, a variável `indexFile` inicialmente vazia passa a reter o conteúdo do arquivo HTML para a inicialização do programa em `.listen()`, e somente após essa leitura o servidor passa a escutar no endereço e realizar o serviço. Quando a leitura é bem sucedida o conteúdo lido é salvo na variável `indexFile` para ser usada durante uma requisição em `.createServer()`, e em seguida ativa o serviço de escuta `listen()` do servidor no endereço definido. O ponto principal é que o arquivo precisa ser carregado **antes** do servidor começar a escutar, desta maneira, a resposta à requisição `createServer()` com certeza retornará uma página HTML, já que para isso a variável `indexFile` não pode estar vazia – mas sim, carregada com o conteúdo lido. Em outras palavras, o servidor só sobe se o arquivo for carregado no programa. Assim também, o tratamento de erros fica mais fácil de ser debugado, logo na falha da leitura do arquivo. Se o arquivo não puder ser carregado, o erro será capturado e exibido no console. Em seguida, o programa é encerrado com a função `exit()` do objeto global `process` sem iniciar o servidor. Desta maneira é possível ver a razão pela qual a leitura do arquivo falhou, resolver o problema e, em seguida, iniciar novamente o servidor.

Normalmente, um servidor trabalha com rotas para atender aos diferentes tipos de requisições solicitadas pelos clientes. Clientes solicitam diferentes tipos de dados, e é isso que o servidor deve atender para retornar corretamente a cada requisição recebida. Estes dados de solicitação por parte do cliente são usados para determinar o que deve ser retornado pelo servidor, usa-se esses dados de solicitações principalmente ao configurar rotas e caminhos diferentes. O que foi feito até agora foi retonar a mesma resposta para toda solicitação recebida, enquanto que, a maioria dos sites e APIs no mercado geralmente possuem mais de 1 **end point**, este ponto de extremidade define no servidor quais dados e serviços devem ser executados e retornados para cada tipo de requisição, permitindo assim uma aplicação com vários recursos.<br/>
Um bom exemplo para isso seria um sistema de gerenciamento de livros que poderia ser usado em uma biblioteca. Esse sistema precisaria gerenciar não apenas os dados de livros, mas também os dados de autores, para facilitar os processos de catalogação e consulta. Embora os dados para livros e autores estejam relacionados, eles são objetos diferentes. Nestes casos, os desenvolvedores normalmente programam diferentes *end points* como uma maneira de indicar aos usuários da API com quais tipos de dados eles estão interagindo.<br/>
O exemplo abaixo contém um servidor criado para uma biblioteca pequena, com o propósito de retornar 2 tipos diferentes de dados no formato JSON. Se um usuário acessar o endereço do servidor em `/books`, ele receberá uma lista de livros, se acessar `/authors`, receberá uma lista de informações do autor. Então este servidor irá retornar os dados de acordo com o end point que o usuário acessar.<br/>
No arquivo a seguir, estarão os dados em JSON a serem enviados para o usuário.
```js
// routes.js
const books = JSON.stringify([
  { title: "The Alchemist", author: "Paulo Coelho", year: 1988 },
  { title: "The Prophet", author: "Kahlil Gibran", year: 1923 }
]);

const authors = JSON.stringify([
  { name: "Paulo Coelho", countryOfBirth: "Brazil", yearOfBirth: 1947 },
  { name: "Kahlil Gibran", countryOfBirth: "Lebanon", yearOfBirth: 1883 }
]);

module.exports = {books, authors};
```
A variável `books` é uma string que contém dados JSON para uma matriz de objetos do tipo livro, onde cada livro tem um título, autor e ano de publicação. Enquanto a variável `authors` também é uma string, mas que contém o JSON para uma matriz de objetos do tipo autor, onde cada autor possui um nome, país de origem e ano de nascimento.<br/>
Com os dados que as respostas retornarão definidos, deve-se adicionar a lógica para retornar as rotas corretas. Para isso, primeiro garantiremos que cada resposta do servidor tenha o cabeçalho `"content-type"` correto, então definimos cada resposta de acordo com cada caso de rota solicitada, retornando o JSON correto de acordo com o caminho da URL que o usuário acessar.
```js
const data = require("./routes"); // importa os dados do arquivo de origem
const http = require("http");

const server = http.createServer((req, res) => {
  res.setHeader("content-type", "application/json"); // define o tipo de dado a ser retornado independente da resposta
  /*
  o objeto `req` contém todos os dados da solicitação do cliente, inclusive qual endpoint acessou a partir da URL do servidor
  o caminho da URL de um objeto de solicitação pode ser obtido através do acesso à sua propriedade `url`

  um switch/case pode ser adicionado para lidar com cada URL e retornar o JSON apropriado para cada caso
  a switch oferece uma maneira de controlar qual código é executado dependendo do valor de um objeto ou expressão JS
  */
  switch(req.url) {
    case "/books":
      res.writeHead(200).end(`${data.books}\n`);
      break;
    case "/authors":
      res.writeHead(200).end(`${data.authors}\n`);
      break;
    default:
      // caso o usuário tente acessar um endpoint não definido essa mensagem será retornada
      res.writeHead(404).end(JSON.stringify({error: "Resource not found."}));
      break;
  }
});

server.listen(3000, "localhost");
```
Manipulando o objeto da requisição com um simples `switch/case` podemos definir qual endpoint retornar ao usuário.

Falando sobre caminhos, outro pacote bem utilizado no Node é o `path`. Este pacote nativo disponibiliza várias funcionalidades úteis para acessar e interagir com o `file system`. Ele possui o `path.sep`, que provê o **caracter separador** de seguimento de caminho `\` no Windows, e `/` no Linux/MacOS, e também o `path.delimiter`, que fornece o **caracter delimitador** de caminho `;` no Windows e `:` no Linux/MacOS. Seus módulos mais usados são:

- **`path.basename()`**: retorna a últuma parte de um caminho. Um 2º parâmetro pode filtrar a extensão do arquivo.
```js
const path = require("path");
const base = "../src/";
const fileName = "package.json";
const file = `${base}${fileName}`

console.log(path.basename(file));         // package.json
console.log(path.basename(file, ".json")) // package
```

- **`path.dirname()`**: retorna parte do diretório de um caminho.
```js
const path = require("path");

console.log(path.dirname(`/home/user/Desktop`));         // /home/user
console.log(path.dirname(`/home/user/Desktop/project`)); // /home/user/Desktop
```

- **`path.extname()`**: retorna a extensão de um caminho.
```js
const path = require("path");

console.log(path.extname(`/home/user/Desktop/project/`));        // ''
console.log(path.extname(`/home/user/Desktop/project/main.js`)); // .js
```

- **`path.isAbsolute()`**: retorna `true` se o caminho for absoluto.
```js
const path = require("path");

console.log(path.isAbsolute(`/home/user/Desktop/project/main.js`)); // true
console.log(path.isAbsolute(`~/Desktop/project/`));                 // false
```

- **`path.join()`**: concatena 2 ou mais partes de um caminho.
```js
const path = require("path");
const name = "raphael"

console.log(path.join('/', 'users', name, 'notes.txt')) // /users/raphael/notes.txt
```

- **`path.normalize()`**: calcula o caminho correto quando ele contêm especificadores relativos como `.`, `..` ou barras duplas.
```js
const path = require("path");

console.log(path.normalize('/users/dev/..//notes.txt')); // /users/notes.txt
```

- **`path.parse()`**: cria um objeto contendo os segmentos que compõe o caminho fornecido.
```js
const path = require("path");

console.log(path.parse("/GitHub/study/README.md"));
// que resulta em:
JSON = {
  root: '/',
  dir: '/GitHub/study',
  base: 'README.md',
  ext: '.md',
  name: 'README'
}
```

- **`path.relative()`**: aceita 2 caminhos como argumentos, retornando o caminho relativo do 1º para o 2º baseando-se no diretório atual.
```js
const path = require("path");

console.log(path.relative("/users/raphael", "/users/raphael/notes.txt"));     // notes.txt
console.log(path.relative("/users/raphael", "/users/raphael/Dev/notes.txt")); // Dev/notes.txt
```

- **`path.resolve()`**: obtém o cálculo do caminho absoluto de um caminho relativo.
```shell
raphael@mach-1:~/Dev  $ node

> require("path").resolve("CONTRIBUTING.md")
'/home/raphael/Dev/CONTRIBUTING.md'
```

Ao especificar um 2º parâmetro, será usado o 1º como base.
```shell
raphael@mach-1:~/Dev  $ node

> require("path").resolve("coding", "README.md")
'/home/raphael/Dev/coding/README.md'
```

Se o 1º parâmetro começar com uma barra, será interpretado como um caminho absoluto.
```shell
raphael@mach-1:/  $ node

> require("path").resolve("/etc", "env.sh")
'/etc/env.sh'
```

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/typescript.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">next</a>