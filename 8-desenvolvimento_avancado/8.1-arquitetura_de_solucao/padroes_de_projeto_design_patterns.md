# PADRÕES DE PROJETO
Ao longo da vida de um desenvolvedor, muito código será produzido; e é possível que, a cada novo projeto, surjam problemas similares à problemas passados, e problemas que foram resolvidos no passado, talvez possam apresentar a mesma solução para os problemas no presente. Quando isso acontece, uma biblioteca de código está sendo desenvolvida. Isso é muito comum em desenvolvimento de software: pegar uma solução de um problema específico e repetitivo, tansformar essa solução em código abstrato e reutilizar em outros casos conforme necessário. Por isso é imporante em todo projeto, verificar se já existem bibliotecas que resolvem o problema em questão, caso contrário, criemos uma nova.<br/>
Uma outra boa prática de desenvolvimento, que não é simplesmente usar bibliotecas, mas sim usar **design patterns**. *Um padrão de desenvolvimento, consiste numa forma de desenvolvimento reutilizavel e que é considerada como uma boa prática.* **Design Patterns** são soluções reutilizáveis para problemas recorrentes no desenvolvimento de software. Eles fornecem templates ou descrições de como resolver desafios comuns de design de forma eficiente e eficaz. Esses padrões não são implementações de código prontas para uso, mas sim diretrizes que podem ser adaptadas conforme as necessidades específicas de cada projeto.<br/>
O conceito de padrões de projeto foi introduzido pelo arquiteto Christopher Alexander em 1977, no livro "A Pattern Language: Towns, Buildings, Construction", onde ele catalogou soluções para problemas recorrentes na arquitetura. Posteriormente, em 1994, os engenheiros de software conhecidos como "Gang of Four" (Erich Gamma, Richard Helm, Ralph Johnson e John Vlissides) adaptaram esses conceitos para o desenvolvimento de software, publicando o influente livro "Design Patterns: Elements of Reusable Object-Oriented Software".<br/>
s padrões de projeto são geralmente classificados em três categorias principais:
1. **Padrões Criacionais:** Relacionados à criação de objetos, abstraindo o processo de instância para aumentar a flexibilidade e a reutilização de código.
2. **Padrões Estruturais:** Focam na composição de classes ou objetos para formar estruturas maiores, facilitando a adaptação e a escalabilidade do sistema.
3. **Padrões Comportamentais:** Tratam da comunicação entre objetos, definindo maneiras eficientes de interagir e distribuir responsabilidades.

**Benefícios dos Design Patterns:**
- **Reusabilidade:** Ao aplicar soluções comprovadas, reduz-se a necessidade de reinventar a roda para problemas semelhantes.
- **Manutenibilidade:** Códigos baseados em padrões são mais fáceis de entender, modificar e expandir.
- **Comunicação:** Fornecem uma terminologia comum entre desenvolvedores, facilitando a colaboração e a documentação.

## [TDD](https://www.youtube.com/watch?v=0BWSms3J40Y)
Uma metodologia de Design Pattern é o **Test-Driven Development**, que  é uma prática de desenvolvimento de software onde os testes automatizados são escritos antes do código de produção. Essa abordagem promove a criação de código mais confiável, modular e de fácil manutenção.

**Ciclo do TDD:**<br/>
O processo de TDD é estruturado em três etapas principais, frequentemente referidas como "Red, Green, Refactor":

1. **Red (Vermelho):** Escreve-se um teste que define uma nova funcionalidade ou comportamento desejado. Inicialmente, esse teste falha, pois a funcionalidade ainda não foi implementada.
2. **Green (Verde):** Desenvolve-se o código necessário para que o teste passe. O foco aqui é implementar a funcionalidade de forma simples e direta.
3. **Refactor (Refatorar):** Melhora-se o código recém-implementado, buscando otimizar sua estrutura, legibilidade e eficiência, sem alterar seu comportamento. Durante essa etapa, os testes existentes garantem que as mudanças não introduzam novos erros.

Esse ciclo é repetido continuamente, promovendo um desenvolvimento incremental e controlado.

**Benefícios do TDD:**
- **Código mais confiável:** A escrita antecipada de testes permite identificar e corrigir erros de forma proativa, resultando em um código mais robusto.
- **Facilidade de refatoração:** Com uma suíte de testes abrangente, refatorações podem ser realizadas com maior segurança, sabendo-se que os testes validarão a integridade do sistema.
- **Documentação viva:** Os testes atuam como uma documentação executável, descrevendo o comportamento esperado do sistema de forma clara e atualizada.
- **Design orientado a testes:** A prática do TDD incentiva a criação de código mais modular e testável, promovendo boas práticas de design desde o início do desenvolvimento.

