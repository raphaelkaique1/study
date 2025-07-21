# PROTOCOLOS WEB
 **Requisições** são pedidos que o navegador faz a um servidor para receber ou enviar dados. Essas requisições geralmente seguem algum *protocolo*.
 Qualquer aplicação que utiliza comunicação em rede, utiliza algum **protoloco de comunicação**, para que isso seja feito com maior segurança, utilizam-se protocolos com **[SSL/TLS](https://www.youtube.com/watch?v=BVqFpbFiV34)**.<br/>
 O **SSL (Secure Sockets Layer)** e o **TLS (Transport Layer Security)** são protocolos criptográficos fundamentais para a segurança das comunicações na internet. Eles garantem a confidencialidade, integridade e autenticidade dos dados transmitidos entre um cliente e um servidor.

**SSL (Secure Sockets Layer):**
Desenvolvido pela Netscape na década de 1990, o SSL foi o primeiro protocolo amplamente adotado para proteger as comunicações na web. Ele utiliza criptografia para assegurar que os dados transmitidos não possam ser interceptados ou alterados por terceiros. No entanto, o SSL possui vulnerabilidades conhecidas e foi gradualmente substituído pelo TLS.

**TLS (Transport Layer Security):**
O TLS é a evolução do SSL, projetado para corrigir as falhas de segurança do SSL e oferecer uma criptografia mais robusta. Ele é amplamente utilizado para proteger protocolos como HTTP (resultando no HTTPS), SMTP, FTP e outros. O TLS opera em camadas inferiores do modelo OSI, garantindo que os dados sejam transmitidos de forma segura entre as partes envolvidas.

**SSL/TLS**

1. **Handshake (Aperto de Mão):** Quando um cliente se conecta a um servidor, eles iniciam um processo de negociação para estabelecer uma conexão segura. Durante o handshake, são trocadas informações como certificados digitais e chaves públicas.

2. **Autenticação:** O servidor apresenta um certificado digital assinado por uma autoridade certificadora confiável **CA - CERTIFICATION AUTHORITY**, permitindo que o cliente verifique a identidade do servidor.

3. **Geração de Chaves:** Após a autenticação, o cliente e o servidor geram uma chave secreta compartilhada, que será usada para criptografar e descriptografar os dados durante a sessão.

4. **Criptografia de Dados:** Com a chave secreta, os dados transmitidos entre o cliente e o servidor são criptografados, garantindo que informações sensíveis, como senhas e dados pessoais, permaneçam protegidas contra interceptação.

5. **Integridade:** O TLS também assegura que os dados não sejam alterados durante a transmissão, utilizando códigos de autenticação de mensagem (MACs) para verificar a integridade dos dados.

É importante notar que, embora o termo "SSL" ainda seja amplamente utilizado, a maioria das implementações modernas utiliza o TLS devido às suas melhorias de segurança.

Os protocolos mais utilizados em comunicação de rede são:

| Protocolo      | Descrição                                                                                     |
|----------------|-----------------------------------------------------------------------------------------------|
| **HTTP/HTTPS** | O mais comum. Usado para comunicação entre cliente e servidor (APIs REST, páginas web e etc). |
| **WebSocket**  | Comunicação bidirecional em tempo real (ex: chats, jogos online).                             |
| **WS/WSS**     | Versões original e segura do WebSocket.                                                       |
| **FTP/SFTP**   | Para transferir arquivos. Pouco usado diretamente no navegador.                               |
| **Data URLs**  | Para embutir dados diretamente em um link `data:text/html,...`.                               |
| **Blob URLs**  | Para lidar com arquivos gerados no browser.                                                   |

## CGI
O **C**ommon **G**ateway **I**nterface é um antigo padrão que permite que servidores web executem programas externos, geralmente scripts, e usem sua saída como resposta a uma requisição HTTP. Em resumo, CGI é um protocolo usado para tratar requisições do cliente web e retornar conteúdo, é a ponte entre o servidor web e programas que geram conteúdo dinâmico.

Quando uma URL como a do seguinte exemplo é acessada:
```bash
http://website.com/script.cgi?name=Raphael
```
O servidor web executa um **script CGI**, podendo ser em Python, C ou Shell ou qualquer outra linguagem de script que o servidor possa executar, que processa a requisição, gera uma resposta em HTML ou JSON por exemplo e envia de volta ao navegador:

1. O navegador faz uma requisição HTTP ao servidor.
2. O servidor detecta que a URL `script.cgi` aponta para um script CGI.
3. O script é executado como um processo separado.
   1. O servidor usa do CGI para passar os dados da requisição para o script via variáveis de ambiente, como `QUERY_STRING` por exemplo.
   2. O servidor captura a saída do script.
4. O script gera saída, geralmente HTML, precedida por um cabeçalho:
```html
Content-type: text/html

<html><body><h1>Olá, Raphael!<h1></body></html>
```
5. O servidor envia essa resposta HTTP ao navegador com base na saída do script.

Um CGI é um serviço que atende uma requisição por vez, o que significa que cada requisição gera um processo separado e isso acaba consumindo muitos recursos, por isso é pouco eficiente para sites com muito tráfego e não é mais utilizado atualmente, sendo substituído por formas modernas como o FastCGI, APIs e backends REST, ou mesmo métodos próprios de frameworks backend como Laravel, Node, Rails, entre outros.<br/>
Entretanto, é importante ressaltar que o CGI **não** é um protocolo como HTTP ou mesmo o REST. **O HTTP é um protocolo de comunicação entre cliente e servidor** *com a finalidade de trocar mensagens via web*, enquanto **o REST é um estilo de arquitetura que padroniza o design de APIs com boas práticas** e que *usa o HTTP para criá-las*, já **o CGI é uma _interface_ para a padronização de integração entre o servidor web e programas externos** que *executa um script `.cgi` quando determinada URL é acessada*, ou seja, ele permite execução de programas no servidor e gera conteúdo de forma dinâmica em conjunto com o HTTP.<br/>
**Em outras palavras, REST e HTTP são sobre _comunicação de sistemas_, enquanto o CGI é sobre _como o servidor executa scripts para gerar uma resposta_, o CGI não transporta dados como o HTTP faz, e nem define como estruturar recursos ou URLs como o REST, é basicamente um _mecanismo de execução_ que define como o servidor deve rodar scripts e também como esses scripts devem se comunicar com o servidor — usando variáveis de ambiente e I/O padrão.**

## URL
Uma URL é um tipo de URI usado para localizar recursos na web ou em um sistema, ela informa *como* acessar um recurso e *onde* ele está. URLs seguem um padrão definido por [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986). Uma URL completa tem essa estrutura:
```xml
<protocol>://<login>@<host>:<port>/<path>?<query_string>#<fragment>
```

Por exemplo:
```sh
https://website.com:443/page?name=Raphael&id=999#section3
```

Componentes:
- **Protocolo**: `https`
- **Host**: `website.com`
  - **Domínio**: `.com`
- **Porta**: `443`
- **Caminho**: `/page`
- **Query String**: `?`
  - **Parâmetros**: `name=Raphael&id=999`
- **Fragmento (opcional)**: `#section3`

### CODING
Como a URL tem um conjunto limitado de caracteres permitidos, certos caracteres precisam ser **codificados** com percent-encoding, ou seja, as strings com escapes devem estar codificados para evitar erros de interpretação. Isso envolve a codificação de caracteres especiais, que são aqueles que o padrão RFC 3976 define como não-seguros e por isso precisam ser codificados.<br/>
Este método possui diferentes aplicações:
- **Query Strings**
```
/search?q=déborah silva → /search?q=d%C3%A9borah%20silva
```

- **URL Paths**
```
/users/déborah → /users/d%C3%A9borah
```

- **HTML Forms**
```html
<form action="/search/users" method="get">
  <input name="name" type="text">
</form>
```
> `GET /search/users?name=d%C3%A9borah`: o navegador encoda os dados automaticamente.

- **BIN / UNI - URLs**
```
?msg=Hello%20world%21%20%E2%98%BA
```

#### ENCODING
Este é o processo de converter caracteres em um formato seguro para serem transmitidos em uma URL. Esse processo é necessário pois nem todos os caracteres são permitidos dentro de URLs, então para resolver isto, o URL Encoding converte caracteres reservados, especiais, ou não-ASCII em uma representação hexadecimal precedida por **`%`**.<br/>
Os caracteres permitidos em URLs são os *unreserved characters*: **`A–Z a–z 0–9 - _ . ~`**. Alguns caracteres possuem significados especiais em URLs, e por isso devem ser codificados *se usados fora de contexto*: **`: / ? # [ ] @ ! $ & ' ( ) * + , ; =`**, além destes também devem ser codificados os **espaços em branco** – sendo permitido sua substituição por `+` em formulários HTML, **caracteres unicode** – que são codificados para UTF-8 e então como percent enconding – entre outros caracteres de controle, símbolos e etc.

| caractere | ASCII (DEC)        | código       |
| --------- | ------------------ | ------------ |
| Espaço    | 32                 | `%20` ou `+` |
| `&`       | 38                 | `%26`        |
| `=`       | 61                 | `%3D`        |
| `?`       | 63                 | `%3F`        |
| `!`       | 33                 | `%21`        |
| `@`       | 64                 | `%40`        |
| `"`       | 34                 | `%22`        |
| `ç`       | UTF-8: `0xC3 0xA7` | `%C3%A7`     |

Por exemplo, a seguinte pesquisa:
```sh
https://site.com/busca?q=livro de aventura
```

Deve ser codificada como:
```sh
https://site.com/busca?q=livro%20de%20aventura
# ou
https://site.com/busca?q=livro+de+aventura
```

**`%20` e `+` não são equivalentes fora de contextos de formulários**, por isso devem ser usados com cautela.
| situação                                             | representação |
| ---------------------------------------------------- | ------------- |
| URLs em geral                                        | `%20`         |
| Formulários HTML `application/x-www-form-urlencoded` | `+`           |

Por conta da codificação necessária para seu funcionamento com caracteres não-ASCII, query strings apresentam problemas comuns como caracteres mal interpretados devido a uma codificação e decodificação errada, e uma das formas de se evitar isto é usar o formato `UTF-8` em combinação com o *percent enconding* para uma conversão correta, além de que muitas linguagens e frameworks apresentam ferramentas nativas para o tratamento de query strings.<br/>
Outros problemas muito comuns na sua utilização deve-se ao desconhecimento da diferença entre `+` e `%20` por alguns desenvolvedores web, que confundem as codificações e acreditam *"funcionar do mesmo jeito"*; e também o não *truncamento de dados*, pois os browsers tem um tamanho limite de 2.048 bytes (~2000 caracteres) para URLs, e por isso, no lugar do método GET deve ser usado POST quando necessário, para não ultrapassar o limite.<br/>
Algumas boas práticas para o trabalho correto com URLs incluem sempre encodar os valores, tanto de query strings, quanto de path parameters e formulários – incluindo valores individuais; além de sempre evitar *double encoding*, para não resultar em representações erradas ou corrompidas – por exemplo: `" " → %20 → %2520`.<br/>
Uma forma que ajuda a criação dos params é sempre seguir apenas 1 padrão para o formato dos caracteres, como ASCII ou UTF-8 por exemplo – evitar sempre que possível a mistura dos formatos na hora da codificação dos dados.<br/>
Por fim, as URLs geralmente enviam dados para serem tratados no servidor, então é de bom senso que sempre que estes dados chegam no backend, sejam tratados e validados, mesmo se o frontend encode os dados corretamente, é uma *redundancia de segurança*, mas que garante a corretude da informação e evita ataques de XSS ou injeções.<br/>
A grande maioria dos sistemas são usados por usuários *humanos*, e por isso, o uso de nomes claros e consistentes além de medida de segurança para que o próprio usuário possa auditar possíveis malicias, uma forma indireta de melhorar sua experiência é evitar URLs ilegíveis por humanos sempre que possível, usando *slugs* amigáveis.

**Especificações Oficiais – RFCs**
| RFC                                                       | descrição                                              |
| --------------------------------------------------------- | ------------------------------------------------------ |
| [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) | URI: Generic Syntax                                    |
| RFC 3987                                                  | Internationalized Resource Identifiers (IRIs)          |
| RFC 1866                                                  | HTML 2.0: define uso de `+` como espaço em formulários |

#### DECODING
Este é o processo reverso que ocorre geralmente no servidor, que converte `%XX` de volta ao caractere original.
```sh
Raphael+Ka%C3%ADque="Raphael Kaíque"
```

### QUERY STRINGS
Uma Query String é uma *string de consulta* e é a parte de uma **U**niform **R**esource **L**ocator que contém dados a serem enviados para aplicações via HTTP GET. **É compsta por pares de `chave=valor` após o `?` na URL.** Query strings são usadas para formular pesquisas – exemplo: `?q=cars`, paginação – exemplo: `?q=cars&pg=3`, criar filtros e ordenações, integrações com APIs, tracking para análise de dados – exemplo: `https://site.com?utm_source=google&utm_campaign=blackfriday`, entre outras possibilidades.<br/>
Elas são visíveis na URL, e por isso não são apropriadas para envio de dados sensíveis como senhas, tokens, ou dados privdaos como informações de pagamento por exemplo – estas informações ficam expostas no histórico, logs e URLs do browser e na rede.

```sh
https://website.com/page?name=Raphael&id=999
```

- **URL base**: **`https://website.com/page`**
- **query string**:
  - **`?`**: *inicia a query string*
  - **`=`**: *cria* o par **chave=valor**
    - `name=Raphael`: 1º par **chave=valor**
      - `name`: **parâmetro**
      - `Raphael`: **string**
  - **`&`**: *separa os pares*
    - `id=999`: 2º par **chave=valor**
      - `id`: **parâmetro**
      - `999`: **string**

```sh
URL_BASE             ?            &  chave2 = valor2
|                    |            |  |
https://site.com/page?name=Raphael&id=5395&status=ativo
                          |               |      |
                   chave1 = valor1        & chave2 = valor2
```

Então, os componentes básicos de uma Query String são:
| elemento     | função                                  |
| ------------ | --------------------------------------- |
| **`?`**      | Indica o início da query string na URL. |
| **`&`**      | Separa diferentes pares chave-valor.    |
| **`=`**      | Separa a chave do valor.                |

Exemplo:
```sh
?categoria=livros&ordem=preco_asc&pagina=2
```

Query strings usam *URL coding* para a transmissão correta e segura dos dados, este método está em conformidade com os padrões web RFCs e garante que os dados não quebrem a estrutura da URL fazendo com que sejam interpretados corretamente pelo servidor, além de proteger o backend de injeções, malformações e corrupção de informações ao escapar caracteres maliciosos – sendo uma camada extra de segurança mas que não substitui a validação e a sanitização no servidor.<br/>
A formatação padrão de URLs para o transporte de dados é essencial para as comunicações web, garantindo a canonicalização, normalizando as URLs – ou seja: *"um mesmo conteúdo deve gerar sempre a mesma URL codificada"*. Codificações inconsistentes podem causar problemas de cache ou de indexação. Além de que, URLs com muitas query strings podem ser menos amigáveis para SEO, e o uso de *canonical tags* pode evitar conteúdo duplicado em páginas com a mesma base mas com query strings diferentes.<br/>
**Além de também ser possível usar múltiplos filtros no formato CSV para evitar repetição, por exemplo o filtro `filtro=preco&filtro=marca` pode ser montado desta forma `filtro=preco,marca` – no backend ele pode ser acessado como um array.**

### PATH PARAMETERS
Os *parâmetros de rota* **são valores dinâmicos inseridos diretamente no caminho de uma URL**, são usados para identificar um recurso específico em APIs RESTful, onde *o parâmetro faz parte da identidade do recurso*.
```sh
/resource/{param}
```

No exemplo a seguir, `/users/` é o recurso a ser acessado, é o *caminho* onde se encontra armazenado um valor, e o `999` é o valor do path parameter – neste caso, o `id` do usuário:
```sh
GET /users/999
```

São usados quando se deseja **acessar**, **atualizar** ou **deletar** um *recurso específico*. Alguns exemplos incluem:
- **`GET /produtos/45`**: pegar produto com ID 45
- **`DELETE /clientes/77`**: deletar cliente com ID 77
- **`PUT /posts/30`**: atualizar post com ID 30

### PP x QS
Paths Parameters e Query Strings são 2 maneiras diferentes de passar informações em uma URL, muito comuns em APIs RESTful, porém apesar de semelhantes, possuem propósitos e comportamentos distintos.<br/>
Um *path parameter* é uma **parte da URL usada para identificar recursos específicos**, fica embutido diretamente no caminho da URL. Por fazer parte da estrutura da URL para identificar recursos únicos, costuma ser obrigatório para que a rota funcione – pois o caminho é definido na rota da API, por exemplo: `/users/{id}`.<br/>
A *query string* por outro lado, é uma parte opcional da URL **usada para filtrar, buscar ou modificar os dados** e como são manipulados – é uma estrutura de caracteres bem definida para que seja possível identificar recursos e seus valores, ou seja, identificar os *query parameters*: `GET /users?age=30&city=sp`.<br/>
Diferente do path parameter, uma query string pode conter vários parâmetros, todos separados por `&`, e enquanto um path parameter é um formato inflexível para a localização de recursos – por isso *obrigatório* – e tem sua estrutura base imutável, por ser possível combinar parâmetros a query string é mais flexível e dinâmica na sua estrutura, além de ser uma parte opcional da URL.

| tipo            | estrutura       | uso                              |
| --------------- | --------------- | -------------------------------- |
| Path Parameters | `/users/999`    | Recurso específico.              |
| Query String    | `/users?id=999` | Filtros com múltiplos critérios. |

Apesar de cada uma possuir uma finalidade, elas frequentemente trabalham em conjunto, principalmente em APIs REST. Dependendo da necessidade da requisição, um path parameter é usado para identificar um recurso específico enquanto a query string filtra e modifica a resposta, sendo extremamente úteis para buscar recursos específicos com filtros adicionais, paginar sub-recursos, ordenar resultados de um recurso específico e filtrar relações de recursos, por exemplo:
```sh
GET /users/39/requests?status=delivered&page=5
# ou
GET /api/users?status=on&limit=10
```
Neste exemplo, o **`39`** é o path parameter do recurso `id` do usuário, enquanto `status` e `Page` são query strings para filtrar os pedidos.<br/>
Então como boa prática, o uso de path parameters deve ser limitado à recursos obrigatórios e hierárquicos, enquanto query strings devem ser usadas para parâmetros opcionais ou modificadores. **Um não deve ser usado no lugar do outro, como por exemplo usar uma query string para identificar recursos principais: `/users?id=99`, pode funcionar mas não é uma boa prática e nem uma escolha recomendável.** Path parameters são como a **identidade** de um recurso, enquanto query strings são para filtrar quais **opções** se deseja do recurso.<br/>
Existem bibliotecas e frameworks que suportam essa separação automaticamente, por exemplo:
**Node.js & Express**
```js
app.get('/users/:id/requests', (req, res) => {
  const id = req.params.id; // path param
  const { status, page } = req.query; // query params
  res.send(`Pedidos do usuário ${id} | status: ${status} | página: ${page}`);
});
```

**Uma URL ideal deve ser limpa, utilizar path params para conteúdo relevante e query strings para filtros.**<br/>
URLs são muito mais do que links, são estruturas formais, com sintaxe precisa, regras de segurança, e impacto direto na funcionalidade, SEO, UX, segurança e interoperabilidade de qualquer aplicação web.

### URL SCHEMES
Um esquema de URL é a 1ª parte de uma URL antes dos `:`, o esquema é o que define como o restante da URL será interpretado e qual protocolo será usado para acessar o recurso.
```sh
https://www.example.com:443/path/to/page?query=test#section
└─┬──┘
  │
 escheme
```

Como se sabe, um **U**niform **R**esource **L**ocator é uma forma padronizada de identificar e acessar recursos, seja na internet ou localmente. Sua estrutura geral é:
```sh
[scheme:[//]][[user[:password]@]host[:port]][/path][?query[param=value[&param=value]]][#fragment]
```

Um esquema determina o *como* e *com que protocolo* acessar o recurso indicado, além de também definir as regras de sintaxe e o comportamento da URL. Alguns dos esquemas são:
- **FILES**
  - `file`: Acesso a arquivos locais.<br/>
  Basta indicar o caminho absoluto até o arquivo na barra de pesquisas do navegador: `file:///home/ralph/Dev/.env/web/index.html`.
  - `ftp`: File Transfer Protocol.<br/>
  Utilizado para transferência de arquivos entre cliente e servidor: `ftp://ftp.exemplo.com/arquivo.txt`.
- **SERVICES**
  - `mailto`: Enviar e-mails.
  - `tel`: Chamadas telefônicas.
  - `sms`: Mensagens telefônicas de texto.
  - `geo`: Coordenadas geográficas.
- **TOOLS**
  - `javascript`: Executa código JavaScript diretamente `javascript:alert('Hello world!')`, exemplo: `<a href="javascript:alert('Oi!')">Clique aqui</a>`.
  - `chrome`: URLs internas do navegador Chrome.
  - `moz`: URLs internas do Firefox.
- **WEB**
  - `about`: Recursos internos do navegador.<br/>
  Este prefixo é um esquema de URL interno usado por navegadores para acessar recursos ou páginas internas que não fazem parte da web.
    - `about:blank`: Página em branco.
    - `about:config`: Configurações avançadas no Firefox.
    - `about:flags`: Ativar e desativar recursos experimentais no Chrome.
    - `about:cache`: Informações de cache.
    - `about:crash`: Força uma simulação de crash em devtools.
    - `about:version`: Mostra versão do navegador.
  - `blob`: Objetos binários temporários em memória.<br/>
  Útil para criar URLs temporárias para dados binários em memória:
  ```js
  const blob = new Blob(['Hello world!'], { type: 'text/plain' });
  const url = URL.createObjectURL(blob);
  console.log(url) // blob:nodedata:38074caf-1e2f-4f31-94da-ebb9a709708b
  ```
  - `data`: Dados embutidos como `inline base64` por exemplo.<br/>
  Embute dados diretamente na URL mas é limitado por tamanho, sua sintaxe básica é: `data:midia_type/format;encrypt_type,encrypt-hash_012345...`. Particularmente útil para incluir imagens inline, por exemplo: `<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUA..." />`.
  - `ws` / `wss`: WebSocket `wss://server.com/socket`.
  - [`http` / `https`: Protocolo HTTP – padrão da web / HTTP seguro – SSL/TLS.](https://letsencrypt.org/pt-br/how-it-works/)

## HYPERTEXT
O hipertexto é uma estrutura de informação textual que permite conexões não-lineares entre diferentes blocos de texto chamados de **_nodes_**, através de elementos clicáveis conhecidos como **hyperlinks**. Enquanto um hipertexto é uma estrutura textual com ligações, a **hypermedia** é a expansão do hipertexto, incluindo mídias como som, vídeo, imagens entre outros tipos de mídia.<br/>
O hipertexto quebra a linearidade tradicional de leitura, oferecendo uma estrutura para o armazenamento e apresentação da informação de forma mais parecida com o pensamento humano, permitindo ao leitor escolher o *caminho da leitura*, criando sua própria jornada pelo conhecimento. A própria rede mundial de computadores foi criada baseada neste conceito, utilizando o HTTP e o HTML, pode-se dizer que a web é essencialmente um sistema de documentos hipertextuais interligados, sendo ela um exemplo de hypermedia, pois além de texto, usa outros tipos de mídia como áudio, vídeo, imagens, animações entre vários outros tipos.<br/>
O hipertexto revolucionou a forma como a informação é armazenada, organizada e acessada, especialmente na web. Ele permite uma experiência de navegação rica, interativa e adaptável, sendo um dos pilares do desenvolvimento web moderno. Por exemplo, o HTML é a linguagem base que se utiliza na web para estruturar hipertextos.

Um hipertexto é composto por:
- **nodes**: blocos de conteúdo como textos, páginas e trechos que contem informações.
- **links**: conexões entre os nós, podendo ser internas – levando a uma seção dentro do mesmo documento – ou externas – levando o leitor a outro documento. Na web são compostos pelas URLs, que são esquemas que contem o endereço dos nós.
- **anchors**: pontos específicos dentro de um nó para onde um link pode apontar.

O hipertexto oferece uma navegação flexível e personalizada ao criar um relacionamento entre conceitos e ao permitir acesso rápido a informações externas, promovendo a interação ativa do usuário, que escolhe *como* e *por onde* navegar, o que facilita a pesquisa e o aprendizado autodirigido. Entretanto, existem pontos para se levar em consideração no seu uso, pois se mal implementado pode gerar desorientação no usuário quando exposto a uma sobrecarga de links, fazendo-o se sentir perdido no hipertexto, além de que os links precisam de manutenções e sanitizações periódicas para que não se tenha problemas com links quebrados.

## HTTP
Feita a conexão segura no canal através do SSL/TLS, usa-se os métodos **[HTTP](https://developer.mozilla.org/pt-BR/docs/Web/HTTP)** para definir a ação que o cliente deseja realizar sobre um recurso no servidor. O **H**yper **T**ext **T**ransfer **P**rotocol é o protocolo de comunicação que permite a transferência de dados na web, definindo como os clientes e servidores conversam entre si para trocar recursos como dados para um banco de dados, páginas HTML, mídia e etc. Seu funcionamento segue o modelo client-server, onde o cliente envia uma requisição para o servidor, que processa e responde com dados.

[**MÉTODOS**](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Reference/Methods)<br/>
Os métodos HTTP são as ações que o protocolo define para serem realizadas em uma requisição. Existem vários métodos, cada um realizando um tipo de tarefa, e podemos separá-los em:
- **safe methods**: são os métodos considerados *seguros*, que não realizam ações em nenhum dos lados, podem ser considerados *emissores de eventos*, mas os eventos são executados pelo próprio sistema apenas por conta de *"perceber"* o método, e não por alguma ação ou parâmetro deste método. `GET` e `HEAD` são exemplos de safe methods.
- **idempotent methods**: idempotência é uma propriedade que obtém o mesmo resultado após a 1ª execução idependente de quantas vezes o método for chamad, ou seja, mesmo que hajam múltiplas execuções o resultado não será alterado depois da 1ª execução. O método `DELETE` é um exemplo deste tipo, pois após a remoção do recurso do sistema ele não poderá ser *"removido uma 2ª vez"*, visto que após a 1ª execução deste método o recurso em questão já não existe mais.

Os principais métodos utilizados possuem a semântica de operações possíveis de serem efetuadas sob um determinado recurso:
- **OPTIONS**: Retorna os métodos HTTP suportados pelo servidor para um recurso específico.
- **TRACE**: Realiza um teste de loop-back que retorna a requisição recebida para que o cliente veja se houveram mudanças e adições feitas por servidores intermediários. Por questões de vulnerabilidade na segurança, este método em produção deve ser desabilitado.
- **CONNECT**: Usado para estabelecer um túnel de comunicação, comum em conexões HTTPS, que converte a requisição de conexão para um túnel TCP/IP transparente, usado para facilitar a comunicação criptografada com SSL (HTTPS) através de um proxy HTTP não criptografado.
- **HEAD**: Retorna apenas os cabeçalhos da resposta, sem o corpo da mensagem.
- **GET**: Recupera as informações de um recurso sem modificá-lo.
- **POST**: Envia dados para o servidor, geralmente para criar um novo recurso ou processar informações.
- **PUT**: Atualiza ou substitui *completamente* um recurso existente com os dados enviados.
- **PATCH**: Realiza uma atualização *parcial* em um recurso existente, ao invés de enviar todos os dados novamente.
- **DELETE**: Remove um recurso específico do servidor.

Além desses, existem outros métodos específicos, como os do WebDAV, esses métodos foram criados para permitir a manipulação de arquivos e pastas, chamadas *coleções*, em servidores web:
- **PROPFIND**: Recupera propriedades normalmente em formato XML de um recurso.
- **PROPPATCH**: Modifica ou remove múltiplas propriedades de um recurso.
- **MKCOL**: Cria uma nova coleção, por exemplo, uma pasta.
- **COPY**: Copia um recurso de um URI para outro.
- **MOVE**: Move um recurso de um URI para outro.
- **LOCK**: Aplica uma trava em um recurso, impedindo alterações concorrentes.
- **UNLOCK**: Remove a trava aplicada a um recurso.

E além dos métodos do WebDAV, há outros métodos introduzidos em extensões ou por protocolos associados:
- **REPORT**: Usado em sistemas de versionamento como DeltaV e em protocolos como CalDAV e CardDAV para gerar relatórios sobre as propriedades ou o estado de um recurso.
- **MKCALENDAR**: Utilizado pelo CalDAV para criar um novo calendário.
- **ACL**: Define ou modifica as listas de controle de acesso e permissões de um recurso.
- **ORDERPATCH**: Permite reordenar os membros de uma coleção.
- **BIND**, UNBIND, REBIND: Métodos menos comuns utilizados em algumas extensões do WebDAV para gerenciar ligações entre recursos.
- **CHECKOUT**, **CHECKIN**, **UNCHECKOUT**, **UPDATE**, **MERGE**: Métodos relacionados a sistemas de versionamento definidos em RFC 3253 e extensões de WebDAV para gerenciar cópias e versões de recursos.

[**CÓDIGOS DE STATUS**](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Reference/Status)<br/>
Toda resposta à uma requisição deve conter um HTTP status code, que é um código que informa ao solicitante o que ocorreu durante o envio da resposta à requisição. Os principais códigos de status de requisições e respostas são:

| **CÓDIGO** | **SIGNIFICADO**        |
| ---------- | ---------------------- |
| **1XX**    | **INFORMATIVO**        |
| 100        | Continue.              |
| 101        | Switching Protocols.   |
| 102        | Processing (WebDAV).   |
| **2xx**    | **SUCESSO**            |
| 200        | OK.                    |
| 201        | Created.               |
| 202        | Accepted.              |
| 204        | No Content.            |
| **3xx**    | **REDIRECIONAMENTO**   |
| 301        | Moved Permanently.     |
| 302        | Found (temporário).    |
| 304        | Not Modified.          |
| 307        | Temporary Redirect.    |
| **4xx**    | **ERROS DO CLIENTE**   |
| 400        | Bad Request.           |
| 401        | Unauthorized.          |
| 403        | Forbidden.             |
| 404        | Not Found.             |
| 405        | Method Not Allowed.    |
| 409        | Conflict.              |
| 429        | Too Many Requests.     |
| **5xx**    | **ERROS DO SERVIDOR**  |
| 500        | Internal Server Error. |
| 501        | Not Implemented.       |
| 502        | Bad Gateway.           |
| 503        | Service Unavailable.   |
| 504        | Gateway Timeout.       |

[**TIPOS DE MÍDIA**](https://www.iana.org/assignments/media-types/media-types.xhtml)<br/>
Toda requisição envia ao servidor uma informação sobre qual tipo de dados espera receber, assim como toda resposta informa qual o tipo de dados enviado, e, para isso, existe um campo no cabeçalho que define o conteúdo do corpo da mensagem que se deve esperar. Os `Content-Type` são valores do cabeçalho HTTP que informam o **tipo de dados** sendo transmitido no corpo da requisição ou resposta. Essa string define qual o formato do conteúdo da mensagem e como ele deve ser lido pelo software, permitindo assim o cliente diferenciar entre JSON e XML por exemplo.<br/>
Sua declaração é composta por 2 partes separadas por uma barra `/`, em que a 1ª parte refere-se ao tipo do dado e a 2ª ao subtipo — formato; *extensão*. Também é possível especificar alguns parâmetros adicionais, como por exemplo o padrão de caracteres **`charset=UTF-8`**: **`content-type: application/json; charset=utf-8`**.<br/>
A 1ª parte contém um tipo registrado de alto nível, que pode ser: **`application` - `audio` - `example` - `image` - `message` - `model` - `multipart` - `text` - `video`**; **e no caso do cliente que deseja informar o media type que espera receber, usa-se o header field **`Accept`** no momento da requisição**, como nestes exemplos usando cURL: `curl mockbin.org/request -H "Accept: application/json"`, `curl mockbin.org/request -H "Accept: application/xml"` e `curl mockbin.org/request -H "Accept: application/yaml"`. **Este campo de cabeçalho não se limita apenas a este valor, também é possível encadear outros tipos em uma mesma requisição, basta separá-los por vírgulas**: `curl mockbin.org/request -H "Accept: application/json;q=0.2,application/yaml;q=0.1"`; **o parâmetro `q` define o _quality factor_, que informa a ordem preferida de retorno da requisição, e deve estar no intervalor de `0` a `1`, sendo `1` o valor de maior prioridade**, como no exemplo anterior, o valor `json;q=0.2` informa ao servidor que o valor *preferido* de retorno seja em JSON, caso o servidor não suporte este formato então ele pode enviar no formato `yaml;q=0.1`, pois `0.2` é maior que `0.1`, ou seja, o formato que possuir maior **_"peso"_** é o preferido a receber 1º. Alguns tipos de formatos de content type são:

| **Content-Type**                          | **DESCRIÇÃO**                               |
| ----------------------------------------- | ------------------------------------------- |
| `text/plain`                              | Texto puro, sem formatação.                 |
| `text/html`                               | HTML.                                       |
| `text/css`                                | CSS.                                        |
| `text/javascript`                         | JavaScript.                                 |
| `text/csv`                                | Arquivos CSV.                               |
| `text/xml`                                | XML em formato de texto.                    |
| `application/json`                        | JSON.                                       |
| `application/xml`                         | XML.                                        |
| `application/x-www-form-urlencoded`       | Formulários HTML (dados em URL codificada). |
| `multipart/form-data`                     | Uploads de arquivos (formulários).          |
| `application/octet-stream`                | Binário genérico.                           |
| `application/pdf`                         | Arquivo PDF.                                |
| `application/zip`                         | Arquivo ZIP.                                |
| `application/msword`                      | Documento Word.                             |
| `application/vnd.ms-excel`                | Arquivo Excel.                              |
| `application/javascript`                  | JavaScript.                                 |
| `image/png`                               | Imagem PNG.                                 |
| `image/jpeg`                              | Imagem JPEG.                                |
| `image/gif`                               | Imagem GIF.                                 |
| `image/svg+xml`                           | Imagem SVG.                                 |
| `audio/mpeg`                              | Áudio MP3.                                  |
| `audio/ogg`                               | Áudio OGG.                                  |
| `video/mp4`                               | Vídeo MP4.                                  |
| `video/webm`                              | Vídeo WebM.                                 |

Resumindo, mime types informam o formato da informação trafegada entre cliente e servidor. O formato de dados **enviados** deve ser indicado no campo **`Content-Type`**, enquanto o header field **`Accept`** informa o tipo de **retorno** esperado.

[**CABEÇALHO**](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Reference/Headers)<br/>
As principais características deste protocolo são o que o tornam muito usado para o desenvolvimento web, pois é stateless, ou seja, não guarda estado tornando cada requisição independente, é baseado em texto, e extensível possuindo cabeçalhos, métodos e integrações (como REST ou GraphQL por exemplo).<br/>
O principal serviço do protocolo HTTP é realizar a comunicação e transferência de dados entre cliente e servidor, isso se dá normalmente pelo processo do cliente enviar uma requisição ao servidor, que responde de acordo com o que foi solicitado. Na maioria dos casos, uma resposta de um servidor a uma requisição HTTP pode ser dividido em 4 partes, onde pelo menos 2 são orbigatórias, e por isso, apesar de todas as requisições possuirem diferentes respostas, 2 linhas sempre estarão presentes:
1. **Start-Line** — Linha de Início (obrigatória): trás as informações da comunicação, podendo ser divida em 2 partes:
   1. **request-line**: indica a versão HTTP usada
   2. **status-line**: resultado da comunicação
2. **Header Fields** — Cabeçalho de Campos (nenhum ou vários): representam os metadados da requisição e resposta HTTP, que contém informações sobre como a transferência de dados deve ser manipulada e tratada pelo cliente ou servidor. Eles não fazem parte do corpo da mensagem, mas influenciam diretamente seu processamento. Possui alguns campos *principais* que dizem muito ao servidor ou ao cliente, são eles:
   1. **Content-Type**: informa como a representação é serializada, ou seja, qual é formato dos dados da resposta indicando o tipo de mídia (MIME Type) do conteúdo da mensagem, permitindo ao receptor entender como interpretar os dados.
   2. **Content-Length**: informa o tamanho do corpo da mensagem contabilizado em octetos (bytes), que é usado pelo receptor para estimar quantos dados esperar, ajudando na validação de integridade e confirmar que a mensagem foi recebida corretamente a partir do emissor.
   3. **X-Powered-By**: header fields não oficiais por convenção começam com **X**, mas essa prática tem caído em desuso e se houver a necessidade de se criar um header field não é indicado iniciá-lo com **X**. Campos personalizados são muito úteis, mas não é aconselhado o uso destes tipos, sendo uma melhor prática sempre usar os campos oficiais antes de se criar e utilizar um personalizado.
3. **Empty Line** — Linha em Branco (obrigatória): serve apenas para delimitar o fim dos Header Fields e o início do corpo da mensagem.
4. **Message-Body** — Corpo da Mensagem (Opcional): contém os dados enviados como resposta à requisição feita.

Um exemplo de uma requisição HTTP seria algo como:
```http
GET /users/1
Host: https://jsonplaceholder.typicode.com
```

Podendo receber uma resposta como:
```json
HTTP/2 200 // 1. START LINE - HTTP STATUS CODE
// 2. HEADER FIELDS - REQUEST/RESPONSE INFORMATION
date: Fri, 23 May 2025 11:40:37 GMT
content-type: application/json; charset=utf-8
content-length: 509
server: cloudflare
report-to: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1745352617&sid=e11707d5-02a7-43ef-b45e-2cf4d2036f7d&s=WUBe99aGTRNCdZoOtOqedRAJn8uvqx%2Fm6KpNeql0IoQ%3D"}]}
reporting-endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1745352617&sid=e11707d5-02a7-43ef-b45e-2cf4d2036f7d&s=WUBe99aGTRNCdZoOtOqedRAJn8uvqx%2Fm6KpNeql0IoQ%3D
nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
x-powered-by: Express
x-ratelimit-limit: 1000
x-ratelimit-remaining: 999
x-ratelimit-reset: 1745352673
vary: Origin, Accept-Encoding
access-control-allow-credentials: true
cache-control: max-age=43200
pragma: no-cache
expires: -1
x-content-type-options: nosniff
etag: W/"1fd-+2Y3G3w049iSZtw5t1mzSnunngE"
via: 1.1 vegur
age: 16717
cf-cache-status: HIT
cf-ray: 944447908e2aa32f-SEA
alt-svc: h3=":443"; ma=86400
                            // 3. EMPTY LINE
// 4. MESSAGE BODY - SERVER RESPONSE CONTENT
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}
```

O que realmente acontece durante a comunicação cliente-servidor segue os seguintes passos:
```bash
* Host jsonplaceholder.typicode.com:443 was resolved.
* IPv6: 2606:4700:3030::6815:3001, 2606:4700:3030::6815:4001, 2606:4700:3030::6815:5001, 2606:4700:3030::6815:6001, 2606:4700:3030::6815:7001, 2606:4700:3030::6815:1001, 2606:4700:3030::6815:2001
* IPv4: 104.21.96.1, 104.21.112.1, 104.21.16.1, 104.21.32.1, 104.21.48.1, 104.21.64.1, 104.21.80.1
*   Trying 104.21.96.1:443...
* Connected to jsonplaceholder.typicode.com (104.21.96.1) port 443
* ALPN: curl offers h2,http/1.1
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
*  CAfile: /etc/ssl/certs/ca-certificates.crt
*  CApath: /etc/ssl/certs
* TLSv1.3 (IN), TLS handshake, Server hello (2):
* TLSv1.3 (IN), TLS handshake, Encrypted Extensions (8):
* TLSv1.3 (IN), TLS handshake, Certificate (11):
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
* TLSv1.3 (IN), TLS handshake, Finished (20):
* TLSv1.3 (OUT), TLS change cipher, Change cipher spec (1):
* TLSv1.3 (OUT), TLS handshake, Finished (20):
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384 / X25519 / id-ecPublicKey
* ALPN: server accepted h2
* Server certificate:
*  subject: CN=typicode.com
*  start date: Apr 13 09:20:38 2025 GMT
*  expire date: Jul 12 10:18:06 2025 GMT
*  subjectAltName: host "jsonplaceholder.typicode.com" matched cert is "*.typicode.com"
*  issuer: C=US; O=Google Trust Services; CN=WE1
*  SSL certificate verify ok.
*   Certificate level 0: Public key type EC/prime256v1 (256/128 Bits/secBits), signed using ecdsa-with-SHA256
*   Certificate level 1: Public key type EC/prime256v1 (256/128 Bits/secBits), signed using ecdsa-with-SHA384
*   Certificate level 2: Public key type EC/secp384r1 (384/192 Bits/secBits), signed using ecdsa-with-SHA384
* using HTTP/2
* [HTTP/2] [1] OPENED stream for https://jsonplaceholder.typicode.com/users/1
* [HTTP/2] [1] [:method: GET]
* [HTTP/2] [1] [:scheme: https]
* [HTTP/2] [1] [:authority: jsonplaceholder.typicode.com]
* [HTTP/2] [1] [:path: /users/1]
* [HTTP/2] [1] [user-agent: curl/8.5.0]
* [HTTP/2] [1] [accept: */*]
> GET /users/1 HTTP/2
> Host: jsonplaceholder.typicode.com
> User-Agent: curl/8.5.0
> Accept: */*
> 
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* old SSL session ID is stale, removing
< HTTP/2 200 
< date: Fri, 23 May 2025 13:19:48 GMT
< content-type: application/json; charset=utf-8
< content-length: 509
< server: cloudflare
< report-to: {"group":"heroku-nel","max_age":3600,"endpoints":'[{"url":"https://nel.heroku.com/reports?ts=1745352752&sid=e11707d5-02a7-43ef-b45e-2cf4d2036f7d&s=C2n83VezeTFi6%2FKSgAcUfuCRGK6NPeD%2B87inK6OoBsI%3D"}]'}
< reporting-endpoints: heroku-nel='https://nel.heroku.com/reports?ts=1745352752&sid=e11707d5-02a7-43ef-b45e-2cf4d2036f7d&s=C2n83VezeTFi6%2FKSgAcUfuCRGK6NPeD%2B87inK6OoBsI%3D'
< nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":'["Via"]'}
< x-powered-by: Express
< x-ratelimit-limit: 1000
< x-ratelimit-remaining: 999
< x-ratelimit-reset: 1745352793
< vary: Origin, Accept-Encoding
< access-control-allow-credentials: true
< cache-control: max-age=43200
< pragma: no-cache
< expires: -1
< x-content-type-options: nosniff
< etag: W/"1fd-+2Y3G3w049iSZtw5t1mzSnunngE"
< via: 1.1 vegur
< age: 20949
< cf-cache-status: HIT
< cf-ray: 9444d8d72828757b-SEA
< alt-svc: h3=":443"; ma=86400
< 
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": '{
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  }',
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": '{
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }'
* Connection #0 to host jsonplaceholder.typicode.com left intact
}
```

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.3-ferramentas_de_monitoramento/prometheus_grafana.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#fundamentos_da_web">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/html5_css3_sass_less.md">next</a>