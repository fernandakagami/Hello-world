<?php
namespace Aplicacao\Modelo;

abstract class Pessoa
{
  protected $nome;

  public function __construct($nome)
  {
    $this->nome = $nome;
  }

  public function getNome()
  {
    return $this->nome;
  }

  public function setNome($nome)
  {
    $this->nome = $nome;
  }

}

class Gerente extends Pessoa
{
  public function __construct($nome)
  {
      parent::__construct($nome);
  }

  public function hello()
  {
    echo "Ola\n";
  }
}

$person = new Gerente("Jose");
echo "Nome da Pessoa:" . $person->getNome() . "\n";

$person->hello();
?>
