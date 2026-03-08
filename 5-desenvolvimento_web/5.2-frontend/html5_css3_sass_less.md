# DESENVOLVIMENTO WEB
 O desenvolvimento web é o processo de criação de websites e aplicativos para a web, e envolve diversas tecnologias e linguagens que trabalham junstas para criar páginas web interativas e funcionais. Para começarmos, precisamos deixar claro que: *Internet* e *Web (World Wide Web)* **não são a mesma coisa**. A Internet é a estrutura na rede que conecta os dipositivos uns aos outros, a fim de estabelecer uma ponte para a counicação entre seus usuários; já a Web é a plataforma onde as aplicações e websites podem ser acessadas e usadas. Um *website* é um *site – localização* na **World Wide Web** que contém documentos, ou *páginas web* hierarquicamente organizadas. Cada documento pode conter textos, imagens, gráficos e etc, que aparecem como informações digitais em uma tela. Cada website tem sua **Home Page**, *que é o primeiro documento que o usuário vê ao entrar no website* digitando o nome de domínio no navegador. O termo *página web* é às vezes usado equivocadamente para se referir a um website. Uma **Página Web** *é parte de um website e é um único arquivo com um nome atribuído*, enquanto um **WebSite** *é uma coleção de arquivos chamada Páginas Web*. Se o compararmos a um livro, um *website* seria o livro inteiro, e uma *página web* seria um capítulo e não uma página do livro, porque muitas vezes é necessário percorrer a tela para ver todo o conteúdo de uma página web, assim como em um livro percorremos várias páginas para ver todo o conteúdo de um capítulo.<br/>
 Uma *webpage* é uma fonte de informações que é adequeada à Word Wide Web e que pode ser acessada por um navegador web, isso quer dizer que ela é um documento feito para atender aos requisitos da rede mundial de computadores, e deve ser capaz de ser visualizada a partir de um programa específico para este fim.<br/>
 Uma *página web*, também conhecida como *página da Internet*, é um documento adaptado para a web e geralmente faz parte de um website, e sua principal característica são os *hyperlinks* para outras páginas, que é a base da web. Dentro de uma página web, podemos encontrar todo tipo de conteúdo. Uma das divisões que podemos fazer entre todos os tipos de páginas web existentes poderia ser a diferença entre *páginas estáticas* e *páginas dinâmicas*.<br/>
 Tanto as webpages quanto websites completos podem estar localizadas em um computador local ou remoto que as disponibiliza através de um *servidor web*. O acesso a elas pode ser restringido apenas ao próprio computador, à redes locais ou ainda ser disponibilizada na rede pública mundial – *a internet*.<br/>
 Originalmente, as páginas web eram arquivos estáticos de texto armazenados em servidores web, entretanto, atualmente é comum encontrar servidores que geram dinamicamente os arquivos HTML de acordo com a requisição do navegador, além de existirem ainda maneiras de se obter comportamento dinâmico pelo lado do cliente por meio de implementações de Ajax e JavaScript por exemplo.<br/>
 Para entender a comunicação mais básica que ocorre na **internet**, devemos saber que ela envolve um **servidor web**, como *ISS*, *Apache* ou *NGINX*, que contém os arquivos HTML, CSS e JavaScript das páginas web, e um cliente, neste caso *o navegador*, podendo ser o *Chrome, Firefox, Edge* ou algum entre vários existentes no mercado. O servidor web e o cliente comunicam-se via **H**yper**T**ext **T**ransfer **P**rotocol, que *é um conjunto de regras que permitem a transferência de informações via arquivos na Internet*. A comunicação entre eles começa quando o usuário, através do navegador, entra no *endereço de um website* conhecido como **U**niform **R**esource **L**ocator, gerando uma solicitação ao servidor web onde a página está hospedada – via requisição HTTPS – para encontrar os arquivos dela. O servidor web então responde à solicitação e retorna os arquivos do site – resposta HTTPS. A resposta chega ao navegador como uma cópia HTML da página web, e é neste ponto que o usuário pode vê-la em sua tela.

