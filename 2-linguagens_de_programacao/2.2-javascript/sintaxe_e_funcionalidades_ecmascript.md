# JAVASCRIPT
 JavaScript é uma linguagem de programação dinâmica, o que significa que é uma linguagem *interpretada*, ou seja o código é interpretado e executado conforme é lido pelo navegador linha a linha assim como o HTML, de *alto nível*, que significa que sua sintaxe é muito familiar a linguagem natural humana e *multiparadigma*, o que demonstra seu poder ao ser possível programar em vários formatos diferentes, **desenvolvida para criar páginas web interativas e dinâmicas**. Ela é responsável por adicionar funcionalidades como **validação de formulários**, **animações**, **manipulação do conteúdo da página** e **resposta a eventos do usuário** em conjunto com HTML e CSS para tornar a experiência na web mais rica. JavaScript é a linguagem de programação mais popular no desenvolvimento Web. Suportada por todos os navegadores, a linguagem é responsável por praticamente qualquer tipo de dinamismo que queiramos em nossas páginas.<br/>
 Visando o potencial da Internet para o público geral e a necessidade de haver uma interação maior do usuário com as páginas, a Netscape, criadora do navegador mais popular do início dos anos 90, de mesmo nome, investiu na criação de uma linguagem para isto. Vindo de uma outra grande empresa de desenvolvimento da época, a OpenWave, estava desenvolvendo um projeto de uma linguagem de script tão poderosa quanto C/C++, mas com curva de aprendizado mais suave, assim surgiu o C--, que então foi rebatizada para ScriptEase. Então em 1995, Brendan Eich enquanto trabalhava na Netscape Communications Corporation, foi contratado para dar continuidade no desenvolvimento do ScriptEase, encubido de criar uma linguagem de script que permitisse dinamizar as páginas do navegador Netscape Navigator. Em apenas 10 dias nasceu a "primeira" nova versão da linguagem, que inicialmente recebeu o nome de `Mocha` e que posteriormente foi renomeada para `LiveScript`, com o objetivo de ser uma linguagem simples e que permitia a execução de scripts contidos nas páginas dentro do próprio navegador. Logo em seguida, aproveitando o crescente sucesso do **Java** que vinha conquistando cada vez mais espaço no mercado de desenvolvimento de aplicações corporativas, a Netscape num acordo com a Sun para alavancar o uso das duas — apesar de serem bastante diferentes em termos de design, funcionamento e objetivos — numa jogada de marketing influenciada pela popularidade da linguagem Java, o nome foi alterado para **`JavaScript`**. A então vice-líder dos navegadores, Microsoft, adicionou ao Internet Explorer o suporte a scripts escritos em VBScript e criou sua própria versão de JavaScript, o **JScript** — além de também começar a desenvolver uma linguagem própria para não perder espaço para o Java, nasceu o C# com os mesmos objetivos, inspirações e princípios do Java. A padronização do JavaScript veio por meio da ECMA International, dando origem à especificação **ECMAScript** — padronização de linguagens de script que define as regras, sintaxe, tipos e comportamentos que as linguagens de script devem seguir para garantir consistência e interoperabilidade entre diferentes ambientes como navegadores e servidores. Em outras palavras, enquanto o JavaScript é a implementação mais conhecida dessa especificação, ECMAScript serve como a base que orienta seu desenvolvimento e evolução, com atualizações periódicas para incorporar novas funcionalidades e melhorias.<br/>
 Em resumo, JavaScript é a linguagem de programação mais popular do mundo e é uma das principais tecnologias da World Wide Web, juntamente com HTML e CSS. Ela possui tipagem dinâmica, orientação a objetos baseada em protótipos e funções de primeira classe. Ela é multi-paradigma e suporta estilos de programação orientados a eventos, funcionais e imperativos.<br/>
 As principais características que destacam o JS são:
 - *Execução local*.
 - *Interpretado*.
 - *Dinâmico em tipagem*.
 - *Verifica valor e tipo*.
 - *Responsivo*.
 - *Case sensitive*.

 O JavaScript, como o próprio nome sugere, é uma linguagem de *scripting*. Uma linguagem de scripting é comumente definida como uma linguagem de programação que permite ao programador controlar uma ou mais aplicações de terceiros. No caso do JavaScript, podemos controlar alguns comportamentos dos navegadores através de trechos de código que são enviados na página HTML.

## CÓDIGO
 Quando o navegador encontra um bloco de código JavaScript, ele geralmente executa na ordem, de cima para baixo. JavaScript é uma linguagem de programação leve e interpretada. O navegador recebe o código JavaScript em sua forma de texto original e executa o script a partir dele. Do ponto de vista técnico, a maioria dos intérpretes modernos de JavaScript realmente usa uma técnica chamada compilação just-in-time para melhorar o desempenho; o código-fonte JavaScript é compilado em um formato binário mais rápido enquanto o script está sendo usado, para que possa ser executado o mais rápido possível. No entanto, o JavaScript ainda é considerado uma linguagem interpretada, pois a compilação é manipulada em tempo de execução, e não antes.<br/>
 No contexto do desenvolvimento web existem termos como *server-side* e *client-side*. Códigos do lado do cliente são executados no computador do usuário — quando uma página web é visualizada, o código do lado do cliente é baixado, executado e exibido pelo navegador. Códigos do lado do servidor, por outro lado, são executados no servidor e o resultado da execução é baixado e exibido no navegador. Exemplos de linguagens do lado do servidor populares incluem PHP, Python, Ruby, e ASP.NET. E JavaScript! JavaScript também pode ser usada como uma linguagem server-side, por exemplo, no popular ambiente Node.js.<br/>
 Há um considerável número de problemas envolvendo o carregamento de scripts na ordem correta. Um problema comum é que todo o HTML de uma página é carregado na ordem em que ele aparece. Se o Javascript estiver sendo usado para manipular o *Document Object Model*, o código não irá funcionar caso o script for carregado e executado antes mesmo dos elementos HTML estarem disponíveis. Nos casos em que o JS é carregado no `head` do documento antes do corpo ser completamente carregado isso irá causar algum erro. Algumas soluções são:

 **DOM**
 ```js
 document.addEventListener("DOMContentLoaded", function() {
   // script
 })
 ```
 Isso é um *event listener*, que ouve e aguarda o disparo do evento `"DOMContentLoaded"` vindo do browser. Evento este que significa que o corpo do HTML está completamente carregado e pronto. **O código JavaScript que estiver dentro desse bloco não será executado até que o evento seja disparado**, portanto, o erro será evitado.

 **async**
 ```html
 <script async src="js/vendor/jquery.js"></script>
 <script async src="js/invoice.js"></script>
 <script async src="js/enrollment.js"></script>
 ```
 Scripts carregados utilizando o atributo `async` irão baixar seu conteúdo sem bloquear a renderização da página, e irão executar imediatamente após o script terminar de ser disponibilizado. Neste modo não há nenhuma garantia de que os scripts carregados irão executar em uma ordem específica, mas com certeza não irão impedir o carregamento do restante da página. **O melhor uso para `async` é quando os scripts de uma página rodam de forma _independente_ entre si.**<br/>
 No exemplo acima, não é garantido que o script `jquery.js` carregará antes ou depois do `invoice.js` e `enrollment.js`. Nesse caso, se alguma função desses scripts dependem de algo vindo de `jquery`, será produzido um erro, pois o `jquery` ainda não foi carregado e definido quando os scipts executaram essa função.<br/>
 async deve ser usado quando houver muitos scripts rodando no background e precisam estar disponíveis o mais rápido possível. Por exemplo, um usuário tem muitos arquivos de dados de um jogo para carregar que serão necessários assim que o jogo iniciar, mas por enquanto, podemos permitir que ele entre e veja a tela de carregamento, a do titulo do jogo e o lobby, sem ser bloqueado pelo carregamento desses scripts.

 **defer**
 ```html
 <script defer src="script.js"></script>
 ```
 Este é um recurso moderno do JS para resolver este problema: trata-se do atributo `defer`, que informa ao browser para continuar renderizando o conteúdo HTML uma vez que a tag `script` foi atingida. Neste caso, ambos *script* e *HTML* irão carregar de forma simultânea e o código irá funcionar. Todos os scripts com o atributo defer irão carregar na ordem que aparecem na página. Os scripts não irão rodar sem que antes todo o conteúdo da página seja carregado, que no caso, é muito útil se os seus scripts dependem de um DOM completamente disponibilizado em tela, como scripts que modificam um elemento por exemplo.

 *_No caso **externo**, não é necessário utilizar o evento `DOMContentLoaded` porque o atributo defer resolve o nosso problema. Não é utilizado `defer` ou `async` como solução para os exemplos **internos** pois funcionam apenas com scripts externos._ `async` e `defer` istruem o browser a baixar os scripts numa *thread* à parte, enquanto o resto da página, ou seja , o DOM, estilos e etc estão sendo baixados e disponibilizados de forma não bloqueante.<br/>
 **Se os scripts precisam rodar imediatamente, sem que dependam de outros para serem executados, use `async`.**<br/>
 **Se os scripts dependem de outros scripts ou do DOM completamente disponível em tela, carregue-os usando `defer` e coloque os elementos `script` na ordem exata que devem ser carregados.**


 **Uma solução antiga para esse problema era colocar o elemento `script` bem no final do `body` antes de seu fechamento. Com isso, os scripts iriam carregar logo após todo o conteúdo HTML. O problema com esse tipo de solução é que o carregamento do `script` seria completamente bloqueado até que todo o conteúdo HTML fosse analisado. Em sites de maior escala, com muitos scripts, essa solução causaria um grande problema de performance e deixaria o site lento.**
 
 Vejamos algumas maneiras para referenciar um trecho de código ou um arquivo.js inteiro em um documento HTML:

### EXTERNAL
 Neste caso, criamos o arquivo e o referenciamos no `head` usando a meta tag **`<script scr="file_path.js"></script>`**, anexando o arquivo à página web. **Se a página possuir referências externas tanto código CSS quanto JS na `head`, é uma boa prática colocar o link CSS _primeiro_, pois é comum que o script se refira a elementos CSS e por isso eles já devem ser carregados na memória quando a execução atinge a ligação ao JS.**
```html
<head>
    <meta charset="UTF-8">
    <title>JavaScript</title>
    <link rel="stylesheet" href="style.css"> <!-- CSS -->
    <script defer src="script.js"></script> <!-- JS -->
</head>
```

 **O mais recomendado é colocar o `script` no final da seção `body`, permitindo assim que todo o conteúdo da página seja exibido na tela primeiro, carregando o script em seguida.**
```html
<head>
    <meta charset="UTF-8">
    <title>JavaScript</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
  <>
    ...
  </>
  <script defer src="script.js"></script>
</body>
```

### INTERNAL
 Entre a tag `script` no documento. A tag `script` pode ser declarada dentro da tag `head` assim como na tag `body`, mas devemos ficar atentos, porque o código é lido imediatamente dentro do navegador. Seguindo a lógica da declaração externa, quando declarado na tag `head`, o script trava o processamento da página até ser carregado e executado, isso pode ser um problema em casos em que um script leve um tepo maior para finalizar sua execução ou que exija alguma interação com o usuário. Seria mais interessante nestes casos carregar a página completamente antes da execução do script, tanto por questões de performance quanto de experiência do usuário. Para isso basta usar a tag `script` logo antes do fechamento de `body`. **Se a página possuir tanto código CSS quanto JS na `head`, é uma boa prática colocar o trecho CSS _primeiro_, pois é comum que o script se refira a elementos CSS e por isso eles já devem ser carregados na memória quando a execução atinge a parte JS.**
```html
<head>
    <meta charset="UTF-8">
    <title>JavaScript</title>

    <!-- CSS -->
    <style>
        .css {
            property: value;
        }
    </style>

    <!-- JS -->
    <script>
        alert("Hello world!");
    </script>
</head>
<body>
  <h1>JavaScript</h1>
    <script>
        alert("JS");
    </script>
</body>
```

### IN-LINE
 Também é possível incluir *script diretamente nas tags*, basta declarar a função que desejamos usar:
```html
<p onClick="alert('Alerta de clique no parágrafo');">Parágrafo de texto.</p>
```

## ESTRUTURAS
 Vejamos como podemos escrever nossos códigos em JS e quais as diferentes maneiras de lidar com os dados.

### AUTOMATIC SEMICOLON INSERTION (ASI)
É possível omitir o ponto e vírgula `;` no final de cada declaração. A omissão de ponto e vírgula funciona no JavaScript devido ao mecanismo chamado automatic semicolon insertion (ASI).

### COMENTÁRIOS
 Para comentar uma linha de código usa-se a seguinte sintaxe: `// comentário`. Já para comentar um bloco inteiro usa-se: `/* trecho comentado */`.
 ```js
  // linha de comentário

  /* este trecho inteiro
  está comentado */
 ```

### TIPOS DE DADOS BASE
O JavaScript também possui grande tolerância a erros, uma vez que conversões automáticas são realizadas durante operações. Por ser uma linguagem de ***tipagem dinâmica***, o JavaScript tem apenas **3 tipos de dados básicos**. Por conta dessa característica, uma variável pode receber uma **`string`** em um determinado momento, e em outro, um dado tipo **`number`**. Vejamos:
 1. **STRINGS**<br/>
 Caracteres, alfanuméricos e textos em geral (como palavras e frases). Valores de Strings são imutáveis, logo, se uma variável for alterada com algum método, aquela alteração só existe naquele momento, ao utilizar novamente a variável (sem o método) ela informará o seu valor original. Para utilizar a alteração realizada é necessário armazenar o retorno do método em outa variável. **Toda string é um array de caracteres.**
 2. **NUMBERS**<br/>
 Números *inteiros* (**`int`**) ou *decimais* (**`float`** e **`double`**). Assim como String, Numbers são imutáveis, sendo necessário também armazenar o retorno em outra variável.
 3. **BOOLEANS**<br/>
 Com apenas **2 valores possíveis**: **`true`** ou **`false`**.

O conjunto de tipos no JS consiste em `primitives values` e `objects`, onde os **valores primitivos** *são dados imutáveis representados diretamente no nível mais baixo da linguagem*.
- **valores primitivos**
  - **`boolean`**: representa uma entidade lógica que pode ter 2 valores: `true` || `false`.
  - **`null`**: representa uma referencia que aponta de maneira intencional para um objeto ou endereço de memória inválido ou inexistente, ou seja, contém um valor *nulo*, *vazio*. Este é um valor literal, e não uma propriedade do objeto `global` — como `undefined` pode ser.
  - **`undefined`**: uma variável que ainda não recebeu um valor possui o valor `undefined`, que representa um valor indefinido. É uma propriedade do objeto `global`, ou seja, é uma variável no escopo global — o valor inicial de `undefined` é o valor primitivo `undefined`; mas por convenção deve ser considerado uma propriedade não configurável e somente leitura — mesmo quando este não for o caso, deve-se evitar que seja sobrescrito. Uma vez que ele não é uma palavra reservada, pode ser usado como um identificador em qualquer escopo que não seja o escopo global, mas para fins de comparação `==`, `===` && `typeof`, essa atribuição de nome de variável deve ser evitada.
  - **`number`**: valor de formato binário de 64 bits de precisão dupla, capaz de armazenar números de ponto flutante e inteiros positivos e negativos. Embora um número represente apenas seu valor, o JS fornece operadores `bitwise`, que podem ser usados para representar vários valores booleanos em um único número usando mascaramento de bits, porém isso é considerado uma má prática pois tornam o código mais complexo de ler, entender e manter, e existem outros meios mais precisos, simples e seguros para representar conjuntos de booleanos como uma matriz de booleanos ou objetos com valores booleanos atribuídos a propriedades nomeadas por exemplo. Pode ser necessário usar estas técnicas em ambientes muito restritos como ao tentar lidar com limitações de armazenamento local ou em casos extremos onde cada bit na rede conta, mas só devem ser consideradas como última memdida para otimizar o tamanho.
  - **`bigInt`**: representa números inteiros com precisão arbitrária, sendo útil para armazenar e operar com segurança grandes números inteiros, mesmo além do limite de números inteiros seguros. Um `bigInt` é criado anexando `n` ao final de um inteiro `const N = 123456789012345678901234567890n;`, ou chamando o construtor `const N = BigInt("123456789012345678901234567890")`. É possível obter o maior valor seguro através da constante `Number.MAX_SAFE_INTEGER`, e com a introdução do `bigInt` é possível operar com números além do valor seguro. É possível usar os operadores matemáticos com BigInts como com Numbers, porém um BigInt não é estritamente igual a um Number, por isso não se deve misturar diretamente um BigInt com um Number em operações matemáticas `BigInt + Number` sem antes realizar a conversão dos tipos.
  - **`Nan`**: valor único, não sendo igual a si mesmo, resultado de operações aritméticas que não podem ser expressas como um número. Propriedade do objeto `global`, seu valor inicial é o mesmo valor de `Number.NaN`, considerado uma propriedade somente de leitura e não configurável, sempre evitando sobrescrevê-lo.
  - **`string`**: representa dados textuais, sendo um *conjunto de elementos* de valores inteiros sem sinal de 16 bits, onde cada elemento ocupa uma posição na String iniciando em índice 0 e tem seu comprimento de acordo com o número de elementos atribuídos. São imutáveis, o que significa que uma vez criadas são é possível modificá-las, aapenas é possível criar uma nova string com base em uma operação na string original.
  - **`symbol`**: também conhecido como *átomo*, é um valor primitivo único e imutável usado como chave de uma propriedade estática `var sym1 = Symbol("something");`.

### DECLARAÇÕES
 Chamamos cada _comando_ que escrevemos de **declaração**, e, apesar de o JS não exigir, como **boa prática de código limpo** *cada linha de comando deve ser fechada com `;`*.
 ```js
 console.log("Esta é uma declaração.");
 ```

 O JavaScript trabalha por natureza com o conceito de objetos, por isso, alguns objetos já existem por padrão, como o `console` no exemplo anterior. Outro objeto muito utilizado no desenvolvimento de scripts para os navegadores é o `document` — que neste cenário é o objeto _master_. A partir da declaração do objeto, é possível acessar os eventos, os métodos, valores e quaisquer outras alteraçãoes necessárias a serem feitas no documento. Com isso, tem-se a manipulação do documento, através do **DOM**. O exemplo a seguir demonstra como adicionar dados no documento HTML através do JS — e da manipulação do DOM:
```html
<!DOCTYPE html>
<html lang="pt-BR">
  <header>
    <title>Manipulando Objetos do Documento</title>
    <meta charset="UTF-8"/>
  </header>
  <body>
    <h1>Olá mundo!</h1>
    <script>
       alert(`Olá HTML!`);
       document.write(`Olá JavaScript! Exibido em: ${Date()}`);
    </script>
  </body>
</html>
```

#### HOISTING
 É o comportamento em que as declarações, seja de variáveis, funções, classes e etc, são *"elevadas"* **para o topo do seu respectivo escopo, seja global ou de função antes que o código seja executado**.<br/>
 Isso significa que, mesmo que a declaração de uma variável ou função seja realizada *mais abaixo* no código, o interpretador *"sabe"* que ela existe desde o início do escopo.<br/>
 **Por exemplo, uma declaração usando `var` é *hoisted* e a variável é automaticamente inicializada com o valor `undefined` até o ponto em que sua atribução é executada.**
 ```js
 console.log(x); // Imprime: undefined
 var x = 10;
 console.log(x); // Imprime: 10
 ```

 No caso de `let` e `const`, embora a declaração também seja *"elevada"* – ou seja, o interpretados reconhece a existência da variável, **elas não são inicializadas até que o fluxo de execução atinja a linha de declaração**. Isso gera o que chamados de *zona morta temporal (temporal dead zone)*, onde o acesso à variável antes da sua inicialização gera um erro:
 ```js
 console.log(y); // ReferenceError: Cannot access 'y' before initialization
 let y = 20;
 ```

 Em resumo, *hoisting* é o processo pelo qual as declarações são movidas para o topo do seu escopo durante a fase de intepretação, o que pode afetar a maneira *como* e *quando* as variáveis e funções estão disponíveis no código. Essa característica é particularmente importante ao usar `var`, já que permite o acesso à variável antes de sua linha de declaração – embora seu valor seja `undefined` até ser atribuído, enquanto `let` e `const` protegem a posição alocada contra entre acesso prematuro, ajudando a evitar erros inesperados.

#### STRICT MODE
 Em JS existe um modo que, quando ativado, nos permite ser mais restritivos em nossas declarações. Ele ajuda a detectar erros comuns e práticas de programação que podem levar a comportamentos inesperados, ou seja, ele faz com que alguns *"erros silenciosos"* se tornem **explícitos**, lançando exceções e impedindo certas operações que podem causar bugs difíceis de identificar.
 - Para ativar este modo, podemos declarar no início do arquivo JS para que atinja todo o código:
 ```js
 'use strict';
 ```
 - Ou podemos colocar essa diretiva dentro de uma função para aplicar o modo estrito **apenas ao seu escopo**:
 ```js
 function minhaFuncao() {
   "use strict";
   // aqui o código está em strict mode
   y = 20; // Isso gerará um erro, pois 'y' não foi declarado.
 }

 function outraFuncao() {
   // aqui o código NÃO está em strict mode
   z = 30; // Essa linha não dispara erro (embora não seja uma boa prática).
 }
 ```

 Sem este modo ativo, poderíamos definir uma variável com a seguinte sintaxe:
 ```js
 num = 5;
 ```

 Com o modo ativo, somos **obrigados** a definir o *escopo* da variável:
 ```js
 var num = 5;
 ```

#### DECLARANDO VARIÁVEIS
 Por definição, uma variável é um espaço na memória do computador onde um valor será armazenado referenciado por um identificador, tal este que pode mudar durante a execução do programa.<br/>
 Um identificador é uma sequência de caracteres no código, que identifica uma variável, função, ou propriedade. Em JavaScript, identificadores podem conter somente caracteres alfanuméricos, ou `$` ou `_`, e não podem iniciar com um dígito.<br/>
 O JS é uma linguagem dinâmica com tipos dinâmicos, o que significa que as variáveis não estão diretamente associadas a nenhum tipo de valor específico, e qualquer varivável pode receber e reatribuir valores de todos os tipos.<br/>
 A sintaxe básica da declaração é a seguinte:
 ```js
 /* var ≠ let

 var = escopo global
 let = escopo local

  ⬐ declaração */
 let        nick_name = "Raphael"; /* <- "propriedade"
  identificador ⬏     ⬑ atribuição */

 // const = obrigatório atribuição inicial, valor atribuído é imutável
 const alert = "!Alert:";
 ```

 Ao definirmos nomes de variáveis, existem algumas convenções que ajudam a tornar o código mais limpo e organizado, vejamos alguns estilos de **naming conventions**:
| Estilo                   | Exemplo                         | Onde é mais usado                         |
|--------------------------|---------------------------------|-------------------------------------------|
| **camelCase**            | `minhaVariavelBonita`           | JavaScript (variáveis, funções), Java     |
| **PascalCase**           | `MinhaClasseImportante`         | JavaScript (classes), C#, .NET            |
| **kebab-case**           | `minha-variavel-bonita`         | URLs, nomes de arquivos, HTML (atributos) |
| **SCREAMING_SNAKE_CASE** | `VARIAVEL_CONSTANTE`            | Constantes (C, Python, JS, etc.)          |
| **snake_case**           | `minha_variavel_bonita`         | Python, C (variáveis, funções), configs   |

Quando usar cada um vai depender do tipo de projeto que está sendo desenvolvido. O `camelCase` é mais comumente usado no JavaScript para declaração de **variáveis**, **funções**, **argumentos** e o `PascalCase` para: **classes**, **construtores**, **tipos (TypeScript)**.<br/>
Para **constantes globais**, **valores que não mudam nunca** usa-se o `SCREAMING_SNAKE_CASE`.
```js
// camelCase
let precoTotal = 10.5;
function calcularPrecoFinal(valorProduto) {
  return valorProduto * 1.1;
}

// PascalCase
class Pessoa {
  constructor(nome) {
    this.nome = nome;
  }
}

// SCREAMING_SNAKE_CASE
const PI = 3.14;
const API_URL = "https://exemplo.com";
```

O `kebab-case` **não permitido como nome de variável em JS**, mas é muito usado em **atributos HTML**, **CSS**, **URLs**, **nomes de arquivos** e etc.
```html
<style>
  /* o css usa o padrão BEMCSS, que utiliza uma estrutura `bloco__elemento--modificador`
  que é composta de `double snake__case` e `double kebab--case`
  */
  .form__botao--editar {
    /* ... */
  }
</style>

<a href="file-path.ext">File</a>
<button data-user-id="1" class="form__button--edit">Edit</button>
```

O `snake_case` é mais comum em: **Python**, **bancos de dados**, **nomes de arquivos**, **APIs**. Usado para nomear funções e variáveis em Python, colunas SQL, etc.

```python
def calcular_preco_final(valor_produto):
    return valor_produto * 1.1
```

Em resumo, essas são convenções que ajudam a facilitar a legibilidade e manutenção do código, e junto com outras técnicas e padrões de desenvolvimento tornam a escrita e leitura muito mais inteligível.
- **JavaScript**: mistura `camelCase` e `PascalCase`.
- **Python**: `snake_case` é a convenção oficial (PEP8).
- **Rust / Go**: `snake_case` para quase tudo.
- **HTML / CSS**: `kebab-case` em atributos e seletores.
- **React props**: `camelCase` no JSX (`onClick`, `className`).
- **JSON**: geralmente `snake_case` ou `camelCase` (depende da API).

Além disso, também é uma boa prática de **Clean Code** a adoção descritiva de nomes de variáveis e funções, para aumentar a facilidade do entendimento da lógica do código.

1. **Pelo fato do inglês ler a "língua global", é de bom praste que todo o script seja escrito em inglês**, afinal até as declarações da linguagem de programação usam inglês (**for**, **while**, **if/else**, **Promise**, **Object**, **then/catch**, **try/finally** e etc).

2. **Ser descritivo e preciso** evitando nomes genérios como `data`, `date`, `info` e etc.
```js
// ❌ Ruim
const d = new Date();
let xpto;

// ✅ Melhor
const actualDate = new Date();
let orderStatus;
```

3. **Nomeie com base no papel ou objetivo**, _usando VERBOS (AÇÕES) para FUNÇÕES_ e _SUBSTANTIVOS (CARACTERÍSTICAS) para VARIÁVEIS_.
```js
let quantityOfProducts = 10;
let totalPrice = 250.50;

function calculateDiscount(price, percentage) {
  return price * (1 - percentage);
}
function searchUserById(id) { ... }
function calculateAverage(grades) { ... }
```

4. **Para booleanos usar nomes que começam com `is`, `has`, `can` e `should`.**
```js
let isActive = true;
let hasPermission = false;
let shouldUpdate = true;
```

5. **Evitar abreviações**, pois dificultam a leitura e manutenção do código.
```js
// ❌ Ruim
let qt = 5;

// ✅ Melhor
let quantity = 5;
```

6. **Evitar ambiguidade** usando nomes que respondam **por quê**, **o que** e **como**.
```js
// ❌ Ambíguo
function update(x) {
  // atualizar o quê?
}

// ✅ Claro
function updateOrderStatus(orderId, newStatus) {
  // agora sabemos exatamente o que está sendo feito
}
```

7. **Evitar contextos desnecessários**, se o nome da variável já está dentro de um contexto, não o repita.
```js
// ❌ Ruim
const cart = {
  itemsCart: [],
  totalCart: 0
};

// ✅ Melhor
const cart = {
  items: [],
  total: 0
};
```

8. **Use apenas 1 padrão de estilo de escrita**, no JS por exemplo usa-se **camelCase** para variáveis e funções e **SCREAMING_SNAKE_CASE** para constantes.
```js
const DISCOUNT
let discountedPrice;
function calculateFinalPrice() {}
```
##### ESCOPO
 Em questão de escopo e manipulação, as variáveis no JS são declaradas de 2 maneiras:

 1. **`var`**: **escopo GLOBAL**<br/>
 Define uma variável global, independentemente do escopo do bloco onde foram declaradas. *Essas variáveis estão disponíveis para **TODOS** os elementos do código.* Podemos acessá-las de qualquer lugar do script.
 ```js
 var num = 5;
 console.log(num); // num == 5

 if(true) {
  var num = 10;
  console.log(num); //num == 10
 }

 console.log(num); // num == 10  <-
 ```

 2. **`let`**: **escopo LOCAL**<br/>
 Permite declarar variáveis limitando seu escopo ao bloco ou declaração onde estão localizadas. *Variáveis tipo **`let`** só podem ser utilizadas a partir de funções, condicionantes ou loops dentro do mesmo escopo.* Ou seja, podemos acessá-las apenas dentro do escopo que foram definidas, dentro da própria função ou de funções aninhadas em níveis mais altos do que a função anterior, fazendo com que *só possam ser vistas **de dentro para fora***, nunca de fora para dentro da função.
 ```js
 let num = 5;
 console.log(num); // num == 5

 if(true) {
  let num = 10;
  console.log(num); //num == 10 <-
 }

 console.log(num); // num == 5 <-
 ```

**`$`**
A comunidade de desenvolvedores costuma usar **`$` como uma convenção para certas finalidades** *para tornar o código mais organizado e intuitivo*. Como por exemplo:

1. **Variáveis que armazenam elementos do DOM** (exemplo do jQuery), isso ajuda a identificar rapidamente que a variável se refere a um **elemento da página**.:
```js
var $botao = document.querySelector("#botao");
```

2. **Uso com jQuery** (que usa `$` como identificador da biblioteca):
```js
var $div = $("#minhaDiv"); // jQuery selecionando um elemento
```

3. **Marcador para variáveis temporárias ou auxiliares**:
```js
var $temp = 42; // variável temporária para processamento
```

4. **Prefixo para distinguir variáveis específicas**:
```js
var $config = { tema: "escuro", modo: "automático" };
```

**`_`**
Já o `_` é muito usado para:

1. **Variáveis privadas ou internas** que não devem ser acessadas de fora (substituído por `#`).
```js
class Pessoa {
  constructor(nome) {
    this._nome = nome; // convenção = "privado" / porém não é privado de verdade
  }

  get Nome() {
    return this._nome;
  }
}
```

2. **Sozinho quando se quer ignorar um parâmetro**, simulando um campo em branco.
```js
// simulando um map onde só nos interessa o índice
const resultado = ["a", "b", "c"].map((_, index) => {
  return `Item ${index}`;
});

console.log(resultado);
// ["Item 0", "Item 1", "Item 2"]
```

3. **Usado em bibliotecas e palavras reservadas**, algumas libs usam `_` como nome de objeto principal, e algumas palavras reservadas no JS também possuem `_` inserido.
```js
 let pessoa = {
   nome: "Raphael",
   idade: 30
 };

 // o JS realiza a seguinte conversão:
 pessoa.__proto__ === Object.prototype; // true
```

##### POPULANDO VARIÁVEIS
 Podemos tanto declarar uma **uma variável _vazia¹_ e atribuir-lhe um valor durante o tempo de execução do programa** quanto **variável _inicializada²_**.
 ```js
 // 1
 var name;
 name = "Raphael";

 // 2
 var msg = `Welcome ${name}`;
 ```

###### REATRIBUIÇÃO
 Para modificar uma variável já declarada ou com valor atribuído, basta escrevermos seu *identificador* e o valor que queremos sobrescrever:
 ```js
 var num = 10;
 num = 5;
 ```

 O JS possui uma tipagem fraca, e isso permite a conversão implícita de tipo quando uma operação envolve tipos incompatíveis.
 ```js
 const n = 1;
 const n_string = n + '0';
 console.log(n_string); // 10

 let tmp = 1;
 tmp = 'a';
 console.log(tmp); // a
 ```

 Coerções implícitas são muito convenientes, mas podem ser uma arma em potencial se uma conversão não prevista for feita, por isso, para `symbol`s e `bigInt`s essa conversão de tipo implícita está desativada.

###### TRABALHANDO STRINGS
 Qualquer valor entre aspas duplas `"value"` ou simples `'value'` atribuído a uma variável é considerado uma `string`, mesmo que o valor seja um número.<br/>
 Uma boa prática é usar **aspas duplas `""`** *para palavras e frases*, e **aspas imples `''`** *para caracteres*.
 ```js
 var num1 = 9;   // int
 var num2 = '9'; // char
 var num3 = "10" // string
 ```

 Em casos onde existe a necessidade de utilizar diferentes aspas na mesma string, deve-se fazer a abertura e fechamento com um tipo e usar dentro dessa o outro.
 ```js
 var saudacao = 'Olá "Usuário", como gostaria de ser chamado?';
 ```

 Um ponto que o desenvolvedor deve estar sempre atento ao trabalhar com `strings` é que, ao concatená-las com valores numéricos, estes valores passam a ser considerados TODOS como `strings`:
 ```js
 var x = '5';
 console.log(x + 10); // "510": string
 ```

**CARACTERES DE ESCAPE**
Strings possuem um tipo especial de declaração para problemas com caracteres especiais, os chamados **caracteres de escape**. Os caracteres de escape são usados para representar caracteres especiais dentro de strings, como quebra de linha, tabulação, aspas, entre outros.

