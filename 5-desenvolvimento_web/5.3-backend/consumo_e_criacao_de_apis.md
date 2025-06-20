# [API](https://jsonapi.org)
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
Por convenção, a boa prática diz que a nomeação de um recurso deve sempre ser formada por um **substantivo no plural**, nunca por um **verbo**, pois um recurso trata-se de algo que se deseja manipular, por exemplo `user`, `network`, `description` e etc.

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

## [CACHING](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Guides/Caching)
Cache é uma técnica de armazenamento temporário de dados já processados, que os disponibiliza para acelerar acessos futuros e sua reutilização, eliminando a necessidade de refazer uma operação custosa como buscar dados em um banco por exemplo.<br/>
Isso reduz as chamadas à API e acessos desncessários ao banco de dados, economizando no custo computacional e consequentemente aumentando a performance da aplicação.<br/>
Existem diferentes maneiras e técnicas de se realizar caching, podendo se feitas no frontend ou backend, sendo o mais recomendado realizar o cache no cliente, pois o objetivo do caching HTTP é eliminar o envio de requisições o máximo possível, e caso uma requisição precise ser feita, deve-se alimentá-la com o máximo possível de informações para que ela não se repita por várias vezes ou reduzir os dados de resposta, quanto mais próximos o cliente e o cache estiverem, mais rápida será a resposta. Além disso, quando uma resposta é reutilizável, o servidor de origem não precisa processar a solicitação — portanto, não precisa analisar e rotear a solicitação, restaurar a sessão com base no cookie, consultar o banco de dados para obter resultados ou renderizar o mecanismo de modelo. A operação adequada do cache é fundamental para a integridade do sistema:
- **local — ideal**: armazenadas no lado do cliente, ou seja, utilizando as ferramentas disponibilizadas pelo browser como `localStorage`, `sessionStorage`, `IndexDB`, `caches` e etc.
- **memória — custoso**: feita no servidor, armazenando os dados durante a requisição e mantendo-os durante a sessão.
- **distribuído**: feito em intermediários como CDNs, roteadores, servidores de proxy e etc.

O ideal é realizar cache de operações que consomem muitos recursos computacionais, porém, não se deve realizar cache de informações que mudam com muita frequência, pois isso irá consumir memória desnecessariamente. Alguns dados real-time precisam ser buscados todas as vezes, o restante dos dados pode ser cacheado por um período de tempo, seja alguns segundos ou um dia, dependendo da frequência em que os dados mudam. Deve-se haver um equilíbrio, e para isso usa-se o bom senso, armazenando em cache apenas informações custosas de se obter mas que são valores semi-constantes e *estáveis*, ou seja, valores importantes que se obtidos uma vez não serão alterados num futuro próximo.<br/>
Outra questão a ser levada em consideração, é a verificação da validade da informação armazenada, pois como o cache guarda dados consultados, estes podem sofrer alterações e atualizações de estado, e a **cache invalidation** realiza essa conferencia através de métodos HTTP no lado do cliente.<br/>
Este processo atualiza ou remove os dados quando estes se tornam obsoletos, garantindo que o cliente não use informações desatualizadas. Isso é fundamental porque o cache visa melhorar o desempenho, mas também pode causar inconsistências se não for bem controlado.<br/>
O protocolo HTTP define um conjunto de cabeçalhos de cache que ajudam a controlar por quanto tempo o cliente pode confiar na resposta armazenada e quando deve realizar uma nova requisição para atualizar seus dados em cache.

