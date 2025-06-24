# Engenharia de Software

 ## Evolução da engenharia de software
 No início (por volta de 1950), toda a atenção de desenvolvimento era focada no hardware (por conta da época em que se estava descrobrindo o que um computador poderia prover). Com o passar do tempo, os softwares começaram a ser desenvolvidos de acordo com a necessidade. Ou seja, havendo um hardware para ser executado e um sistema operacional que gerenciasse o uso das capacidades do hardware e o fizesse funcionar como se espera, os sistemas começaram a serem desenvolvidos por setores, por exemplo, na área contábil haviam softwares/sistemas desenvolvidos para alcançar um objetivo específico (contas a pagar, contas a receber, balanço e etc). Todo o desenvolvimento era centrado de acordo com a necessidade interna.<br/>
 Com a evolução do desenvolvimento das soluções e a otimização cada vez maior das tarefas do usuário, houve um crescimento na procura por desenvolvedores de soluções/sistemas. Porém naquela época esse tipo de profissional era excasso, visto que o desenvolvimento era interno, ou seja, o profissional que desenvolvia a solução atuava com foco no setor para o qual criou o sistema (não era um profissional com especialização em tecnologia e sim um profissional com uma formação na área do negócio em que atuava). Isso gerou uma onda de desenvolvimento desordenado, sem nenhuma técnica, apenas softwares desenolvidos para cada necessidade específica com o único objetivo de solucionar aquele problema naquela hora. Como quem desenvolvia era quem conhecia do negócio, o desenvolvimento era voltado para pessoas que conheciam o negócio ou pior, quem desenvolvia definiria o negócio e definia como o sistema deveria ser feito/utilizado. Este tipo de desenvolvimento criou vários sistemas que não atendiam aos usuários, causando uma grande insatisfação no mercado de produção de softwares.<br/>
 Com isso criou-se o conceito de "Engenharia de Software" com o objetivo de ordenar o desenvolvimento e produzir softwares de qualidade que atendessem aos usuários. A Engenharia de Software se define como: conjunto de técnicas, regras e métodos para desenvolvimento de software, buscando a qualidade não só em termos técnicos como funcionais. Ou seja, nada mais é do que uma forma correta/adequada para criar e desenvolver softwares de qualidade.<br/>
 Então o que é um Software? É um conjunto de partes/informações inter-relacionadas/processadas para atingir/gerar um determinado objetivo/retornar uma nova informação. Em outras palavras, podemos dizer que é uma disciplina que reune metodologias e ferramentas a serem utilizadas desde a percepção de um problema até o momento em que o sistema desenvolvido deixa de ser operacional, visando resolver problemas inerentes ao processo de desenvolvimento e ao produto de software, sempre buscando baixos custos, com produção rápida, eficiênte, qualidade e melhoria contínua. E um Sistema de Informação? É um conjunto de programas que processam informações para gerar resultados relevantes ao negócio e com o resultado gerado podendo ser usados em tomadas decisões, estratégias e etc, lidando com as áreas relacionadas ao organograma da empresa.

 ## Tipos de sistemas/softwares:
<pre>
                       APLICATIVOS
ENTRETENIMENTO ↰            ↑        ↱ UTILITÁRIOS
                  TIPOS DE SISTEMAS
              ↙             ↓        ↘
    INFORMAÇÃO        OPERACIONAIS    GERENCIADOR DE DATA BASE
</pre>
 **Onde for possível visualizar um conjunto de procedimentos que irão atingir um determinado objetivo define o que é um software.*

 ## Composição do sistema:
<pre>
        HARDWARE   SISTEMA OPERACIONAL
REGRAS  ┌───────────────────────┐
        │ SISTEMA DE INFORMAÇÃO │ LINGUAGEM DE PROGRAMAÇÃO
DESENV/ └───────────────────────┘
USUÁRIO       COMUNICAÇÃO/REDE    BANCO DE DADOS
</pre>

 ## Características essenciais de um bom projeto:
<pre>
┌────────────────┬─────────────────────────────────────────────────────────────────────────────────────────┐
│ CARACTERÍSTICA │                                         DESCRIÇÃO                                       │
├────────────────┼─────────────────────────────────────────────────────────────────────────────────────────┤
│ ACEITABILIDADE │                          Deve atender às expectativas do usuário.                       │
├────────────────┼─────────────────────────────────────────────────────────────────────────────────────────┤
│    SEGURANÇA   │                             Confiabilidade e proteção de uso.                           │
├────────────────┼─────────────────────────────────────────────────────────────────────────────────────────┤
│   EFICIÊNCIA   │ Fazer uso adequado de recursos, gerando resultados com  o mínimo de recursos utilizados.│
├────────────────┼─────────────────────────────────────────────────────────────────────────────────────────┤
│MANUTENIBILIDADE│  Desenvolvimento de forma que torne natural o processo de manutenção dos procedimentos. │
└────────────────┴─────────────────────────────────────────────────────────────────────────────────────────┘
</pre>

 ## Disciplinas da engenharia de software
 As diciplinas da Engenharia de Software são as atividades desenvolvidas para a criação do software. São elas:
<pre>
 ┌────────────────────────────┐
 │ LEVANTAMENTO DE REQUISITOS │ ➤ Busca descobrir as necessidades do sistema.
 ├────────────────────────────┤
 │          ANÁLISE           │ ➤ Aprofunda em cada requisito para entender toda a necessidade.
 ├────────────────────────────┤
 │          PROJETO           │ ➤ Define a lógica para criar os procedimentos da solução.
 ├────────────────────────────┤
 │       IMPLEMENTAÇÃO        │ ➤ Desenvolvimento e programação do software.
 ├────────────────────────────┤
 │           TESTE            │ ➤  Verifica erros e valida se os requisitos desenvolvidos estão de acordo com as regras definidas.
 ├────────────────────────────┤
 │         IMPLANTAÇÃO        │ ➤ Disponibiliza o software para o usuário.
 ├────────────────────────────┤
 │         MANUTENÇÃO         │ ➤ Realiza ajustes, corrige bugs, cria novas features e alinha os requisitos levantados.
 ├────────────────────────────┤
 │         QUALIDADE          │ ➤ Melhoria contínua para prover sempre a melhor experiência ao usuário.
 ├────────────────────────────┤
 │    GERÊNCIA DE PROJETOS    │ ➤  Acompanhamento do desenvolvimento das atividades.
 └────────────────────────────┘
</pre>

 ## Ciclos de vida
 É uma forma de organizar as disciplinas para o desenvolvimento do software, é uma estrutura que indica processos e atividades envolvidas no desenvolvimento, operação e manutenção de um software, abrangendo de fato toda a vida do sistema. Ciclo de vida é o conjunto de etapas para o desenvolvimento da aplicação desde o levantamento das necessidades do usuário até a entrega do produto, e mesmo após a entrega o ciclo pode continuar, enquanto o desenvolvedor estiver trabalhando no sistema. Neste ciclo, existem modelos que definem como o software será desenvolvido, lançado, aprimorado e finalizado. Modelos de ciclo de vida de processo de software são descrições abstratas do processo de desenvolvimento, mostrando as principais atividades e informações usadas na produção e manutenção de software, bem como a ordem que as atividades são executadas. Vejamos quais são os tipos e seus modelos de execução.
 
 ### CASCATA:
 foi o primeiro ciclo de vida criado, desenvolvido usando a metodologia Estruturada. Tem como característica: iniciar uma etapa somente após a finalização da etapa anterior. Algumas das desvantagens são o longo período de espera do usuário até ter o projeto concluído e a vulnerabilidade a mudança de requisitos, visto que ele segue após a conclusão de cada etapa, caso haja uma alteração de requisito faz-se nescessário retormar as etapas anteriores, o que toma muito mais tempo no desenvolvimento.
<pre>
┌────────────────────────┐
│ DEFINIÇÃO DOS REQUITOS │
└────────────────────────┘⬎ NECESSIDADE
^  ┌───────────────────────┐
│  │ ANÁLISE DE REQUISITOS │
│  └───────────────────────┘⬎ DEFINIÇÃO LÓGICA
│   ^  ┌──────────────────────┐
│   │  │ DEFINIÇÃO DO PROJETO │
│   │  └──────────────────────┘⬎ ARQUITETURA DO SOFTWARE
│   │  ^  ┌──────────────────────────┐
│   │  │  │ IMPLEMENTAÇÃO DO PROJETO │
│   │  │  └──────────────────────────┘⬎ CÓDIGO DO SOFTWARE
│   │  │  ^  ┌───────────────────────────┐
│   │  │  │  │ TESTE/AVALIAÇÃO/VALIDAÇÃO │
│   │  │  │  └───────────────────────────┘⬎ SOFTWARE VALIDADO
│   │  │  │   ^  ┌───────────────────────────────┐
│   │  │  │   │  │ IMPLANTAÇÃO/ENTREGA/CONCLUSÃO │
│   │  │  │   │  └───────────────────────────────┘⬎ VERSÃO DO SOFTWARE
│   │  │  │   │  ^                        ┌────────────┐
│   │  │  │   │  │                        │ MANUTENÇÃO │ OPCIONAL
v   v  v  v   v  v                        └────────────┘
├────────────────────────────────────────────────┴────────────────────┤
</pre>

 ### PROTOTIPAGEM (EVOLUTIVO):
 desenvolve alguma interface gráfica (GUI) para que o usuário possa visualizar o desenvolvimento do projeto, mas traz conflitos de interesses entre o desenvolvedor e o cliente, sendo atualmente mais utilizado para teste de software.
<pre>
                     início ⟳

            ┌──> COLETA DE REQUISITOS ───┐
            │       E REFINAMENTO        v
            │     ┌──────────────➤ PROJETO RÁPIDO
 ENGENHARIA DO    │                      │
    PRODUTO ^     │                      v
            │     │                CONSTRUÇÃO DO
     REFINAMENTO DO                  PROTÓTIPO
        PROTÓTIPO                        │
            ^        AVALIAÇÃO DO        │
            └──────── PROTÓTIPO   <──────┘
</pre>

 ### ESPIRAL:
 é um processo evolucionário, ou seja, adequado para softwares que precisam passar por inúmeras evoluções na medida que o desenvolvimento acontece. Diferente do Modelo Incremental, que entrega partes prontas uma de cada vez, o Modelo Espiral faz sucessivos refinamentos. OUtras novidades são os conceitos de Prototipagem e Gerenciamento de Riscos. Este modelo "combina prevenção e tolerância a mudanças, assume que mudanças são um resultadode riscos de projeto e inclui atividades explícitas de gerenciamento de riscos para sua redução". O modelo é "uma abordagem realista do desenvolvimento de sistemas e softwares de grande porte, usando a prototipagem como mecanismo de redução de riscos". Desenvolve partes separadas simultaneamente. Para funcionar bem é necessário um ambiente de desenvolvimento que possiblite o trabalho em conjunto, uma arquitetura que permita o deploy das partes sem que interfira no funcionamento de outras partes (firmado na metodologia POO). As vantagens do desenvolvimento em partes é a alta adaptação as mudanças de requisitos e a entrega contínua do MVP.
<pre>
                │
  PLANEJAMENTO  │   ANÁLISE DE RISCO
          ┌─────┼──────┐               1. em direção ao sistema completo
          │ ┌───┼────3 │               2. baseada na reação do usuário
          │ │ ┌─┼─2┐ │ │               3. baseada nos requisitos
 ───────┼─┼─┼─1─┼──┼─┼─┼──────────────
        │ │ │   │  │ │ │               PLANEJAMENTO - DEFINIÇÃO DE OBJETIVOS: São identificados objetivos específicos.
        │ │ └───┼──┘ │ │               ANÁLISE DE RISCO - AVALIAÇÃO E REDUÇÃO DE RISCOS: Riscos são detectados e atividades
        │ └─────┼────┘ │               são definidas para trabalhar na redução destes riscos.
        └─────>─┼──────┘               ENGENHARIA - IMPLEMENTAÇÃO E VALIDAÇÃO: Um modelo de desenvolvimento é escolhido.
  AVALIAÇÃO     │   ENGENHARIA         AVALIAÇÃO DO USUÁRIO - PLANEJAMENTO E ESPECIFICAÇÃO: O projeto é revisado e a próxima
   DO USER      │                      fase da espiral é planejada.
</pre>

 #### ITERATIVO E INCREMENTAL:
 desenvolvido com base na metodologia POO por tornar possível em função da modularização e reutilização dos componentes, o nome deve-se por repetir o ciclo várias vezes (iterativo) e a cada fim de ciclo/iteração tem-se a entrega de uma nova versão do produto. Ou seja, também usa das técnicas de melhoria contínua e MVP. Apesar de também desenvolver o software em partes, diferente do ciclo ESPIRAL, cada parte tem uma "prioridade" atribuída pensada a nível de risco (quais requisitos devem ser atendidos primeiro para que o desenvolvimento ocorra bem). Muito usado por metodologias ágeis, ele é formado por 4 etapas:
<pre>
                       Define o es- Define a ar-  Faz a imple-  Testes e ava-
                       copo do sis- quitetura do  mentação do   liação. ⬎
                       tema. ⬎        sistema. ⬎      software. ⬎   
┌────────────────────┐ ┌───────────┐┌────────────┐┌────────────┐┌───────────┐
│            \ FASES │ │ CONCEPÇÃO ││ ELABORAÇÃO ││ CONSTRUÇÃO ││ TRANSIÇÃO │
│ DISCIPLINAS \      │ │           ││            ││            ││           │
└────────────────────┘ └───────────┘└────────────┘└────────────┘└───────────┘
┌────────────────────┐             |             |             |            |
│     REQUISITOS     │             |             |             |            |
└────────────────────┘             |             |             |            |
┌────────────────────┐             |             |             |            |
│      ANÁLISE       │             |             |             |            |
└────────────────────┘             |             |             |            |
┌────────────────────┐             |             |             |            |
│       PROJETO      │             |             |             |            |
└────────────────────┘             |             |             |            |
┌────────────────────┐             |             |             |            |
│    IMPLEMENTAÇÃO   │             |             |             |            |
└────────────────────┘             |             |             |            |
┌────────────────────┐             |             |             |            |
│        TESTE       │             |             |             |            |
└────────────────────┘             |             |             |            |
                                   ▲             ▲             ▲            ▲
  MARCOS                         ESCOPO     ARQUITETURA     OPERAÇÃO     RELEASE
├────────────────────────────────────────────────────────────────────────────>
  TEMPO
</pre>

## Requisitos de Sistemas

 ### 1. Fatores do desenvolvimento de software: Entender o que influencia o desenvolvimento
 **Processo de desenvolvimento:**

- **Especificação**<br/>
 São realizados: o levantamento de requisitos, a análise, definição do projeto, e etc.

- **Desenvolvimento**<br/>
 É desenvolvido e implementado o programa.

- **Validação**<br/>
 Realiza os testes e verifica erros e valida se os requisitos foram atendidos.

- **Manutenção**<br/>
 Ajustes se necessário.