| Código   | Descrição                                                |
|----------|----------------------------------------------------------|
| `\'`     | Aspas simples dentro de uma string com aspas simples `'` |
| `\"`     | Aspas duplas dentro de uma string com aspas duplas `"`   |
| `\\`     | Barra invertida `\` dentro da string                     |
| `\n`     | Nova linha (quebra de linha)                             |
| `\r`     | Retorno de carro (usado em alguns sistemas)              |
| `\t`     | Tabulação (Tab)                                          |
| `\b`     | Backspace                                                |
| `\f`     | Alimentação de formulário (pouco usado)                  |
| `\uXXXX` | Caracter Unicode (ex: `\u00A9` → `©`)                    |

- **Usando aspas dentro de strings:**  
```js
console.log('I\'m a developer!');  // Saída: I'm a developer!
console.log("He said: \"Hello!\""); // Saída: He said: "Hello!"
```

- **Quebra de linha (`\n`) e tabulação (`\t`)**  
```js
console.log("Linha 1\nLinha 2");  
// Saída:
// Linha 1
// Linha 2

console.log("Nome:\tRaphael");  
// Saída: Nome:    Raphael
```

- **Caracter de Escape (`\\`)**  
```js
console.log("C:\\Users\\Raphael");
// Saída: C:\Users\Raphael
```

- **Caracteres Unicode (`\uXXXX`)**  
```js
console.log("\u00A9 2025 Todos os direitos reservados.");
// Saída: © 2025 Todos os direitos reservados.
```

**CONCATENAÇÃO**<br/>
 Para exibirmos dados no documento, existem 3 formas de *concatenação de `strings`*. São elas:

 1. **Template Literals `texto ${variavel}`**<br/>
 *Avalia a expressão dentro de `${}` primeiro e então monta a string final.*<br/>
 Ideal para concatenar variáveis ou expressões dentro de strings de forma legível e clara, especialmente quando você tem mais de uma variável ou uma expressão complexa.<br/>
 Dentro da string, o `${nick_name}` será interpretado primeiro, ou seja, a variável `nick_name` será acessada antes da concatenação com a string `"Welcome "`.
 ```js
 let nick_name = "Raphael";

 console.log(`Welcome ${nick_name}`);
 ```

 2. **Operador de Concatenação `"texto " + variavel`**<br/>
 *Avalia os operandos antes de concatená-los.*<br/>
 O operador `+` é usado para juntar `strings` e `values`. O JavaScript converte automaticamente o valor de `nick_name` para uma string e concatena com `"Welcome "`.<br/>
 O operador `+` executa a concatenação após a conversão do valor de `nick_name` para string. Ou seja, o valor de `nick_name` é acessado primeiro, e depois a `string` `"Welcome "` é concatenada.
 ```js
 let nick_name = "Raphael";

 console.log("Welcome " + nick_name);

 /* deve-se sempre estar atento ao realizar concatenações dessa manenira
 pois podem surgir resultados inesperados */
 var num1 = 2;
 var num2 = 3;
 var nome = "Número"

 // Exemplo 1:
 console.log(num1 + nome + num2); // imprime 2Número3

 // Exemplo 2:
 console.log(num1 + num2 + nome); // imprime 5Número

 // Exemplo 3:
 console.log(nome + num1 + num2); // imprime Número23

 // Exemplo 4:
 console.log(nome + (num1 + num2)); // imprime Número5

 // Exemplo 5:
 console.log(nome + num1 * num2); // imprime Número6
 // a multiplicação tem precedência

 // O operador de atribuição encurtado `+=` também pode ser utilizado para concatenar strings.
 var string = "alfa";
 string += "beto"; // É avaliada como "alfabeto" e atribui este valor a minhastring.
 ```

 3. **Vírgula `"texto ", variavel`**<br/>
 *Ideal para quando você deseja imprimir múltiplos valores em vez de concatená-los em uma única string.*<br/>
 Nesse caso, a vírgula *não faz* uma concatenação de `strings`, mas sim imprime os dois valores (`"Welcome "` e `nick_name`) separados por um espaço — comportamento padrão do `console.log()`.<br/>
 O JavaScript imprime os argumentos passados para `console.log()` de forma separada na ordem em que estão, sem concatená-los explicitamente.
 ```js
 let nick_name = "Raphael";

 console.log("Welcome ", nick_name);
 ```

 4. **Tagged Template Strings**<br/>
 Tagged Template Strings são **template strings** _com uma função personalizada associada a elas_. Passa-se uma string com interpolações como ``` tag`texto ${valor}` ```, e a função `tag` recebe essa string dividida e os valores já processados, podendo assim manipular a saída como desejar.
 ```js
 function destaque(strings, ...values) {
   return strings.reduce((resultado, parte, i) => {
     return resultado + parte + (values[i] ? `<b>${values[i]}</b>` : "");
   }, "");
 }

 let nome = "Raphael", idade = 27;
 let frase = destaque`Olá, meu nome é ${nome} e tenho ${idade} anos.`;

 console.log(frase); // Resultado: Olá, meu nome é <b>Raphael</b> e tenho <b>27</b> anos.
 ```

 Então, quando fazemos:
 ```js
 let nome = "Raphael";
 let idade = 27;

 destaque`Olá, meu nome é ${nome} e tenho ${idade} anos.`;
 ```

 O JS está na verdade realizando:
 ```js
 destaque(["Olá, meu nome é ", " e tenho ", " anos."], "Raphael", 27);
 ```

 Ou seja:
 - `strings`: um array com as partes fixas da frase<br/>
 `["Olá, meu nome é ", " e tenho ", " anos."]`
 - `...values`: um array com os valores dentro de `${...}`
 `["Raphael", 27]`

 **A função então junta cada pedaço fixo (`parte`) da string com o valor interpolado `values[i]`**, então os coloca dentro da tag HTML `b`.

 Resumindo, o template tag `destaque` recebe `strings` que são as partes fixas da frase e `values` que são os *valores* em `${}` e usa a lógica para como montar a frase final na função, assim sendo útil para formatação de texto, proteger o HTML e URLs, tradução, geração de código e etc.

 5. **Strings Raw**<br/>
 Quando utilizamos *tagged template strings*, o 1º argumento que a função recebe é o objeto `strings`, que tem a propriedade especial `raw`, que existe o conteúdo da string **exatamente** como foi digitado no código, sem interpretar sequências de escape `\n`, `\t` e etc. Muito utilizado para criar strings com barras invertidas sem precisar escapá-las 2 vezes, além de gerar regex, strings JSON, caminhos de arquivos, códigos gerados dinâmicamente e etc.
 ```js
 // sintaxe
 function qualquer(strings, ...valores) {
   console.log(strings.raw);  // Acesso direto à string literal crua
 }

 // exemplo simples
 let nome = "Raphael";
 let rawString = String.raw`Olá\n${nome}!`;

 console.log(rawString); // Resultado: Olá\nRaphael!

 // exemplo com tagged template string
 function tag(strings, ...values) {
   return strings.raw[0];
 }

 let frase = tagstring text line 1 \n string text line 2; // "string text line 1 \\n string text line 2"
 let hi = String.rawHi\n${2 + 3}!; // "Hi\n5!"
 console.log(${frase}\n${hi})
 ```

**MODELOS DE STRINGS**<br/>
 Podemos usar o **`DOM`** para substituir valores dentro de uma `string` sem a necessidade de concatená-las, usando a *interpolação de `strings`*:
 ```js
 var name = "Raphael";
 var nick_name = "Rael";
 var info = `<h3>User: ${name}</h3><h3>Nick: ${nick_name}</h3>`;
 var fullName = `${name} ${nick_name}`;

 console.log(`Welcome ${nick_name}`);
 console.log(`${alert} user ${nick_name} accessed the system`);
 ```

**BOAS PRÁTICAS**<br/>
 *Uma boa prática é **sempre declarar como `strings` números que não vão ser operados matematicamente**, como cpf, número de telefone ou CEP por exemplo.*

##### IDENTIFICANDO TIPO DE VARIÁVEL
O comando **`typeof(var)`** ou **`typeof var`** nos diz o tipo de uma variável retornando uma string com a indicação do tipo do operando.
```js
var somaString = new Function("5 + 2");
var forma = "quadrado";
var tamanho = 1;
var hoje = new Date();

typeof somaString;            // retorna "function"
typeof forma;                 // retorna "string"
typeof tamanho;               // retorna "number"
typeof hoje;                  // retorna "object"
typeof naoExiste;             // retorna "undefined"
typeof true;                  // retorna "boolean"
typeof null;                  // retorna "object"
typeof 62;                    // retorna "number"
typeof "Olá mundo";           // retorna "string"
typeof document.lastModified; // retorna "string"
typeof window.length;         // retorna "number"
typeof Math.LN2;              // retorna "number"
typeof blur;                  // retorna "function"
typeof eval;                  // retorna "function"
typeof parseInt;              // retorna "function"
typeof forma.split;           // retorna "function"
typeof Date;                  // retorna "function"
typeof Function;              // retorna "function"
typeof Math;                  // retorna "object"
typeof Option;                // retorna "function"
typeof String;                // retorna "function"
```

##### WRAPPER
Um **wrapper** é bascicamente um objeto que _envolve_ um valor primitivo para dar funcionalidades extras, como métodos e propriedades. Um suco por exemplo, em si é um valor primitivo, já a garrafa que contém o suco é o _pacote_ que permite armazenar e carregar o suco de diferentes maneiras e para diferentes lugares.<br/>
No JS, os tipos primitivos como `string`, `number`, `boolean` e etc, naturalmente não têm métodos, mas o JavaScript cria automaticamente um wrapper temporário quando métodos são usados nestes tipos. Como por exemplo no caso de `var casting` de strings, mesmo elas sendo um tipo primitivo é possível usar métodos para manipulá-las, isso porque o JS realiza a conversão automaticamente:
```js
// exemplo de uso comum
let nome = "Raphael";
let nomeMaiusculo = nome.toUpperCase();
console.log(nomeMaiusculo) // RAPHAEL

// o que realmente acontece
let nome = new String("Raphael"); // é criado um objeto nome na classe String
nome.toUpperCase(); // somente então é possível utilizar métodos
console.log(nomeMaiusculo) // RAPHAEL
```

**Tipos de wrappers:**
| Primitivo | Wrapper Object |
|-----------|----------------|
| `string`  | `String`       |
| `number`  | `Number`       |
| `boolean` | `Boolean`      |
| `symbol`  | `Symbol`       |
| `bigint`  | `BigInt`       |

##### CASTING
 **Var casting (ou type casting)** é o processo de converter um valor de um tipo de dado para outro em uma linguagem de programação. Isso é útil quando precisamos tratar dados de diferentes tipos em uma operação.

###### TIPOS DE CASTING
 1. **Casting Implícito (Automatic Type Conversion)**<br/>
 Ocorre automaticamente quando um tipo menor é convertido para um tipo maior, por exemplo: `int` para `float`, sem perda de dados.
 2. **Casting Explícito (Explicit Type Conversion)**<br/>
 Feito manualmente pelo programador usando funções específicas, e por conta do `truncate` pode causar perda de dados por exemplo: `float` para `int`.

 Existem vários meios para manipular variáveis. Vejamos algumas opções:

- **`string[]`**<br/>
É possível retornar qualquer caractere dentro de uma string usando a notação colchete, basta incluir um par ao final do nome da variável e assim como nos arrays indicar o índice da posição que deseja retornar, porém não é possível alterar seu valor dessa maneira pelo fato de que strings são imutáveis, apenas reatribuídas:
```js
var user = "Rael";
console.log(user[0]) // Saída: R
user[0] = "G";
console.log(user) // Saída: Rael
console.log(user[0]) // Saída: R

user = "Gael" // reatribuição
console.log(user) // Saída: Gael
```

- **`length`**<br/>
Retorna o tamanho do valor contido na variável.
   - Calcula a *extensão de um texto*, ou seja, a quantidade de caracteres que ele contém.
   - Se usado em um **`array`** retorna o *número de elementos contidos nele*.
   ```js
   const texto = "Olá, Mundo!";
   const vetor = ["valor 1", "valor 2", "valor 3"];
   console.log(texto.length); // Saída: 11
   console.log(vetor.length); // Saída: 3
   ```

- **`Number()`**<br/>
Converte o valor inteiro para um número, aplicando as regras internas de conversão do algoritmo *`ToNumber`*. Se o valor não for um número válido por completo, ou seja, se houver caracteres “extras” que não se encaixem na notação numérica, retorna um resultado **`NaN`** — *Not a Number*.
```js
var num1 = 5;
var num2 = "10";

result = num1 + Number(num2); // result == 15

Number("10.5");    // retorna 10.5
Number("  10  ");  // retorna 10 — os espaços são ignorados
Number("10 anos"); // retorna NaN, pois a string inteira não é um número
Number(true);      // retorna 1; Number(false) retorna 0
```

- **`parseInt()`**<br/>
Examina a string do início e converte os dígitos encontrados até que um caractere inválido seja encontrado. **Se o primeiro caractere não for numérico — após ignorar espaços, retorna `NaN`. Mesmo que a parte analisada contenha uma parte decimal, o retorno é sempre um inteiro, e a parte decimal depois do ponto é descartada.** *Permite informar a base numérica — por exemplo, 10 para decimal, 16 para hexadecimal — como segundo parâmetro.*
```js
parseInt("10.5");       // retorna 10
parseInt("10 anos");    // retorna 10
parseInt("   123abc");  // retorna 123
parseInt("abc123");     // retorna NaN — não começa com dígitos
parseInt("0xF");        // retorna 15 — interpretado como hexadecimal
```

- **`parseFloat()`**<br/>
Funciona de forma similar ao `parseInt()` ao "ler" a string do início e interromper na primeira ocorrência de um caractere inválido para um número, **mas retorna um valor de ponto flutuante**. *Se a parte numérica da string contém um ponto decimal, o valor retornado preserva essa parte fracionária e não trunca o valor como em `parseInt()`.*
```js
parseFloat("10.5");       // retorna 10.5
parseFloat("10.5abc");    // retorna 10.5
parseFloat("10 anos");    // retorna 10
parseFloat("abc10.5");    // retorna NaN
```

- **`toFixed`**<br/>
Altera o número de casas decimais e retorna uma String.
```js
var oneNumber = 1000;
var oneString = milNumber.toFixed(2); // recebe o retorno da função
console.log(oneString); // imprime a string "1000.00"
```

- **`toString()`**<br/>
Converte tipo numérico e array para string:
```js
var num = 10;
var Num = num.toString();
console.log(`Num: ${typeof(Num)}`); // Num = "10": string

var alphabetArray = ['a', 'b', 'c'];
var alphabetString = alphabetArray.toString();
console.log(`${alphabetArray}: ${typeof alphabetArray} | ${alphabetString}: ${typeof alphabetString} `) // a,b,c: object | a,b,c: string
```

- **`toUppercase()`**<br/>
Converte uma `string` em maiúsculas:
```js
const texto = "Olá, Mundo!";
const textoMaiusculo = texto.toUpperCase();

console.log(textoMaiusculo); // Saída: "OLÁ, MUNDO!"
```

- **`toLowercase()`**<br/>
Converte uma `string` em minúsculas:
```js
const texto = "Olá, Mundo!";
const textoMinusculo = texto.toLowerCase();

console.log(textoMinusculo); // Saída: "olá, mundo!"
```

- **`includes()`**<br/>
Também retorna um valor booleano e procura por uma palavra no texto, porém busca qualquer correspondência em qualquer posição e é *case sensitive*.
```js
const texto = "Hello, World!";
console.log(texto.includes(", ")); // true
```

- **`substr()`**<br/>
Extrai uma parte da `string` a partir de um índice inicial e, opcionalmente, retorna um determinado número de caracteres.
```js
const texto = "Hello, World!";

// extraindo 5 caracteres a partir do índice 7:
console.log(texto.substr(7, 5)); // "World"

// se o comprimento for omitido, extrai até o final da string:
console.log(texto.substr(7)); // "World!"

// usando índice negativo:
console.log(texto.substr(-6, 5)); // "World"
```

- **`substring()`**<br/>
É usado para extrair parte de uma string, de forma semelhante ao `substr()`, porém não aceita valores negativos.
```js
const texto = "JavaScript";

// extraindo "Java"
console.log(texto.substring(0, 4)); // "Java"

// extraindo "Script"
console.log(texto.substring(4, 10)); // "Script"

// se `fim` for omitido, extrai até o final
console.log(texto.substring(4)); // "Script"

// se inicio > fim, ele inverte os valores:
console.log(texto.substring(6, 4)); // "Sc"
```

- **`slice()`**<br/>
Utilizado para extrair uma parte de uma string ou array, retornando uma nova string ou array sem modificar o original. Tanto para strings quanto para arrays, índices negativos contam a partir do final, onde o `-1` representa o último elemento.
```js
const nomeCompleto = "Raphael Kaíque Dias Santos";
const primeiroNome = `${nomeCompleto.slice(0, 9)}.` ; // extraindo a palavra "Raphael K"
console.log(primeiroNome); // "Raphael K."

const frutas = ["Maçã", "Banana", "Laranja", "Manga"];
const resultado = frutas.slice(0, 2); // extraindo as duas primeiras frutas
console.log(resultado); // ["Maçã", "Banana"]
```

- **`split()`**<br/>
Permite dividir uma string em um array de substrings com base em um delimitador especificado. Ele não modifica a string original e retorna um array contendo as partes divididas.
```js
const frase = "JavaScript é incrível";
const palavras = frase.split(" ");
console.log(palavras); // ["JavaScript", "é", "incrível"]

const lista = "Maçã,Banana,Laranja,Manga";
const frutas = lista.split(",");
console.log(frutas); // ["Maçã", "Banana", "Laranja", "Manga"]

const texto = "Aprender JavaScript é divertido";
const resultado = texto.split(" ", 2);
console.log(resultado); // ["Aprender", "JavaScript"]

const texto = "Isso   é   um   teste";
const partes = texto.split(/\s+/); // Regex para múltiplos espaços
console.log(partes); // ["Isso", "é", "um", "teste"]

const nome = "JavaScript";
const letras = nome.split("");
console.log(letras); // ["J", "a", "v", "a", "S", "c", "r", "i", "p", "t"]
```

- **`join()`**<br/>
Assim como o `toString()`, transforma arrays em strings, porém permite passar um *separador* como parâmetro.
```js
var alphabetArray = ['a', 'b', 'c'];
var alphabetString = alphabetArray.join(" - ");
console.log(`${alphabetArray}: ${typeof alphabetArray} | ${alphabetString}: ${typeof alphabetString} `) // a,b,c: object | a - b - c: string
```

- **`replace()`**<br/>
Permite substituir a primeira ocorrência de um texto por outro em qualquer parte da `string`, e é *case sensitive*. Se usado com regex global `/g` substitui todas as ocorrências.
```js
var texto = "Hello, World!";
console.log(texto.replace(", World", "life")); // "Hello life!"

console.log(texto); // "Hello, World!"
var TEXTO = texto.replace(", World", "life");
console.log(`texto: ${texto} | TEXTO: ${TEXTO}`) // "Hello, World!" | "Hello life!"

texto = "banana maçã banana";
TEXTO = texto.replace("banana", "abacaxi");
console.log(TEXTO); // "abacaxi maçã banana"

// regex global
texto = "banana maçã banana";
TEXTO = texto.replace(/banana/g, "abacaxi");
console.log(TEXTO); // "abacaxi maçã banana"
```

- **`replaceAll()`**<br/>
Permite substituir todas as ocorrências de um texto por outro em qualquer parte da `string`, e é *case sensitive*.
```js
let texto = "banana maçã banana";
console.log(texto.replaceAll("banana", "abacaxi")); // Saída: "abacaxi maçã abacaxi"
```

- **`trim()`**<br/>
Permite remover espaços em branco no início e no fim de uma string. Ele não modifica a string original, apenas retorna uma nova string sem os espaços desnecessários. Suas variações são: `trimEnd()`, `trimStart()`, `trimLeft()` e `trimRight()`.
```js
const texto = "   Olá, Mundo!   ";
console.log(texto.trim()); // "Olá, Mundo!"
console.log(texto.replace(/\s+/g, " ").trim());  // "Olá, Mundo!"

const string1 = "   JavaScript   ";
console.log(`Antes: "${string1}"`);         // output: '   JavaScript   '
console.log(`Depois: "${string1.trim()}"`); // output: 'JavaScript'

const exemplo = "   Exemplo   ";
console.log(exemplo.trimStart()); // || console.log(exemplo.trimLeft()); // "Exemplo   "
console.log(exemplo.trimEnd());   // || console.log(exemplo.trimRight()); // "   Exemplo"
```

- **`startsWith()`**<br/>
Procura um termo no início da `string`, retornando `true` ou `false`. Ou seja, se o texto começa com os caracteres que buscamos, neste caso o resultado seria `true`.
```js
const texto = "Hello, World!";
console.log(texto.startsWith("Hell")); // true
```

- **`endsWith()`**<br/>
Como o anterior, mas verificando o final do texto.
```js
const texto = "Hello, World!";
console.log(texto.endsWith("World!")); // true
```

- **`charAt()`**<br/>
Usado para obter o caractere localizado em um determinado índice de uma `string`. Ele pertence ao protótipo de String e retorna uma nova `string` com o caractere encontrado, sem modificar a `string` original.
```js
const texto = "Hello, World!";

// obtém o caractere na posição 0:
console.log(texto.charAt(0)); // "H"

// obtém o caractere na posição 7:
console.log(texto.charAt(7)); // "W"

// se o índice for maior que o tamanho da string:
console.log(texto.charAt(100)); // ""
```

- **`lastIndexOf()`**<br/>
Busca a última ocorrência de uma substring. Também podemos fornecer um segundo parâmetro que indica o índice a partir de qual a busca deve começar, buscando do índice indicado até o índice 0 para retonar qual a posição de índice do termo buscado.
```js
const frase = "O rato roeu a roupa do rei de Roma.";
const posicao = frase.lastIndexOf("rei");
console.log(posicao); // saída: 23 — índice da última ocorrência de "rei"


const frase = "três pratos de trigo para três tigres tristes";

var posicao = frase.lastIndexOf("três", 30); // procura a última ocorrência de "três" antes do índice 30
console.log(posicao); // retorna 26, que é a POSIÇÃO DA PRIMEIRA OCORRÊNCIA antes do índice 30

posicao = frase.lastIndexOf("três", 10); // procura a última ocorrência de "três" antes do índice 10
console.log(posicao); // retorna 0, que é a POSIÇÃO DA PRIMEIRA OCORRÊNCIA, a única antes do índice 10


const numeros = [1, 2, 3, 2, 1];
const indice = numeros.lastIndexOf(2); // procura a última ocorrência de um elemento no array
console.log(indice); // saída: 3 — a ÚLTIMA OCORRÊNCIA do número "2" está no índice `3`


const letras = ["a", "b", "c", "b", "a"]; // também é possível passar um segundo parâmetro para indicar o índice a partir do qual a busca deve iniciar buscando para trás
const indice = letras.lastIndexOf("b", 2); // Procura "b" a partir do índice 2, buscando para trás
console.log(indice); // Saída: 1
```

- **`indexOf()`**<br/>
Para procurar a posição de um termo dentro de um texto. Ele retorna o valor do índice se encontrado e qual sua posição no parâmetro de busca, e `-1` se não encontrado.
```js
var nomeCompleto = "Raphael Kaíque Dias Santos";
var primeiroNome = nomeCompleto.indexOf("Raphael");
var outroNome = nomeCompleto.indexOf("Théo");

console.log(primeiroNome); // Saída: 0
console.log(outroNome); // Saída: -1

/* é especialmente útil quando se quer encontrar um parâmetro em uma lista:
  - indexOf("Raphael"): retorna a posição (ou -1 se não encontrado)
  - !== -1: significa "se Raphael existir na string (independentemente da posição), execute o bloco".
  - Isso cobre todas as posições possíveis onde a substring pode estar. */
nomeCompleto.indexOf("Raphael") !== -1 ? true : false;
```

- **`search()`**<br/>
Funciona da mesma maneira, caso não encontre uma correspondência ele retorna `-1`.
```js
var nomeCompleto = "Raphael Kaíque Dias Santos";
var primeiroNome = nomeCompleto.search("Silva");

console.log(primeiroNome); // Saída: -1
```

- **`match()`**<br/>
Pesquisa e extrai correspondências com base em uma *expressão regular*. Em outras palavras, ele analisa uma `string` para encontrar padrões definidos pelo **`regex`** e retorna um array contendo os resultados.
```js
const texto = "Hoje é dia 15 de fevereiro.";
const resultado = texto.match(/(\d+)/);
console.log(resultado);
/* Saída:
  [
    "15",      <- correspondência completa
    "15",      <- primeiro grupo de captura
    index: 9,
    input: "Hoje é dia 15 de fevereiro.",
    groups: undefined
  ]
*/

// Flag Global `g`: Se a flag global for usada, o método retorna um array contendo todas as correspondências encontradas, sem incluir os detalhes dos grupos de captura.

