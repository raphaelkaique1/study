# DEVOPS
Desenvolvimento e operação é a aproximação da administração de sistemas com o desenvolvimento. A ideia é fazermos com que, o intervalo entre *development* e *deployment* seja reduzido cada vez mais, ou seja, ter entregas constantes em ambientes de alta disponibilidade.<br/>
Para isso, precisamos ter um bom foco na **automação de tarefas**, e é importante lembrar que, um software depende muito do seu ambiente de hospedagem para funcionar, e, se o ambiente muda, o software pode ficar fora de operação, ou como dizemos, pode *"cair"*. Então um dos princípios do desenvolvimento e operação é: **manter um ambiente de hospedagem reprodutível.**<br/>
A reprodutibilidade de um ambiente é uma automação básica para criarmos uma plataforma de hospedagem a partir de elementos básicos como:
- **repositório do código**
- **ambientes virtuais**
- **máquinas virtuais**
- **conteiners**

Isso é feito em 2 estágios:
1. **PROVISION**<br/>
O provisionamento nada mais é do que a criação do ambiente básico de hospedagem.<br/>
No caso de uma arquitetura de serviços, geralmente existem alguns ambientes para garantir a qualidade da execução do software em produção. São eles:
   - **DEVELOPMENT**<br/>
   É o ambiente de desenvolvimento do código fonte do software, que na maioria das vezes é a própria máquina do desenvolvedor.
   - **STAGING**<br/>
   É o ambiente de testes, onde as versões do software são hospedadas antes de irem ao ar para que outras pessoas tenham condição de testar a aplicação. Muitas vezes, estes ambientes também são usados para integrar as mudanças no código de diversos desenvolvedores.
2. **DEPLOY**<br/>
A disponibilização é quando o software e suas atualizações são enviados para o ambiente de hospedagem.<br/>
Normalmente é feito usando um protocolo de comunicação autenticado e criptografado entre o cliente e o servidor, como por exemplo o `ssh`.
   - **PRODUCTION**<br/>
   Este é o ambiente público, onde o software está hospedado e acessível aos usuários. É onde o software realmente é executado para o fim qual foi concebido.

<a href="https://github.com/raphaelkaique1/study/blob/main/3-bancos_de_dados/3.2-nosql/mongodb_redis_neo4j.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/controle_de_versao_git_github.md">next</a>