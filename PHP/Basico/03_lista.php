<?php
#01
do {
    echo "Digite um número:\n";
    $numero = readline();
    if ($numero >= 0) {
        $array[] = $numero;
    }
} while ($numero >= 0);

echo max($array) . "\n";
echo min($array) . "\n\n";

#02-Leia do usuário as seguintes informações: nome, idade e telefone. Armazene as informações num hash (dicionário). Imprima as informações do usuário.
echo "Digite seu nome:\n";
$hash['nome'] = readline();
echo "Digite sua idade:\n";
$hash['idade'] = readline();
echo "Digite seu telefone:\n";
$hash['telefone'] = readline();

echo "O seu nome é: $hash[nome].\n";
echo "A sua idade é: $hash[idade].\n";
echo "O seu telefone é: $hash[telefone].\n";

#03-Peça números para o usuário até ele digitar o número 0. Imprima todos os números.
$num_dig = 0;
$i = -1;

do {
  echo "Digite um número:\n";
  $num_dig = readline();
  if ($num_dig != 0) {
    $i++;
    $numero[$i] = $num_dig;
  }
} while ($num_dig != 0);

while ($i >= 0) {
  echo $numero[$i]."\n";
  $i--;
}

#04-Leia dois números. Imprima somente o maior.
function maior ($num1, $num2)
{
  if ($num1 > $num2) {
    return $num1;
  } else {
    return $num2;
  }
}

echo "Digite um numero:\n";
$numero1 = readline();
echo "Digite outro numero:\n";
$numero2 = readline();

$numero_maior = maior($numero1, $numero2);

echo "O maior numero eh" . $numero_maior\n;

#05
function novoVetor($tamanho, $valorInicial = 0)
{
  for ($i = 0; $i < $tamanho; $i++) {
    $vetor[$i] = $valorInicial;
  }
  echo print_r($vetor);
}

echo "Digite o tamanho do vetor:\n";
$tamanhoVetor = readline();

novoVetor($tamanhoVetor);
?>
