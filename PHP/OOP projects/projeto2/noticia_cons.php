<?php

class Noticia
{
  public $titulo;
  public $texto;

  function __construct($valor_tit,$valor_tex)
  {
    $this->titulo = $valor_tit;
    $this->texto = $valor_tex;
  }

  function exibeNoticia()
  {
    echo "<center>";
    echo "<b>". $this->titulo ."</b><p>";
    echo $this->texto;
    echo "</center>";
  }
}

$not = new Noticia('Aprendendo PHP', 'Abordaremos Orientação a Objetos');
$not->exibeNoticia();
?>
