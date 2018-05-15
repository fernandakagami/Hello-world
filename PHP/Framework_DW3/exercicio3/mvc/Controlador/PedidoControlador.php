<?php
namespace Controlador;

use \Modelo\Pedido;
use \Modelo\Lanche;

class PedidoControlador extends Controlador
{
    public function index()
    {
        $pedidos = Pedido::buscarTodos();
        $this->visao('pedidos/index.php', [
          'pedidos' => $pedidos
      ]);
    }

    public function armazenar()
    {
        $pedido = new Pedido($_POST['mesa'], $_POST['quantidade'], $_POST['lanche_id']);
        $pedido->salvar();
        $this->redirecionar(URL_RAIZ. 'pedidos');
    }

    public function criar()
    {
        $this->visao('pedidos/criar.php');
    }

    public function editar($id)
    {
        $pedido = Pedido::buscarId($id);
        $this->visao('contatos/editar.php', [
            'contato' => $contato
        ]);
    }

    public function atualizar($id)
    {
        $pedido = Pedido::buscarId($id);
        $pedido->setMesa($_POST['mesa']);
        $pedido->setQuantidade($_POST['quantidade']);
        $pedido->setLancheId($_POST['lanche_id']);
        $pedido->salvar();
        $this->redirecionar(URL_RAIZ . 'pedidos');
    }

    public function destruir($id)
    {
        Pedido::destruir($id);
        $this->redirecionar(URL_RAIZ . 'pedidos');
    }
}
