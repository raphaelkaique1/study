# TRANSPORTE DE DADOS EM REDE
Como já vimos, uma forma bem comum de se transportar dados em rede é utilizando o **JSON**, que é a representação de um objeto que pode conter dados, arrays, outros objetos e até lógica com funções. Mas além dele, existem outras maneiras de representar e transportar dados pela rede, como o **XML**.<br/>
O **eXtensible Markup Language** é uma linguagem de marcação criada para armazenar, organizar e transportar dados de forma estruturada e legível tanto por humanos quanto por máquinas. Em outras palavras, é como o HTML, mas enquanto o HTML serve para exibir conteúdo no display, o XML serve para **representar dados**.<br/>
Ele tem como características ser um documento extensível, sendo possível a **criação de tags próprias e únicas para a identificação dos dados**, ser hierarquico pois os dados são organizados em forma de árvore (*pai-filho*), autodescritivo já que as tags dizem exatamente o que os dados representam, é baseado em texto puro e legível por qualquer linguagem de programação e é independente de plataforma, podendo ser usado por qualquer sistema operacional ou linguagem.
```xml
<pessoa>
  <nome>Raphael</nome>
  <idade>27</idade>
  <profissao>Desenvolvedor</profissao>
</pessoa>
```

Atualmente, o **JSON** é o método mais utilizado, principalmente em APIs por ser mais leve e fácil de usar com JavaScript. Vamos ver algumas diferenças:
```html
<script>
  // XML
  <pessoa>
    <nome>Raphael</nome>
    <idade>27</idade>
    <profissao>Desenvolvedor</profissao>
  </pessoa>

  // JSON
  {
    "pessoa": {
      "nome": "Raphael",
      "idade": 27,
      "profissao": "Desenvolvedor"
    }
  }
</script>
```

Como podemos ver, a diferença entre ambos é visível:
|                   | XML                                       | JSON                                   |
|-------------------|-------------------------------------------|----------------------------------------|
| Sintaxe           | Baseada em tags.                          | Baseada em objetos e arrays.           |
| Verbosidade       | Mais verboso.                             | Mais enxuto.                           |
| Suporte a tipos   | Não, tudo é texto.                        | Sim: string, number, boolean, null.    |
| Leitura humana    | Legível, porém mais carregado.            | Mais limpo e direto.                   |

## AJAX
A ideia de se transportar dados em rede é poder interagir com o usuário final de alguma forma, é para este propósito que os formatos de dados acima existem. Existem várias formas de manipular estes dados tanto no lado do servidor quanto no lado do cliente. Vamos começar pelo front-end com a maneira mais antiga, o XML.<br/>
É fato que a interface mais confortável e agradável é aquela em que a experiência do usuário não é afeta, e alcança-se isso quando não é necessário carregar a página para executar o script sempre que o usuário realizar alguma ação na aplicação, isso seria bem incômodo. Então, surgiu o conceito de aplicações baseadas em estado, onde as coisas acontecem de forma **assíncrona**, dessa maneira, não permitindo que o tempo de execução de um script afete ou interfira no que o usuário está fazendo na página.<br/>
Antes do surgimento do JSON, os dados entre cliente e servidor eram transportados por meio do XML,e pensando na experiência do usuário  surgiu o **AJAX**. Como sabemos, requisições são essenciais para comunicação na rede, como buscar dados de uma API, enviar formulários, ou carregar conteúdo dinamicamente, e foi para isso que o AJAX veio. **O _Asynchronous JavaScript And XML_ é uma técnica de desenvolvimento web que permite que páginas se comuniquem com servidores em º plano, sem recarregar a página inteira.** *O nome vem da época em que o formato mais utilizado era o XML, mas atualmente o JSON é o padrão de fato.*<br/>
É o que permite fazer coisas como preencher dados de um formulário automaticamente, atualizar apenas uma parte da página como uma tabela ou feed por exemplo, enviar um formulário e exibir o resultado sem recarregar a página e etc.<br/>
**AJAX não é uma tecnologia única, mas sim uma combinação de HTML e CSS para estrutura e estilo da página, JavaScript para a lógica de capturar eventos e manipular o DOM, `XMLHttpRequest` ou `fetch()` para enviar e receber dados do servidor de forma assíncrona, XML ou JSON para o formato usados para trocar dados entre cliente e servidor.<br/>
É importante salientar que AJAX **não é** nenhuma linguagem, não é uma biblioteca ou framework e nem um recurso exclusivo do JQuery ou do React — pois ambos usam AJAX por baixo dos panos. Ele é uma técnica de desenvolvimento que utiliza métodos assíncronos para a execução de script.

