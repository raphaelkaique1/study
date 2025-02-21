# CLOUD
A nuvem é um termo onipresente. Frases como “seus dados estão na nuvem” ou “envie para a nuvem” são comuns. A computação em nuvem, em termos simples, é uma grande coleção de computadores trabalhando juntos mas de forma distribuída usando a internet para se comunicar.<br/>
A nuvem se tornou essencial para velocidade, segurança, compartilhamento, escalabilidade e backup. Grandes corporações dependem da nuvem para conectividade global. Proprietários de pequenas empresas contam com serviços de nuvem para alavancar economias de escala por trás de sua pegada física. Famílias e amigos compartilham mensagens e fotos por meio de serviços de nuvem.<br/>
Para organizações, usar a nuvem reduz a necessidade de expandir seus data centers físicos no local. Eles podem melhorar a segurança e a disponibilidade usando um grupo de data centers espalhados em diferentes locais, e também aumentar a produtividade executando operações na nuvem a qualquer hora do dia.<br/>
A separação de cargas de trabalho e escalabilidade são as principais vantagens da computação em nuvem. Engenheiros e clientes podem aproveitar o poder de centenas de computadores para fazer o trabalho, energia, processamento e armazenamento estão disponíveis sempre que precisam, sem a necessidade de pagar esta energia e gerenciar o processamento e armazenamento extras.

## TERMINAIS MAINFRAMES
Nos primórdios da computação, os cientistas perceberam que os computadores que se comunicavam por uma rede eram mais versáteis e poderosos do que um único computador trabalhando sozinho.<br/>
Computadores *mainframe* eram grandes computadores alojados em caixas chamadas *frames*. Eles processavam o trabalho e enviavam os resultados para uma estação de trabalho — ou terminal — que tinha uma tela e um teclado. À medida que o hardware e o software avançavam, os mainframes se tornaram menores, mais poderosos e capazes de fazer mais trabalho, além de se tornarem escaláveis. Isso significa que quando um usuário ou grupo de usuários, por exemplo em uma empresa, precisa de mais poder de processamento ou armazenamento, ele se torna a melhor opção.

## WORKLOADS
Cientistas da computação começaram a separar esses computadores em rede, em cargas de trabalho específicas. Por exemplo, alguns grupos de computadores apenas armazenam dados, enquanto o trabalho de outros computadores é processar dados — como o trabalho de uma CPU em um computador individual. Outros grupos de computadores fazem trabalhos específicos chamados funções e os enviam de volta para o computador de um usuário. Quando precisamos fazer login em um banco ou em uma plataforma de rede social, uma função pode processar seus dados de login em um computador separado apenas para essa função.

## ESCALABILIDADE
Suponha que você seja um profissional de suporte de TI e sua empresa esteja refazendo as imagens de todos os produtos do catálogo. Sua tarefa é armazenar todas as imagens do catálogo existente. Você também precisa de um lugar para os artistas gráficos armazenarem as imagens atualizadas. Você estima que o armazenamento necessário será bem alto, mas apenas a curto prazo, porque precisará desse espaço apenas por um único trimestre. Não é necessário, nem lógico, gastar dinheiro comprando mais armazenamento apenas para um trimestre.<br/>
Com a computação em nuvem, podemos encontrar uma solução para atender a essas necessidades. Paga-se pelo armazenamento extra apenas para o período que precisar. Assim que o trabalho estiver concluído, os arquivos são removidos e o armazenamento volta a ser reduzido para pagar apenas o que será usado após a conclusão do projeto.

## CLOUD APPLICATIONS
Atualmente, raramente é necessário instalar aplicações nos dispositivos para usá-las. Muitos aplicativos — mesmo os poderosos — podem ser executados inteiramente no navegador da web.<br/>
Os aplicativos podem ser com ou sem estado. O desenvolvimento da web introduziu um novo modelo de aplicativo que mudou a forma como os desenvolvedores pensavam sobre os aplicativos.

- **STATEFUL**: Quando um aplicativo era instalado em um único dispositivo, todas as informações necessárias para fazê-lo funcionar estavam disponíveis na memória do dispositivo. O dispositivo pode manter o estado do aplicativo o tempo todo.
    - Salva as informações em um servidor.
    - Usa arquitetura complexa.
    - Não escala facilmente.
    - Mantém o controle das informações para tarefas repetitivas.
- **STATELESS**: Quando uma página da web padrão é carregada, o navegador processa as informações conforme elas são recebidas, em pacotes, e as renderiza conforme chegam. O navegador não depende de informações de solicitações anteriores. Esse tipo de operação é chamado de sem estado porque o navegador não precisa manter um estado entre as solicitações.
    - Não salva as informações em um servidor.
    - Usa arquitetura simples.
    - Escala facilmente.
    - Reduz a recuperação de travamentos.

Os engenheiros desenvolveram uma abordagem híbrida. Os aplicativos que usamos no navegador da web podem aproveitar as vantagens das tecnologias avançadas em navegadores para fornecer dados e serviços pela internet, mas mantêm algum estado no próprio navegador. Os aplicativos da web podem até se comunicar com dispositivos conectados ao seu computador, algo impossível nos primórdios da web.

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/docker_e_containers.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#cloud_computing">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.3-ferramentas_de_monitoramento/prometheus_grafana.md">next</a>