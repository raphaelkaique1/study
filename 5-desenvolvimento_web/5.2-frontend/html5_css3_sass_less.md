# DESENVOLVIMENTO FRONT END
 O desenvolvimento *front-end tem como foco de trabalho a tradução do design e das funcionalidades propostas para uma* **interface de usuário (GUI – Graphic User Interface)** concentrando-se no manuseio de **[HTML](#html)**, **[CSS](#css)** e **[JAVASCRIPT]()** (geralmente são as linguagens mais utilizadas para este fim). Para isso, usasse uma série de *bibliotecas*, *frameworks* e *padrões de design* criados e testados pela comunidade, com os quais é possível trabalhar de forma eficiente.<br/>
 O objetivo principal do desenvolvedor front-end está relacionado à otimização dos recursos consumidos por uma aplicação, através do servidor. Um exemplo disso é o *tempo de carga (carregamento de "tela")*. Quanto menor o tempo de carga, melhor será a experiência do usuário. Meio segundo de tempo de carregamento de página pode afetar significativamente a conversão do usuário. Portanto, o tempo é essencial para qualquer website. Ninguém gosta de esperar, especialmente os usuários que estão cada vez mais acostumados à velocidade. O desenvolvedor do front-end é responsável por melhorar os tempos de carregamento, assim melhorando a experiência do usuário e, por fim, como objetivo final obter mais leads ou vendas.<br/>
 A manutenção e escrita de códigos em tecnologias HTML e CSS pode ser um desafio por não serem muito dinâmicas. Não possuem ciclos, funções, objetos ou condições. Resumindo, todas as ferramentas disponíveis em outras linguagens de programação para a criação de código de manutenção não estão existem nessas tecnologias. Entretanto, ainda é possível graças à ajuda de processadores de CSS como *Stylus*, *LESS* ou *SASS*, o que pode ampliar as capacidades do CSS. Enquanto que, para HTML, há motores disponíveis para cada linguagem back-end. Ao trabalhar com frameworks, verá que já possuem motores de renderização predefinidos, como *ERB* e *HAML* (em *RAILS*), *JADE* e *ectjs* (em *NodeJS*) ou *Blade* (em *Laravel*). Isto faz com que os motores funcionem adicionando o código da linguagem ao modelo. *Quando uma solicitação chega ao servidor, este processa o template, transforma o código incorporado (HTML puro) e o envia para o navegador.* Além disso, também estão inclusas algumas ferramentas no JavaScript como *Backbone, AngularJS, Foundation e EmberJS* que facilitam a criação de páginas responsívas e otimizadas.<br/>
 Na programação web uma coisa é constante: não é fácil criar páginas capazes de parecer "bem" em todos os tipos de navegadores. Este é um ponto delicado para qualquer um que tenha que lidar com tal tarefa. A ideia é *não perder tráfego*, mesmo se for utilizado o *Internet Explorer 7*, especialmente se o serviço ou produto estiver focado em um público que utiliza esse navegador em particular. Para resolver este problema, existem scripts chamados *Polyfils*, que adicionam as capacidades de um navegador moderno usando JavaScript. Como nos navegadores, há uma infinidade de **telas**: smartphones, desktops, notebooks, tablets, smart tvs, e etc. Mesmo dentro do campo dos smartphones, são numerosas as variantes dependendo do dispositivo e da marca. O desenvolvedor front-end está encarregador de fazer o site funcionar para a maioria das telas.

## DESENVOLVIMENTO WEB
 Para começarmos, precisamos deixar claro que: *Internet* e *Web (World Wide Web)* **não são a mesma coisa**. A Internet é a estrutura (rede) que conecta os dipositivos uns aos outros, a fim de estabelecer uma ponte para a counicação entre seus usuários; já a Web é a plataforma onde as aplicações (websites) podem ser acessadas e usadas. Um *website* é um *site (localização)* na **World Wide Web** que contém documentos, ou *páginas web* hierarquicamente organizadas. Cada documento pode conter textos, imagens, gráficos e etc, que aparecem como informações digitais em uma tela. Cada website tem uma **Home Page**, *que é o primeiro documento que o usuário vê ao entrar no website* digitando o nome de domínio no navegador. O termo *página web* é às vezes usado equivocadamente para se referir a um website. Uma **Página Web** *é parte de um website e é um único arquivo com um nome atribuído*, enquanto um **WebSite** *é uma coleção de arquivos chamada Páginas Web*. Se o compararmos a um livro, um *website* seria o livro inteiro, e uma *página web* seria um capítulo; seria um capítulo e não uma página do livro porque muitas vezes é necessário percorrer a tela para ver todo o conteúdo de uma página web, assim como em um livro percorremos várias páginas para ver todo o conteúdo de um capítulo.<br/>
 Uma *página web*, também conhecida como *página da Internet*, é um documento adapatado para a web e geralmente faz parte de um website, Sua principal característica são os *hyperlinks* para outras páginas, que é a base da web. Dentro de uma página web, podemos encontrar todo tipo de conteúdo. Uma das divisões que podemos fazer entre todos os tipos de páginas web existentes poderia ser a diferença entre *páginas estáticas* e *páginas dinâmicas*.<br/>
 Para entender a comunicação mais básica que ocorre na internet, devemos saber que ela envolve um **servidor web**, como *ISS*, *Apache* ou *NGINX*, que contém os arquivos HTML, CSS e JavaScript das páginas web; e um cliente, neste caso o navegador (*Chrome, Firefox, Edge* e etc). O servidor web e o cliente comunicam-se via **HTTPS (Hypertext Transfer Protocol Secure)**, que *é um conjunto de regras que permitem a transferência de informações via arquivos na Internet*. A comunicação entre eles começa quando o usuário, através do navegador, entra no *endereço de um website* (conhecido como **url** – Uniform Resource Locator), gerando uma solicitação ao servidor web onde a página está hospedada (via HTTPS) para encontrar os arquivos dela. O servidor web então responde à solicitação e retorna os arquivos do site (resposta HTTPS). A resposta chega ao navegador como uma cópia HTML da página web, e é neste ponto que o usuário pode vê-la em sua tela.


#### ESTÁTICO x DINÂMICO
 Quando se trata de desenvolver um website, a primeira coisa a considerar é *como será construído, como um site **dinâmico** ou **estático***.<br/>
 Uma **página web estática** *está focada principalmente na exibição de informações permanentes*, onde o usuário se limita a somente visualizar essas informações, sem poder interagir com a página em questão. Este usuário só pode interagir com a página estática através dos elementos permitidos, como clicar em links e botões, ou preencher formulários. Quando falamos em "estática", podemos também dizer que a página web tem um número fixo de páginas, ou seja, da forma como foi projetada e armazenada no servidor web, ela é recebida pelo navegador e vista pelo usuário como um número fixo de páginas HTML. Podemos dizer que sites estáticos não armazenam informações externas, somente aquelas contidas no seu código fonte (armazenadas no servidor). Sites estáticos não são tão complexos tecnicamente quanto sites dinâmicos, além de também não são tão versáteis e eficazes quando de trata de oferecer funcionalidades. Simplificando, em um website estático, veremos as mesmas informações, layout e conteúdo sempre que o visitarmos, a menos que alguém aplique mudanças no código fonte manualmente. Um website estático possui algumas vantagens devido sua natureza estática, a complexidade e o tempo de desenvolvimento são menores, por que não requerem o uso de multiplas linguagens de programação ou de um banco de dados, e, por isso seu custo de desenvolvimento e implantação são baixos; por conta dessa característica "simplista", possuem um *tempo de carregamento extremamente rápido*, pois são *pré-construídos* e não possuem scripts complexos que levam tempo para executar ações, ainda mais com o advento do *Jamstack* como gerador de sites estáticos focado em desempenho e velocidade, incuindo o *Jekyll*, *GatsbyJS SSG*, *Eleventy*, *Headless CMS*, *Netlify CMS*, *Siteleaf CMS* e *Forestry CMS*. Além disso, é importante incorporar a *CDN (Content Delivery Network)* para gerenciar recursos de multimídia; ela pode gerar um aumento no custo de carregamento de uma página estática dependendo de suas características.
 Um **site dinâmico** *é aquele que contém aplicações dentro do próprio site, proporcionando maior interatividade com o navegante*. Exemplos de aplicações dinâmicas são pesquisas e votações, fóruns de suporte, livros de visitas, envio de e-mails, reservas de produtos, pedidos online, e etc. *É importante não confundir multimídia e interatividade com páginas dinâmicas.* Uma página web estática pode conter vários tipos de mídia e interativa através de links e hyperlinks, sem ser dinâmica em si. Já em páginas dinâmicas, o conteúdo é normalmente gerado no momento da visualização e pode, portanto, variar; enquanto páginas estáticas o conteúdo é normalmente predeterminado. As páginas web dinâmicas são interativas e funcionais, ao invés de simplesmente informativas. Naturalmente, isto requer mais do que apenas código HTML e CSS. Os sites dinâmicos baseiam seu comportamento e funcionalidadesem 2 tipos de programação: *front-end (lado do cliente – faz requisições)* e *back-end (lado do servidor – responde às requisições)*. As instruções do lado do cliente são códigos JavaScript, que são executados no navegador. Instruções do lado do servidor são escritas em linguagens de script, tais como ASP.Net, PHP, Python, entre outras, que são executadas para criar o que o usuário solicitou em sua interação com a página. Uma vez que as instruções tenham sido executadas no servidor, uma nova resposta HTTPS é devolvida ao navegador, exibindo ao usuário o que foi solicitado. O resultado final é o mesmo que em um site estático: uma página HTML que o usuário vê do navegador. *O importante nessa classificação entre dinâmica e estática é que, uma página web estática não pode ser modificada pelo usuário, enquanto que a dinâmica sim e armazena estes dados alterados.* Entre as vantagens de um site dinâmico, está a possibilidade de que ele pode gerenciar informações através de banco de dados. Isto permite ao usuário solicitar facilmente informações de forma organizada e estruturada dentro de uma tabéla ou catálogo, assim como criar e exibir conteúdo de acordo com o tipo de usuário que acessa a página; além de que, seu conteúdo pode ser gerenciado através de um *CMS (Content Management System – software que permite criar, editar, organizar e publicar conteúdo digital)*. O conteúdo armazenado no CMS pode incluir uma variedade de arquivos, desde texto às imagens exibidas, layouts da página, configurações do site e muito mais. Isto permite flexibilidade ao criar o site, e também, que vários usuários manipulem o conteúdo conforme necessário, fazendo com que se tenha um custo de manutenção menor do que seria em alterar o conteúdo em uma página estática por exemplo. Como as informações podem ser gerenciadas através de um CMS, há pouco ou nenhum custo quando se trata de manutenção dessas informações. Em contra partida, por conta de tantas funcionalidades, seu desenvolvimento e implementação podem possuir um alto custo. Além do custo do desenvolvimento da aplicação, há o custo do desenvolvimento do banco de dados onde o conteúdo a ser exibido será armazenado. O dsesenvolvimento pode aumentar seu custo ainda mais a medida que novas funcionalidades são adicionadas. Embora os custos de manutenção possam ser menores, este custo de desenvolvimento inicial é algo a se considerar durante a elaboração do projeto e definição do escopo de acordo com a necessidade. Também podem haver limitações técnicas no projeto. Há depender da arquitetura escolhida, como o conteúdo é baseado principalmente nas informações contidas no banco de dados e a apresentação ao usuário é baseada na estrutura do banco, isto pode tornar o projeto "engessado" complicando a criação de livre vontade, pois é mais fácil optar por uma única abordagem para todas as páginas. Dependendop do CMS, pode ser difícil criar vários layouts ou modelos que permitam que diferentes tispo de conteúdo sejam exibidos de diferentes maneiras.

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

### <span id="html">HTML</span>
 A origem do HTML data de 1980, quando o físico Tim Berners-Lee, um trabalhador do CERN (Organização Européia de Pesquisa Nuclear), propôs um novo sistema de *"hypertext"* para compartilhar documentos.<br/>
 **HyperText Markup Language**, é uma "linguagem" composta de *etiquetas*, ou **tags**, com as quais dizemos ao programa para (e como) nos mostrar textos, imagens, vídeos e etc.<br/>
 O HTML não é uma linguagem de programação em si, embora às vezes seja referido coloquialmente como uma linguagem de programação, é composto simplesmente por uma série de **tags** que o navegador interpreta de uma forma ou de outra para exibir e moldar conteúdos diferentes na tela.<br/>
 HTML é a linguagem utilizada para o desenvolvimento de páginas na Internet, e possui tags para imagens, hyperlinks, quebras de linha, listas, tabelas e etc.<br/>
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

 **ATRIBUTOS**<br/>
 Permitem identificar ou associar elementos, além de adicionar mais semântica ao código, acrescentando informações ao item em que se encontra etiquetado. Alguns dos atributos mais importantes são o `id` e `class`. *A classe é um atributo que identifica múltiplos elementos, enquanto o id é uma identidade única para cada elemento, podendo assim nos referirmos a ele.* Além destes, existem várious outros atributos que podem ser inseridos nas tags.

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
╭──<!DOCTYPE>───────────╮       <!DOCTYPE html>
|                       |
╰───────────────────────╯
╭───<hmtl>────────────────────╮ <html lang="en">
| ╭─<head>──────────────────╮ |     <head>
| |                         | |         <title>webpage</title>
| ╰─</head>─────────────────╯ |     </head>
| ╭─<body>──────────────────╮ |     <body>
| |                         | |         <h1>Bem-vindo!</h1>
| ╰─</body>─────────────────╯ |     </body>
╰──</hmtl>────────────────────╯ </html>
```
###### ORGANIZAÇÃO DO HEAD
 O **head** *(cabeçalho da página)* contém os **metadados**, que são dados que o usuário não vê, mas que o *navegador* considera úteis; o *title* da página e possíveis *links* para páginas CSS ou JavaScript.<br/>
 A tabela a seguir mostra um resumo dos elementos que podem ir dentro da etiqueta *head*:

ETIQUETA   | FUNÇÃO                     | OBRIGATÓRIO
:---:      | :---:                      | :---:
\<meta>    | define os metadados        | ❌
\<title>   | título do documento        | ✅
\<link>    | vincula arquivos           | ❌
\<base>    | define uma url base        | ❌
\<style>   | delimita css interno       | ❌
\<script>  | delimita scripts incluídos | ❌

 - Meta tags não possuem um par fechamento, elas servem para incluir informações que não são exibidar como parte da página, mas sim informar aos navegadores sobre características da página, tais como sua breve descrição e palavras-chave. Elas contém a etiqueta `name`, que é usado para identificar dados de formulário que serão enviados ao servidor quando o formulário for submetido, criação de âncoras e agrupamento de opções, e o atributo *`description`* que é essencial para os motores de busca, pois dá uma breve descrição sobre o assunto da página e ajuda a categorizá-la (substituindo o atributo *"keywords"*).
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
\<b>text\</b>           | negrito     | <b>text</b>           | ✅
\<strong>text\</strong> | ênfase      | <strong>text</strong> | ✅
\<i>text\</i>           | itálico     | <i>text</i>           | ✅
\<em>text\</em>         | relevância  | <em>text</em>         | ✅
\<strike>text\</strike> | riscado     | <strike>text</strike> | ✅
\<s>text\</s>           | removido    | <s>text</s>           | ✅
\<del>text\</del>       | deletado    | <del>text</del>       | ✅
\<u>text\</u>           | sublinhado  | <u>text</u>           | ✅
\<small>text\</small>   | menor       | <small>text</small>   | ✅
\<big>text\</big>       | maior       | <big>text</big>       | ✅
\<sub>text\</sub>       | subescrito  | <sub>text</sub>       | ✅
\<sup>text\</sup>       | sobrescrito | <sup>text</sup>       | ✅

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
<p> 1. Este parágrafo contém
    espaços em branco    e também
    quebras de linha, porém      o navegador irá exibí-lo com a formatação padrão.
</p>
<pre>
    2. Este parágrafo contém
    espaços em branco    e também
    quebras de linha, e,      o navegador irá exibí-lo com a formatação do documento.
</pre>
```
 output:
<p> 1. Este parágrafo contém
    espaços em branco    e também
    quebras de linha, porém      o navegador irá exibí-lo com a formatação padrão.
</p>
<pre>
    2. Este parágrafo contém
    espaços em branco    e também
    quebras de linha, e,      o navegador irá exibí-lo com a formatação do documento.
</pre>

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
<a href="https://github.com/raphaelkaique1"><img src="https://avatars.githubusercontent.com/u/182110258" alt="Fulltechware Logo"></a>
```
<a href="https://github.com/fulltechware/" title="Fulltechware's github profile" target="_blank"><img width="150rem" src="https://avatars.githubusercontent.com/u/182110258" alt="Fulltechware Logo"></a>

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

**LISTAS DE DEFINIÇÃO**<br/>
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

**TABELAS**<br/>
 As tabelas podem ser consideras como *um grupo de linhas, onde cada linha contém um grupo de células delimitadas por colunas*. Uma tabela pode ser inserida em um documento usando 6 elementos básicos:
 1. **`table` estrutura de tabela**: Cria o campo para estruturar as linhas e colunas da tabela.
 2. **`tr` linhas**: Define uma linha da tabela;
 3. **`td` células**: Cada célula é uma parte da linha contida em uma coluna.
 4. **`thead`**: Elemento semântico para agrupar os cabeçalhos da tabela.
 5. **`tbody`**: Elemento semântico para agrupar o corpo (*células*) da tabela.
 6. **`tfoot`**: Elemento semântico para agrupar o rodapé da tabela.

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
        <td colspan="3">Células 4, 5 e 6</td>
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
        <td colspan="3">Células 4, 5 e 6</td>
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
 - **`caption`** description: *Usada para definir um título para a tabela*; sua posição pode ser definida usando CSS. **Este elemento só é permitido se ele for inserido logo após
a abertura da tabela.** 
```html
<table>
    <!-- area de cabeçalho -->
    <caption>SOFTWARE DEVELOPER</caption>
    <tr>
        <th>&nbsp;</th> <!-- COLUNA 1 -->
        <th>front-end</th> <!-- COLUNA 2 -->
        <th>back-end</th> <!-- COLUNA 3 -->
        <th>devops</th> <!-- COLUNA 4 -->
    </tr>
    <!-- LINHA 1 -->
    <tr>
        <th>junior</th> <!-- COLUNA 1 -->
        <td>GUI</td> <!-- COLUNA 2 -->
        <td>API</td> <!-- COLUNA 3 -->
        <td>CI/CD</td> <!-- COLUNA 4 -->
    </tr>
    <!-- LINHA 2 -->
    <tr>
        <th>full</th> <!-- COLUNA 1 -->
        <td>UX/UI</td> <!-- COLUNA 2 -->
        <td>SERVER-SIDE</td> <!-- COLUNA 3 -->
        <td>MONIT</td> <!-- COLUNA 4 -->
    </tr>
    <!-- LINHA 3 -->
    <tr>
        <th>senior</th> <!-- COLUNA 1 -->
        <td>SEO</td> <!-- COLUNA 2 -->
        <td>DB</td> <!-- COLUNA 3 -->
        <td>INFRA/CLOUD</td> <!-- COLUNA 4 -->
    </tr>
</table>
```
<table border="1px">
    <caption>SOFTWARE DEVELOPER</caption>
    <tr>
        <th>level</th>
        <th>front-end</th>
        <th>back-end</th>
        <th>devops</th>
    </tr>
    <tr>
        <th>junior</th>
        <td>GUI</td>
        <td>API</td>
        <td>CI/CD</td>
    </tr>
    <tr>
        <th>full</th>
        <td>UX/UI</td>
        <td>SERVER-SIDE</td>
        <td>MONIT</td>
    </tr>
    <tr>
        <th>senior</th>
        <td>SEO</td>
        <td>DB</td>
        <td>INFRA/CLOUD</td>
    </tr>
</table>

 Aqui é facil ver como cada célula do cabeçalho da tabela fornece informações para o restante das células da coluna a qual pertecem. Alguns agentes, tais com navegadores de voz, fazem a mesma análise quando devem informar ao usuário qual célula de cabeçalho está associada a uma determinada célula. Mas, em algum casos, é preciso fornecer mais dados para evitar ambiguidades. Para isso exsite o atributo **`scope`**.
 - **`scope` escopo**: *Fornece um mecanismo para indiciar explicitamente quais células de cabeçalho ele afeta.* **Este atributo só pode ser declarado em UMA CÉLULA DE CABEÇALHO** e tomar os valores `col`, `row`, `colgroup`e `rowgroup`.<br/>
 Os valores `col` e `row` indicam que a célula de cabeçalho fornece informações para as demais células da coluna ou linha em que está presente.<br/>
 No exemplo a seguir, a célula no canto superior esquerdo da tabela forneceria informações ambíguas se o atributo `scope` não estivesse presente; em outras palavras, isso afetaria as células de sua coluna, bem como as células da sua linha. *A presença deste atributo deixou claro que as células afetadas por este cabeçalho são aquelas na mesma linha.*
```html
<table>
    <tr>
        <th scope="row">Dia</th>
        <th>Hoje</th>
        <th>Amanhã</th>
        <th>Depois de Amanhã</th>
    </tr>
    <tr>
        <th>Condição</th>
        <td>Ensolarado</td>
        <td>Parcialmente nublado</td>
        <td>Nublado</td>
    </tr>
    <tr>
        <th>Temperatura</th>
        <td>19°C</td>
        <td>17°C</td>
        <td>12°C</td>
    </tr>
    <tr>
        <th>Ventos</th>
        <td>E 13 km/h</td>
        <td>E 11 km/h</td>
        <td>S 16 km/h</td>
    </tr>
</table>
```

<table border="1px">
    <tr>
        <th scope="row">Dia</th>
        <th>Hoje</th>
        <th>Amanhã</th>
        <th>Depois de Amanhã</th>
    </tr>
    <tr>
        <th>Condição</th>
        <td>Ensolarado</td>
        <td>Parcialmente nublado</td>
        <td>Nublado</td>
    </tr>
    <tr>
        <th>Temperatura</th>
        <td>19°C</td>
        <td>17°C</td>
        <td>12°C</td>
    </tr>
    <tr>
        <th>Ventos</th>
        <td>E 13 km/h</td>
        <td>E 11 km/h</td>
        <td>S 16 km/h</td>
    </tr>
</table>

###### MULTIMÍDIA
 A tag `figure` é usada para representar qualquer elemento multimídia, sejam vídeos, imagens, sons, animações e etc. Ela melhora o posicionamento SEO da página.

**IMAGENS**<br/>
 As imagens dentro de uma página web são incluídas usando a tag `<img/>` dentro da tag `figure`, que não tem par de fechamento.<br/>
 Ao utilizá-la, é necessário especificar o caminho onde a imagem está localizada, seja um caminho para um diretório local ou um endereço na internet; **isso é feito com o atributo `src`.**<br/>
 **Outros atributos não obrigatórios mas ALTAMENTE RECOMENDADOOS PARA O SEO, são os atributos `alt`, `title` e `figcaption`.**
 - **`alt` alternative**: *Permite exibir uma mensagem no lugar da imgagem caso ela não possa ser encontrada e exibida.*
 - **`title` título**: *Permite atribuir um título à imagem.*
 - **`figcaption` legenda**: *Permite atribuir uma legenda à imagem.*
```html
<figure>
    <img src="https://avatars.githubusercontent.com/u/182168576" alt="Logo Tech n' Logic" title="Tech n' Logic" figcaption="Fonte: Tech n' Logic GitHub profile"/>
</figure>
```
<figure>
    <img src="https://avatars.githubusercontent.com/u/182168576" width="190rem" alt="Logo Tech n' Logic" title="Tech n' Logic" figcaption="Fonte: Tech n' Logic GitHub profile"/>
</figure>

**ÁUDIO**<br/>
 O uso de áudio em páginas web não é recomendado atualmente por ser desconfortável para o usuário, especialmente quando várias abas estão abertas e cada tipo reproduz um áudio.<br/>
 Entretando, é interessante conhecer esta ferramenta. *A etiqueta que nos permite utilizar o áudio é a tag `audio`.*<br/>
 Possui os seguintes atributos:
 - **`src`**: necessário para especificar o caminho do áudio.
 - **`controls`**: Exibe o painel de controle de áudio, como botões de play, pause, stop, volume e velocidade de reprodução.
 - **`autoplay`**: O áudio é tocado automaticamente quando a página é carregada.
 - **`loop`**: O áudio é reproduzido em loop.

**VÍDEOS**<br/>
 Semelhante a trabalhar com imagens, para a sua inclusão, usa-se a tag `video` (*que tem um par de fechamento*).<br/>
 Possui os seguintes atributos:
 - **`src`**: Permite especificar o caminho onde o vídeo está armazenado. **Pode-se usar `src` como tag, incluindo várias tags apontando para diferentes formatos de vídeo, permitindo ao navegador escolher o formato que ele consegue reproduzir.** *Não é obrigatória, pode-se usar apenas como atributo ou uma única tag, o uso de múltiplas tags apenas garante que o vídeo seja reproduzido em diversos navegadores.*
 - **`controls`**: Adiciona controles visuais ao vídeo.
 - **`autoplay`**: O vídeo é executado automaticamente quando a página é carregada.
 - **`loop`**: O vídeo é executado em loop.
 - **`poster`**: Permite definir uma *imagem "de capa"* ao vídeo, que será exibida antes da reprodução do vídeo.
 - **`preload`**: Permite espeficar algumas características do vídeo antes de ser carregado, por exemplo, quantos quadros o vídeo tem, seu tempo de duração e etc.
 - **`track`**: **VTT** ou *Video Text Tracks* é um formato de arquivo utilizado para legendas, transcrições ou descrições em áudio de vídeos, indicado para aumentar o SEO (pois leva em consideração questões de acessibilidade). *Possui um formato simples de texto, onde cada linha descreve um intervalo de tempo e o conteúdo de legenda para esse intervalo.* **A tag `<track/>` adiciona legendas, no íveo e proporciona uma interface para os usuários escolherem opções de legenda.**
   - **`src`**: *Especifica o caminho do arquivo de legendas, normalmente em formato VTT.* Deve ser um caminho absoluto ou relativo para o arquivo de legendas.
   - **`label`**: *Este atributo fornece um rótulo legível para o usuário, que aparecerá no menu de seleção de legendas do player de vídeo.* O valor de `label` pode ser usado para exibir o nome da legenda ou descrição para o usuário.
   - **`srclang`**: *Define a linguagem do arquivo de legendas.* Normalmente, esse atributo é usado para indicar a língua do conteúdo das legendas, permitindo que o navegador escolha as legendas corretas para o usuário com base em seu idioma preferido.
   - **`kind`**: *Define o tipo de conteúdo que será fornecido pela tag `track`.* Os valores mais comuns para `kind` são:
     - **`subtitles`**: *Para legendas no idioma falado.*
     - **`captions`**: *Para legendas ocultas (geralmente para deficientes auditivos, incluindo não apenas a fala, mas também sons de fundo, como "porta batendo").*
     - **`descriptions`**: *Para descrições de áudio, geralmente usadas para pessoas com deficiência visual, descrevendo cenas de um vídeo.*
     - **`chapters`**: *Usado para capítulos de um vídeo (mais raro, mas pode ser utilizado em vídeos longos com capítulos distintos).*
 
 Exemplo de arquivo VTT:
```vtt
WEBVTT

1
00:00:00.000 --> 00:00:05.000
Bem-vindo ao meu vídeo!

2
00:00:05.000 --> 00:00:10.000
Aqui falaremos sobre como adicionar legendas.
```
 Implementando a tag `video`:
```html
<figure>
    <video controls autoplay loop poster="capa.jpg">
        <source src="video.mp4" type="video/mp4">
        <source src="video.ogg" type="video/ogg">
        <track src="legendas.vtt" kind="subtitles" srclang="pt" label="Português">
        <track src="legendas-en.vtt" kind="subtitles" srclang="en" label="English">
    </video>
</figure>
```

**IMPORTANDO CONTEÚDO**<br/>
 Com o **`iframe`** *é possível exibir uma página web dentro de outra página web*. Ele pode ser estilizado com CSS de acordo com o layout da página hospedeira.
```html
<iframe src="url" title="description"></iframe>
```
 Como já vimos, o `iframe` traz o conteúdo externo para o nosso website, com isso, se quisermos embutir em nossa página um vídeo de alguma plataforma de reprodução externa, como o YouTube por exemplo, é disponibilizado um código pré-formatado, geralmente `iframe`. Sempre deve-se estar alerta quanto as questões legais, pois alguns conteúdos são protegidos por direitos autorais e seu uso não é permito sem o conhecimento do autor.<br/>
 Exemplo de uso:
```html
<figure>
    <iframe width="966" height="543" src="https://www.youtube.com/embed/lx0eir2xF5E" title="EU SOU DEV JR" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</figure>
```

###### FORMULÁRIOS
 Os formulários tem o propósito de coletar informações fornecidas pelos visitantes do site, que são então enviadas ao servidor para serem processadas.<br/>
 Para que ele seja útil, é importante que o formulário fornecido seja acompanhado por um código do lado do servidor, que chamaremos de *"agente de processamento"*, que se encarrega de receber e processar as informações. Este processamento pode consistir, por exemplo, em armazenar as informações ou enviá-las por e-mail.<br/>
 Um formulário é identificado pela tag `form`, e é basicamente um recipiente para controles. Cada controle em um formulário tem o objetivo de coletar informações inseridas pelos usuários em formulários que podem variar de linhas de texto, a upload de arquivos, datas, senhas e muito mais. Uma vez que os usuários tenham preenchido o fomulário com dados, eles podem ser enviados ao servidor para que o agente de processamento gerencie as informações coletadas.<br/>
 **Os usuários interagem com os formulários através dos chamados controles.** De forma simplificada, um controle é definido como *um objeto que é exibido na tela e que pode ser modificado pelo usuário*. Por exemplo, um botão, uma caixa de texto, um menu suspenso e etc.<br/>
 **Os formulários geralmente fazem uso da tag *`action`*, que se refere à página para a qual as informações no formulário serão encaminhadas.**
```html
<form action="https://server.php"></form>
```
 *Se não for enviado para nenhuma outra página, é deixado vazio, para utilizar as informações na mesma página.*
```html
<form action=""></form>
```
 Isto geralmente é seguido pelo atributo `method`, que pode ser `post` ou `get`.<br/>
 A diferença entre os métodos `get` e `post` reside na forma como os dados são enviados para o destino quando o botão de enviar é pressionado.<br/>
 Enquanto o método `get` envia os dados usando a URL, o método `post` os envia de forma oculta ao usuário.<br/>
 O método `get` exibe na URL os dados inseridos no formulário quando é enviada ao servidor, por isso, é pouco confiável, pois com o conhecimento certo é fácil interpretar os dados. Portanto, sempre que formulários forem enviados, o método ideal é o `post`, no qual os dados são ocultos.<br/>
 A tag `enctype` nos permite carregar e enviar arquivos ao servidor. Ele define o tipo de codificação de dados que será usado ao enviar um formulário. Quando o formulário é enviado, os dados dos campos são convertidos em pares de chave-valor e são codificados na URL. Esse tipo de codificação é usado principalmente para dados de formulário simples, como texto e números. Esse tipo de codificação é o padrão para a maioria dos formulários:
```html
<form enctype="application/x-www-form-urlencoded"></form>
```

 No entanto, se for preciso enviar arquivos, será necessário usar o formato a seguir, que permite o envio de arquivos binários junto com outros dados do formulário: 
```html
<form enctype="multipart/form-data"></form>
```

 Com o `accept`, indicamos que tipo de arquivos nos permite realizar upload:
```html
<form enctype="multipart/form-data" accept-charset="UTF-8"></form>
```

 Já sabemos que, quando o usuário preenche um formulário em uma página web, os dados devem ser enviados de alguma forma. Vamos considerar as 2 maneiras possíveis já vistas. Primeiro, usando o método `get`:
```html
<form action="https://server.php" method="get">
    <>...</>
</form>
<button>submit<button>  <!-- veremos como implementar isto adiante -->
```

 No exemplo acima, quando o usuário clicar em *submit**, a ação que será executada é a de enviar os dados para a url especificada usando o método `get`.<br/>
 Usando o método `get`, teriamos algo assim por exemplo:<br/>
 `https://www.mydomain.com/newuser.php?name=Raphael&lastname=Santos&email=raphaelkaiquediassantos1%40gmail.com`<br/>
 Podemos distinguir várias partes dessa URL: `https://www.mydomain.com/newuser.php` é o próprio site.<br/>
 **O símbolo `?` é seguido por pares de dados com seu `nome` e `valor`, separados pelo símbolo `&`.** *Os pares `data1=value1`, `data2=value2`, `data3=value3`... refletem o nome dos campos enviados pelo formulário.*<br/>
 Por exemplo: `name=Raphael`, `lastname=Santos` e etc, nos informa que o campo do formulário chamado `nome` chega com o valor `Raphael`, enquanto o campo `lastname` chega atribuído ao valor `Santos`. Estes valores são recebidos na página web de destino do fomulário.<br/>
 **Note que para separar o primeiro par do próprio endereço usamos o símbolo `?`, já para separar os pares restantes uns dos outros usamos o símbolo `&`.**

**ENTRADA DE DADOS EM FORMULÁRIOS**<br/>
 Os controles de entrada de dados em formulários geralmente são controles visuais e permite que o usuário insira dados ou selecione opções. Seu uso depende do tipo de controle e também do tipo de informações.
 - **AGRUPAMENTO E DESCRIÇÃO SEMÂNTICA DE SEÇÕES DE UM FORMULÁRIO**
   - **`fieldset`**: Agrupa elementos relacionados dentro de um formulário.
   - **`legend`**: Fornece uma descrição para o conteúdo de um `fieldset`.

 Vejamos alguns dos atributos que podem ser usados na tag `form`:
 - **`disabled/enabled` (bool)**: *Informa que o campo exibido não permite alteração do usuário.*
 ```html
 <input value="🚫" disabled/>
 ```
 - **`novalidate` (bool)**: *Ele instrui o navegador a **não realizar a validação dos campos antes de submeter o formulário**, mesmo que haja campos com atributos de validação, como `required`, `pattern`.*
 - **`autocomplete`**: `on`/`off` - *Define o comportamento de armazenar ou não histórico de entradas na memória.* **Se usado na tag `form` afeta todos os campos de entrada do formulário, mas se usado em uma tag `input` afeta somente o campo à que a tag se refere.**
 - **A tag `method` É OBRIGATÓRIA para definir o método HTTP que será utilizado ao enviar os dados do formulário para o servidor.**
 - **`action`**: **Define a URL de destino para onde os dados do formulário serão enviados quando o formulário for submetido.** *Em outras palavras, ele especifica para qual endereço da web o navegador deve enviar os dados inseridos no formulário.*<br/>
 Quando o usuário preenche um formulário e clica no botão de envio, o navegador envia os dados para o endereço definido no atributo `action`. **Se o atributo `action` não for especificado, o formulário será enviado para a mesma URL da página atual.**
```html
<form name="Formulario" id="Formulario" autocomplete="off" method="post" action="/data-base" novalidate>
    <>...</>
</form>
```

 **Os elementos de entrada de um formulário podem ser definidos através do uso da tag `input` usando o atributo `type`, seguido de algum valor.**
```html
 <input type="" name=""/>
```

 - _**A tag `name` É OBRIGATÓRIA, pois é o nome ao qual nos referimos quando o enviamos ao servidor, ou seja, se o nomearmos "`Nome`", poderemos recuperá-lo com `$_post("Nome")` ou `$_get("Nome")`.**_ *Neste exemplo, os dados do formulário, ou seja, **o valor inserido no campo `query`** serão enviados como parte da URL, como **https://exemplo.com/buscar?query=valorFornecidoPeloUsuário.*** Normalmente, as propriedades `name` e `id` recebem o mesmo nome, embora não seja obrigatório.
```html
<form method="GET" action="/buscar">
  <input type="text" name="query" placeholder="Buscar"/>
  <button type="submit">Pesquisar</button>
</form>
```

 - **ELEMENTOS DE VALIDAÇÃO**
    - **`required`**: *Indica que é **OBRIGATÓRIO** preencher o campo para o envio do formulário.*
    - **`pattern`**: **Define uma expressão regular (regex) que o valor do campo de entrada deve seguir.** *O valor inserido pelo usuário será validado com base nessa expressão regular.*
```html
<input type="text" pattern="[A-Za-z]{3,5}" required/>
```

 - **ATRIBUTOS INFORMATIVOS**
    - **`placeholder`**: Exibe um texto informativo para o usuário *sem ocupar* o campo.
    - **`value`**: Exibe um texto informativo para o usuário *ocupando* o campo. **Sua principal função é no back-end, que recebe o valor contido nela (normalmente é o mesmo valor de option), juntamente com o atributo `name` (chave e valor = name e value)**
    - **`label`**: Define um rótulo visível, *diferente do valor real da opção*.
  - **ATRIBUTOS DE CONTROLE DE INTERAÇÃO**
    - **`multiple`**: Utilizado principalmente nos campos de entrada de tipo `file` e `email`, e **permite que o usuário selecione ou insira vários valores ao mesmo tempo**.
    ```html
    <input type="file" name="arquivos" multiple/> <input type="email" name="emails" placeholder="separe com vírgulas" multiple/>
    ```
    - **`autofocus`**: utilizado para dar foco automático a um campo de entrada assim que a página é carregada. Ou seja, **o cursor será automaticamente colocado nesse campo, e o usuário poderá começar a digitar imediatamente, sem precisar clicar nele**.
    ```html
    <input type="text" placeholder="nome de usuário" autofocus/>
    ```
 - **TIPOS DE ENTRADAS**
    - **`text`: Cria uma *caixa de texto* para que o usuário insira os dados para envio.**
    ```html
    <input type="text" name="Nome" id="Nome" placeholder="Digite aqui seu nome..." value="Meu primeiro nome é: "/>
    ```
    - **`textarea`**: Tag com par de fechamento e cria uma área maior de texto, juntamente com `rows` e `cols`, que definem respectivamente o número de linhas e colunas de uma área de texto, mas o método mais usado atualmente é definir usando CSS:
    ```html
    <textarea name="comentarios" id="comentario" rows="5" cols="30" placeholder="Digite aqui seu comentário (opcional).">Texto pré-formatado.</textarea>
    ```
      - **`readonly`**: Define o campo como *somente leitura*. O usuário não pode modificar o conteúdo, mas pode selecioná-lo e copiá-lo.
      - **`maxlength`**: Define o número *máximo* de caracteres que o usuário pode digitar no campo de texto.
      - **`minlength`**: Define o número *mínimo* de caracteres que o usuário deve inserir no campo de texto.
      - **`wrap`**: *Especifica como o texto deve ser quebrado quando atingir o final da linha.*
        - **`soft`**: Quebra de linha no campo visualmente, mas *sem inserir* uma quebra no texto.
        - **`hard`**: *Insere* uma quebra de linha no texto.
      - **`spellcheck`="`true`/`false`"**: Especifica se o navegador deve verificar a ortografia do texto digitado.
    - **`password`**: Oculta os caracteres digitados.
    ```html
    <input type="password" name="senha" placeholder="Digite aqui sua senha"/>
    ```
    - **`email`**: Recebe um dado do tipo *texto* e o trata como um endereço de e-mail.
    ```html
    <input type="email" name="Email" id="Email" placeholder="exemplo@email.com"/>
    ```
    - **`search`**: Rece um dado como um termo de busca para pesquisa no banco de dados especificado.
    ```html
    <input type="Search" name="Search" id="Search" placeholder="&#128269;"/>
    ```
    - **`url`**: Recebe o dado como um endereço web.
    ```html
    <input type="url" name="URL" id="URL" placeholder="www.url.com" value="https://"/>
    ```
       - **As tags tipo texto geralmente tem um comportamento *auto complete* por padrão, ou seja, geralmente mantêm as entradas anteriores na memória.** Para alterar este comportamento usa-se o atributo `autocomplete` conforme já visto.
    - **`tel`**: Recebe somente números e trata-os como número de telefone.
    ```html
    <input type="tel" name="Phone" id="Phone" placeholder="+CC DDD X XXXX-XXXX"/>
    ```
 - **FAIXA DE VALORES**
    - Para os casos abaixo, o valor do `value` junto com o valor atribuído ao `name`, é a informação que chega ao servidor quando o usuário submete o formulário.
        - **`radio`**: Permite a seleção de somente uma entre várias opções, todas do mesmo grupo (nome). Cada vez que uma opção é selecionada, a outra opção que foi selecionada é automaticamente desmarcada. **Apenas uma opção pode ser selecionada por vez, e para definir isso o valor atribuído ao `name` deve ser igual para todos, para que o navegador entenda que estão relacionados e garantir a exclusividade da seleção da selação, desmarcando outra quando uma é selecionada.**
        ```html
        <input type="radio" name="sexo" value="masculino"/> Masculino
        <input type="radio" name="sexo" value="feminino"/> Feminino
        ```
        - **`checkbox`**: Permite a seleção múltipla de uma ou mais opções. Embora várias checkbox sejam normalmente exibidas juntas, **cada uma é completamente independente das outras**.
        ```html
        <input type="checkbox" name="quest" value="yes"/> M5 <input type="checkbox" name="quest" value="no"/> M3
        ```
          - **EM TODOS OS ATRIBUTOS DE SELEÇÃO DE OPÇÕES, É POSSÍVEL MANTER UMA OPÇÃO SELECIONADA FIXADAMENTE. `checked`**. Embora seja redundante que o nome do atributo e seu valor sejam idênticos, é **obrigatório** declará-lo desta forma, por que os atributos em **XHTML** não podem ter valores vazios.
          ```html
          <input type="radio" checked="checked"/> <input type="checkbox" checked="checked"/>
          ```
    - **`Number`**: Números genéricos, juntamente com `min`, `max` e `step`.
    ```html
    <input type="number" min="0" max="10" step="2" placeholder="Duplo" value="0"/>
    ```
    - **`range`**: Cria um controle deslizante (*slider*) para selecionar um valor dentro de um intervalo, juntamente com `min`, `max` e `step`.
    ```html
    <input type="number" name="volume" min="1" max="100"/>
    ```
    - **`option`**: Contém os elementos que defiem uma das opções que pode ser selecionada. Por padrão, dependendo de onde é usado, tem seu primeiro elemento da lista selecionado, ou, exibe um campo em branco até que o usuário selecione uma das opções.
        - Para alterar este comportamento, usa-se o atribuito `selected` na opção que se deseja manter pré selecionada.
        ```html
        <select>
            <option label="1"/>
            <option label="2"/>
            <option label="3" selected/>
        </select>
        ```
        - Para especificar o número de valores visíveis, usa-se o atributo `size`.
        ```html
        <select size="3">
            <option label="1"/>
            <option label="2"/>
            <option label="3"/>
            <option label="4"/>
            <option label="5"/>
            <option label="6"/>
            <option label="7"/>
            <option label="8"/>
            <option label="9"/>
        </select>
        ```
        - Para permitir que o usuário selecione mais de um valor usa-se o atributo **`multiple`**.
        ```html
        <select multiple>
            <option value="bmw">BMW</option>
            <option value="audi">AUDI</option>
            <option value="mercedes">MERCEDES</option>
        </select>
        ```
      - **É usado com `datalist` e `select`.**
          - **`datalist`**: **Cria uma lista de sugestões para um campo `input`, mas o usuário ainda pode digitar um valor personalizado**, as sugestões aparecem conforme o usuário digita, mas ele não é obrigado a escolhê-las. Usado com o atributo `list` em um `input`, ele torna a interação com o formulário mais eficiente, especialmente quando há opções limitadas, como nomes de cidades, e-mails ou produtos.
          ```html
          <input type="text" id="cidade" name="cidade" list="cidades" placeholder="Digite sua cidade.">
          <datalist id="cidades">
              <option value=" "></option>
              <option label="MG" value="Contagem"/>
              <option label="MG" value="Belo Horizonte"/>
              <option label="MG" value="Betim"/>
              <option label="RJ" value="Rio De Janeiro"/>
              <option label="SP" value="São Paulo"/>
          </datalist>
          ```
          - **`select`**: Cria um menu suspenso (*dropdown*) com opções predefinidas, onde **o usuário só pode escolher uma das opções fornecidas**.
          ```html
          <select name="time" id="time" required>
              <option label="" value=""></option>
              <optgroup label="MG">
                  <option value="cruzeiro">CRUZEIRO</option>
                  <option value="america">AMÉRICA</option>
                  <option value="atletico">ATLÉTICO</option>
              </optgroup>
              <optgroup label="SP">
                  <option value="corinthians">CONRINTHIANS</option>
                  <option value="palmeiras">PALMEIRAS</option>
                  <option value="sao-paulo">SÃO PAULO</option>
              </optgroup>
          </select>
          ```
 - **`date`**: Tipo de data.
    ```html
    <input type="date"/>
    ```
    - **`datetime-local`**
    ```html
    <input type="datetime-local"/>
    ```
    - **`time`**
    ```html
    <input type="time"/>
    ```
    - **`week`**
    ```html
    <input type="week"/>
    ```
    - **`month`**
    ```html
    <input type="month"/>
    ```
 - **`color`**: Permite a seleção de uma cor usando um seletor de cores.
 ```html
 <input type="color" name="cor"/>
 ```
 - **`file`**:  Permite o envio de arquivos, quando incluso no formulário, é **OBRIGATÓRIO** adicionar o atributo **`enctype="multipart/form-data"`** ao `form`.
 ```html
 <input type="file" name="arquivo"/>
 ```
 - **TIPOS RELACIONADOS A BOTÕES**
    - **type="`button`"**: **Método não recomendado por estar depreciado.** Cria um botão genérico, que pode ser programado com JavaScript para realizar ações customizadas.
    ```html
    <input type="button" value="clique aqui"/>
    ```
    - **`submit`**: Cria um botão que envia o formulário.
    ```html
    <button type="submit">enviar</button>
    ```
    - **`reset`**: Cria um botão que reseta os valores dos campos do formulário para seus valores iniciais.
    ```html
    <button type="reset">reset</button>
    ```
 - **DADOS OCULTOS E OUTROS CASOS ESPECIAIS**
    - **`image`**: Cria um botão de envio de formulário com a aparência de uma imagem. O clique na imagem envia o formulário.
    ```html
    <input type="image" src="https://cdn-icons-png.flaticon.com/16/2111/2111644.png" alt="enviar">
    ```
    - **`hidden`**: Define um campo de entrada que não é exibido no formulário, mas pode armazenar informações necessárias ao servidor que serão enviadas quando o formulário for submetido.
    ```html
    <input type="hidden" name="user_id" value="@password"/>
    ```
    - **`form`**: *Serve para associar o campo de entrada a um formulário específico, mesmo que o campo de entrada não esteja dentro do formulário.* **Isso permite que você coloque os campos de entrada em uma área separada da tag `form`, mas ainda assim envie os dados para esse formulário quando o formulário for enviado.** *Este atributo se refere ao ID de um formulário existente.* Isso significa que, se você tiver vários formulários na página ou se o campo de entrada não estiver dentro do formulário ao qual ele deve se associar, você pode usar esse atributo para indicar qual formulário o campo deve pertencer.
 - **LABEL**<br/>
   **Permite associar um texto a um campo de controle de formulário.** *É uma boa prática de semântica e SEO.* Sua escrita possui um par de fechamento e o atributo `for`, que é o que associa a `label` ao campo a que ela se refere. **Este `for` deve ter o MESMO valor que o `id` do campo `input` que a label está associada.**
```html
<form method="post" action="/data-base.php">
    <fieldset>
        <legend>Cadastro</legend>
        <label for="userName">Nome de Usuário:</label>
        <input type="text" name="userID" id="userName" placeholder="Digite o nome de usuário." autocomplete="off" pattern="[a-zA-z0-9]{3,13}" autofocus required/>
        <label for="email">E-mail:</label>
        <input type="email" name="userEmail" id="email" placeholder="contact@email.com" autocomplete="off" required/>
        <button type="submit">enviar</button>
    </fieldset>
</form>
```

###### VIAS E ROTAS
 Uma *rota* informa o caminho da localização de um arquivo na estrutura de pastas do site. Os caminhos de arquivos são usados quando se ligam a arquivos externos, tais como: páginas web, conteúdo multimídia, folhas de estilo e arquivos de script. **Recomenda-se o uso de caminhos relativos sempre que possível, pois ao utilizá-los, suas páginas web não serão vinculadas à sua URL base atual, todos os links funcionarão em seu próprio site (*localhost*), assim como em seu domínio público atual e em seus domínios públicos futuros.**
 - **`src="file.ext"`**: **O arquivo está localizado na mesma pasta da página atual.**
 - **`src="dir/file.ext`**: **O arquivo está localizado em uma pasta na raiz do site atual.**
 - **`src="../file.ext`**: **O arquivo está localizado na pasta um nível acima da pasta atual.**
 - **`src="https://site.com/image.png` **: **Uma rota absoluta é o endereço URL completo de um arquivo.**

<table border="1px">
    <caption>LISTA DE TAGS</caption>
    <colgroup>
        <col>
        <col>
        <col>
    </colgroup>
    <thead>
        <tr>
            <th>TAG</th>
            <th>DESCRIÇÃO</th>
            <th>PAR DE FECHAMENTO</th>
        </tr>
    <thead>
    <tbody>
        <tr>
            <th>&lt;!-- --&gt;</th>
            <td>Define um comentário</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>&lt;!DOCTYPE x&gt;</th>
            <td>Define o tipo do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>h1 ... h6 </th>
            <td>Define cabeçalhos e títulos.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>a</th>
            <td>Define um hyperlink.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>abbr</th>
            <td>Define uma abreviação</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>address</th>
            <td>Define as informações de contato do autor ou proprietário do documento, fica localizado no footer.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>area</th>
            <td>Define uma área dentro de um mapa de imagem.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>article</th>
            <td>Define um campo com informações independentes ao conteúdo da página.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>aside</th>
            <td>Define o conteúdo lateral de uma página.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>audio</th>
            <td>Define conteúdo de som.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>b</th>
            <td>Define um texto em negrito.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>base</th>
            <td>Especifica a base onde todas as URLs do documento serão abertas.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>bdi</th>
            <td>Isola uma parte do texto que pode ser formatada de forma diferente do texto externo.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>bdo</th>
            <td>Sobrescreve o endereço do texto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>big</th>
            <td>Define um tamanho maior padronizada para um texto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>blockquote</th>
            <td>Define uma seção que tem outra fonte de informação, utilizado para citações longas.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>body</th>
            <td>Define o corpo do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>br</th>
            <td>Define uma quebra de linha.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>button</th>
            <td>Define um botão clicável.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>canvas</th>
            <td>Usado para desenhar usando pixels da tela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>caption</th>
            <td>Define o título de uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>cite</th>
            <td>Define o título de uma obra.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>col</th>
            <td>Se refere à colunas em uma tabela.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>command</th>
            <td>Define comandos para menus.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>datalist</th>
            <td>Define uma lista de opções de preenchimento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>delete</th>
            <td>Define um texto deletado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>details</th>
            <td>Define um conteúdo expansível.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>dl</th>
            <td>Lista de definição.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>dt</th>
            <td>Item termo de uma lista de definição.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>dd</th>
            <td>Definição do termo da lista.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>em</th>
            <td>Define ênfase a um texto tornando-o itálico</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>embed</th>
            <td>Incorpora conteúdo externo definido um recipiente para sua exibição.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>fieldset</th>
            <td>Grupo de elementos relacionados em um formulário.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>figcaption</th>
            <td>Título de uma figura.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>figure</th>
            <td>Especifica o conteúdo para o navegador.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>footer</th>
            <td>Define o rodapé do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>form</th>
            <td>Define um formulário.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>head</th>
            <td>Define meta informações sobre o documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>header</th>
            <td>Define a seção de cabeçalho do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>hgroup</th>
            <td>Define um grupo de cabeçalhos <code>h1</code> à <code>h6</code>.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>hr</th>
            <td>Insere uma linha horizontal para separar conteúdos define uma mudança de tema a partir dessa linha divisória.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>html</th>
            <td>Define a raiz do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>i</th>
            <td>Define um texto itálico.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>iframe</th>
            <td>Define um frame online de conteúdo exportado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>img</th>
            <td>Define uma imagem.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>input</th>
            <td>Define um controle de entrada de dados.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>ins</th>
            <td>Define o que foi inserido em um documento</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>kbd</th>
            <td>Define entrada de teclado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>keygen</th>
            <td>Define um campo gerador de chave para formulários.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>label</th>
            <td>Define o rótulo de um elemento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>legend</th>
            <td>Define um título para os elementos <code>fieldset</code>, <code>figure</code> e <code>details</code></td>
            <td>✅</td>
        </tr>
        <tr>
            <th>li</th>
            <td>Item de uma lista.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>link</th>
            <td>Define a relação entre um documento e um recurso externo vinculando geralmente arquivos de estilização e script.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>map</th>
            <td>Define um mapa de imagem.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>mark</th>
            <td>Define texto destacado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>menu</th>
            <td>Define uma lista de um menu.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>meta</th>
            <td>Define um metadado do documento.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>meter</th>
            <td>Define uma medida escalar em uma faixa conhecida.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>nav</th>
            <td>Define um menu de navegação.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>noscript</th>
            <td>Define um conteúdo alternativo para usuários que não suportam scripts por conta do cliente.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>object</th>
            <td>Define um objeto incorporado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>ol</th>
            <td>Define uma lista ordenada.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>optgroup</th>
            <td>Define um grupo de opções relacionadas em uma lista suspensa.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>option</th>
            <td>Define uma opção em uma lista suspensa.</td>
            <td>✅❌</td>
        </tr>
        <tr>
            <th>output</th>
            <td>Define o resultado de um cálculo.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>p</th>
            <td>Define um parágrafo.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>param</th>
            <td>Define um parâmetro para um <code>objeto</code>.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>pre</th>
            <td>Define um texto pre-formatado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>progress</th>
            <td>Representa o progresso em uma barra.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>q</th>
            <td>Define uma breve citação.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>rp</th>
            <td>Define uma exibição em navegadores que não suportam script <code>ruby</code>.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>rt</th>
            <td>Define a pronuncia de caracteres.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>ruby</th>
            <td>Define uma notação de <code>ruby</code>.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>s</th>
            <td>Define texto incorreto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>samp</th>
            <td>Define exemplo de resultados do programa.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>script</th>
            <td>Define um script no lado do cliente.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>section</th>
            <td>Define uma seção de conteúdo relacionado de um documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>select</th>
            <td>Define uma lista drop-down.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>small</th>
            <td>Define um tamanho menor padronizada para um texto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>source</th>
            <td>Define recursos para elementos multimídia.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>span</th>
            <td>Define uma breve seção do documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>strike</th>
            <td>Define um texto removido.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>strong</th>
            <td>Define um texto importante em negrito.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>style</th>
            <td>Define estilos para o documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>sub</th>
            <td>Define um texto subescrito.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>summary</th>
            <td>Define um cabeçalho visível para o elemento <code>details</code>.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>sup</th>
            <td>Define um texto superescrito.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>table</th>
            <td>Define uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>tbody</th>
            <td>Define o corpo de uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>td</th>
            <td>Define uma célula em uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>textarea</th>
            <td>Define um controle de entrada de múltiplas linhas.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>tfoot</th>
            <td>Define conteúdo do rodapé do grupo em uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>th</th>
            <td>Define uma célula de cabeçalho em uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>thead</th>
            <td>Agrupa os títulos de uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>time</th>
            <td>Define data e hora.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>title</th>
            <td>Define um título para o documento.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>tr</th>
            <td>Define uma linha em uma tabela.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>track</th>
            <td>Adiciona legendas em <code>video</code>.</td>
            <td>❌</td>
        </tr>
        <tr>
            <th>u</th>
            <td>Define um texto sublinhado.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>ul</th>
            <td>Define uma lista não ordenada.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>var</th>
            <td>Define uma variável matemática ou lógica em um contexto de texto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>video</th>
            <td>Define um arquivo de video.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>wbr</th>
            <td>Define uma possível quebra de linha.</td>
            <td>✅</td>
        </tr>
    </tbody>
</table>

### <span id="css">CSS</span>
 O objetivo do CSS é dar a aparência que quisermos às nossas páginas. Antes de seu surgimento, usava-se atributos nas tags para dá-las alguma aparência como por exemplo altura, largura, cor e etc. Atualmente, separamos a estrutura (HTML) da aparência (CSS). **Cascading Style Sheets** então surgiu para facilitar o desenvolvimento facilitando a separação de conteúdo da aparência, permitindo que os desenvolvedores controlassem a aparência dos documentos sem alterar sua estrutura.<br/>
 Em meados de 1990 a web se expandia rapidamente, mas os navegadores ofereciam poucas maneiras de definir estilos e layouts de forma consistente. Nesse contexto, Håkon Wium Lie, enquanto trabalhava com Tim Berners-Lee (idealizador do HTML) no CERN, percebeu que faltava uma ferramenta para aplicar estilos de forma flexível aos documentos web. Então, em 1994, Håkon Wium Lie propôs a ideia de “folhas de estilo em cascata” para dar aos desenvolvedores um mecanismo que pudesse controlar a apresentação de forma separada do conteúdo. Essa proposta surgiu justamente para atender à necessidade de uma web mais dinâmica e com melhor controle visual. Pouco tempo depois, Bert Bos se juntou a Lie, contribuindo significativamente para o refinamento do conceito. Juntos, eles desenvolveram as bases do que se tornaria o CSS, defendendo uma abordagem em que os estilos pudessem vir de diferentes fontes – como o navegador, o autor da página e o usuário final – sendo aplicados de acordo com uma ordem de prioridade ou “cascata”.

#### SINTÁXE
 Todas as etiquetas CSS terão 2 partes:
 1. **SELETOR**: Que determina qual área da página será modificada.
 2. **INSTRUÇÕES (ou PROPRIEDADES)**: Que se referem ao formato e aparência que vamos aplicar a essa zona.

 Para aplicarmos CSS à nossa página HTML existem **3 opções**:
 1. **DECLAÇÃO EXTERNA**: Em um arquivo separado de extensão `.css` linkado ao documento html. Dessa forma, podemos modificar **todas** as páginas do site apenas referenciando o arquivo css. **O *external CSS* é a melhor opção para melhorar o posicionamento SEO.**
 2. **DECLARAÇÃO INTERNA**: *No **cabeçalho** do documento, dentro do **`head`**.* Essa maneira permite modificarmos a aparência de uma **única** página em particular, onde as regras CSS são declaradas entre as tags `<style></style>` do documento html que se deseja estilizar. É chamado de *internal CSS*.
 3. **DECLARAÇÃO NA TAG**: *Usa-se o atributo **`style="seletor: regra-de-estilo"`** na tag que se deseja alterar a aparência. **Esta opção de _in-line CSS_ não é muito recomendada por não favorecer o SEO**, o ideal é utilizá-lo apenas em casos muito específicos.

 Ao aplicarmos o *css in-line*, devemos repetir a estilização em cada uma das tags que queremos modificar, já com o _internal css_ estilizamos uma página inteira, e com o _external css_ podemos aplicar estilos a várias páginas do nosso site.<br/>
 *É importante saber que cada uma dessas aplicações tem prioridade hierarquica sobre as outras, por isso deve-se sempre estar atento às regras de prioridade para não haver comportamentos inesperados.* A ordem de exibição informa ao navegador que aplique um estilo sobre o outro, ou seja, ao invés de aplicar o estilo (mais abaixo na hierarquia) presente em uma declaração, será aplicado o que estiver declarado de forma mais alta hierarquicamente. **Caso uma tag seja afetada por vários estilos CSS, o navegador aplicará os seguinte critérios seguindo a seguinte hierarquia, sendo 1 o maior e 3 o menor**:
 1. **in-line CSS**
 2. **internal CSS**
 3. **external CSS**

**DECLARAÇÃO EXTERNA**<br/>
 Consiste em criar um arquivo.css referenciado ao arquivo html. *Uma vez criado o arquivo CSS, declaramos no `head` uma tag `link` usando o atributo `rel`, que informa ao navegador a natureza do arquivo linkado, idicando a relação entre o documento atual e o recurso vinculado, e o `href`, que informa o caminho onde o arquivo está armazenado.*
 ```html
 <head>
     <meta charset="utf-7">
     <meta name="Description" content="Estudo de estilos CSS.">
     <meta name="ketwords" content="pragramção web, htmll, css">
     <title>Programação Web</title>
     <link rel="stylesheet" href="assets/style.css">
 </head>
 ```

**DECLARAÇÃO INTERNA**<br/>
 Para declararmos o estilo internamente, ou seja, dentro do documento html, escrevemos as regras dentro da tag `style` no `head`.
 ```html
 <head>
     <meta charset="utf-7">
     <meta name="Description" content="Estudo de estilos CSS.">
     <meta name="ketwords" content="pragramção web, htmll, css">
     <title>Programação Web</title>
     <style type="text/css">
        p {
            font-size: 32px;
        }
     </style>
 </head>
 ```
 Dessa forma, dizemos que o conteúdo das tags `p` terão um tamanho de fonte de 32px, assim, todas as tags `p` seguirão essa regra.

**DECLARAÇÃO IN-LINE**<br/>
 Usamos o atributo `style` para declararmos nosso CSS na tag que desejamos modificar – o estilo que escolhermos só alterará essa tag.
 ```html
 <body>
    <p style="color: blueviolet">
        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Totam ut magni, tempora natus assumenda voluptatum commodi non quod, sed repellat nostrum doloribus consequatur quis neque distinctio earum. Blanditiis, nulla est.
    </p>
    <p>
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quos dolor aperiam, ratione repudiandae minima reiciendis fuga similique architecto doloribus nulla unde. Deleniti repellendus quo delectus rerum voluptas temporibus, facilis nobis.
    </p>
 </body>
 ```
 A sintáxe para criar um comentário em CSS é: <code>/* comentário */</code>

**UNIDADES**<br/>
 Muitas propriedades assumes valores de *comprimento*, tais como **`widht`**, **`margin`**, **`padding`**, **`font-size`**, entre outras. O CSS tem várias unidades diferentes para expressar um comprimento, como *pixels*, porcentagens e escala.<br/>
 O comprimento **é um número seguido por uma unidade de medida**, como por exemplo **`10px`**. **Não podem haver espaços em branco entre o número e a unidade, entretanto, se o valor for `0` a unidade pode se omitida.**<br/>
 *Para algumas propriedades são permitidos comprimentos negativos.*<br/>
 Existem 2 tipos de unidades de comprimento: a **absoluta** e a **relativa**.
 1. **Absoluto**: As unidades de comprimento absoluto são **fixas**, e *uma medida expressa em qualquer uma delas fará o elemento ser exibido exatamente com aquele tamanho*. **As unidades de comprimento absoluto não são recomendadas para uso na tela, pois os tamanhos dos dispositivos variam muito, mas podem ser usados se o meio de saída for conhecido, como por exemplo um layout de impressão.**

 | UNIDADE | DESCRIÇÃO |
 | --- | ---- |
 | **`cm`** | centímetros |
 | **`mm`** | milímetros |
 | **`in`** | polegadas |
 | **`px *`** | pixel – Ele indica que unidades pixel podem variar em dispositivos de alta resolução e impressoras, refletindo uma escala não tradicional. Devido às diferentes densidades de pixels em dispositivos (por exemplo, telas de alta resolução), o “px” é um “pixel de referência” que pode não corresponder a um pixel físico individual. Em resumo, o valor em `px *` garante que os elementos apareçam com dimensões visualmente consistentes, independentemente do dispositivo. |
 | **`pt`** | ponto – Originado do mundo da tipografia, 1pt equivale a 1/72 de uma polegada. Essa unidade é tradicionalmente usada na impressão, onde a medida física exata é importante. Em telas, seu uso é menos comum porque as dimensões absolutas (como pt, cm, in) não se adaptam bem às variações de tamanho e densidade das telas modernas.|
 | **`pc`** | pica – Também vinda da tipografia, a pica é uma unidade derivada dos pontos: 1pc equivale a 12pt. Assim, como 1pt ≈ 1.33px (visto que 96px/72pt ≈ 1.33), temos que 1pc corresponde aproximadamente a 16px. Essa unidade é mais usada em contextos de design gráfico e impressão.|

 2. **Relativo**: As unidades de comprimento relativo, como o próprio nome diz, **especificam um comprimento em relação a outra propriedade de comprimento**. *As unidades de comprimento relativas escalam melhor entre os diferentes meios de renderização, se adaptando melhor entre os diferentes tipos e tamanhos de telas.*

 | UNIDADE | DESCRIÇÃO |
 | --- | ---- |
 | **`rem`** | Relativo ao tamanho da fonte do elemento raiz – `2rem` significa **2 vezes o tamanho da fonte do `root`, ou seja, o documento "raiz"**. |
 | **`em`** | Relativo ao tamanho da fonte do elemento – `2em` significa **2 vezes o tamanho da fonte do elemento atual**. |
 | **`vw`** | Relativo a `x%` da **largura** da tela. |
 | **`vh`** | Relativo a `x%` da **altura** da tela. |
 | **`%`** | Relativo a `x%` do **elemento pai**. |
 | **`vmin`** | Relativo a `x%` da menor dimensão da janela ou interface gráfica – se a viewport tem 1200px de largura e 800px de altura, `1vmin` equivale a **8px** (1% de 800px). |
 | **`vmax`** | Relativo a `x%` da maior dimensão da janela ou interface gráfica – Usando a mesma viewport (1200px de largura e 800px de altura), `1vmax` equivale a **12px** (1% de 1200px). |
 | **`ex`** | Relativo à altura de "x" da fonte atual – raramente utilizado, `1ex` representa aproximadamente a altura de uma letra minúscula “x”. |
 | **`ch`** | Relativo a largura do "0", ou seja, o campo de entrada terá largura suficiente para aproximadamente a quantidade definida `x` dígitos "0". |

##### FONTES
 **Se quisermos usar um tipo de fonte específico que precise ser baixado, usamos a propriedade `@font-face` informando o caminho onde o arquivo `true-type-file` dessa fonte está localizado.**<br/>
 *Se a fonte estiver armazenada localmente é necessário que esteja na raiz, caso contrário não será usado no documento html.*
 ```css
 @font-face {
    font-family: 'fonte'; /* armazena a referência à fonte atrelando à variável na memória */
    src: url('Fonte.ttf'); /* informa o caminho do arquivo da fonte */
 }

 p {
    font: bold 2rem 'fonte'; /* informa para que use a fonte para as tags `p` */
 }
 ```

###### ESTILOS PARA LISTAS E LINKS**
 Os estilos para listas e links permitem personalizar a aparência de elementos comuns – listas e hiperlinks – de maneira a enriquecer o design do site sem alterar a estrutura. A seguir, veremos como controlar marcadores chamados de *bullets* em listas e como estilizar links, seguindo a regra "LoVe HAte”, que define os estados dos links.

**ESTILIZANDO LISTAS**<br/>
O CSS oferece as seguintes propriedades para alterar a aparência das listas:

- **`list-style-type`**<br/>
  Define o tipo de marcador. Valores comuns incluem:
  - **`disc`** (padrão para `<ul>`)
  - **`circle`**
  - **`square`**
  - **`decimal`** (padrão para `<ol>`)
  - **`none`** (sem marcador)
  ```css
  ul {
    list-style-type: square;
  }
  ol {
    list-style-type: decimal;
  }
  ```

- **`list-style-image`**<br/>
  Permite usar uma imagem como marcador.
  ```css
  ul.custom {
    list-style-image: url('meu-marcador.png');
  }
  ```

- **`list-style-position`**<br/>
  Controla a posição do marcador, podendo ser:
  - **`inside`**: o marcador fica dentro do bloco de conteúdo (o texto pode quebrar a linha).
  - **`outside`**: o marcador fica fora (padrão na maioria dos casos).
  ```css
  ul {
    list-style-position: inside;
  }
  ```

**Pseudo-elemento `::marker`**<br/>
O pseudo-elemento `::marker` permite alterar a cor, tamanho e outros aspectos dos marcadores das listas.<br/>
O código abaixo fará com que todos os marcadores de itens de lista fiquem vermelhos e um pouco maiores que o padrão.
```css
li::marker {
  color: red;
  font-size: 1.2em;
}
```

Também podemos combinar seletores para aplicar estilos apenas a listas específicas ou a determinados itens. Por exemplo, para remover os marcadores apenas de listas com uma classe específica:
```css
ul.sem-marcador {
  list-style: none;
  padding-left: 0;
}
```

Ou ainda, para alterar o marcador apenas de itens pares:
```css
ul li:nth-child(even)::marker {
  color: blue;
}
```

 **ESTILIZANDO LINKS**<br/>
Os links podem ser personalizados em seus diferentes estados – e a “regra *LoVe HAte*” é um lembrete da ordem que devemos definir os pseudo-estados dos links para que funcionem corretamente: **Link**, **Visited**, **Hover**, **Active**. Essa regra é uma convenção para definir os estilos de links na ordem correta, **pois a ordem no CSS influencia a forma como os estilos são aplicados**. Essa ordem evita que, por exemplo, o `:hover` seja sobrescrito por `:link` ou `:visited`.

- **`:link`**<br/>
  Seleciona links que ainda não foram visitados.
  ```css
  a:link {
    color: blue;
    text-decoration: none;
  }
  ```
- **`:visited`**<br/>
  Seleciona links que já foram visitados.
  ```css
  a:visited {
    color: purple;
  }
  ```
- **`:hover`**<br/>
  Aplica-se quando o mouse está sobre o link.
  ```css
  a:hover {
    color: red;
    text-decoration: underline;
  }
  ```
- **`:active`**<br/>
  Aplica-se quando o link está sendo ativado (clicado).
  ```css
  a:active {
    color: orange;
  }
  ```

Colocar os seletores nessa ordem garante que o navegador aplique corretamente os estados dinâmicos sem conflitos:
```css
/* Link não visitado */
a:link {
  color: blue;
  text-decoration: none;
}

/* Link já visitado */
a:visited {
  color: purple;
}

/* Quando o mouse passa sobre o link */
a:hover {
  color: red;
  text-decoration: underline;
}

/* Durante o clique */
a:active {
  color: orange;
}
```
- **Transições:**  
  Você pode adicionar transições para suavizar a mudança entre estados:
  ```css
  a {
    transition: color 0.3s, text-decoration 0.3s;
  }
  ```
- **Text-decoration:**  
  Além de mudar a cor, pode-se alterar a decoração do texto (underline, overline, etc.).
- **Uso de Variáveis:**  
  Para facilitar a manutenção, você pode definir cores em variáveis CSS e usá-las nos diferentes estados.
  ```css
  :root {
    --cor-link: blue;
    --cor-visitado: purple;
    --cor-hover: red;
    --cor-active: orange;
  }
  
  a:link {
    color: var(--cor-link);
  }
  a:visited {
    color: var(--cor-visitado);
  }
  a:hover {
    color: var(--cor-hover);
  }
  a:active {
    color: var(--cor-active);
  }
  ```

##### FLOAT, MARGIN E PADDING
 Ao trabalhar com a posição dos elementos em nossa página, existem várias propriedades para estilizá-los:

 - **`border`**: Modifica a borda de um elemento.
 - **`float`**: Altera a forma como os elementos são exibidos em uma página web. Ao aplicar este atributo, podemos posicionar o elemento da forma que desejarmos na páinga, pois ele não ocupa mais toda a largura da página, apenas do seu conteúdo, e o resto dos elementos são distribuídos ao redor dele, em vez de acima ou abaixo. Para que o elemento retorne a condição de `box-container`, usamos a propriedade `clear`.<br/>
 Apesar de não estar depreciado, é uma técnica antiga e atualmente está em desuso, muito por conta do advento de novas técnicas que oferem maior flexibilidade, controle e semântica como `flexbox` e `grid`, reduzindo muitos problemas que o `float` apresentava, como por exemplo a necessidade de `clearfix`. O uso deste artifício é recomendado em casos específicos, como fazer com que o texto envolva imagens em vez de criar layouts complexos.
 - **`margin`**: **Define o espaço entre a borda _"externa"_ da box-container e o que quer que esteja ao redor dela (elementos atribuídos com a propriedade `float` são exceção).** Cada elemento do site possui a orientação de margens na respectiva sequência:
   1. **`margin-top`**: Distância em relação ao elemento acima.
   2. **`margin-right`**: Distância em relação ao elemento a direta.
   3. **`margin-bottom`**: Distância em relação ao elemento abaixo.
   4. **`margin-left`**: Distância em relação ao elemento a esquerda.
 - **`padding`**: **Define o espaço entre o conteúdo _dentro_ da box-container e sua borda "interna".** Nálogo à propriedade `margin`, cada elemento no site possuí um acolchoamento na sequência:
   1. **`padding-top`**: Distância em relação a borda acima.
   2. **`padding-right`**: Distância em relação a borda à direta.
   3. **`padding-bottom`**: Distância em relação a borda abaixo.
   4. **`padding-left`**: Distância em relação a borda à esquerda.
```
┌────────────────────────────────────────────────────────────────────────────────┐
│                                       ^                                        │
│                                       | margin-top                             │
│                                       ┴                                        │
│            ┌──────────────────────────────────────────────────────┐            │
│            │                          ^                           │            │
│            │              padding-top |                           │            │
│   margin   │                          ┴                           │   margin   │
│    left    │             Lorem ipsum, dolor sit amet              |   right    |
| <--------┤ | <-------┤  consectetur adipisicing elit.  ├--------> │ ├--------> │
│            │  padding                 ┬                 padding   │            │
│            │   left    padding-bottom |                  right    │            │
│            │                          v                           │            │
│            └──────────────────────────────────────────────────────┘            │
│                                       ┬                                        │
│                                       | margin-bottom                          │
│                                       v                                        │
└────────────────────────────────────────────────────────────────────────────────┘
```
##### SELETORES
 Os seletores são padrões usados para manipular os elementos que se dejesa estilizar. Para se criar um estilo, as *instruções* são divididas em 2 grupos:
 - **seletores**: Especificam dentro da página web quais elementos serão afetados, sua declaração vai depender do seu tipo, se for um `id` por exemplo, deve-se usar `#` para especificar ao documento, se for uma `class` usa-se `.`, e assim por diante.
 - **bloco de declaração**: Contém entre chaves seguidas após o seletor `{...}` as regras de estilo para o elemento em questão.

 Para se criar instruções de estilo, *primeiro é declarado a qual **seletor** será aplicado, e em seguida o bloco de declaração é criado;* dentro das chaves, ou seja, do bloco de instrução, usamos um par de **propriedade** e **atributo** para realizar a estilização.
 - **propriedade**: *Define qual característica será alterada.* Como por exemplo `border`.
 - **atributo**: *Define a alteração a ser feita naquela propriedade*, como por exemplo aplicar a cor `#333`. 

 Vejamos alguns dos seletores usados:
 - **`<tag>`**: **Altera o estilo de todos os elementos de um mesmo tipo de tag.** Para declará-lo, basta utilizar o nome da tag:
 ```css
 h2 {
    color: lightblue;
 }
 ```
 **IMPORTANTE**: Para estilizar apenas uma palavra ou um grupo de palavras dentro de um texto, os envolvemos com a tag `span` e então a selecionamos para estilizar com CSS.
 - **`id`**: **Aplica as alterações apenas a um elemento específico.** Sua declaração é feita com um `#` antes do nome do `id` contido da tag que se deseja afetar:
 ```css
 #profileStatus {
    color: green;
 } 
 ```
 **IMPORTANTE**: *um elemento deve ter apenas 1 id ÚNICO.
 ```html
 <p id="profileBio"> ... </p>
 ```
 - **`class`**: **Aplica as alterações a um grupo de elementos da mesma classe.** Sua declaração é feita com um `.` antes do nome da `class` contido da tag que se deseja afetar:
 ```css
 .profile {
    color: orange;
 } 
 ```
 **IMPORTANTE**: *um elemento pode ter mais de uma classe atribuída.*
 ```html
 <p class="fontSize textColor"> ... </p>
 ```
 - **`*`**: **Seleciona TODOS os elementos no documento.**
 ```css
 * {
    margin: 0;
    padding: 0;
 }
 ```
 - **`identificador[atributo="valor"]`**: **Aplica o mesmo conjunto de declarações a vários seletores de uma vez.** Com isso, podemos selecionar elementos com um determinado valor de atributo. *Por exemplo, o seletor `[name="description"]` seleciona todos os elementos que possuem o atributo `name` com o valor `description`.*
 ```css
 [name="description"] {
     /* estilo aplicado a todos elementos com `name` "description" */
 }

 [required] {
     /* estilo definido para todos os elementos que possuem o atributo `required` */
 }

 a[target="_blank"] {
     /* estilo para todos os links com atributo `target="_blank"` */
 }

 [class~="destaque"] {
     /* seleciona elementos cujo atributo CONTÉM O VALOR COMO UMA PALAVRA ISOLADA em uma lista de classes que inclui "destaque" */
 }

 [class*="tmp"] {
     /* seleciona os títulos que CONTÉM O VALOR CORRESPONDENTE EM QUALQUER POSIÇÃO em uma lista de classes que inclui "tmp" */
 }

 a[href^="https://"] {
     /* seleciona e aplica a todos os elementos links que COMEÇAM com "https://" */
 }

 img[src$=".png"] {
     /* seleciona imagens cujo `src` TERMINA com ".png" */
 }

 p[lang|="en"] {
     /* 
     Seleciona elementos cuho atributo é exatamente o "valor" ou começa com "valor-",
     principalmente útil para atributos de idioma por exemplo, `lang="en"` ou `lang="en-US"`.
     
     Este exemplo seleciona parágrafos em inglês ou variantes.
     */
 }
```
 - **Combinar seletores.** *Isso é utilizado para restringir a seleção apenas a elementos específicos.*
 ```css
 h2, h3, .identification, #card {
     /*
     AGRUPADO: Ao listar os seletores separados por `,`,
     estamos agrupando-os para que o mesmo bloco de regras
     seja aplicado a cada um deles individualmente.
     */
 }

 article p {
     /*
     DESCENDENTE: Ao listar os seletores separados por espaço em branco,
     busca o elemento da esquerda para a direita dentro do elemento
     a fim de aplicar o estilo no último elemento da linha, como neste exemplo,
     seleciona todos os parágrafos `p` que estão dentro de um `article`.
     */
 }

 ul > li {
     /*
     FILHO: Seleciona apenas os elementos filhos imediatos.
     Por exemplo, este trecho seleciona apenas os `li` que são filhos diretos de `ul`.
     */
 }

 h1 + p {
    /*
    IRMÃO ADJACENTE: Seleciona o elemento imediatamente seguinte ao primeiro.
    Aqui por exemplo, selecionamos o primeiro parágrafo imediatamente após um h1.
    */
 }

 h1 ~ p {
     /*
     IRMÃO GERAL: Seleciona todos os elementos irmãos que seguem o primeiro,
     este exemplo seleciona todos os parágrafos que seguem um h1.
     */
 }
 ```
 - **pseudo-classes**: **São *modificadores* que permitem selecionar elementos com base em estados, posições ou características que não podem ser definidas apenas pelo nome da tag, classe ou ID.** Ou seja, elas ajudam a estilizar um elemento dependendo de, por exemplo, se ele está com o mouse sobre ele, se é o primeiro filho de seu pai, se está desabilitado, entre outros estados. Vejamos algumas das mais comuns:
   - **`:link`** – Seleciona links que ainda não foram visitados.
   - **`:visited`** – Seleciona links que já foram visitados.
   - **`:hover`** – Seleciona elementos quando o ponteiro do mouse está sobre eles.
   - **`:active`** – Seleciona o elemento no momento em que ele é ativado (por exemplo, durante um clique).
   - **`:focus`** – Seleciona o elemento que atualmente tem o foco (como um input selecionado).
   - **`:first-child`** – Seleciona um elemento que é o primeiro filho de seu elemento pai.
   - **`:last-child`** – Seleciona o último filho.
   - **`:nth-child(an+b)`** – Seleciona os filhos que se encaixam na fórmula (por exemplo, `:nth-child(2n)` para pares).
   - **`:nth-last-child(an+b)`** – Como o anterior, mas contando a partir do final.
   - **`:only-child`** – Seleciona um elemento se ele for o único filho de seu pai.-
   - **`:first-of-type`** – Seleciona o primeiro elemento de um determinado tipo entre seus irmãos.
   - **`:last-of-type`** – Seleciona o último elemento de seu tipo.
   - **`:nth-of-type(an+b)`** e **`:nth-last-of-type(an+b)`** – Selecionam elementos de um mesmo tipo de acordo com uma fórmula.
   - **`:only-of-type`** – Seleciona um elemento se ele for o único do seu tipo entre os irmãos.
   - **`:empty`** – Seleciona elementos que não possuem nenhum filho (exceto nós de texto vazios).
   - **`:target`** – Seleciona o elemento que é alvo (target) da URL (por exemplo, quando você usa uma âncora).
   - **`:enabled`** e **`:disabled`** – Selecionam elementos de formulário que estão habilitados ou desabilitados.
   - **`:checked`** – Seleciona inputs (como checkboxes ou radios) que estão marcados.
   - **`:indeterminate`** – Seleciona inputs que estão em um estado indeterminado.
   - **`:default`** – Seleciona o elemento padrão dentro de um grupo de inputs.
   - **`:valid`** e **`:invalid`** – Selecionam inputs com valores válidos ou inválidos, de acordo com as restrições do elemento.
   - **`:in-range`** e **`:out-of-range`** – Selecionam inputs cujo valor está dentro ou fora de um intervalo definido.
   - **`:required`** e **`:optional`** – Selecionam inputs que são obrigatórios ou opcionais.
   - **`:read-only`** e **`:read-write`** – Selecionam elementos que não podem ou podem ser editados.
   - **`:placeholder-shown`** – Seleciona inputs que estão exibindo o placeholder.- **`:root`** – Seleciona o elemento raiz do documento (geralmente o `<html>`).
   - **`:lang()`** – Seleciona elementos com base no valor do atributo `lang`.
   - **`:not()`** – Seleciona elementos que não correspondem ao seletor especificado (a versão aprimorada permite listas de seletores).
   - **`:is()`** – Seleciona um elemento se ele corresponder a qualquer um dos seletores listados, simplificando seletores complexos.
   - **`:where()`** – Funciona como o `:is()`, porém sempre com especificidade zero, facilitando a manutenção de estilos.
   - **`:focus-visible`** – Seleciona elementos que devem mostrar um foco visível (útil para acessibilidade).
   - **`:focus-within`** – Seleciona um elemento que contém um descendente com foco.
   - **`:has()`** – Permite selecionar um elemento com base em seus descendentes (ainda experimental em alguns navegadores).
   - **`:any-link`** – Seleciona todos os links, combinando o comportamento de `:link` e `:visited`.

 - **pseudo-elementos**: **Permitem que estilizar partes específicas de um elemento, “quebrando” sua estrutura interna sem a necessidade de marcar o HTML com elementos extras.** Eles são escritos normalmente com 2 pontos `valor::pseudo-elemento` – embora, por razões históricas, alguns pseudo-elementos também possam ser escritos com apenas um “:” e ainda funcionar.
   - **`::before` e `::after`** – Permitem inserir conteúdo (usando a propriedade `content`) antes ou depois do conteúdo real do elemento. São muito úteis para adicionar decorações ou elementos visuais sem alterar o HTML.
   - **`::first-line`** – Aplica estilos somente à primeira linha do texto de um bloco. Essa pseudo-classe é especialmente útil para ajustar tipografia ou espaçamentos na primeira linha de um parágrafo.
   - **`::first-letter`** – Permite estilizar a primeira letra de um bloco de texto. É bastante usado para criar efeitos de “drop cap” (grande letra capital) em inícios de parágrafos.
   - **`::selection`** – Define os estilos (como cor de fundo e de texto) para a parte do conteúdo que o usuário seleciona com o cursor.
   - **`::placeholder`** – Aplica estilos ao texto de placeholder em campos de formulário, como `<input>` e `<textarea>`.
   - **`::marker`** – Permite estilizar os marcadores (bullets ou números) de listas.
   - **`::backdrop`** – Usado para estilizar o fundo exibido por trás de elementos que possuem uma sobreposição, como o elemento `<dialog>` quando está em modo de exibição.
   - **`::file-selector-button`** – Específico para inputs do tipo file, esse pseudo-elemento possibilita a customização do botão de seleção de arquivos.
   - **`::slotted()`** – Utilizado em componentes com Shadow DOM para selecionar e estilizar os elementos que foram distribuídos em slots.
   - **`::part()`** – Permite que o desenvolvedor estilize partes específicas de um componente que usa Shadow DOM, quando o componente define partes nomeadas através do atributo `part`.
   - **`::cue`** – Utilizado para estilizar as legendas de vídeos que usam WebVTT.

 Essa variedade torna o CSS muito poderoso para aplicar estilos de forma precisa, sem a necessidade de alterar a estrutura HTML.<br/>
 _A sintaxe atual recomenda **o uso de dois pontos duplos `::` em pseudo-elementos para diferenciá-los das pseudo-classes, que usam apenas um `:`**. Contudo, por razões históricas, navegadores aceitam tanto :before quanto ::before._

##### CORES
 Podem ser aplicadas a quase qualquer coisa no documento HTML.
 - **`rgb()`**: Onde o **red**, **green** e **blue** são *números inteiros desde* **0 a 255**, *ou porcentagens de* **0% a 100%**.
 ```css
 .class {
    background-color: rgb(42, 44, 156);
 }
 ```
 - **`#rgb`**: Onde **red**, **green** e **blue** *são números hexadeximais de* **00 a FF**.
 ```css
 .class {
    background-color: #353E9A;
 }
 ```
 - **`rgba()`**: Extensão do `rgb()` com um *canal alfa*, onde *o parâmetro `alfa` é um número entre **0.0 (totalmente transparente) a 1.0 (totalmente opaco)***.
 ```css
 .class {
    background-color: rgba(0, 0, 255, 0.5);
 }

 #id {
    /*
    Com a sintaxe moderna, também é possível
    separar os valores por espaços e
    indicar a opacidade com a barra.
    */
    background-color: rgb(255 0 0 / 50%);
 }
 ```
 - **`hsl`**: Este modelo define a cor com base em 3 parâmetros:
   1. **`hue` matriz**: Ângulo de *0 a 360°*, que **representa a cor no círculo cromático**.
   2. **`saturation` saturação**: *Intensidade da cor*, de **0% (sem cor, tons de cinza) a 100%**.
   3. **`lightness` brilho**: *Quão claro ou escuro é o tom*, de **0% (preto) a 100% (branco).**
 ```css
 #hsl {
    /* neste exemplo o matiz 0 (°) define a cor base, com 100% de saturação e 50% de brilho */
    background-color: hsl(0, 100%, 50%);
 }
 ```
 - **`hsla`**: Adiciona um canal alfa para definir a opacidade.
 ```css
 #hsla {
    background-color: hsla(120, 100%, 50%, 0.5);
 }
 ```
 - **`hsv`**: Outra forma de representar cores, muito utilizada em ferramentas de design e em alguns preprocessadores como o LESS para facilitar a manipulação das cores. Enquanto o `hsl` usa *`lightness`* para definir o quão claro ou escuro é o tom, o `hsv` utiliza *`value`* para representar a intensidade e luminosidade máxima da cor.
   1. **`hue` matriz**: Ângulo de *0 a 360°*, que **representa a cor no círculo cromático**.
   2. **`saturation` saturação**: *Intensidade da cor*, de **0% (sem cor, tons de cinza) a 100%**.
   3. **`value` valor**: Indica a *intensidade luminosa da cor*, **onde 0% signifa ausência de brilho e 100% é o máximo de brilho que a cor pode ter**.
   ```css
   div {
      /*
      Vermelho com menor saturação, mais próximo de um rosa claro.
      */
      background-color: hsv(0, 50%, 100%);
   }
   ```
 - **`hwb` hue-whiteness-blackness**: É uma alternativa ao `HSL` e `HSV`, e funciona da seguinte forma:
   1. **`hue` matriz**: Ângulo de *0 a 360°*, que **representa a cor no círculo cromático**.
   2. **`whiteness` claridade**: Representa a *porcentagem de BRANCO* **misturado à cor**.
   3. **`blackness` escuridão**: Representa a *porcentagem de PRETO* **misturado à cor**.
   ```css
   div {
      /* neste exemplo o matiz 90 (°) define a cor base, com 10% de branco e 10% de preto */
      background-color: hwb(90 10% 10%);
   }
   ```
 - **`lch`**: Este modelo foi desenvolvido para aproximar a forma como percebemos as cores, garantindo que valores iguais de luminosidade resultem em uma percepção similar de clareza, independentimente do matiz.
   1. **`lightness` luminosidade**: *Valor em porcentagem* de **0% para preto e 100% para branco**.
   2. **`chroma` croma**: Representa a *intensidade e pureza da cor*, **valor maiores indicam cores mais vibrantes e saturadas**.
   3. **`hue` matriz**: Ângulo de *0 a 360°*, que **determina o tom**.
   ```css
   div {
      /*
      Define uma cor com 50% de luminosidade, um croma de 80 e matiz de 20°.
      O valor de 20° indica o tom e pode variar conforme o efeito desejado.
      */
      background-color: lch(50% 80 20);
   }

   ```
 - **`display-p3`**: O Display P3 é *um espaço de cores com uma gama mais ampla que o tradicional sRGB*. Ele permite que dispositivos (como alguns smartphones e monitores modernos) exibam cores mais vibrantes e saturadas. Para usar esse espaço, utiliza-se a **função `color()`** *junto com o identificador do espaço de cores*. Para notar as diferenças, seu dispositivo precisa suportar o Display P3. Em dispositivos que trabalham somente com sRGB, as cores podem ser convertidas automaticamente, mas sem a mesma vivacidade.
 ```css
 div {
    /*
    Especifica um vermelho intenso no espaço Display P3.
    Os valores aqui variam de 0 a 1.
    */
    background-color: color(display-p3 1 0 0);
 }
 ```
   - **`current-color`**: Permite *reutilizar o valor atual da propriedade `color` em outras propriedades* **sem precisar repetir o valor da cor**. Isso é especialmente útil para manter a coerência do design, por exemplo:
   ```css
   div {
      color: #111;
      border: 1px solid currentcolor;
   }
   ```

##### GRADIENTES
 Os gradientes permitem criar transições suaves entre 2 ou mais cores. Podemos aplicar um gradiente de cor a várias tipos de elementos.<br/>
 1. Para aumentar o efeito de um gradiente, podemos *usar cores com alfa* como **`rgba()`** ou **`hsla()`**, *criando efeitos de fade e sobreposições*.
 2. *Gradientes são tratados como imagens*, ou seja, **são funções que retornam um valor do tipo imagem `image`. _Isso significa que, em princípio, eles podem ser usados em qualquer propriedade que aceite um valor de imagem._** então os definimos nas propriedades:
    - **`background-image`** – *ou na propriedade abreviada **`background`***
    - **`border-image`**
    - **`list-style-image`**
    - **`mask-image`** – *ou em variantes como **`-webkit-mask-image`***
 3. **TIPOS DE GRADIENTE**<br/>
    O CSS define atualmente 4 funções principais para gradientes:
    - **Linear Gradients**: As cores *mudam ao longo* de uma **linha reta**.
    - **Radial Gradients**: As cores se *irradiam a partir de um ponto central* podendo ser **circular ou elíptico**.
        - **Forma**: **`circle`** *para um gradiente circular* ou **`ellipse`** **para um gradiente elíptico**. *Se omitido, o navegador escolhe o que melhor se adapta ao elemento.*
        - **Tamanho**: Pode ser definido com palavras-chave como **`closest-side`**, **`farthest-corner`**, etc, ou **usando um valor de comprimento**.
        - **Posição**: Define o *ponto de origem do gradiente*, por exemplo, **`at center`** ou **`at 20% 70%`**.
    - **Conic Gradients**: As cores *se distribuem* **em torno de um ponto central em um círculo**, como um gráfico de pizza por exemplo.
        - **`from angle`:** Especifica o *ângulo inicial*, por exemplo, **`from 0deg`** ou **`from 45deg`**.
        - **`at position`:** Define a *posição central* do gradiente, por exemplo, **`at center`** ou **`at 20% 20%`**.
    - **Repeating Gradients**: São versões *“repetitivas” dos gradientes* (linear, radial ou conic), **que se repetem infinitamente para criar padrões**.
        - As funções **`repeating-linear-gradient()`**, **`repeating-radial-gradient()`** e **`repeating-conic-gradient()`** *permitem criar gradientes que se repetem indefinidamente*.
 4. **DIREÇÃO E ÂNGULO**<br/>
 Podemos especificar a direção usando **palavras-chave**, por exemplo, **`to right`** e **`to bottom left`**, ou um **ângulo** como por exemplo, **`45deg`** ou **`180deg`**. *Se omitido, o gradiente vai de cima para baixo equivalente a `to bottom`.*
 5. **PARADAS DE COR**<br/>
 *São os pontos onde as cores são definidas.* **Podemos apenas listar as cores ou especificar também sua posição em porcentagem ou medida.**
 6. **MÚLTIPLOS GRADIENTES**<br/>
    É possível empilhar vários gradientes, e até mesmo gradientes com outras imagens, separando-os por vírgula na propriedade `background`. O primeiro declarado fica no topo.<br/>
    Além disso, a propriedade **`background-blend-mode`** pode ser usada para definir como eles se misturam. Pode-se aplicar quantos gradientes quiser, basta separá-los por vírgula. A propriedade **`background-blend-mode`** permite definir como as camadas de fundo chamadas *backgrounds* — sejam elas definidas por imagens, gradientes ou cores sólidas — se misturam entre si. Essa propriedade aceita valores do tipo **`blend-mode`**, que são os mesmos modos de mesclagem que podemos encontrar em softwares de edição de imagem como o Photoshop por exemplo. Neste exemplo, os dois gradientes são renderizados um sobre o outro e mesclados com o modo **`multiply`**. Os modos de mesclagem especificados na especificação **CSS Compositing and Blending Level 1** são: 
    - **`normal`**
    - **`multiply`**
    - **`screen`**
    - **`overlay`**
    - **`darken`**
    - **`lighten`**
    - **`color-dodge`**
    - **`color-burn`**
    - **`hard-light`**
    - **`soft-light`**
    - **`difference`**
    - **`exclusion`**
    - **`hue`**
    - **`saturation`**
    - **`color`**
    - **`luminosity`**
    - **`initial`**
    - **`inherit`**
    - **`unset`**
    - **`revert`**

 Para usarmos o gradiente, devemos especificar em ordem:<br/>
 **tipo de gradiente** > **direção do gradiente** > **[cor inicial] [opacidade em %]** > **[cor final] [opacidade em %]**
 ```css
 selector {
    property: gradient-type(([<direção> ou <ângulo>] || [<forma> <tamanho>?] [at <posição>]? || [from <ângulo>] [at <posição>]?), <parada-de-cor1>, <parada-de-cor2>, ...);
 }
 ```

 - **`linear-gradient`**

 **Exemplo 1 – Gradiente de cima para baixo (padrão):**
 ```css
 .element {
   background: linear-gradient(red, yellow);
 }
 ```

 **Exemplo 2 – Gradiente da esquerda para a direita:**
 ```css
 .element {
   background: linear-gradient(to right, blue, pink);
 }
 ```

 **Exemplo 3 – Gradiente com ângulo personalizado:**
 ```css
 .element {
   background: linear-gradient(45deg, green, purple);
 }
 ```
 
 **Exemplo 4 – Gradiente com múltiplas paradas de cor:**
 ```css
 .element {
   background: linear-gradient(to right, red, orange 30%, yellow 60%, green);
 }
 ```

 - **`radial-gradient`**: 

 **Exemplo 1 – Gradiente radial simples:**
 ```css
 .element {
   background: radial-gradient(circle, red, blue);
 }
 ```

 **Exemplo 2 – Gradiente radial com posição personalizada:**
 ```css
 .element {
   background: radial-gradient(ellipse farthest-side at 30% 70%, yellow, green);
 }
 ```

 - **`conic-gradient()`**: 

 **Exemplo 1 – Gradiente conic simples:**
 ```css
 .element {
   background: conic-gradient(red, yellow, green, blue, red);
 }
 ```

 **Exemplo 2 – Gradiente conic com ângulo inicial e posição:**
 ```css
 .element {
   background: conic-gradient(from 45deg at center, purple, pink, orange, purple);
 }
 ```

 **GRADIENTE APLICADO EM DIFERENTES PROPRIEDADES**
 - Gradiente em **`background-image`**.<br/>
 Este é o uso mais comum, *definir um gradiente para o fundo do elemento*. **Aqui o gradiente está aplicado como imagem de fundo do elemento.**

 ```css
 .exemplo-background {
   /* Um gradiente linear da esquerda para a direita, de vermelho a azul. */
   background-image: linear-gradient(to right, red, blue);
   /* Fallback: cor sólida se o navegador não suportar gradientes. */
   background-color: red;
 }
 ```

 - Gradiente em **`border-image`**.<br/>
 Pode-se **usar gradientes para criar bordas com transições de cor**. *Note que para utilizar border-image é preciso definir uma borda (mesmo que transparente) e depois usar a função de gradiente.*

 ```css
 .exemplo-border {
   /* Define uma borda sólida com largura (necessário para que `border-image` funcione). */
   border: 10px solid transparent;
   /* Usa um gradiente para a imagem da borda; o valor "1" é o `slice`. */
   border-image: linear-gradient(to right, red, blue) 1;
 }
 ```

 - Gradiente em **`list-style-image`**.<br/>
 Embora menos comum, podemos **usar um gradiente para substituir o marcador de lista**. *Esse uso depende do navegador e do contexto, mas funciona onde a propriedade aceita uma imagem.*

 ```css
 .exemplo-lista li {
   /* Usa um gradiente como imagem para o marcador da lista.
      Lembrando que o marcador tem tamanho definido (por exemplo, 1em x 1em). */
   list-style-image: linear-gradient(to bottom, red, blue);
 }
 ```

 - Gradiente em **`mask-image`** (ou -webkit-mask-image).<br/>
 **Gradientes também podem ser usados como máscaras, definindo quais partes do elemento serão visíveis.** *Geralmente, uma máscara utiliza gradientes para criar transições suaves de opacidade. Na máscara, as áreas onde a máscara for preta (ou opaca) são totalmente visíveis e as áreas transparentes ficam ocultas.*

 ```css
 .exemplo-mask {
   width: 200px;
   height: 200px;
   /* Um fundo para o elemento (pode ser uma imagem ou cor). */
   background: url('imagem.jpg') center/cover no-repeat;
   
   /* Define uma máscara que vai do transparente (no topo) ao opaco (na base). */
   mask-image: linear-gradient(to bottom, transparent, black);
   /* Para navegadores baseados em WebKit, use o prefixo. */
   -webkit-mask-image: linear-gradient(to bottom, transparent, black);
 }
 ```

 **APLICANDO MÚLTIPLOS GRADIENTES EM UM MESMO ELEMENTO**

 **Exemplo – Botão com Gradiente:**
 ```css
 .botao-gradiente {
   background: linear-gradient(90deg, #ff7e5f, #feb47b);
   border: none;
   color: white;
   padding: 10px 20px;
   border-radius: 4px;
   cursor: pointer;
 }
 .botao-gradiente:hover {
   background: linear-gradient(90deg, #feb47b, #ff7e5f);
 }
 ```

 **Exemplo – Fundo com Linear Gradient e Imagem:**
 ```css
 .fundo-completo {
   background: linear-gradient(to right, rgba(0, 0, 0, 0.5), transparent),
               url('imagem.jpg') center/cover no-repeat;
 }
 ```

 **Exemplo – Linear Gradient aplicado vertical e horizontalmente:**
 - Usando **`background-blend-mode`** com mais de um gradiente aplicado.<br/>
 O modo de mesclagem **`multiply`** combina as camadas de forma que as cores se influenciem mutuamente, resultando em uma mescla onde as áreas de sobreposição apresentam tonalidades mais intensas e contrastantes.
 ```css
 .exemplo-multiplos {
   /* Dois gradientes aplicados juntos:
      - O primeiro: de vermelho semi-transparente a azul semi-transparente (horizontal).
      - O segundo: de amarelo a verde (vertical). */
   background-image:
     linear-gradient(to right, rgba(255,0,0,0.5), rgba(0,0,255,0.5)),
     linear-gradient(to bottom, yellow, green);
   /* Define o modo de mesclagem dos backgrounds. */
   background-blend-mode: multiply;
 }
 ```

 - Usando **`background-blend-mode`** com múltiplos backgrounds.<br/>
 Vários fundos podem ser definidos em **`background-image`** e, em seguida, especificar um modo de mesclagem para cada camada, separando os valores por vírgula. Nesse exemplo, o **primeiro fundo**, *o gradiente*, *será mesclado* **com o segundo** que é *a imagem*, usando o modo **`multiply`** na camada inferior e **`screen`** na camada superior. *Lembrando que a ordem segue a declaração dos backgrounds*:

 ```css
 .exemplo-multiplo {
   /* Dois backgrounds: um gradiente linear e uma imagem. */
   background-image: 
     linear-gradient(to right, rgba(255,0,0,0.5), rgba(0,0,255,0.5)),
     url('fundo.jpg');
   /* Mescla a camada do gradiente com a imagem de fundo. */
   background-blend-mode: multiply, screen;
 }
 ```

 - Usando **`background-blend-mode`** com apenas uma camada de fundo.<br/>
 Mesmo que haja apenas uma imagem (ou gradiente) e uma cor de fundo, podemos usar o blend mode para definir como a cor de fundo se mistura com a imagem. Nesse caso, o gradiente é mesclado com a cor de fundo branca usando o modo **`overlay`**:

 ```css
 .exemplo-simples {
   background-color: #fff;
   background-image: linear-gradient(to right, red, blue);
   /* Mescla o gradiente com a cor de fundo. */
   background-blend-mode: overlay;
 }
 ```

##### TRANSIÇÕES

##### IMAGENS

##### POSICIONAMENTO

##### MODELO BOX-CONTAINER**
 Existem 2 tipos de propriedades em um documento:
 1. **`block`**: Causam uma quebra de linha acima e abaixo da tag ocupando 100% da largura da página; a maioria das tags são deste tipo. Exemplos de tags tipo `block`: `h1` ... `h6`, `p`, `div`, `br`, entre outras.
 2. **`in-line`**: Não geram uma quebra de linha, seu espaço ocupado é o mesmo que o tamanho do conteúdo dentro da tag. Exemplos de tags tipo `in-line`: `span`, `strong`, `em`, `a`, `img`, entre outas.

 Para realizar a conversão de um tipo de elemento deve-se alterar a propriedade `display` do seletor em questão:
 ```css
 .id {
    display: inline;
 }
 ```

#### FLEXBOX
 Tradicionalmente, o CSS tem usado posicionamento `static`, `relative`, `absolute`, e etc, além de elementos `block` ou `in-line`, `float` e derivados, que, em termos gerais, são sistemas de criação de design engessados e pouco flexíveis, que atualmente não se ajustam aos desafios enfrentados hoje com sistemas de desktop, dispositivos móveis, multiplas resoluções e mais.<br/>
 Para atender essa demanda, surgiu o **`flexbox`**, que é um sismte ade elementos flexíveis, que vem com a ideia de esquecer estes mecanismos para usar uma mecânica mais poderosa, limpa e personalizável, na qual os elementos do documento são automaticamente adaptados e manipulados, tornando mais fácil a personalização. O `flexbox` foi especialmente projetado para criar *estruturas unidimensionais*. A estrutura de um `flexbox` segue o seguinte padrão:
```
┌─────────────────────────────────────────────┐
|                  ┌─> item                   |
| ┌────┐ ┌────┐ ┌──┴─┐            |           |
| ┤----├-┤----├-┤----├------┬----─┼─> eixo    |
| └────┘ └────┘ └────┘ eixo<┘     | principal |
|                   secundário                |
└───────────┬─────────────────────────────────┘
            v
        container
```
 - **container**: É o **elemento principal** que conterá cada um dos *flex items*. Ao contrário de outras estruturas, como regra geral, *no `flex` definimos as propriedades para o elemento pai*.
 - **eixo principal**: As *flexboxes* devem ter uma orientação principal específica. Por padrão **o eixo principal do recipiente flexbox é horizontal**, como uma *"fileira"*.
 - **eixo secundário**: Da mesma forma, os recipientes flex devem possuir uma segunda orientação perpendicular à principal, então se a horientação primária for horizontal, a **orientação do eixo secundário será vertical**.
 - **item**: **É cada um ds *filhos* – ou `children` como são chamados – que o recipiente terá em seu interior.**

 ```html
 <div class="container"> <!-- flex container -->
    <!-- flex items -->
    <div class="item item-1">1</div>
    <div class="item item-2">2</div>
    <div class="item item-3">3</div>
 </div>
 ```
##### SINTAXE
 Para ativarmos o modo **`flexbox`**, utilizamos a propriedade de display do elemento repecipiente e especificamos o valor **`flex`** ou **`inline-flex`**.
 1. **`flex`**: Configura um recipiente em bloco, semelhante a **`block`** que ocupa toda a largura do elemento pai.
 2. **`inline-flex`**: Configura um recipiente em linha, semelhante a **`inline-block`** que ocupa apenas o espaço do conteúdo.
 ```css
 .container {
    background-color: lightblue;
    display: flex /* inline-flex */;
 }
 .item {
    background-color: grey;
    color: white;
    border: 1px solid black;
    width: 30px;
    height: 30px
 }
 ```

 Por padrão, os elementos são todos dispostos *"grudados"* lado a lado na mesma linha.
```
display: flex
┌────┬────┬────┐─────────────────────────────┐
|1   |2   |3   |🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
└────┴────┴────┘─────────────────────────────┘

display: inline-flex
┌┌────┬────┬────┐┐
||1   |2   |3   ||
└└────┴────┴────┘┘
```

##### DIREÇÃO DO EIXO
 Existem 2 propriedades principais para manipular a direção e o comportamento dos itens ao longo do **eixo principal** do repcipiente:
 1. **`flex-direction`**<br/>
 Usando as propriedades do `flex-direction`, podemos mudar a orientação do eixo principal do recipiente para ser orientado **horizontalmente (padrão)** ou **verticalmente**.
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="4"><code>flex-direction</code><br/>Muda a orientação do eixo principal.</th>
        <td>row</td>
        <td>Define a direção do eixo principal para HORIZONTAL com os itens em ORDEM DO PRIMEIRO AO ÚLTIMO.</td>
    </tr>
    <tr>
        <td>row-reverse</td>
        <td>Define a direção do eixo principal para HORIZONTAL com os itens em ORDEM DO ÚLTIMO AO PRIMEIRO.</td>
    </tr>
    <tr>
        <td>column</td>
        <td>Define a direção do eixo principal para VERTICAL com os itens em ORDEM DO PRIMEIRO AO ÚLTIMO.</td>
    </tr>
    <tr>
        <td>column-reverse</td>
        <td>Define a direção do eixo principal para VERTICAL com os itens em ORDEM DO ÚLTIMO AO PRIMEIRO.</td>
    </tr>
</table>

 Além disso, podemos incluir o sufixo **`reverse`** para indicar uma *colocação dos itens em ordem inversa*.<br/>
  ```css
 .container {
    background-color: lightblue;
    display: flex;
    flex-direction: column;
 }
 ```
 Isso nos permite um alto nível de controle sobre a ordem dos elementos em uma página.
```
flex-direction: row                              flex-direction: row-reverse
┌────┬────┬────┐─────────────────────────────┐   ┌─────────────────────────────┌────┬────┬────┐
|1   |2   |3   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   |🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦  |3   |2   |1   |
└────┴────┴────┘─────────────────────────────┘   └─────────────────────────────└────┴────┴────┘

flex-direction: column                           flex-direction: column-reverse
┌────┐───────────────────────────────────────┐⠀⠀ ┌────┐───────────────────────────────────────┐
|1   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   |1   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
├────┤ 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   ├────┤ 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
|2   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   |2   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
├────┤ 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   ├────┤ 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
|3   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|   |3   | 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦|
└────┘───────────────────────────────────────┘⠀⠀ └────┘───────────────────────────────────────┘
```
 2. **`flex-wrap`**<br/>
 Usando o **`flex-wrap`** podemos especificar o comportamento do recipiente no que diz respeito a *evitar que ele se ajuste com uma quebra de linha* com o **`nowrap`**, ou *permitir que ele o faça com **`wrap`**, que "adiciona" mais uma linha para comportar o conteúdo*.
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="3"><code>flex-wrap</code><br/>Impede ou permite a quebra de linha para ajustar os elementos.</th>
        <td>nowrap</td>
        <td>Define os itens em uma ÚNICA DIREÇÃO, impedindo uma quebra de linha, ou que o container transborde.</td>
    </tr>
    <tr>
        <td>wrap</td>
        <td>Define os items no modo MULTILINHA, permitindo que o container transborde e adcione mais espaço para quebras de linha.</td>
    </tr>
    <tr>
        <td>wrap-reverse</td>
        <td>Define os items no modo MULTILINHA, permitindo que o container transborde e adcione mais espaço para quebras de linha invertendo a direção de ordem dos itens.</td>
    </tr>
</table>

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.1-fundamentos_da_web/protocolos_http_https.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_css_bootstrap_tailwind.md">next</a>