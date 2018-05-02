<?php
#01-Efetuar a leitura de um número inteiro e apresentar o resultado do quadrado deste número.
echo "Digite um número:\n";
$numero = readline();
echo pow($numero, 2) . "\n\n";

#02-Ler dois números inteiros informados pelo usuário, dividi-los, apresentar o resultado da divisão real desses números, o quadrado do  primeiro número e o cubo do segundo número.
echo "Digite um número:\n";
$numero1 = readline();
echo "Digite outro número:\n";
$numero2 = readline();
echo "A divisão do " . $numero1 . " pelo " . $numero2 . " é " . ($numero1/$numero2) . ".\n";
echo "O quadrado do " . $numero1 . " é " . pow($numero1, 2) . ".\n";
echo "O cubo do " . $numero2 . " é " . pow($numero2, 3) . ".\n\n";

#03-Efetuar a leitura de um número inteiro e imprimir o resto da divisão deste número por 2.
echo "Digite um número:\n";
$numero = readline();
echo ($numero % 2) . "\n\n";

#04-Ler um número inteiro e imprimir seu sucessor e seu antecessor.
echo "Digite um número:\n";
$numero = readline();
$sucessor = $numero + 1;
$antecessor = $numero - 1;
echo $sucessor . "\n";
echo $antecessor . "\n\n";

#05-Escreva um programa que calcule e mostre o valor da conversão em dólar de um valor lido em real. O programa deverá ler o valor da cotação do dólar e a quantidade de reais.
echo "Digite o valor de conversão do dólar:\n";
$dolar = readline();
echo "Digite a quantidade de reais para conversão:\n";
$real = readline();
echo $dolar * $real . "\n\n";

#06-Calcular o salário líquido de uma pessoa. São fornecidos: o valor por hora, o número de horas trabalhadas e o % de desconto do INSS.
$valor_por_hora = 2.50;
$numero_hora_trabalhas = 40;
$desconto_inss = 0.1;
$salario_bruto = $valor_por_hora * $numero_hora_trabalhas;
echo "O salário líquido é R$ " . ($salario_bruto - ($salario_bruto * $desconto_inss)) . ".\n\n";

#07-Determinar o consumo médio de um automóvel através da fórmula: Consumo Médio = Distância / Litros de Combustível consumido.
echo "Digite a distância percorrida:\n";
$distancia = readline();
echo "Digite a quantidade de combustível consumido nessa distância:\n";
$combustivel = readline();
echo "O consume médio do automóvel " . $distancia / $combustivel . ".\n\n";

?>
