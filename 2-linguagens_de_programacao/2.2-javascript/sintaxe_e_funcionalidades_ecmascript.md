# JAVASCRIPT
 JavaScript é uma linguagem de programação *interpretada*, ou seja o código é interpretado e executado conforme é lido pelo navegador linha a linha assim como o HTML, de *alto nível*, que significa que sua sintaxe é muito familiar a linguagem natural humana e *multiparadigma*, o que demonstra seu poder ao ser possível programar em vários formatos diferentes, **desenvolvida para criar páginas web interativas e dinâmicas**. Ela é responsável por adicionar funcionalidades como **validação de formulários**, **animações**, **manipulação do conteúdo da página** e **resposta a eventos do usuário** em conjunto com HTML e CSS para tornar a experiência na web mais rica. JavaScript é a linguagem de programação mais popular no desenvolvimento Web. Suportada por todos os navegadores, a linguagem é responsável por praticamente qualquer tipo de dinamismo que queiramos em nossas páginas.<br/>
 Visando o potencial da Internet para o público geral e a necessidade de haver uma interação maior do usuário com as páginas, a Netscape, criadora do navegador mais popular do início dos anos 90, de mesmo nome, investiu na criação de uma linguagem para isto. Originalmente criado em 1995, por Brendan Eich, enquanto trabalhava na Netscape Communications Corporation, foi contratado para desenvolver uma linguagem de script que permitisse dinamizar as páginas do navegador Netscape Navigator. Em apenas 10 dias nasceu a primeira versão da linguagem, que inicialmente recebeu o nome de `Mocha` e posteriormente renomeada para `LiveScript`, uma linguagem simples que permitia a execução de scripts contidos nas páginas dentro do próprio navegador, logo em seguida, aproveitando o crescente sucesso do **Java**, que vinha conquistando cada vez mais espaço no mercado de desenvolvimento de aplicações corporativas, a Netscape num acordo com a Sun para alavancar o uso das duas, numa jogada de marketing influenciada pela popularidade da linguagem Java o nome foi alterado para **`JavaScript`**. A então vice-líder dos navegadores, Microsoft, adicionou ao Internet Explorer o suporte a scripts escritos em VBScript e criou sua própria versão de JavaScript, o **JScript**. Apesar de serem bastante diferentes em termos de design e funcionamento. A padronização do JavaScript veio por meio da ECMA International, dando origem à especificação **ECMAScript** — padronização de linguagens de script que define as regras, sintaxe, tipos e comportamentos que as linguagens de script devem seguir para garantir consistência e interoperabilidade entre diferentes ambientes como navegadores e servidores. Em outras palavras, enquanto o JavaScript é a implementação mais conhecida dessa especificação, ECMAScript serve como a base que orienta seu desenvolvimento e evolução, com atualizações periódicas para incorporar novas funcionalidades e melhorias.<br/>
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
 No contexto do desenvolvimento web existem termos como *server-side* e *client-side*. Códigos do lado do cliente são executados no computador do usuário — quando uma página web é visualizada, o código do lado do cliente é baixado, executado e exibido pelo navegador. Códigos do lado do servidor, por outro lado, são executados no servidor e o resultado da execução é baixado e exibido no navegador. Exemplos de linguagens do lado do servidor populares incluem PHP, Python, Ruby, e ASP.NET. E JavaScript! JavaScript também pode ser usada como uma linguagem server-side, por exemplo, no popular ambiente Node.js<br/>
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
 <script defer src="js/vendor/jquery.js"></script>
 <script defer src="js/invoice.js"></script>
 <script defer src="js/enrollment.js"></script>
 ```
 Scripts carregados utilizando o atributo `async` irão baixar seu conteúdo sem bloquear a renderização da página, e irão executar imediatamente após o script terminar de ser disponibilizado. Neste modo não há nenhuma garantia de que os scripts carregados irão executar em uma ordem específica, mas com certeza não irão impedir o carregamento do restante da página. **O melhor uso para `async` é quando os scripts de uma página rodam de forma _independente_ entre si.**<br/>
 No exemplo acima, não é garantido que o script `jquery.js` carregará antes ou depois do `invoice.js` e `enrollment.js`. Nesse caso, se alguma função desses scripts dependem de algo vindo de `jquery`, será produzido um erro, pois o `jquery` ainda não foi carregado e definido quando os scipts executaram essa função.<br/>
 async deve ser usado quando houver muitos scripts rodando no background e precisam estar disponíveis o mais rápido possível. Por exemplo, um usuário tem muitos arquivos de dados de um jogo para carregar que serão necessários assim que o jogo iniciar, mas por enquanto, podemos permitir que ele entre e veja a tela de carregamento, a do titulo do jogo e o lobby, sem ser bloqueado pelo carregamento desses scripts.

 **defer**
 ```html
 <script src="script.js" defer></script>
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
    <script src="script.js"></script> <!-- JS -->
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
  <script src="script.js" defer></script>
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

