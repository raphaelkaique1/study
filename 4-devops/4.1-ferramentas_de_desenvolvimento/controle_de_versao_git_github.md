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
Cada usuário tem uma cópia completa do repositório.

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
É um sistema de controle e versionamento de código distribuído, que armazena os registros de versão como **_snapshots_** do estado do conteúdo além da referência – em formato de *hash* – para localizar este snapshoot. A maioria das operações realizadas pelo Git são locais, e por isso boa parte das operações são extremamente rápidas devido a facilidade de acessar os arquivos no computador. Apesar de funcionar localmente, a principal vantagem do Git é poder se conectar com serviços de armazenamento de repositório remoto, como o **GitHub** ou **GitLab** por exemplo.<br/>
Diz-se se *distribuído* pois, diferente de outros sistemas de versionamento como o Mercurial ou o Subverse por exemplo, o Git não centraliza o armazenamento e acesso ao código, ele permite que cada desenvolvedor tenha sua própria cópia completa dos arquivos do projeto localmente, assim, cada clone tem todo o repositório – com todo seu histórico de commits, branches e versões.<br/>
Além disso, o Git se destaca entre outros sistemas de versões justamente pelo seu modo de _armazenamento de estado_, o snapshot, que é um grande diferencial, pois nos outros sistemas, o que é armazenado não são estados do projeto, apenas as diferenças entre os arquivos alterados, então digamos que um projeto que utiliza Mercurial ou Subverse está em seu estágio inicial, então alterações são feitas nos arquivos A e C, então numa nova versão alterações novamente são feitas em C, na versão 4 apenas em A e B e na versão final existem mudanças apenas em B e C. É de se esperar que ele registre as diferenças salvas nos arquivos entre as versões existentes, o problema é que, caso seja necessário retornar à versão 3 po exemplo, o que é devolvido pelo sistema de versionamento não é o estado completo do projeto, apenas a diferença das alterações realizadas em determinados aquivos naquele checkpoint – ou seja, neste caso apenas as mudanças feitas no arquivo C, os demais arquivos ou seriam exibidas as diferenças apenas ou ainda estariam de acordo com a versão 5 – o que pode não ser muito útil para recuperar versões funcionais do projeto. Já o Git com seu sistema de snapshoots armazena o estado completo de todos os arquivos do ponto requerido, o que é muito útil para o controle de releases por exemplo.

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
sudo git config --system core.editor nano # `core.editor`: define editor de texto para mensagens e configurações do Git
# visualizando as configurações definidas
sudo git config --system --list
```

#### `--global` – dados do usuário
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

#### `.git`
O diretório `.git` é onde o Git armazena todos os metadados e o banco de dados de objetos do projeto. É a base de tudo no Git, sendo o que é copiado quando um repositório é clonado.<br/>
O comando `git init` **inicializa um novo repositório Git vazio** dentro da pasta atual, ou seja, transforma um diretório comum em um **repositório Git**, permitindo realizar o **versionamento dos arquivos** contidos nele.<br/>
O que permite que um diretório comum se torne um repositório Git são os metadados que o Git possui dentro de uma **pasta oculta** chamada **`.git`** no diretório atual. Essa pasta contém **todos os dados internos do Git** necessários para versionamento, como o histórico de commits, as branches, configurações locais, objetos do Git – `blobs`, `trees`, `commits`, referências – `refs`, staging area – `index`, logs, entre outras coisas necessárias para o funcionamento correto do Git.<br/>
Ou seja, este diretório é o **"coração" do repositório Git**, que guarda **todo o histórico, estrutura e metadados** do projeto. Raramente é necessário realizar alteraçoes diretamente nele, mas entender o que ele contem é essencial.<br/>
Sem essa pasta `.git` **não há repositório Git**, quando deletada o diretório deixa de ser versionado, dessa maneira perdendo todo o histórico. Por isso, nunca se deve alterar manualmente nenhum arquivo deste diretório, , **a menos que se saiba exatamente o que está fazendo** — alterações erradas podem corromper o repositório. Ao invés disso, deve-se sempre optar por utilizar as próprias ferramentas que o Git possui, como por exemplo `git config`.

**estrutura `.git`**
```plaintext
.git/
├── HEAD         <- aponta para o branch atual, por exemplo: refs/heads/main
├── config       <- configurações locais do repositório
├── description  <- usado em servidores Git, pode ser ignorado localmente
├── hooks/       <- scripts automáticos que podem ser executados em eventos do Git
├── info/        <- ignora arquivos manualmente, por exemplo: exclude
├── objects/     <- armazenamento de todos os commits, arquivos e árvores, utilizando hash
├── refs/        <- onde ficam ponteiros para branches e tags
├── logs/        <- histórico detalhado de movimentos dos ponteiros
└── index        <- área de staging, pré-commit
```

#### `help`
Este comando acessa a documentação oficial e detalhada do comando especificado diretamente no terminal. Ao executá-lo, a **man page** do commando é aberta, ela contém a descrição, sintaxe, flags disponíveis, exemplos e comportamentos esperados.
- **`git help [command]`**
- **`man git-command`**
- **`git command --help`**

### REPOSITORY
Um repositório nada mais é do que um projeto versionado pelo Git, podendo ser local ou remoto.

#### `bare`
Este é um tipo especial de repositório Git que não possui uma cópia de trabalho dos arquivos, ou seja, não possui um *working directory*. Contém apenas os arquivos de controle e histórico do Git, e por isso não pode ser usado para edição direta de código, **sua principal função é servir como repositório central para colaboração, ou seja, um servidor Git interno, sendo o destino de `push`es e a fonte de `pull`s e `clone`s**. Por manter o armazenamento centralizado do projeto, são usados principalmente como mirrors de código ou então como pontos de integração CI/CD.
```sh
git init --bare repo_name.git
```

Um repositório Git bare possui a seguinte estrutura:
```txt
repo_name.git/
├── HEAD
├── config
├── refs/
├── objects/
└── ... outros diretórios Git
```
> O conteúdo da pasta `.git` de um repositório comum vira a raiz do bare. Ele não tem arquivos como `index.html`, `main.py`, `README.md` e etc.

Uma restrição importante a se destacar é que, um repositório bare não deve ter nenhuma branch *"checkoutada"*, pois não possui working tree, o que impede rodar comandos como `add`, `commit`, `status` ou editar arquivos diretamente, e qualquer tentativa disso resultará em erro.

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
cd ~/project_dir                                                       # 2. navegar até o diretório do projeto
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
git clone https://github.com/user_name/repository_name.git || git clone git@github.com:user_name/repository_name.git
# Username: user_name
# Password: personal_access_token
# git config --global credential.helper cache-store
```

Também é possível renomear o repositório local durante sua clonagem, basta informar seu novo nome ao final da linha de comando de clonagem:
```sh
git clone protocol://path.com/user_name/repo_name.git new_repo-dir_name
```

Por fim, também é possível clonar apenas parte do repositório, basta apenas utilizar a flag **`-n`** e então com o `checkout` definir o ponteiro do HEAD qual o arquivo ou diretório se deseja acessar.
```sh
git clone -n git@github.com:user_name/repository_name.git
ls
# não contem nada até ser definido com o HEAD
git checkout HEAD file_name.ext && ls
Updated 1 path from abc123
file_name.ext
git checkout HEAD dir_name/ && ls
Updated 3 paths from abc123
file_name.ext
dir_name/
```

### STATES
Existem diferentes estados que o Git pode classificar os arquivos dentro de um repositório.

