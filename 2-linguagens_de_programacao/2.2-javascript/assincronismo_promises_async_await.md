# ASSINCRONISMO
Assincronismo é um conceito fundamental em programação, especialmente em JavaScript, e se refere à capacidade de realizar múltiplas operações de forma não bloqueante. Em vez de esperar que uma tarefa seja concluída para começar a próxima, o código pode continuar a execução de outras tarefas enquanto aguarda a resposta de operações mais lentas, como chamadas a servidores, leitura de arquivos ou interações com bancos de dados.<br/>
Como o JavaScript — especialmente no contexto de navegadores — é uma linguagem single-threaded — o que significa que ele pode executar apenas uma tarefa de cada vez, o assincronismo é essencial para melhorar o desempenho da aplicação e a experiência do usuário. Se uma operação for bloqueante, como uma requisição HTTP para buscar dados de um servidor por exemplo, o restante do código ficará esperando até que essa operação termine. Isso pode fazer com que a interface do usuário fique travada, resultando em uma experiência ruim. O assincronismo resolve isso, permitindo que o código continue executando enquanto espera pela resposta da operação, mantendo a interface fluida.<br/>
Sem assincronismo, funções demoradas como o processamento de grandes volumes de dados ou chamadas de API por exemplo, poderiam bloquear o código e impedir a execução de outras tarefas importantes. Com a programação assíncrona, é possível iniciar uma operação e, quando ela terminar, continuar o processamento sem bloquear o restante da aplicação.<br/>
Usando técnicas assíncronas, é possível realizar múltiplas tarefas em paralelo. Isso é particularmente útil em aplicativos que precisam realizar várias requisições simultâneas a servidores, como carregar múltiplos recursos ao mesmo tempo.<br/>
Existem várias formas de lidar com operações assíncronas em JavaScript:

## `generators*`
Funções geradoras em JavaScript não são assíncronas por padrão, mas elas podem ser usadas de maneira assíncrona. Elas são uma forma de escrever funções que podem ser interrompidas e retomadas posteriormente, permitindo gerar uma sequência de valores sob demanda, utilizando o yield. Uma função geradora é uma função especial que pode **pausar sua execução com o `yield` e retomar de onde parou**. Sua definição e declaração é semelhante as funções de expressão e declaração, uma pequena diferença está na adição de um `*` na palavra reservada `function`, ou seja, **`function*`**. As demais regras se aplicam também à ela, onde os parâmetros são opcionais e separados por vírgula, e o corpo da função fica dentro das chaves.<br/>
Diferente das funções normais onde tudo é executado automaticamente em sequência, as funções geradoras podem ser interrompidas durante a invocação e posteriormente é possível dar continuidade em sua execução a partir do ponto de parada.<br/>
O `yield` indica os pontos de interrupção da função
```js
function* saudar() {
  yield `Olá`;
  yield `Bem-vindo`;
  yield `Usuário!`;
}

const user = saudar();
console.log(user);
```

No exemplo acima, o valor da variável `user` será um objeto do tipo `Generator`, que nada mais é do que um `Iterator`. Ou seja, pode ser iterado de uma maneira diferente de um `array`, com a função **`next`**, que irá passar por cada ponto de parada. A função `next` retorna um objeto com 2 propriedades:
- **`value`**: o valor informado para cada `yield`.
- **`done`**: um *booleano* que indica se o `Iterator` percorreu todos os pontos de interrupção, assim, quando seu valor for `true` a iteração finalizou.

Chamando a função, ela não executa imediatamente, ela retorna um objeto iterador. Como nosso exemplo possui 3 pontos de parada, podemos chamar `next` 3 vezes e obter o valor de cada `yield`:
```js
// criando a função
function* saudar() {
  yield `Olá`;
  yield `Bem-vindo`;
  yield `Usuário!`;
}

const user = saudar(); // criando o objeto para manipular a função
console.log(user); // Object [Generator] {}

// atribuindo os valores de cada passagem da função à uma variável

const yield1 = user.next();
console.log(yield1);       // { value: 'Olá', done: false }
// acessando o objeto
console.log(yield1.value); // Olá
console.log(yield1.done);  // false

const yield2 = user.next();
console.log(yield2);       // { value: 'Bem-vindo', done: false }
// acessando o objeto
console.log(yield2.value); // Bem-vindo
console.log(yield2.done);  // false

const yield3 = user.next();
console.log(yield3);       // { value: 'Usuário!', done: false }
// acessando o objeto
console.log(yield3.value); // Usuário
console.log(yield3.done);  // false

// fim
const yieldEnd = user.next();
console.log(yieldEnd);       // { value: undefined, done: true }
// acessando o objeto
console.log(yieldEnd.value); // undefined
console.log(yieldEnd.done);  // true
```

