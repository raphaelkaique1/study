# REACT
 O `React` é uma biblioteca do JS que permite construir UI dinâmicas através da manipulação do DOM. Ele altera o estado dos elementos na tela em tempo real, o que significa que, em uma UI construída com React, ao cliar em um botão que altera a cor de um texto por exemplo, isso é realizado sem a necessidade de recarregar a página para exibir o novo estado como seria usando somente CSS, neste caso a cor do elemento.<br/>
 Além da alteração de estado, também é possível **componentizar os elementos**, que é a separação de cada parte da página web em componentes, que são basicamente funções, entre várias outras possibilidades que o React oferece. Vejamos um exemplo de código em React:

 Aqui temos a estrutura básica de um documento HTML, que irá receber as funções de manipulação do DOM com React:
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

 Este exemplo em JS mostra como o React funciona:
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

```jsx
import { useState } from "react";

export function CounterButton() { // este outro componente está exportando a função `coutnerButton()`
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

<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/sintaxe_e_funcionalidades_ecmascript.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#javascript">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/assincronismo_promises_async_await.md">next</a>