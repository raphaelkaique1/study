# CONTROLE DE VERSÃO
 O controle de versão é um sistema que registra o histórico de mudanças feitas em um arquivo ou conjunto de arquivos ao longo do tempo, permitindo recuperar versões anteriores, acompanhar modificações, rastrear cada alteração, minimizar o risco de perda de código ou arquivos importantes e a colaboração de forma eficiente. É uma das mais importantes ferramentas de qualquer projeto de software bem desenvolvido, pois garante a qualidade no desenvolvimento.<br/>
 Existem 3 tipos básicos de controle de versão:
 - **LOCAL**<br/>
 Feito manualmente com ferramentas simples, armazenados no próprio computador ou em um servidor local.
 - **CENTRALIZADO - CVCS**<br/>
 Usa um único servidor com acesso via internet que contém todas as versões, por exemplo **SNV**.
 - **DISTRIBUÍDO - DVCS**<br/>
 Cada usuário tem uma cópia completa do respositório, como por exemplo no **Git** ou **Mercuiral**.

 Mas antes de iniciar o versionamento de qualquer projeto, primeiro precisamos de saber alguns conceitos sobre **ambiente de desenvolvimento** para entendermos quais são os arquivos de desenvolvimento privados, quais são os arquivos de produção públicos, quais licenças aplicam as versões do software e as ferramentas de versionamento, rastreamento de atividades e também **intgration** e **deployment**.

## FLUXO DE TRABALHO PARA DESENVOLVIMENTO DE SOFTWARE
Antes de iniciarmos o planejamento da arquitetura de um projeto, precisamos primeiro estruturar nosso ambiente de desenvolvimento. Este é um passo importante para que o fluxo de trabalho seja fluído e constante, pois não adianta seguir um modelo de estrutura de códificação se nem o ambiente de desenvolvimento possui uma boa organização. Estrutura de pastas, descrição do projeto, utilização de Agile Methodologies como Kanbam ou Scrum nos ajudam a criar um ambiente de programação elevado e funcional. Um ambiente de desenvolvimento bem estruturado se inicia na organização do desktop, das pastas do ambiente de desenvolvimento, a estrutura para o ambiente de produção, a documentação extensíva e a documentação básica e mais outros assuntos que veremos adiante.<br/>
Começando pela estrutura básica dos diretórios do projeto, não existe um único padrão que funcione para todos os projetos, mas há convenções amplamente adotadas para a organização da estrutura de pastas em projetos de software, seja para desktop, web, backend ou frontend.

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

### **Template 1 - Básico (Essencial)**
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

## **Tipos de Licenças de Código**<br/>As licenças de software são geralmente classificadas em **proprietárias** ou **livres (open source)**.  

### **1. Licenças Proprietárias**  
- O código-fonte **não** é disponibilizado livremente.  
- O uso, modificação e redistribuição são **restritos** pelo detentor dos direitos.  
- Exemplos:  
  - **Microsoft Windows**  
  - **Adobe Photoshop**  
  - **Oracle Database**  

---

### **2. Licenças Open Source (Código Aberto)**  
Permitem acesso ao código-fonte e geralmente permitem modificações e redistribuição, mas com algumas restrições dependendo do tipo de licença.

#### **2.1. Licenças Permissivas**  
- Permitem o uso, modificação e distribuição sem muitas restrições.  
- O software pode ser incorporado a projetos proprietários.  
- Exemplos:  
  - **MIT**  
  - **Apache 2.0**  
  - **BSD**  

#### **2.2. Licenças Copyleft (Restritivas)**  
- O software modificado ou derivado **deve** manter a mesma licença.  
- Exigem que o código-fonte seja sempre disponibilizado.  
- Exemplos:  
  - **GPL (General Public License)**  
  - **LGPL (Lesser General Public License)**  
  - **AGPL (Affero GPL)**  

#### **2.3. Licenças Específicas para Documentação ou Criatividade**  
- **Creative Commons (CC-BY, CC-BY-SA, etc.)**: Muito usada para documentação de software.  
- **GNU FDL (Free Documentation License)**: Específica para manuais e tutoriais.  

---
**Aqui está um resumo das licenças mencionadas, organizadas por categoria e com explicações sobre suas permissões e restrições.**
---

## **1. Licenças Permissivas (Mais Livres)**
Permitem o uso, modificação e redistribuição sem muitas restrições, geralmente exigindo apenas atribuição de créditos.

