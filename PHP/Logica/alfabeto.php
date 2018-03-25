<?php
$string1 = "Bar";
$string2 = "bar";
$result = strcasecmp($string1, $string2);

switch ($result) {
  case -1: print "Foo comes before bar"; break;
  case 0: print "Foo and bar are the same"; break;
  case 1: print "Foo comes after bar"; break;
}
