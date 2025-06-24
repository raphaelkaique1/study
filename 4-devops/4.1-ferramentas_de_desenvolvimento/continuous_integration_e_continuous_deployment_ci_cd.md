# DEVOPS
Desenvolvimento e operação é a aproximação da administração de sistemas com o desenvolvimento de software. A ideia é fazer com que, o intervalo entre *development* e *deployment* seja reduzido cada vez mais, ou seja, ter entregas constantes em ambientes de alta disponibilidade.<br/>
Para isso, é necessário ter um bom foco na **automação de tarefas**, e é importante lembrar que, um software depende muito do seu ambiente de hospedagem para funcionar, e, se o ambiente muda, o software pode ficar fora de operação, ou como diz-se, pode *"cair"*. Então um dos princípios do desenvolvimento e operação é: **manter um ambiente de hospedagem reprodutível.**<br/>
A reprodutibilidade de um ambiente é uma automação básica para criar-se uma plataforma de hospedagem a partir de elementos básicos como:
- **repositório do código**
- **ambientes virtuais**
- **máquinas virtuais**
- **containers**

Isso é feito em 2 estágios:
1. **PROVISION**<br/>
O provisionamento nada mais é do que a criação do ambiente básico de hospedagem.<br/>
No caso de uma arquitetura de serviços, geralmente existem alguns ambientes para garantir a qualidade da execução do software em produção. São eles:
   - **DEVELOPMENT**<br/>
   É o ambiente de desenvolvimento do código fonte do software, que na maioria das vezes é a própria máquina do desenvolvedor.
   - **STAGING**<br/>
   É o ambiente de testes, onde as versões do software são hospedadas antes de irem ao ar para que outras pessoas tenham condição de testar a aplicação. Muitas vezes, estes ambientes também são usados para integrar as mudanças no código de diversos desenvolvedores.
2. **DEPLOY**<br/>
A disponibilização é quando o software e suas atualizações são enviados do provisionamento para o ambiente de hospedagem.<br/>
Normalmente isto é feito usando um protocolo de comunicação autenticado e criptografado entre o cliente e o servidor, como por exemplo o `ssh`.
   - **PRODUCTION**<br/>
   Este é o ambiente público, onde o software está hospedado e acessível aos usuários. É onde o software realmente é executado para o fim qual foi concebido.

## CONTINUOUS: INTEGRATION & DEPLOYMENT
A **Integração Contínua** é uma prática de desenvolvimento de software em que os desenvolvedores mesclam suas features em um _repositório central_, para que testes possam ser executados.<br/>
Os principais objetivos da integração contínua são investigar e encontrar erros de forma eficiênte, assim melhorarando a qualidade do programa e reduzindo o tempo necessário para validar e lançar novas atualizações de software.

Já a **Entrega Contínua** diz sobre automatização de testes e a eventual liberação das atualizações para produção, esta é uma prática de desenvolvimento de software que expande-se com base na **integração contínua**, pela implantação de todas as alterações de código em um ambiente de teste (ou produção) após o estágio de implementação – ou seja, criação do programa.<br/>
Quando a integração contínua for implementada adequadamente, os desenvolvedores sempre terão um artefato de criação pronto para ser implantado, que passou por um processo de teste padronizado.

### PIPELINE
Um pipeline é uma sequência automatizada de etapas que permite o desenvolvimento, teste e entrega contínua de software, automatizando o fluxo de trabalho desde a escrita do código até a sua publicação em produção. É o coração do CI/CD, que realiza a verificação de código na fase de integração, realizando os testes e então faz a entrega do produto final para produção, os Pipelines garantem uma entrega mais rápida e confiável, pois reduzem a possibilidade de erros manuais por terem um processo de entrega padronizado. As etapas comuns de um Pipeline são:
1. **Commit do Código**: o(s) desenvolvedor(es) envia(m) nova(s) versões do código para o repositório principal.
2. **Build**: a aplicação então é compilada gerando os artefatos.
3. **Testes Automatizados**: testes unitários, de integração e outros mais são executados para garantir que o código está funcional.
4. **Análise de Qualidade**: algumas ferramentas podem ser utilizadas para avaliar as métricas das coberturas de testes e encontrar bugs ou vulnerabilidades.
5. **Deploy para Ambiente de Testes**: o sistema pode ser implantado em um ambiente de testes ou de homologação automaticamente.
6. **Deploy para Produção**: se todas as demais etapas anteriores forem bem sucedidas, o sistema pode ser implantado em produção automaticamente *ou com aprovação manual*.

<a href="https://github.com/raphaelkaique1/study/blob/main/3-bancos_de_dados/3.2-nosql/mongodb_redis_neo4j.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/controle_de_versao_git_github.md">next</a>