### **1.1. Apache License 2.0 (Apache-2.0)**
- Permite uso, modificação e distribuição.
- Requer atribuição do autor original.
- Possui uma cláusula de patentes que protege os contribuintes contra processos judiciais.

### **1.2. Boost Software License 1.0 (BSL-1.0)**
- Sem restrições sobre uso ou modificação.
- Apenas requer que o aviso de copyright seja mantido.

### **1.3. BSD Licenses**
- **BSD 2-Clause (BSD-2-Clause)**: Apenas exige atribuição ao autor original.  
- **BSD 3-Clause (BSD-3-Clause, BSD-3-Clause-Clear)**: Adiciona restrição para evitar uso do nome do autor em promoções.  
- **BSD 4-Clause (BSD-4-Clause)**: Inclui uma cláusula extra proibindo uso promocional, mas raramente usada hoje.  
- **BSD Zero-Clause (0BSD)**: Nenhuma restrição, permite até remover a atribuição.  

### **1.4. MIT License (MIT)**
- Extremamente permissiva, usada amplamente por projetos open-source.
- Permite uso, modificação e distribuição sem restrições.
- Apenas requer atribuição.

### **1.5. ISC License (ISC)**
- Similar à licença MIT, com texto mais curto.

### **1.6. The Unlicense (Unlicense)**
- Coloca o software no domínio público, sem restrições.

### **1.7. zLib License (Zlib)**
- Permite uso livremente, mas exige que alterações sejam claramente marcadas.

---

## **2. Licenças Copyleft (Mais Restritivas)**
Exigem que o software derivado mantenha a mesma licença.

### **2.1. GNU Licenses**
- **GPL (General Public License)**: Obriga que qualquer software derivado também use GPL.  
  - **GPL-2.0**: Menos flexível.  
  - **GPL-3.0**: Melhor proteção contra patentes e restrições de hardware.  
- **AGPL (Affero GPL - AGPL-3.0)**: Similar ao GPL, mas obriga a disponibilização do código mesmo que o software seja acessado via web (SaaS).  
- **LGPL (Lesser General Public License)**: Menos restritiva que a GPL, permitindo uso em software proprietário.  

### **2.2. Mozilla Public License 2.0 (MPL-2.0)**
- Requer que apenas arquivos modificados permaneçam open-source.
- Permite integração com software proprietário.

### **2.3. Eclipse Public License (EPL-1.0, EPL-2.0)**
- Permite uso comercial, mas exige que alterações sejam compartilhadas.

### **2.4. European Union Public License (EUPL-1.1)**
- Semelhante ao GPL, mas compatível com leis da União Europeia.

---

## **3. Licenças Criativas e Educacionais**
Focadas em documentação, materiais educacionais e fontes.

### **3.1. Creative Commons (CC)**
- **CC0-1.0**: Equivalente ao domínio público.  
- **CC-BY-4.0**: Permite qualquer uso, desde que o autor seja citado.  
- **CC-BY-SA-4.0**: Igual à anterior, mas exige que obras derivadas mantenham a mesma licença.  

### **3.2. Educational Community License (ECL-2.0)**
- Parecida com Apache 2.0, mas voltada para software educacional.

### **3.3. LaTeX Project Public License (LPPL-1.3c)**
- Específica para documentos e pacotes LaTeX.

### **3.4. SIL Open Font License (OFL-1.1)**
- Voltada para fontes tipográficas, permitindo redistribuição e modificação.

---

## **4. Licenças Proprietárias e Específicas**
Licenças que misturam elementos abertos e fechados.

### **4.1. Microsoft Public License (MS-PL)**
- Permite uso comercial, mas não pode ser combinada com software GPL.

### **4.2. PostgreSQL License**
- Semelhante à licença BSD, voltada para o banco de dados PostgreSQL.

### **4.3. Open Software License (OSL-3.0)**
- Parecida com a GPL, mas menos popular.

---

## **5. Licenças Humorísticas**
Criadas de forma informal, mas ainda legalmente válidas.

### **5.1. Do What The F*ck You Want To Public License (WTFPL)**
- Sem restrições, literalmente permite "fazer o que quiser" com o código.

