# Wireshark
Trata-se de um analisador de apcotes e protocolos opensource utilizado para verificar o funcionamento de uma rede em detalhes e, com isso, entre outras coisas como:
- identificar falhas de hardware
- identificar fonte de ataques DoS
- localizar programas mal-intencionados
- auxiliar desenvolvedores
- estudo da arquitetura de uma rede

```sh
sudo su
apt-get update && apt-get install -y wireshark
groupadd wireshark && adduser $USER wireshark && chgrp wireshark /usr/bin/dumpcap && chmod 750 /usr/bin/dumpcap
setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumcpap && getcap /usr/bin/dumpcap
dpkg-reconfigure wireshark-common
reboot
```