### MÉTODOS NATIVOS
#### `XHR`
Antigamente, a maneira de se carregar os dados com AJAX era manipulando o formato XML que continha os dados, e isso era possível através do método `XMLHttpRequest`. Surgiu com o AJAX, essa é uma API nativa do JavaScript nos navegadores para fazer requisições HTTP como GET, POST, PUT, DELETE e etc desde 2006. Ele suporta requisições assíncronas e síncronas, permitindo um controle mais detalhado, como progresso e upload e utiliza **eventos** como `onload` e `onerror`. Porém é bastante complexo para se trabalhar com Promises/async/await e verboso, e por isso foi substituído na maioria dos casos pelo fetch API. Vejamos sua sintaxe:
```js
const xhr = new XMLHttpRequest();                 // cria o objeto a partir da classe para a utilização dos métodos
xhr.open("GET", "https://api.exemplo.com/dados"); // prepara a requisição
xhr.onload = () => {                              // define o que fazer com a resposta
  console.log("Resposta:", xhr.responseText);     // obtém os dados da resposta
};
xhr.send();                                       // envia a requisição
```

Vamos simular seu uso e entender o que acontece:
```js
// criando o objeto `xhr` da classe `XMLHttpRequest()`
const xhr = new XMLHttpRequest(); // é este objeto que pode ser manipulado para configurar e disparar uma requisição

// xhr.open(método, URL)
xhr.open("GET", "https://api.exemplo.com/dados"); /* aqui é declarado uma requisição GET para o endereço especificado
isso apenas PREPARA a requisição, ainda não envia nada */

/* aqui é definida uma função de callback que só será executada quadno a requisição for concluída com sucesso
independente se retornar erro ou não */
xhr.onload = function () {
  xhr.status === 200 ? // exibe o código HTTP (200, 400, 500...)
    console.log("Resposta:", xhr.responseText): // contém o conteúdo da resposta, geralmente JSON, XML ou texto — se der certo exibe o conteúdo
    console.error("Erro:", xhr.status); // se a resposta não for 200, exibe o código do erro (ex.: 404 = não encontrado, 500 = erro interno e etc)
};

xhr.onerror = function () { /* essa função é chamada se ocorrer um erro de rede como falta de internet, DNS inválido ou Timeout
  esses erros não tem status HTTP, por isso essa função é separada de `onload` */
  console.error("Erro de rede");
};

xhr.send(); /* essa linha envia de fato a requisição
depois disso o navegador espera a resposta do servidor
e executa `onload` ou `onerror` dependendo do que acontecer */

// RESUMINDO
const xhr = new XMLHttpRequest();                        // cria o objeto
xhr.open("GET", "https://api.exemplo.com/dados");        // prepara a requisição
xhr.onload = function () {                               // define o que fazer se receber resposta
  xhr.status === 200 ?
    console.log("Resposta:", xhr.responseText):          // sucesso
    console.error("Erro:", xhr.status);                  // hTTP com erro
};
xhr.onerror = function () {                              // define o que fazer se der erro de rede
  console.error("Erro de rede");
};
xhr.send();                                               // envia de verdade a requisição
```

#### `Fetch API`
Esta é uma interface JavaScript que permite realizar requisições assíncronas a servidores e obter dados de forma simples e moderna que substituiu o `XMLHttpRequest` — que era mais verboso e menos flexível.<br/>
Além de usar promises e funcionar bem com `async/await`, o que facilita o controle assíncrono e a cadeia de operações, possui uma sintaxe mais limpa comparada ao `XHR`,tem suporte a **CORS**, que permite fazer requisições a servidores externos com um controle facilitado e não requer bibliotecas externas.<br/>
Ela é principalmente utilizada para interações com APIs Restful. Com a `Fetch API` é possível buscar dados de APIs, enviar dados para um servidor, manipular respostas e até mesmo tratar erros, tudo de forma mais legível e eficiente.
```js
fetch('https://api.exemplo.com/dados')           // requisita a API
  .then(response => response.json())             // recebe a resposta e os converte para JSON
  .then(data => console.log(data))               // usa os dados da resposta
  .catch(error => console.log('Erro:', error));  // captura erros
```

