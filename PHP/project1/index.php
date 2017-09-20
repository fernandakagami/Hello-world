<?php
if (isset($_COOKIE['login'])){
  echo "Bem-vindo, {$_COOKIE['login']}<br>";
  echo "Essas informações <font color='red'>PODEM</font> ser acessadas por você";
} else {
  echo "Bem-vindo, convidado!<br>";
  echo "Essas informações <font color='red'>NÃO PODEM</font> ser acessadas por você.";
  echo "<br><a href='login.html'>Faça login</a> para ler o conteúdo.";
  }
?>
