# DESENVOLVIMENTO FRONT END
 O desenvolvimento *front-end tem como foco de trabalho a tradução do design e das funcionalidades propostas para uma* **interface de usuário (GUI - Graphic User Interface)** concentrando-se no manuseio de **[HTML]()**, **[CSS]()** e **[JAVASCRIPT]()** (geralmente são as linguagens mais utilizadas para este fim). Para isso, usasse uma série de *bibliotecas*, *frameworks* e *padrões de design* criados e testados pela comunidade, com os quais é possível trabalhar de forma eficiente.<br/>
 O objetivo principal do desenvolvedor front-end está relacionado à otimização dos recursos consumidos por uma aplicação, através do servidor. Um exemplo disso é o *tempo de carga (carregamento de "tela")*. Quanto menor o tempo de carga, melhor será a experiência do usuário. Meio segundo de tempo de carregamento de página pode afetar significativamente a conversão do usuário. Portanto, o tempo é essencial para qualquer website. Ninguém gosta de esperar, especialmente os usuários que estão cada vez mais acostumados à velocidade. O desenvolvedor do front-end é responsável por melhorar os tempos de carregamento, assim melhorando a experiência do usuário e, por fim, como objetivo final obter mais leads ou vendas.<br/>
 A manutenção e escrita de códigos em tecnologias HTML e CSS pode ser um desafio por não serem muito dinâmicas. Não possuem ciclos, funções, objetos ou condições. Resumindo, todas as ferramentas disponíveis em outras linguagens de programação para a criação de código de manutenção não estão existem nessas tecnologias. Entretanto, ainda é possível graças à ajuda de processadores de CSS como *Stylus*, *LESS* ou *SASS*, o que pode ampliar as capacidades do CSS. Enquanto que, para HTML, há motores disponíveis para cada linguagem back-end. Ao trabalhar com frameworks, verá que já possuem motores de renderização predefinidos, como *ERB* e *HAML* (em *RAILS*), *JADE* e *ectjs* (em *NodeJS*) ou *Blade* (em *Laravel*). Isto faz com que os motores funcionem adicionando o código da linguagem ao modelo. *Quando uma solicitação chega ao servidor, este processa o template, transforma o código incorporado (HTML puro) e o envia para o navegador.* Além disso, também estão inclusas algumas ferramentas no JavaScript como *Backbone, AngularJS, Foundation e EmberJS* que facilitam a criação de páginas responsívas e otimizadas.<br/>
 Na programação web uma coisa é constante: não é fácil criar páginas capazes de parecer "bem" em todos os tipos de navegadores. Este é um ponto delicado para qualquer um que tenha que lidar com tal tarefa. A ideia é *não perder tráfego*, mesmo se for utilizado o *Internet Explorer 7*, especialmente se o serviço ou produto estiver focado em um público que utiliza esse navegador em particular. Para resolver este problema, existem scripts chamados *Polyfils*, que adicionam as capacidades de um navegador moderno usando JavaScript. Como nos navegadores, há uma infinidade de **telas**: smartphones, desktops, notebooks, tablets, smart tvs, e etc. Mesmo dentro do campo dos smartphones, são numerosas as variantes dependendo do dispositivo e da marca. O desenvolvedor front-end está encarregador de fazer o site funcionar para a maioria das telas.

## DESENVOLVIMENTO WEB
 Para começarmos, precisamos deixar claro que: *Internet* e *Web (World Wide Web)* **não são a mesma coisa**. A Internet é a estrutura (rede) que conecta os dipositivos uns aos outros, a fim de estabelecer uma ponte para a counicação entre seus usuários; já a Web é a plataforma onde as aplicações (websites) podem ser acessadas e usadas. Um *website* é um *site (localização)* na **World Wide Web** que contém documentos, ou *páginas web* hierarquicamente organizadas. Cada documento pode conter textos, imagens, gráficos e etc, que aparecem como informações digitais em uma tela. Cada website tem uma **Home Page**, *que é o primeiro documento que o usuário vê ao entrar no website* digitando o nome de domínio no navegador. O termo *página web* é às vezes usado equivocadamente para se referir a um website. Uma **Página Web** *é parte de um website e é um único arquivo com um nome atribuído*, enquanto um **WebSite** *é uma coleção de arquivos chamada Páginas Web*. Se o compararmos a um livro, um *website* seria o livro inteiro, e uma *página web* seria um capítulo; seria um capítulo e não uma página do livro porque muitas vezes é necessário percorrer a tela para ver todo o conteúdo de uma página web, assim como em um livro percorremos várias páginas para ver todo o conteúdo de um capítulo.<br/>
 Uma *página web*, também conhecida como *página da Internet*, é um documento adapatado para a web e geralmente faz parte de um website, Sua principal característica são os *hyperlinks* para outras páginas, que é a base da web. Dentro de uma página web, podemos encontrar todo tipo de conteúdo. Uma das divisões que podemos fazer entre todos os tipos de páginas web existentes poderia ser a diferença entre *páginas estáticas* e *páginas dinâmicas*.<br/>
 Para entender a comunicação mais básica que ocorre na internet, devemos saber que ela envolve um **servidor web**, como *ISS*, *Apache* ou *NGINX*, que contém os arquivos HTML, CSS e JavaScript das páginas web; e um cliente, neste caso o navegador (*Chrome, Firefox, Edge* e etc). O servidor web e o cliente comunicam-se via **HTTPS (Hypertext Transfer Protocol Secure)**, que *é um conjunto de regras que permitem a transferência de informações via arquivos na Internet*. A comunicação entre eles começa quando o usuário, através do navegador, entra no *endereço de um website* (conhecido como **url** - Uniform Resource Locator), gerando uma solicitação ao servidor web onde a página está hospedada (via HTTPS) para encontrar os arquivos dela. O servidor web então responde à solicitação e retorna os arquivos do site (resposta HTTPS). A resposta chega ao navegador como uma cópia HTML da página web, e é neste ponto que o usuário pode vê-la em sua tela.