### TIPOS DE DADOS
O JavaScript também possui grande tolerância a erros, uma vez que conversões automáticas são realizadas durante operações. Por ser uma linguagem de ***tipagem dinâmica***, o JavaScript tem apenas **3 tipos de dados básicos**. Por conta dessa característica, uma variável pode receber uma **`string`** em um determinado momento, e em outro, um dado tipo **`number`**. Vejamos:
 1. **STRINGS**<br/>
 Caracteres, alfanuméricos e textos em geral (como palavras e frases). Valores de Strings são imutáveis, logo, se uma variável for alterada com algum método, aquela alteração só existe naquele momento, ao utilizar novamente a variável (sem o método) ela informará o seu valor original. Para utilizar a alteração realizada é necessário armazenar o retorno do método em outa variável.
 2. **NUMBERS**<br/>
 Números *inteiros* (**`int`**) ou *decimais* (**`float`** e **`double`**). Assim como String, Numbers são imutáveis, sendo necessário também armazenar o retorno em outra variável.
 3. **BOOLEANS**<br/>
 Com apenas **2 valores possíveis**: **`true`** ou **`false`**.

### DECLARAÇÕES
 Chamamos cada _comando_ que escrevemos de **declaração**, e, apesar de o JS não exigir, como **boa prática de código limpo** *cada linha de comando deve ser fechada com `;`*.
 ```js
 console.log("Esta é uma declaração.");
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
 Por definição, uma variável é um espaço na memória do computador onde um valor será armazenado, tal este que pode mudar durante a execução do programa.<br/>
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

 Como visto acima, as variáveis são declaradas de 2 maneiras:

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

##### POPULANDO VARIÁVEIS
 Podemos tanto declarar uma **uma variável _vazia¹_ e atribuir-lhe um valor durante o tempo de execução do programa** quanto **variável _inicializada²_**.
 ```js
 // 1
 var name;
 name = "Raphael";

 // 2
 var msg = `Welcome ${name}`;
 ```

###### ALTERANDO VALOR ATRIBUÍDO
 Para modificar uma variável já declarada ou com valor atribuído, basta escrevermos seu *identificador* e o valor que queremos sobrescrever:
 ```js
 var num = 10;
 num = 5;
 ```
###### TRABALHANDO STRINGS
 Qualquer valor entre aspas duplas `"value"` ou simples `'value'` atribuído a uma variável é considerado uma `string`, mesmo que o valor seja um número.<br/>
 Uma boa prática é usar **aspas duplas `""`** *para palavras e frases*, e **aspas imples `''`** *para caracteres*.
 ```js
 var num1 = 9;   // int
 var num2 = '9'; // char
 var num3 = "10" // string
 ```

 Um ponto que o desenvolvedor deve estar sempre atento ao trabalhar com `strings` é que, ao concatená-las com valores numéricos, estes valores passam a ser considerados TODOS como `strings`:
 ```js
 var x = '5';
 console.log(x + 10); // "510": string
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
 ```

 3. **Vírgula `"texto ", variavel`**<br/>
 *Ideal para quando você deseja imprimir múltiplos valores em vez de concatená-los em uma única string.*<br/>
 Nesse caso, a vírgula *não faz* uma concatenação de `strings`, mas sim imprime os dois valores (`"Welcome "` e `nick_name`) separados por um espaço — comportamento padrão do `console.log()`.<br/>
 O JavaScript imprime os argumentos passados para `console.log()` de forma separada na ordem em que estão, sem concatená-los explicitamente.
 ```js
 let nick_name = "Raphael";

 console.log("Welcome ", nick_name);
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
 O comando **`typeof(var)`** nos diz o tipo de uma variável.

