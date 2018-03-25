<?php
class Noticia
{
  protected $titulo;
  protected $texto;

  function setTitulo($valor)
  {
    $this->titulo = $valor;
  }

  function setTexto($valor)
  {
    $this->texto =$valor;
  }

  function exibeNoticia()
  {
    echo "<center>";
    echo "<b>". $this->titulo ."</b><p>";
    echo $this->texto;
    echo "</center><p>";
  }
}

class NoticiaPrincipal extends Noticia
{
  private $imagem;

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
?>
