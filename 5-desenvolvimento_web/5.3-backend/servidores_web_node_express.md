# DESENVOLVIMENTO BACK END
 Este profissional é o encarregado de trabalhar no *lado do servidor*. Na prática, é quem está nos *bastidores* permitindo com que o usuário desfrute da sua navegação com o máximo de conforto. Para se tornar um desenvolvedor back-end, é necessário ter um amplo conhecimento em várias linguagens, bem como estar familiarizado com *bancos de dados*. Estes são os desafios do programador back-end:
 - **Possui extenso conhecimento em linguagens e frameworks**<br/>
 É importante que se tenha um conhecimento sólido destes tipos de linguagens para o desenvolvimento completo e eficiente de seu trabalho, entre algumas mais destacadas encontram-se:
   - **ASP.NET**: Uma platadorma de desenvolvimento web da Microsoft, com formulários web e variantes (MVC e APS.NET Core MVC).
   - **PHP**: WordExpress usa PHP juntamente com seu frameworks Larável.
   - **Python**: Fácil de aprender, especialmente usando Django (ou Flask) como framework.
   - **Ruby**: Usado com seu framework OnRails.
   - **Node.js**: Utiliza a mesma linguagem que o lado do cliente, JavaScript - o TypeScript o deixa ainda melhor e confiável.
   - **JAVA**: Linguagem clássica de alta demanda, muito usado com Spring e SpringBoot.
 - **Familiaridade com bancos de dados**<br/>
 Um desenvolvedor back-end precisa saber exatamente como funcionam os bancos de dados. Isso porque toda aplicação web precisa armazenar dados de alguma forma. Levando isto em consideração, entre as bases de dados mais comunmente tratadas estão:
   - **MySQL**
   - **SQL Server**
   - **PostgreSQL**
   - **Oracle**
   - **MongoDB** (é um *BBDD*, não *NoSQL*)

**_*O ideal é que, com o tempo, cada desenvolvedor se especialize em 1 (no máximo 2)._**

## SERVIDOR
Um servidor é qualquer computador ou software que espera e responde requisições de outros dispositivos, os clientes.

## CONTENT DELIVERY NETWORK
**CDN** é uma **Rede de Distribuição de Conteúdo**. É basicamente uma rede de servidores espalhados pelo mundo que entrega conteúdos como imagens, vídeos, arquivos, scripts e muito mais para os usuários de forma rápida, confiável e segura, usando o servidor mais próximo do usuário.<br/>
Quando um site que usa uma CDN é acessado, a CDN dectecta via IP o local de onde o usuário está acessando, então redireciona a requisição para o servidor mais próximo desta localização, assim reduzindo o tempo de carregamento melhorando a experiência.<br/>
Uma CDN serve principalmente arquivos estáticos como HTML, CSS, JS, PDF, mídias, fontes (como o Google Fonts), bibliotecas e frameworks (JQuery, React, Bootstrap entre outros). Isso é vatajoso por ser um método com menos latência, o que torna o site mais rápido, diminui a carga no servidor do site e consequentemente aumenta a disponibilidade pois se um servidor cair outro irá assumir, aumenta também a segurança com proteção DDoS e TLS/SSL e possuem baixo custo (ou nenhum) com jsDelivr, CDN do Cloudfare ou Google CDN.
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

