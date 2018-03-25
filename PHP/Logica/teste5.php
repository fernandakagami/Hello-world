<?php
$hash[] = array();

echo "Digite seu nome:\n";
$hash['nome'] = readline();
echo "Digite sua idade:\n";
$hash['idade'] = readline();
echo "Digite seu telefone:\n";
$hash['telefone'] = readline();

echo "O seu nome é: $hash[nome].\n";
echo "A sua idade é: $hash[idade].\n";
echo "O seu telefone é: $hash[telefone].\n";

?>
