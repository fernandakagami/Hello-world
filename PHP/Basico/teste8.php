<?php
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