## DESENVOLVIMENTO FRONT-END
 O desenvolvimento *front-end tem como foco de trabalho a tradução do design e das funcionalidades propostas para uma* **interface de usuário (GUI – Graphic User Interface)** concentrando-se no manuseio de **[HTML](#html)**, **[CSS](#css)** e **[JAVASCRIPT](https://github.com/raphaelkaique1/study/blob/main/2-linguagens_de_programacao/2.2-javascript/sintaxe_e_funcionalidades_ecmascript.md)** (geralmente são as linguagens mais utilizadas para este fim). Para isso, usasse uma série de *bibliotecas*, *frameworks* e *padrões de design* criados e testados pela comunidade, com os quais é possível trabalhar de forma eficiente.<br/>
 Quando uma página web é carregada no navegador, os códigos HTML, CSS e JavaScript estão sendo executados dentro de um ambiente de execução, a guia do navegador. Isso é como uma fábrica que pega a matéria prima, ou seja o código, e transforma em um produto, que é a página web.<br/>
 O objetivo principal do desenvolvedor front-end está relacionado à otimização dos recursos consumidos por uma aplicação, através do servidor. Um exemplo disso é o *tempo de carga (carregamento de "tela")*. Quanto menor o tempo de carga, melhor será a experiência do usuário. Meio segundo de tempo de carregamento de página pode afetar significativamente a conversão do usuário. Portanto, o tempo é essencial para qualquer website. Ninguém gosta de esperar, especialmente os usuários que estão cada vez mais acostumados à velocidade. O desenvolvedor do front-end é responsável por melhorar os tempos de carregamento, assim melhorando a experiência do usuário e, por fim, como objetivo final obter mais leads ou vendas.<br/>
 A manutenção e escrita de códigos em tecnologias HTML e CSS pode ser um desafio por não serem muito dinâmicas. Não possuem ciclos, funções, objetos ou condições. Resumindo, todas as ferramentas disponíveis em outras linguagens de programação para a criação de código de manutenção não estão existem nessas tecnologias. Entretanto, ainda é possível graças à ajuda de processadores de CSS como *Stylus*, *LESS* ou *SASS*, o que pode ampliar as capacidades do CSS. Enquanto que, para HTML, há motores disponíveis para cada linguagem back-end. Ao trabalhar com frameworks, verá que já possuem motores de renderização predefinidos, como *ERB* e *HAML* (em *RAILS*), *JADE* e *ectjs* (em *NodeJS*) ou *Blade* (em *Laravel*). Isto faz com que os motores funcionem adicionando o código da linguagem ao modelo. *Quando uma solicitação chega ao servidor, este processa o template, transforma o código incorporado (HTML puro) e o envia para o navegador.* Além disso, também estão inclusas algumas ferramentas no JavaScript como *Backbone, AngularJS, Foundation e EmberJS* que facilitam a criação de páginas responsivas e otimizadas.<br/>
 Na programação web uma coisa é constante: não é fácil criar páginas capazes de parecer "bem" em todos os tipos de navegadores. Este é um ponto delicado para qualquer um que tenha que lidar com tal tarefa. A ideia é *não perder tráfego*, mesmo se for utilizado o *Internet Explorer 7*, especialmente se o serviço ou produto estiver focado em um público que utiliza esse navegador em particular. Para resolver este problema, existem scripts chamados *Polyfils*, que adicionam as capacidades de um navegador moderno usando JavaScript. Como nos navegadores, há uma infinidade de **telas**: smartphones, desktops, notebooks, tablets, smart tvs, e etc. Mesmo dentro do campo dos smartphones, são numerosas as variantes dependendo do dispositivo e da marca. O desenvolvedor front-end está encarregador de fazer o site funcionar para a maioria das telas.

#### ESTÁTICO x DINÂMICO
 Quando se trata de desenvolver um website, a primeira coisa a considerar é *como será construído, como um site **dinâmico** ou **estático***.

##### WEB SITE
 **Um Web Site é uma coleção de páginas HTML estáticas**, ou seja, não interagem com um banco de dados através de uma linguagem de servidor web. Aqui, todo o conteúdo do site está escrito diretamente no documento HTML, assim como as imagens e outras mídias. Claro que, para qualquer página Web ser fornecida e disponibilizada publicamente, a mesma deve estar hospedada em um simples servidor Web – *hospedagem de sites*.<br/>
 Uma **página web estática** *está focada principalmente na exibição de informações permanentes*, onde o usuário se limita a somente visualizar essas informações, sem poder interagir com a página em questão. Este usuário só pode interagir com a página estática através dos elementos permitidos, como clicar em links e botões, ou preencher formulários. Quando falamos em "estática", podemos também dizer que a página web tem um número fixo de páginas, ou seja, da forma como foi projetada e armazenada no servidor web, ela é recebida pelo navegador e vista pelo usuário como um número fixo de páginas HTML. Podemos dizer que sites estáticos não armazenam informações externas, somente aquelas contidas no seu código fonte (armazenadas no servidor). Sites estáticos não são tão complexos tecnicamente quanto sites dinâmicos, além de também não são tão versáteis e eficazes quando de trata de oferecer funcionalidades. Simplificando, em um website estático, veremos as mesmas informações, layout e conteúdo sempre que o visitarmos, a menos que alguém aplique mudanças no código fonte manualmente. Um website estático possui algumas vantagens devido sua natureza estática, a complexidade e o tempo de desenvolvimento são menores, por que não requerem o uso de multiplas linguagens de programação ou de um banco de dados, e, por isso seu custo de desenvolvimento e implantação são baixos; por conta dessa característica "simplista", possuem um *tempo de carregamento extremamente rápido*, pois são *pré-construídos* e não possuem scripts complexos que levam tempo para executar ações, ainda mais com o advento do *Jamstack* como gerador de sites estáticos focado em desempenho e velocidade, incuindo o *Jekyll*, *GatsbyJS SSG*, *Eleventy*, *Headless CMS*, *Netlify CMS*, *Siteleaf CMS* e *Forestry CMS*. Além disso, é importante incorporar a *CDN (Content Delivery Network)* para gerenciar recursos de multimídia; ela pode gerar um aumento no custo de carregamento de uma página estática dependendo de suas características.

##### APLICAÇÃO WEB
 **Uma Aplicação Web pode conter uma coleção de páginas, porém o conteúdo destas páginas é montado dinamicamente,** ou seja, é carregado através de *solicitações*, ou *requisições*, à um banco de dados, que conterá armazenado os textos e indicação dos caminhos das imagens ou mídias que a página precisa exibir. Então, basicamente, uma aplicação web é uma solução criada que pode ser utilizada sem a necessidade de sua instalação – utilizada por meio de outro aplicativo, como neste caso um navegador – que possui a internet como meio de comunicação entre cliente e servidor. Porém um HTML não tem acesso direto à um banco de dados, e esta comunicação deve ser feita por meio de uma linguagem de programação de servidor Web. Esta aplicação escrita com uma linguagem de servidor que tem o poder de acessar o banco de dados e montar a página HTML conforme o solicitado pelo navegador. Estas solicitações podem ser feitas de várias maneiras, inclusive utilizando *JavaScript*. Portanto uma Aplicação Web é mais complexa porque precisa de uma linguagem de servidor para poder intermediar as solicitações do navegador, um banco de dados, e muitas vezes (porém não obrigatoriamente) exibir páginas HTML com estes conteúdos.<br/>
 Um **site dinâmico** *é aquele que contém aplicações dentro do próprio site, proporcionando maior interatividade com o navegante*. Exemplos de aplicações dinâmicas são pesquisas e votações, fóruns de suporte, livros de visitas, envio de e-mails, reservas de produtos, pedidos online, e etc. *É importante não confundir multimídia e interatividade com páginas dinâmicas.* Uma página web estática pode conter vários tipos de mídia e interativa através de links e hyperlinks, sem ser dinâmica em si. Já em páginas dinâmicas, o conteúdo é normalmente gerado no momento da visualização e pode, portanto, variar; enquanto páginas estáticas o conteúdo é normalmente predeterminado. As páginas web dinâmicas são interativas e funcionais, ao invés de simplesmente informativas. Naturalmente, isto requer mais do que apenas código HTML e CSS. Os sites dinâmicos baseiam seu comportamento e funcionalidadesem 2 tipos de programação: *front-end (lado do cliente – faz requisições)* e *back-end (lado do servidor – responde às requisições)*. As instruções do lado do cliente são códigos JavaScript, que são executados no navegador. Instruções do lado do servidor são escritas em linguagens de script, tais como ASP.Net, PHP, Python, entre outras, que são executadas para criar o que o usuário solicitou em sua interação com a página. Uma vez que as instruções tenham sido executadas no servidor, uma nova resposta HTTPS é devolvida ao navegador, exibindo ao usuário o que foi solicitado. O resultado final é o mesmo que em um site estático: uma página HTML que o usuário vê do navegador. *O importante nessa classificação entre dinâmica e estática é que, uma página web estática não pode ser modificada pelo usuário, enquanto que a dinâmica sim e armazena estes dados alterados.* Entre as vantagens de um site dinâmico, está a possibilidade de que ele pode gerenciar informações através de banco de dados. Isto permite ao usuário solicitar facilmente informações de forma organizada e estruturada dentro de uma tabéla ou catálogo, assim como criar e exibir conteúdo de acordo com o tipo de usuário que acessa a página; além de que, seu conteúdo pode ser gerenciado através de um *CMS (Content Management System – software que permite criar, editar, organizar e publicar conteúdo digital)*. O conteúdo armazenado no CMS pode incluir uma variedade de arquivos, desde texto às imagens exibidas, layouts da página, configurações do site e muito mais. Isto permite flexibilidade ao criar o site, e também, que vários usuários manipulem o conteúdo conforme necessário, fazendo com que se tenha um custo de manutenção menor do que seria em alterar o conteúdo em uma página estática por exemplo. Como as informações podem ser gerenciadas através de um CMS, há pouco ou nenhum custo quando se trata de manutenção dessas informações. Em contra partida, por conta de tantas funcionalidades, seu desenvolvimento e implementação podem possuir um alto custo. Além do custo do desenvolvimento da aplicação, há o custo do desenvolvimento do banco de dados onde o conteúdo a ser exibido será armazenado. O dsesenvolvimento pode aumentar seu custo ainda mais a medida que novas funcionalidades são adicionadas. Embora os custos de manutenção possam ser menores, este custo de desenvolvimento inicial é algo a se considerar durante a elaboração do projeto e definição do escopo de acordo com a necessidade. Também podem haver limitações técnicas no projeto. Há depender da arquitetura escolhida, como o conteúdo é baseado principalmente nas informações contidas no banco de dados e a apresentação ao usuário é baseada na estrutura do banco, isto pode tornar o projeto "engessado" complicando a criação de livre vontade, pois é mais fácil optar por uma única abordagem para todas as páginas. Dependendop do CMS, pode ser difícil criar vários layouts ou modelos que permitam que diferentes tispo de conteúdo sejam exibidos de diferentes maneiras.

#### EXTENSÕES
 Como já visto, páginas web são documentos, e, como tal, geralmente têm uma extensão que nos dá uma ideia do tipo de conteúdo que o documento contém. As extensões mais comuns que podemos encontrar são:

 - **HTML & MARKDOWN**<br/>
 Esta é geralmente a extensão padrão para páginas web estáticas, compostas por conteúdo HTML.
 > Uma menção ao formato de arquivos HTML é que, no passado muitos sistemas não permitiam salvar extensões com mais de 3 caracteres, por isso era comum encontrar arquivos com a extensão **`htm`**, mas atualmente este não é mais um problema e o recomendado para uma interpretação mais assertiva por parte dos navegadores é sempre salvar os arquivos utilizando o formato completo **`html`**.
 - **ASP (Active Server Pages)**<br/>
 São páginas dinâmicas geradas quando são visitadas, escritas em uma linguagem de programação similiar à Visual Basic da Microsoft.
 - **JSP (Java Server Pages)**<br/>
 Páginas dinâmicas como as anteriores, mas são escritas em Java.
 - **PHP (Personal Home Page)**<br/>
 Páginas dinâmicas escritas com uma linguagem de uso geral a ser embutida junto com o código HTML, totalmente diferente de Java ou Visual Basic.

_*A única linguagem que um navegador Web consegue interpretar para a exibição de conteúdo é o **HTML** e **MARKDOWN**. Embora todos os documentos com as extensões vistas sejam páginas web, apenas arquivos **HTML** e **MARKDOWN** são páginas web **estáticas**, e portanto, as únicas que podem ser visualizadas diretamente no navegador **sendo renderizadas no lado do cliente**. As demais extensões para que sejam exibidas devem ser renderizadas a partir do servidor **por serem dinâmicas assim só existindo quando são requisitadas e criadas**._<br/>
As webpages se utilizam de HTML para fazer a formatação dos dados, e é importante notar que HTML não é uma linguagem de programação, mas sim de *formatação*, o que guarda diferenças fundamentais entre HTML e JavaScript por exemplo, uma vez que o HTML limita-se apenas à maneira como os dados são dispostos na tela, enquanto o JavaScript realiza a manipulação destes dados e até mesmo do documento HTML.

### <span id="html">HTML</span>
 A origem do HTML data de 1980, quando o físico Tim Berners-Lee, um trabalhador do CERN (Organização Européia de Pesquisa Nuclear), propôs um novo sistema de *"hypertext"* para compartilhar documentos. Ele se baseou na metalinguagem **S**tandard **G**eneralized **M**arkup **L**anguage para padronizar a definição da estrutura do HTML. o SGML é a base para a criação de todas as linguagens de marcação, como por exemplo o XML e o MarkDown por exemplo; Ele foi desenvolvido na década de 1980 como uma forma para estruturar e organizar documentos de forma sistemática, e tornou-se um padrão ISO em 1986 – ISO 8879.<br/>
 Para que as informações sejam exibidas com a formatação desejada, é necessário que cada trecho de texto tenha uma **marcação** que irá indicar qual seu significado e demarcar o início e o fim do conteúdo. Essa marcação também influencia a maneira com que cada trecho do texto será exibido e tratado. Além disso, o HTML permite o **aninhamento** de elementos, o que faz com que quando um documento é aberto no navegador, este cria uma *estrutura de árvore para a representação dos elementos* conhecida como **D**ocument **O**bject **M**odel, que é uma estrutura hierárquica de objetos onde cada elemento HTML é um *node* acessível via código e pode ser manipulado ou modificado por linguagens de script. O DOM é a ponte entre o documento e as linguagens de script para que seja possível a criação de páginas interativas e dinâmicas.<br/>
 **HyperText Markup Language**, é uma *linguagem de marcação* que define a estrutura do conteúdo no documento através da indexação dos componentes; Um *hypertext* é a capacidade que um documento tem de se conectar a outro, seja entre um texto e outro de si mesmo ou algum outro documento externo, permitindo conectar qualquer tipo de conteúdo, formando uma grande rede de dados – navegável através de *links*, que são métodos de ligação. O HTML pode ser definido como uma linguagem para publicação de conteúdo na web. Essa "linguagem" é composta de um conjunto *etiquetas*, ou **tags**, que são as estruturas da linguagem de marcação que contem instruções sobre como devem ser interpretadas, com as quais dizemos ao programa para (e como) nos mostrar textos, imagens, vídeos e etc. As tags são os blocos de construção do HTML, usadas para marcar o início e o fim de seus elementos e definir a estrutura de uma página. Cada tag é cercada por colchetes angulares `< >` e pode conter **atributos** *que fornecem informações adicionais sobre o elemento*, estes são parâmetros que utilizam a sintaxe: **`atributo="valor"`**. Para definir uma imagem por exemplo, usamos a tag **`<img>`** e, para indicar o caminho que está essa imagem, usamos o atributo **`src`**: **`<img src="../path/image.png"/>`**. A tag `img` não possui conteúdo por si só, e sim carrega o conteúdo de um arquivo externo (a imagem). Nesses casos, não é necessário usar uma tag de fechamento. **Algumas tags são autofechadas**, *o que significa que não possuem uma tag de fechamento correspondente*, entretanto a maioria possui um par de **abertura** e **fechamento** com o conteúdo entre elas, sendo a de fechamento semelhantes a de abertura, mas inclui uma barra `/` antes do nome da tag, como `</tag>`. A razão pela qual se inlcui uma barra ao final de tags *auto fechadas* como **`<img/>`** por exemplo, deve-se por serem **tags vazias**, isso significa que este tipo de tags não precisam de uma tag de abertura e nem de fechamento, e a convenção de boas práticas determina que **toda e qualquer tag deve ser fechada, incluindo as tags vazias** – no desenvolvimento com ReactJS por exemplo este conceito é muito importante. Por isso coloca-se a barra ao final de tags autofechadas **`<tag/>`**, para indicar ao navegador que ela se inicia e se fecha em si mesma, garantindo assim a reutilização do código num futuro com possíveis novas normas em vigor.<br/>
 **O papel das `tags` é dar uma representação ao conteúdo contido entre sua abertura e fechamento. Diversas tags são disponibilizadas pela linguagem HTML e cada uma possui uma funcionalidade específica.**<br/>
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
 Com o *HTML*, fazemos o "esqueleto" da nossa página, dando estrutura para a montagem do restante a partir da disposição inicial dos títulos, parágrafos, imagens e etc.
 - 🕶️ **APARÊNCIA** 🧢<br/>
 Com o *CSS*, damos "aparência" à página, como o padrão de cores, estilos de fontes e etc.
 - 🧠 **PERFORMANCE** 💪<br/>
 Com o *JavaScript*, fornecemos a interatividade e animação, sendo o "músculo motor" que faz as coisas "terem vida" no site.

**Desde maio de 2019 o desenvolvimento do HTML é mantido pelo [W3C (World Wide Web Consortium)](https://www.w3.org/), WHATWG e a comunidade de desenvolvedores, tendo sua especificação aberta no Github [WHATWG](https://github.com/whatwg/html), e desde este movimento, o HTML é considerado um "padrão vivo" (living standard) onde sua versão a partir da 5 é atualizada continuamente.*

#### WEB SEMÂNTICA
 Os navegadores agindo sozinhos não são capazes de diferenciar o que é *conteúdo* do que é *estrutura* dentro de um documento HTML, e todo documento HTML deve ser construído a partir do pensamento de que os dados nele presentes possam ser encontrados pelos mecanismos de busca e que sejam úteis aos usuários, e para que isso aconteça, devem ser usados elementos que permitem separar a estrutura, o conteúdo e a aparência. Existem elementos HTML capazes de criar uma separação entre a organização do documento e os dados, eles ordenam semanticamente o conteúdo de uma página web. Uma das maneiras para se criar uma separação das responsabilidades de um documento é a utilização dos *elementos semânticos*, que quando usados colocam o website em uma melhor posição no ranking de buscas dos mecanismos, assim atraindo mais usuários ao site, pois ficará mais fácil reconhecer o conteúdo relevante – pode-se definir semântica como uma disciplina da linguística que se ocupa da significação das palavras e expressões linguísticas bem como das relações de sentido que estas estabelecem entre si. Além disso, estes elementos favorecem a acessibilidade, pois permitem que os leitores de páginas reconheçam as marcações e facilitem a navegação para os usuários com deficiência visual por exemplo.<br/>
 Um elemento semântico é aquele que descreve claramente sua finalidade e significado tanto para o browser quanto para o desenvolvedor, alguns dos vários elementos semânticos servem para arquitetar o conteúdo de um documento, eles são responsáveis por definir áreas ou blocos específicos na página, tais como cabeçalho, menu de navegação e a área destinada ao conteúdo principal. Como cada um destes elementos possui um significado e ajudam a estruturar um documento HTML, pode-se dizer que uma *estrutura semântica* está sendo construída. Quando escrevemos o HTML, marcamos o conteúdo da página com tags que melhor representam o significado daquele conteúdo. Essa técnica é chamada de **S**earch **E**ngine **O**ptimization, que visa aumentar a visibilidade do site por meio da semântica do documento através dos mecanismos de busca. O HTML Semântico aumenta o tráfego orgânico através do uso correto das tags como utilização correta de headings, imagens com textos alternativos descritivos, boa performance na velocidade de carregamento, responsividade, entre outros fatores que implicam na escrita correta de um documento HTML.

##### ELEMENTOS
 Uma página web, apresenta uma série de elementos que serão usados para a interação com o usuário. Eles dividem-se em 2 grandes categorias: os que *são* exibidos e os que *não são*.<br/>
 Entre os elementos visuais, tem-se as informações textuais, com diversas variações de renderização, além das informações não textuais como imagens (estáticas ou animadas), áudio, vídeo e informações interativas mais complexas atreladas à interface como textos interativos, ilustrações interativas, botões, hyperlinks e formulários.<br/>
 Já entre os elementos não visuais existem os comentários (código-fonte), metados (DTD), informações de diagramação e estilo (CSS), e por fim scripts que modificam o documento.<br/> 
 A programação em HTML tem muitos elementos diferentes, entretando, todos os elementos tem algo em comum, todos devem ser envolvidos em **`<`** e **`>`** para que sejam lidos como **`tags`** pelo navegador e então funcionarem corretamente no browser.
 
##### TAGS
 As tags são responsáveis por toda a formatação do texto, e com elas é possível dividir o documento em área de cabeçalho e corpo, incluir títulos, criar tabelas, divisões, formulários ou mesmo formatar trechos específicos do texto, estes são apenas alguns exemplos do que as tags são capazes, existem elementos para várias finalidades diferentes no HTML. *Uma consideração a ser feita é que as tags não são case sensitive, mas por convenção de boas práticas elas devem ser escritas sempre em minúsculo.* Estes elementos podem ser encontrados em 2 tipos principais:

 - **ELEMENTOS SEMÂNTICOS**: São elementos que por seu próprio nome definem qual seu *propósito específico*. Portanto, quando os vemos em um arquivo HTML, sabemos para que eles são usados. Como por exemplo: `h1`, `h2`, `h3` e `p`. Todos eles são elementos semânticos, porque são usados para fins muito específicos. Quando vemos um elemento `h1`, sabemos que o que está entre ele é um *título*, desta forma, só de olhar para nosso HTML, podemos dizer que há um cabeçalho e parágrafos (conteúdo contido dentro dos elementos `p`). Podem ser usados junto com **atributos**. Devemos escolher as tags pelo o que elas representam e não como elas são mostradas na tela do navegador. Estilização deve ficar no CSS e estrutura no HTML.
 - **ELEMENTOS GENÉRICOS**: Elementos para qualquer tipo de uso. As únicas tags que são de propósito genérico e que são usadas apenas para facilitar a estilização no CSS são as tags `div` e `span`. Essas duas tags não representam nenhum conteúdo necessariamente. `div` representa uma divisão de blocos e `span` uma marcação para texto sem quebrar a linha do texto. Como exemplo, um dos elementos genéricos chamado `div`, que significa *divisão*, serve para dividir um documento em diferentes partes. Por tanto, se quisermos criar um *card* com uma imagem e informações, podemos fazer isso com o elemento `div`. O problema de utilizar estes elementos é que não são muito descritivos semanticamente falando. Não sabemos para que servem. Durante o desenvolvimento, sabemos que aquele elemento `div` que criamos serve para exibir *cards* na página, mas como identificar isso em uma manutenção futura? Podemos dar alguma semântica aos nossos elementos `div` usando **atributos**, para identificarmos facilmente seu propósito.

 **ATRIBUTOS**<br/>
 Algumas tags possuem atributos que podem ser modificados conforme necessário. Atributos permitem identificar ou associar elementos, e também configurar elementos com um ou mais dados extras além do conteúdo, além de adicionar mais semântica ao código, acrescentando informações ao item em que se encontra etiquetado. Por meio de alterações no valor do atributo, o elemento pode comportar-se de maneira diferente. Devem ser preferencialmente escritos em letras minúsculas para atender às conveções, e os **valores dos atributos devem sempre estar entre aspas, simples `''` ou duplas `""`, a escolha é indiferente ao documento e ao navegador, apenas aconselha-se que apenas um tipo seja utilizado para manter a padronização no documento. Deve-se atentar também ao caso de um valor que tenha aspas, para isso deve-se usar um tipo diferente, por exemplo: `name='Edson Arantes "Pelé" do Nascimento'`.**<br/>
 Existem vários atributos no HTML, alguns que funcionam apenas em determinadas tags, outros personalizados podem ser criados, mas no geral alguns dos atributos mais importantes são o `id` e `class`. *O **`class`** é um atributo que **identifica múltiplos elementos**, enquanto o **`id`** é uma **identidade única para cada elemento**, podendo assim nos referirmos a ele.* Além destes, existem vários outros atributos que podem ser inseridos nas tags.

##### ESTRUTURA DE UMA PÁGINA WEB
 Um documento HTML válido precisa seguir **obrigatoriamente** a estrutura composta pela instrução **`!<DOCTYPE>`** e as tags:
 1. **`html`**: estrutura que define o início e o fim do conteúdo do documento.
 2. **`head`**: carrega os _metadados_ do documento, ela contem elementos que são indiretamente ligados ao documento, ou seja, informações que não pertencem ao conteúdo em si mas são necessárias para carregar informações sobre a descrição, estilos, scripts entre outras coisas da página.
 3. **`body`**: agrupa todo o conteúdo vísivel do documento.

 Um exemplo simples de código HTML poderia ser:
```html
<html>
    <head>
      <title>Documento</title>
    </head>
    <body>
        <h1>Ol&aacute; mundo!</h1>
        <p>Este &eacute; um par&aacute;grafo.</p>
    </body>
</html>
```
 Este trecho possui algumas tags como podemos ver, e cada uma delas termina com um par de fechamento. Neste caso o `<html>` deve ser fechado com `</html>`, a etiqueta `<body>` com `</body>`, `<h1>` com `</h1>` e por fim a etiqueta `<p>` com `</p>`. Existem muito mais tags, e devemos ter em mente que, para cada tag que abrimos, devemos incluir a tag de fechamento correspondente (há exceções). Desta forma, obteremos um código HTML bem formatado, que os navegadores podem interpretar sem ambiguidade.<br/>
 O que aconteceria se uma etiqueta que abrimos não tivesse um fechamento? Digamos que seria um documento mal construído, e os navegadores podem interpretar isso de diferentes maneiras. Talvez eles exibam a página como esperado, sem nenhum erro aparente, talvez mostrem uma página de erro ou a página em branco. O objetivo do desenvolvedor front-end deve ser sempre construir páginas bem estruturadas e sem ambiguidades, ou seja, usar a linguagem corretamente para que os navegadores possam saber exatamente o que se pretende exibir.<br/>
 Além das tags, outro ponto a se notar é o uso de elementos ASCII para exibir caracteres especiais, este é o comportamento padrão do HTML para que elementos de texto fora do range `[A-z0-9]` possam ser interpretados e exibidos corretamente pelos navegadores. Existem maneiras de se *"automatizar"* a intepretação de elementos sem usar o padrão ASCII para exibí-los – usando o caractere diretamente no texto – e o que lida com isso é um *metadado* que o documento carrega e informa ao navegador como este deve ler seu conteúdo.<br/>
 _*As etiquetas sem um par de fechamento são fechadas com uma sintaxe semelhante a estas: `<br/>` `<img/>`. Todas as tags contidas dentro do **head** não são "fechadas" com uma barra "`/`" no final, apenas as tags sem par de fechamento incluídas no body usam isto, somente a fim de evitar quebras no restante da página._<br/>
 Para se saber que a visualização será igual em todos os cenários, que navegadores devemos usar para testar nossas páginas web? ... Muito simples, **TODOS ELES**. Deve-se certificar de que o website possa ser visualizado corretamente em qualquer dispositivo. Um programador front-end deve sempre testar suas páginas em todos os dispositivos e navegadores possíveis, para garantir que os navegadores não interpretem a página de diferentes maneiras, ou seja, que sua exibição seja uniforme e padrão na maioria dos testes.

###### CONCEITOS
 Os comentários em HTML possuem a seguinte sintáxe: `<!-- comentário -->`. Por convenção, a *página principal* de qualquer projeto web é normalmente chamada de **index.html**.<br/>
 Outra convenção de boa prática é manter o documento *indentado*, pois, como é possível perceber, a estrutura de uma página HTML consiste em tags dentro de outras tags, e sem uma devida organização, o código pode se tornar difícil de ler e compreender.<br/>
 Uma página HTML consiste a princípio de 2 partes distintas, o **head** e o **body**, nas quais as tags são distribuídas:
```html
╭──<!DOCTYPE>───────────╮       <!DOCTYPE html>
|                       |
╰───────────────────────╯
╭─<html>──────────────────────╮ <html lang="en">
| ╭─<head>──────────────────╮ |     <head>
| |                         | |         <meta charset="UTF-8">
| |                         | |         <title>Webpage</title>
| ╰─</head>─────────────────╯ |     </head>
| ╭─<body>──────────────────╮ |     <body>
| |                         | |         <h1>Welcome!</h1>
| ╰─</body>─────────────────╯ |     </body>
╰─</html>─────────────────────╯ </html>
```

###### ORGANIZAÇÃO DO HEAD
 O **head** *(cabeçalho da página)* contém os **metadados**, que são dados que o usuário não vê, mas que o *navegador* considera úteis. Os *metaelementos*, ou *metamarcas*, fornecem informações descritivas sobre a página; o *title* da página e possíveis *links* para páginas CSS ou JavaScript. Vejamos:
 - **`<!DOCTYPE html>`**: Declara o tipo de documento e a versão do HTML. Indica para o navegador qual versão do HTML deve ser utilizada para exibir a página. Quando não colocamos essa instrução a página é exibida numa espécie de *"modo de compatibilidade"* na qual algumas tags e estilizações não funcionam corretamente, principalmente as tags e estilizações mais atuais. _A declaração do DOCTYPE, pode ser escrita tanto em maiúsculo quanto em minúsculo, ou mesmo com a primeira letra maiúscula: `<!DOCTYPE HTML>`, `<!DOCTYPE html>`, `<!Doctype HTML>`, `<!Doctype html>`, `<!doctype html>`, `<!doctype HTML>`. **O resultado será o mesmo para todos os casos pois o HTML é case insensitive, entretanto, como regra de boa prática, elementos HTML devem ser escritos em letras minúsculas, e já que este NÃO É um elemento HTML o ideal é que seja escrito em letras maiúsculas para diferenciação.**_
 - **`html lang="en"`**: Na estrutura do documento, antes da inserção do conteúdo, é usada a tag `html`. É a tag raiz que engloba todo o conteúdo do documento; o atributo `lang` especifica o idioma da página. Dentro dela vão 2 tags "irmãs" que compõem diferentes seções do documento para a sua renderização pelo navegador, diz-se "irmãs" pois estão no mesmo nível hierárquico em relação à sua tag "mãe", a `html`. São elas as tags `head` e `body`.
 - **`head`**: Contém as informações sobre o documento HTML que são de interesse somente do navegador e para outros serviços da web, e não para os usuários que vão acessar o site, como o título da página, links à outros documentos (CSS/JS) e etc. São informações que não serão exibidas diretamente no navegador, também podemos considerar este um local onde informamos os *metadados* sobre a página.<br/>
 A especificação do HTML obriga a presença da tag de conteúdo `title` dentro dela, permitindo definir o título do documento, que poder ser visto na barra de título ou aba da janela do navegador. Caso contrário, a página não será um documento HTML válido.<br/>
 Outra configuração muito importante, principalmente em documentos HTML cujo conteúdo é escrito em um idioma como o português, que contém caracteres "especiais" como acentos e cedilha, é a codificação do conjunto de caracteres chamada de *encoding* ou *charset*. Podemos configurar qual codificação queremos utilizar em nosso documento por meio da configuração de charset na tag `meta`. Um dos valores mais comuns usados hoje em dia é o UTF-8, também chamado de Unicode. Há outras possibilidades, como o latin1, muito usado antigamente. O UTF-8 é a recomendação atual para encoding na Web por ser amplamente suportada em navegadores e editores de código, além de ser compatível com praticamente todos os idiomas do mundo.
   - **`title`**: Texto que será exibido na aba do navegador para identificação da página. **O uso de `palavras-chave` nesta tag é um dos mais importantes fatores de ranqueamento para o SEO, pois esta é a tag que identifica o título da página para os mecanismos de busca – ou seja, o uso de `palavras-chave` no title que descrevem o conteúdo relacionado ao tipo de público que o site pretende alcançar melhoram sua posição na indexação do site nos resultados das buscas destes usuários. Assim, além de informar ao algoritmo sobre qual é o assunto principal da página, também atrai o interesse e o acesso do visitante através do SERP – pois a exibição do resultado da busca nos mecanismos é normalmente a informação da tag `title` seguido da descrição contida na metatag `description`, então, um título e uma descrição alinhadas ao interesse do usuário na busca geram atração que leva à visita ao website.**
   - **`<meta charset="UTF-8">`**: Define o tipo e conjunto de caracteres. Por padrão, os navegadores interpretam (quando não específicado) os textos de documentos HTML no formato ASCII 2, mas ao longo do tempo foram criados vários conjuntos de caracteres para atender a diferentes necessidades e regiões do mundo, para que o texto do conteúdo fosse escrito de maneira mais concisa do que incluir vários caracteres codificados em ASCII no meio da leitura. Atualmente, **UTF-8** é o mais utilizado globalmente, devido à sua compatibilidade e eficiência. Além do UTF-8, existem vários outros conjuntos de caracteres usados para representar texto em sistemas computacionais. Eles podem ser agrupados em diferentes categorias, dependendo de sua abrangência e propósito:
      - **1. Unicode (Codificações Padrão)**
        Unicode é um padrão universal que mapeia caracteres de quase todos os idiomas. Ele pode ser representado por diferentes codificações, como:
        - **UTF-8** (mais comum e eficiente, usa de 1 a 4 bytes por caractere)
        - **UTF-16** (usa 2 ou 4 bytes por caractere, mais eficiente para idiomas asiáticos)
        - **UTF-32** (usa sempre 4 bytes por caractere, garantindo acesso direto, mas menos eficiente em armazenamento)
      - **2. ASCII (American Standard Code for Information Interchange)**
        - Utiliza **7 bits** para representar **128 caracteres**, incluindo letras do alfabeto inglês, números, pontuação e alguns caracteres de controle.
        - Exemplo: `A` = 65, `a` = 97
      - **3. Extensões do ASCII (8 bits)**
        - **ISO-8859** (ou **Latin-1, Latin-2, etc.**): Séries de codificações usadas para idiomas europeus. Exemplo:
          - **ISO-8859-1** (Western Europe)
          - **ISO-8859-2** (Central Europe)
        - **Windows-1252**: Versão estendida do **ISO-8859-1**, usada no Windows.
        - **MacRoman**: Usado em sistemas da Apple antes da adoção do Unicode.
      - **4. Codificações específicas para idiomas**
        - **Shift JIS** (usado para japonês)
        - **EUC-JP** (ou **EUC-KR**, para japonês e coreano)
        - **Big5** (usado para chinês tradicional)
        - **GB2312** e **GB18030** (usados para chinês simplificado)
        - **KOI8-R** (usado para russo e outros idiomas da ex-União Soviética)
      - **5. EBCDIC (Extended Binary Coded Decimal Interchange Code)**
        - Desenvolvido pela IBM para mainframes.
        - Diferente do ASCII, com um layout específico para máquinas IBM.
      - **6. Codificações Legadas e Proprietárias**
        - **VISCII** (usado para vietnamita)
        - **HZ-GB-2312** (variante de GB2312 para chinês)
        - **MBCS (Multi-Byte Character Set)**: Utilizado em sistemas antigos antes da adoção total do Unicode.
   - **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`**: Configurações de viewport para responsividade.
   - **`meta description`**: Usada para informar um breve texto sobre o conteúdo fornecido pelo site. Geralmente ao se compartilhar a URL do site uma prévia de seu conteúdo é exibida na mensagem, e um texto bem elaborado na `meta description` apesar de não ser levado em conta para o rankeamento de SEO, é uma informação pró usuário, o que ajuda a gerar tráfego orgânico.
 - **`body`**: Armazena o corpo do documento que é exibido pelo navegador em sua janela, ou seja, todo o conteúdo visível da página, como os cabeçalhos, títulos, texto e parágrafos, imagens, mídias entre outras coisas. É necessário que o `body` tenha ao menos um elemento "filho", ou seja, uma ou mais tags em sua estrutura.

 A tabela a seguir mostra um resumo dos elementos que podem ir dentro da etiqueta *head*:

ETIQUETA   | FUNÇÃO                     | OBRIGATÓRIO
:---:      | :---:                      | :---:
\<meta>    | define os metadados        | ❌
\<title>   | título do documento        | ✅
\<base>    | define uma url base        | ❌
\<link>    | vincula arquivos           | ❌
\<style>   | delimita css interno       | ❌
\<script>  | delimita scripts incluídos | ❌

 - Meta tags não possuem um par fechamento, elas servem para incluir informações que não serão exibidas como parte da página, mas sim informar aos navegadores sobre características da página, tais como sua breve descrição e palavras-chave. Elas contém a etiqueta `name`, que é usado para identificar dados de formulário que serão enviados ao servidor quando o formulário for submetido, criação de âncoras e agrupamento de opções, e o atributo *`description`* que é essencial para os motores de busca, pois dá uma breve descrição sobre o assunto da página e ajuda a categorizá-la (substituindo o atributo *"keywords"*). A metatag **`charset="UTF-8"`** por exemplo, informa ao navegador como devem interpretar os caracteres, garantindo a compatibilidade com diferentes idiomas e tornando a página acessível globalmente, sua ausência pode levar a um comprometimento de segurança ou de instabilidade na exibição do documento.
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
 A tag de fechamento do `head` é seguida pela de abertura do `body`. O `body` é o "corpo" da página onde introduzimos a parte vísivel ao usuário. No passado, a página era dividida em *células* com a tag `table`, mais tarde foi utilizada a `div`, que era chamada de *box-model*. Hoje em dia usam-se as tags semânticas definidas para cada parte específica, o "padrão" atual segue o seguinte esquema básico:

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

 Essa distribuição é indicativa, qualquer elemento pode ser omitido ou movido de acordo com o projeto. _*Somente as tags **`head`** e **`body`** são obrigatórias_, porém, a inclusão de todos estes elementos melhora o posicionamento *SEO*. **Search Engine Optimization** é um conjunto de estratégias e técnicas usadas para melhorar a visibilidade de um site nos resultados orgânicos não pagos dos mecanismos de busca.<br/>
 `header`, `main` e `footer` podem ser aplicados em qualquer parte do documento, exemplo:
 - **`header`**: define uma seção de cabeçalho de uma página ou de uma parte dela, sendo usada para agrupar o logo, título, menu de navegação e informações iniciais. Pode haver mais de 1 header por seção em páginas.
 - **`main`**: representa o conteúdo principal da página, abriga textos, artigos, seções entre outros elementos que são o foco principal do site. Deve haver apenas 1 por página, sendo ela uma tag principal, ou seja, não pode ser filha de nenhuma outra tag além de `body`.
 - **`footer`**: seção de rodapé da página ou de um bloco específico que contem informações extras como links de contato, informações de direitos autorais e demais itens relacionados.

 Essas tags ajudam na estrutura semântica do HTML, tornando o conteúdo mais compreensível para navegadores, leitores de tela e mecanismos de busca. Toda essa organização semântica indica aos mecânismos de busca que o site possui uma estrutura bem definida e alinhada com os conceitos de acessibilidade, o que soma pontos para elencar o site entre os primeiros nos resultados de pesquisas.

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
                    Working in software development since 2020. Specialized in JavaScript and its ecosystem (TypeScript, Node.js, Express.js, Nest.js, React.js, Vue.js, Angular.js, Next.js, among others).
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
 - A tag `aside` é utilizada para representar um conteúdo complementar ao conteúdo principal como uma barra lateral que contem links relacionados ao conteúdo ou mesmo informações extras, ou seja, está relacionada a informações paralelas à informação do conteúdo principal da página, como banners e informações adicionais.
 - O elemento `nav` é usado para agrupar blocos de links, como uma seção menu para navegação no site, agrupando-os por assuntos ou em listas de navegação interna da página.

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>HTML Semântico</title>
</head>
<body>

  <header>
    <h1>Hello HTML!</h1>
    <nav>
      <ul>
        <li><a href="#">Apresentação</a></li>
        <li><a href="#">História</a></li>
        <li><a href="#">Sobre</a></li>
        <li><a href="#">Documentação</a></li>
      </ul>
        <h2>Cursos</h2>
        <li><a href="#">XML</a></li>
        <li><a href="#">HTML</a></li>
        <li><a href="#">HTMX</a></li>
      <ul>
    </ul>
    </nav>
  </header>

  <main>
    <article>
      <h2>Bem-vindo HTML</h2>
      <p>Este é o conteúdo principal da página. Este é o campo para exibir textos, imagens, vídeos e muito mais.</p>
    </article>

    <aside>
      <h3>Informações adicionais</h3>
      <ul>
        <li><a href="#">Artigo relacionado 1.</a></li>
        <li><a href="#">Artigo relacionado 2.</a></li>
      </ul>
    </aside>
  </main>

  <footer>
    <p>&copy; 2025 Meu Site. Todos os direitos reservados.</p>
  </footer>

</body>
</html>
```

 Para melhorar ainda mais o SEO, utilizamos as tags `section` e `article`, que são usadas para agrupar partes do documento de acordo com sua relação com o conteúdo:
 - A tag **`section`** define um bloco ou um grupo de informações sobre um conteúdo em particular, é usada para *agrupar conteúdos similares*, indicando que o conteúdo dentro dela pertence a uma área ou parte específica da página.<br/>
 Resumidamente, esta tag permite criar sessões na página, dividindo-as por conteúdo e ainda utilizando a semântica em favor do documento, dando assim mais significado ao código e o construindo com mais definição.<br/>
 Normalmente, é recomendada a utilização de um título dentro de uma `section` para definir claramente o tópico daquela seção, isso melhora a estrutura e a hierarquia do conteúdo.<br/>
 Não se deve utilizar a tag `section` para agrupar elementos arbitrários ou partes que não têm um propósito semântico claro, por exemplo, usá-la apenas para estilizar ou agrupar blocos sem conteúdo temático específico não é recomendado.
 - A tag **`article`** representa um conteúdo independente, como um post de blog, uma notícia ou um comentário. É indicada para partes de conteúdo independente e autossuficiente, que podem ser reutilizadas, distribuídas ou lido *fora do contexto da página*, de forma autônoma como por exemplo, uma seção de publicações ou projetos.<br/>
 Assim como a tag `section`, esta tag utilizza sua semântica para dividir as informações, agora com um propósito mais específico. Semanticamente, vários articles sobre um tema são agrupados na `section` referente a ele.
 - Embora o **`div`** também agrupe elementos, ele não tem significado semântico. Ele é utilizado para fins de estruturação e estilização, mas não comunica o conteúdo de forma tão clara e eficiente.

```html
<main>
    <section id="news">
        <section id="finances">
            <article id="bitcoin">
                <p>Bitcoin...</p>
                <p>BTC...</p>
            </article>
            <article id="ethereum">
                <p>Ethereum...</p>
                <p>ETH...</p>
            </article>
        </section>
        <section id="geopolitics">
            <article id="west">
                <p>USA...</p>
                <p>EU...</p>
            </article>
            <article id="east">
                <p>CHINA...</p>
                <p>RUSSIA...</p>
            </article>
        </section>
    </section>
</main>
```

 Então, a hierarquia de uma boa estrutura do `body` num documento html seria:
 <ol>
    <li>
        <strong><code>header</code>: Cabeçalho da página.</strong><br/>Contém os elementos de introdução da página. Geralmente, ele inclui:
        <ul>
            <li><strong>Logo ou nome do site:</strong> Pode ser um título <code>h1</code> ou um logo em imagem.</li>
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
            <li style="list-style-type: none"><span>2.3.</span>
                <strong><code>aside</code>: Agrupamento de conteúdo extra relacionado ao conteúdo principal.</strong><br/>Utilizado para conteúdos que complementam informações dentro de um <code>main</code>. Dentro dele podemos ter:
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
\<strong>text\</strong> | ênfase      | <strong>text</strong> | ❌
\<i>text\</i>           | itálico     | <i>text</i>           | ✅
\<em>text\</em>         | relevância  | <em>text</em>         | ❌
\<mark>text\</mark>     | destaque    | <mark>text</mark>     | ✅
\<strike>text\</strike> | riscado     | <strike>text</strike> | ✅
\<s>text\</s>           | removido    | <s>text</s>           | ✅
\<del>text\</del>       | deletado    | <del>text</del>       | ✅
\<u>text\</u>           | sublinhado  | <u>text</u>           | ✅
\<small>text\</small>   | menor       | <small>text</small>   | ✅
\<big>text\</big>       | maior       | <big>text</big>       | ✅
\<sub>text\</sub>       | subescrito  | <sub>text</sub>       | ✅
\<sup>text\</sup>       | sobrescrito | <sup>text</sup>       | ✅

###### MENU
**`details`**<br/>
Este elemento é usado para criar uma seção expandível que o usuário pode abrir e fechar. Particularmente útil para exibir conteúdo sob demanda ou criar menus suspensos com listas de opções.
```html
<details>
  <summary>Menu</summary>
  <p>Este é o conteúdo oculto que aparece quando o usuário expande.</p>
</details>
```
O elemento **`summary`** define o título visível da seção, e ao clicar nele o conteúdo interno é exibido ou oculto. Sem este elemento, o navegador ainda renderiza o `details`, mas com um botão ou texto genérico.

```html
<details>
    <ul>
        <li><a href="https://raphaelkaique1.github.io/raphaelkaique1/main/">Website</a></li>
        <li><a href="https://github.com/raphaelkaique1/">GitHub</a></li>
        <li><a href="https://www.linkedin.com/in/raphaelkaique1/">LinkedIn</a></li>
        <li><a href="https://wa.me/5531996653731">WhatsApp</a></li>
        <li><a href="mailto:raphaelkaiquediassantos1@gmail.com">e-mail</a></li>
    </ul>
</details>
```

O atributo **`open`** abre o menu por padrão quando o documento é carregado.
```html
<details open>
  <summary>Menu Aberto</summary>
  <p>Esse conteúdo aparece automaticamente ao carregar a página e pode ser fechado manualmente pelo usuário.</p>
</details>
```

**`menu`**<br/>
Esta tag tem o objetivo de criar menus contextuais, menus pop-up, barras de ferramentas e listas de ações e de comandos interativos quando um elemento é clicado com o botão direito do mouse. No entanto ela não é amplamente suportada nos navegadores modernos e seu uso foi descontinuado, sendo considerada uma tag obsoleta.
```html
<menu label="Options" type="context" id="context-menu">
  <menuitem onclick="copyText()">Copiar</menuitem>
  <menuitem onclick="cutText()">Cortar</menuitem>
  <menuitem onclick="pasteText()">Colar</menuitem>
  <menuitem onclick="theme()" type="checkbox" checked>Modo escuro</menuitem>
</menu>

<div contextmenu="context-menu">
  Clique com o botão direito aqui.
</div>
```

- `menu`: define um menu de comandos.
  - `type`: define o tipo do menu.
    - `"context"`: menu de contexto.
    - `"toolbar"`: barra de ferramentas.
    - `label`: rótulo com o texto visível.
- `menuitem`: representa um item de comando dentro de um `menu`.
  - `icon`: ícone exibido ao lado do texto.
  - `label`: rótulo com o texto visível.
  - `type`: `"command"`, `"checkbox"`, ou `"radio"`.
    - `"checked"`: usado com `"checkbox"` ou `"radio"`.

Também é possível aninhá-los, criando sub-menus:
```html
<div contextmenu="context-menu">
  Clique com o botão direito aqui.
</div>

<menu type="context" id="meu-menu">
  <menuitem onclick="update()">Contact</menuitem>

  <menu label="Socials" type="context" id="meu-menu">
    <menuitem icon="https://ssl.gstatic.com/ui/v1/icons/mail/rfr/gmail.ico" href="mailto:raphaelkaiquediassantos1@gmail.com">E-mail</menuitem>
    <menuitem icon="https://static.whatsapp.net/rsrc.php/v4/yP/r/rYZqPCBaG70.png" href="https://wa.me/5531996653731">WhatsApp</menuitem>
  </menu>
</menu>
```

Entretanto como já dito, esta tag foi removida da especificação HTML e não é mais suportada nos navegadores modernos, sendo utilizado o JavaScript para substituir a implementação da funcionalidade pretendida com elementos como `ul`+`li`, `button` ou `div` por exemplo.
```html
<ul class="context-menu">
  <li onclick="copyText()">Copiar</li>
  <li onclick="pasteText()">Colar</li>
</ul>
```

###### CABEÇALHO
 Quando se deseja indicar que um texto é um título, utiliza-se as tags de *heading* em sua marcação. As tags `<h></h>` são usadas para definir títulos, variando hierarquicamente em ordem de importância de `h1` (o mais importante) a `h6` (menor importância). As tags de heading não apenas mudam o tamanho do texto, mas, os motores de busca também dão importância a essas tags. A ordem de importância tem impacto nas ferramentas que processam HTML para resultados de busca. As ferramentas de indexação de conteúdo para buscas, como o Google, Bing entre outros, levam em consideração essa ordem e relevância. Os navegadores especiais para acessibilidade também interpretam o conteúdo dessas tags de maneira a diferenciar seu conteúdo e facilitar a navegação do usuário pelo documento. Os próprios cabeçalhos geram uma quebra de linha.<br/>
 Como as **heading tags** possuem o propósito de estruturar a hierarquia do conteúdo, em especial para os mecanismos de busca o uso de **palavras-chave** no conteúdo do texto do título principal ajuda a evidenciar aos motores a sua importância. *Sendo a tag `h1` a que possui maior importância, pois é o título principal do conteúdo da página, e só deve ser utilizada 1 única vez em cada página, porque existir mais de um título principal por documento atrapalha a indexação do site nos mecanismos de busca justamente por não se saber qual é realmente o assunto principal abordado pelo conteúdo, então recomenda-se sempre que haja apenas **1 tag `h1` por página**, pois para fins de SEO, o mecanismos de busca sempre buscarão pelo título principal para retornar um resultado de pesquisa.* Essa tag é utilizada para exibir o nome da informação que o site trás em si, ou seja, o título principal da página, enquanto as tags `h2` e `h3` dão sequência na hierarquia das heading tags, e apesar de não possuirem o mesmo peso de importância que o `h1` devem conter também palavras-chave, sinônimos ou termos relacionados afim de reforçar sua relevância no conteúdo, sendo usadas como *subtítulos* ou *títulos de seções* dentro do documento. **Além disso, para uma performance ainda melhor de SEO, assim como na tag `title` o `h1` deve conter palavras-chave relacionadas ao conteúdo do assunto no documento, tornando-o assim mais relevante para indexação da página pelos motores de busca durante a exibição dos resultados da pesquisa.**<br/>
 ⚠️ **DEPENDENDO DO CONTEXTO É PERMITIDO O USO DE MAIS DE 1 `h1` EM UMA PÁGINA, MAS ESTA EXCEÇÃO APLICA-SE EM CASOS ESPECÍFICOS.** Por exemplo, em uma página de blog onde o autor realiza a comparação de de 2 produtos e seu conteúdo está estruturado de maneira que:
 - a 1ª seção descreve os benefícios do produto `x`
 - a 2ª seção descreve os benefícios do produto `y`
 - a 3ª seção faz a conclusão do comparativo

 Neste caso, cada seção poderia possuir seu título envolto na tag `h1`, pois assim o conteúdo seria indexado pelos mecanismos de busca ao usuário pesquisar pelo produto `x`, ou pelo `y`, assim dando um maior alcance de público e visitar ao site.<br/>
 **_Quando temos vários subtítulos de `h` em sequência no HTML, os agrupamos com a tag `<hgroup></hgroup>`._**

 - **`h1`**: Representa o **título principal** da página. Deve ser usado apenas 1 vez por página, geralmente contém o assunto mais importante.
 - **`h2`**: Representa um **subtítulo** ou uma **seção principal** dentro da estrutura do conteúdo. Pode haver vários `h2` para diferentes seções da página.
 - **`h3`**: Usado para **subseções dentro de uma seção `h2`**. Pode ser visto como um *"capítulo"* ou *tópico dentro da seção anterior*.
 - **`h4`**: Representa uma **subseção de um `h3`**, ajudando a organizar melhor o conteúdo em níveis mais profundos. Podendo ser usado como um subtítulo para descrever o assunto abordado em uma seção.
 - **`h5`**: Utilizado para **subdivisões de uma `h4`**, geralmente como subtítulos de seções ou complementares à estrutura superior.
 - **`h6`**: Usado para detalhamentos específicos dentro de uma **subseção de `h5`**.

Exemplo:
```html
<h1>Manual do Usuário</h1>
  <h2>Instalação</h2>
    <h3>Requisitos do Sistema</h3>
    ...
    <h3>Procedimento de Instalação</h3>
      <h4>Windows</h4>
        <h5>Instalação Automática</h5>
        <h5>Instalação Manual</h5>
      <h4>Linux</h4>
        <h5>Usando o Terminal</h5>
          <h6>Comandos Avançados</h6>
```

###### PARÁGRAFO
 Para informar ao navegador que ele exiba um texto em um parágrafo, deve-se escrevê-lo entre as tags `<p>texto do parágrafo</p>`, com o texto separado por uma margem em branco acima e abaixo.
 > Podemos usar uma linha horizontal de tamanho e expessura que determinarmos no CSS, escrevemos esta *separação* com a tag **`<hr/>`**, para separar um parágrafo do outro, ou também, utilizar a tag **`<br/>`** para *saltar* uma linha.

 Para propósitos de SEO, quando se constrói um site é importante que logo nos primeiros parágrafos estejam as principais palavras-chave para a indexação da página nas buscas relacionadas ao conteúdo, pois quando se tem palavras-chave evidênciadas no conteúdo principal, os motores de busca as identificam como sendo muito relevantes para o site, além de que, a posição de tais termos na página também coloca em evidência sua importancia para os motores, logo, se as principais palavras-chaves surgem no início do texto do conteúdo principal entre as 100 primeirias palavras, isso influencia os motores a reconhecê-las como altamente relevantes para a página e sua indexação nos resultados de buscas. O uso de sinônimos neste caso ajuda a criar um conteúdo orgânico e relevante que prenda a atenção do usuário, e também informa aos motores de busca que o conteúdo do site é referente à palavra-chave em questão. Em comparação, pode-se dizer que o 1º parágrafo trata-se de uma introdução ao conteúdo presente no documento, sendo uma apresentação do tema acerca de todo o conteúdo. Pois no lugar da densidade de palavras-chave, os motores de busca geralmente utilizam o modelo de indexação considerando sinônimos, variações, co-ocorrências e termos relacionados à palava-chave para entender os sentidos do texto, assim medindo e rankeando a relevância do conteúdo em uma página, permitindo assim o trabalho natural com termos relacionados no texto sem forçar a correspondência exata da palavra-chave e acabar por robotizar o texto.<br/>
 Pode-se definir `palavra-chave` todo termo usado na realização de pesquisa em um buscador, no SEO, tais palavras-chave são os termos utilizados de forma a otimizar um site, focados na tentativa de posicionar melhor o conteúdo de uma página nos resultados de busca. **Existem 2 tipos de palavras-chave, palavras-chave podem ser um único termo ou frase.** O 1º tipo é o `head tail`, que são os termos de busca mais "genéricos", curtos porém objetivos, sendo portanto, a palavra-chave mais sucinta possível que responda a uma pergunta ou busca – como `front end` por exemplo. Pelo fato das `head tails` serem amplas possuem um alto volume de busca, o que significa que há um grande número de pessoas pesquisando por conteúdos relacionados a este tema, por isto é importante usá-las estrategicamente, principalmente ao abordar um produto. Devido ao alto número de ocorrencias nos resultados de buscas, as head tails possuem uma concorrência muito acirrada, por isso para que se alcance o maior número de usuários o ideal é complementar a estratégia alimentando o conteúdo com termos de alta e baixa disputa sempre que possível. Se o objetivo for o de atrair um público que seja compatível com um determinado produto ou serviço, as head tails na maioria das vezes não serão o melhor caminho, e utilizar termos mais nichados e específicos gere uma maior visibilidade ao site. O 2º tipo, conhecido como `long tail`, são palavras-chave mais específicas e direcionadas, por isso são menos pesquisadas e recebem menos tráfego, mas apresentam vantagens como: por não disputarem concorrência como as head tails – que são mais gerais e por isso estão na main stream – os long tails atraem o público que está realmente interessado em consumir o conteúdo dessa forma trazendo tráfego orgânico e real, assim aumentando a conversão de visitas para cumprir objetivo do site, pois para o usuário que realiza uma pesquisa _quanto mais próximo da resposta o visitante chegar maior será a probabilidade dele acessar_, seja vender um produto ou serviço por exemplo. Pode-se dizer que long tails são variações das head tails, que garantem mais eficiência e especificidade no resultado das buscas, pois como as long tails não possuem um volume de busca tão grande quanto as head tails, é uma competição muito menor pelas 1ªs páginas. Em outras palavras, apesar de serem palavras-chave com baixo volume de busca, as long tails possuem "cliques" mais qualificados, uma vez que não levam respostas vagas a quem pesquisa, e isto influencia diretamente no ROI, já que as chances de conversão são maiores.

###### FORMATAÇÃO
 A tag **`pre`** significa *texto pré formatado*, e permite que o navegador interprete o texto escrito da forma em que está no documento, respeitando as quebras de linha, espaços e etc.<br/>
 *Na ausência da tag `pre`, o navegador não leva em conta que o código fonte contém quebras de linha, espaços em branco e etc no texto.*<br/>
 Exemplo:
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
 *Links* ou *Hyperlinks*, são textos ou objetos compostos por uma URL com o endereço do destino sobre os quais pode-se clicar para chegar em outra parte do documento, outra página do mesmo site ou mesmo em outro site na Internet, entre outras funções.<br/>
 No hyperlink, distinguimos as seguintes partes:
 - Abertura e fechamento da tag de hyperlink `<a>...</a>`.
 - O atributo `href="https://url.domain"` contendo o caminho para o endereço desejado.
 - Um texto descritivo ao usuário.

 **ÂNCORAS**<br/>
 **Âncoras** ou **bookmarks** *são links **dentro da mesma página**, que, ao clicar em um deles, seremos levados a uma posição diferente e específica dentro da mesma página.*<br/>
 O código dos marcadores é criado com o atributo **`id`**. Tanto o `name` quanto o `id` para uma tag específica devem ser únicos, ou seja, não podem haver 2 tags com o mesmo `name` ou `id` dentro de um documento. **Para criar este tipo de ligação, 2 operações devem ser realizadas**, primeiro deve-se estabelecer *marcadores*, chamados de *âncoras*, ao longo da página, que serão os locais para os quais saltaremos com os links. Em seguida, adicionar os links direcionando para os marcadores, usando a sintaxe `<a href="#marcador">go</a>`.
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

Também é possível, com o uso de um link, levar o usuário a um bookmark presente em outra página.
```html
<a href="http://www.website.com/path/file/#bookmark">
  Saiba mais.
</a>
```
O exemplo acima fará com que o usuário que clicar no link seja levado à porção da página indicada no endereço, especificamente no ponto onde o `#bookmark` seja visível.

**LINKS INTERNOS**<br/>
 Um **link interno** aponta para outra página dentro do mesmo site, é usado para navegar entre os diferentes arquivos do nosso site. Um exemplo disso são os menus de navegação, que ao clicar em uma opção é carregada outra página no nosso website. Para criar um link interno, informamos o caminho e nome do arquivo que queremos exibir
```html
<a href="page.html">Link Interno</a>
```

**LINKS EXTERNOS**<br/>
 Um **hyperlink outbound** *é um link para outro site na Internet, um site externo, ou seja, é uma "ligação" para qualquer outro lugar fora do site atual.*<br/>
 Quando colocamos um link externo, digitamos o endereço completo, incluindo `https://www...`; estas rotas que incluem `https://www...` são chamadas de **rotas absolutas**.
```html
<a href="https://raphaelkaique1.github.io/raphaelkaique1">ir para esta página</a>
```

 > A URL é mais um dos elementos analisados pelos mecanismos de busca para o posicionamento do site nos resultados de busca, usar palavras-chave na URL aumentam a relevância para a página em relação aos termos. Por isso, o uso de palavras-chave nos `paths` e nas `anchors` criam URL amigáveis e com maior pontuação na  indexação, por exemplo: `https://github.com/curso-de-html#SEO`, cada elemento que compõe a URL ajuda a subir no rank de listagem dos motores de busca.

**ATRIBUTO `target`**<br/>
 Quando criamos um link, por padrão o navegador abrirá a página de destino na mesma janela, mas é possível solicitar ao navegador que abra "à parte", numa nova aba. Isto é útil, por exemplo, se quisermos abrir uma página externa ao nosso site, mas sem que o visitante perca a nossa. Para isso, usamos o atributo `target` com uma das seguintes opções:
 - `_blank`: Abre o documento vinculado em uma nova aba do navegador.
 - `_self`: Esta é a opção padrão. Abre o documento vinculado na mesma aba em que o link foi clicado.
 - `frame_name`: Abre no frame especificado.
 - `_parent`: Abre o link dentro do frame pai substituindo a página que contém o frame, caso não haja se comporta como `self`.
 - `_top`: Abre no frame mais externo ignorando todos os frames inferiores, caso não haja um também se comporta como `self`.

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

Além dos caminhos para outras localizações na web, os links possuem uma outra funcionalidade, o **esquemas de URI**, que são protocolos que acionam diferentes tipos de ação diretamente no dispositivo do usuário como iniciar chamadas, abrir apps, enviar mensagens entre outras inúmeras opções. Todos eles podem ser combinados com *`query strings`* para incluir textos na mensagem ou preencher o título de um e-mail por exemplo. Alguns dos esquemas mais comuns são:

- **email**: abre o cliente de email padrão com o endereço preenchido, e pode incluir `subject`, `body`, `cc` e `bcc` (cópia oculta) via query string.
```html
<a href="mailto:name@email.com?subject=Hello%20World">send e-mail</a>

<a href="mailto:contact@company.com?subject=Budget&body=Hi,%20I%20would%20like%20a%20quote.&cc=another@company.com&bcc=hidden@company.com">
  Enviar e-mail
</a>
```

- **telefone**: inicia uma chamada telefônica nos dispositivos que suportam este serviço, também pode ser usado para links de aplicativos de comunicação que oferecem este serviço.
```html
<a href="tel:+5531996653731">+55 (31) 9 9665-3731</a>
```

- **sms**: abre o app de mensagens de texto com o número informado – alguns sistemas suportam `?body=Mensagem`.
```html
<a href="sms:+5531996653731?body=Hi">send SMS</a>
```

- **geolocalização**: abre o serviço de mapas com a localização informada.
```html
<a href="geo:-23.5505,-46.6333">São Paulo</a>
```

- **custom URL schemes**: alguns aplicativos oferecem seus próprios esquemas para permitir integração direta.
  - WhatsApp:
    - `https://wa.me/5531996653731?text=Hello`
    - `https://api.whatsapp.com/send?phone=5531996653731&text=👋😄`
  - Facebook Messenger:
    - `fb-messenger://user-thread/user_id`
  - Skype:
    - `skype:live:username?chat`
    - `skype:live:username?call`
  - Zoom:
    - `zoommtg://zoom.us/join?confno=953101359`

É importante notar que nem todos os navegadores, clientes e sistemas operações suportam todos os parâmetros, o comportamento pode variar, o suporte depende entre estes fatores também das permissões do usuário, além de que os caracteres especiais devem ser convertidos via URL encoding. Alguns outros esquemas menos utilizados:
| protocolo               | uso                                                      |
| ----------------------- | -------------------------------------------------------- |
| `data:`                 | Embute conteúdo direto na URL, como imagens por exemplo. |
| `file:`                 | Abre arquivos locais, mas é limitado por segurança.      |
| `intent:`               | Específico para abrir apps em sistemas Android.          |
| `market:`               | Android Play Store.                                      |
| `itms:` ou `itms-apps:` | iOS App Store.                                           |
| `magnet:`               | Usado por torrents.                                      |
| `irc:`                  | Inicia um cliente IRC.                                   |

###### PATHS
Em HTML e também outras tecnologias web como CSS e JS, os caminhos são usados para referenciar arquivos como imagens, folhas de estilo, scripts, páginas e outros recursos. Existem diferentes tipos de caminhos e entender cada um é fundamental para a navegação de um web site ou uma aplicação web.

1. **absolute**: é o caminho que aponta para uma URL completa na web, ou seja, independente da localização do arquivo HTML no projeto o link irá funcionar, pois aponta diretamente para o recurso.
```html
<a href="https://raphaelkaique1.github.io/raphaelkaique1/main/index.html">raphaelkaique1</a>
```

2. **root-relative**: caminho relativo à raiz do site, geralmente a pasta pública do servidor. Inicia-se com uma barra **`/`**, se o site estiver hospedado em **`https://website.com`**, o caminho **`/img/logo.png`** apontará para **`https://website.com/img/logo.png`**.
```html
<img src="/img/logo.png" alt="Logo"/>
```

3. **relative-path**: indica o caminho a partir do arquivo HTML atual, ideal para sites locais ou projetos em pastas tornando o projeto portável pois funciona mesmo ao mover o site para outro domínio.
```html
<!-- index.html -->
<link rel="stylesheet" href="css/style.css"/>
<a href="about.html">about</a>
```

4. **directory-above**: caminho relativo que navega entre os diretórios a partir do arquivo atual.
```html
<img src="../img/logo.png" alt="Logo"/>
```

**browser tool**<br/>
O protocolo `about` acessa recursos internos do navegador, e uma maneira de se abrir páginas em branco sem nenhum conteúdo HTML, CSS ou JS é utilizar o `about:blank`. Esta técnica é utilizada frequentemente como um *ponto de partida* ou mesmo um *placeholder* nas aplicações web. Essa URL sempre exibe uma página completamente vazia, sem elementos visuais nem código, tem diversos usos como para páginas iniciais temporárias, ou um destino neutro ao abrir novas janelas, ou ainda como uma forma segura de criar um `iframe` vazio antes de carregá-lo ou limpá-lo sem necessariamente recarregar a página atual ou redirecionar para outro site.
```html
<!-- iframe vazio -->
<iframe src="about:blank"></iframe>

<!-- fallback de links sem destino, evitando criar âncoras poluindo URL com # -->
<a href="about:blank">Link sem destino</a>

<script>
  // injetando conteúdo dinâmicamente
  const newWindow = window.open("about:blank");
  newWindow.document.write("<h1>Olá</h1>");

  // destino de redirecionamento temporário
  window.location.href = "about:blank";
</script>
```

###### LISTAS
 **_*Podemos combinar todos os tipos de listas que veremos a seguir uns com os outros, a depender da necessidade; <u>mas sempre pensando no SEO</u>._**<br/>
 Listas nos permitem criar conjuntos de elementos ordenados em uma página, todos geralmente precedidos por simbolos ou números em sequência. Os tipos de listas são os seguintes:
 - Listas desordenadas: adiciona um marcador antes de cada elemento.
 - Listas ordenadas: enumera os itens de forma ordenada.
 - Listas de definição: contém termos e suas definições.

**LISTAS NÃO ORDENADAS**<br/>
 Para este tipo de lista usa-se a tag **`ul`** (*unordered list*); para acrescentar um item deve-se usar a tag **`li`** (*list item*).<br/>
 Mesmo se não indicarmos nada na etiqueta `li`, o marcador de item de lista será gerado automaticamente.<br/>
 *Por padrão, as listas não ordenadas são compostas de pontos.* **Mas se quisermos podemos definir o símbolos de marcação conforme desejar.**<br/>
 No passado, usava-se o atributo `type`, porém este método está depreciado, sendo substituído por outro métodos usando CSS como o `list-style-type` por exemplo, mas para conhecimento, os tipos são:
 - `disc`: • (padrão)
 - `circle`: ○
 - `square`: ■ / □
 - `none`: Sem marcador.

```html
<ul>
    <li>Primeiro item.</li>
    <li>Segundo item.
      <ul>
        <li>Primeiro item da lista aninhada</li>
        <li>Segundo item da lista aninhada</li>
      </ul>
    </li>
    <li>Terceiro item.</li>
</ul>
```
<ul>
    <li>Primeiro item.</li>
    <li>Segundo item.
      <ul>
        <li>Primeiro item da lista aninhada</li>
        <li>Segundo item da lista aninhada</li>
      </ul>
    </li>
    <li>Terceiro item.</li>
</ul>
 
**LISTAS ORDENADAS**<br/>
 Para definirmos uma lista ordenada, usamos a tag **`ol`** (*ordened list*), onde cada elemento da lista será escrito com a mesma tag que para as listas não ordenadas, ou seja, a tag **`li`**.<br/>
 *Mas como são listas ordenadas, os símbolos padrão serão números, e estes serão gerados automaticamente em ordem a medida que são adicionados novos itens à lista.*<br/>
 No passado, usava-se o atributo `value` para definir o número para um item, mas este método não é mais utilizado e nem recomendado, caso queira realizar uma lista com valores personalizados, é melhor que se faça com uma lista não ordenada. Este atributo não aceita valores que não sejam números inteiros, caso contrário, ele irá truncar o valor ou seguir a ordem normal da lista.<br/>
 O atributo para alterar o tipo de ordenação da lista é o `type`, que pode ser de algum dos seguintes:
 - `type="1"`: padrão → 1, 2, 3...
 - `type="A"`: maiúsculas → A, B, C...
 - `type="a"`: minúsculas → a, b, c...
 - `type="I"`: romanos maiúsculos → I, II, III...
 - `type="i"`: romanos minúsculos → i, ii, iii...

```html
<ol>
    <li>Primeiro item.</li>
    <li>Segundo item.
      <ol>
        <li>Primeiro item da lista aninhada</li>
        <li>Segundo item da lista aninhada</li>
      </ol>
    </li>
    <li>Terceiro item.</li>
    <li value="10">Outro item usando atributo `value`</li>
</ol>
```
<ol>
    <li>Primeiro item.</li>
    <li>Segundo item.
      <ol>
        <li>Primeiro item da lista aninhada</li>
        <li>Segundo item da lista aninhada</li>
      </ol>
    </li>
    <li>Terceiro item.</li>
    <li value="10">Outro item usando atributo `value`</li>
</ol>

 Outro atributo útil é o `start`, que simplesmente inicia a lista a partir de um valor definido:
```html
<ol start="5">
  <li>5º item</li>
  <li>6º item</li>
  <li>7º item</li>
  <li>8º item</li>
  <li>9º item</li>
</ol>
```
<ol start="5">
  <li>5º item</li>
  <li>6º item</li>
  <li>7º item</li>
  <li>8º item</li>
  <li>9º item</li>
</ol>

 O atributo `reversed` inverte a ordem da lista automaticamente de acordo com a quantidade de itens existentes.
```html
<ol reversed>
  <li>Item 3</li>
  <li>Item 2</li>
  <li>Item 1</li>
</ol>
```
<ol reversed>
  <li>Item 3</li>
  <li>Item 2</li>
  <li>Item 1</li>
</ol>

 Todos os atributos podem ser combinados para a criação de uma lista:
```html
<ol type="I" start="3" reversed>
  <li>3º item</li>
  <li>2º item</li>
  <li>1º item</li>
</ol>
```
<ol type="I" start="3" reversed>
  <li>3º item</li>
  <li>2º item</li>
  <li>1º item</li>
</ol>

 **Mas o ideal é que somente se altere o tipo de ordenação da lista por meio do CSS, para manter o documento HTML limpo e organizado.**

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
 1. **`th` título**: Define um título de cabeçalho.
 2. **`tr` linhas**: Define uma linha da tabela.
 3. **`td` células**: Cada célula é uma parte da linha contida em uma coluna.
 4. **`thead`**: Elemento semântico para agrupar os cabeçalhos da tabela.
 5. **`tbody`**: Elemento semântico para agrupar o corpo (*células*) da tabela.
 6. **`tfoot`**: Elemento semântico para agrupar o rodapé da tabela.

 Existem alguns atributos para a estilização de tabelas que não são mais utilizados, o ideal é que toda a parte de personalização seja feita com CSS e que se mantenha o HTML limpo contendo apenas o conteúdo de informação. A título didático, alguns dos atributos existentes são:
 - `width`: define a largura da tabela.
 - `height`: define a altura da tabela.
 - `border`: define a largura da borda da tabela.
 - `bgcolor`: define uma cor de fundo tanto para a tabela inteira quanto para células específicas.
 - `align`: define o alinhamento horizontal do texto nas células.
 - `valign`: define o alinhamento vertical do texto nas células.
 - `cellpadding`: define a distância entre o texto e a borda da célula.
 - `cellspacing`: define o espaço entre uma célula e outra.

_*Quando o conteúdo de uma célula estiver vazio, deve-se usar um espaço em branco, que é escrito em HTML como: `&nbsp;`; isto fará com que a tabela seja exibida corretamente, pois alguns navegadores tem problemas para renderizar células vazias._<br/>
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
 - **`caption` description**: *Usada para definir um título para a tabela*; sua posição pode ser definida usando CSS. **Este elemento só é permitido se ele for inserido logo após a abertura da tabela.**
```html
<table>
    <!-- área de cabeçalho -->
    <caption>SOFTWARE DEVELOPER</caption>
    <thead> <!-- grupo de cabeçalho -->
      <tr>
          <th>&nbsp;</th> <!-- COLUNA 1 -->
          <th>front-end</th> <!-- COLUNA 2 -->
          <th>back-end</th> <!-- COLUNA 3 -->
          <th>devops</th> <!-- COLUNA 4 -->
      </tr>
    </thead>
    <!-- LINHA 1 -->
    <tbody> <!-- corpo de informações da tabela -->
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
    </tbody>
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

 - **`scope` escopo**: *Fornece um mecanismo para indiciar explicitamente quais células de cabeçalho ele afeta.* **Este atributo só pode ser declarado em células de cabeçalho** e tomar os valores `col`, `row`, `colgroup` e `rowgroup`.<br/>
 Os valores `col` e `row` indicam que a célula de cabeçalho fornece informações para as demais células da coluna ou linha em que está presente.<br/>
 No exemplo a seguir, a célula no canto superior esquerdo da tabela forneceria informações ambíguas se o atributo `scope` não estivesse presente; em outras palavras, isso afetaria as células de sua coluna, bem como as células da sua linha. *A presença deste atributo deixou claro que as células afetadas por este cabeçalho são aquelas na mesma linha.*
```html
<table>
    <tr>
        <th scope="row">Dia</th>
        <th scope="col">Hoje</th>
        <th scope="col">Amanhã</th>
        <th scope="col">Depois de Amanhã</th>
    </tr>
    <tr>
        <th scope="row">Condição</th>
        <td>Ensolarado</td>
        <td>Parcialmente nublado</td>
        <td>Nublado</td>
    </tr>
    <tr>
        <th scope="row">Temperatura</th>
        <td>19°C</td>
        <td>17°C</td>
        <td>12°C</td>
    </tr>
    <tr>
        <th scope="row">Ventos</th>
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

 - **`colgroup`**: este elemento é usado para agrupar uma ou mais colunas em uma tabela, e geralmente é usado em conjunto com a tag **`col`** para aplicar estilos a colunas inteiras. A tag `col` além de dar uma identidade para cada coluna, quando usada com o atributo `span` dá mais semântica para a tabela pois este atributo define quantas colunas consecutivas o elemento `col` deve abranger – ou seja, quantas colunas ele afeta na tabela, pois quando se tem múltiplos `col` dentro de um `colgroup`, o navegador aplica os estilos nas colunas da esquerda para a direita, respeitando o `span` de cada `col`. O valor padrão de `span` é `1` – pode ser omitido – e este atributo funciona apenas em `col` dentro de `colgroup`.
```html
<style>
    #name {
        background-color: aquamarine;
    }

    #info {
        background-color: aqua;
    }
</style>

<table border="1px">
  <caption>clientes cadastrados</caption>
  <colgroup>
      <col span="1" id="name"/>
      <col span="2" id="info"/>
  </colgroup>
  <thead>
    <tr>
      <th>Nome</th>
      <th>Telefone</th>
      <th>email</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Raphael</td>
      <td>(31) 99665-3731</td>
      <td>raphaelkaiquediassantos@gmail.com</td>
    </tr>
    <tr>
      <td>Kaíque</td>
      <td>(31) 99665-3731</td>
      <td>raphaelkaiquediassantos@gmail.com</td>
    </tr>
  </tbody>
  <tfoot>
    <td colspan="3">Total: 2</td>
  </tfoot>
</table>
```
Neste exemplo, os elementos da 1ª coluna incluindo o `tfoot` terão o fundo `aquamarine`, e as 2 seguintes terão fundo `aqua`.

###### MULTIMÍDIA
 A tag **`figure`** é usada para representar qualquer elemento multimídia, sejam vídeos, imagens, sons, animações e etc. Ela melhora o posicionamento SEO da página.<br/>
 A tag **`source`** junto ou não do atributo **`src`** é utilizada para indicar o caminho até o arquivo de mídia, para que possa ser carregado e exibido na página.<br/>
 Para adicionar mais semântica a um elemento envolto por ela, é possível utilizar a tag `figcaption` para incluir um título e adicionar uma descrição para a mídia.
```html
<figure>
  <></>
  <figcaption>Legenda</figcaption>
</figure>
```

Tudo aquilo que existir dentro de `figcaption` representa uma legenda para a imagem. Sua grande vantagem é de que essa legenda não se restringe apenas a um texto simples, mas pode ser composta de uma maneira rica, com títulos, parágrafos, e o que mais for preciso, tudo depende da necessidade de uso.
```html
<figure>
  <></>
  <figcaption>
    <!-- <h3>Headings devem ser usados com cautela, apenas se fizerem sentido na estrutura hierarquica do documento, pois podem prejudicar o SEO.</h3> -->
    <strong>Mais Recomendado para um Título de Legenda</strong>
    <p>Descrição detalhada da legenda se necessário. No geral, uma `figcaption` pode conter tags de parágrafos, links, listas e etc – quanto mais rico for o detalhamento, mais tags deverão ser inclusas para adicionar semântica.</p>
  </figcaption>
</figure>
```

**IMAGENS**<br/>
 As imagens em páginas web são armazenadas também como arquivos separados em servidores web, e o navegador faz o trabalho de baixar todas enquanto a página é processada, mantendo a conexão com o servidor até que todas as informações sejam baixadas e fornecidas quando disponíveis. A grande maioria dos navegadores renderiza as imagens juntamente com os textos e outros materiais na página a ser exibida.<br/>
 A tag que possibilita a renderização de imagens no documento é a **`<img/>`**, que através do atributo obrigatório **`src`** é possível indicar o local do armazenamento da imagem a ser usada.<br/>
 O conteúdo no atritbuto **`alt`** será utilizado apenas quando a imagem não for carregada – a imagem não existe mais no caminho informado ou o caminho está desatualizado – ou pelos leitores de tela de acessibilidade.
 ```html
 <img src="image_path/img.ext" title="Image title." alt="Accessibility description."/>
 ```
 > Além do `alt`, usar palavras-chave no nome do arquivo ajuda no SEO, pois os buscadores irão indexar a imagem através do seu nome. Como os motores de busca (ainda) não lêem imagens, utilizar palavras-chave tanto no texto alternativo quanto no nome do arquivo eleva o SEO do site. Para uma loja online por exemplo, para aumentar suas chances de conversão de buscas em vendas, o ideal é que o nome da imagem do produto forneça uma descrição detalhada informando marca, modelo, cor e tamanho por exemplo.

 As imagens dentro de uma página web são incluídas dentro da tag **`figure`** que define uma imagem em conjunto com a tag **`<img/>`**, indicando para o navegador que uma imagem deve ser renderizada naquele local.<br/>
 Ao utilizá-la, é necessário especificar o caminho onde a imagem está localizada, seja um caminho para um diretório local ou um endereço na internet; **isso é feito com o atributo `src`, que é um atributo obrigatório para exibir a imagem e aponta para a sua localização.**<br/>
 **Outros atributos não obrigatórios mas ALTAMENTE RECOMENDADOOS PARA O SEO, são os atributos `alt` e `title`.**
 - **`alt` alternative**: *Permite exibir uma mensagem alternativa no lugar da imagem caso ela não possa ser encontrada e exibida.*
 - **`title` título**: *Permite atribuir um título à imagem.*
```html
<figure>
    <img src="https://avatars.githubusercontent.com/u/182168576" alt="Logo Tech n' Logic" title="Tech n' Logic"/>
    <figcaption>Fonte: Tech n' Logic GitHub profile</figcaption>
</figure>
```
<figure>
    <img src="https://avatars.githubusercontent.com/u/182168576" width="190rem" alt="Logo Tech n' Logic" title="Tech n' Logic" figcaption="Fonte: Tech n' Logic GitHub profile"/>
</figure>

 O HTML suporta vários diferentes formatos de imagens, porém cada tipo tem suas vantagens e desvantagens:
 - **JPEG**: bom para fotografias e imagens com muitas cores.
 - **PNG**: suporta transparência e é utilizado para gráficos com menos cores.
 - **GIF**: suporta animações, mas é limitado a 256 cores.
 - **SVG**: gráficos vetoriais escaláveis, ideais para ícones e logotipos.

O uso de imagens nos documentos traz um resultado mais rico para a página, mas que algumas vezes podem acabar *pesando* no desempenho e performance da página, tornando a aplicação lenta, mas existem algumas técnicas e atributos para evitar isto, ajudando os navegadores a otimizar *como*, *quando* e *qual qualidade* a imagem é carregada.

- **`loading`**: este atributo permite definir o tipo de carregamento da imagem.
  - **`lazy`**: este valor faz com que a imagem seja carregada **apenas** quando estiver perto de ser exibida na tela.
  - **`eager`**: valor padrão que carrega a imagem imediamente, junto com o carregamento de todo o conteúdo do documento.

```html
<img src="img.jpg" loading="lazy" alt="Image description."/>
```

- **`decoding`**: este atributo permite controlar como a imagem é decodificada pelo navegador.
  - **`async`**: valor recomendado pois decodifica a imagem de forma assíncrona, tornando o carregamento mais veloz.
  - **`sync`**: define que a decodificação seja feita de forma síncrona, mas pode travar o `render` e por isso deve ser usado apenas quando necessário.
  - **`auto`**: valor padrão, onde o navegador decide qual o melhor tipo a ser usado.

```html
<img src="img.jpg" decoding="async" alt="Image description."/>
```

- **`width`** / **`height`**: define as dimensões da imagem evitando *reflows* e otimizando a renderização, ajudando o navegador a reservar espaço e evitar saltos de layout **Cumulative Layout Shift**. **Aceita todos os tipos de valores de tamanho existentes, caso implícito o navegador entenderá como sendo __`px`__.*

```html
<img src="img.jpg" width="500" height="500" alt="Image description."/>
```

- **`srcset`** / **`sizes`**: fornece múltiplas versões da imagem para diferentes tamanhos de tela e resoluções, muito utilizado para imagens responsivas.
```html
<img 
  src="image-800.jpg" 
  srcset="image-400.jpg 400w, image-800.jpg 800w, image-1200.jpg 1200w"
  sizes="(max-width: 600px) 400px, (max-width: 900px) 800px, 1200px"
  alt="Image description."
/>
```

Além de todas as técnicas que podem ser aplicadas ao documento, o ideal é que sempre se otimize ao máximo as imagens, tanto em tamanho quanto em dimensões, melhorando assim tanto seu tempo de download e gasto de banda por parte do navegador quanto para evitar o shift layout sem poluir as tags `img` com `width` e `height` já que as imagens já estarão no seu tamanho ideal.<br/>
Existem várias ferramentas para redimensionar e comprimir imagens, e o ideal é que se comprima uma imagem ao máximo – ou seja, até o ponto em que não é possível mais otimizar seu tamanho. Uma ferramenta online bastante útil para realizar estes processos é o [easy-resize](https://www.easy-resize.com/en/).

Para melhorar o posicionamento SEO de uma imagem em um documento, além da tag `figure` também pode-se usar a tag **`picture`** para tornar a aplicação mais responsiva.<br/>
Esta tag fornece múltiplas versões da mesma imagem em formatos e tamanhos diferentes, permitindo ao navegador escolher a melhor versão de acordo com o dispositivo ou suporte à formatos. Ela trabalha com os atributos **`source`** assim como nos demais tipos de mídia para oferer mais opções e contém 1 única **`img`** como fallback.
- **`picture`**: campo que informa ao navegador quais as opções de renderização para um recurso.
  - **`source`**: informa os caminhos para cada recurso.
    - **`srcset`**: caminho para a imagem.
    - **`type`**: atributo que informa o navegador qual o tipo da imagem – para a melhor qualidade na sua exibição.
    - **`media`**: define condições de uso como breakpoints de largura, altura, orientação ou densidade de tela para escolher a versão mais adequada do recurso. Este atributo controla não apenas a aparência, mas também qual arquivo de imagem o navegador deve baixar baixar e renderizar, e por isso não pode ser substituído diretamente por CSS.
```html
<picture>
  <source srcset="image.avif" type="image/avif" media="(min-width: 1024px)"/>
  <source srcset="image.webp" type="image/webp" media="(max-width: 1023px)"/>
  <img src="image.jpg"  alt="Image description."/>
</picture>
```
> O navegador tentará carregar do 1º para o último atributo em ordem caso algum não seja suportado.

Então, enquanto `figure` fornece um agrupamento do conteúdo de mídia e suas informações como legendas por exemplo, `picture` informa ao navegador todas as opções para a exibição do determinado recurso.<br/>
**A melhor prática para a exibição de uma imagem em uma aplicação web é a utilização de ambas as tags, para obter controle, acessibilidade e semântica.**
```html
<figure>
  <picture>
    <source srcset="image.avif" type="image/avif" media="(min-width: 1024px)"/>
    <source srcset="image.webp" type="image/webp" media="(max-width: 1023px)"/>
    <img src="image.jpg"  alt="Image description."/>
  </picture>
  <figcaption>Paisagem ao pôr do sol na Serra da Mantiqueira.</figcaption>
</figure>
```

Além do uso correto das estruturas e seus atributos, para uma melhor qualidade na exibição das imagens e performance da página é escolher corretamente o melhor e mais adequado formato, além de utilizar técnicas como a compressão das imagens, CDNs e placeholder com baixa qualidade para a otimização do desempenho.

**[MAP](https://www.image-map.net/)**<br/>
Cria o mapeamento de áreas clicáveis dentro de uma imagem, sendo possível definir diferentes regiões de uma imagem que funcionam como links ou áreas interativas. Para que seja possível utilizá-lo, o elemento `img` deve possuir o atributo `usemap` associado ao `name` da tag `map` para a imagem em questão, e então dentro do `map` deve-se definir as áreas interativas com `area`.<br/>
As coordenadas `coords` em `area` definem a posição da área sobre a imagem com base no sistema de coordenadas em pixels da imagem – elas não definem o *"tamanho"* da área diretamente, apenas o início e o fim da área mapeada. **Cada par de coordenadas `(x0, y0)` representa um ponto de localização na imagem que ao se unir com outros pontos cria uma área mapeada, sendo sempre da esquerda para a direta o ponto inicial e os demais pontos para a demarcação da área respectivamente.** 
```html
<img src="brasil.png" usemap="#brasilmap" alt="Mapa do Brasil">

<map name="brasilmap">
  <area shape="poly" coords="300, 60, 320, 80, 310, 100, 290, 90" href="https://mg.gov.br" alt="Minas Gerais"/>
  <area shape="rect" coords="50, 50, 150, 100" href="https://sp.gov.br" alt="São Paulo"/>
  <area shape="circle" coords="200, 80, 30" href="https://rj.gov.br" alt="Rio de Janeiro"/>
</map>
```
- `shape`: define a forma da área, onde os eixos `x, y,` definem o ponto inicial da formação da área enquanto `w, h` definem o valor da largura e altura da área, podendo possuir os valores:
    - `circle`: `coords="(x, y) coordenada_inicial_centro_circulo, (z) raio_do_circulo"`
    - `rect`: `coords="(x, y) coordenada_inicial_canto_superior_esquerdo, (w, h) largura_altura_da_area"`
    - `poly`: `coords="(x1, y1) coordenada_ponto-1, (x2, y2) coordenada_ponto-2, (x3, y3) coordenada_ponto-3, ..."`
- `coords`: coordenadas da posição da área sobre a imagem, variando conforme o `shape`, o tamanho da área é consequência da distância entre os pontos.
- `href`: link que será acionado ao clicar na área, **não obrigatório**.
- `alt`: texto alternativo para acessibilidade.
- `target`: onde abrir o link (ex: `_blank` para nova aba).

O mapa funciona melhor com imagens de tamanho fixo, ou seja, sem redimensionamento automático – a menos que seja usado JavaScript para adaptar as coordenadas dinamicamente.

**ÁUDIO**<br/>
 O uso de áudio em páginas web não é recomendado atualmente por ser desconfortável para o usuário, especialmente quando várias abas estão abertas e cada uma reproduz um áudio.<br/>
 Entretando, é interessante conhecer esta ferramenta. *A etiqueta que nos permite utilizar o áudio é a tag `audio`.*<br/>
 Possui os seguintes atributos:
 - **`src`**: necessário para especificar o caminho do áudio.
 - **`mediagroup`**: Agrupa vários players para que controlem uns aos outros.
 - **`controls`**: Exibe o painel de controle de áudio, como botões de play, pause, stop, volume e velocidade de reprodução.
   - **`controlsList`**: Personaliza os controles nativos do player.
     - `"nodownload"`: Remove o botão de download.
     - `"noremoteplayback"`: Impede o envio da mídia para outros dispositivos.
     - `"noplaybackrate"`: Remove controle de velocidade de reprodução.
     - `"novolume"`: Oculta o controle de volume.
 - **`autoplay`**: O áudio é tocado automaticamente quando a página é carregada.
 - **`loop`**: O áudio é reproduzido em loop.
 - **`muted`**: Inicia o áudio sem som.
 - **`preload`**: Permite espeficar algumas características do vídeo antes de ser carregado, por exemplo, quantos quadros o vídeo tem, seu tempo de duração e etc.
   - `"none"`: Nada é carregado até play.
   - `"metadata"`: Apenas os metadados como duração e dimensões.
   - `"auto" / ""`: Carrega completamente ou conforme o navegador julgar conveniente.
 - **`disableremoteplayback`**: Bloqueia streaming para dispositivos remotos.
 - **`crossorigin`**: Define política de CORS para o vídeo.
   - `"anonymous"`
   - `"use-credentials"`
```html
<audio controls>
    <source src="audio.ogg" type="audio/ogg"/>
    <source src="audio.mp3" type="audio/mpeg"/>
</audio>
```

**VÍDEOS**<br/>
 Semelhante a trabalhar com imagens, para a sua inclusão, usa-se a tag `video`, *que possui um par de fechamento*. Essa tag permite inserir facilmente na página mídias de vídeo e controlá-las com maior facilidade, não apenas nas propriedades visuais como tamanho do vídeo e botões, como também utilizar códigos mais complexos como scripts para modificar a execução do vídeo, pausando ele por componentes externos ao vídeo por exemplo.<br/>
 Possui os seguintes atributos:
 - **`src`**: Permite especificar o caminho onde o vídeo está armazenado. **Pode-se usar a tag `source`, incluindo várias tags apontando para diferentes formatos de vídeo, permitindo ao navegador escolher o formato que ele consegue reproduzir.** *Não é obrigatória, pode-se usar apenas como atributo ou uma única tag, o uso de múltiplas tags apenas garante que o vídeo seja reproduzido em diversos navegadores.*
 - **`type`**: informa o tipo do conteúdo e qual o seu formato de reprodução.
 - **`controls`**: Adiciona controles visuais ao vídeo.
   - **`controlsList`**: Personaliza os controles nativos do player.
     - `"nodownload"`: Remove o botão de download.
     - `"nofullscreen"`: Remove o botão de tela cheia.
     - `"noremoteplayback"`: Impede o envio da mídia para outros dispositivos.
     - `"noplaybackrate"`: Remove controle de velocidade de reprodução.
     - `"novolume"`: Oculta o controle de volume.
 - **`playsinline`**: Permite reprodução inline em dispositivos móveis.
 - **`crossorigin`**: Define política de CORS para o vídeo.
   - `"anonymous"`
   - `"use-credentials"`
 - **`controlsList`**: Permite remover certos controles nativos (nodownload, nofullscreen, etc.).
 - **`disablePictureInPicture`**: Impede o uso de modo picture-in-picture.
 - **`disableRemotePlayback`**: Impede envio do vídeo para dispositivos remotos.
 - **`autoplay`**: O vídeo é executado automaticamente quando a página é carregada.
 - **`muted`**: Inicia o vídeo sem som.
 - **`loop`**: O vídeo é executado em loop.
 - **`poster`**: Permite definir uma *imagem "de capa"* ao vídeo, que será exibida antes da reprodução do vídeo.
 - **`preload`**: Permite espeficar algumas características do vídeo antes de ser carregado, por exemplo, quantos quadros o vídeo tem, seu tempo de duração e etc.
   - `"none"`: Nada é carregado até play.
   - `"metadata"`: Apenas os metadados como duração e dimensões.
   - `"auto" / ""`: Carrega completamente ou conforme o navegador julgar conveniente.
 - **`track`**: **VTT** ou *Video Text Tracks* é um formato de arquivo utilizado para legendas, transcrições ou descrições em áudio de vídeos, indicado para aumentar o SEO (pois leva em consideração questões de acessibilidade). *Possui um formato simples de texto, onde cada linha descreve um intervalo de tempo e o conteúdo de legenda para esse intervalo.* **A tag `<track/>` adiciona legendas, no íveo e proporciona uma interface para os usuários escolherem opções de legenda.**
   - **`src`**: *Especifica o caminho do arquivo de legendas, normalmente em formato VTT.* Deve ser um caminho absoluto ou relativo para o arquivo de legendas.
   - **`label`**: *Este atributo fornece um rótulo legível para o usuário, que aparecerá no menu de seleção de legendas do player de vídeo.* O valor de `label` pode ser usado para exibir o nome da legenda ou descrição para o usuário.
   - **`srclang`**: *Define a linguagem do arquivo de legendas.* Normalmente, esse atributo é usado para indicar a língua do conteúdo das legendas, permitindo que o navegador escolha as legendas corretas para o usuário com base em seu idioma preferido.
   - **`kind`**: *Define o tipo de conteúdo que será fornecido pela tag `track`.* Os valores mais comuns para `kind` são:
     - **`subtitles`**: *Para legendas no idioma falado.*
     - **`captions`**: *Para legendas ocultas (geralmente para deficientes auditivos, incluindo não apenas a fala, mas também sons de fundo, como "porta batendo").*
     - **`descriptions`**: *Para descrições de áudio, geralmente usadas para pessoas com deficiência visual, descrevendo cenas de um vídeo.*
     - **`chapters`**: *Usado para capítulos de um vídeo (mais raro, mas pode ser utilizado em vídeos longos com capítulos distintos).*
   - **`default`**: Define a legenda em questão como a padrão, usado quando há mais de um idioma de legenda.
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
        <source src="capa.jpg" type="video/jpeg"> <!-- também pode ser usado para definir uma imagem de capa -->
        <track src="legendas.vtt" kind="subtitles" srclang="pt" label="Português">
        <track src="legendas-en.vtt" kind="subtitles" srclang="en" label="English">
    </video>
</figure>
```

**IMPORTANDO CONTEÚDO**<br/>
 Com `frame` é possível inserir mais de um documento dentro da mesma tela do navegador, podendo determinar a maneira como os documentos serão exibidos – horizontalmente ou verticalmente. *Cada documento HTML dentro de outro é chamado de `frame` e cada `frame` é independente.*<br/>
 Embora isso ajude a organizar o conteúdo das páginas, algumas desvantagens são notáveis, como a maior necessidade de atenção do desenvolvedor para manter os documentos HTML e também a dificuldade para a impressão de uma página.<br/>
 Basicamente o `frame` faz com que o documento se divida, e cada uma das partes é uma página diferente independente das demais. Para ilustrar, um bom exeplo seria uma bandeja de refeitório, onde em cada parte é possível colocar um alimento diferente sem que ele se misture aos outros.<br/>
 A sintaxe básica para a inclusão de um `frame` necessita da tag `frameset`, que agrupa o conjunto de frames que serão usados. Essa tag é quem carrega as definições básicas como os frames seram divididos em linhas ou colunas e também o tamanho das mesmas.
 ```html
 <frameset cols="30%, 70%">
   <frame src="page_1.html"/>
   <frame src="page_2.html"/>
 </frameset>
 ```
 O exemplo acima mostra a divisão dos frames com porcentagem do tamanho a ser ocupado na tela, mas todos os valores de medidas disponíveis podem ser utilizados.<br/>
 Caso seja necessário que um frame possua um tamanho *inicial mínimo* e ocupe o espaço restante disponível basta utilizar um `*`:
 ```html
 <frameset cols="20%, 20%, *">
   <frame src="page_1.html"/>
   <frame src="page_2.html"/>
 </frameset>
 ```
 No HTML4 era aconselhável usar a tag `noframes` para fornecer um conteúdo alternativo aos navegadores que não suportavam frames.
 ```html
 <frameset cols="50%, 50%">
   <frame src="page_1.html"/>
   <frame src="page_2.html"/>
   <noframes>
     <body>
       Seu navegador não suporta frames. Por favor, atualize-o.
     </body>
   </noframes>
 </frameset>
 ```

 **No entanto, atualmente no HTML5 tanto o `frameset`, `frame` quanto o `noframes` estão obsoletos e não devem ser mais utilizados. Para substituí-los foi criada uma tag mais semântica e com maior controle, o `iframe`.**
 ```html
  <style>
    iframe {
      width: 100%;
      height: 30vh;
      border: none;
    }
  </style>

  <iframe src="page_1.html">
    Seu navegador não suporta iframes.
  </iframe>
 ```

 O **`iframe`** *é uma alternativa moderna ao `frame` para exibir uma página web dentro de outra página web*. Ele pode ser estilizado com CSS de acordo com o layout da página hospedeira.
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

Seus principais atributos são:
- `src`: URL da página que será carregada dentro do iframe.
- `frameborder`: Define uma borda para o campo de renderização.
- `width`: Largura do iframe.
- `height`: Altura do iframe.
- `title`: Descrição acessível para leitores de tela. Recomendado para acessibilidade.
- `name`: Nome do iframe, útil para links e formulários que querem direcionar para ele.
- `allowfullscreen`: Permite que o conteúdo do iframe seja exibido em tela cheia (útil para vídeos).
- `loading`: Adiciona comportamento de carregamento "lazy" (adiado).
- `sandbox`: Impõe restrições de segurança ao conteúdo carregado dentro do `iframe`. Seus valores possíveis são:
  - `"allow-scripts"`: Permite scripts, mas desativa formulários e outras ações.
  - `"allow-forms"`: Permite o envio de formulários.
  - `"allow-same-origin"`: Permite que o conteúdo seja tratado como da mesma origem.
  - `"allow-popups"`: Permite pop-ups.
  - `"allow-modals"`: Permite modais, `alert()` e `prompt()` por exemplo.
  - `"allow-presentation"`: Permite usar APIs de apresentação.
  - `"allow-downloads"`: Permite downloads iniciados por ações do usuário.
  - `"allow-top-navigation"`: Permite que o iframe mude o local da página pai.
  - `"allow-top-navigation-by-user-activation"`: Igual ao anterior, mas só após ação do usuário.
- `referrerpolicy`: Controla qual informação do referenciador será enviada ao `iframe`. Seus valores possíveis são:
  - `"no-referrer"`: Não envia nenhuma informação de referenciador.
  - `"origin"`: Envia apenas a origem *protocolo + domínio*.
  - `"strict-origin"`: Envia a origem somente em conexões seguras HTTPS.
  - `"origin-when-cross-origin"`: Envia a URL completa para o mesmo site e apenas a origem para sites diferentes.
  - `"unsafe-url"`: Sempre envia a URL completa, independentemente do destino.

> Por padrão, se a página carregada no `iframe` é de outra origem que não do mesmo diretório como domínio, protocolo ou porta diferente, não é possível acessar ou manipular o conteúdo do `iframe` com JavaScript devido a *SOP — Same-Origin Policy*. Além disso, um site malicioso pode incorporar outro site confiável em um `iframe` e usar estilos para enganar o usuário, para evitar isso o site incorporado pode usar algum dos cabeçalho HTTP: **`X-Frame-Options: DENY`**, **`X-Frame-Options: SAMEORIGIN`** ou **`Content-Security-Policy: frame-ancestors 'self' https://parceiro.com;` — Content-Security-Policy (CSP).**

**Uma prática muito comum é utilizar o `iframe` para manter o estado da página ao se clicar em um link `a`, e ao invés de ser acessado e carregado o arquivo – seja na mesma ou em outra aba – inteiro no navegador, este é renderizado no campo `iframe`, mantendo a página hospedeira no mesmo estado – ou seja, sem que esta seja carregada novamente com o novo arquivo ou este arquivo seja aberto em outra aba. Para isto, basta que o `iframe` tenha um `src` vazio com o valor padrão de `about:blank`, um `name` para identificá-lo, e o target de `a` seja o valor do `name` do `iframe`. Apesar de estar em desuso por conta de práticas mais modernas para exibir conteúdo dinâmicamente como o React por exemplo, este método é um suporte nativo do HTML que permite a construção modular de uma aplicação web – ou seja, construir o site em _partes_ e agrupar todas em uma única página, facilitando a arquitetura, entendimento e manutenção de cada parte da aplicação.**
```html
    <ul>
        <li><a href="home.html" target="myFrame">principal</a></li>
        <li><a href="about.html" target="myFrame">sobre</a></li>
        <li><a href="projects.html" target="myFrame">projetos</a></li>
    </ul>

    <iframe loading="lazy" src="about:blank" name="myFrame"></iframe>
```

Apesar de úteis, um `iframe` mal incorporado pode comprometer o SEO da página principal por questões de acessibilidade – pode causar dificuldades aos leitores de tela se não for bem usado – e interatividade – por conta de segurança e a restrição SOP, além de que o conteúdo do `iframe` não é indexado como parte da página principal, o que pode impactar na pontuação SEO.<br/>
Cada `iframe` é como uma página nova sendo carregada, o que aumenta o uso de recursos e pode impactar na performance da aplicação, e pode ser particularmente difícil integrá-los à página principal de forma *natural* e *fluída*, então devem ser usados com cautela e apenas quando necessário, buscando sempre métodos modernos para uma interatividade dinâmica com o usuário como:
- Componentes Web (`<custom-element>` + Shadow DOM): encapsulamento de UI reutilizável.
- Single Page Applications (SPA): navegação dinâmica sem recarregar páginas.
- Micro-frontends: arquitetura moderna para aplicações compostas por partes independentes.

Boas práticas que podem ser aplicadas ao uso dos `iframe`s incluem sempre utilizar `title` para acessibilidade e `loading="lazy"` para performance, além de evitar `iframe`s de terceiros sem controle de segurança e utilizar `sandbox` para isolar conteúdo quando necessário ou `postMessage` com JavaScript para uma comunicação segura entre domínios, sempre adequando o CSS para uma melhor responsividade.

A tag `embed` era usada para inserir conteúdo externo diretamente em uma página, como vídeos, PDFs, animações ou qualquer outro tipo de mídia suportada por plugins ou navegadores.
```html
<embed src="file.pdf" type="application/pdf" width="600" height="400"/>
```
- `src`: caminho do arquivo a ser incorporado.
- `type`: tipo MIME do conteúdo.
- `width`: largura da área embutida.
- `height`: altura da área embutida.

Porém tem caído em desuso, por haver substituições mais semânticas como `vídeo` e `iframe` por exemplo.
```html
<iframe src="file.pdf" width="800" height="600">
  <p>Erro ao abrir o arquivo. <a href="arquivo.pdf">Clique aqui para baixar.</a></p>
</iframe>
```

###### FORMULÁRIOS
 Os formulários tem o propósito de coletar informações fornecidas pelos visitantes do site, que são então enviadas ao servidor para serem processadas.<br/>
 Para que ele seja útil, é importante que o formulário fornecido seja acompanhado por um código do lado do servidor, chamado *"agente de processamento"*, que se encarrega de receber e processar as informações. Este processamento pode consistir, por exemplo, em armazenar as informações ou enviá-las por e-mail.<br/>
 Um formulário é identificado pela tag `form`, e é basicamente um recipiente para controles. Um formulário é composto por 1 ou mais elementos que permitem a interação do usuário com a aplicação, estes elementos podem ser dos mais variados como campos de texto, botões, entre outros. De forma resumida, a tag `form` funciona como um container que armazena outros elementos que permitem a entrada de dados do usuário, e visualmente, apenas esta tag não significa nada ao usuário, e por isso os demais elementos são necessários para a criação de um formulário.<br/>
 Cada controle em um formulário tem o objetivo de coletar informações inseridas pelos usuários em formulários que podem variar de linhas de texto, a upload de arquivos, datas, senhas e muito mais. Uma vez que os usuários tenham preenchido o fomulário com dados, eles podem ser enviados ao servidor para que o agente de processamento gerencie as informações coletadas, o responsável por isto é o elemento `input`, pois define os mecanismos que serão usados na interface para que a coleta dos dados aconteça, e seu atributo `type` é o que determina qual será o dado requisitado.<br/>
 **Os usuários interagem com os formulários através dos chamados controles.** De forma simplificada, um controle é definido como *um objeto que é exibido na tela e que pode ser modificado pelo usuário*. Por exemplo, um botão, uma caixa de texto, um menu suspenso e etc.<br/>
 **Os formulários geralmente fazem uso da tag *`action`*, que se refere à página para a qual as informações no formulário serão encaminhadas, ou seja, o destino do conteúdo digitado pelo usuário – que será "ativado" quando o usuário enviar o formulário.** Este atributo está intimamente ligado ao botão *`submit`*, uma vez que o endereço contido nele será acessado quando o botão for clicado. O destino em `action` recebe através do método escolhido em `method` as informações contidas no formulário quando este for submetido. 
```html
<form action="https://server.php/API"></form>
```
 *Se não for enviado para nenhuma outra página, é deixado vazio, para utilizar as informações na mesma página.*
```html
<form action=""></form>
```
 Isto geralmente é seguido pelo atributo `method`, que pode ser `post` ou `get`.<br/>
 A diferença entre os métodos `get` e `post` reside na forma como os dados são enviados para o destino quando o botão de enviar é pressionado.<br/>
 Enquanto o método `get` envia os dados usando a URL, o método `post` os envia de forma oculta ao usuário.<br/>
 O método `get` exibe na URL os dados inseridos no formulário quando é enviada ao servidor como parâmetros de consulta `query string: https://exemplo.com/busca?termo=livros&categoria=romance`, por isso, é pouco confiável, pois com o conhecimento certo é fácil interpretar os dados, além de possuir um tamanho limite de comprimento. Este método é normalmente usado para **requisições sem efeitos colaterais**, como pesquisas em bancos de dados, filtros e navegação, podeno também ser compartilhados já que os dados estão na URL.<br/>
 Portanto, sempre que formulários forem enviados, o método ideal é o `post`, no qual os dados são ocultos à URL pois são enviados no corpo da requisição HTTP, sendo mais seguro para dados sensíveis como senhas ou informações pessoais, assim sendo mais usado para **requisições que alteram o estado** no servidor.<br/>
```html
<!-- GET: ideal para buscas -->
<form method="get" action="/buscar">
  <input type="text" name="q" placeholder="Pesquisar...">
  <button type="submit">Buscar</button>
</form>

<!-- POST: ideal para envio de dados privados -->
<form method="post" action="/login">
  <input type="text" name="usuario">
  <input type="password" name="senha">
  <button type="submit">Entrar</button>
</form>
```

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
<button>submit<button>
```

 No exemplo acima, quando o usuário clicar em *`submit`*, a ação que será executada é a de enviar os dados para a url especificada usando o método `get`.<br/>
 Usando o método `get`, teriamos algo assim por exemplo:<br/>
 `https://www.mydomain.com/newuser.php?name=Raphael&lastname=Santos&email=raphaelkaiquediassantos1%40gmail.com`<br/>
 Podemos distinguir várias partes dessa URL: `https://www.mydomain.com/newuser.php` é o próprio site.<br/>
 **O símbolo `?` é seguido por pares de dados com seu `nome` e `valor`, separados pelo símbolo `&`.** *Os pares `data1=value1`, `data2=value2`, `data3=value3`... refletem o nome dos campos enviados pelo formulário.*<br/>
 Por exemplo: `name=Raphael`, `lastname=Santos` e etc, nos informa que o campo do formulário chamado `nome` chega com o valor `Raphael`, enquanto o campo `lastname` chega atribuído ao valor `Santos`. Estes valores são recebidos na página web de destino do fomulário.<br/>
 **Note que para separar o primeiro par do próprio endereço usamos o símbolo `?`, já para separar os pares restantes uns dos outros usamos o símbolo `&`.**

 Também é possível especificar o método de HTTP de um determinado elemento além do `method` escolhido em `form`, o atributo que permite isto é o **`formmethod`**. **Este atributo é usado somente em elementos de submissão como `button` e `input` com o `type="submit"` para especificar o método HTTP que será usado ao enviar o formulário, sobrepondo o atributo `method` do próprio `form`.**
 ```html
 <form action="/processar" method="post">
   <input type="text" name="msg"/>

   <button type="submit">Enviar com POST (padrão do form)</button>
   <button type="submit" formmethod="get">Enviar com GET (sobrescreve)</button>
 </form>
 ```
 > O atributo `formmethod` define qual método HTTP será usado para enviar os dados do formulário quando aquele botão for utilizado para o envio, ignorando o valor do atributo `method` no `<form>`.

 Alguns atributos possuem compatibilidade com outros atributos do tipo `<form>` e seguem o mesmo princípio de sobrescrever valores do `<form>`:
 | atributo         | descrição                                                                                        |
 | ---------------- | ------------------------------------------------------------------------------------------------ |
 | `formaction`     | Define o destino da submissão.                                                                   |
 | `formmethod`     | Define o método de submissão.                                                                    |
 | `formenctype`    | Define o tipo de codificação (`application/x-www-form-urlencoded`, `multipart/form-data`, etc.). |
 | `formtarget`     | Define onde a resposta será exibida (`_blank`, `_self`, etc.).                                   |
 | `formnovalidate` | Ignora validação HTML5 se presente.                                                              |

 > O valor `"dialog"` **não é aceito em `formmethod`**, apenas em `method` no `<form>` diretamente.

 Como este exemplo que contém 2 botões com métodos diferentes:
 ```html
 <form action="/process" method="post">
   <input type="text" name="email" required>

   <button type="submit">salvar (POST)</button>
   <button type="submit" formmethod="get" formaction="/view">visualizar (GET)</button>
 </form>
 ```
 Neste cenário, clicar em "`salvar`" envia com `POST` para `/process`, enquanto que clicar em "`visualizar`" envia com `GET` para `/view`.

 Um uso muito comum para este tipo de técnica é em aplicações de compras por exemplo, onde o usuário pode escolher enviar um produto ao seu carrinho para finalizar a compra ou salvar o item em uma lista de favoritos para ser comprado mais tarde, ou também na criação de documentos onde ele pode salvar o arquivo em edição ou visualizá-lo seu formato atual antes de prosseguir.
 ```html
 <form action="/submit" method="post" enctype="application/x-www-form-urlencoded" target="_self">
   <input type="text" name="user" required>

   <!-- botão 1: envia utilizando os atributos em `form` -->
   <button type="submit">send</button>

   <!-- botão 2: sobrescreve vários atributos -->
   <button
     type="submit"
     formaction="/view"
     formmethod="get"
     formenctype="application/x-www-form-urlencoded"
     formtarget="_blank"
   >
     preview
   </button>
 </form>
 ```

 O atributo `name` na tag `form` não é obrigatório – diferente dos campos de `input` que são essenciais para o envio dos dados – mas deve ser usado quando se deseja identificar o formulário para manipulá-lo. Por exemplo:
```html
<form name="userInfo" action="https://server.php" method="get">
  <label for="nome">Nome:</label>
  <input type="text" name="nome" id="nome"/>
  <button type="button" onclick="showValue()">Verificar</button>
</form>

<script>
  // acessa o formulário pelo `name`
  const form = document.forms["userInfo"];

  // acessa o elemento do formulário em questão
  const nameValue = form["nome"].value;
  alert(`Nome: ${nomeValue}`);
</script>
```

**ENTRADA DE DADOS EM FORMULÁRIOS**<br/>
 Os controles de entrada de dados em formulários geralmente são controles visuais e permite que o usuário insira dados ou selecione opções. Seu uso depende do tipo de controle e também do tipo de informações.
 - **AGRUPAMENTO E DESCRIÇÃO SEMÂNTICA DE SEÇÕES DE UM FORMULÁRIO**
   - **`fieldset`**: Agrupa elementos relacionados dentro de um formulário.
   - **`legend`**: Fornece uma descrição para o conteúdo de um `fieldset`.

 Vejamos alguns dos atributos que podem ser usados na tag `form` e em seus controles:
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
 - _**A tag `name` É OBRIGATÓRIA, pois é o nome ao qual nos referimos quando o enviamos ao servidor, ou seja, se o nomearmos "`Nome`", poderemos recuperá-lo no servidor para processar o dado no valor atribuído.**_ *Neste exemplo, os dados do formulário, ou seja, **o valor inserido no campo `query`** serão enviados como parte da URL: **`https://exemplo.com/search?query=valorFornecidoPeloUsuário`**.<br/>
 **Normalmente, as propriedades `name` e `id` recebem o mesmo nome, embora não seja obrigatório.**
```html
<form method="GET" action="/search">
  <input type="text" name="term" placeholder="Buscar..."/>
  <button type="submit">Pesquisar</button>
</form>
```
 No exemplo acima, se o usuário digitar **`BMW`**, o navegador para a requisição no **`action`** indicado:
```sh
GET /search?term=BMW
```
 Então um servidor em **`Node.JS`** por exemplo, pode realizar o processamento com base nas informações recebidas:
```js
const express = require('express');
const app = express();
const port = 3000;

// rota para lidar com GET /search
app.get('/search', (req, res) => {
  const term = req.query.term; // obtem o valor da URL `query string`
  
  // exemplo de lógica: simula uma busca no "banco de dados"
  const cars = [
    'bmw',
    'ferrari',
    'nissan',
    'toyota'
  ];

  // filtra carros que contêm o termo buscado (case insensitive)
  const result = cars.filter(car =>
    car.toLowerCase().includes(term.toLowerCase())
  );

  // retorna os resultados, podendo ser em JSON ou HTML
  res.send(`<h1>Resultados para "${term}":</h1><ul>${
    result.map(title => `<li>${title}</li>`).join('')
  }</ul>`);
});

// inicia o servidor
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
```
 Então, enquanto a tag `form` é utilizada para *criar* os formulários – ou seja, solicitar informações aos usuários – a tag **`input`** é o campo onde estarão os *itens* do formulário. **Os elementos de entrada de um formulário podem ser definidos através do uso da tag `input` usando o atributo `type`, seguido de algum valor.** Através da propriedade **`type`**, a tag `input` entende qual o componente deve representar na tela.<br/>
 Em outras palavras, o elemento que alimenta um formulário com informações incluídas pelo usuários é o **`input`**, eles são os responsáveis por exibir no navegador os campos que possibilitam a entrada de algum tipo de dado por parte do usuário, enquanto o atributo **`type`** determina o tipo do elemento.<br/>
 **O atributo _`name`_ é obrigatório, tanto para relacionar à o `input` ao `form` em questão, quanto para identificar o dado enviado ao servidor. Ela é essencial para que o backend saiba **qual o valor correspondente a qual campo**.
```html
 <input type="" name=""/>
```
 Para que uma tag `input` seja atrelada a um formulário, esta deve estar posicionada dentro da tag `form`, entretanto, o atributo `form="idForm"` permite a criação de formulários dinâmicos, apenas definindo um `id` para o formulário e então, cada campo de `input` deve conter o atributo `form` referenciando o `id` do formulário ao qual pertence.
```html
<form id="form" method="get" action="/buscar"></form>
<!-- conteúdo -->
<input form="form" type="text" name="term" placeholder="Digite algo..."/>
<button form="form" type="submit">Buscar</button>
```

Quando um formulário é enviado, o navegador monta os dados como pares **`nome=valor`**, onde o que vai no campo **`nome`** é o **identificador do dado valor**. Por exemplo:
```html
<form method="get" action="/buscar">
  <input type="text" name="term" placeholder="Digite algo...">
  <button type="submit">Buscar</button>
</form>
```
Se o usuário digitar `livros` neste exemplo, a URL gerada será:
```shell
# /API?name=value
/buscar?termo=livros
# /buscar = API servidor
# termo = name
# livros = valor
```
Quando este outro formulário por exemplo é enviado:
```html
<form method="post">
  <input type="text" name="email" value="raphael@email.com">
  <input type="password" name="senha" value="psswrd@00">
  <button type="submit">Entrar</button>
</form>
```
Os dados que chegam ao servidor são como:
```shell
email=raphael@email.com&senha=psswrd@09
```
**Se o atributo `name` não existir no input, o campo em questão não é enviado ao servidor, justamente por não haver um identificador para o dado.**

 - **ELEMENTOS DE VALIDAÇÃO**
    - **`required`**: *Indica que é **OBRIGATÓRIO** preencher o campo para o envio do formulário.*
    - **`pattern`**: **Define uma expressão regular (regex) que o valor do campo de entrada deve seguir.** *O valor inserido pelo usuário será validado com base nessa expressão regular.*
```html
<input type="text" pattern="[A-Za-z]{3,5}" required/>
```

 - **ATRIBUTOS INFORMATIVOS**
    - **`placeholder`**: Exibe um texto informativo para o usuário *sem ocupar* o campo.
    - **`value`**: Exibe um texto informativo para o usuário *ocupando* o campo. **Sua principal função é no back-end, que recebe o valor contido nela (normalmente é o mesmo valor de option), juntamente com o atributo `name` (chave e valor = name e value).**
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
 - **TIPOS DE ENTRADAS**<br/>
 **As tags tipo texto geralmente tem um comportamento *auto complete* por padrão, ou seja, geralmente mantêm as entradas anteriores na memória.** Para alterar este comportamento usa-se o atributo `autocomplete` conforme já visto.
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
      - **`size`**: Define o tamanho *exato* de caracteres a serem exibidos no tamanho definido de acordo com a quantidade de caracteres.
      - **`wrap`**: *Especifica como o texto deve ser quebrado quando atingir o final da linha.*
        - **`soft`**: Quebra de linha no campo visualmente, mas *sem inserir* uma quebra no texto.
        - **`hard`**: *Insere* uma quebra de linha no texto.
      - **`spellcheck="true/false"`**: Especifica se o navegador deve verificar a ortografia do texto digitado.
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
    - **`tel`**: Recebe somente números e trata-os como número de telefone.
    ```html
    <input type="tel" name="Phone" id="Phone" placeholder="+CC DDD X XXXX-XXXX"/>
    ```
 - **FAIXA DE VALORES**
    - Para os casos abaixo, o valor do `value` junto com o valor atribuído ao `name`, é a informação que chega ao servidor quando o usuário submete o formulário.
        - **`radio`**: Permite a seleção de somente uma entre várias opções, todas do mesmo grupo (nome). Cada vez que uma opção é selecionada, a outra opção que foi selecionada é automaticamente desmarcada. **Apenas uma opção pode ser selecionada por vez, e para definir isso o valor atribuído ao `name` deve ser igual para todos pois ele diz o grupo ao qual pertence o marcador, para que o navegador entenda que estão relacionados e garantir a exclusividade da seleção, desmarcando outra quando uma é selecionada.**
        ```html
        <input type="radio" name="sexo" value="masculino"/>
        <label for="masculino">Masculino</label>

        <input type="radio" name="sexo" value="feminino"/>
        <label for="feminino">Feminino</label>
        ```
        - **`checkbox`**: Permite a seleção múltipla de uma ou mais opções. Embora várias checkbox sejam normalmente exibidas juntas, **cada uma é completamente independente das outras**. Utilizam o mesmo conceito de grupos e valores, onde devem ser agrupadas e então receber um valor específico para cada uma delas, que será associado ao campo `name` para que o `value` seja tratado no servidor.
        ```html
        <input type="checkbox" name="quest[]" value="yes"/>
        <label for="yes">M5</label>

        <input type="checkbox" name="quest[]" value="no"/>
        <label for="no">M3</label>
        ```
         - **No caso de uma lista de itens, é necessário utilizar `[]` no atributo `name` juntamente com o método `POST`, para que o servidor identifique que os valores recebidos são todos do mesmo atributo, caso contrário ele utilizará apenas o último valor selecionado pelo usuário.**
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
    - **`option`**: Contém os elementos que defiem uma das opções que pode ser selecionada. Por padrão, dependendo de onde é usado, tem seu primeiro elemento da lista selecionado, ou, exibe um campo em branco até que o usuário selecione uma das opções.<br/>
    Quando não houver nenhum `value` definido na tag, o dado que será enviado é o conteúdo que está entre a abertura e fechamento das tags.
        - Para alterar este comportamento, usa-se o atribuito `selected` na opção que se deseja manter pré selecionada.
        ```html
        <select>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3" selected>3</option>
        </select>
        ```
        - Para especificar o número de valores visíveis, usa-se o atributo `size`.
        ```html
        <select size="3">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
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
        - Para que seja **obrigatório** que o usuário escolha uma opção que não seja vazia pode-se criar um *placeholder* com um **`value`** vazio juntamente com os atributos **`selected`** e **`disabled`**.
        ```html
        <select required>
          <option selected disabled value="">Select a option...</option>
          <option value="bmw">BMW</option>
          <option value="audi">AUDI</option>
          <option value="mercedes">MERCEDES</option>
        </select>
        ```
      - **É usado com `datalist` e `select`.**
          - **`datalist`**: **Cria uma lista de sugestões para um campo `input`, mas o usuário ainda pode digitar um valor personalizado**, as sugestões aparecem conforme o usuário digita, mas ele não é obrigado a escolhê-las. Usado com o atributo `list` em um `input`, ele torna a interação com o formulário mais eficiente, especialmente quando há opções limitadas, como nomes de cidades, e-mails ou produtos.
          ```html
          <input type="text" id="cidade" name="cidade" list="cidades" placeholder="Digite sua cidade."/>
          <datalist id="cidades">
            <option value="Contagem">Contagem</option>
            <option value="Belo Horizonte">Belo Horizonte</option>
            <option value="Betim">Betim</option>
            <option value="Rio De Janeiro">Rio De Janeiro</option>
            <option value="São Paulo">São Paulo</option>
          </datalist>
          ```
          - **`select`**: Cria um menu suspenso (*dropdown*) com opções predefinidas, onde **o usuário só pode escolher uma das opções fornecidas**. **É obrigatório possuir um atributo `name` para que funcione corretamente.**
          ```html
          <select name="time" id="time" required>
              <option selected disabled value="">Select a option...</option>
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
          <!-- é possível permitir ao usuário selecinar vários itens com o atributo `multiple`, para isso basta utilizar `[]` no atributo `name` e o método `POST`  -->
          <select name="time[]" id="time" required multiple>
              <option selected disabled value="">Select a option...</option>
              <option value="cruzeiro">CRUZEIRO</option>
              <option value="america">AMÉRICA</option>
              <option value="atletico">ATLÉTICO</option>
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
    - **`form`**: *Serve para associar o campo de entrada a um formulário específico, mesmo que o campo de entrada não esteja dentro do formulário.* **Isso permite colocar os campos de entrada em uma área separada da tag `form`, mas ainda assim enviar os dados para esse formulário quando o formulário "base" for enviado.** *Este atributo se refere ao ID de um formulário existente.* Isso significa que, se você tiver vários formulários na página ou se o campo de entrada não estiver dentro do formulário ao qual ele deve se associar, você pode usar esse atributo para indicar qual formulário o campo deve pertencer.
 - **LABEL**<br/>
   **Permite associar um texto a um campo de controle de formulário.** *É uma boa prática de semântica e SEO.* Sua escrita possui um par de fechamento e o atributo `for`, que é o que associa a `label` ao campo a que ela se refere. **Este `for` deve ter o MESMO valor que o `id` do campo `input` ao qual a label está associada.**
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
 - **DIALOG**<br/>
 Esta é uma tag semântica que representa uma **caixa de diálogo**, **modal** ou **janela pop-up** *nativamente suportadas no HTML que são interativas, crontoladas via script*. Esta tag quando usada juntamente com `form` dá ao formulário a possibilidade de utilizar o método `dialog`.<br/>
 O atributo `method="dialog"` é uma funcionalidade específica para o elemento `form` quando usado dentro de uma tag `dialog`, ele não é um método tradicional como `GET` ou `POST`, mas sim um **método especial que instrui o formulário a fechar a tag `dialog` onde este estiver contido ao ser enviado com `submit`**, e ao fechar ele pode opcionalmente retornar um valor para o script.
 ```html
 <dialog id="myDialog">
   <form method="dialog">
     <p><label>Nome: <input type="text" name="name"/></label></p>
     <menu>
       <button type="submit" value="cancel">Cancelar</button>
       <button type="submit" value="confirm">Confirmar</button>
     </menu>
   </form>
 </dialog>

 <button onclick="document.getElementById('myDialog').showModal()">send a message</button>
 ```
 Quando um `form` dentro de um `dialog` é submetido com o método `dialog`, o elemento é automaticamente fechado e o botão que disparou o envio pode definir o valor de `dialog.returnValue`, porém esta submissão não realiza requisições HTTP como faria com `GET` ou `POST` por exemplo, ele na verdade age como um *mecanismo de interação com a interface* — útil para simular um tipo de retorno de chamada ou captura de decisão do usuário.
 ```js
 const dialog = document.querySelector('myDialog');

 dialog.addEventListener('close', () => {
   console.log("Valor retornado:", dialog.returnValue);
 });
 ```

 Mas é possível utilizar a tag `dialog` com algum dos métodos de requisção em um formulário, como por exemplo:
 ```html
 <dialog id="formDialog">
   <form method="post" action="/send-data">
     <label>Email: <input name="email" type="email"/></label>
     <button type="submit">Enviar</button>
     <button type="button" onclick="formDialog.close()">Cancelar</button>
   </form>
 </dialog>

 <button onclick="formDialog.showModal()">Abrir Formulário</button>
 ```

 Resumindo, o `form` com `method="dialog"` aciona o evento `submit` normalmente, mas não aciona a navegação nem envia dados para o servidor, o botão que envia o formulário deve ter o atributo `value` definido para que `returnValue` do `dialog` seja útil — **o `dialog.returnValue` sempre será um valor do tipo string**.
 | atributo/método               | função                                                                    |
 | ----------------------------- | ------------------------------------------------------------------------- |
 | `<dialog>`                    | Cria uma caixa de diálogo ou modal — sem JS externo.                      |
 | `<dialog>` + `<form>`         | Com qualquer `method`.                                                    |
 | `.show()`                     | Mostra o diálogo de forma **não-modal — não trava a tela no background**. |
 | `.showModal()`                | Mostra o diálogo de forma **modal — trava a tela no backgroud**.          |
 | `.close()`                    | Fecha o diálogo programaticamente.                                        |
 | `method="dialog"` no `<form>` | Fecha o diálogo e retorna o valor do botão pressionado — sem submit real. |
 | `returnValue`                 | Obtém o valor retornado ao fechar o diálogo via botão.                    |

 > `showModal()` permite que o usuário feche o diálogo com `Esc` ou clicando fora da caixa de diálogo — exceto se isto for bloqueado via script.

 Como o envio não transmite dados, deve-se usar JavaScript para manipular informações preenchidas em inputs dentro do form. Também é possível com o JS criar diálogos customizados onde o botão *"fechar"* não está visível e usa apenas `form method="dialog"` para sair do modal.<br/>
 Como não há envio de dados ao servidor, não há risco de exposição de dados via URL ou requisições indesejadas, porém dados sensíveis dentro da tag `dialog` ainda devem ser protegidos via JS, já que podem ser acessados pelo DOM. Além de que não é possível usar *`formmethod`* com outros métodos como `GET` e `POST` no mesmo formulário, pois são mutuamente exclusivos.
 

###### `data-info`
Este atributo personalizável é muito utilizado como uma forma de armazenar informações e dados extras – geralmente temporários como IDs, nomes, categorias e etc – em elementos HTML sem bagunçar a estrutura e afetar a apresentação da página. **É particularmente útil para que o script possa acessar e manipular tais dados.**<br/>
Sua sintaxe básica informa que o atributo deve começar com **`data-*`** e em seguida o **nome personalizado**, e então atribuir-lhe uma **string como valor**.
```html
<h4 data-name="Raphael" data-id="999">raphaelkaique1</h4>
```
Agora então, é possível que o JS acesse os dados do elemento:
```html
<h4 id="user" data-name="Raphael" data-user_id="999">raphaelkaique1</h4>
<script>
    const div = document.getElementById("user");

    console.log(div.dataset.name);     // "Raphael"
    console.log(div.dataset.user_id);  // "999"

    // modificando os dados
    div.dataset.name = "Kaique";
</script>
```

Em resumo, este atributo serve para definir mais informações para os componentes de tela, para que possam servir para pesquisas filtrando suas informações, permitindo que buscas elaboradas sejam realizadas pela leitura do código HTML semanticamente. Outro bom exemplo é o de um áudio, onde é possível utilizar este atributo para definir o autor, a duração do áudio e etc.
```html
<audio controls="controls">
    <source src="https://www.youtube.com/watch?v=lx0eir2xF5E" type="audio/mp3" data-duration="1min12secs" data-artist="CriaScript"/>
</audio>
```

Os valores armazenados no atributo não alteram em nada a renderização do elemento em tela, sendo úteis apenas para as linguagens de script. O HTML agrupa estes atributos e os disponibiliza para os scripts, para que estes posam filtrar elementos da página para exibir apenas os que atenderem ao filtro por exemplo.

###### `time`
Esta tag define datas de forma precisa sem que o usuário precise ler a data na forma como foi armazenada, desta forma é possível criar filtros para datas mesmo não as utilizando visualmente.
```html
<article>
  <h2>Agenda do Curso</h2>
  <p>
    A aula ao vivo sobre HTML será em <time datetime="2025-06-01T13:00:00-03:00">1º de Junho, às 13:00 horas (horário de Brasília)</time>.
    Ainda serão divulgados data e horário, mas a aula ao vivo sobre CSS será no <time datetime="2025-07">mês seguinte</time>.
  </p>
  <p>Artigo publicado em <time pubdate datetime="2025-05-10">10 de Maio de 2025</time>.</p>
</article>
```

###### `contenteditable`
Este atributo pode ser incluído em qualquer elemento para torná-lo editável diretamente pelo usuário na interface do navegador. Ele permite editar quase qualquer conteúdo HTML como texto, imagens, links, tabelas, listas e elementos HTML em geral. Quando omisso, seu valor padrão é `false`, e se um elemento pai possuir `contenteditable="true"` todos os elementos filhos também serão editáveis, a menos que se sobrescreva essa propriedade diratamente no elemento filho.
```html
<div contenteditable="true">
  <h2 contenteditable="false">Não Editável</h2>
  <p>Editável.</p>
</div>
```
**Este atributo não salva as alterações automaticamente, sendo necessário o uso de JavaScript para capturar e salvar os dados modificados.**

###### `tabindex`
Este atributo determina e controla a ordem de navegação por teclado entre os elementos focáveis de uma página. Particularmente útil quando é necessário tornar elementos que normalmente não são focáveis acessíveis ao teclado, ou mesmo controlar a navegação por teclado em formulários ou interfaces complexas por exemplo.
```html
<div tabindex="0">Este elemento pode receber foco.</div>
```

| valor | significado                                                                         |
| ----- | ----------------------------------------------------------------------------------- |
| `0`   | O elemento **entra na ordem natural** de navegação por Tab.                         |
| `> 0` | O elemento recebe uma **ordem de foco personalizada**.                              |
| `-1`  | O elemento **pode receber foco via JavaScript**, mas **não entra** na ordem de Tab. |

```html
<!-- ordem padrão -->
<button>click here</button>
<div tabindex="0">Div focável.</div>

<!-- ordem personalizada -->
<input tabindex="2" type="text"/>
<input tabindex="1" type="text"/>

<!-- focável apenas via script -->
<div tabindex="-1" id="msg">Mensagem.</div>

<script>
  // focar manualmente o elemento com `tabindex="-1"`
  document.getElementById("msg").focus();
</script>
```

###### `accesskey`
Permite definir uma tecla de atalho para acessar diretamente elementos na página como links, botões, campos de formulário entre outros elementos. Este atributo associa uma tecla de atalho ao elemento, e então o usuário pode ativar o elemento pressionando a combinação de teclas definida.
```html
<button accesskey="s">save</button>
```

###### VIAS E ROTAS
 Uma *rota* informa o caminho da localização de um arquivo na estrutura de pastas do site. Os caminhos de arquivos são usados quando se ligam a arquivos externos, tais como: páginas web, conteúdo multimídia, folhas de estilo e arquivos de script. Existem 2 tipos de caminhos, porém, **recomenda-se o uso de caminhos relativos sempre que possível, pois ao utilizá-los, suas páginas web não serão vinculadas à sua URL base atual, todos os links funcionarão em seu próprio site (*localhost*), assim como em seu domínio público atual e em seus domínios públicos futuros.**:
 1. **caminho relativo**: especifica a localização em relação ao documento atual.
    - **`src="file.ext"`**: **O arquivo está localizado na mesma pasta da página atual.**
    - **`src="dir/file.ext`**: **O arquivo está localizado em uma pasta na raiz do site atual.**
    - **`src="../file.ext`**: **O arquivo está localizado na pasta um nível acima da pasta atual.**
 2. **caminho absoluto**: especifica a localização completa incluindo o domínio.
 - **`src="https://site.com/image.png"` **: **Uma rota absoluta é o endereço URL completo de um arquivo.**

###### TAGS
<table border="1px">
    <caption>LISTA DE TAGS</caption>
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
            <td>Define um comentário.</td>
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
            <td>Define uma abreviação.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>acronym</th>
            <td>Define um acrônimo.</td>
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
            <td>Sobrescreve o endereço do texto <code>bdo dir="ltr/rtl"</code>.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>big</th>
            <td>Define um tamanho maior padronizada para um texto.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>blockquote</th>
            <td>Define uma seção que tem outra fonte de informação, utilizado para citações longas <code>blockquote cite="https://site.com"</code>.</td>
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
            <td>Define o autor de uma citação.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>col</th>
            <td>Se refere às colunas em uma tabela.</td>
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
            <th>delete / del</th>
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
            <th>dfn</th>
            <td>Marca a definição de um termo.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>em</th>
            <td>Define ênfase a um texto tornando-o itálico.</td>
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
            <td>Define o que foi inserido em um documento.</td>
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
            <td>Define um título para os elementos <code>fieldset</code>, <code>figure</code> e <code>details</code>.</td>
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
            <td>Define uma medida escalar em uma faixa conhecida <code>meter value="5" min="0" low="3" optimum="7" high="9" max="10"</code>.</td>
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
            <td>Define um objeto incorporado <code>object data="file.pdf"</code>.</td>
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
            <td>Define uma breve citação <code>blockquote cite="https://site.com"</code>.</td>
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
            <td>Define uma variável matemática ou lógica em um contexto de string.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>video</th>
            <td>Define um arquivo de video.</td>
            <td>✅</td>
        </tr>
        <tr>
            <th>wbr / <pre>&shy;</pre> </th>
            <td>Define uma possível quebra de linha.</td>
            <td>✅</td>
        </tr>
    </tbody>
</table>

###### DESIGN
Para melhorar a aparência das webpages é possível usar código **CSS**, que pode ser escrito dentro do próprio HTML ou em um arquivo separado – sendo preferível valer-se da 2ª opção uma vez que isso torna o código reutilizável e, além de tornar o uso do CSS mais eficiente já que aproveita-se melhor da maneira como o HTTP trabalha, com o navegador baixando uma única vez as informações e as armazenando em *cache*.

### <span id="css">CSS</span>
 Quando abrimos a página no navegador é possível perceber que ele mostra as informações com estilos diferentes. Um `h1`, por exemplo, por padrão é apresentado em negrito numa fonte maior. Parágrafos de texto são espaçados entre si, e assim por diante. Isso quer dizer que o navegador tem um estilo padrão para as tags que usamos. Porém para fazer sites atrativos e com o design próximo de uma dada identidade visual, é necessário personalizar a apresentação padrão dos elementos da página. Antigamente, isso era feito no próprio HTML. Caso houvesse a necessidade de um título ser vermelho, era só fazer: `<h1><font color="red">90's Website</font></h1>`. Além da tag `font`, várias outras tags de estilo existiam. Mas isso é passado. Hoje em dia tags HTML para estilo são **má prática** *e jamais devem ser usadas*, são interpretadas apenas para o modo de compatibilidade. Em seu lugar, surgiu o **CSS**, que é uma outra linguagem, separada do HTML, com objetivo único de cuidar da estilização da página. A vantagem é que o CSS é bem mais robusto que o HTML para estilização, mas, principalmente, escrever formatação visual misturado com conteúdo de texto no HTML se mostrou algo impraticável. O CSS resolve isso separando as coisas; **regras de estilo não aparecem mais no HTML, apenas no CSS.**<br/>
 O objetivo do CSS é dar a aparência que quisermos às nossas páginas. Antes de seu surgimento, usava-se atributos nas tags para dá-las alguma aparência como por exemplo altura, largura, cor e etc. Atualmente, separamos a estrutura (HTML) da aparência (CSS). **Cascading Style Sheets** então surgiu para facilitar o desenvolvimento facilitando a separação de conteúdo da aparência, permitindo que os desenvolvedores controlassem a aparência dos documentos sem alterar sua estrutura.<br/>
 Em meados de 1990 a web se expandia rapidamente, mas os navegadores ofereciam poucas maneiras de definir estilos e layouts de forma consistente. Nesse contexto, Håkon Wium Lie, enquanto trabalhava com Tim Berners-Lee (idealizador do HTML) no CERN, percebeu que faltava uma ferramenta para aplicar estilos de forma flexível aos documentos web. Então, em 1994, Håkon Wium Lie propôs a ideia de “folhas de estilo em cascata” para dar aos desenvolvedores um mecanismo que pudesse controlar a apresentação de forma separada do conteúdo. Essa proposta surgiu justamente para atender à necessidade de uma web mais dinâmica e com melhor controle visual. Pouco tempo depois, Bert Bos se juntou a Lie, contribuindo significativamente para o refinamento do conceito. Juntos, eles desenvolveram as bases do que se tornaria o CSS, defendendo uma abordagem em que os estilos pudessem vir de diferentes fontes – como o navegador, o autor da página e o usuário final – sendo aplicados de acordo com uma ordem de prioridade ou “cascata”.

#### SINTÁXE
 O CSS utiliza uma sintaxe simples para definir estilos, cada regra de estilo consiste em um **seletor** e um **bloco de declaração**. O seletor aponta para o elemento HTML que se desja estilizar, e o bloco de declaração é contido entre **`{}`** e possui uma ou mais declarações de estilo que são declaradas com a **propriedade**, seguida de **`:`** e os **valores** da propriedade que desejamos atribuir ao elemento, separadas por **`;`** da seguinte maneira:
 ```css
 /*
 seletor {
    propriedade: valor;
 }

 p = seletor {
    color = propriedade: #111 = valor
 }
 */
 p {
    color: #111;
    font-size: 12px;
 }
 ```
 A sintáxe para criar um comentário em CSS é: <code>/* comentário */</code>

 Todas as etiquetas CSS terão **2 partes**:
 1. **SELETOR**:<br/>
 Que determina qual área da página será modificada.
 2. **INSTRUÇÕES (ou PROPRIEDADES)**:<br/>
 Que se referem ao formato e aparência que vamos aplicar a essa zona.

 Para aplicarmos CSS à nossa página HTML existem **3 opções**:
 1. **DECLAÇÃO EXTERNA**:<br/>
 Em um arquivo separado de extensão `.css` linkado ao documento html. Dessa forma, podemos modificar **todas** as páginas do site apenas referenciando o arquivo css. **O *external CSS* é a melhor opção para melhorar o posicionamento SEO.**
 2. **DECLARAÇÃO INTERNA**:<br/>
 *No **cabeçalho** do documento, dentro do **`head`**.* Essa maneira permite modificarmos a aparência de uma **única** página em particular, onde as regras CSS são declaradas entre as tags `<style></style>` do documento html que se deseja estilizar. É chamado de *internal CSS*.
 3. **DECLARAÇÃO NA TAG**:<br/>
 *Usa-se o atributo **`style="seletor: regra-de-estilo"`** na tag que se deseja alterar a aparência. **Esta opção de _in-line CSS_ não é muito recomendada por não favorecer o SEO**, o ideal é utilizá-lo apenas em casos muito específicos.

 Ao aplicarmos o *embedded css*, devemos repetir a estilização em cada uma das tags que queremos modificar, já com o _internal css_ estilizamos uma página inteira, e com o _external css_ podemos aplicar estilos a várias páginas do nosso site.<br/>
 *É importante saber que cada uma dessas aplicações tem prioridade hierarquica sobre as outras, por isso deve-se sempre estar atento às regras de prioridade para não haver comportamentos inesperados.* A ordem de exibição informa ao navegador que aplique um estilo sobre o outro, ou seja, ao invés de aplicar o estilo (mais abaixo na hierarquia) presente em uma declaração, será aplicado o que estiver declarado de forma mais alta hierarquicamente. **Caso uma tag seja afetada por vários estilos CSS, o navegador aplicará os seguinte critérios seguindo a seguinte hierarquia, sendo 1 o maior e 3 o menor**:
 1. **embedded CSS**
 2. **internal CSS**
 3. **external CSS**

##### DECLARAÇÃO EXTERNA
 Consiste em criar um arquivo css referenciado no arquivo html. *Uma vez criado o arquivo CSS, declaramos no `head` uma tag `link` usando o atributo `rel`, que informa ao navegador a natureza do arquivo linkado, idicando a relação entre o documento atual e o recurso vinculado, e o `href`, que informa o caminho onde o arquivo está armazenado.* Além da melhor organização do projeto, a folha de estilo externa traz ainda as vantagens de manter nosso HTML mais limpo e do reaproveitamento de uma mesma folha de estilos para diversos documentos.
 ```html
 <head>
     <meta charset="utf-7">
     <meta name="Description" content="Estudo de estilos CSS.">
     <meta name="ketwords" content="pragramção web, htmll, css">
     <title>Programação Web</title>
     <link rel="stylesheet" href="assets/style.css">
 </head>
 ```

##### DECLARAÇÃO INTERNA
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

##### DECLARAÇÃO IN-LINE
 Usamos o atributo `style` no próprio elemento para declarar o CSS na tag que se deseja modificar – o estilo escolhido alterará somente essa tag. *Deve ser usado apenas em exceções e casos especiais, pois a convenção da boa prática é manter a separação da declaração do conteúdo e da estilização.*
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

##### ESTILIZAÇÃO
 Para se criar instruções de estilo, *primeiro é declarado a qual **seletor** será aplicado, e em seguida o bloco de declaração é criado;* dentro das chaves, ou seja, do bloco de instrução, usamos um par de **propriedade** e **atributo** para realizar a estilização. Os seletores são padrões usados para manipular os elementos que se dejesa estilizar. Para se criar um estilo, as *instruções* são divididas em 2 grupos:
 - **seletores**: Especificam dentro da página web quais elementos serão afetados, sua declaração vai depender do seu tipo:
    - **`id`**: deve-se usar **`#`** para se referir ao elemento.
    - **`class`**: usa-se **`.`**, e atinge todos os elementos atribuídos à mesma classe.
    - **`tag`**: caso seja necessário aplicar um estilo a todos elementos do mesmo tipo usa-se a identificação da **`tag`**.
 - **bloco de declaração**: Contém entre chaves seguidas após o seletor `{...}` as regras de estilo para o elemento em questão.
    - **propriedade**: *Define qual característica será alterada.* Como por exemplo `color`.
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
 p.class-name {
     /* 
     ESPECÍFICO: Ao utilizar este formato é possível selecionar
     apenas os elementos que contém explicitamente a determinada
     classe informada.
     */
 }

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
 ###### GRAU DE ESPECIFICIDADE
 Uma coisa muito importante no CSS que deve-se tomar cuidado é o **grau de especificidade de um seletor**. Isto é, a prioridade de interpretação de um seletor pelo navegador. Quanto mais específico é o seletor, maior sua pontuação no nível de especificidade do CSS. Portanto devemos sempre trabalhar com uma baixa especificidade, para que não seja impossível sobrescrever valores quando necessário em uma situação específica.
 - Ao criarmos um seletor de **tag** a sua pontuação se torna **1**.
 - Quando usamos um seletor de **classe** sua pontuação se torna **10**.
 - Quando usamos um seletor de **id** sua pontuação se torna **100**.
 **Ao fim, o navegador soma a pontuação dos seletores aplicados à um elemento, e as propriedades com o seletor de maior pontuação são as que valem.**
 ```html
 <head>
    <style>
        p { /* Pontuação 1 */
            color: red;
        }

        .paragrafo { /* Pontuação 10 */
            color: blue;
        }

        #paragrafo-verde { /* Pontuação 100 */
            color: green;
        }
    </style>
 </head>
 <body>
    <p class="paragrafo" id="paragrafo-verde">Texto</p>
 </body>
 ```
 **No exemplo acima o parágrafo vai ter a cor verde, porque o seletor com esta cor é o seletor de maior pontuação.**

 **Quando elementos possuem a mesma pontuação quem prevalece é a propriedade do último seletor:**
 ```css
 p { /* Pontuação 1 */
   color: red;
 }

 p { /* Pontuação 1 */
   color: green;
 }
 ```
 No exemplo acima a cor do parágrafo será verde.

 **Podemos também somar os pontos para deixar nosso seletor mais forte:**
 ```css
 body p { /* Seletor de tag + outro seletor de tag = 2 pontos */
   color: blue;
 }

 p { /* Pontuação 1 */
   color: black;
 }
 ```
 **No exemplo acima nós deixamos nosso seletor mais específico para os `p` que estão dentro de uma tag `body`, portanto a cor do parágrafo será azul.**

 ###### TRANSPOSIÇÃO
 Além disto, a hierarque do grau de especificidade também existe na declaração no atributo de seleção dentro do elemento HTML, pois, como pode ser aplicada mais de uma classe no mesmo elemento, se uma classe realizar alterações que sobrepõe a ao estilo aplicado por outra classe, a que irá prevalecer é da classe mais ao final declarada no elemento.
 ```html
 <style>
    .main-font {
        font-size: 1rem;
    }

    .title-font {
        font-size: 3rem;
        font-family: monospace;
    }

    .highlighted-font {
        font-weight: 900;
        color: #fff;
        background-color: #000;
        font-family: sans-serif;
    }
 </style>

 <div class="main-font title-font highlighted-font">Hello world!<div>
 ```
 No caso do exemplo acima, os estilos que serão aplicados na `div` serão:
 - os das classes `highlighted-font` que sobrescreve apenas a propriedade **`font-family`** em `title-font` mas mantem o `font-size` que será atribuído ao elemento por outra classe pois não foi declarada em `highlighted-font`
 - e o **`font-size`** da classe `title-font` que sobrescreve o estilo em `main-font`.

 ###### HERANÇA
 A cascata do CSS, significa justamente a possibilidade de elementos filhos herdarem características de estilização de elementos superiores, estas definidas por suas propriedades, que podem ou não passar aos seus descendentes seus valores. Ao invés de colocar as propriedade em cada um dos elementos textuais da página, podemos por exemplo colocar no elemento superior a estas tags, neste caso usaremos o elemento `body`.
 ```css
 body {
   font-family: 'Helvetica', sans-serif;
 }
 ```
 **No exemplo acima todos os elementos filhos da tag `body` vão receber a propriedade `font-family`, isso é o que é chamado de herança. A herança acontece quando elementos herdam propriedades dos elementos acima deles (elementos pai).**

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

##### POSICIONAMENTO
 As propriedades de posicionamento são técnicas que permitem criar layouts resposivos que se adaptam a diferentes tamanhos de telas e dispositivos. São usadas para garantir que o site ofereça uma boa UX e a UI se adapte em qualquer dispositivo. As propriedades para posicionar os elementos na página são:
 - **`position`**<br/>
 Define como um elemento é posicionado na página, seus valores possíveis são:
   - **`static`**: comportamento **padrão** *onde os elementos são posicionados conforme sua posição original* ou o fluxo normal da página – não aceita `top`, `bottom` e etc.
   - **`relative`**: o elemento é posicionado **relativo** *à sua posição original*, ou seja, dentro do container em que está.
   - **`absolute`**: o elemento é posicionado em **relação** *ao seu ancestral posicionado mais próximo* – ou seja, o primeiro pai que tiver `position` diferente do padrão `static`. **Se nenhum ancestral estiver posicionado, ele será relativo ao viewport – então o documento inteiro passa a ser seu _"container"_.**
   - **`fixed`**: posiciona o elemento relativo à janela do navegador ficando fixo na tela, mesmo ao rolar a página.
   - **`sticky`**: posiciona o elemento baseado na posição de rolagem do usuário, ficando fixo ao atingir um limite.
   ```css
   .relative-box {
     position: relative;
     top: 20px;
     left: 30px;
   }

   .absolute-box {
     position: absolute;
     top: 50px;
     right: 20px;
   }
   ```
 - **`z-index`**<br/>
 **Controla a sobreposição de elementos posicionados.** Um elemento com um `z-index` **maior** aparecerá *acima* de um elemento com um `z-index` *menor*. Funciona apenas em elementos com position: `relative | absolute | fixed | sticky`.
 ```css
  .box1 {
   position: absolute;
   z-index: 1;
 }

 .box2 {
   position: absolute;
   z-index: 2; /* quanto maior o valor, mais à frente o elemento aparece */
 }
 ```
 - **`float`**<br/>
 Faz elementos flutuarem à esquerda ou direita enquanto outros elementos o contornam.
 ```css
 .img {
     float: left;
     margin-right: 10px;
 }
 ```
 - **`clear`**<br/>
 Evita que elementos flutuantes afetem outros elementos:
   - **`clear: left`**: Bloqueia elementos flutuantes à esquerda.
   - **`clear: right`**: Bloqueia elementos flutuantes à direita.
   - **`clear: both`**: Bloqueia elementos flutuantes em ambos os lados.
 - **`top | right | bottom | left`**<br/>
 posicionam um elemento em relação à sua propriedade.
 ```css
 ```
 - **`display`**<br/>
 Controla o modelo de caixa do elemento:
   - **`block`**
   - **`inline`**
   - **`flex`**
   - **`grid`**
   - **`none`**
   - entre outros.
 - **`visibility`**<br/>
 Controla a visibilidade do elemento:
   - **`visible`**: elemento visível, padrão.
   - **`hidden`**: elemento oculto, mas ainda mantém ocupado seu espaço na página.
   - **`none`**: elemento oculto, e perde seu espaço na página.
 - **`overflow`**<br/>
 Define o comportamento do conteúdo que ultrapassa o tamanho do elemento:
   - **`visible`**: o conteúdo transborda para fora do elemento, padrão.
   - **`hidden`**: o conteúdo extra fica oculto.
   - **`scroll`**: adiciona barras de rolagem.
   - **`none`**: adiciona barras de rolagem se necessário.
 - **`clip-path`**<br/>
 Corta parte do elemento, permitindo criar formas personalizadas para exibir apenas parte de um elemento:
 ```css
 .box {
    clip-path: circle(50%);
 }
 ```

##### DIMENSÕES
Para redimensionar elementos podemos usar as propriedades de **largura** e **altura**. As propriedades **`width`** e **`height`** Aceitam valores absolutos (px, cm, mm, etc.) e relativos (%, vw, vh, em, rem, etc.). É possível determinar as dimensões de um elemento, por exemplo, a declaração abaixo cria uma `div` "quadrada" de 300px x 300px:
```css
div {
    border: solid 1px #000;
    background-color: #333;

    height: 300px;
    width: 300px;
}
```
Além das principais apresentadas, no CSS existem diversas propriedades relacionadas a largura e altura que permitem redimensionar elementos de maneiras diferentes.
- **Largura e Altura Mínima**<br/>
`min-width` / `min-height`<br/>
Define a largura ou altura mínima que um elemento pode ter, impedindo que o elemento *fique menor* que o especificado.
```css
div {
    min-width: 200px;
    min-height: 100px;
}
```

- **Largura e Altura Máxima**<br/>
`max-width` / `max-height`<br/>
Define o tamanho máximo de um elemento, impedindo que o elemento *ultrapasse* um determinado tamanho.
```css
div {
    max-width: 500px;
    max-height: 400px;
}
```

- **Ajuste Automático de Conteúdo**<br/>
Útil para evitar que textos se quebrem em várias linhas.
  - **`fit-content`**<br/>
  O elemento ajusta sua largura ou altura conforme o conteúdo interno. Útil para botões e caixas de texto que se ajustam ao tamanho do conteúdo.
  ```css
  div {
      width: fit-content;
      height: fit-content;
  }
  ```
  - **`max-content`**<br/>
  O elemento expande até o maior conteúdo interno possível.
  ```css
  div {
      width: max-content;
  }
  ```
  - **`min-content`**<br/>
  O elemento usa o menor tamanho possível sem quebrar o conteúdo.
  ```css
  div {
      width: min-content;
  }
  ```

- **Dimensões Relativas ao Contêiner**<br/>
`auto`<br/>
O navegador calcula automaticamente o tamanho baseado no conteúdo e no contêiner, comportamento padrão para muitos elementos.
```css
div {
    width: auto;
    height: auto;
}
```

- **Unidades Especiais**
  - **Unidades de Tela**<br/>
  Ótimas para layouts responsivos.
    - `vw` (viewport width): 1vw = 1% da largura da tela.
    - `vh` (viewport height): 1vh = 1% da altura da tela.
    - `vmin`: 1% do menor lado da tela (altura ou largura).
    - `vmax`: 1% do maior lado da tela.
    ```css
    div {
        width: 50vw; /* 50% da largura da tela */
        height: 30vh; /* 30% da altura da tela */
    }
    ```
  - **Unidades Flexíveis**<br/>
  Muito usadas para designs responsivos.
    - `em`: Relativo ao tamanho da fonte do elemento.
    - `rem`: Relativo ao tamanho da fonte do elemento `html`.
    - `%`: Relativo ao elemento pai.
    ```css
    div {
        width: 80%;
        height: 10em;
    }
    ```

**`inherit`**<br/>
Imagine que temos a seguinte divisão com uma imagem:
```html
<style>
div {
    border: 2px solid;
    border-color: red;
    width: 30px;
    height: 30px;
}
</style>

<div>
    <img src="box-model.png" alt="box model">
</div>
```

O objetivo é que a imagem preencha todo o espaço da `div`, mas as propriedades `width` e `height` não são aplicadas em cascata, sendo assim, somos obrigados a definir o tamanho da imagem manualmente:
```css
img {
    width: 30px;
    height: 30px;
}
```

Esta não é uma solução sustentável, porque, caso alterarmos o tamanho da `div`, teremos que lembrar de alterar também o tamanho da imagem. **Uma forma de resolver este problema é utilizando o valor inherit para as propriedades width e height da imagem**:
```css
img {
    width: inherit;
    height: inherit;
}
```
**O valor `inherit` indica para o elemento filho que ele deve utilizar o mesmo valor presente no elemento pai, sendo assim, toda vez que o tamanho do elemento pai for alterado, automaticamente o elemento filho herdará o novo valor, facilitando assim, a manutenção do código.** *Lembrando sempre de que o `inherit` também afeta propriedades que não são aplicadas em cascata.*

##### ESPAÇAMENTO
 Margens, bordas e padding são usadas para controlar o espaço ao redor dos elementos, essa é a base do modelo de caixa, o **`box-model`**. Ao trabalhar com a posição dos elementos em nossa página, existem várias propriedades para estilizá-los:
 - **`float`**: Altera a forma como os elementos são exibidos em uma página web. Ao aplicar este atributo, podemos posicionar o elemento da forma que desejarmos na página, pois ele não ocupa mais toda a largura da página, apenas do seu conteúdo, e o resto dos elementos são distribuídos ao redor dele, em vez de acima ou abaixo. Para que o elemento retorne a condição de `box-model`, usamos a propriedade `clear`.<br/>
 Apesar de não estar depreciado, é uma técnica antiga e atualmente está em desuso, muito por conta do advento de novas técnicas que oferem maior flexibilidade, controle e semântica como `flexbox` e `grid`, reduzindo muitos problemas que o `float` apresentava, como por exemplo a necessidade de `clearfix`. O uso deste artifício é recomendado em casos específicos, como fazer com que o texto envolva imagens em vez de criar layouts complexos.
 - **`margin` top left bottom right**: **Define o espaço entre a borda _"externa"_ da box-model e o que quer que esteja ao redor dela (elementos atribuídos com a propriedade `float` são exceção).** Cada elemento do site possui a orientação de margens na respectiva sequência:
   1. **`margin-top`**: Distância em relação ao elemento acima.
   2. **`margin-right`**: Distância em relação ao elemento a direta.
   3. **`margin-bottom`**: Distância em relação ao elemento abaixo.
   4. **`margin-left`**: Distância em relação ao elemento a esquerda.
 - **`padding` top left bottom right**: **Define o espaço entre o conteúdo _dentro_ da box-model e sua borda "interna".** Análogo à propriedade `margin`, cada elemento no site possui um acolchoamento na sequência:
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

1. **Se passado somente 1 valor para as propriedades, esse mesmo valor é aplicado em todas as direções.**
```css
p {
  margin: 10px;

  padding: 10px;
}
```
2. **Se passados 2 valores, o primeiro será aplicado acima e abaixo (equivalente a passar o mesmo valor para padding-top e margin-bottom) e o segundo será aplicado à direita e à esquerda (equivalente ao mesmo valor para margin-right e padding-left).**
```css
p {
  margin: 10px 15px;

  padding: 10px 15px;
}
```
3. **Se passados 3 valores, o primeiro será aplicado acima (equivalente a padding-top), o segundo será aplicado à direita e à esquerda (equivalente a passar o mesmo valor para margin-right e margin-left) e o terceiro valor será aplicado abaixo do elemento (equivalente a padding-bottom).**
```css
p {
  margin: 10px 20px 15px;

  padding: 10px 20px 15px;
}
```
4. **Se passados 4 valores, serão aplicados respectivamente a padding-top, padding-right, padding-bottom e padding-left por exemplo. Para facilitar a memorização dessa ordem, basta lembrar que os valores são aplicados em _sentido horário._**
```css
p {
  padding: 10px 20px 15px 5px;
}
```

**OBS**: Quando for necessário omitir valores, sempre omita no sentido **anti-horário** começando a partir da subpropriedade `-left`. Como os valores tem posicionamento fixo na hora de declarar os espaçamentos, o navegador não sabe quando e qual valor deve ser omitido. Por exemplo, se tivermos um padding:
```css
h1 {
  padding: 10px 25px 10px 15px;
}
```
**O código não pode sofrer o encurtamento porque por mais que os valores de top e bottom sejam iguais, os valores right e left não são e eles são os primeiros a serem omitidos.** Vejamos o que acontece quando vamos omitir o valor de 10px do bottom:
```css
h1 {
  padding: 10px 25px 15px;
}
```

O navegador vai interpretar da seguinte maneira:
```css
h1 {
  padding: top right bottom; 
}
```

Que no final vai ficar igual a:
```css
h1 {
  padding-top: 10px;
  padding-bottom: 15px;

  padding-right: 25px;
  padding-left: 25px;
}
```
E esses valores não são os usados no começo com `padding: 10px 25px 10px 15px;`

##### BOX-SIZING
A propriedade `box-sizing` define como a largura e a altura de um elemento são calculadas, levando em conta, ou não, o `border` e o `padding`.
- **`content-box` (Padrão do CSS)**
  - **A largura e altura consideram apenas o conteúdo**, excluindo `padding` e `border`.
  - **O elemento pode acabar maior que o esperado**, pois `padding` e `border` são adicionados depois.
  ```css
  .elemento {
      width: 200px;
      height: 200px;
      padding: 20px;
      border: 10px solid black;
      box-sizing: content-box;

      /* O tamanho total do elemento será maior que 200px
        Largura total: 200px + 20px + 20px + 10px + 10px = 260px
        Altura total: 200px + 20px + 20px + 10px + 10px = 260px
      */
  }
  ```

-  **`border-box` (Recomendado)**
  - **A largura e altura incluem `padding` e `border`**, mantendo o tamanho exato do elemento.
  - **Facilita o controle do layout**, pois o tamanho definido já conta com tudo.
  ```css
  .elemento {
      width: 200px;
      height: 200px;
      padding: 20px;
      border: 10px solid black;
      box-sizing: border-box;

      /* O tamanho total do elemento será exatamente 200px
      pois `padding` e `border` são incluídos dentro da `width` e `height`. */
  }
  ```

- **`content-box` vs `border-box`**
  - **`content-box` (Padrão)**: O elemento cresce além da `width` definida.
  - **`border-box` (Melhor para layouts responsivos)**: O tamanho total do elemento se mantém fixo.

Uma boa prática é usar `border-box` globalmente Para evitar inconsistências no layout, isso garante que todos os elementos sigam a mesma lógica de dimensionamento:
```css
* {
    box-sizing: border-box;
}
```

##### OVERFLOW
Controla o comportamento do conteúdo que excede os limites do elemento pai, determinando se ele será visível, ocultado ou se barras de rolagem serão adicionadas.
```css
.elemento {
    overflow: *visible, hidden, scroll, auto*; /* controla o comportamento dos elementos internos que "vazam" do espaço definido pela tag pai */
    overflow-x: *visible, hidden, scroll, auto*; /* controla o comportamento dos elementos internos que "vazam" do espaço HORIZONTAL definido pela tag pai */
    overflow-y: *visible, hidden, scroll, auto*; /* controla o comportamento dos elementos internos que "vazam" do espaço VERTICAL definido pela tag pai */
}
```

##### UNIDADES
 Muitas propriedades assumes valores de *comprimento*, tais como **`widht`**, **`height`**, **`margin`**, **`padding`**, **`font-size`**, entre outras. O CSS tem várias unidades diferentes para expressar um comprimento, como *pixels*, porcentagens e escala.<br/>
 O comprimento **é um número seguido por uma unidade de medida**, como por exemplo **`10px`**. **Não podem haver espaços em branco entre o número e a unidade, entretanto, se o valor for `0` a unidade pode se omitida.**<br/>
 *Para algumas propriedades são permitidos comprimentos negativos.*<br/>
 Existem 3 tipos de unidades de comprimento: a **absoluta**, a **relativa** e as **unidades especiais**.

 1. **Absoluto**: As unidades de comprimento absoluto são **fixas**, e *uma medida expressa em qualquer uma delas fará o elemento ser exibido exatamente com aquele tamanho*. **As unidades de comprimento absoluto não são recomendadas para uso na tela, pois os tamanhos dos dispositivos variam muito, mas podem ser usados se o meio de saída for conhecido, como por exemplo um layout de impressão.**
 | UNIDADE    | DESCRIÇÃO                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
 | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | **`cm`**   | centímetros                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
 | **`mm`**   | milímetros                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
 | **`in`**   | polegadas                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
 | **`px *`** | pixel – Ele indica que unidades pixel podem variar em dispositivos de alta resolução e impressoras, refletindo uma escala não tradicional. Devido às diferentes densidades de pixels em dispositivos (por exemplo, telas de alta resolução), o “px” é um “pixel de referência” que pode não corresponder a um pixel físico individual. Em resumo, o valor em `px *` garante que os elementos apareçam com dimensões visualmente consistentes, independentemente do dispositivo. |
 | **`pt`**   | ponto – Originado do mundo da tipografia, 1pt equivale a 1/72 de uma polegada. Essa unidade é tradicionalmente usada na impressão, onde a medida física exata é importante. Em telas, seu uso é menos comum porque as dimensões absolutas (como pt, cm, in) não se adaptam bem às variações de tamanho e densidade das telas modernas.                                                                                                                                          |
 | **`pc`**   | pica – Também vinda da tipografia, a pica é uma unidade derivada dos pontos: 1pc equivale a 12pt. Assim, como 1pt ≈ 1.33px (visto que 96px/72pt ≈ 1.33), temos que 1pc corresponde aproximadamente a 16px. Essa unidade é mais usada em contextos de design gráfico e impressão.                                                                                                                                                                                                |

 2. **Relativo**: As unidades de comprimento relativo, como o próprio nome diz, **especificam um comprimento em relação a outra propriedade de comprimento**. *As unidades de comprimento relativas escalam melhor entre os diferentes meios de renderização, se adaptando melhor entre os diferentes tipos e tamanhos de telas.*
 | UNIDADE    | DESCRIÇÃO                                                                                                                                                                     |
 | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | **`rem`**  | Relativo ao **tamanho da fonte do elemento raiz** – `2rem` significa **2 vezes o tamanho da fonte do `root`, ou seja, o documento "raiz"**.                                   |
 | **`em`**   | Relativo ao **tamanho da fonte do elemento pai** – `2em` significa **2 vezes o tamanho da fonte do elemento atual pai direto**.                                               |
 | **`vw`**   | Relativo a `x%` da **largura** da tela.                                                                                                                                       |
 | **`vh`**   | Relativo a `x%` da **altura** da tela.                                                                                                                                        |
 | **`%`**    | Relativo a `x%` do **elemento pai**.                                                                                                                                          |
 | **`vmin`** | Relativo a `x%` da menor dimensão da janela ou interface gráfica – se a viewport tem 1200px de largura e 800px de altura, `1vmin` equivale a **8px** (1% de 800px).           |
 | **`vmax`** | Relativo a `x%` da maior dimensão da janela ou interface gráfica – Usando a mesma viewport (1200px de largura e 800px de altura), `1vmax` equivale a **12px** (1% de 1200px). |
 | **`ex`**   | Relativo à altura de "x" da fonte atual – raramente utilizado, `1ex` representa aproximadamente a altura de uma letra minúscula “x”.                                          |
 | **`ch`**   | Relativo a largura do "0", ou seja, o campo de entrada terá largura suficiente para aproximadamente a quantidade definida `x` dígitos "0".                                    |

```css
html {
  font-size: 10px;
}

div {
  font-size: 20px;

  width: 300px;

    img {
      width: 10em;   /* a largura será de 200px */
      height: 10rem; /* a altura será de 100px */
      /*
      A vantagem de usar essas medidas é que se houverem outros elementos usando essas medidas,
      e exisitir a necessidade de mudar o tamanho de todos os elementos proporcionalmente, basta mudarmos em um lugar só.
      Estas unidades de medida são ideais para quando o site precisa ser exibido em diferentes tamanhos de telas,
      onde em cada tamanho de tela a fonte deve ser exibida em escalas de tamanhos diferentes e proporcionais entre si.
      */
    }
    #elemento {
      width: 100%; /* acupa 100% do espaço disponível dentro da div 
      A vantagem de se usar % é que não importa o tamanho da div, o elemento sempre vai acompanhar o tamanho da sua tag mãe */
    }
}
```

 3. **Especiais**: Existem algumas unidades de medidas especiais que funcionam como funções calculando e ajustando automaticamente os elementos e conteúdos, um exemplo é o **`fractional unit`**, que representa uma fração do espaço disponível do container, diferente de `px` ou `%`, o **`fr`** ajusta automaticamente oo tamanho do container.
| UNIDADE         | EXEMPLO                         | DESCRIÇÃO                                           |
|-----------------|---------------------------------|-----------------------------------------------------|
| `auto`          | `property: auto auto;`          | O conteúdo define o tamanho automaticamente.        |
| `minmax()`      | `property: minmax(100px, 1fr);` | Define um mínimo e um máximo para a coluna.         |
| `0fr`           | `property: 1fr 2fr 1fr;`        | Calcula e divide frações do espaço disponível       |
| `repeat()`      | `property: repeat(3, 1fr);`     | Atalho para criar colunas repetitivas.              |
| `fit-content()` | `property: fit-content(200px);` | Ajusta a coluna ao conteúdo, sem ultrapassar 200px. |

##### PROPRIEDADES DE TEXTO
 Acrescentando estilos ao texto e ao layout de um site, podemos melhorar a legibilidade e dar uma identidade visual à página. Essas propriedades incluem fontes, cores, margens, bordas, padding entre outras dimensões. O CSS oferece uma ampla variedade de propriedades para estilizar o texto e aplicar cores aos elementos. Vejamos algumas:
 - **propriedades de texto**:
   - **`font-size`**: define o tamanho da fonte.
   - **`font-family`**: define o estilo da fonte pode receber seu valor com ou sem aspas dependendo da sua composição, por exemplo, quando uma fonte tem o nome separado por espaço.
   - **`font-weight`**: define o "peso" da fonte.
   - **`font-style`**: define o estilo da fonte.
   - **`line-height`**: define a altura e espaçamento entre as linhas.
   - **`letter-spacing`**: define o tamanho do espaço entre cada letra.
   - **`word-spacing`**: define o tamanho do espaço entre cada palavra.
   - **`text-align`**: define o alinhamento do texto.
   - **`text-indent`**: define o tamanho da margem da primeira linha do texto.
   - **`text-transform`**: define a capitalização do texto.
 - **propriedades de cor**:
   - **`color`**: define a cor da fonte.
   - **`background`**: define a cor de fundo do texto.

###### FONTES
 Por padrão, os navegadores mais conhecidos exibem texto em um tipo que conhecemos como **"serif"**. As fontes mais conhecidas e comumente utilizadas como padrão são "Times" e "Times New Roman", dependendo do sistema operacional. Elas são chamadas de fontes serifadas pelos pequenos ornamentos em suas terminações. Podemos alterar a família de fontes que queremos utilizar em nosso documento para a família **"sans-serif"** (sem serifas), que contém, por exemplo, as fontes "Arial" e "Helvetica". Podemos também declarar que queremos utilizar uma família de fontes **"monospace"** como, por exemplo, a fonte "Courier".<br/>
 É possível, e muito comum, declararmos o nome de algumas fontes que gostaríamos de verificar se existem no computador, permitindo que tenhamos um controle melhor da forma como nosso texto será exibido.<br/>
 **Se quisermos usar um tipo de fonte específico que precise ser baixado, usamos a propriedade `@font-face` informando o caminho onde o arquivo `true-type-file` dessa fonte está localizado.**<br/>
 *Se a fonte estiver armazenada localmente é necessário que esteja na raiz, caso contrário não será usado no documento html.*
 ```css
 @font-face {
    font-family: 'fonteName';                       /* armazena a referência à fonte atrelando à variável na memória */
    src: url('Fonte.ttf') || src: url('Fonte.otf'); /* informa o caminho do arquivo da fonte */
 }

 div {
    font-style: normal;
    font-weight: bold; /* informa para que use a fonte para as `div`s */
    font-size: 1rem;   /* informa para que use a fonte para as `div`s */
    font-family: 'fonte', sans-serif; /* informa para que use as fontes para as `div`s
    Nesse caso, o navegador verificará se a fonte "fonte" está disponível e a utilizará para exibir os textos de todos os elementos do nosso documento que, por cascata, herdarão essa propriedade do elemento `div`.
    Caso a fonte "font" não esteja disponível, o navegador verificará a disponibilidade da próxima fonte declarada, ou seja, caso o navegador não encontre essa fonte, ele solicita qualquer fonte que pertença à família "sans-serif", declarada logo a seguir, e a utiliza para exibir o texto, não importa qual seja ela.*/
 }
 ```

###### ESTILOS PARA LISTAS E LINKS**
 Os estilos para listas e links permitem personalizar a aparência de elementos comuns – listas e hiperlinks – de maneira a enriquecer o design do site sem alterar a estrutura. A seguir, veremos como controlar marcadores chamados de *bullets* em listas e como estilizar links, seguindo a regra "LoVe HAte”, que define os estados dos links.

1. **ESTILIZANDO LINKS**
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

2. **ESTILIZANDO LISTAS**
O CSS oferece as seguintes propriedades para alterar a aparência das listas:

- **`list-style-type`**<br/>
  Pode-se usar a *shorthand property* **`list-style: value`**. Define o tipo de marcador. Valores comuns incluem:
  - **`none`** (sem marcador)
  - **`disc`** (padrão para `<ul>`)
  - **`circle`**
  - **`square`**
  - **`decimal`** (padrão para `<ol>`)
  - **`lower-roman`**
  - **`lower-roman`**
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

3. **ESTILIZANDO TABELAS**

##### BORDAS
A propriedade **`border`** trata o contorno do elemento, modificando sua borda. Os valores para se definir as bordas de um elemento apresentam uma série de opções. Pode-se, para cada borda do elemento, determinar sua cor, estilo de exibição e largura. Por exemplo:
```css
#profilePicture {
    /* border - top, right - bottom - left */
    border-color: #000;
    border-style: solid;
    border-width: 1px;
    border-radius: 50%;

    /* sua forma resumida é: */
    border-top: #000 solid 1px; /* aplica os valores apenas à borda superior */
}
```

##### BACKGROUND
A propriedade background permite controlar o plano de fundo de um elemento, incluindo cor, imagem, tamanho, repetição e posição.
```css
.elemento {
    background-color: *hexadecimal, nome, rgb, rgba*; /* controla a cor de fundo */
    background-image: *url()*; /* coloca uma imagem como plano de fundo */
    /*------------------------------------------------------*/
    background-image: url("image.jpg");
    /* ou */
    background-image: url("../path/image.jpg");
    /* ou */
    background-image: url("https:/images.com/path/image.jpg");
    /*------------------------------------------------------*/
    background-size: *x y, x/y, cover, contain, %, px, rem, em *; /* controla o tamanho do plano de fundo. Dois valores podem ser colocados, x e y ou apenas o valor de x que ele será adicionad/removido proporcionalmente em y */
    background-repeat: *repeat, no-repeat*; /* controla se a imagem de fundo vai sofrer repetição*/
    background-position: *top right bottom left, top 10px, bottom 2rem right 2%*; /* controla a posição do plano de fundo */
}
```

##### IMAGENS
As imagens são usadas no design para criar interfaces mais agradáveis, podem ter diversas aplicações nos documentos web, é possível utilizá-las como decoração para uma página, como plano de fundo, como complemento de informação do conteúdo, como hyperlinks, gráficos vetoriais, entre outros exemplos.

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
    /* Toda vez que os caracteres presentes na composição da base se repetirem, estes podem ser simplificados.
    Então um número em hexadecimal 3366ff, pode ser simplificado para 36f. */
    border-color: #36f;
    /* Os 3 pares de números devem ser iguais entre si, ou seja, se tivermos um hexadecimal #33aabc não podemos simplificar nada do código. */
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

#### DISPLAYS
 O display é uma propriedade que define como um elemento deve se comportar na página, ele controla: o `box-model` do elemento, como ele *ocupa o espaço* e como *interage com outros elementos*. Ele é a propriedade que especifica o tipo de renderização de um elemento, determinando se ele será tratado como um `block`, `inline`, `flex` e etc.<br/>
 É a chave para criar layouts, definindo como os elementos devem se comportar na página. Desde algo simples como transformar um `span` em `block` a comportamentos mais complexos como criar um layout flexível com `flex`.

 Vejamos alguns:
 - **`contents`**<br/>
 Remove o próprio elemento do fluxo de renderização, mas mantém seus filhos visíveis na página, ou seja, ele faz o elemento pai "desaparecer" visualmente, sem afertar seus filhos, no entanto, os filhos ainda herdam estilos e comportamentos normalmente, como se estivessem diretamente no elemento pai do "desaparecido".<br/>
 Deve ser usado quando um elemento não precisar de estilos próprios, mas seus filhos devem continuar existindo, para assim simplificar a estrutura do DOM sem afetar o layout.
 Neste exemplo, o elemento `wrapper` desaparece visualmente, porém, os elementos `p` se comportam como se estivessem dentro `container` diretamente, e, o `background-color` do `wrapper` não funciona, porque não há mais uma "caixa" visível. Propriedades como `background`, `border`, `padding`, `margin` não terão efeito, pois o elemento deixa de existir visualmente.
 ```html
 <style>
 .wrapper {
    display: contents;
    background-color: lightblue;
 }
 </style>
 <div class="container">
    <div class="wrapper">
       <p>Texto 1</p>
       <p>Texto 2</p>
    </div>
 </div>
 ```

 - **`list-item`**<br/>
 Faz com que os elementos se comportem como um item de lista, semelhante a um `li` dentro de um `ul` ou `ol`. Isso significa que o elemento exibe um marcador automaticamente podendo ter seu estilo personalizado com `list-style-type`, `list-style-position`, `list-style-image` e se comporta como um bloco por padrão.
 ```html
 <style>
 .item {
    display: list-item;
 }
 </style>

 <div class="item">Item 1</div>
 <div class="item">Item 2</div>
 <div class="item">Item 3</div>
 ```

 - **`table`**<br/>
 Faz com que o elemento se comporte como uma `table`, permitindo layouts similares a tabelas, permitindo que os filhos sejam tratados como `table-row`, `table-cell` e etc.
 ```html
 <style>
 .container {
    display: table;
 }

 .row {
    display: table-row;
    background-color: yellow;
 }
 </style>

 <div class="container">
    <div class="row">Linha 1</div>
    <div class="row">Linha 2</div>
 </div>
 ```

 - **`flow-root`**<br/>
 Cria um novo bloco de formatação, garantindo que elementos filhos com a propriedade `float` não escapem do container, sem precisar de `clearfix`.
 ```html
 <style>
 .container {
    display: flow-root;
    background-color: lightgray;
 }

 .item {
    float: left;
    width: 50%;
 }
 </style>

 <div class="container">
    <div class="item">Item 1</div>
    <div class="item">Item 2</div>
 </div>
 ```

#### BOX MODEL
 Existem 2 tipos básicos de propriedades de display:
 1. **`inline`**: Não geram uma quebra de linha e ficam na mesma linha ou posição em que o elemento estiver disposto, seu espaço ocupado é o mesmo que o tamanho do conteúdo dentro da tag e não aceitam propriedades de tamanho como `width` e `height`. Exemplos de tags tipo `inline`: `span`, `strong`, `em`, `a`, `img`, entre outas.
 2. **`block`**: Sempre começam em uma nova linha causando uma quebra de linha acima e abaixo da tag ocupando 100% da largura disponível, se diminuir seu tamanho o espaço restante será ocupado por uma `margin` não removível; a maioria das tags são deste tipo. Exemplos de tags tipo `block`: `h1` ... `h6`, `p`, `div`, `br`, entre outras.

 Para realizar a conversão de um tipo de elemento deve-se alterar a propriedade **`display`** do seletor em questão:
 ```css
 .id {
    display: inline-block;
 }
 ```

 3. Existe também o tipo **`inline-block`**, que mostura comportamentos do `inline` com `block`, fazendo com que o elemento comece na mesma linha e posição onde está aceitando propriedades como `width` e `height`. A propriedade **`vertical-align`** alinha verticalmente elementos `inline` ou `inline-block`.
 ```css
 .elemento {
   display: inline-block;
   vertical-align: *baseline, top, middle, bottom*;
 }
 ```

#### FLEXBOX
 Tradicionalmente, o CSS tem usado posicionamento `static`, `relative`, `absolute`, e etc, além de elementos `block`, `inline`, `inline-block` e `float`, que, em termos gerais, são sistemas de criação de design engessados e pouco flexíveis, que atualmente não se ajustam aos desafios enfrentados hoje com sistemas de desktop, dispositivos móveis, multiplas resoluções e mais.<br/>
 Para atender essa demanda, surgiu o **`flexbox`**, que é um sistema de elementos flexíveis, que vem com a ideia de esquecer estes mecanismos para usar uma técnica mais poderosa, limpa e personalizável, na qual os elementos do documento são automaticamente adaptados e manipulados, tornando mais fácil a personalização. O `flexbox` foi especialmente projetado para criar *estruturas unidimensionais*.<br/>
 Este é um módulo de layout que facilita a distribuição de espaço e o alinhamento de itens em uma interface de forma eficiente, e é ideal para a criação de layouts responsivos, pois permite que os itens se ajustem automaticamente ao tamanho da tela. Quando precisamos **organizar elementos em linhas ou colunas** o flexbox é a escolha ideal.<br/>
 Ele funciona de uma maneira diferente dos outros displays. **Quando colocamos essa propriedade em um elemento, esse elemento se torna um flex container, a partir daí podemos manipular todos os elementos filhos desse flex container com propriedades novas. Essas propriedades devem ser usadas no elemento que é um flex container.**<br/>
 Para começar a usar o flexbox, é necessário definir um **`flex container`** usando a propriedade **`display: flex`**. **As propriedades do `flex container` controlam a direção, alinhamento e espaçamento dos itens filhos.** A estrutura de um `flexbox` segue o seguinte padrão:
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
 - **eixo principal**: As *`flexboxes`* devem ter uma orientação principal específica. Por padrão **o eixo principal do recipiente flexbox é horizontal**, como uma *"fileira"*.
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
 Para começarmos a usar o **`flexbox`**, é necessário definir um **`flex container`**, as propriedades do container flex controlam a direção, o alinhamento e o espaçamento dos itens filhos. Para ativarmos o modo `flexbox` do container, utilizamos a propriedade de `display` no elemento repecipiente e especificamos o valor **`flex`** ou **`inline-flex`**.
 1. **`flex`**: Configura um recipiente em bloco, semelhante a **`block`** que ocupa toda a largura do elemento pai enquanto os filhos ficam alinhados em fila dentro do container flex.
 2. **`inline-flex`**: Configura um recipiente em linha, semelhante a **`inline-block`** que ocupa apenas o espaço do conteúdo, sem quebrar linhas.
 ```css
 .container {
    background-color: lightblue;
    display: flex /* inline-flex */;
 }
 .item {
    background-color: grey;
    color: white;
    border: 1px solid black;
    width: 100px;
    height: 100px;
 }
 ```

 Por padrão, os elementos são todos dispostos *"grudados"* lado a lado na mesma linha, ou seja, todos os filhos ficam um do lado do outro como se estivessem sob o efeito de `display: inline`.

 ![Image](https://github.com/user-attachments/assets/85a1b770-0c7a-4e42-8193-7e55173e977d)

##### DIREÇÃO DO EIXO
 Existem 3 propriedades principais para manipular a direção e o comportamento dos itens ao longo do **eixo principal** do repcipiente:
 1. **`flex-direction`**<br/>
 Define a direção dos itens no container, usando as propriedades do `flex-direction` podemos mudar a orientação do eixo principal do recipiente para ser orientado **horizontalmente (padrão)** ou **verticalmente**.
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="4"><code>flex-direction</code><br/>Muda a orientação do eixo principal.</th>
        <td><code>row</code></td>
        <td>Define a direção do eixo principal para HORIZONTAL com os itens em ORDEM DO PRIMEIRO AO ÚLTIMO.</td>
    </tr>
    <tr>
        <td><code>row-reverse</code></td>
        <td>Define a direção do eixo principal para HORIZONTAL com os itens em ORDEM DO ÚLTIMO AO PRIMEIRO.</td>
    </tr>
    <tr>
        <td><code>column</code></td>
        <td>Define a direção do eixo principal para VERTICAL com os itens em ORDEM DO PRIMEIRO AO ÚLTIMO.</td>
    </tr>
    <tr>
        <td><code>column-reverse</code></td>
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

 ![Image](https://github.com/user-attachments/assets/becdbcba-f17d-42ea-b23c-6ac37d4e7289)<br/>
 ![Image](https://github.com/user-attachments/assets/7f434484-2b48-46cd-b941-ffb8f7883275)

 2. **`flex-wrap`**<br/>
 Usando o **`flex-wrap`** podemos especificar o comportamento do recipiente no que diz respeito a *EVITAR que ele se ajuste com uma quebra de linha* com o **`nowrap`**, ou *PERMITIR que ele o faça com **`wrap`**, "adicionando" mais linhas para comportar o conteúdo*.
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="3"><code>flex-wrap</code><br/>Impede ou permite a quebra de linha para ajustar os elementos.</th>
        <td><code>nowrap</code></td>
        <td>Define os itens em uma ÚNICA DIREÇÃO, ignorando seu tamanho definido e o ajustando para caber no container impedindo uma quebra de linha, ou que o container transborde.</td>
    </tr>
    <tr>
        <td><code>wrap</code></td>
        <td>Define os items no modo MULTILINHA, mantém o tamanho definido e permite que o container transborde, adcionando mais linhas usando quebras de linha.</td>
    </tr>
    <tr>
        <td><code>wrap-reverse</code></td>
        <td>Define os items no modo MULTILINHA, mantém o tamanho definido e permite que o container transborde, adcionando mais linhas usando quebras de linha invertendo a direção de ordem dos itens.</td>
    </tr>
</table>

 Assim como no `flex-direction`, aqui também podemos incluir o sufixo **`reverse`** para indicar uma *colocação dos itens em ordem inversa*.

 ![Image](https://github.com/user-attachments/assets/1004ea07-ea14-452a-8415-29d79b8d205b)<br/>
 ![Image](https://github.com/user-attachments/assets/e2e1749a-793e-4ef2-bd31-e4621903f3a6)

 2. **`flex-flow`**<br/>
 É a *função shorthand* que combina o uso do **`flex-direction`** e **`flex-wrap`** na respectiva ordem.<br/>
 `flex-flow: <flex-direction> <flex-wrap>`
 ```css
 .container {
    display: flex;
    flex-flow: row wrap;
 }
 ```
##### PROPRIEDADES DE ALINHAMENTO
 Agora que temos um controle básico do recipiente dos `flex-items`, iremos conhecer as propriedades existentes dentro da `flexbox` para **organizar os itens dependendo do nosso objetivo para o layout da página**.<br/>
 Vejamos 4 propriedaddes básicas para isso:
 1. **`justify-content` – EIXO PRIMÁRIO (HORIZONTAL)**
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="6"><code>justify-content</code><br/>Alinha os itens no EIXO PRIMÁRIO (HORIZONTAL).</th>
        <td><code>flex-start</code></td>
        <td>Itens agrupados no INÍCIO do eixo principal.</td>
    </tr>
    <tr>
        <td><code>flex-end</code></td>
        <td>Itens agrupados no FINAL do eixo principal.</td>
    </tr>
    <tr>
        <td><code>center</code></td>
        <td>Itens agrupados no CENTRO do eixo principal.</td>
    </tr>
    <tr>
        <td><code>space-betwen</code></td>
        <td>Distribui os itens deixando o MÁXIMO de espaço possível para separálos.</td>
    </tr>
    <tr>
        <td><code>space-around</code></td>
        <td>Distribui os itens deixando o MESMO espaço ao seu redor.</td>
    </tr>
    <tr>
        <td><code>space-evenly</code></td>
        <td>Distribui os itens deixando o MESMO ESPAÇO SOBREPOSTOS PARA A ESQUERDA E PARA A DIREITA.</td>
    </tr>
</table>

 **Esta propriedade aloca os itens de um recipiente em um determinado arranjo ao longo do eixo principal.**

 ![Image](https://github.com/user-attachments/assets/5e832354-0f3c-4652-8880-0ad292a7c5b8)

 2. **`align-content` – EIXO PRIMÁRIO (HORIZONTAL)**
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="6"><code>align-content</code><br/>Alinha os itens no EIXO PRIMÁRIO (HORIZONTAL).</th>
        <td><code>flex-start</code></td>
        <td>Itens agrupados no INÍCIO do eixo principal.</td>
    </tr>
    <tr>
        <td><code>flex-end</code></td>
        <td>Itens agrupados no FINAL do eixo principal.</td>
    </tr>
    <tr>
        <td><code>center</code></td>
        <td>Itens agrupados no CENTRO do eixo principal.</td>
    </tr>
    <tr>
        <td><code>space-betwen</code></td>
        <td>Distribui os itens do INÍCIO AO FIM.</td>
    </tr>
    <tr>
        <td><code>space-around</code></td>
        <td>Distribui os itens deixando o MESMO espaço ao seu redor, em ambos os lados de cada item.</td>
    </tr>
    <tr>
        <td><code>stretch</code></td>
        <td>"ESTICA" os itens para ocupar todo o espaço de maneira UNIFORME.</td>
    </tr>
</table>

 **A propriedade `align-content` é especialmente útil quando estivermos lidando com um container flex MULTILINHA, ou seja, um container em que os itens não cabem na largunra disponível e, por tanto, o eixo principal é dividido em várias linhas com o `flex-wrap: wrap` por exemplo. Assim, o `align-content` é usado para alinhar cada uma das linhas do container multilinhas.**

 ![Image](https://github.com/user-attachments/assets/b26e23be-fcfd-4bf7-9004-efbbac276b91)
 
 3. **`align-items` – EIXO SECUNDÁRIO (VERTICAL)**
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="5"><code>align-items</code><br/>Alinha os itens no EIXO SECUNDÁRIO (VERTICAL).</th>
        <td><code>flex-start</code></td>
        <td>Itens agrupados no INÍCIO do eixo secundário.</td>
    </tr>
    <tr>
        <td><code>flex-end</code></td>
        <td>Itens agrupados no FINAL do eixo secundário.</td>
    </tr>
    <tr>
        <td><code>center</code></td>
        <td>Itens agrupados no CENTRO do eixo secundário.</td>
    </tr>
    <tr>
        <td><code>stretch</code></td>
        <td>"ESTICA" os itens para ocupar todo o espaço de maneira UNIFORME.</td>
    </tr>
    <tr>
        <td><code>baseline</code></td>
        <td>Alinha os elementos no espaço com base do CONTEÚDO dos itens no container.</td>
    </tr>
</table>

 **O conteúdo do container é alinhado de acordo com cada linha de um recipiente multilinha.**

 ![Image](https://github.com/user-attachments/assets/776b9bb4-65e1-41b1-aade-80adfbd5e273)<br/>
 ![Image](https://github.com/user-attachments/assets/924c8e1d-0bf7-420b-8efa-079a655e6c5a)<br/>
 ![Image](https://github.com/user-attachments/assets/84270b6f-32d9-421c-b4f4-14958652066a)<br/>
 ![Image](https://github.com/user-attachments/assets/662ba1f0-75e5-4733-8cb6-9f8edda4309b)

 4. **`align-self` – EIXO SECUNDÁRIO**
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th rowspan="6"><code>align-self</code>Permite que um item individual sobreponha o alinhamento definido por <code>align-items</code>.</th>
        <td><code>flex-start</code></td>
        <td>Alinha o item no INÍCIO do container.</td>
    </tr>
    <tr>
        <td><code>flex-end</code></td>
        <td>Alinha o item no FINAL do container.</td>
    </tr>
    <tr>
        <td><code>center</code></td>
        <td>Alinha o item no CENTRO do container</td>
    </tr>
    <tr>
        <td><code>stretch</code></td>
        <td>Alinha o item ESTICANDO ao tamanho do container.</td>
    </tr>
    <tr>
        <td><code>baseline</code></td>
        <td>Alinha o elemento no espaço com base do CONTEÚDO do item no container.</td>
    </tr>
    <tr>
        <td><code>auto</code></td>
        <td>Herda o valor dos <code>align-items</code> do elemento pai, caso não esteja definido, seu padrão é o valor <code>stretch</code>.</td>
    </tr>
</table>

 **Funciona exatamente da mesma forma que `align-items`, no entanto, é especial pois é a primeira propriedade utilizada em um _item filho específico_ e não no elemento container.**<br/>
 *Graças a esse detalhe, o **`align-self`** nos permite mudar o comportamento de `align-items` e anulá-lo com comportamentos específicos para itens que queremos que se comportem diferente dos demais.*

 ![Image](https://github.com/user-attachments/assets/118c98d3-ce27-4a9d-89e8-454b92bfc0eb)<br/>
 ![Image](https://github.com/user-attachments/assets/4e837327-58aa-46bd-864b-6910d5260d06)<br/>
 ![Image](https://github.com/user-attachments/assets/6105f6ff-c3f0-435f-b82a-7f47394fb865)

**ALINHAMENTOS**<br/>
 Existe uma propriedade de atalho com a qual os valores de **`justify-content`** e **`align-content`** podem ser definidos de uma só vez:
 - **`place-content`**<br/>
 `place-content: <justify-content> <align-content>`
 ```css
 .container {
    display: flex;
    place-content: space-around center;
 }
 ```

##### PROPRIEDADE DOS ITEMS
 Além das propriedades do container, o `flexbox` também ofere propriedades específicas para os `flexitems`. Todas as propriedades que vimos até agora se aplicam ao **container**, as seguintes propriedaddes, no entanto, aplicam-se aos **items filhos**.
<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th><code>order</code></th>
        <td>0 | number</td>
        <td>Número <strong><em>"peso"</em></strong>, ou seja, de prioridade que indica a ordem de exibição dos itens.</td>
    </tr>
    <tr>
        <th><code>flex-grow</code></th>
        <td>0 | number</td>
        <td>Número que indica o fator de AUMENTO do item em relação ao restante.</td>
    </tr>
    <tr>
        <th><code>flex-shrink</code></th>
        <td>1 | number</td>
        <td>Número que indica o fator de ENCOLHIMENTO do item em relação ao restante.</td>
    </tr>
    <tr>
        <th><code>flex-basis</code></th>
        <td>size | content</td>
        <td>Tamanho BÁSICO dos itens antes da aplicação de alguma variação.</td>
    </tr>
</table>

 1. **`order`**<br/>
 Define a ordem dos itens dentro do container flex, podeno ser definidos valores positivos ou negativos para ordenar os itens. Permite alterar a ordem visual dos itens dentro do container flex, independentemente da ordem no HTML. Por padrão, todos os itens têm `order: 0`.
 ```css
 .container {
     display: flex;
 }
 .item-1 { order: 3; }
 .item-2 { order: 1; }
 .item-3 { order: 2; }
 ```
 ![Image](https://github.com/user-attachments/assets/534a74f1-95ec-4613-8791-96f4e11cddd8)

 2. **`flex-grow`**<br/>
 Define a capacidade de um tiem crescer para preencher o espaço disponível no container, e seu valor padrão é `0`, o que significa que o item não crescerá além do tamanho definido. De modo simples, ele define a **proporção de crescimento de um item em relação aos seus irmãos** quando há *espaço extra* no container.
   - Se definirmos `flex-grow: 1` para *todos os itens*, o espaço extra será distribuído **igualmente**.
   - Se um item tiver um *valor maior*, **ele receberá uma porção maior do espaço disponível**.
   ```css
   .container {
     display: flex;
   }
   .item-1 { flex-grow: 1; }
   .item-2 { flex-grow: 1; }
   .item-3 { flex-grow: 8; }
   ```
 ![Image](https://github.com/user-attachments/assets/d2409a96-288f-4f56-ad8f-8653c70278b0)

 3. **`flex-shrink`**<br/>
 Controla a capacidade do item de *encolher* quando **não há espaço suficiente** no container.
   - O valor padrão é 1, ou seja, *todos os itens podem encolher proporcionalmente* **se o conteiner ficar menor que a sema dos tamanhos inicialmente desejados**.
   - Se definirmos `flex-shrink: 0` o item *não encolherá*, **mesmo que haja falta de espaço**.
   - Valores *maiores* **indicam que o item pode encolher mais agressivamente**.
   ```css
   .container {
        display: flex;
        width: 500px;
    }
    .item {
        width: 200px; /* tamanho base */
    }
    .item 1 { flex-shrink: 1; }
    .item 2 { flex-shrink: 3; }
    .item 3 { flex-shrink: 5; }

   ```
 ![Image](https://github.com/user-attachments/assets/bcb7a4d9-bd8f-4455-9a75-8acd8bd24f6e)

 4. **`flex-basis`**<br/>
 Determina o *tamanho “ideal” ou inicial* do item **antes que qualquer crescimento ou encolhimento ocorra**.
   - Em uma *linha flex* com `flex-direction: row`, funciona de forma similar ao **`width`**.
   - Em uma *coluna* `flex-direction: column`, funciona como **`height`**.
   - O valor padrão é `auto`, **o que significa que o tamanho ideal é determinado pelo conteúdo ou pelo valor definidos para largura e altura**.
   - Podemos aplicar o atributo *`content`*, **que ajusta automaticamente o tamanho do item elemento ao seu conteúdo** – que é seu valor padrão.
   ```css
   .container {
        display: flex;
        width: 500px;
    }
    .item-1 { flex-basis: 150px; }
    .item-2 { flex-basis: 200px; }
    .item-3 { flex-basis: 250px; }

   ```
 ![Image](https://github.com/user-attachments/assets/ecea0072-d3cd-4983-85ee-ad89fcbb1176)

**ALINHAMENTOS**<br/>
 Em vez de definir as 3 propriedades separadamente, é comum usar a propriedade abreviada **`flex`**:<br/>
 `flex: <flex-grow> <flex-shrink> <flex-basis>;`

##### GAPS
 Existem 2 propriedades do `flexbox` que **permitem definir o tamanho de uma *lacuna* entre os itens no recipiente e o container**, sem a necessidade de usar `padding` ou `margin`:

<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th><code>row-gap</code></th>
        <td>normal | size</td>
        <td>Espaçamento entre fileiras, ou "linhas" – somente se houver <code>flex-direction: column</code>.</td>
    </tr>
    <tr>
        <th><code>column-gap</code></th>
        <td>normal | size</td>
        <td>Espaçamento entre colunas – somente se houver <code>flex-direction: row</code>.</td>
    </tr>
</table>

 Como podemos ver, a propriedade só terá efeito dependendo do valor atribuído a `flex-direction`.<br/>
 No entanto, é possível utilizar ambos se tivermos a propriedade de `flex-wrap: wrap`, ou seja, se tivermos um **`flexbox` multicolunas**.

<table border="1px">
    <tr>
        <th>PROPRIEDADE</th>
        <th>VALOR</th>
        <th>SIGNIFICADO</th>
    </tr>
    <tr>
        <th><code>gap</code></th>
        <td>0 | size</td>
        <td>Aplica o tamanho indicado para a folga em AMBOS os eixos.</td>
    </tr>
    <tr>
        <th><code>gap</code></th>
        <td>0 0 | size size</td>
        <td>Aplica os tamanhos indicados para o espaçamento do eixo X e Y.</td>
    </tr>
</table>

`gap: <row> <column>`

 ```css
 .container {
    gap: 4px 8px;

    /* 1 mesmo parâmetro para ambos */
    gap: 12px;
 }
 ```
 ![Image](https://github.com/user-attachments/assets/ac2022bc-5d38-475a-9fd1-b9d4bb2adaf4)

#### GRID
A idéia do grid é exatamente de não precisar mudar a estrutura do HTML e que toda a parte de posicionamento de layout fique apenas no CSS. O grid transforma um elemento em um **grid container** da mesma forma que um elemento se torna flex container, e após definir um grid container é necessário definir sua estrutura. Este é um sistema de layout **bidimensional** que permite criar laytous mais sofisticados com facilidade, oferecendo uma maneira simples de definir *colunas* e *linhas* como uma *tabela*, para posicionar os itens de forma precisa dentro de um container. Usando grid não é necessário mudar em nada a estrutura do HTML, para conseguir o efeito desejado diferente do `flex` em caso de estruturas bidimensionais, mantendo a separação de estrutura de conteúdo e estilização além de também manter a simplicidade e legibilidade no CSS.<br/>
Ou seja, o GRID basicamente divide a tela em várias fatias de diferentes proporções, criando assim um layout desacoplado e de alta responsividade.

##### SINTAXE
 Para usar o **`grid`**, é necessário definir um container *"grade"* usando a propriedae `grid`, e em seguida especificar as linhas e colunas usando as propriedades:
 - **`grid-template-columns`**: para definir o tamanho e o número de colunas.
 - **`grid-template-rows`**: para definir o tamanho e o número de linhas.
 - **`grid-template-areas`**: nomeia cada espaço do grid criado. Ao definir o espaço com um **`.`** ele se adapta conforme necessário. Não é possível deixar espaços vazios, pois o browser não irá compreender a instrução, é obrigatório utilizar algo para indicar um espaço do grid.
 - **`gaps`**: assim como no `flexbox`, define o espaçamento entre as células, ou seja os itens da grade.
 ```css
 .container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: repeat(1fr, 3);

    grid-template-areas: 
    "area1" "area2" "area3"
    "area1" "center" "area3"
    ". . area4";
    gap: 1rem;
 }
 ```

###### MEDIDAS
 No exemplo anterior, `1fr 1fr 1fr` divide o espaço igualmente em 3 partes, porém podemos definir algo como `1fr 2fr 1fr`, que separa o espaço total em 4 partes onde **a primeira coluna ocupará 1/4 do espaço**, **a segunda ocupará 2/4 do espaço sendo o dobro da primeira** e **a terceira coluna ocupará o 1/4 restante**.

 Também são aceitas outras unidades de medida, porém não são recomendadas quando se quer um design responsivo.
| UNIDADE         | EXEMPLO                                      | DESCRIÇÃO                                                           |
|-----------------|----------------------------------------------|---------------------------------------------------------------------|
| `px`            | `grid-template-columns: 100px 200px;`        | Tamanho fixo em pixels.                                             |
| `%`             | `grid-template-columns: 50% 50%;`            | Proporção em relação ao contêiner.                                  |
| `em` / `rem`    | `grid-template-columns: 10em 20em;`          | Relativo ao tamanho da fonte `em` ou raiz `rem`.                    |
| `auto`          | `grid-template-columns: auto auto;`          | O conteúdo define o tamanho automaticamente.                        |
| `minmax()`      | `grid-template-columns: minmax(100px, 1fr);` | Define um mínimo e um máximo para a coluna.                         |
| `repeat()`      | `grid-template-columns: repeat(3, 1fr);`     | Atalho para criar colunas repetitivas.                              |
| `vw` / `vh`     | `grid-template-columns: 10vw 20vw;`          | Relativo à largura `vw` ou altura `vh` da tela.                     |
| `fit-content()` | `grid-template-columns: fit-content(200px);` | Ajusta a coluna ao conteúdo, sem ultrapassar 200px.                 |
| `max-content`   | `grid-template-columns: fit-content(200px);` | Faz a coluna ocupar o tamanho exato do conteúdo.                    |
| `min-content`   | `grid-template-columns: fit-content(200px);` | Faz a coluna ocupar o menor espaço possível sem quebrar o conteúdo. |

###### POSICIONAMENTO DOS ITEMS
 Os itens dentro de um grid podem ser posicionados usando as propriedades:
 - **`grid-column`**: define a posição de início e final de ocupação dos itens na coluna: **`grid-column: start / end;`**.
 - **`grid-row`**: define a posição de início e final de ocupação dos itens na linha: **`grid-row: start / end;`**.
 - **`grid-area`**: define a posição do elemento de ocupação de acordo com as areas criadas: **`grid-area: areaName;`**.

 ```css
 .item1 {
   /*
   grid-column: 1 / 3;  Ocupará da coluna 1 até antes da coluna 3
   grid-row: 1 / 2;     Ocupará a linha 1

   Porém com o grid-area o código acima não é mais necessário */
   grid-area: area1;
 }

 .item2 {
   /*
   grid-column: 3 / 4;  Ocupará a coluna 3
   grid-row: 1 / 2;     Ocupará a linha 1

   Porém com o grid-area o código acima não é mais necessário */
   grid-area: area2;
 }

 .item3 {
   /*
   grid-column: 1 / 4;  Ocupará da coluna 1 até antes da coluna 4
   grid-row: 2 / 3;     Ocupará a linha 2

   Porém com o grid-area o código acima não é mais necessário */
   grid-area: area3;
 }
 ```

 - **`span`**: mescla linhas e colunas. Quando utilizado, o valor posterior é a quantidade de linhas ou colunas a serem mescladas, portanto, não sendo necessário indicar qual é o término. Quando omitido o valor de mesclagem, o navegador utiliza por padrão `span 1`, fazendo com que ocupe apenas 1 linha/coluna.
 ```css
 .item4 {
   grid-column: span 3; /* Mescla 3 colunas */
   grid-row: span 2;    /* Mescla 2 linhas */
 }
 ```

 ### VARIÁVEIS

 ### PRÉ-PROCESSADORES

 ### RESPONSIVE DESIGN
 O volume de usuários que acessam a internet por meio de dispositivos móveis cresceu exponencialmente nos últimos anos. Usuários de smartphones e tablet têm demandas diferentes dos usuários Desktop, redes nem sempre rápidas e acessibilidade em dispositivos limitados e multitoque são as principais diferenças.<br/>
 Então, como atender a esses usuários?<br/>
 Para dar suporte ao máximo de usuários possível, é necessária a tomada de uma decisão: fazer um site exclusivo e diferente para cada plataforma ou adaptar o site para ser compatível com qualquer dispositivo?<br/>
 Vários sites na internet adotam a estratégia de ter um site diferente voltado para dispositivos móveis usando um subdomínio diferente como **`m.`** ou **`mobile.`**, como **`https://m.kabum.com.br`**. Essa abordagem é a que traz maior facilidade na hora de pensar nas capacidades de cada plataforma, permitindo a entrega de uma experiência customizada e otimizada para cada situação, porém existem diversos problemas envolvidos:
 - Como atender adequadamente diversos dispositivos tão diferentes quanto um smartphone com tela pequena e um tablet com tela mediana? E se ainda forem consideradas as SmartTVs, ChromeCast e etc? Desenvolver um site específico para cada tipo de plataforma?
 - Na maioria das vezes os sites mobile são versões limitadas dos sites reais e não apenas ajustes de usabilidade para o dispositivo diferente. Isso frustra o usuário que, cada vez mais usa dispositivos móveis para completar as mesmas tarefas que antes fazia no desktop.
 - Dar manutenção em 1 site já exige um trabalho árduo, para 2 então torna a atividade contraproducente e mais custosa.
 - Existirão conteúdos duplicados entre sites "diferentes", podendo prejudicar o SEO se não for feito com cuidado.
 - Lidar com redirects entre URLs móveis e normais, dependendo do dispositivo. O usuário pode receber um link para uma página vista no site de base desktop, mas se abrir este link no celular, terá que visualizar a versão mobile deste link, sendo redirecionado automaticamente, e a mesma coisa no caso contrário. Uma dificuldade estará no servidor para detectar se o usuário está vindo de um dispositivo móvel ou não, e redirecioná-lo para o lugar certo. Isso costuma envolver código no servidor que detecte o navegador do usuário usando o User-Agent do navegador.<br/>
 Hoje em dia não existe tanto essa crença de que o site precisa ser exatamente a mesma experiência do que no Desktop. Podemos criar experiências exclusivas para cada tipo de dispositivo, mas é importante que o usuário ainda consiga fazer as funções, por exemplo realizar uma compra.<br/>
 Pensando nisso, nasceu o **responsive design**, que é uma abordagem de desenvolvimento web que permite que os sites se ajustem automaticamente a diferentes tamanhos de tela e dispositivos, proporcionando uma experiência de usuário consistente e otimizada, seja em um computador desktop, tablet ou smartphone.<br/>
 O Design Responsivo é uma técnica de estruturação em que o site se adapta ao navegador sem precisar de diversos estilos para cada resolução, é basicamente um código inteligente que se adapta à tela do usuário para funcionar independente da plataforma utilizada.

 #### RESPONSIVE WEB DESIGN
 Pequenas mudanças feitas usando `@media` tentando otimizar a experiência do usuário em diversos dispositivos tornando a UX mais atraente, é o que o mercado chama de **Web Design Responsivo**. O termo surgiu num famoso artigo de Ethan Marcotte e diz o seguinte:<br/>
 São 3 os elementos de um design responsivo:
 - layout fluído usando medidas flexíveis, como porcentagens;
 - media queries para ajustes de design;
 - uso de imagens flexíveis.

 A ideia do responsivo é que a página se adapte a diferentes condições, em especial a diferentes resoluções. E, embora o uso de porcentagens exista há décadas na Web, foi a popularização das media queries que permitiram layouts verdadeiramente adaptativos.

 #### MOBILE FIRST
 É a técnica que visa iniciar o desenvolvimento pela área mais simples e limitada, com mais restrições, ou seja, o mobile. O uso da tela pequena forçar a criação de páginas mais simples, focadas e objetivas. Depois, a adaptação pra Desktop com media queries, é apenas uma questão de readaptar o layout. A abordagem *desktop-first* começa pelo ambiente mais livre e vai tentando cortar coisas quando chega no mobile. Esse tipo de adaptação é, na prática, muito mais trabalhosa e inviável.

 #### VIEWPORT
 Para criar layouts responsivos, é importante primeiro entender como a exibição da página funciona no dispositivo. Um dos agentes que realiza a adaptação da aplicação ao tamanho de tela disponível é o **`viewport`**, este representa *a área visível da página web no navegador*. Usar propriedades de `viewport` ajuda a criar layouts que se ajustam dinamicamente ao tamanho da tela.<br/>
 Usando esta metatag no `head` da página, pode-se definir algumas propriedades de escala, e desta forma orientar a página a como se comportar de acordo com a situação.<br/>
 A partir dela moldamos como o conteúdo deve ser exibido, sempre orientados pelo *design responsivo* para que as páginas sejam exibidas corretamente na maioria dos dispositivos.<br/>
 Imaginemos um site com media queries otimizadas para telas menores. Se tentássemos rodar este exemplo em um iPhone ou Android, ainda estaria sendo exibida a versão Desktop da página. A regra do max-width no media query é completamente ignorada. Na verdade, a questão é que os smartphones modernos têm telas grandes e resoluções altas, justamente para permitir exibir sites complexos feitos para Desktop. A tela de um iPhone SE por exemplo é 1280px por 720px. Celulares Android já chegam a 4K. Ainda assim, a experiência desses celulares é bem diferente dos Desktops. 4K em uma tela de 4 polegadas é bem diferente de 4K em um notebook de 16 polegadas, a resolução muda. Celulares costumam ter uma resolução em dpi bem maior que Desktops.<br/>
 Os smartphones entendem que considerar a tela como 4K não ajudará o usuário a visualizar a página otimizada para telas menores. Há então o conceito de **device-width** que, resumidamente, representa um número em pixels que o fabricante do aparelho considera como mais próximo da sensação que o usuário tem ao visualizar a tela. Nos iPhones, por exemplo, o device-width é considerado como 370px, mesmo com a tela tendo uma resolução bem mais alta. Por padrão, iPhones, Androids e afins costumam considerar o tamanho da tela visível, chamada de viewport, como grande o suficiente para comportar os sites Desktop normais. Por isso o exemplo foi renderizado sem zoom, como se fosse visualizado no Desktop. A Apple criou então uma solução que depois foi copiada pelos outros smartphones, que é configurar o valor que julgarmos mais adequado para o viewport:
 ```html
 <meta name="viewport" content="width=370"/>
 ```
 Isso faz com que a tela seja considerada com largura de 370px, fazendo com que o layout mobile finalmente funcione, e também as media queries. **Melhor ainda, é a possibilidade de configurar o viewport com o valor device-width definido pelo fabricante, dando mais flexibilidade com dispositivos diferentes com tamanhos diferentes**. Isso é possível com o atributo **`content`**, que é onde são inseridas as configurações específicas da viewport.
 ```html
 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
 ```
 - No atributo **`content`** define à qual tamanho de tela a página deve se adaptar
 - A forma de realizar uma adaptação dinâmicamente é usando a propriedade **`device-width`** no **`width`**, assim, se obtém automaticamente o tamanho da tela no dispositivo atual. Ou seja, essa propriedade define a largura da viewport igual à largura física da tela do dispositivo, evitando que o site fique "esticado" ou "encolhido" em diferentes tamanhos de tela.
 - Enquanto que no **`initial-scale`** define-se a escala de adaptação da tela, ou seja, o nível do zoom inicial da página quando ela é carregada, que no caso do exemplo acima é de **`1:1`**, que significa *sem zoom = 100%*, se fosse `2.0` a página teria um zoom de 200% por exemplo.

 #### MEDIA TYPES
 Uma abordagem que costumas ser muito utilizada é a de ter um único site, acessível em todos os dispositivos móveis. Adeptos da ideia da Web única (One Web) consideram que o melhor para o usuário é ter o mesmo site do Desktop normal também acessível no mundo móvel. É o melhor para o desenvolvedor também, que não precisará manter vários sites diferentes. E é o que garante a compatibilidade com a maior gama de aparelhos diferentes.<br/>
 Certamente, a ideia não é fazer o usuário móvel acessar a página exatamente da mesma maneira que o usuário Desktop. Usando truques de CSS bem suportados no mercado, podemos usar a mesma base de layout e marcação porém ajustando o design para cada tipo de dispositivo.<br/>
 Desde a época do CSS2, há uma preocupação com o suporte de regras de layout diferentes para cada situação possível. Isso é feito usando os chamados media types, que podem ser declarados ao se invocar um arquivo CSS:
 ```html
 <link rel="stylesheet" href="site.css" media="screen">
 <link rel="stylesheet" href="print.css" media="print">
 <link rel="stylesheet" href="handheld.css" media="handheld">
 ```
 Outra forma de declarar os media types é separar as regras dentro do próprio arquivo CSS:
 ```css
 @media screen {
   body {
     background-color: blue;
     color: white;
   }
 }

 @media print {
   body {
     background-color: white;
     color: black;
   }
 }
 ```
 O media type `screen` determina a visualização normal, na tela do Desktop. É muito comum também termos um CSS com media type print com regras de impressão, por exemplo, retirar navegação, formatar cores para serem mais adequadas para leitura em papel e etc.<br/>
 Havia também o media type `handheld`, voltado para dispositivos móveis. Com ele, conseguíamos adaptar o site para os pequenos dispositivos como celulares WAP e palmtops.<br/>
 O problema é que esse tipo `handheld` nasceu em uma época em que os celulares eram bem mais simples do que hoje, e, portanto, costumavam ser usados para fazer páginas bem simples. Quando os novos smartphones touchscreen começaram a surgir - em especial, o iPhone -, eles tinham capacidade para abrir páginas completas e tão complexas quanto as do Desktop. Por isso, o iPhone e outros celulares modernos ignoram as regras de `handheld` e se consideram, na verdade, `screen`.<br/>
 Além disso, mesmo que `handheld` funcionasse nos smartphones, como trataríamos os diferentes dispositivos de hoje em dia como tablets, televisões entre outros?<br/>
 A solução veio com o CSS3 e seus **media queries**.

 ##### MEDIA QUERY
 Todos os smartphones e navegadores modernos suportam uma nova forma de adaptar o CSS baseado nas propriedades dos dispositivos, as media queries do CSS3.<br/>
 Em vez de simplesmente falar que determinado CSS é para handheld em geral, agora é possível indicar que determinadas regras do CSS devem ser vinculadas a propriedades do dispositivo como tamanho da tela, orientação (landscape ou portrait) e até resolução em dpi.
 ```html
 <link rel="stylesheet" href="base.css" media="screen">
 <link rel="stylesheet" href="mobile.css" media="(max-width: 480px)">
 ```
 Outra forma de declarar os media types é separar as regras dentro do mesmo arquivo CSS:
 ```css
 @media screen {
   body {
     font-size: 16px;
   }
 }

 @media (max-width: 480px) {
   body {
     font-size: 12px;
   }
 }
 ```
 Podemos ver como o atributo media agora pode receber expressões complexas. No caso, estamos indicando que queremos que as telas com largura máxima de 480px tenham uma fonte de 12px.<br/>
 Então, as **`media queries`** são uma sintaxe especial que nos *permite definir estilos que só serão aplicados se condições específicas forem atendidas*. Podemos compará-las a linhas de código *"opcional"*, que _serão exibidas apenas para alguns usuários ou dispositivos_.<br/>
 Numa época em que o tráfego móvel se multiplica a cada ano, os sites estáticos projetados para serem exibidos em uma resolução específica não eram mais úteis. Foi necessário adaptar os designs às dimensões para que o usuário pudesse receber as informações na tela do seu dispositivo sem ter que aplicar o zoom para conseguir enxergar.<br/>
 Neste ponto, surgiram 2 formas de trabalho. A primeira defendia ter 2 versões do mesmo site, uma para desktop e outra para mobile. Na maioria dos casos, eles não estão conectados entre si, tornando a manutenção dos sites despendiosa e também, nem sempre mostravam o mesmo conteúdo para ambos os usuários.<br/>
 A segunda forma de trabalho é usar o mesmo design para ambas as resoluções. Um projeto que pudesse se adaptar a certas resoluções ou ser flexível em sua totalidade, independentemente do conteúdo e do projeto. Esta forma de trabalho foi chamada de *web design responsivo*.<br/>
 E como o CSS é responsável pelo design da web, surgiu um novo elemento capaz de incorporar esta flexibilidade na folha de estilo: o **`media query`**, que pode incluir partes do código que só serão aplicadas dependendo das condições de resolução da tela.
 ```css
 @media not|only mediatype
 and|not|only (media feature) {
    .code {
        property: value;
    }
 }
 ```

 As `media queries` atuam como um recipiente para as regras e seletores a serem aplicados, de modo que tudo o que elas abrangem fica entre chaves. Sua sitaxe consiste em uma *bandeira* `@media` seguida por um **`mediatype`**.
 - Este **`mediatype`** está encarregado de **selecionar o tipo d formato que será objeto das regras definidas**. Aqui podemos decidir entre *impressão*, *tela* ou *speech*, útil para equipamentos adaptados e acessíveis. São eles:
    - **`all`**
    - **`print`**
    - **`screen`**
    - **`speech`**
    - **depreciados**: **`braile`** - **`protection`** - **`tv`**
 - Com os operadores **`not`** e **`only`** definimos *quais `mediatype`s agrupar ou excluir*.
 - O segundo parâmetro é o **`media feature`**, **onde dizemos ao navegador qual condição o dispositivo de saída especificado acima deve preencher para que a condição seja verdadeira e o código contido em nossa `media query` seja aplicado**. *As `media features` mais comuns de mídia são aquelas referentes às dimensões da tela do dispositivo*, sendo capaz de estabelecer a altura e largura em que serão aplicadas, ou o que é mais interessante, *a partir de qual largura ou altura serão aplicadas*.
    - **`height`**
    - **`width`**
    - **`min-width`**
    - **`max-width`**
    - **`min-height`**
    - **`max-height`**
 - Existem também tipos mais complexos, como os *combinados com a orientação do dispositivo ou mesmo os que definem a relação de pixels da tela, muito útil para definir estilos para telas de retina, por exemplo iPads ou iPhones.
    - **`landscape`**
    - **`portrait`**
    - **`device-pixel-ratio`**

```css
/* estilos para dispositivos com largura máxima de 600px */
@media (max-width: 600px) {
  .container {
    flex-direction: column;
  }
}

/* estilos para dispositivos com largura mínima de 601px */
@media (min-width: 601px) {
  .container {
    flex-direction: row;
  }
}
```

 A aplicação de uma `media query` por parte do navegador acontece de forma automática, ele simplesmente **aplicará o código que está incluído em uma `media query` sobregravando o herdado logo que identificar que as condições para essa operação forem satisfeitas**. *É como se estivéssemos colocando **camada sobre camada** com alguma transparência, pois o **código "original" NÃO é removido**.*<br/>
 Digamos que queremos um estilo específico seja exibido apenas em telas com uma resolução inferior a `400px`. Neste exemplo definimos um pequeno tamanho de texto para todos os dispositivos com uma resolução de **até** 400px de largura. *Para todos os outros dispositivos, este comando NÃO terá efeito.*
 ```css
 @media screen and (max-width: 400px) {
    h1 {
        font-size: small;
    }
 }
 ```

 Com essas técnicas é possível criar layouts que se adaptam a diferentes tamanhos de tela, proporcionando uma experiência de usuário consistente em *desktops*, *tables* e *smartphones*.

#### FALLBACK
Existem muitos casos de incompatibilidade de propriedades CSS com os browsers disponíveis no mercado. Nem todos os usuários atualizam seus navegadores, seja por não saber como fazê-lo ou por alguma feature específica que utilizam daquela versão, compatibilidade com a versão do SO e etc. Por conta disso, algumas propriedades CSS usadas não vão funcionar em todos os browsers. A construção do site é guiada sempre pelas melhores e mais atuais práticas, técnicas e tecnologia pensando na maioria dos usuários, que costumam usar versões mais atualizadas de browsers, mas nunca esquecendo das pequenas porcentagens que usam navegadores mais antigos. Para não deixar de usar novas propriedades e tags por conta dessa pequena parcela, usa-se o **fallback css**.<br/>
O CSS aplica o último parâmetro declarado no bloco, caso este parâmetro não seja suportado pelo navegador ele tem 2 opções, renderizar o parâmetro anterior caso compatível ou ignorar caso não encontre nenhuma compatiblidade. Vejamos o exemplo:
```css
.class {
    background-color: #000;
}
```
Nesse exemplo, o elemento receberá uma cor de fundo preta conforme declarado. Agora vejamos outro exemplo:
```css
.class {
    background-color: #000;
    background-color: #333;
}
```
Agora o navegador vai ler primeiro a cor preta e depois vai substituir pela cor cinza porque foi utilizada a mesma propriedade no mesmo elemento, ou seja, **quem for declarado por último ganha a preferência**. Este é o conceito de fallback. Agora vamos ver mais um exemplo.
```css
.class {
    background-color: #000;
    background-color: multicolor(10);
}
```
A função `multicolor()` não é um CSS válido portanto o navegador vai ler a cor preta primeiro e depois vai tentar ler a função, mas como essa função não existe o navegador ignora a sobrescrita e mantém a cor de fundo preta.

Essa é a melhor maneira de manter a compatibilidade com browsers mais antigos. Seguindo o conceito de *Progressive Enhancement*, começa-se a utilizando propriedades baseadas em versões anteriores e então vai se acrescendo propriedades mais atuais, assim naturalmente tornando o site mais responsívo e compatível com os diversos navegadores.

### LQIP
Afim de tornar a navegação eficiente e agradável, uma forma de se oferecer ao usuário uma experiência completa quando este interage com o produto e de forma intuitiva conseguir navegar pela aplicação é utilizar técnicas de fallback para criar a sensação de uma interface fluida e orgânica, e uma dessas técnicas é a de dar ao usuário a *sensação de carregamento rápido*, assim melhorando a sua experiência.<br/>
O **L**ow **Q**uality **I**mage **P**laceholder, ou também *efeito blur-up*, é uma técnica muito usada para melhorar a percepção de performance do carregamento de imagens, se aproveitando do fallback para exibir uma versão pequena e borrada da imagem enquanto a versão em alta resolução ainda está carregando, evitando assim *layout shifts*.<br/>
Existem diferentes maneiras de se aplicar o *blur-up*, mas as 2 principais são:

- **Background**: usa-se 2 imagens, a pequena e borrada é usada como background enquanto a imagem de alta resolução será exibida sobre o background após carregada. Exemplo:
```html
<style>
  figure {
    width: 3rem;
    position: relative;
  }

  img {
    width: 100%;
    height: auto;
    display: block;
    position: absolute;
    transition: opacity 0.5s ease;
  }

  .image-low {
    z-index: 1;
    filter: blur(5px);
  }

  .image-high {
    z-index: 2;
    opacity: 0;
  }

  .image-high.loaded {
    opacity: 1;
  }
</style>

<figure>
  <!-- imagem de baixa qualidade (LQIP) -->
  <img src="imagem-baixa.jpg" alt="Carregando..." class="image-low"/>

  <!-- imagem em alta resolução -->
  <img src="imagem-alta.jpg" alt="Imagem em alta resolução." class="image-high" onload="this.classList.add('loaded')"/>
</figure>
```

- **Placeholder**: converte-se a versão LQIP para **base64** e a embute no HTML como `src`, tendo assim um placeholder com a imagem de baixa qualidade até que a imagem final seja renderizada. Funciona melhor quando combinada com uma biblioteca de *lazy loading* como **[lazysizes](https://github.com/aFarkas/lazysizes)** por exemplo.
```html
<img
  src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD..."
  data-src="imagem-final.jpg"
  class="lazyload"
  alt="Descrição da imagem."
/>
```

Além das formas *"nativas"* – usadas no HTML, CSS e JS puros – frameworks de desenvolvimento web e outras ferramentas também fornecem maneiras para aplicar esta técnica:
- **Next.js** com `<Image placeholder="blur"/>` gera o blur automaticamente.
- **Gatsby** com `gatsby-image` ou `gatsby-plugin-image`.
- **Cloudinary**, **Imgix** ou **ImageKit** geram versões LQIP dinamicamente.
- **Squoosh** ou **TinyPNG** para gerar manualmente a versão LQIP.

#### PADRÕES
O conceito de desacoplar estilos usando classes é extremamente benéfico para a facilidade de manutenção do código, mas para cada elemento estilizado é necessário pensar em um nome diferente, e isso pode ficar complicado rapidamente sem um padrão para seguir. Existem vários padrões de CSS, veremos alguns deles:

##### RESET
Quando nenhum estilo é especificado para os elementos do documento, o navegador utiliza uma série de *estilos padrão*, que são diferentes em cada um dos navegadores. Em um momento mais avançado de um projeto é comum enfrentar problemas com coisas que não haviam sido previstas, por exemplo o espaçamento entre caracteres utilizando um determinado navegador pode fazer com que um texto que deveria ser exibido em 4 linhas, passe a ser exibido em 5, quebrando todo o layout.<br/>
Para evitar este tipo de interferência, alguns desenvolvedores e empresas criaram alguns estilos que são chamados de **CSS RESET**. A intenção é setar um valor básico para todas as características do CSS, sobrescrevendo totalmente os estilos padrão do navegador. Dessa forma a estilização das páginas pode ser feita a partir de um ponto que seja o mesmo para todos os casos, o que permite um resultado mais sólido em vários navegadores.<br/>
Existem algumas opções para resetar os valores do CSS:
- **[HTML5 Boilerplate](https://html5boilerplate.com/)**<br/>
O HTML5 Boilerplate é um projeto que pretende fornecer um excelente ponto de partida para quem pretende desenvolver um novo projeto com HTML5. Uma série de técnicas para aumentar a compatibilidade da nova tecnologia com navegadores um pouco mais antigos estão presentes e o código é totalmente gratuito. Em seu arquivo "style.css", estão reunidas diversas técnicas de CSS Reset. Apesar de consistentes, algumas dessas técnicas são um pouco complexas, mas é um ponto de partida a ser considerado.
- **YUI3 CSS Reset**<br/>
Criado pelos desenvolvedores front-end do Yahoo!, esse CSS Reset é composto de 3 arquivos distintos. O primeiro deles, chamado de Reset, simplesmente muda todos os valores possíveis para um valor padrão, onde até mesmo as tags `h1` e `small` passam a ser exibidas com o mesmo tamanho. O segundo arquivo é chamado de Base, onde algumas margens e dimensões dos elementos são padronizadas. O terceiro é chamado de Font, onde o tamanho dos tipos é definido para que tenhamos um visual consistente inclusive em diversos dispositivos móveis.
- **[Eric Meyer CSS Reset](http://meyerweb.com/eric/tools/css/reset/)**<br/>
Há também o famoso CSS Reset de Eric Meyer, que é apenas um arquivo com tamanho bem reduzido.

Vale lembrar que o uso de cada reset varia conforme a necessidade, alguns CSS Resets são mais agressivos do que outros, e também é importante saber que eles podem ser modificados para suas próprias necessidades.

##### MODULARIZANDO COMPONENTES COM CSSs ISOLADOS
Durante o desenvolvimento do projeto, principalmente na parte de planejamento, definimos diversas seções que vão englobar os diversos conteúdos de nossa página que _podem_ ou _não_ se repetir em outras páginas de nosso site. Podemos lidar com a situação de diversas maneiras:
- **CSS Geral**<br/>
A abordagem de criar um CSS geral com um CSS específico da página é bem conhecida e muito utilizada no mercado. A idéia é criar um CSS que vai conter estilos que podem se repetir em diversas páginas, como por exemplo, tipografia, cores, tamanhos e até alguns componentes, e depois criar um CSS que vai conter estilos específicos daquela página. Porém existem vantagens e desvantagens dessa abordagem:
  - **VANTAGENS**<br/>
    - Só é necessário a importação de um arquivo CSS para que a página já tenha um estilo padrão.
    - Como todas as classes de estilos estão em um lugar só, o documento HTML pode ser escrito já incluindo os nomes de classes usadas, quase como um framework.
  - **DESVANTAGENS**<br/>
    - Todas as páginas terão de carregar um arquivo de estilos inteiro, independete se vão usar todas as classes ou não, o que pode impactar performance.
    - Dependendo do tamanho do arquivo geral pode ser muito complexo encontrar seletores desejados.
    - Se por algum motivo quisermos usar algo que era para ser exclusivo de uma página em outra página, teremos de fazer a "portabilidade" para o arquivo geral o que pode bagunçar o arquivo geral.
    - A manutenção pode ser complexa dependendo do tamanho do arquivo.
- **CSS Modularizado**<br/>
Essa abordagem também é bastante utilizada no mercado, porém é mais utilizada em projetos com o uso de frameworks como React ou Angular e pré-processadores de CSS como o SASS. Nessa abordagem cada seção ou componente da página tem um CSS exclusivo.
  - **VANTAGENS**<br/>
    - Como cada componente tem seu próprio CSS, só é necessário importar os componentes que precisamos usar em cada página, evitando importar estilos desnecessários.
    - A organização e manutenção é menos complexa, pois é mais claro saber exatamente em qual arquivo trabalhar.
  - **DESVANTAGENS**<br/>
    - Precisamos importar um arquivo CSS diferente para cada componente que queremos usar que pode gerar linhas de imports gigantescas.

##### BEMCSS
É um padrão bastante focado em estrutura e facilita bastante no planejamento dos nomes das classes. **BEM** usa um conceito de **`bloco__elemento--modificador`** para nomear classes, sendo que `bloco` é o elemento HTML que representa uma divisão de conteúdo cuja sua existência já tenha um sentido por si só, enquanto `elemento` representa uma parte semântica do `bloco` e `modificador` é uma sinalização de *comportamento* ou *estilização*.<br/>
As divisões entre `bloco__elemento--modificador` são chamados de `double snake__case` e `double kebab--case`. Quando queremos uma divisão como o *espaço em branco* usamos **ou kebab-case ou o camelCase**. **Kebab-case é o mais comum para HTML e CSS** e *camelCase é mais comum em JavaScript*.<br/>
Vamos ver como que BEM funciona com o exemplo abaixo:

```html
<!-- section representa um painel (por exemplo) de produtos. Mas não de qualquer produto, mas sim de produtos mais vendidos -->
<section class="produtos produtos--mais-vendidos"> 
    <!-- O h2 representa o título desse painel -->
    <h2 class="produtos__titulo">Produtos mais vendidos</h2>
    <ul class="produtos__lista">
        <!-- li representa o produto em sí -->
        <li class="produtos__produto">
            <figure>
                <img src="img/produto1.png" alt="Foto do Produto 1">
                <figcaption>Foto do produto 1</figcaption>
            </figure>
        </li>
        <!-- li representa o produto em sí, mas nesse caso também temos um produto destaque -->
        <li class="produtos__produto produtos__produto--destaque">
            <figure>
                <img src="img/produto-destaque.png" alt="Foto do Produto em Destaque">
                <figcaption>Foto do produto em destaque</figcaption>
            </figure>
        </li>
        <li class="produtos__produto">
            <figure>
                <img src="img/produto3.png" alt="Foto do Produto 3">
                <figcaption>Foto do produto 3</figcaption>
            </figure>
        </li>
        <li class="produtos__produto">
            <figure>
                <img src="img/produto4.png" alt="Foto do Produto 4">
                <figcaption>Foto do produto 4</figcaption>
            </figure>
        </li>
    </ul>
</section>
```
Da maneira estruturada acima fica bem fácil saber o que está sendo estilizando no CSS. É notável a diferença:
```css
section h2 { /* 
    É o h2 da section que tem os produtos?
    E se precisar mudar a estrutura para um h3?
    */
    font-size: 40px;
    font-weight: 800;
}

.produtos__titulo {
    /*
    Agora aqui sabemos que o estilo é aplicado ao título do painel de produtos.
    Mesmo se mudar para um h3.
    */
    font-size: 40px;
    font-weight: 800;
}
```

## UX/UI
A UI é o meio visual interativo com o qual o usuário entre em contato diretamente em um sistema, aplicação ou site. Ela envolve todos os elementos visuais e funcionais, e por isso é a parte que trata do design da tela, definindo como tudo se apresenta e se comporta ao usuário.<br/>
Já a UX é a _sensação geral_, é a experiência emocial que o usuário experimenta ao interagir com um sistema, e envolve a facilidade de uso, acessibilidade, velocidade, eficiência e previsibilidade que busca atender à satisfação geral do usuário durante seu uso da aplicação, sendo ela a parte que trata como os elementos funcionam e como isso faz o usuário se sintir durante e após o uso.<br/>
Basicamente, a UI é um componente da UX, pois incluencia diretamente a experiência, uma UI bem construída gera uma UX positiva enquanto que uma UI ruim mesmo com bom conteúdo pode causar uma UX negativa. A UX é o resultado da soma de todos os elementos, incluindo UI, desempenho, conteúdo e usabilidade, por isso que cada parte da aplicação como um todo deve ser pensada para produzir a melhor experiência possível, assim atraindo cada vez mais usuários para o negócio. 

### PRELOADER
Uma forma de dar a sensação de que tudo está indo conforme esperado e aumentar a sensação de controle do usuário é a utilização de *indicadores visuais de progresso que exibem quanto do carregamento já foi concluído*. Preloaders são elementos visuais como animações ou ícones que aparecem enquanto um conteúdo está sendo carregado, indicando seu progresso de evolução, que atenuam a frustração do usuário ao criar uma sensação de previsibilidade.<br/>
Esles são feedbacks visuais imediatos que indicam ao usuário que algo está acontecendo e que o sistema não travou, evitando que ele saia da página por achar que o site *morreu*. Além de que ao ver o progresso ou uma animação, o usuário relaxa e espera com mais paciência, este preenchimento visual reduz a ansiedade, distrai e engaja, criando uma sensação de continuidade.<br/>
Preloaders passam a impressão de uma aplicação organizada, funcional e profissional, e a transparência no carregamento aumenta a confiança do usuário no sistema, e seu uso aliado com outras técnicas como *skeleton screens* – mostram onde o conteúdo será exibido, antecipando a estrutura da página – e animações fluidas enganam positivamente o cérebro, mesmo que o tempo real não mude, o tempo *percebido* parece menor, ou seja, eles não aceleram o carregamento, mas melhoram radicalmente a percepção sobre ele.<br/>
Usando somente HTML, CSS e JS, é possível criar vários tipos diferentes de preloaders, além de preloaders prontos que vários frameworks oferecem:
```html
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <style>
      * {
          margin: 0;
          padding: 0;
          border: none;
          font-family: monospace, sans-serif;
          box-sizing: border-box;
      }

      :root {
        --light-gray: #f3f3f3;
        --low-dark: #1a1a1a;
        --dark-green: #25d366;
      }

      #preloader {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: var(--low-dark);
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        z-index: 9999;
      }

      .loader {
        border: .5px solid var(--light-gray);
        border-top: .5px solid var(--dark-green);
        border-radius: 50%;
        width: 3.75rem;
        height: 3.75rem;
        animation: spin 1s linear infinite;
        margin-bottom: .625rem;
      }

      @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
      }
    </style>

    <script>
      window.addEventListener("load", function() {
        const preloader = document.getElementById("preloader");
        const content = document.getElementById("content");

        preloader.style.display = "none";
        content.style.display = "block";
      });
    </script>
  </head>

  <body>

    <div id="preloader">
      <div class="loader"></div>
      <p>Carregando...</p>
    </div>

    <div id="content" style="display: none;">
      <h1>Website</h1>
      <p>Conteúdo do site.</p>
    </div>

  </body>
</html>
```

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.1-fundamentos_da_web/protocolos_http_https.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_css_bootstrap_tailwind.md">next</a>
