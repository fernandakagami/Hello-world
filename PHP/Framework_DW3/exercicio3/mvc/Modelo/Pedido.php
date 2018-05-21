<?php
namespace Modelo;

use \PDO;
use \Framework\DW3BancoDeDados;
use \Modelo\Lanche;

class Pedido extends Modelo
{
  const BUSCAR_TODOS = 'SELECT * FROM pedidos ORDER BY id';
  const BUSCAR_ID = 'SELECT * FROM pedidos WHERE id = ?';
  const INSERIR = 'INSERT INTO pedidos(mesa, quantidade, lanche_id) VALUES ( ?, ?, ?)';
  const ATUALIZAR = 'UPDATE pedidos SET mesa = ?, quantidade = ? WHERE id = ?';
  const DELETAR = 'DELETE FROM pedidos WHERE id = ?';
  private $id;
  private $quantidade;
  private $mesa;
  private $lanche_id;

  public function __construct(
    $mesa = null,
    $quantidade = null,
    $id = null
  ) {
    $this->mesa = $mesa;
    $this->quantidade = $quantidade;
    $this->id = $id;
  }

  public function getId()
  {
    return $this->id;
  }

  public function getQuantidade()
  {
    return $this->quantidade;
  }

  public function getMesa()
  {
    return $this->mesa;
  }

  public function getLanche()
  {
    $this->lanche = Lanche::buscarNome($this->nome);
    return $this->lanche;
  }

  public function setQuantidade($quantidade)
  {
    $this->quantidade = $quantidade;
  }

  public function setMesa($mesa)
  {
    $this->mesa = $mesa;
  }

  public function salvar()
  {
      if ($this->id == null) {
          $this->inserir();
      } else {
          $this->atualizar();
      }
  }

  public function inserir()
  {
      DW3BancoDeDados::getPdo()->beginTransaction();
      $comando = DW3BancoDeDados::prepare(self::INSERIR);
      $comando->bindParam(1, $this->mesa, PDO::PARAM_STR, 255);
      $comando->bindParam(2, $this->quantidade, PDO::PARAM_INT, 55);
      $comando->bindParam(3, $this->lanche_id, PDO::PARAM_INT);
      $comando->execute();
      $this->id = DW3BancoDeDados::getPdo()->lastInsertId();
      DW3BancoDeDados::getPdo()->commit();
  }

  public function atualizar()
  {
      $comando = DW3BancoDeDados::prepare(self::ATUALIZAR);
      $comando->bindParam(1, $this->mesa, PDO::PARAM_STR, 255);
      $comando->bindParam(2, $this->quantidade, PDO::PARAM_INT, 55);
      $comando->bindParam(3, $this->lanche_id, PDO::PARAM_INT);
      $comando->bindParam(4, $this->id, PDO::PARAM_INT);
      $comando->execute();
  }

  public static function buscarTodos()
  {
      $registros = DW3BancoDeDados::query(self::BUSCAR_TODOS);
      $objetos = [];
      foreach ($registros as $registro) {
          $objetos[] = new Pedido(
              $registro['mesa'],
              $registro['quantidade']
          );
      }
      return $objetos;
  }

  public static function buscarId($id)
  {
      $comando = DW3BancoDeDados::prepare(self::BUSCAR_ID);
      $comando->bindParam(1, $id, PDO::PARAM_INT);
      $comando->execute();
      $registro = $comando->fetch();
      return new Pedido(
          $registro['mesa'],
          $registro['quantidade'],
          $registro['id']
      );
  }

  public static function destruir($id)
  {
      $comando = DW3BancoDeDados::prepare(self::DELETAR);
      $comando->bindParam(1, $id, PDO::PARAM_INT);
      $comando->execute();
  }
}