const texto = "Há 10 maçãs e 20 laranjas.";
const resultado = texto.match(/\d+/g);
console.log(resultado); // Saída: ["10", "20"]
```

#### CONSTANTES
 Por definição, uma constante é um espaço na memória do computador onde um valor que é armazenado **NÃO pode ser alterado** durante o *tempo de execução* do programa. Ou seja, se declararmos uma constante e lhe atribuirmos um valor, este valor não pode ser modificado.<br/>
 **Uma constante só funciona se INICIALIZADA, ou seja, necessita de um valor atribuído no código fonte — não sendo possível atribuir-lhe uma variável, apenas um valor ou "apontar" para outra constante — caso contrário o programa não executa.**
 ```js
 const PI = 3.14;
 ```
 **Como uma boa prática, definimos as constantes em nosso código sempre com `LETRAS_MAIUSCULAS`, para facilitar a legibilidade intuitiva.**

#### AGRUPAMENTO DE DADOS
 Até agora vimos como armazenar um único dado dentro de um espaço na memória, seja `number`, `string` ou `bool`. Mas também existem maneiras de agruparmos valores diferentes em um mesmo endereço na memória. Existem maneiras diferentes de realizar agrupamento de dados, cada forma antede a uma necessidade.

##### `JSON`
 **JavaScript Object Notation** é um tipo simples de objeto, composto por **`{key: value}`** *com o objetivo de transferir dados*. Por ter se tornado um modelo leve de troca de dados baseado na sintaxe de objetos do JavaScript, é independete de linguagem, o que significa que pode ser usado em diversar outras tecnologias.
 ```json
 {
  "nome": "João",
  "idade": 25,
  "email": "joao@email.com",
  "hobbies": ["futebol", "leitura", "música"],
  "endereco": {
    "rua": "Av. Brasil",
    "cidade": "São Paulo"
  }
 }
 ```

 O principal uso do `JSON` é na transferência de dados em **`APIs`**. Para criarmos um `JSON` em JS, podemos atribuílo a uma variável, tranformando-o em um **objeto**:
 ```js
 const user = {
  name: "Raphael",
  age: 30
 };
 ```

 Para enviarmos estes dados, devemos converter este **`object JS`** em uma **`string JSON`**, usando o método **`JSON.stringify()`**:
 ```js
 const user = {
  name: "Raphael",
  age: 30
 };

 const jsonString = JSON.stringify(user);
 console.log(jsonString); // '{"name":"Raphael","age":30}'
 ```

 E para realizarmos a conversão inversa — `string JSON` para `object JS` — usamos **`JSON.parse()`**:
 ```js
 const jsonString = '{"name":"Raphael","age":30}';

 const obj = JSON.parse(jsonString);
 console.log(obj.name); // Raphael
 ```

 Diferente de um **objeto JS**, o **JSON** exige *aspas duplas* `""` para as chaves e valores.

##### `objects`
 Como vimos em JSON, um objeto é uma estrutura semelhante que permite armazenar dados na forma de pares de chave e valor `{key: value}`. Porém, diferentemente do JSON – que apenas armazena dados, um objeto também pode armazenar funções. É um dos principais tipos de dados e é muito usado para representar entidades do mundo real.<br/>
 Objetos são valores na memória que possivelmente são referenciados por um identificador, e que são normalmente conjuntos de dados no formato de chave-valor. Em resumo, um objeto é um mapeamento entre `keys` e `values`, onde as chaves são `string`s ou `symbol`s enquanto os valores podem ser de qualquer tipo.<br/>
 Um fato curioso é que no JS funções são "subtipos", ou seja instâncias de objetos regulares com a capacidade adicional de serem callable, por isso é possível adicionar propriedades à funções, como por exemplo:
 ```js
 function somar(a, b) {
  return a + b
 };
 somar.descricao = "soma 2 números";
 console.log(somar.descricao); // "soma 2 números"
 ```
 No JS existe o método construtor **`new Function([params,[return]])`** que cria um objeto de 1ª classe, por exemplo:
 ```js
 const f = new Function("a", "b", "return a + b"); console.log(f(1, 2)); // 3
 ```
 Ou seja, funções são objetos com comportamento especial, sendo invocáveis, possuindo propriedades e métodos internos como `call`, `apply`, `bind` entre outros.

**propriedades**: objetos podem ser descritos como uma coleção de propriedades. Com a sintaxe literal de objeto, um conjunto limitado de propriedades é inicializado, e então as propriedades podem ser adicionadas e removidas, com valores de qualquer tipo — incluindo outros objetos. As propriedades são identificadas usando valores `key`, que pode ser uma `string value` ou um `symbol value`. Esitem 2 tipos de propriedades de objetos, a `data property` e a `accessor property`, cada propriedade tem *attributes* correspondentes, e cada atributo é acessado internamente pelo JS, mas também é possível defini-los por meio de `Object.defineProperty()` ou lê-los por meio de `Object.getOwnPropertyDescripto()`.
- **`data property`**: as propriedades associam uma chave a um valor, podendo ser descrito pelos seguintes atributos:
  - `value`: valor recuperado por um acesso `get` da propriedade, podendo ser qualquer valor JS.
  - `writable`: um valor booleano que indica se a propriedade pode ser alterada com uma atribuição, ou seja, reatribuída ou sobrescrita.
  - `enumerable`: um valor booleano que indica se propriedade pode ser enumerada, ou seja "listada" por um loop.
  - `configurable`: valor booleano que indica se a propriedade pode ser excluída, alterada para uma propriedade acessora ou ter seus atributos alterados.
- **`accessor property`**: associa uma chave à uma das 2 funções de acesso, `get` e `set`, para recuperar ou armazenar um valor. O accessor property não é um `accessor method`. uma propriedade do acessor tem os seguintes atributos:
  - [`get`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Functions/get): método chamado com uma lista de argumentos vazia para recuperar o valor da propriedade sempre que um acesso de obtenção ao valor for executado. Pode ser `undefined`.
  - [`set`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Functions/set): função executada quando há a necessidade de alterar o valor de uma propriedade do objeto. Pode ser `undefined`.
  - `enumerable`: um valor booleano que indica se propriedade pode ser enumerada, ou seja "listada" por um loop.
  - `configurable`: valor booleano que indica se a propriedade pode ser excluída, alterada para uma propriedade acessora ou ter seus atributos alterados.

###### PROTÓTIPOS
 O JavaScript diferente de linguagens baseadas em classes como Java ou C# por exemplo, é baseado em prototipagem. Quando uma propriedade de um objeto que não existe diretamente nele é acessado, o JS procura essa propriedade na cadeia de protótipos, a **`prototype chain`**. Ou seja, quando um objeto é criado de forma literal, o JS executa implicitamente o script abaixo:
 ```js
 // criando um objeto literal
 let pessoa = {
   nome: "Raphael",
   idade: 30,
   saudar() {console.log("Oi!")}
 };

 // o JS realiza a seguinte conversão:
 pessoa.__proto__ === Object.prototype; // true

 // o que faz com que isso funcione mesmo que não vejamos toString em "pessoa"
 console.log(pessoa.toString()); // "[object Object]"

 // o motivo é que `pessoa` herda isso da "base" prototype
 Object.prototype.toString

 const raphael = Object.create(pessoa); // raphael herda de pessoa
 raphael.saudar(); // "Oi!" - mesmo que raphael não tenha declarado em si `saudar`, isso é herdado de pessoa
 ```

 Vejamos com funções construtoras:
 ```js
 function Carro(marca) {
   this.marca = marca;
 }

 Carro.prototype.ligar = function () {
   console.log(`${this.marca} ligou!`);
 };

 const fusca = new Carro("VW");
 fusca.ligar(); // VW ligou!
 ```
 No exemplo acima, a função `Carro` tem um protótipo (`Carro.prototype`) onde colocamos o método `ligar`. Qualquer objeto criado com `new Carro()` terá esse protótipo como base.

 Na cadeia de protótipos, `Object.prototype` é o "fim da linha".
 ```js
 let obj = {};
 console.log(Object.getPrototypeOf(obj)); // → Object.prototype
 console.log(obj.__proto__ === Object.prototype); // true

 console.log(Object.getPrototypeOf(Object.prototype)); // → null
 console.log(Object.prototype.__proto__); // null (fim da linha!)
 ```

 **Diferença entre `__proto__` e `prototype`.**
| Termo         | Explicação                                                                                           |
|---------------|------------------------------------------------------------------------------------------------------|
| `__proto__`   | A propriedade **de um objeto** que aponta para seu protótipo.                                        |
| `prototype`   | Uma propriedade **de funções construtoras** usada como protótipo de novos objetos criados com `new`. |

 Em JavaScript, objetos podem herdar propriedades e métodos de outros objetos. O `Object.prototype` é o protótipo de todos os objetos, o que significa que propriedades e métodos definidos nele estão disponíveis para todos os objetos que dele herdam. Por exemplo, métodos como `toString()` e `valueOf()` são herdados de `Object.prototype`. Ele é a base da cadeia de herança, sendo o objeto protótipo do qual todos os objetos comuns criados a partir de `Object` (ou derivados dele) herdam propriedades e métodos (definidos em `Object.prototype`), **a menos que se diga o contrário**.

 Por isso, alguns métodos são comuns, disponíveis por padrão em qualquer objeto, pois herdam de `Object.prototype`:

 | Método                   | Descrição                                                                                |
 |--------------------------|------------------------------------------------------------------------------------------|
 | `toString()`             | Converte um objeto para uma string, retornando uma representação textual do objeto.      |
 | `valueOf()`              | Retorna o valor primitivo do objeto.                                                     |
 | `hasOwnProperty()`       | Verifica se uma propriedade é pertencente ao próprio objeto ou foi herdada.              |
 | `isPrototypeOf()`        | Verifica se o objeto existe na cadeia de protótipos de outro.                            |
 | `propertyIsEnumerable()` | Verifica se a propriedade pode ser enumerada e consequentemente iterada com `for ... in` |
 | `__proto__`              | Acesso direto ao protótipo objeto, mas **NÃO É RECOMENDADO**.                            |

 E sempre que precisarmos checar se uma propriedade está diretamente no objeto e não no protótipo basta usar `hasOwnProperty.call`, sendo uma forma mais segura e à prova de manipulação do `hasOwnProperty`.
 ```js
 let livro = {
   titulo: "JS Ninja"
 };

 console.log(livro.toString()); // [object Object] — vem de Object.prototype
 console.log(livro.hasOwnProperty("titulo")); // true
 console.log(livro.hasOwnProperty("toString")); // false (herdado)

 console.log(Object.prototype.hasOwnProperty.call(livro, "titulo")); // true — pertence ao objeto, não ao protótipo
 console.log(Object.prototype.hasOwnProperty.call("titulo"));        // false — pertence ao objeto, não ao protótipo
 ```

 Objetos em JavaScript são tipos de referência. Isso significa que *2 variáveis podem referenciar o mesmo objeto, e alterações em uma afetarão a outra*.
 ```js
 let obj1 = { a: 1 };
 let obj2 = obj1;
 obj2.a = 2;
 console.log(obj1.a); // 2
 ```

 Ou seja, é possível modificar e até mesmo personalizar `Object.prototype`, mas sempre lembrando que isso afetará **todos** os objetos da aplicação — literalmente *todos* os objetos, mesmo os nativos como arays, funções e etc, irão herdar esse método, o que pode causar bugs difíceis de rastrear — e por isso em código real essa prática deve ser evitada ao máximo, pois poderá causar conflitos com bibliotecas e gerar comportamentos inesperados.
 ```js
 Object.prototype.personalMethod = function() {
   return "isso está em todo objeto!";
 };

 console.log({}.personalMethod()); // "Este método é acessível à todo objeto!"
 ```

 Já que todos os objetos em JS são descendentes do `Object`, todos herdam métodos e propriedades de `Object.prototype`, embora possam ser substituídos por exemplo, protótipos de outros construtores substituem a propriedade `constructor` e fornecem seus próprios métodos `toString()`. Todas as alterações serão propragadas para todos os objetos a menos que as propriedades e métodos sujeitos a essas alterações seram substituídas na cadeia de protótips.

 ```js
 const nome = "Raphael";
 console.log(nome.toUpperCase()); // toUpperCase vem de String.prototype
 ```

 No extremo oposto, também é possível criar objetos sem **nenhuma herança**. Para isso os criamos "vazios" com `null`, o que criará um objeto "puro", sendo útil para uso de *objetos seguros* como mapas ou dicionários sem métodos herdados.
 ```js
 let puro = Object.create(null);
 console.log(puro.toString); // undefined — não herda nada
 ```

 - **`literal object`**<br/>
 Para **criarmos um objeto**, *declaramos uma variável `let`, `var` ou o mais comumente usado, o `const`*, e *atribuímos `=` a uma *estrutura de chaves `{}`*, onde irá conter *cada par de chave e valor*, com os *valores atribuídos às chaves usando `:`*. Vejamos:
 ```js
 const Pessoa = {
  nome: "Raphael",
  profissao: "software developer"
 };
 ```

 - **`constructor`**<br/>
 Além da declaração literal direta de um objeto, existem outras formas de criarmos um objeto, como por exemplo **`new Object`**:
 ```js
 let livro = new Object();
 livro.titulo = "Dom Casmurro";
 livro.autor = "Machado de Assis";

 /* o elemento `Object()` é uma função tipo `constructor`,
 que coleta os atributos passados como valor
 e a propriedade após o `.` como chave

 enquanto o elemento `new` realiza o mesmo que:

 let livro = {};
 livro.titulo = "Dom Casmurro";
 livro.autor = "Machado de Assis";

 ou

 let livro = {
 titulo: "Dom Casmurro";
 autor: "Machado de Assis";
 }
 */
 ```

 - **`direct prototypic inheritance`**<br>
 O **`Object.create(proto[, propriedades])`** cria um novo objeto com o objeto e as propriedades do protótipo especificado, dando ao objeto criado herança direta sem necessidade do uso de classes ou funções construtoras, é útil quando é necessário criar um objeto que herda diretamente de outro, exemplo:
 ```js
 // herança simples
 const animal = {
   tipo: "mamífero",
   fazerSom() {
     console.log("Som do animal!");
   }
 };

 const cachorro = Object.create(animal);
 cachorro.raca = "Labrador";
 /* const cachorro = {
   + raca: "Labrador",
   tipo: "mamífero",
   fazerSom() {
     console.log("Som do animal!");
   }
 }
 */

 console.log(cachorro.tipo); // "mamífero"
 cachorro.fazerSom(); // "Som do animal!"

 // com propriedades
 const pessoa = {
   saudacao() {
     return `Olá, meu nome é ${this.nome}`;
   }
 };

 const dev = Object.create(pessoa, {
   nome: {
     value: "Raphael",
     writable: true,
     configurable: true,
     enumerable: true
   }
 });

 console.log(dev.saudacao()); // "Olá, meu nome é Raphael"

 // protótipo vazio
 const mapa = Object.create(null);

 mapa.nome = "sem protótipo";
 console.log(mapa); // { nome: "sem protótipo" }
 console.log(mapa.toString); // undefined (não herda de Object.prototype)
 ```

 - **`factory function`**<br/>
 Também podemos usar funções para criar objetos, porém não é aconselhado pois cada objeto criado tem suas próprias cópias dos métodos, gastando mais memória.
 ```js
 function criarPessoa(nome, idade) {
   return {
     nome,
     idade,
     falar() {
       console.log(`Oi, eu sou ${this.nome}!`);
     }
   };
 }

 const marido = criarPessoa("Raphael", 30);
 const esposa = criarPessoa("Déborah", 30);

 marido.falar(); // "Oi, eu sou Raphael!"
 esposa.falar(); // "Oi, eu sou Déborah!"
 console.log(`${marido.nome} é casado com ${esposa.nome}.`);
 ```

 - **`constructor function new`**<br/>
 Uma alternativa usada antes da introdução da `class` no **`ES6`**, este método era ussado junto com a `factory function` quando havia a necessidade de se criar múltiplos objetos que compartilhem médotos via **`prototype`** – o que economiza muita memória.
 ```js
 function Pessoa(nome, idade) {
   this.nome = nome;
   this.idade = idade;
 }

 Pessoa.prototype.falar = function () {
   console.log(`Meu nome é ${this.nome}.`);
 };

 const pessoa1 = new Pessoa("Raphael", 30);
 const pessoa2 = new Pessoa("Déborah", 30);

 pessoa1.falar(); // "Meu nome é Raphael."
 ```

 - **`class`**<br/>
 É o método usado em POO, pois um objeto é uma instância de uma classe, ou seja, a classe é o *"padrão"* de como o objeto deve ser. Exemplo:
 ```js
 // criando a classe, que é o modelo do objeto
 class Animal {
   constructor(nome, tipo) {
     this.nome = nome;
     this.tipo = tipo;
   }

   fazerSom() {
     console.log("Som do animal!");
   }
 }

 const gato = new Animal("Mia", "Felino"); // instanciando o objeto

 console.log(gato.nome); // "Mia"
 gato.fazerSom(); // "Som do animal!"
 ```

 Um objeto pode conter diferentes métodos e propriedades. Sendo as **propriedades** as informações armazenadas no objeto, e os **métodos** as funções dentro dele.
 ```js
 const carro = {
   marca: "Toyota",
   modelo: "Corolla",
   ano: 2022,
   ligar: function () {
     console.log("O carro está ligado!");
   }
 };

 carro.ligar(); // "O carro está ligado!"
 ```

**Objetos podem conter outros objetos e também `arrays`.**
 ```js
 const aluno = {
   nome: "Raphael",
   notas: [8, 9, 10],
   endereco: {
     cidade: "Belo Horizonte",
     cep: "12345-678"
   }
 };

 console.log(aluno.notas[1]); // 9
 console.log(aluno.endereco.cidade); // "Belo Horizonte"
 ```

 Para acessarmos as *propriedades* de um objeto, primeiro o declaramos e, usando o **seletor `. – dot notation`** escolhemos qual método ou propriedade do objeto queremos. Este seletor é usado quando se conhece o nome da propriedade, sendo a forma mais concisa e legível. Exemplo:
 ```js
 const Pessoa = {
  nome: "Raphael",
  profissao: "software developer",
  saudacao () {
      console.log(`Olá! Me chamo ${this.nome} e trabalho como ${this.profissao}.`)
  }
 };

 console.log(Pessoa.nome);      // "Raphael"
 console.log(Pessoa.profissao); // "software developer"
 Pessoa.saudacao(); // Olá! Me chamo Raphael e trabalho como software developer.
 ```

 Outra maneira de acessar os valores dentro dos objetos é utilizando o **seletor de chaves `[] – bracket notation`**, que possibilita acessar as propriedades usando strings ou variáveis, sendo usado nos casos onde o nome da propriedade é dinâmico ou contém caracteres inválidos para o `dot notation`:
 ```js
 const dados = {
    "nome": "Raphael",
    "sobrenome": "k",
    "nome completo": "Raphael K"
 };

 console.log(dados["nome"]);           // Raphael
 
 const chave = "sobrenome";
 console.log(dados[chave]) ;           // K

 console.log(dados["nome completo"]);  // Raphael K
 ```

###### COMMONS
**Propriedades e Métodos do Construtor `Object`**<br/>
O `Object` possui vários métodos e propriedades úteis, alguns são:

- **`Object.prototype.[personalMethod]`**: Permite a adição de propriedades a todos os objetos do tipo Object.
```js
let myArray = [];
Object.prototype.personalMethod = function() {
  return "isso está em todo objeto!";
};

console.log(myArray.personalMethod()); // "Este método é acessível à todo objeto!"
```

- **`Object.setPrototypeOf(obj, prototype)`**: Define e altera o protótipo, isto é, a propriedade interna `[[Prototype]]`. Ou seja, mudar a cadeia de herança dele em tempo de execução. Em JavaScript, cada objeto possui uma propriedade interna `[[Prototype]]`, que é usada para herança de propriedades e métodos. Essa propriedade pode ser acessada indiretamente com `Object.__proto__` ou `Object.getPrototypeOf(obj)` ou diretamente manipulada com `Object.setPrototypeOf(obj)`. Um ponto de atenção, deve-se ter cuidado ao alterar protótipos em tempo de execução pois pode afetar performance, especialmente em grandes aplicações. Sempre que possível, prefira definir protótipos no momento da criação do objeto usando Object.create() ou com `class` e `constructors`.
```js
const animal = {
  tipo: 'Mamífero',
  get fazerSom() {
    console.log(`${this.nome} diz olá!`);
  }
};

const cachorro = {
  nome: 'Rex',
  get latir() {
    console.log("Au au!");
  }
};

// define 'animal' como protótipo de 'cachorro'
Object.setPrototypeOf(cachorro, animal);

cachorro.fazerSom;    // "Rex diz olá!" — herdado do protótipo
cachorro.latir;       // "Au au!"

// alternativa moderna
const gato = Object.create(animal);
gato.nome = 'Mingau';
gato.fazerSom; // Mingau diz olá!
gato.miar = console.log("Miau!");
gato.miar; // Miau!
```

- **`Object.assign(destino, ...fontes)`**: Copia os valores de todas as propriedades próprias enumeráveis de um ou mais objetos de origem para um objeto de destino.
```js
let detalhes = { altura: 1.75 };
let pessoaCompleta = Object.assign({}, pessoa, detalhes);
console.log(pessoaCompleta); // { nome: "Raphael", idade: 30, altura: 1.75 }
```

- **`Object.defineProperty(obj, prop, descriptor)`**: Permite adicionar ou modificar uma propriedade em um objeto de forma mais controla, especificando se ela pode ser editada, listada em loops, deletada, se possui *getter* e *setter* e qual seu valor inicial.
```js
// criando uma propriedade com valor fixo

const pessoa = {};
Object.defineProperty(pessoa, "nome", {
  value: "Raphael",
  writable: false,     // não pode ser alterado
  enumerable: true,    // aparece em for...in
  configurable: false  // não pode ser deletado
});

console.log(pessoa.nome); // "Raphael"
pessoa.nome = "Kaíque";   // Não muda (por causa do writable: false)
console.log(pessoa.nome); // "Raphael"

// definindo propriedades dinâmicas
const quadrado = {
  lado: 4
};

Object.defineProperty(quadrado, "area", {
  get() {
    return this.lado * this.lado;
  },
  set(valor) {
    this.lado = Math.sqrt(valor);
  }
});

console.log(quadrado.area); // 16
quadrado.area = 25;
console.log(quadrado.lado); // 5

// propriedades não enumerável
const obj = {};
Object.defineProperty(obj, "secreto", {
  value: "invisível",
  enumerable: false
});

console.log(obj.secreto); // "invisível"

for (let chave in obj) {
  console.log(chave); // nada é impresso
}
```

- **`Object.defineProperties(obj, {props1, props2, props...})`**: Permite criar ou modificar várias propriedades ao mesmo tempo mas com regras diferentes em um objeto, com controle assim como `Object.defineProperty`. Muito usado em estruturações de objetos complexos como configurações, modelos de dados ou APIs.
```js
/*
Object.defineProperties(obj, {
  propriedade1: { descriptor1 },
  propriedade2: { descriptor2 },
  ...
});
*/
const pessoa = {};

Object.defineProperties(pessoa, {
  nome: {
    value: "Raphael",
    writable: true,
    enumerable: true,
    configurable: true
  },
  idade: {
    value: 27,
    writable: false,
    enumerable: true,
    configurable: false
  },
  saudacao: {
    get() {
      return `Olá, meu nome é ${this.nome}`;
    },
    enumerable: true
  }
});

console.log(pessoa.nome);       // Raphael
console.log(pessoa.saudacao);   // Olá, meu nome é Raphael

pessoa.nome = "Kaíque";
console.log(pessoa.saudacao);   // Olá, meu nome é Kaíque

pessoa.idade = 30;
console.log(pessoa.idade);      // 27 (não mudou, writable: false)

console.log(Object.keys(pessoa)); // ['nome', 'idade', 'saudacao']


/* um exemplo mais complexo
   criando uma Mini Classe */
function Produto(nome, preco) {
  let _nome = nome;
  let _preco = preco;

  Object.defineProperties(this, {
    nome: {
      get() {
        return _nome;
      },
      set(valor) {
        if (typeof valor === "string" && valor.length > 0) {
          _nome = valor;
        } else {
          console.warn("Nome inválido");
        }
      },
      enumerable: true
    },
    preco: {
      get() {
        return _preco.toFixed(2);
      },
      set(valor) {
        if (typeof valor === "number" && valor >= 0) {
          _preco = valor;
        } else {
          console.warn("Preço inválido");
        }
      },
      enumerable: true
    },
    desconto: {
      get() {
        return (_preco * 0.1).toFixed(2); // 10% de desconto
      },
      enumerable: true
    }
  });
}

let p1 = new Produto("Notebook", 3500);

console.log(p1.nome);       // Notebook
console.log(p1.preco);      // 3500.00
console.log(p1.desconto);   // 350.00

p1.nome = "Ultrabook";
p1.preco = 4200;

console.log(p1.nome);       // Ultrabook
console.log(p1.preco);      // 4200.00
console.log(p1.desconto);   // 420.00

p1.preco = -10;             // Preço inválido
console.log(p1.preco);      // 4200.00 (não muda)
```

- **`Object.keys(obj)`**: Retorna uma matriz com os nomes de todas as propriedades enumeráveis do objeto.
```js
let pessoa = { nome: "Raphael", idade: 30 };
console.log(Object.keys(pessoa)); // ["nome", "idade"]
```

- **`Object.values(obj)`**: Retorna uma matriz com os valores das propriedades enumeráveis de `Object`.
```js
let pessoa = { nome: "Raphael", idade: 30 };
console.log(Object.values(pessoa)); // ["Raphael", 30]
```

- **`Object.entries(obj)`**: Retorna uma matriz contendo pares `[chave, valor]` das propriedades enumeráveis de `Object`.
```js
class Pessoa {
  constructor(nome, idade) {
    this.nome = nome,
    this.idade = idade;
  }
}

const pessoa = new Pessoa("Raphael", 30);
console.log(Object.entries(pessoa)); // [["nome", "Raphael"], ["idade", 30]]
```

- **`Object.fromEntries(obj)`**: Retorna um novo objeto de um iterável a partir de uma estrutura de pares de chave-valor (como uma matriz), reverso à `Object.entries`.
```js
// sintaxe
const entries = [
  ['nome', 'Raphael'],
  ['idade', 27],
  ['profissao', 'Desenvolvedor']
];

const obj = Object.fromEntries(entries);
console.log(obj); // { nome: 'Raphael', idade: 27, profissao: 'Desenvolvedor' }


// reconstruindo um objeto
const pessoa = {
  nome: 'Déborah',
  cidade: 'Betim'
};

const pares = Object.entries(pessoa);
console.log(pares); // [['nome', 'Déborah'], ['cidade', 'Betim']]

const reconstruido = Object.fromEntries(pares);
console.log(reconstruido); // { nome: 'Déborah', cidade: 'Betim' }


// utilizando map
const mapa = new Map();
mapa.set('linguagem', 'JavaScript');
mapa.set('tipo', 'dinâmica');

const objeto = Object.fromEntries(mapa);
console.log(objeto); // { linguagem: 'JavaScript', tipo: 'dinâmica' }

// filtrando um objeto
const usuario = {
  nome: 'Raphael',
  senha: '12345',
  email: 'raphael@email.com'
};

// Removendo a chave "senha"
const filtrado = Object.fromEntries(
  Object.entries(usuario).filter(([chave, _]) => chave !== 'senha')
);

console.log(filtrado); // { nome: 'Raphael', email: 'raphael@email.com' }
```

- **`Object.freeze(obj)`**: Congela o objeto, fazendo com que o código não possa excluí-lo ou alterar nenhuma propriedade dele.
```js
class Pessoa {
    constructor(nome, idade) {
        this.nome = nome,
        this.idade = idade;
    }
}

const pessoa = new Pessoa("Raphael", 30);
console.log(Object.entries(pessoa)); // [["nome", "Raphael"], ["idade", 30]]
Object.freeze(pessoa);
pessoa.idade = 18
console.log(pessoa.idade) // 30 (não muda)
```

- **`Object.isFrozen(obj)`**: Determina se um objeto foi congelado.
```js
class Pessoa {
    constructor(nome, idade) {
        this.nome = nome,
        this.idade = idade;
    }
}

const pessoa = new Pessoa("Raphael", 30);
Object.freeze(pessoa);

console.log(Object.isFrozen(pessoa)); // true
```

- **`Object.seal(obj)`**: Impede que outro código exclua propriedades de um objeto, tornando-o um *objeto selado*. Um objeto selado é não extensível, assim não sendo possível adicionar novas propriedades, e todas as suas propriedades extensíveis não são configuráveis, não podem ser removidas e nem ter seus atributos (como `enumerable` ou `configurable`) alterados, porém, desde que não sejam propriedades `writable: false` valores ainda podem ser alterados.
```js
const obj = { nome: "Raphael" };

Object.seal(obj); // sela o objeto

obj.idade = 27; // não funciona (não pode adicionar)
delete obj.nome; // também não funciona (não pode remover)

obj.nome = "Kaique"; // funciona (pode alterar valor)
console.log(obj); // { nome: "Kaique" }
```

- **`Object.isSealed(obj)`**: Verifica se um objeto está selado:
```js
const obj = { nome: "Raphael" };
Object.seal(obj);
console.log(Object.isSealed(obj)); // true
```

- **`Object.preventExtensions(obj)`**: Impede qualquer extensão de um objeto, ou seja, impede que novas propriedades sejam adicionadas a um objeto.
```js
const user = {
  nome: "Raphael"
};

Object.preventExtensions(user);

user.idade = 27; // Não será adicionada
console.log(user.idade); // undefined

delete user.nome; // Pode deletar
console.log(user); // {}
```

- **`Object.hasOwn(obj, prop)`**: Verifica se o objeto `obj` possui a propriedade `prop` como sua própria (não herdada).
```js
let pessoa = { nome: "Raphael", idade: 30 };

console.log(Object.hasOwn(pessoa, "nome")); // true
console.log(Object.hasOwn(pessoa, "toString")); // false

// Ao iterar sobre as propriedades de um objeto, é importante verificar se a propriedade pertence ao próprio objeto ou foi herdada.
for (let prop in pessoa) {
  if (Object.hasOwn(pessoa, prop)) {
    console.log(`${prop}: ${pessoa[prop]}`);
  }
}
```

- **`Object.getOwnPropertyDescriptor(obj, prop)`**: Retorna **1 descritor** de propriedade para uma propriedade nomeada em um objeto, este retorno contém um objeto com detalhes internos de _**uma** propriedade específica_ de outro objeto, ou seja, como aquela propriedade foi definida: se é enumerável, configurável, gravável, se possui getter ou setter e etc.
```js
const pessoa = {
  nome: 'Raphael'
};

const descricao = Object.getOwnPropertyDescriptor(pessoa, 'nome');
console.log(descricao); /*
{
  value: 'Raphael',
  writable: true,
  enumerable: true,
  configurable: true
} */

const carro = {};

Object.defineProperty(carro, 'marca', {
  value: 'Toyota',
  writable: false,
  enumerable: false,
  configurable: false
});

const desc = Object.getOwnPropertyDescriptor(carro, 'marca');
console.log(desc); /*
 {
  value: 'Toyota',
  writable: false,
  enumerable: false,
  configurable: false
}
*/
```

- **`Object.getOwnPropertyDescriptors(obj)`**: Retorna um objeto contendo **todos** os descritores de propriedades próprias daquele objeto, é como uma versão completa de `Object.getOwnPropertyDescriptor()`, porém para **todas** as propriedades ao mesmo tempo. Muito útil para clonar objetos com propriedades idênticas, pois usando apenas `Object.assign` não copia os descritores, já com `Object.defineProperties` isso é realizado fielmente.
```js
const livro = {
  titulo: 'JavaScript Essencial',
  autor: 'Raphael'
};

const descritores = Object.getOwnPropertyDescriptors(livro);
console.log(descritores); /*
{
  titulo: {
    value: 'JavaScript Essencial',
    writable: true,
    enumerable: true,
    configurable: true
  },
  autor: {
    value: 'Raphael',
    writable: true,
    enumerable: true,
    configurable: true
  }
}

clonando um objeto e suas propriedades */
const clone = Object.defineProperties({}, Object.getOwnPropertyDescriptors(livro));
console.log(Object.getOwnPropertyDescriptors(livro)); /*
{
  titulo: {
    value: 'JavaScript Essencial',
    writable: true,
    enumerable: true,
    configurable: true
  },
  autor: {
    value: 'Raphael',
    writable: true,
    enumerable: true,
    configurable: true
  }
} */

// exemplo com `get` & `set`
const usuario = {
  get nome() {
    return 'Raphael';
  },
  set nome(valor) {
    console.log(`Novo nome: ${valor}`);
  }
};

console.log(Object.getOwnPropertyDescriptors(usuario)); /*
{
  nome: {
    get: [Function: get nome],
    set: [Function: set nome],
    enumerable: true,
    configurable: true
  }
}
 */
```

- **`Object.getOwnPropertyNames(obj)`**: Retorna uma matriz contendo os nomes de **_todas as propriedades_ enumeráveis e não enumeráveis** do próprio objeto fornecido.
```js
// exemplo simples
const carro = {
  marca: 'Toyota',
  modelo: 'Corolla',
};

console.log(Object.getOwnPropertyNames(carro)); // ['marca', 'modelo']


// listando todas as propriedades
const pessoa = {
  nome: 'Raphael'
};

Object.defineProperty(pessoa, 'idade', {
  value: 27,
  enumerable: false
});

console.log(Object.keys(pessoa)); // ['nome']
console.log(Object.getOwnPropertyNames(pessoa)); // ['nome', 'idade']


// arrays
const frutas = ['maçã', 'banana'];
console.log(Object.getOwnPropertyNames(frutas)); /* ['0', '1', 'length']
essa saída mostra que o array tem propriedades internas como length, que também é retornada */
```

- **`Object.getOwnPropertySymbols(obj)`**: Retorna uma matriz de todas as propriedades de símbolo próprias encontradas diretamente sobre um determinado objeto.
```js
const id = Symbol('id');
const user = {
  nome: 'Raphael',
  [id]: 12345
};

console.log(Object.getOwnPropertySymbols(user));  // [ Symbol(id) ]
```

- **`Object.getPrototypeOf(obj)`**: Retorna o protótipo do objeto especificado, ou seja, retorna o *"objeto pai"* de um determinado objeto. Em outras palavras, retorna o valor da propriedade interna `[[Prototype]]` de um objeto (acessível também com `Object.__proto__` — que é obsoleto, mas ainda funciona).
```js
const animal = {
  tipo: 'Mamífero'
};

const cachorro = Object.create(animal);
cachorro.nome = 'Rex';

console.log(cachorro.nome);           // 'Rex'
console.log(cachorro.tipo);           // 'Mamífero' (herdado de animal)

console.log(Object.getPrototypeOf(cachorro) === animal); // true

// classes
class Pessoa {
  constructor(nome) {
    this.nome = nome;
  }
}

class Dev extends Pessoa {
  constructor(nome, linguagem) {
    super(nome);
    this.linguagem = linguagem;
  }
}

const ralph = new Dev('Raphael', 'JavaScript');

console.log(Object.getPrototypeOf(ralph));            // Dev.prototype
console.log(Object.getPrototypeOf(Dev.prototype));   // Pessoa.prototype
```

- **`Object.is(valor1, valor2)`**: Compara se 2 valores são o mesmo valor. Sendo mais precisa nos casos de `NaN`, `+0` e `-0` que diferem da *Comparação de Igualdade Abstrata* e da *Comparação de Igualdade Estrita*. Sendo especialmente útil quando se precisa diferenciar `+0` de `-0`, ou detectar `NaN` com precisão.
```js
// casos em que `Object.is` se comporta como `===`
Object.is(25, 25);            // true
Object.is('JS', 'JS');        // true
Object.is(undefined, undefined); // true
Object.is(null, null);        // true
Object.is([], [])             // false (referências diferentes)

// casos em que `Object.is` diferencia-se de `===`
Object.is(NaN, NaN);          // true (diferente de `NaN === NaN` → false)
Object.is(+0, -0);            // false (diferente de `+0 === -0` → true)
Object.is(0, -0);             // false

```

- **`Object.isExtensible(obj)`**: Determina se a extensão de um objeto é permitida, verificando se um objeto pode ser estendido e se as novas propriedades podem ser adicionadas a ele.
```js
const obj = {};
console.log(Object.isExtensible(obj)); // true

obj.novaPropriedade = 123; // sendo extensível, novas propriedades podem ser adicionadas
console.log(obj.novaPropriedade); // 123
```

- **`Object.groupBy`**: Agrupa objetos através de uma propriedade.
```js
const people = {
  { name: "Raphael", age: 30 },
  { name: "Déborah", age: 30 },
  { name: "Theo", age: 1 }
};

const grouped = Object.groupBy(people, p => p.age);
console.log(grouped); /*
{
  1: [
    { name: "Theo", age: 1 }
  ],

  30: [
    {name: "Raphael", age: 30  },
    {name: "Déborah", age: 30  }
  ]
} */
```

###### `this`
 Trata-se de uma referência ao objeto que está executando o código no momento, geralmente ao objeto chamado em um método, dessa forma, quando um objeto ou classe quer se referir a si mesmo, ele usa **`this`**. Este método atribui dentro de um objeto ou uma classe, uma variável que recebe um parâmetro, que é o mesmo que declarar uma variável dentro da classe para receber um parâmetro externo. Ele se refere ao contexto de execução atual. Seu comportamento pode mudar dependendo de onde e como é usado. Se não precisarmos de privacidade ou quisermos manter as propriedades acessíveis ao programa, usar **`this` é a melhor opção**.

 - **`this` em Objetos Literais**<br/>
 Em um **objeto literal**, `this` *se refere ao próprio objeto*.<br/>
 **Aqui, `this` se refere ao objeto `pessoa`**:
 ```js
 const pessoa = {
   nome: "Rael",
   saudacao: function () {
     console.log(`Olá, meu nome é ${this.nome}.`);
   }
 };

 pessoa.saudacao(); // "Olá, meu nome é Rael."
 ```

 - **`this` em Funções Construtoras**<br/>
 Em uma **função construtora**, `this` *representa a nova instância criada*.<br/>
 **Aqui, `this` se refere ao objeto criado com `new Pessoa()`**:
 ```js
 function Pessoa(nome) {
   this.nome = nome;
   this.falar = function () {
     console.log(`Oi, eu sou ${this.nome}.`);
   };
 }

 const pessoa1 = new Pessoa("Raphael");
 pessoa1.falar(); // "Oi, eu sou Raphael."
 ```

 - **`this` em Classes (`class`)**<br/>
 Em **classes**, `this` *funciona da mesma forma que em funções construtoras*.<br/>
 **Aqui, `this` representa cada instância da classe `Carro`**:
 ```js
 class Carro {
   constructor(marca, modelo) {
     this.marca = marca;
     this.modelo = modelo;
   }

   detalhes() {
     console.log(`Este carro é um ${this.marca} ${this.modelo}.`);
   }
 }

 const meuCarro = new Carro("Toyota", "Corolla");
 meuCarro.detalhes(); // "Este carro é um Toyota Corolla."
 ```

 **PROBLEMA COMUM - `this`**<br/>
 **`functions`**<br/>
 O valor de `this` **muda dependendo do contexto**, o que pode causar erros.

 - **❌ PROBLEMA ❌**<br/>
 **`this` em funções normais.**<br/>
 **Motivo:** `this` dentro de `setTimeout` não se refere ao objeto `obj`, mas ao escopo global — `window` no navegador ou `global` no Node.js:

 ```js
 const obj = {
   nome: "Lucas",
   dizerNome: function () {
     setTimeout(function () {
       console.log(this.nome); // ❌ `this` aqui não é `obj` ❌
     }, 1000);
   }
 };

 obj.dizerNome(); // `undefined`
 ```

**✅ SOLUÇÕES ✅**

 - **`arrow function`**<br/>
 Arrow functions **não criam um novo `this`**, então elas *"herdam"* o `this` do escopo onde foram definidas.<br/>
 **Aqui, `this` mantém a referência ao `obj`**:  

 ```js
 const obj = {
   nome: "Raphael",
   dizerNome: function () {
     setTimeout(() => {
       console.log(this.nome); // agora funciona
     }, 1000);
   }
 };

 obj.dizerNome(); // "Raphael"
 ```

 - **`let var = this`**<br/>
 Ao armazenar o `this` em uma variável, podemos usar sua referência na variável.<br/>
 **Aqui, usamos `self` para manter a referência correta de `this`**:

 ```js
 const obj = {
   nome: "Lucas",
   dizerNome: function () {
     const self = this; // guardamos a referência de `this`
     setTimeout(function () {
       console.log(self.nome); // ✅ Agora funciona
     }, 1000);
   }
 };

 obj.dizerNome(); // "Lucas"
 ```

 - **`this parameter`**<br/>
 Suponhamos uma função chamada `valide`, que valida a propriedade `value` de um objeto, dado o objeto e os valores `maximo` e `minimo`:
 ```js
 function valide(obj, minimo, maximo) {
   (obj.valor < minimo || obj.valor > maximo) && alert("Valor inválido!");
 }
 ```
 É possível chamar `valide` em cada manipulador de evento `onChange` de um formulário utilizando `this` para passar o elemento do formulário à função:
 ```html
 <label for="idade">Informe um número entre 18 e 99:</label>
 <input type="number" name="idade" size="2" onChange="valide(this, 18, 99);"/>
 ```

 ###### ALTERNATIVAS AO `this`
 Caso seja necessário manter as propriedades ocultas e inacessíveis ao resto do programa, podemos usar os **Métodos Privados**. Estes métodos são aqueles que não podem ser acessados fora da classe. Existem algumas formas de criá-los:

 - **private variables `#` (ES6+)**<br/>
 Podemos usar **campos privados `#`** para armazenar valores sem expô-los diretamente, assim mantemos os dados privados e encapsulados.<br/>
 Este método oferece total segurança, sendo impossível acessar os dados privados fora da classe:

 ```js
 class Person {
     #name; // propriedade privada
     #age;  // propriedade privada
 
     constructor(name, age) {
         this.#name = name;
         this.#age = age;
     }

     // método público
     saudacao() {
         console.log(`Olá, me chamao ${this.#name}.`);
     }

     // método privado
     #idade() {
       console.log(`Eu tenho ${this.#age}`);
     }

     // método privado / público
     exibirIdade() {
       this.#idade(); // pode ser chamado ao executar: raphael.exibirIdade()
     }
 }

 const raphael = new Person("Raphael", 20);
 raphael.saudacao(); // "Olá, me chamo Raphael"

 // console.log(raphael.#name); ❌ Erro: propriedade privada ❌
 ```

 - **`Symbol`**<br/>
 Símbolos são valores primitivos únicos e imutáveis que nunca colidem com outros, mesmo que tenham a descrição idêntica, como por exemplo: `Symbol('x') !== Symbol('x')`. São usados principalmente como chaves de propriedades para evitar conflitos com outras propriedades no objeto. Se precisar de privacidade sem `#`, pode usar `Symbol`, que mantém as propriedades privadas sem expor os valores, porém ainda pode ser acessado com `Object.getOwnPropertySymbols()`, o que faz não ser um método tão seguro:
 ```js
 const _name = Symbol("name");
 const _age = Symbol("age");
 const _Age = Symbol("Age");

 class Person {
     constructor(name, age) {
         this[_name] = name;
         this[_age] = age;
     }
   
     saudacao() {
         console.log(`Olá, me chamo ${this[_name]}.`);
     }

     // método privado
     [_Age]() {
       console.log(`Eu tenho ${this[_age]}.`);
     }

     // método privado / público
     showAge() {
       this[_Age](); // pode ser chamado ao executar: raphael.showAge()
     }
 }

 const raphael = new Person("Raphael", 20);
 raphael.saudacao(); // "Olá, me chamo Raphael."
 raphael.showAge();  // "Eu tenho 20."

 // console.log(raphael[_name]); ❌ Erro: símbolo privado
 ```

 - **`WeakMap`**<br/>
 Outra abordagem é usar **`WeakMap`** para armazenar métodos privados, apesar de ser mais complexo e pouco intuitívo, era uma boa alternativa antes do surgimento de `#`, pois impedia acesso direto.  

 ```js
 const _metodos = new WeakMap();

 class Pessoa {
     constructor(nome) {
         this.nome = nome;
         
         _metodos.set(this, {
             saudacaoPrivada: () => console.log(`Olá, eu sou ${this.nome}.`)
         });
     }

     chamarSaudacao() {
         _metodos.get(this).saudacaoPrivada(); // ✅ Acessando método privado
     }
 }

 const p = new Pessoa("Rael");
 p.chamarSaudacao(); // "Olá, eu sou Rael."
 ```

 - **private functions in `constructor`**<br/>
 Outra abordagem para criar métodos privados é defini-los **dentro do `constructor`**. Apesar de conseguir impedir acesso direto ao método privado, cada instância criava uma nova cópia da função, o que consumia maior quantidade de memória.

 ```js
 class Pessoa {
     constructor(nome) {
         this.nome = nome;
 
         const saudacaoPrivada = () => {
             console.log(`Olá, eu sou ${this.nome}.`);
         };
 
         this.chamarSaudacao = () => {
             saudacaoPrivada(); // ✅ Método privado acessível apenas aqui
         };
     }
 }

 const p = new Pessoa("Raphael");
 p.chamarSaudacao(); // "Olá, eu sou Raphael."

 p.saudacaoPrivada(); // ❌ Erro: não existe fora do construtor
 ```