## [DDD](https://www.youtube.com/watch?v=BVqFpbFiV34)
**Document-Driven Design**, é uma abordagem de desenvolvimento de software que enfatiza a criação de modelos que refletem com precisão o domínio de negócios para o qual o software está sendo desenvolvido. Introduzido por Eric Evans em seu livro "Domain-Driven Design: Tackling Complexity in the Heart of Software" (2003), o DDD busca alinhar a estrutura e a linguagem do código com a realidade do negócio, promovendo uma compreensão compartilhada entre desenvolvedores e especialistas do domínio.

**Princípios Fundamentais do DDD:**
- **Foco no Domínio Central:** Priorizar a compreensão e modelagem do núcleo do negócio, garantindo que o software atenda às necessidades essenciais da organização.
- **Modelo Orientado à Documentação:** Desenvolver um modelo conceitual que represente fielmente o domínio, servindo como base para o design e implementação do sistema.
- **Linguagem Ubíqua:** Estabelecer uma linguagem comum entre todos os envolvidos no projeto, facilitando a comunicação e evitando ambiguidades.
- **Colaboração Iterativa:** Manter uma colaboração contínua entre especialistas do domínio e desenvolvedores, permitindo ajustes e refinamentos ao longo do desenvolvimento.

**Componentes Principais do DDD:**
- **Contextos Delimitados (Bounded Contexts):** Definem limites explícitos dentro dos quais um modelo específico é aplicável, evitando sobreposições e ambiguidades.
- **Entidades:** Objetos que possuem identidade distinta e persistente, independentemente de suas propriedades.
- **Objetos de Valor:** Objetos definidos por suas propriedades, sem identidade própria, e geralmente imutáveis.
- **Agregados:** Conjuntos de entidades e objetos de valor que são tratados como uma unidade para garantir a consistência do modelo.
- **Eventos de Domínio:** Eventos significativos que indicam que algo importante ocorreu no domínio.
- **Repositórios:** Mecanismos que fornecem acesso a agregados, permitindo a persistência e recuperação de objetos do modelo.

A aplicação do DDD é especialmente benéfica em domínios complexos, onde uma compreensão profunda do negócio é crucial para o sucesso do software. Ao alinhar o design do sistema com a realidade do negócio, o DDD facilita a criação de soluções mais eficazes e adaptáveis.

## [BDD](https://www.youtube.com/watch?v=BVqFpbFiV34)
**Behavior-Driven Development** é uma prática de desenvolvimento de software que promove a colaboração entre desenvolvedores, testadores e partes interessadas não técnicas para definir o comportamento desejado do sistema. O BDD utiliza uma linguagem comum e compreensível por todos os envolvidos, facilitando a comunicação e garantindo que o software atenda às expectativas do negócio.

**Princípios Fundamentais do BDD:**
- **Colaboração Interdisciplinar:** Encoraja a participação ativa de todas as partes interessadas, incluindo desenvolvedores, testadores e representantes do negócio, para definir claramente os requisitos e comportamentos do sistema.
- **Linguagem Ubíqua:** Utiliza uma linguagem comum, muitas vezes baseada em exemplos concretos, que é compreendida por todos os membros da equipe, reduzindo ambiguidades e mal-entendidos.
- **Testes Automatizados:** Os comportamentos definidos são transformados em testes automatizados que podem ser executados para verificar se o sistema está funcionando conforme o esperado.

**Benefícios do BDD:**
- **Alinhamento com o Negócio:** Ao envolver representantes do negócio na definição dos comportamentos, o BDD assegura que o desenvolvimento esteja alinhado com as necessidades e expectativas do cliente.
- **Redução de Defeitos:** A definição clara de comportamentos e a criação de testes automatizados ajudam a identificar e corrigir defeitos de forma precoce, melhorando a qualidade do software.
- **Documentação Viva:** Os testes automatizados servem como documentação executável, fornecendo exemplos claros de como o sistema deve se comportar em diferentes cenários.

**Ferramentas Comumente Utilizadas em BDD:**
- **Cucumber:** Uma ferramenta que permite escrever testes em uma linguagem natural, facilitando a colaboração entre equipes técnicas e não técnicas.
- **SpecFlow:** Uma implementação do Cucumber para a plataforma .NET, permitindo a escrita de testes em Gherkin e sua execução em ambientes .NET.
- **JBehave:** Uma framework para Java que suporta a escrita de histórias e cenários em linguagem natural, integrando-se com ferramentas de teste existentes.

