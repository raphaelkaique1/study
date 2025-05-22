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

## `URI`
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

## `URL`
Uma **U**niform **R**esource **L**ocator _é apenas uma URI que inclui o **endereço de acesso do recurso**_, este tipo de URI localiza o recurso através do seu endereço **completo** disponível na rede . **Ou seja, toda URL é uma URI, mas nem toda URI é uma URL.**
> **recurso:** `autores` — **url**: **`https://website.com/autores`** (**protocolo + uri + recurso**)

## `URN`
Um **U**niform **R**esource **N**ame é um tipo de URI que usa o **URN Scheme**, *que tem por objetivo a identificação única do recurso de forma persistente e independente da sua localização*. Seu funcionamento necessita de um resolvedor, que é o responsável por interpretar a URN dada traduzindo em 1 ou mais URLs que encaminham para o recurso especificado.

## `IRI`
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
app.get("/api/boas-vindas", (req, res) => { // URI do end point da API
  res.send("Seja bem-vindo, Raphael!");
});

// inicia o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
```

## REST & RESTful APIs
**R**epresentational **S**tate **T**ransfer é um *estilo de arquitetura* para a criação de APIs, que define regras e princípios para permitir que sistemas se comuniquem pela web de forma simples, padronizada, eficiente e escalável, usando o protocolo HTTP. Uma **API RESTful** nada mais é do que uma API que segue os princípios REST.<br/>
O REST nasceu com o intuito de formalizar um conjunto de melhores práticas, denominadas **constraints**, que tinham como objetivo determinar a forma na qual padrões como HTTP e URI deveriam ser modelados, aproveitando de fato todos os recursos oferecidos por estes. Pode-se dizer que, as constraints são os princípios fundamentais da arquitetura REST que definem como um *sistema RESTful* deveria ser estruturado, ou mesmo que são regras obrigatórias que uma API deve seguir para ser considerada verdadeiramente RESTful.<br/>
As 6 principais REST constraints

| # | nome                                       | descrição                                                                                                                                              |
|---|--------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1 | **Client-Server (Cliente-Servidor)**       | **Separação clara entre cliente e servidor.** O cliente não sabe *como* o servidor implementa os dados, e o servidor não sabe *como* o cliente os usa. |
| 2 | **Stateless (Sem Estado)**                 | **Cada requisição do cliente deve conter todas as informações necessárias.** O servidor **não mantém** o estado da sessão entre as requisições.        |
| 3 | **Cacheable (Cacheável)**                  | **As respostas devem indicar se podem ser armazenadas em cache.** Isso melhora desempenho e escalabilidade.                                            |
| 4 | **Uniform Interface (Interface Uniforme)** | **A comunicação entre cliente e servidor deve usar uma interface padrão**, como HTTP + URLs + métodos como GET, POST e etc.                            |
| 5 | **Layered System (Sistema em Camadas)**    | **A arquitetura pode ser dividida em camadas intermediárias, como proxies, gateways, firewalls e etc, e o cliente não precisa saber disso.**           |
| 6 | **Code-on-Demand (Código sob Demanda)**    | **O servidor _pode_ enviar código executável ao cliente, como scripts JavaScript, para expandir a funcionalidade.**                                    |

Em resumo, constraints são as regras base para se criar uma API RESTful, garantindo simplicidade, escalabilidade, performance e interoperabilidade. Toda API RESTful deve seguir pelo os 5 primeiros princípios, o 6º é opcional usado em caso de necessidade ou se houver espaço para aplicação.

### Métodos HTTP usados em APIs RESTful

| Método   | Ação          | Usado para                              |
| -------- | ------------- | --------------------------------------- |
| `GET`    | **Ler**       | Buscar recursos (ex: lista de usuários) |
| `POST`   | **Criar**     | Criar um novo recurso                   |
| `PUT`    | **Atualizar** | Substituir um recurso existente         |
| `PATCH`  | **Atualizar** | Alterar parcialmente um recurso         |
| `DELETE` | **Remover**   | Apagar um recurso                       |

### Exemplo de endpoints RESTful: usuários
```http
GET    /usuarios    → Lista todos os usuários
GET    /usuarios/1  → Detalhes do usuário com ID 1
POST   /usuarios    → Cria um novo usuário
PUT    /usuarios/1  → Substitui todos os dados do usuário 1
PATCH  /usuarios/1  → Altera parcialmente os dados do usuário 1
DELETE /usuarios/1  → Deleta o usuário com ID 1
```

### Exemplo prático: Interface Uniforme
Para manipular um recurso `usuário` via interface RESTful:

| Ação                 | Método HTTP      | Endpoint      |
| -------------------- | ---------------- | ------------- |
| Obter todos usuários | `GET`            | `/usuarios`   |
| Obter um usuário     | `GET`            | `/usuarios/1` |
| Criar um usuário     | `POST`           | `/usuarios`   |
| Atualizar um usuário | `PUT` ou `PATCH` | `/usuarios/1` |
| Deletar um usuário   | `DELETE`         | `/usuarios/1` |

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/banco_de_dados.md">next</a>