#### ESTÁTICO x DINÂMICO
 Quando se trata de desenvolver um website, a primeira coisa a considerar é *como será construído, como um site **dinâmico** ou **estático***.<br/>
 Uma **página web estática** *está focada principalmente na exibição de informações permanentes*, onde o usuário se limita a somente visualizar essas informações, sem poder interagir com a página em questão. Este usuário só pode interagir com a página estática através dos elementos permitidos, como clicar em links e botões, ou preencher formulários. Quando falamos em "estática", podemos também dizer que a página web tem um número fixo de páginas, ou seja, da forma como foi projetada e armazenada no servidor web, ela é recebida pelo navegador e vista pelo usuário como um número fixo de páginas HTML. Podemos dizer que sites estáticos não armazenam informações externas, somente aquelas contidas no seu código fonte (armazenadas no servidor). Sites estáticos não são tão complexos tecnicamente quanto sites dinâmicos, além de também não são tão versáteis e eficazes quando de trata de oferecer funcionalidades. Simplificando, em um website estático, veremos as mesmas informações, layout e conteúdo sempre que o visitarmos, a menos que alguém aplique mudanças no código fonte manualmente. Um website estático possui algumas vantagens devido sua natureza estática, a complexidade e o tempo de desenvolvimento são menores, por que não requerem o uso de multiplas linguagens de programação ou de um banco de dados, e, por isso seu custo de desenvolvimento e implantação são baixos; por conta dessa característica "simplista", possuem um *tempo de carregamento extremamente rápido*, pois são *pré-construídos* e não possuem scripts complexos que levam tempo para executar ações, ainda mais com o advento do *Jamstack* como gerador de sites estáticos focado em desempenho e velocidade, incuindo o *Jekyll*, *GatsbyJS SSG*, *Eleventy*, *Headless CMS*, *Netlify CMS*, *Siteleaf CMS* e *Forestry CMS*. Além disso, é importante incorporar a *CDN (Content Delivery Network)* para gerenciar recursos de multimídia; ela pode gerar um aumento no custo de carregamento de uma página estática dependendo de suas características.
 Um **site dinâmico** *é aquele que contém aplicações dentro do próprio site, proporcionando maior interatividade com o navegante*. Exemplos de aplicações dinâmicas são pesquisas e votações, fóruns de suporte, livros de visitas, envio de e-mails, reservas de produtos, pedidos online, e etc. *É importante não confundir multimídia e interatividade com páginas dinâmicas.* Uma página web estática pode conter vários tipos de mídia e interativa através de links e hyperlinks, sem ser dinâmica em si. Já em páginas dinâmicas, o conteúdo é normalmente gerado no momento da visualização e pode, portanto, variar; enquanto páginas estáticas o conteúdo é normalmente predeterminado. As páginas web dinâmicas são interativas e funcionais, ao invés de simplesmente informativas. Naturalmente, isto requer mais do que apenas código HTML e CSS. Os sites dinâmicos baseiam seu comportamento e funcionalidadesem 2 tipos de programação: *front-end (lado do cliente - faz requisições)* e *back-end (lado do servidor - responde às requisições)*. As instruções do lado do cliente são códigos JavaScript, que são executados no navegador. Instruções do lado do servidor são escritas em linguagens de script, tais como ASP.Net, PHP, Python, entre outras, que são executadas para criar o que o usuário solicitou em sua interação com a página. Uma vez que as instruções tenham sido executadas no servidor, uma nova resposta HTTPS é devolvida ao navegador, exibindo ao usuário o que foi solicitado. O resultado final é o mesmo que em um site estático: uma página HTML que o usuário vê do navegador. *O importante nessa classificação entre dinâmica e estática é que, uma página web estática não pode ser modificada pelo usuário, enquanto que a dinâmica sim e armazena estes dados alterados.* Entre as vantagens de um site dinâmico, está a possibilidade de que ele pode gerenciar informações através de banco de dados. Isto permite ao usuário solicitar facilmente informações de forma organizada e estruturada dentro de uma tabéla ou catálogo, assim como criar e exibir conteúdo de acordo com o tipo de usuário que acessa a página; além de que, seu conteúdo pode ser gerenciado através de um *CMS (Content Management System - software que permite criar, editar, organizar e publicar conteúdo digital)*. O conteúdo armazenado no CMS pode incluir uma variedade de arquivos, desde texto às imagens exibidas, layouts da página, configurações do site e muito mais. Isto permite flexibilidade ao criar o site, e também, que vários usuários manipulem o conteúdo conforme necessário, fazendo com que se tenha um custo de manutenção menor do que seria em alterar o conteúdo em uma página estática por exemplo. Como as informações podem ser gerenciadas através de um CMS, há pouco ou nenhum custo quando se trata de manutenção dessas informações. Em contra partida, por conta de tantas funcionalidades, seu desenvolvimento e implementação podem possuir um alto custo. Além do custo do desenvolvimento da aplicação, há o custo do desenvolvimento do banco de dados onde o conteúdo a ser exibido será armazenado. O dsesenvolvimento pode aumentar seu custo ainda mais a medida que novas funcionalidades são adicionadas. Embora os custos de manutenção possam ser menores, este custo de desenvolvimento inicial é algo a se considerar durante a elaboração do projeto e definição do escopo de acordo com a necessidade. Também podem haver limitações técnicas no projeto. Há depender da arquitetura escolhida, como o conteúdo é baseado principalmente nas informações contidas no banco de dados e a apresentação ao usuário é baseada na estrutura do banco, isto pode tornar o projeto "engessado" complicando a criação de livre vontade, pois é mais fácil optar por uma única abordagem para todas as páginas. Dependendop do CMS, pode ser difícil criar vários layouts ou modelos que permitam que diferentes tispo de conteúdo sejam exibidos de diferentes maneiras.