##### VAR CASTING
 Var casting (ou type casting) é o processo de converter um valor de um tipo de dado para outro em uma linguagem de programação. Isso é útil quando precisamos tratar dados de diferentes tipos em uma operação.

###### TIPOS DE CASTING
 1. **Casting Implícito (Automatic Type Conversion)**<br/>
 Ocorre automaticamente quando um tipo menor é convertido para um tipo maior, por exemplo: `int` para `float`, sem perda de dados.
 2. **Casting Explícito (Explicit Type Conversion)**<br/>
 Feito manualmente pelo programador usando funções específicas, e por conta do `truncate` pode causar perda de dados por exemplo: `float` para `int`.

 Existem vários meios para manipular variáveis. Vejamos algumas opções:

 1. **`length`**<br/>
      - Calcula a *extensão de um texto*, ou seja, a quantidade de caracteres que ele contém.
      - Se usado em um **`array`** retorna o *número de elementos contidos nele*.
 ```js
 const texto = "Olá, Mundo!";
 const vetor = ["valor 1", "valor 2", "valor 3"];
 console.log(texto.length); // Saída: 11
 console.log(vetor.length); // Saída: 3
 ```

 2. **`Number()`**<br/>
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

 3. **`parseInt()`**<br/>
 Examina a string do início e converte os dígitos encontrados até que um caractere inválido seja encontrado. **Se o primeiro caractere não for numérico — após ignorar espaços, retorna `NaN`. Mesmo que a parte analisada contenha uma parte decimal, o retorno é sempre um inteiro, e a parte decimal depois do ponto é descartada.** *Permite informar a base numérica — por exemplo, 10 para decimal, 16 para hexadecimal — como segundo parâmetro.*
 ```js
 parseInt("10.5");       // retorna 10
 parseInt("10 anos");    // retorna 10
 parseInt("   123abc");  // retorna 123
 parseInt("abc123");     // retorna NaN — não começa com dígitos
 parseInt("0xF");        // retorna 15 — interpretado como hexadecimal
 ```

 4. **`parseFloat()`**<br/>
 Funciona de forma similar ao `parseInt()` ao "ler" a string do início e interromper na primeira ocorrência de um caractere inválido para um número, **mas retorna um valor de ponto flutuante**. *Se a parte numérica da string contém um ponto decimal, o valor retornado preserva essa parte fracionária e não trunca o valor como em `parseInt()`.*
 ```js
 parseFloat("10.5");       // retorna 10.5
 parseFloat("10.5abc");    // retorna 10.5
 parseFloat("10 anos");    // retorna 10
 parseFloat("abc10.5");    // retorna NaN
 ```

 5. **`toFixed`**<br/>
 Altera o número de casas decimais e retorna uma String.
 ```js
 var oneNumber = 1000;
 var oneString = milNumber.toFixed(2); // recebe o retorno da função
 console.log(oneString); // imprime a string "1000.00"
 ```

 6. **`toString()`**<br/>
 Converte tipo numérico para string:
 ```js
 var num = 10;
 var Num = num.toString();
 console.log(`Num: ${typeof(Num)}`); // Num = "10": string
 ```

 7. **`toUppercase()`**<br/>
 Converte uma `string` em maiúsculas:
 ```js
 const texto = "Olá, Mundo!";
 const textoMaiusculo = texto.toUpperCase();

 console.log(textoMaiusculo); // Saída: "OLÁ, MUNDO!"
 ```

 8. **`toLowercase()`**<br/>
 Converte uma `string` em minúsculas:
 ```js
 const texto = "Olá, Mundo!";
 const textoMinusculo = texto.toLowerCase();

 console.log(textoMinusculo); // Saída: "olá, mundo!"
 ```

 9. **`includes()`**<br/>
 Também retorna um valor booleano e procura por uma palavra no texto, porém busca qualquer correspondência em qualquer posição e é *case sensitive*.
 ```js
 const texto = "Hello, World!";
 console.log(texto.includes(", ")); // true
 ```

 10. **`substr()`**<br/>
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

 11. **`substring()`**<br/>
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

 12. **`slice()`**<br/>
 Utilizado para extrair uma parte de uma string ou array, retornando uma nova string ou array sem modificar o original. Tanto para strings quanto para arrays, índices negativos contam a partir do final, onde o `-1` representa o último elemento.
 ```js
 const nomeCompleto = "Raphael Kaíque Dias Santos";
 const primeiroNome = `${nomeCompleto.slice(0, 9)}.` ; // extraindo a palavra "Raphael K"
 console.log(primeiroNome); // "Raphael K."

 const frutas = ["Maçã", "Banana", "Laranja", "Manga"];
 const resultado = frutas.slice(0, 2); // extraindo as duas primeiras frutas
 console.log(resultado); // ["Maçã", "Banana"]
 ```

 13. **`split()`**<br/>
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

 14. **`replace()`**<br/>
 Permite substituir um texto por outro em qualquer parte da `string`, e é *case sensitive*.
 ```js
 var texto = "Hello, World!";
 console.log(texto.replace(", World", "life")); // "Hello life!"

 console.log(texto); // "Hello, World!"
 var TEXTO = texto.replace(", World", "life");
 console.log(`texto: ${texto} | TEXTO: ${TEXTO}`) // "Hello, World!" | "Hello life!"
 ```

 15. **`trim()`**<br/>
 Permite remover espaços em branco no início e no fim de uma string. Ele não modifica a string original, apenas retorna uma nova string sem os espaços desnecessários.
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

 16. **`startsWith()`**<br/>
 Procura um termo no início da `string`, retornando `true` ou `false`. Ou seja, se o texto começa com os caracteres que buscamos, neste caso o resultado seria `true`.
 ```js
 const texto = "Hello, World!";
 console.log(texto.startsWith("Hell")); // true
 ```

 17. **`endsWith()`**<br/>
 Como o anterior, mas verificando o final do texto.
 ```js
 const texto = "Hello, World!";
 console.log(texto.endsWith("World!")); // true
 ```

 18. **`chartAt()`**<br/>
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

 19. **`lastIndexOf()`**<br/>
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

 20. **`indexOf()`**<br/>
 Para procurar a posição de um termo dentro de um texto. Ele retorna o valor do índice se encontrado e qual sua posição no parâmetro de busca.
 ```js
 var nomeCompleto = "Raphael Kaíque Dias Santos";
 var primeiroNome = nomeCompleto.indexOf("Raphael");

 console.log(primeiroNome); // Saída: 0
 ```

 21. **`search()`**<br/>
 Funciona da mesma maneira, caso não encontre uma correspondência ele retorna `-1`.
 ```js
 var nomeCompleto = "Raphael Kaíque Dias Santos";
 var primeiroNome = nomeCompleto.search("Silva");

 console.log(primeiroNome); // Saída: -1
 ```

 22. **`match()`**<br/>
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
 Até agora vimos como armazenar um único dado dentro de um espaço na memória, seja `number`, `string` ou `bool`. Mas também existem maneiras de agruparmos valores diferentes em um mesmo endereço na memória.

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
 Como vimos em JSON, um objeto é uma estrutura semelhante que permite armazenar dados na forma de pares de chave e valor `{key: value}`. Porém, diferentemente do JSON – que apenas armazena dados, um objeto também pode armazenar funções. É um dos principais tipos de dados e é muito usado para representar entidades do mundo real.

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
 const livro = new Object();
 livro.titulo = "Dom Casmurro";
 livro.autor = "Machado de Assis";

 /* o elemento `Object()` é uma função tipo `constructor`,
 que coleta os atributos passados como valor
 e a propriedade após o `.` como chave
 
 enquanto o elemento `new` realiza o mesmo que:
 const livro = {
   tiutlo: "Dom Casmurro",
   autor: "Machado de Assis"
   }; */
 ```

 - **`direct prototypic inheritance`**<br>
 O **`Object.create()`** é útil quando é necessário criar um objeto que herda diretamente de outro, exemplo:
 ```js
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

 Para acessarmos as *propriedades* de um objeto, primeiro o declaramos e, usando o *seletor `.`* escolhemos qual método ou propriedade do objeto queremos. Exemplo:
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

