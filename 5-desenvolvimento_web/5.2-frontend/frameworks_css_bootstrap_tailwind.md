# FRAMEWORKS
Uma tendência em alta no mundo front-end é o uso de *frameworks* CSS com estilos base. Ao invés de começar todo projeto do zero, criando todo estilo *"na mão"*, existem frameworks que já trazem toda uma base construída de onde partiremos nossa aplicação.<br/>
Um framework é um ambiente de desenvolvimento composto por uma série de módulos padronizados, contendo uma vasta quantidade de bibliotecas e funcionalidades pré-construídas que facilitam o trabalho dos desenvolvedores.<br/>
Existem vários frameworks, como por exemplo: **`Symfony 4`**, **`Laravel`** ou **`CakePHP`**, cada um destinado a um propósito e linguagem. No entanto, um dos mais populares é o **Bootstrap**. Criado pelo time de desenvolvimento do Twitter a partir de códigos que eles já usavam internamente, foi liberado como opensource e ganhou muitos adeptos. O projeto cresceu bastante em maturidade e importância no mercado a ponto de se desvincular do Twitter e ser apenas o [Bootstrap](https://getbootstrap.com/).

## BOOTSTRAP
 O Bootstrap é um dos mais amplamentes utilizados e difundidos frameworks para o desenvolvimento web. É um framework CSS usado para desenvolvimento de sites e aplicações *mobile-first* que se adaptam perfeitamente a todos os tipos de dispositivos. Além de oferecer uma ampla gama de recursos para configurar facilmente estilos de páginas, combinando CSS e JS, ele dispõe de um kit de ferramentas de código aberto muito popular, com uma grande variedade de funcionalidades entre outras ferramentas que permitem trabalhar com a interatividade do site e melhorar a **UX**.<br/>
 Bootstrap é um framework gratuito para o desenvolvimento web, criado inicialmente em 2011 pelos engenheiros do Twitter. Alguns componentes do Bootstrap possuem interatividade com o usuário através de JavaScript, então além de importar o arquivo CSS, é necessário importar também o arquivo de JavaScript. Nas versões antigas do Bootstrap, para o JavaScript funcionar ele precisava de um outro framework chamado **[JQuery](https://jquery.com/)**. A importação desses JavaScripts é feita logo antes do fechamento da tag `body` e o import do *JQuery* era feito antes do arquivo do Bootstrap:
 ```html
 <html>
 <body>
   <>...</>
   <script src="js/jquery.js"></script>
   <script src="js/bootstrap.js"></script>
 </body>
 </html>
 ```
 **Porém a versão atual do Bootstrap usa JavaScript puro, ou como dizemos em programação: *vanilla JS*, e não o *JQuery* como nas versões antigas.<br/>**
 Este framework inclui modelos HTML e CSS com fontes, formas, botões, caixas, tabelas, barras de navegação, carroséis de imagens e muitos outros elementos.<br/>
 Embora seu foco seja mobile-first, permite criar projetos que tenham boa aparência em múltiplos dispositivos – **responsive design** – orientado para programadores e não para designers gráficos. Traz uma série de recursos:
 - Reset CSS
 - Estilo visual base pra maioria das tags
 - Ícones variados
 - Grids prontos pra uso
 - Componentes CSS
 - Plugins JavaScript
 - Responsivo e mobile-first

 É possível também fazer a adaptação que desejarmos do CSS, basta sobrescrever as classes que serão utilizadas em um arquivo CSS separado e realizar o `@import()` logo após do CSS Bootstrap.

### ESTILOS
 Para usar o Bootstrap, precisamos:
 1. **definir o _viewport_**
 2. **incluir um _link_ apontado para o Bootstrap CSS**
 3. **incluir um _script_ apontado para o código JavaScript do Bootstrap**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- definindo o VIEWPORT -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" rel="stylesheet" crossorigin="anonymous"> <!-- definindo o LINK CSS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> <!-- definindo o SCRIPT JS -->
        <title>Document</title>
    </head>
    <body>
        <div class="container">
            <h1>Hello world!</h1>
        </div>
    </body>
</html>
```

 Um requisito importante para a web é que as páginas possam ser renderizadas em telas de qualquer tamanho. Com o advento dos smartphones, isso se tornou ainda mais necessário e complicado. Várias técnicas tem surgido e sido utilizadas ao longo dos anos para alcançar isto de forma cada vez mais eficiênte e melhor:
 - **Origem**: `viewport`, barras de rolagem horizontais e verticais e recomposição de elementos no `viewport`.
 - **Smartphones**: `viewport virtual`.
 - **Atualmente**: design resposivo baseado em grid.


### RESPONSIVE DESIGN
 Um site moderno com um mínimo de qualidade é entendido como sendo responsivo, ou seja, a página se adaptará ao tamanho da tela, seja desktop, tablet, smartphone ou qualquer outra, **sem utilizar a barra de rolagem horizontal**, o que é muito desconfortável. *A barra de rolagem vertical ainda é utilizada.*<br/>
 O projeto responsivo como conhecemos hoje é baseado no uso de **`grid`**, tornando o `viewport virtual` não mais necessário nestas páginas, visto que a *página foi projetada para se adaptar ao `viewport` comum – a tela pequena.<br/>
 Os mesmos 12 elementos são apresentados de formas diferentes em:

<table border="1px">
    <tr>
        <th>COMPUTADOR</th>
        <td>XXXXXXXXXXXX</td>
    </tr>
    <tr>
        <th>TABLET</th>
        <td>XXXXXX<br/>XXXXXX</td>
    </tr>
    <tr>
        <th>SMARTPHONE</th>
        <td>XXXX<br/>XXXX<br/>XXXX</td>
    </tr>
</table>

### MOBILE FIRST
 Ter alguns estilos para o mobile como base e ir crescendo gradualmente de acordo com a resolução graças ao `mediatype min-width`, adicionando `media queries` é consideravelmente a melhor prática para o desenvolvimento de design.<br/>
 Com isso, conseguimos criar uma versão mais leve para usuários mobile, onde o navegador só precisa aplicar as primeiras linhas do código de estilo, enquanto a carga de leitura de todo o conjunto sobrescrevendo as linhas marcadas nas `media queries` é deixada para dispositivos de maior resolução, que são entendidos como tendo uma conexão de internet mais rápida e velocidade de processamento mais eficiênte de tais condicionantes.<br/>
 Além disso, é menos provável que tenhamos problemas com elementos de nossa página que estejam fora de ordem. Se projetarmos primeiro para dispositivos móveis, quando mudarmos o projeto para dispositivos de mesa, estes problemas não ocorrem, normalmente é preciso apenas anular os elementos.<br/>
 Com uma propriedade `meta tag` podemos especificar a escala inicial do `viewport`. Como as páginas Bootstrap são responsive, especificamos que o `viewport virtual` deve corresponder à largura da tela, ou seja, o `viewport` comum. **Em outras palavras, _sem_ `viewport virtual`.**
```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

 Também é possível **desativar** o zoom em dispositivos móveis com `user-scalable=no`, assim os usuários só poderão fazer *scroll* e terão um visual e uma sensação nativa.
```html
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
```

### VIEWPORT
 Para projetar sites mobile é importante ser claro sobre o que é **`viewport`** e como ele se comporta. O `viewport` *é a área visível de uma página web*. Em desktops ele coincide com a janela do navegador.<br/>
 Vamos imaginar uma página web grande e complexa, como a primeira página de um jornal. A página não caberia na tela do navegador, o usuário usará as barras de scroll para mover o `viewport` sobre o documento. O redimensionamento da janela mudará o tamanho do `viewport`. O redimensionamento do `viewport` reposiciona o texto e todos os elementos: as linhas são *truncadas*, as imagens reposicionadas, e etc.<br/>
 O `viewport` é um *"retângulo"* **que compõe um fragmento – ou talvez completo – da página web para apresentá-lo ao usuário**.

### VIEWPORT VIRTUAL
 Com o advento dos navegadores nos celulares, as mudanças no tamanho da tela são muito mais drásticas, fazendo com que, mesmo que ainda funcionem as técnicas tradicionais, elas proporcionam uma experiência de usuário insatisfatória. A área visível de um celular é muito pequena, compondo uma página web tradicional nesse `viewport` pouco atraente. Além disso, em um navegador mobile não existem barras de rolagem, elas ocupariam um espaço valioso. Nem janelas, pois seriam muito pequenas.<br/>
 Para resolver este problema, surgiu o conceito de `viewport virtual`, maior do que o `viewport` comum – o monitor. Inicialmente introduzido pela Apple em seu navegador Safari no iOS, vindo mais tarde a se tornar padrão. A largura do `viewport virtual` é razoavelmente grande, por exemplo, no navegador Safari para iPhone é de 980px. O navegador compõe a página nesta janela de `viewport virtual`, sendo as barras de rolagem não mais necessárias. O usuário arrasta o `viewport` – a tela menor – sobre o `viewport virtual` para exibir uma área do documento ou outra. Ele também pode ser autorizado a aumentar e diminuir o zoom. O redimensionamento dessa `viewport` já não faz com que a página seja recomposta.

### CONTAINERS
 Para ser responsivo, todos os elementos do Bootstrap devem estar dentro de um elemento de container. **Os containers NÃO podem ser aninhados.** *Devemos nos certificar de fechar cada container corretamente.* Se alguma fila for deixada de fora, suas colunas ficarão desalinhadas, e este erro não é detectado pelo W3C validator.<br/>
 Para criar um recipiente de tamanho fixo, usamos a classe **`container`**:
```html
<div class="container">
    <>
        ...
    </>
</div>
```

 Se quisermos um container com a largura total do `viewport`, devemos usar a expressão `container-fluid`:
```html
<div class="container-fluid">
    <>
        ...
    </>
</div>
```

### GRID
 A tela é dividida em **filas** e **colunas**, e, a interseção entre uma linha e uma coluna é chamada de **célula**. O conteúdo é colocado dentro de uma célula, e será sempre exibido dentro dessa céula. Em cada fila há até 12 células, que o projetista decide como distribuir. **Quando a tela tem resolução suficiente**, *as células da mesma linha são exibidas uma do lado da outra* – layout normal.<br/>
 **Quando a resolução diminui, as células que estavam originalmente na mesma fila são exibidas umas em cima das outras** – layout empilhado.<br/>
 **Cada linha é um elemento `div` com classe `row`.** As células dentro da fila podem ser de um dos tipos abaixo, esses 6 tipos de células dependem da largura do `viewport`:
 - **`col-N`**: **Telas muito pequenas, menores que 576px.**
 - **`col-sm-N`**: **Telas pequenas, de pelo menos 576px.**
 - **`col-md-N`**: **Telas médias, de pelo menos 768px.**
 - **`col-lg-N`**: **Telas grandes, de pelo menos 992px.**
 - **`col-xl-N`**: **Telas muito grandes, de pelo menos 1200px.**
 - **`col-xxl-N`**: **Telas extra grandes, de pelo menos 1400px.**

 Onde **N** *é um número entre 1 e 12*, indicando a **largura de cada coluna**. O total das colunas em cada linha pode somar até um máximo de 12. **A borda entre cada um desses tamanhos é designada como `breakpoint`**.<br/>
 Em outras palavras, cada tipo de coluna é exibido em sua **disposição normal**, ou seja, *horizontalmente*, se a exibição for do seu tipo. **Caso contrário**, as células serão **empilhadas verticalmente**.<br/>
 Veremos que, ao reduzir a largura, as grades que estavam originalmente em um layout normal – horizontal – se empulharão – verticalmente.

#### ALINHAMENTO
 As células – que formarão colunas quando houver várias à mesma distância do eixo vertical – podem ser alinhadas horizontalmente de várias maneiras, acrescentando à linha – a classe `row div` – as *classes*:
 - **`justify-content-start`**
 - **`justify-content-end`**
 - **`justify-content-center`**
 - **`justify-content-around`**
 - **`justify-content-between`**
 - **`justify-content-evenly`**

### CORES TEXTUAIS
 A gama de cores dos textos será decidida no CSS. Aqui colocaremos *classes* com valor semântico. Com algumas exceções, como `light` ou `white`, já que ao escolher a cor de fundo, também pode ser necessário indicar a cor do texto.
```html
<h2>CORES DE TEXTO</h2>
<p class="text-muted">
    apagado
</p>
<p class="text-primary">
    principal
</p>
<p class="text-success">
    sucesso
</p>
<p class="text-info">
    info
</p>
<p class="text-warning">
    aviso
</p>
<p class="text-danger">
    perigo
</p>
<p class="text-secondary">
    secundário
</p>
<p class="text-body">
    comum
</p>
<p class="text-light">
    leve
</p>
<p class="text-white">
    branco
</p>
<h2>CORES DE FUNDO</h2>
<p class="bg-primary text-white">
    branco
</p>
<p class="bg-success text-white">
    branco
</p>
<p class="bg-info text-white">
    branco
</p>
<p class="bg-warning text-white">
    branco
</p>
<p class="bg-danger text-white">
    branco
</p>
<p class="bg-secondary text-white">
    branco
</p>
<p class="bg-dark text-white">
    branco
</p>
<p class="bg-light text-dark">
    preto
</p>

```

 ![Image](https://github.com/user-attachments/assets/9e77f9c7-e65e-4145-9813-8b20a2e1a972)

### COMPONENTES
 O Bootstrap vem com um conjunto de estilos, geralmente em formato de *classe* CSS e componentes JS:
 - **`btn`**
 - **`table`**
 - **`card`**
 - **`carousel`**
 - **entre outros `responsive utilities`**

#### BOTÕES
 A classe `btn` pode ser adicionada aos elementos:
 - **`button`**
 - **`input`**
 - **`a`**

 Eles tem um efeito `hover` que destaca um botão quando o mouse está pairando sobre ele.

```html
<button type="button" class="btn">basic</button>
<button type="button" class="btn btn-primary">primary</button>
<button type="button" class="btn btn-secondary">secondary</button>
<button type="button" class="btn btn-success">success</button>
<button type="button" class="btn btn-info">info</button>
<button type="button" class="btn btn-warning">warning</button>
<button type="button" class="btn btn-danger">danger</button>
<button type="button" class="btn btn-dark">dark</button>
<button type="button" class="btn btn-light">light</button>
<button type="button" class="btn btn-link">link</button>
<button type="button" class="btn btn-outline-primary">outline-primary</button>
<button type="button" class="btn btn-outline-secondary">outline-secondary</button>
<button type="button" class="btn btn-outline-success">success</button>
<button type="button" class="btn btn-outline-info">info</button>
<button type="button" class="btn btn-outline-warning">warning</button>
<button type="button" class="btn btn-outline-danger">danger</button>
<button type="button" class="btn btn-outline-dark">dark</button>
<button type="button" class="btn btn-outline-light text-dark">outline-light</button>
<button type="button" class="btn btn-primary" disabled>com o atributo disabled o botão é desativado</button>
```

 ![Image](https://github.com/user-attachments/assets/2b54ffca-d36e-4a91-8571-31aea9fb5a46)

### IMAGENS
 Para modificar a aparência de uma imagem, podemos acrescentar *classes* ao elemento `img`:
 - **ESBOÇO**
    - **`rounded`**: cantos arredondados
    - **`rounded-circle`**: circular
    - **`img-thumbnail`**: miniatura – flange branca
 - **ALINHAMENTO**
    - **`float-start`**: esquerda
    - **`float-end`**: direita
    - **`mx-auto`**: d-block: centrada
    - **`fluid`**: todo espaço disponível

### TABELAS
 Para formatar um elemento `table`, podemos usar as seguintes *classes*:
 - **`table`**
 - **`table-bordered`**
 - **`table-hover`**
 - **`table-dark`**
 - **`table-striped`**

```html
<table class="table table-striped">
    <thead>
        <tr>
            <th>Marca</th>
            <th>Sabor</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Hoog</td>
            <td>IPA</td>
        </tr>
        <tr>
            <td>Krug</td>
            <td>Krystal</td>
        </tr>
    </tbody>
</table>
```

### CARDS
 Um cartão é uma *"caixa arredondada"* dividida em **cabeçalho**, **corpo** e **rodapé**. É útil para agrupar outros elementos como *botões*, *formulários*, *imagens*, e etc. Sucessor dos `panels` antigos nas versões anteriores.<br/>
 Eles podem receber uma cor de fundo contextual, acrescentando as classes que já conhecemos:
 - **`bg-primary`**
 - **`bg-success`**
 - **`bg-info`**
 - **`bg-warning`**
 - **`bg-danger`**
 - **`bg-secondary`**
 - **`bg-dark`**
 - **`bg-light`**

```html
<div class="card mx-auto" style="width: 400px">
    <div class="card-header">
        <h4 class="card-title">Tech N' Logic</h4>
    </div>
    <div class="card-body">
        <img src="https://avatars.githubusercontent.com/u/182168576" alt="Tech n' Logic logo" class="mx-auto d-block">
    </div>
    <div class="card-footer">
        <a href="#" class="btn btn-primary fluid">more info</a>
    </div>
</div>
```

 ![Image](https://github.com/user-attachments/assets/c2a47b70-ecf7-498a-baf0-178df105ee4d)

### FORMULÁRIOS
 Também existem classes para melhorar a aparência e usabilidade dos formulários:
 - O uso de **`label`** é **necessário**, *não é válido para escrever texto HTML para identificar os elementos do formulário*.
 - Ao `label` adicionamos **`class="form-label"`**.
 - **Os diferentes elementos de uma forma aparecem um abaixo do outro.** Se os quisermos **um ao lado do outro**, devemos usar as *linhas* e *colunas* do **`grid`**.
 - **Para os `inputs` do tipo entrada de texto, adicionamos `class="form-control"`.**
 - **Colocamos os `checkbox` em uma `div` a qual acrescentaremos `class="form-check"`, e, juntamente com `radiobutton`, adicionamos a `class=form-check-input`.**

### CARROSSEL
 O componente **`carousel`** exibe fotografias que rolam horizontalmente, como um slideshow. **Podemos adicionar legendas ou texto a eles.** *O elemento de nível superior do `carousel` é uma `div` com as classes **`carousel`** e **`slide`**.* Ele possui um atributo de `id` cujo valor será referenciado pelos botões que ele contém:
```html
<div id="carrossel" class="carousel slide" data-bs="carrossel">
```
 O `carrossel` conterá 3 `div`s:
 1. **`carousel-indicators`**: Pontos ou pequenas linhas representando cada uma das fotos. **Uma `div` de classe `carousel-indicators`.**
 2. **`carousel-inner`**: **Uma `div` de classe `carousel-inner` com as imagens.**
 3. **Cada imagem é um `carousel-item`, quem contém _a imagem e um `carousel-caption`_.** É recomendado que todas as imagens tenham a **mesma** relação altura x largura.

### ELEMENTOS DESABILITADOS
 Como vimos, muitos elementos apoiam a classe `disabled`, para indicar que possuem uma aparência gráfica diferente. Porém, isso não os desabilita. Para desabilitar um elemento completamente, usamos o atributo `disabled`.

### DEPURAÇÃO
 Se a página não se parece com o que estamos construindo, devemos;
 - Certificar de que **TODOS os elementos** *estejam dentro de um container*.
 - Verificar se a estrutura da `div` está corretamente fechada.
 - Usar o **W3C Validator**, pois ele detectará elementos não fechados – exceto elementos fechados no lugar errado.
 - **Ao utilizar Bootstrap não devemos acrescentar regras de CSS diretamente, a menos que haja um padrão para o que estamos fazendo.**

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/html5_css3_sass_less.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#frontend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/frameworks_javascript.md">next</a>