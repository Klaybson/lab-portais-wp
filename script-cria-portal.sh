#!/bin/bash

# Solicita o nome do portal do argumento passado
portal="$1"
ID=$("docker ps -q -f name=$portal ")

# Verifica se o arquivo que armazena a porta já existe no diretório de controle
if [ ! -f "/var/www/html/devops/porta-controle/port_$portal" ]; then
  # Se não existe, gera uma porta aleatória
  porta=$(shuf -i 8000-8999 -n 1)
  echo $porta > "/var/www/html/devops/porta-controle/port_$portal"
else
  # Se o arquivo existe, lê a porta armazenada
  porta=$(cat "/var/www/html/devops/porta-controle/port_$portal")
fi

# Criar diretório do volume
mkdir -p /var/www/html/$portal
# sleep 2

sleep 5
echo "Criando o contêiner Docker para o portal $portal..."

# Exemplo no script-cria-portal.sh
echo "Tentativa de execução do Docker" >> /tmp/docker_script_log.txt
/usr/bin/docker run -dit \
  -p $porta:80 \
  --name $portal \
  --restart=always \
  -e PORTAL=$portal \
  -v "/var/www/html/$portal:/var/www/html/" \
  portais-tjba:1 2>&1 >> /tmp/docker_script_log.txt

echo "Portal $portal criado"
echo ""
echo "URL: http://srvslabl002.tjba.jus.br:$porta "
echo "Bind: /var/www/html/$portal "
echo "ID: $ID"
echo ""
echo "Apache: $("docker exec $ID apache -v ") "
echo "PHP: $("docker exec $ID php -v ") "