###### `this`
 Trata-se de uma referência ao objeto que está executando o código no momento, dessa forma, quando um objeto ou classe quer se referir a si mesmo, ele usa **`this`**. Este método atribui dentro de um objeto ou uma classe, uma variável que recebe um parâmetro, que é o mesmo que declarar uma variável dentro da classe para receber um parâmetro externo. Ele se refere ao contexto de execução atual. Seu comportamento pode mudar dependendo de onde e como é usado. Se não precisarmos de privacidade ou quisermos manter as propriedades acessíveis ao programa, usar **`this` é a melhor opção**.

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

 **ALTERNATIVAS AO `this`**<br/>
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
 Se precisar de privacidade sem `#`, pode usar `Symbol`, que mantém as propriedades privadas sem expor os valores, porém ainda pode ser acessado com `Object.getOwnPropertySymbols()`, o que faz não ser um método tão seguro:

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

##### `arrays`
 Os `arrays` nos permitem trabalhar com conjuntos de valores e armazená-los em um único endereço de memória. Em JS, os valores do array **NÃO** necessitam ser do mesmo tipo. *A posição dos elementos começa sempre a partir de um índice 0.* Por padrão são *estruturas dinâmicas*, ou seja, seu tamanho pode ser alterado após a criação, no entanto, também veremos maneiras de criar `arrays` de *tamanho fixo*.
 
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
   ```

 2. **`array constructor`**<br/>
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
 console.log(floatArray); // Float32Array [1.5, 2.5, 3.5]
 ```