#### EXTENSÕES
 Como já visto, páginas web são documentos, e, como tal, geralmente têm uma extensão que nos dá uma ideia do tipo de conteúdo que o documento contém. As extensões mais comuns que podemos encontrar são:

 - **HTML & MARKDOWN**<br/>
 Esta é geralmente a extensão padrão para páginas web estáticas, compostas por conteúdo HTML.
 - **ASP (Active Server Pages)**<br/>
 São páginas dinâmicas geradas quando são visitadas, escritas em uma linguagem de programação similiar à Visual Basic da Microsoft.
 - **JSP (Java Server Pages)**<br/>
 Páginas dinâmicas como as anteriores, mas são escritas em Java.
 - **PHP (Personal Home Page)**<br/>
 Páginas dinâmicas escritas com uma linguagem de uso geral a ser embutida junto com o código HTML, totalmente diferente de Java ou Visual Basic.

_*Embora todos os documentos com estas extensões sejam páginas web, apenas **HTML** e **MARKDOWN** são páginas web estáticas, e portanto, as únicas que podem ser visualizadas diretamente no navegador (por serem renderizadas no lado do cliente). As demais para que sejam exibidas devem estar contidas em um servidor (por serem renderizadas no lado do servidor e só existirem quando são requisitadas)._

### HTML
 A origem do HTML data de 1980, quando o físico Tim Berners-Lee, um trabalhador do CERN (Organização Européia de Pesquisa Nuclear), propôs um novo sistema de *"hipertexto"* para compartilhar documentos.<br/>
 **HyperText Markup Language**, é uma "linguagem" composta de *etiquetas*, com as quais dizemos ao programa para (e como) nos mostrar textos, imagens, vídeos e etc.<br/>
 O HTML não é uma linguagem de programação em si, embora às vezes seja referido coloquialmente como uma linguagem de programação, é composto simplesmente por uma série de **tags** que o navegador interpreta de uma forma ou de outra para exibir e moldar conteúdos diferentes na tela.<br/>
 HTML é a linguagem utilizada para o desenvolvimento de páginas na Internet, e possui tags para imagens, hiperlinks, quebras de linha, listas, tabelas e etc.<br/>
 Classicamente, diz-se que as linguagens de programação incluem 3 capacidades básicas para gerar fluxos de processo:
 
 1. **sequencial**: capacidade de executar sequências de instruções;
 2. **condicional**: capacidade de tomar decisões ou executar um ou outro processo dependendo do valor de um ou mais parâmetros;
 3. **repetição**: capacidade de repetir um processo um certo número de vezes.

 Linguagens clássicas como C, C++, C#, Visual Basic, Fortran, e etc, tem estas capacidades, o HTML não; mas não porque é melhor ou pior, mas porque é algo diferente.<br/>
 Em resumo, poderíamos dizer que o HTML não é uma linguagem de programação, mas sim uma linguagem de *layout web* ou *linguagem de tags destinada a criar estuturas de documentos HTML*. Ou seja, é usado para criar páginas web, dando-lhes estrutura e conteúdo.<br/>
 O padrão atual do HTML consiste em ser utilizado juntamente com outra 2 linguagens como se fossem 1:
 - 🦴 **ESQUELETO** 💀<br/>
 Com o *HTML5*, fazemos o "esqueleto" da nossa página, dando estrutura para a montagem do restante a partir da disposição inicial dos títulos, parágrafos, imagens e etc.
 - 🕶️ **ATRIBUTOS** 🧢<br/>
 Com o *CSS3*, damos "aparência" à página, como o padrão de cores, estilos de fontes e etc.
 - 🧠 **PERFORMANCE** 💪<br/>
 Com o *JavaScript*, fornecemos a interatividade e animação, sendo o "músculo motor" que faz as coisas "terem vida" no site.

#### WEB SEMÂNTICA
 A programação em HTML tem muitos elementos diferentes, estes elementos podem ser encontrados em 2 tipos principais:

 - **ELEMENTOS SEMÂNTICOS**: São elementos que por seu próprio nome definem qual seu *propósito específico*. Portanto, quando os vemos em um arquivo HTML, sabemos para que eles são usados. Como por exemplo: `h1`, `h2`, `h3` e `p`. Todos eles são elementos semânticos, porque são usados para fins muito específicos. Quando vemos um elemento `h1`, sabemos que o que está entre ele é um *título*, desta forma, só de olhar para nosso HTML, podemos dizer que há um cabeçalho e parágrafos (conteúdo contido dentro dos elementos `p`). Podem ser usados junto com **atributos**.
 - **ELEMENTOS GENÉRICOS**: Elementos para qualquer tipo de uso. Como exemplo, um dos elementos genéricos chamado `div`, que significa *divisão*, serve para dividir um documento em diferentes partes. Por tanto, se quisermos criar um *card* com uma imagem e informações, podemos fazer isso com o elemento `div`. O problema de utilizar estes elementos é que não são muito descritivos semanticamente falando. Não sabemos para que servem. Durante o desenvolvimento, sabemos que aquele elemento `div` que criamos serve para exibir *cards* na página, mas como identificar isso em uma manutenção futura? Podemos dar alguma semântica aos nossos elementos `div` usando **atributos**, para identificarmos facilmente seu propósito.

 **ATRIBUTOS**
 Permitem identificar ou associar elementos, além de adicionar mais semântica ao código, acrescentando informações ao item em que se encontra etiquetado. Alguns dos atributos mais importantes são o `id` e `class`. *A classe é um atributo que identifica múltiplos elementos, enquanto o id é uma identidade única para cada elemento.* Além destes, existem várious outros atributos que podem ser inseridos nas tags.

##### ESTRUTURA DE UMA PÁGINA WEB
 Um exemplo simples de código HTML poderia ser:
```html
<html>
    <body>
        <h1>Hello world!</h1>
        <p>Este é um parágrafo.</p>
    </body>
</html>
```
 Este trecho possui 4 tags. Como podemos ver, cada uma delas deve terminar com uma etiqueta de fechamento. Neste caso o `<html>` deve ser fechado com `</html>`, a etiqueta `<body>` com `</body>`, `<h1>` com `</h1>` e por fim a etiqueta `<p>` com `</p>`. Existem muito mais tags, e devemos ter em mente que, para cada tag que abrimos, devemos incluir a tag de fechamento correspondente (há exceções). Desta forma, obteremos um código HTML bem formatado, que os navegadores podem interpretar sem ambiguidade.<br/>
 O que aconteceria se uma etiqueta que abrimos não tivesse um fechamento? Digamos que seria um documento mal construído, e os navegadores podem interpretar isso de diferentes maneiras. Talvez eles exibam a página como esperado, sem nenhum erro aparente, talvez mostrem uma página de erro ou a página em branco. O objetivo do desenvolvedor front-end deve ser sempre construir páginas bem estruturadas e sem ambiguidades, ou seja, usar a linguagem corretamente para que os navegadores possam saber exatamente o que se pretende exibir.<br/>
 _*As etiquetas sem um par de fechamento são fechadas com uma sintaxe semelhante a estas: `<br/>` `<img/>`. Todas as tags contidas dentro do **head** não são "fechadas" com uma barra "/" no final, apenas as tags sem par de fechamento incluídas no body usam isto, somente a fim de evitar quebras no restante da página._<br/>
 Para se saber que a visualização será igual em todos os cenários, que navegadores devemos usar para testar nossas páginas web? ... Muito simples, **TODOS ELES**. Deve-se certificar de que o website possa ser visualizado corretamente em qualquer dispositivo. Um programador front-end deve sempre testar suas páginas em todos os dispositivos e navegadores possíveis, para garantir que os navegadores não interpretem a página de diferentes maneiras, ou seja, que sua exibição seja uniforme e padrão na maioria dos testes.

 - Os comentários em HTML possuem a seguinte sintáxe: `<!-- comentário -->`
 - Por convenção, a página principal de qualquer projeto web é normalmente chamada de **index.html**.

 Uma página HTML consiste a princípio de 2 partes distintas, o **head** e o **body**, nas quais as tags são distribuídas:
```html
╭⎼⎼<!DOCTYPE>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╮ <!DOCTYPE html>
|                       |
╰─⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╯
╭⎼⎼⎼<hmtl>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╮ <html lang="en">
| ╭⎼<head>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╮ |     <head>
| |                   | |         <title>webpage</title>
| ╰─</head>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╯ |     </head>
| ╭⎼<body>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╮ |     <body>
| |                   | |         <h1>Bem-vindo!</h1>
| ╰─</body>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╯ |     </body>
╰─⎼⎼</hmtl>⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼╯ </html>
```
###### ORGANIZAÇÃO DO HEAD
 O **head** *(cabeçalho da página)* contém os **metadados**, que são dados que o usuário não vê, mas que o *navegador* considera úteis; o *title* da página e possíveis *links* para páginas CSS ou JavaScript.<br/>
 A tabela a seguir mostra um resumo dos elementos que podem ir dentro da etiqueta *head*:

ETIQUETA   | FUNÇÃO                     | OBRIGATÓRIO
:---:      | :---:                      | :---:
\<meta>    | define os metadados        | <input type="checkbox" disabled/>
\<title>   | título do documento        | <input type="checkbox" disabled checked/>
\<link>    | vincula arquivos           | <input type="checkbox" disabled/>
\<base>    | define uma url base        | <input type="checkbox" disabled/>
\<script>  | delimita scripts incluídos | <input type="checkbox" disabled/>

 - Meta tags não possuem um par fechamento, elas servem para incluir informações que não são exibidar como parte da página, mas sim informar aos navegadores sobre características da página, tais como sua breve descrição e palavras-chave. Elas contém a etiqueta `name`, e o atributo *"description"* é essencial para os motores de busca, pois dá uma breve descrição sobre o assunto da página e ajuda a categorizá-la (substituindo o atributo *"keywords"*).
 - A tag `title` exibe o nome da página no campo de abas do navegador.
 - A ordem das tags é indiferente, exceto pela tag `link`, que, se existir, deve ser colocada idealmente logo após `title`. Tags `link` são usadas para indicar que o documento HTML está relacionado a outro arquivo ou recurso externo. Ele liga nossa página web com outras páginas externas, tais como CSS (*external CSS*), JavaScript e etc. Não possuem par de fechamento. Exemplo:

```html
<link rel="stylesheet" type="text/css" href="style.css">
```
 - A etiqueta `base` é usada para indicar a url base se houverem urls relativas na página. Por exemplo:

```html
<base href="https://www.site.com/" target="_blank">
```

 Isso faria com que, se escrevêssemos "logo.png" como caminho para uma imagem:

```html
<img src="images/logo.png" alt="logo"/>
```

 esse caminho seria intepretado como: `src="[base:{https://www.site.com/}]+[path:{images/logo.png}]"`

```html
<img src="https://www.site.com/images/logo.png"/>
```

- A tag `script` é usada para incluir código em linguagens de script dentro do documento. Em muitas páginas, o código está incluído no cabeçalho, pois os navegadores são capazes de reconhecer e interpretar com uma linguagem de programação.

- A tag `style` é usada para incluir estilos CSS diretamente na página HTML, chamamos isso de *Internal CSS*. _*Quando usada dentro de outra tag, se torna uma **etiqueta**, que também define estilos mas somente para o conteúdo dentro da tag em questão; isso é chamado de **inline CSS**._

 O exemplo a seguir mostra como seria uma implementação adequada do `head`:

```html
<head>
    <meta charset="utf-8">
    <meta name="description" content="raphaelkaique1's updated portifolio">
    <meta name="keywords" content="portifolio, fullstack, developer">
    <title>Raphael K. Dias Santos</title>
    <link rel="stylesheet" href="css/style.css">
    <base href="https://raphaelkaique1.github.io/raphaelkaique1/" target="_self">
    <script src="js/script.js" defer></script>
</head>
```

