# API
Quando queremos realizar um pedido em um restaurante, basta informar ao garçom qual prato queremos e em seguida ele nos trás o pedido. É basicamente assim que uma API funciona.<br/>
O termo API é uma abreviação para **A**pplication **P**rogramming **I**nterface, que pode ser descrita como um conjunto de rotinas e padrões de programação para acesso a um software.<br/>
Uma API é um software que executa uma função específica, mas não tem uma interface de usuário, ou seja, não existe algo com o qual é possível interagir diretamente. Em vez disso, existe uma interface que outro software usa. Quando uma API está na nuvem, ela tem um endereço na web. Quando o software chama a API usando esse endereço, a chamada inicia uma conversa com a API para que o software possa enviar e receber dados.<br/>
O diagrama a seguir mostra como uma API é chamada usando uma solicitação `https` padrão. A solicitação é a URL da API junto com os parâmetros que a API usa para buscar os dados corretos.

![Image](https://github.com/user-attachments/assets/f7f57f9d-10bb-42d8-9fae-6cdbdab94a4b)

Elas geralmente se dividem em 2 categorias:
- **Browser APIs**: já vem implementadas no navegador, são capazes de expor dados do ambiente do computador e fazer coisas complexas e úteis. Por exemplo:
  - **API DOM**: permite a manipulação do HTML e CSS, criando, removendo e alterando HTML, aplicando dinamicamente novos estilos CSS para a página e etc. Toda vez que uma janela pop-up surge ou um novo conteúdo é exibido na página, isso é o DOM em ação.
  - **API de Geolocalização**: recupera informações geográficas. É assim que o Google Maps consegue encontrar uma localização e usar no mapa por exemplo.
  - **APIs Canvas e WebGL**: permitem criar gráficos 2D e 3D animados e interativos.
  - **APIs e de Áudio e Vídeo**: como `HTMLMediaElement` e `WebRTC` permitem trabalhar com áudio, captura de vídeo da câmera do dispositivo e etc.
- **3rd part APIs**: não são implementados no navegador automaticamente, sendo necessário incorporar sua estrutura no código do projeto em desenvolvimento. Por exemplo:
  - **API do Twitter/X**: permite exibir tweets no website por exemplo.
  - **API do Google Maps**: permite inserir mapas customizados no site entre outras diversas funcionalidades.

Ou seja, a API é a aplicação que conversa com todas as partes de um sistema, tanto o front-end quanto o back-end, realizando a conexão dos dados com o servidor e o cliente.

## `resources`
O básico de toda aplicação dinâmica é realizar a manipulação de dados, comumente chamados de **resources**. **Recursos são elementos de informação**, *que podem ser manipulados através de um identificador global*. Em outras palavras, recursos são *quaisquer coisas* que podem ser manipulados através de um identificador. Então, para realizar manipulações de dados no servidor como por exemplo criar, editar ou excluir um usuário de um sistema, é necessário identificá-lo de uma forma única.<br/>
Na maioria das aplicações, a classificação dos dados é feita de forma hierarquica, onde se tem um identificador global — que agrupa dados do mesmo tipo, como por exemplo uma lista de usuários — para que então, seja possível localizar o elemento que se deseja.<br/>
De forma resumida, **um recurso** *é uma entidade acessada pela API*. Por exemplo:
> **recurso:** *`usuário`* — **id**: `www.website.com`**`/user`**
Por convenção, a boa prática diz que a nomeação de um recurso deve sempre ser formada por um **substantivo**, nunca por um **verbo**, pois um recurso trata-se de algo que se deseja manipular, por exemplo `user`, `network`, `description` e etc.

### `URI`
Uma forma eficiente de se localizar um recurso é usando uma **U**niform **R**esource **I**dentifier. *Um identificador uniforme de recursos é uma cadeia de caracteres compacta usada para identificar ou denominar um recurso na internet*.
> **recurso:** `usuário` — **uri**: **`www.website.com/user`**
Essa é uma interface de categoria geral muito usada para identificar um recurso por nome, ou mesmo o caminho do endereço da localização deste recurso.
```txt
https://example.com/produtos/123
ftp://ftp.example.org/arquivo.txt
mailto:contato@exemplo.com
tel:+5511999999999
```
Todos os exemplos acima são URIs, pois identificam recursos, cada um com um esquema, arquitetura e protocolo diferente, como `https`, `ftp`, `mailto` e etc.<br/>
Em APIs RESTful, as URIs são usadas para mapear os recursos:
```txt
GET /usuarios        → URI que representa o recurso usuário, que contém a lista de usuários
GET /usuarios/123    → URI de um recurso específico, como usuário com ID 123
POST /produtos       → cria novo produto
DELETE /produtos/55  → deleta produto com ID 55
```

### `URL`
Uma **U**niform **R**esource **L**ocator _é apenas uma URI que inclui o **endereço de acesso do recurso**_, este tipo de URI localiza o recurso através do seu endereço **completo** disponível na rede . **Ou seja, toda URL é uma URI, mas nem toda URI é uma URL.**
> **recurso:** `autores` — **url**: **`https://website.com/autores`** (**protocolo + uri + recurso**)

### `URN`
Um **U**niform **R**esource **N**ame é um tipo de URI que usa o **URN Scheme**, *que tem por objetivo a identificação única do recurso de forma persistente e independente da sua localização*. Seu funcionamento necessita de um resolvedor, que é o responsável por interpretar a URN dada traduzindo em 1 ou mais URLs que encaminham para o recurso especificado.

### `IRI`
Enquanto URIs são limitados a um subconjunto do conjunto de caracteres ASCII, **I**nternationalized **R**esource **I**dentifies é uma generalização do URI, multilíngue com suporte a caracteres especiais — Universal Character Set - Unicode/ISO 10646 — e que não requer codificação *percent-encoding*.
> **IRI**: `https://meusite.com/área-de-clientes`
> **URI correspondente**: `https://meusite.com/%C3%A1rea-de-clientes`

## ENDPOINT
É onde a API realiza o consumo de informações da aplicação. Um **endpoint de API** *é uma URL específica onde um cliente pode acessar um recurso ou serviço fornecido por uma API*. Ele representa um ponto de comunicação entre sistemas, permitindo o envio e recebimento de dados. É importante notar como os endpoints representam **recursos** (usuários) enquanto os métodos indicam a **ação** sobre eles.

1. **URL base** – Endereço principal da API (exemplo: `https://api.exemplo.com/`).
2. **Rota específica** – Define qual recurso será acessado, por exemplo: `/usuarios/123`.
3. **Método HTTP** – Indica a ação a ser executada:
   - `GET`: Recuperar dados.
   - `POST`: Criar um novo recurso.
   - `PUT`: Atualizar um recurso existente.
   - `DELETE`: Remover um recurso.

Por exemplo, se uma API de usuários tem a URL base `https://api.meusistema.com`, um **endpoint** para obter os detalhes do usuário `123` poderia ser:
```SQL
GET "https://api.meusistema.com/usuarios/123"
```
Esse endpoint retornaria as informações do usuário com `ID 123`.<br/>
Os endpoints são importantes para o funcionamento das API pois estabelecem e permitem uma comunicação padronizada entre as partes de um sistema.
- Permitem a integração entre sistemas.
- Facilitam a comunicação entre *frontend* e *backend*.
- Seguem padrões para garantir segurança e organização na API.

Ou seja, um **endpoint de API** é o ponto de acesso para consumir os serviços de uma API. Um exemplo de um endpoint usando uma URI que acessa um recurso em NodeJs com express seria:
```js
const express = require("express");
const cors = require("cors");

const app = express();
const PORT = 3000;

// habilita CORS para permitir requisições externas
app.use(cors());

// rota GET simples
app.get("/api/boas-vindas", (req, res) => { // URI do endpoint da API
  res.send("Seja bem-vindo, Raphael!");
});

// inicia o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
```

## CACHING

## VERSIONAMENTO
Com o crescimento da aplicação é comum que novos recursos sejam acrescentados à API, ou mesmo recursos existentes podem ter seus formatos de uso modificados ou removidos. É por isso que realizar o versionamento da API é uma boa prática, pois isso permite que usuários que utilizam uma versão antiga não *quebrem* seu funcionamento.<br/>
Existem várias formas de se versionar uma API, algumas delas são:

1. **url path**: `example.com/v1/users`
2. **url params**: `example.com/users?v=1`
3. **url subdomain**: `apiv1.example.com/users`
4. **custom header field**: `X-API-Version: 1`
5. **`Accept` Header custom MIME**: `Accept: application/vnd.api_name.v2+json`
6. **`Accept` Header version option**: `Accept: application/vnd.api_name+json;version=2.0`

## TROUBLESHOOTING
Eventualmente, uma requisição pode retornar um possível erro, seja por falha no formato da requisição, seja por causas internas referentes ao servidor, ou outras infinidades de possíveis causas. Isso não significa que o retorno apresentado seja uma mensagem clara que não deixa dúvidas sobre o real motivo do ocorrido. A gerência de erros em API RESTful é informar ao requisitante uma mensagem que retrate de fato a razão do erro, com informações úteis para possíveis soluções. Mais do que isso, usar a melhor semântica possível ao erro e o uso de um status code adequado, que não seja genérico e sim útil.<br/>
Por exemplo, a seguinte API possui o recurso chamado `/users` e disponibiliza apenas o verbo `GET`, quando outro método além deste é utilizado, o seguinte erro é retornado:
```bash
curl -i -X PUT http://httpplaceholder.com/users # >
HTTP/1.1 404 Not Found                          # <
```
Apesar do status code retornar algo que é verdade — pois realmente não existe o método informado no recurso solicitado — essa respota não é a mais *clara*, visto que existe o código **`405 Method Not Allowed`**, que se encaixaria perfeitamente neste caso.
```bash
curl -i -X PUT http://httpplaceholder.com/users # >
HTTP/1.1 405 Method Not Allowed                 # <
```

Mais um exemplo seria de um cliente que solicita uma representação em um formato específico, mas que não está disponível no servidor. O código correto a se usar para informar uma representação não disponível seria o **`406 Not Acceptable`**.
```bash
curl -i http://httpplaceholder.com/users -H "Accept: abc/xyz" # >
HTTP/1.1 406 Not Acceptable                                   # <
```

Outro exemplo do uso correto do status code seria de um cliente que envia uma requisição `POST` com um `Content-Type` não suportado pelo servidor. O código correto a se retornar seria o **`415 Unsupported Media Type`**.
```bash
curl -X POST -i http://httpplaceholder.com/users -H "Content-Type: application/fake" -d "Weirdly Formatted Data" # >
HTTP/1.1 415 Unsupported Media Type                                                                              # <
```

Este é outro exemplo de uma boa semântica com o status code, seria de uma requisição `POST` que é enviada ao servidor com um JSON mal formatado. O retorno correto do servidor deve conter o status code **`400 Bad Request`**, e também uma mensagem no corpo da resposta detalhando a causa do erro — podendo ser até mesmo a *stack trace*.
```bash
curl -X POST -i http://httpplaceholder.com/users -H "Content-Type: application/json" -d '{name: "Raphael"}' # >

HTTP/1.1 400 Bad Request                                                                                    # <
SyntaxError: Unexpected token in JSON at position 1                                                         # <
```

Agora, este exemplo demonstra o tipo de código correto ao responder uma requisição `DELETE`. É comum esperar uma mensagem de sucesso `200 OK` ao realizar a remoção do recurso, porém o mais adequado seria usar o código **`204 No Content`**, que indica ao solicitante que a requisição ocorreu bem e que não existe nenhum conteúdo adicional a ser retornado.<br/>
Mas imaginemos que o solicitante então realiza uma requisição `GET` do mesmo recurso para verificar se este foi realmente removido. O código de status correto então seria o **`404 Not Found`**, pois de fato o recurso não existe mais no banco de dados.
```bash
curl -X DELETE -i http://httpplaceholder.com/users/1 # >
HTTP/1.1 204 No Content                              # <

curl -i http://httpplaceholder.com/users/1 # >
HTTP/1.1 404 Not Found                     # <
```
Caso seja possível identificar que o recurso solicitado já existiu no banco de dados, um outro código mais descritivo ainda poderia ser usado, o **`410 Gone`**.
```bash
curl -X DELETE -i http://httpplaceholder.com/users/1 # >
HTTP/1.1 204 No Content                              # <

curl -i http://httpplaceholder.com/users/1 # >
HTTP/1.1 410 Gone                          # <
```

Por fim, um último exemplo é de uma requisição `POST` para a criação de um usuário, mas que já existe no banco de dados, o status code adequado para esta situação seria o **`409 Conflict`**, que informa ao cliente que deve-se resolver um conflito para que então realize a requisição novamente.
```bash
curl -X POST -i http://httpplaceholder.com/users -H "Content-Type: application/json" -d '{"email": "raphael@email.com"}' # >

HTTP/1.1 409 Conflict                                                                                                    # <
{"message":"Email raphael@email.com already exists on DB."}                                                              # <
```

Existem muitas maneiras de se resolver ou informar os possíveis erros que podem surgir, sempre deve-se buscar a maneira mais semântica de se expôr a informação que pode ser usada para uma possível solução.

## REST & RESTful APIs
**R**epresentational **S**tate **T**ransfer é um *estilo de arquitetura* para a criação de APIs, que define regras e princípios para permitir que sistemas se comuniquem pela web de forma simples, padronizada, eficiente e escalável, usando o protocolo HTTP. Uma **API RESTful** nada mais é do que uma API que segue os princípios REST.<br/>
O REST nasceu com o intuito de formalizar um conjunto de melhores práticas, denominadas **constraints**, que tinham como objetivo determinar a forma na qual padrões como HTTP e URI deveriam ser modelados, aproveitando de fato todos os recursos oferecidos por estes. Pode-se dizer que, as constraints são os princípios fundamentais da arquitetura REST que definem como um *sistema RESTful* deveria ser estruturado, ou mesmo que são regras obrigatórias que uma API deve seguir para ser considerada verdadeiramente RESTful.<br/>
As 6 principais REST constraints são:
1. **Client-Server (Cliente-Servidor)**: Separação clara entre cliente e servidor. O cliente não sabe *como* o servidor implementa os dados, e o servidor não sabe *como* o cliente os usa.
2. **Stateless (Sem Estado)**: Cada requisição ao servidor não deve ter ligação com requisições anteriores ou futuras, sendo cada uma única e completa, ou seja, cada requisição do cliente deve conter todas as informações necessárias para que ela seja tratada com sucesso pelo servidor, e o servidor **não deve manter** nenhum estado da sessão entre as requisições.
3. **Cacheable (Cacheável)**: As respostas devem permitir serem armazenadas em cache. Isso melhora desempenho e escalabilidade.
4. **Uniform Interface (Interface Uniforme)**: A comunicação entre cliente e servidor deve usar uma interface padronizada, como HTTP + URLs + métodos como GET, POST e etc.
5. **Layered System (Sistema em Camadas)**: A arquitetura pode ser dividida em camadas intermediárias para permitir escalabilidade, como proxies, gateways, firewalls, balanceador de cargas e etc, e o cliente não precisa conhecer essas camadas.
6. **Code-on-Demand (Código sob Demanda)**: O servidor _pode_ enviar código executável ao cliente, como scripts JavaScript, para expandir a funcionalidade e flexibilidade do cliente.

Em resumo, constraints são as regras base para se criar uma API RESTful, garantindo simplicidade, escalabilidade, performance e interoperabilidade. Toda API RESTful deve seguir pelo os 5 primeiros princípios, o 6º é opcional usado em caso de necessidade ou se houver espaço para aplicação.

**HTTP verbs**
| MÉTODO   | AÇÃO           | USO                              |
| -------- | -------------- | -------------------------------- |
| `GET`    | **READ**       | Buscar recursos.                 |
| `POST`   | **CREATE**     | Criar um novo recurso.           |
| `PUT`    | **OVERWRITE**  | Substituir um recurso existente. |
| `PATCH`  | **UPDATE**     | Alterar parcialmente um recurso. |
| `DELETE` | **REMOVE**     | Apagar um recurso.               |

**Exemplo de endpoints RESTful: Interface Uniforme**<br/>
Para manipular um recurso `usuário` via interface RESTful:

| AÇÃO                                                             | MÉTODO           | ENDPOINT      |
| ---------------------------------------------------------------- | ---------------- | ------------- |
| Obter todos usuários.                                            | `GET`            | `/usuarios`   |
| Obter um usuário (ID: 1).                                        | `GET`            | `/usuarios/1` |
| Criar um usuário.                                                | `POST`           | `/usuarios`   |
| Sobrescrever todos os dados de um usuário (ID: 1).               | `PUT`            | `/usuarios/1` |
| Alterar parcialmente atualizando os dados de um usuário (ID: 1). | `PATCH`          | `/usuarios/1` |
| Deletar um usuário (ID: 1).                                      | `DELETE`         | `/usuarios/1` |

### MODELO DE MATURIDADE
Apesar de que para API ser considerada RESTful ela precisa obrigatoriamente seguir todas as constraints, na prática, muitas vezes é necessário uma abordagem mais simples. Este modelo de maturidade propõe 4 níveis para alcançar a construção de uma API RESTful. Uma API que se encontra entre os níveis de 0 a 2 ainda não pode ser considerada RESTful, apenas APIs que cumprem todos os requistos dos 4 níveis são APIs que seguem adequadamente o modelo REST.

| NÍVEL | NOME        | CARACTERÍSTICA                                                           |
| ----- | ----------- | ------------------------------------------------------------------------ |
| 0     | POX         | Desorganização, nomenclarutas confusas e uso incorreto dos métodos HTTP. |
| 1     | RESOURCES   | Uso de **múltiplos endpoints** para recursos.                            |
| 2     | HTTP VERBS  | Uso correto dos **métodos HTTP**.                                        |
| 3     | **HATEOAS** | **Navegação via links embutidos nas respostas**.                         |

1. **POX**<br/>
Este nível trata do uso correto dos métodos adequados para cada situação, tanto `HTTP methods` quanto informações no cabeçalho `HTTP status code`.<br/>
Outro problema constantemente encontrado é a manipulação incorreta dos códigos de resposta HTTP, que são frequentemente manipulados nas mensagens geradas pela aplicação, o que impede que elementos de gateway e proxy trabalhem de forma adequada.

<table border="1">
  <tgroup>
    <th>REST</th>
    <th>MODEL</th>
    <th>METHOD</th>
    <th>URI: verb ✗ | substantive ✓</th>
    <th>ACTION</th>
    <th>TROUBLESHOOTING</th>
  </tgroup>
  <tr>
    <td rowspan="4">⛔</td>
    <td rowspan="4">RPC (POX)</td>
    <td><code>POST</code></td>
    <td>/salvarCliente</td>
    <td>criar</td>
    <td rowspan="4">
<pre>
<code>
HTTP/1.1 200 OK
Content-Type: text/xmlplain
<br/>
&lt;buscarCliente&gt;
  &lt;status&gt; CLIENTE NÃO ENCONTRADO &lt;/status&gt;
  &lt;codigo&gt; 404 &lt;/codigo&gt;
&lt;/buscarCliente&gt;
</code>
</pre>
    </td>
  </tr>
  <tr>
    <td><code>GET</code></td>
    <td>/buscarCliente/1</td>
    <td>visualizar</td>
  </tr>
  <tr>
    <td><code>POST</code></td>
    <td>/alterarCliente/1</td>
    <td>alterar</td>
  </tr>
  <tr>
    <td><code>GET/POST</code></td>
    <td>/deletarCliente/1</td>
    <td>remover</td>
  </tr>
</table>

APIs neste estado devem primeiro ser refatoradas adequando-se para que saim do nível 0, entrando assim no nível 1.

<table border="1">
  <tgroup>
    <th>REST</th>
    <th>MODEL</th>
    <th>METHOD</th>
    <th>URI: verb ✗ | substantive ✓</th>
    <th>ACTION</th>
    <th>TROUBLESHOOTING</th>
  </tgroup>
  <tr>
    <td rowspan="4">⛔</td>
    <td rowspan="4">RPC (POX)</td>
    <td><code>POST</code></td>
    <td>/salvarCliente</td>
    <td>criar</td>
    <td rowspan="4">
<pre>
<code>
HTTP/1.1 200 OK
Content-Type: text/xmlplain
<br/>
&lt;buscarCliente&gt;
  &lt;status&gt; CLIENTE NÃO ENCONTRADO &lt;/status&gt;
  &lt;codigo&gt; 404 &lt;/codigo&gt;
&lt;/buscarCliente&gt;
</code>
</pre>
    </td>
  </tr>
  <tr>
    <td><code>GET</code></td>
    <td>/buscarCliente/1</td>
    <td>visualizar</td>
  </tr>
  <tr>
    <td><code>POST</code></td>
    <td>/alterarCliente/1</td>
    <td>alterar</td>
  </tr>
  <tr>
    <td><code>GET/POST</code></td>
    <td>/deletarCliente/1</td>
    <td>remover</td>
  </tr>
  <tr>
    <td rowspan="4">✅</td>
    <td rowspan="4">RESTful</td>
    <td><code>POST</code></td>
    <td>/cliente</td>
    <td>criar</td>
    <td rowspan="4">
<pre>
<code>
HTTP/1.1 404 NOT FOUND
Content-Type: text/plain
<br/>
Resource not found.
</code>
</pre>
    </td>
  </tr>
  <tr>
    <td><code>GET</code></td>
    <td>/cliente/1</td>
    <td>visualizar</td>
  </tr>
  <tr>
    <td><code>PUT</code></td>
    <td>/cliente/1</td>
    <td>alterar</td>
  </tr>
  <tr>
    <td><code>DELETE</code></td>
    <td>/cliente/1</td>
    <td>remover</td>
  </tr>
</table>

1. **resources**<br/>
No nível 1, passa-se a usar recursos como forma de modelar e organizar a API. Neste nível não é necessário conhecer a funcionalidade de cada método, apenas o recurso ao qual se tem acesso.<br/>
Modelando corretamente os recursos, deve-se usar os métodos adequados para cada situação, para que se crie todas as interações necessárias sob um recurso.

<table border="1">
  <tgroup>
    <th>REST</th>
    <th>MODEL</th>
    <th>METHOD</th>
    <th>URI: verb ✗ | substantive ✓</th>
    <th>ACTION</th>
    <th>TROUBLESHOOTING</th>
  </tgroup>
  <tr>
    <td rowspan="4">✅</td>
    <td rowspan="4">RESTful</td>
    <td><code>POST</code></td>
    <td>/cliente</td>
    <td>criar</td>
    <td rowspan="4">
<pre>
<code>
HTTP/1.1 404 NOT FOUND
Content-Type: text/plain
<br/>
Resource not found.
</code>
</pre>
    </td>
  </tr>
  <tr>
    <td><code>GET</code></td>
    <td>/cliente/1</td>
    <td>visualizar</td>
  </tr>
  <tr>
    <td><code>PUT</code></td>
    <td>/cliente/1</td>
    <td>alterar</td>
  </tr>
  <tr>
    <td><code>DELETE</code></td>
    <td>/cliente/1</td>
    <td>remover</td>
  </tr>
</table>

2. **HTTP methods**<br/>
Neste nível, o HTTP deixa de exercer um papel apenas de transporte e passa a exercer um papel semântico na API, ou seja, seus verbos passam a ser utilizados com o propósito para que foram criados.<br/>
A utilização destes métodos bem como a tratativa correta dos códigos de resposta, permitem a modelagem e interação com os recursos presentes em uma API.

**ENVIANDO**
```xml
POST /cliente

<Cliente>
  <Nome>Raphael K. Dias Santos</Nome>
</Cliente>
```

**RECEBENDO**
```bash
201 Created
Location: /cliente/1
```

Nos exemplos acima, como foi solicitada a **criação de um recurso `POST`**, nada mais adequado do que uma resposta que informe que o **recurso foi criado com sucesso `HTTP status code: 201 Created`**. Além disso, um importante aspecto é a presença do header `Localtion`, que informa em qual endereço o recurso criado encontra-se disponível.<br/>
O uso dos verbos HTTP de forma correta — com recursos e respostas de status code e header — ajudam os roteadores, proxys, getaways e qualquer outra camada que se comunique com a aplicação a lidar melhor com o tráfego da informação.

3. **HATEOAS**<br/>
**H**ypermedia **A**s **T**he **E**ngine **O**f **A**pplication **S**tate é um conceito presente no dia a dia de todos os usuários da web, que tem como elemento principal uma representação **hypermedia**, que permite um documento descrever seu estado atual e quais os seus relacionamentos com outros futuros estados.<br/>
Uma das constraints que definem o REST é justamente ser *stateless*, que quer dizer que uma requisição não deve conhecer o que ocorreu antes ou depois de obter sua resposta, e o HATEOAS resolve justamente este problema. Hypermedia de uma forma geral no conceito de HTTP, é a possibilidade de um documento se ligar a outro, e o HATEOAS é a ligação do documento não com outros, mas com ele próprio e seus possíveis estados, este conceito diz que **o retorno de uma requisição — ou seja, uma resposta — pode conter no seu corpo elementos que informem o seu relacionamento com outros futuros estados do próprio documento**, fazendo com que assim, a resposta tenha um *"início, meio e fim"*, sem manter em aberto um estado.<br/>
Como no exemplo abaixo, a própria resposta carrega consigo informações do que é possível realizar com o recurso em questão, ou seja, trata dela mesma, informando ao solicitante que é possível remover o recurso utilizando o link informado ou realizar uma ação utilizando outro link informado — no caso, enviar uma notificação através do programa no endpoint informado.
```xml
GET /cliente/1

HTTP/1.1 200 OK

<Cliente>
  <Id>1</Id>
  <Nome>Raphael K. Dias Santos</Nome>
  <link rel="deletar" href="/cliente/1"/>
  <link rel="notificar" href="/cliente/1/notificacao"/>
</Cliente>
```

```json
GET /users/100

{
  "id": 100,
  "name": "Raphael",
  "email": "ralph@email.com",
  "_links": {
    "self": { "href": "/users/100" },
    "edit": { "href": "/users/100", "method": "PUT" },
    "delete": { "href": "/users/100", "method": "DELETE" }
  }
}
```

O HATEOAS é basicamente um documento trazer consigo — falando por si mesmo — quais são as possíveis interações com ele mesmo através do corpo da mensagem de retorno da requisição, ou seja, se ligar com seu *possível estado futuro*, informando ao solicitante o que pode ser feito com ele próprio — assim trazendo consigo **todas** as informações necessárias que a requisição precisa para encerrar a ligação.<br/>
**Em resumo, o HATEOAS significa que uma API RESTful deve permitir que o cliente descubra dinamicamente quais ações estão disponíveis para um recurso através de informações em links no corpo da mensagem enviada nas respostas da API.**<br/>
Para que essas informações façam sentido, o cliente deverá entender o significado dos relacionamentos informados para que de fato consiga consumir de forma adequada essas informações, ao invés de *procurar saber* de antemão para onde ir, o servidor o guia através das hipermídias — links, como em um site.<br/>
Dessa forma a resposta já informa quais ações são possíveis e o cliente pode navegar na API, assim a API se torna autoexplicativa, desacoplando o frontend do backend e pode evoluir de maneira independente sem quebrar o cliente.

## SOAP
**S**imple **O**bject **A**ccess **P**rotocol é um protocolo que se utiliza envelopado no HTTP para realizar chamadas **RPC** — Remote Procedure Call. Diferente do REST, que é apenas um modelo arquitetural de requisições HTTP simples, e suporta vários tipos de formatos como XML, JSON e YAML, o SOAP suporta somente XML.

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/banco_de_dados.md">next</a>