### OPERAÇÕES
 Os comandos, instruções e variáveis não serviriam de nada se não fosse possível manipular os dados recebidos, e, para transformá-los em informação útil, usamos os `operadores`. Eles permitem que os programas realizem cálculos complexos e tomem decisões lógicas com base em comparações e outros tipos de condições. São eles:
 - **unários**: Operam sobre **1 único parâmetro, alterando seu próprio valor**.
 - **binários**: Operam sobre **2 ou mais parâmetros sem alterá-los para obter um resultado que é um novo valor**.
 - **lógicos**: **Comparam as relações entre 2 ou mais valores para verificar uma condição**, retornando `true` ou `false`.
   - **bool**: `var condition === satisfied ? true : false`
   - **string**: `var string === "" ? true : false`
   - **number**: `var number === 0 ? 1 : 0`
 - **bitwise**: **Realizam operações aritméticas manipulando diretamente os `bits` de números inteiros**, retornando sempre um número decimal, mas gerado através de operações binárias. Ou seja, são operadores que trabalham diretamente na manipulação binária dos números gerando um número decimal como resultado.

#### OPERADORES ARITMÉTICOS
<pre>
OPERADORES UNÁRIOS                                                          OPERADORES BINÁRIOS
- atribuição....................(=): a = b                                  - atribuição......(=): a = b
- positivo......................(+): +a                                     - atribuição......(=): a = b
- negativo......................(-): -a                                     - adição..........(+): a + b
- incremento...................(++): ++a | a++  (a + 1)                     - subtração.......(-): a - b
- decremento...................(--): --a | a--  (a - 1)                     - divisão.........(/): a / b
- adição e atribuição..........(+=): a += 5     (a = a + 5)                 - multiplicação...(*): a * b
- subtração e atribuição.......(-=): a -= 5     (a = a - 5)                 - módulo..........(%): a % b
- multiplicação e atribuição...(*=): a *= 5     (a = a * 5)                 - potenciação....(**): a ** b
- divisão e atribuição.........(/=): a /= 2     (a = a / 2)
- módulo e atribuição..........(%=): a %= 2     (a = a % 2)

                                            ORDEM HIERARQUICA