###### ORGANIZAÇÃO DO BODY
 A tag de fechamento do `head` é seguida pela de abertura do `body`. O `body` é o "corpo" da página onde introduzimos a parte vísivel ao usuário. No passado, a página era dividida em *células* com a tag `table`, mais tarde foi utilizada a `div`, que era chamada de *modelo box-container*. Hoje em dia usam-se as tags semânticas definidas para cada parte específica, o "padrão" atual segue o seguinte esquema básico:

```
┌───────────────────────────────┐
|           CABEÇALHO           |
└───────────────────────────────┘
┌───────────────────────────────┐
|       BARRA DE NAVEGAÇÃO      |
└───────────────────────────────┘
┌───────┐ ┌────────────────────┐
|SIDEBAR| |                    |
|       | |    MAIN CONTENT    |
| BARRA | |                    |
|       | | CONTEÚDO PRINCIPAL |
|LATERAL| |                    |
└───────┘ └────────────────────┘
┌───────────────────────────────┐
|       INFORMAÇÕES EXTRAS      |
└───────────────────────────────┘
```

 Essa distribuição é indicativa, qualquer elemento pode ser omitido ou movido de acordo com o projeto. _*Somente as tags **`head`** e **`body`** são obrigatórias_, porém, a inclusão de todos estes elementos melhora o posicionamento *SEO*. **Search Engine Optimization** é um conjunto de estratégias e técnicas usadas para melhorar a visibilidade de um site nos resultados orgânicos (não pagos) dos mecanismos de busca.<br/>
 `header`, `main` e `footer` podem ser aplicados em qualquer parte do documento, exemplo:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="raphaelkaique1's updated portfolio">
        <meta name="keywords" content="portfolio, fullstack, developer">
        <title>Raphael K. Dias Santos</title>
        <link rel="stylesheet" href="css/style.css">
        <base href="https://raphaelkaique1.github.io/raphaelkaique1/" target="_self">
        <script src="js/script.js" defer></script>
    </head>
    <body>
        <header>
            <hgroup>
                <h1>Raphael Kaíque Dias Santos</h1>
                <h2>Full Stack Software Developer</h2>
            </hgroup>
            <nav>
                <ul>
                    <li><a href="#about">About</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <section id="about">
                <h2>About Me</h2>
                <p>
                    Working in software development since 2020. Specialized in TypeScript and its ecosystem (JavaScript, Node.js, Express.js, Nest.js, React.js, Vue.js, Angular.js, Next.js, among others).
                </p>
                <p>
                    Experience in complex projects, with strong knowledge of databases, servers, APIs, systems integration and software architecture. Skilled in collaborative environments and agile methodologies, always seeking innovation and efficiency in processes with the objective of delivering scalable solutions in high-performance environments.
                </p>
            </section>

            <section id="projects">
                <h2>Projects</h2>
                <p>Check out my <a href="https://github.com/raphaelkaique1/" target="_blank">projects</a> on GitHub.</p>
            </section>

            <article>
                <h3>Learn more about Full Stack Development</h3>
                <p>Explore the fundamentals of a full-stack developer.</p>
                <a href="https://www.coursera.org/articles/full-stack-developer" target="_blank">Read more...</a>
            </article>
        </main>

        <footer>
            <section id="contact">
                <h3>Contact</h3>
                <p>raphaelkaiquediassantos1@gmail.com</p>
            </section>
            <p>&copy; 2025 Raphael K. Dias Santos. All rights reserved.</p>
        </footer>
    </body>
