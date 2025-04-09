1. 🔁 **Geradores assíncronos (`async function*`)**  
2. 🔄 **Diferença entre `function*` e `Promise`**  
3. ✅ **Exemplos reais de uso de funções geradoras**

## 1. 🔁 Geradores Assíncronos (`async function*`)

> São usados quando você quer **iterar dados que chegam com atraso** (ex: requisições, streams, timers).

```javascript
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

### 🔍 Detalhes:
- `await` funciona dentro do `async function*`.
- `for await...of` é obrigatório para consumir um gerador assíncrono.
- Útil para dados que demoram a chegar (como da internet ou sensores).

## 2. 🔄 Diferença entre `function*` e `Promise`

| Característica | `function*` (sincrona) | `async function` / `Promise` |
|----------------|------------------------|------------------------------|
| Pausável com `yield`? | ✅ Sim | ❌ Não |
| Pode ser iterado com `for...of`? | ✅ Sim | ❌ Não diretamente |
| Lida com dados que chegam depois? | ❌ Não | ✅ Sim |
| Usa `await` internamente? | ❌ Não | ✅ Sim |
| Ideal para | Streams, pipelines, pausar lógica | Operações assíncronas, requisições |

### Exemplo com `Promise`:
```javascript
async function pegaDados() {
  const resposta = await fetch('https://jsonplaceholder.typicode.com/posts/1');
  const json = await resposta.json();
  return json;
}

pegaDados().then(console.log);
```

### Exemplo com `function*`:
```javascript
function* geradorSimples() {
  yield 'passo 1';
  yield 'passo 2';
}
```

**Resumo:** `Promise` é ideal para **uma tarefa assíncrona** que será resolvida uma vez.  
`function*` é para lógica **interativa ou por etapas**.

## 3. ✅ Exemplos Reais de Uso
### 📦 Iterando valores de uma API paginada
```javascript
async function* buscarPaginas() {
  let page = 1;
  while (true) {
    const res = await fetch(`https://api.example.com/page=${page}`);
    const data = await res.json();
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

### ⏳ Temporizador
```javascript
function* temporizador() {
  yield '3...';
  yield '2...';
  yield '1...';
  yield 'Fogo!';
}

for (const valor of temporizador()) {
  console.log(valor);
}
```

### ⚙️ Simulando um "pipeline" de processamento
```javascript
function* pipeline(valor) {
  const dobrado = yield valor * 2;
  const somado = yield dobrado + 5;
  yield somado - 1;
}

const gen = pipeline(10);
console.log(gen.next());      // { value: 20, done: false }
console.log(gen.next(20));    // { value: 25, done: false }
console.log(gen.next(30));    // { value: 29, done: false }
```

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/manipulacao_dom.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/ajax.md">next</a>