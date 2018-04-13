<?php
do {
    echo "Digite um número:\n";
    $numero = readline();
    if ($numero >= 0) {
        $array[] = $numero;
    }
} while ($numero >= 0);

echo max($array) . "\n";
echo min($array) . "\n\n";
?>
