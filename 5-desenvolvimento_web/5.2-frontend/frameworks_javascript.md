# FRAMEWORKS & LIBS
Como sabemos, o JS puro possui muitas formas de fazer a mesma coisa, e, apesar do vanilla JS ser excelente para performance e ser leve, ter que escrever um mesmo código em diferentes projetos afeta em muito o custo de produtividade, mesmo com a criação de libs próprias, então, possuir uma estrutura com um conjunto de ferramentas que fornecem uma base para auxiliar no desenvolvimento de softwares facilita em muito o trabalho do desenvolvedor, e é para isso servem os frameworks. Como sabemos, frameworks são conjuntos de ferramentas, regras e estruturas prontas que ajudam a construir aplicações mais rápido e de forma organizada. É como uma base já montada de lego, onde é possível encaixar novos blocos seguindo padrões e boas práticas que os frameworks já possuem.<br/>
Já as libs, são pedaços prontos de códigos, e estão abaixo dos frameworks em termos de robustez, porém, uma lib não precisa de um framework, mas um framework precisa de várias libs. Usando uma biblioteca chamamos a função quando quisermos, já com o framework é ele quem chama o código, então é obrigatório desenvolver seguindo seus padrões. Basicamente, com uma lib é o dev que tem o controle, já com o framework é ele quem dita as regras ao dev.<br/>
Os frameworks em JS ajudam a organizar o HTML, CSS e JS em componentes reutilizáveis, lidar com rotas como `/login` e `dashboard` por exemplo, contectar com APIs, controlar estados da aplicação, criar SPAs e muito mais.

## BIBLIOTECAS
Quanto as bibliotecas de JS, existem várias opções para a criação de aplicações front-end, mas as mais populares atualmente são com certeza o **React** e o **React Native**. Entretanto no passado, haviam outras muito utilizadas, como o caso do **jQuery**.

### JQUERY
O jQuery é uma biblioteca JavaScript de código aberto criada em 2006, ainda bastante encontrada em projetos de desenvolvimento Web, sua principal característica é facilitar a interação e dinamicidade das páginas HTML. Ele oferece a escrita das instruções de forma mais sucinta, simplificando tarefas como a manipulação do DOM, lidar com eventos, animações, requisições AJAX e tornar a aplicação compatível entre múltiplos navegadores. O jQuery facilita o uso de AJAX com métodos como:
```js
// exemplo de requisição AJAX com jQuery
$.ajax({
  url: "https://api.exemplo.com/dados",
  method: "GET",
  success: data => console.log("Dados recebidos:", data),
  error: error => console.error("Erro na requisição:", error)
});

// além de outros métodos mais sucintos e descritivos
$.get(url, callback);
$.post(url, data, callback);
```

Atualmente o jQuery não é mais indispensável como era em 2010, isso porque o **DOM moderno é bem mais fácil de usar**, com métodos como `document.querySelector()`, `document.querySelectorAll()`,  e etc. Além de que o método nativo `fetch()` substitui AJAX tranquilamente, sendo mais simples de escrever e enteder. Existem várias bibliotecas e frameworks modernos que já lidam com essas questões melhor e facilmente substituem o jQuery. Como o React por exemplo.

### REACT
Também chamado de **ReactJS**, esta é uma biblioteca JS de código aberto mantida e desenvolvida pelo Facebook em 2013, utilizada para a criação de interfaces front-end. O React é considerado uma biblioteca pelo fato de ser uma coleção de funcionalidades relacionadas que podem ser chamadas para executar algum código.<br/>
Ele possui diversas características que o tornam uma ótima opção para o desenvolvimento web, uma destas características é a utilização de **componentes**, que é licenciado pelo MIT, e é utilizado para criação das **Single Pages Applications**. O React proporciona uma forma única e eficiente de se lidar com os dados exibidos e a atualização de cada pequena porção — componente — da aplicação, possibilitando que cada parte da tela tenha comportamentos especiais e independentes do restante da aplicação.<br/>
De forma resumida, o `React` é uma biblioteca do JS que permite construir UIs dinâmicas através da manipulação do DOM. **Ele altera o estado dos elementos na tela em tempo real**, o que significa que em uma UI construída com React ao clicar em um botão que altera a cor de um texto por exemplo, isso é realizado sem a necessidade de recarregar a página para exibir o novo estado como seria usando somente CSS — neste caso, a cor do elemento. Em React, o estado `state` representa informações que podem mudar com o tempo, como o valor digitado em um input, se um modal está aberto ou fechado ou mesmo a contagem de cliques em um botão,<br/>
Além da alteração de estado em tempo real, também é possível **componentizar os elementos**, *que é a separação de cada parte da página web — ou seja, o documento HTML — em componentes*, **que são basicamente funções que contém os dados que serão exibidos na página de acordo com algum parâmetro**, outra característica é que o React é uma biblioteca modular, o que significa que os componentes podem ser facilmente reutilizados e compartilhados entre diferentes partes da aplicação, entre várias outras possibilidades que o React oferece.

