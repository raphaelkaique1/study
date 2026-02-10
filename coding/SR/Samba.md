## smb
O Samba é uma ferramenta que transforma o Linux em um servidor de arquivos, permitindo o compartilhamento e gerenciamento de arquivos e impressoras em uma rede Windows. Pode ser integrado em uma rede local ou mesmo usado como um controlador de domínio.
O Samba usa o protocolo `smb` e trabalha com 2 processos:
- `smbd`: responsável pelo compartilhamento entre arquivos e impressoras
- `nmbd`: responsável por serviços de nome e navegação

- `systemctl status smbd/nmbd`
- `systemctl stop smbd/nmbd`
- `systemctl start smbd/nmbd`
- `systemctl restart smbd/nmbd`

- `testparm`: logs de configuração do Samba

- `smbpasswd -a user_name`: cadastra usuários
- `pdbedit -x -u user_name`: remove usuário
- `pdbedit -w -L`: lista usuários

- `/etc/samba/smb.conf`: script de configuração do Samba
    - `workgroup = NET_NAME`: o nome do grupo de trabalho deve ser o mesmo que o da rede Windows
    - **Share Definitions**
        - `read only = no`: habilita a leitura e escrita na pasta para o(s) usuário(s) informado(s)
        - `read list = user1_name, user2_name`: habilita apenas leitura do conteúdo na pasta para o(s) usuário(s) informado(s)
    - incluir ao final do arquivo as configurações para habilitar a pasta para compartilhamento
    ```conf
        [dir_name]
        path = /complete/path/to/dir_name
        read only = no
    ```