1. **`Cache-Control`**: mecanismo de expiração que informa ao cliente por quanto tempo manter uma resposta em cache — em segundos. No exemplo a seguir, a resposta pode ser usada por até 3600 segundos (1 hora): `Cache-Control: max-age=3600`.<br/>
Além deste parâmetro, existem outras diretivas sobre cache que podem ser usadas:
   - **`no-store`**: não armazene nada em cache.
   - **`no-cache`**: a resposta pode ser armazenada, mas precisa ser validada com o servidor antes de ser usada.
   - **`max-age`**: define o tempo em que a resposta pode permanecer armazenada antes de expirar. Este parâmetro pode ser tanto pelo browser, quanto por intermediários como roteadores, servidores de proxy, CDNs e etc, permitindo-os realizar o cache do recurso.
   - **`must-revalidate`**: deve validar com o servidor ao expirar.
   - **cache scope**: define *"quem"* pode realizar o cache, onde o **`public` permite que qualquer um — seja o cliente ou intermediários — possa realizar o armazenamento dos dados**, enquanto o **`private` indica que o cache pode ser realizado apenas pelo browser**.
     - **`public`**: este cache está localizado entre o cliente e o servidor e pode armazenar respostas que podem ser compartilhadas entre os usuários. Por outro lado, se o conteúdo personalizado for armazenado em um cache que não seja um cache privado, outros usuários poderão recuperar esse conteúdo — o que pode causar vazamento não intencional de informações.
     - **`private`**: cache vinculado a um cliente específico — normalmente a um navegador. Como a resposta armazenada não é compartilhada com outros clientes, um cache privado pode armazenar uma resposta personalizada para esse usuário. Os conteúdos personalizados são geralmente controlados por cookies, mas a presença de um cookie nem sempre indica que é privado e, portanto, um cookie por si só não torna a resposta privada.
2. **`ETag — Entity Tag`**: cabeçalho utilizado para reduzir a largura de banda, possui um identificador único em formato de *hash* que indica a versão do recurso, comparando o hash que possui com o hash enviado pelo servidor, se o hash for o mesmo então o recurso pode ser reutilizado, se o recurso tiver sido alterado no servidor então o hash da resposta do servidor virá diferente, daí o servidor envia os dados para que o cliente possa se atualizar. O servidor envia `ETag: "abc123"` na resposta à requisição por exemplo, então o cliente usa **`If-None-Match:`**` "abc123"` para validar, se o recurso não mudou, o servidor responde com **`HTTP/1.1 304 Not Modified`**, o que indica ao cliente que os dados que ele tem podem ser reutilizados, se o recurso tiver sido alterado, o servidor envia os dados no lugar do HTTP Status Code.
3. **`Last-Modified & If-Modified-Since`**: alternativa semelhante ao `ETag` que utiliza datas no lugar de hashes. O cliente realiza a requisição do recurso com o cabeçalho `If-Modified-Since: Wed, 21 May 2025 10:00:00 GMT`, que informa ao servidor a última data dos dados salvos , então o servidor envia o cabeçalho com a data da última alteração dos dados `Last-Modified: Wed, 21 May 2025 10:00:00 GMT` que é armazenada no cache do solicitante. Com essa data salva, ao realizar uma nova requisição após algum período, antes de utilizar o cache o cliente envia uma nova solicitação ao servidor, novamente utilizando o cabeçalho com a data da última versão que possui dos dados `If-Modified-Since: Wed, 21 May 2025 10:00:00 GMT`, então se os dados permaneceram os mesmos desde a data informada, o servidor retorna ao cliente `HTTP/1.1 304 Not Modified`, mas caso houveram alterações desde a data informada pelo cliente então o servidor retorna os dados requisitados com o status code `HTTP/1.1 200 OK`, assim atualizando o cache do cliente.

Utilizando estes cabeçalhos para controle de validade da informação, a invalidação dos dados pode ocorrer de várias maneiras, podendo ser pela expiração natural quando o `max-age` é atingido, ou o servidor indica através do `ETag` ou `Last-Modified` se houve alterações nos dados solicitados, além de também permitirem que o cliente force o envio dos dados utilizando `no-cache` em sua requisição. Este métodos quando utilizados corretamente, garantem economia de recursos computacionais e a melhor performance possível que a aplicação pode ter.

