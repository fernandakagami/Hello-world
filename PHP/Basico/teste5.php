<?php
#Peça números para o usuário até ele digitar o número 0. Imprima todos os números.
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
?>
