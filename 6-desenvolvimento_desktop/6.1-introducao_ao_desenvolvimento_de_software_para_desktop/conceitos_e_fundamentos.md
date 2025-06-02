# DESKTOP DEVELOPMENT
Um **software de desktop** é um programa desenvolvido para ser executado **localmente**, no sistema operacional de um dispositivo. Ele não depende necessariamente de conexão com a internet para funcionar, e é instalado diretamente no computador. Por serem programas executados no ambiente local do usuário e na maioria das vezes não necessitarem de uma conexão com a internet, possuem acesso direto a recursos do sistema e por isso respondem rapidamente às solicitações.<br/>
As interfaces são geralmentes construídas com **toolkits gráficos** nativos como por exemplo o `WinForms`, `WPF`, `Qt`, `GTK` entre outras. Normalmente, o backend de aplicações web utilizam linguagens que acessam e manipulam recursos dos equipamentos de servidores, porém, são aplicações sem interface para o usuário local do equipamento, e os programas são disponibilizados exclusivamente para atender às interfaces das aplicações web, as quais os usuários possuem acesso através da internet. Podem existir linguagens específicas que "*rodam* apenas na web ou no desktop", mas no final, todas elas possuem algum acesso aos recursos do equipamento, e, o que diferencia aplicações desktop de aplicações web são seus objetivos e padrões de desenvolvimento. Aplicações desktop são em sua maioria para fornecer softwares que funcionam para tarefas específicas que devem ser executadas localmente e podem operar de maneira offline ou online para recebimento e envio de informações, como em serviços de softwares embarcados, softwares de sistemas automatizados, que utilizam a rede CAN, IoT, monitoramento e análise de processos com visão computacional para a geração de dados e entre outras várias possíveis aplicações.<br/>
O processo do ciclo de vida do desenvolvimento de softwares deste tipo seguem etapas bem definidas, conhecidas como **Ciclo de Vida do Software**. As principais são:
1. **Levantamento de Requisitos**<br/>
Elabora o esboço para o entendimento do problema e definição do que o software precisa atender.
1. **Análise e Design do Projeto**<br/>
Os requisitos do desenvolvimento do sistema como a arquitetura do sistema, estrutura das telas, banco de dados, fluxos de trabalho e etc, são definidos nesta fase.
1. **Implementação**<br/>
Inicia-se o desenvolvimento do código-fonte da aplicação utilizando a linguagem e framework adequados para as necessidades do projeto, como `C#`, `Java`, `C++`, `Python`, entre outras.
1. **Testes**<br/>
Verifica se o software funciona corretamente, detectando bugs e erros.
1. **Deploy e Distribuição**<br/>
Build, compilação, empacotamento e instalação no computador do usuário, normalmente são desenvolvidos instaladores ou arquivos executáveis para a distribuição do software.
1. **Manutenção e Atualizações**<br/>
Monitoramento de métricas para corrigir falhas, adaptar a novos sistemas e incluir melhorias.

<table border="1">
    <hgroup>
        <th colspan="3">
            DIFERENÇA ENTRE APLICAÇÕES
        </th>
    </hgroup>
    <tr>
        <th>CARACTERÍSTICA</th>
        <th>DESKTOP</th>
        <th>WEB</th>
    </tr>
        <td>execução</td>
        <td>Local, no sistema operacional.</td>
        <td>Remota, em navegadores (cliente-servidor).</td>
    <tr>
        <td>instalação</td>
        <td>Requer instalação manual.</td>
        <td>Não requer instalação.</td>
    </tr>
    <tr>
        <td>atualizações</td>
        <td>Manuais ou via sistema do app.</td>
        <td>Centralizadas no servidor.</td>
    </tr>
    <tr>
        <td>recursos</td>
        <td>Total (dependendo da permissão).</td>
        <td>Limitado pelo navegador.</td>
    </tr>
    <tr>
        <td>desempenho</td>
        <td>Alto (quando não possui dependência da rede).</td>
        <td>Depende da conexão e carga do servidor.</td>
    </tr>
    <tr>
        <td>GUI</td>
        <td>Exige conhecimento de GUI toolkits.</td>
        <td>HTML, CSS, JavaScript e frameworks.</td>
    </tr>
    <tr>
        <td>desenvolvimento</td>
        <td>Utiliza linguagens de baixo nível e frameworks ou IDEs para uso de GUI toolkits.</td>
        <td>Pode utilizar as mesmas linguagens de baixo nível para o backend, já para o frontend utiliza linguages interpretadas pelos navegadores.</td>
    </tr>