Um exemplo completo:
```js
// criando a função
function* minhaGeradora() {
  yield 1;
  yield 2;
  yield 3;
}

// atribuindo os valores retornados à uma variável objeto
const gen = minhaGeradora();

console.log(gen.next()); // { value: 1, done: false }
console.log(gen.next()); // { value: 2, done: false }
console.log(gen.next()); // { value: 3, done: false }
console.log(gen.next()); // { value: undefined, done: true }
```

Entre cada declaração do `yield` é onde vai o código JS:
```js
// criando a função
const incremento = function* () {
    let n = 0;
    n++;
    console.log(`${n}º execução`);
    yield n; // 1ª parada

    n++;
    console.log(`${n}º yield`);
    yield n; // 2ª parada
}

// atribuindo a função à um objeto
const iterador = incremento();

// atribuindo o retorno da função à uma variável
const iterador1 = iterador.next();
console.log(iterador1);

const iterador2 = iterador.next();
console.log(iterador2);

const iterador3 = iterador.next();
console.log(`fim\n${iterador3}`);
```

Caso não seja necessário controlar o fluxo de execução, ou seja, chamar cada `yield` de maneira automática, pode-se utilizar `for ... of` para percorrer o iterador.
```js
function* saudar() {
    yield 'Olá'
    yield 'Bem-vindo'
    yield 'Usuário!'
}

for (let i of saudar()) {
    console.log(i)
}
```

Se houver necessidade de trabalhar com Promises em funções geradoras, é possível combinar isso com `async` e `await` para transformar a lógica em algo assíncrono. Simulando um comportamento assíncrono com `async/await`. Muito útil para **iterar dados que chegam com atraso**, ou seja, dados que demoram a chegar como da internet, sensores, requisições, streams, timers e etc.
```js
// função assíncrona operando uma geradora
function* minhaGeradora() {
  const valor1 = yield fetch('https://jsonplaceholder.typicode.com/posts/1');
  console.log(valor1);

  const valor2 = yield fetch('https://jsonplaceholder.typicode.com/posts/2');
  console.log(valor2);
}

async function executarGeradora() {
  const gerador = minhaGeradora();

  // Primeiro yield
  const { value: prom1 } = gerador.next();
  const resposta1 = await prom1;
  const json1 = await resposta1.json();
  const { value: prom2 } = gerador.next(json1); // 👈 Passa o json1 aqui e pega o segundo yield

  // Segundo yield
  const resposta2 = await prom2;
  const json2 = await resposta2.json();
  gerador.next(json2); // Finaliza o generator
}

executarGeradora();

/* Saída:
{
  userId: 1,
  id: 1,
  title: 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
  body: 'quia et suscipit\n' +
    'suscipit recusandae consequuntur expedita et cum\n' +
    'reprehenderit molestiae ut ut quas totam\n' +
    'nostrum rerum est autem sunt rem eveniet architecto'
}
{
  userId: 1,
  id: 2,
  title: 'qui est esse',
  body: 'est rerum tempore vitae\n' +
    'sequi sint nihil reprehenderit dolor beatae ea dolores neque\n' +
    'fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\n' +
    'qui aperiam non debitis possimus qui neque nisi nulla'
}
*/

// função geradora assíncrona
async function* contadorAssincrono() {
  let i = 1;
  while (i <= 3) {
    await new Promise(resolve => setTimeout(resolve, 1000));
    yield i++;
  }
}

(async () => {
  for await (const num of contadorAssincrono()) {
    console.log(num); // imprime 1, 2, 3 com intervalo de 1s
  }
})();
```

