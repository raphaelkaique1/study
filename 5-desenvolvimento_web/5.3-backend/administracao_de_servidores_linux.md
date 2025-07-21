# SERVIDOR
Um servidor é qualquer computador ou software que espera e responde requisições de outros dispositivos – chamados *clientes*. Por exemplo, quando um site como o `https://google.com` é acessado, o navegador utilizado para realizar o acesso é o cliente, enquanto que o computador onde o software Google é executado processando a busca realizada e devolvendo os resultados é o **servidor**.<br/>
Pode ser uma máquina física especializada e preparada ou virtual – como na AWS ou GCP por exemplo.

## TIPOS
Existem diversos tipos de servidores, cada um com funções específicas em uma rede ou sistema. Eles podem ser máquinas físicas especializadas com um hardware dedicado, virtuais através de SaaS, locais ou na nuvem. Um servidor não necessariamente precisa realizar a comunicação através da internet, podendo servir como um repositório central de uma rede local para compartilhamento de arquivos por exemplo, o que dita como um servidor deverá se comportar é a sua função principal. São vários os tipos de servidores preparados para cada tipo de serviço:

- **web**: tem a função de hospedar sites e entrar seu conteúdo e todos seus arquivos e scripts relacionados via HTTP/HTTPS.
- **file**: sua função é armazenar e compartilhar arquivos em rede, podendo utilizar vários diferentes protocolos como SMB, NFS ou FTP por exemplo.
- **print**: compartilha impressoras em rede.
- **e-mail**: envia, recebe e gerencia e-mails. O Postfix, Exim e MS Exchange são alguns exemplos deste tipo de servidores, os protocolos utilizados podem ser SMTP, IMAP ou POP3.
- **database**: armazena, consulta e gerencia bancos de dados, podendo utilizar qualquer aplicação que fornece este serviço como MySQL, PostgreSQL, SQL Server, MongoDB ou Oracle DB são alguns exemplos.
- **directory**: armazena dados hierárquicos de usuários e recursos omo o LDAP e Active Directory por exemplo.
- **application**: executa a lógica de negócio e serve aplicações web, podendo ser um software em Node.js, Tomcat, WildFly ou WebLogic por exemplo.
- **moniring**: acompanha o status e métricas de outros servidores como Zabbix e Prometheus por exemplo.
- **logs**: coleta e armazena registros de sistemas como o Graylog e ELK Stack por exemplo.
- **deploy**: automatiza a entrega de código como Jenkins e GitLab Runner por exemplo.
- **DNS**: este é o que gerencia todos os endereços para a localizaçõ na web, traduz nomes de domínio para IPs. Exemplos deste tipo incluem o BIND, PowerDNS e o Microsoft DNS.
- **DHCP**: atribui IPs automaticamente aos dispositivos da rede como o ISC DHCP Server ou o Windows DHCP por exemplo.
- **proxy**: intermediário entre cliente e outro servidor, ideal para segurança pois permite o controle de acesso e cache. O Squid e o HAProxy são alguns exemplos.
- **VPN**: cria uma conexão segura e criptografada pela internet.

Servidores podem existir em diferentes infraestruturas como:
- **bare-metal**: hardware dedicado preparado para alta performance, como os datacenters tradicionais.
- **VM**: plataforma para executar um servidor dentro de um hipervisor como VMware, KVM ou Hyper-V por exemplo.
- **container**: um tipo leve e baseado em imagens de plataforma que compartilha o kernel do sistema operacional para melhor performance e uso dos recursos, como o Docker por exemplo.
- **cloud**: plataforma para execução de servidores oferecida por provedores como AWS, Azure e GCP por exemplo.
- **serverless**: não é necessário gerenciar o servidor, apenas criar funções que são executadas sob demanda, AWS Lambda, Google Cloud Functions e Azure Functions são exemplos deste tipo.

**Os servidores podem ser uma combinação de diferentes tecnologias,** ou seja, uma mesma máquina física ou virtual pode ter várias funções como atuar como um servidor web e banco de dados, ou para navegação proxy com firewall e cache, ou ainda rodar múltiplos containers para diferentes funções, entre várias outras possibilidades.<br/>
Geralmente, as máquinas que atuam como servidores costumam se agrupar em uma infraestrutura especializada para fornecer o máximo de desempenho para a execução dos servidores, são os chamados *data centers*.

## DATA CENTER
Um data center é uma instalação que pode ser física ou virtual e abriga infraestrutura computacional crítica como servidores, sistemas de armazenamento, equipamentos de rede, firewall, roteadores e sistemas de energia e refrigeração, e é usada para processar, armazenar e distribuir grandes volumes de dados.<br/>
Os data centers são muito utilizados para a hospedagem de serviços e sistemas, permitem um armazenamento massivo de dados e sua alta disponibilidade, segurança física e lógica, redundância e tolerância a falhas são algumas de suas principais características. Essas infraestruturas podem possuir diferentes formatos:
- **On-Premises – local**: infraestrutura local própria, geralmente construída dentro da empresa que a utiliza, oferecem maior controle porém seus custos são maiores e fornecem menor escalabilidade.
- **Co-lo – colocation**: tipo de infraestrutura terceirizada, onde uma entidade especializada fornece o serviço de gestão e mantenimento mas utiliza hardware adquirido pelo cliente à qual presta serviço.
- **Cloud**: infraestrutura totalmente virtualizada fornecida como serviço, podendo escalar conforme demanda.
- **Edge**: tipo mais próximo ao usuário final para uyma baixa latência, usado em IoT, 5G e aplicações em tempo real.

Data centers são fundamentais para a infraestrutura digital moderna. Eles evoluíram de salas técnicas locais para ambientes globais, escaláveis e inteligentes. Com o avanço da computação em nuvem, da IA e da demanda por dados em tempo real, os data centers continuam a crescer em importância e complexidade.

## TERRAFORM
Esta é uma importante ferramenta de infraestrutura como código usada para provisionar, configurar e gerenciar infraestrutura de forma declarativa e automatizada. É um utilitário moderno para uma gestão eficiente de infraestrutura, especialmente em ambientes de data centers, cloud e devops, que permite criar, alterar e destruir recursos em provedores diversos como AWS, Azure, GCP, Oracle, VMware, entre muitos outros.<br/>
Escreve-se a infraestrutura como código em arquivos do tipo `.tf`, onde é possível configurar redes, gerenciar DNS, criar servidores, balanceadores, banco de dados, ou seja, praticamente automatizar tudo.

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/servidores_web_node_express.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#backend">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.3-backend/consumo_e_criacao_de_apis.md">next</a>