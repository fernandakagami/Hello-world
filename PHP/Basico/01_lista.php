<?php
#01
echo "Digite um número:\n";
$numero = readline();
echo pow($numero, 2) . "\n\n";

#02
echo "Digite um número:\n";
$numero1 = readline();
echo "Digite outro número:\n";
$numero2 = readline();
echo "A divisão do " . $numero1 . " pelo " . $numero2 . " é " . ($numero1/$numero2) . ".\n";
echo "O quadrado do " . $numero1 . " é " . pow($numero1, 2) . ".\n";
echo "O cubo do " . $numero2 . " é " . pow($numero2, 3) . ".\n\n";

#03
echo "Digite um número:\n";
$numero = readline();
echo ($numero % 2) . "\n\n";

#04
echo "Digite um número:\n";
$numero = readline();
$sucessor = $numero + 1;
$antecessor = $numero - 1;
echo $sucessor . "\n";
echo $antecessor . "\n\n";

#05
echo "Digite o valor de conversão do dólar:\n";
$dolar = readline();
echo "Digite a quantidade de reais para conversão:\n";
$real = readline();
echo $dolar * $real . "\n\n";

#06
$valor_por_hora = 2.50;
$numero_hora_trabalhas = 40;
$desconto_inss = 0.1;
$salario_bruto = $valor_por_hora * $numero_hora_trabalhas;
echo "O salário líquido é R$ " . ($salario_bruto - ($salario_bruto * $desconto_inss)) . ".\n\n";

#07
echo "Digite a distância percorrida:\n";
$distancia = readline();
echo "Digite a quantidade de combustível consumido nessa distância:\n";
$combustivel = readline();
echo "O consume médio do automóvel " . $distancia / $combustivel . ".\n\n";

#08
$salario = 800.00;
$comissao = 300.00;
echo "Digite a quantidade de carros vendido:\n";
$qt_carro = readline();

echo
?>
