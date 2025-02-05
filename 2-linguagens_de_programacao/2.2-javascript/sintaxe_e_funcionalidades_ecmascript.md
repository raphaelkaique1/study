# JAVASCRIPT
 JavaScript é uma linguagem de programação *interpretada*, de *alto nível* e *multiparadigma*, **desenvolvida para criar páginas web interativas e dinâmicas**. Ela é responsável por adicionar funcionalidades como **validação de formulários**, **animações**, **manipulação do conteúdo da página** e **resposta a eventos do usuário** em conjunto com HTML e CSS para tornar a experiência na web mais rica.<br/>
 Originalmente criado em 1995, por Brendan Eich, enquanto trabalhava na Netscape Communications Corporation, foi contratado para desenvolver uma linguagem de script que permitisse dinamizar as páginas do navegador Netscape Navigator. Em apenas 10 dias nasceu a primeira versão da linguagem, que inicialmente recebeu o nome de `Mocha` e posteriormente renomeada para `LiveScript`, logo em seguida, numa jogada de marketing influenciada pela popularidade da linguagem **Java** o nome foi alterado para **`JavaScript`**. Apesar de serem bastante diferentes em termos de design e funcionamento. A padronização da linguagem veio por meio da Ecma International, dando origem à especificação **ECMAScript** — padronização de linguagens de script, definindo regras, sintaxe, tipos e comportamentos que as linguagens de script devem seguit para garantir consistência e interoperabilidade entre diferentes ambientes como navegadores e servidores. Em outras palavras, enquanto o JavaScript é a implementação mais conhecida dessa especificação, ECMAScript serve como a base que orienta seu desenvolvimento e evolução, com atualizações periódicas para incorporar novas funcionalidades e melhorias.<br/>
 As principais características que destacam o JS são:
 - *Execução local*.
 - *Interpretado*.
 - *Responsivo*.
 - *Dinâmico*.

## ESTRUTURAS

### COMENTÁRIOS
 Para comentar uma linha de código usa-se a seguinte sintaxe: `// comentário`. Já para comentar um bloco inteiro usa-se: `/* trecho comentado */`.
 ```js
  // linha de comentário

  /* este trecho inteiro
  está comentado */
 ```

### TIPOS DE DADOS
Por ser uma linguagem e tipagem dinâmica, o JavaScript tem apenas **3 tipos de dados básicos**:
 1. **NUMBERS**<br/>
 Números *inteiros* (**`int`**) ou *decimais* (**`float`** e **`double`**).
 2. **STRINGS**<br/>
 Caracteres, alfanuméricos, textos em geral (como palavras e frases).
 3. **BOOLEANS**<br/>
 Com apenas **2 valores possíveis**: **`true`** ou **`false`**.

### DECLARAÇÕES
 Chamamos cada _comando_ que escrevemos de **declaração**, e, apesar de o JS não exigir, como **boa prática de código limpo** *cada linha de comando deve ser fechada com `;`*.
 ```js
 console.log("Esta é uma declaração.");
 ```