</table>

Alguns exemplos de Softwares Desktop incluem o Microsoft Word, Excel e demais programas do Pacote Office, Photoshop, GIMP, Visual Studio, VS Code, VLC Media Player, AutoCAD e muitos outros.<br/>
A vantagem das aplicações desktop é que, por rodarem localmente, tanto o banco de dados, o backend e o frontend, costumam ser desenvolvidos em um único ambiente disponibilizado por um framework, que permite a escrita de todo o código (frontend e backend) seguindo seus padrões e então compila o código para ser executado nas máquinas criando a GUI e executando as ações utilizando recursos do SO.<br/>
Uma interface gráfica deve permitir que o usuário interaja com o programa por meio de **botões, menus, campos de texto, janelas**, entre outros. Os principais elementos e conceitos existentes na criação de GUIs para aplicações desktop são:

| ELEMENTO          | DESCRIÇÃO                                                            |
| ----------------- | -------------------------------------------------------------------- |
| **Layout**        | Organização dos elementos visuais na tela.                           |
| **Widget**        | Componente da interface, como botões, inputs, labels, e etc.         |
| **Evento**        | Ação do usuário que gera resposta, por exemplo o clique em um botão. |
| **Event handler** | Função que reage a um evento executando uma determinada tarefa.      |

O desenvolvimento desktop pode ser feito em várias linguagens. Cada sistema operacional costuma ter seu próprio **framework nativo** para interfaces gráficas. Alguns dos mais populares são:

## C com GTK ou WinAPI – Multiplataforma
- **Frameworks**: GTK (Linux), WinAPI (Windows)
- **Vantagens**: Máximo controle e desempenho, ideal para aplicações do sistema.
- **Ambiente**: Gedit, VS Code, Code::Blocks

## C# com .NET – Windows
- **Frameworks**: Windows Forms, WPF, UWP, MAUI – .NET Multi-platform App UI
- **Vantagens**: Integrado ao Windows, ótima documentação, suporte da Microsoft.
- **Ambiente**: Visual Studio.

## C++ com Qt – Linux
- **Frameworks**: Qt (multiplataforma)
- **Vantagens**: Extremamente rápido e flexível, ideal para aplicativos complexos.
- **Ambiente**: Qt Creator

## Python com Tkinter – Multiplataforma
- **Frameworks**: Tkinter, PyQt, PySide, Kivy
- **Vantagens**: Simples, ideal para prototipação rápida e ferramentas internas.
- **Ambiente**: VS Code, PyCharm

## Java com JavaFX – Multiplataforma
- **Frameworks**: JavaFX, Swing
- **Vantagens**: Portável entre sistemas operacionais, rico em bibliotecas.
- **Ambiente**: IntelliJ IDEA, Eclipse, NetBeans

## JavaScript com Electron – Multiplataforma
- **Framework**: Electron.js
- **Vantagens**: Multiplataforma, usa tecnologias web HTML, CSS e JS.
- **Ambiente**: Qualquer editor web-friendly

## **local DB**:
- SQLite
- Realm
- NeDB (Electron)
- IndexedDB (Electron/Web)