## LOG
 O arquivo `log` é onde começamos a prototipar o versionamento do código. Neste tipo de arquivo podemos encontrar mudanças de um backup para o trabalho atual entre outros registros de eventos e atividades que ocorrem em um sistema computacional. Esses registros, geralmente em formato de texto, incluem informações como data e hora (timestamp), tipo de evento, origem e detalhes adicionais relevantes. A principal função dos arquivos de log é fornecer uma trilha de auditoria que auxilia na monitoração, diagnóstico e solução de problemas em sistemas de TI.

**Principais tipos de arquivos de log:**

- **Logs de eventos:** Registram atividades gerais do sistema, fornecendo uma trilha de auditoria para solucionar problemas.

- **Logs do sistema:** Contêm registros de eventos do sistema operacional, como alterações, mensagens de inicialização, erros e alertas.

- **Logs de acesso:** Documentam solicitações de arquivos ou recursos, incluindo informações sobre quem acessou, quando e de onde.

- **Logs de segurança:** Monitoram eventos relacionados à segurança, como tentativas de login, alterações de permissões e possíveis intrusões.

- **Logs de alterações:** O **`CHANGE LOG`** mantêm um histórico cronológico de modificações realizadas em sistemas ou aplicações, facilitando o controle de versões e auditorias. citeturn0search0

**Importância dos arquivos de log:**

- **Monitoramento e manutenção:** Permitem acompanhar o desempenho e a saúde de sistemas e aplicações, identificando e solucionando problemas de forma proativa.

- **Segurança:** Ajudam na detecção de atividades suspeitas ou não autorizadas, fortalecendo a postura de segurança da organização.

- **Auditoria e conformidade:** Fornecem registros detalhados que são essenciais para auditorias internas e para garantir a conformidade com regulamentações e políticas corporativas.

- **Análise de desempenho:** Oferecem insights sobre o uso de recursos e comportamento do sistema, auxiliando na otimização e planejamento de capacidade. citeturn0search0

**Desafios no gerenciamento de logs:**

- **Volume de dados:** Sistemas modernos geram uma quantidade massiva de logs, tornando o armazenamento e a análise um desafio significativo.

- **Variedade de formatos:** Diferentes sistemas e aplicações produzem logs em formatos variados, dificultando a padronização e a análise integrada.

- **Velocidade de geração:** A rapidez com que os logs são gerados pode superar a capacidade de processamento manual, exigindo soluções automatizadas e escaláveis. citeturn0search0

## RELEASES
Um **release** é uma versão específica de um software que é disponibilizada ao público ou a um grupo de usuários. Cada release pode incluir novas funcionalidades, correções de bugs e melhorias de desempenho.  

### **Tipos de Releases:**  
1. **Major Release** (Versão principal) → Mudanças significativas, podendo quebrar compatibilidade.  
2. **Minor Release** (Atualização menor) → Novos recursos adicionados sem quebrar compatibilidade.  
3. **Patch Release** (Correção) → Pequenas melhorias e correções de bugs.  
4. **Pre-release** → Versões beta, alfa ou candidatas a lançamento (RC - Release Candidate).  
5. **LTS (Long Term Support)** → Versões com suporte de longo prazo, estáveis para produção.  

O **Versionamento Semântico (Semantic Versioning - SemVer)** é um padrão para nomear versões de software de forma previsível e consistente. Nele, cada número tem um significado específico, geralmente dividido em três partes: **MAJOR.MINOR.PATCH**.  

### **1. MAJOR (Mudanças que quebram compatibilidade)**
Indica uma **versão principal** e é incrementado quando há mudanças significativas ou incompatíveis no software, como:  
- Alterações que quebram a compatibilidade com versões anteriores.  
- Novas funcionalidades ou reestruturações completas.  

**Exemplo**: De 1.0.0 para 2.0.0, o software provavelmente não será compatível com a versão anterior.  

---

### **2. MINOR (Novos recursos, mas compatível com versões anteriores)**  
Indica uma **versão secundária** e é incrementado quando são adicionadas **novas funcionalidades** ao software de forma **compatível** com a versão anterior.  
- Não quebra a compatibilidade existente.  
- Geralmente envolve melhorias significativas ou novos recursos.  

**Exemplo**: De 1.0.0 para 1.1.0, funcionalidades novas foram introduzidas, mas o sistema permanece compatível com 1.0.0.  

---

### **3. PATCH (Correção de bugs ou pequenas melhorias)**  
Indica **correções ou ajustes** menores no software. É incrementado para:  
- Correção de bugs.  
- Melhorias de desempenho ou ajustes internos que não alteram as funcionalidades.  

