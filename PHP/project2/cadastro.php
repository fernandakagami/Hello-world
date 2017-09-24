<?php
error_reporting(0);
ini_set(“display_errors”, 0 );

if (isset($_POST['email'])){
  $nome = $_POST['nome'];
  $email = $_POST['email'];
  $telefone = $_POST['telefone'];
  $connect = mysql_connect('localhost', 'root', '');
  mysql_select_db('cadastro');
  $query_select = "SELECT email FROM usuario WHERE email = '$email'";
  $select = mysql_query($query_select,$connect);
  $resultado = mysql_fetch_array($select);
  if ($resultado) {
    echo "Email já cadastrado.";
    exit;
  } else {
    $sql = "INSERT INTO usuario(nome, email, telefone, data_criacao) VALUES ('$nome', '$email', '$telefone', NOW())";
    $resultado = mysql_query($sql, $connect);
    if ($resultado) {
      echo "Cadastro realizado com sucesso.";
      exit;
    }
  }
}
?>