A diferença entre `function*` e `Promise` é que, `Promise` é ideal para **uma tarefa assíncrona** que será resolvida uma única vez. Enquanto `function*` é para lógica **interativa ou por etapas**.

| Característica                      | `function*` (sincrona)            | `async function` / `Promise`       |
|-------------------------------------|-----------------------------------|------------------------------------|
| Pausável com `yield`?               | Sim                               | Não                                |
| Pode ser iterado com `for ... of`?  | Sim                               | Não diretamente                    |
| Lida com dados que chegam depois?   | Não                               | Sim                                |
| Usa `await` internamente?           | Não                               | Sim                                |
| Ideal para:                         | streams, pipelines, pausar lógica | operações assíncronas, requisições |

## **`callbacks`**
Como seu nome indica, são **chamadas de retorno**, ou seja, são *funções passadas como argumentos e parâmetros para outras funções*. O que significa que quando invocamos uma função passando-a como parâmetro outra função – **`callback`** se a função principal for **síncrona**, *o callback é executado logo dentro dela*. Se for **assíncrona**, *o callback espera a operação terminar antes de ser executado*.
```js
function fazerAlgo(callbackParameter) {
  console.log("Executando algo...");
  callbackParameter(); // chamando a função callback passada como parâmetro
}

// chamando a função fazer Algo e passando uma função anônima – callback – como parâmetro – callbackParameter
fazerAlgo( function() {  console.log("Callback foi chamado!")} );
```

As funções anônimas são muito usadas como callbacks, essas funções passadas como argumento para outras funções são particularmente úteis quando precisamos executá-las apenas 1 vez.
```js
setTimeout(function() {
  console.log("Mensagem exibida após 2 segundos!");
}, 2000);
```

Uma função que é passada como argumento para outra função, e é chamada quando a operação assíncrona termina. Porém, o uso excessivo de callbacks pode levar ao problema conhecido como *"callback hell"*, ou pirâmide da morte, que torna o código difícil de ler e manter.  Quando temos vários callbacks aninhados, o código pode ficar difícil de ler, chamamos isso se chama **Callback Hell**, e, parar resolver este problema usamos **`Promises`**, **`async`** e **`awayt`**.
```js
setTimeout(() => {
  console.log('Operação 1');
  setTimeout(() => {
    console.log('Operação 2');
    setTimeout(() => {
      console.log('Operação 3');
    }, 1000);
  }, 1000);
}, 1000);
```

## **`Promises`**
São objetos que representam o resultado de uma operação assíncrona que pode ser concluída com **sucesso** (*resolvida*) ou **falhar** (*rejeitada*). As promises ajudam a evitar o "callback hell" e permitem um código mais legível e estruturado.<br/>
Uma `Promise` é um objeto que representa a eventual conclusão ou falha de uma operação assíncrona. Ela pode ter 3 estados:
1. **`Pending`**: O estado inicial da promise, antes de ser *resolvida* ou *rejeitada*.
2. **`Fulfilled`**: Quando a operação assíncrona foi concluída com sucesso e a promise retornou um valor.
3. **`Rejected`**:  Quando a operação assíncrona falhou e a promise retornou um erro.
```js
// criando uma Promise
let minhaPromise = new Promise(function(resolve, reject) {
  // código assíncrono aqui
  let sucesso = true;                   // simula um sucesso ou falha
  sucesso ?
    resolve("Operação bem-sucedida!"):  // resolve a promise com um valor
    reject("Algo deu errado!");         // rejeita a promise com um erro
});
```

