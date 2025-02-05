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

 1. **`let`**
 1. **`var`**

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