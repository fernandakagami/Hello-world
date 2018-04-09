<?php
include_once ('noticia.php');

class NoticiaUltimaHora extends NoticiaPrincipal
{
  function exibeNoticia()
  {
    echo "<center>";
    echo "<b>". $this->titulo ."</b><p>";
    echo $this->texto;
    echo "</center><p>";
  }
}

$titulo = 'Vestibular';
$texto = 'Uma dos maiores vestibulares do país tem número recorde de inscritos';
$imagem = 'php.png';

$not_princ = new NoticiaPrincipal;
$not_princ->setTitulo($titulo);
$not_princ->setTexto($texto);
$not_princ->setImagem($imagem);
$not_princ->exibeNoticia();

echo "<pre>";
print_r($not_princ);
echo "</pre>";

$titulo = 'Campus recebe 500 novas árvores';
$texto = 'Plantio, realizado entre 2007 e o primeiro semestre de 2008,';
$texto .= ' integra programa ambiental que estimula a participação da comunidade';

$not_ulthora = new NoticiaUltimaHora;
$not_ulthora->setTitulo($titulo);
$not_ulthora->setTexto($texto);
$not_ulthora->exibeNoticia();

echo "<pre>";
print_r($not_ulthora);
echo "</pre>";

?>