Promises tem o método `.then()`, que recebe uma função callback e retorna um "objeto-promessa", que ainda não é um retorno de dados, mas sim a *promessa* do resto destes dados. Assim, é possível escrever o código do que irá acontecer em seguida, com os dados recebidos pela Promise, e o JS irá aguardar a resolução da Promise sem parar o fluxo do restante do programa. O resultado pode ou não estar pronto ainda, e não há uma forma de obter o valor de uma Promise de modo síncrono, só é possível requisitar à Promise que execute uma função quando o resultado estiver disponível — seja ele aquilo que foi solicitado, como os dados de uma API por exemplo, ou uma mensagem de erro caso algo tenha dado errado na requisição, como servidor fora do ar ou algo semelhante.<br/>
Ao iniciarmos a cadeia de promessas, como fazer uma requisição HTTP por exemplo, enquanto a resposta está pendente, a função retorna um `Promise object`. O objeto por sua vez, define uma instância do método `.then()`, e, ao invés de passar o retorno da função callback diretamente para a função inicial, ela é passada para `.then()`, quando o resultado da requisição chega, a função callback declarada em `.then()` então é executada, e seu retorno é passado para o próximo `.then()` e assim por diante até o final da cadeia.<br/>
A cadeia de funções `fetch().then().then().catch()` não significa que há múltiplas funções callbacks sendo usadas com o mesmo objeto de resposta, mas sim que cada instância de `.then()` retorna um `new Promise()`. Toda cadeia é lida de forma síncrona na primeira execução, e em seguida executa de forma assíncrona.

Basicamente, uma Promise é resolvida da seguinte maneira:
1. **Promise**: é um objeto que representa uma operação assíncrona que pode ser **resolvida** com sucesso ou **rejeitada** com erro.
2. **`.then()`**: Quando a Promise é resolvida, o método `.then()` é chamado, e pode-se passar uma função para processar o valor que foi retornado pela Promise.
3. **`.catch()`**: É possível encadear um `.catch()` para lidar com erros, caso a Promise seja rejeitada.

Como uma Promise pode ser *resolvida* ou *rejeitada*, pode-se usar juntos os métodos `.then()` e `catch()` para lidar com essas situações.
```js
// outro exemplo
new Promise((resolve, reject) => {
  setTimeout(() => resolve('Operação concluída'), 1000);
}).then(result => {                                       // se resolvida
  console.log(result);                                    // código para processar o valor retornado pela Promise
}).catch(error => {                                       // se erro
  console.error(error);                                   // código para lidar com erros, caso a Promise seja rejeitada
});
```

Quando lida-se com funções assíncronas, como requisições de rede, leitura de arquivos, ou timers, pode-se usar **Promises** para gerenciar essas operações de forma mais eficiente, sem bloquear a execução do restante do código.
```js
let promise = new Promise((resolve, reject) => {
  let sucesso = true;

  if (sucesso) {
    resolve("Operação bem-sucedida!");
  } else {
    reject("Ocorreu um erro!");
  }
});

promise
  .then(result => console.log(result))  // se resolvida com sucesso
  .catch(error => console.log(error));  // se rejeitada
```

Então `then()` define o que acontece quando a Promise é resolvida com sucesso, e `catch()` define o que acontece quando a Promise é rejeitada com um erro. O uso de `catch()` é importante para capturar erros em _qualquer parte do encadeamento_, não apenas no final. **Se um erro ocorrer em qualquer ponto do encadeamento, o `catch()` será chamado.**
```js
// cria o objeto Promise
let minhaPromise = new Promise((resolve, reject) => {
  let sucesso = true;                   // simula um sucesso ou falha
  sucesso ?
    resolve("Operação bem-sucedida!"):  // resolve a promise com um valor
    reject("Algo deu errado!");         // rejeita a promise com um erro
});

minhaPromise
  .then(result => {
    console.log(result);  // caso a promise seja resolvida, este bloco será executado
  })
  .catch(error => {
    console.log(error);  // caso a promise seja rejeitada, este bloco será executado
  });
```

Também é possível encadear múltiplos `then()` para trabalhar com uma sequência de operações assíncronas, permitindo processar os dados de forma sequencial:
```js
let minhaPromise = new Promise((resolve, reject) => {
  resolve(5)
});

minhaPromise
  .then(result => {
    console.log(result);  // Exibe: 5
    return result * 2;    // Retorna 10
  })
  .then(result => {
    console.log(result);  // Exibe: 10
    return result + 3;    // Retorna 13
  })
  .then(result => {
    console.log(result);  // Exibe: 13
  });
```