###### `super`
Utilizado para acessar o *objeto pai* de um objeto, em outros casos, é usado para acessar a classe pai de uma classe. Quando usada no **construtor** de uma classe, deve ser somente utilizado **uma única vez, e precisa ser declarado antes da palavra-chave `this`**. Um exemplo de uso que chama uma função e um objeto pai:
```js
// chama o objeto (ou construtor) pai
super(...[arguments]);
// chama um método da classe/objeto pai
super.metodo([arguments]);
```

- **`class`**<br/>
Aqui `super()` é chamado para evitar duplicar a parte do construtor que é comum entre `Polygon` e `Square`.
```js
class Polygon {
  constructor(height, width) {
    this.name = "Polygon";
    this.height = height;
    this.width = width;
  }
  sayName() {
    console.log(`Hi, I am a ${this.name}.`);
  }
}

class Square extends Polygon {
  constructor(length) {
    //this.height;  ReferenceError, precisa chamar o super primeiro!
    //this.width;   ReferenceError, precisa chamar o super primeiro!

    // aqui ele chama a classe construtora pai com o tamanho
    // provido pelo Polygon -> width e height
    super(length, length);

    // Nota: Em classes derivadas, super() deve ser chamado antes de `this`
    // Deixar isso de fora vai causar um ReferenceError.
    this.name = "Square";
  }

  get area() {
    return this.height * this.width;
  }

  set area(value) {
    this.Area = value;
  }
}

let square = new Square(3);
console.log(square.area) // 9
```

##### `arrays`
 São objetos regulares semelhantes a listas que possuem um número inteiro como índice começando em 0 e cada índice armazena seu respectivo valor podendo ser de qualquer tipo, incluindo outros arrays. Nem seu tamanho e tipos de elementos são fixos.<br/>
 Os `arrays` nos permitem trabalhar com conjuntos de valores e armazená-los em um único endereço de memória. Em JS, os valores do array **NÃO** necessitam ser do mesmo tipo. *A posição dos elementos começa sempre a partir de um índice 0.* Por padrão são *estruturas dinâmicas*, ou seja, seu tamanho pode ser alterado após a criação, no entanto, existem maneiras de criar `arrays` de *tamanho fixo*, os **arrays tipados**, que se apresentam de maneira semelhante a um array de buffer de dados binários subjacentes e oferecem muitos métodos de semântica equivalentes aos de arrays comuns. [`Typed Array`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Guide/Typed_arrays) é um termo abrangente para uma variedade de estruturas de dados, incluindo `Int8Array`, `Float32Array`, entre outros.
 
**CONSIDERAÇÕES SOBRE DECLARAÇÕES**<br/>
 Independente da forma escolhida para criar o array, podemos declará-los usando `var`, `let` ou `const`, porém existem algumas particularidades, vejamos:

 - **`let`**: Tem escopo de bloco e é **recomendado para a maioria dos casos**.
 - **`var`**: Tem escopo de função e sofre *hoisting*.
 - **`const`**: **Garante que a referência não será reatribuída**, *embora o conteúdo do array possa ser modificado*.
 
 Declaramos um `array` em JS das seguintes maneiras:

 1. **`array literal notation`**<br/>
 É a forma mais comum e recomendada para criar `arrays`, pois é simples e direta. Basta listar os elementos entre colchetes `[]` separados por vígulas `,`.
   ```js
   // podem ser inicializados durante a declaração:
   let qnt = [2, 3, 4, 5];
   console.log(qnt) // [ 1, 2, 3, 4 ]

   let fruits = ["pineapple", "orange", "banana", "apple"];
   console.log(fruits[3]) // apple

   let toBuy = [1, 'watermelon', true, null]; // mixed types

   let empty = []; // ou vazios
   empty.push("*", true, 3); // e populados durante a execução do programa
   console.log(empyt); // [ '*', true, 3 ]

   // é comum utilizarmos arrays para representar matrizes para criar tabelas ou grids por exemplo. Vejamos um exemplo simples de uma matriz 4x2:
   let invoice = [["pineapple", 2], ["orange", 3], ["banana", 4], ["apple", 5]];
   console.log(invoice[1][0]); // acessa o valor "orange": linha 1 coluna 0.

   invoice[1][0] = "kiwi"; // altera o valor na posição indicada
   console.log(invoice[1][0]); // kiwi
   console.log(invoice); // [ [ 'pineapple', 2 ], [ 'kiwi', 3 ], [ 'banana', 4 ], [ 'apple', 5 ] ]

   // além de outros arrays, arrays podem também armazenar objetos
   const produtos = [
     { nome: "Notebook", preco: 3000 },
     { nome: "Celular", preco: 1500 }
   ];

   console.log(`${produtos[0].nome}: R$ ${produtos[0].preco}`); // "Notebook"

   /* lembrando sempre que, a manipulação de matrizes ocorre sempre da esquerda para a direita na sua declaração
      variavel[linha][coluna]
      primeiro se acessa a linha da matriz e então na coluna indicamos qual dado queremos, exemplo:
      var variavel = [
          col0                               col1
       l0 ["linha_0, coluna_0 = celula_0-0", "linha_0, coluna_1 = celula_0-1"],
       l1 ["linha_1, coluna_0 = celula_1-0", "linha_1, coluna_1 = celula_1-1"],
       l2 ["linha_2, coluna_0 = celula_2-0", "linha_2, coluna_1 = celula_2-1"]
      ]
      console.log(variavel[0][1]) // linha_0, coluna_1 = celula_0-1
   */
   ```

 1. **`array constructor`**<br/>
 É possível criar um array usando a função construtora `Array`. Essa abordagem permite passar os elementos como argumentos ou definir diretamente o tamanho do array. **Uma observação importante, é que quando se passa um único número para o construtor, o valor representa o tamanho do array e não um elemento.**
 ```js
 // Passando os elementos como argumentos:
 let cores = new Array('vermelho', 'verde', 'azul');
 console.log(cores); // ["vermelho", "verde", "azul"]

 // Criando um array com tamanho definido (caso seja passado apenas um número):
 let tamanho = new Array(3);
 console.log(tamanho); // [ <3 empty items> ]
 // Atenção: new Array(3) cria um array com 3 "slots" vazios.
 ```

 3. **`array.of`**<br/>
 O método estático `Array.of()` cria um novo array a partir de um número variável de argumentos, independentemente do número e tipo dos argumentos. Essa forma evita a ambiguidade do construtor quando é passado um único número.
 ```js
 let numerosOf = Array.of(7); // Cria um array com um único elemento: [7]
 let mistoOf = Array.of(1, 'dois', true);
 console.log(numerosOf); // [7]
 console.log(mistoOf);   // [1, "dois", true]
 ```

 4. **`array.from`**<br/>
 O método estático `Array.from()` cria um novo array a partir de um objeto iterável ou de um objeto semelhante a array. Ele é muito útil para converter strings, NodeLists, ou outros iteráveis em arrays.
 ```js
 // Convertendo uma string em array de caracteres:
 let letras = Array.from('JavaScript');
 console.log(letras);
 // Resultado: ["J", "a", "v", "a", "S", "c", "r", "i", "p", "t"]

 // Usando um objeto iterável (exemplo com Set)
 let numerosSet = new Set([1, 2, 3, 4]);
 let arraySet = Array.from(numerosSet);
 console.log(arraySet); // [1, 2, 3, 4]

 // Aplicando uma função de mapeamento para cada elemento
 let dobro = Array.from([1, 2, 3], x => x * 2);
 console.log(dobro); // [2, 4, 6]
 ```

 5. **`typed arrays`**<br/>
 Além dos objetos tipo `Array` normais, o JS também oferece arrays tipados para manipulação de dados numéricos em buffers binários, úteis em contextos como processamento gráfico ou WebGL. Eles são especialmente úteis quando o desempenho é crucial, pois oferecemm forma eficiente de manipular dados binários e realizar operações numéricas de alto desempenho – neste caso, se tentarmos atribuir um valor que não seja numérico, este será convertido para um número de acordo com as regras de conversão do JS ou poderá resultar em `NaN` se a conversão não for possível. **Cada um dos typed arrays trabalham com tamanhos fixos, definidos no momento de sua criação, e oferem métodos específicos para manipulação de dados binários.**

 - **Int8Array**: Array de inteiros com 8 bits ***com* sinal** – **ou seja, pode representar números negativos e positivos. Geralmente, seu intervalo vai de -128 a 127, pois um dos 8 bits é usado para o sinal**.
 - **Uint8Array**: Array de inteiros com 8 bits ***sem* sinal** – **só armazena valores NÃO negativos, ou seja, números sem sinal, com um intervalo de 0 a 255**.
 - **Uint8ClampedArray**: Similar ao Uint8Array, porém os valores são *"limitados"* – **clamped** – **entre 0 e 255**.
 - **Int16Array**: Array de inteiros com 16 bits ***com* sinal**.
 - **Uint16Array**: Array de inteiros com 16 bits ***sem* sinal**.
 - **Int32Array**: Array de inteiros com 32 bits ***com* sinal**.
 - **Uint32Array**: Array de inteiros com 32 bits ***sem* sinal**.
 - **Float32Array**: Array de números de ponto flutuante com precisão **simples** (32 bits).
 - **Float64Array**: Array de números de ponto flutuante com precisão **dupla** (64 bits).
 - **BigInt64Array**: Array de inteiros de 64 bits ***com* sinal,** utilizando o tipo BigInt.
 - **BigUint64Array**: Array de inteiros de 64 bits ***sem* sinal**, utilizando o tipo BigInt.

 Sua declaração é simples:
 ```js
 // Criando um array de inteiros com 4 posições:
 let inteiros = new Int16Array(4);
 console.log(inteiros); // [0, 0, 0, 0]

 // Criando e inicializando um array tipado:
 let floatArray = new Float32Array([1.5, 2.5, 3.5]);
 console.log(floatArray); // Float32Array [1.5, 2.5, 3.5]
 ```

##### COLEÇÕES CHAVEADAS
São estruturas que armazenam dados com base em chaves, diferente dos objetos, essas coleções permitem que qualquer valor seja usado como chave, incluindo objetos. `Map()` e `WeakMap()` usam objetos como chave, enquanto `Set()` e `WeakSet()` armazenam os objetos diretamente, mas estes não se repetem.

###### [`Map()`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Map)
Este objeto contém pares de chave-valor e grava a ordem original da inserção das chaves. Qualquer tipo pode ser usado como chave ou valor.
```js
const map = new Map();

const chaveObjeto1 = { id: 1 };
map.set(chaveObjeto1, "valor 1");

console.log(map.get(chaveObjeto1)); // "valor 1"
console.log(map.has(chaveObjeto1)); // true
console.log(map.has("valor 1"));    // false

console.log(map);                 // Map(1) { { id: 1 } => 'valor 1' }
console.log(`size: ${map.size}`); // size: 1

map.delete(chaveObjeto1);
console.log(map.has("valor 1"));    // false
console.log(map.has(chaveObjeto1)); // false

console.log(`\n----------\n`);

const chaveObjeto2 = { id: 2 };
map.set("valor 2", chaveObjeto2);

console.log(map.get("valor 2"));    // { id: 2 }
console.log(map.has(chaveObjeto2)); // false
console.log(map.has("valor 2"));    // true

map.delete("valor 2");
console.log(map.has("valor 2"));    // false

// HashMap
const dicionario = new Map();
dicionario.set("nome", "Raphael");
dicionario.set("idade", 27);

console.log(dicionario.get("nome")); // Raphael

```

###### [`WeakMap()`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/WeakMap\)
Estrutura de armazenamento de dados semelhante ao `Map()`, porém não é iterável, aceita apenas objetos como chave e estes objetos não não impedidos de serem coletados pelo *garbage collector*.
```js
const weakMap = new WeakMap();

let obj = { nome: "Raphael" };
weakMap.set(obj, "valor associado");

console.log(weakMap.get(obj)); // valor associado

obj = null; // permite o objeto ser coletado pelo garbage collector
```

###### [`Set()`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Set)
Um conjunto é uma estrutura de dados em formato de lista não ordenada, que contém apenas elementos únicos — sem chave *explícita* — onde não é possível repetir o valor de um elemento do mesmo tipo dentro deste conjunto.
```js
// recebendo uma lista de valores
const lista = [1, 1, 5, 1, 3, 7, '5', 9];
const conjunto = new Set(lista);

console.log(conjunto); // Set(6) { 1, 5, 3, 7, '5', 9 }

// métodos de set
const set = new Set();

set.add(1);
set.add(2);
set.add(1); // não será adicionado de novo

console.log(set); // Set { 1, 2 }
```

###### [`WeakSet()`](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/WeakSet)
Estrutura semelhante ao `Set()` que difere em apenas aceitar objetos na coleção e não impedir que sejam descartados.
```js
const weakSet = new WeakSet();

let user = { nome: "Déborah" };
weakSet.add(user);

console.log(weakSet.has(user));    // true
console.log(weakSet.delete(user)); // valor deletado da lista
console.log(weakSet.has(user));    // false

user = null;                    // o objeto pode ser limpo da memória automaticamente
console.log(weakSet.has(user)); // false
```

### EXPRESSÕES
Uma expressão consiste em qualquer unidade válida de código que é resolvida como um valor. Conceitualmente, existem 2 tipos de expressões, aquelas que **atribuem** um valor a uma variável e aquelas que simplesmente **possuem** um valor.<br/>
A expressão `x = 0` é um exemplo de uma atribuição, esta expressão utiliza o operador `=` para atribuir o valor `0` à variável `x`. A expressão em si é avaliada como `0`.<br/>
Já `5 + 9` é um exemplo do segunto tipo de expressão, esta expressão utiliza o operador `+`para somar `5` e `9` sem atribuir o resultado a uma variável. O JavaScript possui as seguintes categorias de expressão:
- **Atribuição**: atribuição de valores.
  - **`=`**
- **Aritmética**: é avaliada como um número, por exemplo 3.14.
  - **`+`** (manutenção de sinal positivo / adição)
  - **`-`** (manutenção de sinal negativo / subtração)
  - **`/`**
  - **`*`**
  - **`**`**
  - **`%`**
  - *podem ser usadas em conjunto com expressões de atribuição*
    - **`++`**
    - **`--`**
    - **`+=`**
    - **`-=`**
    - **`*=`**
    - **`**=`**
    - **`/=`**
    - **`%=`**
- **String**: é avaliada como uma string de caracteres, por exemplo, "Raphael" ou "1359".
  - **`''`**
  - **`""`**
- **Lógica**: é avaliada como `true` ou `false`.
  - **`>`**
  - **`>=`**
  - **`<`**
  - **`<=`**
  - **`==`**
  - **`===`**
  - **`!=`**
  - **`!==`**
- **Primárias**: palavras reservadas e expressões gerais.
  - **`new`**
  - **`this`**
  - **`super`**

### OPERAÇÕES
 Os comandos, instruções e variáveis não serviriam de nada se não fosse possível manipular os dados recebidos, e, para transformá-los em informação útil, usamos os `operadores`. Eles permitem que os programas realizem cálculos complexos e tomem decisões lógicas com base em comparações e outros tipos de condições. São eles:
 - **unários**: Operam sobre **1 único parâmetro, alterando seu próprio valor**.
 - **binários**: Operam sobre **2 ou mais parâmetros sem alterá-los para obter um resultado que é um novo valor**.
 - **lógicos**: **Comparam as relações entre 2 ou mais valores para verificar uma condição**, retornando `true` ou `false`.
   - **bool**: `var condition === satisfied ? true : false`
   - **string**: `var string === "" ? true : false`
   - **number**: `var number === 0 ? 1 : 0`
 - **bitwise**: **Realizam operações aritméticas manipulando diretamente os `bits` de números inteiros**, retornando sempre um número, mas gerado através de operações binárias. Ou seja, são operadores que trabalham diretamente na manipulação binária dos números gerando um valor numérico como resultado.

#### OPERADORES
O JavaScript possui tanto operadores **binários** quanto **unários** e um operador **ternário** — o operador condicional.<br/>
Um operador **binário** exige **2** operandos, um _antes_ **do operador** _e outro_ **depois**.<br/>
Um operador **unário** exige **um único** operando, _seja antes_ **ou** _depois_ **do operador**.<br>
Um **operador de atribuição** atribui um valor ao operando à sua esquerda baseado no valor do operando à direita. O operador de atribuição básico é o `=`, que atribui o valor do operando à direita ao operando à esquerda. Isto é: `x = y`, atribui o valor de `y` a `x`.<br/>
Os outros operadores de atribuição são encurtamentos de operadores padrão, como mostrado na tabela a seguir.
<pre>
OPERADORES UNÁRIOS                                      OPERADORES BINÁRIOS
- positivo......................(+): +a                 - atribuição....................(=): a = b
- negativo......................(-): -a                 - adição........................(+): a + b
- incremento...................(++): ++a | a++ (a + 1)  - subtração.....................(-): a - b
- decremento...................(--): --a | a-- (a - 1)  - divisão.......................(/): a / b
                                                        - multiplicação.................(*): a * b
                                                        - módulo........................(%): a % b
                                                        - potenciação..................(**): a ** b
                                                        - adição e atribuição..........(+=): a += 5 (a = a + 5)
                                                        - subtração e atribuição.......(-=): a -= 5 (a = a - 5)
                                                        - multiplicação e atribuição...(*=): a *= 5 (a = a * 5)
                                                        - potenciação e atribuição....(**=): a **= 5 (a = a ** 5)
                                                        - divisão e atribuição.........(/=): a /= 2 (a = a / 2)
                                                        - módulo e atribuição..........(%=): a %= 2 (a = a % 2)
</pre>

**Operadores aritméticos** tomam valores numéricos (sejam literais ou variáveis) como seus operandos e retornam um único valor numérico. Estes operadores trabalham da mesma forma como na maioria das linguagens de programação quando utilizados com números de ponto flutuante, porém no JS em particular, a divisão por zero produzirá um `NaN`:
<pre>
                                            ORDEM HIERARQUICA
OPERADOR          OPERAÇÃO             TIPO        PRIORIDADE MATEMÁTICA     TIPO DE RETORNO DE RESULTADO
   +         MANUTENÇÃO DE SINAL      UNÁRIO                1                          POSITIVO
   -          INVERSÃO DE SINAL       UNÁRIO                1                          NEGATIVO
  ( )     MANUTENÇÃO DE PRIORIDADE    BINÁRIO               1           INTEIRO OU REAL / POSITIVO OU NEGATIVO
 ^ / **         POTENCIAÇÃO           BINÁRIO               2                       INTEIRO OU REAL
   /              DIVISÃO             BINÁRIO               3                            REAL
   /              DIVISÃO             BINÁRIO               4                          INTEIRO
   %               MÓDULO             BINÁRIO               3                          INTEIRO
   *           MULTIPLICAÇÃO          BINÁRIO               3                       INTEIRO OU REAL
   +               ADIÇÃO             BINÁRIO               4                       INTEIRO OU REAL
   -              SUBTRAÇÃO           BINÁRIO               4                       INTEIRO OU REAL
</pre>

Um **operador de comparação** compara seus operandos e retorna um valor lógico baseado no resultado da expressão. Os operandos podem ser numéricos, strings, lógicos ou objetos.<br/>
Strings são comparadas com base em **ordenação lexográfica**, utilizando valores de **Unicode**.<br/>
Na maioria dos casos, se 2 operandos não são do mesmo tipo, o JS tenta convertê-los para um tipo apropriado. Isto geralmente resulta na realização de uma comparação numérica. As únicas exceções a esta regra são os operadores `===` e `!==`, que realizam comparações de igualdade e tipo *estritas*. Estes operadores não tentam converter os operandos em tipos compatíveis antes de verificar a igualdade. A tabela a seguir descreve os operadores de comparação:
<pre>
- maior.......................................(>): 1 > 0
- maior ou igual.............................(>=): 1 >= 1
- menor.......................................(<): 0 < 1
- menor ou igual.............................(<=): 0 <= 0
- comparação de igualdade de valor...........(==): A == a
- comparação de valor e tipo................(===): A === A
- comparação de diferença de valor...........(!=): a != b
- comparação de diferença de valor e tipo...(!==): a !== b
</pre>

**Operadores lógicos** são utilizados tipicamente com valores lógicos, neste caso, retornam um valor booleano. Entretanto, os operadores `&&` e `||` na verdade retornam o valor de um dos operandos especificados, de forma que se esses operadores forem utilizados com valores não-booleanos, eles possam retornar um valor não-booleano. Os operadores lógicos são descritos na seguinte tabela:
- **AND `&&`**: `true && true` - Retorna `var1` caso possa ser convertido para _falso_; senão, retorna `var2`. Assim, quando utilizado com valores booleanos, `&&` retorna _verdadeiro_ caso **ambos operandos sejam verdadeiros**; _caso contrário_, **retorna falso**.
- **OR `||`**: `true || false` - Retorna `var1` caso possa ser convertido para _verdadeiro_; senão, retorna `var2`. Assim, quando utilizado com valores booleanos, `||` retorna _verdadeiro_ caso **ambos os operandos sejam verdadeiros**; _se ambos forem falsos_, **retorna falso**.
- **NOT `!`**: `!true (false)` - **Retorna falso** _caso o único operando possa ser convertido para verdadeiro_; **senão**, _retorna verdadeiro_.

Exemplos de expressões que podem ser convertidas para `false` são aquelas que são avaliados como `null`, `0`, `string vazia ("")` ou `undefined`. O código a seguir mostra exemplos de operadores lógicos.
```js
// AND - &&
var a1 = true && true;    // t && t retorna true
var a2 = true && false;   // t && f retorna false
var a3 = false && true;   // f && t retorna false
var a4 = false && 3 == 4; // f && f retorna false
var a5 = "Gato" && "Cão"; // t && t retorna Cão
var a6 = false && "Gato"; // f && t retorna false
var a7 = "Gato" && false; // t && f retorna false

// OR - ||
var o1 = true || true;    // t || t retorna true
var o2 = false || true;   // f || t retorna true
var o3 = true || false;   // t || f retorna true
var o4 = false || 3 == 4; // f || f retorna false
var o5 = "Gato" || "Cão"; // t || t retorna Gato
var o6 = false || "Gato"; // f || t retorna Gato
var o7 = "Gato" || false; // t || f retorna Gato

// NOT - !
var n1 = !true; // !t retorna false
var n2 = !false; // !f retorna true
var n3 = !"Gato"; // !t retorna false
```

Outro operador **relacional de comparação** é o **`in`**, que retorna verdadeiro se a propriedade especificada estiver em determinado objeto.
```js
valorPropriedade in nomeObjeto
```
Onde `valorPropriedade` pode ser uma string ou expressão numérica que representa um nome de propriedade ou um índice de array, e `nomeObjeto` é o nome de um objeto para a realização da verificação de seu conteúdo. Os exemplos a seguir mostram alguns usos deste operador:
```js
// Arrays
var arvores = new Array(
  "pau-brasil",
  "loureiro",
  "cedro",
  "carvalho",
  "sicômoro",
);
0 in arvores; // retorna verdadeiro
3 in arvores; // retorna verdadeiro
6 in arvores; // retorna falso
"cedro" in arvores;  // retorna falso, deve ser SEMPRE ESPECIFICADO UM NÚMERO DE ÍNDICE, NÃO O VALOR CONTIDO NO ÍNDICE
"length" in arvores; // retorna verdadeiro (length é uma propriedade de Array)

// Objetos predefinidos
"PI" in Math; // retorna verdadeiro
var minhaString = new String("coral");
"length" in minhaString; // retorna verdadeiro

// Objetos personalizados
var meucarro = { marca: "Honda", modelo: "Accord", ano: 1998 };
"marca" in meucarro;  // retorna verdadeiro
"modelo" in meucarro; // retorna verdadeiro
```

**Operadores bit a bit** tratam seus operandos como um conjunto de **`32 bits`**. Por exemplo, o número decimal 9 possui uma representação binária `1001`. **Operadores bit a bit realizam suas operações nestas representações, mas retornam valores numéricos padrões do JS.**

Como expressões lógicas são avaliadas sempre da esquerda para a direita, elas são testadas como possíveis *avaliações de "curto-circuito"* utilizando as seguintes regras:
- **`false &&`** _`qualquercoisa`_: é avaliado em curto-circuito como **`false`**.
- **`true ||`** _`qualquercoisa`_: é avaliado em curto-circuito como **`true`**.

As regras de lógica garantem que estas avaliações estejam sempre corretas. Repare que a variável *`qualquercoisa`* das expressões acima não é avaliada, de forma que qualquer efeito colateral de fazê-lo não produz efeito algum.

Conceitualmente, os **operadores bit a bit lógicos** funcionam da seguinte maneira:<br/>
Os operandos são convertidos em inteiros de 32 bits e expressos como uma série de bits. Números com representação maior que 32 bits terão seus bits truncados. Por exemplo, o seguinte inteiro tem representação binária maior que 32 bits será convertido em um inteiro de 32 bits.<br/>
Cada bit do 1º operando é pareado com o bit correspondente do 2º operando: 1º bit com 1º bit, 2º bit com 2º bit e assim por diante. O operador é aplicado a cada par de bits e o resultado é construído bit a bit.
```makefile
Antes: 11100110111110100000000000000110000000000001
Depois:            10100000000000000110000000000001
```
As operações lógicas possíveis são:
- **AND `&`**: `(bit == 1 & bit == 1) 1 <> (bit == 0 & bit == 1) 0` - Retorna `1` para cada posição em que os bits da posição correspondente de ambos operandos sejam `1`.
- **OR `|`**: `(bit == 0 & bit == 1) 1 <> (bit == 0 & bit == 0) 0 `- Retorna `0` para cada posição em que os bits da posição correspondente de ambos operandos sejam `0`.
- **XOR `^`**: `(bit == 1 & bit == 1) 0 <> (bit == 0 & bit == 1) 1` - Retorna `0` para cada posição em que os bits da posição correspondente são os mesmos, e, retorna `1` para cada posição em que os bits da posição correspondente sejam diferentes.
- **NOT `~`**: `bit = 1010 ~ bit = 0101` - Inverte os bits do operando.

Por exemplo, a representação binária de 9 é `1001` e a representação binária de 15 é `1111`. Desta forma, quando operadores bit a bit são aplicados a estes valores, os resultados são como se segue:

| Expressão | Resultado | Descrição binária                                 |
|-----------|-----------|---------------------------------------------------|
| `15 & 9`  | `9`       | `1111 & 1001 = 1001`                              |
| `15 \| 9` | `15`      | `1111 \| 1001 = 1111`                             |
| `15 ^ 9`  | `6`       | `1111 ^ 1001 = 0110`                              |
| `~15`     | `-16`     | `~ 0000 0000 … 0000 1111 = 1111 1111 … 1111 0000` |
| `~9`      | `-10`     | `~ 0000 0000 … 0000 1001 = 1111 1111 … 1111 0110` |

Os **operadores de deslocamento bit a bit** possuem 2 operandos: **o 1º é a quantidade a ser deslocada**, _e o 2º especifica o número de posições binárias as quais o primeiro operando deverá ser deslocado_. **A direção da operação de deslocamento é controlada pelo operador utilizado.**<br/>
Operadores de deslocamento convertem seus operandos em inteiros de 32 bits e retornam um resultado do mesmo tipo do operando à esquerda.
- **LEFT SHIFT `<<`**: **Desloca** `var` em representação binária `n` bits _à esquerda_, preenchendo com `0` _à direita_.
- **RIGHT SHIFT `>>`**: **Desloca** `var` em representação binária `n` bits _à direita_, _descartando bits excedentes e preenchendo com `1` à esquerda_.
- **RIGHT FILL SHIFT `>>>`**: **Desloca** `var` em representação binária `n` bits _à direita_, _descartando bits excedentes e preenchendo com `0` à esquerda_.
<pre>
- LEFT SHIFT 0.....(<<):  bit(5) = 00000101 <<  3 : bit(40) = 00101000  -  bit(-5) = 11111011 <<  3 : bit(-40) = 11011000
- RIGHT SHIFT 1....(>>):  bit(5) = 00000101 >>  3 : bit(0)  = 00000000  -  bit(-5) = 11111011 >>  3 : bit(-1)  = 11111111
- RIGHT SHIFT 0...(>>>):  bit(5) = 00000101 >>> 3 : bit(0)  = 00000000  -  bit(-5) = 11111011 >>> 3 : bit(31)  = 00011111
</pre>

Operadores bitwise são especialmente úteis para lidar com números sem a necessidade de muitas variáveis e códigos complexos, este é um exemplo de troca de valores entre 2 variáveis sem criar uma 3ª:
```js
let a = 5;  // 101 em binário
let b = 3;  // 011 em binário

a = a ^ b;  // a agora é 6 (110)
b = a ^ b;  // b agora é 5 (101) → valor original de a
a = a ^ b;  // a agora é 3 (011) → valor original de b

console.log(a, b); // 3, 5
```

O **operador condicional ternário `?`** é o único operador que utiliza 3 operandos, podendo ter 1 de 2 valores baseados no resultado da condição:
```js
condicao ? valor_se_verdadeiro : valor_se_falso;
```