## Boas Práticas de Desenvolvimento
Diferente de aplicações web onde o responsável pelo backend é quem se preocupa com o gasto e consumo de recursos, aplicações desktop possuem *"tudo integrado"*, de forma que, a GUI e o backend devem sempre balancear e consumir uma quantidade adequada de recursos para que não se torne um programa de *execução pesada*, que possa possivelmente *travar* a máquina do usuário, já que diferente dos servidores que são potentes e construídos especificamente para executar grandes cargas de serviço e suportar softwares que podem realizar muitas tarefas ao mesmo tempo fazendo isto para cada requisição de usuário diferente que acessa a aplicação – podendo alcançar milhares ou milhões por segundo, os softwares de desktop devem ser projetados para consumir recursos de acordo com o necessário – e disponível – para seu funcionamento, pois o computador de um usuário comum geralmente não é uma máquina com tanto poder computacional quanto um servidor, e em ambientes empresariais os colaboradores trabalham com vários programas diferentes sendo executados ao mesmo tempo. Em ambientes neste cenário existem vários outros aplicativos e processos que podem estar consumindo e concorrendo pelos recursos disponíveis simultaneamente, e para evitar isso existem técnicas como por exemplo o uso de métodos assíncronos com **`threads`** ou **`async`**, além de sempre que liberar corretamente recursos não usados fechando arquivos e conexões, entre outras técnicas que que devem ser seguidas no momento de arquitetar e desenvolver um software exclusivo para desktops.<br/>
Uma maneira de minimizar o impacto na performance e manter uma alta disponibilidade do software é possuir uma definição clara da arquitetura do programa, tendo uma separação objetiva da **interface**, **lógica** e **acesso a dados**, além da adoção de padrões como **MVC** ou **MVVM** por exemplo. Além disso, a experiência do usuário não se trata apenas de manter a aplicação *"rápida"*, responsiva e dinâmica, mas também possuir um design simples e intuitivo, permitindo que qualquer usuário com qualquer nível de conhecimento consiga ao menos navegar de forma eficiente pelo software. Uma GUI com uma boa experiência de usuário é aquela que evita poluição visual e fornece constantes feedbacks claros ao usuário, com mensagens de erro, carregamento, e quaisquer outros elementos que possam informar ao usuário o que ele deve esperar. Isso pode ser alcançado realizando testes de fluxos comuns de uso do programa, validando cada entrada do usuário e capturando toda exceção de maneira explícita – isso evita falhas silenciosas.<br/>
Quanto a manutenção e atualizações, por se tratar na maioria dos casos softwares que não mantém uma conexão constante à internet, existem possibilidades que permitem um sistema de **autoatualização**, frameworks como Electron, MAUI e .NET Core têm suporte a este método. Além disso, manter a documentação do código e seu versionamento sob controle são de extrema importância para um desenvolvimento e manutenção ágeis.<br/>
E pensando em distribuição do software, existem vários empacotadores para diferentes plataformas que realizam o serviço de *empacotar o programa como em um container*, com todos seus módulos, bibliotecas e demais dependências externas que precisa para funcionar, para que possa ser instalado e usado pelos usuários da maneira mais fácil e intuitiva possível. Para Windows por exemplo, existe o **Inno Setup**, **NSIS**, **MSIX** entre outros, já para o Linux existe o **AppImage**, **Snap**, **Flatpak** e mais uma variedade – a depender da distro, por fim, existem também os **multiplataforma** que suportam qualquer sistema operacional que o software foi projetado para executar, como o **Electron Builder** e o **PyInstaller** por exemplo. E um dos aspectos mais importantes em se tratando de distribuição de software é a segurança. Para evitar que usuários mal intencionados consigam acessar recursos privados ou reprogramar o software para realizar algo que não deveria e ser distribuído, existem técnicas eficientes contra a engenharia reversa para impedir que se conheça o código fonte a fim de roubá-lo ou modificá-lo como *obsfuscadores*, *assinatura digital de binários* ou mesmo a *compilação nativa* nos SOs.

<a href="https://github.com/raphaelkaique1/study/blob/main/5-desenvolvimento_web/5.4-seguranca_autenticacao_e_autorizacao/owasp_top_10.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#introducao_ao_desenvolvimento_de_software_para_desktop">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/6-desenvolvimento_desktop/6.2-linguagens_de_programacao_para_desktop/c_sharp.md">next</a>