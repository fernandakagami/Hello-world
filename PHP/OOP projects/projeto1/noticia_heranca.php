<?php

include_once('noticia.php');

class NoticiaPrincipal extends Noticia
{
  public $imagem;

  function setImagem($valor)
  {
    $this->imagem = $valor;
  }

  function exibeNoticia()
  {
    echo "<center>";
    echo "<img src=\"". $this->imagem ."\"><p>";
    echo "<b>". $this->titulo ."</b><p>";
    echo $this->texto;
    echo "</center><p>";
  }
}

$not = new NoticiaPrincipal;
$not->titulo = 'Orientação a Objetos';
$not->texto = 'Descobrindo herança';
$not->texto = 'Herança em objetos';
$not->imagem = 'php.png';
$not->exibeNoticia();

?>