Se houver a necessidade de aguardar várias promises serem resolvidas ao mesmo tempo, pode-se usar o **`Promise.all()`**.<br/>
Ele recebe um array de Promises e torna uma nova Promise que será resolvida quando todas as Promises dentro do array forem resolvidas, ou rejeitada assim que uma delas for rejeitada.
```js
let promise1 = new Promise((resolve) => setTimeout(resolve, 1000, "Primeira operação"));
let promise2 = new Promise((resolve) => setTimeout(resolve, 2000, "Segunda operação"));
let promise3 = new Promise((resolve) => setTimeout(resolve, 3000, "Terceira operação"));

Promise.all([promise1, promise2, promise3])
  .then((results) => {
    console.log(results);  // Exibe: ["Primeira operação", "Segunda operação", "Terceira operação"]
  })
  .catch((error) => {
    console.log(`Erro:  ${error}`);
  });
```

Vejamos como requisitar vários endpoints de uma só vez:
```js
const endpoints = [
 "https://api.com/api/user/1",
 "https://api.com/api/user/2",
 "https://api.com/api/user/3",
 "https://api.com/api/user/4"
]

const promises = endpoints.map(url => fetch(url).then(res => res.json())) // percorre o array de endpoints armazenando todo retorno em promises com `.map`

Promise.all(promises) // recebe o array com os dados das API requisitadas
 .then(body => console.log(body.name)) // trata os dados
```

No caso de várias promessas que devem ser resolvidas para a execução do programa como por exemplo dados em endpoints REST diferentes, pode-se utilizar `async/await` em conjunto com `Promise.all()`:
```js
async function getUser(userId) {
 let response = await fetch(`https://api.com/api/user/${userId}`);
 let userData = await response.json();
 return userData;
}

let [user1, user2] = await Promise.all([getUser(1), getUser(2)]);
```

Caso seja preciso continuar a execução assim que a 1ª Promise for resolvida ou rejeitada, pode-se usar **`Promise.race()`**.<br/>
Ele retorna uma nova Promise que resolve ou rejeita assim que a 1ª Promise do array for resolvida ou rejeitada.
```js
let promise1 = new Promise((resolve) => setTimeout(resolve, 1000, "Primeira operação"));
let promise2 = new Promise((resolve) => setTimeout(resolve, 2000, "Segunda operação"));

Promise.race([promise1, promise2])
  .then((result) => {
    console.log(result);  // Exibe: "Primeira operação"
  })
  .catch((error) => {
    console.log(`Erro:  ${error}`);
  });
```

**De forma sucinta, podemos dizer que uma Promise representa o valor futuro de uma operação assíncrona.**

## **`Async/Await`**
O **`async`** e **`await`** são palavras-chave que facilitam o trabalho com **Promises**, permitindo um estilo de escrita de código assíncrono que se assemelha a código síncrono e sequencial. É uma forma moderna e mais legível de lidar com código assíncrono em JavaScript. Foi introduzido no ES2017 e é **construído sobre Promises**, tornando o código assíncrono mais fácil de entender e escrever, especialmente em operações complexas que envolvem múltiplas etapas assíncronas.<br/>
A palavra-chave `async` torna uma função assíncrona, e dentro dela pode-se usar `await` para "esperar" a resolução de uma promessa. Vejamos sua estrutura:
```js
// async/await
async function getData() {
  const result = await fetch("https://api.github.com/users/raphaelkaique1");
  console.log(result);
  const jsonToObj = await result.json();
  console.log(jsonToObj);
  console.log(jsonToObj.login);
}
getData();

// ou simplificando
async function pegaDados() {
  const resposta = await fetch('https://jsonplaceholder.typicode.com/posts/1');
  const json = await resposta.json();
  return json;
}
pegaDados().then(console.log);

// ou simplificando ainda mais
async function getData() {
  const result = await fetch("https://api.github.com/users/raphaelkaique1").then(res => res.json());
  console.log(result);
}
getData();

// objeto Promise
async function exemplo() { // criando uma função assíncrona
  const resultado = await new Promise((resolve) => { // criando o objeto Promise, que executa e aguarda a resolução do callback
    setTimeout(() => resolve('Operação concluída'), 1000);
  });
  console.log(resultado); // executa então após retornado o resultado
}