- **Equipe de desenvolvimento:**
<pre>
┌──────────────────────┐
│       EMPRESA        │ -> É necessário que se conheça o negócio para selecionar a tecnologia mais adequada para o desenvolvimento.
│                      │
│ NEGÓCIO + TECNOLOGIA │
└──────────────────────┘
┌───────────────────────────────────────────┐
│                  SISTEMA                  │ -> É necessário uma boa comunicação entre as partes para o sucesso do projeto.
│                 /       \                 │
│ ┌───────────────┐       ┌───────────────┐ │
│ │DESENVOLVIMENTO│       │    OPERAÇÃO   │ │
│ ├───────────────┤       ├───────────────┤ │
│ │ STAKEHOLDERS  │ ───── │    USUÁRIOS   │ │
│ └───────────────┘       └───────────────┘ │
└───────────────────────────────────────────┘
</pre>
- **Fatores de desenvolvimento:**
  - **Relação: usuário x analista**
    - **USUÁRIO**: Muitas vezes o usuário tem dificuldade em se expressar, cabe ao analista conseguir de alguma forma utilizando técnicas para abrir a comunicação clara com o usuário. Quanto mais envolvido o usuário estiver no desenvolvimento, maior a garantia do sucesso do projeto.
    - **ANALISTA**: Deve evitar a busca de soluções imediatistas, buscando sempre realizar uma analista concisa e bem pensada para o desenvolvimento. Visando a boa comunicação, usar uma linguagem mais inteligível, no nível que o usuário consiga entender de forma clara as instruções. Especificação de documentação concisa e atualiza para que possa garantir a continuidade de execução e atendimento dos sistemas. Atentar-se para diferentes pontos de vistas do problema.
  - **Risco do desenvolvimento**<br/>
  A dinâmica da empresa que traz mudanças constantes buscando o melhor pode trazer mudanças nas necessidades, turn-over do projeto (troca de colaboradores) e a ter maior preocupação com a tecnologia do que com o negócio, são pontos que devem ser observados com cautela por apresentarem risco ao processo de desenvolvimento.
  - **Relação: analista x negócio**<br/>
 O analista deve conhecer e entender o negócio, conhecer quais são os problemas que a empresa possui em relação ao escopo do trabalho a ser desenvolvido. Entendimento do domínio da aplicação, que se refere ao conhecimento do que é a aplicação, contudo levando em conta o perfil da empresa.

 ### 2. Importância da comunicação: Como comunicar de forma eficiênte durante o desenvolvimento
 É através de uma boa e clara comunicação que iremos obter uma entrega de produto com qualidade e alcaçar o sucesso no projeto. Além da transparência do que está sendo feito, a participação de todos durante todas as etapas cruciais, feedbacks constantes entre outras técnicas, contribuem para o desenvolvimento do projeto. Alguns pontos podem facilitar a comunicação:
  - Estabelecer relacionamento amigável, comunicação cordial e participativa.
  - Trazer usuários para participar ativamente.
  - Uso de técnicas, métodos e ferramentas para obtenção das informações.
  - Não deixar dúvidas e não fazer suposições.

 ### 3. Requisitos - O que é?: Identificando os requisitos
 Requisitos correspondem ao conjunto de necessidades do usuário em relação ao sistema. Requisitos podem ser funcionais (o que o sistema deveria fazer) e não funcionais (restrições, isto é, o que o sistema não deveria fazer).<br/>
 Segundo Sommerville (2018), "Os requisitos de um sistema são as descrições dos serviçoes que o sistema deve prestar e as restrições a sua operação. Esses requisitos refletem as necessidades dos clientes de um sistema que atende a um determinado propósito, como controlar um dispositivo, fazer um pedido ou encontrar informações."<br/>
 Partindo do princípio de que os requisitos são as necessidades do usuário, podemos pensar que as ações do sistema são o primeiro passo para identificar um requisito. Então para identificar os requisitos, verificamos as ações que realizam o negócio, a partir disso verificamos o passo-a-passo do negócio e traçamos os requisitos. Neste sentido, REQUISITOS representam as necessidades do usuário para realizar suas operações de negócio. Requisitos irão definir o que se deve desenvolver.

 ### 4. Requisitos x Stakeholders: Identificando os stakeholders
 Quem são os responsáveis por realizar as tarefas? Conhecer a organização e a estrutura organizacional da empresa traz uma clareza sobre quem são os stakeholders (responsáveis por realizar determinada atividade) e quem são os usuários.

 #### Levantamento de Requisitos: Tipos, classificação e tratamento
 1. **Identificação de requisitos**<br/>
 Requisito é uma necessidade de realização do negócio, ou seja, as ações e procedimentos que realizam o negócio. O papel do analista é buscar identificar quais são estes procedimentos que são realizados para atingir um objetivo e gerir o negócio. 
 2. **Classificação de requisitos**<br/>
 A classificação dos requisitos é uma ferramenta de apoio para a identificação dos requisitos que irão influenciar na construção do software, são 2 os tipos conhecidos de requisitos: funcionais e não funcionais; Os requisitos funcionais representam o que um sistema deve fazer, ou seja, suas funcionalidades. Já os requisitos não-funcionais são as restrições.
<pre>
 TIPOS DE REQUISITOS
                         ┌──────────────────────────┐
                         │   GERENTES DE CLIENTES   │
 ┌──────────────────┐    │  FINAL USERS DO SISTEMA  │
 │REQUISITOS DE USER│ -> │ ENGENHEIROS DE CLIENTES  │
 └──────────────────┘    │ GERENTES DE FORNECEDORES │
 > ESTÃO DIRETAMEN-      │  ARQUITETO DE SISTEMAS   │
   TE RELACIONADOS       └──────────────────────────┘
   NEGÓCIO.
                          ┌──────────────────────────┐ ➤ FUNCIONAIS: São aqueles diretamente relacionados a EXECUÇÃO do negócio,
  ┌──────────────────┐    │  FINAL USERS DO SISTEMA  │   definem as ações fundamentais para o funcionamento do sistema.
  │   REQUISITOS DO  │ -> │ ENGENHEIROS DE CLIENTES  │
  │      SISTEMA     │    │  ARQUITETO DE SISTEMAS   │ ➤ NÃO FUNCIONAIS: São os relacionados ao formato escolhido para o sistema:
  └──────────────────┘    │   SOFTWARE DEVELOPRES    │   tipo de software (web, mobile e etc), linguagem, estrutura do data base e etc.
  > ESTÃO DIRETAMEN-      └──────────────────────────┘  ╰──────────────────────────────────────┬───────────────────────────────────────╯
    TE RELACIONADOS                                                                            │
    AO SISTEMA.                                                                                │
                      ┌─────────────────┐                                                      │
┌-------------------> │  REQUSITOS DE   │                                                      │
|   ┌──────────────┐  │FACILIDADE DE USO├┐              ┌──────────────────────────────────────┼───────────────────────────────────────┐
|   │ REQUSITOS DE ├─┐└─────────────────┘│              │                                      │                                       │
|   │  DESEMPENHO  │ │┌─────────────────┐│              │                                      │                                       │
|   └──────────────┘ └┤  REQUSITOS DE   ││  ┌───────────┴───────────┐           ┌──────────────┴─────────────┐              ┌──────────┴────────┐
├------------------> ┌┤   EFICIÊNCIA    ├┼──┤ REQUISITOS DO PRODUTO │           │ REQUISITOS ORGANIZACIONAIS │              │REQUISITOS EXTERNOS│
|   ┌──────────────┐ │└─────────────────┘│  └───────────────────────┘           └──────────────┬─────────────┘              └────┬──────────────┘
|   │ REQUSITOS DE ├─┘┌─────────────────┐│                                                     │                                 │
|   │    ESPAÇO    │  │   REQUSITOS DE  ├┤                            ┌────────────────────────┼────────────────────────┐        │
|   └──────────────┘  │  CONFIABILIDADE ││                     ┌──────┴──────┐          ┌──────┴──────┐          ┌──────┴──────┐ │
├-------------------> └─────────────────┘│                     │REQUISITOS DE│          │REQUISITOS DE│          │REQUISITOS DE│ │
|                     ┌─────────────────┐│                     │   ENTREGA   │          │IMPLEMENTAÇÃO│          │    PADRÃO   │ │
|                     │    REQUSITOS    ├┘                     └─────────────┘          └─────────────┘          └─────────────┘ │
├-------------------> │        DE       │                                                                                        │
|                     │  PORTABILIDADE  │                                                                                        │
|┌─                   └─────────────────┘                                                                                        │
└┼ *FACILIDADE DE USO: O quão fácil é trabalhar/utilizar o sistema?                                                              │
 ├ *EFICIÊNCIA: Quanto tempo pode levar para realizar uma ação? Quantos recursos ele usa para atingir o objetivo?                │┌─────────────┐
 ├ *CONFIABILIDADE: O sistema é seguro (existe algum controle de acesso ao sistema)? Garante a persistência dos dados?           ││REQUISITOS DE│
 ├ *PORTABILIDADE: Ele deve capaz de ser executado em quais plataformas?                                                         ││ PRIVACIDADE │
 └─                                                                                        ┌───────────────────┬─────────────────┤└───┬─────────┘
                                                                                  ┌────────┴─────────┐    ┌────┴─────┐    ┌──────┴───┐│
                                                                                  │  REQUISITOS DE   │    │REQUISITOS│    │REQUISITOS├┘
                                                                                  │INTEROPERABILIDADE│    │  ÉTICOS  │    │  LEGAIS  ├┐
                                                                                  └──────────────────┘    └──────────┘    └──────────┘│
                                                                                                                                  ┌───┴─────────┐
                                                                                                                                  │REQUISITOS DE│
                                                                                                                                  │  SEGURANÇA  │
                                                                                                                                  └─────────────┘
</pre>
 3. **Onde e o que coletar?**<br/>
 A extração de requisitos é uma das tarefas mais desafiadoras na área de desenvolvimento de sistemas, envolve técnicas tais como: entrevistas, formulários, workshops, documentação, análise de cenários e etc. A base de todo o desenvolvimento de projeto são os requisitos, por isso é necessário conhecer a fundo o negócio para desenvolver o sistema. Toda a parte de desenvolvimento é construída a partir dos requisitos. A estração de requisitos pode resultar em um documento de requisitos definido pelo padrão IEEE 830.

- **FONTES DE COLETA:**
  - Fontes Humanas -> usuários diretos e indiretos. 
  - Ambiente de Funcionamento do Sistema -> empresas conveniadas, governo, setores relacionados que afetam direta ou indiretamente realização do negócio.
  - Análises de Mercado -> atentar para recursos utilizados e explorados no mercado.
  - Análise de Produtos Competidores -> observar os produtos já disponíveis no mercado.
  - Conhecimento do Domínio -> possuir conhecimento prévio das definições básicas do negócio.

- **RESULTADOS DA COLETA:**
  - *Quem realiza?* Usuários responsáveis por executar a ação.
  - *O que realiza?* Ação necessária para a operação.
  - *Qual o estímulo?* Informações que serão processadas para realizar o negócio.
  - *Qual o resultado do que se realiza?* Resposta do processamento.

## Engenharia de Requisitos
 São procedimentos de construção de requisitos, que vem desde a descoberta até a validação de requisitos.
 
 1. **O que é a Engenharia de Requisitos? Conhecendo o processo de busca de requisitos**<br/>
 Segundo KOTONYA; SOMMERVILLE (1998), o processo de engenharia de requisitos envolve as atividades relacionadas com a definição dos requisitos de software de um sistema, criatividade, interação de diferentes pessoas, conhecimento e experiência para transformar informações diversas (sobre a organização, sobre leis, sobre o sistema a ser construído e etc) em documentos e modelos que direcionam o desenvolvimento de software.<br/>
 Para realizar a engenharia de requisitos, usa-se um processo proposto na Metodologia Orientada a Objetos: Workflow RUP de requisitos apresenta tarefas, atribuídas a trabalhadores para descoberta, análise e validação dos requisitos do sistema. No ambiente de negócio, antes de começarmos o desenvolvimento, observamos o fluxo de trabalho que vai desde a identificação da linguagem e vocabulário do usuário até a parte de testes do produto. Durante o levantamento de requisitos e entendimento do negócio do cliente, devemos nos perguntar: O que é necessário extrairmos deste processo? O que é importante neste levantamento de requisitos? O Workflow RUP nos ajuda a desenhar as atividades que devem ser desenvolvidas e realizadas pelo desenvolvedor para que se tenha requisitos consistentes, não ambíguos, requisitos reais, relevantes e completos. Que é o que buscamos quando estamos desenvolvendo um sistema. Por isso a importância de trazer para perto do desenvolvimento o usuário, pois ele é quem melhor conhece as necessidades do sistema.

 2. **Workflow de Requisitos - O que propõe? Qual é o fluxo de trabalho de requisitos?**

- **Proposta do Workflow RUP:**
  - **TAREFAS**: Atividades a executar.
  - **TRABALHADORES**: Perfil de quem deve executar as atividades.
  - **ARTEFATOS**: É o produto resultante de cada tarefa executada.

- **Características do Workflow RUP:**
  - **Dirigido por Casos de Uso**: Dentro da Metodologia OO, identificamos os casos de uso como sendo os requisitos do sistema, todo o projeto é centrado no caso de uso (diagrama contendo todos os procedimentos, fases e etapas - sempre será dirigido por este modelo).
<pre>
              ┌─
      ^       │ - Requisitos: Capturar, definir e validar casos de uso
      │       │
 CASOS DE USO │ - Análise & Projeto  <─┐
  INTEGRAM O  │                        ├─ Realizar os Casos de Uso
   TRABALHO   │ - Implementação      <─┤
      │       │                        │
      V       │ - Testes             <─┴─ Verificar se casos de uso satisfazem
              └─

 		> Processo Iterativo e Incremental:
 			O software é desenvolvido em partes, ao final de cada iteração é implantanda a parte desenvolvida. Dentro de cada parte é feito o levantamento de requisitos, este comportamento iterativo e incremental está previsto como uma característica do Workflow RUP.

 		┌───────┐
 		│ANÁLISE│
 		└───────┘↘
 		 _      ┌───────┐
 		 \      │PROJETO│
 		  \     └───────┘ ↘
 		n vezes       ┌───────────┐
 		    \         │CODIFICAÇÃO│
 		     \_       └───────────┘ ↘
 		                     ┌───────────────────┐
 		                     │TESTES E INTEGRAÇÃO│
 		                     └───────────────────┘

		Este processo tem como características:
			- Evolução de protótipos que se mostram aos usuários e clientes.
			- Cada iteração reproduz um ciclo em cascata em menor escala.
			- Objetivos de uma iteração se estabelece em função da evolução das iterações precedentes (uma ordem de execução das iterações é definida através de critérios de prioridade gerados em análises de risco, de interdependência e precedência entre as partes).
			- Atividades se encadeiam em uma mini-cascata com um alcance limitado pelos objetivos da iteração.

 		> Centrado em Arquitetura:
 			Dizemos que é centrado em arquitetura por ter uma repetição ciclica na concepção e elaboração onde são feitas tanto a análise quanto o projeto que geram a arquitetura do software. É a partir da arquitetura que construímos e fazemos a transição da implementação, assim crescendo no processo de desenvolvimento.

 		┌─────────┬──────────┬──────────┬─────────┐
 		│CONCEPÇÃO│ELABORAÇÃO│CONSTRUÇÃO│TRANSIÇÃO│
 		└─────────┴──────────┴──────────┴─────────┘
 		         /\_    ┌─────────────────────────
 		        /   \_  │      ARQUITETURA
 		 ______/      \_│
</pre>

 3. **Workflow de Requisitos**
  - Visão do Analista de Sistemas: Qual o trabalho do Analista de Sistemas?
  - Visão da Equipe: Qual o trabalho da equipe?
<pre>
 ┌─--------------------------------------------------------------------------------------------------------------------------------------─┐
 |                                                      ┌───────────────────────┐                                                         |
 |                         ┌───────────────────────┐    │ ELICITAR NECESSIDADES │ ───┐                                                    |
 |                         │   DESENVOLVER VISÃO   │ -> │       DO CLIENTE      │    v                                                    |
 | ┌─────────────────────┐ └───────────────────────┘    └───────────────────────┘   ┌──────────────────────┐    ┌───────────────────────┐ |
 | │ ANALISTA DE SISTEMA │             ↓                                            │  ENCONTRAR CASOS DE  │ -> │   ESTRUTURAR MODELO   │ ──┐
 | └─────────────────────┘ ┌───────────────────────┐    ┌───────────────────────┐   │     USO E ATORES     │ ┐  │    DE CASO DE USO     │ | │
 |                         │ GERENCIAR DEPENDÊNCIAS│ -> │IDENTIFICAR VOCABULÁRIO│   └──────────────────────┘ │  └───────────────────────┘ | │
 |                         └───────────────────────┘    │        COMUM          │    ^ │                     │                            | │
 |                                                      └───────────────────────┘ ───┘ │                     │                            | │
 └─------------------------------------------------------------------------------------│---------------------│---------------------------─┘ │
 ┌─------------------------------------------------------------------------------------│---------------------│---------------------------─┐ │
 | ┌─────────────────────┐                                                             │                     v                            | │
 | │  ESPECIFICADOR  DE  │                                                             │ ┌───────────────> ┌───────────────────────┐      | │
 | │     CASO DE USO     │                                                             │ │                 │ DETALHAR CASOS DE USO │ ───────┤
 | └─────────────────────┘                                                             │ │ ┌────────────── └───────────────────────┘      | │
 └─------------------------------------------------------------------------------------│-│-│---------------------------------------------─┘ │
 ┌─------------------------------------------------------------------------------------│-│-v---------------------------------------------─┐ │
 | ┌─────────────────┐                                                                 │ │ ┌──────────────┐    ┌──────────────┐           | │
 | │  PROJETISTA DE  │                                                                 │ │ │ MODELAGEM DE │ -> │ PROTÓTIPO DE │ ────────────┤
 | │   INTERFACE     │                                                                 │ │ │  INTERFACE   │    │  INTERFACE   │           | │
 | └─────────────────┘                                                                 │ │ └──────────────┘    └──────────────┘           | │
 └─------------------------------------------------------------------------------------│-│-----------------------------------------------─┘ │
 ┌─------------------------------------------------------------------------------------│-│-----------------------------------------------─┐ │
 |                                                                                     │ └───────────────────────────┐                    | │
 | ┌───────────┐                                                                       │  ┌────────────────────────┐ │                    | │
 | │ ARQUITETO │                                                                       └> │ PRIORIZAR CASOS DE USO │ ┘                    | │
 | └───────────┘                                                                          └────────────────────────┘                      | │
 └─--------------------------------------------------------------------------------------------------------------------------------------─┘ │
                                                                                       ┌────────────────────────────────────────────────────┘
 ┌─------------------------------------------------------------------------------------│-------------------------------------------------─┐
 | ┌───────────────────────────┐                                                       ├> ┌────────────────────┐                          |
 | │ ANALISTA DE TESTE/REVISOR │                                                       ├> │ REVISAR REQUISITOS │                          |
 | └───────────────────────────┘                                                       └> └────────────────────┘                          |
 └─--------------------------------------------------------------------------------------------------------------------------------------─┘
</pre>