</html>
```
 Para melhorar ainda mais o SEO, utilizamos as tags `section` e `article`, que são usadas para agrupar partes do documento de acordo com sua relação com o conteúdo:
 - Usamos a tag `section` para *agrupar conteúdos similares*, indicando que o conteúdo dentro dela pertence a uma área ou parte específica da página.<br/>Normalmente, é recomendada a utilização de um título dentro de uma `section` para definir claramente o tópico daquela seção, isso melhora a estrutura e a hierarquia do conteúdo.<br/>Não se deve utilizar a tag `section` para agrupar elementos arbitrários ou partes que não têm um propósito semântico claro, por exemplo, usá-la apenas para estilizar ou agrupar blocos sem conteúdo temático específico não é recomendado.
 - A tag `article` representa um conteúdo independente, como um post de blog, uma notícia ou um comentário. É indicada para partes de conteúdo independente e autossuficiente, que podem ser reutilizadas, distribuídas ou lido *fora do contexto da página*, de forma autônoma (por exemplo, uma seção de publicações ou projetos).
 - Embora o `div` também agrupe elementos, ele não tem significado semântico. Ele é utilizado para fins de estruturação e estilização, mas não comunica o conteúdo de forma tão clara e eficiente.

 Então, a hierarquia de uma boa estrutura do `body` num documento html seria:
 <ol>
    <li>
        <strong><code>header</code>: Cabeçalho da página.</strong><br/>Contém os elementos de introdução da página. Geralmente, ele inclui:
        <ul>
            <li><strong>Logo ou nome do site/pessoa:</strong> Pode ser um título <code>h1</code> ou um logo em imagem.</li>
            <li><strong>Navegação principal:</strong> Links principais de navegação, como menu de navegação <code>nav</code>.</li>
            <li><strong>Informações introdutórias:</strong> Um slogan ou descrição curta do site, se necessário.</li>
        </ul>
    </li>
    <li>
        <strong><code>main</code>: Conteúdo principal da página.</strong><br/>Este conteúdo é o que o usuário busca ao acessar o site e deve ser distinto do conteúdo de navegação, cabeçalhos e rodapés. Dentro dele, pode-se usar a tag <code>section</code> para agrupar o conteúdo relacionado e a tag <code>article</code> para separar partes independentes que têm seu próprio significado.
        <ul>
            <li style="list-style-type: none"><span>2.1.</span>
                <strong><code>section</code>: Agrupamento de conteúdo relacionado.</strong><br/>Pode ser usado para dividir o conteúdo em blocos temáticos. Dentro de cada <code>section</code>, podemos incluir:
                <ul>
                    <li><strong>Subtítulos:</strong> Para organizar o conteúdo de forma hierárquica.</li>
                    <li><strong>Parágrafos:</strong> Para o conteúdo textual.</li>
                    <li><strong>Imagens:</strong> Imagens relevantes para a seção.</li>
                    <li><strong>Links:</strong> Links internos ou externos relevantes para a seção.</li>
                </ul>
            </li>
            <li style="list-style-type: none"><span>2.2.</span>
                <strong><code>article</code>: Agrupamento de conteúdo independente.</strong><br/>Utilizado para conteúdos que são autossuficientes e podem ser distribuídos ou lidos fora do contexto da página. Dentro dele podemos ter:
                <ul>
                    <li><strong>Subtítulos</strong>: Para informar do que se trata o conteúdo.</li>
                    <li><strong>Parágrafos</strong>: Para o conteúdo textual.</li>
                    <li><strong>Imagens</strong>: Imagens relevantes.</li>
                    <li><strong>Links</strong>: Links internos ou externos relevantes para a informação.</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <strong><code>footer</code>: Geralmente contém informações adicionais que são relevantes, mas não essenciais para o conteúdo principal da página.</strong><br/>Nele podemos ver:<br/>
        <ul>
            <li style="list-style-type: none"><span>3.1.</span>
                <strong><code>section</code>: Informações de contato e redes sociais.</strong> Um <code>section</code> dentro do <code>footer</code> pode ser usado para agrupar links para <strong>informações de contato</strong> ou <strong>redes sociais</strong>.
            </li>
            <li style="list-style-type: none">
                <span>3.2.</span><strong><code>article</code>: Informações extras não tão relevantes.</strong> Embora não seja necessário, você pode usar um <code>article</code> no rodapé para incluir conteúdo adicional que seja informativo, mas não essencial.
            </li>
            <li style="list-style-type: none"><span> 3.3. </span><strong>Informações legais de direitos autorais.</strong> No final do rodapé, é comum incluir as informações legais, como direitos autorais e políticas de privacidade, que são informativas, mas não são consideradas parte do conteúdo principal.</li>
        </ul>
    </li>
 </ol>


###### FORMATOS DE TEXTO
 Quando trabalhamos com texto em HTML, temos uma série de tags que escrevemos em torno da palavra ou texto que o transformam, dando o formato que desejamos.<br/>
 **Porém, atualmente este método e suas tags são depreciados e não devem ser usados.**<br/>
 Devido ao seu amplo uso no passado, é útil saber quais eram os usos tradicionais dessas tags, porém, hoje em dias elas foram substituídas pelos estilos CSS. No entanto, ainda estão disponíveis.

TAG                     | USO         | DEMONSTRAÇÃO          | PODE SER SUBSTITUÍDO POR CSS?
:---:                   | :---:       | :---:                 | :---:
\<b>text\</b>           | negrito     | <b>text</b>           | <input type="checkbox" disabled checked/>
\<strong>text\</strong> | ênfase      | <strong>text</strong> | <input type="checkbox" disabled checked/>
\<i>text\</i>           | itálico     | <i>text</i>           | <input type="checkbox" disabled checked/>
\<em>text\</em>         | relevância  | <em>text</em>         | <input type="checkbox" disabled checked/>
\<strike>text\</strike> | riscado     | <strike>text</strike> | <input type="checkbox" disabled checked/>
\<s>text\</s>           | removido    | <s>text</s>           | <input type="checkbox" disabled checked/>
\<del>text\</del>       | deletado    | <del>text</del>       | <input type="checkbox" disabled checked/>
\<u>text\</u>           | sublinhado  | <u>text</u>           | <input type="checkbox" disabled checked/>
\<small>text\</small>   | menor       | <small>text</small>   | <input type="checkbox" disabled checked/>
\<big>text\</big>       | maior       | <big>text</big>       | <input type="checkbox" disabled checked/>
\<sub>text\</sub>       | subescrito  | <sub>text</sub>       | <input type="checkbox" disabled checked/>
\<sup>text\</sup>       | sobrescrito | <sup>text</sup>       | <input type="checkbox" disabled checked/>

###### CABEÇALHO
 As tags `<h></h>` são usadas para títulos, variando hierarquicamente em ordem de importância de `h1` a `h6`. Não apenas mudam o tamanho do texto, mas, os motores de busca também dão importância a essas tags. Os próprios cabeçalhos geram uma quebra de linha.<br/>
 *Recomenda-se que haja apenas uma tag `h1` por página, pois para fins de SEO, o mecanismo de busca sempre procurará pelo título.*<br/>
 *Quando temos vários títulos de `h`, os agrupamos com a tag `<hgroup></hgroup>`.*

###### PARÁGRAFO
 Para informar ao navegador que ele exiba um texto em um parágrafo, deve-se escrevê-lo entre as tags `<p>texto do parágrafo</p>`, com o texto separado por uma margem em branco acima e abaixo.
 > Podemos usar uma linha horizontal de tamanho e expessura que determinarmos no CSS, escrevemos esta separação com a tag `<hr/>`, para separar um parágrafo do outro, ou também, utilizar a tag `<br/>` para saltar uma linha.

###### FORMATAÇÃO
 A tag `pre` significa *"texto pré formatado"*, e permite que o navegador interprete o texto escrito da forma em que está no documento, respeitando as quebras de linha, espaços e etc.<br/>
 *Na ausência da tag `pre`, o navegador não leva em conta que o código fonte contém quebras de linha, espaços em branco e etc no texto.*<br/>
 script:
```html
<p> Este parágrafo contém
    espaços em branco    e também
    quebras de linha, porém      o navegador irá exibí-lo com a formatação padrão.
