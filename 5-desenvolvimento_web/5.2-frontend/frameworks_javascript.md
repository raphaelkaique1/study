# FRAMEWORKS & LIBS
Como sabemos, o JS puro possui muitas formas de fazer a mesma coisa, e, apesar do vanilla JS ser excelente para performance e ser leve, ter que escrever um mesmo código em diferentes projetos afeta em muito o custo de produtividade, mesmo com a criação de libs próprias. Para isso servem os frameworks JS. Como sabemos, frameworks são conjuntos de ferramentas, regras e estruturas prontas que ajudam a construir aplicações mais rápido e de forma organizada. É como uma base já montada de lego, onde é possível encaixar novos blocos seguindo padrões e boas práticas que o frameworks já trás.<br/>
As libs, são pedaços prontos de códigos, estão abaixo dos frameworks em termos de robustez, porém, uma lib não precisa de um framework, mas um frameworks precisa de várias libs. Usando uma biblioteca, chamamos a função quando quisermos, já com o framework, é ele quem chama o código, então precisamos desenvolver seguindo seus padrões. Basicamente com uma lib, é o dev que tem o controle, já com o framework, é ele quem está no controle.<br/>
Os frameworks em JS ajudam a organizar o HTML, CSS e JS em componentes reutilizáveis, lidar com rotas como `/login` e `dashboard` por exemplo, contectar com APIs, controlar estados da aplicação, criar SPAs e muito mais.

## BIBLIOTECAS
Em bibliotecas de criação de aplicações front-end com JS, as mais populares atualmente são **React** e **React Native**.

### JQUERY
O jQuery é uma biblioteca JavaScript criada em 2006 e ainda bastante utilizada no desenvolvimento Web por facilitar a interação e dinamicidade das páginas HTML. De forma mais direta, o jQuery torna a vida do desenvolvedor JS mais simples, fazendo com que escreva uma instrução de forma mais sucinta. Além do mais, o jQuery também é código aberto então a comunidade de devs está livre para melhorá-lo e incrementar mais funcionalidades a ele. As principais tarefas que ele simplifica são a manipulação do DOM, lidar com Eventos, Animações, requisições AJAX e tornar a aplicação compatível entre navegadores, e seu slogan resume bem isso: _`"Escreva menos, faça mais."`_

jQuery facilita muito o uso de AJAX com métodos como:
```js
$.ajax({
  url: "https://api.exemplo.com/dados",
  method: "GET",
  success: function(data) {
    console.log("Dados recebidos:", data);
  },
  error: function(error) {
    console.error("Erro na requisição:", error);
  }
});
```

Também existem outros atalhos, como:
```js
$.get(url, callback);
$.post(url, data, callback);
```

Hoje em dia, jQuery não é mais indispensável como era em 2010, porque o **DOM moderno é bem mais fácil de usar** (`document.querySelector` e etc). Além de que `fetch()` substitui AJAX tranquilamente e é mais simples de enteder. Existem várias bibliotecas e frameworks modernos que já lidam com essas questões melhor.

### REACT
Ou também chamado de **ReactJS**, é uma biblioteca JS de código aberto mantida e desenvolvida pelo Facebook em 2013, utilizada para criação de aplicações front-end. O React é considerado uma biblioteca pelo fato de ser uma coleção de funcionalidades relacionadas que podem ser chamadas pela pessoa desenvolvedora para executar algum código.<br/>
Ele possui diversas características que o tornam uma ótima opção para desenvolvimento web, por exemplo, a utilização de componentes é licenciado pelo MIT e é utilizado para criação das **Single Pages Applications**. Além disso, grandes empresas como Twitter, Airbnb e Facebook o utilizam em suas aplicações.
De forma resumida, o `React` é uma biblioteca do JS que permite construir UI dinâmicas através da manipulação do DOM. Ele altera o estado dos elementos na tela em tempo real, o que significa que, em uma UI construída com React, ao clicar em um botão que altera a cor de um texto por exemplo, isso é realizado sem a necessidade de recarregar a página para exibir o novo estado como seria usando somente CSS, neste caso a cor do elemento.<br/>
Além da alteração de estado, também é possível **componentizar os elementos**, que é a separação de cada parte da página web em componentes, que são basicamente funções, entre várias outras possibilidades que o React oferece. Aqui temos a estrutura básica de um documento HTML, que irá receber as funções de manipulação do DOM com React:
```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Teste</title>
  </head>
  <body>
    <div id="root"></div> <!--  -->
    <script type="module" src="index.tsx"></script>
  </body>
</html>
```

