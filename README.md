# 🚀 Script de Criação de Portal Docker 🌐

Este script em bash é simplesmente incrível! Ele cria e gerencia contêineres Docker para portais web, utilizando um Dockerfile chamado `portais` para criar os contêineres. E o melhor: essa imagem utiliza o WordPress:8-apache. 🌟

## Como Utilizar

```bash
./script-cria-portal.sh NOME_DO_PORTAL
```

- **NOME_DO_PORTAL**: O nome do portal será usado como identificador único para o contêiner Docker. 🏰

## Ou via WEB

Após a execução, seu portal estará disponível em [http://localhost:8080](http://localhost:8080). Você também pode acessar diretamente clicando no link fornecido. 🌐 

## Funcionalidades 

Automatiza a criação de portais em WordPress em contêineres Docker com gerenciamento de portas:

1. **Geração de Porta Aleatória:**
   - Gera uma porta aleatória se a porta não estiver definida no arquivo de controle. 🎲

2. **Verificação de Existência do Arquivo de Controle:**
   - Verifica se o arquivo que armazena a porta já existe no diretório de controle. 🕵️‍♂️

3. **Criação do Diretório do Volume:**
   - Cria o diretório do volume no caminho `/var/www/html/NOME_DO_PORTAL`. 📁

## Dependências 

Certifique-se de que as seguintes dependências foram realizadas como num passe de mágica:

```bash
sudo apt install docker.io -y
mkdir -p /srv/scripts/script-cria-portal/devops/porta-controle
sudo chown apache.apache /var/www/html/
docker build -t "portais" .
```

## Autor ✨

Autor: [klaybson@gmail.com](mailto:klaybson@gmail.com) 🧙‍♂️