## Processos de Levantamento de Requisitos
 Vimos que os requisitos são as funcionalidades e necessidades do negócio que possamos realizar o desenvolvimento do projeto. Para isso, existem técnicas para melhor descobrir e conhecer os requisitos.

 ### 1. Técnicas de Elicitação
 O que é elicitar? É o mesmo que: buscar, investigar ou identificar; Ou seja, é todo o processo que se têm de: busca, reconhecimento e entendimento do requisito.<br/>
 Sabemos que a Engenharia de Software é a definição de métodos, ferramentas e técnicas usados no processo de desenvolvimento de softwares. Algumas técnicas que usamos para realizar a Elicitação são:

 #### Entrevista
 Trata-se de uma técnica que falicita a comunicação com o usuário através um conjunto de perguntas (abertas ou fechadas) para conhecermos quais são as necessidades e expectativas do usuário.

- **Entrevista - Tipos**
<pre>
┌─────────────────────────────────────────────────────┬────────────────────────────────────────────────────┐
│                       ABERTA                        │                      FECHADA                       │
├─────────────────────────────────────────────────────┼────────────────────────────────────────────────────┤
│Natureza exploratória: sem restrição ao tipo ou tama-│Perguntas com respostas predefinidas para escolha.  │
│nho das respostas.                                   │                                                    │
├─────────────────────────────────────────────────────┼────────────────────────────────────────────────────┤
│Utilizada quando se tem pouco ou nenhum conhecimento.│Utilizada para obter respostas diretas.             │
├─────────────────────────────────────────────────────┼────────────────────────────────────────────────────┤
│Utilizada para colher percepções sobre assuntos.     │Destina-se a coleta quantitativa e quantificável.   │
├─────────────────────────────────────────────────────┼────────────────────────────────────────────────────┤
│Destina-se à coleta qualitativa e busca mais detalha-│                                                    │
│mento.                                               │                                                    │
└─────────────────────────────────────────────────────┴────────────────────────────────────────────────────┘
</pre>
- **Entrevista - Classificação**
  - **Estruturada**: Roteiro (de perguntas previamente elaboradaras para ter objetivo do que se espera da entrevista - feito para um nível organizacional estratégico por ser mais focada e levar menos tempo para ser executada)
  - **Não Estruturada**: Perguntas Flexíveis (busca maior detalhamento sobre as operações relacionadas as tarefas realizadas pelo usuário e atividades do negócio).
  - **Semi Estruturada**: Junção da Estruturada e Não Estruturada (tem um roteiro elaborado contendo também perguntas abertas).

- **Entrevista - Requisitos Básicos**
  - Definir o nível do entrevistado e estabelecer o roteiro de perguntas/tópicos.
  - Não ter noções preconcebidas sobre o que é necessário.
  - Não influenciar o entrevistado - saber ouvir.
  - Esclarecer pontos a serem abordados e objetivos a serem alcançados.
  - Estar ciente da prática organizacional - muitos requisitos reais podem não ser discutidos devido às implicações políticas (que irão direcionar o trabalho do desenvolvimento).

 #### Questionário
 Propõe realizar o levantamento dos requisitos num grupo de pessoas que vá atender a um conjunto de questões padronizadas. Um exemplo disto seria a pesquisa de levantamento na empresa para analisar o parque tecnológico que ela possui, para isso, o ideal seria fazer as mesmas perguntas (padronizadas) para todos os setores: "Qual o seu equipamento?", "O que você mais usa?", "Quantos equipamentos você usa?" e etc. O questionário é uma excelente ferramenta para agilizar o levantamento.
 	
- **Questionário - Características**
  - Agiliza o processo de pesquisa, embora possua pouca interação.
  - Pode ser impresso ou online.
  - Perguntas abertas e fechadas.
  - São necessários orientações e instruções para o seu preenchimento e o contexto das perguntas não deve apresentar ambiguidades, deixando clara a proposição.

 #### Brainstorming
 Como o nome já diz, propõe uma tempestade de ideias; É dado um tema como assunto de discussão para um determinado grupo com características/especialidade pré-selecionada com o objetivo de encontrar uma solução para um problema de forma conjunta, com olhares diferentes e soluções inovadoras que atendem as expectativas de todos. Mas é necessário que haja alguém para conduzir o grupo, para que as ideias não fujam muito do assunto principal e desviem do objetivo de enconrar soluções.
 	
- **Brainstorming - Características**
  - Tempo de duração predefinido (isso ajuda a manter a objetividade na busca da solução - em torno de 1h).
  - Participantes devem estar envolvidos direta ou indiretamente ao tema apresentados.
  - Deve-se eleger um participante da equipe para conduzir as ideias, motivando a equipe, ouvindo e não influenciando nas respostas.
  - Condutor pode eleger um membro para anotar sintetizações.
  - Reunião deve compor um grupo enxuto e selecionado de participantes que façam parte do sistema e façam sentido para colaborar com a solução (isso ajuda a manter a objetividade na busca da solução - em torno de 10).

 #### Etnografia**
 O principal objetivo da Etnografia é entender o comportamento natural do usuário final no contexto do seu próprio ambiente de atuação (Courage e Baxter, 2005).Em outras palavras, propõe que acompanhemos o dia-a-dia do usuário para vivenciar as suas práticas e modo de execução das suas tarefas. Isso ajuda a conhecer melhor o negócio, porém demanda muito tempo para realmente poder entender plenamente os seus processos.
<pre>
                           ┌───────────────────────┐
┌─────────────────────┐    │ REUNIÕES DE PRESTAÇÃO │    ┌───────────────────┐
│ ANÁLISE ETNOGRÁFICA ├──> │ DE CONTAS (DEBRIEFING)├──> │ ETNOGRAFIA FOCADA │
└─────────────────────┘    └───────────────────────┘    └─┬───────┬─────────┘
                                 ^            ┌───────────┘       │
                                 │            v                   │
┌────────────────────┐        ┌──┴──────────────┐                 v
│ DESENVOLVIMENTO DO ├───>    │ PROTOTIPAÇÃO DO ├──> ┌────────────────────────┐
│  SISTEMA GENÉRICO  │        │     SISTEMA     │    │ AVALIAÇÃO DO PROTÓTIPO │
└────────────────────┘        └─────────────────┘    └────────────────────────┘
</pre>
 ### 2. Aplicando Técnicas de Elicitação

 - **Pontos Relevantes - Entrevista**<br/>
 Como o sistema é desenvolvido PARA o usuário, é de grande importância conhecer QUEM É o usuário, e de acordo com o nível organizacional existem formas diferentes de direcionar e conduzir a entrevista para buscar as informações necessárias.
<pre>
          _________
      	 /         \
        /ESTRATÉGICO\        -> Quais informações apoiam o processo de decisão? 
       /_____________\       -> Está prevista alguma expansão?
      /               \
     /    GERENCIAL    \     -> Como acompanha o processo?
    /___________________\    -> Realiza funções do nível operacional?
   /                     \   
  /      OPERACIONAL      \  -> Como realiza as operações diárias?
 /_________________________\ -> Quais são as dificuldades?
</pre>

 - **Pontos Relevantes - Brainstorming**<br/>
 Perguntas devem ser apresentadas com algum propósito e sem a influência do condutor, devem ser feitas perguntas sem viés, para que a resposta não seja direcionada para o que o desenvolvedor pensou em fazer e sim entender qual a expectativa do entrevistado. Exemplo de um diagrama de afinidade:
<pre>
┌──────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                           DIAGRAMA DE AFINIDADE                                          │
├───────────────────────────────────┬───────────────────────────────────┬──────────────────────────────────┤
│         INFLUÊNCIA CLIENTE        │       RELACIONAMENTO CLIENTE      │           DISPOSITIVOS           │
├───────────────────────────────────┼───────────────────────────────────┼──────────────────────────────────┤
│      Resposta do entrevistado     │      Resposta do entrevistado     │      Resposta do entrevistado    │
├───────────────────────────────────┼───────────────────────────────────┼──────────────────────────────────┤
│      Resposta do entrevistado     │      Resposta do entrevistado     │      Resposta do entrevistado    │
├───────────────────────────────────┼───────────────────────────────────┼──────────────────────────────────┤
│      Resposta do entrevistado     │      Resposta do entrevistado     │      Resposta do entrevistado    │
└───────────────────────────────────┴───────────────────────────────────┴──────────────────────────────────┘
</pre>

- **Pontos Relevantes - Questionário**
  - O questionário é destacado como uma ferramenta eficaz para acelerar o processo de levantamento de requisitos, permitindo coletar informações de forma estruturada e eficiente em um grupo de pessoas.
  - O levantamento de requisitos é feito através de questões padronizadas, ou seja, todas as pessoas respondem as mesmas perguntas, o que garante consistência e facilita a análise dos dados.

- **Pontos Relevantes - Etnografia**
  - Fazer um planejamento no momento de montar o cronograma de ações para reservar o tempo necessário de execução da técnica.
  - Escolher o usuário que será observado e realizar o devido agendamento com o mesmo.

 **3. Documentação de Requisitos**<br/>
 Uma documentação bem feita durante o processo de desenvolvimento ajuda e facilita no desenvolvimento e garante a continuidade do sistema para colaboradores vindos posteriormente. A documentação é uma garantia de contrato pois garante o escopo do que será desenvolvido.
 	
#### Objetivos
  - Registrar informações levantadas para validação dos usuários.
  - Estabelecer contrato para assegurar necessidades definidas.
  - Fonte de consulta para equipe de desenvolvimento.
  - Garantir continuidade do sistema.
<pre>
                           ┌───────────────────────────────────────────────────────────────┐
 ┌────────────────────┐    │ Especificam e lêem os requisitos para verificar se eles aten- │
 │ GERENTE DO SISTEMA ├──> │ dem às suas necessidades. Os clientes especificam as mudanças │
 └────────────────────┘    │ nos requisitos.                                               │
                           └───────────────────────────────────────────────────────────────┘
                           ┌───────────────────────────────────────────────────────────────┐
 ┌────────────────────┐    │ Usam o documento de requisitos para planejar um pedido de uma │
 │      GERENTES      ├──> │ proposta para o sistema e planejar o processo de desenvolvi-  │
 └────────────────────┘    │ mento do sistema.                                             │
                           └───────────────────────────────────────────────────────────────┘
 ┌────────────────────┐    ┌───────────────────────────────────────────────────────────────┐
 │   ENG DE SISTEMA   ├──> │Usam os requisitos p/ compreender o sistema a ser desenvolvido.│
 └────────────────────┘    └───────────────────────────────────────────────────────────────┘
 ┌────────────────────┐    ┌───────────────────────────────────────────────────────────────┐
 │ENG DE TESTE DE SSTM├──> │ Usam os requisitos para criar testes de validação do sistema. │
 └────────────────────┘    └───────────────────────────────────────────────────────────────┘
 ┌────────────────────┐    ┌───────────────────────────────────────────────────────────────┐
 │ENG DE MANUT DE SSTM├──> │Usam os requisitos p/ compreender o sistema e relação das prts.│
 └────────────────────┘    └───────────────────────────────────────────────────────────────┘
</pre>

#### Observações Gerais
  - Empresas definem o formato da documentação em suas metodologias.
  - Necessidade de uma documentação é real para o desenvolvimento e comprometimento do usuário na garantia de continuidade.
  - Não é necessário que seja extensa, mas imprescindível que se mantenha atualizada.

- **IEEE** (*organização dedicada ao avanço da inovação e excelência tecnológica para o benefício da humanidade*) define estrutura para orientação na documentação de requisitos apresentada no *IEEE/ANSI 830-1998*, contendo:
  - **INTRODUÇÃO** -> Escopo e propósitos gerais.
  - **DESCRIÇÃO GERAL** -> Perspectiva do produto, características dos usuários, restrições e funções do produto, requisitos específicos, funcionais, não funcionais, apêndices e índice.

## Representação de Requisitos
 Já sabemos o que é e como identificar um requisito, agora vejamos como fazer a representação destes. Para facilitar o entendimento do usuário sobre quais são as tarefas do desenvolvimento, iremos aprender a representar os requistos em modelos propostos na Metodologia OO.<br/>
 A metodologia OO é um paradigma computacional, que representa uma forma de pensar e conceber sistemas e programas de computador. A OO é uma tecnologia que pressupõe o mundo real na visão de "objetos" permitindo descrevê-los e simular seus comportamentos. Objeto é um elemento do contexto do negócio que possui conhecimento, comportamento e identidade. Um elemento identificado distintamente (linha) e que armazena um estado, que poderá ser alterado com operações. Por exemplo, o cliente em um sistema de vendas.<br>
 Para a concepção de sistemas, a metodologia OO definiu a UML como uma linguagem de modelagem no suporte do desenvolvimento. A representação é desenvolvida a partir da construção de modelos que, cada um com características próprias, atendem a natureza da aplicação a ser estudada. Portanto, os modelos possuem uma comunicação direta e se completam.

 ### 1. Modelos de Representação - Princípios da UML (linguagem de modelagem unificada)
 Foram propostos na metodologia OO na forma de uma linguagem de modelagem unificada denominada UML, nesta linguagem existem uma série de diagramas que foram criados para a representação dos requisitos. Estes modelos são propostos tanto para a parte lógica quanto para a parte física do sistema. Os modelos descritos na linguagem se complementam, visto que evoluem um a partir de outro (são ajustáveis).

- **Objetivos**
  - Representar requisitos do sistema em estudo.
  - ser independente da linguagem de programação e do processo de desenvolvimento.
 	
- **Vantagens**
  - Facilidade na comunicação.
  - Fácil alterabilidade.
  - Fornece visão geral do sistema.
  - Integração entre as ferramentas.
  - Documentação para uso no desenvolvimento e após a implantação.

- **Modelos UML**
  - Diagrama de Classe (representa a ligação e associação entre os dados e componentes do sistema)
  - Diagrama de Estado (representa a condição de um dado e o estado de um objeto dentro do sistema)
  - Diagrama de Sequência (representa quais os dados processados e métodos de processamento usados no sistema)
  - Caso de Uso (diagrama proposto para representação de requisitos)

 ### 2. Caso de Uso - Simbologia Diagrama de Caso de Uso: é a representação de um requisito do sistema.
<pre>
	- REQUISITO
 		SÍMBOLO:
			elipse com o nome do requisito no centro
 		O nome do requisito deve:
 			> ser identificado por um verbo no infinitivo (pois tem conotação de ação) e um substantivo.
	 		> ter o significado claro expressado a realização do requisito.

	- ATOR (representação dos stakeholders que realizam o caso de uso, representam quem possui o comando dos casos de uso que irão atender aos requisitos. É importante atentar que o ATOR é quem dá início e executa o caso de uso)
		SÍMBOLO:
		    🚹️
                NOME ATOR
		Outros Sistemas:
		 	┌───────────────────────┐
 			│   << nome sistema>>   │
 			└───────────────────────┘

	- INTERAÇÃO

		> ator - caso de uso: representa a realização do caso de uso pelo ator

        🚹️ ──────( VERBO INFINITIVO SUBSTANTIVO ) <- A interação oferece visibilidade de realização da ação
    NOME ATOR

		> caso de uso - caso de uso: representa a realização do caso de uso por outro caso de uso

                                                        ( VERBO INFINITIVO SUBSTANTIVO )
                                                       ⬈ 
                                                    &lt;include&gt;
                                                 ⬈     └ sempre acontece
        🚹️ ──────( VERBO INFINITIVO SUBSTANTIVO )
    NOME ATOR                                    ⬉     ┌ acontece em função de uma regra
                                                &lt;extended&gt;
                                                      ⬉
                                                        ( VERBO INFINITIVO SUBSTANTIVO )

		> generalização de ator
		representa vários tipos de um mesmo ator e as diferentes atividades atribuídas a ele(s)

                                                        ( VERBO INFINITIVO SUBSTANTIVO )
                                                       ⬈
                                                    &lt;include&gt;
                                                 ⬈
        🚹️ ──────( VERBO INFINITIVO SUBSTANTIVO )
     NOME ATOR                                   ⬉
    ⬈        ⬉                                     &lt;extended&gt;
    ❚          ❚                                        ⬉
    ❚          ❚                                         ( VERBO INFINITIVO SUBSTANTIVO )
    ❚          ❚
    🚹️       🚹️ ──────( VERBO INFINITIVO SUBSTANTIVO )
NOME ATOR  NOME ATOR

		> generalização de caso de uso
		quando se quer representar o mesmo caso de uso com funções comuns a outros casos de uso

                 ( VERBO INFINITIVO SUBSTANTIVO )
                /                                ⬉
        🚹️     ❮                                   ( VERBO INFINITIVO SUBSTANTIVO )
     NOME ATOR  \                                ⬋
                 ( VERBO INFINITIVO SUBSTANTIVO )
</pre>

 #### Diagrama de Casos de Uso - Processo de Construção

 1. **Exploração - Identificando Requisitos**<br/>
 É a primeira etapa para a construção do Diagrama de Casos de Uso, onde iremos conhecer os requisitos, os atores e os stakeholders que irão realizar a execução dos requisitos.

- **Objetivo**
  - Busca dos requisitos conceituais junto aos stakeholders com a utilização da técnica de elicitação de requisitos adequados ao contexto.

- **Atividades**
  - Identificação dos requisitos (é necessário conhecer quais são os procedimentos)
  - Identificação dos atores
  - Construção da tabela de requisitos (onde relacionamos os requisitos aos atores responsáveis)
