Os métodos HTTP são usados para definir a ação que o cliente deseja realizar sobre um recurso no servidor. Os principais métodos são:

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