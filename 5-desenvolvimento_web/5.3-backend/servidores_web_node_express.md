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
2. Executa o `Parser` — processo de análise e conversão;
3. Monta a [**Á**rvore de **S**intaxe **A**bstrata](https://astexplorer.net/), um mapeamento que identifica o que cada parte do código está fazendo;
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

### EVENT LOOP
A característica de Node que faz com que ele não seja lento ou demore a processar a fila de requisições, é ser não bloqueante, e isso tem a ver com o sistema de *callbacks* do JavaScript e o **loop de eventos**.<br/>
Antes de falarmos sobre o tal *loop de eventos* em si, precisamos definir o que é um [evento](https://developer.mozilla.org/en-US/docs/Web/Events) no contexto do JavaScript. Podemos pensar em evento no sentido mais literal: **um acontecimento**, *algo que ocorre em determinado momento*. No navegador, os eventos estão muitas vezes relacionados a ações do usuário, como por exemplo um clique em um botão, preenchimento de um input ou qualquer outro tipo de interação. Podem ser eventos disparados por elementos HTML, por objetos globais do navegador como `window` e etc. Falando especificamente sobre o Node, podemos pensar nos eventos em contextos como na leitura e escrita de arquivos, manejo de requisições HTTP e funções timer como `setTimeout()`, essas ações emitem eventos quando o processamento é finalizado — algo como um "aviso" que informa ao programa que a execução foi concluída e o resultado pode ser utilizado. Esses eventos são passados ao event loop, que irá chamar as funções callback associadas a cada um destes eventos. Um exemplo de função callback nesta estrutura é a função que executa o `console.log()` abaixo:
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

- **Core methods of `EventEmitter`.**<br/>
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

- **Especial events of `EventEmitter`.**<br/>
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

- **Internal modules.**<br/>
Muitos módulos internos do Node. estendem o `EventEmitter` e definem seus próprios eventos. Aqui estão alguns exemplos:
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

- **`process` — objeto global**
  - `'beforeExit'`: Emitido quando o Node.js esvaziou o loop de eventos e está prestes a encerrar, mas ainda pode haver mais trabalho a ser finalizado.
  - `'exit'`: Emitido quando o processo está prestes a sair.
  - `'uncaughtException'`: Emitido quando uma exceção não capturada/tratada ocorre.
  - `'unhandledRejection'`: Emitido quando uma promessa é rejeitada e não há um manipulador de rejeição.
  - `'warning'`: Um aviso, como por exemplo de memory leak ou deprecated API.
  - `'SIGINT'`, `'SIGTERM'`, `'SIGUSR1'`, `'SIGUSR2'`: Outros eventos relacionados ao processo.

- **`child_process`**
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

- `child_process`: Cria e gerencia processos filhos.
  - Métodos úteis:
    - `exec()`
    - `spawn()`
    - `fork()`
    - `execFile()`

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
O Node trabalha fortemente com o conceito de **[módulos](https://nodejs.org/dist/latest-v20.x/docs/api/)**, que visa organizar o código em pequenas partes especializadas, além de aplicar o princípio de encapsulamento ao “esconder” o código, expondo somente o necessário a outras partes da aplicação e assim organizar e separar melhor o código. O objetivo de modularizar o código é permitir que aplicações maiores sejam montadas de forma “modular”, ou seja, através de várias partes independentes. Originalmente o Node trabalhava com o sistema CJS de modularização, pois o JavaScript não tinha ferramentas específicas para isso. Posteriormente foi especificado o padrão “geral” de módulos do JavaScript, o EcmaScript Modules. Desde então, o Node vem adotando gradativamente o ECMAScript Modules desde a versão 13, o que traz muitas diferenças com relação à forma “original” do Node, o CJS.

#### IMPORTAÇÃO
Então, tendo todas as dependências necessárias instaladas, para usá-las no projeto, vejamos mais sobre métodos de importação e exportação no arquivo JS para que suas funcionalidades guardadas nos arquivos em `node_modules` possam ser acessadas.<br/>
Os conceitos de módulo e modularidade são parte importante do desenvolvimento com JavaScript, e quando se tem mais de uma forma de realizar algo, como é o caso aqui, é ainda mais importante que se entenda os detalhes e as diferenças entre os métodos.<br/>
A primeira forma adotada pelo JavaScript para permitir a modularidade foi o chamado **CJS – Common JS**, baseado na função `require()`.<br/>
O CJS, embora fosse conhecido como o “padrão” do Node para módulos, nunca foi definido como ferramenta de modularidade oficial da linguagem, pois basicamente cria as exportações a partir da alteração do objeto global `exports` ao invés de utilizar métodos próprios para isso.<br/>
Por não existir esse método próprio, o ES6 especificou oficialmente, o chamado **ESM – EcmaScript Modules**, baseado nas palavras-chave `import` e `export`.
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

Porém, existe um “hiato” de tempo entre as especificações definidas para cada versão do JavaScript e a implementação de cada uma delas, tanto nos navegadores quanto no Node.js e em todo o seu ecossistema de bibliotecas. Por esse motivo, até hoje, é possível encontrar alguns bugs e *workarounds* – termo usado em programação para o que chamamos em português de “gambiarras” – para utilizar a sintaxe ESM com NodeJS.<br/>
Assim, ainda é muito comum ver o uso do **CJS** e do `require()` no Node. E mesmo após a implementação do ESM e a adoção desta nova sintaxe pelas bibliotecas, boa parte das documentações ainda utiliza a forma anterior para dar suporte a sistemas *legados*.

No JS existem várias formas de importar código, dependendo do tipo de módulo usado, que são:
1. **ES Modules – `import`** é o método mais moderno, sendo o padrão atual do ECMAScript, usado em browsers e também é suportado no Node.

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

2. **CommonJS – `require`**, esta é a forma "padrão" do Node, antes do surgimento do **ES Modules**, atualmente `require()` é um método antigo, usado apenas em ambientes Node.js legados ou com módulos antigos.

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

#### EXPORTAÇÃO
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