<pre>
 ┌──────────────────────────────────────────────────────────────────────────────────────────────────────────┐
 │                                           TABELA DE REQUISITOS                                           │
 ├───────────────────────────────────┬──────────────────────────────────────────────────────────────────────┤
 │                                   │                             CASO DE USO                              │
 │                                   ├──────────────────────────────────────────────────────────────────────┤
 │                                   │                             CASO DE USO                              │
 │                                   ├──────────────────────────────────────────────────────────────────────┤
 │               ATOR                │                             CASO DE USO                              │
 │                                   ├──────────────────────────────────────────────────────────────────────┤
 │                                   │                             CASO DE USO                              │
 │                                   ├──────────────────────────────────────────────────────────────────────┤
 │                                   │                             CASO DE USO                              │
 └───────────────────────────────────┴──────────────────────────────────────────────────────────────────────┘
</pre>

 2. **Construção - Definindo Simbologias a Utilizar**<br/>
 Construir o Diagrama de Caso de Uso a partir da lista de requisitos gerada na etapa de Exploração. A partir da tabela de requisitos é preciso verificar se a interação é com o ator ou com outro caso de uso.
<pre>
                     CASO DE USO
       CASO DE USO ┐      │      ┌ CASO DE USO
                         🚹️
                      NOME ATOR
       CASO DE USO ┘      │      └ CASO DE USO
                     CASO DE USO
</pre>

 3. **Refinamento - Avaliando a Melhor Apresentação**<br/>
 Análise de aspectos técnicos necessários na implementação do projeto buscando a reutilização, visando usar os melhores processos que irão facilitar a construção e implementação do sistema construído. Situações a Analisar nesta etapa: Casos de Uso com interseção de um conjunto de procedimentos, ou seja, é percebido que dois ou mais casos de uso realizam a(s) mesma(s) ações. Exemplo:
<pre>
                     CASO DE USO
       CASO DE USO ┐      │      ┌ CASO DE USO
                         🚹️
                      NOME ATOR
       CASO DE USO ┘      │      └ INTERSEÇÃO ↰
                     CASO DE USO        ↑        CASO DE USO
                                   CASO DE USO
</pre>

 4. **Evolução - Definindo Novos Casos de Uso**<br/>
 Buscar Casos de Uso que não estão coesos, ou seja, realizam muitas atividades ocasionando um componente grande, com muitas funções, dificultando no desenvolvimento, teste e manutenção. Exemplo:
<pre>
         CASO DE USO CASO DE USO
                    \     │      ┌ CASO DE USO
  NOVO CASO DE USO ─     🚹️
                      NOME ATOR
       CASO DE USO ┘      │      └ INTERSEÇÃO ↰
                     CASO DE USO        ↑        CASO DE USO
                                   CASO DE USO
</pre>

 #### Especificação de Caso de Uso

 1. **Descrição de Caso de Uso: O que é descrever um caso de uso?**<br/>
 A descrição de caso de uso tem como objetivo apresentar os procedimentos realizados pelo caso de uso, não é objetivo da Descrição de Caso de Uso ser uma definição de programa para o desenvolvedor programar, na realidade está mais para um suporte com descrições detalhadas sobre o que acontece dentro de cada Caso de Uso. Cada caso de uso possui sua própria especificação, sendo os tipos: Expandida e Não Expandida. A Expandida é utilizada para especificar Casos de Uso que possuem complexidade e apresentam regras e interações com outros casos de uso. A Não Expandida é aplicada aos casos de uso que não possuem complexidade e com poucas regras.

  - **Não Expandida**: Apresentação sucinta dos procedimentos, como um pequeno relato apresentando os objetivos e pequenas regras a serem atingidos. Toda vez que temos um caso de uso de baixa complexidade e poucas regras de negócio, trata-se de um procedimento simples que pode ser descrito usando o tipo não expandido, não sendo necessário (ou devido a sua pouca complexidade não é possível) a criação de um passo a passo. A Descrição de Caso de Uso - Não Expandida requer uma estrutura básica de representação composta pelo cabeçalho para identificar o caso de uso e uma descrição de procedimentos de forma narrativa.

  - **Expandida**: Apresentação detalhada dos procedimentos, apresentando os objetivos a serem atingidos passo a passo e com referência a responsabilidade do ator ou sistema.

**Preocupações a considerar:**
  - Usuário aferir o atendimento ao requisito; As descrições de caso de uso vão servir para podermos validar junto ao usuário se os requisitos compreendidos por nós vão realmente de acordo com as expectativas.
  - Avaliar as restrições; Verificar as regras do sistema estipuladas para cada caso de uso.
  - Dar segurança ao projeto no sentido do programador ter entendimento completo; Dá suporte para que a equipe de desenvolvimento tenha o entendimento do requisito.
  - Documentação; Ajuda a complementar e compor a documentação do software.

 Podemos observar que a especificação de caso de uso serve como recurso para dar continuidade no sistema, além de dar apoio para a equipe de desenvolvimento durante o processo de programação do software.

 2. **Descrição de Caso de Uso**<br/>
 Como descrever um caso de uso? Veremos agora quais são as informações necessárias para documentar a descrição do caso de uso.
<pre>
┌─────────────────────────────────────────────┐
│                  ESTRUTURA                  │
├──────────────────────┬──────────────────────┤
│      EXPANDIDA       │     NÃO EXPANDIDA    │
├──────────────────────┼──────────────────────┤
│      CABEÇALHO       │      CABEÇALHO       │
│     FLUXO NORMAL     │     DESCRIÇÃO DO     │
│   FLUXO ALTERNATIVO  │     PROCEDIMENTO     │
└──────────────────────┴──────────────────────┘
</pre>
- **CABEÇALHO**: Apresenta as informações do caso de uso.
  - *Nome*: <nome do caso de uso (deve ser o mesmo nome usado no diagrama de caso de uso)>
  - *Descrição sucinta*: <objetivos do caso de uso>
  - *Pré-condição*: <condições necessárias para início da realização do caso de uso>
  - *Pós-condição*: <resultado da execução do caso de uso>
  - *Observação: É possível que em uma descrição não se tenha pré-condição e/ou pós-condição;
- **FLUXO NORMAL**: É o passo a passo daquilo que se espera que aconteça frequentemente, ou seja, é o passo a passo dos procedimentos sem desvio. Uma lista de procedimentos considerando os passos frequentes e sem exceção.
- **FLUXO ALTERNATIVO**: É a tratativa da exceção, qual é o passo a passo dos procedimentos de exceção e condições alternativas para determinado passo do Fluxo Normal.
- **DESCRIÇÃO DO PROCEDIMENTO**: Apresentação textual das regras existentes e dos procedimentos básicos.

 3. **Descrição de Caso de Uso: Conhecendo a descrição expandida.**

- **Estrutura - Fluxo Normal**<br/>
  *Passos de ENTRADA, PROCESSAMENTO e SAÍDA.*
  - Passos devem ser numerados/sequenciados logicamente;
  - Cada passo é realizado pelo ator ou sistema;
  - Primeiro e último passo devem ser do sistema;
  - Não se utiliza repetições e condições;
  - Não trata erros;
  - Pode incluir comentários - //* ou ***;
  - Referência ao &lt;include&gt;: Sistema &lt;include&gt; "nome do caso de uso";
  - Referência ao &lt;extend&gt;: Sistema &lt;extend&gt; "nome do caso de uso";
  - Manter padrão de verbos e adjetivos;
  - Definir nomenclatura própria de detalhamento;
  - Sentenças curtas, um passo não deve ter mais do que uma linha;

- **Estrutura - Fluxo Alternativo**<br/>
*Passos direcionados para a exceção de procedimentos.*<br/>
  **x será a numeração do caso de uso representado no fluxo normal, que terá a exceção;*
  - x.0 nome da sentença do fluxo normal que terá exceção;
  - x.1 evento ocorrido que provocou a exceção;
  - x.1.1 passos para tratamento da exceção;

 **Obs: Não são todos os passos citados no Fluxo Normal que terá citação no Fluxo Alternativo;*

<pre>
EXEMPLO:
1.0 Sistema solicita login
	1.1 Usuário não cadastrado
		1.1.1 Ator clica em [realizar cadastro]
		1.1.2 Sistema &lt;extend&gt; "Novo Cadastro"
			1.1.3 Retornar 2.0
</pre>

#### Caso de Uso e Descrição de Caso de Uso

 1. **Influência da Descrição no Diagrama de Caso de Uso:**<br/>
 Um dos efeitos gerados a partir da descrição de caso de uso é podermos identificar é algum procedimento que irá aprimorar o diagrama de caso de uso, o uso da descrição direciona a evolução do diagrama de caso de uso, buscando a reutilização e coesão. Quando a especificação de caso de uso está sendo realizada são identificadas situações em que o engenheiro de software, a partir da análise dessas situações, pode ter a necessidade de remodelar o Diagrama de Caso de Uso.  As modificações são aplicadas na intenção do projeto ter procedimentos coesos, reutilizáveis e fácil operação.<br/>
 *Diagrama de Caso de Uso x Descrição de Caso de Uso*
    - **Criação de novo caso de uso**: Conjunto de procedimentos repetidos em pontos diferentes da mesma descrição.
    - **Unificação de casos de uso**: Conjunto de procedimentos repetidos em descrições diferentes.
    - **Eliminação de caso de uso**.

 2. **Outras Formas de Descrição de Caso de Uso:** Formatos Diferentes de descrição.
<pre>
┌─────────────────────────────────────────────┐
│              ESTRUTURA TABULAR              │
├──────────────────────┬──────────────────────┤
│       SISTEMA        │         ATOR         │
├──────────────────────┼──────────────────────┤
│   Apresenta a tela   │                      │
├──────────────────────┼──────────────────────┤
│  Apresenta opção de  │    Escolhe  login    │
│         login        │                      │
├──────────────────────┼──────────────────────┤
│  Apresenta lista de  │    Escolhe  opção    │
│        opções        │                      │
├──────────────────────┼──────────────────────┤
│                      │  Confirma  operação  │
├──────────────────────┼──────────────────────┤
│    Acessa usuário    │                      │
├──────────────────────┴──────────────────────┤
│ Fluxo Alternativo 1: Apresenta opções login │
├──────────────────────┬──────────────────────┤
│                      │      Clica NOVO      │
├──────────────────────┼──────────────────────┤
│ &lt;extend&gt;  "Cadastrar │                      │
│       usuário"       │                      │
├──────────────────────┴──────────────────────┤
│Fluxo Alternativo X: xxxxxxxxxxxxxxxxxxxxxxx │
├──────────────────────┬──────────────────────┤
│                      │                      │
├──────────────────────┴──────────────────────┤
│Informações Gerais                           │
├──────────────────────┬──────────────────────┤
│ Pré-condição         │                      │
├──────────────────────┼──────────────────────┤
│ Pós-condição         │                      │
├──────────────────────┼──────────────────────┤
│ Exceção              │                      │
└──────────────────────┴──────────────────────┘
</pre>

**Resumo Geral**

 1. **Elicitação de Requisitos: Entendendo o escopo do negócio**<br/>
	É todo o processo de busca de informações para conhecer o negócio, que será a base do desenvolvimento do software. No levantamento de requisitos é definido o escopo, que é a delimitação de estudo do projeto. Para isso usamos as técnicas de elicitação, são elas as principais:
	- **Entrevista**: É feito um formulário para a entrevista, seguindo um roteiro direcionando a coleta de informações sobre o negócio.
	- **Questionário**: Conjunto de questões padronizadas para atingir um número grande de entrevistados.
	- **Brainstorming**: É feita uma reunião com todos os envolvidos sobre o determinado tema, para que dentro dos diferentes pontos de vistas, se possa chegar em um consenso para a solução.
	- **Etnografia**: Vivencia-se o dia a dia do usuário, acompanhando suas atividades para aprender e/ou aprofundar o conhecimento sobre o negócio e entender quais são as necessidades a serem solucionadas.
	O primeiro passo para se aplicar uma técnica de elicitação, é identificar qual é a estrutura organizacional da empresa e quais são seus usuários a nível organizacional (estratégico, gerencial/tático e operacional) para se ter um melhor conhecimento do negócio e como desenvolver a melhor solução para ele em cada nível existente.

 2. **Levantamento de Requisitos: Identificando atores e casos de uso**<br/>
	**Requisitos Funcionais x Requisitos Não Funcionais**
	- **FUNCIONAIS**: São os requisitos que estão relacionados as ações e procedimentos diretamente envolvidos ao cerne/funcionamento do sistema.
	- **NÃO FUNCIONAIS**: São os requisitos irão dar forma/formato ao sistema e guiarão sua construção, garantindo a segurança, consistência, usabilidade e UX/UI da solução.
	Então nesta etapa, é necessário identificar as ações que fazem parte do negócio (requisitos funcionais), quais as necessidades do usuário (não funcionais) e quem são os stakeholders que irão direcionar a definição de cada tipo de requisito.
<pre>
FUNCIONAIS
	┌──────────────────────┬──────────────────────┐
	│         ATOR         │       REQUISITO      │
	├──────────────────────┼──────────────────────┤
	│                      │    Editar usuário    │
	│                      ├──────────────────────┤
	│                      │Cadastrar novo usuário│
	│                      ├──────────────────────┤
	│                      │Verifica cadastro user│
	│                      ├──────────────────────┤
	│     ADMINISTRADOR    │ Definir autorizações │
	│                      │       usuário        │
	│                      ├──────────────────────┤
	│                      │   Remover usuários   │
	├──────────────────────┼──────────────────────┤
	│       USUÁRIO        │  Acessar plataforma  │
	└──────────────────────┴──────────────────────┘

NÃO FUNCIONAIS
	┌──────────────────────────┐
	│ RNF001 - Arquitetura Web │
	├──────────────────────────┤
	│ RNF002 - Usar cor #000   │
	├──────────────────────────┤
	│ RNF003 - Acessibilidade  │
	└──────────────────────────┘
</pre>
 3. **Caso de Uso: Construindo o diagrama de caso de uso**<br/>
	Devidamente identificados os stakeholders, elicitados os requisitos do negócio e definidos os requisitos funcionais e não funcionais, a partir da tabela de requisitos e atores iremos identificar as interações que o caso de uso possui (se a interação é com o ator ou com outro caso de uso) para construir o diagrama de caso de uso.
	Sendo a interação com outro caso de uso, ela pode ser de 2 tipos:
	- **include**: é quando a interação acontece sempre (é necessária para o funcionamento do sistema)
	- **extend**: é quando acontece a partir de uma determinada regra do negócio (sendo necessária uma condição para que ela aconteça)
<pre>
          ┌────────────────────────────────────────────────────────┐
Cadastrar novo usuário ─── &lt;include&gt; ─── Verifica cadastro usuário │
          │                                                        │
      &lt;extend&gt;                                                 &lt;include&gt;
          │                                                        │
    Editar usuário ┬──── &lt;extend&gt; ──── Remover usuário             │
          │     &lt;extend&gt;                         ┌─────────────────┘
         🚹️        └ Definir autorizações usuário
    ADMINISTRADOR

      🚹️
    USUÁRIO
       │
Acessar plataforma
<!--
          ┌────────────────────────────────────────────────────────┐
Cadastrar novo usuário ─── <include> ─── Verifica cadastro usuário │
          │                                                        │
      <extend>                                                 <include>
          │                                                        │
    Editar usuário ┬──── <extend> ──── Remover usuário             │
          │     <extend>                         ┌─────────────────┘
         🚹️        └ Definir autorizações usuário
    ADMINISTRADOR

      🚹️
    USUÁRIO
       │
Acessar plataforma
-->
</pre>
 4. **Descrição de Caso de Uso: Descrevendo caso de uso**<br/>
 É uma técnica utilizada para especificar o que o caso de uso realiza, é utilizada para cada caso de uso - cada caso de uso tem sua própria descrição. Podendo ser de 2 tipos:
- **EXPANDIDA**: É feito um detalhamento passo a passo de execução, divididos em:
  - **FLUXO NORMAL**: são as execuções que ocorrem frequentemente.<br/>
  Algumas práticas utilizadas para a descrição EXPANDIDA - elas dizem somente o que o caso de uso deve fazer, não servem para programar a lógica do software (não é uma linguagem natural estruturada):<br/>
  *- Passos de ENTRADA, PROCESSAMENTO e SAÍDA.*
    - Passos devem ser numerados/sequenciados logicamente;
    - Cada passo é realizado pelo ator ou sistema;
    - Primeiro e último passo devem ser do sistema;
    - Não se utiliza repetições e condições;
    - Não trata erros;
    - Pode incluir comentários - //* ou ***;
    - Referência ao &lt;include&gt;: Sistema &lt;include&gt; "nome do caso de uso";
    - Referência ao &lt;extend&gt;: Sistema &lt;extend&gt; "nome do caso de uso";
    - Manter padrão de verbos e adjetivos;
    - Definir nomenclatura própria de detalhamento;
    - Sentenças curtas, um passo não deve ter mais do que uma linha;
  - **FLUXO ALTERNATIVO**: são as exceções - o que seria uma alternativa para um determinado passo do FLUXO NORMAL.<br/>
  *- Passos direcionados para a exceção de procedimentos.*<br/>
  *x será a numeração do caso de uso representado no fluxo normal, que terá a exceção;<br/>
  *Obs: Não são todos os passos citados no Fluxo Normal que terá citação no Fluxo Alternativo;
    - x.0 nome da sentença do fluxo normal que terá exceção;
    - x.1 evento ocorrido que provocou a exceção;
    - x.1.1 passos para tratamento da exceção;<br/>
