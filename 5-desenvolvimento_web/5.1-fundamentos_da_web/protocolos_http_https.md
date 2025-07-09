# PROTOCOLOS
 **Requisições** são pedidos que o navegador faz a um servidor para receber ou enviar dados. Essas requisições geralmente seguem algum *protocolo*.
 Qualquer aplicação que utiliza comunicação em rede, utiliza algum **protoloco de comunicação**, para que isso seja feito com maior segurança, utilizam-se protocolos com **[SSL/TLS](https://www.youtube.com/watch?v=BVqFpbFiV34)**.<br/>
 O **SSL (Secure Sockets Layer)** e o **TLS (Transport Layer Security)** são protocolos criptográficos fundamentais para a segurança das comunicações na internet. Eles garantem a confidencialidade, integridade e autenticidade dos dados transmitidos entre um cliente e um servidor.

**SSL (Secure Sockets Layer):**
Desenvolvido pela Netscape na década de 1990, o SSL foi o primeiro protocolo amplamente adotado para proteger as comunicações na web. Ele utiliza criptografia para assegurar que os dados transmitidos não possam ser interceptados ou alterados por terceiros. No entanto, o SSL possui vulnerabilidades conhecidas e foi gradualmente substituído pelo TLS.

**TLS (Transport Layer Security):**
O TLS é a evolução do SSL, projetado para corrigir as falhas de segurança do SSL e oferecer uma criptografia mais robusta. Ele é amplamente utilizado para proteger protocolos como HTTP (resultando no HTTPS), SMTP, FTP e outros. O TLS opera em camadas inferiores do modelo OSI, garantindo que os dados sejam transmitidos de forma segura entre as partes envolvidas.

**Como o SSL/TLS Funciona:**

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
| **FTP/SFTP**   | Para transferir arquivos. Pouco usado diretamente no navegador.                               |
| **WS/WSS**     | Versões insegura e segura do WebSocket.                                                       |
| **Data URLs**  | Para embutir dados diretamente em um link (`data:text/html,...`).                             |
| **Blob URLs**  | Para lidar com arquivos gerados no browser.                                                   |

## [HTTPS: Let's Encrypt](https://letsencrypt.org/pt-br/how-it-works/)
Feita a conexão segura no canal, usamos os métodos **[HTTP](https://developer.mozilla.org/pt-BR/docs/Web/HTTP)** para definir a ação que o cliente deseja realizar sobre um recurso no servidor. O **H**yper **T**ext **T**ransfer **P**rotocol é o protocolo de comunicação que permite a transferência de dados na web, definindo como os clientes e servidores conversam entre si para trocar recursos como dados para um banco de dados, páginas HTML, mídia e etc. Seu funcionamento segue o modelo client-server, onde o cliente envia uma requisição para o servidor, que processa e responde com dados.

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

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.3-ferramentas_de_monitoramento/prometheus_grafana.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#fundamentos_da_web">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/html5_css3_sass_less.md">next</a>