**Exemplo**: De 1.0.0 para 1.0.1, foram corrigidos problemas ou implementadas pequenas melhorias sem impacto no uso geral.  

---

### **Regras do SemVer:**  
1. **Mudança MAJOR (1.x.x → 2.0.0)**  
   - Introdução de mudanças **incompatíveis** com versões anteriores.  
   - Pode remover ou alterar APIs.  

2. **Mudança MINOR (1.0.x → 1.1.0)**  
   - Adiciona funcionalidades **novas**, mas sem quebrar compatibilidade.  
   - APIs existentes permanecem funcionando.  

3. **Mudança PATCH (1.0.0 → 1.0.1)**  
   - Apenas **correções de bugs** ou pequenas melhorias.  
   - Nenhuma funcionalidade nova é adicionada.  

---

### **Exemplos Práticos:**  
| Versão    | O que mudou?                                          |
|-----------|-------------------------------------------------------|
| **1.0.0** | Primeiro lançamento estável                           |
| **1.1.0** | Novo recurso adicionado sem quebrar compatibilidade   |
| **1.1.1** | Pequena correção de bug                               |
| **2.0.0** | Mudanças que quebram compatibilidade com a versão 1.x |

---

### **Extensões do SemVer:**  
1. **Pre-release (Versões experimentais):**  
   - **1.2.0-alpha.1** (Versão alfa)  
   - **1.2.0-beta.3** (Versão beta)  
   - **1.2.0-rc.1** (Release Candidate, quase final)  

2. **Build Metadata:**  
   - Exemplo: `1.2.0+20240218`  
   - Indica uma versão específica para fins internos.  

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