- **NÃO EXPANDIDA**: É utilizada em casos de uso não complexos, que possuem poucas regras. É feita uma descrição informal onde são apresentadas uma lista de regras necessárias para determinados casos de uso.

Em ambas é usado o cabeçalho, que traz a identificação do caso de uso:
<pre>
        ┌─────────────────────────────────────────────┐
        │                  ESTRUTURA                  │
        ├──────────────────────┬──────────────────────┤
        │      EXPANDIDA       │     NÃO EXPANDIDA    │
        ├──────────────────────┼──────────────────────┤
        │      CABEÇALHO       │      CABEÇALHO       │
        │     FLUXO NORMAL     │     DESCRIÇÃO DO     │
        │   FLUXO ALTERNATIVO  │     PROCEDIMENTO     │
        └──────────────────────┴──────────────────────┘

	- CABEÇALHO: Apresenta as informações do caso de uso.
		Nome: &lt;nome do caso de uso (deve ser o mesmo nome usado no diagrama de caso de uso)&gt;
		Descrição sucinta: &lt;objetivos do caso de uso&gt;
		Pré-condição: &lt;condições necessárias para início da realização do caso de uso&gt;
		Pós-condição: &lt;resultado da execução do caso de uso&gt;
		*Observação: É possível que em uma descrição não se tenha pré-condição e/ou pós-condição;

	EXPANDIDA:
		Nome: Editar usuário
		Descrição sucinta: Altera informações sobre usuários
		Pré-condição: --x--
		Pós-condição: Usuário atualizado no sistema

		1.0 Sistema apresenta a tela
		2.0 Ator realiza login
		3.0 Sistema apresenta lista de usuários cadastrados
		5.0 Ator confere lista
			5.1 Ator decide editar usuário
				5.1.1 Ator clica sobre o usuário
				5.1.2 Ator clica [DEFINIR PERMISSÕES]
				5.1.3 Sistema &lt;extend&gt; "Definir autorizações usuário"
				5.1.4 Ator realiza alterações nas permissões do usuário selecionado
				5.1.5 Ator clica em [CONFIRMAR]
				5.1.6 Sistema encerra caso de uso
				5.1.7 Retornar 5.0
			5.2 Ator decide cadastrar novo usuário
				5.2.1 Ator clica [CADASTRAR USUÁRIO]
				5.2.2 Ator insere os dados do usuário
				5.2.3 Sistema &lt;include&gt; "Verifica cadastro usuário"
					5.2.3.1 Sistema verifica se os dados já estão cadastrados
						5.2.3.1.1 Sistema encontra usuário já cadastrado
						5.2.3.1.2 Sistema apresenta usuário cadastrado
						5.2.3.1.3 Ator confere dados
							5.2.3.1.3.1 Ator clica sobre usuário
								5.2.3.1.3.1.1 Ator decide editar usuário
								5.2.3.1.3.1.2 Retornar 5.1.2
							5.2.3.1.3.2 Retornar em 5.0
					5.2.3.2 Sistema não encontra usuário cadastrado
					5.2.3.3 Sistema encerra caso de uso
					5.2.3.4 Retornar 5.3.4
				5.2.4 Ator clica [DEFINIR PERMISSÕES]
				5.2.5 Sistema &Lt;include&gt; "Definir autorizações usuário"
				5.2.6 Ator define as permissões do usuário
				5.2.7 Ator clica em [CONFIRMAR]
				5.2.8 Sistema encerra caso de uso
				5.2.9 Retornar 5.0
		6.0 Ator clica [SAIR]
		7.0 Sistema encerra caso de uso

	NÃO EXPANDIDA:
		Nome: Remover usuário
		Descrição sucinta: Exclui informações sobre usuários
		Pré-condição: Usuário cadastrado no sistema
		Pós-condição: Sistema com informações atualizadas

		Descrição dos procedimentos
		O procedimento deve receber como parâmetro o nome do usuário que se deseja remover para excluir seu cadastro do sistema.
</pre>

## Modelagem do Processo
 Compreende as relações que interligam as atividades desempenhadas na empresa, para que não haja foco em um ponto exclusivo do negócio, trazendo uma visão clara das interferências no(s) processo(s). Pode ser entendida como um "Sistema ou Modelo de Gestão Organizacional", orientado para gerir a Organização com o foco nos processos. A organização que adota esse modelo de gestão define sua melhor forma de fazer negócios, considerando seus processos críticos, procurando identificá-los, mapeá-los, analisá-los, documentá-los e melhorá-los continuamente. Um bom Modelo de Gestão Organizacional deve considerar todos os processos organizacionais, pois a organização deve ser estudada como um todo.<br/>
 Modelagem é a visão da empresa através da construção de diagramas funcionais sobre o comportamento de seus processos. A construção de um modelo da empresa permite a avaliação dos processos de negócio envolvidos, viabilizando a formulação de processos de mudanças, estruturados de forma a garantir o cumprimento da missão organizacional e o atendimento das estratégias empresariais básicas ao sucesso em seu ramo de atuação.<br/>
 A Modelagem de Processos de Negócio é desenvolvida para identificar e mapear os processos. Existem algumas orientações de modelagem como: Orientada à Atividade, Orientada ao Objeto e Orientada à Função ou ao Papel (Funcional) e Orientada ao Discurso. Para desenvolvimento de uma modelagem é necessário considerar a aplicação de uma metodologia de trabalho em que serão definidas: ferramentar tecnológicas (softwares), técnicas (práticas ou conjunto de métodos), métodos (procedimentos) e modelos (formas de representação) a serem adotados.

### 1. Processo, o que é? Conceituando processo.
Um grupo de atividades realizadas numa sequência lógica com o objetivo de produzir um bem ou um serviço que tem valor para um grupo específico de clientes [HAMMER e CHAMPY, 1994], ou seja, processo é a forma pela qual um conjunto de atividades cria, trabalha ou transforma insumos (entradas), agregando-lhes valor, com a finalidade de produzir bens ou serviços, com qualidade, para serem entregues a clientes (saídas), sejam eles internos ou externos (CRUZ, 2002, pág. 106). De forma resumida, um processo é um conjunto de atividades do negócio, inter-relacionadas para atingir um objetivo da empresa, e a modelagem de processo fornece uma visão única de todos os processos da empresa, com  suporte da gestão por processo.<br/>
A gestão por processo é uma técnica de modelagem de processo com várias vantagens, sendo elas:
    - Ter uma visão ampla de todo o negócio, trazendo um melhor entendimento do seu conceito;
    - Visualizar os processos envolvidos na criação de valor (produto = bem ou serviço);
    - Enxergar a interação entre as atividades e entre os setores;
    - Ver quais são as dependências entre os setores (quais os insumos que um setor gera para outro);

Com isso, podemos compreender que a gestão por processo é um método para se ter a "visão do todo" do negócio em estudo. Ela consiste em 5 elementos:
  - Ter clientes (para quem iremos entregar - saída);
  - Atividades criam valor para clientes (para isso, as atividades devem estar direcionadas às expectativas deste cliente);
  - Atividades são operadas por atores ("QUEM" realiza as atividades em questão - seres humanos ou máquinas);
  - Envolve unidades organizacionais, responsáveis por todo o processo ("ONDE/QUAL" é o ambiente de realização das atividades - setores);
  - Tecnologia (dá suporte aos agentes/atores para a realização dessas atividades);
<pre>
        ┌────────────────────────────────────────────┐
        │ SISTEMA OU MODELO DE GESTÃO ORGANIZACIONAL │
        └────────────────────────────────────────────┘
                              _
                             │ │
                           __│ │__
                           \     /
                            \   /
                             \ /

                    ┌────────────────────┐
                    │ FOCO NOS PROCESSOS │ *e na interação dos processos entre os setores
                    └────────────────────┘

 Que busca:
                          QUALIDADE
                          /        \
                         /          \
                AGILIDADE ───────── INTEGRAÇÃO
</pre>

  Ao buscar integração entre os setores, gera COLABORAÇÃO, que por sua vez traz agilidade ao processo. Assim alcançando a qualidade, por atender as expectativas do cliente dentro dos acordos negociados.<br/>
  Por que a colaboração é tão importante? A colaboração  traz vários benefícios para as empresas e seus processos (impactando positivamente diretamente sobre a qualidade do seu produto final):
  - Abre "caixas-pretas" existentes (torna os processos transparentes - e consequentemente uma boa documentação e melhor entendimento do negócio);
  - Quebra a rigidez monolítica imposta pela estrutura hierárquica tradicional (abre espaço para diálogo e melhoria/aprimoramento contínuo - consequência da colaboração);
  - Propicia a integração, interação e colaboração entre as atividades do ciclo produtivo (ajuda a ligar melhor um processo ao outro, trazendo agilidade);

  Considerações:
  - Utilização de uma metodologia, definição de modelos, técnicas e ferramentas;
  - Implantação deve ser contínua e validada em função do atendimento aos clientes;
  - Relações com concorrentes e fornecedores devem ser substituídas constantemente;
  - Relação com os participantes da cadeia de valor, a correção das decisões tomadas e a necessidade de reavaliação dos processos envolvidos indicam a medida de nosso desempenho;

### 2. Introdução a BPM: O que é BPM?
Dentro da gestão por processo é onde construímos a modelagem do processo de negócio, também conhecida como BPM: Business Process Management - Gerenciamento de Processos de negócio através da modelagem dos processos. Podemos dizer que, o BPM é a proposta do gerenciamento de processo através da modelagem de processo, onde iremos desenvolver um modelo que irá representar de forma simbólica todas as atividades e interconexões do(s) processo(s). O BPM é comumente utilizado sobre dois enfoques:
  1. ferramenta de modelagem de gestão de processos de negócios;
  2. relacionado às áreas de BI - Business Intelligence e ERP (planejamento de recursos empresariais);

Podemos abreviar o que é o BPM da seguinte forma: É uma representação gráfica das atividades e suas interconexões para conhecer o negócio e quais são os setores/ambiente que compõe o negócio, para visualização da sequência lógica que define o processo. Ou seja, é uma visão da empresa através da construção de diagramas funcionais sobre o comportamento de seus processos. Essa modelagem permite a avaliação dos processos de negócio envolvidos, viabilizando a formulação de processos de mudanças, estruturados de forma a garantir o cumprimento da missão organizacional e o atendimento das estratégias empresariais básicas ao sucesso em seu ramo de atuação.<br/>
A ferramenta BPM oferece suporte à gestão por processos, em qualquer nível, propiciando ações proativas de:
  - *Mapeamento dos processos de negócio*
  - *Atendimento à norma ISO 9001:2000*
  - *Análise conjuntural e isolada dos processos do negócio*
  - *Reengenharia de processos*
  - *Implementação de Total Quality Management - TQM*
  
Podemos ver que a ferramenta de modelagem hoje é um suporte para que as empresas alcancem alta qualidade em seus processos, pois envolvem tanto certificações de qualidade quanto a parte de análise e avaliação da conjuntura dos processos da organização.<br/>
Os softwares de BPM controlam: processos, atividades e recursos registrando para cada processo:
  - *Suas atividades, tarefas e procedimentos*
  - *Entradas e saídas*
  - *Custo*
  - *Duração*
  - *Resultados*
  - *Produtos*
  - *Outros recursos*

É uma metodologia aplicada à representação de processos de negócios utilizando como notação o BPD (Business Process Diagram). Os elementos gráficos no BPD permitem desenvolvimento fácil e familiar para a maioria dos analistas de negócio (por exemplo, um fluxograma). Os elementos são diferentes entre si e utilizam formas parecidas com as da maioria dos modelos, o que torna a construção de fácil aprendizado. É uma modelagem rica em recursos para a representação de uma maneira mais completa de como as atividades são realizados numa única visualização. Com as ferramentas disponíveis na tecnologia podemos realizar a construção destes modelos.

### 3. BPMN - Notação: Conhecendo a simbologia para o BPMN.
A Notação é a simbologia proposta no BPM para a construção dos modelos de processo. Um BPD é constituído de objetos gráficos da BPMN e seus relacionamentos. Ou seja, é a Notação para construção de diagramas BPD na representação de processos de negócio.

- **Objetivo:**
  - Fornecer uma notação para representar os processos para:
    - Analistas que irão estudar os processos;
    - Desenvolvedores técnicos responsáveis pela aplicação da tecnologia que irão realizar os processos;
    - Empresários que vão gerir e acompanhar os processos;
**Notação:**
- **Objetos de Fluxo**: É o recurso que descreve quais são as atividades e quais os seus relacionamentos. Definem o início do fluxo, os pontos intermediários, onde serão necessários paradas em aguardo de alguma informação ou tempo e fim de fluxo para encerramento.

⠀⠀⠀⠀◌  INÍCIO: Início do fluxo = **EVENTO**

⠀⠀⠀⠀◗  *INTERMEDIÁRIO*: Ponto de parada/interrupção do fluxo, pode existir por vários motivos, seja por tempo, confirmação, responder um formulário e etc = **EVENTO**

⠀⠀⠀⠀☐  *PROCESSO*: Atividade comum no processo (acontece normalmente no fluxo do processo) = **ATIVIDADE**

⠀⠀⠀⠀☒  *SUB-PROCESSO*: Visão aprofundada da atividade, para exibir detalhadamente o que a atividade realiza = **ATIVIDADE** **Para isso, é feito um novo fluxo dentro do sub-processo descrevendo o processo.*

⠀⠀⠀⠀✧  *CONDIÇÃO*: Ponto de decisão/condição que depende da escolha de uma opção para realizar uma determinada tarefa = **GATEWAY**

⠀⠀⠀⠀✦  *PARALELO*: Representa as atividades que acontecem paralelamente = **GATEWAY**

⠀⠀⠀⠀●  *FINAL*: Final do fluxo = **EVENTO**

- **Objetos de Conexão**: Representa quais são as ligações entre as atividades, mostra a ordem em que as atividades serão executadas em um processo. Cada fluxo tem uma só origem e um só destino.

  ─────> **Fluxo de Sequência**: Indica a atividade a ser executa na sequência.

  -----> **Associação**: Liga atividades entre Raias.

  O─ ─ > **Fluxo de Mensagem**: Representa a ligação dos artefatos, relacionamento entre 2 entidades que podem enviar ou receber mensagens. Os "pools", que serão descritos mais adiante, podem ser entidades, por exemplo.

- **Raias**: Representam cada setor. São 2 tipos:

  - **Pool**: Raia designada para o responsável por realizar a atividade. Representa um participante no processo, pode ser uma entidade, como uma empresa, ou uma função do negócio.
<pre>
┌───┬──────────────────────┐
│   │                      │
│   │                      │
└───┴──────────────────────┘
</pre>

  - **Lane**: Raia sub-dividida para diferentes responsáveis pela a atividade. Subpartição dentro de um pool. Estende o pool vertical e horizontalmente, organiza e categoriza as atividades.
<pre>
┌───┬──────────────────────┐
│   │                      │
│   ├──────────────────────┤
│   │                      │
└───┴──────────────────────┘
</pre>

  - **Artefatos**: É a representação dos produtos/resultados gerados.
    - 📄  - **Objeto de dados**: Resultado.
    - [ ] - **Grupo**: Agrupamento de conjuntos.
    - 💬  - **Anotação**: Complementar com informações que não são possíveis de representar com simbologia.

**Passos para construção:**
1. Identificar as atividades/requisitos do processo do negócio e seus responsáveis/ator;
2. Identificar por onde o processo inicia;
3. Na construção lógica verificar:<br/>
  3.1. Pontos de decisão<br/>
  3.2. Pontos de interrupção<br/>
  3.3. Atividades paralelas
4. Construir o modelo de processo BPMN;

**Resumo**<br/>
A Modelagem de Processo é uma prática que vem sendo exercida no mercado de trabalho para conhecimento das atividades de negócio, os responsáveis que as realizam e a ligação entre elas. Considera-se no escopo desta aula a modelagem BPD, que utiliza a BPMN.
#### Vantagens
- Dar visibilidade as atividades de negócio e seus relacionamentos;
- Agilizar a identificação das conexões e implicações entre as atividades, quando é necessário inserção de novas necessidades;
- Tornar transparente as atividades do negócio;

#### Etapas
1. **Identificação de atividades**: Aqui são identificadas as atividades/tarefas e seus responsáveis. Estas atividades correspondem aos procedimentos executados na realização do negócio em estudo, independentemente se existe o uso da tecnologia ou não. Indica-se a construção de uma tabela de identificação.
2. **Identificação de elementos do fluxo**: A partir da lista de atividades/tarefas e seus responsáveis, faz-se a análise para organizar a sequência das atividades e se, para sua execução. é necessário o uso de algum elemento de fluxo, tais como: evento intermediário ou gateways. Na identificação da sequência verifica-se as atividades de início do negócio, normalmente, são as atividades referentes à preparação do ambiente de negócio. Por exemplo, em um negócio de comércio, seria o registro dos produtos e vendedores.
3. **Construção do BPMN**: Com a sequência das atividades definida, inicia-se a modelagem BPD do negócio com a utilização da notação BPMN:
    - Represente as raias para os responsáveis;
    - Inclua o evento de início;
    - Acrescente as atividades na sequência atribuída e o emprego dos elementos de fluxo identificados como necessário;