#### STRICT MODE
 Em JS existem um modo que, quando ativado, nos permite ser mais restritivos em nossas declarações. Ele ajuda a detectar erros comuns e práticas que programação que podem levar a comportamentos inesperados, ou seja, ele faz com que alguns *"erros silenciosos"* se tornem **explícitos**, lançando exceções e impedindo certas operações que podem causar bugs difíceis de identificar.
 - Para ativar este modo, podemos declarar no início do arquivo JS para que atinja todo o código:
 ```js
 "use strict";
 ```
 - Ou podemos colocar essa diretiva dentro de uma função para aplicar o modo estrito apenas ao seu escopo:
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
 var = num = 5;
 ```

#### DECLARANDO VARIÁVEIS
 Por definição, uma variável é um espaço na memória do computador onde um valor será amazenado, tal este que pode mudar durante a execução do programa.<br/>
 As variáveis são declaradas de 2 maneiras:

 1. **`let`**: **escopo LOCAL**; Permite declarar variáveis limitando seu escopo ao bloco ou declaração onde estão localizadas. *Variáveis tipo **`let`** só podem ser utilizadas a partir de funções, condicionantes ou loops dentro do mesmo escopo.* Ou seja, podemos acessá-las apenas dentro do escopo que foram definidas, dentro da própria função ou de funções aninhadas em níveis mais altos do que a função anterior, fazendo com que *só possam ser vistas **de dentro para fora***, nunca de fora para dentro da função.
 ```js
 let num = 5;
 console.log(num); // num == 5

 if(true) {
  let num = 10;
  console.log(num); //num == 10
 }

 console.log(num); // num == 10 <-
 ```
 2. **`var`**: **escopo GLOBAL**; Define uma variável global, independemente do escopo do bloco onde foram declaradas. *Essas variáveis estão disponíveis para **TODOS** os elementos do código.* Podemos acessá-las de qualquer lugar do código.
 ```js
 let num = 5;
 console.log(num); // num == 5

 if(true) {
  let num = 10;
  console.log(num); //num == 10
 }

 console.log(num); // num == 5  <-
 ```

##### POPULANDO VARIÁVEIS

###### ALTERANDO VALOR ATRIBUÍDO
 Para modificar uma variável já declarada ou com valor atribuído, basta escrevermos seu *identificador* e o valor que queremos sobrescrever:
 ```js
 var num = 10;
 num = 5;
 ```
###### TRABALHANDO STRING
 Qualquer valor entre aspas duplas `"value"` ou simples `'value'` atribuído a uma variável é considerado uma `string`, mesmo que o valor seja um número.
 ```js
 var num1 = 5; // int
 var num2 = "5"; // str
 ```
 Um ponto que o desenvolver deve estar sempre atento ao trabalhar com `strings` é que, ao concatená-las com valores numéricos, estes valores passam a ser considerados TODOS como `strings`:
 ```js
 var x = "5";
 console.log(x + 10); // 510
 ```
 *Uma boa prática é sempre declarar como `strings` números que não vão ser operados matematicamente, como cpf, número de telefone ou CEP por exemplo.*


##### IDENTIFICANDO TIPO DE VARIÁVEL
 O comando **`typeof(var)`** nos diz o tipo de uma variável.

##### VAR CASTING
 Existem vários meios para manipular variáveis. Vejamos algumas opções:

 1. **`length`**<br/>
   1. Calcula a extensão de um texto, ou seja, a quantidade de caracteres que ele contém.
   2. Se usado em um **`array`** retorna o número de elementos contidos nele.
 ```js
 const texto = "Olá, Mundo!";
 const vetor = ["valor 1", "valor 2", "valor 3"];
 console.log(texto.length); // Saída: 12
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
 Examina a string do início e converte os dígitos encontrados até que um caractere inválido seja encontrado. Se o primeiro caractere não for numérico — após ignorar espaços, retorna **`NaN`**. **Mesmo que a parte analisada contenha uma parte decimal, o retorno é sempre um inteiro, e a parte decimal depois do ponto é descartada.** *Permite informar a base numérica — por exemplo, 10 para decimal, 16 para hexadecimal — como segundo parâmetro.*
 ```js
 parseInt("10.5");       // retorna 10
 parseInt("10 anos");    // retorna 10
 parseInt("   123abc");  // retorna 123
 parseInt("abc123");     // retorna NaN — não começa com dígitos
 parseInt("0xF");        // retorna 15 — interpretado como hexadecimal
 ```

 4. **`parseFloat()`**<br/>
 Funciona de forma similar ao `parseInt()` ao “ler” a string do início e interromper na primeira ocorrência de um caractere inválido para um número, **mas retorna um valor de ponto flutuante**. *Se a parte numérica da string contém um ponto decimal, o valor retornado preserva essa parte fracionária e não trunca o valor como em `parseInt()`.*
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
 console.log(`Num: ${typeof(Num)}`); // Num: string
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
 Utilizado para extrair uma parte de uma string ou array, retornando uma nova string ou array sem modificar o original. Tanto para strings quanto para arrays, índices negativos contam a partir do final, onde o -1 representa o último elemento.
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
 console.log(`Antes: "${string1}"`);
 console.log(`Depois: "${string1.trim()}"`);

 const exemplo = "   Exemplo   ";
 console.log(exemplo.trimStart()); // || console.log(exemplo.trimLeft()); // "Exemplo   "
 console.log(exemplo.trimEnd());   // || console.log(exemplo.trimRight()); // "   Exemplo"
 ```

 15. **`startsWith()`**<br/>
 Procura um textmo no início da `string`, retornando `true` ou `false`. Ou seja, se o texto começa com os caracteres que buscamos, neste caso o resultado seria `true`.
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
 Busca a última ocorrência de uma substring. Também podemos fornecer um segundo parâmetro que indica o índice a partir de qual a busca deve começar, buscando do índice indicado até o índice 0 para retonar qual a posição do índice do termo buscado.
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
 Por definição, uma constante é um espaço na memória do computador onde um valor é armazenado que **NÃO** pode ser alterado durante o *tempo de execução* do programa. Ou seja, se declararmos uma constante e lhe atribuirmos um valor, este valor não pode ser modificado.
 ```js
 const pi = 3.14;
 ```

### FUNÇÕES PRÉ-DEFINIDAS
 São comandos padronizados prontos para serem usados.
 ```js
 alert("Este é um exemplo de função pré-definida.");
 ```

 Além destes também podemos criar nossas próprias funções combinando com outras pré-definidas.
 ```js
 function saudacao() {
  console.log("Olá! Bem vindo!");
 }
 ```

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
 Com **`prompt`**, inserimos a variável através de uma janela, este método é uma função nativa do objeto **`window`** nos navegadores. Quando chamado, ele pausa a execução do script e exibe uma caixa de diálogo *modal*, aguardando a interação do usuário. Após o usuário inserir um valor e confirmar, o `prompt()` retorna esse valor, permitindo que o script continue sua execução com a entrada fornecida.<br/>
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
    .close}) */
rl.question('User: ', (name) => {
  console.log(`Welcome ${name}`);
  rl.close(); // fecha a interface de leitura, liberando os recursos associados
});

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