OPERADOR          OPERAÇÃO             TIPO        PRIORIDADE MATEMÁTICA     TIPO DE RETORNO DE RESULTADO
   +         MANUTENÇÃO DE SINAL      UNÁRIO                1                          POSITIVO
   -          INVERSÃO DE SINAL       UNÁRIO                1                          NEGATIVO
  **            POTENCIAÇÃO           BINÁRIO               2                       INTEIRO OU REAL
   /              DIVISÃO             BINÁRIO               3                            REAL
   /              DIVISÃO             BINÁRIO               4                          INTEIRO
   %               MÓDULO             BINÁRIO               3                          INTEIRO
   *           MULTIPLICAÇÃO          BINÁRIO               3                       INTEIRO OU REAL
   +               ADIÇÃO             BINÁRIO               4                       INTEIRO OU REAL
   -              SUBTRAÇÃO           BINÁRIO               4                       INTEIRO OU REAL
</pre>

#### OPERADORES LÓGICOS
<pre>
- AND........................................(&&): true && true
- OR.........................................(||): true || false
- NOT.........................................(!): !true (false)
- maior.......................................(>): 1 > 0
- maior ou igual.............................(>=): 1 >= 1
- menor.......................................(<): 0 < 1
- menor ou igual.............................(<=): 0 <= 0
- comparação de igualdade de valor...........(==): A == a
- comparação de valor e tipo................(===): A === A
- comparação de diferença de valor...........(!=): a != b
- comparação de diferença de valor e tipo...(!==): a !== b
</pre>

