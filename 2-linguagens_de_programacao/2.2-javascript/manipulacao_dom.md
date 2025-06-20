# DOM
Um uso muito comum do JavaScript é modificar dinamicamente HTML e CSS para atualizar uma interface do usuário, por meio da API do **DOM**. O JS usa o DOM para se conectar ao HTML, permitindo assim a nevagação do script pelo documento. Para permitir alterações na página, ao carregar o HTML os navegadores armazenam em memória uma estrutura de dados que representa cada uma das tags no JavaScript. Essa estrutura é chamada de **Document Object Model**. Essa estrutura pode ser acessada através da variável global **`document`**. Trata-se da modelagem de todo o HTML, ou seja, ele é gerado pelo navegador para representar a página web, pode-se imaginar o DOM como uma árvore genealógica *"invertida"*, em que um elemento principal vai dando origem a outros elementos filhos. É nessa árvore que está a representação de todos os elementos da página, de forma estruturada.<br/>
![Image](https://www.alura.com.br/artigos/assets/javascript/javascript-dom-document-object-model.png)

- **`querySelector`**<br/>
Para alterar a página, é necessário acessar no JavaScript o elemento desejado. Vejamos um exemplo de como seria alterar o conteúdo de um título. Para acessá-lo usamos a propriedade `querySelector` que seleciona o elemento informado, podemos apontar uma tag, id ou classe:
```js
document.querySelector("h1")
document.querySelector(".class")
document.querySelector("#id")
```

Se o elemento for utilizado várias vezes é possível salvar o resultado de qualquer `querySelector` em uma variável:
```js
var titulo = document.querySelector("h1")
```

Essa variável, inclusive, pode receber valores e ser alterada, sendo tratada como um objeto e interagir com propriedades e métodos:
```js
titulo.textContent // output: "Title"
titulo.textContent = "New Title"
titulo.textContent // output: "New Title"
```

- **`querySelectorAll`**<br/>
As vezes é necessário selecionar vários elementos de uma vez na página, como por exemplo todas as tags com a classe `.card`. Se o retorno esperado é mais de 1 elemento, o `querySelectorAll` devolve uma lista de elementos, ou seja, um *array*.

```js
// selecionando todos os elementos que contém a classe `.card`
document.querySelectorAll(".card")
// primeiro card
document.querySelectorAll(".card")[0]
```

**Ao alterarmos os elementos da página, o navegador sincroniza as mudanças e alteram a aplicação em tempo real.**

## EVENTOS
É muito comum que as alterações sejam feitas quando o usuário executa alguma ação, como por exemplo, mudar o conteúdo de alguma seção quando um usuário clica em um botão, e não quando a página carrega. Porém, por padrão, qualquer código no navegador é executado assim que o script é lido. As funções nos ajudam na hora de pensar em sistemas orientados à eventos, pois o código só é executado quando um evento chama tal função. Agora, para que essa função seja chamada quando o usuário clicar no botão, usamos a seguinte estrutura:
```js
// função criada
function helloWorld() {
  alert("Hello world!")
}

// obtendo um elemento através de um seletor de ID
var buttonSend = document.querySelector("#button__send")

// executa a função quando o botão é clicado
buttonSend.onclick = helloWorld
// !!! NÃO INSERIR OS PARÊNTESES INDICA O NOME DA FUNÇÃO QUE DEVE SER EXECUTADA SOMENTE QUANDO O EVENTO CORRER, NÃO A EXECUTANDO PROPRIAMENTE, CASO OS PARÊNTESES ESTEJAM PRESENTES A FUÇÃO SERÁ EXECUTADA SEM A NECESSIDADE DO EVENTO TER OCORRIDO !!!
```

Outra maneira de associar os manipuladores de eventos aos elementos da página é através do método **`addEventListener()`**. Esta é uma forma ligeiramente mais avançada, mas proporciona menos escrita de código quando precisamos criar uma função apenas para executar uma única tarefa, ou seja, uma função que não será usada em nenhum outro lugar no código.<br/>
Assim como já visto, são necessárias 2 etapas para associarmos um evento a um elemento da página, acessar o objeto para manipular o elemento que queremos definir o evento, devemos selecioná-lo primeiro, para isso usamos o DOM. Em seguida basta adicionar o manipulador de eventos sobre o objeto aplicando `addEvenListener()`, e então, *indicando o **tipo de evento** e **função do manipulador***.
```js
// obtendo um elemento através de um seletor de ID
var formButton = document.getElementById("form__button--send")

// executa a função quando o botão é clicado
formButton.addEventListener("click", 
  function() {
    alert("Botão foi clicado!")
  }
)

// ou também
formButton.addEventListener("click", () => alert("Botão foi clicado!"))
```

### TIPOS DE EVENTOS
Existem diversos eventos que podem ser utilizados em diversos elementos para que a interação do usuário dispare alguma função, e até mesmo a criação de eventos customizados.:

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
- `onkeydown` – Quando uma tecla é pressionada.
- `onkeyup` – Quando uma tecla é solta.
- `onkeypress` – Quando uma tecla é pressionada e solta (obsoleto).
- `oncopy` – Quando o usuário copia algo.
- `oncut` – Quando o usuário recorta algo.
- `onpaste` – Quando o usuário cola algo.
- `onfocus` – Quando um elemento recebe foco.
- `onblur` – Quando um elemento perde o foco.
- `onchange` – Quando o valor de um campo muda.
- `oninput` – Quando há entrada de dados em um campo de formulário.
- `oninvalid` – Quando um campo não passa na validação.
- `onreset` – Quando um formulário é resetado.
- `onsearch` – Quando um campo de pesquisa recebe uma entrada.
- `onselect` – Quando o usuário seleciona um texto.
- `onsubmit` – Quando um formulário é enviado.
- `ondrag` – Quando um elemento está sendo arrastado.
- `ondragstart` – Quando o usuário começa a arrastar um elemento.
- `ondragend` – Quando o usuário solta o elemento arrastado.
- `ondragenter` – Quando um elemento arrastado entra em uma área válida.
- `ondragleave` – Quando um elemento arrastado sai de uma área válida.
- `ondragover` – Quando um elemento arrastado está sobre uma área válida.
- `ondrop` – Quando o usuário solta o elemento arrastado.
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
- `onanimationstart` – Quando uma animação CSS começa.
- `onanimationiteration` – Quando uma animação CSS repete.
- `onanimationend` – Quando uma animação CSS termina.
- `ontransitionstart` – Quando uma transição CSS começa.
- `ontransitionrun` – Quando uma transição CSS inicia, mas antes do delay.
- `ontransitionend` – Quando uma transição CSS termina.
- `onreadystatechange` – Quando o estado do `document.readyState` muda.
- `onDOMContentLoaded` – Quando o HTML foi carregado, mas os recursos ainda não.
- `onvisibilitychange` – Quando a visibilidade da página muda (`visible` ou `hidden`).
- `onfullscreenchange` – Quando a página entra ou sai do modo tela cheia.
- `onfullscreenerror` – Quando ocorre um erro ao tentar alternar para tela cheia.
- `onload` – Quando o documento ou um recurso (como imagem) é carregado.
- `onunload` – Quando a página está sendo descarregada.
- `onbeforeunload` – Antes do usuário sair da página.
- `onresize` – Quando o tamanho da janela do navegador muda.
- `onscroll` – Quando a página ou elemento é rolado.
- `onhashchange` – Quando o hash da URL muda (`#algumacoisa`).
- `onstorage` – Quando ocorre uma mudança no `localStorage` ou `sessionStorage`.
- `onerror` – Quando um erro ocorre (imagem, script, etc).
- `onpopstate` – Quando o estado do histórico muda (`window.history`).
- `onpageshow` – Quando uma página é exibida (inclusive de cache).
- `onpagehide` – Quando uma página é oculta.
- `ontouchstart` – Quando um toque começa na tela.
- `ontouchmove` – Quando um toque se move na tela.
- `ontouchend` – Quando um toque termina.
- `ontouchcancel` – Quando um toque é interrompido.
- `ondeviceorientation` – Quando a orientação do dispositivo muda.
- `ondevicemotion` – Quando o acelerômetro detecta movimento.
- `onoffline` – Quando o dispositivo fica offline.
- `ononline` – Quando o dispositivo volta a ficar online.
- `onbeforeprint` – Antes da página ser impressa.
- `onafterprint` – Depois que a página foi impressa.

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/sintaxe_e_funcionalidades_ecmascript.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/assincronismo_promises_async_await.md">next</a>