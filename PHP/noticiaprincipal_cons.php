<?php
include_once('noticia_cons.php');

class NoticiaPrincipal extends Noticia
{
  public $imagem;

  function __construct($valor_tit, $valor_tex, $valor_img)
  {
    parent::__construct($valor_tit, $valor_tex);
    $this->imagem = $valor_img;
  }

  function exibeNoticia()
  {
    echo "<center>";
    echo "<u><img src=\"". $this->imagem ."\"></u><p>";
    echo "<b>". $this->titulo ."</b><p>";
    echo $this->texto;
    echo "</center><p>";
  }
}

$titulo = 'Viva o PHP';
$texto = 'Aprendendo orientação a objetos em PHP';
$imagem = 'php.png';

$not = new NoticiaPrincipal ($titulo, $texto, $imagem);
$not->exibeNoticia();
?>
