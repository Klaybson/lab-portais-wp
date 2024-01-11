<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Descrição do Projeto</title>

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
    }

    h1 {
      color: #333;
    }

    code {
      background-color: #f0f0f0;
      padding: 2px 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-family: 'Courier New', monospace;
    }

    pre {
      background-color: #f0f0f0;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      overflow-x: auto;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      margin-bottom: 10px;
    }

    button {
      background-color: #4caf50;
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }
  </style>
</head>

<body>

  <div>
    <h1>Descrição do Projeto: Script de Criação de Portal Docker</h1>

    <p>O projeto consiste em um script em bash dedicado à criação e gestão de contêineres Docker destinados a portais web. Utilizando um Dockerfile denominado <code>portais</code>, o script automatiza o processo de configuração desses contêineres, utilizando como base a imagem <code>WordPress:8-apache</code>.</p>

    <h2>Uso</h2>
    <pre><code>./script-cria-portal.sh NOME_DO_PORTAL</code></pre>

    <p><strong>NOME_DO_PORTAL:</strong> O nome do portal é utilizado como identificador único para o contêiner Docker que será criado.</p>

    <h2>Funcionalidades</h2>
    <ul>
      <li><strong>Geração de Porta Aleatória:</strong>
        <ul>
          <li>Caso a porta não esteja definida no arquivo de controle, o script gera automaticamente uma porta aleatória para o portal.</li>
        </ul>
      </li>

      <li><strong>Verificação de Existência do Arquivo de Controle:</strong>
        <ul>
          <li>Garante que o arquivo responsável por armazenar a porta do portal já exista no diretório de controle.</li>
        </ul>
      </li>

      <li><strong>Criação do Diretório do Volume:</strong>
        <ul>
          <li>Cria o diretório do volume no caminho <code>/var/www/html/NOME_DO_PORTAL</code>.</li>
        </ul>
      </li>
    </ul>

    <h2>Dependências</h2>
    <pre><code>sudo apt install docker.io -y
mkdir -p /srv/scripts/script-cria-portal/devops/porta-controle
sudo chown apache.apache /var/www/html/
docker build -t "portais" .</code></pre>

    <h2>Autor</h2>
    <p>Autor: <a href="mailto:klaybson@gmail.com">klaybson@gmail.com</a></p>

    <p>Este projeto proporciona uma solução simplificada e automatizada para a criação de portais em WordPress em ambientes Docker, garantindo maior eficiência e controle sobre o processo de provisionamento.</p>
  </div>

</body>

</html>