Vejamos passo a passo o que acontece:
1. **`fetch()`**: Faz uma requisição HTTP para a URL fornecida. Por padrão, é uma requisição do tipo `GET`.
2. **`response.json()`**: Converte a resposta recebida em formato JSON. Isso é necessário quando a resposta do servidor está em JSON.
3. **`.then()`**: Usado para lidar com o **sucesso** da `promise`. **O primeiro `.then()` recebe a resposta**, _o segundo usa os dados_.
4. **.catch()**: Trata os **erros** que podem ocorrer durante a requisição.

Vamos simular seu uso com `async/await` e entender o que acontece:
```js
async function buscarDados() { // cria uma função assíncrona
  try { // tenta executar com o sucesso o bloco
    const resposta = await fetch("https://api.exemplo.com/dados"); // aguarda a resposta da requisição da API
    const dados = await resposta.json(); // aguarda até que a resposta seja convertida para JSON e atribuida a variável `dados` para poder executar a manipulação
    console.log("Dados:", dados); // exibe os dados do objeto
  } catch (erro) { /* caso não tenha sucesso, captura o erro para lidá-lo neste bloco
    e o exibe no console */
    console.error("Erro:", erro);
  }
}

buscarDados();
```

#### `WebSocket`
WebSocket é uma tecnologia que permite comunicação bidirecional e full-duplex entre o cliente e o servidor, através de uma conexão persistente, sem a necessidade de reestabelecer a conexão a cada troca de mensagens.<br/>
**Ao contrário das requisições HTTP tradicionais, onde o cliente faz uma requisição e espera pela resposta do servidor, no WebSocket a comunicação pode ser contínua, sem a sobrecarga de criar novas conexões repetidamente.** Essa conexão permanece aberta até que o cliente ou o servidor decida fechá-la.<br/>
Proporciona baixa latência no sistema, como a conexão é persistente, a troca de dados é muito mais rápida, ideal para aplicações em tempo real, como chats, jogos online, ou monitoramento em tempo real. Aumenta a eficiência com menos overhead, pois não é necessário reestabelecer a conexão a cada troca de mensagem. Cria um sistema biderecional, onde tanto o cliente quanto o servidor podem enviar dados a qualquer momento.<br/>
Para usá-lo, basta criar um objeto a partir da classe `WebSocket()`:
```js
// criando a conexão com o servidor WebSocket
const socket = new WebSocket('wss://localhost:8080');

// evento de quando a conexão é aberta
socket.onopen = () => {
  console.log('Conexão WebSocket aberta!');
  socket.send('Olá servidor!'); // envia mensagens para o servidor a qualquer momento
};

// evento de quando uma mensagem chega do servidor
socket.onmessage = (event) => {
  console.log('Mensagem recebida do servidor:', event.data);
};

// captura e tratamento de erros
socket.onerror = (error) => {
  console.log('Erro na conexão WebSocket:', error);
};

// fechando a conexão
socket.close();

// evento de quando a conexão é fechada
socket.onclose = (event) => {
  console.log('Conexão WebSocket fechada:', event);
};

// OU:

// reconectar automaticamente em caso de conexão perdida
socket.onclose = (event) => {
  console.log('Conexão fechada, tentando reconectar...');
  // após 1 segundo tenta recriar a conexão caso necessário
  setTimeout(() => {
    socket = new WebSocket('ws://localhost:8080'); // cria o objeto da conexão
  }, 1000); // tenta reconectar após 1 segundo
};
```

