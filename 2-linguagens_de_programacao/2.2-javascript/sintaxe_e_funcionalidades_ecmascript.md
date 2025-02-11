# JAVASCRIPT
 JavaScript é uma linguagem de programação *interpretada*, de *alto nível* e *multiparadigma*, **desenvolvida para criar páginas web interativas e dinâmicas**. Ela é responsável por adicionar funcionalidades como **validação de formulários**, **animações**, **manipulação do conteúdo da página** e **resposta a eventos do usuário** em conjunto com HTML e CSS para tornar a experiência na web mais rica.<br/>
 Originalmente criado em 1995, por Brendan Eich, enquanto trabalhava na Netscape Communications Corporation, foi contratado para desenvolver uma linguagem de script que permitisse dinamizar as páginas do navegador Netscape Navigator. Em apenas 10 dias nasceu a primeira versão da linguagem, que inicialmente recebeu o nome de `Mocha` e posteriormente renomeada para `LiveScript`, logo em seguida, numa jogada de marketing influenciada pela popularidade da linguagem **Java** o nome foi alterado para **`JavaScript`**. Apesar de serem bastante diferentes em termos de design e funcionamento. A padronização da linguagem veio por meio da Ecma International, dando origem à especificação **ECMAScript** — padronização de linguagens de script que define as regras, sintaxe, tipos e comportamentos que as linguagens de script devem seguir para garantir consistência e interoperabilidade entre diferentes ambientes como navegadores e servidores. Em outras palavras, enquanto o JavaScript é a implementação mais conhecida dessa especificação, ECMAScript serve como a base que orienta seu desenvolvimento e evolução, com atualizações periódicas para incorporar novas funcionalidades e melhorias.<br/>
 As principais características que destacam o JS são:
 - *Execução local*.
 - *Interpretado*.
 - *Dinâmico em tipagem*.
 - *Verifica valor e tipo*.
 - *Responsivo*.
 - *Case sensitive*.

## ESTRUTURAS

### COMENTÁRIOS
 Para comentar uma linha de código usa-se a seguinte sintaxe: `// comentário`. Já para comentar um bloco inteiro usa-se: `/* trecho comentado */`.
 ```js
  // linha de comentário

  /* este trecho inteiro
  está comentado */
 ```

### TIPOS DE DADOS
Por ser uma linguagem de ***tipagem dinâmica***, o JavaScript tem apenas **3 tipos de dados básicos**. Por conta dessa característica, uma variável pode receber uma **`string`** em um determinado momento, e em outro, um dado tipo **`number`**. Vejamos:
 1. **NUMBERS**<br/>
 Números *inteiros* (**`int`**) ou *decimais* (**`float`** e **`double`**).
 2. **STRINGS**<br/>
 Caracteres, alfanuméricos e textos em geral (como palavras e frases).
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
 "use strict";
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

 5. **`toString()`**<br/>
 Converte tipo numérico para string:
 ```js
 var num = 10;
 var Num = num.toString();
 console.log(`Num: ${typeof(Num)}`); // Num = "10": string
 ```

 6. **`toUppercase()`**<br/>
 Converte uma `string` em maiúsculas:
 ```js
 const texto = "Olá, Mundo!";
 const textoMaiusculo = texto.toUpperCase();

 console.log(textoMaiusculo); // Saída: "OLÁ, MUNDO!"
 ```

 7. **`toLowercase()`**<br/>
 Converte uma `string` em minúsculas:
 ```js
 const texto = "Olá, Mundo!";
 const textoMinusculo = texto.toLowerCase();

 console.log(textoMinusculo); // Saída: "olá, mundo!"
 ```

 8. **`includes()`**<br/>
 Também retorna um valor booleano e procura por uma palavra no texto, porém busca qualquer correspondência em qualquer posição e é *case sensitive*.
 ```js
 const texto = "Hello, World!";
 console.log(texto.includes(", ")); // true
 ```

 9. **`substr()`**<br/>
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

 10. **`substring()`**<br/>
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

 11. **`slice()`**<br/>
 Utilizado para extrair uma parte de uma string ou array, retornando uma nova string ou array sem modificar o original. Tanto para strings quanto para arrays, índices negativos contam a partir do final, onde o `-1` representa o último elemento.
 ```js
 const nomeCompleto = "Raphael Kaíque Dias Santos";
 const primeiroNome = `${nomeCompleto.slice(0, 9)}.` ; // extraindo a palavra "Raphael K"
 console.log(primeiroNome); // "Raphael K."

 const frutas = ["Maçã", "Banana", "Laranja", "Manga"];
 const resultado = frutas.slice(0, 2); // extraindo as duas primeiras frutas
 console.log(resultado); // ["Maçã", "Banana"]
 ```

 12. **`split()`**<br/>
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

 13. **`replace()`**<br/>
 Permite substituir um texto por outro em qualquer parte da `string`, e é *case sensitive*.
 ```js
 var texto = "Hello, World!";
 console.log(texto.replace(", World", "life")); // "Hello life!"
 ```

 14. **`trim()`**<br/>
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

 15. **`startsWith()`**<br/>
 Procura um termo no início da `string`, retornando `true` ou `false`. Ou seja, se o texto começa com os caracteres que buscamos, neste caso o resultado seria `true`.
 ```js
 const texto = "Hello, World!";
 console.log(texto.startsWith("Hell")); // true
 ```

 16. **`endsWith()`**<br/>
 Como o anterior, mas verificando o final do texto.
 ```js
 const texto = "Hello, World!";
 console.log(texto.endsWith("World!")); // true
 ```

 17. **`chartAt()`**<br/>
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

 18. **`lastIndexOf()`**<br/>
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

 19. **`indexOf()`**<br/>
 Para procurar a posição de um termo dentro de um texto. Ele retorna o valor do índice se encontrado e qual sua posição no parâmetro de busca.
 ```js
 var nomeCompleto = "Raphael Kaíque Dias Santos";
 var primeiroNome = nomeCompleto.indexOf("Raphael");

 console.log(primeiroNome); // Saída: 0
 ```

 20. **`search()`**<br/>
 Funciona da mesma maneira, caso não encontre uma correspondência ele retorna `-1`.
 ```js
 var nomeCompleto = "Raphael Kaíque Dias Santos";
 var primeiroNome = nomeCompleto.search("Silva");

 console.log(primeiroNome); // Saída: -1
 ```

 21. **`match()`**<br/>
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
 ```JS
 /* objetos, métodos e propriedades

 Enquanto métodos¹ são ações para manipulação de objetos²,
 as propriedades³ são as caracteríticas da sua atribuição.

 console = objeto manipulado */
 console.log("User name: ") /* () = execução de ação com parâmetros ou não
         log = método de processamento do objeto */
 ```