**sintaxe**<br/>
Um projeto React é construído usando o **JSX**, que é uma extensão do JS usada especialmente pelo React para a criação das interfaces, permitindo unir o código JS com a sintaxe do HTML e os estilos do CSS para criar os componentes, o que facilita o desenvolvimento da UI em um único arquivo de código. O JSX é uma ferramenta poderosa que permite escrever um código mais conciso e organizado, sendo uma parte fundamental do ecossistema do React. O código JSX é escrito dentro de chaves `{}` e interpretado pelo React como código JS, isso permite a criação de componentes de UI de forma mais clara e concisa, sem precisar alternar entre arquivos de JS, HTML e CSS.
```jsx
import './App.css';

function BoasVindas(props) {
  return <h1 className="titulo">Olá {props.nome}!</h1>;
}

export default function App() {
  return <BoasVindas nome="Raphael"/>;
}
```

Como funções retornam apenas 1 resultado, um componente React também precisa retornar um único elemento, caso haja necessidade de se retornar um trecho de elementos HTML, estes devem ser encapsulados, e existem diferentes formas de se fazer isso no React.
- **`return (encapsulated code)`**: não é possível retornar múltiplos elementos irmãos "soltos" sem envolvê-los antes em outro elemento. Este método é uma convenção de boa prática utilizado especialmente quando o código contém vários elementos, **ele encapsula todo o código contido dentro dos parênteses e apenas quebra este retorno em várias linhas para melhorar a legibilidade**.
```jsx
return <h1>Olá</h1><p>Bem-vindo</p>; // ❌ não funciona

return <div><h1>Olá</h1><p>Bem-vindo</p></div>; //  isso funciona, mas não é tão legível

// ✅ boa prática de formatação visual
return (
  <div>
    <h1>Olá</h1>
    <p>Bem-vindo</p>
  <div/>
);
```

- **`return <>fragment</>`**: todo `return` JSX precisa retornar apenas um único nó pai, a tag vazia `<>...</>` é chamada de "fragment" e é usada para encapsular os demais elementos que serão retornados para o documento. **Um fragmento é um container invisível no DOM que permite encapsular múltiplos elementos JSX sem adicionar uma `div` extra no HTML, mantendo a semântica no HTML e otimizando o SEO.**
```jsx
return
  <>
    <h1>Olá!</h1>
    <p>Bem-vindo ao React.</p>
  </>;
```

A melhor forma de se retornar vários elementos JSX é utilizar a combinação de ambos, `return (<>code</>)`, mantendo uma boa e fácil leitura do código e sem adicionar elementos raiz extras desnecessários.
```jsx
return (
  <>
    <h1>Olá!</h1>
    <p>Bem-vindo ao React.</p>
  </>
);
```

O JSX também permite o uso de expressões JS dentro da sintaxe HTML. Por exemplo, é possível usar uma condição `if` para exibir ou ocultar um botão de acordo com o estado da aplicação:
```jsx
function Button(props) {
  return (
    <button onClick={props.onClick}>
      {props.isVisible ? props.text : null}
    </button>
  );
}
```

