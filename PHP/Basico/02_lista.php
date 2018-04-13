<?php
#01
echo "Digite sua altura:\n";
$altura = readline();
echo "Digite seu gênero(M ou F):\n";
$sexo = readline();

switch ($sexo) {
  case 'M':
    $peso = (72.7 * $altura) - 58;
    echo "Seu peso ideal é " . $peso . ".\n\n";
    break;
  case 'F':
    $peso = (62.1 * $altura) - 44.7;
    echo "Seu peso ideal é " . $peso . ".\n\n";
    break;
  case 'S':
    echo "Saindo do sistema.\n\n";
    break;
  default:
    echo "Dados incorretos.\n\n";
}

#02

do {
  echo "Digite um número entre 0 e 5:\n";
  $numero = readline();
  echo "Deseja traduzir o número para português ou inglês (P ou E):\n";
  echo "Para sair do sistema, digite S:\n";
  $lingua = readline();

  if ($lingua == 'P') {
      switch ($numero) {
        case 0:
          echo "Zero\n\n";
          break;
        case '1':
          echo "Um\n\n";
          break;
        case '2':
          echo "Dois\n\n";
          break;
        case '3':
          echo "Três\n\n";
          break;
        case '4':
          echo "Quatro\n\n";
          break;
        case '5':
          echo "Cinco\n\n";
          break;
        default:
          echo "Dados incorretos.\n\n";
      }
  } elseif ($lingua == 'E') {
      switch ($numero) {
        case 0:
          echo "Zero\n\n";
          break;
        case '1':
          echo "One\n\n";
          break;
        case '2':
          echo "Two\n\n";
          break;
        case '3':
          echo "Three\n\n";
          break;
        case '4':
          echo "Four\n\n";
          break;
        case '5':
          echo "Five\n\n";
          break;
        default:
          echo "Wrong data.\n\n";
        }
  }
} while ($lingua != 'S');
?>