Se `condicao` for verdadeira, o operador terá o valor de `valor_se_verdadeiro`. Caso contrário, terá o valor de `valor_se_falso`. É possível utilizar o operador condicional em qualquer lugar onde utilizaria um operador padrão. Por exemplo:

**atribuição de variável**
```js
var status = idade >= 18 ? "adulto" : "menor de idade";
```

**Diferenças entre Condições Combinadas: Ternário `?` x Nullish Coalescing `??` x OR `||` x AND `&&`**
| operador | operação                                                                     | exemplo                         |
|----------|----------------------------------------------------------------------------- |---------------------------------|
| `? :`    | Avaliar condição booleana.                                                   | `idade >= 18 ? "ok" : "negado"` |
| `&&`     | Avalia se uma condição é *truly* e executa o comando seguinte caso positivo. | `valor && "default"`            |
| `??`     | Verificar se o valor é `null` ou `undefined`.                                | `valor ?? "default"`            |
| `\|\|`   | Verificar se o valor é *falsy*: `0`, `""`, `false`, `null`, `undefined`.     | `valor \|\| "default"`          |

Essas estruturas são *alternativas ao ternário* quando se quer **executar algo apenas se uma condição for verdadeira**:
```js
console.log(0 ?? "default"); //         0 - porque o resultado não é `null` ou `undefined`
console.log(0 && "default")  //         0 - porque o resultado é truly
console.log(0 || "default"); // "default" - porque 0 é falsy
```

Por exemplo:
```js
// &&
let show = true;
show && console.log("show"); // show

show = false;
show && console.log("show"); // console.log() não é executado

/* ----- */ 

let age = 18;
const access = age >= 18 && "OK";
console.log(access); // OK

age = 17;
const ACCESS = age >= 18 && "OK";
console.log(ACCESS); // false


// ||
let username;
const name = username || "anon";
console.log(name); // anon

username = "raphaelkaique1"
const NAME = username || "anon";
console.log(NAME); // raphaelkaique1
```

**condicional simples**
```js
let isAdmin = true;
let mensagem = "Usuário " + (isAdmin ? "Admin" : "Comum");
console.log(mensagem); // Usuário Admin
```

**Template Strings**
```js
console.log(`Status: ${idade >= 18 ? "Adulto" : "Menor"}`);
```

**aninhado**
```js
let nota = 75;
let situacao = nota >= 90 ? "Aprovado com louvor" :
               nota >= 60 ? "Aprovado" : "Reprovado";

console.log(situacao); // "Aprovado"
```

**chamada de função condicional**
```js
let num = 10;
let resultado = num % 2 === 0 ? par() : impar();

function par() {
  return "Número par.";
}

function impar() {
  return "Número ímpar.";
}

console.log(resultado); // "Número par."
```

**retorno em função**
```js
function podeDirigir(idade) {
  return idade >= 18 ? "Pode dirigir." : "Não pode dirigir.";
}

console.log(podeDirigir(16)); // "Não pode dirigir."
console.log(podeDirigir(20)); // "Pode dirigir."
```

**execução curta de código**
```js
true ? console.log("Executado!") : null; // "Executado!"
false ? console.log("Não será executado.") : null;
// ou ainda:
let isLogged = "Logged"; // == let isLogged = true;
isLogged ? console.log("Bem-vindo!") : console.warn("Acesso negado."); // Bem-vindo!
```

**nested ternary**
```js
const nota = 7;
const resultado = nota >= 7 ? "Aprovado" : nota >= 5 ? "Recuperação" : "Reprovado";
```

Outro possível uso para o operador **`?`** é avaliar expressões de encadeamento **`?.`**, funciona como um **`optional chaining`** _verificando se o valor anterior é **`null`** ou **`undefined`** antes de tentar acessar a propriedade ou índice seguinte_.

É equivalente a um *shorthand* de `if`:
```js
let a = ["true"];
console.log(a[0]?.split('')); // [ 't', 'r', 'u', 'e' ]
console.log(a[1]?.split('')); // undefined

console.log(a[1].split('')); /* isso resultará em um erro, pois a função `split()` não consegue acessar um valor válido
                 ^
TypeError: Cannot read properties of undefined (reading 'split')
    at Object.<anonymous> (/home/ralph/Dev/.env/js/main.js:33:18)
    at Module._compile (node:internal/modules/cjs/loader:1730:14)
    at Object..js (node:internal/modules/cjs/loader:1895:10)
    at Module.load (node:internal/modules/cjs/loader:1465:32)
    at Function._load (node:internal/modules/cjs/loader:1282:12)
    at TracingChannel.traceSync (node:diagnostics_channel:322:14)
    at wrapModuleLoad (node:internal/modules/cjs/loader:235:24)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:171:5)
    at node:internal/main/run_main_module:36:49

Node.js v22.16.0 */

// equivalente `if`
a[1] ? console.log(a[1].split('')) : console.log(typeof a[1]); // undefined
```

Essa abordagem é útil para evitar erros em acesso de estruturas aninhadas incertas, como por exemplo:
```js
user?.profile?.avatar?.url
```
Se `user`, `profile`, ou `avatar` forem `undefined`, isso não quebra o código.

- **`?.()` – chamada condicional de função**: chama uma função apenas se ela existir – ou seja, se ela não for `null` ou `undefined`. Se a função **não** existir, retorna `undefined` sem laçar um erro.
```js
const usuario = {
  nome: "Raphael",
  saudacao: function () {
    return "OK";
  }
};

console.log(usuario.saudacao?.());  // "OK"
console.log(usuario.despedida?.()); // undefined (sem erro)

console.log(usuario.despedida());   // Error: usuario.despedida is not a function
```

- **`?.[]` – acesso condicional de índice**: acessa um índice ou propriedade de um objeto somente se ele existir, evitando erros ao tentar acessar propriedades de objetos que podem ser `null` ou `undefined`.
```js
const dados = {
  cliente: {
    nome: "Raphael"
  }
};

console.log(dados.cliente?.["nome"]);  // "Raphael"
console.log(dados.endereco?.["rua"]);  // undefined (sem erro)

console.log(dados.endereco["rua"]);    // Error: Cannot read properties of undefined
```

**O `operador vírgula` simplesmente avalia ambos de seus operandos e _retorna o valor do 2º_.** Este operador é utilizado primariamente dentro de um laço `for` para permitir que multiplas variáveis sejam atualizadas cada vez através do laço.<br/>
Por exemplo, se `a` é uma matriz bidimensional com 10 elementos em um lado, o código a seguir utiliza o operador vírgula para incrementar 2 variáveis de uma só vez (ao invés de realizar um _`for` aninhado_):
```js
let a = [
    ["\\", "-", "-", "-", "-", "-", "-", "-", "-", "-"],
    ["-", "\\", "-", "-", "-", "-", "-", "-", "-", "-"],
    ["-", "-", "\\", "-", "-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "\\", "-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "x", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "\\", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-", "\\", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-", "-", "\\", "-", "-"],
    ["-", "-", "-", "-", "-", "-", "-", "-", "\\", "-"],
    ["-", "-", "-", "-", "-", "-", "-", "-", "-", "\\"],
]
let space = "";

for (var i = 0, j = 0; i <= 9; i++, j++)
  //console.log("a[" + i + "][" + j + "]= " + a[i][j]);
  console.log(`${space+=" "} ${a[i][j]}`)
/*
  \
   \
    \
     \
      x
       \
        \
         \
          \

  l  c
a[0][0]= \
a[1][1]= \
a[2][2]= \
a[3][3]= \
a[4][4]= x
a[5][5]= \
a[6][6]= \
a[7][7]= \
a[8][8]= \
a[9][9]= \
*/
```

#### DELETE
Apaga um _objeto_, uma _propriedade de um objeto_, um _elemento no índice especificado de uma matriz_ e variáveis declaradas **implicitamente**. Quando utilizado para apagar um elemento de um `array`, **seu tamanho não é afetado**, pois não apaga a posição e sim o valor do conteúdo, por exemplo, se `a[0]` for `deleted`, o valor de `a[1]` ainda estará na posição `a[1]`, enquanto `a[0]` passa a ser `undefined`.
```js
delete nomeObjeto;
delete nomeObjeto.propriedade;
delete nomeObjeto[indice];
delete propriedade; /* válido apenas dentro de uma declaração with - porém, este método foi descontinuado
mas segue exemplo a título de conhecimento: */
let obj = { a: 1, b: 2, c: 3 };

with (obj) {
  delete a;  // Deleta a propriedade 'a' de obj
  console.log(b); // Acessa 'b' diretamente sem precisar de 'obj.b'
}

console.log(obj); /*
2 (valor em b)
{ b: 2, c: 3 } (a foi deletado) */

// outros exemplos
x = 42;
var y = 43;
let z = 44;
console.log(`${delete x}`); // retorna true (pode apagar se declarado implicitamente)
console.log(`${delete y}`); // retorna false (não pode apagar se declarado com explicitamente)
console.log(`${delete z}`); // retorna false (não pode apagar se declarado com explicitamente)

let obj = new Number();              // criando um objeto explícito
meuobj = new Number();               // criando um objeto implícito
meuobj.one = 1;                      // cria a propriedade `one`
console.log(`${delete meuobj.one}`); // retorna true (pode apagar propriedades definidas pelo usuário)
console.log(`${delete meuobj}`);     // retorna true (pode apagar se declarado implicitamente)
console.log(`${delete obj}`);        // retorna false (não pode apagar se declarado explicitamente)

console.log(`${delete Math.PI}`); // retorna false (não pode apagar propriedades predefinidas)

// exemplo com array
var arvores = new Array(
  "pau-brasil",
  "loureiro",
  "cedro",
  "carvalho",
  "sicômoro",
);
delete arvores[0];
!(0 in arvores) && console.log(`${arvores} | Index: ${arvores.length}`); // "undefined",loureiro,cedro,carvalho,sicômoro | Index: 5
console.log(arvores); // [ <1 empty item>, 'loureiro', 'cedro', 'carvalho', 'sicômoro' ]
/* entretanto este método é desencorajado
caso haja a necessidade de que o índice do array se mantenha mas tenha um valor indefinido
basta atribuir `undefined` ao invés de utilizar o operador `delete` neste caso: */

var arvores = new Array(
  "pau-brasil",
  "loureiro",
  "cedro",
  "carvalho",
  "sicômoro",
);

arvores[3] = undefined;
(3 in arvores) && console.log(`${arvores} | Index: ${arvores.length}`); // pau-brasil,loureiro,cedro,"undefined",sicômoro | Index: 5
console.log(arvores) // [ 'pau-brasil', 'loureiro', 'cedro', undefined, 'sicômoro' ]
```

#### VOID
Especifica que uma expressão deve ser avaliada **sem retorno** de valor, ou seja, executa uma expressão e sempre retorna **`undefined`**, independentemente do valor da expressão. Em contexto mais antigos, utilizar apenas `undefined` podia ser sobrescrito, porém, `void 0` **sempre** retorna `undefined` e não pode ser manipulado.
```js
void expressao
// ou
void (expressao)
```

Por exemplo:
```js
let x = 10;
console.log(void x); // undefined (x é avaliado, mas valor é descartado)

console.log(typeof void 42); // 'undefined'
```

Ele avalia a expressão informada, mas descarta o valor de retorno, sempre retornando `undefined`.
```js
void 0         // retorna undefined
void (1 + 2)   // avalia 1 + 2 (resultado: 3), mas retorna `undefined`
```

Muito usado para redirecionamento de links:
```html
<!-- no exemplo abaixo, impede que o navegador tente navegar para algum endereço ou recarregue a página. -->
<a href="javascript:void(0)">nada acontece</a>

<!-- o código a seguir cria um link de hipertexto que submete um formulário quando clicado -->
<a href="javascript:void(document.form.submit())">enviar</a>
```

Também quando é necessário executar expressões mas sem utilizar espaço de memória com valores retornados desnecessários.
```js
let resultado = void funcaoImportante();
console.log(resultado); // undefined, mesmo que a função tenha retorno

void console.log("Isso será executado, mas sempre retorna undefined!");

// criação e execução de funções
function logMessage() {
  console.log("Mensagem importante!");
  return "Esse retorno será ignorado";
}
let resultado = void logMessage();
console.log(resultado); // undefined

// ou
function semRetorno() {
  return void "Isso não será retornado";
}
console.log(semRetorno()); // undefined
```

Ou para criar valores constantes que explicitamente não devem armazenar valores válidos:
```js
const SEM_VALOR = void 0;
console.log(SEM_VALOR); // undefined
```

Outro uso para ele pelo navegador é a sua utilização para criar *bookmarklets*, executando pequenos scripts que podem ser salvos como favoritos e executados diretamente no navegador. O código a seguir pode ser colado no campo URL e salvo como favorito, e, ao ser clicado é executado, sem o `void` o browser pode tentar navegar para a string retornada pela expressão, quebrando o script:
```js
javascript:void(document.body.style.backgroundColor="lightblue");
```

E por fim, utilizado na criação de funções auto executáveis de forma segura nas chamadas **IIFE - Immediately Invoked Function Expressions**, garantindo que não retornem nada durante o carregamento de algum script da página enquanto loading por exemplo. Sem `void`, a função poderia retornar um valor que acidentalmente poderia ser usado:
```js
void (function() {
  console.log("Isso é executado automaticamente!");
})();
```

#### `instanceof`
Retorna verdadeiro se o objeto especificado for do tipo de determinado objeto. A sintaxe é:
```js
nomeObjeto instanceof tipoObjeto;
```
Onde `nomeObjeto` é o nome do objeto a ser comparado com `tipoObjeto`, e `tipoObjeto` é um tipo de objeto como `Date` ou `Array`.<br/>
Utilizado quando é necessário confirmar o tipo de um objeto em tempo de execução. Por exemplo, ao capturar exceções pode-se desviar o código de manipulação de exceção diferente dependendo do tipo de exceção lançada.<br/>
Por exemplo, o código a seguir utiliza o `instanceof` para determinar se `dia` é um objeto `Date`. Como `dia` é um objeto `Date`, as declarações do `if` são executadas.
```js
var dia = new Date(1995, 12, 17);
if (dia instanceof Date) {
  // declarações a serem executadas
}
```

#### PRECEDÊNCIA DE OPERADORES
A precedência de operadores determina a ordem em que eles são aplicados quando uma expressão é avaliada. Você pode substituir a precedência dos operadores utilizando parênteses.

A tabela a seguir descreve a precedência de operadores, da mais alta para a mais baixa.
| Tipo de operador                 | Operadores individuais                   |
|----------------------------------|------------------------------------------|
| membro                           | `. []`                                   |
| chamada / criação de instância   | `() new`                                 |
| negação / incremento             | `! ~ - + ++ -- typeof void delete`       |
| multiplicação / divisão / módulo | `* / %`                                  |
| adição / subtração               | `+ -`                                    |
| deslocamento bit a bit           | `<< >> >>>`                              |
| relacional                       | `< <= > >= in instanceof`                |
| igualdade                        | `== != === !==`                          |
| E bit a bit                      | `&`                                      |
| OU exclusivo bit a bit           | `^`                                      |
| OU bit a bit                     | `\|`                                     |
| E lógico                         | `&&`                                     |
| OU lógico                        | `\|\|`                                   |
| condicional                      | `?:`                                     |
| atribuição                       | `= += -= *= /= %= <<= >>= >>>= &= ^= \|=`|
| vírgula                          | `,`                                      |

#### ESTRUTURAS DE CONTROLE
 São parte fundamental de qualquer linguagem, sem elas, as intruções de um programa só poderiam ser executadas na ordem em que são escritas, ou seja, só seriam excutadas *sequencialmente*. As estruturas de controle permitem que esta ordem seja modificada. Existem 2 categorias deste tipo de estrutura, onde nelas veremos quais são seus métodos de execução.<br/>
 Em linguagens de programação, as intruções que permitem controlar decisões e loops de execução são chamadas de *Estruturas de Controle*. **Uma estrutura de controle dirige o fluxo da execução através de uma sequência de instruções, baseada em _decisões_ entre outros fatores.** *A parte mais importante de uma estrutura de controle é a **condição**, cada condição é uma expressão que se tem como resultado **`true`** ou **`false`**.*<br/>
 O JS oferece um total de 4 instruções para processar o código de acordo com as condições determinadas pelo programador. Com as condicionais, modificamos o fluxo de execução como acharmos conveniente, dependendo se uma condição é cumprida. Dependendo das necessidade de nosso código, o condional pode se tornar tão complicado quanto necessário. Todas as condições podem ser usadas em conjunto para formar a lógica de execução do programa.
 1. **CONDICIONAL**
   - **`if` - `if-else` - `if-elseif` - `if-elseif-else`**:
   - **`switch-case`**:
 2. **LOOPS**
   - **`for` - `for-in` - `for-of` - `forEach` - `for-await-of`**:
   - **`while` - `do-while`**:

##### ALTERADORES DE FLUXO
 Podemos manipular a iteração de **loops** usando alteradores de fluxos quando uma condição além da original é atingida. São eles:
 1. **`break`**: *Interrompe* a iteração do fluxo de repetição.
 2. **`continue`**: *Pula* 1 iteração do fluxo de repetição.

 ```js
 for (let i = 0; i < 5; i++) {
   if (i === 3) break;    // sai do loop quando i === 3
   if (i === 1) continue; // pula a iteração quando i === 1
   console.log(i);
 }
 /* Saída:
 0
 2
 */
 ```

##### BOOLEAN
Um **valor booleano** é um tipo de dado que só pode ter 2 valores possíveis: **`true`** ou **`false`**.<br/>
Este conceito foi criado por **George Boole**, um matemático do século XIX, e é fundamental para a lógica computacional, sendo amplamente utilizado em programação, bancos de dados e circuitos digitais. Ele é a base para operações lógicas como **E (AND)**, **OU (OR)** e **NÃO (NOT)**, que são essenciais para a tomada de decisões e controle de fluxo em sistemas de computação.<br/>
Esses valores são usados, por exemplo, para controlar o fluxo de um programa, em condições como "se... então..." com o uso de estruturas como `if`, ou para verificar se certas condições são atendidas.

###### TIPOS DE BOOLEANOS
No JS, tipos de dados Booleanos podem existir de 2 formas:
- **`Objeto Booleano`**<br/>
O objeto Boolean é um objeto `wrapper` para um valor booleano: `new Boolean([value])`. Seu valor inicial é opcional.<br/>
O valor passado como primeiro parâmetro é convertido para um valor boleano, se necessário. _Se o valor é `omitido` ou é `0`, `-0`, `null`, `false`, `NaN`, `undefined` ou é uma `string vazia ("")`, **o objeto terá um valor inicial de `false`**._ **Todos outros valores, incluindo _qualquer objeto ou string "false"_, criam um objeto com valor inicial `true`.**<br/>
Não se deve confundir os valores **primitivos Boolean** `true` e `false` com os valores `true` and `false` do **objeto Boolean**. Qualquer objeto cujo o valor não é `undefined` ou `null`, incluindo um *objeto Boolean que o valor seja `false`* é avaliado como `true` quando passa por uma declaração condicional.
```js
var x = new Boolean(false);
if (x) { // x == true
  // esse código será executado
}
```
**Porém, este comportamento não se aplica aos primitivos Boolean.**
```js
var x = false;
if (x) { // x == false
  // esse código não será executado
}
```

Não é recomendado usar um objeto `Boolean` para converter um valor não-booleano para um valor booleano. Invés disso, deve-se usar `Boolean` como uma função para executar essa tarefa:
```js
var x = Boolean(expression); // recomendado
var x = new Boolean(expression); // não recomendado
```

Qualquer objeto especificado — inlcuindo um objeto `Boolean` cujo valor é `false` — como valor inicial de um objeto `Boolean`, o novo objeto `Boolean` terá o valor de `true`:
```js
var myFalse = new Boolean(false); // valor inicial: false
var g = new Boolean(myFalse); // valor inicial: true

var myString = new String("Hello"); // objeto String
var s = new Boolean(myString); // valor inicial true
```

**A recomendação é: nunca utilizar um `objeto Boolean` no lugar de um `primitivo Boolean`.**

**PROPRIEDADES**
- `Boolean.length`: Propriedade Length cujo valor é 1.
- `Boolean.prototype`: Representa o protótipo para o construtor Boolean.

**MÉTODOS**<br/>
O objeto global `Boolean` contém métodos próprios, entretanto, ele herda alguns métodos através da cadeia de protótipos.

**INSTÂNCIAS `BOOLEAN`**
- Criando objetos `Boolean` com um valor inicial **`false`**:
```js
var boolNoParam = new Boolean();
var boolZero = new Boolean(0);
var boolNull = new Boolean(null);
var boolEmptyString = new Boolean("");
var boolfalse = new Boolean(false);
```
- Criando objetos `Boolean` com um valor inicial **`true`**:
```js
var booltrue = new Boolean(true);
var booltrueString = new Boolean("true");
var boolfalseString = new Boolean("false");
var boolNewUser = new Boolean("New User");
var boolArrayProto = new Boolean([]);
var boolObjProto = new Boolean({});
```

- **`Booleano Primitivo`**<br/>
É simplesmente quando o valor `true` ou `false` é o valor puro atribuído à variável, e também podem ser o resultado de comparações. Este é o tipo mais usado na maioria dos casos.
```js
let x = true;
let y = false;

typeof true // "boolean"
```

###### DIFERENÇA ENTRE OS TIPOS
A diferença crucial entre `objetos Booleanos` e `Booleanos Primitivos` é que `objetos Booleanos` são sempre `truthy`, mesmo com valor falso. Isso acontece por que o objeto em si existe, e objetos são sempre truthy, o conteúdo `false` é ignorado na coerção.
```js
let objeto = new Boolean(false);
if (objeto) {
  console.log("Entrou no if."); // Vai entrar mesmo sendo `false`
}
```

| Situação                     | Usar Boolean primitivo (`true`/`false`) | Usar Objeto Boolean (`new Boolean()`) |
|------------------------------|-----------------------------------------|---------------------------------------|
| Comparações lógicas          | ✅                                      | ❌                                    |
| Controle de fluxo            | ✅                                      | ❌                                    |
| Performance                  | ✅                                      | ❌                                    |
| Precisa de um objeto         | ❌                                      | ✅ raro                               |
| Precisa de métodos           | ❌                                      | ✅ cuidado                            |

###### TRUE & FALSE
Em JavaScript, qualquer valor pode ser avaliado como **verdadeiro** ou **falso** num contexto lógico como dentro de `if`, `while`, operadores lógicos e etc. Mas não precisam exatamente ser `true` ou `false` puramente. Por isso, dizemos que valores **não primitivos** *tratados como resultados lógicos (Boolean)* são **`truthy`** ou **`falsy`**.  A linguagem realiza automaticamente a conversão de tipos dos valores.
- **`Truthy`**: valores que se comportam como `true`.
```js
"hello"
19
[]
{}
function() {}
"0"
"false"
Infinity
```
- **`Falsy`**: valores que se comportam como `false`.
```js
false
0
-0
0n         // BigInt zero
""         // string vazia
null
undefined
NaN
```

Exemplos são:
```js
if ("Raphael") {
  console.log("Isso é truthy."); // isso é truthy
}

if ([]) {
  console.log("Arrays vazios também são truthy."); // arrays vazios também são truthy.
}

if (0) {
  console.log("Isso nunca será impresso, pois é falsy."); // isso nunca será impresso, pois é falsy.
}
```

A principal diferente estre valores Booleanos e outros tipos de valores com comportamento Booleanos são que, valores primitivos (`true`/`false`) são tipos Booleanos puros, como por exemplo: `let a = true`. Enquanto que, qualquer valor avaliado como `true`/`false` em contexto lógico terão o comportamento conforme avaliada a condição da expressão, por exemplo: `if("ok") {code}`.<br/>
Os usos mais comuns são:
- **condicionais simplificadas**
```js
let name = "Raphael";

if (name) {
  console.log("Nome preenchido."); // avalia como truthy
}
```
- **operador lógico como parâmetro com valor padrão**
```js
let input;
let userName = input || "Convidado"; // se input for falsy, usa "Convidado"
console.log(`Olá ${userName}.`);     // Olá Convidado.

input = "Raphael";
userName = input || "Convidado"; // se input for truthy, usa o valor atribuído
console.log(`Olá ${userName}.`); // Olá Raphael.

// outro exemplo de uso para default parameter
let Name = (person = "Convidado") => person           // se falsy, usa "Convidado"
console.log(Olá ${Name("Raphael")}, seja bem-vindo!); // se truthy, usa o valor atribuído
```

**TABELA DE VALORES**
| Valor                | Tipo             | Resultado | Observação                   |
|----------------------|------------------|-----------|------------------------------|
| `false`              | Boolean          | Falsy     | Valor booleano falso         |
| `0`                  | Number           | Falsy     | Zero                         |
| `-0`                 | Number           | Falsy     | Menos zero                   |
| `0n`                 | BigInt           | Falsy     | BigInt zero                  |
| `""`                 | String           | Falsy     | String vazia                 |
| `null`               | Null             | Falsy     | Nulo                         |
| `undefined`          | Undefined        | Falsy     | Valor indefinido             |
| `NaN`                | Number (NaN)     | Falsy     | Not a Number                 |
| `"0"`                | String           | Truthy    | String com caractere         |
| `"false"`            | String           | Truthy    | Ainda é uma string não-vazia |
| `[]`                 | Array vazio      | Truthy    | Estrutura existe             |
| `{}`                 | Objeto vazio     | Truthy    | Mesmo sem propriedades       |
| `function() {}`      | Function         | Truthy    | Toda função é truthy         |
| `Infinity`           | Number           | Truthy    | Não é zero nem falsy         |
| `42`                 | Number           | Truthy    | Números diferentes de 0      |

##### CONDICIONAIS
 A tomada de decisão na programação é semelhante à tomada de decisão na vida real, pois também existem algumas situações no programa em que um determinado bloco deve ser executado dada uma condição. As linguagens de programação utilizam declarações condicionais para controlar o fluxo de execução do programa com base em certas condições. Estes são usados para fazer o fluxo de execução avançar e ramificar-se com base em mudanças no estado de um programa.<br/>
 A base da tomada de decisões é realizar comparações. Estas comparações neste caso são realizadas utilizando os *operados lógicos* e *de comparação*.<br/>
 As condicionais em JS são realizadas com 2 tipos de estruturas de decisão, o **`if`** e o **`switch`**.

###### IF
 Esta declaração é a condição mais simples de tomada de decisão, "se (`if`) uma condição for verdadeira faça isso, se outra (`else if`) condição for verdadeira faça aquilo, caso nenhuma (`else`) condição seja verdade faça isto". É usado para decidir se uma determinada declaração ou bloco de instruções será executado ou não, ou seja, se uma determinada condição for verdadeira então um bloco de instruções é executado, caso contrário outras instruções será executadas.<br/>
 Sua sintaxe pode assumir várias formas:

 1. **`if`**<br/>
 **Verifica apenas 1 condição, que, dependendo do resultado executa ou não um bloco de instruções e segue o fluxo normal do código.**
 ```js
 var condition = true;

 if(condition) {
  console.log(`condition: ${condition}`);
 } // Saída: true
 ```

 Não confundir os valores **boolean primitivos** `true` e `false` com os valores `true` e `false` do **objeto Boolean**. _Qualquer valor que **não** for `undefined`, `null`, `0`, `NaN`, ou uma `string vazia ("")`, e qualquer objeto, incluindo um **objeto Boolean** cujo valor é `false`, é avaliado como `true` quando passado à uma condicional._
 ```js
 var a = new Boolean(false);
 if (a) // essa condição é avaliada como true
 ```

 É recomendado não utilizar atribuições simples em expressões condicionais, visto que atribuições podem ser confundidas com igualdade ao olhar o código. Um exemplo do que **não fazer**:
 ```js
 if (x = y) {
   // não recomendado
 }
 ```

 Caso seja necessário utilizar uma atribuição em uma expressão condicional, uma prática comum é inseri-la entre parênteses. Por exemplo:
 ```js
 let x;
 let y = 10;

 console.log(`x: ${x} | y: ${y}`) // x: undefined | y: 10

 if ((x = y)) {
   console.log("Entrou no if!"); // Entrou no if!
   console.log("x é:", x);       // x é: 10
 }
 ```
 
 Isso pode ser útil em casos em que se deseja atribuir um valor e verificar se ele é `truthy`, essa sintaxe pode ser usada. Por exemplo, ao buscar valores com fallback:
 ```js
 if ((data = getDataFromCache() || getDataFromServer())) {
   // usa data
 }
 ```

 2. **`if-else`**<br/>
 **Verifica 1 condição, porém se for satisfeita executa instruções específicas, e caso não satisfeita executa outras instruções, ao final retorna ao fluxo normal de execução do código.**
 ```js
 var condition = true;

 if(condition == true) {
  console.log(`condition OK: ${condition}`);
 } else {
  console.log(`condition NOT: ${condition}`);
 }
 ```

 3. **`if-elseif`**<br/>
 **Verifica várias condições e executa o código de acordo com a condição satisfeita, caso contrário não executa nenhuma, e segue o fluxo normal de execução do código.**
 ```js
 var condition = 0;

 if(condition == 1) {
  console.log(`condition 1: ${condition}`);
 } else if(condition == 2) {
  console.log(`condition 2: ${condition}`);
 }
 ```

 4. **`if-elseif-else`**<br/>
 **Uma série de verificações de condições é testada e conforme o resultado um ou outro bloco de instruções é executado, também retornando ao fluxo de execução do programa quando finalizado.**
 ```js
 var condition = 0;

 if(condition == 1) {
  console.log(`condition 1: ${condition}`);
 } else if(condition == 2) {
  console.log(`condition 2: ${condition}`);
 } else {
  console.log(`ANY condition: ${condition}`);
 }
 ```

 5. **ternary operator**<br/>
 **Operadores ternários são _shorthands_ para verificações simples, como o `if-else`, apesar de ser possível aninhá-los não é uma boa prática pois dificulta a legibilidade da lógica, neste caso usam-se as estruturas completas já vistas até agora. O `if` ternário é excelente para verificações simples por possuir uma sintaxe de fácil leitura e entendimento.**
 ```js
 var condition = true;

 condition == true ? console.log("OK") : console.log("NOT");
 ```

 6. **`nested if`**</br>
 **É possível aninhar todos os `if`s acima de acordo com a necessidade, mas dependedo da complexidade podem não ser uma boa opção por ser difícil de ler seu fluxo de execução.**
 ```js
 var condition = "0", verification = false;

 if(condition == 1) {
   if(verification == true) {
      console.log(`1. condition: ${condition} - verification: ${verification}`);
   }
 } else if(condition == 2) {
   if(verification == false){
      console.log(`2. condition: ${condition} - verification: ${verification}`);
    } else {
      console.log(`2.2 condition: ${condition} - verification: ${verification}`);
    }
 } else {
   if(condition != 3 && verification == true) {
      condition > 0 && condition < 5 ? console.log(`condition 4`) : console.log(`condition ${condition}`);
   } else if(isNaN(condition)) {
       if(condition == "a") {
          console.log(`condition: ${condition} - verification: ${verification}`);
       } else if(condition == "b") {
          console.log(`condition: ${condition} - verification: ${verification}`);
       } else {
          console.log(`condition: ${condition} - verification: ${verification}`);
       }
   }
 }
 ```

###### SWITCH-CASE
 Uma opção melhor para a legibilidade em questões de decisões complexas é o `switch-case`, funciona da seguinte maneira: "Escolha isto caso essa condição seja verdade, escolha isso caso outra condição seja verdade... Escolha isso se caso indefinido". Como podemos ver, opera com base em decisão e execução igual ao `if`, qualquer avaliação que possa ser feito em um pode ser feita no outro, porém ele é mais indicado para grandes fluxos com várias tomadas decisões possíveis, por possuir uma estrutura limpa e mais fácil de acompanhar a lógica.<br/>
 Sua sintaxe é:
 ```js
 var option = 0;

 switch(option) {
     case 1:
         console.log("conditions 1");
         break;
     case 2:
     case 3:
         console.log("conditions 2 & 3");
         break;
     case 4:
         console.log("condition 4");
         break;
     case 5:
         console.log("condition 5");
         break;
     default:
         console.log("condition out of range [1, 5]");
 }
 ```

 Vamos analisar cada parâmetro e termo:
 1. **`switch`**<br/>
 É o nome da função, para construir um `switch-case` é necessário informar um parâmetro entre parênteses `()` para as verificações de condições, e o bloco com as instruções para cada condição atendida vai entre chaves `{}`.
 2. **`case`**<br/>
 É a palavra chave para verificar o estado do parâmetro, logo seguida ao `case` deve-se indicar qual parâmetro será testado, exemplo: `case true:`, e os dois pontos `:` indicam ao interpretador para executar o bloco de instruções seguidas. Um mesmo bloco de instruções pode ser executado caso mais de uma condição seja satisfeita, basta indicar um `case` abaixo de outro antes do bloco de instruções, exemplo:
 ```js
 case 1:
 case 2:
   // instruções
   break;
 ```
 3. **`break`**<br/>
 É obrigatório incluí=lo ao final de cada cláusula `case` para que o programa pare de executar as instruções daquele ponto em diante do `switch` e siga o fluxo de execução do código.
 4. **`default`**<br/>
 Trata exceções dentro deste escpop e funciona semelhante ao `else`, ou seja, caso nenhuma condição seja satisfeita, o bloco de instruções contido nele será executado.