4. **Refinamento do modelo**
<pre>
BPMN:
┌──────────────────────┬──────────────────────┬──────────────────────┬──────────────────────┐
│         ATOR         │       ATIVIDADE      │       SEQUÊNCIA      │  ELEMENTOS DO FLUXO  │
├──────────────────────┼──────────────────────┼──────────────────────┼──────────────────────┤
│                      │    Editar usuário    │          1           │Início do modelo/tempo│
│                      ├──────────────────────┼──────────────────────┼──────────────────────┤
│                      │Cadastrar novo usuário│          2           │Condição, pois só ca- │
│                      │                      │                      │dastra em necessidade │
│                      ├──────────────────────┼──────────────────────┼──────────────────────┤
│                      │Verifica cadastro user│          3           │Condição, pois só não │
│                      │                      │                      │permite a ação em caso│
│                      │                      │                      │de usuário duplicado  │
│                      ├──────────────────────┼──────────────────────┼──────────────────────┤
│     ADMINISTRADOR    │ Definir autorizações │          4           │Condição, podendo ser │
│                      │       usuário        │                      │de novos users ou não │
│                      ├──────────────────────┼──────────────────────┼──────────────────────┤
│                      │    Remover usuário   │          6           │Condição, só remove se│
│                      │                      │                      │houver necessidade    │
├──────────────────────┼──────────────────────┼──────────────────────┼──────────────────────┤
│       USUÁRIO        │  Acessar plataforma  │          5           │    Sequencial ao 4   │
└──────────────────────┴──────────────────────┴──────────────────────┴──────────────────────┘
┌─────┬────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│     │                                                                                                                                │
│     │                           ┌> [CADASTRAR NOVO USUÁRIO] ─> ✧ ─> [VERIFICAR CADASTRO USER] ┐                                      │
│ ADM │                           │                              ^                              v                                      │
│     │  ◌ ─> [EDITAR USUÁRIO] ─> ✧ ─────────────────────────────┘                              ✧ ─> [DEFINIR AUTORIZAÇÕES DE USUÁRIO] │
│     │INÍCIO                     │                                                                                  |                 │
│     │                           └> [REMOVER USUÁRIO] ┐                                                             |                 │
└─────┴────────────────────────────────────────────────|─────────────────────────────────────────────────────────────┼─────────────────┘
┌─────┬────────────────────────────────────────────────┼─────────────────────────────────────────────────────────────|─────────────────┐
│     │                                                |                                                             v                 │
│     │                                                |                                                   [ACESSAR PLATAFORMA]        │
│     │                                                └------------------------------------> ✧ <────────────────────┘                ⠀│
│ USR │                                                                                       │                                        │
│     │                                                                                       v                                        │
│     │                                                                                       ●                                        │
│     │                                                                                      FIM                                       │
└─────┴────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
</pre>

### Caso de Uso x BPMN
 O Diagrama de Caso de Uso e o BPMN, apesar de representarem as necessidades/atividades do contexto de um negócio, apresentam propostas diferentes de visualização que trazem benefícios quando utilizados em conjunto, como podemos observar na tabela abaixo:
<pre>
┌───────────────────────────┬───────────────────────────┐
│  DIAGRAMA DE CASO DE USO  │            BPMN           │
├───────────────────────────┼───────────────────────────┤
│ VISÃO SISTÊMICA - não in- │ VISÃO DOS PROCESOS DE NE- │
│ clui atividades manuais   │ GÓCIO - inclui todas ati- │
│                           │ vidades                   │
├───────────────────────────┼───────────────────────────┤
│ Visibilidade da realiza-  │ Visibilidade de interação │
│ ção das atividades        │ entre atividades          │
├───────────────────────────┼───────────────────────────┤
│ Não apresenta a interfe-  │ Apresenta a interferência │
│ rência temporal entre     │ temporal entre atividades │
│ atividades e setores      │ e setores                 │
└───────────────────────────┴───────────────────────────┘
</pre>
Desta forma, demonstra-se que é interessante a adoção dos 2 modelos para o completo entendimento do negócio.

## Garantia e Qualidade de Software

### 1. O que é Qualidade de Software?<br/>Definindo qualidade
Existe algum padrão para o que é qualidade? A resposta é NÃO! Porque a qualidade é sempre em relação ao atendimento da expectativa de quem recebe um produto ou serviço. Então, pensando de forma generalista, não existe uma regra para o que é qualidade, mas sim princípios e práticas que funcionam para gerar qualidade. Então, podemos concluir que qualidade é tudo aquilo que provemos que atende à expectativa do receptor.<br/>
Desta forma, quando falamos em qualidade de software, a preocupação está centrada em 2 pontos: produto e processo. Sendo que para o PRODUTO, a entrega ao stakeholder atenda às suas espectativas, tenha facilidade de uso e não apresente erros na execução. Enquanto que em relação ao PROCESSO, este tenha um bom aproveitamento dos recursos utilizados na construção, padronização, boa modularização, estruturas alinhadas com facilidade de compreensão e documentação, garantindo assim a continuidade dos sistemas entregues. A qualidade do processo afeta diretamente a qualidade do produto, pois produto e processo estão fortemente relacionados e não podem ser separados. Procedimentos e padrões de qualidade bem definidos, quando seguidos, produzirão um produto de qualidade.<br/>
Segundo a NBR ISO 9000:2005, "qualidade é o grau no qual um conjunto de características inerentes satisfaz aos requisitos". Se algum produto ou serviço atende aos requisitos especificados, este mesmo produto ou serviço possui a qualidade desejada.<br/>
Garantia de qualidade significa a definição de procedimentos, processos e padrões que visam reforçar que a qualidade de software seja atingida, ela também inclui todo o gerenciamento de configuração, atividades de verificação e validação, aplicadas após o produto ter sido entregue por uma equipe de desenvolvimento.<br/>
De acordo com Sommerville, o conjunto específico de atributos que se poderia esperar de um sistema de software depende de sua aplicação, mas podem ser generalizados em algumas características essenciais:

#### Atributos Essenciais
<pre>
┌─────────────────────────────┬───────────────────────────────────────────────────────────────┐
│  CARACTERÍSTICA DO PRODUTO  │                           DESCRIÇÃO                           │
├─────────────────────────────┼───────────────────────────────────────────────────────────────┤
│                             │ O software deve ser aceitável para o tipo de usuário o qual é │
│        Aceitabilidade       │ projetado. Isso significa que deve ser inteligível, útil e    │ > UX/UI
│                             │ compatível com os outros sistemas utilizados pelos usuários.  │
├─────────────────────────────┼───────────────────────────────────────────────────────────────┤
│                             │ A dependabilidade do software inclui uma gama características,│
│                             │ como: confiabilidade, segurança da informação (security) e    │ > DevSecOps
│ Dependabilidade e segurança │ segurança (safety). O software com dependabilidade não deve   │
│ da informação (security)    │ causar danos físicos ou econômicos em caso de falha do siste- │
│                             │ ma, deve ser protegido para que usuários maliciosos não consi-│
│                             │ gam acessar ou danificar o sistema.                           │
├─────────────────────────────┼───────────────────────────────────────────────────────────────┤
│                             │ O software não deve desperdiçar recursos do sistema, como a   │
│          Eficiência         │ memória e os ciclos do processador. Portanto, a eficiência    │ > DevOps
│                             │ inclui responsividade, tempo de processamento, utilização de  │
│                             │ recursos e etc.                                               │
├─────────────────────────────┼───────────────────────────────────────────────────────────────┤
│                             │ O software deve ser escrito de tal modo que possa evoluir e   │
│       Manutenibilidade      │ e satisfazer as necessidades mutáveis dos clientes. Este é um │ > CI/CD
│                             │ atributo crítico, pois a modificação do software é um requisi-│
│                             │ to inevitável de um ambiente empresarial mutável.             │
└─────────────────────────────┴───────────────────────────────────────────────────────────────┘
</pre>

#### Gerenciamento de Qualidade
- **Garantia de Qualidade**: Metodologias, procedimentos, padrões que conduzem um software de alta qualidade.
- **Planejamento de Qualidade**: Adaptação dos procedimentos e padrões às características do software em desenvolvimento.
- **Controle de Qualidade**: Definição, avaliação e aprovação de processos assegurando o uso pela equipe de desenvolvimento.

A implantação de um Programa de Qualidade começa pela definição e implantação de um processo de desenvolvimento.  Portanto, o processo de desenvolvimento de software deve estar documentado, compreendido e seguido.<br/>
Portanto, o gerenciamento de qualidade de processo envolve, segundo Sommerville:
  - Definição de padrões de processo: ‘como’ e ‘quando’ as revisões devem ser conduzidas.
  - Monitoramento do processo de desenvolvimento; para assegurar que os padrões estão sendo seguidos.
  - Relato do processo de software para os stakeholders (gerência de projeto, comprador do software e demais interessados/envolvidos com relevância sobre a qualidade final).

#### Atividades de Qualidade
<pre>
	( Definir processo ) -> ( Desenvolver o produto ) -> ( Avaliar a qualidade do produto )
                                ↗                      NÃO        ↙        SIM
		              ( Aprimorar o processo ) <- < Qualidade OK? > -> ( Padronizar o processo )
</pre>

### 2. O que considerar como Qualidade?<br/>Requisitos de qualidade
A busca pela excelência implica em considerar uma frequente validação e verificação dos procedimentos e padrões utilizados no desenvolvimento de sistemas, gerando a qualidade necessária tanto para o processo, quanto para o produto. Sommerville diz que a garantia de qualidade é o processo que define como a qualidade de software pode ser atingida e como a organização de desenvolvimento sabe que o software possui o nível de qualidade necessário. Existem 3 quesitos básicos que ajudam a definir o que incluir dentro do processo para obter qualidade no produto gerado.
<pre>
                                                                     ┌───────────────────────────────────────────────────────────────────────────────┐
                                                                    ┌┤         PADRÕES DE PRODUTO           x          PADRÕES DE PROCESSO           |
- Padrões de Produto (Define COMO fazer)                           ┐|└───────────────────────────────────────────────────────────────────────────────┘
  > Estrutura de documentos de requisitos;                         ├┘ Formulário de revisão de projeto            Conduta de revisão de projeto
  > Padrões de assuntos incluídos na documentação;                 |  Estrutura de documento de requisitos      Envio de documento para o cliente
  > Padrões de codificação, para uso nas linguagens de programação.|  Formato de cabeçalho de método             Processo de liberação de versão
- Padrões de Processo (Define O QUE fazer)                         |  Estilo de programação (ling + mtdlg)  Processo de aprovação de plano de projeto
  > Definição dos processos de especificação, projeto e validação. |  Formato de plano de projeto                Processo de controle de mudança
- Padrões de Software                                              ┘  Formato de solicitação de mudança           Processo de registro de teste
  > Evita repetição de erros cometidos em projetos anteriores, já que os padrões são definidos baseados em experiências próprias da empresa;
  > Apresenta framework com melhores práticas, garantindo padrões de acordo com as necessidades das empresas e a sua utilização;
  > Colaboram com a continuidade do sistema, facilitando para a equipe que assumirá manutenção do sistema.
</pre>

### 3. Técnicas e Tipos de Validação<br/>Conhecendo as técnicas de qualidade
O planejamento da qualidade adota técnicas estabelecidas por processos de certificação definidos por instituições nacionais e internacionais, como: US DoD (Uniter States Department of Defense), ANSI (American National Standards Institute), BSI (British Standards Instituitions) e IEE (Institute of Electrical and Electronic Engineers). Um processo de certificação estabelece padrões que devem ser seguidos para obtenção de qualidade e são definidos para os diversos segmentos de produção, seja produto ou serviço.<bre/>
São definidos 2 tipos de avaliação no processo de análise de certificação de qualidade: avaliação ao longo do processo de desenvolvimento e avaliação de pacotes. Sommerville define alguns atributos de qualidade de software que precisam ser considerados no planejamento de qualidade:

#### Atributos de Qualidade
<pre>
┌────────────────┬──────────────────────┬──────────────────────┐
│    SEGURANÇA   │     FACILIDADE DE    │     PORTABILIDADE    │
│                │      COMPREENSÃO     │                      │
├────────────────┼──────────────────────┼──────────────────────┤
│    PROTEÇÃO    │ FACILIDADE DE TESTES │   FACILIDADE DE USO  │
├────────────────┼──────────────────────┼──────────────────────┤
│ CONFIABILIDADE │    ADAPTABILIDADE    │  FACILIDADE DE REUSO │
├────────────────┼──────────────────────┼──────────────────────┤
│ FACILIDADE DE  │     MODULARIDADE     │      EFICIÊNCIA      │
│  RECUPERAÇÃO   │                      │                      │
├────────────────┼──────────────────────┼──────────────────────┤
│    ROBUSTEZ    │     COMPLEXIDADE     │     FACILIDADE DE    │
|                |                      |      APRENDIZADO     |
└────────────────┴──────────────────────┴──────────────────────┘

Tipos:
    - ISO 9001  - ISO 9126*
    - CMMI      - CMM*
    - MPS-BR    - TMM*