#### OPERADORES BIT A BIT
<pre>
- AND.........................................(&): (bit == 1 & bit == 1) 1 <> (bit == 0 & bit == 1) 0
- OR..........................................(|): (bit == 0 & bit == 1) 1 <> (bit == 0 & bit == 0) 0
- XOR.........................................(^): (bit == 1 & bit == 1) 0 <> (bit == 0 & bit == 1) 1
- NOT.........................................(~):  bit = 1010 ~ bit = 0101
- LEFT SHIFT 0...............................(<<):  bit(5) = 00000101 <<  3 : bit(40) = 00101000  -  bit(-5) = 11111011 <<  3 : bit(-40) = 11011000
- RIGHT SHIFT 1..............................(>>):  bit(5) = 00000101 >>  3 : bit(0)  = 00000000  -  bit(-5) = 11111011 >>  3 : bit(-1)  = 11111111
- RIGHT SHIFT 0.............................(>>>):  bit(5) = 00000101 >>> 3 : bit(0)  = 00000000  -  bit(-5) = 11111011 >>> 3 : bit(31)  = 00011111
</pre>

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
 Podemos manipular a iteração de loops usando alteradores de fluxos quando uma condição além da original é atingida. São eles:
 1. **`break`**: *Interrompe* a iteração do fluxo de repetição.
 2. **`continue`**: *Pula* 1 iteração do fluxo de repetição.

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

 if(condition == true) {
  console.log(`condition: ${condition}`);
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
 Um tipo de loop cuja execução dura um determinado número de vezes ou até que sua condição seja avaliada com `false` é o `for`, vejamos sua sintaxe básica e também suas variações:

 1. **`for`**</br>
 Usado quando sabemos quantas vezes queremos iterar.
 ```js
 var fim = 10;

 for(var inicio = 0; inicio < fim; inicio++) {
     console.log(inicio);
 }
 ```

 2. **`infinity-empty-for`**<br/>
 **Todas** as partes do `for` são *opcionais*.
 ```js
 let i = 0;

 for (;;) { // loop infinito
   console.log(i);
   if (i >= 5) break; // condição de parada
   i++;
 }
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
 Método especialmente otimizado para percorrer `arrays`, passamos os parâmetros em uma função `callback` que tem o parâmetro **obrigatório** uma variável para obter o `value` do elemento autal no array, e os parâmetros *opcionais* `index`¹ e `array`² para *obter o número do índice do elemento atual*¹ e o *objeto de array completo ao qual o elemento pertence*² respectivamente.
 ```js
 let Array = [10, 20, 30];

 Array.forEach((value, index, array) => {
   console.log(`Valor: ${value}, Índice: ${index}, Array Completo:`, array);
 });
 ```

 5. **`for-in`**</br>
 Usado para iterar sobre as **chaves** de um *objeto*. Não é recomendado para arrays, pois pode incluir propriedades herdadas.
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
 **Semelhante aos *métodos de objetos*, métodos estáticos são métodos que pertencem somente à classe, e não às instâncias dela.**
 Aqui o método `somar()` pode ser chamados sem precisar criar um objeto da classe:
 ```js
 class Matematica {
  static somar(number1, number2) {
    return number1 + number2;
  }
 }

 console.log(Matematica.somar(5, 14));
 ```

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
 userStatus == "on" ? saudacao("Raphael") : continue;
 ```

###### TIPOS DE FUNÇÕES
 As funções podem ser utilizadas de diversas formas, dependendo da necessidade de processamento e estrutura do código. 
 - **Funções _SEM_ `(parameters)`**: Usadas quando a operação pode ser feita com valores internos ou globais, ou quando não há necessidade de interação com o resto do código.
 - **Funções _COM_ `(parameters)`**: Usadas quando a operação precisa de entradas externas para ser realizada.
 - **Funções _SEM_ `return`**: Usadas quando a operação apenas modifica o estado temporáriamente ou imprime resultados, sem necessidade de repassar o valor para o resto do código.
 - **Funções _COM_ `return`**: Usadas quando é necessário calcular um valor e utilizá-lo posteriormente no código.

###### REST & SPREAD
 - **`rest`**<br/>
 **No caso de funções com parâmetros, quando não sabemos exatamente o número de parâmetros que podem atingir nossa função, usamos `...` para nos referirmos ao restante dos parâmetros possíveis.** *Estes parâmetros são armazenados em um `array` com o nome dado ao parâmetro.* Ele basicamente junta múltiplos argumentos em um único array.

 ```js
 function loteria(jogo, ...numeros) {
     return `${jogo}: ${numeros}`;
 }

 console.log(loteria("Mega-Sena", 13, 38, 39, 40, 42, 56)); // Mega-Sena: 13,38,39,40,42,56
 ```

 - **`spread`**<br/>
 Realiza o contrário do **rest**, pois ele *"espalha"* elementos de arrays ou objetos. É útil para cópias, combinações e chamadas de função.
 ```js
 const numeros = [1, 2, 3];
 console.log(numeros);      // [ 1, 2, 3 ]
 console.log(...numeros);   // 1 2 3                      <- separamos por completo cada index do aray original
 console.log([...numeros]); // [ 1, 2, 3 ]                <- podemos copiar outro array sem modificá-lo
 console.log({...numeros}); /* { '0': 1, '1': 2, '2': 3 } <- além de criar objetos, visto que cada valor ocupa uma posição,
                                e as chaves serão como as posições do array */

 const a = [1, 2, 3];
 const b = [4, 5, 6];
 const combinado = [...a, ...b]; /* podemos concatenar arrays, adquirindo cada valor de índice individualmente,
                                    ao invés de somente "juntar" 2 arrays dentro de 1 */
 console.log(combinado); // [1, 2, 3, 4, 5, 6]

 const pessoa = { nome: "Raphael", idade: 25 };
 const copiaPessoa = { ...pessoa, cidade: "São Paulo" }; // além de copiar também podemos adicionar propriedades em objetos

 console.log(copiaPessoa); // { nome: "Raphael", idade: 25, cidade: "São Paulo" }
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

###### CALLBACK
 Como seu nome indica, são **chamadas de retorno**, ou seja, são *funções passadas como argumentos e parâmetros para outras funções*. O que significa que quando invocamos uma função passando-a como parâmetro outra função – **`callback`** se a função principal for **síncrona**, *o callback é executado logo dentro dela*. Se for **assíncrona**, *o callback espera a operação terminar antes de ser executado*.
 ```js
 function fazerAlgo(callbackParameter) {
   console.log("Executando algo...");
   callbackParameter(); // chamando a função callback passada como parâmetro
 }

 // chamando a função fazer Algo e passando uma função anônima – callback – como parâmetro – callbackParameter
 fazerAlgo( function() {  console.log("Callback foi chamado!")} );
 ```

 Quando temos vários callbacks aninhados, o código pode ficar difícil de ler, chamamos isso se chama **Callback Hell**, e, parar resolver este problema usamos [**`Promises`**, **`async`** e **`awayt`**](https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/assincronismo_promises_async_await.md)

**`anonymous callback functions`**<br/>
 As funções anônimas são muito usadas como calbacks, essas funções passadas como argumento para outras funções são particularmente úteis quando precisamos executá-las apenas 1 vez.
 ```js
 setTimeout(function() {
   console.log("Mensagem exibida após 2 segundos!");
 }, 2000);
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

 Podemos atribuir uma função a uma variável, passá-la como argumento para outra função e retorná-la como resultado de uma função, como demonstrado neste código:
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

// passando uma função como argumento para outra função
function executaOperacao(operacao, a, b) {
  return operacao(a, b);
}

function soma(a, b) {
  return a + b;
}

console.log(executaOperacao(soma, 2, 3)); // Saída: 5
```
 Funções tipo `arrow functions` possuem o `this` **léxico**, o que significa que o `this` dentro de uma arrow function se refere ao contexto onde foi definida, e não ao objeto que a chamou – não pode ser usada como `constructor`.

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
    **_Remove_ o último** elemento do array e o retorna.
    - **`shift()`**<br/>
    **_Remove_ o primeiro** elemento do array e o retorna.
    - **`unshift(...elements)`**<br/>
    **_Adiciona_ um ou mais elementos no início do array** e torna o novo comprimento do array.
    - **`push(...elements)`**<br/>
    **_Adiciona_ um ou mais elementos ao final do array** e retorna o novo comprimento do array.
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

## OOP
 Vimos os princípios da programação orientada a objetos em tópicos anteriores, pois o JavaScript é uma linguagem de programação multiparadigma, por isso compartilha os conceitos-chave. Entretanto, a **POO em JS não é normalmente usada**, *uma vez que POO é projetado para tipos de programas diferentes de páginas web*.<br/>
 Na programação web, o uso de classes, objetos, atributos, métodos entre outros não faz muito sentido por não haver necessidade de tal uso.<br/>
 Mas veremos como podemos usar a POO com JS.

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
    console.log(`${this.modelo} ${this.cor} ${this.ano} está ligado, combustível: DIESEL.`); /*/* sobrescrevendo o método herdado
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
