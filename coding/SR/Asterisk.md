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

```sh
# ; DIALPLANs
# ; grupo simples: todos na mesma linha
# ; [object_name]     ↱ ramal  ↱ priority order  ↱ application
# ; exten         => _ZXXX,    1,                NoOp(OK)
# ; ↳ object_name

[out]                                     # "ao atingir este contexto, execute os comandos abaixo"
exten => _ZXXX,1,NoOp(OK)                 # imprime a msg "OK" na CLI
        same => n,Dial(SIP/${EXTEN},30)   # define o dialplan(protocolo/${variável_numero_discado=_ZXXX})
	    same => n,Hangup()

# ; CHANNELs
# ; herança de opções: as opções são definidas antes e os objetos as herdam
[channel]
context=default
signalling=fxs_ks
group=1
channel => 1
```

> Isso é uma DSL (Domain-Specific Language) própria e não programação imperativa tradicional. É uma máquina de estados baseada em contextos e extensões.

O Asterisk pode se conectar tanto a softphones quanto a operadoras SIP Trunk, gateways GSM, placas E1 ou até mesmo WebRTC (usando DTLS-SRTP; com PJSIP + DTLS + SRTP + ICE, o Asterisk pode atuar como backend WebRTC, permitindo chamadas direto do navegador. Contudo, para ambientes grandes, normalmente ele fica atrás de um SBC), implementa principalmente os protocolos:
- RTP (RFC 3550): transporte de mídia
- IAX2 (protocolo próprio): mais eficiente em NAT traversal
- SIP (RFC 3261): padrão dominante de sinalização VoIP
- PJSIP (substituiu chan_sip): stack SIP moderna recomendada

```sh
# sudo su

# /etc/asterisk/*.conf - configurações do ambiente
/etc/init.d/asterisk start || asterisk               # inicia o asterisk
/etc/init.d/asterisk stop || core stop now           # desativa o asterisk
nano /etc/asterisk/asterisk.conf                     # [OPTIONS] verbose = 99 -> habilita modo verboso | maxfiles = 10000 -> evita lentidão no servidor
nano /etc/asterisk/logger.conf                       # full -> habilita todos os logs
nano /etc/asterisk/extensions.conf                   # criar contextos
asterisk -rvvvvv                                     # Asterisk CLI
tail -n 30 /var/asterisk/logs/full                   # exibe os logs
CLI> core restart now                                # reinicia o asterisk
CLI> core reload || service_name reload              # carrega alterações realizadas
CLI> core help                                       # exibe as aplicações disponíveis
CLI> help application_name                           # documentação
CLI> help [command[command[...]]]                    # menu de ajuda e instruções
CLI> core show applications                          # exibe as aplicações disponíveis
CLI> core show channels                              # exibe as chamadas em ligação
CLI> dialplan show [rule_name]                       # exibe as regras existentes
CLI> pjsip show contacts || pjsip show contact [_X.] # exibe todos os ramais registrados / contas criadas
CLI> channel request hangup [all || SIP/user-id]     # desliga chamadas

# fazer chamada   (softphone)
# USER ID: 1000   (ramal)
# SIP IP: 1000@IP (ramal@ip_servidor-asterisk)
# PASSWORD: s1000 (senha ramal)
```

## asterisk server
```sh
#!/bin/bash

# sudo su
apt-get update && apt-get upgrade -y && apt-get install -y asterisk

ufw allow 5060/udp
ufw allow 6000/udp
ufw allow 6001/udp

systemctl start asterisk && systemctl enable asterisk

echo '
[transport-udp]
type=transport
protocol=udp
bind=0.0.0.0
' >> /etc/asterisk/pjsip.conf

for (( i = 1000; i < 1111; i++ )); do echo "
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

echo '
[default_bridge]
type=bridge
max_members=100

[default_user]
type=user
music_on_hold_when_empty=yes ' >> /etc/asterisk/confbridge.conf

echo '
[chat]
exten => 7000,1,Answer()
 same => n,ConfBridge(1,default_bridge,default_user)
 same => n,Hangup()' >> /etc/asterisk/extensions.conf

asterisk -rx "core reload"
# test conf: channel originate Local/7000@chat application ConfBridge 1
reboot
```
