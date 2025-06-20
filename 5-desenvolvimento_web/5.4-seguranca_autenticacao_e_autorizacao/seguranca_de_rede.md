# SEGURANÇA
A segurança em um mundo conectado se tornou uma prioridade para tecnólogos e usuários. De roubo de identidade a perda de receita, o custo humano de violações de dados e ataques cibernéticos é enorme.<br/>
Ao ouvir o termo *segurança cibernética*, é fácil pensar imediatamente em criar senhas mais fortes e bloquear ataques de phishing, e isso é importante. Para um profissional de TI, a segurança cibernética precisa ser holística. Isso significa proteger o hardware de rede, bem como o software que as pessoas usam para acessar redes.<br/>
Roteadores e modems podem ser protegidos de várias maneiras. Primeiro, os dispositivos físicos precisam ser protegidos, principalmente em ambientes onde muitas pessoas podem acessar o hardware. Câmeras de segurança, gaiolas com travas e até mesmo uma porta com trava ou senha podem impedir que indivíduos não autorizados acessem e instalem malware em um roteador ou modem. Modems sem fio, que tendem a funcionar melhor em espaços abertos, podem ser tornados mais seguros instalando-os em locais de difícil acesso.

## Segurança na Primeira Camada Firmware
Hardware como roteadores e modems têm um tipo de sistema operacional chamado firmware. O firmware controla como o hardware opera e também inclui controles de interface de usuário para permitir que os técnicos modifiquem como o hardware funciona. Manter o firmware atualizado pode ajudar a tapar buracos de segurança e ajudar o hardware a ter um melhor desempenho para evitar certos tipos de ataques, como ataques de negação de serviço. Usar uma senha forte e o protocolo https ao acessar roteadores e modems remotamente é outra maneira de manter seu hardware de rede seguro.<br/>
Infelizmente, muitas violações de segurança modernas não acontecem na camada de hardware. Muitos ataques acontecem quando as pessoas estão usando a rede. Mas há várias maneiras de se manter seguro online.

## Segurança na Segunda Camada Autenticação
As senhas têm uma má reputação, mas podem evitar violações de segurança devastadoras. Os profissionais de TI às vezes reclamam sobre senhas porque os usuários tendem a criar senhas fracas que abrem os sistemas para ataques. Os usuários não gostam de senhas porque as fortes podem ser difíceis de lembrar e tendem a haver muitas delas para lembrar.<br/>
Usar um gerenciador de senhas pode resolver ambos os problemas. Quase todo navegador possui um gerenciador de senhas integrado. Os gerenciadores de senhas salvam as muitas senhas que criadas, ele é um programa de software para gerenciar, criar, armazenar e atualizar senhas, ajudando o usuário a fazer login nos sites com segurança. Eles geram senhas fortes para que não seja necessário inventá-las sozinho. Os profissionais de TI podem evitar muitas dores de cabeça para si mesmos e seus usuários educando os usuários sobre e, quando apropriado, exigindo que os usuários usem gerenciadores de senhas.<br/>
A autenticação de dois fatores complementa o gerenciamento de senhas. Uma tecnologia que se tornou comum e que complementa a senha testada e comprovada é a autenticação de dois fatores (2FA). A autenticação de dois fatores exige que as pessoas insiram um código, escolham uma resposta de uma lista, respondam a uma chamada telefônica ou respondam a uma pergunta para confirmar sua identidade. Essa tecnologia ajuda a reforçar a força dos nomes de usuário e senhas ao exigir outra forma de verificação de identidade.<br/>
Atualmente protegemos os celulares tanto quanto, se não mais, do que a carteira. Estamos cada vez mais carregando o celular o tempo todo. Os celulares podem ser profundamente pessoais e individualizados e os tecnólogos reconheceram isso, trazendo uma participação maior dos dispositivos móveis na segurança. A autenticação de dois fatores usando um dispositivo móvel requer que o usuário insira um código enviado ao seu dispositivo móvel para confirmar sua identidade. Outras implementações usam um aplicativo em um dispositivo móvel que cria um novo código a cada minuto, que é necessário copiar e usar para confirmar a identidade em outro aplicativo.<br/>
Independentemente da forma que assuma, a segurança com senhas e autenticação de dois fatores pode parecer difícil, mas isso custa muito menos do que o impacto de dados perdidos, uma identidade roubada ou perda financeira devido a uma violação de segurança.

## Segurança na Terceira Camada Firewall
O firewall é um sistema de segurança que monitora, controla e filtra o tráfego de rede com base em regras predefinidas. Seu principal objetivo é proteger dispositivos e redes contra acessos não autorizados, ataques cibernéticos e tráfego malicioso. Ele atua como uma barreira virtual entre redes confiáveis e não confiáveis, exemplo: entre uma rede interna e a internet. Ele pode permitir ou bloquear pacotes de dados com base em critérios como:
- Endereço IP de origem e destino.
- Porta de origem e destino.
- Tipo de protocolo TCP, UDP e ICMP.
- Regras configuradas pelo administrador.

