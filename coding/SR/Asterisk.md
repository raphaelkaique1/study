# Asterisk
É um software de central telefônica open source que implementa as funções de um PBX (Private Branch Exchange) em um único programa, permitindo estabelecer e controlar chamadas entre dispositivos de rede e também entre dispositivos e a rede pública de telefonia comutada (PSTN). Ele surgiu como uma proposta disruptiva para substituir PABXs proprietários de alto custo por uma solução executada em hardware comum com Linux.  
Conceitualmente, o Asterisk não é apenas um "servidor VoIP", ele é um B2BUA (Back-to-Back User Agent) com motor de processamento de chamadas com capacidade de comutação de mídia e execução de lógica telefônica com DSL própria de controle (ele encerra uma sessão SIP e cria outra internamente, portanto controla estado, mídia e lógica). Ele implementa sinalização (SIP, IAX/IAX2), controle de chamadas, execução lógica (dialplan), manipulação de mídia (RTP), integração com PSTN via placas (E1/FXO/FXS) e permite automação via AGI/ARI, funcionando como um softswitch que pode operar como central telefônica IP (IP-PBX), servidor de corrreio de voz, sistema de respostas interativas (IVR), conferência, gateway VoIP-PSTN e muito mais, por exemplo:
- Como IP-PBX completo, gerenciando ramais internos e roteando chamadas externas via SIP ou IAX/IAX2.
- Como servidor IVR/URA, oferecendo menus interativos com respostas por tecla (DTMF) ou reconhecimento de voz.
- Como servidor de conferência e distribuição automática de chamadas (ACD) para call centers.
- Como gateway PSTN/VoIP quando integrado com hardware DAHDI ou adaptadores ATA.

> Seu nome deriva do símbolo de tecla `*` de telefone, usado em discagem DTMF.

Ele é um framework de telecomunicações que suporta protocolos de VoIP como SIP, MGCP e H.323, além do próprio IAX/IAX2 nativo para conectar instâncias Asterisk. Ele pode ser estendido por módulos, scripts de dialplan e APIs, por exemplo:

- AGI (Asterisk Gateway Interface): Permite chamar programas externos em qualquer linguagem de programação, passando parâmetros e recebendo informações (comandos ou resultados). Muito usado para URA*.
- IVR – Interactive Voice Response (URA – Unidade de Resposta Audível): Sistema automático de atendimento de chamadas. Permite tocar mensagens gravadas, receber entrada via DTMF (teclas do telefone), direcionar chamadas para ramais, filas ou setores, encaminhar chamadas conforme horário e integrar com banco de dados.
- AMI (Asterisk Management Interface): Permite chamar comandos no Asterisk de uma interface externa via TCP/IP. Muito usado para discadores (click-to-call).
- ARI (Asterisk REST Interface): É a interface mais moderna, combina funcionalidades do AGI e AMI. Ele permite o uso de objetos do Asterisk através de APIs RESTful e dá acesso a eventos por websocket.

## Arquitetura e Funcionamento
O Asterisk é modular, no seu núcleo há o core de chamadas, e em volta dele existem módulos carregáveis que implementam:
- Canais (chan_sip, chan_pjsip, chan_dahdi)
- Codecs (g711, g729, opus e etc)
- Aplicações de dialplan (Dial, Playback, Queue, MeetMe, ConfBridge)
- Interfaces externas (AGI, AMI, ARI)

Ele trabalha com 3 planos distintos:
1. Sinalização (SIP/IAX2): estabelece, modifica e encerra sessões
2. Mídia (RTP): transporta áudio/vídeo
3. Controle lógico (Dialplan): decide o que fazer com a chamada

O dialplan é o coração da lógica, é definido em **`extensions.conf`** e funciona como um interpretador declarativo baseado em prioridades:

exten => 1000,1,Answer()  
exten => 1000,n,Playback(welcome)  
exten => 1000,n,Dial(PJSIP/2000)  

> Isso é uma DSL (Domain-Specific Language) própria e não programação imperativa tradicional. É uma máquina de estados baseada em contextos e extensões.