## FILOSOFIA UNIX
Este é um conjunto de princípios que orienta o design e o desenvolvimento de sistemas operacionais Unix e seus programas. Esses princípios enfatizam a simplicidade, modularidade e a criação de ferramentas que realizam tarefas específicas de forma eficiente. Esses princípios foram inicialmente documentados por Doug McIlroy em 1978 e têm influenciado o desenvolvimento de sistemas operacionais e software em geral.

**Princípios Fundamentais:**
1. **Faça cada programa fazer uma coisa e fazê-la bem:** Cada programa deve ser projetado para realizar uma única tarefa de forma eficaz, evitando a sobrecarga de funcionalidades desnecessárias.
2. **Escreva programas para trabalhar juntos:** Os programas devem ser projetados para se integrar facilmente com outros, permitindo a composição de soluções mais complexas a partir de componentes simples.
3. **Escreva programas para manipular fluxos de texto, pois essa é uma interface universal:** Utilizar texto como formato de entrada e saída facilita a interoperabilidade entre programas e a manipulação de dados.
4. **Projete e construa software para ser testado cedo, idealmente dentro de semanas:** A validação precoce do software permite identificar e corrigir problemas rapidamente, melhorando a qualidade do produto final.
5. **Use ferramentas em vez de ajuda não especializada para aliviar uma tarefa de programação, mesmo que você tenha que desviar para construir as ferramentas e esperar jogar algumas delas fora depois de usá-las:** A criação de ferramentas especializadas pode aumentar a eficiência e a reutilização de código.

## MICROSERVIÇOS
É uma abordagem arquitetônica que estrutura uma aplicação como uma coleção de serviços independentes, cada um responsável por uma função específica. Esses serviços se comunicam entre si por meio de APIs bem definidas, permitindo que equipes de desenvolvimento trabalhem de forma autônoma em diferentes partes do sistema.

**Características dos Microserviços:**
- **Autonomia:** Cada serviço pode ser desenvolvido, implantado e escalado independentemente, sem afetar os demais.
- **Especialização:** Os serviços são projetados para realizar tarefas específicas, alinhadas às necessidades do negócio.
- **Comunicação via APIs:** A interação entre os serviços é facilitada por APIs bem definidas, geralmente utilizando protocolos como HTTP/REST.

**Vantagens dos Microserviços:**
- **Escalabilidade:** Permite que partes específicas da aplicação sejam escaladas conforme a demanda, otimizando recursos.
- **Resiliência:** Falhas em um serviço não comprometem toda a aplicação, aumentando a robustez do sistema.
- **Flexibilidade Tecnológica:** Cada serviço pode ser desenvolvido utilizando a tecnologia mais adequada para sua função, promovendo inovação e eficiência.

**Desafios dos Microserviços:**
- **Complexidade de Gerenciamento:** A administração de múltiplos serviços requer ferramentas e práticas adequadas para monitoramento e manutenção.
- **Comunicação entre Serviços:** Garantir a comunicação eficiente e segura entre os serviços pode ser desafiador.
- **Consistência de Dados:** Manter a integridade e consistência dos dados distribuídos entre os serviços exige estratégias adequadas.

## ANTI-PATTERNS
**Anti-padrões** são práticas ou soluções que, embora possam parecer eficazes à primeira vista, geralmente resultam em problemas a longo prazo, comprometendo a qualidade, a manutenibilidade e a escalabilidade do software, referem-se a comportamentos ou abordagens que podem ser prejudiciais no desenvolvimento de software.<br/>
Para evitar esses anti-padrões, é essencial adotar práticas de desenvolvimento que priorizem a qualidade, a simplicidade e a adequação das soluções às necessidades reais do projeto. Isso inclui uma avaliação cuidadosa das tecnologias a serem utilizadas, uma gestão eficiente das dependências e uma comunicação clara dentro da equipe para garantir que todos estejam alinhados quanto aos objetivos e métodos de trabalho.

**Mito da Pessoa Mês:**<br/>
Este anti-padrão sugere que a produtividade de uma equipe de desenvolvimento é diretamente proporcional ao número de desenvolvedores alocados e ao tempo dedicado ao projeto. Na prática, adicionar mais desenvolvedores a um projeto em andamento pode aumentar a complexidade da comunicação e a sobrecarga administrativa, levando a uma diminuição da produtividade. Além disso, a qualidade do código pode ser comprometida, pois a integração de diferentes estilos de codificação e a falta de coesão podem resultar em um sistema mais difícil de manter e evoluir.

