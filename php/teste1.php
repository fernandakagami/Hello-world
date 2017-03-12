<?php
//$name = "Paulo";
//print "your name is $name\n";

//$name2 = $name;
//$age = 20;
//print "your name is $name2, and you age is $age\n";
//print 'goodbye, $name!\n';

//$mystring = <<<EOT
//  This is some PHP text.
//  It is completely free
//  I can  usee "double quotes"
//  and 'single quotes',
//  plus $name too, which will
//  be properly converted to their values,
//  you can even type EOT, as long as it
//  is not alone on a line, like this
//EOT;
// print $mystring;

//$age = 17;
//if($age < 18){
//  print "You're young - enjoy it!\n";
//} else{
//  print "You're not under 18\n";
//}
//if($age >= 18 && $age < 50) {
//  print "You're in the prime of your life\n";
//} else{
//  print "You're not in the prime of your life\n";
//}
//if($age >= 50) {
//  print "You can retire soon - hurrah!\n";
//} else {
//  print "You cannot retire soon :( ";
//}

//$age = 25;
//if($age < 10){
//  print "You're under 10";
//} else if($age < 20){
//  print "You're under 20";
//} else if($age < 30){
//  print "You're under 30";
//} else if($age < 40){
//  print "You're under 40";
//} else{
//  print "You're over 40";
//}

$name = "Bob";
if($name == 'Jim') {
   print "Your name is Jim\n";
} elseif($name == "Linda") {
    print "Your name is Linda\n";
} elseif($name == "Bob") {
    print "Your name is Bob\n";
} elseif($name == "Sally") {
    print "Your name is Sally\n";
} else {
    print "I do not know your name!\n";
}
