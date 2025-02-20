# AMBIENTES VIRTUAIS
Um ambiente virtual é um espaço isolado dentro de um sistema operacional que permite rodar aplicações com dependências específicas, sem interferir no sistema principal ou em outros projetos. É muito utilizado no desenvolvimento de software para garantir que as aplicações tenham reprodutibilidade, ou seja, possam ser executadas em qualquer ambiente sem conflitos.

## Por que usar ambientes virtuais?
- Evita conflitos entre dependências de diferentes projetos.
- Permite testar novas versões de pacotes sem comprometer o sistema.
- Facilita a reprodutibilidade de ambientes de desenvolvimento, garantindo que o código funcione da mesma forma em diferentes máquinas.
- Torna mais simples a colaboração em equipe, pois todos podem usar a mesma configuração.

## Exemplos de ambientes virtuais

### [Vagrant](https://www.vagrantup.com)
Esta é uma solução para automatizar ambientes de desenvolvimento virtualizados, tornando-os reprodutíveis. Ele cria, provisiona e gerencia máquinas virtuais para o desenvolvedor. Ele permite configurar máquinas virtuais de maneira simples e reprodutível, garantindo que todos os desenvolvedores de um time tenham o mesmo ambiente sem conflitos de configuração. Ele facilita a automação e integração com DevOps, sendo uma ótima opção para testes, desenvolvimento e infraestrutura como código.<br>
Umas das vantagens dele é que a pasta do projeto no ambiente virtual é sincronizada com a pasta raiz, fazendo com que as alterações feitas fora do ambiente virtual sejam reflitidas dentro deste ambiente.

### Vantgens
- **Padronização do ambiente**: Evita o clássico problema de "funciona na minha máquina, mas não na sua".  
- **Automação da configuração**: Usa um **Vagrantfile** para definir todo o ambiente (SO, dependências, rede, etc.).  
- **Integração com múltiplos provedores**: Funciona com **VirtualBox, VMware, Hyper-V, Docker, AWS**, entre outros.  
- **Fácil compartilhamento**: O ambiente pode ser compartilhado via repositório Git ou arquivos de configuração.  
- **Rápida destruição e recriação**: Você pode apagar e recriar o ambiente com um único comando, sem medo de quebrar algo.

O Vagrant usa um **Vagrantfile**, que é um arquivo de configuração escrito em Ruby, onde você define a máquina virtual e suas configurações.  

### Fluxo básico
1. **Instalar o Vagrant e um provedor de virtualização** (ex: VirtualBox).  
2. **Criar um Vagrantfile** com as definições do ambiente.  
3. **Rodar o comando `vagrant up`** para iniciar a máquina virtual automaticamente configurada.  
4. **Acessar a VM via `vagrant ssh`** e começar a trabalhar.  
5. **Destruir o ambiente (`vagrant destroy`) quando não for mais necessário.**  

**Instale o Vagrant**  
- [Download do Vagrant](https://developer.hashicorp.com/vagrant/downloads)  
- Instale o **VirtualBox** (ou outro provedor de sua escolha).  

**Crie um diretório para seu ambiente**  
```sh
mkdir meu_projeto && cd meu_projeto
```

**Inicie o Vagrant e crie um Vagrantfile**  
```sh
vagrant init ubuntu/bionic64
```
Isso cria um `Vagrantfile` com a configuração da VM baseada no Ubuntu 18.04.

**Edite o `Vagrantfile`** para personalizar a configuração:  
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64" # Escolhe a imagem do SO
  config.vm.network "private_network", type: "dhcp" # Configura a rede
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024" # Define a memória RAM da VM
    vb.cpus = 2        # Número de CPUs
  end
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update && apt-get install -y apache2
  SHELL
end
```
Isso configura um Ubuntu 18.04 com 1GB de RAM, 2 CPUs e instala o Apache automaticamente.

**Suba a máquina virtual**  
```sh
vagrant up
```

**Acesse a VM via SSH**  
```sh
vagrant ssh
```

**Pare ou destrua a VM quando não precisar mais**  
```sh
vagrant halt   # Desliga a VM
vagrant destroy   # Remove a VM completamente
```

### 🔥 **Vagrant vs Docker**
| Feature                         | Vagrant                                           | Docker                          |
|---------------------------------|---------------------------------------------------|---------------------------------|
| **Tipo de virtualização**       | Máquina Virtual (VM)                              | Container                       |
| **Consumo de recursos**         | Alto (SO completo)                                | Baixo (compartilha o Kernel)    |
| **Velocidade de inicialização** | Lenta                                             | Rápida                          |
| **Uso recomendado**             | Ambientes de desenvolvimento próximos da produção | Microservices e deploys rápidos |

- Para um **ambiente completo, incluindo SO**, o **Vagrant** é ideal.  
- Para ambientes menores e leves, **containers isolados** Docker é a melhor opção.

### Python: venv e Virtualenv
No desenvolvimento em Python, o uso de **venv** ou **virtualenv** cria um ambiente isolado onde as bibliotecas instaladas ficam restritas ao projeto. Exemplo de criação de um ambiente virtual:
```sh
python -m venv meu_ambiente
source meu_ambiente/bin/activate  # No Linux/macOS
meu_ambiente\Scripts\activate     # No Windows
```

### Máquinas Virtuais (VMs)
Softwares como **VirtualBox, VMware e Hyper-V** permitem criar máquinas virtuais completas, rodando sistemas operacionais independentes dentro de um computador físico.

### Containers (Docker)
Os containers, como os oferecidos pelo **Docker**, criam ambientes isolados mais leves que máquinas virtuais, permitindo rodar aplicações com todas as suas dependências de forma rápida e eficiente.

## Diferença entre Ambientes Virtuais, Máquinas Virtuais e Containers
| Tipo                | Isolamento                           | Consumo de Recursos | Exemplo            |
|---------------------|--------------------------------------|---------------------|--------------------|
| Ambiente Virtual    | Apenas pacotes e dependências        | Leve                | venv, virtualenv   |
| Máquina Virtual     | Sistema operacional completo         | Alto                | VirtualBox, VMware |
| Container           | Apenas o necessário para a aplicação | Médio               | Docker, Kubernetes |

Ambientes virtuais são fundamentais no **DevOps**, pois garantem a reprodutibilidade e facilitam a automação de deploys.

<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/controle_de_versao_git_github.md">previous</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study#ferramentas_de_desenvolvimento">study</a>⠀⠀⠀⠀⠀⠀<a href="https://github.com/raphaelkaique1/study/blob/main/4-devops/4.1-ferramentas_de_desenvolvimento/docker_e_containers.md">next</a>