**Hype de Novo Framework:**<br/>
Este anti-padrão refere-se à tendência de adotar novas tecnologias ou frameworks sem uma avaliação criteriosa de sua real necessidade ou adequação ao projeto. A pressão para utilizar as últimas novidades pode levar à implementação de soluções que não atendem aos requisitos específicos do projeto, resultando em desperdício de recursos e tempo. Além disso, a falta de experiência com a nova tecnologia pode aumentar a curva de aprendizado da equipe e introduzir riscos adicionais ao projeto.

**Inferno das Dependências:**<br/>
Este anti-padrão ocorre quando um projeto acumula um número excessivo de dependências externas, tornando-se difícil de gerenciar e propenso a conflitos. Dependências desnecessárias ou mal gerenciadas podem introduzir vulnerabilidades de segurança, aumentar o tempo de build e dificultar a manutenção do sistema. Além disso, atualizações ou mudanças nas dependências podem quebrar funcionalidades existentes, exigindo esforços significativos para adaptação e testes.

**Extreme Go Horse**<br/>
O **(XGH)** é um anti-padrão de desenvolvimento de software que satiriza práticas de codificação apressadas e desleixadas. Originário do Brasil, o XGH enfatiza a velocidade em detrimento da qualidade e da manutenção do código. Embora seja uma brincadeira, ele destaca comportamentos indesejáveis que podem comprometer a integridade e a longevidade de um projeto.

**Princípios do XGH:**
1. **Ação sem reflexão:** "Pensou, não é XGH." A ideia é agir rapidamente, sem ponderar sobre as consequências.
2. **Soluções rápidas e erradas:** "Existem 3 formas de se resolver um problema: a correta, a errada e a XGH, que é igual à errada, só que mais rápida." Prioriza-se a velocidade, mesmo que a solução não seja a ideal.
3. **Crescimento exponencial de problemas:** "Quanto mais XGH você faz, mais precisará fazer." Cada solução rápida tende a gerar mais problemas, criando um ciclo contínuo.
4. **Reatividade:** "XGH é totalmente reativo." Os erros só são tratados quando se manifestam, sem prevenção.
5. **Flexibilidade sem limites:** "Em XGH vale tudo." Não há restrições ou padrões; qualquer abordagem é válida se resolver o problema momentaneamente.
6. **Compromissos antes de atualizações:** "Commit sempre antes de update." Garante-se que o código atual esteja salvo antes de integrar mudanças, mesmo que isso possa introduzir conflitos.
7. **Ignorando prazos:** "XGH não tem prazo." Os prazos são vistos como detalhes irrelevantes; a entrega é sempre possível, independentemente das condições.
8. **Transferência de responsabilidade:** "Esteja preparado para pular fora quando o barco começar a afundar." Quando os problemas se acumulam, a responsabilidade é atribuída a outros ou a fatores externos.
9. **Autenticidade sem padrões:** "Seja autêntico, XGH não respeita padrões." A codificação é feita de forma pessoal, sem aderir a convenções ou melhores práticas.
10. **Ausência de refatoração:** "Não existe refactoring, apenas rework." Em vez de melhorar o código existente, opta-se por soluções rápidas que podem ser ineficientes a longo prazo.

