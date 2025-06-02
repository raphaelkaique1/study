# VERSIONAMENTO
É o processo de atribuir identificadores únicos a diferentes estados ou revisões de um conteúdo, podendo ser aplicado à arquivos e vários outros tipos de mídia. Cada versão representa uma *fotografia no tempo* de como aquele conteúdo estava.

## CONTROLE DE VERSÃO
O controle de versão é um sistema que registra o histórico de mudanças feitas em um arquivo ou conjunto de arquivos ao longo do tempo, permitindo recuperar versões anteriores, acompanhar modificações, rastrear cada alteração, minimizando o risco de perda de código ou arquivos importantes e permitindo a colaboração de forma eficiente. É uma das mais importantes ferramentas de qualquer projeto de software bem desenvolvido, pois garante a qualidade no desenvolvimento.<br/>
Existem 3 tipos básicos de controle de versão:
- **LOCAL**<br/>
Feito manualmente com ferramentas simples, armazenados no próprio computador ou em um servidor local.
- **CENTRALIZADO - CVCS**<br/>
Usa um único servidor com acesso via internet que contém todas as versões, por exemplo **SNV**.
- **DISTRIBUÍDO - DVCS**<br/>
Cada usuário tem uma cópia completa do respositório, como por exemplo no **Git** ou **GitLab**.

Mas antes de iniciar o versionamento de qualquer projeto, primeiro precisamos de saber alguns conceitos sobre **ambiente de desenvolvimento** para entendermos quais são os arquivos de desenvolvimento privados, quais são os arquivos de produção públicos, quais licenças aplicam as versões do software e as ferramentas de versionamento, rastreamento de atividades e também **integration** e **deployment**.

## FLUXO DE TRABALHO PARA DESENVOLVIMENTO DE SOFTWARE
Antes de iniciarmos o planejamento da arquitetura de um projeto, precisamos primeiro estruturar nosso ambiente de desenvolvimento. Este é um passo importante para que o fluxo de trabalho seja fluído e constante, pois não adianta seguir um modelo de estrutura de codificação se nem o ambiente de desenvolvimento possui uma boa organização. Estrutura de arquivos, descrição do projeto e a utilização de Agile Methodologies como Kanbam ou Scrum nos ajudam a criar um ambiente de programação elevado e funcional. Um ambiente de desenvolvimento bem estruturado se inicia na organização do desktop, das pastas do ambiente de desenvolvimento e a estrutura para o ambiente de produção, a documentação extensíva e a documentação básica e mais outros assuntos.<br/>
Como todo tipo de projeto de software, existem algumas recomendações quanto à organização dos arquivos de um site. Não já nenhum rigor técnico quanto a essa organização, e na maioria das vezes será necessário adaptar as recomendações da melhor maneira para o projeto. Começando pela estrutura básica dos diretórios do projeto, não existe um único padrão que funcione para todos os projetos, mas há convenções amplamente adotadas para a organização da estrutura de pastas em projetos de software, seja para desktop, web, backend ou frontend.<br/>
No desenvolvimento web por exemplo, como um site é um conjunto de páginas Web sobre um assunto, empresa, produto ou qualquer outra coisa, é comum todos os arquivos de um site estarem dentro de uma só pasta e, assim como um livro, é recomendado que exista uma "capa", ou seja, uma página inicial – também chamada *home* – que possa indicar para o visitante quais são as outras páginas que fazem parte desse projeto e como ele pode acessá-las, algo como o *índice* do site. Ter esse índice, *não por coincidência*, é uma convenção adotada pelos servidores de páginas web. Se desejamos que uma determinada pasta seja servida como um site e dentro dessa pasta existe um arquivo chamado **index.html**, este arquivo será a página inicial, a menos que alguma configuração determine outra página para este fim. Dentro da pasta do site, no mesmo nível que o `index.html`, é recomendado que sejam criadas mais algumas pastas para manter separados os arquivos de imagens, as folhas de estilo e os scripts. Muitas vezes, um site é servido por meio de uma aplicação Web e, nesses casos, a estrutura dos arquivos depende de como a aplicação necessita dos recursos para funcionar corretamente.

```bash
# Padrão Básico Universal - usado como referência geral para qualquer projeto
/projeto
│── /src          # Código-fonte principal
│── /docs         # Documentação do projeto
│── /tests        # Testes automatizados
│── /configs      # Arquivos de configuração (opcional)
│── /build        # Arquivos compilados (se aplicável)
│── /assets       # Recursos como imagens, ícones, fontes
│── .gitignore    # Arquivos a serem ignorados pelo Git
│── README.md     # Documentação principal
│── LICENSE       # Arquivo de licença do projeto
│── package.json  # Se for um projeto Node.js
│── requirements.txt  # Se for um projeto Python
```
Essa estrutura funciona bem para a maioria dos projetos. Agora, vamos para exemplos específicos.

### Software Desktop - Python, Java, C#
```bash
/projeto
│── /src          # Código-fonte principal
│   │── /main     # Arquivos principais do app
│   │── /modules  # Módulos auxiliares
│   │── /utils    # Funções utilitárias
│── /tests        # Testes unitários
│── /docs         # Documentação do software
│── /configs      # Arquivos de configuração
│── /assets       # Recursos (ícones, fontes, imagens)
│── /bin          # Arquivos binários ou executáveis
│── /build        # Arquivos compilados (caso necessário)
│── .gitignore    # Arquivos a serem ignorados pelo Git
│── README.md     # Documentação principal
│── LICENSE       # Arquivo de licença
│── setup.py      # Se for Python, para instalação
│── pom.xml       # Se for Java, configuração Maven
```

### Software Web - Node.js, Django, Laravel
```bash
/projeto
│── /src
│   │── /controllers  # Controladores (MVC)
│   │── /models       # Modelos de dados
│   │── /views        # Templates ou páginas frontend
│   │── /routes       # Definição das rotas da aplicação
│   │── /middlewares  # Middlewares (segurança, logs, etc.)
│   │── /services     # Regras de negócio (caso necessário)
│── /public          # Arquivos públicos (CSS, JS, imagens)
│── /configs         # Arquivos de configuração (ex: .env)
│── /tests           # Testes automatizados
│── /logs            # Logs de erro e execução
│── /docs            # Documentação do projeto
│── .gitignore       # Ignorar arquivos desnecessários no Git
│── README.md        # Documentação principal
│── LICENSE          # Licença do software
│── package.json     # Dependências (Node.js)
│── requirements.txt # Dependências (Python/Django)
│── composer.json    # Dependências (PHP/Laravel)
```

### Frontend Web - React, Angular, Vue.js
```bash
/projeto
│── /src
│   │── /components   # Componentes reutilizáveis
│   │── /pages        # Páginas principais do app
│   │── /styles       # Estilos (CSS, SCSS, Tailwind)
│   │── /assets       # Ícones, imagens, fontes
│   │── /utils        # Funções auxiliares
│   │── /services     # Comunicação com APIs
│   │── App.js        # Componente principal (React)
│── /public          # Arquivos estáticos
│── /tests           # Testes unitários e integração
│── .gitignore       # Ignorar arquivos desnecessários no Git
│── README.md        # Documentação principal
│── package.json     # Dependências do projeto
│── .eslintrc.js     # Configuração do ESLint
│── vite.config.js   # Configuração do Vite (se usar React/Vite)
```

### Backend Web - API REST + Node.js, Flask, Spring Boot
```bash
/projeto
│── /src
│   │── /controllers  # Controladores (MVC)
│   │── /models       # Modelos de dados
│   │── /routes       # Definição de rotas
│   │── /middlewares  # Middlewares (autenticação, logs)
│   │── /services     # Lógica de negócio
│── /database        # Migrations, seeds, models de banco
│── /tests           # Testes unitários e integração
│── /docs            # Documentação da API (Swagger, Postman)
│── /configs         # Configurações (ex: .env)
│── .gitignore       # Ignorar arquivos desnecessários
│── README.md        # Documentação principal
│── package.json     # Dependências do Node.js
│── requirements.txt # Dependências (se for Python)
│── Dockerfile       # Configuração do Docker
```

