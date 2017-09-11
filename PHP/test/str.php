<?php
$string = "An infinite number of monkeys";
$posicao = strpos($string, "i");
while($posicao !== false){
  print "$posicao\n";
  $posicao = strpos($string, "i", $posicao + 1);
}
print "Acabou";