## `NodeJS`
Na atualidade, a criação de aplicações tem como foco arquiteturas que sejam escaláveis e a entrega de soluções em tempo real, além da atenção à componentização e segurança. Além disso, soma-se a esse cenário a revolução iniciada pelos smartphones, com o uso cada vez mais intenso das mídias sociais e o aumento de soluções de IoT. Nesse contexto, os paradigmas conhecidos no desenvolvimento de aplicações também têm passado por diversas mudanças que vão do Front-end ao Back-end, onde pensamos cada vez mais em *uma solução como um todo*, levando em consideração o consumo de dados e a disponibilidade de infraestrutura. E é nessa conjuntura que nasce o Node.js em 2009, surgindo como uma solução poderosa e barata para a criação e a manutenção de ambientes de tecnologia com altas demandas. Soma-se a isso o fato de que desenvolvedores de JavaScript trabalham com uma linguagem simples, interpretada e que não necessita da instalação de ferramentas complexas de desenvolvimento. Esses são alguns dos fatores motivadores do criador do projeto do Node.js, o engenheiro de software Ryan Dahl, responsável por esse ambiente de execução do código JavaScript fora do navegador, no lado servidor.<br/>
No desenvolvimento web existem 2 fatos: **navegador só interpreta JavaScript puro e JavaScript puro roda apenas em navegadores**. Como o JS nasceu exclusivamente para ser interpretado no lado do cliente, com o tempo a linguagem foi ganhando mais relevância e ferramentas, tornando-se poderosa e fácil de utilizar em vários cenários. Pensando em dar maior flexibilidade ao JS para poder aproveitar suas vantagens em diferentes projetos, nasceu o **Node.JS**, que é um **ambiente de execução JavaScript**, ou seja, é uma plataforma para criar e executar código JS *fora do ambiente do navegador web*.<br/>
Algumas características marcantes do Node é ser altamente escalável, o que torna possível criar aplicações Web que trabalham muito bem com alto número de requisições, e também pelo fato dele ser multiplataforma, multiparadigma, *open source* e sua grande e colaborativa comunidade. O Node.js é uma ferramenta extremamente potente, e isso se deve ao fato de possuir dentro de si o *Chrome's V8 JavaScript Engine*. Sendo esse o motor V8 de alto desempenho do Chrome, que torna possível visualizar as páginas em JS no browser. Quando iniciamos o Node.js com o comando `node` no terminal, iniciamos um processo que engloba um interpretador JavaScript e um utilitário CLI, e é neste processo aberto no terminal que irá acontecer a interpretação e execução do JavaScript runtime. Para esse processo de interpretação, o Node.js faz uso do V8, mais precisamente conhecido como Chrome’s V8 JavaScript engine. O V8 é um poderosíssimo interpretador JavaScript desenvolvido pelo Google e utilizado pelo Chrome. Ele também é conhecido como a máquina virtual do JavaScript. Foi desenvolvido usando a linguagem **C++**, é de código aberto e nasceu com a intenção de acelerar a execução de aplicações desenvolvidas em JavaScript. Por fornecer uma boa performance, várias plataformas têm adotado o Node.js como um solução viável e eficaz de tecnologia para Back-end. É interessante apontar que existem outros “motores” para JavaScript, como o SpiderMonkey, do Firefox, ou o WebKit, do Safari, mas o adotado pelo Node.js é o V8. De forma geral, o processo de funcionamento desses motores pode ser resumido nas seguintes etapas:
1. O motor acessa o código JavaScript, que veio da leitura da tag `script` de um arquivo HTML ou por meio do download de um arquivo JavaScript;
2. Executa o `Parser`, processo de análise e conversão;
3. Monta a (**Á**rvore de **S**intaxe **A**bstrata)[https://astexplorer.net/], um mapeamento que identifica o que cada parte do código está fazendo;
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

Uma das mais atrativas característica do Node é ser um ambient de execução assíncrono, com isso ele trabalha de forma a não bloquear a aplicação no momento de sua execução, colocando os processos mais demorados em segundo plano. Isso diferencia o Node de outras plataformas como Java, PHP e .NET, pelo fato de ser *single thread*, ou seja, o Node não inicia threads em paralelo como nas outras plataformas. Por se tratar de um sistema single thread, o Node não tem a necessidade do gerenciamento de múltiplas threads, otimizando assim, o processo e o consumo de mémoria da aplicação.

### EVENT LOOP

A característica de Node que faz com que ele não seja lento ou demore a processar a fila de requisições é ser não bloqueante, e isso tem a ver com o sistema de *callbacks* do JavaScript e o **loop de eventos**.<br/>
Antes de falarmos sobre o tal *loop de eventos* em si, precisamos definir o que é um [evento](https://developer.mozilla.org/en-US/docs/Web/Events) no contexto do JavaScript. Podemos pensar em evento no sentido mais literal: um acontecimento, algo que ocorre em determinado momento. No navegador, os eventos estão muitas vezes relacionados a ações do usuário, como por exemplo um clique em um botão, preenchimento de um input ou qualquer outro tipo de interação. Podem ser eventos disparados por elementos HTML, por objetos globais do navegador como `window` e etc. Falando especificamente sobre o Node, podemos pensar nos eventos em contextos como na leitura e escrita de arquivos, manejo de requisições HTTP e funções timer como `setTimeout()`, essas ações emitem eventos quando o processamento é finalizado — algo como um "aviso" que informa ao programa que a execução foi concluída e o resultado pode ser utilizado. Esses eventos são passados ao event loop, que irá chamar as funções callback associadas a cada um destes eventos. Um exemplo de função callback nesta estrutura é a função que executa o `console.log()` abaixo:
```js
setTimeout(() => {
  console.log("aguarda 1 segundo antes de imprimir")
}, 1000)
```

A arquitetura baseada em eventos trabalha com 2 partes principais, os **Event Emitters** e os **Event Listeners**.

#### `event handler`

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
  console.log("requisição recebida");
  res.end("requisição recebida");
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
        .then(dado => {
          console.log("Resposta do servidor:", dado);
          alert(dado);
        })
        .catch(erro => console.error("Erro na requisição:", erro));
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
        .then(dado => {
          document.getElementById("resposta").textContent = dado;
        })
        .catch(err => console.error("Erro na requisição:", err));
    });
  </script>
