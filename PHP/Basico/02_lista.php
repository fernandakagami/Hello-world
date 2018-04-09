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
echo "Digite um número entre 0 e 5:\n";
$numero = readline();
echo "Deseja o número escrito em português ou inglês (P ou I):\n"
$lingua = readline();

switch ($lingua == 'P') {
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
          echo "Zero\n\n";
          break;
          case '0':
            echo "Zero\n\n";
            break;
            case '0':
              echo "Zero\n\n";
              break;
  default:
    echo "Dados incorretos.\n\n";
}

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
?>