O tráfego de rede se comunica por portas com base no protocolo de rede que está sendo usado. Existem mais de 65.000 portas possíveis que o tráfego de rede pode usar. Ao navegar na web, o protocolo usado é o Hypertext Transfer Protocol Secure (HTTPS) no endereço da web. O protocolo HTTPS se comunica pela porta 443 em uma rede padrão. O tráfego que viaja para seu navegador pela porta 443 contém o tipo de dados que o navegador pode reconhecer.<br/>
Suponhamos que um firewall abriu todas as portas de um computador, e então um vírus que foi projetado para se comunicar por uma porta obscura infectou este dispositivo. Ao fechar essa porta o impacto pode ser limitado.<br/>
Firewalls mantêm dispositivos e redes seguros adotando uma abordagem: *melhor prevenir do que remediar*. Muitos firewalls abrem portas apenas para aplicativos conhecidos, como e-mail, navegação na web e outros aplicativos e serviços populares. Se um aplicativo precisar usar outra porta, o sistema operacional deve pedir permissão ao usuário.

### Tipos de Firewall:
- **Firewall de Rede** – Protege redes inteiras, operando em roteadores ou servidores.
- **Firewall de Host** – Instalado em um único dispositivo, como o Windows Defender Firewall.
- **Firewall de Próxima Geração (NGFW)** – Combina funções avançadas, como inspeção profunda de pacotes e prevenção contra intrusões (IDS/IPS).
- **Firewall baseado em Proxy** – Atua como intermediário entre dispositivos e a internet, filtrando tráfego e aumentando a segurança.

#### proxy
O proxy é um servidor intermediário que fica entre o seu dispositivo (cliente) e a internet, atuando como um "ponte" para encaminhar e filtrar solicitações. Ele pode ser usado para segurança, anonimato, controle de tráfego e otimização de desempenho.<br/>
Quando você acessa um site usando um proxy:
1. Seu dispositivo envia a solicitação para o servidor proxy.
2. O proxy recebe a solicitação e a encaminha para o destino final.
3. O site responde ao proxy, que repassa a resposta para você.

Isso pode ocultar seu IP real, fornecer mais segurança e até acelerar a navegação.

**Tipos de Proxy:**
- **Proxy Transparente** – Não esconde o IP do usuário, geralmente usado em empresas para controle de acesso.
- **Proxy Anônimo** – Oculta o IP real do usuário, aumentando a privacidade.
- **Proxy Reverso** – Usado em servidores para otimizar o tráfego e proteger aplicações web.
- **Proxy SOCKS** – Funciona em vários protocolos além do HTTP, sendo útil para jogos e P2P.
- **Proxy VPN (Virtual Private Network)** – Criptografa o tráfego e oferece um nível maior de privacidade.

**Vantagens do Uso de Proxy:**
- **Privacidade**: Esconde seu IP real para maior anonimato.
- **Segurança**: Pode bloquear sites maliciosos e filtrar tráfego indesejado.
- **Acesso a Conteúdos Restritos**: Pode contornar bloqueios geográficos.
- **Otimização de Rede**: Armazena em cache conteúdos acessados com frequência para melhorar a velocidade.

O proxy é uma ferramenta útil para controle de acesso, anonimato e segurança na internet, sendo amplamente usado por empresas e usuários individuais.

## AUTENTICAÇÃO E AUTORIZAÇÃO
Autenticação e autorização são conceitos fundamentais em segurança da informação, especialmente em sistemas web e APIs. Embora relacionados, possuem funções distintas.
- **Autenticação** verifica quem é o usuário.
- **Autorização** define o que ele pode fazer.

1. **Authentication**
A **autenticação** verifica *quem é o usuário*. O objetivo é garantir que apenas usuários legítimos possam acessar o sistema, como por exemplo fazer login com usuário e senha.
1. O usuário fornece credenciais (e-mail/senha, token, biometria, etc.).
2. O sistema valida essas credenciais comparando com um banco de dados.
3. Se as credenciais estiverem corretas, o usuário recebe um **token** (ex: JWT) ou uma **sessão** ativa.

**Principais métodos de autenticação:**
- **Senha tradicional** (nome de usuário e senha).
- **Autenticação de dois fatores (2FA)** (ex: código via SMS).
- **OAuth 2.0** (login com Google, Facebook, etc.).
- **Tokens JWT** (muito usado em APIs).

2. **Authorization**
A **autorização** define *o que o usuário pode fazer*. Mesmo após ser autenticado, ele pode não ter permissão para acessar certos recursos, como por exemplo um usuário comum não pode acessar páginas de administrador.
1. Após a autenticação, o sistema verifica as **permissões** do usuário.
2. Se ele tiver permissão, pode acessar o recurso desejado.
3. Se não tiver, recebe uma resposta de acesso negado (`403 Forbidden`).

**Métodos de autorização:**
- **RBAC (Role-Based Access Control)** → Controle baseado em funções (*admin*, *usuário*, *moderador*).
- **ABAC (Attribute-Based Access Control)** → Controle baseado em atributos (idade, local, horário, etc.).
- **ACL (Access Control List)** → Lista de permissões específicas para cada usuário.

### Diferenças entre Autenticação e Autorização
| Conceito              | Autenticação              | Autorização                            |
|-----------------------|---------------------------|----------------------------------------|
| Pergunta que responde | "Quem é você?"            | "O que você pode fazer?"               |
| Objetivo              | Identificar o usuário     | Definir permissões                     |
| Exemplo               | Login com usuário e senha | Permissão para acessar página de admin |
| Mensagem de erro      | `401 Unauthorized`        | `403 Forbidden`                        |


<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.4-seguranca_autenticacao_e_autorizacao/praticas_de_seguranca_em_desenvolvimento_web.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#seguranca_autenticacao_e_autorizacao">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.4-seguranca_autenticacao_e_autorizacao/criptografia.md">next</a>
