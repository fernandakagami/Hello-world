<?php
$mydate = strtotime("Christmas 1979");
   if ($mydate == -1) {
       print "Date conversion failed!";
   } else {
       print "Date conversion succeeded!";
   }
?>