</p>
<pre>
    Este parágrafo contém
    espaços em branco    e também
    quebras de linha, e,      o navegador irá exibí-lo com a formatação do documento.
</pre>
```
 output:
<hr/>
<p> Este parágrafo contém
    espaços em branco    e também
    quebras de linha, porém      o navegador irá exibí-lo com a formatação padrão.
</p>
<pre>
    Este parágrafo contém
    espaços em branco    e também
    quebras de linha, e,      o navegador irá exibí-lo com a formatação do documento.
</pre>
<hr/>

###### <span id="marcador">HYPERLINKS</span>
 *Links* ou *Hyperlinks*, são textos ou objetos sobre os quais podemos clicar para nos levar para outra parte do documento, outra página do mesmo site ou mesmo para outro site na Internet, entre outras funções.

 **LINKS INTERNOS**<br/>
 **Links internos** *são links dentro da mesma página, que, ao clicar em um deles, seremos levados a uma posição diferente dentro da mesma página.*<br/>
 O código dos marcadores é criado com o atributo **`id`**. Tanto o `name` quanto o `id` para uma tag específica devem ser únicos, ou seja, não podem haver 2 tags com o mesmo `name` ou `id` dentro de um documento.
 **Para criar este tipo de ligação, 2 operações devem ser realizadas**:
 - Estabelecer *marcadores*, chamados de *âncoras*, ao longo da página, que serão os locais para os quais saltaremos com os links.
 - Adicionar os links direcionando para os marcadores.
```html
<p id="marcador">
    Ao clicar no link, a visualização da tela será trazida para cá.
<p>
    <>
        ...
    </>
<a href="#marcador">retornar</a>
```
<a href="#marcador">click here</a>

**LINKS EXTERNOS**<br/>
 Um **hyperlink externo** *é um link para outro site na Internet (site externo), ou seja, é uma "ligação" para qualquer outro lugar fora do site atual.*<br/>
 Quando colocamos um link externo, digitamos o endereço completo, incluindo `https://www...`; estas rotas que incluem `https://www...` são chamadas de **rotas absolutas**.<br/>
 No hyperlink, distinguimos as seguintes partes:
 - Abertura e fechamento da tag de hyperlink `<a>...</a>`.
 - O atributo `href="https://url.domain"` contendo a url do endereço desejado.
 - Um texto descritivo ao usuário.

```html
<a href="https://raphaelkaique1.github.io/raphaelkaique1">ir para esta página</a>
```

**ATRIBUTO `target`**<br/>
 Quando criamos um link, por padrão o navegador abrirá a página de destino na mesma janela, mas é possível solicitar ao navegador que abra "à parte", numa nova aba. Isto é útil, por exemplo, se quisermos abrir uma página externa ao nosso site, mas sem que o visitante perca a nossa. Para isso, usamos o atributo `target` com uma das seguintes opções:
 - `_blank`: Abre o documento vinculado em uma nova aba do navegador.
 - `_self`: Esta é a opção padrão. Abre o documento vinculado na mesma aba em que o link foi clicado.

**ATRIBUTO `title`**<br/>
É aconselhável colocar este atributo extra toda vez que colocamos um hyperlink como boa prática semântica (melhorando o SEO). Desta forma, obteremos na maioria dos navegadores um efeito *tooltip*, que é uma informação adicional que surge ao posicionar o cursor sobre o link.

```html
<a href="https://raphaelkaique1.github.io/raphaelkaique1" title="portifólio de projetos de raphaelkaique1" target="_blank">portifolio ↗</a>
```
<a href="https://raphaelkaique1.github.io/raphaelkaique1" title="portifólio de projetos de raphaelkaique1" target="_blank">portifolio ↗</a>

**IMAGENS COMO LINKS**<br/>
 Para colocar uma imagem como um link, basta criar um link e adicionar uma imagem dentro dele. Exemplo:
```html
<a href="https://github.com/raphaelkaique1"><img src="https://avatars.githubusercontent.com/u/182110258?v=4" alt="Fulltechware Logo"></a>
```
<a href="https://github.com/fulltechware/" title="Fulltechware's github profile" target="_blank"><img width="150rem" src="https://avatars.githubusercontent.com/u/182110258?v=4" alt="Fulltechware Logo"></a>

###### LISTAS
 **_*Podemos combinar todos os tipos de listas que veremos a seguir uns com os outros, a depender da necessidade; <u>mas sempre pensando no SEO</u>._**<br/>
 Listas nos permitem criar conjuntos de elementos ordenados em uma página, todos geralmente precedidos por simbolos ou números em sequência. Os tipos de listas são os seguintes:
 - Listas desordenadas
 - Listas ordenadas
 - Listas de definição

**LISTAS NÃO ORDENADAS**<br/>
 Para este tipo de lista usa-se a tag `ul` (*unordered list*); para acrescentar um item deve-se usar a tag `li` (*list item*).<br/>
 Mesmo se não indicarmos nada na etiqueta `li`, o marcador de item de lista será gerado automaticamente.<br/>
 *Por padrão, as listas não ordenadas são compostas de pontos.* **Mas se quisermos podemos definir o símbolos de marcação.**<br/>
 No passado, usava-se o atributo `type`, porém este método está depreciado, sendo substituído por outro métodos usando CSS.

```html
<ul>
    <li>Primeiro item.</li>
    <li>Segundo item.</li>
    <li>Terceiro item.</li>
</ul>
```
<ul>
    <li>Primeiro item.</li>
    <li>Segundo item.</li>
    <li>Terceiro item.</li>
</ul>
 
**LISTAS ORDENADAS**<br/>
 Para definirmos uma lista ordenada, usamos a tag `ol` (*ordened list*), onde cada elemento da lista será escrito com a mesma tag que para as listas não ordenadas, ou seja, a tag `li`.<br/>
 *Mas como são listas ordenadas, os símbolos padrão serão números, e estes serão gerados automaticamente em ordem a medida que são adicionados novos itens à lista.*<br/>
 No passado, usava-se o atributo `value` para definir o número para um item, mas este método não é mais utilizado e nem recomendado, caso queira realizar uma lista com valores personalizados, é melhor que se faça com uma lista não ordenada. Este atributo não aceita valores que não sejam números inteiros, caso contrário, ele irá truncar o valor ou seguir a ordem normal da lista.<br/>
 Somente por meio do CSS podemos mudar os tipos de números que nossa lista de pedidos nos motrará.