Embora cada tecnologia ou framework tenha suas particularidades, as convenções básicas incluem:
- Código-fonte separado em `/src`
- Documentação em `/docs`
- Testes em `/tests`
- Arquivos de configuração isolados
- Uso de boas práticas como MVC - Model-View-Controller.

Dessa forma, qualquer desenvolvedor pode rapidamente entender e trabalhar no projeto.

Apesar de cada estrutura de diretórios sofrer modificações de acordo com a arquitetura do projeto, podemos perceber alguns padrões de arquivos, em especial o **README** e o **LICENSE**.

## README
Apesar de não ser um código funcional da aplicação, o README é um arquivo fundamental. É o arquivo mais básico necessário em todo projeto. O README de qualquer software deve conter pelo menos as informações essenciais para que qualquer pessoa entenda o propósito do projeto e consiga utilizá-lo.

A estrutura básica inclui:
1. NOME e DESCRIÇÃO: Qual o proósito do software de forma curta e clara.
  1.1 DESCRIÇÃO DETALHADA: Se possível ou necessário, uma descrição breve detalhando os pontos que o software apresenta.
2. INSTALAÇÃO: O passo a passo de como instalar e configurar o software, incluindo as dependências necessárias.
3. USO: Como executar e usar o software com exemplos básicos.
4. REQUISITOS: Dependências e requisitos mínimos para rodar o projeto.
5. DOCUMENTAÇÃO: Sobre o software ou sobre onde encontrá-la.
5. LICENÇA: A licença de uso do software.

Essas informações são o básico de qualquer README, porém podem ser adicionadas outras informações como contribuição, estrutura do código e contato de acordo com a necessidade. Vejamos 2 templates para situações de detalhamento diferentes:

### Template 1 - Básico (Essencial)
```md
# Nome do Projeto

Breve descrição do software, explicando seu propósito e funcionalidades principais.

## 📦 Instalação

1. Instale as dependências:
    ```sh
    comando de instalação
    ```
2. Execute o projeto:
    ```sh
    comando para rodar
    ```

## 🚀 Uso

Exemplo básico de como usar o software:
    ```sh
    comando ou código de exemplo
    ```

## 📋 Requisitos

- Dependência 1
- Dependência 2
- Versão mínima necessária: X.X.X

## 📜 Licença

Este projeto está licenciado sob a licença **[Nome da Licença](link da licença)**.
```

###  **Template 2 - Completo (Com mais detalhes)**  
```md
# Nome do Projeto

Breve descrição do software, explicando seu propósito e principais funcionalidades.

## 📦 Instalação

1. Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/nome-do-projeto.git
    ```
2. Acesse o diretório:
    ```sh
    cd nome-do-projeto
    ```
3. Instale as dependências:
    ```sh
    comando de instalação
    ```
4. Execute o projeto:
    ```sh
    comando para rodar
    ```

## 🚀 Uso

Exemplo básico de como utilizar o software:
    ```sh
    comando ou código de exemplo
    ```
Ou chamando via código:
    ```python
    # Exemplo de uso em Python
    from projeto import funcionalidade

    funcionalidade()
    ```

## 📋 Requisitos

- Dependência 1
- Dependência 2
- Versão mínima necessária: X.X.X

## 🏗️ Estrutura do Código

    ```plaintext
    /nome-do-projeto
    │── /src          # Código-fonte principal
    │── /docs         # Documentação do projeto
    │── /tests        # Testes automatizados
    │── README.md     # Documentação principal
    │── setup.py      # Configuração de instalação (se necessário)
    ```

## 🤝 Contribuição

Contribuições são bem-vindas! Para contribuir:
1. Faça um fork do projeto.
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`).
3. Faça as alterações necessárias e commit (`git commit -m "Descrição da mudança"`).
4. Envie um pull request.

## 📧 Contato

Criado por [Seu Nome](https://github.com/seu-usuario) - Entre em contato via [seu@email.com](mailto:seu@email.com).

## 📜 Licença

Este projeto está licenciado sob a licença **[Nome da Licença](link da licença)**.
```

Esses templates podem ser adaptados conforme a necessidade do projeto. O primeiro é o mais básico possível, enquanto o segundo já traz mais informações úteis para quem deseja contribuir ou entender melhor o código.<br/>
Vamos realizar um exemplo prático para a construção de um CMS gerador de páginas estáticas:
```md
# Comp: compilador de site estático

Comp é um geradoe de websites estáticos, suas características incluem:
- Simplicidade e facilidade de uso, com uma interface intuitíva e amigável.
- Baseado em arquivos de texto com formatação básica.
- Leve e de fácil instalação, por ter pouca depência em aplicações e bibliotecas externas.
- Fácil hospedagem em qualquer local.
- O conteúdo pode ser convertido noutros formatos.

## Dependências
O Comp depende dos seguintes pacotes instalados no seu sistema:
- bash
- perl
- coreutils
- findutils
- pandoc
- rsync

## Criando um site

Para criar um arquivo com Comp, basta executar estes comandos no CLI, usando o Shell de sua preferência:

	# Crie a pasta do seu site já com a pasta de dados
	mkdir -p ~/projects/blog/data

	# Entre na pasta
	cd ~/projects/blog

	# Crie um arquivo inicial
	echo "Hello world!" > data/index.fe

O site compilado será criado na pasta `output`. pronta para ser copiada para um ambiente web.
```

## LICENSE
A **Licença de Código** define as regras de uso, distribuição, modificação e comercialização de um software. Sem uma licença explícita, um software é considerado **proprietário** por padrão, o que significa que ninguém pode usá-lo ou modificá-lo legalmente sem permissão do autor.

### Tipos de Licenças de Código<br/>
As licenças de software são geralmente classificadas em **proprietárias** ou **livres (open source)**.

### Licenças Proprietárias
- O código-fonte **não** é disponibilizado livremente.
- O uso, modificação e redistribuição são **restritos** pelo detentor dos direitos.
- Exemplos:
  - **Microsoft Windows**
  - **Adobe Photoshop**
  - **Oracle Database**

### Licenças Open Source
Permitem acesso ao código-fonte e geralmente permitem modificações e redistribuição, mas com algumas restrições dependendo do tipo de licença.

- **Licenças Permissivas**
  - Permitem o uso, modificação e distribuição sem muitas restrições.
  - O software pode ser incorporado a projetos proprietários.
  - Exemplos:
    - **MIT**
    - **Apache 2.0**
    - **BSD**

- **Licenças Copyleft – Restritivas**
  - O software modificado ou derivado **deve** manter a mesma licença.
  - Exigem que o código-fonte seja sempre disponibilizado.
  - Exemplos:
    - **GPL – General Public License**
    - **LGPL – Lesser General Public License**
    - **AGPL – Affero GPL**

- **Licenças Específicas para Documentação ou Criatividade**  
  - **Creative Commons – CC-BY, CC-BY-SA...**: Muito usada para documentação de software.  
  - **GNU FDL – Free Documentation License**: Específica para manuais e tutoriais.  

**Cada licença possui suas particularidades, abaixo tem-se um resumo das licenças organizadas por categoria e com explicações sobre suas permissões e restrições.**

1. **Licenças Permissivas**<br/>
Permitem o uso, modificação e redistribuição sem muitas restrições, geralmente exigindo apenas atribuição de créditos.

**1.1. Apache License 2.0**
- Permite uso, modificação e distribuição.
- Requer atribuição do autor original.
- Possui uma cláusula de patentes que protege os contribuintes contra processos judiciais.