┌───────────────────────────────────────────────────────────────────────────────────────────────┐
|                                            ISO 9001                                           |
| O padrão ISO 9001 se apresenta como um padrão geral para as empresas, provendo flexibilidade, |
| não especificamente para desenvolvimento de softwares, mas possui princípios gerais que podem |
| ser aplicados a esse fim.                                                                     |
├──────────────────────────────────────────────────┬────────────────────────────────────────────┤
|           RESPONSABILIDADE DA GERÊNCIA           │            SISTEMA DE QUALIDADE            |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Controle de produtos que estão em conformidade   │ Controle de projeto                        |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Manuseio, armazenamento, empacotamento e entrega │ Compras                                    |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Produtos fornecidos para o comprador             | Identificação e rastreabilidade de produto |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Controle de processo                             | Inspeção e teste                           |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Equipamento de inspeção e teste                  | Status de inspeção e teste                 |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Revisão de contrato                              | Ação corretiva                             |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Controle de documento                            | Registros de qualidade                     |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Auditorias internas de qualidade                 | Treinamento                                |
├──────────────────────────────────────────────────┼────────────────────────────────────────────┤
| Prestação de serviço                             | Técnicas estatísticas                      |
└──────────────────────────────────────────────────┴────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────────────────────────────┐
|                                       ISO 9126                                       |
| ISO 9126 - ( Information Technology - Software product evaluation - Quality          |
| characteristics and guidelines for their use)                                        |
|                                                                                      |
| - Características de Qualidade para Domínios Específicos;                            |
| - Características de Qualidade para Tecnologias Específicas;                         |
|                                                                                      |
| Definem seis características de qualidade e subcaracterísticas associadas a elas:    |
├──────────────────┬───────────────────────────────────────────────────────────────────┤
|  CARACTERÍSTICAS │                         SUBCARACTERÍSTICAS                        |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Funcionalidade   │ Adequação, Acurácia, Interoperabilidade, Conformidade e Segurança |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Confiabilidade   │ Maturidade, Tolerência a falhas e Recuperabilidade                |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Usabilidade      | Inteligibilidade, Apreensibilidade, Operacionalidade              |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Eficiência       | Comportamento no tempo e dos recursos                             |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Manutenibilidade | Analisabilidade, Modificabilidade, Estabilidade, Testabilidade    |
├──────────────────┼───────────────────────────────────────────────────────────────────┤
| Portabilidade    | Adaptabilidade, Instabilidade, Portabilidade e Substituibilidade  |
└──────────────────┴───────────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
|                              CMM                             |
| CMM - Capability Maturity Model                              |
|                                                              |
| - Definido no Software Engineering Institute (SEI) - Carnegie|
|   Mellon University                                          |
| - Motivação: Projetos do Departamento de Defesa              |
| - 5 Níveis de Maturidade para o Processo                     |
├─────────────────────┬────────────────────────────────────────┤
| Nível de Maturidade │            Tópicos Abordados           |
├─────────────────────┼────────────────────────────────────────┤
|                     │ Gerência de mudanças no processo       |
|    5. Otimizado     | Gerência de mudanças na tecnologia     |
|                     | Prevenção de defeitos                  |
├─────────────────────┼────────────────────────────────────────┤
|    4. Gerenciado    │ Gerência de qualidade de software      |
|                     │ Gerência quantitativa do processo      |
├─────────────────────┼────────────────────────────────────────┤
|                     │ Revisões                               |
|                     │ Coordenação entre grupos               |
|                     │ Engenharia do produto de software      |
|     3. Definido     │ Gerência de sofware integrada          |
|                     │ Programa de treinamento                |
|                     │ Definição do processo da organização   |
|                     │ Foco no processo da organização        |
├─────────────────────┼────────────────────────────────────────┤
|                     │ Gerência de configuração               |
|                     │ Garantia da qualidade de software      |
|     2. Repetível    │ Gerência de contratos de software      |
|                     │ Acompanhamento de projetos de software |
|                     │ Planejamento de projetos de software   |
|                     │ Gerência de requisitos                 |
├─────────────────────┼────────────────────────────────────────┤
|      1. Inicial     │ O processo é informal e imprevisível   |
└─────────────────────┴────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
|                             TMM                             |
| TMM - Test Maturity Model                                   |
|                                                             |
| Um processo independente de teste; demanda algumas necessi- |
| dades de metodologias, métricas e melhorias.                |
├──────────────────────────────┬──────────────────────────────┤
| Modelo de avaliação da matu- │ Objetivo: Dar suporte às or- |
| ridade de processo de teste. | ganizações na melhoria do    |
|                              | processo de testes.          |
├──────────────────────────────┴──────────────────────────────┤
|                     PARADIGMAS ADOTADOS                     |
├──────────────────────────────┬──────────────────────────────┤
| Modelo complementar ao CMM,  | É uma linha para a melhoria  |
| com o qual mantém compatibi- | contínua do processo de tes- |
| lidade.                      | tes.                         |
├──────────────────────────────┼──────────────────────────────┤
| Baseado na avaliação da si-  | Modelo baseado nas melhores  |
| tuação atual do processo de  | práticas de testes existen-  |
| testes através de regras     | tes no mercado.              |
| claras e objetivas.          |                              |
├──────────────────────────────┴──────────────────────────────┤
|                     NÍVEIS DE AVALIAÇÃO                     |
├─────────────────────────────────────────────────────────────┤ *Conjunto planejado e sistemático de todas as ações necessárias
| Inicial, fase de definição, integração e otimização, pre-   |  para fornecer uma confiança adequada de que o item ou produto
| venção de defeitos e *controle de qualidade.                |  está de acordo com os requisitos técnicos estabelecidos.
└─────────────────────────────────────────────────────────────┘  (ANSI/IEEE Std 730-1984).
┌──────────────────────────────────────────────────────────────┐
|                     CONTROLE DE QUALIDADE                    |
| Para essa aferição realizamos validações e avaliações duran- |
| te o processo de desenvolvimento.                            |
|                                                              |
| A validação preocupa-se em mostrar que os requisitos definem |
| o sistema que o stakeholder deseja e não possuem erros. Sua  |
| importância dá-se pois o custo para remover um erro de requi-|
| sito é grande. A validação é realizada através de revisões de|
| qualidade, em busca de potenciais problemas.                 |
├─────────────────────┬────────────────────────────────────────┤
|                     │ Detectar erros detalhados nos requisi- |
| Inspeções de proje- | tos, projeto ou código. Uma lista de   |
| to ou de programas  | verificação de possíveis erros deve    |
|                     | guiar a revisão.                       |
├─────────────────────┼────────────────────────────────────────┤
|                     │ Fornecer informações para a gerência   |
|      Revisões       | sobre o progresso geral do projeto.    |
|         de          │ Esta é uma revisão de processo e de    |
|      progresso      | produto e concentra-se em custos, pla- |
|                     | nejamento e prazos.                    |
├─────────────────────┼────────────────────────────────────────┤
|                     │ Conduzir uma análise técnica dos com-  |
|                     │ ponentes de produto ou documentação    |
|      Revisões       │ para encontrar inconsistências entre   |
|         de          │ especificação e projeto, código ou do- |
|      qualidade      │ cumentação de componentes e assegurar  |
|                     │ que padrões de qualidade definidos fo- |
|                     │ ram seguidos.                          |
├─────────────────────┴────────────────────────────────────────┤
| A avaliação de qualidade de um software é definida a partir  |
| da medição da qualidade. Para isso é necessário considerar 3 |
| procedimentos:                                               |
├ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─┤
|                  PROCEDIMENTOS DE AVALIAÇÃO                  |
├─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┤
| 1. Definir o que medir: identificar dentro os componentes do |
| sistema os pontos-chave mais complexos e representativos do  |
| negócio.                                                     |
|                                                              |
| 2. Definir as métricas: definir a métrica a ser aplicada nos |
| componentes. Uma métrica é a forma como se pode medir o com- |
| portamento do software. Podemos citar: Fan-in/Fan-out, exten-|
| são de código, complexidade ciclomática, extensão de identi- |
| ficadores, profundidade de aninhamento de declarações condi- |
| cionais, índice de fog, entre outros.                        |
|                                                              |
| 3. Definir indicadores de qualidade: é preciso definir para  |
| a situação de negócio qual resultado da métrica seria ava-   |
| liado como médio, bom ou ótimo. Todo componente avaliado tem |
| suas próprias características de atuação no ambiente, alte-  |
| rando a percepção na avaliação.                              |
├─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┤
| 4. Aplicar métricas e analisar resultados: executar as métri-|
| cas nos componentes selecionados e analisar os resultados em |
| função dos indicadores.                                      |
└──────────────────────────────────────────────────────────────┘
</pre>

#### Progressive Enhancement
Diferentes tipos de usuários irão utilizar o software, em dispositivos diferentes dos usados para o desenvolvimento, em lugares e condições diferentes, tanto entre si quanto ao ambiente de desenvolvimento. Para cercar todas essas possibilidades, deve-se verificar as condições, opções, limitações e restrições que o software pode sofrer. Como:
- **Tamanho de Tela**<br/>
Usuários podem acessar o site de diversos dispositivos com tamanhos de telas diferentes, como por exemplo celulares, TVs, tables, notebooks e etc.
- **Ausência de Mouse e Teclado**<br/>
Nem todos os dispositivos suportam mouse e um teclado.
- **Pointer Menos Preciso: _touchscreen_**<br/>
Geralmente na ausência de um mouse, o *touch* se torna o ponteiro do dispositivo.
- **Diferentes Navegadores e Versões**<br/>
Navegadores desatualizados suportam menos tecnologias que navegadores mais novos, e diferentes navegadores mostram páginas de maneiras diferentes.
- **Tipos de Conexões**<br/>
Rede móvel limitada, rede residêncial wireless e redes empresariais cabeadas tem velocidades bem diferentes que impactam como a página pode ser exibida.
- **Acessbilidade**<br/>
Alguns usuários podem ter dificuldades para acessar o site, como: problemas de visão como cegueira, miopia, visão embaçada e etc; problemas motores como incapacidade de usar o mouse, controle motor com limitações e etc; problemas auditivos como surdez.
- **Adversidades**<br/>
O usuário pode acessar o site no metrô, no ônibus, em casa, escritório e etc. O que significa que, o desenvolvedor deve garantir que o site seja acessível nessas condições definidas. E, como garantir isso? Testar em todas as situações, modificando o código sempre que o teste numa dada condição falhe. Se não existirem estes testes em dispositivos e casos de uso em diferentes cenários com limitações e restrições, é bem provável que o site seja utilizável somente para as condições que se enquadram no perfil testado. Caso não seja possível os testes, tentar seguir um fluxo de desenvolvimento que automaticamente inclua a maior parte das situações pode reduzir muito o esforço ao padronizar o desenvolvimento.
- **Dimensão e Espaçamento de Visualização**<br/>
Análogo à uma caixa de fósforo versus uma caixa de sapato, tem-se o questionamento: **O que cabe em uma caixa de sapato cabe numa caixa de fósforo? E o contrário?**<br/>
Deve-se primeiro pensar e testar na base mínima que é igual para todos, em seguida otimizar o código para situações onde caibam tais melhorias.

Uma boa prática de desenvolvimento é se ter um *passo-passo* para a construção e *testes* de validação:
1. **Conteúdo**<br/>
O conteúdo é o que leva os usuários a um site, então, deve-se começar por ele.
  - Qual tipo de conteúdo a página terá?
  - Como o conteúdo vai ser agrupado?
  - Qual a ordem do conteúdo?
  - Qual a quantidade de conteúdo em cada espaço?
2. **Semântica, SEO e WCAG**<br/>
Semântica é a melhoria sobre o conteúdo sem nenhuma marcação.
  - Como se localizar entre as milhares linhas de conteúdo para marcar e realizar manutenção nesse conteúdo?
  - A tag escolhida melhora a localização do código e a legibilidade?
  - A melhoria aplicada é identificada pelos User Agents que estão sendo suportados? Se a tag é nova e ainda não é usada em alguma versão do navegador, o que acontece? Tags novas são melhorias e, em navegadores desatualizados viram `div`, fazendo com que o conteúdo continue sendo exibido. Propriedades e valores novos do CSS como o `rgba(#rrggbbaa)` por exemplo, em navegadores desatualizados são desconsiderados e a tag segue em frente sendo exibida na página. O site não vai parar de funcionar. Coisas antigas não deixam de existir ou de funcionar. A W3C usa o Progressive Enhancement para atualizar o HTML, o CSS e outros padrões a cada nova versão. Novas versões geralmente não mudam o que havia antes, mas sim melhoram.
  - Como usar o site sem necessitar o visual dele? Muitos usuários dependem somente do conteúdo para navegar no site, usam leitores de tela por exemplo, que interpretam a página e deixam ela acessível e navegável de uma maneira similar à forma que quem desenvolve o código se localiza, ou seja, pelas tags. Leitores de tela permitem que uma pessoa leia diretamente o conteúdo do `footer` por exemplo, ao invés dde ler todo o conteúdo da página do início ao fim.
  - Definir casos de uso, testando o site ao abrir e usá-lo de acordo em um leito de tela (NVDA) e também com programas que exibem a árvore de acessibilidade (Dev Tools).
3. **Design**<br/>
Estilos exibirão de maneira otimizada o conteúdo, proporcionando uma melhor experiência ao usuário. O foco ainda é o conteúdo, os estilos são uma melhoria.
  - Um estilo deve melhorar e manter o conteúdo sempre acessível em qualquer situação.
  - É recomendado começar limitando a largura e altura do viewport, isso incentivará que o navegador não impeça o acesso conteúdo em telas menores, e o conteúdo que está numa tela menor acaba sendo acessível em telas maiores, por mais que em alguns casos não tenha um design agradável esteticamente, em diversas versões de navegadores.
  - O maior atuante na responsividade de um site não é a tecnologia e ferramenta, é o desenvolvedor.

### 4. Validação na prática
Verificação e Validação: A verificação consiste em avaliar se existem falhas e problemas com o software (seja no código, nas funcionalidades, interface, dentre muitos outros detalhes) antes que ele seja entregue ao cliente ou disponibilizado para o público final. Já a validação de software é um processo que comprova documentalmente que o sistema cumpre com as funções das quais foi designado, em conformidade com as especificações dos requisitos do usuário e com a garantia de segurança e rastreabilidade de informações. Podemos dizer que as 4 atividades básicas do desenvolvimento do design de interação incluem:
1. *Identificar necessidades e requisitos do usuário;*
2. *Desenvolver designs alternativos;*
3. *Construir versões interativas dos designs;*
4. *Avaliar designs.*

Temos algumas técnicas disponíveis para usarmos ao realiazar a validação, assim aferir se existe qualidade ou não.
- **Revisão de Requisitos**: Analisa e revisa sistematicamente todos os requisitos elicitados, executando uma checagem no tocante a erros e inconsistências.<br/>
Uma boa prática seria uma reunião formal com representantes ou especialistas de todas as áreas, tanto do contratante como do contratado.<br/>
Todas as equipes deverão ter representação.<br/>
**Preparo (antes do evento):**
  - *Planejamento do que será revisado.*
  - *Estabelecer e convidar os envolvidos.*
  - *Definir local e tempo para a reunião.*
  - *Escolher para condução alguém “livre de vícios”, ou seja, que não estava integrado à equipe que desenvolveu o documento de requisito.*
  - *Distribuir previamente todos os documentos a serem utilizados na reunião.*
  - *Análise manual sistemática dos requisitos.*
- **Prototipação**: Simulação dos procedimentos para que os stakeholders possam concretizar as ideias propostas, minimizando inconsistências e problemas no requisitos.<br/>
“Nessa abordagem para avaliação, um modelo executável do sistema é demonstrado para os usuários finais e clientes.” (Sommerville, 2007).<br/>
**Algumas preocupações podem ser consideradas na técnica:**
  - Os stakeholders podem não entender a proposta da técnica e considerar que a qualidade está comprometida, visto que o ambiente não corresponde ao do usuário.
  - Estar atento com a equipe de desenvolvedores para não produzir componentes de baixa qualidade.
  - Construção de protótipos requer tempo que pode comprometer a previsão do projeto.
- **Geração de Casos de Testes**: Realizar testes dos requisitos; Documentar os testes anotando: descrição, problemas, comentários e recomendações.<br/>
Uma propriedade importante para cada requisito é o de ser testável. Um requisito não testável pode ser um indício de geradores de problemas.<br/>
Para cada requisito funcional deve ser possível definir um ou mais testes a serem realizados no sistema final para ser possível verificar se o sistema cumpre o requisito na íntegra. Caso tal propriedade não esteja presente, ou até mesmo se for muito difícil testá-lo; tal circunstância indica a necessidade de uma retificação. Na realização dos testes, deve-se tomar nota das características observadas quanto aos requisitos em si (identificador, requisitos relacionados), e como daquelas relacionadas aos testes (descrição, problemas, comentários, recomendações, etc.).
  - Desenvolver testes para os requisitos a fim de verificar a testabilidade.
  - Análise automatizada da consistência.
- **Automação de Teste:** Cada componente é testado de forma independente (unitária).<br/>
A diferença entre testes e automação de testes, é que no primeiro você realiza a tarefa de testar, e no segundo você usa um software que imita a interação com a aplicação no que se refere ao teste tal qual um ser humano faria (Graham e Fewster,1999).
  - Testes produzidos sem requerer intervenção manual, embutidos dentro dos componentes ou usando ferramentas/softwares.
  - Necessário profissionais especializados e tempo no desenvolvimento.

## Gerência de Manutenção

### 1. Definição: O que é manutenção do sistema?
Com o tempo surge a necessidade de atualizações e é necessária a manutenção no sistema. Realizar a manutenção em um sistema requer toda atenção, como no desenvolvimento, para que possa ser mantida a qualidade do produto e garantia de continuidade. Além disso, são necessários procedimentos organizados que gerem um menor impacto no sistema em execução. A manutenção do sistema é uma disciplina da engenharia de software aplicada para modificar o sistema após a entrega. A gerência de manutenção é importante para garantirmos a continuidade do sistema, pois é através da manutenção que são realizados os ajustes necessários. A manutenção ocorre por vários diferentes motivos, sendo os mais comuns: por erro de lógica, erro de requisitos ou por novas necessidades. Para a implementação dos ajustes são adotados os métodos e técnicas propostas para o desenvolvimento, como as técnicas de elicitação de requisitos, construção dos modelos propostos na UML (Unified Modeling Language) e metodologia desejada. Então é necessário um sistema de gestão de manutenção para que se possa iniciar todo o processo de desenvolvimento da manutenção para que seja feito o ajuste necessário. A manutenção no sistema consiste em realizar os ajustes gerando novas versões do sistema após a entrega e implantação. O gerenciamento de mudanças torna-se necessário, pois é preciso estabelecer um controle das versões geradas para o software, chamada por gerência de configuração. Garantia de qualidade significa simplesmente a definição de procedimentos, processos e padrões que visam reforçar que a qualidade de software seja atingida, em outros casos, a garantia de qualidade também inclui todo o gerenciamento de configuração, atividades de verificação e validação aplicadas após o produto ter sido entregue por uma equipe de desenvolvimento. Quando se faz a manutenção, passa-se por todo o processo de desenvolvimento, tem-se um ciclo de vida e todas as atividades do desenvolvimento: levantamento de requisitos, análise, projeto, teste e implantação.<br/>
Toda manutenção deve ser desenvolvida no ambiente de homologação, ou seja, ambiente preparado para implementações e testes. Nos ambientes de homologação é construído um ambiente similar ao do ambiente de produção para que a equipe possa realizar as implementações e testes sem risco de violar o ambiente utilizado pelo usuário.

**Requisitos**
  - Utiliza-se de métodos e técnicas do desenvolvimento de sistemas;
  - Necessário um gerenciamento de mudanças para o controle de versões (gerência de configuração);
  - Utiliza-se ambiente de homologação (ambiente de desenvolvimento e testes).

Segundo Andrade, Gerência de Configuração é um conjunto de atividades, responsabilidades e processos que devem ser bem definidos para garantir a gestão de mudanças, versões e releases de softwares durante todo o seu ciclo de vida, considerada como garantia de qualidade. O gerenciamento de configuração possui as seguintes atividades: gerenciamento de mudanças; gerenciamento de versões e gerenciamento de releases.
<pre>
 Gerência de Configuração             ┌─────────────┐
                                      | proposta de |
                                      |   mudança   |
                                      └──────┬──────┘
 ╭──────────────────────╮          ╭─────────┴────────╮
 | construção do sistema|          | gerenciamento de |
 ╰─┬──────────────────┬─╯          |     mudanças     |
   |                  |            ╰─┬──────────────┬─╯
   |                  |        ┌─────┘              |
 ┌─┴───────────┐    ┌─┴────────┴─┐                ┌─┴───────────┐
 |  versões de |    | versões de |                | releases do |
 | componentes |    |   sistema  |                |   sistema   |
 └─┬───────────┘    └─┬────────┬─┘                └─┬───────────┘
   └─┐              ┌─┘        └──┐              ┌──┘
     |              |             |              |
   ╭─┴──────────────┴─╮         ╭─┴──────────────┴─╮
   | gerenciamento de |         | gerenciamento de |
   |      versões     |         |     releases     |
   ╰──────────────────╯         ╰──────────────────╯
</pre>
### 2. Por que ocorre? Em quais situações ocorre a manutenção do sistema?