O Asterisk pode se conectar tanto a softphones quanto a operadoras SIP Trunk, gateways GSM, placas E1 ou até mesmo WebRTC (usando DTLS-SRTP; com PJSIP + DTLS + SRTP + ICE, o Asterisk pode atuar como backend WebRTC, permitindo chamadas direto do navegador. Contudo, para ambientes grandes, normalmente ele fica atrás de um SBC), implementa principalmente os protocolos:
- RTP (RFC 3550): transporte de mídia
- IAX2 (protocolo próprio): mais eficiente em NAT traversal
- SIP (RFC 3261): padrão dominante de sinalização VoIP
- PJSIP (substituiu chan_sip): stack SIP moderna recomendada

```sh
Asterisk 13 & Debian
VM -> Rede: Modo Bridge
ssh user_login@host_ip || ssh host_ip -user_login

sudo su

iptables -F && systemctl stop firewalld && systemctl disable firewalld
nano /etc/selinux/config # SELINUX=disabled
setenforce 0
cd /usr/src
wget https://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-13.23.1.tar.gz
tar xvzf asterisk-13.23.1.tar.gz
cd ./asterisk-13.23.1.tar.gz
apt-get install -y linux-headers-`uname -r` bison openssl libssl-dev libasound2-dev libc6-dev build-essential libnewt-dev libncurses5-dev zlib1g-dev gcc g++ make libusb-dev fxload perl pkg-config uuid-dev libjansson-dev libxml2-dev sqlite3 sqlite3-dev
chmod +x ./configure
./configure                         # verifica libs/dependences
#make menuselect || make menuconfig # personaliza build
make                                # compila
make install                        # instala
make samples                        # configurações básicas
make config || make install-config  # instala serviço no systemd
reboot                              # verificar se serviço está inicializando corretamente
systemctl status asterisk           # systemctl start asterisk && systemctl enable asterisk

#/etc/asterisk/*.conf - configurações do ambiente

asterisk -rvvvvv                            # Asterisk CLI
CLI> core reload                            # carrega as alterações feitas
CLI> core restart now                       # reinicia o asterisk
# /etc/init.d/asterisk stop || core stop now # desativa o asterisk
# /etc/init.d/asterisk start || asterisk     # inicia o asterisk

nano /etc/asterisk/asterisk.conf   # [OPTIONS] verbose = 99 -> habilita modo verboso | maxfiles = 10000 -> evita lentidão no servidor
nano /etc/asterisk/logger.conf     # full -> habilita todos os logs
tail -n 30 /var/asterisk/logs/full # exibe os logs

cp /etc/asterisk/sip.conf /etc/asterisk/sip.conf.bkp && nano /etc/asterisk/sip.conf && asterisk -r # cria contas SIP

# ; SIP TRUNK
# ;             ↱ nome              ↱ UDP
# ; register => login:senha@dominio:porta/999
# ;                         ↳ ou IP       ↳ ramal endereço da ligação
#
# [general]
# srvlookup=yes
# register => login:password@domain:port/9999
#
# [siptrunk]
# type=peer
# defaultuser=login
# secret=password
# port=5060
# insecure=invite
# host=domain
# fromuser=login
# fromdomain=domain
# dtmfmode=rfc2833
# context=from-sip
# disallow=all
# allow=ullaw
#
# ; configurando os clientes e contas SIP
#
# ; entidade complexa: cada entidade recebe um contexto
# [cisco]
# type=friend [ user = faz ligações & peer = recebe ligações & friend = ambos ]
# secret=secret_password
# host=10.1.30.50||dynamic
# context=from-internal

[general]
bindaddr=0.0.0.0         ; endereço IP
bindport=5060            ; porta de acesso
udpbindaddr=0.0.0.0:5060 ; endereço_IP:porta_de_acesso
context=dummy            ; contexto
allowguest=no            ; permissão de convidado sem autenticação
alwaysauthreject=yes     ; 403
disallow=all             ; desabilita todos os codecs

register=>1010:M4rkSp3nc3r@192.168.1.10:5060/9999

[siptrunk]
type=peer
defaultuser=1010
secret=M4rkSp3nc3r
port=5060
insecure=invite
host=192.168.1.10
fromuser=1010
fromdomain=192.168.1.10
context=from-siptrunk

[flush]
type=friend
secret=#M4rkSp3nc3r#
host=dynamic
qualify=yes
directmedia=no
context=from-internal
; nat=yes||no
; deny=0.0.0.0/0.0.0.0
; permit=192.168.0.0/24

[jami]
type=friend
secret=#M4rkSp3nc3r#
host=dynamic
qualify=yes
directmedia=no
context=from-internal
; nat=yes||no
; deny=0.0.0.0/0.0.0.0
; permit=192.168.0.0/24

[1000]
type=friend
username=1000
secret=s1000
host=dynamic
context=out
disallow=all
allow=ulaw
allow=alaw
allow=gsm
directmedia=no
nat=no
qualify=yes

[1001]
type=friend
username=1001
secret=s1001
host=dynamic
context=out
disallow=all
allow=ulaw
allow=alaw
allow=gsm
directmedia=no
nat=no
qualify=yes

CLI> sip reload
CLI> sip show [register || registry] # mostra todos os registros

nano /etc/asterisk/modules.conf # desabilitar protocolos
noload => res_pjsip.so
noload => chan_pjsip.so

nano /etc/asterisk/extensions.conf # criar contextos
# ; DIALPLANs
# ; grupo simples: todos na mesma linha
# ; [object_name]     ↱ ramal  ↱ priority order  ↱ application
# ; exten         => _ZXXX,    1,                NoOp(OK)
# ; ↳ object_name

[out]                                     # "ao atingir este contexto, execute os comandos abaixo"
exten => _ZXXX,1,NoOp(OK)                 # imprime a msg "OK" na CLI
        same => n,Dial(SIP/${EXTEN},30)   # define o dialplan(protocolo/${variável_numero_discado=_ZXXX})
	    same => n,Hangup()

CLI> dialplan show [rule_name]                   # exibe as regras existentes
CLI> help [command[command[...]]]                # menu de ajuda e instruções
CLI> core reload || service_name reload          # carrega alterações realizadas
CLI> core help                                   # exibe as aplicações disponíveis
CLI> core show applications                      # exibe as aplicações disponíveis
CLI> core show channels                          # exibe as chamadas em ligação
CLI> sip show peers || sip show peer [_X.]       # exibe todos os ramais registrados / contas criadas
CLI> channel request hangup [all || SIP/user-id] # desliga chamadas

# ; CHANNELs
# ; herança de opções: as opções são definidas antes e os objetos as herdam
# [channel]
# context=default
# signalling=fxs_ks
# group=1
# channel => 1

# fazer chamada   (softphone)
# USER ID: 1000   (ramal)
# SIP IP: 1000@IP (ramal@ip_servidor-asterisk)
# PASSWORD: s1000 (senha ramal)
```

## asterisk
```sh
#!/bin/bash

# asterisk
sudo apt-get update && sudo apt-get upgrade -y && apt-get install -y asterisk

sudo echo '
[transport-udp]
type=transport
protocol=udp
bind=0.0.0.0
' >> /etc/asterisk/pjsip.conf

sudo for (( i = 1000; i < 1111; i++ )); do echo "
[$i]
type=endpoint
context=chat
disallow=all
allow=ulaw
auth=$i-auth
aors=$i

[$i-auth]
type=auth
auth_type=userpass
username=$i
password=$i

[$i]
type=aor
max_contacts=1" >> /etc/asterisk/pjsip.conf; done

sudo echo '
[default_bridge]
type=bridge
max_members=100

[default_user]
type=user
music_on_hold_when_empty=yes ' >> /etc/asterisk/confbridge.conf

sudo echo '
[chat]
exten => 7000,1,Answer()
 same => n,ConfBridge(1,default_bridge,default_user)
 same => n,Hangup()' >> /etc/asterisk/extensions.conf

sudo asterisk -rx "core reload"
# channel originate Local/600@conferencia application ConfBridge 1
```