**1.2. Boost Software License 1.0 – BSL-1.0**
- Sem restrições sobre uso ou modificação.
- Apenas requer que o aviso de copyright seja mantido.

**1.3. BSD Licenses**
- **BSD 2-Clause**: Apenas exige atribuição ao autor original.  
- **BSD 3-Clause – BSD-3-Clause / BSD-3-Clause-Clear**: Adiciona restrição para evitar uso do nome do autor em promoções.  
- **BSD 4-Clause**: Inclui uma cláusula extra proibindo uso promocional, mas raramente usada hoje.  
- **BSD Zero-Clause – 0BSD**: Nenhuma restrição, permite até remover a atribuição.  

**1.4. MIT License**
- Extremamente permissiva, usada amplamente por projetos open-source.
- Permite uso, modificação e distribuição sem restrições.
- Apenas requer atribuição.

**1.5. ISC License – ISC**
- Similar à licença MIT, com texto mais curto.

**1.6. The Unlicense**
- Coloca o software no domínio público, sem restrições.

**1.7. zLib License**
- Permite uso livremente, mas exige que alterações sejam claramente marcadas.

**2. Licenças Copyleft – Restritivas**<br/>
Exigem que o software derivado mantenha a mesma licença.

**2.1. GNU Licenses**
- **GPL – General Public License**: Obriga que qualquer software derivado também use GPL.  
  - **GPL-2.0**: Menos flexível.  
  - **GPL-3.0**: Melhor proteção contra patentes e restrições de hardware.  
- **AGPL – Affero GPL - AGPL-3.0**: Similar ao GPL, mas obriga a disponibilização do código mesmo que o software seja acessado via web (SaaS).  
- **LGPL – Lesser General Public License**: Menos restritiva que a GPL, permitindo uso em software proprietário.  

**2.2. Mozilla Public License 2.0 – MPL-2.0**
- Requer que apenas arquivos modificados permaneçam open-source.
- Permite integração com software proprietário.

**2.3. Eclipse Public License – EPL-1.0 / EPL-2.0**
- Permite uso comercial, mas exige que alterações sejam compartilhadas.

**2.4. European Union Public License – EUPL-1.1**
- Semelhante ao GPL, mas compatível com leis da União Europeia.
 
**3. Licenças Criativas e Educacionais**<br/>
Focadas em documentação, materiais educacionais e fontes.

**3.1. Creative Commons – CC**
- **CC0-1.0**: Equivalente ao domínio público.
- **CC-BY-4.0**: Permite qualquer uso, desde que o autor seja citado.
- **CC-BY-SA-4.0**: Igual à anterior, mas exige que obras derivadas mantenham a mesma licença.

**3.2. Educational Community License – ECL-2.0**
- Parecida com Apache 2.0, mas voltada para software educacional.

**3.3. LaTeX Project Public License – LPPL-1.3c**
- Específica para documentos e pacotes LaTeX.

**3.4. SIL Open Font License – OFL-1.1**
- Voltada para fontes tipográficas, permitindo redistribuição e modificação.

**4. Licenças Proprietárias e Específicas**<br/>
Licenças que misturam elementos abertos e fechados.

**4.1. Microsoft Public License – MS-PL**
- Permite uso comercial, mas não pode ser combinada com software GPL.

**4.2. PostgreSQL License**
- Semelhante à licença BSD, voltada para o banco de dados PostgreSQL.

**4.3. Open Software License – OSL-3.0**
- Parecida com a GPL, mas menos popular.

**5. Licenças Humorísticas**<br/>
Criadas informalmente, mas ainda legalmente válidas.

**5.1. Do What The F*ck You Want To Public License – WTFPL**
- Sem restrições, literalmente permite "fazer o que quiser" com o código.

## LOG
O arquivo `log` é onde começamos a prototipar o versionamento do código. Neste tipo de arquivo podemos encontrar mudanças de um backup para o trabalho atual entre outros registros de eventos e atividades que ocorrem em um sistema computacional. Esses registros, geralmente em formato de texto, incluem informações como data e hora (timestamp), tipo de evento, origem e detalhes adicionais relevantes. A principal função dos arquivos de log é fornecer uma trilha de auditoria que auxilia na monitoração, diagnóstico e solução de problemas em sistemas de TI.

**Principais tipos de arquivos de log:**
- **Logs de eventos:** Registram atividades gerais do sistema, fornecendo uma trilha de auditoria para solucionar problemas.
- **Logs do sistema:** Contêm registros de eventos do sistema operacional, como alterações, mensagens de inicialização, erros e alertas.
- **Logs de acesso:** Documentam solicitações de arquivos ou recursos, incluindo informações sobre quem acessou, quando e de onde.
- **Logs de segurança:** Monitoram eventos relacionados à segurança, como tentativas de login, alterações de permissões e possíveis intrusões.
- **Logs de alterações:** O **`CHANGE LOG`** mantêm um histórico cronológico de modificações realizadas em sistemas ou aplicações, facilitando o controle de versões e auditorias.

**Importância dos arquivos de log:**
- **Monitoramento e manutenção:** Permitem acompanhar o desempenho e a saúde de sistemas e aplicações, identificando e solucionando problemas de forma proativa.
- **Segurança:** Ajudam na detecção de atividades suspeitas ou não autorizadas, fortalecendo a postura de segurança da organização.
- **Auditoria e conformidade:** Fornecem registros detalhados que são essenciais para auditorias internas e para garantir a conformidade com regulamentações e políticas corporativas.
- **Análise de desempenho:** Oferecem insights sobre o uso de recursos e comportamento do sistema, auxiliando na otimização e planejamento de capacidade.

**Desafios no gerenciamento de logs:**
- **Volume de dados:** Sistemas modernos geram uma quantidade massiva de logs, tornando o armazenamento e a análise um desafio significativo.
- **Variedade de formatos:** Diferentes sistemas e aplicações produzem logs em formatos variados, dificultando a padronização e a análise integrada.
- **Velocidade de geração:** A rapidez com que os logs são gerados pode superar a capacidade de processamento manual, exigindo soluções automatizadas e escaláveis.

## RELEASES
Um **release** é uma versão específica de um software que é disponibilizada ao público ou a um grupo de usuários. Cada release pode incluir novas funcionalidades, correções de bugs e melhorias de desempenho.  

**Tipos de Releases:**
1. **Major Release – versão principal** – Mudanças significativas, podendo quebrar compatibilidade.
2. **Minor Release – atualização menor** – Novos recursos adicionados sem quebrar compatibilidade.
3. **Patch Release – correção** – Pequenas melhorias e correções de bugs.
4. **pre-release** – Versões beta, alfa ou candidatas a lançamento (RC - Release Candidate).
5. **LTS (Long Term Support)** – Versões com suporte de longo prazo, estáveis para produção.

O **Versionamento Semântico – Semantic Versioning - SemVer** – é um padrão para nomear versões de software de forma previsível e consistente. Nele, cada número tem um significado específico, geralmente dividido em três partes: **MAJOR.MINOR.PATCH**.  

1. **MAJOR – mudanças que quebram compatibilidade**<br/>
Indica uma **versão principal** e é incrementado quando há mudanças significativas ou incompatíveis no software, como:
- Alterações que quebram a compatibilidade com versões anteriores.
- Novas funcionalidades ou reestruturações completas.

**Exemplo**: De **`1`**`.0.0` para **`2`**`.0.0`, o software provavelmente não será compatível com a versão anterior.

2. **MINOR – novos recursos, mas compatível com versões anteriores**<br/>
Indica uma **versão secundária** e é incrementado quando são adicionadas **novas funcionalidades** ao software de forma **compatível** com a versão anterior.
- Não quebra a compatibilidade existente.
- Geralmente envolve melhorias significativas ou novos recursos.

