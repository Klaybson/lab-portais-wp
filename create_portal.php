<?php
$portalName = isset($_POST['portalName']) ? $_POST['portalName'] : '';
$output = shell_exec("/bin/bash /var/www/html/devops/script-cria-portal.sh \"$portalName\"");
echo "<p>O portal '$portalName' foi criado. Saída do script:</p>";
echo "<pre>$output</pre>";
?>

