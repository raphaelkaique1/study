# API
Quando queremos realizar um pedido em um restaurante, basta informar ao garçom qual prato queremos e em seguida ele nos trás o pedido. É assim que uma API funciona.<br/>
Uma API é um software que executa uma função específica, mas não tem uma interface de usuário, ou seja, não existe algo com o qual é possível interagir diretamente. Em vez disso, tem uma interface que outro software usa. Quando uma API está na nuvem, ela tem um endereço da web. Quando o software chama a API usando esse endereço, a chamada inicia uma conversa com a API para que o software possa enviar e receber dados.<br/>
O diagrama a seguir mostra como uma API é chamada usando uma solicitação https padrão. A solicitação é a URL da API junto com os parâmetros que a API usa para buscar os dados corretos.

![Image](https://github.com/user-attachments/assets/f7f57f9d-10bb-42d8-9fae-6cdbdab94a4b)

Elas geralmente se dividem em 2 categorias:
- **Browser APIs**: já vem implementadas no navegador, e são capazes de expor dados do ambiente do computador, e fazer coisas complexas e úteis. Por exemplo:
  - **API DOM**: permite a manipulação do HTML e CSS, criando, removendo e alterando HTML, aplicando dinamicamente novos estilos CSS para a página e etc. Toda vez que uma janela pop-up surge ou um novo conteúdo é exibido na página, isso é o DOM em ação.
  - **API de Geolocalização**: recupera informações geográficas. É assim que o Google Maps consegue encontrar uma localização e usar no mapa por exemplo.
  - **APIs Canvas e WebGL**: permitem criar gráficos 2D e 3D animados e interativos.
  - **APIs e de Áudio e Vídeo**: como `HTMLMediaElement` e `WebRTC` permitem trabalhar com áudio, captura de vídeo da câmera do dispositivo e etc.
- **3rd part APIs**: não são implementados no navegador automaticamente, sendo necessário incorporar sua estrutura no código do projeto em desenvolvimento. Por exemplo:
  - **API do Twitter/X**: permite exibir tweets no website por exemplo.
  - **API do Google Maps**: permite inserir mapas customizados no site entre outras diversas funcionalidades.

## ENDPOINT
É onde a API realiza o consumo de informações da aplicação. Um **endpoint de API** é uma URL específica onde um cliente pode acessar um recurso ou serviço fornecido por uma API. Ele representa um ponto de comunicação entre sistemas, permitindo o envio e recebimento de dados.  

1. **URL base** – Endereço principal da API (exemplo: `https://api.exemplo.com/`).  
2. **Rota específica** – Define qual recurso será acessado (exemplo: `/usuarios/123`).  
3. **Método HTTP** – Indica a ação a ser executada:
   - `GET` → Recuperar dados  
   - `POST` → Criar um novo recurso  
   - `PUT` → Atualizar um recurso existente
   - `DELETE` → Remover um recurso  

Por exemplo, se uma API de usuários tem a URL base `https://api.meusistema.com`, um **endpoint** para obter os detalhes do usuário 123 poderia ser:
```plaintext
GET https://api.meusistema.com/usuarios/123
```  
Esse endpoint retornaria as informações do usuário com ID 123.
Os endpoints são importantes para o funcionamento das API pois estabelecem e permitem uma comunicação padronizada entre as partes de um sistema.
- Permitem a integração entre sistemas.  
- Facilitam a comunicação entre *frontend* e *backend*.  
- Seguem padrões para garantir segurança e organização na API.  

Ou seja, um **endpoint de API** é o ponto de acesso para consumir os serviços de uma API.

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/administracao_de_servidores_linux.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/banco_de_dados.md">next</a>