O GitHub usa a linguagem de marcação Markdown para formatar o conteúdo exibido em arquivos README. O código HTML não é diretamente interpretado no GitHub, mas você pode utilizar a sintaxe Markdown para fornecer uma formatação adequada. No entanto, é importante notar que a personalização de estilo usando HTML pode não ser totalmente suportada no GitHub.

Aqui está o conteúdo do README em formato Markdown:

```markdown
# Script de Criação de Portal Docker

Este script em bash cria e gerencia contêineres Docker para portais web, utilizando um Dockerfile chamado `portais` para criar os contêineres. Essa imagem utiliza o WordPress:8-apache.

## Uso

```bash
./script-cria-portal.sh NOME_DO_PORTAL
```

- **NOME_DO_PORTAL**: O nome do portal que será usado como identificador único para o contêiner Docker.

## Funcionalidades

Automatiza a criação de portais em WordPress em contêineres Docker com gerenciamento de portas:

1. **Geração de Porta Aleatória:**
   - Gera uma porta aleatória se a porta não estiver definida no arquivo de controle.

2. **Verificação de Existência do Arquivo de Controle:**
   - Verifica se o arquivo que armazena a porta já existe no diretório de controle.

3. **Criação do Diretório do Volume:**
   - Cria o diretório do volume no caminho `/var/www/html/NOME_DO_PORTAL`.

## Dependências

Certifique-se de que as seguintes dependências estão instaladas:

```bash
sudo apt install docker.io -y
mkdir -p /srv/scripts/script-cria-portal/devops/porta-controle
sudo chown apache.apache /var/www/html/
docker build -t "portais" .
```

## Autor

Autor: [klaybson@gmail.com](mailto:klaybson@gmail.com)
```

