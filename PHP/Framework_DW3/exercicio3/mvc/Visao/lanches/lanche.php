<div class="center-block site">
    <h1 class="text-center">Lanches Disponíveis na Cozinha</h1>
    <nav>
        <a href="<?= URL_RAIZ . 'lanches/criar' ?>" class="btn btn-primary">Cadastrar lanche novo</a>
    </nav>
    <table class="table">
        <tr>
            <th>Ações</th>
            <th>Nome</th>
        </tr>
        <?php if (empty($lanches)) : ?>
            <tr>
                <td colspan="99" class="text-center">Nenhum lanche feito na cozinha.</td>
            </tr>
        <?php endif ?>
        <?php foreach ($lanches as $lanche) : ?>
          <tr>
              <td>
                  <a href="<?= URL_RAIZ . '/lanches' . $lanche->getId() ?>" class="btn btn-default btn-xs" title="Editar">
                      <span class="glyphicon glyphicon-eye-open"></span>
                  </a>

                  <form action="<?= URL_RAIZ . '/lanches' . $lanche->getId() ?>" method="post" class="inline">
                      <input type="hidden" name="_metodo" value="DELETE">
                      <a href="" class="btn btn-danger btn-xs" title="Deletar" onclick="event.preventDefault(); this.parentNode.submit()">
                          <span class="glyphicon glyphicon-trash"></span>
                      </a>
                  </form>
              </td>

              <td><?= $reclamacao->getNome() ?></td>
          </tr>
        <?php endforeach ?>
    </table>
</div>