[**MIME caching**](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Reference/Headers/Vary)<br/>
O browser por padrão usa o **método HTTP** juntamente com a **URI** para criar uma chave para registrar e recuperar as respostas cacheadas (**chave do cache: `[método HTTP] + [URI]`**), por exemplo `GET /api/dados`. Como é possível realizar várias requisições para diferentes tipos de representações usando o header `Accept`, mesmo que hajam várias representações diferentes, por se tratar da mesma chave, o browser ficará confuso sobre qual resposta deve fazer cache. Vejamos como exemplo um backend que retorne representações diferentes do mesmo recurso dependendo do valor do header `Accept`:
```http
GET /api/dados
Accept: application/json
```
```http
GET /api/dados
Accept: text/csv
```
**_*São a mesma URI e método, porém, solicitações de diferentes representações._** O navegador não leva o header `Accept` em consideração por padrão como parte da chave de cache. Então, pode ocorrer de o cliente requisitar `GET /api/dados` com `Accept: application/json` e armazenar a resposta sob a chave `GET /api/dados`, e em outro momento requisitar `GET /api/dados` no formato `Accept: text/csv`, mas acabar retornando o JSON do cache porque a chave é a mesma.

**Para informar ao navegador que a resposta depende de um cabeçalho como `Accept`, o servidor deve enviar o cabeçalho HTTP `Vary: Accept`, que diz ao cliente que a resposta depende do valor do header `Accept`, ou seja, indica ao navegador para utilizar itens adicionais — como o valor do `Accept` — para a composição da chave do cache, assim podendo diferenciar cada requisição `chave do cache: [método HTTP] + [URI] + [valor do Accept]`, e que cada valor diferente deve ser tratado como uma nova versão. Dessa forma o navegador (ou o cache intermediário) cria entradas de cache separadas para requisição.** Por exemplo, chave do cache: **`GET /api/dados application/json`**. Este exemplo demonstra como seria essa interação:

**REQUISIÇÃO**
```http
GET /api/dados
Accept: application/json
```

**RESPOSTA**
```http
HTTP/1.1 200 OK
Content-Type: application/json
Vary: Accept
Cache-Control: max-age=3600

{ "dados": [1, 2, 3] }
```

Além do tipo de representação, também é possível indicar outros parâmetros para a criação de uma chave única como por exemplo:
**REQUISIÇÃO**
```http
GET /api/dados
Accept: application/json
Accept-Language: br
Accept-Encoding: gzip
```
> **chave cache: `GET /api/dados application/json:br:gzip`**

- **`Accept-Language`**: indica ao servidor em qual idioma a representação do recurso deve ser retornado (se disponível).
- **`Accept-Encoding`**: este cabeçalho é usado em casos de requisição de recursos grandes para o tráfego se enviados inteiros, então o cliente solicita ao servidor o envio do recurso em um formato compactado (se o servidor realizar essa tarefa) e resolverá a descompactação quando receber a resposta.


**RESPOSTA**
```http
HTTP/1.1 200 OK
Vary: Accept, Accept-Language, Accept-Encoding
Cache-Control: max-age=3600
Content-Type: application/json
Content-Language: br
Content-Encoding: gzip
Content-Length: 1024
```

## COOKIES
O padrão do [esquema de autenticação HTTP](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Guides/Authentication) Basic e Digest são **stateless**, o que significa que o servidor não armazena informações da sessão do cliente entre as requisições, o que significa que, se o cliente quiser acessar um recurso privado, deve se autenticamente novamente a cada requisição. Cada requisição enviada pelo cliente precisa conter todas as informações necessárias para que o servidor possa entendê-las isoladamente, sem depender de memória ou contexto anterior.<br/>
De forma detalhada, os mecanismos padrões de autenticação com HTTP são definidos como Basic e Digest, ambos foram projetados seguindo as constraints REST, ou seja, possuem uma arquitetura stateless. Neles o conjunto `login` e `senha` é incluído em cada requisição, codificado em **Base64** para autenticação Basic, e com um **hash MD5** para autenticação Digest. O header é construído no seguinte formato: **`Authorization: auth-scheme hashed-credentials`**.<br/>
Em retorno à requisição feita com o header `Authorization`, caso as credenciais não possam ser validadas e autorizadas, o servidor deve retornar `401 unauthorized` e setar o header `WWW-Authenticate` com o tipo de autenticação correta a ser usada, juntamente com o domínio `realm`, exemplo: `WWW-Authenticate: authenticate_type realm="Domain"`. Um exemplo, seria uma aplicação que possui várias páginas que solicitam autorização para o acesso, e ao enviar uma requisição do tipo Digest, o servidor retorna com a informação do tipo de codificação que o domínio espera e o `realm` com o domínio, no caso `Perfil`, pois este mesmo site possui outro domínio chamado `Administracao` que requer outro tipo de autenticação para o acesso, diferenciando assim quem possui ou não a autenticação para acessar um determinado recurso em diferentes áreas da aplicação.
```http
HTTP/1.1 401 Unauthorized
WWW-Authenticate: Basic realm="Perfil"
```

