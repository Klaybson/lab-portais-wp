#!/bin/bash

# Solicita o nome do portal do argumento passado
portal="$1"

# Verifica se o arquivo que armazena a porta já existe
if [ ! -f "port_$portal" ]; then
  # Se não existe, gera uma porta aleatória
  porta=$(shuf -i 8000-8999 -n 1)
  echo $porta > "port_$portal"
else
  # Se o arquivo existe, lê a porta armazenada
  porta=$(cat "port_$portal")
fi

sleep 5
echo "Criando o contêiner Docker para o portal $portal..."

# Exemplo no script-cria-portal.sh
echo "Tentativa de execução do Docker" >> /tmp/docker_script_log.txt
/usr/bin/docker run -dit \
  -p $porta:80 \
  --name $portal \
  --restart=always \
  -e PORTAL=$portal \
  -v "/var/www/html/$portal:/var/www/html/$portal" \
  portais-tjba 2>&1 >> /tmp/docker_script_log.txt

echo "Portal criado"
echo "URL: http://srvslabl002.tjba.jus.br:$porta "

