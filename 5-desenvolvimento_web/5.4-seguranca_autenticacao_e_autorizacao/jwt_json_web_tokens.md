# TOKEN
Ao apresentar uma carteira de motorista ou um passaporte, estamos mostrando uma documentação que uma autoridade o verificou, essa documentação fornece as credenciais.<br/>
Um certificado digital atua como uma credencial eletrônica para verificar uma pessoa ou sistema digitalmente. Nesse aspecto, um certificado é como uma carteira de motorista. Um certificado tem um número exclusivo para fins de identificação. Ele é emitido por uma autoridade de certificação (CA) que verifica o certificado como autêntico.<br/>
Para fins de autenticação, os certificados usam uma chave pública e uma chave privada relacionada. A CA emissora vincula essas chaves junto com outras informações sobre o proprietário do certificado ao certificado para identificar com segurança o usuário ou sistema.<br/>
As autoridades podem emitir tokens de acesso único que funcionam de forma semelhante aos certificados. Embora os certificados geralmente sejam usados ​​muitas vezes antes de suas datas de expiração, os tokens são limitados pelo tempo em que podem ser usados. A natureza temporária dos tokens pode reduzir os riscos de segurança, limitando quantos usuários ou serviços tem acesso a um sistema em um determinado momento.<br/>
Os certificados podem causar problemas se expirarem ou se a autoridade emissora revogar o certificado por algum motivo, por exemplo, essa revogação pode acontecer se a chave privada tiver sido comprometida.

## [JSON WEB TOKENS](https://jwt.io)
Este é um formato compacto e seguro de token de eutenticação e autorização, usado para transmitir informações entre 2 partes de forma autossuficiente e verificável. É um método rápido pois é autocontido, leve porque utiliza o formato JSON e flexível, pois inclui os dados e a chave de verificação no próprio token, além de ser stateless, ou seja, não consomem recursos no servidor fazendo-o manter um estado para verificação de cada token.<br/>
Ele funciona quando o cliene realiza o login com suas credenciais, então o servidor valida os dados e gera um JWT que o cliente armazena localmente — por exemplo com `localStorage` — e, em cada nova requisição, o cliente envia este JWT no header `Authorization`: `Authorization: Bearer <json_web_token>` para que o servidor o resolva validando-o ou recusando-o.<br/>
Sua estrutura utiliza recursos robustos que garantem segurança na criação de tokens únicos e verificáveis apenas pelas partes ligadas à comunicação. Um JWT é composto por **3 partes** separadas por **`.`**:
```js
<HEADER>.<PAYLOAD>.<SIGNATURE>
```

1. **HEADER — configurações**: contém configurações de segurança.
```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```
- **`alg`**: algoritmo de assinatura — HS256, RS256 e etc.
- **`typ`**: tipo do token — sempre JWT.

2. **PAYLOAD — dados**: contém as declarações.
```json
{
  "userId": "123456",
  "role": "admin",
  "exp": 1710000000
}
```
| claim     | descrição                             |
| --------- | ------------------------------------- |
| **`iss`** | Emissor do token.                     |
| **`sub`** | Assunto do token (ex: ID do usuário). |
| **`iat`** | timestamp.                            |
| **`exp`** | Data de expiração.                    |
| **`nbf`** | Não usar antes da data do timestamp.  |
| **`aud`** | Destinatário previsto do token.       |

3. **SIGNATURE — assinatura**: usada para verificar a integridade do conteúdo — os elementos anteriores, header e payload — ou seja, se o conteúdo não foi modificado. Apenas o servidor contém e conhece o método usado para gerar a assinatura, este método geralmente é um cálculo que é realizado com base em uma *frase segredo* que é quem gera a assinatura, sendo o servidor o único capaz de resolve-la e validá-la.
```js
HMACSHA256(base64UrlEncode(header) + "." + base64UrlEncode(payload), secretKey)
```

Ou seja:
<pre>
┌───────────────────┐   ┌───────────────────────┐   ┌─────────────────────────────┐
| base64enc({       |   | base64enc({           |   | HMACSHA256(                 |
|   "alg": "HS256", |   |   "userId": "123456", |   |   base64UrlEncode(header)   |
|   "typ": "JWT"    |   |   "role": "admin",    |   |   + "." +                   |
| })                |   |   "exp": 1710000000   |   |   base64UrlEncode(payload), |
|                   |   | })                    |   |   secretKey                 |
|                   | . |                       | . | )                           |
└───────────────────┘   └───────────────────────┘   └─────────────────────────────┘
</pre>

Cada campo contém os dados estruturados no formato JSON, e para que seja gerado um hash, os dados JSON são codificados utilizando a base64 para a geração dos valores do JSON. Por exemplo:
```cpp
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.           // header
eyJ1c2VySWQiOiIxMjM0NTYiLCJyb2xlIjoiYWRtaW4ifQ. // payload
SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c     // assinatura
```

Um exemplo de como um servidor em NodeJS gerencia um JWT:
**GERANDO**
```js
const jwt = require('jsonwebtoken');

const token = jwt.sign(
  { userId: '123', role: 'admin' },
  'seuSegredoSuperSeguro',
  { expiresIn: '1h' }
);
```

**VERIFICANDO**
```js
const decoded = jwt.verify(token, 'seuSegredoSuperSeguro');
console.log(decoded.userId); // 123
```

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.4-seguranca_autenticacao_e_autorizacao/oauth2.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#seguranca_autenticacao_e_autorizacao">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.4-seguranca_autenticacao_e_autorizacao/owasp_top_10.md">next</a>