## UX & UI
### USER EXPERIENCE
Existe hoje no mercado uma grande quantidade de empresas especializadas no desenvolvimento de sites e aplicações web, bem como algumas empresas de desenvolvimento de software ou agências de comunicação que têm pessoas capacitadas para executar esse tipo de projeto.<br/>
Quando detectada a necessidade do desenvolvimento de um site ou aplicação web, a empresa que tem essa necessidade deve passar todas as informações relevantes ao projeto para a empresa que vai executá-lo. A empresa responsável pelo seu desenvolvimento deve analisar muito bem essas informações e utilizar pesquisas para complementar ou mesmo certificar-se da validade dessas informações.<br/>
Um projeto de site ou aplicação web envolve muitas disciplinas em sua execução, pois são diversas características a serem analisadas e diversas as possibilidades apresentadas pela plataforma. Por exemplo, devemos conhecer muito bem as características do público alvo, pois ele define qual a melhor abordagem para definir a navegação, tom linguístico e visual a ser adotado, entre outras. A afinidade do público com a Internet e o dispositivo pode inclusive definir o tipo e a intensidade das inovações que podem ser utilizadas.<br/>
Por isso, a primeira etapa do desenvolvimento do projeto fica a cargo da pessoa que cuida da experiência de usuário (UX Designer) junto com uma pessoa de Design e alguém de conteúdo. Esse grupo de pessoas analisa e endereça uma série de informações da característica humana do projeto, definindo a quantidade, conteúdo, localização e estilização de cada informação.<br/>
Algumas das motivações e práticas de Experiência do Usuário são conteúdo da matéria de Design de Interação, Experiência do Usuário e Usabilidade. O resultado do trabalho dessa equipe é uma série de definições sobre a navegação (mapa do site) e um esboço de cada uma das visões, que são os layouts das páginas, e visões parciais como, por exemplo, os diálogos de alerta e confirmação da aplicação. Por essas visões serem esboços ainda, a parte de estilo do site fica mais genérica: são utilizadas fontes, cores e imagens neutras, embora as informações escritas devam ser definidas nessa fase do projeto.<br/>
**Esses esboços das visões são chamados de wireframes e guiam o restante do processo de design.**<br/>
Com os wireframes em mãos, é hora de adicionar as imagens, cores, fontes, fundos, bordas e outras características visuais. Esse trabalho é realizado pela mesma equipe acima, só que agora sem a pessoa de conteúdo, que utilizam ferramentas gráficas como Adobe Photoshop, Adobe Illustrator, Figma, entre outras. O resultado do trabalho dessa equipe é que chamamos de **layout**. Os layouts são imagens estáticas já com o visual completo a ser implementado. Apesar de os navegadores serem capazes de exibir imagens estáticas, exibir uma única imagem para o usuário final no navegador não é a forma ideal de se publicar uma página.<br/>
Para que as informações sejam exibidas de forma correta e para possibilitar outras formas de uso e interação com o conteúdo, é necessário que a equipe de programação front-end transforme essas imagens em telas visíveis e, principalmente, utilizáveis pelos navegadores.<br/>
De todas as tecnologias disponíveis, a mais recomendada é certamente o HTML, pois é a linguagem que o navegador entende. Todas as outras tecnologias citadas dependem do HTML para serem exibidas corretamente no navegador e, ultimamente, o uso do HTML, em conjunto com o CSS e o JavaScript, tem evoluído a ponto de ser possível substituir algumas dessas outras tecnologias onde há mais poder e controle em relação à exibição de gráficos, efeitos e interatividade.

### USER INTERACTIVITY
Antes de digitar qualquer código, é necessária uma análise do layout. Com essa análise, define-se as principais áreas das páginas. No caso do desenvolvimento de um site por exemplo, é possível notar que há um cabeçalho que é uma área que potencialmente se repetirá em mais de uma página, um rodapé e um conteúdo principal. Seguindo o raciocínio de escrever o código pensando em semântica em primeiro lugar, já é possível imaginar como que será a estrutura no documento HTML:
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>WebSite</title>
</head>
<body>
    <header>
        <!-- Conteúdo do header -->
    </header>
    <main>
        <!-- Conteúdo principal -->
    </main>
    <footer>
        <!-- Conteúdo do footer -->
    </footer>
</body>
</html>
```

Uma recomendação é a de começar a planejar o código sempre analizando de fora para dentro. Portanto, depois de ver as 3 principais camadas, `header`, `main` e `footer`, e vamos nos aprofundar em uma delas. Vamos partir da ordem de declaração e nos aprofundar mais na tag `header`. Dentro de header temos uma logo e 3 links. Sabemos já que a logo é uma imagem:

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>WebSite</title>
</head>
<body>
    <header>
        <!-- Conteúdo do header -->
        <img src="img/logo.png" alt="Logo da Empresa.">
    </header>
    <main>
        <!-- Conteúdo principal -->
    </main>
    <footer>
        <!-- Conteúdo do footer -->
    </footer>
</body>
</html>
```

Agora com os links, estes são os que vão para outras páginas dentro do nosso próprio site, portanto esses links fazem parte de uma *navegação* e que são 3 links em sequência. Quando existem elementos iguais em sequência tem-se uma lista. Nesse caso a ordem dos links não importa:
```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>WebSite</title>
</head>
<body>
    <header>
        <!-- Conteúdo do header -->
        <img src="img/logo.png" alt="Logo da Empresa.">
        <nav>
            <ul>
                <li><a href="#">Contato</a></li>
                <li><a href="#">Entrar</a></li>
                <li><a href="#">Matricule-se</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <!-- Conteúdo principal -->
    </main>
    <footer>
        <!-- Conteúdo do footer -->
    </footer>
</body>
</html>
```
O próximo passo seria fazer o aprofundamento de outra tag e assim por diante.

<a href="https://github.com/raphaelkaique1/study/tree/main/8-desenvolvimento_avancado/8.1-arquitetura_de_solucao/conceitos_de_arquitetura.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#arquitetura_de_solucao">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/tree/main/8-desenvolvimento_avancado/8.2-arquitetura_de_software/escalabilidade_e_desempenho_estrategias_de_otimizacao_e_caching.md">next</a>