A diretiva de domínio `realm` é opcional, ela indica a proteção de um determinado espaço, pois em uma mesma aplicaçã podem existir diferentes áreas protegidas ou restritas usando diferentes esquemas de autenticação.

**[Basic](https://en.wikipedia.org/wiki/Basic_access_authentication)**<br/>
Na autenticação HTTP Basic, o cliente envia um header com as credenciais para a validação e login do usuário **em _toda_ requisição**: `Authorization: Basic <base64(user:password)>`; por exemplo: `Authorization: Basic am9objpwYXNz`. Utilizando o cURL, uma requisição com credenciais seria:
```bash
curl -u user_name:user-password@09 http://server.com
```
*O cURL realiza a conversão dos parâmetros do login para a base64 de forma automática.

**[Digest](https://en.wikipedia.org/wiki/Digest_access_authentication)**<br/>
Já o HTTP Digest é mais seguro que o Basic pois não envia os dados de login em base64, com ele também é possível enviar credenciais mas o header `Authorization: Digest ...` deve ser montado com base nas informações enviadas pelo servidor, para que sejam trafegadas de forma cifrada e com um *nonce* para evitar replay attacks.<br/>
Primeiro o cliente faz uma requisição sem autenticação, e então o servudir responde com um desafio `401 Unauthorized` e um header `WWW_Authenticate`, que deve ser respondido pelo cliente com a requisição autenticada, ou seja, com o desafio resolvido e os campos de autenticação preenchidos.
| FIELD       | SIGNIFICADO                                           |
| ----------- | ----------------------------------------------------- |
| `username`  | Nome de usuário.                                      |
| `realm`     | Recurso protegido (domínio de autenticação).          |
| `nonce`     | Valor único fornecido pelo servidor.                  |
| `uri`       | URI requisitada.                                      |
| `qop`       | Qualidade de proteção (`auth` ou `auth-int`).         |
| `nc`        | Contador de requisições (nonce count).                |
| `cnonce`    | Valor aleatório gerado pelo cliente.                  |
| `response`* | Hash MD5 calculado com todos os dados acima.          |
| `opaque`    | Valor fornecido pelo servidor que deve ser retornado. |

*A especificação do HTTP Digest define que o `response` deve ser gerado usando MD5:
```php
HA1 = MD5(username:realm:password)
HA2 = MD5(method:digestURI)
response = MD5(HA1:nonce:nc:cnonce:qop:HA2)
```

Exemplo de fluxo de uma requisição Digest:
1. **REQUISIÇÃO CLIENTE**
```http
GET /area-restrita HTTP/1.1
Host: exemplo.com
```
1. **RESPOSTA SERVIDOR**
```http
HTTP/1.1 401 Unauthorized
WWW-Authenticate: Digest realm="area-segura",
                  qop="auth",
                  nonce="dcd98b7102dd2f0e8b11d0f600bfb0c093",
                  opaque="5ccc069c403ebaf9f0171e9517f40e41"
```
1. **REQUISIÇÃO CLIENTE**
```http
GET /area-restrita HTTP/1.1
Host: exemplo.com
Authorization: Digest username="raphael",
               realm="area-segura",
               nonce="dcd98b7102dd2f0e8b11d0f600bfb0c093",
               uri="/area-restrita",
               qop=auth,
               nc=00000001,
               cnonce="0a4f113b",
               response="6629fae49393a05397450978507c4ef1",
               opaque="5ccc069c403ebaf9f0171e9517f40e41"
```

Outro exemplo de requisição HTTP Digest usando `curl`. O cURL cuida de tudo automaticamente: ecebe o desafio do servidor, calcula os hashes e monta o header corretamente.
```bash
curl --digest -u raphael:password@09 https://exemplo.com/area-restrita
```

Mas a questão é que, basicamente toda aplicação web realiza a autenticação de usuários, porém, solicitar as credenciais do usuário a cada acesso à aplicação pode afetar a experiência do usuário, e é por isso que atualmente muitas aplicações web utilizam *Cookies*.<br/>
Cookies são pequenos arquivos de dados que um servidor envia ao navegador, o qual os armazena localmente para enviá-los de volta ao servidor em requisições futuras. Eles são usados para autenticação e login em sessões do usuário, armazenamento de preferências do site, rastreamento e analytics. Os headers fields `Cookie` e `Set-Cookie` podem ser usados na comunicação para definir as regras de armazenamento de estado. Cookies permitem ao servidor manter estado entre requisições — ou seja, tornar o sistema **stateful**.
- **`Set-Cookie` — server**: quando o usuário realiza um login na aplicação, o cliente envia a requisição para o servidor, este que então envia o cookie ao cliente para que armazene as credenciais, podendo ser uma chave de sessão ou token de autenticação, pois não se armazena dados de login diretamente no cookie.
```http
Set-Cookie: sessionId=abc123; Path=/; HttpOnly; Secure; Max-Age=3600
```
  - `sessionId`: chave-valor do cookie.
  - `Path`: define em quais caminhos o cookie será enviado.
  - `HttpOnly`: impede acesso via JavaScript `document.cookie`.
  - `Secure`: só envia o cookie por HTTPS.
  - `Max-Age`: define a validade em segundos.

- **`Cookie` — client**: ao realizar uma nova requisição para a mesma origem, o cliente envia automaticamente os dados de credenciais salvos, autenticando automaticamente aquele cliente para acessar os recursos do servidor.
```http
Cookie: sessionId=abc123
```

Por padrão, APIs RESTful usam *tokens JWT* no header **`Authorization`**. Para SPAs com domínios distintos, tokens JWT no `Authorization` geralmente são mais simples.<br/>
Quando um usuário utiliza um serviço, este deve ser identificado, geralmente com dados de login, mas enviar estes dados a cada requisição com certeza não é o ideal. Para tal, uma das soluções, é no momento em que o usuário realiza o login, ele recebe um token baseado em suas credenciais, e daí em diante este token servirá de identificação nas próximas requisições.

## API KEY
Quando uma aplicação oferece ferramentas para outras aplicações através de API, a autenticação pode ser feita através de uma **API KEY** ou **API secret token** como são conhecidas.<br/>
Uma API key é como um *hash*, ou seja, uma combinação única de letras e números, que é transmitida em todas as requisições para realizar a autenticação e identificação entre aplicações. Geralmente é combinada com os dados de login de usuário.<br/>
Como estas API keys trafegam entre servidor e cliente pela web, é importante que o servidor tenha configurado os **certificados SSL** para garantir a maior segurança possível.

## TOKEN
A autenticação baseada em token consiste em enviar os dados de login para o servidor e receber em troca um Token que será informado em cada requisição através do header `Authorization`.<br/>
Exemplo de requisição com cURL:

**REQUISIÇÃO**
```bash
curl -i http://www.example.com/login -H "Content-Type: application/json" -d '{"email":"ralph@email.com", "password":"secret@0909"}'
```

**RESPOSTA**
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 51
Connection: keep-alive
Server: thin
{"access_token":"6afc7f5db9eaaf7eab"}
```

**NOVA REQUISIÇÃO**
```bash
curl -i http://localhost:4567 -H 'Authorization: Bearer 6afc7f5db9eaaf7eab'
```
Essa requisição usa o token de autenticação para acessar um recurso protegido da API rodando na porta `4567` do servidor. Isso permite que a máquina cliente faça requisições autenticadas à API rodando no servidor `localhost` na porta `4567`, utilizando o token fornecido no login em cada requisição.<br/>
A diferença deste método para o método Basic HTTP, é que o Basic possui um formulário próprio que deve ser preenchido com o login e senha, enquanto que utilizando um token, deve-se também preencher um formulário, mas quem realiza o tratamento da informação nele contida é o servidor que se deseja acessar.<br/>
Este método é geralmente o escolhido para uso em Web APIs, porém não é considerado stateless pois o servidor precisará armazenar o Token, e isso caracteriza uma aplicação stateful. O servidor precisa armazenar o token para realizar a comparação quando receber uma requisição, para verificar se o token recebido é de fato um token gerado por ele próprio.

## STATELESS x STATEFUL
Uma das grandes vantagens de usar uma arquitetura stateless é economizar poder computacional e armazenamento pois, já que não se mantém um estado constante, não é necessário que a aplicação permaneça "segurando recursos" no servidor, talvez a única fraqueza do stateless seja quanto as requisições que necessitam de autenticação, pois enviar dados de credenciais em cada requisição pode representar uma brecha na segurança.<br/>
Em relação a aplicações stateful, tráfego constante de autenticação pode não ser uma preocupação constante, pois existem várias maneiras de se armazenar dados de login e utilizar métodos para autenticar o usuário, entretando, não está isento de problemas, pois no caso de API Keys, mesmo que sejam um método seguro, um detentor de uma chave pode acabar tendo sua chave vazada ou mesmo *emprestá-la* a outro desenvolvedor, o que pode ser um problema para a aplicação que fornece o servidor da API, ou mesmo no caso dos Tokens, onde é necessário o servidor manter o estado de todos os tokens gerados, o que pode ser desprendioso e custoso pois à medida que a quantidade de clientes cresce, também aumentam a quantidade de tokens para gerir, sem contar que cada cliente pode ter armazenado mais de 1 token, será necessário replicar os dados armazenados na medida em que se escala.<br/>
Existem técnicas para se contornar estes problemas em ambos, como por exemplo o **JWT**, que é uma maneira de autenticação e verificação autocontida, podendo realizar a validação sem a necessidade de se ter algum dado prévio sobre ele armazenado no servidor. Em todos os casos existem prós e contras, stateful não é necessariamente inseguro ou pesado, e stateless pode economizar recursos, mas também exigir validações constantes. Deve-se avaliar a melhor escolha para a aplicação de acordo com as necessidades e prioridades do projeto.

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

## [SWAGGER](https://swagger.io)
Este é um framework muito utilizado para design de projeto, construção seguindo *patterns* e documentação de APIs.

### [EDITOR](https://editor.swagger.io/)
Esta é uma ferramenta do swagger que permite projetar, estruturar e documentar a APIs HTTP RESTful no formato `YAML` e visualizar a documentação em tempo real sendo escrita em **MarkDown** para uma melhor visualização, e realizar o build da API em uma das muitas linguagens que ele suporta.<br/>

**CABEÇALHO INICIAL**<br/>
Ao escrever uma API no [swagger editor](https://swagger.io/docs/open-source-tools/swagger-editor/), é necessário configurar algumas informações no cabeçalho inicial que são obrigatórias:
- **openapi — string required**: especifica qual versão da especificação usada para o design da API.
- **info — object**: informa metadados sobre a API que podem ser usados pelo cliente caso necessário.
  - **title — string required**: nome da aplicação.
  - **version — string required**: versão da aplicação `MAJOR.MINOR.PATCH`.
  - **description — string**: uma breve descrição sobre a aplicação, pode-se usar a **[GFM syntax](https://docs.github.com/pt/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#GitHub-flavored-markdown)** para uma representação textual mais rica.
  - **termsOfService — string**: os termos de serviço para uso da API.
  - [**contact — object**](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/2.0.md#contact-object): informações de contato do desenvolvedor ou suporte da API.
  - [**license — object**](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/2.0.md#license-object): a licença utilizada pela API.
- **host — string**: url com o domínio do serviço.
- **schemes — string array**: lista de esquemas e protocolos que a API suporta.
- **produces — string array**: recursos e serviços (MIME Types) que a API disponibiliza.
- **definitions — object**: objeto que armazena os tipos de dados produzidos e consumidos nas operações.
- **basePath — string**: versão a API com URL base prefixada com o endereço de todos os caminhos dos endpoints e recursos.
- **[paths — object required](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/2.0.md#paths-object)**: contém os caminhos invididuais (podendo ser também caminhos em branco, ou seja, vazios) relativos dos endpoints, sendo anexao ao `basePath` para construir a URL completa. Devem **obrigatoriamente** iniciar com **`/`**.

Um exemplo de uma API básica que realiza um CRUD projetada no swagger seria:
```yaml
swagger: "2.0"
info:
  title: Swagger Sample App
  description: This is a sample server resources server.
  termsOfService: http://swagger.io/terms/
  contact:
    name: API Support
    url: http://www.swagger.io/support
    email: support@swagger.io
  license:
    name: Apache 2.0
    url: http://www.apache.org/licenses/LICENSE-2.0.html
  version: 1.0.1
host: api.swagger.com
schemes:
  - https
basePath: /v1
produces:
  - application/json
paths:
  /resources:
    get:
      summary: Resources Types
      description: Returns all Resources from the system that the user has access to.
      tags:
        - Resources
      responses:
        200:
          description: Available Resources.
          schema:
            type: array
            items:
              $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
    post:
      summary: Create Resource
      description: Create a new resource on the system.
      parameters:
        - name: resource
          in: body
          description: New Resource.
          required: true
          schema:
            $ref: '#/definitions/resources'
      tags:
        - Resources
      responses:
        201:
          description: New resource created.
          schema:
            $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
  /resources/{id}:
    get:
      summary: Return a Resource
      description: This endpoint returns the specified resource.
      parameters:
        - name: id
          in: path
          description: Resource ID.
          required: true
          type: integer
      tags:
        - Resources
      responses:
        200:
          description: Returns a Resource.
          schema:
            $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
    put:
      summary: Update Resource
      description: Updates the resource specified by ID.
      parameters:
        - name: resource
          in: body
          description: Resource Update.
          required: true
          schema:
            $ref: '#/definitions/resources'
      tags:
        - Resources
      responses:
        200:
          description: Resource updated.
          schema:
            $ref: '#/definitions/resources'
        404:
          description: Resource ID not found.
          schema:
            $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
    patch:
      summary: Edit Resource
      description: Edits the resource specified by ID.
      parameters:
        - name: resource
          in: body
          description: Resource Edited.
          required: true
          schema:
            $ref: '#/definitions/resources'
      tags:
        - Resources
      responses:
        200:
          description: Resource edits saved.
          schema:
            $ref: '#/definitions/resources'
        404:
          description: Resource ID not found.
          schema:
            $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
    delete:
      summary: Delete a Resource
      description: This endpoint deletes the specified resource.
      parameters:
        - name: id
          in: path
          description: Resource ID.
          required: true
          type: integer
      tags:
        - Resources
      responses:
        204:
          description: No Content.
          schema:
            $ref: '#/definitions/resources'
        410:
          description: Resource Gone.
          schema:
            $ref: '#/definitions/resources'
        404:
          description: Resource ID not found.
          schema:
            $ref: '#/definitions/resources'
        default:
          description: Unexpected error.
          schema:
            $ref: '#/definitions/error'
definitions:
  resources:
    type: object
    required:
      - name
      - description
    properties:
      id:
        type: integer
        description: A detailed description of the resources's features and characteristics.
      name:
        type: string
        description: Name of resources.
      description:
        type: string
        description: A general description of the resources.
  error:
    type: object
    properties:
      code:
        type: integer
        format: int32
      message:
        type: string
      fields:
        type: string
```

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/banco_de_dados.md">next</a>