exemplo();
```

- **`async`**: Essa palavra-chave é usada para definir uma função assíncrona, **ela sempre retorna uma `Promise`**, mesmo que não seja explicitamente retornado um valor de Promise (Pending, Fulfilled ou Rejected) dentro da função. Ou seja, quando uma função é marcada como `async`, ela automaticamente retorna uma Promise, e somente dentro dessa função é possível utilizar `await` para aguardar a resolução de uma Promise antes de continuar a execução do código.
- **`await`**: Essa palavra-chave **só pode ser usada dentro de funções definidas como `async`, ela faz com que a execução da função "pause" até que a Promise seja resolvida ou rejeitada, mas durante essa "pausa" o restante do código continua sendo executado**. _Isso permite a escrita de um código mais limpo e claro, sem a necessidade de **callbacks** ou `then()`.
```js
// função assíncrona que resolve após 2 segundos
function esperar2Segundos() {
  return new Promise(resolve => {
    setTimeout(() => resolve("2 segundos passaram"), 2000);
  });
}

// usando async/await
async function exemplo() {
  console.log("Iniciando...");
  
  // o código "pausa" aqui até que a Promise seja resolvida
  const resultado = await esperar2Segundos();
  
  console.log(resultado);  // Exibe: "2 segundos passaram"
  console.log("Fim.");
}

exemplo();
```
O que acontece neste exemplo é que, a função `exemplo()` é uma função assíncrona, então ela retorna uma Promise. Dentro da função é usado `await` para esperar que a Promise `esperar2Segundos()` seja resolvida. O código "pausa" na linha com `await`, aguardando a Promise ser resolvida, mas enquanto isso, o JS pode continuar executando outras partes do código em 2º plano. Daí, quando a Promise é resolvida, o resultado é atribuído à variável `resultado` e o código continua sua execução normalmente.

Assim como em código síncrono, o `async/await` também pode usar o bloco `try/catch/finally` para tratar erros, facilitando a leitura e a captura de erros em operações assíncronas. No exemplo a seguir, a Promise é rejeitada e o erro é capturado pelo `catch()` dentro da função assíncrona.
```js
// função que pode gerar erro
function erroDepoisDe2Segundos() {
  return new Promise((resolve, reject) => {
    setTimeout(() => reject("Erro após 2 segundos"), 2000);
  });
}

// async com tratamento de erros
async function exemploComErro() {
  try {
    const resultado = await erroDepoisDe2Segundos();
    console.log(resultado);  // Não será executado
  } catch (erro) {
    console.log("Erro capturado:", erro);  // Exibe: "Erro capturado: Erro após 2 segundos"
  }
}

exemploComErro();
```

O código que utiliza `async/await` é muito mais limpo e fácil de entender do que o código com `Promises encadeadas` usando `.then()` e `.catch()`. Isso é especialmente útil quando se tem várias operações assíncronas que dependem umas das outras. O código assíncrono se torna muito mais fácil de seguir, pois ele parece ser "síncrono", apesar de ser assíncrono.
```js
// Promises
getDados()
  .then(response => {
    return processarDados(response);
  })
  .then(resultado => {
    return salvarResultado(resultado);
  })
  .then(() => {
    console.log("Tudo pronto!");
  })
  .catch(error => {
    console.log("Erro:", error);
  });

// async/await
async function executarProcesso() {
  try {
    const response = await getDados();
    const resultado = await processarDados(response);
    await salvarResultado(resultado);
    console.log("Tudo pronto!");
  } catch (error) {
    console.log("Erro:", error);
  }
}

executarProcesso();

// outro exemplo apenas com async, de uma função que simula uma operação assíncrona como uma requisição de rede
function buscarDados() {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve("Dados recebidos");
    }, 2000);
  });
}

// função async que usa await
async function exemploAsync() {
  try {
    console.log("Iniciando...");
    let resultado = await buscarDados();  // pausa até que a Promise seja resolvida
    console.log(resultado);  // "dados recebidos"
  } catch (erro) {
    console.log("Erro:", erro);
  }
}