![Image](https://git-scm.com/book/pt-br/v2/images/areas.png)

- **`commited`**: os arquivos estão sendo rastreados pelo Git, e os dados estão armazenados de forma segura no banco de dados local.
- **`modified`**: o arquivo está monitorado pelo Git, possui um histórico de versões, e seu estado atual indica que sofreu modificações ainda não salvas no banco de dados local.
- **`staged`**: o arquivo modificado agora tem uma versão salva das alterações que está pronta para o *`commit`*, ou seja, o estado atual das modificações foi adicionado à *área de preparação* **staging area**, isto indica que o Git reconhece as alterações feitas e elas farão parte do próximo *`commit`*.

Básicamente, o Git usa estas 3 areas para conter cada estado de um arquivo, sendo o `working directory` o espaço no sisitema de arquivos onde os arquivos versionados e não versionados existem, sendo o espaço para o trabalho direto com os arquivos, criando, editando, deletando e movendo-os. O diretório de trabalho é uma simples cópia de uma versão do projeto. Estes arquivos originam do banco de dados compactado no diretório Git `.git` e são disponibilizados no disco para uso e edições. Cada mudança em um arquivo é detectada pelo Git, e o comando `git status` exibe os estados dos arquivos como modificados ou não rastreados – no caso de novos arquivos criados em um diretório Git.<br/>
Já a `staging area` é a área de preparação onde os arquivos e suas alterações entram antes de serem confirmados no histórico com `git commit`. A área de preparo é um arquivo – geralmente contido no diretório Git do projeto – que armazena informações sobre o fará parte do próximo commit. É por vezes referido como o “índice”, mas também é comum referir-se a ele como área de preparo. É um espaço intermediário onde o Git armazena quais mudanças serão inclusas no próximo `commit`. Ao executar o comando `git add .` os arquivos indicados são considerados *"preparados para commit`*, e um detalhe interessante é que o Git permite realizar commits parciais, mesmo com múltiplas mudanças no projeto.<br/>
Por fim, o `git repository` nada mais é do que o banco de dados permanente que contém todas as alterações inclusas nos commits. Este banco de dados interno do Git `.git` armazena commits, históricos de branches, árvores de arquivos (blobs e trees), tags, entre outras coisas. Cada `git commit -m "message"` realizado grava os arquivos da staging area nesse repositório, fazendo com que as alterações façam parte do histórico do projeto.<br/>
De maneira resumida, se uma versão específica de um arquivo está no diretório Git, é considerado *commited*. Se for modificado, mas foi adicionado à área de preparo, é considerado *staged*. Por fim, se for alterado depois de ter sido carregado, mas **não** foi preparado, ele é considerado *modified*.<br/>
Após o commit, os arquivos voltam ao estado *"clean"*, até que sejam modificados novamente.

```plaintext
+----------------------+    git add    +-------------------+    git commit    +-------------------+
|  Working Directory   | ------------> |   Staging Area    | ---------------> |  Git Repository   |
| (Diretório de trab.) |               | (Área de preparo) |                  | (Histórico local) |
+----------------------+               +-------------------+                  +-------------------+
```

#### `add`
Prepara os arquivos indicados para serem salvos no próximo commit, movendo-os da "área de trabalho" para a staging area. Este comando adiciona arquivos novos – que ainda não são conhecidos ao Git no repositório em questão – ao *"tracking list"* do Git, para que ele reconheça os arquivos e seus conteúdos. O comando `git add` não salva alterações e arquivos no histórico, apenas marca-os para serem salvos. Ele permite controlar o que pode ser adcionado, sendo arquivos e modificações inteiras ou apenas parte das mudanças feitas.<br/>
Ao utilizar o `.`, o **`git add .`** adiciona todos os arquivos no diretório atual ao *tracking* do Git, que antes verifica no **`.gitignore`** se existem arquivos que não devem ser inclusos automaticamente à staging area.

| comando               | ação                                                     |
| --------------------- | -------------------------------------------------------- |
| `git add arquivo.txt` | Adiciona um arquivo específico à staging.                |
| `git add .`           | Adiciona **todos os arquivos modificados** no diretório. |
| `git add *.js`        | Adiciona todos os arquivos `.js`.                        |
| `git add -p`          | Permite selecionar trechos `hunks` interativamente.      |

#### `rm`
Remove arquivo do working directory, além de marcar esta remoção para o próximo commit. Ou seja, ele deleta o arquivo fisicamente e o remove do controle de versão.<br/>
Quando o usuário deleta o arquivo manualmente e em seguida envia as alterações atuais para a staging area, o Git entende que o arquivo foi deletado e a mudança será incluída no próximo commit, resumindo, ele detecta a remoção e a marca para commit.<br/>
Este comando é especialmente útil quando se deseja apenas remover o arquivo do Git, mas ainda mantê-lo no disco. Sendo essencial para remover um arquivo como `.env` do versionamento sem apagá-lo da máquina por exemplo.
```sh
git rm --cached file_name.ext
```

#### `commit`
Aqui sim de fato as alterações e mudanças em arquivos *staged* são salvas no histórico do repositório local, este comando é quem cria o *snapshoot* do estado atual dos arquivos selecionados.<br/>
Sempre que executado, o Git gera automaticamente um **hash criptográfico** exclusivo composto por 40 caracteres hexadecimais, que serve como um identificador daquele commit. O Git usa o algoritmo **S**ecure **H**ash **A**lgorithm - **1** para gerar o hash. **O conteúdo do commit é transformado em uma string única, contendo o conteúdo exato dos arquivos – ou seja, o snapshoot dos arquivos versionados – juntamente com outras informações como o autor, timestamp do commit, a mensagem inclusa, commit pai se houver, entre outros metadados, e, toda essa estrutura é processada pelo SHA-1 para gerar o _checksum_, assim, qualquer mudança mínima em qualquer parte gera um hash totalmente diferente.**. Este hash é como um **CPF** para cada commit, sendo único e imutável, e é usado pelo Git para identificar os commits no histórico de mudanças, permitindo assim compará-los, retornar o projeto ao estado de commits anteriores, entre outras possibilidades.

- **`git commit`**: Cria um commit e abre o editor de texto para escrever a mensagem.
- **`git commit -m "feat: add login feature"`**: Cria um commit com a mensagem incluída na CLI.
- **`git commit -a -m "fix: commit rápido"`**: Adiciona e commita os arquivos rastreados direto, shorthand de `git add . && git commit -m "message"`.
- **`git commit --amend` [options]**: Altera o último commit. Para que o amend ocorra no caso de edições de arquivos é preciso que os arquivos corrigidos estejam na staging area.
  - `--no-edit`: usa a mesma mensagem do commit anterior, sem abrir o editor.
  - `-m "mensagem"`: Substitui a mensagem diretamente pela informada.
  - `--date=<data>`: Altera a data do commit.
  - `--author="Nome <email>"`: Altera o autor do commit.
  - `--reset-author`: Reseta o autor para o usuário atual do Git.
  - `--allow-empty`: Permite criar mesmo sem mudanças nos arquivos.
  - `--allow-empty-message`: Permite criar com mensagem de commit vazia.
  - `--no-verify`: Ignora os *hooks* de pré-commit.
  - `--signoff`: Adiciona uma assinatura `Signed-off-by: Nome <email>`.
  - `--gpg-sign[=<key-id>]`: Assina o commit com GPG.

**Boas Práticas**
- Nomear branches de forma descritiva: `feature/login`, `bugfix/erro-404`.
- Fazer pull antes do push para evitar conflitos.
- Nunca realizar um pull diretamente na main branch, ou um merge sem antes estar certo de que seu repositório local está atualizado ou se as alterações podem ser inclusas na main, sempre usar pull requests para revisão de código em equipe.
- Nunca commitar arquivos sensíveis, usar `.gitignore` para bloquear arquivos deste tipo de serem salvos no histórico.
- Commits frequentes e com mensagens claras, mensagens de commit devem ser curtas e descritivas **no presente**, adotando uma convenção de commits sempre que possível:
  - ✔️ `fix: corrige validação do formulário`
  - ❌ `arrumei o bug`
  - ❌ evitar mensagens vagas como: `atualizações`, `teste`, `final` e etc.

Uma forma mais intuitiva de se entender como o Git rastreia e grava as alterações é como mostra o fluxo a seguir:

![Image](https://raw.githubusercontent.com/shyoutarou/Git_GitHUB/master/.github/treestados.png)

- **untracked**: são os novos arquivos e alterações em andamento que ainda não foram para a **staging area**, ou seja, ainda não foram adicionados no `git add .` para que o Git entenda o conteúdo e monitore as alterações.
- **unmodified**: aqui, os arquivos já são conhecidos pelo Git e contem o estado que o Git conhece, ou seja, não sofreram nenhuma modificação e estão *up to date* de acordo com o último **commit** ao qual entraram. Cada commit é um ponto de salvamento de estado e histórico de modificações sofridas no arquivo, além de conter as alterações – que podem ser comparadas com `git diff` – também possuem um *hash* que identifica e diferencia um commit de outro, assim mantendo versões diferentes de estado e um histórico de alterações dos documentos, além de uma mensagem descritiva em cada commit onde o desenvolvedor informa o que o fez ou o motivo que o levou a fazer as tais alterações.
- **modified**: neste ponto os arquivos já são rastreados e existem modificações neles que são percebidas pelo Git, mas que ainda estão em andamento e não estão salvas, por isso não estão na **staging area**, são os arquivos modificados que _**ainda irão para a staging area** após terem suas modificações finalizadas e adicionadas pelo `git add .` para que o Git as reconheça e veja quais foram as alterações nos estados atual e anterior do arquivo_.
- **staged**: aqui estão os arquivos monitorados que possuem suas alterações adicionadas à **staging area**, que serão inclusos ao próximo commit e em seguida assumirão novamente o estado de *unmodified*.

#### `tag`
As tags são marcadores especiais em commits, e servem para marcar pontos importantes no histórico, como versões de lançamento por exemplo. São úteis para marcar versões do software, gerando versões de releases do projeto em plataformas de hospedagem na nuvem. Existem 2 tipos de tags no Git:
- **lightweight**: um marcador direto para um commit, como um branch fixo, sem metadados.
  - **`git tag`**: cria um "rótulo" para um ponto específico no estado do histórico do commit.
- **annotated**: armazena autor, data, mensagem e pode ser assinada com GPG, recomendada para versões oficiais.
  - **`git tag -a tag_name -m "message"`**: cria uma tag anotada no commit atual.
  - **`git tag -a tag_name commit_hash_0123456789abcdef -m "message"`**: cria uma tag anotada no commit especificado.
- **tools**
  - **`git tag`**: lista todas as tags.
  - **`git tag -l "v1.*"`**: busca tags que combinam com o padrão especificado.
  - **`git show tag_name:`** exibe o commit com a tag especificada.
  - **`git tag -d tag_name`**: deleta a tag localmente.
  - **`git push origin tag_name`**: envia uma tag para o repositório remoto.
  - **`git push origin --tags`**: envia todas as tags para o repositório remoto.
  - **`git push origin --delete tag_name`**: deleta a tag do repositório remoto.
  - **`git switch tag_name`**: navega para a tag especificada.
  - **`git switch -c nova-branch tag_name`**: cria uma branch a partir de uma tag e move o ponteiro para a nova branch.

### TOOLS
É comum que durante o desenvolvimento algumas alterações realizadas precisem ser desfeitas, por conta de modificações nas requisições, por não se possível realizar sua integração com o resto do programa, ou apenas por não se adequarem ao que foi solicitado, e para isso o Git possui ferramentas de análise e gerenciamento das versões do projeto.

#### ANALYSIS
O Git possui algumas utilidades para analisar alterações e atualizações localmente.

##### `status`
Fornece uma visão detalhada com informações sobre o repositório, sendo muito útil para análises durante a preparação de commits. As informações incluem modificações locais, arquivos na staging area, arquivos novos não rastreados, conflitos, branch atual e tracking remoto.
```sh
git status
```

| informação                        | significado                                                                                      |
| --------------------------------- | ------------------------------------------------------------------------------------------------ |
| 🟢 **branch atual**               | Qual a branch ativa no working directory.                                                        |
| 🌱 **commits pendentes de envio** | Commits locais que ainda não foram enviados ao repositório remoto.                               |
| 🟨 **arquivos modificados**       | Quais arquivos foram alterados desde o último commit.                                            |
| 🟦 **arquivos staged**            | Quais arquivos foram adicionados à **área de staging** com `git add`.                            |
| 🔴 **arquivos não rastreados**    | Novos arquivos que ainda não fazem parte do repositório, ou seja, não estão sob controle do Git. |
| ⚠️ **conflitos de merge**         | Quais arquivos estão em conflito após o `git merge`.                                             |

##### `diff`
Este comando permite visualizar ambos os estados – original e modificado – de um arquivo, comparando o conteúdo entre diferentes estágios do Git, exibindo linha a linha o que foi adicionado, modificado ou removido. Compara `Working Directory` com o que está salvo no último commit `HEAD`, ideal para ver o que falta ir para a *staging area*.
```sh
raphaelkaique1@mach-1:~/Dev/.env/Git (main) $ git diff
diff --git a/app.js b/app.js
index e69de29..5f1d7d3 100644
--- a/app.js
+++ b/app.js
@@ -0,0 +1,3 @@
+console.log("Olá mundo!");
+console.log("Novo log!");
+console.log("Fim do teste.");
```

**significado do output**
- **`+`**: linha adicionada
- **`-`**: linha removida
- **`@@`**: trecho `hunk` de mudança com contexto
- **`a/ b/`**: arquivos antes/depois

Além de poder comparar as diferenças de apenas um arquivo específico.
```sh
git diff main dev
```

Também é possível especificar quais alterações se deseja comparar, utilizando a flag `--staged` ou `--cached`, é possível comparar a Staging Area com o último commit `HEAD`. Isto é ideal para verificar exatamente o que será salvo no próximo commit.
```sh
git diff --staged || git diff --cached
```

Ou ver as diferenças entre 2 commits, comparando as mudanças entre 2 pontos do histórico, apenas indicando os hashes dos commits desejados `git diff <commit1> <commit2>`.
```sh
git diff 4a7c8b2 e9ff1da
```

Até mesmo poder comparar diferenças entre branches.
```sh
git diff main dev
```

As flags `git diff`**`--name-only`** e `git diff`**`--stat`** exibem saídas resumidas, ideias quando se deseja verificar apenas quais arquivos foram alterados sem exibir o conteúdo e as estatísticas resumidas, respectivamente.

##### `log`
Exibe o histórico de commits de um repositório, contendo tudo o que já foi confirmado no repositório local.
```sh
git log
commit 1a2b3c4d5e6f7g8h9i0j
Author: raphaelkaique1 <raphaelkaiquediassantos1@gmail.com>
Date:   Mon Jun 1 15:30:00 2025 -0300
    fix: fixed authentication bug
```

**flags úteis**
| comando                             | ação                                                                                                                      |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `git log [file_name]`               | Exibe informações referentes ao arquivo específico, se omisso exibe o log de todo o repositório.                          |
| `git log --oneline`                 | Resumo encurtado de 1 commit por linha.                                                                                   |
| `git log --pretty=oneline`          | Resumo detalhado de 1 commit por linha.                                                                                   |
| `git log --graph`                   | Exibe a ramificação em formato gráfico.                                                                                   |
| `git log -p [-n]`                   | Exibe as `diffs` feitas em cada commit, o parametro `-n` define quais serão os últimos commits recentes a serem exibidos. |
| `git log --author="raphaelkaique1"` | Filtra commits por um autor específico.                                                                                   |
| `git log --since="2 days ago"`      | Lista commits recentes até a data especificada.                                                                           |
| `git log --stat`                    | Exibe um resumo dos arquivos alterados em cada commit.                                                                    |

##### `show`
Este comando exibe informações detalhadas sobre um commit específico como o autor, timestamp, mensagem de commit e as diffs feitas pelo commit. Se usado sem argumento `git show` irá exibir o commit mais recente `HEAD`.
```sh
git show commit_value_hash_0123456789abcdef123456
```

#### ROLLBACK
Além disso, o Git fornece ferramentas de recuperação de estado para projetos, tais como:
- **`restore`**
  - usado para se trabalhar com arquivos específicos
  - não afeta o histórico de commits
- **`revert`**
  - usado para se trabalhar com arquivos e commits
  - afeta o histórico de commits e também o ponteiro HEAD
- **`reset`**
  - reverte commits inteiros
  - afeta o histório de commits e também o ponteiro HEAD

| comando                                                     | efeito                                                                                                                        |
| ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `git reset --soft HEAD~[n]`                                 | Desfaz o(s) commit(s) especificado(s), mas mantem as alterações; o valor `n` define o número de commits que se deseja voltar. |
| `git reset --hard HEAD~[n]`                                 | Apaga tudo: commit, staging e alterações locais.                                                                              |
| `git restore --staged file_name.ext`                        | Desfaz `git add`, mas mantem a alteração no arquivo.                                                                          |
| `git restore --source [commit_hash] [file_name.ext \|\| .]` | Recupera para o working directory o estado conforme o commit especificado.                                                    |
| `git restore [file_name.ext \|\| .]`                        | Descarta edições, restaurando o estado do último commit.                                                                      |

##### `revert`
Desfaz um commit específico, mas de maneira não destrutiva **criando um novo commit** *que inverte as alterações de um commit anterior*, preservando o histórico, sendo mais seguro de se utilizar em repositórios compartilhados do que `reset`.<br/>
Pode causar conflitos se o commit afetado modificou arquivos em conflito com o estado atual da branch, mas o Git solicitará resolvê-los manualmente antes de concluir.
```sh
# revertendo um commit específico
git revert commit_hash-0123456789abcdef

# revertendo múltiplos commits
git revert commit_hash0-0123456789abcdef commit_hash1-0123456789abcdef commit_hash2-0123456789abcdef
# ou, revertendo múltiplos commits com um único revert
git revert --no-commit commit_hash1-0123456789abcdef^..commit_hash3-0123456789abcdef
# ou movendo o HEAD
git revert --no-commit HEAD~3..HEAD

# revertendo um intervalo de commits – commits entre (d)o mais novo (para)e o mais antigo
git revert b1c2d3e^..d4c3b2a
# ou, revertendo com um intervalo inclusivo – ou seja, reverte os commits mais recentes antes do HEAD incluindo o próprio HEAD
git revert HEAD~3..HEAD
```

##### `reset`
Este comando **afeta um commit inteiro**, reposicionando o ponteiro da branch atual para um commit anterior indicado pelo hash. Usado para voltar a um estado anterior do commit ou da index.
| flag               | efeito                                                          |
| ------------------ | --------------------------------------------------------------- |
| `--soft`           | cancela o commit e o arquivo volta para a staging area – index. |
| `--mixed` (padrão) | remove da staging area mas mantém no working directory.         |
| `--hard`           | desfaz o commit e deleta todas as alterações.                   |

##### `restore`
**Restaura arquivos para um estado anterior**, desfazendo alterações no diretório de trabalho ou mesmo na staging area.

**`Working Directory`**<br/>
Para desfazer modificações no diretório de trabalho, basta indicar quais arquivos devem ser restaurados ao seu estado do último commit. Ao desfazer alterações feitas em um arquivo com `git restore`, o documento em questão retorna à sua última versão confirmada no `HEAD`, ou seja, ele perde quaisquer edições não salvas.
```sh
git restore file_name.ext
```

**`from: staging area – to: unstage`**<br/>
Este comando remove o arquivo adicionado à staging area, mas mantém suas alterações realizadas no diretório de trabalho. É especialmente útil quando se quer remover um arquivo ainda em teste adicionado acidentalmente com `git add .`.
```sh
git restore --staged file_name.ext
```

**`commited`**<br/>
Este comando restaura um arquivo ao seu mesmo estado do último commit ou um específico.
```sh
git restore --source=commit_hash-0123456789abcdef file_name.ext
```

#### GO-BACK
Também oferece ferramentas para manipular e se trabalhar de forma refinada com alterações em arquivos, que permitem manter o estado atual mas trazendo informações *"perdidas"*.

##### `cherry-pick`
Comando usado para aplicar um ou mais commits específicos de outra parte do histórico na branch atual, criando novos commits com o mesmo conteúdo – mas novos hashes. **É uma forma de extrair mudanças seletivas do histórico sem mesclar toda a branch.**
```sh
git cherry-pick commit_hash
```
Isto aplica os `diff`s do commit especificado na branch atual, criando um novo commit com um novo hash, mas com o mesmo conteúdo existente. Muito usado para obter um hotfix criado em outra branch sem realizar um merge ou rebase, ou também aplicar um commit específico de uma feature inacabada ou ainda extrair mudanças funcionais de uma branch experimental.<br/>
Deve ser usado mantendo atenção em alguns pontos pois pode causar confusão sobre identidade do commit, devido ao fato de que um commit aplicado via `cherry-pick` é **outro commit**, mesmo que o conteúdo seja o mesmo isso quebra relações de ancestralidade e pode causar duplicação de mudanças em merges futuros, com conflitos difíceis de entender. Sendo indicado para usar em commits isolados, autocontidos e sem dependências.

##### `reflog`
Este comando exibe o histórico completo de referências do HEAD, ou seja, tudo que o HEAD apontou nos últimos comandos – commits, checkouts, resets, rebases e etc – incluindo aqueles removidos do git log. Ele refistra cada movimentação feita tanto do ponteiro do HEAD quanto de outras referências, como branches por exemplo, permitindo recuperar commits *perdidos* após `reset --hard`, `rebase`, `commit --amend`, `push -f` e etc, identificando "quando" e para "onde" o HEAD se moveu, pois o Git não deleta commits com `reset --hard` ou `rebase`, eles continuam a existir até o garbage collector limpá-los, e o `git reflog` é a janela para alcançá-los. Sendo uma ferramenta poderosa para se recuperar informações perdidas, contudo seu alcance é limitado pois existe e atua apenas localmente, não sendo compartilhado ou versionado e por isso não é visível no repositório remoto.<br/>
```sh
git reflog
# hash entry-point operation
a3f4e98 HEAD@{0}: reset: moving to HEAD~1
9b1f2f7 HEAD@{1}: commit: Corrige bug de autenticação
7c1e2d3 HEAD@{2}: checkout: moving from main to bugfix

# ações
git reset --hard HEAD@{1}                  # desfaz um reset destrutivo
git checkout reflog_hash-0123456789abcdef  # recupera um commit excluído com `rebase` ou `commit --amend`
```

#### KEEP-GOING
Existem também ferramentas para manipular, salvar e atualizar informações a fim de organizar melhor o histórico do desenvolvimento.

##### `stash`
Usado para armazenar temporariamente alterações no working directory e staging area – ou seja, alterações ainda não consolidadas – permitindo retornar a um *"estado limpo"* do repositório **sem perder o progresso atual**. Ou seja, ele guarda as modificações locais não commitadas nos tracked files, staged ou unstaged, na *stash stack*, para que seja possível voltar ao estado "limpo" da branch, mantendo o working directory organizado, permitindo em qualquer momento aplicar essas mudanças no estado principal da branch.<br/>
Pois por padrão, as modificações não consolidades em uma branch são *transportadas* para outras branches, causando uma desorganização e perda de rastreabilidade – já que as atualizações pode ser acidentalmente carregadas em uma branch em que não deveriam estar. Para evitar soluções ineficientes como gerenciar commits temporários – quando se cria um commit desnecessário para salvar as alterações temporárias e depois ter de removê-lo para manter um histórico linear – usa-se o **`git stash`** para isso.

| comando                                 | efito                                                            |
| --------------------------------------- | ---------------------------------------------------------------- |
| `git stash`                             | Salva alterações rastreadas e staged.                            |
| `git stash -u \|\| --include-untracked` | Salva também arquivos não rastreados.                            |
| `git stash -a \|\| --all`               | Salva até arquivos ignorados em `.gitignore`.                    |
| `git stash list`                        | Lista todos os stashes armazenados.                              |
| `git stash show`                        | Mostra um resumo do que foi guardado no último stash.            |
| `git stash show -p`                     | Mostra o diff completo do último stash.                          |
| `git stash apply [index]`               | Aplica o stash informado ou o mais recente, mantendo-o na pilha. |
| `git stash pop [index]`                 | Aplica o stash informado ou o mais recente, e o remove da pilha. |
| `git stash drop [index]`                | Descarta um stash específico.                                    |
| `git stash clear`                       | Remove todos os stashes.                                         |

Por exemplo uma branch `dev` utilizada para testes está em um ponto funcional mas precisa implementar alterações que mudam algumas muitas funções. Para que não se perca o estado funcional sem precisar criar um `commit` *desnecessário* – pois as alterações ainda não estão finalizadas e não faz sentido consolidar algo incompleto – é possível criar um stash para alterar o que se deseja e caso as alterações não sejam mais necessárias retonar ao estado original da branch, ou então aplicar tais mudanças e seguir com o desenvolvimento.
```sh
git branch --list
  main
* feat      # working directory active

git status
# modified: app.js
# modified: styles.css

# antes de mudar de branch salva-se as alterações em um stash para que não sejam perdidas
git stash

git status
# working tree clean

git stash pop                         # retorna às mudanças em andamento
git stash list                        # stash@{0}: WIP on feat: 0123456 feat: add feat X
git stash show -p stash@{0}           # exibe o diff das mudanças armazenadas
git stash save "edition description"  # nomeia o stash
```
Se houverem conflitos ao aplicar o `stash`, o Git avisará e permitirá resolvê-los como em um merge normal.

##### `push --force`
É usado para forçar a atualização de uma branch remota com o conteúdo da branch local, sobrescrevendo e substituindo o histórico remoto pelo o local. É útil após um `rebase` para manter o histórico remoto linear e coeso.<br/>
O Git por padrão realiza uma comparação dos históricos da branch remota e local após um `push`, e caso eles sejam diferentes o envio falha. O `--force` diz ao Git para ignorar essa verificação e atualizar o remoto com o que existe localmente. Isso reescreve todo o histórico remoto com o novo histórico local da branch.<br/>
Por exemplo, o comando a seguir reescreve todo o histório da branch `dev` no remoto `origin` com o conteúdo da `dev local`:
```sh
git push -f origin dev
```

Contudo, este comando pode apagar commits que estão *apenas* no repositório remoto, e para evitar esta perda de dados é aconselhável utilizar o método seguro **`--force-with-lease`**, que só força o push se não existirem novas mudanças na branch remota desde o último `fetch` local.
```sh
git push --force-with-lease origin dev
```

#### `.gitignore`
Este arquivo é um recurso do Git que permite especificar arquivos e pastas que não devem ser rastreados, ou seja, que não devem ser adicionados, commitados nem enviados ao repositório. Se o arquivo ainda não foi adicionado ao Git, ele será ignorado com base no `.gitignore`, mas, se já foi adicionado anteriormente, o .gitignore não o remove automaticamente do controle de versão.<br/>
**Para parar de versionar algo que já está rastreado deve-se usar:**
```sh
git rm --cached file_name
```
Usado quando não se deseja versionar arquivos temporários (`*.log`, `*.tmp`, `*.bak`), pastas de build (`/dist/`, `/out/`, `/target/`), configurações locais sensíveis (`.env`, `config.local.json`, `*.sqlite`) ou dependências que podem ser reconstruídas (`node_modules/`, `vendor/`).<br/>
Pode ser criado na raiz do projeto ou em subpastas, e possui em seu conteúdo uma lista com padrões de arquivos que o Git deve ignorar, por exemplo:
```sh
# ignorar pastas de dependência
node_modules/
vendor/

# ignorar arquivos de log
*.log

# ignorar arquivos de build
/dist/
/build/

# ignorar arquivos de configuração pessoal
.env
*.local

# ignorar arquivos do sistema
.DS_Store
Thumbs.db
```

### WORKFLOW
Para evitar que o programa principal sofra muitas modificações e se torne "bagunçado" e difícil de rastrear e entender seu histório de alterações, os desenvolvedores usam métodos para criar ambientes separados de desenvolvimento e de produção com o Git, que possibilita o trabalho com uma "linha de raciocínio" onde o desenvolvedor pode realizar quaisquer modificações e testes sem alterar – e possivelmente quebrar – o código principal, para isto existem os *workflows*.<br/>
Um workflow Git é uma estratégia organizada de como equipes usam o Git para colaborar em um projeto. Ele define como e quando as alterações no código são feitas, testadas, revisadas e integradas ao código principal. Ele tem como principal objetivo proteger o código principal – geralmente a branch `main` – e permitir o trabalho paralelo, em que vários devs trabalham em partes e recursos diferentes ao mesmo tempo, garantindo a qualidade e segurança nas mudanças que chegam à produção.

#### BRANCH
Uma branch é uma ramificação do diretório principal do projeto que contém uma cópia de todos os arquivos, especialmente útil para desenvolver novas funcionalidades sem afetar o código principal; pode-se dizer que é uma linha independente de desenvolvimento<br/>
Por padrão, todo repositório Git começa com uma branch denominada `main` – ou `master` em versões mais antigas. É possível criar várias branches para um mesmo projeto, cada uma com uma finalidade como por exemplo branches permanentes de versões beta, até mesmo versões paralelas do projeto, ou então temporárias para desenvolver funcionalidades, corrigir bugs e testar experimentos. **Cada branch é uma cópia do estado atual do projeto – ou seja, a branch copia os arquivos exatamente como estão a partir do momento da sua criação**; mas totalmente separada da linha principal – até a decisão de integrá-la.

##### `branch`
Este comando possui recursos que permitem criar, listar, renomear e deletar branches `git branch --options branch_name`.

| comando                                         | ação                                                     |
| ----------------------------------------------- | -------------------------------------------------------- |
| `git branch`                                    | Lista todas as branches locais.                          |
| `git branch -r`                                 | Lista todas as branches remotas.                         |
| `git branch -a`                                 | Lista **todas** as branches.                             |
| `git branch branch_name`                        | Cria uma nova branch a partir da branch atual.           |
| `git branch -m old_branch_name new_branch_name` | Renomeia uma branch local.                               |
| `git branch -vv`                                | Lista as branches com mais detalhes, incluindo upstream. |
| `git branch --merged`                           | Mostra branches já mescladas com a atual.                |
| `git branch --no-merged`                        | Mostra branches **não mescladas** com a atual.           |

##### `remote`
No Git, um remote é um *alias* para a **URL de um repositório remoto**, sendo o mais comum **`origin`** – geralmente, este é o repositório "original", centralizado como o *repositório principal* de onde se originam todas as cópias locais.<br/>
O comando `git remote` é usado para gerenciar os repositórios remotos conectados ao repositório Git local. Em outras palavras, ele exibe, adiciona, remove ou altera os vínculos com repositórios externos, como GitHub por exemplo.<br/>
Por exemplo, o comando `git remote add name url` é usado para vincular um repositório remoto a um repositório Git local, vinculando e permitindo o `push` e o `pull` entre o repositório local e o remoto. E um projeto local criado com `git init` ainda não existe nenhum vínculo que o conecte a um repositório remoto. Para isso, usa-se o comando `git remote add origin https://github.com/user/repo.git`, e a partir daí é possível realizar o `push` do repositório local para o repositório remoto `origin` na branch `main`.<br/>
Alguns projetos contam com múltiplos remotos, por exemplo um *fork* clonado que precisa acompanhar o repositório original para obter atualizações, pode ser adicionado ao local para que possua 2 fontes de atualizações `fetch` – o original e o fork – `git remote add upstream https://github.com/original/main.git`. A partir daí é possível buscar atualizações do projeto original com `git fetch upstream`.

| comando                       | ação                                                               |
| ----------------------------- | ------------------------------------------------------------------ |
| `git remote`                  | Lista os nomes dos remotos.                                        |
| `git remote -v`               | Lista os remotos com URLs.                                         |
| `git remote add name url`     | Adiciona à branch local um repositório remoto.                     |
| `git remote rename a b`       | Renomeia um remoto.                                                |
| `git remote remove name`      | Remove um repositório remoto.                                      |
| `git remote set-url name url` | Altera a URL do repositório remoto.                                |
| `git remote show name`        | Exibe as diferenças entre o local e o remoto na branch em questão. |

##### `upstream`
O `upstream` é a referência da branch remota associada a uma branch local que o Git usa por padrão para enviar o `push` e receber o `pull` com as atualizações.<br/>
Quando uma branch local é criada e conectada a uma branch remota, a remota passa a ser chamada de `upstream`, isso permite encurtar comandos mais simples como `git push` e `git pull`.<br/>
Sem uma upstream remota configurada não é possível realizar ações no repositório `origin` através da branch local.

```sh
git checkout -b new-feat
git push --set-upstream origin new-feat # git push -u remote_name branch_name
```
O exemplo acima cria uma branch e define sua *upstream*, enviando a branch **`new-feat`** para o repositório remoto `origin` e definindo `origin/new-feat` como a base de `push` e `pull` da branch `new-feat` local. Com isso, é possível usar apenas `git pull` e `git push`, que o Git entende com *"quem"* a branch local está pareada.

Para verificar a upstream de uma branch usa-se o comando `git branch -vv`:
```sh
ralph@mach-1:~/Dev/GitHub/study (studying) $ git branch -vv
  main     22dec67 [origin/main] feat: update Git
* studying 22dec67 [origin/studying] feat: update Git
```
Isso significa que a branch local `studying` está *trackeando* – conectada – a branch `studying` no repositório remoto `origin`, `origin/studying`.

É possível alterar a upstream de uma branch já existente:
```sh
git branch --set-upstream-to=origin/remote_branch_name
```

**Uma upstream precisa ser definida apenas uma vez**, ela é criada na 1ª vez em que uma nova branch é empurrada usando `-u` ou `--set-upstream`, ao utilizar apenas `git push remote_name branch_name`, nenhum rastreamento é configurado, o que exige que todo `push` e `pull` tenham especificados o remoto e a branch.<br/>
Na criação de uma upstream o Git grava as informações setadas no repositório local:
```ini
[branch "branch_name"]
    remote = remote_name
    merge = refs/heads/branch_name
```

##### `switch`
Uma branch pode ser criada com o comando:
```sh
git switch -c new-feat # cria e muda para a nova branch baseada na atual
```

Para alternar e navegar entre as branches, basta informar à qual branch se deseja *ir* ao realizar o checktout da branch atual:
```sh
git switch branch_name
```

por exemplo:
```sh
ralph@mach-1:~/Dev/GitHub/study (studying) $ git switch main && git branch -v
M       4-devops/4.1-ferramentas_de_desenvolvimento/controle_de_versao_git_github.md
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
* main     22dec67 feat: update Git
  studying 22dec67 feat: update Git
ralph@mach-1:~/Dev/GitHub/study (main) $ git switch studying 
M       4-devops/4.1-ferramentas_de_desenvolvimento/controle_de_versao_git_github.md
Switched to branch 'studying'
Your branch is up to date with 'origin/studying'.
```

Para criar uma branch localmente, conectá-la a branch remota e realizar a atualização com o `pull` basta utilizar:
```sh
git fetch origin && git switch -c feature-x origin/feature-x
```
Isto garante que o repositório remoto foi atualizado – `git fetch origin` – antes de realizar o `pull`, então cria a branch local `feature-x`, conecta-a `origin/feature-x` e a ativa como a branch atual localmente.

##### `merge`
O `merge` integra o histórico de mudanças de uma branch em outra, normalmente na branch `main`. Quando o desenvolvimento da branch paralela é finalizado, é possível mesclar essa ramificação de volta à branch principal, isso é feito seguindo o seguinte processo:
```sh
git checkout main   # 1. não é possível realizar o merge com o Git trabalhando na branch que se deseja mesclar com a "desatualizada"
# então, em 1º lugar, deve-se ir para a branch que será alvo da integração, ou seja, a branch que vai receber as alterações
# para que o Git trabalhe nela e entenda que ela sofrerá a mesclagem
git merge new-feat  # 2. o comando `git merge side_branch` faz com que todas as informações na branch indicada sejam tragas para a branch atual
# e não havendo conflitos, essas modificações na branch paralela serão incluídas na branch alvo
# em seguida é aberto o editor de texto para que o usuário escreva uma mensagem, pois um novo commit é criado para "marcar" o merge
```
O exemplo acima faz com que as mudanças feitas na branch **`new-feat`** sejam enviadas à branch **`main`**.

###### TIPOS DE MERGE
- **fast-forward**: ocorre quando a branch principal de destino `main` não sofreu alterações desde que a nova branch foi criada, resultado num merge de sucesso.
- **commit-to-merge**: é o contexto em que 2 branches divergiram, evoluindo separadamente contendo alterações diferentes que precisam ser reconciliadas, e para isso o Git cria um novo commit de merge para juntar os 2 históricos.
- **conflict**: quando ocorrem diferentes alterações de 2 branches diferentes nas mesmas partes ou existem mudanças incompatíveis entre os históricos – como por exemplo um arquivo que foi alterado em uma branch e deletado em outra – estas precisam ser resolvidas antes de serem mescladas. Quando o Git não consegue reconciliar automaticamente tais mudanças durante o merge este conflito deve ser resolvido manualmente – escolhendo qual alteração manter ou realizar uma nova combinando as 2 – com o comando `git merge --strategy-option`. Uma alternativa seria o envio forçado das alterações com `git push --force`, que força a sobrescrita da branch remota com o histórico da branch local mesmo que isto divirja do que está no repositório remoto, enviando o histórico local para o repositório remoto ignorando conflitos de histórico – dessa forma apagando o conteúdo do remoto e substituindo pelo histórico local; normalmente ao usar o `git push`, o Git verifica se a branch remota compartilha o mesmo histórico que a branch local – isto é, se a branch local *"continua"* de onde a remota parou – e, se os históricos forem divergentes o Git impede o `push` para evitar a perda de dados. Porém esta prática não é recomendada por conta dos riscos de perdas envolvidos, e somente deve ser utilizada em último caso e se de acordo com a equipe de desenvolvimento envolvida no projeto.

**`--squash`**<br/>
O merge naturalmente mantem a ordem de criação de cada commit nas branches, por exemplo, se a partir de uma determinada branch `main` for criada uma nova branch `feat`, e cada uma seguir commitando até o ponto em que vão se unir, *a ordem de cada commit criado em cada uma será mantida no histórico de commits após a integração*. Digamos que após a criação da branch `feat`, a `main` ela sofreu **1 commit**, e então a `feat` teve **2 commits**, e **outro commit foi feito novamente** na `main`, por fim a `feat` teve **mais 1 commit e então foi realizado o merge `git merge target_branch_name --squash`**, a ordem do histórico de commits na main após o merge seria a seguinte: **`main_commit-1` → `feat_commit-1` → `feat_commit-2` → `main_commit-2` → `feat_commit-3` → `merge_main_commit`**

**pre-merge**
```text
main:   ·---M1---M2---M3
              \
feature:       F1---F2---F3
```

**post-merge**
```text
main:   ·---M1         M2    MMC
              \       /  \  /
feature:       F1---F2    F3
```

**Um merge com a flag `--squash` não cria o *`commit de merge`* tradicional automaticamente e nem mescla os históricos de commits, apenas importa as atualizações commitadas da branch alvo para a staging area da branch de destino como um único conjunto de mudanças, mantendo o histórico "original" de commits da branch de destino.** É particularmente útil para não poluir o histório da branch principal.
```sh
git checkout main
git pull main
git merge feat --squash
git commit -m "feat: add feature from feature branch"
```

Após um `--squash`, o Git não marca a `merge` como feita, isso significa que a branch `feat` continuará existindo – ou seja, não será *"reintegrada"* à branch principal – e isso pode causar conflitos em um merge futuro que tente mesclar as branches.

##### `rebase`
O comando `git rebase` funciona de maneira semelhante ao merge importando as atualizações nos arquivos e unificando o histórico de commits das branches envolvidas. Mas com um porém, ele reescreve o histórico para que pareça que os commits da branch atual foram criados **depois** dos da branch de base, ou seja, coloca todo o histórico de commits da branch alvo em "linha", sem mesclar no histórico da branch de destino cada commit na ordem em que foi criado.<br/>
É especialmente útil quando se deseja manter um histório linear e limpo antes de realizar um `push` em branches de colaboração para alinhar com o estado atual da `main`, ou também em *pull requests*, para evitar conflitos com a branch principal.<br/>
Entretanto, deve-se evitar usá-lo em branches compartilhadas, pois, como o histórico é reescrito, todos que estiverem trabalhando na mesma branch irão enfrentar conflitos e problemas de sincronização, e nestes casos utilizar `merge` pode ser o mais indicado.

Por exemplo este histórico que contem 2 branches com diferentes commits:
```text
main:     A---B---C
                \
feature:         D---E
```

Ao executar:
```sh
git checkout feature
git fetch origin
git rebase origin/main
```

O Git irá mover os commits `D` e `E` de `feature` para aplicar `A-B-C` em `main`, e em então **reaplicar `D` e `E`** no *final* de `main`:
```text
main:     A---B---C
                        \
feature (rebase):        D'--E'
```
Isso irá criar uma única *linha de acontecimentos* no histórico de `main`, e todos os commits que já foram de `feature` agora são uma *continuação* em `main`. `D'` e `E'` são **novos commits na `main`**, idênticos a `D` e `E` – de `feature` – em conteúdo, mas com hashes diferentes.

Para atualizar o repositório local, é necessário utilizar a flag `--force`, pois o rebase altera o histórico da branch.
```sh
git push --force
```

É possível realizar o rebase de forma interativa com a flag `-i`, que permite editar, reorganizar, combinar ou remover commits de forma manual.<br/>
Por exemplo, ao executar:
```sh
git rebase -i HEAD~3
```

Tem-se uma saída como esta:
```text
pick 1234567 commit A
pick 89abcde commit B
pick f012345 commit C
```

Onde `pick` pode ser substituído por algum dos comandos abaixo:
| comando  | ação                          |
| -------- | ----------------------------- |
| `pick`   | manter o commit.              |
| `reword` | editar a mensagem do commit.  |
| `edit`   | pausar para alterar conteúdo. |
| `squash` | fundir com commit anterior.   |
| `drop`   | remover o commit.             |

##### `branch --delete`
Ao finalizar a tarefa de uma branch paralela, esta pode ser deletada caso seu objetivo de existir tenha chegado ao fim.

###### local
Uma branch só pode ser deletada localmente usando a flag `-d` se ela já foi mesclada com sua branch raiz – ou alguma outra branch; caso contrário, o Git exibe um alerta para evitar perda de trabalho, e se realmente for o caso de excluir a branch sem antes salvar as alterações, pode-se usar a flg `-D` para forçar sua remoção.
```sh
git branch -d branch_name || git branch -D branch_name
```

###### remote
Para deletar uma branch do repositório remoto – como o GitHub por exemplo – usa-se o comando:
```sh
git push origin --delete branch_name || git push origin :branch_name # shorthand
```
Isso remove a branch do repositório remoto `origin`.

###### BOAS PRÁTICAS
Deve-se tomar alguns cuidados antes de deletar uma branch, como **nunca deletar a branch em que se está atualmente**, deve-se mudar antes para outra branch, além de confirmar se o trabalho da branch já está salvo e verificar se não existem outras pessoas trabalhando na branch.
```sh
git checkout main                       # 1. mudar para a main
git branch --merged                     # 2. verificar se a branch já foi mesclada (opcional)
git branch -d minha-feature             # 3. deletar a branch local
git push origin --delete minha-feature  # 4. deleter a branch remota
```

##### `fetch`
Baixa atualizações do repositório remoto sem aplicar as mudanças automaticamente à branch atual, muito usado quando se trabalha em *forks*. O `fetch` é a **origem** – ou seja, *de onde* – o Git deve importar dados para o repositório em questão. Após analisar as mudanças é possível realizar o merge. ***O comando `git pull` realiza o `fetch` e o `merge` automaticamente, unindo as mudanças de uma branch à outra.**
```sh
git clone https://github.com/user/side_project.git                    # clona o fork
cd ./side_project/                                                    # navega até o dir
git remote add upstream https://github.com/original-autor/projeto.git # adiciona o repositório original como "upstream"
git remote -v                                                         # verifica os remotos
git fetch upstream                                                    # busca atualizações do repositório original armazenado em upstream/main
git checkout upstream/main                                            # vai para a branch main do fork
# agora é possível visualizar todas as atualizações baixadas
git checkout main                                                     # retorna para a main local
git merge upstream/main                                               # mescla as mudanças baixadas do original com a branch atual do projeto
```

O projeto em questão possui 2 remotos associados para recebimento e envio de atualizações, entretanto, apenas o `origin` – remoto do fork – aceita ações do tipo `fetch`, enquanto o `upstream` serve apenas para `fetch` e atualizar o `origin` com novas mudanças, ou seja, não aceita o `fetch` pois normalmente não se tem permissões para tal:
```sh
origin    https://github.com/user/side_project.git (fetch)
origin    https://github.com/user/side_project.git (push)
upstream  https://github.com/original-autor/projeto.git (fetch)
upstream  https://github.com/original-autor/projeto.git (push)
```

É possível configurar o `upstream` localmente para não permitir push – se caso feito por engano:
```sh
git remote set-url --push upstream no_push
# resultando em:
git remote -v
upstream  https://github.com/original-autor/projeto.git (fetch)
upstream  (no push) (push)
```

##### `pull`
Este comando atualiza o repositório local com as mudanças existentes no remoto, ou seja, quando outros devs enviam alterações no repositório remoto, o comando **`git pull remote_repo_name remote_branch_name`** baixa essas mudanças e as integra ao repositório local.
```sh
git pull origin main
```
O exemplo acima realiza o download das mudanças na branch principal `main` do repositório remoto `origin` e realiza um merge com sua própria cópia local. **É importante destacar que as mudanças serão mescladas na branch em que o Git se encontra ativo no momento do `pull`.**

Para realizar o pull de alguma outra branch no repositório remoto que não exista localmente, o Git não criará automaticamente a branch remota localmente, na realidade ele fará um `merge` ou um `rebase` dos dados requisitados na branch atual, o que pode causar conflitos.
```sh
ralph@mach-1:~/Dev/GitHub/study (studying) git pull origin main # causará um conflito, pois a branch solicitada é a `main` enquanto a atual é `studying`
# a forma correta de se criar localmente e conectar à branch remota para realizar a atualização é utilizando o `switch`
```

##### `push`
Envia as mudanças locais na branch indicada para o repositório remoto `git push remote_name branch_name`. Depois de fazer commits localmente, este comando envia as mudanças para o repositório remoto, tornando-as visíveis para todos os colaboradores.
```sh
git push origin new-feat
```
O exemplo acima envia as alterações da branch local `new-feat` para a branch `new-feat` no repositório remoto, independente de qual a branch ativa no momento do `push` – ou seja, a branch indicada no comando será atualizada remotamente com as alterações desta mesma branch localmente. A partir de lá, podem ser feitos *pull requests* para mesclar esta branch à principal caso seja o objetivo.

Caso a branch atual seja a que será atualizada remotamente, basta usar somente **`git push`**, e o Git interpretará os campos omitidos como sendo o repositório remoto associado ao rastreamento – `upstream` – e a branch atualmente ativa.<br/>
No caso onde várias branches devem ser enviadas para o remoto de origem, basta usar a flag `--all`.
```sh
git push origin --all
```

Caso seja necessário *realocar* os commits feitos numa branch em outra, basta redirecionar o push da branch atual para a branch de destino. Se a branch alvo não existir no remoto ela será criada, e se já existir então será atualizada para refletir o conteúdo da branch atual – isso pode sobrescrever o histórico remoto ou ser rejeitado em caso de protected branches.
```sh
git push origin actual_branch:target_branch
```
Por exemplo, um push de uma `main` local para uma branch remota usada para deploy:
```sh
git push origin main:production
```

##### [git flow](https://danielkummer.github.io/git-flow-cheatsheet/index.pt_BR.html)
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
# ao iniciar, ele se encarrega de configurar as branches principais, de desenvolvimento e as de suporte
# sendo as de suporte aquelas que são excluídas logo após a finalização do trabalho, ou seja, que não serão mais utilizdas
git flow feature start doc # git flow feature start feat_name
# exemplo: este comando inicia o `start` em uma `feature` com o nome `doc`: `feature/doc`
# que neste exemplo serve para trabalhar a documentação do projeto
git branch                 # podemos ver a branch criada
  develop
* feature/docz
  main
# após realizar as alterações deve-se atualizar a branch
git commit -a -m "commit changes"
gt flow feature finish # git flow feature finish [branch_name]
# este comando indica que as alterações necessárias foram encerradas
# então o git-flow realiza o merge das alterações dessa branch no branch `develop` e então a branch `feature` é apagada localmente
#
# para lançar uma nova versão do programa, basta criar uma `release` do software e mesclá-la com a branch `main`
git flow release start 0.1.0 # git flow release start [version]
git branch # podemos ver a branch criada
  main
  develop
* release/0.1.0
# após realizar as alterações deve-se atualizar a branch
git commit -a -m "Commit changes"
gt flow release finish # gt flow release finish [version]
```

##### [gitmoji](https://gitmoji.dev/)
Esta é uma ferramenta open source para padronizar commits diretamente na CLI, é uma convenção que utiliza emojis no início das mensagens de commit com o objetivo de indicar visualmente o tipo de mudança feita no código, padronizando e categorizando commits rapidamente com base em ícones visuais, o que ajuda no preenchimento das mensagens evitando textos vagos e incompreensíveis, adicionando semântica leve ao histórico, o que facilita a leitura rápida de logs de commit. Pode ser usado simplesmente como uma página de guia para padronização de emojis, ou ser instalado via `npm` para acesso às facilidades via terminal.<br/>
Para isto, basta executar o comando a seguir no diretório do projeto – no mesmo nível que o diretório Git `.git`.
```sh
npm install --save-dev gitmoji-cli
```
Com o gitmoji instalado, é possível utilizar a ferramenta atravpes do utilitário `gitmoji` via terminal. Utilizando o parâmetro `-l` é possível visualizar a listagem de todos os emojis e suas respectivas representatividades.
```sh
gitmoji -l
✔ Gitmojis fetched successfully, these are the new emojis:
🎨 - :art: - Improve structure / format of the code.
⚡️ - :zap: - Improve performance.
🔥 - :fire: - Remove code or files.
🐛 - :bug: - Fix a bug.
🚑️ - :ambulance: - Critical hotfix.
✨ - :sparkles: - Introduce new features.
📝 - :memo: - Add or update documentation.
🚀 - :rocket: - Deploy stuff.
💄 - :lipstick: - Add or update the UI and style files.
🎉 - :tada: - Begin a project.
✅ - :white_check_mark: - Add, update, or pass tests.
🔒️ - :lock: - Fix security or privacy issues.
🔐 - :closed_lock_with_key: - Add or update secrets.
🔖 - :bookmark: - Release / Version tags.
🚨 - :rotating_light: - Fix compiler / linter warnings.
🚧 - :construction: - Work in progress.
💚 - :green_heart: - Fix CI Build.
⬇️ - :arrow_down: - Downgrade dependencies.
⬆️ - :arrow_up: - Upgrade dependencies.
📌 - :pushpin: - Pin dependencies to specific versions.
👷 - :construction_worker: - Add or update CI build system.
📈 - :chart_with_upwards_trend: - Add or update analytics or track code.
♻️ - :recycle: - Refactor code.
➕ - :heavy_plus_sign: - Add a dependency.
➖ - :heavy_minus_sign: - Remove a dependency.
🔧 - :wrench: - Add or update configuration files.
🔨 - :hammer: - Add or update development scripts.
🌐 - :globe_with_meridians: - Internationalization and localization.
✏️ - :pencil2: - Fix typos.
💩 - :poop: - Write bad code that needs to be improved.
⏪️ - :rewind: - Revert changes.
🔀 - :twisted_rightwards_arrows: - Merge branches.
📦️ - :package: - Add or update compiled files or packages.
👽️ - :alien: - Update code due to external API changes.
🚚 - :truck: - Move or rename resources (e.g.: files, paths, routes).
📄 - :page_facing_up: - Add or update license.
💥 - :boom: - Introduce breaking changes.
🍱 - :bento: - Add or update assets.
♿️ - :wheelchair: - Improve accessibility.
💡 - :bulb: - Add or update comments in source code.
🍻 - :beers: - Write code drunkenly.
💬 - :speech_balloon: - Add or update text and literals.
🗃️ - :card_file_box: - Perform database related changes.
🔊 - :loud_sound: - Add or update logs.
🔇 - :mute: - Remove logs.
👥 - :busts_in_silhouette: - Add or update contributor(s).
🚸 - :children_crossing: - Improve user experience / usability.
🏗️ - :building_construction: - Make architectural changes.
📱 - :iphone: - Work on responsive design.
🤡 - :clown_face: - Mock things.
🥚 - :egg: - Add or update an easter egg.
🙈 - :see_no_evil: - Add or update a .gitignore file.
📸 - :camera_flash: - Add or update snapshots.
⚗️ - :alembic: - Perform experiments.
🔍️ - :mag: - Improve SEO.
🏷️ - :label: - Add or update types.
🌱 - :seedling: - Add or update seed files.
🚩 - :triangular_flag_on_post: - Add, update, or remove feature flags.
🥅 - :goal_net: - Catch errors.
💫 - :dizzy: - Add or update animations and transitions.
🗑️ - :wastebasket: - Deprecate code that needs to be cleaned up.
🛂 - :passport_control: - Work on code related to authorization, roles and permissions.
🩹 - :adhesive_bandage: - Simple fix for a non-critical issue.
🧐 - :monocle_face: - Data exploration/inspection.
⚰️ - :coffin: - Remove dead code.
🧪 - :test_tube: - Add a failing test.
👔 - :necktie: - Add or update business logic.
🩺 - :stethoscope: - Add or update healthcheck.
🧱 - :bricks: - Infrastructure related changes.
🧑‍💻 - :technologist: - Improve developer experience.
💸 - :money_with_wings: - Add sponsorships or money related infrastructure.
🧵 - :thread: - Add or update code related to multithreading or concurrency.
🦺 - :safety_vest: - Add or update code related to validation.
✈️ - :airplane: - Improve offline support.
```

Com `gitmoji --help` é possível observar todos os parâmetros que podem ser utilizados com o gitmoji:
| comando         | ação                                            |
| --------------- | ----------------------------------------------- |
| `--commit, -c`  | Commit interativo usando o terminal.            |
| `--config, -g`  | Configuração de preferências gitmoji-cli.       |
| `--init, -i`    | Inicializa gitmoji como um commit hook.         |
| `--list, -l`    | List all the available gitmojis.                |
| `--remove, -r`  | Remove a previously initialized commit hook.    |
| `--search, -s`  | Busca gitmojis.                                 |
| `--update, -u`  | Sincroniza a lista de emojis com o repositório. |
| `--version, -v` | Imprime a versão instalada do gitmoji-cli.      |

Existem 2 maneiras de se utilizar o gitmoji nos commits, sendo uma manual e outra através de um **hook**:
- **manual**: **`git add . && gitmoji -c`** este comando adiciona os arquivos à staging area e então abre um menu do utilitário `gitmoji` para se criar o commit de forma interativa:
```sh
gitmoji -c
? Choose a gitmoji: begin
❯ 🎉  - Begin a project. 
  ⏪️  - Revert changes. 
  🍱  - Add or update assets.
? Choose a gitmoji: 🎉  - Begin a project.
? Enter the commit title [14/48]: Initial commit
? Enter the commit message: Starting versioning of the 
.alias/ directory
[main (root-commit) 57b1a07] 🎉 Initial commit
 1 files changed, 50 insertions(+)
 create mode 100644 file.ext
git log --oneline 
57b1a07 (HEAD -> main) 🎉 Initial commit
```
- **hook**: após inicializar o gitmoji no diretório do projeto **`gitmoji --init`**, ele interceptará toda ação de `git commit -m "message"`, e irá continuar o processo de commit dinâmico:
```sh
gitmoji -i
✔ Gitmoji commit hook created successfully
touch file
git add .
git commit # aqui é onde o hook é chamado, e ao invés de se abrir o core editor padrão
# que seria aberto para a escrita da mensagem no git commit, o gitmoji intercepta a ação
# e segue o processo de criação de mensagens de commit padronizadas, o mesmo que `gitmoji -c`
? Choose a gitmoji: 🧪  - Add a failing test.
? Enter the commit title [18/48]: Testing gitmoji -i
? Enter the commit message: Creating the gitmoji hook for intercepting and 
managing commit messages
[main 22211e1] 🧪 Testing gitmoji -i
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file
```

As maiores vantagens do gitmoji em relação a outras convenções incluem sua leitura visual rápida e intuitiva, alta integração com ferramentas CI/CD e de versionamento automático, um contra porém é que apesar de ser menos verbosa que a **Conventional Commits**, emojis nem sempre são universais, e em grandes projetos podem acabar causando ruído visual, o que pode ser compensado com títulos objetivos e concisos, além de mensagens detalhadas e claras nos commits. É ideal para projetos com foco em legibilidade e times pequenos ou com alta comunicação, mas deve ser evitado em ambientes onde o código precisa gerar changelogs automáticos a partir do commit, ou em ambientes corporativos com forte automação CI/CD baseada em mensagens.<br/>
O `gitmoji` é uma camada estética de semântica, quando usado com disciplina, propósito e alinhamento é um utilitário poderoso, mas não tão útil quando se necessita de rastreabilidade automatizada – emojis são adorno, não estrutura, e adorno sem estrutura vira enfeite confuso.

##### [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
Convenção semântica para mensagens de commit usada para tornar o histórico legível por humanos *e* máquinas. Serve como base para automaão de changelogs, versionamento semântico e integração com ferramentas de CI/CD. Sua principal utilidade é ser integrado e utilizado em ferramentas como `semantic-release` para o versionamento semântico – SemVer, gerando changelogs automáticos com `standard-version` a partir dos commits, e impor padrões – antes mesmo do `push` para validações por CI com `commitlint`.
```sh
type(escopo_opcional): detailed description
```

- Tipos Comuns:
  - **`feat`**: nova funcionalidade
  - **`fix`**: correção de bug
  - **`docs`**: documentação
  - **`refactor`**: refatoração
  - **`test`**: testes
  - **`chore`**: tarefas auxiliares
  - **`perf`**: melhorias de desempenho
  - **`ci`**: alterações no pipeline
- Sufixos Especiais:
  - **`!`**: mudança breaking → `feat!: remove autenticação anônima`
- Exemplos:
  - **`feat`**: adiciona login via OAuth
  - **`fix(auth)`**: corrige token expirado
  - **`refactor(core)`**: reorganiza lógica de autenticação
  - **`chore(ci)`**: atualiza versão do Node no pipeline

Para ser usado de forma eficiente, é necessário que seja implementado em projetos condizentes com sua robustez, ou seja, projetos que necessitem de extensa documentação, pois em times pequenos, o overhead pode matar a fluidez, onde uma convenção que exige mais disciplina do que o valor que entrega acaba ignorada ou sabotada. Além disso, exige maturidade do time, para que não acabe se usando de forma vaga uma convenção criada para ser profunda, pois o tipo `fix` não descreve *qual* bug foi resolvido, e `feat` não informa o *impacto* que a funcionalidade tem, sem uma descrição rica a estrutura se torna cosmética e a semântica superficial.<br/>
Seu principal objetivo é escrever mensagens para a *máquina*, a convenção incentiva formatação padrão para facilitar o uso e integração com ferramentas de automação. Concluindo, esta convenção é útil quando o projeto exige rastreabilidade automatizada e padronização semântica — mas inútil ou contraproducente se usado sem convicção, se usado em versionamento manual ou em times pequenos, se torna peso morto; mas se o CI/CD, changelog e SemVer são estratégicos no projeto, não usar essa convenção é perder automação "gratuita".<br/>
Uma forma de garantir seu uso correto no projeto é com o **`commitlint`**, que padroniza e avalia as mensagens de commits antes de serem enviadas ao repositório remoto, garantindo assim desde o desenvolvimento o enquadro das mensagens no formato `conventional commits`.

Para instalar o [commitlint](https://github.com/conventional-changelog/commitlint), é necessário navegar até o diretório do projeto e utilizar o comando:
```sh
npm install --save-dev @commitlint/{cli,config-conventional} husky
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
npm pkg set scripts.prepare="husky install"
npm run prepare
echo '#!/bin/sh
. "$(dirname "$0")/h"

exec < /dev/tty && npx cz --hook || exit 1' > .husky/_/prepare-commit-msg
echo '#!/bin/sh
. "$(dirname "$0")/h"

npx --no -- commitlint --edit "$1" || exit 1' > .husky/_/commit-msg
```

Para testar se uma mensagem de commit atende os padrões do conventional commits, usa-se o comando abaixo, que direciona o texto para o `commitlint/cli`, que analisa e retorna o resultado do teste da mensagem enviada:
```sh
echo "type(scope): detailed description" | commitlint
```

##### [commitizen](https://commitizen.github.io/cz-cli/)    
Por fim, a mais popular ferramenta de padronização de mensagens de commit, que automatiza a criação de mensagens de commit conforme formato pré-definido — geralmente o Conventional Commits — substituindo a escrita manual da mensagem de commit por um promp interativo, minimizando erros e garantindo padronização.<br/>
Trás consigo uma imposição leve de padrão, que elimina a necessidade do desenvolvedor memorizar sintaxe, além de evitar commits fora dos padrões como `fixes`, `stuff`, `update` e etc, que sabotam changelogs, semântica e automação. É integrado diretamente com ferramentas como **commitlint**, **semantic-release** e **changelog** automático.

Para usá-lo, é necessário [instalá-lo](https://github.com/commitizen/cz-cli) no diretório do projeto:
```sh
npm install --save-dev commitizen @commitlint/{cli,config-conventional} husky
echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
npx commitizen init cz-conventional-changelog --save-dev --save-exact
npm pkg set scripts.prepare="husky install"
npm run prepare
echo '#!/bin/sh
. "$(dirname "$0")/h"

exec < /dev/tty && npx cz --hook || exit 1' > .husky/_/prepare-commit-msg
echo '#!/bin/sh
. "$(dirname "$0")/h"

npx --no -- commitlint --edit "$1" || exit 1' > .husky/_/commit-msg
```

Agora basta usar **`npx cz`** para commitar, ou apenas o **`git commit`**, e então o hook do commitizen será executado para a criação da mensagem de commit.

##### LFS
O Git **L**arge **F**ile **S**ystem é uma extensão oficial usada para lidar com arquivos grandes como imagens, vídeos, áudio, binários, datasets, entre outros, que não devem ser armazenados diretamente no repositório Git, pois isso tornaria o repositório lento e pesado.<br/>
O Git é extremamente eficiente para arquivos de texto, mas para arquivos binários por exemplo não é tão eficiente, pois cada versão é salva como um arquivo inteiro, ou também arquivos grandes, pois ocupam espaço desnecessários aumentando rapidamente o tamanho do repositório e tornando o `clone`, `fetch` e `checkout` lentos.<br/>
O Git LFS não salva o conteúdo real do arquivo grande no Git, mas sim um ponteiro de texto pequeno, enquanto o conteúdo real está hospedado em outro servidor, como o GitHub LFS server por exemplo.<br/>
Para usá-lo, 1º deve ser instalado, podendo ser feito via `apt`:
```sh
sudo apt install git-lfs -y
```
Então, deve ser inicializado no repositório do projeto:
```sh
cd ~/project_name
git lfs install
```
E por fim, basta definir quais tipos de arquivo deverão ser rastreados pelo LFS:
```sh
git lfs track "*.psd"
git lfs track "*.mp4"
git add .gitattributes
```
Isso cria – ou atualiza – o arquivo `.gitattributes` com as regras de rastreamento LFS: `*.psd filter=lfs diff=lfs merge=lfs -text`.<br/>
Ao clonar um repositório que utiliza **Git LFS** não é necessário realizar nenhuma ação adicional além do clone, **apenas se atentar à clonar a branch correta, pois um repositório pode utilizar o LFS em uma branch e em outra não**.<br/>
Por exemplo, é perfeitamente possível que um projeto Git tenha uma branch `main` com arquivos versionados via Git LFS, enquanto uma sidebranch independente `dev` não use Git LFS — **desde que esta não contenha nem interaja com os arquivos rastreados pelo LFS**.

##### submodules
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

### FORK
Um **fork** é uma cópia independente de um repositório que permite modificar um projeto existente sem afetar o original. É um conceito muito comum em plataformas como **GitHub**, **GitLab** e **Bitbucket**, especialmente para colaboração em projetos de código aberto.<br/>
Um fork é criado quando se deseja contribuir, alterar ou evoluir um projeto não proprietário, permitindo assim que se faça modificações neste projeto.<br/>
A principal diferença entre um `fork` e um `clone` está em *onde* as ações acontecem. Enquanto um `clone` copia o repositório remoto para o computador local, o `fork` cria uma cópia do repositório na conta GitHub do desenvolvedor – ou seja, no servidor remoto de hospedagem dos dados do usuário.<br/>
As principais características que diferenciam um `fork` de uma `branch` estão em seus objetivos e em sua hospedagem. Uma vez que `forks` são criados para se trabalhar em projetos que não se tem acesso para realizar modificações no repositório original, enquanto uma `branch` é criada para permitir o desenvolvimento dentro do mesmo projeto, além de que um `fork` é hospedado no servidor remoto – da plataforma em questão – estando sempre disponível, já a `branch` pode existir remotamente ou apenas localmente, mas está sempre contida dentro do mesmo repositório.<br/>
A maior vantagem do fork é sem dúvidas o controle total do repositório, mesmo que o repositório original seja removido, o fork permanece intacto na conta do GitHub do usuário que o realizou, o que desaparece é apenas a ligação com o repositório original, deixando assim de ser um fork e passando a ser um repositório "normal" e independente.<br/>
Um ponto a se manter atenção é que forks podem ficar desatualizados se não forem sincronizados com o original.<br/>
Para se criar um fork, basta seguir alguns passos na GUI do GitHub:
1. **localiza o repositório desejado no GitHub:** `https://github.com/autor/project`
2. **então seleciona `fork`** – isso cria um diretório associado a conta do usuário que criou o fork: `https://github.com/user/project`
3. **daí é possível clonar seu fork:**
```sh
git clone https://github.com/user/project.git
cd ~/project
```
4. **por fim, basta criar uma nova branch e realizar modificações no projeto:**
```sh
git checkout -b my_fork
# modifica os arquivos
git add .
git commit -m "feat: add new func"
```
5. **agora, é só enviar as mudanças para o fork remoto:** `git push origin my_fork`
6. **caso queira implementar as modificações na origem do fork, basta _criar um Pull Request_ para o repositório original.**

### HOOKS
São scripts que o Git executa automaticamente quando certos eventos ocorrem em um repositório, como por exemplo commits, merges, pushs e etc. Ficam armazenados no diretório `.git/hooks/`, onde cada hook é um arquivo executável, geralmente escrito em ShellScript, Python ou Node.js, e é ativado por ações específicas do Git. Esse diretório contém exemplos de hooks, arquivos com extensão `.sample`, para usá-los basta remover a extensão e autorizar escrita para tornar o script executável.<br/>
Os Git Hooks mais utilizados são os de **`pre-commit`** e **`post-update`**, são ferramentas poderosas para automatizar e validar ações dentro do fluxo de versionamento com Git.

**`pre-commit`**<br/>
É executado *antes* do commit ser finalizado, geralmente para validar o código, rodar testes, checar padrões de formatação com *linters*, impedir commits com erros, entre várias outras possibilidades. Por exemplo:
```sh
#!/bin/bash

echo "pre-commit"

# proibir arquivos `.log` no staging
if git diff --cached --name-only | grep '\.log$'; then
  echo "error: unallowed files found"
  exit 1
fi

exit 0
```

Agora é necessário salvá-lo em `.git/hooks/pre-commit` e torná-lo executável:
```sh
chmod +x .git/hooks/pre-commit
```

**`post-update`**<br/>
São ações executadas no repositório remoto após um `git push`, muito útil em servidores Git próprios, como em servidores de integração contínua ou sistemas Git auto-hospedados. Normalmente estes scripts enviam notificações por e-mail, atualizam espelhos do repositório, executam scripts de deploy e notificam outros serviços externos.

Por exemplo:
```sh
#!/bin/bash

echo "push timestamp: $(date)" >> /var/log/git-push.log
```

Em seguida, basta salvá-lo em `.git/hooks/post-update` e torná-lo executável:
```sh
chmod +x .git/hooks/post-update
```

### <a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/progit.pdf">PROGIT</a>

## GITHUB
O GitHub é uma plataforma gratuita de hospedagem de código que facilita o compartilhamento e a colaboração entre desenvolvedores, além de garantir que o projeto possua um "*backup* na nuvem", permitindo que cada interessado no repositório possua localmente em sua máquina uma versão física completa do repositório, que pode ser modificada e alterada livrementa, enquanto o servidor armazena a versão principal.

### AUTH-KEYS
O GitHub possui 2 formas principais de autenticação para acessar repositórios e interargir via CLI, o **GitHub Personal Access Token** e a **SSH Key**.

#### **PAT**
Um token é uma senha gerada pelo GitHub, com permissões e escopos configuráveis. É ideal para autenticar operações Git via HTTPS, ou chamadas API REST, como cURL por exemplo. Sendo mais seguro que senhas, pois pode ter escopo limitado e ainda revogado, também é fácil implementá-lo em scripts automatizados de CI/CD, pois é compatível com qualquer máquina sem necessitar configurações extras.<br/>
O token é gerado em ["developer settings"](https://github.com/settings/tokens), sendo usado para autenticar as credenciais no lugar da senha da conta, por isto deve ser guardado com segurança após sua criação. Por exemplo quando se realiza um clone via HTTPS:
```sh
git clone https://github.com/user/repo.git
Username: user_name
Password: ghp_123456abcdef_PAT
```
> Em comandos cURL, deve ser informado via header `Authorization: token ghp_123456abcdef_PAT`

#### FG-PAT
O Fine-grained Personal Access Token é um tipo mais recente e mais seguro de token de autenticação pessoal, criado para substituir os `Personal Access Tokens - classic` com um controle de acesso mais refinado — ou seja, permite especificar com maior precisão o que o token pode ou não fazer. Possui um período de validade que garante que expire e seja revogado individualmente, sem afetar outros tokens. Ele pode conceder acesso somente a determinados repositórios e delimitar a realização de determinadas as ações.<br/>
Por exemplo, um FGPAT pode ser criado para acessar apenas o repositório `project` durantes apenas 30 dias, com permissão leitura e escrita no código mas sem gerenciamento de colaboradores ou de branches.<br/>
Para criar um FGPAT, deve-se acessar **(Tokens Fine-grained tokes)[https://github.com/settings/personal-access-tokens]**, preencher os campos:
- **nome**
- **data de expiração**
- **repositórios específicos**
- **permissões detalhadas**

E então armazenar e utilizar o token gerado assim como em **PAT**.

#### SSH-KEY
Este método usa um par público e privado de chaves criptográficas assimétricas para autenticar o usuário no servidor do GitHub. A chave pública deve ser adiciona à conta GitHub do usuário para que o cliente possa utilizar a chave privada local para realizar automaticamente a autenticação via SSH.<br/>
Para que a autenticação aconteça, o usuário deve gerar um par de chaves na máquina utilizando o **`ssh-keygen`**. Para gerar uma chave SSH utilizando este método, é necessário possuir o OpenSSH instalado, que já é embarcado por padrão na maioria das distribuições Linux.
```sh
ssh-keygen -t ed25519 -C "user_email@email.com"
```
> `-t ed25519`: especifica o tipo de criptografia, é mais moderno e seguro que padrão RSA.<br/>
> `-C`: adiciona um comentário à chave, normalmente o e-mail do criador.

Então, basta seguir as instruções e atender as solicitações requisitadas. Para uma criação padrão de chaves, siga o recomendado durante o processo, pressionando `Enter` para os requisitos opcionais. **É possível criar chaves com parâmetros personalizados como com outro nome e uma senha por exemplo, mas isto pode causar conflitos se não souber o que se está fazendo exatamente, por isso o recomendado para a criação das chaves é manter os parâmetros padrões.**<br/>
Ao final da configuração, sera exibida uma saída como:
```sh
Your identification has been saved in /home/user_name/.ssh/id_ed25519
Your public key has been saved in /home/user_name/.ssh/id_ed25519.pub
```
Por fim, para associar a chave à conta GitHub e ter acesso ao repositório remoto, basta copiá-la:
```sh
cat ~/.ssh/id_ed25519.pub
```
Adicionar selecionando [New SSH Key](https://github.com/settings/keys), e então basta nomeá-la e clicar em `salvar`.<br/>
Depois de adicionar ao GitHub é possível testar a conexão:
```sh
ssh -T git@github.com
```
Se estiver tudo certo, será exibida uma mensagem como esta no terminal:
```md
Hi user_name! You've successfully authenticated, but GitHub does not provide shell access.
```

Usa-se **URLs SSH** para fazer `clone`, `push` e `pull` em um repositório, não sendo mais necessário informar usuário e token a cada ação, sendo um método ideal para uso diário no terminal.
```sh
git clone git@github.com:user_name/repo.git
```

#### GPG-KEY
Uma GNU Privacy Guard key é uma chave criptográfica usada para assinar digitalmente commits e tags no Git, garantindo autenticidade e integridade. Ela serve como uma forma de comprovar o autor de uma alteração no código, sem que seja possível forjar isso. Assinar um commit com uma GPG key é como colocar uma assinatura digital criptografada. Isso faz com que, ao ver um commit no GitHub, ou mesmo em outro sistema, ele apareça como `✅ verified`, para evitar falsificação de identidade e aumentar a rastreabilidade.<br/>
Ao gerar o par de chaves GPG, a **privada** *é usada para assinar commits localmente*, enquanto a **pública** *é usada pelo GitHub para que validar as assinaturas*.<br/>
Para gerar uma GPG key, basta utilizar o GnuPG que já vem embarcado na maioria das distros Linux, configurar alguns parâmetros durante a criação e então configurar o Git para que use a chave:
```sh
gpg --full-generate-key # gera a chave
# alguns parâmtros requisitados durante a criação:
#   type: RSA and RSA || default
#   size: 4096 bits (LONG)
#   expiration: 0 || define
#   username & e-amil: info === GitHub
#   password: optional
#
# após gerada, deve-se obter o ID da chave para configurá-la
git config --global user.signingkey $(gpg --list-secret-keys --keyid-format LONG | grep '^sec' | sed -E 's|.*\/([0-9A-F]+).*|\1|')
git config --global commit.gpgsign true
# agora, ao fazer commits, eles são assinados usando a GPG key
```

Feito isto, basta obter a chave pública para configurá-la no GitHub:
```sh
gpg --armor --export $(gpg --list-secret-keys --keyid-format LONG | grep '^sec' | sed -E 's|.*\/([0-9A-F]+).*|\1|')
```
Colar a chave em **[`New GPG key`](https://github.com/settings/keys)**, e está habilitada para realizar assinaturas nos commits realizados.

### PULL REQUESTS
Um **P**ull **R**equest é uma solicitação para que alterações feitas em um **fork** ou em uma branch de desenvolvimento sejam mescladas com outra branch — geralmente a `main` ou `develop` de um repositório principal.<br/>
Basicamente, se diz ao mantenedor do projeto para que revise e avalie as alterações propostas e, se aceitas, as incorpore no repositório principal.

#### Fluxo do Pull Request no GitHub
##### GUI
O GitHub disponibiliza ferramentas na sua GUI, para que o PR seja feito manualmente no website:

1. criar uma nova branch no repositório local:
```bash
git checkout -b new_feat
```
2. Implementar as alterações no código.
3. Enviar as atualizações para o repositório remoto, normalmente um *fork*:
```bash
git push origin new_feat
```
4. crie um Pull Request:
  - Acessar o repositório proprietário no GitHub.
  - Selecionar: `Compare & Pull Request`.
  - Escolher:
     - **base:** o repositório e branch destino, por exemplo a `main` do projeto original `upstream`.
     - **compare:** a branch com as alterações.
   * Escrever uma descrição clara das alterações feitas.
   * Por fim, selecionar: `Create Pull Request`.

Um bom exemplo seria de um fork feito de `github.com/original/repo` para `github.com/local_user/repo`.
1. Realiza mudanças na branch `GUI-layout`
2. Faz-se um `push` para `local_user/repo:GUI-layout`
3. Então, no GitHub cria-se um PR de:
  - **`local_user/GUI-layout`** -> **`original/main`**

##### CLI
Também é possível realizar um Pull Request via CLI utilizando o ferramentas CLI e a API do GitHub.

###### cURL
Para realizar o PR com o cURL, é necessário possuir: um personal access token com permissão para criar PRs, os dados do fork e do repositório original, e claro, já ter realizado o `push` da branch local para o fork remoto.
```sh
curl -X POST
  -H "Authorization: token PERSONAL_ACCESS_TOKEN-ghp_123456abcdef"
  -H "Accept: application/vnd.github+json"
  https://api.github.com/repos/ORIGINAL_AUTHOR_NAME/ORIGINAL_REPO_NAME/pulls
  -d '{
    "title": "PR TITLE",
    "head": "LOCAL_USER:own_branch",
    "base": "main",
    "body": "Pull request description."
  }'
```

###### gh
Ou ainda com a opção nativa do GitHub, o [GitHub CLI – `gh`](https://cli.github.com/). Esta é uma ferramenta oficial que permite interagir com o GitHub diretamente do terminal — incluindo criar pull requests de forks.

```bash
sudo apt install gh -y
gh auth login            # só é necessário realizar 1 única vez
git push origin new_feat # envia sua branch para o seu fork
gh pr create --base main --head local_user_:new_feat --repo original_author/original_repo_name

# --base branch_name: branch de destino no repositório original
# --head local_user:new_feat: a branch autalizada no fork
# --repo: repositório de destino
```

## GITLAB
Assim como o GitHub, esta é uma plataforma de hospedagem de código Git com funcionalidades para colaboração, controle de versão, revisão de código, continuous integration and development e DevOps em geral. Também oferece interface web, integração com ferramentas externas, controle de permissões e automação.<br/>
As principais diferenças entre o GitHub e o GitLab estão na arquitetura e flexibilidade de ambos. Enquanto o GitHub foca na experiência do desenvolvedor e colaboração entre devs, o GitLab foca em pipeline, controle e automação de ponta a ponta, sendo o GitHub mais indicado por sua facilidade de uso e utilidade como "rede social de código", enquanto o GitLab é mais profundo e autônomo. Se o projeto precisa de exposição pública, agilidade e colaboração leve, o GitHub é a melhor escolha, mas se o foco é integração DevOps completa, controle interno e customização profunda, então o GitLab é mais coerente. Escolher mal a ferramenta gera dívida estrutural – GitHub com gambiarras de CI e CD acaba se tornando um monstro, GitLab sem necessidade de uso do seu arsenal é burocratização desnecessária. Uma forma de avaliar qual a melhor ferramenta para o projeto é determinar qual o foco do projeto, *colaboração fluida* ou *domínio sobre a máquina DevOps*, e a resposta irá definir qual a melhor plataforma.

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/continuous_integration_e_continuous_deployment_ci_cd.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/ambientes_virtuais_venv_virtualenv.md">next</a>