Este exemplo mostra como o React funciona:
```jsx
// importando para dentro do TRX os estilos e funções
import { createRoot } from "react-dom/client";
import { Timer } from "./components/Timer.tsx";
import { CounterButton } from "./components/CounterButton.tsx";
import "./style.scss";

function App() { /* ¹criamos uma função "componente" que contém a função com os dados que serão exibidos no HTML
é um OBRIGATÓRIO no React que a primeira letra de funções desse tipo seja MAIÚSCULA */
  return <>
    <h1>Olá React!</h1>
    <Timer title="Tempo"/>
    <CounterButton/>
  </>; /* essa tag vazia `<>...</>` é chamada de "fragment" e é usada para encapsular os demais elementos que serão retornados para o documento
  pois uma função não pode retornar mais de 1 dado, somente 1 por vez  */
}

const root = document.getElementById("root"); // ²onde usaremos o elemento obtido no documento através do id `root`
createRoot(root!).render(<App/>); /* ³em seguida construímos a função para renderizar o que será executado dentro da função componente `App()`
passando como argumento o `root` que definimos acima
e o renderizador `render()` usará o nome da função componente para criar uma `tag` que a represente no documento */
```

Como podemos ver, um componente é uma função encapsulada em uma tag, por exemplo `<App/>`, que contém tudo o que será renderizado na div `root` no HTML, que é todo o conteúdo dentro da função `App()` no React. Vejamos outros exemplos de componentes:
```jsx
import { useState, useEffect } from "react";

// esse código exporta a função Timer
export function Timer(props: { title: string }) {
  const [counter, setCounter] = useState(0); /* o `useState` é um HOOK
  um HOOK são funções prontas que podem ser aproveitadas para fazer algum tipo de modificação no documento
  no caso de `useState`, é possível a criação de um estado que pode ser alterado dinâmicamente sem que a página seja recarregada*/

  useEffect(() => { /* no caso de `useEffect()`, representa os "efeitos colaterais" que uma página sofre
  ele é executado sempre que um componente é renderizado
  por exemplo, quando o componente Timer é renderizado na tela, todas as intruções em `useEffect()` são executadas */
    let i = 0;
    const timer = setInterval(() => {
      setCounter(++i);
    }, 1000);

  // e a resposta é o valor zerado e o contador iniciado sempre que a página é carregada
    return () => { clearInterval(timer); };
  }, []);
  return <p>{props.title}: {counter}</p>;
}
```

Outro exemplo de componentização no React:
```jsx
import { useState } from "react";

export function CounterButton() { // este outro componente está exportando a função `counterButton()`
  const [timesClicked, setTimesClicked] = useState(0);

  // a qual sempre que o botão é clicado, retorna o valor atualizado da contagem
  return <button
    onClick={() => {
      setTimesClicked(i => i + 1);
    }}>
    Clicou {timesClicked} {timesClicked === 1 ? "vez" : "vezes"}
  </button>;
}
```

O React pode ser utilizado *"puro"*, ou com outras ferramentas de construção, como o framework **Next.JS** ou o **React Native** para construção de aplicativos móveis.

### REACT NATIVE
Com a popularidade dos dispositivos mobile, o Facebook viu a neceissdade de criar aplicações híbridas que mantivem a performance de aplicativos Android e iOS, então utilizando o React como base, o Facebook criou uma estrutura que transforma o mesmo código em código nativo Android e iOS, e assim nasceu o React Native em 2015. Este é um framework para desenvolvimento de aplicativos móveis, que agiliza todo o processo de desenvolvimento e possibilita a criação de aplicações multiplataforma, ou seja, aplicações que vão funcionar tanto em sistemas iOS como no Android, tudo isso apenas com JavaScript. Algumas características marcantes do React Native que o tornam uma boa opção para desenvolvimento mobile são o uso de recursos nativos, a modularização com uso de componentes e o ponto que mais influencia na sua escolha é a vantagem de usar uma única linguagem e código base para desenvolver para sistemas mutiplataformas.<br/>
A maior diferença entre React e React Native é que não é possível utilizar elementos do DOM no React Native, para ele é necessário utilizar componentes específicos nativos como uma `View` que é referente a uma `div`, ou um `Text` que é referente a um `p`, entre outros exemplos. Mas no geral, o código para ambos é o mesmo.
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

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_css_bootstrap_tailwind.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/typescript.md">next</a>