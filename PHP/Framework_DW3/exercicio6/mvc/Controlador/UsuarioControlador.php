<?php
namespace Controlador;

use \Modelo\Usuario;

class UsuarioControlador extends Controlador
{
    public function criar()
    {
        $this->visao('usuarios/criar.php');
    }

    public function armazenar()
    {
        $usuario = new Usuario($_POST['nome'], $_POST['senha']);
        if ($usuario->isValido()) {
            $usuario->salvar();
            $this->redirecionar(URL_RAIZ . 'usuarios/sucesso');

        } else {
            $this->setErros($usuario->getValidacaoErros());
            $this->visao('usuarios/criar.php');
        }
    }

    public function sucesso()
    {
        $this->visao('usuarios/sucesso.php');
    }
}