</body>
</html>
```

### `package.json`
Para que o Node possa *"entender"* como executar o projeto, ele depende do **package.json**. Este arquivo é o *core* de qualquer projeto que use Node, neste arquivo estão registradas todas as informações principais sobre o projeto, tais como o nome do projeto, o endereço do repositório no serviço de Git onde o projeto está armazenado, as versões utilizadas, todas e quaisquer configurações de libs e frameworks que o projeto usa, qual é o arquivo ponto de entrada do programa, a lista de dependências entre outras informações. Ou seja, este é como o *manifesto* de qualquer projeto em Node, e é o primeiro arquivo criado quando se inicia algum projeto.

### PACKAGE MANAGERS
**Uma dependência, é todo e qualquer conjunto de dados que realiza uma tarefa.** Assim como o JS possui features nativas de APIs do navegador, e outras que podem ser incorporadas através de libs externas, no Node, para usarmos funcionalidades que dependendem de libs externas, é necessário a utilização de algum **gerenciador de dependências**, que nada mais são do que *repositórios de códigos* voltados para pacotes do Node, onde é possível encontrar libs e realizar a instalação de tal no projeto. Os gerenciadores mais utilizados em Node são p **npm** que é o padrão que já vem na instalação do node no ambiente, e o **yarn**, um outro gerenciador mais novo no mercado.<br/>
Então, desde de dependências mais simples como algumas libs restritas que realizam tarefas bastante específicas, até os frameworks mais completos, é possível usar com NodeJS através destes gerenciadores de pacotes.<br/>
É através destes gerenciadores de pacotes que é possível instalar essas dependências de pacotes externos que deseja-se usar no projeto. Então, quando o código abaixo é executado:
```shell script
npm install express
```
O que na verdade está sendo feito é que o gerenciador está acessando o repositório de código, selecionando os arquivos necessários da biblioteca escolhida e os baixa em um diretório local do projeto chamada por padrão de **`node_modules`**. A partir daí, as funções e ferramentas da lib instalada ficam disponíveis para serem utilizadas no projeto.<br/>
Neste exemplo do `express`, este é um dos frameworks mais utilizados no mercado para a criação de aplicações web com JS. A partir da sua instalação via npm, o arquivo `package.json` é atualizado com as informações referentes a essa lib, com o nome, a versão, a licença e etc.

#### `package_lock.json`
É muito comum que uma dependência, principalmente em pacotes robustos como o `express` por exemplo, seja desenvolvida a partir de outras dependências. Embora toda a lista das dependencias usadas por outra dependência não estejam no `package.json` — que é quase que um guia de consulta rápido para as principais dependências do projeto, os códigos das dependências precisam ser baixados juntos com o pacote principal instalado e são também inclusos no `node_modules`. assim, o `package_lock.json` contém uma lista mais *refinada* de **todas** as dependências gerais, gerenciando todas estas.

#### VERSIONAMENTO SEMâNTICO
Cada lib instalada possui uma versão, no arquivo `package.json` é possível verificar qual versão está sendo utilizada e quais atualizações serão recebidas dessa lib no projeto através de instruções de *SemVer*. Este é um padrão para dar significado às versões de software, que segue a estrutura `MAJOR.MINOR.PATCH`.<br/>
São usados símbolos, chamados de **SemVer Range Operators**. São eles:

| Símbolo     | Significado                                                                                       | Version Range                      |
|-------------|---------------------------------------------------------------------------------------------------|------------------------------------|
| `"4.17.2"`  | Usa **somente** a versão `4.17.2`.                                                                | Pinned Version / Strict Dependency |
| `"^4.17.2"` | Usa qualquer versão `>=4.17.2 && <5.0.0`, permite atualizações dentro da mesma versão **major**.  | Caret `^`                          |
| `"~4.17.2"` | Usa qualquer versão `>=4.17.2 && <4.18.0`, Permite atualizações dentro da mesma versão **minor**. | Tilde `~`                          |
| `">=4.17.2"`| Usa essa versão ou **qualquer mais nova** que a versão especificada.                              | Loose Dependency                   |
| `"*"`       | Qualquer versão disponível, mas é pouco usado em produção, pode quebrar o app.                    | Loose Dependency                   |

### MÓDULOS
O Node trabalha fortemente com o conceito de **módulos**, que visa organizar o código em pequenas partes especializadas, além de aplicar o princípio de encapsulamento ao “esconder” o código expondo somente o necessário a outras partes da aplicação. Originalmente o Node trabalhava com o sistema CJS de modularização, pois o JavaScript não tinha ferramentas específicas para isso. Posteriormente foi especificado o padrão “geral” de módulos do JavaScript, o EcmaScript Modules. Desde então, o Node vem adotando gradativamente o ECMAScript Modules desde a versão 13, o que traz muitas diferenças com relação à forma “original” do Node, o CJS.

#### `import`
Então, tendo todas as dependências necessárias instaladas, para usá-las no projeto, basta utilizar o método `import` no arquivo JS para que suas funcionalidades (guardadas nos arquivos em `node_modules`) possam ser acessadas.
```js
import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send("Hello world!");
});