##### LOOPS
 São estruturas de programação que nos permitem executar instruções de forma repetitiva dentro de um bloco de códigos. *Além disso, os loops são executados através de condições.*<br/>
 Existem 2 tipos de loops:
 1. **DETERMINADOS**: São aqueles em que se sabe quantas vezes um código será executado.
   - **`for`**
 2. **INDETERMINADOS**
   - **`while`**
   - **`do-while`**

###### FOR
 Um tipo de loop que consiste em três expressões opcionais, cuja execução dura um determinado número de vezes ou até que sua condição seja avaliada com `false` é o `for`, vejamos sua sintaxe básica e também suas variações:

 1. **`for`**</br>
 Usado quando sabemos quantas vezes queremos iterar.
 ```js
 var fim = 10;

 for(var inicio = 0; inicio < fim; inicio++) {
     console.log(inicio);
 }
 ```

 2. **`empty-for`**<br/>
 **Todas** as partes do `for` são *opcionais*.
 ```js
 let i = 0;

 for (;;) { // loop infinito
   console.log(i);
   if (i >= 5) break; // condição de parada
   i++; // incremento para repetição
 }
 ```
 Inclusive o **bloco de declaração** graças ao `operador vírgula`.
 ```js
 let total = 0;
 for (let i = 1; i <= 5; total += i, i++); // tudo acontece na expressão final
 console.log("Total:", total); // Total: 15
 ```

 3. **`for-break-continue`**</br>
 Podemos usar `break` para **interromper** um loop e `continue` para **pular** uma iteração.
 ```js
 for (let i = 0; i < 5; i++) {
   if (i === 3) break;    // sai do loop quando i for 3
   if (i === 1) continue; // pula a iteração quando i for 1
   console.log(i);
 }
 ```

 4. **`forEach`**</br>
 Método especialmente otimizado para percorrer `arrays`, passamos os parâmetros em uma função `callback` que tem o parâmetro **obrigatório** uma variável para obter o `value` do elemento atual no array, e os parâmetros *opcionais* `index`¹ e `array`² para *obter o número do índice do elemento atual*¹ e o *objeto de array completo ao qual o elemento pertence*² respectivamente.
 ```js
 /* internamente é isso que o forEach está fazendo
 function nossoForEach(arr, funcao) {
     for(let i = 0; i < arr.length; i = i + 1) {
         funcao(arr[i], i);
     }
 }

 nossoForEach(['nome', 'nome2'], function(nome, indice) {
     console.log(nome, indice)
 })
 */
 let array = [10, 20, 30];

 array.forEach((value, index, array) => {
   console.log(`Valor: ${value}, Índice: ${index}, Array Completo:`, array);
 });
 ```

 5. **`for-in`**</br>
 Usado para iterar sobre as **chaves** de um *OBJETO*. **Não é recomendado para ARRAYS, pois pode incluir propriedades herdadas.**
 ```js
 const obj = {a: 1, b: 2, c: 3}

 for(let key in obj) {
     console.log(key, obj[key]);
 }
 ```

 6. **`for-of`**</br>
 Usado para iterar *diretamente* sobre os **valores** de elementos iteráveis como `arrays`, `stings`, `maps` e `sets`.
 ```js
 const arr = [10, 20, 30];

 for (let value of arr) {
   console.log(value);
 }
 ```

 7. **`for-await-of`**</br>
 Usado para iterar sobre **objetos assíncronos**, como *`async iterators`* e *`Promises`*.
 ```js
 async function fetchData() {
   const urls = ['url1', 'url2', 'url3'];
   for await (let url of urls) {
     console.log(url); // aguarda cada Promise resolver antes de continuar
   }
 }
 fetchData();
 ```

###### WHILE
 É executado até que a condição seja `false`, porém realiza antes a verificação da condição, e, se a condição não for atentida não executa o bloco de instruções.

 - **`while`**</br>
 ```js
 let condition = true, i = 0;

 while(i <= 5) {
  ++i;
  i == 5 ? condition = false : condition = true;
  console.log(`${i} ${condition}`);
 }
 ```

###### DO-WHILE
 Semelhante ao `while`, porém as instruções são executadas ao menos 1 vez, pois verifica a condição ao final da execução do bloco.

 - **`do-while`**</br>
 ```js
 let condition = true, i = 0;

 do {
     console.log(`${i} ${condition}`);
     ++i;
     i == 5 ? condition = false : condition = true;
 } while(i <= 5)
 ```

#### ESTRUTURAS DE MÉTODOS
 Referem-se à forma como definimos e organizamos funções dentro de objetos e classes. Um **método** é simplesmente uma **função** que pertence a um *objeto* ou uma *classe*.
 ```JS
 /* objetos, métodos e propriedades

 Enquanto métodos¹ são ações para manipulação de objetos²,
 as propriedades³ são as caracteríticas da sua atribuição.

 console = objeto manipulado */
 console.log("User name: ") /* () = execução de ação com parâmetros ou não
         log = método de processamento do objeto */
 ```

 - **`object methods`**<br/>
 **Os métodos podem ser definidos diretamente dentro de um objeto.**
 Neste exemplo, `saudacao()` é um **método** do objeto `Pessoa`, que pode acessar outras propriedades do objeto usando `this`:
 ```js
 const Pessoa = {
  nome: "Raphael",
  saudacao () {
      console.log(`Olá ${this.nome}.`);
  }
 }

 Pessoa.saudacao();
 ```

 - **`class methods`**<br/>
 **Por natureza, as classes contém métodos.**
 Neste exemplo, `saudacao()` é um **método** da classe `Pessoa`:
 ```js
 class Pessoa {
  constructor(nome) {
    this.nome = nome;
  }

  saudacao() {
    return `Olá ${this.nome}`;
  }
 }

 const pessoa = new Pessoa("Raphael");
 console.log(pessoa.saudacao());
 ```

 - **`static methods`**<br/>
 **Semelhante aos *métodos de objetos*, métodos estáticos são métodos que pertencem somente à classe, e não às instâncias dela.** Geralmente, são funções utilitárias, como funções para criar ou clonar objetos.<br/>
 Aqui o método `somar()` pode ser chamados sem precisar criar um objeto da classe:
 ```js
 class Matematica {
  static somar(number1, number2) {
    return number1 + number2;
  }
 }

 console.log(Matematica.somar(5, 14));
 ```
 Métodos estáticos não são diretamente acessíveis utilizando `this` a partir de métodos não estáticos, é necessários chamá-los usando o nome da classe:
 ```js
 class ChamadaDoMetodoEstatico {
   constructor() {
     console.log(`1. ${ChamadaDoMetodoEstatico.MetodoEstatico()}`);
     // 'O método estático foi chamado.'

     console.log(`2. ${this.constructor.MetodoEstatico()}`);
     // 'O método estático foi chamado.'
   }

   static MetodoEstatico() {
     return "O método estático foi chamado.";
   }
 }

 let chamada = new ChamadaDoMetodoEstatico();
 console.log(chamada.MetodoEstatico);

 console.log(ChamadaDoMetodoEstatico.MetodoEstatico());

 /* o exemplo a seguir demonstra como um método estático é implementado em uma classe,
  como uma classe com um membro estático pode virar uma subclasse,
  e por fim, mostra como um método estático pode e não pode ser chamado */
 class Tripple {
   static tripple(n) {
     n = n | 1;
     return n * 3;
   }
 }

 class BiggerTripple extends Tripple {
   static tripple(n) {
     return super.tripple(n) * super.tripple(n);
   }
 }

 console.log(Tripple.tripple());        // 3
 console.log(Tripple.tripple(6));       // 21
 console.log(BiggerTripple.tripple(3)); // 81

 var tp = new Tripple();
 console.log(tp.tripple()); //Logs 'tp.tripple is not a function'.
 ```

#### [TIPOS DE FUNÇÕES](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Guide/Functions)
 As funções são definidas como um conjunto de instruções prontas para serem chamadas a qualquer momento e só serão executadas quando chamadas, seu objetivo é, portanto, a reutilização de código.<br/>
 Usamos basicamente, 2 tipos de funções:
 - **funções pré-definidas**: São como *ferramentas prontas* que o JS fornece, executam ações generalistas.
 - **funções próprias**: São as *ferramentas que criamos* usando condicionais, loops e outras funções pré-definidas, para resolverem tarefas específicas que as funções pré-definidas não conseguem por si só.

##### FUNÇÕES PRÉ-DEFINIDAS
 São comandos padronizados, prontos para serem usados. Exemplo:
 ```js
 alert("Este é um exemplo de função pré-definida.");
 ```

##### FUNÇÕES
 Também podemos criar nossas próprias funções combinando com outras pré-definidas e usando outros parâmetros conforme a necessidade. Para criar uma função, primeiro é necessário definí-la. Vejamos sua sintaxe básica:
 ```js
 userStatus = "on";

 // declaramos a função
 function saudacao(name = "guest") {
  console.log(`Olá ${name}, Bem vindo!`);
 }

 // e a chamamos em outro ponto do código
 userStatus == "on" ? saudacao("Raphael") : null;
 ```

###### IIFE
O uso de **`()()`** é chamado de **IIFE**. **Immediately Invoked Function Expression** são funções anônimas definidas e executadas na hora, sem a necessidade de chamá-las posteriormente.
```js
(function () {
  console.log("Executou na hora!");
})();
```
O 1º `()` envolve a função, transformando-a em uma *expressão de função*. O 2º `()` executa essa função **imediatamente**. O uso deste método é muito benéfico pois permite o encapsulamento de escopo privado, pois variáveis e métodos privados não pode ser acessado diretamente de fora, evita poluir o escopo global e permite funções-fábrica, configurações iniciais entre outras vantagens.

###### HIGH ORDER FUNCTIONS
Funções também podem ser atribuídas à variáveis, para atender necessidades do código:
```js
// função pura
function Function() {
    console.log("eu sou uma função\n");
}
Function();

// função atribuída à variável
function FunctionDeclaration() {
    console.log("eu sou uma função de declaração em uma variável.\n");
}
let functionDeclaration = FunctionDeclaration();

// funções de expressão
let anonymousFunction = function() {console.log("eu sou uma função anônima em uma variável.\n")};
anonymousFunction();

let arrowFunction = () => console.log("eu sou uma função de flecha em uma variável.\n");
arrowFunction();
```

É possível atribuir uma função a uma variável, passá-la como argumento para outra função e retorná-la como resultado de uma função, as chamadas **HIGH ORDER FUNCTIONS**, como demonstrado neste código:
```JS
// atribuindo uma função a uma variável
const saudar = saudacaoFactory('Olá');

// função que retorna outra função
function saudacaoFactory(saudacao) {
  return function(nome) {
    console.log(`${saudacao}, ${nome}!`);
  };
}

// chamando a função armazenada na variável
saudar("Raphael"); // Saída: Olá, Raphael!

// ----------------------------------------------------

// passando uma função como argumento para outra função - callback
function executaOperacao(operacao, a, b) {
  return operacao(a, b);
}

function soma(a, b) {
  return a + b;
}

console.log(executaOperacao(soma, 2, 3)); // Saída: 5
```

Uma função de 1ª classe é uma função que recebe outra como argumento, ou que retorna outra função. Por meio de high order functions é possível compor funções para separar diferentes tarefas relacionadas. Para exemplificar, podemos criar uma função de acesso que irá cuidar da visualização do resultado e outra responsável pela lógica:
```js
const access = name => `${name} - online`;

const userLogin = name => {
console.log("instructions");
return access(name);
};

console.log(userLogin("Raphael"));
```
Como as 2 funções estão no mesmo **escopo global**, a função `userLogin()` consegue acessar a função `access()`, assim, funções com responsabilidades diferentes são geradas dentro de outras funções e o valor de retorno da função `userLogin()` é outra função, no caso `access()`.<br/>
Isso é possível pois no JS as funções também são valores — *objetos* — que podem ser atribuídos a variáveis e *"passados para frente"*, algo que nem toda linguagem de programação realiza.
```js
const access = name => `${name} - online`;

const auth = role => console.log(`${role} auth instructions`);

const login = (user, auth) => {
console.log("login instructions");
user.role == `CEO` ? auth(user.role) : auth(user.role);
return access(user.name);
};

console.log(login({role: `ceo`, name: "Raphael"}, auth));
console.log(login({role: `user`, name: "Déborah"}, auth));
```

###### CALLBACK
O termo usado para funções passadas como parâmetros para outras funções é o **`callback`**, que determina a ordem de quais funções e retornos serão executados primeiro. O que define qual função será a função mais alta na hierarquia é exatamente qual delas é executada primeiro, sendo a responsável por chamar as demais, ou seja, a **high order function**.
```js
const access = name => `${name} - online`;

const login = (user, auth) => {
console.log("login instructions");
user.role == `CEO` ? auth(user.role) : auth(user.role);
return access(user.name);
};

console.log(login({role: `ceo`, name: "Raphael"}, role => console.log(`${role} auth instructions`))); // callback
```
Neste exemplo, as funções `access()` e o callback que é a função `auth()`, são *chamados de volta* pela função login, fazendo com a função `login()` a de maior ordem na hierarquia, ou seja, a **higher order function**, pois é quem gerencia as chamadas na pilha de funções e a passagem dos argumentos para as demais.

Existem várias maneiras de se declarar funções no JS, usando `FunctionDeclaration(){}` e chamando-a `FunctionDeclaration()`; atribuindo uma função declarada ou anônima (usando `const myVar = function() {}` ou no formato de `const arrow = function => return`) a uma variável. Além de poder invocar uma função imediatamente atribuída e para essa variável retornar o valor obtido, usando o método IIFE após a declaração da variável.
```js
const Counter = (() => {
  let count = 0;
  return {
    inc: () => count++,
    dec: () => count--,
    value: () => count
  };
})();
```

Também pode-se passar funções como parâmetro para outras funções, isso é conhecido como `callback`.
```js
function saudacao(nome, callback) {
  const mensagem = `Olá, ${nome}`;
  callback(mensagem);
}

saudacao("Raphael", mensagem => console.log(mensagem));
```

###### CLOSURE
E ainda, atribuir uma função a uma variável, passá-la como argumento para outra função e retorná-la como resultado de uma função, se comportando como uma **`closure`**, que ocorre quando uma função aninhada — *interna* — "lembra" o escopo no qual foi criada, mesmo depois que este escopo já finalizou sua execução, além de ser acessível apenas para a função que a contém — *pai*.
```js
var pet = function (nome) {
    // a função externa define uma variável "nome"
    var getNome = function () {
      return nome; // a função interna tem acesso à variável "nome"  da função externa
    };

    return getNome; // retorna a função interna, expondo-a assim para escopos externos
  },

myPet = pet("Tux");

myPet(); // retorna "Tux"
```

Uma closure é a combinação de uma função com as referências ao estado que a circunda o ambiente léxico, ou seja, o escopo. Em outras palavras, uma closure permite acesso ao escopo de uma função externa a partir de uma função interna.
```js
function init() {
  var name = "Raphael"; // `name` é uma variável local criada pelo `init()`
  function displayName() {
    // `displayName()` é a função interna, funções aninhadas são chamadas de closures
    console.log(name); // usa a variável declarada na função pai `init()`
  }
  displayName(); // a função pai executa a closure
}
init();

// outro exemplo de closure
function makeFunc() {
  var name = "Raphael";
  function displayName() {
    alert(name);
  }
  return displayName;
}

var myFunc = makeFunc();
myFunc();

// passando argumentos para utilização em cadeia
function makeAdder(x) {
  return function (y) {
    return x + y;
  };
}

var add5 = makeAdder(5); // a variável `add5` possui a função `makeAdder()` atribuída com o valor de x, neste caso 5
var add = add5(2);    /* ao chamar a variável, como esta possui uma função atribuída
deve-se passar um 2º parâmetro conforme a closure pede, neste caso `y` = 2

então, pode-se verificar que, add executa x: 5 + y: 2 = 7 */
console.log(add) // 7

// novamente:
var add10 = makeAdder(10); // atribuindo à variável a função com o parâmetro `x`
console.log(add10(2)); // chamando a variável atribuindo um novo valor, o `y`
```

Uma closure permite associar dados do ambiente com uma função que trabalha estes dados. Isto está diretamente ligado com programação orientada a objetos, onde objetos permitem associar dados, ou seja as propriedades do objeto, utilizando um ou mais métodos. Consequentemente, uma closure pode ser utilizada em qualquer lugar onde normalmente se utilizaria um objeto de único método.<br/>
Um bom exemplo de aplicação prática disto dá-se bastante em ambientes web. Suponhamos que devemos adicionar alguns botões para ajustar o tamanho do texto de uma página. Estes botões interativos de tamanho de texto podem alterar a propriedade `font-size` do elemento `body`, e os ajustes serão refletidos em outros elementos graças à unidade relativa `em`. O código seria algo como:
```html
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Closure</title>
</head>
<body>

  <button id="size-12">12</button>
  <button id="size-14">14</button>
  <button id="size-16">16</button>

  <script>
  function makeSizer(size) {
    return function () {
      document.body.style.fontSize = size + "px";
    };
  }

  var size12 = makeSizer(12);
  var size14 = makeSizer(14);
  var size16 = makeSizer(16);
  /* `size12`, `size14` e `size16` agora são funções que devem redimensionar o texto do elemento `body`
      agora elas podem ser designadas a botões como a seguir */

  document.getElementById("size-12").onclick = size12;
  document.getElementById("size-14").onclick = size14;
  document.getElementById("size-16").onclick = size16;
  </script>
</body>
</html>
```

As variáveis em closures são alteradas de maneira persistente.
```js
function criaContador() {
  let contador = 0;

  return function() {
    contador++;
    return contador; // atualiza o valor de `var contador`
  };
}

const contar = criaContador();
console.log(contar()); // 1
console.log(contar()); // 2
```

Um exemplo prático de lógica com closure emulando métodos privados com closures. Métodos privados só podem ser chamados por outros métodos na mesma classe, e isso pode ser simulado utilizando closures. Nos exemplos anteriores cada closure teve o seu próprio ambiente, aqui foi criado um ambiente único que é compartilhado por três funções: `Counter.increment`, `Counter.decrement` e `Counter.value`.
```js
var Counter = (function () {

  var privateCounter = 0;

  function changeBy(val) {
    privateCounter += val;
  }

  return {
    increment: function () {
      changeBy(1);
    },
    decrement: function () {
      changeBy(-1);
    },
    value: function () {
      return privateCounter;
    },
  };

})();

console.log(Counter.value()); /* Alerts 0 */
Counter.increment();
Counter.increment();
console.log(Counter.value()); /* Alerts 2 */
Counter.decrement();
console.log(Counter.value()); /* Alerts 1 */
```
O ambiente compartilhado é criado no corpo de uma função anônima, da qual é executada assim que é definida. O ambiente contém dois itens privados: uma variável chamada `privateCounter` e uma função chamada `changeBy`. Nenhum desses itens privados podem ser acessados diretamente de fora da função anônima. Ao invés disso, eles devem ser acessados pelas 3 funções públicas que são retornadas. Estas 3 funções públicas são closures que compartilham o mesmo ambiente, graças ao escopo léxico do JS, cada uma delas tem acesso à variável `privateCounter` e à função `changeBy`.

No exemplo anterior, foi definida uma função anônima que cria um contador, e então a executamos imediatamente e o resultado é atribuído a variável `Counter`. Também é possível armazenar essa função em uma variável separada e usá-la para criar diversos contadores independentes.
```js
var makeCounter = () => {

  var privateCounter = 0;

  function changeBy(val) {
    privateCounter += val;
  }

  return {
    increment: function () {
      changeBy(1);
    },
    decrement: function () {
      changeBy(-1);
    },
    value: function () {
      return privateCounter;
    },
  };

};

var Counter1 = makeCounter();
var Counter2 = makeCounter();


console.log(Counter1.value()); /* Alerts 0 */

Counter1.increment();
Counter1.increment();
console.log(Counter1.value()); /* Alerts 2 */

Counter1.decrement();
console.log(Counter1.value()); /* Alerts 1 */


console.log(Counter2.value()); /* Alerts 0 */
```

Cada um dos contadores mantém sua independência em relação ao outro, pois seu ambiente de execução da função `makeCounter()` é diferente a cada vez que ocorre, e a variável `privateCounter` contém uma instância diferente a cada vez.

Usar closures desta maneira oferece uma série de benefícios que estão normalmente associados a programação orientada a objetos, em particular encapsulamento e ocultação de dados.

###### ESCOPO DE FUNÇÕES
Como podemos ver, existem muitas maneiras de fazer a mesma coisa no JS, e cada uma delas visa atender uma necessidade diferente do programador, e para que a solução certa seja aplicada a um problema específico é importante entender as diferenças entre cada maneira de resolução.<br/>
Embora `Closure`, `High-Order Function` e `Callback` sejam conceitos frequentemente ligados entre si, não são a mesma coisa.

- **`closure`**: ocorre quando uma função **lembra das variáveis do seu _escopo externo_, mesmo após a finalização de sua execução**. Ou seja, ela armazena as informações do ambiente em que foi criada mesmo após este ambiente ter sido encerrado; uma função interna consegue acessar variáveis da função externa "pai" mesmo depois que a função externa "pai" encerrou sua execução — **memória de escopo**.
```js
function contador() {
  let count = 0;

  return function() {
    count++;
    console.log(count);
  };
}

const incrementar = contador();

incrementar(); // 1
incrementar(); // 2
```

- **`HOF`**: funções que **recebem e retornam funçõe**s como argumento. Muitas high-order functions geram closures, porque retornam funções que capturam variáveis do escopo externo — **gerenciamento**.
```js
function aplicarOperacao(a, b, operacao) {
  return operacao(a, b);
}

function soma(x, y) {
  return x + y;
}

console.log(aplicarOperacao(2, 3, soma)); // 5
```

- **`callback`**: função passada como argumento para outra função, para ser executada depois de algum evento ou operação — chamadas de retorno.
```js
function saudacao(nome, callback) {
  console.log(`Olá, ${nome}`);
  callback(); // chamada de volta
}

saudacao("Raphael", () => console.log("Bem-vindo!"));
```

**Callbacks são as funções passadas para high-order functions, que por sua vez retornam closures e que por fim, uma closure pode ser usado como callback.**

###### TIPOS DE FUNÇÕES
 As funções podem ser utilizadas de diversas formas, dependendo da necessidade de processamento e estrutura do código.
 - **Funções _SEM_ `(parameters)`**: Usadas quando a operação pode ser feita com valores internos ou globais, ou quando não há necessidade de interação com o resto do código.
 - **Funções _COM_ `(parameters)`**: Usadas quando a operação precisa de entradas externas para ser realizada.
 - **Funções _SEM_ `return`**: Usadas quando a operação apenas modifica o estado temporáriamente ou imprime resultados, sem necessidade de repassar o valor para o resto do código.
 - **Funções _COM_ `return`**: Usadas quando é necessário calcular um valor e utilizá-lo posteriormente no código.

###### DESTRUCTURING
É uma forma prática de extrair valores de arrays ou propriedades de objetos e atribuí-los a variáveis usando uma sintaxe mais curta e clara, evitando assim repetições e tornando o código mais legível.

 - **destructuring objects**
 ```js
 const pessoa = {
   nome: "Raphael",
   idade: 27,
   cidade: "Betim"
 };

 // sem destructuring:
 const nome1 = pessoa.nome;
 const idade1 = pessoa.idade;

 // com destructuring:
 const { nome, idade } = pessoa;

 console.log(nome);  // Raphael
 console.log(idade); // 27

 // renomeando variáveis
 const { cidade: cidadeNatal } = pessoa;
 console.log(cidadeNatal); // Belo Horizonte
 ```
 - **destructuring array**
 ```js
 const numeros = [10, 20, 30];

 // sem destructuring:
 const a = numeros[0];
 const b = numeros[1];

 // com destructuring:
 const [x, y] = numeros;

 console.log(x); // 10
 console.log(y); // 20

 // ignorando valores
 const [primeiro, , terceiro] = numeros;
 console.log(terceiro); // 30
 ```

 - **desctructing in functions**
 ```js
 // com objetos
 function apresentar({ nome, idade }) {
   console.log(`Nome: ${nome}, Idade: ${idade}`);
 }

 const user = { nome: "Kaique", idade: 30 };
 apresentar(user);

 // com array
 function soma([a, b]) {
   return a + b;
 }

 console.log(soma([2, 3])); // 5
 ```

 - **default value** - evita `undefined`.
 ```js
 const { status = "ativo" } = { nome: "Raphael" };
 console.log(status); // ativo

 const [x, y, z = 100] = [1, 2];
 console.log(x); // 1
 console.log(z); // 100
 ```
 
 - **exemplo completo**
 ```js
 const usuario = {
   nome: "Raphael",
   contatos: {
     email: "raphael@email.com",
     telefone: "31996653731"
   }
 };

 const {
   nome,
   contatos: { email }
 } = usuario;

 console.log(nome);  // Raphael
 console.log(email); // raphael@email.com
 ```

 ###### OPERADORES DE SINTAXE
 `rest` e `spread` são operadores de sintaxe que complementam o destructuring e também têm usos fora dele.

 - **`rest`**<br/>
 **No caso de funções com parâmetros, quando não sabemos exatamente o número de parâmetros que podem atingir nossa função, usamos `...` para nos referirmos ao restante dos parâmetros possíveis.** *Estes parâmetros são armazenados em um `array` com o nome dado ao parâmetro.* Ele basicamente junta múltiplos argumentos em um único array.
 ```js
 // em destructuring
 const [a, ...resto] = [1, 2, 3, 4];
 console.log(a);      // 1
 console.log(resto);  // [2, 3, 4]

 // em function
 function loteria(jogo, ...numeros) {
   return `${jogo}: ${numeros}`;
 }

 console.log(loteria("Mega-Sena", 13, 38, 39, 40, 42, 56)); // Mega-Sena: 13,38,39,40,42,56

 // array destructuring + rest
 const numeros = [10, 20, 30, 40, 50];
 const [primeiro, segundo, ...resto] = numeros;

 console.log(primeiro); // 10
 console.log(segundo);  // 20
 console.log(resto);    // [30, 40, 50]

 // object destructuring + rest
  const usuario = {
   nome: "Raphael",
   idade: 27,
   cidade: "BH",
   profissao: "Dev"
 };

 const { nome, ...resto } = usuario;
 console.log(nome);  // Raphael
 console.log(resto); // { idade: 27, cidade: "BH", profissao: "Dev" }

 // object destructuring + function
 const pessoa = ({nome, idade}) => {console.log(nome, idade)};
 pessoa(usuario) // "Raphael" 27
 ```

 - **`spread`**<br/>
 Realiza o contrário do **rest**, pois ele *"espalha"* elementos de arrays ou objetos. É útil para cópias, combinações e chamadas de função.
 ```js
 const numeros = [1, 2, 3];
 console.log(numeros);                   // [ 1, 2, 3 ]                   <- normal
 console.log(...numeros);                // 1 2 3                         <- separamos por completo cada index do aray original
 console.log([...numeros]);              // [ 1, 2, 3 ]                   <- podemos copiar outro array sem modificá-lo
 const maisNumeros = [...numeros, 4, 5]; // [ 1, 2, 3, 4, 5 ]             <- novo array criado com a cópia
 console.log({...numeros});              /* { '0': 1, '1': 2, '2': 3 }    <- além de criar objetos, visto que cada valor ocupa uma posição,
                                            e as chaves serão como as posições do array */

 const a = [1, 2, 3];
 const b = [4, 5, 6];
 const combinado = [...a, ...b]; /* podemos concatenar arrays, adquirindo cada valor de índice individualmente,
                                    ao invés de somente "juntar" 2 arrays dentro de 1 */
 console.log(combinado); // [1, 2, 3, 4, 5, 6]

 const pessoa = { nome: "Raphael", idade: 25 };
 const copiaPessoa = { ...pessoa, cidade: "São Paulo" }; // além de copiar também podemos adicionar propriedades em objetos

 console.log(copiaPessoa); // { nome: "Raphael", idade: 25, cidade: "São Paulo" }

 // exemplo simples
 function f(x, y, z) {
    console.log(x, y, z);
 }

 var args = [5, 9, 3]; // [ 5, 9, 3 ]
 console.log(args);    // 5 9 3
 f(...args);
 ```

###### RECURSIVIDADE
 Função recursiva é aquela que **se chama dentro do próprio escopo**. Isso é útil para resolver problemas que podem ser dividos em subproblemas menores.<br/>
 **Para evitarmos que a recursão continue indefinidamente, sempre precisamos de uma condição de parada.**
 ```js
  function contagemRegressiva(numero) {
    if (numero <= 0) { // condição de parada
      console.log("FIM!");
      return;
    }
    console.log(numero);
    contagemRegressiva(numero - 1); // chamando a própria função
  }


 contagemRegressiva(5);
 /* Saída:
 5
 4
 3
 2
 1
 FIM! */
 ```

 **Se não existir uma condição de parada, a recursão será infinita:**
 ```js
 function infinito() {
   console.log("executando");
   infinito(); // sem condição de parada
 }

 infinito(); // irá travar o navegador ou dar "Stack Overflow"
 ```

 **Podemos resolver muitos problemas recursivos com loops, que às vezes são mais eficientes e seguros:**
 ```js
 function fatorialIterativo(n) {
   let resultado = 1;
   for (; n > 1; n--) {
     resultado *= n;
   }
   return resultado;
 }

 console.log(fatorialIterativo(5)); // 120
 ```

###### FUNÇÕES ANÔNIMAS
 São aquelas que não tem nome armazenadas em variáveis ou passadas como argumentos. Geralmente, são usadas em situações onde a função não precisa ser reutilizada em vários lugares no código ou quando queremos passá-la como argumento para outra função, evitando poluir o escopo global.
 ```js
 const saudacao = function(nome) {
   return `Olá, ${nome}!`;
 };

 console.log(saudacao("Raphael")); // "Olá, Raphael!"

 // outro exemplo
 inputSize.oninput = function() {
   outputSize.value = inputSize.value
 }
 ```

###### ARROW FUNCTIONS
 As `arrow functions` são uma forma ainda mais curta de escrever funções anônimas de forma muito mais clara e limpa. A sintaxe para funções `callback` omite a palavra **`function`**, que é substituída pr uma seta **`=>`** colocada após o identificador caso não seja necessário passar nenhum parâmetro.
 ```js
 let nameUser = firstName => console.log(`Olá ${firstName}!`); // em funções com somente 1 parâmetro quase tudo pode ser omitido
 nameUser("Raphael");

 const saudacao = (nome, sobrenome) => `Olá, ${nome} ${sobrenome}!`; // se houverem múltiplos ou nenhum parâmetro os parênteses são obrigatórios
 console.log(saudacao("Raphael", "Santos"))
 ```

 Podemos atribuí-la a uma variável que recebe parâmetros, e, se a função tiver apenas uma expressão, podemos omitir as chaves `{}` e o `return`, no caso em que a expressão for retornada diretamente.
 ```js
 var soma = (x, y) => x + y;
 let subtracao = (x, y) => x - y;
 const calcular = (fn, x, y) => fn(x, y);

 console.log(calcular(soma, 2, 1)); // 3
 console.log(calcular(subtracao, 2, 1)); // 1
 ```
 Funções tipo `arrow functions` possuem o `this` **léxico**, o que significa que o `this` dentro de uma arrow function se refere ao contexto onde foi definida, e não ao objeto que a chamou – não pode ser usada como `constructor`.

 ###### EXPRESSION FUNCTIONS
 Tanto as funções anônimas quanto as arrow functions são muito usadas como callbacks, essas funções passadas como argumento para outras funções são particularmente úteis quando precisamos executá-las apenas 1 vez.
 ```js
 let Button = (name, style) => {
   const $body = document.querySelector("body");
   const $button = document.createElement("button");

   $button.textContent = name;

   style($button); // callback

   $body.insertAdjacentElement("beforeend", $button);
   return $button;
 };

 Button("login", button => {
   button.addEventListener("click", () => console.log("login fetch"));
 });

 Button("signup", button => {
   button.addEventListener("click", () => console.log("sign up page"));
 });
 ```