**[Trac](https://trac.edgewall.org/):**

O Trac é uma plataforma de gerenciamento de projetos baseada na web, projetada para equipes de desenvolvimento de software. Ele oferece recursos como rastreamento de problemas, gerenciamento de código-fonte e integração com sistemas de controle de versão. Sua interface simples e recursos focados no desenvolvimento tornam-no adequado para equipes que utilizam metodologias ágeis.

**[Kanboard](https://kanboard.org/):**

O Kanboard é uma ferramenta de gerenciamento de projetos de código aberto que utiliza o método Kanban. Ele permite a visualização do fluxo de trabalho por meio de quadros Kanban, facilitando o acompanhamento de tarefas e a identificação de gargalos. Além disso, oferece recursos como automação de tarefas, integração com outras ferramentas e suporte a plugins.

**[Trello](https://trello.com/):**

O Trello é uma plataforma de gerenciamento de projetos baseada na web que utiliza quadros Kanban para organizar tarefas. Sua interface intuitiva permite a criação de listas e cartões, facilitando a colaboração entre equipes. O Trello oferece integrações com diversas ferramentas e possui uma versão gratuita com recursos limitados, além de planos pagos com funcionalidades adicionais.

**[Taiga](https://taiga.io/):**

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

**Definição de variáveis de ambiente:**

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

### .git
### .gitignore
### .gitkeep
### git stagin area
### git branches
### [git flow](https://danielkummer.github.io/git-flow-cheatsheet/index.pt_BR.html)
Como visto em **RELEASES**, existem diferenças significativas entre as versões do código que é disponibilizado no ambiente de produção. Cada tipo de release contém uma linha de trabalho que trata diferentes áreas do software. O Git é muito complexo e não existe uma única forma de usá-lo, para simplificarmos a nossa forma de trabalho foi criado o `gitflow`, um pugglin para o Git.<br/>
O segredo do gitflow, é o trabalho com branches bem definidas e estabelecer o fluxo de trabalho para o envio de código de um branch para o outro.

![Image](https://github.com/user-attachments/assets/300d2ced-f295-4d66-9325-4d464150fde1)

- **master || main**<br/>
Este é o branch principal, onde reside o código que já está pronto para lançamento.
- **hotfix**<br/>
São branches destinados à correções rápidas e alternativas para resolução de bugs pequenos que precisam ser enviados logo para produção.
- **release**<br/>
É a branche onde cada alteração significativa no código em develop é enviada para produção como uma nova versão do software.
- **develop**<br/>
É o branch de desenvolvimento, onde acontece a integração das funcionalidades desenvolvidas. Essas funcionalidades são criadas nos branches do tipo **features**.
- **features**<br/>
Branches designidas para a criação das funcionalidades onde podem ser realizados teste unitários, e em seguida enviadas para serem testadas na branch develop.

Para instalar e usar o git flow deve-se seguir os seguintes passos:<br/>
```git flow <branch_name> <process_status: start || finish> <workflow_name>```
```sh
sudo apt install -y git-flow
git flow init # no diretório do projeto inicie o git flow
git flow feature start doc # exemplo: este comando da `start` em uma `feature` com o nome `doc`, que neste caso serve para trabalhar a documentação do projeto
git branch # podemos ver a branch criada
  develop
* feature/doc
  main
# após realizar as alterações deve-se atualizar a branch
git commit -a -m "Commit changes"
gt flow feature finish # indica que as alterações necessárias foram encerradas, então o git-flow realiza o merge das alterações dessa branch no branch `develop` e então a branch `feature` é apagada localmente

# vamos agora criar uma release do software para ser mesclada com a branch main lançando assim uma nova versão do programa
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
Um submodulo do git nada mais é do que um repositório dentro do outro, e ainda, a versão desse repositório está travada. Isso constitui um sistema de gestão de dependências bem simples e integrado usando o próprio git. Ou seja, é uma forma de distribuirmos nosso código junto com as bibliotecas e demais requisitos que são necessários o embarque automáticamente no repositório git principal.<br/>
Mas é preciso muita atenção, pois o fluxo de trabalho pode acabar se tornando complexo se não for bem compreendido este conceito, pois os submodulos podem ser recursivos, ou seja, um repositório pode conter outros submodulos e ainda cada um deles conterem mais submodulos.<br/>
Vejamos como adicionar um submodulo:<br/>
`git submodule add <url_repo> <dir_name>`
```bash
# navegue até o repositório do projeto principal, e então adicione o repositório da dependência do projeto
git submodule add https://github.com/user/repo dir_name
cat .gitmodules # isso mostra o caminho para a referência do diretório no submodulo
[submodule "dir_name"]
  path = dir_name
  url = https://github.com/user/repo
# agora podemos incluir este módulo ao nosso repositório remoto, e sempre que nosso projeto for clonado, essa referência será clonada também
git commit -a -m "Commit changes"
```
Este é o caso do módulo do `node.js` por exemplo. O arquivo do submodulo dentro do nosso diretório é apenas uma entrada para o repositório original do submodulo. Ou seja, um submodulo é uma referência para o git qual versão queremos usar no nosso projeto e onde buscar os arquivos do diretório submodulo indicado.<br/>
Isso é bem interessante para a distribuição de dependências do nosso projeto, onde quando uma versão específica da depedência é necessária para nosso software, podemos subí-la no nosso projeto sem necessariamente ter que incluir os arquivos no diretório, podemos apenas referenciá-los.

```Shell
git --version # git version x.xx.x

# install git
sudo apt update upgrade -y
sudo apt install git curl -y

# git config
git config --global user.name "<name>"
git config --global user.email "<address@email.com>"
git config --global credential.helper cache-store # cache: stores credentials in memory for a default period of 15 minutes. To configure the cache duration, you must use the --timeout flag and assign the desired time in seconds, example: cache --timeout=3600 || store: permanently stores credentials in a plain text file on disk. Because the file is plain, the credentials are visible in clear text, so caution should be taken when using this method on shared systems or in less secure environments.
git config --list # git config --global user=name/email & +
nano ~/.gitconfig # user info edit

# new repository
cd ~/<file_directory>
echo > .gitkeep
git init
# touch .gitignore
git add .
git commit -m "Commit changes"
curl -u <user_name>:<personal_token> https://api.github.com/user/repos -d '{"name":"<repository_name>"}' # [https://github.com/settings/tokens/new](https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#como-criar-um-personal-access-token-classic)
git branch -M main
git remote add origin https://github.com/<user_name>/<repository_name>.git
git push -u origin main

# existing repository
git remote add origin https://github.com/<user_name>/<repository_name>.git
git branch -M main
git push -u origin main

# clone repository
git clone https://github.com/<user_name>/<repository_name>.git
Username: OWNER_USERNAME
Password: PERSONAL_ACCESS_TOKEN
git config --global credential.helper cache

# creating new branch
cd ~/<file_directory>
git init

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

<a href="https://github.com/raphaelkaique1/study/blob/main/3-bancos_de_dados/3.2-nosql/mongodb_redis_neo4j.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/ambientes_virtuais_venv_virtualenv.md">next</a>
<!--  -->