exemploAsync();
/*
No exemplo acima, a função `buscarDados()` simula uma operação assíncrona que retorna uma Promise. A função `exemploAsync()` utiliza `await` para esperar que a Promise seja resolvida antes de continuar. Isso permite que o código seja executado de forma mais linear, como se fosse síncrono, sem os complexos encadeamentos de `.then()`.
*/
```

**Resumindo, `async/await` são ferramentas para escrever código assíncrono de forma mais clara, permitindo "aguardar" uma Promise de forma semelhante ao código síncrono.**

```js
async function getUser(userId) {
 let response = await fetch(`https://api.com/api/user/${userId}`);
 let userData = await response.json();
 return userData.name; // nas linhas de return não é necessário usar await
}

// para executar a função `getUser()`, já que ela retorna uma Promise, pode-se usar await:
exibeDadosUser(await getUser(1));

// lembrando que await só funciona se estiver dentro de outra função async. Caso não esteja, você ainda pode usar `.then()` normalmente:
getUser(1).then(exibeDadosUser).catch(reject)
```

## `setFunctions`
Essas funções são usadas para agendar a execução de código de forma assíncrona. Embora não sejam funções assíncronas no estilo tradicional, elas permitem que o código seja executado após um intervalo de tempo, sem bloquear o fluxo principal.

- **`setTimeout(callback, delay)`**: Executa a função `callback` após o tempo definido em milissegundos no segundo parâmetro `delay`.
- **`setInterval(callback, interval)`**: Executa a função `callback` repetidamente, com um intervalo em milissegundos definido no segundo parâmetro `interval`.

Abaixo temos algumas funções específicas do Node.js e lidam com a execução de código assíncrono de maneira mais imediata em relação ao loop de eventos.
- **`setImmediate(callback)`**: Executa a função `callback` assim que o loop de eventos estiver pronto para continuar.
- **`process.nextTick(callback)`**: Coloca a função `callback` no topo da fila de tarefas do Node.js, o que faz com que ela seja executada antes que o loop de eventos prossiga.

```js
// server side
setImmediate(() => {
  console.log("executado após a fase de I/O do loop de eventos");
});

process.nextTick(() => {
  console.log("executado imediatamente após a execução da função atual");
});

// client side
setTimeout(() => {
  console.log("\nsetTimeout executado depois de 10 segundos");
}, 11000);

console.info("1 - executa independente de função e ordem de declaração\n");

var n = 0;
let interval = setInterval(() => {
  n === 0 ?
    console.group(`setInterval starting (${n})`):
    n === 10 ?
      clearInterval(interval):
      console.log(`setInterval: ${n}`);
  n++;
}, 1000);

console.info("\n2 - executa independente de função e ordem de declaração\n"); 
/* Saída:
1 - executa independente de função e ordem de declaração


2 - executa independente de função e ordem de declaração

setInterval starting (0)
  setInterval: 1
  setInterval: 2
  setInterval: 3
  setInterval: 4
  setInterval: 5
  setInterval: 6
  setInterval: 7
  setInterval: 8
  setInterval: 9

setTimeout executado depois de 10 segundos */
```

## `fetch()`
Função de API nativa utilizada para realizar requisições **HTTP/HTTPS assíncronas**, ou seja, buscar ou enviar dados de/para um servidor *sem precisar recarregar a página*. Ele é parte da **Fetch API** e substitui o antigo `XMLHttpRequest`, sendo mais simples, limpa e baseada em `Promisses`. Vejamos um exemplo de uso:
```js
// usando promises diretamente
fetch('https://api.exemplo.com/dados')
  .then(response => {
    if (!response.ok) {
      throw new Error('A requisição falhou');
    }
    return response.json();
  })
  .then(data => console.log(data))
  .catch(error => console.log('Erro ao buscar dados:', error));

// iterando valores de uma API paginada
async function* buscarPaginas() {
  let page = 1;

  while (true) {
    const res = await fetch(`https://api.example.com/page=${page}`); // recebe os dados da página indicada
    const data = await res.json();                                   // permite a manipulação dos dados do objeto
    if (!data.items.length) break;
    yield data.items;
    page++;
  }
}

(async () => {
  for await (const items of buscarPaginas()) {
    console.log('Página:', items);
  }
})();
```

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/manipulacao_dom.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/ajax.md">next</a>