###### FUNÇÕES DE ARRAYS
 Existem funções pré-definidas otimizadas para lidar com dados em arrays que nos ajudam a economizar tempo de escrita de código. Esse métodos podem ser dividiso em 2 grupos principais:
 - **`static methods`**: chamados diretamente no objeto array.
    - **`Array.of()`**<br/>
    Cria um novo array a partir de um número variável de argumentos, interpretando-os como elementos do array – evita a ambiguidade do construtor quando um único número é passado.
    - **`Array.from()`**<br/>
    Cria um novo array a partir de um objeto iterável ou semelhante a array.
    - **`Array.fromAsync()`**<br/>
    Cria um novo array a partir de um objeto iterável assíncrono ou semelhante a array.
    - **`Array.isArray()`**<br/>
    Verifica se o valor passado é um array e retorna um booleano.
 - **`instance methods`**: disponíveis em `Array.prototype`.
    - **`at(index)`**<br/>
    **Retorna o item no índice especificado** – aceita índices negativos, que contam a partir do final.
    - **`concat(...values)`**<br/>
    Retorna um novo array que é a concatenação do array original com os valores, que podem ser outros arrays ou valores individuais.
    - **`copyWithin(target, start[, end])`**<br/>
    Copia uma sequência de elementos dentro do próprio array, substituindo os elementos existentes.
    - **`entries()`**<br/>
    Retorna um iterador para os pares `[index, value]` de cada elemento do array.
    - **`every(value[, start [, end]])`**<br/>
    Testa se todos os elementos do array passam em um teste implementado pela função callback, e retorna um booleano.
    - **`some(callback[, thisArg])`**<br/>
    Testa se ao menos um elemento do array passa no teste implementado pela função callback, retornando `true` ou `false`.
    - **`fill(value[, start[, end]])`**<br/>
    Preenche todos os elementos de um array com um valor estático, do índice `start` (*inclusivo*) ao índice `end` (*exclusivo*).
    - **`filter(callback[, thisArg])`**<br/>
    Cria um novo array com todos os elementos que passaram no teste implementado pela função callback.
    - **`find(callback[, thisArg])`**<br/>
    Retorna o **primeiro** elemento que satisfaz a função callback, se nenhum for encontrado retorna `undefined`.
    - **`findLast(callback[, thisArg])`**<br/>
    Retorna o **último** elemento que satisfaz a função callback, se nenhum for encontrado retorna `undefined`.
    - **`findIndex(callback[, thisArg])`**<br/>
    Retorna o **índice do primeiro elemento** que satisfaz a função callback, se nenhum for encontrado, retorna `-1`.
    - **`findLastIndex(callback[, thisArg])`**<br/>
    Retorna o **índice do último elemento** que satisfaz a função callback, se nenhum for encontrado, retorna `-1`.
    - **`flat([depth])`**<br/>
    Retorna um novo array com todos os subarrays concatenados recursivamente até a profundidade especificada, que por padrão é `1`.
    - **`flatMap(callback[, thisArg])`**<br/>
    Aplica uma função a cada elemento do array e, em seguida, achata o resultado em um novo array com um único nível de profundidade.
    - **`forEach(callback[, thisArg])`**<br/>
    Executa a função callback para cada elemento do array.
    - **`includes(valueToFind[, fromIndex])`**<br/>
    Verifica se o array contém um determinado elemento, retornando `true` ou `false`.
    - **`indexOf(searchElement[, fromIndex])`**<br/>
    Retorna o **primeiro índice em que o elemento pode ser encontrado**, se não for encontrado retorna `-1`.
    - **`lastIndexOf(searchElement[, fromIndex])`**<br/>
    Retorna o **último índice em que o elemento pode ser encontrado**, se não for encontrado retorna `-1`.
    - **`join([separator])`**<br/>
    Junta todos os elementos do array em uma string, separados pelo separador especificado.
    - **`keys()`**<br/>
    Retorna um iterador que contém os índices chaves para cada elemento no array.
    - **`map(callback[, thisArg])`**<br/>
    Cria um novo array com os resultados da aplicação da função callback a cada elemento.
    - **`pop()`**<br/>
    **_Remove_ o ÚLTIMO** elemento do array e o retorna.
    - **`push(...elements)`**<br/>
    **_Adiciona_ um ou mais elementos ao FINAL do array** e retorna o novo comprimento do array.
    - **`shift()`**<br/>
    **_Remove_ o PRIMEIRO** elemento do array e o retorna.
    - **`unshift(...elements)`**<br/>
    **_Adiciona_ um ou mais elementos no INÍCIO do array** e torna o novo comprimento do array.
    - **`reduce(callback[, initialValue])`**<br/>
    Aplica uma função acumuladora de soma a cada elemento do array – da esquerda para a direita – para reduzir o array a um único valor.
    - **`reduceRight(callback[, initialValue])`**<br/>
    Como o `reduce()`, mas processa os elementos do array inversamente – da direita para a esquerda.
    - **`reverse()`**<br/>
    **Inverte** a ordem os elementos do array in-loco e o retorna.
    - **`sort([compareFunction])`**<br/>
    **Ordena** os elementos do array in-loco e o retorna.
    - **`slice([start[, end]])`**<br/>
    Retorna um novo array contendo uma cópia superficial de parte do array original, mas sem modificar o original.
    - **`splice(start[, deleteCount[, item1[, item2[, ...]]]])`**<br/>
    Adiciona, remove ou sbstitui elementos do array e retorna um novo array com os elementos removidos.
    - **`toLocaleString([locales[, options]])`**<br/>
    Retorna uma string representado os elementos do array de acordo com as configurações locais.
    - **`toReversed()`**<br/>
    Retorna um novo array com os elementos na ordem inversa, sem modificar o array original.
    - **`toSorted([compareFunction])`**<br/>
    Retorna um novo array com os elementos ordenados, sem modificar o array original.
    - **`toSpliced(start, deleteCount, ...items)`**<br/>
    Retorna um novo array com a substituição de alguns elementos, sem modificar o array original.
    - **`toString()`**<br/>
    Retorna uma string representando o array e seus elementos.
    - **`values()`**<br/>
    Retorna um iterador que contém os valores para cada índice do array.
    - **`with(index, value)`**<br/>
    Retorna um novo array com o elemento no índice especificado substituído pelo novo valor, sem modificar o array original.
    - **`[Symbol.iterator]`**<br/>
    Permite que o array seja iterado, geralmente utilizado implicitamente em laços `for-of`; é um `alias` para o método **`values()`**.
    - **`.length`**<br/>
    Retorna a quantidade de elementos presentes no array, e é atualizada automaticamente conforme o array é modificado.

 ###### TROUBLESHOOTING
 - O `try/catch/finally` é um bloco de tratamento de erros usado em JavaScript e também em várias outras linguagens de programação para lidar com erros, chamados de *exceções*, de maneira controlada. Ele permite que escrever código que pode gerar erros de forma segura, sem interromper a execução e quebrar o programa. Sua estrutura é semelhante ao `if/elseif/else` e ao `switch/case/default`, com algumas resalvas:
  ```js
  try {
    // código que pode gerar um erro
  } catch (erro) {
    // código que será executado caso um erro ocorra no bloco try
  } finally {
    // código que será executado independentemente de erro ou não
  }
  ```
 Vamos entender melhor o que cada declaração significa:
 1. **`try`**: contém o código a ser executado, que pode gerar ou não uma exceção. Se um erro ocorrer dentro do bloco try, a execução do código no try é interrompida, e o controle é transferido para o bloco `catch()`.
 2. **`catch()`**: este bloco é **opcional**, mas quando presente só é executado se um erro ocorrer no bloco `try`. Ele captura a exceção e permite o tratamento do erro, seja exibindo uma mensagem, registrando o erro ou tomando outras ações para resolver o problema. Ele recebe um parâmetro, geralmente chamado de `erro` ou `ex`, mas pode ser qualquer nome, que conterá o objeto de erro gerado.
 3. **`finally`**: é **sempre** executado, mesmo com `return` em `try` ou `catch` e independentemente de um erro ter ocorrido ou não. É particularmente útil para garantir que certos códigos sejam executados, como liberar recursos fechando arquivos, conexões de bancos de dados e etc, indiferentemente do sucesso ou falha no bloco `try`.
 ```js
 const n = 10;
 try {
     n = 0;
 } catch(error) {
     console.error(`não é possível reatribuir uma constante: ${error.message}`);
 } finally {
     console.log("mesmo com erro essa mensagem será exibida");
 }
 /*
 não é possível reatribuir uma constante: Assignment to constant variable.
 mesmo com erro essa mensagem será exibida
 */
 ```

 - O **`throw`** serve para lançar um erro manualmente. Ou seja, é o mesmo que informar ao JavaScript que aconteceu algo errado, que ele deve interrompoer o código que estiver executando e tratar isso como um erro, evitando assim que o programa continue rodando de forma incorreta.
   - A função `Error()` cria um objeto de erro com uma mensagem descritiva. Exemplo:
   ```js
   // exemplo simples
   const erro = new Error("Algo deu errado");
   console.log(erro.name);    // Error
   console.log(erro.message); // Algo deu errado

   // exemplo completo
   function dividir(a, b) {
     b === 0 ?
       throw new Error("Não é possível dividir por zero!"):
       return a / b;
   }
   
   try {
     console.log(dividir(10, 0));
   } catch (e) {
     console.error("Erro capturado:", e.message);
   }

   // `throw` funciona com qualquer coisa
   throw "erro";             // Lança uma string
   throw 404;                // Lança um número
   throw { tipo: "Falha" };  // Lança um objeto

   // MAS o ideal é usar:
   throw new Error("Mensagem explicando o problema.");
   ```

## OOP
 Em JavaScript, tudo é um objeto. Um objeto é uma coleção de funcionalidades relacionadas armazenadas em um único agrupamento.  Vimos os princípios da programação orientada a objetos em tópicos anteriores, pois o JavaScript é uma linguagem de programação multiparadigma, por isso compartilha os conceitos-chave.

### CLASSE
 É a padronização de uma estrutura de dados que *instancía* um objeto na saída. Podemos dizer que uma classe é uma *"forma"* para a criação de um objeto, contendo atributos que são como características do objeto e métodos que são ações que o objeto pode executar. Vejamos o exemplo de carro, sabemos que um carro independente da marca e modelo, para ser considerado um carro precisa ter no mínimo 4 rodas, carcaça, motor, freio, bancos e sistema de direção, e que com isso, o carro se locomove carregando o que estiver dentro e para no lugar quando solicitado.
 ```js
 class Car {
  /* as vezes, temos dados no código que necessitamos manter "ocultos" dentro da classe
     são dados que não queremos que possam ser vistos e nem chamados de fora da classe
     pois fazem parte da lógica interna e podemos evitar que sejam alterados usando atributos e métodos privados*/

  #km /* isso priva um dado de ser chamado por um objeto fora da classe
         quando temos atributos privados, normalmente lidamos com eles em métodos também privados

     o método construtor é a função que irá receber os dados durante a instanciação
     para a criação de um objeto conforme os moldes informados */
  constructor(marca, modelo, cor, ano, dono, km) {
    /* como já vimos, o método `this` se refere à variável dentro da classe
       para que possam ser usadas dentro dos métodos sabendo que são pertencentes da classe*/
    this.marca = marca,
    this.modelo = modelo,
    this.cor = cor,
    this.ano = ano,
    this.dono = dono,
    this.#km = km; // <- referenciado o atributo privado dentro da classe
  }

  /* também já vimos que uma classe pode conter métodos estáticos
     ou seja, funções que podemos acessar sem a necessidade da criação de um objeto */
  static carro(){
    console.log(`Um carro tem 4 rodas, um motor, meio de parada e sistema de direção.`);
  }

  // assim criamos um método privado para lidar com os atributos privados
  #KM() {
    console.log(`km total: ${this.#km}`);
  }

  /* caso haja necessidade de devolver um valor privado tratador em um método também privado
     devemos criar um método que pode ser chamados de fora da classe para invocar o método privado */
  exibirKm(){
    this.#KM();
  }

  // e os atributos e métodos públicos, que são os dados que podem ser "vistos" e chamados "de fora da classse"
  ligar(){
    console.log(`${this.modelo} ${this.cor} ${this.ano} ligado.`);
  }
 }
 ```

### OBJETO
 Uma instância de classe é um objeto criado a partir dos moldes de uma classe, ele compartilha métodos e atributos com a classe, mas contém suas próprias características, podendo compartilhar, herdar, sobrescrever adicionando ou removendo dados conforme sua necessidae.

```js
 Car.carro(); /* para usarmos o método estático, basta chamarmos na classe
 saída: Um carro tem 4 rodas, um motor, meio de parada e sistema de direção.*/
 
 /* para instaciar um objeto, definimos seu nome, em seguida usamos o método construtor `new`
    que cria uma instância da classe referenciada, e por fim informamos os parâmetros se necessário */
 const corolla = new Car("Toyota", "Corolla", "Branco", 2025, "Raphael", 0);

 // assim então temos acesso aos atributos e métodos da classe para o objeto em questão
 corolla.ligar();           // Corolla branco 2025 ligado.
 console.log(corolla.dono); // Raphael
 corolla.exibirKm();        // km total: 0 km
```

### ENCAPSULATION, INHERITANCE, ABSTRACTION & POLYMORPHISM
 Para criarmos uma classe que herda atributos e métodos de uma classe "mãe", usamos **`extends`** para referenciar a qual classe queremos e no método `constructor` usamos **`super()`** que chama o construtor da classe pai inicializando os atributos herdados da classe antes de adicionar novos atributos ou modificar comportamentos, fazendo assim uma classe moldada a partir de outra classe que pode incluir outros atributos e métodos sem modificar a classe original.
 ```js
 class Truck extends Car {
  constructor(marca, modelo, cor, ano, dono, km, potencia, carga) {
    super(marca, modelo, cor, ano, dono, km); // importa e inicializa os atributos da classe pai
    this.potencia = potencia,
    this.carga = carga;
  }

  peso() {
    console.log(`O ${this.modelo} suporta até ${carga} kg.`);
  }
 }

 const sprinter = new Truck("Mercedes", "Sprinter", "Branca", 2025, "Raphael", 1500, 3000, 5000);
 sprinter.ligar(); /* método herdado
 saída: Sprinter Branca 2025 ligado. */
 sprinter.peso();  /* método próprio
 saída: O Sprinter 2025 suporta até 5000 kg. */
 sprinter.exibirKm(); /* método privado herdado
 saída: km total: 1500 km */
 ```

 **OBSERVAÇÕES**<br/>
 1. Também é possível chamar *métodos estáticos* com o `super`:
 ```js
 class Human {
   constructor() {}
   static ping() {
     return "ping";
   }
 }

 class Computer extends Human {
   constructor() {}
   static pingpong() {
     return super.ping() + " pong";
   }
 }

 Computer.pingpong(); // 'ping pong'
 ```

 2. Não é possível utilizar o `delete operator` com super para deletar uma propriedade da classe pai.
 ```js
 class Base {
   constructor() {}
   fnct() {}
 }

 class Derived extends Base {
   constructor() {}
   delete() {
     delete super.fnct;
   }
 }

 new Derived().delete(); // ReferenceError: invalid delete involving 'super'.
 ```

 3. `super` não pode sobrescrever propriedades não editáveis, ou seja, não pode sobrescrever o valor de uma propriedade quando esta houver sido definida como **não editável** (`writable: false`) com `Object.defineProperty`.
 ```js
 class X {
   constructor() {
     Object.defineProperty(this, "prop", {
       configurable: true,
       writable: false,
       value: 1,
     });
   }
   f() {
     super.prop = 2;
   }
 }

 var x = new X();
 x.f();
 console.log(x.prop); // 1
 ```

 4. Por fim, `super.prop` também pode ser usado na inicialização da notação literal de objetos. No exemplo abaixo, cada objeto define um método. No **segundo objeto**, `super` chama o método do **primeiro objeto**. Isso funciona graças ao `Object.setPrototypeOf()`, com o qual é possível configurar o `prototype` do `obj2` para o `obj1`, tornando o `super` capaz de encontrar o `method1()` por meio do `obj2`:
 ```js
 var obj1 = {
   method1() {
     console.log("method 1");
   },
 };

 var obj2 = {
   method2() {
     super.method1();
   },
 };

 Object.setPrototypeOf(obj2, obj1);
 obj2.method2(); // retorna "method 1"
 ```

 Além de reutilizar, também é possível modificar métodos os métodos herdados:
 - **`override`**<br/>
 A classe filha redefine um método da classe pai.
 ```js
  class Truck extends Car {
  constructor(marca, modelo, cor, ano, dono, km, potencia, carga) {
    super(marca, modelo, cor, ano, dono, km); // importa e inicializa os atributos da classe pai
    this.potencia = potencia,
    this.carga = carga;
  }

  peso() {
    console.log(`O ${this.modelo} suporta até ${carga} kg.`);
  }

  ligar(){
    console.log(`${this.modelo} ${this.cor} ${this.ano} está ligado, combustível: DIESEL.`); /* sobrescrevendo o método herdado
    apenas os objetos instanciados na classe filha sofrerão a alteração */
  }
 }

 corolla.ligar();  // Corolla Branco 2025 ligado.
 // execução do método sobrescrito
 sprinter.ligar(); // Sprinter Branca 2025 está ligado, combustível: DIESEL.
 ```

 - **`overload`**<br/>
 A classe filha sobrecarrega um método da classe pai, ou seja, o método possui o mesmo nome, porém realiza outras instruções.
 ```js
 class Calculadora {
     soma(a, b, c) {
         if(c !== undefined) {
             return a + b + c;
         }
         return a + b;
     }
 }

 const calc = new Calculadora();
 console.log(calc.soma(2, 3)); // 5
 console.log(calc.soma(2, 3, 4)); // 9
 ```

 #### ACCESSOR PROPERTIES
 Voltando ao exemplo da classe de Poligonos, vejamos a aplicação dos conceitos de OOP e também os **accessor properties**. São métodos especiais usados para acessar e atribuir valores como se fossem propriedades normais, mas com lógica personalizada por trás.
```js
class Polygon {
  constructor(height, width) {
    this.name = "Polygon";
    this.height = height;
    this.width = width;
  }
  sayName() {
    console.log(`Hi, I am a ${this.name}.`);
  }
}

class Square extends Polygon {
  constructor(length) {
    super(length, length); // herança
    this.name = "Square";  // sobrescrita
  }

  // encapsulamento
  get area() {
    return this.height * this.width;
  }

  // abstração
  set area(value) {
    this.Area = value;
  }
}

class Rectangle extends Polygon {
  constructor(Height, Width) {
    super(Height, Width);
    this.name = "Rectangle";
  }

  get area() {
    return this.height * this.width;
  }

  set area(value) {
    this.height = Math.sqrt(value);
    this.width = Math.sqrt(value);
  }
}

let square = new Square(3);
console.log(square.area);            // 9
square.area = 10;                    // define o set como 10
console.log(square.area = 10)        // imprime a definição do set
console.log(square.area)             // executa o get, então o set assume o valor do resultado
let rectangle = new Rectangle(3, 5);
console.log(rectangle.area);         // 15
```

Vejamos como são trabalhados os objetos em OOP. Tanto o `get` quanto o `set` são usados em **propriedades de objetos** para manipular o acesso e a modificação dessas propriedades, mas o que acontece primeiro depende do contexto.<br/>
O **`get`** e o **`set`** podem *interferir* no comportamento de leitura e escrita de uma propriedade. O **`get`** pode modificar o valor acessado, enquanto o **`set`** pode validar ou transformar o valor que você atribui.<br/>
Em um objeto, **que possui ambos**, a **leitura** é feita via **`get`**, enquanto a **escrita** é via **`set`**, e *ambas são feitas de forma transparente, sem que o código externo precise saber que são métodos*.

```js
class Pessoa {
  constructor(nome) {
    this._nome = nome;
  }

  get nome() {
    return this._nome.toUpperCase();  // retorna o nome em maiúsculas
  }

  set nome(novoNome) {
    this._nome = novoNome.trim();  // remove espaços em branco antes de armazenar
  }
}

const pessoa = new Pessoa(' Raphael ');  // chama o `get`, converte para maiúsculas
console.log(pessoa.nome);                // "RAPHAEL"
pessoa.nome = ' Déborah ';               // chama o `set`, remove espaços e chama o `get`
console.log(pessoa.nome);                // "DÉBORAH"
```

Em resumo, o **`get`** é chamado primeiro quando se quer **acessar** o valor de uma propriedade. Enquanto o **`set`** é chamado quando se deseja **atribuir** um valor a uma propriedade (e então por padrão chama o `set`). O **`get`** e o **`set`** permitem adicionar **lógica de controle** ao acessar e modificar as propriedades de um objeto, o que torna o código mais seguro e organizado.

- **`get`**<br/>
Define um **acessador**. É um **método** que permite **acessar o valor de uma propriedade como se fosse um atributo**, *mas na verdade ele executa uma função*. Ele **retorna** um valor, mas este valor é usado como se fosse uma propriedade. Ou seja, é possível acessar a propriedade sem chamar a função explicitamente. Este é o método que é chamado automaticamente quando acessamos `square.area`:
```js
get area() {
  return this.height * this.width;
}
```
Esse **getter** faz com que `square.area` retorne o resultado da multiplicação de `height * width`. Ou seja:
```js
console.log(square.area);
// é equivalente a:
console.log(square.getArea());
```

Um outro exemplo:
```js
class Pessoa {
  constructor(nome) {
    this._nome = nome;
  }

  get nome() {
    return this._nome.toUpperCase();  // acessa e retorna o nome em maiúsculas
  }
}

const pessoa = new Pessoa('Raphael');
console.log(pessoa.nome);  // Raphael será impresso como "RAPHAEL"
```

- **`set`**<br/>
Define um **mutador**. Este **setter** é um método que permite **atribuir um valor à propriedade como se estivesse setando um atributo**, *mas na verdade executa uma função com argumento*, sendo possível adicionar lógica, como validações ou transformações, antes de armazenar o valor:
```js
/* no código, a atribuição é feita com o `get`, enquanto o `set` armazena o resultado
  para exemplificar melhor, vamos mostrar que é possível atribuir ao set um valor qualquer que desejar, e ele irá armazená-lo
*/
console.log(square.area = 10); /* Saída: 10
aqui ele está simplesmente salvando o valor passado em uma propriedade chamada Area

!!! OBSERVAÇÃO !!!
Esse setter não altera o valor de `height` e `width`, então a área real (retornada pelo getter) não muda!
Se o código abaixo for executado, o valor de Area ainda será 9, pois o getter NÃO LÊ this.Area, ele sempre calcula `height * width`
*/
square.area = 10;
console.log(square.area); // ainda será 9 (3 x 3), não 100
```

Caso haja a necessidade de alterar o valor passado ao constructor, pode-ser usar o `set` da seguinte maneira:
```js
set area(value) {
  this.height = Math.sqrt(value);
  this.width = Math.sqrt(value);
}
```
Assim, ao definir `rectangle.area = 25`, o `set` mudará os lados para `5 x 5`:
```js
class Polygon {
  constructor(height, width) {
    this.name = "Polygon";
    this.height = height;
    this.width = width;
  }
  sayName() {
    console.log(`Hi, I am a ${this.name}.`);
  }
}

class Rectangle extends Polygon {
  constructor(Height, Width) {
    super(Height, Width);
    this.name = "Rectangle";
  }

  get area() {
    return this.height * this.width;
  }

  set area(value) {
    this.height = Math.sqrt(value);
    this.width = Math.sqrt(value);
  }
}

let rectangle = new Rectangle(3, 5);
console.log(rectangle.area); // 15

rectangle.area = 25;
console.log(`a: ${rectangle.area}, h: ${rectangle.height}, w: ${rectangle.width}`); /* 15
                                                                                       a: 25, h: 5, w: 5 */
```

Vejamos outro exemplo completo e prático de como usar get e set em uma classe para manipular valores com lógica personalizada:
```js
class Square {
  constructor(length) {
    this._length = length;
  }

  // getter para expor o lado do quadrado
  get length() {
    return this._length;
  }

  // getter para a propriedade 'area'
  get area() {
    return this._length * this._length;
  }

  // setter para recalcular o lado com base na nova área
  set area(value) {
    this._length = Math.sqrt(value); // calcula o novo lado
  }
}

// criando um quadrado
let sq = new Square(4);

console.log("Lado:", sq.length);         // 4
console.log("Área inicial:", sq.area);   // 16

// alterando a área diretamente
sq.area = 100;

console.log("Nova área:", sq.area);      // 100
console.log("Novo lado:", sq.length);    // 10
```

Outro exemplo simples de armazenamento do valor manipulado com `set`:
```js
class Pessoa {
  constructor(nome) {
    this._nome = nome;
  }

  set nome(novoNome) {
    this._nome = novoNome.trim();  // remove espaços em branco
  }

  get nome() {
    return this._nome;
  }
}