1. O React é construído em cima do Node, um ambiente runtime que permite a execução de código JS fora do navegador. Pelo fato do React ser uma lib, para se trabalhar com ele é necessário possuir o [Node](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating) instalado na máquina. Junto com o Node é instalado também o [npm](https://www.npmjs.com/package/react), um gerenciador de pacotes nativo do Node, usado para gerenciar as dependências e bibliotecas externas que um projeto React deve possuir, além de ser necessário para instalar o próprio React para possibilitar a construção do projeto.
2. Com o ambiente configurado, pode-se usar o comando `npx create-react-app project-name -y` ou `npm init react-app project-name -y` para criar um novo projeto React, estes comandos criam uma estrutura de arquivos básicos — tanto de configuração quanto de dependências — necessários para a execução do React em um diretório com o nome dado ao projeto.
3. Após a criação do projeto, é possível iniciá-lo localmente navegando para dentro do diretório do projeto criado e executar o comando `npm start`, que inicia o servidor de desenvolvimento que permite visualizar o projeto no navegador.
4. Após a finalização do projeto, para rodá-lo em produção é necessário "compilar" o projeto, uma vez que os navegadores entendem apenas "JS puro", e o comando `npm run build` cria uma versão final do projeto otimizada para produção, que minifica e transpila o código JSX para JS puro, ou seja, realiza o *bundle* de todas as dependências otimizando o código em um único arquivo JS, CSS e HTML que contém todo o código que irá para o deploy da aplicação.

Este método utiliza por padrão o bundler **WebPack**. Porém, atualmente existem outros bundlers que podem atender o projeto de acordo com cada necessidade, além disso também depender de como o React está sendo aplicado, já que existem no mercado frameworks potentes que tem o React como base e o deixam mais poderoso. Cada projeto, framework e abordagem deve ser seguida de acordo com as regras definidas.

**components: function x class**<br/>
Um *`component`* **é uma função que contém a lógica e as instruções que determinam os dados a serem retornados para o HTML**, sendo **obrigatório** *que a 1ª letra no nome de funções componentes seja maiúscula*. Esta função que contém um código JSX será utilizada na construção da interface usando a sintaxe de XML para a construção do documento, e nessa *tag* **cada atributo é uma chave para acessar os valores dentro da _props_**. Em outras palavras, o componente é a construção do elemento que será utilizado na função *"main"* que irá gerenciar e renderizar cada componente da aplicação de acordo com as regras e lógica definida.<br/>
**Cada componente tem um estado**, *que é uma variável que armazena as informações que mudam dentro do componente*, como os dados de um formulário ou a cor de um botão. Quando o usuário interage com a aplicação realizando ações como cliques em botões ou preenchimento de formulários, o estado dos componentes é atualizado e essas mudanças são refletidas na UI. Isso é feito através do uso de callbacks — que são funções chamadas quando uma ação é executada por um usuário.<br/>
Para que a realização dessas alterações não afetem o desempenho da aplicação, o React usa o que é chamado de **Virtual DOM**, *uma representação em memória da UI*. Quando o estado de um componente muda, o Virtual DOM é atualizado e comparado com o DOM real para determinar quais mudanças precisam ser feitas na UI. Isso é mais rápido e eficiente que atualizar o DOM diretamente, pois este pode ser lento para manipular e atualizar, dado que é uma representação direta da página web, então qualquer alteração nos dados da página requer uma atualização completa do DOM real.<br/>
O **D**ocument **O**bject **M**odel é uma representação em árvore de um documento, seja HTML ou XML. Ele é usado pelo navegador para mapear e entender o conteúdo de uma página web para permitir a interação com o usuário. Quando um usuário clica num botão em uma página web por exemplo, o navegador consulta o DOM para entender o que deve ser feito, procurando o elemento HTML correspondente ao botão no DOM e então executa a ação correspondente especificada no script. O problema é que isso pode ser muito lento em aplicações web complexas, com milhares de elementos HTML. Para resolver isto, o React introduziu o *Virtual DOM*, que é uma representação em memória do DOM atualizada com maior velocidade do que o DOM original.<br/>
Quando um componente do React é modificado, o Virtual DOM é atualizado 1º, e então essas alterações são sincronizadas com o DOM real, aumentando a eficiencia da UI em se atualizar, assim tornando a UX mais agradável com uma interface mais fluída e veloz.

Existem 2 maneiras de definir componentes:

- **function components**: um componente de função é simplesmente uma função JavaScript que pode receber ou não, **propriedades** como argumentos e retornar o elemento React que se deseja renderizar, ou seja, uma função que retorna JSX, que é o HTML dentro do JavaScript. Desde a introdução dos Hooks — que trouxeram funcionalidades que antes só existiam nos componentes de classe como possibilitar que os componentes de funções tenham *estado* e *efeitos colaterias* — os function components vem ganhando maior popularidade por serem mais simples, modernos, intuitivos e legíveis do que os class components, além de também serem compatíveis com todos os recursos através dos hooks. Um exemplo básico de um function component é a declaração de uma função — com a 1ª letra maiúscula — que retorna um elemento HTML:
```jsx
function Welcome(props) {
  return <h1>Olá, {props.name}</h1>;
}

export default function MyApp() {
  return (
    <div>
      <Welcome name="Raphael"/>
    </div>
  );
}
```
- **class components**: os componentes de classe são criados a partir de uma classe usando `class extends React.Component`, estes componentes gerenciam o estado utilizando o `this` para conseguir acessar props, state e etc, com métodos `this.state` e `this.setState()` por exemplo, além de usar métodos de ciclo de vida como `componentDidMount`, `componentDidUpdate`, e etc. Sendo obrigatório usar o método `render()` para retornar o JSX. Este formato é mais antigo e tem caído em desuso, sendo encontrado apenas em projetos legados, por ser muito verboso, levemente menos eficiente e de difícil leitura, além de que com o uso dos hooks os componentes de funções ganharam maior eficiência e adesão.
```jsx
import React from 'react';

class Welcome extends React.Component {
  render() {
    return <h1>Olá, {this.props.name}</h1>;
  }
}

class MyApp extends React.Component {
  render() {
    return (
      <div>
        <Welcome name="Raphael"/>
      </div>
    );
  }
}

export default MyApp;
```

Cada componente é um pedaço de código que segue um determinado padrão, e que pode ser reutilizado várias vezes ao longo do projeto, como "peças de lego" que podem ser combinadas para criar a UI de uma aplicação.

**props**<br/>
As **properties** *são objetos que permitem passar dados de um componente pai para um componente filho*, ou seja, **são os parâmetros passados para um componente**, permitindo assim reutilizar estes componentes usando dados diferentes. Como as props são um tipo de dados que podem ser passados a um componente, esses dados podem incluir textos, números, imagens ou até mesmo outros componentes. Ao passar as props para um componente, este pode ser personalizado de acordo com cada necessidade. São imutáveis dentro do componente filho, não sendo possível modificá-las diretamente, uma alteração de uma prop dentro de um componente filho pode quebrar o fluxo de dados do React, por isso as props devem sempre ser passadas de pai para filho — o pai recebe o valor e envia para o filho, que o utiliza na renderização.
```jsx
// componente Filho
function Welcome(props) {
  return <h1>Olá, {props.name}!</h1>;
}

// componente Pai
function App() {
  return <Welcome name="Raphael"/>;
}
```
No exemplo acima, o **componente recebe a prop** com o valor, que então é passado como *argumento* e acessado como em um objeto para que a **função** renderize o valor devido.<br/>
Internamente o React cria um objeto com todas as props passadas:
```jsx
const props = { name: "Raphael" };
```
Por ser um objeto, é possível acessar sua *chave* — que é o *atributo* dentro do componente — ou também desestruturá-la:
```jsx
function Welcome( { name } ) {
  return <h1>Olá, {name}!</h1>;
}
```

Por exemplo, um componente `Post` que renderiza um título, uma imagem e uma descrição, usando `props` é possível atribuir diferentes títulos, imagens e textos para cada **instância** *desse componente*, sem precisar criar uma nova versão para cada postagem.
```jsx
// component
function Post(props) {
  return (
    <div>
      <h1>{props.title}</h1>
      <img src={props.urlImage} loading="lazy"/>
      <p>{props.text}</p>
    </div>
  );
}

// using component
function App() {
  return (
    <div>
      <Post
        title="post 1"
        urlImage="https://path.com/img1.png"
        text="Image description."
      />
      <Post
        title="post 2"
        urlImage="https://path.com/img2.png"
        text="Image description."
      />
    </div>
  );
}
```

Como props são para o componente filho dados somente de leitura, caso haja a necessidade de realizar uma alteração o ideal é usar `state` — `useState` — ou passar uma função via props que altere esse estado no pai.<br/>
Então, se o dado só interessa ao componente, deve-se usar `useState` localmente.
```jsx
import React, { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0); // estado local

  return (
    <div>
      <p>clicks: {count}</p>
      <button onClick={() => setCount(count + 1)}>clique aqui</button>
    </div>
  );
}
```
Neste exemplo, o estado está apenas dentro do próprio componente `Counter`, não envolve props pois nenhum dado é recebido por ele. Quando um componente filho precisa alterar dados do pai, o pai passa uma função que atualiza o estado, e então filho a chama.
```jsx
// App.js (componente pai)
import React, { useState } from "react";
import Filho from "./Filho";

function App() {
  const [mensagem, setMensagem] = useState("Mensagem inicial.");

  // função que será passada ao filho
  const alterarMensagem = novaMensagem => setMensagem(novaMensagem);

  return (
    <div>
      <h1>{mensagem}</h1>
      <Filho alterarMensagem={alterarMensagem}/>
    </div>
  );
}

export default App;
```
Antes do clique do botão no elemento `<Filho/>`, a mensagem exibida no `h1` é: `"Mensagem inicial."`. Somente se usuário clicar no botão, a função `alterarMensagem` é chamada, essa função recebe o dado — ou seja, a nova `string mensagem` — do filho e a usa em `setMensagem()` para alterar o estado de `mensagem` e então exibi-la no componente pai dentro do `h1`, e a exibição passa a ser `"Nova mensagem do filho!"`.

```jsx
// Filho.js (componente filho)
function Filho({ alterarMensagem }) {
  return (
    <div>
      <button onClick={() => alterarMensagem("Nova mensagem do filho!")}>
        alterar mensagem do pai
      </button>
    </div>
  );
}

export default Filho;
```
O botão `alterar mensagem do pai` executa `alterarMensagem()` quando clicado, e o valor `"Nova mensagem do filho!"` é enviado à `setMensagem()` que então altera o estado de `mensagem` e passa exibir esse novo valor no `h1`.

**life clicle**<br/>
**O React implementa o conceito de _ciclo de vida_ para gerenciar o comportamento e a renderização de componentes.** *O ciclo de vida de um componente React refere-se às fases pelas quais um componente passa, desde sua inicialização até sua remoção do DOM*, ou seja, o ciclo de vida de um componente é o **conjunto de etapas que um componente passa ao ser criado, ter seu estado inicializado, ser montado no DOM e renderizado, atualizado quando seu estado ou props mudam e desmontado quando é removido** em uma aplicação ReactJS.<br/>
Este conceito foi introduzido pelos componentes de classe, e apesar dos componentes funcionais serem mais simples que os componentes de classe, também possuem um ciclo de vida — compartilhando o mesmo conceito. *No entanto os componentes funcionais não possuem métodos de ciclo de vida como os componentes de classe*, **no lugar usam os HOOKS**, como `useState` e `useEffect`, para gerenciar o estado e executar ações em resposta às mudanças no estado ou nas props.

**hooks**<br/>
React Hooks são funções que permitem usar funcionalidades dos componentes classe em componentes funcionais, como gerenciar estado além de outros recursos do React em componentes de funções sem a necessidade da criação de classes. Ou seja, Hooks são métodos especiais que adicionam recursos aos componentes funcionais, em outras palavras, são métodos prontos utilizados para realizar algum tipo de modificação no componente do documento. Só é possível usar um Hook — customizado ou não — dentro de um componente funcional. Alguns exemplos dos Hooks mais utilizados são o `useState` — que adciona um estado local ao componente, `useEffect` — que executa o efeito colateral da alteração de estado do componente, o `useContext` — que gerencia o contexto global, entre outros. Uma componente pode usar Hooks mas não precisa deles para funcionar, enquanto um Hook apenas funciona se usado em um componente. Vejamos alguns exemplos:
```jsx
import { useState } from "react"; /* o `useState` é um Hook que representa informações que podem mudar com o tempo
como por exemplo o valor digitado em um input, se um modal está aberto ou fechado, ou mesmo a contagem de cliques em um botão como neste exemplo */

export function CounterButton() { /* a função `CounterButton()` é o componente que será exportado e renderizado no documento

com `useState` é possível a criação de um estado local para o componente, que pode ser alterado dinâmicamente sem que a página seja recarregada
ele realiza isso criando uma variável de estado inicializada com um valor, e usa um método para atualizar este valor
e então o componenete re-renderiza automaticamente quando o valor muda */

  const [timesClicked, setTimesClicked] = useState(0); /* o `useState()` é desestruturado para que a função componente receba a variável de estado e o método de alteração dessa variável

onde a variável estado é sempre o 1º item e o método o 2º da declação de desestruturação

[timesClicked(0) = variável_estado(valor_inicial_rebebido), setTimesClicked() = funcao_de_atualização] = useState(valor_inicial_da_variavel_estado) 

ao atribuir o `useState()` o valor de inicialização da variável deve ser passado como argumento

enquanto o método que altera o estado — neste caso `setTimesClicked()` — pode receber tanto os novos valores para realizar a modificação na variável estado
quanto uma função callback com a lógica e as intruções para realizar a alteração

neste caso, o retorno do componente `CounterButton()` será um botão que responde ao evento de clique `onClick()`
que contém um callback com a função de atualização da variável estado `setTimesClicked()`, onde através de um callback soma ao parâmetro de retorno o valor 1 sempre que o botão é clicado e o event listener ativado */
  return <button onClick={() => setTimesClicked(i => i + 1)}>
    Clicou {timesClicked} {timesClicked === 1 ? "vez" : "vezes"}
  </button>;
// e então renderiza na página o conteúdo envolvido dentro da tag `button`
}
```

Outro exemplo de componentização e uso de Hooks no React:
```jsx
import { useState, useEffect } from "react";

// esse código exporta a função `Timer()` criada
export function Timer(props: { title: string }) {

// [counter(init_value) = state_var, setCounter = update_function] = useState(init_value_of_state_var)
  const [counter, setCounter] = useState(0);

  useEffect(() => { /* no caso de `useEffect()`, ele representa os "efeitos colaterais" que uma página sofre
ele recebe um callback que é executado sempre que o componente é renderizado
pode ser chamado depois de cada atualização no componente ou apenas uma vez dependendo da necessidade

neste exemplo, quando o componente Timer é renderizado na tela todas as instruções em `useEffect()` são executadas imediatamente
sendo essas as instruções para a atualização de estado de `useState()` */

    let i = 0;
    const timer = setInterval(() => {setCounter(++i)}, 1000); /* essa função contém a lógica para atualizar o estado de `useState()`
onde o valor da variável estado `counter` é atualizado usando `setCounter(++i)` a cada determinado período intervalo

o retorno dentro deste escopo só é executado caso o `useEffect()` sofra alguma alteração através da re-renderização do componente
isso é devido à execução da função assíncrona `setInterval()`

o fim da execução de `useEffect()` é o valor de `timer` = `setCounter(counter)` zerado por `clearInterval(timer)`
fazendo com que contador seja reiniciado em 0 sempre que a página é carregada */
    return () => { clearInterval(timer); };
  }, []);

// a função então retorna o elemento com os dados que serão renderizados, manipulados e atualizados no documento
  return <p>{props.title}: {counter}</p>;
}
```

Aqui temos a estrutura básica de um documento HTML, que irá receber as funções de manipulação do DOM com React:
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>React</title>
  </head>
  <body>
    <div id="root"></div> <!-- ponto entrada dos dados retornados pelo JSX para renderização -->
    <script type="module" src="index.tsx"></script> <!-- código React -->
  </body>
</html>
```

Este exemplo mostra como o React funciona:
```jsx
// importando estilos e funções
import { createRoot } from "react-dom/client";
import { Timer } from "./components/Timer.tsx";
import { CounterButton } from "./components/CounterButton.tsx";
import "./style.scss";

function App() {
  return <>
    <h1>Olá React!</h1>
    <Timer title="Tempo"/>
    <CounterButton/>
  </>;
}

const root = document.getElementById("root"); // elemento objeto da renderização, obtido no documento através do id `root`

// declaração para renderizar o que será executado dentro da função componente `App()`
createRoot(root!).render(<App/>); /* o elemento principal do documento — `root` — é passado como argumento para o método `createRoot()`
para que o navegador tenha a localização de onde deve renderizar cada elemento
neste caso, sendo a partir do elemento `root` onde os elementos retornados pelas funções do ReactJS serão renderizados
A função principal da aplicação — `App()` — conterá em sua estrutura todos os componentes de renderização do programa, tanto os elementos
HTML, quanto os elementos de funções componente

o método `render()` usará a função componente principal especificada para criar uma `tag` no documento que a represente
permitindo-a manipular e exibir os dados */
```
Como podemos ver, um componente é uma função, que pode ser encapsulada em uma tag ou conter somente os dados a serem retornados encapsulados em uma tag. Como por exemplo `<App/>`, que contém tudo o que será renderizado na div `root` do HTML, que é todo o conteúdo dentro da função `App()` no React.<br/>
Além de que, existem vários Hooks para atender à diferentes necessidades, como por exemplo o `useState`, que gerencia e altera o estado local e os dados em um componente, ou mesmo o `useEffect`, que permite executar um código em resposta a mudanças no estado ou nas propriedades de um componente, especialmente útil para executar ações assíncronas como fazer requisições HTTP ou alterar o DOM quando o estado ou as props mudam por exemplo.<br/>
O React pode ser utilizado *"puro"* ou com outras ferramentas de construção, como o framework **Next.JS** por exemplo. Existe também uma opção *"nativa"* para a construção de aplicativos móveis com React, o **React Native**, que permite a criação de aplicações móveis de alta qualidade que se comportam como aplicações nativas, mas são construídas usando tecnologias web — como JavaScript e CSS.

### REACT NATIVE
Com a popularidade dos dispositivos mobile, o Facebook viu a neceissdade de criar aplicações híbridas que mantivem a performance de aplicativos Android e iOS, então utilizando o React como base, o Facebook criou uma estrutura que transforma o mesmo código em código nativo Android e iOS, e assim nasceu o React Native em 2015. Este é um *"framework"* para desenvolvimento de aplicativos móveis, que agiliza todo o processo de desenvolvimento e possibilita a criação de aplicações multiplataforma, ou seja, aplicações que vão funcionar tanto em sistemas iOS como no Android, tudo isso apenas com JavaScript. Algumas características marcantes do React Native que o tornam uma boa opção para desenvolvimento mobile são o uso de recursos nativos, a modularização com uso de componentes e o ponto que mais influencia na sua escolha é a vantagem de usar uma única linguagem e código base para desenvolver para sistemas mutiplataformas.<br/>
Embora estejam associados, React e React Native não são a mesma coisa, são ferramentas diferentes — *mas relacionadas*. Ambos compartilham muitos conceitos e sintaxe, mas a principal divergencia é o tipo de aplicações que cada um cria. Enquanto o React é usado para desenvolver aplicações web, o React Native é utilizado para criar aplicativos móveis. Por conta do objetivo de plataforma de desenvolvimento de cada, a maior diferença entre React e React Native é que não é possível utilizar elementos do DOM no React Native, para ele é necessário utilizar componentes específicos nativos como uma `View` que é referente a uma `div`, ou um `Text` que é referente a um `p`, entre outros exemplos. Mas no geral, o código para ambos é o mesmo.
```jsx
import React from 'react';
import { Text } from '...';

function Nomes() {
  const pessoas = ["Raphael", "Déborah"];

  return (
    <>
      {pessoas.map(nome => 
        <Text>
          {nome}
        </Text>
      )}
    </>
  );
}
```

Como o React Native não possui CSS, outra forma de estilzar componentes é usando o `StyleSheet`. Uma estrutura de objetos é utilizada para a criação dos estilos.
```jsx
import React from 'react';
import { View, StyleSheet } from 'react-native';

export default function Exemplo() {
  return <View style={estilos.exemplo}>
    ...
  </View>
}

const estilos = styleSheet.create({
  exemplo: {
    backrgroundColor: "#333"
  }
});
```

Outra diferença é que, no React Native o `display: flex` e o `flex-direction: column` são os padrões dos estilos, sem a necessidade de declarar `display: flex` assim como no React/CSS.
```jsx
// padrão
<View>
  <Text>Item 1</Text>
  <Text>Item 2</Text>
</View>

/*
exibição:
Item 1
Item 2


 ao declarar explicitamente o estilo como `display: flex` no elemento, isso "reseta" a propriedade padrão
 fazendo com que o `flex-direction` tenha o mesmo padrão que teria no navegador comum, ou seja, `flex-direction: row`
 
 resetando */
<View style= {{ display: flex }}>
  <Text>Item 1</Text>
  <Text>Item 2</Text>
</View>

/*
exibição:
Item 1 Item 2
*/
```

Falando em estilos, existem várias bibliotecas disponíveis tanto no React quanto no React Native. Algumas que não utilizam recursos nativos e nem DOM, podem ser utilizadas em ambos e também no Vanilla JS. Porém, libs que possuem recursos nativos só irão funcionar para as plataformas que foram projetadas, seja React/JS ou React Native.<br/>
Então, no caso de libs desenvolvidas utilizando recursos nativos ou DOM, existem 2 bibliotecas desenvolvidas especialmente para React e outra para React Native, como é o caso de `styled-componentes`. Nos styles components utiliza-se o mesmo nome de lib, então é basicamente o mesmo pacote que se deve importar para ambos Reacts. Mesmo que essa biblioteca tenha sido construída de forma diferente para cada um deles, durante a utilização parece a mesma coisa para ambos.<br/>
Então, para se criar um componente com styled components, utiliza-se o objeto `styled` e em seguida o nome do componente que se deseja estilzar, e então dentro de um par de crases é feita a declaração do estilo de forma semelhante ao CSS. Essa biblioteca permite uma junção dos estilos de React e Native de uma forma única, trazendo a proximidade do CSS ao React Native, e também traz os componentes estilizados com foco no componente como geralmente ocorre no Native para o React.
```jsx
import React from 'react';
import styled from 'styled-components';

export default function() {
  return <BlocoVermelho>
    ...
  </BlocoVermelho>
}

const BlocoVermelho = styled.View`
  background-color: rgb(255, 0, 0);
`;
```

Porém, ela possui algumas limitações especificamente no React Native, pois ele não possui o CSS como base, então é feita uma "conversão" que aproxima o que pode para o ambiente nativo do React Native. Com isso, ele perde algumas funcionalidades como por exemplo as animações nativas do CSS e media queryies. Caso haja a necessidade de realizar esse tipo de interação no React Native, deve ser realizado de uma forma diferente e não com `styled-components`.<br/>
Já sobre o controle de estados, não existem também grandes diferenças entre React e React Native. Pois a maioria das soluções no mercado não utilizam nada no DOM para realizar este gerenciamento, pelo fato de que se está lidando com dados e variáveis, não necessariamente em como a aplicação irá funcionar no navegador ou no celular, são apenas dados. Então, tanto no React quanto no React Native no contexto de `Context`, é possível utilizar da mesma forma para ambos, seja o `createContext`, `useContext`, `Context.Provider` e etc.
```jsx
const themes = {
  light: {
    foreground: "#000";
    background: "#eee";
  },
  dark: {
    foreground: "#fff";
    background: "#333";
  }
};

const ThemeContext = React.createContext(themes.light);

function App() {
  return (
    <ThemeContext.Provider value={themes.dark}>
      <Toolbar />
    </ThemeContext.Provider>
    );
}

function Toolbar(props) {
  return <ThemedButton />
}

function ThemedButton() {
  const theme = useContext(ThemeContext);
  return (
    <button style={{ background: theme.background, color: theme.foreground}}>
      theme button
    </button>
  );
}
```
Assim como o exemplo do **Redux**, que é um pacote externo utilizado com React, que também lida e manipula os dados dessa forma. Pois não estamos lidando com o componente e sim com o valor da variável que ele irá utilizar.

### REDUX
Redux é uma biblioteca de gerenciamento de estado para aplicações JS, muito usado com React, mas tabmém funciona em outros frameworks como Angular ou Vue. Seu principal objetivo é centralizar e controlar o estado da aplicação, como dados do usuário, carrinho de compras, temas e etc, tudo em um só lugar. Por exemplo, imagine que existem vários componentes em uma aplicação React. Se um precisar passar dados para o outro, seria necessário ficar passando props por muitos níveis. Sem Redux seria como: `Componente A → B → C → D... (muito props passando de pai pra filho)`. Já com Redux, todos os componentes acessam o estado direto do mesmo lugar: o **`Store`**. A estrutura básica do Redux é a seguinte.
```txt
AÇÃO         (Action)
  ↓
DISPATCH     (envia ação)
  ↓
REDUCER      (decide como mudar o estado)
  ↓
STORE        (guarda o estado global)
  ↓
COMPONENTES  (acessam ou atualizam o estado)
```

Redux é ideal para aplicações grandes, que precisam de maior controle, como quando o estado da aplicação for compartilhado entre muitos componentes, e é necessária a previsibilidade e rastreabilidade para ver tudo o que aconteceu no estado.

| Termo        | Descrição                                                                  |
|--------------|----------------------------------------------------------------------------|
| **Store**    | Onde o estado global fica guardado.                                        |
| **Action**   | Um objeto que descreve o que você quer fazer (ex: `{ type: "ADD_ITEM" }`). |
| **Reducer**  | Uma função que recebe o estado atual + ação e devolve o novo estado.       |
| **Dispatch** | Função usada para enviar uma action para o reducer.                        |

Vejamos um exemplo de Redux puro (sem React):
```js
const { createStore } = require('redux');

// reducer
function contador(state = 0, action) {
  switch (action.type) {
    case 'INCREMENTAR':
      return state + 1;
    case 'DECREMENTAR':
      return state - 1;
    default:
      return state;
  }
}

// cria a store
const store = createStore(contador);

// escuta mudanças
store.subscribe(() => console.log(store.getState()));

// dispara ações
store.dispatch({ type: 'INCREMENTAR' });
store.dispatch({ type: 'INCREMENTAR' });
store.dispatch({ type: 'DECREMENTAR' });
```

## BUNDLERS
Como sabemos, tanto frameworks quanto libs são módulos no JS. Diferente de como funciona no backend com NodeJS, até a versão ES6 e a implementação do ESM, eram utilizados *bundlers* de código para trabalhar com modularidade. Atualmente, a maioria dos navegadores possuem o ESM nativo. Porém, como a versão "nativa" do JS de trabalhar com módulos (CJS) nunca foi compatível com navegadores — justamente por utilizar elementos que são nativos apenas do Node como o objeto global `exports`.<br/>
Embora o ESM seja hoje implementado nativamente nos navegadores, é sempre interessante considerar o uso de bundlers como o **webpack** por exemplo, para gerar a *versão de produção de uma aplicação frontend*, pois estas ferramentas tem recursos para aumentar a performance do código que é executado no navegador.

Então, um bundler é um **empacotador**, que lê os arquivos de código-fonte do projeto como um todo, resolve as dependências como importações, módulos e bibliotecas e gera um ou mais arquivos finais otimizados prontos para rodar no navegador. É muito útil em grandes projetos pois, sem ele seria necessário carregar todos os arquivos manualmente via `<script></script>` ou `link`, assim tendo o navegador de fazer centenas de requisições que impactariam na performance e experiência do usuário.<br/>
Com um boundler, pode-se escrever código modular, por exemplo `import Button from './components/Button.js` e no fim apenas 1 (ou poucos) arquivos otimizados são gerados para deploy e produção.<br/>
Os bundlers mais populares no mercado são:

| Bundler     | Destaque                                    |
|-------------|---------------------------------------------|
| **Webpack** | Extremamente configurável, poderoso.        |
| **ESBuild** | Ultra rápido, feito em Go.                  |
| **Parcel**  | Zero config, simples de usar.               |
| **Rollup**  | Foco em bibliotecas, gera bundles pequenos. |
| **Vite**    | Rápido, usa ES Modules + Rollup por trás.   |

A seguir, veremos um exemplo prático com Vite:
1. Criar projeto com Vite: `npm create vite@latest`.
2. Escolher o framework: React, Vue, Angular, Next e etc.
3. Instalar as depêndencias: `cd project_dir_name && npm install`.
4. Rode local: `npm run dev`.
5. Gere bundle final: `npm run build`.

Com isso, o bundler otimiza o processo de desenvolvimento ao apoiar libs e frameworks compilando SCSS, TypeScript, JSX e etc, minifica e otimiza o código final, juntando vários arquivos JS em 1 único script entre muitas outras vantagens.

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_css_bootstrap_tailwind.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/typescript.md">next</a>