#### FUNÇÕES PRÉ-DEFINIDAS
 São comandos padronizados prontos para serem usados.
 ```js
 alert("Este é um exemplo de função pré-definida.");
 ```

#### FUNÇÕES
 Além destes também podemos criar nossas próprias funções combinando com outras pré-definidas.
 ```js
 function saudacao() {
  console.log("Olá! Bem vindo!");
 }
 ```
#### TIPOS DE FUNÇÕES
 As funções podem ser utilizadas de diversas formas, dependendo da necessidade de processamento e estrutura do código. 
 - **Funções _SEM_ parâmetros**: Usadas quando a operação pode ser feita com valores internos ou globais, ou quando não há necessidade de interação com o resto do código.
 - **Funções _COM_ parâmetros**: Usadas quando a operação precisa de entradas externas para ser realizada.
 - **Funções _SEM_ retorno**: Usadas quando a operação apenas modifica o estado temporáriamente ou imprime resultados, sem necessidade de repassar o valor para o resto do código.
 - **Funções _COM_ retorno**: Usadas quando é necessário calcular um valor e utilizá-lo posteriormente no código.

#### CALLBACK: FUNÇÃO ANÔNIMA

## CRIANDO CÓDIGO
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

### INTERNAL
 Entre a tag `script` no `head` do documento. **Se a página possuir tanto código CSS quanto JS na `head`, é uma boa prática colocar o trecho CSS _primeiro_, pois é comum que o script se refira a elementos CSS e por isso eles já devem ser carregados na memória quando a execução atinge a parte JS.**
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
```

### IN-LINE
 Também é possível incluir *script diretamente nas tags*, basta declarar a função que desejamos usar:
```html
<p onClick="alert('Alerta de clique no parágrafo');">Parágrafo de texto.</p>
```

### DATA I/O

 O JS tem várias ferramentas para lidar com dados:
 - Entrada de **`form`**: **`input`**.
 - O comando: **`prompt()`**.
 - O comando: **`alert()`**.
 - O comando: **`confirm()`**.
 - O módulo: **`const readline = require('readline');`**.

##### FORM INPUTS
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

##### PROMPT
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

##### ALERT
 O comando `alert` exibe uma janela pop-up com um aviso e botões para coletar a resposta do usuário. Este é considerado um *"alerta normal"*, que exibe uma informação do usuário com **apenas o botão para fechar o pop-up**.
```js
alert("!ALERTA!");
```

##### CONFIRM
  O comando `confirm` exibe uma janela pop-up com um aviso e botões para coletar a resposta do usuário. Este é considerado um *"alerta de confirmação"*, que exibe uma informação do usuário e **coleta na variável a resposta do usuário, que será `true` ou `false`**.
```js
var confirmation = confirm("Termos de Política de Privacidade");
```

##### CONSOLE
 Até agora, vimos opções que são visíveis ao usuário, mas esta opção não é exibida ao usuário a menos que abramos o console. O console nos permite trabalhar com JS instantaneamente, corrigir erros, ver quais variáveis estão dentro, ver o que está acontecendo em nosso código, observar o fluxo do programa está indo e assim por diante. Este comando exibe uma mensagem no **console** do navegador.
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

##### DOCUMENT OUTPUT
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