**Exemplo**: De `1.`**`0`**`.0` para `1.`**`1`**`.0`, funcionalidades novas foram introduzidas, mas o sistema permanece compatível com 1.0.0.

3. **PATCH – correção de bugs ou pequenas melhorias**<br/>
Indica **correções ou ajustes** menores no software. É incrementado para:  
- Correção de bugs.  
- Melhorias de desempenho ou ajustes internos que não alteram as funcionalidades.  

**Exemplo**: De `1.0.`**`0`** para `1.0.`**`1`**, foram corrigidos problemas ou implementadas pequenas melhorias sem impacto no uso geral.

**Regras do SemVer:**
1. **Mudança MAJOR – 1.x.x → 2.0.0**
  - Introdução de mudanças **incompatíveis** com versões anteriores.
  - Pode remover ou alterar APIs.

2. **Mudança MINOR – 1.0.x → 1.1.0**
  - Adiciona funcionalidades **novas**, mas sem quebrar compatibilidade.
  - APIs existentes permanecem funcionando.

3. **Mudança PATCH – 1.0.0 → 1.0.1**
  - Apenas **correções de bugs** ou pequenas melhorias.
  - Nenhuma funcionalidade nova é adicionada.

| VERSÃO    | ALTERAÇÃO                                              |
|-----------|--------------------------------------------------------|
| **1.0.0** | Primeiro lançamento estável.                           |
| **1.1.0** | Novo recurso adicionado sem quebrar compatibilidade.   |
| **1.1.1** | Pequena correção de bug.                               |
| **2.0.0** | Mudanças que quebram compatibilidade com a versão 1.x. |

**Extensões do SemVer:**
1. **Pre-release (Versões experimentais):**  
  - **1.2.0-alpha.1** – versão alfa
  - **1.2.0-beta.3** – versão beta
  - **1.2.0-rc.1** – Release Candidate

2. **Build Metadata:**
  - Indica uma versão específica para fins internos, exemplo: `1.2.0+20240218`

### Exemplo Prático: Versão **2.5.3**  
- **2**: Mudança maior, como uma reformulação de arquitetura ou inclusão de funcionalidades incompatíveis com versões anteriores.  
- **5**: Novas funcionalidades que mantêm a compatibilidade com as versões anteriores da série 2.x.  
- **3**: Correções ou ajustes que não adicionam nem removem funcionalidades.  

Essa prática ajuda os desenvolvedores e usuários a entender rapidamente o impacto da atualização.

### EXTRA: TODO
Um **arquivo TODO** é um documento de texto simples utilizado por desenvolvedores e gerentes de projetos para registrar tarefas pendentes, ideias ou bugs a serem resolvidos em um projeto. A simplicidade e a flexibilidade desses arquivos permitem que sejam facilmente integrados ao fluxo de trabalho, sem a necessidade de ferramentas complexas de gerenciamento de tarefas.

**Principais características de um arquivo TODO:**
- **Formato Simples:** Por serem arquivos de texto puro, podem ser criados e editados em qualquer editor de texto, facilitando sua manipulação e versionamento.
- **Estrutura Flexível:** Não há uma estrutura rígida, permitindo que cada equipe ou indivíduo adapte o arquivo às suas necessidades específicas.
- **Integração com Controle de Versão:** Podem ser facilmente incluídos em sistemas de controle de versão, como o Git, mantendo o histórico de alterações das tarefas junto com o código-fonte.

**Formatos Comuns de Arquivos TODO:**
- **TODO.txt:** Segue uma convenção onde cada linha representa uma tarefa, podendo incluir prioridades, datas de criação e conclusão, contextos e projetos associados. Por exemplo:
```md
(A) 2025-02-18 Revisar documentação do projeto +Documentação @Escritório
(B) 2025-02-19 Implementar função de login +Autenticação @Desenvolvimento
```
Nesse formato, `(A)` indica a prioridade, seguida da data de criação, descrição da tarefa, projeto (`+Projeto`) e contexto (`@Contexto`).

- **TODO.md:** Utiliza a sintaxe Markdown para organizar as tarefas, permitindo a criação de listas de tarefas com checkboxes, seções e subtarefas. Exemplo:
```md
# Projeto X

## Funcionalidades

- [ ] Implementar cadastro de usuários
  - [ ] Criar formulário de cadastro
  - [ ] Validar dados de entrada
- [ ] Desenvolver API de autenticação

## Bugs

- [ ] Corrigir erro no módulo de pagamento
```

Aqui, os itens `- [ ]` representam tarefas a serem feitas, enquanto `- [x]` indicaria tarefas concluídas.

**Vantagens do Uso de Arquivos TODO:**
- **Facilidade de Uso:** Não requerem ferramentas ou softwares específicos; um simples editor de texto é suficiente.
- **Portabilidade:** Por serem arquivos de texto, podem ser facilmente compartilhados e acessados em diferentes sistemas e plataformas.
- **Histórico de Alterações:** Quando versionados junto com o código, permitem rastrear o progresso e as mudanças nas tarefas ao longo do tempo.

**Considerações Adicionais:**
- **Personalização:** Cada equipe ou desenvolvedor pode adaptar o formato e a estrutura do arquivo TODO conforme suas necessidades e preferências.
- **Limitações:** Para projetos maiores ou equipes numerosas, pode ser necessário utilizar ferramentas mais robustas de gerenciamento de tarefas para garantir uma coordenação eficiente.

Em resumo, o arquivo TODO é uma ferramenta simples e eficaz para o acompanhamento de tarefas e organização de projetos, especialmente útil em ambientes de desenvolvimento ágeis e colaborativos.

## GERENCIADORES DE PROJETO
O gerenciamento de projetos é uma disciplina que existe há milênios, com registros de práticas organizadas para alcançar objetivos comuns desde as civilizações antigas. No entanto, como uma prática formalizada, o gerenciamento de projetos moderno começou a se consolidar no final do século XIX e início do século XX, especialmente com a Revolução Industrial, que trouxe a necessidade de coordenar projetos de grande escala, como a construção de ferrovias e infraestrutura urbana.<br/>
Um **gerenciador de projetos** é uma ferramenta ou software projetado para auxiliar na organização, planejamento, execução, monitoramento e controle de projetos. Essas ferramentas permitem que equipes e gestores acompanhem o progresso das atividades, aloque recursos de forma eficiente, estabeleçam cronogramas, identifiquem riscos e garantam que os objetivos do projeto sejam alcançados dentro dos parâmetros estabelecidos.

**Principais funcionalidades de um gerenciador de projetos:**
- **Planejamento e agendamento:** Criação de cronogramas detalhados, definição de marcos e prazos para as entregas.
- **Atribuição de tarefas:** Distribuição de responsabilidades entre os membros da equipe, garantindo clareza nas funções e prazos.
- **Monitoramento de progresso:** Acompanhamento em tempo real do status das tarefas, identificando possíveis atrasos ou obstáculos.
- **Gestão de recursos:** Alocação eficiente de recursos humanos, financeiros e materiais, evitando desperdícios e sobrecargas.
- **Comunicação e colaboração:** Facilitação da interação entre os membros da equipe, promovendo uma comunicação clara e contínua.
- **Análise e relatórios:** Geração de relatórios detalhados sobre o desempenho do projeto, auxiliando na tomada de decisões informadas.

A adoção de um gerenciador de projetos eficaz contribui para a melhoria da eficiência operacional, redução de custos, aumento da satisfação dos stakeholders e maior probabilidade de sucesso na entrega dos projetos.<br/>
O **Trac**, **Kanboard**, **Trello** e **Taiga.io** são algumas ferramentas de gerenciamento de projetos que auxiliam equipes na organização e acompanhamento de tarefas. Abaixo, apresento uma visão geral de cada uma delas:

**[Trac](https://trac.edgewall.org/):**<br/>
O Trac é uma plataforma de gerenciamento de projetos baseada na web, projetada para equipes de desenvolvimento de software. Ele oferece recursos como rastreamento de problemas, gerenciamento de código-fonte e integração com sistemas de controle de versão. Sua interface simples e recursos focados no desenvolvimento tornam-no adequado para equipes que utilizam metodologias ágeis.

**[Kanboard](https://kanboard.org/):**<br/>
O Kanboard é uma ferramenta de gerenciamento de projetos de código aberto que utiliza o método Kanban. Ele permite a visualização do fluxo de trabalho por meio de quadros Kanban, facilitando o acompanhamento de tarefas e a identificação de gargalos. Além disso, oferece recursos como automação de tarefas, integração com outras ferramentas e suporte a plugins.

**[Trello](https://trello.com/):**<br/>
O Trello é uma plataforma de gerenciamento de projetos baseada na web que utiliza quadros Kanban para organizar tarefas. Sua interface intuitiva permite a criação de listas e cartões, facilitando a colaboração entre equipes. O Trello oferece integrações com diversas ferramentas e possui uma versão gratuita com recursos limitados, além de planos pagos com funcionalidades adicionais.

**[Taiga](https://taiga.io/):**<br/>
O Taiga.io é uma plataforma de gerenciamento de projetos de código aberto focada em metodologias ágeis, como Scrum e Kanban. Ele oferece recursos como planejamento de sprints, rastreamento de problemas, integração com sistemas de controle de versão e uma interface limpa e intuitiva. O Taiga.io está disponível tanto como serviço hospedado quanto para instalação local.

**Comparação entre Taiga.io e Trello:**
- **Personalização e Flexibilidade:** O Taiga.io oferece mais opções de personalização, permitindo que equipes adaptem a plataforma às suas necessidades específicas.
- **Gerenciamento Ágil de Projetos:** O Taiga.io é projetado especificamente para gerenciamento ágil, oferecendo ferramentas dedicadas para processos como Scrum e Kanban.
- **Modelo de Preços:** O Trello segue um modelo freemium, oferecendo uma versão gratuita com recursos limitados e planos pagos para funcionalidades adicionais. O Taiga.io, sendo de código aberto, pode ser auto-hospedado gratuitamente, com opções pagas para serviços hospedados.
- **Integrações:** O Trello possui uma ampla gama de integrações com outras ferramentas, facilitando a colaboração e a automação de processos. O Taiga.io também oferece integrações, mas pode ter uma seleção mais limitada em comparação.

Em resumo, a escolha entre essas ferramentas depende das necessidades específicas da equipe ou organização, considerando fatores como a metodologia de trabalho, requisitos de personalização, orçamento e preferências de integração.

## AGILE METHODOLOGIES
As metodologias ágeis surgiram como uma resposta às limitações dos métodos tradicionais de gerenciamento de projetos, especialmente no desenvolvimento de software. Em 2001, um grupo de desenvolvedores se reuniu para discutir maneiras de aprimorar o desenvolvimento de software, resultando na criação do Manifesto Ágil, que estabeleceu os princípios fundamentais das metodologias ágeis.<br/>
Portanto, o gerenciamento de projetos como disciplina formal precede as metodologias ágeis. As metodologias ágeis foram desenvolvidas posteriormente como uma evolução ou adaptação das práticas tradicionais de gerenciamento de projetos, visando maior flexibilidade e eficiência, especialmente em ambientes de desenvolvimento de software.<br/>
As **metodologias ágeis** são abordagens de gerenciamento de projetos que enfatizam a entrega incremental e iterativa de produtos, promovendo a colaboração contínua entre equipes multifuncionais e clientes. Essas metodologias visam aumentar a flexibilidade, a eficiência e a capacidade de adaptação às mudanças durante o ciclo de vida do projeto.

**Princípios fundamentais das metodologias ágeis:**
- **Entrega contínua de valor:** Foco na entrega frequente de incrementos funcionais do produto, permitindo que os stakeholders avaliem e forneçam feedback regularmente.
- **Adaptação às mudanças:** Capacidade de ajustar planos e prioridades conforme novas informações ou mudanças nas necessidades do cliente surgem.
- **Colaboração entre equipes e clientes:** Promoção de uma comunicação aberta e constante entre todos os envolvidos no projeto, garantindo alinhamento e compreensão mútuos.
- **Simplicidade e eficiência:** Busca por soluções simples e eficazes, evitando complexidade desnecessária e desperdício de recursos.

**Principais metodologias ágeis:**
- **Scrum:** Foca na organização do trabalho em ciclos chamados "sprints", com papéis bem definidos como Product Owner, Scrum Master e a equipe de desenvolvimento.
- **Kanban:** Utiliza um sistema visual de cartões para gerenciar o fluxo de trabalho, permitindo que as equipes visualizem o progresso e identifiquem gargalos.
- **Extreme Programming (XP):** Enfatiza práticas técnicas como programação em par, desenvolvimento orientado a testes e integração contínua para melhorar a qualidade do código.
- **Lean:** Baseado nos princípios de manufatura enxuta, busca eliminar desperdícios e otimizar processos para entregar valor ao cliente de forma mais eficiente.

A adoção de metodologias ágeis tem se expandido além do desenvolvimento de software, sendo aplicadas em diversas áreas como marketing, recursos humanos e gestão de projetos em geral, devido à sua eficácia em ambientes dinâmicos e de rápida mudança.

## SCRIPTS TEMPLATES E VARIÁVEIS DE AMBIENTE
Os scripts automatizados e templates padrões podem aumentar a produtividade em um desenvolvimento para o outro. Conforme os projetos vão sendo evoluídos, é possível perceber padrões em tarefas repetitivas e documentos com o mesmo formato. Os scripts e templates são ferramentas de execução e criação de documentos modelos pequenos com o objetivo de eliminar a criação de algo repetitivo sempre do zero, tanto na configuração e criação de ambientes de desenvolvimento, quanto na execução de tarefas rotineiras e documentação obrigatória, mantendo assim uma consistência nos projetos e poupando tempo de configuração.<br/>
Além de templates de documentos e scripts, existem as variáveis de ambientes, que também são valores que usamos tanto no ambiente quanto no código fonte independente do projeto. Consistem em pares de chave-valor que armazenam informações de configuração acessíveis por processos em execução em um sistema operacional. Elas pares de chave-valor que armazenam informações de configuração acessíveis por processos em execução em um sistema operacional. Elas permitem que aplicações ajustem seu comportamento sem a necessidade de alterar o código-fonte, facilitando a adaptação a diferentes ambientes, como desenvolvimento, teste e produção.

**Principais usos das variáveis de ambiente:**
- **Configuração de sistemas:** Definir parâmetros como diretórios de instalação, caminhos de execução e locais de arquivos temporários.
- **Armazenamento de credenciais:** Guardar informações sensíveis, como senhas de banco de dados e chaves de API, mantendo-as fora do código-fonte para aumentar a segurança.
- **Controle de comportamento de aplicações:** Ativar ou desativar funcionalidades específicas, como modos de depuração ou níveis de registro, conforme o ambiente em que a aplicação está sendo executada.

**Definição de variáveis de ambiente:**<br/>
A forma de definir variáveis de ambiente varia conforme o sistema operacional:

- **Unix/Linux/macOS:** Utilize o comando `export` no terminal ou defina as variáveis nos arquivos de inicialização do shell, como `.bashrc` ou `.bash_profile`.
- **Windows:** Use o comando `set` no Prompt de Comando ou acesse as configurações avançadas do sistema para defini-las de forma permanente.

**Boas práticas:**
- **Segurança:** Mantenha informações sensíveis fora do código-fonte e controle o acesso às variáveis de ambiente, especialmente em ambientes de produção.
- **Consistência:** Utilize nomes claros e padronizados para as variáveis, facilitando a manutenção e evitando conflitos.
- **Documentação:** Registre as variáveis utilizadas e seus propósitos, auxiliando na compreensão e configuração do ambiente por outros desenvolvedores.

Exemplo do Comp:
```bash
#!/bin/bash

# parameters
BASEDIR="${pwd}"
DATA="$BASEDIR/data"
OUTPUT="$BASEDIR/output"
PANDOC_OPTS="${PANDOC_OPTS:=--template=default.html5}"

echo "cleaning up outdated versions..."
rm -rf $OUTPUT || exit 1

echo "ensuring the existence of the necessary folders..."
mkdir -p $OUTPUT || exit 1

echo "copying the folder structure..."
rsync -qav $DATA/ $OUTPUT/ || exit 1

echo "converting all MD files to HTML..."
find $OUTPUT -name '*md' -exec pandoc $PANDOC_OPTS -o {}.html {} \; || exit 1

echo "correcting the name of the generated files..."
find $OUTPUT -name '*.html' -exec rename 's/\.md.html$/.html' {} \; || exit 1

echo "done"
```

## GIT
É um sistema de versionamento de código, que armazena os registros de versão como **_snapshots_** do estado do conteúdo além da referência – em formato de *hash* – para localizar este snapshoot. A maioria das operações realizadas pelo Git são locais, e por isso boa parte das operações são extremamente rápidas devido a facilidade de acessar os arquivos no computador. Apesar de funcionar localmente, a principal vantagem do Git é poder se conectar com serviços de armazenamento de repositório remoto, como o **GitHub** ou **GitLab** por exemplo.

### INSTALL
Para instalar o [Git no Linux](https://git-scm.com/downloads/linux), basta utilizar o terminal e instalar via `apt`:
```shell
# instalando o git
sudo apt install git -y
# instalando e atualizando dependências necessárias
sudo apt update && sudo apt upgrade -y
# verificando a instalação
git -v # || git --version
# git version 2.43.0
```

### SET
Com o Git instalado será necessário realizar algumas configurações de ambiente para que funcione corretamente. O comando **`git config`** é usado para configurar variáveis de ambiente do Git, como:
- user name
- email
- standard IDE
- tokens
- merge tools
- alias
- etc...

Essas configurações podem ser salvas em diferentes níveis chamados de *escopos*.
| escopo     | comando                | prioridade | hierarquia | escopo de efeito                                                                             | escopo de alterações                                        |
| ---------- | ---------------------- | ---------- | ---------- | -------------------------------------------------------------------------------------------- | ----------------------------------------------------------- |
| **System** | `git config --system`  | BAIXA      |  `root`    | `/etc/gitconfig` – Linux / macOS – ou `C:\Program Files\Git\mingw64\etc\gitconfig` – Windows | **Todos os usuários de todos os repositórios no SO atual.** |
| **Global** | `git config --global`  | MÉDIA      |  `user`    | `~/.gitconfig` – Linux / macOS – ou `%USERPROFILE%\.gitconfig` – Windows                     | **Todos os repositórios do usuário atual.**                 |
| **Local**  | `git config [--local]` | ALTA       |  `user`    | `.git/config` dentro do repositório atual                                                    | **Somente ao repositório atual.**                           |

> O Git **usa a configuração mais específica disponível**, ou seja, se um valor estiver definido tanto em `--global` quanto em `--local`, **o `--local` vence**.

O uso do escopo de configurações é útil para criar ambientes diferentes para cada projeto, proporcionando maior controle e organização ao desenvolvedor. Casos de uso de escopos de configuração incluem por exemplo quando o dev utiliza um e-mail particular para projetos pessoais e um corporativo para projetos empresariais, ou quando um determinado projeto usa uma codificação, editor ou ferramenta diferente, ou em abientes corporativos quando o administrador precisa definir padrões para todos os usuários da máquina, entre vários outros possíveis cenários.

#### `--system` – configurações padrões de ambiente
Usado geralmente por administradores de servbidor para configurar ferramentas de edição e formatos de saída padrão, também como regras organizacionais para todos os usuários do sistema.
```sh
# configurando o ambiente padrão
sudo git config --system core.editor nano # `core.editor`: define o ambiente de desenvolvimento padrão para acompanhar as modificações
# visualizando as configurações definidas
sudo git config --system --list
```

#### `--global`** – dados do usuário
Usado para armazenar configurações para **todos os projetos Git**, como:
```sh
# configurando usuário, credenciais e ambiente
git config --global core.editor "codium --wait"                      # define o editor padrão do usuário em questão setado em `global`
git config --global user.name "raphaelkaique1"                       # por questões de padronização e evitar conflitos, usa-se as informações de login cadastradas no serviço de hospedagem remota
git config --global user.email "raphaelkaiquediassantos1@gmail.com"  # ou seja, o mesmo user_name e e-mail da conta existente na plataforma de armazenamento de repostórios online
git config --global credential.helper cache-store                    # credential.helper: armazena e gerencia credenciais
#
# `cache`: armazena memória em cache por um período padrão de 15 minutos \
# para configurar a duração do cache usa-se a flag `--timeout` e atribuir o tempo desejado em segundos \
# exemplo: `cache --timeout=3600`
#
# `cache-store`: armazena credenciais permanentemente em um arquivo de texto simples no disco
# por se tratar de um arquivo de texto, as informações da credencial são visíveis em texto simples \
# portanto, deve-se ter cuidado ao usar esse método em sistemas compartilhados ou em ambientes menos seguros
```

#### `--local` – específico por projeto
Usado para configurações específicas **entre diferentes projetos**, por exemplo:
```bash
git config --local user.name "dev_team"
git config --local user.email "dev_team@business.com"
```

Para visualizar as configurações, usa-se a flag `--list`:
```sh
git config --list               # exibe todas as configurações
git config --local --list       # exibe apenas as configurações locais
git config --global --list      # exibe apenas as configurações globais
sudo git config --system --list # exibe todas as configurações do sistema
```
> Também é possível alterar as opções diretamente no arquivo de configurações do Git `.gitconfig`, mas a maneira correta e segura de realizar modificações de configurações de ambiente é usar o `git config`.

### REPOSITORY
Um repositório nada mais é do que um projeto versionado pelo Git, podendo ser local ou remoto.

#### local
Como o Git é um software que opera localmente, todo repositório – seja local ou remoto – deve ser iniciado na máquina do usuário, e isso é feito navegando até o diretório do projeto e iniciando o Git `git init`:
```sh
# navegando até o diretório que contém os arquivos do projeto
cd ~/project_dir
git init  # inicia o serviço de versionamento do git \
# que a partir do momento da sua inicilização conhece todos os arquivos contidos no diretório indicado \
# permitindo ao usuário controlar o que o Git deve monitorar, armazenar ou remover das versões commitadas
# e também cria um repositório onde irá armazenar trabalhar e armazenar suas configurações, o `./.git`
```
Agora o repositório do projeto está pronto para trabalhar com o Git, permitindo que os arquivos contidos nele sejam versionados localmente e remotamente.

#### remote
Para se trabalhar com repositórios remotos é necessário que o desenvolvedor possua uma conta na plataforma de hospedagem do código, como por exemplo o **GitHub**, que é uma das mais populares plataformas online utilizadas para armazenar histórico de versionamentos de código Git.<br/>
Para realizar as configurações de repositório via CLI, o usuário deve possuir as credenciais associadas à conta na máquina local, e a forma de fazer isso varia de serviço para serviço.<br/>
O GitHub permite a criação, gerenciamento e clonagem de repositórios tanto pela GUI do seu site quanto por CLI.

**creating a new remote repo**<br/>
Cria um novo repositório remoto na conta indicada, onde é ligado ao repositório local para que este tenha suas modificações e históricos armazenados no servidor.
```sh
sudo apt install curl -y                                               # 0. ferramenta para envio de informações ao servidor via HTTP
# 1. envia ao servidor do GitHub a credencial do usuário e os dados para criação do repositório
# token: [https://github.com/settings/tokens/new](https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#como-criar-um-personal-access-token-classic)
curl -u "user_name":"personal_token-ghp_1234567890abcdef1234567890abcdef123456" https://api.github.com/user/repos -d '{"name":"repository_name", "description":"repo description", "private":false}'
cd ~/project_name                                                      # 2. navegar até o diretório do projeto
echo > .gitkeep                                                        # 3. caso ainda não existam arquivos, pode-se usar o `.gitkeep` para forçar o Git a versionar e manter a estrutura da pasta
# o arquivo `.gitkeep` é uma convenção não oficial, que usa o arquivo vazio para forçar o Git a versionar uma pasta vazia
# este artifício é usado em projetos onde a estrutura de diretórios é importante, mesmo antes de conter arquivos reais
# pois, por padrão, o Git não versiona diretórios vazios, ou seja, se houver uma pasta vazia no projeto ela será ignorada pelo Git
# não sendo monitorada ou visualizada pelo `git status` e nem enviada ao repositório remoto
git init                                                               # 4. iniciar o Git no diretório
# extra - caso necessário: touch .gitignore
git add .                                                              # 5. adiciona todos os arquivos do diretório à staging area
git commit -m "feat: create repo"                                      # 6. ponto de salvamento onde o snapshoot do novo estado atual dos arquivos é gerado
git branch -M main                                                     # 7. cria a banch principal
git remote add origin https://github.com/user_name/repository_name.git # 8. conecta o repositório local ao remoto
git push -u origin main                                                # 9. envia os arquivos do repositório para o diretório criado
```

**cloning existing remote repo**<br/>
Realiza uma cópia completa de um repositório remoto existente, bem como todos os arquivos e todo o histórico de versões de cada um.
```sh
# methods: HTTP || SSH
git clone https://github.com/user_name/repository_name.git || git clone git@github.com:user_name/repo_name.git
# Username: user_name
# Password: personal_access_token
# git config --global credential.helper cache-store
```

### STATES
Existem diferentes estados que o Git pode classificar os arquivos dentro de um repositório.

![Image](https://git-scm.com/book/pt-br/v2/images/areas.png)

- **`commited`**: os arquivos estão sendo rastreados pelo Git, e os dados estão armazenados de forma segura no banco de dados local.
- **`modified`**: o arquivo está monitorado pelo Git, possui um histórico de versões, e seu estado atual indica que sofreu modificações ainda não salvas no banco de dados local.
- **`staged`**: o arquivo modificado agora tem uma versão salva das alterações que está pronta para o *`commit`*, ou seja, o estado atual das modificações foi adicionado à *área de preparação* **stagin area**, isto indica que o Git reconhece as alterações feitas e elas farão parte do próximo *`commit`*.

Básicamente, o Git usa estas 3 areas para conter cada estado de um arquivo, sendo o `working directory` o espaço no sisitema de arquivos onde os arquivos versionados e não versionados existem, sendo o espaço para o trabalho direto com os arquivos, criando, editando, deletando e movendo-os. Cada mudança em um arquivo é detectada pelo Git, e o comando `git status` exibe os estados dos arquivos como modificados ou não rastreados – no caso de novos arquivos criados em um diretório Git.<br/>
Já a `stagin area` é a área de preparação – também chamada de *índice* – onde os arquivos e suas alterações entram antes de serem confirmados no histórico com `git commit`. É um espaço intermediário onde o Git armazena quais mudanças serão inclusas no próximo `commit`. Ao executar o comando `git add .` os arquivos indicados são considerados *"preparados para commit`*, e um detalhe interessante é que o Git permite realizar commits parciais, mesmo com múltiplas mudanças no projeto.<br/>
Por fim, o `git repository` nada mais é do que o banco de dados permanente que contém todas as alterações inclusas nos commits. Este banco de dados interno do Git `.git` armazena commits, históricos de branches, árvores de arquivos (blobs e trees), tags, entre outras coisas. Cada `git commit -m "message"` realizado grava os arquivos da stagin area nesse respositório, fazendo com que as alterações façam parte do histórico do projeto.<br/>
Após o commit, os arquivos voltam ao estado *"clean"*, até que sejam modificados novamente.

```plaintext
+----------------------+    git add    +-------------------+    git commit    +-------------------+
|  Working Directory   | ------------> |   Staging Area    | ---------------> |  Git Repository   |
| (Diretório de trab.) |               | (Área de preparo) |                  | (Histórico local) |
+----------------------+               +-------------------+                  +-------------------+
```

Uma forma mais intuitiva de se entender como o Git rastreia e grava as alterações é como mostra o fluxo a seguir:

![Image](https://raw.githubusercontent.com/shyoutarou/Git_GitHUB/master/.github/treestados.png)

- **untracked**: são os novos arquivos e alterações em andamento que ainda não foram para a **stagin area**, ou seja, ainda não foram adicionados no `git add .` para que o Git entenda o conteúdo e monitore as alterações.
- **unmodified**: aqui, os arquivos já são conhecidos pelo Git e contem o estado que o Git conhece, ou seja, não sofreram nenhuma modificação e estão *up to date* de acordo com o último **commit** ao qual entraram. Cada commit é um ponto de salvamento de estado e histórico de modificações sofridas no arquivo, além de conter as alterações – que podem ser comparadas com `git diff` – também possuem um *hash* que identifica e diferencia um commit de outro, assim mantendo versões diferentes de estado e um histórico de alterações dos documentos, além de uma mensagem descritiva em cada commit onde o desenvolvedor informa o que o fez ou o motivo que o levou a fazer as tais alterações.
- **modified**: neste ponto os arquivos já são rastreados e existem modificações neles que são percebidas pelo Git, mas que ainda estão em andamento e não estão salvas, por isso não estão na **stagin area**, são os arquivos modificados que _**ainda irão para a stagin area** após terem suas modificações finalizadas e adicionadas pelo `git add .` para que o Git as reconheça e veja quais foram as alterações nos estados atual e anterior do arquivo_.
- **staged**: aqui estão os arquivos monitorados que possuem suas alterações adicionadas à **staging area**, que serão inclusos ao próximo commit e em seguida assumirão novamente o estado de *unmodified*.

### ANALYSIS

### WORKFLOW
- **Branch**: Uma ramificação. Útil para desenvolver novas funcionalidades sem afetar o principal.
- **Merge**: Junta mudanças de uma branch em outra.
- **Pull**: Atualiza seu repositório local com mudanças do remoto.
- **Push**: Envia suas mudanças locais para o repositório remoto.

**Boas Práticas**
- Commits frequentes e com mensagens claras.
- Nomear branches de forma descritiva: `feature/login`, `bugfix/erro-404`.
- Fazer pull antes do push para evitar conflitos.
- Nunca commitar arquivos sensíveis (use .gitignore).
- Use pull requests para revisão de código em equipe.

### `.git`
É a **base de tudo no Git**.
## 🧱 Comando: `git init`
### 📌 O que ele faz?
O comando:
```bash
git init
```
**Inicializa um novo repositório Git vazio** dentro da pasta atual. Ou seja, transforma um diretório comum em um **repositório Git**, permitindo que você comece a **versionar arquivos** nele.

## 🎯 Resultado do `git init`
* Cria uma **pasta oculta** chamada **`.git`** no diretório atual.
* Essa pasta contém **todos os dados internos do Git** necessários para versionamento:
  * Histórico de commits
  * Branches
  * Configurações locais
  * Objetos do Git (blobs, trees, commits)
  * Referências (refs)
  * Área de staging (index)
  * Logs

## 📁 O que é o diretório `.git`?
### 🧠 Resumo:
É o **"coração" do repositório Git**. Ele guarda **todo o histórico, estrutura e metadados** do projeto.
Você raramente precisa mexer diretamente dentro dele, mas entender o que há lá dentro ajuda muito.

### 📦 Estrutura típica do `.git`:
```plaintext
.git/
├── HEAD               <- aponta para o branch atual (ex: refs/heads/main)
├── config             <- configurações locais do repositório
├── description        <- usado em servidores Git, pode ser ignorado localmente
├── hooks/             <- scripts automáticos que podem ser executados em eventos do Git
├── info/              <- ignora arquivos manualmente (ex: exclude)
├── objects/           <- onde ficam todos os commits, arquivos e árvores (com hash)
├── refs/              <- onde ficam ponteiros para branches e tags
├── logs/              <- histórico detalhado de movimentos dos ponteiros
└── index              <- área de staging (pré-commit)
```

## 🧪 Exemplo prático:
```bash
mkdir meu-projeto
cd meu-projeto
git init
```

Agora, se você rodar:
```bash
ls -a
```

Você verá:
```plaintext
.  ..  .git
```

E se fizer:
```bash
git status
```
O Git já começa a monitorar o projeto.

## 🧠 Importância do `.git`
* Sem a pasta `.git`, **não há repositório Git**.
* Se você deletá-la: o diretório **deixa de ser versionado**, e você **perde todo o histórico**.
* Ao clonar um repositório (`git clone`), a pasta `.git` também vem junto.


## 🧯 Dica de segurança
Nunca mexa manualmente dentro de `.git`, **a menos que saiba exatamente o que está fazendo** — alterações erradas podem corromper o repositório.

## resumo
| Ação       | Resultado                                                 |
| ---------- | --------------------------------------------------------- |
| `git init` | Inicializa um novo repositório Git                        |
| `.git/`    | Pasta oculta que contém toda a estrutura de versionamento |

### .gitignore
### .gitkeep
### git stagin area
### git branches

### [git flow](https://danielkummer.github.io/git-flow-cheatsheet/index.pt_BR.html)
Como visto em **RELEASES**, existem diferenças significativas entre as versões do código que é disponibilizado no ambiente de produção. Cada tipo de release contém uma linha de trabalho que trata diferentes áreas do software. O Git é muito complexo e não existe uma única forma de usá-lo, e afim de simplificar e padronizar a forma de trabalho existe o `gitflow`, um plugin de produtividade para o Git que trabalha com branches bem definidas e estabelece o fluxo de desenvolvimento para o envio de código de um branch para a outra.

![Image](https://github.com/user-attachments/assets/300d2ced-f295-4d66-9325-4d464150fde1)

- **master || main**<br/>
Esta é a branch principal, onde reside o código que já está pronto para lançamento.
- **hotfix**<br/>
São branches destinadas à correções rápidas e alternativas para resolução de bugs pequenos que precisam ser enviados logo para produção.
- **release**<br/>
É a branche onde cada alteração significativa no código em `develop` é enviada para produção como uma nova versão do software.
- **develop**<br/>
É a branch de desenvolvimento, onde ocorre a integração das funcionalidades desenvolvidas. Essas funcionalidades são criadas nos branches do tipo **`features`**.
- **features**<br/>
Branches designidas para a criação das funcionalidades onde podem ser realizados teste unitários e em seguida enviadas para serem testadas na branch `develop`.

Para instalar e usar o git flow deve-se seguir os seguintes passos:<br/>
```git flow <branch_name> <process_status: start || finish> <workflow_name>```

```sh
sudo apt install -y git-flow
git flow init              # no diretório do projeto inicie o git flow
git flow feature start doc # exemplo: este comando da `start` em uma `feature` com o nome `doc`, que neste caso serve para trabalhar a documentação do projeto
git branch                 # podemos ver a branch criada
  develop
* feature/doc
  main
# após realizar as alterações deve-se atualizar a branch
git commit -a -m "Commit changes"
gt flow feature finish # este comando indica que as alterações necessárias foram encerradas
# então o git-flow realiza o merge das alterações dessa branch no branch `develop` e então a branch `feature` é apagada localmente
#
# para lançar uma nova versão do programa, basta criar uma `release` do software e mesclá-la com a branch `main`
git flow release start 0.1
git branch # podemos ver a branch criada
  main
  develop
* release/0.1
# após realizar as alterações deve-se atualizar a branch
git commit -a -m "Commit changes"
gt flow release finish
```

### git LFS

### submodules
Um submodulo do git nada mais é do que um repositório git dentro de outro, com o detalhe de que a versão inclusa do repositório permanece *"travada"*. Isso constitui um sistema de gestão de dependências bem simples e integrado usando o próprio git. É uma forma de distribuição do código integrado com as bibliotecas e demais requisitos que são necessários o embarque automáticamente no repositório git principal.<br/>
Mas é preciso muita atenção, pois o fluxo de trabalho pode acabar se tornando complexo se não for bem compreendido este conceito, pois os submodulos podem ser recursivos, ou seja, um repositório pode conter outros submodulos e ainda cada um deles conterem mais submodulos.<br/>
Vejamos como adicionar um submodulo:<br/>
`git submodule add <url_repo> <dir_name>`
```bash
# deve-se navegar até o repositório do projeto principal e então adicionar o repositório da dependência do projeto
git submodule add https://github.com/user/repo dir_name
cat .gitmodules # isso exibe o caminho para a referência do diretório no submodulo
[submodule "dir_name"]
  path = dir_name
  url = https://github.com/user/repo
# agora é possível incluir este módulo ao repositório remoto
git commit -a -m "Commit changes" # assim, sempre que o projeto for clonado essa referência será clonada também
```
Este é o caso do `node_nodules` por exemplo. O arquivo do submodulo dentro do nosso diretório é apenas uma entrada para o repositório original do submodulo. Ou seja, um submodulo é uma referência para o git de qual versão será usada no projeto e onde buscar os arquivos do diretório submodulo indicado.<br/>
Esta é uma boa prática para a distribuição de dependências do projeto quando uma versão específica da depedência é necessária para software, pode ser inclusa no projeto sem necessariamente incluir os arquivos no diretório – o que tornaria o projeto pesado e com um alto potencial de *quebra* caso um submodulo referencie outro módulo que foi deprecado ou atualizado enquanto a versão atual do projeto aponta para uma versão inexistente – bastando apenas referenciá-los.

### hooks - post update && pre commit

```shell
# shorthand:
git checkout -b <branch_name> # get out of main branch and goes to the new branch
git checkout <branch_name> # goes to the branch especified

# repository status
cd ~/<file_directory>
git status
git remote add <branch_name> <original_repository_url> # keeps the local repository up to date with changes from the original remote repository

# add file working tree
## git add <file_name>.<type_file>

# commit file in branch
## git commit -m "Commit changes"

# shorthand:
git commit -a -m "Commit changes"

# push file in branch
git push -u origin <branch_name>

# update branch changes
git pull <remote_branch> <actual_local_branch>
git pull origin <branch_name> # git pull = git fetch (download the remote/main branch) {+ git diff = shows old and new changes} + git merge (includes downloaded changes in local files)

# branches
git branch --help
git branch -v
git branch -M main
git branch -d <branch_name> # deletes especified branch

# commit history
git log # git shortlog
# clear
git show <value_hash>

# undo
git reset <value_hash>
git checkout <file_name>

.gitignore
#/dir
#/dir/*.file
#.file
```
<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/progit.pdf">progit</a>

## GITHUB


<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/continuous_integration_e_continuous_deployment_ci_cd.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/ambientes_virtuais_venv_virtualenv.md">next</a>