```html
<ol>
    <li>Primeiro item.</li>
    <li>Segundo item.</li>
    <li>Terceiro item.</li>
    <li value="10">Outro item usando atributo `value`</li>
</ol>
```
<ol>
    <li>Primeiro item.</li>
    <li>Segundo item.</li>
    <li>Terceiro item.</li>
    <li value="10">Outro item usando atributo `value`</li>
</ol>

**LISTAS DE DEFNIÇÃO**<br/>
 Este tipo de listas não é usado com frequência, mas iremos conhecê-lo para entendermos seu significado caso nos deparemos com este tipo de código em uma página we.<br/>
 Listas de definição são usadas quando queremos fazer uma enumeração do tipo *dicionário*, onde temos vários termos e suas definições.<br/>
 Estes termos e suas definições (ou descrições) podem ser colocados de várias maneiras dentro de uma página web, como texto simples, lista ordenada ou não ordenada.<br/>
 Para criar uma lista de definições, devemos usar as tags `dl`, `dt` e `dd`:
 1. **definition list**: A tag `dl` indica que contém uma lista de definições;
 2. **term definition**: A tag `dt` indica o termo que iremos definir.
 3. **description definition**: A tag `dd` nos diz que nela está a definição associada a um termo. Assim como em um dicionário, um termo pode ter várias descrições. Por exemplo, o termo *Autor* poderia ter vários nomes, por ter mais de um colaborador. *As listas de definição serão automaticamente separadas se digitarmos várias delas.*

```html
<dl>
    <dt>Café</dt>
    <dd>Geralmente servido quente.</dd>
    <dt>Suco</dt>
    <dd>Geralmente servido gelado.</dd>
</dl>
```
<dl>
    <dt>Café</dt>
    <dd>Geralmente servido quente.</dd>
    <dt>Suco</dt>
    <dd>Geralmente servido gelado.</dd>
</dl>

**TABELAS**
 As tabelas podem ser consideras como *um grupo de linhas, onde cada linha contém um grupo de células delimitadas por colunas*. Uma tabela pode ser inserida em um documento usando 3 elementos básicos:
 - **`table` estrutura de tabela**: 
 - **`tr` linhas**: 
 - **`td` células**: 

_*Quando o conteúdo de uma célula estiver vazio, deve-se usar um espaço em branco, que é escrito em HTML como: `&nbsp;`; isto fará com que sua página seja exibida corretamente, pois alguns navegadores tem problemas para renderizar células vazias._<br/>
Exemplo de uma tabela simples:
```html
<table>
    <tr>
        <td>Célula 1</td>
        <td>Célula 2</td>
        <td>Célula 3</td>
    </tr>
    <tr>
        <td>Célula 4</td>
        <td>&nbsp;</td>
        <td>Célula 6</td>
    </tr>
    <tr>
        <td>Célula 7</td>
        <td>Célula 8</td>
        <td>Célula 9</td>
    </tr>
</table>
```
<table border="1">
    <tr>
        <td>Célula 1</td>
        <td>Célula 2</td>
        <td>Célula 3</td>
    </tr>
    <tr>
        <td>Célula 4</td>
        <td>&nbsp;</td>
        <td>Célula 6</td>
    </tr>
    <tr>
        <td>Célula 7</td>
        <td>Célula 8</td>
        <td>Célula 9</td>
    </tr>
</table>

**UNIFICAÇÃO DE CÉLULAS**<br/>
 *Em algumas ocasiões, pode ser necessário fundir 2 ou mais células em uma única célula que tomará o lugar das células afetadas.*<br/>
 Essa unificação pode ser feita com os atributos:
 - **`rowspan`**: Unificação **vertical**; *define quantas linhas uma célula ocupará.*
 - **`colspan`**: Unificação **horizontal**; *define quantas colunas uma célula ocupará.*
```html
<table>
    <tr>
        <td>Célula 1</td>
        <td>Célula 2</td>
        <td>Célula 3</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">Células 4, 5 e 6</td>
    </tr>
    <tr>
        <td rowspan="2">Células 7 e 10</td>
        <td>Célula 8</td>
        <td>Célula 9</td>
    </tr>
    <tr>
        <td>Célula 11</td>
        <td>Célula 12</td>
    </tr>
</table>
```

<table border="1">
    <tr>
        <td>Célula 1</td>
        <td>Célula 2</td>
        <td>Célula 3</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">Células 4, 5 e 6</td>
    </tr>
    <tr>
        <td rowspan="2">Células 7 e 10</td>
        <td>Célula 8</td>
        <td>Célula 9</td>
    </tr>
    <tr>
        <td>Célula 11</td>
        <td>Célula 12</td>
    </tr>
</table>

_*Quando usados juntos na mesma tabela, desem ser cuidadosamente declarados para não produzir células sobrepostas._

**CÉLULAS DE CABEÇALHO**<br/>
 Há 2 tipos de tags que podem ser definidas em uma tabela, são tipos especiais que contém informações de cabeçalho para um conjunto específico de células, *servem para rotular a tabela*.<br/>
 Os navegadores normalmente representam o ceonteúdo de células especiais como texto centralizado em negrito.
 - **`th` table head**: *Usada para definir uma descrição para uma coluna.*
 - **`caption`** description: *Usada para definir um título para a tabela*; sua posição pode ser definida usando CSS. **Este elemento só é permitido se ele for logo após
a abertura da tabela.**




<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.1-fundamentos_da_web/protocolos_http_https.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_css_bootstrap_tailwind.md">next</a>