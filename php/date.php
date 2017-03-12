<?php
date_default_timezone_set('America/Sao_Paulo');
print date("H:i") . "\n";
print "The day yesterday was " . date("l F", time() - 86400) . "\n";
?>
