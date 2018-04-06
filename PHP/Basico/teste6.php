<?php
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

?>