O WebSocket é uma tecnologia nativa do JS, podendo ser usada diretamente no navegador, que tem suporte a ele, sem a necessidade de instalar bibliotecas externas, embora haja bibliotecas externas para facilitar seu uso, especialmente no lado do servidor. No lado do cliente, quando um objeto WebSocket é criado, o navegador se conecta automaticamente ao servidor especificado. Embora seja nativo do navegador, no ambiente `Node.js` porém, não é. Para usar WebSocket no servidor, é necessário uma biblioteca ou framework que suporte WebSockets. Em `Node.js`, uma das bibliotecas mais populares é o `ws` (`npm install ws`). Exemplo básico de servidor WebSocket com ws em Node.js:
```js
const WebSocket = require('ws');

// criar um servidor WebSocket na porta 8080
const wss = new WebSocket.Server({ port: 8080 });

wss.on('connection', (ws) => {
  console.log('Cliente conectado');

  // envia uma mensagem para o cliente
  ws.send('Olá cliente!');

  // receber mensagens do cliente
  ws.on('message', (message) => {
    console.log('Mensagem do cliente:', message);
  });

  // evento quando a conexão é fechada
  ws.on('close', () => {
    console.log('Cliente desconectado');
  });
});
```

### MÉTODOS EXTERNOS
#### `axios`
Este é um método de uma biblioteca externa baseado em **Promise**, que permite fazer requisições HTTP como GET, POST, PUT, DELETE e etc de forma simples e assíncrona. Tem sido muito utilizado em aplicações web para consumir APIs e interagir com servidores.<br/>
Como ele usa Promises, isso facilita o tratamento de respostas assíncronas usando `.then()`, `.catch()`, ou `async/await`.<br/>
Funciona tanto no navegador quanto no ambiente `Node.js`, possui funcionalidades de interceptação de requisições e respostas, permitindo alterar a configuração das requisições ou das respostas antes de serem enviadas ou recebidas, além de poder também cancelar requisições em andamento e oferecer suporte a transformação de dados podendo manipulá-los.<br/>
Para usar o `axios` basta instalá-lo no projeto e importá-lo para o arquivo JavaScript:
```bash
npm install axios
```
```js
import axios from 'axios';

// exemplo de uma requisição GET para importar dados de uma API
axios.get('https://api.exemplo.com/dados')          // requisita os dados
  .then(response => {                               // caso concluído com sucesso
    console.log('Dados recebidos:', response.data); // retorna os dados no objeto `response`
  })
  .catch(error => {                                      // caso não seja concluído com êxito
    console.error('Erro ao fazer a requisição:', error); // informa o erro obtido
  });

// exemplo de uma requisição POST para enviar dados de uma API para o servidor
axios.post('https://api.exemplo.com/usuarios', { // cria a requisição de envio com os dados a serem encaminhados
  nome: 'Raphael',
  email: 'raphael@exemplo.com'
})
  .then(response => {                              // caso sucesso
    console.log('Usuário criado:', response.data); // informa se a resposta obteve êxito
  })
  .catch(error => {                                 // caso erro
    console.error('Erro ao criar usuário:', error); // informa o erro obtido
  });
```

Um exemplo do método mais utilizado, com `async/await`:
```js
async function criarUsuario() {                                             // cria uma função assíncrona
  try {                                                                     // tenta executar este bloco
    const response = await axios.post('https://api.exemplo.com/usuarios', { // aguarda o método POST enviar os dados do objeto para a API
      nome: 'Raphael',
      email: 'raphael@exemplo.com'
    });
    console.log('Usuário criado:', response.data);                          // caso sucesso informa os dados de `response`
  } catch (error) {                                                         // captura erro caso exista
    console.error('Erro ao criar usuário:', error);                         // retorna o erro obtido
  }
}

criarUsuario();                                                             // executa a função
```

Se houver a necessidade de configurações comuns como cabeçalhos de autenticação, pode-se configurá-las globalmente:
```js
axios.defaults.baseURL = 'https://api.exemplo.com';
axios.defaults.headers.common['Authorization'] = 'Bearer token_aqui';
```

Como já dito, o Axios permite a definição de interceptadores para as requisições ou respostas, o que é útil para manipular dados ou erros globalmente.
```js
// interceptando requisições
axios.interceptors.request.use(
  config => {
    // modificar a configuração antes de enviar a requisição
    console.log('Requisição enviada:', config);
    return config;
  },
  error => {
    return Promise.reject(error);
  }
);

// interceptando respostas
axios.interceptors.response.use(
  response => {
    console.log('Resposta recebida:', response);
    return response;
  },
  error => {
    console.error('Erro na resposta:', error);
    return Promise.reject(error);
  }
);
```

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/assincronismo_promises_async_await.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/server_side_rendering_ssr.md">next</a>