app.listen(port, () => {
  console.log(`Ouvido na porta ${port}`);
});
```

No JS existem várias formas de importar código, dependendo do tipo de módulo usado, que são:
1. **ES Modules - `import`** éo método mais morderno, sendo o padrão atual do ECMAScript, usado em browsers e também é suportado no Node.

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

2. **CommonJS - `require`**, esta é a forma padrão do Node, antes do surgimento do **ES Modules**, atualmente `require` é um método antigo, usado apenas em ambientes Node.js legados ou com módulos antigos.

- **Importação simples**
```js
const modulo = require('./modulo.js');

console.log(modulo.saudacao('Raphael'));   // Olá, Raphael!
console.log(modulo.despedida('Raphael'));  // Tchau, Raphael!
```

- **Importar uma propriedade específica**
```js
// const { funcao } = require('./modulo.js');
const { saudacao } = require('./modulo.js');

console.log(saudacao('Déborah'));          // Olá, Déborah!
```

- **Importar com renomeação**
```js
// const { funcao: novaFuncao } = require('./modulo.js');
const { despedida: bye } = require('./modulo.js');

console.log(bye('Kaique'));                // Tchau, Kaique!
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

---

**Para executar os módulos importados em um arquivo `.js`, é importante que estejam referenciados no `package.json`, ou usando extensões `.mjs`.**
```json
"type": "module"
```

#### `export`
Assim como é possível *importar* funções, dados entre outras coisas entre arquivos JS, para que isso seja feito, o arquivo alvo da importação deve conter a declaração que permite exportar seus dados. O `export` é usado para tornar partes do código acessíveis em outros arquivos que usam `import`. São 2 as principais abordagens para exportar valores de um módulo: **exportações nomeadas** e **exportações default**. Dentro delas, existem diversas formas de declarar `export`.

1. **CommonJS (CJS)** — usado no Node.js.
  - **Exportar múltiplos valores**
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

  - **Exportar uma única função/objeto direto**
  ```js
  module.exports = function(nome) {
    return `Olá, ${nome}!`;
  };
  ```

  - **Exportar propriedades individuais**
  ```js
  exports.saudacao = (nome) => `Olá, ${nome}!`;
  exports.despedida = (nome) => `Tchau, ${nome}!`;
  ```

2. **ES Modules (ESM)** — padrão moderno.
- **Exportações nomeadas (Named Exports)**<br/>
Permite exportar múltiplos valores com nomes específicos.
  - **Exportação nomeada (inline)**
  ```js
  export const nome = "Raphael";
  export const idade = 27;
  export function somar(a, b) {return a + b;}
  export class Pessoa {}
  ```

  - **Exportação nomeada (depois)**
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

  // ou
  export { idade as anos, somar as somarValores };
  ```

- **Exportação padrão (Default Export)**<br/>
Cada módulo só pode ter **uma única exportação default**.
  - **Exportação default (inline)**
  ```js
  export default class Pessoa {
    constructor(nome) {
      this.nome = nome;
    }
  }

  export default function saudacao() {
    return "Olá!";
  }

  export default function soma(a, b) {
    return a + b;
  }

  export default 42;
  ```

  - **Exportação default (depois)**
  ```js
  function saudacao() {
    return "Olá!";
  }
  export default saudacao;

  function divide(a, b) {
    return a / b;
  }
  export default divide;
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

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/typescript.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">next</a>