Os motivos mais comuns para se realizar a manutenção são:
- Correção de erro / bug / vulnerabilidade
- Erro no levantamento de requisitos
- Implantação de nova funcionalidade ao sistema
- Adaptação ao ambiente

Algumas considerações a tomar para realizar a implantação de novas funcionalidades:
- Pedidos de alteração devem ser especificados e formalizados, apresentando: descrição da mudança, análise de custo x benefício, data, análise de riscos e evidências.
- Mudanças são analisadas pela equipe responsável pelo software e as propostas de solução devem ser aprovadas.
- Após aprovação a equipe inicia o processo de alteração do software.

### 3. Conhecendo atividades de manutenção do sistema.
<pre>
Atividades
              ┌──────────────────────────────────┐  ┌──────────────────────────────────┐
              | Discute-se os problemas com os   |  | Avalia-se os efeitos da mudança  |
              | requisitos e propõe-se mudanças. |  | em outros requisitos do sistema. |
              └──────────────────────────────────┘  └──────────────────────────────────┘
              1. Analisar os custos  2. Explorar os benefícios  3. definir prioridades de implantação entre as mudanças
   Problema   ┌──────────────────────────┐   ┌──────────────────┐   ┌──────────────────┐ Requisitos ┌─────────────────────────────────────┐
 identificado |  Análise do problema e   |   | Análise de custo |   | Implementação da | revisados  | Implementa-se as mudanças e efetiva |
─────────────>| especificação da mudança ├──>|    da mudança    ├──>|      mudança     ├───────────>| a atualização na documentação.      |
              └──────────────────────────┘   └──────────────────┘   └──────────────────┘            └─────────────────────────────────────┘
4. documentar todas as alterações dos itens que fazem parte do desenvolvimento da mudança
</pre>

### 4. Materializando a manutenção do sistema.
1. **Análise de custo x benefício**
2. **Aprovação**
3. **Gerenciamento da mudança**
4. **Documentação**
5. **Implanta a manutenção no ambiente de produção**

## Testes de Garantia de Qualidade
Existem vários tipos de testes a serem feitos para validar a qualidade do software, que trazem análises que podemos gerenciar e ter embasamento para a melhor tomada de decisão possível, são eles:
- **Caixa Branca**: Nesse processo, o usuário ele analisa por qual caminho ocorre o fluxo de dados (fluxograma lógico funcional) e é possível verificar se há a passagem correta em todas as condições esperads.
- **Caixa Preta**: Neste teste o usuário tem a liberdade de testar o funcionamento do software a fim de verificar se está funcionando como se espera e caso não esteja executando corretamente informar o bug encontrado e qual o resultado é esperado, ele não tem acesso ao código fonte e nem a sua estrutura. Como é baseado nos requisitos funcionais, ele também é chamado de teste funcional.<br/>
⠀• Integração⠀⠀⠀ • Performance<br/>
⠀• Regressão⠀⠀⠀  • Instalação<br/>
⠀• Usabilidade⠀⠀⠀• Manutenção<br/>
⠀• Segurança⠀⠀⠀  • Funcional<br/>

## Documentação
A documentação desempenha um papel crucial no desenvolvimento de software, servindo como um meio de comunicação entre desenvolvedores e garantindo que a intenção por trás do código seja clara e acessível. A documentação é uma das formas principais de comunicarmos a outros desenvolvedores nossa inteção ao escrever um projeto: como usar, porque usar e como obter mais informações. No entanto, manter a documentação atualizada pode ser desafiador, especialmente em projetos que evoluem rapidamente por existir uma tendência natural de um descompaço entre a documentação e o código. Em geral, o que acontece é que, a documentação fica rapidamente destualizada a medida que o código evolui com várias mudanças o tempo todo.<br/>
Grande parte dos desenvolvedores de software não adotam o costume de escrever documentação, exatamente por sempre estar pensando em como melhorar o software e aplica continuamente melhorias, sem separar tempo para atualizar a documentação.

**Desafios na Manutenção da Documentação:**
- **Descompasso entre código e documentação:** À medida que o código sofre alterações frequentes, a documentação pode rapidamente se tornar obsoleta se não for atualizada concomitantemente.
- **Prioridade ao desenvolvimento:** Muitos desenvolvedores focam na implementação e melhoria contínua do software, frequentemente negligenciando a atualização da documentação.

Algumas maneiras de contornar isso, é sempre lembrar que, *quanto mais próxima a documentação estiver do código, é mais difícil de se tornar desatualizada*.

**Estratégias para Manter a Documentação Atualizada:**
1. **Proximidade entre código e documentação:** Manter a documentação o mais próximo possível do código-fonte reduz a chance de desatualização. Comentários embutidos e ferramentas que geram documentação automaticamente a partir do código são exemplos eficazes dessa prática.
2. **Uso de docblocks e heredocs:** Incorporar comentários estruturados, conhecidos como docblocks, diretamente no código permite a geração de documentação navegável e referenciada. Ferramentas específicas podem extrair esses comentários e criar documentação formal.

**Na maioria das linguagens de programação, é possível escrever a documentação em forma de comentário.** Junto do código, podemos colocar comentários chamados **`docblocks`**, ou também **`heredocs`**, que podem ser convertidos numa documentação indexada, referenciada e navegável.

Além disso, é importante também escrever e atualizar uma documentação de nível mais alto e distanciado da implementação do projeto. Assim então temos 2 níveis de documentação:
1. **técnico**: documentação extensa e detalhada no sentido macro para micro, fornecendo uma visão abrangente do sistema, abordando sua arquitetura, componentes principais e interações.
2. **operacional**: documentação pontual que descreve partes micro que podem ser agrupadas para o entendimento do macro, focada em detalhes específicos, como funções individuais, classes ou módulos, facilitando o entendimento de partes específicas do sistema.

Uma boa prática é implementar a documentação desde o início, seguindo o **DDD**, começando escrevendo um pequeno documento sobre como usar o software e seguir atualizando regularmente a cada nova **release**. Então, ao fim de um grande ciclo, revisar essa documentação para atualizá-la e torná-la mais completa. Outras boas práticas incluem:
- **Documentação desde o início:** Implementar a documentação desde as fases iniciais do projeto, alinhando-a com os princípios do Desenvolvimento Orientado ao Domínio (DDD), assegura que as decisões de design e funcionalidades sejam bem compreendidas.
- **Atualizações regulares:** Estabelecer um cronograma para revisar e atualizar a documentação, especialmente após novas releases ou mudanças significativas no código.
- **Ferramentas de automação:** Utilizar ferramentas que integrem a geração de documentação ao fluxo de desenvolvimento pode minimizar o esforço manual e garantir consistência.

Além disso, existem metodologias dedicadas a manter o código organizado e inteligível seguindo a ideia de documentar o código com o próprio código, e usar isso para a escrita da documentação formal, que é o caso do **clean code**, que é uma boa prática de escrita de código que usa código *"autocomentado"*. Um **código autocomentado** é aquele escrito de maneira tão clara e intuitiva que dispensa comentários adicionais para explicar seu funcionamento. Nele, a escolha precisa de nomes de variáveis, funções e classes, juntamente com uma estrutura lógica e organizada, torna o propósito e a lógica do código facilmente compreensíveis para outros desenvolvedores.

```js
function calcularSalarioAnual(salarioMensal) {
    const mesesNoAno = 12;
    return salarioMensal * mesesNoAno;
}

const salarioMensal = 5000;
const salarioAnual = calcularSalarioAnual(salarioMensal);
console.log(`O salário anual é R$ ${salarioAnual}`);
```

- **Docblocks** são blocos de comentários estruturados utilizados para documentar elementos do código, como classes, métodos e funções. Geralmente posicionados imediatamente antes da definição do elemento que descrevem, os docblocks seguem uma sintaxe específica que permite a geração automática de documentações detalhadas por meio de ferramentas especializadas. Além de fornecerem descrições claras, podem incluir informações sobre parâmetros, valores de retorno, exceções lançadas e outros detalhes relevantes.

```php
/**
 * Calcula o salário anual com base no salário mensal.
 *
 * @param float $salarioMensal O valor do salário mensal.
 * @return float O valor do salário anual.
 */
function calcularSalarioAnual($salarioMensal) {
    $mesesNoAno = 12;
    return $salarioMensal * $mesesNoAno;
}
```

- **Heredocs** são uma forma de definir strings multilinha em várias linguagens de programação, como PHP, Perl e Shell Script. Utilizando uma sintaxe específica, permitem a inserção de blocos de texto que preservam quebras de linha e formatação, facilitando a manipulação de grandes trechos de texto ou código dentro do próprio código fonte. No contexto de documentação, heredocs podem ser empregados para incluir exemplos de uso ou saídas esperadas de funções, enriquecendo a compreensão do comportamento do código.

```php
$mensagem = <<<EOT
Olá,

Este é um exemplo de texto utilizando Heredoc em PHP.
Você pode escrever múltiplas linhas sem se preocupar com concatenação ou caracteres especiais.

Atenciosamente,
Equipe de Desenvolvimento
EOT;

echo $mensagem;
```

- **Clean Code** é um conceito que enfatiza a importância de escrever códigos legíveis, mantíveis e eficientes. Nesse contexto, a prática de criar um código autocomentado é fundamental, pois reduz a necessidade de comentários excessivos, tornando o código autoexplicativo. No entanto, quando a documentação adicional se faz necessária, o uso de docblocks estruturados assegura que as informações complementares estejam diretamente associadas aos elementos correspondentes, facilitando a manutenção e evitando desatualizações. Por outro lado, o uso de heredocs contribui para a clareza e organização do código, especialmente ao lidar com strings extensas ou exemplos incorporados, alinhando-se aos princípios do Clean Code ao promover uma estrutura mais limpa e compreensível.<br/>
Escrever um **código limpo** é fundamental para garantir a legibilidade, manutenibilidade e eficiência de um software. A seguir veremos um exemplo prático em JavaScript que ilustra os princípios do Clean Code:

**Exemplo: Função para calcular o preço total de itens em um carrinho de compras**

*Código não otimizado:*
```javascript
function calc(items) {
    let p = 0;
    for (let i = 0; i < items.length; i++) {
        p += items[i].qt * items[i].prc;
    }
    return p;
}
```
*Problemas identificados:*
- **Nomes de variáveis e função pouco descritivos:** `calc`, `p`, `qt` e `prc` não indicam claramente seus propósitos.
- **Falta de tratamento para casos especiais:** Como carrinhos vazios ou valores negativos.

*Código otimizado seguindo os princípios do Clean Code:*
```javascript
/**
 * Calcula o preço total dos itens no carrinho de compras.
 *
 * @param {Array} itens - Lista de itens no carrinho. Cada item deve possuir:
 *   - quantidade: Número de unidades do item.
 *   - preco: Preço unitário do item.
 * @returns {number} O preço total dos itens.
 */
function calcularPrecoTotal(itens) {
    if (!Array.isArray(itens) || itens.length === 0) {
        return 0; // Retorna 0 se o carrinho estiver vazio ou não for um array válido
    }

    let precoTotal = 0;

    for (const item of itens) {
        const { quantidade, preco } = item;

        if (quantidade <= 0 || preco < 0) {
            continue; // Ignora itens com quantidade ou preço inválidos
        }

        precoTotal += quantidade * preco;
    }

    return precoTotal;
}
```
*Melhorias implementadas:*
- **Nomes descritivos:** A função `calcularPrecoTotal` e as variáveis `itens`, `quantidade` e `preco` indicam claramente seus propósitos.
- **Documentação com comentários:** O uso de docblocks fornece informações sobre a função, seus parâmetros e o valor retornado.
- **Tratamento de casos especiais:** A função verifica se a entrada é um array válido e se não está vazio, além de ignorar itens com quantidade ou preço inválidos.
- **Uso de `const` e `let`:** Variáveis são declaradas com `const` ou `let` conforme apropriado, promovendo boas práticas de escopo e imutabilidade.

Seguindo os princípios do Clean Code, como nomes significativos, funções com responsabilidade única e tratamento adequado de erros, o código se torna mais claro e fácil de manter.

- [Clean Code - Guia e Exemplos - Balta.io](https://balta.io/artigos/clean-code)
- [Clean Code (Código Limpo): O que é + 13 exemplos - Task Blog](https://blog.task.com.br/clean-code/)
- [Desvendando o Clean Code: Princípios, Exemplos e Boas Práticas - DIO](https://www.dio.me/articles/desvendando-o-clean-code-principios-exemplos-e-boas-praticas)

Em resumo, enquanto o código autocomentado busca minimizar a necessidade de explicações adicionais através de uma escrita clara e intuitiva, os docblocks e heredocs oferecem meios estruturados de adicionar documentação e exemplos diretamente no código, complementando as práticas recomendadas pelo Clean Code para um desenvolvimento mais eficiente e colaborativo. Ele implementa a documentaçãm que é altamente eficaz é fundamental para a manutenção, escalabilidade e colaboração em projetos de software. Adotar práticas que integrem a documentação ao processo de desenvolvimento e garantir sua atualização contínua são passos essenciais para o sucesso a longo prazo do projeto.

# Arquitetura de Software
Conhecer sobre arquitetura de software auxilia o desenvolvedor desde o processo de desenvolvimento de uma solução até sua sustentabilidade. Um dos pontos fundamentais que diferencia um desenvolvedor é _o quanto_ ele está preparado para desenvolver softwares sustentáveis, ou seja, entregar um software que gera valor constantemente ao longo do tempo. O software sustentável é flexível e permite grandes mudanças sem muita necessidade de reescritas e refatoração.<br/>
As 3 perguntas principais que levam ao entendimento real da essência da arquitetura de software são:
1. **Qual a fórmula para criar um software sustentável?**
2. **O que realmente é a Arquitetura de Software?**
3. **Qual a relação entre a sustentabilidade de um software e sua arquitetura?**

## Sustentabilidade no Dia-Zero
Geralmente, o termo *"sustentabilidade"* está relacionado à atividades que busquem a preservação do meio ambiente, porém, quando se trata de desenvolvimento de software, sua definição é um tanto quanto diferente: dizer que um software é sustentável é o mesmo que dizer que esse software foi arquitetado para evoluir dentro de uma organização. Ou seja, continuar existindo pelo maior tempo possível.<br/>
De forma geral, desenvolver uma aplicação é extremamente caro, e por isso traz impactos diretamente na performance de uma empresa, principalmente na área de investimentos destas organizações. Atualmente, sabe-se que grande parte das corporações emergentes são empresas de tecnologia, logo, o desenvolvimento de sistemas é parte do core da companhia. A Uber e o iFood são alguns exemplos de organizações em que grande parte do investimento para que possam operar está diretamente relacionado às tecnologias.<br/>
Um ponto importante para se ter em mente é que, de modo geral, um software busca resolver algum *"problema"*. Então, utilizando o exemplo do iFood, por ser uma empresa voltada para a entrega de alimentos – algo que poderia ser feito por meio de uma ligação telefônica – precisou evoluir para ter diferenciais que fizessem com que se pudesse se manter no mercado. Por exemplo, seu software tem mais escalabilidade para que seja viável no dia a dia e assim se diferenciar de pedidos por ligações telefônicas, conseguindo atender e suprir a demanda do mercado.<br/>
Neste cenário, o software pode ser considerado parte da empresa – as vezes, o software é a própria empresa, como o caso do Uber por exemplo – ou seja, a medida que a organização evolui o software precisa acompanhar, de forma que seu custo seja muito menor que seu resultado em retorno lucrativo. Deste modo, deve haver um ponto de equilíbrio, onde a solução consegue retornar seu investimento.<br/>
Quando as empresas se dão conta de que determinado software chegou em seu _limite de evolução_, novos projetos de "modernização tecnológica" são criados exatamente para dar conta do que o software legado não conseguiu. A pergunta que perdura é: o software parou de evoluir realmente por conta da evolução da tecnologia ou é devido a sua criação que acarretou em uma evolução cada vez mais caótica?<br/>
Sem dúvidas a tecnologia evolui. Novas linguagens, bibliotecas e frameworks surgem todos os dias, porém, em muitos casos a forma com que um software é concebido tem um peso infinitamente superior do que a tecnologia utilizada pelo mesmo. O Software precisa nascer sustentável, e continuar em produção pelo maior tempo possível. Quanto mais tempo permanece no ar maior é o retorno que ele gera, e isto só é possível apenas se sua base for sólida e bem construída. Desde o dia zero cada desenvolvedor, arquiteto, product owner e demais stakeholders envolvidos pensarem em como fazer com que ele permaneça operante e entregando valor continuamente.<br/>
Então, para que um software seja sustentável, ele deve ser bem projetado e arquitetado, assim poderá permanecer em produção por longos períodos. As vezes na pressa em entregar algo para produção, cria-se algo sem a sustentabilidade desde o dia zero, e essa armadilha pode trazer mais prejuízos que valor, colocando a organização numa posição de ter que decidir continuar ou não suas operações.

<a href="https://github.com/raphaelkaique1/study/blob/main/7-desenvolvimento_iot/7.1-desenvolvimento_para_iot_internet_of_things/plataformas_iot_arduino_raspberry_pi.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#arquitetura_de_solucao">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/tree/main/8-desenvolvimento_avancado/8.1-arquitetura_de_solucao/padroes_de_projeto_design_patterns.md">next</a>