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
Feita a conexão segura no canal, usamos os métodos HTTP para definir a ação que o cliente deseja realizar sobre um recurso no servidor. Os principais métodos são:
- **GET**: Recupera informações de um recurso sem modificá-lo.
- **POST**: Envia dados para o servidor, geralmente para criar um novo recurso ou processar informações.
- **PUT**: Atualiza ou substitui completamente um recurso existente com os dados enviados.
- **DELETE**: Remove um recurso específico do servidor.
- **PATCH**: Realiza uma atualização parcial em um recurso existente.
- **HEAD**: Igual ao GET, mas retorna apenas os cabeçalhos da resposta, sem o corpo.
- **OPTIONS**: Retorna os métodos HTTP suportados pelo servidor para um recurso específico.
- **TRACE**: Realiza um teste de loop-back que retorna a requisição recebida, útil para diagnósticos.
- **CONNECT**: Usado para estabelecer um túnel de comunicação, comum em conexões HTTPS.

Além desses, existem outros métodos específicos, como os do WebDAV, esses métodos foram criados para permitir a manipulação de arquivos e pastas, chamadas *coleções*, em servidores web:
- **PROPFIND**: Recupera propriedades normalmente em formato XML de um recurso.
- **PROPPATCH**: Modifica ou remove múltiplas propriedades de um recurso.
- **MKCOL**: Cria uma nova coleção, por exemplo, uma pasta.
- **COPY**: Copia um recurso de um URI para outro.
- **MOVE**: Move um recurso de um URI para outro.
- **LOCK**: Aplica uma trava em um recurso, impedindo alterações concorrentes.
- **UNLOCK**: Remove a trava aplicada a um recurso.

Além dos métodos do WebDAV, há outros métodos introduzidos em extensões ou por protocolos associados:
- **REPORT**: Usado em sistemas de versionamento como DeltaV e em protocolos como CalDAV e CardDAV para gerar relatórios sobre as propriedades ou o estado de um recurso.
- **MKCALENDAR**: Utilizado pelo CalDAV para criar um novo calendário.
- **ACL**: Define ou modifica as listas de controle de acesso e permissões de um recurso.
- **ORDERPATCH**: Permite reordenar os membros de uma coleção.
- **BIND**, UNBIND, REBIND: Métodos menos comuns utilizados em algumas extensões do WebDAV para gerenciar ligações entre recursos.
- **CHECKOUT**, **CHECKIN**, **UNCHECKOUT**, **UPDATE**, **MERGE**: Métodos relacionados a sistemas de versionamento definidos em RFC 3253 e extensões de WebDAV para gerenciar cópias e versões de recursos.

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.3-ferramentas_de_monitoramento/prometheus_grafana.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#fundamentos_da_web">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.2-frontend/html5_css3_sass_less.md">next</a>