const pessoa = new Pessoa(' Raphael ');
console.log(pessoa.nome);  // " Raphael " antes de aplicar o setter
pessoa.nome = ' Déborah ';
console.log(pessoa.nome);  // "Déborah" após aplicar o setter
```

## EDP
 O paradigma mais usado em desenvolvimento de páginas web é o **Event-Driven Programming**. É o paradgima de programação onde o fluxo do programa é determinado por eventos e ações do usuário como cliques, pressionamento de teclas, mensagens do sistema, sensores ou até respostas de rede. Funciona da seguinte maneira:
 1. **Eventos** ocorrem.
 2. **Handlers ou Listeneres** "ouvem" estes eventos e respondem a eles com funções ou métodos.

### DOM
 O objetivo do JavaScript é interagir com o código HTML/CSS, e, para isso temos que conhecer o que é a *àrvore de `tags`* que compõe nosso documento. O **`Document Objet Model`** *representa os documentos como uma estrutura de árvore, onde cada elemento da página é um nó dessa árvore* – ele permite que linguagens de script acessem e manipulem o conteúdo, a estrutura e o estilo de um documento web de forma dinâmica.<br/>
 Vejamos como funciona:
 1. Quando um navegador carrega uma página web, ele lê o código HTML e o transforma em uma árvore de objetos chamada **Árvore DOM**.
 2. Cada elemento do documento, como `div`, `p`, `h1`, `a` entre outros se torna um *`nó`* dentro dessa árvore.
 3. O JavaScript pode usar métodos e propriedades do DOM para modificar esses elementos em tempo real.

#### SELEÇÃO DE ELEMENTOS
 Uma maneira *"generalista"* de selecionar um elemento da página é com **`querySelector`**. Este método é usado para selecionar elementos do DOM com base em seletores CSS. Ele retorna o **primeiro** elemento que corresponde ao seletor informado. Caso haja necessidade de selecionar **todos** os elementos que correspondem ao seletor usamos **`querySelectorAll`**, pois ele retorna uma **NodeList** com todos os elementos desejados.
 ```js
 var aboutMe = document.querySelector("#aboutMe");       /* guarda na variável o primeiro id que corresponde ao seletor #aboutMe
                                                            se não o encontrar seu valor será `null` */

 var aboutMe = document.querySelector(".info");          // retorna a primeira `tag` com a classe `.info`

 let elementoAninhado = document.querySelector("div p"); /* também é possível selecionar elementos aninhados
                                                            neste caso, armazena o primeiro `p` dentro de uma `div` */
 ```

 Existem outras maneiras mais *"semânticas"* para a seleção de elementos do documento:

 - **`getElementById`**<br/>
 *Mais rápido que `querySelector("#id")`*, e retorna **1 único elemento com o `id` especificado**.
 Por exemplo, assumindo que temos uma `tag` com o `id="profile"`, podemos nos referir a ela como o exemplo a seguir. Desta forma, carregamos na variável `profile` o valor do elemento `id="profile"`. Feito isso, podemos modificar as propriedades ou valores do elemento obtido:
 ```js
 var profile = document.getElementById("profile");
 ```
 
 - **`getElementByClassName`**<br/>
 Retorna uma **`HTMLCollection`**, que é parecida com um array, contendo todos os elementos da classe informada.
 ```js
 let elementos = document.getElementsByClassName("minhaClasse");
 console.log(elementos);    // [ 'elemento 1', 'elemento 2', 'elemento 3']
 console.log(elementos[0]); // primeiro elemento com essa classe
 ```
 
 - **`getElementByTagName`**<br/>
 Igual ao `getElementByClassName`, também podemos selecionar todos os elementos de um tipo que serão armazenados em uma `HTMLCollection`.
 ```js
 let paragrafos = document.getElementsByTagName("p");
 console.log(paragrafos);
 console.log(paragrafos[0]);
 ```

 - **`getElementByName`**<br/>
 Usado especialmente para **formulários `<input name="campo">`, seleciona e retorna uma NodeList com todos os elementos correspondentes.
 ```js
 let inputs = document.getElementsByName("usuario");
 console.log(inputs);
 ```
#### Seleção de Elementos
Esses métodos são usados para encontrar elementos dentro do documento.

- `document.getElementById(id)`: Seleciona um elemento pelo ID.
- `document.getElementsByClassName(className)`: Seleciona todos os elementos que possuem uma classe específica.
- `document.getElementsByTagName(tagName)`: Seleciona todos os elementos de um determinado tipo de tag (ex: `div`, `p`, `h1`).
- `document.querySelector(selector)`: Seleciona o primeiro elemento que corresponde a um seletor CSS.
- `document.querySelectorAll(selector)`: Seleciona todos os elementos que correspondem a um seletor CSS.

#### Criação e Manipulação de Elementos
Esses métodos são usados para criar, clonar e modificar elementos na página.

- `document.createElement(tagName)`: Cria um novo elemento HTML.
- `document.createTextNode(text)`: Cria um nó de texto.
- `element.appendChild(child)`: Adiciona um elemento filho ao elemento pai.
- `element.insertBefore(newElement, referenceElement)`: Insere um novo elemento antes de um elemento existente.
- `element.replaceChild(newChild, oldChild)`: Substitui um filho existente por um novo.
- `element.removeChild(child)`: Remove um elemento filho.
- `element.cloneNode(deep)`: Clona um nó (se `deep=true`, também clona os filhos).

#### Manipulação de Estilos
Métodos para alterar o estilo de elementos na página.

- `element.style.property = "value"`: Modifica um estilo CSS diretamente.
- `element.classList.add(className)`: Adiciona uma classe CSS ao elemento.
- `element.classList.remove(className)`: Remove uma classe CSS.
- `element.classList.toggle(className)`: Adiciona a classe se não existir, ou remove se já existir.
- `element.classList.contains(className)`: Verifica se o elemento possui uma determinada classe.

#### Manipulação de Conteúdo
Métodos para alterar ou recuperar o conteúdo de um elemento.

- `element.innerText`: Obtém ou altera o texto dentro de um elemento (ignora HTML interno).
- `element.innerHTML`: Obtém ou altera o HTML dentro de um elemento.
- `element.textContent`: Similar ao `innerText`, mas mantém os espaços e quebras de linha.
- `element.outerHTML`: Obtém ou altera o HTML do próprio elemento e seu conteúdo.
- `element.setAttribute(name, value)`: Define um atributo no elemento.
- `element.getAttribute(name)`: Obtém o valor de um atributo específico.
- `element.removeAttribute(name)`: Remove um atributo do elemento.
- `element.hasAttribute(name)`: Verifica se um atributo existe.

#### Manipulação de Eventos
Métodos usados para adicionar, remover e disparar eventos.

- `element.addEventListener(event, function)`: Adiciona um ouvinte de evento ao elemento.
- `element.removeEventListener(event, function)`: Remove um ouvinte de evento.
- `element.dispatchEvent(new Event("event"))`: Dispara manualmente um evento.

#### Manipulação da Estrutura do DOM
Métodos para navegar e modificar a estrutura dos nós do DOM.

- `element.parentElement`: Retorna o elemento pai.
- `element.children`: Retorna os elementos filhos diretos.
- `element.firstElementChild`: Obtém o primeiro elemento filho.
- `element.lastElementChild`: Obtém o último elemento filho.
- `element.nextElementSibling`: Obtém o próximo elemento irmão.
- `element.previousElementSibling`: Obtém o elemento irmão anterior.
- `element.parentNode`: Obtém o nó pai do elemento.
- `element.childNodes`: Obtém todos os nós filhos (incluindo espaços e quebras de linha).
- `element.firstChild`: Obtém o primeiro nó filho (pode ser um texto ou elemento).
- `element.lastChild`: Obtém o último nó filho.
- `element.nextSibling`: Obtém o próximo nó irmão (pode ser um texto ou elemento).
- `element.previousSibling`: Obtém o nó irmão anterior.

#### Manipulação do Documento
Métodos para interagir com o próprio documento.

- `document.title`: Obtém ou define o título da página.
- `document.URL`: Obtém a URL da página.
- `document.domain`: Obtém o domínio da página.
- `document.referrer`: Obtém a URL da página anterior.
- `document.body`: Obtém o elemento `body` da página.
- `document.head`: Obtém o elemento `head` da página.
- `document.documentElement`: Retorna o `html` inteiro.
- `document.activeElement`: Retorna o elemento que está focado no momento.
- `document.forms`: Obtém todos os formulários da página.
- `document.forms["specialForm"]`: Retorna um formulário específico pelo nome.
- `document.forms[0]`: Retorna um formulário específico pelo índice.
- `form.elements`: Retorna todos os elementos dentro do formulário.
- `document.images`: Obtém todas as imagens da página.
- `document.links`: Obtém todos os links da página.
- `document.anchors`: Retorna todos os `a` com atributo `name`.
- `document.scripts`: Obtém todos os scripts da página.

#### Manipulação da Janela do Navegador
Métodos para interagir com a janela do navegador.

- `window.open(url, name, specs)`: Abre uma nova janela.
- `window.close()`: Fecha a janela atual.
- `window.alert(message)`: Exibe um alerta.
- `window.confirm(message)`: Exibe uma caixa de confirmação (OK/Cancelar).
- `window.prompt(message, defaultText)`: Exibe uma caixa de entrada de texto.
- `window.scrollTo(x, y)`: Rola a página para uma posição específica.
- `window.scrollBy(x, y)`: Rola a página de acordo com os valores passados.

#### Manipulação de Navegação e Histórico
Métodos para interagir com o histórico de navegação.

- `window.history.back()`: Volta para a página anterior.
- `window.history.forward()`: Avança para a próxima página.
- `window.history.go(n)`: Vai para um ponto específico no histórico (`n` pode ser positivo ou negativo).

#### Manipulação de Cookies e Armazenamento
Métodos para trabalhar com armazenamento local e cookies.

- `document.cookie`: Obtém ou define cookies no navegador.
- `localStorage.setItem(key, value)`: Armazena um valor no localStorage.
- `localStorage.getItem(key)`: Obtém um valor do localStorage.
- `localStorage.removeItem(key)`: Remove um item do localStorage.
- `localStorage.clear()`: Limpa todo o localStorage.
- `sessionStorage.setItem(key, value)`: Armazena um valor na sessão atual.
- `sessionStorage.getItem(key)`: Obtém um valor da sessão.
- `sessionStorage.removeItem(key)`: Remove um item da sessão.
- `sessionStorage.clear()`: Limpa toda a sessão.

#### Manipulação de Tempo
Métodos para executar ações depois de um tempo específico.

- `setTimeout(function, delay)`: Executa uma função após um tempo (`delay` em milissegundos).
- `setInterval(function, interval)`: Executa uma função repetidamente a cada `interval` ms.
- `clearTimeout(id)`: Cancela um `setTimeout`.
- `clearInterval(id)`: Cancela um `setInterval`.

### BOM
 O **Browser Object Model** contém uma infinidade de propriedades que nos permitem trabalhar com o navegador. Da mesma forma queno DOM podemos selecionar objetos do documento, **com o BOM podemos selecionar objetos do navegador e modificá-los**. Ele controla coisas como:
 - **`window`**: Representa a janela do navegador e é o objeto global.
 - **`navigator`**: Informações sobre o navegador (tipo, versão, etc.).
 - **`location`**: URL atual da página e redirecionamentos.
 - **`history`**: Histórico de navegação (avançar e voltar).
 - **`screen`**: Informações sobre a tela do usuário (resolução, largura, etc.).
 - **`alert()`, `confirm()`, `prompt()`**: Caixas de diálogo do navegador.

 Vejamos alguns exemplos:
 ```js
 alert("Bem-vindo!"); // exibe um alerta no navegador
 // confirmar ação
 let resposta = confirm("Você tem certeza?");
 respota ? console.log("ok") : console.log("cancel");
 // solicitar entrada do usuário
 let nome = prompt("Qual o seu nome?");
 console.log("Nome do usuário:", nome);


 console.log(window.location.href); // mostra a URL atual
 // exibindo a URL completa
 console.log(location.href); // retorna a URL atual
 // navegando para outra página
 location.href = 'https://www.exemplo.com'; // redireciona para uma nova URL
 // obtendo o domínio
 console.log(location.hostname); // retorna o domínio da página
 // obtendo o path da URL
 console.log(location.pathname); // retorna o caminho da URL
 // redirecionando a página
 window.location.href = 'https://www.exemplo.com'; // redireciona para a URL fornecida


 // verificando o nome do navegador
 console.log(navigator.userAgent);  // informações sobre o navegador e sistema operacional
 // Verificando se o navegador suporta geolocalização
 navigator.geolocation ? console.log("Geolocalização está disponível.") : console.log("Geolocalização não é suportada.");


 // acessando a altura e largura da janela
 console.log(window.innerWidth);  // largura da janela
 console.log(window.innerHeight); // altura da janela
 // exibindo a resolução da tela
 console.log(screen.pixelDepth); // profundidade de cor da tela


 // navegando para a página anterior
 history.back(); // semelhante ao "voltar" no navegador
 // navegando para a página seguinte
 history.forward(); // semelhante ao "avançar" no navegador
 // movendo para uma posição específica no histórico
 history.go(-1); // vai para a página anterior
 history.go(1);  // vai para a página seguinte
 ```

### EVENTOS
 Os eventos são a forma que temos para controlar as ações dos visitantes e definir o comportamento da página quando eles ocorrem. Quando um usuário visita e interage com uma página web são produzidos eventos, e podemos definir quais ações devem ser executadas quando eles ocorrem. Para definir as ações que queremos realizar quando um evento ocorre, utilizamos manipuladores de eventos. A manipulação de eventos é a principal ferramenta para o desenvolvimento de páginas interativas, pois com isso podemos responder às ações dos usuários. Há muitos tipos de eventos nos quais podemos associar manipuladores, para muitos tipos de ações de usuários.<br/>
 Para entendermos os eventos, precisamos conhecer alguns conceitos básicos:
 - **`event`**<br/>
 **Algo que acontece.** Geralmente os eventos *ocorrem quando o usuário interage com o documento*, mas podem ser causados por situações fora do controle do usuário, como por exemplo uma imagem que não pode ser carregada porque não está disponível.
 - **`event type`**<br/>
 **Tipo do evento ocorrido.** *Cada tipo de elemento da página informa diferentes tipos de eventos.* Pode ser por exemplo um clique em um botão, o preenchimento de um formulário ou mesmo o usuário deixando a página.
 - **`event handler`**<br/>
 **Comportamento atribuído em resposta a um evento.** *Uma vez que o manipulador estiver associado a um tipo de evento em um elemento da página, toda vez que esse tipo de evento ocorrer naquele elemento específico, o manipulador associado será executado.*

 Podemos definir eventos de 2 maneiras diferentes:
 - **`tags`**: Uma forma está no próprio documento, usando atributos dos elementos aos quais queremos associar os manipuladores.
 - **`DOM`**: Outra maneira um pouco mais avançada, é usar os próprios objetos do documento.

#### `onEventHandler`
 O manipulador de eventos pode ser colocado na tag do elemento que queremos responder às ações do usuário. Para isso usamos atributos especiais nas tags, que são prefixados com **`on`** *seguido do tipo de evento*. Por exemplo, o manipulador associado com o atributo **`onclick`** é executado quando ocorre um clique em uma tag.<br/>
 **Então se quisermos que uma função seja executada quando o botão é clicado, usamos o manipulador de eventos _`onclick`_ na tag do elemento em questão para associar o elemento à função.**<br/>
 ```html
 <input type="button" value="click" onclick="alert('button clicked')"/>

 <button onclick="alert('button clicked')">click me</button>
 ```

 Cada elemento da página tem sua própria lista de eventos suportados. Vejamos outro exemplo de tratamento de eventos, desta vez em um menu suspenso, onde definimos um comportamento quando alteramos o valor selecionado:
 ```html
 <select onchange="window.alert('selection changed')">
   <option value="option1"> 1ª opção
   <option value="option2"> 2ª opção
 </select>
 ```

 Assim como o atributo **`style`**, dentro dos manipuladores de eventos podemos colocar quantas instruções forem necessárias, sempre separadas por **`;`**.
 ```html
 <button onclick="x=30; window.alert(x); window.document.bgColor='#111'">click me</button>
 ```

 São instruções muito simples como atribuir a `x` o valor 30, exibir uma janela de alerta com o valor `x` e mudar a cor do fundo para preto. No entanto, tantas instruções colocadas em um manipulador são um pouco confusas, teria sido melhor criar uma função.<br/>
 O mais comum é inserir apenas uma instrução, e, caso seja necessário usar mais de uma geralmente criamos uma função com todas as instruções e a referenciamos no manipulador.
 ```html
 <script>
   function executaEventoOnclick() {
    var x = 30;
    window.alert(x);
    window.document.bgColor = "#111";
   }
 </script>
 <button onclick="executaEventoOnclick()">click me</button>
 ```

 Uma boa prática é sempre fazer com que o código possa ser de fácil leitura, tornando o trabalho de mantê-lo atualizado mais fácil.

#### `addEventListener`
 Outra maneira de associar os manipuladores de eventos aos elementos da página é através do método **`addEventListener()`**. Esta é uma forma ligeiramente mais avançada, mas melhora em muito a capacidade de manutenção do código, pois permite uma melhor separação entre o código de funcionalidades e o código de conteúdo.<br/>
 O código HTML deve ser usado somente para definir o conteúdo de nossa página. Se tivermos instruções JavaScript dentro de `tags`, colocando atributos como `onclick` ou `onchange`, o que estamos fazendo na realidade é colocar códigos de funcionalidade dentro do código de conteúdo, o que não é recomendado.<br/>
 Portanto, a técnica que vamos conhecer agora é a mais apropriada, pois nos permitirá escrever o código da funcionalidade – eventos – sem bagunçar o código de conteúdo. São necessárias 2 etapas para associarmos um evento a um elemento da página:

 - **ACESSAR O OBJETO**<br/>
 Para ter acesso ao objeto que queremos definir o evento, temos que localizar o objeto apropriado primeiro, para isso usamos o `DOM`.
 - **ADICIONAR O MANIPULADOR DE EVENTOS**<br/>
 Sobre o objeto, aplicamos **`addEvenListener()`**, *indicando o tipo de evento e função do manipulador*.

 Por exemplo, temos este elemento:
 ```html
 <button id='botaoClicavel'>click me</button>
 ```
 A maneira mais conveniente de acessar o elemento da página para recuperar o objeto associado a essa `tag` é usar o identificador – **atributo `id`**.<br/>
 Neste caso, o identificador **`botaoClicavel`**; para acessar este elemento usamos o método **`getElementById()`** do objeto `document`, enviado o identificador.
 ```js
 var botaoClicavel = document.getElementById("botaoClicavel");
 ```
 **Agora temos o objeto elemento da página associado a esse botão na variável `botaoClicavel`. Sobre este objeto podemos invocar o método `addEventListener()`.**<br/>
 2 parâmetros devem ser passados para este método:
 1. **tipo de evento que queremos detectar**
 2. **a função que o manipulador de eventos irá executar quando o evento ocorrer**
 ```js
 botaoClicavel.addEventListener("click",
  function() {
    alert("Botão foi clicado!");
  }
 )
 ```
 Neste exemplo visto, será exibida a mensagem de alerta.<br/>
 Vejamos outro exemplo de uma imagem na qual vamos associar manipulador de eventos a um **`mouseover`** – que é "reproduzido" quando o usuário coloca o ponteiro do mouse sobre o elemento.
 ```html
 <img src="https://website.com/image.png" id="profilePic">
 ```
 Agora associamos o manipulador de eventos do tipo `mouseover` com o código abaixo:
 ```js
 var profilePic = document.getElementById("profilePic");
 profilePic.addEventListener('mouseover', function() {
  alert("O ponteiro do mouse foi posicionado sobre a imagem!");
 });
 ```

 A tabela a seguir resume os principais eventos definidos pelo JS:

#### **Eventos de Posição do Mouse (Pointer)**
- `onpointerdown` – Quando um ponteiro (mouse, caneta ou toque) é pressionado.
- `onpointerup` – Quando o ponteiro é solto.
- `onpointermove` – Quando o ponteiro se move.
- `onpointerover` – Quando o ponteiro entra na área do elemento.
- `onpointerout` – Quando o ponteiro sai da área do elemento.
- `onpointerenter` – Como `pointerover`, mas sem propagação.
- `onpointerleave` – Como `pointerout`, mas sem propagação.
- `onpointercancel` – Quando um ponteiro é cancelado.
- `onpointerlockchange` – Quando o ponteiro do mouse é "bloqueado" (`pointer lock`).
- `onpointerlockerror` – Quando ocorre um erro no bloqueio do ponteiro.

✅ **Qualquer elemento interativo** (`button`, `a`, `input`, `textarea`, `div`, `span`, `canvas`, `svg`, `iframe`, `img`, etc.)
- `onpointerdown`, `onpointerup`, `onpointermove`, `onpointerover`, `onpointerout`, `onpointerenter`, `onpointerleave`, `onpointercancel`:  
  - **Usado em**: Quase todos os elementos, mas principalmente interativos como `button`, `a`, `div`, `span`, `canvas`, `img`, `textarea`.

- `onpointerlockchange`, `onpointerlockerror`:  
  - **Usado em**: `body`, `document`, `canvas`, `iframe`.

#### **Eventos de Mouse**
- `onclick` – Quando o elemento é clicado.
- `ondblclick` – Quando ocorre um clique duplo.
- `onmousedown` – Quando o botão do mouse é pressionado.
- `onmouseup` – Quando o botão do mouse é solto.
- `onmousemove` – Quando o mouse se move sobre o elemento.
- `onmouseover` – Quando o mouse entra na área do elemento.
- `onmouseout` – Quando o mouse sai da área do elemento.
- `onmouseenter` – Quando o mouse entra no elemento (sem propagar para filhos).
- `onmouseleave` – Quando o mouse sai do elemento (sem propagar para filhos).
- `oncontextmenu` – Quando o botão direito do mouse é pressionado.

✅ **Qualquer elemento interativo** (`button`, `a`, `div`, `span`, `img`, `canvas`, `textarea`, `iframe`)

- `onclick`, `ondblclick`, `onmousedown`, `onmouseup`, `onmousemove`, `onmouseover`, `onmouseout`, `onmouseenter`, `onmouseleave`, `oncontextmenu`:  
  - **Usado em**: `button`, `a`, `div`, `span`, `img`, `textarea`, `canvas`, `iframe`.

#### **Eventos de Teclado**
- `onkeydown` – Quando uma tecla é pressionada.
- `onkeyup` – Quando uma tecla é solta.
- `onkeypress` – Quando uma tecla é pressionada e solta (obsoleto).

✅ **Elementos de entrada** (`input`, `textarea`, `select`, `body`)

- `onkeydown`, `onkeyup`, `onkeypress`:  
  - **Usado em**: `input`, `textarea`, `select`, `body`, `document`.

#### **Eventos de Clipboard**
- `oncopy` – Quando o usuário copia algo.
- `oncut` – Quando o usuário recorta algo.
- `onpaste` – Quando o usuário cola algo.

✅ **Elementos editáveis** (`input`, `textarea`, `[contenteditable]`)

- `oncopy`, `oncut`, `onpaste`:  
  - **Usado em**: `input`, `textarea`, `[contenteditable]`.

#### **Eventos de Formulário**
- `onfocus` – Quando um elemento recebe foco.
- `onblur` – Quando um elemento perde o foco.
- `onchange` – Quando o valor de um campo muda.
- `oninput` – Quando há entrada de dados em um campo de formulário.
- `oninvalid` – Quando um campo não passa na validação.
- `onreset` – Quando um formulário é resetado.
- `onsearch` – Quando um campo de pesquisa recebe uma entrada.
- `onselect` – Quando o usuário seleciona um texto.
- `onsubmit` – Quando um formulário é enviado.

✅ **Elementos de formulário** (`input`, `textarea`, `select`, `form`)

- `onfocus`, `onblur`, `onchange`, `oninput`, `oninvalid`:  
  - **Usado em**: `input`, `textarea`, `select`.

- `onreset`, `onsubmit`:  
  - **Usado em**: `form`.

- `onsearch`:  
  - **Usado em**: `input type="search"`.

- `onselect`:  
  - **Usado em**: `input type="text"`, `textarea`.

#### **Eventos de Drag & Drop**
- `ondrag` – Quando um elemento está sendo arrastado.
- `ondragstart` – Quando o usuário começa a arrastar um elemento.
- `ondragend` – Quando o usuário solta o elemento arrastado.
- `ondragenter` – Quando um elemento arrastado entra em uma área válida.
- `ondragleave` – Quando um elemento arrastado sai de uma área válida.
- `ondragover` – Quando um elemento arrastado está sobre uma área válida.
- `ondrop` – Quando o usuário solta o elemento arrastado.

✅ **Elementos interativos** (`div`, `img`, `a`, `span`, `canvas`)

- `ondrag`, `ondragstart`, `ondragend`, `ondragenter`, `ondragleave`, `ondragover`, `ondrop`:  
  - **Usado em**: `div`, `img`, `a`, `span`, `canvas`, `body`.

#### **Eventos de Mídia**
- `onabort` – Quando o carregamento de mídia é interrompido.
- `oncanplay` – Quando a mídia pode começar a ser reproduzida.
- `oncanplaythrough` – Quando a mídia pode ser reproduzida completamente sem interrupções.
- `oncuechange` – Quando a cue (legenda) muda.
- `ondurationchange` – Quando a duração da mídia muda.
- `onemptied` – Quando uma mídia não tem mais dados válidos.
- `onended` – Quando a reprodução da mídia termina.
- `onloadeddata` – Quando os dados da mídia foram carregados.
- `onloadedmetadata` – Quando os metadados da mídia (duração, dimensões, etc.) foram carregados.
- `onloadstart` – Quando o carregamento da mídia começa.
- `onpause` – Quando a reprodução da mídia é pausada.
- `onplay` – Quando a mídia começa a ser reproduzida.
- `onplaying` – Quando a mídia continua sendo reproduzida após ter sido pausada ou carregada.
- `onprogress` – Quando há progresso no carregamento da mídia.
- `onratechange` – Quando a velocidade da reprodução muda.
- `onseeked` – Quando a busca na mídia foi concluída.
- `onseeking` – Quando a busca na mídia está em andamento.
- `onstalled` – Quando o carregamento da mídia é interrompido.
- `onsuspend` – Quando o carregamento da mídia é suspenso.
- `ontimeupdate` – Quando o tempo de reprodução da mídia é atualizado.
- `onvolumechange` – Quando o volume da mídia muda.
- `onwaiting` – Quando a mídia está aguardando para carregar mais dados.

✅ **Elementos de mídia** (`audio`, `video`, `source`, `track`)

- `onabort`, `oncanplay`, `oncanplaythrough`, `oncuechange`, `ondurationchange`, `onemptied`, `onended`, `onloadeddata`, `onloadedmetadata`, `onloadstart`, `onpause`, `onplay`, `onplaying`, `onprogress`, `onratechange`, `onseeked`, `onseeking`, `onstalled`, `onsuspend`, `ontimeupdate`, `onvolumechange`, `onwaiting`:  
  - **Usado em**: `audio`, `video`, `source`, `track`.

#### ✏️ **Eventos de Estilização e Animação**
- `onanimationstart` – Quando uma animação CSS começa.
- `onanimationiteration` – Quando uma animação CSS repete.
- `onanimationend` – Quando uma animação CSS termina.
- `ontransitionstart` – Quando uma transição CSS começa.
- `ontransitionrun` – Quando uma transição CSS inicia, mas antes do delay.
- `ontransitionend` – Quando uma transição CSS termina.

✅ **Qualquer elemento com animação/transição CSS**

- `onanimationstart`, `onanimationiteration`, `onanimationend`:  
  - **Usado em**: Qualquer elemento animado com CSS (`div`, `span`, `button`, etc.).

- `ontransitionstart`, `ontransitionrun`, `ontransitionend`:  
  - **Usado em**: Qualquer elemento com transições CSS (`div`, `span`, `button`, etc.).

#### **Eventos de DOM**
- `onreadystatechange` – Quando o estado do `document.readyState` muda.
- `onDOMContentLoaded` – Quando o HTML foi carregado, mas os recursos ainda não.
- `onvisibilitychange` – Quando a visibilidade da página muda (`visible` ou `hidden`).
- `onfullscreenchange` – Quando a página entra ou sai do modo tela cheia.
- `onfullscreenerror` – Quando ocorre um erro ao tentar alternar para tela cheia.

✅ **Apenas elementos globais como `document` e `body`**

- `onreadystatechange`, `onDOMContentLoaded`, `onvisibilitychange`, `onfullscreenchange`, `onfullscreenerror`:  
  - **Usado em**: `document`, `body`.

#### **Eventos de Janela e Documento**
- `onload` – Quando o documento ou um recurso (como imagem) é carregado.
- `onunload` – Quando a página está sendo descarregada.
- `onbeforeunload` – Antes do usuário sair da página.
- `onresize` – Quando o tamanho da janela do navegador muda.
- `onscroll` – Quando a página ou elemento é rolado.
- `onhashchange` – Quando o hash da URL muda (`#algumacoisa`).
- `onstorage` – Quando ocorre uma mudança no `localStorage` ou `sessionStorage`.
- `onerror` – Quando um erro ocorre (imagem, script, etc).

✅ **Somente `window`, `document` e `body`**

- `onload`, `onunload`, `onbeforeunload`, `onresize`, `onscroll`, `onhashchange`, `onstorage`, `onerror`:  
  - **Usado em**: `window`, `document`, `body`.

#### **Eventos de Histórico e Navegação**
- `onpopstate` – Quando o estado do histórico muda (`window.history`).
- `onpageshow` – Quando uma página é exibida (inclusive de cache).
- `onpagehide` – Quando uma página é oculta.

✅ **Somente `window`, `document` e `body`**

- `onpopstate`, `onpageshow`, `onpagehide`:  
  - **Usado em**: `window`, `document`.

#### **Eventos de Touch (Toque em Dispositivos Móveis)**
- `ontouchstart` – Quando um toque começa na tela.
- `ontouchmove` – Quando um toque se move na tela.
- `ontouchend` – Quando um toque termina.
- `ontouchcancel` – Quando um toque é interrompido.

✅ **Quase todos os elementos interativos (`div`, `button`, `canvas`, `img`)**

- `ontouchstart`, `ontouchmove`, `ontouchend`, `ontouchcancel`:  
  - **Usado em**: `div`, `span`, `button`, `canvas`, `img`, `a`.

#### **Eventos de Dispositivo**
- `ondeviceorientation` – Quando a orientação do dispositivo muda.
- `ondevicemotion` – Quando o acelerômetro detecta movimento.

✅ **Apenas `window` e `document`**

- `ondeviceorientation`, `ondevicemotion`:  
  - **Usado em**: `window`, `document`.

#### **Eventos de Rede e Conectividade**
- `onoffline` – Quando o dispositivo fica offline.
- `ononline` – Quando o dispositivo volta a ficar online.

✅ **Somente `window` e `document`**

- `onoffline`, `ononline`:  
  - **Usado em**: `window`, `document`.

#### **Eventos de Impressão**
- `onbeforeprint` – Antes da página ser impressa.
- `onafterprint` – Depois que a página foi impressa.

✅ **Somente `window` e `document`**

- `onbeforeprint`, `onafterprint`:  
  - **Usado em**: `window`, `document`.

## DATA I/O
 O JS tem várias ferramentas para lidar com dados:
 - Entrada de **`form`**: **`input`**.
 - O comando: **`prompt()`**.
 - O comando: **`alert()`**.
 - O comando: **`confirm()`**.
 - O módulo: **`const readline = require('readline');`**.

### FORM INPUTS
Outra forma de obter entrada do usuário é através de elementos HTML, como **`<input>`**, e manipulá-los com JavaScript. Esta abordagem é **mais flexível** e permite uma *melhor experiência do usuário*.<br/>
 Os navegadores permitem a manipulação do **DOM** (*Document Object Model*) através do JavaScript. *Ao associar eventos, como o clique de um botão, a funções JavaScript, podemos interagir dinamicamente com os elementos da página.* O método **`getElementById()`** *retorna uma referência ao elemento com o id especificado, permitindo acessar e manipular suas propriedades, como o **`value`** de um campo de entrada*.
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Entrada de Dados</title>
</head>
<body>
  <input type="text" id="nomeInput" placeholder="Digite seu nome"> <!---Cria um campo de texto onde o usuário pode digitar seu nome. -->
  <button onclick="saudar()">Enviar</button> <!--- Cria um botão que, ao ser clicado, chama a função `saudar()`. --->

  <script>
    function saudar() { // Função executada ao ser chamada pelo botão clicado.
      var nome = document.getElementById('nomeInput').value; // Quando o botão "Enviar" é pressionado, essa função obtém o valor digitado no campo de entrada `id=nomeInput` e o armazena na variável `nome`.
      console.log("Olá, " + nome);
    }
  </script>
</body>
</html>
```

### PROMPT
 Com **`prompt`**, inserimos a variável através de uma janela, este método é uma função nativa do objeto **`window`** nos navegadores. Quando chamado, ele pausa a execução do script e exibe uma caixa de diálogo *`modal`*, aguardando a interação do usuário. Após o usuário inserir um valor e confirmar, o `prompt()` retorna esse valor, permitindo que o script continue sua execução com a entrada fornecida.<br/>
 Neste exemplo, o que o usuário inserir no campo de entrada da janela será armazenado na variável `name`.
```js
var name=prompt("Nome: ");
console.log(`Hi ${name}!`);
```

 Podemos informar *2 parâmetros* para a função `prompt()`; o _primeiro_ é o **texto a ser exibido** e o _segundo_ é o **valor padrão**.
```js
var nickname=prompt("User name: ", "newUser");
```

Por padrão, tudo que é inserido por `prompt` é considerado como `string`, mesmo que sejam números. **Caso seja necessário receber números operáveis, deve-se fazer a conversão com **`parseint`**, **`parsefloat`**, etc.
```js
var salary = parseFloat(prompt("Pretenção: U$ "));
```

 Uma **`string`** é retornada se o usuário clicar em *"OK"*, caso clique em *"Cancel"* é retornado **`null`**, e, se o usuário clicar em *"OK"* sem inserir nenhum texto, uma **string vazia** é devolvida. **Por isso devemos sempre fazer o tratamento de excessões quando precisamos de dados externos, para garantir que o código trabalhe sempre com o dados esperados, evitando assim _bugs_ durante a execução do programa.**

### ALERT
 O comando `alert` exibe uma janela pop-up com um aviso e botões para coletar a resposta do usuário. Este é considerado um *"alerta normal"*, que exibe uma informação do usuário com **apenas o botão para fechar o pop-up**.
```js
alert("!ALERTA!");
```

### CONFIRM
  O comando `confirm` exibe uma janela pop-up com um aviso e botões para coletar a resposta do usuário. Este é considerado um *"alerta de confirmação"*, que exibe uma informação do usuário e **coleta na variável a resposta do usuário, que será `true` ou `false`**.
```js
var confirmation = confirm("Termos de Política de Privacidade");
```

### CONSOLE
 Até agora, vimos opções que são visíveis ao usuário, mas esta opção não é exibida ao usuário a menos que abramos o console. Existem várias formas de executar códigos JavaScript em um página. Uma delas é executar códigos no que chamamos de Console. O console nos permite trabalhar com JS instantaneamente, corrigir erros, ver quais variáveis estão dentro, ver o que está acontecendo em nosso código, observar o fluxo do programa está indo e assim por diante. Este comando exibe uma mensagem no **console** do navegador.
```js
console.log("Hello world!");
```

 O objeto `console` fornece diversos métodos úteis para depuração, monitoramento de valores e exibição de mensagens no terminal. Vejamos os métodos de output:

| Método                               | Descrição                                                                             |
|--------------------------------------|---------------------------------------------------------------------------------------|
| `console.log()`                      | Imprime mensagens genéricas.                                                          |
| `console.info()`                     | Similar ao `log()`, usado para mensagens informativas.                                |
| `console.warn()`                     | Exibe uma mensagem de aviso (amarelo no console).                                     |
| `console.error()`                    | Exibe mensagens de erro (vermelho no console).                                        |
| `console.debug()`                    | Mensagens de depuração (às vezes oculto por padrão).                                  |
| `console.assert(condition, message)` | Exibe erro se a condição for falsa.                                                   |
| `console.count([label])`             | Conta quantas vezes foi chamado com o mesmo label.                                    |
| `console.countReset([label])`        | Reseta a contagem de `count` para aquele label.                                       |
| `console.time(label)`                | Inicia um temporizador.                                                               |
| `console.timeLog(label)`             | Loga o tempo até o momento.                                                           |
| `console.timeEnd(label)`             | Finaliza o temporizador e mostra o tempo decorrido.                                   |
| `console.group([label])`             | Inicia um grupo de mensagens colapsável.                                              |
| `console.groupCollapsed([label])`    | Grupo colapsado por padrão.                                                           |
| `console.groupEnd()`                 | Fecha o grupo atual.                                                                  |
| `console.table(data[, columns])`     | Exibe dados em formato tabular (ideal para arrays/objetos).                           |
| `console.dir(obj[, options])`        | Lista todas as propriedades de um objeto.                                             |
| `console.trace()`                    | Exibe o rastro da pilha até o ponto atual.                                            |
| `console.clear()`                    | Limpa o console.                                                                      |
| `console.profile([label])`           | Inicia uma sessão de profiling (suportado em alguns navegadores).                     |
| `console.profileEnd([label])`        | Encerra o profiling.                                                                  |
| `console.dirxml(node)`               | Exibe um nó DOM como XML/HTML.                                                        |
| `console.timeStamp([label])`         | Marca um ponto de tempo na linha do tempo de performance.                             |
| `console.memory`                     | Objeto com informações de uso de memória (somente em alguns navegadores, ex: Chrome). |

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <title>Console</title>
</head>
<body>
  <h1>Abra o console do navegador e clique no botão abaixo para ver a demonstração completa dos métodos.</h1>
  <button>click</button>

  <script>
    const botao = document.querySelector("button");

    botao.addEventListener("click", () => {

      // 📋 Métodos comuns
      console.log("🔵 console.log: mensagem genérica");
      console.info("ℹ️ console.info: mensagem informativa");
      console.warn("⚠️ console.warn: aviso");
      console.error("❌ console.error: erro");
      console.debug("🐞 console.debug: depuração");

      // 🧪 Teste e validação
      console.assert(2 + 2 === 5, "❗ console.assert: 2 + 2 NÃO é igual a 5");

      console.count("Contador");
      console.count("Contador");
      console.countReset("Contador");
      console.count("Contador (após reset)");

      // ⏱️ Temporizadores
      console.time("⏱️ Tempo total");
      for (let i = 0; i < 1000000; i++) {} // Simulação de carga
      console.timeLog("⏱️ Tempo total");
      console.timeEnd("⏱️ Tempo total");

      // 📚 Agrupamentos
      console.group("📂 Grupo de logs");
      console.log("🔹 Item 1");
      console.log("🔹 Item 2");
      console.groupCollapsed("📁 Subgrupo colapsado");
      console.log("🔸 Subitem 1");
      console.groupEnd(); // Fecha subgrupo
      console.groupEnd(); // Fecha grupo principal

      // 📚 Estrutura tabular
      const dados = [
        { nome: "Raphael", idade: 27 },
        { nome: "Déborah", idade: 29 }
      ];
      console.table(dados);
      console.table(dados, ["nome"]);

      // 📚 Visualização de objeto
      const obj = {
        nome: "Exemplo",
        detalhes: {
          ativo: true,
          nivel: 42,
          tags: ["teste", "debug"]
        }
      };
      console.dir(obj);

      // 🌲 Stack trace
      function a() { b(); }
      function b() { c(); }
      function c() {
        console.trace("📌 Rastreamento da pilha");
      }
      a();

      // ⚙️ Outros
      //console.clear(); // Descomente se quiser limpar o console
      console.profile ? console.profile("🧪 Perfil de desempenho") : console.log("ℹ️ console.profile não suportado neste navegador.");
      for (let i = 0; i < 500000; i++) // Simula carga
      console.profileEnd ? console.profileEnd("🧪 Perfil de desempenho") : console.log("ℹ️ console.profile não suportado neste navegador.");

      // DOM - apenas para navegadores
      console.dirxml(document.body);

      // Marca de tempo (aparece na aba Performance em devtools)
      console.timeStamp("🚩 Marca de tempo personalizada");

      // Memória (somente alguns navegadores, ex: Chrome)
      console.memory ? console.log("🧠 Uso de memória:", console.memory) : console.log("ℹ️ console.memory não suportado neste navegador.");
    });
  </script>
</body>
</html>
```

 O módulo **`readline`** — nativo do **`Node.js`** — fornece uma **interface** para *ler dados de um fluxo de entrada como o terminal*. Para isso é necessário construir o método que irá receber os dados lidos no terminal — informados pelo usuário. O `Node.js` é projetado para operações *assíncronas* e *baseadas em eventos*. O módulo `readline` facilita a leitura de dados linha a linha de um fluxo de entrada, como o terminal. O método `question()` exibe uma mensagem e aguarda a entrada do usuário, executando uma função de callback assim que o usuário envia a resposta.
```js
const readline = require('readline'); // importa o módulo `readline` que fornece a interface para a leitura dos dados

// cria a interface de leitura especificando os fluxos
const rl = readline.createInterface({
  input: process.stdin, // define o fluxo de entrada padrão: teclado/terminal
  output: process.stdout // define o fluxo de saída padrão: tela/terminal
});

/* .question(output-parameter, (callback-input-parameter) => {
        doSomething(callback-input-parameter)
    .close})

podemos encapsular este código dentro de uma `arow function` caso precisemos utilizá-lo outras vezes sem precisar reescreve-lo */
let userName = () => rl.question('User: ', (name) => {
  console.log(`Welcome ${name}`);
  rl.close(); // fecha a interface de leitura, liberando os recursos associados
});

userName();
```

### DOCUMENT OUTPUT
 Com o **`document.write()`** podemos **escrever _diretamente_ no código HTML de nossa página web.**<br/>
```html
<head>
  <meta charset="utf-8">
  <title>Document</title>
  <script>
    var titulo = "Olá mundo!";
    document.write(`<h1>[pt-BR] ${titulo}</h1>`);
  </script>
</head>
```

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.1-cpp/otimizacao_de_codigo_e_desempenho.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/manipulacao_dom.md">next</a>